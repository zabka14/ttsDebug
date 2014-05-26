_art 	= _this select 0;
_item 	= _this select 1;
_vcl	= vehicle player;
_type	= typeof _vcl;

if(_art == "use")then

{

if(_vcl == player)exitwith{player groupchat "vous devez être dans un véhicule"};
if(_vcl iskindof _type call INV_getitemTypeKg > 2)exitwith{player groupchat "vous ne pouvez pas tunner ce véhicule"};
if(_vcl iskindof "Motorcycle")exitwith{player groupchat "Vous ne pouvez pas booster cela!"};
if(_vcl iskindof "ship")exitwith{player groupchat "Vous ne pouvez pas booster les bateaux avec ca"};
if (!(player == driver vehicle player)) exitWith {player groupChat "Vous devez etre en conducteur pour booster le véhicule.";};
_check = _vcl getVariable "tuning";

	if(_item == "supgrade1") then 
	{
	player groupchat "Tunning en cours...";
	_vcl setfuel 0;
	sleep 6;
	_vcl setfuel 1;
	_vcl setvariable ["tuning", 1, true];
	player groupchat "Véhicule tunné!";
	}; 

	if(_item == "supgrade2") then 
	{ 
	if(isNil "_check") exitwith {player groupchat "Vous devez d'abord ajouté Shock 1"};
	player groupchat "Tunning en cours...";
	_vcl setfuel 0;
	sleep 7;
	_vcl setfuel 1;
	_vcl setvariable ["tuning", 2, true];
	player groupchat "Véhicule tunné!";
	}; 

if(_item == "supgrade3")then{player groupchat "tuning vehicle..."; _vcl setfuel 0; sleep 8; _vcl setfuel 1; _vcl setvariable ["tuning", 3, true]; player groupchat "vehicle tuned!";};
if(_item == "supgrade4")then{player groupchat "tuning vehicle..."; _vcl setfuel 0; sleep 9; _vcl setfuel 1; _vcl setvariable ["tuning", 4, true]; player groupchat "vehicle tuned!";};
if(_item == "supgrade5")then{player groupchat "tuning vehicle..."; _vcl setfuel 0; sleep 10; _vcl setfuel 1; _vcl setvariable ["tuning", 5, true]; player groupchat "vehicle tuned!";};
[_item, -1] call INV_AddInvItem; 
};
