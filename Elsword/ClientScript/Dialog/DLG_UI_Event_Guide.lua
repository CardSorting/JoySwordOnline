-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SSSUCM_EVENT_GUIDE_OK"] )

g_pStaticopen = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticopen )

g_pUIDialog:SetPos(330,200) 
---------BG
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture03.TGA", "UPGRADE_BG1_TOP" )
g_pPicture_bg1:SetPoint
{  
    ADD_SIZE_Y = 31,
	"LEFT_TOP		= D3DXVECTOR2(-20,30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture03.TGA", "UPGRADE_BG1_MIDDLE" )
g_pPicture_bg1:SetPoint
{
    ADD_SIZE_Y = 230,
	"LEFT_TOP		= D3DXVECTOR2(-20,74)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture03.TGA", "UPGRADE_BG1_BOTTOM" )
g_pPicture_bg1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(-20,305)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture03.TGA", "UPGRADE_BG1_TOP" )
g_pPicture_bg1:SetPoint
{  
    ADD_SIZE_Y = 31,
	"LEFT_TOP		= D3DXVECTOR2(-20,30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture03.TGA", "UPGRADE_BG1_MIDDLE" )
g_pPicture_bg1:SetPoint
{
    ADD_SIZE_Y = 230,
	"LEFT_TOP		= D3DXVECTOR2(-20,74)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticopen:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture03.TGA", "UPGRADE_BG1_BOTTOM" )
g_pPicture_bg1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(-20,305)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-----------------------TITLE

g_pStatic_TITLE = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_TITLE )
g_pStatic_TITLE:SetName( "Static_Personal_Shop_Name_Up" )

g_pStatic_TITLE:AddString
{
	MSG 			= STR_ID_18270, 
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	"POS 			= D3DXVECTOR2(8,58)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.1,0.1,0.1,1.0)",
}

g_pButtonesc = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonesc )
g_pButtonesc:SetNormalTex( "DLG_UI_BUTTON05.tga", "OK_BUTTON_normal" )
g_pButtonesc:SetOverTex( "DLG_UI_BUTTON05.tga", "OK_BUTTON_over" )
g_pButtonesc:SetDownTex( "DLG_UI_BUTTON05.tga", "OK_BUTTON_over" )
g_pButtonesc:SetNormalPoint
{	
    "LEFT_TOP		= D3DXVECTOR2(237,272)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonesc:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(237-3,272-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonesc:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(237-2,272-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonesc:SetCustomMsgMouseUp( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SSSUCM_EVENT_GUIDE_OK"] )