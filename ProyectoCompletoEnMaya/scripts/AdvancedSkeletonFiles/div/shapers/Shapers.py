# -*- coding: utf-8 -*-
"""Shapers deploy plug-in for Autodesk Maya / AdvancedSkeleton.
This is the single-py-file deploy version of the plug-in.
It contains the Maya MPx deformer registration, deformation algorithm, and
script-callable helper functions.

Typical use:
    import maya.cmds as cmds
    cmds.loadPlugin(r"/path/to/Shapers.py")
    import Shapers
    Shapers.create(mesh, curves)

Copyright (C)2026 Animation Studios
email: support@animationstudios.com.au
Last Modified 19/06/2026
"""
from __future__ import print_function

import json
import heapq
import math
from collections import OrderedDict

try:
    # API 2.0 for convenient DAG/geometry helpers.
    import maya.api.OpenMaya as om
    # Python custom deformers are exposed through the legacy API 1.0 MPx layer.
    import maya.OpenMaya as om1
    import maya.OpenMayaMPx as ompx
    import maya.cmds as cmds
except Exception:  # Allows non-Maya syntax checking.
    om = None
    om1 = None
    ompx = None
    cmds = None

PLUGIN_VERSION = "0.12.0-shapers"
NODE_NAME = "shapersDeformer"
NODE_ID = 0x0013BEF1  # Local/test plug-in id. Use an Autodesk-assigned id for distribution.
RIG_ATTR = "shapersRig"
DATA_ATTR = "shapersData"
FALLOFF_ATTR = "shapersFalloff"
STRENGTH_ATTR = "shapersStrength"
NORMALIZE_ATTR = "normalizeCurveWeights"
DEFAULT_SAMPLES = 80
DEFAULT_FALLOFF = 2.0
DEFAULT_MAX_INFLUENCES = 4
AUTO_FALLOFF_PERCENTILE = 0.9
AUTO_FALLOFF_SCALE = 1.25
AUTO_FALLOFF_MEDIAN_CAP_SCALE = 2.0
EVALUATION_CACHE_SIZE = 8
_EVALUATION_CACHE = OrderedDict()


def _maya_required():
    if cmds is None or om is None or om1 is None or ompx is None:
        raise RuntimeError("Shapers must run inside Autodesk Maya.")


def _log(msg):
    if cmds:
        om.MGlobal.displayInfo("[Shapers] " + str(msg))
    else:
        print("[Shapers] " + str(msg))


def _warn(msg):
    if cmds:
        om.MGlobal.displayWarning("[Shapers] " + str(msg))
    else:
        print("[Shapers WARNING] " + str(msg))


def _error(msg):
    if cmds:
        om.MGlobal.displayError("[Shapers] " + str(msg))
    else:
        print("[Shapers ERROR] " + str(msg))


def _shape(node, shape_type=None):
    """Return first non-intermediate shape below a transform, or node itself if it is a shape."""
    _maya_required()
    if cmds.objectType(node, isAType=shape_type or "shape"):
        return node
    shapes = cmds.listRelatives(node, shapes=True, noIntermediate=True, fullPath=True) or []
    if shape_type:
        shapes = [s for s in shapes if cmds.objectType(s, isAType=shape_type)]
    if not shapes:
        raise RuntimeError("No %s shape found under %s" % (shape_type or "valid", node))
    return shapes[0]


def _transform(node):
    if cmds.objectType(node, isAType="transform"):
        return node
    parent = cmds.listRelatives(node, parent=True, fullPath=True) or []
    return parent[0] if parent else node


def _dag_path(node):
    sel = om.MSelectionList()
    sel.add(node)
    return sel.getDagPath(0)


def _mesh_points_world(mesh):
    shape = _shape(mesh, "mesh")
    fn = om.MFnMesh(_dag_path(shape))
    return [list(p)[:3] for p in fn.getPoints(om.MSpace.kWorld)]


def _build_mesh_adjacency(points, polygon_counts, polygon_vertices):
    """Build a weighted vertex graph from polygon boundary edges."""
    adjacency = [dict() for _ in points]
    cursor = 0
    for raw_count in polygon_counts:
        count = int(raw_count)
        face = [int(vertex) for vertex in polygon_vertices[cursor:cursor + count]]
        cursor += count
        if count < 2:
            continue
        for edge_index, vertex_a in enumerate(face):
            vertex_b = face[(edge_index + 1) % count]
            if vertex_a == vertex_b:
                continue
            distance = math.sqrt(_dist2(points[vertex_a], points[vertex_b]))
            if distance <= 1.0e-12:
                continue
            previous = adjacency[vertex_a].get(vertex_b)
            if previous is None or distance < previous:
                adjacency[vertex_a][vertex_b] = distance
                adjacency[vertex_b][vertex_a] = distance
    return [list(neighbors.items()) for neighbors in adjacency]


def _mesh_adjacency(mesh, points):
    """Return world-space edge lengths for the mesh's current topology."""
    shape = _shape(mesh, "mesh")
    fn = om.MFnMesh(_dag_path(shape))
    polygon_counts, polygon_vertices = fn.getVertices()
    if fn.numVertices != len(points):
        raise RuntimeError(
            "Mesh topology has %d vertices but the Shapers bind pose has %d. Rebind first."
            % (fn.numVertices, len(points))
        )
    return _build_mesh_adjacency(points, polygon_counts, polygon_vertices)


def _set_mesh_points_world(mesh, points):
    shape = _shape(mesh, "mesh")
    dag = _dag_path(shape)
    fn = om.MFnMesh(dag)
    arr = om.MPointArray([om.MPoint(float(x), float(y), float(z)) for x, y, z in points])
    fn.setPoints(arr, om.MSpace.kWorld)
    fn.updateSurface()


def _curve_point(curve_shape, param):
    fn = om.MFnNurbsCurve(_dag_path(curve_shape))
    return fn.getPointAtParam(param, om.MSpace.kWorld)


def _sample_curve(curve, samples=DEFAULT_SAMPLES):
    shape = _shape(curve, "nurbsCurve")
    fn = om.MFnNurbsCurve(_dag_path(shape))
    start = fn.knotDomain[0]
    end = fn.knotDomain[1]
    count = max(2, int(samples))
    pts = []
    params = []
    for i in range(count):
        t = start + (end - start) * (float(i) / float(count - 1))
        p = fn.getPointAtParam(t, om.MSpace.kWorld)
        pts.append([p.x, p.y, p.z])
        params.append(t)
    return pts, params


def _curve_cv_points_world(curve):
    shape = _shape(curve, "nurbsCurve")
    count = cmds.getAttr(shape + ".spans") + cmds.getAttr(shape + ".degree")
    if cmds.getAttr(shape + ".form") == 2:
        count -= cmds.getAttr(shape + ".degree")
    return [
        [float(value) for value in cmds.pointPosition("%s.cv[%d]" % (shape, index), world=True)]
        for index in range(max(0, int(count)))
    ]


def _percentile(sorted_values, percentile):
    if not sorted_values:
        return 0.0
    if len(sorted_values) == 1:
        return sorted_values[0]
    position = max(0.0, min(1.0, float(percentile))) * float(len(sorted_values) - 1)
    low = int(math.floor(position))
    high = int(math.ceil(position))
    if low == high:
        return sorted_values[low]
    t = position - float(low)
    return sorted_values[low] * (1.0 - t) + sorted_values[high] * t


