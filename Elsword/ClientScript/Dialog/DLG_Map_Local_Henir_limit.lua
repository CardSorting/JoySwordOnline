-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--횟수 표시 bg--
g_pStatic_limit_info = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_limit_info )
g_pStatic_limit_info:SetName( "limit_info" )

g_pPicture_limit_bg = g_pUIDialog:CreatePicture()
g_pStatic_limit_info:AddPicture( g_pPicture_limit_bg )

g_pPicture_limit_bg:SetTex( "DLG_UI_Button03_A.TGA", "HENIR_BG" )

g_pPicture_limit_bg:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(24-20,10)",		-- 헤니르 던전 아이콘과 위치 맞추기 위해 가로 위치 -20, 2013-05-16 임홍락

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


------------플레이 횟수-------------
g_pPicture_num_play = g_pUIDialog:CreatePicture()
g_pStatic_limit_info:AddPicture( g_pPicture_num_play )

g_pPicture_num_play:SetTex2( "PC_5.dds" )

g_pPicture_num_play:SetPoint
{
    ADD_SIZE_X = -12,
	ADD_SIZE_Y = -12,
	"LEFT_TOP		= D3DXVECTOR2(30+24-20,10+10)",		-- 헤니르 던전 아이콘과 위치 맞추기 위해 가로 위치 -20, 2013-05-16 임홍락
	"COLOR			= D3DXCOLOR(0.0,0.9,1.0,1.0)",
	
	CHANGE_TIME		= 0.0,
}


----무제한
g_pStatic_limit_info3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_limit_info3 )
g_pStatic_limit_info3:SetName( "g_pStatic_limit_info3" )

g_pStatic_limit_info3:AddString
{
	MSG       = "무제한",
	FONT_INDEX      = XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
	"POS            = D3DXVECTOR2(3-20,6)",		-- 헤니르 던전 아이콘과 위치 맞추기 위해 가로 위치 -20, 2013-05-16 임홍락
	"COLOR          = D3DXCOLOR(0.0,0.9,1.0,1.0)",
	"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

