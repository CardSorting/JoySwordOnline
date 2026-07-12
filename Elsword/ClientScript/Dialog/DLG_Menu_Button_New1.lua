-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pUIDialog:SetName( "DLG_Menu_Button" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )

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
	"LEFT_TOP		= D3DXVECTOR2(0,714-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


---------유저정보 회색바탕------------
g_pPictureMenu_Button_Bg2 = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPictureMenu_Button_Bg2 )

g_pPictureMenu_Button_Bg2:SetTex( "DLG_Common_New_Texture49.TGA", "Menu_User_Info1" )

g_pPictureMenu_Button_Bg2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(664,719)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureMenu_Button_Bg3 = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPictureMenu_Button_Bg3 )

g_pPictureMenu_Button_Bg3:SetTex( "DLG_Common_New_Texture49.TGA", "Menu_User_Info2" )

g_pPictureMenu_Button_Bg3:SetPoint
{
        ADD_SIZE_X=340,
	"LEFT_TOP		= D3DXVECTOR2(664+9,719)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureMenu_Button_Bg4 = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPictureMenu_Button_Bg4 )

g_pPictureMenu_Button_Bg4:SetTex( "DLG_Common_New_Texture49.TGA", "Menu_User_Info3" )

g_pPictureMenu_Button_Bg4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(664+9+341,719)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


------작은 수직라인-------------
g_pPictureMenu_Button_Bg5 = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPictureMenu_Button_Bg5 )

g_pPictureMenu_Button_Bg5:SetTex( "DLG_Common_New_Texture49.TGA", "Bar_Back" )

g_pPictureMenu_Button_Bg5:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(592,722)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureMenu_Button_Bg5_1 = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPictureMenu_Button_Bg5_1 )

g_pPictureMenu_Button_Bg5_1:SetTex( "DLG_Common_New_Texture49.TGA", "Bar_Back" )

g_pPictureMenu_Button_Bg5_1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(657,722)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureMenu_Button_Bg6 = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPictureMenu_Button_Bg6 )

g_pPictureMenu_Button_Bg6:SetTex( "DLG_Common_New_Texture49.TGA", "Bar_Back" )

g_pPictureMenu_Button_Bg6:SetPoint
{
	  ADD_SIZE_Y=-28,
	"LEFT_TOP		= D3DXVECTOR2(813,722+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureMenu_Button_Bg7 = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPictureMenu_Button_Bg7 )

g_pPictureMenu_Button_Bg7:SetTex( "DLG_Common_New_Texture49.TGA", "Bar_Back" )

g_pPictureMenu_Button_Bg7:SetPoint
{
	  ADD_SIZE_Y=-28,
	"LEFT_TOP		= D3DXVECTOR2(917,722+1)",
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

	"LEFT_TOP		= D3DXVECTOR2(670,724)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureMenu_Button_User_Info_ED = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPictureMenu_Button_User_Info_ED )

g_pPictureMenu_Button_User_Info_ED:SetTex( "DLG_Common_New_Texture49.TGA", "ED" )

g_pPictureMenu_Button_User_Info_ED:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(828-5-5,724)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureMenu_Button_User_Info_VP = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPictureMenu_Button_User_Info_VP )

g_pPictureMenu_Button_User_Info_VP:SetTex( "DLG_Common_New_Texture49.TGA", "VP" )

g_pPictureMenu_Button_User_Info_VP:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(927-5,724)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--------(게이지바)-------------
g_pPictureMenu_Button_User_Info_Bar_EXP = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPictureMenu_Button_User_Info_Bar_EXP )

g_pPictureMenu_Button_User_Info_Bar_EXP:SetTex( "DLG_Common_New_Texture49.TGA", "Bar_Glay_Back" )

