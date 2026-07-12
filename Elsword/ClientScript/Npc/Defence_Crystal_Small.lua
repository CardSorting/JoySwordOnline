-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



INIT_SYSTEM = 
{
	UNIT_WIDTH		= 300.0,
	UNIT_HEIGHT		= 250.0,	
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	UNIT_SCALE		= 1,
	RENDER_PARAM	= RENDER_TYPE["RT_REAL_COLOR"],
}

                                                                                 
INIT_DEVICE = 
{
	READY_TEXTURE = 
	{		
	},

	
	READY_SOUND = 
	{
	},
	
		
	READY_XMESH = 
	{
	},
	
	READY_XSKIN_MESH = 
	{
	},
	
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_DEFENCE_CRYSTAL.X",
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
	HP_CHANGE_RATE			= 10,
	MP_CHANGE_RATE			= 1,
	MP_CHARGE_RATE			= 130,
	
	USE_SLASH_TRACE			= FALSE,
	
	SHADOW_SIZE				= 200,
	SHADOW_FILE_NAME		= "shadow.dds",
	
	SMALL_HP_BAR_BLUE		= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED		= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW 	= "Small_HP_bar_Yellow.TGA",
	
	QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",

	HITTED_TYPE				= HITTED_TYPE["HTD_METAL"],
	FALL_DOWN				= FALSE,
	
	DAMAGE_DOWN         = FALSE,
	DIE_FLY 			= FALSE, 

	NOT_EXTRA_DAMAGE    = TRUE,

	--ALPHA_BLEND_ALWAYS	= TRUE,

	INVINCIBLE_TO_NPC_KEYCODE = 20,

}


INIT_STATE = 
{
	{ STATE_NAME = "EL_CRYSTAL_START",			},

															
	{ STATE_NAME = "EL_CRYSTAL_WAIT",		    },
	
	
	--리액션 관련
	{ STATE_NAME = "EL_CRYSTAL_DAMAGE",			},
	{ STATE_NAME = "EL_CRYSTAL_DYING",										LUA_STATE_START_FUNC = "EL_CRYSTAL_DYING_START"			},
	
	
	START_STATE					= "EL_CRYSTAL_START",
	WAIT_STATE					= "EL_CRYSTAL_WAIT",
	
	
	SMALL_DAMAGE_LAND_FRONT		= "EL_CRYSTAL_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "EL_CRYSTAL_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "EL_CRYSTAL_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "EL_CRYSTAL_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "EL_CRYSTAL_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "EL_CRYSTAL_DAMAGE",
	FLY_DAMAGE_FRONT			= "EL_CRYSTAL_DAMAGE",
	FLY_DAMAGE_BACK				= "EL_CRYSTAL_DAMAGE",
	SMALL_DAMAGE_AIR			= "EL_CRYSTAL_DAMAGE",	
	BIG_DAMAGE_AIR				= "EL_CRYSTAL_DAMAGE",
	DOWN_DAMAGE_AIR				= "EL_CRYSTAL_DAMAGE",
	UP_DAMAGE					= "EL_CRYSTAL_DAMAGE",
	DAMAGE_REVENGE				= "EL_CRYSTAL_DAMAGE",
	
	DYING_LAND_FRONT			= "EL_CRYSTAL_DYING",
	DYING_LAND_BACK				= "EL_CRYSTAL_DYING",
	DYING_SKY					= "EL_CRYSTAL_DYING",

	REVENGE_ATTACK				= "",	
	

}



INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 9999,		-- sec
		TARGET_NEAR_RANGE			= 0,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 0,		-- cm
		TARGET_LOST_RANGE			= 0,		-- cm
		TARGET_SUCCESS_RATE			= 0,		-- %
		ATTACK_TARGET_RATE			= 0,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 0,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 600,
		DEST_GAP			= 150,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 160,
		
		DIR_CHANGE_INTERVAL = 9999,
		
		WALK_INTERVAL		= 9999,
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


EL_CRYSTAL_START = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    --SOUND_PLAY0			= { 0.01, "El_Extractor_Normal_Start.ogg" },

	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,	
	NEVER_MOVE					= TRUE,
	
	PARTICLE_SEQ = 
	{
	},
	
	EVENT_PROCESS = 
	{		

		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"EL_CRYSTAL_WAIT",								},
	},
	
	DELETE_EFFECT_SET_ON_DIE	= TRUE,	
	
	EFFECT_SET_LIST =
	{
		"EffectSet_El_Wait_Small", 0,	
	},
}



EL_CRYSTAL_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	NEVER_MOVE					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}






EL_CRYSTAL_DAMAGE = 
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

		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"EL_CRYSTAL_WAIT",								},
	},
}


EL_CRYSTAL_DYING = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	NEVER_MOVE					= TRUE,
	
	DYING_END					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
}


function EL_CRYSTAL_DYING_START( pKTDXApp, pX2Game, pNPCUnit )    
	local pEffectSet = pX2Game:GetEffectSet()
	local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_El_Broken", pNPCUnit )
	
	if nil ~= hEffect then
		pNPCUnit:SetEffectSet_LUA( 0, hEffect )
	end
	
	local iCrystallSquareKeyCode = pNPCUnit:GetKeyCode() + 5
	pCrystallSquare = pX2Game:GetNPCUnitByKeyCode( iCrystallSquareKeyCode )
	if pCrystallSquare ~= nil then
		pCrystallSquare:SetNowHP_LUA(0)
	end
	
	--pX2Game:KillNPC(NPC_UNIT_ID["NUI_DEFENCE_CRYSTAL"], 100)		
end