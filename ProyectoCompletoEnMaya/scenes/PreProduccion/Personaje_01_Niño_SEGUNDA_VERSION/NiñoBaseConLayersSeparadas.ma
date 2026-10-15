//Maya ASCII 2027 scene
//Name: NiñoBaseConLayersSeparadas.ma
//Last modified: Tue, Oct 13, 2026 09:31:28 AM
//Codeset: 1252
file -rdi 1 -ns "model" -rfn "modelRN" -op "v=0;" -typ "mayaAscii" "C:/Users/USUARIO/Documents/GitHub/Animacion3D_Cortometraje_NoEraSoloUnBoton/ProyectoCompletoEnMaya//scenes/PreProduccion/Personaje_01_Niño_SEGUNDA_VERSION/Personaje_01_Niño_Paso_6_RIG_COMPLETO_CON_PESOS_PARA_ANIMAR.ma";
file -r -ns "model" -dr 1 -rfn "modelRN" -op "v=0;" -typ "mayaAscii" "C:/Users/USUARIO/Documents/GitHub/Animacion3D_Cortometraje_NoEraSoloUnBoton/ProyectoCompletoEnMaya//scenes/PreProduccion/Personaje_01_Niño_SEGUNDA_VERSION/Personaje_01_Niño_Paso_6_RIG_COMPLETO_CON_PESOS_PARA_ANIMAR.ma";
requires maya "2027";
requires -nodeType "UsdDefaultSettings" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.37.0";
requires "stereoCamera" "10.0";
requires "mtoa" "5.6.2";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2027";
fileInfo "version" "2027";
fileInfo "cutIdentifier" "202607171511-52c21617ee";
fileInfo "osv" "Windows 11 Home Single Language v2009 (Build: 26200)";
fileInfo "UUID" "4D96B7CA-4F12-5A67-6588-B589A8090EC5";
createNode transform -s -n "persp";
	rename -uid "32C0D691-43CA-D07A-E3EE-EDB6054D4584";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -60.695774142240325 48.02858000402702 66.141227163305089 ;
	setAttr ".r" -type "double3" -9.9383527295601812 670.60000000000298 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "E6364D5E-45F6-526B-FEBF-67ADF5C4D9DB";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 91.979389397451087;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "0F3983D2-4FEE-138C-DDAD-25B4A4B3F983";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "848435A1-447F-86F0-2EE7-12AA6A8B7A5C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "A325CE40-4487-9CB3-9360-5287153BAD45";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -8.7710861909250575 34.851186969421079 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "86F636A6-4C85-EB12-1312-86AF7AF47356";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 43.371068344148163;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "D6B2273B-45DA-8025-80BB-2991DE773E53";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1000.4850886080293 38.782401687996753 2.8926176409468014 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".rpt" -type "double3" -1.6963263599882706e-14 0 -4.6269703241757542e-16 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "FC193F20-46D6-93B1-1E82-7B80DF525E1D";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 189.44803495455562;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" -0.38508860802926392 38.782401687996753 2.892617640946801 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode UsdDefaultSettings -n "UsdDefaultRenderSettings";
	rename -uid "5F0DB563-47A5-ACF4-E11F-D49BA539F40D";
	setAttr ".srl" -type "string" "#usda 1.0\n(\n    renderSettingsPrimPath = \"/Render/SceneRenderSettings\"\n)\n\ndef Scope \"Render\"\n{\n    def RenderSettings \"SceneRenderSettings\"\n    {\n        custom string adskUsd:externalCamera = \"|persp\" (\n            displayName = \"External Camera\"\n        )\n        rel products = </Render/BeautyProduct>\n    }\n\n    def RenderVar \"color\"\n    {\n        uniform string sourceName = \"color\"\n    }\n\n    def RenderProduct \"BeautyProduct\"\n    {\n        rel orderedVars = </Render/color>\n        token productName = \"./default.png\"\n    }\n}\n\n";
	setAttr ".ssl" -type "string" "#usda 1.0\n\n";
	setAttr ".asp" -type "string" "UsdDefaultRenderSettings,/Render/SceneRenderSettings";
lockNode -l 1 ;
createNode UsdDefaultSettings -n "UsdDefaultRenderSettings1";
	rename -uid "6F421948-4CDA-E37C-B05F-A49CA83CC8E1";
	setAttr ".srl" -type "string" "#usda 1.0\n(\n    renderSettingsPrimPath = \"/Render/SceneRenderSettings\"\n)\n\ndef Scope \"Render\"\n{\n    def RenderSettings \"SceneRenderSettings\"\n    {\n        custom string adskUsd:externalCamera = \"|persp\" (\n            displayName = \"External Camera\"\n        )\n        rel products = </Render/BeautyProduct>\n    }\n\n    def RenderVar \"color\"\n    {\n        uniform string sourceName = \"color\"\n    }\n\n    def RenderProduct \"BeautyProduct\"\n    {\n        rel orderedVars = </Render/color>\n        token productName = \"./default.png\"\n    }\n}\n\n";
	setAttr ".ssl" -type "string" "#usda 1.0\n\n";
	setAttr ".asp" -type "string" "UsdDefaultRenderSettings,/Render/SceneRenderSettings";
