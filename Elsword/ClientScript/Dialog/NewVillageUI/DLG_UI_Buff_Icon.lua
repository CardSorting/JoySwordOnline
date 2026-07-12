-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "Dialog_Premium_Buff" )
g_pUIDialog:SetPos( -999,-999 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )

--휴면 복귀 유저
g_pButton_xicon = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_xicon )
g_pButton_xicon:SetName( "Button_Buff_Icon" )
g_pButton_xicon:SetNormalTex( "DLG_ui_button18.tga", "RETURN_ADVENTURER" )
g_pButton_xicon:SetOverTex( "DLG_ui_button18.tga", "RETURN_ADVENTURER" )
g_pButton_xicon:SetDownTex( "DLG_ui_button18.tga", "RETURN_ADVENTURER" )

-- 가로 세로 31
g_pButton_xicon:SetNormalPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0, 0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_xicon:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0, 0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_xicon:SetDownPoint
{
    "LEFT_TOP		= D3DXVECTOR2(0, 0)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_xicon:SetGuideDesc( STR_ID_2700 )
--g_pButton_xicon:SetShow( false )
--g_pButton_xicon:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_PREMIUM_BUFF"] )