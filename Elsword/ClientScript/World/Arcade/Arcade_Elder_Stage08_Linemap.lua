-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 240 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 123.783, 240, 0 ), true, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2263.1, 240, 0 ), false, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 268.811, 240, 0 ), true, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2132.57, 240, 0 ), false, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 0.496254, 240, 0 ), true, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2451.65, 240, 0 ), false, 2 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 101.915, 1440, 0 ), false, 1 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 370.234, 1440, 0 ), false, 1 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 2038.25, 1440, 0 ), false, 5 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 2379.12, 1440, 0 ), false, 5 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 2255.82, 1200, 0 ), false, 6 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 2263.08, 960, 0 ), false, 12 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 1922.21, 960, 0 ), false, 12 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 435.531, 960, 0 ), false, 10 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 94.7, 960, 0 ), false, 10 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 94.6824, 1200, 0 ), false, 7 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 87.4606, 720, 0 ), false, 13 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 870.65, 720, 0 ), false, 14 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 1530.59, 720, 0 ), false, 15 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 2299.34, 720, 0 ), false, 16 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 928.686, 480, 0 ), false, 4 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 1385.56, 480, 0 ), false, 4 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 885.132, 1200, 0 ), false, 8 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 1588.6, 1200, 0 ), false, 9 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 1182.48, 960, 0 ), false, 11 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 1218.72, 1440, 0 ), false, 3 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 123.667, 1680, 0 ), false, 0 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( 522.542, 1680, 0 ), false, 0 )
g_pLineMap:AddStartPos( 24, D3DXVECTOR3( 1109.98, 1680, 0 ), false, 0 )
g_pLineMap:AddStartPos( 25, D3DXVECTOR3( 1682.91, 1680, 0 ), false, 0 )
g_pLineMap:AddStartPos( 26, D3DXVECTOR3( 2052.77, 1680, 0 ), false, 0 )
g_pLineMap:AddStartPos( 27, D3DXVECTOR3( 2364.62, 1680, 0 ), false, 0 )






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
	"START_POS		= D3DXVECTOR3(-124, 1440, 0)", 
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
	"END_POS		= D3DXVECTOR3(2526, 1440, 0)", 
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
	"END_POS		= D3DXVECTOR3(2536, 1200, 0)", 
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
	"START_POS		= D3DXVECTOR3(-134, 1200, 0)", 
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
	"START_POS		= D3DXVECTOR3(-144, 960, 0)", 
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
	"END_POS		= D3DXVECTOR3(2546, 960, 0)", 
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
	"START_POS		= D3DXVECTOR3(-154, 720, 0)", 
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
	"END_POS		= D3DXVECTOR3(2556, 720, 0)", 
}

