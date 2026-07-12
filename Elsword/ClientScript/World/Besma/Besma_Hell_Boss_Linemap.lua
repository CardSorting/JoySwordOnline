

g_pLineMap:SetLandHeight( 240 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -109.587, 240, 225 ), true, 6 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 117.212, 240, 225 ), true, 6 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 412.404, 479, 225 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 700.404, 479, 225 ), true, 0 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 1013.6, 720, 225 ), false, 1 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 1388.95, 479, 225 ), false, 2 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 1709.1, 479, 225 ), false, 2 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 2165.55, 479, 225 ), false, 2 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 2507.88, 479, 225 ), false, 2 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 2694.8, 720, 225 ), false, 3 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 3180.8, 479, 225 ), false, 4 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 3733.48, 240, 225 ), false, 5 )






-- LINE DATA -- 
g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 0, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(319, 479, 225)", 
	"END_POS		= D3DXVECTOR3(848, 479, 225)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 1, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(848, 720, 225)", 
	"END_POS		= D3DXVECTOR3(1233, 720, 225)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 2, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1233, 479, 225)", 
	"END_POS		= D3DXVECTOR3(2609, 479, 225)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 3, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(2609, 720, 225)", 
	"END_POS		= D3DXVECTOR3(2931, 720, 225)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 4, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(2931, 479, 225)", 
	"END_POS		= D3DXVECTOR3(3478, 479, 225)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 5, 
	LINE_TYPE 		= LINE_TYPE["LT_MONSTER_ROAD"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(3598, 240, 225)", 
	"END_POS		= D3DXVECTOR3(3950, 240, 225)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 6, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-200, 240, 225)", 
	"END_POS		= D3DXVECTOR3(319, 240, 225)", 
}


-- CAMERA DATA 

