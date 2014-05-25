
_selection = ((_this select 3) select 0);


if (_selection == "bar") then
{
if (!(call INV_isArmed)) exitwith
	{
	player groupchat "You need a gun to rob the bar!";
	};

(format['if(!("Robbed a bar" in %1_reason))then{%1_reason = %1_reason + ["Robbed bar"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforrobbing;', player]) call broadcast;
['geld', barmoney] call INV_AddInvItem;
(format ['server globalChat "Someone robbed Fionas Pub!";']) call broadcast;
player sidechat format ["You stole $%1!", barmoney];
streetrep = streetrep + 0.5;
barmoney = 0;
publicvariable "barmoney";


};

if (_selection == "bar1") then
{
if (!(call INV_isArmed)) exitwith
	{
	player groupchat "You need a gun to rob the bar!";
	};

(format['if(!("Robbed a bar" in %1_reason))then{%1_reason = %1_reason + ["Robbed bar"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforrobbing;', player]) call broadcast;
['geld', barmoney1] call INV_AddInvItem;
(format ['server globalChat "Someone robbed the Southside Pub!";']) call broadcast;
player sidechat format ["You stole $%1!", barmoney1];
streetrep = streetrep + 0.5;
barmoney1 = 0;
publicvariable "barmoney1";


};

if (_selection == "bar2") then
{
if (!(call INV_isArmed)) exitwith
	{
	player groupchat "You need a gun to rob the bar!";
	};

(format['if(!("Robbed a bar" in %1_reason))then{%1_reason = %1_reason + ["Robbed bar"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforrobbing;', player]) call broadcast;
['geld', barmoney2] call INV_AddInvItem;
(format ['server globalChat "Someone robbed Macks Bar!";']) call broadcast;
player sidechat format ["You stole $%1!", barmoney2];
streetrep = streetrep + 0.5;
barmoney2 = 0;
publicvariable "barmoney2";


};

if (_selection == "bar3") then
{
if (!(call INV_isArmed)) exitwith
	{
	player groupchat "You need a gun to rob the bar!";
	};

(format['if(!("Robbed a bar" in %1_reason))then{%1_reason = %1_reason + ["Robbed bar"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforrobbing;', player]) call broadcast;
['geld', barmoney3] call INV_AddInvItem;
(format ['server globalChat "Someone robbed Hermanns Haxe Cellar!";']) call broadcast;
player sidechat format ["You stole $%1!", barmoney3];
streetrep = streetrep + 0.5;
barmoney3 = 0;
publicvariable "barmoney3";


};
