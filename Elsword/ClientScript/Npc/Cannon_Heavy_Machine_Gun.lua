-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



INIT_SYSTEM = 
{
	UNIT_WIDTH		= 300.0,
	UNIT_HEIGHT		= 180.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
    UNIT_SCALE      = 0.7,
}

                                                                                 
INIT_DEVICE = 
{
	READY_TEXTURE = 
	{		
	    "Steam_BP.dds",
	    "Nasod_Bee_Bullet01.tga",
	},
	
	READY_SOUND = 
	{
	  "BunkerCannon_Attack1.ogg", 
	  "BunkerCannon_Attack1_2.ogg", 
	  "BunkerCannon_Attack2_MoveUp.ogg", 
	  "BunkerCannon_Attack2.ogg", 
	  "BunkerCannon_Attack2_MoveDown.ogg", 
	  "BunkerCannon_Attack3_MoveUp.ogg", 
	  "BunkerCannon_Attack3_Attack3.ogg", 
	  "BunkerCannon_Attack3_MoveDown.ogg", 
	  "BunkerCannon_Broken.ogg", 
	  "MachineGun_Bullet.ogg",
	  
	},
	
		
	READY_XMESH = 
	{
	},
	
	READY_XSKIN_MESH = 
	{
	    "Nasod_Bullet01.X",
	},
	
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_BunkerCannon.x",
}


INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 400,
	RUN_SPEED			= 600,
	JUMP_SPEED			= 1400,
	DASH_JUMP_SPEED		= 1600,
}


INIT_COMPONENT = 
{
	MP_CHANGE_RATE			= 1,
	MP_CHARGE_RATE			= 130,
	
	USE_SLASH_TRACE			= FALSE,
	
	SHADOW_SIZE				= 200,
	SHADOW_FILE_NAME		= "shadow.dds",
	
	SMALL_HP_BAR_BLUE		= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED		= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW 	= "Small_HP_bar_Yellow.TGA",
	
	--QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	--EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",	
	--HEAD_BONE_NAME			= "Cannon_Head",
	
	HYPER_MODE_COUNT		= 0,
	MAX_HYPER_MODE_TIME		= 30,

	HITTED_TYPE				= HITTED_TYPE["HTD_METAL"],
	
	FALL_DOWN				= FALSE,
	
	DAMAGE_DOWN         = FALSE,
}


