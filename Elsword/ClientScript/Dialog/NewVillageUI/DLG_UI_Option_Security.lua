-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStatic_pass = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_pass )
g_pStatic_pass:SetName( "Option_Window_Security" )

FIX_POS_X = 50

---------------------------------------------------------------------------------------------------------------------------------


--보안패드 설정

	g_pButton_security_setting = g_pUIDialog:CreateButton()
	g_pUIDialog:AddControl( g_pButton_security_setting )
	--g_pButton_security_setting:SetShowEnable( false, false )
	g_pButton_security_setting:SetName( "ButtonSecuritySetting" )
	g_pButton_security_setting:SetNormalTex( "DLG_ui_button18.tga", "security_pad_set_normal" )

	g_pButton_security_setting:SetOverTex( "DLG_ui_button18.tga", "security_pad_set_over" )

	g_pButton_security_setting:SetDownTex( "DLG_ui_button18.tga", "security_pad_set_over" )

	g_pButton_security_setting:SetDisableTex( "DLG_UI_Button20.tga", "security_pad_set_dis" )

	g_pButton_security_setting:SetNormalPoint
	{

ADD_SIZE_X = 46,
ADD_SIZE_Y = 5,
 		"LEFT_TOP		= D3DXVECTOR2(28+FIX_POS_X,113)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}


	g_pButton_security_setting:SetOverPoint
	{
ADD_SIZE_X = 46+2,
ADD_SIZE_Y = 5+1.5,
		"LEFT_TOP		= D3DXVECTOR2(28-4-1+FIX_POS_X,113-5-0.3+1)",

		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
g_pButton_security_setting:SetDownPoint
{
ADD_SIZE_X = -2+46,
ADD_SIZE_Y = -1+5,
    "LEFT_TOP		= D3DXVECTOR2(28-2-1+FIX_POS_X,113-4+1.3)",

    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
CHANGE_TIME		= 0.0,
}
g_pButton_security_setting:SetDisablePoint
{
ADD_SIZE_X = 46,
ADD_SIZE_Y = 5,
 		"LEFT_TOP		= D3DXVECTOR2(28+FIX_POS_X,113)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
}
g_pButton_security_setting:SetCustomMsgMouseUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_SECURITY_SETTING"] )




--보안패드 암호변경

	g_pButton_security_change = g_pUIDialog:CreateButton()
	g_pUIDialog:AddControl( g_pButton_security_change )
	--g_pButton_security_change:SetShowEnable( false, false )
	g_pButton_security_change:SetName( "ButtonSecurityChange" )
	g_pButton_security_change:SetNormalTex( "DLG_ui_button18.tga", "security_pad_change_normal" )

	g_pButton_security_change:SetOverTex( "DLG_ui_button18.tga", "security_pad_change_over" )

	g_pButton_security_change:SetDownTex( "DLG_ui_button18.tga", "security_pad_change_over" )
	g_pButton_security_change:SetDisableTex( "DLG_UI_Button20.tga", "security_pad_change_dis" )

	g_pButton_security_change:SetNormalPoint
	{

ADD_SIZE_X = 46,
ADD_SIZE_Y = 5,
 		"LEFT_TOP		= D3DXVECTOR2(28+FIX_POS_X,113+45)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButton_security_change:SetOverPoint
	{
	ADD_SIZE_X = 46+2,
ADD_SIZE_Y = 5+1.5,
		"LEFT_TOP		= D3DXVECTOR2(28-4-1+FIX_POS_X,113-5+45-0.3+1)",

		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
g_pButton_security_change:SetDownPoint
{
ADD_SIZE_X = -2+46,
ADD_SIZE_Y = -1+5,
    "LEFT_TOP		= D3DXVECTOR2(28-2-1+FIX_POS_X,113-4+45+1.3)",

    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
CHANGE_TIME		= 0.0,
}
g_pButton_security_change:SetDisablePoint
{

ADD_SIZE_X = 46,
ADD_SIZE_Y = 5,
 		"LEFT_TOP		= D3DXVECTOR2(28+FIX_POS_X,113+45)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
}
g_pButton_security_change:SetCustomMsgMouseUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_SECURITY_CHANGE_PASSWORD"] )

--보안패드 해제

	g_pButton_security_release = g_pUIDialog:CreateButton()
	g_pUIDialog:AddControl( g_pButton_security_release )
	--g_pButton_security_release:SetShowEnable( false, false )
	g_pButton_security_release:SetName( "ButtonSecurityRelease" )
	g_pButton_security_release:SetNormalTex( "DLG_ui_button18.tga", "security_pad_clear_normal" )

	g_pButton_security_release:SetOverTex( "DLG_ui_button18.tga", "security_pad_clear_over" )

	g_pButton_security_release:SetDownTex( "DLG_ui_button18.tga", "security_pad_clear_over" )
	g_pButton_security_release:SetDisableTex( "DLG_UI_Button20.tga", "security_pad_clear_dis" )

	g_pButton_security_release:SetNormalPoint
	{

ADD_SIZE_X = 46,
ADD_SIZE_Y = 5,
 		"LEFT_TOP		= D3DXVECTOR2(28+FIX_POS_X,113+90)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButton_security_release:SetOverPoint
	{
	ADD_SIZE_X = 46+2,
ADD_SIZE_Y = 5+1.5,
		"LEFT_TOP		= D3DXVECTOR2(28-4-2+FIX_POS_X,113-5+90-0.5)",

		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
g_pButton_security_release:SetDownPoint
{
ADD_SIZE_X = -2+46,
ADD_SIZE_Y = -1+5,
    "LEFT_TOP		= D3DXVECTOR2(28-2-2+FIX_POS_X,113-5+90+1.3)",

    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
CHANGE_TIME		= 0.0,
}
g_pButton_security_release:SetDisablePoint
{

ADD_SIZE_X = 46,
ADD_SIZE_Y = 5,
 		"LEFT_TOP		= D3DXVECTOR2(28+FIX_POS_X,113+90)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
}
g_pButton_security_release:SetCustomMsgMouseUp( STATE_OPTION_UI_CUSTOM_MSG["SOUCM_OPTION_SECURITY_RELEASE"] )

