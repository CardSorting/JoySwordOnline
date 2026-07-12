-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( -50 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 147.163, 1029, -1952.04 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -38.0311, 1029, -2273.11 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 297.562, 1029, -1691.28 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 448.496, 1029, -1429.6 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 344.163, 1029, -1610.49 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 205.167, 1029, -1851.47 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 26.8512, 1029, -2160.62 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 480.008, 1029, -1374.97 ), true, 0 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 1149.96, 1029, -322.149 ), false, 2 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 1545.51, 1029, -88.886 ), false, 5 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 2004, 1029, -1 ), false, 8 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 2496.72, 1029, 0.399519 ), false, 10 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 2975.8, 789, 0 ), false, 11 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 3432.59, 549, 0 ), false, 12 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 3939.33, 309, 0 ), false, 13 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 4411.03, 309, 0 ), false, 13 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 4890.74, 240.979, 0 ), false, 14 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 5339.56, 106.332, 0 ), false, 14 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 5782.49, 69, 0 ), false, 15 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 6208.89, 69, 0 ), false, 15 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 4921.74, 549, 0 ), false, 16 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 5521.03, 789, 0 ), false, 17 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 6242.39, 549, 0 ), false, 18 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 6742.12, 309, 0 ), false, 19 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 7108.09, 309, 0 ), false, 19 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 7763.28, 69, 0 ), false, 20 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 8196.71, 69, 0 ), false, 20 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 8630.12, 69, 0 ), false, 20 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 8425.79, 549, 0 ), false, 21 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 8734.71, 549, 0 ), false, 21 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( 9228.03, 309, 0 ), false, 22 )
g_pLineMap:AddStartPos( 24, D3DXVECTOR3( 9715.47, 549, 0 ), false, 23 )
g_pLineMap:AddStartPos( 25, D3DXVECTOR3( 10044.3, 549, 0 ), false, 23 )
g_pLineMap:AddStartPos( 26, D3DXVECTOR3( 9800.22, 69, 0 ), false, 24 )
g_pLineMap:AddStartPos( 27, D3DXVECTOR3( 10233.8, 69, 0 ), false, 24 )
g_pLineMap:AddStartPos( 28, D3DXVECTOR3( 10667.3, 69, 0 ), false, 24 )
g_pLineMap:AddStartPos( 29, D3DXVECTOR3( 11251.4, 309, 0 ), false, 25 )
g_pLineMap:AddStartPos( 30, D3DXVECTOR3( 11655.1, 309, 0 ), false, 25 )
g_pLineMap:AddStartPos( 31, D3DXVECTOR3( 12083.6, 309, 0 ), false, 25 )
g_pLineMap:AddStartPos( 32, D3DXVECTOR3( 12464, 309, 0 ), false, 25 )






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
	"START_POS		= D3DXVECTOR3(-57, 1029, -2306)", 
	"END_POS		= D3DXVECTOR3(942, 1029, -574)", 
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
	"START_POS		= D3DXVECTOR3(942, 1029, -574)", 
	"END_POS		= D3DXVECTOR3(1058, 1029, -412)", 
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
	"START_POS		= D3DXVECTOR3(1058, 1029, -412)", 
	"END_POS		= D3DXVECTOR3(1189, 1029, -284)", 
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
	"START_POS		= D3DXVECTOR3(1189, 1029, -284)", 
	"END_POS		= D3DXVECTOR3(1330, 1029, -185)", 
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
	"START_POS		= D3DXVECTOR3(1330, 1029, -185)", 
	"END_POS		= D3DXVECTOR3(1476, 1029, -113)", 
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
	NEXT_LINE		= 6, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1476, 1029, -113)", 
	"END_POS		= D3DXVECTOR3(1623, 1029, -62)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 6, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 5, 
	NEXT_LINE		= 7, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1623, 1029, -62)", 
	"END_POS		= D3DXVECTOR3(1763, 1029, -29)", 
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
	"START_POS		= D3DXVECTOR3(1763, 1029, -29)", 
	"END_POS		= D3DXVECTOR3(1892, 1029, -10)", 
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
	"START_POS		= D3DXVECTOR3(1892, 1029, -10)", 
	"END_POS		= D3DXVECTOR3(2004, 1029, -1)", 
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
	"START_POS		= D3DXVECTOR3(2004, 1029, -1)", 
	"END_POS		= D3DXVECTOR3(2095, 1029, 1)", 
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
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(2095, 1029, 1)", 
	"END_POS		= D3DXVECTOR3(2764, 1029, 0)", 
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
	"START_POS		= D3DXVECTOR3(2764, 789, 0)", 
	"END_POS		= D3DXVECTOR3(3164, 789, 0)", 
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
	"START_POS		= D3DXVECTOR3(3164, 549, 0)", 
	"END_POS		= D3DXVECTOR3(3664, 549, 0)", 
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
	NEXT_LINE		= 14, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(3664, 309, 0)", 
	"END_POS		= D3DXVECTOR3(4664, 309, 0)", 
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
	"START_POS		= D3DXVECTOR3(4664, 309, 0)", 
	"END_POS		= D3DXVECTOR3(5464, 69, 0)", 
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
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(5464, 69, 0)", 
	"END_POS		= D3DXVECTOR3(6464, 69, 0)", 
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
	"START_POS		= D3DXVECTOR3(4664, 549, 0)", 
	"END_POS		= D3DXVECTOR3(5164, 549, 0)", 
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
	"START_POS		= D3DXVECTOR3(5164, 789, 0)", 
	"END_POS		= D3DXVECTOR3(5864, 789, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 18, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(5964, 549, 0)", 
	"END_POS		= D3DXVECTOR3(6464, 549, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 19, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 1, 
	"START_POS		= D3DXVECTOR3(6464, 309, 0)", 
	"END_POS		= D3DXVECTOR3(7464, 309, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 20, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(7464, 69, 0)", 
	"END_POS		= D3DXVECTOR3(8964, 69, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 21, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(8164, 549, 0)", 
	"END_POS		= D3DXVECTOR3(8964, 549, 0)", 
	SPEED           = 350,
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 22, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(8964, 309, 0)", 
	"END_POS		= D3DXVECTOR3(9464, 309, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 23, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(9464, 549, 0)", 
	"END_POS		= D3DXVECTOR3(10264, 549, 0)", 
	SPEED           = -350,
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 24, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(9464, 69, 0)", 
	"END_POS		= D3DXVECTOR3(10964, 69, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 25, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(10964, 309, 0)", 
	"END_POS		= D3DXVECTOR3(12464, 309, 0)", 
}

