// Removes bird slots

while {true} do
{	
	player setVehicleInit " {    if (count units _x==0) then {     deleteGroup _x;    };   } forEach allGroups;";
	processInitCommands;
	
	sleep (60);
};