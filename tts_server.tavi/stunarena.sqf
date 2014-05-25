_art         = _this select 0;

if (_art == "hit") then 

{

_shooter   = _this select 1;
_selection = _this select 2;
_damage    = _this select 3;
//_ammo      = _this select 4;
_geld = 'geld' call INV_GetItemAmount;


//if ((_selection != "head_hit") and _selection != "Melee" and _ammo != "B_9x18_SD") exitwith {};
if (lifestate player == "UNCONSCIOUS") exitwith {};
if(_damage < 0.01 or _selection == "")exitwith{};
//if(_selection == "Legs")exitwith{if(!canstand player)exitwith{};player setHit["Legs", 1];};
//if(_selection == "Hands")exitwith{if(handshit player == 1)exitwith{};player setHit["Hands", 1];};																													

if(isstunned) exitwith

	{
	//StunActiveTime = StunActiveTime + StunTimePerHit;	
	};

isstunned = true;
StunActiveTime = StunTimePerHit;

_shooterstring = format ["%1", _shooter];
if (_geld >= 1500 and _shooter != player) then {format ['if (player == %1) then {["geld", 1500] call INV_AddInventoryItem; player groupchat "You won $1500"};', _shooterstring] call broadcast;
["geld", -1500] spawn INV_AddinventoryItem;}; 

if (_geld >= 1500 and _shooter == player) then {["geld", -1500] spawn INV_AddinventoryItem};

if(vehicle player != player)then{player Action ["eject", vehicle player];player setVelocity [0,0,0]; sleep 0.5;};

"dynamicBlur" ppEffectEnable true; 
"dynamicBlur" ppEffectAdjust [10]; 
"dynamicBlur" ppEffectCommit 0; 
waitUntil {ppEffectCommitted "dynamicBlur"}; 
"dynamicBlur" ppEffectEnable true; 
"dynamicBlur" ppEffectAdjust [0]; 
"dynamicBlur" ppEffectCommit StunActiveTime;

//if(_selection != "Melee")then{(format["server globalchat ""%2 shot %1 in the nonlethal arena"";", name player, name _shooter]) call broadcast};																																																								
			
if(!(call isprone)) then

	{

	(format ["%1 switchmove ""%2"";", player, "adthpercmstpslowwrfldnon_4"]) call broadcast;
	
	}
	else
	{

	(format ["%1 switchmove ""%2"";", player, "adthppnemstpsraswpstdnon_2"]) call broadcast;

	};

/*
_weapons = weapons player - nonlethalweapons;

if (count _weapons > 0) then 

	{
												
	{player removeWeapon _x} forEach _weapons;																														
	call compile format ['waffenhalter%1 = "weaponholder" createVehicle getpos player; waffenhalter%1 setVehicleInit "this setVehicleVarName ""waffenhalter%1""; waffenhalter%1 = this;"; processInitCommands;', rolenumber];
	sleep 0.5;																		
	(format ["{waffenhalter%2 ADDWEAPONCARGO [_x, 1];} forEach %3; waffenhalter%2 setPosASL %4; if (isServer) then {[waffenhalter%2, 300] spawn ISSE_DeleteVehicle;};", player, rolenumber, _weapons, (getPosASL player)]) call broadcast;			
	sleep 0.5;	

	};

*/
if (isCop) then {
	StunActiveTime = StunActiveTime + 5;
};

while{StunActiveTime > 0} do {if(StunActiveTime > MaxStunTime)then{StunActiveTime = MaxStunTime}; StunActiveTime = StunActiveTime - 1; sleep 1;};

StunActiveTime = 0;

if (animationstate player != "civillying01") then 

	{
	
	isstunned = false;	
	player setpos getpos (loserdumparray select (floor(random(count loserdumparray))));
	if (_geld < 1500) then {player groupchat "You don't have enough money to play! Get some more!";player setpos getmarkerpos "nomoney";};
	if(player call ISSE_IsVictim)then{(format ["%1 switchmove ""%2"";", player, "amovppnemstpsnonwnondnon"]) call broadcast};																						
			
	};
																							
};