-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Class_Change_Combat_Ranger" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_DIRECTING"] )
g_pUIDialog:SetCloseCustomUIEventID( CLASS_CHANGE_UI_CUSTOM_MSG["CCUCM_STATE_CHANGE_VILLAGE"] )


g_pUIDialog:AddDummyPos( D3DXVECTOR3( -135, -180, 200 ) )


g_pStaticChange_Class_Combat_Ranger= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticChange_Class_Combat_Ranger)
g_pStaticChange_Class_Combat_Ranger:SetName( "StaticChange_Class_Combat_Ranger" )


g_pPictureChange_Class_Combat_Ranger= g_pUIDialog:CreatePicture()
g_pStaticChange_Class_Combat_Ranger:AddPicture( g_pPictureChange_Class_Combat_Ranger)

g_pPictureChange_Class_Combat_Ranger:SetTex( "DLG_CC_Lena03.TGA", "CC_Lena_03"  )

g_pPictureChange_Class_Combat_Ranger:SetPoint
{

		
	"LEFT_TOP		= D3DXVECTOR2(0+16,0+57)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureChange_Class_Combat_Ranger2= g_pUIDialog:CreatePicture()
g_pStaticChange_Class_Combat_Ranger:AddPicture( g_pPictureChange_Class_Combat_Ranger2)

g_pPictureChange_Class_Combat_Ranger2:SetTex( "DLG_CC_Lena04.TGA", "CC_Lena_04"  )

g_pPictureChange_Class_Combat_Ranger2:SetPoint
{

		
	"LEFT_TOP		= D3DXVECTOR2(511+16,0+57)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureChange_Class_Combat_Ranger3= g_pUIDialog:CreatePicture()
g_pStaticChange_Class_Combat_Ranger:AddPicture( g_pPictureChange_Class_Combat_Ranger3)

g_pPictureChange_Class_Combat_Ranger3:SetTex( "DLG_CC_Lena05.TGA", "CC_Lena_03_BOTTOM"  )

g_pPictureChange_Class_Combat_Ranger3:SetPoint
{

		
	"LEFT_TOP		= D3DXVECTOR2(0+16,510+83-50-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureChange_Class_Combat_Ranger4= g_pUIDialog:CreatePicture()
g_pStaticChange_Class_Combat_Ranger:AddPicture( g_pPictureChange_Class_Combat_Ranger4)

g_pPictureChange_Class_Combat_Ranger4:SetTex( "DLG_CC_Lena05.TGA", "CC_Lena_04_BOTTOM"  )

g_pPictureChange_Class_Combat_Ranger4:SetPoint
{

		
	"LEFT_TOP		= D3DXVECTOR2(510+16+1,510+83-50-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pButtonClass_Change_Combat_Ranger_X = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonClass_Change_Combat_Ranger_X )
g_pButtonClass_Change_Combat_Ranger_X:SetName( "ButtonClass_Change2_X" )
g_pButtonClass_Change_Combat_Ranger_X:SetNormalTex( "DLG_UI_Button17.tga", "CLOSE_WINDOW" )

g_pButtonClass_Change_Combat_Ranger_X:SetOverTex( "DLG_UI_Button17.tga", "CLOSE_WINDOW_Over" )

g_pButtonClass_Change_Combat_Ranger_X:SetDownTex( "DLG_UI_Button17.tga", "CLOSE_WINDOW_Over" )

g_pButtonClass_Change_Combat_Ranger_X:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(885,610-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonClass_Change_Combat_Ranger_X:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(885,610-3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonClass_Change_Combat_Ranger_X:SetDownPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(885+1,610+1-3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonClass_Change_Combat_Ranger_X:SetCustomMsgMouseUp( CLASS_CHANGE_UI_CUSTOM_MSG["CCUCM_STATE_CHANGE_VILLAGE"] )
