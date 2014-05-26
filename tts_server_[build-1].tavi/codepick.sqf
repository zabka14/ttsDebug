_art = _this select 0;

if (_art == "use") then 

{
	if(player distance prisonflag_1 <= 40) then {
	["codeb", -1] call INV_AddInvItem;
		if ((random 100) < 20) then 
		{	
		player groupchat format ["Le code de securiter est %1",armat_JailCode];		
		}
		else
		{
		player groupchat "Dysfonctionnement du Code Breaker";		
		};
	}
	else
	{player groupchat "Vous n'êtes pas près de l'entrée de la prison";};
};
								
		