g_pPictureMenu_Button_User_Info_Bar_EXP:SetPoint
{
		ADD_SIZE_X=-27,
	"LEFT_TOP		= D3DXVECTOR2(744,740)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureMenu_Button_User_Info_Bar_Spirit = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPictureMenu_Button_User_Info_Bar_Spirit )

g_pPictureMenu_Button_User_Info_Bar_Spirit:SetTex( "DLG_Common_New_Texture49.TGA", "Bar_Glay_Back" )

g_pPictureMenu_Button_User_Info_Bar_Spirit:SetPoint
{
          ADD_SIZE_X=-27,
	"LEFT_TOP		= D3DXVECTOR2(744,752)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureMenu_Button_User_Info_EXP_SPRIT = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button:AddPicture( g_pPictureMenu_Button_User_Info_EXP_SPRIT )

g_pPictureMenu_Button_User_Info_EXP_SPRIT:SetTex( "DLG_Common_New_Texture49.TGA", "EXP_SPRIT" )

g_pPictureMenu_Button_User_Info_EXP_SPRIT:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(669,740-2)",
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
		ADD_SIZE_X=266 - 27,
		ADD_SIZE_Y=-5,

	"LEFT_TOP		= D3DXVECTOR2(746,742)",
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
		ADD_SIZE_X=266 -27,
		ADD_SIZE_Y=-5,

	"LEFT_TOP		= D3DXVECTOR2(746,754)",
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
		ADD_SIZE_X=266 - 27,
		ADD_SIZE_Y=-5,

	"LEFT_TOP		= D3DXVECTOR2(746,754)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





    g_pStaticMenu_Button_LV_Num = g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticMenu_Button_LV_Num )
 	g_pStaticMenu_Button_LV_Num:SetName( "StaticMenu_Button_LV_Num" )

	 g_pStaticMenu_Button_LV_Num:AddString
 	{
 	 -- MSG    		 = "99",
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(689,724-1)",
 	 "COLOR          = D3DXCOLOR(1.0,1.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 
	 
	 
	 
	 
	 g_pStaticMenu_Button_ID = g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticMenu_Button_ID )
 	g_pStaticMenu_Button_ID:SetName( "StaticMenu_Button_ID" )

	 g_pStaticMenu_Button_ID:AddString
 	{
 	 -- MSG    		 = "gorebab09",
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(709,724-1)",
 	 "COLOR          = D3DXCOLOR(1.0,1.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 

	 g_pStaticMenu_Button_ED_Num = g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticMenu_Button_ED_Num )
 	g_pStaticMenu_Button_ED_Num:SetName( "StaticMenu_Button_ED_Num" )

	 g_pStaticMenu_Button_ED_Num:AddString
 	{
 	 -- MSG    		 = "99,000,000",
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 	 
	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(848-5-5,724-1)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.0)",
	 }
	 
	 
	 
	  g_pStaticMenu_Button_VP_Num = g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticMenu_Button_VP_Num )
 	g_pStaticMenu_Button_VP_Num:SetName( "StaticMenu_Button_VP_Num" )

	 g_pStaticMenu_Button_VP_Num:AddString
 	{
 	 -- MSG    		 = "99,000,000",
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 	
	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(946-5,724-1)",
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
 	 "POS            = D3DXVECTOR2(718-3+3,739-2)",
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
 	 "POS            = D3DXVECTOR2(718-3+3,752-2)",
 	 "COLOR          = D3DXCOLOR(0.0,0.5,1.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 
	 
	 
	 


























-- 메뉴



g_pButtonMenu_Button = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMenu_Button )
g_pButtonMenu_Button:SetName( "ButtonMenu_Button" )
g_pButtonMenu_Button:SetNormalTex( "DLG_Common_New_Texture42.tga", "Menu_Button" )

g_pButtonMenu_Button:SetOverTex( "DLG_Common_New_Texture42.tga", "Menu_Button_Over" )

g_pButtonMenu_Button:SetDownTex( "DLG_Common_New_Texture42.tga", "Menu_Button_Over" )

g_pButtonMenu_Button:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(-5-5,713)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu_Button:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(-5-5,713)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu_Button:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(-4-5,714)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonMenu_Button:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_MENU"] )












-- 내 정보
g_pButtonMenu_My_Bag = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMenu_My_Bag )
g_pButtonMenu_My_Bag:SetName( "ButtonMenu_My_Bag" )
g_pButtonMenu_My_Bag:SetNormalTex( "DLG_Common_New_Texture42.tga", "Menu_Icon_My_Bag" )

