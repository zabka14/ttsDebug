private ["_penalty"];

while {isciv} do 

{
	
_car    = vehicle player;
_speed  = speed _car;
_type   = typeof _car;

	{

	if ((player == driver _car) and (_car distance _x < 40) and (_speed >= 91) and !(_car iskindof "Air")) then 

		{ 

		_infos   = _type call INV_getitemArray;
		_license = (_infos select 4) select 1;

		titleCut [" ","white in",1];

		if(_speed >= 95  and _speed < 110) then {_penalty = 1};
		if(_speed >= 110 and _speed < 130) then {_penalty = 2};
		if(_speed >= 130 and _speed < 150) then {_penalty = 3};
		if(_speed >= 150 and _speed < 170) then {_penalty = 6};
		if(_speed >= 170 		 ) then {_penalty = 7};

		player groupchat format["Vous venez de vous faire FLASHER!!!!!!! (Limite: 90, Vitesse: %1)", round _speed];

		sleep 2;

		(format['if(!%3) then {server globalchat "Quelqu'un a été photographié à %4 et qui conduisé sans permis!";', player, _license, (_license call INV_HasLicense), _x]) call broadcast; 
		if(demerits == 0)exitwith{};

		demerits = demerits - _penalty;
		if(demerits < 0)then{demerits = 0};

		player groupchat format["Vos points perdus: %1. Vos points restants: %2", _penalty, demerits];

		(format['if(%3 == 0) then {server globalchat "%1 a perdu son/sa %2!";if(player == %1)then{INV_LizenzOwner = INV_LizenzOwner - ["%2"]; ["INV_LizenzOwner", INV_LizenzOwner] spawn ClientSaveVar};}', player, _license, demerits]) call broadcast; 

		}; 

	} foreach speedcamarray;

sleep 0.5;

};
