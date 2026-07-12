-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 0 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 964.331, 480, 0 ), true, 17 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 288.067, 480, 0 ), true, 17 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 762.931, 480, 0 ), true, 17 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 466.837, 480, 0 ), true, 17 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 600.617, 480, 0 ), true, 17 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 1475.82, 240, 0 ), false, 16 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 1794.32, 240, 0 ), false, 16 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 2051.35, 240, 0 ), false, 16 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 2341.91, 720, 0 ), false, 15 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 2565.41, 720, 0 ), false, 15 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 2855.97, 480, 0 ), false, 13 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 3062.71, 480, 0 ), false, 13 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 2414.16, 0, 0 ), false, 14 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 2699.05, 0, 0 ), false, 14 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 2944.83, 0, 0 ), false, 14 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 3385.12, 240, 0 ), false, 10 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 3664.42, 240, 0 ), false, 10 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 3919.09, 187.178, 0 ), false, 11 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 4206.93, 118.097, 0 ), false, 11 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 4520.03, 42.9529, 0 ), false, 11 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 4815.23, 0, 0 ), false, 12 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 5178.41, 0, 0 ), false, 12 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 5508.06, 0, 0 ), false, 18 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 5951.5, 240, 0 ), false, 9 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 6069.77, 240, 0 ), false, 9 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 6340.1, 480, 0 ), false, 8 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 6563.61, 480, 0 ), false, 8 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( 6373.63, 0, 0 ), false, 5 )
g_pLineMap:AddStartPos( 24, D3DXVECTOR3( 6735.19, 68.6856, 0 ), false, 6 )
g_pLineMap:AddStartPos( 25, D3DXVECTOR3( 7079.83, 151.399, 0 ), false, 6 )
g_pLineMap:AddStartPos( 26, D3DXVECTOR3( 7530.27, 240, 0 ), false, 7 )
g_pLineMap:AddStartPos( 27, D3DXVECTOR3( 7368.23, 720, 0 ), false, 4 )
g_pLineMap:AddStartPos( 28, D3DXVECTOR3( 7558.21, 720, 0 ), false, 4 )
g_pLineMap:AddStartPos( 29, D3DXVECTOR3( 7843.18, 480, 0 ), false, 3 )
g_pLineMap:AddStartPos( 30, D3DXVECTOR3( 8049.92, 480, 0 ), false, 3 )
g_pLineMap:AddStartPos( 31, D3DXVECTOR3( 8363.16, 240, 0 ), false, 0 )
g_pLineMap:AddStartPos( 32, D3DXVECTOR3( 8643.51, 193.318, 0 ), false, 1 )
g_pLineMap:AddStartPos( 33, D3DXVECTOR3( 8922.22, 126.427, 0 ), false, 1 )
g_pLineMap:AddStartPos( 34, D3DXVECTOR3( 9187.51, 62.7577, 0 ), false, 1 )
g_pLineMap:AddStartPos( 35, D3DXVECTOR3( 9547.56, 0, 0 ), false, 2 )
g_pLineMap:AddStartPos( 36, D3DXVECTOR3( 9843.76, 0, 0 ), false, 2 )
g_pLineMap:AddStartPos( 37, D3DXVECTOR3( 10123.2, 0, 0 ), false, 2 )
g_pLineMap:AddStartPos( 38, D3DXVECTOR3( 10420, 0, 0 ), false, 2 )






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
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(8199, 240, 0)", 
	"END_POS		= D3DXVECTOR3(8449, 240, 0)", 
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
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(8449, 240, 0)", 
	"END_POS		= D3DXVECTOR3(9449, 0, 0)", 
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
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(9449, 0, 0)", 
	"END_POS		= D3DXVECTOR3(10420, 0, 0)", 
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
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(7699, 480, 0)", 
	"END_POS		= D3DXVECTOR3(8199, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(7199, 720, 0)", 
	"END_POS		= D3DXVECTOR3(7699, 720, 0)", 
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
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(6199, 0, 0)", 
	"END_POS		= D3DXVECTOR3(6449, 0, 0)", 
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
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(6449, 0, 0)", 
	"END_POS		= D3DXVECTOR3(7449, 240, 0)", 
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
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(7449, 240, 0)", 
	"END_POS		= D3DXVECTOR3(7699, 240, 0)", 
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
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(6199, 480, 0)", 
	"END_POS		= D3DXVECTOR3(6699, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(5699, 240, 0)", 
	"END_POS		= D3DXVECTOR3(6199, 240, 0)", 
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
	NEXT_LINE		= 11, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(3199, 240, 0)", 
	"END_POS		= D3DXVECTOR3(3699, 240, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 11, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 10, 
	NEXT_LINE		= 12, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(3699, 240, 0)", 
	"END_POS		= D3DXVECTOR3(4699, 0, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 12, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 11, 
	NEXT_LINE		= 18, 
	LINE_SET		= 1, 
	"START_POS		= D3DXVECTOR3(4699, 0, 0)", 
	"END_POS		= D3DXVECTOR3(5180, 0, 0)", 
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
	"START_POS		= D3DXVECTOR3(2699, 480, 0)", 
	"END_POS		= D3DXVECTOR3(3199, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(2199, 0, 0)", 
	"END_POS		= D3DXVECTOR3(3199, 0, 0)", 
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
	"START_POS		= D3DXVECTOR3(2199, 720, 0)", 
	"END_POS		= D3DXVECTOR3(2699, 720, 0)", 
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
	"START_POS		= D3DXVECTOR3(1199, 240, 0)", 
	"END_POS		= D3DXVECTOR3(2199, 240, 0)", 
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
	"START_POS		= D3DXVECTOR3(99, 480, 0)", 
	"END_POS		= D3DXVECTOR3(1199, 480, 0)", 
}
--추가
g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 18, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 12, 
	NEXT_LINE		= -1, 
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(5180, 0, 0)", 
	"END_POS		= D3DXVECTOR3(5699, 0, 0)", 
}