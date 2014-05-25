//Author: {ZAG}Ed!
//Save stats - don't worry, even if I look at these scripts it boils my brains...

saver_loaded = false;
waitUntil{alive player};
//When you die Arma makes you civilian, so...
save_side = format["%1", side player];

//Prevent saving before loading
waitUntil{saver_loaded};
while {true} do{

	if(!(isNil "clientKontoArray")) then {
		saver_wait = true;
		[] spawn {
			sleep 4;
			saver_wait = false;
		};
		//minor exploit prevention
		waitUntil{!saver_wait || !alive player};
		sleep 0.25;

		_saving = [];
		_persistentsavearray = "";
		_saving = clientKontoArray;
		if(!isNil "_saving") then {
			for[{_ii=0},{_ii < count (_saving)},{_ii=_ii+1}] do
			{
				if ((((_saving) select _ii) select 0) != "INV_VehicleArray") then {
					if(_ii == count(_saving) - 1) then {
						if(typeName (((_saving) select _ii) select 1) == "ARRAY") then {
							_tmpar = _saving select _ii select 1;
							_persistentsavearray = _persistentsavearray + format["[""%1"", [
", _saving select _ii select 0];
							if(count (_tmpar) == 0) then {_persistentsavearray = _persistentsavearray + "]]";};
							for[{_z = 0},{_z < count(_tmpar)},{_z = _z + 1}] do {
								if(_z == (count(_tmpar) - 1)) then {
									if(typename (_tmpar select _z) == "STRING") then {
										_persistentsavearray = _persistentsavearray + format["""%1""]]
",_tmpar select _z];
									} else {
										_persistentsavearray = _persistentsavearray + format["%1]]
",_tmpar select _z];								
									};							
								} else {
									if(typename (_tmpar select _z) == "STRING") then {
										_persistentsavearray = _persistentsavearray + format["""%1"",
",_tmpar select _z];
									} else {
										_persistentsavearray = _persistentsavearray + format["%1,
",_tmpar select _z];								
									};	
								};							
							};							
						} else {
							_persistentsavearray = _persistentsavearray + format["%1
",(_saving) select _ii];
						};
					} else {
						if(typeName (((_saving) select _ii) select 1) == "ARRAY") then {
							_tmpar = _saving select _ii select 1;
							_persistentsavearray = _persistentsavearray + format["[""%1"", [
", _saving select _ii select 0];
							if(count (_tmpar) == 0) then {_persistentsavearray = _persistentsavearray + "]],";};
							for[{_z = 0},{_z < count(_tmpar)},{_z = _z + 1}] do {
								if(_z == (count(_tmpar) - 1)) then {
									if(typename (_tmpar select _z) == "STRING") then {
										_persistentsavearray = _persistentsavearray + format["""%1""]],
",_tmpar select _z];
									} else {
										_persistentsavearray = _persistentsavearray + format["%1]],
",_tmpar select _z];								
									};							
								} else {
									if(typename (_tmpar select _z) == "STRING") then {
										_persistentsavearray = _persistentsavearray + format["""%1"",
",_tmpar select _z];
									} else {
										_persistentsavearray = _persistentsavearray + format["%1,
",_tmpar select _z];								
									};	
								};							
							};				
						} else {
							_persistentsavearray = _persistentsavearray + format["%1,
",(_saving) select _ii];
						};
					};
				};
			};
			_persistentsavearray = "[" + _persistentsavearray + "]";
			call compile format['%1%2playersave = _persistentsavearray;', save_side,getPlayerUID player];
			call compile format['%1%2playersavear = clientKontoArray;', save_side,getPlayerUID player];
			publicVariableServer format["%1%2playersave", save_side,getPlayerUID player];
			publicVariableServer format["%1%2playersavear", save_side,getPlayerUID player];
		};
	};
};