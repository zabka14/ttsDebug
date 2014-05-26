if (!alive player)exitwith{}; 

isstunned=true;

player groupchat "Vous avez été menotter!"; 
waituntil {(animationstate player != "civilsitting" and animationstate player != "civilsitting03" and animationstate player != "civilsitting02" and animationstate player != "civilsitting01")};
	
if(animationstate player == "civilsitting" or animationstate player == "civilsitting03" or animationstate player == "civilsitting02" or animationstate player == "civilsitting01")then

	{

	player groupchat "Vous avez réussi à vous libérer!"; 
	(format ["%1 switchmove ""%2"";", player, "boundCaptive_unaErc"]) call broadcast;

	};

isstunned=false;
StunActiveTime=0;

