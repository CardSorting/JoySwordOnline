-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_UI_System" )
g_pUIDialog:SetPos( 434, 256 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )






g_pStatic_system = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_system )
g_pStatic_system:SetName( "system" )
g_pUIDialog:SetCloseCustomUIEventID( STATE_MENU_UI_CUSTOM_MSG["SMUCM_EXIT_SYSTEM"] )

----------BG
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_system:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture01.TGA", "BG_TOP" )
g_pPicture_bg1:SetPoint
{
	ADD_SIZE_X	= -287,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_system:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture01.TGA", "BG_MIDDLE" )
g_pPicture_bg1:SetPoint
{
	ADD_SIZE_X	= -287,
	ADD_SIZE_Y	= 250-1 - 33,
	"LEFT_TOP		= D3DXVECTOR2(0,7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_system:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture01.TGA", "BG_BOTTOM" )
g_pPicture_bg1:SetPoint
{
	ADD_SIZE_X	= -287,
	ADD_SIZE_Y	= -12,
	"LEFT_TOP		= D3DXVECTOR2( 0, 262 - 33 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

----------BG2
g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStatic_system:AddPicture( g_pPicture_bg2 )
g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture01.TGA", "qust_bg2_top" )
g_pPicture_bg2:SetPoint
{
	ADD_SIZE_X	= -263,
	"LEFT_TOP		= D3DXVECTOR2(0+10,0+45)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStatic_system:AddPicture( g_pPicture_bg2 )
g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture01.TGA", "qust_bg2_middle" )
g_pPicture_bg2:SetPoint
{
	ADD_SIZE_X	= -263,
	ADD_SIZE_Y	= 195 - 33,
	"LEFT_TOP		= D3DXVECTOR2(0+10,0+55)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStatic_system:AddPicture( g_pPicture_bg2 )
g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture01.TGA", "qust_bg2_bottom" )
g_pPicture_bg2:SetPoint
{
	ADD_SIZE_X	= -263,
	"LEFT_TOP		= D3DXVECTOR2( 10, 251 - 33 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

-------------------TITLE
g_pPicturetitle = g_pUIDialog:CreatePicture()
g_pStatic_system:AddPicture( g_pPicturetitle )
g_pPicturetitle:SetTex( "DLG_UI_Title01.TGA", "system" )
g_pPicturetitle:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(12,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

------------옵션
g_pButtonoption = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonoption )
g_pButtonoption:SetName( "SystemMenuOption" )
g_pButtonoption:SetNormalTex( "DLG_UI_Button10.tga", "option_normal" )
g_pButtonoption:SetOverTex( "DLG_UI_Button10.tga", "option_over" )
g_pButtonoption:SetDownTex( "DLG_UI_Button10.tga", "option_over" )
g_pButtonoption:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(17-3,49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonoption:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(14-3,46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonoption:SetDownPoint
{
	ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(14+1-3,46+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pButtonoption:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_OPTION"] )
g_pButtonoption:RequestFocus()
g_pButtonoption:SetPrevTabControlName( "game_out" )
g_pButtonoption:SetTabControlName( "SettingKey" )
g_pButtonoption:SetEdge( false, 1, D3DXCOLOR( 0.4,0.6,0.8,1 ) )

------------키보드 설정
g_pButtonSettingKey = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSettingKey )
g_pButtonSettingKey:SetName( "SettingKey" )
g_pButtonSettingKey:SetNormalTex( "DLG_UI_Button19_NEW.tga", "KEY_SETTING_NORMAL" )
g_pButtonSettingKey:SetOverTex( "DLG_UI_Button19_NEW.tga", "KEY_SETTING_OVER" )
g_pButtonSettingKey:SetDownTex( "DLG_UI_Button19_NEW.tga", "KEY_SETTING_OVER" )
g_pButtonSettingKey:SetNormalPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 17-3, 85 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonSettingKey:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 13-3, 80 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonSettingKey:SetDownPoint
{
	ADD_SIZE_X	= -2,
    ADD_SIZE_Y	= -2,
 	"LEFT_TOP		= D3DXVECTOR2( 13+1-3, 80+1 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pButtonSettingKey:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_OPEN_KEYPAD"] )
g_pButtonSettingKey:SetPrevTabControlName( "SystemMenuOption" )
g_pButtonSettingKey:SetTabControlName( "character_selec" )
g_pButtonSettingKey:SetEdge( false, 1, D3DXCOLOR( 0.4,0.6,0.8,1 ) )

------------캐릭터선택
g_pButtoncharacter_selec = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtoncharacter_selec )
g_pButtoncharacter_selec:SetName( "character_selec" )
g_pButtoncharacter_selec:SetNormalTex( "DLG_UI_Button10.tga", "character_selec_normal" )
g_pButtoncharacter_selec:SetOverTex( "DLG_UI_Button10.tga", "character_selec_over" )
g_pButtoncharacter_selec:SetDownTex( "DLG_UI_Button10.tga", "character_selec_over" )
g_pButtoncharacter_selec:SetNormalPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 17-3, 50 + 35 * 2 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pButtoncharacter_selec:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 14-3, 47 + 35 * 2 )",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtoncharacter_selec:SetDownPoint
{
	ADD_SIZE_X	= -2,
    ADD_SIZE_Y 	= -2,
 	"LEFT_TOP			= D3DXVECTOR2( 14+1-3, 47+1 + 35 * 2 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pButtoncharacter_selec:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_STATE_CHANGE_UNIT_SELECT"] )
g_pButtoncharacter_selec:SetPrevTabControlName( "SystemMenuOption" )
g_pButtoncharacter_selec:SetTabControlName( "suver_selec" )
g_pButtoncharacter_selec:SetEdge( false, 1, D3DXCOLOR( 0.4,0.6,0.8,1 ) )

------------서버선택
g_pButtonsuver_selec = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonsuver_selec )
g_pButtonsuver_selec:SetName( "suver_selec" )
g_pButtonsuver_selec:SetNormalTex( "DLG_UI_Button10.tga", "suver_selec_normal" )
g_pButtonsuver_selec:SetOverTex( "DLG_UI_Button10.tga", "suver_selec_over" )
g_pButtonsuver_selec:SetDownTex( "DLG_UI_Button10.tga", "suver_selec_over" )
g_pButtonsuver_selec:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2( 17-3, 50 + 35 * 3 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonsuver_selec:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 13-3, 46 + 35 * 3 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonsuver_selec:SetDownPoint
{
	ADD_SIZE_X	= -2,
    ADD_SIZE_Y	= -2,
 	"LEFT_TOP			= D3DXVECTOR2( 13+1-3, 46+1 + 35 * 3 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pButtonsuver_selec:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_STATE_CHANGE_SERVER_SELECT"] )
g_pButtonsuver_selec:SetPrevTabControlName( "character_selec" )
g_pButtonsuver_selec:SetTabControlName( "game_out" )
g_pButtonsuver_selec:SetEdge( false, 1, D3DXCOLOR( 0.4,0.6,0.8,1 ) )

------------게임종료
g_pButtongame_out = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtongame_out )
g_pButtongame_out:SetName( "game_out" )
g_pButtongame_out:SetNormalTex( "DLG_UI_Button10.tga", "game_out_normal" )
g_pButtongame_out:SetOverTex( "DLG_UI_Button10.tga", "game_out_over" )
g_pButtongame_out:SetDownTex( "DLG_UI_Button10.tga", "game_out_over" )
g_pButtongame_out:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2( 17-3, 50 + 35 * 4 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtongame_out:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 14-3, 47 + 35 * 4 )",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtongame_out:SetDownPoint
{
	ADD_SIZE_X	= -2,
    ADD_SIZE_Y	= -2,
 	"LEFT_TOP			= D3DXVECTOR2( 14+1-3, 47+1 + 35 * 4 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pButtongame_out:SetCustomMsgMouseUp( STATE_UI_CUSTOM_MSG["SUCM_EXIT_WINDOW"] )
g_pButtongame_out:SetPrevTabControlName( "suver_selec" )
g_pButtongame_out:SetTabControlName( "SystemMenuOption" )
g_pButtongame_out:SetEdge( false, 1, D3DXCOLOR( 0.4,0.6,0.8,1 ) )

------------------ X box
g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "SystemMenu_Exit" )
g_pButtonX:SetNormalTex( "DLG_UI_BUTTON01.tga", "EXIT_NORMAL" )
g_pButtonX:SetOverTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )
g_pButtonX:SetDownTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )
g_pButtonX:SetNormalPoint
{
    "LEFT_TOP		= D3DXVECTOR2( 130, 12 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonX:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2( 126, 8 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonX:SetDownPoint
{
	ADD_SIZE_X	= -3,
	ADD_SIZE_Y	= -3,
 	"LEFT_TOP		= D3DXVECTOR2( 128, 10 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_EXIT_SYSTEM"] )
