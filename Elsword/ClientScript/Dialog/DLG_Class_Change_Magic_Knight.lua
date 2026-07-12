-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetName( "DLG_Class_Change_Magic_Knight.lua" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_DIRECTING"] )
g_pUIDialog:SetCloseCustomUIEventID( CLASS_CHANGE_UI_CUSTOM_MSG["CCUCM_STATE_CHANGE_VILLAGE"] )



g_pUIDialog:AddDummyPos( D3DXVECTOR3( -135, -180, 200 ) )



g_pStaticClass_Change2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticClass_Change2 )
g_pStaticClass_Change2:SetName( "StaticClass_Change2" )






-------------전직팍업--------------
g_pPictureChange_Class_Magic_Knight= g_pUIDialog:CreatePicture()
g_pStaticClass_Change2:AddPicture( g_pPictureChange_Class_Magic_Knight)

g_pPictureChange_Class_Magic_Knight:SetTex( "DLG_CC_Elsword03.tga", "CC_ELSWORD03"  )

g_pPictureChange_Class_Magic_Knight:SetPoint
{

		
	"LEFT_TOP		= D3DXVECTOR2(0+16,0+57)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureChange_Class_Magic_Knight2= g_pUIDialog:CreatePicture()
g_pStaticClass_Change2:AddPicture( g_pPictureChange_Class_Magic_Knight2)

g_pPictureChange_Class_Magic_Knight2:SetTex( "DLG_CC_Elsword04.tga", "CC_ELSWORD04"  )

g_pPictureChange_Class_Magic_Knight2:SetPoint
{

		
	"LEFT_TOP		= D3DXVECTOR2(511+16,0+57)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureChange_Class_Magic_Knight3= g_pUIDialog:CreatePicture()
g_pStaticClass_Change2:AddPicture( g_pPictureChange_Class_Magic_Knight3)

g_pPictureChange_Class_Magic_Knight3:SetTex( "DLG_CC_Elsword05.tga", "CC_ELSWORD03_bottom"  )

g_pPictureChange_Class_Magic_Knight3:SetPoint
{

		
	"LEFT_TOP		= D3DXVECTOR2(0+16,510+83-50-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureChange_Class_Magic_Knight4= g_pUIDialog:CreatePicture()
g_pStaticClass_Change2:AddPicture( g_pPictureChange_Class_Magic_Knight4)

g_pPictureChange_Class_Magic_Knight4:SetTex( "DLG_CC_Elsword05.tga", "CC_ELSWORD04_bottom"  )

g_pPictureChange_Class_Magic_Knight4:SetPoint
{

		
	"LEFT_TOP		= D3DXVECTOR2(510+17,510+83-50-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}









g_pButtonClass_Change2_X = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonClass_Change2_X )
g_pButtonClass_Change2_X:SetName( "ButtonClass_Change2_X" )
g_pButtonClass_Change2_X:SetNormalTex( "DLG_UI_Button17.tga", "CLOSE_WINDOW" )

g_pButtonClass_Change2_X:SetOverTex( "DLG_UI_Button17.tga", "CLOSE_WINDOW_OVER" )

g_pButtonClass_Change2_X:SetDownTex( "DLG_UI_Button17.tga", "CLOSE_WINDOW_OVER" )

g_pButtonClass_Change2_X:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(885,610-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonClass_Change2_X:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(885,610-3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonClass_Change2_X:SetDownPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(885+1,610+1-3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonClass_Change2_X:SetCustomMsgMouseUp( CLASS_CHANGE_UI_CUSTOM_MSG["CCUCM_STATE_CHANGE_VILLAGE"] )
