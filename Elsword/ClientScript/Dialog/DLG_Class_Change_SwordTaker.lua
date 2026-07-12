-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Class_Change_SwordTaker" )
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


g_pPictureChange_Class_SwordTaker= g_pUIDialog:CreatePicture()
g_pStaticClass_Change1:AddPicture( g_pPictureChange_Class_SwordTaker)

g_pPictureChange_Class_SwordTaker:SetTex( "DLG_CC_Raven01.TGA", "CC_RAVEN01"  )

g_pPictureChange_Class_SwordTaker:SetPoint
{

		
	"LEFT_TOP		= D3DXVECTOR2(0+16,0+57)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureChange_Class_SwordTaker2= g_pUIDialog:CreatePicture()
g_pStaticClass_Change1:AddPicture( g_pPictureChange_Class_SwordTaker2)

g_pPictureChange_Class_SwordTaker2:SetTex( "DLG_CC_Raven02.TGA", "CC_RAVEN02"  )

g_pPictureChange_Class_SwordTaker2:SetPoint
{

		
	"LEFT_TOP		= D3DXVECTOR2(511+16,0+57)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureChange_Class_SwordTaker3= g_pUIDialog:CreatePicture()
g_pStaticClass_Change1:AddPicture( g_pPictureChange_Class_SwordTaker3)

g_pPictureChange_Class_SwordTaker3:SetTex( "DLG_CC_Raven05.TGA", "CC_RAVEN01_BOTTOM"  )

g_pPictureChange_Class_SwordTaker3:SetPoint
{

		
	"LEFT_TOP		= D3DXVECTOR2(0+16,510+83-50-7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureChange_Class_SwordTaker4= g_pUIDialog:CreatePicture()
g_pStaticClass_Change1:AddPicture( g_pPictureChange_Class_SwordTaker4)

g_pPictureChange_Class_SwordTaker4:SetTex( "DLG_CC_Raven05.TGA", "CC_RAVEN02_BOTTOM"  )

g_pPictureChange_Class_SwordTaker4:SetPoint
{

		
	"LEFT_TOP		= D3DXVECTOR2(511+15,510+83-50-7)",
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


