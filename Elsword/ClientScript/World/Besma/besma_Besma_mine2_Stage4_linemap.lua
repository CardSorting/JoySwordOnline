-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( -100 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1817.9, 0, -187 ), false, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1622.02, 0, -187 ), false, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1446.39, 0, -187 ), false, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1274.96, 0, -187 ), false, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 810.835, 0, -187 ), false, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1038.18, 0, -187 ), false, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1182.98, 0, -187 ), false, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1318.03, 0, -187 ), false, 2 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( -1092.7, 0, -187 ), false, 2 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( -681.645, 0, -187 ), false, 2 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( -312.904, 0, -187 ), false, 2 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 80.4961, 0, -187 ), false, 2 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 452.888, 0, -187 ), false, 2 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( -498.822, 0, -187 ), false, 2 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( -1718.13, 480, -187 ), true, 4 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 1195.23, 480, -187 ), false, 0 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 728.884, 240, -187 ), false, 1 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( -1210.96, 720, -187 ), true, 5 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 577.283, 720, -187 ), true, 5 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( -815.873, 720, -187 ), false, 5 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( -364.289, 720, -187 ), false, 5 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 74.3934, 720, -187 ), false, 5 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( -1343.91, 240, -187 ), true, 3 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( -120.418, 0, -187 ), false, 2 )






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
	NEXT_LINE		= -2, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(900, 480, -187)", 
	"END_POS		= D3DXVECTOR3(1400, 480, -187)", 
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
	"START_POS		= D3DXVECTOR3(560, 240, -187)", 
	"END_POS		= D3DXVECTOR3(910, 240, -187)", 
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
	"START_POS		= D3DXVECTOR3(-2000, 0, -187)", 
	"END_POS		= D3DXVECTOR3(1400, 0, -187)", 
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
	"START_POS		= D3DXVECTOR3(-1510, 240, -187)", 
	"END_POS		= D3DXVECTOR3(-1160, 240, -187)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 4, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -2, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-2000, 480, -187)", 
	"END_POS		= D3DXVECTOR3(-1500, 480, -187)", 
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
	"START_POS		= D3DXVECTOR3(-1500, 720, -187)", 
	"END_POS		= D3DXVECTOR3(900, 720, -187)", 
}

