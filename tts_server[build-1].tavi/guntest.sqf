_art = (_this select 3) select 0;

if(_art == "info")then

{

player groupchat "Ok, un bon score dans ce test, quand je vous donne votre pistolet, vous devez monter la rampe par la porte à gauche.";
sleep 1;
player groupchat "Vous obtenez également des points pour avoir terminé le cours dans le temps le plus court possible et en utilisant aussi peu de coups que possible.";
sleep 1;
player groupchat "s'il vous plaît noter que les objectifs ne seront pas apparaître si vous essayez de faire le cours arrière ou dans un mode involontaire.";
sleep 1;
player groupchat "Aussi, vous n'obtiendrez que des points pour la cible-vous-coup, donc ne pense avoir quelques amis des cibles de tir pour vous va vous aider.";

};

if(_art == "test")then

{

if (!("gunprobationpistol" call INV_HasLicense)) exitWith {player groupChat "Vous devez avoir votre permis probatoire des armes à feu"};

_g1 = 0;
_g2 = 0;
_g3 = 0;
_g4 = 0;
_g5 = 0;
_g6 = 0;
_g7 = 0;
_g8 = 0;
_g9 = 0;
_g10 = 0;
_g11 = 0;
_g12 = 0;
_g13 = 0;
_g14 = 0;

gtgrp1=false;
gtgrp2=false;
gtgrp3=false;
gtgrp4=false;
gtgrp5=false;
gtgrp6=false;
gtgrp7=false;
gtgrp8=false;
gtgrp9=false;
gtgrp10=false;
gtgrp11=false;
gtgrp12=false;
gtgrp13=false;

gtactive = true; publicvariable "gtactive";
noholster=true;
hits  = 0;
popped = 0;
shots = 0;
_ran2 = random 100;
_time = time;

{_x animate["terc",1]} foreach gunlicensetargets;
player addeventhandler ["fired", {shots = shots + 1}]; 

player addmagazine "15Rnd_9x19_M9";
player addmagazine "15Rnd_9x19_M9";
player addweapon "m9";
player selectweapon "m9";
player groupchat "Dès que vous passez par la porte de l'essai sa commence. bonne chance!";

waituntil{gtgrp1 or time > (_time + 10)};

_time = time;

while{true}do

{

if(!(player hasweapon "M9"))exitwith

	{

		{	

		deleteVehicle _x;
		
		} forEach (player nearObjects ["weaponholder", 5]);

	player groupchat "Vous n'avez pas réussi le test de laisser tomber votre arme!";
	_score = 0;
	INV_LizenzOwner = INV_LizenzOwner - ["gunprobationpistol","riflelicense","semiautomatic"];
	["INV_LizenzOwner", INV_LizenzOwner] spawn ClientSaveVar;

	};

_score = round (hits*gtbonus - round(time - _time) - shots*0.1*gtbonus);
if(_score < 0)then{_score = 0};

hintsilent format["Hits: %1/%2 Shots fired: %5 Score: %3 Time left: %4s", hits, popped, _score, 30 - round(time - _time), shots];

_ran1 = random 100;
_ran3 = random 100;

if(gtgrp1 and _g1 == 0 and _ran1 > 50)then{t11 animate["terc",0]; [] spawn {[t11,5] call targethit}; _g1 = 1};
if(gtgrp1 and _g1 == 0 and _ran1 < 50)then{t12 animate["terc",0]; [] spawn {[t12,5] call targethit}; _g1 = 1};
if(gtgrp2 and _g2 == 0 and _ran3 > 50)then{t21 animate["terc",0]; [] spawn {[t21,5] call targethit}; _g2 = 1};
if(gtgrp2 and _g2 == 0 and _ran3 < 50)then{t22 animate["terc",0]; [] spawn {[t22,5] call targethit}; _g2 = 1};
if(gtgrp3 and _g3 == 0 and _ran1 > 50)then{t31 animate["terc",0]; [] spawn {[t31,5] call targethit}; _g3 = 1};
if(gtgrp4 and _g4 == 0 and _ran3 > 50)then{t41 animate["terc",0]; [] spawn {[t41,5] call targethit}; _g4 = 1};
if(gtgrp3 and _g3 == 0 and _ran1 < 50)then{t32 animate["terc",0]; [] spawn {[t32,5] call targethit}; _g3 = 1};
if(gtgrp4 and _g4 == 0 and _ran3 < 50)then{t42 animate["terc",0]; [] spawn {[t42,5] call targethit}; _g4 = 1};
if(gtgrp5 and _g5 == 0 and _ran1 > 50)then{t51 animate["terc",0]; [] spawn {[t51,5] call targethit}; _g5 = 1};
if(gtgrp6 and _g6 == 0 and _ran3 > 50)then{t61 animate["terc",0]; [] spawn {[t61,5] call targethit}; _g6 = 1};
if(gtgrp5 and _g5 == 0 and _ran1 < 50)then{t52 animate["terc",0]; [] spawn {[t52,5] call targethit}; _g5 = 1};
if(gtgrp6 and _g6 == 0 and _ran3 < 50)then{t62 animate["terc",0]; [] spawn {[t62,5] call targethit}; _g6 = 1};
if(gtgrp8 and _g8 == 0 and _ran1 > 50)then{t81 animate["terc",0]; [] spawn {[t81,3] call targethit}; _g8 = 1};
if(gtgrp9 and _g9 == 0 and _ran3 > 50)then{t91 animate["terc",0]; [] spawn {[t91,3] call targethit}; _g9 = 1};
if(gtgrp8 and _g8 == 0 and _ran1 < 50)then{t82 animate["terc",0]; [] spawn {[t82,3] call targethit}; _g8 = 1};
if(gtgrp9 and _g9 == 0 and _ran3 < 50)then{t92 animate["terc",0]; [] spawn {[t92,3] call targethit}; _g9 = 1};

if(gtgrp11 and _g11 == 0 and _ran1 > 50)then{t111 animate["terc",0]; [] spawn {[t111,3] call targethit}; _g11 = 1};
if(gtgrp11 and _g11 == 0 and _ran1 < 50)then{t112 animate["terc",0]; [] spawn {[t112,3] call targethit}; _g11 = 1};
if(gtgrp13 and _g13 < 1  and _ran1 > 50)then{t131 animate["terc",0]; [] spawn {[t131,5] call targethit}; _g13 = 1};
if(gtgrp13 and _g13 < 1  and _ran1 < 50)then{t132 animate["terc",0]; [] spawn {[t132,5] call targethit}; _g13 = 1};
if(gtgrp13 and _g13 < 2  and _g7 == 0 and _ran1 > 50)then{t133 animate["terc",0]; [] spawn {[t133,5] call targethit}; _g13 = 2};
if(gtgrp13 and _g14 == 0 and _ran1 < 50)then{t134 animate["terc",0]; [] spawn {[t134,5] call targethit}; _g14 = 1};
if(gtgrp13 and _g14 == 0 and _ran1 > 50)then{t135 animate["terc",0]; [] spawn {[t135,5] call targethit}; _g14 = 1};

if(gtgrp7  and _g7 == 0  and _ran2 < 50)then{t71 animate["terc",0];  [] spawn {[t71,4]  call targethit}; _g7 = 1};
if(gtgrp10 and _g10 == 0 and _ran2 > 50)then{t101 animate["terc",0]; [] spawn {[t101,3] call targethit}; _g10 = 1};
if(gtgrp12 and _g12 == 0 and _ran2 < 50)then{t121 animate["terc",0]; [] spawn {[t121,3] call targethit}; _g12 = 1};

if(gtgrp13 and player distance gunend < 3)exitwith{};
if(time - _time > 60)exitwith{_time = 0};

sleep 0.5;

};

gtactive=false; publicvariable "gtactive";
player removemagazines "15Rnd_9x19_M9";
player removeweapon "m9";
player removeEventHandler ["fired", 1];
noholster=false;

_score = round (hits*gtbonus - round(time - _time) - shots*0.1*gtbonus);
if(_score < 0) then {_score = 0};

if(_time == 0) then {_score = 0; _time = 60;};

hint format["Hits: %1/%2. Time taken: %3s Score: %4 Required: 55", hits, popped, round(time - _time), _score];

if(_score >= 55)then

	{

	player groupchat format["Beau travail! %1 vous avez passé avec succès le test et avez reçu votre licence de pistolet!", name player];
	INV_LizenzOwner = INV_LizenzOwner + ["Pistollicense"];
	INV_LizenzOwner = INV_LizenzOwner - ["gunprobationpistol"];
	["INV_LizenzOwner", INV_LizenzOwner] spawn ClientSaveVar;
	}

	else 
	{
	player groupchat format["Mr %1 , vous avez echoué!", name player]
	};

};

if(_art == "rifle")then

{
	_geld = "geld" call INV_GetItemAmount;
	if ("Pistollicense" call INV_HasLicense) then
	{
		if (_geld >= 35000) then
		{
			INV_LizenzOwner = INV_LizenzOwner + ["Riflelicense"];
			["geld", -(35000)] call INV_addinventoryitem;
			player groupchat format["Vous avez reçu une licence de fusil!", name player]
		}		
		else
		{
		player groupchat format["vous n'avez pas asser d'argent.", name player];
		};
	}	
	else
	{
		player groupchat format["Vous avez besoin d'une licence de pistolet!", name player];
	};


};

if(_art == "semi")then

{
	_geld = "geld" call INV_GetItemAmount;
	if ("Pistollicense" call INV_HasLicense) then
	{
		if (_geld >= 40000) then
		{
			INV_LizenzOwner = INV_LizenzOwner + ["automatic"];
			["geld", -(40000)] call INV_addinventoryitem;
			player groupchat format["Vous avez reçu une licence de fusil semi-automatique!", name player]
		}		
		else
		{
		player groupchat format["Pas asser d'argent.", name player];
		};
	}	
	else
	{
		player groupchat format["Vous avez besoin de la license de pistolet!", name player];
	};	


};
