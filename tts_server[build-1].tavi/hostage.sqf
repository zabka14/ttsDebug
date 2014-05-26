
//-SCRIPT CONDITONS-//
//Script Begins: On Server Initialization
//Script Ends  : On EOF



_secondcounter = 0;
_minutecounter = 0;
_art = (_this select 3) select 0;

if (isNil "workplacejob_hostage_serverarray") then {workplacejob_hostage_serverarray = []};

if (_art == "serverloop") then 

{

while {true} do 

	{

	for [{_i=0}, {_i < (count workplacejob_hostage_serverarray)}, {_i=_i+1}] do 

		{

		if (isNull ((workplacejob_hostage_serverarray select _i) select 0)) then 

			{

			if (!(isNull ((workplacejob_hostage_serverarray select _i) select 1))) then 

				{	

				deleteVehicle ((workplacejob_hostage_serverarray select _i) select 1);
				deletemarker "htargetmarker";

				};

			workplacejob_hostage_serverarray set [_i,""];
			workplacejob_hostage_serverarray = workplacejob_hostage_serverarray - [""];
			//"if(iscop)then{player sidechat ""La menace sur l'otage a été supprimé""}" call broadcast;
			sleep ((workplacejob_hostage_break)*60);			
			workplacejob_hostage_active = false; 
			publicvariable "workplacejob_hostage_active";
			
			};				

		};
	sleep 10;

	};

};

if (_art == "getajob_hostage") then 

{

if(workplacejob_hostage_active)exitWith{player groupChat "Il n'y a pas d'otages.";};
if(workplacejob_hostage_failed)exitWith{player groupChat "Vous avez echoué à une mission d'otage recament, esseyez plus tard.";};

_array  = [[Hostagespawn1, 1], [Hostagespawn2, 1]];
_city   = (floor(random(count _array)));						
_pos    = (_array select _city) select 0;
_radius = (_array select _city) select 1;
_a1	= 0;

//delete any left overs from last time this ran
deletemarker "htargetmarker";
deletevehicle hostage1;


//creating VIP
_group = createGroup east;
hostage1 = _group createUnit ["Functionary1_EP1", _pos, [], _radius, "FORM"]; 
hostage1 setvehicleinit 'hostage1 = this;this setVehicleVarName "hostage1";';

processInitCommands;


//  ";

// put vip inside the car



format["workplacejob_hostage_serverarray = workplacejob_hostage_serverarray + [[%1, hostage1]];", player] call broadcast;

_markerobj = createMarker ["htargetmarker",[0,0]];																				
_markername= "htargetmarker";																														
_markerobj setMarkerShape "ICON";								
"htargetmarker" setMarkerType "Marker";										
"htargetmarker" setMarkerColor "ColorRed";																														
"htargetmarker" setMarkerText "Hostage target";								
_markername SetMarkerPos _start;

workplacejob_hostage_active = true; publicvariable "workplacejob_hostage_active";
																
player groupChat "L'otage est marqué sur la map ne laissez pas la police le prendre.";

"if (iscop) then {player sideChat ""Quelqu'un essaie de prendre un otage. L'otage a été marqué sur la carte. Arretez le preneur d'otage avant qu'il ne soit trop tard!""};" call broadcast;

player groupchat "Les policiers sont sur ​​vous, dépêchez-vous!";
(format['if(!("Assassin" in %1_reason))then{%1_reason = %1_reason + ["Hostage Taker"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + 150000;', player]) call broadcast;
//hostage1 domove getmarkerpos "policebase";
while {true} do 

	{

	/* removed this so the mission keeps going even if assassin dies
	//if(!alive player)exitwith
	//	{
	//	deletevehicle hostage1;
	//	deletemarker "htargetmarker";
				
	//	};
	*/
	"htargetmarker" setmarkerpos getpos hostage1;
	
		
	if (_minutecounter >= 1800 and alive player) exitWith
	
		{
		streetrep = streetrep + 2;
		kontostand = kontostand + 500000;
		player groupchat "Bravo, vous avez gardé en otage pendant 30 minutes, $ 500,000 a été transféré à votre compte.";
		sleep 10;
		"server globalchat ""Le preneur d'otage a gagné, il a gardé l'otage pendant 30 minutes."";" call broadcast;
		sleep 1;
		deletevehicle hostage1;
		deletemarker "htargetmarker";
		_minutecounter = 0;
		};
				
	if (!alive hostage1 and alive player) exitWith 
	
		{
			
		player groupchat "L'otage est mort..!!";
		sleep 5;
		"server globalchat ""L'otage est mort..!"";" call broadcast;
		//(format['if(!("Assassinated VIP" in %1_reason))then{%1_reason = %1_reason + ["Assassinated VIP"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + 25000;', player]) call broadcast;
		deletevehicle hostage1;
		deletemarker "htargetmarker";
			
		};

	if(hostage1 distance getmarkerpos "hostagezone" > 125) exitwith

		{

		"
		server globalchat ""The Hostage has escaped! Cops get $100000"";
		_copplayernumber = playersNumber west;
		_copbonus = 100000;
		if (iscop) then {Kontostand = (Kontostand + _copbonus); player sidechat format[""vous recevez $%1 car le preneur d'otage a fuit la region"", _copbonus];};
		" call broadcast;
		sleep 2;
		player groupchat "L'otage s'est échappé de la zone de confinement, gardez à l'intérieur la prochaine fois!";
		workplacejob_hostage_failed = true;
		deletevehicle hostage1;
		deletemarker "htargetmarker";
		
		
		};


	if(player distance hostage1 > 200) exitwith

		{

		"
		server globalchat ""Le preneur d'otages a perdu!"";
		_copplayernumber = playersNumber west;
		_copbonus = 60000;
		if (iscop) then {Kontostand = (Kontostand + _copbonus); player sidechat format[""Vous recevez $%1 car l'otage est en lieux sur"", _copbonus];};
		" call broadcast;
		sleep 2;
		player groupchat "L'otage est sauvé, mission echouée";
		workplacejob_hostage_failed = true;
		deletevehicle hostage1;
		deletemarker "htargetmarker";
		
		
		};





	_minutecounter = _minutecounter + 1;
	_secondcounter = _secondcounter + 1;
	hintsilent format["Time past: %1 m", round(_minutecounter/60)];
    	hintsilent format["Time past: %1 m", round(_minutecounter/60)];
	sleep 1;

	};
deletevehicle hostage1;
deletemarker "htargetmarker";
										
sleep ((workplacejob_hostage_break)*60);			
workplacejob_hostage_active = false; 
publicvariable "workplacejob_hostage_active";

if (workplacejob_hostage_failed) then 

	{

	sleep ((workplacejob_hostage_break)*60);
	workplacejob_hostage_failed = false;	

	};

};








// written by Wulfer, template by Eddie Vedder