-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetPos( 60,55 )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetCloseCustomUIEventID( GUIDE_UI_CUSTOM_MESSAGE["GUI_EPIC_EXIT"] )

g_pStatic_Help_Epic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Help_Epic )
g_pStatic_Help_Epic:SetName( "Help_Epic" )

-----BG

g_pPictureSkill_BG01 = g_pUIDialog:CreatePicture()
g_pStatic_Help_Epic:AddPicture( g_pPictureSkill_BG01 )

g_pPictureSkill_BG01:SetTex( "DLG_UI_Common_Texture32.TGA", "BG_T" )

g_pPictureSkill_BG01:SetPoint
{
   ADD_SIZE_X = 367,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureSkill_BG02 = g_pUIDialog:CreatePicture()
g_pStatic_Help_Epic:AddPicture( g_pPictureSkill_BG02 )

g_pPictureSkill_BG02:SetTex( "DLG_UI_Common_Texture32.TGA", "BG_C" )

g_pPictureSkill_BG02:SetPoint
{
   ADD_SIZE_X = 367,
   ADD_SIZE_Y = 595,
	"LEFT_TOP		= D3DXVECTOR2(0,0+8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureSkill_BG03 = g_pUIDialog:CreatePicture()
g_pStatic_Help_Epic:AddPicture( g_pPictureSkill_BG03 )

g_pPictureSkill_BG03:SetTex( "DLG_UI_Common_Texture32.TGA", "BG_B" )

g_pPictureSkill_BG03:SetPoint
{
   ADD_SIZE_X = 367,
	"LEFT_TOP		= D3DXVECTOR2(0,605)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------



g_pPicture_Q = g_pUIDialog:CreatePicture()
g_pStatic_Help_Epic:AddPicture( g_pPicture_Q )

g_pPicture_Q:SetTex( "DLG_UI_Common_Texture38.TGA", "Guide_Quest01" )

g_pPicture_Q:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(125,61)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureQuest_shot = g_pUIDialog:CreatePicture()
g_pStatic_Help_Epic:AddPicture( g_pPictureQuest_shot )

g_pPictureQuest_shot:SetTex( "DLG_UI_Common_Texture39.TGA", "Guide_Quest02" )

g_pPictureQuest_shot:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(637,91)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------


g_pStatic_Text = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Text )
g_pStatic_Text:SetName( "page27" )

g_pStatic_Text:AddString
{
	MSG 			= STR_ID_5140,
	--MSG 			= "에픽 퀘스트란?",
	FONT_INDEX		= XUF_DODUM_20_BOLD,
	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(135+2,30+2)",
	"COLOR			= D3DXCOLOR(0.4,0.2,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pStatic_Text = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Text )
g_pStatic_Text:SetName( "page27" )

g_pStatic_Text:AddString
{
	MSG 			= STR_ID_5140,
	--MSG 			= "에픽 퀘스트란?",
	FONT_INDEX		= XUF_DODUM_20_BOLD,
	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(135,30)",
	"COLOR			= D3DXCOLOR(1.0,0.9,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}




--------------------------------------------
----------버튼----------------------
--------------------------------------------


g_pButtoncomplete = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtoncomplete )
g_pButtoncomplete:SetName( "Button_Complete" )
g_pButtoncomplete:SetNormalTex( "DLG_UI_BUTTON16.tga", "BTN_Normal" )

g_pButtoncomplete:SetOverTex( "DLG_UI_BUTTON16.tga", "BTN_OVER" )

g_pButtoncomplete:SetDownTex( "DLG_UI_BUTTON16.tga", "BTN_OVER" )

g_pButtoncomplete:SetNormalPoint
{
ADD_SIZE_X = 15,
    "LEFT_TOP		= D3DXVECTOR2(400,550)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncomplete:SetOverPoint
{
ADD_SIZE_X = 15,
	"LEFT_TOP		= D3DXVECTOR2(400-4,550-4)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncomplete:SetDownPoint
{

      ADD_SIZE_X = 15-2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(400-4+1,550-4+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncomplete:SetCustomMsgMouseUp( GUIDE_UI_CUSTOM_MESSAGE["GUI_EPIC_EXIT"] )

--------------------------------- 닫기 버튼 ----------------------------------------

g_pStatic_Text = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Text )
g_pStatic_Text:SetName( "page27" )

g_pStatic_Text:AddString
{
	MSG 			= STR_ID_5136,
	--MSG 			= "닫기",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(450+2,556+2 + 8)",
	"COLOR			= D3DXCOLOR(0.5,0.4,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pStatic_Text = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Text )
g_pStatic_Text:SetName( "page27" )

g_pStatic_Text:AddString
{
	MSG 			= STR_ID_5136,
	--MSG 			= "닫기",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(450,556 + 8)",
	"COLOR			= D3DXCOLOR(1.0,0.9,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



--------------------------------------------------------------