def _calculate_falloff_from_curves(curves):
    positions = []
    for curve in curves:
        positions.extend(_curve_cv_points_world(curve))
    if len(positions) < 2:
        return DEFAULT_FALLOFF

    nearest_distances = []
    for i, point in enumerate(positions):
        best = 1.0e30
        for j, other in enumerate(positions):
            if i == j:
                continue
            distance = math.sqrt(_dist2(point, other))
            if 1.0e-8 < distance < best:
                best = distance
        if best < 1.0e29:
            nearest_distances.append(best)
    if not nearest_distances:
        return DEFAULT_FALLOFF

    nearest_distances.sort()
    estimate = _percentile(nearest_distances, AUTO_FALLOFF_PERCENTILE)
    if len(nearest_distances) > 2:
        estimate *= AUTO_FALLOFF_SCALE
        estimate = min(estimate, _percentile(nearest_distances, 0.5) * AUTO_FALLOFF_MEDIAN_CAP_SCALE)

    mins = [min(point[axis] for point in positions) for axis in range(3)]
    maxs = [max(point[axis] for point in positions) for axis in range(3)]
    diagonal = math.sqrt(sum((maxs[axis] - mins[axis]) ** 2 for axis in range(3)))
    if diagonal <= 1.0e-8:
        return max(0.001, estimate)
    return max(max(0.001, diagonal * 0.01), min(estimate, diagonal))


def _sample_curve_data(curve_object, samples=DEFAULT_SAMPLES):
    """Sample connected NURBS curve data without resolving a scene DAG path."""
    fn = om1.MFnNurbsCurve(curve_object)
    start_util = om1.MScriptUtil()
    end_util = om1.MScriptUtil()
    start_util.createFromDouble(0.0)
    end_util.createFromDouble(0.0)
    start_ptr = start_util.asDoublePtr()
    end_ptr = end_util.asDoublePtr()
    fn.getKnotDomain(start_ptr, end_ptr)
    start = om1.MScriptUtil.getDouble(start_ptr)
    end = om1.MScriptUtil.getDouble(end_ptr)
    count = max(2, int(samples))
    pts = []
    for i in range(count):
        param = start + (end - start) * (float(i) / float(count - 1))
        point = om1.MPoint()
        fn.getPointAtParam(param, point, om1.MSpace.kObject)
        pts.append([point.x, point.y, point.z])
    return pts


def _vsub(a, b):
    return [a[0] - b[0], a[1] - b[1], a[2] - b[2]]


def _vadd(a, b):
    return [a[0] + b[0], a[1] + b[1], a[2] + b[2]]


def _vmul(a, s):
    return [a[0] * s, a[1] * s, a[2] * s]


def _dot(a, b):
    return a[0] * b[0] + a[1] * b[1] + a[2] * b[2]


def _cross(a, b):
    return [
        a[1] * b[2] - a[2] * b[1],
        a[2] * b[0] - a[0] * b[2],
        a[0] * b[1] - a[1] * b[0],
    ]


def _length(v):
    return math.sqrt(_dot(v, v))


def _rotate_between(vector, source_direction, target_direction):
    """Parallel-transport a vector through the shortest tangent rotation."""
    source_length = _length(source_direction)
    target_length = _length(target_direction)
    if source_length <= 1.0e-12 or target_length <= 1.0e-12:
        return list(vector)
    source = _vmul(source_direction, 1.0 / source_length)
    target = _vmul(target_direction, 1.0 / target_length)
    cosine = max(-1.0, min(1.0, _dot(source, target)))
    axis = _cross(source, target)
    sine = _length(axis)
    if sine <= 1.0e-12:
        if cosine < 0.0:
            # A 180-degree turn has no unique axis. Pick a stable axis
            # perpendicular to the source so the frame cannot silently flip.
            basis = [1.0, 0.0, 0.0] if abs(source[0]) < 0.9 else [0.0, 1.0, 0.0]
            axis = _cross(source, basis)
            axis = _vmul(axis, 1.0 / _length(axis))
            return _vsub(_vmul(axis, 2.0 * _dot(axis, vector)), vector)
        return list(vector)
    axis = _vmul(axis, 1.0 / sine)
    return _vadd(
        _vadd(_vmul(vector, cosine), _vmul(_cross(axis, vector), sine)),
        _vmul(axis, _dot(axis, vector) * (1.0 - cosine)),
    )


def _curve_frames(samples, fallback_frames=None):
    """Build local segment frames without depending on the whole curve's center."""
    if len(samples) < 2:
        return []

    frames = []
    tangents = []
    lengths = []
    for i in range(len(samples) - 1):
        direction = _vsub(samples[i + 1], samples[i])
        segment_length = _length(direction)
        lengths.append(segment_length)
        tangents.append(_vmul(direction, 1.0 / segment_length) if segment_length > 1.0e-12 else None)

    previous_side = None
    previous_valid_tangent = None
    for i, tangent in enumerate(tangents):
        if tangent is None:
            frames.append(None)
            continue

        if fallback_frames and i < len(fallback_frames) and fallback_frames[i]:
            # The posed curve must inherit its orientation from the bind curve.
            # Re-deriving side from live curvature causes frame flips as a CV
            # crosses an axis or temporarily straightens a segment.
            fallback_tangent, fallback_side = fallback_frames[i][0], fallback_frames[i][1]
            side = _rotate_between(fallback_side, fallback_tangent, tangent)
        else:
            previous_tangent = tangents[i - 1] if i > 0 and tangents[i - 1] is not None else tangent
            next_tangent = tangents[i + 1] if i + 1 < len(tangents) and tangents[i + 1] is not None else tangent
            side = _vsub(next_tangent, previous_tangent)
            side = _vsub(side, _vmul(tangent, _dot(side, tangent)))

            if _length(side) <= 1.0e-8 and previous_side is not None:
                side = _rotate_between(previous_side, previous_valid_tangent, tangent)
            elif _length(side) <= 1.0e-8:
                basis = [1.0, 0.0, 0.0] if abs(tangent[0]) < 0.9 else [0.0, 1.0, 0.0]
                side = _cross(basis, tangent)

        side = _vsub(side, _vmul(tangent, _dot(side, tangent)))
        if _length(side) <= 1.0e-8:
            basis = [1.0, 0.0, 0.0] if abs(tangent[0]) < 0.9 else [0.0, 1.0, 0.0]
            side = _cross(basis, tangent)
        side = _vmul(side, 1.0 / _length(side))
        if not fallback_frames and previous_side is not None and _dot(side, previous_side) < 0.0:
            side = _vmul(side, -1.0)
        up = _cross(tangent, side)
        up = _vmul(up, 1.0 / _length(up))
        side = _cross(up, tangent)
        frames.append((tangent, side, up, lengths[i]))
        previous_side = side
        previous_valid_tangent = tangent
    return frames


def _transform_point_by_curve_frame(point, bind_samples, ctrl_samples, bind_frames, ctrl_frames,
                                    segment_index, segment_t):
    """Map a bind point between stable curve-local frames."""
    bind_frame = bind_frames[segment_index]
    ctrl_frame = ctrl_frames[segment_index]
    if bind_frame is None or ctrl_frame is None:
        return list(point)

    bind_tangent, bind_side, bind_up, _ = bind_frame
    ctrl_tangent, ctrl_side, ctrl_up, _ = ctrl_frame
    bind_anchor = _lerp(bind_samples[segment_index], bind_samples[segment_index + 1], segment_t)
    ctrl_anchor = _lerp(ctrl_samples[segment_index], ctrl_samples[segment_index + 1], segment_t)
    offset = _vsub(point, bind_anchor)
    local = [
        _dot(offset, bind_tangent),
        _dot(offset, bind_side),
        _dot(offset, bind_up),
    ]
    transformed_offset = [0.0, 0.0, 0.0]
    for axis, value in zip((ctrl_tangent, ctrl_side, ctrl_up), local):
        transformed_offset = _vadd(transformed_offset, _vmul(axis, value))
    return _vadd(ctrl_anchor, transformed_offset)


def _dist2(a, b):
    dx = a[0] - b[0]
    dy = a[1] - b[1]
    dz = a[2] - b[2]
    return dx * dx + dy * dy + dz * dz


