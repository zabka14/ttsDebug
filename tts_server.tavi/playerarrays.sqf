//MODIFIS
//////////////////////////////////////////////
/////////////////////////////////////////////

waitUntil {((alive player) or (local server))};

if(local server and !local player)then{dedicatedServer = true};	
if(local server and local player)then{hostedServer = true};

playerstringarray = ["Civ1","Civ2","Civ3","Civ4","Civ5","Civ6","Civ7","Civ8","Civ9","Civ10","Civ11","Civ12","Civ13","Civ14","Civ15","Civ16","Civ17","Civ18","Civ19","Civ20","Civ21","Civ22","Civ23","Civ24","Civ25","Civ26","Civ27","Civ28","Civ29","Civ30","civ31","civ32","civ33","civ34","civ35","civ36","civ37","civ38","civ39","civ40","civ41","civ42","civ43","civ44","civ45","civ46","civ47","civ48","civ49","civ50","civ51","civ52","civ53","civ54","civ55","civ56","civ57","civ58","civ59","civ60","civ61","civ62","civ63","civ64","cop1","cop2","cop3","cop5","cop6","cop7","cop8","cop9","cop10","cop11","cop12","cop14","cop15","cop17","cop18","cop19","cop20","cop20A","cop21","cop22","cop22A","cop23","cop24","cop25","cop26","cop27","cop28"];

for [{_i=0}, {_i < (count playerstringarray)}, {_i=_i+1}] do {if (isNil (playerstringarray select _i)) then { call compile format["%1 = objNull;", (playerstringarray select _i)]; }; };

playerarray = [civ1,civ2,civ3,civ4,civ5,civ6,civ7,civ8,civ9,civ10,civ11,civ12,civ13,civ14,civ15,civ16,civ17,civ18,civ19,civ20,civ21,civ22,civ23,civ24,civ25,civ26,civ27,civ28,civ29,civ30,civ31,civ32,civ33,civ34,civ35,civ36,civ37,civ38,civ39,civ40,civ41,civ42,civ43,civ44,civ45,civ46,civ47,civ48,civ49,civ50,civ51,civ52,civ53,civ54,civ55,civ56,civ57,civ58,civ59,civ60,civ61,civ62,civ63,civ64,cop1,cop2,cop3,cop4,cop5,cop6,cop7,cop8,cop9,cop10,cop11,cop12,cop13,cop14,cop15,cop16,cop17,cop18,cop19,cop20,cop21,cop22];
civstringarray = ["Civ1","Civ2","Civ3","Civ4","Civ5","Civ6","Civ7","Civ8","Civ9","Civ10","Civ11","Civ12","Civ13","Civ14","Civ15","Civ16","Civ17","Civ18","Civ19","Civ20","Civ21","Civ22","Civ23","Civ24","Civ25","Civ26","Civ27","Civ28","Civ29","Civ30","civ31","civ32","civ33","civ34","civ35","civ36","civ37","civ38","civ39","civ40","civ41","civ42","civ43","civ44","civ45","civ46","civ47","civ48","civ49","civ50","civ51","civ52","civ53","civ54","civ55","civ56","civ57","civ58","civ59","civ60","civ61","civ62","civ63","civ64"];
civarray = [civ1,civ2,civ3,civ4,civ5,civ6,civ7,civ8,civ9,civ10,civ11,civ12,civ13,civ14,civ15,civ16,civ17,civ18,civ19,civ20,civ21,civ22,civ23,civ24,civ25,civ26,civ27,civ28,civ29,civ30,civ31,civ32,civ33,civ34,civ35,civ36,civ37,civ38,civ39,civ40,civ41,civ42,civ43,civ44,civ45,civ46,civ47,civ48,civ49,civ50,civ51,civ52,civ53,civ54,civ55,civ56,civ57,civ58,civ59,civ60,civ61,civ62,civ63,civ64];
copstringarray = ["cop1","cop2","cop3","cop4","cop5","cop6","cop7","cop8","cop9","cop10","cop11","cop12","cop14","cop15","cop17","cop18","cop19","cop20","cop20A","cop21","cop22","cop22A","cop23","cop24","cop25","cop26","cop27","cop28"];
//THE ARRAY OF ALL THE COPS
coparray = [cop1,cop2,cop3,cop4,cop5,cop6,cop7,cop8,cop9,cop10,cop11,cop12,cop14,cop15,cop17,cop18,cop19,cop20,cop20A,cop21,cop22,cop22A,cop23,cop24,cop25,cop26,cop27,cop28];

//PATROL Officer Slots
patrolwhitelist = [cop3,cop4,cop5,cop6,cop7,cop8,cop9,cop10,cop11,cop12,cop14,cop15,cop17,cop18,cop19,cop20,cop20A,cop21,cop22,cop22A,cop23,cop24,cop25,cop26,cop27,cop28];

 //Slots
copadminslots = [cop1,cop2];
adminallowedarray  = ["143317702","248081990"];

specialofficerarray = ["143317702","248081990"];

swatallowedarray = ["143317702","248081990"];

patrolallowedarray = ["143317702","248081990"];

rolenumber = 0; 

for [{_i=0}, {_i < (count playerarray)}, {_i=_i+1}] do 

{ 

call compile format["if ((playerarray select %1) == player) then {rolenumber = (%1 + 1);}", _i];

};

role = player;
	

if (player in coparray) then 

{
										
iscop          = true;
isswat		   = false;
isciv	       = false;							
rolecop        = 1;								
sidenumber     = rolenumber - civscount;			
longrolenumber = 1100 + sidenumber;			
rolestring     = format["Cop%1", sidenumber];

};

_civnum = player;
{
	if (_civnum == _x) then

	{

	isswat = true;
	iscop  = true;
	isciv  = false;

	};
} foreach swatmemberarray;

if (player in civarray) then 

{

isciv          = true;						
iscop          = false;	
isswat		   = false;											
rolecop        = 0;								
sidenumber     = rolenumber;				
longrolenumber = 1000 + sidenumber;										
rolestring     = format["Civ%1", sidenumber];

};




if (typeName player == "OBJECT") then {
	if (!isNull player) then {
		call compile format["old%1 = objnull", player];
	};
};

	_uid  = getPlayerUID player;
	_civnum = player;
	
{
	if (_civnum == _x) then
	{
		if !(_uid in adminallowedarray) then
		{
			player groupChat "Tu es pas whitelist!";
			sleep 10;
			failMission "END1";
		}
		else
		{
			player groupChat "Tu es connecte en policier!"
		};
	};
} foreach copadminslots;
	
	
{
	if (_civnum == _x) then
	{
		if !(_uid in patrolallowedarray) then
		{
			player groupChat "Tu es pas whitelist!";
			sleep 10;
			failMission "END1";
		}
		else
		{
			player groupChat "Tu es connecte en policier!"
		};
	};
} foreach patrolwhitelist;

{
	if (_civnum == _x) then
	{
		if !(_uid in swatallowedarray) then
		{
			player groupChat "Tu es pas whitelist!";
			sleep 10;
			failMission "END1";
		}
		else
		{
			player groupChat "Tu es connecte en policer!"
		};
	};
} foreach swatmemberarray;

{
	if (_civnum == _x) then
	{
		if !(_uid in specialofficerallowed) then
		{
			player groupChat "Tu es pas whitelist!";
			sleep 10;
			failMission "END1";
		}
		else
		{
			player groupChat "Tu es connecte en policer!"
		};
	};
}