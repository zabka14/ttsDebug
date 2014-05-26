_this setBehaviour "SAFE";
_this disableAI "ANIM";
_this action ["TEST",_this];
sleep 5;
waitUntil{
     if(animationState _this != "ActsPercMstpSnonWnonDnon_Dancingstefan")then{
          sleep 8+random(3);
          _this action ["TEST",_this];
          waitUntil{animationState _this == "ActsPercMstpSnonWnonDnon_Dancingstefan"}
     };
     behaviour _this != "SAFE"
}; 
_this enableAI "ANIM";