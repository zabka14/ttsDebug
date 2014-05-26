_array = _this select 3;
_art = _array select 0;
_type = _array select 1;

if (_art == "Burn") then
{
		
	if (_type == "Marijuana") then
	{
	
	_plant = nearestObject [player, "as_p_fiberPlant_EP1"];
	
	deleteVehicle _plant;
	player groupChat "Tu as brûlé le pied de marijuana";
	};

	if (_type == "Heroin") then
	{
	
	_plant = nearestObject [player, "as_b_PinusM1s_EP1"];
	
	deleteVehicle _plant;
	player groupChat "Vous brulez le pied de pavot";
	};
	
	
	
	if (_type == "Cocaine") then
	{
	
	_plant = nearestObject [player, "as_b_PistaciaL1s_EP1"];
	
	deleteVehicle _plant;
	player groupChat "Vous brulez le pied de coca";
	};

	if (iscop) then {['geld', 3000] call INV_AddInvItem;};
		
};

if (_art == "Harvest") then
{

	if (_type == "Marijuana") then
	{
		_Weight = call INV_GetOwnWeight;
		_Plant = nearestobject [player, "as_p_fiberPlant_EP1"];
		deletevehicle _Plant;
		
		if (_Weight > 59) exitwith { player groupchat localize "STRS_inv_buyitems_get_zuschwer"; };
		if (IsCop) exitwith { player groupchat "Les flics ne peuvent pas faire ca"; };
		
		['Unprocessed_Marijuana', +(5)] call INV_AddInvItem;
		['MarijuanaSeed', +(2)] call INV_AddInvItem;
		
		player groupchat "Vous recoltez des têtes";
	};
	
	if (_type == "Heroin") then
	{
		_Weight = call INV_GetOwnWeight;
		_Plant = nearestobject [player, "as_b_PinusM1s_EP1"];
		deletevehicle _Plant;
		
		if (_Weight > 59) exitwith { player groupchat localize "STRS_inv_buyitems_get_zuschwer"; };
		if (IsCop) exitwith { player groupchat "Les flics ne peuvent pas faire ca"; };
		
		['Unprocessed_Heroin', +(5)] call INV_AddInvItem;
		['HeroinSeed', +(2)] call INV_AddInvItem;
		
		player groupchat "Vous recoltez vos pied de pavot";
	};

	if (_type == "Cocaine") then
	{
		_Weight = call INV_GetOwnWeight;
		_Plant = nearestobject [player, "as_b_PistaciaL1s_EP1"];
		deletevehicle _Plant;
		
		if (_Weight > 59) exitwith { player groupchat localize "STRS_inv_buyitems_get_zuschwer"; };
		if (IsCop) exitwith { player groupchat "Les flics ne peuvent pas faire ca"; };
		
		['Unprocessed_Cocaine', +(5)] call INV_AddInvItem;
		['CocaineSeed', +(2)] call INV_AddInvItem;
		
		player groupchat "You harvested Coca Plants";
	};
	
};



