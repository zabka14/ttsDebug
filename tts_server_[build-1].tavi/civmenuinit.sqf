_civmenuciv  = civmenuciv;
_civmenu_civ = civmenu_civ;
_art         = _this select 0;
_geld        = 'geld' call INV_GetItemAmount;

if ((player distance _civmenuciv >= 25) or (!(alive _civmenuciv))) exitWith 

{

player groupChat format[localize "STRS_civmenu_distance"];

};

if (_art == 5) exitWith 

{

(format ["if (rolestring == ""%1"") then {[""licheck"", ""%2""] execVM ""civmenu.sqf"";}", _civmenu_civ, rolestring]) call broadcast;

};

if ((count (weapons player)) == 0) exitWith 

{	

player groupChat localize "STRS_civmenu_copnotarmed";

};

if (_art == 6) exitWith 

{

if(!(_civmenuciv call ISSE_IsVictim))exitwith{hint localize "STRS_inventory_checknohands"};		

(format ["if (rolestring == ""%1"") then {[""inventcheck"", ""%2""] execVM ""civmenu.sqf"";}", _civmenu_civ, rolestring]) call broadcast;

};

if (_art == 20) exitWith 

{

if(!(_civmenuciv call ISSE_IsVictim))exitwith{hint localize "STRS_inventory_checknohands"};

(format ["if (rolestring == ""%1"") then {[""stealmoney"", ""%2""] execVM ""civmenu.sqf"";};", _civmenu_civ, rolestring]) call broadcast;

};

if (_art == 1) exitWith 

{

(format ["if (player == %1) then {[""drugs"", %2] execVM ""civmenu.sqf"";};", _civmenuciv, player]) call broadcast;

};

if (_art == 2) exitWith 

{

if(!(_civmenuciv call ISSE_IsVictim))exitwith{hint localize "STRS_inventory_checknohands"};

(format ["if (player == %1) then {[""disarm""] execVM ""civmenu.sqf"";};", _civmenuciv]) call broadcast;

player groupChat format [localize "STRS_civmenu_disarm", _civmenu_civ];

};

if ((_art == 3) and (player distance prisonflag <= 40)) exitWith 

{

_dauer = round(_this select 1);
format ["if (player == %1) then {[""arrest"", %2, %3] execVM ""civmenu.sqf"";};", _civmenu_civ, _dauer, player] call broadcast;

player groupChat format[localize "STRS_civmenu_arrested", _civmenu_civ];

};

if ((_art == 3) and (player distance sprisonflag<= 40)) exitWith 

{

_dauer = round(_this select 1);
format ["if (player == %1) then {[""arrest"", %2, %3] execVM ""civmenu.sqf"";};", _civmenu_civ, _dauer, player] call broadcast;

player groupChat format[localize "STRS_civmenu_arrested", _civmenu_civ];

};

if (_art == 4) exitWith 

{	

_strafe = _this select 1;
if (!(_strafe call ISSE_str_isInteger)) exitWith {player groupChat localize "STRS_inv_no_valid_number";};
_strafe = _strafe call ISSE_str_StrToInt;  if (_strafe <= 0) exitWith {};
(format ["if (player == %1) then {[""ticket"", %2, %3] execVM ""civmenu.sqf"";}; server globalchat format[localize ""STRS_civmenu_ticket_globalchat"", name %1, %2, name %3];", _civmenuciv, (_strafe call ISSE_str_IntToStr), player]) call broadcast;

};
if (_art == 7) exitWith 

{	
_warntest = _this select 1;
_check = call (compile format ["%1_warning", _civmenuciv]);

(format['%1_warning = %1_warning + ["%2"];', _civmenuciv, _warntest]) call broadcast;
};
if (_art == 8) exitWith 

{	
_check = call (compile format ["%1_warning", _civmenuciv]);
if (count _check <= 1) exitwith {hint "Not Warned";};
if (!(createDialog "liste_1_button")) exitWith {hint "Dialog Error!";};

	_trennlinie = "---------------------------------------------";
	lbAdd [1, _trennlinie];
		
	private "_k"; /// ADDED TO FIX BUG
	lbAdd [1, "C U R R E N T  W A R N I N G S:"];
	lbAdd [1, _trennlinie];
	for [{_k=0}, {_k < (count _check)}, {_k=_k+1}] do 
	{
	
	_civ	  = _check select _k;
	
	
			lbAdd [1, (format ["%1", _civ])];
			_str = "";
			{if(_str == "")then{_str = _str + _x}else{_str = _str + ", "; _str = _str + _x;};} foreach _reason;
			lbAdd [1, _trennlinie];
			

		

	};

};