INIT_STATE = 
{
	{ STATE_NAME = "CANNON_HEAVY_MACHINE_GUN_START",			LUA_FRAME_MOVE_FUNC = "CANNON_HEAVY_MACHINE_GUN_START_FRAME_MOVE",
																LUA_STATE_END_FUNC = "CANNON_HEAVY_MACHINE_GUN_START_STATE_END",		},
																
	{ STATE_NAME = "CANNON_HEAVY_MACHINE_GUN_WAIT",				LUA_FRAME_MOVE_FUNC = "CANNON_HEAVY_MACHINE_GUN_WAIT_FRAME_MOVE",   },
	{ STATE_NAME = "CANNON_HEAVY_MACHINE_GUN_ATTACK_1",			LUA_STATE_START_FUNC = "CANNON_HEAVY_MACHINE_GUN_ATTACK_STATE_START",
	                                                            LUA_FRAME_MOVE_FUNC = "CANNON_HEAVY_MACHINE_GUN_ATTACK_1_FRAME_MOVE",	    STATE_COOL_TIME = 1},
																
	{ STATE_NAME = "CANNON_HEAVY_MACHINE_GUN_ATTACK_2",			LUA_STATE_START_FUNC = "CANNON_HEAVY_MACHINE_GUN_ATTACK_STATE_START",
	                                                            LUA_FRAME_MOVE_FUNC = "CANNON_HEAVY_MACHINE_GUN_ATTACK_2_FRAME_MOVE",   	STATE_COOL_TIME = 1},
																
	{ STATE_NAME = "CANNON_HEAVY_MACHINE_GUN_ATTACK_3",			LUA_STATE_START_FUNC = "CANNON_HEAVY_MACHINE_GUN_ATTACK_STATE_START",
	                                                            LUA_FRAME_MOVE_FUNC = "CANNON_HEAVY_MACHINE_GUN_ATTACK_3_FRAME_MOVE",       STATE_COOL_TIME = 1},
																
	
	--리액션 관련
	{ STATE_NAME = "CANNON_HEAVY_MACHINE_GUN_DAMAGE_SMALL",		LUA_FRAME_MOVE_FUNC = "CANNON_HEAVY_MACHINE_GUN_DAMAGE_SMALL_FRAME_MOVE"				},
	
	
	{ STATE_NAME = "CANNON_HEAVY_MACHINE_GUN_DYING_LAND_FRONT",	LUA_STATE_START_FUNC = "CANNON_HEAVY_MACHINE_GUN_DYING_LAND_STATE_START"				},
	
	                                                                                    
	
	START_STATE					= "CANNON_HEAVY_MACHINE_GUN_START",
	WAIT_STATE					= "CANNON_HEAVY_MACHINE_GUN_WAIT",
	
	
	SMALL_DAMAGE_LAND_FRONT		= "CANNON_HEAVY_MACHINE_GUN_DAMAGE_SMALL",
	SMALL_DAMAGE_LAND_BACK		= "CANNON_HEAVY_MACHINE_GUN_DAMAGE_SMALL",
	BIG_DAMAGE_LAND_FRONT		= "CANNON_HEAVY_MACHINE_GUN_DAMAGE_SMALL",
	BIG_DAMAGE_LAND_BACK		= "CANNON_HEAVY_MACHINE_GUN_DAMAGE_SMALL",
	DOWN_DAMAGE_LAND_FRONT		= "CANNON_HEAVY_MACHINE_GUN_DAMAGE_SMALL",
	DOWN_DAMAGE_LAND_BACK		= "CANNON_HEAVY_MACHINE_GUN_DAMAGE_SMALL",
	FLY_DAMAGE_FRONT			= "CANNON_HEAVY_MACHINE_GUN_DAMAGE_SMALL",
	FLY_DAMAGE_BACK				= "CANNON_HEAVY_MACHINE_GUN_DAMAGE_SMALL",
	SMALL_DAMAGE_AIR			= "CANNON_HEAVY_MACHINE_GUN_DAMAGE_SMALL",	
	BIG_DAMAGE_AIR				= "CANNON_HEAVY_MACHINE_GUN_DAMAGE_SMALL",
	DOWN_DAMAGE_AIR				= "CANNON_HEAVY_MACHINE_GUN_DAMAGE_SMALL",
	UP_DAMAGE					= "CANNON_HEAVY_MACHINE_GUN_DAMAGE_SMALL",
	DAMAGE_REVENGE				= "CANNON_HEAVY_MACHINE_GUN_DAMAGE_SMALL",
	
	DYING_LAND_FRONT			= "CANNON_HEAVY_MACHINE_GUN_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "CANNON_HEAVY_MACHINE_GUN_DYING_LAND_FRONT",
	DYING_SKY					= "CANNON_HEAVY_MACHINE_GUN_DYING_LAND_FRONT",

	REVENGE_ATTACK				= "",	
}



INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 3,		-- sec
		TARGET_NEAR_RANGE			= 1000,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 1200,		-- cm
		TARGET_LOST_RANGE			= 1300,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --90,		-- %
		ATTACK_TARGET_RATE			= 100, -- 30,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, -- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 600,
		DEST_GAP			= 150,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 160,
		
		DIR_CHANGE_INTERVAL = 0.7,
		
		WALK_INTERVAL		= 3,
		NEAR_WALK_RATE		= 100,   --  70,
		FAR_WALK_RATE		= 100,   -- 30,
		
		JUMP_INTERVAL		= 5,
		UP_JUMP_RATE		= 100, -- 40,
		UP_DOWN_RATE		= 20,
		DOWN_JUMP_RATE		= 100,    --  20,
		DOWN_DOWN_RATE		= 40,
		
		LINE_END_RANGE		= 80,	-- cm
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 0,		
	},

}


CANNON_HEAVY_MACHINE_GUN_START = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,	
	NEVER_MOVE					= TRUE,

		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"CANNON_HEAVY_MACHINE_GUN_WAIT",		"CT_CANNON_HEAVY_MACHINE_GUN_WAIT"				},
	},
	
	CT_CANNON_HEAVY_MACHINE_GUN_WAIT = 
	{
		STATE_TIME_OVER			= 1,
	},
}


CANNON_HEAVY_MACHINE_GUN_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	NEVER_MOVE					= TRUE,
	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	PASSIVE_SPEED_X				= 0,
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{		
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"CANNON_HEAVY_MACHINE_GUN_ATTACK_2",	"CT_CANNON_HEAVY_MACHINE_GUN_ATTACK_2",	STATE_COOL_TIME = 10, },
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"CANNON_HEAVY_MACHINE_GUN_ATTACK_3",	"CT_CANNON_HEAVY_MACHINE_GUN_ATTACK_3",	STATE_COOL_TIME = 10, },
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"CANNON_HEAVY_MACHINE_GUN_ATTACK_1",	"CT_CANNON_HEAVY_MACHINE_GUN_ATTACK_1",	STATE_COOL_TIME = 10, },		
	},
	
	CT_CANNON_HEAVY_MACHINE_GUN_ATTACK_1 = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		SAME_LINE_WITH_TARGET       = true,
		STATE_TIME_OVER             = 3,
		RATE						= 100,
	},
	
	CT_CANNON_HEAVY_MACHINE_GUN_ATTACK_2 = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		STATE_TIME_OVER             = 3,
		RATE						= 100,
	},
	
	CT_CANNON_HEAVY_MACHINE_GUN_ATTACK_3 = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		STATE_TIME_OVER             = 3,
		RATE						= 100,
	},


}




