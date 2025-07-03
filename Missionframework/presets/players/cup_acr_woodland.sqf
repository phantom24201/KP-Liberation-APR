/*
    File: cup_acr_woodland.sqf
    Author: Eogos - https://github.com/Eogos
    Date: 2019-07-22
    Last Update: 2020-05-25
    License: MIT License - http://www.opensource.org/licenses/MIT

    Description:
        CUP ACR Woodland player preset.

    Needed Mods:
        - CUP Units
        - CUP Vehicles
        - CUP Weapons

    Optional Mods:
        - Qinetix's Titus
*/

/*
    --- Support classnames ---
    Each of these should be unique.
    The same classnames for different purposes may cause various unpredictable issues with player actions.
    Or not, just don't try!
*/
KPLIB_b_fobBuilding = "Land_Cargo_HQ_V1_F";                                    // This is the main FOB HQ building.
KPLIB_b_fobBox = "B_Slingload_01_Cargo_F";                            // This is the FOB as a container.
KPLIB_b_fobTruck = "CUP_B_T810_Repair_CZ_WDL";                        // This is the FOB as a vehicle.
KPLIB_b_arsenal = "B_supplyCrate_F";                                   // This is the virtual arsenal as portable supply crates.
KPLIB_b_mobileRespawn = ["CUP_B_LR_Ambulance_CZ_W","CUP_B_Mi171Sh_Unarmed_ACR","B_Boat_Armed_01_minigun_F"];                     // This is the mobile respawn (and medical) truck.
KPLIB_b_potato01 = "CUP_B_Mi171Sh_Unarmed_ACR";                           // This is Potato 01, a multipurpose mobile respawn as a helicopter.
KPLIB_b_addJet = "CUP_B_L39_CZ_GREY";                           // This is Potato 01, a multipurpose mobile respawn as a helicopter.
KPLIB_b_crewUnit = "CUP_B_CZ_Crew_WDL";                                // This defines the crew for vehicles.
KPLIB_b_heliPilotUnit = "CUP_B_CZ_Pilot_WDL";                                 // This defines the pilot for helicopters.
KPLIB_b_addHeli = "B_Heli_Light_01_F";                      // These are the additional helicopters which spawn on the Freedom or at Chimera base.
KPLIB_b_addBoat = "B_Boat_Transport_01_F";                         // These are the boats which spawn at the stern of the Freedom.
KPLIB_b_logiTruck = "CUP_B_T810_Unarmed_CZ_WDL";                    // These are the trucks which are used in the logistic convoy system.
KPLIB_b_smallStorage = "ContainmentArea_02_sand_F";             // A small storage area for resources.
KPLIB_b_largeStorage = "ContainmentArea_01_sand_F";             // A large storage area for resources.
KPLIB_b_logiStation = "Land_RepairDepot_01_tan_F";                   // The building defined to unlock FOB recycling functionality.
KPLIB_b_airControl = "B_Radar_System_01_F";                     // The building defined to unlock FOB air vehicle functionality.
KPLIB_b_slotHeli = "Land_HelipadSquare_F";                      // The helipad used to increase the GLOBAL rotary-wing cap.
KPLIB_b_slotPlane = "Land_TentHangar_V1_F";                     // The hangar used to increase the GLOBAL fixed-wing cap.
KPLIB_b_crateSupply = "CargoNet_01_box_F";                               // This defines the supply crates, as in resources.
KPLIB_b_crateAmmo = "B_CargoNet_01_ammo_F";                              // This defines the ammunition crates.
KPLIB_b_crateFuel = "CargoNet_01_barrels_F";                             // This defines the fuel crates.

