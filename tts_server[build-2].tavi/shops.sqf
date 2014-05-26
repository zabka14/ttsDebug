//FFG

if(isServer)then

{

INV_itemstocks = 

[
[-1,5,40,40,40,40,35,20], //fuelshop1
[-1,5,40,40,40,40,35,20], //fuelshop2
[-1,5,40,40,40,40,35,20], //fuelshop3
[-1,5,40,40,40,40,35,20], //fuelshop4
[-1,5,40,40,40,40,35,20], //fuelshop5
[-1,5,40,40,40,40,35,20], //fuelshop6
[-1,5,40,40,40,40,35,20], //fuelshop7
[-1,5,40,40,40,40,35,20], //fuelshop8
[-1,5,40,40,40,40,35,20], //fuelshop9
-1, //foodshop1
-1, //foodshop2
-1, //foodshop4
-1, //pub0
-1, //pub1
-1, //pub2
-1, //pub3
-1, //pub4
[-1,8,120,8,120,8,120,8,120,120,8,120,8,120,8,120,8,120,8,120,8,120,8,120,8,120], //gundealer1
[4,120,4,120,4,120,4,120,1,24], //assassinshop 
-1, //mayorguns
-1, //vending2
-1, //tuning1
[-1,20,20,20,20,20,10,10,10,10,10,5,5,5,5,10,10,20,5,5,20,20], //carshop1
[-1,20,20,20,20,20,10,10,10,10,10,5,5,5,5,10,10,20,5,5,20,20], //carshop2
[5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5], //scarshop
[5,5,5,5,5,5,5,5,5,5,5,5,5], //scarshop2
[5,5,5,5,5,5,5,5,5,5], //scarshop3
[5,5,5,5,5,5,5,5,5,5], //scarshop4
[5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5], //scarshop5
[5,5,5,5,5,5,5,5,5,5,5,5,5,5], //scarshop6
[5,5,5,5,5,5,5,5,5,5,5,5,5], //scarshop7
[5,5,5,5,5,5,5,5,5,5,5,5], //scarshop8
[5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5], //scarshop9
[5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5], //tahoeshop1
[5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5], //picupshop1
[10,10,10,10], //taxishop
[5,5,5,5,5,5,5,5,5,5,5,5,5,5,5], //bikeshop
[5,5,5,5,5,5,5,5], //bikeshop1
[5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5], //bikeshop2
[5,5,5,5,5,5,5,5,5,5,5,5,5,5,-1,-1], //truckshop
[5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5], //struckshop
[5,5,5,5,5,5,5,5,5], //airshop
[5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5], //airshop2
[5,5,5,5,5,5], //airshop3
[5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5], //airshop4
-1, //scubashop
-1, //boatshop2
-1, //boatshop4
-1, //tboatshop1
-1, //bsshop1
-1, //insure
[10,10,5], //workplace_getjobflag_4
-1, //workplace_getjobflag_6
[20,-1,20,20,20], //equipbox
-1, //tdoc
-1, //tsub
-1, //cheeseburger
-1, //oilsell1
-1, //resourcesell
[10,4,120,4,4,4,4,4,120,2,120,2,10,2,2,1], //terrorbox
-1, //shadyd
-1, //gangarea1
-1, //gangarea2
-1, //gangarea3
-1, //gangarea4
-1, //cdrugsell
-1, //mdrugsell
-1, //ldrugsell
-1, //hdrugsell
-1, //methsell
-1, //whalesell
-1, //moneysell
-1, //pharmacy
-1, //copair
-1, //copcar
-1, //copcar1
-1, //copbasic
-1, //coppatrol
-1, //copsheriff
-1, //copswat
-1, //copbasic2
-1, //copswatcars
-1, //coptraffic
-1, //coptrafficcars
-1, //copvicecars
-1, //copk8cars
-1, //donatebuy
-1, //milp
-1, //milpb
-1, //tow
-1, //pmc
-1, //pmcair1
-1, //pmcair2
-1, //cgvehshop
-1, //cgairshop
-1, //cgairshop2
-1, //cgboatshop
-1, //cgweapons
-1, //diamond_1
-1, //vipterrorair
-1, //vipshop1
-1, //vipcop
-1, //terrorvip
-1, //hospsell
-1, //adminmisc
-1, //adminshop
-1, //unbasic
-1, //unweapons
-1, //civspwncarshop1
-1, //civspawncarshop2
-1, //pirategearbox
-1, //paintball1
-1, //busshop
-1, //bhunt
-1, //tmdhs
-1, //tmdcs
-1, //cavhs
-1 //cavcs
];

publicvariable "INV_itemstocks";

};

INV_itemmaxstocks = 

[
[-1,5,40,40,40,40,35,20], //fuelshop1
[-1,5,40,40,40,40,35,20], //fuelshop2
[-1,5,40,40,40,40,35,20], //fuelshop3
[-1,5,40,40,40,40,35,20], //fuelshop4
[-1,5,40,40,40,40,35,20], //fuelshop5
[-1,5,40,40,40,40,35,20], //fuelshop6
[-1,5,40,40,40,40,35,20], //fuelshop7
[-1,5,40,40,40,40,35,20], //fuelshop8
[-1,5,40,40,40,40,35,20], //fuelshop9
-1, //foodshop1
-1, //foodshop2
-1, //foodshop4
-1, //pub0
-1, //pub1
-1, //pub2
-1, //pub3
-1, //pub4
[-1,8,120,8,120,8,120,8,120,120,8,120,8,120,8,120,8,120,8,120,8,120,8,120,8,120], //gundealer1
[8,120,8,120,8,120,8,120,2,24], //assassinshop 
-1, //mayorguns
-1, //vending2
-1, //tuning1
[-1,20,20,20,20,20,10,10,10,10,10,5,5,5,5,10,10,20,5,5,20,20], //carshop1
[-1,20,20,20,20,20,10,10,10,10,10,5,5,5,5,10,10,20,5,5,20,20], //carshop2
[5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5], //scarshop
[5,5,5,5,5,5,5,5,5,5,5,5,5], //scarshop2
[5,5,5,5,5,5,5,5,5,5], //scarshop3
[5,5,5,5,5,5,5,5,5,5], //scarshop4
[5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5], //scarshop5
[5,5,5,5,5,5,5,5,5,5,5,5,5,5], //scarshop6
[5,5,5,5,5,5,5,5,5,5,5,5,5], //scarshop7
[5,5,5,5,5,5,5,5,5,5,5,5], //scarshop8
[5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5], //scarshop9
[5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5], //tahoeshop1
[5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5], //picupshop1
[10,10,10,10], //taxishop
[5,5,5,5,5,5,5,5,5,5,5,5,5,5,5], //bikeshop
[5,5,5,5,5,5,5,5], //bikeshop1
[5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5], //bikeshop2
[5,5,5,5,5,5,5,5,5,5,5,5,5,5,-1,-1], //truckshop
[5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5], //struckshop
[5,5,5,5,5,5,5,5,5], //airshop
[5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5], //airshop2
[5,5,5,5,5,5], //airshop3
[5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5], //airshop4
-1, //scubashop
-1, //boatshop2
-1, //boatshop4
-1, //tboatshop1
-1, //bsshop1
-1, //insure
[10,10,5], //workplace_getjobflag_4
-1, //workplace_getjobflag_6
[20,-1,20,20,20], //equipbox
-1, //tdoc
-1, //tsub
-1, //cheeseburger
-1, //oilsell1
-1, //resourcesell
[10,4,120,4,4,4,4,4,120,2,120,2,10,2,2,1], //terrorbox
-1, //shadyd
-1, //gangarea1
-1, //gangarea2
-1, //gangarea3
-1, //gangarea4
-1, //cdrugsell
-1, //mdrugsell
-1, //ldrugsell
-1, //hdrugsell
-1, //methsell
-1, //whalesell
-1, //moneysell
-1, //pharmacy
-1, //copair
-1, //copcar
-1, //copcar1
-1, //copbasic
-1, //coppatrol
-1, //copsheriff
-1, //copswat
-1, //copbasic2
-1, //copswatcars
-1, //coptraffic
-1, //coptrafficcars
-1, //copvicecars
-1, //copk8cars
-1, //donatebuy
-1, //milp
-1, //milpb
-1, //tow
-1, //pmc
-1, //pmcair1
-1, //pmcair2
-1, //cgvehshop
-1, //cgairshop
-1, //cgairshop2
-1, //cgboatshop
-1, //cgweapons
-1, //diamond_1
-1, //vipterrorair
-1, //vipshop1
-1, //vipcop
-1, //terrorvip
-1, //hospsell
-1, //adminmisc
-1, //adminshop
-1, //unbasic
-1, //unweapons
-1, //civspwncarshop1
-1, //civspawncarshop2
-1, //pirategearbox
-1, //paintball1
-1, //busshop
-1,//bhunt
-1, //tmdhs
-1, //tmdcs
-1, //cavhs
-1 //cavcs
];

