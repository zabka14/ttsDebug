// rob gas station script, called on client, the amount u steal is determined by a server loop, in stationrobloop.sqf
// written by eddie vedder


_selection = ((_this select 3) select 0);
_pharm = round random 12;

if (_selection == "pharmacy") then
{
if (!(call INV_isArmed)) exitwith
	{
	player groupchat "Vous avez besoin d'une arme à feu pour voler la pharmacie!";
	};

(format['if(!("Robbed a the pharmacy" in %1_reason))then{%1_reason = %1_reason + ["Robbed pharmacy"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforrobbing;', player]) call broadcast;
['geld', pharmmoney] call INV_AddInvItem;
['pharm', _pharm] call INV_AddInvItem;
(format ['server globalChat "Quelqun vole la pharmacie!";']) call broadcast;
player sidechat format ["Vous volez $%1 et %2 de la Pharmacie", pharmmoney,_pharm];
pharmmoney = 0;
publicvariable "pharmmoney";


};

// eddie vedder