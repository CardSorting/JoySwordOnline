-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( -100 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1349.8, 0, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1361.45, 0, 0 ), false, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1540.86, 0, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1575.73, 0, 0 ), false, 0 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 3.18506, 0, 0 ), true, 0 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( -275.047, 0, 0 ), false, 0 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( -547.22, 0, 0 ), true, 0 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( -798.879, 0, 0 ), true, 0 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( -1067.17, 0, 0 ), true, 0 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 277.607, 0, 0 ), true, 0 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 521.071, 0, 0 ), false, 0 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 776.855, 0, 0 ), false, 0 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 1024.5, 0, 0 ), false, 0 )






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
	"START_POS		= D3DXVECTOR3(-1600, 0, 0)", 
	"END_POS		= D3DXVECTOR3(1600, 0, 0)", 
}

