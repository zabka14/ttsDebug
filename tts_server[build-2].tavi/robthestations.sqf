// rob gas station script, called on client, the amount u steal is determined by a server loop, in stationrobloop.sqf
// written by eddie vedder !!!!! Traduit par Previus
_selection = ((_this select 3) select 0);
_num = round random 100;
if (_num <= 5) exitwith
{
player groupchat "Vous voyez le proprietaire tendre le bras sous la caisse pour prendre l'argent, mais";
sleep 2;
player groupchat "Il attrape le vieux fusil de son grand pere et vous tire dessus !";
player setdamage 1;
(format ['server globalChat "Un gerant a abattu %1 car il a voulut le braquer!";', name player]) call broadcast;
};

if (_selection == "station 1") then
{
if (!(call INV_isArmed)) exitwith
	{
	_sel = "Bryces Gas n Go";
	player groupchat "Vous avez besoin d'une arme à feu pour voler la station!";
	(format ['server globalChat "Le caissier de Bryces gaz n Go vient d'appeler le 911 disant que quelqu'un a tenté de voler sa station!";', _sel]) call broadcast;
	}; 
_sel = "Bryces Gas n Go";
(format['if(!("Robbed a gas station" in %1_reason))then{%1_reason = %1_reason + ["Robbed a gas station"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforrobbing;', player]) call broadcast;
['geld', station1money] call INV_AddInvItem;
(format ['server globalChat "Quelqun vole %1!";', _sel]) call broadcast;
player sidechat format ["Vous voler $%1 d'une station service!", station1money];
streetrep = streetrep + 0.5;
station1money = 0;
publicvariable "station1money";
local_useBankPossible = false;
sleep 300;
local_useBankPossible = true;
};

if (_selection == "station 2") then
{
if (!(call INV_isArmed)) exitwith
	{
	_sel = "Gas n Porn";
	player groupchat "Vous avez besoin d'une arme à feu pour voler la station";
	(format ['server globalChat "Le caissier à gaz n porn vient d'appeler le 911 disant que quelqu'un a tenté de voler son poste de gaz!";', _sel]) call broadcast;
	};
_sel = "Gas n Porn";
(format['if(!("Robbed a gas station" in %1_reason))then{%1_reason = %1_reason + ["Robbed a gas station"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforrobbing;', player]) call broadcast;
['geld', station2money] call INV_AddInvItem;
(format ['server globalChat "Quelqun vole %1!";', _sel]) call broadcast;
player sidechat format ["Vous volez $%1 d'une station service!", station2money];
streetrep = streetrep + 0.5;
station2money = 0;
publicvariable "station2money";
local_useBankPossible = false;
sleep 300;
local_useBankPossible = true;
};

if (_selection == "station 3") then
{
if (!(call INV_isArmed)) exitwith
	{
	_sel = "House of Gas";
	player groupchat "Vous avez besoin d'une arme à feu pour voler la station!";
	(format ['server globalChat "Le caissier à la Maison de gaz vient d'appeler le 911 disant que quelqu'un a tenté de voler son poste de gaz!";', _sel]) call broadcast;
	};
_sel = "House of Gas";
(format['if(!("Robbed a gas station" in %1_reason))then{%1_reason = %1_reason + ["Robbed a gas station"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforrobbing;', player]) call broadcast;
['geld', station3money] call INV_AddInvItem;
(format ['server globalChat "Quelqun vole %1!";', _sel]) call broadcast;
player sidechat format ["Vous volez $%1 d'une station service!", station3money];
streetrep = streetrep + 0.5;
station3money = 0;
publicvariable "station3money";
local_useBankPossible = false;
sleep 300;
local_useBankPossible = true;
};

