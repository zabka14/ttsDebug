_target = _this select 0;
_caller = _this select 1;
_id = _this select 2;

_nic = [nil,nil,"per",rremoveAction, _target, _id] call RE;
_target removeAction _id;
_target animate["CloseCover2",0];
sleep 0.5;
_target animate["CloseCover1",0];
sleep 0.5;
_target animate["HideGun_04",0];
sleep 0.5;
_target animate["HideGun_03",0];
sleep 0.5;
_target animate["HideGun_02",0];
sleep 0.5;
_target animate["HideGun_01",0];
sleep 0.5;
suv_close_action = _target addAction ["Close Cover","LG.sqf",[],1,false,true];