--g_pButtonMenu_My_Bag:SetOverTex( "DLG_Common_New_Texture42.tga", "Menu_Icon_My_Bag" )


g_pButtonMenu_My_Bag:SetOverAnimTex
{
	FileName		= "DLG_Common_New_Texture42.tga",
	KeyName			= "Menu_Icon_My_Bag",
	
	RotateAxis		= TEX_AXIS["TA_CENTER_CENTER"],
	RotateDegree	= 10,
	"POS			= D3DXVECTOR2(0,-2)",
	SequenceID		= 0,
	fShowTime		= 0.07,
}

g_pButtonMenu_My_Bag:SetOverAnimTex
{	
	RotateDegree	= -10,
	"POS			= D3DXVECTOR2(0,-4)",
	SequenceID		= 1,
	fShowTime		= 0.07,
}

g_pButtonMenu_My_Bag:SetOverAnimTex
{	
	RotateDegree	= 10,
	"POS			= D3DXVECTOR2(0,-6)",
	SequenceID		= 2,
	fShowTime		= 0.07,
}

g_pButtonMenu_My_Bag:SetOverAnimTex
{	
	RotateDegree	= -10,
	"POS			= D3DXVECTOR2(0,-8)",
	SequenceID		= 3,
	fShowTime		= 0.07,
}

g_pButtonMenu_My_Bag:SetOverAnimTex
{	
	RotateDegree	= 0,
	"POS			= D3DXVECTOR2(0,0)",
	SequenceID		= 4,
	fShowTime		= 0.15,
	
	bEndTexChange	= TRUE,
}

g_pButtonMenu_My_Bag:SetDownTex( "DLG_Common_New_Texture42.tga", "Menu_Icon_My_Bag" )

g_pButtonMenu_My_Bag:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(180,716)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu_My_Bag:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(180,716)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu_My_Bag:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(181,717)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonMenu_My_Bag:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_MY_INFO"] )
g_pButtonMenu_My_Bag:SetGuideDesc( STR_ID_2736 )
g_pButtonMenu_My_Bag:ChangeMouseOverSound_LUA( "Icon_Mouseover_MyInventory.ogg" )
g_pButtonMenu_My_Bag:ChangeMouseUpSound_LUA( "" )




g_pButtonMenu_Skill_Tree = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMenu_Skill_Tree )
g_pButtonMenu_Skill_Tree:SetName( "ButtonMenu_Skill_Tree" )
g_pButtonMenu_Skill_Tree:SetNormalTex( "DLG_Common_New_Texture42.tga", "Menu_Icon_Skill_Tree" )

--g_pButtonMenu_Skill_Tree:SetOverTex( "DLG_Common_New_Texture42.tga", "Menu_Icon_Skill_Tree" )

g_pButtonMenu_Skill_Tree:SetOverAnimTex
{
	FileName		= "DLG_Common_New_Texture42.tga",
	KeyName			= "Menu_Icon_Skill_Tree",
	
	RotateAxis		= TEX_AXIS["TA_CENTER_CENTER"],
	RotateDegree	= 90 + 30,
	"POS			= D3DXVECTOR2(0,0)",
	SequenceID		= 0,
	fShowTime		= 0.5,
	
	bEndTexChange	= TRUE,
}

--[[
g_pButtonMenu_Skill_Tree:SetOverAnimTex
{
	RotateAxis		= TEX_AXIS["TA_CENTER_CENTER"],
	RotateDegree	= 0,
	"POS			= D3DXVECTOR2(0,0)",
	SequenceID		= 1,
	fShowTime		= 1.0,
	
	bEndTexChange	= TRUE,
}
--]]

g_pButtonMenu_Skill_Tree:SetDownTex( "DLG_Common_New_Texture42.tga", "Menu_Icon_Skill_Tree" )

