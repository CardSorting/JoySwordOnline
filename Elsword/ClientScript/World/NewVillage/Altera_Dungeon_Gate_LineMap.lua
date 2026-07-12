-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pLineMap:SetLandHeight( 1000 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 0.001, 1000, 0 ), false, 0 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 2334.36, 1000, 0 ), false, 0 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 3289.3, 1000, 0 ), false, 0 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 4539.77, 1000, 0 ), false, 0 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 6000.72, 1000, 0 ), false, 0 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 7300.86, 1000, 0 ), false, 0 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 8150.01, 1000, 0 ), false, 0 )






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
	"START_POS		= D3DXVECTOR3(0, 1000, 0)", 
	"END_POS		= D3DXVECTOR3(9817, 1000, 0)", 
}