lockNode -l 1 ;
createNode UsdDefaultSettings -n "UsdDefaultRenderSettings2";
	rename -uid "98B09BF0-40E8-AB1A-15A5-31A2817691F3";
	setAttr ".srl" -type "string" "#usda 1.0\n(\n    renderSettingsPrimPath = \"/Render/SceneRenderSettings\"\n)\n\ndef Scope \"Render\"\n{\n    def RenderSettings \"SceneRenderSettings\"\n    {\n        custom string adskUsd:externalCamera = \"|persp\" (\n            displayName = \"External Camera\"\n        )\n        rel products = </Render/BeautyProduct>\n    }\n\n    def RenderVar \"color\"\n    {\n        uniform string sourceName = \"color\"\n    }\n\n    def RenderProduct \"BeautyProduct\"\n    {\n        rel orderedVars = </Render/color>\n        token productName = \"./default.png\"\n    }\n}\n\n";
	setAttr ".ssl" -type "string" "#usda 1.0\n\n";
	setAttr ".asp" -type "string" "UsdDefaultRenderSettings,/Render/SceneRenderSettings";
lockNode -l 1 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "C3C3AFF7-45FC-A7B1-E992-FD9A8A9613C6";
	setAttr -s 15 ".lnk";
	setAttr -s 15 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "EDDB0DC1-4F32-9AC8-FE83-C79C6FE354FF";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 1 0 ;
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "90590316-46B7-A335-D464-09BFDDDEE966";
createNode displayLayerManager -n "layerManager";
	rename -uid "F07B6953-41B5-9E13-A4A5-AF8D5943C04C";
	setAttr ".cdl" 2;
	setAttr -s 5 ".dli[1:4]"  1 2 3 4;
	setAttr -s 5 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "E69C509A-4D9B-238A-DFF0-BEBF62550618";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "5D1387A8-4406-3AA9-C05C-43AF85BB1602";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "FB609663-41B2-ECB6-80CE-ACB849216602";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "D898B96F-4D1A-65EF-DCB5-41B4412FEF22";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"mayaUsdProxyShapeBaseDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n"
		+ "            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"mayaUsdProxyShapeBaseDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n"
		+ "            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n"
		+ "            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"mayaUsdProxyShapeBaseDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1773\n            -height 1063\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"mayaUsdProxyShapeBaseDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 0\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n"
		+ "            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n"
		+ "            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n"
		+ "            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showRowButtons 1\n                -tangentScale 1\n                -tangentLineThickness 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -hierarchyBelow 0\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            cameraSequencer -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -showThumbnail 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n"
		+ "                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -showNamespace 1\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n"
		+ "                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n"
		+ "                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n"
		+ "                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"motionMakerEditorPanel\" (localizedPanelLabel(\"MotionMaker Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"MotionMaker Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n"
		+ "                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"mayaUsdProxyShapeBaseDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.png\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1773\\n    -height 1063\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"mayaUsdProxyShapeBaseDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1773\\n    -height 1063\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"mayaUsdProxyShapeBaseDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "F1055D89-42C9-E523-5D65-A0B06A2FDB88";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode reference -n "modelRN";
	rename -uid "B7076BA1-4668-3DB6-06C2-F2A3A221F85E";
	setAttr -s 83 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".phl[63]" 0;
	setAttr ".phl[64]" 0;
	setAttr ".phl[65]" 0;
	setAttr ".phl[66]" 0;
	setAttr ".phl[67]" 0;
	setAttr ".phl[68]" 0;
	setAttr ".phl[69]" 0;
	setAttr ".phl[70]" 0;
	setAttr ".phl[71]" 0;
	setAttr ".phl[72]" 0;
	setAttr ".phl[73]" 0;
	setAttr ".phl[74]" 0;
	setAttr ".phl[75]" 0;
	setAttr ".phl[76]" 0;
	setAttr ".phl[77]" 0;
	setAttr ".phl[78]" 0;
	setAttr ".phl[79]" 0;
	setAttr ".phl[80]" 0;
	setAttr ".phl[81]" 0;
	setAttr ".phl[82]" 0;
	setAttr ".phl[83]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"modelRN"
		"modelRN" 0
		"modelRN" 168
		2 "|model:Group|model:MotionSystem|model:MainSystem|model:Main" "translate" 
		" -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKOffsetEye_R|model:FKAimEye_R|model:FKExtraEye_R|model:FKEye_R" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKOffsetJaw_M|model:FKExtraJaw_M|model:FKJaw_M" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKOffsetJaw_M|model:FKExtraJaw_M|model:FKJaw_M" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKOffsetEye_L|model:FKAimEye_L|model:FKExtraEye_L|model:FKEye_L" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKXScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R" 
		"translate" " -type \"double3\" 1.49564663196829351 0.33691375792345374 0.76769556350155188"
		
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKXScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R" 
		"rotate" " -type \"double3\" -3.87447136390784097 57.09213924720774003 -6.47948147879189218"
		
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKXScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKXScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R" 
		"rotate" " -type \"double3\" 0 0 -9.17920726513509244"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKXScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R|model:FKXElbow_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKXScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L" 
		"translate" " -type \"double3\" -1.86761287465832915 -0.26371760304137121 -0.13390295309959688"
		
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKXScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L" 
		"rotate" " -type \"double3\" -16.76319327213956001 55.74194166387153615 2.92693438832926001"
		
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKXScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKXScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L|model:FKXElbow_L|model:FKOffsetWrist_L|model:FKExtraWrist_L|model:FKWrist_L" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKXMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKXMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R|model:FKXMiddleFinger2_R|model:FKOffsetMiddleFinger3_R|model:SDKFKMiddleFinger3_R|model:FKExtraMiddleFinger3_R|model:FKMiddleFinger3_R" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKXThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKXThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R|model:FKXThumbFinger2_R|model:FKOffsetThumbFinger3_R|model:SDKFKThumbFinger3_R|model:FKExtraThumbFinger3_R|model:FKThumbFinger3_R" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKXIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKXIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R|model:FKXIndexFinger2_R|model:FKOffsetIndexFinger3_R|model:SDKFKIndexFinger3_R|model:FKExtraIndexFinger3_R|model:FKIndexFinger3_R" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKXPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKXPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R|model:FKXPinkyFinger2_R|model:FKOffsetPinkyFinger3_R|model:SDKFKPinkyFinger3_R|model:FKExtraPinkyFinger3_R|model:FKPinkyFinger3_R" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKXRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKXRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R|model:FKXRingFinger2_R|model:FKOffsetRingFinger3_R|model:SDKFKRingFinger3_R|model:FKExtraRingFinger3_R|model:FKRingFinger3_R" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M" 
		"translate" " -type \"double3\" 0.071119480793232381 -0.0094671439193598668 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:FKOffsetSpine1_M|model:FKXSpine1_M|model:FKOffsetSpine1Part1_M|model:FKExtraSpine1Part1_M|model:FKSpine1Part1_M|model:FKXSpine1Part1_M|model:FKOffsetSpine1Part2_M|model:FKExtraSpine1Part2_M|model:FKSpine1Part2_M|model:FKXSpine1Part2_M|model:FKOffsetChest_M|model:FKExtraChest_M|model:FKChest_M" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKXMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKXMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L|model:FKXMiddleFinger2_L|model:FKOffsetMiddleFinger3_L|model:SDKFKMiddleFinger3_L|model:FKExtraMiddleFinger3_L|model:FKMiddleFinger3_L" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKXThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKXThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L|model:FKXThumbFinger2_L|model:FKOffsetThumbFinger3_L|model:SDKFKThumbFinger3_L|model:FKExtraThumbFinger3_L|model:FKThumbFinger3_L" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKXIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKXIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L|model:FKXIndexFinger2_L|model:FKOffsetIndexFinger3_L|model:SDKFKIndexFinger3_L|model:FKExtraIndexFinger3_L|model:FKIndexFinger3_L" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKXPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKXPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L|model:FKXPinkyFinger2_L|model:FKOffsetPinkyFinger3_L|model:SDKFKPinkyFinger3_L|model:FKExtraPinkyFinger3_L|model:FKPinkyFinger3_L" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKXRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKXRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L|model:FKXRingFinger2_L|model:FKOffsetRingFinger3_L|model:SDKFKRingFinger3_L|model:FKExtraRingFinger3_L|model:FKRingFinger3_L" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R" 
		"translate" " -type \"double3\" 0 0.32844849479172211 1.55269918489151415"
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:RollOffsetToes_R|model:RollRollerToes_R|model:RollExtraToes_R|model:RollToes_R" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:IKOffsetToes_R|model:IKExtraToes_R|model:IKToes_R" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L" 
		"translate" " -type \"double3\" 0 0.33842106477415967 0.64047244749383392"
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:RollOffsetToes_L|model:RollRollerToes_L|model:RollExtraToes_L|model:RollToes_L" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:IKOffsetToes_L|model:IKExtraToes_L|model:IKToes_L" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetLeg_R|model:PoleExtraLeg_R|model:PoleLeg_R" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetLeg_L|model:PoleExtraLeg_L|model:PoleLeg_L" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:RootSystem|model:RootFollowMain|model:RootOffsetX_M|model:RootExtraX_M|model:RootX_M" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:DeformationSystem|model:Root_M|model:RootPart1_M|model:RootPart2_M|model:Spine1_M|model:Spine1Part1_M|model:Spine1Part2_M|model:Chest_M|model:Scapula_L" 
		"overrideDisplayType" " 0"
		2 "|model:Group|model:DeformationSystem|model:Root_M|model:RootPart1_M|model:RootPart2_M|model:Spine1_M|model:Spine1Part1_M|model:Spine1Part2_M|model:Chest_M|model:Scapula_L" 
		"overrideLevelOfDetail" " 0"
		2 "|model:Group|model:DeformationSystem|model:Root_M|model:RootPart1_M|model:RootPart2_M|model:Spine1_M|model:Spine1Part1_M|model:Spine1Part2_M|model:Chest_M|model:Scapula_L" 
		"overrideShading" " 1"
		2 "|model:Group|model:DeformationSystem|model:Root_M|model:RootPart1_M|model:RootPart2_M|model:Spine1_M|model:Spine1Part1_M|model:Spine1Part2_M|model:Chest_M|model:Scapula_L" 
		"overrideTexturing" " 1"
		2 "|model:Group|model:DeformationSystem|model:Root_M|model:RootPart1_M|model:RootPart2_M|model:Spine1_M|model:Spine1Part1_M|model:Spine1Part2_M|model:Chest_M|model:Scapula_L" 
		"overridePlayback" " 1"
		2 "|model:Group|model:DeformationSystem|model:Root_M|model:RootPart1_M|model:RootPart2_M|model:Spine1_M|model:Spine1Part1_M|model:Spine1Part2_M|model:Chest_M|model:Scapula_L" 
		"overrideEnabled" " 0"
		2 "|model:Group|model:DeformationSystem|model:Root_M|model:RootPart1_M|model:RootPart2_M|model:Spine1_M|model:Spine1Part1_M|model:Spine1Part2_M|model:Chest_M|model:Scapula_L" 
		"overrideVisibility" " 1"
		2 "|model:Group|model:DeformationSystem|model:Root_M|model:RootPart1_M|model:RootPart2_M|model:Spine1_M|model:Spine1Part1_M|model:Spine1Part2_M|model:Chest_M|model:Scapula_L" 
		"hideOnPlayback" " 0"
		2 "|model:Group|model:DeformationSystem|model:Root_M|model:RootPart1_M|model:RootPart2_M|model:Spine1_M|model:Spine1Part1_M|model:Spine1Part2_M|model:Chest_M|model:Scapula_L" 
		"overrideRGBColors" " 0"
		2 "|model:Group|model:DeformationSystem|model:Root_M|model:RootPart1_M|model:RootPart2_M|model:Spine1_M|model:Spine1Part1_M|model:Spine1Part2_M|model:Chest_M|model:Scapula_L" 
		"overrideColor" " 0"
		2 "|model:Group|model:DeformationSystem|model:Root_M|model:RootPart1_M|model:RootPart2_M|model:Spine1_M|model:Spine1Part1_M|model:Spine1Part2_M|model:Chest_M|model:Scapula_L" 
		"overrideColorRGB" " -type \"float3\" 0 0 0"
		2 "|model:Group|model:DeformationSystem|model:Root_M|model:RootPart1_M|model:RootPart2_M|model:Spine1_M|model:Spine1Part1_M|model:Spine1Part2_M|model:Chest_M|model:Scapula_L" 
		"overrideColorA" " 1"
		2 "model:Hi" "displayType" " 0"
		2 "model:Hi" "visibility" " 1"
		2 "model:SkinCage" "visibility" " 0"
		2 "model:SkinCage" "displayOrder" " 3"
		2 "model:SkinCurves1" "displayOrder" " 2"
		2 "model:SkinCurves2" "displayOrder" " 4"
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:MainSystem|model:Main.drawOverride" 
		"modelRN.placeHolderList[1]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M.drawOverride" 
		"modelRN.placeHolderList[2]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.drawOverride" 
		"modelRN.placeHolderList[3]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKOffsetEye_R|model:FKAimEye_R|model:FKExtraEye_R|model:FKEye_R.drawOverride" 
		"modelRN.placeHolderList[4]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKOffsetJaw_M|model:FKExtraJaw_M|model:FKJaw_M.drawOverride" 
		"modelRN.placeHolderList[5]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKOffsetEye_L|model:FKAimEye_L|model:FKExtraEye_L|model:FKEye_L.drawOverride" 
		"modelRN.placeHolderList[6]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R.drawOverride" 
		"modelRN.placeHolderList[7]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKXScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R.drawOverride" 
		"modelRN.placeHolderList[8]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKXScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R.drawOverride" 
		"modelRN.placeHolderList[9]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKXScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R|model:FKXElbow_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.drawOverride" 
		"modelRN.placeHolderList[10]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L.drawOverride" 
		"modelRN.placeHolderList[11]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKXScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L.drawOverride" 
		"modelRN.placeHolderList[12]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKXScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L.drawOverride" 
		"modelRN.placeHolderList[13]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKXScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L|model:FKXElbow_L|model:FKOffsetWrist_L|model:FKExtraWrist_L|model:FKWrist_L.drawOverride" 
		"modelRN.placeHolderList[14]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R.drawOverride" 
		"modelRN.placeHolderList[15]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKXMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R.drawOverride" 
		"modelRN.placeHolderList[16]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKXMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R|model:FKXMiddleFinger2_R|model:FKOffsetMiddleFinger3_R|model:SDKFKMiddleFinger3_R|model:FKExtraMiddleFinger3_R|model:FKMiddleFinger3_R.drawOverride" 
		"modelRN.placeHolderList[17]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R.drawOverride" 
		"modelRN.placeHolderList[18]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKXThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R.drawOverride" 
		"modelRN.placeHolderList[19]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKXThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R|model:FKXThumbFinger2_R|model:FKOffsetThumbFinger3_R|model:SDKFKThumbFinger3_R|model:FKExtraThumbFinger3_R|model:FKThumbFinger3_R.drawOverride" 
		"modelRN.placeHolderList[20]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R.drawOverride" 
		"modelRN.placeHolderList[21]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKXIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R.drawOverride" 
		"modelRN.placeHolderList[22]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKXIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R|model:FKXIndexFinger2_R|model:FKOffsetIndexFinger3_R|model:SDKFKIndexFinger3_R|model:FKExtraIndexFinger3_R|model:FKIndexFinger3_R.drawOverride" 
		"modelRN.placeHolderList[23]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R.drawOverride" 
		"modelRN.placeHolderList[24]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R.drawOverride" 
		"modelRN.placeHolderList[25]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKXPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R.drawOverride" 
		"modelRN.placeHolderList[26]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKXPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R|model:FKXPinkyFinger2_R|model:FKOffsetPinkyFinger3_R|model:SDKFKPinkyFinger3_R|model:FKExtraPinkyFinger3_R|model:FKPinkyFinger3_R.drawOverride" 
		"modelRN.placeHolderList[27]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R.drawOverride" 
		"modelRN.placeHolderList[28]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKXRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R.drawOverride" 
		"modelRN.placeHolderList[29]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKXRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R|model:FKXRingFinger2_R|model:FKOffsetRingFinger3_R|model:SDKFKRingFinger3_R|model:FKExtraRingFinger3_R|model:FKRingFinger3_R.drawOverride" 
		"modelRN.placeHolderList[30]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.drawOverride" 
		"modelRN.placeHolderList[31]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M|model:HipSwingerOffset_M|model:HipSwinger_M.drawOverride" 
		"modelRN.placeHolderList[32]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M.drawOverride" 
		"modelRN.placeHolderList[33]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:FKOffsetSpine1_M|model:FKXSpine1_M|model:FKOffsetSpine1Part1_M|model:FKExtraSpine1Part1_M|model:FKSpine1Part1_M|model:FKXSpine1Part1_M|model:FKOffsetSpine1Part2_M|model:FKExtraSpine1Part2_M|model:FKSpine1Part2_M|model:FKXSpine1Part2_M|model:FKOffsetChest_M|model:FKExtraChest_M|model:FKChest_M.drawOverride" 
		"modelRN.placeHolderList[34]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L.drawOverride" 
		"modelRN.placeHolderList[35]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKXMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L.drawOverride" 
		"modelRN.placeHolderList[36]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKXMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L|model:FKXMiddleFinger2_L|model:FKOffsetMiddleFinger3_L|model:SDKFKMiddleFinger3_L|model:FKExtraMiddleFinger3_L|model:FKMiddleFinger3_L.drawOverride" 
		"modelRN.placeHolderList[37]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L.drawOverride" 
		"modelRN.placeHolderList[38]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKXThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L.drawOverride" 
		"modelRN.placeHolderList[39]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKXThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L|model:FKXThumbFinger2_L|model:FKOffsetThumbFinger3_L|model:SDKFKThumbFinger3_L|model:FKExtraThumbFinger3_L|model:FKThumbFinger3_L.drawOverride" 
		"modelRN.placeHolderList[40]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L.drawOverride" 
		"modelRN.placeHolderList[41]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKXIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L.drawOverride" 
		"modelRN.placeHolderList[42]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKXIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L|model:FKXIndexFinger2_L|model:FKOffsetIndexFinger3_L|model:SDKFKIndexFinger3_L|model:FKExtraIndexFinger3_L|model:FKIndexFinger3_L.drawOverride" 
		"modelRN.placeHolderList[43]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L.drawOverride" 
		"modelRN.placeHolderList[44]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L.drawOverride" 
		"modelRN.placeHolderList[45]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKXPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L.drawOverride" 
		"modelRN.placeHolderList[46]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKXPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L|model:FKXPinkyFinger2_L|model:FKOffsetPinkyFinger3_L|model:SDKFKPinkyFinger3_L|model:FKExtraPinkyFinger3_L|model:FKPinkyFinger3_L.drawOverride" 
		"modelRN.placeHolderList[47]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L.drawOverride" 
		"modelRN.placeHolderList[48]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKXRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L.drawOverride" 
		"modelRN.placeHolderList[49]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKXRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L|model:FKXRingFinger2_L|model:FKOffsetRingFinger3_L|model:SDKFKRingFinger3_L|model:FKExtraRingFinger3_L|model:FKRingFinger3_L.drawOverride" 
		"modelRN.placeHolderList[50]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.drawOverride" 
		"modelRN.placeHolderList[51]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R.drawOverride" 
		"modelRN.placeHolderList[52]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R.drawOverride" 
		"modelRN.placeHolderList[53]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:RollOffsetToes_R|model:RollRollerToes_R|model:RollExtraToes_R|model:RollToes_R.drawOverride" 
		"modelRN.placeHolderList[54]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:IKOffsetToes_R|model:IKExtraToes_R|model:IKToes_R.drawOverride" 
		"modelRN.placeHolderList[55]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.drawOverride" 
		"modelRN.placeHolderList[56]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L.drawOverride" 
		"modelRN.placeHolderList[57]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L.drawOverride" 
		"modelRN.placeHolderList[58]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:RollOffsetToes_L|model:RollRollerToes_L|model:RollExtraToes_L|model:RollToes_L.drawOverride" 
		"modelRN.placeHolderList[59]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:IKOffsetToes_L|model:IKExtraToes_L|model:IKToes_L.drawOverride" 
		"modelRN.placeHolderList[60]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetLeg_R|model:PoleExtraLeg_R|model:PoleLeg_R.drawOverride" 
		"modelRN.placeHolderList[61]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetLeg_L|model:PoleExtraLeg_L|model:PoleLeg_L.drawOverride" 
		"modelRN.placeHolderList[62]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintArm_R|model:FKIKArm_R.drawOverride" 
		"modelRN.placeHolderList[63]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintLeg_R|model:FKIKLeg_R.drawOverride" 
		"modelRN.placeHolderList[64]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintSpine_M|model:FKIKSpine_M.drawOverride" 
		"modelRN.placeHolderList[65]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintArm_L|model:FKIKArm_L.drawOverride" 
		"modelRN.placeHolderList[66]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintLeg_L|model:FKIKLeg_L.drawOverride" 
		"modelRN.placeHolderList[67]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:AimSystem|model:AimEye|model:AimOffsetEye|model:AimFollowEye|model:AimEye_M.drawOverride" 
		"modelRN.placeHolderList[68]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:AimSystem|model:AimEye|model:AimOffsetEye|model:AimFollowEye|model:AimEye_M|model:AimOffsetEye_R|model:AimEye_R.drawOverride" 
		"modelRN.placeHolderList[69]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:AimSystem|model:AimEye|model:AimOffsetEye|model:AimFollowEye|model:AimEye_M|model:AimOffsetEye_L|model:AimEye_L.drawOverride" 
		"modelRN.placeHolderList[70]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:RootSystem|model:RootFollowMain|model:RootOffsetX_M|model:RootExtraX_M|model:RootX_M.drawOverride" 
		"modelRN.placeHolderList[71]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_R.drawOverride" 
		"modelRN.placeHolderList[72]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_L.drawOverride" 
		"modelRN.placeHolderList[73]" ""
		5 4 "modelRN" "|model:Group|model:DeformationSystem|model:Root_M|model:RootPart1_M|model:RootPart2_M|model:Spine1_M|model:Spine1Part1_M|model:Spine1Part2_M|model:Chest_M|model:Neck_M|model:NeckPart1_M|model:NeckPart2_M|model:Head_M|model:model:CurvaControl_PanelFacial_Root|model:model:CurvaControl_PanelFacial_RootShape.drawOverride" 
		"modelRN.placeHolderList[74]" ""
		5 4 "modelRN" "|model:Group|model:DeformationSystem|model:Root_M|model:RootPart1_M|model:RootPart2_M|model:Spine1_M|model:Spine1Part1_M|model:Spine1Part2_M|model:Chest_M|model:Neck_M|model:NeckPart1_M|model:NeckPart2_M|model:Head_M|model:model:CurvaControl_PanelFacial_Root|model:model:CurvaControl_CejaDerechaArriba|model:model:CurvaControl_CejaDerechaArribaShape.drawOverride" 
		"modelRN.placeHolderList[75]" ""
		5 4 "modelRN" "|model:Group|model:DeformationSystem|model:Root_M|model:RootPart1_M|model:RootPart2_M|model:Spine1_M|model:Spine1Part1_M|model:Spine1Part2_M|model:Chest_M|model:Neck_M|model:NeckPart1_M|model:NeckPart2_M|model:Head_M|model:model:CurvaControl_PanelFacial_Root|model:model:CurvaControl_CejaIzquierdaArriba|model:model:CurvaControl_CejaIzquierdaArribaShape.drawOverride" 
		"modelRN.placeHolderList[76]" ""
		5 4 "modelRN" "|model:Group|model:DeformationSystem|model:Root_M|model:RootPart1_M|model:RootPart2_M|model:Spine1_M|model:Spine1Part1_M|model:Spine1Part2_M|model:Chest_M|model:Neck_M|model:NeckPart1_M|model:NeckPart2_M|model:Head_M|model:model:CurvaControl_PanelFacial_Root|model:model:CurvaControl_CejaDerechaAbajo|model:model:CurvaControl_CejaDerechaAbajoShape.drawOverride" 
		"modelRN.placeHolderList[77]" ""
		5 4 "modelRN" "|model:Group|model:DeformationSystem|model:Root_M|model:RootPart1_M|model:RootPart2_M|model:Spine1_M|model:Spine1Part1_M|model:Spine1Part2_M|model:Chest_M|model:Neck_M|model:NeckPart1_M|model:NeckPart2_M|model:Head_M|model:model:CurvaControl_PanelFacial_Root|model:model:CurvaControl_CejaIzquierdaAbajo|model:model:CurvaControl_CejaIzquierdaAbajoShape.drawOverride" 
		"modelRN.placeHolderList[78]" ""
		5 4 "modelRN" "|model:Group|model:DeformationSystem|model:Root_M|model:RootPart1_M|model:RootPart2_M|model:Spine1_M|model:Spine1Part1_M|model:Spine1Part2_M|model:Chest_M|model:Neck_M|model:NeckPart1_M|model:NeckPart2_M|model:Head_M|model:model:CurvaControl_PanelFacial_Root|model:model:CurvaControl_Nariz|model:model:CurvaControl_NarizShape.drawOverride" 
		"modelRN.placeHolderList[79]" ""
		5 4 "modelRN" "|model:Group|model:DeformationSystem|model:Root_M|model:RootPart1_M|model:RootPart2_M|model:Spine1_M|model:Spine1Part1_M|model:Spine1Part2_M|model:Chest_M|model:Neck_M|model:NeckPart1_M|model:NeckPart2_M|model:Head_M|model:model:CurvaControl_PanelFacial_Root|model:model:CurvaControl_Boca|model:model:CurvaControl_BocaShape.drawOverride" 
		"modelRN.placeHolderList[80]" ""
		5 4 "modelRN" "|model:Group|model:DeformationSystem|model:Root_M|model:RootPart1_M|model:RootPart2_M|model:Spine1_M|model:Spine1Part1_M|model:Spine1Part2_M|model:Chest_M|model:Neck_M|model:NeckPart1_M|model:NeckPart2_M|model:Head_M|model:model:CurvaControl_PanelFacial_Root|model:model:CurvaControl_CabezaDeLado|model:model:CurvaControl_CabezaDeLadoShape.drawOverride" 
		"modelRN.placeHolderList[81]" ""
		5 4 "modelRN" "|model:Group|model:DeformationSystem|model:Root_M|model:RootPart1_M|model:RootPart2_M|model:Spine1_M|model:Spine1Part1_M|model:Spine1Part2_M|model:Chest_M|model:Neck_M|model:NeckPart1_M|model:NeckPart2_M|model:Head_M|model:model:CurvaControl_PanelFacial_Root|model:model:CurvaControl_CabezaAbajo|model:model:CurvaControl_CabezaAbajoShape.drawOverride" 
		"modelRN.placeHolderList[82]" ""
		5 4 "modelRN" "|model:Group|model:Geometry|model:model:geo|model:model:Geo_NiñoCompleto|model:model:Geo_CuerpoMasCabeza.drawOverride" 
		"modelRN.placeHolderList[83]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode displayLayer -n "CurvasCorporalesLayer";
	rename -uid "6DE478CE-474A-6440-86FA-968FCE73C736";
	setAttr ".c" 18;
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 2;
createNode displayLayer -n "GeometriaNinoLayer";
	rename -uid "1513AA88-4312-1450-88D8-DA973B0D252A";
	setAttr ".c" 14;
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 4;
createNode UsdDefaultSettings -n "UsdDefaultRenderSettings3";
	rename -uid "FC8BE2C7-43A8-3545-F880-518CB4431535";
	setAttr ".srl" -type "string" "#usda 1.0\n(\n    renderSettingsPrimPath = \"/Render/SceneRenderSettings\"\n)\n\ndef Scope \"Render\"\n{\n    def RenderSettings \"SceneRenderSettings\"\n    {\n        custom string adskUsd:externalCamera = \"|persp\" (\n            displayName = \"External Camera\"\n        )\n        rel products = </Render/BeautyProduct>\n    }\n\n    def RenderVar \"color\"\n    {\n        uniform string sourceName = \"color\"\n    }\n\n    def RenderProduct \"BeautyProduct\"\n    {\n        rel orderedVars = </Render/color>\n        token productName = \"./default.png\"\n    }\n}\n\n";
	setAttr ".ssl" -type "string" "#usda 1.0\n\n";
	setAttr ".asp" -type "string" "UsdDefaultRenderSettings,/Render/SceneRenderSettings";
