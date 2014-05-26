_art = _this select 0;
if (_art == "use") then 
{
_item    = _this select 1;
_class	 = _item call INV_getitemClassName;
_exitvar = 0;
if (_exitvar == 1) exitWith {};
_nearobj = (nearestobjects [getpos player, ["Land_MBG_GER_HUS_1","Land_MBG_GER_HUS_2","Land_MBG_GER_HUS_3","Land_MBG_GER_HUS_4","Land_MBG_GER_RHUS_1","Land_MBG_GER_RHUS_2","Land_MBG_GER_RHUS_3","Land_MBG_GER_RHUS_4","Land_MBG_GER_RHUS_5","Land_MBG_GER_ESTATE_1","Land_MBG_GER_ESTATE_2","Land_vila","Land_build2","Land_build3","Land_build4","Land_build5"], 10] select 0);
_unit = _this;
_dist = 10;
_marker = "";
_outside = 0;
switch _item do {
	case "FlagCarrierBAF": {_dist = 12;_outside = 1;};
	case "FlagCarrierTakistanKingdom_EP1": {_dist = 12;_outside = 1;};
	case "FlagCarrierCzechRepublic_EP1": {_dist = 12;_outside = 1;};
	case "FlagCarrierGermany_EP1": {_dist = 12;_outside = 1;};
	case "FlagCarrierUSA": {_dist = 12;_outside = 1;};
	case "FlagCarrierRU": {_dist = 12;_outside = 1;};
	case "MAP_b_sambucus": {_dist = 12;_outside = 1;};
	case "MAP_b_salix2s": {_dist = 12;_outside = 1;};
	case "MAP_b_prunus": {_dist = 12;_outside = 1;};
	case "MAP_b_pmugo": {_dist = 12;_outside = 1;};
	case "MAP_b_craet2": {_dist = 12;_outside = 1;};
	case "MAP_b_corylus": {_dist = 12;_outside = 1;};
	case "MAP_b_craet1": {_dist = 12;_outside = 1;};
	case "MAP_b_betulaHumilis": {_dist = 12;_outside = 1;};
	case "MAP_b_canina2s": {_dist = 12;_outside = 1;};
	case "MAP_b_corylus2s": {_dist = 12;_outside = 1;};
	};
if (_outside == 0 and isnil "_nearobj")exitwith {player groupchat "Vous devez être à l'intérieur d'une maison"};
{_range = ((getMarkerPos _x) distance (player));
if (_range < _dist) then 
{_dist = _range; _marker = _x;};	
} foreach Homearray;
if (_marker == "") exitwith {player groupchat "Vous devez être dans une maison occupée, c'est un avantage!";};
if ((player distance getmarkerpos _marker <= 10) and (_outside == 1)) exitwith {player groupchat "Vous devez placer ce en dehors de la maison";};
if ((player distance getmarkerpos _marker >=9) and (_outside == 0)) exitwith {player groupchat "Vous devez placer ce dans la maison";};
[_item, -1] call INV_AddInvItem;

	switch _item do 
	{	
		case "FlagCarrierUSA":
		{
		_pos = [(getpos player select 0)+1, getpos player select 1, (getpos player select 2)-1.5];
		_obj = _class createvehicle [0, 0, 0];
		_obj setdir getdir player;_obj setpos _pos;_time = round time;
		call compile format['_obj setvehicleinit "this setvehiclevarname ""%1%2%3""; %1%2%3 = this"; processinitcommands', player, _class, _time];
		(format ["if (local server) then {publicarbeiterarctionarray = publicarbeiterarctionarray + [ [%1%2%3, %1] ];};", player, _class, _time]) call broadcast;
		_counter = 0;
		};
		case "FlagCarrierBAF":
		{
		_pos = [(getpos player select 0)+1, getpos player select 1, (getpos player select 2)-1.5];
		_obj = _class createvehicle [0, 0, 0];
		_obj setdir getdir player;_obj setpos _pos;_time = round time;
		call compile format['_obj setvehicleinit "this setvehiclevarname ""%1%2%3""; %1%2%3 = this"; processinitcommands', player, _class, _time];
		(format ["if (local server) then {publicarbeiterarctionarray = publicarbeiterarctionarray + [ [%1%2%3, %1] ];};", player, _class, _time]) call broadcast;
		_counter = 0;
		};
		case "FlagCarrierCzechRepublic_EP1":
		{
		_pos = [(getpos player select 0)+1, getpos player select 1, (getpos player select 2)-1.5];
		_obj = _class createvehicle [0, 0, 0];
		_obj setdir getdir player;_obj setpos _pos;_time = round time;
		call compile format['_obj setvehicleinit "this setvehiclevarname ""%1%2%3""; %1%2%3 = this"; processinitcommands', player, _class, _time];
		(format ["if (local server) then {publicarbeiterarctionarray = publicarbeiterarctionarray + [ [%1%2%3, %1] ];};", player, _class, _time]) call broadcast;
		_counter = 0;
		};
		case "FlagCarrierGermany_EP1":
		{
		_pos = [(getpos player select 0)+1, getpos player select 1, (getpos player select 2)-1.5];
		_obj = _class createvehicle [0, 0, 0];
		_obj setdir getdir player;_obj setpos _pos;_time = round time;
		call compile format['_obj setvehicleinit "this setvehiclevarname ""%1%2%3""; %1%2%3 = this"; processinitcommands', player, _class, _time];
		(format ["if (local server) then {publicarbeiterarctionarray = publicarbeiterarctionarray + [ [%1%2%3, %1] ];};", player, _class, _time]) call broadcast;
		_counter = 0;
		};
		case "FlagCarrierRU":
		{
		_pos = [(getpos player select 0)+1, getpos player select 1, (getpos player select 2)-1.5];
		_obj = _class createvehicle [0, 0, 0];
		_obj setdir getdir player;_obj setpos _pos;_time = round time;
		call compile format['_obj setvehicleinit "this setvehiclevarname ""%1%2%3""; %1%2%3 = this"; processinitcommands', player, _class, _time];
		(format ["if (local server) then {publicarbeiterarctionarray = publicarbeiterarctionarray + [ [%1%2%3, %1] ];};", player, _class, _time]) call broadcast;
		_counter = 0;
		};		
		case "FlagCarrierTakistanKingdom_EP1":
		{
		_pos = [(getpos player select 0)+1, getpos player select 1, (getpos player select 2)-1.5];
		_obj = _class createvehicle [0, 0, 0];
		_obj setdir getdir player;_obj setpos _pos;_time = round time;
		call compile format['_obj setvehicleinit "this setvehiclevarname ""%1%2%3""; %1%2%3 = this"; processinitcommands', player, _class, _time];
		(format ["if (local server) then {publicarbeiterarctionarray = publicarbeiterarctionarray + [ [%1%2%3, %1] ];};", player, _class, _time]) call broadcast;
		_counter = 0;
		};
		case "Fence_corrugated_plate":
		{
		_pos = [(position player select 0) + (sin(getdir player)*1), (position player select 1) + (cos(getdir player)*1),(getpos player select 2)+.5];
		_obj = _class createvehicle [0, 0, 0];
		_obj setdir getdir player;_obj setPos _pos;_time = round time;
		call compile format['_obj setvehicleinit "this setvehiclevarname ""%1%2%3""; %1%2%3 = this"; processinitcommands', player, _class, _time];
		(format ["if (local server) then {publicarbeiterarctionarray = publicarbeiterarctionarray + [ [%1%2%3, %1] ];};", player, _class, _time]) call broadcast;
		_counter = 0;
		};
		case "MAP_washing_machine":
		{
		_pos = [(getPosATL player select 0)+1, (getPosATL player select 1), (getPosATL player select 2)];
		_obj = _class createvehicle [0, 0, 0];
		_obj setdir getdir player;_obj setPosATL _pos;_time = round time;
		call compile format['_obj setvehicleinit "this setvehiclevarname ""%1%2%3""; %1%2%3 = this"; processinitcommands', player, _class, _time];
		(format ["if (local server) then {publicarbeiterarctionarray = publicarbeiterarctionarray + [ [%1%2%3, %1] ];};", player, _class, _time]) call broadcast;
		_counter = 0;
		};
		case "Land_Carpet_EP1":
		{
		_pos = [(getPosATL player select 0)+.5, (getPosATL player select 1), (getPosATL player select 2)];
		_obj = _class createvehicle [0, 0, 0];
		_obj setdir getdir player;_obj setPosATL _pos;_time = round time;
		call compile format['_obj setvehicleinit "this setvehiclevarname ""%1%2%3""; %1%2%3 = this"; processinitcommands', player, _class, _time];
		(format ["if (local server) then {publicarbeiterarctionarray = publicarbeiterarctionarray + [ [%1%2%3, %1] ];};", player, _class, _time]) call broadcast;
		_counter = 0;
		};
		default
		{
		_pos = [(position player select 0) + (sin(getdir player)*1), (position player select 1) + (cos(getdir player)*1),(getpos player select 2)+.5];
		_obj = _class createvehicle [0, 0, 0];
		_obj setdir getdir player;_obj setPos _pos;_time = round time;
		call compile format['_obj setvehicleinit "this setvehiclevarname ""%1%2%3""; %1%2%3 = this"; processinitcommands', player, _class, _time];
		(format ["if (local server) then {publicarbeiterarctionarray = publicarbeiterarctionarray + [ [%1%2%3, %1] ];};", player, _class, _time]) call broadcast;
		_counter = 0;
		};

	};
};