def _closest_sample_segment(point, samples):
    """Return closest polyline segment index, interpolation value, and squared distance."""
    if not samples:
        return -1, 0.0, 1.0e30
    if len(samples) == 1:
        return 0, 0.0, _dist2(point, samples[0])

    best_i = -1
    best_t = 0.0
    best_d2 = 1.0e30
    for i in range(len(samples) - 1):
        a = samples[i]
        ab = _vsub(samples[i + 1], a)
        ab_len2 = ab[0] * ab[0] + ab[1] * ab[1] + ab[2] * ab[2]
        if ab_len2 <= 1.0e-16:
            t = 0.0
        else:
            ap = _vsub(point, a)
            t = max(0.0, min(1.0, (ap[0] * ab[0] + ap[1] * ab[1] + ap[2] * ab[2]) / ab_len2))
        closest = _vadd(a, _vmul(ab, t))
        d2 = _dist2(point, closest)
        if d2 < best_d2:
            best_i = i
            best_t = t
            best_d2 = d2
    return best_i, best_t, best_d2


def _lerp(a, b, t):
    return _vadd(a, _vmul(_vsub(b, a), t))


def _smooth_weight(distance, falloff):
    if falloff <= 0.0 or distance >= falloff:
        return 0.0
    x = max(0.0, min(1.0, distance / falloff))
    # Smoothstep falloff: 1 at curve, 0 at radius.
    return 1.0 - (x * x * (3.0 - 2.0 * x))


def _curve_seed_vertices(bind_points, curve_samples):
    """Project curve samples onto their nearest mesh vertices."""
    seeds = {}
    if not bind_points or not curve_samples:
        return seeds
    for sample in curve_samples:
        vertex_index = min(
            range(len(bind_points)),
            key=lambda index: _dist2(bind_points[index], sample),
        )
        segment_index, segment_t, distance2 = _closest_sample_segment(
            bind_points[vertex_index], curve_samples
        )
        distance = math.sqrt(distance2)
        previous = seeds.get(vertex_index)
        if previous is None or distance < previous[0]:
            seeds[vertex_index] = (distance, segment_index, segment_t)
    return seeds


def _build_geodesic_influence_cache(bind_points, curve_samples, falloff,
                                    max_influences, adjacency):
    """Propagate curve influence along mesh edges instead of through empty space."""
    per_vertex_hits = [[] for _ in bind_points]
    limit = float(falloff)

    for curve_index, samples in enumerate(curve_samples):
        best = [1.0e30] * len(bind_points)
        source = [None] * len(bind_points)
        queue = []
        for vertex_index, seed in _curve_seed_vertices(bind_points, samples).items():
            distance, segment_index, segment_t = seed
            if distance >= limit or distance >= best[vertex_index]:
                continue
            best[vertex_index] = distance
            source[vertex_index] = (segment_index, segment_t)
            heapq.heappush(queue, (distance, vertex_index, segment_index, segment_t))

        while queue:
            distance, vertex_index, segment_index, segment_t = heapq.heappop(queue)
            if distance > best[vertex_index] + 1.0e-12:
                continue
            for neighbor_index, edge_length in adjacency[vertex_index]:
                candidate = distance + edge_length
                if candidate >= limit or candidate >= best[neighbor_index] - 1.0e-12:
                    continue
                best[neighbor_index] = candidate
                source[neighbor_index] = (segment_index, segment_t)
                heapq.heappush(
                    queue, (candidate, neighbor_index, segment_index, segment_t)
                )

        for vertex_index, distance in enumerate(best):
            if distance >= limit or source[vertex_index] is None:
                continue
            weight = _smooth_weight(distance, limit)
            if weight > 1.0e-8:
                segment_index, segment_t = source[vertex_index]
                per_vertex_hits[vertex_index].append(
                    [curve_index, segment_index, segment_t, weight]
                )

    influenced_count = 0
    count = max(1, int(max_influences))
    for hits in per_vertex_hits:
        hits.sort(key=lambda hit: hit[3], reverse=True)
        del hits[count:]
        if hits:
            influenced_count += 1
    return per_vertex_hits, influenced_count


def _build_topology_aware_influence_cache(mesh, bind_points, curve_samples,
                                          falloff, max_influences):
    adjacency = _mesh_adjacency(mesh, bind_points)
    return _build_geodesic_influence_cache(
        bind_points, curve_samples, falloff, max_influences, adjacency
    )


def _build_matrix_influence_cache(bind_points, bind_positions, active_vertices, max_influences):
    """Build normalized inverse-distance weights for connected matrix controls."""
    influences = []
    count = max(1, int(max_influences))
    for vertex_index, point in enumerate(bind_points):
        if active_vertices and not active_vertices[vertex_index]:
            influences.append([])
            continue
        hits = []
        for matrix_index, position in enumerate(bind_positions):
            distance2 = _dist2(point, position)
            hits.append([matrix_index, 1.0 / max(1.0e-8, distance2)])
        hits.sort(key=lambda hit: hit[1], reverse=True)
        hits = hits[:count]
        total = sum(hit[1] for hit in hits)
        influences.append([[hit[0], hit[1] / total] for hit in hits] if total > 1.0e-8 else [])
    return influences


def _matrix_values(node):
    values = cmds.getAttr("%s.worldMatrix[0]" % node)
    if values and isinstance(values[0], (list, tuple)):
        values = values[0]
    return [float(value) for value in values]


def _matrix_translation(values):
    return [values[12], values[13], values[14]]


def _maya_matrix(values):
    matrix = om1.MMatrix()
    om1.MScriptUtil.createMatrixFromList(values, matrix)
    return matrix


def _transform_point_by_matrix_delta(point, bind_values, current_matrix):
    value = om1.MPoint(point[0], point[1], point[2])
    value *= _maya_matrix(bind_values).inverse()
    value *= current_matrix
    return [value.x, value.y, value.z]


def bind_matrix_controls(deformer, controls):
    """Connect control world matrices and cache their bind state on a CurveShaper deformer."""
    _maya_required()
    deformer = _find_curve_shaper_deformer(deformer)
    controls = [_transform(control) for control in controls if cmds.objExists(control)]
    controls = list(dict.fromkeys(controls))
    if not controls:
        raise RuntimeError("No matrix controls were supplied.")

    data = _get_json_attr(deformer, DATA_ATTR)
    bind_points = data.get("bindPoints") or []
    curve_influences = data.get("influences") or []
    max_influences = int(data.get("maxInfluences", DEFAULT_MAX_INFLUENCES))
    bind_matrices = [_matrix_values(control) for control in controls]
    bind_positions = [_matrix_translation(values) for values in bind_matrices]
    active_vertices = [bool(hits) for hits in curve_influences] if curve_influences else None
    matrix_influences = _build_matrix_influence_cache(
        bind_points, bind_positions, active_vertices, max_influences
    )

    for index in cmds.getAttr("%s.matrixIn" % deformer, multiIndices=True) or []:
        destination = "%s.matrixIn[%d]" % (deformer, index)
        for source in cmds.listConnections(destination, source=True, destination=False, plugs=True) or []:
            cmds.disconnectAttr(source, destination)
    for index, control in enumerate(controls):
        cmds.connectAttr(
            "%s.worldMatrix[0]" % control,
            "%s.matrixIn[%d]" % (deformer, index),
            force=True,
        )

    data["version"] = PLUGIN_VERSION
    data["matrixControls"] = controls
    data["bindMatrices"] = bind_matrices
    data["matrixInfluences"] = matrix_influences
    _set_json_attr(deformer, DATA_ATTR, data)
    _force_deformer_evaluation(deformer)
    _log("Connected %d matrix control(s) to %s." % (len(controls), deformer))
    return deformer


def _ensure_string_attr(node, attr):
    if not cmds.attributeQuery(attr, node=node, exists=True):
        cmds.addAttr(node, longName=attr, dataType="string")


def _ensure_double_attr(node, attr, default, min_value=None):
    if not cmds.attributeQuery(attr, node=node, exists=True):
        kwargs = {"longName": attr, "attributeType": "double", "defaultValue": default, "keyable": True}
        if min_value is not None:
            kwargs["minValue"] = min_value
        cmds.addAttr(node, **kwargs)


