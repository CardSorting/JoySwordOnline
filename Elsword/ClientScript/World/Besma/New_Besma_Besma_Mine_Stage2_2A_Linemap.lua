

g_pLineMap:SetLandHeight( 0 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 68.0249, 960, 0 ), true, 12 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 207.167, 960, 0 ), true, 12 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 365.216, 960, 0 ), true, 12 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 579.966, 979.192, 0 ), true, 13 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 819.453, 1036.67, 0 ), true, 13 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 1258.03, 860, 0 ), false, 0 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 1622.77, 838.515, 0 ), false, 1 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 2040.41, 765.428, 0 ), false, 1 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 2467.08, 720, 0 ), false, 2 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 1774.97, 1200, 0 ), false, 14 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 2125.3, 1200, 0 ), false, 14 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 2552.54, 1200, 0 ), false, 14 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 3552.37, 1200, 0 ), false, 8 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 3975.41, 1200, 0 ), false, 8 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 4347.17, 1200, 0 ), false, 8 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 3082.34, 960, 0 ), false, 9 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 3532.9, 913.42, 0 ), false, 10 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 3918.02, 836.396, 0 ), false, 10 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 4309.72, 758.056, 0 ), false, 10 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 4667.65, 720, 0 ), false, 11 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 5000.99, 720, 0 ), false, 11 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 5347.15, 720, 0 ), false, 11 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 5713.24, 480, 0 ), false, 4 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 6059.32, 480, 0 ), false, 4 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 6110.59, 0, 0 ), false, 3 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 6486.58, 0, 0 ), false, 3 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 6875.38, 0, 0 ), false, 3 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( 7323.99, 0, 0 ), false, 3 )
g_pLineMap:AddStartPos( 24, D3DXVECTOR3( 7849.52, 0, 0 ), false, 3 )
g_pLineMap:AddStartPos( 25, D3DXVECTOR3( 8315.22, 0, 0 ), false, 3 )
g_pLineMap:AddStartPos( 26, D3DXVECTOR3( 8857.84, 0, 0 ), false, 3 )
g_pLineMap:AddStartPos( 27, D3DXVECTOR3( 8887.76, 480, 0 ), false, 5 )
g_pLineMap:AddStartPos( 28, D3DXVECTOR3( 9289.39, 480, 0 ), false, 5 )
g_pLineMap:AddStartPos( 29, D3DXVECTOR3( 9500, 480, 0 ), false, 5 )






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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(1000, 860, 0)", 
	"END_POS		= D3DXVECTOR3(1500, 860, 0)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(1500, 860, 0)", 
	"END_POS		= D3DXVECTOR3(2300, 720, 0)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(2300, 720, 0)", 
	"END_POS		= D3DXVECTOR3(2800, 720, 0)", 
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
	LINE_SET		= 2, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(5900, 0, 0)", 
	"END_POS		= D3DXVECTOR3(9100, 0, 0)", 
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
	LINE_SET		= 2, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(5500, 480, 0)", 
	"END_POS		= D3DXVECTOR3(6300, 480, 0)", 
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
	LINE_SET		= 2, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(8700, 480, 0)", 
	"END_POS		= D3DXVECTOR3(9500, 480, 0)", 
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
	LINE_SET		= 2, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(8200, 240, 0)", 
	"END_POS		= D3DXVECTOR3(8700, 240, 0)", 
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
	LINE_SET		= 2, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(6300, 240, 0)", 
	"END_POS		= D3DXVECTOR3(6800, 240, 0)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(3300, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(4500, 1200, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 9, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= 10, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(2800, 960, 0)", 
	"END_POS		= D3DXVECTOR3(3300, 960, 0)", 
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
	NEXT_LINE		= 11, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(3300, 960, 0)", 
	"END_POS		= D3DXVECTOR3(4500, 720, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 11, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 10, 
	NEXT_LINE		= -1, 
	LINE_SET		= 1, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(4500, 720, 0)", 
	"END_POS		= D3DXVECTOR3(5500, 720, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 12, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= 13, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(0, 960, 0)", 
	"END_POS		= D3DXVECTOR3(500, 960, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 13, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 12, 
	NEXT_LINE		= 14, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(500, 960, 0)", 
	"END_POS		= D3DXVECTOR3(1500, 1200, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 14, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 13, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(1500, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(2800, 1200, 0)", 
}

