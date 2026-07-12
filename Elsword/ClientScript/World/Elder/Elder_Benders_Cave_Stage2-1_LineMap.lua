-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( -80 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 612.027, 115, -1393 ), true, 24 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 115.526, 115, -1393 ), true, 24 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 275.916, 115, -1393 ), true, 24 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 447.707, 115, -1393 ), true, 24 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 1003.95, 355, -1393 ), false, 0 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 1331.44, 595, -1393 ), false, 1 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 1566.64, 595, -1393 ), false, 1 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 1797.8, 595, -1393 ), false, 1 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 1963.26, 595, -1393 ), false, 1 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 2250.02, 430, -1393 ), false, 2 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 2550.21, 255, -1393 ), false, 3 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 2792.9, 255, -1369.5 ), false, 4 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 3026.5, 255, -1290.96 ), false, 4 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 3300.22, 495, -1199.14 ), false, 5 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 3543.67, 495, -1117.73 ), false, 5 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 3731.98, 495, -1054.76 ), false, 5 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 3980.74, 335, -971.755 ), false, 6 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 1013.2, 96.5933, -1393 ), false, 25 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 1427.75, 55.8307, -1393 ), false, 25 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 1758.38, 23.3203, -1393 ), false, 25 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 2049.94, 15, -1393 ), false, 26 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 2330.34, 15, -1393 ), false, 27 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 2662.38, 15, -1393 ), false, 27 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 2964.5, 15, -1311.8 ), false, 28 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 3241.36, 15, -1218.88 ), false, 29 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 3480.11, 15, -1139.3 ), false, 29 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( 3703.82, 40.5871, -1064.51 ), false, 30 )
g_pLineMap:AddStartPos( 24, D3DXVECTOR3( 3906.19, 66.2448, -996.842 ), false, 30 )
g_pLineMap:AddStartPos( 25, D3DXVECTOR3( 4133, 95, -921 ), false, 30 )
g_pLineMap:AddStartPos( 26, D3DXVECTOR3( 4428.5, 95, -821.705 ), false, 32 )
g_pLineMap:AddStartPos( 27, D3DXVECTOR3( 4669.94, 95, -740.939 ), false, 32 )
g_pLineMap:AddStartPos( 28, D3DXVECTOR3( 5048.65, 255, -614.221 ), false, 7 )
g_pLineMap:AddStartPos( 29, D3DXVECTOR3( 5233.15, 255, -552.466 ), false, 7 )
g_pLineMap:AddStartPos( 30, D3DXVECTOR3( 5500.64, 495, -462.927 ), false, 8 )
g_pLineMap:AddStartPos( 31, D3DXVECTOR3( 5751.86, 495, -378.827 ), false, 8 )
g_pLineMap:AddStartPos( 32, D3DXVECTOR3( 5987.93, 495, -299.798 ), false, 8 )
g_pLineMap:AddStartPos( 33, D3DXVECTOR3( 6194.44, 495, -230.665 ), false, 8 )
g_pLineMap:AddStartPos( 34, D3DXVECTOR3( 6460.32, 735, -141.369 ), false, 14 )
g_pLineMap:AddStartPos( 35, D3DXVECTOR3( 6760.7, 975, -40.7183 ), false, 15 )
g_pLineMap:AddStartPos( 36, D3DXVECTOR3( 6997.13, 975, 38.1719 ), false, 15 )
g_pLineMap:AddStartPos( 37, D3DXVECTOR3( 7246.19, 975, 121.271 ), false, 15 )
g_pLineMap:AddStartPos( 38, D3DXVECTOR3( 7463.23, 975, 193.69 ), false, 15 )
g_pLineMap:AddStartPos( 39, D3DXVECTOR3( 6459.19, 255, -141.548 ), false, 9 )
g_pLineMap:AddStartPos( 40, D3DXVECTOR3( 6676.11, 255, -69.17 ), false, 9 )
g_pLineMap:AddStartPos( 41, D3DXVECTOR3( 6881.78, 255, -0.546173 ), false, 9 )
g_pLineMap:AddStartPos( 42, D3DXVECTOR3( 7071.06, 255, 62.6098 ), false, 9 )
g_pLineMap:AddStartPos( 43, D3DXVECTOR3( 7249.83, 255, 122.258 ), false, 9 )
g_pLineMap:AddStartPos( 44, D3DXVECTOR3( 7478.97, 495, 198.99 ), false, 17 )
g_pLineMap:AddStartPos( 45, D3DXVECTOR3( 7767.99, 735, 295.485 ), false, 16 )
g_pLineMap:AddStartPos( 46, D3DXVECTOR3( 7998.89, 735, 372.7 ), false, 16 )
g_pLineMap:AddStartPos( 47, D3DXVECTOR3( 8203.34, 735, 441.073 ), false, 16 )
g_pLineMap:AddStartPos( 48, D3DXVECTOR3( 8410.69, 735, 510.412 ), false, 16 )
g_pLineMap:AddStartPos( 49, D3DXVECTOR3( 7520.87, 15, 212.968 ), false, 10 )
g_pLineMap:AddStartPos( 50, D3DXVECTOR3( 7724.67, 15, 281.233 ), false, 10 )
g_pLineMap:AddStartPos( 51, D3DXVECTOR3( 7923.89, 15, 347.963 ), false, 10 )
g_pLineMap:AddStartPos( 52, D3DXVECTOR3( 8127.35, 15, 415.893 ), false, 11 )
g_pLineMap:AddStartPos( 53, D3DXVECTOR3( 8322.29, 15, 480.976 ), false, 11 )
g_pLineMap:AddStartPos( 54, D3DXVECTOR3( 8510.44, 15, 543.792 ), false, 11 )
g_pLineMap:AddStartPos( 55, D3DXVECTOR3( 8722.22, 38.1339, 557.321 ), false, 12 )
g_pLineMap:AddStartPos( 56, D3DXVECTOR3( 8913.8, 63.8686, 557.679 ), false, 12 )
g_pLineMap:AddStartPos( 57, D3DXVECTOR3( 9120.49, 87, 558 ), false, 13 )
g_pLineMap:AddStartPos( 58, D3DXVECTOR3( 9366.63, 87, 558 ), false, 13 )
g_pLineMap:AddStartPos( 59, D3DXVECTOR3( 9586.56, 87, 558 ), false, 13 )
g_pLineMap:AddStartPos( 60, D3DXVECTOR3( 8404.45, 255, 508.331 ), false, 20 )
g_pLineMap:AddStartPos( 61, D3DXVECTOR3( 8682.55, 512.806, 557.247 ), false, 18 )
g_pLineMap:AddStartPos( 62, D3DXVECTOR3( 8897, 541.612, 557.647 ), false, 18 )
g_pLineMap:AddStartPos( 63, D3DXVECTOR3( 9075.81, 565.631, 557.981 ), false, 18 )
g_pLineMap:AddStartPos( 64, D3DXVECTOR3( 9247.23, 567, 558 ), false, 19 )
g_pLineMap:AddStartPos( 65, D3DXVECTOR3( 9648.9, 327, 557.531 ), false, 21 )
g_pLineMap:AddStartPos( 66, D3DXVECTOR3( 9884.85, 327, 556.778 ), false, 21 )
g_pLineMap:AddStartPos( 67, D3DXVECTOR3( 10136.8, 327, 555.974 ), false, 21 )
g_pLineMap:AddStartPos( 68, D3DXVECTOR3( 10383.6, 327, 555.187 ), false, 21 )
g_pLineMap:AddStartPos( 69, D3DXVECTOR3( 10664.5, 327, 565.155 ), false, 22 )
g_pLineMap:AddStartPos( 70, D3DXVECTOR3( 10947.9, 327, 591.546 ), false, 23 )
g_pLineMap:AddStartPos( 71, D3DXVECTOR3( 11216.4, 327, 617.447 ), false, 23 )
g_pLineMap:AddStartPos( 72, D3DXVECTOR3( 11471, 327, 642 ), false, 23 )






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
	"START_POS		= D3DXVECTOR3(826, 355, -1393)", 
	"END_POS		= D3DXVECTOR3(1152, 355, -1393)", 
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
	"START_POS		= D3DXVECTOR3(1152, 595, -1393)", 
	"END_POS		= D3DXVECTOR3(2071, 595, -1393)", 
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
	"START_POS		= D3DXVECTOR3(2071, 430, -1393)", 
	"END_POS		= D3DXVECTOR3(2397, 430, -1393)", 
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
	NEXT_LINE		= 4, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(2397, 255, -1393)", 
	"END_POS		= D3DXVECTOR3(2723, 255, -1393)", 
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
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(2723, 255, -1393)", 
	"END_POS		= D3DXVECTOR3(3187, 255, -1237)", 
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
	"START_POS		= D3DXVECTOR3(3187, 495, -1237)", 
	"END_POS		= D3DXVECTOR3(3818, 495, -1026)", 
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
	"START_POS		= D3DXVECTOR3(3818, 335, -1026)", 
	"END_POS		= D3DXVECTOR3(4133, 335, -921)", 
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
	LINE_SET		= 1, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(4882, 255, -670)", 
	"END_POS		= D3DXVECTOR3(5366, 255, -508)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(5366, 495, -508)", 
	"END_POS		= D3DXVECTOR3(6295, 495, -197)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(6293, 255, -197)", 
	"END_POS		= D3DXVECTOR3(7309, 255, 142)", 
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
	LINE_SET		= 2, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(7309, 15, 142)", 
	"END_POS		= D3DXVECTOR3(7924, 15, 348)", 
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
	LINE_SET		= 2, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(7924, 15, 348)", 
	"END_POS		= D3DXVECTOR3(8550, 15, 557)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(8550, 15, 557)", 
	"END_POS		= D3DXVECTOR3(9086, 87, 558)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(9086, 87, 558)", 
	"END_POS		= D3DXVECTOR3(9681, 87, 558)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(6295, 735, -197)", 
	"END_POS		= D3DXVECTOR3(6610, 735, -91)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(6610, 975, -91)", 
	"END_POS		= D3DXVECTOR3(7626, 975, 248)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(7626, 735, 248)", 
	"END_POS		= D3DXVECTOR3(8550, 735, 557)", 
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
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(7311, 495, 143)", 
	"END_POS		= D3DXVECTOR3(7626, 495, 248)", 
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
	NEXT_LINE		= 19, 
	LINE_SET		= 2, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(8550, 495, 557)", 
	"END_POS		= D3DXVECTOR3(9086, 567, 558)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 19, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 18, 
	NEXT_LINE		= -1, 
	LINE_SET		= 2, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(9086, 567, 558)", 
	"END_POS		= D3DXVECTOR3(9364, 567, 558)", 
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
	LINE_SET		= 2, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(8230, 255, 450)", 
	"END_POS		= D3DXVECTOR3(8550, 255, 557)", 
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
	NEXT_LINE		= 22, 
	LINE_SET		= 2, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(9502, 327, 558)", 
	"END_POS		= D3DXVECTOR3(10442, 327, 555)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 22, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 21, 
	NEXT_LINE		= 23, 
	LINE_SET		= 2, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(10442, 327, 555)", 
	"END_POS		= D3DXVECTOR3(10683, 327, 566)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 23, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 22, 
	NEXT_LINE		= -1, 
	LINE_SET		= 2, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(10683, 327, 566)", 
	"END_POS		= D3DXVECTOR3(11471, 327, 642)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 24, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= 25, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(0, 115, -1393)", 
	"END_POS		= D3DXVECTOR3(826, 115, -1393)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 25, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 24, 
	NEXT_LINE		= 26, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(826, 115, -1393)", 
	"END_POS		= D3DXVECTOR3(1843, 15, -1393)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 26, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 25, 
	NEXT_LINE		= 27, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(1843, 15, -1393)", 
	"END_POS		= D3DXVECTOR3(2210, 15, -1393)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 27, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 26, 
	NEXT_LINE		= 28, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(2210, 15, -1393)", 
	"END_POS		= D3DXVECTOR3(2723, 15, -1393)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 28, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 27, 
	NEXT_LINE		= 29, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(2723, 15, -1393)", 
	"END_POS		= D3DXVECTOR3(3187, 15, -1237)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 29, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 28, 
	NEXT_LINE		= 30, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(3187, 15, -1237)", 
	"END_POS		= D3DXVECTOR3(3502, 15, -1132)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 30, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 29, 
	NEXT_LINE		= 31, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(3502, 15, -1132)", 
	"END_POS		= D3DXVECTOR3(4133, 95, -921)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 31, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 30, 
	NEXT_LINE		= 32, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(4133, 95, -921)", 
	"END_POS		= D3DXVECTOR3(4320, 95, -858)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 32, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= 31, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(4320, 95, -858)", 
	"END_POS		= D3DXVECTOR3(4882, 95, -670)", 
}

