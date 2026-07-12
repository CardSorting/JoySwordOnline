-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Class_Change_WeaponTaker" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_DIRECTING"] )
g_pUIDialog:SetCloseCustomUIEventID( CLASS_CHANGE_UI_CUSTOM_MSG["CCUCM_STATE_CHANGE_VILLAGE"] )


g_pUIDialog:AddDummyPos( D3DXVECTOR3( -135, -180, 200 ) )


g_pStaticClass_Change1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticClass_Change1 )
g_pStaticClass_Change1:SetName( "StaticClass_Change1" )






-------------전직팍업--------------


g_pPictureChange_Class_VeteranCommander= g_pUIDialog:CreatePicture()
g_pStaticClass_Change1:AddPicture( g_pPictureChange_Class_VeteranCommander)

g_pPictureChange_Class_VeteranCommander:SetTex( "DLG_CC_Raven09.tga", "cc_Raven09"  )

g_pPictureChange_Class_VeteranCommander:SetPoint
{

		
	"LEFT_TOP		= D3DXVECTOR2(0+16,0+57)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureChange_Class_VeteranCommander2= g_pUIDialog:CreatePicture()
g_pStaticClass_Change1:AddPicture( g_pPictureChange_Class_VeteranCommander2)

g_pPictureChange_Class_VeteranCommander2:SetTex( "DLG_CC_Raven10.tga", "cc_Raven10"  )

g_pPictureChange_Class_VeteranCommander2:SetPoint
{

		
	"LEFT_TOP		= D3DXVECTOR2(512+16,0+57)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureChange_Class_VeteranCommander3= g_pUIDialog:CreatePicture()
g_pStaticClass_Change1:AddPicture( g_pPictureChange_Class_VeteranCommander3)

g_pPictureChange_Class_VeteranCommander3:SetTex( "DLG_CC_Raven11.tga", "cc_Raven09_Bottom"  )

g_pPictureChange_Class_VeteranCommander3:SetPoint
{

		
	"LEFT_TOP		= D3DXVECTOR2(0+16,569-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureChange_Class_VeteranCommander4= g_pUIDialog:CreatePicture()
g_pStaticClass_Change1:AddPicture( g_pPictureChange_Class_VeteranCommander4)

g_pPictureChange_Class_VeteranCommander4:SetTex( "DLG_CC_Raven11.tga", "cc_Raven10_Bottom"  )

g_pPictureChange_Class_VeteranCommander4:SetPoint
{

		
	"LEFT_TOP		= D3DXVECTOR2(512+16,569-1)",
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


 	"LEFT_TOP		= D3DXVECTOR2(885+23,610-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonClass_Change_X:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(885+23,610-3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonClass_Change_X:SetDownPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(885+1+23,610+1-3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonClass_Change_X:SetCustomMsgMouseUp( CLASS_CHANGE_UI_CUSTOM_MSG["CCUCM_STATE_CHANGE_VILLAGE"] )