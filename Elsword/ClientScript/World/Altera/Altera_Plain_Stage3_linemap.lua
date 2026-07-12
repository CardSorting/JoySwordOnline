-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( -100 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2374.03, 0, 0 ), false, 3 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2565.81, 0, 0 ), false, 3 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2741.08, 0, 0 ), true, 3 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2937.41, 0, 0 ), true, 3 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 4300, 240, 0 ), false, 2 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 4082.59, 240, 0 ), false, 2 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 900, 240, 0 ), true, 4 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 1137.88, 240, 0 ), true, 4 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 1525.59, 480, 0 ), true, 0 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 1750.33, 480, 0 ), true, 0 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 1960.09, 480, 0 ), true, 0 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 1416.16, 0, 0 ), true, 3 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 1635.7, 0, 0 ), true, 3 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 1819.23, 0, 0 ), true, 3 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 2053.94, 0, 0 ), true, 3 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 2213.75, 0, 0 ), true, 3 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 3091.32, 0, 0 ), false, 3 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 3312.11, 0, 0 ), false, 3 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 3495.28, 0, 0 ), false, 3 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 3702.87, 0, 0 ), false, 3 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 3900, 0, 0 ), false, 3 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 3254, 480, 0 ), false, 1 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 3503.9, 480, 0 ), false, 1 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 3741.43, 480, 0 ), false, 1 )






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
	"START_POS		= D3DXVECTOR3(1400, 480, 0)", 
	"END_POS		= D3DXVECTOR3(2100, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(3100, 480, 0)", 
	"END_POS		= D3DXVECTOR3(3800, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(3900, 240, 0)", 
	"END_POS		= D3DXVECTOR3(4300, 240, 0)", 
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
	"START_POS		= D3DXVECTOR3(1300, 0, 0)", 
	"END_POS		= D3DXVECTOR3(3900, 0, 0)", 
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
	"START_POS		= D3DXVECTOR3(900, 240, 0)", 
	"END_POS		= D3DXVECTOR3(1300, 240, 0)", 
}

