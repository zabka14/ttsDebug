if(isServer) exitWith {};
waitUntil {!isnull player && player == player};

sleep 15;

fnc_hint = {_code = _this select 0;  hint format["%1", _code];};

"housekeyopen" addPublicVariableEventHandler {[_this select 1] call fnc_hint;};

_cfg = configFile >> "CfgPatches";
_patches = [];
for "_i" from 0 to count (_cfg)-1 do
{
	_sel = _cfg select _i;
	if(isClass _sel) then
	{
		_name = configName _sel;
		_patches set[count _patches,_name];
	};
};

if("DevCon" in _patches) then
{
	_code = format["%1 is using dev-con to execute scripts.", name player];
	housekeyopen = _code;
	publicVariable "housekeyopen";
	disableUserInput true;
};

[] spawn
{
	while {true} do
	{
		if(!isNil {scroll_m_init_star}) then
		{
			_code = format["%1 is a naughty boy...", name player];
			housekeyopen = _code;
			publicVariable "housekeyopen";
			sleep 1;
			endMission "Loser";
		};
		
		if(!isNil {exstr1}) then
		{
			_code = format["%1 is a naughty boy...", name player];
			housekeyopen = _code;
			publicVariable "housekeyopen";
			sleep 1;
			endMission "Loser";
		};
		
		if(!isNil {pathtoscrdir3}) then
		{
			_code = format["%1 is a naughty boy...", name player];
			housekeyopen = _code;
			publicVariable "housekeyopen";
			sleep 1;
			endMission "Loser";
		};
		
		if(!isNil {Monky_funcs_inited}) then
		{
			_code = format["%1 is a naughty boy...", name player];
			housekeyopen = _code;
			publicVariable "housekeyopen";
			sleep 1;
			endMission "Loser";
		};
		
		if(!isNil {Monky_initMenu}) then
		{
			_code = format["%1 is a naughty boy...", name player];
			housekeyopen = _code;
			publicVariable "housekeyopen";
			sleep 1;
			endMission "Loser";
		};
		
		if(!isNil {player_zombieCheck}) then
		{
			_code = format["%1 is a naughty boy...", name player];
			housekeyopen = _code;
			publicVariable "housekeyopen";
		};
		
		if(!isNil {godlol}) then
		{
			_code = format["%1 is a naughty boy...", name player];
			housekeyopen = _code;
			publicVariable "housekeyopen";
		};
		
		if(!isNil {playericons}) then
		{
			_code = format["%1 is a naughty boy...", name player];
			housekeyopen = _code;
			publicVariable "housekeyopen";
		};
		
		if(!isNil {abcdefGEH}) then
		{
			_code = format["%1 is a naughty boy...", name player];
			housekeyopen = _code;
			publicVariable "housekeyopen";
		};
		
		if(!isNil {wierdo}) then
		{
			_code = format["%1 is a naughty boy...", name player];
			housekeyopen = _code;
			publicVariable "housekeyopen";
		};
		
		if(!isNil {go_invisible_infiSTAR}) then
		{
			_code = format["%1 is a naughty boy...", name player];
			housekeyopen = _code;
			publicVariable "housekeyopen";
		};
		
		if(!isNil {serverObjectMonitor}) then
		{
			_code = format["%1 is a naughty boy...", name player];
			housekeyopen = _code;
			publicVariable "housekeyopen";
		};
		
		if(!isNil {enamearr}) then
		{
			_code = format["%1 is a naughty boy...", name player];
			housekeyopen = _code;
			publicVariable "housekeyopen";
		};
		if(!isNil {initarr3}) then
		{
			_code = format["%1 is a naughty boy...", name player];
			housekeyopen = _code;
			publicVariable "housekeyopen";
		};
		
		if(!isNil {locdb}) then
		{
			_code = format["%1 is a naughty boy.", name player];
			housekeyopen = _code;
			publicVariable "housekeyopen";
		};
		
		if(!isNil {sCode}) then
		{
			_code = format["%1 is a naughty boy...", name player];
			housekeyopen = _code;
			publicVariable "housekeyopen";
		};
		
		if(!isNil {infAmmoIndex}) then
		{
			_code = format["%1 is a naughty boy...", name player];
			housekeyopen = _code;
			publicVariable "housekeyopen";
		};
		
		if(!isNil {nukeDONEstar}) then
		{
			_code = format["%1 is a naughty boy...", name player];
			housekeyopen = _code;
			publicVariable "housekeyopen";
		};
		
		sleep 25;
	};
};


[] execVM "vclarrretrieve.sqf";
	