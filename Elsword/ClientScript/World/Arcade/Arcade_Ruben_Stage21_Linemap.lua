-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 240 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -475.399, 240, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -637.967, 240, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 1966.95, 240, 0 ), false, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 2145.47, 240, 0 ), false, 0 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( -217.253, 480, 0 ), false, 1 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 244.162, 480, 0 ), false, 2 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 732.4, 480, 0 ), false, 4 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 1206.77, 480, 0 ), false, 3 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 1692.66, 480, 0 ), false, 5 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 1449.03, 720, 0 ), false, 6 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 1689.83, 960, 0 ), false, 18 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 962.641, 720, 0 ), false, 7 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 489.678, 720, 0 ), false, 8 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 5.24126, 720, 0 ), false, 9 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( -224.533, 960, 0 ), false, 14 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 251.189, 960, 0 ), false, 15 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 10.0191, 1200, 0 ), false, 13 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 489.074, 1200, 0 ), false, 12 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 741.377, 960, 0 ), false, 16 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 978.411, 1200, 0 ), false, 11 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 1203.16, 960, 0 ), false, 17 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 1454.11, 1200, 0 ), false, 10 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( -238.197, 1440, 0 ), false, 19 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 242.841, 1440, 0 ), false, 20 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 728.177, 1440, 0 ), false, 21 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 1221.3, 1440, 0 ), false, 22 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( 1685.8, 1440, 0 ), false, 23 )






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
	"START_POS		= D3DXVECTOR3(-700, 240, 0)", 
	"END_POS		= D3DXVECTOR3(2245, 240, 0)", 
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
	"START_POS		= D3DXVECTOR3(-350, 480, 0)", 
	"END_POS		= D3DXVECTOR3(-110, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(130, 480, 0)", 
	"END_POS		= D3DXVECTOR3(370, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(1090, 480, 0)", 
	"END_POS		= D3DXVECTOR3(1330, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(610, 480, 0)", 
	"END_POS		= D3DXVECTOR3(850, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(1570, 480, 0)", 
	"END_POS		= D3DXVECTOR3(1810, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(1330, 720, 0)", 
	"END_POS		= D3DXVECTOR3(1570, 720, 0)", 
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
	"START_POS		= D3DXVECTOR3(850, 720, 0)", 
	"END_POS		= D3DXVECTOR3(1090, 720, 0)", 
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
	"START_POS		= D3DXVECTOR3(370, 720, 0)", 
	"END_POS		= D3DXVECTOR3(610, 720, 0)", 
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
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-110, 720, 0)", 
	"END_POS		= D3DXVECTOR3(130, 720, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 10, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1330, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(1570, 1200, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 11, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(850, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(1090, 1200, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 12, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(370, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(610, 1200, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 13, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-110, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(130, 1200, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 14, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-350, 960, 0)", 
	"END_POS		= D3DXVECTOR3(-110, 960, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 15, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(130, 960, 0)", 
	"END_POS		= D3DXVECTOR3(370, 960, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 16, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(610, 960, 0)", 
	"END_POS		= D3DXVECTOR3(850, 960, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 17, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1090, 960, 0)", 
	"END_POS		= D3DXVECTOR3(1330, 960, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 18, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1570, 960, 0)", 
	"END_POS		= D3DXVECTOR3(1810, 960, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 19, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-350, 1440, 0)", 
	"END_POS		= D3DXVECTOR3(-110, 1440, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 20, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(130, 1440, 0)", 
	"END_POS		= D3DXVECTOR3(370, 1440, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 21, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(610, 1440, 0)", 
	"END_POS		= D3DXVECTOR3(850, 1440, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 22, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1090, 1440, 0)", 
	"END_POS		= D3DXVECTOR3(1330, 1440, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 23, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1570, 1440, 0)", 
	"END_POS		= D3DXVECTOR3(1810, 1440, 0)", 
}

