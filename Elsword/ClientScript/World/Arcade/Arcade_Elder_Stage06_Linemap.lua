-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 240 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1403.42, 240, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1670.68, 240, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1541.36, 240, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1291.35, 240, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1067.2, 240, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1213.76, 240, 0 ), true, 0 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( -696.501, 480, 0 ), false, 1 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( -420.631, 720, 0 ), false, 2 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( -256.82, 720, 0 ), false, 2 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 139.797, 480, 0 ), false, 3 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 372.599, 240, 0 ), false, 4 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 674.356, 480, 0 ), false, 7 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 1027.85, 720, 0 ), false, 6 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 1183.05, 720, 0 ), false, 6 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 1484.85, 480, 0 ), false, 5 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 1752.14, 240, 0 ), false, 11 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 2053.92, 480, 0 ), false, 10 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 2476.44, 720, 0 ), false, 9 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 2855.85, 480, 0 ), false, 8 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 3123.15, 240, 0 ), false, 15 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 3416.34, 480, 0 ), false, 14 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 3800.85, 720, 0 ), false, 13 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 4249.23, 480, 0 ), false, 12 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 4671.75, 240, 0 ), false, 16 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 4947.68, 240, 0 ), false, 16 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 5163.25, 240, 0 ), false, 16 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( -1470.12, 1874, 0 ), false, 17 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( -1024.15, 1874, 0 ), false, 17 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( -597.565, 1874, 0 ), false, 17 )
g_pLineMap:AddStartPos( 24, D3DXVECTOR3( -125.741, 1874, 0 ), false, 17 )
g_pLineMap:AddStartPos( 25, D3DXVECTOR3( 362.333, 1874, 0 ), false, 17 )
g_pLineMap:AddStartPos( 26, D3DXVECTOR3( 819.353, 1874, 0 ), false, 17 )
g_pLineMap:AddStartPos( 27, D3DXVECTOR3( 1376.35, 1874, 0 ), false, 17 )
g_pLineMap:AddStartPos( 28, D3DXVECTOR3( 1976.19, 1874, 0 ), false, 17 )
g_pLineMap:AddStartPos( 29, D3DXVECTOR3( 2583.17, 1874, 0 ), false, 17 )
g_pLineMap:AddStartPos( 30, D3DXVECTOR3( 3125.88, 1874, 0 ), false, 17 )
g_pLineMap:AddStartPos( 31, D3DXVECTOR3( 3611.46, 1874, 0 ), false, 17 )
g_pLineMap:AddStartPos( 32, D3DXVECTOR3( 4163.48, 1874, 0 ), false, 17 )
g_pLineMap:AddStartPos( 33, D3DXVECTOR3( 4599.1, 1874, 0 ), false, 17 )
g_pLineMap:AddStartPos( 34, D3DXVECTOR3( 4927.6, 1874, 0 ), false, 17 )






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
	"START_POS		= D3DXVECTOR3(-1814, 240, 0)", 
	"END_POS		= D3DXVECTOR3(-895, 240, 0)", 
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
	"START_POS		= D3DXVECTOR3(-895, 480, 0)", 
	"END_POS		= D3DXVECTOR3(-513, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(-513, 720, 0)", 
	"END_POS		= D3DXVECTOR3(-51, 720, 0)", 
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
	"START_POS		= D3DXVECTOR3(-51, 480, 0)", 
	"END_POS		= D3DXVECTOR3(270, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(270, 240, 0)", 
	"END_POS		= D3DXVECTOR3(500, 240, 0)", 
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
	"START_POS		= D3DXVECTOR3(1304, 480, 0)", 
	"END_POS		= D3DXVECTOR3(1646, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(862, 720, 0)", 
	"END_POS		= D3DXVECTOR3(1304, 720, 0)", 
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
	"START_POS		= D3DXVECTOR3(500, 480, 0)", 
	"END_POS		= D3DXVECTOR3(862, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(2680, 480, 0)", 
	"END_POS		= D3DXVECTOR3(3022, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(2258, 720, 0)", 
	"END_POS		= D3DXVECTOR3(2680, 720, 0)", 
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
	"START_POS		= D3DXVECTOR3(1896, 480, 0)", 
	"END_POS		= D3DXVECTOR3(2258, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(1646, 240, 0)", 
	"END_POS		= D3DXVECTOR3(1896, 240, 0)", 
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
	"START_POS		= D3DXVECTOR3(4056, 480, 0)", 
	"END_POS		= D3DXVECTOR3(4418, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(3614, 720, 0)", 
	"END_POS		= D3DXVECTOR3(4056, 720, 0)", 
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
	"START_POS		= D3DXVECTOR3(3272, 480, 0)", 
	"END_POS		= D3DXVECTOR3(3614, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(3022, 240, 0)", 
	"END_POS		= D3DXVECTOR3(3272, 240, 0)", 
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
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(4418, 240, 0)", 
	"END_POS		= D3DXVECTOR3(5268, 240, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 17, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-1814, 1874, 0)", 
	"END_POS		= D3DXVECTOR3(5268, 1874, 0)", 
}

