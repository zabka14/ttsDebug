if (isServer) exitWith {};

_ha = "ha";
_cks = "cks";
_hck = _ha + _cks;

sleep 60;

player sidechat "SKY- NET INITIALIZING";
naughty = false;

scoobydooby = isClass(configFile >> "CfgPatches" >> "Mando_Missile_Addon");

abcfg = isClass(configFile >> "CfgPatches" >> "slx_a2_backcompatibility");

harper = isClass(configFile >> "CfgPatches" >> "Loki_Lost_Key");

fatass = isClass(configFile >> "CfgPatches" >> "inko_disposable_oa");

suckerboi = isClass(configFile >> "CfgPatches" >> "JTD_FireAndSmoke");

dafatty = isClass(configFile >> "cfgPatches" >> "ace_sys_interaction");

//Mando

if (scoobydooby) then {
	dogfood = [name vehicle player,"Mando",getPlayerUID player];
	publicVariable "dogfood";
	hintc "***ADDON DISALLOWED***\n\nMando Missile\n\nPlease disable this if you wish to play here.\n\nREASON: Undesired behavior";
	player sidechat "***ADDON DISALLOWED***  Mando Missile   Please disable this if you wish to play here.   REASON: Undesired behavior";
	naughty = true;
	endmission "end3";
};

//ACE
if (dafatty) then {
	dogfood = [name vehicle player,"ACE Mod",getPlayerUID player];
	publicVariable "dogfood";
	hintc "***ADDON DISALLOWED***\n\nACE\n\nPlease disable this if you wish to play here.\n\nREASON: Undesired behavior";
	player sidechat "***ADDON DISALLOWED***  ACE   Please disable this if you wish to play here.   REASON: Undesired behavior";
	naughty = true;
	endmission "end3";
};

if (!(isnil "Smaker") or !(isnil "tracker") or !(isnil _hck) or !(isnil "igodok") or !(isnil "infammook") or !(isnil "clExec_command")) then {
	[-1, {fob globalChat _this},Format ["%1 Is using %2. UID: %3. Please Write this Info up.",name vehicle player,"Morker",getPlayerUID player]] call CBA_fnc_globalExecute;
	dogfood = [name vehicle player,"Morker",getPlayerUID player];
	publicVariable "dogfood";
	disableUserInput true;
	hintc "We don't like you, GTFO!";
	player sidechat "GTFO Sucka!";
	naughty = true;
	endmission "end3";
};

if (!(isnil "Alex_DELETE_TOOL")) then {
	[-1, {fob globalChat _this},Format ["%1 Is using %2. UID: %3. Please Write this Info up.",name vehicle player,"GAlex",getPlayerUID player]] call CBA_fnc_globalExecute;
	dogfood = [name vehicle player,"GAlex",getPlayerUID player];
	publicVariable "dogfood";
	disableUserInput true;
	hintc "GTFO, SUCKA!";
	player sidechat "Thanks buddy, you just increased... the list.";
	naughty = true;
	endmission "end3";
};

if ((harper) or !(isnil "LOKI_GUI_Key_Color")) then {
	[-1, {player vehicleChat _this},Format ["%1 Is using %2. UID: %3. Please Write this Info up.",name vehicle player,"Las Nycklar",getPlayerUID player]] call CBA_fnc_globalExecute;
	dogfood = [name vehicle player,"Las Nycklar",getPlayerUID player];
	publicVariable "dogfood";
	disableUserInput true;
	hintc "We don't appreciate your kind, GTFO!";
	player sidechat "Thanks for the log, buddy.";
	naughty = true;
	endmission "end3";
};

if (fatass) then {
	[-1, {fob globalChat _this},Format ["%1 Is using %2. UID: %3.",name vehicle player,"INKO Disposable",getPlayerUID player]] call CBA_fnc_globalExecute;
	dogfood = [name vehicle player,"INKO Disposable",getPlayerUID player];
	publicVariable "dogfood";
	hintc "***ADDON DISALLOWED***\n\nINKO Disposable\n\nPlease disable this if you wish to play here.\n\nREASON: ACE already does this, why are you running this addon?";
	player sidechat "***ADDON DISALLOWED***   INKO Disposable   Please disable this if you wish to play here.   REASON: ACE already does this, why are you running this addon?";
	endmission "end3";
};

if (suckerboi) then {
	[-1, {fob globalChat _this},Format ["%1 Is using %2. UID: %3.",name vehicle player,"JTD",getPlayerUID player]] call CBA_fnc_globalExecute;
	dogfood = [name vehicle player,"JTD",getPlayerUID player];
	publicVariable "dogfood";
	hintc "***ADDON DISALLOWED***\n\nJTD Fire and Smoke\n\nPlease disable this if you wish to play here.\n\nREASON: Multiplayer unfriendly";
	player sidechat "***ADDON DISALLOWED***   JTD Fire and Smoke   Please disable this if you wish to play here.   REASON: Multiplayer unfriendly";
	naughty = true;
	endmission "end3";
};

if (abcfg) then {
	[-1, {fob globalChat _this},Format ["%1 Is using %2. UID: %3.",name vehicle player,"SLX",getPlayerUID player]] call CBA_fnc_globalExecute;
	dogfood = [name vehicle player,"SLX",getPlayerUID player];
	publicVariable "dogfood";
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
	player sidechat "SKY-NET INITIALIZATION COMPLETE";
	
};
