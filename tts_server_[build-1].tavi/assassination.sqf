_secondcounter = 0;
_minutecounter = 0;
_art = (_this select 3) select 0;

if (isNil "workplacejob_assassin_serverarray") then {workplacejob_assassin_serverarray = []};

if (_art == "serverloop") then 

{

while {true} do 

	{

	for [{_i=0}, {_i < (count workplacejob_assassin_serverarray)}, {_i=_i+1}] do 

		{

		if (isNull ((workplacejob_assassin_serverarray select _i) select 0)) then 

			{

			if (!(isNull ((workplacejob_assassin_serverarray select _i) select 1))) then 

				{	

				deleteVehicle ((workplacejob_assassin_serverarray select _i) select 1);
				deletemarker "targetmarker";

				};

			workplacejob_assassin_serverarray set [_i,""];
			workplacejob_assassin_serverarray = workplacejob_assassin_serverarray - [""];
			"if(iscop)then{player sidechat ""The threat to the VIP has been removed""}" call broadcast;
			sleep ((workplacejob_assassin_break)*60);			
			workplacejob_assassin_active = false; 
			publicvariable "workplacejob_assassin_active";
			
			};				

		};
	sleep 10;

	};

};

if (_art == "getajob_assassin") then 

{

if(workplacejob_assassin_active)exitWith{player groupChat "Il n'y a pas d'objectifs qui nécessitent d'assassinat.";};
if(workplacejob_assassion_failed)exitWith{player groupChat "Vous avez manqué un assassinat récemment, peut-être vous serez embauché à nouveau plus tard..";};

_array  = [[VIPspawn1, 10], [VIPspawn2, 10], [VIPspawn3, 10], [VIPspawn4, 10], [VIPspawn5, 10]];
_city   = (floor(random(count _array)));						
_pos    = (_array select _city) select 0;
_radius = (_array select _city) select 1;
_a1	= 0;

//delete any left overs from last time this ran
deletemarker "targetmarker";
deletevehicle VIPtarget;
deletevehicle assveh;
deletevehicle VIPbodyguard1;
deletevehicle VIPbodyguard2;

//creating VIP
_group = createGroup west;
VIPtarget = _group createUnit ["Functionary1_EP1", _pos, [], _radius, "FORM"]; 
VIPtarget setvehicleinit 'VIPtarget = this;this setVehicleVarName "VIPtarget";';
//give vip weapon and clips
VIPtarget addweapon "M9";
VIPtarget addmagazine "15Rnd_9x19_M9";
VIPtarget addmagazine "15Rnd_9x19_M9";
VIPtarget addmagazine "15Rnd_9x19_M9";
VIPtarget addmagazine "15Rnd_9x19_M9";
VIPtarget addmagazine "15Rnd_9x19_M9";
VIPtarget addmagazine "15Rnd_9x19_M9";

//creating body guards
VIPbodyguard1 = _group createUnit ["Functionary2_EP1", _pos, [], _radius, "FORM"];
VIPbodyguard1 setvehicleinit 'VIPbodyguard1 = this;this setVehicleVarName "VIPbodyguard1";';
VIPbodyguard1 addweapon "m9";
VIPbodyguard1 addmagazine "15Rnd_9x19_M9";
VIPbodyguard1 addmagazine "15Rnd_9x19_M9";
VIPbodyguard1 addmagazine "15Rnd_9x19_M9";
VIPbodyguard1 addmagazine "15Rnd_9x19_M9";

VIPbodyguard2 = _group createUnit ["Functionary2_EP1", _pos, [], _radius, "FORM"];
VIPbodyguard2 setvehicleinit 'VIPbodyguard2 = this;this setVehicleVarName "VIPbodyguard2";';
VIPbodyguard2 addweapon "m9";
VIPbodyguard2 addmagazine "15Rnd_9x19_M9";
VIPbodyguard2 addmagazine "15Rnd_9x19_M9";
VIPbodyguard2 addmagazine "15Rnd_9x19_M9";
VIPbodyguard2 addmagazine "15Rnd_9x19_M9";



processInitCommands;

// make viptargets car
assveh = createVehicle ["VolhaLimo_TK_CIV_EP1", _pos, [] , 3, "NONE"];
assveh setVehicleInit
"assveh = this;
this setVehicleVarName ""assveh"";
this setVehicleLock ""locked"";
this setAmmoCargo 0;
  ";
  publicvariable "assveh";
processInitCommands;
// put vip inside the car
if ((!(VIPtarget in assveh)) and (alive VIPtarget))
	then{
		VIPtarget moveInDriver assveh;
		VIPbodyguard1 doFollow VIPtarget;
		VIPbodyguard2 doFollow VIptarget;
		
		//VIPtarget assignAsDriver assveh;
		VIPbodyguard1 moveInCargo assveh;
		//VIPbodyguard1 assignAsCargo assveh;
		VIPbodyguard2 moveInCargo assveh;
		//VIPbodyguard2 assignAsCargo assveh;
		
		
	};











format["workplacejob_assassin_serverarray = workplacejob_assassin_serverarray + [[%1, VIPtarget]];", player] call broadcast;

_markerobj = createMarker ["targetmarker",[0,0]];																				
_markername= "targetmarker";																														
_markerobj setMarkerShape "ICON";								
"targetmarker" setMarkerType "Marker";										
"targetmarker" setMarkerColor "ColorRed";																														
"targetmarker" setMarkerText "Assassination target";								
_markername SetMarkerPos _start;

workplacejob_assassin_active = true; publicvariable "workplacejob_assassin_active";
																
player groupChat "La cible de VIP a été marqué sur la carte. Tuez-le avant que la police le mette en sécurité.";

"if (iscop) then {player sideChat ""Quelqu'un essaie de tuer un VIP du gouvernement. La cible a été marqué sur la carte. Sauver la cible avant qu'il ne soit trop tard!""};" call broadcast;

player groupchat "Les policiers sont sur ​​vous et le VIP connaît votre venue, dépêchez-vous!";
(format['if(!("Assassin" in %1_reason))then{%1_reason = %1_reason + ["Assassin"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + 50000;', player]) call broadcast;
VIPtarget domove getmarkerpos "policebase";
while {true} do 

	{

	/* removed this so the mission keeps going even if assassin dies
	if(!alive player)exitwith
		{
		deletevehicle VIPtarget;
		deletemarker "targetmarker";
				
		};
	*/
	"if(alive player and isciv and player distance assveh <= 150)then{titleText [""Le gouvernement fonctionne dans ce domaine! Demis tours ou vous serez fusillé!"", ""plain down""]};" call broadcast;
	"targetmarker" setmarkerpos getpos VIPtarget;
	if (_secondcounter >= 15) then
		{
		_group setBehaviour "AWARE";
		_group setSpeedMode "NORMAL";
		VIPtarget domove getmarkerpos "policebase";
		_secondcounter = 0;
		};
		
	if (_minutecounter >= 1200) exitWith
	
		{
		"server globalchat ""Le temps est ecoulé..."";" call broadcast;
		sleep 3;
		deletevehicle VIPtarget;
		deletemarker "targetmarker";
		deletevehicle assveh;
		deletevehicle VIPbodyguard1;
		deletevehicle VIPbodyguard2;
		_minutecounter = 0;
		};
				
	if (!alive VIPtarget and alive player) exitWith 
	
		{
			
		kontostand = kontostand + 100000;
		player groupchat "Beau travail. Cible eliminer. 100 000 $ ont été transféré sur votre compte.";
		sleep 10;
		"server globalchat ""Le VIP a été tué!"";" call broadcast;
		(format['if(!("Assassinated VIP" in %1_reason))then{%1_reason = %1_reason + ["Assassinated VIP"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + 25000;', player]) call broadcast;
		deletevehicle VIPtarget;
		deletemarker "targetmarker";
		deletevehicle assveh;
		deletevehicle VIPbodyguard1;
		deletevehicle VIPbodyguard2;
		
		};

	if(VIPtarget distance getmarkerpos "policebase" < 100) exitwith

		{

		"
		server globalchat ""Le VIP a été sauvé!"";
		_copplayernumber = playersNumber west;
		_copbonus = 40000;
		if (iscop) then {Kontostand = (Kontostand + _copbonus); player sidechat format[""you received $%1 for the successful rescue of the VIP"", _copbonus];};
		" call broadcast;
		sleep 2;
		player groupchat "Le VIP a été sauvé! Echec de la mission";
		workplacejob_assassion_failed = true;
		deletevehicle VIPtarget;
		deletemarker "targetmarker";
		deletevehicle assveh;
		deletevehicle VIPbodyguard1;
		deletevehicle VIPbodyguard2;
		
		};
	_minutecounter = _minutecounter + 1;
	_secondcounter = _secondcounter + 1;
	sleep 1;

	};
deletevehicle VIPtarget;
deletemarker "targetmarker";
deletevehicle assveh;
deletevehicle VIPbodyguard1;
deletevehicle VIPbodyguard2;																				
sleep ((workplacejob_assassin_break)*60);			
workplacejob_assassin_active = false; 
publicvariable "workplacejob_assassin_active";

if (workplacejob_assassion_failed) then 

	{

	sleep ((workplacejob_assassin_break)*60);
	workplacejob_assassion_failed = false;	

	};

};








// written by eddie vedder