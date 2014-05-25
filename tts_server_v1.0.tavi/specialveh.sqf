_this = _this select 3;
_artz = _this select 0;
if (_artz == "bt") exitwith {
_geld = 'geld' call INV_GetItemAmount;
if not (wreckcompany in INV_VehicleArray) exitwith {player groupChat "Vous n'avez pas la clé de cette société."};
if (_geld < 20000) exitWith {player groupChat "Vous n'avez pas asser d'argent."};
if(count (nearestobjects [getpos wrecktspwn,["Ship","car","motorcycle","truck"], 3]) > 0)exitwith{player groupchat "Le spawn est bloqué!";};
['geld', -20000] call INV_AddInventoryItem;
["V3S_Open_TK_CIV_EP1", wrecktspwn, 1] spawn INV_CreateVehicle;};

if (_artz == "buy") exitwith {
_geld = 'geld' call INV_GetItemAmount;
if (_geld < 10000) exitWith {player groupChat "Vous n'avez pas asser d'argent."};
if (wreckcompany in INV_VehicleArray) exitwith {player groupChat "Vous avez déjà une formation de sauvetage."};
['geld', -10000] call INV_AddInventoryItem;
INV_VehicleArray = INV_VehicleArray + [wreckcompany]; 
//"INV_ServerVclArray = INV_ServerVclArray + [wreckcompany]" call broadcast;
//deleteVehicle wreckbuy1;
player groupChat "Vous avez acheté formation de récupération. Vous êtes maintenant autorisé à acheter un camion de sauvetage."};

if (_artz == "ba") exitwith {
if not (aircompany in INV_VehicleArray) exitwith {player groupChat "Vous n'avez pas la clé de cette société"};
['Cargo Crate', 1] call INV_AddInventoryItem;
if(primaryweapon player == "" and secondaryweapon player == "")then{player playmove "AmovPercMstpSnonWnonDnon_AinvPknlMstpSnonWnonDnon"}else{player playmove "AinvPknlMstpSlayWrflDnon"};
player groupChat "Apportez la cargaison à l'aérodrome Sud-Ouest et aller vendre là-bas.";
};

if (_artz == "buya") exitwith {
_geld = 'geld' call INV_GetItemAmount;
if (_geld < 40000) exitWith {player groupChat "Vous n'avez pas asser d'argent."};
if (aircompany in INV_VehicleArray) exitwith {player groupChat "Vous avez déjà une Formation de Transport aérien."};
['geld', -40000] call INV_AddInventoryItem;
INV_VehicleArray = INV_VehicleArray + [aircompany]; 
//"INV_ServerVclArray = INV_ServerVclArray + [wreckcompany]" call broadcast;
//deleteVehicle wreckbuy1;
player groupChat "Vous avez acheté la license transport aerien. Vous êtes maintenant autorisé à transporter des caisses de cargaison."};

if (_artz == "aan2") exitwith {
_geld = 'geld' call INV_GetItemAmount;
if (!("bomb" call INV_HasLicense)) exitwith {player groupchat "Vous avez besoin de formation de terroriste pour acheter ce produit."};
if (_geld < 4000000) exitWith {player groupChat "Vous n'avez pas asser d'argent."};
['geld', -4000000] call INV_AddInventoryItem;
player groupChat "Ne démontez pas les DShKM de sur les ailes. Vous ne pouvez pas être en mesure de les remonter à tous.";
["An2_TK_EP1", saspwm, 2] spawn INV_CreateVehicle;};

if (_artz == "aan22") exitwith {
_geld = 'geld' call INV_GetItemAmount;
if (!("bomb" call INV_HasLicense)) exitwith {player groupchat "Vous avez besoin de la license terroriste pour acheter cela."};
if (_geld < 2000000) exitWith {player groupChat "Vous n'avez pas asser d'argent."};
['geld', -2000000] call INV_AddInventoryItem;
["An2_TK_EP1", saspwm, 4] spawn INV_CreateVehicle;};

if (_artz == "ska60") exitwith {
_geld = 'geld' call INV_GetItemAmount;
if (!("air_support_training" call INV_HasLicense)) exitwith {player groupchat "Vous avez besoin de la license transport aerien pour acheter cela."};
if(count (nearestobjects [getpos cairspawn,["Ship","car","motorcycle","truck"], 3]) > 0)exitwith{player groupchat "Spawn Blocked!";};
if (_geld < 3500000) exitWith {player groupChat "Vous n'avez pas asser d'argent."};
['geld', -3500000] call INV_AddInventoryItem;
["Ka60_PMC", cairspawn, 3] spawn INV_CreateVehicle;};

if (_artz == "ambu") exitwith {
_geld = 'geld' call INV_GetItemAmount;
if (!("car" call INV_HasLicense)) exitwith {player groupchat "Vous avez besoin du permis de conduire pour acheter cela."};
if (_geld < 10000) exitWith {player groupChat "Vous n'avez pas asser d'argent."};
['geld', -10000] call INV_AddInventoryItem;
["S1203_ambulance_EP1", pmcvspwn, 0] spawn INV_CreateVehicle;};

if (_artz == "Cicada Busline") exitwith {
if (!(call INV_isArmed)) exitwith
	{player groupchat "Vous avez besoin d'un fou des armes à feu!";}; 
	if (bus1money < 10000) exitwith {player groupchat "Le chauffeur du bus a été récemment volé ou n'a pas d'argent pour l'instant."};
(format['if(!("Robbed The Cicada Bus" in %1_reason))then{%1_reason = %1_reason + ["Robbed The Cicada Bus"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + 20000;', player]) call broadcast;
['dirtymoney', bus1money] call INV_AddInventoryItem;
(format ['server globalChat "Someone robbed the %1!";', _artz]) call broadcast;
player sidechat format ["Vous perder $%1 du chauffeur de bus!", bus1money];
bus1money = 0;
publicvariable "bus1money";};

if (_artz == "busgetin") exitwith {
player moveincargo bus1;
player groupchat "Appuyez sur E si vous voulez sortir";};