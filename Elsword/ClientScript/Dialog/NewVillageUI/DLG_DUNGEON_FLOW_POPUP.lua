-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetPos(302,113)
g_pUIDialog:SetFront( true )


g_pStatic_DUNGEON = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_DUNGEON )
g_pStatic_DUNGEON:SetName( "DUNGEON" )


----------BG
g_pPicture_DUNGEON_Bg_LINE1 = g_pUIDialog:CreatePicture()
g_pStatic_DUNGEON:AddPicture( g_pPicture_DUNGEON_Bg_LINE1 )
g_pPicture_DUNGEON_Bg_LINE1:SetTex( "DLG_UI_Common_Texture68.tga", "POPUP_DUNGEON_FLOW" )
g_pPicture_DUNGEON_Bg_LINE1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-------------
---------닫기 버튼
g_pButton_X = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_X )
g_pButton_X:SetName( "X" )

g_pButton_X:SetNormalTex( "DLG_Common_New_Texture67.tga", "EXIT_NORMAL" )
g_pButton_X:SetOverTex( "DLG_Common_New_Texture67.tga", "EXIT_OVER" )
g_pButton_X:SetDownTex( "DLG_Common_New_Texture67.tga", "EXIT_OVER" )
g_pButton_X:SetNormalPoint
{
	"LEFT_TOP		= D3DXVECTOR2(382,20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_X:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(382,20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_X:SetDownPoint
{
	ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(382+1,20+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_X:SetCustomMsgMouseUp( GUIDE_UI_CUSTOM_MESSAGE["GUI_GUIDELINE_CLOSE"] )
