-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_UI_Partu_PVP_SETTING" )
g_pUIDialog:SetPos( 0, 0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL"] )


g_pStatic_SETTING = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_SETTING )
g_pStatic_SETTING:SetName( "PVP_SETTING" )


--------제일 밑  BG
g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStatic_SETTING:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture49.TGA", "SETTING_BG_TOP" )
g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStatic_SETTING:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture49.TGA", "SETTING_BG_middle" )
g_pPicture_bg:SetPoint
{
    ADD_SIZE_Y = 320,
	"LEFT_TOP		= D3DXVECTOR2(0,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStatic_SETTING:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture49.TGA", "SETTING_BG_bottom" )
g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,337)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--------회색  BG
g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStatic_SETTING:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture49.TGA", "SETTING_BG2_TOP" )
g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(12,13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStatic_SETTING:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture49.TGA", "SETTING_BG2_middle" )
g_pPicture_bg:SetPoint
{
    ADD_SIZE_Y = 309,
	"LEFT_TOP		= D3DXVECTOR2(12,20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStatic_SETTING:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture49.TGA", "SETTING_BG2_bottom" )
g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(12,331)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--[[
------------------ 라디오 버튼 맵 설정
g_pRadioButton_MAP = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_MAP )
g_pRadioButton_MAP:SetFixOverByCheck( true )
g_pRadioButton_MAP:SetShowOffBGByCheck( true )
g_pRadioButton_MAP:SetName( "party_pvp_map_setting" )
g_pRadioButton_MAP:SetNormalTex( "DLG_UI_Button19.tga", "MAP_normal" )
g_pRadioButton_MAP:SetOverTex( "DLG_UI_Button19.tga", "MAP_over" )
g_pRadioButton_MAP:SetCheckedTex( "DLG_UI_Button19.tga", "MAP_down" )
g_pRadioButton_MAP:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(24,52-36)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_MAP:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(25,53-36)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_MAP:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(24,52-36)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(93,84-36)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_MAP:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(26,49-36)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_MAP:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PVP_MAP_SETTING"] )

----------------- 라디오 버튼 기타
g_pRadioButton_ETC = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_ETC )
g_pRadioButton_ETC:SetFixOverByCheck( true )
g_pRadioButton_ETC:SetShowOffBGByCheck( true )
g_pRadioButton_ETC:SetName( "party_pvp_etc_setting" )
g_pRadioButton_ETC:SetNormalTex( "DLG_UI_Button19.tga", "ETC_normal" )
g_pRadioButton_ETC:SetOverTex( "DLG_UI_Button19.tga", "ETC_over" )
g_pRadioButton_ETC:SetCheckedTex( "DLG_UI_Button19.tga", "ETC_down" )
g_pRadioButton_ETC:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(94,53-36)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_ETC:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(93,53-36)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_ETC:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(94,53-36)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(165,84-36)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_ETC:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(95,49-36)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_ETC:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PVP_ETC_SETTING"] )
--]]