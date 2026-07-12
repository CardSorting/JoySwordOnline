-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 240 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1623.61, 240, 0 ), false, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1770.92, 240, 0 ), false, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1910.47, 240, 0 ), false, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2026.77, 240, 0 ), false, 2 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( -304.83, 720, 0 ), false, 3 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( -157.652, 720, 0 ), false, 3 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( -188.872, 480, 0 ), false, 0 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( -46.1542, 480, 0 ), false, 0 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 109.943, 480, 0 ), false, 0 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 264, 480, 0 ), false, 0 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 376.083, 427.969, 0 ), false, 1 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 484.793, 377.504, 0 ), false, 1 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 590.265, 328.542, 0 ), false, 1 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 704.638, 275.448, 0 ), false, 1 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 823.533, 240, 0 ), false, 2 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 975.17, 240, 0 ), false, 2 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 1104.51, 240, 0 ), false, 2 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 1247.23, 240, 0 ), false, 2 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 1389.94, 240, 0 ), false, 2 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 654.543, 720, 0 ), false, 6 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 774.958, 720, 0 ), false, 6 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 890.913, 720, 0 ), false, 6 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 1002.41, 720, 0 ), false, 6 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 1127.28, 720, 0 ), false, 6 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 1371, 960, 0 ), false, 7 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 1482.5, 960, 0 ), false, 7 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( 1580.62, 960, 0 ), false, 7 )
g_pLineMap:AddStartPos( 24, D3DXVECTOR3( 1899.16, 1200, 0 ), false, 5 )
g_pLineMap:AddStartPos( 25, D3DXVECTOR3( 2006.2, 1200, 0 ), false, 5 )
g_pLineMap:AddStartPos( 26, D3DXVECTOR3( 2126.62, 1200, 0 ), false, 5 )
g_pLineMap:AddStartPos( 27, D3DXVECTOR3( 162.362, 1200, 0 ), false, 4 )
g_pLineMap:AddStartPos( 28, D3DXVECTOR3( 282.781, 1200, 0 ), false, 4 )
g_pLineMap:AddStartPos( 29, D3DXVECTOR3( 416.579, 1200, 0 ), false, 4 )
g_pLineMap:AddStartPos( 30, D3DXVECTOR3( 572.676, 1200, 0 ), false, 4 )
g_pLineMap:AddStartPos( 31, D3DXVECTOR3( 719.854, 1200, 0 ), false, 4 )
g_pLineMap:AddStartPos( 32, D3DXVECTOR3( 849.192, 1200, 0 ), false, 4 )
g_pLineMap:AddStartPos( 33, D3DXVECTOR3( 1018.67, 1200, 0 ), false, 4 )
g_pLineMap:AddStartPos( 34, D3DXVECTOR3( 1130.17, 1200, 0 ), false, 4 )
g_pLineMap:AddStartPos( 35, D3DXVECTOR3( 520.262, 720, 0 ), false, 6 )
g_pLineMap:AddStartPos( 36, D3DXVECTOR3( 389.501, 720, 0 ), false, 6 )






-- LINE DATA -- 
g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 0, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= 1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-403, 480, 0)", 
	"END_POS		= D3DXVECTOR3(264, 480, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 1, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 0, 
	NEXT_LINE		= 2, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(264, 480, 0)", 
	"END_POS		= D3DXVECTOR3(781, 240, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 2, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(781, 240, 0)", 
	"END_POS		= D3DXVECTOR3(2100, 240, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 3, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-403, 720, 0)", 
	"END_POS		= D3DXVECTOR3(-3, 720, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 4, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(64, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(1191, 1200, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 5, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1800, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(2200, 1200, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 6, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(300, 720, 0)", 
	"END_POS		= D3DXVECTOR3(1125, 720, 0)",
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 7, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1275, 960, 0)", 
	"END_POS		= D3DXVECTOR3(1800, 960, 0)",
}

