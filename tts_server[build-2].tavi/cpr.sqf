_vcl = _this select 0;
_damage = damage _vcl;

player groupchat format["%1", _vcl];

//if (_damage < 0.9) exitWith{player groupChat "Le joueur n'est pas mort !";};
_vcl setdamage 0;
