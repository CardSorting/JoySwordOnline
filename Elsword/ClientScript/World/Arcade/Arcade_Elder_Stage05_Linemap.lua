-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 240 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 43.1798, 240, 0 ), true, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 240.341, 240, 0 ), true, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2177.16, 240, 0 ), true, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2426.51, 240, 0 ), true, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 385.313, 240, 0 ), true, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2066.98, 240, 0 ), true, 2 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 37.3839, 720, 0 ), false, 13 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 37.3701, 960, 0 ), false, 10 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 170.745, 960, 0 ), false, 10 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 286.723, 960, 0 ), false, 10 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 507.081, 960, 0 ), false, 10 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 205.55, 720, 0 ), false, 13 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 884.016, 720, 0 ), false, 14 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 884.022, 480, 0 ), false, 4 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 1046.39, 480, 0 ), false, 4 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 1243.55, 480, 0 ), false, 4 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 1417.51, 480, 0 ), false, 4 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 1487.1, 720, 0 ), false, 15 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 2124.97, 720, 0 ), false, 16 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 2293.14, 720, 0 ), false, 16 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 1875.62, 960, 0 ), false, 12 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 2049.59, 960, 0 ), false, 12 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 2223.55, 960, 0 ), false, 12 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 2136.57, 1200, 0 ), false, 6 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 2339.54, 1200, 0 ), false, 6 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 1939.41, 1440, 0 ), false, 5 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( 2165.57, 1440, 0 ), false, 5 )
g_pLineMap:AddStartPos( 24, D3DXVECTOR3( 2339.54, 1440, 0 ), false, 5 )
g_pLineMap:AddStartPos( 25, D3DXVECTOR3( 83.7343, 1440, 0 ), false, 1 )
g_pLineMap:AddStartPos( 26, D3DXVECTOR3( 298.297, 1440, 0 ), false, 1 )
g_pLineMap:AddStartPos( 27, D3DXVECTOR3( 541.855, 1440, 0 ), false, 1 )
g_pLineMap:AddStartPos( 28, D3DXVECTOR3( 48.9539, 1200, 0 ), false, 7 )
g_pLineMap:AddStartPos( 29, D3DXVECTOR3( 251.917, 1200, 0 ), false, 7 )
g_pLineMap:AddStartPos( 30, D3DXVECTOR3( 889.801, 1200, 0 ), false, 8 )
g_pLineMap:AddStartPos( 31, D3DXVECTOR3( 1185.54, 1440, 0 ), false, 3 )
g_pLineMap:AddStartPos( 32, D3DXVECTOR3( 1516.09, 1200, 0 ), false, 9 )
g_pLineMap:AddStartPos( 33, D3DXVECTOR3( 1231.94, 960, 0 ), false, 11 )
g_pLineMap:AddStartPos( 34, D3DXVECTOR3( 106.917, 1680, 0 ), false, 0 )
g_pLineMap:AddStartPos( 35, D3DXVECTOR3( 362.075, 1680, 0 ), false, 0 )
g_pLineMap:AddStartPos( 36, D3DXVECTOR3( 582.439, 1680, 0 ), false, 0 )
g_pLineMap:AddStartPos( 37, D3DXVECTOR3( 1898.82, 1680, 0 ), false, 0 )
g_pLineMap:AddStartPos( 38, D3DXVECTOR3( 2148.18, 1680, 0 ), false, 0 )
g_pLineMap:AddStartPos( 39, D3DXVECTOR3( 2368.54, 1680, 0 ), false, 0 )






-- LINE DATA -- 
g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 0, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -2, 
	NEXT_LINE		= -2, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-114, 1680, 0)", 
	"END_POS		= D3DXVECTOR3(2537, 1680, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 1, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -2, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-114, 1440, 0)", 
	"END_POS		= D3DXVECTOR3(723, 1440, 0)", 
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
	"START_POS		= D3DXVECTOR3(-114, 240, 0)", 
	"END_POS		= D3DXVECTOR3(2537, 240, 0)", 
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
	"START_POS		= D3DXVECTOR3(1028, 1440, 0)", 
	"END_POS		= D3DXVECTOR3(1373, 1440, 0)", 
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
	"START_POS		= D3DXVECTOR3(733, 480, 0)", 
	"END_POS		= D3DXVECTOR3(1678, 480, 0)", 
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
	NEXT_LINE		= -2, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1678, 1440, 0)", 
	"END_POS		= D3DXVECTOR3(2516, 1440, 0)", 
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
	NEXT_LINE		= -2, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1978, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(2516, 1200, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 7, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -2, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-114, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(423, 1200, 0)", 
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
	"START_POS		= D3DXVECTOR3(723, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(1028, 1200, 0)", 
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
	"START_POS		= D3DXVECTOR3(1373, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(1679, 1200, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 10, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -2, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-114, 960, 0)", 
	"END_POS		= D3DXVECTOR3(723, 960, 0)", 
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
	"START_POS		= D3DXVECTOR3(1028, 960, 0)", 
	"END_POS		= D3DXVECTOR3(1373, 960, 0)", 
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
	NEXT_LINE		= -2, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1678, 960, 0)", 
	"END_POS		= D3DXVECTOR3(2516, 960, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 13, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -2, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-114, 720, 0)", 
	"END_POS		= D3DXVECTOR3(423, 720, 0)", 
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
	"START_POS		= D3DXVECTOR3(723, 720, 0)", 
	"END_POS		= D3DXVECTOR3(1028, 720, 0)", 
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
	"START_POS		= D3DXVECTOR3(1373, 720, 0)", 
	"END_POS		= D3DXVECTOR3(1679, 720, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 16, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -2, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1978, 720, 0)", 
	"END_POS		= D3DXVECTOR3(2516, 720, 0)", 
}