/*
    --- Friendly classnames ---
    Each array below represents one of the 7 pages within the build menu.
    Format: ["vehicle_classname",supplies,ammunition,fuel],
    Example: ["B_APC_Tracked_01_AA_F",300,150,150],
    The above example is the NATO IFV-6a Cheetah, it costs 300 supplies, 150 ammunition and 150 fuel to build.
    IMPORTANT: The last element inside each array must have no comma at the end!
*/
KPLIB_b_infantry = [
    ["CUP_B_CZ_Soldier_WDL",10,0,0],                                    // Rifleman (from 15)
    ["CUP_B_CZ_Soldier_backpack_WDL",15,0,0],                           // Rifleman (Backpack) (from 20)
    ["CUP_B_CZ_Soldier_RPG_WDL",30,10,0],                               // Rifleman (RPG) (+10 ammo)
    ["CUP_B_CZ_Soldier_805_GL_WDL",20,5,0],                             // Grenadier (from 25, +5 ammo)
    ["CUP_B_CZ_Soldier_AR_WDL",15,0,0],                                 // Automatic Rifleman (from 25)
    ["CUP_B_CZ_Soldier_MG_WDL",25,0,0],                                 // Machinegunner (from 35)
    ["CUP_B_CZ_Soldier_Marksman_WDL",20,0,0],                           // Marksman (SVD) (from 30)
    ["CUP_B_CZ_Soldier_AT_WDL",30,10,0],                                // Rifleman (AT) (from 50)
    ["B_soldier_AA_F",30,10,0],                                         // AA Specialist (from 50)
    ["CUP_B_CZ_Medic_WDL",20,0,0],                                      // Medic (from 30)
    ["CUP_B_CZ_Engineer_WDL",25,0,0],                                   // Engineer (from 30)
    ["CUP_B_CZ_ExplosiveSpecialist_WDL",25,0,0],                        // Explosive Specialist (from 30)
    ["CUP_B_CZ_SpecOps_Scout_WDL",30,0,0],                              // SF Scout (from 20)
    ["CUP_B_CZ_SpecOps_Exp_WDL",30,10,0],                               // SF Saboteur (+10 ammo)
    ["CUP_B_CZ_SpecOps_Recon_WDL",30,0,0],                              // SF Recon
    ["CUP_B_CZ_SpecOps_WDL",35,0,0],                                    // SF Rifleman (from 40)
    ["CUP_B_CZ_SpecOps_MG_WDL",35,0,0],                                 // SF Machinegunner (from 30)
    ["CUP_B_CZ_SpecOps_TL_WDL",35,0,0],                                 // SF Team Leader (from 30)
    ["CUP_B_CZ_Sniper_WDL",50,5,0],                                     // Sniper (from 70)
    ["CUP_B_CZ_Spotter_WDL",20,0,0],                                    // Spotter
    ["CUP_B_CZ_Crew_WDL",15,0,0],                                       // Crewman (from 10)
    ["CUP_B_CZ_Soldier_WDL",25,0,0],                                    // Para Trooper (from 20)
    ["CUP_B_CZ_Pilot_WDL",15,0,0]                                       // Pilot (from 10)
];

KPLIB_b_vehLight = [
    ["CUP_B_Hilux_unarmed_BLU_G_F",10,0,0],                            // Hilux              
    ["CUP_B_UAZ_Unarmed_ACR",15,0,10],                                // UAZ
    ["CUP_B_UAZ_Open_ACR",20,0,15],                                   // UAZ (Open)
    ["CUP_B_UAZ_MG_ACR",35,15,20],                                    // UAZ (DShKM)
    ["CUP_B_UAZ_AGS30_ACR",45,25,25],                                 // UAZ (AGS-30)
    ["CUP_B_UAZ_SPG9_ACR",60,30,30],                                  // UAZ (SPG-9)
    ["CUP_B_UAZ_METIS_ACR",75,40,35],                                 // UAZ (Metis-M)
    ["CUP_B_LR_Transport_CZ_W",25,0,15],                              // Land Rover Transport
    ["CUP_B_LR_MG_CZ_W",50,20,25],                                    // Land Rover (M2)
    ["CUP_B_LR_Special_CZ_W",75,35,40],                               // Land Rover (Special)
    ["CUP_B_Dingo_CZ_Wdl",100,30,45],                                 // Dingo 2 (MG)
    ["CUP_B_Dingo_GL_CZ_Wdl",125,40,50],                              // Dingo 2 (GL)
    ["QIN_Titus_WDL",150,0,75],                                       // Nexter Titus
    ["QIN_Titus_arx20_WDL",200,100,100],                              // Nexter Titus ARX20
    ["CUP_B_T810_Unarmed_CZ_WDL",60,0,40],                            // Tatra T810
    ["CUP_B_T810_Armed_CZ_WDL",80,30,50]                              // Armed Tatra
];

KPLIB_b_vehHeavy = [
    ["CUP_B_BRDM2_HQ_CZ",75,10,50],                                 // BRDM-2 (HQ)
    ["CUP_B_BRDM2_CZ",100,50,75],                                   // BRDM-2
    ["CUP_B_RM70_CZ",150,100,80],                                   // RM-70
    ["I_APC_Wheeled_03_cannon_F",175,125,100],                     // Pandur II
    ["CUP_I_BMP1_TK_GUE",125,100,80],                              // BVP-1
    ["CUP_B_BMP2_CZ",150,100,90],                                  // BVP-2
    ["CUP_B_BMP2_AMB_CZ",80,0,50],                                 // BVP-2 Ambulance
    ["B_APC_Tracked_01_AA_F",200,150,125],                         // IFV-6a Cheetah
    ["CUP_O_T72_RU",200,175,150],                                  // T72
    ["CUP_B_T72_CZ",200,200,200]                                   // T-72M4CZ
];