CANNON_HEAVY_MACHINE_GUN_ATTACK_1 = 
{
	ANIM_NAME					= "Attack1",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	ANIM_WAIT_TIME				= 1,
	--MIND_FLAG					= MIND_FLAG["MF_STAND_UP_ATTACK"],
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	NEVER_MOVE					= TRUE,

	
    SOUND_PLAY0			= { 0.495, "BunkerCannon_Attack1.ogg" },
    SOUND_PLAY1			= { 0.741, "BunkerCannon_Attack1_2.ogg" },
    SOUND_PLAY2			= { 1.010, "BunkerCannon_Attack1.ogg" },

	SPEED_X						= 0,
	SPEED_Y						= 0,	

	IMMADIATE_PACKET_SEND		= TRUE,
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CANNON_HEAVY_MACHINE_GUN_WAIT",						},	
	},
	
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ TRUE, 0.433, "Light_GunFire01", FALSE, "Dummy2_Cannon", TRUE, FALSE, 0, 0, 0, TRUE,  },
		{ TRUE, 0.666, "Light_GunFire01", FALSE, "Dummy1_Cannon", TRUE, FALSE, 0, 0, 0, TRUE,  },
		{ TRUE, 0.933, "Light_GunFire01", FALSE, "Dummy2_Cannon", TRUE, FALSE, 0, 0, 0, TRUE,  },
		
		{ TRUE, 0.67, "Flare_BunKerCannon_Attack01", FALSE, "Dummy2_Cannon", TRUE, FALSE, -70, 0, 0, TRUE, },
		{ TRUE, 0.933, "Flare_BunKerCannon_Attack01", FALSE, "Dummy1_Cannon", TRUE, FALSE, -70, 0, 0, TRUE, },
	},
}




CANNON_HEAVY_MACHINE_GUN_ATTACK_2 = 
{
	ANIM_NAME					= "Attack2",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	ANIM_WAIT_TIME				= 1,
	--MIND_FLAG					= MIND_FLAG["MF_STAND_UP_ATTACK"],
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	NEVER_MOVE					= TRUE,

    SOUND_PLAY0			= { 0.169, "BunkerCannon_Attack3_MoveUp.ogg" },
    SOUND_PLAY1			= { 0.513, "BunkerCannon_Attack1.ogg" },
    SOUND_PLAY2			= { 0.515, "BunkerCannon_Attack1_2.ogg" },
    SOUND_PLAY3			= { 0.648, "BunkerCannon_Attack1.ogg" },
    SOUND_PLAY4			= { 0.649, "BunkerCannon_Attack1_2.ogg" },
    SOUND_PLAY5			= { 0.775, "BunkerCannon_Attack1.ogg" },
    SOUND_PLAY6			= { 0.777, "BunkerCannon_Attack1_2.ogg" },
    SOUND_PLAY7			= { 1.183, "BunkerCannon_Attack3_MoveDown.ogg" },

	
	SPEED_X						= 0,
	SPEED_Y						= 0,	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
		
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CANNON_HEAVY_MACHINE_GUN_WAIT",					},	
	},
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ TRUE, 0.433, "Light_GunFire01", FALSE, "Dummy2_Cannon", TRUE, FALSE, 0, 0, 0, TRUE,  },
		{ TRUE, 0.560, "Light_GunFire01", FALSE, "Dummy2_Cannon", TRUE, FALSE, 0, 0, 0, TRUE,  },
		{ TRUE, 0.700, "Light_GunFire01", FALSE, "Dummy2_Cannon", TRUE, FALSE, 0, 0, 0, TRUE,  },
		
		{ TRUE, 0.433, "Flare_BunKerCannon_Attack01", FALSE, "Dummy2_Cannon", TRUE, FALSE, -70, 0, 0, TRUE, },
		{ TRUE, 0.560, "Flare_BunKerCannon_Attack01", FALSE, "Dummy1_Cannon", TRUE, FALSE, -70, 0, 0, TRUE, },
		{ TRUE, 0.700, "Flare_BunKerCannon_Attack01", FALSE, "Dummy2_Cannon", TRUE, FALSE, -70, 0, 0, TRUE, },
		
		{ TRUE, 0.433, "Light_GunFire01", FALSE, "Dummy1_Cannon", TRUE, FALSE, 0, 0, 0, TRUE, 0, 0, 30, },
		{ TRUE, 0.560, "Light_GunFire01", FALSE, "Dummy1_Cannon", TRUE, FALSE, 0, 0, 0, TRUE, 0, 0, 30, },
		{ TRUE, 0.700, "Light_GunFire01", FALSE, "Dummy1_Cannon", TRUE, FALSE, 0, 0, 0, TRUE, 0, 0, 30, },
	},
}




