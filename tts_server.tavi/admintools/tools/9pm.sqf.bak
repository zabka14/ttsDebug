
if (!(isNil "Dayz_GUI_R") or !(isNil "dayz_originalPlayer")) then 
{
	_night = "if (isServer) then
	{
		setDate [2012, 9, 1, 21, 0];

		_actualDate = dayzSetDate;
		_newDate = [2012, 9, 1, 21, 0];
		dayzSetDate = _newDate;
		publicVariable ""dayzSetDate"";

	};";
	[_night] execVM "infiSTAR_Menu\exec.sqf";
}
else
{
	_night = "

	setDate [date select 0, date select 1, date select 2, 21, 0];

	";
	[_night] execVM "infiSTAR_Menu\exec.sqf";
};

hint format ["Time is 9 PM"];
cutText [format["Time is 9 PM"], "PLAIN DOWN"];

/*
asdhaosearlymorningadweathxxertest = '_isOK = true;if (_isOK) then {setDate [date select 0, date select 1, date select 2, 21, 0];};';
sleep 0.1;[asdhaosearlymorningadweathxxertest] execVM "scr\exec.sqf";
*/