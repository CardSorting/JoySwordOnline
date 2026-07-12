-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetPos( 5,5 )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )

g_pStaticGuide_Euqip = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGuide_Euqip )
g_pStaticGuide_Euqip:SetName( "Guide_Euqip" )


g_pPictureEuqip01 = g_pUIDialog:CreatePicture()
g_pStaticGuide_Euqip:AddPicture( g_pPictureEuqip01 )

g_pPictureEuqip01:SetTex( "DLG_UI_Guide_Euqip01.TGA", "Euqip01" )

g_pPictureEuqip01:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(80,51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticNum = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNum )
g_pStaticNum:SetName( "page21" )

g_pStaticNum:AddString
{
	-- MSG 			= "23",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(79,646)",
	"COLOR			= D3DXCOLOR(0.24,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pPictureEuqip02 = g_pUIDialog:CreatePicture()
g_pStaticGuide_Euqip:AddPicture( g_pPictureEuqip02 )

g_pPictureEuqip02:SetTex( "DLG_UI_Guide_Euqip02.TGA", "Euqip02" )

g_pPictureEuqip02:SetPoint
{
    ADD_SIZE_Y = 17,
	"LEFT_TOP		= D3DXVECTOR2(556,65+80)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pStaticNum = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNum )
g_pStaticNum:SetName( "page22" )

g_pStaticNum:AddString
{
	-- MSG 			= "24",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(930,646)",
	"COLOR			= D3DXCOLOR(0.24,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