// Shop items - 0 

_emptyshop = [];

//Fuel Shop - 6
_fs = [
"Fuelline",
"reparaturkit",
"tcgmp",
"doshd",
"gdar",
"bjerk",
"wulf"
];

//fuel shop 2 - 10
_fs2 =[
"fishingpole",
"rawcow",
"boar",
"bjerk",
"MBG_Compound_Bow",
"MBG_Arrow_N",
"JoC_Flitsche",
"JoC_FlitschMag",
"LeeEnfield_BH",
"x_303"
];

//Item Shop - 12
_is = [
"apple",
"straw",
"getreide",
"blowfish",
"mackerel",
"herring",
"perch",
"trout",
"walleye",
"bass",
"boar",
"lighter"
];

//Copbasefood - 4
_cf = [
"wulf",
"bjerk",
"tcgmp",
"doshd"
];

//Alcohol shop - 7
_pub = [
"beer",
"beer2",
"vodka",
"smirnoff",
"wiskey",
"wine",
"wine2"
];

//Pistol Shop - 28 
_gss = [
"GunrackUS_EP1",
"RH_p38",
"RH_8Rnd_9x19_p38",
"RH_tt33",
"RH_8Rnd_762_tt33",
"RH_browninghp",
"RH_13Rnd_9x19_bhp",
"RH_uspm",
"RH_12Rnd_45cal_usp",
"RH_15Rnd_9x19_usp",
"RH_mk2",
"RH_10Rnd_22LR_mk2",
"RH_m9c",
"Rnd_9x19_M9",
"RH_anacg",
"RH_6Rnd_44_Mag",
"RH_python",
"RH_6Rnd_357_Mag",
"RH_m1911old",
"RH_8Rnd_45cal_m1911",
"C1987_P99_black",
"15Rnd_9x19_p99",
"RH_bull",
"RH_6Rnd_44_Mag"
];

//assassin - 8
_ass = [
"RH_m1911sd",
"RH_8Rnd_45cal_m1911",
"C1987_P99_black_sd",
"15Rnd_9x19_p99_sd",
"VSS_vintorez_ASS",
"20Rnd_9x39_SP5_VSS"
];

//mayor - 17 
_mgs = [
"RH_mk22",
"RH_8Rnd_9x19_Mk",
"KPFS_MP2",
"KPFS_32Rnd_MP2",
"RH_muzi",
"RH_32rnd_9x19_Muzi",
"RH_uzi",
"RH_9mm_32RND_Mag",
"RH_tmpeot",
"30Rnd_9x19_MP5",
"RH_fmg9",
"RH_9mm_32RND_Mag",
"GPS",
"NVGoggles",
"CHRYSLER_B_limmo",
"tcg_taurus_security",
"ilpd_ags_cvpi"
];

//Equipment shop - 5
_es = [
"Binocular",
"GPS",
"NVGoggles",
"hideout",
"fishingpole"
];

//gocart - 1
_gc = [
"Da_kart"
];

//Car Upgrades - 2
_cu = [
"supgrade1",
"supgrade2"
];

//Car Shop - 17
_cs1 = [
"MMT_USMC",
"Volha_1_TK_CIV_EP1",
"S1203_TK_CIV_EP1",
"civic",
"Car_hatchback",
"VWGolf",
"Car_Sedan",
"SkodaBlue",
"Skodared",
"lada1",
"lada2",
"ibr_van_BNK",
"LandRover_TK_CIV_EP1",
"datsun1_civil_3_open",
"UAZ_Unarmed_TK_CIV_EP1",
"oldtruck",
"Tractor"
];

//CAR SHOP 2 - 5
_cs2 = [
"MMT_USMC",
"tractor",
"oldtruc2",
"oldtruc2a",
"Volha_1_TK_CIV_EP1"
];

//Sports Car Shop - 28
_sc1 = [
"440cuda",
"roadrunner",
"roadrunner2",
"CHEVROLET_CAMARO_SS_396",
"chevrolet_chevelle",
"cuda",
"hemicuda",
"cd71hm",
"barcuda",
"fury",
"FORD_MUSTANG_SHELBY_COBRA",
"FORD_MUSTANG_SHELBY_COBRA1",
"FORD_MUSTANG_SHELBY_COBRA2",
"FORD_MUSTANG_SHELBY_COBRA3",
"FORD_GT",
"monaco_grey",
"monaco_blue",
"monaco_white",
"monaco_green",
"monaco_red",
"challenger_grey",
"challenger_blue",
"challenger_yellow",
"challenger_pink",
"challenger_white",
"challenger_green",
"challenger_red",
"challenger_orange"
];

//charger shop - 13
_sc2 = [
"cl_charger",
"cl_charger_black",
"il_charger_blue",
"il_charger_black",
"il_charger_red",
"il_charger_orange",
"MAZDA_RX_7",
"MAZDA_RX_71",
"MAZDA_RX_72",
"MAZDA_RX_73",
"MAZDA_RX_75",
"MAZDA_RX_74",
"MAZDA_MAZDASPEED_3"
];

//LOW END - 9 
_sc3 = [
"CHRYSLER_300",
"RENAULT_CLIO_SPORT_V6",
"SUBARU_IMPREZA_WRX_STI_AWD",
"SUBARU_IMPREZA_STI_AWD",
"FIAT_PUNTO",
"ALFA_ROMEO_BRERA",
"NISSAN_240SX_SE",
"PONTIAC_GTO_6",
"240GD"
];

//MID END - 10
_sc4 = [
"MustangGTRyellow_MLOD",
"Convertible_MLOD",
"FORD_SHELBY_GT",
"CHRYSLER_W_limmo",
"CORVETTE_Z06",
"INFINITI_G35",
"MERCEDES_BENZ_CLK_500",
"MERCEDES_BENZ_SL_65_AMG",
"JAGUAR_XK",
"CADILLAC_CTS"
];