KPLIB_b_vehAir = [
    ["CUP_B_Mi171Sh_ACR",200,175,150],                              // Mi-171Sh (Rockets) (from 700/600/500)
    ["CUP_B_Mi35_Dynamic_CZ",250,250,200],                          // Mi-35 (from 850/1000/550)
    ["CUP_B_Mi35_Dynamic_CZ_Dark",250,250,200],                     // Mi-35 (Dark)
    ["CUP_B_Mi35_Dynamic_CZ_Ram",250,250,200],                      // Mi-35 (Ram)
    ["CUP_B_Mi35_Dynamic_CZ_Tiger",250,250,200],                    // Mi-35 (Tiger)
    ["CUP_B_L39_CZ_GREY",300,300,250],                              // L-39ZA (Grey) (from 1200/1250/650)
    ["I_Plane_Fighter_03_dynamicLoadout_F",325,300,275],            // L-159 Alca (from 1200/1250/550)
    ["I_Plane_Fighter_04_F",350,350,350]                            // JAS 39 Gripen (MAX 350)
];

KPLIB_b_vehStatic = [
    ["CUP_B_DSHKM_ACR",15,15,0],                                   // DShKM (from 25/40)
    ["CUP_B_AGS_ACR",20,25,0],                                     // AGS-30 (from 35/60)
    ["CUP_B_2b14_82mm_ACR",40,75,0],                               // Podnos 2B14 (from 80/150)
    ["CUP_B_RBS70_ACR",60,100,0]                                   // RBS 70 (from 100/200)
];

KPLIB_b_objectsDeco = [
    ["Land_Cargo_House_V1_F",0,0,0],
    ["Land_Cargo_Patrol_V1_F",0,0,0],
    ["Land_Cargo_Tower_V1_F",0,0,0],
    ["Flag_NATO_F",0,0,0],
    ["FlagCarrierCzechRepublic_EP1",0,0,0],
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
    [KPLIB_b_arsenal,50,50,0],                                      // Arsenal (from 100/200)
    [(KPLIB_b_mobileRespawn select 0),50,0,50],                     // Mobile Respawn
    [(KPLIB_b_mobileRespawn select 1),50,0,50],                     // Mobile Respawn
    [(KPLIB_b_mobileRespawn select 2),50,0,50],                     // Mobile Respawn
    [KPLIB_b_fobBox,50,50,0],                                       // FOB Box (from 300/500)
    [KPLIB_b_fobTruck,50,50,50],                                    // FOB Truck (from 300/500/75)
    [KPLIB_b_smallStorage,0,0,0],                                   // Small Storage
    [KPLIB_b_largeStorage,0,0,0],                                   // Large Storage
    [KPLIB_b_logiStation,50,0,0],                                   // Logistics Station (from 250)
    [KPLIB_b_airControl,50,0,0],                                    // Air Control (from 1000)
    [KPLIB_b_slotHeli,50,0,0],                                      // Helipad (from 250)
    [KPLIB_b_slotPlane,50,0,0],                                     // Hangar (from 500)
    ["ACE_medicalSupplyCrate_advanced",20,0,0],                     // Medical Crate (from 50)
    ["ACE_Box_82mm_Mo_HE",20,20,0],                                 // Mortar HE (from 50/40)
    ["ACE_Box_82mm_Mo_Smoke",20,10,0],                              // Mortar Smoke
    ["ACE_Box_82mm_Mo_Illum",20,10,0],                              // Mortar Illum
    ["ACE_Wheel",10,0,0],                                           // Wheel
    ["ACE_Track",10,0,0],                                           // Track
    ["CUP_B_TowingTractor_CZ",25,0,25],                             // Towing Tractor (from 50/25)
    ["CUP_B_T810_Repair_CZ_WDL",50,0,50],                           // Repair Truck (from 325/75)
    ["CUP_B_T810_Refuel_CZ_WDL",50,0,50],                           // Fuel Truck (from 125/275)
    ["CUP_B_T810_Reammo_CZ_WDL",50,50,50],                          // Ammo Truck (from 125/200/75)
    ["B_Slingload_01_Repair_F",50,0,0],                             // Huron Repair (from 275)
    ["B_Slingload_01_Fuel_F",50,0,50],                              // Huron Fuel (from 75/200)
    ["B_Slingload_01_Ammo_F",50,50,0]                               // Huron Ammo (from 75/200)
];

/*
    --- Squads ---
    Pre-made squads for the commander build menu.
    These shouldn't exceed 10 members.
*/

