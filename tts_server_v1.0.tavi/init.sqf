////////////////////////////////

if (isServer) then 
enableSaving [false, false];
version        	= "1";
debug          	= false;
dedicatedServer = false;
copscount      	= 53;
civscount      	= 44;
playercount    	= 77;
debugarray     	= [];
execVM "briefing.sqf";
if(!debug)then{["basicintro"] execVM "introcam.sqf";};
call compile preprocessfile "triggers.sqf";
_h = [] execVM "playerarrays.sqf";																												
waitUntil{scriptDone  _h};
_h = [75, rolenumber] execVM "initfuncs.sqf";
waitUntil{scriptDone  _h};
_h = [playerarray, playerstringarray, !iscop] execVM "INVvars.sqf";
waituntil{scriptDone  _h};
_h = [] execVM "bankexec.sqf";
waitUntil{scriptDone  _h};
_h = [] execVM "initWPmissions.sqf";
waitUntil{scriptDone  _h};
_h = [] execVM "gfx.sqf";
waitUntil{scriptDone  _h};
_h = [] execVM "animList.sqf";
waitUntil{scriptDone  _h};
_h = []	execVM "miscfunctions.sqf";
waitUntil{scriptDone  _h};
_h = [] execVM "variables.sqf";
waitUntil{scriptDone  _h};
execVM "saveVars.sqf";
execVM "BTK\Cargo Drop\Start.sqf";
execVM "motd.sqf";
execVM "antibs.sqf";
//execVM "admintools\Activate.sqf";
//execVM "admintools\loop.sqf"; 
//[SkipTimeDay, SkipTimeNight, 1] execVM "skiptime.sqf"; 
setPitchBank = compile preprocessfile "setPitchBank.sqf";
BIS_Effects_Burn=compile preprocessFile "\ca\Data\ParticleEffects\SCRIPTS\destruction\burn.sqf";
if (isServer) then 
{
_initServer = execVM "init\InitServer.sqf";
waitUntil{scriptDone  _h};
};

for [{_i=0}, {_i < (count INV_ItemFabriken)}, {_i=_i+1}] do {_i execVM "facqueue.sqf"};

if(!dedicatedserver) then
{
[] execVM "mafiasyn\mafiafunc.sqf";
_initClient = execVM "init\InitClient.sqf";
//[] execVM "saver.sqf";
//[] execVM "loadclient.sqf";
[] execVM "ui.sqf";
[] execVM "speedgun.sqf";
//[] execVM "revivefuncs.sqf";
[] execVM "player_functions.sqf";
//[] execVM "R3F_revive\revive_init.sqf";
//[] execVM "governmentconvoy.sqf";

//[]execVM "Client\watermark.sqf";
};
if(isServer) then
{
	
	call compile preProcessFile "\iniDB\init.sqf";
	execVM "Scripts\statSave\serverGather.sqf";
};
if(!isDedicated) then
{	
	
	execVM "Scripts\statSave\saveToServer.sqf";
	waitUntil {!isNil "fn_SaveToServer"};
	execVM "Scripts\statSave\loadStats.sqf";
	waitUntil {!isNil "statFunctionsLoaded"};
	execVM "Scripts\statSave\saveLoop.sqf";
};
execVM "admintools\Activate.sqf";
execVM "admintools\loop.sqf"; 
