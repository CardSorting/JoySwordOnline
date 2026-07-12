-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 3402 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -5905.51, 3742, -805 ), true, 8 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -5754.64, 3742, -805 ), true, 8 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -5537.25, 3742, -805 ), true, 8 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -5374.02, 3742, -805 ), true, 8 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -6014.47, 3742, -805 ), true, 8 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( -5211.72, 3982, -805 ), false, 0 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( -4933.97, 3982, -728.889 ), false, 1 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( -4715.63, 3982, -554.017 ), false, 1 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( -4478.19, 3982, -455 ), false, 2 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( -4185.63, 3982, -455 ), false, 2 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( -3971.72, 3982, -455 ), false, 2 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( -3688.04, 3982, -455 ), false, 2 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( -3456.9, 3982, -455 ), false, 2 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( -3037.32, 3742, -455 ), false, 3 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( -2820.33, 3742, -455 ), false, 3 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( -2758.24, 3502, -636.341 ), false, 5 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( -3060.72, 3502, -805 ), false, 4 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( -3339.8, 3502, -805 ), false, 4 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( -3590.1, 3502, -805 ), false, 4 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( -3841.74, 3502, -805 ), false, 4 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( -4175.66, 3502, -805 ), false, 4 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( -4426.23, 3502, -805 ), false, 4 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( -4680.68, 3502, -805 ), false, 4 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( -4956.08, 3502, -805 ), false, 4 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( -5127.67, 3502, -805 ), false, 4 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( -2554.89, 3502, -496.787 ), false, 5 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( -2315.91, 3502, -455 ), false, 6 )
g_pLineMap:AddStartPos( 24, D3DXVECTOR3( -2026.8, 3502, -455 ), false, 6 )
g_pLineMap:AddStartPos( 25, D3DXVECTOR3( -1749.65, 3502, -455 ), false, 6 )
g_pLineMap:AddStartPos( 26, D3DXVECTOR3( -1433.55, 3502, -455 ), false, 6 )
g_pLineMap:AddStartPos( 27, D3DXVECTOR3( -1004.34, 3502, -455 ), false, 7 )
g_pLineMap:AddStartPos( 28, D3DXVECTOR3( -756.003, 3502, -455 ), false, 7 )
g_pLineMap:AddStartPos( 29, D3DXVECTOR3( -517.056, 3502, -455 ), false, 7 )
g_pLineMap:AddStartPos( 30, D3DXVECTOR3( -280, 3502, -455 ), false, 7 )
g_pLineMap:AddStartPos( 31, D3DXVECTOR3( -2623.05, 3742, -455 ), false, 3 )






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
	"START_POS		= D3DXVECTOR3(-5292, 3982, -805)", 
	"END_POS		= D3DXVECTOR3(-5029, 3982, -805)", 
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
	"START_POS		= D3DXVECTOR3(-5029, 3982, -805)", 
	"END_POS		= D3DXVECTOR3(-4592, 3982, -455)", 
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
	"START_POS		= D3DXVECTOR3(-4592, 3982, -455)", 
	"END_POS		= D3DXVECTOR3(-3192, 3982, -455)", 
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
	"START_POS		= D3DXVECTOR3(-3192, 3742, -455)", 
	"END_POS		= D3DXVECTOR3(-2494, 3742, -455)", 
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
	NEXT_LINE		= 5, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-5292, 3502, -805)", 
	"END_POS		= D3DXVECTOR3(-3004, 3502, -805)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 5, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 4, 
	NEXT_LINE		= 6, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-3004, 3502, -805)", 
	"END_POS		= D3DXVECTOR3(-2494, 3502, -455)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 6, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 5, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-2494, 3502, -455)", 
	"END_POS		= D3DXVECTOR3(-1194, 3502, -455)", 
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
	"START_POS		= D3DXVECTOR3(-1194, 3502, -455)", 
	"END_POS		= D3DXVECTOR3(-280, 3502, -455)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 8, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-6092, 3742, -805)", 
	"END_POS		= D3DXVECTOR3(-5292, 3742, -805)", 
}