lockNode -l 1 ;
createNode displayLayer -n "BaseDePosicion_Layer";
	rename -uid "1167961A-4A89-08CE-A8BC-47A3AA0A9D9A";
	setAttr ".c" 6;
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 1;
createNode displayLayer -n "CurvasFacialesLayer";
	rename -uid "B21B9633-44BD-39F2-539E-DAB78DCC8F48";
	setAttr ".c" 13;
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 3;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 15 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 19 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 6 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 3 ".r";
select -ne :defaultTextureList1;
	setAttr -s 6 ".tx";
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :openPBR_shader1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr -s 40 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".dss" -type "string" "openPBR_shader1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 3 ".sol";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[1]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[2]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[3]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[4]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[5]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[6]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[7]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[8]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[9]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[10]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[11]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[12]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[13]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[14]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[15]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[16]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[17]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[18]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[19]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[20]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[21]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[22]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[23]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[24]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[25]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[26]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[27]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[28]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[29]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[30]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[31]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[32]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[33]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[34]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[35]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[36]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[37]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[38]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[39]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[40]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[41]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[42]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[43]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[44]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[45]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[46]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[47]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[48]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[49]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[50]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[51]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[52]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[53]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[54]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[55]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[56]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[57]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[58]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[59]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[60]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[61]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[62]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[63]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[64]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[65]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[66]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[67]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[68]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[69]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[70]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[71]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[72]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[73]";
connectAttr "CurvasFacialesLayer.di" "modelRN.phl[74]";
connectAttr "CurvasFacialesLayer.di" "modelRN.phl[75]";
connectAttr "CurvasFacialesLayer.di" "modelRN.phl[76]";
connectAttr "CurvasFacialesLayer.di" "modelRN.phl[77]";
connectAttr "CurvasFacialesLayer.di" "modelRN.phl[78]";
connectAttr "CurvasFacialesLayer.di" "modelRN.phl[79]";
connectAttr "CurvasFacialesLayer.di" "modelRN.phl[80]";
connectAttr "CurvasFacialesLayer.di" "modelRN.phl[81]";
connectAttr "CurvasFacialesLayer.di" "modelRN.phl[82]";
connectAttr "GeometriaNinoLayer.di" "modelRN.phl[83]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "layerManager.dli[1]" "CurvasCorporalesLayer.id";
connectAttr "layerManager.dli[2]" "GeometriaNinoLayer.id";
connectAttr "layerManager.dli[3]" "BaseDePosicion_Layer.id";
connectAttr "layerManager.dli[4]" "CurvasFacialesLayer.id";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of NiñoBaseConLayersSeparadas.ma
