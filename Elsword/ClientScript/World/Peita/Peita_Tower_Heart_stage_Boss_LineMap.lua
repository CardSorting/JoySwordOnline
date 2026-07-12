-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 1500 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1158.05, 1671, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1146, 1671, 0 ), false, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1375.95, 1732, 0 ), true, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1363.33, 1732, 0 ), false, 2 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( -0, 1671, 0 ), true, 0 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( -768.6, 1671, 0 ), false, 0 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( -256.2, 1671, 0 ), false, 0 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 256.2, 1671, 0 ), false, 0 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 768.6, 1671, 0 ), false, 0 )






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
	"START_POS		= D3DXVECTOR3(-1281, 1671, 0)", 
	"END_POS		= D3DXVECTOR3(1281, 1671, 0)", 
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
	"START_POS		= D3DXVECTOR3(-1442, 1732, 0)", 
	"END_POS		= D3DXVECTOR3(-1281, 1732, 0)", 
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
	"START_POS		= D3DXVECTOR3(1281, 1732, 0)", 
	"END_POS		= D3DXVECTOR3(1442, 1732, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 3, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_BUNGEE"], 
	TELEPORT_LINE		= 0,
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(-2042, 0, 0)", 
	"END_POS		= D3DXVECTOR3(-1442, 0, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 4, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_BUNGEE"],
	TELEPORT_LINE		= 0, 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(1442, 0, 0)", 
	"END_POS		= D3DXVECTOR3(2042, 0, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 5, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_MONSTER_ROAD"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(-2042, 1732, 0)", 
	"END_POS		= D3DXVECTOR3(-1442, 1732, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 6, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_MONSTER_ROAD"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(1442, 1732, 0)", 
	"END_POS		= D3DXVECTOR3(2042, 1732, 0)", 
}

