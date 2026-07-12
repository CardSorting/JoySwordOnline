

g_pLineMap:SetLandHeight( 1100 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 75.6577, 1200, 0 ), true, 3 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -98.2146, 1200, 0 ), false, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 275.173, 1200, 0 ), true, 3 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -290.815, 1200, 0 ), false, 2 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( -1700, 3000, 0 ), false, 8 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( -1500, 3000, 0 ), false, 8 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 1500, 3000, 0 ), false, 9 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 1700, 3000, 0 ), false, 9 )






-- LINE DATA -- 
g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 0, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-2069, 1550, 0)", 
	"END_POS		= D3DXVECTOR3(-1692, 1550, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 1, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -2, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-1692, 1440, 0)", 
	"END_POS		= D3DXVECTOR3(-1100, 1440, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 2, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= 3, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-1692, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(0, 1200, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 3, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 2, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(0, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(1692, 1200, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 4, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -2, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1100, 1440, 0)", 
	"END_POS		= D3DXVECTOR3(1692, 1440, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 5, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1692, 1550, 0)", 
	"END_POS		= D3DXVECTOR3(2069, 1550, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 6, 
	LINE_TYPE 		= LINE_TYPE["LT_BUNGEE"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	TELEPORT_LINE		= 0, 
	"START_POS		= D3DXVECTOR3(-2451, 0, 0)", 
	"END_POS		= D3DXVECTOR3(-2069, 0, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 7, 
	LINE_TYPE 		= LINE_TYPE["LT_BUNGEE"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	TELEPORT_LINE		= 5, 
	"START_POS		= D3DXVECTOR3(2069, 0, 0)", 
	"END_POS		= D3DXVECTOR3(2451, 0, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 8, 
	LINE_TYPE 		= LINE_TYPE["LT_MONSTER_ROAD"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	SPEED			= 250, 
	JUMP_SPEED_Y			= 0, 
	"START_POS		= D3DXVECTOR3(-1700, 3000, 0)", 
	"END_POS		= D3DXVECTOR3(-500, 3000, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 9, 
	LINE_TYPE 		= LINE_TYPE["LT_MONSTER_ROAD"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	SPEED			= -250, 
	JUMP_SPEED_Y			= 0, 
	"START_POS		= D3DXVECTOR3(500, 3000, 0)", 
	"END_POS		= D3DXVECTOR3(1700, 3000, 0)", 
}


-- CAMERA DATA 

