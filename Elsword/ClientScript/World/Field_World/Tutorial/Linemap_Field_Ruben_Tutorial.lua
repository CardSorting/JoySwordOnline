

g_pLineMap:SetLandHeight( 0 )




-- RED, BLUE, TEAM START POS
g_pLineMap:SetTeamStartPos( true, D3DXVECTOR3( -501.067, 44, 0 ), true, 0 )




-- NPC (or else) START POS
g_pLineMap:AddStartPos( 1, D3DXVECTOR3( -58.3559, 0, 0 ), true, 2 )
g_pLineMap:AddStartPos( 2, D3DXVECTOR3( 108.295, 0, 0 ), true, 2 )
g_pLineMap:AddStartPos( 3, D3DXVECTOR3( 268.208, 0, 0 ), true, 3 )
g_pLineMap:AddStartPos( 4, D3DXVECTOR3( 405.911, 0, 0 ), true, 4 )
g_pLineMap:AddStartPos( 5, D3DXVECTOR3( 593.063, 0, 0 ), true, 4 )
g_pLineMap:AddStartPos( 6, D3DXVECTOR3( 823.899, 0, 0 ), true, 4 )
g_pLineMap:AddStartPos( 7, D3DXVECTOR3( 954.838, 0, 0 ), true, 5 )
g_pLineMap:AddStartPos( 8, D3DXVECTOR3( 1042.31, 0, 0 ), true, 5 )
g_pLineMap:AddStartPos( 9, D3DXVECTOR3( 1311.74, 0, 0 ), true, 5 )
g_pLineMap:AddStartPos( 10, D3DXVECTOR3( 1471.27, 0, 0 ), true, 5 )
g_pLineMap:AddStartPos( 11, D3DXVECTOR3( 1642.4, 0, 0 ), true, 6 )
g_pLineMap:AddStartPos( 12, D3DXVECTOR3( 1801.23, 0, 0 ), true, 7 )
g_pLineMap:AddStartPos( 13, D3DXVECTOR3( 1955.9, 0, 0 ), true, 7 )
g_pLineMap:AddStartPos( 14, D3DXVECTOR3( 2118.13, 0, 0 ), true, 7 )
g_pLineMap:AddStartPos( 15, D3DXVECTOR3( 2274.76, 0, 0 ), true, 7 )
g_pLineMap:AddStartPos( 16, D3DXVECTOR3( 2460.45, 0, 0 ), true, 7 )
g_pLineMap:AddStartPos( 17, D3DXVECTOR3( 2649.42, 0, 0 ), true, 7 )
g_pLineMap:AddStartPos( 18, D3DXVECTOR3( 2711.01, 240, 0 ), true, 8 )
g_pLineMap:AddStartPos( 19, D3DXVECTOR3( 2885.37, 240, 0 ), true, 8 )
g_pLineMap:AddStartPos( 20, D3DXVECTOR3( 3054.81, 240, 0 ), true, 8 )
g_pLineMap:AddStartPos( 21, D3DXVECTOR3( 3225.35, 240, 0 ), true, 8 )
g_pLineMap:AddStartPos( 22, D3DXVECTOR3( 3395.79, 240, 0 ), true, 8 )
g_pLineMap:AddStartPos( 23, D3DXVECTOR3( 3589.03, 255.484, 0 ), true, 9 )
g_pLineMap:AddStartPos( 24, D3DXVECTOR3( 3737.58, 280, 0 ), true, 10 )
g_pLineMap:AddStartPos( 25, D3DXVECTOR3( 3870.84, 280, 0 ), true, 11 )






