 _art = _this select 0;

if (_art == "use") then 

{

_item   = _this select 1;
_anzahl = _this select 2;
_closeVcl   = dummyobj;
_closest    = -1;


_stunbullets = ["8Rnd_9x18_MakarovSD"];
_pballbullets = ["cal68_fieldpaint","cal68_propaint1","cal68_propaint2","cal68_specpaint1","cal68_specpaint2","cal68_propaint"];
if (_art == "fired") then 
{
_ammo   = _this select 1;
_wep	= _this select 2;  
_bullet = nearestObject  [getpos player, _ammo];
	if(_wep == "Saiga12K")exitwith{};
	if (not(_ammo == (_stunbullets select 0))and(not(_ammo == (_stunbullets select 4)))) exitWith {};
_vel   = velocity _bullet;										
_pos   = getpos   _bullet;										
_teiler = (_stunbullets select 3);					
_bullet = (_stunbullets select 2) createVehicle _pos;
_bullet setVelocity [(_vel select 0)/_teiler, (_vel select 1)/_teiler, (_vel select 2)/_teiler];																																		
};

   { 

	if (not(isNull(_x))) then 

		{

		if ( ((pos _x) < 7) and ( ((pos _x) < _closest) or (_closest == -1) ) ) then 

			{

			_closest  = (pos _x);
			_closeVcl = _x;	
		
			};

		};

	} forEach INV_ServerVclArray;	
	{ 

	if (not(isNull(_x))) then 

		{

		if ( ((player distance _x) < 7) and ( ((player distance _x) < _closest) or (_closest == -1) ) ) then 

			{

			_closest  = (player distance _x);
			_closeVcl = _x;	
		
			};

		};

	} forEach INV_ServerVclArray;	



if ((fuel _closeVcl) < 0.1) exitWith {player groupChat "there is not enough fuel in this car to syphon";};

[_item, -1] call INV_AddInvItem;

if (not(_closest == -1)) then 

	{

	player playMove "AinvPknlMstpSlayWrflDnon_medic"; 
	player groupchat "Syphoning fuel...";
	_closeVcl setFuel 0; 
	sleep 6; 
	WaitUntil {animationState player != "AinvPknlMstpSlayWrflDnon_medic"}; 
	player groupChat localize "STRS_inv_items_empty_refueled";
	["kanister", 1] call INV_AddInvItem;

	};

};