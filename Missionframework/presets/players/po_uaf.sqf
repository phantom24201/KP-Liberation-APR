/*
    File: custom.sqf
    Author: KP Liberation Dev Team - https://github.com/KillahPotatoes
    Date: 2017-10-07
    Last Update: 2024-06-20
    License: MIT License - http://www.opensource.org/licenses/MIT

    Description:
        Custom (default NATO) player preset.

    Needed Mods:
        - None

    Optional Mods:
        - BWMod
        - CUP Vehicles
        - CUP Weapons
        - F-15C
        - F/A-18
        - RHSUSAF
        - USAF Fighters Pack
        - USAF Main Pack
        - USAF Utility Pack
*/

/*
    --- Support classnames ---
    Each of these should be unique.
    The same classnames for different purposes may cause various unpredictable issues with player actions.
    Or not, just don't try!
*/
KPLIB_b_fobBuilding     = "Land_Cargo_HQ_V1_F";                         // This is the main FOB HQ building.
KPLIB_b_fobBox          = "B_Slingload_01_Cargo_F";                     // This is the FOB as a container.
KPLIB_b_fobTruck        = "B_Truck_01_box_F";                           // This is the FOB as a vehicle.
KPLIB_b_arsenal         = "B_supplyCrate_F";                            // This is the virtual arsenal as portable supply crates.

// This is the mobile respawn (and medical) truck.
KPLIB_b_mobileRespawn   = ["LOP_UKR_KAMAZ_Medical"];

KPLIB_b_potato01        = "LOP_UKR_Mi8MT_Cargo";              // This is Potato 01, a multipurpose mobile respawn as a helicopter.
KPLIB_b_crewUnit        = "LOP_UKR_Infantry_crew";                                   // This defines the crew for vehicles.
KPLIB_b_heliPilotUnit   = "LOP_UKR_Infantry_crew";                              // This defines the pilot for helicopters.
KPLIB_b_addHeli         = "RHS_MELB_MH6M";                          // These are the additional helicopters which spawn on the Freedom or at Chimera base.
KPLIB_b_addBoat         = "B_Boat_Transport_01_F";                      // These are the boats which spawn at the stern of the Freedom.
KPLIB_b_logiTruck       = "B_Truck_01_transport_F";                     // These are the trucks which are used in the logistic convoy system.
KPLIB_b_smallStorage    = "ContainmentArea_02_sand_F";                  // A small storage area for resources.
KPLIB_b_largeStorage    = "ContainmentArea_01_sand_F";                  // A large storage area for resources.
KPLIB_b_logiStation     = "Land_RepairDepot_01_tan_F";                  // The building defined to unlock FOB recycling functionality.
KPLIB_b_airControl      = "B_Radar_System_01_F";                        // The building defined to unlock FOB air vehicle functionality.
KPLIB_b_slotHeli        = "Land_HelipadSquare_F";                       // The helipad used to increase the GLOBAL rotary-wing cap.
KPLIB_b_slotPlane       = "Land_TentHangar_V1_F";                       // The hangar used to increase the GLOBAL fixed-wing cap.
KPLIB_b_crateSupply     = "CargoNet_01_box_F";                          // This defines the supply crates, as in resources.
KPLIB_b_crateAmmo       = "B_CargoNet_01_ammo_F";                       // This defines the ammunition crates.
KPLIB_b_crateFuel       = "CargoNet_01_barrels_F";                      // This defines the fuel crates.

/*
    --- Friendly classnames ---
    Each array below represents one of the 7 pages within the build menu.
    Format: ["vehicle_classname",supplies,ammunition,fuel],
    Example: ["B_APC_Tracked_01_AA_F",300,150,150],
    The above example is the NATO IFV-6a Cheetah, it costs 300 supplies, 150 ammunition and 150 fuel to build.
    IMPORTANT: The last element inside each array must have no comma at the end!
*/
KPLIB_b_infantry = [
	["LOP_UKR_Infantry_Rifleman",1,0,0,0],
	["LOP_UKR_Infantry_medic",1,0,0,0],
	["LOP_UKR_Infantry_engineer",1,0,0,0],
	["LOP_UKR_Infantry_Grenadier",1,0,0],
	["LOP_UKR_Infantry_Marksman",1,0,0],
	["LOP_UKR_Infantry_LAT",1,0,0,0],
	["LOP_UKR_Infantry_AR",1,0,0],
	["LOP_UKR_Infantry_AA",1,0,0],
	[KPLIB_b_crewUnit,1,0,0]
];

