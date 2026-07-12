-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( UI_BINGO_CUSTOM_MSG["UBCM_REWARD_POPUP_OK"] )

-------------------------------------------------------------
g_pStatic_BackGround = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_BackGround )
g_pStatic_BackGround:SetName( "Bingo_BackGround" )

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_BackGround:AddPicture( g_pPicture_bg1 )
 ---------상품 11개 이하 획득 시 
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_06.TGA", "BG_POPUP_1" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(359,230)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
 ---------상품 12개 모두 획득 시 
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_BackGround:AddPicture( g_pPicture_bg1 )
g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture_Event_06.TGA", "BG_POPUP_2" )
g_pPicture_bg1:SetPoint
{  
	"LEFT_TOP		= D3DXVECTOR2(359,230)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--Exit 버튼
g_pButton_Exit = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Exit )
g_pButton_Exit:SetNormalTex( "DLG_UI_Common_Texture_Event_01.tga", "BT_BINGO_EXIT_NORMAL" )
g_pButton_Exit:SetOverTex( "DLG_UI_Common_Texture_Event_01.tga", "BT_BINGO_EXIT_OVER" )
g_pButton_Exit:SetDownTex( "DLG_UI_Common_Texture_Event_01.tga", "BT_BINGO_EXIT_OVER" )
g_pButton_Exit:SetNormalPoint
{	
	"LEFT_TOP		= D3DXVECTOR2(605,235)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Exit:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(605-3,235-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Exit:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(605-2,235-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Exit:SetCustomMsgMouseUp( UI_BINGO_CUSTOM_MSG["UBCM_REWARD_POPUP_OK"] )


--확인 버튼
g_pButton_OK = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_OK )
g_pButton_OK:SetNormalTex( "DLG_UI_Common_Texture_Event_02.tga", "BT_BINGO_PUSH_NORMAL" )
g_pButton_OK:SetOverTex( "DLG_UI_Common_Texture_Event_02.tga", "BT_BINGO_PUSH_OVER" )
g_pButton_OK:SetDownTex( "DLG_UI_Common_Texture_Event_02.tga", "BT_BINGO_PUSH_OVER" )
g_pButton_OK:SetNormalPoint
{	
	"LEFT_TOP		= D3DXVECTOR2(572,276)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_OK:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(572+3,276)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_OK:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(572+4,276+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_OK:SetCustomMsgMouseUp( UI_BINGO_CUSTOM_MSG["UBCM_REWARD_POPUP_OK"] )