//HIGH END - 21
_sc5 = [
"CL_PORSCHE_997",
"CL_LAMBORGHINI_GT3",
"KOENIGSEGG_CCX",
"KOENIGSEGG_CCX1",
"KOENIGSEGG_CCX2",
"KOENIGSEGG_CCX3",
"MCLAREN_F1",
"MERCEDES_BENZ_SLR",
"PORSCHE_997_GT3_RSR",
"PORSCHE_911_TURBO",
"PORSCHE_911_GT3_RS",
"LAMBORGHINI_MURCIELAGO",
"LAMBORGHINI_REVENTON",
"LAMBORGHINI_GALLARDO",
"MASERATI_MC12",
"JAGUAR_XK",
"BUGATTI_VEYRON",
"AUDI_TT_QUATTRO_S_LINE",
"AUDI_FSI_LE_MANS",
"PAGANI_ZONDA_F",
"ASTON_MARTIN_DB9"
];

//NISSAN - 14
_sc6 = [
"NISSAN_GTR_SPECV",
"NISSAN_GTR_SPECV1",
"NISSAN_GTR_SPECV2",
"NISSAN_GTR_SPECV3",
"NISSAN_350Z",
"NISSAN_370Z",
"NISSAN_370Z1",
"NISSAN_370Z2",
"NISSAN_370Z3",
"NISSAN_370Z4",
"NISSAN_SKYLINE_GT_R_Z",
"NISSAN_SKYLINE_GT_R_Z1",
"NISSAN_SKYLINE_GT_R_Z2",
"NISSAN_SKYLINE_GT_R_Z3"
];

//350 - 13
_sc7 = [
"350z_red",
"350z_kiwi",
"350z_black",
"350z_silver",
"350z_green",
"350z_blue",
"350z_gold",
"350z_white",
"350z_pink",
"350z_mod",
"350z_ruben",
"350z_v",
"350z_yellow"
];


//FORD - 12
_sc8 = [
"tcg_taurus_civ1",
"tcg_taurus_civ2",
"tcg_taurus_civ3",
"tcg_taurus_civ4",
"tcg_taurus_civ5",
"tcg_taurus_civ6",
"il_fordcv_white",
"il_fordcv_grey",
"il_fordcv_black",
"il_fordcv_darkblue",
"il_fordcv_maroon",
"il_fordcv_sandstone"
];

//BWM - 21
_sc9 = [
"m5_red",
"m5_grey",
"m5_blue",
"m5_c_green",
"m5_c_black",
"m5_c_white",
"BMW_M6",
"BMW_M3_GTR",
"BMW_M3",
"BMW_M3_RALLY",
"BMW_135I",
"tcg_bmw_m3",
"tcg_bmw_m3_hamwhite",
"tcg_bmw_m3_c1",
"tcg_bmw_m3_c3",
"tcg_bmw_m3_c4",
"tcg_bmw_m3_c5",
"tcg_bmw_m3_c6",
"tcg_bmw_m3_c7",
"tcg_bmw_m3_c8",
"tcg_bmw_m3_c9"
];

//Tahoe shop - 18
_tahoe = [
"tahoe_grey",
"tahoe_darkblue",
"tahoe_blue",
"tahoe_yellow",
"tahoe_white",
"tahoe_green",
"tahoe_black",
"tahoe_orange",
"tahoe_pink",
"tahoe_darkblue_cb",
"tahoe_grey_cb",
"tahoe_blue_cb",
"tahoe_yellow_cb",
"tahoe_pink_cb",
"tahoe_white_cb",
"tahoe_green_cb",
"tahoe_black_cb",
"tahoe_orange_cb"
];

//Pickup Shop - 21
_ps = [
"il_silverado_black",
"il_silverado_red",
"il_silverado_orange",
"il_silverado_selvo",
"il_silverado_white",
"tcg_suburban_red",
"tcg_suburban_yellow",
"tcg_suburban_grey",
"tcg_suburban_white",
"tcg_suburban_green",
"suburban_blue",
"suburban_black",
"suburban_maroon",
"suburban_sandstone",
"suburban_grey",
"suburban_white",
"f350_red",
"f350_blue",
"f350_pink",
"f350_white",
"f350_black"
];

//taxi shop - 4
_tx = [
"GLT_M300_LT",
"GLT_M300_ST",
"il_fordcv_taxi",
"tcg_taurus_taxi"
];

//motorcycle shop - 16
_mbs = [
"tcg_hrly",
"tcg_hrly_coco",
"tcg_hrly_demon",
"tcg_hrly_limited",
"tcg_hrly_orig1",
"tcg_hrly_gay",
"tcg_hrly_metal",
"tcg_hrly_orig2",
"tcg_hrly_white",
"tcg_hrly_blue",
"tcg_hrly_red",
"Old_moto_TK_Civ_EP1",
"TT650_TK_CIV_EP1",
"TT650_Ins",
"TT650_Civ",
"ATV_CZ_EP1"
];

///quads - 6
_qbs = [
"cl_quaddescammo",
"cl_green",
"cl_quadred",
"cl_quadsaftysteel",
"cl_quadyellow",
"cl_blue2",
"cl_chark",
"cl_dirtyred"
];

//bikes - 17
_qbss = [
"tcg_aprilia_blue",
"tcg_aprilia_yellow",
"tcg_aprilia_white",
"tcg_aprilia_green",
"tcg_aprilia_red",
"tcg_aprilia_black",
"tcg_aprilia_black_2",
"tcg_aprilia_blue_2",
"tcg_aprilia_blue_4",
"tcg_aprilia_blue_5",
"tcg_aprilia_cyan",
"tcg_aprilia_green_3",
"tcg_aprilia_orange",
"tcg_aprilia_red_1",
"tcg_aprilia_red_2",
"tcg_aprilia_white_2",
"tcg_aprilia_yellow_2"
];

//Truck Shop - 13
_ts = [
"cl_del_mackr",
"cl_trucktest_mackr",
"cl_flatbed_mackr",
"Ural_TK_CIV_EP1",
"V3S_Open_TK_CIV_EP1",
"V3S_TK_EP1",
"UralOpen_CDF",
"KamazOpen",
"Ural_CDF",
"cooter",
"il_towtruck",
"lockpick",
"roadcone"
];

//Sport Truck Shops - 44
_sts = [
"raptor_black",
"raptor_grey",
"raptor_blue",
"raptor_yellow",
"raptor_pink",
"raptor_white",
"raptor_green",
"raptor_red",
"raptor_orange",
"Cherokee_black",
"Cherokee_grey",
"Cherokee_blue",
"Cherokee_yellow",
"Cherokee_pink",
"Cherokee_white",
"Cherokee_green",
"Cherokee_red",
"Cherokee_orange",
"rangerover_black",
"rangerover_blue",
"rangerover_yellow",
"rangerover_pink",
"rangerover_white", 
"rangerover_green",
"rangerover_red",
"rangerover_orange",
"s331_black",
"s331_grey",
"s331_blue",
"s331_yellow",
"s331_pink",
"s331_white",
"s331_green",
"s331_red",
"s331_orange",
"h1_black",
"h1_grey",
"h1_blue",
"h1_yellow",
"h1_pink",
"h1_white",
"h1_green",
"h1_red",
"transit_pink"
];

//Air Shop - 9
_as = [
"An2_1_TK_CIV_EP1",
"An2_2_TK_CIV_EP1",
"USEC_MAULE_M7_STD",
"gnt_piperwii",
"GNT_C185F",
"GNT_C185E",
"GNT_C185R",
"GNT_C185C",
"GNT_C185"
];

//heli - 20
_assa = [
"kyo_ultralight",
"AH6X_EP1",
"CSJ_Gyroc",
"Mi17_Civilian",
"bd5j_civil_3",
"bd5j_civil_2",
"bd5j",
"GazelleUN",
"Gazelle",
"Gazelle1",
"Gazelle3",
"adf_as350",
"ibr_as350_specops",
"ibr_as350_jungle",
"tcg_bell206_3",
"tcg_bell206_4",
"tcg_bell206_2",
"tcg_bell206_5",
"tcg_bell206",
"MH6J_EP1"
];

