if (isNil {INV_SavedVehBoat select 0}) then {
player sideChat "Vous n'avez pas de bateaux enregistrés!";

} else {
_geld = "geld" call INV_getitemamount;

if(_geld < 5000)exitwith{player groupchat "vous n'avez pas assez d'argent pour sauvegarder votre bateau."};
_rtv = (INV_SavedVehBoat select 0) call inv_getitemname;
_rtv1 = (INV_SavedVehBoat select 1) call inv_getitemname;

continue = false;
vehicle2Spawn = test;

player removeAction action222;
player removeAction action224;
reTrieve = player addaction [_rtv,"noscript.sqf",'continue = true; vehicle2Spawn = (INV_SavedVehBoat select 0);',1,true,true,"",'player distance saveamaritime < 15'];
reTrieve1 = player addaction [_rtv1,"noscript.sqf",'continue = true; vehicle2Spawn = (INV_SavedVehBoat select 1);',1,true,true,"",'player distance saveamaritime < 15'];
if(gettingcopcar == 1)exitWith{"Vous avez déjà sorti le bateau du port..."};
gettingboat = 1;

player groupChat "Choisissez un véhicule à l'aide de la molette.";

waituntil {continue};
["geld", -5000] call INV_AddInvItem;
player sideChat "Vous avez payé $ 5000 pour sortir votre bateau du port!";
player removeAction reTrieve;
player removeAction reTrieve1;

player groupChat "RÉCUPÉRATION DU VÉHICULE DANS 3 ...";
sleep 1;
player groupChat "RÉCUPÉRATION DU VÉHICULE DANS 2...";
sleep 1;
player groupChat "RÉCUPÉRATION DU VÉHICULE DANS 1...";
sleep 1;

_v = format ["vehicle_%1_%2",player,round(time)];

	call compile format ['

	newvehicle = vehicle2spawn createVehicle %4; 
	newvehicle setVehicleInit "
	this setVehicleVarName ""vehicle_%1_%2""; 
	vehicle_%1_%2 = this; 
	clearWeaponCargo this; 
	clearMagazineCargo this;
	newvehicle lock true;
	"; 
	processInitCommands;
	INV_VehicleArray = INV_VehicleArray + [vehicle_%1_%2]; 
	"INV_ServerVclArray = INV_ServerVclArray + [vehicle_%1_%2];if (""%3"" != """") then {[""CreatedVehicle"", vehicle_%1_%2, typeOf vehicle_%1_%2, %4] execVM ""%3"";};" call broadcast;
	', player, round(time), INV_CALL_CREATVEHICLE, getpos saveamaritime, getdir _logic];

INV_SavedVehBoat = INV_SavedVehBoat - [vehicle2Spawn];

server sidechat format ["%1",_v];

["INV_SavedVehBoat",INV_SavedVehBoat] spawn clientsavevar;

player sideChat format ["RETRIEVED %1",vehicle2spawn call inv_getitemname];

sleep 3;
continue = false;

action222 = player addaction ["Retrieve Saved Boat","RetrieveVehicleBoat.sqf",[],1,false,true,"","player distance saveamaritime <= 3"];
gettingboat = 0;
};