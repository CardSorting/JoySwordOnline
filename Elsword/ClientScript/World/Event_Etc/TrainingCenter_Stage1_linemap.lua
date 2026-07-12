-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 240 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 755.556, 240, 0 ), true, 0 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 463.362, 240, 0 ), false, 0 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 1019.24, 240, 0 ), false, 0 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 1411.14, 240, 0 ), false, 0 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( -200.989, 240, 0 ), false, 0 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 117.084, 240, 0 ), false, 0 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 1790.75, 240, 0 ), false, 0 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 2122.81, 240, 0 ), false, 0 )






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
	"START_POS		= D3DXVECTOR3(-400, 240, 0)", 
	"END_POS		= D3DXVECTOR3(2200, 240, 0)", 
}

