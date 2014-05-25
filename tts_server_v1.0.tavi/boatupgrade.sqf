_art 	= _this select 0;
_item 	= _this select 1;
_vcl	= vehicle player;
_type	= typeof _vcl;

if(_art == "use")then

{

if(_vcl == player)exitwith{player groupchat "vous devez être dans le bateau"};
if(_vcl iskindof _type call INV_getitemTypeKg > 2)exitwith{player groupchat "Vous ne pouvez pas tuner ce véhicule"};
if(_vcl iskindof "Motorcycle")exitwith{player groupchat "Tu ne peux pas tuner sa!"};
if(_vcl iskindof "land")exitwith{player groupchat "Tu ne peux pas tuner les véhciule avec sa!"};
if(_vcl iskindof "air")exitwith{player groupchat "Tu ne peux pas tunner les véhicule aerien!"};
if (!(player == driver vehicle player)) exitWith {player groupChat "Tu dois etre en conducteur pour tunner";};
_check = _vcl getVariable "tuning";

	if(_item == "boatupgrade1") then 
	{
	player groupchat "Tunning bateau...";
	_vcl setfuel 0;
	sleep 6;
	_vcl setfuel 1;
	_vcl setvariable ["tuning", 1, true];
	player groupchat "Bateau Tunner!";
	}; 

	if(_item == "boatupgrade2") then 
	{ 
	if(isNil "_check") exitwith {player groupchat "Vous devez d'abord prise directe avec les pompes de cale!"};
	player groupchat "Tunning véhicule...";
	_vcl setfuel 0;
	sleep 7;
	_vcl setfuel 1;
	_vcl setvariable ["tuning", 2, true];
	player groupchat "Véhicule tunner!";
	}; 

//if(_item == "supgrade3")then{player groupchat "Tunning véhicule..."; _vcl setfuel 0; sleep 8; _vcl setfuel 1; _vcl setvariable ["tuning", 3, true]; player groupchat "vehicle tuned!";};
//if(_item == "supgrade4")then{player groupchat "Tunning véhicule..."; _vcl setfuel 0; sleep 9; _vcl setfuel 1; _vcl setvariable ["tuning", 4, true]; player groupchat "vehicle tuned!";};
//if(_item == "supgrade5")then{player groupchat "Tunning véhicule..."; _vcl setfuel 0; sleep 10; _vcl setfuel 1; _vcl setvariable ["tuning", 5, true]; player groupchat "vehicle tuned!";};
[_item, -1] call INV_AddInvItem; 
};
