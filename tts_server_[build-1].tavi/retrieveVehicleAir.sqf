if (isNil {INV_SavedVehicleAir select 0}) then {
player groupChat "Vous n'avez pas de véhicules de garer, actuellement!";

} else {

gettingair = 1;
_geld = "geld" call INV_getitemamount;

if(_geld < 10000)exitwith{player groupchat "vous n'avez pas assez d'argent pour obtenir une voiture du parking."};
_rtv = (INV_SavedVehicleAir select 0) call inv_getitemname;
_rtv1 = (INV_SavedVehicleAir select 1) call inv_getitemname;

continue = false;
vehicle2Spawn = test;

player removeAction action222;
player removeAction action226a;
reTrieve = player addaction [_rtv,"noscript.sqf",'continue = true; vehicle2Spawn = (INV_SavedVehicleAir select 0);',1,true,true,"",'player distance saveaero < 15'];
reTrieve1 = player addaction [_rtv1,"noscript.sqf",'continue = true; vehicle2Spawn = (INV_SavedVehicleAir select 1);',1,true,true,"",'player distance saveaero < 15'];
if(gettingcopcar == 1)exitWith{"Vous avez déjà sorti le véhicule du parking..."};
gettingair = 1;
player groupChat "Choisissez un véhicule à l'aide de la molette.";

waituntil {continue};
["geld", -10000] call INV_AddInvItem;
player sideChat "Vous avez payé $ 10 000 pour sortir votre véhicule du hangar!";
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
	', player, round(time), INV_CALL_CREATVEHICLE, getpos saveaero, getdir _logic];

INV_SavedVehicleAir = INV_SavedVehicleAir - [vehicle2Spawn];

//server sidechat format ["%1",_v];

["INV_SavedVehicleAir",INV_SavedVehicleAir] spawn clientsavevar;

player sideChat format ["RETRIEVED %1",vehicle2spawn call inv_getitemname];

sleep 3;
continue = false;
gettingair = 0;

};