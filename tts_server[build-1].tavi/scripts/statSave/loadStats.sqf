//===========================================================================
_loadFromDBClient =
"
	_array = _this;
	_uid = _array select 0;
	if((getPlayerUID player) != _uid) exitWith {};
	_varName = _array select 1;
	_varValue = _array select 2;
	if(isNil '_varValue') exitWith {};
	if(_varName == 'moneyPlayer') then {Geld = _varValue;};
	if(_varName == 'moneyAccount') then {Kontostand = _varValue;};

	
	if(playerSide == west) then
	{
		if(_varName == 'moneyPlayerWest') then {Geld = _varValue;};
		if(_varName == 'moneyAccountWest') then {Kontostand = 50000;};
		if(_varName == 'WeaponsPlayerWest') then {{player addWeapon _x} forEach _varValue;};	
		if(_varName == 'MagazinesPlayerWest') then {{player addMagazine _x} forEach _varValue;};	
		if(_varName == 'LicensesWest') then {INV_LizenzOwner = _varValue;};
		if(_varName == 'InventoryWest') then {INV_InventarArray = _varValue;};
		if(_varName == 'savedVehiclesWest') then {INV_SavedVeh = _varValue;};
		};
	if(playerSide == civilian) then
	{
		if(_varName == 'moneyPlayerCiv') then {Geld = _varValue;};
		if(_varName == 'moneyAccountCiv') then {Kontostand = _varValue;};
		if(_varName == 'LicensesCiv') then {INV_LizenzOwner = _varValue;};
		if(_varName == 'InventoryCiv') then {INV_InventarArray = _varValue;};
		if(_varName == 'savedVehiclesCiv') then {INV_SavedVehCiv = _varValue;};
		if(_varName == 'INV_SavedVehicleAir') then {INV_SavedVehicleAir = _varValue;};
		if(_varName == 'INV_SavedVehBoat') then {INV_SavedVehBoat = _varValue;};
		if(_varName == 'WeaponsPlayerCiv') then {{player addWeapon _x} forEach _varValue;};	
		if(_varName == 'MagazinesPlayerCiv') then {{player addMagazine _x} forEach _varValue;};			
	};
	if(playerSide == east) then
	{
		if(_varName == 'moneyPlayerEast') then {Geld = _varValue;};
		if(_varName == 'moneyAccountEast') then {Kontostand = _varValue;};
		if(_varName == 'LicensesEast') then {INV_LizenzOwner = _varValue;};
		if(_varName == 'InventoryEast') then {INV_InventarArray = _varValue;};
		if(_varName == 'savedVehiclesEast') then {INV_SavedVeh = _varValue;};
	};
	if(playerSide == resistance) then
	{
		if(_varName == 'moneyPlayerRes') then {Geld = _varValue;};
		if(_varName == 'moneyAccountRes') then {Kontostand = _varValue;};
		if(_varName == 'WeaponsPlayerRes') then {{player addWeapon _x} forEach _varValue;};	
		if(_varName == 'MagazinesPlayerRes') then {{player addMagazine _x} forEach _varValue;};	
		if(_varName == 'LicensesRes') then {INV_LizenzOwner = _varValue;};
		if(_varName == 'InventoryRes') then {INV_InventarArray = _varValue;};
	};
";

loadFromDBClient = compile _loadFromDBClient;
//===========================================================================
_sendToServer =
"
	accountToServerLoad = _this;
	publicVariableServer 'accountToServerLoad';
";

sendToServer = compile _sendToServer;
//===========================================================================
"accountToClient" addPublicVariableEventHandler 
{
	(_this select 1) spawn loadFromDBClient;
};
//===========================================================================

statFunctionsLoaded = 1;


