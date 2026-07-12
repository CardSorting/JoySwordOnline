-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Class_Change_Trapping_Ranger" )
g_pUIDialog:SetPos( 0,57 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_DIRECTING"] )
g_pUIDialog:SetCloseCustomUIEventID( CLASS_CHANGE_UI_CUSTOM_MSG["CCUCM_STATE_CHANGE_VILLAGE"] )


g_pUIDialog:AddDummyPos( D3DXVECTOR3( -135, -180, 200 ) )




g_pStaticClass_Change_TrappingRanger = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticClass_Change_TrappingRanger )
g_pStaticClass_Change_TrappingRanger:SetName( "StaticClass_Change_TrappingRanger" )






-------------전직팍업--------------


g_pPictureChange_Class_TrappingRanger= g_pUIDialog:CreatePicture()
g_pStaticClass_Change_TrappingRanger:AddPicture( g_pPictureChange_Class_TrappingRanger)

g_pPictureChange_Class_TrappingRanger:SetTex( "DLG_CC_Lena06.tga", "cc_Lena06"  )

g_pPictureChange_Class_TrappingRanger:SetPoint
{

		
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureChange_Class_TrappingRanger2= g_pUIDialog:CreatePicture()
g_pStaticClass_Change_TrappingRanger:AddPicture( g_pPictureChange_Class_TrappingRanger2)

g_pPictureChange_Class_TrappingRanger2:SetTex( "DLG_CC_Lena07.tga", "cc_Lena07"  )

g_pPictureChange_Class_TrappingRanger2:SetPoint
{

		
	"LEFT_TOP		= D3DXVECTOR2(512,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureChange_Class_TrappingRanger3= g_pUIDialog:CreatePicture()
g_pStaticClass_Change_TrappingRanger:AddPicture( g_pPictureChange_Class_TrappingRanger3)

g_pPictureChange_Class_TrappingRanger3:SetTex( "DLG_CC_Lena08.tga", "cc_Lena06_Bottom"  )

g_pPictureChange_Class_TrappingRanger3:SetPoint
{

		
	"LEFT_TOP		= D3DXVECTOR2(0,511)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureChange_Class_TrappingRanger4= g_pUIDialog:CreatePicture()
g_pStaticClass_Change_TrappingRanger:AddPicture( g_pPictureChange_Class_TrappingRanger4)

g_pPictureChange_Class_TrappingRanger4:SetTex( "DLG_CC_Lena08.tga", "cc_Lena07_bottom"  )

g_pPictureChange_Class_TrappingRanger4:SetPoint
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

