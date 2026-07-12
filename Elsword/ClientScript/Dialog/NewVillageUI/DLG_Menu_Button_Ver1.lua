-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pUIDialog:SetName( "DLG_Menu_Button" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL_4"] )

g_pStaticMenu_Button = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMenu_Button )
g_pStaticMenu_Button:SetName( "StaticMenu_Button" )







---(흰색바탕)----
g_pPictureMenu_Button_Bg1 = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPictureMenu_Button_Bg1 )

g_pPictureMenu_Button_Bg1:SetTex( "DLG_Common_New_Texture42.TGA", "Menu_Bg2" )

g_pPictureMenu_Button_Bg1:SetPoint
{
		ADD_SIZE_X=1028,
	"LEFT_TOP		= D3DXVECTOR2(0,714-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


---------유저정보 회색바탕------------
g_pPictureMenu_Button_Bg2 = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPictureMenu_Button_Bg2 )

g_pPictureMenu_Button_Bg2:SetTex( "DLG_Common_New_Texture68.TGA", "Menu_User_Info1" )

g_pPictureMenu_Button_Bg2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(643,718)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureMenu_Button_Bg3 = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPictureMenu_Button_Bg3 )

g_pPictureMenu_Button_Bg3:SetTex( "DLG_Common_New_Texture68.TGA", "Menu_User_Info2" )

g_pPictureMenu_Button_Bg3:SetPoint
{
        ADD_SIZE_X=360,
	"LEFT_TOP		= D3DXVECTOR2(652,718)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureMenu_Button_Bg4 = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPictureMenu_Button_Bg4 )

g_pPictureMenu_Button_Bg4:SetTex( "DLG_Common_New_Texture68.TGA", "Menu_User_Info3" )

g_pPictureMenu_Button_Bg4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(664+9+341,718)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



------작은 수직라인-------------

g_pPictureMenu_Button_Bg5_1 = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPictureMenu_Button_Bg5_1 )

g_pPictureMenu_Button_Bg5_1:SetTex( "DLG_Common_New_Texture49.TGA", "Bar_Back" )

g_pPictureMenu_Button_Bg5_1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(640,722)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureMenu_Button_Bg6 = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPictureMenu_Button_Bg6 )

g_pPictureMenu_Button_Bg6:SetTex( "DLG_Common_New_Texture49.TGA", "Bar_Back" )

g_pPictureMenu_Button_Bg6:SetPoint
{
	  ADD_SIZE_Y=-28,
	"LEFT_TOP		= D3DXVECTOR2(797,722)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureMenu_Button_Bg7 = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPictureMenu_Button_Bg7 )

g_pPictureMenu_Button_Bg7:SetTex( "DLG_Common_New_Texture49.TGA", "Bar_Back" )

g_pPictureMenu_Button_Bg7:SetPoint
{
	  ADD_SIZE_Y=-28,
	"LEFT_TOP		= D3DXVECTOR2(917,722)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



---단축슬롯 회색바탕
g_pPictureMenu_Button_Bg8 = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPictureMenu_Button_Bg8 )

g_pPictureMenu_Button_Bg8:SetTex( "DLG_Common_New_Texture68.TGA", "Menu_User_Info1" )

g_pPictureMenu_Button_Bg8:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(1,718)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureMenu_Button_Bg9 = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPictureMenu_Button_Bg9 )

g_pPictureMenu_Button_Bg9:SetTex( "DLG_Common_New_Texture68.TGA", "Menu_User_Info2" )

g_pPictureMenu_Button_Bg9:SetPoint
{
        ADD_SIZE_X=258,
	"LEFT_TOP		= D3DXVECTOR2(10,718)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
} 
 
g_pPictureMenu_Button_Bg10 = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPictureMenu_Button_Bg10 )

g_pPictureMenu_Button_Bg10:SetTex( "DLG_Common_New_Texture68.TGA", "Menu_User_Info3" )

g_pPictureMenu_Button_Bg10:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(270,718)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




---------정보창안의내용----------------
--------(LV,ED,VP)
g_pPictureMenu_Button_User_Info_LV = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPictureMenu_Button_User_Info_LV )

g_pPictureMenu_Button_User_Info_LV:SetTex( "DLG_Common_New_Texture49.TGA", "LV" )

