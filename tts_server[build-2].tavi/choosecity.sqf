_item = _this select 0;
_infos = _item call INV_getitemArray;
_carsinv = (carshop1 call INV_getshopArray) select 4; 
_carsinv1 = (carshop2 call INV_getshopArray) select 4; 
_carsinv2 = (carshop3 call INV_getshopArray) select 4; 
//_airinv = (airshop call INV_getshopArray) select 4;
_truckinv = (truckshop call INV_getshopArray) select 4;
_scarsinv = (scarshop call INV_getshopArray) select 4; 
_scarsinv2 = (scarshop2 call INV_getshopArray) select 4; 
_scarsinv3 = (scarshop3 call INV_getshopArray) select 4; 
_scarsinv4 = (scarshop4 call INV_getshopArray) select 4; 
_scarsinv5 = (scarshop5 call INV_getshopArray) select 4; 
_scarsinv6 = (scarshop6 call INV_getshopArray) select 4; 
_scarsinv7 = (scarshop7 call INV_getshopArray) select 4; 
_scarsinv8 = (scarshop8 call INV_getshopArray) select 4; 
_scarsinv9 = (scarshop9 call INV_getshopArray) select 4;
_pickupinv = (pickupshop1 call INV_getshopArray) select 4; 

if ([_item, _carsinv] call INV_iteminshop) exitwith

{

if (!(createDialog "distribute3")) exitWith {hint "Dialog Error!"};

//===================== CAR SHOP 1====================================

_shopnum      = carshop1 call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;																						
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

ctrlSetText [3, format["Used Cars for $%1", _preis]];
buttonSetAction [3, format['[%1,"%2",%3,%4,%5] execVM "exportvehicle.sqf";', _preis, _item, _stock, _maxstock, _shopnum]];
};

if ([_item, _carsinv1] call INV_iteminshop) exitwith

{
if (!(createDialog "distribute3")) exitWith {hint "Dialog Error!"};
//===================== Farm SHOP 2====================================

_shopnum      = carshop2 call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;																						
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

ctrlSetText [4, format["Farm Equipment for $%1", _preis]];
buttonSetAction [4, format['[%1,"%2",%3,%4,%5] execVM "exportvehicle.sqf";', _preis, _item, _stock, _maxstock, _shopnum]];

};

if ([_item, _scarsinv] call INV_iteminshop) exitwith

{

if (!(createDialog "distribute3")) exitWith {hint "Dialog Error!"};
//===================== CAR SHOP 3====================================

_shopnum      = carshop3 call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;																						
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

ctrlSetText [3, format["Used Cars for $%1", _preis]];
buttonSetAction [3, format['[%1,"%2",%3,%4,%5] execVM "exportvehicle.sqf";', _preis, _item, _stock, _maxstock, _shopnum]];
};

if ([_item, _carsinv1] call INV_iteminshop) exitwith

{
if (!(createDialog "distribute3")) exitWith {hint "Dialog Error!"};

//===================== Muscle Cars====================================

_shopnum      = scarshop call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;																						
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

ctrlSetText [3, format["Muscle Cars for $%1", _preis]];
buttonSetAction [3, format['[%1,"%2",%3,%4,%5] execVM "exportvehicle.sqf";', _preis, _item, _stock, _maxstock, _shopnum]];


};


if ([_item, _scarsinv2] call INV_iteminshop) exitwith

{

if (!(createDialog "distribute3")) exitWith {hint "Dialog Error!"};

//===================== Chargers Cars====================================

_shopnum      = scarshop2 call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;																						
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

ctrlSetText [3, format["Chargers for $%1", _preis]];
buttonSetAction [3, format['[%1,"%2",%3,%4,%5] execVM "exportvehicle.sqf";', _preis, _item, _stock, _maxstock, _shopnum]];


};


if ([_item, _scarsinv3] call INV_iteminshop) exitwith

{

if (!(createDialog "distribute3")) exitWith {hint "Dialog Error!"};

//===================== Low End Cars====================================

_shopnum      = scarshop3 call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;																						
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

ctrlSetText [3, format["Low End for $%1", _preis]];
buttonSetAction [3, format['[%1,"%2",%3,%4,%5] execVM "exportvehicle.sqf";', _preis, _item, _stock, _maxstock, _shopnum]];


};


if ([_item, _scarsinv4] call INV_iteminshop) exitwith

