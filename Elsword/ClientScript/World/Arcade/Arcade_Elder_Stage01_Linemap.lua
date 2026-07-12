-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 240 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 34.0765, 240, 0 ), true, 9 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2331.14, 240, 0 ), false, 9 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 212.605, 240, 0 ), true, 9 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2194.22, 240, 0 ), true, 9 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 304.322, 240, 0 ), true, 9 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2073.52, 240, 0 ), false, 9 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 249.501, 480, 0 ), false, 1 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 486.047, 480, 0 ), false, 1 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 691.663, 480, 0 ), false, 1 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 892.938, 480, 0 ), false, 1 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 1233.18, 480, 0 ), false, 1 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 1606.73, 480, 0 ), false, 1 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 1817.26, 480, 0 ), false, 1 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 2070.12, 480, 0 ), false, 1 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 2299.18, 480, 0 ), false, 1 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 1425.69, 480, 0 ), false, 1 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 1065.57, 480, 0 ), false, 1 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 80.9776, 1200, 0 ), false, 3 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 52.6858, 960, 0 ), false, 0 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 69.4446, 720, 0 ), false, 2 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 2332.7, 720, 0 ), false, 7 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 2348.03, 960, 0 ), false, 6 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 2369.48, 1200, 0 ), false, 5 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 1855.94, 1440, 0 ), false, 8 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 1991.95, 1440, 0 ), false, 8 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 410.705, 1440, 0 ), false, 4 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 552.062, 1440, 0 ), false, 4 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 918.525, 1680, 0 ), false, 10 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( 1099.92, 1680, 0 ), false, 10 )
g_pLineMap:AddStartPos( 24, D3DXVECTOR3( 1295.63, 1680, 0 ), false, 10 )
g_pLineMap:AddStartPos( 25, D3DXVECTOR3( 1457.92, 1680, 0 ), false, 10 )






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
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-114, 960, 0)", 
	"END_POS		= D3DXVECTOR3(220, 960, 0)", 
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
	NEXT_LINE		= -2, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-114, 480, 0)", 
	"END_POS		= D3DXVECTOR3(2537, 480, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 2, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -2, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-114, 720, 0)", 
	"END_POS		= D3DXVECTOR3(220, 720, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 3, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -2, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-114, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(220, 1200, 0)", 
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
	"START_POS		= D3DXVECTOR3(220, 1440, 0)", 
	"END_POS		= D3DXVECTOR3(723, 1440, 0)", 
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
	"START_POS		= D3DXVECTOR3(2180, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(2537, 1200, 0)", 
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
	"START_POS		= D3DXVECTOR3(2180, 960, 0)", 
	"END_POS		= D3DXVECTOR3(2537, 960, 0)", 
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
	NEXT_LINE		= -2, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(2180, 720, 0)", 
	"END_POS		= D3DXVECTOR3(2537, 720, 0)", 
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
	"START_POS		= D3DXVECTOR3(1678, 1440, 0)", 
	"END_POS		= D3DXVECTOR3(2182, 1440, 0)", 
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
	"START_POS		= D3DXVECTOR3(-114, 240, 0)", 
	"END_POS		= D3DXVECTOR3(2537, 240, 0)", 
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
	"START_POS		= D3DXVECTOR3(733, 1680, 0)", 
	"END_POS		= D3DXVECTOR3(1678, 1680, 0)", 
}

