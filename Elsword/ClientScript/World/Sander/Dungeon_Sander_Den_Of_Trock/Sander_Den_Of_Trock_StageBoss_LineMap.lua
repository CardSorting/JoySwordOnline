

g_pLineMap:SetLandHeight( 3352 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -2183.53, 3652, -2230.88 ), true, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1947.82, 3652, -2230.88 ), true, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1804.87, 3652, -2230.88 ), false, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2134.4, 3652, -2230.88 ), false, 0 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( -675.259, 3412, -2230.88 ), false, 2 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 422.055, 3412, -2230.88 ), false, 3 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( -0.00134277, 3412, -2230.88 ), false, 2 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( -140.204, 3412, -2230.88 ), true, 2 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( -474.335, 3412, -2230.88 ), true, 2 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 1088.19, 3412, -2230.88 ), false, 3 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 705.267, 3412, -2230.88 ), false, 3 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( -1060.2, 3412, -2230.88 ), false, 2 )






-- LINE DATA -- 
g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 0, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1500, 3652, -2230.88)", 
	"END_POS		= D3DXVECTOR3(2400, 3652, -2230.88)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 1, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-2400, 3652, -2230.88)", 
	"END_POS		= D3DXVECTOR3(-1500, 3652, -2230.88)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 2, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= 3, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-1500, 3412, -2230.88)", 
	"END_POS		= D3DXVECTOR3(0, 3412, -2230.88)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 3, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 2, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(0, 3412, -2230.88)", 
	"END_POS		= D3DXVECTOR3(1500, 3412, -2230.88)", 
}


-- CAMERA DATA 

