-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 0 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 451.684, 140, 0 ), true, 6 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 158.238, 140, 0 ), true, 6 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 900.954, 0, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 743.209, 0, 0 ), true, 0 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 1233.69, 26.7379, 0 ), false, 1 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 1453.67, 70.7338, 0 ), false, 1 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 1658.61, 111.722, 0 ), false, 1 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 1366.24, 380, 0 ), false, 5 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 1648.83, 380, 0 ), false, 5 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 1918.22, 140, 0 ), false, 2 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 2200.85, 140, 0 ), false, 2 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 2595.21, 380, 0 ), false, 13 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 2831.83, 380, 0 ), false, 13 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 2480.84, 123.832, 0 ), false, 3 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 2722.31, 75.5379, 0 ), false, 3 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 2942.5, 31.4998, 0 ), false, 3 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 3203.19, 0, 0 ), false, 4 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 3456.24, 0, 0 ), false, 4 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 3848.34, 140, 0 ), false, 12 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 4144.03, 140, 0 ), false, 12 )






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
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(600, 0, 0)", 
	"END_POS		= D3DXVECTOR3(1100, 0, 0)", 
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
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1100, 0, 0)", 
	"END_POS		= D3DXVECTOR3(1800, 140, 0)", 
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
	NEXT_LINE		= 3, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1800, 140, 0)", 
	"END_POS		= D3DXVECTOR3(2400, 140, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 3, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 2, 
	NEXT_LINE		= 4, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(2400, 140, 0)", 
	"END_POS		= D3DXVECTOR3(3100, 0, 0)", 
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
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(3100, 0, 0)", 
	"END_POS		= D3DXVECTOR3(3600, 0, 0)", 
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
	"START_POS		= D3DXVECTOR3(1200, 380, 0)", 
	"END_POS		= D3DXVECTOR3(1800, 380, 0)", 
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
	"START_POS		= D3DXVECTOR3(50, 140, 0)", 
	"END_POS		= D3DXVECTOR3(600, 140, 0)", 
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
	"START_POS		= D3DXVECTOR3(600, 0, 0)", 
	"END_POS		= D3DXVECTOR3(1100, 0, 0)", 
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
	"START_POS		= D3DXVECTOR3(1100, 0, 0)", 
	"END_POS		= D3DXVECTOR3(1800, 140, 0)", 
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
	NEXT_LINE		= 10, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1800, 140, 0)", 
	"END_POS		= D3DXVECTOR3(2400, 140, 0)", 
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
	"START_POS		= D3DXVECTOR3(2400, 140, 0)", 
	"END_POS		= D3DXVECTOR3(3100, 0, 0)", 
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
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(3100, 0, 0)", 
	"END_POS		= D3DXVECTOR3(3600, 0, 0)", 
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
	"START_POS		= D3DXVECTOR3(3600, 140, 0)", 
	"END_POS		= D3DXVECTOR3(4350, 140, 0)", 
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
	"START_POS		= D3DXVECTOR3(2400, 380, 0)", 
	"END_POS		= D3DXVECTOR3(3000, 380, 0)", 
}

