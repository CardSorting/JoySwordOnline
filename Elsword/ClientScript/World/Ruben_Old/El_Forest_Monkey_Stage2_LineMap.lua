-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 0 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 54.914, 730, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -334.903, 730, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 212.814, 730, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -107.921, 730, 0 ), true, 0 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 1211.34, 489.842, 0 ), false, 1 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 1497.53, 489.555, 0 ), false, 1 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 1734.38, 489.319, 0 ), false, 1 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 1961.36, 489.092, 0 ), false, 1 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 2222.88, 730, 0 ), false, 2 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 2410.39, 730, 0 ), false, 2 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 2695.95, 970, 0 ), false, 3 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 3016.7, 970, 0 ), false, 3 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 3347.31, 970, 0 ), false, 3 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 3687.27, 1210, 0 ), false, 4 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 3998.14, 1210, 0 ), false, 4 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 4304.08, 1210, 0 ), false, 4 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 4598.63, 1460, 0 ), false, 5 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 4889.76, 1460, 0 ), false, 5 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 5106.88, 1460, 0 ), false, 5 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 5338.79, 1460, 0 ), false, 5 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 5600.32, 1460, 0 ), false, 5 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 5866.78, 1460, 0 ), false, 5 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 6270.58, 1210, 0 ), false, 6 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 6290.32, 959.813, 0 ), false, 7 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 6616, 959.596, 0 ), false, 7 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 6921.93, 959.392, 0 ), false, 7 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( 7292.01, 959.145, 0 ), false, 7 )
g_pLineMap:AddStartPos( 24, D3DXVECTOR3( 5742.61, 720, 0 ), false, 8 )
g_pLineMap:AddStartPos( 25, D3DXVECTOR3( 5283.72, 480, 0 ), false, 9 )
g_pLineMap:AddStartPos( 26, D3DXVECTOR3( 5717.94, 480, 0 ), false, 9 )
g_pLineMap:AddStartPos( 27, D3DXVECTOR3( 6180.88, 444.519, 0 ), false, 10 )
g_pLineMap:AddStartPos( 28, D3DXVECTOR3( 6577.49, 347.39, 0 ), false, 10 )
g_pLineMap:AddStartPos( 29, D3DXVECTOR3( 6870.02, 275.75, 0 ), false, 10 )
g_pLineMap:AddStartPos( 30, D3DXVECTOR3( 7213.04, 239.802, 0 ), false, 11 )
g_pLineMap:AddStartPos( 31, D3DXVECTOR3( 7548.57, 239.464, 0 ), false, 11 )
g_pLineMap:AddStartPos( 32, D3DXVECTOR3( 7870.18, 239.141, 0 ), false, 11 )
g_pLineMap:AddStartPos( 33, D3DXVECTOR3( 8240.82, 0, 0 ), false, 12 )
g_pLineMap:AddStartPos( 34, D3DXVECTOR3( 8580.44, 0, 0 ), false, 12 )
g_pLineMap:AddStartPos( 35, D3DXVECTOR3( 9020.39, 0, 0 ), false, 12 )
g_pLineMap:AddStartPos( 36, D3DXVECTOR3( 9367.74, 0, 0 ), false, 12 )
g_pLineMap:AddStartPos( 37, D3DXVECTOR3( 9676.48, 0, 0 ), false, 12 )
g_pLineMap:AddStartPos( 38, D3DXVECTOR3( 10010, 0, 0 ), false, 12 )






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
	"START_POS		= D3DXVECTOR3(-446, 730, 0)", 
	"END_POS		= D3DXVECTOR3(1053, 730, 0)", 
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
	"START_POS		= D3DXVECTOR3(1053, 490, 0)", 
	"END_POS		= D3DXVECTOR3(2053, 489, 0)", 
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
	"START_POS		= D3DXVECTOR3(2053, 730, 0)", 
	"END_POS		= D3DXVECTOR3(2553, 730, 0)", 
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
	"START_POS		= D3DXVECTOR3(2543, 970, 0)", 
	"END_POS		= D3DXVECTOR3(3553, 970, 0)", 
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
	LINE_SET		= 1, 
	"START_POS		= D3DXVECTOR3(3553, 1210, 0)", 
	"END_POS		= D3DXVECTOR3(4459, 1210, 0)", 
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
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(4433, 1460, 0)", 
	"END_POS		= D3DXVECTOR3(6010, 1460, 0)", 
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
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(6010, 1210, 0)", 
	"END_POS		= D3DXVECTOR3(6510, 1210, 0)", 
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
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(6010, 960, 0)", 
	"END_POS		= D3DXVECTOR3(7510, 959, 0)", 
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
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(5510, 720, 0)", 
	"END_POS		= D3DXVECTOR3(6010, 720, 0)", 
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
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(5160, 480, 0)", 
	"END_POS		= D3DXVECTOR3(6036, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(6036, 480, 0)", 
	"END_POS		= D3DXVECTOR3(7016, 240, 0)", 
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
	"START_POS		= D3DXVECTOR3(7016, 240, 0)", 
	"END_POS		= D3DXVECTOR3(8010, 239, 0)", 
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
	"START_POS		= D3DXVECTOR3(8010, 0, 0)", 
	"END_POS		= D3DXVECTOR3(10010, 0, 0)", 
}

