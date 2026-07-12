

g_pLineMap:SetLandHeight(0 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 149.612, 380, 0 ), true, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 350.12, 380, 0 ), true, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2590.7, 300, 0 ), false, 7 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2882.78, 300, 0 ), false, 7 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 698.822, 1603, 0 ), false, 1 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 2098.12, 2195, 0 ), false, 0 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 2342.24, 2195, 0 ), false, 0 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 2573.29, 2195, 0 ), false, 0 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 624.728, 620, 0 ), false, 8 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 873.189, 620, 0 ), false, 8 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 1112.8, 668.688, 0 ), false, 9 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 1363.82, 730.478, 0 ), false, 9 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 1653.46, 780, 0 ), false, 10 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 1910.66, 780, 0 ), false, 10 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 1928.09, 540, 0 ), false, 6 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 2154.77, 540, 0 ), false, 6 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 2359.66, 540, 0 ), false, 6 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 507.042, 140, 0 ), false, 3 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 764.219, 134.088, 0 ), false, 4 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 1041.79, 100.746, 0 ), false, 4 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 1321.9, 67.099, 0 ), false, 4 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 1692.7, 60, 0 ), false, 5 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 1997.84, 60, 0 ), false, 5 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 2316.06, 60, 0 ), false, 5 )






-- LINE DATA -- 
g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 0, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_MONSTER_ROAD"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(1977, 2195, 0)", 
	"END_POS		= D3DXVECTOR3(2677, 2195, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 1, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_MONSTER_ROAD"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(500, 1603, 0)", 
	"END_POS		= D3DXVECTOR3(915, 1603, 0)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(67, 380, 0)", 
	"END_POS		= D3DXVECTOR3(500, 380, 0)", 
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
	NEXT_LINE		= 4, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(357, 140, 0)", 
	"END_POS		= D3DXVECTOR3(715, 140, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 4, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 3, 
	NEXT_LINE		= 5, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(715, 140, 0)", 
	"END_POS		= D3DXVECTOR3(1381, 60, 0)", 
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
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(1381, 60, 0)", 
	"END_POS		= D3DXVECTOR3(2500, 60, 0)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(1800, 540, 0)", 
	"END_POS		= D3DXVECTOR3(2500, 540, 0)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(2500, 300, 0)", 
	"END_POS		= D3DXVECTOR3(3014, 300, 0)", 
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
	NEXT_LINE		= 9, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(500, 620, 0)", 
	"END_POS		= D3DXVECTOR3(915, 620, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 9, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 8, 
	NEXT_LINE		= 10, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(915, 620, 0)", 
	"END_POS		= D3DXVECTOR3(1565, 780, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 10, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 9, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(1565, 780, 0)", 
	"END_POS		= D3DXVECTOR3(2100, 780, 0)", 
}

