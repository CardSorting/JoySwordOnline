-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
--g_pUIDialog:SetCloseCustomUIEventID( UI_BINGO_CUSTOM_MSG["UBCM_BUTTON_MINIMIZE"] )

---------아리엘 BG
g_pStatic_Expand = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Expand )
g_pStatic_Expand:SetName( "Bingo_Expand" )
g_pStatic_Expand:SetShow(false)

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_Expand:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_01.TGA", "BG_BINGO_MINIPOPUP" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(777,2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--Exit 버튼
g_pButton_Exit = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Exit )
g_pButton_Exit:SetName( "Bingo_Expand_Exit" )
g_pButton_Exit:SetNormalTex( "DLG_UI_Common_Texture_Event_01.tga", "BT_BINGO_EXIT_NORMAL" )
g_pButton_Exit:SetOverTex( "DLG_UI_Common_Texture_Event_01.tga", "BT_BINGO_EXIT_OVER" )
g_pButton_Exit:SetDownTex( "DLG_UI_Common_Texture_Event_01.tga", "BT_BINGO_EXIT_OVER" )
g_pButton_Exit:SetShow(false)
g_pButton_Exit:SetNormalPoint
{	
	"LEFT_TOP		= D3DXVECTOR2(777+204,2+49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Exit:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(777+204-3,2+49-2-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Exit:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(777+204-2,2+49-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Exit:SetCustomMsgMouseUp( UI_BINGO_CUSTOM_MSG["UBCM_BUTTON_MINIMIZE"] )

--빙고판 오픈
g_pButton_Open = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Open )
g_pButton_Open:SetName( "Bingo_Open" )
g_pButton_Open:SetNormalTex( "DLG_UI_Common_Texture_Event_01.tga", "BT_BINGO_JOIN_NORMAL" )
g_pButton_Open:SetOverTex( "DLG_UI_Common_Texture_Event_01.tga", "BT_BINGO_JOIN_OVER" )
g_pButton_Open:SetDownTex( "DLG_UI_Common_Texture_Event_01.tga", "BT_BINGO_JOIN_OVER" )
g_pButton_Open:SetShow(false)
g_pButton_Open:SetNormalPoint
{	
	"LEFT_TOP		= D3DXVECTOR2(777+67,2+243)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Open:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(777+67,2+243)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Open:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(777+67+1,2+243+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Open:SetCustomMsgMouseUp( UI_BINGO_CUSTOM_MSG["UBCM_OPEN"] )



--빙고 버튼
g_pButton_Minimize = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Minimize )
g_pButton_Minimize:SetName( "Bingo_Minimize" )
g_pButton_Minimize:SetNormalTex( "DLG_UI_Common_Texture_Event_01.tga", "BT_BINGO_NORMAL" )
g_pButton_Minimize:SetOverTex( "DLG_UI_Common_Texture_Event_01.tga", "BT_BINGO_OVER" )
g_pButton_Minimize:SetDownTex( "DLG_UI_Common_Texture_Event_01.tga", "BT_BINGO_OVER" )
g_pButton_Minimize:SetNormalPoint
{	
	"LEFT_TOP		= D3DXVECTOR2(923+14,1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Minimize:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(923+14,1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Minimize:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(923+14+1,1+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Minimize:SetCustomMsgMouseUp( UI_BINGO_CUSTOM_MSG["UBCM_BUTTON_EXPAND"] )