-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetPos( 5,5 )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )

g_pStaticGuide_Market = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGuide_Market )
g_pStaticGuide_Market:SetName( "Guide_Market01" )


g_pPictureMarket01 = g_pUIDialog:CreatePicture()
g_pStaticGuide_Market:AddPicture( g_pPictureMarket01 )

g_pPictureMarket01:SetTex( "DLG_UI_Guide_Market01.TGA", "Market01" )

g_pPictureMarket01:SetPoint
{
    ADD_SIZE_Y = 10,
	"LEFT_TOP		= D3DXVECTOR2(80,51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticNum = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNum )
g_pStaticNum:SetName( "page17" )

g_pStaticNum:AddString
{
	-- MSG 			= "17",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(79,646)",
	"COLOR			= D3DXCOLOR(0.24,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pPictureMarket02 = g_pUIDialog:CreatePicture()
g_pStaticGuide_Market:AddPicture( g_pPictureMarket02 )

g_pPictureMarket02:SetTex( "DLG_UI_Guide_Market02.TGA", "Market02" )

g_pPictureMarket02:SetPoint
{
    ADD_SIZE_Y = 46,
	"LEFT_TOP		= D3DXVECTOR2(556,65)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pStaticNum = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNum )
g_pStaticNum:SetName( "page18" )

g_pStaticNum:AddString
{
	-- MSG 			= "18",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(930,646)",
	"COLOR			= D3DXCOLOR(0.24,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



