_art = _this select 0;

if (_art == "use") then 

{
	if(player distance prisonflag_1 <= 40) then {
	["codeb", -1] call INV_AddInvItem;
		if ((random 100) < 20) then 
		{	
		player groupchat format ["The code to unlock is %1",armat_JailCode];		
		}
		else
		{
		player groupchat "Code Breaker Malfunction";		
		};
	}
	else
	{player groupchat "You are not near the entrance of the prison";};
};
								
		