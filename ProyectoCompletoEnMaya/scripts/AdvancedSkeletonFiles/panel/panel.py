# AdvancedSkeleton : Control Panel 
#     Version 6.7801
#
#
# Control Panel is a Maya tools for controlling rigs.
#
# INSTALLATION:
# drag`n`drop the "install.mel" file into Maya (drop in any viewport).
#
# Copyright (C)2026 Animation Studios
#
# email: support@animationstudios.com.au
# Last Modified 21/06/2026

import maya.cmds as cmds
import maya.mel as mel
import maya.OpenMayaUI as omui
from maya.api.OpenMaya import MGlobal
import os
import re
import math
import __main__

DISPLAY_MULT = 20.0

try:
    from PySide6 import QtWidgets, QtCore, QtGui
    import shiboken6 as shiboken
except ImportError:
    from PySide2 import QtWidgets, QtCore, QtGui
    import shiboken2 as shiboken

from maya.app.general.mayaMixin import MayaQWidgetDockableMixin

def get_maya_main_window():
    main_window_ptr = omui.MQtUtil.mainWindow()
    return shiboken.wrapInstance(int(main_window_ptr), QtWidgets.QWidget)

def _on_embedded_panel_reference(*args):
    try:
        if cmds.window("AS_Panel_Embedded", exists=True):
            return
        ref_nodes = cmds.ls("*:ControlPanelEmbedded", type="script") or []
        for ref_node in ref_nodes:
            try:
                cmds.scriptNode(ref_node, executeBefore=True)
                break
            except:
                pass
    except:
        pass

def _setup_embedded_panel_ref_callback():
    if getattr(__main__, '_as_panel_ref_cb_setup', False):
        return
    try:
        from maya.api import OpenMaya as _om2_cb
        _om2_cb.MSceneMessage.addCallback(_om2_cb.MSceneMessage.kAfterCreateReference, _on_embedded_panel_reference)
        _om2_cb.MSceneMessage.addCallback(_om2_cb.MSceneMessage.kAfterOpen, _on_embedded_panel_reference)
        __main__._as_panel_ref_cb_setup = True
    except:
        pass

_setup_embedded_panel_ref_callback()

# --- EMBED START: Core Classes ---
_checkbox_registry = {}
_slider_registry = {}
_floatfield_registry = {}

PANEL_FONT_FAMILY_OPTIONVAR = "AS_ControlPanel_FontFamily"
PANEL_FONT_SIZE_OPTIONVAR = "AS_ControlPanel_FontPixelSize"
PANEL_SELECTED_COLOR_OPTIONVAR = "AS_ControlPanel_SelectedColor"
DEFAULT_PANEL_FONT_FAMILY = "Segoe UI"
DEFAULT_PANEL_FONT_PIXEL_SIZE = 11
DEFAULT_PANEL_SELECTED_COLOR = (255, 255, 0)

_panel_font_family = DEFAULT_PANEL_FONT_FAMILY
_panel_font_pixel_size = DEFAULT_PANEL_FONT_PIXEL_SIZE
_panel_selected_color = QtGui.QColor(*DEFAULT_PANEL_SELECTED_COLOR)

def _read_panel_option(option_name, default_value):
    try:
        if cmds.optionVar(exists=option_name):
            return cmds.optionVar(query=option_name)
    except:
        pass
    return default_value

def load_panel_appearance_options():
    global _panel_font_family, _panel_font_pixel_size, _panel_selected_color
    _panel_font_family = str(_read_panel_option(
        PANEL_FONT_FAMILY_OPTIONVAR, DEFAULT_PANEL_FONT_FAMILY))
    try:
        _panel_font_pixel_size = max(1, int(_read_panel_option(
            PANEL_FONT_SIZE_OPTIONVAR, DEFAULT_PANEL_FONT_PIXEL_SIZE)))
    except:
        _panel_font_pixel_size = DEFAULT_PANEL_FONT_PIXEL_SIZE

    color_text = str(_read_panel_option(
        PANEL_SELECTED_COLOR_OPTIONVAR, ",".join(str(v) for v in DEFAULT_PANEL_SELECTED_COLOR)))
    try:
        color_values = [max(0, min(255, int(v))) for v in color_text.split(",")]
        if len(color_values) != 3:
            raise ValueError
        _panel_selected_color = QtGui.QColor(*color_values)
    except:
        _panel_selected_color = QtGui.QColor(*DEFAULT_PANEL_SELECTED_COLOR)

def save_panel_appearance_options():
    cmds.optionVar(stringValue=(PANEL_FONT_FAMILY_OPTIONVAR, _panel_font_family))
    cmds.optionVar(intValue=(PANEL_FONT_SIZE_OPTIONVAR, _panel_font_pixel_size))
    color_text = "{0},{1},{2}".format(
        _panel_selected_color.red(), _panel_selected_color.green(), _panel_selected_color.blue())
    cmds.optionVar(stringValue=(PANEL_SELECTED_COLOR_OPTIONVAR, color_text))

def get_panel_appearance_options():
    return (
        _panel_font_family,
        _panel_font_pixel_size,
        QtGui.QColor(_panel_selected_color)
    )

def set_panel_appearance_options(font_family, font_pixel_size, selected_color):
    global _panel_font_family, _panel_font_pixel_size, _panel_selected_color
    _panel_font_family = str(font_family)
    _panel_font_pixel_size = max(1, int(font_pixel_size))
    _panel_selected_color = QtGui.QColor(selected_color)
    refresh_panel_appearance()

def panel_font(pixel_adjust=0, bold=False):
    font = QtGui.QFont(_panel_font_family)
    font.setPixelSize(max(1, _panel_font_pixel_size + pixel_adjust))
    font.setBold(bold)
    return font

def refresh_panel_appearance():
    app = QtWidgets.QApplication.instance()
    if app is None:
        return
    for window in app.topLevelWidgets():
        for view in window.findChildren(QtWidgets.QGraphicsView):
            if isinstance(view, PanelView) and view.scene() is not None:
                for item in view.scene().items():
                    if isinstance(item, BackgroundRect) and hasattr(item, "label_item"):
                        item.label_item.setFont(panel_font(2, bold=True))
                view.scene().update()

load_panel_appearance_options()

def _update_floatfield(attr, widget_id):
    if widget_id in _floatfield_registry:
        try:
            new_val = cmds.getAttr(attr)
            _floatfield_registry[widget_id].external_update(new_val)
        except:
            pass

def _update_slider(attr, widget_id):
    if widget_id in _slider_registry:
        try:
            new_val = cmds.getAttr(attr)
            _slider_registry[widget_id].external_update(new_val)
        except:
            pass

class PanelWidget(QtWidgets.QGraphicsRectItem):
    pass

class BaseWidget(PanelWidget):
    def __init__(self, select_str, x, y, w, h, color, label="", namespace=":"):
        super(BaseWidget, self).__init__(0, 0, w, h)
        self.setPos(x, y)
        self.select_str = select_str
        self.label_text = label
        self.base_color = color
        self.namespace = namespace
        self._script_job = None
        self._widget_id = id(self)

        self._3d_x = 0.0
        self._3d_y = 0.0
        self._3d_width = 1.0
        self._3d_height = 1.0

        self.setBrush(QtGui.QBrush(color))
        self.setPen(QtGui.QPen(QtCore.Qt.black, 0.5))

    def get_full_names(self):
        prefix = self.namespace
        if prefix in [":", "None", None, ""]:
            prefix = ""
        targets = self.select_str.split()
        return [f"{prefix}{t}" for t in targets]

    def get_full_attribute(self):
        prefix = self.namespace
        if prefix in [":", "None", None, ""]:
            prefix = ""
        return "{0}{1}".format(prefix, self.select_str)

    def update_namespace(self, new_namespace):
        if self.namespace != new_namespace:
            self.namespace = new_namespace
            self._reconnect_script_job()
            self._refresh_value()

    def _reconnect_script_job(self):
        pass

    def _disconnect_script_job(self):
        if self._script_job is None:
            return
        try:
            if cmds.scriptJob(exists=self._script_job):
                cmds.scriptJob(kill=self._script_job, force=True)
        except Exception:
            pass
        self._script_job = None

    def cleanup(self):
        self._disconnect_script_job()
        _checkbox_registry.pop(self._widget_id, None)
        _slider_registry.pop(self._widget_id, None)
        _floatfield_registry.pop(self._widget_id, None)

    def activate(self):
        if getattr(self, "is_checkbox", False):
            _checkbox_registry[self._widget_id] = self
        elif getattr(self, "is_slider", False):
            _slider_registry[self._widget_id] = self
        elif getattr(self, "is_float_field", False):
            _floatfield_registry[self._widget_id] = self
        self._reconnect_script_job()
        self._refresh_value()

    def _refresh_value(self):
        pass

    def _handle_mouse_press(self, event):
        pass

    def _handle_mouse_move(self, event):
        pass

    def _handle_mouse_release(self, event):
        pass

    def update_from_3d(self, x, y, width, height):
        self._3d_x = x
        self._3d_y = y
        self._3d_width = width
        self._3d_height = height

        display_x = (x * DISPLAY_MULT) - (width * DISPLAY_MULT) / 2
        display_y = -(y * DISPLAY_MULT) - (height * DISPLAY_MULT) / 2
        display_w = width * DISPLAY_MULT
        display_h = height * DISPLAY_MULT

        self.setPos(display_x, display_y)
        self.setRect(0, 0, display_w, display_h)

    def get_3d_data(self):
        return self._3d_x, self._3d_y, self._3d_width, self._3d_height

class PickerItem(BaseWidget):
    def __init__(self, select_str, x, y, w, h, color, label="", mel_cmd="", is_label_only=False, namespace=":", opacity=1.0, texture_path=""):
        super(PickerItem, self).__init__(select_str, x, y, w, h, color, label, namespace)
        self.mel_cmd = mel_cmd
        self.is_label_only = is_label_only
        self.opacity_val = max(0.0, min(1.0, opacity))
        self.texture_path = texture_path
        self._texture_pixmap = QtGui.QPixmap(texture_path) if texture_path and os.path.exists(texture_path) else QtGui.QPixmap()

        self._3d_x = x / DISPLAY_MULT if x != 0 else 0
        self._3d_y = -y / DISPLAY_MULT if y != 0 else 0
        self._3d_width = w / DISPLAY_MULT
        self._3d_height = h / DISPLAY_MULT

        if self.is_label_only:
            self.setBrush(QtGui.QBrush(QtCore.Qt.transparent))
            self.setPen(QtGui.QPen(QtCore.Qt.transparent))
        else:
            self.setBrush(QtGui.QBrush(color))
            self.setPen(QtGui.QPen(QtCore.Qt.black, 0.5))

    def get_full_names(self):
        prefix = self.namespace
        if prefix in [":", "None", None, ""]:
            prefix = ""
        targets = self.select_str.split()
        return [f"{prefix}{t}" for t in targets]

    def _handle_mouse_press(self, event):
        if self.mel_cmd:
            try:
                MGlobal.displayInfo("Control Panel: Executing MEL command: {0}".format(self.mel_cmd))
                mel.eval(self.mel_cmd)
                MGlobal.displayInfo("Control Panel: MEL command completed successfully")
            except Exception as e:
                MGlobal.displayWarning("Control Panel: MEL command error: {0}".format(e))
        else:
            full_targets = [t for t in self.get_full_names() if cmds.objExists(t)]
            if full_targets:
                mods = event.modifiers()

                if mods & QtCore.Qt.ControlModifier and mods & QtCore.Qt.ShiftModifier:
                    cmds.select(full_targets, add=True)
                elif mods & QtCore.Qt.ControlModifier:
                    cmds.select(full_targets, deselect=True)
                elif mods & QtCore.Qt.ShiftModifier:
                    cmds.select(full_targets, toggle=True)
                else:
                    cmds.select(full_targets, replace=True)
            else:
                MGlobal.displayWarning("Control Panel: No valid targets found for {0}".format(self.select_str))

        event.accept()

    def paint(self, painter, option, widget):
        local_rect = self.rect()

        try:
            full_targets = [t for t in self.get_full_names() if cmds.objExists(t)]
        except:
            return

        curr_sel = cmds.ls(selection=True) or []
        is_multi = len(full_targets) > 1
        is_selected = any(c in curr_sel for c in full_targets)
        highlight = is_selected and not is_multi

        if not self.is_label_only:
            painter.setPen(self.pen())
            if not self._texture_pixmap.isNull() and not highlight:
                painter.setOpacity(self.opacity_val)
                painter.setRenderHint(QtGui.QPainter.SmoothPixmapTransform)
                painter.drawPixmap(local_rect, self._texture_pixmap, QtCore.QRectF(self._texture_pixmap.rect()))
                painter.setOpacity(1.0)
                painter.setBrush(QtCore.Qt.NoBrush)
                painter.drawRect(local_rect)
            else:
                fill_color = QtGui.QColor(_panel_selected_color if highlight else self.base_color)
                if not highlight:
                    fill_color.setAlphaF(self.opacity_val)
                painter.setBrush(QtGui.QBrush(fill_color))
                painter.drawRect(local_rect)

        if self.label_text:
            if self.is_label_only:
                painter.setPen(QtGui.QColor(255, 255, 255) if not highlight else _panel_selected_color)
            else:
                painter.setPen(QtGui.QColor(255, 255, 255) if not highlight else QtGui.QColor(0, 0, 0))

            font = panel_font(bold=True)
            font.setKerning(True)
            font.setLetterSpacing(QtGui.QFont.AbsoluteSpacing, 0.5)
            painter.setFont(font)
            painter.drawText(local_rect, QtCore.Qt.AlignCenter, self.label_text)

class RubberBandRect(QtWidgets.QGraphicsRectItem):
    def __init__(self):
        super(RubberBandRect, self).__init__()
        self.setPen(QtGui.QPen(QtGui.QColor(255, 255, 255), 1, QtCore.Qt.DashLine))
        self.setBrush(QtGui.QBrush(QtGui.QColor(100, 150, 255, 40)))
        self.setZValue(1000)
        self.hide()

