-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetPos( 5,5 )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )

g_pStaticGuide_Quest = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGuide_Quest )
g_pStaticGuide_Quest:SetName( "Guide_Quest02" )




g_pPictureQuest03 = g_pUIDialog:CreatePicture()
g_pStaticGuide_Quest:AddPicture( g_pPictureQuest03 )

g_pPictureQuest03:SetTex( "DLG_UI_Guide_Quest03.TGA", "quest03" )

g_pPictureQuest03:SetPoint
{
    ADD_SIZE_Y= 87,
	"LEFT_TOP		= D3DXVECTOR2(80,66)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pStaticNum = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNum )
g_pStaticNum:SetName( "page13" )

g_pStaticNum:AddString
{
	-- MSG 			= "13",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(79,646)",
	"COLOR			= D3DXCOLOR(0.24,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}




g_pPictureQuest04 = g_pUIDialog:CreatePicture()
g_pStaticGuide_Quest:AddPicture( g_pPictureQuest04 )

g_pPictureQuest04:SetTex( "DLG_UI_Guide_Quest04.TGA", "quest04" )

g_pPictureQuest04:SetPoint
{
  
    ADD_SIZE_Y= 85, 
	"LEFT_TOP		= D3DXVECTOR2(556,65)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pStaticNum = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNum )
g_pStaticNum:SetName( "page14" )

g_pStaticNum:AddString
{
	-- MSG 			= "14",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(930,646)",
	"COLOR			= D3DXCOLOR(0.24,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
