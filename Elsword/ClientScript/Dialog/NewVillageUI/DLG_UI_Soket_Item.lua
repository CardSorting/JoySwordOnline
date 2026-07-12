-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--[[
g_pUIDialog:SetName( "DLG_Socket_Item" )
g_pUIDialog:SetPos( 300+222, 160 )
--]]


g_pUIDialog:SetFront( true )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( UI_INVENTORY_MSG["UIM_SOCKET_DLG_CLOSE"]  )



g_pStatic_item_soket = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_item_soket )
g_pStatic_item_soket:SetName( "g_pStatic_item_soket" )


g_pPictureWindow1 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPictureWindow1 )

g_pPictureWindow1:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg1_top" )

g_pPictureWindow1:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(0,0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPictureWindow2 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPictureWindow2 )

g_pPictureWindow2:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg1_middle" )

g_pPictureWindow2:SetPoint
{

	ADD_SIZE_Y = 399,
	"LEFT_TOP		= D3DXVECTOR2(0,10)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPictureWindow3 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPictureWindow3 )

g_pPictureWindow3:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg1_bottom" )

g_pPictureWindow3:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(0,410)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}




g_pPictureWindow_title = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPictureWindow_title )

g_pPictureWindow_title:SetTex( "DLG_UI_Title01.tga", "item2" )

g_pPictureWindow_title:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(14,11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPictureWindow_title = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPictureWindow_title )

g_pPictureWindow_title:SetTex( "DLG_UI_Title01.tga", "soket2" )

g_pPictureWindow_title:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(75,11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}







g_pPictureWindow4 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPictureWindow4 )

g_pPictureWindow4:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg2_top" )

g_pPictureWindow4:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(12,69)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPictureWindow5 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPictureWindow5 )

g_pPictureWindow5:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg2_middle" )

g_pPictureWindow5:SetPoint
{
  
    ADD_SIZE_Y = 122,
	"LEFT_TOP		= D3DXVECTOR2(12,78)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPictureWindow6 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPictureWindow6 )

g_pPictureWindow6:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg2_bottom" )

g_pPictureWindow6:SetPoint
{
  
 
	"LEFT_TOP		= D3DXVECTOR2(12,201)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}





g_pPictureWindow7 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPictureWindow7 )

g_pPictureWindow7:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg3_left" )

g_pPictureWindow7:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(17,73)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPictureWindow8 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPictureWindow8 )

g_pPictureWindow8:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg3_middle" )

g_pPictureWindow8:SetPoint
{

	ADD_SIZE_X = 310,
	"LEFT_TOP		= D3DXVECTOR2(25,73)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPictureWindow9 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPictureWindow9 )

g_pPictureWindow9:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg3_right" )

g_pPictureWindow9:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(335,73)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



-----------   마법석 bg


g_pPictureWindow10 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPictureWindow10 )

g_pPictureWindow10:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg4_left" )

g_pPictureWindow10:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(17,141)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPictureWindow11 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPictureWindow11 )

g_pPictureWindow11:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg4_middle" )

g_pPictureWindow11:SetPoint
{

	ADD_SIZE_X = 147,
	"LEFT_TOP		= D3DXVECTOR2(24,141)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPictureWindow12 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPictureWindow12 )

g_pPictureWindow12:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg4_right" )

g_pPictureWindow12:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(172,141)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


--------------  고급마법석 bg


g_pPictureWindow13 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPictureWindow13 )

g_pPictureWindow13:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg4_left" )

g_pPictureWindow13:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(180,141)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPictureWindow14 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPictureWindow14 )

g_pPictureWindow14:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg4_middle" )

g_pPictureWindow14:SetPoint
{

     ADD_SIZE_X = 147,
	"LEFT_TOP		= D3DXVECTOR2(187,141)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



g_pPictureWindow15 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPictureWindow15 )

g_pPictureWindow15:SetTex( "DLG_UI_Common_Texture03.tga", "soket_bg4_right" )

g_pPictureWindow15:SetPoint
{

	
	"LEFT_TOP		= D3DXVECTOR2(335,141)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



-----------------------------    마법석 수량 박스

g_pPicture_box1 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_box1 )

g_pPicture_box1:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )

g_pPicture_box1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(85,175)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box1 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_box1 )

g_pPicture_box1:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )

g_pPicture_box1:SetPoint
{
    ADD_SIZE_X = 76,
	"LEFT_TOP		= D3DXVECTOR2(90,175)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box1 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_box1 )

g_pPicture_box1:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )

g_pPicture_box1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(167,175)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-----------------------------    고급마법석 수량 박스

g_pPicture_box2 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_box2 )

g_pPicture_box2:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )

g_pPicture_box2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(248,175)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box2 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_box2 )

g_pPicture_box2:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )

g_pPicture_box2:SetPoint
{
    ADD_SIZE_X = 76,
	"LEFT_TOP		= D3DXVECTOR2(253,175)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box2 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_box2 )

g_pPicture_box2:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )

g_pPicture_box2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(330,175)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}








-----------  마법석, 고급 마법석 이미지

g_pPictureWindow_icon2 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPictureWindow_icon2 )

g_pPictureWindow_icon2:SetTex( "DLG_UI_Common_Texture02.tga", "soket_icon2" )