-- LINE DATA -- 
g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 0, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= 1, 
	LINE_SET		= 0, 
	CAMERA_INDEX	= 0, 
	"START_POS		= D3DXVECTOR3(-654, 44, 0)", 
	"END_POS		= D3DXVECTOR3(-212, 44, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 1, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 0, 
	NEXT_LINE		= 2, 
	LINE_SET		= 0, 
	CAMERA_INDEX	= 0, 
	"START_POS		= D3DXVECTOR3(-212, 44, 0)", 
	"END_POS		= D3DXVECTOR3(-98, 0, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 2, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 1, 
	NEXT_LINE		= 3, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(-98, 0, 0)", 
	"END_POS		= D3DXVECTOR3(214, 0, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 3, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 2, 
	NEXT_LINE		= 4, 
	LINE_SET		= 0, 
	TRIGGER_ID		= 0, 
	TRIGGER_ON_LINE	= TRUE,
	"START_POS		= D3DXVECTOR3(214, 0, 0)", 
	"END_POS		= D3DXVECTOR3(366, 0, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 4, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 3, 
	NEXT_LINE		= 5, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(366, 0, 0)", 
	"END_POS		= D3DXVECTOR3(913, 0, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 5, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 4, 
	NEXT_LINE		= 6, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(913, 0, 0)", 
	"END_POS		= D3DXVECTOR3(1544, 0, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 6, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 5, 
	NEXT_LINE		= 7, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1544, 0, 0)", 
	"END_POS		= D3DXVECTOR3(1742, 0, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 7, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 6, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(1742, 0, 0)", 
	"END_POS		= D3DXVECTOR3(2659, 0, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 8, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= -1, 
	NEXT_LINE		= 9, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(2659, 240, 0)", 
	"END_POS		= D3DXVECTOR3(3560, 240, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 9, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 8, 
	NEXT_LINE		= 10, 
	LINE_SET		= 0, 
	"START_POS		= D3DXVECTOR3(3560, 240, 0)", 
	"END_POS		= D3DXVECTOR3(3635, 280, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 10, 
	LINE_TYPE 		= LINE_TYPE["LT_NORMAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 9, 
	NEXT_LINE		= 11, 
	LINE_SET		= 0, 
	CAMERA_INDEX	= 1, 
	"START_POS		= D3DXVECTOR3(3635, 280, 0)", 
	"END_POS		= D3DXVECTOR3(3837, 280, 0)", 
}

g_pLineMap:AddLine_LUA
{
	LINE_NUM		= 11, 
	LINE_TYPE 		= LINE_TYPE["LT_POTAL"], 
	POTAL_GROUP		= 0, 
	BEFORE_LINE		= 10, 
	NEXT_LINE		= -1, 
	LINE_SET		= 0, 
	CAMERA_INDEX	= 1, 
	"START_POS		= D3DXVECTOR3(3837, 280, 0)", 
	"END_POS		= D3DXVECTOR3(3950, 280, 0)", 
}


-- CAMERA DATA 

g_pLineMap:AddCameraData_LUA
{
	"EYE_POS	= D3DXVECTOR3(-29.59, 364.18, -1220.64)", 
	"LOOKAT_POS	= D3DXVECTOR3(-1429.69, -189.27, 3263.18)", 
}

g_pLineMap:AddCameraData_LUA
{
	"EYE_POS	= D3DXVECTOR3(3198.53, 537.64, -1424.2)", 
	"LOOKAT_POS	= D3DXVECTOR3(5081.03, 319.06, 2905.46)", 
}

g_pLineMap:AddTrigger_LUA
{
	TRIGGER_ID		= 0,
	TRIGGER_LOOP	= TRUE,
	TRIGGER_DATA0 =
	{
		TRIGGER_DATA_MESH0 =
		{
			TRIGGER_ACTION = TRIGGER_MESH_ACTION_TYPE["TAT_MESH_CHANGE_ANIM"],
			DELAY_TIME = 0,
			MESH_NAME = "TRIGGER_FIELD_RUBEN_TUTORIAL_GRASS.X",
			ANIM_NAME = "Move",
			PLAY_TYPE = 1,
		},
		TRIGGER_DATA_ETC0 =
		{
			TRIGGER_ACTION = TRIGGER_ETC_ACTION_TYPE["TAT_ETC_NONE"],
			DELAY_TIME = 0,
		},
	},
}
