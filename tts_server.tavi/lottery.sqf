_art = _this select 0;
if (_art == "use") then 
{
_item == _this select 1;
_anzahl = _this select 2;
player groupChat "Scratching! ";
sleep 1;
	if ((random 450) < 2) then 
	{
	player groupChat "You Have Won The Jackpot! ";
	player groupChat "Play Again!";
	//Playsound "Carallarm";
	Kontostand = Kontostand + 100000;
	//["lticket", (5)] call INV_addinventoryitem;
	}
	
	else
	{
		if ((random 350) < 2) then 
		{
		player groupChat "You Have Won 50 Thousand Dollars!  ";
		player groupChat "Play Again!";
		//Kontostand = Kontostand + 50000;
		["geld", (50000)] call INV_addinventoryitem;
		["lticket", (-1)] call INV_addinventoryitem;
		//["lticket", (4)] call INV_addinventoryitem;
		}
		else
		{
			if ((random 300) < 2) then 
			{
			player groupChat "You Have Won 30 Thousand Dollars! ";
			player groupChat "Play Again!";
			//Kontostand = Kontostand + 30000;
			["geld", (30000)] call INV_addinventoryitem;
			["lticket", (-1)] call INV_addinventoryitem;
			//["lticket", (3)] call INV_addinventoryitem;
			}
			else
			{
				if ((random 275) < 3) then 
				{
				player groupChat "You Have Won 20 Thousand Dollars ";
				player groupChat "Play Again!";
				//Kontostand = Kontostand + 20000;
				["geld", (20000)] call INV_addinventoryitem;
				["lticket", (-1)] call INV_addinventoryitem;
				//["lticket", (2)] call INV_addinventoryitem;
				}
				else
				{
					if ((random 235) < 3) then 
					{
					player groupChat "You Have Won 10 Thousand Dollars ";
					player groupChat "Play Again!";
					//Kontostand = Kontostand + 10000;
					["geld", (10000)] call INV_addinventoryitem;
					["lticket", (-1)] call INV_addinventoryitem;
					//["lticket", (1)] call INV_addinventoryitem;
					}
					else
					{
						if ((random 175) < 4) then 
						{
						player groupChat "You Have Won 5 Thousand Dollars ";
						player groupChat "Play Again!";
						//Kontostand = Kontostand + 5000;
						["geld", (5000)] call INV_addinventoryitem;
						["lticket", (-1)] call INV_addinventoryitem;
						}
						else
						{
							if ((random 100) < 4) then 
							{
							player groupChat "You Have Won 3 Thousand Dollars ";
							player groupChat "Play Again!";
							//Kontostand = Kontostand + 3000;
							["geld", (3000)] call INV_addinventoryitem;
							["lticket", (-1)] call INV_addinventoryitem;
							}
							else
							{
								if ((random 60) < 5) then 
								{
								player groupChat "You Have Won 16 Hundred Dollars ";
								player groupChat "Play Again!";
								//Kontostand = Kontostand + 1600;
								["geld", (1600)] call INV_addinventoryitem;
								["lticket", (-1)] call INV_addinventoryitem;
								}
								else
								{
									if ((random 12) < 8) then 
									{
									player groupChat "You Have Won A Free Play! ";
									player groupChat "Play Again!";
									["lticket", (1)] call INV_addinventoryitem;
									["lticket", (-1)] call INV_addinventoryitem;
									}
									else
									{
										player groupChat "Regretfully You Have Won Nothing";
										player groupChat "Play Again!";
										["lticket", (-1)] call INV_addinventoryitem;
									};																																																																
								};
							};
						};
					};
				};
			};
		};
	};
};