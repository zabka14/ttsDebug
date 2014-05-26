sleep 5;
hint "Chargement en cours ...";

if(playerSide == west) then {
[getPlayerUID player, getPlayerUID player, "moneyPlayerWest", "SCALAR"] call sendToServer;
};
if(playerSide == east) then {
[getPlayerUID player, getPlayerUID player, "moneyPlayerEast", "SCALAR"] call sendToServer;
};
if(playerSide == civilian) then {
[getPlayerUID player, getPlayerUID player, "moneyPlayerCiv", "SCALAR"] call sendToServer;
};
if(playerSide == resistance) then {
[getPlayerUID player, getPlayerUID player, "moneyPlayerRes", "SCALAR"] call sendToServer;
};
sleep 3;

if(playerSide == west) then {
[getPlayerUID player, getPlayerUID player, "moneyAccountWest", "SCALAR"] call sendToServer;
};
if(playerSide == east) then {
[getPlayerUID player, getPlayerUID player, "moneyAccountEast", "SCALAR"] call sendToServer;
};
if(playerSide == civilian) then {
[getPlayerUID player, getPlayerUID player, "moneyAccountCiv", "SCALAR"] call sendToServer;
};
if(playerSide == resistance) then {
[getPlayerUID player, getPlayerUID player, "moneyAccountRes", "SCALAR"] call sendToServer;
};
sleep 5;


if(playerSide == west) then
{
	[getPlayerUID player, getPlayerUID player, "WeaponsPlayerWest", "ARRAY"] call sendToServer;
	[getPlayerUID player, getPlayerUID player, "MagazinesPlayerWest", "ARRAY"] call sendToServer;
	[getPlayerUID player, getPlayerUID player, "LicensesWest", "ARRAY"] call sendToServer;
	[getPlayerUID player, getPlayerUID player, "InventoryWest", "ARRAY"] call sendToServer;
	[getPlayerUID player, getPlayerUID player, "savedVehiclesWest", "ARRAY"] call sendToServer;
	[getPlayerUID player, getPlayerUID player, "INV_SavedVehLandCop", "ARRAY"] call sendToServer;
	[getPlayerUID player, getPlayerUID player, "INV_SavedVehicleAir", "ARRAY"] call sendToServer;
	[getPlayerUID player, getPlayerUID player, "INV_SavedVehBoat", "ARRAY"] call sendToServer;		
};

if(playerSide == resistance) then
{
	[getPlayerUID player, getPlayerUID player, "LicensesRes", "ARRAY"] call sendToServer;
	[getPlayerUID player, getPlayerUID player, "InventoryRes", "ARRAY"] call sendToServer;
};
if(playerSide == civilian) then
{
	[getPlayerUID player, getPlayerUID player, "LicensesCiv", "ARRAY"] call sendToServer;
	[getPlayerUID player, getPlayerUID player, "InventoryCiv", "ARRAY"] call sendToServer;
	[getPlayerUID player, getPlayerUID player, "savedVehiclesCiv", "ARRAY"] call sendToServer;
	[getPlayerUID player, getPlayerUID player, "INV_SavedVehicleAir", "ARRAY"] call sendToServer;
	[getPlayerUID player, getPlayerUID player, "INV_SavedVehBoat", "ARRAY"] call sendToServer;		
	[getPlayerUID player, getPlayerUID player, "WeaponsPlayerCiv", "ARRAY"] call sendToServer;
	[getPlayerUID player, getPlayerUID player, "MagazinesPlayerCiv", "ARRAY"] call sendToServer;	
};

if(playerSide == east) then
{
	[getPlayerUID player, getPlayerUID player, "LicensesEast", "ARRAY"] call sendToServer;
	[getPlayerUID player, getPlayerUID player, "InventoryEast", "ARRAY"] call sendToServer;
	[getPlayerUID player, getPlayerUID player, "savedVehiclesEast", "ARRAY"] call sendToServer;
};

hint "Chargement Terminer";
sleep 5;

statsLoaded = 1;
statsAreLoadedForReal = true;
