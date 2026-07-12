-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Class_Change_Code_Nemesis" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_DIRECTING"] )
g_pUIDialog:SetCloseCustomUIEventID( CLASS_CHANGE_UI_CUSTOM_MSG["CCUCM_STATE_CHANGE_VILLAGE"] )


g_pUIDialog:AddDummyPos( D3DXVECTOR3( -135, -180, 200 ) )
g_pStaticChange_Class_CODE_NEMESIS= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticChange_Class_CODE_NEMESIS)
g_pStaticChange_Class_CODE_NEMESIS:SetName( "StaticChange_Class_CODE_NEMESIS" )


g_pPictureChange_Class_CODE_NEMESIS= g_pUIDialog:CreatePicture()
g_pStaticChange_Class_CODE_NEMESIS:AddPicture( g_pPictureChange_Class_CODE_NEMESIS)

g_pPictureChange_Class_CODE_NEMESIS:SetTex( "DLG_CC_EVE_2ND_01.tga", "CC_2ND_EVE01"  )

g_pPictureChange_Class_CODE_NEMESIS:SetPoint
{

		
	"LEFT_TOP		= D3DXVECTOR2(0+16,57)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureChange_Class_CODE_NEMESIS2= g_pUIDialog:CreatePicture()
g_pStaticChange_Class_CODE_NEMESIS:AddPicture( g_pPictureChange_Class_CODE_NEMESIS2)

g_pPictureChange_Class_CODE_NEMESIS2:SetTex( "DLG_CC_EVE_2ND_02.tga", "CC_2ND_EVE02"  )

g_pPictureChange_Class_CODE_NEMESIS2:SetPoint
{

		
	"LEFT_TOP		= D3DXVECTOR2(511+16,57)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureChange_Class_CODE_NEMESIS3= g_pUIDialog:CreatePicture()
g_pStaticChange_Class_CODE_NEMESIS:AddPicture( g_pPictureChange_Class_CODE_NEMESIS3)

g_pPictureChange_Class_CODE_NEMESIS3:SetTex( "DLG_CC_EVE_2ND_05.tga", "CC_2ND_EVE01_BOTTOM"  )

g_pPictureChange_Class_CODE_NEMESIS3:SetPoint
{

		
	"LEFT_TOP		= D3DXVECTOR2(16,511+82-51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureChange_Class_CODE_NEMESIS4= g_pUIDialog:CreatePicture()
g_pStaticChange_Class_CODE_NEMESIS:AddPicture( g_pPictureChange_Class_CODE_NEMESIS4)

g_pPictureChange_Class_CODE_NEMESIS4:SetTex( "DLG_CC_EVE_2ND_05.tga", "CC_2ND_EVE02_BOTTOM"  )

g_pPictureChange_Class_CODE_NEMESIS4:SetPoint
{

		
	"LEFT_TOP		= D3DXVECTOR2(510+17,511+82-51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}








g_pButtonClass_Change_Wind_Sneaker_X = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonClass_Change_Wind_Sneaker_X )
g_pButtonClass_Change_Wind_Sneaker_X:SetName( "ButtonClass_Change2_X" )
g_pButtonClass_Change_Wind_Sneaker_X:SetNormalTex( "DLG_UI_Button17.tga", "CLOSE_WINDOW" )

g_pButtonClass_Change_Wind_Sneaker_X:SetOverTex( "DLG_UI_Button17.tga", "CLOSE_WINDOW_Over" )

g_pButtonClass_Change_Wind_Sneaker_X:SetDownTex( "DLG_UI_Button17.tga", "CLOSE_WINDOW_Over" )

g_pButtonClass_Change_Wind_Sneaker_X:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(885,607)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonClass_Change_Wind_Sneaker_X:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(885,607)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonClass_Change_Wind_Sneaker_X:SetDownPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(885+1,607+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonClass_Change_Wind_Sneaker_X:SetCustomMsgMouseUp( CLASS_CHANGE_UI_CUSTOM_MSG["CCUCM_STATE_CHANGE_VILLAGE"] )
