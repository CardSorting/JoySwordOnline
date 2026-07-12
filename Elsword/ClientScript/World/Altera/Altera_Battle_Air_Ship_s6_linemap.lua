-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 2900)




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 456.742, 3053, -455 ), true, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 670.606, 3053, -455 ), true, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 927.242, 3053, -455 ), true, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 575.557, 3053, -455 ), true, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 794.172, 3053, -455 ), true, 1 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 1194.34, 3131.97, -455 ), false, 2 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 1462.11, 3223.78, -455 ), false, 2 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 1176.9, 3528.82, -455 ), false, 0 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 1460.53, 3531.26, -455 ), false, 0 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 1831.23, 3293, -455 ), false, 3 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 2093.42, 3293, -455 ), false, 3 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 2526.05, 3053, -455 ), false, 4 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 2914.99, 3293, -455 ), false, 5 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 3177.2, 3293, -455 ), false, 5 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 3452.54, 3293, -455 ), false, 6 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 3133.51, 3533, -455 ), false, 7 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 3330.18, 3533, -455 ), false, 7 )






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
	"START_POS		= D3DXVECTOR3(964, 3527, -455)", 
	"END_POS		= D3DXVECTOR3(1664, 3533, -455)", 
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
	NEXT_LINE		= 2, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(346, 3053, -455)", 
	"END_POS		= D3DXVECTOR3(964, 3053, -455)", 
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
	NEXT_LINE		= 3, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(964, 3053, -455)", 
	"END_POS		= D3DXVECTOR3(1664, 3293, -455)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 3, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 2, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(1664, 3293, -455)", 
	"END_POS		= D3DXVECTOR3(2264, 3293, -455)", 
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
	"START_POS		= D3DXVECTOR3(2264, 3053, -455)", 
	"END_POS		= D3DXVECTOR3(2752, 3053, -455)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 5, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= 6, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(2752, 3293, -455)", 
	"END_POS		= D3DXVECTOR3(3252, 3293, -455)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 6, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 5, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(3252, 3293, -455)", 
	"END_POS		= D3DXVECTOR3(3627, 3293, -455)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 7, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(3002, 3533, -455)", 
	"END_POS		= D3DXVECTOR3(3377, 3533, -455)", 
}