{

if (!(createDialog "distribute3")) exitWith {hint "Dialog Error!"};

//===================== Mid Cars====================================

_shopnum      = scarshop4 call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;																						
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

ctrlSetText [3, format["Mid Cars for $%1", _preis]];
buttonSetAction [3, format['[%1,"%2",%3,%4,%5] execVM "exportvehicle.sqf";', _preis, _item, _stock, _maxstock, _shopnum]];


};


if ([_item, _scarsinv5] call INV_iteminshop) exitwith

{

if (!(createDialog "distribute3")) exitWith {hint "Dialog Error!"};

//===================== High End Cars====================================

_shopnum      = scarshop5 call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;																						
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

ctrlSetText [3, format["High End for $%1", _preis]];
buttonSetAction [3, format['[%1,"%2",%3,%4,%5] execVM "exportvehicle.sqf";', _preis, _item, _stock, _maxstock, _shopnum]];

};


if ([_item, _scarsinv6] call INV_iteminshop) exitwith

{

if (!(createDialog "distribute3")) exitWith {hint "Dialog Error!"};

//===================== Nissan Cars====================================

_shopnum      = scarshop6 call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;																						
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

ctrlSetText [3, format["Nissan Cars for $%1", _preis]];
buttonSetAction [3, format['[%1,"%2",%3,%4,%5] execVM "exportvehicle.sqf";', _preis, _item, _stock, _maxstock, _shopnum]];

};

if ([_item, _scarsinv7] call INV_iteminshop) exitwith

{

if (!(createDialog "distribute3")) exitWith {hint "Dialog Error!"};

//===================== 350z Cars====================================

_shopnum      = scarshop7 call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;																						
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

ctrlSetText [3, format["350Z Cars for $%1", _preis]];
buttonSetAction [3, format['[%1,"%2",%3,%4,%5] execVM "exportvehicle.sqf";', _preis, _item, _stock, _maxstock, _shopnum]];

};

if ([_item, _scarsinv8] call INV_iteminshop) exitwith

{

if (!(createDialog "distribute3")) exitWith {hint "Dialog Error!"};

//===================== Ford Cars====================================

_shopnum      = scarshop8 call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;																						
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

ctrlSetText [3, format["Ford Cars for $%1", _preis]];
buttonSetAction [3, format['[%1,"%2",%3,%4,%5] execVM "exportvehicle.sqf";', _preis, _item, _stock, _maxstock, _shopnum]];

};

if ([_item, _scarsinv9] call INV_iteminshop) exitwith

{

if (!(createDialog "distribute3")) exitWith {hint "Dialog Error!"};

//===================== BMW Cars====================================

_shopnum      = scarshop9 call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;																						
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

ctrlSetText [3, format["BMW Cars for $%1", _preis]];
buttonSetAction [3, format['[%1,"%2",%3,%4,%5] execVM "exportvehicle.sqf";', _preis, _item, _stock, _maxstock, _shopnum]];

};

/*
if ([_item, _airinv] call INV_iteminshop) exitwith

{

if (!(createDialog "distribute3")) exitWith {hint "Dialog Error!"};

//===================== AIR SHOP 1====================================

_shopnum      = airshop call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;																						
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

ctrlSetText [3, format["AirShop for $%1", _preis]];
buttonSetAction [3, format['[%1,"%2",%3,%4,%5] execVM "exportvehicle.sqf";', _preis, _item, _stock, _maxstock, _shopnum]];

};
*/

if ([_item, _truckinv] call INV_iteminshop) exitwith

{

if (!(createDialog "distribute1")) exitWith {hint "Dialog Error!"};

//=====================TRUCK SHOP====================================

_shopnum      = truckshop call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;																						
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

passvararray  = [_preis, _item, _stock, _maxstock, _shopnum, truckshop];

ctrlSetText [3, format["TruckShop for $%1", _preis]];
buttonSetAction [3, format['[%1,"%2",%3,%4,%5] execVM "exportvehicle.sqf";', _preis, _item, _stock, _maxstock, _shopnum]];

};

if ([_item, _pickupinv] call INV_iteminshop) exitwith

{

if (!(createDialog "distribute3")) exitWith {hint "Dialog Error!"};

//=====================PICKUP====================================

_shopnum      = pickupshop1 call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;																						
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

ctrlSetText [3, format["Pickup Shop for $%1", _preis]];
buttonSetAction [3, format['[%1,"%2",%3,%4,%5] execVM "exportvehicle.sqf";', _preis, _item, _stock, _maxstock, _shopnum]];
};



player groupchat "Aucun Magazin veux acheter le véhicule sélectionné.";





