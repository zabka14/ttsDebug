_this = _this select 3;
_art  = _this select 0;
_safedoor = _this select 2;
_copcount = west countside list goodfellacop;
if (_art == "ausrauben") then 

{	

local_cash = mafiabank;

if(_copcount < 3)exitwith{player groupchat "Vous avez besoin de 5 agents de police pour piller ce coffre-fort!"};
if(local_cash < 5000)exitwith{player groupchat "ce coffre-fort a été récemment confisqués et est vide"};

if(!robenable)exitwith{player groupchat "you are already confiscating the bank"};


robenable = false;

mafiabank = 0;
publicvariable "mafiabank";

format['[0,1,2,["opfer", %1, %2]] execVM "mafiasafe.sqf";', _safe, local_cash] call broadcast;

if (_safedoor == "mafiasafe") then 
{
mafiasafe animate ["Safe_Door",1];
player playmove "amovpknlmstpsraswrfldnon_gear";
sleep 5;
waituntil {animationstate player != "amovpknlmstpsraswrfldnon_gear"};
mafiasafe animate ["Safe_Door",0];
};
if (alive player) then 

	{
	player groupChat format[localize "STRS_bank_mafia_success"];
	};

robenable = true;


};


if (_art == "opfer") then 

{

_robpool = _this select 2;
titleText ["Les policiers sont des raids de sécurité de l'Goodfella!", "plain"];
sleep 180;

server globalchat format["La police a confisqué $%1!", _robpool];

sleep 4;
if (isciv) exitwith {};
_playerson = (playersNumber west);
_percentlost = (_robpool / _playerson);


_verlust = round(_percentlost); 
player sidechat format ["Vous avez %1 pour la confisquation d'argent", _verlust];									
	['geld', _verlust] call INV_AddInvItem;	

};