def _set_json_attr(node, attr, value):
    _ensure_string_attr(node, attr)
    cmds.setAttr("%s.%s" % (node, attr), json.dumps(value, separators=(",", ":")), type="string")


def _force_deformer_evaluation(deformer):
    """Dirty the new deformer after late-bound data and curve connections are set."""
    for plug in (deformer, "%s.outputGeometry[0]" % deformer):
        try:
            cmds.dgdirty(plug)
        except Exception:
            pass
    try:
        cmds.refresh(force=True)
    except Exception:
        pass


def _with_wait_cursor(fn):
    def wrapped(*args, **kwargs):
        changed_cursor = False
        try:
            if cmds and not cmds.waitCursor(query=True, state=True):
                cmds.waitCursor(state=True)
                changed_cursor = True
        except Exception:
            pass
        try:
            return fn(*args, **kwargs)
        finally:
            if changed_cursor:
                try:
                    cmds.waitCursor(state=False)
                except Exception:
                    pass

    wrapped.__name__ = getattr(fn, "__name__", "wrapped")
    wrapped.__doc__ = getattr(fn, "__doc__", None)
    return wrapped


def _clear_input_curve_connections(deformer):
    for index in cmds.getAttr("%s.inputCurve" % deformer, multiIndices=True) or []:
        destination = "%s.inputCurve[%d]" % (deformer, index)
        for source in cmds.listConnections(destination, source=True, destination=False, plugs=True) or []:
            cmds.disconnectAttr(source, destination)


def _connect_input_curves(deformer, curves):
    _clear_input_curve_connections(deformer)
    for index, curve in enumerate(curves):
        curve_shape = _shape(curve, "nurbsCurve")
        source = "%s.worldSpace[0]" % curve_shape
        destination = "%s.inputCurve[%d]" % (deformer, index)
        if not cmds.isConnected(source, destination):
            cmds.connectAttr(source, destination, force=True)


def _rebuild_data_from_curves(deformer, data, curves):
    curves = [_transform(curve) for curve in curves if cmds.objExists(curve)]
    curves = list(dict.fromkeys(curves))
    if not curves:
        raise RuntimeError("%s must have at least one profile curve." % deformer)
    for curve in curves:
        _shape(curve, "nurbsCurve")

    samples = int(data.get("samples", DEFAULT_SAMPLES))
    falloff = float(cmds.getAttr("%s.%s" % (deformer, FALLOFF_ATTR)))
    max_influences = int(data.get("maxInfluences", DEFAULT_MAX_INFLUENCES))
    bind_points = data["bindPoints"]
    curve_samples = [_sample_curve(curve, samples)[0] for curve in curves]
    mesh = _transform(data["mesh"])
    influences, influenced_count = _build_topology_aware_influence_cache(
        mesh, bind_points, curve_samples, falloff, max_influences
    )

    data["version"] = PLUGIN_VERSION
    data["bindCurves"] = list(curves)
    data["controlCurves"] = list(curves)
    data["falloff"] = falloff
    data["bindingMode"] = "meshGeodesic"
    data["bindCurveSamples"] = curve_samples
    data["influences"] = influences
    if data.get("bindMatrices"):
        bind_positions = [_matrix_translation(values) for values in data["bindMatrices"]]
        data["matrixInfluences"] = _build_matrix_influence_cache(
            bind_points, bind_positions, [bool(hits) for hits in influences], max_influences
        )
    return data, influenced_count


def _get_json_attr(node, attr):
    if not cmds.attributeQuery(attr, node=node, exists=True):
        raise RuntimeError("%s has no %s data. Create a Shapers rig first." % (node, attr))
    raw = cmds.getAttr("%s.%s" % (node, attr)) or "{}"
    return json.loads(raw)


def _evaluation_data(raw):
    """Return parsed and prepared bind data, cached until its JSON changes."""
    cached = _EVALUATION_CACHE.get(raw)
    if cached is not None:
        _EVALUATION_CACHE.move_to_end(raw)
        return cached

    data = json.loads(raw)
    bind_samples = data.get("bindCurveSamples") or []
    prepared = {
        "data": data,
        "bindPoints": data.get("bindPoints") or [],
        "bindSamples": bind_samples,
        "bindFrames": [_curve_frames(curve_samples) for curve_samples in bind_samples],
        "influences": data.get("influences") or [],
        "bindMatrices": data.get("bindMatrices") or [],
        "matrixInfluences": data.get("matrixInfluences") or [],
    }
    _EVALUATION_CACHE[raw] = prepared
    while len(_EVALUATION_CACHE) > EVALUATION_CACHE_SIZE:
        _EVALUATION_CACHE.popitem(last=False)
    return prepared


def _connected_curve_samples(block, input_curve_attr, samples):
    """Sample connected inputCurve geometry directly from the data block."""
    curve_array = block.inputArrayValue(input_curve_attr)
    sampled = []
    for i in range(curve_array.elementCount()):
        curve_array.jumpToArrayElement(i)
        curve_object = curve_array.inputValue().asNurbsCurve()
        sampled.append(_sample_curve_data(curve_object, samples))
    return sampled


def _find_curve_shaper_deformer(node):
    """Return shapersDeformer connected to a selected mesh or node."""
    _maya_required()
    if cmds.objExists(node) and cmds.nodeType(node) == NODE_NAME:
        return node
    node = _transform(node)
    marker = "%s.%s" % (node, RIG_ATTR)
    if cmds.objExists(marker):
        value = cmds.getAttr(marker)
        if value and cmds.objExists(value) and cmds.nodeType(value) == NODE_NAME:
            return value
    history = cmds.listHistory(node, pruneDagObjects=True) or []
    for h in history:
        if cmds.nodeType(h) == NODE_NAME:
            return h
    raise RuntimeError("No %s found in history for %s." % (NODE_NAME, node))


def _place_curve_shaper_before_skin_cluster(mesh, deformer):
    """Place Shapers immediately before the closest downstream skinCluster."""
    history = cmds.listHistory(mesh, pruneDagObjects=True, breadthFirst=True) or []
    skin_clusters = [node for node in history if cmds.nodeType(node) == "skinCluster"]
    if not skin_clusters:
        return None

    skin_cluster = skin_clusters[0]
    if len(skin_clusters) > 1:
        _warn(
            "%s has multiple skinClusters; placing %s before the closest downstream skinCluster, %s."
            % (mesh, deformer, skin_cluster)
        )

    try:
        # Maya places the second argument before the first in deformation
        # history. Put Shapers before skinning so the skinCluster appears
        # above it in the Inputs list and evaluates last.
        cmds.reorderDeformers(skin_cluster, deformer, mesh)
    except Exception as exc:
        _warn("Could not place %s before %s: %s" % (deformer, skin_cluster, exc))
        return None

    ordered_history = cmds.listHistory(mesh, pruneDagObjects=True, breadthFirst=True) or []
    try:
        if ordered_history.index(skin_cluster) >= ordered_history.index(deformer):
            _warn("Maya did not confirm that %s is before %s." % (deformer, skin_cluster))
            return None
    except ValueError:
        _warn("Could not verify the deformation order for %s and %s." % (deformer, skin_cluster))
        return None

    return skin_cluster


def _world_mesh_destinations(mesh):
    """Return existing consumers of the visible mesh shape's worldMesh output."""
    source = "%s.worldMesh[0]" % _shape(mesh, "mesh")
    return list(cmds.connectionInfo(source, destinationFromSource=True) or [])


def _disconnect_world_mesh_destinations(mesh, destinations):
    """Temporarily disconnect final-mesh consumers before inserting history."""
    if not destinations:
        return

    source = "%s.worldMesh[0]" % _shape(mesh, "mesh")
    disconnected = []
    try:
        for destination in destinations:
            if cmds.isConnected(source, destination):
                cmds.disconnectAttr(source, destination)
                disconnected.append(destination)
    except Exception:
        for destination in disconnected:
            try:
                cmds.connectAttr(source, destination, force=True)
            except Exception:
                pass
        raise


