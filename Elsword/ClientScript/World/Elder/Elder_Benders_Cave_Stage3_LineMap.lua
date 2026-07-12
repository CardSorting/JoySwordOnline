-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( -80 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( false, D3DXVECTOR3( 2677.05, 580, 840.934 ), false, 0 )
g_pLineMap:SetTeamStartPos( false, D3DXVECTOR3( 2904.33, 580, 1000.03 ), false, 0 )
g_pLineMap:SetTeamStartPos( false, D3DXVECTOR3( 2683.31, 200, 844.626 ), false, 23 )
g_pLineMap:SetTeamStartPos( false, D3DXVECTOR3( 3004.59, 328.849, 1070.16 ), false, 24 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 573.88, 340, 0 ), true, 6 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 293.298, 340, 0 ), true, 6 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 419.84, 0, 0 ), true, 7 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -3.78183, 0, 0 ), true, 7 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 441.841, 340, 0 ), true, 6 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 122.754, 0, 0 ), true, 7 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 243.789, 0, 0 ), true, 7 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 0, D3DXVECTOR3( 1659.51, 0, 128.936 ), false, 21 )
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 1201.06, 580, 0 ), false, 5 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 936.981, 580, 0 ), false, 5 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 1074.52, 580, 0 ), false, 5 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 1536, 820, 42 ), false, 3 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 1760.64, 820, 199.289 ), false, 4 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 920.483, 100, 0 ), false, 12 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 1355.11, 0, 0 ), false, 17 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 1659.51, 0, 128.936 ), false, 21 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 2029.14, 109.178, 387.343 ), false, 22 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 2394.16, 200, 642.283 ), false, 23 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 2621.67, 200, 801.489 ), false, 23 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 2940.82, 300.862, 1025.38 ), false, 24 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 3243.34, 340, 1237.84 ), false, 25 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 2828.7, 580, 947.09 ), false, 0 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 2433.53, 820, 670.436 ), false, 4 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 2192.15, 820, 501.426 ), false, 4 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 1963.3, 820, 341.189 ), false, 4 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 388.992, 340, 0 ), false, 6 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 558.793, 340, 0 ), false, 6 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 350.189, 0, 0 ), false, 7 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 78.5133, 0, 0 ), false, 7 )






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
	"START_POS		= D3DXVECTOR3(2620, 580, 801)", 
	"END_POS		= D3DXVECTOR3(3030, 580, 1088)", 
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
	NEXT_LINE		= 2, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1400, 820, 0)", 
	"END_POS		= D3DXVECTOR3(1447, 820, 6)", 
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
	"START_POS		= D3DXVECTOR3(1447, 820, 6)", 
	"END_POS		= D3DXVECTOR3(1492, 820, 19)", 
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
	"START_POS		= D3DXVECTOR3(1492, 820, 19)", 
	"END_POS		= D3DXVECTOR3(1536, 820, 42)", 
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
	"START_POS		= D3DXVECTOR3(1536, 820, 42)", 
	"END_POS		= D3DXVECTOR3(2620, 820, 801)", 
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
	"START_POS		= D3DXVECTOR3(700, 580, 0)", 
	"END_POS		= D3DXVECTOR3(1400, 580, 0)", 
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
	"START_POS		= D3DXVECTOR3(200, 340, 0)", 
	"END_POS		= D3DXVECTOR3(700, 340, 0)", 
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
	"START_POS		= D3DXVECTOR3(-200, 0, 0)", 
	"END_POS		= D3DXVECTOR3(550, 0, 0)", 
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
	"START_POS		= D3DXVECTOR3(550, 0, 0)", 
	"END_POS		= D3DXVECTOR3(591, 36, 0)", 
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
	"START_POS		= D3DXVECTOR3(591, 36, 0)", 
	"END_POS		= D3DXVECTOR3(641, 68, 0)", 
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
	"START_POS		= D3DXVECTOR3(641, 68, 0)", 
	"END_POS		= D3DXVECTOR3(707, 91, 0)", 
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
	"START_POS		= D3DXVECTOR3(707, 91, 0)", 
	"END_POS		= D3DXVECTOR3(800, 100, 0)", 
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
	"START_POS		= D3DXVECTOR3(800, 100, 0)", 
	"END_POS		= D3DXVECTOR3(1000, 100, 0)", 
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
	"START_POS		= D3DXVECTOR3(1000, 100, 0)", 
	"END_POS		= D3DXVECTOR3(1092, 91, 0)", 
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
	"START_POS		= D3DXVECTOR3(1092, 91, 0)", 
	"END_POS		= D3DXVECTOR3(1158, 68, 0)", 
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
	"START_POS		= D3DXVECTOR3(1158, 68, 0)", 
	"END_POS		= D3DXVECTOR3(1208, 36, 0)", 
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
	"START_POS		= D3DXVECTOR3(1208, 36, 0)", 
	"END_POS		= D3DXVECTOR3(1250, 0, 0)", 
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
	"START_POS		= D3DXVECTOR3(1250, 0, 0)", 
	"END_POS		= D3DXVECTOR3(1400, 0, 0)", 
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
	"START_POS		= D3DXVECTOR3(1400, 0, 0)", 
	"END_POS		= D3DXVECTOR3(1447, 0, 6)", 
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
	"START_POS		= D3DXVECTOR3(1447, 0, 6)", 
	"END_POS		= D3DXVECTOR3(1492, 0, 19)", 
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
	"START_POS		= D3DXVECTOR3(1492, 0, 19)", 
	"END_POS		= D3DXVECTOR3(1536, 0, 42)", 
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
	"START_POS		= D3DXVECTOR3(1536, 0, 42)", 
	"END_POS		= D3DXVECTOR3(1742, 0, 187)", 
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
	NEXT_LINE		= 23, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1742, 0, 187)", 
	"END_POS		= D3DXVECTOR3(2268, 200, 554)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 23, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 22, 
	NEXT_LINE		= 24, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(2268, 200, 554)", 
	"END_POS		= D3DXVECTOR3(2711, 200, 864)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 24, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 23, 
	NEXT_LINE		= 25, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(2711, 200, 864)", 
	"END_POS		= D3DXVECTOR3(3030, 340, 1088)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 25, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 24, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(3030, 340, 1088)", 
	"END_POS		= D3DXVECTOR3(3460, 340, 1390)", 
}