//commercial - 6
_asc = [
"can_c130",
"airnz_C130",
"luf_c130",
"qantas_C130",
"A320MPA"
];

//Scuba Shop - 6
_sb = [
"fishingpole",
"tcg_wrun",
"tcg_wave_black",
"tcg_wave_red2",
"tcg_wave_sky",
"tcg_wave_red3"
];

//Boat Shop - 17
_bs = [
"fishingpole",
"tcg_wrun",
"tcg_wave_black",
"tcg_wave_red2",
"tcg_wave_sky",
"tcg_wave_red3",
"cl_trawler_fishing_boat",
"cl_sport_fishing_boat",
"Fishing_boat",
"cl_container_boat",
"cl_inflatable",
"PBX","Zodiac",
"Smallboat_1",
"Smallboat_2",
"lcu",
"boatupgrade1",
"boatupgrade2"
];

//boat shop 2 - 13
_bsp = [
"fishingpole",
"boatupgrade1",
"boatupgrade2",
"GNT_C185F",
"GNT_C185E",
"PBX",
"Zodiac",
"tcg_wrun",
"tcg_wave_red",
"tcg_wave_black",
"tcg_wave_red2",
"tcg_wave_sky",
"tcg_wave_red3"
];

//cop boat shop - 6 
_cb = [
"fishingpole",
"JFH_USCG_ZODIAC",
"JFH_USCG_RHIB",
"cl_inflatable",
"tcg_wrun",
"GNTFSF"
];

//Terror Boat Shop - 12
_bt = [
"fishingpole",
"PBX",
"Zodiac",
"cl_trawler_fishing_boat",
"cl_container_boat",
"cl_sport_fishing_boat",
"Fishing_boat",
"cl_inflatable",
"RHIB",
"lcu",
"JMSDF_US2",
"JMSDF_US1"
];

//Jewelry shop - 1
_js = [
"Diamond"
];

//insurance - 1
_ins = [
"bankversicherung"
];

//ESU and FD - 17
_td = [
"firetruck",
"rescue",
"Laddertruck",
"il_kw_tanker",
"suburban_fd",
"il_silverado_pd",
"tcg_suburban_FD",
"ibr_as350",
"il_ambulance",
"il_f350_brush",
"gmc_ambulance",
"roadcone",
"il_barrier",
"roadblock",
"supgrade1",
"supgrade2",
"bjerk"
];

//SUB ESU and SUB FD - 17
_tds = [
"firetruck",
"rescue",
"Laddertruck",
"il_kw_tanker",
"suburban_fd",
"il_silverado_pd",
"tcg_suburban_FD",
"il_ambulance",
"il_f350_brush",
"gmc_ambulance",
"roadcone",
"il_barrier",
"roadblock",
"supgrade1",
"supgrade2",
"SearchLight_UN_EP1",
"bjerk"
];

//Resource Shop - 10
_rs = [
"gold",
"iron",
"steel",
"copper",
"coal",
"diamond rock",
"sand",
"blackpowder",
"wood",
"corn"
];

//Jackos Cheesburgers - 2 
_gds = [
"bread",
"Frozens"
];

//upgrade shop - 3
_gds1 = [
"supgrade1",
"supgrade2",
"reparaturkit"
];

//wigworths - 12
_gds3 = [
"roadblock",
"glt_roadsign_octagon",
"bargate",
"SearchLight_UN_EP1",
"roadcone",
"bunkersmall",
"FlagCarrierUSA",
"FlagCarrierRU",
"FlagCarrierTakistanKingdom_EP1",
"FlagCarrierCzechRepublic_EP1",
"FlagCarrierGermany_EP1",
"FlagCarrierBAF"
];

//Oil Trader/Seller - 2
_os = [
"OilBarrel",
"Oil"
];

//Whale Sale - 1 
_ws = [
"Whale"
];

//Cocaine Sell - 2
_dsc = [
"cocaine",
"cocaineseed"
];

//Marijuana Sell - 2 
_dsm = [
"marijuana",
"marijuanaseed"
];

//LSD Sell - 1 
_dsl = [
"lsd"
];

//Heroin Sell - 2 
_dsh = [
"heroin",
"heroinseed"
];

//pharmacy - 5
_psc = [
"medikit",
"pharm",
"GymMem1",
"GymMem2",
"cl_wheelchair"
];

//oragans - 7
_hsc = [
"eyes",
"brain",
"liver",
"heart",
"kidney",
"bones",
"teeth"
];

//meth - 3
_msc = [
"meth",
"GymMem3",
"GymMem4"
];

//dirty money - 1
_ms = [
"dirtymoney"
];

//Cop Air Shop - 4 
//Littlebird Unarmed, Huey
_ca = [
"MH6J_EP1",
"HH65C",
"OH58g",
"tcg_police_bell206"
];

//Cop Vehicle Shop - 16
_cv = [
"MMT_USMC",
"M1030_US_DES_EP1",
"cl_quadcarbonlight",
"ilpd_beat_f101",
"ilpd_slick_b40_npb",
"ilpd_slick_b40_pb",
"ilpd_cvpi_pool_f101",
"suburban_pd",
"tcg_taurus",
"tcg_taurus_wopb",
"jailbus"
];

//sheriff - 23
_cv1 =[
"MMT_USMC",
"cl_quadcarbonlight",
"M1030_US_DES_EP1",
"tcg_hrlycop",
"tcg_suburban_sheriff",
"tcg_taurus_shpb",
"tcg_taurus_sh",
"ilpd_Traffic_sandstone",
"suburban_pd_sheriff",
"tahoe_sh",
"il_f350sheriff",
"ilpd_slick_f220_npb",
"pd_cvpi",
"RH_m1911old",
"RH_8Rnd_45cal_m1911",
"RH_mk22v",
"RH_8Rnd_9x19_Mk",
"RH_8Rnd_9x19_Mksd",
"M14_EP1",
"20Rnd_762x51_DMR"
];

//STANDARD BOX - 21
_copshop = [
"x26",
"x26_Mag",
"tcg_mossberg",
"tcg_remington",
"8Rnd_B_Beneli_74Slug",
"8Rnd_B_Beneli_Pellets",
"RH_M4r",
"30Rnd_556x45_Stanag",
"Itembag",
"Donut",
"medikit", 
"handy", 
"Binocular",
"Itembag",
"lockpick",
"spikestrip",
"supgrade1",
"supgrade2",
"reparaturkit",
"NVGoggles",
"20Rnd_556x45_Stanag"
];

// DETECTIVE - 21
_copshop2 = [
"RAB_L111A1",
"SmokeShell",
"tcg_remington",
"8Rnd_B_Beneli_74Slug",
"8Rnd_B_Beneli_Pellets",
"RH_usp",
"RH_15Rnd_9x19_usp",
"RH_15Rnd_9x19_uspsd",
"RH_mp5a4eot",
"30rnd_9x19_MP5",
"RH_hk416seotech",
"30Rnd_556x45_Stanag",
"Donut",
"medikit",
"spikestrip",
"lockpick",
"Fuelline",
"reparaturkit",
"Itembag",
"NVGoggles"
];

//PATROL - 10
_copshop_patrol = [
"RAB_L111A1",
"SmokeShell",
"RH_g19",
"RH_19Rnd_9x19_g18",
"RH_p226",
"RH_15Rnd_9x19_usp",
"RH_15Rnd_9x19_uspsd",
"RH_hk416aim",
"30Rnd_556x45_Stanag"
];

