_ArryLength = count INV_SavedVehLandCop;


if(_ArryLength >= 5) then {

	player sideChat "You can not save more than 5 Police vehicles in storage.";

} else {

	_vcl = (nearestObjects [getPos player, ["Air", "Ship", "LandVehicle"], 3] select 0);

	_vclClass = typeOf _vcl;

	player sideChat format ["VEHICLE ARRAY : %1",_vcl]; // debug


	INV_SavedVehLandCop set [count INV_SavedVehLandCop, _vclClass];

	player sideChat format ["SAVED ARRAY : %1",INV_SavedVehLandCop]; // debug


	player sideChat "Vehicle Saved Return To The Cop Vehicle Storage As A Cop To Retrieve It!";
	
	deleteVehicle _vcl;

	["INV_SavedVehLandCop",INV_SavedVehLandCop] spawn clientsavevar;
	[getPlayerUID player, getPlayerUID player, "savedVehiclesCiv", INV_SavedVehLandCop] call fn_SaveToServer;
};