KPLIB_b_vehLight = [
	["B_Boat_Transport_01_F",1,25,1],
	["B_Boat_Armed_01_minigun_F",5,30,5],
	["LOP_UKR_UAZ",1,0,5,0],
	["LOP_UKR_UAZ_DshKM",1,30,5],
	["LOP_UKR_UAZ_AGS",1,40,5],
	["LOP_UKR_UAZ_SPG",1,50,5]
];

KPLIB_b_vehHeavy = [
	["LOP_UKR_BTR60",10,100,20],
	["LOP_UKR_BTR70",10,125,20],
	["LOP_UKR_BTR80",10,150,20],
	["LOP_UKR_BMD1",15,200,20],
	["LOP_UKR_BMD2",15,200,20],
	["LOP_UKR_BMP1",15,250,20],
	["LOP_UKR_BMP2",15,250,20],
	["LOP_UKR_ZSU234",20,300,20],
	["LOP_UKR_BM21",20,400,20],
	["LOP_UKR_2S1",20,400,20],
	["LOP_UKR_T72BB",30,1000,30]
];

KPLIB_b_vehAir = [
	["RHS_MELB_MH6M",10,20,15],
	["RHS_MELB_AH6M",10,50,15],
	["RHS_UH60M",10,80,20],
	["LOP_UKR_Mi24V_FAB",10,200,20],
	["LOP_UKR_Mi24V_AT",10,200,20],
	["LOP_UKR_Mi24V_UPK23",10,200,20],
	["LOP_UKR_Mi8MTV3_FAB",15,250,20],
	["LOP_UKR_Mi8MTV3_UPK23",15,250,20]
];

KPLIB_b_vehStatic = [
	["LOP_UKR_AGS30_TriPod",0,50,0],
	["LOP_UKR_Static_DSHKM",0,50,0],
	["LOP_UKR_Kord_High",0,50,0],
	["LOP_UKR_Static_AT4",0,100,0],
	["LOP_UKR_Igla_AA_pod",0,150,0],
	["LOP_UKR_Static_SPG9",0,150,0],
	["LOP_UKR_ZU23",0,300,0],
	["LOP_UKR_Static_D30",0,400,0],
    ["B_SAM_System_03_F",250,500,0]                                     // MIM-145 Defender
];