//SWAT - 24
_copshop_sobr = [
"RAB_L111A1",
"SmokeShell",
"SWAT",
"Rnd_9x19_M9",
"batter",
"Land_ladder_half",
"M32_EP1",
"6Rnd_Smoke_M203",
"M1014",
"8Rnd_B_Beneli_74Slug",
"8Rnd_B_Beneli_Pellets",
"RH_mp5a4eot",
"30rnd_9x19_MP5",
"RH_ump",
"RH_45ACP_25RND_Mag",
"M24",
"5Rnd_762x51_M24",
"RH_m4meotech",
"RH_M4glaim",
"RH_mk12mod1",
"30Rnd_556x45_Stanag",
"1Rnd_Smoke_M203",
"Stinger",
"Stinger_mag"
];

//SWAT CAR - 9 
_swatcarshop =[
"ilpd_scu_black",
"ilpd_charger_black",
"suburban_pd_black",
"tcg_suburban_uc_black",
"tcg_suburban_uc_white",
"tahoe_uc_black",
"tahoe_uc_white",
"ilf350swat",
"il_bearcat"
];

//TRAFFIC - 11
_trafficshop =[
"roadblock",
"glt_roadsign_octagon",
"bargate",
"SearchLight_UN_EP1",
"roadcone",
"bunkersmall",
"il_barrier",
"danger",
"roadbarrierlong",
"roadbarriersmall",
"bigbagfenceRound"
];

//TRAFFIC CARS - 5 
_trafficcars =[
"ilpd_traffic_t101",
"ilpd_Traffic_black",
"ilpd_Traffic_white",
"tcg_suburban_patrol",
"suburban_pd_stealth"
];

//VICE CARS - 17
_vicecars =[
"MMT_USMC",
"cl_quadcarbonlight",
"tcg_taurus_uc",
"ilpd_charger_black",
"tahoe_uc_1_black",
"tahoe_uc_1_orange",
"tahoe_uc_1_green",
"tahoe_uc_1_pink",
"tahoe_uc_1_maroon",
"ILPD_SCU_S106",
"ilpd_unmarked_black",
"ilpd_unmarked_maroon",
"ilpd_Traffic_grey"
];

// K9 - 2 
_k9cars =[
"suburban_pd_k9",
"tahoe_k9"
];

//TERROR - 16   
_terrorshop = [ 
"NVGoggles",
"RH_oc14",
"RH_20Rnd_9x39_SP6_mag",
"RH_rk95",
"RH_aks47",
"RH_aks47b",
"AK_47_S",
"RH_akm",
"30Rnd_762x39_AK47",
"RH_m14maf",
"20Rnd_762x51_DMR",
"RPG18",
"RPG18_mag",
"Lada2_TK_CIV_EP1",
"GAZ_Vodnik",
"AH6H_EP1"
];

//BARELY LEGAL - 5
_shady =[
"lockpick",
"ziptie",
"burgl",
"codeb",
"lighter"
];

//GANGS - 24
_gangshop_buy = [
"lockpick",
"codeb",
"ziptie",
"burgl",
"lighter",
"Fuelline", 
"medikit",
"Binocular", 
"NVGoggles",
"hideout",
"RH_ppk",
"RH_7Rnd_32cal_ppk",
"RH_mk2",
"RH_10Rnd_22LR_mk2",
"RH_browninghp",
"RH_13Rnd_9x19_bhp",
"RH_vz61",
"RH_20Rnd_32cal_vz61",
"RH_tec9",
"RH_30Rnd_9x19_tec",
"tcg_combat",
"8Rnd_B_Beneli_Pellets",
"KPFS_PM63",
"KPFS_25Rnd_pm"
];

//GANS 2 -23
_gangshop_buy2 = [
"lockpick",
"codeb",
"ziptie",
"burgl",
"lighter",
"Fuelline", 
"medikit",
"Binocular", 
"NVGoggles",
"RH_ppk",
"RH_7Rnd_32cal_ppk",
"RH_mk2",
"RH_10Rnd_22LR_mk2",
"RH_browninghp",
"RH_13Rnd_9x19_bhp",
"RH_vz61",
"RH_20Rnd_32cal_vz61",
"RH_tec9",
"RH_30Rnd_9x19_tec",
"tcg_combat",
"8Rnd_B_Beneli_Pellets",
"KPFS_PM63",
"KPFS_25Rnd_pm"
];

//GANGS3 - 23
_gangshop_buy3 = [
"lockpick",
"codeb",
"ziptie",
"burgl",
"lighter",
"Fuelline", 
"medikit",
"Binocular", 
"NVGoggles",
"RH_ppk",
"RH_7Rnd_32cal_ppk",
"RH_mk2",
"RH_10Rnd_22LR_mk2",
"RH_browninghp",
"RH_13Rnd_9x19_bhp",
"RH_vz61",
"RH_20Rnd_32cal_vz61",
"RH_tec9",
"RH_30Rnd_9x19_tec",
"tcg_combat",
"8Rnd_B_Beneli_Pellets",
"KPFS_PM63",
"KPFS_25Rnd_pm"
];

//GANGS4 - 23
_gangshop_buy4 = [
"lockpick",
"codeb",
"ziptie",
"burgl",
"lighter",
"Fuelline", 
"medikit",
"Binocular", 
"NVGoggles",
"RH_ppk",
"RH_7Rnd_32cal_ppk",
"RH_mk2",
"RH_10Rnd_22LR_mk2",
"RH_browninghp",
"RH_13Rnd_9x19_bhp",
"RH_vz61",
"RH_20Rnd_32cal_vz61",
"RH_tec9",
"RH_30Rnd_9x19_tec",
"tcg_combat",
"8Rnd_B_Beneli_Pellets",
"KPFS_PM63",
"KPFS_25Rnd_pm"
];

//DONATOR - 28
_Donate = [
"donateNVGoggles",
"tcgmp",
"medikit",
"supgrade3",
"donatereparaturkit",
"donateC1987_P99_black",
"donate15Rnd_9x19_p99",
"donateRH_deagles",
"donateRH_7Rnd_50_AE",
"donateRH_kriss",
"donateRH_45ACP_30RND_Mag",
"donateFN_FAL",
"donate20Rnd_762x51_FNFAL",
"donateLeeEnfield",
"donate10x_303",
"il_silverado_selvo",
"tcg_bell206_1",
"FIAT_PUNTO",
"LAMBORGHINI_GALLARDO",
"h1c_black",
"h1c_red",
"h1c_white",
"h1c_grey",
"s331c_black",
"s331c_white",
"s331c_red",
"s331c_grey",
"Da_kart"
];

//MAFIA - 25
_mafia = [
"lockpick",
"ziptie",
"burgl",
"lighter",
"Fuelline", 
"medikit",
"Binocular", 
"NVGoggles",
"RH_tec9maf",
"RH_30Rnd_9x19_tec",
"KPFS_MP2maf",
"RH_muzimaf",
"RH_32Rnd_9x19_Muzi",
"LeeEnfieldmaf",
"10x_303",
"RH_anacmaf",
"RH_6Rnd_44_Mag",
"RH_pythonmaf",
"RH_6Rnd_357_Mag",
"fury",
"tcg_policev",
"CHRYSLER_300",
"CHRYSLER_W_limmo",
"SUV_TK_CIV_EP1",
"ibr_van_BNK"
];

