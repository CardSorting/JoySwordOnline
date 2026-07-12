-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 0 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 381.192, 240, 0 ), true, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 136.236, 240, 0 ), true, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 890.956, 480, 0 ), true, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 665.86, 480, 0 ), true, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 765.167, 480, 0 ), true, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 262.024, 240, 0 ), true, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 43.5496, 240, 0 ), true, 1 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 1884.02, 720, 0 ), false, 3 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 1619.2, 720, 0 ), false, 3 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 1387.48, 720, 0 ), false, 3 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 1149.15, 720, 0 ), false, 3 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 3181.63, 240, 0 ), false, 4 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 3439.83, 240, 0 ), false, 4 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 3698.03, 240, 0 ), false, 4 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 3903.26, 240, 0 ), false, 4 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 2857.23, 0, 0 ), false, 0 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 2585.8, 0, 0 ), false, 0 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 2347.46, 0, 0 ), false, 0 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 2095.89, 0, 0 ), false, 0 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 1837.69, 0, 0 ), false, 0 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 1652.32, 0, 0 ), false, 0 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 1447.09, 0, 0 ), false, 0 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 1248.47, 0, 0 ), false, 0 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 996.9, 0, 0 ), false, 0 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 818.149, 0, 0 ), false, 0 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 612.916, 0, 0 ), false, 0 )






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
	"START_POS		= D3DXVECTOR3(500, 0, 0)", 
	"END_POS		= D3DXVECTOR3(3000, 0, 0)", 
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
	"START_POS		= D3DXVECTOR3(0, 240, 0)", 
	"END_POS		= D3DXVECTOR3(500, 240, 0)", 
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
	"START_POS		= D3DXVECTOR3(500, 480, 0)", 
	"END_POS		= D3DXVECTOR3(1000, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(1000, 720, 0)", 
	"END_POS		= D3DXVECTOR3(2000, 720, 0)", 
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
	"START_POS		= D3DXVECTOR3(3000, 240, 0)", 
	"END_POS		= D3DXVECTOR3(4000, 240, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 5, 
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

