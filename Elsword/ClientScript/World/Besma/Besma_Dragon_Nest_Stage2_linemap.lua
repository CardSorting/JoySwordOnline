-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( -100 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 678.535, 240, 0 ), true, 11 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 346.421, 240, 0 ), true, 11 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 33.8438, 240, 0 ), true, 11 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 991.11, 240, 0 ), true, 11 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 844.589, 240, 0 ), true, 11 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 492.943, 240, 0 ), true, 11 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 190.135, 240, 0 ), true, 11 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 1713.96, 480, 0 ), false, 10 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 1928.88, 480, 0 ), false, 10 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 2124.26, 480, 0 ), false, 10 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 2651.79, 720, 0 ), false, 9 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 2905.81, 720, 0 ), false, 9 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 3130.51, 720, 0 ), false, 9 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 3638.58, 480, 0 ), false, 8 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 1724.24, 142.728, 0 ), false, 12 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 1979.6, 66.1203, 0 ), false, 12 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 2261.06, 0, 0 ), false, 13 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 2583.47, 0, 0 ), false, 13 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 2905.88, 0, 0 ), false, 13 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 3238.06, 0, 0 ), false, 13 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 3540.93, 0, 0 ), false, 13 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 3794.93, 0, 0 ), false, 13 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 5162.87, 480, 0 ), false, 0 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 5426.72, 480, 0 ), false, 0 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 5680.79, 480, 0 ), false, 0 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 6130.31, 720, 0 ), false, 6 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 6638.51, 960, 0 ), false, 5 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 7009.91, 960, 0 ), false, 5 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 7351.97, 960, 0 ), false, 5 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( 7713.59, 960, 0 ), false, 5 )
g_pLineMap:AddStartPos( 24, D3DXVECTOR3( 8231.6, 720, 0 ), false, 4 )
g_pLineMap:AddStartPos( 25, D3DXVECTOR3( 9091.76, 480, 0 ), false, 3 )
g_pLineMap:AddStartPos( 26, D3DXVECTOR3( 9600, 480, 0 ), false, 3 )
g_pLineMap:AddStartPos( 27, D3DXVECTOR3( 8495.49, 240, 0 ), false, 2 )
g_pLineMap:AddStartPos( 28, D3DXVECTOR3( 8065.44, 240, 0 ), false, 2 )
g_pLineMap:AddStartPos( 29, D3DXVECTOR3( 7703.81, 240, 0 ), false, 2 )
g_pLineMap:AddStartPos( 30, D3DXVECTOR3( 7332.42, 240, 0 ), false, 2 )
g_pLineMap:AddStartPos( 31, D3DXVECTOR3( 6980.56, 240, 0 ), false, 2 )
g_pLineMap:AddStartPos( 32, D3DXVECTOR3( 6675.86, 247.242, 0 ), false, 1 )
g_pLineMap:AddStartPos( 33, D3DXVECTOR3( 6389.37, 333.188, 0 ), false, 1 )
g_pLineMap:AddStartPos( 34, D3DXVECTOR3( 6106.06, 418.182, 0 ), false, 1 )






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
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(4900, 480, 0)", 
	"END_POS		= D3DXVECTOR3(5900, 480, 0)", 
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
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(5900, 480, 0)", 
	"END_POS		= D3DXVECTOR3(6700, 240, 0)", 
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
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(6700, 240, 0)", 
	"END_POS		= D3DXVECTOR3(8600, 240, 0)", 
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
	"START_POS		= D3DXVECTOR3(8600, 480, 0)", 
	"END_POS		= D3DXVECTOR3(9600, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(7900, 720, 0)", 
	"END_POS		= D3DXVECTOR3(8600, 720, 0)", 
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
	"START_POS		= D3DXVECTOR3(6400, 960, 0)", 
	"END_POS		= D3DXVECTOR3(7900, 960, 0)", 
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
	"START_POS		= D3DXVECTOR3(5900, 720, 0)", 
	"END_POS		= D3DXVECTOR3(6400, 720, 0)", 
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
	LINE_SET		= 1, 
	"START_POS		= D3DXVECTOR3(3900, 240, 0)", 
	"END_POS		= D3DXVECTOR3(4900, 240, 0)", 
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
	"START_POS		= D3DXVECTOR3(3400, 480, 0)", 
	"END_POS		= D3DXVECTOR3(3900, 480, 0)", 
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
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(2400, 720, 0)", 
	"END_POS		= D3DXVECTOR3(3400, 720, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 10, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1400, 480, 0)", 
	"END_POS		= D3DXVECTOR3(2400, 480, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 11, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= 12, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(0, 240, 0)", 
	"END_POS		= D3DXVECTOR3(1400, 240, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 12, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 11, 
	NEXT_LINE		= 13, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1400, 240, 0)", 
	"END_POS		= D3DXVECTOR3(2200, 0, 0)", 
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
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(2200, 0, 0)", 
	"END_POS		= D3DXVECTOR3(3900, 0, 0)", 
}

