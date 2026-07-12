-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( -70 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 722.76, 273, 0 ), true, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 4188.11, 273, 0 ), false, 7 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 521.066, 273, 0 ), true, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 4482.97, 273, 0 ), false, 7 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 624.495, 273, 0 ), true, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 810.672, 273, 0 ), true, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 4120.86, 273, 0 ), false, 7 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 4363.99, 273, 0 ), false, 7 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 1193.36, 513, 0 ), false, 0 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 1157.17, 33, 0 ), false, 2 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 1519.19, 33, 0 ), false, 2 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 1870.87, 33, 0 ), false, 2 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 2176.02, 133, 0 ), false, 4 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 2476, 133, 0 ), false, 4 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 2589.79, 133, 0 ), true, 4 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 2832.88, 133, 0 ), true, 4 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 3163.91, 33, 0 ), true, 6 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 3536.34, 33, 0 ), true, 6 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 3841.52, 33, 0 ), true, 6 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 3743.26, 513, 0 ), true, 8 )






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
	"START_POS		= D3DXVECTOR3(998, 513, 0)", 
	"END_POS		= D3DXVECTOR3(1498, 513, 0)", 
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
	"START_POS		= D3DXVECTOR3(498, 273, 0)", 
	"END_POS		= D3DXVECTOR3(998, 273, 0)", 
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
	"START_POS		= D3DXVECTOR3(998, 33, 0)", 
	"END_POS		= D3DXVECTOR3(1898, 33, 0)", 
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
	"START_POS		= D3DXVECTOR3(1898, 33, 0)", 
	"END_POS		= D3DXVECTOR3(2098, 133, 0)", 
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
	"START_POS		= D3DXVECTOR3(2098, 133, 0)", 
	"END_POS		= D3DXVECTOR3(2898, 133, 0)", 
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
	"START_POS		= D3DXVECTOR3(2898, 133, 0)", 
	"END_POS		= D3DXVECTOR3(3098, 33, 0)", 
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
	"START_POS		= D3DXVECTOR3(3098, 33, 0)", 
	"END_POS		= D3DXVECTOR3(3998, 33, 0)", 
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
	"START_POS		= D3DXVECTOR3(3998, 273, 0)", 
	"END_POS		= D3DXVECTOR3(4498, 273, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 8, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(3498, 513, 0)", 
	"END_POS		= D3DXVECTOR3(3998, 513, 0)", 
}

