-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Login_Front" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )






g_pCheckBoxAutoLogin = g_pUIDialog:CreateCheckBox()
g_pCheckBoxAutoLogin:SetName( "CheckBoxAutoLogin" )
g_pUIDialog:AddControl( g_pCheckBoxAutoLogin )

g_pCheckBoxAutoLogin:SetNormalTex( "DLG_Login3.TGA", "AUTO_LOGIN_NORMAL" )



g_pCheckBoxAutoLogin:SetCheckedTex( "DLG_Login3.TGA", "AUTO_LOGIN_CHECK" )


g_pCheckBoxAutoLogin:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(25,711)",
	"RIGHT_TOP		= D3DXVECTOR2(57,711)",
	"LEFT_BOTTOM		= D3DXVECTOR2(25,743)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(57,743)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxAutoLogin:SetCheckPoint
{
	"LEFT_TOP		= D3DXVECTOR2(25,711)",
	"RIGHT_TOP		= D3DXVECTOR2(57,711)",
	"LEFT_BOTTOM		= D3DXVECTOR2(25,743)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(57,743)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}

g_pCheckBoxAutoLogin:SetCustomMsgChecked( STATE_LOGIN_UI_CUSTOM_MSG["SLUCM_AUTO_LOGIN"] )
g_pCheckBoxAutoLogin:SetCustomMsgUnChecked( STATE_LOGIN_UI_CUSTOM_MSG["SLUCM_NOT_AUTO_LOGIN"] )
