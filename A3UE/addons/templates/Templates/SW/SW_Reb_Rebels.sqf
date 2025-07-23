#include "..\..\script_component.hpp"

private _hasWs = "ws" in A3A_enabledDLC;
private _hasMarksman = "mark" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasTanks = "tank" in A3A_enabledDLC;
private _hasApex = "expansion" in A3A_enabledDLC;
private _hasHelicopters = "heli" in A3A_enabledDLC;
private _hasContact = "enoch" in A3A_enabledDLC;
private _hasJets = "jets" in A3A_enabledDLC;
private _hasArtOfWar = "aow" in A3A_enabledDLC;
private _hasKart = "kart" in A3A_enabledDLC;
private _hasGM = "gm" in A3A_enabledDLC;
private _hasCSLA = "csla" in A3A_enabledDLC;
private _hasRF = "rf" in A3A_enabledDLC;
private _hasSOG = "vn" in A3A_enabledDLC;
private _hasSPE = "spe" in A3A_enabledDLC;
private _hasEF = "ef" in A3A_enabledDLC;

///////////////////////////
//   Rebel Information   //
///////////////////////////

["name", "REBEL"] call _fnc_saveToTemplate;

["flag", "Flag_NATO_F"] call _fnc_saveToTemplate;
["flagTexture", QPATHTOFOLDER(Templates\SW\reb_flag_co.paa)] call _fnc_saveToTemplate;
["flagMarkerType", "SW_MARKER_REB"] call _fnc_saveToTemplate;

private _vehiclesBasic = ["SW_SpeederBikeR","SWOP_scavengerspeeder"];
private _vehiclesLightUnarmed = ["O_SWOP_landspeeder_1","O_SWOP_HoverT_2"];
private _vehiclesLightArmed = ["O_SWOP_HoverTa_2"];
private _vehiclesAt = ["O_SWOP_HoverTr_2"];
private _VehTruck = [];
private _vehicleAA = ["O_SWOP_HoverTr_2"];

private _vehiclesBoat = ["B_T_Boat_Transport_01_F"];

private _vehiclesMedical = [];

private _vehiclesSupply = [];

private _vehiclePlane = ["swop_aw","swop_xw","swop_xwf","swop_yw","swop_ywRed"];

private _vehicleCivPlane = [];

private _vehiclesCivCar = [];
private _CivTruck = [];
private _civHelicopters = ["Swop_Uwing"];

private _CivBoat = ["C_Rubberboat"];

