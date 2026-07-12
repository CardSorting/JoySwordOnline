-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 0 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1132.3, 480, 0 ), true, 8 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1572.52, 240, 0 ), true, 7 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -901.304, 480, 0 ), true, 8 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1314.91, 240, 0 ), true, 7 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( -563.804, 59.5829, 0 ), false, 2 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( -342.436, 130.421, 0 ), false, 2 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( -783.136, 0, 0 ), false, 1 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( -1038.62, 0, 0 ), false, 1 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( -82.8577, 160, 0 ), false, 3 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 207.919, 160, 0 ), false, 3 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 479.099, 86.6885, 0 ), false, 4 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 714.808, 11.2615, 0 ), false, 4 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 920.258, 0, 0 ), false, 5 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 863.177, 480, 0 ), false, 0 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 1088.06, 480, 0 ), false, 0 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 1308.52, 240, 0 ), false, 6 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 1499.6, 240, 0 ), false, 6 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( 1650, 240, 0 ), false, 6 )
g_pLineMap:AddStartPos( 24, D3DXVECTOR3( 1122.81, 0, 0 ), false, 5 )






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
	"START_POS		= D3DXVECTOR3(750, 480, 0)", 
	"END_POS		= D3DXVECTOR3(1250, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(-1250, 0, 0)", 
	"END_POS		= D3DXVECTOR3(-750, 0, 0)", 
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
	"START_POS		= D3DXVECTOR3(-750, 0, 0)", 
	"END_POS		= D3DXVECTOR3(-250, 160, 0)", 
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
	"START_POS		= D3DXVECTOR3(-250, 160, 0)", 
	"END_POS		= D3DXVECTOR3(250, 160, 0)", 
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
	"START_POS		= D3DXVECTOR3(250, 160, 0)", 
	"END_POS		= D3DXVECTOR3(750, 0, 0)", 
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
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(750, 0, 0)", 
	"END_POS		= D3DXVECTOR3(1250, 0, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 6, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1200, 240, 0)", 
	"END_POS		= D3DXVECTOR3(1650, 240, 0)", 
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
	"START_POS		= D3DXVECTOR3(-1650, 240, 0)", 
	"END_POS		= D3DXVECTOR3(-1200, 240, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 8, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-1250, 480, 0)", 
	"END_POS		= D3DXVECTOR3(-750, 480, 0)", 
}