CANNON_HEAVY_MACHINE_GUN_ATTACK_3 =
{
	ANIM_NAME					= "Attack3",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	ANIM_WAIT_TIME				= 1,
	--MIND_FLAG					= MIND_FLAG["MF_STAND_UP_ATTACK"],
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	NEVER_MOVE					= TRUE,


    SOUND_PLAY0			= { 0.483, "BunkerCannon_Attack1.ogg" },
    SOUND_PLAY1			= { 0.485, "BunkerCannon_Attack1_2.ogg" },
    SOUND_PLAY2			= { 0.594, "BunkerCannon_Attack1.ogg" },
    SOUND_PLAY3			= { 0.596, "BunkerCannon_Attack1_2.ogg" },
    SOUND_PLAY4			= { 0.731, "BunkerCannon_Attack1.ogg" },
    SOUND_PLAY5			= { 0.733, "BunkerCannon_Attack1_2.ogg" },
    SOUND_PLAY6			= { 0.984, "BunkerCannon_Attack3_MoveUp.ogg" },
    SOUND_PLAY7			= { 1.444, "BunkerCannon_Attack1.ogg" },
    SOUND_PLAY8			= { 1.446, "BunkerCannon_Attack1_2.ogg" },
    SOUND_PLAY9			= { 1.571, "BunkerCannon_Attack1.ogg" },
    SOUND_PLAY10		= { 1.573, "BunkerCannon_Attack1_2.ogg" },
    SOUND_PLAY11		= { 1.706, "BunkerCannon_Attack1.ogg" },
    SOUND_PLAY12		= { 1.708, "BunkerCannon_Attack1_2.ogg" },
    SOUND_PLAY13		= { 1.917, "BunkerCannon_Attack3_MoveDown.ogg" },
    SOUND_PLAY14		= { 2.354, "BunkerCannon_Attack1.ogg" },
    SOUND_PLAY15		= { 2.356, "BunkerCannon_Attack1_2.ogg" },
    SOUND_PLAY16		= { 2.508, "BunkerCannon_Attack1.ogg" },
    SOUND_PLAY17		= { 2.510, "BunkerCannon_Attack1_2.ogg" },
    SOUND_PLAY18		= { 2.644, "BunkerCannon_Attack1.ogg" },
    SOUND_PLAY19		= { 2.646, "BunkerCannon_Attack1_2.ogg" },

    
	SPEED_X						= 0,
	SPEED_Y						= 0,	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CANNON_HEAVY_MACHINE_GUN_WAIT",					},
	},
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ TRUE, 0.433, "Light_GunFire01", FALSE, "Dummy2_Cannon", TRUE, FALSE, 0, 0, 0, TRUE,  },
		{ TRUE, 0.560, "Light_GunFire01", FALSE, "Dummy2_Cannon", TRUE, FALSE, 0, 0, 0, TRUE,  },
		{ TRUE, 0.666, "Light_GunFire01", FALSE, "Dummy2_Cannon", TRUE, FALSE, 0, 0, 0, TRUE,  },
	
		{ TRUE, 1.333, "Light_GunFire01", FALSE, "Dummy2_Cannon", TRUE, FALSE, 0, 0, 0, TRUE, 0, 0, 30, },
		{ TRUE, 1.466, "Light_GunFire01", FALSE, "Dummy2_Cannon", TRUE, FALSE, 0, 0, 0, TRUE, 0, 0, 30, },
		{ TRUE, 1.600, "Light_GunFire01", FALSE, "Dummy2_Cannon", TRUE, FALSE, 0, 0, 0, TRUE, 0, 0, 30, },
	
		{ TRUE, 2.300, "Light_GunFire01", FALSE, "Dummy2_Cannon", TRUE, FALSE, 0, 0, 0, TRUE,  },
		{ TRUE, 2.433, "Light_GunFire01", FALSE, "Dummy2_Cannon", TRUE, FALSE, 0, 0, 0, TRUE,  },
		{ TRUE, 2.566, "Light_GunFire01", FALSE, "Dummy2_Cannon", TRUE, FALSE, 0, 0, 0, TRUE,  },
		
		{ TRUE, 0.433, "Light_GunFire01", FALSE, "Dummy1_Cannon", TRUE, FALSE, 0, 0, 0, TRUE,  },
		{ TRUE, 0.560, "Light_GunFire01", FALSE, "Dummy1_Cannon", TRUE, FALSE, 0, 0, 0, TRUE,  },
		{ TRUE, 0.666, "Light_GunFire01", FALSE, "Dummy1_Cannon", TRUE, FALSE, 0, 0, 0, TRUE,  },
	
		{ TRUE, 1.333, "Light_GunFire01", FALSE, "Dummy1_Cannon", TRUE, FALSE, 0, 0, 0, TRUE, 0, 0, 30, },
		{ TRUE, 1.466, "Light_GunFire01", FALSE, "Dummy1_Cannon", TRUE, FALSE, 0, 0, 0, TRUE, 0, 0, 30, },
		{ TRUE, 1.600, "Light_GunFire01", FALSE, "Dummy1_Cannon", TRUE, FALSE, 0, 0, 0, TRUE, 0, 0, 30, },
	
		{ TRUE, 2.300, "Light_GunFire01", FALSE, "Dummy1_Cannon", TRUE, FALSE, 0, 0, 0, TRUE,  },
		{ TRUE, 2.433, "Light_GunFire01", FALSE, "Dummy1_Cannon", TRUE, FALSE, 0, 0, 0, TRUE,  },
		{ TRUE, 2.566, "Light_GunFire01", FALSE, "Dummy1_Cannon", TRUE, FALSE, 0, 0, 0, TRUE,  },
	
		{ TRUE, 0.400, "Flare_BunKerCannon_Attack01", FALSE, "Dummy2_Cannon", TRUE, FALSE, -50, 0, 0, TRUE, },
		{ TRUE, 0.530, "Flare_BunKerCannon_Attack01", FALSE, "Dummy2_Cannon", TRUE, FALSE, -50, 0, 0, TRUE, },
		{ TRUE, 0.670, "Flare_BunKerCannon_Attack01", FALSE, "Dummy2_Cannon", TRUE, FALSE, -50, 0, 0, TRUE, },
		
		{ TRUE, 1.330, "Flare_BunKerCannon_Attack01", FALSE, "Dummy2_Cannon", TRUE, FALSE, -50, -25, 0, TRUE, 0, 0, 30, },
		{ TRUE, 1.470, "Flare_BunKerCannon_Attack01", FALSE, "Dummy2_Cannon", TRUE, FALSE, -50, -25, 0, TRUE, 0, 0, 30, },
		{ TRUE, 1.600, "Flare_BunKerCannon_Attack01", FALSE, "Dummy2_Cannon", TRUE, FALSE, -50, -25, 0, TRUE, 0, 0, 30, },

		{ TRUE, 2.300, "Flare_BunKerCannon_Attack01", FALSE, "Dummy2_Cannon", TRUE, FALSE, -50, 0, 0, TRUE, },
		{ TRUE, 2.433, "Flare_BunKerCannon_Attack01", FALSE, "Dummy2_Cannon", TRUE, FALSE, -50, 0, 0, TRUE, },
		{ TRUE, 2.566, "Flare_BunKerCannon_Attack01", FALSE, "Dummy2_Cannon", TRUE, FALSE, -50, 0, 0, TRUE, },
		
	},
}


