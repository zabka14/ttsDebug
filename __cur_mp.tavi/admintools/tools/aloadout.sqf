_weapons = ["M14_EP1", "ItemGPS", "ItemWatch", "NVGoggles", "ItemMap"];
_magazines = ["20Rnd_762x51_DMR", "20Rnd_762x51_DMR", "20Rnd_762x51_DMR"];

hint "Giving gear to all";

_wadd = format ['removeAllWeapons player; 

swpn =
{
	_wpns = %1;
	{
		_isOK = true;
		if (_isOK) then {
			player addWeapon _x;
		};
	} forEach _wpns;
};

smag =
{
	_mags = %2;
	{
		_isOK = true;
		if (_isOK) then {
			player addMagazine _x;
		};
	} forEach _mags;
};

sbp =
{
	_bcpk = "%3";
	player addBackpack _bcpk;
};

sbpc =
{
	_holder = unitBackpack player;
	_objWpnTypes = %4;
	_objWpnQty = [1];
	_countr = 0;
	{
		_holder addmagazinecargoGlobal [_x,(_objWpnQty select _countr)];
	} forEach _objWpnTypes;
};

call swpn;
call smag;
call sbp;
call sbpc;
', _weapons, _magazines];
[_wadd] execVM "scr\exec.sqf";