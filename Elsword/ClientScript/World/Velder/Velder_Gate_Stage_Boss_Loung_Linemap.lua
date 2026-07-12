

g_pLineMap:SetLandHeight( 1000 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1823.02, 1200, 0 ), true, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2147.22, 1200, 0 ), true, 3 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 3526.83, 1200, 0 ), true, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 3882.9, 1200, 0 ), true, 1 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 2706.66, 1440, 0 ), false, 4 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 3005.47, 1440, 0 ), false, 4 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 3247.07, 1440, 0 ), false, 4 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 2542, 1200, 0 ), false, 0 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 2992.76, 1200, 0 ), false, 0 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 3374.23, 1200, 0 ), false, 0 )






-- LINE DATA -- 
g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 0, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 1, 
	NEXT_LINE		= 3, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(2542, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(3400, 1200, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 1, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 0, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(3400, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(4264, 1200, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 2, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= 3, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1228, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(1885, 1200, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 3, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 2, 
	NEXT_LINE		= 0, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1885, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(2542, 1200, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 4, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(2542, 1440, 0)", 
	"END_POS		= D3DXVECTOR3(3400, 1440, 0)", 
}


-- CAMERA DATA 