g_pButtonMenu_Skill_Tree:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(242,716-4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu_Skill_Tree:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(242,716-4)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu_Skill_Tree:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(243,717-4)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu_Skill_Tree:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_MY_INFO_SKILL_TREE"] )
g_pButtonMenu_Skill_Tree:SetGuideDesc( STR_ID_2737 )
g_pButtonMenu_Skill_Tree:ChangeMouseOverSound_LUA( "Icon_Mouseover_SkillTree.ogg" )
g_pButtonMenu_Skill_Tree:ChangeMouseUpSound_LUA( "" )

-- 내 정보



g_pButtonMenu_My_Quest = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMenu_My_Quest )
g_pButtonMenu_My_Quest:SetName( "ButtonMenu_My_Quest" )
g_pButtonMenu_My_Quest:SetNormalTex( "DLG_Common_New_Texture42.tga", "Menu_Icon_My_Quest" )

--g_pButtonMenu_My_Quest:SetOverTex( "DLG_Common_New_Texture42.tga", "Menu_Icon_My_Quest" )

g_pButtonMenu_My_Quest:SetOverAnimTex
{
	FileName		= "DLG_Common_New_Texture42.tga",
	KeyName			= "Menu_Icon_My_Quest",
	
	ScaleAxis		= TEX_AXIS["TA_CENTER_CENTER"],
	"SCALE			= D3DXVECTOR2(1.1,1.1)",
	"POS			= D3DXVECTOR2(0,0)",
	SequenceID		= 0,
	fShowTime		= 0.3,
	
	bEndTexChange	= TRUE,
}

g_pButtonMenu_My_Quest:SetDownTex( "DLG_Common_New_Texture42.tga", "Menu_Icon_My_Quest" )

g_pButtonMenu_My_Quest:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(307,717-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu_My_Quest:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(307,717-5)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu_My_Quest:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(307,718-5)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonMenu_My_Quest:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_MY_INFO_QUEST"] )
g_pButtonMenu_My_Quest:SetGuideDesc( STR_ID_2738 )
g_pButtonMenu_My_Quest:ChangeMouseOverSound_LUA( "Icon_Mouseover_MyQuest.ogg" )
g_pButtonMenu_My_Quest:ChangeMouseUpSound_LUA( "" )



g_pButtonMenu_Cash_Shop = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMenu_Cash_Shop )
g_pButtonMenu_Cash_Shop:SetName( "ButtonMenu_Cash_Shop" )
g_pButtonMenu_Cash_Shop:SetNormalTex( "DLG_Common_New_Texture42.tga", "Menu_Icon_Cash_Shop" )

--g_pButtonMenu_Cash_Shop:SetOverTex( "DLG_Common_New_Texture42.tga", "Menu_Icon_Cash_Shop" )

g_pButtonMenu_Cash_Shop:SetOverAnimTex
{
	FileName		= "DLG_Common_New_Texture42.tga",
	KeyName			= "Menu_Icon_Cash_Shop",
	
	RotateAxis		= TEX_AXIS["TA_CENTER_CENTER"],
	RotateDegree	= 180,
	"POS			= D3DXVECTOR2(0,-7)",
	SequenceID		= 0,
	fShowTime		= 0.20,
}


g_pButtonMenu_Cash_Shop:SetOverAnimTex
{
	RotateAxis		= TEX_AXIS["TA_CENTER_CENTER"],
	RotateDegree	= 360,
	"POS			= D3DXVECTOR2(0,0)",
	SequenceID		= 1,
	fShowTime		= 0.20,
	
	bEndTexChange	= TRUE,
}


g_pButtonMenu_Cash_Shop:SetDownTex( "DLG_Common_New_Texture42.tga", "Menu_Icon_Cash_Shop" )

g_pButtonMenu_Cash_Shop:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(534,715)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu_Cash_Shop:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(534,715)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu_Cash_Shop:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(534,715)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu_Cash_Shop:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_CASH_SHOP"] )
g_pButtonMenu_Cash_Shop:SetGuideDesc( STR_ID_2739 )
g_pButtonMenu_Cash_Shop:ChangeMouseOverSound_LUA( "Icon_Mouseover_CashShop.ogg" )
g_pButtonMenu_Cash_Shop:ChangeMouseUpSound_LUA( "" )








