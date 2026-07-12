-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 7800 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 3138.5, 7926, -6495.53 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2932.25, 7926, -6577.47 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 3244.79, 7926, -6453.31 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 3043.38, 7926, -6533.32 ), true, 0 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 3490.42, 7926, -6335.84 ), false, 1 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 3630.75, 7926, -6255.04 ), false, 1 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 3784.49, 7926, -6166.51 ), false, 1 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 3894.82, 7926, -6096.99 ), false, 2 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 4072.52, 7926, -5956.41 ), false, 2 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 4268.79, 7926, -5801.14 ), false, 2 )






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
	"START_POS		= D3DXVECTOR3(2873, 7926, -6601)", 
	"END_POS		= D3DXVECTOR3(3379, 7926, -6400)", 
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
	"START_POS		= D3DXVECTOR3(3379, 7926, -6400)", 
	"END_POS		= D3DXVECTOR3(3867, 7926, -6119)", 
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
	"START_POS		= D3DXVECTOR3(3867, 7926, -6119)", 
	"END_POS		= D3DXVECTOR3(4384, 7926, -5710)", 
}

