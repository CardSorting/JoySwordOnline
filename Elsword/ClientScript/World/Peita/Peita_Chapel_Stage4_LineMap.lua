-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( -50 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 435.958, 166, 0 ), true, 9 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 264.599, 166, 0 ), true, 9 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 108.513, 166, 0 ), true, 9 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -59.637, 166, 0 ), true, 9 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 1404.36, 166, -110.384 ), false, 11 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 1547.57, 166, -230.73 ), false, 11 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 1748.08, 166, -300 ), false, 12 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 1955.06, 166, -300 ), false, 13 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 2172.69, 166, -275.05 ), false, 14 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 2369.86, 166, -109.357 ), false, 14 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 2561.5, 166, 0 ), false, 15 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 2775.11, 166, 0 ), false, 15 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 961.341, 405.851, 0 ), false, 7 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 1144.14, 445.81, 0 ), false, 7 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 1361.84, 493.395, 0 ), false, 7 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 1571.16, 526, 0 ), false, 8 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 1796.44, 526, 0 ), false, 8 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 2179.24, 422, 0 ), false, 1 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 2360.2, 422, 0 ), false, 1 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 3006, 166, 0 ), false, 16 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 3227.28, 166, 0 ), false, 17 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 3395.97, 166, 0 ), false, 17 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 3604.95, 166, 0 ), false, 17 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 3793.44, 166, 0 ), false, 17 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 4010.62, 166, 0 ), false, 17 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 4236.33, 166, 0 ), false, 17 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( 4418.91, 166, 0 ), false, 18 )
g_pLineMap:AddStartPos( 24, D3DXVECTOR3( 4656.46, 166, 0 ), false, 19 )
g_pLineMap:AddStartPos( 25, D3DXVECTOR3( 4843.47, 166, 0 ), false, 20 )
g_pLineMap:AddStartPos( 26, D3DXVECTOR3( 5049.73, 166, 0 ), false, 21 )
g_pLineMap:AddStartPos( 27, D3DXVECTOR3( 5211.17, 166, 0 ), false, 22 )
g_pLineMap:AddStartPos( 28, D3DXVECTOR3( 5387.94, 166, 0 ), false, 22 )
g_pLineMap:AddStartPos( 29, D3DXVECTOR3( 4373.67, 406, 0 ), false, 2 )
g_pLineMap:AddStartPos( 30, D3DXVECTOR3( 4530.79, 406, 0 ), false, 2 )
g_pLineMap:AddStartPos( 31, D3DXVECTOR3( 4450.93, 886, 0 ), false, 3 )
g_pLineMap:AddStartPos( 32, D3DXVECTOR3( 5106.94, 646, 0 ), false, 4 )
g_pLineMap:AddStartPos( 33, D3DXVECTOR3( 5687.32, 406, 0 ), false, 5 )
g_pLineMap:AddStartPos( 34, D3DXVECTOR3( 5878.98, 406, 0 ), false, 5 )
g_pLineMap:AddStartPos( 35, D3DXVECTOR3( 6053.17, 406, 0 ), false, 5 )
g_pLineMap:AddStartPos( 36, D3DXVECTOR3( 6384.1, 166, 0 ), false, 0 )
g_pLineMap:AddStartPos( 37, D3DXVECTOR3( 6567.64, 166, 0 ), false, 0 )
g_pLineMap:AddStartPos( 38, D3DXVECTOR3( 6758.23, 166, 0 ), false, 0 )
g_pLineMap:AddStartPos( 39, D3DXVECTOR3( 6938.61, 166, 0 ), false, 0 )
g_pLineMap:AddStartPos( 40, D3DXVECTOR3( 7108.34, 166, 0 ), false, 0 )
g_pLineMap:AddStartPos( 41, D3DXVECTOR3( 7270, 166, 0 ), false, 0 )






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
	"START_POS		= D3DXVECTOR3(6248, 166, 0)", 
	"END_POS		= D3DXVECTOR3(7270, 166, 0)", 
	CAMERA_INDEX	= 0,
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
	"START_POS		= D3DXVECTOR3(1992, 422, 0)", 
	"END_POS		= D3DXVECTOR3(2500, 422, 0)", 
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
	"START_POS		= D3DXVECTOR3(4244, 406, 0)", 
	"END_POS		= D3DXVECTOR3(4669, 406, 0)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(4244, 886, 0)", 
	"END_POS		= D3DXVECTOR3(4669, 886, 0)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(4911, 646, 0)", 
	"END_POS		= D3DXVECTOR3(5336, 646, 0)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(5548, 406, 0)", 
	"END_POS		= D3DXVECTOR3(6248, 406, 0)", 
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
	NEXT_LINE		= 7, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(448, 399, 0)", 
	"END_POS		= D3DXVECTOR3(930, 399, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 7, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 6, 
	NEXT_LINE		= 8, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(930, 399, 0)", 
	"END_POS		= D3DXVECTOR3(1511, 526, 0)", 
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
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(1511, 526, 0)", 
	"END_POS		= D3DXVECTOR3(1992, 526, 0)", 
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
	"START_POS		= D3DXVECTOR3(-151, 166, 0)", 
	"END_POS		= D3DXVECTOR3(848, 166, 0)", 
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
	"START_POS		= D3DXVECTOR3(848, 166, 0)", 
	"END_POS		= D3DXVECTOR3(1273, 166, 0)", 
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
	NEXT_LINE		= 12, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(1273, 166, 0)", 
	"END_POS		= D3DXVECTOR3(1630, 166, -300)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(1630, 166, -300)", 
	"END_POS		= D3DXVECTOR3(1886, 166, -300)", 
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
	"START_POS		= D3DXVECTOR3(1886, 166, -300)", 
	"END_POS		= D3DXVECTOR3(2143, 166, -300)", 
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
	NEXT_LINE		= 15, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(2143, 166, -300)", 
	"END_POS		= D3DXVECTOR3(2500, 166, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 15, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 14, 
	NEXT_LINE		= 16, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(2500, 166, 0)", 
	"END_POS		= D3DXVECTOR3(2836, 166, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 16, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 15, 
	NEXT_LINE		= 17, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(2836, 166, 0)", 
	"END_POS		= D3DXVECTOR3(3006, 166, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 17, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 16, 
	NEXT_LINE		= 18, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(3006, 166, 0)", 
	"END_POS		= D3DXVECTOR3(4244, 166, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 18, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 17, 
	NEXT_LINE		= 19, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(4244, 166, 0)", 
	"END_POS		= D3DXVECTOR3(4471, 166, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 19, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 18, 
	NEXT_LINE		= 20, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(4471, 166, 0)", 
	"END_POS		= D3DXVECTOR3(4698, 166, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 20, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 19, 
	NEXT_LINE		= 21, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(4698, 166, 0)", 
	"END_POS		= D3DXVECTOR3(4911, 166, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 21, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 20, 
	NEXT_LINE		= 22, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(4911, 166, 0)", 
	"END_POS		= D3DXVECTOR3(5123, 166, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 22, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 21, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(5123, 166, 0)", 
	"END_POS		= D3DXVECTOR3(5548, 166, 0)", 
}

g_pLineMap:AddCameraData_LUA	
{
	FOCUS_UNIT 	= TRUE,
	"EYE_POS	= D3DXVECTOR3(6137.796, 643.1, -1076.424)", 
	"LOOKAT_POS	= D3DXVECTOR3(0,0,0)", 
	
}
