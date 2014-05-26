_civ = civmenuciv;

if(animationstate _civ == "civilsitting03" or animationstate _civ == "civilsitting02" or animationstate _civ == "civilsitting01" or animationstate _civ == "civilsitting") exitwith

{

(format ["%1 switchmove ""%2"";", _civ, "boundCaptive_unaErc"]) call broadcast;
player groupchat "Vous liberez ce joueur!";

};

if(vehicle _civ != _civ)exitwith{player groupchat "Le civil est dans une véhicule!"};
if (!(_civ call ISSE_IsVictim)) exitwith {player groupchat localize "STRS_inventory_checknohandszip"};
if(animationstate _civ == "CivilSitting") exitwith {player groupchat "Déjà menotté"}; 
if("ziptie" call INV_GetItemAmount < 1) exitwith {player groupchat "Vous avez besoin de menotte pour faire cela."};
(format ["%1 playmove ""%2"";", player, "AmovPercMstpSnonWnonDnon_AinvPknlMstpSnonWnonDnon"]) call broadcast;
(format ["%1 switchmove ""%2"";", _civ, "CivilSitting"]) call broadcast;
["ziptie", -1] call INV_AddInvItem;
(format['server globalchat "%3 was zip tied by %2";if (rolestring == "%1") then {execVM "Unziptie.sqf";}', _civ, name player, name _civ]) call broadcast;

