-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 720 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -2488.66, 1920, 0 ), true, 8 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -2750.26, 1920, 0 ), true, 8 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -2607.84, 1920, 0 ), true, 8 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -2331.91, 1920, 0 ), true, 8 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( -888.096, 1892.83, 0 ), false, 9 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( -665.18, 1833.38, 0 ), false, 9 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( -482.921, 1784.78, 0 ), false, 9 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( -328.114, 1743.5, 0 ), false, 9 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( -141.163, 1693.64, 0 ), false, 9 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 95.1182, 1680, 0 ), false, 10 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 316.02, 1680, 0 ), false, 10 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 563.709, 1680, 0 ), false, 10 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 818.186, 1680, 0 ), false, 10 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( -121.29, 1440, 0 ), false, 0 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 269.098, 1200, 0 ), false, 1 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 534.86, 1200, 0 ), false, 1 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 841.509, 1200, 0 ), false, 1 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 1203.97, 1200, 0 ), false, 1 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 1483.53, 1200, 0 ), false, 1 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 1775.73, 1200, 0 ), false, 1 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 2048.96, 1200, 0 ), false, 1 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 2368.1, 1200, 0 ), false, 1 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 2771.64, 1440, 0 ), false, 2 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 3089.86, 1440, 0 ), false, 2 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 3450.71, 1440, 0 ), false, 2 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 3718.37, 1200, 0 ), false, 3 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( 4156.56, 1200, 0 ), false, 3 )
g_pLineMap:AddStartPos( 24, D3DXVECTOR3( 4469.26, 1200, 0 ), false, 3 )
g_pLineMap:AddStartPos( 25, D3DXVECTOR3( 4938.6, 1091.31, 0 ), false, 4 )
g_pLineMap:AddStartPos( 26, D3DXVECTOR3( 5282.65, 999.561, 0 ), false, 4 )
g_pLineMap:AddStartPos( 27, D3DXVECTOR3( 5501.03, 960, 0 ), false, 5 )
g_pLineMap:AddStartPos( 28, D3DXVECTOR3( 5915.6, 960, 0 ), false, 5 )
g_pLineMap:AddStartPos( 29, D3DXVECTOR3( 6324.33, 960, 0 ), false, 5 )
g_pLineMap:AddStartPos( 30, D3DXVECTOR3( 5889.36, 1200, 0 ), false, 7 )
g_pLineMap:AddStartPos( 31, D3DXVECTOR3( 6696.27, 720, 0 ), false, 6 )
g_pLineMap:AddStartPos( 32, D3DXVECTOR3( 6986.45, 720, 0 ), false, 6 )
g_pLineMap:AddStartPos( 33, D3DXVECTOR3( 7334.51, 720, 0 ), false, 6 )
g_pLineMap:AddStartPos( 34, D3DXVECTOR3( 7681.14, 720, 0 ), false, 6 )
g_pLineMap:AddStartPos( 35, D3DXVECTOR3( 8066.61, 720, 0 ), false, 6 )
g_pLineMap:AddStartPos( 36, D3DXVECTOR3( 8413, 720, 0 ), false, 6 )
g_pLineMap:AddStartPos( 37, D3DXVECTOR3( 8815.85, 720, 0 ), false, 6 )






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
	"START_POS		= D3DXVECTOR3(-390, 1440, 0)", 
	"END_POS		= D3DXVECTOR3(109, 1440, 0)", 
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
	"START_POS		= D3DXVECTOR3(109, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(2583, 1200, 0)", 
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
	LINE_SET		= 1, 
	"START_POS		= D3DXVECTOR3(2555, 1440, 0)", 
	"END_POS		= D3DXVECTOR3(3585, 1440, 0)", 
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
	NEXT_LINE		= 4, 
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(3515, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(4531, 1200, 0)", 
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
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(4531, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(5431, 960, 0)", 
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
	NEXT_LINE		= -1, 
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(5431, 960, 0)", 
	"END_POS		= D3DXVECTOR3(6429, 960, 0)", 
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
	"START_POS		= D3DXVECTOR3(6429, 720, 0)", 
	"END_POS		= D3DXVECTOR3(8819, 720, 0)", 
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
	"START_POS		= D3DXVECTOR3(5622, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(6122, 1200, 0)", 
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
	NEXT_LINE		= 9, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-2850, 1920, 0)", 
	"END_POS		= D3DXVECTOR3(-990, 1920, 0)", 
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
	"START_POS		= D3DXVECTOR3(-990, 1920, 0)", 
	"END_POS		= D3DXVECTOR3(-90, 1680, 0)", 
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
	"START_POS		= D3DXVECTOR3(-90, 1680, 0)", 
	"END_POS		= D3DXVECTOR3(909, 1680, 0)", 
}

