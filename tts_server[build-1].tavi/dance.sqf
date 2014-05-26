_art  = ((_this select 3) select 0);
_geld = 'geld' call INV_GetItemAmount;

if (_art == "holen1") exitWith 

{

if (_geld < 20000) exitWith {vehicle player setDir 225;vehicle player setVelocity [0, 0, 0]; vehicle player setpos (getmarkerpos "POOR"); hint "YOU'VE BEEN BOUNCED." };
if (slavescriptrunning == 1) exitwith {player groupchat "script already running"};
slavescriptrunning = 1;		
['geld', -(20000)] call INV_AddInvItem;

dancer1 switchmove "ActsPercMstpSnon_damsel_wavingExpressiveFR";

player playmove "ActsPercMstpSnonWnonDnon_DancingDuoIvan";

player groupChat "You bought a Sneaky Peaky ;)! ";

sleep 15;

slavescriptrunning = 0 ;

};

if (_art == "holen2") exitWith 

{

if (_geld < 20000) exitWith {vehicle player setDir 225;vehicle player setVelocity [0, 0, 0]; vehicle player setpos (getmarkerpos "POOR"); hint "Don't Waist Your Money...." };
if (slavescriptrunning == 1) exitwith {player groupchat "script already running"};
slavescriptrunning = 1;		
['geld', -(20000)] call INV_AddInvItem;

dancer2 switchmove "ActsPercMstpSnon_damsel_wavingExpressiveFR";

player playmove "ActsPercMstpSnonWnonDnon_DancingDuoIvan";

player groupChat "You bought a Sneaky Peaky ;)! ";

sleep 15;

slavescriptrunning = 0 ;

};