KPLIB_b_objectsDeco = [
    ["Land_Cargo_House_V1_F",0,0,0],
    ["Land_Cargo_Patrol_V1_F",0,0,0],
    ["Land_Cargo_Tower_V1_F",0,0,0],
    ["Flag_NATO_F",0,0,0],
    ["Flag_US_F",0,0,0],
    ["BWA3_Flag_Ger_F",0,0,0],
    ["Flag_UK_F",0,0,0],
    ["Flag_White_F",0,0,0],
    ["Land_Medevac_house_V1_F",0,0,0],
    ["Land_Medevac_HQ_V1_F",0,0,0],
    ["Flag_RedCrystal_F",0,0,0],
    ["CamoNet_BLUFOR_F",0,0,0],
    ["CamoNet_BLUFOR_open_F",0,0,0],
    ["CamoNet_BLUFOR_big_F",0,0,0],
    ["Land_PortableLight_single_F",0,0,0],
    ["Land_PortableLight_double_F",0,0,0],
    ["Land_LampSolar_F",0,0,0],
    ["Land_LampHalogen_F",0,0,0],
    ["Land_LampStreet_small_F",0,0,0],
    ["Land_LampAirport_F",0,0,0],
    ["Land_HelipadCircle_F",0,0,0],                                     // Strictly aesthetic - as in it does not increase helicopter cap!
    ["Land_HelipadRescue_F",0,0,0],                                     // Strictly aesthetic - as in it does not increase helicopter cap!
    ["PortableHelipadLight_01_blue_F",0,0,0],
    ["PortableHelipadLight_01_green_F",0,0,0],
    ["PortableHelipadLight_01_red_F",0,0,0],
    ["Land_CampingChair_V1_F",0,0,0],
    ["Land_CampingChair_V2_F",0,0,0],
    ["Land_CampingTable_F",0,0,0],
    ["MapBoard_altis_F",0,0,0],
    ["MapBoard_stratis_F",0,0,0],
    ["MapBoard_seismic_F",0,0,0],
    ["Land_Pallet_MilBoxes_F",0,0,0],
    ["Land_PaperBox_open_empty_F",0,0,0],
    ["Land_PaperBox_open_full_F",0,0,0],
    ["Land_PaperBox_closed_F",0,0,0],
    ["Land_DieselGroundPowerUnit_01_F",0,0,0],
    ["Land_ToolTrolley_02_F",0,0,0],
    ["Land_WeldingTrolley_01_F",0,0,0],
    ["Land_Workbench_01_F",0,0,0],
    ["Land_GasTank_01_blue_F",0,0,0],
    ["Land_GasTank_01_khaki_F",0,0,0],
    ["Land_GasTank_01_yellow_F",0,0,0],
    ["Land_GasTank_02_F",0,0,0],
    ["Land_BarrelWater_F",0,0,0],
    ["Land_BarrelWater_grey_F",0,0,0],
    ["Land_WaterBarrel_F",0,0,0],
    ["Land_WaterTank_F",0,0,0],
    ["Land_BagFence_Round_F",0,0,0],
    ["Land_BagFence_Short_F",0,0,0],
    ["Land_BagFence_Long_F",0,0,0],
    ["Land_BagFence_Corner_F",0,0,0],
    ["Land_BagFence_End_F",0,0,0],
    ["Land_BagBunker_Small_F",0,0,0],
    ["Land_BagBunker_Large_F",0,0,0],
    ["Land_BagBunker_Tower_F",0,0,0],
    ["Land_HBarrier_1_F",0,0,0],
    ["Land_HBarrier_3_F",0,0,0],
    ["Land_HBarrier_5_F",0,0,0],
    ["Land_HBarrier_Big_F",0,0,0],
    ["Land_HBarrierWall4_F",0,0,0],
    ["Land_HBarrierWall6_F",0,0,0],
    ["Land_HBarrierWall_corner_F",0,0,0],
    ["Land_HBarrierWall_corridor_F",0,0,0],
    ["Land_HBarrierTower_F",0,0,0],
    ["Land_CncBarrierMedium_F",0,0,0],
    ["Land_CncBarrierMedium4_F",0,0,0],
    ["Land_Concrete_SmallWall_4m_F",0,0,0],
    ["Land_Concrete_SmallWall_8m_F",0,0,0],
    ["Land_CncShelter_F",0,0,0],
    ["Land_CncWall1_F",0,0,0],
    ["Land_CncWall4_F",0,0,0],
    ["Land_Sign_WarningMilitaryArea_F",0,0,0],
    ["Land_Sign_WarningMilAreaSmall_F",0,0,0],
    ["Land_Sign_WarningMilitaryVehicles_F",0,0,0],
    ["Land_Razorwire_F",0,0,0],
    ["Land_ClutterCutter_large_F",0,0,0]
];

KPLIB_b_vehSupport = [
    [KPLIB_b_arsenal,100,200,0],
    [(KPLIB_b_mobileRespawn select 0),200,0,100],
    [(KPLIB_b_mobileRespawn select 1),200,0,100],
    [KPLIB_b_fobBox,300,500,0],
    [KPLIB_b_fobTruck,300,500,75],
    [KPLIB_b_smallStorage,0,0,0],
    [KPLIB_b_largeStorage,0,0,0],
    [KPLIB_b_logiStation,250,0,0],
    [KPLIB_b_airControl,1000,0,0],
    [KPLIB_b_slotHeli,250,0,0],
    [KPLIB_b_slotPlane,500,0,0],
    ["ACE_medicalSupplyCrate_advanced",50,0,0],
    ["ACE_Box_82mm_Mo_HE",50,40,0],
    ["ACE_Box_82mm_Mo_Smoke",50,10,0],
    ["ACE_Box_82mm_Mo_Illum",50,10,0],
    ["ACE_Wheel",10,0,0],
    ["ACE_Track",10,0,0],
    ["USAF_missileCart_W_AGM114",50,150,0],                             // Missile Cart (AGM-114)
    ["USAF_missileCart_AGMMix",50,150,0],                               // Missile Cart (AGM-65 Mix)
    ["USAF_missileCart_AGM1",50,150,0],                                 // Missile Cart (AGM-65D)
    ["USAF_missileCart_AGM2",50,150,0],                                 // Missile Cart (AGM-65E)
    ["USAF_missileCart_AGM3",50,150,0],                                 // Missile Cart (AGM-65K)
    ["USAF_missileCart_AA1",50,150,0],                                  // Missile Cart (AIM-9M/AIM-120)
    ["USAF_missileCart_AA2",50,150,0],                                  // Missile Cart (AIM-9X/AIM-120)
    ["USAF_missileCart_GBU12_green",50,150,0],                          // Missile Cart (GBU12 Green)
    ["USAF_missileCart_GBU12_maritime",50,150,0],                       // Missile Cart (GBU12 Maritime)
    ["USAF_missileCart_GBU12",50,150,0],                                // Missile Cart (GBU12)
    ["USAF_missileCart_Gbu31",50,150,0],                                // Missile Cart (GBU31)
    ["USAF_missileCart_GBU39",50,150,0],                                // Missile Cart (GBU39)
    ["USAF_missileCart_Mk82",50,150,0],                                 // Missile Cart (Mk82)
    ["CUP_B_TowingTractor_NATO",50,0,25],                               // Towing Tractor
    ["B_APC_Tracked_01_CRV_F",500,250,350],                             // CRV-6e Bobcat
    ["B_Truck_01_Repair_F",325,0,75],                                   // HEMTT Repair
    ["B_Truck_01_fuel_F",125,0,275],                                    // HEMTT Fuel
    ["B_Truck_01_ammo_F",125,200,75],                                   // HEMTT Ammo
	["LOP_UKR_KAMAZ_Repair",5,15,10],
	["LOP_UKR_KAMAZ_Fuel",5,15,10],
	["LOP_UKR_KAMAZ_Ammo",5,15,10],
	["rhs_launcher_crate",0,150,0],   
    ["B_Slingload_01_Repair_F",275,0,0],                                // Huron Repair
    ["B_Slingload_01_Fuel_F",75,0,200],                                 // Huron Fuel
    ["B_Slingload_01_Ammo_F",75,200,0]                                  // Huron Ammo
];

