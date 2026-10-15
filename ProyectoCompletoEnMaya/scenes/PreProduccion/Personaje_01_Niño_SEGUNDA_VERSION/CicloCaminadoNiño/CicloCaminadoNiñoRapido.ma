//Maya ASCII 2027 scene
//Name: CicloCaminadoNiño - copia.ma
//Last modified: Tue, Oct 13, 2026 01:49:47 PM
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
fileInfo "UUID" "98D90C0E-4E13-2887-6360-D385A62D8140";
createNode transform -s -n "persp";
	rename -uid "32C0D691-43CA-D07A-E3EE-EDB6054D4584";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -200.05959978280816 39.700605206652774 -19.711101814728437 ;
	setAttr ".r" -type "double3" -1.2000000000026734 -463.59999999991987 0 ;
	setAttr ".rp" -type "double3" -1.7763568394002505e-15 0 0 ;
	setAttr ".rpt" -type "double3" 1.771583192435833e-15 -1.1854386097750974e-16 4.1740229181168496e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "E6364D5E-45F6-526B-FEBF-67ADF5C4D9DB";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 218.74201704443314;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -4.6646507639267618 36.622999068174707 24.556218779556261 ;
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
	setAttr ".ow" 34.046113405055848;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "A325CE40-4487-9CB3-9360-5287153BAD45";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.8544198031232426 2.8941207894737797 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "86F636A6-4C85-EB12-1312-86AF7AF47356";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 37.086144662162646;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "D6B2273B-45DA-8025-80BB-2991DE773E53";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1000.1696525089975 38.447624272919768 34.819438261830925 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".rpt" -type "double3" -2.0663883494260792e-15 0 1.6011020783450662e-13 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "FC193F20-46D6-93B1-1E82-7B80DF525E1D";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.0142378926239;
	setAttr ".ow" 204.01212936855333;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" -0.15541461637360499 31.791441097319179 -3.0878931839327453 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode UsdDefaultSettings -n "UsdDefaultRenderSettings";
	rename -uid "67021EF9-48E4-284E-985B-0FA28C1FC0C3";
	setAttr ".srl" -type "string" "#usda 1.0\n(\n    renderSettingsPrimPath = \"/Render/SceneRenderSettings\"\n)\n\ndef Scope \"Render\"\n{\n    def RenderSettings \"SceneRenderSettings\"\n    {\n        custom string adskUsd:externalCamera = \"|persp\" (\n            displayName = \"External Camera\"\n        )\n        rel products = </Render/BeautyProduct>\n    }\n\n    def RenderVar \"color\"\n    {\n        uniform string sourceName = \"color\"\n    }\n\n    def RenderProduct \"BeautyProduct\"\n    {\n        rel orderedVars = </Render/color>\n        token productName = \"./default.png\"\n    }\n}\n\n";
	setAttr ".ssl" -type "string" "#usda 1.0\n\n";
	setAttr ".asp" -type "string" "UsdDefaultRenderSettings,/Render/SceneRenderSettings";
lockNode -l 1 ;
createNode UsdDefaultSettings -n "UsdDefaultRenderSettings1";
	rename -uid "93490AAD-45A3-782B-7CDF-92A8EB586543";
	setAttr ".srl" -type "string" "#usda 1.0\n(\n    renderSettingsPrimPath = \"/Render/SceneRenderSettings\"\n)\n\ndef Scope \"Render\"\n{\n    def RenderSettings \"SceneRenderSettings\"\n    {\n        custom string adskUsd:externalCamera = \"|persp\" (\n            displayName = \"External Camera\"\n        )\n        rel products = </Render/BeautyProduct>\n    }\n\n    def RenderVar \"color\"\n    {\n        uniform string sourceName = \"color\"\n    }\n\n    def RenderProduct \"BeautyProduct\"\n    {\n        rel orderedVars = </Render/color>\n        token productName = \"./default.png\"\n    }\n}\n\n";
	setAttr ".ssl" -type "string" "#usda 1.0\n\n";
	setAttr ".asp" -type "string" "UsdDefaultRenderSettings,/Render/SceneRenderSettings";
lockNode -l 1 ;
createNode UsdDefaultSettings -n "UsdDefaultRenderSettings2";
	rename -uid "EAE2E35D-4DA4-8255-FAC1-36A3FC81B63E";
	setAttr ".srl" -type "string" "#usda 1.0\n(\n    renderSettingsPrimPath = \"/Render/SceneRenderSettings\"\n)\n\ndef Scope \"Render\"\n{\n    def RenderSettings \"SceneRenderSettings\"\n    {\n        custom string adskUsd:externalCamera = \"|persp\" (\n            displayName = \"External Camera\"\n        )\n        rel products = </Render/BeautyProduct>\n    }\n\n    def RenderVar \"color\"\n    {\n        uniform string sourceName = \"color\"\n    }\n\n    def RenderProduct \"BeautyProduct\"\n    {\n        rel orderedVars = </Render/color>\n        token productName = \"./default.png\"\n    }\n}\n\n";
	setAttr ".ssl" -type "string" "#usda 1.0\n\n";
	setAttr ".asp" -type "string" "UsdDefaultRenderSettings,/Render/SceneRenderSettings";
lockNode -l 1 ;
createNode UsdDefaultSettings -n "UsdDefaultRenderSettings3";
	rename -uid "CCFF6327-43B0-8BCD-2DCE-75BC6BEBE305";
	setAttr ".srl" -type "string" "#usda 1.0\n(\n    renderSettingsPrimPath = \"/Render/SceneRenderSettings\"\n)\n\ndef Scope \"Render\"\n{\n    def RenderSettings \"SceneRenderSettings\"\n    {\n        custom string adskUsd:externalCamera = \"|persp\" (\n            displayName = \"External Camera\"\n        )\n        rel products = </Render/BeautyProduct>\n    }\n\n    def RenderVar \"color\"\n    {\n        uniform string sourceName = \"color\"\n    }\n\n    def RenderProduct \"BeautyProduct\"\n    {\n        rel orderedVars = </Render/color>\n        token productName = \"./default.png\"\n    }\n}\n\n";
	setAttr ".ssl" -type "string" "#usda 1.0\n\n";
	setAttr ".asp" -type "string" "UsdDefaultRenderSettings,/Render/SceneRenderSettings";
lockNode -l 1 ;
createNode UsdDefaultSettings -n "UsdDefaultRenderSettings4";
	rename -uid "5F0DB563-47A5-ACF4-E11F-D49BA539F40D";
	setAttr ".srl" -type "string" "#usda 1.0\n(\n    renderSettingsPrimPath = \"/Render/SceneRenderSettings\"\n)\n\ndef Scope \"Render\"\n{\n    def RenderSettings \"SceneRenderSettings\"\n    {\n        custom string adskUsd:externalCamera = \"|persp\" (\n            displayName = \"External Camera\"\n        )\n        rel products = </Render/BeautyProduct>\n    }\n\n    def RenderVar \"color\"\n    {\n        uniform string sourceName = \"color\"\n    }\n\n    def RenderProduct \"BeautyProduct\"\n    {\n        rel orderedVars = </Render/color>\n        token productName = \"./default.png\"\n    }\n}\n\n";
	setAttr ".ssl" -type "string" "#usda 1.0\n\n";
	setAttr ".asp" -type "string" "UsdDefaultRenderSettings,/Render/SceneRenderSettings";
lockNode -l 1 ;
createNode UsdDefaultSettings -n "UsdDefaultRenderSettings5";
	rename -uid "6F421948-4CDA-E37C-B05F-A49CA83CC8E1";
	setAttr ".srl" -type "string" "#usda 1.0\n(\n    renderSettingsPrimPath = \"/Render/SceneRenderSettings\"\n)\n\ndef Scope \"Render\"\n{\n    def RenderSettings \"SceneRenderSettings\"\n    {\n        custom string adskUsd:externalCamera = \"|persp\" (\n            displayName = \"External Camera\"\n        )\n        rel products = </Render/BeautyProduct>\n    }\n\n    def RenderVar \"color\"\n    {\n        uniform string sourceName = \"color\"\n    }\n\n    def RenderProduct \"BeautyProduct\"\n    {\n        rel orderedVars = </Render/color>\n        token productName = \"./default.png\"\n    }\n}\n\n";
	setAttr ".ssl" -type "string" "#usda 1.0\n\n";
	setAttr ".asp" -type "string" "UsdDefaultRenderSettings,/Render/SceneRenderSettings";
lockNode -l 1 ;
createNode UsdDefaultSettings -n "UsdDefaultRenderSettings6";
	rename -uid "98B09BF0-40E8-AB1A-15A5-31A2817691F3";
	setAttr ".srl" -type "string" "#usda 1.0\n(\n    renderSettingsPrimPath = \"/Render/SceneRenderSettings\"\n)\n\ndef Scope \"Render\"\n{\n    def RenderSettings \"SceneRenderSettings\"\n    {\n        custom string adskUsd:externalCamera = \"|persp\" (\n            displayName = \"External Camera\"\n        )\n        rel products = </Render/BeautyProduct>\n    }\n\n    def RenderVar \"color\"\n    {\n        uniform string sourceName = \"color\"\n    }\n\n    def RenderProduct \"BeautyProduct\"\n    {\n        rel orderedVars = </Render/color>\n        token productName = \"./default.png\"\n    }\n}\n\n";
	setAttr ".ssl" -type "string" "#usda 1.0\n\n";
	setAttr ".asp" -type "string" "UsdDefaultRenderSettings,/Render/SceneRenderSettings";
