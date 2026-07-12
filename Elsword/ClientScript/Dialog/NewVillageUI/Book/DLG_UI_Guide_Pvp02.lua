-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetPos( 5,5 )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )

g_pStaticGuide_Pvp = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGuide_Pvp )
g_pStaticGuide_Pvp:SetName( "Guide_Pvp2" )




g_pPicturePvp03 = g_pUIDialog:CreatePicture()
g_pStaticGuide_Pvp:AddPicture( g_pPicturePvp03 )

g_pPicturePvp03:SetTex( "DLG_UI_Guide_Pvp03.TGA", "PVP03" )

g_pPicturePvp03:SetPoint
{
    ADD_SIZE_Y = 48,
	"LEFT_TOP		= D3DXVECTOR2(80,51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticNum = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNum )
g_pStaticNum:SetName( "page7" )

g_pStaticNum:AddString
{
	-- MSG 			= "7",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(79,646)",
	"COLOR			= D3DXCOLOR(0.24,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pPicturePvp04 = g_pUIDialog:CreatePicture()
g_pStaticGuide_Pvp:AddPicture( g_pPicturePvp04 )

g_pPicturePvp04:SetTex( "DLG_UI_Guide_Pvp04.TGA", "PVP04" )

g_pPicturePvp04:SetPoint
{
    ADD_SIZE_Y = 56,
	"LEFT_TOP		= D3DXVECTOR2(556,65)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pStaticNum = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNum )
g_pStaticNum:SetName( "page8" )

g_pStaticNum:AddString
{
	-- MSG 			= "8",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(930,646)",
	"COLOR			= D3DXCOLOR(0.24,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}