//PMC - 28
_pmc = [
"medikit",
"reparaturkit",
"supgrade1",
"Binocular", 
"NVGoggles",
"ziptie",
"m8pmc",
"100Rnd_556x45_BetaCMag",
"DMR",
"20Rnd_762x51_DMR",
"M4A1pmc",
"M4A3_CCO_EP1",
"30Rnd_556x45_Stanag",
"M24pmc",
"5Rnd_762x51_M24",
"AA12_PMC",
"20Rnd_B_AA12_74slug",
"RH_mp7eot",
"RH_46x30mm_40RND_Mag",
"M60A4_EP1",
"100Rnd_762x51_M240",
"tcg_taurus_security",
"tcg_policev",
"SUV_PMC",
"ArmoredSUV_PMC",
"bread",
"straw",
"tcgmp"
];

//PMC AIR - 3
_pmca1 = [
"MH6J_EP1",
"Ka60_PMC",
"Ka52Black"
];

//PMC AIR 2 - 3 
_pmca2 = [
"MH6J_EP1",
"Ka60_PMC",
"Ka52Black"
];

//NATIONAL GAURD - 24
_milpolice = [
"medikit",
"reparaturkit",
"supgrade1",
"supgrade2",
"Binocular", 
"NVGoggles",
"ziptie",
"UH60M_EP1",
"CH_47F_BAF",
"bread",
"straw",
"tcgmp",
"hmmwv_DES_EP1",
"HMMWV_M1151_M2_DES_EP1",
"Lav25",
"UH1Y",
"M249_EP1",
"200Rnd_556x45_M249",
"LEXX_SCAR_L_CQC_Holo_BLACK",
"30Rnd_556x45_Stanag",
"M4A3_CCO_EP1",
"30Rnd_556x45_Stanag",
"Stinger",
"Stinger_mag"
];

//MP BOAT - 4
_milpoliceb = [
"JFH_USCG_ZODIAC",
"JFH_USCG_RHIB",
"cl_inflatable",
"tcg_wrun"
];

//BOUNTY HUNTER - 15
_bountyshop =[
"tcg_mossberg",
"8Rnd_B_Beneli_74Slug",
"8Rnd_B_Beneli_Pellets",
"ziptie",
"medikit"
];

//COP VIP 4 - 12
_copvip = [
"RH_hk417sp",
"RH_hk417eotech",
"20Rnd_762x51_DMR",
"RH_masbaim",
"30Rnd_556x45_Stanag",
"RH_p90",
"RH_57x28mm_50RND_Mag",
"MakarovSD",
"8Rnd_9x18_MakarovSD",
"suburban_swat",
"m5_pd_traffic",
"UH60M_MEV_EP1"
];

//VIP TERROR - 18
_VIPterror = [
"RH_ar10s",
"RH_20Rnd_762x51_AR10",
"RH_aks47g",
"AK_74_GL_kobra",
"FlareRed_GP25",
"30Rnd_762x39_AK47",
"RH_bizonk",
"64Rnd_9x19_Bizon",
"RH_svdg",
"10Rnd_762x54_SVD",
"AKS_74_GOSHAWK",
"30Rnd_545x39_AK",
"FN_FAL_ANPVS4",
"donate20Rnd_762x51_FNFAL",
"Igla",
"Igla_mag",
"Offroad_DSHKM_TK_GUE_EP1",
"UAZ_MG_TK_EP1"
];

//CG VEHICLE - 2
_cgvehshop = [
"SUV_UN_EP1",
"reparaturkit"
];

//CG AIR - 3
_cgairshop = [
"HH65C",
"UH60M_MEV_EP1",
"MH60S"
];

//CG ARI 2 - 3
_cgairshop2 = [
"HH65C",
"UH60M_MEV_EP1",
"MH60S"
];

//CG BOAT - 7 
_cgboatshop = [
"fishingpole",
"JFH_USCG_ZODIAC",
"JFH_USCG_RHIB",
"RHIB2Turret",
"cl_inflatable",
"tcg_wrun",
"GNTFSF"
];

//CG WEAPONS - 22
_cgweaponsshop = [
"Donut",
"medikit",
"lockpick",
"Fuelline",
"reparaturkit",
"Itembag",
"boatupgrade1",
"boatupgrade2",
"NVGoggles",
"x26",
"x26_Mag",
"tcg_remington",
"8Rnd_B_Beneli_74Slug",
"8Rnd_B_Beneli_Pellets",
"RH_m16a4",
"RH_m16a4aim",
"RH_m16a4acog",
"20Rnd_556x45_Stanag",
"RH_m1seot",
"20Rnd_762x51_DMR",
"ziptie",
"tcgmp"
];

//VIP SHOP - 32
_vip4shoplist = [
"NVGoggles",
"ziptie",
"tcgmp",
"SUV_TK_EP1",
"CORVETTE_C6R",
"suburban_black",
"PAGANI_ZONDA_F",
"m5_c_black",
"ASTON_MARTIN_DBR9",
"rangeroverc_black",
"rangeroverc_white",
"rangeroverc_grey",
"rangeroverc_red",
"MH6J_EP1",
"MV22",
"ibr_as350_jungle",
"GazelleD",
"Land_HBarrier_large",
"Land_Fort_Watchtower",
"Land_fortified_nest_big",
"Land_fort_bagfence_corner",
"Land_fort_bagfence_long",
"Land_fort_bagfence_round",
"Fort_RazorWire",
"Fort_Barricade",
"Hedgehog",
"Hhedgehog_concrete",
"Land_Misc_deerstand",
"Land_CamoNetB_NATO",
"Land_CamoNetVar_NATO",
"Land_CamoNet_NATO",
"Land_GuardShed"
];

//VIP AIR - 2 
_vipterrorairlist = [
"An2_TK_EP1",
"UH1H_TK_EP1"
];

//COP JET SHOP - 1
_copjetshop = [
"L39_TK_EP1"
];

//ADMIN SHOP - 21
_adminmisc =[
"Land_HBarrier_large",
"Land_Fort_Watchtower",
"Land_fortified_nest_big",
"Land_fort_bagfence_corner",
"Land_fort_bagfence_long",
"Land_fort_bagfence_round",
"Fort_RazorWire",
"Fort_Barricade",
"Hedgehog",
"Hhedgehog_concrete",
"Land_Misc_deerstand",
"Land_CamoNetB_NATO",
"Land_CamoNetVar_NATO",
"Land_CamoNet_NATO",
"Land_GuardShed",
"fernzuenderbombe",
"zeitzuenderbombe",
"aktivierungsbombe",
"geschwindigkeitsbombe",
"selbstmordbombe",
"fernzuender"
];

//_adminshop =[
//"BRDM2_ATGM_TK_EP1",
//"BRDM2_HQ_TK_GUE_EP1",
//"BRDM2_TK_EP1",
//"BTR40_MG_TK_GUE_EP1",
//"BTR40_MG_TK_INS_EP1",
//"BTR60_TK_EP1",
//"GRAD_TK_EP1",
//"Ural_ZU23_TK_EP1",
//"UralReammo_TK_EP1",
//"UralRefuel_TK_EP1",
//"UralRepair_TK_EP1",
//"Mi24_D_TK_EP1",
//"Mi17_rockets_RU",
//"HMMWV_Avenger_DES_EP1",
//"HMMWV_M998_crows_MK19_DES_EP1",
//"HMMWV_M998_crows_M2_DES_EP1",
//"HMMWV_TOW_DES_EP1",
//"HMMWV_M998A2_SOV_DES_EP1",
//"HMMWV_M1151_M2_CZ_DES_EP1",
//"M1126_ICV_M2_EP1",
//"M1126_ICV_mk19_EP1",
//"M1128_MGS_EP1",
//"M1129_MC_EP1",
//"M1130_CV_EP1",
//"M1133_MEV_EP1",
//"M1135_ATGMV_EP1",
//"MtvrReammo_DES_EP1",
//"MtvrRefuel_DES_EP1",
//"MtvrRepair_DES_EP1",
//"AH1Z",
//"AH6J_EP1",
//"AH64D_EP1"
//];

