//watermark.sqf
//Borrowed from DayZ

watermark_text = "";
sleep 1;

//Watermark
if (!isNil "watermark_text") then {
	[] spawn {
		waitUntil {(!isNull Player) and (alive Player) and (player == player)};
		waituntil {!(isNull (findDisplay 46))};
		6 cutRsc ["wm_disp","PLAIN"];
		((uiNamespace getVariable "wm_disp") displayCtrl 1) ctrlSetText watermark_text;
	};
};