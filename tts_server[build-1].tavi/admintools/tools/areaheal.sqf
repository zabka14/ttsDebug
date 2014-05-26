_objs   = (position (vehicle player) nearObjects 5);
{_x setDamage 0} forEach _objs;
player sidechat "Healed/repaired everything in a 5m radius";
