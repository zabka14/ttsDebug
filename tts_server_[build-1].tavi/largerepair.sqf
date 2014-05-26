_art = _this select 0;
if (_art == "use") then 
{
_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 6] select 0);
_item = _this select 1;
_anzahl = _this select 2;



if (isnil ("_vcl")) exitwith {player groupchat "Aucun véhicule à proximité"};
if (!(player == vehicle player)) exitWith {player groupchat "Vous devez être à l'extérieur du véhicule"};
if (player distance _vcl <= 6) then 
{
player groupchat "RÉPARATION";
[_item, -1] call INV_AddInvItem;
sleep 15;
_vcl setDamage 0;
player groupchat "Reparer";
};



};



/*
_art = _this select 0;

if (_art == "use") then 
 
{

_item = _this select 1;
_vcl  = vehicle player;

  

if (player == _vcl) exitWith {player groupChat localize "STRS_inv_items_repair_refuel_notincar";};
if (player != driver _vcl) exitWith {player groupChat localize "STRS_inv_items_repair_refuel_notdriver";};
if ((damage _vclr) == 0) exitWith {player groupChat localize "STRS_inv_items_repair_notneeded";};

player groupchat "Réparation véhicule!";
[_item, -1] call INV_AddInvItem;
sleep 15;
_vcl setDamage 0;
player groupChat localize "STRS_inv_items_repair_repaired";
};
*/
