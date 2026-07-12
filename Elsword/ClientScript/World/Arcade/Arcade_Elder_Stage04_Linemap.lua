-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 240 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -428.539, 480, 0 ), true, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2412.59, 480, 0 ), false, 3 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -290.474, 480, 0 ), true, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2253.26, 480, 0 ), false, 3 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -194.762, 480, 0 ), true, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2173.86, 480, 0 ), false, 3 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( -340.184, 720, 0 ), false, 4 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( -323.76, 960, 0 ), false, 2 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( -329.666, 1200, 0 ), false, 5 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 72.7467, 1440, 0 ), false, 6 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 215.937, 1440, 0 ), false, 6 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 501.013, 1680, 0 ), false, 12 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 625.92, 1680, 0 ), false, 12 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 1371.47, 1680, 0 ), false, 13 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 1489.91, 1680, 0 ), false, 13 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 1762.38, 1440, 0 ), false, 10 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 1955.29, 1440, 0 ), false, 10 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 2348.85, 1200, 0 ), false, 7 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 2365.91, 960, 0 ), false, 8 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 2361.65, 720, 0 ), false, 9 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 99.7347, 240, 0 ), false, 11 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 296.051, 240, 0 ), false, 11 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 475.296, 240, 0 ), false, 11 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 641.737, 240, 0 ), false, 11 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 786.841, 240, 0 ), false, 11 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 949.015, 240, 0 ), false, 11 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 1132.53, 240, 0 ), false, 11 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 1286.17, 240, 0 ), false, 11 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( 1473.95, 240, 0 ), false, 11 )
g_pLineMap:AddStartPos( 24, D3DXVECTOR3( 1683.07, 240, 0 ), false, 11 )
g_pLineMap:AddStartPos( 25, D3DXVECTOR3( 1849.51, 240, 0 ), false, 11 )
g_pLineMap:AddStartPos( 26, D3DXVECTOR3( 526.494, 480, 0 ), false, 0 )
g_pLineMap:AddStartPos( 27, D3DXVECTOR3( 1516.62, 480, 0 ), false, 14 )






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
	"START_POS		= D3DXVECTOR3(333, 480, 0)", 
	"END_POS		= D3DXVECTOR3(687, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(-544, 480, 0)", 
	"END_POS		= D3DXVECTOR3(-100, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(-524, 960, 0)", 
	"END_POS		= D3DXVECTOR3(-179, 960, 0)", 
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
	"START_POS		= D3DXVECTOR3(2094, 480, 0)", 
	"END_POS		= D3DXVECTOR3(2567, 480, 0)", 
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
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-534, 720, 0)", 
	"END_POS		= D3DXVECTOR3(-179, 720, 0)", 
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
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-514, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(-179, 1200, 0)", 
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
	"START_POS		= D3DXVECTOR3(-179, 1440, 0)", 
	"END_POS		= D3DXVECTOR3(323, 1440, 0)", 
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
	"START_POS		= D3DXVECTOR3(2180, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(2537, 1200, 0)", 
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
	NEXT_LINE		= -2, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(2180, 960, 0)", 
	"END_POS		= D3DXVECTOR3(2547, 960, 0)", 
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
	NEXT_LINE		= -2, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(2180, 720, 0)", 
	"END_POS		= D3DXVECTOR3(2557, 720, 0)", 
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
	"START_POS		= D3DXVECTOR3(1678, 1440, 0)", 
	"END_POS		= D3DXVECTOR3(2182, 1440, 0)", 
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
	"START_POS		= D3DXVECTOR3(-100, 240, 0)", 
	"END_POS		= D3DXVECTOR3(2094, 240, 0)", 
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
	"START_POS		= D3DXVECTOR3(333, 1680, 0)", 
	"END_POS		= D3DXVECTOR3(687, 1680, 0)", 
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
	"START_POS		= D3DXVECTOR3(1312, 1680, 0)", 
	"END_POS		= D3DXVECTOR3(1665, 1680, 0)", 
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
	"START_POS		= D3DXVECTOR3(1312, 480, 0)", 
	"END_POS		= D3DXVECTOR3(1665, 480, 0)", 
}

