-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )

g_pStaticformat = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticformat )
g_pStaticformat:SetName( "format" )
g_pUIDialog:SetCloseCustomUIEventID( UI_SHOP_CUSTOM_MSG["USCM_ENCHANT_ITEM_RESULT_OK"] )

---------BG

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticformat:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture03.TGA", "upgrade_bg1_top" )

g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticformat:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture03.TGA", "upgrade_bg1_middle" )

g_pPicture_bg:SetPoint
{
    ADD_SIZE_Y = 263,
	"LEFT_TOP		= D3DXVECTOR2(0,13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticformat :AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture03.TGA", "upgrade_bg1_bottom" )

g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,277)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



----------------TITLE

g_pPicture_title = g_pUIDialog:CreatePicture()
g_pStaticformat:AddPicture( g_pPicture_title )

g_pPicture_title:SetTex( "DLG_UI_Title01.tga", "item2" )

g_pPicture_title:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(15,11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPicture_title = g_pUIDialog:CreatePicture()
g_pStaticformat:AddPicture( g_pPicture_title )

g_pPicture_title:SetTex( "DLG_UI_Title01.tga", "upgrade" )

g_pPicture_title:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(77-22,11-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



g_pPicture_title = g_pUIDialog:CreatePicture()
g_pStaticformat:AddPicture( g_pPicture_title )

g_pPicture_title:SetTex( "DLG_UI_Title01.tga", "result" )

g_pPicture_title:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(121+2,11+2-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}




---bg2

g_pPicturebg2 = g_pUIDialog:CreatePicture()
g_pStaticformat:AddPicture( g_pPicturebg2 )

g_pPicturebg2:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg2_top" )

g_pPicturebg2:SetPoint
{

	
	"LEFT_TOP		= D3DXVECTOR2(13,50)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicturebg2 = g_pUIDialog:CreatePicture()
g_pStaticformat:AddPicture( g_pPicturebg2 )

g_pPicturebg2:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg2_middle" )

g_pPicturebg2:SetPoint
{

     ADD_SIZE_Y = 126,
	"LEFT_TOP		= D3DXVECTOR2(13,59)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPicturebg2 = g_pUIDialog:CreatePicture()
g_pStaticformat:AddPicture( g_pPicturebg2 )

g_pPicturebg2:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg2_bottom" )

g_pPicturebg2:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(13,186)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


-----------------  강화 결과


g_pPictureWindow_image = g_pUIDialog:CreatePicture()
g_pStaticformat:AddPicture( g_pPictureWindow_image )

g_pPictureWindow_image:SetTex( "DLG_UI_Common_Texture07.tga", "format" )

g_pPictureWindow_image:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(30,51)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPictureWindow_image = g_pUIDialog:CreatePicture()
g_pStaticformat:AddPicture( g_pPictureWindow_image )

g_pPictureWindow_image:SetTex( "DLG_UI_Title01_A.tga", "format" )

g_pPictureWindow_image:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(184,54-10)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}





------bg3


g_pPicturebg3 = g_pUIDialog:CreatePicture()
g_pStaticformat:AddPicture( g_pPicturebg3 )

g_pPicturebg3:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg3_left" )

g_pPicturebg3:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(17,124)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicturebg3 = g_pUIDialog:CreatePicture()
g_pStaticformat:AddPicture( g_pPicturebg3 )

g_pPicturebg3:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg3_middle")

g_pPicturebg3:SetPoint
{

	ADD_SIZE_X = 309,
	"LEFT_TOP		= D3DXVECTOR2(25,124)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicturebg3 = g_pUIDialog:CreatePicture()
g_pStaticformat:AddPicture( g_pPicturebg3 )

g_pPicturebg3:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg3_right" )

g_pPicturebg3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(335,124)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}







--------------------feel

g_pPicturemark = g_pUIDialog:CreatePicture()
g_pStaticformat:AddPicture( g_pPicturemark )

g_pPicturemark:SetTex( "DLG_UI_Common_Texture02.tga", "feel" )

g_pPicturemark:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(58-46,202-5)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}




-----강화안내문----

	Static_comment = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( Static_comment )
	Static_comment:SetName( "Static_comment" )

	Static_comment:AddString
	{
		MSG 			= STR_ID_1297,
		FONT_INDEX      = XUF_DODUM_11_NORMAL,
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(79-46,205-8)",
		"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
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


	"LEFT_TOP		= D3DXVECTOR2(25,135)",

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
		FONT_INDEX		= XUF_DODUM_15_BOLD,
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(88,152)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	

	
	

------------강화레벨 표시

g_pPicturelevel_box = g_pUIDialog:CreatePicture()
g_pStaticformat:AddPicture( g_pPicturelevel_box )

g_pPicturelevel_box:SetTex( "DLG_UI_Common_Texture02.TGA", "upgrade_level" )

g_pPicturelevel_box:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(273,82+51)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


----------강화 수치

g_pStatic_level = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_level )
g_pStatic_level:SetName( "Static_UpgradeLevel_SingleDigit" )
g_pStatic_level:AddDummyInt(1)      -- 이 스태틱에 그림이 1개 붙어 있습니다 낄낄.



g_pPicturelevel1 = g_pUIDialog:CreatePicture()
g_pStatic_level:AddPicture( g_pPicturelevel1 )

g_pPicturelevel1:SetTex( "DLG_UI_Common_Texture02.TGA", "0" )

g_pPicturelevel1:SetPoint
{
	ADD_SIZE_Y		= -8,	
	ADD_SIZE_X		= -8,
	"LEFT_TOP		= D3DXVECTOR2(293+5,105+7+50)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}








--[[
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
g_pButtonX:SetCustomMsgMouseUp( UI_SHOP_CUSTOM_MSG["USCM_ENCHANT_ITEM_RESULT_OK"] )
--]]

---------------확인버튼


g_pButtoncheck = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtoncheck )
g_pButtoncheck:SetName( "Enchant_OK_Button" )
g_pButtoncheck:SetNormalTex( "DLG_UI_BUTTON05.tga", "ok_button_NORMAL" )

g_pButtoncheck:SetOverTex( "DLG_UI_BUTTON05.tga", "ok_button_OVER" )

g_pButtoncheck:SetDownTex( "DLG_UI_BUTTON05.tga", "ok_button_OVER" )

g_pButtoncheck:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(143,241)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncheck:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(140,238)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncheck:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(140+1,238+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncheck:SetCustomMsgMouseUp( UI_SHOP_CUSTOM_MSG["USCM_ENCHANT_ITEM_RESULT_OK"] )
g_pButtoncheck:RequestFocus()
g_pButtoncheck:SetEdge( false, 1, D3DXCOLOR( 0.4,0.6,0.8,1 ) )


----------------- bar


g_pPicturebar = g_pUIDialog:CreatePicture()
g_pStaticformat:AddPicture( g_pPicturebar )

g_pPicturebar:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicturebar:SetPoint
{

	ADD_SIZE_X = 340,
	"LEFT_TOP		= D3DXVECTOR2(10,45)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicturebar = g_pUIDialog:CreatePicture()
g_pStaticformat:AddPicture( g_pPicturebar )

g_pPicturebar:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicturebar:SetPoint
{

	ADD_SIZE_Y = 56,
	"LEFT_TOP		= D3DXVECTOR2(79,129)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

