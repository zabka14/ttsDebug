/*if(iscop)exitwith{player groupchat "Seuelment les civils sont autorisés à faire cela!"};

_this 	 = _this select 3;
_item1	 = _this select 0;
_item2	 = _this select 1;
_req	 = _this select 2;
_license = _this select 3;

_nitem1  = _item1 call INV_GetItemAmount;
_name1   = _item1 call INV_getitemName;
_name2   = _item2 call INV_getitemName;

if(!(_license call INV_HasLicense))exitwith{player groupchat "Vous n'avez pas la license"};

_multi = floor(_nitem1/_req);
_total = _req*_multi;

[_item1, -(_total)] call INV_AddInvItem;
[_item2, _multi, "INV_InventarArray"] call INV_CreateItem;

player groupchat format["%1 %2 est transformer en %3 %4!", _total, _name1, _multi, _name2];
*/

if (processscriptrunning == 1) exitwith { player groupchat "Nous travaillons aussi vite que nous le pouvons. S'il vous plaît attendez qu'ont soit pret avant de nous donner une autre tâche";
spamcount = spamcount + 1; 
if (spamcount == 5) then {player globalChat "J'ai spammé le script de processus 5 fois, en ignorant le texte qui me dit que je ne peux pas exécuter ce script plusieurs fois"};
if (spamcount == 10) then {player globalChat "J'ai spammé le script de processus 10 fois, en ignorant le texte qui me dit que je ne peux pas exécuter ce script plusieurs fois"};
}; 
processscriptrunning = 1;
if(iscop)exitwith{player groupchat "only civilians can do this!"; processscriptrunning = 0;};
 _this = _this select 3;
 _item1 = _this select 0;
 _item2 = _this select 1;
 _req = _this select 2;
 _license = _this select 3;
 _nitem1 = _item1 call INV_GetItemAmount;
 _name1 = _item1 call INV_getitemName;
 _name2 = _item2 call INV_getitemName;
 if(!(_license call INV_HasLicense))exitwith{player groupchat "Vous n'avez pas la license";
 processscriptrunning = 0;};
 _multi = floor(_nitem1/_req); 
_total = _req*_multi; 
[_item1, -(_total)] call INV_AddInvItem;
[_item2, _multi, "INV_InventarArray"] call INV_CreateItem;
player groupchat format["%1 %2 est transformer en %3 %4!", _total, _name1, _multi, _name2];
processscriptrunning = 0; 
// Tweaked by Radioman
