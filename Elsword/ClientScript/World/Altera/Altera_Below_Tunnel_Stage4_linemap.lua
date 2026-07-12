

g_pLineMap:SetLandHeight( -100 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 336.712, 380, 0 ), true, 9 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 37.6297, 380, 0 ), true, 9 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 363.289, 860, 0 ), true, 10 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 147.281, 860, 0 ), true, 10 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 2600, 0, 0 ), false, 7 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 700.009, 140, 0 ), false, 5 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 965.976, 121.527, 0 ), false, 6 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 1228.26, 48.0872, 0 ), false, 6 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 1469.06, 0, 0 ), false, 7 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 1683.19, 0, 0 ), false, 7 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 1978.75, 0, 0 ), false, 7 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 1930.49, 300, 0 ), false, 1 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 2099.38, 300, 0 ), false, 1 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 1722.4, 520, 0 ), false, 0 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 1882.24, 520, 0 ), false, 0 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 774.436, 620, 0 ), false, 2 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 916.578, 624.642, 0 ), false, 3 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 1172.37, 696.264, 0 ), false, 3 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 1400, 760, 0 ), false, 3 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 1647.06, 760, 0 ), false, 4 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 1841.44, 900, 0 ), false, 8 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 2029.21, 900, 0 ), false, 8 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 2200, 900, 0 ), false, 8 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 260.333, 860, 0 ), true, 10 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 1504.17, 760, 0 ), true, 4 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 2251.92, 0, 0 ), false, 7 )






-- LINE DATA -- 
g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 0, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -2, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1600, 520, 0)", 
	"END_POS		= D3DXVECTOR3(2200, 520, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 1, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -2, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1800, 300, 0)", 
	"END_POS		= D3DXVECTOR3(2200, 300, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 2, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= 3, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(500, 620, 0)", 
	"END_POS		= D3DXVECTOR3(900, 620, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 3, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 2, 
	NEXT_LINE		= 4, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(900, 620, 0)", 
	"END_POS		= D3DXVECTOR3(1400, 760, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 4, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 3, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1400, 760, 0)", 
	"END_POS		= D3DXVECTOR3(1800, 760, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 5, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= 6, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(500, 140, 0)", 
	"END_POS		= D3DXVECTOR3(900, 140, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 6, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 5, 
	NEXT_LINE		= 7, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(900, 140, 0)", 
	"END_POS		= D3DXVECTOR3(1400, 0, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 7, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 6, 
	NEXT_LINE		= -2, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1400, 0, 0)", 
	"END_POS		= D3DXVECTOR3(2600, 0, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 8, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -2, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1750, 900, 0)", 
	"END_POS		= D3DXVECTOR3(2200, 900, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 9, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-200, 380, 0)", 
	"END_POS		= D3DXVECTOR3(500, 380, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 10, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(0, 860, 0)", 
	"END_POS		= D3DXVECTOR3(500, 860, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 11, 
	LINE_TYPE 		= LINE_TYPE["LT_WALL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(2201, 1500, 0)", 
	"END_POS		= D3DXVECTOR3(2201, 40, 0)", 
}


-- CAMERA DATA 

