

g_pLineMap:SetLandHeight( 50 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1662.72, 171, 724.255 ), true, 4 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1480.01, 171, 684.425 ), true, 4 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1902.5, 171, 862.88 ), false, 6 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1736.35, 171, 828.344 ), false, 6 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( -1253.77, 171, 635.107 ), false, 4 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( -1081.45, 171, 597.544 ), false, 4 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( -882.624, 171, 554.202 ), false, 4 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( -663.541, 171, 546 ), false, 5 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( -434.981, 171, 546 ), false, 5 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( -212.598, 171, 546 ), false, 5 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 40.6707, 171, 546 ), false, 5 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 244.522, 171, 546 ), false, 5 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 425.664, 171, 555.907 ), false, 6 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 624.716, 171, 597.282 ), false, 6 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 817.347, 171, 637.322 ), false, 6 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 990.98, 171, 673.413 ), false, 6 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 1215.98, 171, 720.181 ), false, 6 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 1098.3, 411, 695.978 ), false, 2 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 825.703, 411, 639.188 ), false, 2 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 1434.56, 171, 765.615 ), false, 6 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 1594.95, 171, 798.954 ), false, 6 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( -527.644, 411, 546 ), false, 0 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 3.60382, 411, 546 ), false, 0 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( -132.297, 411, 546 ), false, 0 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( -305.261, 411, 546 ), false, 0 )






-- LINE DATA -- 
g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 0, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-594, 411, 546)", 
	"END_POS		= D3DXVECTOR3(126, 411, 546)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 1, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-594, 411, 546)", 
	"END_POS		= D3DXVECTOR3(126, 411, 546)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 2, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(580, 411, 588)", 
	"END_POS		= D3DXVECTOR3(1276, 411, 733)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 3, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(580, 411, 588)", 
	"END_POS		= D3DXVECTOR3(1276, 411, 733)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 4, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= 5, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-1790, 171, 752)", 
	"END_POS		= D3DXVECTOR3(-845, 171, 546)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 5, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 4, 
	NEXT_LINE		= 6, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-845, 171, 546)", 
	"END_POS		= D3DXVECTOR3(378, 171, 546)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 6, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 5, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(378, 171, 546)", 
	"END_POS		= D3DXVECTOR3(1956, 171, 874)", 
}


-- CAMERA DATA 

