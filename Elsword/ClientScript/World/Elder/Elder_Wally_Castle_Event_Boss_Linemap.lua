-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( -150 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1580.26, 480, -187 ), true, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1815.01, 480, -187 ), true, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1632.46, 0, -187 ), true, 4 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1887.67, 0, -187 ), true, 4 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( -942.409, 0, -187 ), false, 4 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( -742.763, 0, -187 ), false, 4 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( -562.69, 0, -187 ), false, 4 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( -394.361, 0, -187 ), false, 4 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( -167.312, 0, -187 ), false, 4 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 59.5464, 0, -187 ), false, 4 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 290.51, 0, -187 ), false, 4 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 517.558, 0, -187 ), false, 4 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 756.351, 0, -187 ), false, 4 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 1018.54, 0, -187 ), false, 4 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 1257.36, 0, -187 ), false, 4 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 1595.6, 0, -187 ), false, 4 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 1871, 0, -187 ), false, 4 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 1473.58, 0, -187 ), false, 4 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 1295.33, 240, -187 ), false, 2 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 1692.27, 480, -187 ), false, 0 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 1866.91, 480, -187 ), false, 0 )






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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(1500, 480, -187)", 
	"END_POS		= D3DXVECTOR3(2000, 480, -187)", 
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
	"START_POS		= D3DXVECTOR3(-2000, 480, -187)", 
	"END_POS		= D3DXVECTOR3(-1500, 480, -187)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(1160, 240, -187)", 
	"END_POS		= D3DXVECTOR3(1510, 240, -187)", 
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
	SPEED			= 0, 
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
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(-2000, 0, -187)", 
	"END_POS		= D3DXVECTOR3(2000, 0, -187)", 
}

