//Maya ASCII 2012 scene
//Name: asUnreal.ma
//Last modified: Thu, Jul 02, 2026 02:25:28 PM
//Codeset: 1252
requires maya "2012";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202302170737-4500172811";
fileInfo "osv" "Windows 11 Home Single Language v2009 (Build: 26200)";
fileInfo "UUID" "5F817BD9-481E-2497-6895-3991D7CCEC64";
createNode transform -s -n "persp";
	rename -uid "46C12059-4A81-2183-8D99-81AE64C0B861";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -128.51945218823278 228.29209876984959 297.73070735153328 ;
	setAttr ".r" -type "double3" -23.73835272960271 -27.80000000000182 8.9888737452504734e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "C56796A7-47D1-0C04-AF46-8DBF090CFE2A";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 357.71003651369676;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.00012119175463709553 97.668096696694676 10.896310871810655 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "962E361C-4252-A185-67B3-BB8D2CFB8C21";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.00012119175463709553 200 10.896310871810657 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "E82A79C7-4968-2E0E-98C8-0E913EE61050";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 398.35622444666797;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "6FE4635B-4662-DBCE-5F1D-5BAD3AC76961";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.00012119175463709553 97.668096696694676 143.17009990973094 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "FBE3F8D4-4E52-DDDD-2905-F1A8DBF8D6C7";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 508.36440337490723;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "AC3CD224-4592-30DD-213D-AF88B6468DCB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 140.27753549516757 97.668096696694676 10.896310871810687 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "303B9629-4303-5CDE-BFF3-16A7618E2F33";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 507.74064337076629;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "UE4";
	rename -uid "EAD948DD-4214-6F27-1FF3-43ADFEDB8EE4";
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode joint -n "root" -p "UE4";
	rename -uid "65013828-4EEE-B1AE-6CEA-148B8E3CEE6F";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0 -1 0 0 1 0 0 0 0 0 1;
	setAttr ".fbxID" 2;
createNode joint -n "pelvis" -p "|UE4|root";
	rename -uid "A292A0F0-4669-232B-1394-C2AE15DA62D9";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.3536841578012896e-28 1.0561532974243164 96.750602722167969 ;
	setAttr ".r" -type "double3" 89.998386598061543 -89.790112938596948 -89.998386598059795 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1.0315300000000001e-07 0.99999300000000002 0.0036632100000000001 0
		 1.88937e-10 0.0036632100000000001 -0.99999300000000002 0 -1 1.0315300000000001e-07 1.8893599999999999e-10 0
		 0 96.750602999999998 -1.0561529999999999 1;
	setAttr ".fbxID" 5;
createNode joint -n "spine_01" -p "|UE4|root|pelvis";
	rename -uid "CA653845-4FF7-EA58-41C5-1383EAD82E32";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 10.808877944946289 -0.85141515731811523 -6.0910938836158945e-13 ;
	setAttr ".r" -type "double3" 0 0 -7.1538485846206612 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1.02326e-07 0.99175199999999997 0.128168 0 1.3033500000000001e-08 0.128168 -0.99175199999999997 0
		 -1 1.0315300000000001e-07 1.8893599999999999e-10 0 1.1148100000000002e-06 107.55628900000001 -0.16514899999999999 1;
	setAttr ".fbxID" 5;
createNode joint -n "spine_02" -p "|UE4|root|pelvis|spine_01";
	rename -uid "91D1E0DC-4F3F-DAEB-DFB4-69A96FA5D214";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 18.875349044799805 3.8011586666107178 5.966093397091754e-08 ;
	setAttr ".r" -type "double3" 0 0 14.063533521833028 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1.0242699999999999e-07 0.99317100000000003 -0.11666700000000001 0
		 -1.2222199999999999e-08 -0.11666700000000001 -0.99317100000000003 0 -1 1.0315300000000001e-07 1.88937e-10 0
		 3.0361399999999999e-06 126.76315 -1.5157430000000001 1;
	setAttr ".fbxID" 5;
createNode joint -n "spine_03" -p "|UE4|root|pelvis|spine_01|spine_02";
	rename -uid "221D8895-44BB-2714-87A3-3C888B6911CB";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 13.407328605651855 0.42047739028930664 -5.5752391635646714e-13 ;
	setAttr ".r" -type "double3" 0 0 2.7794166939751275 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1.0171300000000001e-07 0.98634500000000003 -0.16469 0
		 -1.7174600000000001e-08 -0.16469 -0.98634500000000003 0 -1 1.0315300000000001e-07 1.8893599999999999e-10 0
		 4.4042699999999999e-06 140.029865 -3.4975450000000001 1;
	setAttr ".fbxID" 5;
createNode joint -n "clavicle_l" -p "|UE4|root|pelvis|spine_01|spine_02|spine_03";
	rename -uid "1A9AE8AE-4D5E-13B5-578C-78B68551E5C3";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 11.883687973022461 -2.7320878505706787 -3.7819831371307373 ;
	setAttr ".r" -type "double3" 108.71915573266831 61.853576172074227 101.5409112493697 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.881745 -0.169206 -0.44033499999999998 0 -0.446774 2.5174e-05 -0.89464699999999997 0
		 0.151391 0.98558100000000004 -0.075574799999999998 0 3.7819889999999998 152.201233 -2.7598850000000001 1;
	setAttr ".fbxID" 5;
createNode joint -n "upperarm_l" -p "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l";
	rename -uid "558AC3A5-460F-627E-D69B-85AE80CD6D45";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 15.784872055053711 1.4317954599718519e-09 6.3591301113774534e-09 ;
	setAttr ".r" -type "double3" 7.6738926595293826 40.300540655703898 -17.020992934253695 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.64483999999999997 -0.76087099999999996 -0.072507199999999994 0
		 -0.068049499999999999 0.037335500000000001 -0.99698299999999995 0 0.76128300000000004 0.64782799999999996 -0.0277015 0
		 17.700220000000002 149.53033099999999 -9.7105200000000007 1;
	setAttr ".fbxID" 5;
createNode joint -n "lowerarm_l" -p "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l";
	rename -uid "B9C9D66B-4873-459B-26C6-25832511833F";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 30.339929580688477 8.4074702755287944e-09 3.197527576048742e-09 ;
	setAttr ".r" -type "double3" -3.613278937806625 -10.3973427584011 -30.360854373363736 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.71849099999999999 -0.54739000000000004 0.42910900000000002 0
		 0.226212 -0.399501 -0.88838399999999995 0 0.65772200000000003 0.73536599999999996 -0.163212 0
		 37.264606999999998 126.44556 -11.910384000000001 1;
	setAttr ".fbxID" 5;
createNode joint -n "hand_l" -p "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l";
	rename -uid "996361E0-455A-D22C-EE68-75A03B28D925";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 26.975143432617188 1.5729675340026006e-09 -9.6207486421917565e-09 ;
	setAttr ".r" -type "double3" -76.356201188888392 2.4998079061090888 -0.4125709669948413 ;
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999956 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.68747400000000003 -0.57605399999999995 0.44219999999999998 0
		 -0.61435799999999996 -0.78602000000000005 -0.068825800000000006 0 0.38722499999999999 -0.224353 -0.89427199999999996 0
		 56.646013000000004 111.679648 -0.335094 1;
	setAttr ".fbxID" 5;
createNode joint -n "index_01_l" -p "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l|hand_l";
	rename -uid "C04635EB-4FE3-4C93-FE43-31A218979EA4";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 12.068114280700684 1.7634615898132324 -2.1093976497650146 ;
	setAttr ".r" -type "double3" 14.86695126728991 -3.7637880114312035 25.536937526971315 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999978 0.99999999999999967 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.38012000000000001 -0.87150099999999997 0.30982999999999999 0
		 -0.72907599999999995 -0.48844799999999999 -0.47944399999999998 0 0.56917200000000001 -0.043643300000000003 -0.82105899999999998 0
		 63.042324000000001 103.814892 6.7664239999999998 1;
	setAttr ".fbxID" 5;
createNode joint -n "index_02_l" -p "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l|hand_l|index_01_l";
	rename -uid "0BB2C68E-4660-3058-CB91-B7B134B9AE07";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 4.2874979972839355 -2.9850326654923265e-08 5.0484132430028694e-09 ;
	setAttr ".r" -type "double3" 1.3378194276401854 -0.47529026828726623 11.986129877033241 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999956 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.225136 -0.95426800000000001 0.196689 0 -0.77866100000000005 -0.29756300000000002 -0.55239799999999994 0
		 0.58566300000000004 -0.028789200000000001 -0.81004299999999996 0 64.672088000000002 100.078333 8.0948200000000003 1;
	setAttr ".fbxID" 5;
createNode joint -n "index_03_l" -p "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l|hand_l|index_01_l|index_02_l";
	rename -uid "E088A776-41E6-FB2F-D872-3F9672A4FAC8";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.3937902450561523 1.1695448165482958e-08 -2.3492283673931524e-09 ;
	setAttr ".r" -type "double3" 1.1373671084257291 0.99727080684674818 -9.4963194797640718 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.34027099999999999 -0.89146199999999998 0.29918600000000001 0
		 -0.71895799999999999 -0.45171499999999998 -0.52825500000000003 0 0.60606599999999999 -0.0353522 -0.79462900000000003 0
		 65.436150999999995 96.839748 8.76234 1;
	setAttr ".fbxID" 5;
createNode joint -n "middle_01_l" -p "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l|hand_l";
	rename -uid "B0F21014-48F2-3ABD-FA5E-44AC74D07B28";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 12.244280815124512 1.293643593788147 0.57116198539733887 ;
	setAttr ".r" -type "double3" 1.9178512756595907 -7.0405641935384962 22.825872789057357 ;
	setAttr ".s" -type "double3" 0.99999999999999967 1 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.43979000000000001 -0.85706099999999996 0.26838600000000001 0
		 -0.82123299999999999 -0.50473800000000002 -0.26611200000000002 0 0.363539 -0.10337399999999999 -0.92582600000000004 0
		 64.490050999999994 103.481306 4.4795100000000003 1;
	setAttr ".fbxID" 5;
createNode joint -n "middle_02_l" -p "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l|hand_l|middle_01_l";
	rename -uid "54643336-4499-071E-D7C1-019669A78E97";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 4.6403741836547852 -3.648182200777228e-09 1.8308625726604077e-09 ;
	setAttr ".r" -type "double3" -2.024952382364499 1.1368393821927114 12.280693812302134 ;
	setAttr ".s" -type "double3" 1 0.99999999999999967 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.24778600000000001 -0.94257100000000005 0.22397 0
		 -0.908447 -0.30638199999999999 -0.28434799999999999 0 0.33663799999999999 -0.13300699999999999 -0.93219300000000005 0
		 66.530840999999995 99.504221000000001 5.72492 1;
	setAttr ".fbxID" 5;
createNode joint -n "middle_03_l" -p "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l|hand_l|middle_01_l|middle_02_l";
	rename -uid "88B0DBC8-498D-4F83-8346-E7A6EA3180F2";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.64884352684021 -1.9989442989754025e-08 1.6076349140803359e-09 ;
	setAttr ".r" -type "double3" 0.78144757657680752 -4.3899530552767496 -15.399739817787625 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.50448899999999997 -0.83512299999999995 0.21922900000000001 0
		 -0.80587900000000001 -0.54657699999999998 -0.22762399999999999 0 0.309919 -0.061838299999999999 -0.94874999999999998 0
		 67.434974999999994 96.064929000000006 6.5421509999999996 1;
	setAttr ".fbxID" 5;
createNode joint -n "pinky_01_l" -p "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l|hand_l";
	rename -uid "A77264BB-4151-AD3F-1E1D-66A962872309";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 10.140665054321289 2.2631511688232422 4.6431479454040527 ;
	setAttr ".r" -type "double3" -18.724591751325903 -18.933966610967872 20.185867297574816 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.53545799999999999 -0.84076899999999999 0.079946000000000003 0
		 -0.84322399999999997 -0.52688400000000002 0.106612 0 -0.047514199999999999 -0.124499 -0.99108099999999999 0
		 64.025019 103.017489 -0.15889800000000001 1;
	setAttr ".fbxID" 5;
createNode joint -n "pinky_02_l" -p "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l|hand_l|pinky_01_l";
	rename -uid "F775F7BF-4B60-9352-B7C9-F89AC25229C0";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.5709807872772217 1.8669879864319228e-08 3.9181813349387085e-10 ;
	setAttr ".r" -type "double3" 1.0638335726499644 -1.315685296782005 11.208043567831963 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.36015999999999998 -0.92976000000000003 0.076361399999999996 0
		 -0.93209600000000004 -0.35526799999999997 0.070586399999999994 0 -0.038499600000000002 -0.096598600000000007 -0.99457899999999999 0
		 65.937128999999999 100.015117 0.12658700000000001 1;
	setAttr ".fbxID" 5;
createNode joint -n "pinky_03_l" -p "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l|hand_l|pinky_01_l|pinky_02_l";
	rename -uid "0A3739B4-4009-9F44-F8E6-458BFEAAA709";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 2.9856307506561279 -3.0058785682740563e-08 -4.0375418564053689e-09 ;
	setAttr ".r" -type "double3" 0.44569904335905253 3.8696645395505862 1.0389989692171537 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.34501500000000002 -0.927396 0.14457300000000001 0
		 -0.93856300000000004 -0.33958100000000002 0.0615097 0 -0.0079496500000000008 -0.156913 -0.98758000000000001 0
		 67.012433999999999 97.239197000000004 0.354574 1;
	setAttr ".fbxID" 5;
createNode joint -n "ring_01_l" -p "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l|hand_l";
	rename -uid "6DB7B111-4850-A90A-CAB4-018DC478C170";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 11.497884750366211 1.7535265684127808 2.8469123840332031 ;
	setAttr ".r" -type "double3" -13.510254538727057 -10.989254787408468 23.292106891939422 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.45520699999999997 -0.86727900000000002 0.20152600000000001 0
		 -0.884494 -0.46645500000000001 -0.0095185800000000004 0 0.102258 -0.17391599999999999 -0.979437 0
		 64.575616999999994 103.039222 2.082662 1;
	setAttr ".fbxID" 5;
createNode joint -n "ring_02_l" -p "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l|hand_l|ring_01_l";
	rename -uid "273D89ED-4D49-5B17-2AB9-D28019FA6800";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 4.4301772117614746 4.6665036279591732e-09 -9.4033403286175599e-10 ;
	setAttr ".r" -type "double3" 0.30135603450269732 -1.6697463961501005 13.315434502671531 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 0.99999999999999956 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.24213899999999999 -0.95605799999999996 0.165295 0
		 -0.96504100000000004 -0.25493500000000002 -0.060854800000000001 0 0.10032000000000001 -0.14478099999999999 -0.98436500000000005 0
		 66.592267000000007 99.197022000000004 2.97546 1;
	setAttr ".fbxID" 5;
createNode joint -n "ring_03_l" -p "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l|hand_l|ring_01_l|ring_02_l";
	rename -uid "B5F90378-4059-BDB8-B6BA-79B7A3A6C2A2";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.4766523838043213 -1.6786358969511639e-08 2.7686510861713032e-09 ;
	setAttr ".r" -type "double3" -0.36076424860897444 2.987667134511248 -12.899654771071239 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999956 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.44562499999999999 -0.86628099999999997 0.22577700000000001 0
		 -0.88739100000000004 -0.460729 -0.0162852 0 0.11813 -0.19309599999999999 -0.97404299999999999 0
		 67.434099000000003 95.873141000000004 3.5501320000000001 1;
	setAttr ".fbxID" 5;
createNode joint -n "thumb_01_l" -p "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l|hand_l";
	rename -uid "F52B2C60-487E-6A44-EE13-6883C7863DD7";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 4.7620363235473633 2.3749806880950928 -2.5378196239471436 ;
	setAttr ".r" -type "double3" 95.069136669622807 36.918976974649922 27.056190822001927 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000002 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.033459299999999997 -0.561222 0.82698899999999997 0
		 0.58346200000000004 -0.66084399999999999 -0.47207700000000002 0 0.81145100000000003 0.49831199999999998 0.30534 0
		 57.477995999999997 107.63904100000001 3.8767170000000002 1;
	setAttr ".fbxID" 5;
createNode joint -n "thumb_02_l" -p "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l|hand_l|thumb_01_l";
	rename -uid "80BC98C3-4436-73B7-78A2-A480C950273E";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.8696718215942383 5.0118700301027275e-09 9.9849728485423839e-09 ;
	setAttr ".r" -type "double3" 1.6131403736636545 9.8332438889360532 15.151305229440101 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.043499599999999999 -0.78904399999999997 0.61279499999999998 0
		 0.57761099999999999 -0.480605 -0.65983599999999998 0 0.81515199999999999 0.38266 0.43485400000000002 0
		 57.607472000000001 105.467297 7.076892 1;
	setAttr ".fbxID" 5;
createNode joint -n "thumb_03_l" -p "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l|hand_l|thumb_01_l|thumb_02_l";
	rename -uid "E9187525-4C7C-27AE-B12D-CF96CF3AC5D5";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 4.062171459197998 1.0721912246935972e-09 -5.1272763812448829e-10 ;
	setAttr ".r" -type "double3" 2.414763834380544 0.47919316436838849 -12.385634891494403 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.088219500000000006 -0.67077200000000003 0.73639900000000003 0
		 0.60730399999999995 -0.62220799999999998 -0.49400300000000003 0 0.78955600000000004 0.40363700000000002 0.46225300000000002 0
		 57.784174999999998 102.26206500000001 9.5661699999999996 1;
	setAttr ".fbxID" 5;
createNode joint -n "lowerarm_twist_01_l" -p "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l";
	rename -uid "8E4F9BD2-4B17-BAD5-392A-6D8282367B34";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 14 3.5527136788005009e-15 1.4210854715202004e-14 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.71849099999999999 -0.54739000000000004 0.42910900000000002 0
		 0.226212 -0.399501 -0.88838399999999995 0 0.65772200000000003 0.73536599999999996 -0.163212 0
		 47.323484999999998 118.782106 -5.9028510000000001 1;
	setAttr ".fbxID" 5;
createNode joint -n "upperarm_twist_01_l" -p "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l";
	rename -uid "A2B0AB86-458B-C777-45BA-03B50F323CC8";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.5 -3.5527136788005009e-15 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.64483999999999997 -0.76087099999999996 -0.072507199999999994 0
		 -0.068049499999999999 0.037335500000000001 -0.99698299999999995 0 0.76128300000000004 0.64782799999999996 -0.0277015 0
		 18.022639000000002 149.14989499999999 -9.7467729999999992 1;
	setAttr ".fbxID" 5;
createNode joint -n "clavicle_r" -p "|UE4|root|pelvis|spine_01|spine_02|spine_03";
	rename -uid "C99EB938-4C3A-EB36-D194-61AAB9989629";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 11.8837890625 -2.7321023941040039 3.7820026874542236 ;
	setAttr ".r" -type "double3" 108.71915573266828 61.853576172074277 -78.459052302848136 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999956 0.99999999999999967 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.881745 0.169207 0.44033499999999998 0 -0.446774 -2.45127e-05 0.89464699999999997 0
		 0.151391 -0.98558100000000004 0.075575400000000001 0 -3.7819970000000001 152.201336 -2.759887 1;
	setAttr ".fbxID" 5;
createNode joint -n "upperarm_r" -p "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r";
	rename -uid "EEFF1EE3-4A5C-4635-25F1-AE93AD0FDA39";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -15.784797668457031 -7.0139599301910494e-06 -1.1171471669513267e-05 ;
	setAttr ".r" -type "double3" 7.6738926595293826 40.300540655703898 -17.020992934253695 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.64483999999999997 0.76087099999999996 0.072506699999999993 0
		 -0.068049499999999999 -0.037334800000000001 0.99698299999999995 0 0.76128200000000001 -0.64782799999999996 0.027701900000000002 0
		 -17.700161000000001 149.53045599999999 -9.7104940000000006 1;
	setAttr ".fbxID" 5;
createNode joint -n "lowerarm_r" -p "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r";
	rename -uid "68AE77C1-4C83-0421-7EBB-96B3918E1866";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -30.340049743652344 -4.0850213736121077e-06 1.7513536931801355e-06 ;
	setAttr ".r" -type "double3" -3.613278937806625 -10.3973427584011 -30.360854373363736 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.71849099999999999 0.54738900000000001 -0.42910999999999999 0
		 0.226212 0.399501 0.88838399999999995 0 0.65772200000000003 -0.73536599999999996 0.163212 0
		 -37.264629999999997 126.445595 -11.910356999999999 1;
	setAttr ".fbxID" 5;
createNode joint -n "hand_r" -p "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r";
	rename -uid "2621CBC1-4D2D-3C6D-5555-6C9EBA1CEB48";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -26.975244522094727 2.5634119083406404e-05 -1.1905384553756448e-06 ;
	setAttr ".r" -type "double3" -76.356201188888392 2.4998079061090888 -0.4125709669948413 ;
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999956 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.68747499999999995 0.57605399999999995 -0.44219999999999998 0
		 -0.61435799999999996 0.78602000000000005 0.068825300000000006 0 0.38722499999999999 0.224353 0.89427199999999996 0
		 -56.646106000000003 111.67965 -0.33499200000000001 1;
	setAttr ".fbxID" 5;
createNode joint -n "index_01_r" -p "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r|hand_r";
	rename -uid "C5A19A02-4BFD-11B5-FBD0-55B08A2EF137";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -12.067941665649414 -1.7637253999710083 2.1094281673431396 ;
	setAttr ".r" -type "double3" 14.86695126728991 -3.7637880114312035 25.536937526971315 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999978 0.99999999999999967 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.38012000000000001 0.87150099999999997 -0.30983100000000002 0
		 -0.72907599999999995 0.48844799999999999 0.47944399999999998 0 0.56917200000000001 0.043643700000000001 0.82105899999999998 0
		 -63.042127000000001 103.81479899999999 6.766464 1;
	setAttr ".fbxID" 5;
createNode joint -n "index_02_r" -p "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r|hand_r|index_01_r";
	rename -uid "6D97823A-4C9C-F280-D6BC-988689E50A66";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -4.2876882553100586 9.2459835286717862e-05 -7.4262097768951207e-05 ;
	setAttr ".r" -type "double3" 1.3378194276401854 -0.47529026828726623 11.986129877033241 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999956 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.225136 0.95426800000000001 -0.196689 0 -0.77866100000000005 0.29756300000000002 0.55239799999999994 0
		 0.58566300000000004 0.028789599999999999 0.81004299999999996 0 -64.672072999999997 100.078118 8.0949039999999997 1;
	setAttr ".fbxID" 5;
createNode joint -n "index_03_r" -p "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r|hand_r|index_01_r|index_02_r";
	rename -uid "A64793F0-48A7-C476-8CD6-FAA32BEE392A";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.3937981128692627 0.00012069699005223811 -1.2407956091919914e-05 ;
	setAttr ".r" -type "double3" 1.1373671084257291 0.99727080684674818 -9.4963194797640718 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.34027099999999999 0.89146099999999995 -0.29918600000000001 0
		 -0.71895799999999999 0.45171600000000001 0.52825500000000003 0 0.60606599999999999 0.035352599999999998 0.79462900000000003 0
		 -65.436239999999998 96.839561000000003 8.7624849999999999 1;
	setAttr ".fbxID" 5;
createNode joint -n "middle_01_r" -p "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r|hand_r";
	rename -uid "4B9345A6-4DDF-D46C-3C72-5FB78228E01F";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -12.244112968444824 -1.2937241792678833 -0.57113021612167358 ;
	setAttr ".r" -type "double3" 1.9178512756595907 -7.0405641935384962 22.825872789057357 ;
	setAttr ".s" -type "double3" 0.99999999999999967 1 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.43979000000000001 0.85706099999999996 -0.26838600000000001 0
		 -0.82123299999999999 0.50473800000000002 0.26611200000000002 0 0.363539 0.10337399999999999 0.92582600000000004 0
		 -64.489968000000005 103.481353 4.4795660000000002 1;
	setAttr ".fbxID" 5;
createNode joint -n "middle_02_r" -p "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r|hand_r|middle_01_r";
	rename -uid "3CC3D433-4E51-A3D4-BE4B-44881BB469B5";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -4.640568733215332 -0.00014491056208498776 7.6369551607058384e-06 ;
	setAttr ".r" -type "double3" -2.024952382364499 1.1368393821927114 12.280693812302134 ;
	setAttr ".s" -type "double3" 1 0.99999999999999967 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.24778700000000001 0.94257000000000002 -0.223971 0
		 -0.908447 0.30638199999999999 0.28434799999999999 0 0.33663799999999999 0.13300799999999999 0.93219300000000005 0
		 -66.530722999999995 99.504030999999998 5.7249990000000004 1;
	setAttr ".fbxID" 5;
createNode joint -n "middle_03_r" -p "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r|hand_r|middle_01_r|middle_02_r";
	rename -uid "2CD40CF1-4A73-D9C4-34A7-DAB55813639F";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.6489090919494629 3.2996809750329703e-05 -2.2666431505058426e-06 ;
	setAttr ".r" -type "double3" 0.78144757657680752 -4.3899530552767496 -15.399739817787625 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.50448899999999997 0.83512200000000003 -0.21922900000000001 0
		 -0.80587900000000001 0.54657699999999998 0.22762299999999999 0 0.309919 0.061838799999999999 0.94874999999999998 0
		 -67.434905000000001 96.064687000000006 6.5422549999999999 1;
	setAttr ".fbxID" 5;
createNode joint -n "pinky_01_r" -p "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r|hand_r";
	rename -uid "A97D0482-4C61-7E8B-4271-83A1F08F1A89";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -10.140592575073242 -2.2633547782897949 -4.643094539642334 ;
	setAttr ".r" -type "double3" -18.724591751325903 -18.933966610967872 20.185867297574816 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.53545799999999999 0.84076899999999999 -0.079946600000000007 0
		 -0.84322399999999997 0.52688400000000002 -0.106613 0 -0.047514199999999999 0.1245 0.99108099999999999 0
		 -64.024918 103.017387 -0.15878900000000001 1;
	setAttr ".fbxID" 5;
createNode joint -n "pinky_02_r" -p "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r|hand_r|pinky_01_r";
	rename -uid "1AF764EB-429D-7981-ABDB-31AD0FDF6896";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.5710570812225342 -7.8019678767304868e-05 -8.1079842857434414e-06 ;
	setAttr ".r" -type "double3" 1.0638335726499644 -1.315685296782005 11.208043567831963 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.36015999999999998 0.92976000000000003 -0.076361999999999999 0
		 -0.93209600000000004 0.35526799999999997 -0.070586599999999999 0 -0.038499600000000002 0.096599199999999996 0.99457799999999996 0
		 -65.937004000000002 100.014909 0.12670500000000001 1;
	setAttr ".fbxID" 5;
createNode joint -n "pinky_03_r" -p "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r|hand_r|pinky_01_r|pinky_02_r";
	rename -uid "FFF97F42-43BB-3C13-E5BD-249E1178BE35";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -2.9854192733764648 0.00031727668829262257 -3.5056928027188405e-05 ;
	setAttr ".r" -type "double3" 0.44570049419982749 3.8696649538698802 1.0389991269851804 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.34501500000000002 0.927396 -0.14457400000000001 0
		 -0.93856300000000004 0.33958100000000002 -0.061509899999999999 0 -0.0079495899999999994 0.156913 0.98758000000000001 0
		 -67.012528000000003 97.239295999999996 0.35462100000000002 1;
	setAttr ".fbxID" 5;
createNode joint -n "ring_01_r" -p "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r|hand_r";
	rename -uid "9F298B18-42C4-D02F-4857-2A841F60AA9E";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -11.497973442077637 -1.7537660598754883 -2.8469147682189941 ;
	setAttr ".r" -type "double3" -13.510254538727057 -10.989254787408468 23.292106891939422 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.455208 0.86727900000000002 -0.20152700000000001 0
		 -0.884494 0.46645500000000001 0.0095182900000000004 0 0.102258 0.17391599999999999 0.979437 0
		 -64.575626999999997 103.038988 2.0827909999999998 1;
	setAttr ".fbxID" 5;
createNode joint -n "ring_02_r" -p "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r|hand_r|ring_01_r";
	rename -uid "1E7B459E-4343-6E98-F303-3B9B398EF2A3";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -4.4298644065856934 8.4479885117616504e-05 -1.837869785958901e-05 ;
	setAttr ".r" -type "double3" 0.30135603450269732 -1.6697463961501005 13.315434502671531 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 0.99999999999999956 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.24213899999999999 0.95605799999999996 -0.165295 0
		 -0.96504100000000004 0.25493500000000002 0.060854699999999998 0 0.10032000000000001 0.14478199999999999 0.98436500000000005 0
		 -66.592211000000006 99.197096000000002 2.9755099999999999 1;
	setAttr ".fbxID" 5;
createNode joint -n "ring_03_r" -p "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r|hand_r|ring_01_r|ring_02_r";
	rename -uid "EC379DB0-43DC-7027-6531-5E9C861EDCFA";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.476658821105957 7.1941642090678215e-05 -2.8431277314666659e-06 ;
	setAttr ".r" -type "double3" -0.36076424860897444 2.987667134511248 -12.899654771071239 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999956 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.44562499999999999 0.86628099999999997 -0.22577800000000001 0
		 -0.88739100000000004 0.460729 0.016284900000000001 0 0.11813 0.19309599999999999 0.97404299999999999 0
		 -67.434115000000006 95.873227 3.5501879999999999 1;
	setAttr ".fbxID" 5;
createNode joint -n "thumb_01_r" -p "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r|hand_r";
	rename -uid "14947C13-413A-1AA4-AB1D-EB8A23646384";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -4.7621245384216309 -2.3751199245452881 2.5378017425537109 ;
	setAttr ".r" -type "double3" 95.069136669622807 36.918976974649922 27.056190822001927 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000002 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.0334594 0.56122099999999997 -0.82698899999999997 0
		 0.58346200000000004 0.66084500000000002 0.47207700000000002 0 0.81145100000000003 -0.49831199999999998 -0.30534 0
		 -57.478071 107.638882 3.8768349999999998 1;
	setAttr ".fbxID" 5;
createNode joint -n "thumb_02_r" -p "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r|hand_r|thumb_01_r";
	rename -uid "616A11A2-4836-E875-0AA0-599930CE4B73";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.8695690631866455 0.00011357050243532285 5.5954889830900356e-05 ;
	setAttr ".r" -type "double3" 1.6131423789634627 9.8332445111953497 15.151307188458789 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.043499799999999998 0.78904399999999997 -0.61279499999999998 0
		 0.57761099999999999 0.480605 0.65983599999999998 0 0.81515199999999999 -0.38266 -0.43485400000000002 0
		 -57.607433 105.46724500000001 7.0769640000000003 1;
	setAttr ".fbxID" 5;
createNode joint -n "thumb_03_r" -p "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r|hand_r|thumb_01_r|thumb_02_r";
	rename -uid "D9015FC4-40DE-56F2-CD66-DFA7144D2FA9";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -4.0621762275695801 2.0121733541600406e-06 3.2049592846306041e-06 ;
	setAttr ".r" -type "double3" 2.4147621858541104 0.47919251596620299 -12.385634904017572 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999956 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.0882193 0.67077100000000001 -0.73639900000000003 0
		 0.60730399999999995 0.62220799999999998 0.49400300000000003 0 0.78955600000000004 -0.40363700000000002 -0.46225300000000002 0
		 -57.784132999999997 102.262011 9.5662459999999996 1;
	setAttr ".fbxID" 5;
createNode joint -n "lowerarm_twist_01_r" -p "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r";
	rename -uid "91CF6198-49E2-710E-A095-BC998C66006D";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -14 2.4331944587174803e-05 -6.578326974704396e-06 ;
	setAttr ".r" -type "double3" -13.510350313925773 0 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.71849099999999999 0.54738900000000001 -0.42910999999999999 0
		 0.066294900000000004 0.56024300000000005 0.82567100000000004 0 0.69236900000000001 -0.62168500000000004 0.36624099999999998 0
		 -47.323507999999997 118.782162 -5.9027989999999999 1;
	setAttr ".fbxID" 5;
createNode joint -n "upperarm_twist_01_r" -p "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r";
	rename -uid "41EAD35F-4DF5-F0DB-8518-C585993555D1";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -0.5 -3.700793968164362e-06 -1.1559803851923789e-06 ;
	setAttr ".r" -type "double3" -19.951905462246859 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.64483999999999997 0.76087099999999996 0.072506699999999993 0
		 -0.32373800000000003 0.18596499999999999 0.92769100000000004 0 0.69236900000000001 -0.62168500000000004 0.36624099999999998 0
		 -18.022582 149.15002100000001 -9.7467520000000007 1;
	setAttr ".fbxID" 5;
createNode joint -n "neck_01" -p "|UE4|root|pelvis|spine_01|spine_02|spine_03";
	rename -uid "B7CF3C89-4111-8C04-8149-C8B6C84D2C91";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 16.558782577514648 -0.35531756281852722 -5.9659740259121463e-08 ;
	setAttr ".r" -type "double3" 0 0 -23.50807035605488 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1.00122e-07 0.97017399999999998 0.24241099999999999 0
		 2.4822100000000001e-08 0.24241099999999999 -0.97017399999999998 0 -1 1.0315300000000001e-07 1.8893599999999999e-10 0
		 6.15428e-06 156.42106100000001 -5.874142 1;
	setAttr ".fbxID" 5;
createNode joint -n "head" -p "|UE4|root|pelvis|spine_01|spine_02|spine_03|neck_01";
	rename -uid "4989CA68-4767-6C95-F769-1F807FC7C103";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 9.2836132049560547 0.36415687203407288 2.9273693708751483e-15 ;
	setAttr ".r" -type "double3" 0 0 15.34863159322127 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1.03121e-07 0.99973500000000004 -0.023032400000000001 0
		 -2.5647499999999999e-09 -0.023032400000000001 -0.99973500000000004 0 -1 1.0315300000000001e-07 1.8893599999999999e-10 0
		 7.0928099999999999e-06 165.51605499999999 -3.9769920000000001 1;
	setAttr ".fbxID" 5;
createNode joint -n "thigh_l" -p "|UE4|root|pelvis";
	rename -uid "A3A7556E-4FD2-D5B8-7826-38A3CCCA0F68";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -1.4488286972045898 -0.53142350912094116 -9.0058097839355469 ;
	setAttr ".r" -type "double3" 8.5634556738326904 -7.0322954635026083 -1.5154704017992908 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999956 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.122429 0.99202699999999999 0.029882100000000002 0
		 -0.147784 0.011551000000000001 -0.98895200000000005 0 -0.98141299999999998 -0.12549199999999999 0.14519199999999999 0
		 9.0058100000000003 95.299835999999999 -0.53004099999999998 1;
	setAttr ".fbxID" 5;
createNode joint -n "calf_l" -p "|UE4|root|pelvis|thigh_l";
	rename -uid "9ACAB049-4F58-6F08-169D-2FAE2D811B45";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -42.572036743164062 1.7074197611322006e-10 -4.6678749754391902e-10 ;
	setAttr ".r" -type "double3" -5.7359702594615616 1.7872745506295515 -7.6135760671106194 ;
	setAttr ".s" -type "double3" 0.99999999999999956 1 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.071110699999999999 0.98518799999999995 0.15604000000000001 0
		 -0.063531500000000005 0.151645 -0.98639100000000002 0 -0.99544299999999997 -0.0800564 0.051806900000000003 0
		 14.217848 53.067211 -1.8021830000000001 1;
	setAttr ".fbxID" 5;
createNode joint -n "calf_twist_01_l" -p "|UE4|root|pelvis|thigh_l|calf_l";
	rename -uid "A3C6910D-46CA-9AB4-B074-CBA36CCEE08A";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -20.476776123046875 0 0 ;
	setAttr ".r" -type "double3" 0.32356076410216561 -0.21908462697809414 -0.87298220173219809 ;
	setAttr ".s" -type "double3" 0.99999999999999956 1 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.073940199999999998 0.98245000000000005 0.17124700000000001 0
		 -0.070226399999999994 0.166161 -0.983595 0 -0.99478699999999998 -0.084753300000000004 0.056707899999999999 0
		 15.673965000000001 32.893742000000003 -4.9973729999999996 1;
	setAttr ".fbxID" 5;
createNode joint -n "foot_l" -p "|UE4|root|pelvis|thigh_l|calf_l";
	rename -uid "6EC51751-4C99-BA05-7EA6-54B909FB2D7A";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -40.196689605712891 -3.9338505786190581e-09 1.8994583683706878e-10 ;
	setAttr ".r" -type "double3" -0.41538650297038404 3.7049346376769421 8.0595688253161288 ;
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999956 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.014826000000000001 0.99980800000000003 0.0128223 0
		 -0.045693900000000003 0.0121329 -0.99888200000000005 0 -0.99884499999999998 -0.015395300000000001 0.045505200000000003 0
		 17.076260999999999 13.465925 -8.0744620000000005 1;
	setAttr ".fbxID" 5;
createNode joint -n "ball_l" -p "|UE4|root|pelvis|thigh_l|calf_l|foot_l";
	rename -uid "EC002D7F-43D4-54B0-DD52-4590B34B6C61";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -10.453837394714355 -16.577854156494141 0.080155946314334869 ;
	setAttr ".r" -type "double3" 0.0039439606158808488 0.0089523646390348398 -91.883584507706402 ;
	setAttr ".s" -type "double3" 1 0.99999999999999956 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.046312600000000002 -0.044986400000000003 0.99791399999999997 0
		 -0.013384800000000001 0.99886799999999998 0.0456506 0 -0.99883699999999997 -0.0154711 0.045657999999999997 0
		 17.908691999999999 2.811725 8.3544599999999996 1;
	setAttr ".fbxID" 5;
createNode joint -n "thigh_twist_01_l" -p "|UE4|root|pelvis|thigh_l";
	rename -uid "3D9A0F79-4049-AFDE-2A1F-5DA1AAA81DD8";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -22.09423828125 3.3306690738754696e-16 0 ;
	setAttr ".r" -type "double3" -5.4386740884979243 -0.00021103636139108709 -0.056330304199365598 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.12228700000000001 0.99201499999999998 0.030854900000000001 0
		 -0.054220400000000002 0.024364500000000001 -0.99823200000000001 0 -0.99101300000000003 -0.12374400000000001 0.050807999999999999 0
		 11.710777999999999 73.381747000000004 -1.1902630000000001 1;
	setAttr ".fbxID" 5;
createNode joint -n "thigh_r" -p "|UE4|root|pelvis";
	rename -uid "FA28DEA6-408B-5CB4-3CAE-1FA82F153044";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -1.4486445188522339 -0.53142756223678589 9.005803108215332 ;
	setAttr ".r" -type "double3" 8.5634556738327046 -7.0322954635026029 178.48452878509659 ;
	setAttr ".s" -type "double3" 0.99999999999999911 0.99999999999999911 0.99999999999999956 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.122429 -0.99202699999999999 -0.029882100000000002 0
		 -0.147785 -0.011551000000000001 0.98895200000000005 0 -0.98141299999999998 0.12549199999999999 -0.14519199999999999 0
		 -9.0058030000000002 95.300021999999998 -0.53003599999999995 1;
	setAttr ".fbxID" 5;
createNode joint -n "calf_r" -p "|UE4|root|pelvis|thigh_r";
	rename -uid "01A8A771-48AF-60AA-DDC8-A5B6113C8FE0";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 42.572250366210938 -1.6233628912232234e-06 -5.8367555766380974e-07 ;
	setAttr ".r" -type "double3" -5.7359702594615616 1.7872745506295515 -7.6135760671106194 ;
	setAttr ".s" -type "double3" 0.99999999999999956 1 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.071110900000000005 -0.98518799999999995 -0.15604000000000001 0
		 -0.063531500000000005 -0.151645 0.98639100000000002 0 -0.99544299999999997 0.080056600000000006 -0.051806900000000003 0
		 -14.217876 53.067186 -1.802187 1;
	setAttr ".fbxID" 5;
createNode joint -n "calf_twist_01_r" -p "|UE4|root|pelvis|thigh_r|calf_r";
	rename -uid "CA1AFD90-464B-2360-5563-4FBE54B3A1B8";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 20.476907730102539 0 -3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 0.3233703567579771 -0.21913229924480676 -0.87296387152696719 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.073941300000000001 -0.98245000000000005 -0.17124700000000001 0
		 -0.070223099999999997 -0.166161 0.983595 0 -0.99478699999999998 0.084753800000000004 -0.056704499999999998 0
		 -15.674006 32.893588000000001 -4.9973979999999996 1;
	setAttr ".fbxID" 5;
createNode joint -n "foot_r" -p "|UE4|root|pelvis|thigh_r|calf_r";
	rename -uid "77443659-48DE-71A4-D530-DCBBAAA5D322";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 40.196819305419922 1.6769354260759428e-06 -1.0918018233496696e-05 ;
	setAttr ".r" -type "double3" -0.41538650297038404 3.7049346376769421 8.0595688253161288 ;
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999956 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.014826199999999999 -0.99980800000000003 -0.0128223 0
		 -0.045693900000000003 -0.0121329 0.99888200000000005 0 -0.99884499999999998 0.015395499999999999 -0.045505200000000003 0
		 -17.076294999999998 13.465771999999999 -8.074484 1;
	setAttr ".fbxID" 5;
createNode joint -n "ball_r" -p "|UE4|root|pelvis|thigh_r|calf_r|foot_r";
	rename -uid "975801C1-4A5A-83F9-2F82-85BD2CB0DC05";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 10.453816413879395 16.577796936035156 -0.080158449709415436 ;
	setAttr ".r" -type "double3" 0.0039439606158808488 0.0089523646390348398 -91.883584507706402 ;
	setAttr ".s" -type "double3" 1 0.99999999999999956 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.046312600000000002 0.044986400000000003 -0.99791399999999997 0
		 -0.013384999999999999 -0.99886799999999998 -0.0456506 0 -0.99883699999999997 0.0154713 -0.045657999999999997 0
		 -17.908722999999998 2.8115939999999999 8.3543810000000001 1;
	setAttr ".fbxID" 5;
createNode joint -n "thigh_twist_01_r" -p "|UE4|root|pelvis|thigh_r";
	rename -uid "833B2577-4530-4278-78FA-8BAEB491D10F";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 22.094240188598633 2.2204460492503131e-16 -3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" -5.4388652516332607 -0.00016294582991486909 -0.056340640185448501 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999956 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.12228600000000001 -0.99201499999999998 -0.030855 0
		 -0.054217099999999997 -0.024365000000000001 0.99823200000000001 0 -0.99101300000000003 0.12374300000000001 -0.050804700000000001 0
		 -11.710775999999999 73.381932000000006 -1.190259 1;
	setAttr ".fbxID" 5;
createNode joint -n "ik_foot_root" -p "|UE4|root";
	rename -uid "4E171C3A-45FB-3CE4-55F7-54B96227AF09";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0 -1 0 0 1 0 0 0 0 0 1;
	setAttr ".fbxID" 5;
createNode joint -n "ik_foot_l" -p "|UE4|root|ik_foot_root";
	rename -uid "C21FF541-4468-C198-D074-A48440B12842";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 17.076271057128906 8.0721273422241211 13.465730667114258 ;
	setAttr ".r" -type "double3" 141.82109907679421 -88.877882344641009 -139.2072685533158 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.014826199999999999 0.99980800000000003 0.0127943 0
		 -0.045693900000000003 0.0121049 -0.99888200000000005 0 -0.99884499999999998 -0.0153942 0.0455056 0
		 17.076270999999998 13.465731 -8.0721270000000001 1;
	setAttr ".fbxID" 5;
createNode joint -n "ik_foot_r" -p "|UE4|root|ik_foot_root";
	rename -uid "84A634FE-40EB-96DE-8707-57AE8C446FE7";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -17.076288223266602 8.072148323059082 13.465573310852051 ;
	setAttr ".r" -type "double3" -38.178896254116694 88.87788234464135 139.20726855331432 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.014826199999999999 -0.99980800000000003 -0.0127943 0
		 -0.045693999999999999 -0.0121049 0.99888200000000005 0 -0.99884499999999998 0.0153942 -0.045505700000000003 0
		 -17.076288000000002 13.465572999999999 -8.0721480000000003 1;
	setAttr ".fbxID" 5;
createNode joint -n "ik_hand_root" -p "|UE4|root";
	rename -uid "C97207B5-4AD7-B2D5-4915-58AB52B7BDF9";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0 -1 0 0 1 0 0 0 0 0 1;
	setAttr ".fbxID" 5;
createNode joint -n "ik_hand_gun" -p "|UE4|root|ik_hand_root";
	rename -uid "E0F12B40-4C82-467D-6BF6-B78C5CD11434";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -56.646099090576172 0.33541175723075867 111.67965698242188 ;
	setAttr ".r" -type "double3" 74.068034932419735 -35.172619359131048 32.751040496204631 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.68747400000000003 0.57604200000000005 -0.442216 0
		 -0.61435799999999996 0.786022 0.068803400000000001 0 0.38722499999999999 0.22437799999999999 0.89426600000000001 0
		 -56.646099 111.67965700000001 -0.33541199999999999 1;
	setAttr ".fbxID" 5;
createNode joint -n "ik_hand_l" -p "|UE4|root|ik_hand_root|ik_hand_gun";
	rename -uid "1259896F-41EE-6469-F7B1-678E40857360";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 77.885429382324219 -69.601913452148438 43.869503021240234 ;
	setAttr ".r" -type "double3" -145.80035347066806 -32.168746996028787 -93.709015145164315 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.68747400000000003 -0.57604200000000005 0.442216 0
		 -0.61435799999999996 -0.786022 -0.068803900000000001 0 0.38722600000000001 -0.22437799999999999 -0.89426600000000001 0
		 56.646000000000001 111.679664 -0.335453 1;
	setAttr ".fbxID" 5;
createNode joint -n "ik_hand_r" -p "|UE4|root|ik_hand_root|ik_hand_gun";
	rename -uid "DA4DD587-421B-9A6D-7E98-71873E4A4987";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.5527136788005009e-14 0 3.5527136788005009e-15 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.68747400000000003 0.57604200000000005 -0.442216 0
		 -0.61435799999999996 0.786022 0.068803400000000001 0 0.38722499999999999 0.22437799999999999 0.89426600000000001 0
		 -56.646099 111.67965700000001 -0.33541199999999999 1;
	setAttr ".fbxID" 5;
createNode transform -n "UE5Simple";
	rename -uid "827491DF-4F08-7123-75A1-14B047251560";
	setAttr ".r" -type "double3" -90 0 0 ;
createNode joint -n "root" -p "UE5Simple";
	rename -uid "61764BDE-4310-52F6-B0A9-8D96A4CCA684";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "jointTRSData" -ln "jointTRSData" -dt "string";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0 -1 0 0 1 0 0 0 0 0 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".jointTRSData" -type "string" (
		"(dp0&lf;Vupperarm_bicep_l&lf;p1&lf;(dp2&lf;S'rotation'&lf;p3&lf;(F-2.112087093159394e-16&lf;F1.6101558074909054e-14&lf;F-1.948089742396404e-14&lf;tp4&lf;sS'translate'&lf;p5&lf;(F0.4296336514963315&lf;F-3.0014054840172104&lf;F-0.33568228722386095&lf;tp6&lf;sS'scale'&lf;p7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp8&lf;ssVthigh_fwd_r&lf;p9&lf;(dp10&lf;g3&lf;(F-3.2351075555054503e-09&lf;F-3.554814002738346e-09&lf;F4.6893499014910565e-09&lf;tp11&lf;sg5&lf;(F-5.8879919004175605&lf;F7.159845239867742&lf;F-0.8596299999494192&lf;tp12&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp13&lf;ssVupperarm_twist_02_r&lf;p14&lf;(dp15&lf;g3&lf;(F-5.715515410477199e-05&lf;F0.239297380467856&lf;F-0.013684890989370199&lf;tp16&lf;sg5&lf;(F-16.831266561863387&lf;F1.8815802156346706e-05&lf;F-0.00023473533977380612&lf;tp17&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp18&lf;ssVthigh_fwd_l&lf;p19&lf;(dp20&lf;g3&lf;(F-3.0625942677403114e-09&lf;F3.73169190518625e-08&lf;F5.2113571248109e-09&lf;tp21&lf;sg5&lf;(F5.892345071609&lf;F-7.144273484161924&lf;F0.8632194689173218&lf;tp22&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp23&lf;ssVupperarm_twist_02_l&lf;p24&lf;(dp25&lf;g3&lf;(F-5.715515410371704e-05&lf;F0.2392973804688322&lf;F-0.013684890989424315&lf;tp26&lf;sg5&lf;(F16.83153379318587&lf;F1.7763568394002505e-15&lf;F0.0&lf;tp27&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp28&lf;ssVspine_02&lf;p29&lf;(dp30&lf;g3&lf;(F-1.2132853246549658e-20&lf;F-5.763105292111093e-19&lf;F-2.3854160140597598e-15&lf;tp31&lf;sg5&lf;(F4.64819543873827&lf;F0.0&lf;F9.247810850432359e-15&lf;tp32&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp33&lf;ssVspine_03&lf;p34&lf;(dp35&lf;g3&lf;(F3.8839555994523184e-42&lf;F9.390828412829445e-18&lf;F4.739395799433465e-23&lf;tp36&lf;sg5&lf;(F7.10706776307444&lf;F7.105427357601002e-15&lf;F-1.6302063865492045e-14&lf;tp37&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp38&lf;ssVspine_04&lf;p39&lf;(dp40&lf;g3&lf;(F-5.823769558343841e-19&lf;F4.246498636292384e-20&lf;F1.590277269640821e-15&lf;tp41&lf;sg5&lf;(F8.248942899748158&lf;F3.552713678800501e-15&lf;F-2.1010970741031088e-14&lf;tp42&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp43&lf;ssVspine_05&lf;p44&lf;(dp45&lf;g3&lf;(F-1.4559423895859602e-19&lf;F4.659679162086993e-18&lf;F1.4908847995874568e-16&lf;tp46&lf;sg5&lf;(F16.308254953927232&lf;F-7.105427357601002e-15&lf;F2.3062281251373662e-14&lf;tp47&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp48&lf;ssVindex_metacarpal_r&lf;p49&lf;(dp50&lf;g3&lf;(F-4.808104147368675e-15&lf;F2.4351121779955047e-15&lf;F2.2363275104040347e-15&lf;tp51&lf;sg5&lf;(F-3.457892340165678&lf;F-0.010593711576447618&lf;F1.529324513338704&lf;tp52&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp53&lf;ssVupperarm_bicep_r&lf;p54&lf;(dp55&lf;g3&lf;(F3.1557065980145833e-14&lf;F5.367186024969683e-15&lf;F6.361109362927035e-15&lf;tp56&lf;sg5&lf;(F-0.570192043047129&lf;F3.0080906171650774&lf;F0.15133974465763345&lf;tp57&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp58&lf;ssVlowerarm_in_r&lf;p59&lf;(dp60&lf;g3&lf;(F2.5444437451708134e-14&lf;F0.0&lf;F0.0&lf;tp61&lf;sg5&lf;(F-1.5514355804486115&lf;F-0.21415705989632272&lf;F2.2829596952656743&lf;tp62&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp63&lf;ssVwrist_inner_l&lf;p64&lf;(dp65&lf;g3&lf;(F-5.1497652947915144e-14&lf;F-9.541664044390552e-15&lf;F-4.174478019420861e-15&lf;tp66&lf;sg5&lf;(F-0.08634634823715714&lf;F1.6269678363065907&lf;F-0.47525639176425827&lf;tp67&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp68&lf;ssVthigh_out_r&lf;p69&lf;(dp70&lf;g3&lf;(F-1.122660004060381e-09&lf;F7.74599041022121e-09&lf;F1.0052238419628676e-08&lf;tp71&lf;sg5&lf;(F-5.490222724311039&lf;F-1.2357139686785958&lf;F4.529304741894016&lf;tp72&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp73&lf;ssVclavicle_l&lf;p74&lf;(dp75&lf;g3&lf;(F-2.7034714792439897e-14&lf;F6.659286364314223e-15&lf;F359.99999999999994&lf;tp76&lf;sg5&lf;(F5.434344857110261&lf;F0.9364505906511198&lf;F-0.866799571158099&lf;tp77&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp78&lf;ssVupperarm_twist_01_r&lf;p79&lf;(dp80&lf;g3&lf;(F-6.1858806299137406e-15&lf;F-2.4343783062529425e-15&lf;F-9.660793900053754e-15&lf;tp81&lf;sg5&lf;(F-8.639670830686583&lf;F0.09629670980522409&lf;F0.16541554783053414&lf;tp82&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp83&lf;ssVball_r&lf;p84&lf;(dp85&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp86&lf;sg5&lf;(F5.70729832865123&lf;F11.471707953183119&lf;F0.00175755891641316&lf;tp87&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp88&lf;ssVthigh_twistCor_01_r&lf;p89&lf;(dp90&lf;g3&lf;(F-7.966473664013811e-13&lf;F7.136261186895984e-18&lf;F-1.5803581998339445e-10&lf;tp91&lf;sg5&lf;(F-6.110667527536862e-13&lf;F-2.0383694732117874e-13&lf;F7.105427357601002e-15&lf;tp92&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp93&lf;ssVthigh_twistCor_01_l&lf;p94&lf;(dp95&lf;g3&lf;(F-7.679131785889907e-13&lf;F-6.227958139655539e-18&lf;F-1.5803582267887843e-10&lf;tp96&lf;sg5&lf;(F6.252776074688882e-13&lf;F2.0294876890147862e-13&lf;F-1.0658141036401503e-14&lf;tp97&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp98&lf;ssVindex_03_l&lf;p99&lf;(dp100&lf;g3&lf;(F-5.308123295365481e-21&lf;F2.1581542102166356e-40&lf;F4.6590149061444796e-18&lf;tp101&lf;sg5&lf;(F2.3173075307279305&lf;F2.842170943040401e-14&lf;F9.769962616701378e-15&lf;tp102&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp103&lf;ssVball_l&lf;p104&lf;(dp105&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp106&lf;sg5&lf;(F-5.707299374390027&lf;F-11.471697092323957&lf;F-0.0017138404028358423&lf;tp107&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp108&lf;ssVupperarm_twist_01_l&lf;p109&lf;(dp110&lf;g3&lf;(F2.5988450325576927e-15&lf;F1.4877974460841166e-16&lf;F3.2046487033437818e-15&lf;tp111&lf;sg5&lf;(F8.63996069843948&lf;F-0.09628023891043291&lf;F-0.16557725147991675&lf;tp112&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp113&lf;ssVclavicle_r&lf;p114&lf;(dp115&lf;g3&lf;(F180.0&lf;F180.0&lf;F-180.0&lf;tp116&lf;sg5&lf;(F5.433600703058573&lf;F0.9365499957792274&lf;F0.8688515061571342&lf;tp117&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp118&lf;ssVwrist_inner_r&lf;p119&lf;(dp120&lf;g3&lf;(F-1.2709794684129601e-14&lf;F3.1805546814635168e-15&lf;F-3.578124016646457e-15&lf;tp121&lf;sg5&lf;(F0.05073241165543152&lf;F-1.456593948087047&lf;F0.4146242448130657&lf;tp122&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp123&lf;ssVthigh_out_l&lf;p124&lf;(dp125&lf;g3&lf;(F-7.841617927850014e-09&lf;F-1.611360794686607e-08&lf;F-6.402664334885883e-09&lf;tp126&lf;sg5&lf;(F5.488080642544915&lf;F1.2215333393427994&lf;F-4.541695609589556&lf;tp127&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp128&lf;ssVclavicle_out_l&lf;p129&lf;(dp130&lf;g3&lf;(F2.1369351765716433e-15&lf;F-3.0719030044415276e-10&lf;F1.3674210922985612e-14&lf;tp131&lf;sg5&lf;(F10.05977550712825&lf;F0.047623277898917404&lf;F5.124009981794558&lf;tp132&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp133&lf;ssVthigh_l&lf;p134&lf;(dp135&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp136&lf;sg5&lf;(F-3.011926735188311&lf;F-0.06340308345171675&lf;F-10.395847431675032&lf;tp137&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp138&lf;ssVcalf_correctiveRoot_l&lf;p139&lf;(dp140&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp141&lf;sg5&lf;(F7.105427357601002e-15&lf;F-4.440892098500626e-16&lf;F-8.881784197001252e-15&lf;tp142&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp143&lf;ssVclavicle_out_r&lf;p144&lf;(dp145&lf;g3&lf;(F1.5853077242196556e-14&lf;F-1.733539619516481e-08&lf;F-1.1745378447666112e-14&lf;tp146&lf;sg5&lf;(F-10.296855532639404&lf;F0.1711587055647632&lf;F-5.132314944700084&lf;tp147&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp148&lf;ssVfoot_l&lf;p149&lf;(dp150&lf;g3&lf;(F3.1060104311167183e-18&lf;F-3.975696764194372e-15&lf;F-7.450785178706153e-17&lf;tp151&lf;sg5&lf;(F-38.868305766260185&lf;F-1.8835664532534935e-06&lf;F-6.242941395839807e-06&lf;tp152&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp153&lf;ssVthigh_correctiveRoot_l&lf;p154&lf;(dp155&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp156&lf;sg5&lf;(F1.4210854715202004e-14&lf;F2.6645352591003757e-15&lf;F3.552713678800501e-15&lf;tp157&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp158&lf;ssVspine_01&lf;p159&lf;(dp160&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp161&lf;sg5&lf;(F2.303684184416582&lf;F3.552713678800501e-15&lf;F8.632417697329586e-16&lf;tp162&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp163&lf;ssVupperarm_out_r&lf;p164&lf;(dp165&lf;g3&lf;(F0.0&lf;F7.727962875304028e-09&lf;F0.0&lf;tp166&lf;sg5&lf;(F-0.0015998720624850193&lf;F-0.26206737267851477&lf;F-5.478375142778077&lf;tp167&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp168&lf;ssVmiddle_03_l&lf;p169&lf;(dp170&lf;g3&lf;(F-6.212020862233431e-18&lf;F-7.442292181433567e-17&lf;F3.975754016095629e-16&lf;tp171&lf;sg5&lf;(F2.7046150315646855&lf;F-7.105427357601002e-15&lf;F-7.105427357601002e-15&lf;tp172&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp173&lf;ssVring_02_r&lf;p174&lf;(dp175&lf;g3&lf;(F3.7272125173400593e-17&lf;F-9.93923337957349e-17&lf;F-9.541615512977564e-15&lf;tp176&lf;sg5&lf;(F-3.9621715292690425&lf;F1.5004568538756757e-05&lf;F-4.923994394800957e-05&lf;tp177&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp178&lf;ssVthumb_01_r&lf;p179&lf;(dp180&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp181&lf;sg5&lf;(F-2.4749759005593006&lf;F-1.2059805117236948&lf;F2.2430633666914694&lf;tp182&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp183&lf;ssVthumb_01_l&lf;p184&lf;(dp185&lf;g3&lf;(F-1.3517357396219944e-14&lf;F-7.951386703658789e-15&lf;F3.1805546814635168e-15&lf;tp186&lf;sg5&lf;(F2.4749410357123125&lf;F1.2059493890390485&lf;F-2.242953361528688&lf;tp187&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp188&lf;ssVring_02_l&lf;p189&lf;(dp190&lf;g3&lf;(F2.4848083448933737e-17&lf;F-1.4287647983136886e-16&lf;F-1.272226725726705e-14&lf;tp191&lf;sg5&lf;(F3.962151505953962&lf;F-1.4210854715202004e-14&lf;F-3.907985046680551e-14&lf;tp192&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp193&lf;ssVupperarm_out_l&lf;p194&lf;(dp195&lf;g3&lf;(F0.0&lf;F7.727962875304028e-09&lf;F0.0&lf;tp196&lf;sg5&lf;(F-0.13826645305934449&lf;F0.26872367525577534&lf;F5.293475235855169&lf;tp197&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp198&lf;ssVmiddle_03_r&lf;p199&lf;(dp200&lf;g3&lf;(F-1.5530052155583591e-18&lf;F-7.454425034680117e-17&lf;F1.5902788573384142e-15&lf;tp201&lf;sg5&lf;(F-2.7046326736289075&lf;F1.1443238847164139e-05&lf;F2.466278816015688e-05&lf;tp202&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp203&lf;ssVankle_fwd_r&lf;p204&lf;(dp205&lf;g3&lf;(F3.602972100095387e-16&lf;F-2.882377680076312e-15&lf;F1.1927080055488187e-14&lf;tp206&lf;sg5&lf;(F-1.6349691499013561&lf;F4.197070299797255&lf;F-0.4635870315139865&lf;tp207&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp208&lf;ssVthigh_correctiveRoot_r&lf;p209&lf;(dp210&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp211&lf;sg5&lf;(F0.0&lf;F-1.7763568394002505e-15&lf;F-5.329070518200751e-15&lf;tp212&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp213&lf;ssVcalf_correctiveRoot_r&lf;p214&lf;(dp215&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp216&lf;sg5&lf;(F7.105427357601002e-15&lf;F-8.881784197001252e-16&lf;F-1.7763568394002505e-15&lf;tp217&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp218&lf;ssVthigh_bck_lwr_l&lf;p219&lf;(dp220&lf;g3&lf;(F2.5444437451708134e-14&lf;F0.0&lf;F0.0&lf;tp221&lf;sg5&lf;(F-5.597656441629496&lf;F9.947071814613224&lf;F1.4709560480788824&lf;tp222&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp223&lf;ssVupperarm_twistCor_01_r&lf;p224&lf;(dp225&lf;g3&lf;(F-5.715515408476811e-05&lf;F0.2392973804678571&lf;F-0.013684890989359285&lf;tp226&lf;sg5&lf;(F0.22332124117612295&lf;F-0.09634080925396127&lf;F-0.16646707192127508&lf;tp227&lf;sg7&lf;(F0.9999999999999997&lf;F1.0&lf;F0.9999999999999998&lf;tp228&lf;ssVhand_r&lf;p229&lf;(dp230&lf;g3&lf;(F-1.9878466759146967e-16&lf;F-4.770832022195275e-15&lf;F-3.1805546814635168e-15&lf;tp231&lf;sg5&lf;(F-24.320337470574643&lf;F-0.0002950651889577216&lf;F0.0003046297929785169&lf;tp232&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp233&lf;ssVthumb_03_l&lf;p234&lf;(dp235&lf;g3&lf;(F-3.416611474228386e-17&lf;F-4.7366659074529904e-17&lf;F-4.246498636292382e-20&lf;tp236&lf;sg5&lf;(F2.5261795391662645&lf;F3.552713678800501e-14&lf;F-4.263256414560601e-14&lf;tp237&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp238&lf;ssVhand_l&lf;p239&lf;(dp240&lf;g3&lf;(F-6.6592863643142385e-15&lf;F-3.1805546814635168e-15&lf;F-3.1805546814635164e-15&lf;tp241&lf;sg5&lf;(F24.32004358863988&lf;F0.0&lf;F1.4210854715202004e-14&lf;tp242&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp243&lf;ssVthumb_03_r&lf;p244&lf;(dp245&lf;g3&lf;(F-2.174207301781701e-17&lf;F-2.348920388532016e-17&lf;F-4.770874487181638e-15&lf;tp246&lf;sg5&lf;(F-2.526164976356057&lf;F-4.6664516247574284e-05&lf;F7.370655225713563e-06&lf;tp247&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp248&lf;ssVupperarm_twistCor_01_l&lf;p249&lf;(dp250&lf;g3&lf;(F-5.7155154111593384e-05&lf;F0.23929738046885052&lf;F-0.013684890989412526&lf;tp251&lf;sg5&lf;(F-0.22347730841758562&lf;F0.09633378358038591&lf;F0.16651206011033537&lf;tp252&lf;sg7&lf;(F0.9999999999999999&lf;F1.0&lf;F0.9999999999999999&lf;tp253&lf;ssVthigh_bck_lwr_r&lf;p254&lf;(dp255&lf;g3&lf;(F-2.5444437451708134e-14&lf;F0.0&lf;F0.0&lf;tp256&lf;sg5&lf;(F5.844458568800249&lf;F-10.021941949068122&lf;F-1.8531909603709966&lf;tp257&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp258&lf;ssVupperarm_in_r&lf;p259&lf;(dp260&lf;g3&lf;(F-4.0183257565534246e-10&lf;F-4.683048712998474e-10&lf;F-3.3057467384465757e-10&lf;tp261&lf;sg5&lf;(F-5.2225564187980495&lf;F1.2711843167447734&lf;F3.8834782317378966&lf;tp262&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp263&lf;ssVlowerarm_fwd_r&lf;p264&lf;(dp265&lf;g3&lf;(F2.5444437451708134e-14&lf;F0.0&lf;F0.0&lf;tp266&lf;sg5&lf;(F-1.3920519520020491&lf;F2.2598182327670386&lf;F-0.5667739685873983&lf;tp267&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp268&lf;ssVlowerarm_out_r&lf;p269&lf;(dp270&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp271&lf;sg5&lf;(F-0.6170078789895399&lf;F-1.280766963895374&lf;F-2.1175791102128443&lf;tp272&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp273&lf;ssVankle_bck_r&lf;p274&lf;(dp275&lf;g3&lf;(F-1.8803787149980595e-14&lf;F3.9756933518293936e-15&lf;F-1.1877383888590321e-14&lf;tp276&lf;sg5&lf;(F-0.6507357602611608&lf;F-3.799005098240129&lf;F0.5425226013393445&lf;tp277&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp278&lf;ssVupperarm_bck_r&lf;p279&lf;(dp280&lf;g3&lf;(F-1.631032968523696e-08&lf;F-1.793436243543718e-08&lf;F6.623600521598822e-09&lf;tp281&lf;sg5&lf;(F-1.613973273688245&lf;F-5.899539327146831&lf;F-0.6838130492740362&lf;tp282&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp283&lf;ssVupperarm_bck_l&lf;p284&lf;(dp285&lf;g3&lf;(F-1.631031696301823e-08&lf;F-1.7934362477562443e-08&lf;F6.623600333685193e-09&lf;tp286&lf;sg5&lf;(F1.453320472410553&lf;F5.922331709928633&lf;F0.5193119630590957&lf;tp287&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp288&lf;ssVankle_bck_l&lf;p289&lf;(dp290&lf;g3&lf;(F4.821925894076175e-14&lf;F4.709965190659037e-08&lf;F7.032007635867419e-15&lf;tp291&lf;sg5&lf;(F0.7196897359995171&lf;F3.149843256350702&lf;F-0.1865279959374142&lf;tp292&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp293&lf;ssVlowerarm_fwd_l&lf;p294&lf;(dp295&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp296&lf;sg5&lf;(F1.3286701233338505&lf;F-2.523348037160204&lf;F0.4477197471650243&lf;tp297&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp298&lf;ssVmiddle_01_r&lf;p299&lf;(dp300&lf;g3&lf;(F-2.3854160110976384e-15&lf;F5.665363026356887e-15&lf;F-1.8884543421189624e-14&lf;tp301&lf;sg5&lf;(F-5.182307875635303&lf;F1.2473883217012371e-05&lf;F4.441538994015559e-05&lf;tp302&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp303&lf;ssVcalf_twist_02_l&lf;p304&lf;(dp305&lf;g3&lf;(F-1.2813263656616176e-15&lf;F1.2695893467522358e-18&lf;F-7.368169808403853e-17&lf;tp306&lf;sg5&lf;(F-12.958133997348298&lf;F-0.13437907398599447&lf;F0.11553495636094979&lf;tp307&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp308&lf;ssVlowerarm_twist_01_r&lf;p309&lf;(dp310&lf;g3&lf;(F-1.6743337480238544e-18&lf;F-1.428764306601375e-15&lf;F-1.2424050610833987e-17&lf;tp311&lf;sg5&lf;(F-15.709295982891412&lf;F0.0653041102279559&lf;F0.03263931215387572&lf;tp312&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp313&lf;ssVspine_04_latissimus_r&lf;p314&lf;(dp315&lf;g3&lf;(F-2.1200329155989934e-09&lf;F-2.0738501467058974e-08&lf;F9.430233311509153e-09&lf;tp316&lf;sg5&lf;(F-7.8201672809249345&lf;F3.0343685369015496&lf;F11.943057680552283&lf;tp317&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp318&lf;ssVspine_04_latissimus_l&lf;p319&lf;(dp320&lf;g3&lf;(F5.5057566312661764e-09&lf;F1.6766699921248585e-08&lf;F7.858422271679882e-09&lf;tp321&lf;sg5&lf;(F-7.810114020338162&lf;F3.0346754472192004&lf;F-11.935268925526474&lf;tp322&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp323&lf;ssVlowerarm_twist_01_l&lf;p324&lf;(dp325&lf;g3&lf;(F2.0627063804459095e-16&lf;F1.0062276329226985e-15&lf;F-1.2320628108123222e-17&lf;tp326&lf;sg5&lf;(F15.709011726426546&lf;F-0.06554904986637666&lf;F-0.03229837036940353&lf;tp327&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp328&lf;ssVcalf_twist_02_r&lf;p329&lf;(dp330&lf;g3&lf;(F-1.0969433948738022e-15&lf;F-1.1337156085782787e-17&lf;F-7.38058228600257e-17&lf;tp331&lf;sg5&lf;(F12.958172261711361&lf;F0.13438813926951898&lf;F-0.11546192380812315&lf;tp332&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp333&lf;ssVmiddle_01_l&lf;p334&lf;(dp335&lf;g3&lf;(F-1.5902773407317584e-15&lf;F-2.087239009710433e-15&lf;F2.8966260080954173e-32&lf;tp336&lf;sg5&lf;(F5.182243307643894&lf;F4.263256414560601e-14&lf;F-2.4868995751603507e-14&lf;tp337&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp338&lf;ssVcalf_knee_r&lf;p339&lf;(dp340&lf;g3&lf;(F-9.373939481779854e-15&lf;F-6.433371167720549e-09&lf;F1.1927080056014457e-14&lf;tp341&lf;sg5&lf;(F-0.04499406685729923&lf;F4.304237479045141&lf;F-0.11863616250326992&lf;tp342&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp343&lf;ssVclavicle_scap_r&lf;p344&lf;(dp345&lf;g3&lf;(F-7.2333774824279544e-12&lf;F-5.447464020267169e-09&lf;F2.099599539267737e-08&lf;tp346&lf;sg5&lf;(F-8.497017971073436&lf;F-5.6879741751418536&lf;F2.203234247844506&lf;tp347&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp348&lf;ssVclavicle_pec_l&lf;p349&lf;(dp350&lf;g3&lf;(F5.934906090541604e-09&lf;F-4.328964219255888e-09&lf;F-6.3721458878959175e-09&lf;tp351&lf;sg5&lf;(F-7.859747892191649&lf;F-9.235935633950017&lf;F-9.161680251024567&lf;tp352&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp353&lf;ssVcalf_knee_l&lf;p354&lf;(dp355&lf;g3&lf;(F1.1771779534322956e-14&lf;F-6.4333697762278764e-09&lf;F-6.9574633663623315e-15&lf;tp356&lf;sg5&lf;(F0.04207871964077725&lf;F-4.30754958067433&lf;F0.1160674853346002&lf;tp357&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp358&lf;ssVclavicle_scap_l&lf;p359&lf;(dp360&lf;g3&lf;(F-2.0063835062731552e-11&lf;F-8.936741229731349e-09&lf;F2.0529569357960723e-08&lf;tp361&lf;sg5&lf;(F8.269065264677947&lf;F5.697957688764333&lf;F-2.2342434592936797&lf;tp362&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp363&lf;ssVfoot_r&lf;p364&lf;(dp365&lf;g3&lf;(F3.4942617350063054e-18&lf;F2.2716118211881422e-36&lf;F-7.449571893381498e-17&lf;tp366&lf;sg5&lf;(F38.8683479675059&lf;F4.218847493575595e-15&lf;F-1.7763568394002505e-15&lf;tp367&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp368&lf;ssVupperarm_in_l&lf;p369&lf;(dp370&lf;g3&lf;(F-4.0185802536309686e-10&lf;F-4.683430379560251e-10&lf;F-3.305746816879782e-10&lf;tp371&lf;sg5&lf;(F5.574552996471354&lf;F-1.4832878115397845&lf;F-4.299906325106548&lf;tp372&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp373&lf;ssVlowerarm_out_l&lf;p374&lf;(dp375&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp376&lf;sg5&lf;(F0.5829331297469622&lf;F0.9090844050165288&lf;F1.8502389625441538&lf;tp377&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp378&lf;ssVthumb_02_l&lf;p379&lf;(dp380&lf;g3&lf;(F6.0918383961604464e-33&lf;F7.299124513124281e-17&lf;F9.563794368712256e-15&lf;tp381&lf;sg5&lf;(F4.316671956003702&lf;F0.0&lf;F3.552713678800501e-14&lf;tp382&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp383&lf;ssVankle_fwd_l&lf;p384&lf;(dp385&lf;g3&lf;(F2.4532823392578864e-14&lf;F-3.8486528438178006e-08&lf;F-7.156248041532465e-15&lf;tp386&lf;sg5&lf;(F1.2908153718236504&lf;F-3.768957865912955&lf;F-0.07680916272578031&lf;tp387&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp388&lf;ssVthumb_02_r&lf;p389&lf;(dp390&lf;g3&lf;(F3.975693351829394e-16&lf;F-1.584065319869525e-15&lf;F1.2723383479765737e-14&lf;tp391&lf;sg5&lf;(F-4.316661343859899&lf;F-2.3635732418370026e-05&lf;F-4.3211523554020914e-05&lf;tp392&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp393&lf;ssVindex_metacarpal_l&lf;p394&lf;(dp395&lf;g3&lf;(F-4.708711813572941e-15&lf;F9.939233379573501e-17&lf;F2.4848083448933726e-15&lf;tp396&lf;sg5&lf;(F3.4579468886887668&lf;F0.010562601629231949&lf;F-1.5292670130053594&lf;tp397&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp398&lf;ssVlowerarm_in_l&lf;p399&lf;(dp400&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp401&lf;sg5&lf;(F1.3306420256329048&lf;F0.24547389055802427&lf;F-2.7035021548269356&lf;tp402&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp403&lf;ssVlowerarm_twist_02_r&lf;p404&lf;(dp405&lf;g3&lf;(F-6.721600698588516e-18&lf;F-5.715057220481254e-15&lf;F-3.2583346120769835e-23&lf;tp406&lf;sg5&lf;(F-7.8497274814736855&lf;F0.10257835424635431&lf;F0.03918630802392897&lf;tp407&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp408&lf;ssVcalf_twist_01_l&lf;p409&lf;(dp410&lf;g3&lf;(F-8.492997272584769e-20&lf;F-1.1848489498583718e-23&lf;F-7.454422664982217e-17&lf;tp411&lf;sg5&lf;(F-25.92498684096225&lf;F-0.08807316453161773&lf;F0.10071990957672128&lf;tp412&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp413&lf;ssVupperarm_r&lf;p414&lf;(dp415&lf;g3&lf;(F-1.0933156717530838e-15&lf;F1.2424041724466842e-17&lf;F-1.987846675914698e-15&lf;tp416&lf;sg5&lf;(F-14.246069020159924&lf;F-3.984049673277923e-06&lf;F-0.00038072217765261485&lf;tp417&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp418&lf;ssVcalf_twistCor_02_r&lf;p419&lf;(dp420&lf;g3&lf;(F7.504981906187296e-13&lf;F5.256448295143624e-18&lf;F5.706716964926347e-10&lf;tp421&lf;sg5&lf;(F-1.2789769243681803e-12&lf;F2.353672812205332e-14&lf;F0.0&lf;tp422&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp423&lf;ssVthigh_bck_l&lf;p424&lf;(dp425&lf;g3&lf;(F-3.3281960298549105e-10&lf;F7.492530405354367e-09&lf;F-1.1907707579416888e-10&lf;tp426&lf;sg5&lf;(F3.5690050994295888&lf;F10.405499415408876&lf;F2.1497621859770657&lf;tp427&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp428&lf;ssVindex_02_l&lf;p429&lf;(dp430&lf;g3&lf;(F-3.727212517340059e-17&lf;F3.8825130388958945e-18&lf;F-7.279711947929802e-20&lf;tp431&lf;sg5&lf;(F4.25400585260217&lf;F-2.842170943040401e-14&lf;F-7.105427357601002e-15&lf;tp432&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp433&lf;ssVthigh_bck_r&lf;p434&lf;(dp435&lf;g3&lf;(F4.547938750138404e-10&lf;F1.2473182494297477e-09&lf;F1.8459230383879978e-10&lf;tp436&lf;sg5&lf;(F-3.570662230365997&lf;F-10.412042020771928&lf;F-2.17580140441963&lf;tp437&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp438&lf;ssVindex_02_r&lf;p439&lf;(dp440&lf;g3&lf;(F-3.727212517340059e-17&lf;F3.1060104311167156e-18&lf;F-8.492997272584769e-20&lf;tp441&lf;sg5&lf;(F-4.254001839627506&lf;F2.1309285713755344e-05&lf;F8.939731338131196e-05&lf;tp442&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp443&lf;ssVneck_02&lf;p444&lf;(dp445&lf;g3&lf;(F-2.426570649309934e-19&lf;F-3.727212517340059e-17&lf;F2.84363747966008e-22&lf;tp446&lf;sg5&lf;(F5.450919182046334&lf;F1.4210854715202004e-14&lf;F1.3086753902769033e-14&lf;tp447&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp448&lf;ssVneck_01&lf;p449&lf;(dp450&lf;g3&lf;(F3.1060104311167156e-18&lf;F-1.941256519447947e-18&lf;F-9.541663760026802e-15&lf;tp451&lf;sg5&lf;(F11.10442132885018&lf;F1.4210854715202004e-14&lf;F1.2705114738054135e-14&lf;tp452&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp453&lf;ssVcalf_twist_01_r&lf;p454&lf;(dp455&lf;g3&lf;(F-6.066426623274834e-20&lf;F-1.2424077269935359e-17&lf;F-7.454424442255643e-17&lf;tp456&lf;sg5&lf;(F25.925076009789063&lf;F0.08808086210734589&lf;F-0.10067777201496497&lf;tp457&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp458&lf;ssVupperarm_l&lf;p459&lf;(dp460&lf;g3&lf;(F-3.578124016646457e-15&lf;F-7.454425034680119e-17&lf;F-3.975693351829396e-16&lf;tp461&lf;sg5&lf;(F14.246126391528867&lf;F3.9968028886505635e-15&lf;F-2.842170943040401e-14&lf;tp462&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp463&lf;ssVlowerarm_twist_02_l&lf;p464&lf;(dp465&lf;g3&lf;(F8.251007514582334e-16&lf;F4.01248648404208e-15&lf;F-4.9282568712817974e-17&lf;tp466&lf;sg5&lf;(F7.849649281922929&lf;F-0.10263520133286619&lf;F-0.039097261663499694&lf;tp467&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp468&lf;ssVhead&lf;p469&lf;(dp470&lf;g3&lf;(F-4.6590156466750695e-18&lf;F5.056973233161904e-17&lf;F1.113193759360567e-14&lf;tp471&lf;sg5&lf;(F5.366716115241388&lf;F-7.105427357601002e-15&lf;F3.309852392163748e-14&lf;tp472&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp473&lf;ssVthigh_twist_02_l&lf;p474&lf;(dp475&lf;g3&lf;(F-9.220968467377749e-16&lf;F-4.926728712348722e-17&lf;F2.279365015779531e-18&lf;tp476&lf;sg5&lf;(F-28.47903032534198&lf;F0.17386366818659837&lf;F0.0056687508871462455&lf;tp477&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp478&lf;ssVthigh_fwd_lwr_r&lf;p479&lf;(dp480&lf;g3&lf;(F-2.5444437451708134e-14&lf;F0.0&lf;F0.0&lf;tp481&lf;sg5&lf;(F-0.4782982245318834&lf;F6.809431755534755&lf;F-0.7662289287193396&lf;tp482&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp483&lf;ssVring_metacarpal_r&lf;p484&lf;(dp485&lf;g3&lf;(F-6.957463365701443e-16&lf;F4.969616689786745e-16&lf;F-3.1805546814635168e-15&lf;tp486&lf;sg5&lf;(F-2.804780390195006&lf;F-0.22716314349776212&lf;F-1.059677422149715&lf;tp487&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp488&lf;ssVpinky_03_l&lf;p489&lf;(dp490&lf;g3&lf;(F-1.1647539116687691e-18&lf;F3.7344922292879887e-17&lf;F-2.385414873642646e-15&lf;tp491&lf;sg5&lf;(F1.6696361810729314&lf;F-4.973799150320701e-14&lf;F7.105427357601002e-15&lf;tp492&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp493&lf;ssVlowerarm_r&lf;p494&lf;(dp495&lf;g3&lf;(F-1.1181637552020177e-16&lf;F1.2734642767578534e-16&lf;F1.2132853246549658e-19&lf;tp496&lf;sg5&lf;(F-25.246899842795102&lf;F2.8223703232299613e-05&lf;F-0.0003521030096464983&lf;tp497&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp498&lf;ssVpinky_01_r&lf;p499&lf;(dp500&lf;g3&lf;(F1.7393658414253607e-16&lf;F-1.8636062586700284e-17&lf;F-6.359944609015365e-15&lf;tp501&lf;sg5&lf;(F-4.397007478658836&lf;F-4.320010107505823e-05&lf;F-2.742241442632576e-05&lf;tp502&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp503&lf;ssVthigh_twist_01_r&lf;p504&lf;(dp505&lf;g3&lf;(F-2.4265706493099345e-18&lf;F-4.9695017594386094e-17&lf;F1.2430155545048131e-17&lf;tp506&lf;sg5&lf;(F14.287114027195173&lf;F-0.2111677104455696&lf;F-0.0656104539200193&lf;tp507&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp508&lf;ssVclavicle_pec_r&lf;p509&lf;(dp510&lf;g3&lf;(F9.293300890747829e-09&lf;F-5.707670764203161e-09&lf;F-6.492766834151767e-09&lf;tp511&lf;sg5&lf;(F-7.865587754738414&lf;F-9.462906268526464&lf;F9.48653599414189&lf;tp512&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp513&lf;ssVpinky_01_l&lf;p514&lf;(dp515&lf;g3&lf;(F2.4848083448933823e-17&lf;F-1.0094533901129326e-15&lf;F-1.113038837990675e-14&lf;tp516&lf;sg5&lf;(F4.3969685310509234&lf;F-1.4210854715202004e-14&lf;F-6.039613253960852e-14&lf;tp517&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp518&lf;ssVthigh_twist_01_l&lf;p519&lf;(dp520&lf;g3&lf;(F-2.4209895368165213e-16&lf;F-4.9583558853672917e-17&lf;F6.810511763785889e-18&lf;tp521&lf;sg5&lf;(F-14.287183632223432&lf;F0.21116362092060248&lf;F0.06561795810833893&lf;tp522&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp523&lf;ssVlowerarm_l&lf;p524&lf;(dp525&lf;g3&lf;(F-7.454425034680117e-17&lf;F8.386228164015132e-17&lf;F7.279711947929797e-20&lf;tp526&lf;sg5&lf;(F25.247300689778797&lf;F-5.329070518200751e-15&lf;F-4.263256414560601e-14&lf;tp527&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp528&lf;ssVpinky_03_r&lf;p529&lf;(dp530&lf;g3&lf;(F3.8825130388958945e-19&lf;F1.2436174577713411e-17&lf;F3.791516639546773e-22&lf;tp531&lf;sg5&lf;(F-1.669605250518572&lf;F-8.182164268788483e-05&lf;F-2.731165606206787e-05&lf;tp532&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp533&lf;ssVthigh_fwd_lwr_l&lf;p534&lf;(dp535&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp536&lf;sg5&lf;(F0.39812935021383566&lf;F-7.309934383244445&lf;F0.6883540989376549&lf;tp537&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp538&lf;ssVring_metacarpal_l&lf;p539&lf;(dp540&lf;g3&lf;(F1.2827915178708273e-31&lf;F-6.1623246953355635e-15&lf;F-2.3854160110976376e-15&lf;tp541&lf;sg5&lf;(F2.8047746330326007&lf;F0.22714913893837263&lf;F1.0596930230372124&lf;tp542&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp543&lf;ssVlowerarm_bck_r&lf;p544&lf;(dp545&lf;g3&lf;(F2.5444437451708134e-14&lf;F1.821991149690184e-07&lf;F7.600179899673703e-23&lf;tp546&lf;sg5&lf;(F-1.5862762297890214&lf;F-3.40166381371057&lf;F0.8892462340683522&lf;tp547&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp548&lf;ssVlowerarm_correctiveRoot_l&lf;p549&lf;(dp550&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp551&lf;sg5&lf;(F-3.552713678800501e-14&lf;F0.0&lf;F-5.684341886080802e-14&lf;tp552&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp553&lf;ssVpinky_02_l&lf;p554&lf;(dp555&lf;g3&lf;(F1.8636062586700294e-17&lf;F-7.76502607779179e-18&lf;F1.2722218725854067e-14&lf;tp556&lf;sg5&lf;(F2.6964561558300915&lf;F2.842170943040401e-14&lf;F3.552713678800501e-15&lf;tp557&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp558&lf;ssVcalf_twistCor_02_l&lf;p559&lf;(dp560&lf;g3&lf;(F7.786203609148045e-13&lf;F2.2381283947562397e-18&lf;F5.706716775610707e-10&lf;tp561&lf;sg5&lf;(F1.2931877790833823e-12&lf;F-2.3092638912203256e-14&lf;F-5.329070518200751e-15&lf;tp562&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp563&lf;ssVlowerarm_correctiveRoot_r&lf;p564&lf;(dp565&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp566&lf;sg5&lf;(F3.552713678800501e-14&lf;F0.0&lf;F-1.4210854715202004e-14&lf;tp567&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp568&lf;ssVpelvis&lf;p569&lf;(dp570&lf;g3&lf;(F-8.746525374024675e-15&lf;F1.9369081048443843e-14&lf;F-8.348956038841735e-15&lf;tp571&lf;sg5&lf;(F0.00010491341864091094&lf;F-2.2175793100900107&lf;F91.97877241348029&lf;tp572&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp573&lf;ssVlowerarm_bck_l&lf;p574&lf;(dp575&lf;g3&lf;(F0.0&lf;F1.821991149690184e-07&lf;F0.0&lf;tp576&lf;sg5&lf;(F1.3859786452671514&lf;F3.3413824665105096&lf;F-1.1761296577728615&lf;tp577&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp578&lf;ssVthigh_in_r&lf;p579&lf;(dp580&lf;g3&lf;(F-1.799777415242335e-11&lf;F1.7811260677643742e-08&lf;F-1.1301263803149778e-08&lf;tp581&lf;sg5&lf;(F9.68590753589298&lf;F0.7278592457790922&lf;F-8.591039347640994&lf;tp582&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp583&lf;ssVindex_01_l&lf;p584&lf;(dp585&lf;g3&lf;(F5.367186024969684e-15&lf;F-1.5902773407317588e-15&lf;F9.442271710594815e-15&lf;tp586&lf;sg5&lf;(F5.011096571254832&lf;F-4.263256414560601e-14&lf;F-3.552713678800501e-14&lf;tp587&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp588&lf;ssVupperarm_tricep_r&lf;p589&lf;(dp590&lf;g3&lf;(F3.7924387363587275e-14&lf;F6.075963094069785e-09&lf;F-6.5598940285076466e-15&lf;tp591&lf;sg5&lf;(F-0.2668024100145914&lf;F-4.4614700865646535&lf;F-0.06149644816963473&lf;tp592&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp593&lf;ssVthigh_twistCor_02_l&lf;p594&lf;(dp595&lf;g3&lf;(F-9.700266400628902e-13&lf;F4.420414151584964e-17&lf;F-1.9859764446290498e-10&lf;tp596&lf;sg5&lf;(F6.039613253960852e-13&lf;F1.8474111129762605e-13&lf;F-7.105427357601002e-15&lf;tp597&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp598&lf;ssVindex_03_r&lf;p599&lf;(dp600&lf;g3&lf;(F-4.549819967456126e-21&lf;F1.849846171874749e-40&lf;F4.659014165613886e-18&lf;tp601&lf;sg5&lf;(F-2.317379606058509&lf;F-3.482151544176304e-05&lf;F-1.4542190249322573e-05&lf;tp602&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp603&lf;ssVwrist_outer_r&lf;p604&lf;(dp605&lf;g3&lf;(F-2.5456861493432594e-14&lf;F-3.379339349054985e-15&lf;F3.1805546814635168e-15&lf;tp606&lf;sg5&lf;(F-0.03274741621405042&lf;F1.6563393407212317&lf;F0.025852490706835596&lf;tp607&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp608&lf;ssVwrist_outer_l&lf;p609&lf;(dp610&lf;g3&lf;(F-5.783391422739323e-14&lf;F9.34287937679908e-15&lf;F4.373262687012329e-15&lf;tp611&lf;sg5&lf;(F-0.03377910590610611&lf;F-1.4964501513575073&lf;F-0.18007976338952147&lf;tp612&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp613&lf;ssVpinky_metacarpal_r&lf;p614&lf;(dp615&lf;g3&lf;(F1.3914926731402885e-14&lf;F-1.5902773407317588e-15&lf;F1.5902773407317582e-15&lf;tp616&lf;sg5&lf;(F-2.558789946909897&lf;F-0.5003207482651391&lf;F-2.0640128067549632&lf;tp617&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp618&lf;ssVupperarm_tricep_l&lf;p619&lf;(dp620&lf;g3&lf;(F1.2424042072290844e-17&lf;F6.0759658770551315e-09&lf;F6.5598940305191614e-15&lf;tp621&lf;sg5&lf;(F0.11027252258691078&lf;F4.4684969383725015&lf;F-0.13297608266564964&lf;tp622&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp623&lf;ssVthigh_twistCor_02_r&lf;p624&lf;(dp625&lf;g3&lf;(F-9.971666437558038e-13&lf;F7.130715464304176e-18&lf;F-1.9859764570803904e-10&lf;tp626&lf;sg5&lf;(F-6.252776074688882e-13&lf;F-1.829647544582258e-13&lf;F7.105427357601002e-15&lf;tp627&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp628&lf;ssVindex_01_r&lf;p629&lf;(dp630&lf;g3&lf;(F-1.987846675914698e-16&lf;F-1.7241821476758432e-34&lf;F-9.93923337957349e-17&lf;tp631&lf;sg5&lf;(F-5.011125795495047&lf;F1.255617310391699e-05&lf;F-3.957483904848402e-05&lf;tp632&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp633&lf;ssVthigh_in_l&lf;p634&lf;(dp635&lf;g3&lf;(F7.81972953015046e-10&lf;F1.783717115280913e-08&lf;F2.898665566940874e-09&lf;tp636&lf;sg5&lf;(F-9.624813217005851&lf;F-0.7872489589315337&lf;F8.569114048741081&lf;tp637&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp638&lf;ssVmiddle_metacarpal_l&lf;p639&lf;(dp640&lf;g3&lf;(F5.168401357378214e-15&lf;F4.721135855297406e-15&lf;F6.162324695335562e-15&lf;tp641&lf;sg5&lf;(F2.9473948030703525&lf;F-1.4210854715202004e-14&lf;F2.4868995751603507e-14&lf;tp642&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp643&lf;ssVring_01_r&lf;p644&lf;(dp645&lf;g3&lf;(F3.7272125173400585e-16&lf;F-9.939233379573484e-17&lf;F-1.90833280887811e-14&lf;tp646&lf;sg5&lf;(F-4.653074699202811&lf;F-2.4532645610975123e-05&lf;F5.51067713736586e-05&lf;tp647&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp648&lf;ssVupperarm_correctiveRoot_r&lf;p649&lf;(dp650&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp651&lf;sg5&lf;(F1.4210854715202004e-14&lf;F-4.440892098500626e-15&lf;F2.842170943040401e-14&lf;tp652&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp653&lf;ssVcalf_kneeBack_l&lf;p654&lf;(dp655&lf;g3&lf;(F8.63470899849898e-15&lf;F-9.039156283186074e-11&lf;F6.957463365694632e-15&lf;tp656&lf;sg5&lf;(F0.2417278422375233&lf;F4.878562416091983&lf;F0.29022114718005376&lf;tp657&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp658&lf;ssVcalf_kneeBack_r&lf;p659&lf;(dp660&lf;g3&lf;(F-2.35124989635446e-14&lf;F-9.039096647785796e-11&lf;F-1.1330726052695231e-14&lf;tp661&lf;sg5&lf;(F-0.2449349235955367&lf;F-4.883272954147831&lf;F-0.3136576664737962&lf;tp662&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp663&lf;ssVring_01_l&lf;p664&lf;(dp665&lf;g3&lf;(F3.354491265606054e-16&lf;F-3.975693351829396e-16&lf;F-1.9084881093996662e-14&lf;tp666&lf;sg5&lf;(F4.653086398712624&lf;F4.263256414560601e-14&lf;F-1.0658141036401503e-14&lf;tp667&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp668&lf;ssVupperarm_correctiveRoot_l&lf;p669&lf;(dp670&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp671&lf;sg5&lf;(F2.842170943040401e-14&lf;F0.0&lf;F1.4210854715202004e-14&lf;tp672&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp673&lf;ssVmiddle_metacarpal_r&lf;p674&lf;(dp675&lf;g3&lf;(F2.5842006786891076e-15&lf;F3.0811623476677818e-15&lf;F4.721135855297408e-15&lf;tp676&lf;sg5&lf;(F-2.9473407769463975&lf;F-3.6594834583070224e-05&lf;F5.6656297143575785e-05&lf;tp677&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp678&lf;ssVthigh_twist_02_r&lf;p679&lf;(dp680&lf;g3&lf;(F7.939739164542105e-16&lf;F-5.006542507309081e-17&lf;F1.0461552711837454e-17&lf;tp681&lf;sg5&lf;(F28.47895122626658&lf;F-0.17387919837305565&lf;F-0.005720635786287787&lf;tp682&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp683&lf;ssVring_03_r&lf;p684&lf;(dp685&lf;g3&lf;(F-3.1060104311167156e-18&lf;F-1.9897879324341458e-16&lf;F-4.2464986362923846e-20&lf;tp686&lf;sg5&lf;(F-3.0146802324974686&lf;F-4.5867904766794254e-05&lf;F6.070594956142372e-05&lf;tp687&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp688&lf;ssVupperarm_fwd_r&lf;p689&lf;(dp690&lf;g3&lf;(F2.5414619751459016e-11&lf;F-1.8553765734468644e-11&lf;F6.818250487293744e-10&lf;tp691&lf;sg5&lf;(F-3.1383986238786576&lf;F6.085192473500279&lf;F0.3701752564989107&lf;tp692&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp693&lf;ssVcalf_r&lf;p694&lf;(dp695&lf;g3&lf;(F7.765026077791785e-19&lf;F-7.453211749355463e-17&lf;F5.963577942910489e-16&lf;tp696&lf;sg5&lf;(F42.6392716823317&lf;F-1.7763568394002505e-15&lf;F1.2434497875801753e-14&lf;tp697&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp698&lf;ssVupperarm_twistCor_02_r&lf;p699&lf;(dp700&lf;g3&lf;(F-5.7155154104789345e-05&lf;F0.2392973804678591&lf;F-0.01368489098937418&lf;tp701&lf;sg5&lf;(F-4.263256414560601e-14&lf;F7.105427357601002e-15&lf;F5.684341886080802e-14&lf;tp702&lf;sg7&lf;(F0.9999999999999997&lf;F1.0&lf;F0.9999999999999998&lf;tp703&lf;ssVmiddle_02_r&lf;p704&lf;(dp705&lf;g3&lf;(F-7.45442503468011e-17&lf;F4.080521203879585e-16&lf;F2.2263640113179687e-14&lf;tp706&lf;sg5&lf;(F-4.584910207198277&lf;F-3.1438676543871225e-05&lf;F-3.066261484363508e-05&lf;tp707&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp708&lf;ssVpinky_metacarpal_l&lf;p709&lf;(dp710&lf;g3&lf;(F-3.180554681463515e-15&lf;F1.3318572728628474e-14&lf;F3.180554681463515e-15&lf;tp711&lf;sg5&lf;(F2.558828022670248&lf;F0.5003618244700903&lf;F2.064049345253842&lf;tp712&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp713&lf;ssVthigh_r&lf;p714&lf;(dp715&lf;g3&lf;(F-3.620782510119271e-33&lf;F-2.3854160110976376e-15&lf;F1.7393658414253607e-16&lf;tp716&lf;sg5&lf;(F-3.012337184531063&lf;F-0.06336612202783964&lf;F10.395765560224552&lf;tp717&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp718&lf;ssVmiddle_02_l&lf;p719&lf;(dp720&lf;g3&lf;(F-8.696829207126799e-17&lf;F4.158171464657503e-16&lf;F1.9082854907504484e-14&lf;tp721&lf;sg5&lf;(F4.58496782082122&lf;F-1.4210854715202004e-14&lf;F-2.842170943040401e-14&lf;tp722&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp723&lf;ssVpinky_02_r&lf;p724&lf;(dp725&lf;g3&lf;(F1.2424041724466862e-17&lf;F-7.765026077791789e-17&lf;F-9.706282597239736e-20&lf;tp726&lf;sg5&lf;(F-2.696477533033118&lf;F3.068206100920179e-05&lf;F5.3911045487353704e-05&lf;tp727&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp728&lf;ssVupperarm_twistCor_02_l&lf;p729&lf;(dp730&lf;g3&lf;(F-5.715515410377221e-05&lf;F0.23929738046881302&lf;F-0.013684890989438625&lf;tp731&lf;sg5&lf;(F8.526512829121202e-14&lf;F7.105427357601002e-15&lf;F-4.263256414560601e-14&lf;tp732&lf;sg7&lf;(F0.9999999999999999&lf;F1.0&lf;F0.9999999999999999&lf;tp733&lf;ssVcalf_l&lf;p734&lf;(dp735&lf;g3&lf;(F2.717759127227125e-18&lf;F-7.451998464030805e-17&lf;F5.963555193810652e-16&lf;tp736&lf;sg5&lf;(F-42.63936190162267&lf;F-7.829074149423576e-06&lf;F-4.4586872256502375e-05&lf;tp737&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp738&lf;ssVring_03_l&lf;p739&lf;(dp740&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp741&lf;sg5&lf;(F3.0147511882823608&lf;F-4.973799150320701e-14&lf;F-1.0658141036401503e-14&lf;tp742&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp743&lf;ssVupperarm_fwd_l&lf;p744&lf;(dp745&lf;g3&lf;(F2.5408755603765092e-11&lf;F-1.8548994902446404e-11&lf;F6.818210730360224e-10&lf;tp746&lf;sg5&lf;(F2.998532437400442&lf;F-6.078429423751953&lf;F-0.5550002675375794&lf;tp747&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp748&lf;ss.");
	setAttr ".fbxID" 2;
createNode joint -n "pelvis" -p "|UE5Simple|root";
	rename -uid "F0BC817E-4852-8045-3192-54BBEF52E7D0";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -3.4314998759166215e-17 -2.2808661460876465 95.896781921386719 ;
	setAttr ".r" -type "double3" -90 -86.366893050032431 90 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0 0.99799000000000004 -0.063367199999999999 0 0 -0.063367199999999999 -0.99799000000000004 0
		 -1 0 0 0 0 95.896782000000002 2.2808660000000001 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "spine_01" -p "|UE5Simple|root|pelvis";
	rename -uid "C036209C-41BD-DF6C-0F05-E2BD57D5CAB8";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 3.6770534515381001 7.1054273576010019e-15 -4.6633694517662434e-16 ;
	setAttr ".r" -type "double3" -4.8675251569697186e-17 2.170350449737156e-16 -14.457321828304911 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0 0.98220799999999997 0.18779599999999999 0 0 0.18779599999999999 -0.98220799999999997 0
		 -1 0 0 0 0 99.566445999999999 2.0478619999999998 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "spine_02" -p "|UE5Simple|root|pelvis|spine_01";
	rename -uid "8B1CF382-4C28-D802-BF3E-6B8CF7E8BAD6";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 6.7950572967529155 1.7763568394002505e-14 1.8559423937125917e-16 ;
	setAttr ".r" -type "double3" -8.746765652515045e-18 2.1960301960102212e-16 3.4644695084247532 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0 0.991761 0.12809899999999999 0 0 0.12809899999999999 -0.991761 0
		 -1 0 0 0 0 106.240605 3.3239489999999998 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "spine_03" -p "|UE5Simple|root|pelvis|spine_01|spine_02";
	rename -uid "1EAAA945-4E4A-0AAB-00C4-7AAAC5F6F366";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 7.2382278442382812 -2.1316282072803006e-14 1.2292061026365006e-16 ;
	setAttr ".r" -type "double3" 7.7116540289205113e-17 2.1691490646910103e-16 10.946079405533537 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0 0.99804199999999998 -0.062552499999999997 0 0 -0.062552499999999997 -0.99804199999999998 0
		 -1 0 0 0 0 113.4192 4.2511580000000002 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "spine_04" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03";
	rename -uid "F30C47A1-40A7-2B31-AA0D-8C977DEFEB27";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 8.5238933563232422 -7.1054273576010019e-15 2.5229931328786566e-16 ;
	setAttr ".r" -type "double3" 0.00044952872062768446 -2.3921337171503338e-12 5.8669839318741532 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0 0.98641999999999996 -0.164244 0 -7.8457600000000009e-06 -0.164244 -0.98641999999999996 0
		 -1 1.2886200000000002e-06 7.7392099999999994e-06 0 0 121.926401 3.7179669999999998 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "spine_05" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04";
	rename -uid "9662AA61-4940-5063-E225-B789A4EC6C77";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "blendParent1" -ln "blendParent1" -dt "string";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 19.439800262451158 -1.7817309228007616e-07 8.1130192624775943e-13 ;
	setAttr ".r" -type "double3" -0.0004494978431558535 5.3458782907563942e-06 0.68138935939447021 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0 0.98439699999999997 -0.17596300000000001 0 0 -0.17596300000000001 -0.98439699999999997 0
		 -1 0 0 0 0 141.102204 0.52509700000000004 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".blendParent1" -type "string" "1.000000";
	setAttr ".fbxID" 5;
createNode joint -n "neck_01" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05";
	rename -uid "0903C7CC-4B69-1FBC-1583-AD832B7DD6F5";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 11.887765884399442 1.4210854715202004e-14 1.5994409771696148e-15 ;
	setAttr ".r" -type "double3" -5.3236884634818155e-16 4.0208541713194644e-15 -23.928404052334628 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0 0.97116100000000005 0.238427 0 0 0.238427 -0.97116100000000005 0
		 -1 0 0 0 0 152.80448200000001 -1.56671 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "neck_02" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|neck_01";
	rename -uid "68AEF8F3-41EE-A220-6E70-81A3E78D761B";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 5.1102595329284384 -6.3948846218409017e-14 -4.1190754660921805e-14 ;
	setAttr ".r" -type "double3" -9.7964785669111379e-05 1.7913575251998921e-14 1.9135286365136508 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0 0.97858000000000001 0.20586499999999999 0 1.7098199999999998e-06 0.20586499999999999 -0.97858000000000001 0
		 -1 3.5198699999999999e-07 -1.6731999999999999e-06 0 0 157.76736399999999 -0.34828799999999999 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "head" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|neck_01|neck_02";
	rename -uid "527FE168-4BD7-AC36-1BE2-FEAD4F7360D2";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 4.9129710197448446 -5.6843418860808015e-14 2.0180004314720307e-14 ;
	setAttr ".r" -type "double3" 9.5867333842692594e-05 -2.0167398412977789e-05 11.88016967271599 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 2.7642899999999999e-08 1 0 0 0 0 -1 0 -1 2.7642899999999999e-08 0 0
		 0 162.57510099999999 0.66312300000000002 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "clavicle_l" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05";
	rename -uid "FBBE6AAA-49A6-C73A-2440-538097FF6F11";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "blendParent1" -ln "blendParent1" -dt "string";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 5.5162687301636026 1.3147660493850672 -1.4279042482376099 ;
	setAttr ".r" -type "double3" 163.26358510455574 80.83122589010857 153.12438365112951 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 0.99999999999999944 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.98722299999999996 -0.15259 -0.045897899999999998 0
		 -0.0458859 0.00360181 -0.99894000000000005 0 0.15259300000000001 0.98828300000000002 -0.0034459299999999998 0
		 1.4279040000000001 146.301051 -1.739814 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".blendParent1" -type "string" "1.000000";
	setAttr ".fbxID" 5;
createNode joint -n "upperarm_l" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l";
	rename -uid "8A9AED61-42F5-9531-F464-F6BDFF83A832";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "blendParent1" -ln "blendParent1" -dt "string";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 17.809522628784183 1.9984014443252818e-14 8.5265128291212022e-14 ;
	setAttr ".r" -type "double3" -4.3373452619178403 46.029604216550808 -4.3585186559704923 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999967 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.57603400000000005 -0.81709100000000001 0.023413799999999999 0
		 -0.032592099999999999 -0.051578499999999999 -0.99813700000000005 0 0.81677599999999995 0.57419699999999996 -0.056341599999999999 0
		 19.009879000000002 143.58349999999999 -2.5572330000000001 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".blendParent1" -type "string" "1.000000";
	setAttr ".fbxID" 5;
createNode joint -n "lowerarm_l" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l";
	rename -uid "E96648CF-4E14-5B74-9FAB-B2AACC7E42E4";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 27.771139144897504 1.3322676295501878e-14 -1.1368683772161603e-13 ;
	setAttr ".r" -type "double3" -8.3489560388417335e-15 3.5781240166464568e-15 -38.978821942625935 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.46829799999999999 -0.60274399999999995 0.64606300000000005 0
		 0.33700799999999997 -0.55407300000000004 -0.76120200000000005 0 0.81677599999999995 0.57419699999999996 -0.056341599999999999 0
		 35.006988 120.89196200000001 -1.907006 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "lowerarm_twist_02_l" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l";
	rename -uid "34CBC9C0-478E-520D-3195-57BBB131C124";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 9.0836915969848633 -4.9737991503207013e-14 5.6843418860808015e-14 ;
	setAttr ".r" -type "double3" 1.2856768460267101 -1.727533123096282 1.9858280815512837 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999956 0.99999999999999967 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.50409899999999996 -0.603989 0.617317 0 0.33849099999999999 -0.51942200000000005 -0.78461800000000004 0
		 0.79454899999999995 0.60448199999999996 -0.057395399999999999 0 39.260859000000004 115.41682 3.961627 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "lowerarm_twist_01_l" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l";
	rename -uid "110CAB75-4D3A-A37F-59BD-D5B06A292B8E";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 18.167383193969734 -2.8421709430404007e-14 5.6843418860808015e-14 ;
	setAttr ".r" -type "double3" 1.2856768693497371 -1.7275255464775015 1.9858281662294912 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.50409899999999996 -0.60399000000000003 0.617317 0
		 0.33849099999999999 -0.51942200000000005 -0.78461800000000004 0 0.79454899999999995 0.60448100000000005 -0.057395300000000003 0
		 43.51473 109.941678 9.8302600000000009 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "hand_l" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l";
	rename -uid "54EA456F-406E-1BE3-1382-B6BF749E2EF2";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 27.251073837280281 -2.8421709430404007e-14 7.1054273576010019e-14 ;
	setAttr ".r" -type "double3" -67.770758746900071 1.4734707800079314 1.8489162697849657 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 0.99999999999999933 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.45776600000000001 -0.63486699999999996 0.62241000000000002 0
		 -0.645509 -0.71872800000000003 -0.258357 0 0.61136599999999997 -0.28350399999999998 -0.73882099999999995 0
		 47.768600999999997 104.466537 15.698893 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "index_metacarpal_l" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l";
	rename -uid "4BD4E4E2-4403-5CB0-F80E-15A84D2B6ECA";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 3.4445061683654821 -0.38468080759049883 -2.3793244361877477 ;
	setAttr ".r" -type "double3" 3.2877464546581607 7.3255016683865284 -0.60616237917610682 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.38282500000000003 -0.58596000000000004 0.71421000000000001 0
		 -0.60140300000000002 -0.744923 -0.28879899999999997 0 0.70125599999999999 -0.318969 -0.63757299999999995 0
		 48.139055999999997 103.230763 19.700068999999999 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "index_01_l" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|index_metacarpal_l";
	rename -uid "C0ACB278-4A35-232B-A3DC-C58EAE0C2285";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 5.8770980834960831 0.043181736022262385 0.24087569117546437 ;
	setAttr ".r" -type "double3" 1.2722218725854078e-14 -6.3611093629270335e-15 23.372999646513961 ;
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999967 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.11282499999999999 -0.833399 0.54103299999999999 0
		 -0.70392500000000002 -0.45133699999999999 -0.54843900000000001 0 0.70125599999999999 -0.318969 -0.63757299999999995 0
		 50.5319 99.678021999999999 23.731507000000001 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "index_02_l" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|index_metacarpal_l|index_01_l";
	rename -uid "9FBCDF89-491B-FAAB-A135-7F9A89B152E4";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 4.0799999237060334 1.4210854715202004e-14 -9.2370555648813024e-14 ;
	setAttr ".r" -type "double3" 1.2722218725854067e-14 -1.2722218725854067e-14 14.892568419110988 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.071878600000000001 -0.92140200000000005 0.38190600000000002 0
		 -0.70927700000000005 -0.22198599999999999 -0.66906600000000005 0 0.70125599999999999 -0.318969 -0.63757299999999995 0
		 50.992227 96.277754000000002 25.938921000000001 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "index_03_l" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|index_metacarpal_l|index_01_l|index_02_l";
	rename -uid "64FDBF07-454F-C156-1CC4-C79F9A4D2B62";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 2.5950000286102579 2.8421709430404007e-14 -2.4868995751603507e-14 ;
	setAttr ".r" -type "double3" 1.9083328088781113e-14 -1.9083328088781094e-14 12.516400997546961 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999933 0.99999999999999978 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.223884 -0.94761200000000001 0.22783100000000001 0
		 -0.67684200000000005 -0.0170253 -0.735931 0 0.70125599999999999 -0.318969 -0.63757299999999995 0
		 50.805701999999997 93.886717000000004 26.929967999999999 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "middle_metacarpal_l" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l";
	rename -uid "74928598-4FE3-6B18-EE57-7FB5B3A36A13";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 3.3758335113525355 -0.75357073545457354 -0.18286436796188532 ;
	setAttr ".r" -type "double3" -4.2725003027381483 -0.13075114456697293 -2.3183915821069561 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1.0000000000000002 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.484898 -0.60591799999999996 0.630664 0 -0.67018599999999995 -0.72073600000000004 -0.177171 0
		 0.561894 -0.33675300000000002 -0.75556199999999996 0 49.688583000000001 102.916787 18.129840000000002 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "middle_01_l" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|middle_metacarpal_l";
	rename -uid "981EA631-4CBF-B7A4-CB25-57A941997431";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 6.0982089042663503 8.5265128291212022e-14 2.1316282072803006e-14 ;
	setAttr ".r" -type "double3" 1.908332808878111e-14 9.541664044390544e-15 31.57268201739824 ;
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999989 1.0000000000000002 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.062225500000000003 -0.89359100000000002 0.444548 0
		 -0.82486599999999999 -0.29680400000000001 -0.48114800000000002 0 0.561894 -0.33675300000000002 -0.75556199999999996 0
		 52.645589999999999 99.221771000000004 21.975762 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "middle_02_l" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|middle_metacarpal_l|middle_01_l";
	rename -uid "C61D1E56-49CA-6EC3-6D06-DFB9FAF8541C";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 5.1690001487732076 0 4.2632564145606011e-14 ;
	setAttr ".r" -type "double3" 6.3611093629270351e-15 9.5416640443905456e-15 20.769210477739534 ;
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999989 1.0000000000000002 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.234319 -0.94077 0.24504200000000001 0 -0.79332899999999995 0.039355000000000001 -0.60751999999999995 0
		 0.561894 -0.33675300000000002 -0.75556199999999996 0 52.967233999999998 94.602799000000005 24.273631000000002 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "middle_03_l" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|middle_metacarpal_l|middle_01_l|middle_02_l";
	rename -uid "926A796D-4FB4-2099-CDD1-499E503FC863";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 2.473999977111788 3.5527136788005009e-14 0 ;
	setAttr ".r" -type "double3" 6.3611093629270375e-15 0 9.9999999709533842 ;
	setAttr ".s" -type "double3" 1 0.99999999999999944 0.99999999999999978 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.36852000000000001 -0.91964400000000002 0.135825 0
		 -0.740587 0.20211999999999999 -0.64084200000000002 0 0.561894 -0.33675300000000002 -0.75556199999999996 0
		 52.387528000000003 92.275333000000003 24.879866 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "thumb_01_l" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l";
	rename -uid "13D41AC3-41AC-615F-DCA3-3F821E782B7E";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 1.9924465417861867 1.3566048145294189 -2.5815360546112096 ;
	setAttr ".r" -type "double3" 73.564463907750024 39.904178427023169 20.508675504416587 ;
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000004 0.99999999999999933 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.23677699999999999 -0.46744599999999997 0.85172199999999998 0
		 0.358045 -0.85693299999999994 -0.37076900000000002 0 0.90318299999999996 0.217165 0.37026900000000001 0
		 46.226711000000002 102.958445 18.495816999999999 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "thumb_02_l" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|thumb_01_l";
	rename -uid "83EB55DE-474B-CA71-09A8-E9A776F207AF";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 4.3779997825622416 9.9475983006414026e-14 -9.9475983006414026e-14 ;
	setAttr ".r" -type "double3" 3.5306280002014678 -1.932290495770159 23.246005781061349 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000002 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.045745000000000001 -0.75995299999999999 0.648366 0
		 0.47737499999999999 -0.58677000000000001 -0.65407499999999996 0 0.87750799999999995 0.27959299999999998 0.38962400000000003 0
		 45.190100000000001 100.911968 22.224657000000001 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "thumb_03_l" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|thumb_01_l|thumb_02_l";
	rename -uid "4E32BB2D-42F2-60A1-43E1-5DBFA11B6258";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 3.0859999656677104 5.6843418860808015e-14 8.5265128291212022e-14 ;
	setAttr ".r" -type "double3" 0 1.5902773407317588e-15 9.9999999709533878 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1.0000000000000002 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.037845200000000002 -0.85029900000000003 0.52493699999999999 0
		 0.47806599999999999 -0.44589099999999998 -0.75672600000000001 0 0.87750799999999995 0.27959299999999998 0.38962400000000003 0
		 45.048931000000003 98.566753000000006 24.225515999999999 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "pinky_metacarpal_l" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l";
	rename -uid "40D56A39-4B4F-8956-DE53-AC9A5164A53A";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 3.3143784999847448 -0.30591726303100586 2.3911108970642072 ;
	setAttr ".r" -type "double3" -27.769049129171471 -19.527703069996914 11.850627289629651 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.50165899999999997 -0.81947000000000003 0.27714100000000003 0
		 -0.86150499999999997 -0.50229900000000005 0.0741975 0 0.078405100000000005 -0.27598 -0.95796000000000003 0
		 50.945126999999999 101.904329 16.074227 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "pinky_01_l" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|pinky_metacarpal_l";
	rename -uid "71E369E9-4F85-B902-2170-F5873F15BFB9";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 4.9575676918029785 -0.14312039315700531 -0.19884027540683036 ;
	setAttr ".r" -type "double3" 10.491640062438075 0.60504264270136865 14.83368088285882 ;
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999944 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.26354100000000003 -0.91778899999999997 0.29699999999999999 0
		 -0.93037099999999995 -0.32317400000000002 -0.17311599999999999 0 0.25486700000000001 -0.23069700000000001 -0.93905400000000006 0
		 53.539845999999997 97.968518000000003 17.628035000000001 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "pinky_02_l" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|pinky_metacarpal_l|pinky_01_l";
	rename -uid "3E273F6D-47B1-04CD-9BE9-229E9300A7FD";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 3.8159999847412109 1.9895196601282805e-13 5.6843418860808015e-14 ;
	setAttr ".r" -type "double3" -8.8278125961003172e-32 -1.5902773407317598e-15 21.286999049243864 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999944 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.092201500000000006 -0.97249699999999994 0.213889 0
		 -0.96257000000000004 0.032068899999999997 -0.26912799999999998 0 0.25486700000000001 -0.23069700000000001 -0.93905400000000006 0
		 54.545515999999999 94.466234 18.761389000000001 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "pinky_03_l" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|pinky_metacarpal_l|pinky_01_l|pinky_02_l";
	rename -uid "C7B9C07B-4668-F868-CC82-55B5BADA20CF";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 2.0399999618530131 -1.4210854715202004e-14 1.7763568394002505e-14 ;
	setAttr ".r" -type "double3" 0 -3.1805546814635152e-15 4.9170000470223689 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.17436699999999999 -0.96616899999999994 0.19003400000000001 0
		 -0.951125 0.11530600000000001 -0.28647 0 0.25486700000000001 -0.23069700000000001 -0.93905400000000006 0
		 54.357424999999999 92.482339999999994 19.197723 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "ring_metacarpal_l" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l";
	rename -uid "DB060636-4471-D65F-9065-A1865CC4DBD1";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 3.374303817749027 -0.54251688718795776 1.0917565822601265 ;
	setAttr ".r" -type "double3" -13.299834889366403 -11.809318654920903 -1.5945633604277292 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.59060500000000005 -0.65963300000000002 0.46483400000000002 0
		 -0.73083299999999995 -0.68147000000000002 -0.038479100000000002 0 0.34215200000000001 -0.31698999999999999 -0.88456100000000004 0
		 50.330905000000001 102.404708 17.132643000000002 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "ring_01_l" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|ring_metacarpal_l";
	rename -uid "9495D83E-4D05-7104-0F5A-F5A66210F7A1";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 5.645516872406013 -0.041624534875140284 -0.020689174532876109 ;
	setAttr ".r" -type "double3" 6.395844444585113 -0.11693801365856014 29.414482479749058 ;
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999956 1.0000000000000004 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.15623799999999999 -0.90993100000000005 0.38420799999999999 0
		 -0.88283500000000004 -0.303087 -0.35880499999999999 0 0.442936 -0.28313300000000002 -0.85067199999999998 0
		 53.688516999999997 98.715664000000004 19.776772999999999 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "ring_02_l" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|ring_metacarpal_l|ring_01_l";
	rename -uid "03EB72C3-4849-FE25-0767-3BBCB21FA364";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 4.9770002365112163 -9.9475983006414026e-14 -9.5923269327613525e-14 ;
	setAttr ".r" -type "double3" -1.272221872585407e-14 1.7493050748049337e-14 18.963999541971834 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.13914000000000001 -0.95903799999999995 0.246752 0
		 -0.88568999999999998 0.0090675100000000008 -0.46418799999999999 0 0.442936 -0.28313300000000002 -0.85067199999999998 0
		 54.466115000000002 94.186938999999995 21.688974000000002 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "ring_03_l" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|ring_metacarpal_l|ring_01_l|ring_02_l";
	rename -uid "6D6AAD14-41C2-1FBC-0FD3-53A93F1D71BD";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 2.265000104904189 3.5527136788005009e-14 1.6342482922482304e-13 ;
	setAttr ".r" -type "double3" -6.3611093629270351e-15 2.5444437451708122e-14 9.1679997480249895 ;
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999989 1.0000000000000002 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.27848000000000001 -0.94534200000000002 0.16964099999999999 0
		 -0.85220700000000005 0.16175500000000001 -0.49757299999999999 0 0.442936 -0.28313300000000002 -0.85067199999999998 0
		 54.150962 92.014718000000002 22.247866999999999 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "upperarm_twist_01_l" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l";
	rename -uid "F4B96F04-4976-43DA-A04E-2F93EBCA192A";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 9.2570457458496378 1.1546319456101628e-14 -9.9475983006414026e-14 ;
	setAttr ".r" -type "double3" 2.6828436514387616e-10 -2.1533312395632254 -0.32660888591551879 ;
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999978 1.0000000000000002 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.60649299999999995 -0.79463200000000001 0.026965599999999999 0
		 -0.029308000000000001 -0.056235399999999998 -0.99798699999999996 0 0.79454899999999995 0.60448199999999996 -0.057395399999999999 0
		 24.342248000000001 136.019654 -2.3404910000000001 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "upperarm_twist_02_l" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l";
	rename -uid "C4DCCCB9-456D-314B-0240-A2AAEF481ACC";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 18.514091491699276 1.0658141036401503e-14 -1.4210854715202004e-13 ;
	setAttr ".r" -type "double3" -2.7829853462805776e-15 1.0821340342010633e-14 7.951386703658788e-16 ;
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999989 1.0000000000000002 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.57603400000000005 -0.81709100000000001 0.023413799999999999 0
		 -0.032592099999999999 -0.051578499999999999 -0.99813700000000005 0 0.81677599999999995 0.57419699999999996 -0.056341599999999999 0
		 29.674617000000001 128.45580899999999 -2.123748 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "clavicle_r" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05";
	rename -uid "B9227245-430F-EB1F-E97C-C7BE9E204C34";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "blendParent1" -ln "blendParent1" -dt "string";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 5.5162200927734375 1.314811229705807 1.4278726577758791 ;
	setAttr ".r" -type "double3" 163.26358510455586 80.831225890108584 -26.875616348870519 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 0.99999999999999967 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.98722299999999996 0.15259 0.045897899999999998 0
		 -0.0458859 -0.00360181 0.99894000000000005 0 0.15259300000000001 -0.98828300000000002 0.0034459299999999998 0
		 -1.4278729999999999 146.300995 -1.7398499999999999 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".blendParent1" -type "string" "1.000000";
	setAttr ".fbxID" 5;
createNode joint -n "upperarm_r" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r";
	rename -uid "B9CCB45F-4C62-A823-258D-CEA6D29D14B7";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "blendParent1" -ln "blendParent1" -dt "string";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -17.809625625610355 2.8716144657714437e-06 0.00043809693306684494 ;
	setAttr ".r" -type "double3" -4.337345261917843 46.029604216550808 -4.3585186559704807 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999944 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.57603400000000005 0.81709100000000001 -0.023413799999999999 0
		 -0.032592099999999999 0.051578499999999999 0.99813700000000005 0 0.81677599999999995 -0.57419699999999996 0.056341599999999999 0
		 -19.009882000000001 143.58299500000001 -2.5572699999999999 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".blendParent1" -type "string" "1.000000";
	setAttr ".fbxID" 5;
createNode joint -n "lowerarm_r" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r";
	rename -uid "241A68A8-48D8-8698-8769-7896AE56A76E";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -27.770694732666016 -3.6415315207705135e-14 5.6843418860808015e-14 ;
	setAttr ".r" -type "double3" -8.3489560388417319e-15 1.5505204072134647e-14 -38.978821942625942 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.46829799999999999 0.60274399999999995 -0.64606300000000005 0
		 0.33700799999999997 0.55407300000000004 0.76120200000000005 0 0.81677599999999995 -0.57419699999999996 0.056341599999999999 0
		 -35.006734999999999 120.89182099999999 -1.9070530000000001 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "lowerarm_twist_02_r" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r";
	rename -uid "C6A166AF-4DD7-5B15-9034-6C9A16D9C9AA";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -9.0836620330810547 -1.4210854715202004e-14 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 1.2856768460267176 -1.7275331230962716 1.9858280815512903 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.50409899999999996 0.603989 -0.617317 0 0.33849099999999999 0.51942200000000005 0.78461800000000004 0
		 0.79454899999999995 -0.60448199999999996 0.057395399999999999 0 -39.260592000000003 115.416697 3.9615610000000001 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "lowerarm_twist_01_r" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r";
	rename -uid "15AB440A-4393-3B9A-67DB-78899DCCD837";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -18.167304992675795 -7.1054273576010019e-15 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 1.285676869349748 -1.7275255464774926 1.9858281662294843 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.50409899999999996 0.60399000000000003 -0.617317 0
		 0.33849099999999999 0.51942200000000005 0.78461800000000004 0 0.79454899999999995 -0.60448100000000005 0.057395300000000003 0
		 -43.514440999999998 109.94158400000001 9.8301630000000007 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "hand_r" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r";
	rename -uid "E8ED2FF0-4158-273A-C27A-5A9466C5DCB3";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -27.251010894775405 -7.1054273576010019e-15 0 ;
	setAttr ".r" -type "double3" -67.770758746900071 1.4734707800079545 1.8489162697849562 ;
	setAttr ".s" -type "double3" 1 1.0000000000000007 0.99999999999999956 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.45776600000000001 0.63486699999999996 -0.62241000000000002 0
		 -0.645509 0.71872800000000003 0.258357 0 0.61136599999999997 0.28350399999999998 0.73882099999999995 0
		 -47.768318999999998 104.46643400000001 15.698805 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "pinky_metacarpal_r" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r";
	rename -uid "CD3C2FEB-4538-70A9-E900-46A2274EB2E7";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -3.3146772384643555 0.3059353530407094 -2.3912868499755877 ;
	setAttr ".r" -type "double3" -27.769049129171506 -19.527703069996939 11.850627289629648 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.50165899999999997 0.81947000000000003 -0.27714100000000003 0
		 -0.86150499999999997 0.50229900000000005 -0.0741975 0 0.078405100000000005 0.27598 0.95796000000000003 0
		 -50.945101000000001 101.903999 16.074200000000001 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "pinky_01_r" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|pinky_metacarpal_r";
	rename -uid "C376C3BB-4076-F3AB-48B2-8EA9CCF1DE32";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -4.9573006629943777 0.14326146245001325 0.19892024993895774 ;
	setAttr ".r" -type "double3" 10.491640062438091 0.60504264270136898 14.833680882858809 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.26354100000000003 0.91778899999999997 -0.29699999999999999 0
		 -0.93037099999999995 0.32317400000000002 0.17311599999999999 0 0.25486700000000001 0.23069700000000001 0.93905400000000006 0
		 -53.539800999999997 97.968500000000006 17.628001000000001 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "pinky_02_r" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|pinky_metacarpal_r|pinky_01_r";
	rename -uid "4B78270E-4BE6-B511-2512-2F952F273C58";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -3.8160362243652202 3.0366025399075625e-05 3.26292065402356e-05 ;
	setAttr ".r" -type "double3" -9.5416640443905471e-15 -7.9513867036587903e-15 21.286999049243828 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.092201500000000006 0.97249699999999994 -0.213889 0
		 -0.96257000000000004 -0.032068899999999997 0.26912799999999998 0 0.25486700000000001 0.23069700000000001 0.93905400000000006 0
		 -54.545501000000002 94.466200000000001 18.761400999999999 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "pinky_03_r" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|pinky_metacarpal_r|pinky_01_r|pinky_02_r";
	rename -uid "FF4EF101-46BA-9AEE-0351-5CAD3AB51EEF";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -2.0399997234344767 -1.752387652231846e-05 -3.1002964533399791e-05 ;
	setAttr ".r" -type "double3" 1.7075472734198601e-06 1.5902773288832689e-15 4.9170000470223734 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.17436699999999999 0.96616899999999994 -0.19003400000000001 0
		 -0.951125 -0.11530600000000001 0.28647 0 0.25486700000000001 0.23069700000000001 0.93905400000000006 0
		 -54.357401000000003 92.482299999999995 19.197700999999999 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "ring_metacarpal_r" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r";
	rename -uid "D5F8D78B-4040-C9C2-64E3-09B48377497B";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -3.3742079734802175 0.54299175739289751 -1.0917816162109411 ;
	setAttr ".r" -type "double3" -13.299834889366419 -11.809318654920897 -1.5945633604277316 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 0.99999999999999978 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.59060500000000005 0.65963300000000002 -0.46483400000000002 0
		 -0.73083299999999995 0.68147000000000002 0.038479100000000002 0 0.34215200000000001 0.31698999999999999 0.88456100000000004 0
		 -50.330900999999997 102.404999 17.132601000000001 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "ring_01_r" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|ring_metacarpal_r";
	rename -uid "BCA3F04E-47D8-3ED9-80A8-9EAB41A8ED31";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -5.6457118988036932 0.041443493217229843 0.020674973726276136 ;
	setAttr ".r" -type "double3" 6.3958444445851077 -0.11693801365858834 29.414482479749026 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.15623799999999999 0.90993100000000005 -0.38420799999999999 0
		 -0.88283500000000004 0.303087 0.35880499999999999 0 0.442936 0.28313300000000002 0.85067199999999998 0
		 -53.688501000000002 98.715699000000001 19.776800999999999 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "ring_02_r" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|ring_metacarpal_r|ring_01_r";
	rename -uid "27E3110B-4922-B7F1-B08A-6480208BA8CD";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -4.9770674705505655 -2.0846833635346229e-05 -2.3612021330166044e-05 ;
	setAttr ".r" -type "double3" -6.361109362927032e-15 3.1805546814635152e-15 18.963999541971834 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000004 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.13914000000000001 0.95903799999999995 -0.246752 0
		 -0.88568999999999998 -0.0090675100000000008 0.46418799999999999 0 0.442936 0.28313300000000002 0.85067199999999998 0
		 -54.466101000000002 94.186898999999997 21.689001000000001 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "ring_03_r" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|ring_metacarpal_r|ring_01_r|ring_02_r";
	rename -uid "5BB57F2B-49B3-AA0E-0756-549448A8AA7A";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -2.2649745941161967 5.0017570160321156e-05 -1.1221488417589853e-05 ;
	setAttr ".r" -type "double3" -1.2722218725854064e-14 7.9513867036587919e-15 9.1679997480249771 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.27848000000000001 0.94534200000000002 -0.16964099999999999 0
		 -0.85220700000000005 -0.16175500000000001 0.49757299999999999 0 0.442936 0.28313300000000002 0.85067199999999998 0
		 -54.151001000000001 92.014700000000005 22.247900999999999 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "middle_metacarpal_r" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r";
	rename -uid "1ADE67BD-4511-BF43-E1D8-0C990D23832D";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -3.3758001327514542 0.75400394201280108 0.18280552327632549 ;
	setAttr ".r" -type "double3" -4.2725003027381572 -0.13075114456697923 -2.3183915821069649 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.484898 0.60591799999999996 -0.630664 0 -0.67018599999999995 0.72073600000000004 0.177171 0
		 0.561894 0.33675300000000002 0.75556199999999996 0 -49.688600999999998 102.917 18.129799999999999 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "middle_01_r" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|middle_metacarpal_r";
	rename -uid "36370868-4D0E-66AD-4794-8DAC4DA2A4F1";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -6.0983657836914098 -0.00012385072479048631 1.430381875167086e-06 ;
	setAttr ".r" -type "double3" -3.1805546814635168e-15 -9.5416640443905535e-15 31.572682017398236 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.062225500000000003 0.89359100000000002 -0.444548 0
		 -0.82486599999999999 0.29680400000000001 0.48114800000000002 0 0.561894 0.33675300000000002 0.75556199999999996 0
		 -52.645600999999999 99.221800000000002 21.9758 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "middle_02_r" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|middle_metacarpal_r|middle_01_r";
	rename -uid "1AA59B2C-46AB-3421-7473-6A8498AFF863";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -5.1689915657043457 -7.7438591702616577e-05 -3.7045669163404682e-05 ;
	setAttr ".r" -type "double3" -1.2722218725854073e-14 -1.113194138512231e-14 20.769210477739502 ;
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.234319 0.94077 -0.24504200000000001 0 -0.79332899999999995 -0.039355000000000001 0.60751999999999995 0
		 0.561894 0.33675300000000002 0.75556199999999996 0 -52.967201000000003 94.602800000000002 24.273600999999999 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "middle_03_r" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|middle_metacarpal_r|middle_01_r|middle_02_r";
	rename -uid "A2D6F651-459C-D723-88DD-3FB15F5FEAF7";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -2.4740469455718994 4.5777305793137657e-05 3.4385015165838695e-05 ;
	setAttr ".r" -type "double3" -9.5416640443905456e-15 -1.4312496066585827e-14 9.9999999709533895 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000004 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.36852000000000001 0.91964400000000002 -0.135825 0
		 -0.740587 -0.20211999999999999 0.64084200000000002 0 0.561894 0.33675300000000002 0.75556199999999996 0
		 -52.387501 92.275300000000001 24.879901 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "index_metacarpal_r" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r";
	rename -uid "6D2619A6-45A3-D521-998D-A89D525B1414";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -3.4445140361785747 0.38516682386398315 2.3793087005615163 ;
	setAttr ".r" -type "double3" 3.287746454658151 7.3255016683865124 -0.60616237917611115 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.38282500000000003 0.58596000000000004 -0.71421000000000001 0
		 -0.60140300000000002 0.744923 0.28879899999999997 0 0.70125599999999999 0.318969 0.63757299999999995 0
		 -48.139100999999997 103.23099999999999 19.700101 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "index_01_r" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|index_metacarpal_r";
	rename -uid "2ABF4FAE-4DEB-F892-AFBF-6EACDE552899";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -5.8772053718567072 -0.043412361294002721 -0.2409516423940623 ;
	setAttr ".r" -type "double3" -3.1805546814635183e-15 -9.5416640443905487e-15 23.372999646513961 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.11282499999999999 0.833399 -0.54103299999999999 0
		 -0.70392500000000002 0.45133699999999999 0.54843900000000001 0 0.70125599999999999 0.318969 0.63757299999999995 0
		 -50.531900999999998 99.677999999999997 23.731501000000002 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "index_02_r" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|index_metacarpal_r|index_01_r";
	rename -uid "897D2D19-4D1C-8FD4-C066-DFA78166D5E4";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -4.0799326896667338 5.0402058775489422e-06 3.2106661807418391e-05 ;
	setAttr ".r" -type "double3" -1.908332808878111e-14 -4.7708320221952791e-15 14.892568419110978 ;
	setAttr ".s" -type "double3" 0.99999999999999911 0.99999999999999956 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.071878600000000001 0.92140200000000005 -0.38190600000000002 0
		 -0.70927700000000005 0.22198599999999999 0.66906600000000005 0 0.70125599999999999 0.318969 0.63757299999999995 0
		 -50.992201000000001 96.277799999999999 25.938901000000001 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "index_03_r" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|index_metacarpal_r|index_01_r|index_02_r";
	rename -uid "9BBBD7E7-4C0F-665D-1BD1-8EAF545B1847";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -2.595076322555542 3.9602186021170382e-05 -3.5606819821509816e-06 ;
	setAttr ".r" -type "double3" -1.5902773407317584e-14 3.1805546814635156e-15 12.516400997546951 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 0.99999999999999978 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.223884 0.94761200000000001 -0.22783100000000001 0
		 -0.67684200000000005 0.0170253 0.735931 0 0.70125599999999999 0.318969 0.63757299999999995 0
		 -50.805700999999999 93.886700000000005 26.930001000000001 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "thumb_01_r" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r";
	rename -uid "F72A3CF9-4ED4-DA96-929F-14B28E34F380";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -1.9928325414657522 -1.3566571474075175 2.581325531005854 ;
	setAttr ".r" -type "double3" 73.564463907750024 39.904178427023133 20.508675504416566 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 0.99999999999999933 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.23677699999999999 0.46744599999999997 -0.85172199999999998 0
		 0.358045 0.85693299999999994 0.37076900000000002 0 0.90318299999999996 -0.217165 -0.37026900000000001 0
		 -46.226700999999998 102.957999 18.495801 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "thumb_02_r" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|thumb_01_r";
	rename -uid "8B74AE41-47CD-FD20-F377-CCA89B1B098F";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -4.3778247833252024 0.00042712956202706209 -0.00013574546028394252 ;
	setAttr ".r" -type "double3" 3.5306280002014532 -1.9322904957701399 23.246005781061324 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.045745000000000001 0.75995299999999999 -0.648366 0
		 0.47737499999999999 0.58677000000000001 0.65407499999999996 0 0.87750799999999995 -0.27959299999999998 -0.38962400000000003 0
		 -45.190100999999999 100.91200000000001 22.224701 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "thumb_03_r" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|thumb_01_r|thumb_02_r";
	rename -uid "BB654D88-4DAD-4498-4100-96B7282D6390";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -3.0859522819519114 -1.4851160827333842e-05 4.5825581764802337e-05 ;
	setAttr ".r" -type "double3" 0 -9.5416640443905566e-15 9.9999999709533718 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1.0000000000000002 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.037845200000000002 0.85029900000000003 -0.52493699999999999 0
		 0.47806599999999999 0.44589099999999998 0.75672600000000001 0 0.87750799999999995 -0.27959299999999998 -0.38962400000000003 0
		 -45.048901000000001 98.566800000000001 24.225501000000001 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "upperarm_twist_01_r" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r";
	rename -uid "ACAEFF02-499E-47D9-8FCA-539D44C84680";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -9.2568979263305522 1.0202637897194222e-05 -0.00010078256310919187 ;
	setAttr ".r" -type "double3" 2.6828754950018744e-10 -2.153331239563208 -0.32660888591551801 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 1.0000000000000002 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.60649299999999995 0.79463200000000001 -0.026965599999999999 0
		 -0.029308000000000001 0.056235399999999998 0.99798699999999996 0 0.79454899999999995 -0.60448199999999996 0.057395399999999999 0
		 -24.342248999999999 136.019329 -2.3405260000000001 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "upperarm_twist_02_r" -p "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r";
	rename -uid "1C8230E5-4DD8-037B-B46C-EB84A33D404E";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -18.513795852661133 2.0405275791723909e-05 -0.00020156512620417288 ;
	setAttr ".r" -type "double3" 1.1927080055488188e-15 1.0548011424072363e-14 -3.975693351829395e-16 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.57603400000000005 0.81709100000000001 -0.023413799999999999 0
		 -0.032592099999999999 0.051578499999999999 0.99813700000000005 0 0.81677599999999995 -0.57419699999999996 0.056341599999999999 0
		 -29.674616 128.45566299999999 -2.123783 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "thigh_r" -p "|UE5Simple|root|pelvis";
	rename -uid "AF91F42E-4403-5F51-1858-F68A33161E20";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "blendParent1" -ln "blendParent1" -dt "string";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -2.3657262325286723 -0.11948779225349782 9.9690914154052734 ;
	setAttr ".r" -type "double3" 8.4085386612241084 -3.1255399000842652 176.43986665923373 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.0545239 -0.99851199999999996 0.00127173 0 -0.146013 0.0092329899999999999 0.98924000000000001 0
		 -0.98777899999999996 0.053751500000000001 -0.14629900000000001 0 -9.9690910000000006 93.543381999999994 2.5500229999999999 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".blendParent1" -type "string" "1.000000";
	setAttr ".fbxID" 5;
createNode joint -n "calf_r" -p "|UE5Simple|root|pelvis|thigh_r";
	rename -uid "5DAFDD5B-43A5-1ED1-4622-14BA4BA8873A";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 43.341262817382777 -2.5757174171303632e-14 1.0658141036401503e-14 ;
	setAttr ".r" -type "double3" -9.5416640443905519e-15 -3.8763010180336625e-15 -5.0048445558743904 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999989 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.041577900000000001 -0.99551000000000001 -0.085034399999999996 0
		 -0.15021300000000001 -0.077912300000000004 0.98557899999999998 0 -0.98777899999999996 0.053751500000000001 -0.14629900000000001 0
		 -12.332227 50.266626000000002 2.6051419999999998 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "foot_r" -p "|UE5Simple|root|pelvis|thigh_r|calf_r";
	rename -uid "D71009DE-4AEF-45EB-5FFC-0C9AF4667487";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 42.217948913574233 -7.7715611723760958e-16 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" -0.0046626083855087598 3.0812019613373751 2.6641047060062886 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999978 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.0046495299999999998 -0.999502 -0.031211800000000001 0
		 -0.148038 -0.0315562 0.98847799999999997 0 -0.98897100000000004 2.4559500000000001e-05 -0.14810999999999999 0
		 -14.087559000000001 8.2382290000000005 -0.98483399999999999 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "ball_r" -p "|UE5Simple|root|pelvis|thigh_r|calf_r|foot_r";
	rename -uid "BC413CB3-4C2D-DD0E-29D7-2F8DB5731EAA";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 7.0094366073608363 15.237594604492184 -0.53894561529159546 ;
	setAttr ".r" -type "double3" 5.2578544577943763e-14 -5.0888874903416268e-14 -90.000000000000014 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1.0000000000000002 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.148038 0.0315562 -0.98847799999999997 0 0.0046495299999999998 -0.999502 -0.031211800000000001 0
		 -0.98897100000000004 2.4559500000000001e-05 -0.14810999999999999 0 -15.777702 0.75143000000000004 13.938242000000001 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "calf_twist_02_r" -p "|UE5Simple|root|pelvis|thigh_r|calf_r";
	rename -uid "2A07FF65-4643-7794-ABD5-A2A4687F7B3D";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 14.072649955749519 6.2172489379008766e-15 0.037728950381280768 ;
	setAttr ".r" -type "double3" -0.004655912874655054 0.25816272471228802 2.6643342814062043 ;
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.044064300000000001 -0.99828799999999995 -0.038468599999999999 0
		 -0.148038 -0.0315562 0.98847799999999997 0 -0.98799999999999999 0.049251400000000001 -0.146394 0
		 -12.954605000000001 36.259188000000002 1.402963 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "calf_twist_01_r" -p "|UE5Simple|root|pelvis|thigh_r|calf_r";
	rename -uid "F817D8C8-4F5C-6FC1-58CE-B6A663DA4A1F";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 28.145299911499034 7.5495165674510645e-15 0.075457900762563312 ;
	setAttr ".r" -type "double3" -0.004655912874655054 0.25816272471228802 2.6643342814062043 ;
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.044064300000000001 -0.99828799999999995 -0.038468599999999999 0
		 -0.148038 -0.0315562 0.98847799999999997 0 -0.98799999999999999 0.049251400000000001 -0.146394 0
		 -13.576983999999999 22.251750000000001 0.20078499999999999 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "thigh_twist_01_r" -p "|UE5Simple|root|pelvis|thigh_r";
	rename -uid "CDC9154F-4749-2A01-1634-A0A26939585F";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 14.447087287902804 -2.6645352591003757e-15 0 ;
	setAttr ".r" -type "double3" -2.065027893746282e-10 0.25820470285918773 -1.3073006136480809 ;
	setAttr ".s" -type "double3" 0.99999999999999956 1 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.046726499999999997 -0.99869399999999997 -0.020638299999999998 0
		 -0.14721899999999999 -0.0135502 0.98901099999999997 0 -0.98799999999999999 0.049251400000000001 -0.146394 0
		 -10.756803 79.117796999999996 2.5683959999999999 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "thigh_twist_02_r" -p "|UE5Simple|root|pelvis|thigh_r";
	rename -uid "3278A029-46A4-BD5E-DBF4-B1BDA0419A94";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 28.894174575805629 -1.1546319456101628e-14 -3.0198066269804258e-14 ;
	setAttr ".r" -type "double3" -2.065027893746282e-10 0.25820470285918773 -1.3073006136480809 ;
	setAttr ".s" -type "double3" 0.99999999999999956 1 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.046726499999999997 -0.99869399999999997 -0.020638299999999998 0
		 -0.14721899999999999 -0.0135502 0.98901099999999997 0 -0.98799999999999999 0.049251400000000001 -0.146394 0
		 -11.544515000000001 64.692211999999998 2.5867689999999999 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "thigh_l" -p "|UE5Simple|root|pelvis";
	rename -uid "44429B3C-43EB-8038-BB01-C9959A6F1B9C";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "blendParent1" -ln "blendParent1" -dt "string";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -2.3657112121582031 -0.11004376411438344 -9.969202995300293 ;
	setAttr ".r" -type "double3" 8.4085386612241031 -3.1255399000842647 -3.5601333407662921 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.0545239 0.99851199999999996 -0.00127173 0 -0.146013 -0.0092329899999999999 -0.98924000000000001 0
		 -0.98777899999999996 -0.053751500000000001 0.14629900000000001 0 9.9692030000000003 93.542798000000005 2.540597 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".blendParent1" -type "string" "1.000000";
	setAttr ".fbxID" 5;
createNode joint -n "calf_l" -p "|UE5Simple|root|pelvis|thigh_l";
	rename -uid "F47F6DC7-4F9A-D263-D41B-2C8E6B2A7504";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -43.341308593749993 7.1054273576010019e-15 5.3290705182007514e-15 ;
	setAttr ".r" -type "double3" -6.3611093629270375e-15 7.9513867036587988e-16 -5.0048445558743548 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.041577900000000001 0.99551000000000001 0.085034399999999996 0
		 -0.15021300000000001 0.077912300000000004 -0.98557899999999998 0 -0.98777899999999996 -0.053751500000000001 0.14629900000000001 0
		 12.332341 50.265996999999999 2.5957159999999999 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "foot_l" -p "|UE5Simple|root|pelvis|thigh_l|calf_l";
	rename -uid "9FF0153D-435C-03AD-C3AF-2F8C809C81AE";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -42.217914581298842 -3.9968028886505635e-15 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" -0.0046626083855071674 3.0812019613373764 2.6641047060062952 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000011 1.0000000000000004 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.0046495299999999998 0.999502 0.031211800000000001 0
		 -0.148038 0.0315562 -0.98847799999999997 0 -0.98897100000000004 -2.4559500000000001e-05 0.14810999999999999 0
		 14.087671 8.2376339999999999 -0.99425699999999995 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "ball_l" -p "|UE5Simple|root|pelvis|thigh_l|calf_l|foot_l";
	rename -uid "5EEBBC24-46DF-CC78-C36A-A99BEDBC2EDA";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -7.0094366073608345 -15.237588882446286 0.53888744115829645 ;
	setAttr ".r" -type "double3" -9.1440947092076103e-15 9.5416640443905566e-15 -90.000000000000014 ;
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999989 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.148038 -0.0315562 0.98847799999999997 0 0.0046495299999999998 0.999502 0.031211800000000001 0
		 -0.98897100000000004 -2.4559500000000001e-05 0.14810999999999999 0 15.777870999999999 0.75083500000000003 13.928805000000001 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "calf_twist_02_l" -p "|UE5Simple|root|pelvis|thigh_l|calf_l";
	rename -uid "51AFA30D-4B20-AA16-70A1-64893F8AE4B4";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -14.072638511657715 1.1102230246251565e-15 2.1316282072803006e-14 ;
	setAttr ".r" -type "double3" -0.0046559128746534615 0.25816272471229079 2.6643342814062074 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000004 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.044064300000000001 0.99828799999999995 0.038468599999999999 0
		 -0.148038 0.0315562 -0.98847799999999997 0 -0.98799999999999999 -0.049251400000000001 0.146394 0
		 12.917451 36.256542000000003 1.3990579999999999 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "calf_twist_01_l" -p "|UE5Simple|root|pelvis|thigh_l|calf_l";
	rename -uid "A6C3A1C3-4D3A-330C-5CF8-12AD6A6E91A8";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -28.145277023315437 5.0670109875694536e-06 -0.075448110699653625 ;
	setAttr ".r" -type "double3" -0.0046559128746534615 0.25816272471229079 2.6643342814062074 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000004 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.044064300000000001 0.99828799999999995 0.038468599999999999 0
		 -0.148038 0.0315562 -0.98847799999999997 0 -0.98799999999999999 -0.049251400000000001 0.146394 0
		 13.577086 22.251144 0.191358 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "thigh_twist_01_l" -p "|UE5Simple|root|pelvis|thigh_l";
	rename -uid "3EC96900-4719-9723-274D-3DB8E8A1DB4B";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -14.447102546691895 1.7763568394002505e-15 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" -2.0649642897718216e-10 0.25820470285919295 -1.3073006136480436 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.046726499999999997 0.99869399999999997 0.020638299999999998 0
		 -0.14721899999999999 0.0135502 -0.98901099999999997 0 -0.98799999999999999 -0.049251400000000001 0.146394 0
		 10.756916 79.117198000000002 2.55897 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "thigh_twist_02_l" -p "|UE5Simple|root|pelvis|thigh_l";
	rename -uid "C004CAD3-4739-B3DA-B2CE-5EB0A1451E6A";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -28.894205093383796 -2.2688980125806779e-06 -8.0748641266836785e-06 ;
	setAttr ".r" -type "double3" -2.0649642897718216e-10 0.25820470285919295 -1.3073006136480436 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.046726499999999997 0.99869399999999997 0.020638299999999998 0
		 -0.14721899999999999 0.0135502 -0.98901099999999997 0 -0.98799999999999999 -0.049251400000000001 0.146394 0
		 11.544636000000001 64.691597999999999 2.5773440000000001 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "ik_foot_root" -p "|UE5Simple|root";
	rename -uid "83D07FF8-438A-4497-3884-1EBBD95A14B2";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0 -1 0 0 1 0 0 0 0 0 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "ik_foot_l" -p "|UE5Simple|root|ik_foot_root";
	rename -uid "35C35501-4F21-935A-5932-A9A73C1F76CA";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" 14.087671279907227 0.99425750970840454 8.2376375198364258 ;
	setAttr ".r" -type "double3" 90.044595639783211 -88.191663071784689 -81.527131053351226 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.0046495199999999999 0.999502 0.031211800000000001 0
		 -0.148037 0.0315562 -0.98847799999999997 0 -0.98897100000000004 -2.4561500000000002e-05 0.14810999999999999 0
		 14.087671 8.2376380000000005 -0.99425799999999998 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "ik_foot_r" -p "|UE5Simple|root|ik_foot_root";
	rename -uid "AFDC0265-4551-56AA-8346-F09E7AE2B82B";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" -14.087558746337891 0.98483455181121826 8.2382316589355469 ;
	setAttr ".r" -type "double3" -89.955404360215979 88.191663071784689 81.527131053350843 ;
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999978 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.0046495199999999999 -0.999502 -0.031211800000000001 0
		 -0.148037 -0.0315562 0.98847799999999997 0 -0.98897100000000004 2.4561500000000002e-05 -0.14810999999999999 0
		 -14.087559000000001 8.238232 -0.98483500000000002 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "ik_hand_root" -p "|UE5Simple|root";
	rename -uid "715598C2-4796-6B1C-57A3-558B05FB9845";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0 -1 0 0 1 0 0 0 0 0 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "ik_hand_gun" -p "|UE5Simple|root|ik_hand_root";
	rename -uid "5E06FA6D-420B-FEEE-4F93-649BFAF0914A";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" -47.768318176269531 -15.69880485534668 104.4664306640625 ;
	setAttr ".r" -type "double3" 68.473107478131155 -39.410111911239163 53.666512015145315 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.45776600000000001 0.63486699999999996 -0.62241000000000002 0
		 -0.645509 0.71872800000000003 0.258357 0 0.61136599999999997 0.28350399999999998 0.73882099999999995 0
		 -47.768318000000001 104.466431 15.698805 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "ik_hand_l" -p "|UE5Simple|root|ik_hand_root|ik_hand_gun";
	rename -uid "B70E91E7-4D10-412A-D029-ED91FB01A6A8";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" 43.73357009887696 -61.669849395751982 58.408111572265597 ;
	setAttr ".r" -type "double3" -107.73758596138391 -34.036790747396616 -134.50699481505316 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.45776600000000001 -0.63486699999999996 0.62241000000000002 0
		 -0.645509 -0.71872800000000003 -0.258357 0 0.61136599999999997 -0.28350399999999998 -0.73882099999999995 0
		 47.768600999999997 104.466539 15.698888 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "ik_hand_r" -p "|UE5Simple|root|ik_hand_root|ik_hand_gun";
	rename -uid "2E49A49F-40CE-29C4-3DD3-8BBD21669237";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 0 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 3.3395824155366921e-14 -2.2263882770244611e-14 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.45776600000000001 0.63486699999999996 -0.62241000000000002 0
		 -0.645509 0.71872800000000003 0.258357 0 0.61136599999999997 0.28350399999999998 0.73882099999999995 0
		 -47.768318000000001 104.466431 15.698805 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "interaction" -p "|UE5Simple|root";
	rename -uid "4FC03630-4AC4-34E8-7FC9-218B670EDCC4";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0 -1 0 0 1 0 0 0 0 0 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode joint -n "center_of_mass" -p "|UE5Simple|root";
	rename -uid "06E7CB72-407D-91AB-9370-4B974E5D5207";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0 -1 0 0 1 0 0 0 0 0 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr ".fbxID" 5;
createNode transform -n "UE5Full";
	rename -uid "782C08BB-4BE6-142E-843F-89BB063CFCD7";
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode joint -n "root" -p "UE5Full";
	rename -uid "13BC528E-419D-AD23-0E3A-EA91DD5B5787";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "jointTRSData" -ln "jointTRSData" -dt "string";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0 -1 0 0 1 0 0 0 0 0 1;
	setAttr -k on ".jointTRSData" -type "string" (
		"(dp0&lf;Vupperarm_bicep_l&lf;p1&lf;(dp2&lf;S'rotation'&lf;p3&lf;(F-2.112087093159394e-16&lf;F1.6101558074909054e-14&lf;F-1.948089742396404e-14&lf;tp4&lf;sS'translate'&lf;p5&lf;(F0.4296336514963315&lf;F-3.0014054840172104&lf;F-0.33568228722386095&lf;tp6&lf;sS'scale'&lf;p7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp8&lf;ssVthigh_fwd_r&lf;p9&lf;(dp10&lf;g3&lf;(F-3.2351075555054503e-09&lf;F-3.554814002738346e-09&lf;F4.6893499014910565e-09&lf;tp11&lf;sg5&lf;(F-5.8879919004175605&lf;F7.159845239867742&lf;F-0.8596299999494192&lf;tp12&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp13&lf;ssVupperarm_twist_02_r&lf;p14&lf;(dp15&lf;g3&lf;(F-5.715515410477199e-05&lf;F0.239297380467856&lf;F-0.013684890989370199&lf;tp16&lf;sg5&lf;(F-16.831266561863387&lf;F1.8815802156346706e-05&lf;F-0.00023473533977380612&lf;tp17&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp18&lf;ssVthigh_fwd_l&lf;p19&lf;(dp20&lf;g3&lf;(F-3.0625942677403114e-09&lf;F3.73169190518625e-08&lf;F5.2113571248109e-09&lf;tp21&lf;sg5&lf;(F5.892345071609&lf;F-7.144273484161924&lf;F0.8632194689173218&lf;tp22&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp23&lf;ssVupperarm_twist_02_l&lf;p24&lf;(dp25&lf;g3&lf;(F-5.715515410371704e-05&lf;F0.2392973804688322&lf;F-0.013684890989424315&lf;tp26&lf;sg5&lf;(F16.83153379318587&lf;F1.7763568394002505e-15&lf;F0.0&lf;tp27&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp28&lf;ssVspine_02&lf;p29&lf;(dp30&lf;g3&lf;(F-1.2132853246549658e-20&lf;F-5.763105292111093e-19&lf;F-2.3854160140597598e-15&lf;tp31&lf;sg5&lf;(F4.64819543873827&lf;F0.0&lf;F9.247810850432359e-15&lf;tp32&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp33&lf;ssVspine_03&lf;p34&lf;(dp35&lf;g3&lf;(F3.8839555994523184e-42&lf;F9.390828412829445e-18&lf;F4.739395799433465e-23&lf;tp36&lf;sg5&lf;(F7.10706776307444&lf;F7.105427357601002e-15&lf;F-1.6302063865492045e-14&lf;tp37&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp38&lf;ssVspine_04&lf;p39&lf;(dp40&lf;g3&lf;(F-5.823769558343841e-19&lf;F4.246498636292384e-20&lf;F1.590277269640821e-15&lf;tp41&lf;sg5&lf;(F8.248942899748158&lf;F3.552713678800501e-15&lf;F-2.1010970741031088e-14&lf;tp42&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp43&lf;ssVspine_05&lf;p44&lf;(dp45&lf;g3&lf;(F-1.4559423895859602e-19&lf;F4.659679162086993e-18&lf;F1.4908847995874568e-16&lf;tp46&lf;sg5&lf;(F16.308254953927232&lf;F-7.105427357601002e-15&lf;F2.3062281251373662e-14&lf;tp47&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp48&lf;ssVindex_metacarpal_r&lf;p49&lf;(dp50&lf;g3&lf;(F-4.808104147368675e-15&lf;F2.4351121779955047e-15&lf;F2.2363275104040347e-15&lf;tp51&lf;sg5&lf;(F-3.457892340165678&lf;F-0.010593711576447618&lf;F1.529324513338704&lf;tp52&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp53&lf;ssVupperarm_bicep_r&lf;p54&lf;(dp55&lf;g3&lf;(F3.1557065980145833e-14&lf;F5.367186024969683e-15&lf;F6.361109362927035e-15&lf;tp56&lf;sg5&lf;(F-0.570192043047129&lf;F3.0080906171650774&lf;F0.15133974465763345&lf;tp57&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp58&lf;ssVlowerarm_in_r&lf;p59&lf;(dp60&lf;g3&lf;(F2.5444437451708134e-14&lf;F0.0&lf;F0.0&lf;tp61&lf;sg5&lf;(F-1.5514355804486115&lf;F-0.21415705989632272&lf;F2.2829596952656743&lf;tp62&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp63&lf;ssVwrist_inner_l&lf;p64&lf;(dp65&lf;g3&lf;(F-5.1497652947915144e-14&lf;F-9.541664044390552e-15&lf;F-4.174478019420861e-15&lf;tp66&lf;sg5&lf;(F-0.08634634823715714&lf;F1.6269678363065907&lf;F-0.47525639176425827&lf;tp67&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp68&lf;ssVthigh_out_r&lf;p69&lf;(dp70&lf;g3&lf;(F-1.122660004060381e-09&lf;F7.74599041022121e-09&lf;F1.0052238419628676e-08&lf;tp71&lf;sg5&lf;(F-5.490222724311039&lf;F-1.2357139686785958&lf;F4.529304741894016&lf;tp72&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp73&lf;ssVclavicle_l&lf;p74&lf;(dp75&lf;g3&lf;(F-2.7034714792439897e-14&lf;F6.659286364314223e-15&lf;F359.99999999999994&lf;tp76&lf;sg5&lf;(F5.434344857110261&lf;F0.9364505906511198&lf;F-0.866799571158099&lf;tp77&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp78&lf;ssVupperarm_twist_01_r&lf;p79&lf;(dp80&lf;g3&lf;(F-6.1858806299137406e-15&lf;F-2.4343783062529425e-15&lf;F-9.660793900053754e-15&lf;tp81&lf;sg5&lf;(F-8.639670830686583&lf;F0.09629670980522409&lf;F0.16541554783053414&lf;tp82&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp83&lf;ssVball_r&lf;p84&lf;(dp85&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp86&lf;sg5&lf;(F5.70729832865123&lf;F11.471707953183119&lf;F0.00175755891641316&lf;tp87&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp88&lf;ssVthigh_twistCor_01_r&lf;p89&lf;(dp90&lf;g3&lf;(F-7.966473664013811e-13&lf;F7.136261186895984e-18&lf;F-1.5803581998339445e-10&lf;tp91&lf;sg5&lf;(F-6.110667527536862e-13&lf;F-2.0383694732117874e-13&lf;F7.105427357601002e-15&lf;tp92&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp93&lf;ssVthigh_twistCor_01_l&lf;p94&lf;(dp95&lf;g3&lf;(F-7.679131785889907e-13&lf;F-6.227958139655539e-18&lf;F-1.5803582267887843e-10&lf;tp96&lf;sg5&lf;(F6.252776074688882e-13&lf;F2.0294876890147862e-13&lf;F-1.0658141036401503e-14&lf;tp97&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp98&lf;ssVindex_03_l&lf;p99&lf;(dp100&lf;g3&lf;(F-5.308123295365481e-21&lf;F2.1581542102166356e-40&lf;F4.6590149061444796e-18&lf;tp101&lf;sg5&lf;(F2.3173075307279305&lf;F2.842170943040401e-14&lf;F9.769962616701378e-15&lf;tp102&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp103&lf;ssVball_l&lf;p104&lf;(dp105&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp106&lf;sg5&lf;(F-5.707299374390027&lf;F-11.471697092323957&lf;F-0.0017138404028358423&lf;tp107&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp108&lf;ssVupperarm_twist_01_l&lf;p109&lf;(dp110&lf;g3&lf;(F2.5988450325576927e-15&lf;F1.4877974460841166e-16&lf;F3.2046487033437818e-15&lf;tp111&lf;sg5&lf;(F8.63996069843948&lf;F-0.09628023891043291&lf;F-0.16557725147991675&lf;tp112&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp113&lf;ssVclavicle_r&lf;p114&lf;(dp115&lf;g3&lf;(F180.0&lf;F180.0&lf;F-180.0&lf;tp116&lf;sg5&lf;(F5.433600703058573&lf;F0.9365499957792274&lf;F0.8688515061571342&lf;tp117&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp118&lf;ssVwrist_inner_r&lf;p119&lf;(dp120&lf;g3&lf;(F-1.2709794684129601e-14&lf;F3.1805546814635168e-15&lf;F-3.578124016646457e-15&lf;tp121&lf;sg5&lf;(F0.05073241165543152&lf;F-1.456593948087047&lf;F0.4146242448130657&lf;tp122&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp123&lf;ssVthigh_out_l&lf;p124&lf;(dp125&lf;g3&lf;(F-7.841617927850014e-09&lf;F-1.611360794686607e-08&lf;F-6.402664334885883e-09&lf;tp126&lf;sg5&lf;(F5.488080642544915&lf;F1.2215333393427994&lf;F-4.541695609589556&lf;tp127&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp128&lf;ssVclavicle_out_l&lf;p129&lf;(dp130&lf;g3&lf;(F2.1369351765716433e-15&lf;F-3.0719030044415276e-10&lf;F1.3674210922985612e-14&lf;tp131&lf;sg5&lf;(F10.05977550712825&lf;F0.047623277898917404&lf;F5.124009981794558&lf;tp132&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp133&lf;ssVthigh_l&lf;p134&lf;(dp135&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp136&lf;sg5&lf;(F-3.011926735188311&lf;F-0.06340308345171675&lf;F-10.395847431675032&lf;tp137&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp138&lf;ssVcalf_correctiveRoot_l&lf;p139&lf;(dp140&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp141&lf;sg5&lf;(F7.105427357601002e-15&lf;F-4.440892098500626e-16&lf;F-8.881784197001252e-15&lf;tp142&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp143&lf;ssVclavicle_out_r&lf;p144&lf;(dp145&lf;g3&lf;(F1.5853077242196556e-14&lf;F-1.733539619516481e-08&lf;F-1.1745378447666112e-14&lf;tp146&lf;sg5&lf;(F-10.296855532639404&lf;F0.1711587055647632&lf;F-5.132314944700084&lf;tp147&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp148&lf;ssVfoot_l&lf;p149&lf;(dp150&lf;g3&lf;(F3.1060104311167183e-18&lf;F-3.975696764194372e-15&lf;F-7.450785178706153e-17&lf;tp151&lf;sg5&lf;(F-38.868305766260185&lf;F-1.8835664532534935e-06&lf;F-6.242941395839807e-06&lf;tp152&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp153&lf;ssVthigh_correctiveRoot_l&lf;p154&lf;(dp155&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp156&lf;sg5&lf;(F1.4210854715202004e-14&lf;F2.6645352591003757e-15&lf;F3.552713678800501e-15&lf;tp157&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp158&lf;ssVspine_01&lf;p159&lf;(dp160&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp161&lf;sg5&lf;(F2.303684184416582&lf;F3.552713678800501e-15&lf;F8.632417697329586e-16&lf;tp162&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp163&lf;ssVupperarm_out_r&lf;p164&lf;(dp165&lf;g3&lf;(F0.0&lf;F7.727962875304028e-09&lf;F0.0&lf;tp166&lf;sg5&lf;(F-0.0015998720624850193&lf;F-0.26206737267851477&lf;F-5.478375142778077&lf;tp167&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp168&lf;ssVmiddle_03_l&lf;p169&lf;(dp170&lf;g3&lf;(F-6.212020862233431e-18&lf;F-7.442292181433567e-17&lf;F3.975754016095629e-16&lf;tp171&lf;sg5&lf;(F2.7046150315646855&lf;F-7.105427357601002e-15&lf;F-7.105427357601002e-15&lf;tp172&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp173&lf;ssVring_02_r&lf;p174&lf;(dp175&lf;g3&lf;(F3.7272125173400593e-17&lf;F-9.93923337957349e-17&lf;F-9.541615512977564e-15&lf;tp176&lf;sg5&lf;(F-3.9621715292690425&lf;F1.5004568538756757e-05&lf;F-4.923994394800957e-05&lf;tp177&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp178&lf;ssVthumb_01_r&lf;p179&lf;(dp180&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp181&lf;sg5&lf;(F-2.4749759005593006&lf;F-1.2059805117236948&lf;F2.2430633666914694&lf;tp182&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp183&lf;ssVthumb_01_l&lf;p184&lf;(dp185&lf;g3&lf;(F-1.3517357396219944e-14&lf;F-7.951386703658789e-15&lf;F3.1805546814635168e-15&lf;tp186&lf;sg5&lf;(F2.4749410357123125&lf;F1.2059493890390485&lf;F-2.242953361528688&lf;tp187&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp188&lf;ssVring_02_l&lf;p189&lf;(dp190&lf;g3&lf;(F2.4848083448933737e-17&lf;F-1.4287647983136886e-16&lf;F-1.272226725726705e-14&lf;tp191&lf;sg5&lf;(F3.962151505953962&lf;F-1.4210854715202004e-14&lf;F-3.907985046680551e-14&lf;tp192&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp193&lf;ssVupperarm_out_l&lf;p194&lf;(dp195&lf;g3&lf;(F0.0&lf;F7.727962875304028e-09&lf;F0.0&lf;tp196&lf;sg5&lf;(F-0.13826645305934449&lf;F0.26872367525577534&lf;F5.293475235855169&lf;tp197&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp198&lf;ssVmiddle_03_r&lf;p199&lf;(dp200&lf;g3&lf;(F-1.5530052155583591e-18&lf;F-7.454425034680117e-17&lf;F1.5902788573384142e-15&lf;tp201&lf;sg5&lf;(F-2.7046326736289075&lf;F1.1443238847164139e-05&lf;F2.466278816015688e-05&lf;tp202&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp203&lf;ssVankle_fwd_r&lf;p204&lf;(dp205&lf;g3&lf;(F3.602972100095387e-16&lf;F-2.882377680076312e-15&lf;F1.1927080055488187e-14&lf;tp206&lf;sg5&lf;(F-1.6349691499013561&lf;F4.197070299797255&lf;F-0.4635870315139865&lf;tp207&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp208&lf;ssVthigh_correctiveRoot_r&lf;p209&lf;(dp210&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp211&lf;sg5&lf;(F0.0&lf;F-1.7763568394002505e-15&lf;F-5.329070518200751e-15&lf;tp212&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp213&lf;ssVcalf_correctiveRoot_r&lf;p214&lf;(dp215&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp216&lf;sg5&lf;(F7.105427357601002e-15&lf;F-8.881784197001252e-16&lf;F-1.7763568394002505e-15&lf;tp217&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp218&lf;ssVthigh_bck_lwr_l&lf;p219&lf;(dp220&lf;g3&lf;(F2.5444437451708134e-14&lf;F0.0&lf;F0.0&lf;tp221&lf;sg5&lf;(F-5.597656441629496&lf;F9.947071814613224&lf;F1.4709560480788824&lf;tp222&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp223&lf;ssVupperarm_twistCor_01_r&lf;p224&lf;(dp225&lf;g3&lf;(F-5.715515408476811e-05&lf;F0.2392973804678571&lf;F-0.013684890989359285&lf;tp226&lf;sg5&lf;(F0.22332124117612295&lf;F-0.09634080925396127&lf;F-0.16646707192127508&lf;tp227&lf;sg7&lf;(F0.9999999999999997&lf;F1.0&lf;F0.9999999999999998&lf;tp228&lf;ssVhand_r&lf;p229&lf;(dp230&lf;g3&lf;(F-1.9878466759146967e-16&lf;F-4.770832022195275e-15&lf;F-3.1805546814635168e-15&lf;tp231&lf;sg5&lf;(F-24.320337470574643&lf;F-0.0002950651889577216&lf;F0.0003046297929785169&lf;tp232&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp233&lf;ssVthumb_03_l&lf;p234&lf;(dp235&lf;g3&lf;(F-3.416611474228386e-17&lf;F-4.7366659074529904e-17&lf;F-4.246498636292382e-20&lf;tp236&lf;sg5&lf;(F2.5261795391662645&lf;F3.552713678800501e-14&lf;F-4.263256414560601e-14&lf;tp237&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp238&lf;ssVhand_l&lf;p239&lf;(dp240&lf;g3&lf;(F-6.6592863643142385e-15&lf;F-3.1805546814635168e-15&lf;F-3.1805546814635164e-15&lf;tp241&lf;sg5&lf;(F24.32004358863988&lf;F0.0&lf;F1.4210854715202004e-14&lf;tp242&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp243&lf;ssVthumb_03_r&lf;p244&lf;(dp245&lf;g3&lf;(F-2.174207301781701e-17&lf;F-2.348920388532016e-17&lf;F-4.770874487181638e-15&lf;tp246&lf;sg5&lf;(F-2.526164976356057&lf;F-4.6664516247574284e-05&lf;F7.370655225713563e-06&lf;tp247&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp248&lf;ssVupperarm_twistCor_01_l&lf;p249&lf;(dp250&lf;g3&lf;(F-5.7155154111593384e-05&lf;F0.23929738046885052&lf;F-0.013684890989412526&lf;tp251&lf;sg5&lf;(F-0.22347730841758562&lf;F0.09633378358038591&lf;F0.16651206011033537&lf;tp252&lf;sg7&lf;(F0.9999999999999999&lf;F1.0&lf;F0.9999999999999999&lf;tp253&lf;ssVthigh_bck_lwr_r&lf;p254&lf;(dp255&lf;g3&lf;(F-2.5444437451708134e-14&lf;F0.0&lf;F0.0&lf;tp256&lf;sg5&lf;(F5.844458568800249&lf;F-10.021941949068122&lf;F-1.8531909603709966&lf;tp257&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp258&lf;ssVupperarm_in_r&lf;p259&lf;(dp260&lf;g3&lf;(F-4.0183257565534246e-10&lf;F-4.683048712998474e-10&lf;F-3.3057467384465757e-10&lf;tp261&lf;sg5&lf;(F-5.2225564187980495&lf;F1.2711843167447734&lf;F3.8834782317378966&lf;tp262&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp263&lf;ssVlowerarm_fwd_r&lf;p264&lf;(dp265&lf;g3&lf;(F2.5444437451708134e-14&lf;F0.0&lf;F0.0&lf;tp266&lf;sg5&lf;(F-1.3920519520020491&lf;F2.2598182327670386&lf;F-0.5667739685873983&lf;tp267&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp268&lf;ssVlowerarm_out_r&lf;p269&lf;(dp270&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp271&lf;sg5&lf;(F-0.6170078789895399&lf;F-1.280766963895374&lf;F-2.1175791102128443&lf;tp272&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp273&lf;ssVankle_bck_r&lf;p274&lf;(dp275&lf;g3&lf;(F-1.8803787149980595e-14&lf;F3.9756933518293936e-15&lf;F-1.1877383888590321e-14&lf;tp276&lf;sg5&lf;(F-0.6507357602611608&lf;F-3.799005098240129&lf;F0.5425226013393445&lf;tp277&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp278&lf;ssVupperarm_bck_r&lf;p279&lf;(dp280&lf;g3&lf;(F-1.631032968523696e-08&lf;F-1.793436243543718e-08&lf;F6.623600521598822e-09&lf;tp281&lf;sg5&lf;(F-1.613973273688245&lf;F-5.899539327146831&lf;F-0.6838130492740362&lf;tp282&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp283&lf;ssVupperarm_bck_l&lf;p284&lf;(dp285&lf;g3&lf;(F-1.631031696301823e-08&lf;F-1.7934362477562443e-08&lf;F6.623600333685193e-09&lf;tp286&lf;sg5&lf;(F1.453320472410553&lf;F5.922331709928633&lf;F0.5193119630590957&lf;tp287&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp288&lf;ssVankle_bck_l&lf;p289&lf;(dp290&lf;g3&lf;(F4.821925894076175e-14&lf;F4.709965190659037e-08&lf;F7.032007635867419e-15&lf;tp291&lf;sg5&lf;(F0.7196897359995171&lf;F3.149843256350702&lf;F-0.1865279959374142&lf;tp292&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp293&lf;ssVlowerarm_fwd_l&lf;p294&lf;(dp295&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp296&lf;sg5&lf;(F1.3286701233338505&lf;F-2.523348037160204&lf;F0.4477197471650243&lf;tp297&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp298&lf;ssVmiddle_01_r&lf;p299&lf;(dp300&lf;g3&lf;(F-2.3854160110976384e-15&lf;F5.665363026356887e-15&lf;F-1.8884543421189624e-14&lf;tp301&lf;sg5&lf;(F-5.182307875635303&lf;F1.2473883217012371e-05&lf;F4.441538994015559e-05&lf;tp302&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp303&lf;ssVcalf_twist_02_l&lf;p304&lf;(dp305&lf;g3&lf;(F-1.2813263656616176e-15&lf;F1.2695893467522358e-18&lf;F-7.368169808403853e-17&lf;tp306&lf;sg5&lf;(F-12.958133997348298&lf;F-0.13437907398599447&lf;F0.11553495636094979&lf;tp307&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp308&lf;ssVlowerarm_twist_01_r&lf;p309&lf;(dp310&lf;g3&lf;(F-1.6743337480238544e-18&lf;F-1.428764306601375e-15&lf;F-1.2424050610833987e-17&lf;tp311&lf;sg5&lf;(F-15.709295982891412&lf;F0.0653041102279559&lf;F0.03263931215387572&lf;tp312&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp313&lf;ssVspine_04_latissimus_r&lf;p314&lf;(dp315&lf;g3&lf;(F-2.1200329155989934e-09&lf;F-2.0738501467058974e-08&lf;F9.430233311509153e-09&lf;tp316&lf;sg5&lf;(F-7.8201672809249345&lf;F3.0343685369015496&lf;F11.943057680552283&lf;tp317&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp318&lf;ssVspine_04_latissimus_l&lf;p319&lf;(dp320&lf;g3&lf;(F5.5057566312661764e-09&lf;F1.6766699921248585e-08&lf;F7.858422271679882e-09&lf;tp321&lf;sg5&lf;(F-7.810114020338162&lf;F3.0346754472192004&lf;F-11.935268925526474&lf;tp322&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp323&lf;ssVlowerarm_twist_01_l&lf;p324&lf;(dp325&lf;g3&lf;(F2.0627063804459095e-16&lf;F1.0062276329226985e-15&lf;F-1.2320628108123222e-17&lf;tp326&lf;sg5&lf;(F15.709011726426546&lf;F-0.06554904986637666&lf;F-0.03229837036940353&lf;tp327&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp328&lf;ssVcalf_twist_02_r&lf;p329&lf;(dp330&lf;g3&lf;(F-1.0969433948738022e-15&lf;F-1.1337156085782787e-17&lf;F-7.38058228600257e-17&lf;tp331&lf;sg5&lf;(F12.958172261711361&lf;F0.13438813926951898&lf;F-0.11546192380812315&lf;tp332&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp333&lf;ssVmiddle_01_l&lf;p334&lf;(dp335&lf;g3&lf;(F-1.5902773407317584e-15&lf;F-2.087239009710433e-15&lf;F2.8966260080954173e-32&lf;tp336&lf;sg5&lf;(F5.182243307643894&lf;F4.263256414560601e-14&lf;F-2.4868995751603507e-14&lf;tp337&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp338&lf;ssVcalf_knee_r&lf;p339&lf;(dp340&lf;g3&lf;(F-9.373939481779854e-15&lf;F-6.433371167720549e-09&lf;F1.1927080056014457e-14&lf;tp341&lf;sg5&lf;(F-0.04499406685729923&lf;F4.304237479045141&lf;F-0.11863616250326992&lf;tp342&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp343&lf;ssVclavicle_scap_r&lf;p344&lf;(dp345&lf;g3&lf;(F-7.2333774824279544e-12&lf;F-5.447464020267169e-09&lf;F2.099599539267737e-08&lf;tp346&lf;sg5&lf;(F-8.497017971073436&lf;F-5.6879741751418536&lf;F2.203234247844506&lf;tp347&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp348&lf;ssVclavicle_pec_l&lf;p349&lf;(dp350&lf;g3&lf;(F5.934906090541604e-09&lf;F-4.328964219255888e-09&lf;F-6.3721458878959175e-09&lf;tp351&lf;sg5&lf;(F-7.859747892191649&lf;F-9.235935633950017&lf;F-9.161680251024567&lf;tp352&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp353&lf;ssVcalf_knee_l&lf;p354&lf;(dp355&lf;g3&lf;(F1.1771779534322956e-14&lf;F-6.4333697762278764e-09&lf;F-6.9574633663623315e-15&lf;tp356&lf;sg5&lf;(F0.04207871964077725&lf;F-4.30754958067433&lf;F0.1160674853346002&lf;tp357&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp358&lf;ssVclavicle_scap_l&lf;p359&lf;(dp360&lf;g3&lf;(F-2.0063835062731552e-11&lf;F-8.936741229731349e-09&lf;F2.0529569357960723e-08&lf;tp361&lf;sg5&lf;(F8.269065264677947&lf;F5.697957688764333&lf;F-2.2342434592936797&lf;tp362&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp363&lf;ssVfoot_r&lf;p364&lf;(dp365&lf;g3&lf;(F3.4942617350063054e-18&lf;F2.2716118211881422e-36&lf;F-7.449571893381498e-17&lf;tp366&lf;sg5&lf;(F38.8683479675059&lf;F4.218847493575595e-15&lf;F-1.7763568394002505e-15&lf;tp367&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp368&lf;ssVupperarm_in_l&lf;p369&lf;(dp370&lf;g3&lf;(F-4.0185802536309686e-10&lf;F-4.683430379560251e-10&lf;F-3.305746816879782e-10&lf;tp371&lf;sg5&lf;(F5.574552996471354&lf;F-1.4832878115397845&lf;F-4.299906325106548&lf;tp372&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp373&lf;ssVlowerarm_out_l&lf;p374&lf;(dp375&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp376&lf;sg5&lf;(F0.5829331297469622&lf;F0.9090844050165288&lf;F1.8502389625441538&lf;tp377&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp378&lf;ssVthumb_02_l&lf;p379&lf;(dp380&lf;g3&lf;(F6.0918383961604464e-33&lf;F7.299124513124281e-17&lf;F9.563794368712256e-15&lf;tp381&lf;sg5&lf;(F4.316671956003702&lf;F0.0&lf;F3.552713678800501e-14&lf;tp382&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp383&lf;ssVankle_fwd_l&lf;p384&lf;(dp385&lf;g3&lf;(F2.4532823392578864e-14&lf;F-3.8486528438178006e-08&lf;F-7.156248041532465e-15&lf;tp386&lf;sg5&lf;(F1.2908153718236504&lf;F-3.768957865912955&lf;F-0.07680916272578031&lf;tp387&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp388&lf;ssVthumb_02_r&lf;p389&lf;(dp390&lf;g3&lf;(F3.975693351829394e-16&lf;F-1.584065319869525e-15&lf;F1.2723383479765737e-14&lf;tp391&lf;sg5&lf;(F-4.316661343859899&lf;F-2.3635732418370026e-05&lf;F-4.3211523554020914e-05&lf;tp392&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp393&lf;ssVindex_metacarpal_l&lf;p394&lf;(dp395&lf;g3&lf;(F-4.708711813572941e-15&lf;F9.939233379573501e-17&lf;F2.4848083448933726e-15&lf;tp396&lf;sg5&lf;(F3.4579468886887668&lf;F0.010562601629231949&lf;F-1.5292670130053594&lf;tp397&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp398&lf;ssVlowerarm_in_l&lf;p399&lf;(dp400&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp401&lf;sg5&lf;(F1.3306420256329048&lf;F0.24547389055802427&lf;F-2.7035021548269356&lf;tp402&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp403&lf;ssVlowerarm_twist_02_r&lf;p404&lf;(dp405&lf;g3&lf;(F-6.721600698588516e-18&lf;F-5.715057220481254e-15&lf;F-3.2583346120769835e-23&lf;tp406&lf;sg5&lf;(F-7.8497274814736855&lf;F0.10257835424635431&lf;F0.03918630802392897&lf;tp407&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp408&lf;ssVcalf_twist_01_l&lf;p409&lf;(dp410&lf;g3&lf;(F-8.492997272584769e-20&lf;F-1.1848489498583718e-23&lf;F-7.454422664982217e-17&lf;tp411&lf;sg5&lf;(F-25.92498684096225&lf;F-0.08807316453161773&lf;F0.10071990957672128&lf;tp412&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp413&lf;ssVupperarm_r&lf;p414&lf;(dp415&lf;g3&lf;(F-1.0933156717530838e-15&lf;F1.2424041724466842e-17&lf;F-1.987846675914698e-15&lf;tp416&lf;sg5&lf;(F-14.246069020159924&lf;F-3.984049673277923e-06&lf;F-0.00038072217765261485&lf;tp417&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp418&lf;ssVcalf_twistCor_02_r&lf;p419&lf;(dp420&lf;g3&lf;(F7.504981906187296e-13&lf;F5.256448295143624e-18&lf;F5.706716964926347e-10&lf;tp421&lf;sg5&lf;(F-1.2789769243681803e-12&lf;F2.353672812205332e-14&lf;F0.0&lf;tp422&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp423&lf;ssVthigh_bck_l&lf;p424&lf;(dp425&lf;g3&lf;(F-3.3281960298549105e-10&lf;F7.492530405354367e-09&lf;F-1.1907707579416888e-10&lf;tp426&lf;sg5&lf;(F3.5690050994295888&lf;F10.405499415408876&lf;F2.1497621859770657&lf;tp427&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp428&lf;ssVindex_02_l&lf;p429&lf;(dp430&lf;g3&lf;(F-3.727212517340059e-17&lf;F3.8825130388958945e-18&lf;F-7.279711947929802e-20&lf;tp431&lf;sg5&lf;(F4.25400585260217&lf;F-2.842170943040401e-14&lf;F-7.105427357601002e-15&lf;tp432&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp433&lf;ssVthigh_bck_r&lf;p434&lf;(dp435&lf;g3&lf;(F4.547938750138404e-10&lf;F1.2473182494297477e-09&lf;F1.8459230383879978e-10&lf;tp436&lf;sg5&lf;(F-3.570662230365997&lf;F-10.412042020771928&lf;F-2.17580140441963&lf;tp437&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp438&lf;ssVindex_02_r&lf;p439&lf;(dp440&lf;g3&lf;(F-3.727212517340059e-17&lf;F3.1060104311167156e-18&lf;F-8.492997272584769e-20&lf;tp441&lf;sg5&lf;(F-4.254001839627506&lf;F2.1309285713755344e-05&lf;F8.939731338131196e-05&lf;tp442&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp443&lf;ssVneck_02&lf;p444&lf;(dp445&lf;g3&lf;(F-2.426570649309934e-19&lf;F-3.727212517340059e-17&lf;F2.84363747966008e-22&lf;tp446&lf;sg5&lf;(F5.450919182046334&lf;F1.4210854715202004e-14&lf;F1.3086753902769033e-14&lf;tp447&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp448&lf;ssVneck_01&lf;p449&lf;(dp450&lf;g3&lf;(F3.1060104311167156e-18&lf;F-1.941256519447947e-18&lf;F-9.541663760026802e-15&lf;tp451&lf;sg5&lf;(F11.10442132885018&lf;F1.4210854715202004e-14&lf;F1.2705114738054135e-14&lf;tp452&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp453&lf;ssVcalf_twist_01_r&lf;p454&lf;(dp455&lf;g3&lf;(F-6.066426623274834e-20&lf;F-1.2424077269935359e-17&lf;F-7.454424442255643e-17&lf;tp456&lf;sg5&lf;(F25.925076009789063&lf;F0.08808086210734589&lf;F-0.10067777201496497&lf;tp457&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp458&lf;ssVupperarm_l&lf;p459&lf;(dp460&lf;g3&lf;(F-3.578124016646457e-15&lf;F-7.454425034680119e-17&lf;F-3.975693351829396e-16&lf;tp461&lf;sg5&lf;(F14.246126391528867&lf;F3.9968028886505635e-15&lf;F-2.842170943040401e-14&lf;tp462&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp463&lf;ssVlowerarm_twist_02_l&lf;p464&lf;(dp465&lf;g3&lf;(F8.251007514582334e-16&lf;F4.01248648404208e-15&lf;F-4.9282568712817974e-17&lf;tp466&lf;sg5&lf;(F7.849649281922929&lf;F-0.10263520133286619&lf;F-0.039097261663499694&lf;tp467&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp468&lf;ssVhead&lf;p469&lf;(dp470&lf;g3&lf;(F-4.6590156466750695e-18&lf;F5.056973233161904e-17&lf;F1.113193759360567e-14&lf;tp471&lf;sg5&lf;(F5.366716115241388&lf;F-7.105427357601002e-15&lf;F3.309852392163748e-14&lf;tp472&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp473&lf;ssVthigh_twist_02_l&lf;p474&lf;(dp475&lf;g3&lf;(F-9.220968467377749e-16&lf;F-4.926728712348722e-17&lf;F2.279365015779531e-18&lf;tp476&lf;sg5&lf;(F-28.47903032534198&lf;F0.17386366818659837&lf;F0.0056687508871462455&lf;tp477&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp478&lf;ssVthigh_fwd_lwr_r&lf;p479&lf;(dp480&lf;g3&lf;(F-2.5444437451708134e-14&lf;F0.0&lf;F0.0&lf;tp481&lf;sg5&lf;(F-0.4782982245318834&lf;F6.809431755534755&lf;F-0.7662289287193396&lf;tp482&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp483&lf;ssVring_metacarpal_r&lf;p484&lf;(dp485&lf;g3&lf;(F-6.957463365701443e-16&lf;F4.969616689786745e-16&lf;F-3.1805546814635168e-15&lf;tp486&lf;sg5&lf;(F-2.804780390195006&lf;F-0.22716314349776212&lf;F-1.059677422149715&lf;tp487&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp488&lf;ssVpinky_03_l&lf;p489&lf;(dp490&lf;g3&lf;(F-1.1647539116687691e-18&lf;F3.7344922292879887e-17&lf;F-2.385414873642646e-15&lf;tp491&lf;sg5&lf;(F1.6696361810729314&lf;F-4.973799150320701e-14&lf;F7.105427357601002e-15&lf;tp492&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp493&lf;ssVlowerarm_r&lf;p494&lf;(dp495&lf;g3&lf;(F-1.1181637552020177e-16&lf;F1.2734642767578534e-16&lf;F1.2132853246549658e-19&lf;tp496&lf;sg5&lf;(F-25.246899842795102&lf;F2.8223703232299613e-05&lf;F-0.0003521030096464983&lf;tp497&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp498&lf;ssVpinky_01_r&lf;p499&lf;(dp500&lf;g3&lf;(F1.7393658414253607e-16&lf;F-1.8636062586700284e-17&lf;F-6.359944609015365e-15&lf;tp501&lf;sg5&lf;(F-4.397007478658836&lf;F-4.320010107505823e-05&lf;F-2.742241442632576e-05&lf;tp502&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp503&lf;ssVthigh_twist_01_r&lf;p504&lf;(dp505&lf;g3&lf;(F-2.4265706493099345e-18&lf;F-4.9695017594386094e-17&lf;F1.2430155545048131e-17&lf;tp506&lf;sg5&lf;(F14.287114027195173&lf;F-0.2111677104455696&lf;F-0.0656104539200193&lf;tp507&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp508&lf;ssVclavicle_pec_r&lf;p509&lf;(dp510&lf;g3&lf;(F9.293300890747829e-09&lf;F-5.707670764203161e-09&lf;F-6.492766834151767e-09&lf;tp511&lf;sg5&lf;(F-7.865587754738414&lf;F-9.462906268526464&lf;F9.48653599414189&lf;tp512&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp513&lf;ssVpinky_01_l&lf;p514&lf;(dp515&lf;g3&lf;(F2.4848083448933823e-17&lf;F-1.0094533901129326e-15&lf;F-1.113038837990675e-14&lf;tp516&lf;sg5&lf;(F4.3969685310509234&lf;F-1.4210854715202004e-14&lf;F-6.039613253960852e-14&lf;tp517&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp518&lf;ssVthigh_twist_01_l&lf;p519&lf;(dp520&lf;g3&lf;(F-2.4209895368165213e-16&lf;F-4.9583558853672917e-17&lf;F6.810511763785889e-18&lf;tp521&lf;sg5&lf;(F-14.287183632223432&lf;F0.21116362092060248&lf;F0.06561795810833893&lf;tp522&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp523&lf;ssVlowerarm_l&lf;p524&lf;(dp525&lf;g3&lf;(F-7.454425034680117e-17&lf;F8.386228164015132e-17&lf;F7.279711947929797e-20&lf;tp526&lf;sg5&lf;(F25.247300689778797&lf;F-5.329070518200751e-15&lf;F-4.263256414560601e-14&lf;tp527&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp528&lf;ssVpinky_03_r&lf;p529&lf;(dp530&lf;g3&lf;(F3.8825130388958945e-19&lf;F1.2436174577713411e-17&lf;F3.791516639546773e-22&lf;tp531&lf;sg5&lf;(F-1.669605250518572&lf;F-8.182164268788483e-05&lf;F-2.731165606206787e-05&lf;tp532&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp533&lf;ssVthigh_fwd_lwr_l&lf;p534&lf;(dp535&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp536&lf;sg5&lf;(F0.39812935021383566&lf;F-7.309934383244445&lf;F0.6883540989376549&lf;tp537&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp538&lf;ssVring_metacarpal_l&lf;p539&lf;(dp540&lf;g3&lf;(F1.2827915178708273e-31&lf;F-6.1623246953355635e-15&lf;F-2.3854160110976376e-15&lf;tp541&lf;sg5&lf;(F2.8047746330326007&lf;F0.22714913893837263&lf;F1.0596930230372124&lf;tp542&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp543&lf;ssVlowerarm_bck_r&lf;p544&lf;(dp545&lf;g3&lf;(F2.5444437451708134e-14&lf;F1.821991149690184e-07&lf;F7.600179899673703e-23&lf;tp546&lf;sg5&lf;(F-1.5862762297890214&lf;F-3.40166381371057&lf;F0.8892462340683522&lf;tp547&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp548&lf;ssVlowerarm_correctiveRoot_l&lf;p549&lf;(dp550&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp551&lf;sg5&lf;(F-3.552713678800501e-14&lf;F0.0&lf;F-5.684341886080802e-14&lf;tp552&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp553&lf;ssVpinky_02_l&lf;p554&lf;(dp555&lf;g3&lf;(F1.8636062586700294e-17&lf;F-7.76502607779179e-18&lf;F1.2722218725854067e-14&lf;tp556&lf;sg5&lf;(F2.6964561558300915&lf;F2.842170943040401e-14&lf;F3.552713678800501e-15&lf;tp557&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp558&lf;ssVcalf_twistCor_02_l&lf;p559&lf;(dp560&lf;g3&lf;(F7.786203609148045e-13&lf;F2.2381283947562397e-18&lf;F5.706716775610707e-10&lf;tp561&lf;sg5&lf;(F1.2931877790833823e-12&lf;F-2.3092638912203256e-14&lf;F-5.329070518200751e-15&lf;tp562&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp563&lf;ssVlowerarm_correctiveRoot_r&lf;p564&lf;(dp565&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp566&lf;sg5&lf;(F3.552713678800501e-14&lf;F0.0&lf;F-1.4210854715202004e-14&lf;tp567&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp568&lf;ssVpelvis&lf;p569&lf;(dp570&lf;g3&lf;(F-8.746525374024675e-15&lf;F1.9369081048443843e-14&lf;F-8.348956038841735e-15&lf;tp571&lf;sg5&lf;(F0.00010491341864091094&lf;F-2.2175793100900107&lf;F91.97877241348029&lf;tp572&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp573&lf;ssVlowerarm_bck_l&lf;p574&lf;(dp575&lf;g3&lf;(F0.0&lf;F1.821991149690184e-07&lf;F0.0&lf;tp576&lf;sg5&lf;(F1.3859786452671514&lf;F3.3413824665105096&lf;F-1.1761296577728615&lf;tp577&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp578&lf;ssVthigh_in_r&lf;p579&lf;(dp580&lf;g3&lf;(F-1.799777415242335e-11&lf;F1.7811260677643742e-08&lf;F-1.1301263803149778e-08&lf;tp581&lf;sg5&lf;(F9.68590753589298&lf;F0.7278592457790922&lf;F-8.591039347640994&lf;tp582&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp583&lf;ssVindex_01_l&lf;p584&lf;(dp585&lf;g3&lf;(F5.367186024969684e-15&lf;F-1.5902773407317588e-15&lf;F9.442271710594815e-15&lf;tp586&lf;sg5&lf;(F5.011096571254832&lf;F-4.263256414560601e-14&lf;F-3.552713678800501e-14&lf;tp587&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp588&lf;ssVupperarm_tricep_r&lf;p589&lf;(dp590&lf;g3&lf;(F3.7924387363587275e-14&lf;F6.075963094069785e-09&lf;F-6.5598940285076466e-15&lf;tp591&lf;sg5&lf;(F-0.2668024100145914&lf;F-4.4614700865646535&lf;F-0.06149644816963473&lf;tp592&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp593&lf;ssVthigh_twistCor_02_l&lf;p594&lf;(dp595&lf;g3&lf;(F-9.700266400628902e-13&lf;F4.420414151584964e-17&lf;F-1.9859764446290498e-10&lf;tp596&lf;sg5&lf;(F6.039613253960852e-13&lf;F1.8474111129762605e-13&lf;F-7.105427357601002e-15&lf;tp597&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp598&lf;ssVindex_03_r&lf;p599&lf;(dp600&lf;g3&lf;(F-4.549819967456126e-21&lf;F1.849846171874749e-40&lf;F4.659014165613886e-18&lf;tp601&lf;sg5&lf;(F-2.317379606058509&lf;F-3.482151544176304e-05&lf;F-1.4542190249322573e-05&lf;tp602&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp603&lf;ssVwrist_outer_r&lf;p604&lf;(dp605&lf;g3&lf;(F-2.5456861493432594e-14&lf;F-3.379339349054985e-15&lf;F3.1805546814635168e-15&lf;tp606&lf;sg5&lf;(F-0.03274741621405042&lf;F1.6563393407212317&lf;F0.025852490706835596&lf;tp607&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp608&lf;ssVwrist_outer_l&lf;p609&lf;(dp610&lf;g3&lf;(F-5.783391422739323e-14&lf;F9.34287937679908e-15&lf;F4.373262687012329e-15&lf;tp611&lf;sg5&lf;(F-0.03377910590610611&lf;F-1.4964501513575073&lf;F-0.18007976338952147&lf;tp612&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp613&lf;ssVpinky_metacarpal_r&lf;p614&lf;(dp615&lf;g3&lf;(F1.3914926731402885e-14&lf;F-1.5902773407317588e-15&lf;F1.5902773407317582e-15&lf;tp616&lf;sg5&lf;(F-2.558789946909897&lf;F-0.5003207482651391&lf;F-2.0640128067549632&lf;tp617&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp618&lf;ssVupperarm_tricep_l&lf;p619&lf;(dp620&lf;g3&lf;(F1.2424042072290844e-17&lf;F6.0759658770551315e-09&lf;F6.5598940305191614e-15&lf;tp621&lf;sg5&lf;(F0.11027252258691078&lf;F4.4684969383725015&lf;F-0.13297608266564964&lf;tp622&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp623&lf;ssVthigh_twistCor_02_r&lf;p624&lf;(dp625&lf;g3&lf;(F-9.971666437558038e-13&lf;F7.130715464304176e-18&lf;F-1.9859764570803904e-10&lf;tp626&lf;sg5&lf;(F-6.252776074688882e-13&lf;F-1.829647544582258e-13&lf;F7.105427357601002e-15&lf;tp627&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp628&lf;ssVindex_01_r&lf;p629&lf;(dp630&lf;g3&lf;(F-1.987846675914698e-16&lf;F-1.7241821476758432e-34&lf;F-9.93923337957349e-17&lf;tp631&lf;sg5&lf;(F-5.011125795495047&lf;F1.255617310391699e-05&lf;F-3.957483904848402e-05&lf;tp632&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp633&lf;ssVthigh_in_l&lf;p634&lf;(dp635&lf;g3&lf;(F7.81972953015046e-10&lf;F1.783717115280913e-08&lf;F2.898665566940874e-09&lf;tp636&lf;sg5&lf;(F-9.624813217005851&lf;F-0.7872489589315337&lf;F8.569114048741081&lf;tp637&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp638&lf;ssVmiddle_metacarpal_l&lf;p639&lf;(dp640&lf;g3&lf;(F5.168401357378214e-15&lf;F4.721135855297406e-15&lf;F6.162324695335562e-15&lf;tp641&lf;sg5&lf;(F2.9473948030703525&lf;F-1.4210854715202004e-14&lf;F2.4868995751603507e-14&lf;tp642&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp643&lf;ssVring_01_r&lf;p644&lf;(dp645&lf;g3&lf;(F3.7272125173400585e-16&lf;F-9.939233379573484e-17&lf;F-1.90833280887811e-14&lf;tp646&lf;sg5&lf;(F-4.653074699202811&lf;F-2.4532645610975123e-05&lf;F5.51067713736586e-05&lf;tp647&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp648&lf;ssVupperarm_correctiveRoot_r&lf;p649&lf;(dp650&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp651&lf;sg5&lf;(F1.4210854715202004e-14&lf;F-4.440892098500626e-15&lf;F2.842170943040401e-14&lf;tp652&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp653&lf;ssVcalf_kneeBack_l&lf;p654&lf;(dp655&lf;g3&lf;(F8.63470899849898e-15&lf;F-9.039156283186074e-11&lf;F6.957463365694632e-15&lf;tp656&lf;sg5&lf;(F0.2417278422375233&lf;F4.878562416091983&lf;F0.29022114718005376&lf;tp657&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp658&lf;ssVcalf_kneeBack_r&lf;p659&lf;(dp660&lf;g3&lf;(F-2.35124989635446e-14&lf;F-9.039096647785796e-11&lf;F-1.1330726052695231e-14&lf;tp661&lf;sg5&lf;(F-0.2449349235955367&lf;F-4.883272954147831&lf;F-0.3136576664737962&lf;tp662&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp663&lf;ssVring_01_l&lf;p664&lf;(dp665&lf;g3&lf;(F3.354491265606054e-16&lf;F-3.975693351829396e-16&lf;F-1.9084881093996662e-14&lf;tp666&lf;sg5&lf;(F4.653086398712624&lf;F4.263256414560601e-14&lf;F-1.0658141036401503e-14&lf;tp667&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp668&lf;ssVupperarm_correctiveRoot_l&lf;p669&lf;(dp670&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp671&lf;sg5&lf;(F2.842170943040401e-14&lf;F0.0&lf;F1.4210854715202004e-14&lf;tp672&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp673&lf;ssVmiddle_metacarpal_r&lf;p674&lf;(dp675&lf;g3&lf;(F2.5842006786891076e-15&lf;F3.0811623476677818e-15&lf;F4.721135855297408e-15&lf;tp676&lf;sg5&lf;(F-2.9473407769463975&lf;F-3.6594834583070224e-05&lf;F5.6656297143575785e-05&lf;tp677&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp678&lf;ssVthigh_twist_02_r&lf;p679&lf;(dp680&lf;g3&lf;(F7.939739164542105e-16&lf;F-5.006542507309081e-17&lf;F1.0461552711837454e-17&lf;tp681&lf;sg5&lf;(F28.47895122626658&lf;F-0.17387919837305565&lf;F-0.005720635786287787&lf;tp682&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp683&lf;ssVring_03_r&lf;p684&lf;(dp685&lf;g3&lf;(F-3.1060104311167156e-18&lf;F-1.9897879324341458e-16&lf;F-4.2464986362923846e-20&lf;tp686&lf;sg5&lf;(F-3.0146802324974686&lf;F-4.5867904766794254e-05&lf;F6.070594956142372e-05&lf;tp687&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp688&lf;ssVupperarm_fwd_r&lf;p689&lf;(dp690&lf;g3&lf;(F2.5414619751459016e-11&lf;F-1.8553765734468644e-11&lf;F6.818250487293744e-10&lf;tp691&lf;sg5&lf;(F-3.1383986238786576&lf;F6.085192473500279&lf;F0.3701752564989107&lf;tp692&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp693&lf;ssVcalf_r&lf;p694&lf;(dp695&lf;g3&lf;(F7.765026077791785e-19&lf;F-7.453211749355463e-17&lf;F5.963577942910489e-16&lf;tp696&lf;sg5&lf;(F42.6392716823317&lf;F-1.7763568394002505e-15&lf;F1.2434497875801753e-14&lf;tp697&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp698&lf;ssVupperarm_twistCor_02_r&lf;p699&lf;(dp700&lf;g3&lf;(F-5.7155154104789345e-05&lf;F0.2392973804678591&lf;F-0.01368489098937418&lf;tp701&lf;sg5&lf;(F-4.263256414560601e-14&lf;F7.105427357601002e-15&lf;F5.684341886080802e-14&lf;tp702&lf;sg7&lf;(F0.9999999999999997&lf;F1.0&lf;F0.9999999999999998&lf;tp703&lf;ssVmiddle_02_r&lf;p704&lf;(dp705&lf;g3&lf;(F-7.45442503468011e-17&lf;F4.080521203879585e-16&lf;F2.2263640113179687e-14&lf;tp706&lf;sg5&lf;(F-4.584910207198277&lf;F-3.1438676543871225e-05&lf;F-3.066261484363508e-05&lf;tp707&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp708&lf;ssVpinky_metacarpal_l&lf;p709&lf;(dp710&lf;g3&lf;(F-3.180554681463515e-15&lf;F1.3318572728628474e-14&lf;F3.180554681463515e-15&lf;tp711&lf;sg5&lf;(F2.558828022670248&lf;F0.5003618244700903&lf;F2.064049345253842&lf;tp712&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp713&lf;ssVthigh_r&lf;p714&lf;(dp715&lf;g3&lf;(F-3.620782510119271e-33&lf;F-2.3854160110976376e-15&lf;F1.7393658414253607e-16&lf;tp716&lf;sg5&lf;(F-3.012337184531063&lf;F-0.06336612202783964&lf;F10.395765560224552&lf;tp717&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp718&lf;ssVmiddle_02_l&lf;p719&lf;(dp720&lf;g3&lf;(F-8.696829207126799e-17&lf;F4.158171464657503e-16&lf;F1.9082854907504484e-14&lf;tp721&lf;sg5&lf;(F4.58496782082122&lf;F-1.4210854715202004e-14&lf;F-2.842170943040401e-14&lf;tp722&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp723&lf;ssVpinky_02_r&lf;p724&lf;(dp725&lf;g3&lf;(F1.2424041724466862e-17&lf;F-7.765026077791789e-17&lf;F-9.706282597239736e-20&lf;tp726&lf;sg5&lf;(F-2.696477533033118&lf;F3.068206100920179e-05&lf;F5.3911045487353704e-05&lf;tp727&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp728&lf;ssVupperarm_twistCor_02_l&lf;p729&lf;(dp730&lf;g3&lf;(F-5.715515410377221e-05&lf;F0.23929738046881302&lf;F-0.013684890989438625&lf;tp731&lf;sg5&lf;(F8.526512829121202e-14&lf;F7.105427357601002e-15&lf;F-4.263256414560601e-14&lf;tp732&lf;sg7&lf;(F0.9999999999999999&lf;F1.0&lf;F0.9999999999999999&lf;tp733&lf;ssVcalf_l&lf;p734&lf;(dp735&lf;g3&lf;(F2.717759127227125e-18&lf;F-7.451998464030805e-17&lf;F5.963555193810652e-16&lf;tp736&lf;sg5&lf;(F-42.63936190162267&lf;F-7.829074149423576e-06&lf;F-4.4586872256502375e-05&lf;tp737&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp738&lf;ssVring_03_l&lf;p739&lf;(dp740&lf;g3&lf;(F0.0&lf;F0.0&lf;F0.0&lf;tp741&lf;sg5&lf;(F3.0147511882823608&lf;F-4.973799150320701e-14&lf;F-1.0658141036401503e-14&lf;tp742&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp743&lf;ssVupperarm_fwd_l&lf;p744&lf;(dp745&lf;g3&lf;(F2.5408755603765092e-11&lf;F-1.8548994902446404e-11&lf;F6.818210730360224e-10&lf;tp746&lf;sg5&lf;(F2.998532437400442&lf;F-6.078429423751953&lf;F-0.5550002675375794&lf;tp747&lf;sg7&lf;(F1.0&lf;F1.0&lf;F1.0&lf;tp748&lf;ss.");
	setAttr ".fbxID" 2;
createNode joint -n "pelvis" -p "|UE5Full|root";
	rename -uid "175E1CD0-46DE-3ADC-801C-D0BFF104E595";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -3.4314998759166215e-17 -2.2808661460876465 95.896781921386719 ;
	setAttr ".r" -type "double3" -90.000000000001009 -86.366893050032431 90.000000000000796 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1.0000000000000004 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0 0.99799000000000004 -0.063367199999999999 0 0 -0.063367199999999999 -0.99799000000000004 0
		 -1 0 0 0 0 95.896782000000002 2.2808660000000001 1;
	setAttr ".fbxID" 5;
createNode joint -n "spine_01" -p "|UE5Full|root|pelvis";
	rename -uid "3CD53591-4BDD-E160-64C7-059B331FBDF8";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 3.6770534515380859 7.1054273576010019e-15 -4.5206953076261901e-16 ;
	setAttr ".r" -type "double3" 0 0 -14.457321828304915 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0 0.98220799999999997 0.18779599999999999 0 0 0.18779599999999999 -0.98220799999999997 0
		 -1 0 0 0 0 99.566445999999999 2.0478619999999998 1;
	setAttr ".fbxID" 5;
createNode joint -n "spine_02" -p "|UE5Full|root|pelvis|spine_01";
	rename -uid "33CF8F98-486D-68A3-1378-1DA2CF77028C";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 6.7950572967529297 2.1316282072803006e-14 2.1133375419299247e-16 ;
	setAttr ".r" -type "double3" 0 0 3.4644695084247528 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0 0.991761 0.12809899999999999 0 0 0.12809899999999999 -0.991761 0
		 -1 0 0 0 0 106.240605 3.3239489999999998 1;
	setAttr ".fbxID" 5;
createNode joint -n "spine_03" -p "|UE5Full|root|pelvis|spine_01|spine_02";
	rename -uid "EDD28577-4DB3-A897-535C-33A6F2C7AFE9";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 7.2382278442382812 -2.1316282072803006e-14 1.506632591055597e-16 ;
	setAttr ".r" -type "double3" 0 0 10.946079405533538 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999956 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0 0.99804199999999998 -0.062552499999999997 0 0 -0.062552499999999997 -0.99804199999999998 0
		 -1 0 0 0 0 113.4192 4.2511580000000002 1;
	setAttr ".fbxID" 5;
createNode joint -n "spine_04" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03";
	rename -uid "B9E131F7-4313-B5C7-7E07-3B87120059F5";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 8.5238933563232422 -5.3290705182007514e-15 2.8456974482492638e-16 ;
	setAttr ".r" -type "double3" 0.00044952872062758461 -3.0332133116374176e-21 5.8669839318741586 ;
	setAttr ".s" -type "double3" 1 0.99999999999999956 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0 0.98641999999999996 -0.164244 0 -7.8457599999999992e-06 -0.164244 -0.98641999999999996 0
		 -1 1.2886200000000002e-06 7.7392099999999994e-06 0 0 121.926401 3.7179669999999998 1;
	setAttr ".fbxID" 5;
createNode joint -n "spine_05" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04";
	rename -uid "2393379E-4A6A-C11A-1466-3397A61E6A74";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "blendParent1" -ln "blendParent1" -dt "string";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 19.439800262451172 -1.7817309583278984e-07 -3.2154725930488848e-16 ;
	setAttr ".r" -type "double3" -0.00044949784312740739 5.34588068271325e-06 0.68138935939446854 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0 0.98439699999999997 -0.17596300000000001 0 0 -0.17596300000000001 -0.98439699999999997 0
		 -1 0 0 0 0 141.102204 0.52509700000000004 1;
	setAttr -k on ".blendParent1" -type "string" "1.000000";
	setAttr ".fbxID" 5;
createNode joint -n "neck_01" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05";
	rename -uid "4EB7C027-464A-EBAC-33B5-FC9DD2B85E95";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 11.887765884399414 1.0658141036401503e-14 1.5994318796304428e-15 ;
	setAttr ".r" -type "double3" 0 0 -23.928404052334628 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0 0.97116100000000005 0.238427 0 0 0.238427 -0.97116100000000005 0
		 -1 0 0 0 0 152.80448200000001 -1.56671 1;
	setAttr ".fbxID" 5;
createNode joint -n "neck_02" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|neck_01";
	rename -uid "82E19055-4EC8-8B97-17DF-8F820C31D7CA";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 5.1102595329284668 -4.9737991503207013e-14 -4.0832131241713004e-14 ;
	setAttr ".r" -type "double3" -9.7964785668692511e-05 0 1.9135286365136528 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0 0.97858000000000001 0.20586499999999999 0 1.7098199999999998e-06 0.20586499999999999 -0.97858000000000001 0
		 -1 3.5198699999999999e-07 -1.6731999999999999e-06 0 0 157.76736399999999 -0.34828799999999999 1;
	setAttr ".fbxID" 5;
createNode joint -n "head" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|neck_01|neck_02";
	rename -uid "6FA0B1D8-428D-7D1D-2A4C-D4877A0A4117";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 4.912971019744873 -5.6843418860808015e-14 2.1716040966325567e-14 ;
	setAttr ".r" -type "double3" 9.5867333839370802e-05 -2.0167398428292683e-05 11.88016967271597 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0 1 0 0 0 0 -1 0 -1 0 0 0 0 162.57510099999999 0.66312300000000002 1;
	setAttr ".fbxID" 5;
createNode joint -n "clavicle_l" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05";
	rename -uid "6176AC29-45D2-487E-4751-F2B3BEB628F4";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "blendParent1" -ln "blendParent1" -dt "string";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 5.5162687301635742 1.3147660493850708 -1.4279042482376099 ;
	setAttr ".r" -type "double3" 163.26358510455574 80.831225890108712 153.12438365112948 ;
	setAttr ".s" -type "double3" 0.99999999999999911 1 0.999999999999999 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.98722299999999996 -0.15259 -0.045897899999999998 0
		 -0.0458859 0.00360181 -0.99894000000000005 0 0.15259300000000001 0.98828300000000002 -0.0034459299999999998 0
		 1.4279040000000001 146.301051 -1.739814 1;
	setAttr -k on ".blendParent1" -type "string" "1.000000";
	setAttr ".fbxID" 5;
createNode joint -n "upperarm_l" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l";
	rename -uid "C4175B72-44B9-CA0C-01BD-BF937512345D";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "blendParent1" -ln "blendParent1" -dt "string";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 17.80952262878418 2.3092638912203256e-14 5.6843418860808015e-14 ;
	setAttr ".r" -type "double3" -4.337345261917851 46.029604216550766 -4.3585186559705047 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.57603400000000005 -0.81709100000000001 0.023413799999999999 0
		 -0.032592099999999999 -0.051578499999999999 -0.99813700000000005 0 0.81677599999999995 0.57419699999999996 -0.056341599999999999 0
		 19.009879000000002 143.58349999999999 -2.5572330000000001 1;
	setAttr -k on ".blendParent1" -type "string" "1.000000";
	setAttr ".fbxID" 5;
createNode joint -n "lowerarm_l" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l";
	rename -uid "4967369F-4CBC-1B0B-612D-7EB238ADC12A";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 27.771139144897461 1.0658141036401503e-14 -5.6843418860808015e-14 ;
	setAttr ".r" -type "double3" 0 0 -38.978821942625942 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.46829799999999999 -0.60274399999999995 0.64606300000000005 0
		 0.33700799999999997 -0.55407300000000004 -0.76120200000000005 0 0.81677599999999995 0.57419699999999996 -0.056341599999999999 0
		 35.006988 120.89196200000001 -1.907006 1;
	setAttr ".fbxID" 5;
createNode joint -n "lowerarm_twist_02_l" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l";
	rename -uid "FB9012E2-4DFD-8271-23D3-7284163D27EB";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 9.0836915969848633 -6.3948846218409017e-14 5.6843418860808015e-14 ;
	setAttr ".r" -type "double3" 1.2856768460267201 -1.7275331230962878 1.9858280815512828 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.50409899999999996 -0.603989 0.617317 0 0.33849099999999999 -0.51942200000000005 -0.78461800000000004 0
		 0.79454899999999995 0.60448199999999996 -0.057395399999999999 0 39.260859000000004 115.41682 3.961627 1;
	setAttr ".fbxID" 5;
createNode joint -n "lowerarm_twist_01_l" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l";
	rename -uid "F7B2B960-4529-D500-81D4-0388A4DC4704";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 18.167383193969727 -2.8421709430404007e-14 4.2632564145606011e-14 ;
	setAttr ".r" -type "double3" 1.2856768693497505 -1.7275255464775083 1.9858281662294797 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999956 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.50409899999999996 -0.60399000000000003 0.617317 0
		 0.33849099999999999 -0.51942200000000005 -0.78461800000000004 0 0.79454899999999995 0.60448100000000005 -0.057395300000000003 0
		 43.51473 109.941678 9.8302600000000009 1;
	setAttr ".fbxID" 5;
createNode joint -n "lowerarm_correctiveRoot_l" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l";
	rename -uid "73F89E25-4B3A-2769-83F5-F5893864F20C";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 8.5265128291212022e-14 1.4210854715202004e-14 -1.5631940186722204e-13 ;
	setAttr ".r" -type "double3" 1.346877215468562 -1.743090348945737 3.1074483518923395e-18 ;
	setAttr ".s" -type "double3" 0.99999999999999956 1 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.49292599999999998 -0.58499900000000005 0.64405000000000001 0
		 0.35576999999999998 -0.53999900000000001 -0.76277799999999996 0 0.79400999999999999 0.60512600000000005 -0.0580542 0
		 35.006988 120.89196200000001 -1.907006 1;
	setAttr ".fbxID" 5;
createNode joint -n "lowerarm_in_l" -p "lowerarm_correctiveRoot_l";
	rename -uid "DE7967D9-42E9-0C34-08AC-5FB277C666D0";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0.71718597412109375 0.71880793571472168 -3.9889290332794189 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.49292599999999998 -0.58499900000000005 0.64405000000000001 0
		 -0.35576999999999998 0.53999900000000001 0.76277799999999996 0 -0.79400999999999999 -0.60512600000000005 0.0580542 0
		 32.448985999999998 117.670449 -1.761819 1;
	setAttr ".fbxID" 5;
createNode joint -n "lowerarm_out_l" -p "lowerarm_correctiveRoot_l";
	rename -uid "E91F4C3D-40EA-F8F4-9DCB-2BAA781DF5E4";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0.58395910263061523 0.57518672943115234 2.721245288848877 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.49292599999999998 -0.58499900000000005 0.64405000000000001 0
		 0.35576999999999998 -0.53999900000000001 -0.76277799999999996 0 0.79400999999999999 0.60512600000000005 -0.0580542 0
		 37.660167000000001 121.886442 -2.1276259999999998 1;
	setAttr ".fbxID" 5;
createNode joint -n "lowerarm_fwd_l" -p "lowerarm_correctiveRoot_l";
	rename -uid "FAD1A34D-4371-AA21-599F-26A1C2E409BF";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 1.6934813261032104 -3.659092903137207 -0.43889614939689636 ;
	setAttr ".r" -type "double3" 90.000000000000014 0 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.49292599999999998 -0.58499900000000005 0.64405000000000001 0
		 0.79400999999999999 0.60512600000000005 -0.0580542 0 -0.35576999999999998 0.53999900000000001 0.76277799999999996 0
		 34.191465999999998 121.611594 2.0002339999999998 1;
	setAttr ".fbxID" 5;
createNode joint -n "lowerarm_bck_l" -p "lowerarm_correctiveRoot_l";
	rename -uid "554F9E2D-42D8-45D7-A5A4-CFA664D1C836";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0.6623389720916748 4.9182863235473633 -1.1642642021179199 ;
	setAttr ".r" -type "double3" -90.000000000000014 0 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.49292599999999998 -0.58499900000000005 0.64405000000000001 0
		 -0.79400999999999999 -0.60512600000000005 0.0580542 0 0.35576999999999998 -0.53999900000000001 -0.76277799999999996 0
		 36.158810000000003 117.14409999999999 -5.1643939999999997 1;
	setAttr ".fbxID" 5;
createNode joint -n "hand_l" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l";
	rename -uid "BCC80B2E-4553-4C54-D98A-6C94B75D220A";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 27.251073837280273 -2.8421709430404007e-14 7.1054273576010019e-14 ;
	setAttr ".r" -type "double3" -67.770758746900071 1.473470780007927 1.8489162697849522 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.45776600000000001 -0.63486699999999996 0.62241000000000002 0
		 -0.645509 -0.71872800000000003 -0.258357 0 0.61136599999999997 -0.28350399999999998 -0.73882099999999995 0
		 47.768600999999997 104.466537 15.698893 1;
	setAttr ".fbxID" 5;
createNode joint -n "wrist_inner_l" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l";
	rename -uid "3DD410D1-450E-EEDA-719A-A8840739F1CD";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -0.70358890295028687 1.6588308811187744 0.03799104318022728 ;
	setAttr ".r" -type "double3" -92.342591451814627 16.064920194671945 2.5608065498514208 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.24255499999999999 -0.56187100000000001 0.79086599999999996 0
		 -0.67827499999999996 0.48463499999999998 0.55233299999999996 0 -0.69362100000000004 -0.67039499999999996 -0.26355200000000001 0
		 46.398958 103.710204 14.804332 1;
	setAttr ".fbxID" 5;
createNode joint -n "wrist_outer_l" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l";
	rename -uid "0E709FBD-4B05-3051-D335-1AAC6E3E8681";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0.019651234149932861 -2.2384965419769287 -0.12413483113050461 ;
	setAttr ".r" -type "double3" 87.657408548185415 16.064920194671945 2.5608065498514239 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.24255499999999999 -0.56187100000000001 0.79086599999999996 0
		 0.67827499999999996 -0.48463499999999998 -0.55233299999999996 0 0.69362100000000004 0.67039499999999996 0.26355200000000001 0
		 49.146675000000002 106.098123 16.381169 1;
	setAttr ".fbxID" 5;
createNode joint -n "index_metacarpal_l" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l";
	rename -uid "8ADCE1F9-45C2-6DAA-51E8-2EBDE6658BC7";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 3.4445061683654785 -0.38468080759048462 -2.3793244361877441 ;
	setAttr ".r" -type "double3" 3.2877464546581563 7.3255016683865044 -0.60616237917610738 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.38282500000000003 -0.58596000000000004 0.71421000000000001 0
		 -0.60140300000000002 -0.744923 -0.28879899999999997 0 0.70125599999999999 -0.318969 -0.63757299999999995 0
		 48.139055999999997 103.230763 19.700068999999999 1;
	setAttr ".fbxID" 5;
createNode joint -n "index_01_l" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|index_metacarpal_l";
	rename -uid "EBDC0344-4DC1-454D-347B-0887BABC48F5";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 5.8770980834960938 0.043181736022233963 0.24087569117546082 ;
	setAttr ".r" -type "double3" 0 0 23.372999646513971 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.11282499999999999 -0.833399 0.54103299999999999 0
		 -0.70392500000000002 -0.45133699999999999 -0.54843900000000001 0 0.70125599999999999 -0.318969 -0.63757299999999995 0
		 50.5319 99.678021999999999 23.731507000000001 1;
	setAttr ".fbxID" 5;
createNode joint -n "index_02_l" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|index_metacarpal_l|index_01_l";
	rename -uid "001CD7C6-4101-676B-FC82-34BB5AF340FA";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 4.0799999237060547 1.4210854715202004e-14 -9.2370555648813024e-14 ;
	setAttr ".r" -type "double3" 0 0 14.892568419110992 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.071878600000000001 -0.92140200000000005 0.38190600000000002 0
		 -0.70927700000000005 -0.22198599999999999 -0.66906600000000005 0 0.70125599999999999 -0.318969 -0.63757299999999995 0
		 50.992227 96.277754000000002 25.938921000000001 1;
	setAttr ".fbxID" 5;
createNode joint -n "index_03_l" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|index_metacarpal_l|index_01_l|index_02_l";
	rename -uid "DCCDBED1-4DD8-166E-5CEB-36BB48624BC8";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 2.5950000286102295 5.6843418860808015e-14 -2.1316282072803006e-14 ;
	setAttr ".r" -type "double3" 0 0 12.51640099754699 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.223884 -0.94761200000000001 0.22783100000000001 0
		 -0.67684200000000005 -0.0170253 -0.735931 0 0.70125599999999999 -0.318969 -0.63757299999999995 0
		 50.805701999999997 93.886717000000004 26.929967999999999 1;
	setAttr ".fbxID" 5;
createNode joint -n "middle_metacarpal_l" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l";
	rename -uid "DD5D147A-41C3-4A93-18E1-DAA6F37ACD7B";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 3.3758335113525391 -0.75357073545455933 -0.18286436796188354 ;
	setAttr ".r" -type "double3" -4.2725003027381465 -0.13075114456697903 -2.3183915821069583 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.484898 -0.60591799999999996 0.630664 0 -0.67018599999999995 -0.72073600000000004 -0.177171 0
		 0.561894 -0.33675300000000002 -0.75556199999999996 0 49.688583000000001 102.916787 18.129840000000002 1;
	setAttr ".fbxID" 5;
createNode joint -n "middle_01_l" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|middle_metacarpal_l";
	rename -uid "D7121458-4235-06CF-52CE-6DBFCF4605F8";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 6.0982089042663574 7.1054273576010019e-14 2.1316282072803006e-14 ;
	setAttr ".r" -type "double3" 0 0 31.57268201739824 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.062225500000000003 -0.89359100000000002 0.444548 0
		 -0.82486599999999999 -0.29680400000000001 -0.48114800000000002 0 0.561894 -0.33675300000000002 -0.75556199999999996 0
		 52.645589999999999 99.221771000000004 21.975762 1;
	setAttr ".fbxID" 5;
createNode joint -n "middle_02_l" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|middle_metacarpal_l|middle_01_l";
	rename -uid "98210410-4C79-BF39-AB22-37BA4B1AC067";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 5.1690001487731934 0 4.2632564145606011e-14 ;
	setAttr ".r" -type "double3" 0 0 20.769210477739517 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.234319 -0.94077 0.24504200000000001 0 -0.79332899999999995 0.039355000000000001 -0.60751999999999995 0
		 0.561894 -0.33675300000000002 -0.75556199999999996 0 52.967233999999998 94.602799000000005 24.273631000000002 1;
	setAttr ".fbxID" 5;
createNode joint -n "middle_03_l" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|middle_metacarpal_l|middle_01_l|middle_02_l";
	rename -uid "A76D7A14-437F-3EC6-D612-ADA6F4637890";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 2.4739999771118164 4.2632564145606011e-14 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 0 0 9.9999999709533771 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.36852000000000001 -0.91964400000000002 0.135825 0
		 -0.740587 0.20211999999999999 -0.64084200000000002 0 0.561894 -0.33675300000000002 -0.75556199999999996 0
		 52.387528000000003 92.275333000000003 24.879866 1;
	setAttr ".fbxID" 5;
createNode joint -n "thumb_01_l" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l";
	rename -uid "AF366515-4D7E-69C0-9D53-E0B208CB7334";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 1.9924465417861938 1.3566048145294189 -2.5815360546112061 ;
	setAttr ".r" -type "double3" 73.564463907750024 39.904178427023133 20.508675504416573 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.23677699999999999 -0.46744599999999997 0.85172199999999998 0
		 0.358045 -0.85693299999999994 -0.37076900000000002 0 0.90318299999999996 0.217165 0.37026900000000001 0
		 46.226711000000002 102.958445 18.495816999999999 1;
	setAttr ".fbxID" 5;
createNode joint -n "thumb_02_l" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|thumb_01_l";
	rename -uid "8715859B-41D4-EAB2-D4D3-E893F1F8FD7B";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 4.3779997825622559 9.9475983006414026e-14 -9.9475983006414026e-14 ;
	setAttr ".r" -type "double3" 3.5306280002014301 -1.9322904957701363 23.246005781061289 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.045745000000000001 -0.75995299999999999 0.648366 0
		 0.47737499999999999 -0.58677000000000001 -0.65407499999999996 0 0.87750799999999995 0.27959299999999998 0.38962400000000003 0
		 45.190100000000001 100.911968 22.224657000000001 1;
	setAttr ".fbxID" 5;
createNode joint -n "thumb_03_l" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|thumb_01_l|thumb_02_l";
	rename -uid "4960FDF3-430D-E6AC-2A7A-DEBFE560B1B7";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 3.0859999656677246 5.6843418860808015e-14 8.5265128291212022e-14 ;
	setAttr ".r" -type "double3" 0 0 9.9999999709533771 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.037845200000000002 -0.85029900000000003 0.52493699999999999 0
		 0.47806599999999999 -0.44589099999999998 -0.75672600000000001 0 0.87750799999999995 0.27959299999999998 0.38962400000000003 0
		 45.048931000000003 98.566753000000006 24.225515999999999 1;
	setAttr ".fbxID" 5;
createNode joint -n "pinky_metacarpal_l" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l";
	rename -uid "7D11741E-4DF0-B28B-0739-7B9442C1D77A";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 3.3143784999847412 -0.30591726303100586 2.391110897064209 ;
	setAttr ".r" -type "double3" -27.769049129171517 -19.527703069996928 11.850627289629658 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.50165899999999997 -0.81947000000000003 0.27714100000000003 0
		 -0.86150499999999997 -0.50229900000000005 0.0741975 0 0.078405100000000005 -0.27598 -0.95796000000000003 0
		 50.945126999999999 101.904329 16.074227 1;
	setAttr ".fbxID" 5;
createNode joint -n "pinky_01_l" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|pinky_metacarpal_l";
	rename -uid "84361FB8-4D27-08AA-AE3A-78B3F16B5FF5";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 4.9575676918029785 -0.14312039315700531 -0.19884027540683746 ;
	setAttr ".r" -type "double3" 10.491640062438092 0.60504264270136554 14.833680882858841 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.26354100000000003 -0.91778899999999997 0.29699999999999999 0
		 -0.93037099999999995 -0.32317400000000002 -0.17311599999999999 0 0.25486700000000001 -0.23069700000000001 -0.93905400000000006 0
		 53.539845999999997 97.968518000000003 17.628035000000001 1;
	setAttr ".fbxID" 5;
createNode joint -n "pinky_02_l" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|pinky_metacarpal_l|pinky_01_l";
	rename -uid "0F24C24C-4433-AA10-E9EA-6480E317970A";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 3.8159999847412109 1.7053025658242404e-13 5.6843418860808015e-14 ;
	setAttr ".r" -type "double3" 0 0 21.28699904924385 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.092201500000000006 -0.97249699999999994 0.213889 0
		 -0.96257000000000004 0.032068899999999997 -0.26912799999999998 0 0.25486700000000001 -0.23069700000000001 -0.93905400000000006 0
		 54.545515999999999 94.466234 18.761389000000001 1;
	setAttr ".fbxID" 5;
createNode joint -n "pinky_03_l" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|pinky_metacarpal_l|pinky_01_l|pinky_02_l";
	rename -uid "A6E57242-4136-9DD4-8DD7-D984C9276EB0";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 2.0399999618530273 0 2.1316282072803006e-14 ;
	setAttr ".r" -type "double3" 0 0 4.9170000470223636 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.17436699999999999 -0.96616899999999994 0.19003400000000001 0
		 -0.951125 0.11530600000000001 -0.28647 0 0.25486700000000001 -0.23069700000000001 -0.93905400000000006 0
		 54.357424999999999 92.482339999999994 19.197723 1;
	setAttr ".fbxID" 5;
createNode joint -n "ring_metacarpal_l" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l";
	rename -uid "D8DD4C33-45F3-1049-5FEA-07A6452F8A15";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 3.3743038177490234 -0.54251688718795776 1.0917565822601318 ;
	setAttr ".r" -type "double3" -13.299834889366384 -11.809318654920901 -1.5945633604277301 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999956 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.59060500000000005 -0.65963300000000002 0.46483400000000002 0
		 -0.73083299999999995 -0.68147000000000002 -0.038479100000000002 0 0.34215200000000001 -0.31698999999999999 -0.88456100000000004 0
		 50.330905000000001 102.404708 17.132643000000002 1;
	setAttr ".fbxID" 5;
createNode joint -n "ring_01_l" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|ring_metacarpal_l";
	rename -uid "7C3617B3-429A-0DA8-C0CD-CEA76FC3FA26";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 5.6455168724060059 -0.041624534875154495 -0.02068917453289032 ;
	setAttr ".r" -type "double3" 6.3958444445851041 -0.11693801365858437 29.414482479749037 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999956 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.15623799999999999 -0.90993100000000005 0.38420799999999999 0
		 -0.88283500000000004 -0.303087 -0.35880499999999999 0 0.442936 -0.28313300000000002 -0.85067199999999998 0
		 53.688516999999997 98.715664000000004 19.776772999999999 1;
	setAttr ".fbxID" 5;
createNode joint -n "ring_02_l" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|ring_metacarpal_l|ring_01_l";
	rename -uid "5B4815FA-4127-9147-4762-578F6C95FF26";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 4.9770002365112305 -8.5265128291212022e-14 -9.5923269327613525e-14 ;
	setAttr ".r" -type "double3" 0 0 18.963999541971834 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.13914000000000001 -0.95903799999999995 0.246752 0
		 -0.88568999999999998 0.0090675100000000008 -0.46418799999999999 0 0.442936 -0.28313300000000002 -0.85067199999999998 0
		 54.466115000000002 94.186938999999995 21.688974000000002 1;
	setAttr ".fbxID" 5;
createNode joint -n "ring_03_l" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|ring_metacarpal_l|ring_01_l|ring_02_l";
	rename -uid "5CDE77F0-4B7B-6F5B-2CA8-8B816FAE5089";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 2.2650001049041748 3.5527136788005009e-14 1.5631940186722204e-13 ;
	setAttr ".r" -type "double3" 0 0 9.1679997480250002 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.27848000000000001 -0.94534200000000002 0.16964099999999999 0
		 -0.85220700000000005 0.16175500000000001 -0.49757299999999999 0 0.442936 -0.28313300000000002 -0.85067199999999998 0
		 54.150962 92.014718000000002 22.247866999999999 1;
	setAttr ".fbxID" 5;
createNode joint -n "weapon_l" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l";
	rename -uid "8C5463C1-4BAA-D0AB-5C64-AD8615B558D8";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" 1.1633778810501099 1.317058801651001 0.5195159912109375 ;
	setAttr ".r" -type "double3" -11.617611580307555 -15.80837073479014 8.5170863439819282 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.51015699999999997 -0.783771 0.35417799999999999 0
		 -0.79058799999999996 -0.58949099999999999 -0.165741 0 0.33868799999999999 -0.19545499999999999 -0.92037400000000003 0
		 47.768597 102.634055 15.698888999999999 1;
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "upperarm_twist_01_l" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l";
	rename -uid "09A0809E-4904-5DA1-BF71-A6805041E20E";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 9.2570457458496094 8.8817841970012523e-15 -7.1054273576010019e-14 ;
	setAttr ".r" -type "double3" 7.7705132047025806e-19 -2.1533312395632271 -0.32660888591551801 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.60649299999999995 -0.79463200000000001 0.026965599999999999 0
		 -0.029308000000000001 -0.056235399999999998 -0.99798699999999996 0 0.79454899999999995 0.60448199999999996 -0.057395399999999999 0
		 24.342248000000001 136.019654 -2.3404910000000001 1;
	setAttr ".fbxID" 5;
createNode joint -n "upperarm_twistCor_01_l" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|upperarm_twist_01_l";
	rename -uid "F904E823-4C76-CBDD-B2ED-B3B4B3D3EB74";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -4.2632564145606011e-14 3.5527136788005009e-15 8.5265128291212022e-14 ;
	setAttr ".r" -type "double3" 7.7705132047025806e-19 -2.1533312395632271 -0.32660888591551801 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.63607599999999997 -0.77102499999999996 0.030474500000000002 0
		 -0.0258503 -0.060764199999999997 -0.99781699999999995 0 0.77119400000000005 0.63390000000000002 -0.058581800000000003 0
		 24.342248000000001 136.019654 -2.3404910000000001 1;
	setAttr ".fbxID" 5;
createNode joint -n "upperarm_twist_02_l" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l";
	rename -uid "DCD84EAC-482F-8DFD-3393-BAB36C468075";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 18.514091491699219 5.3290705182007514e-15 -5.6843418860808015e-14 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.57603400000000005 -0.81709100000000001 0.023413799999999999 0
		 -0.032592099999999999 -0.051578499999999999 -0.99813700000000005 0 0.81677599999999995 0.57419699999999996 -0.056341599999999999 0
		 29.674617000000001 128.45580899999999 -2.123748 1;
	setAttr ".fbxID" 5;
createNode joint -n "upperarm_tricep_l" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|upperarm_twist_02_l";
	rename -uid "293365B1-4297-207B-4108-6F89DA042A95";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0.63981693983078003 4.8805856704711914 -0.20165041089057922 ;
	setAttr ".r" -type "double3" -94.95644638895449 -0.42448471047106484 0.86833329383278834 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.58150900000000005 -0.81350199999999995 0.0078669900000000008 0
		 -0.80588199999999999 -0.57468399999999997 0.14244899999999999 0 -0.111361 -0.089175099999999993 -0.98977099999999996 0
		 29.719401999999999 127.5655 -6.9688999999999997 1;
	setAttr ".fbxID" 5;
createNode joint -n "upperarm_bicep_l" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|upperarm_twist_02_l";
	rename -uid "91A319A9-41D6-B4D5-83A7-EFAE148D6B41";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0.67974680662155151 -4.4393792152404785 -1.7917963266372681 ;
	setAttr ".r" -type "double3" 85.043553611045567 -0.42448471047106517 0.86833329383278812 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.58150900000000005 -0.81350199999999995 0.0078669900000000008 0
		 0.80588199999999999 0.57468399999999997 -0.14244899999999999 0 0.111361 0.089175099999999993 0.98977099999999996 0
		 28.747367000000001 127.100526 2.4242279999999998 1;
	setAttr ".fbxID" 5;
createNode joint -n "upperarm_twistCor_02_l" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|upperarm_twist_02_l";
	rename -uid "95B83A39-41B8-EA2E-5F02-7B8F1D9494E0";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 5.6843418860808015e-14 1.7763568394002505e-14 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 0.037033075345610997 -6.4598177141619368 -0.98284030053750582 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.66474 -0.74630399999999997 0.033935199999999999 0
		 -0.022224000000000001 -0.065158300000000002 -0.99762700000000004 0 0.74674399999999996 0.66240900000000003 -0.0598992 0
		 29.674617000000001 128.45580899999999 -2.123748 1;
	setAttr ".fbxID" 5;
createNode joint -n "upperarm_correctiveRoot_l" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l";
	rename -uid "A7CB1C69-4F47-2E39-A5E8-EDA79E103022";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -1.4210854715202004e-14 7.1054273576010019e-15 -1.1368683772161603e-13 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.57603400000000005 -0.81709100000000001 0.023413799999999999 0
		 -0.032592099999999999 -0.051578499999999999 -0.99813700000000005 0 0.81677599999999995 0.57419699999999996 -0.056341599999999999 0
		 19.009879000000002 143.58349999999999 -2.5572330000000001 1;
	setAttr ".fbxID" 5;
createNode joint -n "upperarm_bck_l" -p "upperarm_correctiveRoot_l";
	rename -uid "2222F331-4458-1F1E-37A6-99BE213226E7";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 1.4677364826202393 7.644437313079834 0.38593786954879761 ;
	setAttr ".r" -type "double3" -71.338605903548057 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.57603400000000005 -0.81709100000000001 0.023413799999999999 0
		 -0.78426399999999996 -0.56051300000000004 -0.26599899999999999 0 0.23046900000000001 0.13486200000000001 -0.96368900000000002 0
		 19.921420999999999 142.21154200000001 -10.174808000000001 1;
	setAttr ".fbxID" 5;
createNode joint -n "upperarm_fwd_l" -p "upperarm_correctiveRoot_l";
	rename -uid "92D2E5AD-4C97-13C2-CDBC-2AA6CD311679";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 3.2550060749053955 -8.5091581344604492 -1.0630378723144531 ;
	setAttr ".r" -type "double3" 98.945174165607767 -1.9520053287632744 11.877573660059191 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.58448999999999995 -0.790184 -0.184338 0 0.81102600000000002 0.57584500000000005 0.103144 0
		 0.024648099999999999 -0.20979 0.97743599999999997 0 20.293939000000002 140.75236100000001 6.0721769999999999 1;
	setAttr ".fbxID" 5;
createNode joint -n "upperarm_in_l" -p "upperarm_correctiveRoot_l";
	rename -uid "5C99AD9E-41DB-7A7E-C692-B29DA3AB223F";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 6.4101486206054688 -0.54440605640411377 -4.761751651763916 ;
	setAttr ".r" -type "double3" 180 -48.194143483235486 -1.0594296830222398e-30 ;
	setAttr ".s" -type "double3" 1 1.0000000000000009 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.99282000000000004 -0.11666899999999999 -0.026389699999999999 0
		 0.032592099999999999 0.051578499999999999 0.99813700000000005 0 -0.11509 -0.99183100000000002 0.0550106 0
		 18.830798999999999 135.63972200000001 -1.5954710000000001 1;
	setAttr ".fbxID" 5;
createNode joint -n "upperarm_out_l" -p "upperarm_correctiveRoot_l";
	rename -uid "C8EEF520-4A42-9355-5D52-8D8F5E6F7AAB";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0.22034949064254761 0.051736541092395782 5.8040661811828613 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.57603400000000005 -0.81709100000000001 0.023413799999999999 0
		 -0.032592099999999999 -0.051578499999999999 -0.99813700000000005 0 0.81677599999999995 0.57419699999999996 -0.056341599999999999 0
		 23.875744000000001 146.733465 -2.9307249999999998 1;
	setAttr ".fbxID" 5;
createNode joint -n "clavicle_out_l" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l";
	rename -uid "6D7F5174-4C92-749C-4B15-1F830C5B9894";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 11.81339168548584 -0.44387754797935486 6.2818398475646973 ;
	setAttr ".r" -type "double3" -0.1805298097407074 -3.1102894160722525 -4.2915710380114067 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.99471299999999996 -0.098584500000000005 0.028753799999999999 0
		 0.0278073 -0.0109622 -0.99955300000000002 0 0.098855700000000005 0.99506799999999995 -0.0081629200000000006 0
		 14.069293999999999 150.705085 -1.860263 1;
	setAttr ".fbxID" 5;
createNode joint -n "clavicle_scap_l" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l";
	rename -uid "B346FCD6-4232-F32C-CF12-5293D8E8A1E3";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 9.9858322143554688 7.5781621932983398 -1.9931055307388306 ;
	setAttr ".r" -type "double3" 0.18052980974070743 3.1102894160722525 175.7084289619886 ;
	setAttr ".s" -type "double3" 0.99999999999999956 1 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.99471299999999996 0.098584500000000005 -0.028753799999999999 0
		 -0.0278073 0.0109622 0.99955300000000002 0 0.098855700000000005 0.99506799999999995 -0.0081629200000000006 0
		 10.634283999999999 142.834858 -9.7614049999999999 1;
	setAttr ".fbxID" 5;
createNode joint -n "clavicle_r" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05";
	rename -uid "1D1B54BE-4134-BFAA-CA35-FAB67B82770D";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "blendParent1" -ln "blendParent1" -dt "string";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 5.5162200927734375 1.3148112297058105 1.4278726577758789 ;
	setAttr ".r" -type "double3" 163.26358510455586 80.831225890108655 -26.875616348870651 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000002 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.98722299999999996 0.15259 0.045897899999999998 0
		 -0.0458859 -0.00360181 0.99894000000000005 0 0.15259300000000001 -0.98828300000000002 0.0034459299999999998 0
		 -1.4278729999999999 146.300995 -1.7398499999999999 1;
	setAttr -k on ".blendParent1" -type "string" "1.000000";
	setAttr ".fbxID" 5;
createNode joint -n "upperarm_r" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r";
	rename -uid "3FACD585-44E8-5280-9049-47A4AFB9C1FE";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "blendParent1" -ln "blendParent1" -dt "string";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -17.809625625610352 2.8716144697682466e-06 0.00043809693306684494 ;
	setAttr ".r" -type "double3" -4.337345261917851 46.029604216550766 -4.3585186559705047 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.57603400000000005 0.81709100000000001 -0.023413799999999999 0
		 -0.032592099999999999 0.051578499999999999 0.99813700000000005 0 0.81677599999999995 -0.57419699999999996 0.056341599999999999 0
		 -19.009882000000001 143.58299500000001 -2.5572699999999999 1;
	setAttr -k on ".blendParent1" -type "string" "1.000000";
	setAttr ".fbxID" 5;
createNode joint -n "lowerarm_r" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r";
	rename -uid "D6221003-4FA8-616A-1804-56A67A749D21";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -27.770694732666016 -3.5527136788005009e-14 5.6843418860808015e-14 ;
	setAttr ".r" -type "double3" 0 0 -38.978821942625942 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.46829799999999999 0.60274399999999995 -0.64606300000000005 0
		 0.33700799999999997 0.55407300000000004 0.76120200000000005 0 0.81677599999999995 -0.57419699999999996 0.056341599999999999 0
		 -35.006734999999999 120.89182099999999 -1.9070530000000001 1;
	setAttr ".fbxID" 5;
createNode joint -n "lowerarm_twist_02_r" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r";
	rename -uid "82E90610-4C89-82AD-C572-939C88A11AAC";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -9.0836620330810547 -7.1054273576010019e-15 -2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" 1.2856768460267201 -1.7275331230962878 1.9858280815512828 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.50409899999999996 0.603989 -0.617317 0 0.33849099999999999 0.51942200000000005 0.78461800000000004 0
		 0.79454899999999995 -0.60448199999999996 0.057395399999999999 0 -39.260592000000003 115.416697 3.9615610000000001 1;
	setAttr ".fbxID" 5;
createNode joint -n "lowerarm_twist_01_r" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r";
	rename -uid "A51F5ABE-435F-539A-3ADF-DDA08B68BCD2";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -18.167304992675781 -7.1054273576010019e-15 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 1.2856768693497505 -1.7275255464775083 1.9858281662294797 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999956 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.50409899999999996 0.60399000000000003 -0.617317 0
		 0.33849099999999999 0.51942200000000005 0.78461800000000004 0 0.79454899999999995 -0.60448100000000005 0.057395300000000003 0
		 -43.514440999999998 109.94158400000001 9.8301630000000007 1;
	setAttr ".fbxID" 5;
createNode joint -n "lowerarm_correctiveRoot_r" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r";
	rename -uid "80E80F5F-4901-28F2-B06A-C2BFC3B4AF6F";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -1.9253389837103896e-05 2.3793934815330431e-05 -0.00030234770383685827 ;
	setAttr ".r" -type "double3" 1.346877215468562 -1.743090348945737 3.1074483518923395e-18 ;
	setAttr ".s" -type "double3" 0.99999999999999956 1 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.49292599999999998 0.58499900000000005 -0.64405000000000001 0
		 0.35576999999999998 0.53999900000000001 0.76277799999999996 0 0.79400999999999999 -0.60512600000000005 0.0580542 0
		 -35.006982999999998 120.89199600000001 -1.9070389999999999 1;
	setAttr ".fbxID" 5;
createNode joint -n "lowerarm_out_r" -p "lowerarm_correctiveRoot_r";
	rename -uid "AA9287CB-411C-97BD-A78B-C4B81A957B8B";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -0.70708566904067993 -0.61784440279006958 -2.9244780540466309 ;
	setAttr ".r" -type "double3" 2.4148364981233015e-06 0 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.49292599999999998 0.58499900000000005 -0.64405000000000001 0
		 0.35576999999999998 0.53999900000000001 0.76277799999999996 0 0.79400999999999999 -0.60512600000000005 0.0580542 0
		 -37.897399 121.914393 -2.0926969999999998 1;
	setAttr ".fbxID" 5;
createNode joint -n "lowerarm_in_r" -p "lowerarm_correctiveRoot_r";
	rename -uid "CD685B1D-46C7-8D4B-1378-E093979770F1";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -0.85778617858886719 -0.81687408685684204 3.8254637718200684 ;
	setAttr ".r" -type "double3" 179.99999879300006 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000009 1.0000000000000009 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.49292599999999998 0.58499900000000005 -0.64405000000000001 0
		 -0.355769 -0.53999900000000001 -0.76277799999999996 0 -0.79400999999999999 0.60512600000000005 -0.0580542 0
		 -32.682969 117.63419399999999 -1.7555909999999999 1;
	setAttr ".fbxID" 5;
createNode joint -n "lowerarm_fwd_r" -p "lowerarm_correctiveRoot_r";
	rename -uid "F947D7F5-43B5-56E3-3CD2-36BABA7F5293";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -1.8127350807189941 3.5876975059509277 0.22602805495262146 ;
	setAttr ".r" -type "double3" 90.000000000000014 0 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.49292599999999998 0.58499900000000005 -0.64405000000000001 0
		 0.79400999999999999 -0.60512600000000005 0.0580542 0 -0.35576999999999998 -0.53999900000000001 -0.76277799999999996 0
		 -34.444664000000003 121.63212300000001 2.0101900000000001 1;
	setAttr ".fbxID" 5;
createNode joint -n "lowerarm_bck_r" -p "lowerarm_correctiveRoot_r";
	rename -uid "C19934F1-4384-61D7-0AD7-6AA159FCC0B1";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -0.77233541011810303 -5.0015811920166016 0.9858056902885437 ;
	setAttr ".r" -type "double3" -90.000000000000014 0 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.49292599999999998 0.58499900000000005 -0.64405000000000001 0
		 -0.79400999999999999 0.60512600000000005 -0.0580542 0 0.35576999999999998 0.53999900000000001 0.76277799999999996 0
		 -36.384357000000001 117.142797 -5.1674800000000003 1;
	setAttr ".fbxID" 5;
createNode joint -n "hand_r" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r";
	rename -uid "FF01352B-47A3-2765-2B52-E99EB30F926D";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -27.251010894775391 -7.1054273576010019e-15 -1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" -67.770758746900071 1.473470780007927 1.8489162697849522 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.45776600000000001 0.63486699999999996 -0.62241000000000002 0
		 -0.645509 0.71872800000000003 0.258357 0 0.61136599999999997 0.28350399999999998 0.73882099999999995 0
		 -47.768318999999998 104.46643400000001 15.698805 1;
	setAttr ".fbxID" 5;
createNode joint -n "wrist_inner_r" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r";
	rename -uid "D97D0089-44E6-F195-AE55-BABD8161B3E5";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0.70334106683731079 -1.6586792469024658 -0.038177095353603363 ;
	setAttr ".r" -type "double3" -92.342591451814627 16.064920194671945 2.5608065498514208 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.24255499999999999 0.56187100000000001 -0.79086599999999996 0
		 -0.67827499999999996 -0.48463499999999998 -0.55233299999999996 0 -0.69362100000000004 0.67039499999999996 0.26355200000000001 0
		 -46.399000999999998 103.709999 14.804301000000001 1;
	setAttr ".fbxID" 5;
createNode joint -n "wrist_outer_r" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r";
	rename -uid "F8366926-40E8-9E22-9A46-708CEF3A21AB";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -0.019879069179296494 2.2387115955352783 0.12402799725532532 ;
	setAttr ".r" -type "double3" 87.657408548185415 16.064920194671945 2.5608065498514239 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.24255499999999999 0.56187100000000001 -0.79086599999999996 0
		 0.67827499999999996 0.48463499999999998 0.55233299999999996 0 0.69362100000000004 -0.67039499999999996 -0.26355200000000001 0
		 -49.146701 106.097999 16.3812 1;
	setAttr ".fbxID" 5;
createNode joint -n "pinky_metacarpal_r" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r";
	rename -uid "D614C77F-494C-6DA6-B083-CAB1759D4F88";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -3.3146772384643555 0.30593535304069519 -2.3912868499755859 ;
	setAttr ".r" -type "double3" -27.769049129171517 -19.527703069996928 11.850627289629658 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.50165899999999997 0.81947000000000003 -0.27714100000000003 0
		 -0.86150499999999997 0.50229900000000005 -0.0741975 0 0.078405100000000005 0.27598 0.95796000000000003 0
		 -50.945101000000001 101.903999 16.074200000000001 1;
	setAttr ".fbxID" 5;
createNode joint -n "pinky_01_r" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|pinky_metacarpal_r";
	rename -uid "FC1F9050-4AEA-55AC-A6B3-78B20EA0BF30";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -4.9573006629943848 0.14326146245002747 0.19892024993896484 ;
	setAttr ".r" -type "double3" 10.491640062438092 0.60504264270136554 14.833680882858841 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.26354100000000003 0.91778899999999997 -0.29699999999999999 0
		 -0.93037099999999995 0.32317400000000002 0.17311599999999999 0 0.25486700000000001 0.23069700000000001 0.93905400000000006 0
		 -53.539800999999997 97.968500000000006 17.628001000000001 1;
	setAttr ".fbxID" 5;
createNode joint -n "pinky_02_r" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|pinky_metacarpal_r|pinky_01_r";
	rename -uid "3AA26D3A-4FE3-F871-F239-86952277A1DA";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -3.8160362243652344 3.036602538486477e-05 3.2629206543788314e-05 ;
	setAttr ".r" -type "double3" 0 0 21.28699904924385 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.092201500000000006 0.97249699999999994 -0.213889 0
		 -0.96257000000000004 -0.032068899999999997 0.26912799999999998 0 0.25486700000000001 0.23069700000000001 0.93905400000000006 0
		 -54.545501000000002 94.466200000000001 18.761400999999999 1;
	setAttr ".fbxID" 5;
createNode joint -n "pinky_03_r" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|pinky_metacarpal_r|pinky_01_r|pinky_02_r";
	rename -uid "DAD11D90-47F4-1EAE-79AE-59A667248B52";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -2.0399997234344482 -1.752387652231846e-05 -3.1002964533399791e-05 ;
	setAttr ".r" -type "double3" 1.7075472925031882e-06 -1.1848489498583662e-23 4.9170000470223654 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.17436699999999999 0.96616899999999994 -0.19003400000000001 0
		 -0.951125 -0.11530600000000001 0.28647 0 0.25486700000000001 0.23069700000000001 0.93905400000000006 0
		 -54.357401000000003 92.482299999999995 19.197700999999999 1;
	setAttr ".fbxID" 5;
createNode joint -n "ring_metacarpal_r" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r";
	rename -uid "4C694D58-45B6-D749-C948-B1A166F554AE";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -3.3742079734802246 0.5429917573928833 -1.0917816162109375 ;
	setAttr ".r" -type "double3" -13.299834889366384 -11.809318654920901 -1.5945633604277301 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999956 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.59060500000000005 0.65963300000000002 -0.46483400000000002 0
		 -0.73083299999999995 0.68147000000000002 0.038479100000000002 0 0.34215200000000001 0.31698999999999999 0.88456100000000004 0
		 -50.330900999999997 102.404999 17.132601000000001 1;
	setAttr ".fbxID" 5;
createNode joint -n "ring_01_r" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|ring_metacarpal_r";
	rename -uid "3441201B-4321-379C-C3EE-A7A7DFD94D2B";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -5.6457118988037109 0.041443493217229843 0.020674973726272583 ;
	setAttr ".r" -type "double3" 6.3958444445851041 -0.11693801365858437 29.414482479749037 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999956 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.15623799999999999 0.90993100000000005 -0.38420799999999999 0
		 -0.88283500000000004 0.303087 0.35880499999999999 0 0.442936 0.28313300000000002 0.85067199999999998 0
		 -53.688501000000002 98.715699000000001 19.776800999999999 1;
	setAttr ".fbxID" 5;
createNode joint -n "ring_02_r" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|ring_metacarpal_r|ring_01_r";
	rename -uid "FD5F91EE-416A-06BE-2E32-CA83FEAF239E";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -4.9770674705505371 -2.0846833649557084e-05 -2.3612021323060617e-05 ;
	setAttr ".r" -type "double3" 0 0 18.963999541971834 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.13914000000000001 0.95903799999999995 -0.246752 0
		 -0.88568999999999998 -0.0090675100000000008 0.46418799999999999 0 0.442936 0.28313300000000002 0.85067199999999998 0
		 -54.466101000000002 94.186898999999997 21.689001000000001 1;
	setAttr ".fbxID" 5;
createNode joint -n "ring_03_r" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|ring_metacarpal_r|ring_01_r|ring_02_r";
	rename -uid "C10CA5AC-46CE-2292-57F7-EF95D3A73CD2";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -2.2649745941162109 5.0017570174532011e-05 -1.1221488421142567e-05 ;
	setAttr ".r" -type "double3" 0 0 9.1679997480250002 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.27848000000000001 0.94534200000000002 -0.16964099999999999 0
		 -0.85220700000000005 -0.16175500000000001 0.49757299999999999 0 0.442936 0.28313300000000002 0.85067199999999998 0
		 -54.151001000000001 92.014700000000005 22.247900999999999 1;
	setAttr ".fbxID" 5;
createNode joint -n "middle_metacarpal_r" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r";
	rename -uid "970D8995-40AC-68D8-0731-AA8AEC5441BA";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -3.3758001327514648 0.75400394201278687 0.18280552327632904 ;
	setAttr ".r" -type "double3" -4.2725003027381465 -0.13075114456697903 -2.3183915821069583 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.484898 0.60591799999999996 -0.630664 0 -0.67018599999999995 0.72073600000000004 0.177171 0
		 0.561894 0.33675300000000002 0.75556199999999996 0 -49.688600999999998 102.917 18.129799999999999 1;
	setAttr ".fbxID" 5;
createNode joint -n "middle_01_r" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|middle_metacarpal_r";
	rename -uid "146480E3-4D24-F56D-DBC6-5DBFAE37BE00";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -6.0983657836914062 -0.00012385072477627546 1.4303818716143724e-06 ;
	setAttr ".r" -type "double3" 0 0 31.57268201739824 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.062225500000000003 0.89359100000000002 -0.444548 0
		 -0.82486599999999999 0.29680400000000001 0.48114800000000002 0 0.561894 0.33675300000000002 0.75556199999999996 0
		 -52.645600999999999 99.221800000000002 21.9758 1;
	setAttr ".fbxID" 5;
createNode joint -n "middle_02_r" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|middle_metacarpal_r|middle_01_r";
	rename -uid "B3EC6771-4D6F-D23B-F203-A0B93A4D06A8";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -5.1689915657043457 -7.7438591688405722e-05 -3.7045669159851968e-05 ;
	setAttr ".r" -type "double3" 0 0 20.769210477739517 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.234319 0.94077 -0.24504200000000001 0 -0.79332899999999995 -0.039355000000000001 0.60751999999999995 0
		 0.561894 0.33675300000000002 0.75556199999999996 0 -52.967201000000003 94.602800000000002 24.273600999999999 1;
	setAttr ".fbxID" 5;
createNode joint -n "middle_03_r" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|middle_metacarpal_r|middle_01_r|middle_02_r";
	rename -uid "2CF103D8-4A4A-D43E-53EB-769219BEBC4B";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -2.4740469455718994 4.577730578603223e-05 3.4385015169391409e-05 ;
	setAttr ".r" -type "double3" 0 0 9.9999999709533771 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.36852000000000001 0.91964400000000002 -0.135825 0
		 -0.740587 -0.20211999999999999 0.64084200000000002 0 0.561894 0.33675300000000002 0.75556199999999996 0
		 -52.387501 92.275300000000001 24.879901 1;
	setAttr ".fbxID" 5;
createNode joint -n "index_metacarpal_r" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r";
	rename -uid "08E26EEE-47B6-0E21-8E00-6083F2869184";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -3.4445140361785889 0.38516682386398315 2.3793087005615234 ;
	setAttr ".r" -type "double3" 3.2877464546581563 7.3255016683865044 -0.60616237917610738 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.38282500000000003 0.58596000000000004 -0.71421000000000001 0
		 -0.60140300000000002 0.744923 0.28879899999999997 0 0.70125599999999999 0.318969 0.63757299999999995 0
		 -48.139100999999997 103.23099999999999 19.700101 1;
	setAttr ".fbxID" 5;
createNode joint -n "index_01_r" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|index_metacarpal_r";
	rename -uid "6EA1D621-4648-2E00-5803-CFA8F3584B7C";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -5.8772053718566895 -0.043412361294031143 -0.24095164239406586 ;
	setAttr ".r" -type "double3" 0 0 23.372999646513971 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.11282499999999999 0.833399 -0.54103299999999999 0
		 -0.70392500000000002 0.45133699999999999 0.54843900000000001 0 0.70125599999999999 0.318969 0.63757299999999995 0
		 -50.531900999999998 99.677999999999997 23.731501000000002 1;
	setAttr ".fbxID" 5;
createNode joint -n "index_02_r" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|index_metacarpal_r|index_01_r";
	rename -uid "4CA2ED7C-4116-0BD7-7F77-53902166B2B5";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -4.079932689666748 5.0402059059706517e-06 3.2106661819852889e-05 ;
	setAttr ".r" -type "double3" 0 0 14.892568419110992 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.071878600000000001 0.92140200000000005 -0.38190600000000002 0
		 -0.70927700000000005 0.22198599999999999 0.66906600000000005 0 0.70125599999999999 0.318969 0.63757299999999995 0
		 -50.992201000000001 96.277799999999999 25.938901000000001 1;
	setAttr ".fbxID" 5;
createNode joint -n "index_03_r" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|index_metacarpal_r|index_01_r|index_02_r";
	rename -uid "5E14E6F9-4155-6914-F76C-21B1D115BF17";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -2.595076322555542 3.9602186006959528e-05 -3.560681989256409e-06 ;
	setAttr ".r" -type "double3" 0 0 12.51640099754699 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.223884 0.94761200000000001 -0.22783100000000001 0
		 -0.67684200000000005 0.0170253 0.735931 0 0.70125599999999999 0.318969 0.63757299999999995 0
		 -50.805700999999999 93.886700000000005 26.930001000000001 1;
	setAttr ".fbxID" 5;
createNode joint -n "thumb_01_r" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r";
	rename -uid "3686FFD3-435E-B38A-4D62-8DA0585668F7";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -1.9928325414657593 -1.3566571474075317 2.5813255310058594 ;
	setAttr ".r" -type "double3" 73.564463907750024 39.904178427023133 20.508675504416573 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.23677699999999999 0.46744599999999997 -0.85172199999999998 0
		 0.358045 0.85693299999999994 0.37076900000000002 0 0.90318299999999996 -0.217165 -0.37026900000000001 0
		 -46.226700999999998 102.957999 18.495801 1;
	setAttr ".fbxID" 5;
createNode joint -n "thumb_02_r" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|thumb_01_r";
	rename -uid "8149C6B5-4EC0-60F0-C93C-BEA95BD437E0";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -4.3778247833251953 0.00042712956201285124 -0.00013574546028394252 ;
	setAttr ".r" -type "double3" 3.5306280002014301 -1.9322904957701363 23.246005781061289 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.045745000000000001 0.75995299999999999 -0.648366 0
		 0.47737499999999999 0.58677000000000001 0.65407499999999996 0 0.87750799999999995 -0.27959299999999998 -0.38962400000000003 0
		 -45.190100999999999 100.91200000000001 22.224701 1;
	setAttr ".fbxID" 5;
createNode joint -n "thumb_03_r" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|thumb_01_r|thumb_02_r";
	rename -uid "823D317C-4DA5-F3B1-A956-FDA348523799";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -3.0859522819519043 -1.4851160813122988e-05 4.5825581764802337e-05 ;
	setAttr ".r" -type "double3" 0 0 9.9999999709533771 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.037845200000000002 0.85029900000000003 -0.52493699999999999 0
		 0.47806599999999999 0.44589099999999998 0.75672600000000001 0 0.87750799999999995 -0.27959299999999998 -0.38962400000000003 0
		 -45.048901000000001 98.566800000000001 24.225501000000001 1;
	setAttr ".fbxID" 5;
createNode joint -n "weapon_r" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r";
	rename -uid "E2AB01FC-4BFA-36A0-C507-7AB6E0ECC35B";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" -1.1633833646774292 -1.3170545101165771 -0.51951736211776733 ;
	setAttr ".r" -type "double3" -11.617611866448348 -15.808370499724781 8.5170885216315781 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.51015699999999997 0.783771 -0.35417799999999999 0
		 -0.79058899999999999 0.58949099999999999 0.165741 0 0.33868799999999999 0.19545499999999999 0.92037400000000003 0
		 -47.768321 102.633951 15.698805 1;
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "upperarm_twist_01_r" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r";
	rename -uid "E8A96821-45A1-F258-EA37-4CAD2195AF57";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -9.2568979263305664 1.0202637895417865e-05 -0.00010078256309498101 ;
	setAttr ".r" -type "double3" 7.7705132047025806e-19 -2.1533312395632271 -0.32660888591551801 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.60649299999999995 0.79463200000000001 -0.026965599999999999 0
		 -0.029308000000000001 0.056235399999999998 0.99798699999999996 0 0.79454899999999995 -0.60448199999999996 0.057395399999999999 0
		 -24.342248999999999 136.019329 -2.3405260000000001 1;
	setAttr ".fbxID" 5;
createNode joint -n "upperarm_twistCor_01_r" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|upperarm_twist_01_r";
	rename -uid "7C132C5E-4B55-5B83-ED0F-7E9BF80D990C";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -9.9475983006414026e-14 -9.7699626167013776e-15 1.4210854715202004e-14 ;
	setAttr ".r" -type "double3" 7.7705132047025806e-19 -2.1533312395632271 -0.32660888591551801 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.63607599999999997 0.77102499999999996 -0.030474500000000002 0
		 -0.0258503 0.060764199999999997 0.99781699999999995 0 0.77119400000000005 -0.63390000000000002 0.058581800000000003 0
		 -24.342248999999999 136.019329 -2.3405260000000001 1;
	setAttr ".fbxID" 5;
createNode joint -n "upperarm_twist_02_r" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r";
	rename -uid "3A29EEBF-417C-F1ED-C88C-239B157B5BF2";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -18.513795852661133 2.0405275790835731e-05 -0.00020156512618996203 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.57603400000000005 0.81709100000000001 -0.023413799999999999 0
		 -0.032592099999999999 0.051578499999999999 0.99813700000000005 0 0.81677599999999995 -0.57419699999999996 0.056341599999999999 0
		 -29.674616 128.45566299999999 -2.123783 1;
	setAttr ".fbxID" 5;
createNode joint -n "upperarm_tricep_r" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|upperarm_twist_02_r";
	rename -uid "0A1E6FAD-4E4B-D3A0-4B2C-D59A66BBDC0C";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -0.75752013921737671 -4.8716654777526855 0.0035142137203365564 ;
	setAttr ".r" -type "double3" -94.95644638895449 -0.42448471047106484 0.86833329383278834 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.58150900000000005 0.81350199999999995 -0.0078669900000000008 0
		 -0.80588199999999999 0.57468399999999997 -0.14244899999999999 0 -0.111361 0.089175099999999993 0.98977099999999996 0
		 -29.949325000000002 127.583409 -6.9684379999999999 1;
	setAttr ".fbxID" 5;
createNode joint -n "upperarm_bicep_r" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|upperarm_twist_02_r";
	rename -uid "6B76BCE5-4CA2-3C3F-9C9C-42B93A93A7B9";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -0.79847818613052368 4.448310375213623 1.5932773351669312 ;
	setAttr ".r" -type "double3" 85.043553611045567 -0.42448471047106517 0.86833329383278812 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.58150900000000005 0.81350199999999995 -0.0078669900000000008 0
		 0.80588199999999999 -0.57468399999999997 0.14244899999999999 0 0.111361 -0.089175099999999993 -0.98977099999999996 0
		 -28.978194999999999 127.11781499999999 2.4247040000000002 1;
	setAttr ".fbxID" 5;
createNode joint -n "upperarm_twistCor_02_r" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|upperarm_twist_02_r";
	rename -uid "47E965BE-49F8-310C-76A8-B1807AEE5B73";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 7.6897767939954065e-06 -4.3503746383066755e-08 1.4233457079626533e-07 ;
	setAttr ".r" -type "double3" 0.037033075345610997 -6.4598177141619368 -0.98284030053750582 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.66474 0.74630399999999997 -0.033935199999999999 0
		 -0.022224000000000001 0.065158300000000002 0.99762700000000004 0 0.74674399999999996 -0.66240900000000003 0.0598992 0
		 -29.674610999999999 128.455669 -2.123783 1;
	setAttr ".fbxID" 5;
createNode joint -n "upperarm_correctiveRoot_r" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r";
	rename -uid "99D9802C-4E3F-6094-A86D-B385CE729831";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -7.1054273576010019e-14 1.7763568394002505e-15 1.4210854715202004e-14 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.57603400000000005 0.81709100000000001 -0.023413799999999999 0
		 -0.032592099999999999 0.051578499999999999 0.99813700000000005 0 0.81677599999999995 -0.57419699999999996 0.056341599999999999 0
		 -19.009882000000001 143.58299500000001 -2.5572699999999999 1;
	setAttr ".fbxID" 5;
createNode joint -n "upperarm_bck_r" -p "upperarm_correctiveRoot_r";
	rename -uid "991637B8-4ED0-8BF6-6295-2C8A5852F9CF";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -1.5995808839797974 -7.6376986503601074 -0.57636767625808716 ;
	setAttr ".r" -type "double3" -71.338605903548057 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.57603400000000005 0.81709100000000001 -0.023413799999999999 0
		 -0.78426399999999996 0.56051300000000004 0.26599899999999999 0 0.23046900000000001 -0.13486200000000001 0.96368900000000002 0
		 -20.153129 142.21300099999999 -10.17576 1;
	setAttr ".fbxID" 5;
createNode joint -n "upperarm_in_r" -p "upperarm_correctiveRoot_r";
	rename -uid "AB26E6C8-4575-426F-91B4-5388B70AB13B";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -6.5511422157287598 0.5461316704750061 4.5569877624511719 ;
	setAttr ".r" -type "double3" 179.99999914599996 -48.194143483235486 -7.1097122515502626e-23 ;
	setAttr ".s" -type "double3" 1 1.0000000000000009 1.0000000000000002 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.99282000000000004 0.11666899999999999 0.026389699999999999 0
		 0.032592099999999999 -0.051578499999999999 -0.99813700000000005 0 -0.11509 0.99183100000000002 -0.055010700000000003 0
		 -19.079322000000001 135.64167699999999 -1.60202 1;
	setAttr ".fbxID" 5;
createNode joint -n "upperarm_fwd_r" -p "upperarm_correctiveRoot_r";
	rename -uid "F44C7830-4B91-45F0-56F9-DEA42D4B1EFD";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -3.3879806995391846 8.5167255401611328 0.8736957311630249 ;
	setAttr ".r" -type "double3" 98.945174165607767 -1.9520053287632744 11.877573660059191 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.58448999999999995 0.790184 0.184338 0 0.81102600000000002 -0.57584500000000005 -0.103144 0
		 0.024648099999999999 0.20979 -0.97743599999999997 0 -20.525437 140.75231400000001 6.0721400000000001 1;
	setAttr ".fbxID" 5;
createNode joint -n "upperarm_out_r" -p "upperarm_correctiveRoot_r";
	rename -uid "C474BC5D-4A55-F0DC-3C47-7A8DA5AE9FE6";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -0.35331422090530396 -0.044167179614305496 -5.9935150146484375 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.57603400000000005 0.81709100000000001 -0.023413799999999999 0
		 -0.032592099999999999 0.051578499999999999 0.99813700000000005 0 0.81677599999999995 -0.57419699999999996 0.056341599999999999 0
		 -24.107323000000001 146.73348799999999 -2.9307669999999999 1;
	setAttr ".fbxID" 5;
createNode joint -n "clavicle_out_r" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r";
	rename -uid "2E3B56A2-4EC3-229C-9F55-D78813DECA7B";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -12.041718482971191 0.44230145215988159 -6.3165755271911621 ;
	setAttr ".r" -type "double3" -0.1805298097407074 -3.1102894160722525 -4.2915710380114067 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.99471299999999996 0.098584500000000005 -0.028753799999999999 0
		 0.0278073 0.0109622 0.99955300000000002 0 0.098855700000000005 -0.99506799999999995 0.0081629200000000006 0
		 -14.299899999999999 150.70452299999999 -1.8724730000000001 1;
	setAttr ".fbxID" 5;
createNode joint -n "clavicle_scap_r" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r";
	rename -uid "1DDB26C8-464B-4590-4F0F-39931C6D8629";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -10.214470863342285 -7.5677251815795898 1.9570828676223755 ;
	setAttr ".r" -type "double3" 0.18052980974070743 3.1102894160722525 175.7084289619886 ;
	setAttr ".s" -type "double3" 0.99999999999999956 1 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.99471299999999996 -0.098584500000000005 0.028753799999999999 0
		 -0.0278073 -0.0109622 -0.99955300000000002 0 0.098855700000000005 -0.99506799999999995 0.0081629200000000006 0
		 -10.865945999999999 142.835477 -9.7616329999999998 1;
	setAttr ".fbxID" 5;
createNode joint -n "clavicle_pec_r" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05";
	rename -uid "566BEF44-453E-08A2-7194-F5B594CB6CCF";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -9.2378215789794922 -7.915499210357666 9.635502815246582 ;
	setAttr ".r" -type "double3" 123.22087241428461 82.005483575089315 -67.346542998772435 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.99028099999999997 0.075315699999999999 0.11692 0
		 -0.11634799999999999 -0.011954899999999999 0.99313700000000005 0 0.076196600000000003 -0.99708799999999997 -0.0030758999999999999 0
		 -9.6355029999999999 133.40135699999999 9.9426050000000004 1;
	setAttr ".fbxID" 5;
createNode joint -n "spine_04_latissimus_l" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05";
	rename -uid "DDD89190-44DA-4114-B33A-378FD6BBCF71";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -9.9618148803710938 4.6262931823730469 -15.443478584289551 ;
	setAttr ".r" -type "double3" 130.38472935526508 71.622025192132099 118.20949958519994 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.94899699999999998 -0.19559699999999999 -0.247277 0
		 -0.24015500000000001 0.059707799999999998 -0.96889599999999998 0 0.20427799999999999 0.97886499999999999 0.0096887699999999993 0
		 15.443479 130.48176900000001 -2.2760989999999999 1;
	setAttr ".fbxID" 5;
createNode joint -n "spine_04_latissimus_r" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05";
	rename -uid "96BB30EC-49BD-CB3D-2FD2-37A70219D75A";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -9.9671039581298828 4.6270122528076172 15.454672813415527 ;
	setAttr ".r" -type "double3" -145.97671309682153 84.725073756067971 23.82468309464182 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.99576500000000001 0.076253799999999997 -0.0513553 0
		 0.051440300000000001 0.00085021800000000002 0.99867600000000001 0 0.0761965 -0.99708799999999997 -0.0030758999999999999 0
		 -15.454673 130.47643600000001 -2.2758759999999998 1;
	setAttr ".fbxID" 5;
createNode joint -n "clavicle_pec_l" -p "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05";
	rename -uid "D571E20A-416E-A2BA-6D27-ED987CCAD1F7";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -9.2428960800170898 -7.6847681999206543 -9.3102016448974609 ;
	setAttr ".r" -type "double3" 123.20088551351532 82.006463152853811 112.63366553706553 ;
	setAttr ".s" -type "double3" 0.99999999999999944 1 0.99999999999999978 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.99028400000000005 -0.075266200000000005 -0.11693199999999999 0
		 -0.11636000000000001 0.011949100000000001 -0.99313499999999999 0 0.076146699999999998 0.99709199999999998 0.0030749699999999998 0
		 9.3102020000000003 133.355762 9.716367 1;
	setAttr ".fbxID" 5;
createNode joint -n "thigh_r" -p "|UE5Full|root|pelvis";
	rename -uid "F26D8DE7-4D06-6F91-A73D-54912BDFC76B";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "blendParent1" -ln "blendParent1" -dt "string";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -2.3657262325286865 -0.11948779225349426 9.9690914154052734 ;
	setAttr ".r" -type "double3" 8.4085386612241138 -3.1255399000842647 176.4398666592337 ;
	setAttr ".s" -type "double3" 0.99999999999999911 0.99999999999999911 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.0545239 -0.99851199999999996 0.00127173 0 -0.146013 0.0092329899999999999 0.98924000000000001 0
		 -0.98777899999999996 0.053751500000000001 -0.14629900000000001 0 -9.9690910000000006 93.543381999999994 2.5500229999999999 1;
	setAttr -k on ".blendParent1" -type "string" "1.000000";
	setAttr ".fbxID" 5;
createNode joint -n "calf_r" -p "|UE5Full|root|pelvis|thigh_r";
	rename -uid "486B1B46-4998-6540-3C3B-A3B234748AFA";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 43.341262817382812 3.5527136788005009e-15 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 0 0 -5.0048445558743584 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999956 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.041577900000000001 -0.99551000000000001 -0.085034399999999996 0
		 -0.15021300000000001 -0.077912300000000004 0.98557899999999998 0 -0.98777899999999996 0.053751500000000001 -0.14629900000000001 0
		 -12.332227 50.266626000000002 2.6051419999999998 1;
	setAttr ".fbxID" 5;
createNode joint -n "foot_r" -p "|UE5Full|root|pelvis|thigh_r|calf_r";
	rename -uid "FA09E02D-4B4E-3967-1B8C-1E9174BE3E3D";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 42.217948913574219 -1.1102230246251565e-15 5.3290705182007514e-15 ;
	setAttr ".r" -type "double3" -0.004662608385495883 3.0812019613373778 2.6641047060062917 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.0046495299999999998 -0.999502 -0.031211800000000001 0
		 -0.148038 -0.0315562 0.98847799999999997 0 -0.98897100000000004 2.4559500000000001e-05 -0.14810999999999999 0
		 -14.087559000000001 8.2382290000000005 -0.98483399999999999 1;
	setAttr ".fbxID" 5;
createNode joint -n "ball_r" -p "|UE5Full|root|pelvis|thigh_r|calf_r|foot_r";
	rename -uid "74FDD135-4E74-B5CA-2B7D-02A5583D099C";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 7.0094366073608398 15.237594604492188 -0.53894561529159546 ;
	setAttr ".r" -type "double3" 0 0 -90.000000000000014 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.148038 0.0315562 -0.98847799999999997 0 0.0046495299999999998 -0.999502 -0.031211800000000001 0
		 -0.98897100000000004 2.4559500000000001e-05 -0.14810999999999999 0 -15.777702 0.75143000000000004 13.938242000000001 1;
	setAttr ".fbxID" 5;
createNode joint -n "ankle_fwd_r" -p "|UE5Full|root|pelvis|thigh_r|calf_r|foot_r";
	rename -uid "1DC15A20-45E1-E6C2-FEC2-28A7E7799D0E";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -2.1680757999420166 5.0973677635192871 -0.39477404952049255 ;
	setAttr ".r" -type "double3" 90.801170212482674 -3.5810265870160771 -4.5301367468424685 ;
	setAttr ".s" -type "double3" 0.99999999999999956 1.0000000000000002 1.0000000000000002 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.045475500000000002 -0.99194499999999997 -0.118225 0
		 -0.98590500000000003 0.063640299999999997 -0.15473200000000001 0 0.16100900000000001 0.109523 -0.98085699999999998 0
		 -14.461821 10.244362000000001 4.1799419999999996 1;
	setAttr ".fbxID" 5;
createNode joint -n "ankle_bck_r" -p "|UE5Full|root|pelvis|thigh_r|calf_r|foot_r";
	rename -uid "B1BB86EA-448C-54E2-08F9-4D88AEBEDF5C";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -0.52658110857009888 -4.0418381690979004 0.92914694547653198 ;
	setAttr ".r" -type "double3" -89.198829787517411 -3.5810265870160674 -4.5301367468424676 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999956 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.045475500000000002 -0.99194499999999997 -0.118225 0
		 0.98590500000000003 -0.063640299999999997 0.15473200000000001 0 -0.16100900000000001 -0.109523 0.98085699999999998 0
		 -14.410563 8.8921159999999997 -5.1012839999999997 1;
	setAttr ".fbxID" 5;
createNode joint -n "calf_twist_02_r" -p "|UE5Full|root|pelvis|thigh_r|calf_r";
	rename -uid "D9FCC3DF-47DA-EA8E-DF19-269937C3A2B6";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 14.072649955749512 5.773159728050814e-15 0.037728950381278992 ;
	setAttr ".r" -type "double3" -0.0046559128746443742 0.25816272471228924 2.6643342814062052 ;
	setAttr ".s" -type "double3" 1 0.99999999999999956 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.044064300000000001 -0.99828799999999995 -0.038468599999999999 0
		 -0.148038 -0.0315562 0.98847799999999997 0 -0.98799999999999999 0.049251400000000001 -0.146394 0
		 -12.954605000000001 36.259188000000002 1.402963 1;
	setAttr ".fbxID" 5;
createNode joint -n "calf_twistCor_02_r" -p "|UE5Full|root|pelvis|thigh_r|calf_r|calf_twist_02_r";
	rename -uid "B3A21817-4C67-4356-B7B7-19A1F4DCE788";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -1.4210854715202004e-14 -4.4408920985006262e-16 8.8817841970012523e-15 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.044064300000000001 -0.99828799999999995 -0.038468599999999999 0
		 -0.148038 -0.0315562 0.98847799999999997 0 -0.98799999999999999 0.049251400000000001 -0.146394 0
		 -12.954605000000001 36.259188000000002 1.402963 1;
	setAttr ".fbxID" 5;
createNode joint -n "calf_twist_01_r" -p "|UE5Full|root|pelvis|thigh_r|calf_r";
	rename -uid "B726077F-4EC8-BC51-BFDF-708A83D8F2AD";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 28.145299911499023 7.1054273576010019e-15 0.075457900762557983 ;
	setAttr ".r" -type "double3" -0.0046559128746443742 0.25816272471228924 2.6643342814062052 ;
	setAttr ".s" -type "double3" 1 0.99999999999999956 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.044064300000000001 -0.99828799999999995 -0.038468599999999999 0
		 -0.148038 -0.0315562 0.98847799999999997 0 -0.98799999999999999 0.049251400000000001 -0.146394 0
		 -13.576983999999999 22.251750000000001 0.20078499999999999 1;
	setAttr ".fbxID" 5;
createNode joint -n "calf_correctiveRoot_r" -p "|UE5Full|root|pelvis|thigh_r|calf_r";
	rename -uid "F86A2F12-4A40-22BE-D42A-D8BCBCE51AA3";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 2.2204460492503131e-15 -4.9737991503207013e-14 ;
	setAttr ".r" -type "double3" 0.0024874098349542081 -0.15361033275133484 7.5830605318140299e-22 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.044226000000000001 -0.99536199999999997 -0.085426299999999997 0
		 -0.150256 -0.077909900000000004 0.98557300000000003 0 -0.98765700000000001 0.0564237 -0.14611299999999999 0
		 -12.332227 50.266626000000002 2.6051419999999998 1;
	setAttr ".fbxID" 5;
createNode joint -n "calf_kneeBack_r" -p "calf_correctiveRoot_r";
	rename -uid "2FCAABFC-4FE5-A20C-7D7B-77B2247D1940";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0.15535767376422882 -5.7634234428405762 -0.42761912941932678 ;
	setAttr ".r" -type "double3" -87.809358873689121 -0.63786814850703222 -2.8106705899652917 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999956 0.99999999999999956 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.047797800000000001 -0.98965499999999995 -0.13527 0
		 0.98064600000000002 -0.0722362 0.181978 0 -0.18986700000000001 -0.12395399999999999 0.97395399999999999 0
		 -11.050769000000001 50.536887999999998 -3.0259209999999999 1;
	setAttr ".fbxID" 5;
createNode joint -n "calf_knee_r" -p "calf_correctiveRoot_r";
	rename -uid "582D114B-4AC0-5264-8A40-A2A421FDB3B8";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0.18996571004390717 5.2457842826843262 -0.0016205285210162401 ;
	setAttr ".r" -type "double3" 92.190641126310908 -0.63786814850703155 -2.8106705899652926 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999956 0.99999999999999956 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.047797800000000001 -0.98965499999999995 -0.13527 0
		 -0.98064600000000002 0.0722362 -0.181978 0 0.18986700000000001 0.12395399999999999 -0.97395399999999999 0
		 -13.127236999999999 49.668751 7.759252 1;
	setAttr ".fbxID" 5;
createNode joint -n "thigh_twist_01_r" -p "|UE5Full|root|pelvis|thigh_r";
	rename -uid "EC4BCDE8-44D8-9E30-0754-D2A29166EF1F";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 14.447087287902832 6.2172489379008766e-15 -3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 0 0.25820470285919356 -1.3073006136480461 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999956 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.046726499999999997 -0.99869399999999997 -0.020638299999999998 0
		 -0.14721899999999999 -0.0135502 0.98901099999999997 0 -0.98799999999999999 0.049251400000000001 -0.146394 0
		 -10.756803 79.117796999999996 2.5683959999999999 1;
	setAttr ".fbxID" 5;
createNode joint -n "thigh_twistCor_01_r" -p "|UE5Full|root|pelvis|thigh_r|thigh_twist_01_r";
	rename -uid "CD5CE274-4983-6CCD-AFB5-9FAB223482DF";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -1.4210854715202004e-14 4.8849813083506888e-15 1.5987211554602254e-14 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.046726499999999997 -0.99869399999999997 -0.020638299999999998 0
		 -0.14721899999999999 -0.0135502 0.98901099999999997 0 -0.98799999999999999 0.049251400000000001 -0.146394 0
		 -10.756803 79.117796999999996 2.5683959999999999 1;
	setAttr ".fbxID" 5;
createNode joint -n "thigh_twist_02_r" -p "|UE5Full|root|pelvis|thigh_r";
	rename -uid "50C95C9D-4603-CFB5-28C3-06846A349212";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 28.894174575805664 7.9936057773011271e-15 -3.5527136788005009e-14 ;
	setAttr ".r" -type "double3" 0 0.25820470285919356 -1.3073006136480461 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999956 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.046726499999999997 -0.99869399999999997 -0.020638299999999998 0
		 -0.14721899999999999 -0.0135502 0.98901099999999997 0 -0.98799999999999999 0.049251400000000001 -0.146394 0
		 -11.544515000000001 64.692211999999998 2.5867689999999999 1;
	setAttr ".fbxID" 5;
createNode joint -n "thigh_twistCor_02_r" -p "|UE5Full|root|pelvis|thigh_r|thigh_twist_02_r";
	rename -uid "FDCA69E6-4104-06EC-10B4-57A6A47970FC";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 1.4210854715202004e-14 5.3290705182007514e-15 1.5987211554602254e-14 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.046726499999999997 -0.99869399999999997 -0.020638299999999998 0
		 -0.14721899999999999 -0.0135502 0.98901099999999997 0 -0.98799999999999999 0.049251400000000001 -0.146394 0
		 -11.544515000000001 64.692211999999998 2.5867689999999999 1;
	setAttr ".fbxID" 5;
createNode joint -n "thigh_correctiveRoot_r" -p "|UE5Full|root|pelvis|thigh_r";
	rename -uid "D942821D-4A99-3003-02B3-3CB69F4102EF";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -7.1054273576010019e-14 3.5527136788005009e-15 -2.1316282072803006e-14 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.0545239 -0.99851199999999996 0.00127173 0 -0.146013 0.0092329899999999999 0.98924000000000001 0
		 -0.98777899999999996 0.053751500000000001 -0.14629900000000001 0 -9.9690910000000006 93.543381999999994 2.5500229999999999 1;
	setAttr ".fbxID" 5;
createNode joint -n "thigh_fwd_r" -p "thigh_correctiveRoot_r";
	rename -uid "47533768-413F-632E-9FEE-97B1FFA5046E";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -4.2409243583679199 6.7747397422790527 -0.75509780645370483 ;
	setAttr ".r" -type "double3" 90.000000000000014 0 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.0545239 -0.99851199999999996 0.00127173 0 -0.98777899999999996 0.053751500000000001 -0.14629900000000001 0
		 0.146013 -0.0092329899999999999 -0.98924000000000001 0 -9.9811890000000005 97.799958000000004 9.3569410000000008 1;
	setAttr ".fbxID" 5;
createNode joint -n "thigh_bck_r" -p "thigh_correctiveRoot_r";
	rename -uid "CF8384F6-4A4C-BF89-1FB8-5B8A6D4E585A";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -5.0374994277954102 -10.062273979187012 -1.5191730260848999 ;
	setAttr ".r" -type "double3" -90.000000000000014 0 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.0545239 -0.99851199999999996 0.00127173 0 0.98777899999999996 -0.053751500000000001 0.14629900000000001 0
		 -0.146013 0.0092329899999999999 0.98924000000000001 0 -6.7245980000000003 98.398820999999998 -7.188129 1;
	setAttr ".fbxID" 5;
createNode joint -n "thigh_out_r" -p "thigh_correctiveRoot_r";
	rename -uid "FC8396DD-4E84-CE44-211C-C58BD1BB4C8D";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -5.8166170120239258 -0.60062211751937866 5.1101841926574707 ;
	setAttr ".r" -type "double3" 179.99999774099993 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999956 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.0545239 -0.99851199999999996 0.00127173 0 0.146013 -0.0092329899999999999 -0.98924000000000001 0
		 0.98777899999999996 -0.053751500000000001 0.14629900000000001 0 -14.611981 99.620475999999996 1.200852 1;
	setAttr ".fbxID" 5;
createNode joint -n "thigh_in_r" -p "thigh_correctiveRoot_r";
	rename -uid "25DDC9E4-4C63-BB80-326D-75A32D970E2C";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 10.928328514099121 0.76586586236953735 -8.5778665542602539 ;
	setAttr ".r" -type "double3" 2.2588726814303131e-06 0 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.0545239 -0.99851199999999996 0.00127173 0 -0.146013 0.0092329899999999999 0.98924000000000001 0
		 -0.98777899999999996 0.053751500000000001 -0.14629900000000001 0 -2.2037360000000001 82.177316000000005 4.5764800000000001 1;
	setAttr ".fbxID" 5;
createNode joint -n "thigh_bck_lwr_r" -p "thigh_correctiveRoot_r";
	rename -uid "30A45C9E-48F3-2755-7A83-29ACB18BB914";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 5.2761650085449219 -10.648496627807617 -1.4992258548736572 ;
	setAttr ".r" -type "double3" -90.000000000000014 0 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.0545239 -0.99851199999999996 0.00127173 0 0.98777899999999996 -0.053751500000000001 0.14629900000000001 0
		 -0.146013 0.0092329899999999999 0.98924000000000001 0 -7.2210470000000004 88.096165999999997 -7.7578459999999998 1;
	setAttr ".fbxID" 5;
createNode joint -n "thigh_fwd_lwr_r" -p "thigh_correctiveRoot_r";
	rename -uid "48A221F7-486F-8F53-6B0A-E38CF755D729";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 1.0280262231826782 6.8996591567993164 -0.72430419921875 ;
	setAttr ".r" -type "double3" 90.000000000000014 0 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.0545239 -0.99851199999999996 0.00127173 0 -0.98777899999999996 0.053751500000000001 -0.14629900000000001 0
		 0.146013 -0.0092329899999999999 -0.98924000000000001 0 -10.317130000000001 92.541657999999998 9.4827119999999994 1;
	setAttr ".fbxID" 5;
createNode joint -n "thigh_l" -p "|UE5Full|root|pelvis";
	rename -uid "156B9E6D-4F15-A748-92A0-37BCDD741E0B";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "blendParent1" -ln "blendParent1" -dt "string";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -2.3657112121582031 -0.11004376411437988 -9.969202995300293 ;
	setAttr ".r" -type "double3" 8.4085386612241173 -3.1255399000842665 -3.5601333407663098 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.0545239 0.99851199999999996 -0.00127173 0 -0.146013 -0.0092329899999999999 -0.98924000000000001 0
		 -0.98777899999999996 -0.053751500000000001 0.14629900000000001 0 9.9692030000000003 93.542798000000005 2.540597 1;
	setAttr -k on ".blendParent1" -type "string" "1.000000";
	setAttr ".fbxID" 5;
createNode joint -n "calf_l" -p "|UE5Full|root|pelvis|thigh_l";
	rename -uid "DB4B7AE1-438F-B5F2-613C-69918ED880F1";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -43.34130859375 4.4408920985006262e-15 5.3290705182007514e-15 ;
	setAttr ".r" -type "double3" 0 0 -5.0048445558743584 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999956 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.041577900000000001 0.99551000000000001 0.085034399999999996 0
		 -0.15021300000000001 0.077912300000000004 -0.98557899999999998 0 -0.98777899999999996 -0.053751500000000001 0.14629900000000001 0
		 12.332341 50.265996999999999 2.5957159999999999 1;
	setAttr ".fbxID" 5;
createNode joint -n "foot_l" -p "|UE5Full|root|pelvis|thigh_l|calf_l";
	rename -uid "4ED7032E-4CCC-D780-3729-71A1EEA975FF";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -42.217914581298828 -2.1094237467877974e-15 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" -0.004662608385495883 3.0812019613373778 2.6641047060062917 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.0046495299999999998 0.999502 0.031211800000000001 0
		 -0.148038 0.0315562 -0.98847799999999997 0 -0.98897100000000004 -2.4559500000000001e-05 0.14810999999999999 0
		 14.087671 8.2376339999999999 -0.99425699999999995 1;
	setAttr ".fbxID" 5;
createNode joint -n "ball_l" -p "|UE5Full|root|pelvis|thigh_l|calf_l|foot_l";
	rename -uid "F0139222-436A-298A-C2D7-1C92B72A0A2D";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -7.0094366073608398 -15.237588882446289 0.53888744115829468 ;
	setAttr ".r" -type "double3" 0 0 -90.000000000000014 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.148038 -0.0315562 0.98847799999999997 0 0.0046495299999999998 0.999502 0.031211800000000001 0
		 -0.98897100000000004 -2.4559500000000001e-05 0.14810999999999999 0 15.777870999999999 0.75083500000000003 13.928805000000001 1;
	setAttr ".fbxID" 5;
createNode joint -n "ankle_bck_l" -p "|UE5Full|root|pelvis|thigh_l|calf_l|foot_l";
	rename -uid "B5A96066-4701-B6DC-4CE1-958D5B60A773";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0.61270773410797119 3.4437336921691895 -0.4924950897693634 ;
	setAttr ".r" -type "double3" -97.228839501486391 -4.1793485300993209 -3.9848641766103801 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.057188799999999998 0.99224500000000004 0.110357 0
		 0.99812199999999995 0.059253199999999999 -0.0155158 0 -0.021934499999999999 0.109263 -0.99377099999999996 0
		 14.067781999999999 8.9587199999999996 -4.4521329999999999 1;
	setAttr ".fbxID" 5;
createNode joint -n "ankle_fwd_l" -p "|UE5Full|root|pelvis|thigh_l|calf_l|foot_l";
	rename -uid "48153C42-4BEC-2611-7C00-4AB9D43283C2";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 1.7797976732254028 -4.5947589874267578 -0.26459750533103943 ;
	setAttr ".r" -type "double3" 82.771160498513609 -4.1793485300993227 -3.9848641766103818 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.057188799999999998 0.99224500000000004 0.110357 0
		 -0.99812199999999995 -0.059253199999999999 0.0155158 0 0.021934499999999999 -0.109263 0.99377099999999996 0
		 15.037822 9.8715589999999995 3.563923 1;
	setAttr ".fbxID" 5;
createNode joint -n "calf_twist_02_l" -p "|UE5Full|root|pelvis|thigh_l|calf_l";
	rename -uid "0E960F01-47FB-6B93-B17F-EDAC953C6175";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -14.072638511657715 2.2204460492503131e-15 1.9539925233402755e-14 ;
	setAttr ".r" -type "double3" -0.0046559128746443742 0.25816272471228924 2.6643342814062052 ;
	setAttr ".s" -type "double3" 1 0.99999999999999956 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.044064300000000001 0.99828799999999995 0.038468599999999999 0
		 -0.148038 0.0315562 -0.98847799999999997 0 -0.98799999999999999 -0.049251400000000001 0.146394 0
		 12.917451 36.256542000000003 1.3990579999999999 1;
	setAttr ".fbxID" 5;
createNode joint -n "calf_twistCor_02_l" -p "|UE5Full|root|pelvis|thigh_l|calf_l|calf_twist_02_l";
	rename -uid "47CA6F63-4404-154D-47E8-8192799FA2D1";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -1.4210854715202004e-14 -3.5527136788005009e-15 -1.4210854715202004e-14 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.044064300000000001 0.99828799999999995 0.038468599999999999 0
		 -0.148038 0.0315562 -0.98847799999999997 0 -0.98799999999999999 -0.049251400000000001 0.146394 0
		 12.917451 36.256542000000003 1.3990579999999999 1;
	setAttr ".fbxID" 5;
createNode joint -n "calf_twist_01_l" -p "|UE5Full|root|pelvis|thigh_l|calf_l";
	rename -uid "F3B73071-4E87-1B34-3EFB-1FAEBC23FBE6";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -28.14527702331543 5.0670109885686543e-06 -0.075448110699653625 ;
	setAttr ".r" -type "double3" -0.0046559128746443742 0.25816272471228924 2.6643342814062052 ;
	setAttr ".s" -type "double3" 1 0.99999999999999956 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.044064300000000001 0.99828799999999995 0.038468599999999999 0
		 -0.148038 0.0315562 -0.98847799999999997 0 -0.98799999999999999 -0.049251400000000001 0.146394 0
		 13.577086 22.251144 0.191358 1;
	setAttr ".fbxID" 5;
createNode joint -n "calf_correctiveRoot_l" -p "|UE5Full|root|pelvis|thigh_l|calf_l";
	rename -uid "23E95027-40EC-CF77-3CF7-B49F6F19B14B";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 2.9690784231206635e-07 -3.3903711482707877e-06 -1.2112296644772869e-05 ;
	setAttr ".r" -type "double3" 0.0024874098349539362 -0.15361033275133484 1.516612106362806e-21 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.044226000000000001 0.99536199999999997 0.085426299999999997 0
		 -0.150256 0.077909900000000004 -0.98557300000000003 0 -0.98765700000000001 -0.0564237 0.14611299999999999 0
		 12.332352999999999 50.265996999999999 2.5957170000000001 1;
	setAttr ".fbxID" 5;
createNode joint -n "calf_kneeBack_l" -p "calf_correctiveRoot_l";
	rename -uid "A8E9DC86-4CEC-0583-A079-D4B0477CB3C2";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -0.15856355428695679 5.7585320472717285 0.40399324893951416 ;
	setAttr ".r" -type "double3" -87.809315223536359 -0.63887652912769677 -2.8097805136317739 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.047817600000000002 0.98965599999999998 0.13525699999999999 0
		 0.98064499999999999 0.072253200000000004 -0.181977 0 -0.18986700000000001 0.12393800000000001 -0.97395600000000004 0
		 11.075106 50.534021000000003 -3.0342500000000001 1;
	setAttr ".fbxID" 5;
createNode joint -n "calf_knee_l" -p "calf_correctiveRoot_l";
	rename -uid "AF8E75A8-4B7E-96D8-55B5-BD83F4F780AC";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -0.1928076446056366 -5.2492456436157227 -0.0011415837798267603 ;
	setAttr ".r" -type "double3" 92.190684776463655 -0.63887652912769843 -2.8097805136317802 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.047817600000000002 0.98965599999999998 0.13525699999999999 0
		 -0.98064499999999999 -0.072253200000000004 0.181977 0 0.18986700000000001 -0.12393800000000001 0.97395600000000004 0
		 13.130737 49.665179999999999 7.7525919999999999 1;
	setAttr ".fbxID" 5;
createNode joint -n "thigh_twist_01_l" -p "|UE5Full|root|pelvis|thigh_l";
	rename -uid "C4DAB8E3-473C-9C25-4B46-68B7B74F8D5A";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -14.447102546691895 -1.7763568394002505e-15 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 0 0.25820470285919356 -1.3073006136480461 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999956 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.046726499999999997 0.99869399999999997 0.020638299999999998 0
		 -0.14721899999999999 0.0135502 -0.98901099999999997 0 -0.98799999999999999 -0.049251400000000001 0.146394 0
		 10.756916 79.117198000000002 2.55897 1;
	setAttr ".fbxID" 5;
createNode joint -n "thigh_twistCor_01_l" -p "|UE5Full|root|pelvis|thigh_l|thigh_twist_01_l";
	rename -uid "09E3F6DB-4695-0151-AA2F-99902DBCBD0D";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -1.4210854715202004e-14 -8.8817841970012523e-16 1.7763568394002505e-15 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.046726499999999997 0.99869399999999997 0.020638299999999998 0
		 -0.14721899999999999 0.0135502 -0.98901099999999997 0 -0.98799999999999999 -0.049251400000000001 0.146394 0
		 10.756916 79.117198000000002 2.55897 1;
	setAttr ".fbxID" 5;
createNode joint -n "thigh_twist_02_l" -p "|UE5Full|root|pelvis|thigh_l";
	rename -uid "11EC9E7C-4692-8724-D72E-37ABFB23A5B6";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -28.894205093383789 -2.2688980152452132e-06 -8.0748641266836785e-06 ;
	setAttr ".r" -type "double3" 0 0.25820470285919356 -1.3073006136480461 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999956 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.046726499999999997 0.99869399999999997 0.020638299999999998 0
		 -0.14721899999999999 0.0135502 -0.98901099999999997 0 -0.98799999999999999 -0.049251400000000001 0.146394 0
		 11.544636000000001 64.691597999999999 2.5773440000000001 1;
	setAttr ".fbxID" 5;
createNode joint -n "thigh_twistCor_02_l" -p "|UE5Full|root|pelvis|thigh_l|thigh_twist_02_l";
	rename -uid "6C01082E-4A61-0FD6-864D-61AEEC562A97";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0 -7.1054273576010019e-15 1.2434497875801753e-14 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.046726499999999997 0.99869399999999997 0.020638299999999998 0
		 -0.14721899999999999 0.0135502 -0.98901099999999997 0 -0.98799999999999999 -0.049251400000000001 0.146394 0
		 11.544636000000001 64.691597999999999 2.5773440000000001 1;
	setAttr ".fbxID" 5;
createNode joint -n "thigh_correctiveRoot_l" -p "|UE5Full|root|pelvis|thigh_l";
	rename -uid "EEAB0115-44EF-7D12-2821-15AE133A7B2A";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -1.4210854715202004e-14 -1.7763568394002505e-15 -1.0658141036401503e-14 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.0545239 0.99851199999999996 -0.00127173 0 -0.146013 -0.0092329899999999999 -0.98924000000000001 0
		 -0.98777899999999996 -0.053751500000000001 0.14629900000000001 0 9.9692030000000003 93.542798000000005 2.540597 1;
	setAttr ".fbxID" 5;
createNode joint -n "thigh_bck_l" -p "thigh_correctiveRoot_l";
	rename -uid "C3A10EE0-4514-DC33-9F10-A2AB35FA96D0";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 5.0354571342468262 10.055751800537109 1.4929672479629517 ;
	setAttr ".r" -type "double3" -90.000000000000014 0 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.0545239 0.99851199999999996 -0.00127173 0 0.98777899999999996 0.053751500000000001 -0.14629900000000001 0
		 -0.146013 -0.0092329899999999999 -0.98924000000000001 0 6.7516590000000001 98.397666999999998 -7.1949350000000001 1;
	setAttr ".fbxID" 5;
createNode joint -n "thigh_fwd_l" -p "thigh_correctiveRoot_l";
	rename -uid "A03EEB3A-444A-CC30-B071-73AB2EC0791F";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 4.2295513153076172 -6.7731161117553711 0.74736285209655762 ;
	setAttr ".r" -type "double3" 90.000000000000014 0 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.0545239 0.99851199999999996 -0.00127173 0 -0.98777899999999996 -0.053751500000000001 0.14629900000000001 0
		 0.146013 0.0092329899999999999 0.98924000000000001 0 9.9893249999999991 97.788419000000005 9.3447910000000007 1;
	setAttr ".fbxID" 5;
createNode joint -n "thigh_out_l" -p "thigh_correctiveRoot_l";
	rename -uid "EE6CC5D1-4048-3240-4375-04878BF491F1";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 5.8140983581542969 0.58643501996994019 -5.1227350234985352 ;
	setAttr ".r" -type "double3" 180 0 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.0545239 0.99851199999999996 -0.00127173 0 0.146013 0.0092329899999999999 0.98924000000000001 0
		 0.98777899999999996 0.053751500000000001 -0.14629900000000001 0 14.626699 99.618183999999999 1.203627 1;
	setAttr ".fbxID" 5;
createNode joint -n "thigh_bck_lwr_l" -p "thigh_correctiveRoot_l";
	rename -uid "E6D2438F-482D-C86D-C94F-21BBFDE08F39";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -5.2984728813171387 10.491520881652832 1.2301521301269531 ;
	setAttr ".r" -type "double3" -90.000000000000014 0 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.0545239 0.99851199999999996 -0.00127173 0 0.98777899999999996 0.053751500000000001 -0.14629900000000001 0
		 -0.146013 -0.0092329899999999999 -0.98924000000000001 0 7.5110799999999998 88.089220999999995 -7.6513220000000004 1;
	setAttr ".fbxID" 5;
createNode joint -n "thigh_in_l" -p "thigh_correctiveRoot_l";
	rename -uid "14B1BA60-4120-766B-F55C-AFB18E011DD4";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -10.868840217590332 -0.82668650150299072 8.5551881790161133 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.0545239 0.99851199999999996 -0.00127173 0 -0.146013 -0.0092329899999999999 -0.98924000000000001 0
		 -0.98777899999999996 -0.053751500000000001 0.14629900000000001 0 2.2318859999999998 82.237913000000006 4.6238260000000002 1;
	setAttr ".fbxID" 5;
createNode joint -n "thigh_fwd_lwr_l" -p "thigh_correctiveRoot_l";
	rename -uid "C58EEB08-4159-89FA-86F5-60B209B0E6BE";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -1.1209093332290649 -7.3878488540649414 0.64839571714401245 ;
	setAttr ".r" -type "double3" 90.000000000000014 0 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.0545239 0.99851199999999996 -0.00127173 0 -0.98777899999999996 -0.053751500000000001 0.14629900000000001 0
		 0.146013 0.0092329899999999999 0.98924000000000001 0 10.468569 92.456917000000004 9.9452350000000003 1;
	setAttr ".fbxID" 5;
createNode joint -n "ik_foot_root" -p "|UE5Full|root";
	rename -uid "0A7E27E3-4A6A-2A45-1EC8-1480235545A0";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0 -1 0 0 1 0 0 0 0 0 1;
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "ik_foot_l" -p "|UE5Full|root|ik_foot_root";
	rename -uid "A9313CE4-48A1-9B03-80DE-639FB2E47D5A";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" 14.087671279907227 0.99425750970840454 8.2376375198364258 ;
	setAttr ".r" -type "double3" 90.044595639783623 -88.191663071784689 -81.527131053351454 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.0046495199999999999 0.999502 0.031211800000000001 0
		 -0.148037 0.0315562 -0.98847799999999997 0 -0.98897100000000004 -2.4561499999999999e-05 0.14810999999999999 0
		 14.087671 8.2376380000000005 -0.99425799999999998 1;
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "ik_foot_r" -p "|UE5Full|root|ik_foot_root";
	rename -uid "86B366B9-408E-F05E-AC84-A09F9B990AF6";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" -14.087558746337891 0.98483455181121826 8.2382316589355469 ;
	setAttr ".r" -type "double3" -89.955404360216178 88.1916630717853 81.527131053352846 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999967 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.0046495199999999999 -0.999502 -0.031211800000000001 0
		 -0.148037 -0.0315562 0.98847799999999997 0 -0.98897100000000004 2.4561499999999999e-05 -0.14810999999999999 0
		 -14.087559000000001 8.238232 -0.98483500000000002 1;
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "ik_hand_root" -p "|UE5Full|root";
	rename -uid "42EABCA8-4AE9-CD95-2F96-CDA7BD0FCA73";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0 -1 0 0 1 0 0 0 0 0 1;
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "ik_hand_gun" -p "|UE5Full|root|ik_hand_root";
	rename -uid "A3639817-4951-48E1-7773-1981E299EDA3";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" -47.768318176269531 -15.69880485534668 104.4664306640625 ;
	setAttr ".r" -type "double3" 68.473107478131155 -39.410111911239163 53.666512015145315 ;
	setAttr ".s" -type "double3" 1 1.0000000000000007 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.45776600000000001 0.63486699999999996 -0.62241000000000002 0
		 -0.645509 0.71872800000000003 0.258357 0 0.61136599999999997 0.28350399999999998 0.73882099999999995 0
		 -47.768318000000001 104.466431 15.698805 1;
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "ik_hand_l" -p "|UE5Full|root|ik_hand_root|ik_hand_gun";
	rename -uid "42290126-41BC-0F81-AE62-A8BD6B863676";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" 43.733570098876953 -61.669849395751953 58.408111572265625 ;
	setAttr ".r" -type "double3" -107.73758596138394 -34.036790747396601 -134.50699481505316 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000002 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.45776600000000001 -0.63486699999999996 0.62241000000000002 0
		 -0.645509 -0.71872800000000003 -0.258357 0 0.61136599999999997 -0.28350399999999998 -0.73882099999999995 0
		 47.768600999999997 104.466539 15.698888 1;
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "ik_hand_r" -p "|UE5Full|root|ik_hand_root|ik_hand_gun";
	rename -uid "DAB159C2-42C5-CF80-0681-079AA24B3030";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" -dt "string";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 0 7.1054273576010019e-15 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.45776600000000001 0.63486699999999996 -0.62241000000000002 0
		 -0.645509 0.71872800000000003 0.258357 0 0.61136599999999997 0.28350399999999998 0.73882099999999995 0
		 -47.768318000000001 104.466431 15.698805 1;
	setAttr -k on ".filmboxTypeID" -type "string" "5";
createNode joint -n "interaction" -p "|UE5Full|root";
	rename -uid "2DA97A87-49E4-FF99-31EE-3D8C9959DFF8";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0 -1 0 0 1 0 0 0 0 0 1;
	setAttr ".fbxID" 5;
createNode joint -n "center_of_mass" -p "|UE5Full|root";
	rename -uid "ABD31BFC-4957-D8F5-E6D2-FF9273844170";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0 -1 0 0 1 0 0 0 0 0 1;
	setAttr ".fbxID" 5;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "C95DEA19-4D02-4FF3-3B7C-388B0C4B1A5B";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "A7A743CF-48D7-0C17-2D64-30A21C3988D2";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "78DA409D-4C0F-C18D-93A4-21A94BF33F4E";
createNode displayLayerManager -n "layerManager";
	rename -uid "9ADD2D82-4A44-72E6-A774-709E1EEF849D";
createNode displayLayer -n "defaultLayer";
	rename -uid "A4B13E91-4044-0CB8-2500-2A9492834172";

createNode renderLayerManager -n "renderLayerManager";
	rename -uid "2E089A16-40BC-669A-0AAE-AF95B7ECC741";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "68CEE199-49F0-BA3B-B833-AF98A99C5E65";
	setAttr ".g" yes;
createNode shadingEngine -n "SKM_Manny_Simple_LOD0SG";
	rename -uid "EE769923-4BF1-B36B-8836-21B1FD0B8F96";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode shadingEngine -n "SKM_Manny_Simple_LOD0SG1";
	rename -uid "0643FD37-478C-696D-B862-1CB503F54824";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;

select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -av -k on ".fzn";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 0;
	setAttr -av -k on ".unw";
	setAttr -av -k on ".etw";
	setAttr -av -k on ".tps";
	setAttr -av -k on ".tms";
select -ne :hardwareRenderingGlobals;
	setAttr -av -k on ".cch";
	setAttr -av -k on ".fzn";
	setAttr -av -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -av -k on ".rm";
	setAttr -av -k on ".lm";
	setAttr -av -k on ".hom";
	setAttr -av -k on ".hodm";
	setAttr -av -k on ".xry";
	setAttr -av -k on ".jxr";
	setAttr -av -k on ".sslt";
	setAttr -av -k on ".cbr";
	setAttr -av -k on ".bbr";
	setAttr -av -k on ".mhl";
	setAttr -k on ".cons";
	setAttr -k on ".vac" 2;
	setAttr -av -k on ".hwi";
	setAttr -k on ".csvd";
	setAttr -av -k on ".ta";
	setAttr -av -k on ".tq";
	setAttr -k on ".ts";
	setAttr -av -k on ".etmr" no;
	setAttr -av -k on ".tmr" 4096;
	setAttr -av -k on ".aoon";
	setAttr -av -k on ".aoam";
	setAttr -av -k on ".aora";
	setAttr -av -k on ".aofr";
	setAttr -av -k on ".aosm";
	setAttr -av -k on ".hff";
	setAttr -av -k on ".hfd";
	setAttr -av -k on ".hfs";
	setAttr -av -k on ".hfe";
	setAttr -av ".hfc";
	setAttr -av -k on ".hfcr";
	setAttr -av -k on ".hfcg";
	setAttr -av -k on ".hfcb";
	setAttr -av -k on ".hfa";
	setAttr -av -k on ".mbe";
	setAttr -av -k on ".mbt";
	setAttr -av -k on ".mbsof";
	setAttr -k on ".mbsc";
	setAttr -k on ".mbc";
	setAttr -k on ".mbfa";
	setAttr -k on ".mbftb";
	setAttr -k on ".mbftg";
	setAttr -k on ".mbftr";
	setAttr -av -k on ".mbfta";
	setAttr -k on ".mbfe";
	setAttr -k on ".mbme";
	setAttr -av -k on ".mbcsx";
	setAttr -av -k on ".mbcsy";
	setAttr -av -k on ".mbasx";
	setAttr -av -k on ".mbasy";
	setAttr -av -k on ".blen";
	setAttr -av -k on ".blth";
	setAttr -av -k on ".blfr";
	setAttr -av -k on ".blfa";
	setAttr -av -k on ".blat";
	setAttr -av -k on ".msaa";
	setAttr -av -k on ".aasc";
	setAttr -av -k on ".aasq";
	setAttr -k on ".laa";
	setAttr ".dli" 1;
	setAttr -k on ".fprt";
	setAttr -k on ".rtfm" 1;
select -ne :renderPartition;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 4 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :standardSurface1;
	setAttr ".b" 0.80000001192092896;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".s" 0.20000000298023224;
	setAttr ".sr" 0.5;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -av -k on ".macc";
	setAttr -av -k on ".macd";
	setAttr -av -k on ".macq";
	setAttr -av -k on ".mcfr";
	setAttr -cb on ".ifg";
	setAttr -av -k on ".clip";
	setAttr -av -k on ".edm";
	setAttr -av -k on ".edl";
	setAttr -av -cb on ".ren";
	setAttr -av -k on ".esr";
	setAttr -av -k on ".ors";
	setAttr -cb on ".sdf";
	setAttr -av -k on ".outf";
	setAttr -av -cb on ".imfkey";
	setAttr -av -k on ".gama";
	setAttr -av -k on ".exrc";
	setAttr -av -k on ".expt";
	setAttr -av -k on ".an";
	setAttr -cb on ".ar";
	setAttr -av -k on ".fs";
	setAttr -av -k on ".ef";
	setAttr -av -k on ".bfs";
	setAttr -av -cb on ".me";
	setAttr -cb on ".se";
	setAttr -av -k on ".be";
	setAttr -av -cb on ".ep" 1;
	setAttr -av -k on ".fec";
	setAttr -av -k on ".ofc";
	setAttr -cb on ".ofe";
	setAttr -cb on ".efe";
	setAttr -cb on ".oft";
	setAttr -cb on ".umfn";
	setAttr -cb on ".ufe";
	setAttr -av -cb on ".pff";
	setAttr -av -cb on ".peie";
	setAttr -av -cb on ".ifp";
	setAttr -k on ".rv";
	setAttr -av -k on ".comp";
	setAttr -av -k on ".cth";
	setAttr -av -k on ".soll";
	setAttr -av -k on ".sosl";
	setAttr -av -k on ".rd";
	setAttr -av -k on ".lp";
	setAttr -av -k on ".sp";
	setAttr -av -k on ".shs";
	setAttr -av -k on ".lpr";
	setAttr -cb on ".gv";
	setAttr -cb on ".sv";
	setAttr -av -k on ".mm";
	setAttr -av -k on ".npu";
	setAttr -av -k on ".itf";
	setAttr -av -k on ".shp";
	setAttr -cb on ".isp";
	setAttr -av -k on ".uf";
	setAttr -av -k on ".oi";
	setAttr -av -k on ".rut";
	setAttr -av -k on ".mot";
	setAttr -av -cb on ".mb";
	setAttr -av -k on ".mbf";
	setAttr -av -k on ".mbso";
	setAttr -av -k on ".mbsc";
	setAttr -av -k on ".afp";
	setAttr -av -k on ".pfb";
	setAttr -av -k on ".pram";
	setAttr -av -k on ".poam";
	setAttr -av -k on ".prlm";
	setAttr -av -k on ".polm";
	setAttr -av -cb on ".prm";
	setAttr -av -cb on ".pom";
	setAttr -cb on ".pfrm";
	setAttr -cb on ".pfom";
	setAttr -av -k on ".bll";
	setAttr -av -k on ".bls";
	setAttr -av -k on ".smv";
	setAttr -av -k on ".ubc";
	setAttr -av -k on ".mbc";
	setAttr -cb on ".mbt";
	setAttr -av -k on ".udbx";
	setAttr -av -k on ".smc";
	setAttr -av -k on ".kmv";
	setAttr -cb on ".isl";
	setAttr -cb on ".ism";
	setAttr -cb on ".imb";
	setAttr -av -k on ".rlen";
	setAttr -av -k on ".frts";
	setAttr -av -k on ".tlwd";
	setAttr -av -k on ".tlht";
	setAttr -av -k on ".jfc";
	setAttr -cb on ".rsb";
	setAttr -av -k on ".ope";
	setAttr -av -k on ".oppf";
	setAttr -av -k on ".rcp";
	setAttr -av -k on ".icp";
	setAttr -av -k on ".ocp";
	setAttr -cb on ".hbl";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".w" 640;
	setAttr ".h" 480;
	setAttr ".dar" 1.3333332538604736;
select -ne :defaultColorMgtGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".cme" no;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
connectAttr "UE4.s" "|UE4|root.is";
connectAttr "|UE4|root.s" "|UE4|root|pelvis.is";
connectAttr "|UE4|root|pelvis.s" "|UE4|root|pelvis|spine_01.is";
connectAttr "|UE4|root|pelvis|spine_01.s" "|UE4|root|pelvis|spine_01|spine_02.is"
		;
connectAttr "|UE4|root|pelvis|spine_01|spine_02.s" "|UE4|root|pelvis|spine_01|spine_02|spine_03.is"
		;
connectAttr "|UE4|root|pelvis|spine_01|spine_02|spine_03.s" "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l.is"
		;
connectAttr "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l.s" "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l.is"
		;
connectAttr "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l.s" "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l.is"
		;
connectAttr "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l.s" "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l|hand_l.is"
		;
connectAttr "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l|hand_l.s" "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l|hand_l|index_01_l.is"
		;
connectAttr "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l|hand_l|index_01_l.s" "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l|hand_l|index_01_l|index_02_l.is"
		;
connectAttr "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l|hand_l|index_01_l|index_02_l.s" "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l|hand_l|index_01_l|index_02_l|index_03_l.is"
		;
connectAttr "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l|hand_l.s" "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l|hand_l|middle_01_l.is"
		;
connectAttr "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l|hand_l|middle_01_l.s" "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l|hand_l|middle_01_l|middle_02_l.is"
		;
connectAttr "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l|hand_l|middle_01_l|middle_02_l.s" "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l|hand_l|middle_01_l|middle_02_l|middle_03_l.is"
		;
connectAttr "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l|hand_l.s" "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l|hand_l|pinky_01_l.is"
		;
connectAttr "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l|hand_l|pinky_01_l.s" "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l|hand_l|pinky_01_l|pinky_02_l.is"
		;
connectAttr "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l|hand_l|pinky_01_l|pinky_02_l.s" "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l|hand_l|pinky_01_l|pinky_02_l|pinky_03_l.is"
		;
connectAttr "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l|hand_l.s" "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l|hand_l|ring_01_l.is"
		;
connectAttr "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l|hand_l|ring_01_l.s" "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l|hand_l|ring_01_l|ring_02_l.is"
		;
connectAttr "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l|hand_l|ring_01_l|ring_02_l.s" "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l|hand_l|ring_01_l|ring_02_l|ring_03_l.is"
		;
connectAttr "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l|hand_l.s" "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l|hand_l|thumb_01_l.is"
		;
connectAttr "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l|hand_l|thumb_01_l.s" "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l|hand_l|thumb_01_l|thumb_02_l.is"
		;
connectAttr "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l|hand_l|thumb_01_l|thumb_02_l.s" "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l|hand_l|thumb_01_l|thumb_02_l|thumb_03_l.is"
		;
connectAttr "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l.s" "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|lowerarm_l|lowerarm_twist_01_l.is"
		;
connectAttr "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l.s" "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_l|upperarm_l|upperarm_twist_01_l.is"
		;
connectAttr "|UE4|root|pelvis|spine_01|spine_02|spine_03.s" "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r.is"
		;
connectAttr "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r.s" "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r.is"
		;
connectAttr "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r.s" "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r.is"
		;
connectAttr "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r.s" "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r|hand_r.is"
		;
connectAttr "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r|hand_r.s" "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r|hand_r|index_01_r.is"
		;
connectAttr "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r|hand_r|index_01_r.s" "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r|hand_r|index_01_r|index_02_r.is"
		;
connectAttr "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r|hand_r|index_01_r|index_02_r.s" "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r|hand_r|index_01_r|index_02_r|index_03_r.is"
		;
connectAttr "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r|hand_r.s" "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r|hand_r|middle_01_r.is"
		;
connectAttr "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r|hand_r|middle_01_r.s" "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r|hand_r|middle_01_r|middle_02_r.is"
		;
connectAttr "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r|hand_r|middle_01_r|middle_02_r.s" "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r|hand_r|middle_01_r|middle_02_r|middle_03_r.is"
		;
connectAttr "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r|hand_r.s" "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r|hand_r|pinky_01_r.is"
		;
connectAttr "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r|hand_r|pinky_01_r.s" "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r|hand_r|pinky_01_r|pinky_02_r.is"
		;
connectAttr "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r|hand_r|pinky_01_r|pinky_02_r.s" "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r|hand_r|pinky_01_r|pinky_02_r|pinky_03_r.is"
		;
connectAttr "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r|hand_r.s" "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r|hand_r|ring_01_r.is"
		;
connectAttr "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r|hand_r|ring_01_r.s" "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r|hand_r|ring_01_r|ring_02_r.is"
		;
connectAttr "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r|hand_r|ring_01_r|ring_02_r.s" "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r|hand_r|ring_01_r|ring_02_r|ring_03_r.is"
		;
connectAttr "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r|hand_r.s" "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r|hand_r|thumb_01_r.is"
		;
connectAttr "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r|hand_r|thumb_01_r.s" "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r|hand_r|thumb_01_r|thumb_02_r.is"
		;
connectAttr "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r|hand_r|thumb_01_r|thumb_02_r.s" "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r|hand_r|thumb_01_r|thumb_02_r|thumb_03_r.is"
		;
connectAttr "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r.s" "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|lowerarm_r|lowerarm_twist_01_r.is"
		;
connectAttr "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r.s" "|UE4|root|pelvis|spine_01|spine_02|spine_03|clavicle_r|upperarm_r|upperarm_twist_01_r.is"
		;
connectAttr "|UE4|root|pelvis|spine_01|spine_02|spine_03.s" "|UE4|root|pelvis|spine_01|spine_02|spine_03|neck_01.is"
		;
connectAttr "|UE4|root|pelvis|spine_01|spine_02|spine_03|neck_01.s" "|UE4|root|pelvis|spine_01|spine_02|spine_03|neck_01|head.is"
		;
connectAttr "|UE4|root|pelvis.s" "|UE4|root|pelvis|thigh_l.is";
connectAttr "|UE4|root|pelvis|thigh_l.s" "|UE4|root|pelvis|thigh_l|calf_l.is";
connectAttr "|UE4|root|pelvis|thigh_l|calf_l.s" "|UE4|root|pelvis|thigh_l|calf_l|calf_twist_01_l.is"
		;
connectAttr "|UE4|root|pelvis|thigh_l|calf_l.s" "|UE4|root|pelvis|thigh_l|calf_l|foot_l.is"
		;
connectAttr "|UE4|root|pelvis|thigh_l|calf_l|foot_l.s" "|UE4|root|pelvis|thigh_l|calf_l|foot_l|ball_l.is"
		;
connectAttr "|UE4|root|pelvis|thigh_l.s" "|UE4|root|pelvis|thigh_l|thigh_twist_01_l.is"
		;
connectAttr "|UE4|root|pelvis.s" "|UE4|root|pelvis|thigh_r.is";
connectAttr "|UE4|root|pelvis|thigh_r.s" "|UE4|root|pelvis|thigh_r|calf_r.is";
connectAttr "|UE4|root|pelvis|thigh_r|calf_r.s" "|UE4|root|pelvis|thigh_r|calf_r|calf_twist_01_r.is"
		;
connectAttr "|UE4|root|pelvis|thigh_r|calf_r.s" "|UE4|root|pelvis|thigh_r|calf_r|foot_r.is"
		;
connectAttr "|UE4|root|pelvis|thigh_r|calf_r|foot_r.s" "|UE4|root|pelvis|thigh_r|calf_r|foot_r|ball_r.is"
		;
connectAttr "|UE4|root|pelvis|thigh_r.s" "|UE4|root|pelvis|thigh_r|thigh_twist_01_r.is"
		;
connectAttr "|UE4|root.s" "|UE4|root|ik_foot_root.is";
connectAttr "|UE4|root|ik_foot_root.s" "|UE4|root|ik_foot_root|ik_foot_l.is";
connectAttr "|UE4|root|ik_foot_root.s" "|UE4|root|ik_foot_root|ik_foot_r.is";
connectAttr "|UE4|root.s" "|UE4|root|ik_hand_root.is";
connectAttr "|UE4|root|ik_hand_root.s" "|UE4|root|ik_hand_root|ik_hand_gun.is";
connectAttr "|UE4|root|ik_hand_root|ik_hand_gun.s" "|UE4|root|ik_hand_root|ik_hand_gun|ik_hand_l.is"
		;
connectAttr "|UE4|root|ik_hand_root|ik_hand_gun.s" "|UE4|root|ik_hand_root|ik_hand_gun|ik_hand_r.is"
		;
connectAttr "UE5Simple.s" "|UE5Simple|root.is";
connectAttr "|UE5Simple|root.s" "|UE5Simple|root|pelvis.is";
connectAttr "|UE5Simple|root|pelvis.s" "|UE5Simple|root|pelvis|spine_01.is";
connectAttr "|UE5Simple|root|pelvis|spine_01.s" "|UE5Simple|root|pelvis|spine_01|spine_02.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|neck_01.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|neck_01.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|neck_01|neck_02.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|neck_01|neck_02.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|neck_01|neck_02|head.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|lowerarm_twist_02_l.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|lowerarm_twist_01_l.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|index_metacarpal_l.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|index_metacarpal_l.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|index_metacarpal_l|index_01_l.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|index_metacarpal_l|index_01_l.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|index_metacarpal_l|index_01_l|index_02_l.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|index_metacarpal_l|index_01_l|index_02_l.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|index_metacarpal_l|index_01_l|index_02_l|index_03_l.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|middle_metacarpal_l.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|middle_metacarpal_l.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|middle_metacarpal_l|middle_01_l.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|middle_metacarpal_l|middle_01_l.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|middle_metacarpal_l|middle_01_l|middle_02_l.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|middle_metacarpal_l|middle_01_l|middle_02_l.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|middle_metacarpal_l|middle_01_l|middle_02_l|middle_03_l.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|thumb_01_l.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|thumb_01_l.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|thumb_01_l|thumb_02_l.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|thumb_01_l|thumb_02_l.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|thumb_01_l|thumb_02_l|thumb_03_l.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|pinky_metacarpal_l.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|pinky_metacarpal_l.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|pinky_metacarpal_l|pinky_01_l.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|pinky_metacarpal_l|pinky_01_l.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|pinky_metacarpal_l|pinky_01_l|pinky_02_l.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|pinky_metacarpal_l|pinky_01_l|pinky_02_l.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|pinky_metacarpal_l|pinky_01_l|pinky_02_l|pinky_03_l.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|ring_metacarpal_l.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|ring_metacarpal_l.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|ring_metacarpal_l|ring_01_l.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|ring_metacarpal_l|ring_01_l.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|ring_metacarpal_l|ring_01_l|ring_02_l.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|ring_metacarpal_l|ring_01_l|ring_02_l.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|ring_metacarpal_l|ring_01_l|ring_02_l|ring_03_l.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|upperarm_twist_01_l.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|upperarm_twist_02_l.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|lowerarm_twist_02_r.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|lowerarm_twist_01_r.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|pinky_metacarpal_r.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|pinky_metacarpal_r.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|pinky_metacarpal_r|pinky_01_r.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|pinky_metacarpal_r|pinky_01_r.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|pinky_metacarpal_r|pinky_01_r|pinky_02_r.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|pinky_metacarpal_r|pinky_01_r|pinky_02_r.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|pinky_metacarpal_r|pinky_01_r|pinky_02_r|pinky_03_r.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|ring_metacarpal_r.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|ring_metacarpal_r.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|ring_metacarpal_r|ring_01_r.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|ring_metacarpal_r|ring_01_r.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|ring_metacarpal_r|ring_01_r|ring_02_r.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|ring_metacarpal_r|ring_01_r|ring_02_r.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|ring_metacarpal_r|ring_01_r|ring_02_r|ring_03_r.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|middle_metacarpal_r.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|middle_metacarpal_r.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|middle_metacarpal_r|middle_01_r.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|middle_metacarpal_r|middle_01_r.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|middle_metacarpal_r|middle_01_r|middle_02_r.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|middle_metacarpal_r|middle_01_r|middle_02_r.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|middle_metacarpal_r|middle_01_r|middle_02_r|middle_03_r.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|index_metacarpal_r.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|index_metacarpal_r.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|index_metacarpal_r|index_01_r.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|index_metacarpal_r|index_01_r.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|index_metacarpal_r|index_01_r|index_02_r.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|index_metacarpal_r|index_01_r|index_02_r.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|index_metacarpal_r|index_01_r|index_02_r|index_03_r.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|thumb_01_r.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|thumb_01_r.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|thumb_01_r|thumb_02_r.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|thumb_01_r|thumb_02_r.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|thumb_01_r|thumb_02_r|thumb_03_r.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|upperarm_twist_01_r.is"
		;
connectAttr "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r.s" "|UE5Simple|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|upperarm_twist_02_r.is"
		;
connectAttr "|UE5Simple|root|pelvis.s" "|UE5Simple|root|pelvis|thigh_r.is";
connectAttr "|UE5Simple|root|pelvis|thigh_r.s" "|UE5Simple|root|pelvis|thigh_r|calf_r.is"
		;
connectAttr "|UE5Simple|root|pelvis|thigh_r|calf_r.s" "|UE5Simple|root|pelvis|thigh_r|calf_r|foot_r.is"
		;
connectAttr "|UE5Simple|root|pelvis|thigh_r|calf_r|foot_r.s" "|UE5Simple|root|pelvis|thigh_r|calf_r|foot_r|ball_r.is"
		;
connectAttr "|UE5Simple|root|pelvis|thigh_r|calf_r.s" "|UE5Simple|root|pelvis|thigh_r|calf_r|calf_twist_02_r.is"
		;
connectAttr "|UE5Simple|root|pelvis|thigh_r|calf_r.s" "|UE5Simple|root|pelvis|thigh_r|calf_r|calf_twist_01_r.is"
		;
connectAttr "|UE5Simple|root|pelvis|thigh_r.s" "|UE5Simple|root|pelvis|thigh_r|thigh_twist_01_r.is"
		;
connectAttr "|UE5Simple|root|pelvis|thigh_r.s" "|UE5Simple|root|pelvis|thigh_r|thigh_twist_02_r.is"
		;
connectAttr "|UE5Simple|root|pelvis.s" "|UE5Simple|root|pelvis|thigh_l.is";
connectAttr "|UE5Simple|root|pelvis|thigh_l.s" "|UE5Simple|root|pelvis|thigh_l|calf_l.is"
		;
connectAttr "|UE5Simple|root|pelvis|thigh_l|calf_l.s" "|UE5Simple|root|pelvis|thigh_l|calf_l|foot_l.is"
		;
connectAttr "|UE5Simple|root|pelvis|thigh_l|calf_l|foot_l.s" "|UE5Simple|root|pelvis|thigh_l|calf_l|foot_l|ball_l.is"
		;
connectAttr "|UE5Simple|root|pelvis|thigh_l|calf_l.s" "|UE5Simple|root|pelvis|thigh_l|calf_l|calf_twist_02_l.is"
		;
connectAttr "|UE5Simple|root|pelvis|thigh_l|calf_l.s" "|UE5Simple|root|pelvis|thigh_l|calf_l|calf_twist_01_l.is"
		;
connectAttr "|UE5Simple|root|pelvis|thigh_l.s" "|UE5Simple|root|pelvis|thigh_l|thigh_twist_01_l.is"
		;
connectAttr "|UE5Simple|root|pelvis|thigh_l.s" "|UE5Simple|root|pelvis|thigh_l|thigh_twist_02_l.is"
		;
connectAttr "|UE5Simple|root.s" "|UE5Simple|root|ik_foot_root.is";
connectAttr "|UE5Simple|root|ik_foot_root.s" "|UE5Simple|root|ik_foot_root|ik_foot_l.is"
		;
connectAttr "|UE5Simple|root|ik_foot_root.s" "|UE5Simple|root|ik_foot_root|ik_foot_r.is"
		;
connectAttr "|UE5Simple|root.s" "|UE5Simple|root|ik_hand_root.is";
connectAttr "|UE5Simple|root|ik_hand_root.s" "|UE5Simple|root|ik_hand_root|ik_hand_gun.is"
		;
connectAttr "|UE5Simple|root|ik_hand_root|ik_hand_gun.s" "|UE5Simple|root|ik_hand_root|ik_hand_gun|ik_hand_l.is"
		;
connectAttr "|UE5Simple|root|ik_hand_root|ik_hand_gun.s" "|UE5Simple|root|ik_hand_root|ik_hand_gun|ik_hand_r.is"
		;
connectAttr "|UE5Simple|root.s" "|UE5Simple|root|interaction.is";
connectAttr "|UE5Simple|root.s" "|UE5Simple|root|center_of_mass.is";
connectAttr "UE5Full.s" "|UE5Full|root.is";
connectAttr "|UE5Full|root.s" "|UE5Full|root|pelvis.is";
connectAttr "|UE5Full|root|pelvis.s" "|UE5Full|root|pelvis|spine_01.is";
connectAttr "|UE5Full|root|pelvis|spine_01.s" "|UE5Full|root|pelvis|spine_01|spine_02.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|neck_01.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|neck_01.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|neck_01|neck_02.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|neck_01|neck_02.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|neck_01|neck_02|head.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|lowerarm_twist_02_l.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|lowerarm_twist_01_l.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l.s" "lowerarm_correctiveRoot_l.is"
		;
connectAttr "lowerarm_correctiveRoot_l.s" "lowerarm_in_l.is";
connectAttr "lowerarm_correctiveRoot_l.s" "lowerarm_out_l.is";
connectAttr "lowerarm_correctiveRoot_l.s" "lowerarm_fwd_l.is";
connectAttr "lowerarm_correctiveRoot_l.s" "lowerarm_bck_l.is";
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l.s" "wrist_inner_l.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l.s" "wrist_outer_l.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|index_metacarpal_l.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|index_metacarpal_l.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|index_metacarpal_l|index_01_l.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|index_metacarpal_l|index_01_l.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|index_metacarpal_l|index_01_l|index_02_l.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|index_metacarpal_l|index_01_l|index_02_l.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|index_metacarpal_l|index_01_l|index_02_l|index_03_l.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|middle_metacarpal_l.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|middle_metacarpal_l.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|middle_metacarpal_l|middle_01_l.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|middle_metacarpal_l|middle_01_l.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|middle_metacarpal_l|middle_01_l|middle_02_l.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|middle_metacarpal_l|middle_01_l|middle_02_l.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|middle_metacarpal_l|middle_01_l|middle_02_l|middle_03_l.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|thumb_01_l.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|thumb_01_l.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|thumb_01_l|thumb_02_l.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|thumb_01_l|thumb_02_l.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|thumb_01_l|thumb_02_l|thumb_03_l.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|pinky_metacarpal_l.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|pinky_metacarpal_l.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|pinky_metacarpal_l|pinky_01_l.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|pinky_metacarpal_l|pinky_01_l.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|pinky_metacarpal_l|pinky_01_l|pinky_02_l.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|pinky_metacarpal_l|pinky_01_l|pinky_02_l.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|pinky_metacarpal_l|pinky_01_l|pinky_02_l|pinky_03_l.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|ring_metacarpal_l.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|ring_metacarpal_l.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|ring_metacarpal_l|ring_01_l.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|ring_metacarpal_l|ring_01_l.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|ring_metacarpal_l|ring_01_l|ring_02_l.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|ring_metacarpal_l|ring_01_l|ring_02_l.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l|ring_metacarpal_l|ring_01_l|ring_02_l|ring_03_l.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|lowerarm_l|hand_l.s" "weapon_l.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|upperarm_twist_01_l.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|upperarm_twist_01_l.s" "upperarm_twistCor_01_l.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|upperarm_twist_02_l.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|upperarm_twist_02_l.s" "upperarm_tricep_l.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|upperarm_twist_02_l.s" "upperarm_bicep_l.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l|upperarm_twist_02_l.s" "upperarm_twistCor_02_l.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l|upperarm_l.s" "upperarm_correctiveRoot_l.is"
		;
connectAttr "upperarm_correctiveRoot_l.s" "upperarm_bck_l.is";
connectAttr "upperarm_correctiveRoot_l.s" "upperarm_fwd_l.is";
connectAttr "upperarm_correctiveRoot_l.s" "upperarm_in_l.is";
connectAttr "upperarm_correctiveRoot_l.s" "upperarm_out_l.is";
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l.s" "clavicle_out_l.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_l.s" "clavicle_scap_l.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|lowerarm_twist_02_r.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|lowerarm_twist_01_r.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r.s" "lowerarm_correctiveRoot_r.is"
		;
connectAttr "lowerarm_correctiveRoot_r.s" "lowerarm_out_r.is";
connectAttr "lowerarm_correctiveRoot_r.s" "lowerarm_in_r.is";
connectAttr "lowerarm_correctiveRoot_r.s" "lowerarm_fwd_r.is";
connectAttr "lowerarm_correctiveRoot_r.s" "lowerarm_bck_r.is";
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r.s" "wrist_inner_r.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r.s" "wrist_outer_r.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|pinky_metacarpal_r.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|pinky_metacarpal_r.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|pinky_metacarpal_r|pinky_01_r.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|pinky_metacarpal_r|pinky_01_r.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|pinky_metacarpal_r|pinky_01_r|pinky_02_r.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|pinky_metacarpal_r|pinky_01_r|pinky_02_r.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|pinky_metacarpal_r|pinky_01_r|pinky_02_r|pinky_03_r.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|ring_metacarpal_r.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|ring_metacarpal_r.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|ring_metacarpal_r|ring_01_r.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|ring_metacarpal_r|ring_01_r.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|ring_metacarpal_r|ring_01_r|ring_02_r.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|ring_metacarpal_r|ring_01_r|ring_02_r.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|ring_metacarpal_r|ring_01_r|ring_02_r|ring_03_r.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|middle_metacarpal_r.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|middle_metacarpal_r.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|middle_metacarpal_r|middle_01_r.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|middle_metacarpal_r|middle_01_r.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|middle_metacarpal_r|middle_01_r|middle_02_r.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|middle_metacarpal_r|middle_01_r|middle_02_r.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|middle_metacarpal_r|middle_01_r|middle_02_r|middle_03_r.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|index_metacarpal_r.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|index_metacarpal_r.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|index_metacarpal_r|index_01_r.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|index_metacarpal_r|index_01_r.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|index_metacarpal_r|index_01_r|index_02_r.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|index_metacarpal_r|index_01_r|index_02_r.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|index_metacarpal_r|index_01_r|index_02_r|index_03_r.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|thumb_01_r.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|thumb_01_r.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|thumb_01_r|thumb_02_r.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|thumb_01_r|thumb_02_r.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r|thumb_01_r|thumb_02_r|thumb_03_r.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|lowerarm_r|hand_r.s" "weapon_r.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|upperarm_twist_01_r.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|upperarm_twist_01_r.s" "upperarm_twistCor_01_r.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r.s" "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|upperarm_twist_02_r.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|upperarm_twist_02_r.s" "upperarm_tricep_r.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|upperarm_twist_02_r.s" "upperarm_bicep_r.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r|upperarm_twist_02_r.s" "upperarm_twistCor_02_r.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r|upperarm_r.s" "upperarm_correctiveRoot_r.is"
		;
connectAttr "upperarm_correctiveRoot_r.s" "upperarm_bck_r.is";
connectAttr "upperarm_correctiveRoot_r.s" "upperarm_in_r.is";
connectAttr "upperarm_correctiveRoot_r.s" "upperarm_fwd_r.is";
connectAttr "upperarm_correctiveRoot_r.s" "upperarm_out_r.is";
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r.s" "clavicle_out_r.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05|clavicle_r.s" "clavicle_scap_r.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05.s" "clavicle_pec_r.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05.s" "spine_04_latissimus_l.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05.s" "spine_04_latissimus_r.is"
		;
connectAttr "|UE5Full|root|pelvis|spine_01|spine_02|spine_03|spine_04|spine_05.s" "clavicle_pec_l.is"
		;
connectAttr "|UE5Full|root|pelvis.s" "|UE5Full|root|pelvis|thigh_r.is";
connectAttr "|UE5Full|root|pelvis|thigh_r.s" "|UE5Full|root|pelvis|thigh_r|calf_r.is"
		;
connectAttr "|UE5Full|root|pelvis|thigh_r|calf_r.s" "|UE5Full|root|pelvis|thigh_r|calf_r|foot_r.is"
		;
connectAttr "|UE5Full|root|pelvis|thigh_r|calf_r|foot_r.s" "|UE5Full|root|pelvis|thigh_r|calf_r|foot_r|ball_r.is"
		;
connectAttr "|UE5Full|root|pelvis|thigh_r|calf_r|foot_r.s" "ankle_fwd_r.is";
connectAttr "|UE5Full|root|pelvis|thigh_r|calf_r|foot_r.s" "ankle_bck_r.is";
connectAttr "|UE5Full|root|pelvis|thigh_r|calf_r.s" "|UE5Full|root|pelvis|thigh_r|calf_r|calf_twist_02_r.is"
		;
connectAttr "|UE5Full|root|pelvis|thigh_r|calf_r|calf_twist_02_r.s" "calf_twistCor_02_r.is"
		;
connectAttr "|UE5Full|root|pelvis|thigh_r|calf_r.s" "|UE5Full|root|pelvis|thigh_r|calf_r|calf_twist_01_r.is"
		;
connectAttr "|UE5Full|root|pelvis|thigh_r|calf_r.s" "calf_correctiveRoot_r.is";
connectAttr "calf_correctiveRoot_r.s" "calf_kneeBack_r.is";
connectAttr "calf_correctiveRoot_r.s" "calf_knee_r.is";
connectAttr "|UE5Full|root|pelvis|thigh_r.s" "|UE5Full|root|pelvis|thigh_r|thigh_twist_01_r.is"
		;
connectAttr "|UE5Full|root|pelvis|thigh_r|thigh_twist_01_r.s" "thigh_twistCor_01_r.is"
		;
connectAttr "|UE5Full|root|pelvis|thigh_r.s" "|UE5Full|root|pelvis|thigh_r|thigh_twist_02_r.is"
		;
connectAttr "|UE5Full|root|pelvis|thigh_r|thigh_twist_02_r.s" "thigh_twistCor_02_r.is"
		;
connectAttr "|UE5Full|root|pelvis|thigh_r.s" "thigh_correctiveRoot_r.is";
connectAttr "thigh_correctiveRoot_r.s" "thigh_fwd_r.is";
connectAttr "thigh_correctiveRoot_r.s" "thigh_bck_r.is";
connectAttr "thigh_correctiveRoot_r.s" "thigh_out_r.is";
connectAttr "thigh_correctiveRoot_r.s" "thigh_in_r.is";
connectAttr "thigh_correctiveRoot_r.s" "thigh_bck_lwr_r.is";
connectAttr "thigh_correctiveRoot_r.s" "thigh_fwd_lwr_r.is";
connectAttr "|UE5Full|root|pelvis.s" "|UE5Full|root|pelvis|thigh_l.is";
connectAttr "|UE5Full|root|pelvis|thigh_l.s" "|UE5Full|root|pelvis|thigh_l|calf_l.is"
		;
connectAttr "|UE5Full|root|pelvis|thigh_l|calf_l.s" "|UE5Full|root|pelvis|thigh_l|calf_l|foot_l.is"
		;
connectAttr "|UE5Full|root|pelvis|thigh_l|calf_l|foot_l.s" "|UE5Full|root|pelvis|thigh_l|calf_l|foot_l|ball_l.is"
		;
connectAttr "|UE5Full|root|pelvis|thigh_l|calf_l|foot_l.s" "ankle_bck_l.is";
connectAttr "|UE5Full|root|pelvis|thigh_l|calf_l|foot_l.s" "ankle_fwd_l.is";
connectAttr "|UE5Full|root|pelvis|thigh_l|calf_l.s" "|UE5Full|root|pelvis|thigh_l|calf_l|calf_twist_02_l.is"
		;
connectAttr "|UE5Full|root|pelvis|thigh_l|calf_l|calf_twist_02_l.s" "calf_twistCor_02_l.is"
		;
connectAttr "|UE5Full|root|pelvis|thigh_l|calf_l.s" "|UE5Full|root|pelvis|thigh_l|calf_l|calf_twist_01_l.is"
		;
connectAttr "|UE5Full|root|pelvis|thigh_l|calf_l.s" "calf_correctiveRoot_l.is";
connectAttr "calf_correctiveRoot_l.s" "calf_kneeBack_l.is";
connectAttr "calf_correctiveRoot_l.s" "calf_knee_l.is";
connectAttr "|UE5Full|root|pelvis|thigh_l.s" "|UE5Full|root|pelvis|thigh_l|thigh_twist_01_l.is"
		;
connectAttr "|UE5Full|root|pelvis|thigh_l|thigh_twist_01_l.s" "thigh_twistCor_01_l.is"
		;
connectAttr "|UE5Full|root|pelvis|thigh_l.s" "|UE5Full|root|pelvis|thigh_l|thigh_twist_02_l.is"
		;
connectAttr "|UE5Full|root|pelvis|thigh_l|thigh_twist_02_l.s" "thigh_twistCor_02_l.is"
		;
connectAttr "|UE5Full|root|pelvis|thigh_l.s" "thigh_correctiveRoot_l.is";
connectAttr "thigh_correctiveRoot_l.s" "thigh_bck_l.is";
connectAttr "thigh_correctiveRoot_l.s" "thigh_fwd_l.is";
connectAttr "thigh_correctiveRoot_l.s" "thigh_out_l.is";
connectAttr "thigh_correctiveRoot_l.s" "thigh_bck_lwr_l.is";
connectAttr "thigh_correctiveRoot_l.s" "thigh_in_l.is";
connectAttr "thigh_correctiveRoot_l.s" "thigh_fwd_lwr_l.is";
connectAttr "|UE5Full|root.s" "|UE5Full|root|ik_foot_root.is";
connectAttr "|UE5Full|root|ik_foot_root.s" "|UE5Full|root|ik_foot_root|ik_foot_l.is"
		;
connectAttr "|UE5Full|root|ik_foot_root.s" "|UE5Full|root|ik_foot_root|ik_foot_r.is"
		;
connectAttr "|UE5Full|root.s" "|UE5Full|root|ik_hand_root.is";
connectAttr "|UE5Full|root|ik_hand_root.s" "|UE5Full|root|ik_hand_root|ik_hand_gun.is"
		;
connectAttr "|UE5Full|root|ik_hand_root|ik_hand_gun.s" "|UE5Full|root|ik_hand_root|ik_hand_gun|ik_hand_l.is"
		;
connectAttr "|UE5Full|root|ik_hand_root|ik_hand_gun.s" "|UE5Full|root|ik_hand_root|ik_hand_gun|ik_hand_r.is"
		;
connectAttr "|UE5Full|root.s" "|UE5Full|root|interaction.is";
connectAttr "|UE5Full|root.s" "|UE5Full|root|center_of_mass.is";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "SKM_Manny_Simple_LOD0SG.pa" ":renderPartition.st" -na;
connectAttr "SKM_Manny_Simple_LOD0SG1.pa" ":renderPartition.st" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of asUnreal.ma