def _restore_world_mesh_destinations(mesh, destinations):
    """Keep existing external consumers connected to the final visible mesh."""
    if not destinations:
        return 0

    source = "%s.worldMesh[0]" % _shape(mesh, "mesh")
    restored = 0
    for destination in destinations:
        if not cmds.objExists(destination):
            _warn("Could not restore missing worldMesh destination %s." % destination)
            continue
        try:
            current_source = cmds.connectionInfo(destination, sourceFromDestination=True)
            if current_source != source:
                cmds.connectAttr(source, destination, force=True)
            restored += 1
        except Exception as exc:
            _warn("Could not restore %s -> %s: %s" % (source, destination, exc))
    return restored


def _collapse_redundant_output_shape(mesh, original_shape):
    """Remove Maya's empty tweak/output-shape pair after deformer insertion."""
    output_shape = _shape(mesh, "mesh")
    original_long = (cmds.ls(original_shape, long=True) or [original_shape])[0]
    output_long = (cmds.ls(output_shape, long=True) or [output_shape])[0]
    if output_long == original_long:
        return False

    output_input = cmds.connectionInfo(
        "%s.inMesh" % output_shape, sourceFromDestination=True
    )
    if not output_input:
        _warn("Keeping %s because its input connection could not be identified." % output_shape)
        return False

    tweak = output_input.split(".", 1)[0]
    if cmds.nodeType(tweak) != "tweak":
        _warn("Keeping %s because its input is not an empty Maya tweak node." % output_shape)
        return False

    tweak_input = cmds.connectionInfo(
        "%s.input[0].inputGeometry" % tweak, sourceFromDestination=True
    )
    if not tweak_input:
        _warn("Keeping %s because %s has no input geometry." % (output_shape, tweak))
        return False

    tweak_source = tweak_input.split(".", 1)[0]
    tweak_source_long = (cmds.ls(tweak_source, long=True) or [tweak_source])[0]
    if tweak_source_long != original_long:
        _warn(
            "Keeping %s because %s is not fed by the original mesh shape."
            % (output_shape, tweak)
        )
        return False

    try:
        cmds.setAttr("%s.intermediateObject" % original_shape, False)
    except Exception as exc:
        _warn("Keeping %s because the original shape could not be made visible: %s" %
              (output_shape, exc))
        return False
    try:
        cmds.delete(output_shape)
    except Exception as exc:
        cmds.setAttr("%s.intermediateObject" % original_shape, True)
        _warn("Could not simplify the final mesh shape: %s" % exc)
        return False

    if cmds.objExists(tweak):
        try:
            cmds.delete(tweak)
        except Exception as exc:
            _warn("Removed the redundant output shape but could not delete %s: %s" % (tweak, exc))

    return True


def _duplicate_control_curve(curve, suffix="_csCtrl"):
    base = _transform(curve).split("|")[-1]
    dup = cmds.duplicate(_transform(curve), name=base + suffix, returnRootsOnly=True)[0]
    for attr in ["tx", "ty", "tz", "rx", "ry", "rz", "sx", "sy", "sz"]:
        try:
            cmds.setAttr("%s.%s" % (dup, attr), lock=False, keyable=True, channelBox=True)
        except Exception:
            pass
    try:
        cmds.setAttr(dup + ".overrideEnabled", 1)
        cmds.setAttr(dup + ".overrideColor", 17)  # yellow
    except Exception:
        pass
    return dup


def _duplicate_bind_curve(curve, suffix="_csBind"):
    base = _transform(curve).split("|")[-1]
    dup = cmds.duplicate(_transform(curve), name=base + suffix, returnRootsOnly=True)[0]
    cmds.hide(dup)
    for attr in ["tx", "ty", "tz", "rx", "ry", "rz", "sx", "sy", "sz"]:
        try:
            cmds.setAttr("%s.%s" % (dup, attr), lock=True, keyable=False, channelBox=False)
        except Exception:
            pass
    return dup


def _create_curve_shaper_impl(mesh=None, curves=None, falloff=None, samples=DEFAULT_SAMPLES,
                              max_influences=DEFAULT_MAX_INFLUENCES, make_controls=False):
    """Create and cache a curve-driven Shapers rig.

    Selection shortcut: select one mesh transform, then one or more NURBS curves.
    """
    _maya_required()
    if mesh is None or curves is None:
        sel = cmds.ls(selection=True, long=True) or []
        if len(sel) < 2:
            raise RuntimeError("Select one mesh, then one or more NURBS profile curves.")
        mesh = sel[0]
        curves = sel[1:]

    mesh = _transform(mesh)
    _shape(mesh, "mesh")
    original_shape = _shape(mesh, "mesh")
    world_mesh_destinations = _world_mesh_destinations(mesh)
    curve_transforms = [_transform(c) for c in curves]
    for c in curve_transforms:
        _shape(c, "nurbsCurve")

    auto_falloff = falloff is None or (isinstance(falloff, str) and falloff.lower() in ("auto", "calculated"))
    falloff = _calculate_falloff_from_curves(curve_transforms) if auto_falloff else float(falloff)
    samples = int(samples)
    max_influences = int(max_influences)
    if falloff <= 0:
        raise RuntimeError("Falloff must be greater than zero.")

    # v0.3.1: do not duplicate user curves. The selected curves are the live
    # controls; their bind samples are cached in the deformer data.
    bind_curves = list(curve_transforms)
    ctrl_curves = list(curve_transforms)
    curves_for_sampling = list(curve_transforms)

    bind_points = _mesh_points_world(mesh)
    curve_samples = []
    for c in curves_for_sampling:
        pts, _ = _sample_curve(c, samples)
        curve_samples.append(pts)

    influences, influenced_count = _build_topology_aware_influence_cache(
        mesh, bind_points, curve_samples, falloff, max_influences
    )

    data = {
        "version": PLUGIN_VERSION,
        "mesh": mesh,
        "bindPoints": bind_points,
        "bindCurves": bind_curves,
        "controlCurves": ctrl_curves,
        "samples": samples,
        "falloff": falloff,
        "maxInfluences": max_influences,
        "bindingMode": "meshGeodesic",
        "bindCurveSamples": curve_samples,
        "influences": influences,
    }

    # Create normally, then move Shapers into bind space before an existing
    # skinCluster so skinning transports its deformation through animated poses.
    _disconnect_world_mesh_destinations(mesh, world_mesh_destinations)
    try:
        deformer = cmds.deformer(mesh, type=NODE_NAME, name=NODE_NAME + "#", after=True)[0]
        skin_cluster = _place_curve_shaper_before_skin_cluster(mesh, deformer)
        try:
            simplified_output_shape = _collapse_redundant_output_shape(mesh, original_shape)
        except Exception as exc:
            simplified_output_shape = False
            _warn("Could not inspect Maya's generated output shape: %s" % exc)
    finally:
        restored_world_mesh_destinations = _restore_world_mesh_destinations(mesh, world_mesh_destinations)
    _set_json_attr(deformer, DATA_ATTR, data)
    cmds.setAttr("%s.%s" % (deformer, FALLOFF_ATTR), falloff)
    cmds.setAttr("%s.%s" % (deformer, STRENGTH_ATTR), 1.0)
    if cmds.attributeQuery(NORMALIZE_ATTR, node=deformer, exists=True):
        cmds.setAttr("%s.%s" % (deformer, NORMALIZE_ATTR), False)

    for i, ctrl in enumerate(ctrl_curves):
        ctrl_shape = _shape(ctrl, "nurbsCurve")
        src = "%s.worldSpace[0]" % ctrl_shape
        dst = "%s.inputCurve[%d]" % (deformer, i)
        if not cmds.isConnected(src, dst):
            cmds.connectAttr(src, dst, force=True)

    # Keep a lightweight marker on the mesh for legacy helper commands/UI.
    _ensure_string_attr(mesh, RIG_ATTR)
    cmds.setAttr("%s.%s" % (mesh, RIG_ATTR), deformer, type="string")
    _force_deformer_evaluation(deformer)

    _log("Created %s on %s with %d curve(s); %d/%d vertices influenced." %
         (deformer, mesh, len(ctrl_curves), influenced_count, len(bind_points)))
    if auto_falloff:
        _log("Calculated falloff: %.4f." % falloff)
    if skin_cluster:
        _log("Placed %s immediately before %s." % (deformer, skin_cluster))
    if simplified_output_shape:
        _log("Kept %s as the final visible mesh shape." % original_shape)
    if restored_world_mesh_destinations:
        _log(
            "Preserved %d final worldMesh connection(s)."
            % restored_world_mesh_destinations
        )
    cmds.select(ctrl_curves + [deformer], replace=True)
    return deformer


