//Request & Load Stats
//Author: {ZAG}Ed!
server globalChat format["SKY-NET synchronisation. S'il vous plaît patienter ...", loadRewardBonus];
hint "SKY-NET synchronisation. S'il vous plaît patienter";
_playerid = getPlayerUID player;
_playerside = format["%1", side player];
PlayerRetrieve1 = "";
_loadProceed = true;
loadcontent = [];
while {count(loadcontent) == 0} do {
	PlayerRetrieve = getPlayerUID player;
	publicVariableServer "PlayerRetrieve";
	//server globalChat "Si vos statistiques n'ont pas chargé s'il vous plaît reconnectez vous.";
	loadtimeout = false;
	[] spawn {sleep 1000; loadtimeout = true;};
	waitUntil {PlayerRetrieve != getPlayerUID player || loadtimeout};
	sleep 1;
};
if(!alive player) exitWith {player groupChat "Vos statistiques n'ont pas été chargés, car vous êtes morts au cours de cette période. Il est conseillé que vous allez dans le lobby et rejoignez à nouveaux."};

saver_loaded = true;
if(count(loadcontent) < 2) then {
	_loadProceed = false;
};


if(_loadProceed) then {
	removeallweapons player;
	for[{_ii=0},{_ii < count (loadcontent)},{_ii=_ii+1}] do
	{
	_escpersentage = "%";
	hintsilent format["SKY-NET Syncing: %1%2",floor ((_ii / count(loadcontent)) * 100),_escpersentage];
	sleep 0.1;
		if (typeName (loadcontent select _ii select 1) != "STRING") then {
			call compile format['
			%1 = %2;
			["%1", %1] spawn ClientSaveVar;
			',loadcontent select _ii select 0, loadcontent select _ii select 1];
		} else {
			call compile format['
			%1 = "%2";
			["%1", %1] spawn ClientSaveVar;
			',loadcontent select _ii select 0, loadcontent select _ii select 1];
		};

		//The above declares variables.

		//The next will use certain variables which requires special actions. You will have to modify this according to your mission.
		///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		if((loadcontent select _ii select 0) == "playerweapons") then {
			{
				player addweapon _x;
			}foreach (loadcontent select _ii select 1);
		};
		if((loadcontent select _ii select 0) == "playermagazines") then {
			{
				player addmagazine _x;
			}foreach (loadcontent select _ii select 1);
		};

		if((loadcontent select _ii select 0) == "playerBackpackAr") then {
			if(loadcontent select _ii select 1 select 0 != "none") then {
				player addBackpack (loadcontent select _ii select 1);
				_backpack = unitBackpack player;
				clearWeaponCargoGlobal _backpack;
				clearMagazineCargoGlobal _backpack;
				{
					_backpack addWeaponCargoGlobal _x;
				}foreach (loadcontent select _ii select 1 select 1);
				{
					_backpack addMagazineCargoGlobal _x;
				}foreach (loadcontent select _ii select 1 select 2);
			};

			////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		};
	};
};

waitUntil{!isNil "loadRewardBonus"};
add_civmoney = add_civmoney + loadRewardBonus;
add_copmoney = add_copmoney + loadRewardBonus;

server globalChat format["You are now synced with SKY-NET.", loadRewardBonus];
hint "You are now synced with SKY-NET!";