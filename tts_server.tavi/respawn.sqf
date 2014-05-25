waitUntil {JIP_Stats_Ready};
while {true} do 
{
waituntil {alive player};
//player removeweapon "ItemGPS";
removeAllWeapons player;
execVM "briefing.sqf";
if (isciv) then {player addweapon "ItemGPS";};
if (iscop) then 
{
	if (count playerWeapons == 0 and count playermagazines == 0) then 
		{
		{player addMagazine _x} forEach CopStartGear_Mags;
		{player addWeapon   _x} forEach CopStartGear_Weap;	
		} 
		else 
		{
		{player addMagazine _x} forEach playermagazines;
		{player addWeapon   _x} forEach playerWeapons;										
		};
	player selectweapon (primaryweapon player);
	weaponsloaded = true;			
};

if("car" call INV_haslicense)then{demerits = 10};
//if("sobr_training" call INV_haslicense and iscop)then{_h = ["MVD_soldier"] execVM "changeclass.sqf";waituntil{scriptdone _h}; player setpos getmarkerpos "respawn_west_SOBR";};
sleep 5;
waituntil {!(alive player)};
weaponsloaded = false;

_body = "body" createVehicle (position player);
role = player;
sleep 0.5;
closeDialog 0;

if(isciv) then 
{
for [{_i=0}, {_i < (count INV_InventarArray)}, {_i=_i+1}] do 
	{
	_item   = ((INV_InventarArray select _i) select 0);
	_amount = (_item call INV_GetItemAmount);
	if (_amount > 0 and (_item call INV_getitemDropable)) then 

		{
		private "_class";
		if(_item == "geld")then{_class = "EvMoney"}else{_class = "Suitcase"};
		_object = _class createvehicle position player;
		_object setvariable ["droparray", [_amount, _item], true];
		[] execVM "Scripts\statSave\save.sqf";
		};
	};	
call INV_InventarLeeren;
};

if(iscop) then 
{
_amount = ("geld" call INV_GetItemAmount);
	if (_amount > 0) then 
	{
	_object = "EvMoney" createvehicle position player;
	_object setvariable ["droparray", [_amount, "geld"], true];
	["geld", -(_amount)] call INV_AddInvItem;
	[] execVM "Scripts\statSave\save.sqf";
	};
};
INV_hunger = 5;
deadtimes  = deadtimes + 1;
["deadtimes", deadtimes] spawn ClientSaveVar;

if (isciv) then 
{
	if(isdead == 0)then{[player, "suicide"] execVM "victim.sqf";};
	waituntil{isdead == 1};
	removeAllWeapons player;
	[] execVM "Scripts\statSave\save.sqf";
	["isdead", isdead] spawn ClientSaveVar; 
	DeadWaitSec = DeadWaitSec + respawntimeinc;
	if (DeadWaitSec > DeadTimeMax) then {DeadWaitSec = DeadTimeMax};
	[] execVM "respawncamera.sqf";
	shoveldur=20;
	pickaxedur=50;
	hammerdur=100;
	alreadygotaworkplacejob=0;
	sleep 3; 
	["DeadWaitSec", DeadWaitSec] spawn ClientSaveVar;
	if(call compile format["%1_arrest > 0", player]  )then{format["%1_arrest = 0;", player]   call broadcast;};
	if(call compile format["%1_wanted > 0", player]  )then{format["%1_wanted = 0;", player]   call broadcast;};
	if(call compile format['count %1_reason > 0', player]  )then{format['%1_reason = [];', player]   call broadcast;};
	if(call compile format['count %1_warning > 0', player]  )then{format['%1_warning = [];', player]   call broadcast;};
	if(call compile format["kopfgeld_%1 > 0", player])then{format["kopfgeld_%1 = 0;", player] call broadcast;};
	
	
	if (ismayor) then
	{
	ismayor=false;
	MayorNumber = -1;
	PUBLICVARIABLE "MayorNumber";
	false call TurnMayorFunc;
	INV_LizenzOwner = INV_LizenzOwner - ["mayorlic"];
	format["civ%1_mayor = 0;", player] call broadcast;
	};

	sleep respawnzeit - 5;
	removeAllWeapons role;
	hidebody role;
	sleep 5;

	//execVM "actions.sqf";	
	
	waituntil {alive player};
	[] execVM "pistolControl.sqf";
	[] execVM "rifleControl.sqf";
		
	removeAllWeapons player;
	deleteVehicle role;
	waituntil {deadcam == 0};
	isdead = 0;
	["isdead", isdead] spawn ClientSaveVar; 
		
	if (local_arrest == 0) then 
	{
	_civ = player;
	player addweapon "ItemGPS";
		switch _civ do
		{
		//civspawn1
//		case civ1: {player setpos getmarkerpos "civspawn1";};
//		case civ4: {player setpos getmarkerpos "civspawn1";};
//		case civ8: {player setpos getmarkerpos "civspawn1";};
//		case civ3: {player setpos getmarkerpos "civspawn1";};
//		case civ25: {player setpos getmarkerpos "civspawn1";};
//		case civ17: {player setpos getmarkerpos "civspawn1";};
//		case civ42: {player setpos getmarkerpos "civspawn1";};
//		case civ28: {player setpos getmarkerpos "civspawn1";};
//		case civ27: {player setpos getmarkerpos "civspawn1";};
//		case civ26: {player setpos getmarkerpos "civspawn1";};
//		case civ21: {player setpos getmarkerpos "civspawn1";};
//		case civ56: {player setpos getmarkerpos "hoodrespawn";};
//		case civ57: {player setpos getmarkerpos "hoodrespawn";};
//		case civ58: {player setpos getmarkerpos "hoodrespawn";};
//		case civ59: {player setpos getmarkerpos "hoodrespawn";};
//		case civ60: {player setpos getmarkerpos "hoodrespawn";};
//		//civspawn2
//		case civ47: {player setpos getmarkerpos "hoodrespawn";};
//		case civ9: {player setpos getmarkerpos "hoodrespawn";};
//		case civ6: {player setpos getmarkerpos "hoodrespawn";};
//		case civ36: {player setpos getmarkerpos "hoodrespawn";};
//		case civ38: {player setpos getmarkerpos "hoodrespawn";};
//		case civ7: {player setpos getmarkerpos "hoodrespawn";};
//		case civ18: {player setpos getmarkerpos "hoodrespawn";};
//		case civ2: {player setpos getmarkerpos "hoodrespawn";};
//		case civ46: {player setpos getmarkerpos "hoodrespawn";};
//		case civ50: {player setpos getmarkerpos "hoodrespawn";};
//		case civ51: {player setpos getmarkerpos "hoodrespawn";};
//		case civ52: {player setpos getmarkerpos "hoodrespawn";};
//		case civ53: {player setpos getmarkerpos "hoodrespawn";};
//		case civ54: {player setpos getmarkerpos "hoodrespawn";};
//		case civ55: {player setpos getmarkerpos "hoodrespawn";};
//		case civ45: {player setpos getmarkerpos "hoodrespawn";};
//		case civ44: {player setpos getmarkerpos "hoodrespawn";};
//		case civ19: {player setpos getmarkerpos "hoodrespawn";};
//		case civ22: {player setpos getmarkerpos "hoodrespawn";};
//		case civ20: {player setpos getmarkerpos "hoodrespawn";};
//		case civ23: {player setpos getmarkerpos "hoodrespawn";};
//		case civ24: {player setpos getmarkerpos "hoodrespawn";};
//		case civ40: {player setpos getmarkerpos "hoodrespawn";};
//		case civ34: {player setpos getmarkerpos "hoodrespawn";};
//		case civ30: {player setpos getmarkerpos "hoodrespawn";};
//		case civ29: {player setpos getmarkerpos "hoodrespawn";};
//		case civ37: {player setpos getmarkerpos "hoodrespawn";};
		//cvispawn3
//		case civ39: {player setpos getmarkerpos "farmrespawn";};
//		case civ12: {player setpos getmarkerpos "farmrespawn";};
//		case civ35: {player setpos getmarkerpos "farmrespawn";};
//		case civ16: {player setpos getmarkerpos "farmrespawn";};
//		case civ11: {player setpos getmarkerpos "farmrespawn";};
//		case civ10: {player setpos getmarkerpos "farmrespawn";};
//		case civ15: {player setpos getmarkerpos "farmrespawn";};
//		case civ5: {player setpos getmarkerpos "farmrespawn";};
//		case civ43: {player setpos getmarkerpos "farmrespawn";};
//		case civ41: {player setpos getmarkerpos "farmrespawn";};
//		case civ13: {player setpos getmarkerpos "farmrespawn";};
//		case civ14: {player setpos getmarkerpos "farmrespawn";};
//		case civ61: {player setpos getmarkerpos "hoodrespawn";};
//		case civ62: {player setpos getmarkerpos "hoodrespawn";};
//		case civ63: {player setpos getmarkerpos "hoodrespawn";};
//		case civ64: {player setpos getmarkerpos "hoodrespawn";};
		//esu
		case civ31: {player setpos getmarkerpos "emsspawn";[] execVM "actions\govactions.sqf";};
		case civ32: {player setpos getmarkerpos "emsspawn";[] execVM "actions\govactions.sqf";};
		case civ33: {player setpos getmarkerpos "emsspawn";[] execVM "actions\govactions.sqf";};
		case civ48: {player setpos getmarkerpos "emsspawn";[] execVM "actions\govactions.sqf";};
		case civ49: {player setpos getmarkerpos "emsspawn";[] execVM "actions\govactions.sqf";};
		case civ51: {player setpos getmarkerpos "emsspawn";[] execVM "actions\govactions.sqf";};
		case civ52: {player setpos getmarkerpos "emsspawn";[] execVM "actions\govactions.sqf";};

		default {player setpos [getmarkerpos "civspawn1" select 0, getmarkerpos "civspawn1" select 1, (getmarkerpos "civspawn1" select 2) +1];[] execVM "actions\civactions.sqf";};
		};
	}
	else
	{
	(format ["%1 switchmove ""%2"";", player, "civillying01"]) call broadcast; 
	waituntil {animationstate player == "civillying01"};
	["arrest", CivTimeInPrison, player] execVM "civmenu.sqf";
	}; 
};

if (iscop) then
{
	removeAllWeapons role;
	if (DeadWaitSec > DeadTimeMax) then {DeadWaitSec = DeadTimeMax};
	[] execVM "respawncamera.sqf";
	sleep (respawnzeit - 5);
	hidebody role;
	sleep 5;
	//execVM "actions.sqf";	
	waitUntil {alive player};
	[] execVM "pistolControl.sqf";
	[] execVM "rifleControl.sqf";
	deleteVehicle role;	
	isdead = 0; 
   	_civnum = player;
	[] execVM "actions\copactions.sqf";
	if (_civnum == cop10) then {player setPos getPos deputyspawn;};
	if (_civnum == cop11) then {player setPos getPos deputyspawn;};
	if (_civnum == cop12) then {player setPos getPos deputyspawn;};
	if (_civnum == cop13) then {player setPos getPos deputyspawn;};
	if (_civnum == cop14) then {player setPos getPos deputyspawn;};
	if (_civnum == cop20) then {player setPos getPos ucspawn;};
	if (_civnum == cop21) then {player setPos getPos ucspawn;};
	if (_civnum == cop22) then {player setPos getPos ucspawn;};
	//if (_civnum == cop23) then {player setPos getPos ucspawn;};
	if (_civnum == cop24) then {player setPos getPos cgspawn;};
	if (_civnum == cop25) then {player setPos getPos cgspawn;};
	if (_civnum == cop26) then {player setPos getPos cgspawn;};
	if (_civnum == cop27) then {player setPos getPos cgspawn;};
	if (_civnum == cop28) then {player setPos getPos cgspawn;};
};
INV_Tragfaehigkeit = 60;
["handy", 1] call INV_AddInvItem;
};
