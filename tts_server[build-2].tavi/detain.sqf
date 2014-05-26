private["_unit","_id"];
_unit = cursorTarget;
if(isNull _unit) exitWith {}; //Not valid
if(!(_unit isKindOf "Man")) exitWith {}; //Not a 'Man'
if(!isPlayer _unit) exitWith {}; //Not a human player
if(side _unit != civilian) exitWith {}; //Not a civ
_unit attachTo [player, [0,1,0]];
_unit setVariable["transporting",false,true];
_unit setVariable["Escorting",true,true];