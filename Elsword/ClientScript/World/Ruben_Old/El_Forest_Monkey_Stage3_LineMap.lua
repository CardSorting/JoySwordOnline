-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 0 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 220.582, 0, 0 ), true, 5 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -97.1372, 0, 0 ), true, 5 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 368.561, 0, 0 ), true, 5 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 50.8417, 0, 0 ), true, 5 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 1159.04, 0, 0 ), false, 5 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 1533.34, 0, 0 ), false, 5 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 1833.65, 0, 0 ), false, 5 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 2160.07, 0, 0 ), false, 5 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 2512.61, 0, 0 ), false, 5 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 2834.68, 0, 0 ), false, 5 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 1137.27, 240, 0 ), false, 3 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 1589.92, 480, 0 ), false, 4 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 1877.84, 480, 0 ), false, 4 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 2247.79, 480, 0 ), false, 4 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 2526.33, 480, 0 ), false, 4 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 2770.06, 480, 0 ), false, 4 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 3078.52, 720, 0 ), false, 2 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 3344.02, 720, 0 ), false, 2 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 3548.58, 720, 0 ), false, 2 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 3853.25, 720, 0 ), false, 2 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 4146.58, 960, 0 ), false, 1 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 4466.68, 960, 0 ), false, 1 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 4760.11, 960, 0 ), false, 1 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 4952.17, 960, 0 ), false, 1 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 5395.82, 720, 0 ), false, 7 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 5689.24, 720, 0 ), false, 7 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( 6009.34, 720, 0 ), false, 7 )
g_pLineMap:AddStartPos( 24, D3DXVECTOR3( 6270.76, 720, 0 ), false, 7 )
g_pLineMap:AddStartPos( 25, D3DXVECTOR3( 6446.81, 720, 0 ), false, 7 )
g_pLineMap:AddStartPos( 26, D3DXVECTOR3( 6782.92, 720, 0 ), false, 7 )
g_pLineMap:AddStartPos( 27, D3DXVECTOR3( 7177.71, 720, 0 ), false, 7 )
g_pLineMap:AddStartPos( 28, D3DXVECTOR3( 7481.81, 720, 0 ), false, 7 )
g_pLineMap:AddStartPos( 29, D3DXVECTOR3( 7965, 960, 0 ), false, 6 )
g_pLineMap:AddStartPos( 30, D3DXVECTOR3( 8521.11, 1200, 0 ), false, 0 )
g_pLineMap:AddStartPos( 31, D3DXVECTOR3( 8889.13, 1200, 0 ), false, 0 )
g_pLineMap:AddStartPos( 32, D3DXVECTOR3( 9353.15, 1200, 0 ), false, 0 )
g_pLineMap:AddStartPos( 33, D3DXVECTOR3( 9865.19, 1200, 0 ), false, 0 )
g_pLineMap:AddStartPos( 34, D3DXVECTOR3( 10126.5, 1200, 0 ), false, 0 )
g_pLineMap:AddStartPos( 35, D3DXVECTOR3( 10445, 1200, 0 ), false, 0 )






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
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(8193, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(10445, 1200, 0)", 
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
	LINE_SET		= 1, 
	"START_POS		= D3DXVECTOR3(4000, 960, 0)", 
	"END_POS		= D3DXVECTOR3(5123, 960, 0)", 
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
	"START_POS		= D3DXVECTOR3(2890, 720, 0)", 
	"END_POS		= D3DXVECTOR3(4000, 720, 0)", 
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
	"START_POS		= D3DXVECTOR3(890, 240, 0)", 
	"END_POS		= D3DXVECTOR3(1390, 240, 0)", 
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
	NEXT_LINE		= -2, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1390, 480, 0)", 
	"END_POS		= D3DXVECTOR3(2890, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(-110, 0, 0)", 
	"END_POS		= D3DXVECTOR3(2890, 0, 0)", 
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
	"START_POS		= D3DXVECTOR3(7693, 960, 0)", 
	"END_POS		= D3DXVECTOR3(8193, 960, 0)", 
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
	"START_POS		= D3DXVECTOR3(5123, 720, 0)", 
	"END_POS		= D3DXVECTOR3(7693, 720, 0)", 
}

