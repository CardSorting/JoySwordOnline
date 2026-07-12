-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 7800 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 3071.71, 7926, -6524.9 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2863.32, 7926, -6606.28 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 3174.06, 7926, -6484.93 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2978.33, 7926, -6561.37 ), true, 0 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 3495.98, 7926, -6332.57 ), false, 1 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 3665.5, 7926, -6235.85 ), false, 1 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 3809.76, 7926, -6153.54 ), false, 1 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 3988.28, 7926, -6019.66 ), false, 2 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 4193.6, 7926, -5859.04 ), false, 2 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 4345.24, 7926, -5740.42 ), false, 2 )






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

