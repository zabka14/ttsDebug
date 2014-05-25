_art = _this select 0;
if (_art == "clientloop") then 
{_w1 = 0;
_w2 = 0;
_w3 = 0;
_streetrepold = 0;
_LetzterKontostand = 0;
_prevINV_InventarArray = [];
while {true} do 

	{
	//if(vehicle player != player and !(vehicle player in INV_VehicleArray) and !(vehicle player in INV_ServerVclArray))then{deletevehicle (vehicle player)};
	if ((_streetrepold != streetrep) and (streetrep != 0)) then
		{
		["streetrep", streetrep] spawn ClientSaveVar;
		_streetrepold = streetrep;
		};
	if ((_LetzterKontostand != Kontostand) and (Kontostand != StartGeld)) then 

		{								
		if (Kontostand < 0) then //ANTI-HACK FOR PEOPLE SETTING ACCOUNTS TO MINUS AMOUNTS.
		{
		Kontostand = _LetzterKontostand;
		};
		["Kontostand", Kontostand] spawn ClientSaveVar;	
		_LetzterKontostand = Kontostand;

		};
		_invdif = false;
		if(count(_prevINV_InventarArray) == count(INV_InventarArray)) then {
		for [{_inv = 0},{_inv < count(INV_InventarArray)},{_inv = _inv + 1}] do {
		if(((_prevINV_InventarArray select _inv) select 0) == ((INV_InventarArray select _inv) select 0)) then {
		if(((_prevINV_InventarArray select _inv) select 1) != ((INV_InventarArray select _inv) select 1)) then {
		_invdif = true;
		};		
		} else {
		_invdif = true;
		};
		};
		} else {
		_invdif = true;
		};
		if (_invdif) then {
			["INV_InventarArray", INV_InventarArray] spawn ClientSaveVar;
			_prevINV_InventarArray = INV_InventarArray;
		};
	
	if(iscop and alive player and weaponsloaded)then

		{

		_updateweps = false;
		_updatemags = false;

		_weapons = weapons player;
		
		for [{_i=0}, {_i < (count _weapons)}, {_i=_i+1}] do 

			{

			if(!((_weapons select _i) in playerweapons))then

				{

				playerweapons = playerweapons + [(_weapons select _i)];
				_updateweps = true;
				

				};

			};

		_weapons = weapons player;

		for [{_i=0}, {_i < (count playerweapons)}, {_i=_i+1}] do 

			{

			if(!((playerweapons select _i) in _weapons))then

				{

				playerweapons = playerweapons - [(playerweapons select _i)];
				_updateweps = true;

				};

			};

		_mags	 = magazines player;

		for [{_i=0}, {_i < (count _mags)}, {_i=_i+1}] do 

			{

			if((_i + 1) > count playermagazines)then

				{

				playermagazines = playermagazines + [(_mags select _i)];
				_updatemags = true;

				};

			};

		_mags	 = magazines player;

		for [{_i=0}, {_i < (count playermagazines)}, {_i=_i+1}] do 

			{

			if((_i + 1) > count _mags)then

				{

				playermagazines set[_i, ""];
				_updatemags = true;

				};

			};

		_mags	 = magazines player;

		for [{_i=0}, {_i < (count _mags)}, {_i=_i+1}] do 

			{

			if((playermagazines select _i) != (_mags select _i))then

				{

				playermagazines set[_i, ""];
				_updatemags = true;

				};

			};

		playermagazines = playermagazines - [""];

		if(_updateweps)then{["playerweapons", playerweapons] spawn ClientSaveVar};
		if(_updatemags)then{["playermagazines", playermagazines] spawn ClientSaveVar};

		};

	coparray = [cop1,cop2,cop3,cop4,cop5,cop6,cop7,cop8,cop9,cop10,cop11,cop12,cop13,cop14,cop15,cop16,cop17,cop18,cop19,cop20,cop21,cop22,cop23,cop24,cop25,cop26,cop27,cop28,cop29,cop30];
	civarray = [civ1,civ2,civ3,civ4,civ5,civ6,civ7,civ8,civ9,civ10,civ11,civ12,civ13,civ14,civ15,civ16,civ17,civ18,civ19,civ20,civ21,civ22,civ23,civ24,civ25,civ26,civ27,civ28,civ29,civ30,civ31,civ32,civ33,civ34,civ35,civ36,civ37,civ38,civ39,civ40,civ41,civ42,civ43,civ44,civ45,civ46,civ47,civ48,civ49,civ50,civ51,civ52,civ53,civ54,civ55,civ56,civ57,civ58,civ59,civ60,civ61,civ62,civ63,civ64];
	playerarray = [civ1,civ2,civ3,civ4,civ5,civ6,civ7,civ8,civ9,civ10,civ11,civ12,civ13,civ14,civ15,civ16,civ17,civ18,civ19,civ20,civ21,civ22,civ23,civ24,civ25,civ26,civ27,civ28,civ29,civ30,civ31,civ32,civ33,civ34,civ35,civ36,civ37,civ38,civ39,civ40,civ41,civ42,civ43,civ44,civ45,civ46,civ47,civ48,civ49,civ50,civ51,civ52,civ53,civ54,civ55,civ56,civ57,civ58,civ59,civ60,civ61,civ62,civ63,civ64,cop1,cop2,cop3,cop4,cop5,cop6,cop7,cop8,cop9,cop10,cop11,cop12,cop13,cop14,cop15,cop16,cop17,cop18,cop19,cop20,cop21,cop22,cop23,cop24,cop25,cop26,cop27,cop28,cop29,cop30];
	pmcarray          = [];
	unarray           = [];
	medicarray        = [civ31,civ32,civ33,civ48,civ49];
	
//	if (!debug and (player distance deadcamlogic < 500) and alive player and iscop) then {titleText [localize "STRS_southChernarus_area", "plain"]};

//	if (!debug and (player distance deadcamlogic < 300) and alive player and iscop) then {call TeleToMainbaseFunc;};

	
	if(alive player and isciv and captive player)then{format['%1 setcaptive false;', player] call broadcast};
		
	_veh = vehicle player;
	
	
	if ((player distance getmarkerpos "noman1" < 1000 or player distance getmarkerpos "noman1" < 1000 or player distance getmarkerpos "noman2" < 1000 or player distance getmarkerpos "noman3" < 1000 or player distance getmarkerpos "noman4" < 1000 or player distance getmarkerpos "noman5" < 1000 or player distance getmarkerpos "noman6" < 1000 or player distance getmarkerpos "noman7" < 1000 or player distance getmarkerpos "noman8" < 1000 or player distance getmarkerpos "noman9" < 1000 or player distance getmarkerpos "noman10" < 1000 or player distance getmarkerpos "noman11" < 1000 or player distance getmarkerpos "noman12" < 1000 or player distance getmarkerpos "noman13" < 1000) and !(_veh isKindOf "Air") and !(_veh isKindOf "Ship")) then 

		{

		if (_veh != player) then 
 	
			{			
			_veh setvelocity [0,0,0];
			player Action ["eject", _veh];
			player Action ["GET OUT", _veh];
						
			};

		player setdamage 1;		

		};
	
	
	if (player distance getmarkerpos "paintballr1" <= 100) then 
	{
		if (player distance getmarkerpos "paintballr1" >= 90 and !(_veh isKindOf "Man")) then {player groupchat "You are entering a paint ball zone, you will be ejected from your vehicle if you continue, this is a NO FLY ZONE!";};
		if ((player distance getmarkerpos "paintballr1" < 88 and player distance getmarkerpos "paintballr1" >= 85) and !(_veh isKindOf "Air")) then	
		{
			if (_veh != player) then
				{
				player groupchat "You are being ejected from your car!";
				_veh setvelocity [0,0,0];
				player Action ["eject", _veh];
				player Action ["GET OUT", _veh];
				};
		};
		if ((player distance getmarkerpos "paintballr1" < 120) and (player distance getmarkerpos "paintballr1" >= 50) and (_veh isKindOf "Air")) then 
			{
			_veh setpos getmarkerpos "tppaint";
			_veh setvelocity [0,0,0];
			//player setpos getmarkerpos "tppaint";
			player groupchat "You have been teleported outside of the paint ball zone! This is a NO FLY ZONE";
			};	
		if (player distance getmarkerpos "paintballr1" < 120 and player distance getmarkerpos "paintballr1" >= 130) then
		{
		player groupchat "Weapons are not allowed in the paint ball course, all weapons have now been removed!";
		removeAllWeapons player;
		['pistole', 0] call INV_SetItemAmount;
		player removeAction holsterPistol;
		player removeAction unholsterPistol;
		};	
	};
	
/*
	

	if (player distance getmarkerpos "pdsub1" < 5 and isciv and !(_veh isKindOf "Air") and !(_veh isKindOf "Ship")) then 

		{

		if (_veh != player) then 
 	
			{
			
			_veh setvelocity [0,0,0];
			player Action ["eject", _veh];
			player Action ["GET OUT", _veh];
			
			};

		_veh setpos getmarkerpos "pdcivarea1";
		player setpos getmarkerpos "pdcivarea1";
		player groupchat "You have been teleported out of the Sheriff Department!"; 

		};

	if (player distance getmarkerpos "pdsub2" < 15 and isciv and !(_veh isKindOf "Air") and !(_veh isKindOf "Ship")) then 

		{

		if (_veh != player) then 
 	
			{
			
			_veh setvelocity [0,0,0];
			player Action ["eject", _veh];
			player Action ["GET OUT", _veh];
			
			};

		_veh setpos getmarkerpos "pdcivarea2";
		player setpos getmarkerpos "pdcivarea2";
		player groupchat "Vous avez été téléporté hors de l'unité de SWAT!"; 

		};
*/
		
	if (player distance getmarkerpos "fire" < 40) then 

		{
		player say ["Forest_Fire",1];
		};

	if (player distance getmarkerpos "fire" < 15) then 

		{
		player setdamage 1;
		vehicle player setdamage .8;
		};

	if ((alive player) and (DeadWaitSec > (respawnzeit+deadtimebonus))) then 

		{

		DeadWaitSec = DeadWaitSec - deadtimebonus;

		};

	_geld = 'geld' call INV_GetItemAmount;

	if (_geld < 0) then {['geld', 0] call INV_SetItemAmount; _geld = 0;};

	if (Kontostand > bank_limit) then {Kontostand = bank_limit;player groupChat localize "STRS_maxbank";};
	if (_geld > money_limit) then {['geld', money_limit] call INV_SetItemAmount; player groupChat localize "STRS_maxmoney";};

	{	

	if ((rating _x) < 0) then {_x addRating (abs (rating _x))};
	if ((score _x) < 0)  then {_x addScore  (abs (score _x))};

	} forEach playerarray;
	
	
	sleep 1;

	};

};