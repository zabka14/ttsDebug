_label = _this select 0;

if (_label == "basicintro") then 

{
titletext [localize "STRS_anfang_02","plain"];
sleep 7;
vehicle player say ["netcops",1];
sleep 6;
titletext [localize "STRS_anfang_03","plain"];
sleep 7;
};

if (_label == "camera") then 
{
sleep 3;									
titletext [localize "STRS_anfang_laden","plain"] ;				
sleep 25;														
titletext [localize "STRS_anfang_06","plain"];
};

if (_label == "copintro") then 
{
titletext ["Vous jouez en tant que Policier, Ecoutez vos superieures!","plain"];
sleep 5;
titletext [localize "STRS_maincoprules","plain"];
sleep 25;
};

if (_label == "civintro") then 
{
titletext ["Vous jouez en tant que Civil. Suivez les règles.","plain"];
sleep 5;
titletext [localize "STRS_maincivrules","plain"];
sleep 25;
};

if (_label == "govintro") then 
{
titletext ["Vous jouez en tant que Pompier/SAMU. Faite votre Job!","plain"];
sleep 25;
};