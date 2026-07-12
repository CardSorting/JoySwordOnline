

g_pLineMap:SetLandHeight( -50 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1588.36, 258, 3170.75 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -2003.49, 258, 3170.26 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -2158.56, 18, 3170 ), true, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -2540.32, 18, 3170 ), true, 1 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( -96.3749, 18, 3171.41 ), true, 3 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( -2573, 18, 3170 ), true, 1 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 2573, 18, 3174 ), true, 5 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( -1815.14, 258, 3170.48 ), true, 0 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 1842.36, 258, 3173.55 ), true, 6 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( -1712.54, 18, 3170 ), true, 1 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 1619.06, 18, 3173.07 ), true, 5 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( -859.276, 18, 3170.66 ), true, 2 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 759.931, 18, 3172.24 ), true, 4 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( -2138.09, 1583, 5786.34 ), true, 7 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( -1568.02, 1583, 5786.78 ), true, 7 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 1560.04, 1583, 5789.21 ), true, 7 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 2136.6, 1583, 5789.66 ), true, 7 )






-- LINE DATA -- 
g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 0, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-2230, 258, 3170)", 
	"END_POS		= D3DXVECTOR3(-1372, 258, 3171)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 1, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= 2, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-2573, 18, 3170)", 
	"END_POS		= D3DXVECTOR3(-1544, 18, 3170)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 2, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 1, 
	NEXT_LINE		= 3, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-1544, 18, 3170)", 
	"END_POS		= D3DXVECTOR3(-514, 18, 3171)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 3, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 2, 
	NEXT_LINE		= 4, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-514, 18, 3171)", 
	"END_POS		= D3DXVECTOR3(514, 18, 3172)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 4, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 3, 
	NEXT_LINE		= 5, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(514, 18, 3172)", 
	"END_POS		= D3DXVECTOR3(1544, 18, 3173)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 5, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 4, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1544, 18, 3173)", 
	"END_POS		= D3DXVECTOR3(2573, 18, 3174)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 6, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1372, 258, 3173)", 
	"END_POS		= D3DXVECTOR3(2230, 258, 3174)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 7, 
	LINE_TYPE 		= LINE_TYPE["LT_MONSTER_ROAD"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-2573, 1583, 5786)", 
	"END_POS		= D3DXVECTOR3(2573, 1583, 5790)", 
}


-- CAMERA DATA 

