-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Class_Change_DIMENSION_WITCH" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_DIRECTING"] )
g_pUIDialog:SetCloseCustomUIEventID( CLASS_CHANGE_UI_CUSTOM_MSG["CCUCM_STATE_CHANGE_VILLAGE"] )


--g_pUIDialog:AddDummyPos( D3DXVECTOR3( 135, 180, 200 ) )


g_pStaticWindow= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticWindow)
g_pStaticWindow:SetName( "g_pStaticWindow" )

--830
--470
-----BG
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticWindow:AddPicture( g_pPicture_BG1 )
g_pPicture_BG1:SetTex( "DLG_Advertisement.TGA", "Advertisement" )
g_pPicture_BG1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(97,149)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pButtonClose = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonClose )
g_pButtonClose:SetName( "ButtonClose" )
g_pButtonClose:SetNormalTex( "DLG_UI_Button17.tga", "CLOSE_WINDOW" )

g_pButtonClose:SetOverTex( "DLG_UI_Button17.tga", "CLOSE_WINDOW_Over" )

g_pButtonClose:SetDownTex( "DLG_UI_Button17.tga", "CLOSE_WINDOW_Over" )

g_pButtonClose:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(820-1,580)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonClose:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(820,580)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonClose:SetDownPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(820+1,580+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonClose:SetCustomMsgMouseUp( STATE_UI_CUSTOM_MSG["SUCM_CLOSE_ADVERTISEMENT"] )
