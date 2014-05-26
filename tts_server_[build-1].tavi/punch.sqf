private["_unit"];

_unit = cursorTarget;
if(isNull _unit) exitWith {}; //Not valid
if(!(_unit getVariable "Escorting")) exitWith {}; //He's not being Escorted.
if(isNull _unit) exitWith {}; //Not valid
if(!isPlayer _unit) exitWith {};
if (player distance _unit >= 2) exitWith{}; //to far away

(format ["%1 switchmove ""%2"";", player, "AmelPercMstpSnonWnonDnon_amaterUder3"]) call broadcast;
sleep 1.8;
(format ["%1 say3d ""coupdepoing"";",_unit])call broadcast;
(format ["%1 switchmove ""%2"";", _unit, "adthpercmstpslowwrfldnon_4"]) call broadcast;
isstunned = true;
_unit setdamage ((damage _unit) + 0.01);
sleep 10;
(format ["%1 switchmove ""%2"";", _unit, "amovppnemstpsnonwnondnon"]) call broadcast;
isstunned = false;
