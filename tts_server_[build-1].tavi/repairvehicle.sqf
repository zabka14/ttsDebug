_vcl = _this select 0;

_fuel = fuel _vcl;
_damage = damage _vcl;
_rep_count = 0.05;
_damage_val = (_damage / _rep_count);
_fuel_val = ((1 - _fuel) / _rep_count);
_coef = switch (true) do {
	case (_fuel_val > _damage_val): {_fuel_val};
	default {_damage_val};
};
_coef = ceil _coef;

if (_damage <0.01) exitWith{player groupChat "Le véhicule n'est pas endomager!"; hint format ["Vehicule status:\n---------------------\nVéhicule comme neuf\n---------------------\nNiveau essence: %1\nDegat du Vehicule: %2",_fuel, _damage]};
if (_damage >0.90) exitWith{player groupChat "Le véhicule est endomager il peux etre reparer!"; hint format ["Vehicule status:\n---------------------\nIl lui faut des reparations!\n---------------------\nNiveau essence: %1\nDegat du Vehicule: %2",_fuel, _damage]};

_vcl engineOn false;

_damage_ok = false;
_fuel_ok = false;
d_cancelrep = false;
_breaked_out = false;
_breaked_out2 = false;

_rep_action = player addAction["Cancel Service","repairvehicle_cancel.sqf"];
hintSilent format ["Reparation..."];
for "_wc" from 1 to _coef do {
	if (!alive player || d_cancelrep) exitWith {player removeAction _rep_action};
	_vcl setvehiclelock "locked";
	_vcl lock true;
	player playMove "AinvPknlMstpSlayWrflDnon_medic";
	sleep 3.0;
	waitUntil {animationState player != "AinvPknlMstpSlayWrflDnon_medic"};
	if (d_cancelrep) exitWith {_breaked_out = true};
	if (vehicle player != player) exitWith {
		_breaked_out2 = true;
		hint "Vous etes rentré dans le véhicule reparation annulée";
	};
	if (!_fuel_ok) then {_fuel = _fuel + _rep_count; _vcl setFuel _fuel; hintsilent format ["Vehicule status:\n---------------------\nNiveau essence: %1\nDegat du Vehicule: %2",_fuel, _damage]};
	if (_fuel >= 1 && !_fuel_ok) then {_fuel = 1;_fuel_ok = true};
	if (!_damage_ok) then {_damage = _damage - _rep_count; _vcl setDamage _damage; hintsilent format ["Vehicule status:\n---------------------\nNiveau essence: %1\nDegat du Vehicule: %2",_fuel, _damage]};
	if (_damage <= 0.01 && !_damage_ok) then {_damage = 0;_damage_ok = true};
	if (_damage_ok and _fuel_ok) then {_vcl lock false; _vcl setFuel 1; _vcl setDamage 0; hint "Véhicule reparer et plein!";player groupChat "Vous avez reparer le véhicule"};
};
if (_breaked_out) exitWith {
	hint "Service canceled";
	player removeAction _rep_action;
	_vcl lock false;
};
if (_breaked_out2) exitWith {_vcl lock false};

player removeAction _rep_action;
if (!alive player) exitWith {player removeAction _rep_action};
