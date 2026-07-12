-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Class_Change_Guide" )
g_pUIDialog:SetPos( 248,126 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( LV_UP_EVENT_MGR_CUSTOM_UI_MSG["LUEMCUM_CHANGE_CLASS_GUIDE_FIRST"] )


g_pStatic_class_change_window_ver2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_class_change_window_ver2 )
g_pStatic_class_change_window_ver2:SetName( "g_pStatic_class_change_window_ver2" )

--------------------------------------------------------------------------------------------------------------------
g_pPictureWindow1 = g_pUIDialog:CreatePicture()
g_pStatic_class_change_window_ver2:AddPicture( g_pPictureWindow1 )
g_pPictureWindow1:SetTex( "DLG_CC_Guide_ELESIS.tga", "DLG_CC_Guide_ELESIS" )
g_pPictureWindow1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pcancel_Button = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pcancel_Button )
g_pcancel_Button:SetName( "g_pcancel_Button" )
g_pcancel_Button:SetNormalTex( "DLG_UI_Button17.tga", "Close_Window" )
g_pcancel_Button:SetOverTex( "DLG_UI_Button17.tga", "Close_Window_Over" )
g_pcancel_Button:SetDownTex( "DLG_UI_Button17.tga", "Close_Window_Over" )
g_pcancel_Button:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(588+6-180,370-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pcancel_Button:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(588-180+6,370-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pcancel_Button:SetDownPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(588-180+7,370+1-40)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pcancel_Button:SetCustomMsgMouseUp( LV_UP_EVENT_MGR_CUSTOM_UI_MSG["LUEMCUM_CHANGE_CLASS_GUIDE_FIRST"] )