--[[

g_pButtonMenu_Gift_Box = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMenu_Gift_Box )
g_pButtonMenu_Gift_Box:SetName( "ButtonMenu_Gift_Box" )
g_pButtonMenu_Gift_Box:SetNormalTex( "DLG_Common_New_Texture49.tga", "Gift_Box_Normal2" )

g_pButtonMenu_Gift_Box:SetOverTex( "DLG_Common_New_Texture49.tga", "Gift_Box_Over2" )

g_pButtonMenu_Gift_Box:SetDownTex( "DLG_Common_New_Texture49.tga", "Gift_Box_Over2" )

g_pButtonMenu_Gift_Box:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(593,718)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu_Gift_Box:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(593,718)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu_Gift_Box:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(593,718)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pButtonMenu_Gift_Box:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_COUPON_BOX"] )
g_pButtonMenu_Gift_Box:SetGuideDesc( STR_ID_2740 )


--]]

g_pButtonMenu_Coupon = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMenu_Coupon )
g_pButtonMenu_Coupon:SetName( "ButtonMenu_Coupon" )
g_pButtonMenu_Coupon:SetNormalTex( "DLG_Common_New_Texture49.tga", "Coupon_Normal2" )

g_pButtonMenu_Coupon:SetOverTex( "DLG_Common_New_Texture49.tga", "Coupon_Over2" )

g_pButtonMenu_Coupon:SetDownTex( "DLG_Common_New_Texture49.tga", "Coupon_Over2" )

g_pButtonMenu_Coupon:SetNormalPoint
{
ADD_SIZE_X = -25,
ADD_SIZE_Y = -10,


 	"LEFT_TOP		= D3DXVECTOR2(600,751)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu_Coupon:SetOverPoint
{
ADD_SIZE_X = -25,
ADD_SIZE_Y = -10,
	"LEFT_TOP		= D3DXVECTOR2(600,751)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu_Coupon:SetDownPoint
{
      ADD_SIZE_X = -25-2,
     ADD_SIZE_Y = -10-2,
 	"LEFT_TOP		= D3DXVECTOR2(601,752)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pButtonMenu_Coupon:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_COUPON_INPUT_BOX"] )
g_pButtonMenu_Coupon:SetGuideDesc( STR_ID_2741 )











-- 유저찾기


g_pButtonMenu_Find_User = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMenu_Find_User )
g_pButtonMenu_Find_User:SetName( "ButtonMenu_Find_User" )
g_pButtonMenu_Find_User:SetNormalTex( "DLG_Common_New_Texture49.tga", "Find_Friend_Normal" )

g_pButtonMenu_Find_User:SetOverTex( "DLG_Common_New_Texture49.tga", "Find_Friend_Over" )

g_pButtonMenu_Find_User:SetDownTex( "DLG_Common_New_Texture49.tga", "Find_Friend_Over" )

g_pButtonMenu_Find_User:SetNormalPoint
{

ADD_SIZE_X = -25,
ADD_SIZE_Y = -10,
 	"LEFT_TOP		= D3DXVECTOR2(600,735)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu_Find_User:SetOverPoint
{
ADD_SIZE_X = -25,
ADD_SIZE_Y = -10,
	"LEFT_TOP		= D3DXVECTOR2(600,735)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu_Find_User:SetDownPoint
{
      ADD_SIZE_X = -25-2,
     ADD_SIZE_Y = -10-2,
 	"LEFT_TOP		= D3DXVECTOR2(601,736)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu_Find_User:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_FIND_USER"] )
g_pButtonMenu_Find_User:SetGuideDesc( STR_ID_2742 )






g_pButtonMenu_Party = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMenu_Party )
g_pButtonMenu_Party:SetName( "ButtonMenu_Party" )
g_pButtonMenu_Party:SetNormalTex( "DLG_Common_New_Texture49.tga", "Party_Normal" )

g_pButtonMenu_Party:SetOverTex( "DLG_Common_New_Texture49.tga", "Party_Over" )

g_pButtonMenu_Party:SetDownTex( "DLG_Common_New_Texture49.tga", "Party_Over")

