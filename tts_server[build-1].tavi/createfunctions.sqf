INV_CreateGunboxLocal = {};

INV_DialogPlayers = 

{

private ["_c", "_Fid", "_Fname", "_Fingame", "_Findex", "_Flistlen", "_Feigenenum"];
_Fid        = _this select 0;
_Fname      = _this select 1;
_Fingame    = _this select 2;
_Findex     = 0;
_Flistlen   = 0;
_Feigenenum = -1;

for [{_c=0}, {_c < (count INV_PLAYERSTRINGLIST)}, {_c=_c+1}] do 

	{

	_Fspieler = INV_PLAYERSTRINGLIST select _c;

	if ( ((_Fingame) or (_Fspieler call ISSE_UnitExists)) ) then 

		{

		if (_Fname) then 

			{

			_Findex = lbAdd [_Fid, format ["%1 - (%2)", _Fspieler, name (call compile _Fspieler)]];

			} 
			else 
			{

			_Findex = lbAdd [_Fid, _Fspieler];

			};

			lbSetData [_Fid, _Findex, format["%1", _c]];
			if (_Fspieler == INV_ROLESTRING) then {_Feigenenum = _Flistlen;};
			_Flistlen = _Flistlen + 1;

		};

	};

[_Flistlen, _Feigenenum]

};

INV_CreateVehicle = 

