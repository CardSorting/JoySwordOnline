-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 240 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -477.317, 240, -2 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 432.567, 240, -2 ), false, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -895.121, 240, -2 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 894.471, 240, -2 ), false, 0 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 0.836182, 240, -2 ), true, 0 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( -681.576, 240, -2 ), true, 0 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( -1253, 240, -2 ), true, 0 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 230.628, 240, -2 ), false, 0 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 683.249, 240, -2 ), false, 0 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 1253, 240, -2 ), false, 0 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( -1073.85, 240, -2 ), true, 0 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 1066.24, 240, -2 ), false, 0 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( -231.277, 240, -2 ), true, 0 )






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
	"START_POS		= D3DXVECTOR3(-1253, 240, -2)", 
	"END_POS		= D3DXVECTOR3(1253, 240, -2)", 
}

