-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--pvp_winter_Velder_LineMap.lua

g_pLineMap:SetLandHeight( 0 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( false, D3DXVECTOR3( 1364.56, 720, -187 ), false, 4 )
g_pLineMap:SetTeamStartPos( false, D3DXVECTOR3( 1680.37, 480, -187 ), false, 5 )
g_pLineMap:SetTeamStartPos( false, D3DXVECTOR3( 1458.16, 240, -187 ), false, 7 )
g_pLineMap:SetTeamStartPos( false, D3DXVECTOR3( 1898.6, 0, -187 ), false, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1678.19, 0, -187 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1337.8, 240, -187 ), true, 8 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1661.82, 480, -187 ), true, 6 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1398.98, 720, -187 ), true, 4 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 0, D3DXVECTOR3( 1307.61, 0, -187 ), false, 0 )
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( -1231.72, 0, -187 ), false, 0 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( -723.747, 0, -187 ), false, 0 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 139.036, 0, -187 ), false, 0 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 822.207, 0, -187 ), false, 0 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( -954.511, 720, -187 ), false, 4 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 167.28, 720, -187 ), false, 4 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 870.121, 720, -187 ), false, 4 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( -448.508, 1200, -187 ), false, 1 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 285.29, 1200, -187 ), false, 1 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( -240.836, 720, -187 ), false, 4 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( -193.337, 0, -187 ), false, 0 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( -1779.28, 480, -187 ), true, 6 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 1761.71, 480, -187 ), false, 5 )






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
	"START_POS		= D3DXVECTOR3(-2000, 0, -187)", 
	"END_POS		= D3DXVECTOR3(2000, 0, -187)", 
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
	"START_POS		= D3DXVECTOR3(-575, 1200, -187)", 
	"END_POS		= D3DXVECTOR3(575, 1200, -187)", 
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
	"START_POS		= D3DXVECTOR3(575, 960, -187)", 
	"END_POS		= D3DXVECTOR3(925, 960, -187)", 
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
	"START_POS		= D3DXVECTOR3(-925, 960, -187)", 
	"END_POS		= D3DXVECTOR3(-575, 960, -187)", 
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
	"START_POS		= D3DXVECTOR3(-1500, 720, -187)", 
	"END_POS		= D3DXVECTOR3(1500, 720, -187)", 
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
	NEXT_LINE		= -2, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(1500, 480, -187)", 
	"END_POS		= D3DXVECTOR3(2000, 480, -187)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 6, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -2, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(-2000, 480, -187)", 
	"END_POS		= D3DXVECTOR3(-1500, 480, -187)", 
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
	"START_POS		= D3DXVECTOR3(1160, 240, -187)", 
	"END_POS		= D3DXVECTOR3(1510, 240, -187)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(-1510, 240, -187)", 
	"END_POS		= D3DXVECTOR3(-1160, 240, -187)", 
}

