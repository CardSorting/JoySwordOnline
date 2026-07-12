-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetPos( 5,5 )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )

g_pStaticGuide_Attribute_Upgrade = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGuide_Attribute_Upgrade )
g_pStaticGuide_Attribute_Upgrade:SetName( "Guide_Attribute_Upgrade01" )


g_pPictureAttribute_Upgrade01 = g_pUIDialog:CreatePicture()
g_pStaticGuide_Attribute_Upgrade:AddPicture( g_pPictureAttribute_Upgrade01 )

g_pPictureAttribute_Upgrade01:SetTex( "DLG_UI_Guide_Attribute_Upgrade01.TGA", "Attribute_Upgrade01" )

g_pPictureAttribute_Upgrade01:SetPoint
{
    ADD_SIZE_Y = 19,
	"LEFT_TOP		= D3DXVECTOR2(80,51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticNum = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNum )
g_pStaticNum:SetName( "page29" )

g_pStaticNum:AddString
{
	-- MSG 			= "31",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(79,646)",
	"COLOR			= D3DXCOLOR(0.24,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pPictureAttribute_Upgrade02 = g_pUIDialog:CreatePicture()
g_pStaticGuide_Attribute_Upgrade:AddPicture( g_pPictureAttribute_Upgrade02 )

g_pPictureAttribute_Upgrade02:SetTex( "DLG_UI_Guide_Attribute_Upgrade02.TGA", "Attribute_Upgrade02" )

g_pPictureAttribute_Upgrade02:SetPoint
{
    ADD_SIZE_Y = 59,
	"LEFT_TOP		= D3DXVECTOR2(556,75)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pStaticNum = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNum )
g_pStaticNum:SetName( "page30" )

g_pStaticNum:AddString
{
	-- MSG 			= "32",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(930,646)",
	"COLOR			= D3DXCOLOR(0.24,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}




