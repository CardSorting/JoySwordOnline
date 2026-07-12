-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--[[ KjTiger / 2011/03/29 / 칠링 스파인 /
	 Attack( COLD DAMAGE, 위치 이동 불가 )
--]]

INIT_SYSTEM = 
{
	UNIT_WIDTH		= 50.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	UNIT_SCALE		= 0.8,
	RENDER_PARAM	= RENDER_TYPE["RT_REAL_COLOR"],

}
------------------------------------------------------------------------------
INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
		"NUI_CHILLING_SPINE_TRAP_01.tga",
		"NUI_CHILLING_SPINE_TRAP_02.tga",
	},
	
	READY_SOUND = 
	{
		"Chilling_Spine_Trap_AttackA01.ogg",
		"Chilling_Spine_Trap_Damage01.ogg",
		"Chilling_Spine_Trap_Dying01.ogg",
		"Chilling_Spine_Trap_Loop.ogg",
	},
}
------------------------------------------------------------------------------
INIT_MOTION = 
{
	MOTION_FILE_NAME	= "Motion_CHILLING_SPINE_TRAP.x",
}
------------------------------------------------------------------------------
INIT_PHYSIC = 
{
	RELOAD_ACCEL	= 2000,
	G_ACCEL			= 4000,
	MAX_G_SPEED		= -2000,
	
	WALK_SPEED	= 0,
	RUN_SPEED	= 0,
	JUMP_SPEED	= 0,
	DASH_JUMP_SPEED		= 0,
}
------------------------------------------------------------------------------
INIT_COMPONENT = 
{
	MAX_HP			= 9225,
	
	SHADOW_SIZE			= 200,
	SHADOW_FILE_NAME	= "shadow.dds",
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	--SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	HEAD_BONE_NAME		= "CS_Dummy01",
		
	SHOW_ON_MINIMAP		= FALSE,
	
	DIE_FLY 			= FALSE,
}
------------------------------------------------------------------------------
INIT_STATE = 
{
	{ STATE_NAME = "CHILLING_SPINE_TRAP_WAIT",			},
	{ STATE_NAME = "CHILLING_SPINE_TRAP_ATTACK_READY",	STATE_COOL_TIME = 1, },
	{ STATE_NAME = "CHILLING_SPINE_TRAP_ATTACK",		LUA_STATE_START_FUNC = "CHILLING_SPINE_TRAP_ATTACK_WAIT_START_FUNC"	},
	
	{ STATE_NAME = "CHILLING_SPINE_TRAP_DAMAGE",	},
	{ STATE_NAME = "CHILLING_SPINE_TRAP_ATTACK_LOOP",	},
	{ STATE_NAME = "CHILLING_SPINE_TRAP_DYING",	},	
	
	START_STATE	= "CHILLING_SPINE_TRAP_WAIT",
	WAIT_STATE	= "CHILLING_SPINE_TRAP_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT	= "CHILLING_SPINE_TRAP_DAMAGE",
	SMALL_DAMAGE_LAND_BACK	= "CHILLING_SPINE_TRAP_DAMAGE",
	BIG_DAMAGE_LAND_FRONT	= "CHILLING_SPINE_TRAP_DAMAGE",
	BIG_DAMAGE_LAND_BACK	= "CHILLING_SPINE_TRAP_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT	= "CHILLING_SPINE_TRAP_DAMAGE",
	DOWN_DAMAGE_LAND_BACK	= "CHILLING_SPINE_TRAP_DAMAGE",
	FLY_DAMAGE_FRONT		= "CHILLING_SPINE_TRAP_DAMAGE",
	FLY_DAMAGE_BACK			= "CHILLING_SPINE_TRAP_DAMAGE",
	SMALL_DAMAGE_AIR		= "CHILLING_SPINE_TRAP_DAMAGE",
	BIG_DAMAGE_AIR			= "CHILLING_SPINE_TRAP_DAMAGE",
	DOWN_DAMAGE_AIR			= "CHILLING_SPINE_TRAP_DAMAGE",
	UP_DAMAGE				= "CHILLING_SPINE_TRAP_DAMAGE",
	DAMAGE_REVENGE			= "CHILLING_SPINE_TRAP_DAMAGE",
	
	DYING_LAND_FRONT	= "CHILLING_SPINE_TRAP_DYING",
	DYING_LAND_BACK		= "CHILLING_SPINE_TRAP_DYING",
	DYING_SKY			= "CHILLING_SPINE_TRAP_DYING",

	REVENGE_ATTACK		= "CHILLING_SPINE_TRAP_DAMAGE",
	
	COMMON_FRAME_FUNC	= "CHILLING_SPINE_TRAP_COMMON_FRAMEMOVE",
}
------------------------------------------------------------------------------
INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_NEAR_FIRST"],
		TARGET_INTERVAL				= 3,		-- sec
		TARGET_NEAR_RANGE			= 300,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 10500,	-- cm
		TARGET_LOST_RANGE			= 10800,	-- cm
		TARGET_SUCCESS_RATE			= 100,  	-- 100,		-- %
		ATTACK_TARGET_RATE			= 0,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 0,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},
}
------------------------------------------------------------------------------
CHILLING_SPINE_TRAP_WAIT = 
{
	ANIM_NAME	= "Wait",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= FALSE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,	
	
	INVINCIBLE	= { 0, 100, },
	
	SPEED_X	= 0,
	SPEED_Y	= 0,
	
	--IMMADIATE_PACKET_SEND	= TRUE,
	NEVER_MOVE				= TRUE,
	ALLOW_DIR_CHANGE		= FALSE,
	VIEW_TARGET				= FALSE,
	EVENT_INTERVAL_TIME0	= 2,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"CHILLING_SPINE_TRAP_ATTACK_READY",	"CT_CHILLING_SPINE_TRAP_ATTACK_READY",	},
	},
	
	CT_CHILLING_SPINE_TRAP_ATTACK_READY = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 400,
		RATE						= 100,
	},
}
------------------------------------------------------------------------------
CHILLING_SPINE_TRAP_ATTACK_READY = 
{
	ANIM_NAME	= "AttackAReady",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	ANIM_SPEED	= 1.3,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,
	
	INVINCIBLE	= { 0, 100, },

    --SOUND_PLAY0	= { 0.081, "WoodPostTrap_Ready.ogg" },
    	
	SPEED_X						= 0,
	SPEED_Y						= 0,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"CHILLING_SPINE_TRAP_ATTACK",	},
	},
	
	-- EVENT_PROCESS = 
	-- {
		-- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],				"CHILLING_SPINE_TRAP_ATTACK",	"CT_CHILLING_SPINE_TRAP_ATTACK"		},
	-- },
	
	-- CT_CHILLING_SPINE_TRAP_ATTACK = 
	-- {
		-- STATE_TIME_OVER			= 1,
	-- },
}
------------------------------------------------------------------------------
CHILLING_SPINE_TRAP_ATTACK = 
{
	ANIM_NAME	= "AttackA",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,

    SOUND_PLAY0	= { 0.081, "Chilling_Spine_Trap_AttackA01.ogg" },
    	
	SPEED_X						= 0,
	SPEED_Y						= 0,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	EFFECT_SET_LIST =
	{
		"Effect_Chilling_Spine_Trap_Attack", 0,
	},
	
	ATTACK_TIME0				= { 0.2, 0.6 },

	DAMAGE_DATA = 
	{
		DAMAGE_TYPE	= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE	= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE	= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC	= 1.0,
		},
		

		BUFF_FACTOR =
		{
			BUFF_TEMPLET_ID = BUFF_TEMPLET_ID["BTI_DEBUFF_FROZEN"],
			RATE	=
			{
				1,
			},
			IGNORE_REGIST_FOR_RATE = TRUE,

			BEHAVIOR =
			{
				COMBINATION = { BUFF_BEHAVIOR_TYPE["BBT_FROZEN"],
								BUFF_BEHAVIOR_TYPE["BBT_SUPER_ARMOR"],
								BUFF_BEHAVIOR_TYPE["BBT_NEVER_MOVE"], },

				BBT_FROZEN =
				{
				},
				BBT_SUPER_ARMOR =
				{
				},
				BBT_NEVER_MOVE =
				{
				},
			},	
			FINALIZER =
			{
				COMBINATION = { BUFF_FINALIZER_TYPE["BFT_TIME"], },
		
				BFT_TIME =
				{
					BUFF_DURATION_TIME_TYPE = BUFF_DURATION_TIME_TYPE["BDTT_NORMAL_TIME"],
					NORMAL_TIME =
					{
						3,
					},
				},
			},
		},	
				
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},
}
------------------------------------------------------------------------------
CHILLING_SPINE_TRAP_ATTACK_LOOP = 
{
	ANIM_NAME	= "AttackALoop",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,
	NEVER_MOVE					= TRUE,

    SOUND_PLAY0	= { 0.081, "Chilling_Spine_Trap_AttackA01.ogg" },
    	
	SPEED_X						= 0,
	SPEED_Y						= 0,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
}
-------------------------------------------------------
CHILLING_SPINE_TRAP_DAMAGE =
{
	ANIM_NAME	= "Damage",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,
	NEVER_MOVE		= TRUE,
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	
	SOUND_PLAY0	= { 0.01, "Chilling_Spine_Trap_Damage01.ogg" },
	
	PARTICLE_SEQ =
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ TRUE,	0.0,	"Pa_Chilling_Spine_Damage_Ice",	FALSE,	"CS_Dummy01",	TRUE,	TRUE,	0,	0,	0,	TRUE, },
	},

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"CHILLING_SPINE_TRAP_ATTACK_LOOP",	},
	},
}
------------------------------------------------------------------------------
CHILLING_SPINE_TRAP_DYING =
{
	ANIM_NAME	= "Dying",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= FALSE,

	INVINCIBLE	= { 0, 100, },

	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= TRUE,

	DYING_END	= TRUE,
	NEVER_MOVE	= TRUE,

	IMMADIATE_PACKET_SEND	= TRUE,
	
	SOUND_PLAY0	= { 0.01, "Chilling_Spine_Trap_Dying01.ogg" },
	
	EFFECT_SET_LIST =
	{
		"Effect_Chilling_Spine_Trap_Dying", 0,
	},
}
------------------------------------------------------------------------------
------------------------------------------------------------------------------
function CHILLING_SPINE_TRAP_ATTACK_WAIT_START_FUNC( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetFlag_LUA( 0, true )
	pNPCUnit:SetTimerRestart( 0 )
end
------------------------------------------------------------------------------
function CHILLING_SPINE_TRAP_COMMON_FRAMEMOVE( pKTDXApp, pX2Game, pNPCUnit )
	if true == pNPCUnit:GetFlag_LUA( 0 ) then
		-- HP 감소
		local fDecreaseHPTime = 0.8		-- HP 감소 속도
		if fDecreaseHPTime <= pNPCUnit:GetTimerElapsedTime( 0 ) then
			pNPCUnit:SetNowHP( pNPCUnit:GetNowHP() - pNPCUnit:GetMaxHP() * 0.05 )
			pNPCUnit:SetTimerRestart( 0 )
			
			if pNPCUnit:GetNowHP() <= 0 then
				pNPCUnit:SetNowHP_LUA(0)
			end
		end
	end
end