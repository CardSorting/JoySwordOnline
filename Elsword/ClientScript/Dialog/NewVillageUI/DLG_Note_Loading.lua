-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetName( "DLG_Wirtting_Note" )
g_pUIDialog:SetPos( 220, 112 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )

g_pStaticNote_Loading = g_pUIDialog:CreateStatic( )
g_pUIDialog:AddControl( g_pStaticNote_Loading )
g_pStaticNote_Loading:SetName( "g_pStaticNote_Loading" )

------------------------------기본 배경


g_pPictureNote_Loading_BG1 = g_pUIDialog:CreatePicture()
g_pStaticNote_Loading:AddPicture( g_pPictureNote_Loading_BG1 )

g_pPictureNote_Loading_BG1:SetTex( "DLG_UI_Common_Texture31.tga", "Note" )

g_pPictureNote_Loading_BG1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureNote_Loading_BG2 = g_pUIDialog:CreatePicture()
g_pStaticNote_Loading:AddPicture( g_pPictureNote_Loading_BG2 )

g_pPictureNote_Loading_BG2:SetTex( "DLG_UI_Common_Texture31.TGA", "Blue_Bar" )
g_pPictureNote_Loading_BG2:SetIndex(1)
g_pPictureNote_Loading_BG2:SetPoint
{
	ADD_SIZE_X = 306,
	"LEFT_TOP		= D3DXVECTOR2(67,279)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


---------------타이틀

g_pStaticNote_Loading:AddString
{
	MSG 			= STR_ID_5015,
--	MSG 			= "노트 작성 중..",
	FONT_INDEX		= XUF_DODUM_20_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(222+1,157+2)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.3)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,0.3)",
}


g_pStaticNote_Loading:AddString
{
	MSG 			= STR_ID_5015,
--	MSG 			= "노트 작성 중..",
	FONT_INDEX		= XUF_DODUM_20_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(222,157)",
	"COLOR			= D3DXCOLOR(1.0,0.9,0.9,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.2,0.2,0.2,1.0)",
}
