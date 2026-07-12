-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 7926 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 4144.23, 7926, -5897.66 ), false, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 4336.2, 7926, -5747.49 ), false, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 4065.02, 7926, -5959.62 ), false, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 4252.7, 7926, -5812.81 ), false, 2 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 3737.05, 7926, -6195.03 ), false, 1 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 3552.33, 7926, -6300.42 ), false, 1 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 3348, 7926, -6417 ), false, 0 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 3148.74, 7926, -6494.82 ), false, 0 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 2909.1, 7926, -6588.4 ), false, 0 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 3348, 17926, -6417 ), false, 0 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 3737.05, 17926, -6195.03 ), false, 0 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 3552.33, 17926, -6300.42 ), false, 0 )






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
	NEXT_LINE		= 1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(2841, 7926, -6615)", 
	"END_POS		= D3DXVECTOR3(3348, 7926, -6417)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 1, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 0, 
	NEXT_LINE		= 2, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(3348, 7926, -6417)", 
	"END_POS		= D3DXVECTOR3(3837, 7926, -6138)", 
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
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(3837, 7926, -6138)", 
	"END_POS		= D3DXVECTOR3(4356, 7926, -5732)", 
}