g_pPictureMenu_Button_User_Info_LV:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(650,724)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureMenu_Button_User_Info_ED = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPictureMenu_Button_User_Info_ED )

g_pPictureMenu_Button_User_Info_ED:SetTex( "DLG_Common_New_Texture49.TGA", "ED" )

g_pPictureMenu_Button_User_Info_ED:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(800,724)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureMenu_Button_User_Info_VP = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPictureMenu_Button_User_Info_VP )

g_pPictureMenu_Button_User_Info_VP:SetTex( "DLG_Common_New_Texture49.TGA", "AP" )

g_pPictureMenu_Button_User_Info_VP:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(920,724)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--------(게이지바)-------------
g_pPictureMenu_Button_User_Info_Bar_EXP = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPictureMenu_Button_User_Info_Bar_EXP )

g_pPictureMenu_Button_User_Info_Bar_EXP:SetTex( "DLG_Common_New_Texture49.TGA", "Bar_Glay_Back" )

g_pPictureMenu_Button_User_Info_Bar_EXP:SetPoint
{
	ADD_SIZE_X=6,
	"LEFT_TOP		= D3DXVECTOR2(730,740)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureMenu_Button_User_Info_Bar_Spirit = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPictureMenu_Button_User_Info_Bar_Spirit )

g_pPictureMenu_Button_User_Info_Bar_Spirit:SetTex( "DLG_Common_New_Texture49.TGA", "Bar_Glay_Back" )

g_pPictureMenu_Button_User_Info_Bar_Spirit:SetPoint
{
    ADD_SIZE_X=6,
	"LEFT_TOP		= D3DXVECTOR2(730,752)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureMenu_Button_User_Info_EXP_SPRIT = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPictureMenu_Button_User_Info_EXP_SPRIT )

g_pPictureMenu_Button_User_Info_EXP_SPRIT:SetTex( "DLG_Common_New_Texture49.TGA", "EXP_SPRIT" )

g_pPictureMenu_Button_User_Info_EXP_SPRIT:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(650,738)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pStaticMenu_Button_EXP_Gauge = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMenu_Button_EXP_Gauge )
g_pStaticMenu_Button_EXP_Gauge:SetName( "StaticMenu_Button_EXP_Gauge" )


g_pPictureMenu_Button_User_Info_Bar_EXP2 = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button_EXP_Gauge:AddPicture( g_pPictureMenu_Button_User_Info_Bar_EXP2 )

g_pPictureMenu_Button_User_Info_Bar_EXP2:SetTex( "DLG_Common_New_Texture12.TGA", "SQUARE_GAUGEGREEN" )

g_pPictureMenu_Button_User_Info_Bar_EXP2:SetPoint
{
		ADD_SIZE_X=280,
		ADD_SIZE_Y=-5,

	"LEFT_TOP		= D3DXVECTOR2(732,742)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pStaticMenu_Button_Sprit_Gauge_Red = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMenu_Button_Sprit_Gauge_Red )
g_pStaticMenu_Button_Sprit_Gauge_Red:SetName( "StaticMenu_Button_Sprit_Gauge_Red" )


g_pPictureMenu_Button_User_Info_Bar_Spirit2 = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button_Sprit_Gauge_Red:AddPicture( g_pPictureMenu_Button_User_Info_Bar_Spirit2 )
g_pPictureMenu_Button_User_Info_Bar_Spirit2:SetTex( "DLG_Common_New_Texture12.TGA", "SQUARE_GAUGERed" )

g_pPictureMenu_Button_User_Info_Bar_Spirit2:SetPoint
{
		ADD_SIZE_X=280,
		ADD_SIZE_Y=-5,

	"LEFT_TOP		= D3DXVECTOR2(732,754)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pStaticMenu_Button_Sprit_Gauge_Blue = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMenu_Button_Sprit_Gauge_Blue )
g_pStaticMenu_Button_Sprit_Gauge_Blue:SetName( "StaticMenu_Button_Sprit_Gauge_Blue" )


g_pPictureMenu_Button_User_Info_Bar_Sprit3 = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button_Sprit_Gauge_Blue:AddPicture( g_pPictureMenu_Button_User_Info_Bar_Sprit3 )
g_pPictureMenu_Button_User_Info_Bar_Sprit3:SetTex( "DLG_Common_New_Texture12.TGA", "SQUARE_GAUGEBlue" )

g_pPictureMenu_Button_User_Info_Bar_Sprit3:SetPoint
{
		ADD_SIZE_X=280,
		ADD_SIZE_Y=-5,

	"LEFT_TOP		= D3DXVECTOR2(732,754)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




    g_pStaticMenu_Button_LV_Num = g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticMenu_Button_LV_Num )
 	g_pStaticMenu_Button_LV_Num:SetName( "StaticMenu_Button_LV_Num" )

	 g_pStaticMenu_Button_LV_Num:AddString
 	{
	 ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	 --MSG    		 = "99",
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(668,724-1)",
 	 "COLOR          = D3DXCOLOR(1.0,1.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 
	 
	 
	 
	 
	 g_pStaticMenu_Button_ID = g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticMenu_Button_ID )
 	g_pStaticMenu_Button_ID:SetName( "StaticMenu_Button_ID" )

	 g_pStaticMenu_Button_ID:AddString
 	{
 	 --MSG    		 = "WWWWWWWWWWWW",
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(686,724-1)",
 	 "COLOR          = D3DXCOLOR(1.0,1.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 

	g_pStaticMenu_Button_ED_Num = g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticMenu_Button_ED_Num )
 	g_pStaticMenu_Button_ED_Num:SetName( "StaticMenu_Button_ED_Num" )

	g_pStaticMenu_Button_ED_Num:AddString
 	{
	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 --MSG    		 = "9,999,999,000",
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,

 	 "POS            = D3DXVECTOR2(819,724-1)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.0)",
	 }
	 
	 
	 
	g_pStaticMenu_Button_VP_Num = g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticMenu_Button_VP_Num )
 	g_pStaticMenu_Button_VP_Num:SetName( "StaticMenu_Button_VP_Num" )

	 g_pStaticMenu_Button_VP_Num:AddString
 	{
 	 -- MSG    		 = "999,000,000",
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 	
	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(940,724-1)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.0)",
	 }
	 

	g_pStaticMenu_Button_EXP = g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticMenu_Button_EXP )
 	g_pStaticMenu_Button_EXP:SetName( "StaticMenu_Button_EXP" )

	 g_pStaticMenu_Button_EXP:AddString
 	{
 	 -- MSG    		 = "99,9",
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
	 SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
 	 "POS            = D3DXVECTOR2(700,738)",
 	 "COLOR          = D3DXCOLOR(0.1,0.6,0.3,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 
	 
    g_pStaticMenu_Button_SPRIT = g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticMenu_Button_SPRIT )
 	g_pStaticMenu_Button_SPRIT:SetName( "StaticMenu_Button_SPRIT" )

	 g_pStaticMenu_Button_SPRIT:AddString
 	{
 	 -- MSG    		 = "99,9",
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
	 SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
 	 "POS            = D3DXVECTOR2(700,750)",
 	 "COLOR          = D3DXCOLOR(0.0,0.5,1.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 
	 
	 
	 
























----------------    QUICK MENU

g_pPictureQuick_Menu = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPictureQuick_Menu )

