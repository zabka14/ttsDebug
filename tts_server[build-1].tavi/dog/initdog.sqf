if (player == player) then {
    deletevehicle blitzy;
    "Pastor" createUnit [getPos player,group player,'blitzy=this;this setSpeedMode "FULL";this allowFleeing 0;this setBehaviour "aware";this setskill 1;this setcaptive true;',1,'PRIVATE'];
    blitzy setIdentity "blitzk9";

    if (leader player == player) then {
        [blitzy] joinsilent player;
    } else {
        blitzy dofollow player;
    };

    
blitzy setVariable ["_sound1", "dog_01"];
blitzy setVariable ["_sound2", "dog_02"];

publicVariable "blitzy";
//end
    while {alive blitzy} do
{    
    _near_humans = [];
    _alive_humans = [];
    _distance = 1000;
    _neareast = objNull;
    _near_humans = position blitzy nearEntities ["man",100];
    {if (side _x == east) then {_alive_humans = _alive_humans + [_x];blitzy knowsabout _x;}}forEach _near_humans;
    if (count _alive_humans >1)  then {
            _nearest = _alive_humans select 0;
            _distance = (position blitzy) distance (_nearest);
            if ((_distance > 75) && (_distance < 100)) then {
            _nic = [objNull, blitzy, rSAY, "dog_02"] call RE;
            blitzy dowatch _nearest;
        };
            if ((_distance > 50) && (_distance < 75)) then {
            _nic = [objNull, blitzy, rSAY, "dog_01"] call RE;
            blitzy domove position _nearest;
        };
            if ((_distance > 15) && (_distance < 50)) then {
            _nic = [objNull, blitzy, rSAY, "dog_01"] call RE;
            blitzy domove position _nearest;
        };
            if ((_distance > 10) && (_distance < 15)) then {
            blitzy domove position _nearest;
        };
            if (_distance < 10) then {
            _nic = [objNull, blitzy, rSAY, "dog_maul01"] call RE;
            blitzy domove position _nearest;
        };
    
    } else {
    
        blitzy dofollow player;
    
    };
    sleep 10;
};

};  