CANNON_HEAVY_MACHINE_GUN_DAMAGE_SMALL = 
{
	ANIM_NAME					= "Wait",		
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	NEVER_MOVE					= TRUE,

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CANNON_HEAVY_MACHINE_GUN_WAIT",												},
	},
}


CANNON_HEAVY_MACHINE_GUN_DYING_LAND_FRONT = 
{
	ANIM_NAME					= "Broken",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= TRUE,

	INVINCIBLE					= { 0, 100, }, 		

	
    SOUND_PLAY0			= { 0.191, "BunkerCannon_Broken.ogg" },

	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	NEVER_MOVE					= TRUE,
	
	
	DYING_END					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
}
	



------------------------------------------------------------------------------
function CANNON_HEAVY_MACHINE_GUN_START_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )



end



------------------------------------------------------------------------------
function CANNON_HEAVY_MACHINE_GUN_START_STATE_END( pKTDXApp, pX2Game, pNPCUnit )



end





------------------------------------------------------------------------------
function CANNON_HEAVY_MACHINE_GUN_ATTACK_1_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    if pNPCUnit:GetNowHP() <= pNPCUnit:GetMaxHP() * 0.3 then
        -- 연기펄펄        
        pMinorParticle = pX2Game:GetMinorParticle()
        if pMinorParticle ~= nil then
    
            vpos = pNPCUnit:GetBonePos_LUA("Cannon_Head");
            
            if pNPCUnit:GetIsRight() then
                vpos.x = vpos.x + 120
            else                
                vpos.x = vpos.x - 120
            end     
            vpos.y = vpos.y - 20
            
            pParticle = pNPCUnit:GetMinorParticle_LUA( 0 )
	        if pParticle == nil then
	            particle = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Smoke_BCMI_DeathWait01", vpos, D3DXVECTOR2(100,100), D3DXVECTOR2(-1,-1) )    	
	            if particle ~= nil then 
					pNPCUnit:SetMinorParticle_LUA(0, particle:GetHandle() )
				end 
	        end
	    end
    else
        -- 연기 뚝!
        pParticle = pNPCUnit:GetMinorParticle_LUA( 0 )
	    if pParticle ~= nil then
		    pParticle:SetAutoDie()
		    pNPCUnit:ClearMinorParticle_LUA( 0 )
	    end
    end
    
	if pNPCUnit:AnimEventTimer_LUA( 0.433 ) or		
		pNPCUnit:AnimEventTimer_LUA( 0.933 ) then
	
		pDamageEffect = pX2Game:GetDamageEffect()		
	    vLandPos = pNPCUnit:GetLandPosition_LUA()
	    	
	    vBonePos2 = pNPCUnit:GetBonePos_LUA( "Dummy2_Cannon" )	
                
        if pDamageEffect ~= nil then       
            pDamageEffect:CreateInstance_LUA( pNPCUnit, "MACHINE_GUN_STRAIGHT", vBonePos2, vLandPos.y )            
        end            
	
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 0.666 ) then
	    
		pDamageEffect = pX2Game:GetDamageEffect()		
	    vLandPos = pNPCUnit:GetLandPosition_LUA()
	    vBonePos1 = pNPCUnit:GetBonePos_LUA( "Dummy1_Cannon" )	
	    
	    if pDamageEffect ~= nil then       
            pDamageEffect:CreateInstance_LUA( pNPCUnit, "MACHINE_GUN_STRAIGHT", vBonePos1, vLandPos.y )
        end  
	end

