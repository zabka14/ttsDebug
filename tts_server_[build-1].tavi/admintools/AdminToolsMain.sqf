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
		["Commande", [3], "#USER:ToolsMenu", -5, [["expression", ""]], "1", "1"],
		["Arme", [5], "#USER:WeaponMenu", -5, [["expression", ""]], "1", "1"],
		["Vehicule", [7], "#USER:VehicleMenu", -5, [["expression", ""]], "1", "1"],
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
		["Whitelist", [1],  "", -5, [["expression", format[_EXECscript1,"whitelist.sqf"]]], "1", "1"],	
		["Téléportation", [2],  "", -5, [["expression", format[_EXECscript1,"teleport.sqf"]]], "1", "1"],
		["Maitre des clés", [3],  "", -5, [["expression", format[_EXECscript1,"masterkey.sqf"]]], "1", "1"],
		["Tous soigner dans les 5m", [4],  "", -5, [["expression", format[_EXECscript1,"areaheal.sqf"]]], "1", "1"],
		["Tuné le vehicule", [5],  "", -5, [["expression", format[_EXECscript1,"pimpmyride.sqf"]]], "1", "1"],
		["Réparer les structures", [6],  "", -5, [["expression", format[_EXECscript1,"fixbuildings.sqf"]]], "1", "1"],
		["Surveiller un joueur", [7],  "", -5, [["expression", format[_EXECscript1,"spectate.sqf"]]], "1", "1"],
		["Supprimer les véhicules dans 5m", [8],  "", -5, [["expression", format[_EXECscript1,"vi.sqf"]]], "1", "1"],
		["Téléporter quelqu'un sur soit", [9], "", -5, [["expression", format[_EXECscript1, "TPtoME.sqf"]]], "1", "1"],
		["Changer le temps", [10],  "", -5, [["expression", format[_EXECscript1,"9am.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Next page", [12], "#USER:ToolsMenu2", -5, [["expression", ""]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
ToolsMenu2 = 
[
		["",true],
		["Invincible", [11],  "", -5, [["expression", format[_EXECscript1,"Godmode.sqf"]]], "1", "1"],		
		["Véhicule Invincible", [12],  "", -5, [["expression", format[_EXECscript1,"cargod.sqf"]]], "1", "1"],
		["Retourner le véhicule", [13],  "", -5, [["expression", format[_EXECscript1,"flipvehicle.sqf"]]], "1", "1"],
		["Se donner 999K", [54],  "", -5, [["expression", format[_EXECscript1,"addmoney.sqf"]]], "1", "1"],
		["Donner 999K a tous le monde", [16],  "", -5, [["expression", format[_EXECscript1,"comp.sqf"]]], "1", "1"],
		["Clean Server", [17],  "", -5, [["expression", format[_EXECscript1,"clear_server.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
	    ["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

WeaponMenu =
[
	["",true],
				["Clean Arme et Item", [1],  "", -5, [["expression", format[_EXECscript3,"cleanme.sqf"]]], "1", "1"],
				["AS-350", [2],  "", -5, [["expression", format[_EXECscript3,"AS350.sqf"]]], "1", "1"],
				["M-21", [3],  "", -5, [["expression", format[_EXECscript3,"bp2.sqf"]]], "1", "1"],
				["M4A3 CCO", [4],  "", -5, [["expression", format[_EXECscript3,"M4A3.sqf"]]], "1", "1"],
				["AA-12", [5],  "", -5, [["expression", format[_EXECscript3,"aa12.sqf"]]], "1", "1"],
				["Stinger", [6],  "", -5, [["expression", format[_EXECscript3,"stinger.sqf"]]], "1", "1"],
		        ["", [-1], "", -5, [["expression", ""]], "1", "0"],
				["Exit", [16], "", -3, [["expression", ""]], "1", "1"]
];

VehicleMenu = 
[
	["",true],
		["Deans Silverado", [1],  "", -5, [["expression", format[_EXECscript5,"Deans_Silverado.sqf"]]], "1", "1"],
		["Pontiac GTO 6", [2],  "", -5, [["expression", format[_EXECscript5,"Pontiac_GTO_6.sqf"]]], "1", "1"],
		["Cadillac CTS", [3],  "", -5, [["expression", format[_EXECscript5,"Cadillac_GTS.sqf"]]], "1", "1"],
		["Limousine", [4],  "", -5, [["expression", format[_EXECscript5,"Limousine.sqf"]]], "1", "1"],
		["SUV", [5],  "", -5, [["expression", format[_EXECscript5,"SUV.sqf"]]], "1", "1"],
		["UAZ", [6],  "", -5, [["expression", format[_EXECscript5,"UAZ.sqf"]]], "1", "1"],
		["URAL", [7],  "", -5, [["expression", format[_EXECscript5,"Ural.sqf"]]], "1", "1"],
		["V3S", [8],  "", -5, [["expression", format[_EXECscript5,"V3S.sqf"]]], "1", "1"],
		["Humvee", [9],  "", -5, [["expression", format[_EXECscript5,"Humvee.sqf"]]], "1", "1"],
		["Humvee TK", [10],  "", -5, [["expression", format[_EXECscript5,"Humvee_TK.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Next page", [12], "#USER:VehicleMenu2", -5, [["expression", ""]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

VehicleMenu2 = 
[
	["",true],
		["PBX", [11],  "", -5, [["expression", format[_EXECscript5,"PBX.sqf"]]], "1", "1"],
		["UH-1H", [12],  "", -5, [["expression", format[_EXECscript5,"UH_1H.sqf"]]], "1", "1"],
		["UH-1H TK", [13],  "", -5, [["expression", format[_EXECscript5,"UH_1H_TK.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Exit", [14], "", -3, [["expression", ""]], "1", "1"]
];

showCommandingMenu "#USER:adminmenu";