def create_curve_shaper(mesh=None, curves=None, falloff=None, samples=DEFAULT_SAMPLES,
                        max_influences=DEFAULT_MAX_INFLUENCES, make_controls=False):
    """Create a Shapers rig as one clearly named Maya undo step."""
    cmds.undoInfo(openChunk=True, chunkName="Shapers Create")
    try:
        return _create_curve_shaper_impl(
            mesh=mesh,
            curves=curves,
            falloff=falloff,
            samples=samples,
            max_influences=max_influences,
            make_controls=make_controls,
        )
    finally:
        cmds.undoInfo(closeChunk=True)


def update_curve_shaper(mesh=None):
    """Force-refresh the Shapers deformer.

    v0.2 is a live Maya deformer, so moving connected control curves should update
    automatically. This command is kept as a manual dirty/refresh helper.
    """
    _maya_required()
    if mesh is None:
        sel = cmds.ls(selection=True, long=True) or []
        if not sel:
            raise RuntimeError("Select a Shapers mesh/deformer or pass mesh=...")
        mesh = sel[-1]
    deformer = _find_curve_shaper_deformer(mesh)
    cmds.dgdirty(deformer)
    cmds.refresh(force=True)
    _log("Dirtied/refreshed %s." % deformer)
    return deformer


def reset_curve_shaper(mesh=None):
    """Disable the deformer envelope to show the bind pose."""
    _maya_required()
    if mesh is None:
        sel = cmds.ls(selection=True, long=True) or []
        if not sel:
            raise RuntimeError("Select a Shapers mesh/deformer or pass mesh=...")
        mesh = sel[-1]
    deformer = _find_curve_shaper_deformer(mesh)
    cmds.setAttr("%s.envelope" % deformer, 0.0)
    cmds.refresh(force=True)
    _log("Set %s.envelope to 0. Re-enable it to restore deformation." % deformer)
    return deformer


def rebuild_curve_shaper(mesh=None):
    """Recompute falloff weights against the stored neutral pose."""
    _maya_required()
    if mesh is None:
        sel = cmds.ls(selection=True, long=True) or []
        if not sel:
            raise RuntimeError("Select a Shapers mesh or pass mesh=...")
        mesh = sel[0]
    deformer = _find_curve_shaper_deformer(mesh)
    data = _get_json_attr(deformer, DATA_ATTR)
    falloff = float(cmds.getAttr("%s.%s" % (deformer, FALLOFF_ATTR))) if cmds.attributeQuery(FALLOFF_ATTR, node=deformer, exists=True) else data["falloff"]
    samples = int(data.get("samples", DEFAULT_SAMPLES))
    max_influences = int(data.get("maxInfluences", DEFAULT_MAX_INFLUENCES))
    bind_points = data["bindPoints"]
    curve_samples = data.get("bindCurveSamples") or []
    if not curve_samples:
        bind_curves = data["bindCurves"]
        curve_samples = [_sample_curve(c, samples)[0] for c in bind_curves]
    mesh = _transform(data.get("mesh") or mesh)
    influences, influenced_count = _build_topology_aware_influence_cache(
        mesh, bind_points, curve_samples, falloff, max_influences
    )
    cmds.undoInfo(openChunk=True, chunkName="Shapers Rebuild Falloff")
    try:
        data["version"] = PLUGIN_VERSION
        data["falloff"] = falloff
        data["bindingMode"] = "meshGeodesic"
        data["influences"] = influences
        if data.get("bindMatrices"):
            bind_positions = [_matrix_translation(values) for values in data["bindMatrices"]]
            data["matrixInfluences"] = _build_matrix_influence_cache(
                bind_points, bind_positions, [bool(hits) for hits in influences], max_influences
            )
        _set_json_attr(deformer, DATA_ATTR, data)
        _force_deformer_evaluation(deformer)
    finally:
        cmds.undoInfo(closeChunk=True)
    _log("Rebuilt %s influences: %d/%d vertices influenced." % (deformer, influenced_count, len(bind_points)))
    return deformer


def add_curve(mesh_or_deformer=None, curve=None):
    """Add one or more profile curves and rebuild the deformer weights once."""
    _maya_required()
    if mesh_or_deformer is None or curve is None:
        sel = cmds.ls(selection=True, long=True) or []
        if len(sel) < 2:
            raise RuntimeError("Select a Shapers mesh/deformer, then one or more NURBS curves.")
        mesh_or_deformer = sel[0]
        curve = sel[1:]

    deformer = _find_curve_shaper_deformer(mesh_or_deformer)
    requested_curves = list(curve) if isinstance(curve, (list, tuple)) else [curve]
    data = _get_json_attr(deformer, DATA_ATTR)
    stored_curves = data.get("controlCurves") or data.get("bindCurves") or []
    curves = []
    for existing in stored_curves:
        if not cmds.objExists(existing):
            continue
        existing = _transform(existing)
        curves.append((cmds.ls(existing, long=True) or [existing])[0])
    used_curves = set(curves)
    added_curves = []
    skipped_curves = []
    for requested in requested_curves:
        requested = _transform(requested)
        _shape(requested, "nurbsCurve")
        requested = (cmds.ls(requested, long=True) or [requested])[0]
        if requested in used_curves:
            skipped_curves.append(requested)
            continue
        curves.append(requested)
        used_curves.add(requested)
        added_curves.append(requested)

    if skipped_curves:
        _warn(
            "Skipped %d curve(s) already used by %s: %s."
            % (
                len(skipped_curves),
                deformer,
                " ".join(name.rsplit("|", 1)[-1] for name in skipped_curves),
            )
        )
    if not added_curves:
        _log("No curves added to %s." % deformer)
        return deformer

    cmds.undoInfo(openChunk=True, chunkName="Shapers Add Curve")
    try:
        data, influenced_count = _rebuild_data_from_curves(deformer, data, curves)
        _connect_input_curves(deformer, curves)
        _set_json_attr(deformer, DATA_ATTR, data)
        _force_deformer_evaluation(deformer)
    finally:
        cmds.undoInfo(closeChunk=True)

    curve_word = "curve" if len(added_curves) == 1 else "curves"
    curve_names = " ".join(name.rsplit("|", 1)[-1] for name in added_curves)
    _log("Added %d %s: %s to %s; %d/%d vertices influenced." %
         (len(added_curves), curve_word, curve_names, deformer,
          influenced_count, len(data["bindPoints"])))
    return deformer