g_pButtonMenu_Party:SetNormalPoint
{

ADD_SIZE_X = -25,
ADD_SIZE_Y = -10,
 	"LEFT_TOP		= D3DXVECTOR2(600,719)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu_Party:SetOverPoint
{
ADD_SIZE_X = -25,
ADD_SIZE_Y = -10,
	"LEFT_TOP		= D3DXVECTOR2(600,719)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu_Party:SetDownPoint
{
      ADD_SIZE_X = -25-2,
     ADD_SIZE_Y = -10-2,
 	"LEFT_TOP		= D3DXVECTOR2(601,720)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonMenu_Party:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_PARTY"] )
g_pButtonMenu_Party:SetGuideDesc( STR_ID_2743 )


--우편함

g_pButtonmessenger_Button = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonmessenger_Button )
g_pButtonmessenger_Button:SetName( "PostBox_Button" )
g_pButtonmessenger_Button:SetNormalTex( "DLG_Common_New_Texture49.tga", "MENU_ICON_MAIL_BOX" )

g_pButtonmessenger_Button:SetOverTex( "DLG_Common_New_Texture49.tga", "MENU_ICON_MAIL_BOX" )

g_pButtonmessenger_Button:SetDownTex( "DLG_Common_New_Texture49.tga", "MENU_ICON_MAIL_BOX" )


g_pButtonmessenger_Button:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(423,716)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonmessenger_Button:SetOverPoint
{
      ADD_SIZE_X = 2,
     ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(423-1,716-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonmessenger_Button:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(423+1,716+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonmessenger_Button:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_POSTBOX"] )
g_pButtonmessenger_Button:SetGuideDesc( STR_ID_2744 )


-- 옵션



g_pButtonMenu_Option = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMenu_Option )
g_pButtonMenu_Option:SetName( "ButtonMenu_Option" )
g_pButtonMenu_Option:SetNormalTex( "DLG_Common_New_Texture42.tga", "MENU_ICON_OPTION2_1" )

--g_pButtonMenu_Option:SetOverTex( "DLG_Common_New_Texture42.tga", "MENU_ICON_OPTION2_2" )
--g_pButtonMenu_Option:SetOverAnimTex( "DLG_Common_New_Texture42.tga", "Menu_Icon_Option2_1", 0, 0.3, false )
--g_pButtonMenu_Option:SetOverAnimTex( "DLG_Common_New_Texture42.tga", "Menu_Icon_Option2_2", 1, 0.3, false )
g_pButtonMenu_Option:SetOverAnimTex
{
	FileName		= "DLG_Common_New_Texture42.tga",
	KeyName			= "MENU_ICON_OPTION2_2",
	
	"POS			= D3DXVECTOR2(0,0)",
	SequenceID		= 0,
	fShowTime		= 0.5,
}


g_pButtonMenu_Option:SetOverAnimTex
{
	FileName		= "DLG_Common_New_Texture42.tga",
	KeyName			= "MENU_ICON_OPTION2_1",
	
	"POS			= D3DXVECTOR2(0,0)",
	SequenceID		= 1,
	fShowTime		= 0.5,
}

g_pButtonMenu_Option:SetDownTex( "DLG_Common_New_Texture42.tga", "MENU_ICON_OPTION2_2" )

g_pButtonMenu_Option:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(486,716)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu_Option:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(486,716)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu_Option:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(486+1,716+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pButtonMenu_Option:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_OPTION"] )
g_pButtonMenu_Option:SetGuideDesc( STR_ID_2745 )





-- back

g_pitem_normal_ButtonMenu_Back = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pitem_normal_ButtonMenu_Back )
g_pitem_normal_ButtonMenu_Back:SetName( "ButtonBack" )

g_pitem_normal_ButtonMenu_Back:SetNormalTex( "DLG_Common_New_Texture42.tga", "Menu_Back_Button" )

g_pitem_normal_ButtonMenu_Back:SetOverTex( "DLG_Common_New_Texture42.tga", "Menu_Back_Button" )

g_pitem_normal_ButtonMenu_Back:SetDownTex( "DLG_Common_New_Texture42.tga", "Menu_Back_Button" )

g_pitem_normal_ButtonMenu_Back:SetDisableTex( "DLG_Common_New_Texture42.tga", "Menu_Back_Normal" )



g_pitem_normal_ButtonMenu_Back:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(99,724)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pitem_normal_ButtonMenu_Back:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(99,724)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.81)",
	CHANGE_TIME		= 0.0,
}
g_pitem_normal_ButtonMenu_Back:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(100,725)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pitem_normal_ButtonMenu_Back:SetDisablePoint
{


 	"LEFT_TOP		= D3DXVECTOR2(99,724)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pitem_normal_ButtonMenu_Back:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_BACK"] )





