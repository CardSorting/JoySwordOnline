-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetName( "DLG_Notice_Background" )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetPos(0,748)

g_pStaticItem_Notice = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticItem_Notice )
g_pStaticItem_Notice:SetName( "g_pStaticItem_Notice" )

--배경
g_pPicture_BG = g_pUIDialog:CreatePicture()
g_pStaticItem_Notice:AddPicture( g_pPicture_BG )
g_pPicture_BG:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "NOTICE_BG" )
g_pPicture_BG:SetPoint
{
	ADD_SIZE_X = 1005,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}
-----메시지
g_pStaticMessage = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMessage )
g_pStaticMessage:SetName( "Notice_Message" )

g_pStaticMessage:AddString
{
	MSG 			= STR_ID_12507,
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(512,2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

----닫기 버튼 
g_pButton_X = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_X )
g_pButton_X:SetName( "Close_Button" )
g_pButton_X:SetNormalTex( "DLG_UI_Common_Texture49_NEW.tga", "MAP_X" )
g_pButton_X:SetOverTex( "DLG_UI_Common_Texture49_NEW.tga", "MAP_X" )
g_pButton_X:SetDownTex( "DLG_UI_Common_Texture49_NEW.tga", "MAP_X" )

g_pButton_X:SetNormalPoint
{
	"LEFT_TOP		= D3DXVECTOR2(950,4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_X:SetOverPoint
{
	ADD_SIZE_X		= 2,
	ADD_SIZE_Y		= 2,
    "LEFT_TOP		= D3DXVECTOR2(950-1,4-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_X:SetDownPoint
{
     ADD_SIZE_X		= -2,
     ADD_SIZE_Y 	= -2,
 	"LEFT_TOP		= D3DXVECTOR2(950+1,4+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_X:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_NOTICE_CLOSE"] )