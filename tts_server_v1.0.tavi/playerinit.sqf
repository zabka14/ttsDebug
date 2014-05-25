if (count actionkeys "teamswitch" == 0) then {[playerside, "hq"] sidechat "S'il vous plaît associer une touche à teamswitch (par défaut T) pour utiliser les menus"};
finddisplay 46 displayaddeventhandler ["keyup", "_dummy = _this execvm ""skeet.sqf"""];
"launchskeet" addpublicvariableeventhandler {skeetmachine say "LaunchSkeet"};
