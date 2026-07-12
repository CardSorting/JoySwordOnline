-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 0 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 542.81, 0, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 726.224, 0, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 341.054, 0, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 151.526, 0, 0 ), true, 0 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 1196.03, 47.0472, 0 ), false, 1 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 1448.96, 107.75, 0 ), false, 1 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 1744.5, 178.68, 0 ), false, 1 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 2123.51, 240, 0 ), false, 2 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 2386.44, 480, 0 ), false, 3 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 2613.11, 480, 0 ), false, 3 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 2918.91, 720, 0 ), false, 4 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 3118.38, 720, 0 ), false, 4 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 2905.31, 240, 0 ), false, 6 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 3117.99, 211.682, 0 ), false, 7 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 3324.26, 162.178, 0 ), false, 7 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 3529.9, 112.824, 0 ), false, 7 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 3726.19, 65.7144, 0 ), false, 7 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 3890.3, 26.328, 0 ), false, 7 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 4111.19, 0, 0 ), false, 8 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 3866.39, 480, 0 ), false, 9 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 4088.53, 480, 0 ), false, 9 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 4503.58, 240, 0 ), false, 10 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 4615.31, 240, 0 ), false, 10 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 4934.63, 0, 0 ), false, 11 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 5233.81, 0, 0 ), false, 11 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 5523.9, 0, 0 ), false, 11 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( 5889.03, 33.3671, 0 ), false, 12 )
g_pLineMap:AddStartPos( 24, D3DXVECTOR3( 6170.36, 100.886, 0 ), false, 12 )
g_pLineMap:AddStartPos( 25, D3DXVECTOR3( 6423.87, 161.729, 0 ), false, 12 )
g_pLineMap:AddStartPos( 26, D3DXVECTOR3( 6659.06, 218.174, 0 ), false, 12 )
g_pLineMap:AddStartPos( 27, D3DXVECTOR3( 6891.61, 240, 0 ), false, 13 )
g_pLineMap:AddStartPos( 28, D3DXVECTOR3( 7113.74, 240, 0 ), false, 13 )
g_pLineMap:AddStartPos( 29, D3DXVECTOR3( 7394.87, 480, 0 ), false, 14 )
g_pLineMap:AddStartPos( 30, D3DXVECTOR3( 7616.94, 480, 0 ), false, 14 )
g_pLineMap:AddStartPos( 31, D3DXVECTOR3( 7440.25, 0, 0 ), false, 15 )
g_pLineMap:AddStartPos( 32, D3DXVECTOR3( 7716.72, 0, 0 ), false, 15 )
g_pLineMap:AddStartPos( 33, D3DXVECTOR3( 8024.91, 0, 0 ), false, 15 )
g_pLineMap:AddStartPos( 34, D3DXVECTOR3( 7920.62, 720, 0 ), false, 16 )
g_pLineMap:AddStartPos( 35, D3DXVECTOR3( 8106.47, 720, 0 ), false, 16 )
g_pLineMap:AddStartPos( 36, D3DXVECTOR3( 8435.21, 240, 0 ), false, 17 )
g_pLineMap:AddStartPos( 37, D3DXVECTOR3( 8734.39, 240, 0 ), false, 17 )
g_pLineMap:AddStartPos( 38, D3DXVECTOR3( 9024.48, 240, 0 ), false, 17 )
g_pLineMap:AddStartPos( 39, D3DXVECTOR3( 9408.84, 480, 0 ), false, 18 )
g_pLineMap:AddStartPos( 40, D3DXVECTOR3( 9744.29, 480, 0 ), false, 18 )
g_pLineMap:AddStartPos( 41, D3DXVECTOR3( 10070.7, 480, 0 ), false, 18 )
g_pLineMap:AddStartPos( 42, D3DXVECTOR3( 10450, 480, 0 ), false, 18 )






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
	"START_POS		= D3DXVECTOR3(50, 0, 0)", 
	"END_POS		= D3DXVECTOR3(1000, 0, 0)", 
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
	"START_POS		= D3DXVECTOR3(1000, 0, 0)", 
	"END_POS		= D3DXVECTOR3(2000, 240, 0)", 
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
	"START_POS		= D3DXVECTOR3(2000, 240, 0)", 
	"END_POS		= D3DXVECTOR3(2250, 240, 0)", 
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
	"START_POS		= D3DXVECTOR3(2250, 480, 0)", 
	"END_POS		= D3DXVECTOR3(2750, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(2750, 720, 0)", 
	"END_POS		= D3DXVECTOR3(3250, 720, 0)", 
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
	"START_POS		= D3DXVECTOR3(2750, 720, 0)", 
	"END_POS		= D3DXVECTOR3(3250, 720, 0)", 
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
	NEXT_LINE		= 7, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(2750, 240, 0)", 
	"END_POS		= D3DXVECTOR3(3000, 240, 0)", 
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
	"START_POS		= D3DXVECTOR3(3000, 240, 0)", 
	"END_POS		= D3DXVECTOR3(4000, 0, 0)", 
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
	"START_POS		= D3DXVECTOR3(4000, 0, 0)", 
	"END_POS		= D3DXVECTOR3(4250, 0, 0)", 
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
	"START_POS		= D3DXVECTOR3(3750, 480, 0)", 
	"END_POS		= D3DXVECTOR3(4250, 480, 0)", 
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
	"START_POS		= D3DXVECTOR3(4250, 240, 0)", 
	"END_POS		= D3DXVECTOR3(4750, 240, 0)", 
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
	NEXT_LINE		= 12, 
	LINE_SET		= 1, 
	"START_POS		= D3DXVECTOR3(4750, 0, 0)", 
	"END_POS		= D3DXVECTOR3(5750, 0, 0)", 
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
	NEXT_LINE		= 13, 
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(5750, 0, 0)", 
	"END_POS		= D3DXVECTOR3(6750, 240, 0)", 
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
	NEXT_LINE		= -1, 
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(6750, 240, 0)", 
	"END_POS		= D3DXVECTOR3(7250, 240, 0)", 
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
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(7250, 480, 0)", 
	"END_POS		= D3DXVECTOR3(7750, 480, 0)", 
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
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(7250, 0, 0)", 
	"END_POS		= D3DXVECTOR3(8250, 0, 0)", 
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
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(7750, 720, 0)", 
	"END_POS		= D3DXVECTOR3(8250, 720, 0)", 
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
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(8250, 240, 0)", 
	"END_POS		= D3DXVECTOR3(9250, 240, 0)", 
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
	LINE_SET		= 2, 
	"START_POS		= D3DXVECTOR3(9250, 480, 0)", 
	"END_POS		= D3DXVECTOR3(10450, 480, 0)", 
}

