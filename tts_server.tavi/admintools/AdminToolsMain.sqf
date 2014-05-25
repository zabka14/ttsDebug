_pathtotools = "admintools\tools\";
_pathtoskins = "admintools\skins\";
_pathtoweapon = "admintools\weaponkits\";
_pathtoshields = "admintools\shields\";
_pathtovehicles = "admintools\vehicles\";
_EXECscript1 = 'player execVM "'+_pathtotools+'%1"';
_EXECscript2 = 'player execVM "'+_pathtoskins+'%1"';
_EXECscript3 = 'player execVM "'+_pathtoweapon+'%1"';
_EXECscript4 = 'player execVM "'+_pathtoshields+'%1"';
_EXECscript5 = 'player execVM "'+_pathtovehicles+'%1"';

//customise these menus to fit your server

adminmenu =
[
	["",true],
		["Tools Menu", [3], "#USER:ToolsMenu", -5, [["expression", ""]], "1", "1"],
		["Weapon Kits", [5], "#USER:WeaponMenu", -5, [["expression", ""]], "1", "1"],
		["Vehicle Menu", [7], "#USER:VehicleMenu", -5, [["expression", ""]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [13], "", -3, [["expression", ""]], "1", "1"]		
];

ModToolsMenu =
[
	["",true],
		        // ["Teleport", [2],  "", -5, [["expression", format[_EXECscript1,"teleport.sqf"]]], "1", "1"],
				//["Give gun All", [3],  "", -5, [["expression", format[_EXECscript1,"aloadout.sqf"]]], "1", "1"],
				//["God Mode(relog to disable bugs ui)", [3],  "", -5, [["expression", format[_EXECscript1,"Godmode.sqf"]]], "1", "1"],
				//["Car God", [4],  "", -5, [["expression", format[_EXECscript1,"cargod.sqf"]]], "1", "1"],
				//["Heal Player(s)", [5],  "", -5, [["expression", format[_EXECscript1,"healp.sqf"]]], "1", "1"],
				//["Look-N-Repair", [6],  "", -5, [["expression", format[_EXECscript1,"looknrepair.sqf"]]], "1", "1"],
				  ["Repair Buildings", [7],  "", -5, [["expression", format[_EXECscript1,"fixbuildings.sqf"]]], "1", "1"],
				  ["Spectate Player", [8],  "", -5, [["expression", format[_EXECscript1,"spectate.sqf"]]], "1", "1"],
		        //["Teleport To Me", [9], "", -5, [["expression", format[_EXECscript1, "TPtoME.sqf"]]], "1", "1"],
		          ["", [-1], "", -5, [["expression", ""]], "1", "0"],
			      ["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
//customise to fit
AdminToolsMenu =
[
	["",true],
        ["Teleport", [2],  "", -5, [["expression", format[_EXECscript1,"teleport.sqf"]]], "1", "1"],	
		["Look-N-Repair", [6],  "", -5, [["expression", format[_EXECscript1,"looknrepair.sqf"]]], "1", "1"],
		["Repair Buildings", [7],  "", -5, [["expression", format[_EXECscript1,"fixbuildings.sqf"]]], "1", "1"],
		["Spectate Player", [8],  "", -5, [["expression", format[_EXECscript1,"spectate.sqf"]]], "1", "1"],
		["Teleport To Me", [9], "", -5, [["expression", format[_EXECscript1, "TPtoME.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
ToolsMenu =
[
	["",true],
		["Whitelist", [2],  "", -5, [["expression", format[_EXECscript1,"whitelist.sqf"]]], "1", "1"],	
		["Teleport", [2],  "", -5, [["expression", format[_EXECscript1,"teleport.sqf"]]], "1", "1"],
		["Master Key", [3],  "", -5, [["expression", format[_EXECscript1,"masterkey.sqf"]]], "1", "1"],
		["Area Heal", [4],  "", -5, [["expression", format[_EXECscript1,"areaheal.sqf"]]], "1", "1"],
		["Look-N-Repair", [5],  "", -5, [["expression", format[_EXECscript1,"looknrepair.sqf"]]], "1", "1"],
		["Repair Buildings", [6],  "", -5, [["expression", format[_EXECscript1,"fixbuildings.sqf"]]], "1", "1"],
		["Spectate Player", [7],  "", -5, [["expression", format[_EXECscript1,"spectate.sqf"]]], "1", "1"],
		["Old Tool Menu", [8],  "", -5, [["expression", format[_EXECscript1,"excuteold.sqf"]]], "1", "1"],
		["Teleport To Me", [9], "", -5, [["expression", format[_EXECscript1, "TPtoME.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Next page", [12], "#USER:ToolsMenu2", -5, [["expression", ""]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
ToolsMenu2 = 
[
		["",true],
		["Flip Vehicle", [2],  "", -5, [["expression", format[_EXECscript1,"flipvehicle.sqf"]]], "1", "1"],
		["Add Money", [3],  "", -5, [["expression", format[_EXECscript1,"addmoney.sqf"]]], "1", "1"],
		["Comp All Players 100k", [4],  "", -5, [["expression", format[_EXECscript1,"comp.sqf"]]], "1", "1"],
		["Remove vehicles within 5m", [5],  "", -5, [["expression", format[_EXECscript1,"vi.sqf"]]], "1", "1"],
		["Skip Time", [6],  "", -5, [["expression", format[_EXECscript1,"9am.sqf"]]], "1", "1"],
		["Pimp My Ride", [7],  "", -5, [["expression", format[_EXECscript1,"pimpmyride.sqf"]]], "1", "1"],
		["Clean Server", [8],  "", -5, [["expression", format[_EXECscript1,"clear_server.sqf"]]], "1", "1"],
		["Kick", [9],  "", -5, [["expression", format[_EXECscript1,"kick.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
	    ["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

WeaponMenu =
[
	["",true],
				["USP Match", [1],  "", -5, [["expression", format[_EXECscript3,"USPMatch.sqf"]]], "1", "1"],
				["Stun Shotgun", [2],  "", -5, [["expression", format[_EXECscript3,"StunShotgun.sqf"]]], "1", "1"],
				["M4 AIM", [3],  "", -5, [["expression", format[_EXECscript3,"M4AIM.sqf"]]], "1", "1"],
				["RH_mk2", [4],  "", -5, [["expression", format[_EXECscript3,"22.sqf"]]], "1", "1"],
				["RH_m1911sd", [5],  "", -5, [["expression", format[_EXECscript3,"item11.sqf"]]], "1", "1"],
				["M14_EP1", [6],  "", -5, [["expression", format[_EXECscript3,"item13.sqf"]]], "1", "1"],
				["MMAAWS", [7],  "", -5, [["expression", format[_EXECscript3,"maaws.sqf"]]], "1", "1"],
				["STINGER", [8],  "", -5, [["expression", format[_EXECscript3,"stinger.sqf"]]], "1", "1"],
				["DMR", [9],  "", -5, [["expression", format[_EXECscript3,"itemz6.sqf"]]], "1", "1"],
		        ["", [-1], "", -5, [["expression", ""]], "1", "0"],
				["Exit", [16], "", -3, [["expression", ""]], "1", "1"]
];

VehicleMenu = 
[
	["",true],
		["La surprise du chef", [2],  "", -5, [["expression", format[_EXECscript5,"avenger.sqf"]]], "1", "1"],
		["M1113", [7],  "", -5, [["expression", format[_EXECscript5,"M1113.sqf"]]], "1", "1"],
		["MURCIELAGO", [4],  "", -5, [["expression", format[_EXECscript5,"roadrunner2.sqf"]]], "1", "1"],
		["m5 black", [5],  "", -5, [["expression", format[_EXECscript5,"APACHE.sqf"]]], "1", "1"],
		["Sheriff Taurus", [3],  "", -5, [["expression", format[_EXECscript5,"SheriffTaurus.sqf"]]], "1", "1"],
		["UH60M", [6],  "", -5, [["expression", format[_EXECscript5,"UH60.sqf"]]], "1", "1"],
		["Buggy", [9],  "", -5, [["expression", format[_EXECscript5,"Bike.sqf"]]], "1", "1"],
		["Piloucoptère", [8],  "", -5, [["expression", format[_EXECscript5,"AH64.sqf"]]], "1", "1"],		
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Next page", [12], "#USER:VehicleMenu2", -5, [["expression", ""]], "1", "1"],

				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
VehicleMenu2 = 
[
	["",true],
		["F35", [3],  "", -5, [["expression", format[_EXECscript5,"F35.sqf"]]], "1", "1"],
		["MV22", [2],  "", -5, [["expression", format[_EXECscript5,"MV22.sqf"]]], "1", "1"],
		["AC-130", [4],  "", -5, [["expression", format[_EXECscript5,"C130.sqf"]]], "1", "1"],		
		["", [-1], "", -5, [["expression", ""]], "1", "0"],

				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

showCommandingMenu "#USER:adminmenu";