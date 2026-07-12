

g_pLineMap:SetLandHeight( 240 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1547.65, 597, -2251 ), true, 3 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1072.93, 839, -2251 ), true, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1459.69, 357, -2251 ), false, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1529.64, 597, -2251 ), false, 4 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 595.755, 357, -2251 ), false, 0 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 860.903, 357, -2251 ), false, 0 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 325.407, 357, -2251 ), false, 0 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 91.4561, 357, -2251 ), false, 0 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( -163.322, 357, -2251 ), false, 0 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( -444.089, 357, -2251 ), true, 0 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( -709.244, 357, -2251 ), true, 0 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( -1462.65, 597, -2251 ), true, 3 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( -968.249, 839, -2251 ), true, 2 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 1299.02, 597, -2251 ), true, 4 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 1661.03, 597, -2251 ), true, 4 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 155.678, 240, 815 ), true, 1 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 565.3, 240, 815 ), true, 1 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 941.068, 240, 815 ), true, 1 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( -585.724, 240, 815 ), true, 1 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( -1235.71, 240, 815 ), true, 1 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( -1669.03, 240, 815 ), true, 1 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 1611.34, 240, 815 ), true, 1 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( -1019.58, 357, -2251 ), true, 0 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( -1365.78, 357, -2251 ), true, 0 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( -1766.08, 357, -2251 ), true, 0 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 1253.97, 357, -2251 ), true, 0 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( 1517.23, 357, -2251 ), true, 0 )
g_pLineMap:AddStartPos( 24, D3DXVECTOR3( 1805.73, 357, -2251 ), true, 0 )






-- LINE DATA -- 
g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 0, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-2055, 357, -2251)", 
	"END_POS		= D3DXVECTOR3(2055, 357, -2251)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 1, 
	LINE_TYPE 		= LINE_TYPE["LT_MONSTER_ROAD"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-2055, 240, 815)", 
	"END_POS		= D3DXVECTOR3(2055, 240, 815)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 2, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-1401, 839, -2251)", 
	"END_POS		= D3DXVECTOR3(-605, 839, -2251)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 3, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-1899, 597, -2251)", 
	"END_POS		= D3DXVECTOR3(-1103, 597, -2251)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 4, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1095, 597, -2251)", 
	"END_POS		= D3DXVECTOR3(1890, 597, -2251)", 
}


-- CAMERA DATA 

