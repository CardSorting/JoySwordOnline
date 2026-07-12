

g_pLineMap:SetLandHeight( 450 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2150.74, 580, 0 ), true, 3 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2264.24, 580, 0 ), true, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2396.3, 580, 0 ), true, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2519.13, 580, 0 ), true, 2 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 2405.68, 580, 0 ), false, 2 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 2717.2, 580, 0 ), false, 2 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 2939.72, 580, 0 ), false, 2 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 3145.89, 580, 0 ), false, 2 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 3390.11, 580, 0 ), false, 2 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 3594.22, 580, 0 ), false, 2 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 3906.07, 314, 0 ), false, 0 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 3724.44, 314, 0 ), false, 0 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 4074.55, 314, 0 ), false, 0 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 2208.5, 580, 0 ), false, 2 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 2054.85, 580, 0 ), false, 3 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 2324.68, 580, 0 ), true, 2 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 1096.71, 580, 0 ), true, 3 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 1604.59, 580, 0 ), true, 3 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 1732.87, 580, 0 ), true, 3 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 848.299, 580, 0 ), true, 1 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 1348.03, 580, 0 ), true, 3 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 2592.72, 580, 0 ), true, 2 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 1235.46, 580, 0 ), true, 3 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 1478.93, 580, 0 ), true, 3 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 2517.47, 580, 0 ), false, 2 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 2327.36, 580, 0 ), false, 2 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( 3661.49, 314, 0 ), false, 0 )






-- LINE DATA -- 
g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 0, 
	LINE_TYPE 		= LINE_TYPE["LT_MONSTER_ROAD"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	SPEED			= -70, 
	"START_POS		= D3DXVECTOR3(3614, 314, 0)", 
	"END_POS		= D3DXVECTOR3(4075, 314, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 1, 
	LINE_TYPE 		= LINE_TYPE["LT_MONSTER_ROAD"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= 3, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(627, 580, 0)", 
	"END_POS		= D3DXVECTOR3(1070.45, 580, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 2, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 3, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	SPEED			= -70, 
	CAN_DOWN		= FALSE, 
	"START_POS		= D3DXVECTOR3(2167, 580, 0)", 
	"END_POS		= D3DXVECTOR3(3614, 580, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 3, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 1, 
	NEXT_LINE		= 2, 
	LINE_SET		= 0, 
	SPEED			= -70, 
	CAN_DOWN		= FALSE, 
	"START_POS		= D3DXVECTOR3(1070.45, 580, 0)", 
	"END_POS		= D3DXVECTOR3(2167, 580, 0)", 
}


-- CAMERA DATA 

