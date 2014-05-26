_vcls = nearestobjects [getpos player, ["LandVehicle", "Air", "ship"], 25];
_vcl = _vcls select 0;

["schluessel", _vcl, 0] execVM "keys.sqf";
