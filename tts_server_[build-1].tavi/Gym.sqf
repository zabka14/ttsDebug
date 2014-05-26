//Add more carry weight for player//

_art = _this select 0;
_item = _this select 1;
if (_art == "use") then 

{

switch (_item) do 
{
	case "GymMem1" :
	{
		INV_Tragfaehigkeit = 70;
		player groupchat format["Vous pouvez maintenant soulever jusqu'à %1, mais en cas de décès, vous perdrez votre force", INV_Tragfaehigkeit];
		[_item, -1] call INV_AddInvItem;
	};
	case "GymMem2" :
	{
		INV_Tragfaehigkeit = 80;
		[_item, -1] call INV_AddInvItem;
		player groupchat format["Vous pouvez maintenant soulever jusqu'à %1, mais en cas de décès, vous perdrez votre force", INV_Tragfaehigkeit];
		
	};
	case "GymMem3" :
	{
		INV_Tragfaehigkeit = 90;
		[_item, -1] call INV_AddInvItem;
		player groupchat format["Vous pouvez maintenant soulever jusqu'à %1, mais en cas de décès, vous perdrez votre force", INV_Tragfaehigkeit];
	};

	case "GymMem4" :
	{
		INV_Tragfaehigkeit = 100;
		[_item, -1] call INV_AddInvItem;
		player groupchat format["Vous pouvez maintenant soulever jusqu'à %1, mais en cas de décès, vous perdrez votre force", INV_Tragfaehigkeit];
		_num = round random 100;
		sleep 5;	
		if (_num < 20) exitwith
		{
		player groupchat "Vous vous sentez mal.. vous faite une overdose..";
		player setdamage .5;
		sleep 10;
		player setdamage .7;
		sleep 5;
		player setdamage 1;
		};
	};
};

};