

g_pLineMap:SetLandHeight( 40 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1599.93, 142, 0 ), true, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1340.31, 142, 0 ), true, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1611.11, 142, 0 ), false, 3 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1351.49, 142, 0 ), false, 3 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( -991.882, 142, 0 ), false, 2 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( -602.459, 142, 0 ), false, 2 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( -880.026, 382, 0 ), false, 0 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( -219.869, 142, 0 ), false, 2 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 60.2421, 142, 0 ), false, 3 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 436.003, 142, 0 ), false, 3 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 777.604, 142, 0 ), false, 3 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 1119.2, 142, 0 ), false, 3 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 905.735, 382, 0 ), false, 1 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 619.467, 382, 0 ), false, 1 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( -641.471, 382, 0 ), false, 0 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( -1050.42, 382, 0 ), false, 0 )






-- LINE DATA -- 
g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 0, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-1141, 382, 0)", 
	"END_POS		= D3DXVECTOR3(-531, 382, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 1, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(534, 382, 0)", 
	"END_POS		= D3DXVECTOR3(1144, 382, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 2, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= 3, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-1700, 142, 0)", 
	"END_POS		= D3DXVECTOR3(0, 142, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 3, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 2, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(0, 142, 0)", 
	"END_POS		= D3DXVECTOR3(1700, 142, 0)", 
}


-- CAMERA DATA 

