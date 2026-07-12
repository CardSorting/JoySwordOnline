-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( -100 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 381.809, 240, 0 ), true, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 149.976, 240, 0 ), true, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 872.708, 480, 0 ), true, 3 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 609.702, 480, 0 ), true, 3 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 617.071, 0, 0 ), false, 1 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 908.34, 0, 0 ), false, 1 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 1148.39, 0, 0 ), false, 1 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 1452.18, 0, 0 ), false, 1 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 1696.33, 0, 0 ), false, 1 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 1928.75, 0, 0 ), false, 1 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 2184.77, 0, 0 ), false, 1 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 2431.43, 0, 0 ), false, 1 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 2628.08, 0, 0 ), false, 1 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 3204.48, 240, 0 ), false, 0 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 3454.45, 240, 0 ), false, 0 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 3691.21, 240, 0 ), false, 0 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 3837.21, 240, 0 ), false, 0 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 2907.54, 0, 0 ), false, 1 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 2675.61, 480, 0 ), false, 4 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 2858.6, 480, 0 ), false, 4 )






-- LINE DATA -- 
g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 0, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(3000, 240, 0)", 
	"END_POS		= D3DXVECTOR3(4000, 240, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 1, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(500, 0, 0)", 
	"END_POS		= D3DXVECTOR3(3000, 0, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 2, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(0, 240, 0)", 
	"END_POS		= D3DXVECTOR3(500, 240, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 3, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(500, 480, 0)", 
	"END_POS		= D3DXVECTOR3(1000, 480, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 4, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(2500, 480, 0)", 
	"END_POS		= D3DXVECTOR3(3000, 480, 0)", 
}

