if (isServer) exitWith {};
if ((getplayeruid player) in adminlevel1) exitwith {};

sleep 60;

player sidechat "INITIALIZING";
naughty = false;

da_mando = isClass(configFile >> "CfgPatches" >> "Mando_Missile_Addon");

da_slx = isClass(configFile >> "CfgPatches" >> "slx_a2_backcompatibility");

da_lostkey = isClass(configFile >> "CfgPatches" >> "Loki_Lost_Key");

da_inkodisp = isClass(configFile >> "CfgPatches" >> "inko_disposable_oa");

da_jtd = isClass(configFile >> "CfgPatches" >> "JTD_FireAndSmoke");

da_ACE = isClass(configFile >> "cfgPatches" >> "ace_sys_interaction");

//Mando

if (da_mando) then {
	CheatInfo = [name vehicle player,"Mando",getPlayerUID player];
	publicVariable "CheatInfo";
	hintc "***ADDON DISALLOWED***\n\nMando Missile\n\nPlease disable this if you wish to play here.\n\nREASON: Undesired behavior";
	player sidechat "***ADDON DISALLOWED***  Mando Missile   Please disable this if you wish to play here.   REASON: Undesired behavior";
	naughty = true;
	endmission "end3";
};

//ACE
if (da_ACE) then {
	CheatInfo = [name vehicle player,"ACE Mod",getPlayerUID player];
	publicVariable "CheatInfo";
	hintc "***ADDON DISALLOWED***\n\nACE\n\nPlease disable this if you wish to play here.\n\nREASON: Undesired behavior";
	player sidechat "***ADDON DISALLOWED***  ACE   Please disable this if you wish to play here.   REASON: Undesired behavior";
	naughty = true;
	endmission "end3";
};

if (!(isnil "Smaker") or !(isnil "tracker") or !(isnil "hacks") or !(isnil "igodok") or !(isnil "infammook") or !(isnil "clExec_command")) then {
	[-1, {fob globalChat _this},Format ["%1 Is using %2. UID: %3. Please Write this Info up.",name vehicle player,"Morker",getPlayerUID player]] call CBA_fnc_globalExecute;
	CheatInfo = [name vehicle player,"Morker",getPlayerUID player];
	publicVariable "CheatInfo";
	disableUserInput true;
	hintc "You are using a cheat/hack. Your Battleye and UID has been added to our log file for cheaters. Goodbye.";
	player sidechat "You are using a cheat/hack. Your Battleye and UID has been added to our log file for cheaters. Goodbye.";
	naughty = true;
	endmission "end3";
};

if (!(isnil "Alex_DELETE_TOOL")) then {
	[-1, {fob globalChat _this},Format ["%1 Is using %2. UID: %3. Please Write this Info up.",name vehicle player,"GAlex",getPlayerUID player]] call CBA_fnc_globalExecute;
	CheatInfo = [name vehicle player,"GAlex",getPlayerUID player];
	publicVariable "CheatInfo";
	disableUserInput true;
	hintc "You are using a cheat/hack. Your Battleye and UID has been added to our log file for cheaters. Goodbye.";
	player sidechat "You are using a cheat/hack. Your Battleye and UID has been added to our log file for cheaters. Goodbye.";
	naughty = true;
	endmission "end3";
};

if ((da_lostkey) or !(isnil "LOKI_GUI_Key_Color")) then {
	[-1, {player vehicleChat _this},Format ["%1 Is using %2. UID: %3. Please Write this Info up.",name vehicle player,"Las Nycklar",getPlayerUID player]] call CBA_fnc_globalExecute;
	CheatInfo = [name vehicle player,"Las Nycklar",getPlayerUID player];
	publicVariable "CheatInfo";
	disableUserInput true;
	hintc "You are using a cheat and hack. Your Battleye and UID has been added to our log file for cheaters. Goodbye.";
	player sidechat "You are using a cheat and hack. Your Battleye and UID has been added to our log file for cheaters. Goodbye.";
	naughty = true;
	endmission "end3";
};

if (da_inkodisp) then {
	[-1, {fob globalChat _this},Format ["%1 Is using %2. UID: %3.",name vehicle player,"INKO Disposable",getPlayerUID player]] call CBA_fnc_globalExecute;
	CheatInfo = [name vehicle player,"INKO Disposable",getPlayerUID player];
	publicVariable "CheatInfo";
	hintc "***ADDON DISALLOWED***\n\nINKO Disposable\n\nPlease disable this if you wish to play here.\n\nREASON: ACE already does this, why are you running this addon?";
	player sidechat "***ADDON DISALLOWED***   INKO Disposable   Please disable this if you wish to play here.   REASON: ACE already does this, why are you running this addon?";
	endmission "end3";
};

if (da_jtd) then {
	[-1, {fob globalChat _this},Format ["%1 Is using %2. UID: %3.",name vehicle player,"JTD",getPlayerUID player]] call CBA_fnc_globalExecute;
	CheatInfo = [name vehicle player,"JTD",getPlayerUID player];
	publicVariable "CheatInfo";
	hintc "***ADDON DISALLOWED***\n\nJTD Fire and Smoke\n\nPlease disable this if you wish to play here.\n\nREASON: Multiplayer unfriendly";
	player sidechat "***ADDON DISALLOWED***   JTD Fire and Smoke   Please disable this if you wish to play here.   REASON: Multiplayer unfriendly";
	naughty = true;
	endmission "end3";
};

if (da_slx) then {
	[-1, {fob globalChat _this},Format ["%1 Is using %2. UID: %3.",name vehicle player,"SLX",getPlayerUID player]] call CBA_fnc_globalExecute;
	CheatInfo = [name vehicle player,"SLX",getPlayerUID player];
	publicVariable "CheatInfo";
	hintc "***ADDON DISALLOWED***\n\nSLX\n\nPlease disable this if you wish to play here.\n\nREASON: Multiplayer unfriendly";
	player sidechat "***ADDON DISALLOWED***   SLX   Please disable this if you wish to play here.   REASON: Multiplayer unfriendly";
	naughty = true;
	endmission "end3";
};

if (naughty) then {
	player sidechat "YOU WILL NOW BE DISCONNECTED";
	player action ["eject", vehicle player];
	sleep 5;
	endmission "end3";
};

if (!naughty) exitWith {
};
