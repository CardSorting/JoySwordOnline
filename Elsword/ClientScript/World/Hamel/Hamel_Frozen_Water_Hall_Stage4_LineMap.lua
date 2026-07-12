

g_pLineMap:SetLandHeight( 600 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 19541.5, 704, 134 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 19718.6, 704, 134 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 22693.7, 704, 134 ), false, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 22866.1, 704, 134 ), false, 0 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 19863.1, 4029.03, 134 ), false, 3 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 21197.6, 4039.17, 134 ), false, 4 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 22620.2, 4054.63, 134 ), false, 5 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 21235.3, 704, 134 ), false, 0 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 21042.6, 704, 134 ), false, 0 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 20773, 704, 134 ), false, 0 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 20581.7, 704, 134 ), false, 0 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 20375.6, 704, 134 ), false, 0 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 20157.9, 704, 134 ), false, 0 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 19919.5, 704, 134 ), false, 0 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 20038.2, 944, 134 ), false, 1 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 20251.7, 944, 134 ), false, 1 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 21518.7, 704, 134 ), false, 0 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 21863.1, 704, 134 ), false, 0 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 22191.1, 704, 134 ), false, 0 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 22438.4, 704, 134 ), false, 0 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 22290.4, 944, 134 ), false, 2 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 22125.3, 944, 134 ), false, 2 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 21718.2, 704, 134 ), false, 0 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 21382, 704, 134 ), false, 0 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 22044.5, 704, 134 ), false, 0 )






-- LINE DATA -- 
g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 0, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(19374, 704, 134)", 
	"END_POS		= D3DXVECTOR3(23040, 704, 134)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 1, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(19917, 944, 134)", 
	"END_POS		= D3DXVECTOR3(20427, 944, 134)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 2, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(22017, 944, 134)", 
	"END_POS		= D3DXVECTOR3(22527, 944, 134)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 3, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(19704, 4089, 134)", 
	"END_POS		= D3DXVECTOR3(20500, 3789, 134)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 4, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(21074, 4089, 134)", 
	"END_POS		= D3DXVECTOR3(21570, 3889, 134)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 5, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(22043, 3889, 134)", 
	"END_POS		= D3DXVECTOR3(22740, 4089, 134)", 
}


-- CAMERA DATA 

