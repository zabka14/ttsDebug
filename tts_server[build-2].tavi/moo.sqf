// Antihack script by Preed

_glClassesNames = ["carpetbomb_menu","playerhijack_menu","chernorus_life_menu","zargabad_menu","joker_menu","endgame_menu",
"AlexAdmin_menu","lblmsgtimeout","Alexander_menu","artillery_barrageWF","AnthonyMcle","ChernoRape_menu","MightyGerk_menu","SpawnSoldier_menu",
"AtackPlanes","GrkTeleport","crpbmb_menu","Delete_menu","collection_123456","Verbal_menu","playerhijack_menu","lblspvehicle",
"gerklusban","btnCarpetOk","UntiFreezee","lblhight","ChernoRape_menu","undetected_1","ultimate_123","btnbebanus","Ribeliona"];


if ( !((getPlayerUID player) in adminlevel1) ) then
{
	for "_i" from 0 to ((count _glClassesNames) - 1) do
	{
		_curClassName = (_glClassesNames select _i);
		if (isClass (configFile >> _curClassName)) exitWith
		{
			if ((getPlayerUID player) in adminlevel1) exitwith {player groupChat "Admintool désactivé jusqu'à nouvel avis, le retirer et revenir.";disableuserinput true;};
			haxorname = name player;
			publicVariable "haxorname";
			extradeadtime = 100000;
			disableuserinput true;
			format['server globalChat "ALERTE: %1 est en train de hacker prevenez les admins !!";', haxorname] call broadcast;
			haxorsheep = createGroup east;
			haxsheep1 = haxorsheep createUnit ["Sheep02_EP1", position player, [], 0, "FORM"];
			haxsheep1 attachTo [player,[0,0.5,0]];
			sleep 30;
			player setPos [-6269.0903,552.92957,-6458.1816];
			format['server globalChat "ALERTE: %1 EST UN PUTIN DE HACKER DE MERDE ALERTER LES ADMINS!";', haxorname] call broadcast;
			sleep 5;
			format['server globalChat "ALERTE: %1 est frappé par la colère du Tout-Puissant PREVIUS!";', haxorname] call broadcast;
			boom = "Bo_GBU12_LGB" createVehicle (position player);
			boom attachTo [player,[0,-2,3]];
			sleep 5;
			detach boom;
			sleep 10;
		};
	};
};
