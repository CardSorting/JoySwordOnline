-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight(550)




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -3073.38, 658, -283.807 ), true, 3 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -3234.81, 658, -284.206 ), true, 3 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -3393.13, 658, -284.597 ), true, 3 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -3551.46, 658, -284.989 ), true, 3 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( -2107.77, 1138, -282.539 ), false, 2 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( -2253.59, 1138, -283.457 ), false, 2 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( -1783.32, 1138, -280.499 ), false, 2 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( -641.467, 658, -277.797 ), false, 3 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( -1534.2, 898, -278.628 ), false, 1 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( -1327.94, 898, -277.93 ), false, 1 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( -1144.98, 898, -277.311 ), false, 1 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( -2697.25, 898, -284.771 ), false, 0 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( -2497.25, 898, -284.434 ), false, 0 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( -2327.24, 898, -284.147 ), false, 0 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( -2684.85, 658, -282.847 ), false, 3 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( -2486.17, 658, -282.356 ), false, 3 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( -2300.74, 658, -281.898 ), false, 3 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( -2095.42, 658, -281.39 ), false, 3 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( -1900.06, 658, -280.907 ), false, 3 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( -1655.01, 658, -280.302 ), false, 3 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( -1502.68, 658, -279.925 ), false, 3 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( -1284.12, 658, -279.385 ), false, 3 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( -1111.93, 658, -278.96 ), false, 3 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( -886.736, 658, -278.403 ), false, 3 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( -1943.95, 1138, -281.509 ), false, 2 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( -1635.86, 1138, -279.571 ), false, 2 )






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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(-2833, 898, -285)", 
	"END_POS		= D3DXVECTOR3(-2240, 898, -284)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(-1644, 898, -279)", 
	"END_POS		= D3DXVECTOR3(-1053, 898, -277)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(-2340, 1138, -284)", 
	"END_POS		= D3DXVECTOR3(-1545, 1138, -279)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(-3556, 658, -285)", 
	"END_POS		= D3DXVECTOR3(-319, 658, -277)", 
}

