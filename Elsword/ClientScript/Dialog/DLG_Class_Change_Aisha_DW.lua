-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Class_Change_DIMENSION_WITCH" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_DIRECTING"] )
g_pUIDialog:SetCloseCustomUIEventID( CLASS_CHANGE_UI_CUSTOM_MSG["CCUCM_STATE_CHANGE_VILLAGE"] )


g_pUIDialog:AddDummyPos( D3DXVECTOR3( -135, -180, 200 ) )


g_pStaticChange_Class_DIMENSION_WITCH= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticChange_Class_DIMENSION_WITCH)
g_pStaticChange_Class_DIMENSION_WITCH:SetName( "g_pStaticChange_Class_DIMENSION_WITCH" )


g_pPictureChange_Class_DIMENSION_WITCH= g_pUIDialog:CreatePicture()
g_pStaticChange_Class_DIMENSION_WITCH:AddPicture( g_pPictureChange_Class_DIMENSION_WITCH)

g_pPictureChange_Class_DIMENSION_WITCH:SetTex( "DLG_CC_AISHA_2ND_06.tga", "DLG_CC_AISHA_2ND_06"  )

g_pPictureChange_Class_DIMENSION_WITCH:SetPoint
{

		
	"LEFT_TOP		= D3DXVECTOR2(0+16,0+57)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureChange_Class_DIMENSION_WITCH2= g_pUIDialog:CreatePicture()
g_pStaticChange_Class_DIMENSION_WITCH:AddPicture( g_pPictureChange_Class_DIMENSION_WITCH2)

g_pPictureChange_Class_DIMENSION_WITCH2:SetTex( "DLG_CC_AISHA_2ND_07.tga", "DLG_CC_AISHA_2ND_07"  )

g_pPictureChange_Class_DIMENSION_WITCH2:SetPoint
{

		
	"LEFT_TOP		= D3DXVECTOR2(511+16,57)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureChange_Class_DIMENSION_WITCH3= g_pUIDialog:CreatePicture()
g_pStaticChange_Class_DIMENSION_WITCH:AddPicture( g_pPictureChange_Class_DIMENSION_WITCH3)

g_pPictureChange_Class_DIMENSION_WITCH3:SetTex( "DLG_CC_Aisha08.tga", "cc_2nd_aisha03_bottom"  )

g_pPictureChange_Class_DIMENSION_WITCH3:SetPoint
{

		
	"LEFT_TOP		= D3DXVECTOR2(0+16,510+83+2-56)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureChange_Class_DIMENSION_WITCH4= g_pUIDialog:CreatePicture()
g_pStaticChange_Class_DIMENSION_WITCH:AddPicture( g_pPictureChange_Class_DIMENSION_WITCH4)

g_pPictureChange_Class_DIMENSION_WITCH4:SetTex( "DLG_CC_Aisha08.tga", "cc_2nd_aisha04_bottom"  )

g_pPictureChange_Class_DIMENSION_WITCH4:SetPoint
{

		
	"LEFT_TOP		= D3DXVECTOR2(510+17,511+82+2-55)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}








g_pButtonClass_Change_Elemental_Master_X = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonClass_Change_Elemental_Master_X )
g_pButtonClass_Change_Elemental_Master_X:SetName( "ButtonClass_Change2_X" )
g_pButtonClass_Change_Elemental_Master_X:SetNormalTex( "DLG_UI_Button17.tga", "CLOSE_WINDOW" )

g_pButtonClass_Change_Elemental_Master_X:SetOverTex( "DLG_UI_Button17.tga", "CLOSE_WINDOW_Over" )

g_pButtonClass_Change_Elemental_Master_X:SetDownTex( "DLG_UI_Button17.tga", "CLOSE_WINDOW_Over" )

g_pButtonClass_Change_Elemental_Master_X:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(885,607)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonClass_Change_Elemental_Master_X:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(885,607)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonClass_Change_Elemental_Master_X:SetDownPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(885+1,607+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonClass_Change_Elemental_Master_X:SetCustomMsgMouseUp( CLASS_CHANGE_UI_CUSTOM_MSG["CCUCM_STATE_CHANGE_VILLAGE"] )
