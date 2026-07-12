-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 240 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 705.602, 240, 0 ), false, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1040.67, 240, 0 ), true, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 322.59, 240, 0 ), false, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1497.25, 240, 0 ), true, 1 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 1237.24, 240, 0 ), false, 1 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 1678.59, 240, 0 ), false, 1 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 1987.95, 480, 0 ), false, 0 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 482.418, 240, 0 ), true, 1 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 143.034, 240, 0 ), true, 1 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( -85.244, 240, 0 ), true, 1 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( -189.616, 480, 0 ), true, 2 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( -330, 480, 0 ), true, 2 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 2130, 480, 0 ), false, 0 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 888.63, 240, 0 ), false, 1 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( -330, 240, 0 ), true, 1 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 1913.77, 240, 0 ), false, 1 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 2130, 240, 0 ), false, 1 )






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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(1850, 480, 0)", 
	"END_POS		= D3DXVECTOR3(2130, 480, 0)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(-330, 240, 0)", 
	"END_POS		= D3DXVECTOR3(2130, 240, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 2, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -2, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(-330, 480, 0)", 
	"END_POS		= D3DXVECTOR3(-50, 480, 0)", 
}

