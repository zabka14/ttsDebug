_unit = _this select 1; 
private["_unit"];
_unit = cursorTarget;
if(isNull _unit) exitWith {}; //Not valid
if(!(_unit getVariable "Escorting")) exitWith {}; //He's not being Escorted.
if(isNull _unit) exitWith {}; //Not valid
player switchmove "AmelPercMstpSnonWnonDnon_amaterUder3",
_safe say "punch_sound ";
sleep 1.8;
_unit switchmove "adthppnemstpsraswpstdnon_2",
_unit setdamage 0.30;
sleep 15;
_unit switchmove "amovppnemstpsnonwnondnon";
(format["server globalchat""%1 PUNCHED %2"";", name player, name _unit]) call broadcast};
};