_target = _this select 0;
_caller = _this select 1;
_id = _this select 2;

_nic = [nil,nil,"per",rremoveAction, _target, _id] call RE;
_target removeAction _id;
_target animate["HideGun_01",1];
sleep 0.5;
_target animate["HideGun_02",1];
sleep 0.5;
_target animate["HideGun_03",1];
sleep 0.5;
_target animate["HideGun_04",1];
sleep 0.5;
_target animate["CloseCover1",1];
sleep 0.5;
_target animate["CloseCover2",1];
sleep 0.5;
suv_open_action = _target addAction ["Open Cover","RG.sqf",[],1,false,true];