class PanelView(QtWidgets.QGraphicsView):
    def __init__(self, scene):
        super(PanelView, self).__init__(scene)
        self._mmb_drag_active = False
        self._mmb_start_pos = None
        self._mmb_hit_object = None
        self._mmb_was_nothing_selected = False
        self._mmb_drag_context = None
        self.setBackgroundBrush(QtGui.QColor(45, 45, 45))
        self.setTransformationAnchor(QtWidgets.QGraphicsView.AnchorUnderMouse)
        self.setResizeAnchor(QtWidgets.QGraphicsView.AnchorUnderMouse)
        self.setDragMode(QtWidgets.QGraphicsView.NoDrag)
        self.setRenderHint(QtGui.QPainter.Antialiasing)
        self.setRenderHint(QtGui.QPainter.SmoothPixmapTransform)
        self.setVerticalScrollBarPolicy(QtCore.Qt.ScrollBarAlwaysOff)
        self.setHorizontalScrollBarPolicy(QtCore.Qt.ScrollBarAlwaysOff)
        self.setFrameShape(QtWidgets.QFrame.NoFrame)
        self._last_pos = None
        self._drag_start = None
        self._is_navigating = False
        self._was_navigating = False
        self._rubber_band = RubberBandRect()
        self.scene().addItem(self._rubber_band)
        self._over_widget = False
        self._press_pos = None
        self._zoom_mode = False

    def get_event_pos(self, event):
        if hasattr(event, 'position'):
            return event.position().toPoint()
        return event.pos()

    def _build_mmb_drag_context(self):
        selected = cmds.ls(selection=True, long=True) or []
        current_tool = cmds.currentCtx()
        context = {
            "selected": selected,
            "current_tool": current_tool,
            "is_face_controller": any("|FaceMotionSystem|" in obj for obj in selected),
            "should_mirror": False,
            "camera_ready": False,
        }

        if context["is_face_controller"]:
            for obj in selected:
                try:
                    world_scale = cmds.xform(obj, query=True, worldSpace=True, scale=True)
                    if world_scale and len(world_scale) >= 3 and world_scale[2] < 0:
                        context["should_mirror"] = True
                        break
                except Exception:
                    pass
            return context

        try:
            active_panel = mel.eval('getPanel -withFocus')
            camera = cmds.modelPanel(active_panel, query=True, camera=True) if active_panel else None
            if not camera or not selected:
                return context

            cam_matrix = cmds.xform(camera, query=True, worldSpace=True, matrix=True)
            right = (cam_matrix[0], cam_matrix[4], cam_matrix[8])
            up = (cam_matrix[1], cam_matrix[5], cam_matrix[9])
            right_len = math.sqrt(sum(component ** 2 for component in right))
            up_len = math.sqrt(sum(component ** 2 for component in up))
            right = tuple(component / right_len for component in right)
            up = tuple(component / up_len for component in up)

            cam_pos = cmds.xform(camera, query=True, worldSpace=True, translation=True)
            obj_pos = cmds.xform(selected[0], query=True, worldSpace=True, translation=True)
            dist = math.sqrt(sum((a - b) ** 2 for a, b in zip(cam_pos, obj_pos)))
            is_ortho = cmds.getAttr("{0}.orthographic".format(camera))
            if is_ortho:
                view_width_at_dist = cmds.getAttr("{0}.orthographicWidth".format(camera))
            else:
                fov_deg = cmds.getAttr("{0}.horizontalFieldOfView".format(camera)) \
                    if cmds.attributeQuery("horizontalFieldOfView", node=camera, exists=True) else 54.0
                view_width_at_dist = 2 * dist * math.tan(math.radians(fov_deg) / 2)

            try:
                viewport_width = max(float(cmds.control(active_panel, query=True, width=True) or 1920), 1.0)
            except Exception:
                viewport_width = 1920.0
            context.update({
                "camera_ready": True,
                "right": right,
                "up": up,
                "is_ortho": is_ortho,
                "world_units_per_pixel": view_width_at_dist / viewport_width,
            })
        except Exception:
            pass
        return context

    def mousePressEvent(self, event):
        self._press_pos = event.pos()

        if event.modifiers() & QtCore.Qt.AltModifier:
            if event.button() == QtCore.Qt.LeftButton:
                if (event.modifiers() & QtCore.Qt.ControlModifier):
                    self._drag_start = self.mapToScene(self.get_event_pos(event))
                    self._rubber_band.setRect(QtCore.QRectF(self._drag_start, self._drag_start))
                    event.accept()
                    return
            pass
        else:
            if event.button() == QtCore.Qt.LeftButton:
                pos = self.mapToScene(event.pos())
                items = self.scene().items(pos)
                for item in items:
                    if isinstance(item, BaseWidget):
                        self._over_widget = True
                        item._handle_mouse_press(event)
                        event.accept()
                        return

                for item in self.scene().items():
                    if isinstance(item, BaseWidget):
                        item.clearFocus()
                        if hasattr(item, '_proxy_widget') and item._proxy_widget.isVisible():
                            item._on_edit_finished()

        self._over_widget = False
        curr_pos = self.get_event_pos(event)
        self._was_navigating = False

        if event.button() == QtCore.Qt.MiddleButton:
            if event.modifiers() & QtCore.Qt.AltModifier:
                self._last_pos = curr_pos
                self._is_navigating = True
                self._was_navigating = True
                self.setCursor(QtCore.Qt.SizeAllCursor)
                event.accept()
                return
            pos = self.mapToScene(event.pos())
            items = self.scene().items(pos)
            hit_button = None
            for item in items:
                if isinstance(item, PickerItem) and not item.mel_cmd:
                    hit_button = item
                    break

            current_sel = cmds.ls(selection=True)
            something_selected = len(current_sel) > 0

            if hit_button or something_selected:
                self._mmb_drag_active = True
                self._mmb_start_pos = event.globalPos()

                if hit_button:
                    full_targets = [t for t in hit_button.get_full_names() if cmds.objExists(t)]
                    if full_targets:
                        self._mmb_hit_object = full_targets[0]
                    else:
                        self._mmb_hit_object = None
                else:
                    self._mmb_hit_object = None

                self._mmb_was_nothing_selected = not something_selected

                cmds.undoInfo(openChunk=True, chunkName="MMB Drag Move")

                if self._mmb_was_nothing_selected and self._mmb_hit_object:
                    cmds.select(self._mmb_hit_object, replace=True)

                self._mmb_drag_context = self._build_mmb_drag_context()
                event.accept()
                return

            self._drag_start = self.mapToScene(curr_pos)
            self._rubber_band.setRect(QtCore.QRectF(self._drag_start, self._drag_start))
            event.accept()
            return

        if event.button() == QtCore.Qt.RightButton and (event.modifiers() & QtCore.Qt.AltModifier):
            self._last_pos = curr_pos
            self._is_navigating = True
            self._was_navigating = True
            self._zoom_mode = True
            event.accept()
            return

        if event.button() == QtCore.Qt.LeftButton:
            if not (event.modifiers() & QtCore.Qt.AltModifier) or ((event.modifiers() & QtCore.Qt.ControlModifier) and (event.modifiers() & QtCore.Qt.AltModifier)):
                self._drag_start = self.mapToScene(curr_pos)
                self._rubber_band.setRect(QtCore.QRectF(self._drag_start, self._drag_start))
                event.accept()
                return

        QtWidgets.QGraphicsView.mousePressEvent(self, event)

    def mouseReleaseEvent(self, event):
        if self._over_widget and event.button() == QtCore.Qt.LeftButton:
            pos = self.mapToScene(event.pos())
            items = self.scene().items(pos)
            for item in items:
                if isinstance(item, BaseWidget):
                    item._handle_mouse_release(event)
            self._over_widget = False
            event.accept()
            return

        if event.button() == QtCore.Qt.MiddleButton and self._mmb_drag_active:
            if self._mmb_was_nothing_selected:
                cmds.select(clear=True)

            cmds.undoInfo(closeChunk=True)

            self._mmb_drag_active = False
            self._mmb_start_pos = None
            self._mmb_hit_object = None
            self._mmb_was_nothing_selected = False
            self._mmb_drag_context = None
            
            self._rubber_band.hide()
            self._drag_start = None
            
            event.accept()
            return

        if self._is_navigating or self._was_navigating:
            self._last_pos = None
            self._is_navigating = False
            self._was_navigating = False
            self._zoom_mode = False
            self.setCursor(QtCore.Qt.ArrowCursor)
            self.unsetCursor()
            self.viewport().setCursor(QtCore.Qt.ArrowCursor)
            self._rubber_band.hide()
            self._drag_start = None
            if event.button() == QtCore.Qt.MiddleButton or event.button() == QtCore.Qt.RightButton:
                event.accept()
                return

        if (event.button() == QtCore.Qt.LeftButton or (event.button() == QtCore.Qt.MiddleButton and not self._mmb_drag_active)) and not self._is_navigating:
            if self._is_navigating or self._was_navigating:
                self._drag_start = None
                self._rubber_band.hide()
                event.accept()
                return

            if self._drag_start is not None:
                curr_pos = self.get_event_pos(event)
                mods = event.modifiers()
                rect = self._rubber_band.rect()

                if (mods & QtCore.Qt.ControlModifier) and (mods & QtCore.Qt.AltModifier):
                    if rect.width() > 5 and rect.height() > 5:
                        self.fitInView(rect, QtCore.Qt.KeepAspectRatio)
                else:
                    is_click = not self._rubber_band.isVisible()

                    if is_click:
                        item = self.itemAt(curr_pos)
                        if not isinstance(item, PickerItem):
                            if not mods:
                                cmds.select(clear=True)
                    else:
                        to_select = []
                        hit_items = []
                        for item in self.scene().items():
                            if isinstance(item, PickerItem) and rect.intersects(item.mapRectToScene(item.boundingRect())):
                                if not item.mel_cmd:
                                    hit_items.append(item)
                        hit_items.sort(key=lambda it: (it.scenePos().x(), it.scenePos().y()))
                        for item in hit_items:
                            to_select.extend([t for t in item.get_full_names() if cmds.objExists(t)])

                        if to_select:
                            if mods & QtCore.Qt.ControlModifier and mods & QtCore.Qt.ShiftModifier:
                                cmds.select(to_select, add=True)
                            elif mods & QtCore.Qt.ControlModifier:
                                cmds.select(to_select, deselect=True)
                            elif mods & QtCore.Qt.ShiftModifier:
                                cmds.select(to_select, toggle=True)
                            else:
                                cmds.select(to_select, replace=True)
                        elif not mods:
                            cmds.select(clear=True)

                self._rubber_band.hide()
                self._drag_start = None
                event.accept()
                return

        super(PanelView, self).mouseReleaseEvent(event)

    def mouseMoveEvent(self, event):
        if not self._is_navigating:
            current_cursor = self.cursor().shape()
            if current_cursor != QtCore.Qt.ArrowCursor:
                self.setCursor(QtCore.Qt.ArrowCursor)
                self.unsetCursor()
                self.viewport().setCursor(QtCore.Qt.ArrowCursor)
        
        if self._over_widget and event.buttons() == QtCore.Qt.LeftButton:
            pos = self.mapToScene(event.pos())
            items = self.scene().items(pos)
            for item in items:
                if isinstance(item, BaseWidget):
                    item._handle_mouse_move(event)
            event.accept()
            return

        curr_pos = self.get_event_pos(event)
        buttons = event.buttons()
        mods = event.modifiers()

        if (buttons & QtCore.Qt.MiddleButton) and (mods & QtCore.Qt.AltModifier) and self._last_pos is not None:
            delta = curr_pos - self._last_pos
            self._last_pos = curr_pos
            self._is_navigating = True
            self._was_navigating = True
            if (buttons & QtCore.Qt.LeftButton) and (mods & QtCore.Qt.AltModifier):
                self.setTransformationAnchor(QtWidgets.QGraphicsView.NoAnchor)
                zoom_sensitivity = 0.008
                total_delta = delta.y() - delta.x()
                scale_factor = 1.0 - (total_delta * zoom_sensitivity)
                scale_factor = max(0.9, min(1.1, scale_factor))
                scene_pos_before = self.mapToScene(curr_pos)
                self.scale(scale_factor, scale_factor)
                scene_pos_after = self.mapToScene(curr_pos)
                drift = scene_pos_after - scene_pos_before
                self.translate(drift.x(), drift.y())
            else:
                self.setTransformationAnchor(QtWidgets.QGraphicsView.NoAnchor)
                h_bar = self.horizontalScrollBar()
                v_bar = self.verticalScrollBar()
                h_bar.setValue(h_bar.value() - delta.x())
                v_bar.setValue(v_bar.value() - delta.y())
            event.accept()
            return

        if self._zoom_mode and (buttons & QtCore.Qt.RightButton) and (mods & QtCore.Qt.AltModifier) and self._last_pos is not None:
            delta = curr_pos - self._last_pos
            self._last_pos = curr_pos
            self._is_navigating = True
            self._was_navigating = True
            self.setTransformationAnchor(QtWidgets.QGraphicsView.NoAnchor)
            zoom_sensitivity = 0.008
            total_delta = delta.y() - delta.x()
            scale_factor = 1.0 - (total_delta * zoom_sensitivity)
            scale_factor = max(0.9, min(1.1, scale_factor))
            scene_pos_before = self.mapToScene(curr_pos)
            self.scale(scale_factor, scale_factor)
            scene_pos_after = self.mapToScene(curr_pos)
            drift = scene_pos_after - scene_pos_before
            self.translate(drift.x(), drift.y())
            event.accept()
            return

        if self._mmb_drag_active and (buttons & QtCore.Qt.MiddleButton):
            if self._mmb_start_pos:
                current_pos = event.globalPos()
                delta_x = current_pos.x() - self._mmb_start_pos.x()
                delta_y = current_pos.y() - self._mmb_start_pos.y()
                
                context = self._mmb_drag_context or self._build_mmb_drag_context()
                selected = context["selected"]
                if selected:
                    is_face_controller = context["is_face_controller"]
                    
                    if is_face_controller:
                        FACE_SENSITIVITY = 0.01
                        current_tool = context["current_tool"]
                        should_mirror = context["should_mirror"]
                        
                        if "Rotate" in str(current_tool) or current_tool == "RotateTool" or current_tool == "rotateSuperContext":
                            rotate_sensitivity = 0.5
                            rotate_x = delta_x * rotate_sensitivity
                            rotate_y = delta_y * rotate_sensitivity
                            if should_mirror:
                                rotate_x = -rotate_x
                            cmds.rotate(rotate_y, rotate_x, 0, relative=True, objectSpace=True)
                        
                        elif "Scale" in str(current_tool) or current_tool == "ScaleTool" or current_tool == "scaleSuperContext":
                            total_delta = (delta_x + delta_y) * 0.5
                            scale_sensitivity = 0.005
                            scale_factor = 1.0 + (total_delta * scale_sensitivity)
                            cmds.scale(scale_factor, scale_factor, scale_factor, relative=True, objectSpace=True)
                        
                        else:
                            move_x = delta_x * FACE_SENSITIVITY
                            move_y = delta_y * -FACE_SENSITIVITY
                            if should_mirror:
                                move_x = -move_x
                            cmds.move(move_x, move_y, 0, relative=True, objectSpace=True)
                    else:
                        current_tool = context["current_tool"]
                        if context["camera_ready"]:
                            right = context["right"]
                            up = context["up"]
                            is_ortho = context["is_ortho"]
                            world_units_per_pixel = context["world_units_per_pixel"]

                            if "Rotate" in str(current_tool) or current_tool == "RotateTool" or current_tool == "rotateSuperContext":
                                rotate_sensitivity = 0.5
                                rotate_x = delta_x * rotate_sensitivity
                                rotate_y = delta_y * rotate_sensitivity

                                if is_ortho:
                                    if abs(up[2]) > 0.8:
                                        cmds.rotate(0, 0, -rotate_x, relative=True, worldSpace=True)
                                    elif abs(right[0]) > 0.8:
                                        cmds.rotate(0, rotate_x, 0, relative=True, worldSpace=True)
                                    elif abs(right[2]) > 0.8:
                                        cmds.rotate(0, 0, rotate_x, relative=True, worldSpace=True)
                                    else:
                                        cmds.rotate(rotate_y, rotate_x, 0, relative=True, worldSpace=True)
                                else:
                                    cmds.rotate(rotate_y, rotate_x, 0, relative=True, worldSpace=True)

                            elif "Scale" in str(current_tool) or current_tool == "ScaleTool" or current_tool == "scaleSuperContext":
                                total_delta = (delta_x + delta_y) * 0.5
                                scale_factor = 1.0 + (total_delta * 0.005)
                                cmds.scale(scale_factor, scale_factor, scale_factor, relative=True)

                            else:
                                move_x = delta_x * world_units_per_pixel
                                move_y = delta_y * -world_units_per_pixel
                                world_move_x = right[0] * move_x + up[0] * move_y
                                world_move_y = right[1] * move_x + up[1] * move_y
                                world_move_z = -(right[2] * move_x + up[2] * move_y)
                                cmds.move(world_move_x, world_move_y, world_move_z, relative=True, worldSpace=True)
                        else:
                            cmds.move(delta_x * 0.01, delta_y * -0.01, 0, relative=True, worldSpace=True)
                
                self._mmb_start_pos = current_pos
            event.accept()
            return
        
        if self._drag_start is not None and not self._is_navigating:
            show_band = False
            
            if (buttons & QtCore.Qt.LeftButton) or (buttons & QtCore.Qt.MiddleButton):
                show_band = True
            
            if (mods & QtCore.Qt.ControlModifier) and (mods & QtCore.Qt.AltModifier):
                show_band = True
            
            if show_band:
                if (self.mapFromScene(self._drag_start) - curr_pos).manhattanLength() > 3:
                    self._rubber_band.show()
                    current = self.mapToScene(curr_pos)
                    self._rubber_band.setRect(QtCore.QRectF(self._drag_start, current).normalized())
                event.accept()
                return

        QtWidgets.QGraphicsView.mouseMoveEvent(self, event)

    def leaveEvent(self, event):
        """Mouse left the widget - cleanup pan mode and cursor"""
        if self._drag_start is not None and not self._is_navigating:
            super(PanelView, self).leaveEvent(event)
            return

        self._is_navigating = False
        self._was_navigating = False
        self._last_pos = None
        self.setCursor(QtCore.Qt.ArrowCursor)
        self.unsetCursor()
        self._rubber_band.hide()
        self._drag_start = None
        super(PanelView, self).leaveEvent(event)

    def wheelEvent(self, event):
        delta = event.angleDelta().y() if hasattr(event, 'angleDelta') else event.delta()
        factor = 1.15 if delta > 0 else 1 / 1.15
        self.scale(factor, factor)




class CheckboxWidget(BaseWidget):
    def __init__(self, select_str, x, y, w, h, color, label="", namespace=":", current_val=False):
        super(CheckboxWidget, self).__init__(select_str, x, y, w, h, color, label, namespace)
        self.current_val = current_val
        self.is_checkbox = True

        self._3d_x = x / DISPLAY_MULT if x != 0 else 0
        self._3d_y = -y / DISPLAY_MULT if y != 0 else 0
        self._3d_width = w / DISPLAY_MULT
        self._3d_height = h / DISPLAY_MULT

        self.setFlag(QtWidgets.QGraphicsItem.ItemIsSelectable, False)
        self.setAcceptHoverEvents(True)
        self.setAcceptedMouseButtons(QtCore.Qt.LeftButton)

        _checkbox_registry[self._widget_id] = self
        self._reconnect_script_job()

    def get_full_attribute(self):
        prefix = self.namespace
        if prefix in [":", "None", None, ""]:
            prefix = ""
        return "{0}{1}".format(prefix, self.select_str)

    def _reconnect_script_job(self):
        try:
            self._disconnect_script_job()
            attr = self.get_full_attribute()
            if not cmds.objExists(attr):
                return

            import sys
            callback_str = 'sys.modules["{0}"]._update_checkbox("{1}", {2})'.format(
                __name__, attr, self._widget_id
            )
            self._script_job = cmds.scriptJob(
                attributeChange=[attr, callback_str],
                killWithScene=False
            )
        except Exception as e:
            MGlobal.displayWarning("Checkbox: Failed to create script job: {0}".format(e))

    def _refresh_value(self):
        try:
            attr = self.get_full_attribute()
            if cmds.objExists(attr):
                self.current_val = cmds.getAttr(attr)
                self.update()
        except:
            pass

    def external_update(self, new_val):
        if new_val != self.current_val:
            self.current_val = new_val
            self.update()

    def _handle_mouse_press(self, event):
        self.current_val = not self.current_val
        MGlobal.displayInfo("Control Panel: Checkbox '{0}' toggled to {1}".format(self.label_text, self.current_val))

        try:
            attr = self.get_full_attribute()
            if cmds.objExists(attr):
                cmds.setAttr(attr, self.current_val)
                MGlobal.displayInfo("Control Panel: Set {0} to {1}".format(attr, self.current_val))
        except Exception as e:
            MGlobal.displayWarning("Checkbox error: {0}".format(e))

        self.update()

    def paint(self, painter, option, widget):
        local_rect = self.rect()
        widget_height = local_rect.height()
        painter.setBrush(QtGui.QBrush(self.base_color))
        painter.setPen(QtGui.QPen(QtCore.Qt.black, 0.5))
        painter.drawRect(local_rect)
        box_size = widget_height - 8
        box_rect = QtCore.QRectF(4, 4, box_size, box_size)
        painter.setBrush(QtGui.QBrush(QtGui.QColor(220, 220, 220)))
        painter.setPen(QtGui.QPen(QtGui.QColor(80, 80, 80), 1))
        painter.drawRect(box_rect)
        if self.current_val:
            painter.setPen(QtGui.QPen(QtGui.QColor(0, 0, 0), 2))
            painter.drawLine(
                box_rect.x() + 3,
                box_rect.y() + box_size * 0.4,
                box_rect.x() + box_size * 0.4,
                box_rect.y() + box_size - 4
            )
            painter.drawLine(
                box_rect.x() + box_size * 0.4,
                box_rect.y() + box_size - 4,
                box_rect.x() + box_size - 3,
                box_rect.y() + 3
            )
        if self.label_text:
            painter.setPen(QtGui.QColor(220, 220, 220))
            font = panel_font()
            painter.setFont(font)
            text_rect = QtCore.QRectF(
                box_rect.x() + box_size + 6,
                0,
                local_rect.width() - box_size - 12,
                widget_height
            )
            painter.drawText(text_rect, QtCore.Qt.AlignLeft | QtCore.Qt.AlignVCenter, self.label_text)

    def __del__(self):
        self.cleanup()

def _update_checkbox(attr, widget_id):
    if widget_id in _checkbox_registry:
        try:
            new_val = cmds.getAttr(attr)
            _checkbox_registry[widget_id].external_update(new_val)
        except:
            pass

class FloatFieldWidget(BaseWidget):
    def __init__(self, select_str, x, y, w, h, color, label="", namespace=":", min_val=0.0, max_val=10.0, current_val=0.0):
        super(FloatFieldWidget, self).__init__(select_str, x, y, w, h, color, label, namespace)
        self.min_val = min_val
        self.max_val = max_val
        self.current_val = current_val
        self.is_float_field = True
        self._widget_id = id(self)
        self._original_value = current_val
        self._is_committing = False

        self._3d_x = x / DISPLAY_MULT if x != 0 else 0
        self._3d_y = -y / DISPLAY_MULT if y != 0 else 0
        self._3d_width = w / DISPLAY_MULT
        self._3d_height = h / DISPLAY_MULT

        self.setBrush(QtGui.QBrush(color))
        self.setPen(QtGui.QPen(QtCore.Qt.black, 0.5))
        self._line_edit = QtWidgets.QLineEdit()
        self._line_edit.setText("{0:.3f}".format(current_val))
        self._line_edit.setAlignment(QtCore.Qt.AlignCenter)
        self._line_edit.setStyleSheet("background-color: #3C3C3C; color: #CCCCCC; border: 1px solid #666666;")
        self._line_edit.returnPressed.connect(self._on_edit_finished)
        self._line_edit.editingFinished.connect(self._on_edit_finished)
        self._proxy_widget = QtWidgets.QGraphicsProxyWidget(self)
        self._proxy_widget.setWidget(self._line_edit)
        self._proxy_widget.setVisible(False)
        _floatfield_registry[self._widget_id] = self
        self._reconnect_script_job()

    def sceneEvent(self, event):
        if event.type() == QtCore.QEvent.KeyPress:
            if event.key() == QtCore.Qt.Key_Escape:
                if self._proxy_widget.isVisible():
                    self._on_edit_cancelled()
                    event.accept()
                    return True
        return super(FloatFieldWidget, self).sceneEvent(event)

    def get_full_attribute(self):
        prefix = self.namespace
        if prefix in [":", "None", None, ""]:
            prefix = ""
        return "{0}{1}".format(prefix, self.select_str)

    def _reconnect_script_job(self):
        try:
            self._disconnect_script_job()
            attr = self.get_full_attribute()
            if not cmds.objExists(attr):
                return

            import sys
            callback_str = 'sys.modules["{0}"]._update_floatfield("{1}", {2})'.format(
                __name__, attr, self._widget_id
            )
            self._script_job = cmds.scriptJob(
                attributeChange=[attr, callback_str],
                killWithScene=False
            )
        except Exception as e:
            MGlobal.displayWarning("FloatField: Failed to create script job: {0}".format(e))

    def _refresh_value(self):
        try:
            attr = self.get_full_attribute()
            if cmds.objExists(attr):
                new_val = cmds.getAttr(attr)
                self.current_val = new_val
                if not self._line_edit.hasFocus():
                    self._line_edit.setText("{0:.3f}".format(new_val))
                self.update()
        except:
            pass

    def external_update(self, new_val):
        if new_val != self.current_val:
            self.current_val = new_val
            if not self._line_edit.hasFocus():
                self._line_edit.setText("{0:.3f}".format(new_val))
            self.update()

    def _on_edit_finished(self):
        if self._is_committing:
            return

        self._is_committing = True

        try:
            new_val = float(self._line_edit.text())
            clamped = max(self.min_val, min(self.max_val, new_val))

            if clamped != self._original_value:
                attr = self.get_full_attribute()
                if cmds.objExists(attr):
                    cmds.undoInfo(openChunk=True, chunkName="Float Field Edit")
                    cmds.setAttr(attr, clamped)
                    cmds.undoInfo(closeChunk=True)
                    self.current_val = clamped
                    MGlobal.displayInfo("Control Panel: Float field '{0}' changed from {1} to {2}".format(
                        self.label_text, self._original_value, clamped))
                self._line_edit.setText("{0:.3f}".format(clamped))
            else:
                self._line_edit.setText("{0:.3f}".format(self.current_val))
        except:
            self._line_edit.setText("{0:.3f}".format(self._original_value))

        self._proxy_widget.setVisible(False)
        self.update()
        QtCore.QTimer.singleShot(100, lambda: setattr(self, '_is_committing', False))

    def _on_edit_cancelled(self):
        if self._is_committing:
            return
        self._is_committing = True
        self.current_val = self._original_value
        self._proxy_widget.setVisible(False)
        self.update()
        self.clearFocus()
        QtCore.QTimer.singleShot(100, lambda: setattr(self, '_is_committing', False))

    def keyPressEvent(self, event):
        if event.key() == QtCore.Qt.Key_Escape:
            if self._proxy_widget.isVisible():
                self._on_edit_cancelled()
                event.accept()
        else:
            super(FloatFieldWidget, self).keyPressEvent(event)

    def _handle_mouse_press(self, event):
        self._original_value = self.current_val
        self._is_committing = False
        self._line_edit.setText("{0:.3f}".format(self.current_val))
        self._line_edit.selectAll()
        local_rect = self.rect()
        proxy_rect = QtCore.QRectF(
            local_rect.width() - 65,
            4,
            60,
            local_rect.height() - 8
        )
        self._proxy_widget.setGeometry(proxy_rect)
        self._proxy_widget.setVisible(True)
        self._line_edit.setFocus()
        event.accept()

    def paint(self, painter, option, widget):
        local_rect = self.rect()
        widget_width = local_rect.width()
        widget_height = local_rect.height()
        painter.setBrush(QtGui.QBrush(self.base_color))
        painter.setPen(QtGui.QPen(QtCore.Qt.black, 0.5))
        painter.drawRect(local_rect)
        if self.label_text:
            painter.setPen(QtGui.QColor(220, 220, 220))
            font = panel_font(-2)
            painter.setFont(font)
            label_rect = QtCore.QRectF(5, 0, 45, widget_height)
            painter.drawText(label_rect, QtCore.Qt.AlignLeft | QtCore.Qt.AlignVCenter, self.label_text)

        value_rect = QtCore.QRectF(widget_width - 65, 4, 60, widget_height - 8)
        painter.setBrush(QtGui.QBrush(QtGui.QColor(60, 60, 60)))
        painter.setPen(QtGui.QPen(QtGui.QColor(150, 150, 150), 1))
        painter.drawRect(value_rect)
        if not self._proxy_widget.isVisible():
            painter.setPen(QtGui.QColor(200, 200, 200))
            font = panel_font(-2)
            painter.setFont(font)
            painter.drawText(value_rect, QtCore.Qt.AlignCenter, "{0:.3f}".format(self.current_val))

    def __del__(self):
        self.cleanup()

