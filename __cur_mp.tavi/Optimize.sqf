// Quick way of grabbing master array entries

_array = [];
_Nname = "A_MS_";

{
	_array = _x;
	_name = _array select 0;
	missionNamespace setVariable [format["%1%2", _Nname, _name], _array];
} forEach AlleMissionsObjekte;