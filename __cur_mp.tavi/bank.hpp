class bank

{

idd = -1;
movingEnable = true;
controlsBackground[] = {DLG_BACK1, background};
objects[] = { };
controls[] = {text1, spielerliste, text2, transfer_eingabe, text4, money_steuern, submit, text5, withdraw_eingabe, withdraw_submit, cancel, trennlinie, text_inventarmoney, text_accountmoney, dummybutton};


	class DLG_BACK1: RscBackground

	{

	x = 0.31; y = 0.14;
	w = 0.37; h = 0.73;

	};

	class background : RscBgRahmen

	{

	x = 0.31; y = 0.14;
	w = 0.37; h = 0.73;
	text = $STRD_bank_description_title;

	};

	class text1 : RscText

	{

	x = 0.32; y = 0.17;
	w = 0.35; h = 0.04;
	style = ST_CENTER;
	text = $STRD_bank_description_deposit_transfer;

	};

	class spielerliste : RscCombo

	{

	idc = 1;
	x = 0.48; y = 0.22;
	w = 0.19; h = 0.04;

	};

	class text2 : RscText

	{

	x = 0.28; y = 0.22;
	w = 0.20; h = 0.04;
	style = ST_RIGHT;
	text = $STRD_bank_description_selectplayer;

	};

	class transfer_eingabe : RscEdit

	{

	idc = 2;
	x = 0.32;y = 0.27;
	w = 0.35;h = 0.04;
	text = "0";

	};

	class text4 : RscText

	{

	idc = 4;
	x = 0.47; y = 0.32;
	w = 0.12; h = 0.04;
	style = ST_RIGHT;
	text = $STRD_bank_description_steuern;

	};

	class money_steuern : RscText

	{

	idc = 5;
	x = 0.59; y = 0.32;
	w = 0.08; h = 0.04;
	text = "$";

	};

	class submit : RscButton

	{

	idc = 10;
	x = 0.39; y = 0.37;
	w = 0.20; h = 0.04;
	text = $STRD_bank_description_submit;

	};

	class text5 : RscText

	{

	x = 0.32; y = 0.58;
	w = 0.35; h = 0.04;
	style = ST_CENTER;
	text = $STRD_bank_description_withdraw;

	};

	class withdraw_eingabe : RscEdit

	{

	idc = 6;
	x = 0.32; y = 0.63;
	w = 0.35; h = 0.04;
	text = "0";

	};

	class withdraw_submit : RscButton

	{

	idc = 11;
	x = 0.39; y = 0.73;
	w = 0.20; h = 0.04;
	text = $STRD_bank_description_submit;

	};

	class cancel : RscButton

	{

	x = 0.39; y = 0.82;
	w = 0.20; h = 0.04;
	text = $STRD_bank_description_cancel;
	action = "closedialog 0";

	};

	class trennlinie : RscText

	{

	x = 0.32; y = 0.54;
	w = 0.35; h = 0.01;
	style = ST_FRAME;

	};

	class text_inventarmoney : RscText

	{

	x = 0.32; y = 0.44;
	w = 0.37; h = 0.04;
	idc = 101;
	style = ST_LEFT;
	text = "";

	};

	class text_accountmoney : RscText

	{

	x = 0.32; y = 0.49;
	w = 0.37; h = 0.04;
	idc = 102;
	style = ST_LEFT;
	text = "";

	};

	class dummybutton : RscDummy {idc = 1003;};

};