-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 7800 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 4072.88, 7926, -5953.48 ), false, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 4349.9, 7926, -5736.78 ), false, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 3973.84, 7926, -6030.95 ), false, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 4222.94, 7926, -5836.09 ), false, 2 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 3650.47, 7926, -6244.43 ), false, 1 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 3472.49, 7926, -6345.97 ), false, 1 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 3281.24, 7926, -6443.07 ), false, 0 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 3120.22, 7926, -6505.96 ), false, 0 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 2935.19, 7926, -6578.22 ), false, 0 )






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

