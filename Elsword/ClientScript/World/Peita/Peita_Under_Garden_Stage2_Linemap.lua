-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 2100 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -8079.25, 2474, -4243.13 ), true, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -8217.29, 2474, -4296.65 ), true, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -7917.68, 2234, -4180.28 ), true, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -7767.47, 2234, -4121.72 ), true, 2 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( -7394.6, 2234, -3976.52 ), false, 3 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( -7217.38, 2234, -3907.56 ), false, 3 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( -7049.18, 2234, -3842.11 ), false, 3 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( -6892.99, 2234, -3781.34 ), false, 3 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( -6729.84, 2234, -3718.04 ), false, 4 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( -6556.84, 2234, -3651.03 ), false, 4 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( -6396.17, 2234, -3588.8 ), false, 4 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( -6227.25, 2234, -3523.37 ), false, 4 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( -6031.59, 2234, -3447.57 ), false, 5 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( -5845.05, 2234, -3375.08 ), false, 5 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( -5639.38, 2234, -3295.15 ), false, 5 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( -5424.14, 2234, -3211.51 ), false, 5 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( -5251.84, 2234, -3144.54 ), false, 6 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( -5059.88, 2234, -3068.39 ), false, 6 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( -4868.02, 2234, -2992.29 ), false, 6 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( -4680.75, 2234, -2918 ), false, 6 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( -4464.91, 2234, -2832.39 ), false, 6 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( -4273.05, 2234, -2756.28 ), false, 6 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( -4085.99, 2234, -2682.08 ), false, 6 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( -3951.68, 2234, -2628.8 ), false, 6 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( -3826.98, 2234, -2579.33 ), false, 6 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( -3690.54, 2234, -2525.21 ), false, 6 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( -6781.6, 2474, -3738.09 ), false, 0 )
g_pLineMap:AddStartPos( 24, D3DXVECTOR3( -6606.12, 2474, -3670.12 ), false, 0 )
g_pLineMap:AddStartPos( 25, D3DXVECTOR3( -6459.13, 2474, -3613.19 ), false, 0 )
g_pLineMap:AddStartPos( 26, D3DXVECTOR3( -6269.48, 2474, -3539.72 ), false, 0 )
g_pLineMap:AddStartPos( 27, D3DXVECTOR3( -6127.24, 2474, -3484.63 ), false, 0 )






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
	"START_POS		= D3DXVECTOR3(-6833, 2474, -3758)", 
	"END_POS		= D3DXVECTOR3(-6043, 2474, -3452)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(-8293, 2474, -4326)", 
	"END_POS		= D3DXVECTOR3(-8017, 2474, -4219)", 
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
	NEXT_LINE		= 3, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(-8017, 2234, -4219)", 
	"END_POS		= D3DXVECTOR3(-7622, 2234, -4065)", 
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
	NEXT_LINE		= 4, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(-7622, 2234, -4065)", 
	"END_POS		= D3DXVECTOR3(-6833, 2234, -3758)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 4, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 3, 
	NEXT_LINE		= 5, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(-6833, 2234, -3758)", 
	"END_POS		= D3DXVECTOR3(-6043, 2234, -3452)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 5, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 4, 
	NEXT_LINE		= 6, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(-6043, 2234, -3452)", 
	"END_POS		= D3DXVECTOR3(-5253, 2234, -3145)", 
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
	"START_POS		= D3DXVECTOR3(-5253, 2234, -3145)", 
	"END_POS		= D3DXVECTOR3(-3690, 2234, -2525)", 
}

