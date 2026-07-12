-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 240 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 700.26, 240, 0 ), false, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1140.14, 240, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 826.276, 240, 0 ), false, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 955.937, 240, 0 ), true, 0 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 444.364, 480, 0 ), false, 1 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 293.14, 480, 0 ), false, 1 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 137.619, 480, 0 ), false, 1 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( -74.1332, 480, 0 ), false, 1 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( -298.825, 480, 0 ), false, 1 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( -493.27, 480, 0 ), false, 1 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( -627.221, 480, 0 ), false, 1 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( -427.976, 720, 0 ), false, 8 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( -558.796, 720, 0 ), false, 8 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( -680.93, 720, 0 ), false, 8 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( -29.9326, 960, 0 ), false, 4 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( -147.996, 960, 0 ), false, 4 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( -287.925, 960, 0 ), false, 4 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 1764.89, 1200, 0 ), false, 3 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 1634.02, 1200, 0 ), false, 3 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 1511.9, 1200, 0 ), false, 3 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 1394.13, 1200, 0 ), false, 3 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 1210.95, 1200, 0 ), false, 3 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 1019.04, 1200, 0 ), false, 3 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 853.304, 1200, 0 ), false, 3 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 674.474, 1200, 0 ), false, 3 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 552.352, 1200, 0 ), false, 3 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( 425.868, 1200, 0 ), false, 3 )
g_pLineMap:AddStartPos( 24, D3DXVECTOR3( 247.046, 1200, 0 ), false, 3 )
g_pLineMap:AddStartPos( 25, D3DXVECTOR3( 111.84, 1200, 0 ), false, 3 )
g_pLineMap:AddStartPos( 26, D3DXVECTOR3( -52.2521, 1440, 0 ), false, 5 )
g_pLineMap:AddStartPos( 27, D3DXVECTOR3( -189.305, 1440, 0 ), false, 5 )
g_pLineMap:AddStartPos( 28, D3DXVECTOR3( -314, 1440, 0 ), false, 5 )
g_pLineMap:AddStartPos( 29, D3DXVECTOR3( -25.765, 1920, 0 ), false, 13 )
g_pLineMap:AddStartPos( 30, D3DXVECTOR3( -128.589, 1920, 0 ), false, 13 )
g_pLineMap:AddStartPos( 31, D3DXVECTOR3( -231.414, 1920, 0 ), false, 13 )
g_pLineMap:AddStartPos( 32, D3DXVECTOR3( 1740.34, 1680, 0 ), false, 10 )
g_pLineMap:AddStartPos( 33, D3DXVECTOR3( 1594.91, 1680, 0 ), false, 10 )
g_pLineMap:AddStartPos( 34, D3DXVECTOR3( 1422.92, 1680, 0 ), false, 10 )
g_pLineMap:AddStartPos( 35, D3DXVECTOR3( 1242.12, 1680, 0 ), false, 10 )
g_pLineMap:AddStartPos( 36, D3DXVECTOR3( 1087.89, 1680, 0 ), false, 10 )
g_pLineMap:AddStartPos( 37, D3DXVECTOR3( 924.725, 1680, 0 ), false, 10 )
g_pLineMap:AddStartPos( 38, D3DXVECTOR3( 743.922, 1680, 0 ), false, 10 )
g_pLineMap:AddStartPos( 39, D3DXVECTOR3( 616.038, 1680, 0 ), false, 10 )
g_pLineMap:AddStartPos( 40, D3DXVECTOR3( 457.284, 1680, 0 ), false, 10 )
g_pLineMap:AddStartPos( 41, D3DXVECTOR3( 289.711, 1680, 0 ), false, 10 )
g_pLineMap:AddStartPos( 42, D3DXVECTOR3( 170.646, 1680, 0 ), false, 10 )
g_pLineMap:AddStartPos( 43, D3DXVECTOR3( 69.2196, 1680, 0 ), false, 10 )
g_pLineMap:AddStartPos( 44, D3DXVECTOR3( 1755.36, 2160, 0 ), false, 11 )
g_pLineMap:AddStartPos( 45, D3DXVECTOR3( 1648.36, 2160, 0 ), false, 11 )
g_pLineMap:AddStartPos( 46, D3DXVECTOR3( 1519.19, 2160, 0 ), false, 11 )
g_pLineMap:AddStartPos( 47, D3DXVECTOR3( 1389.76, 2160, 0 ), false, 11 )
g_pLineMap:AddStartPos( 48, D3DXVECTOR3( 1247.1, 2160, 0 ), false, 11 )
g_pLineMap:AddStartPos( 49, D3DXVECTOR3( 1091.1, 2160, 0 ), false, 11 )
g_pLineMap:AddStartPos( 50, D3DXVECTOR3( 943.948, 2160, 0 ), false, 11 )
g_pLineMap:AddStartPos( 51, D3DXVECTOR3( 796.795, 2160, 0 ), false, 11 )
g_pLineMap:AddStartPos( 52, D3DXVECTOR3( 671.969, 2160, 0 ), false, 11 )
g_pLineMap:AddStartPos( 53, D3DXVECTOR3( 551.6, 2160, 0 ), false, 11 )
g_pLineMap:AddStartPos( 54, D3DXVECTOR3( 413.4, 2160, 0 ), false, 11 )
g_pLineMap:AddStartPos( 55, D3DXVECTOR3( 306.405, 2160, 0 ), false, 11 )
g_pLineMap:AddStartPos( 56, D3DXVECTOR3( 203.941, 2160, 0 ), false, 11 )
g_pLineMap:AddStartPos( 57, D3DXVECTOR3( 79.1146, 2160, 0 ), false, 11 )
g_pLineMap:AddStartPos( 58, D3DXVECTOR3( 2034.68, 1920, 0 ), false, 12 )
g_pLineMap:AddStartPos( 59, D3DXVECTOR3( 1951.01, 1920, 0 ), false, 12 )
g_pLineMap:AddStartPos( 60, D3DXVECTOR3( 1867.28, 1920, 0 ), false, 12 )
g_pLineMap:AddStartPos( 61, D3DXVECTOR3( 2060.13, 1440, 0 ), false, 6 )
g_pLineMap:AddStartPos( 62, D3DXVECTOR3( 1942.65, 1440, 0 ), false, 6 )
g_pLineMap:AddStartPos( 63, D3DXVECTOR3( 1825.18, 1440, 0 ), false, 6 )
g_pLineMap:AddStartPos( 64, D3DXVECTOR3( 2076.17, 960, 0 ), false, 7 )
g_pLineMap:AddStartPos( 65, D3DXVECTOR3( 1968.61, 960, 0 ), false, 7 )
g_pLineMap:AddStartPos( 66, D3DXVECTOR3( 1848.13, 960, 0 ), false, 7 )
g_pLineMap:AddStartPos( 67, D3DXVECTOR3( 2472.27, 720, 0 ), false, 9 )
g_pLineMap:AddStartPos( 68, D3DXVECTOR3( 2361.37, 720, 0 ), false, 9 )
g_pLineMap:AddStartPos( 69, D3DXVECTOR3( 2250.5, 720, 0 ), false, 9 )
g_pLineMap:AddStartPos( 70, D3DXVECTOR3( 2405.37, 480, 0 ), false, 2 )
g_pLineMap:AddStartPos( 71, D3DXVECTOR3( 2294.68, 480, 0 ), false, 2 )
g_pLineMap:AddStartPos( 72, D3DXVECTOR3( 2162.71, 480, 0 ), false, 2 )
g_pLineMap:AddStartPos( 73, D3DXVECTOR3( 2064.79, 480, 0 ), false, 2 )
g_pLineMap:AddStartPos( 74, D3DXVECTOR3( 1890.24, 480, 0 ), false, 2 )
g_pLineMap:AddStartPos( 75, D3DXVECTOR3( 1792.36, 480, 0 ), false, 2 )
g_pLineMap:AddStartPos( 76, D3DXVECTOR3( 1600.78, 480, 0 ), false, 2 )
g_pLineMap:AddStartPos( 77, D3DXVECTOR3( 1485.84, 480, 0 ), false, 2 )
g_pLineMap:AddStartPos( 78, D3DXVECTOR3( 1387.92, 480, 0 ), false, 2 )






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
	"START_POS		= D3DXVECTOR3(556, 240, 0)", 
	"END_POS		= D3DXVECTOR3(1259, 240, 0)", 
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
	"START_POS		= D3DXVECTOR3(-653, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(1259, 480, 0)", 
	"END_POS		= D3DXVECTOR3(2471, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(-14, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(1837, 1200, 0)", 
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
	"START_POS		= D3DXVECTOR3(-314, 960, 0)", 
	"END_POS		= D3DXVECTOR3(20, 960, 0)", 
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
	"START_POS		= D3DXVECTOR3(-314, 1440, 0)", 
	"END_POS		= D3DXVECTOR3(20, 1440, 0)", 
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
	"START_POS		= D3DXVECTOR3(1780, 1440, 0)", 
	"END_POS		= D3DXVECTOR3(2137, 1440, 0)", 
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
	"START_POS		= D3DXVECTOR3(1780, 960, 0)", 
	"END_POS		= D3DXVECTOR3(2137, 960, 0)", 
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
	"START_POS		= D3DXVECTOR3(-714, 720, 0)", 
	"END_POS		= D3DXVECTOR3(-379, 720, 0)", 
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
	"START_POS		= D3DXVECTOR3(2180, 720, 0)", 
	"END_POS		= D3DXVECTOR3(2537, 720, 0)", 
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
	"START_POS		= D3DXVECTOR3(-14, 1680, 0)", 
	"END_POS		= D3DXVECTOR3(1837, 1680, 0)", 
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
	"START_POS		= D3DXVECTOR3(-14, 2160, 0)", 
	"END_POS		= D3DXVECTOR3(1837, 2160, 0)", 
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
	"START_POS		= D3DXVECTOR3(1780, 1920, 0)", 
	"END_POS		= D3DXVECTOR3(2137, 1920, 0)", 
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
	"START_POS		= D3DXVECTOR3(-314, 1920, 0)", 
	"END_POS		= D3DXVECTOR3(20, 1920, 0)", 
}