{

private ["_classname", "_position","_dir"];
_classname = _this select 0;
_logic	   = _this select 1;
_type = typeof vehicle player;
_type1 = ["MH6J_EP1"];
_type2 = ["Mi17_Civilian","bd5j_civil_3","bd5j_civil_2","bd5j","GazelleUN","GazelleD","Gazelle","Gazelle1","Gazelle3","adf_as350","ibr_as350_specops","ibr_as350_jungle","OH58g","UH1H_TK_GUE_EP1","MH60S","HH65C","ibr_as350_civ"];


	if ((_classname in _type1) or (_classname in _type2))  then 
	{

	
		if (_classname in _type1) then 
		{
		
		call compile format ['

		newvehicle = _classname createVehicle %4; 
		newvehicle setpos %4; 
		newvehicle setdir %5; 
		newvehicle setVehicleInit "
		nul = [this] execVM ""heliDoor\heliDoor_init.sqf"";
		this setVehicleVarName ""vehicle_%1_%2"";
		vehicle_%1_%2 = this; 
		clearWeaponCargo this; 
		clearMagazineCargo this;
		newvehicle lock true;
		";
		processInitCommands;
		INV_VehicleArray = INV_VehicleArray + [vehicle_%1_%2]; 
		"INV_ServerVclArray = INV_ServerVclArray + [vehicle_%1_%2];if (""%3"" != """") then {[""CreatedVehicle"", vehicle_%1_%2, typeOf vehicle_%1_%2, %4] execVM ""%3"";};" call broadcast;
		', player, round(time), INV_CALL_CREATVEHICLE, getpos _logic, getdir _logic];

		};
		if (_classname in _type2) then 
		{
		
		call compile format ['

		newvehicle = _classname createVehicle %4; 
		newvehicle setpos %4; 
		newvehicle setdir %5; 
		newvehicle setVehicleInit "
		nul = [this, 1] execVM ""\norrn_dbo_fastrope\scripts\NORRN_fastRope_init.sqf"";
		this setVehicleVarName ""vehicle_%1_%2"";
		vehicle_%1_%2 = this; 
		clearWeaponCargo this; 
		clearMagazineCargo this;
		newvehicle lock true;
		";
		processInitCommands;
		INV_VehicleArray = INV_VehicleArray + [vehicle_%1_%2]; 
		"INV_ServerVclArray = INV_ServerVclArray + [vehicle_%1_%2];if (""%3"" != """") then {[""CreatedVehicle"", vehicle_%1_%2, typeOf vehicle_%1_%2, %4] execVM ""%3"";};" call broadcast;
		', player, round(time), INV_CALL_CREATVEHICLE, getpos _logic, getdir _logic];
		};


	}

	else 
	{
	
	call compile format ['

	newvehicle = _classname createVehicle %4; 
	newvehicle setpos %4; 
	newvehicle setdir %5; 
	newvehicle setVehicleInit "
	this setVehicleVarName ""vehicle_%1_%2""; 
	vehicle_%1_%2 = this; 
	clearWeaponCargo this; 
	clearMagazineCargo this;
	newvehicle lock true;
	"; 
	processInitCommands;
	INV_VehicleArray = INV_VehicleArray + [vehicle_%1_%2]; 
	"INV_ServerVclArray = INV_ServerVclArray + [vehicle_%1_%2];if (""%3"" != """") then {[""CreatedVehicle"", vehicle_%1_%2, typeOf vehicle_%1_%2, %4] execVM ""%3"";};" call broadcast;
	', player, round(time), INV_CALL_CREATVEHICLE, getpos _logic, getdir _logic];

	};

// Attack helicopter re-armament
// Ka-60
if (_classname == "Ka60_PMC") then
{
	newvehicle setVehicleInit 'this addAction ["HALO Jump","jump.sqf",[],1,false,true,"","_this in _target"]'; processInitCommands;
	hint "Reconfiguring helicopter armament...";
	newvehicle addweapon "CMFlareLauncher";
	newvehicle addmagazine "60Rnd_CMFlareMagazine";

};

// Tow INITS
// cooter
if (_classname == "cooter") then
{
	newvehicle setVehicleInit 'this addAction ["Unlock Impound","UnLockTowGate.sqf"]'; processInitCommands;
        newvehicle setVehicleInit 'this addAction ["Lock Impound","LockTowGate.sqf"]'; processInitCommands;
	hint "Initializing Tow Scripts";
	

	

};

// Tow INITS
// il_towtruck
if (_classname == "il_towtruck") then
{
	newvehicle setVehicleInit 'this addAction ["Unlock Impound","UnLockTowGate.sqf"]'; processInitCommands;
        newvehicle setVehicleInit 'this addAction ["Lock Impound","LockTowGate.sqf"]'; processInitCommands;
	hint "Initializing Tow Scripts";
	

	

};


// Attack helicopter re-armament
// Armed Littlebird
if (_classname == "AH6J_EP1") then
{
	newvehicle setVehicleInit 'this addAction ["HALO Jump","jump.sqf",[],1,false,true,"","_this in _target"]'; processInitCommands;
	hint "Reconfiguring helicopter armament...";
	newvehicle removeweapon "FFARLauncher_14";
	newvehicle addweapon "CMFlareLauncher";
	newvehicle addmagazine "60Rnd_CMFlareMagazine";
};
//WHITE SUV
if (_classname == "SUV_TK_EP1") then 
{
	newvehicle setVehicleInit 'this setObjectTexture [0, "#(rgb,1,1,1)color(255,255,255,1)"]'; processInitCommands;
};
//BOMBCAR
if (_classname == "Lada2_TK_CIV_EP1") then
{
	//newvehicle setVehicleInit 'this addAction ["Play Jihad Music","bombcarmusic.sqf",[],1,false,true,"","_this in _target"];this addAction ["Detonate","bombcarboom.sqf",[],1,false,true,"","_this in _target"]'; processInitCommands;
	//newvehicle addAction ["Play Jihad Music","bombcarmusic.sqf",[],1,false,true,"","_this in _target"];newvehicle addAction ["Detonate","bombcarboom.sqf",[],1,false,true,"","_this in _target"];
	jihadAction = newvehicle addAction ["Play Jihad Music","bombcarmusic.sqf",[],1,false,true,"","_this in _target"];
	detAction = newvehicle addAction ["Detonate","bombcarboom.sqf",[],1,false,true,"","_this in _target"];
};

if (_classname == "Ka52Black") then
{
	newvehicle setVehicleInit 'this addAction ["HALO Jump","jump.sqf",[],1,false,true,"","_this in _target"]'; processInitCommands;
	hint "Reconfiguring helicopter armament...";
	newvehicle removemagazine "12Rnd_Vikhr_KA50";
	newvehicle removemagazine "230Rnd_30mmHE_2A42";
	newvehicle removemagazine "40Rnd_80mm";
};

//PIRATES

if (_classname == "big_boat") then
{
	pirateAction = newvehicle addAction ["Play Pirate Music","piratemusic.sqf",[],1,false,true,"","_this in _target"];
};

if (_classname == "tcg_wave_red") then
{
	newvehicle addweapon "DSHKM";
	newvehicle addmagazine "150Rnd_127x107_DSHKM";
	newvehicle addmagazine "150Rnd_127x107_DSHKM";
	newvehicle addmagazine "150Rnd_127x107_DSHKM";
	newvehicle addmagazine "150Rnd_127x107_DSHKM";
	newvehicle addmagazine "150Rnd_127x107_DSHKM";
	newvehicle addmagazine "150Rnd_127x107_DSHKM";	
};


//UN SUV Re-Skin
if (_classname == "SUV_TK_CIV_EP1") then 
{
	newvehicle setVehicleInit 'this setObjectTexture [0, "images\suv_body_co14.paa"]'; processInitCommands;
};

//UN HMMWV Armored
if (_classname == "HMMWV") then 
{
	newvehicle setVehicleInit 'this setObjectTexture [0, "images\unhumvee.paa"]'; processInitCommands;
};

//UN HMMWV
if (_classname == "HMMWV_Armored") then 
{
	newvehicle setVehicleInit 'this setObjectTexture [0, "images\unhumvee1.paa"]'; processInitCommands;
};

// UH1Y Huey
if (_classname == "UH1Y") then
{
	newvehicle setVehicleInit 'this addAction ["HALO Jump","jump.sqf",[],1,false,true,"","_this in _target"]'; processInitCommands;
	hint "Reconfiguring helicopter armament...";
	newvehicle removeweapon "FFARLauncher_14";
	newvehicle addweapon "CMFlareLauncher";
	newvehicle addmagazine "60Rnd_CMFlareMagazine";
};

// Plane re-armament
if (_classname == "L39_TK_EP1") then
{
	hint "Reconfiguring plane armament...";
	newvehicle addweapon "CMFlareLauncher";
	newvehicle addmagazine "60Rnd_CMFlareMagazine";
	newvehicle addweapon "Ch29Launcher_Su34";
	newvehicle addmagazine "4Rnd_Ch29";
	newvehicle addmagazine "150Rnd_23mm_GSh23L";
	newvehicle addmagazine "150Rnd_23mm_GSh23L";
	newvehicle addmagazine "150Rnd_23mm_GSh23L";
	newvehicle addmagazine "150Rnd_23mm_GSh23L";
};

if (_classname == "ArmoredSUV_PMC") then
{
	newvehicle setVehicleInit 'suv_close_action = this addAction ["Close Cover","LG.sqf",[],1,false,true]'; processInitCommands;
};

if (_classname == "An2_TK_EP1") then
{
	newvehicle setVehicleInit 'this addAction ["HALO Jump","jump.sqf",[],1,false,true,"","_this in _target"]'; processInitCommands;
};

if (_classname == "An2_1_TK_CIV_EP1") then
{
	newvehicle setVehicleInit 'this addAction ["HALO Jump","jump.sqf",[],1,false,true,"","_this in _target"]'; processInitCommands;
};

if (_classname == "UH60M_EP1") then
{
	newvehicle setVehicleInit 'this addAction ["HALO Jump","jump.sqf",[],1,false,true,"","_this in _target"]'; processInitCommands;
};

if (_classname == "MH6J_EP1") then
{
	newvehicle setVehicleInit 'this addAction ["HALO Jump","jump.sqf",[],1,false,true,"","_this in _target"]'; processInitCommands;
};

if (_classname == "UH1H_TK_EP1") then
{
	newvehicle setVehicleInit 'this addAction ["HALO Jump","jump.sqf",[],1,false,true,"","_this in _target"]'; processInitCommands;
};

if (_classname == "UH1H_TK_GUE_EP1") then
{
	newvehicle setVehicleInit 'this addAction ["HALO Jump","jump.sqf",[],1,false,true,"","_this in _target"]'; processInitCommands;
};

if (_classname == "UH60M_MEV_EP1") then
{
	newvehicle setVehicleInit 'this addAction ["HALO Jump","jump.sqf",[],1,false,true,"","_this in _target"]'; processInitCommands;
};

if (_classname == "CH_47F_EP1") then
{
	newvehicle setVehicleInit 'this addAction ["HALO Jump","jump.sqf",[],1,false,true,"","_this in _target"]'; processInitCommands;
};

if (_classname == "C130J_US_EP1") then
{
	newvehicle setVehicleInit 'this addAction ["HALO Jump","jump.sqf",[],1,false,true,"","_this in _target"]'; processInitCommands;
};

if (_classname == "AH6X_EP1") then
{
	newvehicle setVehicleInit 'this addAction ["HALO Jump","jump.sqf",[],1,false,true,"","_this in _target"]'; processInitCommands;
};

if (_classname == "Mi17_CDF") then
{
	newvehicle setVehicleInit 'this addAction ["HALO Jump","jump.sqf",[],1,false,true,"","_this in _target"]'; processInitCommands;
};

if (_classname == "Mi17_Ins") then
{
	newvehicle setVehicleInit 'this addAction ["HALO Jump","jump.sqf",[],1,false,true,"","_this in _target"]'; processInitCommands;
};

if (_classname == "Mi17_Civilian") then
{
	newvehicle setVehicleInit 'this addAction ["HALO Jump","jump.sqf",[],1,false,true,"","_this in _target"]'; processInitCommands;
};

if (_classname == "C130J") then
{
	newvehicle setVehicleInit 'this addAction ["HALO Jump","jump.sqf",[],1,false,true,"","_this in _target"]'; processInitCommands;
};

//Cop SUV Re-Skin
if (_classname == "SUV_UN_EP1") then 
{
	newvehicle setVehicleInit 'this setObjectTexture [0, "images\suv_body_co2.paa"]'; processInitCommands;
};


//MEMBER CAR RESKIN
if (_classname == "Volha_2_TK_CIV_EP1") then 
{
	newvehicle setVehicleInit 'this setObjectTexture [0, "images\memvohla.paa"]'; processInitCommands;
};


//UN SUV Re-Skin
if (_classname == "SUV_TK_CIV_EP1") then 
{
	newvehicle setVehicleInit 'this setObjectTexture [0, "images\suv_body_co14.paa"]'; processInitCommands;
};


// An-2 Terror
if (_classname == "An2_TK_EP1") then
{
	hint "Your plane awaits you on the southwest beach.";
	newvehicle addweapon "PKT";
	newvehicle addmagazine "100Rnd_762x54_PK";
	newvehicle addmagazine "100Rnd_762x54_PK";
	newvehicle addmagazine "100Rnd_762x54_PK";
	newvehicle addmagazine "100Rnd_762x54_PK";
	newvehicle addmagazine "100Rnd_762x54_PK";
};

// L39 Police
if (_classname == "L39_TK_EP1") then
{
	hint "Reconfiguring plane armament...";
	newvehicle addweapon "CMFlareLauncher";
	newvehicle addmagazine "60Rnd_CMFlareMagazine";
	newvehicle addweapon "Ch29Launcher_Su34";
	newvehicle addmagazine "4Rnd_Ch29";
	newvehicle addmagazine "150Rnd_23mm_GSh23L";
	newvehicle addmagazine "150Rnd_23mm_GSh23L";
	newvehicle addmagazine "150Rnd_23mm_GSh23L";

};

};

INV_CreateWeapon = 

{

private["_class", "_menge", "_crate"];
_class = _this select 0;
_menge = _this select 1;
_crate = _this select 2;
_crate setDamage 0;

_crate setvehicleinit format["
this addweaponCargo [""%1"",%2];
", _class, _menge];
processInitCommands; 

};

INV_CreateMag = 

{

private["_class", "_menge", "_crate"];
_class = _this select 0;
_menge = _this select 1;
_crate = _this select 2;
_crate setDamage 0; 

_crate setvehicleinit format["
this addmagazineCargo [""%1"",%2];
", _class, _menge];
processInitCommands; 

};

INV_CreateItem = 

{

private["_class", "_menge", "_stor"];
_class = _this select 0;
_menge = _this select 1;
_stor  = _this select 2;
[_class, _menge, _stor] call INV_AddItemStorage;

};

BC_KillCar =
{
	//[] call BC_KillCar;
	private["_sel","_baitCar"];
	_sel = lbCurSel 1004;
	_baitCar = bc_baitcars select _sel;
	_baitCar lock true;
	while {fuel _baitCar > 0} do
	{
		_baitCar setFuel ((fuel _baitCar) - 0.2);
	};
};