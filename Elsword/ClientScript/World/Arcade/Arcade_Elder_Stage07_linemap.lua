-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 240 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -394.022, 1920, 0 ), true, 12 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2205.02, 1920, 0 ), false, 13 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -538.863, 1920, 0 ), true, 12 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2325.04, 1920, 0 ), false, 13 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -667.15, 1920, 0 ), true, 12 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2436.79, 1920, 0 ), false, 13 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( -542.995, 480, 0 ), false, 1 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( -348.491, 480, 0 ), false, 1 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( -133.294, 480, 0 ), false, 1 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 61.2107, 480, 0 ), false, 1 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 247.438, 480, 0 ), false, 1 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 429.527, 480, 0 ), false, 1 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 694.391, 240, 0 ), false, 2 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 859.934, 240, 0 ), false, 2 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 1021.34, 240, 0 ), false, 2 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 1178.6, 240, 0 ), false, 2 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 1418.65, 480, 0 ), false, 0 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 1584.2, 480, 0 ), false, 0 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 1770.45, 480, 0 ), false, 0 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 1948.42, 480, 0 ), false, 0 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 2130.53, 480, 0 ), false, 0 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 2341.6, 480, 0 ), false, 0 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 160.522, 960, 0 ), false, 4 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 1662.83, 960, 0 ), false, 9 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( -228.487, 1200, 0 ), false, 14 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 2063.57, 1200, 0 ), false, 8 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 152.245, 1440, 0 ), false, 5 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 1658.69, 1440, 0 ), false, 7 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( -240.903, 1680, 0 ), false, 6 )
g_pLineMap:AddStartPos( 24, D3DXVECTOR3( 2101.54, 1680, 0 ), false, 3 )
g_pLineMap:AddStartPos( 25, D3DXVECTOR3( 748.207, 1920, 0 ), false, 15 )
g_pLineMap:AddStartPos( 26, D3DXVECTOR3( 926.161, 1920, 0 ), false, 15 )
g_pLineMap:AddStartPos( 27, D3DXVECTOR3( 1112.39, 1920, 0 ), false, 15 )






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
	"START_POS		= D3DXVECTOR3(1259, 480, 0)", 
	"END_POS		= D3DXVECTOR3(2521, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(-703, 480, 0)", 
	"END_POS		= D3DXVECTOR3(556, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(556, 240, 0)", 
	"END_POS		= D3DXVECTOR3(1259, 240, 0)", 
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
	"START_POS		= D3DXVECTOR3(1880, 1680, 0)", 
	"END_POS		= D3DXVECTOR3(2237, 1680, 0)", 
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
	"START_POS		= D3DXVECTOR3(-14, 960, 0)", 
	"END_POS		= D3DXVECTOR3(320, 960, 0)", 
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
	"START_POS		= D3DXVECTOR3(-14, 1440, 0)", 
	"END_POS		= D3DXVECTOR3(320, 1440, 0)", 
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
	"START_POS		= D3DXVECTOR3(-414, 1680, 0)", 
	"END_POS		= D3DXVECTOR3(-79, 1680, 0)", 
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
	"START_POS		= D3DXVECTOR3(1480, 1440, 0)", 
	"END_POS		= D3DXVECTOR3(1837, 1440, 0)", 
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
	"START_POS		= D3DXVECTOR3(1880, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(2237, 1200, 0)", 
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
	"START_POS		= D3DXVECTOR3(1480, 960, 0)", 
	"END_POS		= D3DXVECTOR3(1837, 960, 0)", 
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
	"START_POS		= D3DXVECTOR3(-414, 720, 0)", 
	"END_POS		= D3DXVECTOR3(-79, 720, 0)", 
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
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1880, 720, 0)", 
	"END_POS		= D3DXVECTOR3(2237, 720, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 12, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -2, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-734, 1920, 0)", 
	"END_POS		= D3DXVECTOR3(-328, 1920, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 13, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -2, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(2123, 1920, 0)", 
	"END_POS		= D3DXVECTOR3(2529, 1920, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 14, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-414, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(-79, 1200, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 15, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(556, 1920, 0)", 
	"END_POS		= D3DXVECTOR3(1259, 1920, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 16, 
	ENABLE			= FALSE,
	LINE_TYPE 		= LINE_TYPE["LT_JUMP_UP_REL"],  
	POTAL_GROUP		= -1, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(784, 400, 0)", 
	"END_POS		= D3DXVECTOR3(1023, 400, 0)", 
	
	JUMP_SPEED_X = 700,  -- 요고
   	JUMP_SPEED_Y = 3500,  -- 요고
}

