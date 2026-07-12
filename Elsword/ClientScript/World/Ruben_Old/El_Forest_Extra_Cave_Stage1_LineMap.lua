-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 0 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -382.295, 720, 0 ), true, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -624.575, 720, 0 ), true, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -105.409, 720, 0 ), true, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 223.398, 720, 0 ), true, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 58.9963, 720, 0 ), true, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -226.547, 720, 0 ), true, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -468.825, 720, 0 ), true, 1 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 396.454, 720, 0 ), true, 1 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 942.799, 480, 0 ), false, 0 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 1271.66, 480, 0 ), false, 0 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 1574.55, 480, 0 ), false, 0 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 2033.25, 240, 0 ), false, 5 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 2370.78, 240, 0 ), false, 5 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 2716.98, 480, 0 ), false, 8 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 3357.5, 720, 0 ), false, 3 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 3686.44, 720, 0 ), false, 3 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 4006.71, 720, 0 ), false, 3 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 4318.34, 720, 0 ), false, 3 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 4785.8, 480, 0 ), false, 10 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 2749.14, 167.081, 0 ), false, 6 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 3054.34, 77.7541, 0 ), false, 6 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 3470.04, 0, 0 ), false, 7 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 3798.99, 0, 0 ), false, 7 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 4162.56, 0, 0 ), false, 7 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 4491.51, 0, 0 ), false, 7 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 4846.43, 0, 0 ), false, 7 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 5235.98, 240, 0 ), false, 12 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 5719.44, 240, 0 ), false, 12 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 6065.74, 720, 0 ), false, 2 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 6386.08, 720, 0 ), false, 2 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( 6888.26, 960, 0 ), false, 4 )
g_pLineMap:AddStartPos( 24, D3DXVECTOR3( 7347.17, 1200, 0 ), false, 9 )
g_pLineMap:AddStartPos( 25, D3DXVECTOR3( 7624.26, 1200, 0 ), false, 9 )
g_pLineMap:AddStartPos( 26, D3DXVECTOR3( 7953.3, 1200, 0 ), false, 9 )
g_pLineMap:AddStartPos( 27, D3DXVECTOR3( 8317, 960, 0 ), false, 11 )
g_pLineMap:AddStartPos( 28, D3DXVECTOR3( 8611.43, 960, 0 ), false, 11 )
g_pLineMap:AddStartPos( 29, D3DXVECTOR3( 8897.21, 960, 0 ), false, 11 )
g_pLineMap:AddStartPos( 30, D3DXVECTOR3( 6268.37, 380.511, 0 ), false, 13 )
g_pLineMap:AddStartPos( 31, D3DXVECTOR3( 6663.14, 480, 0 ), false, 14 )
g_pLineMap:AddStartPos( 32, D3DXVECTOR3( 7130.72, 480, 0 ), false, 14 )
g_pLineMap:AddStartPos( 33, D3DXVECTOR3( 7606.96, 480, 0 ), false, 14 )
g_pLineMap:AddStartPos( 34, D3DXVECTOR3( 8109.18, 480, 0 ), false, 14 )
g_pLineMap:AddStartPos( 35, D3DXVECTOR3( 8692.17, 597.651, 0 ), false, 15 )
g_pLineMap:AddStartPos( 36, D3DXVECTOR3( 9295.59, 720, 0 ), false, 16 )
g_pLineMap:AddStartPos( 37, D3DXVECTOR3( 9884.52, 720, 0 ), false, 16 )
g_pLineMap:AddStartPos( 38, D3DXVECTOR3( 10500, 720, 0 ), false, 16 )






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
	"START_POS		= D3DXVECTOR3(700, 480, 0)", 
	"END_POS		= D3DXVECTOR3(1800, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(-700, 720, 0)", 
	"END_POS		= D3DXVECTOR3(700, 720, 0)", 
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
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(5800, 720, 0)", 
	"END_POS		= D3DXVECTOR3(6600, 720, 0)", 
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
	"START_POS		= D3DXVECTOR3(3020, 720, 0)", 
	"END_POS		= D3DXVECTOR3(4520, 720, 0)", 
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
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(6600, 960, 0)", 
	"END_POS		= D3DXVECTOR3(7100, 960, 0)", 
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
	"START_POS		= D3DXVECTOR3(1800, 240, 0)", 
	"END_POS		= D3DXVECTOR3(2500, 240, 0)", 
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
	"START_POS		= D3DXVECTOR3(2500, 240, 0)", 
	"END_POS		= D3DXVECTOR3(3320, 0, 0)", 
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
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(3320, 0, 0)", 
	"END_POS		= D3DXVECTOR3(5000, 0, 0)", 
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
	"START_POS		= D3DXVECTOR3(2500, 480, 0)", 
	"END_POS		= D3DXVECTOR3(3000, 480, 0)", 
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
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(7100, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(8100, 1200, 0)", 
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
	"START_POS		= D3DXVECTOR3(4520, 480, 0)", 
	"END_POS		= D3DXVECTOR3(5020, 480, 0)", 
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
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(8100, 960, 0)", 
	"END_POS		= D3DXVECTOR3(9100, 960, 0)", 
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
	NEXT_LINE		= 13, 
	LINE_SET		= 1, 
	"START_POS		= D3DXVECTOR3(5000, 240, 0)", 
	"END_POS		= D3DXVECTOR3(5800, 240, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 13, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 12, 
	NEXT_LINE		= 14, 
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(5800, 240, 0)", 
	"END_POS		= D3DXVECTOR3(6600, 480, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 14, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 13, 
	NEXT_LINE		= 15, 
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(6600, 480, 0)", 
	"END_POS		= D3DXVECTOR3(8300, 480, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 15, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 14, 
	NEXT_LINE		= 16, 
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(8300, 480, 0)", 
	"END_POS		= D3DXVECTOR3(9100, 720, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 16, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 15, 
	NEXT_LINE		= -1, 
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(9100, 720, 0)", 
	"END_POS		= D3DXVECTOR3(10500, 720, 0)", 
}