if (_selection == "station 4") then
{
if (!(call INV_isArmed)) exitwith
	{
	_sel = "Gas n Pit";
	player groupchat "Vous avez besoin d'une arme à feu pour voler la station!";
	(format ['server globalChat "Le caissier à gaz n Pit a juste appelé le 911 disant que quelqu'un a tenté de voler son poste de gaz!";', _sel]) call broadcast;
	};
_sel = "Gas n Pit";
(format['if(!("Robbed a gas station" in %1_reason))then{%1_reason = %1_reason + ["Robbed a gas station"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforrobbing;', player]) call broadcast;
['geld', station4money] call INV_AddInvItem;
(format ['server globalChat "Quelqun vole %1!";', _sel]) call broadcast;
player sidechat format ["Vous volez $%1 d'une station service!", station4money];
streetrep = streetrep + 0.5;
station4money = 0;
publicvariable "station4money";
local_useBankPossible = false;
sleep 300;
local_useBankPossible = true;
};

if (_selection == "station 5") then
{
if (!(call INV_isArmed)) exitwith
	{
	_sel = "Gas n Chips";
	player groupchat "Vous avez besoin d'une arme à feu pour voler la station!";
	(format ['server globalChat "Le caissier à gaz n Chips vient d'appeler le 911 disant que quelqu'un a tenté de voler son poste d'essence!!";', _sel]) call broadcast;
	};
_sel = "Gas n Chips";
(format['if(!("Robbed a gas station" in %1_reason))then{%1_reason = %1_reason + ["Robbed a gas station"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforrobbing;', player]) call broadcast;
['geld', station5money] call INV_AddInvItem;
(format ['server globalChat "Quelqun vole %1!";', _sel]) call broadcast;
player sidechat format ["Vous volez $%1 d'une station service!", station5money];
streetrep = streetrep + 0.5;
station5money = 0;
publicvariable "station5money";
local_useBankPossible = false;
sleep 300;
local_useBankPossible = true;
};

if (_selection == "station 6") then
{
if (!(call INV_isArmed)) exitwith
	{
	_sel = "Mannys Gas Station";
	player groupchat "Vous avez besoin d'une arme à feu pour voler la station!";
	(format ['server globalChat "Le caissier à Mannys gaz vient d'appeler le 911 disant que quelqu'un a tenté de voler son poste de gaz!";', _sel]) call broadcast;
	};
_sel = "Mannys Gas Station";
(format['if(!("Robbed a gas station" in %1_reason))then{%1_reason = %1_reason + ["Robbed a gas station"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforrobbing;', player]) call broadcast;
['geld', station6money] call INV_AddInvItem;
(format ['server globalChat "Quelqun vole %1!";', _sel]) call broadcast;
player sidechat format ["Vous volez $%1 d'une station service!", station6money];
streetrep = streetrep + 0.5;
station6money = 0;
publicvariable "station6money";
local_useBankPossible = false;
sleep 300;
local_useBankPossible = true;
};

if (_selection == "station 7") then
{
if (!(call INV_isArmed)) exitwith
	{
	_sel = "Mikes Hard Gas";
	player groupchat "Vous avez besoin d'une arme à feu pour voler la station!";
	(format ['server globalChat "Le caissier au Mikes dur gaz vient d'appeler le 911 disant que quelqu'un a tenté de voler son poste de gaz!";', _sel]) call broadcast;
	};
_sel = "Mikes Hard Gas";
(format['if(!("Robbed a gas station" in %1_reason))then{%1_reason = %1_reason + ["Robbed a gas station"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforrobbing;', player]) call broadcast;
['geld', station7money] call INV_AddInvItem;
(format ['server globalChat "Quelqun vole %1!";', _sel]) call broadcast;
player sidechat format ["Vous volez $%1 d'une station service!", station7money];
streetrep = streetrep + 0.5;
station7money = 0;
publicvariable "station7money";
local_useBankPossible = false;
sleep 300;
local_useBankPossible = true;
};

if (_selection == "station 8") then
{
if (!(call INV_isArmed)) exitwith
	{
	_sel = "Gas Haus";
	player groupchat "Vous avez besoin d'une arme à feu pour voler la station";
	(format ['server globalChat "Le caissier à Haus gaz vient d'appeler le 911 disant que quelqu'un a tenté de voler son poste de gaz!";', _sel]) call broadcast;
	};
_sel = "Gas Haus";
(format['if(!("Robbed a gas station" in %1_reason))then{%1_reason = %1_reason + ["Robbed a gas station"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforrobbing;', player]) call broadcast;
['geld', station8money] call INV_AddInvItem;
(format ['server globalChat "Quelqun vole %1!";', _sel]) call broadcast;
player sidechat format ["Vous volez $%1 d'une station service!", station8money];
streetrep = streetrep + 0.5;
station8money = 0;
publicvariable "station8money";
local_useBankPossible = false;
sleep 300;
local_useBankPossible = true;
};

if (_selection == "station 9") then
{
if (!(call INV_isArmed)) exitwith
	{
	_sel = "Gas Haus";
	player groupchat "Vous avez besoin d'une arme à feu pour voler la station";
	(format ['server globalChat "Le caissier à Truck Shop Big Matt vient d'appeler le 911 disant que quelqu'un a tenté de voler son poste d'essence!";', _sel]) call broadcast;
	};
_sel = "Big Matt's Truck Shop";
(format['if(!("Robbed a gas station" in %1_reason))then{%1_reason = %1_reason + ["Robbed a gas station"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforrobbing;', player]) call broadcast;
['geld', station9money] call INV_AddInvItem;
(format ['server globalChat "Quelqun vole %1!";', _sel]) call broadcast;
player sidechat format ["Vous volez $%1 d'une station service!", station9money];
streetrep = streetrep + 0.5;
station9money = 0;
publicvariable "station9money";
local_useBankPossible = false;
sleep 300;
local_useBankPossible = true;
};