-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 658 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( false, D3DXVECTOR3( -546.857, 658, -277.563 ), false, 8 )
g_pLineMap:SetTeamStartPos( false, D3DXVECTOR3( -815.406, 1378, -277.749 ), false, 5 )
g_pLineMap:SetTeamStartPos( false, D3DXVECTOR3( -532.3, 1618, -278.035 ), false, 7 )
g_pLineMap:SetTeamStartPos( false, D3DXVECTOR3( -829.699, 658, -278.262 ), false, 8 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -3105.67, 658, -283.887 ), true, 8 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -3329.47, 1378, -284.828 ), true, 4 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -3314.26, 658, -284.403 ), true, 8 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -3351.88, 1618, -284.492 ), true, 6 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 0, D3DXVECTOR3( -412.861, 658, -277.232 ), false, 8 )
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( -3349.48, 658, -284.49 ), true, 8 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( -2810.36, 1378, -284.433 ), true, 4 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( -3346.26, 1618, -284.478 ), true, 6 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( -2464.4, 898, -284.378 ), true, 0 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( -1304.72, 898, -277.852 ), false, 1 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( -931.222, 1378, -277.924 ), false, 5 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( -499.017, 1618, -277.874 ), false, 7 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( -1940.26, 1138, -281.486 ), false, 2 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( -1712.02, 658, -280.443 ), false, 8 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( -2274.18, 658, -281.832 ), true, 8 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( -2126.44, 1618, -282.657 ), true, 3 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( -1731.91, 1618, -280.176 ), false, 3 )






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
	"START_POS		= D3DXVECTOR3(-2340, 1618, -284)", 
	"END_POS		= D3DXVECTOR3(-1545, 1618, -279)", 
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
	"START_POS		= D3DXVECTOR3(-3556, 1378, -285)", 
	"END_POS		= D3DXVECTOR3(-2240, 1378, -284)", 
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
	NEXT_LINE		= -2, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-1644, 1378, -279)", 
	"END_POS		= D3DXVECTOR3(-319, 1378, -277)", 
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
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-3556, 1618, -285)", 
	"END_POS		= D3DXVECTOR3(-3154, 1618, -284)", 
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
	"START_POS		= D3DXVECTOR3(-731, 1618, -279)", 
	"END_POS		= D3DXVECTOR3(-319, 1618, -277)", 
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
	"START_POS		= D3DXVECTOR3(-3556, 658, -285)", 
	"END_POS		= D3DXVECTOR3(-319, 658, -277)", 
}

