// written by Gman Traduit par Previus
//script called by steal money addaction for government convoy
if (!(call INV_isArmed)) exitwith
	{
	player groupchat "Vous avez besoin d'une arme pour braquer la station!";
	}; 
convoytruck removeAction stealgovmoney;
player groupchat format ["Vous avez $%1 d'extra pour avoir voler les fonds du gouvernement!", govconvoythiefbonus];
['geld', govconvoythiefbonus] call INV_AddInvItem;
(format['if(!("Thieft of Government funds" in %1_reason))then{%1_reason = %1_reason + ["Thieft of Government funds"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + 400000;', player]) call broadcast;
moneyintruck = false;
publicvariable "moneyintruck";