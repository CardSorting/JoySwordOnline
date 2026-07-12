-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 0 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1207.52, 0, 0 ), true, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 4711.77, 0, 0 ), false, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1408.91, 0, 0 ), true, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 4470.25, 0, 0 ), false, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1045.12, 0, 0 ), true, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 4893.19, 0, 0 ), false, 2 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 2194.97, 0, 0 ), false, 2 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 3699.61, 0, 0 ), true, 2 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 2429.33, 0, 0 ), false, 2 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 3448.27, 0, 0 ), true, 2 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 2696.45, 0, 0 ), false, 2 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 3209.33, 0, 0 ), true, 2 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 1731.69, 240, 0 ), false, 1 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 4258.17, 240, 0 ), true, 0 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 2959.17, 0, 0 ), false, 2 )






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
	"START_POS		= D3DXVECTOR3(4000, 240, 0)", 
	"END_POS		= D3DXVECTOR3(4500, 240, 0)", 
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
	"START_POS		= D3DXVECTOR3(1500, 240, 0)", 
	"END_POS		= D3DXVECTOR3(2000, 240, 0)", 
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
	"START_POS		= D3DXVECTOR3(1000, 0, 0)", 
	"END_POS		= D3DXVECTOR3(5000, 0, 0)", 
}