g_pPictureQuick_Menu:SetTex( "DLG_UI_Button12.TGA", "quick_menu" )

g_pPictureQuick_Menu:SetPoint
{
		
	"LEFT_TOP		= D3DXVECTOR2(3,719)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





-- 단축창

g_pStaticSlot = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSlot )
g_pStaticSlot:SetName( "Slot" )



g_pPictureSlot1 = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPictureSlot1 )

g_pPictureSlot1:SetTex( "DLG_Common_New_Texture37.TGA", "ITEMSLOT_SMALL" )

g_pPictureSlot1:SetPoint
{
	
	"LEFT_TOP		= D3DXVECTOR2(18,722)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureSlot2 = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPictureSlot2 )

g_pPictureSlot2:SetTex( "DLG_Common_New_Texture37.TGA", "ITEMSLOT_SMALL" )

g_pPictureSlot2:SetPoint
{
	
	"LEFT_TOP		= D3DXVECTOR2(61,722)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureSlot3 = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPictureSlot3 )

g_pPictureSlot3:SetTex( "DLG_Common_New_Texture37.TGA", "ITEMSLOT_SMALL" )

g_pPictureSlot3:SetPoint
{
	
	"LEFT_TOP		= D3DXVECTOR2(104,722)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureSlot4 = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPictureSlot4 )

g_pPictureSlot4:SetTex( "DLG_Common_New_Texture37.TGA", "ITEMSLOT_SMALL" )

g_pPictureSlot4:SetPoint
{
	
	"LEFT_TOP		= D3DXVECTOR2(147,722)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureSlot5 = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPictureSlot5 )

g_pPictureSlot5:SetTex( "DLG_Common_New_Texture37.TGA", "ITEMSLOT_SMALL" )

g_pPictureSlot5:SetPoint
{
	
	"LEFT_TOP		= D3DXVECTOR2(190,722)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureSlot6 = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPictureSlot6 )

g_pPictureSlot6:SetTex( "DLG_Common_New_Texture37.TGA", "ITEMSLOT_SMALL" )

g_pPictureSlot6:SetPoint
{
	
	"LEFT_TOP		= D3DXVECTOR2(233,722)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




---단축 번호

g_pPictureSlot1_1 = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPictureSlot1_1 )

g_pPictureSlot1_1:SetTex( "DLG_Common_New_Texture68.TGA", "SLOT1" )

g_pPictureSlot1_1:SetPoint
{
	
	"LEFT_TOP		= D3DXVECTOR2(19,723)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureSlot2_1 = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPictureSlot2_1 )

g_pPictureSlot2_1:SetTex( "DLG_Common_New_Texture68.TGA", "SLOT2" )

g_pPictureSlot2_1:SetPoint
{
	
	"LEFT_TOP		= D3DXVECTOR2(62,723)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureSlot3_1 = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPictureSlot3_1 )

g_pPictureSlot3_1:SetTex( "DLG_Common_New_Texture68.TGA", "SLOT3" )

g_pPictureSlot3_1:SetPoint
{
	
	"LEFT_TOP		= D3DXVECTOR2(105,723)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureSlot4_1 = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPictureSlot4_1 )

g_pPictureSlot4_1:SetTex( "DLG_Common_New_Texture68.TGA", "SLOT4" )

g_pPictureSlot4_1:SetPoint
{
	
	"LEFT_TOP		= D3DXVECTOR2(148,723)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureSlot5_1 = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPictureSlot5_1 )

g_pPictureSlot5_1:SetTex( "DLG_Common_New_Texture68.TGA", "SLOT5" )

g_pPictureSlot5_1:SetPoint
{
	
	"LEFT_TOP		= D3DXVECTOR2(191,723)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureSlot6_1 = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPictureSlot6_1 )

g_pPictureSlot6_1:SetTex( "DLG_Common_New_Texture68.TGA", "SLOT6" )

g_pPictureSlot6_1:SetPoint
{
	
	"LEFT_TOP		= D3DXVECTOR2(234,723)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




--메인 버튼

---캐릭터
g_pButtonCharac = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCharac )
g_pButtonCharac:SetName( "Charac" )
g_pButtonCharac:SetNormalTex( "DLG_UI_Button17.tga", "character_normal" )

g_pButtonCharac:SetOverTex( "DLG_UI_Button17.tga", "character_over" )
g_pButtonCharac:SetDownTex( "DLG_UI_Button17.tga", "character_over" )
g_pButtonCharac:SetDisableTex( "DLG_UI_Button17.tga", "character_noactive" )

g_pButtonCharac:SetNormalPoint
{
      

 	"LEFT_TOP		= D3DXVECTOR2(280,720)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCharac:SetOverPoint
{
     

	"LEFT_TOP		= D3DXVECTOR2(273,713)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCharac:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(273+1,713+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonCharac:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(280,720)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonCharac:SetGuideDesc( STR_ID_2700 )
g_pButtonCharac:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_MY_INFO"] )


--- 펫

g_pButton_Pet_Inven = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Pet_Inven )
g_pButton_Pet_Inven:SetName( "Pat_Inven" )

g_pButton_Pet_Inven:SetNormalTex( "DLG_UI_Button17.tga", "PAT_NORMAL" )
g_pButton_Pet_Inven:SetOverTex( "DLG_UI_Button17.tga", "PAT_OVER" )
g_pButton_Pet_Inven:SetDownTex( "DLG_UI_Button17.tga", "PAT_OVER" )
g_pButton_Pet_Inven:SetDisableTex( "DLG_UI_Button17.tga", "PAT_NOACTIVE" )

g_pButton_Pet_Inven:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(320,720)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_Pet_Inven:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(313+2,713)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_Pet_Inven:SetDownPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(313+1+2,713+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_Pet_Inven:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(320,719)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pet_Inven:SetGuideDesc( STR_ID_5383 )
g_pButton_Pet_Inven:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_PET_LIST"] )


---인벤토리

g_pButtonInven = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonInven )
g_pButtonInven:SetName( "Inven" )
g_pButtonInven:SetNormalTex( "DLG_UI_Button17.tga", "Inventory_normal" )

g_pButtonInven:SetOverTex( "DLG_UI_Button17.tga", "Inventory_over" )

g_pButtonInven:SetDownTex( "DLG_UI_Button17.tga", "Inventory_over" )

g_pButtonInven:SetDisableTex( "DLG_UI_Button17.tga", "Inventory_noactive" )

g_pButtonInven:SetNormalPoint
{
      

 	"LEFT_TOP		= D3DXVECTOR2(360,720)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonInven:SetOverPoint
{
     

	"LEFT_TOP		= D3DXVECTOR2(353+1,713)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonInven:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(353+1+1,713+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pButtonInven:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(358+2,720)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pButtonInven:SetGuideDesc( STR_ID_2701 )
g_pButtonInven:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_INVENTORY"] )

---스킬

g_pButtonSkill = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSkill )
g_pButtonSkill:SetName( "Skill" )
g_pButtonSkill:SetNormalTex( "DLG_UI_Button17.tga", "Skill_normal" )

g_pButtonSkill:SetOverTex( "DLG_UI_Button17.tga", "Skill_over" )

g_pButtonSkill:SetDownTex( "DLG_UI_Button17.tga", "Skill_over" )

g_pButtonSkill:SetDisableTex( "DLG_UI_Button17.tga", "Skill_noactive" )

g_pButtonSkill:SetNormalPoint
{
      

 	"LEFT_TOP		= D3DXVECTOR2(400,720)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkill:SetOverPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(392+1,713)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkill:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(392+1+1,713+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkill:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(400,720)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonSkill:SetGuideDesc( STR_ID_2702 )
g_pButtonSkill:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_MY_INFO_SKILL_TREE"] )


---퀘스트

g_pButtonQuest = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonQuest )
g_pButtonQuest:SetName( "Quest" )
g_pButtonQuest:SetNormalTex( "DLG_UI_Button17.tga", "Quest_normal" )

g_pButtonQuest:SetOverTex( "DLG_UI_Button17.tga", "Quest_over" )

g_pButtonQuest:SetDownTex( "DLG_UI_Button17.tga", "Quest_over" )

g_pButtonQuest:SetDisableTex( "DLG_UI_Button17.tga", "Quest_noactive" )

g_pButtonQuest:SetNormalPoint
{
      

 	"LEFT_TOP		= D3DXVECTOR2(440,720)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonQuest:SetOverPoint
{
     

	"LEFT_TOP		= D3DXVECTOR2(433,713)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonQuest:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(433+1,713+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonQuest:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(440,720)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pButtonQuest:SetGuideDesc( STR_ID_2703 )
g_pButtonQuest:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_MY_INFO_QUEST"] )


--파티

g_pButtonParty = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonParty )
g_pButtonParty:SetName( "Party" )
g_pButtonParty:SetNormalTex( "DLG_UI_Button17.tga", "Party_normal" )

g_pButtonParty:SetOverTex( "DLG_UI_Button17.tga", "Party_over" )

g_pButtonParty:SetDownTex( "DLG_UI_Button17.tga", "Party_over" )

g_pButtonParty:SetDisableTex( "DLG_UI_Button17.tga", "Party_noactive" )

g_pButtonParty:SetNormalPoint
{
      

 	"LEFT_TOP		= D3DXVECTOR2(480,720)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonParty:SetOverPoint
{
     

	"LEFT_TOP		= D3DXVECTOR2(473,713)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonParty:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(473+1,713+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonParty:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(480,720)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonParty:SetGuideDesc( STR_ID_13567 )
g_pButtonParty:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_PARTY"] )


---커뮤니티

g_pButtonCommu = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCommu )
g_pButtonCommu:SetName( "Commu" )
g_pButtonCommu:SetNormalTex( "DLG_UI_Button17.tga", "Community_normal" )

g_pButtonCommu:SetOverTex( "DLG_UI_Button17.tga", "Community_over" )

g_pButtonCommu:SetDownTex( "DLG_UI_Button17.tga", "Community_over" )

g_pButtonCommu:SetDisableTex( "DLG_UI_Button17.tga", "Community_noactive" )

g_pButtonCommu:SetNormalPoint
{
      

 	"LEFT_TOP		= D3DXVECTOR2(520,720)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCommu:SetOverPoint
{
     

	"LEFT_TOP		= D3DXVECTOR2(513+1,713+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCommu:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(513+2,713+2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonCommu:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(518+2,720)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonCommu:SetGuideDesc( STR_ID_2705 )
g_pButtonCommu:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_COMMUNITY"] )


----시스템

g_pButtonsystem = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonsystem )
g_pButtonsystem:SetName( "system" )
g_pButtonsystem:SetNormalTex( "DLG_UI_Button17.tga", "system_normal" )

g_pButtonsystem:SetOverTex( "DLG_UI_Button17.tga", "system_over" )

g_pButtonsystem:SetDownTex( "DLG_UI_Button17.tga", "system_over" )

g_pButtonsystem:SetDisableTex( "DLG_UI_Button17.tga", "system_noactive" )

g_pButtonsystem:SetNormalPoint
{
      

 	"LEFT_TOP		= D3DXVECTOR2(560,720)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonsystem:SetOverPoint
{
     

	"LEFT_TOP		= D3DXVECTOR2(553+1,713+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonsystem:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(553+2,713+1+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonsystem:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(560,720)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pButtonsystem:SetGuideDesc( STR_ID_2706 )
g_pButtonsystem:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_SYSTEM"] )


---캐쉬샵

g_pButtonCash = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCash )
g_pButtonCash:SetName( "Cash" )
g_pButtonCash:SetNormalTex( "DLG_UI_Button17.tga", "Cash_shop_normal" )

g_pButtonCash:SetOverTex( "DLG_UI_Button17.tga", "Cash_shop_over" )

g_pButtonCash:SetDownTex( "DLG_UI_Button17.tga", "Cash_shop_over" )

g_pButtonCash:SetDisableTex( "DLG_UI_Button17.tga", "Cash_shop_noactive" )

g_pButtonCash:SetNormalPoint
{
      

 	"LEFT_TOP		= D3DXVECTOR2(600,720)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCash:SetOverPoint
{
     

	"LEFT_TOP		= D3DXVECTOR2(593,713)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCash:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(593+1,713+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonCash:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(600,720)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonCash:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_CASH_SHOP"] )
--g_pButtonCash:SetEnableClick(false)
g_pButtonCash:SetEnable( false )



------------ 새로운것을 얻거나 배우거나 살것이 있을때 뜨는 NEW IMAGE



--------- 펫(진화)
g_pStatic_Pet_Inventory_Evolution = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Pet_Inventory_Evolution )
g_pStatic_Pet_Inventory_Evolution:SetName( "Pat_Inventory_Evolution" )

g_pPicture_Image = g_pUIDialog:CreatePicture()
--g_pStatic_Pet_Inventory_Evolution:SetLayer(X2_DIALOG_LAYER["XDL_OPTION"])
g_pStatic_Pet_Inventory_Evolution:AddPicture( g_pPicture_Image )

g_pPicture_Image:SetTex( "DLG_UI_Common_Texture42_NEW.tga", "EVOLUTION_EFFECT" )

g_pPicture_Image:SetPoint
{
  
	"LEFT_TOP		= D3DXVECTOR2(317,705)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--------- 펫(소환가능)
g_pStatic_Pet_New = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Pet_New )
g_pStatic_Pet_New:SetName( "Pat_Inventory_New" )

g_pPictureImage = g_pUIDialog:CreatePicture()
g_pStatic_Pet_New:AddPicture( g_pPictureImage )

g_pPictureImage:SetTex( "DLG_Common_New_Texture49.TGA", "new" )

g_pPictureImage:SetPoint
{
  
	"LEFT_TOP		= D3DXVECTOR2(320,709)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



---------인벤토리
g_pStaticInventory_New = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticInventory_New )
g_pStaticInventory_New:SetName( "Inventory_New" )

g_pPictureImage = g_pUIDialog:CreatePicture()
g_pStaticInventory_New:AddPicture( g_pPictureImage )

g_pPictureImage:SetTex( "DLG_Common_New_Texture49.TGA", "new" )

g_pPictureImage:SetPoint
{
  
	"LEFT_TOP		= D3DXVECTOR2(362,709)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-----스킬
g_pStaticSkill_New = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill_New )
g_pStaticSkill_New:SetName( "Skill_New" )

g_pPictureImage = g_pUIDialog:CreatePicture()
g_pStaticSkill_New:AddPicture( g_pPictureImage )

g_pPictureImage:SetTex( "DLG_Common_New_Texture49.TGA", "new" )

g_pPictureImage:SetPoint
{
  
	"LEFT_TOP		= D3DXVECTOR2(403,709)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



---캐쉬샵
g_pStaticCash_New = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCash_New )
g_pStaticCash_New:SetName( "Cash_New" )
g_pStaticCash_New:SetShowEnable( false, false )



g_pPictureImage = g_pUIDialog:CreatePicture()
g_pStaticCash_New:AddPicture( g_pPictureImage )

g_pPictureImage:SetTex( "DLG_Common_New_Texture49.TGA", "new" )

g_pPictureImage:SetPoint
{
  
	"LEFT_TOP		= D3DXVECTOR2(600,709)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----------파티,친구,길드만보기

g_pStaticParty_Sign = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticParty_Sign )
g_pStaticParty_Sign:SetName( "Static_MyPartyOnly" )




g_pPictureLook_Off = g_pUIDialog:CreatePicture()
g_pStaticParty_Sign:AddPicture( g_pPictureLook_Off )

g_pPictureLook_Off:SetTex( "DLG_UI_Button12.TGA", "myparty_look_off" )

g_pPictureLook_Off:SetPoint
{
		
	"LEFT_TOP		= D3DXVECTOR2(3,690)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.7)",
	CHANGE_TIME		= 0.0,
}




g_pPictureLook_On = g_pUIDialog:CreatePicture()
g_pStaticParty_Sign:AddPicture( g_pPictureLook_On )

g_pPictureLook_On:SetTex( "DLG_UI_Button12.TGA", "myparty_look_On" )

g_pPictureLook_On:SetPoint
{
		
	"LEFT_TOP		= D3DXVECTOR2(0,687-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




-----------SD로 표시

g_pStaticSD_Sign = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSD_Sign )
g_pStaticSD_Sign:SetName( "Static_SDMode" )




g_pPictureLook_Off = g_pUIDialog:CreatePicture()
g_pStaticSD_Sign:AddPicture( g_pPictureLook_Off )

g_pPictureLook_Off:SetTex( "DLG_UI_Button12.TGA", "SD_sign_off" )

g_pPictureLook_Off:SetPoint
{
		
	"LEFT_TOP		= D3DXVECTOR2(116+27+20,690)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.7)",
	CHANGE_TIME		= 0.0,
}




g_pPictureLook_On = g_pUIDialog:CreatePicture()
g_pStaticSD_Sign:AddPicture( g_pPictureLook_On )

g_pPictureLook_On:SetTex( "DLG_UI_Button12.TGA", "SD_sign_On" )

g_pPictureLook_On:SetPoint
{
		
	"LEFT_TOP		= D3DXVECTOR2(113+27+20,687)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--------(경험치 바 위에 desc 붙이기)-------------

g_pButton_opacity1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_opacity1 )
g_pButton_opacity1:SetName( "Button_Invisible_ExpGuage" )
g_pButton_opacity1:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity1:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity1:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity1:SetNormalPoint
{
    ADD_SIZE_X = 298,
	ADD_SIZE_Y = 10,
	 
 	"LEFT_TOP		= D3DXVECTOR2(711,740)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_opacity1:SetOverPoint
{
    ADD_SIZE_X = 298,
	ADD_SIZE_Y = 10,
	 
 	"LEFT_TOP		= D3DXVECTOR2(711,740)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_opacity1:SetDownPoint
{
    ADD_SIZE_X = 298,
	ADD_SIZE_Y = 10,
	 
 	"LEFT_TOP		= D3DXVECTOR2(711,740)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_opacity1:ChangeMouseUpSound_LUA( "" )
g_pButton_opacity1:ChangeMouseOverSound_LUA( "" )

IncludeLua( "DLG_UI_World_Buff_Icon.lua" )
IncludeLua( "DLG_UI_Premium_Buff_Icon.lua" )