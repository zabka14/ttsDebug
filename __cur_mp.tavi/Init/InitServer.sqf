["serverloop1"] execVM "servermissionfile3\commonloop.sqf";
[0, 0, 0, ["serverloop"]] execVM "mayor.sqf";
[0, 0, 0, ["serverloop"]] execVM "chief.sqf";
[0, 0, 0, ["serverloop"]] execVM "gangs.sqf";
[] execVM "servermissionfile3\druguse.sqf";
[] execVM "servermissionfile3\robpool.sqf";
[] execVM "servermissionfile3\police.sqf";
[] execVM "servermissionfile3\hunting.sqf";
[] execVM "servermissionfile3\governmentconvoy.sqf";
[] execVM "servermissionfile3\admins.sqf";
[] execVM "servermissionfile3\pmc.sqf";
[] execVM "servermissionfile3\donators.sqf";
[] execVM "servermissionfile3\winner.sqf";
//[] execVM "servermissionfile\terrorist.sqf";
//["mem"] execVM "servermissionfile\members.sqf";

//=======================rob gas station init and variables================
[] execVM "stationrobloop.sqf";
station1money = 5000;
publicvariable "station1money";
station2money = 5000;
publicvariable "station2money";
station3money = 5000;
publicvariable "station3money";
station4money = 5000;
publicvariable "station4money";
station5money = 5000;
publicvariable "station5money";
station6money = 5000;
publicvariable "station6money";
station7money = 5000;
publicvariable "station7money";
station8money = 5000;
publicvariable "station8money";
station9money = 5000;
publicvariable "station9money";
pharmmoney = 5000;
publicvariable "pharmmoney";
barmoney = 5000;
publicvariable "barmoney";
barmoney1 = 5000;
publicvariable "barmoney1";
barmoney2 = 5000;
publicvariable "barmoney2";
barmoney3 = 5000;
publicvariable "barmoney3";
bus1money = 5000;
publicvariable "bus1money";
// GeneralCarver's Rapel Script Init Scripting


// Define Variables

gcrsrope1 = "none";
gcrsrope2 = "none";
gcrsrope3 = "none";
gcrsrope4 = "none";
gcrsrope5 = "none";
gcrsrope6 = "none";
gcrsrope7 = "none";
gcrsrope8 = "none";
gcrsrope9 = "none";
gcrsrope10 = "none";
gcrsrope11 = "none";
gcrsrope12 = "none";
gcrsrope13 = "none";
gcrsrope14 = "none";
gcrsrope15 = "none";
gcrsrepelvehicle = "none";
gcrsropedeployed = "false";
gcrsdeployropeactionid = 0;
gcrsdropropeactionid = 0;
gcrsplayerrepelactionid = 0;
gcrsplayerveh = "none";
gcrspilotvehicle = "none";
gcrsrapelvehiclearray = ["Mi17_UN_EP1", "UH1H_TK_EP1", "AH6J_EP1", "Ka137_MG_PMC", "Ka60_PMC", "Ka52Black", "Gazelle", "Gazelle1", "Gazelle3", "UH60M_MEV_EP1", "ibr_as350", "ibr_as350_civ", "MH6J_EP1", "AH6X_EP1", "MH60S", "AN6J_EPI", "MV22", "Mi17_Civilian", "Mi17_Ins","Mi17_CDF", "Mi17_RU", "Mi17_rockets_RU", "Mi24_D", "Mi24_P", "Mi24_V", "UH1Y"];
gcrsrapelheloarray = [];
gcrsplayerveharray = [];


// End GeneralCarver's Rapel Script Init Scripting
