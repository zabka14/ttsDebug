_selecteur  = _this select 0;


//GESTION LISTES
if (_selecteur == "gestion_listes") then
{
	
		if(dialog)then{closeDialog 0;};	
	if (!(createDialog "admin_gestion_liste")) exitWith {hint "Dialog Error!"};							
	Antwort = 0;
	while {ctrlVisible 1920} do 
		{
		
			if (Antwort == 1) then {Antwort = 0;closedialog 0; ["liste_edit","Liste_Joueurs_Policier"] execVM "admintools\tools\admis.sqf";}; 
			if (Antwort == 2) then {Antwort = 0;closedialog 0; ["liste_edit","Liste_Joueur_Banni"] execVM "admintools\tools\admis.sqf";}; 
			if (Antwort == 3) then {Antwort = 0;closedialog 0; //["liste_edit","Liste_Gendarme_Reserviste"] execVM "admintools\tools\admis.sqf";
			}; 
			if (Antwort == 4) then {Antwort = 0;closedialog 0; };
			if (Antwort == 5) then {Antwort = 0;closedialog 0; };

		sleep 0.5;
		};	
};

if (_selecteur == "liste_edit") then
{
	_liste_string = _this select 1;

	if(dialog)then{closeDialog 0;};	
	createDialog "admin_edit_liste";	

	CtrlSetText [16, format ["%1",_liste_string]];
	
	_liste = call compile format ["%1",_liste_string];
	for [{_i = 0}, {_i < (count _liste)}, {_i = _i + 1}] do 
	{										
			_liste_array   = _liste select _i;
			
			_id   = (_liste_array select 0);
			_pseudo = (_liste_array select 1);
			
			_index = lbAdd [1, format ["%2 - %1", _id, _pseudo] ];
			lbSetData [1, _index, format ["%1", _id] ];

	};
	
	
	lbSetCurSel [1,0];
	Antwort = 0;
	while {ctrlVisible 1921} do 
	{
		_selectionne = lbCurSel 1;
		if (Antwort == 1) then  //retirer
		{ 
			Antwort = 0;
			closedialog 0; 	
			

			
			if (count (_liste) == 0) exitwith {[time,"admin","Liste Edition","Erreur: Liste Vide"] call Fct_Chat_Ajoute;};	
				//MAJ LISTE
			_liste set [_selectionne,-1];
			_liste = _liste - [-1];				
			call compile format ["%1 = %2;publicvariable ""%1"";",_liste_string, _liste];
			player groupChat format ["%1 a été mis a jour.",_liste_string];
		}; 
		
		if (Antwort == 2) then   //ajouter
		{
			Antwort = 0;
			_creation_pseudo =  ctrlText 81;
			_creation_id =  ctrlText 83;
			if (_creation_pseudo == "") exitwith {	hint parseText "<t align='center' color='#dc143c' size='1.2'>ATTENTION</t><br /><t align='left' color='#EF610C' size='1'>Le Pseudo est incorrect!</t>";};
			if (_creation_id == "") exitwith {	hint parseText "<t align='center' color='#dc143c' size='1.2'>ATTENTION</t><br /><t align='left' color='#EF610C' size='1'>L ID est incorrect!</t>";};
			closedialog 0; 	
			_liste = _liste + [[_creation_id,_creation_pseudo]];
			call compile format ["%1 = %2;publicvariable ""%1"";",_liste_string, _liste];
			player groupChat format ["%1 a été mis a jour.",_liste_string];
		}; 
		if(ctrlVisible 1921)then{sleep 0.3;};		
	};	
};