def remove_curve(mesh_or_deformer=None, curve=None):
    """Remove one profile curve from an existing Shapers deformer and rebuild weights."""
    _maya_required()
    if mesh_or_deformer is None or curve is None:
        sel = cmds.ls(selection=True, long=True) or []
        if len(sel) < 2:
            raise RuntimeError("Select a Shapers mesh/deformer, then one NURBS curve to remove.")
        mesh_or_deformer = sel[0]
        curve = sel[-1]

    deformer = _find_curve_shaper_deformer(mesh_or_deformer)
    curve = _transform(curve)
    data = _get_json_attr(deformer, DATA_ATTR)
    curves = data.get("controlCurves") or data.get("bindCurves") or []
    curves = [_transform(existing) for existing in curves if cmds.objExists(existing)]
    if curve not in curves:
        raise RuntimeError("%s is not used by %s." % (curve, deformer))
    remaining = [existing for existing in curves if existing != curve]
    if not remaining:
        raise RuntimeError("Cannot remove the last profile curve from %s." % deformer)

    cmds.undoInfo(openChunk=True, chunkName="Shapers Remove Curve")
    try:
        data, influenced_count = _rebuild_data_from_curves(deformer, data, remaining)
        _connect_input_curves(deformer, remaining)
        _set_json_attr(deformer, DATA_ATTR, data)
        _force_deformer_evaluation(deformer)
    finally:
        cmds.undoInfo(closeChunk=True)

    _log("Removed %s from %s; %d/%d vertices influenced." %
         (curve, deformer, influenced_count, len(data["bindPoints"])))
    return deformer


def rebind_curve_shaper(mesh=None):
    """Use the current evaluated mesh and curve positions as the new neutral pose."""
    _maya_required()
    if mesh is None:
        sel = cmds.ls(selection=True, long=True) or []
        if not sel:
            raise RuntimeError("Select a Shapers mesh/deformer or pass mesh=...")
        mesh = sel[-1]
    deformer = _find_curve_shaper_deformer(mesh)
    data = _get_json_attr(deformer, DATA_ATTR)
    mesh = _transform(data.get("mesh") or mesh)
    curves = data.get("controlCurves") or data.get("bindCurves") or []
    if not curves:
        raise RuntimeError("%s has no connected profile curves to rebind." % deformer)

    cmds.undoInfo(openChunk=True, chunkName="Shapers Rebind")
    try:
        bind_points = _mesh_points_world(mesh)
        samples = int(data.get("samples", DEFAULT_SAMPLES))
        falloff = float(cmds.getAttr("%s.%s" % (deformer, FALLOFF_ATTR)))
        max_influences = int(data.get("maxInfluences", DEFAULT_MAX_INFLUENCES))
        curve_samples = [_sample_curve(c, samples)[0] for c in curves]
        influences, influenced_count = _build_topology_aware_influence_cache(
            mesh, bind_points, curve_samples, falloff, max_influences
        )

        data["version"] = PLUGIN_VERSION
        data["mesh"] = mesh
        data["bindPoints"] = bind_points
        data["bindCurves"] = list(curves)
        data["controlCurves"] = list(curves)
        data["falloff"] = falloff
        data["bindingMode"] = "meshGeodesic"
        data["bindCurveSamples"] = curve_samples
        data["influences"] = influences
        matrix_controls = [control for control in data.get("matrixControls", []) if cmds.objExists(control)]
        if matrix_controls:
            bind_matrices = [_matrix_values(control) for control in matrix_controls]
            bind_positions = [_matrix_translation(values) for values in bind_matrices]
            data["bindMatrices"] = bind_matrices
            data["matrixInfluences"] = _build_matrix_influence_cache(
                bind_points, bind_positions, [bool(hits) for hits in influences], max_influences
            )
        _set_json_attr(deformer, DATA_ATTR, data)
        _force_deformer_evaluation(deformer)
    finally:
        cmds.undoInfo(closeChunk=True)

    _log("Rebound %s at the current pose; %d/%d vertices influenced." %
         (deformer, influenced_count, len(bind_points)))
    return deformer


def bake_curve_shaper(mesh=None, delete_controls=False):
    """Bake current evaluated result by deleting construction history."""
    _maya_required()
    if mesh is None:
        sel = cmds.ls(selection=True, long=True) or []
        if not sel:
            raise RuntimeError("Select a Shapers mesh or pass mesh=...")
        mesh = sel[0]
    mesh = _transform(mesh)
    deformer = _find_curve_shaper_deformer(mesh)
    data = _get_json_attr(deformer, DATA_ATTR)
    helpers = []
    if delete_controls:
        helpers.extend(data.get("bindCurves", []))
        helpers.extend(data.get("controlCurves", []))
        helpers.extend(data.get("matrixControls", []))
    cmds.delete(mesh, constructionHistory=True)
    for attr in [RIG_ATTR]:
        if cmds.attributeQuery(attr, node=mesh, exists=True):
            try:
                cmds.deleteAttr("%s.%s" % (mesh, attr))
            except Exception:
                pass
    existing = [h for h in helpers if cmds.objExists(h)]
    if existing:
        cmds.delete(existing)
    _log("Baked Shapers result on %s." % mesh)
    return mesh


def deform_curve_shaper(block, geo_iter, matrix, data_attr, strength_attr, input_curve_attr,
                        matrix_in_attr, normalize_curve_weights_attr=None):
    """Evaluate deformation using attrs owned by the MPx node."""
    envelope_attr = getattr(ompx.cvar, "MPxGeometryFilter_envelope", None)
    if envelope_attr is None:
        envelope_attr = getattr(ompx.cvar, "MPxDeformerNode_envelope")
    env = block.inputValue(envelope_attr).asFloat()
    strength = block.inputValue(strength_attr).asFloat()
    if env == 0.0 or strength == 0.0:
        return None
    normalize_curve_weights = False
    if normalize_curve_weights_attr is not None:
        try:
            normalize_curve_weights = bool(block.inputValue(normalize_curve_weights_attr).asBool())
        except Exception:
            normalize_curve_weights = False

    raw = block.inputValue(data_attr).asString() or "{}"
    try:
        prepared = _evaluation_data(raw)
    except Exception:
        return None

    data = prepared["data"]
    bind_points = prepared["bindPoints"]
    bind_curves = data.get("bindCurves") or []
    samples = int(data.get("samples", DEFAULT_SAMPLES))
    influences = prepared["influences"]
    if not bind_points or not bind_curves or not influences:
        return None

    bind_matrices = prepared["bindMatrices"]
    matrix_influences = prepared["matrixInfluences"]
    current_matrices = []
    if bind_matrices and matrix_influences:
        try:
            matrix_array = block.inputArrayValue(matrix_in_attr)
            for i in range(len(bind_matrices)):
                matrix_array.jumpToArrayElement(i)
                current_matrices.append(matrix_array.inputValue().asMatrix())
        except Exception:
            current_matrices = []

    try:
        ctrl_samples = _connected_curve_samples(block, input_curve_attr, samples)
    except Exception:
        ctrl_samples = [_sample_curve(c, samples)[0] for c in data.get("controlCurves", [])]
    bind_samples = prepared["bindSamples"] or [_sample_curve(c, samples)[0] for c in bind_curves]
    if len(ctrl_samples) != len(bind_samples):
        return None
    bind_frame_sets = prepared["bindFrames"] or [_curve_frames(curve_samples) for curve_samples in bind_samples]
    ctrl_frame_sets = [
        _curve_frames(curve_samples, bind_frame_sets[i])
        for i, curve_samples in enumerate(ctrl_samples)
    ]

    inv_matrix = matrix.inverse()
    while not geo_iter.isDone():
        idx = geo_iter.index()
        if idx < len(bind_points) and idx < len(influences):
            has_curve_influence = bool(influences[idx])
            has_matrix_influence = bool(
                current_matrices
                and idx < len(matrix_influences)
                and matrix_influences[idx]
            )
            if not has_curve_influence and not has_matrix_influence:
                geo_iter.next()
                continue
            p_world = bind_points[idx]
            input_point = geo_iter.position()
            input_point *= matrix
            input_world = [input_point.x, input_point.y, input_point.z]
            if has_matrix_influence:
                target_world = [0.0, 0.0, 0.0]
                valid_weight_total = 0.0
                for matrix_index, weight in matrix_influences[idx]:
                    try:
                        transformed_point = _transform_point_by_matrix_delta(
                            p_world, bind_matrices[matrix_index], current_matrices[matrix_index]
                        )
                        target_world = _vadd(target_world, _vmul(transformed_point, float(weight)))
                        valid_weight_total += float(weight)
                    except Exception:
                        pass
                if valid_weight_total > 1.0e-8:
                    target_world = _vmul(target_world, 1.0 / valid_weight_total)
                    delta_world = _vsub(target_world, p_world)
                    out_world = _vadd(input_world, _vmul(delta_world, env * strength))
                    out_local = om1.MPoint(out_world[0], out_world[1], out_world[2])
                    out_local *= inv_matrix
                    geo_iter.setPosition(out_local)
                    geo_iter.next()
                    continue
            target_world = [0.0, 0.0, 0.0]
            vertex_influences = influences[idx]
            valid_weight_total = 0.0
            for influence in vertex_influences:
                try:
                    if len(influence) >= 4:
                        curve_index, sample_index, segment_t, weight = influence[:4]
                        transformed_point = _transform_point_by_curve_frame(
                            p_world,
                            bind_samples[curve_index],
                            ctrl_samples[curve_index],
                            bind_frame_sets[curve_index],
                            ctrl_frame_sets[curve_index],
                            sample_index,
                            float(segment_t),
                        )
                    else:
                        # Backward compatibility with pre-0.6 nearest-sample caches.
                        curve_index, sample_index, weight = influence
                        d = _vsub(ctrl_samples[curve_index][sample_index], bind_samples[curve_index][sample_index])
                        transformed_point = _vadd(p_world, d)
                    weight = float(weight)
                    target_world = _vadd(target_world, _vmul(transformed_point, weight))
                    valid_weight_total += weight
                except Exception:
                    pass
            blend = env * strength
            if valid_weight_total > 1.0e-8:
                target_world = _vmul(target_world, 1.0 / valid_weight_total)
                delta_world = _vsub(target_world, p_world)
                influence_strength = 1.0 if normalize_curve_weights else min(1.0, valid_weight_total)
                out_world = _vadd(input_world, _vmul(delta_world, blend * influence_strength))
            else:
                out_world = input_world
            out_local = om1.MPoint(out_world[0], out_world[1], out_world[2])
            out_local *= inv_matrix
            geo_iter.setPosition(out_local)
        geo_iter.next()
    return None