end


------------------------------------------------------------------------------
function CANNON_HEAVY_MACHINE_GUN_ATTACK_2_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    if pNPCUnit:GetNowHP() <= pNPCUnit:GetMaxHP() * 0.3 then
        -- 연기펄펄        
        pMinorParticle = pX2Game:GetMinorParticle()
        if pMinorParticle ~= nil then
    
            vpos = pNPCUnit:GetBonePos_LUA("Cannon_Head")
            
            if pNPCUnit:GetIsRight() then
                vpos.x = vpos.x + 120
            else                
                vpos.x = vpos.x - 120
            end     
            vpos.y = vpos.y - 20
            
            pParticle = pNPCUnit:GetMinorParticle_LUA( 0 )
	        if pParticle == nil then
	            particle = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Smoke_BCMI_DeathWait01", vpos, D3DXVECTOR2(100,100), D3DXVECTOR2(-1,-1) )    	
	            if particle ~= nil then 
					pNPCUnit:SetMinorParticle_LUA(0, particle:GetHandle() )
				end 
	            
	        end
	    end
    else
        -- 연기 뚝!
        pParticle = pNPCUnit:GetMinorParticle_LUA( 0 )
	    if pParticle ~= nil then
		    pParticle:SetAutoDie()
		    pNPCUnit:ClearMinorParticle_LUA( 0 )
	    end
    end       

    if pNPCUnit:AnimEventTimer_LUA( 0.433 ) or    
        pNPCUnit:AnimEventTimer_LUA( 0.560 ) or
        pNPCUnit:AnimEventTimer_LUA( 0.700 ) then
    
        pDamageEffect = pX2Game:GetDamageEffect()		
	    vLandPos = pNPCUnit:GetLandPosition_LUA()
	    vBonePos1 = pNPCUnit:GetBonePos_LUA( "Dummy1_Cannon" )	
	    vBonePos2 = pNPCUnit:GetBonePos_LUA( "Dummy2_Cannon" )	
        vRot = pNPCUnit:GetRotateDegree()
	    	
        
        if pDamageEffect ~= nil then       
            pDamageEffect:CreateInstance_LUA2( pNPCUnit, "MACHINE_GUN_STRAIGHT", vBonePos2, vLandPos.y, vRot )
            
            vRot.z = vRot.z + 30
            pDamageEffect:CreateInstance_LUA2( pNPCUnit, "MACHINE_GUN_STRAIGHT", vBonePos1, vLandPos.y, vRot )
        end            
    end
end

