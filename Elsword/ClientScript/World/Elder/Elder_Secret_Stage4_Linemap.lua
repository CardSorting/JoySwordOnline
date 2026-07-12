

g_pLineMap:SetLandHeight( 0 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 816.097, 280, 5 ), true, 8 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1020.27, 280, 5 ), true, 8 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1224.45, 280, 5 ), true, 8 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1385, 280, 5 ), true, 8 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 2015, 140, 5 ), false, 9 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 2213.19, 140, 5 ), false, 10 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 2414, 140, 5 ), false, 10 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 2627.55, 95.9041, 5 ), false, 11 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 2835.99, 52.8634, 5 ), false, 11 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 2938.71, 340, 5 ), false, 7 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 3057.87, 7.04747, 5 ), false, 11 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 3255.83, 0, 5 ), false, 12 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 3427.83, 0, 5 ), false, 12 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 3594.46, 0, 5 ), false, 12 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 3820.22, 0, 5 ), false, 12 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 4181.36, 240, 5 ), false, 3 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 4555.3, 480, 5 ), false, 1 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 4819.25, 480, 5 ), false, 1 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 5050.22, 480, 5 ), false, 1 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 5281.18, 480, 5 ), false, 1 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 5594.64, 240, 5 ), false, 4 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 5903.28, 0, 5 ), false, 2 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 6178.23, 0, 5 ), false, 2 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 6491.68, 0, 5 ), false, 2 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 6794.13, 0, 5 ), false, 2 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 6629.16, 480, 5 ), false, 5 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( 7118.58, 240, 5 ), false, 0 )
g_pLineMap:AddStartPos( 24, D3DXVECTOR3( 7728.31, 480, 5 ), false, 6 )
g_pLineMap:AddStartPos( 25, D3DXVECTOR3( 7557.9, 0, 5 ), false, 13 )
g_pLineMap:AddStartPos( 26, D3DXVECTOR3( 7882.28, 0, 5 ), false, 13 )
g_pLineMap:AddStartPos( 27, D3DXVECTOR3( 8231.17, 2.83898, 5 ), false, 14 )
g_pLineMap:AddStartPos( 28, D3DXVECTOR3( 8656.56, 134.539, 5 ), false, 14 )
g_pLineMap:AddStartPos( 29, D3DXVECTOR3( 9007.6, 200, 5 ), false, 15 )
g_pLineMap:AddStartPos( 30, D3DXVECTOR3( 9348.49, 200, 5 ), false, 15 )
g_pLineMap:AddStartPos( 31, D3DXVECTOR3( 9611, 200, 5 ), false, 15 )






-- LINE DATA -- 
g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 0, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(6893, 240, 5)", 
	"END_POS		= D3DXVECTOR3(7393, 240, 5)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 1, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 1, 
	"START_POS		= D3DXVECTOR3(4397, 480, 5)", 
	"END_POS		= D3DXVECTOR3(5404, 480, 5)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 2, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(5788, 0, 5)", 
	"END_POS		= D3DXVECTOR3(6893, 0, 5)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 3, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(3997, 240, 5)", 
	"END_POS		= D3DXVECTOR3(4397, 240, 5)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 4, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(5404, 240, 5)", 
	"END_POS		= D3DXVECTOR3(5788, 240, 5)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 5, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(6383, 480, 5)", 
	"END_POS		= D3DXVECTOR3(6893, 480, 5)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 6, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(7493, 480, 5)", 
	"END_POS		= D3DXVECTOR3(7994, 480, 5)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 7, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(2701, 340, 5)", 
	"END_POS		= D3DXVECTOR3(3201, 340, 5)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 8, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= 9, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(765, 280, 5)", 
	"END_POS		= D3DXVECTOR3(1385, 280, 5)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 9, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 8, 
	NEXT_LINE		= 10, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1385, 280, 5)", 
	"END_POS		= D3DXVECTOR3(2015, 140, 5)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 10, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 9, 
	NEXT_LINE		= 11, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(2015, 140, 5)", 
	"END_POS		= D3DXVECTOR3(2414, 140, 5)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 11, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 10, 
	NEXT_LINE		= 12, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(2414, 140, 5)", 
	"END_POS		= D3DXVECTOR3(3092, 0, 5)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 12, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 11, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(3092, 0, 5)", 
	"END_POS		= D3DXVECTOR3(3997, 0, 5)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 13, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= 14, 
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(7393, 0, 5)", 
	"END_POS		= D3DXVECTOR3(8222, 0, 5)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 14, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 13, 
	NEXT_LINE		= 15, 
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(8222, 0, 5)", 
	"END_POS		= D3DXVECTOR3(8868, 200, 5)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 15, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 14, 
	NEXT_LINE		= -1, 
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(8868, 200, 5)", 
	"END_POS		= D3DXVECTOR3(9611, 200, 5)", 
}


-- CAMERA DATA 

