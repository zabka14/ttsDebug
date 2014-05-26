//When you alter _MARKERS ensure you edit burgler.sqf

_house  = ((_this select 3) select 0);
_housename = ((_this select 3) select 1);
_uid = getPlayerUID vehicle player;

_unit = _this;
_dist = 10;
_marker = "";
{_range = ((getMarkerPos _x) distance (player));
if (_range < _dist) then 
{_dist = _range; _marker = _x};	
} foreach Homearray;

switch true do
{
//2000
case (_marker == "sample"):{if(_uid == "80174662") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "cela ne vous appartient pas";};};
//2004
case (_marker == "sample1"):{if(_uid == "3738578") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "cela ne vous appartient pas";};};


//case (_marker == ""):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
default {[_house,_housename] execVM "maphouse.sqf";};
};