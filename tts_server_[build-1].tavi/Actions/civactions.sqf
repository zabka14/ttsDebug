_role = player;
//action1 = _role addaction ["Test","test.sqf",[1],1,false,true,"",""];
action2 = _role addaction ["Fourniture FAQ","furniturehelp.sqf",[1],1,false,true,"","player distance workplace_getjobflag_5 <= 5"];
action2a = _role addaction ["Comment jouer au Paintball","pbhelp.sqf",[1],1,false,true,"","player distance paintballbox <= 30"];
//========================   HOSTAGE  ================================================
action3 = _role addaction ["Mission de Prise d'Otage","hostage.sqf",["getajob_hostage"],1,false,true,"","player distance hostage <= 3 and isciv"];
action4 = _role addaction ["Prendre en otage", "noscript.sqf", "[hostage1] join (group player); player groupchat ""Garder l'otage près de vous ou vous échouerez!"";",1,false,true,"","player distance hostage1 < 5"];
//==================================== GANG MENU ======================================================
action5 = _role addaction ["Menu de Gang","maindialogs.sqf",["gangmenu"],1,false,true,"","player distance rathaus <= 3 and isciv"];
//====================================== BANK ROB =====================================================
action6 = _role addaction ["Voler le Coffre-Fort","bankrob.sqf", ["ausrauben", safe1, "safe1"],1,false,true,"","Safecracked1 and isciv and player distance Safe1 <= 2"];
action7 = _role addaction ["Crocheter le Coffre-Fort", "CrackSafe.sqf",["safe1"],1,false,True,"","not SafeCracked1 and isciv and player distance Safe1 <= 2"];
/*
action8 = _role addaction ["Steal from safe 2","bankrob.sqf", ["ausrauben", safe2, "safe2"],1,false,true,"","Safecracked2 and isciv and player distance Safe2 <= 2"];
action9 = _role addaction ["Crack Safe 2", "CrackSafe.sqf",["safe2"],1,false,True,"","not SafeCracked2 and isciv and player distance Safe2 <= 2"];
action10 = _role addaction ["Steal from safe 3","bankrob.sqf", ["ausrauben", safe3, "safe3"],1,false,true,"","Safecracked3 and isciv and player distance Safe3 <= 2"];
action11 = _role addaction ["Crack Safe 3", "CrackSafe.sqf",["safe3"],1,false,True,"","not SafeCracked3 and isciv and player distance Safe3 <= 2"];
*/
//=======================   ADMIN CAMERA ==============================================
action12 = _role addaction ["Admin Spectate","tcgcode.sqf",[1],1,false,true,"","player distance rubblepile <= 3"];
//action12a = _role addaction ["AntiClown","servermissionfile\umad.sqf";,[1],1,false,true,"","player distance rubblepile <= 3"];
//===================================== ASSASSINATION =================================================
action13 = _role addaction ["Prendre le Métier d'Assassin ","assassination.sqf",["getajob_assassin"],1,false,true,"","player distance assassin <= 3 and isciv"];
//========================================= HUNTING ===================================================
action15 = _role addaction ["Récupérer de la Viande de Sanglier","noscript.sqf",'_no = ceil(random 7);if (((call INV_GetOwnWeight) + ("boar" call INV_getitemTypeKg)*_no) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};(nearestobjects [getpos player, ["wildboar"],  3] select 0) setvariable ["inuse", 1, true]; player playmove "AinvPknlMstpSlayWrflDnon_medic";sleep 4;waituntil {animationstate player != "AinvPknlMstpSlayWrflDnon_medic"};deletevehicle (nearestobjects [getpos player, ["wildboar"],  3] select 0);["boar", _no] call INV_AddInvItem;player groupchat format["Vous avez récupéré %1 Viande(s) de Sanglier(s)", _no];',1,true,true,"",'_w = (nearestobjects [getpos player, ["wildboar"],  3] select 0) getvariable "inuse"; isnil "_w" and player distance (nearestobjects [getpos player, ["wildboar"],  3] select 0) < 5 and !alive (nearestobjects [getpos player, ["wildboar"],  3] select 0) and isciv'];
action16 = _role addaction ["Récupérer de la Viande de Vache","noscript.sqf",'_no = ceil(random 2);if (((call INV_GetOwnWeight) + ("rawcow" call INV_getitemTypeKg)*_no) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};(nearestobjects [getpos player, ["cow01"],  3] select 0) setvariable ["inuse", 1, true]; player playmove "AinvPknlMstpSlayWrflDnon_medic";sleep 4;waituntil {animationstate player != "AinvPknlMstpSlayWrflDnon_medic"};deletevehicle (nearestobjects [getpos player, ["cow01"],  3] select 0);["rawcow", _no] call INV_AddInvItem;player groupchat format["Vous avez récupéré %1 Viande(s) de Vache(s)", _no];',1,true,true,"",'_w = (nearestobjects [getpos player, ["cow01"],  3] select 0) getvariable "inuse"; isnil "_w" and player distance (nearestobjects [getpos player, ["cow01"],  3] select 0) < 5 and !alive (nearestobjects [getpos player, ["cow01"],  3] select 0) and isciv'];
//===================================== TARGET RESET ==================================================
action17 = _role addaction ["Réinitialisation des Cibles","noscript.sqf",'{_x animate["terc",0]} foreach (nearestobjects [getpos player, ["TargetEpopup"],  500])',1,true,true,"",'player distance targetrange1 < 10'];
action18 = _role addaction ["Réinitialisation des Cibles","noscript.sqf",'{_x animate["terc",0]} foreach (nearestobjects [getpos player, ["TargetEpopup"],  500])',1,true,true,"",'player distance targetrange2 < 10'];
//===================================== IMPOUND AREA==================================================
action19 = _role addaction ["Fourrière","maindialogs.sqf",["impound"],1,false,true,"","player distance impoundbuy <= 5"];
//======================== Rob Bus ============================================
busaction1 = _role addaction ["Braquer le Chauffeur du Bus ","specialveh.sqf",["Cicada Busline"],1,false,true,"","player distance bus1 <= 5 and !iscop"];
busaction2 = _role addaction ["Prendre le Bus","specialveh.sqf",["busgetin"],1,false,true,"","player distance bus1 <= 5"];
//==================================== OBJECT ACTIONS =================================================
action13 = _role addaction ["Monter l'Ascenseur","elevator.sqf",[1],1,false,true,"",'player distance getmarkerpos "elevator1" <= 5'];
action13a = _role addaction ["Descendre l'Ascenseur","elevator.sqf",[2],1,false,true,"",'player distance elevator2 <= 5'];
action21 = _role addaction ["Enlever le Banc","noscript.sqf",'if (((call INV_GetOwnWeight) + ("Land_Bench_EP1" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};
etevehicle (nearestobjects [getpos player, ["Land_Bench_EP1"],  3] select 0);["Land_Bench_EP1", 1] call INV_AddInvItem;player groupchat "you picked up a washing machine";',1,true,true,"",'player distance (nearestobjects [getpos player, ["Land_Bench_EP1"],  3] select 0) < 1.25'];
action22 = _role addaction ["Prendre un Vêtement de Plonger","noscript.sqf",'if (((call INV_GetOwnWeight) + ("gnt_scubaw" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["gnt_scubaw"],  10] select 0);["gnt_scubaw", 1] call INV_AddInvItem;player groupchat "you picked up scuba gear";',1,true,true,"",'player distance (nearestobjects [getpos player, ["gnt_scubaw"],  10] select 0) < 5'];
action23 = _role addaction ["Enlever le Cabinet","noscript.sqf",'if (((call INV_GetOwnWeight) + ("Land_Cabinet_EP1" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["Land_Cabinet_EP1"],  3] select 0);["Land_Cabinet_EP1", 1] call INV_AddInvItem;player groupchat "you picked up a Cabinet";',1,true,true,"",'player distance (nearestobjects [getpos player, ["Land_Cabinet_EP1"],  3] select 0) < 1.25'];
action24 = _role addaction ["Enlever le Tapis","noscript.sqf",'if (((call INV_GetOwnWeight) + ("Land_Carpet_EP1" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["Land_Carpet_EP1"],  3] select 0);["Land_Carpet_EP1", 1] call INV_AddInvItem;player groupchat "you picked up a Carpet";',1,true,true,"",'player distance (nearestobjects [getpos player, ["Land_Carpet_EP1"],  3] select 0) < 1.25'];
action25 = _role addaction ["Enlever le Coffre","noscript.sqf",'if (((call INV_GetOwnWeight) + ("Land_Chest_EP1" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["Land_Chest_EP1"],  3] select 0);["Land_Chest_EP1", 1] call INV_AddInvItem;player groupchat "you picked up a Chest";',1,true,true,"",'player distance (nearestobjects [getpos player, ["Land_Chest_EP1"],  3] select 0) < 1.25'];
action26 = _role addaction ["Remove Small Tbl","noscript.sqf",'if (((call INV_GetOwnWeight) + ("Land_stand_small_EP1" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["Land_stand_small_EP1"],  3] select 0);["Land_stand_small_EP1", 1] call INV_AddInvItem;player groupchat "you picked up a Small Tbl";',1,true,true,"",'player distance (nearestobjects [getpos player, ["Land_stand_small_EP1"],  3] select 0) < 1.25'];
action27 = _role addaction ["Enlever la Table","noscript.sqf",'if (((call INV_GetOwnWeight) + ("Land_Table_EP1" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["Land_Table_EP1"],  3] select 0);["Land_Table_EP1", 1] call INV_AddInvItem;player groupchat "you picked up a Table";',1,true,true,"",'player distance (nearestobjects [getpos player, ["Land_Table_EP1"],  3] select 0) < 1.25'];
action28 = _role addaction ["Enlever le Cône","noscript.sqf",'if (((call INV_GetOwnWeight) + ("roadcone" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["Land_coneLight"],  3] select 0);["roadcone", 1] call INV_AddInvItem;player groupchat "you picked up a road cone";',1,true,true,"",'player distance (nearestobjects [getpos player, ["Land_coneLight"],  3] select 0) < 5'];
action29 = _role addaction ["Enlever la Télé","noscript.sqf",'if (((call INV_GetOwnWeight) + ("SmallTV" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["SmallTV"],  3] select 0);["SmallTV", 1] call INV_AddInvItem;player groupchat "you picked up a barracade";',1,true,true,"",'player distance (nearestobjects [getpos player, ["SmallTV"],  3] select 0) < 1.25'];
action30 = _role addaction ["Ouvrir/Fermer la Barrière","noscript.sqf",'_gate = (nearestobjects [getpos player, ["ZavoraAnim"],  10] select 0); if(_gate animationPhase "bargate" == 1)then{_gate animate ["bargate", 0]}else{_gate animate ["bargate", 1]};',1,true,true,"",'player distance (nearestobjects [getpos player, ["ZavoraAnim"],  10] select 0) < 7 and isciv'];
action31 = _role addaction ["Enlever la Table Pliante","noscript.sqf",'if (((call INV_GetOwnWeight) + ("FoldTable" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["FoldTable"],  3] select 0);["FoldTable", 1] call INV_AddInvItem;player groupchat "you picked up a barracade";',1,true,true,"",'player distance (nearestobjects [getpos player, ["FoldTable"],  3] select 0) < 1.25'];
action32 = _role addaction ["Enlever la Petite Table","noscript.sqf",'if (((call INV_GetOwnWeight) + ("SmallTable" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["SmallTable"],  3] select 0);["SmallTable", 1] call INV_AddInvItem;player groupchat "you picked up a barracade";',1,true,true,"",'player distance (nearestobjects [getpos player, ["SmallTable"],  3] select 0) < 1.25'];
action35 = _role addaction ["Récupérer un Organes ILLÉGAL","bodypart.sqf",'',1,true,true,"",'player distance (nearestobjects [getpos player, ["body"],  3] select 0) < 2'];
action36 = _role addaction ["Enlever la Fenêtre Barricadé","noscript.sqf",'if (((call INV_GetOwnWeight) + ("Fence_corrugated_plate" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["Fence_corrugated_plate"],  3] select 0);["Fence_corrugated_plate", 1] call INV_AddInvItem;player groupchat "you picked up a barracade";',1,true,true,"",'player distance (nearestobjects [getpos player, ["Fence_corrugated_plate"],  3] select 0) < 1'];
action37 = _role addaction ["Enlever la Chaise Pliante","noscript.sqf",'if (((call INV_GetOwnWeight) + ("FoldChair" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["FoldChair"],  3] select 0);["FoldChair", 1] call INV_AddInvItem;player groupchat "you picked up a folding chair";',1,true,true,"",'player distance (nearestobjects [getpos player, ["FoldChair"],  3] select 0) < 1.25'];
action38 = _role addaction ["Enlever la Chaise","noscript.sqf",'if (((call INV_GetOwnWeight) + ("Land_Chair_EP1" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["Land_Chair_EP1"],  3] select 0);["Land_Chair_EP1", 1] call INV_AddInvItem;player groupchat "you picked up a chair";',1,true,true,"",'player distance (nearestobjects [getpos player, ["Land_Chair_EP1"],  3] select 0) < 1.25'];
action39 = _role addaction ["Enlever la Poubelle","noscript.sqf",'if (((call INV_GetOwnWeight) + ("Garbage_can" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["Garbage_can"],  3] select 0);["Garbage_can", 1] call INV_AddInvItem;player groupchat "you picked up a garbage can";',1,true,true,"",'player distance (nearestobjects [getpos player, ["Garbage_can"],  3] select 0) < 1.25'];
action40 = _role addaction ["Enlever la Machine à Laver","noscript.sqf",'if (((call INV_GetOwnWeight) + ("MAP_washing_machine" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["MAP_washing_machine"],  3] select 0);["MAP_washing_machine", 1] call INV_AddInvItem;player groupchat "you picked up a washing machine";',1,true,true,"",'player distance (nearestobjects [getpos player, ["MAP_washing_machine"],  3] select 0) < 1.25'];
//==================================== MAYOR ELECTION =================================================
action45 = _role addaction ["Élire un Gouverneur","maindialogs.sqf",["wahlen"],1,false,true,"","player distance rathaus <= 3"];
//===================================== MAYOR ACTIONS =================================================
action46 = _role addaction ["Changer une Lois","maindialogs.sqf",["gesetz"],1,false,true,"","player distance rathaus <= 3 and isMayor"];
action47 = _role addaction ["Changer les Taxes","maindialogs.sqf",["steuern"],1,false,true,"","player distance rathaus <= 3 and isMayor"];
//===================================== CONVOY CASH ===================================================
//action48 = _role addaction ["Rob Bank Truck","noscript.sqf",'convoyhascash=false; publicvariable "convoyhascash"; _cash = (playersNumber west)*20000; ["geld", _cash] call INV_AddInvItem; player groupchat format["You stole %1$!", _cash];',1,false,true,"","_driver = driver convoytruck; player distance convoytruck <= 7 and convoyhascash and isciv and (!alive _driver or isnull _driver) and (call INV_isArmed)"];
//===================================== BUY INSURANCE ===================================================
//action49 = _role addaction [format["Buy Bank Insurance (%1$)", ("bankversicherung" call INV_getitemBuyCost)],"noscript.sqf",'if("geld" call INV_GetItemAmount < ("bankversicherung" call INV_getitemBuyCost))exitwith{player groupchat "not enough money"};["geld", -("bankversicherung" call INV_getitemBuyCost)] call INV_AddInvItem;["bankversicherung", 1] call INV_AddInvItem;player groupchat format["you bought bank insurance for %1$", ("bankversicherung" call INV_getitemBuyCost)];',1,false,true,"","player distance dmv <= 3"];
//======================================= CRIMELOG ====================================================
action50 = _role addaction ["Registre des Crimes","maindialogs.sqf",["coplog"],1,false,true,"","player distance rathaus <= 3"];
//======================================== SLAVES =====================================================
//action49 = _role addaction [format ["Buy Slave (%1$)", slave_cost],"slaves.sqf", ["slave"],1,false,true,"","player distance boatshop3 <= 5 and isciv"];
//==================================== PRIVATE STORAGE ================================================
//action50 = _role addaction ["Private storage (saved)","storage.sqf",["private_storage", "save"],1,false,true,"","player distance storage < 7"];
//========================================= BAIL ======================================================	 
action51 = _role addaction [format ["Payer la Caution", slave_cost],"maindialogs.sqf", ["bail"],1,false,true,"","player distance bailflag <= 3 and isciv"];
//===================================== ITEM PROCESS ==================================================	 
action52 = _role addaction ["Traiter le Bois","itemprocess.sqf",["wood", "tbfour", 2, ""],1,false,true,"","player distance wood_1 <= 5 and isciv"];
action53 = _role addaction ["Traiter le Diamant","itemprocess.sqf",["diamond rock", "diamond", 5, ""],1,false,true,"","player distance diamond_1 <= 5 and isciv"];
action54 = _role addaction ["Traiter la Meth","itemprocess1.sqf",["pharm", "meth", 2, ""],1,false,true,"","player distance methlab <= 5 and isciv"];
action55 = _role addaction ["Traiter le Pétrole","itemprocess.sqf",["Oil", "OilBarrel", 2, "oil"],1,false,true,"","player distance Oil_1 <= 5 and isciv"];
action56 = _role addaction ["Traiter le Blé","itemprocess.sqf",["getreide", "Bread", 2, "Baker"],1,false,true,"","player distance bakery <= 5 and isciv"];
action57 = _role addaction ["Traiter les Fraises","itemprocess.sqf",["straw", "Frozens", 3, "Baker"],1,false,true,"","player distance bakery <= 5 and isciv"];
//ga1
action58 = _role addaction ["Traiter le LSD","itemprocess.sqf",["Unprocessed_LSD", "lsd", 5, "lsd ga1"],1,false,true,"","_control = gangarea1 getvariable ""control"";!isnil ""_control"" and player distance gangarea1 <= 5 and (_control == (call INV_mygang))"];
action59 = _role addaction ["Traiter la Cocaïne","itemprocess.sqf",["Unprocessed_Cocaine", "cocaine", 5, "cocaine ga1"],1,false,true,"","_control = gangarea1 getvariable ""control"";!isnil ""_control"" and player distance gangarea1 <= 5 and (_control == (call INV_mygang))"];
//ga2
action60 = _role addaction ["Traiter le LSD","itemprocess.sqf",["Unprocessed_LSD", "lsd", 5, "lsd ga2"],1,false,true,"","_control = gangarea2 getvariable ""control"";!isnil ""_control"" and player distance gangarea2 <= 5 and (_control == (call INV_mygang))"];
action61 = _role addaction ["Traiter l'Héroïne","itemprocess.sqf",["Unprocessed_Heroin", "heroin", 5, "heroin ga2"],1,false,true,"","_control = gangarea2 getvariable ""control"";!isnil ""_control"" and player distance gangarea2 <= 5 and (_control == (call INV_mygang))"];
//ga3
action62 = _role addaction ["Traiter l'Héroïne","itemprocess.sqf",["Unprocessed_Heroin", "heroin", 5, "heroin ga3"],1,false,true,"","_control = gangarea3 getvariable ""control"";!isnil ""_control"" and player distance gangarea3 <= 5 and (_control == (call INV_mygang))"];
action63 = _role addaction ["Traiter la Marijuana","itemprocess.sqf",["Unprocessed_Marijuana", "marijuana", 5, "marijuana ga3"],1,false,true,"","_control = gangarea3 getvariable ""control"";!isnil ""_control"" and player distance gangarea3 <= 5 and (_control == (call INV_mygang))"];
//ga4
action64 = _role addaction ["Traiter l'Héroïne","itemprocess.sqf",["Unprocessed_Heroin", "heroin", 5, "heroin ga4"],1,false,true,"","_control = gangarea4 getvariable ""control"";!isnil ""_control"" and player distance gangarea4 <= 5 and (_control == (call INV_mygang))"];
action65 = _role addaction ["Traiter la Marijuana","itemprocess.sqf",["Unprocessed_Marijuana", "marijuana", 5, "marijuana ga4"],1,false,true,"","_control = gangarea4 getvariable ""control"";!isnil ""_control"" and player distance gangarea4 <= 5 and (_control == (call INV_mygang))"];
//======================================== WORKERS =====================================================
action66 = _role addaction [format ["Acheter une Prostituer(%1$)", huren_cost],"worker1.sqf", ["holen"],1,false,true,"","(player distance b <= 2) and isciv"];
action99 = _role addaction [format ["Sneaky Peaky (%1$)", 20000],"dance.sqf", ["holen1"],1,false,true,"","(player distance dancer1 <= 2) and isciv"];
action100 = _role addaction [format ["Sneaky Peaky (%1$)", 20000],"dance.sqf", ["holen2"],1,false,true,"","(player distance dancer2 <= 2) and isciv"];
action101 = _role addaction [format ["Sneaky Peaky (%1$)", 20000],"dance.sqf", ["holen3"],1,false,true,"","(player distance dancer3 <= 2) and isciv"];
action67 = _role addaction [format ["Acheter un Chien (%1$)", dog_cost],"copdog.sqf", ["buydog"],1,false,true,"","player distance dogspawn <= 5 and (player == cop1 or player == cop2)"];
action68 = _role addaction [format ["Acheter un Chien (%1$)", dog_cost],"civdog.sqf", ["buydog"],1,false,true,"","player distance dogspawn1 <= 5"];
action71 = _role addaction ["Mission de Camion Légal","trucking.sqf",[1],1,false,true,"","!cmissionactive2 and !cmissionactive1 and !cmissionactive and isciv and player distance truckshop <=5"];
action72 = _role addaction ["Mission de Camion Illégal","trucking.sqf",[2],1,false,true,"","!cmissionactive2 and !cmissionactive1 and !cmissionactive and isciv and player distance truckshop <=5"];
action73 = _role addaction ["Décharger le Camion","trucking.sqf",[3],1,false,true,"","cmissionactive1 and isciv and (player distance wood_1 <= 3 or player distance shop2 <= 3 or player distance shop1 <= 3 or player distance ressourcenfabrik_1 <= 3 or player distance wfgunbox <= 3)"];
action74 = _role addaction ["Décharger le Camion","trucking.sqf",[8],1,false,true,"","cmissionactive1 and isciv and (player distance methsell <= 3 or player distance ldrugsell <= 3 or player distance hdrugsell <= 3 or player distance mdrugsell <= 3 or player distance cdrugsell <= 3)"];
action75 = _role addaction ["Annuler la Mission de Camion","trucking.sqf",[9],1,false,true,"","cmissionactive or cmissionactive1 or cmissionactive2"];
action76 = _role addaction ["Charger les Biens","trucking.sqf",[6],1,false,true,"","cmissionactive and isciv and (player distance resourcesell <= 3 or player distance assassinshop <= 3 or player distance shop4 <= 3 or player distance scarshop4 <= 3 or player distance tuning1 <= 3)"];
action77 = _role addaction ["Charger les Biens Illégal","trucking.sqf",[7],1,false,true,"","cmissionactive2 and isciv and (player distance resourcesell <= 3 or player distance assassinshop <= 3 or player distance shop4 <= 3 or player distance scarshop4 <= 3 or player distance tuning1 <= 3)"];
action78 = _role addaction ["Prendre la Remorque","trucking.sqf",[4],1,true,true,"",'_vcl = (nearestobjects [getpos player, ["cl_
_mackr","cl_trucktest_mackr","cl_flatbed_mackr"], 5] select 0);player distance _vcl < 5 and _vcl in INV_ServerVclArray'];
//======================================= TAXI Missions ====================================================
//action80 = _role addaction ["Get courier job","delivery.sqf", ["getajob_delivery"],1,false,true,"","(player distance taxishop <= 5) and isciv"];
//action81 = _role addaction ["Cancel delivery mission","delivery.sqf", ["cancel"],1,false,true,"","(player distance taxishop <= 5) and isciv and alreadygotaworkplacejob == 1"];		
action82 = _role addaction ["Prendre un Travail de Taxi","taxi.sqf", ["getajob_taxi"],1,false,true,"","player distance taxishop <= 5 and isciv"];
action83 = _role addaction ["Annuler la Mission de Taxi","taxi.sqf", ["canceljob_taxi"],1,false,true,"","(player distance taxishop <= 5) and isciv and workplacejob_taxi_active"];	
//====================================== VEHICLE ACTIONS ================================================
action87 = _role addaction ["Éjecter le Joueur du Véhicule","noscript.sqf",'(nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0) execVM "pullout.sqf";',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and count (crew _vcl) > 0 and _vcl in INV_ServerVclArray and (call INV_isArmed)'];
action88 = _role addaction [localize "STRS_addAction_vehicleinfo","noscript.sqf",'(nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0) execVM "vehinfo.sqf";',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and _vcl in INV_ServerVclArray'];
//======================================== GANG FLAGS ===================================================
action90 = _role addaction ["Neutraliser le Drapeau","gangflags.sqf",[gangarea1, "neutralise"],1,false,true,"",'_control = gangarea1 getvariable "control";player distance gangarea1 <= 6 and _control != (call INV_mygang) and gangmember and !pickingup'];
action91 = _role addaction ["Neutraliser le Drapeau","gangflags.sqf",[gangarea2, "neutralise"],1,false,true,"",'_control = gangarea2 getvariable "control";player distance gangarea2 <= 6 and _control != (call INV_mygang) and gangmember and !pickingup'];
action92 = _role addaction ["Neutraliser le Drapeau","gangflags.sqf",[gangarea3, "neutralise"],1,false,true,"",'_control = gangarea3 getvariable "control";player distance gangarea3 <= 6 and _control != (call INV_mygang) and gangmember and !pickingup'];
action93 = _role addaction ["Neutraliser le Drapeau","gangflags.sqf",[gangarea4, "neutralise"],1,false,true,"",'_control = gangarea3 getvariable "control";player distance gangarea4 <= 6 and _control != (call INV_mygang) and gangmember and !pickingup'];
action94 = _role addaction ["Capturer le Drapeau","gangflags.sqf",[gangarea4, "capture"],1,false,true,"",'player distance gangarea4 <= 6 and gangmember and !pickingup and getpos gangarea4 select 2 < 0'];
action95 = _role addaction ["Capturer le Drapeau","gangflags.sqf",[gangarea1, "capture"],1,false,true,"",'player distance gangarea1 <= 6 and gangmember and !pickingup and getpos gangarea1 select 2 < 0'];
action96 = _role addaction ["Capturer le Drapeau","gangflags.sqf",[gangarea2, "capture"],1,false,true,"",'player distance gangarea2 <= 6 and gangmember and !pickingup and getpos gangarea2 select 2 < 0'];
action97 = _role addaction ["Capturer le Drapeau","gangflags.sqf",[gangarea3, "capture"],1,false,true,"",'player distance gangarea3 <= 6 and gangmember and !pickingup and getpos gangarea3 select 2 < 0'];
//======================================== SHOP EXPORT ==================================================
_num1 = (shop1 call INV_getshopnum);
_num2 = (shop2 call INV_getshopnum);
_num4 = (shop4 call INV_getshopnum);
_num5 = (bailflag call INV_getshopnum);
action98 = _role addaction ["Magasin d'Exportation 1","shopdialogs.sqf",[_num1],1,false,true,"","player distance shop1export <= 3"];
action99 = _role addaction ["Magasin d'Exportation 2","shopdialogs.sqf",[_num2],1,false,true,"","player distance shop2export <= 3"];
action100 = _role addaction ["Magasin d'Exportation 3","shopdialogs.sqf",[_num3],1,false,true,"","player distance shop3export <= 3"];
action102 = _role addaction ["Magasin d'Exportation 4","shopdialogs.sqf",[_num4],1,false,true,"","player distance shop4export <= 3"];
action103 = _role addaction ["Nourriture et Bonbon","shopdialogs.sqf",[_num5],1,false,true,"",'player distance (nearestobjects [getpos player, ["ibr_van_BNK"],  10] select 0) < 3'];
//======================================= GANG GUNSHOPS ==================================================
_num11  = (gangarea1 call INV_getshopnum);
_num12  = (gangarea2 call INV_getshopnum);
_num13  = (gangarea3 call INV_getshopnum);
_num14  = (gangarea4 call INV_getshopnum);
action104 = _role addaction ["Magasin de Gang","shopdialogs.sqf",[_num11],1,false,true,"","_control = gangarea1 getvariable ""control"";!isnil ""_control"" and player distance gangarea1 <= 5 and (_control == (call INV_mygang))"];
action105 = _role addaction ["Magasin de Gang","shopdialogs.sqf",[_num12],1,false,true,"","_control = gangarea2 getvariable ""control"";!isnil ""_control"" and player distance gangarea2 <= 5 and (_control == (call INV_mygang))"];
action106 = _role addaction ["Magasin de Gang","shopdialogs.sqf",[_num13],1,false,true,"","_control = gangarea3 getvariable ""control"";!isnil ""_control"" and player distance gangarea3 <= 5 and (_control == (call INV_mygang))"];
action107 = _role addaction ["Magasin de Gang","shopdialogs.sqf",[_num14],1,false,true,"","_control = gangarea4 getvariable ""control"";!isnil ""_control"" and player distance gangarea4 <= 5 and (_control == (call INV_mygang))"];
//===================================== Gas station Robbing===============================================
action108 = _role addaction ["Braquer la Station Service","robthestations.sqf",["station 1"],1,false,true,"","isciv and station1money >= 5000 and player distance fuelshop1 <= 2"];
action109 = _role addaction ["Braquer la Station Service","robthestations.sqf",["station 2"],1,false,true,"","isciv and station2money >= 5000 and player distance fuelshop2 <= 2"];
action110 = _role addaction ["Braquer la Station Service","robthestations.sqf",["station 3"],1,false,true,"","isciv and station3money >= 5000 and player distance fuelshop3 <= 2"];
action111 = _role addaction ["Braquer la Station Service","robthestations.sqf",["station 4"],1,false,true,"","isciv and station4money >= 5000 and player distance fuelshop4 <= 2"];
action112 = _role addaction ["Braquer la Station Service","robthestations.sqf",["station 5"],1,false,true,"","isciv and station5money >= 5000 and player distance fuelshop5 <= 2"];
action113 = _role addaction ["Braquer la Station Service","robthestations.sqf",["station 6"],1,false,true,"","isciv and station6money >= 5000 and player distance fuelshop6 <= 2"];
action114 = _role addaction ["Braquer la Station Service","robthestations.sqf",["station 7"],1,false,true,"","isciv and station7money >= 5000 and player distance fuelshop7 <= 2"];
action115 = _role addaction ["Braquer la Station Service","robthestations.sqf",["station 8"],1,false,true,"","isciv and station8money >= 5000 and player distance fuelshop8 <= 2"];
action116 = _role addaction ["Braquer la Station Service","robthestations.sqf",["station 9"],1,false,true,"","isciv and station9money >= 5000 and player distance fuelshop9 <= 2"];
action117 = _role addaction ["Braquer la Pharmacie","robpharmacy.sqf",["pharmacy"],1,false,true,"","isciv and pharmmoney >= 5000 and player distance pharmacy <= 2"];
action118 = _role addaction ["Braquer le Bar","robbar.sqf",["bar"],1,false,true,"","isciv and barmoney >= 5000 and player distance pub1 <= 2"];
action119 = _role addaction ["Braquer le Bar","robbar.sqf",["bar1"],1,false,true,"","isciv and barmoney1 >= 5000 and player distance pub2 <= 2"];
action120 = _role addaction ["Braquer le Bar","robbar.sqf",["bar2"],1,false,true,"","isciv and barmoney2 >= 5000 and player distance pub3 <= 2"];
action121 = _role addaction ["Braquer le Bar","robbar.sqf",["bar3"],1,false,true,"","isciv and barmoney3 >= 5000 and player distance pub4 <= 2"];
//========================   unflip vehicle     ================================
action122 = _role addaction ["Retourner la Voiture","unflipvehicle.sqf",["unflip"],1,false,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and _vcl in INV_VehicleArray'];
//======================================== Donate shop===================================================
_num15 = (donatebuy call INV_getshopnum);
actiondonate = _role addaction ["Magasin des Donateurs","shopdialogs.sqf",[_num15],1,false,true,"","player distance donatebuy <= 5"];
//========================================MAFIA==========================================================
//actionmaf = _role addaction ["Get Job","noscript.sqf",'[] call getmafjob;',1,true,true,"",'player distance mafs < 10 and ("mafial" call INV_HasLicense) and !hasjob'];
actionpmc = _role addaction ["Changer en PMC BODYGUARD","noscript.sqf",'["Soldier_Bodyguard_AA12_PMC"] call clothes;',1,true,true,"",'player distance pmc < 10 and ("pmcl" call INV_HasLicense)'];
actionpmc2 = _role addaction ["Changer en PMC MEDIC","noscript.sqf",'["Soldier_Medic_PMC"] call clothes;',1,true,true,"",'player distance pmc < 10 and ("pmcl" call INV_HasLicense)'];
actionpmc3 = _role addaction ["Changer en PMC SNIPER","noscript.sqf",'["Soldier_Sniper_PMC"] call clothes;',1,true,true,"",'player distance pmc < 10 and ("pmcl" call INV_HasLicense)'];
actionpmc4 = _role addaction ["Changer en PMC SOLDIER","noscript.sqf",'["Soldier_PMC"] call clothes;',1,true,true,"",'player distance pmc < 10 and ("pmcl" call INV_HasLicense)'];
actionpmc5 = _role addaction ["Changer en PMC CREW","noscript.sqf",'["Soldier_Crew_PMC"] call clothes;',1,true,true,"",'player distance pmc < 10 and ("pmcl" call INV_HasLicense)'];
//actionmil = _role addaction ["Switch to National Guard Clothes","noscript.sqf",'["US_Soldier_MG_EP1"] call clothes;',1,true,true,"",'player distance milp < 10 and ((getPlayerUID player) in specarray)'];
//actionmil2 = _role addaction ["Switch to APO","noscript.sqf",'["VIL_ctl_policeman_rd"] call clothes;',1,true,true,"",'player distance milp < 10 and ((getPlayerUID player) in specarray)'];
action48 = _role addaction ["Envoyer les Véhicules à la Fourrière","noscript.sqf",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);[_vcl, "impound"] execVM "impound.sqf";',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);_vcl in INV_ServerVclArray and player distance _vcl < 10 and _vcl distance towgate < 50'];
actionass = _role addaction ["Mettre des Vêtements d'Assassin","noscript.sqf",'["TK_INS_Soldier_EP1"] call clothes;',1,true,true,"",'player distance assassinshop < 10 and ("assassinlic" call INV_HasLicense)'];
//actionun = _role addaction ["Switch to UN Soldier","noscript.sqf",'["UN_CDF_Soldier_EP1"] call clothes;',1,true,true,"",'player distance unbasic < 10 and ((getPlayerUID player) in specarray)'];
//actionun2 = _role addaction ["Switch to UN Officer","noscript.sqf",'["UN_CDF_Soldier_Light_EP1"] call clothes;',1,true,true,"",'player distance unbasic < 10 and ((getPlayerUID player) in specarray)'];

action222 = _role addaction ["Récupérer votre véhicule","retrievevehicle.sqf",[],1,false,true,"","player distance savespawn <= 25"];
action223 = _role addaction ["Sauvegarder votre véhicule","noscript.sqf",'(nearestobjects [getpos player, ["Air", "LandVehicle"], 3] select 0) execVM "saveVehicle.sqf";',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Air",  "LandVehicle"], 3] select 0);player distance savespawn < 25 and _vcl in INV_ServerVclArray and _vcl in INV_VehicleArray'];

actionsaveair = _role addaction ["<t color=""#55EB0C"">" + ("Sauvegarder le véhicule") + "</t>","noscript.sqf",'(nearestobjects [getpos player, ["Air"], 10] select 0) execVM "saveVehicleAir.sqf";',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Air"], 10] select 0);player distance _vcl < 5 and _vcl in INV_ServerVclArray and _vcl in INV_VehicleArray and player distance saveaero < 100'];
actionretrieveair = _role addaction ["<t color=""#0095FF"">" + ("Sortir le véhicule du hangar pour $10000") + "</t>","retrieveVehicleAir.sqf",[],1,false,true,"","player distance saveaero <= 15"];