lockNode -l 1 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "D6BBCD1F-4F16-E33A-5A0D-74B22970A3BC";
	setAttr -s 15 ".lnk";
	setAttr -s 15 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "3240373C-4376-4C35-9204-4F93317A4882";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 1 0 ;
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "46958164-4512-AF0A-28AC-5AADAB1A1C53";
createNode displayLayerManager -n "layerManager";
	rename -uid "25EB40F7-4B98-30B3-E763-5A82935C8404";
	setAttr ".cdl" 1;
	setAttr -s 5 ".dli[1:4]"  1 2 3 4;
	setAttr -s 5 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "E69C509A-4D9B-238A-DFF0-BEBF62550618";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "B11BB18E-4057-36B9-C574-D9B86C4847AD";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "FB609663-41B2-ECB6-80CE-ACB849216602";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "D898B96F-4D1A-65EF-DCB5-41B4412FEF22";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 636\n            -height 396\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"mayaUsdProxyShapeBaseDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n"
		+ "            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1773\n            -height 1067\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"mayaUsdProxyShapeBaseDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n"
		+ "            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n"
		+ "            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 96\n            -height 0\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"mayaUsdProxyShapeBaseDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 858\n            -height 845\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"mayaUsdProxyShapeBaseDisplayFilter\" 1 \n"
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
		+ "\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Side View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera side` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1773\\n    -height 1067\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"mayaUsdProxyShapeBaseDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera side` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1773\\n    -height 1067\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"mayaUsdProxyShapeBaseDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "F1055D89-42C9-E523-5D65-A0B06A2FDB88";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 24 ";
	setAttr ".st" 6;
createNode reference -n "modelRN";
	rename -uid "B7076BA1-4668-3DB6-06C2-F2A3A221F85E";
	setAttr -s 712 ".phl";
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
	setAttr ".phl[84]" 0;
	setAttr ".phl[85]" 0;
	setAttr ".phl[86]" 0;
	setAttr ".phl[87]" 0;
	setAttr ".phl[88]" 0;
	setAttr ".phl[89]" 0;
	setAttr ".phl[90]" 0;
	setAttr ".phl[91]" 0;
	setAttr ".phl[92]" 0;
	setAttr ".phl[93]" 0;
	setAttr ".phl[94]" 0;
	setAttr ".phl[95]" 0;
	setAttr ".phl[96]" 0;
	setAttr ".phl[97]" 0;
	setAttr ".phl[98]" 0;
	setAttr ".phl[99]" 0;
	setAttr ".phl[100]" 0;
	setAttr ".phl[101]" 0;
	setAttr ".phl[102]" 0;
	setAttr ".phl[103]" 0;
	setAttr ".phl[104]" 0;
	setAttr ".phl[105]" 0;
	setAttr ".phl[106]" 0;
	setAttr ".phl[107]" 0;
	setAttr ".phl[108]" 0;
	setAttr ".phl[109]" 0;
	setAttr ".phl[110]" 0;
	setAttr ".phl[111]" 0;
	setAttr ".phl[112]" 0;
	setAttr ".phl[113]" 0;
	setAttr ".phl[114]" 0;
	setAttr ".phl[115]" 0;
	setAttr ".phl[116]" 0;
	setAttr ".phl[117]" 0;
	setAttr ".phl[118]" 0;
	setAttr ".phl[119]" 0;
	setAttr ".phl[120]" 0;
	setAttr ".phl[121]" 0;
	setAttr ".phl[122]" 0;
	setAttr ".phl[123]" 0;
	setAttr ".phl[124]" 0;
	setAttr ".phl[125]" 0;
	setAttr ".phl[126]" 0;
	setAttr ".phl[127]" 0;
	setAttr ".phl[128]" 0;
	setAttr ".phl[129]" 0;
	setAttr ".phl[130]" 0;
	setAttr ".phl[131]" 0;
	setAttr ".phl[132]" 0;
	setAttr ".phl[133]" 0;
	setAttr ".phl[134]" 0;
	setAttr ".phl[135]" 0;
	setAttr ".phl[136]" 0;
	setAttr ".phl[137]" 0;
	setAttr ".phl[138]" 0;
	setAttr ".phl[139]" 0;
	setAttr ".phl[140]" 0;
	setAttr ".phl[141]" 0;
	setAttr ".phl[142]" 0;
	setAttr ".phl[143]" 0;
	setAttr ".phl[144]" 0;
	setAttr ".phl[145]" 0;
	setAttr ".phl[146]" 0;
	setAttr ".phl[147]" 0;
	setAttr ".phl[148]" 0;
	setAttr ".phl[149]" 0;
	setAttr ".phl[150]" 0;
	setAttr ".phl[151]" 0;
	setAttr ".phl[152]" 0;
	setAttr ".phl[153]" 0;
	setAttr ".phl[154]" 0;
	setAttr ".phl[155]" 0;
	setAttr ".phl[156]" 0;
	setAttr ".phl[157]" 0;
	setAttr ".phl[158]" 0;
	setAttr ".phl[159]" 0;
	setAttr ".phl[160]" 0;
	setAttr ".phl[161]" 0;
	setAttr ".phl[162]" 0;
	setAttr ".phl[163]" 0;
	setAttr ".phl[164]" 0;
	setAttr ".phl[165]" 0;
	setAttr ".phl[166]" 0;
	setAttr ".phl[167]" 0;
	setAttr ".phl[168]" 0;
	setAttr ".phl[169]" 0;
	setAttr ".phl[170]" 0;
	setAttr ".phl[171]" 0;
	setAttr ".phl[172]" 0;
	setAttr ".phl[173]" 0;
	setAttr ".phl[174]" 0;
	setAttr ".phl[175]" 0;
	setAttr ".phl[176]" 0;
	setAttr ".phl[177]" 0;
	setAttr ".phl[178]" 0;
	setAttr ".phl[179]" 0;
	setAttr ".phl[180]" 0;
	setAttr ".phl[181]" 0;
	setAttr ".phl[182]" 0;
	setAttr ".phl[183]" 0;
	setAttr ".phl[184]" 0;
	setAttr ".phl[185]" 0;
	setAttr ".phl[186]" 0;
	setAttr ".phl[187]" 0;
	setAttr ".phl[188]" 0;
	setAttr ".phl[189]" 0;
	setAttr ".phl[190]" 0;
	setAttr ".phl[191]" 0;
	setAttr ".phl[192]" 0;
	setAttr ".phl[193]" 0;
	setAttr ".phl[194]" 0;
	setAttr ".phl[195]" 0;
	setAttr ".phl[196]" 0;
	setAttr ".phl[197]" 0;
	setAttr ".phl[198]" 0;
	setAttr ".phl[199]" 0;
	setAttr ".phl[200]" 0;
	setAttr ".phl[201]" 0;
	setAttr ".phl[202]" 0;
	setAttr ".phl[203]" 0;
	setAttr ".phl[204]" 0;
	setAttr ".phl[205]" 0;
	setAttr ".phl[206]" 0;
	setAttr ".phl[207]" 0;
	setAttr ".phl[208]" 0;
	setAttr ".phl[209]" 0;
	setAttr ".phl[210]" 0;
	setAttr ".phl[211]" 0;
	setAttr ".phl[212]" 0;
	setAttr ".phl[213]" 0;
	setAttr ".phl[214]" 0;
	setAttr ".phl[215]" 0;
	setAttr ".phl[216]" 0;
	setAttr ".phl[217]" 0;
	setAttr ".phl[218]" 0;
	setAttr ".phl[219]" 0;
	setAttr ".phl[220]" 0;
	setAttr ".phl[221]" 0;
	setAttr ".phl[222]" 0;
	setAttr ".phl[223]" 0;
	setAttr ".phl[224]" 0;
	setAttr ".phl[225]" 0;
	setAttr ".phl[226]" 0;
	setAttr ".phl[227]" 0;
	setAttr ".phl[228]" 0;
	setAttr ".phl[229]" 0;
	setAttr ".phl[230]" 0;
	setAttr ".phl[231]" 0;
	setAttr ".phl[232]" 0;
	setAttr ".phl[233]" 0;
	setAttr ".phl[234]" 0;
	setAttr ".phl[235]" 0;
	setAttr ".phl[236]" 0;
	setAttr ".phl[237]" 0;
	setAttr ".phl[238]" 0;
	setAttr ".phl[239]" 0;
	setAttr ".phl[240]" 0;
	setAttr ".phl[241]" 0;
	setAttr ".phl[242]" 0;
	setAttr ".phl[243]" 0;
	setAttr ".phl[244]" 0;
	setAttr ".phl[245]" 0;
	setAttr ".phl[246]" 0;
	setAttr ".phl[247]" 0;
	setAttr ".phl[248]" 0;
	setAttr ".phl[249]" 0;
	setAttr ".phl[250]" 0;
	setAttr ".phl[251]" 0;
	setAttr ".phl[252]" 0;
	setAttr ".phl[253]" 0;
	setAttr ".phl[254]" 0;
	setAttr ".phl[255]" 0;
	setAttr ".phl[256]" 0;
	setAttr ".phl[257]" 0;
	setAttr ".phl[258]" 0;
	setAttr ".phl[259]" 0;
	setAttr ".phl[260]" 0;
	setAttr ".phl[261]" 0;
	setAttr ".phl[262]" 0;
	setAttr ".phl[263]" 0;
	setAttr ".phl[264]" 0;
	setAttr ".phl[265]" 0;
	setAttr ".phl[266]" 0;
	setAttr ".phl[267]" 0;
	setAttr ".phl[268]" 0;
	setAttr ".phl[269]" 0;
	setAttr ".phl[270]" 0;
	setAttr ".phl[271]" 0;
	setAttr ".phl[272]" 0;
	setAttr ".phl[273]" 0;
	setAttr ".phl[274]" 0;
	setAttr ".phl[275]" 0;
	setAttr ".phl[276]" 0;
	setAttr ".phl[277]" 0;
	setAttr ".phl[278]" 0;
	setAttr ".phl[279]" 0;
	setAttr ".phl[280]" 0;
	setAttr ".phl[281]" 0;
	setAttr ".phl[282]" 0;
	setAttr ".phl[283]" 0;
	setAttr ".phl[284]" 0;
	setAttr ".phl[285]" 0;
	setAttr ".phl[286]" 0;
	setAttr ".phl[287]" 0;
	setAttr ".phl[288]" 0;
	setAttr ".phl[289]" 0;
	setAttr ".phl[290]" 0;
	setAttr ".phl[291]" 0;
	setAttr ".phl[292]" 0;
	setAttr ".phl[293]" 0;
	setAttr ".phl[294]" 0;
	setAttr ".phl[295]" 0;
	setAttr ".phl[296]" 0;
	setAttr ".phl[297]" 0;
	setAttr ".phl[298]" 0;
	setAttr ".phl[299]" 0;
	setAttr ".phl[300]" 0;
	setAttr ".phl[301]" 0;
	setAttr ".phl[302]" 0;
	setAttr ".phl[303]" 0;
	setAttr ".phl[304]" 0;
	setAttr ".phl[305]" 0;
	setAttr ".phl[306]" 0;
	setAttr ".phl[307]" 0;
	setAttr ".phl[308]" 0;
	setAttr ".phl[309]" 0;
	setAttr ".phl[310]" 0;
	setAttr ".phl[311]" 0;
	setAttr ".phl[312]" 0;
	setAttr ".phl[313]" 0;
	setAttr ".phl[314]" 0;
	setAttr ".phl[315]" 0;
	setAttr ".phl[316]" 0;
	setAttr ".phl[317]" 0;
	setAttr ".phl[318]" 0;
	setAttr ".phl[319]" 0;
	setAttr ".phl[320]" 0;
	setAttr ".phl[321]" 0;
	setAttr ".phl[322]" 0;
	setAttr ".phl[323]" 0;
	setAttr ".phl[324]" 0;
	setAttr ".phl[325]" 0;
	setAttr ".phl[326]" 0;
	setAttr ".phl[327]" 0;
	setAttr ".phl[328]" 0;
	setAttr ".phl[329]" 0;
	setAttr ".phl[330]" 0;
	setAttr ".phl[331]" 0;
	setAttr ".phl[332]" 0;
	setAttr ".phl[333]" 0;
	setAttr ".phl[334]" 0;
	setAttr ".phl[335]" 0;
	setAttr ".phl[336]" 0;
	setAttr ".phl[337]" 0;
	setAttr ".phl[338]" 0;
	setAttr ".phl[339]" 0;
	setAttr ".phl[340]" 0;
	setAttr ".phl[341]" 0;
	setAttr ".phl[342]" 0;
	setAttr ".phl[343]" 0;
	setAttr ".phl[344]" 0;
	setAttr ".phl[345]" 0;
	setAttr ".phl[346]" 0;
	setAttr ".phl[347]" 0;
	setAttr ".phl[348]" 0;
	setAttr ".phl[349]" 0;
	setAttr ".phl[350]" 0;
	setAttr ".phl[351]" 0;
	setAttr ".phl[352]" 0;
	setAttr ".phl[353]" 0;
	setAttr ".phl[354]" 0;
	setAttr ".phl[355]" 0;
	setAttr ".phl[356]" 0;
	setAttr ".phl[357]" 0;
	setAttr ".phl[358]" 0;
	setAttr ".phl[359]" 0;
	setAttr ".phl[360]" 0;
	setAttr ".phl[361]" 0;
	setAttr ".phl[362]" 0;
	setAttr ".phl[363]" 0;
	setAttr ".phl[364]" 0;
	setAttr ".phl[365]" 0;
	setAttr ".phl[366]" 0;
	setAttr ".phl[367]" 0;
	setAttr ".phl[368]" 0;
	setAttr ".phl[369]" 0;
	setAttr ".phl[370]" 0;
	setAttr ".phl[371]" 0;
	setAttr ".phl[372]" 0;
	setAttr ".phl[373]" 0;
	setAttr ".phl[374]" 0;
	setAttr ".phl[375]" 0;
	setAttr ".phl[376]" 0;
	setAttr ".phl[377]" 0;
	setAttr ".phl[378]" 0;
	setAttr ".phl[379]" 0;
	setAttr ".phl[380]" 0;
	setAttr ".phl[381]" 0;
	setAttr ".phl[382]" 0;
	setAttr ".phl[383]" 0;
	setAttr ".phl[384]" 0;
	setAttr ".phl[385]" 0;
	setAttr ".phl[386]" 0;
	setAttr ".phl[387]" 0;
	setAttr ".phl[388]" 0;
	setAttr ".phl[389]" 0;
	setAttr ".phl[390]" 0;
	setAttr ".phl[391]" 0;
	setAttr ".phl[392]" 0;
	setAttr ".phl[393]" 0;
	setAttr ".phl[394]" 0;
	setAttr ".phl[395]" 0;
	setAttr ".phl[396]" 0;
	setAttr ".phl[397]" 0;
	setAttr ".phl[398]" 0;
	setAttr ".phl[399]" 0;
	setAttr ".phl[400]" 0;
	setAttr ".phl[401]" 0;
	setAttr ".phl[402]" 0;
	setAttr ".phl[403]" 0;
	setAttr ".phl[404]" 0;
	setAttr ".phl[405]" 0;
	setAttr ".phl[406]" 0;
	setAttr ".phl[407]" 0;
	setAttr ".phl[408]" 0;
	setAttr ".phl[409]" 0;
	setAttr ".phl[410]" 0;
	setAttr ".phl[411]" 0;
	setAttr ".phl[412]" 0;
	setAttr ".phl[413]" 0;
	setAttr ".phl[414]" 0;
	setAttr ".phl[415]" 0;
	setAttr ".phl[416]" 0;
	setAttr ".phl[417]" 0;
	setAttr ".phl[418]" 0;
	setAttr ".phl[419]" 0;
	setAttr ".phl[420]" 0;
	setAttr ".phl[421]" 0;
	setAttr ".phl[422]" 0;
	setAttr ".phl[423]" 0;
	setAttr ".phl[424]" 0;
	setAttr ".phl[425]" 0;
	setAttr ".phl[426]" 0;
	setAttr ".phl[427]" 0;
	setAttr ".phl[428]" 0;
	setAttr ".phl[429]" 0;
	setAttr ".phl[430]" 0;
	setAttr ".phl[431]" 0;
	setAttr ".phl[432]" 0;
	setAttr ".phl[433]" 0;
	setAttr ".phl[434]" 0;
	setAttr ".phl[435]" 0;
	setAttr ".phl[436]" 0;
	setAttr ".phl[437]" 0;
	setAttr ".phl[438]" 0;
	setAttr ".phl[439]" 0;
	setAttr ".phl[440]" 0;
	setAttr ".phl[441]" 0;
	setAttr ".phl[442]" 0;
	setAttr ".phl[443]" 0;
	setAttr ".phl[444]" 0;
	setAttr ".phl[445]" 0;
	setAttr ".phl[446]" 0;
	setAttr ".phl[447]" 0;
	setAttr ".phl[448]" 0;
	setAttr ".phl[449]" 0;
	setAttr ".phl[450]" 0;
	setAttr ".phl[451]" 0;
	setAttr ".phl[452]" 0;
	setAttr ".phl[453]" 0;
	setAttr ".phl[454]" 0;
	setAttr ".phl[455]" 0;
	setAttr ".phl[456]" 0;
	setAttr ".phl[457]" 0;
	setAttr ".phl[458]" 0;
	setAttr ".phl[459]" 0;
	setAttr ".phl[460]" 0;
	setAttr ".phl[461]" 0;
	setAttr ".phl[462]" 0;
	setAttr ".phl[463]" 0;
	setAttr ".phl[464]" 0;
	setAttr ".phl[465]" 0;
	setAttr ".phl[466]" 0;
	setAttr ".phl[467]" 0;
	setAttr ".phl[468]" 0;
	setAttr ".phl[469]" 0;
	setAttr ".phl[470]" 0;
	setAttr ".phl[471]" 0;
	setAttr ".phl[472]" 0;
	setAttr ".phl[473]" 0;
	setAttr ".phl[474]" 0;
	setAttr ".phl[475]" 0;
	setAttr ".phl[476]" 0;
	setAttr ".phl[477]" 0;
	setAttr ".phl[478]" 0;
	setAttr ".phl[479]" 0;
	setAttr ".phl[480]" 0;
	setAttr ".phl[481]" 0;
	setAttr ".phl[482]" 0;
	setAttr ".phl[483]" 0;
	setAttr ".phl[484]" 0;
	setAttr ".phl[485]" 0;
	setAttr ".phl[486]" 0;
	setAttr ".phl[487]" 0;
	setAttr ".phl[488]" 0;
	setAttr ".phl[489]" 0;
	setAttr ".phl[490]" 0;
	setAttr ".phl[491]" 0;
	setAttr ".phl[492]" 0;
	setAttr ".phl[493]" 0;
	setAttr ".phl[494]" 0;
	setAttr ".phl[495]" 0;
	setAttr ".phl[496]" 0;
	setAttr ".phl[497]" 0;
	setAttr ".phl[498]" 0;
	setAttr ".phl[499]" 0;
	setAttr ".phl[500]" 0;
	setAttr ".phl[501]" 0;
	setAttr ".phl[502]" 0;
	setAttr ".phl[503]" 0;
	setAttr ".phl[504]" 0;
	setAttr ".phl[505]" 0;
	setAttr ".phl[506]" 0;
	setAttr ".phl[507]" 0;
	setAttr ".phl[508]" 0;
	setAttr ".phl[509]" 0;
	setAttr ".phl[510]" 0;
	setAttr ".phl[511]" 0;
	setAttr ".phl[512]" 0;
	setAttr ".phl[513]" 0;
	setAttr ".phl[514]" 0;
	setAttr ".phl[515]" 0;
	setAttr ".phl[516]" 0;
	setAttr ".phl[517]" 0;
	setAttr ".phl[518]" 0;
	setAttr ".phl[519]" 0;
	setAttr ".phl[520]" 0;
	setAttr ".phl[521]" 0;
	setAttr ".phl[522]" 0;
	setAttr ".phl[523]" 0;
	setAttr ".phl[524]" 0;
	setAttr ".phl[525]" 0;
	setAttr ".phl[526]" 0;
	setAttr ".phl[527]" 0;
	setAttr ".phl[528]" 0;
	setAttr ".phl[529]" 0;
	setAttr ".phl[530]" 0;
	setAttr ".phl[531]" 0;
	setAttr ".phl[532]" 0;
	setAttr ".phl[533]" 0;
	setAttr ".phl[534]" 0;
	setAttr ".phl[535]" 0;
	setAttr ".phl[536]" 0;
	setAttr ".phl[537]" 0;
	setAttr ".phl[538]" 0;
	setAttr ".phl[539]" 0;
	setAttr ".phl[540]" 0;
	setAttr ".phl[541]" 0;
	setAttr ".phl[542]" 0;
	setAttr ".phl[543]" 0;
	setAttr ".phl[544]" 0;
	setAttr ".phl[545]" 0;
	setAttr ".phl[546]" 0;
	setAttr ".phl[547]" 0;
	setAttr ".phl[548]" 0;
	setAttr ".phl[549]" 0;
	setAttr ".phl[550]" 0;
	setAttr ".phl[551]" 0;
	setAttr ".phl[552]" 0;
	setAttr ".phl[553]" 0;
	setAttr ".phl[554]" 0;
	setAttr ".phl[555]" 0;
	setAttr ".phl[556]" 0;
	setAttr ".phl[557]" 0;
	setAttr ".phl[558]" 0;
	setAttr ".phl[559]" 0;
	setAttr ".phl[560]" 0;
	setAttr ".phl[561]" 0;
	setAttr ".phl[562]" 0;
	setAttr ".phl[563]" 0;
	setAttr ".phl[564]" 0;
	setAttr ".phl[565]" 0;
	setAttr ".phl[566]" 0;
	setAttr ".phl[567]" 0;
	setAttr ".phl[568]" 0;
	setAttr ".phl[569]" 0;
	setAttr ".phl[570]" 0;
	setAttr ".phl[571]" 0;
	setAttr ".phl[572]" 0;
	setAttr ".phl[573]" 0;
	setAttr ".phl[574]" 0;
	setAttr ".phl[575]" 0;
	setAttr ".phl[576]" 0;
	setAttr ".phl[577]" 0;
	setAttr ".phl[578]" 0;
	setAttr ".phl[579]" 0;
	setAttr ".phl[580]" 0;
	setAttr ".phl[581]" 0;
	setAttr ".phl[582]" 0;
	setAttr ".phl[583]" 0;
	setAttr ".phl[584]" 0;
	setAttr ".phl[585]" 0;
	setAttr ".phl[586]" 0;
	setAttr ".phl[587]" 0;
	setAttr ".phl[588]" 0;
	setAttr ".phl[589]" 0;
	setAttr ".phl[590]" 0;
	setAttr ".phl[591]" 0;
	setAttr ".phl[592]" 0;
	setAttr ".phl[593]" 0;
	setAttr ".phl[594]" 0;
	setAttr ".phl[595]" 0;
	setAttr ".phl[596]" 0;
	setAttr ".phl[597]" 0;
	setAttr ".phl[598]" 0;
	setAttr ".phl[599]" 0;
	setAttr ".phl[600]" 0;
	setAttr ".phl[601]" 0;
	setAttr ".phl[602]" 0;
	setAttr ".phl[603]" 0;
	setAttr ".phl[604]" 0;
	setAttr ".phl[605]" 0;
	setAttr ".phl[606]" 0;
	setAttr ".phl[607]" 0;
	setAttr ".phl[608]" 0;
	setAttr ".phl[609]" 0;
	setAttr ".phl[610]" 0;
	setAttr ".phl[611]" 0;
	setAttr ".phl[612]" 0;
	setAttr ".phl[613]" 0;
	setAttr ".phl[614]" 0;
	setAttr ".phl[615]" 0;
	setAttr ".phl[616]" 0;
	setAttr ".phl[617]" 0;
	setAttr ".phl[618]" 0;
	setAttr ".phl[619]" 0;
	setAttr ".phl[620]" 0;
	setAttr ".phl[621]" 0;
	setAttr ".phl[622]" 0;
	setAttr ".phl[623]" 0;
	setAttr ".phl[624]" 0;
	setAttr ".phl[625]" 0;
	setAttr ".phl[626]" 0;
	setAttr ".phl[627]" 0;
	setAttr ".phl[628]" 0;
	setAttr ".phl[629]" 0;
	setAttr ".phl[630]" 0;
	setAttr ".phl[631]" 0;
	setAttr ".phl[632]" 0;
	setAttr ".phl[633]" 0;
	setAttr ".phl[634]" 0;
	setAttr ".phl[635]" 0;
	setAttr ".phl[636]" 0;
	setAttr ".phl[637]" 0;
	setAttr ".phl[638]" 0;
	setAttr ".phl[639]" 0;
	setAttr ".phl[640]" 0;
	setAttr ".phl[641]" 0;
	setAttr ".phl[642]" 0;
	setAttr ".phl[643]" 0;
	setAttr ".phl[644]" 0;
	setAttr ".phl[645]" 0;
	setAttr ".phl[646]" 0;
	setAttr ".phl[647]" 0;
	setAttr ".phl[648]" 0;
	setAttr ".phl[649]" 0;
	setAttr ".phl[650]" 0;
	setAttr ".phl[651]" 0;
	setAttr ".phl[652]" 0;
	setAttr ".phl[653]" 0;
	setAttr ".phl[654]" 0;
	setAttr ".phl[655]" 0;
	setAttr ".phl[656]" 0;
	setAttr ".phl[657]" 0;
	setAttr ".phl[658]" 0;
	setAttr ".phl[659]" 0;
	setAttr ".phl[660]" 0;
	setAttr ".phl[661]" 0;
	setAttr ".phl[662]" 0;
	setAttr ".phl[663]" 0;
	setAttr ".phl[664]" 0;
	setAttr ".phl[665]" 0;
	setAttr ".phl[666]" 0;
	setAttr ".phl[667]" 0;
	setAttr ".phl[668]" 0;
	setAttr ".phl[669]" 0;
	setAttr ".phl[670]" 0;
	setAttr ".phl[671]" 0;
	setAttr ".phl[672]" 0;
	setAttr ".phl[673]" 0;
	setAttr ".phl[674]" 0;
	setAttr ".phl[675]" 0;
	setAttr ".phl[676]" 0;
	setAttr ".phl[677]" 0;
	setAttr ".phl[678]" 0;
	setAttr ".phl[679]" 0;
	setAttr ".phl[680]" 0;
	setAttr ".phl[681]" 0;
	setAttr ".phl[682]" 0;
	setAttr ".phl[683]" 0;
	setAttr ".phl[684]" 0;
	setAttr ".phl[685]" 0;
	setAttr ".phl[686]" 0;
	setAttr ".phl[687]" 0;
	setAttr ".phl[688]" 0;
	setAttr ".phl[689]" 0;
	setAttr ".phl[690]" 0;
	setAttr ".phl[691]" 0;
	setAttr ".phl[692]" 0;
	setAttr ".phl[693]" 0;
	setAttr ".phl[694]" 0;
	setAttr ".phl[695]" 0;
	setAttr ".phl[696]" 0;
	setAttr ".phl[697]" 0;
	setAttr ".phl[698]" 0;
	setAttr ".phl[699]" 0;
	setAttr ".phl[700]" 0;
	setAttr ".phl[701]" 0;
	setAttr ".phl[702]" 0;
	setAttr ".phl[703]" 0;
	setAttr ".phl[704]" 0;
	setAttr ".phl[705]" 0;
	setAttr ".phl[706]" 0;
	setAttr ".phl[707]" 0;
	setAttr ".phl[708]" 0;
	setAttr ".phl[709]" 0;
	setAttr ".phl[710]" 0;
	setAttr ".phl[711]" 0;
	setAttr ".phl[712]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"modelRN"
		"modelRN" 0
		"modelRN" 974
		2 "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_R" "rotatePivotTranslate" 
		" -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_L" "rotatePivotTranslate" 
		" -type \"double3\" 0 0 0"
		2 "|model:Group|model:DeformationSystem|model:Root_M|model:RootPart1_M|model:RootPart2_M|model:Spine1_M|model:Spine1Part1_M|model:Spine1Part2_M|model:Chest_M|model:Scapula_R|model:Shoulder_R|model:ShoulderPart1_R|model:ShoulderPart2_R" 
		"rotateY" " 0"
		2 "|model:Group|model:DeformationSystem|model:Root_M|model:RootPart1_M|model:RootPart2_M|model:Spine1_M|model:Spine1Part1_M|model:Spine1Part2_M|model:Chest_M|model:Scapula_R|model:Shoulder_R|model:ShoulderPart1_R|model:ShoulderPart2_R" 
		"rotateZ" " 0"
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
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Root_M_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Root_M_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Root_M_middleProfile" 
		"rotate" " -type \"double3\" 90 -7.58241070991083266 89.99999999999997158"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Root_M_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Spine1_M_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Spine1_M_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Spine1_M_middleProfile" 
		"rotate" " -type \"double3\" 90 3.95322213782334408 89.99999999999997158"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Spine1_M_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Chest_M_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Chest_M_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Chest_M_middleProfile" 
		"rotate" " -type \"double3\" 90 8.80031881628896606 89.99999999999997158"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Chest_M_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Neck_M_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Neck_M_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Neck_M_middleProfile" 
		"rotate" " -type \"double3\" 90 2.46739473860982006 89.99999999999997158"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Neck_M_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Head_M_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Head_M_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Head_M_middleProfile" 
		"rotate" " -type \"double3\" 90 -3.00946715255894537 89.99999999999997158"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Head_M_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:HeadEnd_M_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:HeadEnd_M_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:HeadEnd_M_middleProfile" 
		"rotate" " -type \"double3\" 90 -3.00946715255894537 89.99999999999997158"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:HeadEnd_M_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Hip_L_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Hip_L_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Hip_L_middleProfile" 
		"rotate" " -type \"double3\" -84.62062731217976363 6.52326068321565522 91.7170468715074918"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Hip_L_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Knee_L_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Knee_L_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Knee_L_middleProfile" 
		"rotate" " -type \"double3\" -84.65552592265402154 0.19211792054393237 91.1221087503047471"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Knee_L_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Ankle_L_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Ankle_L_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Ankle_L_middleProfile" 
		"rotate" " -type \"double3\" -90.2176725552300951 1.1519035553920262e-05 89.99999985663218638"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Ankle_L_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Toes_L_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Toes_L_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Toes_L_middleProfile" 
		"rotate" " -type \"double3\" -90.41517420395979343 65.75353364204026718 89.59819529282218298"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Toes_L_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:ToesEnd_L_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:ToesEnd_L_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:ToesEnd_L_middleProfile" 
		"rotate" " -type \"double3\" -90.41517420395979343 65.75353364204026718 89.59819529282218298"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:ToesEnd_L_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Hip_R_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Hip_R_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Hip_R_middleProfile" 
		"rotate" " -type \"double3\" 95.37937212678357923 -6.52326055059892962 -91.71704720797754362"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Hip_R_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Knee_R_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Knee_R_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Knee_R_middleProfile" 
		"rotate" " -type \"double3\" 95.34447352134553455 -0.19211778214684516 -91.12210914864790823"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Knee_R_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Ankle_R_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Ankle_R_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Ankle_R_middleProfile" 
		"rotate" " -type \"double3\" 89.782326891589463 -1.1520555738196923e-05 -90.00000025682867033"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Ankle_R_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Toes_R_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Toes_R_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Toes_R_middleProfile" 
		"rotate" " -type \"double3\" 89.5848244490037473 -65.75353363968341114 -89.59819446480790361"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Toes_R_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:ToesEnd_R_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:ToesEnd_R_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:ToesEnd_R_middleProfile" 
		"rotate" " -type \"double3\" 89.5848244490037473 -65.75353363968341114 -89.59819446480790361"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:ToesEnd_R_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Shoulder_L_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Shoulder_L_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Shoulder_L_middleProfile" 
		"rotate" " -type \"double3\" -75.25563646035236331 -7.15952083618311352 -179.99777318080029431"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Shoulder_L_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Elbow_L_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Elbow_L_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Elbow_L_middleProfile" 
		"rotate" " -type \"double3\" -75.35449340365951798 -2.86236572853020599 -178.86681986274592759"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Elbow_L_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Wrist_L_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Wrist_L_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Wrist_L_middleProfile" 
		"rotate" " -type \"double3\" 89.97330743989580526 174.70988373379830705 4.91061619192565413"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Wrist_L_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:MiddleFinger1_L_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:MiddleFinger1_L_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:MiddleFinger1_L_middleProfile" 
		"rotate" " -type \"double3\" -89.84631951779655878 -0.70030663072706945 166.82462629567450563"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:MiddleFinger1_L_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:MiddleFinger2_L_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:MiddleFinger2_L_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:MiddleFinger2_L_middleProfile" 
		"rotate" " -type \"double3\" -89.8149388958496786 -0.44644938924846977 167.06854613458128256"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:MiddleFinger2_L_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:MiddleFinger3_L_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:MiddleFinger3_L_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:MiddleFinger3_L_middleProfile" 
		"rotate" " -type \"double3\" -89.69950428718036051 -0.33135916814948019 164.15124981638280133"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:MiddleFinger3_L_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:MiddleFinger4_L_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:MiddleFinger4_L_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:MiddleFinger4_L_middleProfile" 
		"rotate" " -type \"double3\" -89.69950428718036051 -0.33135916814948019 164.15124981638280133"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:MiddleFinger4_L_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:RingFinger1_L_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:RingFinger1_L_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:RingFinger1_L_middleProfile" 
		"rotate" " -type \"double3\" -89.45931795699117117 -1.74176227272094519 168.11470411151194071"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:RingFinger1_L_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:RingFinger2_L_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:RingFinger2_L_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:RingFinger2_L_middleProfile" 
		"rotate" " -type \"double3\" -89.52061474515613781 -5.69667816673315919 164.24308925783680024"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:RingFinger2_L_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:RingFinger3_L_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:RingFinger3_L_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:RingFinger3_L_middleProfile" 
		"rotate" " -type \"double3\" -89.04234380543677219 -5.11573259095078026 163.70105957349127834"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:RingFinger3_L_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:RingFinger4_L_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:RingFinger4_L_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:RingFinger4_L_middleProfile" 
		"rotate" " -type \"double3\" -89.04234380543677219 -5.11573259095078026 163.70105957349127834"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:RingFinger4_L_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:PinkyFinger1_L_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:PinkyFinger1_L_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:PinkyFinger1_L_middleProfile" 
		"rotate" " -type \"double3\" -89.21272522902053481 -4.09976992689471231 162.72466569609667886"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:PinkyFinger1_L_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:PinkyFinger2_L_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:PinkyFinger2_L_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:PinkyFinger2_L_middleProfile" 
		"rotate" " -type \"double3\" -89.42689508341214832 -7.29707936664786772 167.49084411315087095"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:PinkyFinger2_L_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:PinkyFinger3_L_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:PinkyFinger3_L_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:PinkyFinger3_L_middleProfile" 
		"rotate" " -type \"double3\" -87.37881007628428165 -3.64204186496695748 167.64907131421216491"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:PinkyFinger3_L_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:PinkyFinger4_L_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:PinkyFinger4_L_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:PinkyFinger4_L_middleProfile" 
		"rotate" " -type \"double3\" -87.37881007628428165 -3.64204186496695748 167.64907131421216491"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:PinkyFinger4_L_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:IndexFinger1_L_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:IndexFinger1_L_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:IndexFinger1_L_middleProfile" 
		"rotate" " -type \"double3\" -90.50236504716460217 5.6169892829030772 170.15152818635687026"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:IndexFinger1_L_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:IndexFinger2_L_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:IndexFinger2_L_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:IndexFinger2_L_middleProfile" 
		"rotate" " -type \"double3\" -90.83409014167985163 4.58673845701127192 165.53333546578937785"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:IndexFinger2_L_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:IndexFinger3_L_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:IndexFinger3_L_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:IndexFinger3_L_middleProfile" 
		"rotate" " -type \"double3\" -92.8510951695961495 7.0905029987557322 161.48592238861002102"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:IndexFinger3_L_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:IndexFinger4_L_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:IndexFinger4_L_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:IndexFinger4_L_middleProfile" 
		"rotate" " -type \"double3\" -92.8510951695961495 7.0905029987557322 161.48592238861002102"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:IndexFinger4_L_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:ThumbFinger2_L_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:ThumbFinger2_L_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:ThumbFinger2_L_middleProfile" 
		"rotate" " -type \"double3\" -147.36873539916265941 20.50119359736305569 164.49578471468026919"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:ThumbFinger2_L_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:ThumbFinger3_L_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:ThumbFinger3_L_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:ThumbFinger3_L_middleProfile" 
		"rotate" " -type \"double3\" -147.54148898716195504 7.80563920497716346 168.80652621455269013"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:ThumbFinger3_L_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:ThumbFinger4_L_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:ThumbFinger4_L_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:ThumbFinger4_L_middleProfile" 
		"rotate" " -type \"double3\" -147.54148898716195504 7.80563920497716346 168.80652621455269013"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:ThumbFinger4_L_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Shoulder_R_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Shoulder_R_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Shoulder_R_middleProfile" 
		"rotate" " -type \"double3\" 104.74436311907864194 7.15952083616677371 179.99777312838381249"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Shoulder_R_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Elbow_R_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Elbow_R_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Elbow_R_middleProfile" 
		"rotate" " -type \"double3\" 104.64550617861108606 2.86236572027758074 178.86681984188578554"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Elbow_R_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Wrist_R_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Wrist_R_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Wrist_R_middleProfile" 
		"rotate" " -type \"double3\" 89.97330702235923638 -5.29011630192245796 175.08938384657071197"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:Wrist_R_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:MiddleFinger1_R_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:MiddleFinger1_R_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:MiddleFinger1_R_middleProfile" 
		"rotate" " -type \"double3\" 90.15368007586758381 0.70030672584082421 -166.82462630064088671"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:MiddleFinger1_R_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:MiddleFinger2_R_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:MiddleFinger2_R_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:MiddleFinger2_R_middleProfile" 
		"rotate" " -type \"double3\" 90.18506069743121145 0.44644948263164114 -167.06854613775041685"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:MiddleFinger2_R_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:MiddleFinger3_R_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:MiddleFinger3_R_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:MiddleFinger3_R_middleProfile" 
		"rotate" " -type \"double3\" 90.30049531138594432 0.33135928211073978 -164.15124981870442866"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:MiddleFinger3_R_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:MiddleFinger4_R_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:MiddleFinger4_R_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:MiddleFinger4_R_middleProfile" 
		"rotate" " -type \"double3\" 90.30049531138594432 0.33135928211073978 -164.15124981870442866"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:MiddleFinger4_R_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:RingFinger1_R_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:RingFinger1_R_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:RingFinger1_R_middleProfile" 
		"rotate" " -type \"double3\" 90.5406816344761296 1.7417623586629456 -168.11470412392924345"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:RingFinger1_R_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:RingFinger2_R_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:RingFinger2_R_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:RingFinger2_R_middleProfile" 
		"rotate" " -type \"double3\" 90.47938485124146268 5.69667828005082466 -164.24308929789924605"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:RingFinger2_R_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:RingFinger3_R_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:RingFinger3_R_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:RingFinger3_R_middleProfile" 
		"rotate" " -type \"double3\" 90.95765579244228149 5.11573270806261959 -163.70105960934753853"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:RingFinger3_R_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:RingFinger4_R_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:RingFinger4_R_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:RingFinger4_R_middleProfile" 
		"rotate" " -type \"double3\" 90.95765579244228149 5.11573270806261959 -163.70105960934753853"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:RingFinger4_R_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:PinkyFinger1_R_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:PinkyFinger1_R_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:PinkyFinger1_R_middleProfile" 
		"rotate" " -type \"double3\" 90.78727437149183288 4.09977005081458312 -162.72466572465748413"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:PinkyFinger1_R_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:PinkyFinger2_R_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:PinkyFinger2_R_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:PinkyFinger2_R_middleProfile" 
		"rotate" " -type \"double3\" 90.5731045058775095 7.29707945703090477 -167.49084416531687225"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:PinkyFinger2_R_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:PinkyFinger3_R_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:PinkyFinger3_R_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:PinkyFinger3_R_middleProfile" 
		"rotate" " -type \"double3\" 92.6211895152587914 3.64204195422462496 -167.6490713401585424"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:PinkyFinger3_R_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:PinkyFinger4_R_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:PinkyFinger4_R_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:PinkyFinger4_R_middleProfile" 
		"rotate" " -type \"double3\" 92.6211895152587914 3.64204195422462274 -167.6490713401585424"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:PinkyFinger4_R_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:IndexFinger1_R_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:IndexFinger1_R_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:IndexFinger1_R_middleProfile" 
		"rotate" " -type \"double3\" 89.49763453971127092 -5.61698921152865616 -170.15152814592113373"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:IndexFinger1_R_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:IndexFinger2_R_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:IndexFinger2_R_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:IndexFinger2_R_middleProfile" 
		"rotate" " -type \"double3\" 89.1659094529630778 -4.58673835276542707 -165.5333354333737077"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:IndexFinger2_R_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:IndexFinger3_R_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:IndexFinger3_R_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:IndexFinger3_R_middleProfile" 
		"rotate" " -type \"double3\" 87.14890443166115119 -7.09050286625061599 -161.48592233939044149"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:IndexFinger3_R_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:IndexFinger4_R_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:IndexFinger4_R_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:IndexFinger4_R_middleProfile" 
		"rotate" " -type \"double3\" 87.14890443166115119 -7.09050286625061599 -161.48592233939044149"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:IndexFinger4_R_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:ThumbFinger2_R_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:ThumbFinger2_R_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:ThumbFinger2_R_middleProfile" 
		"rotate" " -type \"double3\" 32.6312641715429379 -20.50119348581774403 -164.49578456432982421"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:ThumbFinger2_R_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:ThumbFinger3_R_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:ThumbFinger3_R_middleProfile" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:ThumbFinger3_R_middleProfile" 
		"rotate" " -type \"double3\" 32.45851059965786334 -7.80563912397189164 -168.80652615843746389"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:ThumbFinger3_R_middleProfile" 
		"scale" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:ThumbFinger4_R_middleProfile" 
		"visibility" " 1"
		2 "|model:Group|model:Geometry|model:MeshCurves|model:ThumbFinger4_R_middleProfile" 
		"translate" " -type \"double3\" -28.1307519019199006 41.18075765908825048 3.220401619356978"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:ThumbFinger4_R_middleProfile" 
		"rotate" " -type \"double3\" 32.45851059965786334 -7.80563912397189164 -168.80652615843746389"
		
		2 "|model:Group|model:Geometry|model:MeshCurves|model:ThumbFinger4_R_middleProfile" 
		"scale" " -type \"double3\" 0.56586713151698376 0.56586713151698376 0.56586713151698398"
		
		2 "model:Hi" "displayType" " 0"
		2 "model:Hi" "visibility" " 1"
		2 "model:SkinCage" "visibility" " 0"
		2 "model:SkinCage" "displayOrder" " 3"
		2 "model:SkinCurves1" "displayOrder" " 2"
		2 "model:SkinCurves2" "displayOrder" " 4"
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:MainSystem|model:Main.translateX" 
		"modelRN.placeHolderList[1]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:MainSystem|model:Main.translateY" 
		"modelRN.placeHolderList[2]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:MainSystem|model:Main.translateZ" 
		"modelRN.placeHolderList[3]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:MainSystem|model:Main.rotateX" 
		"modelRN.placeHolderList[4]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:MainSystem|model:Main.rotateY" 
		"modelRN.placeHolderList[5]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:MainSystem|model:Main.rotateZ" 
		"modelRN.placeHolderList[6]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:MainSystem|model:Main.scaleX" 
		"modelRN.placeHolderList[7]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:MainSystem|model:Main.scaleY" 
		"modelRN.placeHolderList[8]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:MainSystem|model:Main.scaleZ" 
		"modelRN.placeHolderList[9]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:MainSystem|model:Main.drawOverride" 
		"modelRN.placeHolderList[10]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:MainSystem|model:Main.visibility" 
		"modelRN.placeHolderList[11]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M.scaleX" 
		"modelRN.placeHolderList[12]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M.scaleY" 
		"modelRN.placeHolderList[13]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M.scaleZ" 
		"modelRN.placeHolderList[14]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M.translateX" 
		"modelRN.placeHolderList[15]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M.translateY" 
		"modelRN.placeHolderList[16]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M.translateZ" 
		"modelRN.placeHolderList[17]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M.rotateX" 
		"modelRN.placeHolderList[18]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M.rotateY" 
		"modelRN.placeHolderList[19]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M.rotateZ" 
		"modelRN.placeHolderList[20]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M.drawOverride" 
		"modelRN.placeHolderList[21]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.scaleX" 
		"modelRN.placeHolderList[22]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.scaleY" 
		"modelRN.placeHolderList[23]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.scaleZ" 
		"modelRN.placeHolderList[24]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.Global" 
		"modelRN.placeHolderList[25]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.translateX" 
		"modelRN.placeHolderList[26]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.translateY" 
		"modelRN.placeHolderList[27]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.translateZ" 
		"modelRN.placeHolderList[28]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.drawOverride" 
		"modelRN.placeHolderList[29]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.rotateX" 
		"modelRN.placeHolderList[30]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.rotateY" 
		"modelRN.placeHolderList[31]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.rotateZ" 
		"modelRN.placeHolderList[32]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKOffsetEye_R|model:FKAimEye_R|model:FKExtraEye_R|model:FKEye_R.scaleX" 
		"modelRN.placeHolderList[33]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKOffsetEye_R|model:FKAimEye_R|model:FKExtraEye_R|model:FKEye_R.scaleY" 
		"modelRN.placeHolderList[34]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKOffsetEye_R|model:FKAimEye_R|model:FKExtraEye_R|model:FKEye_R.scaleZ" 
		"modelRN.placeHolderList[35]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKOffsetEye_R|model:FKAimEye_R|model:FKExtraEye_R|model:FKEye_R.translateX" 
		"modelRN.placeHolderList[36]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKOffsetEye_R|model:FKAimEye_R|model:FKExtraEye_R|model:FKEye_R.translateY" 
		"modelRN.placeHolderList[37]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKOffsetEye_R|model:FKAimEye_R|model:FKExtraEye_R|model:FKEye_R.translateZ" 
		"modelRN.placeHolderList[38]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKOffsetEye_R|model:FKAimEye_R|model:FKExtraEye_R|model:FKEye_R.drawOverride" 
		"modelRN.placeHolderList[39]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKOffsetEye_R|model:FKAimEye_R|model:FKExtraEye_R|model:FKEye_R.rotateX" 
		"modelRN.placeHolderList[40]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKOffsetEye_R|model:FKAimEye_R|model:FKExtraEye_R|model:FKEye_R.rotateY" 
		"modelRN.placeHolderList[41]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKOffsetEye_R|model:FKAimEye_R|model:FKExtraEye_R|model:FKEye_R.rotateZ" 
		"modelRN.placeHolderList[42]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKOffsetJaw_M|model:FKExtraJaw_M|model:FKJaw_M.scaleX" 
		"modelRN.placeHolderList[43]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKOffsetJaw_M|model:FKExtraJaw_M|model:FKJaw_M.scaleY" 
		"modelRN.placeHolderList[44]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKOffsetJaw_M|model:FKExtraJaw_M|model:FKJaw_M.scaleZ" 
		"modelRN.placeHolderList[45]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKOffsetJaw_M|model:FKExtraJaw_M|model:FKJaw_M.translateX" 
		"modelRN.placeHolderList[46]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKOffsetJaw_M|model:FKExtraJaw_M|model:FKJaw_M.translateY" 
		"modelRN.placeHolderList[47]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKOffsetJaw_M|model:FKExtraJaw_M|model:FKJaw_M.translateZ" 
		"modelRN.placeHolderList[48]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKOffsetJaw_M|model:FKExtraJaw_M|model:FKJaw_M.rotateX" 
		"modelRN.placeHolderList[49]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKOffsetJaw_M|model:FKExtraJaw_M|model:FKJaw_M.rotateY" 
		"modelRN.placeHolderList[50]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKOffsetJaw_M|model:FKExtraJaw_M|model:FKJaw_M.rotateZ" 
		"modelRN.placeHolderList[51]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKOffsetJaw_M|model:FKExtraJaw_M|model:FKJaw_M.drawOverride" 
		"modelRN.placeHolderList[52]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKOffsetEye_L|model:FKAimEye_L|model:FKExtraEye_L|model:FKEye_L.scaleX" 
		"modelRN.placeHolderList[53]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKOffsetEye_L|model:FKAimEye_L|model:FKExtraEye_L|model:FKEye_L.scaleY" 
		"modelRN.placeHolderList[54]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKOffsetEye_L|model:FKAimEye_L|model:FKExtraEye_L|model:FKEye_L.scaleZ" 
		"modelRN.placeHolderList[55]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKOffsetEye_L|model:FKAimEye_L|model:FKExtraEye_L|model:FKEye_L.translateX" 
		"modelRN.placeHolderList[56]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKOffsetEye_L|model:FKAimEye_L|model:FKExtraEye_L|model:FKEye_L.translateY" 
		"modelRN.placeHolderList[57]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKOffsetEye_L|model:FKAimEye_L|model:FKExtraEye_L|model:FKEye_L.translateZ" 
		"modelRN.placeHolderList[58]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKOffsetEye_L|model:FKAimEye_L|model:FKExtraEye_L|model:FKEye_L.drawOverride" 
		"modelRN.placeHolderList[59]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKOffsetEye_L|model:FKAimEye_L|model:FKExtraEye_L|model:FKEye_L.rotateX" 
		"modelRN.placeHolderList[60]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKOffsetEye_L|model:FKAimEye_L|model:FKExtraEye_L|model:FKEye_L.rotateY" 
		"modelRN.placeHolderList[61]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKXNeck_M|model:FKOffsetNeckPart1_M|model:FKExtraNeckPart1_M|model:FKNeckPart1_M|model:FKXNeckPart1_M|model:FKOffsetNeckPart2_M|model:FKExtraNeckPart2_M|model:FKNeckPart2_M|model:FKXNeckPart2_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKXHead_M|model:FKOffsetEye_L|model:FKAimEye_L|model:FKExtraEye_L|model:FKEye_L.rotateZ" 
		"modelRN.placeHolderList[62]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R.scaleX" 
		"modelRN.placeHolderList[63]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R.scaleY" 
		"modelRN.placeHolderList[64]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R.scaleZ" 
		"modelRN.placeHolderList[65]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R.translateX" 
		"modelRN.placeHolderList[66]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R.translateY" 
		"modelRN.placeHolderList[67]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R.translateZ" 
		"modelRN.placeHolderList[68]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R.drawOverride" 
		"modelRN.placeHolderList[69]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R.rotateX" 
		"modelRN.placeHolderList[70]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R.rotateY" 
		"modelRN.placeHolderList[71]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R.rotateZ" 
		"modelRN.placeHolderList[72]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKXScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R.scaleX" 
		"modelRN.placeHolderList[73]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKXScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R.scaleY" 
		"modelRN.placeHolderList[74]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKXScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R.scaleZ" 
		"modelRN.placeHolderList[75]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKXScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R.translateX" 
		"modelRN.placeHolderList[76]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKXScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R.translateY" 
		"modelRN.placeHolderList[77]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKXScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R.translateZ" 
		"modelRN.placeHolderList[78]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKXScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R.rotateX" 
		"modelRN.placeHolderList[79]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKXScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R.rotateY" 
		"modelRN.placeHolderList[80]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKXScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R.rotateZ" 
		"modelRN.placeHolderList[81]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKXScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R.drawOverride" 
		"modelRN.placeHolderList[82]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKXScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R.scaleX" 
		"modelRN.placeHolderList[83]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKXScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R.scaleY" 
		"modelRN.placeHolderList[84]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKXScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R.scaleZ" 
		"modelRN.placeHolderList[85]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKXScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R.translateX" 
		"modelRN.placeHolderList[86]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKXScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R.translateY" 
		"modelRN.placeHolderList[87]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKXScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R.translateZ" 
		"modelRN.placeHolderList[88]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKXScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R.rotateX" 
		"modelRN.placeHolderList[89]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKXScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R.rotateY" 
		"modelRN.placeHolderList[90]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKXScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R.rotateZ" 
		"modelRN.placeHolderList[91]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKXScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R.drawOverride" 
		"modelRN.placeHolderList[92]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKXScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R|model:FKXElbow_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.scaleX" 
		"modelRN.placeHolderList[93]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKXScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R|model:FKXElbow_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.scaleY" 
		"modelRN.placeHolderList[94]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKXScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R|model:FKXElbow_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.scaleZ" 
		"modelRN.placeHolderList[95]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKXScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R|model:FKXElbow_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.translateX" 
		"modelRN.placeHolderList[96]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKXScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R|model:FKXElbow_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.translateY" 
		"modelRN.placeHolderList[97]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKXScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R|model:FKXElbow_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.translateZ" 
		"modelRN.placeHolderList[98]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKXScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R|model:FKXElbow_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.drawOverride" 
		"modelRN.placeHolderList[99]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKXScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R|model:FKXElbow_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.rotateX" 
		"modelRN.placeHolderList[100]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKXScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R|model:FKXElbow_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.rotateY" 
		"modelRN.placeHolderList[101]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKXScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKXShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R|model:FKXElbow_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.rotateZ" 
		"modelRN.placeHolderList[102]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L.scaleX" 
		"modelRN.placeHolderList[103]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L.scaleY" 
		"modelRN.placeHolderList[104]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L.scaleZ" 
		"modelRN.placeHolderList[105]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L.translateX" 
		"modelRN.placeHolderList[106]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L.translateY" 
		"modelRN.placeHolderList[107]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L.translateZ" 
		"modelRN.placeHolderList[108]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L.drawOverride" 
		"modelRN.placeHolderList[109]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L.rotateX" 
		"modelRN.placeHolderList[110]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L.rotateY" 
		"modelRN.placeHolderList[111]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L.rotateZ" 
		"modelRN.placeHolderList[112]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKXScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L.scaleX" 
		"modelRN.placeHolderList[113]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKXScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L.scaleY" 
		"modelRN.placeHolderList[114]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKXScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L.scaleZ" 
		"modelRN.placeHolderList[115]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKXScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L.translateX" 
		"modelRN.placeHolderList[116]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKXScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L.translateY" 
		"modelRN.placeHolderList[117]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKXScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L.translateZ" 
		"modelRN.placeHolderList[118]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKXScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L.rotateX" 
		"modelRN.placeHolderList[119]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKXScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L.rotateY" 
		"modelRN.placeHolderList[120]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKXScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L.rotateZ" 
		"modelRN.placeHolderList[121]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKXScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L.drawOverride" 
		"modelRN.placeHolderList[122]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKXScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L.scaleX" 
		"modelRN.placeHolderList[123]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKXScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L.scaleY" 
		"modelRN.placeHolderList[124]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKXScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L.scaleZ" 
		"modelRN.placeHolderList[125]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKXScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L.translateX" 
		"modelRN.placeHolderList[126]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKXScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L.translateY" 
		"modelRN.placeHolderList[127]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKXScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L.translateZ" 
		"modelRN.placeHolderList[128]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKXScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L.drawOverride" 
		"modelRN.placeHolderList[129]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKXScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L.rotateX" 
		"modelRN.placeHolderList[130]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKXScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L.rotateY" 
		"modelRN.placeHolderList[131]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKXScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L.rotateZ" 
		"modelRN.placeHolderList[132]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKXScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L|model:FKXElbow_L|model:FKOffsetWrist_L|model:FKExtraWrist_L|model:FKWrist_L.scaleX" 
		"modelRN.placeHolderList[133]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKXScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L|model:FKXElbow_L|model:FKOffsetWrist_L|model:FKExtraWrist_L|model:FKWrist_L.scaleY" 
		"modelRN.placeHolderList[134]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKXScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L|model:FKXElbow_L|model:FKOffsetWrist_L|model:FKExtraWrist_L|model:FKWrist_L.scaleZ" 
		"modelRN.placeHolderList[135]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKXScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L|model:FKXElbow_L|model:FKOffsetWrist_L|model:FKExtraWrist_L|model:FKWrist_L.translateX" 
		"modelRN.placeHolderList[136]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKXScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L|model:FKXElbow_L|model:FKOffsetWrist_L|model:FKExtraWrist_L|model:FKWrist_L.translateY" 
		"modelRN.placeHolderList[137]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKXScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L|model:FKXElbow_L|model:FKOffsetWrist_L|model:FKExtraWrist_L|model:FKWrist_L.translateZ" 
		"modelRN.placeHolderList[138]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKXScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L|model:FKXElbow_L|model:FKOffsetWrist_L|model:FKExtraWrist_L|model:FKWrist_L.drawOverride" 
		"modelRN.placeHolderList[139]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKXScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L|model:FKXElbow_L|model:FKOffsetWrist_L|model:FKExtraWrist_L|model:FKWrist_L.rotateX" 
		"modelRN.placeHolderList[140]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKXScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L|model:FKXElbow_L|model:FKOffsetWrist_L|model:FKExtraWrist_L|model:FKWrist_L.rotateY" 
		"modelRN.placeHolderList[141]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKXScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKXShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L|model:FKXElbow_L|model:FKOffsetWrist_L|model:FKExtraWrist_L|model:FKWrist_L.rotateZ" 
		"modelRN.placeHolderList[142]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R.scaleX" 
		"modelRN.placeHolderList[143]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R.scaleY" 
		"modelRN.placeHolderList[144]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R.scaleZ" 
		"modelRN.placeHolderList[145]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R.translateX" 
		"modelRN.placeHolderList[146]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R.translateY" 
		"modelRN.placeHolderList[147]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R.translateZ" 
		"modelRN.placeHolderList[148]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R.drawOverride" 
		"modelRN.placeHolderList[149]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R.rotateX" 
		"modelRN.placeHolderList[150]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R.rotateY" 
		"modelRN.placeHolderList[151]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R.rotateZ" 
		"modelRN.placeHolderList[152]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKXMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R.scaleX" 
		"modelRN.placeHolderList[153]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKXMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R.scaleY" 
		"modelRN.placeHolderList[154]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKXMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R.scaleZ" 
		"modelRN.placeHolderList[155]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKXMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R.translateX" 
		"modelRN.placeHolderList[156]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKXMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R.translateY" 
		"modelRN.placeHolderList[157]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKXMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R.translateZ" 
		"modelRN.placeHolderList[158]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKXMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R.drawOverride" 
		"modelRN.placeHolderList[159]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKXMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R.rotateX" 
		"modelRN.placeHolderList[160]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKXMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R.rotateY" 
		"modelRN.placeHolderList[161]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKXMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R.rotateZ" 
		"modelRN.placeHolderList[162]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKXMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R|model:FKXMiddleFinger2_R|model:FKOffsetMiddleFinger3_R|model:SDKFKMiddleFinger3_R|model:FKExtraMiddleFinger3_R|model:FKMiddleFinger3_R.scaleX" 
		"modelRN.placeHolderList[163]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKXMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R|model:FKXMiddleFinger2_R|model:FKOffsetMiddleFinger3_R|model:SDKFKMiddleFinger3_R|model:FKExtraMiddleFinger3_R|model:FKMiddleFinger3_R.scaleY" 
		"modelRN.placeHolderList[164]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKXMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R|model:FKXMiddleFinger2_R|model:FKOffsetMiddleFinger3_R|model:SDKFKMiddleFinger3_R|model:FKExtraMiddleFinger3_R|model:FKMiddleFinger3_R.scaleZ" 
		"modelRN.placeHolderList[165]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKXMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R|model:FKXMiddleFinger2_R|model:FKOffsetMiddleFinger3_R|model:SDKFKMiddleFinger3_R|model:FKExtraMiddleFinger3_R|model:FKMiddleFinger3_R.translateX" 
		"modelRN.placeHolderList[166]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKXMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R|model:FKXMiddleFinger2_R|model:FKOffsetMiddleFinger3_R|model:SDKFKMiddleFinger3_R|model:FKExtraMiddleFinger3_R|model:FKMiddleFinger3_R.translateY" 
		"modelRN.placeHolderList[167]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKXMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R|model:FKXMiddleFinger2_R|model:FKOffsetMiddleFinger3_R|model:SDKFKMiddleFinger3_R|model:FKExtraMiddleFinger3_R|model:FKMiddleFinger3_R.translateZ" 
		"modelRN.placeHolderList[168]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKXMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R|model:FKXMiddleFinger2_R|model:FKOffsetMiddleFinger3_R|model:SDKFKMiddleFinger3_R|model:FKExtraMiddleFinger3_R|model:FKMiddleFinger3_R.drawOverride" 
		"modelRN.placeHolderList[169]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKXMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R|model:FKXMiddleFinger2_R|model:FKOffsetMiddleFinger3_R|model:SDKFKMiddleFinger3_R|model:FKExtraMiddleFinger3_R|model:FKMiddleFinger3_R.rotateX" 
		"modelRN.placeHolderList[170]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKXMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R|model:FKXMiddleFinger2_R|model:FKOffsetMiddleFinger3_R|model:SDKFKMiddleFinger3_R|model:FKExtraMiddleFinger3_R|model:FKMiddleFinger3_R.rotateY" 
		"modelRN.placeHolderList[171]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKXMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R|model:FKXMiddleFinger2_R|model:FKOffsetMiddleFinger3_R|model:SDKFKMiddleFinger3_R|model:FKExtraMiddleFinger3_R|model:FKMiddleFinger3_R.rotateZ" 
		"modelRN.placeHolderList[172]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R.scaleX" 
		"modelRN.placeHolderList[173]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R.scaleY" 
		"modelRN.placeHolderList[174]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R.scaleZ" 
		"modelRN.placeHolderList[175]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R.translateX" 
		"modelRN.placeHolderList[176]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R.translateY" 
		"modelRN.placeHolderList[177]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R.translateZ" 
		"modelRN.placeHolderList[178]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R.drawOverride" 
		"modelRN.placeHolderList[179]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R.rotateX" 
		"modelRN.placeHolderList[180]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R.rotateY" 
		"modelRN.placeHolderList[181]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R.rotateZ" 
		"modelRN.placeHolderList[182]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKXThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R.scaleX" 
		"modelRN.placeHolderList[183]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKXThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R.scaleY" 
		"modelRN.placeHolderList[184]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKXThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R.scaleZ" 
		"modelRN.placeHolderList[185]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKXThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R.translateX" 
		"modelRN.placeHolderList[186]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKXThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R.translateY" 
		"modelRN.placeHolderList[187]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKXThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R.translateZ" 
		"modelRN.placeHolderList[188]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKXThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R.drawOverride" 
		"modelRN.placeHolderList[189]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKXThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R.rotateX" 
		"modelRN.placeHolderList[190]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKXThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R.rotateY" 
		"modelRN.placeHolderList[191]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKXThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R.rotateZ" 
		"modelRN.placeHolderList[192]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKXThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R|model:FKXThumbFinger2_R|model:FKOffsetThumbFinger3_R|model:SDKFKThumbFinger3_R|model:FKExtraThumbFinger3_R|model:FKThumbFinger3_R.scaleX" 
		"modelRN.placeHolderList[193]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKXThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R|model:FKXThumbFinger2_R|model:FKOffsetThumbFinger3_R|model:SDKFKThumbFinger3_R|model:FKExtraThumbFinger3_R|model:FKThumbFinger3_R.scaleY" 
		"modelRN.placeHolderList[194]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKXThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R|model:FKXThumbFinger2_R|model:FKOffsetThumbFinger3_R|model:SDKFKThumbFinger3_R|model:FKExtraThumbFinger3_R|model:FKThumbFinger3_R.scaleZ" 
		"modelRN.placeHolderList[195]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKXThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R|model:FKXThumbFinger2_R|model:FKOffsetThumbFinger3_R|model:SDKFKThumbFinger3_R|model:FKExtraThumbFinger3_R|model:FKThumbFinger3_R.translateX" 
		"modelRN.placeHolderList[196]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKXThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R|model:FKXThumbFinger2_R|model:FKOffsetThumbFinger3_R|model:SDKFKThumbFinger3_R|model:FKExtraThumbFinger3_R|model:FKThumbFinger3_R.translateY" 
		"modelRN.placeHolderList[197]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKXThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R|model:FKXThumbFinger2_R|model:FKOffsetThumbFinger3_R|model:SDKFKThumbFinger3_R|model:FKExtraThumbFinger3_R|model:FKThumbFinger3_R.translateZ" 
		"modelRN.placeHolderList[198]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKXThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R|model:FKXThumbFinger2_R|model:FKOffsetThumbFinger3_R|model:SDKFKThumbFinger3_R|model:FKExtraThumbFinger3_R|model:FKThumbFinger3_R.drawOverride" 
		"modelRN.placeHolderList[199]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKXThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R|model:FKXThumbFinger2_R|model:FKOffsetThumbFinger3_R|model:SDKFKThumbFinger3_R|model:FKExtraThumbFinger3_R|model:FKThumbFinger3_R.rotateX" 
		"modelRN.placeHolderList[200]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKXThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R|model:FKXThumbFinger2_R|model:FKOffsetThumbFinger3_R|model:SDKFKThumbFinger3_R|model:FKExtraThumbFinger3_R|model:FKThumbFinger3_R.rotateY" 
		"modelRN.placeHolderList[201]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKXThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R|model:FKXThumbFinger2_R|model:FKOffsetThumbFinger3_R|model:SDKFKThumbFinger3_R|model:FKExtraThumbFinger3_R|model:FKThumbFinger3_R.rotateZ" 
		"modelRN.placeHolderList[202]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R.scaleX" 
		"modelRN.placeHolderList[203]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R.scaleY" 
		"modelRN.placeHolderList[204]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R.scaleZ" 
		"modelRN.placeHolderList[205]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R.translateX" 
		"modelRN.placeHolderList[206]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R.translateY" 
		"modelRN.placeHolderList[207]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R.translateZ" 
		"modelRN.placeHolderList[208]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R.drawOverride" 
		"modelRN.placeHolderList[209]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R.rotateX" 
		"modelRN.placeHolderList[210]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R.rotateY" 
		"modelRN.placeHolderList[211]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R.rotateZ" 
		"modelRN.placeHolderList[212]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKXIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R.scaleX" 
		"modelRN.placeHolderList[213]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKXIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R.scaleY" 
		"modelRN.placeHolderList[214]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKXIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R.scaleZ" 
		"modelRN.placeHolderList[215]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKXIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R.translateX" 
		"modelRN.placeHolderList[216]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKXIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R.translateY" 
		"modelRN.placeHolderList[217]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKXIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R.translateZ" 
		"modelRN.placeHolderList[218]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKXIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R.drawOverride" 
		"modelRN.placeHolderList[219]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKXIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R.rotateX" 
		"modelRN.placeHolderList[220]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKXIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R.rotateY" 
		"modelRN.placeHolderList[221]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKXIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R.rotateZ" 
		"modelRN.placeHolderList[222]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKXIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R|model:FKXIndexFinger2_R|model:FKOffsetIndexFinger3_R|model:SDKFKIndexFinger3_R|model:FKExtraIndexFinger3_R|model:FKIndexFinger3_R.scaleX" 
		"modelRN.placeHolderList[223]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKXIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R|model:FKXIndexFinger2_R|model:FKOffsetIndexFinger3_R|model:SDKFKIndexFinger3_R|model:FKExtraIndexFinger3_R|model:FKIndexFinger3_R.scaleY" 
		"modelRN.placeHolderList[224]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKXIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R|model:FKXIndexFinger2_R|model:FKOffsetIndexFinger3_R|model:SDKFKIndexFinger3_R|model:FKExtraIndexFinger3_R|model:FKIndexFinger3_R.scaleZ" 
		"modelRN.placeHolderList[225]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKXIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R|model:FKXIndexFinger2_R|model:FKOffsetIndexFinger3_R|model:SDKFKIndexFinger3_R|model:FKExtraIndexFinger3_R|model:FKIndexFinger3_R.translateX" 
		"modelRN.placeHolderList[226]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKXIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R|model:FKXIndexFinger2_R|model:FKOffsetIndexFinger3_R|model:SDKFKIndexFinger3_R|model:FKExtraIndexFinger3_R|model:FKIndexFinger3_R.translateY" 
		"modelRN.placeHolderList[227]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKXIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R|model:FKXIndexFinger2_R|model:FKOffsetIndexFinger3_R|model:SDKFKIndexFinger3_R|model:FKExtraIndexFinger3_R|model:FKIndexFinger3_R.translateZ" 
		"modelRN.placeHolderList[228]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKXIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R|model:FKXIndexFinger2_R|model:FKOffsetIndexFinger3_R|model:SDKFKIndexFinger3_R|model:FKExtraIndexFinger3_R|model:FKIndexFinger3_R.drawOverride" 
		"modelRN.placeHolderList[229]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKXIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R|model:FKXIndexFinger2_R|model:FKOffsetIndexFinger3_R|model:SDKFKIndexFinger3_R|model:FKExtraIndexFinger3_R|model:FKIndexFinger3_R.rotateX" 
		"modelRN.placeHolderList[230]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKXIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R|model:FKXIndexFinger2_R|model:FKOffsetIndexFinger3_R|model:SDKFKIndexFinger3_R|model:FKExtraIndexFinger3_R|model:FKIndexFinger3_R.rotateY" 
		"modelRN.placeHolderList[231]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKXIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R|model:FKXIndexFinger2_R|model:FKOffsetIndexFinger3_R|model:SDKFKIndexFinger3_R|model:FKExtraIndexFinger3_R|model:FKIndexFinger3_R.rotateZ" 
		"modelRN.placeHolderList[232]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R.scaleX" 
		"modelRN.placeHolderList[233]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R.scaleY" 
		"modelRN.placeHolderList[234]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R.scaleZ" 
		"modelRN.placeHolderList[235]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R.translateX" 
		"modelRN.placeHolderList[236]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R.translateY" 
		"modelRN.placeHolderList[237]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R.translateZ" 
		"modelRN.placeHolderList[238]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R.drawOverride" 
		"modelRN.placeHolderList[239]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R.rotateX" 
		"modelRN.placeHolderList[240]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R.rotateY" 
		"modelRN.placeHolderList[241]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R.rotateZ" 
		"modelRN.placeHolderList[242]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R.scaleX" 
		"modelRN.placeHolderList[243]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R.scaleY" 
		"modelRN.placeHolderList[244]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R.scaleZ" 
		"modelRN.placeHolderList[245]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R.translateX" 
		"modelRN.placeHolderList[246]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R.translateY" 
		"modelRN.placeHolderList[247]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R.translateZ" 
		"modelRN.placeHolderList[248]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R.drawOverride" 
		"modelRN.placeHolderList[249]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R.rotateX" 
		"modelRN.placeHolderList[250]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R.rotateY" 
		"modelRN.placeHolderList[251]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R.rotateZ" 
		"modelRN.placeHolderList[252]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKXPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R.scaleX" 
		"modelRN.placeHolderList[253]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKXPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R.scaleY" 
		"modelRN.placeHolderList[254]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKXPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R.scaleZ" 
		"modelRN.placeHolderList[255]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKXPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R.translateX" 
		"modelRN.placeHolderList[256]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKXPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R.translateY" 
		"modelRN.placeHolderList[257]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKXPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R.translateZ" 
		"modelRN.placeHolderList[258]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKXPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R.drawOverride" 
		"modelRN.placeHolderList[259]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKXPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R.rotateX" 
		"modelRN.placeHolderList[260]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKXPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R.rotateY" 
		"modelRN.placeHolderList[261]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKXPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R.rotateZ" 
		"modelRN.placeHolderList[262]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKXPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R|model:FKXPinkyFinger2_R|model:FKOffsetPinkyFinger3_R|model:SDKFKPinkyFinger3_R|model:FKExtraPinkyFinger3_R|model:FKPinkyFinger3_R.scaleX" 
		"modelRN.placeHolderList[263]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKXPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R|model:FKXPinkyFinger2_R|model:FKOffsetPinkyFinger3_R|model:SDKFKPinkyFinger3_R|model:FKExtraPinkyFinger3_R|model:FKPinkyFinger3_R.scaleY" 
		"modelRN.placeHolderList[264]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKXPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R|model:FKXPinkyFinger2_R|model:FKOffsetPinkyFinger3_R|model:SDKFKPinkyFinger3_R|model:FKExtraPinkyFinger3_R|model:FKPinkyFinger3_R.scaleZ" 
		"modelRN.placeHolderList[265]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKXPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R|model:FKXPinkyFinger2_R|model:FKOffsetPinkyFinger3_R|model:SDKFKPinkyFinger3_R|model:FKExtraPinkyFinger3_R|model:FKPinkyFinger3_R.translateX" 
		"modelRN.placeHolderList[266]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKXPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R|model:FKXPinkyFinger2_R|model:FKOffsetPinkyFinger3_R|model:SDKFKPinkyFinger3_R|model:FKExtraPinkyFinger3_R|model:FKPinkyFinger3_R.translateY" 
		"modelRN.placeHolderList[267]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKXPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R|model:FKXPinkyFinger2_R|model:FKOffsetPinkyFinger3_R|model:SDKFKPinkyFinger3_R|model:FKExtraPinkyFinger3_R|model:FKPinkyFinger3_R.translateZ" 
		"modelRN.placeHolderList[268]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKXPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R|model:FKXPinkyFinger2_R|model:FKOffsetPinkyFinger3_R|model:SDKFKPinkyFinger3_R|model:FKExtraPinkyFinger3_R|model:FKPinkyFinger3_R.drawOverride" 
		"modelRN.placeHolderList[269]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKXPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R|model:FKXPinkyFinger2_R|model:FKOffsetPinkyFinger3_R|model:SDKFKPinkyFinger3_R|model:FKExtraPinkyFinger3_R|model:FKPinkyFinger3_R.rotateX" 
		"modelRN.placeHolderList[270]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKXPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R|model:FKXPinkyFinger2_R|model:FKOffsetPinkyFinger3_R|model:SDKFKPinkyFinger3_R|model:FKExtraPinkyFinger3_R|model:FKPinkyFinger3_R.rotateY" 
		"modelRN.placeHolderList[271]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKXPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R|model:FKXPinkyFinger2_R|model:FKOffsetPinkyFinger3_R|model:SDKFKPinkyFinger3_R|model:FKExtraPinkyFinger3_R|model:FKPinkyFinger3_R.rotateZ" 
		"modelRN.placeHolderList[272]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R.scaleX" 
		"modelRN.placeHolderList[273]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R.scaleY" 
		"modelRN.placeHolderList[274]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R.scaleZ" 
		"modelRN.placeHolderList[275]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R.translateX" 
		"modelRN.placeHolderList[276]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R.translateY" 
		"modelRN.placeHolderList[277]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R.translateZ" 
		"modelRN.placeHolderList[278]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R.drawOverride" 
		"modelRN.placeHolderList[279]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R.rotateX" 
		"modelRN.placeHolderList[280]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R.rotateY" 
		"modelRN.placeHolderList[281]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R.rotateZ" 
		"modelRN.placeHolderList[282]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKXRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R.scaleX" 
		"modelRN.placeHolderList[283]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKXRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R.scaleY" 
		"modelRN.placeHolderList[284]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKXRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R.scaleZ" 
		"modelRN.placeHolderList[285]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKXRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R.translateX" 
		"modelRN.placeHolderList[286]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKXRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R.translateY" 
		"modelRN.placeHolderList[287]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKXRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R.translateZ" 
		"modelRN.placeHolderList[288]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKXRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R.drawOverride" 
		"modelRN.placeHolderList[289]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKXRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R.rotateX" 
		"modelRN.placeHolderList[290]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKXRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R.rotateY" 
		"modelRN.placeHolderList[291]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKXRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R.rotateZ" 
		"modelRN.placeHolderList[292]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKXRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R|model:FKXRingFinger2_R|model:FKOffsetRingFinger3_R|model:SDKFKRingFinger3_R|model:FKExtraRingFinger3_R|model:FKRingFinger3_R.scaleX" 
		"modelRN.placeHolderList[293]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKXRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R|model:FKXRingFinger2_R|model:FKOffsetRingFinger3_R|model:SDKFKRingFinger3_R|model:FKExtraRingFinger3_R|model:FKRingFinger3_R.scaleY" 
		"modelRN.placeHolderList[294]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKXRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R|model:FKXRingFinger2_R|model:FKOffsetRingFinger3_R|model:SDKFKRingFinger3_R|model:FKExtraRingFinger3_R|model:FKRingFinger3_R.scaleZ" 
		"modelRN.placeHolderList[295]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKXRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R|model:FKXRingFinger2_R|model:FKOffsetRingFinger3_R|model:SDKFKRingFinger3_R|model:FKExtraRingFinger3_R|model:FKRingFinger3_R.translateX" 
		"modelRN.placeHolderList[296]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKXRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R|model:FKXRingFinger2_R|model:FKOffsetRingFinger3_R|model:SDKFKRingFinger3_R|model:FKExtraRingFinger3_R|model:FKRingFinger3_R.translateY" 
		"modelRN.placeHolderList[297]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKXRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R|model:FKXRingFinger2_R|model:FKOffsetRingFinger3_R|model:SDKFKRingFinger3_R|model:FKExtraRingFinger3_R|model:FKRingFinger3_R.translateZ" 
		"modelRN.placeHolderList[298]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKXRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R|model:FKXRingFinger2_R|model:FKOffsetRingFinger3_R|model:SDKFKRingFinger3_R|model:FKExtraRingFinger3_R|model:FKRingFinger3_R.drawOverride" 
		"modelRN.placeHolderList[299]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKXRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R|model:FKXRingFinger2_R|model:FKOffsetRingFinger3_R|model:SDKFKRingFinger3_R|model:FKExtraRingFinger3_R|model:FKRingFinger3_R.rotateX" 
		"modelRN.placeHolderList[300]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKXRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R|model:FKXRingFinger2_R|model:FKOffsetRingFinger3_R|model:SDKFKRingFinger3_R|model:FKExtraRingFinger3_R|model:FKRingFinger3_R.rotateY" 
		"modelRN.placeHolderList[301]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetCup_R|model:SDKFKCup_R|model:FKExtraCup_R|model:FKCup_R|model:FKXCup_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKXRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R|model:FKXRingFinger2_R|model:FKOffsetRingFinger3_R|model:SDKFKRingFinger3_R|model:FKExtraRingFinger3_R|model:FKRingFinger3_R.rotateZ" 
		"modelRN.placeHolderList[302]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.scaleX" 
		"modelRN.placeHolderList[303]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.scaleY" 
		"modelRN.placeHolderList[304]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.scaleZ" 
		"modelRN.placeHolderList[305]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.translateX" 
		"modelRN.placeHolderList[306]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.translateY" 
		"modelRN.placeHolderList[307]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.translateZ" 
		"modelRN.placeHolderList[308]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.drawOverride" 
		"modelRN.placeHolderList[309]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.rotateX" 
		"modelRN.placeHolderList[310]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.rotateY" 
		"modelRN.placeHolderList[311]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.rotateZ" 
		"modelRN.placeHolderList[312]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M|model:HipSwingerOffset_M|model:HipSwinger_M.drawOverride" 
		"modelRN.placeHolderList[313]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M|model:HipSwingerOffset_M|model:HipSwinger_M.visibility" 
		"modelRN.placeHolderList[314]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M|model:HipSwingerOffset_M|model:HipSwinger_M.rotateX" 
		"modelRN.placeHolderList[315]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M|model:HipSwingerOffset_M|model:HipSwinger_M.rotateY" 
		"modelRN.placeHolderList[316]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M|model:HipSwingerOffset_M|model:HipSwinger_M.rotateZ" 
		"modelRN.placeHolderList[317]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M.scaleX" 
		"modelRN.placeHolderList[318]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M.scaleY" 
		"modelRN.placeHolderList[319]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M.scaleZ" 
		"modelRN.placeHolderList[320]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M.translateX" 
		"modelRN.placeHolderList[321]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M.translateY" 
		"modelRN.placeHolderList[322]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M.translateZ" 
		"modelRN.placeHolderList[323]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M.drawOverride" 
		"modelRN.placeHolderList[324]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M.rotateX" 
		"modelRN.placeHolderList[325]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M.rotateY" 
		"modelRN.placeHolderList[326]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M.rotateZ" 
		"modelRN.placeHolderList[327]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:FKOffsetSpine1_M|model:FKXSpine1_M|model:FKOffsetSpine1Part1_M|model:FKExtraSpine1Part1_M|model:FKSpine1Part1_M|model:FKXSpine1Part1_M|model:FKOffsetSpine1Part2_M|model:FKExtraSpine1Part2_M|model:FKSpine1Part2_M|model:FKXSpine1Part2_M|model:FKOffsetChest_M|model:FKExtraChest_M|model:FKChest_M.scaleX" 
		"modelRN.placeHolderList[328]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:FKOffsetSpine1_M|model:FKXSpine1_M|model:FKOffsetSpine1Part1_M|model:FKExtraSpine1Part1_M|model:FKSpine1Part1_M|model:FKXSpine1Part1_M|model:FKOffsetSpine1Part2_M|model:FKExtraSpine1Part2_M|model:FKSpine1Part2_M|model:FKXSpine1Part2_M|model:FKOffsetChest_M|model:FKExtraChest_M|model:FKChest_M.scaleY" 
		"modelRN.placeHolderList[329]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:FKOffsetSpine1_M|model:FKXSpine1_M|model:FKOffsetSpine1Part1_M|model:FKExtraSpine1Part1_M|model:FKSpine1Part1_M|model:FKXSpine1Part1_M|model:FKOffsetSpine1Part2_M|model:FKExtraSpine1Part2_M|model:FKSpine1Part2_M|model:FKXSpine1Part2_M|model:FKOffsetChest_M|model:FKExtraChest_M|model:FKChest_M.scaleZ" 
		"modelRN.placeHolderList[330]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:FKOffsetSpine1_M|model:FKXSpine1_M|model:FKOffsetSpine1Part1_M|model:FKExtraSpine1Part1_M|model:FKSpine1Part1_M|model:FKXSpine1Part1_M|model:FKOffsetSpine1Part2_M|model:FKExtraSpine1Part2_M|model:FKSpine1Part2_M|model:FKXSpine1Part2_M|model:FKOffsetChest_M|model:FKExtraChest_M|model:FKChest_M.translateX" 
		"modelRN.placeHolderList[331]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:FKOffsetSpine1_M|model:FKXSpine1_M|model:FKOffsetSpine1Part1_M|model:FKExtraSpine1Part1_M|model:FKSpine1Part1_M|model:FKXSpine1Part1_M|model:FKOffsetSpine1Part2_M|model:FKExtraSpine1Part2_M|model:FKSpine1Part2_M|model:FKXSpine1Part2_M|model:FKOffsetChest_M|model:FKExtraChest_M|model:FKChest_M.translateY" 
		"modelRN.placeHolderList[332]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:FKOffsetSpine1_M|model:FKXSpine1_M|model:FKOffsetSpine1Part1_M|model:FKExtraSpine1Part1_M|model:FKSpine1Part1_M|model:FKXSpine1Part1_M|model:FKOffsetSpine1Part2_M|model:FKExtraSpine1Part2_M|model:FKSpine1Part2_M|model:FKXSpine1Part2_M|model:FKOffsetChest_M|model:FKExtraChest_M|model:FKChest_M.translateZ" 
		"modelRN.placeHolderList[333]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:FKOffsetSpine1_M|model:FKXSpine1_M|model:FKOffsetSpine1Part1_M|model:FKExtraSpine1Part1_M|model:FKSpine1Part1_M|model:FKXSpine1Part1_M|model:FKOffsetSpine1Part2_M|model:FKExtraSpine1Part2_M|model:FKSpine1Part2_M|model:FKXSpine1Part2_M|model:FKOffsetChest_M|model:FKExtraChest_M|model:FKChest_M.drawOverride" 
		"modelRN.placeHolderList[334]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:FKOffsetSpine1_M|model:FKXSpine1_M|model:FKOffsetSpine1Part1_M|model:FKExtraSpine1Part1_M|model:FKSpine1Part1_M|model:FKXSpine1Part1_M|model:FKOffsetSpine1Part2_M|model:FKExtraSpine1Part2_M|model:FKSpine1Part2_M|model:FKXSpine1Part2_M|model:FKOffsetChest_M|model:FKExtraChest_M|model:FKChest_M.rotateX" 
		"modelRN.placeHolderList[335]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:FKOffsetSpine1_M|model:FKXSpine1_M|model:FKOffsetSpine1Part1_M|model:FKExtraSpine1Part1_M|model:FKSpine1Part1_M|model:FKXSpine1Part1_M|model:FKOffsetSpine1Part2_M|model:FKExtraSpine1Part2_M|model:FKSpine1Part2_M|model:FKXSpine1Part2_M|model:FKOffsetChest_M|model:FKExtraChest_M|model:FKChest_M.rotateY" 
		"modelRN.placeHolderList[336]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKXRoot_M|model:FKOffsetRootPart1_M|model:FKExtraRootPart1_M|model:FKRootPart1_M|model:FKXRootPart1_M|model:FKOffsetRootPart2_M|model:FKExtraRootPart2_M|model:FKRootPart2_M|model:FKXRootPart2_M|model:FKOffsetSpine1_M|model:FKXSpine1_M|model:FKOffsetSpine1Part1_M|model:FKExtraSpine1Part1_M|model:FKSpine1Part1_M|model:FKXSpine1Part1_M|model:FKOffsetSpine1Part2_M|model:FKExtraSpine1Part2_M|model:FKSpine1Part2_M|model:FKXSpine1Part2_M|model:FKOffsetChest_M|model:FKExtraChest_M|model:FKChest_M.rotateZ" 
		"modelRN.placeHolderList[337]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L.scaleX" 
		"modelRN.placeHolderList[338]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L.scaleY" 
		"modelRN.placeHolderList[339]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L.scaleZ" 
		"modelRN.placeHolderList[340]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L.translateX" 
		"modelRN.placeHolderList[341]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L.translateY" 
		"modelRN.placeHolderList[342]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L.translateZ" 
		"modelRN.placeHolderList[343]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L.drawOverride" 
		"modelRN.placeHolderList[344]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L.rotateX" 
		"modelRN.placeHolderList[345]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L.rotateY" 
		"modelRN.placeHolderList[346]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L.rotateZ" 
		"modelRN.placeHolderList[347]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKXMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L.scaleX" 
		"modelRN.placeHolderList[348]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKXMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L.scaleY" 
		"modelRN.placeHolderList[349]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKXMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L.scaleZ" 
		"modelRN.placeHolderList[350]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKXMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L.translateX" 
		"modelRN.placeHolderList[351]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKXMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L.translateY" 
		"modelRN.placeHolderList[352]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKXMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L.translateZ" 
		"modelRN.placeHolderList[353]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKXMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L.drawOverride" 
		"modelRN.placeHolderList[354]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKXMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L.rotateX" 
		"modelRN.placeHolderList[355]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKXMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L.rotateY" 
		"modelRN.placeHolderList[356]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKXMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L.rotateZ" 
		"modelRN.placeHolderList[357]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKXMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L|model:FKXMiddleFinger2_L|model:FKOffsetMiddleFinger3_L|model:SDKFKMiddleFinger3_L|model:FKExtraMiddleFinger3_L|model:FKMiddleFinger3_L.scaleX" 
		"modelRN.placeHolderList[358]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKXMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L|model:FKXMiddleFinger2_L|model:FKOffsetMiddleFinger3_L|model:SDKFKMiddleFinger3_L|model:FKExtraMiddleFinger3_L|model:FKMiddleFinger3_L.scaleY" 
		"modelRN.placeHolderList[359]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKXMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L|model:FKXMiddleFinger2_L|model:FKOffsetMiddleFinger3_L|model:SDKFKMiddleFinger3_L|model:FKExtraMiddleFinger3_L|model:FKMiddleFinger3_L.scaleZ" 
		"modelRN.placeHolderList[360]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKXMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L|model:FKXMiddleFinger2_L|model:FKOffsetMiddleFinger3_L|model:SDKFKMiddleFinger3_L|model:FKExtraMiddleFinger3_L|model:FKMiddleFinger3_L.translateX" 
		"modelRN.placeHolderList[361]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKXMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L|model:FKXMiddleFinger2_L|model:FKOffsetMiddleFinger3_L|model:SDKFKMiddleFinger3_L|model:FKExtraMiddleFinger3_L|model:FKMiddleFinger3_L.translateY" 
		"modelRN.placeHolderList[362]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKXMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L|model:FKXMiddleFinger2_L|model:FKOffsetMiddleFinger3_L|model:SDKFKMiddleFinger3_L|model:FKExtraMiddleFinger3_L|model:FKMiddleFinger3_L.translateZ" 
		"modelRN.placeHolderList[363]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKXMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L|model:FKXMiddleFinger2_L|model:FKOffsetMiddleFinger3_L|model:SDKFKMiddleFinger3_L|model:FKExtraMiddleFinger3_L|model:FKMiddleFinger3_L.drawOverride" 
		"modelRN.placeHolderList[364]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKXMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L|model:FKXMiddleFinger2_L|model:FKOffsetMiddleFinger3_L|model:SDKFKMiddleFinger3_L|model:FKExtraMiddleFinger3_L|model:FKMiddleFinger3_L.rotateX" 
		"modelRN.placeHolderList[365]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKXMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L|model:FKXMiddleFinger2_L|model:FKOffsetMiddleFinger3_L|model:SDKFKMiddleFinger3_L|model:FKExtraMiddleFinger3_L|model:FKMiddleFinger3_L.rotateY" 
		"modelRN.placeHolderList[366]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKXMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L|model:FKXMiddleFinger2_L|model:FKOffsetMiddleFinger3_L|model:SDKFKMiddleFinger3_L|model:FKExtraMiddleFinger3_L|model:FKMiddleFinger3_L.rotateZ" 
		"modelRN.placeHolderList[367]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L.scaleX" 
		"modelRN.placeHolderList[368]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L.scaleY" 
		"modelRN.placeHolderList[369]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L.scaleZ" 
		"modelRN.placeHolderList[370]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L.translateX" 
		"modelRN.placeHolderList[371]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L.translateY" 
		"modelRN.placeHolderList[372]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L.translateZ" 
		"modelRN.placeHolderList[373]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L.drawOverride" 
		"modelRN.placeHolderList[374]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L.rotateX" 
		"modelRN.placeHolderList[375]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L.rotateY" 
		"modelRN.placeHolderList[376]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L.rotateZ" 
		"modelRN.placeHolderList[377]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKXThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L.scaleX" 
		"modelRN.placeHolderList[378]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKXThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L.scaleY" 
		"modelRN.placeHolderList[379]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKXThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L.scaleZ" 
		"modelRN.placeHolderList[380]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKXThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L.translateX" 
		"modelRN.placeHolderList[381]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKXThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L.translateY" 
		"modelRN.placeHolderList[382]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKXThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L.translateZ" 
		"modelRN.placeHolderList[383]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKXThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L.drawOverride" 
		"modelRN.placeHolderList[384]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKXThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L.rotateX" 
		"modelRN.placeHolderList[385]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKXThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L.rotateY" 
		"modelRN.placeHolderList[386]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKXThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L.rotateZ" 
		"modelRN.placeHolderList[387]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKXThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L|model:FKXThumbFinger2_L|model:FKOffsetThumbFinger3_L|model:SDKFKThumbFinger3_L|model:FKExtraThumbFinger3_L|model:FKThumbFinger3_L.scaleX" 
		"modelRN.placeHolderList[388]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKXThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L|model:FKXThumbFinger2_L|model:FKOffsetThumbFinger3_L|model:SDKFKThumbFinger3_L|model:FKExtraThumbFinger3_L|model:FKThumbFinger3_L.scaleY" 
		"modelRN.placeHolderList[389]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKXThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L|model:FKXThumbFinger2_L|model:FKOffsetThumbFinger3_L|model:SDKFKThumbFinger3_L|model:FKExtraThumbFinger3_L|model:FKThumbFinger3_L.scaleZ" 
		"modelRN.placeHolderList[390]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKXThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L|model:FKXThumbFinger2_L|model:FKOffsetThumbFinger3_L|model:SDKFKThumbFinger3_L|model:FKExtraThumbFinger3_L|model:FKThumbFinger3_L.translateX" 
		"modelRN.placeHolderList[391]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKXThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L|model:FKXThumbFinger2_L|model:FKOffsetThumbFinger3_L|model:SDKFKThumbFinger3_L|model:FKExtraThumbFinger3_L|model:FKThumbFinger3_L.translateY" 
		"modelRN.placeHolderList[392]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKXThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L|model:FKXThumbFinger2_L|model:FKOffsetThumbFinger3_L|model:SDKFKThumbFinger3_L|model:FKExtraThumbFinger3_L|model:FKThumbFinger3_L.translateZ" 
		"modelRN.placeHolderList[393]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKXThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L|model:FKXThumbFinger2_L|model:FKOffsetThumbFinger3_L|model:SDKFKThumbFinger3_L|model:FKExtraThumbFinger3_L|model:FKThumbFinger3_L.drawOverride" 
		"modelRN.placeHolderList[394]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKXThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L|model:FKXThumbFinger2_L|model:FKOffsetThumbFinger3_L|model:SDKFKThumbFinger3_L|model:FKExtraThumbFinger3_L|model:FKThumbFinger3_L.rotateX" 
		"modelRN.placeHolderList[395]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKXThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L|model:FKXThumbFinger2_L|model:FKOffsetThumbFinger3_L|model:SDKFKThumbFinger3_L|model:FKExtraThumbFinger3_L|model:FKThumbFinger3_L.rotateY" 
		"modelRN.placeHolderList[396]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKXThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L|model:FKXThumbFinger2_L|model:FKOffsetThumbFinger3_L|model:SDKFKThumbFinger3_L|model:FKExtraThumbFinger3_L|model:FKThumbFinger3_L.rotateZ" 
		"modelRN.placeHolderList[397]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L.scaleX" 
		"modelRN.placeHolderList[398]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L.scaleY" 
		"modelRN.placeHolderList[399]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L.scaleZ" 
		"modelRN.placeHolderList[400]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L.translateX" 
		"modelRN.placeHolderList[401]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L.translateY" 
		"modelRN.placeHolderList[402]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L.translateZ" 
		"modelRN.placeHolderList[403]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L.drawOverride" 
		"modelRN.placeHolderList[404]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L.rotateX" 
		"modelRN.placeHolderList[405]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L.rotateY" 
		"modelRN.placeHolderList[406]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L.rotateZ" 
		"modelRN.placeHolderList[407]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKXIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L.scaleX" 
		"modelRN.placeHolderList[408]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKXIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L.scaleY" 
		"modelRN.placeHolderList[409]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKXIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L.scaleZ" 
		"modelRN.placeHolderList[410]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKXIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L.translateX" 
		"modelRN.placeHolderList[411]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKXIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L.translateY" 
		"modelRN.placeHolderList[412]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKXIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L.translateZ" 
		"modelRN.placeHolderList[413]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKXIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L.drawOverride" 
		"modelRN.placeHolderList[414]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKXIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L.rotateX" 
		"modelRN.placeHolderList[415]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKXIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L.rotateY" 
		"modelRN.placeHolderList[416]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKXIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L.rotateZ" 
		"modelRN.placeHolderList[417]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKXIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L|model:FKXIndexFinger2_L|model:FKOffsetIndexFinger3_L|model:SDKFKIndexFinger3_L|model:FKExtraIndexFinger3_L|model:FKIndexFinger3_L.scaleX" 
		"modelRN.placeHolderList[418]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKXIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L|model:FKXIndexFinger2_L|model:FKOffsetIndexFinger3_L|model:SDKFKIndexFinger3_L|model:FKExtraIndexFinger3_L|model:FKIndexFinger3_L.scaleY" 
		"modelRN.placeHolderList[419]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKXIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L|model:FKXIndexFinger2_L|model:FKOffsetIndexFinger3_L|model:SDKFKIndexFinger3_L|model:FKExtraIndexFinger3_L|model:FKIndexFinger3_L.scaleZ" 
		"modelRN.placeHolderList[420]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKXIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L|model:FKXIndexFinger2_L|model:FKOffsetIndexFinger3_L|model:SDKFKIndexFinger3_L|model:FKExtraIndexFinger3_L|model:FKIndexFinger3_L.translateX" 
		"modelRN.placeHolderList[421]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKXIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L|model:FKXIndexFinger2_L|model:FKOffsetIndexFinger3_L|model:SDKFKIndexFinger3_L|model:FKExtraIndexFinger3_L|model:FKIndexFinger3_L.translateY" 
		"modelRN.placeHolderList[422]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKXIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L|model:FKXIndexFinger2_L|model:FKOffsetIndexFinger3_L|model:SDKFKIndexFinger3_L|model:FKExtraIndexFinger3_L|model:FKIndexFinger3_L.translateZ" 
		"modelRN.placeHolderList[423]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKXIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L|model:FKXIndexFinger2_L|model:FKOffsetIndexFinger3_L|model:SDKFKIndexFinger3_L|model:FKExtraIndexFinger3_L|model:FKIndexFinger3_L.drawOverride" 
		"modelRN.placeHolderList[424]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKXIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L|model:FKXIndexFinger2_L|model:FKOffsetIndexFinger3_L|model:SDKFKIndexFinger3_L|model:FKExtraIndexFinger3_L|model:FKIndexFinger3_L.rotateX" 
		"modelRN.placeHolderList[425]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKXIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L|model:FKXIndexFinger2_L|model:FKOffsetIndexFinger3_L|model:SDKFKIndexFinger3_L|model:FKExtraIndexFinger3_L|model:FKIndexFinger3_L.rotateY" 
		"modelRN.placeHolderList[426]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKXIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L|model:FKXIndexFinger2_L|model:FKOffsetIndexFinger3_L|model:SDKFKIndexFinger3_L|model:FKExtraIndexFinger3_L|model:FKIndexFinger3_L.rotateZ" 
		"modelRN.placeHolderList[427]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L.scaleX" 
		"modelRN.placeHolderList[428]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L.scaleY" 
		"modelRN.placeHolderList[429]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L.scaleZ" 
		"modelRN.placeHolderList[430]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L.translateX" 
		"modelRN.placeHolderList[431]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L.translateY" 
		"modelRN.placeHolderList[432]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L.translateZ" 
		"modelRN.placeHolderList[433]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L.drawOverride" 
		"modelRN.placeHolderList[434]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L.rotateX" 
		"modelRN.placeHolderList[435]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L.rotateY" 
		"modelRN.placeHolderList[436]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L.rotateZ" 
		"modelRN.placeHolderList[437]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L.scaleX" 
		"modelRN.placeHolderList[438]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L.scaleY" 
		"modelRN.placeHolderList[439]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L.scaleZ" 
		"modelRN.placeHolderList[440]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L.translateX" 
		"modelRN.placeHolderList[441]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L.translateY" 
		"modelRN.placeHolderList[442]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L.translateZ" 
		"modelRN.placeHolderList[443]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L.drawOverride" 
		"modelRN.placeHolderList[444]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L.rotateX" 
		"modelRN.placeHolderList[445]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L.rotateY" 
		"modelRN.placeHolderList[446]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L.rotateZ" 
		"modelRN.placeHolderList[447]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKXPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L.scaleX" 
		"modelRN.placeHolderList[448]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKXPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L.scaleY" 
		"modelRN.placeHolderList[449]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKXPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L.scaleZ" 
		"modelRN.placeHolderList[450]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKXPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L.translateX" 
		"modelRN.placeHolderList[451]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKXPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L.translateY" 
		"modelRN.placeHolderList[452]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKXPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L.translateZ" 
		"modelRN.placeHolderList[453]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKXPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L.drawOverride" 
		"modelRN.placeHolderList[454]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKXPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L.rotateX" 
		"modelRN.placeHolderList[455]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKXPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L.rotateY" 
		"modelRN.placeHolderList[456]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKXPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L.rotateZ" 
		"modelRN.placeHolderList[457]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKXPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L|model:FKXPinkyFinger2_L|model:FKOffsetPinkyFinger3_L|model:SDKFKPinkyFinger3_L|model:FKExtraPinkyFinger3_L|model:FKPinkyFinger3_L.scaleX" 
		"modelRN.placeHolderList[458]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKXPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L|model:FKXPinkyFinger2_L|model:FKOffsetPinkyFinger3_L|model:SDKFKPinkyFinger3_L|model:FKExtraPinkyFinger3_L|model:FKPinkyFinger3_L.scaleY" 
		"modelRN.placeHolderList[459]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKXPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L|model:FKXPinkyFinger2_L|model:FKOffsetPinkyFinger3_L|model:SDKFKPinkyFinger3_L|model:FKExtraPinkyFinger3_L|model:FKPinkyFinger3_L.scaleZ" 
		"modelRN.placeHolderList[460]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKXPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L|model:FKXPinkyFinger2_L|model:FKOffsetPinkyFinger3_L|model:SDKFKPinkyFinger3_L|model:FKExtraPinkyFinger3_L|model:FKPinkyFinger3_L.translateX" 
		"modelRN.placeHolderList[461]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKXPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L|model:FKXPinkyFinger2_L|model:FKOffsetPinkyFinger3_L|model:SDKFKPinkyFinger3_L|model:FKExtraPinkyFinger3_L|model:FKPinkyFinger3_L.translateY" 
		"modelRN.placeHolderList[462]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKXPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L|model:FKXPinkyFinger2_L|model:FKOffsetPinkyFinger3_L|model:SDKFKPinkyFinger3_L|model:FKExtraPinkyFinger3_L|model:FKPinkyFinger3_L.translateZ" 
		"modelRN.placeHolderList[463]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKXPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L|model:FKXPinkyFinger2_L|model:FKOffsetPinkyFinger3_L|model:SDKFKPinkyFinger3_L|model:FKExtraPinkyFinger3_L|model:FKPinkyFinger3_L.drawOverride" 
		"modelRN.placeHolderList[464]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKXPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L|model:FKXPinkyFinger2_L|model:FKOffsetPinkyFinger3_L|model:SDKFKPinkyFinger3_L|model:FKExtraPinkyFinger3_L|model:FKPinkyFinger3_L.rotateX" 
		"modelRN.placeHolderList[465]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKXPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L|model:FKXPinkyFinger2_L|model:FKOffsetPinkyFinger3_L|model:SDKFKPinkyFinger3_L|model:FKExtraPinkyFinger3_L|model:FKPinkyFinger3_L.rotateY" 
		"modelRN.placeHolderList[466]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKXPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L|model:FKXPinkyFinger2_L|model:FKOffsetPinkyFinger3_L|model:SDKFKPinkyFinger3_L|model:FKExtraPinkyFinger3_L|model:FKPinkyFinger3_L.rotateZ" 
		"modelRN.placeHolderList[467]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L.scaleX" 
		"modelRN.placeHolderList[468]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L.scaleY" 
		"modelRN.placeHolderList[469]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L.scaleZ" 
		"modelRN.placeHolderList[470]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L.translateX" 
		"modelRN.placeHolderList[471]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L.translateY" 
		"modelRN.placeHolderList[472]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L.translateZ" 
		"modelRN.placeHolderList[473]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L.drawOverride" 
		"modelRN.placeHolderList[474]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L.rotateX" 
		"modelRN.placeHolderList[475]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L.rotateY" 
		"modelRN.placeHolderList[476]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L.rotateZ" 
		"modelRN.placeHolderList[477]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKXRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L.scaleX" 
		"modelRN.placeHolderList[478]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKXRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L.scaleY" 
		"modelRN.placeHolderList[479]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKXRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L.scaleZ" 
		"modelRN.placeHolderList[480]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKXRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L.translateX" 
		"modelRN.placeHolderList[481]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKXRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L.translateY" 
		"modelRN.placeHolderList[482]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKXRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L.translateZ" 
		"modelRN.placeHolderList[483]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKXRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L.drawOverride" 
		"modelRN.placeHolderList[484]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKXRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L.rotateX" 
		"modelRN.placeHolderList[485]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKXRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L.rotateY" 
		"modelRN.placeHolderList[486]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKXRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L.rotateZ" 
		"modelRN.placeHolderList[487]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKXRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L|model:FKXRingFinger2_L|model:FKOffsetRingFinger3_L|model:SDKFKRingFinger3_L|model:FKExtraRingFinger3_L|model:FKRingFinger3_L.scaleX" 
		"modelRN.placeHolderList[488]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKXRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L|model:FKXRingFinger2_L|model:FKOffsetRingFinger3_L|model:SDKFKRingFinger3_L|model:FKExtraRingFinger3_L|model:FKRingFinger3_L.scaleY" 
		"modelRN.placeHolderList[489]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKXRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L|model:FKXRingFinger2_L|model:FKOffsetRingFinger3_L|model:SDKFKRingFinger3_L|model:FKExtraRingFinger3_L|model:FKRingFinger3_L.scaleZ" 
		"modelRN.placeHolderList[490]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKXRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L|model:FKXRingFinger2_L|model:FKOffsetRingFinger3_L|model:SDKFKRingFinger3_L|model:FKExtraRingFinger3_L|model:FKRingFinger3_L.translateX" 
		"modelRN.placeHolderList[491]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKXRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L|model:FKXRingFinger2_L|model:FKOffsetRingFinger3_L|model:SDKFKRingFinger3_L|model:FKExtraRingFinger3_L|model:FKRingFinger3_L.translateY" 
		"modelRN.placeHolderList[492]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKXRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L|model:FKXRingFinger2_L|model:FKOffsetRingFinger3_L|model:SDKFKRingFinger3_L|model:FKExtraRingFinger3_L|model:FKRingFinger3_L.translateZ" 
		"modelRN.placeHolderList[493]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKXRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L|model:FKXRingFinger2_L|model:FKOffsetRingFinger3_L|model:SDKFKRingFinger3_L|model:FKExtraRingFinger3_L|model:FKRingFinger3_L.drawOverride" 
		"modelRN.placeHolderList[494]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKXRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L|model:FKXRingFinger2_L|model:FKOffsetRingFinger3_L|model:SDKFKRingFinger3_L|model:FKExtraRingFinger3_L|model:FKRingFinger3_L.rotateX" 
		"modelRN.placeHolderList[495]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKXRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L|model:FKXRingFinger2_L|model:FKOffsetRingFinger3_L|model:SDKFKRingFinger3_L|model:FKExtraRingFinger3_L|model:FKRingFinger3_L.rotateY" 
		"modelRN.placeHolderList[496]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetCup_L|model:SDKFKCup_L|model:FKExtraCup_L|model:FKCup_L|model:FKXCup_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKXRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L|model:FKXRingFinger2_L|model:FKOffsetRingFinger3_L|model:SDKFKRingFinger3_L|model:FKExtraRingFinger3_L|model:FKRingFinger3_L.rotateZ" 
		"modelRN.placeHolderList[497]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.scaleY" 
		"modelRN.placeHolderList[498]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.scaleZ" 
		"modelRN.placeHolderList[499]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.scaleX" 
		"modelRN.placeHolderList[500]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.followMain" 
		"modelRN.placeHolderList[501]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.followRoot" 
		"modelRN.placeHolderList[502]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.swivel" 
		"modelRN.placeHolderList[503]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.rock" 
		"modelRN.placeHolderList[504]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.roll" 
		"modelRN.placeHolderList[505]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.rollStartAngle" 
		"modelRN.placeHolderList[506]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.rollEndAngle" 
		"modelRN.placeHolderList[507]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.stretchy" 
		"modelRN.placeHolderList[508]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.antiPop" 
		"modelRN.placeHolderList[509]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.Lenght1" 
		"modelRN.placeHolderList[510]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.Lenght2" 
		"modelRN.placeHolderList[511]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.Fatness1" 
		"modelRN.placeHolderList[512]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.Fatness2" 
		"modelRN.placeHolderList[513]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.volume" 
		"modelRN.placeHolderList[514]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.translateX" 
		"modelRN.placeHolderList[515]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.translateY" 
		"modelRN.placeHolderList[516]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.translateZ" 
		"modelRN.placeHolderList[517]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.drawOverride" 
		"modelRN.placeHolderList[518]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.rotateX" 
		"modelRN.placeHolderList[519]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.rotateY" 
		"modelRN.placeHolderList[520]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.rotateZ" 
		"modelRN.placeHolderList[521]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R.translateX" 
		"modelRN.placeHolderList[522]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R.translateY" 
		"modelRN.placeHolderList[523]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R.translateZ" 
		"modelRN.placeHolderList[524]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R.drawOverride" 
		"modelRN.placeHolderList[525]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R.rotateX" 
		"modelRN.placeHolderList[526]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R.rotateY" 
		"modelRN.placeHolderList[527]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R.rotateZ" 
		"modelRN.placeHolderList[528]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R.scaleX" 
		"modelRN.placeHolderList[529]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R.scaleY" 
		"modelRN.placeHolderList[530]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R.scaleZ" 
		"modelRN.placeHolderList[531]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R.translateX" 
		"modelRN.placeHolderList[532]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R.translateY" 
		"modelRN.placeHolderList[533]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R.translateZ" 
		"modelRN.placeHolderList[534]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R.drawOverride" 
		"modelRN.placeHolderList[535]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R.rotateX" 
		"modelRN.placeHolderList[536]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R.rotateY" 
		"modelRN.placeHolderList[537]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R.rotateZ" 
		"modelRN.placeHolderList[538]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R.scaleX" 
		"modelRN.placeHolderList[539]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R.scaleY" 
		"modelRN.placeHolderList[540]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R.scaleZ" 
		"modelRN.placeHolderList[541]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:RollOffsetToes_R|model:RollRollerToes_R|model:RollExtraToes_R|model:RollToes_R.translateX" 
		"modelRN.placeHolderList[542]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:RollOffsetToes_R|model:RollRollerToes_R|model:RollExtraToes_R|model:RollToes_R.translateY" 
		"modelRN.placeHolderList[543]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:RollOffsetToes_R|model:RollRollerToes_R|model:RollExtraToes_R|model:RollToes_R.translateZ" 
		"modelRN.placeHolderList[544]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:RollOffsetToes_R|model:RollRollerToes_R|model:RollExtraToes_R|model:RollToes_R.drawOverride" 
		"modelRN.placeHolderList[545]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:RollOffsetToes_R|model:RollRollerToes_R|model:RollExtraToes_R|model:RollToes_R.rotateX" 
		"modelRN.placeHolderList[546]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:RollOffsetToes_R|model:RollRollerToes_R|model:RollExtraToes_R|model:RollToes_R.rotateY" 
		"modelRN.placeHolderList[547]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:RollOffsetToes_R|model:RollRollerToes_R|model:RollExtraToes_R|model:RollToes_R.rotateZ" 
		"modelRN.placeHolderList[548]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:RollOffsetToes_R|model:RollRollerToes_R|model:RollExtraToes_R|model:RollToes_R.scaleX" 
		"modelRN.placeHolderList[549]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:RollOffsetToes_R|model:RollRollerToes_R|model:RollExtraToes_R|model:RollToes_R.scaleY" 
		"modelRN.placeHolderList[550]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:RollOffsetToes_R|model:RollRollerToes_R|model:RollExtraToes_R|model:RollToes_R.scaleZ" 
		"modelRN.placeHolderList[551]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:IKOffsetToes_R|model:IKExtraToes_R|model:IKToes_R.translateX" 
		"modelRN.placeHolderList[552]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:IKOffsetToes_R|model:IKExtraToes_R|model:IKToes_R.translateY" 
		"modelRN.placeHolderList[553]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:IKOffsetToes_R|model:IKExtraToes_R|model:IKToes_R.translateZ" 
		"modelRN.placeHolderList[554]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:IKOffsetToes_R|model:IKExtraToes_R|model:IKToes_R.drawOverride" 
		"modelRN.placeHolderList[555]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:IKOffsetToes_R|model:IKExtraToes_R|model:IKToes_R.rotateX" 
		"modelRN.placeHolderList[556]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:IKOffsetToes_R|model:IKExtraToes_R|model:IKToes_R.rotateY" 
		"modelRN.placeHolderList[557]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:IKOffsetToes_R|model:IKExtraToes_R|model:IKToes_R.rotateZ" 
		"modelRN.placeHolderList[558]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:IKOffsetToes_R|model:IKExtraToes_R|model:IKToes_R.scaleX" 
		"modelRN.placeHolderList[559]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:IKOffsetToes_R|model:IKExtraToes_R|model:IKToes_R.scaleY" 
		"modelRN.placeHolderList[560]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:IKOffsetToes_R|model:IKExtraToes_R|model:IKToes_R.scaleZ" 
		"modelRN.placeHolderList[561]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.scaleY" 
		"modelRN.placeHolderList[562]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.scaleZ" 
		"modelRN.placeHolderList[563]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.scaleX" 
		"modelRN.placeHolderList[564]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.followMain" 
		"modelRN.placeHolderList[565]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.followRoot" 
		"modelRN.placeHolderList[566]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.swivel" 
		"modelRN.placeHolderList[567]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.rock" 
		"modelRN.placeHolderList[568]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.roll" 
		"modelRN.placeHolderList[569]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.rollStartAngle" 
		"modelRN.placeHolderList[570]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.rollEndAngle" 
		"modelRN.placeHolderList[571]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.stretchy" 
		"modelRN.placeHolderList[572]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.antiPop" 
		"modelRN.placeHolderList[573]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.Lenght1" 
		"modelRN.placeHolderList[574]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.Lenght2" 
		"modelRN.placeHolderList[575]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.Fatness1" 
		"modelRN.placeHolderList[576]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.Fatness2" 
		"modelRN.placeHolderList[577]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.volume" 
		"modelRN.placeHolderList[578]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.translateX" 
		"modelRN.placeHolderList[579]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.translateY" 
		"modelRN.placeHolderList[580]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.translateZ" 
		"modelRN.placeHolderList[581]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.drawOverride" 
		"modelRN.placeHolderList[582]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.rotateX" 
		"modelRN.placeHolderList[583]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.rotateY" 
		"modelRN.placeHolderList[584]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.rotateZ" 
		"modelRN.placeHolderList[585]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L.translateX" 
		"modelRN.placeHolderList[586]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L.translateY" 
		"modelRN.placeHolderList[587]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L.translateZ" 
		"modelRN.placeHolderList[588]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L.drawOverride" 
		"modelRN.placeHolderList[589]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L.rotateX" 
		"modelRN.placeHolderList[590]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L.rotateY" 
		"modelRN.placeHolderList[591]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L.rotateZ" 
		"modelRN.placeHolderList[592]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L.scaleX" 
		"modelRN.placeHolderList[593]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L.scaleY" 
		"modelRN.placeHolderList[594]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L.scaleZ" 
		"modelRN.placeHolderList[595]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L.translateX" 
		"modelRN.placeHolderList[596]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L.translateY" 
		"modelRN.placeHolderList[597]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L.translateZ" 
		"modelRN.placeHolderList[598]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L.drawOverride" 
		"modelRN.placeHolderList[599]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L.rotateX" 
		"modelRN.placeHolderList[600]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L.rotateY" 
		"modelRN.placeHolderList[601]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L.rotateZ" 
		"modelRN.placeHolderList[602]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L.scaleX" 
		"modelRN.placeHolderList[603]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L.scaleY" 
		"modelRN.placeHolderList[604]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L.scaleZ" 
		"modelRN.placeHolderList[605]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:RollOffsetToes_L|model:RollRollerToes_L|model:RollExtraToes_L|model:RollToes_L.translateX" 
		"modelRN.placeHolderList[606]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:RollOffsetToes_L|model:RollRollerToes_L|model:RollExtraToes_L|model:RollToes_L.translateY" 
		"modelRN.placeHolderList[607]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:RollOffsetToes_L|model:RollRollerToes_L|model:RollExtraToes_L|model:RollToes_L.translateZ" 
		"modelRN.placeHolderList[608]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:RollOffsetToes_L|model:RollRollerToes_L|model:RollExtraToes_L|model:RollToes_L.drawOverride" 
		"modelRN.placeHolderList[609]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:RollOffsetToes_L|model:RollRollerToes_L|model:RollExtraToes_L|model:RollToes_L.rotateX" 
		"modelRN.placeHolderList[610]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:RollOffsetToes_L|model:RollRollerToes_L|model:RollExtraToes_L|model:RollToes_L.rotateY" 
		"modelRN.placeHolderList[611]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:RollOffsetToes_L|model:RollRollerToes_L|model:RollExtraToes_L|model:RollToes_L.rotateZ" 
		"modelRN.placeHolderList[612]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:RollOffsetToes_L|model:RollRollerToes_L|model:RollExtraToes_L|model:RollToes_L.scaleX" 
		"modelRN.placeHolderList[613]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:RollOffsetToes_L|model:RollRollerToes_L|model:RollExtraToes_L|model:RollToes_L.scaleY" 
		"modelRN.placeHolderList[614]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:RollOffsetToes_L|model:RollRollerToes_L|model:RollExtraToes_L|model:RollToes_L.scaleZ" 
		"modelRN.placeHolderList[615]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:IKOffsetToes_L|model:IKExtraToes_L|model:IKToes_L.translateX" 
		"modelRN.placeHolderList[616]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:IKOffsetToes_L|model:IKExtraToes_L|model:IKToes_L.translateY" 
		"modelRN.placeHolderList[617]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:IKOffsetToes_L|model:IKExtraToes_L|model:IKToes_L.translateZ" 
		"modelRN.placeHolderList[618]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:IKOffsetToes_L|model:IKExtraToes_L|model:IKToes_L.drawOverride" 
		"modelRN.placeHolderList[619]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:IKOffsetToes_L|model:IKExtraToes_L|model:IKToes_L.rotateX" 
		"modelRN.placeHolderList[620]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:IKOffsetToes_L|model:IKExtraToes_L|model:IKToes_L.rotateY" 
		"modelRN.placeHolderList[621]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:IKOffsetToes_L|model:IKExtraToes_L|model:IKToes_L.rotateZ" 
		"modelRN.placeHolderList[622]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:IKOffsetToes_L|model:IKExtraToes_L|model:IKToes_L.scaleX" 
		"modelRN.placeHolderList[623]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:IKOffsetToes_L|model:IKExtraToes_L|model:IKToes_L.scaleY" 
		"modelRN.placeHolderList[624]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:IKOffsetToes_L|model:IKExtraToes_L|model:IKToes_L.scaleZ" 
		"modelRN.placeHolderList[625]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetLeg_R|model:PoleExtraLeg_R|model:PoleLeg_R.translateX" 
		"modelRN.placeHolderList[626]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetLeg_R|model:PoleExtraLeg_R|model:PoleLeg_R.translateY" 
		"modelRN.placeHolderList[627]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetLeg_R|model:PoleExtraLeg_R|model:PoleLeg_R.translateZ" 
		"modelRN.placeHolderList[628]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetLeg_R|model:PoleExtraLeg_R|model:PoleLeg_R.followMain" 
		"modelRN.placeHolderList[629]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetLeg_R|model:PoleExtraLeg_R|model:PoleLeg_R.followRoot" 
		"modelRN.placeHolderList[630]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetLeg_R|model:PoleExtraLeg_R|model:PoleLeg_R.followLeg" 
		"modelRN.placeHolderList[631]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetLeg_R|model:PoleExtraLeg_R|model:PoleLeg_R.lock" 
		"modelRN.placeHolderList[632]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetLeg_R|model:PoleExtraLeg_R|model:PoleLeg_R.drawOverride" 
		"modelRN.placeHolderList[633]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetLeg_L|model:PoleExtraLeg_L|model:PoleLeg_L.translateX" 
		"modelRN.placeHolderList[634]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetLeg_L|model:PoleExtraLeg_L|model:PoleLeg_L.translateY" 
		"modelRN.placeHolderList[635]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetLeg_L|model:PoleExtraLeg_L|model:PoleLeg_L.translateZ" 
		"modelRN.placeHolderList[636]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetLeg_L|model:PoleExtraLeg_L|model:PoleLeg_L.followMain" 
		"modelRN.placeHolderList[637]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetLeg_L|model:PoleExtraLeg_L|model:PoleLeg_L.followRoot" 
		"modelRN.placeHolderList[638]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetLeg_L|model:PoleExtraLeg_L|model:PoleLeg_L.followLeg" 
		"modelRN.placeHolderList[639]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetLeg_L|model:PoleExtraLeg_L|model:PoleLeg_L.lock" 
		"modelRN.placeHolderList[640]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetLeg_L|model:PoleExtraLeg_L|model:PoleLeg_L.drawOverride" 
		"modelRN.placeHolderList[641]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintArm_R|model:FKIKArm_R.FKIKBlend" 
		"modelRN.placeHolderList[642]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintArm_R|model:FKIKArm_R.IKVis" 
		"modelRN.placeHolderList[643]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintArm_R|model:FKIKArm_R.FKVis" 
		"modelRN.placeHolderList[644]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintArm_R|model:FKIKArm_R.drawOverride" 
		"modelRN.placeHolderList[645]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintLeg_R|model:FKIKLeg_R.FKIKBlend" 
		"modelRN.placeHolderList[646]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintLeg_R|model:FKIKLeg_R.IKVis" 
		"modelRN.placeHolderList[647]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintLeg_R|model:FKIKLeg_R.FKVis" 
		"modelRN.placeHolderList[648]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintLeg_R|model:FKIKLeg_R.drawOverride" 
		"modelRN.placeHolderList[649]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintSpine_M|model:FKIKSpine_M.drawOverride" 
		"modelRN.placeHolderList[650]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintArm_L|model:FKIKArm_L.FKIKBlend" 
		"modelRN.placeHolderList[651]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintArm_L|model:FKIKArm_L.IKVis" 
		"modelRN.placeHolderList[652]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintArm_L|model:FKIKArm_L.FKVis" 
		"modelRN.placeHolderList[653]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintArm_L|model:FKIKArm_L.drawOverride" 
		"modelRN.placeHolderList[654]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintLeg_L|model:FKIKLeg_L.FKIKBlend" 
		"modelRN.placeHolderList[655]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintLeg_L|model:FKIKLeg_L.IKVis" 
		"modelRN.placeHolderList[656]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintLeg_L|model:FKIKLeg_L.FKVis" 
		"modelRN.placeHolderList[657]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintLeg_L|model:FKIKLeg_L.drawOverride" 
		"modelRN.placeHolderList[658]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:AimSystem|model:AimEye|model:AimOffsetEye|model:AimFollowEye|model:AimEye_M.follow" 
		"modelRN.placeHolderList[659]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:AimSystem|model:AimEye|model:AimOffsetEye|model:AimFollowEye|model:AimEye_M.drawOverride" 
		"modelRN.placeHolderList[660]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:AimSystem|model:AimEye|model:AimOffsetEye|model:AimFollowEye|model:AimEye_M.visibility" 
		"modelRN.placeHolderList[661]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:AimSystem|model:AimEye|model:AimOffsetEye|model:AimFollowEye|model:AimEye_M.translateX" 
		"modelRN.placeHolderList[662]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:AimSystem|model:AimEye|model:AimOffsetEye|model:AimFollowEye|model:AimEye_M.translateY" 
		"modelRN.placeHolderList[663]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:AimSystem|model:AimEye|model:AimOffsetEye|model:AimFollowEye|model:AimEye_M.translateZ" 
		"modelRN.placeHolderList[664]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:AimSystem|model:AimEye|model:AimOffsetEye|model:AimFollowEye|model:AimEye_M.rotateX" 
		"modelRN.placeHolderList[665]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:AimSystem|model:AimEye|model:AimOffsetEye|model:AimFollowEye|model:AimEye_M.rotateY" 
		"modelRN.placeHolderList[666]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:AimSystem|model:AimEye|model:AimOffsetEye|model:AimFollowEye|model:AimEye_M.rotateZ" 
		"modelRN.placeHolderList[667]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:AimSystem|model:AimEye|model:AimOffsetEye|model:AimFollowEye|model:AimEye_M.scaleX" 
		"modelRN.placeHolderList[668]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:AimSystem|model:AimEye|model:AimOffsetEye|model:AimFollowEye|model:AimEye_M.scaleY" 
		"modelRN.placeHolderList[669]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:AimSystem|model:AimEye|model:AimOffsetEye|model:AimFollowEye|model:AimEye_M.scaleZ" 
		"modelRN.placeHolderList[670]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:AimSystem|model:AimEye|model:AimOffsetEye|model:AimFollowEye|model:AimEye_M|model:AimOffsetEye_R|model:AimEye_R.drawOverride" 
		"modelRN.placeHolderList[671]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:AimSystem|model:AimEye|model:AimOffsetEye|model:AimFollowEye|model:AimEye_M|model:AimOffsetEye_R|model:AimEye_R.translateX" 
		"modelRN.placeHolderList[672]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:AimSystem|model:AimEye|model:AimOffsetEye|model:AimFollowEye|model:AimEye_M|model:AimOffsetEye_R|model:AimEye_R.translateY" 
		"modelRN.placeHolderList[673]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:AimSystem|model:AimEye|model:AimOffsetEye|model:AimFollowEye|model:AimEye_M|model:AimOffsetEye_R|model:AimEye_R.translateZ" 
		"modelRN.placeHolderList[674]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:AimSystem|model:AimEye|model:AimOffsetEye|model:AimFollowEye|model:AimEye_M|model:AimOffsetEye_L|model:AimEye_L.drawOverride" 
		"modelRN.placeHolderList[675]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:AimSystem|model:AimEye|model:AimOffsetEye|model:AimFollowEye|model:AimEye_M|model:AimOffsetEye_L|model:AimEye_L.translateX" 
		"modelRN.placeHolderList[676]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:AimSystem|model:AimEye|model:AimOffsetEye|model:AimFollowEye|model:AimEye_M|model:AimOffsetEye_L|model:AimEye_L.translateY" 
		"modelRN.placeHolderList[677]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:AimSystem|model:AimEye|model:AimOffsetEye|model:AimFollowEye|model:AimEye_M|model:AimOffsetEye_L|model:AimEye_L.translateZ" 
		"modelRN.placeHolderList[678]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:RootSystem|model:RootFollowMain|model:RootOffsetX_M|model:RootExtraX_M|model:RootX_M.translateX" 
		"modelRN.placeHolderList[679]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:RootSystem|model:RootFollowMain|model:RootOffsetX_M|model:RootExtraX_M|model:RootX_M.translateY" 
		"modelRN.placeHolderList[680]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:RootSystem|model:RootFollowMain|model:RootOffsetX_M|model:RootExtraX_M|model:RootX_M.translateZ" 
		"modelRN.placeHolderList[681]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:RootSystem|model:RootFollowMain|model:RootOffsetX_M|model:RootExtraX_M|model:RootX_M.rotateX" 
		"modelRN.placeHolderList[682]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:RootSystem|model:RootFollowMain|model:RootOffsetX_M|model:RootExtraX_M|model:RootX_M.rotateY" 
		"modelRN.placeHolderList[683]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:RootSystem|model:RootFollowMain|model:RootOffsetX_M|model:RootExtraX_M|model:RootX_M.rotateZ" 
		"modelRN.placeHolderList[684]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:RootSystem|model:RootFollowMain|model:RootOffsetX_M|model:RootExtraX_M|model:RootX_M.drawOverride" 
		"modelRN.placeHolderList[685]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:RootSystem|model:RootFollowMain|model:RootOffsetX_M|model:RootExtraX_M|model:RootX_M.visibility" 
		"modelRN.placeHolderList[686]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_R.spread" 
		"modelRN.placeHolderList[687]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_R.cup" 
		"modelRN.placeHolderList[688]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_R.indexCurl" 
		"modelRN.placeHolderList[689]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_R.middleCurl" 
		"modelRN.placeHolderList[690]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_R.ringCurl" 
		"modelRN.placeHolderList[691]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_R.pinkyCurl" 
		"modelRN.placeHolderList[692]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_R.thumbCurl" 
		"modelRN.placeHolderList[693]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_R.drawOverride" 
		"modelRN.placeHolderList[694]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_L.spread" 
		"modelRN.placeHolderList[695]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_L.cup" 
		"modelRN.placeHolderList[696]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_L.indexCurl" 
		"modelRN.placeHolderList[697]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_L.middleCurl" 
		"modelRN.placeHolderList[698]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_L.ringCurl" 
		"modelRN.placeHolderList[699]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_L.pinkyCurl" 
		"modelRN.placeHolderList[700]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_L.thumbCurl" 
		"modelRN.placeHolderList[701]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_L.drawOverride" 
		"modelRN.placeHolderList[702]" ""
		5 4 "modelRN" "|model:Group|model:DeformationSystem|model:Root_M|model:RootPart1_M|model:RootPart2_M|model:Spine1_M|model:Spine1Part1_M|model:Spine1Part2_M|model:Chest_M|model:Neck_M|model:NeckPart1_M|model:NeckPart2_M|model:Head_M|model:model:CurvaControl_PanelFacial_Root|model:model:CurvaControl_PanelFacial_RootShape.drawOverride" 
		"modelRN.placeHolderList[703]" ""
		5 4 "modelRN" "|model:Group|model:DeformationSystem|model:Root_M|model:RootPart1_M|model:RootPart2_M|model:Spine1_M|model:Spine1Part1_M|model:Spine1Part2_M|model:Chest_M|model:Neck_M|model:NeckPart1_M|model:NeckPart2_M|model:Head_M|model:model:CurvaControl_PanelFacial_Root|model:model:CurvaControl_CejaDerechaArriba|model:model:CurvaControl_CejaDerechaArribaShape.drawOverride" 
		"modelRN.placeHolderList[704]" ""
		5 4 "modelRN" "|model:Group|model:DeformationSystem|model:Root_M|model:RootPart1_M|model:RootPart2_M|model:Spine1_M|model:Spine1Part1_M|model:Spine1Part2_M|model:Chest_M|model:Neck_M|model:NeckPart1_M|model:NeckPart2_M|model:Head_M|model:model:CurvaControl_PanelFacial_Root|model:model:CurvaControl_CejaIzquierdaArriba|model:model:CurvaControl_CejaIzquierdaArribaShape.drawOverride" 
		"modelRN.placeHolderList[705]" ""
		5 4 "modelRN" "|model:Group|model:DeformationSystem|model:Root_M|model:RootPart1_M|model:RootPart2_M|model:Spine1_M|model:Spine1Part1_M|model:Spine1Part2_M|model:Chest_M|model:Neck_M|model:NeckPart1_M|model:NeckPart2_M|model:Head_M|model:model:CurvaControl_PanelFacial_Root|model:model:CurvaControl_CejaDerechaAbajo|model:model:CurvaControl_CejaDerechaAbajoShape.drawOverride" 
		"modelRN.placeHolderList[706]" ""
		5 4 "modelRN" "|model:Group|model:DeformationSystem|model:Root_M|model:RootPart1_M|model:RootPart2_M|model:Spine1_M|model:Spine1Part1_M|model:Spine1Part2_M|model:Chest_M|model:Neck_M|model:NeckPart1_M|model:NeckPart2_M|model:Head_M|model:model:CurvaControl_PanelFacial_Root|model:model:CurvaControl_CejaIzquierdaAbajo|model:model:CurvaControl_CejaIzquierdaAbajoShape.drawOverride" 
		"modelRN.placeHolderList[707]" ""
		5 4 "modelRN" "|model:Group|model:DeformationSystem|model:Root_M|model:RootPart1_M|model:RootPart2_M|model:Spine1_M|model:Spine1Part1_M|model:Spine1Part2_M|model:Chest_M|model:Neck_M|model:NeckPart1_M|model:NeckPart2_M|model:Head_M|model:model:CurvaControl_PanelFacial_Root|model:model:CurvaControl_Nariz|model:model:CurvaControl_NarizShape.drawOverride" 
		"modelRN.placeHolderList[708]" ""
		5 4 "modelRN" "|model:Group|model:DeformationSystem|model:Root_M|model:RootPart1_M|model:RootPart2_M|model:Spine1_M|model:Spine1Part1_M|model:Spine1Part2_M|model:Chest_M|model:Neck_M|model:NeckPart1_M|model:NeckPart2_M|model:Head_M|model:model:CurvaControl_PanelFacial_Root|model:model:CurvaControl_Boca|model:model:CurvaControl_BocaShape.drawOverride" 
		"modelRN.placeHolderList[709]" ""
		5 4 "modelRN" "|model:Group|model:DeformationSystem|model:Root_M|model:RootPart1_M|model:RootPart2_M|model:Spine1_M|model:Spine1Part1_M|model:Spine1Part2_M|model:Chest_M|model:Neck_M|model:NeckPart1_M|model:NeckPart2_M|model:Head_M|model:model:CurvaControl_PanelFacial_Root|model:model:CurvaControl_CabezaDeLado|model:model:CurvaControl_CabezaDeLadoShape.drawOverride" 
		"modelRN.placeHolderList[710]" ""
		5 4 "modelRN" "|model:Group|model:DeformationSystem|model:Root_M|model:RootPart1_M|model:RootPart2_M|model:Spine1_M|model:Spine1Part1_M|model:Spine1Part2_M|model:Chest_M|model:Neck_M|model:NeckPart1_M|model:NeckPart2_M|model:Head_M|model:model:CurvaControl_PanelFacial_Root|model:model:CurvaControl_CabezaAbajo|model:model:CurvaControl_CabezaAbajoShape.drawOverride" 
		"modelRN.placeHolderList[711]" ""
		5 4 "modelRN" "|model:Group|model:Geometry|model:model:geo|model:model:Geo_NiñoCompleto|model:model:Geo_CuerpoMasCabeza.drawOverride" 
		"modelRN.placeHolderList[712]" "";
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
createNode UsdDefaultSettings -n "UsdDefaultRenderSettings7";
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
createNode animCurveTU -n "Main_visibility";
	rename -uid "18779684-4C00-6BD2-EA6C-CEB683CF917B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
	setAttr -s 8 ".kox[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".ots[0:7]"  9 9 9 9 9 9 9 9;
createNode animCurveTL -n "Main_translateX";
	rename -uid "A604221F-442A-3F15-C556-B79CFEA97C66";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "Main_translateY";
	rename -uid "79624E9A-4515-B461-B01B-8E92FA9B7CA5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "Main_translateZ";
	rename -uid "C7EFC192-454B-A9E2-D0C8-B79559862C22";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0.49425797455299403 2 -0.3709683956214711
		 4 -1.1040223964544698 6 -7.0351180910904656 7 -0.2049128960026092 8 0.88570479159198001
		 10 -1.8327140684495191 12 -0.71185253004144045;
createNode animCurveTA -n "Main_rotateX";
	rename -uid "E8F03A42-4C8B-596A-6F53-48AC90901554";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "Main_rotateY";
	rename -uid "989D4ACE-4230-6BC7-7F16-0F9485F83E07";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "Main_rotateZ";
	rename -uid "A0840A80-4B73-FA7A-6EFB-F3AB7F5C9613";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "Main_scaleX";
	rename -uid "6EF3D451-48B6-1519-A7E2-239048DB5F40";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "Main_scaleY";
	rename -uid "EBAFED87-4171-15A9-7843-93A2EB975DCD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "Main_scaleZ";
	rename -uid "C3601A75-4FC7-8DC3-E8FA-B9853D89BDE5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "FKNeck_M_translateX";
	rename -uid "0D429214-41BD-328C-633A-34A0A9ABA4B5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKNeck_M_translateY";
	rename -uid "EF436090-419E-2FFF-DA5C-188C194828FD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKNeck_M_translateZ";
	rename -uid "E08EA2DC-4B5E-7708-1EC4-6E9417AD457D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKNeck_M_rotateX";
	rename -uid "13F138DD-4FB4-5EFE-BA2D-63A18C115DFF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKNeck_M_rotateY";
	rename -uid "D3107034-4919-1F63-576D-5DA877D77512";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKNeck_M_rotateZ";
	rename -uid "BE665C91-46CE-9C85-BB7F-C382DFCA4D90";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "FKNeck_M_scaleX";
	rename -uid "7D759C8B-493B-A5F8-FD56-DB8802EE68D7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKNeck_M_scaleY";
	rename -uid "BE3868AB-4E75-ECF6-3B12-619A67FA04EF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKNeck_M_scaleZ";
	rename -uid "BF03336A-4993-FD92-10CA-B482E84B6C0A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "FKHead_M_translateX";
	rename -uid "D47AB6EC-4444-6D06-3163-A2960D03713D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKHead_M_translateY";
	rename -uid "87FB073F-4E35-3BFC-4760-679C2BA9ED1A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKHead_M_translateZ";
	rename -uid "77D72174-4841-DD75-0D5F-0EA8C1D1DFBC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKHead_M_rotateX";
	rename -uid "50A6545B-4FFD-2147-8F3E-F4AC187CE982";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKHead_M_rotateY";
	rename -uid "0ED43EF1-47ED-DEB1-BD49-F39802AEA42B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKHead_M_rotateZ";
	rename -uid "BB27B3BF-4509-CAB0-8D38-91B9182E0E54";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "FKHead_M_scaleX";
	rename -uid "719D68BB-4EC5-542B-ED6C-AE82F9438A4B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKHead_M_scaleY";
	rename -uid "96CB0CF9-4070-FC4A-AD2B-E7A10A32A17D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKHead_M_scaleZ";
	rename -uid "45D7A790-484A-B487-A992-FC8877F9BD40";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKHead_M_Global";
	rename -uid "65C65BF1-4DFF-0D80-E00B-BEAC5C8EBE63";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKEye_R_translateX";
	rename -uid "C63EB63F-4B06-4BFE-4822-C2B540F0C1E7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKEye_R_translateY";
	rename -uid "F1659DED-4CA8-11E4-7266-23B50CCD9778";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKEye_R_translateZ";
	rename -uid "AA393BFD-4304-89C9-3FB0-AC9421E790C6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKEye_R_rotateX";
	rename -uid "54A8DE33-48FD-1571-0911-9E83D4E65BB0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKEye_R_rotateY";
	rename -uid "18AFCE24-44C3-9232-8D5F-698C35EB9065";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKEye_R_rotateZ";
	rename -uid "0E0AA809-4435-5848-C82A-519C8051F9B7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "FKEye_R_scaleX";
	rename -uid "2A917AA1-4118-2C2C-DC0A-18ADDAF54B51";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKEye_R_scaleY";
	rename -uid "B64259FD-4A20-70BA-FE67-A9BB2421D287";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKEye_R_scaleZ";
	rename -uid "12B79EAD-4788-561D-242E-29BD3A72E835";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "FKJaw_M_translateX";
	rename -uid "13E28FFC-4411-CF79-AD33-CA85B9B57036";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKJaw_M_translateY";
	rename -uid "A02D4AE5-4957-2DEB-8F8B-C58758827323";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKJaw_M_translateZ";
	rename -uid "E236AED0-4D7A-5D4E-C812-519C6F2746A8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKJaw_M_rotateX";
	rename -uid "64DEBE22-4D8C-7D44-FDC3-AFA9035978A3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKJaw_M_rotateY";
	rename -uid "3EF36C17-46F6-25AB-AB3B-3FB9A154172B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKJaw_M_rotateZ";
	rename -uid "58C5E4E8-4289-7083-B209-6092FDF19A75";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "FKJaw_M_scaleX";
	rename -uid "5FC5D4D0-4E47-549B-6102-D9B941A41FD1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKJaw_M_scaleY";
	rename -uid "9762137B-423B-C566-2ADF-D29E7E1BF016";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKJaw_M_scaleZ";
	rename -uid "410F0EA4-41EC-EA7F-AB8A-19B1B5DDEFA5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "FKEye_L_translateX";
	rename -uid "8E136FC6-4C83-4444-E1DC-24B2F38734E4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKEye_L_translateY";
	rename -uid "FE81710E-4489-041C-DD68-798DB89458F5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKEye_L_translateZ";
	rename -uid "40716BE0-45BC-7AF9-944B-B29E1539C3B0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKEye_L_rotateX";
	rename -uid "EA2F2C88-467D-436B-3288-B28918E51212";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKEye_L_rotateY";
	rename -uid "53D34C68-4727-C90D-3F19-059C3101D04B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKEye_L_rotateZ";
	rename -uid "73CC1ADF-43D1-F436-E0E7-96B7A14F56D7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "FKEye_L_scaleX";
	rename -uid "381C2AE0-4A2A-4DF2-8C2A-95B847B06BE4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKEye_L_scaleY";
	rename -uid "5A2DA44E-4FE2-B733-00DF-399F3520D00D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKEye_L_scaleZ";
	rename -uid "D87392CE-40D6-C4DB-BF0A-7EAF854988FD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "FKScapula_R_translateX";
	rename -uid "F66302BB-4112-C7B5-C241-FEA7CB234ED4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKScapula_R_translateY";
	rename -uid "F719E5E4-4727-2E8B-A492-ABB7001FC545";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKScapula_R_translateZ";
	rename -uid "8BA933DD-43FD-41C3-7A17-2F9F4182C859";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKScapula_R_rotateX";
	rename -uid "35667F57-4795-D5E1-22C0-19BD0DE1848C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKScapula_R_rotateY";
	rename -uid "EE1F1845-4141-48AF-8550-3598507B537B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKScapula_R_rotateZ";
	rename -uid "47DE5CC2-41D0-45F5-D3C6-42B9A84CF6A5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "FKScapula_R_scaleX";
	rename -uid "227D3032-4426-C170-05BF-AF944F4A02F7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKScapula_R_scaleY";
	rename -uid "7BCA3007-4707-7384-F3BF-71B7CE99CE59";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKScapula_R_scaleZ";
	rename -uid "62B4D8E9-46F5-F154-9E26-B19E50FF94DF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "FKShoulder_R_translateX";
	rename -uid "69F40ACC-422D-2176-F577-DCB26D755AA0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1.4956466319682935 2 1.4956466319682935
		 4 1.4956466319682935 6 2.1571610750625125 7 2.1571610750625125 8 2.1571610750625125
		 10 2.1571610750625125 12 2.1571610750625125;
createNode animCurveTL -n "FKShoulder_R_translateY";
	rename -uid "2DD5831A-431F-6322-E02A-96B4B19C4095";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0.33691375792345374 2 0.33691375792345374
		 4 0.33691375792345374 6 0.41726489701472136 7 0.41726489701472136 8 0.41726489701472136
		 10 0.41726489701472136 12 0.41726489701472136;
createNode animCurveTL -n "FKShoulder_R_translateZ";
	rename -uid "C1DCB5F2-4A14-ED71-B636-CA941986F6B5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0.76769556350155188 2 0.76769556350155188
		 4 0.76769556350155188 6 0.74652253190960616 7 0.74652253190960616 8 0.74652253190960616
		 10 0.74652253190960616 12 0.74652253190960616;
createNode animCurveTA -n "FKShoulder_R_rotateX";
	rename -uid "54DBF878-4971-3823-353F-18808C92957D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 34.265995983781572 2 -8.3653352646956574
		 4 -45.855957024467862 6 -19.581232450804741 7 -15.791650688733798 8 16.638216416339063
		 10 46.41846214197097 12 70.612560692373521;
createNode animCurveTA -n "FKShoulder_R_rotateY";
	rename -uid "47B71D10-41F0-C3B8-54B9-D7B88071E180";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 64.218509364392744 2 61.771413851767967
		 4 57.052203249974703 6 45.853418859747237 7 21.330138338877873 8 23.390975585698971
		 10 60.167641861102695 12 65.473024794122452;
createNode animCurveTA -n "FKShoulder_R_rotateZ";
	rename -uid "4DBA1BDB-487E-D24B-199B-4183BDD6AF69";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 15.25955713900807 2 21.487934420256362
		 4 19.458448310692642 6 -54.176971131290053 7 -78.783508163094453 8 -75.647792461865322
		 10 -58.834643952911172 12 -62.975451635221297;
createNode animCurveTU -n "FKShoulder_R_scaleX";
	rename -uid "72875A97-4B7C-EC9B-30D6-F69088080843";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKShoulder_R_scaleY";
	rename -uid "3B20BC7B-4FFB-40D0-0806-AC8E01D3742E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKShoulder_R_scaleZ";
	rename -uid "4160CFDB-4F6A-E656-5AF1-EE83583D9AB9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "FKElbow_R_translateX";
	rename -uid "2238B039-45DE-E84F-4DE8-26B3531E7A85";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKElbow_R_translateY";
	rename -uid "8919CF68-41A9-7322-D08C-A2BC5A78514F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKElbow_R_translateZ";
	rename -uid "4872C9C0-4EFE-BB97-B0DA-AF8CD499A726";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKElbow_R_rotateX";
	rename -uid "CD0433F5-4063-B618-9ABB-1F9AAFF9A432";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 21.177681100741083 2 21.177681100741083
		 4 17.749817611203373 6 48.288712715392691 7 49.482799497231113 8 49.482799497231113
		 10 11.674659699547494 12 7.0783375307930196;
createNode animCurveTA -n "FKElbow_R_rotateY";
	rename -uid "0CFC824F-46CD-2555-DE66-42A42B982BBA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 37.618496935779469 2 37.618496935779469
		 4 40.139308114300768 6 58.575826831083042 7 35.641694327212647 8 35.641694327212647
		 10 33.907962181272651 12 41.937391590198956;
createNode animCurveTA -n "FKElbow_R_rotateZ";
	rename -uid "AB3CEF7E-4BBF-A2C0-8F57-5CB4EEA48625";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 51.673692561612654 2 51.673692561612654
		 4 68.984668998691504 6 0.69972595372048241 7 -14.321520549937386 8 -14.321520549937386
		 10 10.330757573061808 12 21.559635167091439;
createNode animCurveTU -n "FKElbow_R_scaleX";
	rename -uid "B94ACFAC-4D51-9E53-6D53-358B31022630";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKElbow_R_scaleY";
	rename -uid "B14973F2-4C6B-A2EA-DEE8-42B14C97A19D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKElbow_R_scaleZ";
	rename -uid "9807B8F6-42B6-9600-DC6E-A3B52C715499";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "FKWrist_R_translateX";
	rename -uid "E36F26E3-41B1-9D60-7D28-4FAD4678FAA9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKWrist_R_translateY";
	rename -uid "1A9801A2-4A70-BBA5-65E6-E0A5A0638C24";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKWrist_R_translateZ";
	rename -uid "3B4046BA-42F9-EB5E-DD41-C3A2555A0C7C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKWrist_R_rotateX";
	rename -uid "EC169FC0-44B4-07B1-863C-C0AB376EEE97";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 -32.092219560656268 7 -39.779673355906681
		 8 -39.779673355906681 10 -39.779673355906681 12 -39.779673355906681;
createNode animCurveTA -n "FKWrist_R_rotateY";
	rename -uid "3E1C4E7C-400B-B71F-3457-ED9C4EA84197";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 -5.7983923300892659 2 -5.7983923300892659
		 4 -5.7983923300892659 6 -4.9170957280497172 7 -0.59780765426954574 8 -0.59780765426954574
		 10 -0.59780765426954574 12 -0.59780765426954574;
createNode animCurveTA -n "FKWrist_R_rotateZ";
	rename -uid "D01D2AD2-412B-DA45-EA43-56A815A2B492";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 -3.0768132873384428 7 -2.4241192988110791
		 8 -2.4241192988110791 10 -2.4241192988110791 12 -2.4241192988110791;
createNode animCurveTU -n "FKWrist_R_scaleX";
	rename -uid "7E70DBC9-4BBC-35F2-57F8-AD90DB0C47ED";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKWrist_R_scaleY";
	rename -uid "1E7F7D67-4014-9647-8EE8-FAA74E9E1218";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKWrist_R_scaleZ";
	rename -uid "22334E4B-4983-0596-D699-179E18D3B0F5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "FKScapula_L_translateX";
	rename -uid "3FF756F2-430A-3087-9675-83B168FDCDA9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKScapula_L_translateY";
	rename -uid "DA19DD60-4FEE-AD90-15BA-4D8D23382B26";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKScapula_L_translateZ";
	rename -uid "5837C7EA-4985-7C33-C0BE-4FBBA0925F05";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKScapula_L_rotateX";
	rename -uid "63F0428C-4290-C0C2-0FBE-618D35D36F6B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKScapula_L_rotateY";
	rename -uid "53269099-4E98-9914-AB0B-C78673848D60";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKScapula_L_rotateZ";
	rename -uid "378B764A-4957-0916-EA19-12980151FC31";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "FKScapula_L_scaleX";
	rename -uid "050AB672-4E16-69FA-63FC-33B71A95CA50";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKScapula_L_scaleY";
	rename -uid "9EE9D3EF-4ADE-937A-2DD7-EC860B72061E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKScapula_L_scaleZ";
	rename -uid "F2C02BAB-43DE-1106-24E5-D6BE8A8FF3EA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "FKShoulder_L_translateX";
	rename -uid "042DF6FE-461E-5282-A966-BD9FA9A06A8E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 -1.8676128746583291 2 -1.8676128746583291
		 4 -1.8676128746583291 6 -1.8676128746583291 7 -1.8676128746583291 8 -1.8676128746583291
		 10 -1.8676128746583291 12 -1.8676128746583291;
createNode animCurveTL -n "FKShoulder_L_translateY";
	rename -uid "FEC4268F-490B-4879-34BB-EB898AD3054F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 -0.26371760304137121 2 -0.26371760304137121
		 4 -0.26371760304137121 6 -0.26371760304137121 7 -0.26371760304137121 8 -0.26371760304137121
		 10 -0.26371760304137121 12 -0.26371760304137121;
createNode animCurveTL -n "FKShoulder_L_translateZ";
	rename -uid "1C3C55A1-4E5B-9155-B148-8FA120E4CF19";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 -0.13390295309959688 2 -0.13390295309959688
		 4 -0.13390295309959688 6 -0.13390295309959688 7 -0.13390295309959688 8 -0.13390295309959688
		 10 -0.13390295309959688 12 -0.13390295309959688;
createNode animCurveTA -n "FKShoulder_L_rotateX";
	rename -uid "BB9CB730-493F-6CFD-51DD-FF916448AA48";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 -30.124965394756959 2 -10.281003075084076
		 4 39.79200671896438 6 56.193176343670096 7 49.999622057320586 8 7.9632801910937925
		 10 -17.826023042893343 12 -39.57366045815521;
createNode animCurveTA -n "FKShoulder_L_rotateY";
	rename -uid "A2E7B23F-4F5D-510E-6C3D-CBB845EEF8E3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 32.46599685294418 2 34.954103674837945
		 4 40.032995248681907 6 57.307761593103294 7 79.215033948964788 8 76.506821333946164
		 10 60.935015861688825 12 75.904967409380333;
createNode animCurveTA -n "FKShoulder_L_rotateZ";
	rename -uid "69D641B7-4D11-68E3-B8E2-B98DC4FC4A05";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 -76.984333914207284 2 -76.69947488214963
		 4 -80.321350453118797 6 -57.422769946640599 7 2.1201098277890824 8 14.397767957723726
		 10 2.101942705061437 12 -43.670562755257976;
createNode animCurveTU -n "FKShoulder_L_scaleX";
	rename -uid "5291A1E3-4BF4-CDE8-9509-16935081C47F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKShoulder_L_scaleY";
	rename -uid "0DA8552B-46E9-E93A-450F-2281A561FB47";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKShoulder_L_scaleZ";
	rename -uid "CE110193-4FFD-2FE5-925E-5093949C5C43";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "FKElbow_L_translateX";
	rename -uid "A22C88F4-42F1-E528-56C3-98AA0974B731";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKElbow_L_translateY";
	rename -uid "C554223D-46DA-13A7-BF5F-5A9F8302E6D6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKElbow_L_translateZ";
	rename -uid "1DC07F4E-420B-361C-A862-268E852CE796";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKElbow_L_rotateX";
	rename -uid "D0C55DCC-4D99-4A20-303C-E3B629A673C0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 3.2103580547801336 2 3.2103580547801336
		 4 3.2103580547801336 6 3.2103580547801336 7 3.3477745164293515 8 9.3954519710516617
		 10 2.39045633677306 12 62.452202479016321;
createNode animCurveTA -n "FKElbow_L_rotateY";
	rename -uid "A27F96E0-46F1-28BE-9F89-9B966E6D1E68";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 21.255421963461394 2 21.255421963461394
		 4 21.255421963461394 6 21.255421963461394 7 22.478751056295781 8 24.277752897125513
		 10 26.644646927429569 12 33.698682575565435;
createNode animCurveTA -n "FKElbow_L_rotateZ";
	rename -uid "A3701805-475E-88E2-F765-42B9A609E77B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 33.485951420681708 2 33.485951420681708
		 4 33.485951420681708 6 33.485951420681708 7 40.578939173686123 8 47.264124357381974
		 10 64.538490924635411 12 21.671561794327477;
createNode animCurveTU -n "FKElbow_L_scaleX";
	rename -uid "B9907E5B-41BB-C1F1-4D51-4983F8D72178";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKElbow_L_scaleY";
	rename -uid "E80690BE-4D3A-E65F-9C91-C581B698A8F7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKElbow_L_scaleZ";
	rename -uid "68B23A4E-4F78-A7D5-EBB9-44AA6A2442DA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "FKWrist_L_translateX";
	rename -uid "34437970-4CA0-532B-9D11-708DDE2C1A37";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKWrist_L_translateY";
	rename -uid "DA722682-47FF-D253-386A-979E3DF27626";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKWrist_L_translateZ";
	rename -uid "6634ED90-4E70-459F-A3D1-E189083A429E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKWrist_L_rotateX";
	rename -uid "BD9A1799-433B-4A1E-2444-B5A8A6870AA1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 -23.869976030577849 2 -23.869976030577849
		 4 -23.869976030577849 6 -23.869976030577849 7 4.0257978702859702 8 -8.6503726998927739
		 10 -5.2929722263408756 12 -38.899088388016985;
createNode animCurveTA -n "FKWrist_L_rotateY";
	rename -uid "89C5908B-4038-DEB7-71E3-979D3E109F54";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 2.3077689223491338 2 2.3077689223491338
		 4 2.3077689223491338 6 2.3077689223491338 7 2.0398479117068611 8 2.2269108931398764
		 10 2.2645866450234027 12 -0.97256380822931343;
createNode animCurveTA -n "FKWrist_L_rotateZ";
	rename -uid "FD52FA68-4F6B-FC19-88EB-BE9620979A3B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 -1.0794953893277417 8 -0.60568144995623219
		 10 5.1488699235702189 12 5.5391758162929738;
createNode animCurveTU -n "FKWrist_L_scaleX";
	rename -uid "657735CE-46A1-E754-FD16-2A8A99CBA73A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKWrist_L_scaleY";
	rename -uid "9B087A8C-409D-C492-46CD-8DBA5AC3D1E6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKWrist_L_scaleZ";
	rename -uid "EDDACE3E-4A45-86CB-A5E5-12B01791B0FE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "FKMiddleFinger1_R_translateX";
	rename -uid "8E04C952-4BAE-2158-2BB0-59AC2A8FD43B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKMiddleFinger1_R_translateY";
	rename -uid "CDEC0457-4AA1-91AB-5734-D281679A158E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKMiddleFinger1_R_translateZ";
	rename -uid "6B5C9F0B-4C16-7153-4040-2DBF002FDCDB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKMiddleFinger1_R_rotateX";
	rename -uid "884A4B5E-4130-1E48-072E-848A90F49333";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKMiddleFinger1_R_rotateY";
	rename -uid "09917C00-4070-81CF-3DA4-9BB044C2F3C7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKMiddleFinger1_R_rotateZ";
	rename -uid "967463DB-491C-16AC-F083-ED876AEC0442";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "FKMiddleFinger1_R_scaleX";
	rename -uid "7E129448-46F9-A90F-3997-43B3C9CC8341";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKMiddleFinger1_R_scaleY";
	rename -uid "B7560767-4717-0F12-703D-F290A2865CDC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKMiddleFinger1_R_scaleZ";
	rename -uid "AD3595D4-4890-3617-8A88-168BA9DB1662";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "FKMiddleFinger2_R_translateX";
	rename -uid "B85512C8-4E3F-9C0D-7E28-169E6224C4C2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKMiddleFinger2_R_translateY";
	rename -uid "E1C16D7D-49E9-5501-0914-5EA44E296C12";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKMiddleFinger2_R_translateZ";
	rename -uid "C6372E11-41E3-29D7-EC19-9E995B4A66FB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKMiddleFinger2_R_rotateX";
	rename -uid "8368FC4B-4A25-6200-22CA-1C95E304434D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKMiddleFinger2_R_rotateY";
	rename -uid "8166DC9B-48E9-A91D-53D2-D09038716032";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKMiddleFinger2_R_rotateZ";
	rename -uid "D1ECDE75-4328-2EDB-343B-069B449B6705";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "FKMiddleFinger2_R_scaleX";
	rename -uid "E9DB2AD7-4B7C-BC7C-ECF1-D8B61F52E69A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKMiddleFinger2_R_scaleY";
	rename -uid "78491854-43D8-BA87-BE62-1EB9F6E7B507";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKMiddleFinger2_R_scaleZ";
	rename -uid "6FE54743-47DC-4BBE-F39A-AFB53AF75D0D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "FKMiddleFinger3_R_translateX";
	rename -uid "6F48D255-4AC3-E889-1B6A-5CB437440888";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKMiddleFinger3_R_translateY";
	rename -uid "A317E263-4095-6ACD-EAE6-7B9F81DC1B9A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKMiddleFinger3_R_translateZ";
	rename -uid "57D8A7D1-4611-932F-D2EE-F1A4D09C0F0D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKMiddleFinger3_R_rotateX";
	rename -uid "10824210-4D4F-FE2D-D47D-A48525C9EDB2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKMiddleFinger3_R_rotateY";
	rename -uid "E1F31CCC-4639-5D45-502D-89928180E9FC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKMiddleFinger3_R_rotateZ";
	rename -uid "5974FD82-4572-7D47-076D-E395CCB07786";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "FKMiddleFinger3_R_scaleX";
	rename -uid "4F201F89-472D-E028-8488-E38BF58D8613";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKMiddleFinger3_R_scaleY";
	rename -uid "155559AE-4793-F5D4-3D37-9FB413337861";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKMiddleFinger3_R_scaleZ";
	rename -uid "345F3DD6-4347-CF92-E803-73A6FDF6BCDD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "FKThumbFinger1_R_translateX";
	rename -uid "B61E5328-452E-94B2-AB14-018095F0CB46";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKThumbFinger1_R_translateY";
	rename -uid "6FE87CCD-4508-31A3-B510-7AB0B305B106";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKThumbFinger1_R_translateZ";
	rename -uid "D548D88B-404F-C1DF-3422-01A2704A497E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKThumbFinger1_R_rotateX";
	rename -uid "260277B2-4400-2DFC-5FC2-FF8CB6F25260";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKThumbFinger1_R_rotateY";
	rename -uid "0BA15CA2-43B8-EC53-3716-819634126793";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKThumbFinger1_R_rotateZ";
	rename -uid "19D366D7-4DE3-D4A7-A3D8-C1B4C242EEED";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "FKThumbFinger1_R_scaleX";
	rename -uid "1BD90824-4B23-37A5-92DB-499294F6844D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKThumbFinger1_R_scaleY";
	rename -uid "A1D3E4EF-4698-BC87-B577-B7920CC2118D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKThumbFinger1_R_scaleZ";
	rename -uid "F91E54B3-47CA-8631-074F-E4AD1509AE48";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "FKThumbFinger2_R_translateX";
	rename -uid "A0245560-4890-B832-ACC8-9DB04E2754F1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKThumbFinger2_R_translateY";
	rename -uid "7D8FA511-4948-1990-F7BD-DB9F4AD4115B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKThumbFinger2_R_translateZ";
	rename -uid "25B62579-4A49-076B-3E78-0387BF4CFEBF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKThumbFinger2_R_rotateX";
	rename -uid "60352B5B-4BEF-8E70-96D8-8C94692E0CB7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKThumbFinger2_R_rotateY";
	rename -uid "2BD5F1FE-4399-25C4-5D92-6FAA58811E5E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKThumbFinger2_R_rotateZ";
	rename -uid "1F4F1BE9-4B16-029A-3225-EA9D86E75FA8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "FKThumbFinger2_R_scaleX";
	rename -uid "582314EE-42AB-ED74-C841-2897E986D7B6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKThumbFinger2_R_scaleY";
	rename -uid "63B44BD2-464D-1961-E606-73AFBFE30CCA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKThumbFinger2_R_scaleZ";
	rename -uid "EA41E283-4250-A251-CEBE-FF8346A29387";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "FKThumbFinger3_R_translateX";
	rename -uid "6613E2A2-45A3-9127-2C1F-629FA2BCB8F2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKThumbFinger3_R_translateY";
	rename -uid "59D62D9C-4967-094B-0092-3A90C234CD09";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKThumbFinger3_R_translateZ";
	rename -uid "B7CCAAD7-43A0-A266-4B8C-ECBD3EBD2533";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKThumbFinger3_R_rotateX";
	rename -uid "F29110AC-428C-840A-1606-1E95BA569D78";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKThumbFinger3_R_rotateY";
	rename -uid "CAA4B802-4C43-21B4-4D57-3D945E99A4AF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKThumbFinger3_R_rotateZ";
	rename -uid "BF7BD9AA-43BF-B3DC-7C6E-349530C6DAAC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "FKThumbFinger3_R_scaleX";
	rename -uid "5E49A118-4061-F6E1-8683-03A6AD3C3106";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKThumbFinger3_R_scaleY";
	rename -uid "2CF586A4-4930-7DAC-A6BE-EE9148D94C47";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKThumbFinger3_R_scaleZ";
	rename -uid "1BA0477F-4088-2A4D-3FB0-D585437A8CC2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "FKIndexFinger1_R_translateX";
	rename -uid "1410DDBB-4532-BABB-6A2E-178D4035AC1E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKIndexFinger1_R_translateY";
	rename -uid "E9B8B0C2-4B3B-5703-33B5-0B977378DAA8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKIndexFinger1_R_translateZ";
	rename -uid "28973A90-4A63-57C1-4FB4-52B8A1DDC02F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKIndexFinger1_R_rotateX";
	rename -uid "E6D21102-4E8C-6416-9F1C-7AB0EF47E425";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKIndexFinger1_R_rotateY";
	rename -uid "7D7E0BBC-4EEB-E190-5AB2-87BB77F35F36";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKIndexFinger1_R_rotateZ";
	rename -uid "9520A66D-4736-FFEB-3B25-1185AB67883B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "FKIndexFinger1_R_scaleX";
	rename -uid "99FAB965-46BB-A091-E0DD-FD9A98087393";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKIndexFinger1_R_scaleY";
	rename -uid "A3CB7D52-4CC7-21C0-2F7C-66825C9F3260";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKIndexFinger1_R_scaleZ";
	rename -uid "D3AFBF52-4268-CF15-1383-F7BD7E70BE54";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "FKIndexFinger2_R_translateX";
	rename -uid "C7E6A669-4EC0-80AE-3174-1AAC6975C59E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKIndexFinger2_R_translateY";
	rename -uid "9FABAFB0-4272-4E2C-D8AE-2A919B560EE0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKIndexFinger2_R_translateZ";
	rename -uid "CE0269CC-4BB8-600F-7F10-CE9935B82727";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKIndexFinger2_R_rotateX";
	rename -uid "525DCA86-4F68-0C13-472C-7982FB519CE4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKIndexFinger2_R_rotateY";
	rename -uid "058FF9CB-4483-8A9D-842F-7FBAF32EFB8A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKIndexFinger2_R_rotateZ";
	rename -uid "9CB98862-487E-B54F-74E4-AAA5F75E0E55";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "FKIndexFinger2_R_scaleX";
	rename -uid "B69D5A28-48ED-A247-68A7-6EAC593575AD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKIndexFinger2_R_scaleY";
	rename -uid "B01E6A31-4FAF-877E-64C2-A68EA53D4F29";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKIndexFinger2_R_scaleZ";
	rename -uid "84173F58-41A4-1D33-1420-88AE9266CE61";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "FKIndexFinger3_R_translateX";
	rename -uid "3D5E4CA9-4832-B538-9588-FC8CA434A39C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKIndexFinger3_R_translateY";
	rename -uid "B7B5FA12-4153-6E41-6455-139C433D937A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKIndexFinger3_R_translateZ";
	rename -uid "5F35B773-40D0-98A4-F6B4-C7AB9D71B537";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKIndexFinger3_R_rotateX";
	rename -uid "8854088D-40E5-D404-AD70-748D5166C9C2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKIndexFinger3_R_rotateY";
	rename -uid "F49EF0DD-48CB-3CBE-C9A6-E0AFCBBA16C5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKIndexFinger3_R_rotateZ";
	rename -uid "BFAE068C-4877-40C9-208D-6194DBEF5E90";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "FKIndexFinger3_R_scaleX";
	rename -uid "A9168CB4-4CFB-A4E5-0D2A-DCBB57B63DBA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKIndexFinger3_R_scaleY";
	rename -uid "1A907846-4A2D-552F-43E5-3C934EA696B2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKIndexFinger3_R_scaleZ";
	rename -uid "C6BE12A0-4646-E29A-B304-B597F4FD75ED";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "FKCup_R_translateX";
	rename -uid "2DE3970B-48C6-5EC6-A302-8187B3AFE8BD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKCup_R_translateY";
	rename -uid "E807F06A-499A-E841-FABC-91AF488F88CB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKCup_R_translateZ";
	rename -uid "E4575525-483A-42A4-33F8-BAA37043CD2D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKCup_R_rotateX";
	rename -uid "B98F29AC-4EAE-7F84-1A6E-548FEBC27ECC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKCup_R_rotateY";
	rename -uid "531949DB-4E2A-26EC-BA95-CCB40FB49012";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKCup_R_rotateZ";
	rename -uid "6960AE7A-46C8-76E5-C4AB-3DACF1ED4706";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "FKCup_R_scaleX";
	rename -uid "D4DCC477-4BCA-815B-FCEE-6896AEC0A792";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKCup_R_scaleY";
	rename -uid "991FF7D3-45B6-D7BC-FB30-31BD93B5F853";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKCup_R_scaleZ";
	rename -uid "FEC6B390-4052-5BE6-3487-5BAA25629C4F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "FKPinkyFinger1_R_translateX";
	rename -uid "3DEB3042-4BBE-69E6-9FD8-708AB1BBFD64";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKPinkyFinger1_R_translateY";
	rename -uid "FE62C98D-45D3-79BE-8B0E-8BA42C531DB9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKPinkyFinger1_R_translateZ";
	rename -uid "3C150F00-425F-EFE9-CF70-65B0932A597D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKPinkyFinger1_R_rotateX";
	rename -uid "5C1749A6-499B-D10A-CD8D-DDB475C06410";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKPinkyFinger1_R_rotateY";
	rename -uid "868359D8-434C-CAB0-6E51-68928727477C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKPinkyFinger1_R_rotateZ";
	rename -uid "48988EAA-40D5-B4EF-5A9E-5EAC80075AF8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "FKPinkyFinger1_R_scaleX";
	rename -uid "56182E3C-4F8F-EC58-0FBB-61803C59CD08";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKPinkyFinger1_R_scaleY";
	rename -uid "A89D25B7-4181-A00E-DEA2-0E86DF71C1C9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKPinkyFinger1_R_scaleZ";
	rename -uid "2164BA3A-42EF-AA9C-DF47-ECA1B7DF65D6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "FKPinkyFinger2_R_translateX";
	rename -uid "95894F9B-4D36-6C7A-642B-1987A8AF19B9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKPinkyFinger2_R_translateY";
	rename -uid "1DBECE84-4AF1-298C-0235-E1B02DB75F8A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKPinkyFinger2_R_translateZ";
	rename -uid "A1F6AF43-4DAF-CF63-6A2B-1C90F71CB499";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKPinkyFinger2_R_rotateX";
	rename -uid "0EA4638F-442C-F9E9-E1B4-E280F162561B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKPinkyFinger2_R_rotateY";
	rename -uid "1AC62F63-434A-60EB-21A7-AF9D7AB86C34";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKPinkyFinger2_R_rotateZ";
	rename -uid "7C8DEA1C-4D0B-A42A-FDDD-55961485AB34";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "FKPinkyFinger2_R_scaleX";
	rename -uid "63DBF3F6-4333-5AD9-5FC9-6C88437B55D8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKPinkyFinger2_R_scaleY";
	rename -uid "4C4BDAB8-4093-9369-6A53-0E9C93468D9C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKPinkyFinger2_R_scaleZ";
	rename -uid "589EA53C-4017-8AF5-F481-8EB8BC95E3B6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "FKPinkyFinger3_R_translateX";
	rename -uid "1BE21BED-4C0D-81BD-B0DB-E986FE033313";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKPinkyFinger3_R_translateY";
	rename -uid "8AD7AD90-4254-A025-3028-04A0D35CE311";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKPinkyFinger3_R_translateZ";
	rename -uid "3087A70F-4335-2D98-FEAC-8D88679FFB1E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKPinkyFinger3_R_rotateX";
	rename -uid "F78C5579-4A74-2BCF-7089-E7BA7C89FBEB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKPinkyFinger3_R_rotateY";
	rename -uid "22418567-49FE-AA91-E63A-83AEB8C3E943";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKPinkyFinger3_R_rotateZ";
	rename -uid "7B0297FC-43B3-C5B7-CE3D-6AA61B8E6110";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "FKPinkyFinger3_R_scaleX";
	rename -uid "A45089F9-4A8C-4C6C-501A-27B33E8CE97F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKPinkyFinger3_R_scaleY";
	rename -uid "1807149E-436D-B183-9816-40A6F6963802";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKPinkyFinger3_R_scaleZ";
	rename -uid "065FEAF8-48E3-BB85-D8BA-CFA468638F79";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "FKRingFinger1_R_translateX";
	rename -uid "304883A4-4C0F-0B25-BD4B-60B10CA2109B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKRingFinger1_R_translateY";
	rename -uid "F8731688-4DD9-1669-82A8-86AE30A1E2E0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKRingFinger1_R_translateZ";
	rename -uid "A6B1CAF0-4DB4-F7FC-C35A-919D24424668";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKRingFinger1_R_rotateX";
	rename -uid "06806495-424F-55A5-3CA9-A79419208D16";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKRingFinger1_R_rotateY";
	rename -uid "A501012D-4D45-F690-87F9-B2A3416CEC7A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKRingFinger1_R_rotateZ";
	rename -uid "983F715A-4C14-6246-439A-55BD08B405D7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "FKRingFinger1_R_scaleX";
	rename -uid "C5D5974E-417B-9EDA-F0AF-F0A33CA18FD3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKRingFinger1_R_scaleY";
	rename -uid "0795358F-49A2-EF25-400B-85AC1C35B64E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKRingFinger1_R_scaleZ";
	rename -uid "B01B3F3C-4254-B29A-1FF0-B09B03CD2AEB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "FKRingFinger2_R_translateX";
	rename -uid "C735ACD9-49BF-3BDD-B6E7-83B847B823B8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKRingFinger2_R_translateY";
	rename -uid "20BDCFEA-481E-B3EE-155E-C9BD290EB2B4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKRingFinger2_R_translateZ";
	rename -uid "171B7DEB-4891-860C-C743-D886026364B1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKRingFinger2_R_rotateX";
	rename -uid "0ACBE6AA-4B2A-03B4-13E8-E3810A90E77F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKRingFinger2_R_rotateY";
	rename -uid "7A34A718-4EAF-BC69-D9E9-F8B47DE0A430";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKRingFinger2_R_rotateZ";
	rename -uid "DE4C86B3-41BE-42DD-B1C4-42844C421611";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "FKRingFinger2_R_scaleX";
	rename -uid "A3B49C27-4AD9-FA67-5409-689399FF26FF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKRingFinger2_R_scaleY";
	rename -uid "C5572635-47F9-B891-6B17-E2A7EDB3FC45";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKRingFinger2_R_scaleZ";
	rename -uid "CCFBD983-47D8-570A-0B4D-D1A3B4088F00";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "FKRingFinger3_R_translateX";
	rename -uid "F10F8EDF-4AAB-3C6A-E8C5-EB9E1E0812BB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKRingFinger3_R_translateY";
	rename -uid "C8BA8476-46DD-0B7B-2BBF-56AF36B68F7B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKRingFinger3_R_translateZ";
	rename -uid "4DC93B98-41B7-A753-80BC-4CB5BC63DD73";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKRingFinger3_R_rotateX";
	rename -uid "CD337DBA-4153-A3EF-9696-3A8A729B6608";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKRingFinger3_R_rotateY";
	rename -uid "F33415A6-4DC6-6A2A-6CD5-C4B6CCB5961B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKRingFinger3_R_rotateZ";
	rename -uid "58A8D367-4945-9F8C-F288-BCB27EF19965";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "FKRingFinger3_R_scaleX";
	rename -uid "1AF49845-44B7-134B-9C9A-72AD5573FD2B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKRingFinger3_R_scaleY";
	rename -uid "1755A197-45A6-8EC4-1D0C-F0A5B2C08BB1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKRingFinger3_R_scaleZ";
	rename -uid "420BF08E-4096-A578-03E9-649E37051179";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "FKRoot_M_translateX";
	rename -uid "66834331-4066-F776-DD19-4BBB219A151C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0.071119480793232381 2 0.071119480793232381
		 4 0.071119480793232381 6 0.071119480793232381 7 0.071119480793232381 8 0.071119480793232381
		 10 0.071119480793232381 12 0.071119480793232381;
createNode animCurveTL -n "FKRoot_M_translateY";
	rename -uid "625D0590-4577-94BC-A2FE-B8BC76C601A4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 -0.0094671439193598668 2 -0.0094671439193598668
		 4 -0.0094671439193598668 6 -0.0094671439193598668 7 -0.0094671439193598668 8 -0.0094671439193598668
		 10 -0.0094671439193598668 12 -0.0094671439193598668;
createNode animCurveTL -n "FKRoot_M_translateZ";
	rename -uid "12D0E4E1-4CA5-FA62-8FDF-58855659AFF4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKRoot_M_rotateX";
	rename -uid "51F2550E-4961-5A7A-8E39-83A6B85107B0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 12.000000000000002 2 10 4 0 6 -10 7 -12.000000000000002
		 8 -10 10 0 12 10;
createNode animCurveTA -n "FKRoot_M_rotateY";
	rename -uid "A333FC09-418B-1FAC-1FAA-C586ABF86A51";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 4.9696166897867431e-17 2 0 4 0 6 0 7 0
		 8 0 10 0 12 0;
createNode animCurveTA -n "FKRoot_M_rotateZ";
	rename -uid "A8E376C7-4785-169E-E2FE-3AB5C7D74D4C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 3.936123434506126 2 3.9361234345061229
		 4 3.9361234345061229 6 3.9361234345061229 7 3.9361234345061247 8 3.9361234345061229
		 10 3.9361234345061229 12 3.9361234345061229;
createNode animCurveTU -n "FKRoot_M_scaleX";
	rename -uid "6E1FE60B-4D1D-2A14-4222-F3B2BDE1FE65";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKRoot_M_scaleY";
	rename -uid "378A1211-4667-37C8-C5DB-C28285A9DE4F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKRoot_M_scaleZ";
	rename -uid "6529F941-4C29-05E7-3EE9-A7B75107704B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "HipSwinger_M_visibility";
	rename -uid "07BEF1BC-4DE1-875E-FCC0-E9A9BDB0D936";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
	setAttr -s 8 ".kox[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".ots[0:7]"  9 9 9 9 9 9 9 9;
createNode animCurveTA -n "HipSwinger_M_rotateX";
	rename -uid "ADE7BBDB-41F6-8265-A9A2-428BC96F4E98";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "HipSwinger_M_rotateY";
	rename -uid "5DF817C1-442C-D08F-34F1-358DA8A36E73";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "HipSwinger_M_rotateZ";
	rename -uid "9934AD92-4219-C5A2-0D8F-BF9D26B6077E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKSpine1_M_translateX";
	rename -uid "412C8A5C-450B-9F5A-786F-8D84187756BE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKSpine1_M_translateY";
	rename -uid "F5D610BC-4118-B574-1F2E-C2B2866D1CBF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKSpine1_M_translateZ";
	rename -uid "7AC47F3C-41AE-E90A-F071-849A6DDFDF25";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKSpine1_M_rotateX";
	rename -uid "41B82BF6-44B8-C946-9E08-BDB8002840E3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKSpine1_M_rotateY";
	rename -uid "BA7FCE7D-4C5E-2338-265E-76B829046A46";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKSpine1_M_rotateZ";
	rename -uid "F9BEB2F2-45DF-D790-246C-25B114D20508";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "FKSpine1_M_scaleX";
	rename -uid "61D63436-4A0B-8429-3299-BE9D378198B5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKSpine1_M_scaleY";
	rename -uid "23B8ED90-478B-066B-7D36-F4B81EFECB06";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKSpine1_M_scaleZ";
	rename -uid "5BF27BF7-495E-0F75-7EB6-AFA4C4937C89";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "FKChest_M_translateX";
	rename -uid "998BA8D2-489F-B69F-D731-4AAF5C1C9B38";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKChest_M_translateY";
	rename -uid "D73E2FDA-48AB-3325-73F4-36B073DB1F98";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKChest_M_translateZ";
	rename -uid "36360A6D-46D7-6416-7275-85824EA216E9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKChest_M_rotateX";
	rename -uid "22792393-4E5F-16A9-6E2C-40BEC0213E4C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKChest_M_rotateY";
	rename -uid "335A15F8-4E8B-B002-7023-589711475B3F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKChest_M_rotateZ";
	rename -uid "3762E4BB-4666-2B03-EE33-8A8DA2D9A8AF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "FKChest_M_scaleX";
	rename -uid "B1D2002E-4764-EB44-E78F-D8A18A97FEDC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKChest_M_scaleY";
	rename -uid "836BD979-483D-E80F-1260-90B5BCF6CFEB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKChest_M_scaleZ";
	rename -uid "231447F6-4C25-7EB2-CC53-81BD4023571A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "FKMiddleFinger1_L_translateX";
	rename -uid "5909DD4F-4885-5DCD-358A-C3AF3B779B06";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKMiddleFinger1_L_translateY";
	rename -uid "0DEA3939-4570-3278-4202-06BF9751C016";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKMiddleFinger1_L_translateZ";
	rename -uid "0F26B6FF-423B-70ED-70B1-3D95A01A4931";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKMiddleFinger1_L_rotateX";
	rename -uid "83241D31-4066-5CBD-361E-81A488CA8B6D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKMiddleFinger1_L_rotateY";
	rename -uid "DC73C436-489A-3CA2-1BD3-E1B22657670B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKMiddleFinger1_L_rotateZ";
	rename -uid "187A55A8-4318-AC72-E504-92AE1B665E44";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "FKMiddleFinger1_L_scaleX";
	rename -uid "6E79616B-49BF-0106-CB71-A48C0D460565";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKMiddleFinger1_L_scaleY";
	rename -uid "6E154A64-4B56-C45C-BDDA-C8B8C4D18594";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKMiddleFinger1_L_scaleZ";
	rename -uid "67D9532E-4060-DF78-42C7-86937AF55682";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "FKMiddleFinger2_L_translateX";
	rename -uid "CEEEF3D3-49A5-9FFD-5CB6-8EBF86E6983F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKMiddleFinger2_L_translateY";
	rename -uid "2ABC317C-4942-47E4-9CC8-748F05DAC6E7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKMiddleFinger2_L_translateZ";
	rename -uid "3EE4D680-480F-BFF9-F4B6-4286E8DA8D80";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKMiddleFinger2_L_rotateX";
	rename -uid "75440121-4761-B7DF-5BB1-1894A59AB88E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKMiddleFinger2_L_rotateY";
	rename -uid "3CED1F90-4443-0F6E-291E-9091DB3BE2CD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKMiddleFinger2_L_rotateZ";
	rename -uid "1508948A-4469-142A-9083-909EA52D6AAE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "FKMiddleFinger2_L_scaleX";
	rename -uid "B1EF05FA-4FBB-8BBB-62B0-D6926ECF6EB1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKMiddleFinger2_L_scaleY";
	rename -uid "B7B9EE0C-4C77-8A83-D75E-5EBB3C9DE830";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKMiddleFinger2_L_scaleZ";
	rename -uid "4964B00E-45D0-8713-B6BC-9895E00A2936";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "FKMiddleFinger3_L_translateX";
	rename -uid "0960C06D-4EC8-17F6-963F-AF82D6E1C395";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKMiddleFinger3_L_translateY";
	rename -uid "175EBF96-4E8F-BDE1-4127-C38EA3B5BDCF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKMiddleFinger3_L_translateZ";
	rename -uid "4A11A52D-4C89-DDB8-C8C4-DEB39EE68E92";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKMiddleFinger3_L_rotateX";
	rename -uid "1B31DCC2-4FF2-449E-A126-93AC09E676A9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKMiddleFinger3_L_rotateY";
	rename -uid "CDD3030F-4DBE-DAC5-18BB-788FAF12280D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKMiddleFinger3_L_rotateZ";
	rename -uid "6D90ED63-4A5F-E6A7-BAE1-84B6AB9FDF99";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "FKMiddleFinger3_L_scaleX";
	rename -uid "69FF09C5-4351-61F8-FD5C-209F16ECDADD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKMiddleFinger3_L_scaleY";
	rename -uid "970D23F6-4E09-C813-47F6-64BC113B1BAE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKMiddleFinger3_L_scaleZ";
	rename -uid "326287F3-4B3A-934A-5B41-2FB887089FB1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "FKThumbFinger1_L_translateX";
	rename -uid "2A034546-408E-D1F7-9413-ED891B7F0BCE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKThumbFinger1_L_translateY";
	rename -uid "CA14570D-4693-1521-D15B-A3AF951382CA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKThumbFinger1_L_translateZ";
	rename -uid "34C79131-4AD2-6465-3CC5-EA818B076B55";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKThumbFinger1_L_rotateX";
	rename -uid "965D8424-42A9-C7DE-D9DE-3BA9B65DB5C9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKThumbFinger1_L_rotateY";
	rename -uid "7949B7AC-45B0-241D-E339-839C8A5CB8D9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKThumbFinger1_L_rotateZ";
	rename -uid "6E6356F7-4016-36D6-6BFD-14BC5BE442D4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "FKThumbFinger1_L_scaleX";
	rename -uid "0DBF927E-41F0-01D9-494F-79A8117AC83A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKThumbFinger1_L_scaleY";
	rename -uid "548C6B8A-419B-0D76-A66F-96846CEF1AFF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKThumbFinger1_L_scaleZ";
	rename -uid "CB01A36F-4CF5-7C9F-4351-058E84DAF34D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "FKThumbFinger2_L_translateX";
	rename -uid "6845EE4B-45B7-533F-2E1A-789480DF08D0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKThumbFinger2_L_translateY";
	rename -uid "E6293796-4092-1E03-351C-1EBA867970CE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKThumbFinger2_L_translateZ";
	rename -uid "9A62D019-4FA7-3CBA-63AD-F4988AF3149B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKThumbFinger2_L_rotateX";
	rename -uid "0C3E77D0-469B-9FDA-1725-ECA3D6FD5331";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKThumbFinger2_L_rotateY";
	rename -uid "AFC673F0-474C-08EE-C9AA-7EBD9F5A3D08";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKThumbFinger2_L_rotateZ";
	rename -uid "44F2CBF4-40DA-4A9C-4DC4-03813D3257A8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "FKThumbFinger2_L_scaleX";
	rename -uid "37EAA37D-4752-60E4-7A94-78A4E0DD8AE7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKThumbFinger2_L_scaleY";
	rename -uid "7E5F47C3-441E-3CA9-442B-D7A782390B19";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKThumbFinger2_L_scaleZ";
	rename -uid "9BEB031B-4394-7CA3-3B42-2FB0D96E9236";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "FKThumbFinger3_L_translateX";
	rename -uid "2A75E3CC-4424-E328-A824-D2A52652CE22";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKThumbFinger3_L_translateY";
	rename -uid "10BBBB02-4753-9C3E-1F6C-60A5028A2FA8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKThumbFinger3_L_translateZ";
	rename -uid "E18BAA41-4E9E-600C-D878-17BAC21613D5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKThumbFinger3_L_rotateX";
	rename -uid "5E2491C6-4AC1-6FC4-5EC7-5C842D5668A3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKThumbFinger3_L_rotateY";
	rename -uid "5BD95200-4E6A-0AED-F1C5-69A2A67DA76D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKThumbFinger3_L_rotateZ";
	rename -uid "13C88B1C-41E1-6480-F0CA-C8942FCDEC55";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "FKThumbFinger3_L_scaleX";
	rename -uid "6C6CA282-4E17-B8EC-7F2E-14B8FE3D98F3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKThumbFinger3_L_scaleY";
	rename -uid "ED521060-4444-9E21-3980-20A8FBF5857F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKThumbFinger3_L_scaleZ";
	rename -uid "E7AC6DE3-49C1-40C1-C0D7-07A409D8C260";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "FKIndexFinger1_L_translateX";
	rename -uid "46867AB4-4434-3BB7-5A53-BAB0D1E808AD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKIndexFinger1_L_translateY";
	rename -uid "058BB371-4232-ECAD-89EC-34A867F48261";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKIndexFinger1_L_translateZ";
	rename -uid "0BE7D9AA-4668-341F-DA44-9BAEE8E47204";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKIndexFinger1_L_rotateX";
	rename -uid "7E208271-42A6-6FF1-606B-44A8D89F3828";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKIndexFinger1_L_rotateY";
	rename -uid "AD668AF7-4D78-D3E7-0AB8-848288583810";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKIndexFinger1_L_rotateZ";
	rename -uid "5319BEE5-4653-2C4D-2E1B-B2955864CED7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "FKIndexFinger1_L_scaleX";
	rename -uid "0D768061-44A3-D7EB-E545-C9ADAEFCC222";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKIndexFinger1_L_scaleY";
	rename -uid "49E0D65F-4A38-34A4-DFC1-DDAD7083EA7D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKIndexFinger1_L_scaleZ";
	rename -uid "310411C2-4354-696D-E250-3F89B14E14E6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "FKIndexFinger2_L_translateX";
	rename -uid "D267FDAD-485B-B7BD-7236-79A6FF119E63";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKIndexFinger2_L_translateY";
	rename -uid "AEDC7791-4376-BA44-0DA0-A4ACC7EECE34";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKIndexFinger2_L_translateZ";
	rename -uid "412F5A2D-4056-AE0B-8096-B7A95137C816";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKIndexFinger2_L_rotateX";
	rename -uid "284BDEDF-42CF-6433-ED95-D89C70BA9644";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKIndexFinger2_L_rotateY";
	rename -uid "F45BA16F-4451-E5E6-BE25-52A4D447C566";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKIndexFinger2_L_rotateZ";
	rename -uid "3CCAB549-43FF-4C98-2998-69A73E84D442";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "FKIndexFinger2_L_scaleX";
	rename -uid "776A4E9A-48C1-3B1E-6D9F-05A0B82B5FF8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKIndexFinger2_L_scaleY";
	rename -uid "1560D0FF-4D6F-33EC-B004-BBAF30C5EEF0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKIndexFinger2_L_scaleZ";
	rename -uid "926B44F9-4230-B3F1-768B-9B8130CD4383";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "FKIndexFinger3_L_translateX";
	rename -uid "D098940A-4D4A-A6A9-D31F-FC9F54310F4D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKIndexFinger3_L_translateY";
	rename -uid "157E2FCD-4E42-E684-37BD-14876A6A1CC0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKIndexFinger3_L_translateZ";
	rename -uid "B4C40AB3-4733-CFE6-D745-A496D0CA130B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKIndexFinger3_L_rotateX";
	rename -uid "8BBF6CE2-45A0-AFDC-CD06-A38AC65A54F2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKIndexFinger3_L_rotateY";
	rename -uid "895AD71F-4F77-D916-54D7-9E87C72AE1D3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKIndexFinger3_L_rotateZ";
	rename -uid "D4EE34FD-4561-BCBA-3E1B-5382D28BF0E0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "FKIndexFinger3_L_scaleX";
	rename -uid "22AFA1CC-48DE-74D5-B401-8893E7C746C7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKIndexFinger3_L_scaleY";
	rename -uid "360C517D-4F92-23CB-8027-5CA48FC09E7B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKIndexFinger3_L_scaleZ";
	rename -uid "471542E0-4443-3C20-5A6A-5F95A5CF33C3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "FKCup_L_translateX";
	rename -uid "43E1F793-4F96-FFAC-002D-CBB9493A963D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKCup_L_translateY";
	rename -uid "615F4900-4228-27EB-EB80-F18396AC74D7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKCup_L_translateZ";
	rename -uid "DF6D392E-4F07-65A1-282F-AE98A6BF61D8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKCup_L_rotateX";
	rename -uid "E5D84E11-4B4A-DBD7-0AE9-34970C8165BB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKCup_L_rotateY";
	rename -uid "D5895139-4E52-D554-4CDD-49BB80301534";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKCup_L_rotateZ";
	rename -uid "14C023ED-4177-7032-C151-88BC168DBD14";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "FKCup_L_scaleX";
	rename -uid "4866191E-4ACE-5FB6-E0C5-C49F0FA3F625";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKCup_L_scaleY";
	rename -uid "0C2E2B5A-4CE8-B870-C93D-A480E83CE728";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKCup_L_scaleZ";
	rename -uid "2700CEE6-4E8B-6A5C-52A7-2DB39FBE9DBD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "FKPinkyFinger1_L_translateX";
	rename -uid "D8215F80-456F-C30F-D1F0-C8B81870298C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKPinkyFinger1_L_translateY";
	rename -uid "BB81C59F-407F-C53F-04E6-378BD900C621";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKPinkyFinger1_L_translateZ";
	rename -uid "1641DB4B-48E1-12E9-C760-079912B30EFB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKPinkyFinger1_L_rotateX";
	rename -uid "844B4578-42D6-3B16-85BB-759E5D35E27B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKPinkyFinger1_L_rotateY";
	rename -uid "6344EA88-44AB-C06B-D032-B38D1283C68F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKPinkyFinger1_L_rotateZ";
	rename -uid "8DFF7821-4C4F-9A0C-4B4B-B0B4F77DAB13";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "FKPinkyFinger1_L_scaleX";
	rename -uid "A3678FDD-465E-23B9-6F75-BB83196511E5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKPinkyFinger1_L_scaleY";
	rename -uid "0BA5D312-4319-D61A-419A-85BEF32AD2DA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKPinkyFinger1_L_scaleZ";
	rename -uid "FC5F6386-413B-CE21-3716-15BD969D63D9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "FKPinkyFinger2_L_translateX";
	rename -uid "44540995-43EA-6A6C-DD02-8F8F0BA586A4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKPinkyFinger2_L_translateY";
	rename -uid "2EEDFF19-4C50-4E50-8722-E5982F38DAD8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKPinkyFinger2_L_translateZ";
	rename -uid "CECD78E0-4613-AFDA-4E50-999B82F4F4DA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKPinkyFinger2_L_rotateX";
	rename -uid "A089BE11-4833-6923-A280-00B4DF4C6D1C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKPinkyFinger2_L_rotateY";
	rename -uid "04CBE595-470D-C694-3A28-77A106B22E60";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKPinkyFinger2_L_rotateZ";
	rename -uid "B780EC52-4B4F-378F-40F9-A98905478080";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "FKPinkyFinger2_L_scaleX";
	rename -uid "8C330ABF-4E6B-F6AA-566B-8286295625B5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKPinkyFinger2_L_scaleY";
	rename -uid "C8335D3A-439E-EE35-59B2-20A0821919D4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKPinkyFinger2_L_scaleZ";
	rename -uid "CBB5D6B5-48F8-9513-5863-2A88F2E1BB09";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "FKPinkyFinger3_L_translateX";
	rename -uid "6E924573-4225-98B5-EE5D-F7960394F248";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKPinkyFinger3_L_translateY";
	rename -uid "459BDA12-4E8F-4CFD-AACA-4387A983633B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKPinkyFinger3_L_translateZ";
	rename -uid "2F2B333A-43BD-1F9E-372B-01B8333B4310";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKPinkyFinger3_L_rotateX";
	rename -uid "8C1D85A9-460D-E017-AE94-498F801D8649";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKPinkyFinger3_L_rotateY";
	rename -uid "66A5B476-4ACC-4827-D15E-8AAE1F310DA4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKPinkyFinger3_L_rotateZ";
	rename -uid "30F0630A-461C-A766-8D80-7D993B0338CC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "FKPinkyFinger3_L_scaleX";
	rename -uid "A823A835-4D66-04D0-0178-5685F2B13A37";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKPinkyFinger3_L_scaleY";
	rename -uid "901C5065-4301-FA9D-1DB3-6DA0BD411547";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKPinkyFinger3_L_scaleZ";
	rename -uid "721A3FA0-435E-0675-210D-8597CDECAEC0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "FKRingFinger1_L_translateX";
	rename -uid "DF03C041-400C-9FCC-0382-8183CC72B128";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKRingFinger1_L_translateY";
	rename -uid "73586A06-471C-2078-AEDB-B6A1555D7248";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKRingFinger1_L_translateZ";
	rename -uid "BB40051C-447C-57B4-036A-BDADD80233A9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKRingFinger1_L_rotateX";
	rename -uid "E7C442D2-4B6A-007B-6DCB-C896246CAAF1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKRingFinger1_L_rotateY";
	rename -uid "7093E06F-4F7E-DF63-970B-19B6327B956B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKRingFinger1_L_rotateZ";
	rename -uid "F0F4AA29-4844-ABC2-682F-1BBA92792673";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "FKRingFinger1_L_scaleX";
	rename -uid "F5D1E0D3-444D-0EFF-2F89-7ABE246D5278";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKRingFinger1_L_scaleY";
	rename -uid "E49DDA33-4C5E-6FEE-50A1-DF99C995171A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKRingFinger1_L_scaleZ";
	rename -uid "CAAF2BAC-4001-95E4-8DBA-548E006840DD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "FKRingFinger2_L_translateX";
	rename -uid "A0514FB7-4D80-1BBE-75E7-2E82D83FB6B6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKRingFinger2_L_translateY";
	rename -uid "E005686E-4FB4-A7ED-D19C-F29793581543";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKRingFinger2_L_translateZ";
	rename -uid "CA667410-4BF5-57FD-7703-4A935E6363A0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKRingFinger2_L_rotateX";
	rename -uid "E0A125E5-4ADB-6E11-202D-F7BDE01130AF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKRingFinger2_L_rotateY";
	rename -uid "F4C58A5C-49BE-6BC9-4C15-EC96FE1711F8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKRingFinger2_L_rotateZ";
	rename -uid "6F632443-4B84-06EE-F7F1-AAA9B3059778";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "FKRingFinger2_L_scaleX";
	rename -uid "C99EABB6-438A-89F7-5C9C-E18F51A2000C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKRingFinger2_L_scaleY";
	rename -uid "294FF617-43D9-686F-F95C-9AB1157D1700";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKRingFinger2_L_scaleZ";
	rename -uid "569A8EB9-497B-0088-4C56-0BB1F4D08E6F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "FKRingFinger3_L_translateX";
	rename -uid "9CECCA88-4A69-82D0-FC3B-F2B6D53382AF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKRingFinger3_L_translateY";
	rename -uid "AED1C7F1-4F2F-CFAC-ABC4-5DB0E203BA30";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "FKRingFinger3_L_translateZ";
	rename -uid "16779EF1-41EE-3E80-38A5-169B1B59C0BD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKRingFinger3_L_rotateX";
	rename -uid "28683F01-411F-54AE-3A72-59810DED1091";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKRingFinger3_L_rotateY";
	rename -uid "ECDADA8A-4131-CD0E-FC5E-76AC11A2FBF4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "FKRingFinger3_L_rotateZ";
	rename -uid "E4F1A85B-4BEE-CAE2-8DF4-A9924D555F4E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "FKRingFinger3_L_scaleX";
	rename -uid "9066B6A9-431A-88F9-747F-DCA7FFD7F874";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKRingFinger3_L_scaleY";
	rename -uid "25E640CD-43E3-C242-F2D8-6783A2C4CEE4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "FKRingFinger3_L_scaleZ";
	rename -uid "A2BD8C29-4A1F-3C7C-3267-0E89A95FCEA0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "IKLeg_R_translateX";
	rename -uid "D0259A96-4E86-6E5E-4DD6-C6993C16A7AB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "IKLeg_R_translateY";
	rename -uid "F33DA36F-493E-59F8-492B-8192D5CEAC4E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 12.387561636709069 2 10.671461934127958
		 4 10.43809747636741 6 11.426518589372023 7 2.0239245265316912 8 -0.35241812863040423
		 10 -0.35241812863040467 12 -1.0302852525129595;
createNode animCurveTL -n "IKLeg_R_translateZ";
	rename -uid "AEB04ADE-4D58-1C6B-FC23-2A82CC3CA37C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 -17.786112394413021 2 -10.281365243153239
		 4 -0.48005801721012986 6 9.577201405424983 7 10.011099269015237 8 4.1453827203034876
		 10 2.195598135558221 12 -7.606641866453554;
createNode animCurveTA -n "IKLeg_R_rotateX";
	rename -uid "992B7F36-4009-73D1-79BF-44BACB317610";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 81.499158817183044 2 81.499158817183044
		 4 81.499158817183044 6 35.78332540066333 7 -34.027989208717116 8 -0.21768601419417963
		 10 -0.39461950570946136 12 -3.9913181482248863;
createNode animCurveTA -n "IKLeg_R_rotateY";
	rename -uid "DF064717-4C6C-A0CC-4599-4092BB8319E3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 -3.4027291004199935 2 -3.4027291004199935
		 4 -3.4027291004199935 6 2.261270749651664 7 -5.7749060263802372 8 -5.838880696560091
		 10 -5.9252038936380282 12 -6.3731035859337117;
createNode animCurveTA -n "IKLeg_R_rotateZ";
	rename -uid "6393FE8F-4EA2-295F-8190-D0B18A208896";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 -3.5243733674744244 2 -3.5243733674744244
		 4 -3.5243733674744244 6 -6.9657869596379625 7 -4.5088458045535296 8 -3.2098339660426825
		 10 -2.2829481179145277 12 1.6917618524207814;
createNode animCurveTU -n "IKLeg_R_scaleX";
	rename -uid "2FE197C5-42F8-9FA3-0FCD-A9A7CA6E3F8B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "IKLeg_R_scaleY";
	rename -uid "762DDD01-479B-A56E-8620-819FA1DEE807";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "IKLeg_R_scaleZ";
	rename -uid "2A4F3246-4E55-7871-D430-ADB8178269E9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "IKLeg_R_followMain";
	rename -uid "F6F2F3FA-4060-023E-98EC-FAA5EC70B0CC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 10 2 10 4 10 6 10 7 10 8 10 10 10 12 10;
createNode animCurveTU -n "IKLeg_R_followRoot";
	rename -uid "751465EF-4B66-CE17-3317-DF8F4DD81A5C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "IKLeg_R_swivel";
	rename -uid "D08FDA45-4D70-627A-8F7F-AD92333B11F9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "IKLeg_R_roll";
	rename -uid "186101A6-4CFB-B2F3-C351-6EA9D3AEE0C2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "IKLeg_R_rollStartAngle";
	rename -uid "14B2C097-43FC-59C0-F311-7993AF5F317C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 30 2 30 4 30 6 30 7 30 8 30 10 30 12 30;
createNode animCurveTU -n "IKLeg_R_rollEndAngle";
	rename -uid "D10A5B15-43CC-B666-FA93-989AA8D42E70";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 60 2 60 4 60 6 60 7 60 8 60 10 60 12 60;
createNode animCurveTU -n "IKLeg_R_rock";
	rename -uid "733F5004-471F-4CF3-8C10-7DA53273BAED";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "IKLeg_R_stretchy";
	rename -uid "31ADB2CF-4269-34BB-BAD5-D3BC4206E004";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "IKLeg_R_antiPop";
	rename -uid "DDAC5240-4B94-F219-C199-BA88B46DC476";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "IKLeg_R_Lenght1";
	rename -uid "1992DDF3-44F7-7354-C561-95A25B742256";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "IKLeg_R_Lenght2";
	rename -uid "B4828B14-4C4C-19F0-E568-04BA11DC1511";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "IKLeg_R_Fatness1";
	rename -uid "0EA88482-4017-D030-3C58-F38E74723F25";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "IKLeg_R_Fatness2";
	rename -uid "ADB9D2A5-4C28-DA31-BBDE-888038E506DC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "IKLeg_R_volume";
	rename -uid "C8D8A546-4902-22EC-9987-5495490492C6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 10 2 10 4 10 6 10 7 10 8 10 10 10 12 10;
createNode animCurveTL -n "RollHeel_R_translateX";
	rename -uid "EEE3F9DB-4CDA-BFFF-8C7B-BEB545CE7D00";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "RollHeel_R_translateY";
	rename -uid "46239E47-43C8-946A-3EBA-A98453CAFFD1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "RollHeel_R_translateZ";
	rename -uid "1274C8AE-40DE-4092-E799-4ABEA883BD0E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "RollHeel_R_rotateX";
	rename -uid "392717E2-43A2-F9BF-0796-9C98C47E4E2A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "RollHeel_R_rotateY";
	rename -uid "687A5824-422C-FE1E-8BE6-FD9F3C020248";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "RollHeel_R_rotateZ";
	rename -uid "1770931E-4374-1DB9-2FB8-8F8D67A28E8B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "RollHeel_R_scaleX";
	rename -uid "20E73E2E-49F6-8DBA-27F7-8EAC1D105250";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "RollHeel_R_scaleY";
	rename -uid "D86C9243-4568-CE1F-B345-FFB582012485";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "RollHeel_R_scaleZ";
	rename -uid "7815D5C2-4659-B0BA-DA6C-A295B1405E34";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "RollToesEnd_R_translateX";
	rename -uid "2C357E69-4E19-79AA-1D35-6BBB65B4EC59";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "RollToesEnd_R_translateY";
	rename -uid "99FF90ED-4FC3-AE79-DCC3-7483F03A27F7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "RollToesEnd_R_translateZ";
	rename -uid "0E9DA430-4FA9-C70F-7CB8-DD84E89BE1E4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "RollToesEnd_R_rotateX";
	rename -uid "72B1D4FE-4A63-DB1F-2278-D998890CA1A2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "RollToesEnd_R_rotateY";
	rename -uid "821F054B-44C3-9F08-C0C7-4EAEC71D1E74";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "RollToesEnd_R_rotateZ";
	rename -uid "33B13817-4C3D-EE21-3A23-14B201BB3DCF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "RollToesEnd_R_scaleX";
	rename -uid "E6432D3E-42B9-DB35-3823-D08C6B2F27B5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "RollToesEnd_R_scaleY";
	rename -uid "6B96334C-4A1E-F885-5F80-699FF0C1FB0F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "RollToesEnd_R_scaleZ";
	rename -uid "4866B63B-4191-6AC7-CEAA-64800645C45E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "RollToes_R_translateX";
	rename -uid "796C28AA-49FF-F020-213A-1BA8760DF2E2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "RollToes_R_translateY";
	rename -uid "1531EAE2-42AE-8BF5-FCA2-87959AB5EB5B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "RollToes_R_translateZ";
	rename -uid "0889E0E4-410E-0F17-66F0-4D963D686411";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "RollToes_R_rotateX";
	rename -uid "E9AD9490-4A04-99EE-0F6F-DD89ED662AD9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0.97986870513905999
		 12 49.189360240062491;
createNode animCurveTA -n "RollToes_R_rotateY";
	rename -uid "9A419610-4701-1D8B-F416-9E874917F98E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0.59745249765664665
		 12 0;
createNode animCurveTA -n "RollToes_R_rotateZ";
	rename -uid "B317AE6D-48E9-2E19-5595-0A8AD6640675";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 1.9274262365317576
		 12 0;
createNode animCurveTU -n "RollToes_R_scaleX";
	rename -uid "9B9F37CB-44DE-2E5F-CF61-8890119F8E4A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "RollToes_R_scaleY";
	rename -uid "77650736-46AA-843E-CB64-9B8CDCDD9587";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "RollToes_R_scaleZ";
	rename -uid "54B2CA26-4113-50F3-20A4-5497DFEF2DB2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "IKToes_R_translateX";
	rename -uid "AEA809D2-4837-CC4D-7193-85933A7ABED1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "IKToes_R_translateY";
	rename -uid "E3A2B378-4E00-26D5-7082-F6B0FE222861";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "IKToes_R_translateZ";
	rename -uid "E2132322-4058-FB1E-1874-26BBFC846A2C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "IKToes_R_rotateX";
	rename -uid "10C53ABE-427A-B4BA-A224-18B8D6B4DC5E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "IKToes_R_rotateY";
	rename -uid "056F4FE5-4907-B46F-C56F-FBBD83ABB0EF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "IKToes_R_rotateZ";
	rename -uid "C01C0A7A-491C-0E1A-EDF7-349D1F64E20D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "IKToes_R_scaleX";
	rename -uid "4E56FF5B-4CEF-B921-C395-A5855FA6EB84";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "IKToes_R_scaleY";
	rename -uid "28C0E31A-4B71-4AAC-670F-EE8586BD91C6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "IKToes_R_scaleZ";
	rename -uid "3EE8E191-49BF-6E81-5796-85832A73F4FF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "IKLeg_L_translateX";
	rename -uid "14CC1BFA-473E-5D6C-7CA8-F9824E602841";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 2.231646435732916;
createNode animCurveTL -n "IKLeg_L_translateY";
	rename -uid "698E9D92-44A8-F5A8-8C9A-00B1885CB5E0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1.7704725189144419 2 0.16931425157763158
		 4 0.16931425157763158 6 0.16931425157763158 7 10.045917544858607 8 7.4462295503643325
		 10 9.9011392643584912 12 11.512993252477987;
createNode animCurveTL -n "IKLeg_L_translateZ";
	rename -uid "5164A660-4003-F22B-360F-E6A4A1E41611";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 9.3035954937099365 2 8.4746362848494989
		 4 4.7408049606806948 6 1.1915640924879476 7 -10.099477261063575 8 -9.6341368487904742
		 10 -3.6605232114047013 12 8.0237073709612616;
createNode animCurveTA -n "IKLeg_L_rotateX";
	rename -uid "DC74829F-4A53-62FD-2BF4-CCABC6FFD6D2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 -31.009746952177387 2 0.30545556175819732
		 4 0.30545556175819732 6 0.30545556175819871 7 85.123716001712054 8 71.57997138203045
		 10 79.929159801868806 12 39.589104495494482;
createNode animCurveTA -n "IKLeg_L_rotateY";
	rename -uid "CAAC781D-416C-3266-F53B-8D895B7D845F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0.91006501525240491 4 0.91006501525240491
		 6 0.91006501525240391 7 -1.2319009308701292 8 -0.95755380423740555 10 -1.1340259092734952
		 12 5.6880123914856524;
createNode animCurveTA -n "IKLeg_L_rotateZ";
	rename -uid "B3D73752-4F7F-B36B-519E-F1B95D4AAB4E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 1.3192839601731696 4 1.3192839601731696
		 6 -10.281522221116902 7 1.025262992498569 8 1.2852340758194547 10 1.1325788570316699
		 12 -4.1206335358161787;
createNode animCurveTU -n "IKLeg_L_scaleX";
	rename -uid "46E28D1F-488C-4F46-CB60-E09E501A79EF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "IKLeg_L_scaleY";
	rename -uid "92C24241-4F63-568E-1E23-8FAEA0666E11";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "IKLeg_L_scaleZ";
	rename -uid "CC63A22A-4248-3287-B9B9-1C9AB18DD4F8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "IKLeg_L_followMain";
	rename -uid "3996795E-425D-8C55-3650-0EB8504F6FCF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 10 2 10 4 10 6 10 7 10 8 10 10 10 12 10;
createNode animCurveTU -n "IKLeg_L_followRoot";
	rename -uid "A7151F76-4283-1584-E90A-6387D886D191";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "IKLeg_L_swivel";
	rename -uid "9DDF6370-4E46-0158-2B7D-F583021092B6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "IKLeg_L_roll";
	rename -uid "A337A28C-44DB-7371-271F-21832F4B1645";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "IKLeg_L_rollStartAngle";
	rename -uid "8DA35378-4524-22C7-A97D-29933A02B6E1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 30 2 30 4 30 6 30 7 30 8 30 10 30 12 30;
createNode animCurveTU -n "IKLeg_L_rollEndAngle";
	rename -uid "38F37FCC-41E2-FB46-D7F5-239CA9F37E9C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 60 2 60 4 60 6 60 7 60 8 60 10 60 12 60;
createNode animCurveTU -n "IKLeg_L_rock";
	rename -uid "9F7A8ABC-411F-04E5-64EB-A9AF727E0301";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "IKLeg_L_stretchy";
	rename -uid "2B314D92-43EA-DF82-06AA-94882E4B2055";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "IKLeg_L_antiPop";
	rename -uid "23E8CE08-4284-2347-8278-89AF37706152";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "IKLeg_L_Lenght1";
	rename -uid "8E586EA3-42D3-A486-F295-668C6D9295F8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "IKLeg_L_Lenght2";
	rename -uid "1663AAC4-4219-AE62-06FD-1FA43CA20323";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "IKLeg_L_Fatness1";
	rename -uid "E2029C0B-400A-E0C1-B333-589873A35F86";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "IKLeg_L_Fatness2";
	rename -uid "227B83A5-47E6-53DD-61E2-2692105F1126";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "IKLeg_L_volume";
	rename -uid "CC66961E-4A5D-4983-CA28-1795409B04C9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 10 2 10 4 10 6 10 7 10 8 10 10 10 12 10;
createNode animCurveTL -n "RollHeel_L_translateX";
	rename -uid "367357C7-4406-0E8A-C992-9D9A98DA6AD3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "RollHeel_L_translateY";
	rename -uid "26DFC5E3-45B8-B65F-693F-97AFCD96A09A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "RollHeel_L_translateZ";
	rename -uid "2D8F5843-4C54-AB0C-3332-09AD1225A235";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "RollHeel_L_rotateX";
	rename -uid "5E8212F6-45B0-1B23-04B3-84AC154470E2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "RollHeel_L_rotateY";
	rename -uid "6A8D9968-423A-B97D-CA71-AFA7379E1AB4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "RollHeel_L_rotateZ";
	rename -uid "D3D36644-4E9B-4570-A1DB-2D8708C9E6F3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "RollHeel_L_scaleX";
	rename -uid "B54AA31D-4A3E-2DBB-9413-EF8F8E6833AD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "RollHeel_L_scaleY";
	rename -uid "EF877662-4420-080A-B00B-13BC7F06383E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "RollHeel_L_scaleZ";
	rename -uid "C46B8E7C-49E6-364E-658B-7A94DA4A4110";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "RollToesEnd_L_translateX";
	rename -uid "3BEA61C2-4A4B-4D05-082A-1C880C071D20";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "RollToesEnd_L_translateY";
	rename -uid "1433595A-4CBD-1AB6-E447-9AA8C6FD570A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "RollToesEnd_L_translateZ";
	rename -uid "04EC2BC7-49BA-FDAD-65C7-FDB54DA7B7D6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "RollToesEnd_L_rotateX";
	rename -uid "033AD3ED-47DE-F55B-B811-BBBB15B03155";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "RollToesEnd_L_rotateY";
	rename -uid "109C3D7C-42CB-69BC-500B-C1B9E22F218D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "RollToesEnd_L_rotateZ";
	rename -uid "9115B6B4-4A47-91E9-A721-44A32B0E8B2C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "RollToesEnd_L_scaleX";
	rename -uid "72473C5B-4F66-67F5-7C3D-17B9EB7FA753";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "RollToesEnd_L_scaleY";
	rename -uid "C361D2F4-4139-3D18-BDCC-1996E341D6B2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "RollToesEnd_L_scaleZ";
	rename -uid "0BFC82C3-4194-1A41-AF40-EBB33772E83E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "RollToes_L_translateX";
	rename -uid "61740918-410F-560B-B659-34AEE626BB04";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "RollToes_L_translateY";
	rename -uid "9D8A3BCC-4DED-EAAA-9549-3782E872F196";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "RollToes_L_translateZ";
	rename -uid "1188162B-4FC3-1A6B-A87D-D580BBD7EA5E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "RollToes_L_rotateX";
	rename -uid "CC59E713-412B-9D8E-5CB5-85B454612D32";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 41.51621877222064 7 6.2129782912907681
		 8 9.7438256037839555 10 7.1840842613103835 12 5.6693904424529187;
createNode animCurveTA -n "RollToes_L_rotateY";
	rename -uid "276BDA55-4DB1-7546-D0B0-A2BF84F1064F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0.97474596159050619 7 -4.2181415012010763
		 8 -2.3643000699352013 10 -4.0851439340145825 12 -5.2029477455729456;
createNode animCurveTA -n "RollToes_L_rotateZ";
	rename -uid "E10EABDE-43A9-7C89-C914-A497C3B2F4A2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 10.997302340389622 7 -6.9569702352933644
		 8 -3.7848502481036026 10 -4.3899702815286235 12 1.6077217345607073;
createNode animCurveTU -n "RollToes_L_scaleX";
	rename -uid "B67B6FBC-47DA-B409-9AB3-399E50DD6785";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "RollToes_L_scaleY";
	rename -uid "CA3E1E56-4B16-F7A6-FAB0-E1872BA95E34";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "RollToes_L_scaleZ";
	rename -uid "00535E12-44AF-662A-6C7E-0097C12613F1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "IKToes_L_translateX";
	rename -uid "A75434FC-46EB-89C5-B6E6-DC9E032E859D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "IKToes_L_translateY";
	rename -uid "A07AFD52-4EFB-3624-AD7D-799B751EE079";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "IKToes_L_translateZ";
	rename -uid "3248035C-49EB-6CC2-A7FB-80A468D5B717";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "IKToes_L_rotateX";
	rename -uid "6D129CD9-487D-6E46-E2B7-C497C109C895";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 -9.1216182194803217 7 0 8 0
		 10 0 12 0;
createNode animCurveTA -n "IKToes_L_rotateY";
	rename -uid "1709DD4B-4F2E-FE76-9578-B094FF30FB3E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 -4.1543205201240792 7 0 8 0
		 10 0 12 0;
createNode animCurveTA -n "IKToes_L_rotateZ";
	rename -uid "DB0FC61A-44A5-2F51-B7CB-E39FEEE43C66";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 -0.20189019369468028 7 0 8 0
		 10 0 12 0;
createNode animCurveTU -n "IKToes_L_scaleX";
	rename -uid "E6DA6CDA-470C-1CFF-1482-14AAE112AB4F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "IKToes_L_scaleY";
	rename -uid "BF55FE50-4EA7-4BC6-8403-758320085D7E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "IKToes_L_scaleZ";
	rename -uid "EA67DDD0-46D1-7C29-C29C-34BD3CF4AA71";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTL -n "PoleLeg_R_translateX";
	rename -uid "739A4DC1-48B1-FA26-DE84-99ADC4EF99EE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "PoleLeg_R_translateY";
	rename -uid "20B1D9D2-4189-9AA4-E142-208B7FC04503";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "PoleLeg_R_translateZ";
	rename -uid "8A702717-4A4E-53DB-2AFB-839E25F5AB01";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "PoleLeg_R_followMain";
	rename -uid "9CDD9D3A-44E5-1DCC-3B7F-4086B3246A6D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 10 2 10 4 10 6 10 7 10 8 10 10 10 12 10;
createNode animCurveTU -n "PoleLeg_R_followRoot";
	rename -uid "5554C9D1-4410-DCDA-4965-0DBBCAD7C3DE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "PoleLeg_R_followLeg";
	rename -uid "ACA147CA-4486-82E3-FF13-A3B25932BA1F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 10 2 10 4 10 6 10 7 10 8 10 10 10 12 10;
createNode animCurveTU -n "PoleLeg_R_lock";
	rename -uid "994EBB4B-4A67-AFF3-F1F3-97834982E193";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "PoleLeg_L_translateX";
	rename -uid "DA13E35C-420F-6101-2F2A-09817D73983F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "PoleLeg_L_translateY";
	rename -uid "A4B65E8C-4DB1-FB1E-ED98-759876C6A533";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "PoleLeg_L_translateZ";
	rename -uid "A41EE6FF-469C-C9E6-0A11-00AB14E036B4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "PoleLeg_L_followMain";
	rename -uid "8057781C-4BAA-941A-BB1B-93A2C904A8FF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 10 2 10 4 10 6 10 7 10 8 10 10 10 12 10;
createNode animCurveTU -n "PoleLeg_L_followRoot";
	rename -uid "C7EF4363-40D9-583D-E58E-18AF23C90DDE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "PoleLeg_L_followLeg";
	rename -uid "5DA69DA6-4D2E-6CF5-23E4-B3AF7FA044A7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 10 2 10 4 10 6 10 7 10 8 10 10 10 12 10;
createNode animCurveTU -n "PoleLeg_L_lock";
	rename -uid "16BAF758-445D-E8FB-4F0A-1EA70B4977BE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "FKIKArm_R_FKIKBlend";
	rename -uid "96D003AA-4B7C-0F86-B1E4-4DB6A727587D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "FKIKArm_R_FKVis";
	rename -uid "98EE42E9-451F-1511-3E2E-F2BD35C24B5A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
	setAttr -s 8 ".kox[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".ots[0:7]"  9 9 9 9 9 9 9 9;
createNode animCurveTU -n "FKIKArm_R_IKVis";
	rename -uid "95A6F643-4D09-AED5-283C-4FA8E83CE6AE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
	setAttr -s 8 ".kox[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".ots[0:7]"  9 9 9 9 9 9 9 9;
createNode animCurveTU -n "FKIKLeg_R_FKIKBlend";
	rename -uid "B0A6B52B-4F7C-A585-7022-AF80E4737B65";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 10 2 10 4 10 6 10 7 10 8 10 10 10 12 10;
createNode animCurveTU -n "FKIKLeg_R_FKVis";
	rename -uid "D596E964-4FBB-BDAA-3B4D-F39DDBA3AA2F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
	setAttr -s 8 ".kox[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".ots[0:7]"  9 9 9 9 9 9 9 9;
createNode animCurveTU -n "FKIKLeg_R_IKVis";
	rename -uid "E810A7A3-4799-9119-07BF-8DBAAE8D6CF3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
	setAttr -s 8 ".kox[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".ots[0:7]"  9 9 9 9 9 9 9 9;
createNode animCurveTU -n "FKIKArm_L_FKIKBlend";
	rename -uid "9B9E6BC9-49C9-8433-5451-D88BACC269BB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "FKIKArm_L_FKVis";
	rename -uid "DBB7E0C7-4793-DE20-900A-5B84DC03CFDC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
	setAttr -s 8 ".kox[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".ots[0:7]"  9 9 9 9 9 9 9 9;
createNode animCurveTU -n "FKIKArm_L_IKVis";
	rename -uid "E5483977-41C2-C821-A510-CA9BDEA2E043";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
	setAttr -s 8 ".kox[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".ots[0:7]"  9 9 9 9 9 9 9 9;
createNode animCurveTU -n "FKIKLeg_L_FKIKBlend";
	rename -uid "7E32953D-4BDD-4A37-A255-C2A86B783CA2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 10 2 10 4 10 6 10 7 10 8 10 10 10 12 10;
createNode animCurveTU -n "FKIKLeg_L_FKVis";
	rename -uid "4D6E7B73-4B95-5350-40BC-B388398400F6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
	setAttr -s 8 ".kox[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".ots[0:7]"  9 9 9 9 9 9 9 9;
createNode animCurveTU -n "FKIKLeg_L_IKVis";
	rename -uid "368489A0-49F8-BFFE-CF29-468E6297BF5A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
	setAttr -s 8 ".kox[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".ots[0:7]"  9 9 9 9 9 9 9 9;
createNode animCurveTU -n "AimEye_M_visibility";
	rename -uid "8CD77940-4839-E1DE-ED24-FB82AE3BB392";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
	setAttr -s 8 ".kox[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".ots[0:7]"  9 9 9 9 9 9 9 9;
createNode animCurveTL -n "AimEye_M_translateX";
	rename -uid "5E80DCAD-491E-D7A5-2035-42AE859DD62B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "AimEye_M_translateY";
	rename -uid "C1786D47-499F-3A13-1790-D18652433617";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "AimEye_M_translateZ";
	rename -uid "99AC5E71-46D2-B629-E01D-68A482BE2872";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "AimEye_M_rotateX";
	rename -uid "5BFAF137-4678-8ED5-68BD-6895F9B243A4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "AimEye_M_rotateY";
	rename -uid "0289BDBD-45DE-3384-F767-F8B76409A603";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "AimEye_M_rotateZ";
	rename -uid "51ABD504-4BCC-AA12-CBD8-5BB1D511E5BE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "AimEye_M_scaleX";
	rename -uid "EEE5A91A-406D-DA33-45ED-7AB7FB62FAAA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "AimEye_M_scaleY";
	rename -uid "86906486-4B8F-1C0E-4410-91BC8BE62566";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "AimEye_M_scaleZ";
	rename -uid "9E86720E-4C8D-50A9-D868-4DBE98663358";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
createNode animCurveTU -n "AimEye_M_follow";
	rename -uid "30C111B4-4A34-10A1-6007-8DA3FEB31386";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 10 2 10 4 10 6 10 7 10 8 10 10 10 12 10;
createNode animCurveTL -n "AimEye_R_translateX";
	rename -uid "0D50D99B-498C-22DD-8EF3-5681D88E65DA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "AimEye_R_translateY";
	rename -uid "B24A95C1-4120-01EF-0E77-4B88AEF2852E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "AimEye_R_translateZ";
	rename -uid "D71B781E-46BA-B029-9124-5EAEB58280DA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "AimEye_L_translateX";
	rename -uid "FAD1C683-499F-8F61-2A8E-4EBDCB7B77E5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "AimEye_L_translateY";
	rename -uid "B3ED9C1F-4053-6CF4-ECF1-49956BDFCF84";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "AimEye_L_translateZ";
	rename -uid "E9DD94D5-420A-92BE-F27D-0CA347AACABF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "RootX_M_visibility";
	rename -uid "AB4990FC-49AE-5246-0AED-A09068753A19";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 2 1 4 1 6 1 7 1 8 1 10 1 12 1;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
	setAttr -s 8 ".kox[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".ots[0:7]"  9 9 9 9 9 9 9 9;
createNode animCurveTL -n "RootX_M_translateX";
	rename -uid "1AA78503-4703-4B6B-82EE-5394B4342837";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTL -n "RootX_M_translateY";
	rename -uid "98CB692D-4A7F-70F8-43D5-108B6A1CBBC5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 -1.4320514541402858 2 -3.8337888551454959
		 4 -1.4223561249531222 6 2.5093551468724087 7 -1.6524487825815157 8 -3.5951267186273128
		 10 -1.5434225204569429 12 1.9842147418285236;
createNode animCurveTL -n "RootX_M_translateZ";
	rename -uid "A7D414A9-4DDD-BAD6-4445-5D8174A73967";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 -1.6847664166356235 2 -0.89125003968558936
		 4 -0.2449584239731184 6 5.7110202472620228 7 -1.7905028848401026 8 -2.3662435754814668
		 10 0.76145883664545533 12 -0.7721010397838528;
createNode animCurveTA -n "RootX_M_rotateX";
	rename -uid "30B97AB4-4F5D-D544-3B83-1F99462EF7BF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "RootX_M_rotateY";
	rename -uid "BE91F1F8-4F93-7776-7C52-908A718A5B85";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTA -n "RootX_M_rotateZ";
	rename -uid "5CB21FE7-47B7-A331-BB08-279EE2274090";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "Fingers_R_spread";
	rename -uid "B7C056F3-48D2-AA50-5D04-02BB4CD8B73C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "Fingers_R_cup";
	rename -uid "C5411AD0-417F-E7AA-E2A1-599084119939";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "Fingers_R_indexCurl";
	rename -uid "9857EF76-4208-7FBD-38C7-D6880DFEEA3B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "Fingers_R_middleCurl";
	rename -uid "0FF19659-44F4-1BFA-F681-16AA698F0CB2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "Fingers_R_ringCurl";
	rename -uid "6150AEE3-40DA-DF5E-5446-DFAFA00B179D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "Fingers_R_pinkyCurl";
	rename -uid "84A1FC91-4720-A75E-35B4-CCB45CF40C47";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "Fingers_R_thumbCurl";
	rename -uid "0F545CCE-48AA-75E3-5DD7-54A29E8C6A77";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "Fingers_L_spread";
	rename -uid "84D8AC40-47AD-C40D-530D-C6B797D461B6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "Fingers_L_cup";
	rename -uid "9559AD76-45D1-BB7A-67BE-E4949A486498";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "Fingers_L_indexCurl";
	rename -uid "95BC950D-4F6A-6AF7-F8A9-A7843799A694";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "Fingers_L_middleCurl";
	rename -uid "6660F9A8-49B0-2446-45BF-2DB022032382";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "Fingers_L_ringCurl";
	rename -uid "EF29C9B2-4909-A8C4-11B7-08AB27A69ED8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "Fingers_L_pinkyCurl";
	rename -uid "A4747D0C-4FB5-A527-8BB2-5F9C6272BC51";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode animCurveTU -n "Fingers_L_thumbCurl";
	rename -uid "E5A7AD26-483E-908F-C58B-32B619FABC63";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 2 0 4 0 6 0 7 0 8 0 10 0 12 0;
createNode trackInfoManager -n "trackInfoManager1";
	rename -uid "B4707E4B-4E42-6D53-439E-3481F769FA93";
select -ne :time1;
	setAttr ".o" 12;
	setAttr ".unw" 12;
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
connectAttr "Main_translateX.o" "modelRN.phl[1]";
connectAttr "Main_translateY.o" "modelRN.phl[2]";
connectAttr "Main_translateZ.o" "modelRN.phl[3]";
connectAttr "Main_rotateX.o" "modelRN.phl[4]";
connectAttr "Main_rotateY.o" "modelRN.phl[5]";
connectAttr "Main_rotateZ.o" "modelRN.phl[6]";
connectAttr "Main_scaleX.o" "modelRN.phl[7]";
connectAttr "Main_scaleY.o" "modelRN.phl[8]";
connectAttr "Main_scaleZ.o" "modelRN.phl[9]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[10]";
connectAttr "Main_visibility.o" "modelRN.phl[11]";
connectAttr "FKNeck_M_scaleX.o" "modelRN.phl[12]";
connectAttr "FKNeck_M_scaleY.o" "modelRN.phl[13]";
connectAttr "FKNeck_M_scaleZ.o" "modelRN.phl[14]";
connectAttr "FKNeck_M_translateX.o" "modelRN.phl[15]";
connectAttr "FKNeck_M_translateY.o" "modelRN.phl[16]";
connectAttr "FKNeck_M_translateZ.o" "modelRN.phl[17]";
connectAttr "FKNeck_M_rotateX.o" "modelRN.phl[18]";
connectAttr "FKNeck_M_rotateY.o" "modelRN.phl[19]";
connectAttr "FKNeck_M_rotateZ.o" "modelRN.phl[20]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[21]";
connectAttr "FKHead_M_scaleX.o" "modelRN.phl[22]";
connectAttr "FKHead_M_scaleY.o" "modelRN.phl[23]";
connectAttr "FKHead_M_scaleZ.o" "modelRN.phl[24]";
connectAttr "FKHead_M_Global.o" "modelRN.phl[25]";
connectAttr "FKHead_M_translateX.o" "modelRN.phl[26]";
connectAttr "FKHead_M_translateY.o" "modelRN.phl[27]";
connectAttr "FKHead_M_translateZ.o" "modelRN.phl[28]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[29]";
connectAttr "FKHead_M_rotateX.o" "modelRN.phl[30]";
connectAttr "FKHead_M_rotateY.o" "modelRN.phl[31]";
connectAttr "FKHead_M_rotateZ.o" "modelRN.phl[32]";
connectAttr "FKEye_R_scaleX.o" "modelRN.phl[33]";
connectAttr "FKEye_R_scaleY.o" "modelRN.phl[34]";
connectAttr "FKEye_R_scaleZ.o" "modelRN.phl[35]";
connectAttr "FKEye_R_translateX.o" "modelRN.phl[36]";
connectAttr "FKEye_R_translateY.o" "modelRN.phl[37]";
connectAttr "FKEye_R_translateZ.o" "modelRN.phl[38]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[39]";
connectAttr "FKEye_R_rotateX.o" "modelRN.phl[40]";
connectAttr "FKEye_R_rotateY.o" "modelRN.phl[41]";
connectAttr "FKEye_R_rotateZ.o" "modelRN.phl[42]";
connectAttr "FKJaw_M_scaleX.o" "modelRN.phl[43]";
connectAttr "FKJaw_M_scaleY.o" "modelRN.phl[44]";
connectAttr "FKJaw_M_scaleZ.o" "modelRN.phl[45]";
connectAttr "FKJaw_M_translateX.o" "modelRN.phl[46]";
connectAttr "FKJaw_M_translateY.o" "modelRN.phl[47]";
connectAttr "FKJaw_M_translateZ.o" "modelRN.phl[48]";
connectAttr "FKJaw_M_rotateX.o" "modelRN.phl[49]";
connectAttr "FKJaw_M_rotateY.o" "modelRN.phl[50]";
connectAttr "FKJaw_M_rotateZ.o" "modelRN.phl[51]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[52]";
connectAttr "FKEye_L_scaleX.o" "modelRN.phl[53]";
connectAttr "FKEye_L_scaleY.o" "modelRN.phl[54]";
connectAttr "FKEye_L_scaleZ.o" "modelRN.phl[55]";
connectAttr "FKEye_L_translateX.o" "modelRN.phl[56]";
connectAttr "FKEye_L_translateY.o" "modelRN.phl[57]";
connectAttr "FKEye_L_translateZ.o" "modelRN.phl[58]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[59]";
connectAttr "FKEye_L_rotateX.o" "modelRN.phl[60]";
connectAttr "FKEye_L_rotateY.o" "modelRN.phl[61]";
connectAttr "FKEye_L_rotateZ.o" "modelRN.phl[62]";
connectAttr "FKScapula_R_scaleX.o" "modelRN.phl[63]";
connectAttr "FKScapula_R_scaleY.o" "modelRN.phl[64]";
connectAttr "FKScapula_R_scaleZ.o" "modelRN.phl[65]";
connectAttr "FKScapula_R_translateX.o" "modelRN.phl[66]";
connectAttr "FKScapula_R_translateY.o" "modelRN.phl[67]";
connectAttr "FKScapula_R_translateZ.o" "modelRN.phl[68]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[69]";
connectAttr "FKScapula_R_rotateX.o" "modelRN.phl[70]";
connectAttr "FKScapula_R_rotateY.o" "modelRN.phl[71]";
connectAttr "FKScapula_R_rotateZ.o" "modelRN.phl[72]";
connectAttr "FKShoulder_R_scaleX.o" "modelRN.phl[73]";
connectAttr "FKShoulder_R_scaleY.o" "modelRN.phl[74]";
connectAttr "FKShoulder_R_scaleZ.o" "modelRN.phl[75]";
connectAttr "FKShoulder_R_translateX.o" "modelRN.phl[76]";
connectAttr "FKShoulder_R_translateY.o" "modelRN.phl[77]";
connectAttr "FKShoulder_R_translateZ.o" "modelRN.phl[78]";
connectAttr "FKShoulder_R_rotateX.o" "modelRN.phl[79]";
connectAttr "FKShoulder_R_rotateY.o" "modelRN.phl[80]";
connectAttr "FKShoulder_R_rotateZ.o" "modelRN.phl[81]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[82]";
connectAttr "FKElbow_R_scaleX.o" "modelRN.phl[83]";
connectAttr "FKElbow_R_scaleY.o" "modelRN.phl[84]";
connectAttr "FKElbow_R_scaleZ.o" "modelRN.phl[85]";
connectAttr "FKElbow_R_translateX.o" "modelRN.phl[86]";
connectAttr "FKElbow_R_translateY.o" "modelRN.phl[87]";
connectAttr "FKElbow_R_translateZ.o" "modelRN.phl[88]";
connectAttr "FKElbow_R_rotateX.o" "modelRN.phl[89]";
connectAttr "FKElbow_R_rotateY.o" "modelRN.phl[90]";
connectAttr "FKElbow_R_rotateZ.o" "modelRN.phl[91]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[92]";
connectAttr "FKWrist_R_scaleX.o" "modelRN.phl[93]";
connectAttr "FKWrist_R_scaleY.o" "modelRN.phl[94]";
connectAttr "FKWrist_R_scaleZ.o" "modelRN.phl[95]";
connectAttr "FKWrist_R_translateX.o" "modelRN.phl[96]";
connectAttr "FKWrist_R_translateY.o" "modelRN.phl[97]";
connectAttr "FKWrist_R_translateZ.o" "modelRN.phl[98]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[99]";
connectAttr "FKWrist_R_rotateX.o" "modelRN.phl[100]";
connectAttr "FKWrist_R_rotateY.o" "modelRN.phl[101]";
connectAttr "FKWrist_R_rotateZ.o" "modelRN.phl[102]";
connectAttr "FKScapula_L_scaleX.o" "modelRN.phl[103]";
connectAttr "FKScapula_L_scaleY.o" "modelRN.phl[104]";
connectAttr "FKScapula_L_scaleZ.o" "modelRN.phl[105]";
connectAttr "FKScapula_L_translateX.o" "modelRN.phl[106]";
connectAttr "FKScapula_L_translateY.o" "modelRN.phl[107]";
connectAttr "FKScapula_L_translateZ.o" "modelRN.phl[108]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[109]";
connectAttr "FKScapula_L_rotateX.o" "modelRN.phl[110]";
connectAttr "FKScapula_L_rotateY.o" "modelRN.phl[111]";
connectAttr "FKScapula_L_rotateZ.o" "modelRN.phl[112]";
connectAttr "FKShoulder_L_scaleX.o" "modelRN.phl[113]";
connectAttr "FKShoulder_L_scaleY.o" "modelRN.phl[114]";
connectAttr "FKShoulder_L_scaleZ.o" "modelRN.phl[115]";
connectAttr "FKShoulder_L_translateX.o" "modelRN.phl[116]";
connectAttr "FKShoulder_L_translateY.o" "modelRN.phl[117]";
connectAttr "FKShoulder_L_translateZ.o" "modelRN.phl[118]";
connectAttr "FKShoulder_L_rotateX.o" "modelRN.phl[119]";
connectAttr "FKShoulder_L_rotateY.o" "modelRN.phl[120]";
connectAttr "FKShoulder_L_rotateZ.o" "modelRN.phl[121]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[122]";
connectAttr "FKElbow_L_scaleX.o" "modelRN.phl[123]";
connectAttr "FKElbow_L_scaleY.o" "modelRN.phl[124]";
connectAttr "FKElbow_L_scaleZ.o" "modelRN.phl[125]";
connectAttr "FKElbow_L_translateX.o" "modelRN.phl[126]";
connectAttr "FKElbow_L_translateY.o" "modelRN.phl[127]";
connectAttr "FKElbow_L_translateZ.o" "modelRN.phl[128]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[129]";
connectAttr "FKElbow_L_rotateX.o" "modelRN.phl[130]";
connectAttr "FKElbow_L_rotateY.o" "modelRN.phl[131]";
connectAttr "FKElbow_L_rotateZ.o" "modelRN.phl[132]";
connectAttr "FKWrist_L_scaleX.o" "modelRN.phl[133]";
connectAttr "FKWrist_L_scaleY.o" "modelRN.phl[134]";
connectAttr "FKWrist_L_scaleZ.o" "modelRN.phl[135]";
connectAttr "FKWrist_L_translateX.o" "modelRN.phl[136]";
connectAttr "FKWrist_L_translateY.o" "modelRN.phl[137]";
connectAttr "FKWrist_L_translateZ.o" "modelRN.phl[138]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[139]";
connectAttr "FKWrist_L_rotateX.o" "modelRN.phl[140]";
connectAttr "FKWrist_L_rotateY.o" "modelRN.phl[141]";
connectAttr "FKWrist_L_rotateZ.o" "modelRN.phl[142]";
connectAttr "FKMiddleFinger1_R_scaleX.o" "modelRN.phl[143]";
connectAttr "FKMiddleFinger1_R_scaleY.o" "modelRN.phl[144]";
connectAttr "FKMiddleFinger1_R_scaleZ.o" "modelRN.phl[145]";
connectAttr "FKMiddleFinger1_R_translateX.o" "modelRN.phl[146]";
connectAttr "FKMiddleFinger1_R_translateY.o" "modelRN.phl[147]";
connectAttr "FKMiddleFinger1_R_translateZ.o" "modelRN.phl[148]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[149]";
connectAttr "FKMiddleFinger1_R_rotateX.o" "modelRN.phl[150]";
connectAttr "FKMiddleFinger1_R_rotateY.o" "modelRN.phl[151]";
connectAttr "FKMiddleFinger1_R_rotateZ.o" "modelRN.phl[152]";
connectAttr "FKMiddleFinger2_R_scaleX.o" "modelRN.phl[153]";
connectAttr "FKMiddleFinger2_R_scaleY.o" "modelRN.phl[154]";
connectAttr "FKMiddleFinger2_R_scaleZ.o" "modelRN.phl[155]";
connectAttr "FKMiddleFinger2_R_translateX.o" "modelRN.phl[156]";
connectAttr "FKMiddleFinger2_R_translateY.o" "modelRN.phl[157]";
connectAttr "FKMiddleFinger2_R_translateZ.o" "modelRN.phl[158]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[159]";
connectAttr "FKMiddleFinger2_R_rotateX.o" "modelRN.phl[160]";
connectAttr "FKMiddleFinger2_R_rotateY.o" "modelRN.phl[161]";
connectAttr "FKMiddleFinger2_R_rotateZ.o" "modelRN.phl[162]";
connectAttr "FKMiddleFinger3_R_scaleX.o" "modelRN.phl[163]";
connectAttr "FKMiddleFinger3_R_scaleY.o" "modelRN.phl[164]";
connectAttr "FKMiddleFinger3_R_scaleZ.o" "modelRN.phl[165]";
connectAttr "FKMiddleFinger3_R_translateX.o" "modelRN.phl[166]";
connectAttr "FKMiddleFinger3_R_translateY.o" "modelRN.phl[167]";
connectAttr "FKMiddleFinger3_R_translateZ.o" "modelRN.phl[168]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[169]";
connectAttr "FKMiddleFinger3_R_rotateX.o" "modelRN.phl[170]";
connectAttr "FKMiddleFinger3_R_rotateY.o" "modelRN.phl[171]";
connectAttr "FKMiddleFinger3_R_rotateZ.o" "modelRN.phl[172]";
connectAttr "FKThumbFinger1_R_scaleX.o" "modelRN.phl[173]";
connectAttr "FKThumbFinger1_R_scaleY.o" "modelRN.phl[174]";
connectAttr "FKThumbFinger1_R_scaleZ.o" "modelRN.phl[175]";
connectAttr "FKThumbFinger1_R_translateX.o" "modelRN.phl[176]";
connectAttr "FKThumbFinger1_R_translateY.o" "modelRN.phl[177]";
connectAttr "FKThumbFinger1_R_translateZ.o" "modelRN.phl[178]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[179]";
connectAttr "FKThumbFinger1_R_rotateX.o" "modelRN.phl[180]";
connectAttr "FKThumbFinger1_R_rotateY.o" "modelRN.phl[181]";
connectAttr "FKThumbFinger1_R_rotateZ.o" "modelRN.phl[182]";
connectAttr "FKThumbFinger2_R_scaleX.o" "modelRN.phl[183]";
connectAttr "FKThumbFinger2_R_scaleY.o" "modelRN.phl[184]";
connectAttr "FKThumbFinger2_R_scaleZ.o" "modelRN.phl[185]";
connectAttr "FKThumbFinger2_R_translateX.o" "modelRN.phl[186]";
connectAttr "FKThumbFinger2_R_translateY.o" "modelRN.phl[187]";
connectAttr "FKThumbFinger2_R_translateZ.o" "modelRN.phl[188]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[189]";
connectAttr "FKThumbFinger2_R_rotateX.o" "modelRN.phl[190]";
connectAttr "FKThumbFinger2_R_rotateY.o" "modelRN.phl[191]";
connectAttr "FKThumbFinger2_R_rotateZ.o" "modelRN.phl[192]";
connectAttr "FKThumbFinger3_R_scaleX.o" "modelRN.phl[193]";
connectAttr "FKThumbFinger3_R_scaleY.o" "modelRN.phl[194]";
connectAttr "FKThumbFinger3_R_scaleZ.o" "modelRN.phl[195]";
connectAttr "FKThumbFinger3_R_translateX.o" "modelRN.phl[196]";
connectAttr "FKThumbFinger3_R_translateY.o" "modelRN.phl[197]";
connectAttr "FKThumbFinger3_R_translateZ.o" "modelRN.phl[198]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[199]";
connectAttr "FKThumbFinger3_R_rotateX.o" "modelRN.phl[200]";
connectAttr "FKThumbFinger3_R_rotateY.o" "modelRN.phl[201]";
connectAttr "FKThumbFinger3_R_rotateZ.o" "modelRN.phl[202]";
connectAttr "FKIndexFinger1_R_scaleX.o" "modelRN.phl[203]";
connectAttr "FKIndexFinger1_R_scaleY.o" "modelRN.phl[204]";
connectAttr "FKIndexFinger1_R_scaleZ.o" "modelRN.phl[205]";
connectAttr "FKIndexFinger1_R_translateX.o" "modelRN.phl[206]";
connectAttr "FKIndexFinger1_R_translateY.o" "modelRN.phl[207]";
connectAttr "FKIndexFinger1_R_translateZ.o" "modelRN.phl[208]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[209]";
connectAttr "FKIndexFinger1_R_rotateX.o" "modelRN.phl[210]";
connectAttr "FKIndexFinger1_R_rotateY.o" "modelRN.phl[211]";
connectAttr "FKIndexFinger1_R_rotateZ.o" "modelRN.phl[212]";
connectAttr "FKIndexFinger2_R_scaleX.o" "modelRN.phl[213]";
connectAttr "FKIndexFinger2_R_scaleY.o" "modelRN.phl[214]";
connectAttr "FKIndexFinger2_R_scaleZ.o" "modelRN.phl[215]";
connectAttr "FKIndexFinger2_R_translateX.o" "modelRN.phl[216]";
connectAttr "FKIndexFinger2_R_translateY.o" "modelRN.phl[217]";
connectAttr "FKIndexFinger2_R_translateZ.o" "modelRN.phl[218]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[219]";
connectAttr "FKIndexFinger2_R_rotateX.o" "modelRN.phl[220]";
connectAttr "FKIndexFinger2_R_rotateY.o" "modelRN.phl[221]";
connectAttr "FKIndexFinger2_R_rotateZ.o" "modelRN.phl[222]";
connectAttr "FKIndexFinger3_R_scaleX.o" "modelRN.phl[223]";
connectAttr "FKIndexFinger3_R_scaleY.o" "modelRN.phl[224]";
connectAttr "FKIndexFinger3_R_scaleZ.o" "modelRN.phl[225]";
connectAttr "FKIndexFinger3_R_translateX.o" "modelRN.phl[226]";
connectAttr "FKIndexFinger3_R_translateY.o" "modelRN.phl[227]";
connectAttr "FKIndexFinger3_R_translateZ.o" "modelRN.phl[228]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[229]";
connectAttr "FKIndexFinger3_R_rotateX.o" "modelRN.phl[230]";
connectAttr "FKIndexFinger3_R_rotateY.o" "modelRN.phl[231]";
connectAttr "FKIndexFinger3_R_rotateZ.o" "modelRN.phl[232]";
connectAttr "FKCup_R_scaleX.o" "modelRN.phl[233]";
connectAttr "FKCup_R_scaleY.o" "modelRN.phl[234]";
connectAttr "FKCup_R_scaleZ.o" "modelRN.phl[235]";
connectAttr "FKCup_R_translateX.o" "modelRN.phl[236]";
connectAttr "FKCup_R_translateY.o" "modelRN.phl[237]";
connectAttr "FKCup_R_translateZ.o" "modelRN.phl[238]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[239]";
connectAttr "FKCup_R_rotateX.o" "modelRN.phl[240]";
connectAttr "FKCup_R_rotateY.o" "modelRN.phl[241]";
connectAttr "FKCup_R_rotateZ.o" "modelRN.phl[242]";
connectAttr "FKPinkyFinger1_R_scaleX.o" "modelRN.phl[243]";
connectAttr "FKPinkyFinger1_R_scaleY.o" "modelRN.phl[244]";
connectAttr "FKPinkyFinger1_R_scaleZ.o" "modelRN.phl[245]";
connectAttr "FKPinkyFinger1_R_translateX.o" "modelRN.phl[246]";
connectAttr "FKPinkyFinger1_R_translateY.o" "modelRN.phl[247]";
connectAttr "FKPinkyFinger1_R_translateZ.o" "modelRN.phl[248]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[249]";
connectAttr "FKPinkyFinger1_R_rotateX.o" "modelRN.phl[250]";
connectAttr "FKPinkyFinger1_R_rotateY.o" "modelRN.phl[251]";
connectAttr "FKPinkyFinger1_R_rotateZ.o" "modelRN.phl[252]";
connectAttr "FKPinkyFinger2_R_scaleX.o" "modelRN.phl[253]";
connectAttr "FKPinkyFinger2_R_scaleY.o" "modelRN.phl[254]";
connectAttr "FKPinkyFinger2_R_scaleZ.o" "modelRN.phl[255]";
connectAttr "FKPinkyFinger2_R_translateX.o" "modelRN.phl[256]";
connectAttr "FKPinkyFinger2_R_translateY.o" "modelRN.phl[257]";
connectAttr "FKPinkyFinger2_R_translateZ.o" "modelRN.phl[258]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[259]";
connectAttr "FKPinkyFinger2_R_rotateX.o" "modelRN.phl[260]";
connectAttr "FKPinkyFinger2_R_rotateY.o" "modelRN.phl[261]";
connectAttr "FKPinkyFinger2_R_rotateZ.o" "modelRN.phl[262]";
connectAttr "FKPinkyFinger3_R_scaleX.o" "modelRN.phl[263]";
connectAttr "FKPinkyFinger3_R_scaleY.o" "modelRN.phl[264]";
connectAttr "FKPinkyFinger3_R_scaleZ.o" "modelRN.phl[265]";
connectAttr "FKPinkyFinger3_R_translateX.o" "modelRN.phl[266]";
connectAttr "FKPinkyFinger3_R_translateY.o" "modelRN.phl[267]";
connectAttr "FKPinkyFinger3_R_translateZ.o" "modelRN.phl[268]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[269]";
connectAttr "FKPinkyFinger3_R_rotateX.o" "modelRN.phl[270]";
connectAttr "FKPinkyFinger3_R_rotateY.o" "modelRN.phl[271]";
connectAttr "FKPinkyFinger3_R_rotateZ.o" "modelRN.phl[272]";
connectAttr "FKRingFinger1_R_scaleX.o" "modelRN.phl[273]";
connectAttr "FKRingFinger1_R_scaleY.o" "modelRN.phl[274]";
connectAttr "FKRingFinger1_R_scaleZ.o" "modelRN.phl[275]";
connectAttr "FKRingFinger1_R_translateX.o" "modelRN.phl[276]";
connectAttr "FKRingFinger1_R_translateY.o" "modelRN.phl[277]";
connectAttr "FKRingFinger1_R_translateZ.o" "modelRN.phl[278]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[279]";
connectAttr "FKRingFinger1_R_rotateX.o" "modelRN.phl[280]";
connectAttr "FKRingFinger1_R_rotateY.o" "modelRN.phl[281]";
connectAttr "FKRingFinger1_R_rotateZ.o" "modelRN.phl[282]";
connectAttr "FKRingFinger2_R_scaleX.o" "modelRN.phl[283]";
connectAttr "FKRingFinger2_R_scaleY.o" "modelRN.phl[284]";
connectAttr "FKRingFinger2_R_scaleZ.o" "modelRN.phl[285]";
connectAttr "FKRingFinger2_R_translateX.o" "modelRN.phl[286]";
connectAttr "FKRingFinger2_R_translateY.o" "modelRN.phl[287]";
connectAttr "FKRingFinger2_R_translateZ.o" "modelRN.phl[288]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[289]";
connectAttr "FKRingFinger2_R_rotateX.o" "modelRN.phl[290]";
connectAttr "FKRingFinger2_R_rotateY.o" "modelRN.phl[291]";
connectAttr "FKRingFinger2_R_rotateZ.o" "modelRN.phl[292]";
connectAttr "FKRingFinger3_R_scaleX.o" "modelRN.phl[293]";
connectAttr "FKRingFinger3_R_scaleY.o" "modelRN.phl[294]";
connectAttr "FKRingFinger3_R_scaleZ.o" "modelRN.phl[295]";
connectAttr "FKRingFinger3_R_translateX.o" "modelRN.phl[296]";
connectAttr "FKRingFinger3_R_translateY.o" "modelRN.phl[297]";
connectAttr "FKRingFinger3_R_translateZ.o" "modelRN.phl[298]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[299]";
connectAttr "FKRingFinger3_R_rotateX.o" "modelRN.phl[300]";
connectAttr "FKRingFinger3_R_rotateY.o" "modelRN.phl[301]";
connectAttr "FKRingFinger3_R_rotateZ.o" "modelRN.phl[302]";
connectAttr "FKRoot_M_scaleX.o" "modelRN.phl[303]";
connectAttr "FKRoot_M_scaleY.o" "modelRN.phl[304]";
connectAttr "FKRoot_M_scaleZ.o" "modelRN.phl[305]";
connectAttr "FKRoot_M_translateX.o" "modelRN.phl[306]";
connectAttr "FKRoot_M_translateY.o" "modelRN.phl[307]";
connectAttr "FKRoot_M_translateZ.o" "modelRN.phl[308]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[309]";
connectAttr "FKRoot_M_rotateX.o" "modelRN.phl[310]";
connectAttr "FKRoot_M_rotateY.o" "modelRN.phl[311]";
connectAttr "FKRoot_M_rotateZ.o" "modelRN.phl[312]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[313]";
connectAttr "HipSwinger_M_visibility.o" "modelRN.phl[314]";
connectAttr "HipSwinger_M_rotateX.o" "modelRN.phl[315]";
connectAttr "HipSwinger_M_rotateY.o" "modelRN.phl[316]";
connectAttr "HipSwinger_M_rotateZ.o" "modelRN.phl[317]";
connectAttr "FKSpine1_M_scaleX.o" "modelRN.phl[318]";
connectAttr "FKSpine1_M_scaleY.o" "modelRN.phl[319]";
connectAttr "FKSpine1_M_scaleZ.o" "modelRN.phl[320]";
connectAttr "FKSpine1_M_translateX.o" "modelRN.phl[321]";
connectAttr "FKSpine1_M_translateY.o" "modelRN.phl[322]";
connectAttr "FKSpine1_M_translateZ.o" "modelRN.phl[323]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[324]";
connectAttr "FKSpine1_M_rotateX.o" "modelRN.phl[325]";
connectAttr "FKSpine1_M_rotateY.o" "modelRN.phl[326]";
connectAttr "FKSpine1_M_rotateZ.o" "modelRN.phl[327]";
connectAttr "FKChest_M_scaleX.o" "modelRN.phl[328]";
connectAttr "FKChest_M_scaleY.o" "modelRN.phl[329]";
connectAttr "FKChest_M_scaleZ.o" "modelRN.phl[330]";
connectAttr "FKChest_M_translateX.o" "modelRN.phl[331]";
connectAttr "FKChest_M_translateY.o" "modelRN.phl[332]";
connectAttr "FKChest_M_translateZ.o" "modelRN.phl[333]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[334]";
connectAttr "FKChest_M_rotateX.o" "modelRN.phl[335]";
connectAttr "FKChest_M_rotateY.o" "modelRN.phl[336]";
connectAttr "FKChest_M_rotateZ.o" "modelRN.phl[337]";
connectAttr "FKMiddleFinger1_L_scaleX.o" "modelRN.phl[338]";
connectAttr "FKMiddleFinger1_L_scaleY.o" "modelRN.phl[339]";
connectAttr "FKMiddleFinger1_L_scaleZ.o" "modelRN.phl[340]";
connectAttr "FKMiddleFinger1_L_translateX.o" "modelRN.phl[341]";
connectAttr "FKMiddleFinger1_L_translateY.o" "modelRN.phl[342]";
connectAttr "FKMiddleFinger1_L_translateZ.o" "modelRN.phl[343]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[344]";
connectAttr "FKMiddleFinger1_L_rotateX.o" "modelRN.phl[345]";
connectAttr "FKMiddleFinger1_L_rotateY.o" "modelRN.phl[346]";
connectAttr "FKMiddleFinger1_L_rotateZ.o" "modelRN.phl[347]";
connectAttr "FKMiddleFinger2_L_scaleX.o" "modelRN.phl[348]";
connectAttr "FKMiddleFinger2_L_scaleY.o" "modelRN.phl[349]";
connectAttr "FKMiddleFinger2_L_scaleZ.o" "modelRN.phl[350]";
connectAttr "FKMiddleFinger2_L_translateX.o" "modelRN.phl[351]";
connectAttr "FKMiddleFinger2_L_translateY.o" "modelRN.phl[352]";
connectAttr "FKMiddleFinger2_L_translateZ.o" "modelRN.phl[353]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[354]";
connectAttr "FKMiddleFinger2_L_rotateX.o" "modelRN.phl[355]";
connectAttr "FKMiddleFinger2_L_rotateY.o" "modelRN.phl[356]";
connectAttr "FKMiddleFinger2_L_rotateZ.o" "modelRN.phl[357]";
connectAttr "FKMiddleFinger3_L_scaleX.o" "modelRN.phl[358]";
connectAttr "FKMiddleFinger3_L_scaleY.o" "modelRN.phl[359]";
connectAttr "FKMiddleFinger3_L_scaleZ.o" "modelRN.phl[360]";
connectAttr "FKMiddleFinger3_L_translateX.o" "modelRN.phl[361]";
connectAttr "FKMiddleFinger3_L_translateY.o" "modelRN.phl[362]";
connectAttr "FKMiddleFinger3_L_translateZ.o" "modelRN.phl[363]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[364]";
connectAttr "FKMiddleFinger3_L_rotateX.o" "modelRN.phl[365]";
connectAttr "FKMiddleFinger3_L_rotateY.o" "modelRN.phl[366]";
connectAttr "FKMiddleFinger3_L_rotateZ.o" "modelRN.phl[367]";
connectAttr "FKThumbFinger1_L_scaleX.o" "modelRN.phl[368]";
connectAttr "FKThumbFinger1_L_scaleY.o" "modelRN.phl[369]";
connectAttr "FKThumbFinger1_L_scaleZ.o" "modelRN.phl[370]";
connectAttr "FKThumbFinger1_L_translateX.o" "modelRN.phl[371]";
connectAttr "FKThumbFinger1_L_translateY.o" "modelRN.phl[372]";
connectAttr "FKThumbFinger1_L_translateZ.o" "modelRN.phl[373]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[374]";
connectAttr "FKThumbFinger1_L_rotateX.o" "modelRN.phl[375]";
connectAttr "FKThumbFinger1_L_rotateY.o" "modelRN.phl[376]";
connectAttr "FKThumbFinger1_L_rotateZ.o" "modelRN.phl[377]";
connectAttr "FKThumbFinger2_L_scaleX.o" "modelRN.phl[378]";
connectAttr "FKThumbFinger2_L_scaleY.o" "modelRN.phl[379]";
connectAttr "FKThumbFinger2_L_scaleZ.o" "modelRN.phl[380]";
connectAttr "FKThumbFinger2_L_translateX.o" "modelRN.phl[381]";
connectAttr "FKThumbFinger2_L_translateY.o" "modelRN.phl[382]";
connectAttr "FKThumbFinger2_L_translateZ.o" "modelRN.phl[383]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[384]";
connectAttr "FKThumbFinger2_L_rotateX.o" "modelRN.phl[385]";
connectAttr "FKThumbFinger2_L_rotateY.o" "modelRN.phl[386]";
connectAttr "FKThumbFinger2_L_rotateZ.o" "modelRN.phl[387]";
connectAttr "FKThumbFinger3_L_scaleX.o" "modelRN.phl[388]";
connectAttr "FKThumbFinger3_L_scaleY.o" "modelRN.phl[389]";
connectAttr "FKThumbFinger3_L_scaleZ.o" "modelRN.phl[390]";
connectAttr "FKThumbFinger3_L_translateX.o" "modelRN.phl[391]";
connectAttr "FKThumbFinger3_L_translateY.o" "modelRN.phl[392]";
connectAttr "FKThumbFinger3_L_translateZ.o" "modelRN.phl[393]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[394]";
connectAttr "FKThumbFinger3_L_rotateX.o" "modelRN.phl[395]";
connectAttr "FKThumbFinger3_L_rotateY.o" "modelRN.phl[396]";
connectAttr "FKThumbFinger3_L_rotateZ.o" "modelRN.phl[397]";
connectAttr "FKIndexFinger1_L_scaleX.o" "modelRN.phl[398]";
connectAttr "FKIndexFinger1_L_scaleY.o" "modelRN.phl[399]";
connectAttr "FKIndexFinger1_L_scaleZ.o" "modelRN.phl[400]";
connectAttr "FKIndexFinger1_L_translateX.o" "modelRN.phl[401]";
connectAttr "FKIndexFinger1_L_translateY.o" "modelRN.phl[402]";
connectAttr "FKIndexFinger1_L_translateZ.o" "modelRN.phl[403]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[404]";
connectAttr "FKIndexFinger1_L_rotateX.o" "modelRN.phl[405]";
connectAttr "FKIndexFinger1_L_rotateY.o" "modelRN.phl[406]";
connectAttr "FKIndexFinger1_L_rotateZ.o" "modelRN.phl[407]";
connectAttr "FKIndexFinger2_L_scaleX.o" "modelRN.phl[408]";
connectAttr "FKIndexFinger2_L_scaleY.o" "modelRN.phl[409]";
connectAttr "FKIndexFinger2_L_scaleZ.o" "modelRN.phl[410]";
connectAttr "FKIndexFinger2_L_translateX.o" "modelRN.phl[411]";
connectAttr "FKIndexFinger2_L_translateY.o" "modelRN.phl[412]";
connectAttr "FKIndexFinger2_L_translateZ.o" "modelRN.phl[413]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[414]";
connectAttr "FKIndexFinger2_L_rotateX.o" "modelRN.phl[415]";
connectAttr "FKIndexFinger2_L_rotateY.o" "modelRN.phl[416]";
connectAttr "FKIndexFinger2_L_rotateZ.o" "modelRN.phl[417]";
connectAttr "FKIndexFinger3_L_scaleX.o" "modelRN.phl[418]";
connectAttr "FKIndexFinger3_L_scaleY.o" "modelRN.phl[419]";
connectAttr "FKIndexFinger3_L_scaleZ.o" "modelRN.phl[420]";
connectAttr "FKIndexFinger3_L_translateX.o" "modelRN.phl[421]";
connectAttr "FKIndexFinger3_L_translateY.o" "modelRN.phl[422]";
connectAttr "FKIndexFinger3_L_translateZ.o" "modelRN.phl[423]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[424]";
connectAttr "FKIndexFinger3_L_rotateX.o" "modelRN.phl[425]";
connectAttr "FKIndexFinger3_L_rotateY.o" "modelRN.phl[426]";
connectAttr "FKIndexFinger3_L_rotateZ.o" "modelRN.phl[427]";
connectAttr "FKCup_L_scaleX.o" "modelRN.phl[428]";
connectAttr "FKCup_L_scaleY.o" "modelRN.phl[429]";
connectAttr "FKCup_L_scaleZ.o" "modelRN.phl[430]";
connectAttr "FKCup_L_translateX.o" "modelRN.phl[431]";
connectAttr "FKCup_L_translateY.o" "modelRN.phl[432]";
connectAttr "FKCup_L_translateZ.o" "modelRN.phl[433]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[434]";
connectAttr "FKCup_L_rotateX.o" "modelRN.phl[435]";
connectAttr "FKCup_L_rotateY.o" "modelRN.phl[436]";
connectAttr "FKCup_L_rotateZ.o" "modelRN.phl[437]";
connectAttr "FKPinkyFinger1_L_scaleX.o" "modelRN.phl[438]";
connectAttr "FKPinkyFinger1_L_scaleY.o" "modelRN.phl[439]";
connectAttr "FKPinkyFinger1_L_scaleZ.o" "modelRN.phl[440]";
connectAttr "FKPinkyFinger1_L_translateX.o" "modelRN.phl[441]";
connectAttr "FKPinkyFinger1_L_translateY.o" "modelRN.phl[442]";
connectAttr "FKPinkyFinger1_L_translateZ.o" "modelRN.phl[443]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[444]";
connectAttr "FKPinkyFinger1_L_rotateX.o" "modelRN.phl[445]";
connectAttr "FKPinkyFinger1_L_rotateY.o" "modelRN.phl[446]";
connectAttr "FKPinkyFinger1_L_rotateZ.o" "modelRN.phl[447]";
connectAttr "FKPinkyFinger2_L_scaleX.o" "modelRN.phl[448]";
connectAttr "FKPinkyFinger2_L_scaleY.o" "modelRN.phl[449]";
connectAttr "FKPinkyFinger2_L_scaleZ.o" "modelRN.phl[450]";
connectAttr "FKPinkyFinger2_L_translateX.o" "modelRN.phl[451]";
connectAttr "FKPinkyFinger2_L_translateY.o" "modelRN.phl[452]";
connectAttr "FKPinkyFinger2_L_translateZ.o" "modelRN.phl[453]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[454]";
connectAttr "FKPinkyFinger2_L_rotateX.o" "modelRN.phl[455]";
connectAttr "FKPinkyFinger2_L_rotateY.o" "modelRN.phl[456]";
connectAttr "FKPinkyFinger2_L_rotateZ.o" "modelRN.phl[457]";
connectAttr "FKPinkyFinger3_L_scaleX.o" "modelRN.phl[458]";
connectAttr "FKPinkyFinger3_L_scaleY.o" "modelRN.phl[459]";
connectAttr "FKPinkyFinger3_L_scaleZ.o" "modelRN.phl[460]";
connectAttr "FKPinkyFinger3_L_translateX.o" "modelRN.phl[461]";
connectAttr "FKPinkyFinger3_L_translateY.o" "modelRN.phl[462]";
connectAttr "FKPinkyFinger3_L_translateZ.o" "modelRN.phl[463]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[464]";
connectAttr "FKPinkyFinger3_L_rotateX.o" "modelRN.phl[465]";
connectAttr "FKPinkyFinger3_L_rotateY.o" "modelRN.phl[466]";
connectAttr "FKPinkyFinger3_L_rotateZ.o" "modelRN.phl[467]";
connectAttr "FKRingFinger1_L_scaleX.o" "modelRN.phl[468]";
connectAttr "FKRingFinger1_L_scaleY.o" "modelRN.phl[469]";
connectAttr "FKRingFinger1_L_scaleZ.o" "modelRN.phl[470]";
connectAttr "FKRingFinger1_L_translateX.o" "modelRN.phl[471]";
connectAttr "FKRingFinger1_L_translateY.o" "modelRN.phl[472]";
connectAttr "FKRingFinger1_L_translateZ.o" "modelRN.phl[473]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[474]";
connectAttr "FKRingFinger1_L_rotateX.o" "modelRN.phl[475]";
connectAttr "FKRingFinger1_L_rotateY.o" "modelRN.phl[476]";
connectAttr "FKRingFinger1_L_rotateZ.o" "modelRN.phl[477]";
connectAttr "FKRingFinger2_L_scaleX.o" "modelRN.phl[478]";
connectAttr "FKRingFinger2_L_scaleY.o" "modelRN.phl[479]";
connectAttr "FKRingFinger2_L_scaleZ.o" "modelRN.phl[480]";
connectAttr "FKRingFinger2_L_translateX.o" "modelRN.phl[481]";
connectAttr "FKRingFinger2_L_translateY.o" "modelRN.phl[482]";
connectAttr "FKRingFinger2_L_translateZ.o" "modelRN.phl[483]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[484]";
connectAttr "FKRingFinger2_L_rotateX.o" "modelRN.phl[485]";
connectAttr "FKRingFinger2_L_rotateY.o" "modelRN.phl[486]";
connectAttr "FKRingFinger2_L_rotateZ.o" "modelRN.phl[487]";
connectAttr "FKRingFinger3_L_scaleX.o" "modelRN.phl[488]";
connectAttr "FKRingFinger3_L_scaleY.o" "modelRN.phl[489]";
connectAttr "FKRingFinger3_L_scaleZ.o" "modelRN.phl[490]";
connectAttr "FKRingFinger3_L_translateX.o" "modelRN.phl[491]";
connectAttr "FKRingFinger3_L_translateY.o" "modelRN.phl[492]";
connectAttr "FKRingFinger3_L_translateZ.o" "modelRN.phl[493]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[494]";
connectAttr "FKRingFinger3_L_rotateX.o" "modelRN.phl[495]";
connectAttr "FKRingFinger3_L_rotateY.o" "modelRN.phl[496]";
connectAttr "FKRingFinger3_L_rotateZ.o" "modelRN.phl[497]";
connectAttr "IKLeg_R_scaleY.o" "modelRN.phl[498]";
connectAttr "IKLeg_R_scaleZ.o" "modelRN.phl[499]";
connectAttr "IKLeg_R_scaleX.o" "modelRN.phl[500]";
connectAttr "IKLeg_R_followMain.o" "modelRN.phl[501]";
connectAttr "IKLeg_R_followRoot.o" "modelRN.phl[502]";
connectAttr "IKLeg_R_swivel.o" "modelRN.phl[503]";
connectAttr "IKLeg_R_rock.o" "modelRN.phl[504]";
connectAttr "IKLeg_R_roll.o" "modelRN.phl[505]";
connectAttr "IKLeg_R_rollStartAngle.o" "modelRN.phl[506]";
connectAttr "IKLeg_R_rollEndAngle.o" "modelRN.phl[507]";
connectAttr "IKLeg_R_stretchy.o" "modelRN.phl[508]";
connectAttr "IKLeg_R_antiPop.o" "modelRN.phl[509]";
connectAttr "IKLeg_R_Lenght1.o" "modelRN.phl[510]";
connectAttr "IKLeg_R_Lenght2.o" "modelRN.phl[511]";
connectAttr "IKLeg_R_Fatness1.o" "modelRN.phl[512]";
connectAttr "IKLeg_R_Fatness2.o" "modelRN.phl[513]";
connectAttr "IKLeg_R_volume.o" "modelRN.phl[514]";
connectAttr "IKLeg_R_translateX.o" "modelRN.phl[515]";
connectAttr "IKLeg_R_translateY.o" "modelRN.phl[516]";
connectAttr "IKLeg_R_translateZ.o" "modelRN.phl[517]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[518]";
connectAttr "IKLeg_R_rotateX.o" "modelRN.phl[519]";
connectAttr "IKLeg_R_rotateY.o" "modelRN.phl[520]";
connectAttr "IKLeg_R_rotateZ.o" "modelRN.phl[521]";
connectAttr "RollHeel_R_translateX.o" "modelRN.phl[522]";
connectAttr "RollHeel_R_translateY.o" "modelRN.phl[523]";
connectAttr "RollHeel_R_translateZ.o" "modelRN.phl[524]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[525]";
connectAttr "RollHeel_R_rotateX.o" "modelRN.phl[526]";
connectAttr "RollHeel_R_rotateY.o" "modelRN.phl[527]";
connectAttr "RollHeel_R_rotateZ.o" "modelRN.phl[528]";
connectAttr "RollHeel_R_scaleX.o" "modelRN.phl[529]";
connectAttr "RollHeel_R_scaleY.o" "modelRN.phl[530]";
connectAttr "RollHeel_R_scaleZ.o" "modelRN.phl[531]";
connectAttr "RollToesEnd_R_translateX.o" "modelRN.phl[532]";
connectAttr "RollToesEnd_R_translateY.o" "modelRN.phl[533]";
connectAttr "RollToesEnd_R_translateZ.o" "modelRN.phl[534]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[535]";
connectAttr "RollToesEnd_R_rotateX.o" "modelRN.phl[536]";
connectAttr "RollToesEnd_R_rotateY.o" "modelRN.phl[537]";
connectAttr "RollToesEnd_R_rotateZ.o" "modelRN.phl[538]";
connectAttr "RollToesEnd_R_scaleX.o" "modelRN.phl[539]";
connectAttr "RollToesEnd_R_scaleY.o" "modelRN.phl[540]";
connectAttr "RollToesEnd_R_scaleZ.o" "modelRN.phl[541]";
connectAttr "RollToes_R_translateX.o" "modelRN.phl[542]";
connectAttr "RollToes_R_translateY.o" "modelRN.phl[543]";
connectAttr "RollToes_R_translateZ.o" "modelRN.phl[544]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[545]";
connectAttr "RollToes_R_rotateX.o" "modelRN.phl[546]";
connectAttr "RollToes_R_rotateY.o" "modelRN.phl[547]";
connectAttr "RollToes_R_rotateZ.o" "modelRN.phl[548]";
connectAttr "RollToes_R_scaleX.o" "modelRN.phl[549]";
connectAttr "RollToes_R_scaleY.o" "modelRN.phl[550]";
connectAttr "RollToes_R_scaleZ.o" "modelRN.phl[551]";
connectAttr "IKToes_R_translateX.o" "modelRN.phl[552]";
connectAttr "IKToes_R_translateY.o" "modelRN.phl[553]";
connectAttr "IKToes_R_translateZ.o" "modelRN.phl[554]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[555]";
connectAttr "IKToes_R_rotateX.o" "modelRN.phl[556]";
connectAttr "IKToes_R_rotateY.o" "modelRN.phl[557]";
connectAttr "IKToes_R_rotateZ.o" "modelRN.phl[558]";
connectAttr "IKToes_R_scaleX.o" "modelRN.phl[559]";
connectAttr "IKToes_R_scaleY.o" "modelRN.phl[560]";
connectAttr "IKToes_R_scaleZ.o" "modelRN.phl[561]";
connectAttr "IKLeg_L_scaleY.o" "modelRN.phl[562]";
connectAttr "IKLeg_L_scaleZ.o" "modelRN.phl[563]";
connectAttr "IKLeg_L_scaleX.o" "modelRN.phl[564]";
connectAttr "IKLeg_L_followMain.o" "modelRN.phl[565]";
connectAttr "IKLeg_L_followRoot.o" "modelRN.phl[566]";
connectAttr "IKLeg_L_swivel.o" "modelRN.phl[567]";
connectAttr "IKLeg_L_rock.o" "modelRN.phl[568]";
connectAttr "IKLeg_L_roll.o" "modelRN.phl[569]";
connectAttr "IKLeg_L_rollStartAngle.o" "modelRN.phl[570]";
connectAttr "IKLeg_L_rollEndAngle.o" "modelRN.phl[571]";
connectAttr "IKLeg_L_stretchy.o" "modelRN.phl[572]";
connectAttr "IKLeg_L_antiPop.o" "modelRN.phl[573]";
connectAttr "IKLeg_L_Lenght1.o" "modelRN.phl[574]";
connectAttr "IKLeg_L_Lenght2.o" "modelRN.phl[575]";
connectAttr "IKLeg_L_Fatness1.o" "modelRN.phl[576]";
connectAttr "IKLeg_L_Fatness2.o" "modelRN.phl[577]";
connectAttr "IKLeg_L_volume.o" "modelRN.phl[578]";
connectAttr "IKLeg_L_translateX.o" "modelRN.phl[579]";
connectAttr "IKLeg_L_translateY.o" "modelRN.phl[580]";
connectAttr "IKLeg_L_translateZ.o" "modelRN.phl[581]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[582]";
connectAttr "IKLeg_L_rotateX.o" "modelRN.phl[583]";
connectAttr "IKLeg_L_rotateY.o" "modelRN.phl[584]";
connectAttr "IKLeg_L_rotateZ.o" "modelRN.phl[585]";
connectAttr "RollHeel_L_translateX.o" "modelRN.phl[586]";
connectAttr "RollHeel_L_translateY.o" "modelRN.phl[587]";
connectAttr "RollHeel_L_translateZ.o" "modelRN.phl[588]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[589]";
connectAttr "RollHeel_L_rotateX.o" "modelRN.phl[590]";
connectAttr "RollHeel_L_rotateY.o" "modelRN.phl[591]";
connectAttr "RollHeel_L_rotateZ.o" "modelRN.phl[592]";
connectAttr "RollHeel_L_scaleX.o" "modelRN.phl[593]";
connectAttr "RollHeel_L_scaleY.o" "modelRN.phl[594]";
connectAttr "RollHeel_L_scaleZ.o" "modelRN.phl[595]";
connectAttr "RollToesEnd_L_translateX.o" "modelRN.phl[596]";
connectAttr "RollToesEnd_L_translateY.o" "modelRN.phl[597]";
connectAttr "RollToesEnd_L_translateZ.o" "modelRN.phl[598]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[599]";
connectAttr "RollToesEnd_L_rotateX.o" "modelRN.phl[600]";
connectAttr "RollToesEnd_L_rotateY.o" "modelRN.phl[601]";
connectAttr "RollToesEnd_L_rotateZ.o" "modelRN.phl[602]";
connectAttr "RollToesEnd_L_scaleX.o" "modelRN.phl[603]";
connectAttr "RollToesEnd_L_scaleY.o" "modelRN.phl[604]";
connectAttr "RollToesEnd_L_scaleZ.o" "modelRN.phl[605]";
connectAttr "RollToes_L_translateX.o" "modelRN.phl[606]";
connectAttr "RollToes_L_translateY.o" "modelRN.phl[607]";
connectAttr "RollToes_L_translateZ.o" "modelRN.phl[608]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[609]";
connectAttr "RollToes_L_rotateX.o" "modelRN.phl[610]";
connectAttr "RollToes_L_rotateY.o" "modelRN.phl[611]";
connectAttr "RollToes_L_rotateZ.o" "modelRN.phl[612]";
connectAttr "RollToes_L_scaleX.o" "modelRN.phl[613]";
connectAttr "RollToes_L_scaleY.o" "modelRN.phl[614]";
connectAttr "RollToes_L_scaleZ.o" "modelRN.phl[615]";
connectAttr "IKToes_L_translateX.o" "modelRN.phl[616]";
connectAttr "IKToes_L_translateY.o" "modelRN.phl[617]";
connectAttr "IKToes_L_translateZ.o" "modelRN.phl[618]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[619]";
connectAttr "IKToes_L_rotateX.o" "modelRN.phl[620]";
connectAttr "IKToes_L_rotateY.o" "modelRN.phl[621]";
connectAttr "IKToes_L_rotateZ.o" "modelRN.phl[622]";
connectAttr "IKToes_L_scaleX.o" "modelRN.phl[623]";
connectAttr "IKToes_L_scaleY.o" "modelRN.phl[624]";
connectAttr "IKToes_L_scaleZ.o" "modelRN.phl[625]";
connectAttr "PoleLeg_R_translateX.o" "modelRN.phl[626]";
connectAttr "PoleLeg_R_translateY.o" "modelRN.phl[627]";
connectAttr "PoleLeg_R_translateZ.o" "modelRN.phl[628]";
connectAttr "PoleLeg_R_followMain.o" "modelRN.phl[629]";
connectAttr "PoleLeg_R_followRoot.o" "modelRN.phl[630]";
connectAttr "PoleLeg_R_followLeg.o" "modelRN.phl[631]";
connectAttr "PoleLeg_R_lock.o" "modelRN.phl[632]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[633]";
connectAttr "PoleLeg_L_translateX.o" "modelRN.phl[634]";
connectAttr "PoleLeg_L_translateY.o" "modelRN.phl[635]";
connectAttr "PoleLeg_L_translateZ.o" "modelRN.phl[636]";
connectAttr "PoleLeg_L_followMain.o" "modelRN.phl[637]";
connectAttr "PoleLeg_L_followRoot.o" "modelRN.phl[638]";
connectAttr "PoleLeg_L_followLeg.o" "modelRN.phl[639]";
connectAttr "PoleLeg_L_lock.o" "modelRN.phl[640]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[641]";
connectAttr "FKIKArm_R_FKIKBlend.o" "modelRN.phl[642]";
connectAttr "FKIKArm_R_IKVis.o" "modelRN.phl[643]";
connectAttr "FKIKArm_R_FKVis.o" "modelRN.phl[644]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[645]";
connectAttr "FKIKLeg_R_FKIKBlend.o" "modelRN.phl[646]";
connectAttr "FKIKLeg_R_IKVis.o" "modelRN.phl[647]";
connectAttr "FKIKLeg_R_FKVis.o" "modelRN.phl[648]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[649]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[650]";
connectAttr "FKIKArm_L_FKIKBlend.o" "modelRN.phl[651]";
connectAttr "FKIKArm_L_IKVis.o" "modelRN.phl[652]";
connectAttr "FKIKArm_L_FKVis.o" "modelRN.phl[653]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[654]";
connectAttr "FKIKLeg_L_FKIKBlend.o" "modelRN.phl[655]";
connectAttr "FKIKLeg_L_IKVis.o" "modelRN.phl[656]";
connectAttr "FKIKLeg_L_FKVis.o" "modelRN.phl[657]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[658]";
connectAttr "AimEye_M_follow.o" "modelRN.phl[659]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[660]";
connectAttr "AimEye_M_visibility.o" "modelRN.phl[661]";
connectAttr "AimEye_M_translateX.o" "modelRN.phl[662]";
connectAttr "AimEye_M_translateY.o" "modelRN.phl[663]";
connectAttr "AimEye_M_translateZ.o" "modelRN.phl[664]";
connectAttr "AimEye_M_rotateX.o" "modelRN.phl[665]";
connectAttr "AimEye_M_rotateY.o" "modelRN.phl[666]";
connectAttr "AimEye_M_rotateZ.o" "modelRN.phl[667]";
connectAttr "AimEye_M_scaleX.o" "modelRN.phl[668]";
connectAttr "AimEye_M_scaleY.o" "modelRN.phl[669]";
connectAttr "AimEye_M_scaleZ.o" "modelRN.phl[670]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[671]";
connectAttr "AimEye_R_translateX.o" "modelRN.phl[672]";
connectAttr "AimEye_R_translateY.o" "modelRN.phl[673]";
connectAttr "AimEye_R_translateZ.o" "modelRN.phl[674]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[675]";
connectAttr "AimEye_L_translateX.o" "modelRN.phl[676]";
connectAttr "AimEye_L_translateY.o" "modelRN.phl[677]";
connectAttr "AimEye_L_translateZ.o" "modelRN.phl[678]";
connectAttr "RootX_M_translateX.o" "modelRN.phl[679]";
connectAttr "RootX_M_translateY.o" "modelRN.phl[680]";
connectAttr "RootX_M_translateZ.o" "modelRN.phl[681]";
connectAttr "RootX_M_rotateX.o" "modelRN.phl[682]";
connectAttr "RootX_M_rotateY.o" "modelRN.phl[683]";
connectAttr "RootX_M_rotateZ.o" "modelRN.phl[684]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[685]";
connectAttr "RootX_M_visibility.o" "modelRN.phl[686]";
connectAttr "Fingers_R_spread.o" "modelRN.phl[687]";
connectAttr "Fingers_R_cup.o" "modelRN.phl[688]";
connectAttr "Fingers_R_indexCurl.o" "modelRN.phl[689]";
connectAttr "Fingers_R_middleCurl.o" "modelRN.phl[690]";
connectAttr "Fingers_R_ringCurl.o" "modelRN.phl[691]";
connectAttr "Fingers_R_pinkyCurl.o" "modelRN.phl[692]";
connectAttr "Fingers_R_thumbCurl.o" "modelRN.phl[693]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[694]";
connectAttr "Fingers_L_spread.o" "modelRN.phl[695]";
connectAttr "Fingers_L_cup.o" "modelRN.phl[696]";
connectAttr "Fingers_L_indexCurl.o" "modelRN.phl[697]";
connectAttr "Fingers_L_middleCurl.o" "modelRN.phl[698]";
connectAttr "Fingers_L_ringCurl.o" "modelRN.phl[699]";
connectAttr "Fingers_L_pinkyCurl.o" "modelRN.phl[700]";
connectAttr "Fingers_L_thumbCurl.o" "modelRN.phl[701]";
connectAttr "CurvasCorporalesLayer.di" "modelRN.phl[702]";
connectAttr "CurvasFacialesLayer.di" "modelRN.phl[703]";
connectAttr "CurvasFacialesLayer.di" "modelRN.phl[704]";
connectAttr "CurvasFacialesLayer.di" "modelRN.phl[705]";
connectAttr "CurvasFacialesLayer.di" "modelRN.phl[706]";
connectAttr "CurvasFacialesLayer.di" "modelRN.phl[707]";
connectAttr "CurvasFacialesLayer.di" "modelRN.phl[708]";
connectAttr "CurvasFacialesLayer.di" "modelRN.phl[709]";
connectAttr "CurvasFacialesLayer.di" "modelRN.phl[710]";
connectAttr "CurvasFacialesLayer.di" "modelRN.phl[711]";
connectAttr "GeometriaNinoLayer.di" "modelRN.phl[712]";
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
connectAttr "trackInfoManager1.msg" ":sequenceManager1.tim";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of CicloCaminadoNiño - copia.ma
