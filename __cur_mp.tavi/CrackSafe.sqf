_art = (_this select 3) select 0;
if(cracking)exitwith{player groupchat "Vous etes déjà entrain de cracker le coffre"};
cracking = true;

if (_art == "safe1") then 
{
(format ["%1 switchmove ""%2"";", player, "repairingkneel"]) call broadcast;
sleep 5;
	if ((random 100) < 40) then 
	{
	(format ["%1 switchmove ""%2"";", player, ""]) call broadcast;
	player groupChat "Vous avez cracker le coffre";
	cracking = false;
	Playsound "Unlock";
	Safecracked1 = TRUE;
	}
	else
	{
	(format ["%1 switchmove ""%2"";", player, ""]) call broadcast;
	player groupChat "Vous n'avez pas craquer le coffre-fort,essayer à nouveau";
	cracking = false;
	};
cracking = false;
};
/*
if (_art == "safe2") then 
{
(format ["%1 switchmove ""%2"";", player, "repairingkneel"]) call broadcast;
sleep 5;
	if ((random 100) < 40) then 
	{
	(format ["%1 switchmove ""%2"";", player, ""]) call broadcast;
	player groupChat "Vous avez cracker le coffre.";
	cracking = false;
	Playsound "Unlock";
	Safecracked2 = TRUE;
	}
	else
	{
	(format ["%1 switchmove ""%2"";", player, ""]) call broadcast;
	player groupChat "Vous n'avez pas craquer le coffre-fort,essayer à nouveau";
	cracking = false;
	};
cracking = false;
};

if (_art == "safe3") then 

{
(format ["%1 switchmove ""%2"";", player, "repairingkneel"]) call broadcast;
sleep 5;
	if ((random 100) < 40) then 
	{
	(format ["%1 switchmove ""%2"";", player, ""]) call broadcast;
	player groupChat "Vous avez cracker le coffre";
	cracking = false;
	Playsound "Unlock";
	Safecracked3 = TRUE;
	}
	else
	{
	(format ["%1 switchmove ""%2"";", player, ""]) call broadcast;
	player groupChat "Vous n'avez pas craquer le coffre-fort,essayer à nouveau";
	cracking = false;
	};
cracking = false;
};
*/