private _staticMG = ["Altur_base","Hoth_Minigun","EWEBSWBF"];
private _staticAT = ["I_static_AT_F"];
private _staticAA = ["I_static_AA_F"];
private _staticMortars = ["I_G_Mortar_01_F"];
["staticMortarMagHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;
["staticMortarMagSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate;

["minesAT", ["ATMine_Range_Mag", "SLAMDirectionalMine_Wire_Mag"]] call _fnc_saveToTemplate;
["minesAPERS", ["ClaymoreDirectionalMine_Remote_Mag","APERSMine_Range_Mag", "APERSBoundingMine_Range_Mag", "APERSTripMine_Wire_Mag"]] call _fnc_saveToTemplate;

["breachingExplosivesAPC", [["DemoCharge_Remote_Mag", 1]]] call _fnc_saveToTemplate;
["breachingExplosivesTank", [["SatchelCharge_Remote_Mag", 1], ["DemoCharge_Remote_Mag", 2]]] call _fnc_saveToTemplate;

// if (_hasKart) then {
//   #include "..\DLC_content\vehicles\Kart\Rebel_kart.sqf"  
// };

// if (_hasApex) then {
//   #include "..\DLC_content\vehicles\Apex\Vanilla_FIA.sqf"  
// };

// if (_hasContact) then {
//   #include "..\DLC_content\vehicles\Contact\Vanilla_FIA.sqf" 
// };

// if (_hasLawsOfWar) then {
//   #include "..\DLC_content\vehicles\LawsOfwar\Vanilla_FIA.sqf"  
// };

// if (_hasWs) then {
//   #include "..\DLC_content\vehicles\WS\Vanilla_FIA.sqf"  
// };

// if (_hasGM) then {
//   #include "..\DLC_content\vehicles\GM\Vanilla_FIA.sqf"
// };

// if (_hasCSLA) then {
//   #include "..\DLC_content\vehicles\CSLA\Vanilla_FIA.sqf"  
// };

// if (_hasRF) then {
//   #include "..\DLC_content\vehicles\RF\Vanilla_FIA.sqf" 
// };

// if (_hasSOG) then {
//   #include "..\DLC_content\vehicles\SOG\Vanilla_FIA.sqf"
// };

// if (_hasSPE) then {
//   #include "..\DLC_content\vehicles\SPE\Vanilla_FIA.sqf"
// };

// if (isClass (configFile >> "cfgVehicles" >> "SPEX_M2_60")) then {
// 	#include "..\MOD_content\SPEX\vehicles\Vanilla_FIA.sqf"
// };

// if (isClass (configFile >> "cfgVehicles" >> "vnx_b_air_ac119_02_01")) then {
// 	#include "..\MOD_content\Nickelsteel\vehicles\Vanilla_FIA.sqf"
// };

["vehiclesCivPlane", _vehicleCivPlane] call _fnc_saveToTemplate;
["vehiclesCivSupply", _vehiclesSupply] call _fnc_saveToTemplate;
["vehiclesMedical", _vehiclesMedical] call _fnc_saveToTemplate;
["vehiclesBoat", _vehiclesBoat] call _fnc_saveToTemplate;
["staticMortars", _staticMortars] call _fnc_saveToTemplate;
["staticMGs", _staticMG] call _fnc_saveToTemplate;
["staticAT", _staticAT] call _fnc_saveToTemplate;
["vehiclesCivHeli", _civHelicopters] call _fnc_saveToTemplate;
["vehiclesBasic", _vehiclesBasic] call _fnc_saveToTemplate;
["vehiclesPlane", _vehiclePlane] call _fnc_saveToTemplate;
["vehiclesCivTruck", _CivTruck] call _fnc_saveToTemplate;
["vehiclesTruck", _VehTruck] call _fnc_saveToTemplate;
["vehiclesCivBoat", _CivBoat] call _fnc_saveToTemplate;
["vehiclesAA", _vehicleAA] call _fnc_saveToTemplate;
["staticAA", _staticAA] call _fnc_saveToTemplate;
["vehiclesCivCar", _vehiclesCivCar] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", _vehiclesLightUnarmed] call _fnc_saveToTemplate;
["vehiclesLightArmed", _vehiclesLightArmed] call _fnc_saveToTemplate;
["vehiclesAT", _vehiclesAt] call _fnc_saveToTemplate;

//////////////////////////////////////
//       Antistasi Plus Stuff       //
//////////////////////////////////////

// ["variants", [
//   #include "..\vehicleVariants\Vanilla_FIA.sqf"
// ]] call _fnc_saveToTemplate;

// #include "Vanilla_Reb_Vehicle_Attributes.sqf"

///////////////////////////
//  Rebel Starting Gear  //
///////////////////////////

private _initialRebelEquipment = [
    "SWOP_RebC_F_CombatUniform",
    "SWOP_RebSumkBron","SWOP_RebSumkBronFull",
    "SWOP_B_CloudBackpack_Base",
    "SWOP_RebhelmCLO","SWOP_RebBlack","SWOP_RebHGuardBlack",
    ["SWOP_A280A", 10],"SWOP_DH17BlasterRifle","SWOP_DL44Pistol",
    ["SWOP_A280BlasterRifle_Mag", 20],"SWOP_DH17BlasterRifle_Mag","SWOP_DL44Pistol_Mag",
    "SWOP_DH17Blaster_Scope","SWOP_DL44_Scope",
    "SWOP_termDet_G","swop_SmokeShell",
    ["IEDUrbanSmall_Remote_Mag", 10],["IEDLandSmall_Remote_Mag", 10],["IEDUrbanBig_Remote_Mag", 3],["IEDLandBig_Remote_Mag", 3],
    "Binocular","G_Lowprofile",
    "acc_flashlight",
    ["RocketL_F", 5], ["Rocket_F", 10]
];

if (A3A_hasTFAR) then {_initialRebelEquipment append ["tf_microdagr","tf_anprc154"]};
if (A3A_hasTFAR && startWithLongRangeRadio) then {_initialRebelEquipment append ["tf_anprc155","tf_anprc155_coyote"]};
if (A3A_hasTFARBeta) then {_initialRebelEquipment append ["TFAR_microdagr","TFAR_anprc154"]};
if (A3A_hasTFARBeta && startWithLongRangeRadio) then {_initialRebelEquipment append ["TFAR_anprc155","TFAR_anprc155_coyote"]};
_initialRebelEquipment append ["Chemlight_blue","Chemlight_green","Chemlight_red","Chemlight_yellow"];
["initialRebelEquipment", _initialRebelEquipment] call _fnc_saveToTemplate;

private _rebUniforms = [
    "SWOP_RebC_F_CombatUniform"
];

private _dlcUniforms = [];

private _headgear = [
    "SWOP_RebhelmCLO",
    "SWOP_RebBlack",
    "SWOP_RebHGuardBlack"
];

private _dlcheadgear = [];

["uniforms", _rebUniforms + _dlcUniforms] call _fnc_saveToTemplate;

["headgear", _headgear + _dlcheadgear] call _fnc_saveToTemplate;
/////////////////////
///  Identities   ///
/////////////////////

private _faces = ["GreekHead_A3_02","GreekHead_A3_03","GreekHead_A3_04",
"GreekHead_A3_05","GreekHead_A3_06","GreekHead_A3_07","GreekHead_A3_08",
"GreekHead_A3_09","GreekHead_A3_10","GreekHead_A3_11","GreekHead_A3_12","GreekHead_A3_13",
"GreekHead_A3_14","Ioannou","Mavros","Sturrock"];
["voices", ["Male01GRE", "Male02GRE", "Male03GRE", "Male04GRE", "Male05GRE", "Male06GRE"]] call _fnc_saveToTemplate;
["faces", _faces] call _fnc_saveToTemplate;

// #include "Vanilla_Reb_Vehicle_Attributes.sqf"

//////////////////////////
//       Loadouts       //
//////////////////////////

private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["binoculars", ["Binocular"]];
_loadoutData set ["uniforms", _rebUniforms + _dlcUniforms]; ///check this one

_loadoutData set ["glasses", ["G_Lady_Blue","G_Shades_Black", "G_Shades_Blue", "G_Shades_Green", "G_Shades_Red", "G_Aviator", "G_Spectacles", "G_Spectacles_Tinted", "G_Sport_BlackWhite", "G_Sport_Blackyellow", "G_Sport_Greenblack", "G_Sport_Checkered", "G_Sport_Red", "G_Squares", "G_Squares_Tinted"]];
_loadoutData set ["goggles", ["G_Lowprofile"]];
_loadoutData set ["facemask", []];
_loadoutData set ["balaclavas", []];
_loadoutData set ["argoFacemask", []];
_loadoutData set ["facewearWS", []];
_loadoutData set ["facewearContact", []];
_loadoutData set ["facewearLawsOfWar", []];
_loadoutData set ["facewearGM", []];
_loadoutData set ["facewearCLSA", []];
_loadoutData set ["facewearSOG", []];
_loadoutData set ["facewearSPE", []];

// if (_hasWs) then {
//   #include "..\DLC_content\gear\WS\Vanilla_FIA.sqf"
// };

// if (_hasRF) then {
//   #include "..\DLC_content\gear\RF\Vanilla_FIA.sqf"
// };

// if (_hasContact) then {
//   #include "..\DLC_content\gear\Contact\Vanilla_FIA.sqf"
// };

// if (_hasApex) then {
//   #include "..\DLC_content\gear\Apex\Vanilla_FIA.sqf"
// };

// if (_hasLawsOfWar) then {
//   #include "..\DLC_content\gear\Lawsofwar\Vanilla_FIA.sqf"
// };

// if (_hasGM) then {
//   #include "..\DLC_content\gear\GM\Vanilla_FIA.sqf"
// };

// if (_hasCSLA) then {
//   #include "..\DLC_content\gear\CSLA\Vanilla_FIA.sqf"
// };

// if (_hasArtOfWar) then {
//   #include "..\DLC_content\gear\Artofwar\Vanilla_FIA.sqf"
// };

// if (_hasSOG) then {
//   #include "..\DLC_content\gear\SOG\Vanilla_FIA.sqf"
// };

// if (_hasSPE) then {
//   #include "..\DLC_content\gear\SPE\Vanilla_FIA.sqf"
// };

// if (isClass (configFile >> "cfgVehicles" >> "vnx_b_air_ac119_02_01")) then {
// 	#include "..\MOD_content\Nickelsteel\gear\Vanilla_FIA.sqf"
// };

_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

////////////////////////
//  Rebel Unit Types  //
///////////////////////.

private _squadLeaderTemplate = {
    ["uniforms"] call _fnc_setUniform;
    [selectRandomWeighted [[], 1.25, "glasses", 1, "goggles", 0.75, "facemask", 1, "balaclavas", 1, "argoFacemask", 1 , "facewearWS", 0.75, "facewearContact", 0.3, "facewearLawsOfWar", 0.5, "facewearGM", 0.3, "facewearCLSA", 0.2,"facewearSOG", 0.3,"facewearSPE", 0.2]] call _fnc_setFacewear;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["binoculars"] call _fnc_addBinoculars;
};

private _riflemanTemplate = {
    ["uniforms"] call _fnc_setUniform;
    [selectRandomWeighted [[], 1.25, "glasses", 1, "goggles", 0.75, "facemask", 1, "balaclavas", 1, "argoFacemask", 1 , "facewearWS", 0.75, "facewearContact", 0.3, "facewearLawsOfWar", 0.5, "facewearGM", 0.3, "facewearCLSA", 0.2, "facewearSOG", 0.3,"facewearSPE", 0.2]] call _fnc_setFacewear;
    
    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};

private _prefix = "militia";
private _unitTypes = [
    ["Petros", _squadLeaderTemplate],
    ["SquadLeader", _squadLeaderTemplate],
    ["Rifleman", _riflemanTemplate],
    ["staticCrew", _riflemanTemplate],
    ["Medic", _riflemanTemplate, [["medic", true]]],
    ["Engineer", _riflemanTemplate, [["engineer", true]]],
    ["ExplosivesExpert", _riflemanTemplate, [["explosiveSpecialist", true]]],
    ["Grenadier", _riflemanTemplate],
    ["LAT", _riflemanTemplate],
    ["AT", _riflemanTemplate],
    ["AA", _riflemanTemplate],
    ["MachineGunner", _riflemanTemplate],
    ["Marksman", _riflemanTemplate],
    ["Sniper", _riflemanTemplate],
    ["Unarmed", _riflemanTemplate]
];

[_prefix, _unitTypes, _loadoutData] call _fnc_generateAndSaveUnitsToTemplate;
