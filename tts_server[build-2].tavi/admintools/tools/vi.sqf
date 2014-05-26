_remove = nearestObjects [player, ["Car","Air","Bicycle","Motorcycle","Tank","Thing"], 5];
{deleteVehicle _x} forEach _remove;