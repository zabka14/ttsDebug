while {true} do
{
  waitUntil {alive player};
 [] execVM "admintools\activate.sqf";
 [] execVM "execdog.sqf";


  waitUntil {!alive player};
};