// Light infantry squad.
KPLIB_b_squadLight = [
    "CUP_B_CZ_Soldier_SL_WDL",
    "CUP_B_CZ_Soldier_WDL",
    "CUP_B_CZ_Soldier_WDL",
    "CUP_B_CZ_Soldier_RPG_WDL",
    "CUP_B_CZ_Soldier_805_GL_WDL",
    "CUP_B_CZ_Soldier_AR_WDL",
    "CUP_B_CZ_Soldier_AR_WDL",
    "CUP_B_CZ_Soldier_Marksman_WDL",
    "CUP_B_CZ_Medic_WDL",
    "CUP_B_CZ_Engineer_WDL"
];

// Heavy infantry squad.
KPLIB_b_squadInf = [
    "CUP_B_CZ_Soldier_SL_WDL",
    "CUP_B_CZ_Soldier_RPG_WDL",
    "CUP_B_CZ_Soldier_RPG_WDL",
    "CUP_B_CZ_Soldier_805_GL_WDL",
    "CUP_B_CZ_Soldier_AR_WDL",
    "CUP_B_CZ_Soldier_AR_WDL",
    "CUP_B_CZ_Soldier_MG_WDL",
    "CUP_B_CZ_Soldier_Marksman_WDL",
    "CUP_B_CZ_Medic_WDL",
    "CUP_B_CZ_Engineer_WDL"
];

// AT specialists squad.
KPLIB_b_squadAT = [
    "CUP_B_CZ_Soldier_SL_WDL",
    "CUP_B_CZ_Soldier_WDL",
    "CUP_B_CZ_Soldier_WDL",
    "CUP_B_CZ_Soldier_AT_WDL",
    "CUP_B_CZ_Soldier_AT_WDL",
    "CUP_B_CZ_Soldier_AT_WDL",
    "CUP_B_CZ_Medic_WDL",
    "CUP_B_CZ_Engineer_WDL"
];

// AA specialists squad.
KPLIB_b_squadAA = [
    "CUP_B_CZ_Soldier_SL_WDL",
    "CUP_B_CZ_Soldier_WDL",
    "CUP_B_CZ_Soldier_WDL",
    "B_soldier_AA_F",
    "B_soldier_AA_F",
    "B_soldier_AA_F",
    "CUP_B_CZ_Medic_WDL",
    "CUP_B_CZ_Engineer_WDL"
];

// Force recon squad.
KPLIB_b_squadRecon = [
    "CUP_B_CZ_SpecOps_TL_WDL",
    "CUP_B_CZ_SpecOps_Recon_WDL",
    "CUP_B_CZ_SpecOps_Recon_WDL",
    "CUP_B_CZ_Soldier_RPG_WDL",
    "CUP_B_CZ_SpecOps_MG_WDL",
    "CUP_B_CZ_SpecOps_MG_WDL",
    "CUP_B_CZ_SpecOps_GL_WDL",
    "CUP_B_CZ_SpecOps_GL_WDL",
    "CUP_B_CZ_Medic_WDL",
    "CUP_B_CZ_Engineer_WDL"
];

// Paratroopers squad (The units of this squad will automatically get parachutes on build)
KPLIB_b_squadPara = [
    "CUP_B_CZ_Soldier_WDL",
    "CUP_B_CZ_Soldier_WDL",
    "CUP_B_CZ_Soldier_WDL",
    "CUP_B_CZ_Soldier_WDL",
    "CUP_B_CZ_Soldier_WDL",
    "CUP_B_CZ_Soldier_WDL",
    "CUP_B_CZ_Soldier_WDL",
    "CUP_B_CZ_Soldier_WDL",
    "CUP_B_CZ_Soldier_WDL",
    "CUP_B_CZ_Soldier_WDL"
];

/*
    --- Vehicles to unlock ---
    Classnames below have to be unlocked by capturing military bases.
    Which base locks a vehicle is randomized on the first start of the campaign.
*/
KPLIB_b_vehToUnlock = [
    "CUP_B_Dingo_CZ_Wdl",                                               // Dingo 2 (MG) (Woodland)
    "CUP_B_Dingo_GL_CZ_Wdl",                                            // Dingo 2 (GL) (Woodland)
    "QIN_Titus_WDL",                                                    // Nexter Titus
    "QIN_Titus_arx20_WDL",                                              // Nexter Titus ARX20
    "CUP_B_RM70_CZ",                                                    // RM-70
    "I_APC_Wheeled_03_cannon_F",                                        // Pandur II
    "CUP_B_BMP2_CZ",                                                    // BVP-2
    "B_APC_Tracked_01_AA_F",                                            // IFV-6a Cheetah
    "CUP_B_T72_CZ",                                                     // T-72M4CZ
    "CUP_B_L39_CZ_GREY",                                                // L-39ZA (Grey)
    "I_Plane_Fighter_03_dynamicLoadout_F",                              // L-159 Alca
    "I_Plane_Fighter_04_F"                                              // JAS 39 Gripen
];