/*
    --- Squads ---
    Pre-made squads for the commander build menu.
    These shouldn't exceed 10 members.
*/

// Light infantry squad.
KPLIB_b_squadLight = [
"LOP_UKR_Infantry_sergeant",
"LOP_UKR_Infantry_medic",
"LOP_UKR_Infantry_Marksman",
"LOP_UKR_Infantry_Rifleman",
"LOP_UKR_Infantry_Light",
"LOP_UKR_Infantry_LAT",
"LOP_UKR_Infantry_AR"
];

// Heavy infantry squad.
KPLIB_b_squadInf = [
"LOP_UKR_Infantry_officer",
"LOP_UKR_Infantry_Marksman",
"LOP_UKR_Infantry_Rifleman",
"LOP_UKR_Infantry_LAT",
"LOP_UKR_Infantry_RShG2",
"LOP_UKR_Infantry_AR",
"LOP_UKR_Infantry_AR_Asst",
"LOP_UKR_Infantry_engineer",
"LOP_UKR_Infantry_AR"
];

// AT specialists squad.
KPLIB_b_squadAT = [
"LOP_UKR_Infantry_sergeant",
"LOP_UKR_Infantry_RPG",
"LOP_UKR_Infantry_LAT",
"LOP_UKR_Infantry_RShG2",
"LOP_UKR_Infantry_RPG",
"LOP_UKR_Infantry_AR",
"LOP_UKR_Infantry_Grenadier",
"LOP_UKR_Infantry_engineer",
"LOP_UKR_Infantry_medic",
"LOP_UKR_Infantry_Rifleman",
"LOP_UKR_Infantry_Light"
];

// AA specialists squad.
KPLIB_b_squadAA = [
"LOP_UKR_Infantry_sergeant",
"LOP_UKR_Infantry_AR",
"LOP_UKR_Infantry_AR",
"LOP_UKR_Infantry_RPG",
"LOP_UKR_Infantry_AA",
"LOP_UKR_Infantry_AA",
"LOP_UKR_Infantry_AR"
];

// Force recon squad.
KPLIB_b_squadRecon = [
"LOP_UKR_Infantry_sergeant",
"LOP_UKR_Infantry_Marksman",
"LOP_UKR_Infantry_medic",
"LOP_UKR_Infantry_RPG",
"LOP_UKR_Infantry_AA",
"LOP_UKR_Infantry_engineer",
"LOP_UKR_Infantry_AR"
];

// Paratroopers squad (The units of this squad will automatically get parachutes on build)
KPLIB_b_squadPara = [
"LOP_UKR_Infantry_sergeant",
"LOP_UKR_Infantry_Marksman",
"LOP_UKR_Infantry_medic",
"LOP_UKR_Infantry_RPG",
"LOP_UKR_Infantry_AA",
"LOP_UKR_Infantry_engineer",
"LOP_UKR_Infantry_AR"
];

/*
    --- Vehicles to unlock ---
    Classnames below have to be unlocked by capturing military bases.
    Which base locks a vehicle is randomized on the first start of the campaign.
*/
KPLIB_b_vehToUnlock = [
"LOP_UKR_Mi8MTV3_FAB",
"LOP_UKR_Mi24V_FAB",
"LOP_UKR_BMP2"
];