class ShapersDeformer(ompx.MPxDeformerNode if ompx else object):
    TYPE_NAME = NODE_NAME
    TYPE_ID = om1.MTypeId(NODE_ID) if om1 else None
    dataAttr = None
    strengthAttr = None
    falloffAttr = None
    normalizeCurveWeightsAttr = None
    inputCurveAttr = None
    matrixInAttr = None

    @staticmethod
    def creator():
        return ompx.asMPxPtr(ShapersDeformer())

    @staticmethod
    def initialize():
        t_attr = om1.MFnTypedAttribute()
        n_attr = om1.MFnNumericAttribute()
        m_attr = om1.MFnMatrixAttribute()
        s_data = om1.MFnStringData()

        ShapersDeformer.dataAttr = t_attr.create(DATA_ATTR, "shd", om1.MFnData.kString, s_data.create("{}"))
        t_attr.setStorable(True)
        t_attr.setKeyable(False)
        t_attr.setHidden(True)
        ShapersDeformer.addAttribute(ShapersDeformer.dataAttr)

        ShapersDeformer.inputCurveAttr = t_attr.create("inputCurve", "ic", om1.MFnData.kNurbsCurve)
        t_attr.setArray(True)
        t_attr.setUsesArrayDataBuilder(True)
        t_attr.setStorable(False)
        t_attr.setConnectable(True)
        ShapersDeformer.addAttribute(ShapersDeformer.inputCurveAttr)

        ShapersDeformer.matrixInAttr = m_attr.create("matrixIn", "mi")
        m_attr.setArray(True)
        m_attr.setUsesArrayDataBuilder(True)
        m_attr.setStorable(False)
        m_attr.setConnectable(True)
        ShapersDeformer.addAttribute(ShapersDeformer.matrixInAttr)

        ShapersDeformer.strengthAttr = n_attr.create(STRENGTH_ATTR, "shs", om1.MFnNumericData.kFloat, 1.0)
        n_attr.setKeyable(True)
        n_attr.setMin(0.0)
        ShapersDeformer.addAttribute(ShapersDeformer.strengthAttr)

        ShapersDeformer.falloffAttr = n_attr.create(FALLOFF_ATTR, "shf", om1.MFnNumericData.kFloat, DEFAULT_FALLOFF)
        n_attr.setKeyable(True)
        n_attr.setMin(0.001)
        ShapersDeformer.addAttribute(ShapersDeformer.falloffAttr)

        ShapersDeformer.normalizeCurveWeightsAttr = n_attr.create(
            NORMALIZE_ATTR, "ncw", om1.MFnNumericData.kBoolean, False
        )
        n_attr.setKeyable(True)
        ShapersDeformer.addAttribute(ShapersDeformer.normalizeCurveWeightsAttr)

        output_geom = getattr(ompx.cvar, "MPxGeometryFilter_outputGeom", None)
        if output_geom is None:
            output_geom = getattr(ompx.cvar, "MPxDeformerNode_outputGeom")
        for attr in (
            ShapersDeformer.dataAttr,
            ShapersDeformer.inputCurveAttr,
            ShapersDeformer.matrixInAttr,
            ShapersDeformer.strengthAttr,
            ShapersDeformer.falloffAttr,
            ShapersDeformer.normalizeCurveWeightsAttr,
        ):
            ShapersDeformer.attributeAffects(attr, output_geom)

    def deform(self, block, geo_iter, matrix, multi_index):
        return deform_curve_shaper(
            block,
            geo_iter,
            matrix,
            ShapersDeformer.dataAttr,
            ShapersDeformer.strengthAttr,
            ShapersDeformer.inputCurveAttr,
            ShapersDeformer.matrixInAttr,
            ShapersDeformer.normalizeCurveWeightsAttr,
        )


def initializePlugin(plugin):
    plugin_fn = ompx.MFnPlugin(plugin, "AdvancedSkeleton Shapers", PLUGIN_VERSION, "Any")
    plugin_fn.registerNode(
        ShapersDeformer.TYPE_NAME,
        ShapersDeformer.TYPE_ID,
        ShapersDeformer.creator,
        ShapersDeformer.initialize,
        ompx.MPxNode.kDeformerNode,
    )
    _log("Loaded plug-in %s. Node: %s." % (PLUGIN_VERSION, NODE_NAME))


def uninitializePlugin(plugin):
    plugin_fn = ompx.MFnPlugin(plugin)
    plugin_fn.deregisterNode(ShapersDeformer.TYPE_ID)
    _log("Unloaded plug-in.")


create_curve_shaper = _with_wait_cursor(create_curve_shaper)
update_curve_shaper = _with_wait_cursor(update_curve_shaper)
reset_curve_shaper = _with_wait_cursor(reset_curve_shaper)
rebuild_curve_shaper = _with_wait_cursor(rebuild_curve_shaper)
add_curve = _with_wait_cursor(add_curve)
remove_curve = _with_wait_cursor(remove_curve)
rebind_curve_shaper = _with_wait_cursor(rebind_curve_shaper)
bake_curve_shaper = _with_wait_cursor(bake_curve_shaper)


# Public helper aliases for AdvancedSkeleton integration.
create = create_shaper = create_curve_shaper
update = update_shaper = update_curve_shaper
reset = reset_shaper = reset_curve_shaper
rebuild = rebuild_shaper = rebuild_curve_shaper
add = add_shaper_curve = add_curve
remove = remove_shaper_curve = remove_curve
rebind = rebind_shaper = rebind_curve_shaper
bake = bake_shaper = bake_curve_shaper
