-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetPos( 5,5 )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )

g_pStaticGuide_Pet = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGuide_Pet )
g_pStaticGuide_Pet:SetName( "Guide_Pet" )


g_pPicturePet01 = g_pUIDialog:CreatePicture()
g_pStaticGuide_Pet:AddPicture( g_pPicturePet01 )

g_pPicturePet01:SetTex( "DLG_UI_Guide_Pet01.tga", "PET01" )

g_pPicturePet01:SetPoint
{
 --   ADD_SIZE_Y = 77,
	"LEFT_TOP		= D3DXVECTOR2(80,51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticNum = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNum )
g_pStaticNum:SetName( "page27" )

g_pStaticNum:AddString
{
	-- MSG 			= "29",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(79,646)",
	"COLOR			= D3DXCOLOR(0.24,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pPicturePet02 = g_pUIDialog:CreatePicture()
g_pStaticGuide_Pet:AddPicture( g_pPicturePet02 )

g_pPicturePet02:SetTex( "DLG_UI_Guide_Pet02.tga", "PET02" )

g_pPicturePet02:SetPoint
{
 --   ADD_SIZE_Y= 33,
	"LEFT_TOP		= D3DXVECTOR2(556,65)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pStaticNum = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNum )
g_pStaticNum:SetName( "page28" )

g_pStaticNum:AddString
{
	-- MSG 			= "30",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(930,646)",
	"COLOR			= D3DXCOLOR(0.24,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


