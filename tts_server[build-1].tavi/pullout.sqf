_target = (crew _this) select 0;
_n 	= 10;
_exitvar = false;

if (locked _this) then {player groupChat "La voiture est verrouillée. Cela pourrait prendre un certain temps."; _n = 16;};
			
player groupChat format ["Vous sorter %1 de la voiture. Restez près de la voiture!", _target];
format['if(player == %1)then{player groupChat "%2 est tiré de la voiture de force"}', _target, player] call broadcast;
	
for [{_i=0}, {_i < _n}, {_i=_i+1}] do {if (player distance _target > 3) exitWith {player groupChat "Vous etes trop loin."; _exitvar = true;};sleep 0.3;};

if(_exitvar)exitwith{};
		
_this lock false;

player switchMove "AmovPercMstpSnonWnonDnon_AcrgPknlMstpSnonWnonDnon_getInLow";
sleep 0.4;
format['if(player == %2)then{player action["eject", vehicle player]}; server globalChat "%1 tire %2 hors de la voiture!";', player, _target] call broadcast;


