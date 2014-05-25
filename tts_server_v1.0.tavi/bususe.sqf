_this = _this select 3;
_art  = _this select 0;

if (_art == "getin") then 

{
	if (player distance bustruck <= 20) then {
	player moveincargo bustruck;
	}
	else{
	player groupchat "Le Ferry n'est pas assez proche";
	};
};

if (_art == "getout") then 

{

	if (player in (crew bustruck)) then {
	player action ["getOut", bustruck];
	}
	else{
	player action ["getOut", bustruck_1];
	};
};