_killer = _this select 0;
_owner  = _this select 1;

if(_killer == _owner)exitwith{};
if(_killer in coparray)exitwith{};

(format ['player globalchat "%1 a tué %2 K9!";', _killer, _owner]) call broadcast;

(format['if(!("Murder" in %1_reason))then{%1_reason = %1_reason + ["Murder"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + 40000;', _killer,_owner]) call broadcast;

