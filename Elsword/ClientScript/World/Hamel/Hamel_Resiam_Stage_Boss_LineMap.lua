

g_pLineMap:SetLandHeight(80 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1288.25, 445, -2276 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1511.48, 445, -2276 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1198.53, 445, -2276 ), false, 3 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1452.92, 445, -2276 ), false, 3 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( -140.898, 205, -2276 ), true, 1 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 186.172, 205, -2276 ), true, 2 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 601.499, 205, -2276 ), true, 2 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 1053.17, 205, -2276 ), true, 2 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 1369.85, 205, -2276 ), true, 2 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( -442.01, 205, -2276 ), false, 1 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( -706.781, 205, -2276 ), false, 1 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( -997.51, 205, -2276 ), false, 1 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( -1257.09, 205, -2276 ), false, 1 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( -1516.67, 205, -2276 ), false, 1 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 30.4242, 205, -2276 ), false, 2 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( -1348.76, 445, -2276 ), false, 0 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( -1102.83, 445, -2276 ), false, 0 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 1062.92, 445, -2276 ), false, 3 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 1324.71, 445, -2276 ), false, 3 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 766.746, 205, -2276 ), false, 2 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 436.198, 205, -2276 ), false, 2 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 1200.42, 205, -2276 ), false, 2 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( -269.852, 205, -2276 ), false, 1 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 346.289, 205, -2276 ), false, 2 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( -592.466, 205, -2276 ), false, 1 )






-- LINE DATA -- 
g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 0, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -2, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-1630, 445, -2276)", 
	"END_POS		= D3DXVECTOR3(-947, 445, -2276)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 1, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= 2, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-1630, 205, -2276)", 
	"END_POS		= D3DXVECTOR3(0, 205, -2276)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 2, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(0, 205, -2276)", 
	"END_POS		= D3DXVECTOR3(1630, 205, -2276)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 3, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -2, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(957, 445, -2276)", 
	"END_POS		= D3DXVECTOR3(1630, 445, -2276)", 
}


-- CAMERA DATA 

