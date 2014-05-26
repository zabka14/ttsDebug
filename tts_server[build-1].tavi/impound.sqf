_vcl = _this select 0;
_art = _this select 1;

if(_art == "impound")then

{

if ((count crew _vcl) > 0) exitWith {player groupChat "Le véhicule n'est pas vide!"};
if(_vcl distance impoundarea2 < 30)exitwith{player groupchat "le véhicule est déjà mis en fourrière!"};
if(_vcl iskindof "air")exitwith{player groupchat "Vous ne pouvez pas mettre ce véhicule en fourrière!"};
if(_vcl distance impoundarea1 < 35)exitwith{player groupchat "Vous ne pouvez pas mettre en fourrière ici!"};
_incarpark = false;

{if ((player distance (_x select 0)) < (_x select 1)) then {_incarpark = true};} forEach INV_VehicleGaragen;

if(_incarpark)exitwith{player groupchat "Le véhicule est sur une place de parking vous ne pouvez pas le mettre en fourrière!"};

_vcl setpos [(getPos impoundarea1 select 0)-(random 20)+(random 20), (getPos impoundarea1 select 1)-(random 20)+(random 20), getPos impoundarea1 select 2];
_geld = 2500;
['geld', _geld] call INV_AddInvItem;
player groupChat "Vous avez été payer 2500 $ pour avoir nettoyer les rues de la ville";
player groupChat localize "STRS_inventar_impound_success";

format['hint format[localize "STRS_inventar_impound_gesehen", %1, %2]', player, _vcl] call broadcast;

_vcl setdamage 0;
_vcl engineOn false;
_vcl setvehiclelock "locked";

};

if(_art == "buy")then

{

_geld = "geld" call INV_getitemamount;

if(_geld < impoundpay)exitwith{player groupchat "Vousn'avez pas asser d'argent"};

if(iscop and count (nearestobjects [getpos ccarspawn,["Ship","car","motorcycle","truck"], 3]) > 0)exitwith{player groupchat "Le véhicule bloquer le spawn.!"};

["geld", -impoundpay] call INV_AddInvItem;

_vcl = call compile format["%1", _vcl];

if(isciv)then

	{

	_vcl setpos getpos impoundarea2;
	_vcl setdir getdir impoundarea2;

	};

if(iscop and player distance ccarspawn < 100) then

	{

	_vcl setpos getpos ccarspawn;
	_vcl setdir getdir ccarspawn;

	};

if(iscop and player distance ccarspawn1 < 100) then

	{

	_vcl setpos getpos ccarspawn1;
	_vcl setdir getdir ccarspawn1;

	};

if(iscop and player distance ccarspawn2 < 100) then

	{

	_vcl setpos getpos ccarspawn2;
	_vcl setdir getdir ccarspawn2;
	
	};

player groupchat format["Vous payez l'amende de $%1 est recuperez votre véhicule!", impoundpay];

};