class SliderWidget(BaseWidget):
    def __init__(self, select_str, x, y, w, h, color, label="", namespace=":", min_val=0.0, max_val=10.0, current_val=0.0):
        super(SliderWidget, self).__init__(select_str, x, y, w, h, color, label, namespace)
        self.min_val = min_val
        self.max_val = max_val
        self.current_val = current_val
        self.is_slider = True
        self._dragging = False
        self._drag_start_value = None

        self._3d_x = x / DISPLAY_MULT if x != 0 else 0
        self._3d_y = -y / DISPLAY_MULT if y != 0 else 0
        self._3d_width = w / DISPLAY_MULT
        self._3d_height = h / DISPLAY_MULT

        self.setAcceptHoverEvents(True)
        self.setAcceptedMouseButtons(QtCore.Qt.LeftButton)

        _slider_registry[self._widget_id] = self
        self._reconnect_script_job()

    def _reconnect_script_job(self):
        try:
            self._disconnect_script_job()
            attr = self.get_full_attribute()
            if not cmds.objExists(attr):
                return

            import sys
            callback_str = 'sys.modules["{0}"]._update_slider("{1}", {2})'.format(
                __name__, attr, self._widget_id
            )
            self._script_job = cmds.scriptJob(
                attributeChange=[attr, callback_str],
                killWithScene=False
            )
        except Exception as e:
            MGlobal.displayWarning("Slider: Failed to create script job: {0}".format(e))

    def _refresh_value(self):
        try:
            attr = self.get_full_attribute()
            if cmds.objExists(attr):
                self.current_val = cmds.getAttr(attr)
                self.update()
        except:
            pass

    def external_update(self, new_val):
        if new_val != self.current_val:
            self.current_val = new_val
            self.update()

    def _handle_mouse_press(self, event):
        self._dragging = True
        self._drag_start_value = self.current_val
        cmds.undoInfo(openChunk=True, chunkName="Slider Drag")
        self._update_from_mouse(event)

    def _handle_mouse_move(self, event):
        if self._dragging:
            self._update_from_mouse(event)

    def _handle_mouse_release(self, event):
        if self._dragging:
            self._dragging = False
            cmds.undoInfo(closeChunk=True)
            if self.current_val != self._drag_start_value:
                MGlobal.displayInfo("Control Panel: Slider '{0}' changed from {1} to {2}".format(
                    self.label_text, self._drag_start_value, self.current_val))

    def _update_from_mouse(self, event):
        views = self.scene().views()
        if not views:
            return
        view = views[0]

        global_pos = event.globalPos()
        scene_pos = view.mapToScene(view.mapFromGlobal(global_pos))
        local_pos = self.mapFromScene(scene_pos)
        widget_width = self.rect().width()
        if self.label_text:
            label_width = min(len(self.label_text) * 7 + 10, widget_width * 0.4)
        else:
            label_width = 5
        track_start = label_width + 5
        track_width = widget_width - label_width - 10
        mouse_x = local_pos.x()
        if mouse_x < track_start:
            norm = 0.0
        elif mouse_x > track_start + track_width:
            norm = 1.0
        else:
            norm = (mouse_x - track_start) / track_width
        new_val = self.min_val + norm * (self.max_val - self.min_val)

        try:
            attr = self.get_full_attribute()
            if cmds.objExists(attr):
                cmds.setAttr(attr, new_val)
                self.current_val = new_val
                self.update()
        except Exception as e:
            MGlobal.displayWarning("Slider error: {0}".format(e))

    def paint(self, painter, option, widget):
        local_rect = self.rect()
        widget_width = local_rect.width()
        widget_height = local_rect.height()
        painter.setBrush(QtGui.QBrush(self.base_color))
        painter.setPen(QtGui.QPen(QtCore.Qt.black, 0.5))
        painter.drawRect(local_rect)
        if self.label_text:
            font = panel_font(-2)
            painter.setFont(font)
            fm = painter.fontMetrics()
            label_width = min(fm.width(self.label_text) + 10, widget_width * 0.4)
        else:
            label_width = 5
        if self.label_text:
            painter.setPen(QtGui.QColor(220, 220, 220))
            label_rect = QtCore.QRectF(5, 0, label_width, widget_height)
            painter.drawText(label_rect, QtCore.Qt.AlignLeft | QtCore.Qt.AlignVCenter, self.label_text)
        track_x = label_width + 5
        track_width = widget_width - label_width - 10
        track_rect = QtCore.QRectF(track_x, widget_height / 2 - 4, track_width, 8)
        painter.setBrush(QtGui.QBrush(QtGui.QColor(50, 50, 50)))
        painter.setPen(QtGui.QPen(QtCore.Qt.NoPen))
        painter.drawRect(track_rect)
        if self.max_val != self.min_val:
            norm = (self.current_val - self.min_val) / (self.max_val - self.min_val)
        else:
            norm = 0
        norm = max(0, min(1, norm))
        fill_rect = QtCore.QRectF(track_x, track_rect.y(), track_width * norm, 8)
        painter.setBrush(QtGui.QBrush(QtGui.QColor(100, 150, 200)))
        painter.drawRect(fill_rect)
        handle_x = track_x + (track_width * norm) - 6
        handle_rect = QtCore.QRectF(handle_x, track_rect.y() - 2, 12, 12)
        painter.setBrush(QtGui.QBrush(QtGui.QColor(200, 200, 200)))
        painter.setPen(QtGui.QPen(QtCore.Qt.black, 0.5))
        painter.drawEllipse(handle_rect)

    def __del__(self):
        self.cleanup()

class BackgroundRect(PanelWidget):
    def __init__(self, x, y, w, h, color, opacity=0.3, label="", select_str="", texture_path=""):
        super(BackgroundRect, self).__init__(x, y, w, h)
        self.texture_path = texture_path
        self.color = color
        self.opacity_val = opacity
        self.label = label
        self.select_str = select_str
        self.rect_w = w
        self.rect_h = h
        self.rect_x = x
        self.rect_y = y
        self._3d_x = 0.0
        self._3d_y = 0.0
        self._3d_width = 1.0
        self._3d_height = 1.0
        self._texture_pixmap = QtGui.QPixmap()

        if texture_path and os.path.exists(texture_path):
            self._texture_pixmap = QtGui.QPixmap(texture_path)
            self.setBrush(QtCore.Qt.NoBrush)
            self.setOpacity(1.0)
        else:
            self.setBrush(QtGui.QBrush(color))
            self.setOpacity(opacity)
        
        self.setPen(QtGui.QPen(QtCore.Qt.NoPen))
        self.setZValue(-100)

        if label:
            self.label_item = QtWidgets.QGraphicsSimpleTextItem(label, self)
            self.label_item.setBrush(QtGui.QBrush(QtGui.QColor(200, 200, 200)))
            self.label_item.setPos(x + 5, y + 5)
            font = panel_font(2, bold=True)
            self.label_item.setFont(font)

    def update_from_3d(self, x, y, width, height):
        self._3d_x = x
        self._3d_y = y
        self._3d_width = width
        self._3d_height = height

        display_x = (x * DISPLAY_MULT) - (width * DISPLAY_MULT) / 2
        display_y = -(y * DISPLAY_MULT) - (height * DISPLAY_MULT) / 2
        display_w = width * DISPLAY_MULT
        display_h = height * DISPLAY_MULT

        self.rect_x = display_x
        self.rect_y = display_y
        self.rect_w = display_w
        self.rect_h = display_h

        self.setPos(display_x, display_y)
        self.setRect(0, 0, display_w, display_h)

        if hasattr(self, 'label_item') and self.label_item:
            self.label_item.setPos(display_x + 5, display_y + 5)

    def paint(self, painter, option, widget):
        if self._texture_pixmap.isNull():
            super(BackgroundRect, self).paint(painter, option, widget)
            return
        painter.setRenderHint(QtGui.QPainter.SmoothPixmapTransform)
        painter.drawPixmap(self.rect(), self._texture_pixmap, QtCore.QRectF(self._texture_pixmap.rect()))

    def get_3d_data(self):
        return self._3d_x, self._3d_y, self._3d_width, self._3d_height

# --- EMBED END: Core Classes ---

class PanelOptionsDialog(QtWidgets.QDialog):
    def __init__(self, parent=None):
        super(PanelOptionsDialog, self).__init__(parent)
        self.setWindowTitle("Control Panel Options")
        self.setModal(True)
        self._original_options = get_panel_appearance_options()
        self._selected_color = QtGui.QColor(self._original_options[2])
        self._finished = False

        layout = QtWidgets.QVBoxLayout(self)
        form = QtWidgets.QFormLayout()

        self.font_combo = QtWidgets.QFontComboBox()
        self.font_combo.setCurrentFont(QtGui.QFont(self._original_options[0]))
        form.addRow("Font:", self.font_combo)

        self.font_size_spin = QtWidgets.QSpinBox()
        self.font_size_spin.setRange(6, 48)
        self.font_size_spin.setSuffix(" px")
        self.font_size_spin.setValue(self._original_options[1])
        form.addRow("Font size:", self.font_size_spin)

        self.color_btn = QtWidgets.QPushButton()
        self.color_btn.clicked.connect(self.choose_selected_color)
        form.addRow("Selected color:", self.color_btn)
        layout.addLayout(form)

        buttons = QtWidgets.QDialogButtonBox(
            QtWidgets.QDialogButtonBox.Ok | QtWidgets.QDialogButtonBox.Cancel)
        buttons.accepted.connect(self.accept)
        buttons.rejected.connect(self.reject)
        layout.addWidget(buttons)

        self.font_combo.currentFontChanged.connect(self.preview_options)
        self.font_size_spin.valueChanged.connect(self.preview_options)
        self._update_color_button()

    def _update_color_button(self):
        color_name = self._selected_color.name()
        text_color = "#000000" if self._selected_color.lightness() > 140 else "#ffffff"
        self.color_btn.setText(color_name.upper())
        self.color_btn.setStyleSheet(
            "QPushButton {{ background-color: {0}; color: {1}; }}".format(color_name, text_color))

    def choose_selected_color(self):
        starting_color = QtGui.QColor(self._selected_color)
        dialog = QtWidgets.QColorDialog(self._selected_color, self)
        dialog.setWindowTitle("Select Highlight Color")

        def preview_color(color):
            self._selected_color = QtGui.QColor(color)
            self._update_color_button()
            self.preview_options()

        dialog.currentColorChanged.connect(preview_color)
        result = dialog.exec() if hasattr(dialog, "exec") else dialog.exec_()
        if not result:
            self._selected_color = starting_color
            self._update_color_button()
            self.preview_options()

    def preview_options(self, *args):
        set_panel_appearance_options(
            self.font_combo.currentFont().family(),
            self.font_size_spin.value(),
            self._selected_color
        )

    def accept(self):
        self.preview_options()
        save_panel_appearance_options()
        self._finished = True
        super(PanelOptionsDialog, self).accept()

    def reject(self):
        if not self._finished:
            set_panel_appearance_options(*self._original_options)
        self._finished = True
        super(PanelOptionsDialog, self).reject()

class PanelDuplicate(QtWidgets.QMainWindow):
    def __init__(self, parent=None, start_size=None):
        if parent is None:
            parent = get_maya_main_window()
        super(PanelDuplicate, self).__init__(parent)
        self.setWindowTitle("Control Panel | Duplicate")
        if start_size:
            self.resize(start_size.width(), start_size.height())
        else:
            self.resize(350, 550)
        self.scene = QtWidgets.QGraphicsScene()
        self.scene.setSceneRect(-5000, -5000, 10000, 10000)
        self.view = PanelView(self.scene)
        self.setCentralWidget(self.view)
        self._timer = QtCore.QTimer(self)
        self._timer.timeout.connect(self.update_visuals)
        self._timer.start(150)

    def update_visuals(self):
        for item in self.scene.items():
            if isinstance(item, PickerItem):
                item.update()

    def frame_all(self):
        all_items = [i for i in self.scene.items() if isinstance(i, PanelWidget)]
        if all_items:
            rect = all_items[0].sceneBoundingRect()
            for i in all_items[1:]:
                rect = rect.united(i.sceneBoundingRect())
            self.view.fitInView(rect.adjusted(-2, -2, 2, 2), QtCore.Qt.KeepAspectRatio)

    def resizeEvent(self, event):
        super(PanelDuplicate, self).resizeEvent(event)
        if not hasattr(self, '_resize_timer'):
            self._resize_timer = QtCore.QTimer(self)
            self._resize_timer.setSingleShot(True)
            self._resize_timer.timeout.connect(self.frame_all)
        self._resize_timer.start(150)

    def keyPressEvent(self, event):
        if event.key() == QtCore.Qt.Key_F:
            items = [i for i in self.scene.items() if isinstance(i, PickerItem)]
            if items:
                rect = items[0].sceneBoundingRect()
                for i in items[1:]:
                    rect = rect.united(i.sceneBoundingRect())
                self.view.fitInView(rect.adjusted(-2, -2, 2, 2), QtCore.Qt.KeepAspectRatio)
            event.accept()
        else:
            super(PanelDuplicate, self).keyPressEvent(event)

    def closeEvent(self, event):
        self._timer.stop()
        for item in self.scene.items():
            if isinstance(item, BaseWidget):
                item.cleanup()
        event.accept()

    def showEvent(self, event):
        self._timer.start(150)
        for item in self.scene.items():
            if isinstance(item, BaseWidget):
                item.activate()
        super(PanelDuplicate, self).showEvent(event)

