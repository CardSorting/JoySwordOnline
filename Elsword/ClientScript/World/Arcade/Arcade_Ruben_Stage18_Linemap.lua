-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 240 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1211.82, 480, 0 ), false, 5 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2272.38, 480, 0 ), true, 7 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1385.34, 480, 0 ), false, 5 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2096.01, 480, 0 ), true, 7 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( -639, 1440, 0 ), false, 3 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 4125, 1440, 0 ), false, 9 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 849.336, 1560, 0 ), false, 10 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 471.646, 1320, 0 ), false, 0 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 801.635, 1080, 0 ), false, 1 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 1184.1, 840, 0 ), false, 2 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 2298.62, 840, 0 ), false, 11 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 2664.33, 1080, 0 ), false, 12 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 3000.79, 1320, 0 ), false, 13 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 2658.55, 1560, 0 ), false, 14 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 1521.82, 1800, 0 ), false, 15 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 1337.42, 1800, 0 ), false, 15 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 1142.27, 1800, 0 ), false, 15 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 1678.02, 1800, 0 ), false, 15 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 1812.2, 1800, 0 ), false, 15 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 1917.99, 1800, 0 ), false, 15 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 2051.93, 1800, 0 ), false, 15 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 2219.35, 1800, 0 ), false, 15 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 2336.55, 1800, 0 ), false, 15 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 1764.24, 240, 0 ), true, 6 )






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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(328, 1320, 0)", 
	"END_POS		= D3DXVECTOR3(607, 1320, 0)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(686, 1080, 0)", 
	"END_POS		= D3DXVECTOR3(965, 1080, 0)", 
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
	"START_POS		= D3DXVECTOR3(1043, 840, 0)", 
	"END_POS		= D3DXVECTOR3(1322, 840, 0)", 
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
	"START_POS		= D3DXVECTOR3(-639, 1440, 0)", 
	"END_POS		= D3DXVECTOR3(-308, 1440, 0)", 
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
	"START_POS		= D3DXVECTOR3(-308, 1440, 0)", 
	"END_POS		= D3DXVECTOR3(1130, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(1130, 480, 0)", 
	"END_POS		= D3DXVECTOR3(1480, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(1480, 240, 0)", 
	"END_POS		= D3DXVECTOR3(2000, 240, 0)", 
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
	NEXT_LINE		= 8, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(2000, 480, 0)", 
	"END_POS		= D3DXVECTOR3(2364, 480, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 8, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 7, 
	NEXT_LINE		= 9, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(2364, 480, 0)", 
	"END_POS		= D3DXVECTOR3(3798, 1440, 0)", 
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
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(3798, 1440, 0)", 
	"END_POS		= D3DXVECTOR3(4125, 1440, 0)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(686, 1560, 0)", 
	"END_POS		= D3DXVECTOR3(965, 1560, 0)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(2158, 840, 0)", 
	"END_POS		= D3DXVECTOR3(2437, 840, 0)", 
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
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(2512, 1080, 0)", 
	"END_POS		= D3DXVECTOR3(2791, 1080, 0)", 
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
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(2866, 1320, 0)", 
	"END_POS		= D3DXVECTOR3(3145, 1320, 0)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(2512, 1560, 0)", 
	"END_POS		= D3DXVECTOR3(2791, 1560, 0)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(1057, 1800, 0)", 
	"END_POS		= D3DXVECTOR3(2440, 1800, 0)", 
}

