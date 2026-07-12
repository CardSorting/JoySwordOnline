

g_pLineMap:SetLandHeight( -100 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -702.789, 243, -580 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -565.696, 243, -580 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1537.93, 240, -580 ), true, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1402.09, 240, -580 ), true, 1 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( -1201.74, 178.831, -580 ), false, 2 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( -1082.36, 117.083, -580 ), false, 2 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( -971.784, 59.8883, -580 ), false, 2 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( -865.011, 4.66089, -580 ), false, 2 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( -763.148, 0, -580 ), false, 3 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( -611.5, 0, -580 ), false, 3 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( -483.977, 0, -580 ), false, 3 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( -345.355, 17.0301, -580 ), false, 4 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( -217.612, 57.5835, -580 ), false, 4 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( -84, 100, -580 ), false, 4 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 60.5788, 100, -580 ), false, 5 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 191.548, 100, -580 ), false, 5 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 333.626, 84.4677, -580 ), false, 6 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 470.719, 70, -580 ), false, 7 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 608.581, 70, -580 ), false, 7 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 701.926, 70, -580 ), false, 7 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 802.396, 70, -580 ), false, 8 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 1018.47, 70, -580 ), false, 8 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 912.499, 70, -580 ), false, 8 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 1125.82, 70, -580 ), false, 8 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 1227.67, 70, -580 ), false, 9 )






-- LINE DATA -- 
g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 0, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-856, 243, -580)", 
	"END_POS		= D3DXVECTOR3(-399, 243, -580)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 1, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= 2, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-1669, 240, -580)", 
	"END_POS		= D3DXVECTOR3(-1320, 240, -580)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 2, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 1, 
	NEXT_LINE		= 3, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-1320, 240, -580)", 
	"END_POS		= D3DXVECTOR3(-856, 0, -580)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 3, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 2, 
	NEXT_LINE		= 4, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-856, 0, -580)", 
	"END_POS		= D3DXVECTOR3(-399, 0, -580)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 4, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 3, 
	NEXT_LINE		= 5, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-399, 0, -580)", 
	"END_POS		= D3DXVECTOR3(-84, 100, -580)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 5, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 4, 
	NEXT_LINE		= 6, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-84, 100, -580)", 
	"END_POS		= D3DXVECTOR3(257, 100, -580)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 6, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 5, 
	NEXT_LINE		= 7, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(257, 100, -580)", 
	"END_POS		= D3DXVECTOR3(405, 70, -580)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 7, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 6, 
	NEXT_LINE		= 8, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(405, 70, -580)", 
	"END_POS		= D3DXVECTOR3(729, 70, -580)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 8, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 7, 
	NEXT_LINE		= 9, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(729, 70, -580)", 
	"END_POS		= D3DXVECTOR3(1185, 70, -580)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 9, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 8, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1185, 70, -580)", 
	"END_POS		= D3DXVECTOR3(1381, 70, -580)", 
}


-- CAMERA DATA 

