-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Welcome_Come_Back_User" )
g_pUIDialog:SetPos( 180, 130 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_DIRECTING"] )
g_pUIDialog:SetCloseCustomUIEventID( STATE_COMBE_BACK_UI_CUSTOM_MSG["SCBUCM_WELCOME_OK"] )

g_pStatic_Welcome_Come_Back_User = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Welcome_Come_Back_User )
g_pStatic_Welcome_Come_Back_User:SetName( "popup_small" )

----------휴면복귀 팝업_작은거
g_pPicture_Welcome_Come_Back_User_left = g_pUIDialog:CreatePicture()
g_pStatic_Welcome_Come_Back_User:AddPicture( g_pPicture_Welcome_Come_Back_User_left )
g_pPicture_Welcome_Come_Back_User_left:SetTex( "DLG_UI_Common_Texture54.TGA", "popup_small_left" )
g_pPicture_Welcome_Come_Back_User_left:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----------휴면복귀 팝업_작은거_오른쪽
g_pPicture_Welcome_Come_Back_User_right = g_pUIDialog:CreatePicture()
g_pStatic_Welcome_Come_Back_User:AddPicture( g_pPicture_Welcome_Come_Back_User_right )
g_pPicture_Welcome_Come_Back_User_right:SetTex( "DLG_UI_Common_Texture57.TGA", "popup_small_right" )
g_pPicture_Welcome_Come_Back_User_right:SetPoint
{
    "LEFT_TOP		= D3DXVECTOR2(0+510+1,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---------------------확인 버튼
g_pButton_xicon = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_xicon )
g_pButton_xicon:SetName( "Button_option" )
g_pButton_xicon:SetNormalTex( "DLG_ui_button20.tga", "ok_deco_button_normal" )
g_pButton_xicon:SetOverTex( "DLG_ui_button20.tga", "ok_deco_button_over" )
g_pButton_xicon:SetDownTex( "DLG_ui_button20.tga", "ok_deco_button_over" )

g_pButton_xicon:SetNormalPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0+182+100,0+299+142)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_xicon:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0+182+100,0+299+142)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_xicon:SetDownPoint
{
	ADD_SIZE_X = -3,
	ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(0+182+1+100,0+299+1+142)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_xicon:SetCustomMsgMouseUp( STATE_COMBE_BACK_UI_CUSTOM_MSG["SCBUCM_WELCOME_OK"] )