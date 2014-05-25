_art = (_this select 3) select 0;
if(cracking)exitwith{player groupchat "you are already cracking a safe"};
cracking = true;

if (_art == "safe1") then 
{
(format ["%1 switchmove ""%2"";", player, "repairingkneel"]) call broadcast;
sleep 5;
	if ((random 100) < 40) then 
	{
	(format ["%1 switchmove ""%2"";", player, ""]) call broadcast;
	player groupChat "You cracked the safe";
	cracking = false;
	Playsound "Unlock";
	Safecracked1 = TRUE;
	}
	else
	{
	(format ["%1 switchmove ""%2"";", player, ""]) call broadcast;
	player groupChat "You did not crack the safe, try again";
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
	player groupChat "You cracked the safe";
	cracking = false;
	Playsound "Unlock";
	Safecracked2 = TRUE;
	}
	else
	{
	(format ["%1 switchmove ""%2"";", player, ""]) call broadcast;
	player groupChat "You did not crack the safe, try again";
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
	player groupChat "You cracked the safe";
	cracking = false;
	Playsound "Unlock";
	Safecracked3 = TRUE;
	}
	else
	{
	(format ["%1 switchmove ""%2"";", player, ""]) call broadcast;
	player groupChat "You did not crack the safe, try again";
	cracking = false;
	};
cracking = false;
};
*/