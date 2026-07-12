-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetPos( 0, 325 )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )


g_pStatic_POPUP_SHUTDOWN = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_POPUP_SHUTDOWN )
g_pStatic_POPUP_SHUTDOWN:SetName( "SHUTDOWN" )


-------------
----------BG
g_pPicture_DUNGEON_Bg_LINE1 = g_pUIDialog:CreatePicture()
g_pStatic_POPUP_SHUTDOWN:AddPicture( g_pPicture_DUNGEON_Bg_LINE1 )
g_pPicture_DUNGEON_Bg_LINE1:SetTex( "DLG_UI_Common_Texture75.tga", "Bg_Shutdown" )
g_pPicture_DUNGEON_Bg_LINE1:SetPoint
{
 USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(316,148)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----------String
g_pPicture_DUNGEON_Bg_SHUTDOWN = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pPicture_DUNGEON_Bg_SHUTDOWN )
g_pPicture_DUNGEON_Bg_SHUTDOWN:SetName( "SHUTDOWN_Text" )

g_pPicture_DUNGEON_Bg_SHUTDOWN:AddString
{
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(25, 62)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}----
-------------

