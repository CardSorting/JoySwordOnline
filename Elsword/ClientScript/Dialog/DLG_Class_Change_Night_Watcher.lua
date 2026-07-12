-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Class_Change_NIGHT_WATCHER" )
g_pUIDialog:SetPos( -10,50 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_DIRECTING"] )
g_pUIDialog:SetCloseCustomUIEventID( CLASS_CHANGE_UI_CUSTOM_MSG["CCUCM_STATE_CHANGE_VILLAGE"] )


g_pUIDialog:AddDummyPos( D3DXVECTOR3( -220, -175, 200 ) )


g_pStaticClass_Change1_RNW = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticClass_Change1_RNW )
g_pStaticClass_Change1_RNW:SetName( "StaticClass_Change1_RNW" )


-------------전직팝업--------------


g_pPictureChange_Class_NightWatcher= g_pUIDialog:CreatePicture()
g_pStaticClass_Change1_RNW:AddPicture( g_pPictureChange_Class_NightWatcher)

g_pPictureChange_Class_NightWatcher:SetTex( "DLG_CC_Lena09.tga", "cc_Lena9"  )

g_pPictureChange_Class_NightWatcher:SetPoint
{

		
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureChange_Class_NightWatcher2= g_pUIDialog:CreatePicture()
g_pStaticClass_Change1_RNW:AddPicture( g_pPictureChange_Class_NightWatcher2)

g_pPictureChange_Class_NightWatcher2:SetTex( "DLG_CC_Lena10.tga", "cc_Lena10"  )

g_pPictureChange_Class_NightWatcher2:SetPoint
{

		
	"LEFT_TOP		= D3DXVECTOR2(512,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureChange_Class_NightWatcher3= g_pUIDialog:CreatePicture()
g_pStaticClass_Change1_RNW:AddPicture( g_pPictureChange_Class_NightWatcher3)

g_pPictureChange_Class_NightWatcher3:SetTex( "DLG_CC_Lena11.tga", "cc_Lena09_Bottom"  )

g_pPictureChange_Class_NightWatcher3:SetPoint
{

		
	"LEFT_TOP		= D3DXVECTOR2(19,511)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureChange_Class_NightWatcher4= g_pUIDialog:CreatePicture()
g_pStaticClass_Change1_RNW:AddPicture( g_pPictureChange_Class_NightWatcher4)

g_pPictureChange_Class_NightWatcher4:SetTex( "DLG_CC_Lena11.tga", "cc_Lena10_bottom"  )

g_pPictureChange_Class_NightWatcher4:SetPoint
{

		
	"LEFT_TOP		= D3DXVECTOR2(512,512-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pButtonClass_Change_X = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonClass_Change_X )
g_pButtonClass_Change_X:SetName( "ButtonClass_Change_X" )
g_pButtonClass_Change_X:SetNormalTex( "DLG_UI_Button17.tga", "CLOSE_WINDOW" )

g_pButtonClass_Change_X:SetOverTex( "DLG_UI_Button17.tga", "CLOSE_WINDOW_Over" )

g_pButtonClass_Change_X:SetDownTex( "DLG_UI_Button17.tga", "CLOSE_WINDOW_Over" )

g_pButtonClass_Change_X:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(885,610-3-60)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonClass_Change_X:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(885,610-3-60)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonClass_Change_X:SetDownPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(885+1,610+1-3-60)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonClass_Change_X:SetCustomMsgMouseUp( CLASS_CHANGE_UI_CUSTOM_MSG["CCUCM_STATE_CHANGE_VILLAGE"] )