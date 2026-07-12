-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 4640 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1713.25, 5065, 668 ), true, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -2039.69, 5065, 668 ), true, 2 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -1713.12, 4825, 668 ), true, 4 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -2043.32, 4825, 668 ), true, 4 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 1722.08, 5065, 668 ), false, 3 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( -102.444, 5305, 668 ), false, 1 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 554.902, 4743, 668 ), false, 6 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 1955.91, 4825, 668 ), false, 8 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 1493.68, 4825, 668 ), false, 8 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( -32.3563, 4743, 668 ), false, 6 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( -433.876, 4743, 668 ), false, 6 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( -1709.22, 5065, 668 ), true, 2 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( -2035.43, 5065, 668 ), true, 2 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( -1708.37, 4825, 668 ), true, 4 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( -2052.21, 4825, 668 ), true, 4 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( -1108.86, 5305, 668 ), true, 0 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( -1362.1, 5305, 668 ), true, 0 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( -1570.54, 5305, 668 ), true, 0 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( -1269.14, 4825, 668 ), true, 4 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( -1480.69, 4825, 668 ), true, 4 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( -848.631, 4743, 668 ), true, 6 )






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
	"START_POS		= D3DXVECTOR3(-1719, 5305, 668)", 
	"END_POS		= D3DXVECTOR3(-910, 5305, 668)", 
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
	"START_POS		= D3DXVECTOR3(-537, 5305, 668)", 
	"END_POS		= D3DXVECTOR3(437, 5305, 668)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 2, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -2, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(-2131, 5065, 668)", 
	"END_POS		= D3DXVECTOR3(-1531, 5065, 668)", 
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
	NEXT_LINE		= -2, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(1328, 5065, 668)", 
	"END_POS		= D3DXVECTOR3(2136, 5065, 668)", 
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
	NEXT_LINE		= 5, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(-2131, 4825, 668)", 
	"END_POS		= D3DXVECTOR3(-1139, 4825, 668)", 
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
	"START_POS		= D3DXVECTOR3(-1139, 4825, 668)", 
	"END_POS		= D3DXVECTOR3(-1027, 4743, 668)", 
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
	NEXT_LINE		= 7, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(-1027, 4743, 668)", 
	"END_POS		= D3DXVECTOR3(1029, 4743, 668)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 7, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 6, 
	NEXT_LINE		= 8, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(1029, 4743, 668)", 
	"END_POS		= D3DXVECTOR3(1141, 4825, 668)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 8, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 7, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(1141, 4825, 668)", 
	"END_POS		= D3DXVECTOR3(2136, 4825, 668)", 
}

