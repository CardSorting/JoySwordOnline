-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_OPTION"] )


g_pStaticupgrade = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticupgrade )
g_pStaticupgrade:SetName( "upgrade" )

g_pUIDialog:SetCloseCustomUIEventID( UI_SHOP_CUSTOM_MSG["USCM_ENCHANT_ITEM_EXIT"] )

---------BG

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticupgrade:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture03.TGA", "upgrade_bg1_top" )

g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticupgrade:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture03.TGA", "upgrade_bg1_middle" )

g_pPicture_bg:SetPoint
{
    ADD_SIZE_Y = 280,
	"LEFT_TOP		= D3DXVECTOR2(0,13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticupgrade:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture03.TGA", "upgrade_bg1_bottom" )

g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,294)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



----------------TITLE

g_pPicture_title = g_pUIDialog:CreatePicture()
g_pStaticupgrade:AddPicture( g_pPicture_title )

g_pPicture_title:SetTex( "DLG_UI_Title01.tga", "item2" )

g_pPicture_title:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(15,11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPicture_title = g_pUIDialog:CreatePicture()
g_pStaticupgrade:AddPicture( g_pPicture_title )

g_pPicture_title:SetTex( "DLG_UI_Title01.tga", "upgrade" )

g_pPicture_title:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(77-22,11-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


---bg2

g_pPicturebg2 = g_pUIDialog:CreatePicture()
g_pStaticupgrade:AddPicture( g_pPicturebg2 )

g_pPicturebg2:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg2_top" )

g_pPicturebg2:SetPoint
{

	
	"LEFT_TOP		= D3DXVECTOR2(13,69)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicturebg2 = g_pUIDialog:CreatePicture()
g_pStaticupgrade:AddPicture( g_pPicturebg2 )

g_pPicturebg2:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg2_middle" )

g_pPicturebg2:SetPoint
{

     ADD_SIZE_Y = 57,
	"LEFT_TOP		= D3DXVECTOR2(13,78)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPicturebg2 = g_pUIDialog:CreatePicture()
g_pStaticupgrade:AddPicture( g_pPicturebg2 )

g_pPicturebg2:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg2_bottom" )

g_pPicturebg2:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(13,136)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}





------bg3


g_pPicturebg3 = g_pUIDialog:CreatePicture()
g_pStaticupgrade:AddPicture( g_pPicturebg3 )

g_pPicturebg3:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg3_left" )

g_pPicturebg3:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(17,73)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicturebg3 = g_pUIDialog:CreatePicture()
g_pStaticupgrade:AddPicture( g_pPicturebg3 )

g_pPicturebg3:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg3_middle")

g_pPicturebg3:SetPoint
{

	ADD_SIZE_X = 309,
	"LEFT_TOP		= D3DXVECTOR2(25,73)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicturebg3 = g_pUIDialog:CreatePicture()
g_pStaticupgrade:AddPicture( g_pPicturebg3 )

g_pPicturebg3:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg3_right" )

g_pPicturebg3:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(335,73)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


--bg4


g_pPicturebg4 = g_pUIDialog:CreatePicture()
g_pStaticupgrade:AddPicture( g_pPicturebg4 )

g_pPicturebg4:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg2_top" )

g_pPicturebg4:SetPoint
{

	
	"LEFT_TOP		= D3DXVECTOR2(13,150)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicturebg4 = g_pUIDialog:CreatePicture()
g_pStaticupgrade:AddPicture( g_pPicturebg4 )

g_pPicturebg4:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg2_middle" )

g_pPicturebg4:SetPoint
{

     ADD_SIZE_Y = 41,
	"LEFT_TOP		= D3DXVECTOR2(13,159)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPicturebg4 = g_pUIDialog:CreatePicture()
g_pStaticupgrade:AddPicture( g_pPicturebg4 )

g_pPicturebg4:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg2_bottom" )

g_pPicturebg4:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(13,201)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



--------------------feel

g_pPicturemark = g_pUIDialog:CreatePicture()
g_pStaticupgrade:AddPicture( g_pPicturemark )

g_pPicturemark:SetTex( "DLG_UI_Common_Texture02.tga", "feel" )

g_pPicturemark:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(17,48)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPicturemark = g_pUIDialog:CreatePicture()
g_pStaticupgrade:AddPicture( g_pPicturemark )

g_pPicturemark:SetTex( "DLG_UI_Common_Texture02.tga", "feel" )

g_pPicturemark:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(25-5,156)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


-----강화안내문----

	Static_comment = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( Static_comment )
	Static_comment:SetName( "Static_comment" )

	Static_comment:AddString
	{
		MSG 			= STR_ID_1291,
		FONT_INDEX      = XUF_DODUM_12_SEMIBOLD,
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(36,50)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}

	
	Static_comment = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( Static_comment )
	Static_comment:SetName( "Static_comment" )

	Static_comment:AddString
	{
		MSG 			= STR_ID_1292,
		FONT_INDEX      = XUF_DODUM_11_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(45-2,158-6)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}

	
	Static_comment = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( Static_comment )
	Static_comment:SetName( "Static_comment" )

	Static_comment:AddString
	{
		MSG 			= STR_ID_1293,
		FONT_INDEX      = XUF_DODUM_11_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(43,176+3)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	
	
	
-----아이템 슬롯



g_pStatic_item_soket = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_item_soket )
g_pStatic_item_soket:SetName( "g_pStatic_item_Slot_Image" )


g_pPictureWindow_slot1 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPictureWindow_slot1 )

g_pPictureWindow_slot1:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPictureWindow_slot1:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(25,82)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


-----아이템이름
	Static_Item_Name = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( Static_Item_Name )
	Static_Item_Name:SetName( "Static_Item_Name" )

	Static_Item_Name:AddString
	{
		-- MSG 			= "+0윈드레스 보우",
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
		SORT_FLAG		= DRAW_TEXT["DT_HVCENTER"],
		"POS 			= D3DXVECTOR2(85+90,89+5)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	

	
	
	------- 강화비  박스

g_pStatic_item_soket = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_item_soket )
g_pStatic_item_soket:SetName( "g_pStatic_item_soket" )



g_pPicture_box1 = g_pUIDialog:CreatePicture()
g_pStaticupgrade:AddPicture( g_pPicture_box1 )

g_pPicture_box1:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )

g_pPicture_box1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(84,110)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}	
	
g_pPicture_box1 = g_pUIDialog:CreatePicture()
g_pStaticupgrade:AddPicture( g_pPicture_box1 )

g_pPicture_box1:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )

g_pPicture_box1:SetPoint
{
    ADD_SIZE_X = 143,
	"LEFT_TOP		= D3DXVECTOR2(89,110)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}	

g_pPicture_box1 = g_pUIDialog:CreatePicture()
g_pStaticupgrade:AddPicture( g_pPicture_box1 )

g_pPicture_box1:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )

g_pPicture_box1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(233,110)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


------강화비

g_pPictureed = g_pUIDialog:CreatePicture()
g_pStaticupgrade:AddPicture( g_pPictureed )

g_pPictureed:SetTex( "DLG_UI_Common_Texture02.TGA", "ed" )

g_pPictureed:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(89,113)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

	Static_ed = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( Static_ed )
	Static_ed:SetName( "Static_Enchant_Price" )

	Static_ed:AddString
	{
		-- MSG 			= "2,000,000,000",
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
		SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(219,114)",
		"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	
------------강화레벨 표시

g_pPicturelevel_box = g_pUIDialog:CreatePicture()
g_pStaticupgrade:AddPicture( g_pPicturelevel_box )

g_pPicturelevel_box:SetTex( "DLG_UI_Common_Texture02.TGA", "upgrade_level" )

g_pPicturelevel_box:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(273,82)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


----------강화 수치

g_pStatic_level = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_level )
g_pStatic_level:SetName( "Static_UpgradeLevel_SingleDigit" )
g_pStatic_level:AddDummyInt(10)      -- 이 스태틱에 그림이 10개 붙어 있습니다.


g_pPicturelevel0 = g_pUIDialog:CreatePicture()
g_pStatic_level:AddPicture( g_pPicturelevel0 )

g_pPicturelevel0:SetTex( "DLG_UI_Common_Texture02.TGA", "0" )

g_pPicturelevel0:SetPoint
{

	ADD_SIZE_Y		= -8,	
	ADD_SIZE_X		= -8,
	"LEFT_TOP		= D3DXVECTOR2(293+5,105+7)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicturelevel1 = g_pUIDialog:CreatePicture()
g_pStatic_level:AddPicture( g_pPicturelevel1 )

g_pPicturelevel1:SetTex( "DLG_UI_Common_Texture02.TGA", "1" )

g_pPicturelevel1:SetPoint
{

	ADD_SIZE_Y		= -8,
	ADD_SIZE_X		= -4,
	"LEFT_TOP		= D3DXVECTOR2(297+5,106+7)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicturelevel2 = g_pUIDialog:CreatePicture()
g_pStatic_level:AddPicture( g_pPicturelevel2 )

g_pPicturelevel2:SetTex( "DLG_UI_Common_Texture02.TGA", "2" )

g_pPicturelevel2:SetPoint
{

	ADD_SIZE_Y		= -8,
	ADD_SIZE_X		= -8,
	"LEFT_TOP		= D3DXVECTOR2(294+5,106+7)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicturelevel3 = g_pUIDialog:CreatePicture()
g_pStatic_level:AddPicture( g_pPicturelevel3 )

g_pPicturelevel3:SetTex( "DLG_UI_Common_Texture02.TGA", "3" )

g_pPicturelevel3:SetPoint
{

	ADD_SIZE_Y		= -8,
	ADD_SIZE_X		= -8,
	"LEFT_TOP		= D3DXVECTOR2(295+5,106+7)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPicturelevel4 = g_pUIDialog:CreatePicture()
g_pStatic_level:AddPicture( g_pPicturelevel4 )

g_pPicturelevel4:SetTex( "DLG_UI_Common_Texture02.TGA", "4" )

g_pPicturelevel4:SetPoint
{

	ADD_SIZE_Y		= -8,
	ADD_SIZE_X		= -8,
	"LEFT_TOP		= D3DXVECTOR2(293+5,106+7)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPicturelevel5 = g_pUIDialog:CreatePicture()
g_pStatic_level:AddPicture( g_pPicturelevel5 )

g_pPicturelevel5:SetTex( "DLG_UI_Common_Texture02.TGA", "5" )

g_pPicturelevel5:SetPoint
{

	ADD_SIZE_Y		= -8,
	ADD_SIZE_X		= -8,
	"LEFT_TOP		= D3DXVECTOR2(294+5,106+7)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicturelevel6 = g_pUIDialog:CreatePicture()
g_pStatic_level:AddPicture( g_pPicturelevel6 )

g_pPicturelevel6:SetTex( "DLG_UI_Common_Texture02.TGA", "6" )

g_pPicturelevel6:SetPoint
{

	ADD_SIZE_Y		= -8,
	ADD_SIZE_X		= -8,
	"LEFT_TOP		= D3DXVECTOR2(294+5,106+7)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicturelevel7 = g_pUIDialog:CreatePicture()
g_pStatic_level:AddPicture( g_pPicturelevel7)

g_pPicturelevel7:SetTex( "DLG_UI_Common_Texture02.TGA", "7" )

g_pPicturelevel7:SetPoint
{

	ADD_SIZE_Y		= -8,
	ADD_SIZE_X		= -8,
	"LEFT_TOP		= D3DXVECTOR2(296+5,106+7)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicturelevel8 = g_pUIDialog:CreatePicture()
g_pStatic_level:AddPicture( g_pPicturelevel8 )

g_pPicturelevel8:SetTex( "DLG_UI_Common_Texture02.TGA", "8" )

g_pPicturelevel8:SetPoint
{

	ADD_SIZE_Y		= -8,
	ADD_SIZE_X		= -8,
	"LEFT_TOP		= D3DXVECTOR2(294+5,106+7)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPicturelevel9 = g_pUIDialog:CreatePicture()
g_pStatic_level:AddPicture( g_pPicturelevel9 )

g_pPicturelevel9:SetTex( "DLG_UI_Common_Texture02.TGA", "9" )

g_pPicturelevel9:SetPoint
{

	ADD_SIZE_Y		= -8,
	ADD_SIZE_X		= -8,
	"LEFT_TOP		= D3DXVECTOR2(294+5,106+7)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

---------10lv

g_pStatic_level = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_level )
g_pStatic_level:SetName( "Static_UpgradeLevel_DoubleDigit_1" )
g_pStatic_level:AddDummyInt(10)      -- 이 스태틱에 그림이 10개 붙어 있습니다.


------------------------  한자릿수

g_pPicturelevel10 = g_pUIDialog:CreatePicture()
g_pStatic_level:AddPicture( g_pPicturelevel10 )

g_pPicturelevel10:SetTex( "DLG_UI_Common_Texture02.TGA", "0" )

g_pPicturelevel10:SetPoint
{

	ADD_SIZE_Y		= -8,
	ADD_SIZE_X		= -8,
	"LEFT_TOP		= D3DXVECTOR2(302+5-2,105+7)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicturelevel1 = g_pUIDialog:CreatePicture()
g_pStatic_level:AddPicture( g_pPicturelevel1 )

g_pPicturelevel1:SetTex( "DLG_UI_Common_Texture02.TGA", "1" )

g_pPicturelevel1:SetPoint
{

	ADD_SIZE_Y		= -8,
	ADD_SIZE_X		= -4,
	"LEFT_TOP		= D3DXVECTOR2(306+5-2,106+7)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPicturelevel2 = g_pUIDialog:CreatePicture()
g_pStatic_level:AddPicture( g_pPicturelevel2 )

g_pPicturelevel2:SetTex( "DLG_UI_Common_Texture02.TGA", "2" )

g_pPicturelevel2:SetPoint
{

	ADD_SIZE_Y		= -8,
	ADD_SIZE_X		= -8,
	"LEFT_TOP		= D3DXVECTOR2(301+5-2,106+7)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicturelevel3 = g_pUIDialog:CreatePicture()
g_pStatic_level:AddPicture( g_pPicturelevel3 )

g_pPicturelevel3:SetTex( "DLG_UI_Common_Texture02.TGA", "3" )

g_pPicturelevel3:SetPoint
{

	ADD_SIZE_Y		= -8,
	ADD_SIZE_X		= -8,
	"LEFT_TOP		= D3DXVECTOR2(301+5-2,106+7)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPicturelevel4 = g_pUIDialog:CreatePicture()
g_pStatic_level:AddPicture( g_pPicturelevel4 )

g_pPicturelevel4:SetTex( "DLG_UI_Common_Texture02.TGA", "4" )

g_pPicturelevel4:SetPoint
{

	ADD_SIZE_Y		= -8,
	ADD_SIZE_X		= -8,
	"LEFT_TOP		= D3DXVECTOR2(301+5-2,106+7)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



g_pPicturelevel5 = g_pUIDialog:CreatePicture()
g_pStatic_level:AddPicture( g_pPicturelevel5 )

g_pPicturelevel5:SetTex( "DLG_UI_Common_Texture02.TGA", "5" )

g_pPicturelevel5:SetPoint
{

	ADD_SIZE_Y		= -8,
	ADD_SIZE_X		= -8,
	"LEFT_TOP		= D3DXVECTOR2(301+5-2,106+7)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicturelevel6 = g_pUIDialog:CreatePicture()
g_pStatic_level:AddPicture( g_pPicturelevel6 )

g_pPicturelevel6:SetTex( "DLG_UI_Common_Texture02.TGA", "6" )

g_pPicturelevel6:SetPoint
{

	ADD_SIZE_Y		= -8,
	ADD_SIZE_X		= -8,
	"LEFT_TOP		= D3DXVECTOR2(301+5-2,106+7)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicturelevel7 = g_pUIDialog:CreatePicture()
g_pStatic_level:AddPicture( g_pPicturelevel7 )

g_pPicturelevel7:SetTex( "DLG_UI_Common_Texture02.TGA", "7" )

g_pPicturelevel7:SetPoint
{

	ADD_SIZE_Y		= -8,
	ADD_SIZE_X		= -8,
	"LEFT_TOP		= D3DXVECTOR2(303+5-2,106+7)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicturelevel8 = g_pUIDialog:CreatePicture()
g_pStatic_level:AddPicture( g_pPicturelevel8 )

g_pPicturelevel8:SetTex( "DLG_UI_Common_Texture02.TGA", "8" )

g_pPicturelevel8:SetPoint
{

	ADD_SIZE_Y		= -8,
	ADD_SIZE_X		= -8,
	"LEFT_TOP		= D3DXVECTOR2(301+5-2,106+7)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicturelevel9 = g_pUIDialog:CreatePicture()
g_pStatic_level:AddPicture( g_pPicturelevel9 )

g_pPicturelevel9:SetTex( "DLG_UI_Common_Texture02.TGA", "9" )

g_pPicturelevel9:SetPoint
{

	ADD_SIZE_Y		= -8,
	ADD_SIZE_X		= -8,
	"LEFT_TOP		= D3DXVECTOR2(301+5-2,106+7)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}




------------------  10 단위

g_pStatic_level = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_level )
g_pStatic_level:SetName( "Static_UpgradeLevel_DoubleDigit_10" )
g_pStatic_level:AddDummyInt(3)      -- 이 스태틱에 그림이 3개 붙어 있습니다.

g_pPicturelevel10 = g_pUIDialog:CreatePicture()
g_pStatic_level:AddPicture( g_pPicturelevel10 )

g_pPicturelevel10:SetTex( "DLG_UI_Common_Texture02.TGA", "0" )

g_pPicturelevel10:SetPoint
{

	ADD_SIZE_Y		= -8,
	ADD_SIZE_X		= -8,
	"LEFT_TOP		= D3DXVECTOR2(284+5+3,105+7)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicturelevel10 = g_pUIDialog:CreatePicture()
g_pStatic_level:AddPicture( g_pPicturelevel10 )

g_pPicturelevel10:SetTex( "DLG_UI_Common_Texture02.TGA", "1" )

g_pPicturelevel10:SetPoint
{

	ADD_SIZE_Y		= -8,
	ADD_SIZE_X		= -4,
	"LEFT_TOP		= D3DXVECTOR2(288+5+3,106+7)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicturelevel20 = g_pUIDialog:CreatePicture()
g_pStatic_level:AddPicture( g_pPicturelevel20 )

g_pPicturelevel20:SetTex( "DLG_UI_Common_Texture02.TGA", "2" )

g_pPicturelevel20:SetPoint
{

	ADD_SIZE_Y		= -8,
	ADD_SIZE_X		= -8,
	"LEFT_TOP		= D3DXVECTOR2(284+5+3,106+7)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

--------------------------------------------------------



g_pStatic_CB = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_CB )
g_pStatic_CB:SetName( "Static_CheckBox" )

-----체크박스

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStatic_CB:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

g_pPicture_box:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(188 - 37,19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStatic_CB:AddString
{
	MSG 			= STR_ID_1294,
	FONT_INDEX		= XUF_DODUM_12_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(206 - 37,19)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}




-------체크 표시
g_pCheckBoxsecret = g_pUIDialog:CreateCheckBox()
g_pCheckBoxsecret:SetName( "g_pCheckBoxsecret" )
g_pUIDialog:AddControl( g_pCheckBoxsecret )

g_pCheckBoxsecret:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )



g_pCheckBoxsecret:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )


g_pCheckBoxsecret:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(188 - 37,19)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(188+15 - 37,19+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxsecret:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(188-2 - 37,19-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}


g_pCheckBoxsecret:SetCustomMsgChecked( UI_SHOP_CUSTOM_MSG["USCM_ENCHANT_ADJUVANT_CHECKBOX"] )
g_pCheckBoxsecret:SetCustomMsgUnChecked( UI_SHOP_CUSTOM_MSG["USCM_ENCHANT_ADJUVANT_CHECKBOX"] )




------------------   기존 일반 고급 강화석 ---------------------------   >  비활성

g_pStatic_old_inactive = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_old_inactive )
g_pStatic_old_inactive:SetName( "Static_Inactive_Old" )


g_pPicture_old= g_pUIDialog:CreatePicture()
g_pStatic_old_inactive:AddPicture( g_pPicture_old )

g_pPicture_old:SetTex( "DLG_UI_Common_Texture02.TGA", "usual_up_noactive" )

g_pPicture_old:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(63,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStatic_old_inactive = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_old_inactive )
g_pStatic_old_inactive:SetName( "Static_Inactive_Old_High" )

g_pPicture_old= g_pUIDialog:CreatePicture()
g_pStatic_old_inactive:AddPicture( g_pPicture_old )

g_pPicture_old:SetTex( "DLG_UI_Common_Texture02.TGA", "high_up_noactive" )

g_pPicture_old:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(63,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




-------------------------   기존 일반 고급 강화석  -----------> 활성



g_pButtonusual = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonusual )
g_pButtonusual:SetName( "Button_Old" )
g_pButtonusual:SetNormalTex( "DLG_UI_BUTTON05.tga", "usual_up_NORMAL" )

g_pButtonusual:SetOverTex( "DLG_UI_BUTTON05.tga", "usual_up_OVER" )

g_pButtonusual:SetDownTex( "DLG_UI_BUTTON05.tga", "usual_up_OVER" )

g_pButtonusual:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(63,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonusual:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(62,243)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonusual:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(62+1,243+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonusual:SetCustomMsgMouseUp( UI_SHOP_CUSTOM_MSG["USCM_ENCHANT_ITEM_OLD_OK"] )


g_pButtonhigh = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonhigh )
g_pButtonhigh:SetName( "Button_Old_High" )
g_pButtonhigh:SetNormalTex( "DLG_UI_BUTTON05.tga", "high_up_NORMAL" )

g_pButtonhigh:SetOverTex( "DLG_UI_BUTTON05.tga", "high_up_OVER" )

g_pButtonhigh:SetDownTex( "DLG_UI_BUTTON05.tga", "high_up_OVER" )

g_pButtonhigh:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(63,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonhigh:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(62,243)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonhigh:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(62+1,243+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonhigh:SetCustomMsgMouseUp( UI_SHOP_CUSTOM_MSG["USCM_ENCHANT_ITEM_OLD_OK"] )



-------------- 기존 강화석 소유 갯수



	Static_double = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( Static_double )
	Static_double:SetName( "_double" )

	Static_double:AddString
	{
		MSG 			= STR_ID_2604,
		FONT_INDEX		= XUF_DODUM_11_NORMAl,
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(134,273)",
		"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	
	
	

	


	Static_old = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( Static_old )
	Static_old:SetName( "Static_Possible_Old" )

	Static_old:AddString
	{
		-- MSG 			= "20",
		FONT_INDEX		= XUF_DODUM_11_NORMAl,
		SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(157,273)",
		"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	
	
	--------------------  new 일반 강화석   ------------------------> 비활성
	
g_pStatic_inactive = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_inactive )
g_pStatic_inactive:SetName( "Static_Inactive1" )

g_pPicture_usual1= g_pUIDialog:CreatePicture()
g_pStatic_inactive:AddPicture( g_pPicture_usual1 )

g_pPicture_usual1:SetTex( "DLG_UI_Common_Texture07.TGA", "lv1_usual_noactive" )

g_pPicture_usual1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(182,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStatic_inactive = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_inactive )
g_pStatic_inactive:SetName( "Static_Inactive2" )

g_pPicture_usual2= g_pUIDialog:CreatePicture()
g_pStatic_inactive:AddPicture( g_pPicture_usual2 )

g_pPicture_usual2:SetTex( "DLG_UI_Common_Texture07.TGA", "lv2_usual_noactive" )

g_pPicture_usual2:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(182,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStatic_inactive = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_inactive )
g_pStatic_inactive:SetName( "Static_Inactive3" )


g_pPicture_usual3= g_pUIDialog:CreatePicture()
g_pStatic_inactive:AddPicture( g_pPicture_usual3 )

g_pPicture_usual3:SetTex( "DLG_UI_Common_Texture07.TGA", "lv3_usual_noactive" )

g_pPicture_usual3:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(182,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
	
g_pStatic_inactive = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_inactive )
g_pStatic_inactive:SetName( "Static_Inactive4" )
	
g_pPicture_usual4= g_pUIDialog:CreatePicture()
g_pStatic_inactive:AddPicture( g_pPicture_usual4 )

g_pPicture_usual4:SetTex( "DLG_UI_Common_Texture07.TGA", "lv4_usual_noactive" )

g_pPicture_usual4:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(182,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-----------------------------------------LV5 강화석 비활성
g_pStatic_inactive = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_inactive )
g_pStatic_inactive:SetName( "Static_Inactive5" )
	
g_pPicture_usual5= g_pUIDialog:CreatePicture()
g_pStatic_inactive:AddPicture( g_pPicture_usual5 )

g_pPicture_usual5:SetTex( "DLG_UI_Button18.TGA", "A5_USUARL_GRAY" )

g_pPicture_usual5:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(182+1,244+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-----------------------------------------LV6 강화석 비활성
g_pStatic_inactive = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_inactive )
g_pStatic_inactive:SetName( "Static_Inactive6" )
	
g_pPicture_usual6= g_pUIDialog:CreatePicture()
g_pStatic_inactive:AddPicture( g_pPicture_usual6 )

g_pPicture_usual6:SetTex( "DLG_UI_Button20_NEW.TGA", "A6_GRAY" )

g_pPicture_usual6:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(182+1,244+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--------------------  new 고급 강화석   ------------------------> 비활성

g_pStatic_inactive_High = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_inactive_High )
g_pStatic_inactive_High:SetName( "Static_Inactive_High1" )

g_pPicture_high1= g_pUIDialog:CreatePicture()
g_pStatic_inactive_High:AddPicture( g_pPicture_high1 )

g_pPicture_high1:SetTex( "DLG_UI_Common_Texture07.TGA", "lv1_high_noactive" )

g_pPicture_high1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(182,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStatic_inactive_High = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_inactive_High )
g_pStatic_inactive_High:SetName( "Static_Inactive_High2" )

g_pPicture_high2= g_pUIDialog:CreatePicture()
g_pStatic_inactive_High:AddPicture( g_pPicture_high2 )

g_pPicture_high2:SetTex( "DLG_UI_Common_Texture07.TGA", "lv2_high_noactive" )

g_pPicture_high2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(182,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_inactive_High = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_inactive_High )
g_pStatic_inactive_High:SetName( "Static_Inactive_High3" )

g_pPicture_high3= g_pUIDialog:CreatePicture()
g_pStatic_inactive_High:AddPicture( g_pPicture_high3 )

g_pPicture_high3:SetTex( "DLG_UI_Common_Texture07.TGA", "lv3_high_noactive" )

g_pPicture_high3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(182,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_inactive_High = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_inactive_High )
g_pStatic_inactive_High:SetName( "Static_Inactive_High4" )

g_pPicture_high4= g_pUIDialog:CreatePicture()
g_pStatic_inactive_High:AddPicture( g_pPicture_high4 )

g_pPicture_high4:SetTex( "DLG_UI_Common_Texture07.TGA", "lv4_high_noactive" )

g_pPicture_high4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(182,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStatic_inactive_High = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_inactive_High )
g_pStatic_inactive_High:SetName( "Static_Inactive_High5" )

g_pPicture_high5= g_pUIDialog:CreatePicture()
g_pStatic_inactive_High:AddPicture( g_pPicture_high5 )

g_pPicture_high5:SetTex( "DLG_UI_Button18.tga", "A5_UP_GRAY" )

g_pPicture_high5:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(182,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----------LV6 강화석 비활성
g_pStatic_inactive_High = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_inactive_High )
g_pStatic_inactive_High:SetName( "Static_Inactive_High6" )

g_pPicture_high6= g_pUIDialog:CreatePicture()
g_pStatic_inactive_High:AddPicture( g_pPicture_high6 )

g_pPicture_high6:SetTex( "DLG_UI_Button20_NEW.tga", "A6_HIGH_GRAY" )

g_pPicture_high6:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(182,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



------------------------------  new 일반 무기 강화석    ------------------------------

g_pButtona1_usual = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtona1_usual )
g_pButtona1_usual:SetName( "Button_Weapon_Normal1" )
g_pButtona1_usual:SetNormalTex( "DLG_UI_BUTTON06.tga", "a1_usual_NORMAL" )

g_pButtona1_usual:SetOverTex( "DLG_UI_BUTTON06.tga", "a1_usual_OVER" )

g_pButtona1_usual:SetDownTex( "DLG_UI_BUTTON06.tga", "a1_usual_OVER" )

g_pButtona1_usual:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(182,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtona1_usual:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(181,243)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtona1_usual:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(181+1,243+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtona1_usual:SetCustomMsgMouseUp( UI_SHOP_CUSTOM_MSG["USCM_ENCHANT_ITEM_NEW_OK"] )


g_pButtona2_usual = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtona2_usual )
g_pButtona2_usual:SetName( "Button_Weapon_Normal2" )
g_pButtona2_usual:SetNormalTex( "DLG_UI_BUTTON06.tga", "a2_usual_NORMAL" )

g_pButtona2_usual:SetOverTex( "DLG_UI_BUTTON06.tga", "a2_usual_OVER" )

g_pButtona2_usual:SetDownTex( "DLG_UI_BUTTON06.tga", "a2_usual_OVER" )

g_pButtona2_usual:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(182,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtona2_usual:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(181,243)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtona2_usual:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(181+1,243+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtona2_usual:SetCustomMsgMouseUp( UI_SHOP_CUSTOM_MSG["USCM_ENCHANT_ITEM_NEW_OK"] )


g_pButtona3_usual = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtona3_usual )
g_pButtona3_usual:SetName( "Button_Weapon_Normal3" )
g_pButtona3_usual:SetNormalTex( "DLG_UI_BUTTON06.tga", "a3_usual_NORMAL" )

g_pButtona3_usual:SetOverTex( "DLG_UI_BUTTON06.tga", "a3_usual_OVER" )

g_pButtona3_usual:SetDownTex( "DLG_UI_BUTTON06.tga", "a3_usual_OVER" )

g_pButtona3_usual:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(182,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtona3_usual:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(181,243)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtona3_usual:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(181+1,243+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtona3_usual:SetCustomMsgMouseUp( UI_SHOP_CUSTOM_MSG["USCM_ENCHANT_ITEM_NEW_OK"] )


g_pButtona4_usual = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtona4_usual )
g_pButtona4_usual:SetName( "Button_Weapon_Normal4" )
g_pButtona4_usual:SetNormalTex( "DLG_UI_BUTTON06.tga", "a4_usual_NORMAL" )

g_pButtona4_usual:SetOverTex( "DLG_UI_BUTTON06.tga", "a4_usual_OVER" )

g_pButtona4_usual:SetDownTex( "DLG_UI_BUTTON06.tga", "a4_usual_OVER" )

g_pButtona4_usual:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(182,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtona4_usual:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(181,243)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtona4_usual:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(181+1,243+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtona4_usual:SetCustomMsgMouseUp( UI_SHOP_CUSTOM_MSG["USCM_ENCHANT_ITEM_NEW_OK"] )


----------LV5 강화석
g_pButtona5_usual = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtona5_usual )
g_pButtona5_usual:SetName( "Button_Weapon_Normal5" )
g_pButtona5_usual:SetNormalTex( "DLG_UI_BUTTON18.tga", "A5_USUARL_NORMAL" )

g_pButtona5_usual:SetOverTex( "DLG_UI_BUTTON18.tga", "A5_USUARL_OVER" )

g_pButtona5_usual:SetDownTex( "DLG_UI_BUTTON18.tga", "A5_USUARL_OVER" )

g_pButtona5_usual:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(182+1,244+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtona5_usual:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(181,243)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtona5_usual:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(181+1,243+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtona5_usual:SetCustomMsgMouseUp( UI_SHOP_CUSTOM_MSG["USCM_ENCHANT_ITEM_NEW_OK"] )


----------LV6 강화석
g_pButtona6_usual = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtona6_usual )
g_pButtona6_usual:SetName( "Button_Weapon_Normal6" )
g_pButtona6_usual:SetNormalTex( "DLG_UI_Button20_NEW.tga", "A6_USUAL_NORMAL" )

g_pButtona6_usual:SetOverTex( "DLG_UI_Button20_NEW.tga", "A6_USUAL_OVER" )

g_pButtona6_usual:SetDownTex( "DLG_UI_Button20_NEW.tga", "A6_USUAL_OVER" )

g_pButtona6_usual:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(182+1,244+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtona6_usual:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(181,243)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtona6_usual:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(181+1,243+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtona6_usual:SetCustomMsgMouseUp( UI_SHOP_CUSTOM_MSG["USCM_ENCHANT_ITEM_NEW_OK"] )


--------------------------------------  고급 무기 강화석  



g_pButtona1_high = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtona1_high )
g_pButtona1_high:SetName( "Button_Weapon_High1" )
g_pButtona1_high:SetNormalTex( "DLG_UI_BUTTON06.tga", "a1_high_NORMAL" )

g_pButtona1_high:SetOverTex( "DLG_UI_BUTTON06.tga", "a1_high_OVER" )

g_pButtona1_high:SetDownTex( "DLG_UI_BUTTON06.tga", "a1_high_OVER" )

g_pButtona1_high:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(182,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtona1_high:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(181,243)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtona1_high:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(181+1,243+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtona1_high:SetCustomMsgMouseUp( UI_SHOP_CUSTOM_MSG["USCM_ENCHANT_ITEM_NEW_OK"] )

g_pButtona2_high = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtona2_high )
g_pButtona2_high:SetName( "Button_Weapon_High2" )
g_pButtona2_high:SetNormalTex( "DLG_UI_BUTTON06.tga", "a2_high_NORMAL" )

g_pButtona2_high:SetOverTex( "DLG_UI_BUTTON06.tga", "a2_high_OVER" )

g_pButtona2_high:SetDownTex( "DLG_UI_BUTTON06.tga", "a2_high_OVER" )

g_pButtona2_high:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(182,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtona2_high:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(181,243)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtona2_high:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(181+1,243+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtona2_high:SetCustomMsgMouseUp( UI_SHOP_CUSTOM_MSG["USCM_ENCHANT_ITEM_NEW_OK"] )


g_pButtona3_high = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtona3_high )
g_pButtona3_high:SetName( "Button_Weapon_High3" )
g_pButtona3_high:SetNormalTex( "DLG_UI_BUTTON06.tga", "a3_high_NORMAL" )

g_pButtona3_high:SetOverTex( "DLG_UI_BUTTON06.tga", "a3_high_OVER" )

g_pButtona3_high:SetDownTex( "DLG_UI_BUTTON06.tga", "a3_high_OVER" )

g_pButtona3_high:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(182,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtona3_high:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(181,243)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtona3_high:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(181+1,243+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtona3_high:SetCustomMsgMouseUp( UI_SHOP_CUSTOM_MSG["USCM_ENCHANT_ITEM_NEW_OK"] )


g_pButtona4_high = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtona4_high )
g_pButtona4_high:SetName( "Button_Weapon_High4" )
g_pButtona4_high:SetNormalTex( "DLG_UI_BUTTON06.tga", "a4_high_NORMAL" )

g_pButtona4_high:SetOverTex( "DLG_UI_BUTTON06.tga", "a4_high_OVER" )

g_pButtona4_high:SetDownTex( "DLG_UI_BUTTON06.tga", "a4_high_OVER" )

g_pButtona4_high:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(182,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtona4_high:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(181,243)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtona4_high:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(181+1,243+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtona4_high:SetCustomMsgMouseUp( UI_SHOP_CUSTOM_MSG["USCM_ENCHANT_ITEM_NEW_OK"] )


g_pButtona5_high = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtona5_high )
g_pButtona5_high:SetName( "Button_Weapon_High5" )
g_pButtona5_high:SetNormalTex( "DLG_UI_Button18.tga", "A5_UP_NORMAL" )

g_pButtona5_high:SetOverTex( "DLG_UI_Button18.tga", "A5_UP_OVER" )

g_pButtona5_high:SetDownTex( "DLG_UI_Button18.tga", "A5_UP_OVER" )

g_pButtona5_high:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(182,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtona5_high:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(181,243)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtona5_high:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(181+1,243+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtona5_high:SetCustomMsgMouseUp( UI_SHOP_CUSTOM_MSG["USCM_ENCHANT_ITEM_NEW_OK"] )

----------LV6 강화석
g_pButtona6_high = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtona6_high )
g_pButtona6_high:SetName( "Button_Weapon_High6" )
g_pButtona6_high:SetNormalTex( "DLG_UI_Button20_NEW.tga", "A6_HIGH_NORMAL" )

g_pButtona6_high:SetOverTex( "DLG_UI_Button20_NEW.tga", "A6_USUAL_OVER" )

g_pButtona6_high:SetDownTex( "DLG_UI_Button20_NEW.tga", "A6_USUAL_OVER" )

g_pButtona6_high:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(182,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtona6_high:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(181,243)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtona6_high:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(181+1,243+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtona6_high:SetCustomMsgMouseUp( UI_SHOP_CUSTOM_MSG["USCM_ENCHANT_ITEM_NEW_OK"] )




------------------------    일반 방어구 강화석   -----------




g_pButtonb1_usual = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonb1_usual )
g_pButtonb1_usual:SetName( "Button_Def_Normal1" )
g_pButtonb1_usual:SetNormalTex( "DLG_UI_BUTTON06.tga", "b1_usual_NORMAL" )

g_pButtonb1_usual:SetOverTex( "DLG_UI_BUTTON06.tga", "b1_usual_OVER" )

g_pButtonb1_usual:SetDownTex( "DLG_UI_BUTTON06.tga", "b1_usual_OVER" )

g_pButtonb1_usual:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(182,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonb1_usual:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(181,243)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonb1_usual:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(181+1,243+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonb1_usual:SetCustomMsgMouseUp( UI_SHOP_CUSTOM_MSG["USCM_ENCHANT_ITEM_NEW_OK"] )



g_pButtonb2_usual = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonb2_usual )
g_pButtonb2_usual:SetName( "Button_Def_Normal2" )
g_pButtonb2_usual:SetNormalTex( "DLG_UI_BUTTON06.tga", "b2_usual_NORMAL" )

g_pButtonb2_usual:SetOverTex( "DLG_UI_BUTTON06.tga", "b2_usual_OVER" )

g_pButtonb2_usual:SetDownTex( "DLG_UI_BUTTON06.tga", "b2_usual_OVER" )

g_pButtonb2_usual:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(182,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonb2_usual:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(181,243)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonb2_usual:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(181+1,243+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonb2_usual:SetCustomMsgMouseUp( UI_SHOP_CUSTOM_MSG["USCM_ENCHANT_ITEM_NEW_OK"] )



g_pButtonb3_usual = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonb3_usual )
g_pButtonb3_usual:SetName( "Button_Def_Normal3" )
g_pButtonb3_usual:SetNormalTex( "DLG_UI_BUTTON06.tga", "b3_usual_NORMAL" )

g_pButtonb3_usual:SetOverTex( "DLG_UI_BUTTON06.tga", "b3_usual_OVER" )

g_pButtonb3_usual:SetDownTex( "DLG_UI_BUTTON06.tga", "b3_usual_OVER" )

g_pButtonb3_usual:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(182,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonb3_usual:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(181,243)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonb3_usual:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(181+1,243+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonb3_usual:SetCustomMsgMouseUp( UI_SHOP_CUSTOM_MSG["USCM_ENCHANT_ITEM_NEW_OK"] )


g_pButtonb4_usual = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonb4_usual )
g_pButtonb4_usual:SetName( "Button_Def_Normal4" )
g_pButtonb4_usual:SetNormalTex( "DLG_UI_BUTTON06.tga", "b4_usual_NORMAL" )

g_pButtonb4_usual:SetOverTex( "DLG_UI_BUTTON06.tga", "b4_usual_OVER" )

g_pButtonb4_usual:SetDownTex( "DLG_UI_BUTTON06.tga", "b4_usual_OVER" )

g_pButtonb4_usual:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(182,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonb4_usual:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(181,242)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonb4_usual:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(181+1,242+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonb4_usual:SetCustomMsgMouseUp( UI_SHOP_CUSTOM_MSG["USCM_ENCHANT_ITEM_NEW_OK"] )

-------------------------------------------LV5 방어구
g_pButtonb5_usual = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonb5_usual )
g_pButtonb5_usual:SetName( "Button_Def_Normal5" )
g_pButtonb5_usual:SetNormalTex( "DLG_UI_BUTTON18.tga", "B5_USUARL_NORMAL" )

g_pButtonb5_usual:SetOverTex( "DLG_UI_BUTTON18.tga", "B5_USUARL_OVER" )

g_pButtonb5_usual:SetDownTex( "DLG_UI_BUTTON18.tga", "B5_USUARL_OVER" )

g_pButtonb5_usual:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(182,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonb5_usual:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(181,242+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonb5_usual:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(181+1,242+2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonb5_usual:SetCustomMsgMouseUp( UI_SHOP_CUSTOM_MSG["USCM_ENCHANT_ITEM_NEW_OK"] )

-------------------------------------------LV6 방어구
g_pButtonb6_usual = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonb6_usual )
g_pButtonb6_usual:SetName( "Button_Def_Normal6" )
g_pButtonb6_usual:SetNormalTex( "DLG_UI_Button20_NEW.tga", "B6_USUAL_NORMAL" )

g_pButtonb6_usual:SetOverTex( "DLG_UI_Button20_NEW.tga", "B6_USUAL_OVER" )

g_pButtonb6_usual:SetDownTex( "DLG_UI_Button20_NEW.tga", "B6_USUAL_OVER" )

g_pButtonb6_usual:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(182,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonb6_usual:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(181,242+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonb6_usual:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(181+1,242+2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonb6_usual:SetCustomMsgMouseUp( UI_SHOP_CUSTOM_MSG["USCM_ENCHANT_ITEM_NEW_OK"] )




------------------------------------------    고급 방어구 강화석    -------------------


g_pButtonb1_high = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonb1_high )
g_pButtonb1_high:SetName( "Button_Def_High1" )
g_pButtonb1_high:SetNormalTex( "DLG_UI_BUTTON06.tga", "b1_high_NORMAL" )

g_pButtonb1_high:SetOverTex( "DLG_UI_BUTTON06.tga", "b1_high_OVER" )

g_pButtonb1_high:SetDownTex( "DLG_UI_BUTTON06.tga", "b1_high_OVER" )

g_pButtonb1_high:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(182,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonb1_high:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(181,243)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonb1_high:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(181+1,243+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonb1_high:SetCustomMsgMouseUp( UI_SHOP_CUSTOM_MSG["USCM_ENCHANT_ITEM_NEW_OK"] )



g_pButtonb2_high = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonb2_high )
g_pButtonb2_high:SetName( "Button_Def_High2" )
g_pButtonb2_high:SetNormalTex( "DLG_UI_BUTTON06.tga", "b2_high_NORMAL" )

g_pButtonb2_high:SetOverTex( "DLG_UI_BUTTON06.tga", "b2_high_OVER" )

g_pButtonb2_high:SetDownTex( "DLG_UI_BUTTON06.tga", "b2_high_OVER" )

g_pButtonb2_high:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(182,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonb2_high:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(181,243)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonb2_high:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(181+1,243+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonb2_high:SetCustomMsgMouseUp( UI_SHOP_CUSTOM_MSG["USCM_ENCHANT_ITEM_NEW_OK"] )


g_pButtonb3_high = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonb3_high )
g_pButtonb3_high:SetName( "Button_Def_High3" )
g_pButtonb3_high:SetNormalTex( "DLG_UI_BUTTON06.tga", "b3_high_NORMAL" )

g_pButtonb3_high:SetOverTex( "DLG_UI_BUTTON06.tga", "b3_high_OVER" )

g_pButtonb3_high:SetDownTex( "DLG_UI_BUTTON06.tga", "b3_high_OVER" )

g_pButtonb3_high:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(182,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonb3_high:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(181,243)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonb3_high:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(181+1,243+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonb3_high:SetCustomMsgMouseUp( UI_SHOP_CUSTOM_MSG["USCM_ENCHANT_ITEM_NEW_OK"] )


g_pButtonb4_high = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonb4_high )
g_pButtonb4_high:SetName( "Button_Def_High4" )
g_pButtonb4_high:SetNormalTex( "DLG_UI_BUTTON06.tga", "b4_high_NORMAL" )

g_pButtonb4_high:SetOverTex( "DLG_UI_BUTTON06.tga", "b4_high_OVER" )

g_pButtonb4_high:SetDownTex( "DLG_UI_BUTTON06.tga", "b4_high_OVER" )

g_pButtonb4_high:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(182,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonb4_high:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(181,243)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonb4_high:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(181+1,243+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonb4_high:SetCustomMsgMouseUp( UI_SHOP_CUSTOM_MSG["USCM_ENCHANT_ITEM_NEW_OK"] )

g_pButtonb5_high = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonb5_high )
g_pButtonb5_high:SetName( "Button_Def_High5" )
g_pButtonb5_high:SetNormalTex( "DLG_UI_Button18.tga", "B5_UP_NORMAL" )

g_pButtonb5_high:SetOverTex( "DLG_UI_Button18.tga", "B5_UP_OVER" )

g_pButtonb5_high:SetDownTex( "DLG_UI_Button18.tga", "B5_UP_OVER" )

g_pButtonb5_high:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(182,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonb5_high:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(181,243)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonb5_high:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(181+1,243+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonb5_high:SetCustomMsgMouseUp( UI_SHOP_CUSTOM_MSG["USCM_ENCHANT_ITEM_NEW_OK"] )

----------LV6 강화석
g_pButtonb6_high = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonb6_high )
g_pButtonb6_high:SetName( "Button_Def_High6" )
g_pButtonb6_high:SetNormalTex( "DLG_UI_Button20_NEW.tga", "B6_HIGH_NORMAL" )

g_pButtonb6_high:SetOverTex( "DLG_UI_Button20_NEW.tga", "B6_HIGH_OVER" )

g_pButtonb6_high:SetDownTex( "DLG_UI_Button20_NEW.tga", "B6_HIGH_OVER" )

g_pButtonb6_high:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(182,244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonb6_high:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(181,243)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonb6_high:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(181+1,243+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonb6_high:SetCustomMsgMouseUp( UI_SHOP_CUSTOM_MSG["USCM_ENCHANT_ITEM_NEW_OK"] )





    Static_double = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( Static_double )
	Static_double:SetName( "_double" )

	Static_double:AddString
	{
		MSG 			= STR_ID_2604,
		FONT_INDEX		= XUF_DODUM_11_NORMAl,
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(254,273)",
		"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	
----------    new 강화석 갯수  ----------

	Static_new = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( Static_new )
	Static_new:SetName( "Static_Possible_New" )

	Static_new:AddString
	{
		-- MSG 			= "20",
		FONT_INDEX		= XUF_DODUM_11_NORMAl,
		SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(277,273)",
		"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	



---------------------------------EXIT


g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Cashshop_BuyWindow_Exit" )
g_pButtonX:SetNormalTex( "DLG_UI_BUTTON01.tga", "EXIT_NORMAL" )

g_pButtonX:SetOverTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetDownTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(324,13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(320,9)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(320+1,9+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( UI_SHOP_CUSTOM_MSG["USCM_ENCHANT_ITEM_EXIT"] )








-------------------------  개발자용   ------------------------
---------------------------------------------------------------




g_pStaticdeveloper = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticdeveloper )
g_pStaticdeveloper:SetName( "Static_DevCheat" )




-----체크박스

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticdeveloper:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

g_pPicture_box:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(119+99,216)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-------체크 표시
g_pCheckBoxsign = g_pUIDialog:CreateCheckBox()
g_pCheckBoxsign:SetName( "CheckBox_DevCheat" )
g_pUIDialog:AddControl( g_pCheckBoxsign )

g_pCheckBoxsign:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )



g_pCheckBoxsign:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )


g_pCheckBoxsign:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(119+99,216)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(134+99,231)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxsign:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(117+99,214)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}









----------------- bar


g_pPicturebar = g_pUIDialog:CreatePicture()
g_pStaticupgrade:AddPicture( g_pPicturebar )

g_pPicturebar:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicturebar:SetPoint
{

	ADD_SIZE_X = 340,
	"LEFT_TOP		= D3DXVECTOR2(10,43)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicturebar = g_pUIDialog:CreatePicture()
g_pStaticupgrade:AddPicture( g_pPicturebar )

g_pPicturebar:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicturebar:SetPoint
{

	ADD_SIZE_Y = 56,
	"LEFT_TOP		= D3DXVECTOR2(80,78)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPicturebar = g_pUIDialog:CreatePicture()
g_pStaticupgrade:AddPicture( g_pPicturebar )

g_pPicturebar:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicturebar:SetPoint
{

	ADD_SIZE_X = 340,
	"LEFT_TOP		= D3DXVECTOR2(10,237)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

