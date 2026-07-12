

g_pLineMap:SetLandHeight( 100 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1667.66, 680, 3342 ), true, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1188.12, 440, 3342.47 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1184.14, 440, 3342.48 ), false, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1611.91, 680, 3342 ), false, 3 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( -1676.29, 200, 3342 ), false, 4 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( -1473.25, 200, 3342 ), false, 4 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( -1231.32, 200, 3342.37 ), false, 5 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( -954.809, 200, 3342.98 ), false, 5 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( -695.577, 200, 3343.26 ), false, 6 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( -384.499, 200, 3343.59 ), false, 6 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( -69.0972, 200, 3343.93 ), false, 6 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 225.842, 200, 3343.76 ), false, 7 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 454.948, 200, 3343.52 ), true, 7 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 697.027, 200, 3343.26 ), true, 7 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 917.49, 200, 3343.03 ), true, 7 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 1172.46, 200, 3342.5 ), true, 8 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 1379.88, 200, 3342.05 ), true, 8 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 1596.65, 200, 3342 ), true, 9 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 1760.84, 200, 3342 ), true, 9 )






-- LINE DATA -- 
g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 0, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-1403, 440, 3342)", 
	"END_POS		= D3DXVECTOR3(-945, 440, 3343)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 1, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -2, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-1849, 680, 3342)", 
	"END_POS		= D3DXVECTOR3(-1383, 680, 3342)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 2, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(945, 440, 3343)", 
	"END_POS		= D3DXVECTOR3(1403, 440, 3342)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 3, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -2, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1383, 680, 3342)", 
	"END_POS		= D3DXVECTOR3(1849, 680, 3342)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 4, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= 5, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-1849, 200, 3342)", 
	"END_POS		= D3DXVECTOR3(-1403, 200, 3342)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 5, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 4, 
	NEXT_LINE		= 6, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-1403, 200, 3342)", 
	"END_POS		= D3DXVECTOR3(-945, 200, 3343)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 6, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 5, 
	NEXT_LINE		= 7, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-945, 200, 3343)", 
	"END_POS		= D3DXVECTOR3(0, 200, 3344)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 7, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 6, 
	NEXT_LINE		= 8, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(0, 200, 3344)", 
	"END_POS		= D3DXVECTOR3(945, 200, 3343)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 8, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 7, 
	NEXT_LINE		= 9, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(945, 200, 3343)", 
	"END_POS		= D3DXVECTOR3(1403, 200, 3342)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 9, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 8, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1403, 200, 3342)", 
	"END_POS		= D3DXVECTOR3(1849, 200, 3342)", 
}


-- CAMERA DATA 

