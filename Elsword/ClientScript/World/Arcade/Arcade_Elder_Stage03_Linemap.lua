-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 240 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 41.4301, 960, 0 ), true, 5 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2407.04, 960, 0 ), false, 5 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 176.092, 960, 0 ), true, 5 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2244.72, 960, 0 ), false, 5 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 311.682, 960, 0 ), true, 5 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2083.13, 960, 0 ), false, 5 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 6.92445, 240, 0 ), true, 1 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 145.002, 240, 0 ), true, 1 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 293.697, 240, 0 ), true, 1 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 447.704, 240, 0 ), true, 1 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 580.468, 240, 0 ), true, 1 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 1807.2, 240, 0 ), true, 1 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 1955.9, 240, 0 ), true, 1 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 2109.9, 240, 0 ), true, 1 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 2247.98, 240, 0 ), true, 1 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 2386.05, 240, 0 ), true, 1 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 22.7151, 1680, 0 ), true, 0 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 197.972, 1680, 0 ), true, 0 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 304.189, 1680, 0 ), true, 0 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 442.271, 1680, 0 ), true, 0 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 575.042, 1680, 0 ), true, 0 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 697.191, 1680, 0 ), true, 0 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 107.687, 1680, 0 ), true, 0 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 808.719, 1680, 0 ), true, 0 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 1764.67, 1680, 0 ), true, 0 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 1876.2, 1680, 0 ), true, 0 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 1987.73, 1680, 0 ), true, 0 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 2131.12, 1680, 0 ), true, 0 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( 2253.27, 1680, 0 ), true, 0 )
g_pLineMap:AddStartPos( 24, D3DXVECTOR3( 2401.97, 1680, 0 ), true, 0 )
g_pLineMap:AddStartPos( 25, D3DXVECTOR3( 1679.7, 1680, 0 ), true, 0 )
g_pLineMap:AddStartPos( 26, D3DXVECTOR3( 1568.17, 1680, 0 ), true, 0 )
g_pLineMap:AddStartPos( 27, D3DXVECTOR3( 904.315, 1680, 0 ), true, 0 )
g_pLineMap:AddStartPos( 28, D3DXVECTOR3( 1015.84, 1680, 0 ), true, 0 )
g_pLineMap:AddStartPos( 29, D3DXVECTOR3( 1472.58, 1680, 0 ), true, 0 )
g_pLineMap:AddStartPos( 30, D3DXVECTOR3( 1127.37, 1680, 0 ), true, 0 )
g_pLineMap:AddStartPos( 31, D3DXVECTOR3( 1209.02, 480, 0 ), true, 2 )






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
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-114, 240, 0)", 
	"END_POS		= D3DXVECTOR3(2537, 240, 0)", 
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
	"START_POS		= D3DXVECTOR3(733, 480, 0)", 
	"END_POS		= D3DXVECTOR3(1678, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(-134, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(2557, 1200, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 4, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -2, 
	NEXT_LINE		= -2, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-124, 1440, 0)", 
	"END_POS		= D3DXVECTOR3(2547, 1440, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 5, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -2, 
	NEXT_LINE		= -2, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-144, 960, 0)", 
	"END_POS		= D3DXVECTOR3(2567, 960, 0)", 
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
	"START_POS		= D3DXVECTOR3(-154, 720, 0)", 
	"END_POS		= D3DXVECTOR3(2577, 720, 0)", 
}

