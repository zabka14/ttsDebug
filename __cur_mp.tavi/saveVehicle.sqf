_ArryLength = count INV_SavedVehCiv;


if(_ArryLength >= 3) then {

player groupChat "Vous ne pouvez pas enregistrer plus de 3 véhicules";

} else {

_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);

_vclClass = typeOf _vcl;

player globalchat format ["VEHICLE ARRAY : %1",_vcl]; // debug


INV_SavedVehCiv set [count INV_SavedVehCiv, _vclClass];

player globalchat format ["SAVED ARRAY : %1",INV_SavedVehCiv]; // debug
[getPlayerUID player, getPlayerUID player, "savedVehiclesCiv", INV_SavedVehCiv] call fn_SaveToServer;
deleteVehicle _vcl;

};