_art = _this select 0;

if (_art == "use") then 
{
_item   = _this select 1;
_anzahl = _this select 2;
_closehouse   = dummyobj;
_nearobj = (nearestobjects [getpos player, ["Land_MBG_GER_HUS_1","Land_MBG_GER_HUS_2","Land_MBG_GER_HUS_3","Land_MBG_GER_HUS_4","Land_MBG_GER_RHUS_1","Land_MBG_GER_RHUS_2","Land_MBG_GER_RHUS_3","Land_MBG_GER_RHUS_4","Land_MBG_GER_RHUS_5","Land_MBG_GER_ESTATE_1","Land_MBG_GER_ESTATE_2","Land_vila","Land_build2","Land_build3","Land_build4","Land_build5"], 10] select 0);
_unit = _this;
_dist = 10;
_marker = "";
if (breaking) exitWith {player groupchat "Please Wait"};
if ((isciv) and (player distance jaild < 50)) exitwith {
if ((isciv) and (player distance jaild < 5)) then 
	{
		if (dar_ilpd animationPhase "CellDoorA" >= 0.5) then 

		{	

		player groupchat "La Porte de prison cellule est déjà ouvert.";

		} else {
	player groupChat "Vous essayez de crocheter la porte de la cellule de prison";
	(format ['server globalChat "Quelqu'un essaie d'ouvrir la porte de la cellule de prison!";']) call broadcast;
	('if(iscop) then {playsound "alarm1";}') call broadcast;
	if (round(random 100) <= 30) then 
	{
			(format ["%1 switchmove ""%2"";", player, "repairingkneel"]) call broadcast;
			breaking = true;
			sleep 8;
			breaking = false;
			player groupChat "Vous avez crocheté la porte de la cellule de prison.";
			(format ['server globalChat "Quelqu'un a ouvert avec succès la porte de la cellule de prison!";']) call broadcast;
			dar_ilpd animate ["CellDoorA",1]; dar_ilpd say "dooropen";		
			(format ["%1 switchmove ""%2"";", player, ""]) call broadcast;
	} 
	else 
	{
			(format ["%1 switchmove ""%2"";", player, "repairingkneel"]) call broadcast;
			breaking = true;
			sleep 8;
			breaking = false;
			player groupChat "Vous n'avez pas reussi a crocheter la porte de la cellule de prison.";
			(format ["%1 switchmove ""%2"";", player, ""]) call broadcast;
	};
	[_item, -1] call INV_AddInvItem;
};

}
else
{
if ((isciv) and (player distance jaild < 100)) exitwith {player groupChat "Vous êtes assez proche de l'ordinateur de la salle de contrôle.";};
};
};
{_range = ((getMarkerPos _x) distance (player));
if (_range < _dist) then 
{_dist = _range; _marker = _x;};	
} foreach Homearray;
if (_marker == "") exitwith {player groupchat "You need to be at an occupied house to burglarize it";};
if (player distance getmarkerpos _marker <= 6) exitwith {player groupchat "You need to burglarize outside the house";};
_house = nearestobjects [getpos player,["Land_MBG_GER_HUS_1","Land_MBG_GER_HUS_2","Land_MBG_GER_HUS_3","Land_MBG_GER_HUS_4",
"Land_MBG_GER_RHUS_1","Land_MBG_GER_RHUS_2","Land_MBG_GER_RHUS_3","Land_MBG_GER_RHUS_4","Land_MBG_GER_RHUS_5","Land_MBG_GER_ESTATE_1",
"Land_MBG_GER_ESTATE_2","Land_vila","Land_build2","Land_souvlaki","Land_build3","Land_build4","Land_build5","Land_ekklisia"], 15];
_housename = _house select 0;
				
	if (round(random 100) <= 30) then 
	{	
	(format ["%1 switchmove ""%2"";", player, "repairingkneel"]) call broadcast;
	sleep 8;
	player groupChat "Vous avez rompu avec succès dans la maison";
	(format ["%1 switchmove ""%2"";", player, ""]) call broadcast;
	format["hint ""%1 was seen attempting to break into %2 house!"";", (name player), _marker] call broadcast;
	(format['if(!("Burglary" in %1_reason))then{%1_reason = %1_reason + ["Burglary"]}; %1_wanted = 1;kopfgeld_%1 = kopfgeld_%1 + 7000;', player]) call broadcast;
	_housename animate ["FrontDoor",1];
	_housename animate ["door_button1",1];
	} 
	else 
	{
	(format ["%1 switchmove ""%2"";", player, "repairingkneel"]) call broadcast;
	sleep 3;
	_nearobj say "siren_long";
	sleep 3;
	player groupChat "Vous avez réglé l'alarme, vous pourriez penser à partir bientôt";
	(format ["%1 switchmove ""%2"";", player, ""]) call broadcast;
	format["hint ""%1 a été vu entrain de tenter de percer  la serrure de la maison de %2 !"";", (name player), _marker] call broadcast;
	(format['if(!("AttemptedBurglary" in %1_reason))then{%1_reason = %1_reason + ["Attempted Burglary"]}; %1_wanted = 1;kopfgeld_%1 = kopfgeld_%1 + 5000;', player]) call broadcast;
	};
	[_item, -1] call INV_AddInvItem;
};










	
