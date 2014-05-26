// script by EddieV223 Traduit par Previus
_selection = (_this select 3)select 0;

if(_selection == "unflip") then
{

	_vcl = (nearestobjects [getpos player, ["LandVehicle"], 10] select 0);
	//if (_vcl == "") exitwith {player groupchat "Aucun véhicule à porter";};
	if (_vcl in INV_VehicleArray) then
	{

	if ((count crew _vcl) > 0) exitWith {player groupChat "Le véhicule n'est pas vide!";};

	
	player groupchat "Le véhicule se retourne, attendez 5secondes dans les 10 metres.";
	sleep 5;

	if (player distance _vcl < 10) then
		{
		_vcl setvectorup [0.001,0.001,1];
		player groupchat "Votre véhicule est maintenant sur ces 4 roues";	
		}
		else
		{
		player groupchat "Recommencer en restant à moins de 10 metres du véhicule";
		};
	}
	else
	{
	player groupchat "Vous avez besoin des clés pour remettre le véhicule droit.";
	};
};

//eddiev223