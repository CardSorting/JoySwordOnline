-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 240 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 455.46, 240, 0 ), false, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 620.523, 240, 0 ), false, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1339.22, 240, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1209.76, 240, 0 ), true, 0 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( -223.492, 240, 0 ), false, 0 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( -69.224, 240, 0 ), false, 0 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 81.6463, 240, 0 ), false, 0 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 232.472, 240, 0 ), false, 0 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 811.264, 240, 0 ), false, 0 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 902.803, 240, 0 ), false, 0 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 977.391, 240, 0 ), false, 0 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 1520.12, 240, 0 ), false, 0 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 1660.29, 240, 0 ), false, 0 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 1824.38, 240, 0 ), false, 0 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 1985.06, 240, 0 ), false, 0 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( -0.390068, 480, 0 ), false, 1 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 108.181, 480, 0 ), false, 1 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 209.798, 480, 0 ), false, 1 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 1592.23, 480, 0 ), false, 3 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 1696.81, 480, 0 ), false, 3 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 1798.1, 480, 0 ), false, 3 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( -304.833, 1200, 0 ), false, 4 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( -214.342, 1200, 0 ), false, 4 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( -7.92738, 960, 0 ), false, 7 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 102.069, 960, 0 ), false, 7 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 190.809, 960, 0 ), false, 7 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( 447.477, 720, 0 ), false, 2 )
g_pLineMap:AddStartPos( 24, D3DXVECTOR3( 572.496, 720, 0 ), false, 2 )
g_pLineMap:AddStartPos( 25, D3DXVECTOR3( 676.678, 720, 0 ), false, 2 )
g_pLineMap:AddStartPos( 26, D3DXVECTOR3( 808.646, 720, 0 ), false, 2 )
g_pLineMap:AddStartPos( 27, D3DXVECTOR3( 926.708, 720, 0 ), false, 2 )
g_pLineMap:AddStartPos( 28, D3DXVECTOR3( 1044.78, 720, 0 ), false, 2 )
g_pLineMap:AddStartPos( 29, D3DXVECTOR3( 1159.38, 720, 0 ), false, 2 )
g_pLineMap:AddStartPos( 30, D3DXVECTOR3( 1277.45, 720, 0 ), false, 2 )
g_pLineMap:AddStartPos( 31, D3DXVECTOR3( 1364.27, 720, 0 ), false, 2 )
g_pLineMap:AddStartPos( 32, D3DXVECTOR3( 1590.03, 960, 0 ), false, 6 )
g_pLineMap:AddStartPos( 33, D3DXVECTOR3( 1700.74, 960, 0 ), false, 6 )
g_pLineMap:AddStartPos( 34, D3DXVECTOR3( 1794.14, 960, 0 ), false, 6 )
g_pLineMap:AddStartPos( 35, D3DXVECTOR3( 1983.39, 1200, 0 ), false, 5 )
g_pLineMap:AddStartPos( 36, D3DXVECTOR3( 2087.53, 1200, 0 ), false, 5 )






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
	"START_POS		= D3DXVECTOR3(-300, 240, 0)", 
	"END_POS		= D3DXVECTOR3(2100, 240, 0)", 
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
	"START_POS		= D3DXVECTOR3(-100, 480, 0)", 
	"END_POS		= D3DXVECTOR3(300, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(343, 720, 0)", 
	"END_POS		= D3DXVECTOR3(1456, 720, 0)", 
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
	"START_POS		= D3DXVECTOR3(1500, 480, 0)", 
	"END_POS		= D3DXVECTOR3(1900, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(-403, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(-103, 1200, 0)", 
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
	"START_POS		= D3DXVECTOR3(1902, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(2202, 1200, 0)", 
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
	"START_POS		= D3DXVECTOR3(1500, 960, 0)", 
	"END_POS		= D3DXVECTOR3(1900, 960, 0)", 
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
	"START_POS		= D3DXVECTOR3(-100, 960, 0)", 
	"END_POS		= D3DXVECTOR3(300, 960, 0)", 
}

