// rob gas station script, called on client, the amount u steal is determined by a server loop, in stationrobloop.sqf
// written by eddie vedder
_selection = ((_this select 3) select 0);
_num = round random 100;
if (_num <= 5) exitwith
{
player groupchat "You see the attendant reach down to get the money, BUT";
sleep 2;
player groupchat "instead they have pulled a gun and shot you";
player setdamage 1;
(format ['server globalChat "an attendant has gunned down %1 while attempting to rob them!";', name player]) call broadcast;
};

if (_selection == "station 1") then
{
if (!(call INV_isArmed)) exitwith
	{
	_sel = "Bryces Gas n Go";
	player groupchat "You need a gun to rob the station!";
	(format ['server globalChat "The cashier at Total Station has just called 911 saying someone attempted to rob his gas station!";', _sel]) call broadcast;
	}; 
_sel = "Bryces Gas n Go";
(format['if(!("Robbed a gas station" in %1_reason))then{%1_reason = %1_reason + ["Robbed a gas station"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforrobbing;', player]) call broadcast;
['geld', station1money] call INV_AddInvItem;
(format ['server globalChat "Someone robbed Total Station!";', _sel]) call broadcast;
player sidechat format ["You stole $%1 from the gas station!", station1money];
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
	player groupchat "You need a gun to rob the station!";
	(format ['server globalChat "The cashier at BP Station has just called 911 saying someone attempted to rob his gas station!";', _sel]) call broadcast;
	};
_sel = "Gas n Porn";
(format['if(!("Robbed a gas station" in %1_reason))then{%1_reason = %1_reason + ["Robbed a gas station"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforrobbing;', player]) call broadcast;
['geld', station2money] call INV_AddInvItem;
(format ['server globalChat "Someone robbed BP Station!";', _sel]) call broadcast;
player sidechat format ["You stole $%1 from the gas station!", station2money];
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
	player groupchat "You need a gun to rob the station!";
	(format ['server globalChat "The cashier at House of Gas has just called 911 saying someone attempted to rob his gas station!";', _sel]) call broadcast;
	};
_sel = "House of Gas";
(format['if(!("Robbed a gas station" in %1_reason))then{%1_reason = %1_reason + ["Robbed a gas station"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforrobbing;', player]) call broadcast;
['geld', station3money] call INV_AddInvItem;
(format ['server globalChat "Someone robbed %1!";', _sel]) call broadcast;
player sidechat format ["You stole $%1 from the gas station!", station3money];
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
	player groupchat "You need a gun to rob the station!";
	(format ['server globalChat "The cashier at Gérard Station has just called 911 saying someone attempted to rob his gas station!";', _sel]) call broadcast;
	};
_sel = "Gas n Pit";
(format['if(!("Robbed a gas station" in %1_reason))then{%1_reason = %1_reason + ["Robbed a gas station"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforrobbing;', player]) call broadcast;
['geld', station4money] call INV_AddInvItem;
(format ['server globalChat "Someone robbed Gérard Station!";', _sel]) call broadcast;
player sidechat format ["You stole $%1 from the gas station!", station4money];
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
	player groupchat "You need a gun to rob the station!";
	(format ['server globalChat "The cashier at Guillaume Station has just called 911 saying someone attempted to rob his gas station!";', _sel]) call broadcast;
	};
_sel = "Gas n Chips";
(format['if(!("Robbed a gas station" in %1_reason))then{%1_reason = %1_reason + ["Robbed a gas station"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforrobbing;', player]) call broadcast;
['geld', station5money] call INV_AddInvItem;
(format ['server globalChat "Someone robbed Guillaume Station!";', _sel]) call broadcast;
player sidechat format ["You stole $%1 from the gas station!", station5money];
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
	player groupchat "You need a gun to rob the station!";
	(format ['server globalChat "The cashier at Jumpi Station has just called 911 saying someone attempted to rob his gas station!";', _sel]) call broadcast;
	};
_sel = "Mannys Gas Station";
(format['if(!("Robbed a gas station" in %1_reason))then{%1_reason = %1_reason + ["Robbed a gas station"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforrobbing;', player]) call broadcast;
['geld', station6money] call INV_AddInvItem;
(format ['server globalChat "Someone robbed Jumpi Station!";', _sel]) call broadcast;
player sidechat format ["You stole $%1 from the gas station!", station6money];
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
	player groupchat "You need a gun to rob the station!";
	(format ['server globalChat "The cashier at Josette Station has just called 911 saying someone attempted to rob his gas station!";', _sel]) call broadcast;
	};
_sel = "Mikes Hard Gas";
(format['if(!("Robbed a gas station" in %1_reason))then{%1_reason = %1_reason + ["Robbed a gas station"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforrobbing;', player]) call broadcast;
['geld', station7money] call INV_AddInvItem;
(format ['server globalChat "Someone robbed Josette Station!";', _sel]) call broadcast;
player sidechat format ["You stole $%1 from the gas station!", station7money];
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
	player groupchat "You need a gun to rob the station!";
	(format ['server globalChat "The cashier at Morgan Station has just called 911 saying someone attempted to rob his gas station!";', _sel]) call broadcast;
	};
_sel = "Gas Haus";
(format['if(!("Robbed a gas station" in %1_reason))then{%1_reason = %1_reason + ["Robbed a gas station"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforrobbing;', player]) call broadcast;
['geld', station8money] call INV_AddInvItem;
(format ['server globalChat "Someone robbed Morgan Station!";', _sel]) call broadcast;
player sidechat format ["You stole $%1 from the gas station!", station8money];
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
	player groupchat "You need a gun to rob the station!";
	(format ['server globalChat "The cashier at Big Matt's Truck Shop has just called 911 saying someone attempted to rob his gas station!";', _sel]) call broadcast;
	};
_sel = "Big Matt's Truck Shop";
(format['if(!("Robbed a gas station" in %1_reason))then{%1_reason = %1_reason + ["Robbed a gas station"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforrobbing;', player]) call broadcast;
['geld', station9money] call INV_AddInvItem;
(format ['server globalChat "Someone robbed %1!";', _sel]) call broadcast;
player sidechat format ["You stole $%1 from the gas station!", station9money];
streetrep = streetrep + 0.5;
station9money = 0;
publicvariable "station9money";
local_useBankPossible = false;
sleep 300;
local_useBankPossible = true;
};