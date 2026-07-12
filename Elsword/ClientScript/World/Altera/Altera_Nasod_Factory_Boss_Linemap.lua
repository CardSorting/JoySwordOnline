-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( -150 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 329.063, 140, 0 ), true, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2639.17, 140, 0 ), false, 6 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 111.721, 140, 0 ), true, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2858.13, 140, 0 ), false, 6 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 1496.71, 0, 0 ), false, 4 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 1297.03, 0, 0 ), false, 4 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 1113.7, 0, 0 ), false, 4 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 953.207, 13.102, 0 ), false, 3 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 795.763, 57.1864, 0 ), false, 3 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 611.1, 108.892, 0 ), false, 3 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 459.922, 140, 0 ), false, 2 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 276.233, 140, 0 ), false, 2 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 1663.39, 0, 0 ), false, 4 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 1861.3, 0, 0 ), false, 4 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 2073.6, 20.6081, 0 ), false, 5 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 2240.98, 67.4744, 0 ), false, 5 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 2444.45, 124.446, 0 ), false, 5 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 2617.91, 140, 0 ), false, 6 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 2765.91, 140, 0 ), false, 6 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 873.683, 380, 0 ), true, 1 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 666.094, 380, 0 ), true, 1 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 2122.76, 380, 0 ), false, 0 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 2333.16, 380, 0 ), false, 0 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 1487.08, 3000, 0 ), true, 7 )






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
	"START_POS		= D3DXVECTOR3(2000, 380, 0)", 
	"END_POS		= D3DXVECTOR3(2500, 380, 0)", 
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
	"START_POS		= D3DXVECTOR3(500, 380, 0)", 
	"END_POS		= D3DXVECTOR3(1000, 380, 0)", 
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
	NEXT_LINE		= 3, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(0, 140, 0)", 
	"END_POS		= D3DXVECTOR3(500, 140, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 3, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 2, 
	NEXT_LINE		= 4, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(500, 140, 0)", 
	"END_POS		= D3DXVECTOR3(1000, 0, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 4, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 3, 
	NEXT_LINE		= 5, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1000, 0, 0)", 
	"END_POS		= D3DXVECTOR3(2000, 0, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 5, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 4, 
	NEXT_LINE		= 6, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(2000, 0, 0)", 
	"END_POS		= D3DXVECTOR3(2500, 140, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 6, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 5, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(2500, 140, 0)", 
	"END_POS		= D3DXVECTOR3(3000, 140, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 7, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1000, 3000, 0)", 
	"END_POS		= D3DXVECTOR3(2000, 3000, 0)", 
}

