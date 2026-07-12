

g_pLineMap:SetLandHeight(49500 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -2281, 49585.1, 1003.53 ), true, 4 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -2445.86, 49585.1, 1003.53 ), true, 4 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -5566.5, 49585.1, 1003.53 ), false, 5 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -5778.26, 49585.1, 1003.53 ), false, 5 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( -2527.24, 49835.1, 1003.53 ), true, 3 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( -2699.61, 49835.1, 1003.53 ), true, 3 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( -3115.35, 50085.1, 1003.53 ), true, 1 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( -3301.58, 50085.1, 1003.53 ), true, 1 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( -3506.7, 50085.1, 1003.53 ), true, 1 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( -3048.53, 49585.1, 1003.53 ), true, 4 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( -3294.63, 49585.1, 1003.53 ), true, 4 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( -3534.94, 49585.1, 1003.53 ), true, 4 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( -3747.5, 49585.1, 1003.53 ), true, 4 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( -4065.71, 49585.1, 1003.53 ), true, 5 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( -4290.47, 49585.1, 1003.53 ), false, 5 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( -4523.2, 49585.1, 1003.53 ), false, 5 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( -4766.13, 49585.1, 1003.53 ), false, 5 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( -5032.01, 49585.1, 1003.53 ), false, 5 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( -5265.71, 49585.1, 1003.53 ), false, 5 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( -4527.22, 50085.1, 1003.53 ), false, 2 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( -4788.82, 50085.1, 1003.53 ), false, 2 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( -5027.33, 50085.1, 1003.53 ), false, 2 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( -5377.14, 49835.1, 1003.53 ), false, 0 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( -5588.87, 49835.1, 1003.53 ), false, 0 )






-- LINE DATA -- 
g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 0, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-5303.44, 49835.1, 1003.53)", 
	"END_POS		= D3DXVECTOR3(-5719.64, 49835.1, 1003.53)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 1, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-3014.18, 50085.1, 1003.53)", 
	"END_POS		= D3DXVECTOR3(-3638.54, 50085.1, 1003.53)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 2, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-4470.94, 50085.1, 1003.53)", 
	"END_POS		= D3DXVECTOR3(-5095.34, 50085.1, 1003.53)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 3, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-2389.85, 49835.1, 1003.53)", 
	"END_POS		= D3DXVECTOR3(-2806.07, 49835.1, 1003.53)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 4, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= 5, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-2181.74, 49585.1, 1003.53)", 
	"END_POS		= D3DXVECTOR3(-4054.74, 49585.1, 1003.53)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 5, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 4, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-4054.74, 49585.1, 1003.53)", 
	"END_POS		= D3DXVECTOR3(-5927.74, 49585.1, 1003.53)", 
}


-- CAMERA DATA 

