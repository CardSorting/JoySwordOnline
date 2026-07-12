

g_pLineMap:SetLandHeight( 600)




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -946.802, 1250, 40 ), true, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1528.61, 1010, 40 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1501.5, 1010, 40 ), false, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1100.42, 770, 40 ), false, 6 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( -16.0373, 768, 3121 ), false, 3 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( -8.5506, 770, 40 ), false, 5 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 229.716, 770, 40 ), false, 5 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 430, 770, 40 ), false, 5 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 648.945, 770, 40 ), false, 6 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 906.206, 770, 40 ), false, 6 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 1186.17, 770, 40 ), false, 6 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 1493.23, 770, 40 ), false, 6 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 1560.3, 1010, 40 ), false, 2 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 1745.88, 770, 40 ), false, 6 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( -264.378, 770, 40 ), true, 5 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( -444.506, 770, 40 ), true, 4 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( -654.777, 770, 40 ), true, 4 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( -806.861, 770, 40 ), true, 4 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( -985.93, 770, 40 ), true, 4 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( -1174.02, 770, 40 ), true, 4 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( -1352.99, 770, 40 ), true, 4 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( -1514.12, 770, 40 ), true, 4 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( -1688.65, 770, 40 ), true, 4 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( -1519.54, 1010, 40 ), true, 0 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( -968.947, 1250, 40 ), true, 1 )






-- LINE DATA -- 
g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 0, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-1800, 1010, 40)", 
	"END_POS		= D3DXVECTOR3(-1320, 1010, 40)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 1, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-1210, 1250, 40)", 
	"END_POS		= D3DXVECTOR3(-760, 1250, 40)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 2, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1280, 1010, 40)", 
	"END_POS		= D3DXVECTOR3(1760, 1010, 40)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 3, 
	LINE_TYPE 		= LINE_TYPE["LT_MONSTER_ROAD"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-360, 768, 3121)", 
	"END_POS		= D3DXVECTOR3(360, 768, 3121)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 4, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= 5, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-1980, 770, 40)", 
	"END_POS		= D3DXVECTOR3(-440, 770, 40)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 5, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 4, 
	NEXT_LINE		= 6, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-440, 770, 40)", 
	"END_POS		= D3DXVECTOR3(430, 770, 40)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 6, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 5, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(430, 770, 40)", 
	"END_POS		= D3DXVECTOR3(1940, 770, 40)", 
}


-- CAMERA DATA 

