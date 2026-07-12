-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_PVP_GAME_OPTION_FOR_DEBUG" )
g_pUIDialog:SetPos( 630, 10 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )





g_pStatic_Background = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Background )
g_pStatic_Background:SetName( "BackGround" )


g_pPictureBackground = g_pUIDialog:CreatePicture()
g_pStatic_Background:AddPicture(g_pPictureBackground)
g_pPictureBackground:SetTex( "DLG_Common_New_Texture21.tga", "PVP_Result_Image_ElswordMark" )
g_pPictureBackground:SetPoint
{
	USE_TEXTURE_SIZE = FALSE,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(200, 200)",
	"COLOR			= D3DXCOLOR(0, 0, 0, 0)",
	CHANGE_TIME		= 0.0,
}




-- base defence
g_pCheckBox_BaseDefence = g_pUIDialog:CreateCheckBox()
g_pCheckBox_BaseDefence:SetName( "CHECK_BASE_DEFENCE" )
g_pUIDialog:AddControl( g_pCheckBox_BaseDefence )

g_pCheckBox_BaseDefence:SetNormalTex( "DLG_Login3.TGA", "AUTO_LOGIN_NORMAL" )
g_pCheckBox_BaseDefence:SetCheckedTex( "DLG_Login3.TGA", "AUTO_LOGIN_CHECK" )

g_pCheckBox_BaseDefence:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(0, 0 )",
	"RIGHT_BOTTOM		= D3DXVECTOR2( 25, 25 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_BaseDefence:SetCheckPoint
{
	USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(0, 0 )",
	"RIGHT_BOTTOM		= D3DXVECTOR2( 25, 25 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pCheckBox_BaseDefence:SetCustomMsgChecked( PVP_ROOM_UI_CUSTOM_MSG["PRUCM_CHECK_BASE_DEFENCE_MODE"] )
g_pCheckBox_BaseDefence:SetCustomMsgUnChecked( PVP_ROOM_UI_CUSTOM_MSG["PRUCM_CHECK_BASE_DEFENCE_MODE"] )





-- boss combat
g_pCheckBox_BossCombat = g_pUIDialog:CreateCheckBox()
g_pCheckBox_BossCombat:SetName( "CHECK_BOSS_COMBAT" )
g_pUIDialog:AddControl( g_pCheckBox_BossCombat )

g_pCheckBox_BossCombat:SetNormalTex( "DLG_Login3.TGA", "AUTO_LOGIN_NORMAL" )
g_pCheckBox_BossCombat:SetCheckedTex( "DLG_Login3.TGA", "AUTO_LOGIN_CHECK" )

g_pCheckBox_BossCombat:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(30, 0 )",
	"RIGHT_BOTTOM	= D3DXVECTOR2( 55, 25 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_BossCombat:SetCheckPoint
{
	USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(30, 0 )",
	"RIGHT_BOTTOM		= D3DXVECTOR2( 55, 25 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pCheckBox_BossCombat:SetCustomMsgChecked( PVP_ROOM_UI_CUSTOM_MSG["PRUCM_CHECK_BOSS_COMBAT_MODE"] )
g_pCheckBox_BossCombat:SetCustomMsgUnChecked( PVP_ROOM_UI_CUSTOM_MSG["PRUCM_CHECK_BOSS_COMBAT_MODE"] )