//UN BASIC - 8
_unbasic =[
"UAZ_Unarmed_UN_EP1",
"SUV_TK_CIV_EP1",
"Ural_UN_EP1",
"HMMWV",
"HMMWV_Armored",
"M113Ambul_UN_EP1",
"M113_UN_EP1",
"Mi17_UN_CDF_EP1"
];

//UN WEAPONS - 17
_unweapons =[
"x26",
"x26_Mag",
"BAF_L85A2_RIS_ACOG",
"BAF_L85A2_RIS_CWS",
"BAF_L85A2_RIS_Holo",
"BAF_L85A2_UGL_ACOG",
"BAF_L85A2_UGL_Holo",
"30Rnd_556x45_Stanag",
"FlareGreen_M203",
"FlareRed_M203",
"FlareWhite_M203",
"FlareYellow_M203",
"BAF_L110A1_Aim",
"200Rnd_556x45_L110A1",
"reparaturkit",
"ziptie",
"medikit",
"tcgmp"
];

// PIRATE - 7 
_pirategearshop =[
"fishgun",
"boatammo",
"big_boat",
"smallboat_1",
"smallboat_2",
"tcg_wave_red",
"boatupgrade1"
];

//paintball 14
_pb = [
"cal68_angel_dye",
"cal68_angel_rasta",
"cal68_angel_kitty",
"cal68_invert_mini_dye",
"cal68_egosl",
"cal68_brass_n",
"cal68_pumpe",
"cal68_15FP",
"cal68_50FP",
"cal68_150FP",
"cal68_50PP",
"cal68_150PP",
"cal68_100PP1",
"cal68_100PP2"
];

//Bus Shop 3
_bss = [
"schoolbus",
"Ikarus_TK_CIV_EP1",
"Ikarus"
];

//ManDudes Hosue Shop
_tmdhs = [
"ziptie",
"Donut",
"supgrade3",
"medikit",
"donatereparaturkit",
"donateLeeEnfield",
"donate10x_303",
"Huntingrifle",
"5x_22_LR_17_HMR",
"tcg_combat",
"Rnd_B_Beneli_Pellets"
];

_tmdcs = [
"tahoe_pink",
"h1_pink",
"transit_pink",
"V3S_Open_TK_CIV_EP1",
"h1_black",
"transit_black",
"MV22"
];

_cavhs = [
"supgrade1",
"supgrade2",
"supgrade3",
"medikit",
"donatereparaturkit",
"donateLeeEnfield",
"donate10x_303",
"Huntingrifle",
"5x_22_LR_17_HMR",
"RH_uspm",
"RH_15Rnd_9x19_usp",
"RH_m14maf",
"20Rnd_762x51_DMR",
"donateRH_kriss",
"donateRH_45ACP_30RND_Mag"
];

_cavcs = [
"il_silverado_selvo",
"il_silverado_white",
"il_charger_black",
"h1c_black",
"MH6J_EP1"
];

