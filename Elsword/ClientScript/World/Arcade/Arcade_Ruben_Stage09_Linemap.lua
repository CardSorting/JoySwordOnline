-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pLineMap:SetLandHeight( 0 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 275.273, 720, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 572.6, 720, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 429.883, 720, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 679.635, 720, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 192.018, 720, 0 ), true, 0 )
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( 334.735, 720, 0 ), true, 0 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( 1505.23, 960, 0 ), false, 1 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 1793.06, 1200, 0 ), false, 3 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 2134.44, 1440, 0 ), false, 4 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 2281.71, 1440, 0 ), false, 4 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 2696.75, 1200, 0 ), false, 5 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 2984.6, 960, 0 ), false, 6 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 3647.31, 720, 0 ), false, 2 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 3982, 720, 0 ), false, 2 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 4497.44, 960, 0 ), false, 11 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 4838.84, 1200, 0 ), false, 10 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 5159.77, 1440, 0 ), false, 9 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 5371.24, 1440, 0 ), false, 9 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 5775.52, 1200, 0 ), false, 8 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 6049.22, 960, 0 ), false, 7 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 6521.97, 720, 0 ), false, 12 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 6901.43, 720, 0 ), false, 12 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 7175.14, 720, 0 ), false, 12 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 7564.36, 960, 0 ), false, 13 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 7907.82, 1200, 0 ), false, 14 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 8391.4, 1440, 0 ), false, 15 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 8789.22, 1200, 0 ), false, 16 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 9125.33, 960, 0 ), false, 17 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( 9970.55, 0, 0 ), false, 19 )
g_pLineMap:AddStartPos( 24, D3DXVECTOR3( 10943.8, 1200, 0 ), false, 21 )
g_pLineMap:AddStartPos( 25, D3DXVECTOR3( 10800.8, 960, 0 ), false, 20 )
g_pLineMap:AddStartPos( 26, D3DXVECTOR3( 11086.9, 960, 0 ), false, 20 )
g_pLineMap:AddStartPos( 27, D3DXVECTOR3( 11416.4, 960, 0 ), false, 20 )
g_pLineMap:AddStartPos( 28, D3DXVECTOR3( -483.969, 720, 0 ), false, 0 )






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
	"START_POS		= D3DXVECTOR3(-664, 720, 0)", 
	"END_POS		= D3DXVECTOR3(1327, 720, 0)", 
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
	"START_POS		= D3DXVECTOR3(1327, 960, 0)", 
	"END_POS		= D3DXVECTOR3(1660, 960, 0)", 
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
	"START_POS		= D3DXVECTOR3(3141, 720, 0)", 
	"END_POS		= D3DXVECTOR3(4379, 720, 0)", 
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
	"START_POS		= D3DXVECTOR3(1660, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(1993, 1200, 0)", 
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
	"START_POS		= D3DXVECTOR3(1993, 1440, 0)", 
	"END_POS		= D3DXVECTOR3(2475, 1440, 0)", 
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
	"START_POS		= D3DXVECTOR3(2475, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(2808, 1200, 0)", 
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
	"START_POS		= D3DXVECTOR3(2808, 960, 0)", 
	"END_POS		= D3DXVECTOR3(3141, 960, 0)", 
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
	"START_POS		= D3DXVECTOR3(5860, 960, 0)", 
	"END_POS		= D3DXVECTOR3(6193, 960, 0)", 
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
	"START_POS		= D3DXVECTOR3(5527, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(5860, 1200, 0)", 
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
	"START_POS		= D3DXVECTOR3(5045, 1440, 0)", 
	"END_POS		= D3DXVECTOR3(5527, 1440, 0)", 
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
	"START_POS		= D3DXVECTOR3(4712, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(5045, 1200, 0)", 
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
	"START_POS		= D3DXVECTOR3(4379, 960, 0)", 
	"END_POS		= D3DXVECTOR3(4712, 960, 0)", 
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
	"START_POS		= D3DXVECTOR3(6193, 720, 0)", 
	"END_POS		= D3DXVECTOR3(7431, 720, 0)", 
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
	"START_POS		= D3DXVECTOR3(7431, 960, 0)", 
	"END_POS		= D3DXVECTOR3(7764, 960, 0)", 
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
	"START_POS		= D3DXVECTOR3(7764, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(8097, 1200, 0)", 
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
	"START_POS		= D3DXVECTOR3(8097, 1440, 0)", 
	"END_POS		= D3DXVECTOR3(8580, 1440, 0)", 
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
	"START_POS		= D3DXVECTOR3(8580, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(8912, 1200, 0)", 
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
	"START_POS		= D3DXVECTOR3(8912, 960, 0)", 
	"END_POS		= D3DXVECTOR3(9245, 960, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 18, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_JUMP_UP_REL"],
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(8992, 1440, 0)", 
	"END_POS		= D3DXVECTOR3(9424, 1440, 0)",
	JUMP_SPEED_X = 2000,  -- 요고
 	JUMP_SPEED_Y = 2000,  -- 요고 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 19, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_BUNGEE"], 
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	TELEPORT_LINE   = 15,
	"START_POS		= D3DXVECTOR3(9245, 0, 0)", 
	"END_POS		= D3DXVECTOR3(10586, 0, 0)", 
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
	"START_POS		= D3DXVECTOR3(10486, 960, 0)", 
	"END_POS		= D3DXVECTOR3(11705, 960, 0)", 
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
	"START_POS		= D3DXVECTOR3(10777, 1200, 0)", 
	"END_POS		= D3DXVECTOR3(11164, 1200, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 22, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_MONSTER_ROAD"],
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(1327, 720, 0)", 
	"END_POS		= D3DXVECTOR3(3141, 720, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 23, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_MONSTER_ROAD"],
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	SPEED			= 0,
	"START_POS		= D3DXVECTOR3(4379, 720, 0)", 
	"END_POS		= D3DXVECTOR3(6193, 720, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 24, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_MONSTER_ROAD"],
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(7431, 720, 0)", 
	"END_POS		= D3DXVECTOR3(9245, 720, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 25, 
	ENABLE			= TRUE,
	LINE_TYPE 		= LINE_TYPE["LT_JUMP_UP_REL"],
	POTAL_GROUP		= 0, 
	STOP_FACTOR		= 1, 
	FOOT_DUST_NAME	= "", 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	SPEED			= 0, 
	"START_POS		= D3DXVECTOR3(9692, 1440, 0)", 
	"END_POS		= D3DXVECTOR3(10124, 1440, 0)",
	JUMP_SPEED_X = 2000,  -- 요고
 	JUMP_SPEED_Y = 2000,  -- 요고 
}

