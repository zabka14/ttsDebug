if (isServer) then {
	"ServerVarUpdate" addPublicVariableEventHandler {
		private "_var";

		_var = _this select 1;

		[_var select 0, _var select 1, _var select 2] call ServerSaveVar;
	};
};

ClientSaveVar =
{
private ["_Fvarname", "_Fvarvalue"];

_Fvarname  = _this select 0;
_Fvarvalue = _this select 1;

diag_log format["ClientSaveVar - Started"];
diag_log parseText (format["ClientSaveVar - Info<br/>				USER: %1 - %2<br/> 			UID: %3<br/> 			Value Name: %4<br/> 			Value: %5<br/> 		Type: %6", player, name player, getPlayerUID player, _Fvarname, _Fvarvalue, typeName _Fvarvalue]);

if (! (isNull player) ) then {	
	
		if ((typeName _Fvarvalue) == "STRING") then {
				//diag_log format["ClientSaveVar - STRING SAVE"];
				//ServerVarUpdate = [player, _Fvarname, _Fvarvalue];
				//publicVariableServer "ServerVarUpdate";
			} else {
				//diag_log format["ClientSaveVar - NONE STRING SAVE"];
			
				if (_Fvarname == "INV_VehicleArray") then {
						
						diag_log format["ClientSaveVar - INV_VEHICLEARRAY - Save"];
						
						private ["_old_array", "_new_array"];

							_old_array = _Fvarvalue;
							_new_array = [];
							
							{
								if (!(format["%1",_x] == "<null>" || format["%1", _x] == "<NULL-object>")) then {
										_new_array = _new_array + [_x];
									};
							} foreach _old_array;
											
							_Fvarvalue = _new_array;
							
							diag_log parseText (format["ClientSaveVar - INV_VEHICLEARRAY - <br/> Old Array: %1			<br/> New Array: %2", _old_array, _new_array]);
							
						ServerVarUpdate = [player, _Fvarname, _Fvarvalue];
						publicVariableServer "ServerVarUpdate";
					} else { 
						//diag_log format["ClientSaveVar - Regular Save"];
						
						//ServerVarUpdate = [player, _Fvarname, _Fvarvalue];
						//publicVariableServer "ServerVarUpdate";
					};
			};
			
///////////////
//Ed! was here
if ((_Fvarname == "INV_VehicleArray") or (isNil "_Fvarname") or (isNil "_Fvarvalue")) exitWith{};
if (isNil "clientKontoArray") then {clientKontoArray = [];};	
_exists = false;

for [{_c=0}, {_c < (count clientKontoArray)}, {_c=_c+1}] do
{

if(((clientKontoArray select _c) select 0) == _Fvarname) then {
_exists = true;
};

};


if(_exists) then {
for [{_c=0}, {_c < (count clientKontoArray)}, {_c=_c+1}] do
{
if (((clientKontoArray select _c) select 0) == _Fvarname) then {
clientKontoArray set [_c,[_Fvarname, _Fvarvalue]];
};
};
} else {
clientKontoArray = clientKontoArray + [[_Fvarname, _Fvarvalue]];
};
///////////////	

	} else {hint "Error: player is Null.";};

diag_log format["ClientSaveVar - Ended"];
	
true

};

ServerSaveVar =
{

private ["_c", "_Fplayer","_UID", "_Fvarname", "_Fvarvalue", "_Ffound", "_Fvargefunden"];

_Fplayer      	= _this select 0;

if (typeName _Fplayer == "STRING") then {
		_Fplayer = call compile _Fplayer;
	};

_UID			= getPlayerUID _Fplayer;
_Fvarname    	= _this select 1;
_Fvarvalue    	= _this select 2;
_Ffound       	= false;
_Fvargefunden 	= true;

diag_log format["ServerSaveVar %1 - Started", _UID];
diag_log parseText (format["ServerSaveVar - Info<br/>			Player: %1 - %2<br/>			UID: %3<br/>			Value Name: %4<br/>			Value: %5<br/>			Type: %6", _Fplayer, name _Fplayer, _UID, _Fvarname, _Fvarvalue, typeName _Fvarvalue]);


if (isNil "serverKontoArray") then {serverKontoArray = [];};

for [{_c=0}, {_c < (count serverKontoArray)}, {_c=_c+1}] do {	
		if (((serverKontoArray select _c) select 0) == (_UID)) then {_Ffound = true;};
	};

if (!(_Ffound)) then {serverKontoArray = serverKontoArray + [ [ (_UID) ] ];};

for [{_c=0}, {_c < (count serverKontoArray)}, {_c=_c+1}] do

	{

	if (((serverKontoArray select _c) select 0) == (_UID)) then

		{

		_Fvargefunden = false;

		for [{_b=1}, {_b < (count (serverKontoArray select _c))}, {_b=_b+1}] do

			{

			if ((((serverKontoArray select _c) select _b) select 0) == _Fvarname) then

				{
				
				if (typeName _Fvarvalue == "STRING") then {
						(serverKontoArray select _c) set [_b, [_Fvarname, _Fvarvalue]];
					} else {
						(serverKontoArray select _c) set [_b, [_Fvarname, _Fvarvalue]];
					};
				_Fvargefunden = true;

				};

			};

		if (not(_Fvargefunden)) then {serverKontoArray SET [_c, ((serverKontoArray select _c) + [ [_Fvarname, _Fvarvalue] ])];};

		};

	};

diag_log format["ServerSaveVar %1 - Ended", _UID];
	
true

};


