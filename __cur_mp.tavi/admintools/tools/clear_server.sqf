hint format ["Clear Server"];
cutText [format ["Clear Server"], "PLAIN DOWN"];

{
	if ((count(crew _x) == 0) and ((damage _x > 0.55) or !(canMove _x))) then 
	{
		if !((_x isKindOf "Air") or (_x isKindOf "Tank")) then 
		{
			deleteVehicle vehicle _x;
			deleteVehicle _x;
			deleteVehicle vehicle _x;
			deleteVehicle _x;
		};
	};
} forEach vehicles;


{
	deleteVehicle vehicle _x;
	deleteVehicle _x;
} forEach (allMissionObjects "EvMoney")+allDEAD;

if (vehicle player in allDEAD) then {deleteVehicle vehicle player;};