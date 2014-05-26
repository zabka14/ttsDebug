/*
The Roleplay Project: Reloaded
Copyright (C) 2011  Matthew Simms
*/
[] spawn
{
    
    disableSerialization;
    100 cutRsc ["RPP_Dlg_ui", "PLAIN"];
    while {true} do
    {
        _money = (('geld' call INV_GetItemAmount) call ISSE_str_IntToStr);
        _weight = [] call INV_GetOwnWeight;
        _maxWeight = INV_Tragfaehigkeit;
        _hunger = round(INV_hunger);
        _health = 100-(round((damage player) * 100));
        _id = getPlayerUID player;
        _maxbank = (konToStand call ISSE_str_IntToStr);
        ((RPP_display_ui select 0) displayCtrl 1) ctrlSetStructuredText parseText format["<t align='center'><t shadow='1'shadowColor='#000000'><t color='#08A300'>Argent: <t color='#68C900'>%1$:<t color='#68C900'>$%7<t color='#FFFFFF'> - <t color='#6E6E6E'>Inventaire: %2/%3 <t color='#FFFFFF'>-<t color='#40B6FF'> Santé: %4 <t color='#FFFFFF'>-<t color='#D62B2B'> Faim: %6 <t color='#FFFFFF'>-<t color='#E8E06F'> ID: %5</t> <t color='#FFFFFF'>-</t> <t color='#0101DF'>TS3 IP: 94.23.63.170:9999</t>", _money, _weight, _maxWeight, _health, _id, _hunger, _maxbank];
        sleep 1;
    };
};