ClientRequestVar = 
{

	diag_log parseText (format["ClientRequestVar - Started"]);
	diag_log parseText (format["ClientRequestVar - JIP Stats 1: %1", JIP_Stats_Ready]);

	JIP_Stats_Ready = false;
	
	diag_log parseText (format["ClientRequestVar - JIP Stats 2: %1", JIP_Stats_Ready]);
	diag_log parseText (format["ClientRequestVar - ServerLoadVar called <br/> 			Player: %1 - %2<br/> 			UID: %3", player, name player, getPlayerUID player]);
	
	format ["if (isServer) then {[%1] spawn ServerLoadVar;};", player] call broadcast;
	
	diag_log parseText (format["ClientRequestVar - Ended"]);
	
	true
};

ServerClearKonto =
{

private ["_i", "_j", "_k", "_arr", "_return", "_name"];

_name   = "";
if ((count _this) > 0) then {_name = _this select 0;};
_return = 0;

diag_log parseText (format["ServerClearKonto %1 - Started", _name]);

for [{_i=0}, {_i < (count serverKontoArray)}, {_i=_i+1}] do {

		for [{_j=1}, {_j < (count ((serverKontoArray) select _i))}, {_j=_j+1}] do {

				if ( (((serverKontoArray select _i) select 0) == _name) or (_name == "")  ) then {

						if (( typeName (((serverKontoArray select _i) select _j) select 1) ) == "ARRAY") then {

								for [{_k=0}, {_k < (count (((serverKontoArray select _i) select _j) select 1))}, {_k=_k+1}] do {

										if ((typeName ((((serverKontoArray select _i) select _j) select 1) select _k)) == "OBJECT") then {

												if (isNull((((serverKontoArray select _i) select _j) select 1) select _k)) then {

														_arr = (((serverKontoArray select _i) select _j) select 1);
														_arr set [_k, "KontoDeleteString"];
														_arr = _arr - ["KontoDeleteString"];
														((serverKontoArray select _i) select _j) set [1, _arr];
														_return = _return + 1;

													};
											};
									};
							};
					};
			};
	};

diag_log parseText (format["ServerClearKonto %1 - Ended", _name]);
	
_return;

};


ServerLoadVar =
{
private ["_spieler", "_name", "_found", "_statarray", "_i", "_j", "_k", "_h", "_array"];

	_spieler   = (_this select 0);
	_name      = GetPlayerUID _spieler;
	_found     = false;
	_statarray = [];

	diag_log parseText (format["ServerLoadVar %1 - Started", _name]);
	diag_log parseText (format["ServerLoadVar %3 - Info<br/>			Player: %1 - %2<br/>			UID: %3", _spieler, name _spieler, _name]);
	
	if (isNil "serverKontoArray") then {serverKontoArray = [];};
	
	//diag_log parseText (format["ServerLoadVar %1 - ServerClearKonto Called", _name]);
	//_h = [_name] spawn ServerClearKonto;
	//waitUntil{(scriptDone _h)};
	//diag_log parseText (format["ServerLoadVar %1 - ServerClearKonto Ended", _name]);
	
	diag_log parseText (format["ServerLoadVar %1 - ServerKontoArray find started", _name]);
	
	{

		if (_name == (_x select 0)) exitWith {_statarray = (_x) - [(_x select 0)]; _found = true};

	} forEach serverKontoArray;

	diag_log parseText (format["ServerLoadVar %1 - ServerKontoArray find passed", _name]);

	_i = 0;

	for [{_i=0}, {_i < (count _statarray)}, {_i=_i+1}] do {

			if ( ((_statarray select _i) select 0)  == "INV_VehicleArray" ) then {
				private ["_old_array", "_new_array"];

					_old_array = ((_statarray select _i) select 1);
					_new_array = [];
							
					{
						if (!(format["%1",_x] == "<null>" || format["%1", _x] == "<NULL-object>")) then {
								_new_array = _new_array + [_x];
							};
					} foreach _old_array;
							
				((_statarray select _i)) set [1, _new_array];					
			};

		};

	
	diag_log parseText (format["ServerLoadVar %1 - ClientLoadVar Being Sent to player<br/>			Player: %2 - %3", _name, _spieler, name _spieler]);
	format["if (player == %1) then {%2 spawn ClientLoadVar;};", _spieler, _statarray] call broadcast;
	
	diag_log parseText (format["ServerLoadVar %1 - Ended", _name]);
	
	_found

};


ClientLoadVar =
{

private ["_c", "_Fvararray"];

_Fvararray = _this;

diag_log parseText (format["ClientLoadVar - Started"]);

for [{_c=0}, {_c < (count _Fvararray)}, {_c=_c+1}] do
	{

	//call compile format ['%1 = %2;', ((_Fvararray select _c) select 0), ((_Fvararray select _c) select 1)];
	
		if ((typeName ((_Fvararray select _c) select 1)) == "STRING") then {
				call compile format ['%1 = "%2";', ((_Fvararray select _c) select 0), ((_Fvararray select _c) select 1)];
			} else {
				call compile format ['%1 = %2;', ((_Fvararray select _c) select 0), ((_Fvararray select _c) select 1)];
			};	
			
	};

diag_log parseText (format["ClientRequestVar - JIP Stats 1: %1", JIP_Stats_Ready]);
	
JIP_Stats_Ready = true;

diag_log parseText (format["ClientRequestVar - JIP Stats 2: %1", JIP_Stats_Ready]);
diag_log parseText (format["ClientLoadVar - Ended"]);

true

};
