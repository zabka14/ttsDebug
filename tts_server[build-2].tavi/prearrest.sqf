////////////////////////////////////
////			                 //
///     Copyright � TCG         //
//www.tcgaming.enjin.com       //
//////////////////////////////// Traduit par Previus
///-SCRIPT INFORMATION-//
//Initializing Profile Default
//
//-SCRIPT CONDITONS-//
//Script Begins: On Server Initialization
//Script Ends  : On EOF
//Wulfer Intelectual Property


private ["_vcl","_target","_cop"];
_target = objNull;
_cop = _this select 0;
_vcl = (nearestobjects [getpos _cop, ["Air", "Ship", "LandVehicle"], 3] select 0);
{
    if(_x distance _vcl < 10)then
    {
        if(animationstate _x == "civillying01")then
        {
            _target = _x;
        };
    };
}forEach civarray;
if(isNull _target)then
{
    _cop sideChat "Pas de civil retenus Pr�s du v�hicule";
}else{
    [_target,[_vcl, _target],"ClientArrest.sqf"] execVM "CB.sqf";
};