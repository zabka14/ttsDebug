_art = _this select 0;
if (_art == "use") then 
{
_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 6] select 0);
_item = _this select 1;
_anzahl = _this select 2;
if (isnil ("_vcl")) exitwith {player groupchat "Pas à proximité de tous les véhicules"};
if (!(player == vehicle player)) exitWith {player groupchat "Vous devez être à l'extérieur du véhicule"};
if (player distance _vcl <= 6) then 
{
player groupchat "Ravitaillement";
sleep 15;
[_item, -1] call INV_AddInvItem;
_vcl setFuel 1;
player groupchat "Ravitailler";
};



};
/*
    if (player == vehicle player)  exitWith {
player groupChat localize "STRS_inv_items_repair_refuel_notincar";
};

   if (!(player == driver vehicle player)) exitWith {
player groupChat localize "STRS_inv_items_repair_refuel_notdriver";
};

    if ((fuel vehicle player) == 1)  exitWith {
player groupChat localize "STRS_inv_items_refuel_notneeded";
};

player groupchat "véhicule de ravitaillement!";
sleep 15;
vehicle player setFuel 1;
    player groupChat localize "STRS_inv_items_refuel_refueled";
[_item, -1] call INV_AddInvItem;
};
*/

