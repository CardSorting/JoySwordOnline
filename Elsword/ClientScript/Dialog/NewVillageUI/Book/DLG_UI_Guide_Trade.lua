-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetPos( 5,5 )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )

g_pStaticGuide_Trade = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGuide_Trade )
g_pStaticGuide_Trade:SetName( "Guide_Trade" )


g_pPictureTrade01 = g_pUIDialog:CreatePicture()
g_pStaticGuide_Trade:AddPicture( g_pPictureTrade01 )

g_pPictureTrade01:SetTex( "DLG_UI_Guide_Trade01.TGA", "Trade01" )

g_pPictureTrade01:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(80,51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticNum = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNum )
g_pStaticNum:SetName( "page15" )

g_pStaticNum:AddString
{
	-- MSG 			= "15",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(79,646)",
	"COLOR			= D3DXCOLOR(0.24,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pPictureTrade02 = g_pUIDialog:CreatePicture()
g_pStaticGuide_Trade:AddPicture( g_pPictureTrade02 )

g_pPictureTrade02:SetTex( "DLG_UI_Guide_Trade02.TGA", "Trade02" )

g_pPictureTrade02:SetPoint
{
    ADD_SIZE_Y = 17,
	"LEFT_TOP		= D3DXVECTOR2(556,65+74)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pStaticNum = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNum )
g_pStaticNum:SetName( "page16" )

g_pStaticNum:AddString
{
	-- MSG 			= "16",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(930,646)",
	"COLOR			= D3DXCOLOR(0.24,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


