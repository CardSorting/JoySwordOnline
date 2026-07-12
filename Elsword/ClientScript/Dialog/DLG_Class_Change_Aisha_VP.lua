-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Class_Change_Combat_Ranger" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_DIRECTING"] )
g_pUIDialog:SetCloseCustomUIEventID( CLASS_CHANGE_UI_CUSTOM_MSG["CCUCM_STATE_CHANGE_VILLAGE"] )


g_pUIDialog:AddDummyPos( D3DXVECTOR3( -135, -180, 200 ) )


g_pStaticChange_Class_Void_Princess= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticChange_Class_Void_Princess)
g_pStaticChange_Class_Void_Princess:SetName( "StaticChange_Class_Void_Princess" )


g_pPictureChange_Class_Void_Princess= g_pUIDialog:CreatePicture()
g_pStaticChange_Class_Void_Princess:AddPicture( g_pPictureChange_Class_Void_Princess)

g_pPictureChange_Class_Void_Princess:SetTex( "DLG_CC_AISHA_2ND_03.tga", "CC_2ND_AISHA03"  )

g_pPictureChange_Class_Void_Princess:SetPoint
{

		
	"LEFT_TOP		= D3DXVECTOR2(0+16,57)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureChange_Class_Void_Princess2= g_pUIDialog:CreatePicture()
g_pStaticChange_Class_Void_Princess:AddPicture( g_pPictureChange_Class_Void_Princess2)

g_pPictureChange_Class_Void_Princess2:SetTex( "DLG_CC_AISHA_2ND_04.tga", "CC_2ND_AISHA04"  )

g_pPictureChange_Class_Void_Princess2:SetPoint
{

		
	"LEFT_TOP		= D3DXVECTOR2(511+16,57)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureChange_Class_Void_Princess3= g_pUIDialog:CreatePicture()
g_pStaticChange_Class_Void_Princess:AddPicture( g_pPictureChange_Class_Void_Princess3)

g_pPictureChange_Class_Void_Princess3:SetTex( "DLG_CC_AISHA_2ND_05.tga", "CC_2ND_AISHA03_BOTTOM"  )

g_pPictureChange_Class_Void_Princess3:SetPoint
{

		
	"LEFT_TOP		= D3DXVECTOR2(0+16,510+83+2-53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureChange_Class_Void_Princess4= g_pUIDialog:CreatePicture()
g_pStaticChange_Class_Void_Princess:AddPicture( g_pPictureChange_Class_Void_Princess4)

g_pPictureChange_Class_Void_Princess4:SetTex( "DLG_CC_AISHA_2ND_05.tga", "CC_2ND_AISHA04_BOTTOM"  )

g_pPictureChange_Class_Void_Princess4:SetPoint
{

		
	"LEFT_TOP		= D3DXVECTOR2(510+17,511+82+2-53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}








g_pButtonClass_Change_Void_Princess_X = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonClass_Change_Void_Princess_X )
g_pButtonClass_Change_Void_Princess_X:SetName( "ButtonClass_Change2_X" )
g_pButtonClass_Change_Void_Princess_X:SetNormalTex( "DLG_UI_Button17.tga", "CLOSE_WINDOW" )

g_pButtonClass_Change_Void_Princess_X:SetOverTex( "DLG_UI_Button17.tga", "CLOSE_WINDOW_Over" )

g_pButtonClass_Change_Void_Princess_X:SetDownTex( "DLG_UI_Button17.tga", "CLOSE_WINDOW_Over" )

g_pButtonClass_Change_Void_Princess_X:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(885,607)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonClass_Change_Void_Princess_X:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(885,607)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonClass_Change_Void_Princess_X:SetDownPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(885+1,607+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonClass_Change_Void_Princess_X:SetCustomMsgMouseUp( CLASS_CHANGE_UI_CUSTOM_MSG["CCUCM_STATE_CHANGE_VILLAGE"] )
