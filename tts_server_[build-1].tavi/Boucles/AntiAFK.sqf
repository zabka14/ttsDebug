_afk = 0;
_ancienne_position = getpos (vehicle player);

while {true} do 
{
	if (_afk >= 900) then 
	{
		_afk = 0;
		if (getpos (vehicle player) distance _ancienne_position < 2) then
		{
			hintc "Vous êtes AFK... Au revoir!";
			failMission "LOSER"; 
		};
		_ancienne_position = getpos (vehicle player);
	};
	_afk = _afk + 0.2;
	sleep 0.2;
};	