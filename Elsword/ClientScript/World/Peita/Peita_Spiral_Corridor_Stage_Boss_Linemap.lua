-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight(950 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -3026.07, 1357, -455 ), true, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -3222.55, 1357, -455 ), true, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -974.161, 1357, -455 ), false, 6 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -777.818, 1357, -455 ), false, 6 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( -1951.03, 1117, -455 ), false, 7 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( -2579.92, 1797, -455 ), false, 0 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( -2422.81, 1797, -455 ), false, 0 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( -2259.96, 1797, -455 ), false, 0 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( -2096.11, 1797, -455 ), false, 0 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( -1922.71, 1797, -455 ), false, 0 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( -1747.1, 1797, -455 ), false, 0 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( -1571.54, 1797, -455 ), false, 0 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( -1393.62, 1797, -455 ), false, 0 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( -1525.58, 1117, -455 ), true, 7 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( -2409.88, 1117, -455 ), false, 7 )






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
	"START_POS		= D3DXVECTOR3(-2754, 1797, -455)", 
	"END_POS		= D3DXVECTOR3(-1261, 1797, -455)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 1, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -2, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(-3353, 1357, -455)", 
	"END_POS		= D3DXVECTOR3(-2903, 1357, -455)", 
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
	NEXT_LINE		= -2, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(-919, 1596, -455)", 
	"END_POS		= D3DXVECTOR3(-654, 1596, -455)", 
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
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(-3353, 1597, -455)", 
	"END_POS		= D3DXVECTOR3(-3088, 1597, -455)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(-1261, 1837, -455)", 
	"END_POS		= D3DXVECTOR3(-1112, 1837, -455)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(-2903, 1837, -455)", 
	"END_POS		= D3DXVECTOR3(-2754, 1837, -455)", 
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
	NEXT_LINE		= -2, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(-1112, 1357, -455)", 
	"END_POS		= D3DXVECTOR3(-648, 1357, -455)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(-3353, 1117, -455)", 
	"END_POS		= D3DXVECTOR3(-648, 1117, -455)", 
}

