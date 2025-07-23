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
private _hasGM = "gm" in A3A_enabledDLC;
private _hasCSLA = "csla" in A3A_enabledDLC;
private _hasRF = "rf" in A3A_enabledDLC;
private _hasSOG = "vn" in A3A_enabledDLC;
private _hasSPE = "spe" in A3A_enabledDLC;
private _hasEF = "ef" in A3A_enabledDLC;

//////////////////////////
//   Side Information   //
//////////////////////////

["name", "EMPIRE"] call _fnc_saveToTemplate;
["spawnMarkerName", format [localize "STR_supportcorridor", "NATO"]] call _fnc_saveToTemplate;

["flag", "Flag_NATO_F"] call _fnc_saveToTemplate;
["flagTexture", QPATHTOFOLDER(Templates\SW\emp_flag_co.paa)] call _fnc_saveToTemplate;
["flagMarkerType", "SW_MARKER_EMP"] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////

["vehiclesSDV", ["B_SDV_01_F"]] call _fnc_saveToTemplate;

["vehiclesDropPod", ["SpaceshipCapsule_01_F"]] call _fnc_saveToTemplate; 

["ammobox", "B_supplyCrate_F"] call _fnc_saveToTemplate;     //Don't touch or you die a sad and lonely death!
["surrenderCrate", "Box_NATO_Wps_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type
["equipmentBox", "Box_NATO_Equip_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type

private _basic = ["SW_SpeederBikeIMPw"];
private _unarmedVehicles = ["O_SWOP_HoverT_1"];
private _armedVehicles = ["O_SWOP_HoverTa_1", "O_SWOP_HoverTr_1"];
private _Trucks = ["O_SWOP_HoverT_1"];
private _cargoTrucks = ["O_CAA_TX225_1"];
private _ammoTrucks = ["B_T_Truck_01_ammo_F"];
private _repairTrucks = ["B_T_Truck_01_Repair_F","B_T_APC_Tracked_01_CRV_F"];
private _fuelTrucks = ["B_T_Truck_01_fuel_F"];
private _medicalTrucks = ["B_T_Truck_01_medical_F"];
private _lightAPCs = ["O_JM_TX130m1_1"];
private _APCs = ["O_JM_TX130_1","O_SWOP_HoverTf_1"];           // CRV has no cargo: "B_APC_Tracked_01_CRV_F"
private _IFVs = ["O_JM_TX130m1_1"];

private _airborneVehicles = ["B_T_APC_Wheeled_01_cannon_F","B_T_UGV_01_olive_F"];
private _lightTanks = ["O_JM_TX130m2_1"];
private _tanks = ["O_JM_TX130m2_1"];
private _aa = ["O_JM_TX130m2_1"];

private _transportBoat = ["B_T_Boat_Transport_01_F"];
private _gunBoat = [];

private _planesCAS = ["swop_tietorpe"];
private _planesLargeCAS = [];

private _planesAA = ["swop_tie_int"];
private _planesLargeAA = [];
["vehiclesPlanesTransport", ["swop_lambda"]] call _fnc_saveToTemplate;
["vehiclesPlanesGunship", ["swop_tie"]] call _fnc_saveToTemplate;

private _transportHelicopters = ["swop_lambda"];

private _helisLight = ["swop_lambda"];
private _helisLightAttack = ["swop_tietorpe","swop_TIE_Stryker"];
private _helisAttack = ["swop_tietorpe","swop_tieb"];

private _airPatrol = ["swop_tiedef"];

private _artillery = ["B_T_MBT_01_arty_F","B_T_MBT_01_mlrs_F"];

["magazines", createHashMapFromArray [
    ["B_T_MBT_01_arty_F",["32Rnd_155mm_Mo_shells", "2Rnd_155mm_Mo_Cluster", "6Rnd_155mm_Mo_mine"]],
    ["B_T_MBT_01_mlrs_F",["12Rnd_230mm_rockets", "12Rnd_230mm_rockets_cluster"]],
    ["APC_Wheeled_01_mortar_base_lxWS",["64Rnd_60mm_Mo_guided_lxWS"]]
]] call _fnc_saveToTemplate;

["uavsAttack", ["swop_TIE_Stryker"]] call _fnc_saveToTemplate;
private _uavsPortable = ["SWOP_ProbeViper_Droid", "swop_tie"];

//Config special vehicles - militia vehicles are mostly used in the early game, police cars are being used by troops around cities -- Example:
private _militiaLightArmed = ["O_SWOP_HoverTa_1"];
private _militiaTrucks = ["O_SWOP_HoverT_1"];
private _militiaCars = ["O_SWOP_HoverT_1"];
private _militiaAPCs = [];

private _policeVehs = ["SW_SpeederBikeIMPw"];

private _staticMG = ["EWEBSWBF"];
private _staticAT = ["B_T_Static_AT_F","B_GMG_01_high_F"];
["staticAA", ["B_T_Static_AA_F"]] call _fnc_saveToTemplate;
["staticMortars", ["B_T_Mortar_01_F"]] call _fnc_saveToTemplate;
private _howitzers = [];

private _radar = [];
private _SAM = [];

["howitzerMagazineHE", "magazine_ShipCannon_120mm_HE_shells_x32","magazine_ShipCannon_120mm_HE_cluster_shells_x2"] call _fnc_saveToTemplate;

["mortarMagazineHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;
["mortarMagazineSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate;
["mortarMagazineFlare", "8Rnd_82mm_Mo_Flare_white"] call _fnc_saveToTemplate;

["minefieldAT", ["ATMine"]] call _fnc_saveToTemplate;
["minefieldAPERS", ["APERSMine"]] call _fnc_saveToTemplate;

// if (_hasHelicopters) then {
//     #include "..\DLC_content\vehicles\Helicopters\Vanilla_NATO.sqf"
// };

// if (_hasJets) then {
// 	#include "..\DLC_content\vehicles\Jets\Vanilla_NATO.sqf"
// };

// if (_hasContact) then {
//     #include "..\DLC_content\vehicles\Contact\police_offroad.sqf"
// };

// if (_hasLawsOfWar) then {
//     #include "..\DLC_content\vehicles\Lawsofwar\police_van.sqf"
// };

// if (_hasApex) then {
//     #include "..\DLC_content\vehicles\Apex\Vanilla_NATO_Temparate.sqf"
// };

// if (_hasTanks) then {
//     #include "..\DLC_content\vehicles\Tanks\Vanilla_NATO_Temparate.sqf"
// };

// //If Western Sahara DLC
// if (_hasWs) then {
//     #include "..\DLC_content\vehicles\WS\Vanilla_NATO_Temparate.sqf"
// };

// if (_hasRF) then {
//     #include "..\DLC_content\vehicles\RF\Vanilla_NATO_Temparate.sqf"
// };

// if (_hasGM) then {
//     #include "..\DLC_content\vehicles\GM\Vanilla_NATO_Temparate.sqf"
// };

// if (_hasCSLA) then {
//     #include "..\DLC_content\vehicles\CSLA\Vanilla_NATO_Temparate.sqf"
// };

// if (_hasEF) then {
//     #include "..\DLC_content\vehicles\EF\Vanilla_NATO_Temparate.sqf"
// };

["vehiclesAirPatrol", _airPatrol] call _fnc_saveToTemplate;
["vehiclesGunBoats", _gunBoat] call _fnc_saveToTemplate;
["vehiclesPlanesLargeCAS", _planesLargeCAS] call _fnc_saveToTemplate;
["vehiclesPlanesLargeAA", _planesLargeAA] call _fnc_saveToTemplate;
["vehiclesTransportBoats", _transportBoat] call _fnc_saveToTemplate;
["vehiclesMilitiaTrucks", _militiaTrucks] call _fnc_saveToTemplate;
["vehiclesMilitiaLightArmed", _militiaLightArmed] call _fnc_saveToTemplate;
["vehiclesMilitiaCars", _militiaCars] call _fnc_saveToTemplate;
["vehiclesAA", _aa] call _fnc_saveToTemplate;
["staticMGs", _staticMG] call _fnc_saveToTemplate;
["staticAT", _staticAT] call _fnc_saveToTemplate;
["vehiclesTrucks", _Trucks] call _fnc_saveToTemplate;
["vehiclesCargoTrucks", _cargoTrucks] call _fnc_saveToTemplate;
["vehiclesAmmoTrucks", _ammoTrucks] call _fnc_saveToTemplate;
["vehiclesRepairTrucks", _repairTrucks] call _fnc_saveToTemplate;
["vehiclesFuelTrucks", _fuelTrucks] call _fnc_saveToTemplate;
["vehiclesMedical", _medicalTrucks] call _fnc_saveToTemplate;
["vehiclesBasic", _basic] call _fnc_saveToTemplate;
["vehiclesTanks", _tanks] call _fnc_saveToTemplate;
["uavsPortable", _uavsPortable] call _fnc_saveToTemplate;
["vehiclesHelisTransport", _transportHelicopters] call _fnc_saveToTemplate;
["vehiclesPolice", _policeVehs] call _fnc_saveToTemplate;
["vehiclesHelisLightAttack", _helisLightAttack] call _fnc_saveToTemplate;
["vehiclesHelisLight", _helisLight] call _fnc_saveToTemplate;
["vehiclesHelisAttack", _helisAttack] call _fnc_saveToTemplate;
["staticHowitzers", _howitzers] call _fnc_saveToTemplate;
["vehicleRadar", _radar] call _fnc_saveToTemplate;
["vehicleSam", _SAM] call _fnc_saveToTemplate;
["vehiclesPlanesCAS", _planesCAS] call _fnc_saveToTemplate;
["vehiclesPlanesAA", _planesAA] call _fnc_saveToTemplate;
["vehiclesArtillery", _artillery] call _fnc_saveToTemplate;
["vehiclesLightAPCs", _lightAPCs] call _fnc_saveToTemplate;
["vehiclesAPCs", _APCs] call _fnc_saveToTemplate;
["vehiclesIFVs", _IFVs] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", _unarmedVehicles] call _fnc_saveToTemplate;
["vehiclesLightArmed", _armedVehicles] call _fnc_saveToTemplate;
["vehiclesLightTanks",  _lightTanks] call _fnc_saveToTemplate;
["vehiclesAirborne", _airborneVehicles] call _fnc_saveToTemplate;
["vehiclesMilitiaAPCs", _militiaAPCs] call _fnc_saveToTemplate;

// #include "Vanilla_Vehicle_Attributes.sqf"

// ["animations", [
//     #include "..\vehicleAnimations\vehicleAnimations_Vanilla.sqf",
//     #include "..\vehicleAnimations\vehicleAnimations_WS.sqf",
//     #include "..\vehicleAnimations\vehicleAnimations_RF.sqf",
//     #include "..\vehicleAnimations\vehicleAnimations_GM.sqf",
//     #include "..\vehicleAnimations\vehicleAnimations_CSLA.sqf",
//     #include "..\vehicleAnimations\vehicleAnimations_EF.sqf"
// ]] call _fnc_saveToTemplate;

// ["variants", [
//     #include "..\vehicleVariants\Vanilla_NATO_Temparate\CSLA_NATO_Temparate.sqf",
//     #include "..\vehicleVariants\Vanilla_NATO_Temparate\GM_NATO_Temparate.sqf",
//     #include "..\vehicleVariants\Vanilla_NATO_Temparate\RF_NATO_Temparate.sqf",
//     #include "..\vehicleVariants\Vanilla_NATO_Temparate\Vanilla_NATO_Temparate.sqf",
//     #include "..\vehicleVariants\Vanilla_NATO_Temparate\WS_NATO_Temparate.sqf",
//     #include "..\vehicleVariants\Vanilla_NATO_Temparate\EF_NATO_Temparate.sqf"
// ]] call _fnc_saveToTemplate;

/////////////////////
///  Identities   ///
/////////////////////

private _voices = ["Male01ENG","Male02ENG","Male03ENG","Male04ENG","Male05ENG","Male06ENG","Male07ENG","Male08ENG","Male09ENG","Male10ENG","Male11ENG","Male12ENG","Male01ENGFRE","Male02ENGFRE","Male01FRE","Male02FRE","Male03FRE"];
private _sfVoices = ["Male01GRE","Male02GRE","Male03GRE","Male04GRE","Male05GRE","Male06GRE"];
private _faces = ["AfricanHead_01","AfricanHead_02","AfricanHead_03","Barklem",
"GreekHead_A3_05","GreekHead_A3_07","WhiteHead_01","WhiteHead_02",
"WhiteHead_03","WhiteHead_04","WhiteHead_05","WhiteHead_06","WhiteHead_07",
"WhiteHead_08","WhiteHead_09","WhiteHead_11","WhiteHead_12","WhiteHead_14",
"WhiteHead_15","WhiteHead_16","WhiteHead_18","WhiteHead_19","WhiteHead_20",
"WhiteHead_21","WhiteHead_23", "WhiteHead_24", "WhiteHead_25",
"WhiteHead_26", "WhiteHead_27", "WhiteHead_28", "WhiteHead_29", "WhiteHead_30", "WhiteHead_31", "WhiteHead_32",
"TanoanHead_A3_02","TanoanHead_A3_04","TanoanHead_A3_03","TanoanHead_A3_05","TanoanHead_A3_07","TanoanHead_A3_01","TanoanHead_A3_06","TanoanHead_A3_09",
"TanoanHead_A3_08","RussianHead_4","LivonianHead_5","LivonianHead_2","LivonianHead_9","RussianHead_1","LivonianHead_6","LivonianHead_3","RussianHead_3",
"LivonianHead_1","RussianHead_2","LivonianHead_10","LivonianHead_8","LivonianHead_4","LivonianHead_7","RussianHead_5","Sturrock",
"WhiteHead_22_l","WhiteHead_22_sa","WhiteHead_22_a"
];

// if (_hasSPE) then {
//     _faces append [
//         #include "..\DLC_content\faces\SPE\SPE_white.sqf"
//     ];
//     _voices append [
//         #include "..\DLC_content\voices\SPE_german.sqf",
//         #include "..\DLC_content\voices\SPE_french.sqf"
//     ];
// };
// if (_hasSOG) then {
//     _faces append [
//         #include "..\DLC_content\faces\SOG\SOG_faces_livonian.sqf",
//         #include "..\DLC_content\faces\SOG\SOG_faces_white.sqf",
//         #include "..\DLC_content\faces\SOG\SOG_faces_african.sqf",
//         #include "..\DLC_content\faces\SOG\SOG_faces_russian.sqf",
//         #include "..\DLC_content\faces\SOG\SOG_faces_tanoa.sqf"
//     ];
// };
// if (_hasRF) then {
//     _faces append [
//         #include "..\DLC_content\faces\RF\RF_white.sqf"
//     ];
// };
// if (_hasGM) then {
//     _faces append [
//         #include "..\DLC_content\faces\GM\GM_white.sqf"
//     ];
//     _voices append [
//         #include "..\DLC_content\voices\GM_german.sqf"
//     ];
// };
// if (_hasWS) then {
//     _faces append [
//         #include "..\DLC_content\faces\WS\WS_white.sqf"
//     ];
// };
// if (_hasEF) then {
//     _faces append [
//         #include "..\DLC_content\faces\EF\EF_white.sqf", ///probaly need to separate by camos
//         #include "..\DLC_content\faces\EF\EF_african.sqf"
//     ];
// };
["voices", _voices] call _fnc_saveToTemplate;
["sfVoices", ["Male01ENGB", "Male02ENGB", "Male03ENGB", "Male04ENGB", "Male05ENGB"]] call _fnc_saveToTemplate;
["eliteVoices", ["Male01ENG","Male02ENG","Male03ENG","Male04ENG","Male05ENG","Male06ENG","Male07ENG","Male08ENG","Male09ENG",
"Male10ENG","Male11ENG","Male12ENG","Male01ENGFRE","Male02ENGFRE","Male01FRE","Male02FRE","Male03FRE","Male01POL","Male02POL","Male03POL"]] call _fnc_saveToTemplate;
["faces", _faces] call _fnc_saveToTemplate;
["insignia", ["111thID", "", ""]] call _fnc_saveToTemplate;
["sfInsignia", ["CTRG"]] call _fnc_saveToTemplate;

"NATOMen" call _fnc_saveNames;

//////////////////////////
//       Loadouts       //
//////////////////////////

private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["slRifles", []];
_loadoutData set ["rifles", []];
_loadoutData set ["carbines", []];
_loadoutData set ["grenadeLaunchers", []];
_loadoutData set ["designatedGrenadeLaunchers", []];
_loadoutData set ["SMGs", []];
_loadoutData set ["machineGuns", []];
_loadoutData set ["marksmanRifles", []];
_loadoutData set ["sniperRifles", []];
_loadoutData set ["lightATLaunchers", [
["RocketL_F", "", "", "", ["Rocket_F"], [], ""]
]];
_loadoutData set ["ATLaunchers", ["RocketL_F"]];
_loadoutData set ["missileATLaunchers", [
["launch_I_Titan_short_F", "", "acc_pointer_IR", "", ["Titan_AT"], [], ""]
]];
_loadoutData set ["AALaunchers", [
["launch_B_Titan_olive_F", "", "acc_pointer_IR", "", ["Titan_AA"], [], ""]
]];
_loadoutData set ["sidearms", ["swop_SE14cPistol"]];

_loadoutData set ["ATMines", ["ATMine_Range_Mag"]];
_loadoutData set ["APMines", ["APERSMine_Range_Mag"]];
_loadoutData set ["lightExplosives", ["DemoCharge_Remote_Mag"]];
_loadoutData set ["heavyExplosives", ["SatchelCharge_Remote_Mag"]];

_loadoutData set ["antiInfantryGrenades", ["SWOP_termDet_G","SWOP_BCCKtermimploder_G"]];
_loadoutData set ["smokeGrenades", ["swop_SmokeShell"]];
_loadoutData set ["signalsmokeGrenades", ["SmokeShellYellow","SmokeShellRed","SmokeShellPurple","SmokeShellOrange","SmokeShellGreen","SmokeShellBlue"]];

private _slglammo = ["E11Stun_Mag"];
private _glammo = ["E11Stun_Mag"];

private _MXslglammo = ["E11Stun_Mag"];
private _MXglammo = ["E11Stun_Mag"];

// if (_hasRF) then {
//     _slglammo pushBack "1Rnd_RC40_HE_shell_RF";
//     _glammo pushBack "1Rnd_RC40_HE_shell_RF";
//     _MXslglammo pushBack "1Rnd_RC40_HE_shell_RF";
//     _MXglammo pushBack "1Rnd_RC40_HE_shell_RF";
// };

// if (_hasWs) then {
//     _slglammo pushBack "1Rnd_Pellet_Grenade_shell_lxWS";
// 	_glammo pushBack "1Rnd_Pellet_Grenade_shell_lxWS";
//     _MXslglammo pushBack "1Rnd_Pellet_Grenade_shell_lxWS";
// 	_MXglammo pushBack "1Rnd_Pellet_Grenade_shell_lxWS";
// };

//Basic equipment. Shouldn't need touching most of the time.
//Mods might override this, or certain mods might want items removed (No GPSs in WW2, for example)
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["radios", ["ItemRadio"]];
_loadoutData set ["gpses", ["ItemGPS"]];
_loadoutData set ["NVGs", ["SWOP_NVChipClean"]];
_loadoutData set ["binoculars", ["Binocular"]];
_loadoutData set ["rangefinders", ["Rangefinder"]];

_loadoutData set ["traitorUniforms", ["SWOP_StormT_F_CombatUniform"]];
_loadoutData set ["traitorVests", ["SWOP_Stormarmor"]];
_loadoutData set ["traitorHats", []];

_loadoutData set ["officerUniforms", ["SWOP_ImpN_F_CombatUniform"]];
_loadoutData set ["officerVests", ["SWOP_ImpCapBron"]];
_loadoutData set ["officerHats", ["SWOP_ImpCapB"]];

// if (_hasArtOfWar) then {
// 	#include "..\DLC_content\gear\Artofwar\Vanilla_NATO.sqf"
// };

_loadoutData set ["cloakUniforms", []];
_loadoutData set ["cloakVests", []];

_loadoutData set ["uniforms", ["SWOP_StormT_F_CombatUniform"]];
_loadoutData set ["vests", ["SWOP_Stormarmor"]];
_loadoutData set ["Hvests", ["SWOP_Stormarmor"]];
_loadoutData set ["glVests", ["SWOP_Stormarmor"]];
_loadoutData set ["backpacks", ["SWOP_B_AssaultPackPC_Base","SWOP_B_AssaultPackPS_Base"]];
_loadoutData set ["atBackpacks", ["SWOP_B_AssaultPackPC_Base","SWOP_B_AssaultPackPS_Base"]];
_loadoutData set ["longRangeRadios", ["SWOP_B_ITdv_Base","B_RadioBag_01_black_F"]];
_loadoutData set ["helmets", ["SWOP_HelmST"]];
_loadoutData set ["slHat", ["SWOP_HelmST"]];
_loadoutData set ["slVests", ["SWOP_StormarmorCamaT","SWOP_StormarmorCamaO"]];
_loadoutData set ["slUniforms", ["SWOP_StormT_F_CombatUniform"]];
_loadoutData set ["sniHats", ["SWOP_HelmSC"]];
_loadoutData set ["sniVests", ["SWOP_scBron"]];
_loadoutData set ["sniUniforms", ["SWOP_Scout_F_CombatUniform"]];

//Item *set* definitions. These are added in their entirety to unit loadouts. No randomisation is applied.
_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the basic medical loadout for vanilla
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the standard medical loadout for vanilla
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the medic medical loadout for vanilla
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

//Unit type specific item sets. Add or remove these, depending on the unit types in use.
private _slItems = ["Laserbatteries", "Laserbatteries", "Laserbatteries", "B_IR_Grenade"];
private _eeItems = ["ToolKit", "MineDetector"];
private _mmItems = [];

if (A3A_hasACE) then {
    _slItems append ["ACE_microDAGR", "ACE_DAGR"];
    _eeItems append ["ACE_Clacker", "ACE_DefusalKit"];
    _mmItems append ["ACE_RangeCard", "ACE_ATragMX", "ACE_Kestrel4500"];
};

_loadoutData set ["items_squadLeader_extras", _slItems];
_loadoutData set ["items_rifleman_extras", []];
_loadoutData set ["items_medic_extras", []];
_loadoutData set ["items_grenadier_extras", []];
_loadoutData set ["items_explosivesExpert_extras", _eeItems];
_loadoutData set ["items_engineer_extras", _eeItems];
_loadoutData set ["items_lat_extras", []];
_loadoutData set ["items_at_extras", []];
_loadoutData set ["items_aa_extras", []];
_loadoutData set ["items_machineGunner_extras", []];
_loadoutData set ["items_marksman_extras", _mmItems];
_loadoutData set ["items_sniper_extras", _mmItems];
_loadoutData set ["items_police_extras", []];
_loadoutData set ["items_crew_extras", []];
_loadoutData set ["items_unarmed_extras", []];

_loadoutData set ["glasses", []];
_loadoutData set ["goggles", ["G_Combat"]];

//TODO - ACE overrides for misc essentials, medical and engineer gear

///////////////////////////////////////
//    Special Forces Loadout Data    //
///////////////////////////////////////

private _sfLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_sfLoadoutData set ["NVGs", ["SWOP_NVChipClean"]];
_sfLoadoutData set ["uniforms", ["SWOP_StormT_F_CombatUniform"]];
_sfLoadoutData set ["vests", ["SWOP_Stormarmor"]];
_sfLoadoutData set ["Hvests", ["SWOP_Stormarmor"]];
_sfLoadoutData set ["glVests", ["SWOP_Stormarmor"]];
_sfLoadoutData set ["backpacks", ["SWOP_B_AssaultPackPC_Base","SWOP_B_AssaultPackPS_Base"]];
_sfLoadoutData set ["atBackpacks", ["SWOP_B_AssaultPackPC_Base","SWOP_B_AssaultPackPS_Base"]];
_sfLoadoutData set ["helmets", ["SWOP_HelmST"]];
_sfLoadoutData set ["binoculars", ["Laserdesignator"]];
_sfLoadoutData set ["glasses", []];
_sfLoadoutData set ["goggles", ["G_Combat"]];

_sfLoadoutData set ["slRifles", [
    ["SWOP_T21BlasterRifle", "", "", "", ["SWOP_T21BlasterRifle_Mag"], [], ""],
    ["SWOP_e11", "", "", "SWOP_e11_bl_Scope", ["SWOP_e11_Mag"], [], ""],
    ["SWOP_e11", "", "", "SWOP_e11_bl_Scope", ["SWOP_e11_Mag"], [], ""]
]];
_sfLoadoutData set ["rifles", [
    ["SWOP_e11", "", "", "SWOP_e11_bl_Scope", ["SWOP_e11_Mag"], [], ""]
]];
_sfLoadoutData set ["carbines", [
    ["SWOP_e11", "", "", "SWOP_e11_bl_Scope", ["SWOP_e11_Mag"], [], ""]
]];
_sfLoadoutData set ["grenadeLaunchers", [
    ["SWOP_e11", "", "", "SWOP_e11_bl_Scope", ["SWOP_e11_Mag"], [], ""]
]];
_sfLoadoutData set ["machineGuns", [
    ["SWOP_DLT19BlasterRifle", "", "", "", ["SWOP_DLT19BlasterRifle_Mag"], [], ""]
]];

_sfLoadoutData set ["marksmanRifles", [
    ["SWOP_DLT19DBlasterRifle", "", "", "", ["SWOP_DLT19DBlasterRifle"], [], ""]
]];

_sfLoadoutData set ["SMGs", [
    ["SWOP_e11", "", "", "SWOP_e11_bl_Scope", ["SWOP_e11_Mag"], [], ""]
]];

_sfLoadoutData set ["sniperRifles", [
    ["SWOP_DLT19DBlasterRifle", "", "", "", ["SWOP_DLT19DBlasterRifle"], [], ""]
]];
_sfLoadoutData set ["sidearms", [
    ["swop_SE14cPistol", "", "", "", ["SWOP_se14cPistol_Mag"], [], ""]
]];

/////////////////////////////////
//    Elite Loadout Data       //
/////////////////////////////////

private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_eliteLoadoutData set ["NVGs", ["SWOP_NVChipClean"]];
_eliteLoadoutData set ["uniforms", ["SWOP_StormT_F_CombatUniform"]];
_eliteLoadoutData set ["vests", ["SWOP_Stormarmor"]];
_eliteLoadoutData set ["Hvests", ["SWOP_Stormarmor"]];
_eliteLoadoutData set ["glVests", ["SWOP_Stormarmor"]];
_eliteLoadoutData set ["backpacks", ["SWOP_B_AssaultPackPC_Base","SWOP_B_AssaultPackPS_Base"]];
_eliteLoadoutData set ["atBackpacks", ["SWOP_B_AssaultPackPC_Base","SWOP_B_AssaultPackPS_Base"]];
_eliteLoadoutData set ["helmets", ["SWOP_HelmST"]];
_eliteLoadoutData set ["binoculars", ["Laserdesignator"]];
_eliteLoadoutData set ["glasses", []];
_eliteLoadoutData set ["goggles", ["G_Combat"]];

_eliteLoadoutData set ["sniperRifles", [
    ["SWOP_DLT19DBlasterRifle", "", "", "", ["SWOP_DLT19DBlasterRifle"], [], ""]
]];
_eliteLoadoutData set ["sidearms", [
    ["swop_SE14cPistol", "", "", "", ["SWOP_se14cPistol_Mag"], [], ""]
]];
_eliteLoadoutData set ["slRifles", [
    ["SWOP_T21BlasterRifle", "", "", "", ["SWOP_T21BlasterRifle_Mag"], [], ""],
    ["SWOP_e11", "", "", "SWOP_e11_bl_Scope", ["SWOP_e11_Mag"], [], ""],
    ["SWOP_e11", "", "", "SWOP_e11_bl_Scope", ["SWOP_e11_Mag"], [], ""]
]];
_eliteLoadoutData set ["rifles", [
    ["SWOP_e11", "", "", "SWOP_e11_bl_Scope", ["SWOP_e11_Mag"], [], ""]
]];
_eliteLoadoutData set ["carbines", [
    ["SWOP_e11", "", "", "SWOP_e11_bl_Scope", ["SWOP_e11_Mag"], [], ""]
]];
_eliteLoadoutData set ["grenadeLaunchers", [
    ["SWOP_e11", "", "", "SWOP_e11_bl_Scope", ["SWOP_e11_Mag"], [], ""]
]];
_eliteLoadoutData set ["machineGuns", [
    ["SWOP_DLT19BlasterRifle", "", "", "", ["SWOP_DLT19BlasterRifle_Mag"], [], ""]
]];

_eliteLoadoutData set ["marksmanRifles", [
    ["SWOP_DLT19DBlasterRifle", "", "", "", ["SWOP_DLT19DBlasterRifle"], [], ""]
]];

_eliteLoadoutData set ["SMGs", [
    ["SWOP_e11", "", "", "SWOP_e11_bl_Scope", ["SWOP_e11_Mag"], [], ""]
]];

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militaryLoadoutData set ["uniforms", ["SWOP_StormT_F_CombatUniform"]];
_militaryLoadoutData set ["vests", ["SWOP_Stormarmor"]];
_militaryLoadoutData set ["Hvests", ["SWOP_Stormarmor"]];
_militaryLoadoutData set ["glVests", ["SWOP_Stormarmor"]];
_militaryLoadoutData set ["backpacks", ["SWOP_B_AssaultPackPC_Base","SWOP_B_AssaultPackPS_Base"]];
_militaryLoadoutData set ["atBackpacks", ["SWOP_B_AssaultPackPC_Base","SWOP_B_AssaultPackPS_Base"]];
_militaryLoadoutData set ["helmets", ["SWOP_HelmST"]];
_militaryLoadoutData set ["binoculars", ["Laserdesignator"]];
_militaryLoadoutData set ["glasses", []];
_militaryLoadoutData set ["goggles", ["G_Combat"]];

_militaryLoadoutData set ["sniperRifles", [
    ["SWOP_DLT19DBlasterRifle", "", "", "", ["SWOP_DLT19DBlasterRifle"], [], ""]
]];
_militaryLoadoutData set ["sidearms", [
    ["swop_SE14cPistol", "", "", "", ["SWOP_se14cPistol_Mag"], [], ""]
]];
_militaryLoadoutData set ["slRifles", [
    ["SWOP_T21BlasterRifle", "", "", "", ["SWOP_T21BlasterRifle_Mag"], [], ""],
    ["SWOP_e11", "", "", "SWOP_e11_bl_Scope", ["SWOP_e11_Mag"], [], ""],
    ["SWOP_e11", "", "", "SWOP_e11_bl_Scope", ["SWOP_e11_Mag"], [], ""]
]];
_militaryLoadoutData set ["rifles", [
    ["SWOP_e11", "", "", "SWOP_e11_bl_Scope", ["SWOP_e11_Mag"], [], ""]
]];
_militaryLoadoutData set ["carbines", [
    ["SWOP_e11", "", "", "SWOP_e11_bl_Scope", ["SWOP_e11_Mag"], [], ""]
]];
_militaryLoadoutData set ["grenadeLaunchers", [
    ["SWOP_e11", "", "", "SWOP_e11_bl_Scope", ["SWOP_e11_Mag"], [], ""]
]];
_militaryLoadoutData set ["machineGuns", [
    ["SWOP_DLT19BlasterRifle", "", "", "", ["SWOP_DLT19BlasterRifle_Mag"], [], ""]
]];

_militaryLoadoutData set ["marksmanRifles", [
    ["SWOP_DLT19DBlasterRifle", "", "", "", ["SWOP_DLT19DBlasterRifle"], [], ""]
]];

_militaryLoadoutData set ["SMGs", [
    ["SWOP_e11", "", "", "SWOP_e11_bl_Scope", ["SWOP_e11_Mag"], [], ""]
]];

///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_policeLoadoutData set ["uniforms", ["SWOP_StormT_F_CombatUniform"]];
_policeLoadoutData set ["vests", ["SWOP_Stormarmor"]];
private _helmets = ["SWOP_HelmST"];

_policeLoadoutData set ["helmets", _helmets];
_policeLoadoutData set ["SMGs", [
    ["SWOP_e11", "", "", "SWOP_e11_bl_Scope", ["SWOP_e11_Mag"], [], ""]
]];
_policeLoadoutData set ["sidearms", ["swop_SE14cPistol"]];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militiaLoadoutData set ["uniforms", ["SWOP_StormT_F_CombatUniform"]];
_militiaLoadoutData set ["vests", ["SWOP_Stormarmor"]];
_militiaLoadoutData set ["Hvests", ["SWOP_Stormarmor"]];
_militiaLoadoutData set ["glVests", ["SWOP_Stormarmor"]];
_militiaLoadoutData set ["backpacks", ["SWOP_B_AssaultPackPC_Base","SWOP_B_AssaultPackPS_Base"]];
_militiaLoadoutData set ["atBackpacks", ["SWOP_B_AssaultPackPC_Base","SWOP_B_AssaultPackPS_Base"]];
_militiaLoadoutData set ["helmets", ["SWOP_HelmST"]];
_militiaLoadoutData set ["binoculars", ["Laserdesignator"]];
_militiaLoadoutData set ["glasses", []];
_militiaLoadoutData set ["goggles", ["G_Combat"]];

_militiaLoadoutData set ["sniperRifles", [
    ["SWOP_e11", "", "", "SWOP_e11_bl_Scope", ["SWOP_e11_Mag"], [], ""]
]];
_militiaLoadoutData set ["sidearms", [
    ["swop_SE14cPistol", "", "", "", ["SWOP_se14cPistol_Mag"], [], ""]
]];
_militiaLoadoutData set ["slRifles", [
    ["SWOP_e11", "", "", "SWOP_e11_bl_Scope", ["SWOP_e11_Mag"], [], ""]
]];
_militiaLoadoutData set ["rifles", [
    ["SWOP_e11", "", "", "SWOP_e11_bl_Scope", ["SWOP_e11_Mag"], [], ""]
]];
_militiaLoadoutData set ["carbines", [
    ["SWOP_e11", "", "", "SWOP_e11_bl_Scope", ["SWOP_e11_Mag"], [], ""]
]];
_militiaLoadoutData set ["grenadeLaunchers", [
    ["SWOP_e11", "", "", "SWOP_e11_bl_Scope", ["SWOP_e11_Mag"], [], ""]
]];
_militiaLoadoutData set ["machineGuns", [
    ["SWOP_e11", "", "", "SWOP_e11_bl_Scope", ["SWOP_e11_Mag"], [], ""]
]];

_militiaLoadoutData set ["marksmanRifles", [
    ["SWOP_e11", "", "", "SWOP_e11_bl_Scope", ["SWOP_e11_Mag"], [], ""]
]];

_militiaLoadoutData set ["SMGs", [
    ["SWOP_e11", "", "", "SWOP_e11_bl_Scope", ["SWOP_e11_Mag"], [], ""]
]];

//////////////////////////
//    Misc Loadouts     //
//////////////////////////

private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData; 
_crewLoadoutData set ["uniforms", ["SWOP_ShoreT_f_CombatUniform"]];
_crewLoadoutData set ["vests", ["SWOP_TankCr"]];
_crewLoadoutData set ["helmets", ["SWOP_HelmTank"]];


private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData set ["uniforms", ["SWOP_ImpN_F_CombatUniform"]];
_pilotLoadoutData set ["vests", []];
_pilotLoadoutData set ["helmets", ["SWOP_ImpnavH"]];

// //
// if (_hasMarksman) then {
//     #include "..\DLC_content\weapons\Marksman\Vanilla_NATO_Temparate.sqf"
// };

// if (_hasLawsOfWar) then {
//     #include "..\DLC_content\gear\Lawsofwar\Vanilla_NATO.sqf"
// };

// if (_hasApex) then {
//     #include "..\DLC_content\gear\Apex\Vanilla_NATO_Temparate.sqf"
//     #include "..\DLC_content\weapons\Apex\Vanilla_NATO_Temparate.sqf"
// };

// if (_hasContact) then {
//     #include "..\DLC_content\gear\Contact\Vanilla_NATO_Temparate.sqf"
//     #include "..\DLC_content\weapons\Contact\Vanilla_NATO_Temparate.sqf"
// };

// if (_hasRF) then {
//     #include "..\DLC_content\gear\RF\Vanilla_NATO_Temparate.sqf"
//     #include "..\DLC_content\weapons\RF\Vanilla_NATO_Temparate.sqf"
// };

// if (_hasWs) then {
//     #include "..\DLC_content\gear\WS\Vanilla_NATO_Temparate.sqf"
//     #include "..\DLC_content\weapons\WS\Vanilla_NATO_Temparate.sqf"
// };

// if (_hasGM) then {
//     #include "..\DLC_content\weapons\GM\Vanilla_NATO.sqf"
// };

// if (_hasSOG) then {
//     #include "..\DLC_content\gear\SOG\Vanilla_NATO.sqf"
//     #include "..\DLC_content\weapons\SOG\Vanilla_NATO.sqf"
// };

// if (_hasEF) then {
//     #include "..\DLC_content\gear\EF\Vanilla_NATO_Temparate.sqf"
//     #include "..\DLC_content\weapons\EF\Vanilla_NATO_Temparate.sqf"
// };
// //

// if (isClass (configFile >> "cfgVehicles" >> "vnx_b_air_ac119_02_01")) then {
// 	#include "..\MOD_content\Nickelsteel\weapons\Vanilla_NATO.sqf"
// };

/////////////////////////////////
//    Unit Type Definitions    //
/////////////////////////////////


private _squadLeaderTemplate = {
    ["slHat"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["slVests"] call _fnc_setVest;
    ["slUniforms"] call _fnc_setUniform;

    [["slRifles", "rifles"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;
    ["primary", 4] call _fnc_addAdditionalMuzzleMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_squadLeader_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["signalsmokeGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["gpses"] call _fnc_addGPS;
    ["binoculars"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

private _riflemanTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;


    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_rifleman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _radiomanTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["longRangeRadios"] call _fnc_setBackpack;


    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_rifleman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _medicTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [selectRandomWeighted ["carbines", 0.4, "SMGs", 0.6]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_medic"] call _fnc_addItemSet;
    ["items_medic_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _grenadierTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["Hvests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    if (random 1 < 0.3) then {
        [["designatedGrenadeLaunchers", "grenadeLaunchers"] call _fnc_fallback] call _fnc_setPrimary;
        ["backpacks"] call _fnc_setBackpack;
    } else {
        ["grenadeLaunchers"] call _fnc_setPrimary;
    };

    ["primary", 6] call _fnc_addMagazines;
    ["primary", 10] call _fnc_addAdditionalMuzzleMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_grenadier_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 4] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _explosivesExpertTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["glVests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_explosivesExpert_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["lightExplosives", 2] call _fnc_addItem;
    if (random 1 > 0.5) then {["heavyExplosives", 1] call _fnc_addItem;};
    if (random 1 > 0.5) then {["atMines", 1] call _fnc_addItem;};
    if (random 1 > 0.5) then {["apMines", 1] call _fnc_addItem;};

    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _engineerTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [selectRandomWeighted ["carbines", 0.4, "SMGs", 0.6]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_engineer_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    if (random 1 > 0.5) then {["lightExplosives", 1] call _fnc_addItem;};

    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _latTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [selectRandomWeighted ["rifles", 0.2, "carbines", 0.5, "SMGs", 0.3]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    [["lightATLaunchers", "ATLaunchers"] call _fnc_fallback] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_lat_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _atTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    [selectRandomWeighted ["rifles", 0.2, "carbines", 0.5, "SMGs", 0.3]] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    [selectRandom ["ATLaunchers", "missileATLaunchers"]] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 3] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_at_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _aaTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    [selectRandomWeighted ["rifles", 0.2, "carbines", 0.5, "SMGs", 0.3]] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    ["AALaunchers"] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 3] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_aa_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _machineGunnerTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    ["machineGuns"] call _fnc_setPrimary;
    ["primary", 4] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_machineGunner_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _marksmanTemplate = {
    ["sniHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["sniVests"] call _fnc_setVest;
    ["sniUniforms"] call _fnc_setUniform;


    ["marksmanRifles"] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_marksman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["rangefinders"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

private _sniperTemplate = {
    ["sniHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["sniVests"] call _fnc_setVest;
    ["sniUniforms"] call _fnc_setUniform;


    [["sniperRifles", "marksmanRifles"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_sniper_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["rangefinders"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

private _policeTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;


    ["SMGs"] call _fnc_setPrimary;
    ["primary", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_police_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _crewTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    [selectRandom ["carbines", "SMGs"]] call _fnc_setPrimary;
    ["primary", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_crew_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["gpses"] call _fnc_addGPS;
    ["NVGs"] call _fnc_addNVGs;
};

private _unarmedTemplate = {
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _traitorTemplate = {
    ["traitorHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.25, "glasses", 0.75]] call _fnc_setFacewear;
    ["traitorVests"] call _fnc_setVest;
    ["traitorUniforms"] call _fnc_setUniform;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _officerTemplate = {
    ["officerHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.25, "glasses", 0.75]] call _fnc_setFacewear;
    ["officerVests"] call _fnc_setVest;
    ["officerUniforms"] call _fnc_setUniform;

    [["SMGs", "carbines"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 3] call _fnc_addMagazines;
    
    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _patrolSniperTemplate = {
    ["sniHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["sniVests"] call _fnc_setVest;
    ["sniUniforms"] call _fnc_setUniform;

    [["sniperRifles", "marksmanRifles"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_sniper_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _patrolSpotterTemplate = {
    ["sniHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["sniVests"] call _fnc_setVest;
    ["sniUniforms"] call _fnc_setUniform;

    [selectRandom ["rifles", "carbines", "marksmanRifles"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_sniper_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["rangefinders"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};


////////////////////////////////////////////////////////////////////////////////////////
//  You shouldn't touch below this line unless you really really know what you're doing.
//  Things below here can and will break the gamemode if improperly changed.
////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////
//  Special Forces Units   //
/////////////////////////////
private _prefix = "SF";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]]
];


[_prefix, _unitTypes, _sfLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

/*{
    params ["_name", "_loadoutTemplate"];
    private _loadouts = [_sfLoadoutData, _loadoutTemplate] call _fnc_buildLoadouts;
    private _finalName = _prefix + _name;
    [_finalName, _loadouts] call _fnc_saveToTemplate;
} forEach _unitTypes;
*/

///////////////////////
//  Military Units   //
///////////////////////
private _prefix = "military";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]],
    	["PatrolSniper", _patrolSniperTemplate, [], [_prefix]],
    	["PatrolSpotter", _patrolSpotterTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

////////////////////////
//    Police Units    //
////////////////////////
private _prefix = "police";
private _unitTypes = [
	["SquadLeader", _policeTemplate, [], [_prefix]],
	["Standard", _policeTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _policeLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

////////////////////////
//    Militia Units    //
////////////////////////
private _prefix = "militia";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]],
    	["PatrolSniper", _patrolSniperTemplate, [], [_prefix]],
    	["PatrolSpotter", _patrolSpotterTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _militiaLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

///////////////////////
//  Elite Units   //
///////////////////////
private _prefix = "elite";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]],
    	["PatrolSniper", _patrolSniperTemplate, [], [_prefix]],
    	["PatrolSpotter", _patrolSpotterTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _eliteLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

//////////////////////
//    Misc Units    //
//////////////////////

//The following lines are determining the loadout of vehicle crew
["other", [["Crew", _crewTemplate, [], ["other"]]], _crewLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

["other", [["Pilot", _crewTemplate, [], ["other"]]], _pilotLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the unit used in the "kill the official" mission
["other", [["Official", _officerTemplate, [], ["other"]]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the AI used in the "kill the traitor" mission
["other", [["Traitor", _traitorTemplate, [], ["other"]]], _militiaLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the AI used in the "Invader Punishment" mission
["other", [["Unarmed", _UnarmedTemplate, [], ["other"]]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