class ControlPanel(MayaQWidgetDockableMixin, QtWidgets.QMainWindow):
    def __init__(self, parent=None):
        if parent is None:
            parent = get_maya_main_window()
        super(ControlPanel, self).__init__(parent)
        self.setObjectName("AS_Panel")
        self.setWindowTitle("Control Panel")
        self.resize(400, 340)
        self.duplicates = []
        self.main_widget = QtWidgets.QWidget()
        self.setCentralWidget(self.main_widget)
        self.layout = QtWidgets.QVBoxLayout(self.main_widget)
        self.layout.setContentsMargins(0, 0, 0, 0)
        self.layout.setSpacing(0)
        top_bar_container = QtWidgets.QWidget()
        top_bar = QtWidgets.QHBoxLayout(top_bar_container)
        top_bar.setContentsMargins(5, 5, 5, 0)
        self.option_menu = QtWidgets.QComboBox()
        self.option_menu.setSizeAdjustPolicy(QtWidgets.QComboBox.AdjustToContents)
        self.option_menu.installEventFilter(self)
        self.load_btn = QtWidgets.QPushButton("Load Layout...")
        self.load_btn.setFixedWidth(100)
        self.load_menu = QtWidgets.QMenu(self)
        self.load_btn.setMenu(self.load_menu)
        self.load_menu.aboutToShow.connect(lambda: self.populate_load_menu(self.load_menu))
        self.dup_btn = QtWidgets.QPushButton("Duplicate")
        self.dup_btn.setFixedWidth(80)
        self.dup_btn.clicked.connect(self.duplicate_window)
        top_bar.addWidget(self.option_menu)
        top_bar.addWidget(self.load_btn)
        top_bar.addWidget(self.dup_btn)
        top_bar.addStretch()
        self.layout.addWidget(top_bar_container)
        self.scene = QtWidgets.QGraphicsScene()
        self.scene.setSceneRect(-5000, -5000, 10000, 10000)
        self.view = PanelView(self.scene)
        self.view.setFocusPolicy(QtCore.Qt.StrongFocus)
        self.layout.addWidget(self.view)
        self.populate_namespaces()
        self.create_menubar()
        self.readSettings()
        self.option_menu.currentIndexChanged.connect(self.on_namespace_index_changed)
        self._timer = QtCore.QTimer(self)
        self._timer.timeout.connect(self.update_visuals)
        self._timer.start(150)
        self.sync_mel_namespace()

    def create_from_selected_attribute(self):
        gChannelBoxName = mel.eval('global string $gChannelBoxName; string $temp = $gChannelBoxName;')
        selected_attrs = cmds.channelBox(gChannelBoxName, query=True, selectedMainAttributes=True) or []
        if not selected_attrs:
            MGlobal.displayWarning("Control Panel: No attribute selected. Click on an attribute name, then click Create.")
            return
        sel_objects = cmds.ls(selection=True)
        if not sel_objects:
            MGlobal.displayWarning("Control Panel: No object selected")
            return
        obj = sel_objects[0]
        info_lines = []
        info_lines.append("Create Control Panel Widgets?")
        info_lines.append("")
        for attr_name in selected_attrs:
            full_attr = "{0}.{1}".format(obj, attr_name)
            attr_type = cmds.attributeQuery(attr_name, node=obj, attributeType=True)
            float_types = ["float", "doubleLinear", "doubleAngle", "double", "time", "distance"]
            if attr_type in float_types:
                has_min = cmds.attributeQuery(attr_name, node=obj, minExists=True)
                has_max = cmds.attributeQuery(attr_name, node=obj, maxExists=True)
                has_soft_min = cmds.attributeQuery(attr_name, node=obj, softMinExists=True)
                has_soft_max = cmds.attributeQuery(attr_name, node=obj, softMaxExists=True)
                if has_min or has_max or has_soft_min or has_soft_max:
                    widget_type = "SLIDER"
                    if has_min:
                        min_val = cmds.attributeQuery(attr_name, node=obj, min=True)[0]
                    elif has_soft_min:
                        min_val = cmds.attributeQuery(attr_name, node=obj, softMin=True)[0]
                    else:
                        min_val = -100.0
                    if has_max:
                        max_val = cmds.attributeQuery(attr_name, node=obj, max=True)[0]
                    elif has_soft_max:
                        max_val = cmds.attributeQuery(attr_name, node=obj, softMax=True)[0]
                    else:
                        max_val = 100.0
                    info_lines.append("  * {0} -> {1} (range: {2} to {3})".format(attr_name, widget_type, min_val, max_val))
                else:
                    widget_type = "FLOAT FIELD"
                    info_lines.append("  * {0} -> {1} (unlimited)".format(attr_name, widget_type))
        info_lines.append("")
        info_lines.append("Widgets will be created at world origin.")
        info_lines.append("You can move them after creation.")
        result = cmds.confirmDialog(
            title='Create Widgets',
            message='\n'.join(info_lines),
            button=['Create', 'Cancel'],
            defaultButton='Create',
            cancelButton='Cancel',
            dismissString='Cancel'
        )
        if result != 'Create':
            MGlobal.displayInfo("Control Panel: Widget creation cancelled")
            return
        main_grp = "Panel3D"
        if not cmds.objExists(main_grp):
            main_grp = cmds.group(em=True, name=main_grp)
            MGlobal.displayInfo("Control Panel: Created Panel3D group")
        created_count = 0
        last_box = None
        created_boxes = []
        cmds.undoInfo(openChunk=True, chunkName="Create Widgets")
        for i, attr_name in enumerate(selected_attrs):
            full_attr = "{0}.{1}".format(obj, attr_name)
            attr_type = cmds.attributeQuery(attr_name, node=obj, attributeType=True)
            float_types = ["float", "doubleLinear", "doubleAngle", "double", "time", "distance"]
            if attr_type in float_types:
                has_min = cmds.attributeQuery(attr_name, node=obj, minExists=True)
                has_max = cmds.attributeQuery(attr_name, node=obj, maxExists=True)
                has_soft_min = cmds.attributeQuery(attr_name, node=obj, softMinExists=True)
                has_soft_max = cmds.attributeQuery(attr_name, node=obj, softMaxExists=True)
                min_val = -100.0
                max_val = 100.0
                current_val = cmds.getAttr(full_attr)
                use_slider = False
                if has_min or has_max or has_soft_min or has_soft_max:
                    use_slider = True
                    if has_min:
                        min_val = cmds.attributeQuery(attr_name, node=obj, min=True)[0]
                    elif has_soft_min:
                        min_val = cmds.attributeQuery(attr_name, node=obj, softMin=True)[0]
                    if has_max:
                        max_val = cmds.attributeQuery(attr_name, node=obj, max=True)[0]
                    elif has_soft_max:
                        max_val = cmds.attributeQuery(attr_name, node=obj, softMax=True)[0]
                x_pos = 0
                y_pos = -i * 1.5
                pos = [x_pos, y_pos, 0]
                scale = [6.0, 1.2, 0.1]
                if use_slider:
                    color = QtGui.QColor(150, 200, 100)
                    widget_type = "slider"
                else:
                    color = QtGui.QColor(100, 150, 200)
                    widget_type = "floatField"
                custom_name = "ui_{0}_{1}_{2}".format(widget_type, obj, attr_name).replace("|", "_").replace(":", "_")
                box = self.create_ui_button(
                    label=attr_name,
                    pos=pos,
                    scale=scale,
                    color=color,
                    parent=main_grp,
                    target=full_attr,
                    custom_name=custom_name
                )
                cmds.addAttr(box, ln="widgetType", dt="string")
                cmds.setAttr("{0}.widgetType".format(box), widget_type, type="string")
                if use_slider:
                    cmds.addAttr(box, ln="minValue", at="float", dv=min_val)
                    cmds.addAttr(box, ln="maxValue", at="float", dv=max_val)
                    cmds.addAttr(box, ln="currentValue", at="float", dv=current_val)
                else:
                    cmds.addAttr(box, ln="currentValue", at="float", dv=current_val)
                created_boxes.append(box)
                created_count += 1
                MGlobal.displayInfo("Control Panel: Created {0} for {1}".format(widget_type, full_attr))
            elif attr_type == "bool":
                current_val = cmds.getAttr(full_attr)
                x_pos = 0
                y_pos = -i * 1.5
                pos = [x_pos, y_pos, 0]
                scale = [6.0, 1.2, 0.1]
                color = QtGui.QColor(200, 150, 100)
                widget_type = "checkbox"
                custom_name = "ui_{0}_{1}_{2}".format(widget_type, obj, attr_name).replace("|", "_").replace(":", "_")
                box = self.create_ui_button(
                    label=attr_name,
                    pos=pos,
                    scale=scale,
                    color=color,
                    parent=main_grp,
                    target=full_attr,
                    custom_name=custom_name
                )
                cmds.addAttr(box, ln="widgetType", dt="string")
                cmds.setAttr("{0}.widgetType".format(box), widget_type, type="string")
                cmds.addAttr(box, ln="currentValue", at="bool", dv=current_val)
                created_boxes.append(box)
                created_count += 1
                MGlobal.displayInfo("Control Panel: Created checkbox for {0}".format(full_attr))
            elif attr_type == "enum":
                MGlobal.displayInfo("Control Panel: Enum attribute detected. Dropdown coming soon.")
            else:
                MGlobal.displayWarning("Control Panel: Unsupported attribute type: {0} for {1}".format(attr_type, attr_name))
        cmds.undoInfo(closeChunk=True)
        if created_count > 0:
            if created_boxes:
                cmds.select(created_boxes, replace=True)
            MGlobal.displayInfo("Control Panel: Created {0} widget(s)".format(created_count))

    def create_background_from_selection(self, selected_boxes):
        cmds.undoInfo(openChunk=True)
        try:
            main_grp = "Panel3D"
            min_x = min_y = float('inf')
            max_x = max_y = float('-inf')
            for box in selected_boxes:
                pos = cmds.getAttr("{0}.t".format(box))[0]
                scale = cmds.getAttr("{0}.s".format(box))[0]
                left = pos[0] - (scale[0] / 2)
                right = pos[0] + (scale[0] / 2)
                bottom = pos[1] - (scale[1] / 2)
                top = pos[1] + (scale[1] / 2)
                min_x = min(min_x, left)
                max_x = max(max_x, right)
                min_y = min(min_y, bottom)
                max_y = max(max_y, top)
            width = max_x - min_x
            height = max_y - min_y
            min_dimension = 0.5
            if width < 0.001:
                width = min_dimension
                min_x = -min_dimension / 2
                max_x = min_dimension / 2
                MGlobal.displayInfo("Control Panel: Width was zero, set to minimum")
            if height < 0.001:
                height = min_dimension
                min_y = -min_dimension / 2
                max_y = min_dimension / 2
                MGlobal.displayInfo("Control Panel: Height was zero, set to minimum")
            larger_axis = max(width, height)
            min_size = max(0.2, larger_axis * 0.1)
            if width < min_size:
                expand = (min_size - width) / 2
                min_x -= expand
                max_x += expand
                width = min_size
            if height < min_size:
                expand = (min_size - height) / 2
                min_y -= expand
                max_y += expand
                height = min_size
            margin_x = max(0.2, width * 0.1)
            margin_y = max(0.2, height * 0.1)
            container_left = min_x - margin_x
            container_right = max_x + margin_x
            container_bottom = min_y - margin_y
            container_top = max_y + margin_y
            container_width = container_right - container_left
            container_height = container_top - container_bottom
            container_center_x = (container_left + container_right) / 2
            container_center_y = (container_bottom + container_top) / 2
            existing_containers = cmds.ls("ui_bg_group*", type='transform') or []
            next_num = len(existing_containers) + 1
            container_name = "ui_bg_group{0}".format(next_num)
            tz = -0.5
            container = cmds.polyCube(name=container_name, w=1, h=1, d=0.05, ch=False, createUVs=1)[0]
            cmds.parent(container, main_grp)
            cmds.setAttr("{0}.t".format(container), container_center_x, container_center_y, tz)
            cmds.setAttr("{0}.s".format(container), container_width, container_height, 1)
            cmds.addAttr(container, ln="panelSelect", dt="string")
            cmds.setAttr("{0}.panelSelect".format(container), container_name, type="string")
            cmds.addAttr(container, ln="panelLabel", dt="string")
            cmds.setAttr("{0}.panelLabel".format(container), "", type="string")
            cmds.addAttr(container, ln="isBackground", at="bool", dv=True)
            shader_name = "ui_bg_shd_{0}".format(container_name)
            shader = cmds.shadingNode('lambert', asShader=True, name=shader_name)
            cmds.setAttr("{0}.color".format(shader), 0.357, 0.349, 0.447)
            cmds.setAttr("{0}.incandescence".format(shader), 0.2, 0.2, 0.2)
            sg = cmds.sets(renderable=True, noSurfaceShader=True, empty=True, name="{0}_SG".format(shader_name))
            cmds.connectAttr("{0}.outColor".format(shader), "{0}.surfaceShader".format(sg))
            shapes = cmds.listRelatives(container, shapes=True)
            if shapes:
                cmds.sets(shapes[0], edit=True, forceElement=sg)
            cmds.select(container)
            MGlobal.displayInfo("Control Panel: Created container '{0}' around {1} button-boxes (size: {2:.2f} x {3:.2f})".format(container_name, len(selected_boxes), container_width, container_height))
        finally:
            cmds.undoInfo(closeChunk=True)

    def create_background_3d(self, rect_data, parent, mult):
        x = rect_data['x']
        y = rect_data['y']
        w = rect_data['w']
        h = rect_data['h']
        r = rect_data['color_r']
        g = rect_data['color_g']
        b = rect_data['color_b']
        opacity = rect_data['opacity']
        label = rect_data['label']
        texture_path = rect_data.get('texture_path', '')
        
        tx = (x + w/2) / mult
        ty = (-y - h/2) / mult
        tz = -0.5
        sx = w / mult
        sy = h / mult

        base_name = "ui_bg_{0}".format(label.replace(" ", "_")) if label else "ui_bg_rect"
        box_name = base_name
        counter = 1
        while cmds.objExists(box_name):
            box_name = "{0}{1}".format(base_name, counter)
            counter += 1

        box = cmds.polyCube(name=box_name, w=1, h=1, d=0.05, ch=False, createUVs=1)[0]
        cmds.parent(box, parent)
        cmds.setAttr("{0}.t".format(box), tx, ty, tz)
        cmds.setAttr("{0}.s".format(box), sx, sy, 1)

        if label:
            shader_base = "ui_bg_shd_{0}".format(label.replace(" ", "_"))
        else:
            shader_base = "ui_bg_shd_{0}".format(box_name)
        
        shader_name = shader_base
        counter = 1
        while cmds.objExists(shader_name):
            shader_name = "{0}{1}".format(shader_base, counter)
            counter += 1

        shader = cmds.shadingNode('lambert', asShader=True, name=shader_name)
        
        if texture_path and os.path.exists(texture_path):
            file_node = cmds.shadingNode('file', asTexture=True, name="{0}_file".format(shader_name))
            cmds.setAttr("{0}.fileTextureName".format(file_node), texture_path, type="string")
            cmds.connectAttr("{0}.outColor".format(file_node), "{0}.color".format(shader))
            cmds.setAttr("{0}.incandescence".format(shader), 0, 0, 0)
        else:
            cmds.setAttr("{0}.color".format(shader), r, g, b)
            cmds.setAttr("{0}.incandescence".format(shader), r * opacity, g * opacity, b * opacity)

        sg_name = "{0}_SG".format(shader_name)
        sg = cmds.sets(renderable=True, noSurfaceShader=True, empty=True, name=sg_name)
        cmds.connectAttr("{0}.outColor".format(shader), "{0}.surfaceShader".format(sg))

        shapes = cmds.listRelatives(box, shapes=True)
        if shapes:
            cmds.sets(shapes[0], edit=True, forceElement=sg)

        cmds.addAttr(box, ln="isBackground", at="bool", dv=True)
        return box

    def get_color_from_background(self, obj):
        try:
            shapes = cmds.listRelatives(obj, shapes=True, f=True)
            if not shapes:
                return QtGui.QColor(80, 80, 90), 0.25, None
            sgs = cmds.listConnections(shapes[0], type='shadingEngine')
            if not sgs:
                return QtGui.QColor(80, 80, 90), 0.25, None
            shaders = cmds.listConnections("{0}.surfaceShader".format(sgs[0])) or \
                      cmds.listConnections("{0}.ss".format(sgs[0]))
            
            if shaders:
                shader = shaders[0]
                shader_type = cmds.nodeType(shader)
                rgb = [0.3, 0.3, 0.4]
                opacity = 0.25
                texture_path = None
                
                file_connections = cmds.listConnections("{0}.color".format(shader), source=True, type='file')
                if file_connections:
                    file_node = file_connections[0]
                    if cmds.attributeQuery("fileTextureName", node=file_node, exists=True):
                        texture_path = cmds.getAttr("{0}.fileTextureName".format(file_node))
                        if texture_path and os.path.exists(texture_path):
                            return None, 1.0, texture_path
                
                if cmds.attributeQuery("color", node=shader, exists=True):
                    rgb = cmds.getAttr("{0}.color".format(shader))[0]
                elif cmds.attributeQuery("outColor", node=shader, exists=True):
                    rgb = cmds.getAttr("{0}.outColor".format(shader))[0]
                
                if shader_type == "surfaceShader":
                    if cmds.attributeQuery("outTransparency", node=shader, exists=True):
                        trans = cmds.getAttr("{0}.outTransparency".format(shader))[0]
                        opacity = 1.0 - ((trans[0] + trans[1] + trans[2]) / 3.0)
                else:
                    if cmds.attributeQuery("transparency", node=shader, exists=True):
                        trans = cmds.getAttr("{0}.transparency".format(shader))[0]
                        opacity = 1.0 - ((trans[0] + trans[1] + trans[2]) / 3.0)
                
                r = int(max(0, min(255, rgb[0] * 255)))
                g = int(max(0, min(255, rgb[1] * 255)))
                b = int(max(0, min(255, rgb[2] * 255)))
                return QtGui.QColor(r, g, b), opacity, None
        except Exception as e:
            MGlobal.displayWarning("Control Panel Debug: Error reading background shader on {0}: {1}".format(obj, e))
        return QtGui.QColor(80, 80, 90), 0.25, None

    def eventFilter(self, obj, event):
        try:
            if not cmds.window("AS_Panel", exists=True):
                return False
            if obj == self.option_menu:
                if event.type() == QtCore.QEvent.MouseButtonPress:
                    self.refresh_namespace_only()
        except:
            return False
        return super(ControlPanel, self).eventFilter(obj, event)

    def refresh_namespace_only(self):
        try:
            if not cmds.window("AS_Panel", exists=True):
                return

            current_ns = self.option_menu.currentText()
            self.option_menu.blockSignals(True)
            self.populate_namespaces()
            index = self.option_menu.findText(current_ns)
            if index != -1:
                self.option_menu.setCurrentIndex(index)
            else:
                root_index = self.option_menu.findText(":")
                if root_index != -1:
                    self.option_menu.setCurrentIndex(root_index)
            self.option_menu.blockSignals(False)
            current_ns = self.option_menu.currentText()
            for item in self.scene.items():
                if isinstance(item, PickerItem):
                    item.namespace = current_ns
            self.sync_mel_namespace()
        except:
            pass

    def refresh_all(self):
        current_ns = self.option_menu.currentText()
        self.option_menu.blockSignals(True)
        self.populate_namespaces()
        index = self.option_menu.findText(current_ns)
        if index != -1:
            self.option_menu.setCurrentIndex(index)
        else:
            root_index = self.option_menu.findText(":")
            if root_index != -1:
                self.option_menu.setCurrentIndex(root_index)
        self.option_menu.blockSignals(False)
        current_ns = self.option_menu.currentText()
        for item in self.scene.items():
            if isinstance(item, PickerItem):
                item.namespace = current_ns
        self.sync_mel_namespace()
        MGlobal.displayInfo("Control Panel: Refreshed namespace list")

    def duplicate_window(self):
        new_win = PanelDuplicate()
        current_ns = self.option_menu.currentText()
        new_win.setWindowTitle(f"Control Panel | {current_ns if current_ns != ':' else 'Global'}")
        new_win.resize(self.width(), self.view.height())
        new_win.move(self.x() + 30, self.y() + 30)
        button_count = 0
        for item in self.scene.items():
            if isinstance(item, PickerItem):
                copy = PickerItem(
                    item.select_str,
                    item.x(),
                    item.y(),
                    item.rect().width(),
                    item.rect().height(),
                    item.base_color,
                    label=item.label_text,
                    mel_cmd=item.mel_cmd,
                    is_label_only=item.is_label_only,
                    namespace=current_ns,
                    opacity=item.opacity_val,
                    texture_path=item.texture_path
                )
                new_win.scene.addItem(copy)
                button_count += 1
            elif isinstance(item, CheckboxWidget):
                copy = CheckboxWidget(
                    item.select_str,
                    item.x(),
                    item.y(),
                    item.rect().width(),
                    item.rect().height(),
                    item.base_color,
                    label=item.label_text,
                    namespace=current_ns,
                    current_val=item.current_val
                )
                new_win.scene.addItem(copy)
                button_count += 1
            elif isinstance(item, SliderWidget):
                copy = SliderWidget(
                    item.select_str,
                    item.x(),
                    item.y(),
                    item.rect().width(),
                    item.rect().height(),
                    item.base_color,
                    label=item.label_text,
                    namespace=current_ns,
                    min_val=item.min_val,
                    max_val=item.max_val,
                    current_val=item.current_val
                )
                new_win.scene.addItem(copy)
                button_count += 1
            elif isinstance(item, FloatFieldWidget):
                copy = FloatFieldWidget(
                    item.select_str,
                    item.x(),
                    item.y(),
                    item.rect().width(),
                    item.rect().height(),
                    item.base_color,
                    label=item.label_text,
                    namespace=current_ns,
                    min_val=item.min_val,
                    max_val=item.max_val,
                    current_val=item.current_val
                )
                new_win.scene.addItem(copy)
                button_count += 1
            elif isinstance(item, BackgroundRect):
                copy = BackgroundRect(
                    item.rect_x,
                    item.rect_y,
                    item.rect_w,
                    item.rect_h,
                    item.color,
                    item.opacity_val,
                    item.label,
                    item.select_str,
                    item.texture_path
                )
                new_win.scene.addItem(copy)
                button_count += 1
        new_win.show()
        QtCore.QTimer.singleShot(50, lambda: new_win.keyPressEvent(QtGui.QKeyEvent(QtCore.QEvent.KeyPress, QtCore.Qt.Key_F, QtCore.Qt.NoModifier)))
        self.duplicates.append(new_win)
        MGlobal.displayInfo("Control Panel: Duplicated window with {0} widgets".format(button_count))

    def frame_logic(self):
        all_items = [i for i in self.scene.items() if isinstance(i, PanelWidget)]
        if not all_items:
            return
        curr_sel = cmds.ls(selection=True) or []
        ns = self.option_menu.currentText()
        if ns == ":":
            ns = ""
        selected_items = []
        for i in all_items:
            if isinstance(i, PickerItem):
                full_targets = [f"{ns}{t}" for t in i.select_str.split(',')]
                if any(t in curr_sel for t in full_targets):
                    selected_items.append(i)
        targets = selected_items if selected_items else all_items
        rect = targets[0].sceneBoundingRect()
        for i in targets[1:]:
            rect = rect.united(i.sceneBoundingRect())
        self.view.fitInView(rect.adjusted(-2, -2, 2, 2), QtCore.Qt.KeepAspectRatio)

    def frame_all(self):
        all_items = [i for i in self.scene.items() if isinstance(i, PanelWidget)]
        if not all_items:
            return
        rect = all_items[0].sceneBoundingRect()
        for i in all_items[1:]:
            rect = rect.united(i.sceneBoundingRect())
        self.view.fitInView(rect.adjusted(-2, -2, 2, 2), QtCore.Qt.KeepAspectRatio)

    def resizeEvent(self, event):
        super(ControlPanel, self).resizeEvent(event)
        if not hasattr(self, '_resize_timer'):
            self._resize_timer = QtCore.QTimer(self)
            self._resize_timer.setSingleShot(True)
            self._resize_timer.timeout.connect(self.frame_all)
        self._resize_timer.start(150)

    def sync_mel_namespace(self):
        current_ns = self.option_menu.currentText()
        mel.eval('global string $gAsPanelNamespace; $gAsPanelNamespace = "{}";'.format(current_ns))

    def populate_namespaces(self):
        if not hasattr(self, 'option_menu'):
            return
        self.option_menu.blockSignals(True)
        self.option_menu.clear()
        valid_entries = [":"]
        ns_list = cmds.namespaceInfo(listOnlyNamespaces=True, recurse=True)
        if "UI" in ns_list:
            ns_list.remove("UI")
        ns_list.sort()
        for ns in ns_list:
            if not ns:
                continue
            prefix = "{}:".format(ns)
            if mel.eval('attributeExists "version" "{}Main"'.format(prefix)) or \
               mel.eval('attributeExists "version" "{}FaceGroup"'.format(prefix)):
                if mel.eval('asFilterCheck "asPanel" "{}"'.format(ns)):
                    valid_entries.append(prefix)
        self.option_menu.addItems(valid_entries)
        self.option_menu.blockSignals(False)

    def on_namespace_index_changed(self):
        self.sync_mel_namespace()
        mel.eval('asNameSpaceChange asPanel')
        current_ns = self.option_menu.currentText()
        for item in self.scene.items():
            if isinstance(item, BaseWidget):
                item.update_namespace(current_ns)
            elif isinstance(item, PickerItem):
                item.namespace = current_ns

    def create_menubar(self):
        bar = self.menuBar()
        bar.clear()
        file_m = bar.addMenu("File")
        file_m.addAction("Create Reference..", lambda: mel.eval('asReferenceBrowser 0'))
        file_m.addAction("Reference Editor", lambda: mel.eval('asReferenceEditor'))
        file_m.addAction("Export Fbx..", lambda: mel.eval('asExportFbxBrowser asPanel'))
        edit_m = bar.addMenu("Edit")
        edit_m.addAction("Refresh", lambda: self.populate_namespaces())
        edit_m.addAction("Filter", lambda: mel.eval('asFilterNameSpaceMenuUI asPanel'))
        disp_m = bar.addMenu("Display")
        disp_m.addAction("Controls", lambda: mel.eval('asControlsVisibilityToggle'))
        disp_m.addAction("Set HotKey", lambda: mel.eval('asSetupControlVisibilityHotKeyDialog'))
        disp_m.addAction("GimbalLock", lambda: mel.eval('asVisualizeGimbalLock asPanel'))
        disp_m.addAction("FaceCtrls detach", lambda: mel.eval('asFaceCtrlsDetach asPanel'))
        pose_m = bar.addMenu("Pose")
        pose_m.addAction("Copy", lambda: mel.eval('asCopyToClipBoard asPanel 0'))
        pose_m.addAction("Paste", lambda: mel.eval('asPasteFromClipBoard asPanel 0'))
        pose_m.addSeparator()
        pose_m.addAction("Reset", lambda: mel.eval('asGoToBuildPose asPanel'))
        pose_m.addAction("Tpose", lambda: mel.eval('asGoToTPose asPanel'))
        pose_m.addAction("Mirror", lambda: mel.eval('asMirror asPanel'))
        pose_m.addAction("Mirror Options...", lambda: mel.eval('asMirrorOptions asPanel'))
        anim_m = bar.addMenu("Anim")
        anim_m.addAction("Copy", lambda: mel.eval('asCopyToClipBoard asPanel 1'))
        anim_m.addAction("Paste", lambda: mel.eval('asPasteFromClipBoard asPanel 1'))
        anim_m.addSeparator()
        anim_m.addAction("Clean", lambda: mel.eval('asDeleteStaticChannels asPanel'))
        anim_m.addSeparator()
        anim_m.addAction("Bake", lambda: mel.eval('asAnimBake asPanel'))
        anim_m.addSeparator()
        anim_m.addAction("SwitchFKIK", lambda: mel.eval('asAutoSwitchFKIK'))
        anim_m.addAction("SwitchPivot", lambda: mel.eval('asAutoSwitchPivot'))
        anim_m.addSeparator()
        anim_m.addAction("PivotControl", lambda: mel.eval('asPivotControl'))
        anim_m.addSeparator()
        anim_m.addAction("QuickIK", lambda: mel.eval('asQuickIK'))
        anim_m.addSeparator()
        anim_m.addAction("HumanIK", lambda: mel.eval('asHumanIKUI asPanel'))
        anim_m.addSeparator()
        anim_m.addAction("MoCapMatcher", lambda: mel.eval('asMoCapMatcherUI asPanel'))
        anim_m.addAction("MoCapLibrary", lambda: mel.eval('asMoCapLibraryUI asPanel'))
        anim_m.addSeparator()
        anim_m.addAction("Connect ARKit", lambda: mel.eval('asConnectARKitUI asPanel'))
        anim_m.addAction("Connect MocapX", lambda: mel.eval('asConnectMocapX asPanel'))
        anim_m.addAction("MetaHumanAnimator", lambda: mel.eval('asMetaHumanAnimatorUI asPanel'))
        anim_m.addSeparator()
        anim_m.addAction("VideoMoCap", lambda: mel.eval('asVideoMoCapUI asPanel'))
        anim_m.addSeparator()
        anim_m.addAction("Auto lipsync", lambda: mel.eval('asAutoLipSyncUI asPanel'))
        anim_m.addAction("Audio2Face", lambda: mel.eval('asAutoLipSyncUI asPanel'))
        dyn_m = bar.addMenu("Dynamics")
        dyn_m.addAction("Add Controller-Dynamics", lambda: mel.eval('asCtrlDynAdd asPanel'))
        dyn_m.addAction("Add JointChain-Dynamics", lambda: mel.eval('asDynAdd asPanel'))
        dyn_m.addAction("Add JointChain-Dynamics (HairSystem)", lambda: mel.eval('asDynAddHairSystem asPanel'))
        dyn_m.addAction("Bake", lambda: mel.eval('asDynBake asPanel'))
        par_m = bar.addMenu("Parent")
        par_m.addAction("Add parent constraint", lambda: mel.eval('asParentAdd asPanel 0'))
        panel_editor_m = bar.addMenu("Panel Editor")
        auto_build_action = panel_editor_m.addAction("Auto-Build")
        auto_build_action.setToolTip("Create, arrange, pull, and cleanup from selected controllers - all in one click.")
        auto_build_action.triggered.connect(self.auto_build)
        panel_editor_m.addSeparator()
        push_action = panel_editor_m.addAction("Push to 3D")
        push_action.setToolTip("Create 3D boxes from current Control Panel buttons. Edit them in Maya viewport.")
        push_action.triggered.connect(self.panel_to_maya)
        pull_action = panel_editor_m.addAction("Pull from 3D")
        pull_action.setToolTip("Update Control Panel buttons from selected 3D boxes in the scene.")
        pull_action.triggered.connect(self.maya_to_panel)
        panel_editor_m.addSeparator()
        panel_editor_m.addAction("Create", self.panel3d_new)
        panel_editor_m.addAction("Mirror", self.panel3d_mirror)
        panel_editor_m.addAction("Delete", self.panel3d_delete)
        panel_editor_m.addAction("Export...", self.export_layout)
        panel_editor_m.addSeparator()
        panel_editor_m.addAction("Auto-Arrange", self.panel3d_arrange)
        panel_editor_m.addSeparator()
        panel_editor_m.addAction("Options...", self.show_options)
        panel_editor_m.addSeparator()
        panel_editor_m.addAction("Embed Panel in Scene...", self.embed_panel)
        panel_editor_m.addSeparator()
        self._dock_action = panel_editor_m.addAction("Dock Panel", self.dock_panel)

    def dock_panel(self):
        workspace_name = self.objectName() + "WorkspaceControl"
        if cmds.workspaceControl(workspace_name, exists=True):
            self._manual_undock = True
            cmds.deleteUI(workspace_name, control=True)
            self._manual_undock = False
            self.show()
            self.raise_()
            self.view.setFocus()
            self.frame_all()
            return
        self.hide()
        self.show(dockable=True)
        cmds.workspaceControl(workspace_name, e=True, dockToMainWindow=["right", False], floating=False)
        self.frame_all()
        QtCore.QTimer.singleShot(100, self._update_dock_menu_text)

    def dockCloseEventTriggered(self):
        if getattr(self, '_manual_undock', False):
            super(ControlPanel, self).dockCloseEventTriggered()
            return
        workspace_name = self.objectName() + "WorkspaceControl"
        if cmds.workspaceControl(workspace_name, exists=True):
            cmds.deleteUI(workspace_name, control=True)
        self.show()
        self.raise_()
        self.view.setFocus()
        self.frame_all()
        super(ControlPanel, self).dockCloseEventTriggered()

    def show_options(self):
        dialog = PanelOptionsDialog(self)
        if hasattr(dialog, "exec"):
            dialog.exec()
        else:
            dialog.exec_()

    def populate_load_menu(self, menu):
        menu.clear()
        embedded_pickers = cmds.ls("Panel3D", "*:Panel3D", long=True, type='transform')
        if embedded_pickers:
            for path in embedded_pickers:
                action = menu.addAction(f"[ Scene ] {path}")
                action.triggered.connect(lambda checked=False, p=path: self.maya_to_panel(src_override=p))
            menu.addSeparator()
        script_dir = os.path.dirname(os.path.realpath(__file__))
        target_dir = os.path.join(script_dir, "panelFiles", "scenes")
        if os.path.exists(target_dir):
            ma_files = [f for f in os.listdir(target_dir) if f.endswith('.ma')]
            for ma_file in sorted(ma_files):
                full_path = os.path.join(target_dir, ma_file)
                action = menu.addAction(ma_file)
                action.triggered.connect(lambda checked=False, p=full_path: self.load_layout_file(p))

    def get_color_from_rig(self, node):
        curr = node
        palette = {
            1: (0, 0, 0), 2: (128, 128, 128), 3: (192, 192, 192), 4: (153, 0, 38),
            5: (0, 4, 96), 6: (0, 0, 255), 7: (0, 107, 24), 8: (38, 0, 67),
            9: (200, 0, 200), 10: (138, 71, 51), 11: (63, 31, 31), 12: (153, 56, 0),
            13: (255, 0, 0), 14: (0, 255, 0), 15: (0, 65, 153), 16: (255, 255, 255),
            17: (255, 255, 0), 18: (100, 200, 255), 19: (66, 255, 161), 20: (255, 176, 176),
            21: (228, 172, 121), 22: (255, 255, 0), 23: (0, 153, 94), 24: (161, 107, 59),
            25: (155, 155, 0), 26: (155, 155, 63), 27: (63, 155, 0), 28: (0, 155, 63),
            29: (0, 155, 155), 30: (0, 63, 155), 31: (113, 0, 155)
        }

        while curr:
            targets = (cmds.listRelatives(curr, shapes=True, f=True) or []) + [curr]
            for t in targets:
                if cmds.attributeQuery("overrideEnabled", node=t, exists=True):
                    if cmds.getAttr(f"{t}.overrideEnabled"):
                        if cmds.getAttr(f"{t}.overrideRGBColors"):
                            rgb = cmds.getAttr(f"{t}.overrideColorRGB")[0]
                            return QtGui.QColor(int(rgb[0]*255), int(rgb[1]*255), int(rgb[2]*255))
                        idx = cmds.getAttr(f"{t}.overrideColor")
                        if idx > 0 and idx in palette:
                            return QtGui.QColor(*palette[idx])

            par = cmds.listRelatives(curr, parent=True, f=True)
            curr = par[0] if par else None

        shader_color = self.get_assigned_shader_color(node)
        if shader_color is not None:
            return shader_color
        return QtGui.QColor(120, 120, 120)

    def get_assigned_shader_color(self, node):
        try:
            targets = (cmds.listRelatives(node, shapes=True, f=True) or []) + [node]
            for target in targets:
                shading_groups = cmds.listConnections(target, type="shadingEngine") or []
                for shading_group in shading_groups:
                    shaders = cmds.listConnections("{0}.surfaceShader".format(shading_group)) or \
                              cmds.listConnections("{0}.ss".format(shading_group)) or []
                    for shader in shaders:
                        rgb = None
                        if cmds.attributeQuery("outColor", node=shader, exists=True):
                            rgb = cmds.getAttr("{0}.outColor".format(shader))[0]
                        if (rgb is None or sum(rgb) < 0.001) and cmds.attributeQuery("color", node=shader, exists=True):
                            rgb = cmds.getAttr("{0}.color".format(shader))[0]
                        if rgb is not None:
                            return QtGui.QColor(
                                int(max(0, min(255, rgb[0] * 255))),
                                int(max(0, min(255, rgb[1] * 255))),
                                int(max(0, min(255, rgb[2] * 255)))
                            )
        except Exception:
            pass
        return None

    def get_color_from_ui_button(self, node):
        color, opacity, texture_path = self.get_appearance_from_ui_button(node)
        color.setAlphaF(opacity)
        return color

    def get_appearance_from_ui_button(self, node):
        try:
            shapes = cmds.listRelatives(node, shapes=True, f=True)
            target = shapes[0] if shapes else node
            sgs = cmds.listConnections(target, type='shadingEngine')
            if sgs:
                shds = cmds.listConnections(f"{sgs[0]}.surfaceShader") or \
                       cmds.listConnections(f"{sgs[0]}.ss")
                if shds:
                    shd = shds[0]
                    rgb = [0, 0, 0]
                    if cmds.attributeQuery("outColor", n=shd, exists=True):
                        rgb = cmds.getAttr(f"{shd}.outColor")[0]

                    if sum(rgb) < 0.001 and cmds.attributeQuery("color", n=shd, exists=True):
                        rgb = cmds.getAttr(f"{shd}.color")[0]

                    opacity = 1.0
                    texture_path = ""
                    file_connections = cmds.listConnections("{0}.color".format(shd), source=True, type='file') or []
                    if file_connections and cmds.attributeQuery("fileTextureName", node=file_connections[0], exists=True):
                        candidate_path = cmds.getAttr("{0}.fileTextureName".format(file_connections[0]))
                        if candidate_path and os.path.exists(candidate_path):
                            texture_path = candidate_path
                    shader_type = cmds.nodeType(shd)
                    transparency_attr = "outTransparency" if shader_type == "surfaceShader" else "transparency"
                    if cmds.attributeQuery(transparency_attr, n=shd, exists=True):
                        transparency = cmds.getAttr(f"{shd}.{transparency_attr}")[0]
                        opacity = 1.0 - sum(transparency) / 3.0

                    r = int(max(0, min(255, rgb[0] * 255)))
                    g = int(max(0, min(255, rgb[1] * 255)))
                    b = int(max(0, min(255, rgb[2] * 255)))
                    if (r + g + b) < 1:
                        return QtGui.QColor(120, 120, 120), opacity, texture_path
                    return QtGui.QColor(r, g, b), opacity, texture_path
        except Exception as e:
            MGlobal.displayWarning("Control Panel Debug: Error reading shader on {0}: {1}".format(node, e))
        return QtGui.QColor(100, 100, 100), 1.0, ""

    def panel3d_new(self):
        main_grp = "Panel3D"
        full_sel = cmds.ls(selection=True, long=True)
        gChannelBoxName = mel.eval('global string $gChannelBoxName; string $temp = $gChannelBoxName;')
        selected_attrs = cmds.channelBox(gChannelBoxName, query=True, selectedMainAttributes=True) or []
        if selected_attrs and full_sel:
            self.create_from_selected_attribute()
            return
        all_are_buttons = True
        if full_sel:
            for obj in full_sel:
                if not cmds.attributeQuery("panelSelect", node=obj, exists=True):
                    all_are_buttons = False
                    break
        else:
            all_are_buttons = False
        if all_are_buttons:
            self.create_background_from_selection(full_sel)
            return
        sel = [obj for obj in full_sel if f"|{main_grp}|" not in obj]
        mode = 'Replace'
        top_level_panel3d = cmds.ls("|Panel3D", long=True)
        if top_level_panel3d:
            conf = cmds.confirmDialog(
                title='Panel3D Exists',
                message='Top-level Panel3D group already exists.',
                button=['Replace', 'Add', 'Cancel'],
                defaultButton='Replace',
                cancelButton='Cancel'
            )
            if conf == 'Cancel':
                return
            mode = conf
        cmds.undoInfo(openChunk=True)
        try:
            if mode == 'Replace' and top_level_panel3d:
                cmds.delete(top_level_panel3d[0])
                self.cleanup_orphaned_shaders()
            if not cmds.ls("|Panel3D", long=True):
                main_grp = cmds.group(em=True, name=main_grp)
            else:
                main_grp = "|Panel3D"
            newly_created = []
            if not sel and mode == 'Replace':
                btn = self.create_ui_button("Sample", [0,0,0], [2,2,1], QtGui.QColor(120,120,120), main_grp, "SampleObj")
                newly_created.append(btn)
                MGlobal.displayInfo("Control Panel: Created Panel3D with sample button")
            elif sel:
                for obj in sel:
                    if obj.split("|")[-1] == "Panel3D":
                        continue
                    if self.is_extra_controller(obj, sel):
                        MGlobal.displayInfo("Control Panel: Skipping Extra controller: {0} (has selected child)".format(obj))
                        continue
                    pos, scale, rot = self.get_placement_logic(obj)
                    color = self.get_color_from_rig(obj)
                    obj_short = obj.split('|')[-1]
                    btn = self.create_ui_button("", pos, scale, color, main_grp, obj_short, rotation=rot)
                    newly_created.append(btn)
                MGlobal.displayInfo("Control Panel: Created Panel3D with {0} buttons from selection".format(len(newly_created)))
            if newly_created:
                cmds.select(newly_created, replace=True)
        finally:
            cmds.undoInfo(closeChunk=True)

    def is_extra_controller(self, obj, selection):
        obj_short = obj.split("|")[-1].split(":")[-1]
        if "Extra" not in obj_short:
            return False
        children = cmds.listRelatives(obj, children=True, type='transform', fullPath=True) or []
        for child in children:
            if child in selection:
                return True
        return False

    def get_placement_logic(self, obj):
        import re

        shapes = cmds.listRelatives(obj, shapes=True, fullPath=True)
        if shapes:
            real_bb = cmds.exactWorldBoundingBox(shapes[0])
        else:
            real_bb = cmds.exactWorldBoundingBox(obj)

        if real_bb[0] > 1e10 or real_bb[0] < -1e10 or real_bb[3] > 1e10 or real_bb[3] < -1e10:
            pos = cmds.xform(obj, q=True, ws=True, rp=True)
            return pos, [0.5, 0.5, 0.5], [0, 0, 0]

        bb_w = abs(real_bb[3] - real_bb[0])
        bb_h = abs(real_bb[4] - real_bb[1])
        bb_d = abs(real_bb[5] - real_bb[2])
        min_size = 0.5
        if bb_w < 0.001:
            bb_w = min_size
        if bb_h < 0.001:
            bb_h = min_size
        if bb_d < 0.001:
            bb_d = min_size
        w = bb_w
        h = bb_h
        d = bb_d
        pos = cmds.xform(obj, q=True, ws=True, rp=True)
        rotation = [0, 0, 0]
        obj_short = obj.split("|")[-1].split(":")[-1]
        namespace = obj.split("|")[-1].replace(obj_short, "")
        if obj_short.startswith("FK") and not obj_short.startswith("FKIK"):
            thickness_reduction = 0.75
            w = bb_w * thickness_reduction
            h = bb_h * thickness_reduction
            d = bb_d * thickness_reduction
            root_jnt_name = obj_short[2:]
            target_full_name = namespace + root_jnt_name
            if cmds.objExists(target_full_name):
                root_jnt = target_full_name
                base_name = root_jnt_name.replace("_M", "")
                end_joint_name = base_name + "End_M"
                end_joint_full = namespace + end_joint_name
                if cmds.objExists(end_joint_full) and "Slider" not in end_joint_name:
                    found_landmarks = [end_joint_full]
                else:
                    found_landmarks = []
                    branches = cmds.listRelatives(root_jnt, children=True, type="joint", fullPath=True) or []
                    for branch in branches:
                        curr = branch
                        while curr:
                            curr_short = curr.split("|")[-1].split(":")[-1]
                            potential_fk = namespace + "FK" + curr_short
                            if cmds.objExists(potential_fk) and not re.search(r"Part\d+|Extra|Offset|Slider", curr_short):
                                found_landmarks.append(curr)
                                break

                            next_js = cmds.listRelatives(curr, children=True, type="joint", fullPath=True) or []
                            curr = next_js[0] if next_js else None
                    if not found_landmarks:
                        all_child_joints = []
                        def collect_joints(joint):
                            children = cmds.listRelatives(joint, children=True, type="joint") or []
                            for child in children:
                                child_short = child.split("|")[-1].split(":")[-1]
                                if "Slider" not in child_short:
                                    all_child_joints.append(child)
                                collect_joints(child)
                        collect_joints(root_jnt)
                        found_landmarks = all_child_joints
                m_landmarks = [lm for lm in found_landmarks if lm.endswith("_M")]
                side_landmarks = [lm for lm in found_landmarks if any(lm.endswith(s) for s in ["_L", "_R"])]
                final_targets = m_landmarks if (m_landmarks and side_landmarks) else found_landmarks
                if final_targets:
                    all_end_pos = [cmds.xform(lm, q=True, ws=True, rp=True) for lm in final_targets]
                    avg_end_pos = [sum(p[i] for p in all_end_pos) / len(all_end_pos) for i in range(3)]
                    vec = [avg_end_pos[i] - pos[i] for i in range(3)]
                    dist_x, dist_y, dist_z = abs(vec[0]), abs(vec[1]), abs(vec[2])
                    max_axis = max(dist_x, dist_y, dist_z)
                    if max_axis > 0.001:
                        if max_axis == dist_x:
                            w = max(min_size, dist_x * 0.92)
                        elif max_axis == dist_y:
                            h = max(min_size, dist_y * 0.92)
                        else:
                            w = max(min_size, dist_z * 0.92)
                        pos = [(pos[i] + avg_end_pos[i]) / 2 for i in range(3)]
        else:
            center_x = (real_bb[0] + real_bb[3]) / 2
            center_y = (real_bb[1] + real_bb[4]) / 2
            center_z = (real_bb[2] + real_bb[5]) / 2
            pos = [center_x, center_y, center_z]
            w = bb_w
            h = bb_h
            d = bb_d
        return pos, [w, h, d], rotation

    def clean_panel_target(self, target):
        current_namespace = self.option_menu.currentText() if hasattr(self, "option_menu") else ":"
        namespace_prefix = "" if current_namespace in (":", "None", None, "") else current_namespace
        cleaned_targets = []
        for target_part in target.split():
            node_name, separator, attribute = target_part.partition(".")
            node_name = node_name.split("|")[-1]
            if namespace_prefix and node_name.startswith(namespace_prefix):
                node_name = node_name[len(namespace_prefix):]
            cleaned_targets.append(node_name + separator + attribute)
        return " ".join(cleaned_targets)

    def create_ui_button(self, label, pos, scale, color, parent, target, rotation=[0,0,0], custom_name=None, mel_cmd="", opacity=1.0, texture_path=""):
        clean_target = self.clean_panel_target(target)
        safe_name = clean_target.replace(" ", "_").replace(":", "_")
        if custom_name:
            node_name = custom_name
            counter = 1
            original_name = node_name
            while cmds.objExists(node_name):
                node_name = "{0}{1}".format(original_name, counter)
                counter += 1
        else:
            if label:
                base_name = "ui_{0}_{1}".format(label, safe_name)
            else:
                base_name = "ui_btn_{0}".format(safe_name)
            node_name = base_name
            counter = 1
            while cmds.objExists(node_name):
                node_name = "{0}{1}".format(base_name, counter)
                counter += 1
        parent_node = parent
        if parent == "Panel3D":
            top_level = cmds.ls("|Panel3D", long=True)
            if top_level:
                parent_node = top_level[0]
        box = cmds.polyCube(name=node_name, w=1, h=1, d=1.0, ch=False, createUVs=1)[0]
        cmds.parent(box, parent_node)
        cmds.setAttr("{0}.t".format(box), *pos)
        cmds.setAttr("{0}.s".format(box), *scale)
        cmds.setAttr("{0}.r".format(box), *rotation)
        cmds.addAttr(box, ln="panelSelect", dt="string")
        cmds.setAttr("{0}.panelSelect".format(box), clean_target, type="string")
        cmds.addAttr(box, ln="panelLabel", dt="string")
        cmds.setAttr("{0}.panelLabel".format(box), label, type="string")
        cmds.addAttr(box, ln="panelCommand", dt="string")
        cmds.setAttr("{0}.panelCommand".format(box), mel_cmd, type="string")
        shd, sg = self.get_or_create_shader(color, opacity, texture_path)
        shapes = cmds.listRelatives(box, shapes=True, f=True)
        if shapes:
            cmds.sets(shapes[0], edit=True, forceElement=sg)
        return box

    def get_or_create_shader(self, color, opacity=1.0, texture_path=""):
        r, g, b = color.redF(), color.greenF(), color.blueF()
        opacity = max(0.0, min(1.0, opacity))
        r_int = int(r * 255)
        g_int = int(g * 255)
        b_int = int(b * 255)
        opacity_int = int(round(opacity * 100))
        def get_color_name(r, g, b):
            if r > 0.8 and g < 0.3 and b < 0.3:
                return "Red"
            if g > 0.8 and r < 0.3 and b < 0.3:
                return "Green"
            if b > 0.8 and r < 0.3 and g < 0.3:
                return "Blue"
            if r > 0.8 and g > 0.8 and b < 0.3:
                return "Yellow"
            if r < 0.3 and g > 0.5 and b > 0.3:
                return "Teal"
            if r > 0.5 and g > 0.5 and b > 0.5:
                return "LightGray"
            if r < 0.3 and g < 0.3 and b < 0.3:
                return "DarkGray"
            return "RGB_{0}_{1}_{2}".format(r_int, g_int, b_int)
        color_name = get_color_name(r, g, b)
        texture_suffix = "_Tex_{0}".format(abs(hash(texture_path)) % 100000) if texture_path else ""
        shader_name = "ui_shd_{0}_{1}_A{2}{3}".format(color_name, r_int, opacity_int, texture_suffix)
        if cmds.objExists(shader_name):
            sg = "{0}_SG".format(shader_name)
            if cmds.objExists(sg):
                if cmds.attributeQuery("transparency", node=shader_name, exists=True):
                    transparency = 1.0 - opacity
                    cmds.setAttr("{0}.transparency".format(shader_name), transparency, transparency, transparency, type="double3")
                return shader_name, sg
        shd = cmds.shadingNode('lambert', asShader=True, name=shader_name)
        sg = cmds.sets(renderable=True, noSurfaceShader=True, empty=True, name="{0}_SG".format(shader_name))
        cmds.connectAttr("{0}.outColor".format(shd), "{0}.surfaceShader".format(sg), f=True)
        if cmds.attributeQuery("color", node=shd, exists=True):
            cmds.setAttr("{0}.color".format(shd), r, g, b, type="double3")
        if texture_path and os.path.exists(texture_path):
            file_node = cmds.shadingNode('file', asTexture=True, name="{0}_file".format(shader_name))
            cmds.setAttr("{0}.fileTextureName".format(file_node), texture_path, type="string")
            cmds.connectAttr("{0}.outColor".format(file_node), "{0}.color".format(shd), f=True)
        if cmds.attributeQuery("transparency", node=shd, exists=True):
            transparency = 1.0 - opacity
            cmds.setAttr("{0}.transparency".format(shd), transparency, transparency, transparency, type="double3")
        return shd, sg

    def cleanup_orphaned_shaders(self):
        """Clean up unused shaders and file textures created by Control Panel"""
        deleted_count = 0
        deleted_textures = 0
        
        all_bg_shaders = cmds.ls("ui_bg_shd_*", type='lambert')
        for shader in all_bg_shaders:
            sg = "{0}_SG".format(shader)
            if cmds.objExists(sg):
                connections = cmds.listConnections(sg, type='mesh') or []
                if not connections:
                    file_connections = cmds.listConnections("{0}.color".format(shader), source=True, type='file') or []
                    for file_node in file_connections:
                        if cmds.objExists(file_node):
                            place2d = cmds.listConnections("{0}.uvCoord".format(file_node), source=True) or []
                            if place2d:
                                cmds.delete(place2d)
                            cmds.delete(file_node)
                            deleted_textures += 1
                    cmds.delete(shader, sg)
                    deleted_count += 1
        
        all_shaders = cmds.ls("ui_shd_*", type='lambert')
        for shader in all_shaders:
            sg = "{0}_SG".format(shader)
            if cmds.objExists(sg):
                connections = cmds.listConnections(sg, type='mesh') or []
                if not connections:
                    cmds.delete(shader, sg)
                    deleted_count += 1
        
        all_file_nodes = cmds.ls(type='file')
        for file_node in all_file_nodes:
            out_connections = cmds.listConnections(file_node, destination=True) or []
            is_connected_to_cp_shader = False
            for conn in out_connections:
                if conn.startswith("ui_bg_shd_") or conn.startswith("ui_shd_"):
                    is_connected_to_cp_shader = True
                    break
            
            if is_connected_to_cp_shader:
                for shader in out_connections:
                    if shader.startswith("ui_bg_shd_") or shader.startswith("ui_shd_"):
                        sg = "{0}_SG".format(shader)
                        if cmds.objExists(sg):
                            mesh_connections = cmds.listConnections(sg, type='mesh') or []
                            if not mesh_connections:
                                place2d = cmds.listConnections("{0}.uvCoord".format(file_node), source=True) or []
                                if place2d:
                                    cmds.delete(place2d)
                                cmds.delete(file_node)
                                deleted_textures += 1
                                break
        
        if deleted_count > 0 or deleted_textures > 0:
            MGlobal.displayInfo("Control Panel: Cleaned up {0} unused shaders and {1} unused file textures".format(deleted_count, deleted_textures))

    def panel_to_maya(self):
        main_grp = "Panel3D"
        top_level_panel3d = cmds.ls("|Panel3D", long=True)
        if top_level_panel3d:
            result = cmds.confirmDialog(
                title='Panel3D Exists',
                message='Top-level Panel3D group already exists. Replace it?',
                button=['Replace', 'Cancel'],
                defaultButton='Replace',
                cancelButton='Cancel'
            )
            if result == 'Cancel':
                return
        cmds.undoInfo(openChunk=True)
        try:
            if top_level_panel3d:
                cmds.delete(top_level_panel3d[0])
                self.cleanup_orphaned_shaders()
            main_grp = cmds.group(em=True, name=main_grp)
            button_count = 0
            bg_count = 0
            for item in self.scene.items():
                if isinstance(item, PickerItem) and not isinstance(item, (CheckboxWidget, SliderWidget, FloatFieldWidget)):
                    x, y, w, h = item.get_3d_data()
                    clean_label = item.label_text if item.label_text else ""
                    self.create_ui_button(
                        clean_label,
                        [x, y, 0],
                        [w, h, 1.0],
                        item.base_color,
                        main_grp,
                        item.select_str,
                        mel_cmd=item.mel_cmd,
                        opacity=item.opacity_val,
                        texture_path=item.texture_path
                    )
                    button_count += 1
            for item in self.scene.items():
                if isinstance(item, CheckboxWidget):
                    x, y, w, h = item.get_3d_data()
                    box = self.create_ui_button(
                        item.label_text,
                        [x, y, 0],
                        [w, h, 1.0],
                        item.base_color,
                        main_grp,
                        item.select_str
                    )
                    cmds.addAttr(box, ln="widgetType", dt="string")
                    cmds.setAttr("{0}.widgetType".format(box), "checkbox", type="string")
                    cmds.addAttr(box, ln="currentValue", at="bool", dv=item.current_val)
                    button_count += 1
            for item in self.scene.items():
                if isinstance(item, SliderWidget):
                    x, y, w, h = item.get_3d_data()
                    box = self.create_ui_button(
                        item.label_text,
                        [x, y, 0],
                        [w, h, 1.0],
                        item.base_color,
                        main_grp,
                        item.select_str
                    )
                    cmds.addAttr(box, ln="widgetType", dt="string")
                    cmds.setAttr("{0}.widgetType".format(box), "slider", type="string")
                    cmds.addAttr(box, ln="minValue", at="float", dv=item.min_val)
                    cmds.addAttr(box, ln="maxValue", at="float", dv=item.max_val)
                    cmds.addAttr(box, ln="currentValue", at="float", dv=item.current_val)
                    button_count += 1
            for item in self.scene.items():
                if isinstance(item, FloatFieldWidget):
                    x, y, w, h = item.get_3d_data()
                    box = self.create_ui_button(
                        item.label_text,
                        [x, y, 0],
                        [w, h, 1.0],
                        item.base_color,
                        main_grp,
                        item.select_str
                    )
                    cmds.addAttr(box, ln="widgetType", dt="string")
                    cmds.setAttr("{0}.widgetType".format(box), "floatField", type="string")
                    cmds.addAttr(box, ln="currentValue", at="float", dv=item.current_val)
                    button_count += 1
            for item in self.scene.items():
                if isinstance(item, BackgroundRect):
                    x, y, w, h = item.get_3d_data()
                    rect_data = {
                        'x': item.rect_x,
                        'y': item.rect_y,
                        'w': item.rect_w,
                        'h': item.rect_h,
                        'color_r': item.color.redF() if item.color else 0.3,
                        'color_g': item.color.greenF() if item.color else 0.3,
                        'color_b': item.color.blueF() if item.color else 0.4,
                        'opacity': item.opacity_val if hasattr(item, 'opacity_val') else item.opacity(),
                        'label': item.label,
                        'texture_path': item.texture_path if hasattr(item, 'texture_path') else ''
                    }
                    self.create_background_3d(rect_data, main_grp, DISPLAY_MULT)
                    bg_count += 1
            MGlobal.displayInfo("Control Panel: Pushed {0} buttons and {1} backgrounds to 3D scene".format(button_count, bg_count))
        finally:
            cmds.undoInfo(closeChunk=True)

    def maya_to_panel(self, src_override=None):
        if src_override is None or src_override is False or src_override == 0:
            main_grp = "|Panel3D"
            if not cmds.ls(main_grp, long=True):
                MGlobal.displayWarning("Control Panel: No top-level Panel3D (|Panel3D) found in scene to pull from")
                return
        else:
            main_grp = src_override
            if not cmds.objExists(main_grp):
                MGlobal.displayWarning("Control Panel: No {0} found in scene to pull from".format(main_grp))
                return

        items_to_remove = []
        for item in self.scene.items():
            if item != self.view._rubber_band:
                items_to_remove.append(item)
        for item in items_to_remove:
            if isinstance(item, BaseWidget):
                item.cleanup()
            self.scene.removeItem(item)

        ns = self.option_menu.currentText()

        try:
            children = cmds.listRelatives(main_grp, children=True, type='transform', fullPath=False) or []
        except Exception as e:
            MGlobal.displayWarning("Control Panel: Error getting children: {0}".format(e))
            return

        boxes_data = []
        all_widths = []
        all_heights = []

        for obj in children:
            try:
                pos = cmds.getAttr("{0}.t".format(obj))[0]
                scale = cmds.getAttr("{0}.s".format(obj))[0]
                select_str = ""
                if cmds.attributeQuery("panelSelect", node=obj, exists=True):
                    select_str = cmds.getAttr("{0}.panelSelect".format(obj))
            except:
                continue

            is_background = False
            if cmds.attributeQuery("isBackground", node=obj, exists=True):
                try:
                    if cmds.getAttr("{0}.isBackground".format(obj)):
                        is_background = True
                except:
                    pass

            _3d_x = pos[0]
            _3d_y = pos[1]
            _3d_width = abs(scale[0])
            _3d_height = abs(scale[1])

            if _3d_width < 0.1:
                _3d_width = 0.1
            if _3d_height < 0.1:
                _3d_height = 0.1

            if not is_background:
                all_widths.append(_3d_width)
                all_heights.append(_3d_height)

            boxes_data.append({
                'obj': obj,
                'is_background': is_background,
                '_3d_x': _3d_x,
                '_3d_y': _3d_y,
                '_3d_width': _3d_width,
                '_3d_height': _3d_height,
                'select_str': select_str,
            })

        if not boxes_data:
            MGlobal.displayWarning("Control Panel: No children found under {0}".format(main_grp))
            return

        if all_widths:
            avg_width = sum(all_widths) / len(all_widths)
            avg_height = sum(all_heights) / len(all_heights)
        else:
            avg_width = 1.0
            avg_height = 1.0

        TARGET_WIDTH = 100
        multiplier = TARGET_WIDTH / avg_width

        MGlobal.displayInfo("Control Panel: Avg box size {0:.2f} x {1:.2f}, Multiplier {2:.2f}".format(
            avg_width, avg_height, multiplier))

        button_count = 0
        bg_count = 0

        for data in boxes_data:
            obj = data['obj']
            _3d_x = data['_3d_x']
            _3d_y = data['_3d_y']
            _3d_width = data['_3d_width']
            _3d_height = data['_3d_height']
            select_str = data['select_str']

            display_x = (_3d_x * multiplier) - (_3d_width * multiplier) / 2
            display_y = -(_3d_y * multiplier) - (_3d_height * multiplier) / 2
            display_w = _3d_width * multiplier
            display_h = _3d_height * multiplier

            if display_w < 20:
                display_w = 20
            if display_h < 15:
                display_h = 15

            if data['is_background']:
                color, opacity, texture_path = self.get_color_from_background(obj)
                label = ""
                if cmds.attributeQuery("panelLabel", node=obj, exists=True):
                    label = cmds.getAttr("{0}.panelLabel".format(obj))

                bg_rect = BackgroundRect(0, 0, 0, 0, color, opacity, label, select_str, texture_path or "")
                bg_rect.update_from_3d(_3d_x, _3d_y, _3d_width, _3d_height)
                self.scene.addItem(bg_rect)
                bg_count += 1

            elif cmds.attributeQuery("panelSelect", node=obj, exists=True):
                label = ""
                if cmds.attributeQuery("panelLabel", node=obj, exists=True):
                    label = cmds.getAttr("{0}.panelLabel".format(obj))

                color, opacity, texture_path = self.get_appearance_from_ui_button(obj)

                if cmds.attributeQuery("widgetType", node=obj, exists=True):
                    widget_type = cmds.getAttr("{0}.widgetType".format(obj))

                    if widget_type == "slider":
                        min_val = cmds.getAttr("{0}.minValue".format(obj))
                        max_val = cmds.getAttr("{0}.maxValue".format(obj))
                        current_val = cmds.getAttr("{0}.currentValue".format(obj))
                        widget = SliderWidget(
                            select_str, display_x, display_y, display_w, display_h,
                            color, label, ns, min_val, max_val, current_val
                        )
                        widget.update_from_3d(_3d_x, _3d_y, _3d_width, _3d_height)
                        self.scene.addItem(widget)
                        button_count += 1

                    elif widget_type == "checkbox":
                        current_val = cmds.getAttr("{0}.currentValue".format(obj))
                        widget = CheckboxWidget(
                            select_str, display_x, display_y, display_w, display_h,
                            color, label, ns, current_val
                        )
                        widget.update_from_3d(_3d_x, _3d_y, _3d_width, _3d_height)
                        self.scene.addItem(widget)
                        button_count += 1

                    elif widget_type == "floatField":
                        current_val = cmds.getAttr("{0}.currentValue".format(obj))
                        widget = FloatFieldWidget(
                            select_str, display_x, display_y, display_w, display_h,
                            color, label, ns, -1e10, 1e10, current_val
                        )
                        widget.update_from_3d(_3d_x, _3d_y, _3d_width, _3d_height)
                        self.scene.addItem(widget)
                        button_count += 1

                    else:
                        mel_cmd = ""
                        if cmds.attributeQuery("panelCommand", node=obj, exists=True):
                            mel_cmd = cmds.getAttr("{0}.panelCommand".format(obj))
                        item = PickerItem(
                            select_str, display_x, display_y, display_w, display_h,
                            color, label=label, mel_cmd=mel_cmd, namespace=ns, opacity=opacity, texture_path=texture_path
                        )
                        item.update_from_3d(_3d_x, _3d_y, _3d_width, _3d_height)
                        self.scene.addItem(item)
                        button_count += 1
                else:
                    mel_cmd = ""
                    if cmds.attributeQuery("panelCommand", node=obj, exists=True):
                        mel_cmd = cmds.getAttr("{0}.panelCommand".format(obj))
                    item = PickerItem(
                        select_str, display_x, display_y, display_w, display_h,
                        color, label=label, mel_cmd=mel_cmd, namespace=ns, opacity=opacity, texture_path=texture_path
                    )
                    item.update_from_3d(_3d_x, _3d_y, _3d_width, _3d_height)
                    self.scene.addItem(item)
                    button_count += 1

        QtCore.QTimer.singleShot(50, self.frame_all)
        MGlobal.displayInfo("Control Panel: Pulled {0} buttons and {1} backgrounds from 3D scene".format(button_count, bg_count))

    def add_background_container(self, name, x, y, w, h, color, opacity=0.2):
        bg_rect = BackgroundRect(x, y, w, h, color, opacity, name)
        self.scene.addItem(bg_rect)
        return bg_rect

    def panel3d_mirror(self):
        main_grp = "Panel3D"
        if not cmds.ls("|Panel3D", long=True):
            MGlobal.displayWarning("Control Panel: No top-level Panel3D found to mirror")
            return

        current_selection = cmds.ls(selection=True)

        all_buttons = cmds.listRelatives(main_grp, children=True, type='transform') or []
        select_to_buttons = {}
        for btn in all_buttons:
            if cmds.attributeQuery("panelSelect", node=btn, exists=True):
                sel_str = cmds.getAttr("{0}.panelSelect".format(btn))
                select_to_buttons.setdefault(sel_str, []).append(btn)

        if current_selection:
            sources_to_mirror = []
            for btn in current_selection:
                if cmds.attributeQuery("panelSelect", node=btn, exists=True):
                    sel_str = cmds.getAttr("{0}.panelSelect".format(btn))
                    if sel_str.endswith("_R"):
                        sources_to_mirror.append(btn)
            MGlobal.displayInfo("Control Panel: Mirroring from {0} selected button(s)".format(len(sources_to_mirror)))
        else:
            sources_to_mirror = [
                btn
                for sel_str, buttons in select_to_buttons.items()
                if sel_str.endswith("_R")
                for btn in buttons
            ]
            MGlobal.displayInfo("Control Panel: No selection - mirroring all {0} button(s)".format(len(sources_to_mirror)))

        cmds.undoInfo(openChunk=True)
        try:
            def mirror_side(name):
                if name.endswith("_R"):
                    return name[:-2] + "_L"
                return name

            def mirror_selection_string(sel_str):
                if not sel_str:
                    return sel_str
                parts = sel_str.split()
                mirrored_parts = [mirror_side(p) for p in parts]
                return " ".join(mirrored_parts)

            mirrored_count = 0
            skipped_count = 0

            destination_selections = {
                mirror_selection_string(cmds.getAttr("{0}.panelSelect".format(src_btn)))
                for src_btn in sources_to_mirror
            }
            for dst_sel in destination_selections:
                destination_buttons = select_to_buttons.get(dst_sel, [])
                if destination_buttons:
                    cmds.delete(destination_buttons)
                select_to_buttons[dst_sel] = []

            for src_btn in sources_to_mirror:
                src_sel = cmds.getAttr("{0}.panelSelect".format(src_btn))
                dst_sel = mirror_selection_string(src_sel)
                src_t = cmds.getAttr("{0}.t".format(src_btn))[0]
                src_s = cmds.getAttr("{0}.s".format(src_btn))[0]
                src_label = cmds.getAttr("{0}.panelLabel".format(src_btn)) or ""
                src_cmd = ""
                if cmds.attributeQuery("canvasCommand", node=src_btn, exists=True):
                    src_cmd = cmds.getAttr("{0}.canvasCommand".format(src_btn)) or ""
                target_label = src_label.replace("_R", "_L") if "_R" in src_label else src_label
                target_t = (-src_t[0], src_t[1], src_t[2])
                source_name = src_btn.split("|")[-1]
                mirrored_name = source_name.replace("_R", "_L")
                new_btn = cmds.polyCube(name=mirrored_name, w=1, h=1, d=1.0)[0]
                cmds.parent(new_btn, main_grp)
                cmds.setAttr("{0}.t".format(new_btn), *target_t)
                cmds.setAttr("{0}.s".format(new_btn), *src_s)
                cmds.addAttr(new_btn, ln="panelSelect", dt="string")
                cmds.setAttr("{0}.panelSelect".format(new_btn), dst_sel, type="string")
                cmds.addAttr(new_btn, ln="panelLabel", dt="string")
                cmds.setAttr("{0}.panelLabel".format(new_btn), target_label, type="string")
                if src_cmd:
                    cmds.addAttr(new_btn, ln="canvasCommand", dt="string")
                    cmds.setAttr("{0}.canvasCommand".format(new_btn), mirror_selection_string(src_cmd), type="string")
                shapes = cmds.listRelatives(src_btn, s=True)
                if shapes:
                    sgs = cmds.listConnections(shapes[0], type='shadingEngine')
                    if sgs:
                        new_shapes = cmds.listRelatives(new_btn, s=True)
                        if new_shapes:
                            cmds.sets(new_shapes[0], edit=True, forceElement=sgs[0])
                mirrored_count += 1

            if current_selection:
                cmds.select(current_selection, replace=True)
            else:
                cmds.select(clear=True)

            MGlobal.displayInfo("Control Panel: Mirror complete - created {0} buttons, skipped {1}".format(mirrored_count, skipped_count))
        finally:
            cmds.undoInfo(closeChunk=True)

    def panel3d_arrange(self, restore_selection=True):
        main_grp = "|Panel3D"
        if not cmds.ls(main_grp, long=True):
            MGlobal.displayWarning("Control Panel: No top-level Panel3D found to arrange")
            return
        children = cmds.listRelatives(main_grp, children=True, type='transform', fullPath=True) or []
        if not children:
            MGlobal.displayWarning("Control Panel: No children under {0} to arrange".format(main_grp))
            return
        selection = cmds.ls(selection=True, long=True) if restore_selection else []
        all_controllers = set()
        temp_boxes = []
        for obj in children:
            if cmds.attributeQuery("isBackground", node=obj, exists=True):
                try:
                    if cmds.getAttr("{0}.isBackground".format(obj)):
                        continue
                except:
                    pass
            if not cmds.attributeQuery("panelSelect", node=obj, exists=True):
                continue
            try:
                target = cmds.getAttr("{0}.panelSelect".format(obj)) or ""
                pos = cmds.getAttr("{0}.t".format(obj))[0]
                scale = cmds.getAttr("{0}.s".format(obj))[0]
            except:
                continue
            if target:
                all_controllers.add(target)
            half_w = max(abs(scale[0]) * 0.5, 0.05)
            half_h = max(abs(scale[1]) * 0.5, 0.05)
            node_name = obj.split("|")[-1]
            box_data = {
                "node": obj,
                "x": pos[0],
                "y": pos[1],
                "half_w": half_w,
                "half_h": half_h,
                "target": target,
                "node_name": node_name,
                "is_fk": target.startswith("FK"),
                "is_fk_m": target.startswith("FK") and target.endswith("_M"),
                "tx_zero": (abs(pos[0]) < 0.001),
                "is_selected": obj in selection,
            }
            temp_boxes.append(box_data)
        for box in temp_boxes:
            target = box["target"]
            is_r_controller = target.endswith("_R")
            sibling_name = None
            has_sibling = False
            if is_r_controller:
                base_name = target[:-2]
                sibling_name = base_name + "_L"
                has_sibling = sibling_name in all_controllers
            box["is_r_controller"] = is_r_controller
            box["sibling_name"] = sibling_name
            box["has_sibling"] = has_sibling
        all_boxes = []
        ignored_boxes = []
        for box in temp_boxes:
            if box["target"].endswith("_L"):
                ignored_boxes.append(box)
            else:
                all_boxes.append(box)
        if ignored_boxes:
            MGlobal.displayInfo("Control Panel: Ignoring {0} _L controller box(es)".format(len(ignored_boxes)))
        if not all_boxes:
            MGlobal.displayWarning("Control Panel: No button-boxes found under {0}".format(main_grp))
            return
        avg_box_width = sum([b["half_w"]*2 for b in all_boxes]) / len(all_boxes) if all_boxes else 1.0
        padding = avg_box_width * 0.05
        MGlobal.displayInfo("Control Panel: Average box width: {0:.3f}, Padding: {1:.3f}".format(avg_box_width, padding))
        selected_boxes = [b for b in all_boxes if b["is_selected"]]
        if selected_boxes:
            boxes_to_arrange = selected_boxes
            MGlobal.displayInfo("Control Panel: Arranging {0} selected button-box(es)".format(len(selected_boxes)))
            boxes_to_keep = [b for b in all_boxes if not b["is_selected"]]
        else:
            boxes_to_arrange = all_boxes
            boxes_to_keep = []
            MGlobal.displayInfo("Control Panel: No selection - arranging all {0} button-box(es)".format(len(all_boxes)))
        def sort_priority(box):
            if box["is_fk_m"] and box["tx_zero"]:
                return 0
            elif box["is_fk_m"]:
                return 1
            elif box["is_fk"]:
                return 2
            else:
                return 3
        boxes_to_arrange.sort(key=sort_priority)
        placed_boxes = list(boxes_to_keep)
        margin = 0.0
        move_count = 0
        no_move_count = 0
        def check_overlap(box, x, y, placed_list):
            for p in placed_list:
                x_overlap = abs(x - p["x"]) < (box["half_w"] + p["half_w"] + margin)
                y_overlap = abs(y - p["y"]) < (box["half_h"] + p["half_h"] + margin)
                if x_overlap and y_overlap:
                    overlap_x = (box["half_w"] + p["half_w"] + margin) - abs(x - p["x"])
                    overlap_y = (box["half_h"] + p["half_h"] + margin) - abs(y - p["y"])
                    return True, p, overlap_x, overlap_y
            return False, None, 0, 0
        def check_all_overlaps(box, x, y, placed_list):
            overlaps = []
            for p in placed_list:
                x_overlap = abs(x - p["x"]) < (box["half_w"] + p["half_w"] + margin)
                y_overlap = abs(y - p["y"]) < (box["half_h"] + p["half_h"] + margin)
                if x_overlap and y_overlap:
                    overlap_x = (box["half_w"] + p["half_w"] + margin) - abs(x - p["x"])
                    overlap_y = (box["half_h"] + p["half_h"] + margin) - abs(y - p["y"])
                    overlaps.append((p, overlap_x, overlap_y))
            return len(overlaps) > 0, overlaps
        def get_center_boundary_position(box, current_x):
            if box["is_r_controller"] and box["has_sibling"]:
                right_edge = current_x + box["half_w"]
                if right_edge > 0:
                    corrected_x = -box["half_w"] - margin
                    return corrected_x
            return current_x
        def find_free_position(box, original_x, original_y, placed_list):
            min_allowed_x = get_center_boundary_position(box, original_x)
            test_x = min_allowed_x
            test_y = original_y
            overlaps, overlap_boxes = check_all_overlaps(box, test_x, test_y, placed_list)
            if not overlaps:
                return test_x, test_y, False, 0, 0, None
            max_overlap_x = max([overlap_x for (_, overlap_x, _) in overlap_boxes]) if overlap_boxes else 0
            max_overlap_y = max([overlap_y for (_, _, overlap_y) in overlap_boxes]) if overlap_boxes else 0
            min_x_move = max_overlap_x + padding
            min_y_move = max_overlap_y + padding
            best_horizontal = None
            best_horizontal_dist = None
            best_vertical = None
            best_vertical_dist = None
            for mult in range(1, 20):
                dist = min_x_move * mult
                nx = test_x - dist
                ny = test_y
                nx = get_center_boundary_position(box, nx)
                overlaps, _ = check_all_overlaps(box, nx, ny, placed_list)
                if not overlaps:
                    best_horizontal = (nx, ny)
                    best_horizontal_dist = dist
                    break
            if not (box["is_r_controller"] and box["has_sibling"]):
                for mult in range(1, 20):
                    dist = min_x_move * mult
                    nx = test_x + dist
                    ny = test_y
                    nx = get_center_boundary_position(box, nx)
                    overlaps, _ = check_all_overlaps(box, nx, ny, placed_list)
                    if not overlaps:
                        if best_horizontal_dist is None or dist < best_horizontal_dist:
                            best_horizontal = (nx, ny)
                            best_horizontal_dist = dist
                        break
            for mult in range(1, 20):
                dist = min_y_move * mult
                nx = test_x
                ny = test_y + dist
                nx = get_center_boundary_position(box, nx)
                overlaps, _ = check_all_overlaps(box, nx, ny, placed_list)
                if not overlaps:
                    best_vertical = (nx, ny)
                    best_vertical_dist = dist
                    break
            for mult in range(1, 20):
                dist = min_y_move * mult
                nx = test_x
                ny = test_y - dist
                nx = get_center_boundary_position(box, nx)
                overlaps, _ = check_all_overlaps(box, nx, ny, placed_list)
                if not overlaps:
                    if best_vertical_dist is None or dist < best_vertical_dist:
                        best_vertical = (nx, ny)
                        best_vertical_dist = dist
                    break
            if best_horizontal is not None and best_vertical is not None:
                if best_horizontal_dist < best_vertical_dist:
                    return best_horizontal[0], best_horizontal[1], True, best_horizontal_dist, 0, "horizontal"
                elif best_vertical_dist < best_horizontal_dist:
                    return best_vertical[0], best_vertical[1], True, 0, best_vertical_dist, "vertical"
                else:
                    return best_horizontal[0], best_horizontal[1], True, best_horizontal_dist, 0, "horizontal"
            elif best_horizontal is not None:
                return best_horizontal[0], best_horizontal[1], True, best_horizontal_dist, 0, "horizontal"
            elif best_vertical is not None:
                return best_vertical[0], best_vertical[1], True, 0, best_vertical_dist, "vertical"
            fallback_x = get_center_boundary_position(box, test_x - 2.0)
            return fallback_x, test_y, True, 2.0, 0, "fallback"
        cmds.undoInfo(openChunk=True, chunkName="Arrange Panel3D")
        try:
            for box in boxes_to_arrange:
                original_x = box["x"]
                original_y = box["y"]
                if box["is_fk_m"] and box["tx_zero"]:
                    new_x, new_y = original_x, original_y
                else:
                    new_x, new_y, moved, dist_x, dist_y, direction = find_free_position(box, original_x, original_y, placed_boxes)
                    if moved:
                        move_count += 1
                    else:
                        no_move_count += 1
                if abs(new_x - box["x"]) > 0.001 or abs(new_y - box["y"]) > 0.001:
                    cmds.setAttr("{0}.tx".format(box["node"]), new_x)
                    cmds.setAttr("{0}.ty".format(box["node"]), new_y)
                box["x"] = new_x
                box["y"] = new_y
                placed_boxes.append(box)
            all_buttons = cmds.listRelatives(main_grp, children=True, type='transform') or []
            select_to_buttons = {}
            for btn in all_buttons:
                if cmds.attributeQuery("panelSelect", node=btn, exists=True):
                    sel_str = cmds.getAttr("{0}.panelSelect".format(btn))
                    select_to_buttons.setdefault(sel_str, []).append(btn)
            if restore_selection and selection:
                sources_to_mirror = []
                for btn in selection:
                    if cmds.attributeQuery("panelSelect", node=btn, exists=True):
                        sel_str = cmds.getAttr("{0}.panelSelect".format(btn))
                        if sel_str.endswith("_R"):
                            sources_to_mirror.append(btn)
            else:
                sources_to_mirror = [
                    btn
                    for sel_str, buttons in select_to_buttons.items()
                    if sel_str.endswith("_R")
                    for btn in buttons
                ]
            def mirror_side(name):
                if name.endswith("_R"):
                    return name[:-2] + "_L"
                return name
            def mirror_selection_string(sel_str):
                if not sel_str:
                    return sel_str
                parts = sel_str.split()
                mirrored_parts = [mirror_side(p) for p in parts]
                return " ".join(mirrored_parts)
            destination_selections = {
                mirror_selection_string(cmds.getAttr("{0}.panelSelect".format(src_btn)))
                for src_btn in sources_to_mirror
            }
            for dst_sel in destination_selections:
                destination_buttons = select_to_buttons.get(dst_sel, [])
                if destination_buttons:
                    cmds.delete(destination_buttons)
                select_to_buttons[dst_sel] = []
            for src_btn in sources_to_mirror:
                src_sel = cmds.getAttr("{0}.panelSelect".format(src_btn))
                dst_sel = mirror_selection_string(src_sel)
                src_t = cmds.getAttr("{0}.t".format(src_btn))[0]
                src_s = cmds.getAttr("{0}.s".format(src_btn))[0]
                src_label = cmds.getAttr("{0}.panelLabel".format(src_btn)) or ""
                src_cmd = ""
                if cmds.attributeQuery("canvasCommand", node=src_btn, exists=True):
                    src_cmd = cmds.getAttr("{0}.canvasCommand".format(src_btn)) or ""
                target_label = src_label.replace("_R", "_L") if "_R" in src_label else src_label
                target_t = (-src_t[0], src_t[1], src_t[2])
                source_name = src_btn.split("|")[-1]
                mirrored_name = source_name.replace("_R", "_L")
                new_btn = cmds.polyCube(name=mirrored_name, w=1, h=1, d=1.0)[0]
                cmds.parent(new_btn, main_grp)
                cmds.setAttr("{0}.t".format(new_btn), *target_t)
                cmds.setAttr("{0}.s".format(new_btn), *src_s)
                cmds.addAttr(new_btn, ln="panelSelect", dt="string")
                cmds.setAttr("{0}.panelSelect".format(new_btn), dst_sel, type="string")
                cmds.addAttr(new_btn, ln="panelLabel", dt="string")
                cmds.setAttr("{0}.panelLabel".format(new_btn), target_label, type="string")
                if src_cmd:
                    cmds.addAttr(new_btn, ln="canvasCommand", dt="string")
                    cmds.setAttr("{0}.canvasCommand".format(new_btn), mirror_selection_string(src_cmd), type="string")
                shapes = cmds.listRelatives(src_btn, s=True)
                if shapes:
                    sgs = cmds.listConnections(shapes[0], type='shadingEngine')
                    if sgs:
                        new_shapes = cmds.listRelatives(new_btn, s=True)
                        if new_shapes:
                            cmds.sets(new_shapes[0], edit=True, forceElement=sgs[0])
            if restore_selection and selection:
                cmds.select(selection, replace=True)
            else:
                cmds.select(clear=True)
            MGlobal.displayInfo("Control Panel: Arrange complete - Moved: {0}, Unchanged: {1}".format(move_count, no_move_count))
        finally:
            cmds.undoInfo(closeChunk=True)

    def panel3d_delete(self):
        cmds.undoInfo(openChunk=True)
        try:
            top_level = cmds.ls("|Panel3D", long=True)
            if top_level:
                cmds.delete(top_level[0])
                self.cleanup_orphaned_shaders()
                MGlobal.displayInfo("Control Panel: Deleted top-level Panel3D from scene and cleaned up unused shaders")
            else:
                MGlobal.displayWarning("Control Panel: No top-level Panel3D found to delete")
        finally:
            cmds.undoInfo(closeChunk=True)

    def clear_all_widgets(self):
        items_to_remove = []
        for item in self.scene.items():
            if item != self.view._rubber_band:
                items_to_remove.append(item)
        for item in items_to_remove:
            if isinstance(item, BaseWidget):
                item.cleanup()
            self.scene.removeItem(item)
        MGlobal.displayInfo("Control Panel: Cleared {0} widgets".format(len(items_to_remove)))

    def load_layout_file(self, path):
        if not os.path.exists(path):
            return
        current_selection = cmds.ls(selection=True) or []
        self.clear_all_widgets()
        current_ns = self.option_menu.currentText()
        if not self.view._rubber_band.scene():
            self.scene.addItem(self.view._rubber_band)
        try:
            cmds.file(path, reference=True, namespace="TMP_REF", options="v=0")
            mult = 20.0
            if cmds.objExists("TMP_REF:Panel3D"):
                if cmds.attributeQuery("multiplier", n="TMP_REF:Panel3D", ex=True):
                    mult = cmds.getAttr("TMP_REF:Panel3D.multiplier")
                    if mult > 100.0:
                        mult = 100.0
                    if mult < 1.0:
                        mult = 1.0
            all_nodes = cmds.ls("TMP_REF:*", type='transform')
            for n in all_nodes:
                maya_w = cmds.getAttr("{0}.sx".format(n))
                maya_h = cmds.getAttr("{0}.sy".format(n))
                maya_tx = cmds.getAttr("{0}.tx".format(n))
                maya_ty = cmds.getAttr("{0}.ty".format(n))

                true_3d_x = maya_tx
                true_3d_y = maya_ty
                true_3d_width = maya_w
                true_3d_height = maya_h

                w = maya_w * mult
                h = maya_h * mult
                tx = maya_tx * mult
                ty = maya_ty * mult

                if cmds.attributeQuery("isBackground", node=n, exists=True) and cmds.getAttr("{0}.isBackground".format(n)):
                    label = ""
                    if cmds.attributeQuery("panelLabel", node=n, exists=True):
                        label = cmds.getAttr("{0}.panelLabel".format(n))
                    select_str = ""
                    if cmds.attributeQuery("panelSelect", node=n, exists=True):
                        select_str = cmds.getAttr("{0}.panelSelect".format(n))
                    color, opacity, texture_path = self.get_color_from_background(n)
                    bg_rect = BackgroundRect(
                        tx - (w/2),
                        -ty - (h/2),
                        w, h,
                        color,
                        opacity,
                        label,
                        select_str,
                        texture_path if texture_path else ""
                    )
                    bg_rect._3d_x = true_3d_x
                    bg_rect._3d_y = true_3d_y
                    bg_rect._3d_width = true_3d_width
                    bg_rect._3d_height = true_3d_height
                    self.scene.addItem(bg_rect)
                elif cmds.attributeQuery("panelSelect", node=n, exists=True):
                    label = ""
                    if cmds.attributeQuery("panelLabel", node=n, exists=True):
                        label = cmds.getAttr("{0}.panelLabel".format(n))
                    select_str = cmds.getAttr("{0}.panelSelect".format(n))
                    mel_cmd = ""
                    if cmds.attributeQuery("panelCommand", node=n, exists=True):
                        mel_cmd = cmds.getAttr("{0}.panelCommand".format(n))

                    color, opacity, texture_path = self.get_appearance_from_ui_button(n)
                    item = PickerItem(
                        select_str,
                        tx - (w/2), -ty - (h/2), w, h,
                        color,
                        label=label,
                        mel_cmd=mel_cmd,
                        namespace=current_ns,
                        opacity=opacity,
                        texture_path=texture_path
                    )
                    item._3d_x = true_3d_x
                    item._3d_y = true_3d_y
                    item._3d_width = true_3d_width
                    item._3d_height = true_3d_height
                    self.scene.addItem(item)
        finally:
            cmds.file(path, removeReference=True)
            if cmds.namespace(exists="TMP_REF"):
                cmds.namespace(removeNamespace="TMP_REF", deleteNamespaceContent=True)

        QtCore.QTimer.singleShot(50, lambda: cmds.select(current_selection, replace=True) if current_selection else cmds.select(clear=True))
        QtCore.QTimer.singleShot(50, self.frame_logic)
        MGlobal.displayInfo("Control Panel: Loaded layout from {0}".format(os.path.basename(path)))

    def export_layout(self):
        result = cmds.confirmDialog(
            title='Export Panel3D',
            message='Export current Panel3D boxes to a file?',
            button=['Export', 'Cancel'],
            defaultButton='Export',
            cancelButton='Cancel'
        )
        if result == 'Cancel':
            return

        if not cmds.objExists("Panel3D"):
            result = cmds.confirmDialog(
                title='Panel3D Not Found',
                message='Panel3D does not exist. Push to 3D first?',
                button=['Push to 3D', 'Cancel'],
                defaultButton='Push to 3D',
                cancelButton='Cancel'
            )
            if result == 'Push to 3D':
                self.panel_to_maya()
            else:
                return
        cmds.select("Panel3D", hierarchy=True, add=True)
        script_dir = os.path.dirname(os.path.realpath(__file__))
        default_dir = os.path.join(script_dir, "panelFiles", "scenes")
        if not os.path.exists(default_dir):
            os.makedirs(default_dir)
        file_path = cmds.fileDialog2(
            fileMode=0,
            caption="Export Panel3D",
            fileFilter="Maya ASCII (*.ma);;Maya Binary (*.mb)",
            startingDirectory=default_dir,
            okCaption="Export",
            cancelCaption="Cancel"
        )
        if file_path:
            cmds.file(file_path[0], exportSelected=True, type="mayaAscii", force=True)
            MGlobal.displayInfo("Control Panel: Exported Panel3D to {0}".format(os.path.basename(file_path[0])))
        cmds.select(clear=True)

    def update_visuals(self):
        for i in self.scene.items():
            if isinstance(i, PickerItem):
                i.update()

    def readSettings(self):
        s = QtCore.QSettings("AdvancedSkeleton", "AS_Panel")
        geo = s.value("geometry")
        if geo:
            self.restoreGeometry(geo)

    def writeSettings(self):
        s = QtCore.QSettings("AdvancedSkeleton", "AS_Panel")
        s.setValue("geometry", self.saveGeometry())

    def closeEvent(self, event):
        self.writeSettings()
        self._timer.stop()
        for d in self.duplicates:
            try:
                d.close()
            except:
                pass
        all_jobs = cmds.scriptJob(listJobs=True)
        for job in all_jobs:
            if "ControlPanelAttrJob" in job:
                job_id = int(job.split(':')[0])
                cmds.scriptJob(kill=job_id, force=True)
                break
        try:
            self.option_menu.removeEventFilter(self)
        except:
            pass
        for item in self.scene.items():
            if isinstance(item, BaseWidget):
                item.cleanup()
        self.hide()
        event.accept()

    def showEvent(self, event):
        self._timer.start(150)
        self.option_menu.installEventFilter(self)
        for item in self.scene.items():
            if isinstance(item, BaseWidget):
                item.activate()
        self._update_dock_menu_text()
        super(ControlPanel, self).showEvent(event)

    def _update_dock_menu_text(self):
        if hasattr(self, '_dock_action'):
            try:
                workspace_name = self.objectName() + "WorkspaceControl"
                if cmds.workspaceControl(workspace_name, exists=True):
                    self._dock_action.setText("Undock Panel")
                else:
                    self._dock_action.setText("Dock Panel")
            except:
                pass

    def keyPressEvent(self, event):
        if event.key() == QtCore.Qt.Key_F:
            self.frame_logic()
            event.accept()
        else:
            super().keyPressEvent(event)

    def embed_panel(self):
        result = cmds.confirmDialog(
            title='Embed Control Panel',
            message='This will embed the current Control Panel into the Maya file.\n\nThe panel will appear automatically when the file is opened, and can be toggled using Main.panel attribute.\n\nProceed?',
            button=['Embed', 'Cancel'],
            defaultButton='Embed',
            cancelButton='Cancel'
        )
        if result != 'Embed':
            return
        config = self.serialize_widgets()
        mel_script = self.generate_embedded_mel_script(config)
        script_node = "ControlPanelEmbedded"
        if cmds.objExists(script_node):
            cmds.delete(script_node)
        cmds.scriptNode(name=script_node, beforeScript=mel_script, scriptType=1)
        if not cmds.objExists("Main"):
            main_node = cmds.group(em=True, name="Main")
            cmds.setAttr("Main.v", lock=True, keyable=False)
            all_attrs = cmds.listAttr("Main", keyable=True) or []
            for attr in all_attrs:
                cmds.setAttr("Main.{0}".format(attr), keyable=False)
            MGlobal.displayInfo("Control Panel: Created Main node with only panel attribute keyable")
        if not cmds.attributeQuery("panel", node="Main", exists=True):
            cmds.addAttr("Main", ln="panel", at="bool", dv=1, k=True)
            MGlobal.displayInfo("Control Panel: Added panel attribute to Main")
        import __main__
        def panel_attr_changed():
            import maya.cmds as cmds
            if cmds.objExists("Main.panel"):
                val = cmds.getAttr("Main.panel")
                if val:
                    if cmds.objExists("ControlPanelEmbedded"):
                        cmds.scriptNode("ControlPanelEmbedded", executeBefore=True)
                else:
                    if cmds.window("AS_Panel_Embedded", exists=True):
                        cmds.deleteUI("AS_Panel_Embedded")
        __main__.panel_attr_changed = panel_attr_changed
        all_jobs = cmds.scriptJob(listJobs=True)
        for job in all_jobs:
            if "panel_attr_changed" in str(job):
                try:
                    job_id = int(job.split(":")[0])
                    cmds.scriptJob(kill=job_id, force=True)
                except:
                    pass
        cmds.scriptJob(
            attributeChange=["Main.panel", "panel_attr_changed()"],
            killWithScene=False
        )
        MGlobal.displayInfo("Control Panel: Embedded panel saved to ScriptNode: {0}".format(script_node))
        cmds.scriptNode(script_node, executeBefore=True)
        MGlobal.displayInfo("Control Panel: Embedded panel opened successfully")

    def serialize_widgets(self):
        widgets = []
        for item in self.scene.items():
            if isinstance(item, PickerItem):
                widgets.append({
                    'type': 'button',
                    'select_str': item.select_str,
                    'x': item.x(),
                    'y': item.y(),
                    'w': item.rect().width(),
                    'h': item.rect().height(),
                    'color_r': item.base_color.red(),
                    'color_g': item.base_color.green(),
                    'color_b': item.base_color.blue(),
                    'label': item.label_text,
                    'mel_cmd': item.mel_cmd if item.mel_cmd else "",
                    'is_label_only': item.is_label_only,
                    'opacity': item.opacity_val,
                    'texture_path': item.texture_path
                })
            elif isinstance(item, CheckboxWidget):
                widgets.append({
                    'type': 'checkbox',
                    'select_str': item.select_str,
                    'x': item.x(),
                    'y': item.y(),
                    'w': item.rect().width(),
                    'h': item.rect().height(),
                    'color_r': item.base_color.red(),
                    'color_g': item.base_color.green(),
                    'color_b': item.base_color.blue(),
                    'label': item.label_text,
                    'current_val': item.current_val
                })
            elif isinstance(item, SliderWidget):
                widgets.append({
                    'type': 'slider',
                    'select_str': item.select_str,
                    'x': item.x(),
                    'y': item.y(),
                    'w': item.rect().width(),
                    'h': item.rect().height(),
                    'color_r': item.base_color.red(),
                    'color_g': item.base_color.green(),
                    'color_b': item.base_color.blue(),
                    'label': item.label_text,
                    'min_val': item.min_val,
                    'max_val': item.max_val,
                    'current_val': item.current_val
                })
            elif isinstance(item, FloatFieldWidget):
                widgets.append({
                    'type': 'floatField',
                    'select_str': item.select_str,
                    'x': item.x(),
                    'y': item.y(),
                    'w': item.rect().width(),
                    'h': item.rect().height(),
                    'color_r': item.base_color.red(),
                    'color_g': item.base_color.green(),
                    'color_b': item.base_color.blue(),
                    'label': item.label_text,
                    'min_val': item.min_val,
                    'max_val': item.max_val,
                    'current_val': item.current_val
                })
            elif isinstance(item, BackgroundRect):
                bg_color = item.color if item.color is not None else QtGui.QColor(80, 80, 90)
                widgets.append({
                    'type': 'background',
                    'x': item.rect_x,
                    'y': item.rect_y,
                    'w': item.rect_w,
                    'h': item.rect_h,
                    'color_r': bg_color.red(),
                    'color_g': bg_color.green(),
                    'color_b': bg_color.blue(),
                    'opacity': item.opacity_val if hasattr(item, 'opacity_val') else item.opacity(),
                    'label': item.label,
                    'select_str': item.select_str if item.select_str else "",
                    'texture_path': item.texture_path if hasattr(item, 'texture_path') else ""
                })

        import json
        config_str = json.dumps(widgets, indent=2, default=str)
        return config_str

    def auto_build(self):
        current_selection = cmds.ls(selection=True, long=True)
        if not current_selection:
            MGlobal.displayWarning("Control Panel: No controllers selected. Please select controllers first.")
            return
        cmds.undoInfo(openChunk=True, chunkName="Auto Build Panel")
        try:
            MGlobal.displayInfo("Control Panel: Auto-Build started for {0} controller(s)".format(len(current_selection)))
            self.panel3d_new()
            new_boxes = cmds.ls(selection=True, long=True)
            if not new_boxes:
                MGlobal.displayWarning("Control Panel: Auto-Build failed - no boxes created")
                return
            cmds.select(new_boxes, replace=True)
            self.panel3d_arrange(restore_selection=False)
            self.maya_to_panel()
            self.panel3d_delete()
            MGlobal.displayInfo("Control Panel: Auto-Build completed successfully")
        finally:
            cmds.undoInfo(closeChunk=True)

    def generate_embedded_mel_script(self, config):
        import json
        import maya.mel as mel
        version = mel.eval('asGetASToolsProceduresVersionAsString')
        config_str = json.dumps(config)
        default_ns = self.option_menu.currentText() if hasattr(self, 'option_menu') else ":"
        current_file = os.path.abspath(__file__)
        with open(current_file, 'r') as f:
            source = f.read()
        start_marker = "# --- EMBED START: Core Classes ---"
        end_marker = "# --- EMBED END: Core Classes ---"
        start_idx = source.find(start_marker)
        end_idx = source.find(end_marker)
        if start_idx == -1 or end_idx == -1:
            raise Exception("Could not find embed markers in panel.py")
        core_classes = source[start_idx + len(start_marker):end_idx]
        python_code = '''import maya.cmds as cmds
import maya.mel as mel
import maya.OpenMayaUI as omui
from maya.api.OpenMaya import MGlobal

try:
    from PySide2 import QtWidgets, QtCore, QtGui
    import shiboken2 as shiboken
except:
    from PySide6 import QtWidgets, QtCore, QtGui
    import shiboken6 as shiboken

from maya.app.general.mayaMixin import MayaQWidgetDockableMixin

DISPLAY_MULT = 20.0

_checkbox_registry = {}
_slider_registry = {}
_floatfield_registry = {}

CORE_CLASSES_PLACEHOLDER

CONFIG_DATA = CONFIG_PLACEHOLDER

DEFAULT_NAMESPACE = "DEFAULT_NS_PLACEHOLDER"

def _detect_panel_namespace():
    nodes = cmds.ls("*:ControlPanelEmbedded", "ControlPanelEmbedded", type="script") or []
    for node in nodes:
        if ":" in node:
            return node.rsplit(":", 1)[0] + ":"
    return ""

PANEL_NS = _detect_panel_namespace()

VERSION_NUMBER = "''' + version + '''"

def get_maya_main_window():
    main_window_ptr = omui.MQtUtil.mainWindow()
    return shiboken.wrapInstance(int(main_window_ptr), QtWidgets.QWidget)

def _update_floatfield(attr, widget_id):
    if widget_id in _floatfield_registry:
        try:
            new_val = cmds.getAttr(attr)
            _floatfield_registry[widget_id].external_update(new_val)
        except:
            pass

def _update_slider(attr, widget_id):
    if widget_id in _slider_registry:
        try:
            new_val = cmds.getAttr(attr)
            _slider_registry[widget_id].external_update(new_val)
        except:
            pass

def _update_checkbox(attr, widget_id):
    if widget_id in _checkbox_registry:
        try:
            new_val = cmds.getAttr(attr)
            _checkbox_registry[widget_id].external_update(new_val)
        except:
            pass

class EmbeddedControlPanel(MayaQWidgetDockableMixin, QtWidgets.QMainWindow):
    def __init__(self, parent=None):
        if parent is None:
            parent = get_maya_main_window()
        super(EmbeddedControlPanel, self).__init__(parent)
        self.setObjectName("AS_Panel_Embedded")
        self.setWindowTitle("Control Panel (Embedded) - v:" + VERSION_NUMBER)
        self.resize(400, 340)
        self.main_widget = QtWidgets.QWidget()
        self.setCentralWidget(self.main_widget)
        self.layout = QtWidgets.QVBoxLayout(self.main_widget)
        self.layout.setContentsMargins(0, 0, 0, 0)
        self.layout.setSpacing(0)
        top_bar_container = QtWidgets.QWidget()
        top_bar = QtWidgets.QHBoxLayout(top_bar_container)
        top_bar.setContentsMargins(5, 5, 5, 0)
        self.namespace_combo = QtWidgets.QComboBox()
        self.namespace_combo.setSizeAdjustPolicy(QtWidgets.QComboBox.AdjustToContents)
        self.namespace_combo.installEventFilter(self)
        self.dock_btn = QtWidgets.QPushButton("Dock")
        self.dock_btn.setFixedWidth(50)
        self.dock_btn.clicked.connect(self.dock_panel)
        self.close_btn = QtWidgets.QPushButton("Close")
        self.close_btn.setFixedWidth(60)
        self.close_btn.clicked.connect(self.close)
        top_bar.addWidget(self.namespace_combo)
        top_bar.addStretch()
        top_bar.addWidget(self.dock_btn)
        top_bar.addWidget(self.close_btn)
        self.layout.addWidget(top_bar_container)
        self.scene = QtWidgets.QGraphicsScene()
        self.scene.setSceneRect(-5000, -5000, 10000, 10000)
        self.view = PanelView(self.scene)
        self.view.setFocusPolicy(QtCore.Qt.StrongFocus)
        self.layout.addWidget(self.view)
        self._timer = QtCore.QTimer(self)
        self._timer.timeout.connect(self.update_visuals)
        self._timer.start(150)
        self.populate_namespaces()
        self._auto_detect_namespace()
        self.namespace_combo.currentIndexChanged.connect(self.on_namespace_changed)

    def update_visuals(self):
        for item in self.scene.items():
            if isinstance(item, PickerItem):
                item.update()

    def frame_all(self):
        all_items = [i for i in self.scene.items() if isinstance(i, PanelWidget)]
        if all_items:
            rect = all_items[0].sceneBoundingRect()
            for i in all_items[1:]:
                rect = rect.united(i.sceneBoundingRect())
            self.view.fitInView(rect.adjusted(-2, -2, 2, 2), QtCore.Qt.KeepAspectRatio)

    def dock_panel(self):
        workspace_name = self.objectName() + "WorkspaceControl"
        if cmds.workspaceControl(workspace_name, exists=True):
            self._manual_undock = True
            cmds.deleteUI(workspace_name, control=True)
            self._manual_undock = False
            self.show()
            self.raise_()
            self.view.setFocus()
            self.frame_all()
            self.dock_btn.setText("Dock")
            return
        self.hide()
        self.show(dockable=True)
        cmds.workspaceControl(workspace_name, e=True, dockToMainWindow=["right", False], floating=False)
        self.frame_all()
        self.dock_btn.setText("Undock")

    def dockCloseEventTriggered(self):
        if getattr(self, '_manual_undock', False):
            super(EmbeddedControlPanel, self).dockCloseEventTriggered()
            return
        workspace_name = self.objectName() + "WorkspaceControl"
        if cmds.workspaceControl(workspace_name, exists=True):
            cmds.deleteUI(workspace_name, control=True)
        self.show()
        self.raise_()
        self.view.setFocus()
        self.frame_all()
        self.dock_btn.setText("Dock")
        super(EmbeddedControlPanel, self).dockCloseEventTriggered()

    def resizeEvent(self, event):
        super(EmbeddedControlPanel, self).resizeEvent(event)
        if not hasattr(self, '_resize_timer'):
            self._resize_timer = QtCore.QTimer(self)
            self._resize_timer.setSingleShot(True)
            self._resize_timer.timeout.connect(self.frame_all)
        self._resize_timer.start(150)

    def populate_namespaces(self):
        self.namespace_combo.blockSignals(True)
        self.namespace_combo.clear()
        valid_entries = [":"]
        try:
            ns_list = cmds.namespaceInfo(listOnlyNamespaces=True, recurse=True)
        except:
            ns_list = []
        if "UI" in ns_list:
            ns_list.remove("UI")
        ns_list.sort()
        for ns in ns_list:
            if not ns:
                continue
            prefix = "{}:".format(ns)
            has_main = False
            has_face = False
            try:
                if cmds.objExists("{}Main".format(prefix)):
                    has_main = cmds.attributeQuery("version", node="{}Main".format(prefix), exists=True)
                if cmds.objExists("{}FaceGroup".format(prefix)):
                    has_face = cmds.attributeQuery("version", node="{}FaceGroup".format(prefix), exists=True)
            except:
                pass
            if has_main or has_face:
                valid_entries.append(prefix)
        self.namespace_combo.addItems(valid_entries)
        default_idx = self.namespace_combo.findText(DEFAULT_NAMESPACE)
        if default_idx != -1:
            self.namespace_combo.setCurrentIndex(default_idx)
        self.namespace_combo.blockSignals(False)

    def refresh_namespace_only(self):
        current_ns = self.namespace_combo.currentText()
        self.namespace_combo.blockSignals(True)
        self.populate_namespaces()
        index = self.namespace_combo.findText(current_ns)
        if index != -1:
            self.namespace_combo.setCurrentIndex(index)
        else:
            root_index = self.namespace_combo.findText(":")
            if root_index != -1:
                self.namespace_combo.setCurrentIndex(root_index)
        self.namespace_combo.blockSignals(False)

    def _auto_detect_namespace(self):
        self.namespace_combo.blockSignals(True)
        if cmds.objExists("Main"):
            idx = self.namespace_combo.findText(":")
            if idx != -1:
                self.namespace_combo.setCurrentIndex(idx)
        else:
            main_nodes = cmds.ls("*:Main", type="transform") or []
            for node in main_nodes:
                if ":" in node:
                    ns = node.rsplit(":", 1)[0] + ":"
                    idx = self.namespace_combo.findText(ns)
                    if idx == -1:
                        self.namespace_combo.addItem(ns)
                        idx = self.namespace_combo.count() - 1
                    self.namespace_combo.setCurrentIndex(idx)
                    break
        self.namespace_combo.blockSignals(False)

    def on_namespace_changed(self):
        current_ns = self.namespace_combo.currentText()
        try:
            mel.eval('global string $gAsPanelNamespace; $gAsPanelNamespace = "{}";'.format(current_ns))
        except:
            pass
        for item in self.scene.items():
            if isinstance(item, BaseWidget):
                item.update_namespace(current_ns)
        self.scene.update()

    def eventFilter(self, obj, event):
        if obj == self.namespace_combo:
            if event.type() == QtCore.QEvent.MouseButtonPress:
                self.refresh_namespace_only()
        return super(EmbeddedControlPanel, self).eventFilter(obj, event)

    def build_from_config(self, widgets):
        import json
        data = widgets if isinstance(widgets, list) else json.loads(widgets)
        ns = self.namespace_combo.currentText() if hasattr(self, 'namespace_combo') else ":"
        
        for w in data:
            color = QtGui.QColor(w["color_r"], w["color_g"], w["color_b"])
            x_pos = w.get("x", 0)
            y_pos = w.get("y", 0)
            
            if w["type"] == "button":
                mel_cmd = w.get("mel_cmd", "")
                if mel_cmd is None:
                    mel_cmd = ""
                item = PickerItem(w["select_str"], x_pos, y_pos, w["w"], w["h"], color, label=w.get("label", ""), mel_cmd=mel_cmd, is_label_only=w.get("is_label_only", False), namespace=ns, opacity=w.get("opacity", 1.0), texture_path=w.get("texture_path", ""))
                self.scene.addItem(item)
            elif w["type"] == "checkbox":
                item = CheckboxWidget(w["select_str"], x_pos, y_pos, w["w"], w["h"], color, label=w.get("label", ""), namespace=ns, current_val=w.get("current_val", False))
                self.scene.addItem(item)
            elif w["type"] == "slider":
                item = SliderWidget(w["select_str"], x_pos, y_pos, w["w"], w["h"], color, label=w.get("label", ""), namespace=ns, min_val=w.get("min_val", 0), max_val=w.get("max_val", 10), current_val=w.get("current_val", 0))
                self.scene.addItem(item)
            elif w["type"] == "floatField":
                item = FloatFieldWidget(w["select_str"], x_pos, y_pos, w["w"], w["h"], color, label=w.get("label", ""), namespace=ns, min_val=w.get("min_val", -1e10), max_val=w.get("max_val", 1e10), current_val=w.get("current_val", 0))
                self.scene.addItem(item)
            elif w["type"] == "background":
                item = BackgroundRect(w["x"], w["y"], w["w"], w["h"], color, w.get("opacity", 0.3), label=w.get("label", ""), select_str=w.get("select_str", ""), texture_path=w.get("texture_path", ""))
                self.scene.addItem(item)
        
        all_items = [i for i in self.scene.items() if isinstance(i, PanelWidget)]
        if all_items:
            rect = all_items[0].sceneBoundingRect()
            for i in all_items[1:]:
                rect = rect.united(i.sceneBoundingRect())
            self.view.fitInView(rect.adjusted(-2, -2, 2, 2), QtCore.Qt.KeepAspectRatio)

    def keyPressEvent(self, event):
        if event.key() == QtCore.Qt.Key_F:
            self.frame_all()
            event.accept()
        else:
            super(EmbeddedControlPanel, self).keyPressEvent(event)

    def closeEvent(self, event):
        self._timer.stop()
        for item in self.scene.items():
            if isinstance(item, BaseWidget):
                item.cleanup()
        event.accept()

    def showEvent(self, event):
        self._timer.start(150)
        self.refresh_namespace_only()
        self._auto_detect_namespace()
        current_ns = self.namespace_combo.currentText()
        for item in self.scene.items():
            if isinstance(item, BaseWidget):
                item.namespace = current_ns
                item.activate()
        super(EmbeddedControlPanel, self).showEvent(event)

_embedded_panel = None

def show_embedded_panel():
    global _embedded_panel
    try:
        if _embedded_panel is not None:
            try:
                if _embedded_panel.isVisible():
                    _embedded_panel.raise_()
                    _embedded_panel.activateWindow()
                    _embedded_panel.frame_all()
                    return
                else:
                    _embedded_panel.show()
                    _embedded_panel.raise_()
                    _embedded_panel.frame_all()
                    return
            except:
                try:
                    _embedded_panel.close()
                except:
                    pass
                _embedded_panel = None
        
        _embedded_panel = EmbeddedControlPanel()
        _embedded_panel.build_from_config(CONFIG_DATA)
        _embedded_panel.show()
        _embedded_panel.view.setFocus()
        _embedded_panel.frame_all()
    except Exception as e:
        MGlobal.displayWarning("Control Panel: Error showing embedded panel: " + str(e))

def hide_embedded_panel():
    global _embedded_panel
    if _embedded_panel is not None:
        try:
            _embedded_panel.close()
            _embedded_panel = None
        except:
            pass

def panel_attr_changed():
    import maya.cmds as cmds
    panel_attr = PANEL_NS + "Main.panel"
    if cmds.objExists(panel_attr):
        val = cmds.getAttr(panel_attr)
        if val:
            show_embedded_panel()
        else:
            hide_embedded_panel()

all_jobs = cmds.scriptJob(listJobs=True)
for job in all_jobs:
    if "panel_attr_changed" in str(job):
        try:
            job_id = int(job.split(":")[0])
            cmds.scriptJob(kill=job_id, force=True)
        except:
            pass

panel_attr = PANEL_NS + "Main.panel"
if cmds.objExists(panel_attr):
    cmds.scriptJob(
        attributeChange=[panel_attr, "panel_attr_changed()"],
        killWithScene=False
    )
    MGlobal.displayInfo("Control Panel: Script job created for " + panel_attr)

show_embedded_panel()

def _on_embedded_ref_loaded(*args):
    try:
        if cmds.window("AS_Panel_Embedded", exists=True):
            return
        ref_nodes = cmds.ls("*:ControlPanelEmbedded", type="script") or []
        for ref_node in ref_nodes:
            try:
                cmds.scriptNode(ref_node, executeBefore=True)
                break
            except:
                pass
    except:
        pass

if not globals().get('_as_embedded_ref_cb', False):
    try:
        from maya.api import OpenMaya as _om2_ref
        _om2_ref.MSceneMessage.addCallback(_om2_ref.MSceneMessage.kAfterCreateReference, _on_embedded_ref_loaded)
        _om2_ref.MSceneMessage.addCallback(_om2_ref.MSceneMessage.kAfterOpen, _on_embedded_ref_loaded)
        globals()['_as_embedded_ref_cb'] = True
    except:
        pass
'''
        
        python_code_full = python_code.replace("CORE_CLASSES_PLACEHOLDER", core_classes)
        python_code_full = python_code_full.replace("CONFIG_PLACEHOLDER", json.dumps(config))
        python_code_full = python_code_full.replace("DEFAULT_NS_PLACEHOLDER", default_ns)
        escaped_python = python_code_full.replace('\\', '\\\\').replace('"', '\\"').replace('\n', '\\n')
        mel_script = '''// Control Panel Embedded Script
// Generated by AdvancedSkeleton Control Panel

global proc showEmbeddedControlPanel()
{
    string $pythonCmd = "''' + escaped_python + '''";
    python($pythonCmd);
}

showEmbeddedControlPanel;
'''
        
        return mel_script






def show():
    workspace_name = "AS_PanelWorkspaceControl"
    if cmds.workspaceControl(workspace_name, exists=True):
        if hasattr(__main__, 'panel_ui') and __main__.panel_ui:
            try:
                __main__.panel_ui.isVisible()
                cmds.workspaceControl(workspace_name, e=True, restore=True)
                return
            except:
                pass
        cmds.deleteUI(workspace_name, control=True)
    if cmds.window("AS_Panel", exists=True):
        if hasattr(__main__, 'panel_ui') and __main__.panel_ui:
            try:
                __main__.panel_ui.show()
                __main__.panel_ui.raise_()
                __main__.panel_ui.view.setFocus()
                return
            except:
                pass
    if hasattr(__main__, 'panel_ui'):
        __main__.panel_ui = None
    ui = ControlPanel()
    __main__.panel_ui = ui
    ui.show()
    ui.view.setFocus()
    
    # Always load biped layout
    start = os.path.join(os.path.dirname(__file__), "panelFiles", "scenes", "biped.ma")
    if os.path.exists(start):
        ui.load_layout_file(start)

if __name__ == "__main__":
    show()
