-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 0 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 85.9956, 600, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 205.382, 600, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 324.769, 600, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 438.965, 600, 0 ), true, 0 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 3165.84, 0, 0 ), false, 1 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 0, 600, 0 ), false, 0 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 1590.45, 840, 0 ), false, 2 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 1808.79, 840, 0 ), false, 2 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 1989.33, 840, 0 ), false, 2 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 2339.42, 1080, 0 ), false, 3 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 2517.18, 1080, 0 ), false, 3 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 2682.24, 1080, 0 ), false, 3 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 2079.42, 600, 0 ), false, 0 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 2268.55, 600, 0 ), false, 0 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 2443.49, 600, 0 ), false, 0 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 2637.35, 600, 0 ), false, 0 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 2835.93, 600, 0 ), false, 0 )






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
	"START_POS		= D3DXVECTOR3(0, 600, 0)", 
	"END_POS		= D3DXVECTOR3(3000, 600, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 1, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_MONSTER_ROAD"], 	
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= 2, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(3000, 0, 0)", 
	"END_POS		= D3DXVECTOR3(3300, 0, 0)", 
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
	"START_POS		= D3DXVECTOR3(1400, 840, 0)", 
	"END_POS		= D3DXVECTOR3(2200, 840, 0)", 
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
	"START_POS		= D3DXVECTOR3(2200, 1080, 0)", 
	"END_POS		= D3DXVECTOR3(2800, 1080, 0)", 
}