-------------추가된 버튼 메신저--------------
g_pButtonMenu_Messenger = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMenu_Messenger )
g_pButtonMenu_Messenger:SetName( "ButtonMenu_Messenger" )
g_pButtonMenu_Messenger:SetNormalTex( "DLG_Common_New_Texture49.tga", "Menu_Icon_Messenger2" )

--g_pButtonMenu_Messenger:SetOverTex( "DLG_Common_New_Texture49.tga", "Menu_Icon_Messenger2" )

g_pButtonMenu_Messenger:SetOverAnimTex
{
	FileName		= "DLG_Common_New_Texture49.tga",
	KeyName			= "Menu_Icon_Messenger2",
	
	ScaleAxis		= TEX_AXIS["TA_CENTER_CENTER"],
	"SCALE			= D3DXVECTOR2(1.1,1.1)",
	"POS			= D3DXVECTOR2(0,0)",
	SequenceID		= 0,
	fShowTime		= 0.3,
}

g_pButtonMenu_Messenger:SetOverAnimTex
{
	FileName		= "DLG_Common_New_Texture49.tga",
	KeyName			= "Menu_Icon_Messenger2",
	
	ScaleAxis		= TEX_AXIS["TA_CENTER_CENTER"],
	"SCALE			= D3DXVECTOR2(1.1,1.1)",
	"POS			= D3DXVECTOR2(0,0)",
	SequenceID		= 1,
	fShowTime		= 0.3,
	
	bEndTexChange	= TRUE,
}

g_pButtonMenu_Messenger:SetOverAnimTex
{
	FileName		= "DLG_Common_New_Texture49.tga",
	KeyName			= "Menu_Icon_Messenger2_1",
	
	ScaleAxis		= TEX_AXIS["TA_CENTER_CENTER"],
	"SCALE			= D3DXVECTOR2(1.1,1.1)",
	"POS			= D3DXVECTOR2(0,0)",
	SequenceID		= 2,
	fShowTime		= 0.3,
	
	
}
g_pButtonMenu_Messenger:SetOverAnimTex
{
	FileName		= "DLG_Common_New_Texture49.tga",
	KeyName			= "Menu_Icon_Messenger2_2",
	
	ScaleAxis		= TEX_AXIS["TA_CENTER_CENTER"],
	"SCALE			= D3DXVECTOR2(1.1,1.1)",
	"POS			= D3DXVECTOR2(0,0)",
	SequenceID		= 1,
	fShowTime		= 0.3,
	
	SequenceIDToGo	= 2,
	
}

g_pButtonMenu_Messenger:SetDownTex( "DLG_Common_New_Texture42.tga", "Menu_Icon_Messenger2" )

