_civ = civmenuciv;

//=====================================UNRESTRAIN=========================================

if(animationstate _civ == "civillying01") exitwith

{

(format ["%1 switchmove ""%2"";", _civ, "amovppnemstpsnonwnondnon"]) call broadcast;
player groupchat "Vous menotter ce civil!";

};

//==================================RESTRAIN=========================================

if(vehicle _civ != _civ)exitwith{player groupchat "Le civil est dans un véhicule!"};

if (!(_civ call ISSE_IsVictim)) exitwith {player groupchat localize "STRS_inventory_checknohands"}; 

(format ["%1 switchmove ""%2"";", _civ, "civillying01"]) call broadcast;

(format['server globalchat "%3 est menotter par %2";if (rolestring == "%1") then {execVM "Unrestrain.sqf";}', _civ, name player, name _civ]) call broadcast;

