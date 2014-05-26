
["ca\missions_pmc\data\ui_gps_ca.paa",-0.05,0.16] call bis_fnc_customGPS;
["init"] execVM "food.sqf";
["clientloop"] execVM "clientloop.sqf";
[0,0,0,["clientloop"]] execVM "gangs.sqf";
[] execVM "respawn.sqf";
[] execVM "itemactions.sqf";
[] execVM "petrolactions.sqf";
[] execVM "SpeedCams.sqf";
[] execVM "nametags.sqf";
[] execVM "initplayer.sqf";
[2] execVM "markers.sqf";
[] execVM "salaries.sqf";
[] execVM "pistolControl.sqf";
[] execVM "rifleControl.sqf";
[] execVM "RAV_lifter\InitMan.sqf";
[] execVM "Anti-Hack.sqf";
[] execVM "anticheat.sqf";
[] execVM "MOO.sqf";

["handy", 1] call INV_AddInvItem;
CodeBroadcast = [];
"CodeBroadcast" addPublicVariableEventHandler
{
    _params = _this select 1;
    if(local (_params select 0)) then
    {
        (_params select 1) execVM (_params select 2);
    };
};

player addEventHandler ["fired", {["fired", (_this select 4), (_this select 1)] execVM "stun.sqf";}];
//player addEventHandler ["fired", {["fired", (_this select 4), (_this select 1)] execVM "test.sqf";}];
player addEventHandler ["handleDamage", {_this call compile preprocessfile "sethit.sqf"}];
waituntil{vehicle player == player};
player addEventHandler ["fired",{_this execVM "fired.sqf"}];
[]spawn{while{true} do {sleep 1;
	if(player getVariable "flashed" and isciv) then
	{
		
		if (not(alive player)) exitWith {};
		2 cutText ["","WHITE OUT",0];
		sleep 5;
		2 cutText ["","WHITE IN",3];
		sleep 1;
		player setVariable ["flashed",false, true];
		
	};
	if(player getVariable "flashedB") then
	{
		
		if (not(alive player)) exitWith {};
		sleep 2.5;
		player say ["flash_bang",5];
		2 cutText ["","WHITE OUT",0];
		sleep 10;
		2 cutText ["","WHITE IN",3];
		sleep 1;
		player setVariable ["flashedB",false, true];
		
	};
};};

PlayerTeam = str(playerSide);
switch (PlayerTeam) do
{
    case "CIV": 
	{
	if(!debug)then{["civintro"] execVM "introcam.sqf";};
	[] execVM "actions\civactions.sqf";
	["handy", 1] call INV_AddInvItem;
	onKeyPress = compile preprocessFile "actions\CivonKeyPress.sqf";
	waituntil {!(IsNull (findDisplay 46))};
	(findDisplay 46) displaySetEventHandler ["KeyDown", "_this call onKeyPress"];
	};

    case "WEST": 
	{
	if(!debug)then{["copintro"] execVM "introcam.sqf";};
	[] execVM "actions\copactions.sqf";
	["handy", 1] call INV_AddInvItem;
	onKeyPress = compile preprocessFile "actions\CoponKeyPress.sqf";
	waituntil {!(IsNull (findDisplay 46))};
	(findDisplay 46) displaySetEventHandler ["KeyDown", "_this call onKeyPress"];
	};
    
    case "GUER": 
	{
	if(!debug)then{["govintro"] execVM "introcam.sqf";};
	[] execVM "actions\govactions.sqf";
	["handy", 1] call INV_AddInvItem;
	onKeyPress = compile preprocessFile "actions\govonKeyPress.sqf";
	waituntil {!(IsNull (findDisplay 46))};
	(findDisplay 46) displaySetEventHandler ["KeyDown", "_this call onKeyPress"];
	};
};

if(!isDedicated) then
{
	execVM "Scripts\statSave\loadAccount.sqf";
	hint "Bank Account Loaded!";

};