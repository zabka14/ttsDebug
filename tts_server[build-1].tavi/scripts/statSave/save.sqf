_pistol = (saveWeaponPistol select 0);
if(isNil "_pistol") then {_pistol = "";};
_rifle = (saveWeaponRifle select 0);
if(isNil "_rifle") then {_rifle = "";};
[getPlayerUID player, getPlayerUID player, "Account Name", name player] call fn_SaveToServer;	
	
	if(playerSide == west) then
	{
		[getPlayerUID player, getPlayerUID player, "moneyAccountWest", Kontostand] call fn_SaveToServer;
		[getPlayerUID player, getPlayerUID player, "WeaponsPlayerWest", (weapons player) + [_pistol] + [_rifle]] call fn_SaveToServer;
		[getPlayerUID player, getPlayerUID player, "MagazinesPlayerWest", magazines player] call fn_SaveToServer;
		[getPlayerUID player, getPlayerUID player, "LicensesWest", INV_LizenzOwner] call fn_SaveToServer;
		[getPlayerUID player, getPlayerUID player, "InventoryWest", INV_InventarArray] call fn_SaveToServer;
		[getPlayerUID player, getPlayerUID player, "savedVehiclesWest", INV_SavedVeh] call fn_SaveToServer;
		[getPlayerUID player, getPlayerUID player, "INV_SavedVehLandCop", INV_SavedVehLandCop] call fn_SaveToServer;
		[getPlayerUID player, getPlayerUID player, "INV_SavedVehicleAir", INV_SavedVehicleAir] call fn_SaveToServer;
		[getPlayerUID player, getPlayerUID player, "INV_SavedVehBoat", INV_SavedVehBoat] call fn_SaveToServer;		
				
		
	};
	if(playerSide == resistance) then
	{
		[getPlayerUID player, getPlayerUID player, "moneyAccountRes", Kontostand] call fn_SaveToServer;
		[getPlayerUID player, getPlayerUID player, "WeaponsPlayerRes", (weapons player) + [_pistol] + [_rifle]] call fn_SaveToServer;
		[getPlayerUID player, getPlayerUID player, "MagazinesPlayerRes", magazines player] call fn_SaveToServer;
		[getPlayerUID player, getPlayerUID player, "LicensesRes", INV_LizenzOwner] call fn_SaveToServer;
		[getPlayerUID player, getPlayerUID player, "InventoryRes", INV_InventarArray] call fn_SaveToServer;
	};
	if(playerSide == civilian) then
	{
		[getPlayerUID player, getPlayerUID player, "moneyAccountCiv", Kontostand] call fn_SaveToServer;
		[getPlayerUID player, getPlayerUID player, "WeaponsPlayerCiv", [""]] call fn_SaveToServer;
		[getPlayerUID player, getPlayerUID player, "MagazinesPlayerCiv", [""]] call fn_SaveToServer;
		[getPlayerUID player, getPlayerUID player, "LicensesCiv", INV_LizenzOwner] call fn_SaveToServer;
		[getPlayerUID player, getPlayerUID player, "InventoryCiv", INV_InventarArray] call fn_SaveToServer;
		[getPlayerUID player, getPlayerUID player, "savedVehiclesCiv", INV_SavedVehCiv] call fn_SaveToServer;
		[getPlayerUID player, getPlayerUID player, "INV_SavedVehicleAir", INV_SavedVehicleAir] call fn_SaveToServer;
		[getPlayerUID player, getPlayerUID player, "INV_SavedVehBoat", INV_SavedVehBoat] call fn_SaveToServer;			
	};
	if(playerSide == east) then
	{
		[getPlayerUID player, getPlayerUID player, "moneyAccountEast", Kontostand] call fn_SaveToServer;
		[getPlayerUID player, getPlayerUID player, "LicensesEast", INV_LizenzOwner] call fn_SaveToServer;
		[getPlayerUID player, getPlayerUID player, "InventoryEast", INV_InventarArray] call fn_SaveToServer;
		[getPlayerUID player, getPlayerUID player, "savedVehiclesEast", INV_SavedVeh] call fn_SaveToServer;
	};	