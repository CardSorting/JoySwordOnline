-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 0 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 0, 240, 0 ), true, 3 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 319.386, 240, 0 ), true, 3 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 907.311, 0, 0 ), false, 0 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 1302.73, 0, 0 ), false, 0 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 1736.5, 0, 0 ), false, 0 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 2860.03, 240, 0 ), false, 2 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 3116.59, 240, 0 ), false, 2 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 3385.63, 240, 0 ), false, 2 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 4894.42, 0, 0 ), false, 4 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 4545.45, 0, 0 ), false, 4 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 4219.9, 0, 0 ), false, 4 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 3755.58, 0, 0 ), true, 4 )






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
	"END_POS		= D3DXVECTOR3(2000, 0, 0)", 
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
	NEXT_LINE		= 2, 
	LINE_SET		= 1, 
	"START_POS		= D3DXVECTOR3(2000, 240, 0)", 
	"END_POS		= D3DXVECTOR3(2500, 240, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 2, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(2500, 240, 0)", 
	"END_POS		= D3DXVECTOR3(3500, 240, 0)", 
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
	"START_POS		= D3DXVECTOR3(0, 240, 0)", 
	"END_POS		= D3DXVECTOR3(500, 240, 0)", 
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
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(3500, 0, 0)", 
	"END_POS		= D3DXVECTOR3(5000, 0, 0)", 
}

