-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

INIT_SYSTEM = 
{
	UNIT_WIDTH		= 10.0,
	UNIT_HEIGHT		= 10.0,
	
	UNIT_SCALE		= 1.7,
}

INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	},
	
	READY_XSKIN_MESH = 
	{	    
	},
	
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_Nasod_Maker.x",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 0,
	RUN_SPEED			= 0,
	JUMP_SPEED			= 0,
	DASH_JUMP_SPEED		= 0,
}

INIT_COMPONENT = 
{
}

INIT_STATE = 
{
	{ STATE_NAME = "NASOD_MAKER_START",		},
	{ STATE_NAME = "NASOD_MAKER_WAIT",		},
	
	{ STATE_NAME = "NASOD_MAKER_RESPAWN_READY",	LUA_STATE_START_FUNC = "NASOD_MAKER_RESPAWN_READY_STATE_START", 
												STATE_COOL_TIME = 5, },
	{ STATE_NAME = "NASOD_MAKER_RESPAWN",		LUA_STATE_START_FUNC = "NASOD_MAKER_RESPAWN_STATE_START",},
	
	{ STATE_NAME = "NASOD_MAKER_DYING",		},
	
	START_STATE					= "NASOD_MAKER_START",
	WAIT_STATE					= "NASOD_MAKER_WAIT",
	
	DYING_LAND_FRONT			= "NASOD_MAKER_DYING",
	DYING_LAND_BACK				= "NASOD_MAKER_DYING",
	DYING_SKY					= "NASOD_MAKER_DYING",

	REVENGE_ATTACK				= "",	
}


INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_NEAR_FIRST"],
		TARGET_INTERVAL				= 0.5,		-- sec
		TARGET_NEAR_RANGE			= 500,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 1000,		-- cm
		TARGET_LOST_RANGE			= 1500,		-- cm
		TARGET_SUCCESS_RATE			= 100,		-- %
		ATTACK_TARGET_RATE			= 0,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 50,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},
}

NASOD_MAKER_START = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	RIGHT                       = TRUE,
	NEVER_MOVE					= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],			"NASOD_MAKER_WAIT",	},
	},
}


NASOD_MAKER_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	RIGHT                       = TRUE,
	NEVER_MOVE					= TRUE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	EVENT_INTERVAL_TIME0		= 1,	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"NASOD_MAKER_RESPAWN_READY",	"CT_NASOD_MAKER_RESPAWN_READY",	},
	},
	
	CT_NASOD_MAKER_RESPAWN_READY = 
	{
		EVENT_INTERVAL_ID		= 0,
		DISTANCE_TO_TARGET_NEAR = 600,
		IS_ANOTHER_TEAM			= TRUE,
	},
}
NASOD_MAKER_RESPAWN_READY =
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	INVINCIBLE					= { 0, 100, }, 	

	RIGHT                       = TRUE,
	NEVER_MOVE					= TRUE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	EVENT_INTERVAL_TIME0		= 1,	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"NASOD_MAKER_RESPAWN",	"CT_NASOD_MAKER_RESPAWN",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"NASOD_MAKER_WAIT",	"CT_NASOD_MAKER_WAIT",	},
	},
	
	CT_NASOD_MAKER_RESPAWN = 
	{
		EVENT_INTERVAL_ID		= 0,
		STATE_TIME_OVER			= 1.5,
		DISTANCE_TO_TARGET_NEAR = 600,
		IS_ANOTHER_TEAM			= TRUE,
	},
	CT_NASOD_MAKER_WAIT = 
	{
		EVENT_INTERVAL_ID		= 0,
		STATE_TIME_OVER			= 2,
	},
}

function NASOD_MAKER_RESPAWN_READY_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	--컵 케익 포장 지시 확인 플래그
	pNPCUnit:SetFlag_LUA( 0, false )
	
	local pNPC = pX2Game:GetNearestNpcInSpecificRangeByNpcId_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_VALENTINE_POISON_CUP_CAKE"], 700 )
	if nil ~= pNPC then
		pNPC:StateChange_LUA( "POISON_CUP_CAKE_PACKING", true )
		pNPCUnit:SetFlag_LUA( 0, true )
	end
end

NASOD_MAKER_RESPAWN = 
{
	ANIM_NAME					= "Making",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 	
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	

    SOUND_PLAY0			= { 0.372, "Nasod_Maker1.ogg" },
    SOUND_PLAY1			= { 0.743, "Nasod_Maker2.ogg" },
    SOUND_PLAY2			= { 0.850, "Nasod_Maker3.ogg" },
    SOUND_PLAY3			= { 1.455, "Nasod_Maker4.ogg" },
    SOUND_PLAY4			= { 2.289, "Nasod_Maker3.ogg" },
    SOUND_PLAY5			= { 2.295, "Nasod_Maker5.ogg" },
    SOUND_PLAY6			= { 2.784, "Nasod_Maker6.ogg" },

	RIGHT                       = TRUE,
	NEVER_MOVE					= TRUE,
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"NASOD_MAKER_WAIT",	},
	},
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,			
		{ FALSE, 0.8, "Flare_Nasod_Maker_Making01", FALSE, "", TRUE, FALSE, 0, 0, -100, },
		{ FALSE, 2.17, "Flare_Nasod_Maker_Making01", FALSE, "", TRUE, FALSE, 0, 0, 0, },
		{ FALSE, 0.01, "Flare_Nasod_Maker_Making02", FALSE, "", TRUE, FALSE, 130, 0, -30, },
		{ FALSE, 0.01, "Flare_Nasod_Maker_Making02", FALSE, "", TRUE, FALSE, 130, 0, -30, },
		{ FALSE, 0.01, "Flare_Nasod_Maker_Making02", FALSE, "", TRUE, FALSE, 0, 0, -30, },
		{ FALSE, 0.76, "Steam_Nasod_Maker_Making03", FALSE, "", TRUE, FALSE, 0, 0, -130, },

		{ FALSE, 2.2, "Steam_Nasod_Maker_Making03", FALSE, "", TRUE, FALSE, 0, 0, -130, },
		{ TRUE, 1.266, "LED_Nasod_Maker_Making04", FALSE, "Dummy01", TRUE, FALSE, 0, 0, 0, },
		{ TRUE, 1.433, "LED_Nasod_Maker_Making05", FALSE, "Dummy01", TRUE, FALSE, 0, 0, 0, },
		{ TRUE, 1.9, "LED_Nasod_Maker_Making06", FALSE, "Dummy01", TRUE, FALSE, 0, 0, 0, },
		
	},	
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Valentine_Posion_Cup_Cake", 2.5,
	},
}

function NASOD_MAKER_RESPAWN_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	--컵 케익 포장 지시 확인 플래그
	if true == pNPCUnit:GetFlag_LUA( 0 ) then	
		if 2 > pX2Game:GetNPCUnitNumByNPCID(NPC_UNIT_ID["NUI_VALENTINE_POISON_CUP_CAKE"]) then	
			local vSummonPos = pX2Game:GetLineMap():GetStartPosition( 2 )
			pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_VALENTINE_POISON_CUP_CAKE"], pNPCUnit:GetHardLevel(), true, vSummonPos, false, 0.1, false  )
		end
	end
end

		
NASOD_MAKER_DYING = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	RIGHT                       = TRUE,
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}