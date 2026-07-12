-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pLineMap:SetLandHeight( 0 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 75.0945, 240, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 201.433, 240, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 333.428, 240, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 442.795, 240, 0 ), true, 0 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 726.418, 480, 0 ), false, 5 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 913.644, 480, 0 ), false, 5 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 1162.17, 720, 0 ), false, 4 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 1442.86, 720, 0 ), false, 4 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 1703.1, 720, 0 ), false, 4 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 568.58, 0, 0 ), false, 1 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 715.805, 0, 0 ), false, 1 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 877.051, 0, 0 ), false, 1 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 1042.97, 0, 0 ), false, 1 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 1229.57, 5.9144, 0 ), false, 2 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 1401.68, 40.3363, 0 ), false, 2 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 2707.64, 240, 0 ), false, 3 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 1550.65, 70.1297, 0 ), false, 2 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 1702.51, 100.502, 0 ), false, 2 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 1861.94, 132.389, 0 ), false, 2 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 2032.02, 166.404, 0 ), false, 2 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 2200.78, 200.156, 0 ), false, 2 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 2364.48, 232.896, 0 ), false, 2 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 2528.98, 240, 0 ), false, 3 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 593.414, 480, 0 ), false, 5 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 94.5147, 240, 0 ), false, 0 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 261.259, 240, 0 ), false, 0 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( 408.947, 240, 0 ), false, 0 )
g_pLineMap:AddStartPos( 24, D3DXVECTOR3( 2872, 240, 0 ), false, 3 )






-- LINE DATA -- 
g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 0, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(0, 240, 0)", 
	"END_POS		= D3DXVECTOR3(500, 240, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 1, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= 2, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(500, 0, 0)", 
	"END_POS		= D3DXVECTOR3(1200, 0, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 2, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 1, 
	NEXT_LINE		= 3, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1200, 0, 0)", 
	"END_POS		= D3DXVECTOR3(2400, 240, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 3, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 2, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(2400, 240, 0)", 
	"END_POS		= D3DXVECTOR3(3000, 240, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 4, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1000, 720, 0)", 
	"END_POS		= D3DXVECTOR3(1900, 720, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 5, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(500, 480, 0)", 
	"END_POS		= D3DXVECTOR3(1000, 480, 0)", 
}


-- CAMERA DATA 

