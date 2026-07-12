

g_pLineMap:SetLandHeight( 0 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1953.46, 360, -504 ), true, 6 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1793.42, 360, -504 ), true, 6 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1260.62, 480, -504 ), true, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1044, 480, -504 ), true, 2 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( -901.653, 240, -504 ), false, 0 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( -685.04, 240, -504 ), false, 0 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( -462.239, 240, -504 ), false, 0 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 1146.06, 240, -504 ), false, 3 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 1387.55, 480, -504 ), false, 4 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 1551.66, 480, -504 ), false, 4 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 2154.86, 360, -504 ), false, 7 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( -1725.6, 0, -504 ), false, 8 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( -1391.4, 0, -504 ), false, 8 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( -1001.5, 0, -504 ), false, 8 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( -623.973, 0, -504 ), false, 8 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( -165.992, 0, -504 ), false, 8 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 329.121, 0, -504 ), false, 8 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 706.646, 0, -504 ), false, 8 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 929.447, 0, -504 ), false, 8 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 1368.86, 0, -504 ), false, 8 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 1696.87, 0, -504 ), false, 8 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 2031.08, 0, -504 ), false, 8 )






-- LINE DATA -- 
g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 0, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-1107, 240, -504)", 
	"END_POS		= D3DXVECTOR3(-256, 240, -504)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 1, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1492, 11720, -504)", 
	"END_POS		= D3DXVECTOR3(1492, 11720, -504)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 2, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-1396, 480, -504)", 
	"END_POS		= D3DXVECTOR3(-898, 480, -504)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 3, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(916, 240, -504)", 
	"END_POS		= D3DXVECTOR3(1411, 240, -504)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 4, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1202, 480, -504)", 
	"END_POS		= D3DXVECTOR3(1700, 480, -504)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 5, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-1686, 11120, -504)", 
	"END_POS		= D3DXVECTOR3(-1686, 11120, -504)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 6, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-2058, 360, -504)", 
	"END_POS		= D3DXVECTOR3(-1686, 360, -504)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 7, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1991, 360, -504)", 
	"END_POS		= D3DXVECTOR3(2362, 360, -504)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 8, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-2058, 0, -504)", 
	"END_POS		= D3DXVECTOR3(2362, 0, -504)", 
}


-- CAMERA DATA 