INV_ItemShops = [
[fuelshop1,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],
[fuelshop2,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],
[fuelshop3,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],
[fuelshop4,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],
[fuelshop5,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],
[fuelshop6,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],
[fuelshop7,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],
[fuelshop8,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],
[fuelshop9,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],

[shop1,"Food Shop",dummyobj,dummyobj,_is,_is,true],
[shop2,"Food Shop",dummyobj,dummyobj,_is,_is,true],
[shop4,"Food Shop",dummyobj,dummyobj,_is,_is,true],

[pub0,"Pub",dummyobj,dummyobj,_pub,_pub,true],
[pub1,"Pub",dummyobj,dummyobj,_pub,_pub,true],
[pub2,"Pub",dummyobj,dummyobj,_pub,_pub,true],
[pub3,"Pub",dummyobj,dummyobj,_pub,_pub,true],
[pub4,"Pub",dummyobj,dummyobj,_pub,_pub,true],

[gundealer1,"Firearms Dealer",gunbox2,dummyobj,_gss,_gss,true],

[assassinshop,"Assassin Shop",assassinshop,dummyobj,_ass,_ass,true],

[mayorguns,"Government Equip Shop",mayorguns,mayorcarspawn,_mgs,_mgs,true],

[vending2,"Outdoor Shop",vending2,dummyobj,_fs2,_fs2,true],

[tuning1,"Car Upgrades",dummyobj,dummyobj,_cu,_cu,true],

[carshop1,"Used Cars",dummyobj,carspawn1,_cs1,_cs1,true],
[carshop2,"Farm Equipment",dummyobj,carspawn2,_cs2,_cs2,false],

[scarshop,"Muscle Car Shop",dummyobj,scarspawn1,_sc1,_sc1,true],
[scarshop2,"Charger and Mazda",dummyobj,scarspawn2,_sc2,_sc2,true],
[scarshop3,"Low End Sports",dummyobj,scarspawn3,_sc3,_sc3,true],
[scarshop4,"Mid Level Sports",dummyobj,scarspawn4,_sc4,_sc4,true],
[scarshop5,"High End Sports",dummyobj,scarspawn5,_sc5,_sc5,true],
[scarshop6,"Nissan Car Shop",dummyobj,scarspawn6,_sc6,_sc6,true],
[scarshop7,"350z Car Shop",dummyobj,scarspawn7,_sc7,_sc7,true],
[scarshop8,"Ford Car Shop",dummyobj,scarspawn8,_sc8,_sc8,true],
[scarshop9,"BMW Car Shop",dummyobj,scarspawn9,_sc9,_sc9,true],
[tahoeshop1,"Tahoe Shop",dummyobj,tahoespawn1,_tahoe,_tahoe,true],
[pickupshop1,"Pickup Shop",dummyobj,pickupspawn1,_ps,_ps,true],

[taxishop,"Taxi Shop",dummyobj,taxispawn1,_tx,_tx,true],

[bikeshop,"Mikes Bike Shop",dummyobj,bikespawn,_mbs,_mbs,true], 
[bikeshop1,"Quad Bike Shop",dummyobj,bikespawn1,_qbs,_qbs,true],
[bikeshop2,"Sports Bike Shop",dummyobj,bikespawn1,_qbss,_qbss,true],

[truckshop,"Truck and Bus Shop",dummyobj,truckspawn,_ts,_ts,true],
[struckshop,"Sport Truck Shop",dummyobj,struckspawn,_sts,_sts,true],

[airshop,"Airplane Shop",dummyobj,asairspawn,_as,_as,true],
[airshop2,"Chopper and Jet Shop",dummyobj,asairspawn,_assa,_assa,true],
[airshop3,"Commercial Air Shop",dummyobj,asairspawn1,_asc,_asc,true],
[airshop4,"Chopper and Jet Shop",dummyobj,asairspawn2,_assa,_assa,true],

[scubashop, "Jetski Shop",dummyobj,boatspawn5,_sb,_sb,true],	
[boatshop2, "Boat Shop",dummyobj,boatspawn2,_bs,_bs,true],
[boatshop4, "Sea Plane Shop",dummyobj,boatspawn4,_bs,_bs,true],
[tboatshop1,"Boat Shop",dummyobj,tboatspawn1,_bt,_bt,true],
[bsshop1, "Boat Shop",dummyobj,bs1spawn,_bs,_bs,true],

[insure,"Insurance",insure,dummyobj,_ins, _emptyshop,false],

[workplace_getjobflag_4,"FFG Imporium",dummyobj,dummyobj,_gds1,_gds1,true],
[workplace_getjobflag_6,"Wigworths",dummyobj,dummyobj,_gds3,_gds3,true],

[equipbox,"Equipment Shop",equipbox,dummyobj,_es,_es,true],

[tdoc,"Fire Rescue Equipment",dummyobj,tdocspawn,_td,_td,true],
[tsub,"Fire Rescue Equipment",dummyobj,tsubspawn,_tds,_tds,true],

[cheeseburger,"Jackos Cheeseburgers",dummyobj,dummyobj,_gds,_gds,true],

[OilSell1,"Oil Dealer", dummyobj,dummyobj, _emptyshop,_os,true],

[resourcesell,"Sell Resources",dummyobj,dummyobj,_rs,_rs,true],

[terrorbox,"Black Market",terrorbox,terrorshopvh,_terrorshop,_terrorshop,true],

[shadyd,"Barely Legal",shadyd,dummyobj, _shady,_shady,true],

[gangarea1,"Gang Shop",gangbox1,dummyobj,_gangshop_buy,_gangshop_buy,false],
[gangarea2,"Gang Shop",gangbox2,dummyobj,_gangshop_buy2,_gangshop_buy2,false],
[gangarea3,"Gang Shop",gangbox3,dummyobj,_gangshop_buy3,_gangshop_buy3,false],																	
[gangarea4,"Gang Shop",gangbox4,dummyobj,_gangshop_buy4,_gangshop_buy4,false],											

[cdrugsell,"Sell Cocaine",dummyobj,dummyobj,_dsc,_dsc,true],
[mdrugsell,"Sell marijuana",dummyobj,dummyobj,_dsm,_dsm,true],
[ldrugsell,"Sell LSD",dummyobj,dummyobj,_emptyshop,_dsl,true],
[hdrugsell,"Sell Heroin",dummyobj,dummyobj,_dsh,_dsh,true],
[methsell,"Sell Meth",dummyobj,dummyobj,_msc,_msc,true],
[whalesell,"Sell Whale",dummyobj,dummyobj,_emptyshop,_ws,true],	
[moneysell,"Dirty Money Trader",dummyobj,dummyobj,_emptyshop,_ms,true],

[pharmacy,"Pharmacy",dummyobj,pharmspawn,_psc,_emptyshop,false],

[copair,"Police Aircraft",dummyobj, cairspawn,_ca,_ca,true],
[copcar,"Police Vehicles",dummyobj, ccarspawn,_cv,_cv,true],
[copcar1,"Sheriff Vehicles and Rifles",copsheriff, ccarspawn1,_cv1,_cv1,true],
[copbasic,"Basic Police Gear",copbasic,dummyobj, _copshop,_copshop,false],
[coppatrol,"Patrol Officer Gear",coppatrol,coppatrols,_copshop_patrol,_copshop_patrol,true],
[copsheriff,"Sheriffs Department Gear",copsheriff,dummyobj, _copshop,_copshop,false],
[copswat,"SWAT Equipment",copswat,dummyobj,_copshop_sobr,_copshop_sobr,true],
[copbasic2,"Vice Unit Equipment",copbasic2,dummyobj, _copshop2,_copshop2,false],
[copswatcars,"SWAT Vehicles",dummyobj,ccarspawnswat,_swatcarshop,_swatcarshop,true],
[coptraffic,"Traffic Division Equipment",coptraffic,dummyobj,_trafficshop,_trafficshop,true],
[coptrafficcars,"Traffic Division Vehicles",dummyobj,ctrafficspawn,_trafficcars,_trafficcars,true],
[copvicecars,"Vice Unit Vehicles",dummyobj,ccarspawn2,_vicecars,_vicecars,true],
[copk9cars,"K9 Unit Vehicles",dummyobj,ck9spawn,_k9cars,_k9cars,true],
//[copair1,"Cop Jet Shop",copair1,copair1aspawn,_copjetshop,_copjetshop,true],

[donatebuy,"Donators Shop",maindonateshop,maindonatespawn,_Donate,_Donate,true],

[milp,"Rifle & Vehicle shop",milp,milps,_milpolice,_milpolice,true],
[milpb,"Boat shop",milpb,milpsb,_milpoliceb,_milpoliceb,true],

[tow,"Tow truck shop",tow,towv,_tows,_tows,true],

[pmc,"Rifle & Vehicle shop",pmc,pmcv,_pmc,_pmc,true],
[pmcair1,"Air Vehicle Shop",pmcair1,pmca1,_pmca1,_pmca1,true],
[pmcair2,"Air Vehicle Shop",pmcair2,pmca2,_pmca2,_pmca2,true],

[cgvehshop,"Coast Guard Ground Vehicles",cgvehshop,cgvehspawn,_cgvehshop,_cgvehshop,true],
[cgairshop,"Coast Guard Air Vehicles",cgairshop,cgairspawn,_cgairshop,_cgairshop,true],
[cgairshop2,"Coast Guard Air Vehicles",cgairshop2,cgairspawn2,_cgairshop2,_cgairshop2,true],
[cgboatshop,"Coast Guard Water Vehicles",cgboatshop,cgboatspawn,_cgboatshop,_cgboatshop,true],
[cgweapons,"Coast Guard Weapons and Items",cgweapons,cgairspawn,_cgweaponsshop,_cgweaponsshop,true],

[Diamond_1,"Pawn Shop",dummyobj,dummyobj,_js,_js,true],

[vipterrorair,"VIP4 Black Market Air Shop",vipterrorair,vipterroraswpawn,_vipterrorairlist,_vipterrorairlist,true],

[VIP1,"VIP4 SHOP",VIP1,vipcar,_vip4shoplist,_vip4shoplist,true],
[VIPcop,"Police VIP Shop",VIPcop,VIPcopcarspawn,_copvip,_copvip,true],
[terrorvip,"Black Market VIP Stuff",terrorvip,VIPterrorcarspawn,_VIPterror,_VIPterror,true],

[hospsell,"Sell Organs",dummyobj,dummyobj,_hsc,_hsc,true],

[adminmisc, "Admin Fortifications Shop",dummyobj,adminmiscshop,_adminmisc,_adminmisc,true],
[adminshop, "Admin Vehicle Shop",adminshop,adminshopspawn,_adminshop,_adminshop,true],

[unbasic, "United Nations Vehicle Shop",unbasic,unVehiclespawn,_unbasic,_unbasic,true],
[unweapons, "United Nations Weapons Shop",unweapons,unweapons,_unweapons,_unweapons,true],

[civspwncarshop1,"Used Cars",dummyobj,civcarspawn1,_cs1,_cs1,true],
[civspwncarshop2,"Used Cars",dummyobj,civcarspawn2,_cs1,_cs1,true],

[bhunt,"Bounty Hunter Shop",bhunt,dummyobj,_bountyshop,_bountyshop,true],

[pirategearbox,"Piracy Gear",pirategearbox,pirateboatspawn,_pirategearshop,_pirategearshop,true],

[paintballs,"Paint Ball Shop",paintballbox,dummyobj,_pb,_pb,false],

[busshop,"Tour Bus Shop",dummyobj,busspawn,_bss,_bss,true],

//Super Donator Housing
[tmdgshop,"House Shop",tmdgshop,dummyobj,_tmdhs,_tmdhs,true],
[tmdcshop,"House Car Shop",dummyobj,tmdcspawn,_tmdcs,_tmdcs,true],
[cavgshop,"House Shop",cavgshop,dummyobj,_cavhs,_tmdhs,true],
[cavcshop,"House Car Shop",dummyobj,cavcspawn,_cavcs,_tmdcs,true]
];