------------------------------------------------------------------------------
function CANNON_HEAVY_MACHINE_GUN_ATTACK_3_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
		
    if pNPCUnit:GetNowHP() <= pNPCUnit:GetMaxHP() * 0.3 then
        -- 연기펄펄        
        pMinorParticle = pX2Game:GetMinorParticle()
        if pMinorParticle ~= nil then
    
            vpos = pNPCUnit:GetBonePos_LUA("Cannon_Head")
            
            if pNPCUnit:GetIsRight() then
                vpos.x = vpos.x + 120
            else                
                vpos.x = vpos.x - 120
            end     
            vpos.y = vpos.y - 20
            
            pParticle = pNPCUnit:GetMinorParticle_LUA( 0 )
	        if pParticle == nil then
	            particle = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Smoke_BCMI_DeathWait01", vpos, D3DXVECTOR2(100,100), D3DXVECTOR2(-1,-1) )    	
	            if particle ~= nil then 
					pNPCUnit:SetMinorParticle_LUA(0, particle:GetHandle() )
				end 
	            
            end	            
	    end
    else
        -- 연기 뚝!
        pParticle = pNPCUnit:GetMinorParticle_LUA( 0 )
	    if pParticle ~= nil then
		    pParticle:SetAutoDie()
		    pNPCUnit:ClearMinorParticle_LUA( 0 )
	    end
    end
    		
	-- stright
    if pNPCUnit:AnimEventTimer_LUA( 0.433 ) or    
        pNPCUnit:AnimEventTimer_LUA( 0.560 ) or
        pNPCUnit:AnimEventTimer_LUA( 0.666 ) then
    
        pDamageEffect = pX2Game:GetDamageEffect()		
	    vLandPos = pNPCUnit:GetLandPosition_LUA()
	    vBonePos1 = pNPCUnit:GetBonePos_LUA( "Dummy1_Cannon" )	
	    vBonePos2 = pNPCUnit:GetBonePos_LUA( "Dummy2_Cannon" )	
        vRot = pNPCUnit:GetRotateDegree()
	    	
        
        if pDamageEffect ~= nil then       
            pDamageEffect:CreateInstance_LUA2( pNPCUnit, "MACHINE_GUN_STRAIGHT", vBonePos2, vLandPos.y, vRot )
            pDamageEffect:CreateInstance_LUA2( pNPCUnit, "MACHINE_GUN_STRAIGHT", vBonePos1, vLandPos.y, vRot )
        end            
    end
    
    -- up
    if pNPCUnit:AnimEventTimer_LUA( 1.333 ) or
        pNPCUnit:AnimEventTimer_LUA( 1.466 ) or
        pNPCUnit:AnimEventTimer_LUA( 1.600 ) then
        
        pDamageEffect = pX2Game:GetDamageEffect()		
	    vLandPos = pNPCUnit:GetLandPosition_LUA()
	    vBonePos1 = pNPCUnit:GetBonePos_LUA( "Dummy1_Cannon" )	
	    vBonePos2 = pNPCUnit:GetBonePos_LUA( "Dummy2_Cannon" )	
        vRot = pNPCUnit:GetRotateDegree()
	    	
	    
        if pDamageEffect ~= nil then       
            vRot.z = vRot.z + 30
            pDamageEffect:CreateInstance_LUA2( pNPCUnit, "MACHINE_GUN_STRAIGHT", vBonePos2, vLandPos.y, vRot )
            pDamageEffect:CreateInstance_LUA2( pNPCUnit, "MACHINE_GUN_STRAIGHT", vBonePos1, vLandPos.y, vRot )
        end  
    end
    
    -- stright
    if pNPCUnit:AnimEventTimer_LUA( 2.300 ) or
        pNPCUnit:AnimEventTimer_LUA( 2.433 ) or
        pNPCUnit:AnimEventTimer_LUA( 2.566 ) then
        
        pDamageEffect = pX2Game:GetDamageEffect()		
	    vLandPos = pNPCUnit:GetLandPosition_LUA()
	    vBonePos1 = pNPCUnit:GetBonePos_LUA( "Dummy1_Cannon" )	
	    vBonePos2 = pNPCUnit:GetBonePos_LUA( "Dummy2_Cannon" )	
        vRot = pNPCUnit:GetRotateDegree()
	    	
	    
        if pDamageEffect ~= nil then       
            pDamageEffect:CreateInstance_LUA2( pNPCUnit, "MACHINE_GUN_STRAIGHT", vBonePos2, vLandPos.y, vRot )
            pDamageEffect:CreateInstance_LUA2( pNPCUnit, "MACHINE_GUN_STRAIGHT", vBonePos1, vLandPos.y, vRot )
        end  
    end
end


