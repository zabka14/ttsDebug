_ArryLength = count INV_SavedVehicleAir;


if(_ArryLength >= 2) then {

player groupChat "Vous ne pouvez pas enregistrer plus de 2 véhicule dans le hangar.";

} else {

_vcl = (nearestobjects [getpos player, ["Air"], 10] select 0);

_vclClass = typeOf _vcl;

//player globalchat format ["VEHICLE ARRAY : %1",_vcl]; // debug


INV_SavedVehicleAir set [count INV_SavedVehicleAir, _vclClass];

//player globalchat format ["SAVED ARRAY : %1",INV_SavedVehicleAir]; // debug

deleteVehicle _vcl;

player groupChat "Vous avez sauvegardé votre véhicule!";


["INV_SavedVehicleAir",INV_SavedVehicleAir] spawn clientsavevar;

};