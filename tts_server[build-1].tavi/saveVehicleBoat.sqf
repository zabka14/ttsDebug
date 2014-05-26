_ArryLength = count INV_SavedVehBoat;


if(_ArryLength >= 2) then {

player groupChat "Vous ne pouvez pas enregistrer plus de 2 bateaux dans le ports.";

} else {

_vcl = (nearestobjects [getpos player, ["Ship"], 10] select 0);

_vclClass = typeOf _vcl;

player globalchat format ["VEHICLE ARRAY : %1",_vcl]; // debug


INV_SavedVehBoat set [count INV_SavedVehBoat, _vclClass];

//player globalchat format ["SAVED ARRAY : %1",INV_SavedVehBoat]; // debug

deleteVehicle _vcl;

player groupChat "Bateau Sauvegardé Retourner au stockage de bateaux pour le récupérer!";


["INV_SavedVehBoat",INV_SavedVehBoat] spawn clientsavevar;

};