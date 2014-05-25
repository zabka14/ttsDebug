//Modifications
//////////////////////////////////////////////////////////////////
//TOMTOM(00h) // -Ajout de de l'ID de josette : 111370246
//               - Ajout de l'ID de grisette : 111372102
//               - Ajout de Gerrard : 52918214
//               - Ajout de AWZ 63813702 et Pilou 247492102
//              
//
//
//////////////////////////////////////////////////////////////////


waituntil {!isnull (finddisplay 46)}; 
if ((getPlayerUID player) in ["242118086","72051142","114101446","238607942","110594822","63882630","52918214","63813702","247492102","245367878","15568838","240243654","111370246","111372102"]) then {
sleep 5;
player addaction [("<t color=""#0074E8"">" + ("ADMIN MENU") +"</t>"),"admintools\Eexcute.sqf","",5,false,true,"",""];
}
