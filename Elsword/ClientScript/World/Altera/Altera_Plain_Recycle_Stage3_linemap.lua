-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( -100 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1175.05, 240, 0 ), true, 3 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1499.85, 0, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1726.83, 0, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1936.29, 0, 0 ), true, 0 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 2213.89, 0, 0 ), false, 0 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 2404.01, 0, 0 ), false, 0 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 2640.71, 0, 0 ), false, 0 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 2817.6, 0, 0 ), false, 0 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 3037.26, 0, 0 ), false, 0 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 3269.43, 0, 0 ), false, 0 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 3518.48, 0, 0 ), false, 0 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 3725.54, 0, 0 ), false, 0 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 3894.53, 240, 0 ), false, 1 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 4059.83, 240, 0 ), false, 1 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 3216.52, 480, 0 ), false, 2 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 3466.28, 480, 0 ), false, 2 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 3637.89, 480, 0 ), false, 2 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 1508.59, 480, 0 ), false, 4 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 1744.23, 480, 0 ), false, 4 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 1963.35, 480, 0 ), false, 4 )






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
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1400, 0, 0)", 
	"END_POS		= D3DXVECTOR3(3800, 0, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 1, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(3800, 240, 0)", 
	"END_POS		= D3DXVECTOR3(4200, 240, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 2, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(3100, 480, 0)", 
	"END_POS		= D3DXVECTOR3(3800, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(1000, 240, 0)", 
	"END_POS		= D3DXVECTOR3(1400, 240, 0)", 
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
	"START_POS		= D3DXVECTOR3(1400, 480, 0)", 
	"END_POS		= D3DXVECTOR3(2100, 480, 0)", 
}

