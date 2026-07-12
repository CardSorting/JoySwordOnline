

-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetName( "DLG_Class_Change_Lord_Knight" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_DIRECTING"] )
g_pUIDialog:SetCloseCustomUIEventID( CLASS_CHANGE_UI_CUSTOM_MSG["CCUCM_STATE_CHANGE_VILLAGE"] )


g_pUIDialog:AddDummyPos( D3DXVECTOR3( -135, -180, 200 ) )







g_pStaticClass_Change_LK = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticClass_Change_LK )
g_pStaticClass_Change_LK:SetName( "StaticClass_Change_LK" )






------------- 로드 나이트 --------------
g_pPictureChange_Class_LK = g_pUIDialog:CreatePicture()
g_pStaticClass_Change_LK:AddPicture( g_pPictureChange_Class_LK)

g_pPictureChange_Class_LK:SetTex( "DLG_CC_ELSWORD_2ND_03.tga", "CC_2ND_ELSWORD03"  )

g_pPictureChange_Class_LK:SetPoint
{

		
	"LEFT_TOP		= D3DXVECTOR2(16,57)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureChange_Class_LK = g_pUIDialog:CreatePicture()
g_pStaticClass_Change_LK:AddPicture( g_pPictureChange_Class_LK)

g_pPictureChange_Class_LK:SetTex( "DLG_CC_ELSWORD_2ND_04.tga", "CC_2ND_ELSWORD04"  )

g_pPictureChange_Class_LK:SetPoint
{

		
	"LEFT_TOP		= D3DXVECTOR2(527,57)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureChange_Class_LK = g_pUIDialog:CreatePicture()
g_pStaticClass_Change_LK:AddPicture( g_pPictureChange_Class_LK)

g_pPictureChange_Class_LK:SetTex( "DLG_CC_ELSWORD_2ND_05.tga", "CC_2ND_ELS03_BOTTOM"  )

g_pPictureChange_Class_LK:SetPoint
{

		
	"LEFT_TOP		= D3DXVECTOR2(16,595-53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureChange_Class_LK = g_pUIDialog:CreatePicture()
g_pStaticClass_Change_LK:AddPicture( g_pPictureChange_Class_LK)

g_pPictureChange_Class_LK:SetTex( "DLG_CC_ELSWORD_2ND_05.tga", "CC_2ND_ELS04_BOTTOM"  )

g_pPictureChange_Class_LK:SetPoint
{

		
	"LEFT_TOP		= D3DXVECTOR2(527,595-54)",
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


 	"LEFT_TOP		= D3DXVECTOR2(885,607)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonClass_Change_X:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(885,607)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonClass_Change_X:SetDownPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(885+1,607+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonClass_Change_X:SetCustomMsgMouseUp( CLASS_CHANGE_UI_CUSTOM_MSG["CCUCM_STATE_CHANGE_VILLAGE"] )



