-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 0 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 224.312, 0, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 43.6854, 0, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 326.204, 0, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 136.315, 0, 0 ), true, 0 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 520.726, 0, 0 ), false, 0 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 636.512, 0, 0 ), false, 0 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 761.562, 0, 0 ), false, 0 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 914.4, 0, 0 ), false, 0 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 1039.45, 0, 0 ), false, 0 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 1187.66, 0, 0 ), false, 0 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 1382.18, 0, 0 ), false, 0 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 1507.23, 0, 0 ), false, 0 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 1595.22, 0, 0 ), false, 0 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 1761.96, 0, 0 ), false, 0 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 1928.69, 0, 0 ), false, 0 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 2076.9, 0, 0 ), false, 0 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 2229.73, 0, 0 ), false, 0 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 2359.41, 0, 0 ), false, 0 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 1933.3, 240, 0 ), false, 2 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 1803.62, 240, 0 ), false, 2 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 1664.67, 240, 0 ), false, 2 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 1553.51, 240, 0 ), false, 2 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 932.893, 240, 0 ), false, 1 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 821.74, 240, 0 ), false, 1 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 705.955, 240, 0 ), false, 1 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 557.751, 240, 0 ), false, 1 )






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
	"START_POS		= D3DXVECTOR3(0, 0, 0)", 
	"END_POS		= D3DXVECTOR3(2400, 0, 0)", 
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
	"START_POS		= D3DXVECTOR3(500, 240, 0)", 
	"END_POS		= D3DXVECTOR3(1000, 240, 0)", 
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
	"START_POS		= D3DXVECTOR3(1500, 240, 0)", 
	"END_POS		= D3DXVECTOR3(2000, 240, 0)", 
}