g_pPictureWindow_icon2:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(189,153)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPictureWindow_icon3 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPictureWindow_icon3 )

g_pPictureWindow_icon3:SetTex( "DLG_UI_Common_Texture02.tga", "soket_icon3" )

g_pPictureWindow_icon3:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(28,150)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}






g_pPicturemark = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicturemark )

g_pPicturemark:SetTex( "DLG_UI_Common_Texture02.tga", "feel" )

g_pPicturemark:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(17,48)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


----BAR

g_pPicturebar = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicturebar )

g_pPicturebar:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicturebar:SetPoint
{

	ADD_SIZE_X = 340,
	"LEFT_TOP		= D3DXVECTOR2(9,43)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPicturebar = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicturebar )

g_pPicturebar:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicturebar:SetPoint
{

	ADD_SIZE_X = 340,
	"LEFT_TOP		= D3DXVECTOR2(9,214)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPicturebar = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicturebar )

g_pPicturebar:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicturebar:SetPoint
{

	ADD_SIZE_Y = 57,
	"LEFT_TOP		= D3DXVECTOR2(79,78)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPicturebar = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicturebar )

g_pPicturebar:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicturebar:SetPoint
{

	ADD_SIZE_Y = 52,
	"LEFT_TOP		= D3DXVECTOR2(79,146)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



g_pPicturebar = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicturebar )

g_pPicturebar:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicturebar:SetPoint
{

	ADD_SIZE_Y = 52,
	"LEFT_TOP		= D3DXVECTOR2(242,146)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}





g_pStatic_magic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_magic )
g_pStatic_magic:SetName( "magic" )

g_pStatic_magic:AddString
{
	MSG 			= STR_ID_1368,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(87,154)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



g_pStatic_high = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_high )
g_pStatic_high:SetName( "high" )

g_pStatic_high:AddString
{
	MSG 			= STR_ID_1369,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(250,154)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}




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

g_pPictureWindow_slot2 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPictureWindow_slot2 )

g_pPictureWindow_slot2:SetTex( "DLG_Icon_Sealed_Item.tga", "Sealed_Item" )

g_pPictureWindow_slot2:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(25+1,82+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
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
	
    "LEFT_TOP		= D3DXVECTOR2(323,13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(319,9)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(319+1,9+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( UI_INVENTORY_MSG["UIM_SOCKET_DLG_CLOSE"] )


	
-----폰트----

	Static_comment1 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( Static_comment1 )
	Static_comment1:SetName( "Static_comment1" )

	Static_comment1:AddString
	{
		MSG 			= STR_ID_1370,
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(36,50)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	
	
	
	
	
	Static_comment4 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( Static_comment4 )
	Static_comment4:SetName( "Static_comment4" )

	Static_comment4:AddString
	{
		-- MSG 			= "＋미역국의 미역국 다시다검",
		FONT_INDEX		= XUF_DODUM_15_BOLD,
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(99,100)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	
	
	
	
		Static_double= g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( Static_double )
	Static_double:SetName( "Static_double" )

	Static_double:AddString
	{
		MSG 			= STR_ID_2604,
		FONT_INDEX		= XUF_DODUM_15_BOLD,
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(91,177)",
		"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	
	
	
	
		
		Static_double= g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( Static_double )
	Static_double:SetName( "Static_double" )

	Static_double:AddString
	{
		MSG 			= STR_ID_2604,
		FONT_INDEX		= XUF_DODUM_15_BOLD,
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(254,177)",
		"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	



--------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------마법석 수량
	g_pStatic_Normal_Magic_Stone_Num = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_Normal_Magic_Stone_Num )
	g_pStatic_Normal_Magic_Stone_Num:SetName( "g_pStatic_Normal_Magic_Stone_Num" )

	g_pStatic_Normal_Magic_Stone_Num:AddString
	{
		-- MSG 			= "999개",
		FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
		
		SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(155,179)",
		"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	
	g_pStatic_Rare_Magic_Stone_Num = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_Rare_Magic_Stone_Num )
	g_pStatic_Rare_Magic_Stone_Num:SetName( "g_pStatic_Rare_Magic_Stone_Num" )

	g_pStatic_Rare_Magic_Stone_Num:AddString
	{
		-- MSG 			= "999개",
		FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
		
		SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(318,179)",
		"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}


	








-----------회색창 

g_pStatic_Gray_Back_Slot1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Gray_Back_Slot1 )
g_pStatic_Gray_Back_Slot1:SetName( "g_pStatic_Gray_Back_Slot1" )






g_pPicture_gray_Window_slot1 = g_pUIDialog:CreatePicture()
g_pStatic_Gray_Back_Slot1:AddPicture( g_pPicture_gray_Window_slot1 )

g_pPicture_gray_Window_slot1:SetTex( "DLG_UI_Common_Texture03.tga", "soket_option_left" )

g_pPicture_gray_Window_slot1:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(13,220)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture_gray_Window_slot1 = g_pUIDialog:CreatePicture()
g_pStatic_Gray_Back_Slot1:AddPicture( g_pPicture_gray_Window_slot1 )

g_pPicture_gray_Window_slot1:SetTex( "DLG_UI_Common_Texture03.tga", "soket_option_middle" )

g_pPicture_gray_Window_slot1:SetPoint
{

    ADD_SIZE_X = 182,
	"LEFT_TOP		= D3DXVECTOR2(21,220)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



g_pPicture_gray_Window_slot1 = g_pUIDialog:CreatePicture()
g_pStatic_Gray_Back_Slot1:AddPicture( g_pPicture_gray_Window_slot1 )

g_pPicture_gray_Window_slot1:SetTex( "DLG_UI_Common_Texture03.tga", "soket_option_right" )

g_pPicture_gray_Window_slot1:SetPoint
{

	
	"LEFT_TOP		= D3DXVECTOR2(204,220)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}




g_pStatic_Gray_Back_Slot2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Gray_Back_Slot2 )
g_pStatic_Gray_Back_Slot2:SetName( "g_pStatic_Gray_Back_Slot2" )






g_pPicture_gray_Window_slot2 = g_pUIDialog:CreatePicture()
g_pStatic_Gray_Back_Slot2:AddPicture( g_pPicture_gray_Window_slot2 )

g_pPicture_gray_Window_slot2:SetTex( "DLG_UI_Common_Texture03.tga", "soket_option_left" )

g_pPicture_gray_Window_slot2:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(13,267)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture_gray_Window_slot2 = g_pUIDialog:CreatePicture()
g_pStatic_Gray_Back_Slot2:AddPicture( g_pPicture_gray_Window_slot2 )

g_pPicture_gray_Window_slot2:SetTex( "DLG_UI_Common_Texture03.tga", "soket_option_middle" )

g_pPicture_gray_Window_slot2:SetPoint
{

    ADD_SIZE_X = 182,
	"LEFT_TOP		= D3DXVECTOR2(21,267)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



g_pPicture_gray_Window_slot2 = g_pUIDialog:CreatePicture()
g_pStatic_Gray_Back_Slot2:AddPicture( g_pPicture_gray_Window_slot2 )

g_pPicture_gray_Window_slot2:SetTex( "DLG_UI_Common_Texture03.tga", "soket_option_right" )

g_pPicture_gray_Window_slot2:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(204,267)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}





g_pStatic_Gray_Back_Slot3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Gray_Back_Slot3 )
g_pStatic_Gray_Back_Slot3:SetName( "g_pStatic_Gray_Back_Slot3" )



g_pPicture_gray_Window_slot3 = g_pUIDialog:CreatePicture()
g_pStatic_Gray_Back_Slot3:AddPicture( g_pPicture_gray_Window_slot3 )

g_pPicture_gray_Window_slot3:SetTex( "DLG_UI_Common_Texture03.tga", "soket_option_left" )

g_pPicture_gray_Window_slot3:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(13,314)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture_gray_Window_slot3 = g_pUIDialog:CreatePicture()
g_pStatic_Gray_Back_Slot3:AddPicture( g_pPicture_gray_Window_slot3 )

g_pPicture_gray_Window_slot3:SetTex( "DLG_UI_Common_Texture03.tga", "soket_option_middle" )

g_pPicture_gray_Window_slot3:SetPoint
{

    ADD_SIZE_X = 182,
	"LEFT_TOP		= D3DXVECTOR2(21,314)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



g_pPicture_gray_Window_slot3 = g_pUIDialog:CreatePicture()
g_pStatic_Gray_Back_Slot3:AddPicture( g_pPicture_gray_Window_slot3 )

g_pPicture_gray_Window_slot3:SetTex( "DLG_UI_Common_Texture03.tga", "soket_option_right" )

g_pPicture_gray_Window_slot3:SetPoint
{

	
	"LEFT_TOP		= D3DXVECTOR2(204,314)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}




g_pStatic_Gray_Back_Slot4 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Gray_Back_Slot4 )
g_pStatic_Gray_Back_Slot4:SetName( "g_pStatic_Gray_Back_Slot4" )





g_pPicture_gray_Window_slot4 = g_pUIDialog:CreatePicture()
g_pStatic_Gray_Back_Slot4:AddPicture( g_pPicture_gray_Window_slot4 )

g_pPicture_gray_Window_slot4:SetTex( "DLG_UI_Common_Texture03.tga", "soket_option_left" )

g_pPicture_gray_Window_slot4:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(13,361)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture_gray_Window_slot4 = g_pUIDialog:CreatePicture()
g_pStatic_Gray_Back_Slot4:AddPicture( g_pPicture_gray_Window_slot4 )

g_pPicture_gray_Window_slot4:SetTex( "DLG_UI_Common_Texture03.tga", "soket_option_middle" )

g_pPicture_gray_Window_slot4:SetPoint
{

     ADD_SIZE_X = 182,
	"LEFT_TOP		= D3DXVECTOR2(21,361)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



g_pPicture_gray_Window_slot4 = g_pUIDialog:CreatePicture()
g_pStatic_Gray_Back_Slot4:AddPicture( g_pPicture_gray_Window_slot4 )

g_pPicture_gray_Window_slot4:SetTex( "DLG_UI_Common_Texture03.tga", "soket_option_right" )

g_pPicture_gray_Window_slot4:SetPoint
{

	
	"LEFT_TOP		= D3DXVECTOR2(204,361)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}














---------------- EMPTY



	g_pStatic_One_Line_Option_Desc_Slot1 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_One_Line_Option_Desc_Slot1 )
	g_pStatic_One_Line_Option_Desc_Slot1:SetName( "Static_Empty1" )

	g_pStatic_One_Line_Option_Desc_Slot1:AddString
	{
		MSG 			= STR_ID_2610,
		FONT_INDEX		= XUF_DODUM_20_BOLD,
		FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(115,231)",
		"COLOR			= D3DXCOLOR(0.7,0.7,0.7,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	
	
		g_pStatic_One_Line_Option_Desc_Slot2 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_One_Line_Option_Desc_Slot2 )
	g_pStatic_One_Line_Option_Desc_Slot2:SetName( "Static_Empty2" )

	g_pStatic_One_Line_Option_Desc_Slot2:AddString
	{
		MSG 			= STR_ID_2610,
		FONT_INDEX		= XUF_DODUM_20_BOLD,
	    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(115,278)",
		"COLOR			= D3DXCOLOR(0.7,0.7,0.7,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	
	
	
		g_pStatic_One_Line_Option_Desc_Slot3 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_One_Line_Option_Desc_Slot3 )
	g_pStatic_One_Line_Option_Desc_Slot3:SetName( "Static_Empty3" )

	g_pStatic_One_Line_Option_Desc_Slot3:AddString
	{
		MSG 			= STR_ID_2610,
		FONT_INDEX		= XUF_DODUM_20_BOLD,
		 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(115,324)",
		"COLOR			= D3DXCOLOR(0.7,0.7,0.7,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	
	
	
		g_pStatic_One_Line_Option_Desc_Slot4 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_One_Line_Option_Desc_Slot4 )
	g_pStatic_One_Line_Option_Desc_Slot4:SetName( "Static_Empty4" )

	g_pStatic_One_Line_Option_Desc_Slot4:AddString
	{
		MSG 			= STR_ID_2610,
		FONT_INDEX		= XUF_DODUM_20_BOLD,
		 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(115,372)",
		"COLOR			= D3DXCOLOR(0.7,0.7,0.7,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	
	

	


	g_pStatic_Two_Line_Option_Desc_Slot1 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_Two_Line_Option_Desc_Slot1 )
	g_pStatic_Two_Line_Option_Desc_Slot1:SetName( "g_pStatic_One_Line_Option_Desc_Slot1" )

	g_pStatic_Two_Line_Option_Desc_Slot1:AddString
	{
		MSG 			= STR_ID_1371,
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(115,235)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	

		g_pStatic_Two_Line_Option_Desc_Slot1 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_Two_Line_Option_Desc_Slot1 )
	g_pStatic_Two_Line_Option_Desc_Slot1:SetName( "g_pStatic_Two_Line_Option_Desc_Slot1" )

	g_pStatic_Two_Line_Option_Desc_Slot1:AddString
	{
		MSG 			= STR_ID_1372,
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(115,228)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}

	
		g_pStatic_Two_Line_Option_Desc_Slot2 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_Two_Line_Option_Desc_Slot2 )
	g_pStatic_Two_Line_Option_Desc_Slot2:SetName( "g_pStatic_One_Line_Option_Desc_Slot2" )

	g_pStatic_Two_Line_Option_Desc_Slot2:AddString
	{
		MSG 			= STR_ID_1373,
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(115,282)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	


	g_pStatic_Two_Line_Option_Desc_Slot2 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_Two_Line_Option_Desc_Slot2 )
	g_pStatic_Two_Line_Option_Desc_Slot2:SetName( "g_pStatic_Two_Line_Option_Desc_Slot2" )

	g_pStatic_Two_Line_Option_Desc_Slot2:AddString
	{
		MSG 			= STR_ID_1374,
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(115,275)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}

	
	
	
		g_pStatic_Two_Line_Option_Desc_Slot3 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_Two_Line_Option_Desc_Slot3 )
	g_pStatic_Two_Line_Option_Desc_Slot3:SetName( "g_pStatic_One_Line_Option_Desc_Slot3" )

	g_pStatic_Two_Line_Option_Desc_Slot3:AddString
	{
		MSG 			= STR_ID_1371,
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(115,328)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	

		g_pStatic_Two_Line_Option_Desc_Slot3 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_Two_Line_Option_Desc_Slot3 )
	g_pStatic_Two_Line_Option_Desc_Slot3:SetName( "g_pStatic_Two_Line_Option_Desc_Slot3" )

	g_pStatic_Two_Line_Option_Desc_Slot3:AddString
	{
		MSG 			= STR_ID_1372,
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(115,321)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}

	
	
		g_pStatic_Two_Line_Option_Desc_Slot4 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_Two_Line_Option_Desc_Slot4 )
	g_pStatic_Two_Line_Option_Desc_Slot4:SetName( "g_pStatic_One_Line_Option_Desc_Slot4" )

	g_pStatic_Two_Line_Option_Desc_Slot4:AddString
	{
		MSG 			= STR_ID_1371,
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(115,375)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	

			g_pStatic_Two_Line_Option_Desc_Slot4 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStatic_Two_Line_Option_Desc_Slot4 )
	g_pStatic_Two_Line_Option_Desc_Slot4:SetName( "g_pStatic_Two_Line_Option_Desc_Slot4" )

	g_pStatic_Two_Line_Option_Desc_Slot4:AddString
	{
		MSG 			= STR_ID_1375,
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
		SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(115,368)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}

	

-------------------  일반마법석	비활성





g_pStatic_normal_inactive = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_normal_inactive )
g_pStatic_normal_inactive:SetName( "g_pStatic_Normal_Inactive1" )

g_pPicture_magic_disable1 = g_pUIDialog:CreatePicture()
g_pStatic_normal_inactive:AddPicture( g_pPicture_magic_disable1 )

g_pPicture_magic_disable1:SetTex( "DLG_UI_Common_Texture02.tga", "magic_noactive" )

g_pPicture_magic_disable1:SetPoint
{

	
	"LEFT_TOP		= D3DXVECTOR2(215,221)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pStatic_normal_inactive = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_normal_inactive )
g_pStatic_normal_inactive:SetName( "g_pStatic_Normal_Inactive2" )

g_pPicture_magic_disable2= g_pUIDialog:CreatePicture()
g_pStatic_normal_inactive:AddPicture( g_pPicture_magic_disable2 )

g_pPicture_magic_disable2:SetTex( "DLG_UI_Common_Texture02.tga", "magic_noactive" )

g_pPicture_magic_disable2:SetPoint
{

	
	"LEFT_TOP		= D3DXVECTOR2(215,221+47)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pStatic_normal_inactive = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_normal_inactive )
g_pStatic_normal_inactive:SetName( "g_pStatic_Normal_Inactive3" )


g_pPicture_magic_disable3= g_pUIDialog:CreatePicture()
g_pStatic_normal_inactive:AddPicture( g_pPicture_magic_disable3 )

g_pPicture_magic_disable3:SetTex( "DLG_UI_Common_Texture02.tga", "magic_noactive" )

g_pPicture_magic_disable3:SetPoint
{

	
	"LEFT_TOP		= D3DXVECTOR2(215,221+47+47)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pStatic_normal_inactive = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_normal_inactive )
g_pStatic_normal_inactive:SetName( "g_pStatic_Normal_Inactive4" )

g_pPicture_magic_disable4= g_pUIDialog:CreatePicture()
g_pStatic_normal_inactive:AddPicture( g_pPicture_magic_disable4 )

g_pPicture_magic_disable4:SetTex( "DLG_UI_Common_Texture02.tga", "magic_noactive" )

g_pPicture_magic_disable4:SetPoint
{

	
	"LEFT_TOP		= D3DXVECTOR2(215,221+47+47+47)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}
	

----------- 고급마석 비활성

g_pStatic_rare_inactive = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_rare_inactive )
g_pStatic_rare_inactive:SetName( "g_pStatic_Rare_Inactive1" )

g_pPicture_high_disable1 = g_pUIDialog:CreatePicture()
g_pStatic_rare_inactive:AddPicture( g_pPicture_high_disable1 )

g_pPicture_high_disable1:SetTex( "DLG_UI_Common_Texture02.tga", "high_noactive" )

g_pPicture_high_disable1:SetPoint
{

	
	"LEFT_TOP		= D3DXVECTOR2(282,221)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pStatic_rare_inactive = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_rare_inactive )
g_pStatic_rare_inactive:SetName( "g_pStatic_Rare_Inactive2" )

g_pPicture_high_disable2= g_pUIDialog:CreatePicture()
g_pStatic_rare_inactive:AddPicture( g_pPicture_high_disable2 )

g_pPicture_high_disable2:SetTex( "DLG_UI_Common_Texture02.tga", "high_noactive" )

g_pPicture_high_disable2:SetPoint
{

	
	"LEFT_TOP		= D3DXVECTOR2(282,221+47)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}	
	
	
	
g_pStatic_rare_inactive = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_rare_inactive )
g_pStatic_rare_inactive:SetName( "g_pStatic_Rare_Inactive3" )

g_pPicture_high_disable3= g_pUIDialog:CreatePicture()
g_pStatic_rare_inactive:AddPicture( g_pPicture_high_disable3 )

g_pPicture_high_disable3:SetTex( "DLG_UI_Common_Texture02.tga", "high_noactive" )

g_pPicture_high_disable3:SetPoint
{

	
	"LEFT_TOP		= D3DXVECTOR2(282,221+47+47)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}	
	
g_pStatic_rare_inactive = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_rare_inactive )
g_pStatic_rare_inactive:SetName( "g_pStatic_Rare_Inactive4" )	

g_pPicture_high_disable4= g_pUIDialog:CreatePicture()
g_pStatic_rare_inactive:AddPicture( g_pPicture_high_disable4 )

g_pPicture_high_disable4:SetTex( "DLG_UI_Common_Texture02.tga", "high_noactive" )

g_pPicture_high_disable4:SetPoint
{

	
	"LEFT_TOP		= D3DXVECTOR2(282,221+47+47+47)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}	
		
	
	
	
	
	
------일반 마법석 버튼
	

	
g_pButton_Normal_Magic_Stone_Slot1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Normal_Magic_Stone_Slot1 )
g_pButton_Normal_Magic_Stone_Slot1:SetName( "g_pButton_Normal_Magic_Stone_Slot1" )

g_pButton_Normal_Magic_Stone_Slot1:SetNormalTex( "DLG_UI_Button03.tga", "magic_normal" )

g_pButton_Normal_Magic_Stone_Slot1:SetOverTex( "DLG_UI_Button03.tga", "magic_over" )

g_pButton_Normal_Magic_Stone_Slot1:SetDownTex( "DLG_UI_Button03.tga", "magic_over" )

g_pButton_Normal_Magic_Stone_Slot1:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(215,221)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Normal_Magic_Stone_Slot1:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(212,218)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Normal_Magic_Stone_Slot1:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(212+1,218+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pButton_Normal_Magic_Stone_Slot1:SetCustomMsgMouseUp( UI_INVENTORY_MSG["UIM_SOCKET_NORMAL_STONE"] )
g_pButton_Normal_Magic_Stone_Slot1:AddDummyInt( 1 )


g_pButton_Normal_Magic_Stone_Slot2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Normal_Magic_Stone_Slot2 )
g_pButton_Normal_Magic_Stone_Slot2:SetName( "g_pButton_Normal_Magic_Stone_Slot2" )

g_pButton_Normal_Magic_Stone_Slot2:SetNormalTex( "DLG_UI_Button03.tga", "magic_normal" )

g_pButton_Normal_Magic_Stone_Slot2:SetOverTex( "DLG_UI_Button03.tga", "magic_over" )

g_pButton_Normal_Magic_Stone_Slot2:SetDownTex( "DLG_UI_Button03.tga", "magic_over" )

g_pButton_Normal_Magic_Stone_Slot2:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(215,268)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Normal_Magic_Stone_Slot2:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(212,265)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Normal_Magic_Stone_Slot2:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(212+1,265+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pButton_Normal_Magic_Stone_Slot2:SetCustomMsgMouseUp( UI_INVENTORY_MSG["UIM_SOCKET_NORMAL_STONE"] )
g_pButton_Normal_Magic_Stone_Slot2:AddDummyInt( 2 )



g_pButton_Normal_Magic_Stone_Slot3 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Normal_Magic_Stone_Slot3 )
g_pButton_Normal_Magic_Stone_Slot3:SetName( "g_pButton_Normal_Magic_Stone_Slot3" )

g_pButton_Normal_Magic_Stone_Slot3:SetNormalTex( "DLG_UI_Button03.tga", "magic_normal" )

g_pButton_Normal_Magic_Stone_Slot3:SetOverTex( "DLG_UI_Button03.tga", "magic_over" )

g_pButton_Normal_Magic_Stone_Slot3:SetDownTex( "DLG_UI_Button03.tga", "magic_over" )

g_pButton_Normal_Magic_Stone_Slot3:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(215,315)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Normal_Magic_Stone_Slot3:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(212,312)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Normal_Magic_Stone_Slot3:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(212+1,312)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_Normal_Magic_Stone_Slot3:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(215,315)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Normal_Magic_Stone_Slot3:SetCustomMsgMouseUp( UI_INVENTORY_MSG["UIM_SOCKET_NORMAL_STONE"] )
g_pButton_Normal_Magic_Stone_Slot3:AddDummyInt( 3 )


g_pButton_Normal_Magic_Stone_Slot4 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Normal_Magic_Stone_Slot4 )
g_pButton_Normal_Magic_Stone_Slot4:SetName( "g_pButton_Normal_Magic_Stone_Slot4" )
g_pButton_Normal_Magic_Stone_Slot4:SetNormalTex( "DLG_UI_Button03.tga", "magic_normal" )

g_pButton_Normal_Magic_Stone_Slot4:SetOverTex( "DLG_UI_Button03.tga", "magic_over" )

g_pButton_Normal_Magic_Stone_Slot4:SetDownTex( "DLG_UI_Button03.tga", "magic_over" )

g_pButton_Normal_Magic_Stone_Slot4:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(215,363)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Normal_Magic_Stone_Slot4:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(212,360)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Normal_Magic_Stone_Slot4:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(212+1,360)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_Normal_Magic_Stone_Slot4:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(215,363)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Normal_Magic_Stone_Slot4:SetCustomMsgMouseUp( UI_INVENTORY_MSG["UIM_SOCKET_NORMAL_STONE"] )
g_pButton_Normal_Magic_Stone_Slot4:AddDummyInt( 4 )





---------고급 마법석 버튼




g_pButton_Rare_Magic_Stone_Slot1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Rare_Magic_Stone_Slot1 )
g_pButton_Rare_Magic_Stone_Slot1:SetName( "g_pButton_Rare_Magic_Stone_Slot1" )

g_pButton_Rare_Magic_Stone_Slot1:SetNormalTex( "DLG_UI_Button03.tga", "high_normal" )

g_pButton_Rare_Magic_Stone_Slot1:SetOverTex( "DLG_UI_Button03.tga", "high_over" )

g_pButton_Rare_Magic_Stone_Slot1:SetDownTex( "DLG_UI_Button03.tga", "high_over" )

g_pButton_Rare_Magic_Stone_Slot1:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(282,221)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Rare_Magic_Stone_Slot1:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(279,218)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Rare_Magic_Stone_Slot1:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(279+1,218+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_Rare_Magic_Stone_Slot1:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(282,221)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Rare_Magic_Stone_Slot1:SetCustomMsgMouseUp( UI_INVENTORY_MSG["UIM_SOCKET_RARE_STONE"] )
g_pButton_Rare_Magic_Stone_Slot1:AddDummyInt( 1 )


g_pButton_Rare_Magic_Stone_Slot2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Rare_Magic_Stone_Slot2 )
g_pButton_Rare_Magic_Stone_Slot2:SetName( "g_pButton_Rare_Magic_Stone_Slot2" )

g_pButton_Rare_Magic_Stone_Slot2:SetNormalTex( "DLG_UI_Button03.tga", "high_normal" )

g_pButton_Rare_Magic_Stone_Slot2:SetOverTex( "DLG_UI_Button03.tga", "high_over" )

g_pButton_Rare_Magic_Stone_Slot2:SetDownTex( "DLG_UI_Button03.tga", "high_over" )

g_pButton_Rare_Magic_Stone_Slot2:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(282,268)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Rare_Magic_Stone_Slot2:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(279,265)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Rare_Magic_Stone_Slot2:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(279+1,265+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_Rare_Magic_Stone_Slot2:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(282,268)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Rare_Magic_Stone_Slot2:SetCustomMsgMouseUp( UI_INVENTORY_MSG["UIM_SOCKET_RARE_STONE"] )
g_pButton_Rare_Magic_Stone_Slot2:AddDummyInt( 2 )

g_pButton_Rare_Magic_Stone_Slot3 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Rare_Magic_Stone_Slot3 )
g_pButton_Rare_Magic_Stone_Slot3:SetName( "g_pButton_Rare_Magic_Stone_Slot3" )

g_pButton_Rare_Magic_Stone_Slot3:SetNormalTex( "DLG_UI_Button03.tga", "high_normal" )

g_pButton_Rare_Magic_Stone_Slot3:SetOverTex( "DLG_UI_Button03.tga", "high_over" )

g_pButton_Rare_Magic_Stone_Slot3:SetDownTex( "DLG_UI_Button03.tga", "high_over" )

g_pButton_Rare_Magic_Stone_Slot3:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(282,315)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Rare_Magic_Stone_Slot3:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(279,312)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Rare_Magic_Stone_Slot3:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(279+1,312)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_Rare_Magic_Stone_Slot3:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(282,315)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Rare_Magic_Stone_Slot3:SetCustomMsgMouseUp( UI_INVENTORY_MSG["UIM_SOCKET_RARE_STONE"] )
g_pButton_Rare_Magic_Stone_Slot3:AddDummyInt( 3 )


g_pButton_Rare_Magic_Stone_Slot4 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Rare_Magic_Stone_Slot4 )
g_pButton_Rare_Magic_Stone_Slot4:SetName( "g_pButton_Rare_Magic_Stone_Slot4" )

g_pButton_Rare_Magic_Stone_Slot4:SetNormalTex( "DLG_UI_Button03.tga", "high_normal" )

g_pButton_Rare_Magic_Stone_Slot4:SetOverTex( "DLG_UI_Button03.tga", "high_over" )

g_pButton_Rare_Magic_Stone_Slot4:SetDownTex( "DLG_UI_Button03.tga", "high_over" )

g_pButton_Rare_Magic_Stone_Slot4:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(282,363)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Rare_Magic_Stone_Slot4:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(279,360)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Rare_Magic_Stone_Slot4:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(279+1,360)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_Rare_Magic_Stone_Slot4:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(282,363)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Rare_Magic_Stone_Slot4:SetCustomMsgMouseUp( UI_INVENTORY_MSG["UIM_SOCKET_RARE_STONE"] )
g_pButton_Rare_Magic_Stone_Slot4:AddDummyInt( 4 )





------------------------- 마법석 파괴 비활성
--[[ 
g_pStatic_Gray_broken = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Gray_broken )
g_pStatic_Gray_broken:SetName( "g_pStatic_Gray_broken" )



g_pStatic_Gray_broken1 = g_pUIDialog:CreatePicture()
g_pStatic_Gray_broken:AddPicture( g_pStatic_Gray_broken1 )

g_pStatic_Gray_broken1:SetTex( "DLG_UI_Common_Texture02.tga", "broken_noactive" )

g_pStatic_Gray_broken1:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(215,221)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pStatic_Gray_broken2 = g_pUIDialog:CreatePicture()
g_pStatic_Gray_broken:AddPicture( g_pStatic_Gray_broken2 )

g_pStatic_Gray_broken2:SetTex( "DLG_UI_Common_Texture02.tga", "broken_noactive" )

g_pStatic_Gray_broken2:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(215,221+47)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pStatic_Gray_broken3 = g_pUIDialog:CreatePicture()
g_pStatic_Gray_broken:AddPicture( g_pStatic_Gray_broken3 )

g_pStatic_Gray_broken3:SetTex( "DLG_UI_Common_Texture02.tga", "broken_noactive" )

g_pStatic_Gray_broken3:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(215,221+47+47)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pStatic_Gray_broken4 = g_pUIDialog:CreatePicture()
g_pStatic_Gray_broken:AddPicture( g_pStatic_Gray_broken4 )

g_pStatic_Gray_broken4:SetTex( "DLG_UI_Common_Texture02.tga", "broken_noactive" )

g_pStatic_Gray_broken4:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(215,221+47+47+47)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}
--]]



---------마법석 파괴 버튼

g_pButton_Remove_Stone_Slot1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Remove_Stone_Slot1 )
g_pButton_Remove_Stone_Slot1:SetName( "g_pButton_Remove_Stone_Slot1" )
g_pButton_Remove_Stone_Slot1:SetNormalTex( "DLG_UI_Button05.tga", "BROKEN_NORMAL" )

g_pButton_Remove_Stone_Slot1:SetOverTex( "DLG_UI_Button05.tga", "BROKEN_OVER" )

g_pButton_Remove_Stone_Slot1:SetDownTex( "DLG_UI_Button05.tga", "BROKEN_OVER" )

g_pButton_Remove_Stone_Slot1:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(215,221)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Remove_Stone_Slot1:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(211,217)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Remove_Stone_Slot1:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(211+1,217+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_Remove_Stone_Slot1:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(215,221)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_Remove_Stone_Slot1:SetCustomMsgMouseUp( UI_INVENTORY_MSG["UIM_SOCKET_REMOVE"] )
g_pButton_Remove_Stone_Slot1:AddDummyInt( 1 )

g_pButton_Remove_Stone_Slot1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Remove_Stone_Slot1 )
g_pButton_Remove_Stone_Slot1:SetName( "g_pButton_Remove_Stone_Slot2" )
g_pButton_Remove_Stone_Slot1:SetNormalTex( "DLG_UI_Button05.tga", "BROKEN_NORMAL" )

g_pButton_Remove_Stone_Slot1:SetOverTex( "DLG_UI_Button05.tga", "BROKEN_OVER" )

g_pButton_Remove_Stone_Slot1:SetDownTex( "DLG_UI_Button05.tga", "BROKEN_OVER" )

g_pButton_Remove_Stone_Slot1:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(215,268)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Remove_Stone_Slot1:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(211,264)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Remove_Stone_Slot1:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(211+1,264+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_Remove_Stone_Slot1:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(215,268)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_Remove_Stone_Slot1:SetCustomMsgMouseUp( UI_INVENTORY_MSG["UIM_SOCKET_REMOVE"] )
g_pButton_Remove_Stone_Slot1:AddDummyInt( 2 )

g_pButton_Remove_Stone_Slot1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Remove_Stone_Slot1 )
g_pButton_Remove_Stone_Slot1:SetName( "g_pButton_Remove_Stone_Slot3" )
g_pButton_Remove_Stone_Slot1:SetNormalTex( "DLG_UI_Button05.tga", "BROKEN_NORMAL" )

g_pButton_Remove_Stone_Slot1:SetOverTex( "DLG_UI_Button05.tga", "BROKEN_OVER" )

g_pButton_Remove_Stone_Slot1:SetDownTex( "DLG_UI_Button05.tga", "BROKEN_OVER" )

g_pButton_Remove_Stone_Slot1:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(215,315)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Remove_Stone_Slot1:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(211,311)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Remove_Stone_Slot1:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(211+1,311+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pButton_Remove_Stone_Slot1:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(215,315)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_Remove_Stone_Slot1:SetCustomMsgMouseUp( UI_INVENTORY_MSG["UIM_SOCKET_REMOVE"] )
g_pButton_Remove_Stone_Slot1:AddDummyInt( 3 )


g_pButton_Remove_Stone_Slot1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Remove_Stone_Slot1 )
g_pButton_Remove_Stone_Slot1:SetName( "g_pButton_Remove_Stone_Slot4" )
g_pButton_Remove_Stone_Slot1:SetNormalTex( "DLG_UI_Button05.tga", "BROKEN_NORMAL" )

g_pButton_Remove_Stone_Slot1:SetOverTex( "DLG_UI_Button05.tga", "BROKEN_OVER" )

g_pButton_Remove_Stone_Slot1:SetDownTex( "DLG_UI_Button05.tga", "BROKEN_OVER" )

g_pButton_Remove_Stone_Slot1:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(215,363)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Remove_Stone_Slot1:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(211,359)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Remove_Stone_Slot1:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(211+1,359+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pButton_Remove_Stone_Slot1:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(215,363)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_Remove_Stone_Slot1:SetCustomMsgMouseUp( UI_INVENTORY_MSG["UIM_SOCKET_REMOVE"] )
g_pButton_Remove_Stone_Slot1:AddDummyInt( 4 )










----------------체크 박스



--[[
g_pPictureBOX:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(283,13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]


-------체크 표시
g_pCheckBoxsecret = g_pUIDialog:CreateCheckBox()
g_pCheckBoxsecret:SetName( "g_pCheckBoxForceSocket" )
g_pUIDialog:AddControl( g_pCheckBoxsecret )

g_pCheckBoxsecret:SetNormalTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

g_pCheckBoxsecret:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )


g_pCheckBoxsecret:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(303,13)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(318,28)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxsecret:SetCheckPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(301,11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}








 
