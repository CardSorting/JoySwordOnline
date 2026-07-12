

g_pLineMap:SetLandHeight( -100 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1200.32, 503, 3171 ), true, 14 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -948.888, 503, 3171 ), true, 14 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2295.38, 258, 3171.8 ), false, 5 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2533.47, 258, 3173.32 ), false, 5 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 917.406, 18, 3171 ), false, 3 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 1134.28, 18, 3171 ), false, 3 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 1376.62, 18, 3171 ), false, 3 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 1609.61, 18, 3171.43 ), false, 4 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 1878.72, 18, 3171.98 ), false, 4 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 2104.3, 18, 3172.43 ), false, 4 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 2311.74, 18, 3172.85 ), false, 4 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 2246.68, 258, 3171.49 ), false, 5 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 2414.87, 258, 3172.56 ), false, 5 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 2582.18, 258, 3173.63 ), false, 5 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 2460.53, 18, 3173.15 ), false, 4 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 2617.18, 18, 3173.47 ), false, 4 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 2780.77, 18, 3173.8 ), false, 4 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 776.09, 18, 3171 ), true, 3 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 621.051, 18, 3171 ), true, 2 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 433.619, 18, 3171 ), true, 2 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 267.833, 18, 3171 ), true, 2 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 112.777, 18, 3171 ), true, 2 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( -109.035, 32.7303, 3171 ), true, 1 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( -297.63, 103.898, 3171 ), true, 1 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( -688.074, 503, 3171 ), true, 14 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( -877.792, 503, 3171 ), true, 14 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( -1092.53, 503, 3171 ), true, 14 )
g_pLineMap:AddStartPos( 24, D3DXVECTOR3( -1364.62, 503, 3171 ), true, 14 )
g_pLineMap:AddStartPos( 25, D3DXVECTOR3( -1541.74, 445.676, 3171 ), true, 13 )
g_pLineMap:AddStartPos( 26, D3DXVECTOR3( -1661.54, 402.416, 3171 ), true, 13 )
g_pLineMap:AddStartPos( 27, D3DXVECTOR3( -1891.49, 307.064, 3171 ), true, 11 )
g_pLineMap:AddStartPos( 28, D3DXVECTOR3( -2104.05, 263, 3171 ), true, 7 )
g_pLineMap:AddStartPos( 29, D3DXVECTOR3( -2331.88, 263, 3171 ), true, 7 )






-- LINE DATA -- 
g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 0, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= 1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-776, 218, 3171)", 
	"END_POS		= D3DXVECTOR3(-600, 218, 3171)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 1, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 0, 
	NEXT_LINE		= 2, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-600, 218, 3171)", 
	"END_POS		= D3DXVECTOR3(-70, 18, 3171)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 2, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 1, 
	NEXT_LINE		= 3, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-70, 18, 3171)", 
	"END_POS		= D3DXVECTOR3(738, 18, 3171)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 3, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 2, 
	NEXT_LINE		= 4, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(738, 18, 3171)", 
	"END_POS		= D3DXVECTOR3(1396, 18, 3171)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 4, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 3, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1396, 18, 3171)", 
	"END_POS		= D3DXVECTOR3(2880, 18, 3174)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 5, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(2170, 258, 3171)", 
	"END_POS		= D3DXVECTOR3(2640, 258, 3174)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 6, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= 7, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-2574, 263, 3171)", 
	"END_POS		= D3DXVECTOR3(-2365, 263, 3171)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 7, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 6, 
	NEXT_LINE		= 8, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-2365, 263, 3171)", 
	"END_POS		= D3DXVECTOR3(-2066, 263, 3171)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 8, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 7, 
	NEXT_LINE		= 9, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-2066, 263, 3171)", 
	"END_POS		= D3DXVECTOR3(-2033, 277, 3171)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 9, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 8, 
	NEXT_LINE		= 10, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-2033, 277, 3171)", 
	"END_POS		= D3DXVECTOR3(-1966, 282, 3171)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 10, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 9, 
	NEXT_LINE		= 11, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-1966, 282, 3171)", 
	"END_POS		= D3DXVECTOR3(-1932, 304, 3171)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 11, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 10, 
	NEXT_LINE		= 12, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-1932, 304, 3171)", 
	"END_POS		= D3DXVECTOR3(-1813, 313, 3171)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 12, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 11, 
	NEXT_LINE		= 13, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-1813, 313, 3171)", 
	"END_POS		= D3DXVECTOR3(-1707, 386, 3171)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 13, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 12, 
	NEXT_LINE		= 14, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-1707, 386, 3171)", 
	"END_POS		= D3DXVECTOR3(-1383, 503, 3171)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 14, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 13, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-1383, 503, 3171)", 
	"END_POS		= D3DXVECTOR3(-549, 503, 3171)", 
}


-- CAMERA DATA 

