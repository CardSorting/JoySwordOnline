-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 2571)




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -685.001, 2671, -2 ), true, 17 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -865.628, 2671, -2 ), true, 17 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -254.276, 2671, -2 ), true, 17 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -379.325, 2671, -2 ), true, 17 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -592.372, 2671, -2 ), true, 17 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -777.63, 2671, -2 ), true, 17 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -152.384, 2671, -2 ), true, 17 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 258.282, 2904, -0.990647 ), false, 7 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 705.22, 3144, 0 ), false, 0 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 1003.68, 3144, 0 ), false, 0 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 1290.19, 3144, 0 ), false, 0 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 1570.77, 2904, 0 ), false, 3 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 1749.86, 2664, 0 ), false, 2 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 2251.22, 3144, 0 ), false, 4 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 2507.89, 3144, 0 ), false, 4 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 2794.4, 3144, 0 ), false, 4 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 3110.77, 2904, 0 ), false, 6 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 3271.93, 2664, 0 ), false, 5 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 3749.86, 3114, 0 ), false, 8 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 4066.2, 3114, 0 ), false, 8 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 4358.66, 3114, 0 ), false, 8 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 4904.73, 3384, 0 ), false, 9 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 5167.32, 3384, 0 ), false, 9 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 5494.93, 3419.99, 0 ), false, 10 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 5825.3, 3480.98, 0 ), false, 10 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 6156.02, 3542.03, 0 ), false, 10 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 6514.96, 3608.3, 0 ), false, 10 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 6820.72, 3624, 0 ), false, 11 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 7298.3, 3384, 0 ), false, 13 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( 7100, 3384, 0 ), false, 13 )
g_pLineMap:AddStartPos( 24, D3DXVECTOR3( 7100, 3384, 0 ), false, 13 )
g_pLineMap:AddStartPos( 25, D3DXVECTOR3( 8400, 3384, 0 ), false, 13 )
g_pLineMap:AddStartPos( 26, D3DXVECTOR3( 8400, 3384, 0 ), false, 13 )
g_pLineMap:AddStartPos( 27, D3DXVECTOR3( 8699, 3384, 0 ), false, 15 )
g_pLineMap:AddStartPos( 28, D3DXVECTOR3( 7304.14, 3864, 0 ), false, 12 )
g_pLineMap:AddStartPos( 29, D3DXVECTOR3( 7542.87, 3864, 0 ), false, 12 )
g_pLineMap:AddStartPos( 30, D3DXVECTOR3( 7751.13, 3864, 0 ), false, 12 )
g_pLineMap:AddStartPos( 31, D3DXVECTOR3( 8145.2, 4104, 0 ), false, 14 )
g_pLineMap:AddStartPos( 32, D3DXVECTOR3( 8627.69, 4344, 0 ), false, 1 )
g_pLineMap:AddStartPos( 33, D3DXVECTOR3( 9094.85, 4553, 0 ), false, 16 )
g_pLineMap:AddStartPos( 34, D3DXVECTOR3( 9389.47, 4553, 0 ), false, 16 )
g_pLineMap:AddStartPos( 35, D3DXVECTOR3( 9700, 4553, 0 ), false, 16 )






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
	"START_POS		= D3DXVECTOR3(470, 3144, 0)", 
	"END_POS		= D3DXVECTOR3(1530, 3144, 0)", 
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
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(8385, 4344, 0)", 
	"END_POS		= D3DXVECTOR3(8900, 4344, 0)", 
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
	"START_POS		= D3DXVECTOR3(1500, 2664, 0)", 
	"END_POS		= D3DXVECTOR3(2000, 2664, 0)", 
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
	NEXT_LINE		= -2, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1500, 2904, 0)", 
	"END_POS		= D3DXVECTOR3(2000, 2904, 0)", 
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
	"START_POS		= D3DXVECTOR3(1970, 3144, 0)", 
	"END_POS		= D3DXVECTOR3(3030, 3144, 0)", 
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
	"START_POS		= D3DXVECTOR3(3000, 2664, 0)", 
	"END_POS		= D3DXVECTOR3(3500, 2664, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 6, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -2, 
	NEXT_LINE		= -2, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(3000, 2904, 0)", 
	"END_POS		= D3DXVECTOR3(3500, 2904, 0)", 
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
	"START_POS		= D3DXVECTOR3(12, 2904, -2)", 
	"END_POS		= D3DXVECTOR3(500, 2904, 0)", 
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
	"START_POS		= D3DXVECTOR3(3470, 3114, 0)", 
	"END_POS		= D3DXVECTOR3(4630, 3114, 0)", 
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
	LINE_SET		= 1, 
	"START_POS		= D3DXVECTOR3(4630, 3384, 0)", 
	"END_POS		= D3DXVECTOR3(5300, 3384, 0)", 
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
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(5300, 3384, 0)", 
	"END_POS		= D3DXVECTOR3(6600, 3624, 0)", 
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
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(6600, 3624, 0)", 
	"END_POS		= D3DXVECTOR3(7100, 3624, 0)", 
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
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(7100, 3864, 0)", 
	"END_POS		= D3DXVECTOR3(7920, 3864, 0)", 
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
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(7100, 3384, 0)", 
	"END_POS		= D3DXVECTOR3(8400, 3384, 0)", 
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
	NEXT_LINE		= -2, 
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(7900, 4104, 0)", 
	"END_POS		= D3DXVECTOR3(8415, 4104, 0)", 
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
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(8400, 3384, 0)", 
	"END_POS		= D3DXVECTOR3(8699, 3384, 0)", 
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
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(8870, 4553, 0)", 
	"END_POS		= D3DXVECTOR3(9700, 4553, 0)", 
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
	"START_POS		= D3DXVECTOR3(-887, 2671, -2)", 
	"END_POS		= D3DXVECTOR3(12, 2671, -2)", 
}

