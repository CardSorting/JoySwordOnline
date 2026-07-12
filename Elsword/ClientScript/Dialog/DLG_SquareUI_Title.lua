-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.





g_pUIDialog:SetName( "DLG_Square_Title" )
g_pUIDialog:SetPos( 8, 0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )



g_pStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic )
g_pStatic:SetName( "Static_SquareTitle" )




-------------------------------------------------------------------------------------------------
g_pPicture_Square_Title1 = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture_Square_Title1)

g_pPicture_Square_Title1:SetTex( "DLG_SquareUI.TGA", "Chat_Box1" )

g_pPicture_Square_Title1:SetPoint
{
	"LEFT_TOP  = D3DXVECTOR2(10,10)",
	"COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME  = 0.0,
}

g_pPicture_Square_Title2 = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture_Square_Title2)
g_pPicture_Square_Title2:SetTex( "DLG_SquareUI.TGA", "Chat_Box2" )

g_pPicture_Square_Title2:SetPoint
{
	"LEFT_TOP  = D3DXVECTOR2(436,10)",
	"COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME  = 0.0,
}

g_pPicture_Square_Title3 = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture_Square_Title3)

g_pPicture_Square_Title3:SetTex( "DLG_SquareUI.TGA", "Chat_Box3" )

g_pPicture_Square_Title3:SetPoint
{
    ADD_SIZE_X = 415,
	"LEFT_TOP  = D3DXVECTOR2(20,10)",
	"COLOR   = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME  = 0.0,
}


-- 광장 제목
g_pStatic:AddString
{
	MSG 				= STR_ID_1171,
	FONT_INDEX			= XUF_DODUM_15_BOLD,
	SORT_FLAG			= DRAW_TEXT["DT_LEFT"],
	"POS 				= D3DXVECTOR2(20, 15)",
	"COLOR				= D3DXCOLOR(1.0, 1.0, 0.0, 1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0, 0.0, 0.0, 1.0)",
	FONT_STYLE			= FONT_STYLE["FS_SHELL"],
}



