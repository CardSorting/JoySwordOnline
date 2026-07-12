-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 240 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -618.898, 480, 0 ), true, 5 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2384.25, 480, 0 ), false, 6 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -477.218, 480, 0 ), true, 5 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2277.61, 480, 0 ), false, 6 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 61.2975, 240, 0 ), false, 0 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 1099.16, 2130, 0 ), false, 4 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( -565.546, 2130, 0 ), false, 4 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 323.12, 2130, 0 ), false, 4 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( -174.986, 2130, 0 ), false, 4 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 826.831, 2130, 0 ), false, 4 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 977.396, 2130, 0 ), false, 4 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 1576.34, 2130, 0 ), false, 4 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 1723.8, 2130, 0 ), false, 4 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 1877.8, 2130, 0 ), false, 4 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 2047.59, 2130, 0 ), false, 4 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 194.17, 2130, 0 ), false, 4 )






-- LINE DATA -- 
g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 0, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_JUMP_UP_REL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(-379, 240, 0)", 
	"END_POS		= D3DXVECTOR3(2180, 240, 0)",
	
	JUMP_SPEED_X = 500,  -- 요고
 	JUMP_SPEED_Y = 3800,  -- 요고 
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
	"START_POS		= D3DXVECTOR3(388, 480, 0)", 
	"END_POS		= D3DXVECTOR3(1433, 480, 0)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(378, 1780, 0)", 
	"END_POS		= D3DXVECTOR3(712, 1780, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 3, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(712, 720, 0)", 
	"END_POS		= D3DXVECTOR3(1108, 720, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 4, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_MONSTER_ROAD"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(-668, 2130, 0)", 
	"END_POS		= D3DXVECTOR3(2445, 2130, 0)",
	
	CAN_PASS		= FALSE, 
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
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(-714, 480, 0)", 
	"END_POS		= D3DXVECTOR3(-379, 480, 0)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(2180, 480, 0)", 
	"END_POS		= D3DXVECTOR3(2537, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(1110, 1780, 0)", 
	"END_POS		= D3DXVECTOR3(1444, 1780, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 8, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -2, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(-714, 1780, 0)", 
	"END_POS		= D3DXVECTOR3(-379, 1780, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 9, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -2, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(2180, 1780, 0)", 
	"END_POS		= D3DXVECTOR3(2537, 1780, 0)", 
}

