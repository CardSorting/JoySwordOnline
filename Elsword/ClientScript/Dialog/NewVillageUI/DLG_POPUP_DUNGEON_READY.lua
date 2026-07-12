-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetFront( true )
g_pUIDialog:SetPos(794, 137)

g_pStatic_BackGround = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_BackGround )
g_pStatic_BackGround:SetName( "StaticMsgBoxBG" )


-------------
----------BG
g_pPicture_DUNGEON_Bg_LINE1 = g_pUIDialog:CreatePicture()
g_pStatic_BackGround:AddPicture( g_pPicture_DUNGEON_Bg_LINE1 )
g_pPicture_DUNGEON_Bg_LINE1:SetTex( "DLG_UI_Common_Texture65_NEW.tga", "BG_DUNGEON_READY" )
g_pPicture_DUNGEON_Bg_LINE1:SetPoint
{
	USE_TEXTURE_SIZE	= TRUE,
 	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
----------String
g_pStatic_BackGround:AddString
{
	MSG 			= STR_ID_27,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(28+90, 24)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}
--[[
g_pPicture_DUNGEON_Bg_SHUTDOWN = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pPicture_DUNGEON_Bg_SHUTDOWN )
g_pPicture_DUNGEON_Bg_SHUTDOWN:SetName( "SHUTDOWN_Text" )

g_pPicture_DUNGEON_Bg_SHUTDOWN:AddString
{
	MSG 			= "1인 파티가 구성되어 ",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(28+88, 24+16)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pPicture_DUNGEON_Bg_SHUTDOWN = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pPicture_DUNGEON_Bg_SHUTDOWN )
g_pPicture_DUNGEON_Bg_SHUTDOWN:SetName( "SHUTDOWN_Text" )

g_pPicture_DUNGEON_Bg_SHUTDOWN:AddString
{
	MSG 			= "게임을 시작합니다.(1초)",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(28+88, 24+32)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}
--]]

-- -OK 버튼
g_pButton_X = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_X )
g_pButton_X:SetName( "MsgBoxOkAndCancelOkButton" )

g_pButton_X:SetNormalTex( "DLG_UI_Button19_NEW.tga", "SETTING_OK_NORMAL" )
g_pButton_X:SetOverTex( "DLG_UI_Button19_NEW.tga", "SETTING_OK_OVER" )
g_pButton_X:SetDownTex( "DLG_UI_Button19_NEW.tga", "SETTING_OK_OVER" )
g_pButton_X:SetNormalPoint
{
	"LEFT_TOP		= D3DXVECTOR2(40,96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_X:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(40-3,96-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_X:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(40-2,96-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-- -취소 버튼
g_pButton_X = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_X )
g_pButton_X:SetName( "MsgBoxOkAndCancelCancelButton" )

g_pButton_X:SetNormalTex( "DLG_UI_Button19_NEW.tga", "SETTING_CANCEL_NORMAL" )
g_pButton_X:SetOverTex( "DLG_UI_Button19_NEW.tga", "SETTING_CANCEL_OVER" )
g_pButton_X:SetDownTex( "DLG_UI_Button19_NEW.tga", "SETTING_CANCEL_OVER" )
g_pButton_X:SetNormalPoint
{
	"LEFT_TOP		= D3DXVECTOR2(40+76,96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_X:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(40+76-5,96-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_X:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(40+76-4,96-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

