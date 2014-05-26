if (isNil {INV_SavedVehLandCop select 0}) then {
player groupChat "Vous n'avez pas de véhicules de garer, actuellement!";

} else {
_geld = "geld" call INV_getitemamount;

if(_geld < 5000)exitwith{player groupchat "vous n'avez pas assez d'argent pour obtenir une voiture du parking."};
_rtv = (INV_SavedVehLandCop select 0) call inv_getitemname;
_rtv1 = (INV_SavedVehLandCop select 1) call inv_getitemname;
_rtv2 = (INV_SavedVehLandCop select 2) call inv_getitemname;
_rtv3 = (INV_SavedVehLandCop select 3) call inv_getitemname;
_rtv4 = (INV_SavedVehLandCop select 4) call inv_getitemname;
continue = false;
vehicle2Spawn = test;

player removeAction action222;
reTrieve = player addAction [_rtv,"noscript.sqf",'continue = true; vehicle2Spawn = (INV_SavedVehLandCop select 0);',1,true,true,"",'player distance savespawncop <= 15'];
reTrieve1 = player addAction [_rtv1,"noscript.sqf",'continue = true; vehicle2Spawn = (INV_SavedVehLandCop select 1);',1,true,true,"",'player distance savespawncop <= 15'];
reTrieve2 = player addAction [_rtv2,"noscript.sqf",'continue = true; vehicle2Spawn = (INV_SavedVehLandCop select 2);',1,true,true,"",'player distance savespawncop <= 15'];
reTrieve3 = player addAction [_rtv3,"noscript.sqf",'continue = true; vehicle2Spawn = (INV_SavedVehLandCop select 3);',1,true,true,"",'player distance savespawncop <= 15'];
reTrieve4 = player addAction [_rtv4,"noscript.sqf",'continue = true; vehicle2Spawn = (INV_SavedVehLandCop select 4);',1,true,true,"",'player distance savespawncop <= 15'];
if(gettingcopcar == 1)exitWith{"Vous avez déjà sorti le véhicule du parking..."};
gettingcopcar = 1;

player sideChat "Choisissez un véhicule dans le menu de défilement!";

waitUntil {continue};
["geld", -5000] call INV_AddInvItem;
player sideChat "Vous avez payé $ 5000 pour sortir votre véhicule du parking!";
player removeAction reTrieve;
player removeAction reTrieve1;
player removeAction reTrieve2;
player removeAction reTrieve3;
player removeAction reTrieve4;

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
	', player, round(time), INV_CALL_CREATVEHICLE, getPos savespawncop, getDir _logic];

INV_SavedVehLandCop = INV_SavedVehLandCop - [vehicle2Spawn];

//server globalChat format ["%1",_v];

["INV_SavedVehLandCop",INV_SavedVehLandCop] spawn clientsavevar;

player sideChat format ["RETRIEVED %1",vehicle2spawn call inv_getitemname];

sleep 3;
continue = false;
gettingcopcar = 0;

};