function CANNON_HEAVY_MACHINE_GUN_DAMAGE_SMALL_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    if pNPCUnit:GetNowHP() <= pNPCUnit:GetMaxHP() * 0.3 then
        -- 연기펄펄        
        pMinorParticle = pX2Game:GetMinorParticle()
        if pMinorParticle ~= nil then
    
            vpos = pNPCUnit:GetBonePos_LUA("Cannon_Head")
            vpos = pNPCUnit:GetBonePos_LUA("Cannon_Head")
            if pNPCUnit:GetIsRight() then
                vpos.x = vpos.x + 120
            else                
                vpos.x = vpos.x - 120
            end     
            vpos.y = vpos.y - 20
            
            pParticle = pNPCUnit:GetMinorParticle_LUA( 0 )
	        if pParticle == nil then
	            particle = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Smoke_BCMI_DeathWait01", vpos, D3DXVECTOR2(100,100), D3DXVECTOR2(-1,-1) )    	
	            if particle ~= nil then 
					pNPCUnit:SetMinorParticle_LUA(0, particle:GetHandle() )
				end 
	            
            end	            
	    end
    else
        -- 연기 뚝!
        pParticle = pNPCUnit:GetMinorParticle_LUA( 0 )
	    if pParticle ~= nil then
		    pParticle:SetAutoDie()
		    pNPCUnit:ClearMinorParticle_LUA( 0 )
	    end
    end
    
end




------------------------------------------------------------------------------
function CANNON_HEAVY_MACHINE_GUN_ATTACK_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

    pos = pNPCUnit:GetPos()
    pos.y = pos.y + 500
    pMajorSystem = pX2Game:GetMajorParticle()
	pMajorSystem:GameUnitCreateSequence_LUA( pNPCUnit, "StandUpAttackMark", pos, D3DXVECTOR2(100,100), D3DXVECTOR2(1,-1) )

end






function CANNON_HEAVY_MACHINE_GUN_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

    if pX2Game:IsHost() then 
		pNPCUnit:ReleaseSiegeMode( 100 )
	end
	
    pParticle = pNPCUnit:GetMinorParticle_LUA( 0 )
    if pParticle ~= nil then
	    pParticle:SetAutoDie()
	    pNPCUnit:ClearMinorParticle_LUA( 0 )
    end
--[[
    vPos = pNPCUnit:GetPos()
    --vPos = pX2Game:GetLineMap():GetRandomPosition( pNPCUnit:GetPos(), 10, true )
    pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_REPAIRMAN"], pNPCUnit:GetHardLevel(), true, vPos, false, 0.1, true, 0 )			
    pX2Game:FlushCreateNPCReq()		  
--]]
	pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	GetMinorParticle = pX2Game:GetMinorParticle()
	
	pSeq = GetMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DieLight",		pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	if pSeq ~= nil then
	
		pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		pNPCUnit:SetDieSeq( pSeq:GetHandle() )
	
	end
	pNPCUnit:PlaySound_LUA( "DieLight.ogg" )
	
end

function CANNON_HEAVY_MACHINE_GUN_WAIT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    if pNPCUnit:GetNowHP() <= pNPCUnit:GetMaxHP() * 0.3 then
        -- 연기펄펄        
        pMinorParticle = pX2Game:GetMinorParticle()
        if pMinorParticle ~= nil then
    
            vpos = pNPCUnit:GetBonePos_LUA("Cannon_Head")
            if pNPCUnit:GetIsRight() then
                vpos.x = vpos.x + 120
            else                
                vpos.x = vpos.x - 120
            end                
            vpos.y = vpos.y - 20        
            
            pParticle = pNPCUnit:GetMinorParticle_LUA( 0 )
	        if pParticle == nil then
	            particle = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Smoke_BCMI_DeathWait01", vpos, D3DXVECTOR2(100,100), D3DXVECTOR2(-1,-1) )    	
	            if particle ~= nil then 
					pNPCUnit:SetMinorParticle_LUA(0, particle:GetHandle() )
				end 
	            
            end	            
	    end
    else
        -- 연기 뚝!
        pParticle = pNPCUnit:GetMinorParticle_LUA( 0 )
	    if pParticle ~= nil then
		    pParticle:SetAutoDie()
		    pNPCUnit:ClearMinorParticle_LUA( 0 )
	    end
    end
end    


------------------------------------------------------------------------------
-- UTIL FUNCTION
------------------------------------------------------------------------------

------------------------------------------------------------------------------
function MovePos( pos, dirvector, dist )
	
	pos.x = pos.x + dist * dirvector.x
	pos.y = pos.y + dist * dirvector.y
	pos.z = pos.z + dist * dirvector.z
	
	return pos
	
end

