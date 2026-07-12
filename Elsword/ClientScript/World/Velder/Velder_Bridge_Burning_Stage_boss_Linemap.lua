

g_pLineMap:SetLandHeight( 900 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 3069.42, 1337, -5516 ), true, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 3361.09, 1337, -5516 ), true, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 6596.71, 1337, -5516 ), false, 10 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 6913.2, 1337, -5516 ), false, 10 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 3817.05, 1443.02, -5516 ), false, 3 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 4090.46, 1552.38, -5516 ), false, 3 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 4399.55, 1577, -5516 ), false, 4 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 4612.51, 1817, -5516 ), false, 0 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 4845.67, 1817, -5516 ), false, 0 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 5105.32, 1817, -5516 ), false, 0 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 5364.96, 1817, -5516 ), false, 0 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 5428.48, 1577, -5516 ), false, 8 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 5723.91, 1577, -5516 ), false, 8 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 6028.74, 1507.5, -5516 ), false, 9 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 6278.49, 1407.61, -5516 ), false, 9 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 4669.84, 1577, -5516 ), false, 4 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 4828.03, 1337, -5516 ), false, 1 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 5176.84, 1337, -5516 ), false, 1 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 5023.49, 1337, -5516 ), false, 1 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 3127.36, 1097, -5516 ), false, 5 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 3475.27, 1097, -5516 ), false, 5 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 3817.98, 1097, -5516 ), false, 5 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 4234.48, 1097, -5516 ), false, 5 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 4524.5, 1097, -5516 ), false, 5 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 4972.86, 1097, -5516 ), false, 5 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 5342.01, 1097, -5516 ), false, 5 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( 5774.41, 1097, -5516 ), false, 5 )
g_pLineMap:AddStartPos( 24, D3DXVECTOR3( 6185.6, 1097, -5516 ), false, 5 )
g_pLineMap:AddStartPos( 25, D3DXVECTOR3( 6644.35, 1097, -5516 ), false, 5 )
g_pLineMap:AddStartPos( 26, D3DXVECTOR3( 6865.82, 1097, -5516 ), false, 5 )






-- LINE DATA -- 
g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 0, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(4472, 1817, -5516)", 
	"END_POS		= D3DXVECTOR3(5535, 1817, -5516)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 1, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(4792, 1337, -5516)", 
	"END_POS		= D3DXVECTOR3(5216, 1337, -5516)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 2, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= 3, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(2940, 1337, -5516)", 
	"END_POS		= D3DXVECTOR3(3552, 1337, -5516)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 3, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 2, 
	NEXT_LINE		= 4, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(3552, 1337, -5516)", 
	"END_POS		= D3DXVECTOR3(4152, 1577, -5516)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 4, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 3, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(4152, 1577, -5516)", 
	"END_POS		= D3DXVECTOR3(4792, 1577, -5516)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 5, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(2940, 1097, -5516)", 
	"END_POS		= D3DXVECTOR3(7068, 1097, -5516)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 6, 
	LINE_TYPE 		= LINE_TYPE["LT_MONSTER_ROAD"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(4103, 114, 1995)", 
	"END_POS		= D3DXVECTOR3(6763, 114, 1995)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 7, 
	LINE_TYPE 		= LINE_TYPE["LT_MONSTER_ROAD"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(4086, 1088, 2638)", 
	"END_POS		= D3DXVECTOR3(7018, 1088, 2638)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 8, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= 9, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(5216, 1577, -5516)", 
	"END_POS		= D3DXVECTOR3(5855, 1577, -5516)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 9, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 8, 
	NEXT_LINE		= 10, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(5855, 1577, -5516)", 
	"END_POS		= D3DXVECTOR3(6455, 1337, -5516)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 10, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 9, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(6455, 1337, -5516)", 
	"END_POS		= D3DXVECTOR3(7068, 1337, -5516)", 
}


-- CAMERA DATA 

