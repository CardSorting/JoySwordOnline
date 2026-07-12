-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 240 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 211.592, 240, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1553.52, 240, 0 ), false, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 65.2453, 240, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1699.96, 240, 0 ), false, 0 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 405.533, 960, 0 ), false, 5 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 552.673, 960, 0 ), false, 5 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 710.84, 960, 0 ), false, 5 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 858.164, 960, 0 ), false, 5 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 1008.27, 960, 0 ), false, 5 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 1158.37, 960, 0 ), false, 5 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 1289.57, 960, 0 ), false, 5 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 1411.42, 960, 0 ), false, 5 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 843.116, 720, 0 ), false, 4 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 979.909, 720, 0 ), false, 4 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 369.592, 480, 0 ), false, 2 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 509.55, 480, 0 ), false, 2 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 628.963, 480, 0 ), false, 2 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 775.632, 480, 0 ), false, 2 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 939.472, 480, 0 ), false, 2 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 1079.36, 480, 0 ), false, 2 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 1249.95, 480, 0 ), false, 2 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 1396.65, 480, 0 ), false, 2 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( -299.157, 960, 0 ), false, 1 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( -132.305, 960, 0 ), false, 1 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 1932.35, 960, 0 ), false, 3 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 2071.06, 960, 0 ), false, 3 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( 449.146, 240, 0 ), false, 0 )
g_pLineMap:AddStartPos( 24, D3DXVECTOR3( 576.53, 240, 0 ), false, 0 )
g_pLineMap:AddStartPos( 25, D3DXVECTOR3( 729.391, 240, 0 ), false, 0 )
g_pLineMap:AddStartPos( 26, D3DXVECTOR3( 878.006, 240, 0 ), false, 0 )
g_pLineMap:AddStartPos( 27, D3DXVECTOR3( 1013.91, 240, 0 ), false, 0 )
g_pLineMap:AddStartPos( 28, D3DXVECTOR3( 1192.28, 240, 0 ), false, 0 )
g_pLineMap:AddStartPos( 29, D3DXVECTOR3( 1332.37, 240, 0 ), false, 0 )






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
	"START_POS		= D3DXVECTOR3(0, 240, 0)", 
	"END_POS		= D3DXVECTOR3(1800, 240, 0)", 
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
	"START_POS		= D3DXVECTOR3(-400, 960, 0)", 
	"END_POS		= D3DXVECTOR3(0, 960, 0)", 
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
	"START_POS		= D3DXVECTOR3(304, 480, 0)", 
	"END_POS		= D3DXVECTOR3(1495, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(1800, 960, 0)", 
	"END_POS		= D3DXVECTOR3(2200, 960, 0)", 
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
	"START_POS		= D3DXVECTOR3(699, 720, 0)", 
	"END_POS		= D3DXVECTOR3(1099, 720, 0)", 
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
	"START_POS		= D3DXVECTOR3(304, 960, 0)", 
	"END_POS		= D3DXVECTOR3(1495, 960, 0)", 
}