g_pButtonMenu_Messenger:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(367,715-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu_Messenger:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(367,715-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu_Messenger:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(368,716-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu_Messenger:SetCustomMsgMouseUp( X2_MESSENGER_CUSTOM_UI_MSG["XMCUM_OPEN_OR_CLOSE_MESSENGER"] )
g_pButtonMenu_Messenger:SetGuideDesc( STR_ID_2746 )



g_pStaticMenu_Button2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMenu_Button2 )
g_pStaticMenu_Button2:SetName( "StaticMenu_Button2" )


--------추가된 버튼글자------------
g_pPictureMenu_Button_My_Bag_Text = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button2:AddPicture( g_pPictureMenu_Button_My_Bag_Text )

g_pPictureMenu_Button_My_Bag_Text:SetTex( "DLG_Common_New_Texture42.TGA", "My_bag" )

g_pPictureMenu_Button_My_Bag_Text:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(189,744)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureMenu_Button_My_Quest_Text = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button2:AddPicture( g_pPictureMenu_Button_My_Quest_Text )

g_pPictureMenu_Button_My_Quest_Text:SetTex( "DLG_Common_New_Texture42.TGA", "My_Quest" )

g_pPictureMenu_Button_My_Quest_Text:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(312,744)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureMenu_Button_My_Skill_Tree_Text = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button2:AddPicture( g_pPictureMenu_Button_My_Skill_Tree_Text )

g_pPictureMenu_Button_My_Skill_Tree_Text:SetTex( "DLG_Common_New_Texture42.TGA", "Skill_Tree" )

g_pPictureMenu_Button_My_Skill_Tree_Text:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(249,744)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureMenu_Button_My_Cash_Shop_Text = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button2:AddPicture( g_pPictureMenu_Button_My_Cash_Shop_Text )

g_pPictureMenu_Button_My_Cash_Shop_Text:SetTex( "DLG_Common_New_Texture42.TGA", "Cash_Shop2" )

g_pPictureMenu_Button_My_Cash_Shop_Text:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(542,744)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureMenu_Button_Messenger_Text = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button2:AddPicture( g_pPictureMenu_Button_Messenger_Text )

g_pPictureMenu_Button_Messenger_Text:SetTex( "DLG_Common_New_Texture42.TGA", "Messenger" )

g_pPictureMenu_Button_Messenger_Text:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(379,744)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureMenu_Button_Option_Text = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button2:AddPicture( g_pPictureMenu_Button_Option_Text )

g_pPictureMenu_Button_Option_Text:SetTex( "DLG_Common_New_Texture42.TGA", "MENU_ICON_OPTION_Font" )

g_pPictureMenu_Button_Option_Text:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(503,744)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureMenu_Button_Post_Text = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button2:AddPicture( g_pPictureMenu_Button_Post_Text )

g_pPictureMenu_Button_Post_Text:SetTex( "DLG_Common_New_Texture49.TGA", "POST" )

g_pPictureMenu_Button_Post_Text:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(440,744)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureMenu_Button_FULL_Text = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button2:AddPicture( g_pPictureMenu_Button_FULL_Text )

g_pPictureMenu_Button_FULL_Text:SetTex( "DLG_Common_New_Texture49.TGA", "FULL" )
g_pPictureMenu_Button_FULL_Text:SetIndex(1)
g_pPictureMenu_Button_FULL_Text:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(424,719)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureMenu_Button_NEW_Text = g_pUIDialog:CreatePicture()
g_pStaticMenu_Button2:AddPicture( g_pPictureMenu_Button_NEW_Text )

g_pPictureMenu_Button_NEW_Text:SetTex( "DLG_Common_New_Texture49.TGA", "NEW" )
g_pPictureMenu_Button_NEW_Text:SetIndex(2)
g_pPictureMenu_Button_NEW_Text:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(424,719)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





-- 스킬트리 New 표시
g_pStaticNewSkillPoint = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNewSkillPoint )
g_pStaticNewSkillPoint:SetName( "g_pStaticNewSkillPoint" )
g_pStaticNewSkillPoint:SetShowEnable( false, false )

g_pPicture_NewSkillPoint = g_pUIDialog:CreatePicture()
g_pStaticNewSkillPoint:AddPicture( g_pPicture_NewSkillPoint )
g_pPicture_NewSkillPoint:SetTex( "DLG_Common_New_Texture49.TGA", "NEW" )
g_pPicture_NewSkillPoint:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(242+4,719)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




-- 캐시샵 New 표시
g_pStatic_NewCashShop = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_NewCashShop )
g_pStatic_NewCashShop:SetName( "g_pStatic_NewCashShop" )
g_pStatic_NewCashShop:SetShowEnable( false, false )



g_pPicture_NewCashShop = g_pUIDialog:CreatePicture()
g_pStatic_NewCashShop:AddPicture( g_pPicture_NewCashShop )
g_pPicture_NewCashShop:SetTex( "DLG_Common_New_Texture49.TGA", "NEW" )
g_pPicture_NewCashShop:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(534+4,719)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



