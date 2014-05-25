
_loopasdf=1;
_loopasdfg=1;
while {_loopasdf<=1} do {
        
"if (iscop) then {['geld',99999999] call INV_AddInvItem; 
player sidechat format[""-----  EVERYONE HAS RECIEVED 9,999,999 AS COMPENSATION ----- ""];};" 
call broadcast;
_loopasdf=_loopasdf+1;
       
 };
hint "Compensation Received.";

while {_loopasdfg<=1} do {

"if (isciv) then {['geld',99999999] call INV_AddInvItem; 
player sidechat format[""-----  EVERYONE HAS RECIEVED 9,999,999 AS COMPENSATION ----- ""];};" 
call broadcast;
_loopasdfg=_loopasdfg+1;

};

        

    