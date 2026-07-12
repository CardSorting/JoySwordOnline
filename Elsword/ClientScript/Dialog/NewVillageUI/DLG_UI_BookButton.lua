-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetName( "DLG_PlayGuide_Book" )
g_pUIDialog:SetPos( 325+25+561,346+195-15 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL_1"] )

---가이드북 버튼--
g_pButtonBook = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonBook )
g_pButtonBook:SetName( "ButtonBook" )
g_pButtonBook:SetNormalTex( "DLG_UI_BUTTON12.tga", "Book_NORMAL" )

g_pButtonBook:SetOverTex( "DLG_UI_BUTTON12.tga", "Book_OVER" )

g_pButtonBook:SetDownTex( "DLG_UI_BUTTON12.tga", "Book_OVER" )

g_pButtonBook:SetNormalPoint
{
    ADD_SIZE_X = -30,
    ADD_SIZE_Y = -50,
	
    "LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBook:SetOverPoint
{
    ADD_SIZE_X = -30,
    ADD_SIZE_Y = -50,


	"LEFT_TOP		= D3DXVECTOR2(-5,-5)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBook:SetDownPoint
{
    ADD_SIZE_X = -32,
    ADD_SIZE_Y = -52,

 	"LEFT_TOP		= D3DXVECTOR2(-5+1,-5+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBook:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_OPEN_ELLIOS_GUIDE"] )
g_pButtonBook:SetGuideDesc( STR_ID_2724 )
g_pButtonBook:SetGuideDescAbsolutePos( D3DXVECTOR2(953, 519) )
