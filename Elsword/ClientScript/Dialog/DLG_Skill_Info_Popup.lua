-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




g_pUIDialog:SetName( "DLG_Skill_Info_Popup" )
g_pUIDialog:SetPos( 0, 0  )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )



g_pStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic )
g_pStatic:SetName( "Static_Skill_Info" )



-- 배경 검은색
g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex2( "FadeInOut.dds" )
g_pPicture:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(0,0)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(250+20+60, 240)",	
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pPicture:SetEdge( false, 2, D3DXCOLOR(1,1,1,1) );



-- 스킬 아이콘 
g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex2( "FadeInOut.dds" )
g_pPicture:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(10,10)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(65, 65)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}



-- 스킬 종류
g_pStatic:AddString
{
	-- MSG 				= "active skill",
	FONT_INDEX			= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG			= DRAW_TEXT["DT_LEFT"],
	"POS 				= D3DXVECTOR2(80, 10)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	FONT_STYLE			= FONT_STYLE["FS_SHELL"],
}





-- 필요 SP
g_pStatic:AddString
{
	-- MSG 				= "SP",
	FONT_INDEX			= XUF_DODUM_20_BOLD,
	SORT_FLAG			= DRAW_TEXT["DT_CENTER"],
	--"POS 				= D3DXVECTOR2(180+60, 10)",	
	"POS 				= D3DXVECTOR2(257, 23 + 3)",	
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	FONT_STYLE			= FONT_STYLE["FS_SHELL"],
}





-- 스킬 이름
g_pStatic:AddString
{
	-- MSG 				= "skill name",
	FONT_INDEX			= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG			= DRAW_TEXT["DT_LEFT"],
	"POS 				= D3DXVECTOR2(80, 50)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	FONT_STYLE			= FONT_STYLE["FS_SHELL"],
}




-- desc.
g_pStatic:AddString
{
	-- MSG 				= "desc.",
	FONT_INDEX			= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG			= DRAW_TEXT["DT_CENTER"],
	"POS 				= D3DXVECTOR2(135+30, 90 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	FONT_STYLE			= FONT_STYLE["FS_SHELL"],
}




-- 필요 레벨
g_pStatic:AddString
{
	-- MSG 				= "level",
	FONT_INDEX			= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG			= DRAW_TEXT["DT_LEFT"],
	"POS 				= D3DXVECTOR2(80, 30 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	FONT_STYLE			= FONT_STYLE["FS_SHELL"],
}



-- 기타 정보
g_pStatic:AddString
{
	-- MSG 				= "",
	FONT_INDEX			= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG			= DRAW_TEXT["DT_LEFT"],
	"POS 				= D3DXVECTOR2(20, 195 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	FONT_STYLE			= FONT_STYLE["FS_SHELL"],
}

