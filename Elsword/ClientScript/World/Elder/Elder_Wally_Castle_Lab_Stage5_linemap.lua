-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 64 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 7347.77, 309, 0 ), true, 10 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 11084.3, 309, 0 ), false, 9 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 7138.15, 309, 0 ), true, 10 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 11306.3, 309, 0 ), false, 9 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 9233.94, 204, 0 ), false, 4 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 8959.76, 204, 0 ), false, 4 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 9508.12, 204, 0 ), false, 4 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 8652.63, 167.496, 0 ), false, 3 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 8376.44, 90.1622, 0 ), false, 3 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 8050.64, 64, 0 ), false, 2 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 7740.68, 64, 0 ), false, 2 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 9783, 204, 0 ), false, 4 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 10101.4, 114.838, 0 ), false, 5 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 10395.6, 64, 0 ), false, 6 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 10687.1, 64, 0 ), false, 6 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 8439.29, 449, 0 ), false, 7 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 8650.89, 449, 0 ), false, 7 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 9959.88, 449, 0 ), false, 8 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 10171.8, 449, 0 ), false, 8 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 10412.7, 689, 0 ), false, 0 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 10697.2, 689, 0 ), false, 0 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 7898.57, 689, 0 ), false, 1 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 8128.24, 689, 0 ), false, 1 )






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
	"START_POS		= D3DXVECTOR3(10283, 689, 0)", 
	"END_POS		= D3DXVECTOR3(10783, 689, 0)", 
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
	"START_POS		= D3DXVECTOR3(7783, 689, 0)", 
	"END_POS		= D3DXVECTOR3(8283, 689, 0)", 
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
	NEXT_LINE		= 3, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(7468, 64, 0)", 
	"END_POS		= D3DXVECTOR3(8283, 64, 0)", 
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
	"START_POS		= D3DXVECTOR3(8283, 64, 0)", 
	"END_POS		= D3DXVECTOR3(8783, 204, 0)", 
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
	"START_POS		= D3DXVECTOR3(8783, 204, 0)", 
	"END_POS		= D3DXVECTOR3(9783, 204, 0)", 
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
	"START_POS		= D3DXVECTOR3(9783, 204, 0)", 
	"END_POS		= D3DXVECTOR3(10283, 64, 0)", 
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
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(10283, 64, 0)", 
	"END_POS		= D3DXVECTOR3(10969, 64, 0)", 
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
	"START_POS		= D3DXVECTOR3(8283, 449, 0)", 
	"END_POS		= D3DXVECTOR3(8783, 449, 0)", 
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
	"START_POS		= D3DXVECTOR3(9783, 449, 0)", 
	"END_POS		= D3DXVECTOR3(10283, 449, 0)", 
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
	"START_POS		= D3DXVECTOR3(10969, 309, 0)", 
	"END_POS		= D3DXVECTOR3(11448, 309, 0)", 
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
	"START_POS		= D3DXVECTOR3(7023, 309, 0)", 
	"END_POS		= D3DXVECTOR3(7468, 309, 0)", 
}

