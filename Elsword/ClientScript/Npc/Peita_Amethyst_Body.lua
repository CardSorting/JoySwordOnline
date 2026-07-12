-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



INIT_SYSTEM = 
{
	UNIT_WIDTH		= 240.0,
	UNIT_HEIGHT		= 200.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	
	UNIT_SCALE		= 1.05,
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{		
	    "DarkCloud02.dds",
	    "Steam_Bp.dds",
	    "GhostAttack01.dds",
	    "smoke02.dds",
	    "Condense_Pulse01.dds",	    
	},
	
	READY_SOUND = 
	{          
		"Amethyst_Attack.ogg",
		"Amethyst_MagicAttackA.ogg",
		"Amethyst_MagicAttackB1.ogg",
		"Amethyst_MagicAttackB2.ogg",
		"Amethyst_Damage.ogg",  
		"Amethyst_Dying_Land_Front.ogg", 
		"Amethyst_Special.ogg",
		"Amethyst_GhostOneSpin.ogg",
		"Amethyst_start.ogg",  
		"Amethyst_Spin.ogg",  
		"Amethyst_WalkEnd.ogg",
		"Amethyst_WalkStart.ogg",
		
		"AmethystVoice_Scream.ogg",
		"AmethystVoice_Laugh.ogg",
		"AmethystVoice_Laugh2.ogg",
		"AmethystVoice_WaitStart.ogg",
		"AmethystVoice_Attack.ogg",
		
	},
	
		
	READY_XMESH = 
	{	    
	    
	},
	
	READY_XSKIN_MESH = 
	{		    
	    "Amethyst_AttackReadyA_Mesh.X",
	    "Amethyst_AttackReadyB2_Mesh.X",
	    "Amethyst_AttackReadyB_Mesh.X",
	    "Amethyst_MagicAttackC_Mesh.X",
	    "Amethyst_Special_Mesh.X",	    
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "AMETHYST_Body.x",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 750,
	RUN_SPEED			= 800,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 1800,
}


INIT_COMPONENT = 
{
	IMMUNITY_TIME_STOP = TRUE,
	MAX_HP				= 20000,
	MP_CHANGE_RATE		= 2,
	MP_CHARGE_RATE		= 1200,
	
	
	SHADOW_SIZE			= 200,
	SHADOW_FILE_NAME	= "shadow.dds",
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	DRAW_SMALL_MP_BAR	= TRUE,
	
	--QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	--EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
	--MIND_FLAG_HEIGHT		= 230,
	
	--HYPER_MODE_COUNT	= 0,
	--MAX_HYPER_MODE_TIME	= 30,
	
	HEAD_BONE_NAME		= "Bip01_Head",
	
	--RAGE_COUNT_MAX		= 30,
	--RAGE_TIME_MAX		= 3,

    BOSS_GAGE_FACE_TEX   = "DLG_BossState.tga",
    BOSS_GAGE_FACE_TEX_PIECE = "AMETHYST",
    BOSS_NAME_TEX    = "HQ_BOSS_NAME_AMETHYST.dds",

	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	
	FALL_DOWN			= FALSE,
	
	DIE_FLY             = 0,
}

INIT_STATE = 
{		
	{ STATE_NAME = "AMETHYST_BODY_WAIT",						},
	{ STATE_NAME = "AMETHYST_BODY_WAIT_START",					LUA_STATE_START_FUNC = "AMETHYST_BODY_WAIT_START_STATE_START",},
		
	{ STATE_NAME = "AMETHYST_BODY_WALK_START",					},
    { STATE_NAME = "AMETHYST_BODY_WALK_END",					},	                                                            

    { STATE_NAME = "AMETHYST_BODY_ATTACK",					    },
    { STATE_NAME = "AMETHYST_BODY_MAGIC_ATTACK_A",			    },
	{ STATE_NAME = "AMETHYST_BODY_MAGIC_ATTACK_B1",			    },
	{ STATE_NAME = "AMETHYST_BODY_MAGIC_ATTACK_B2",			    },
	{ STATE_NAME = "AMETHYST_BODY_MAGIC_ATTACK_C",			    },
	{ STATE_NAME = "AMETHYST_BODY_MAGIC_ATTACK_SPECIAL",			},
    	                                                                    
	
	--리액션 관련
	{ STATE_NAME = "AMETHYST_BODY_DAMAGE",				        },
		
	{ STATE_NAME = "AMETHYST_BODY_DYING_LAND_FRONT",			LUA_STATE_START_FUNC = "AMETHYST_BODY_DYING_LAND_STATE_START",},
	{ STATE_NAME = "AMETHYST_BODY_DYING_LAND_BACK",			    LUA_STATE_START_FUNC = "AMETHYST_BODY_DYING_LAND_STATE_START",},
	{ STATE_NAME = "AMETHYST_BODY_DYING_SKY",					LUA_STATE_START_FUNC = "AMETHYST_BODY_DYING_LAND_STATE_START",},
	
	START_STATE					= "AMETHYST_BODY_WAIT_START",
	WAIT_STATE					= "AMETHYST_BODY_WAIT",	
	
	
	SMALL_DAMAGE_LAND_FRONT		= "AMETHYST_BODY_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "AMETHYST_BODY_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "AMETHYST_BODY_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "AMETHYST_BODY_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "AMETHYST_BODY_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "AMETHYST_BODY_DAMAGE",
	FLY_DAMAGE_FRONT			= "AMETHYST_BODY_DAMAGE",
	FLY_DAMAGE_BACK				= "AMETHYST_BODY_DAMAGE",
	SMALL_DAMAGE_AIR			= "AMETHYST_BODY_DAMAGE",	
	BIG_DAMAGE_AIR				= "AMETHYST_BODY_DAMAGE",
	DOWN_DAMAGE_AIR				= "AMETHYST_BODY_DAMAGE",
	UP_DAMAGE					= "AMETHYST_BODY_DAMAGE",
	DAMAGE_REVENGE				= "AMETHYST_BODY_DAMAGE",
	
	DYING_LAND_FRONT			= "AMETHYST_BODY_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "AMETHYST_BODY_DYING_LAND_BACK",
	DYING_SKY					= "AMETHYST_BODY_DYING_SKY",

	REVENGE_ATTACK				= "",	
	
	COMMON_FRAME_FUNC           = "AMETHYST_BODY_COMMON_FRAME_MOVE",
}



INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 2,		-- sec
		TARGET_NEAR_RANGE			= 500,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 1500,		-- cm
		TARGET_LOST_RANGE			= 2000,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --50,		-- %
		ATTACK_TARGET_RATE			= 100, -- 30,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, -- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
		
		MANUAL_TARGETING_FUNC		= "AMETHYST_MANUAL_TARGET",
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
		PATROL_BEGIN_RATE		= 100, --50,		
		PATROL_RANGE			= 200,
		PATROL_COOL_TIME		= 2,
		ONLY_THIS_LINE_GROUP	= TRUE,
	},
	
	ESCAPE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 500,	-- cm
		ESCAPE_GAP			= 600,	-- 이 거리 보다 멀어지면 도망 성공
		
		WALK_INTERVAL		= 1.5,	-- 초
		NEAR_WALK_RATE		= 100,   --  10,
		FAR_WALK_RATE		= 100,   -- 10,
		
		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 100, -- 30,
		UP_DOWN_RATE		= 30,
		DOWN_JUMP_RATE		= 100,    --  30,
		DOWN_DOWN_RATE		= 30,
		
		LINE_END_RANGE		= 80,	-- cm
	},

}


AMETHYST_BODY_WALK_START = 
{
	ANIM_NAME					= "WalkStart",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,

	SOUND_PLAY0			= { 0.403, "Amethyst_WalkStart.ogg" },
	SOUND_PLAY1			= { 0.001, "AmethystVoice_Laugh2.ogg" },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	NEVER_MOVE					= TRUE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],					"AMETHYST_BODY_WALK_END",					},
	},	
	

}

AMETHYST_BODY_WALK_END = 
{
	ANIM_NAME					= "WalkEnd",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,

	SOUND_PLAY0			= { 0.059, "Amethyst_WalkEnd.ogg" },

	SPEED_X						= 0,
	SPEED_Y						= 0,

	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	NEVER_MOVE					= TRUE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],					"AMETHYST_BODY_WAIT",					},
	},
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,			
		{ FALSE, 0.11, "RespawnLanding_P01", FALSE, "", FALSE, FALSE, 0, 0, 0, FALSE, 0, 0, 0, 2.0, 2.0, 2.0},
		{ FALSE, 0.11, "RespawnLanding_P02", FALSE, "", FALSE, FALSE, 0, 0, 0, FALSE, 0, 0, 0, 2.0, 2.0, 2.0},
		{ FALSE, 0.11, "RespawnLanding_P03", FALSE, "", FALSE, FALSE, 0, 0, 0, FALSE, 0, 0, 0, 2.0, 2.0, 2.0},
		{ FALSE, 0.21, "RespawnLanding_P04", FALSE, "", FALSE, FALSE, 0, 50, 0, FALSE, 0, 0, 0, 2.0, 2.0, 2.0},
		{ FALSE, 0.24, "RespawnLanding_P04", FALSE, "", FALSE, FALSE, 0, 100, 0, FALSE, 0, 0, 0, 2.0, 2.0, 2.0},
		{ FALSE, 0.37, "RespawnLanding_P04", FALSE, "", FALSE, FALSE, 0, 200, 0, FALSE, 0, 0, 0, 2.0, 2.0, 2.0},
		{ FALSE, 0.50, "RespawnLanding_P04", FALSE, "", FALSE, FALSE, 0, 300, 0, FALSE, 0, 0, 0, 2.0, 2.0, 2.0},
		{ FALSE, 0.63, "RespawnLanding_P04", FALSE, "", FALSE, FALSE, 0, 450, 0, FALSE, 0, 0, 0, 2.0, 2.0, 2.0},
	},

}



AMETHYST_BODY_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	NEVER_MOVE					= TRUE,
	
	ALLOW_DIR_CHANGE			= TRUE,
	VIEW_TARGET					= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{
	    
	},
	
	

		
}


AMETHYST_BODY_WAIT_START = 
{
	ANIM_NAME					= "WaitStart",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	INVINCIBLE					= { 0, 100, },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0			= { 2.910, "Amethyst_start.ogg" },
    SOUND_PLAY1			= { 4.540, "Amethyst_Spin.ogg" },
    SOUND_PLAY2			= { 0.304, "AmethystVoice_WaitStart.ogg" },
		
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	NEVER_MOVE					= TRUE,
	
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,	

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"AMETHYST_BODY_WAIT",					},
	},

    PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,			
		{ TRUE, 0.01, "Flare_Amethyst_Body01", FALSE, "Body_Dummy03", FALSE, TRUE, 20, 0, 0, TRUE, },
		{ FALSE, 0.01, "DarkCloud_Amethyst_Body01", FALSE, "Body_Dummy03", FALSE, TRUE, 0, -70, 0, TRUE, },
	},
	


}

AMETHYST_BODY_ATTACK = 
{
	ANIM_NAME					= "Attack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	NEVER_MOVE					= TRUE,
	
	ALLOW_DIR_CHANGE			= TRUE,
	VIEW_TARGET					= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],					"AMETHYST_BODY_WAIT",					},
	},    
}

AMETHYST_BODY_MAGIC_ATTACK_A = 
{
	ANIM_NAME					= "AttackReadyA",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,

    SOUND_PLAY0			= { 1.214, "AmethystVoice_Attack.ogg", 20 },
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	NEVER_MOVE					= TRUE,
	
	ALLOW_DIR_CHANGE			= TRUE,
	VIEW_TARGET					= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],					"AMETHYST_BODY_WAIT",					},
	},	
	

}

AMETHYST_BODY_MAGIC_ATTACK_B1 = 
{
	ANIM_NAME					= "AttackReadyB",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	

    SOUND_PLAY0			= { 1.212, "AmethystVoice_Attack.ogg", 20 },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	NEVER_MOVE					= TRUE,
	
	ALLOW_DIR_CHANGE			= TRUE,
	VIEW_TARGET					= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],					"AMETHYST_BODY_WAIT",					},
	},	
	

}

AMETHYST_BODY_MAGIC_ATTACK_B2 = 
{
	ANIM_NAME					= "AttackReadyB",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,

    SOUND_PLAY0			= { 1.212, "AmethystVoice_Attack.ogg", 20 },
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	NEVER_MOVE					= TRUE,
	
	ALLOW_DIR_CHANGE			= TRUE,
	VIEW_TARGET					= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],					"AMETHYST_BODY_WAIT",					},
	},	
	

}

AMETHYST_BODY_MAGIC_ATTACK_C = 
{
	ANIM_NAME					= "MagicAttackC",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,

    SOUND_PLAY0			= { 1.272, "AmethystVoice_Attack.ogg", 20 },
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	NEVER_MOVE					= TRUE,
	
	ALLOW_DIR_CHANGE			= TRUE,
	VIEW_TARGET					= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],					"AMETHYST_BODY_WAIT",					},
	},	
	

}

AMETHYST_BODY_MAGIC_ATTACK_SPECIAL = 
{
	ANIM_NAME					= "Special",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	

    SOUND_PLAY0			= { 2.138, "AmethystVoice_Laugh.ogg" },
	
	INVINCIBLE					= { 0, 100, }, 	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	NEVER_MOVE					= TRUE,
	
	ALLOW_DIR_CHANGE			= FASEL,
	VIEW_TARGET					= FALSE,
	
	RIGHT                       = TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{
	    { STATE_CHANGE_TYPE["SCT_MOTION_END"],					"AMETHYST_BODY_WAIT",					},
	},	
	

}



AMETHYST_BODY_DAMAGE =
{
	ANIM_NAME					= "Damage",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	SOUND_PLAY0			= { 0.275, "Amethyst_Damage.ogg" },
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	SPEED_Y                     =0,
	
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	NEVER_MOVE					= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"AMETHYST_BODY_WAIT",		},
	},
}

AMETHYST_BODY_DYING_LAND_FRONT = 
{
	ANIM_NAME					= "Dying_Land_Front",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		

    SOUND_PLAY0			= { 3.439, "Amethyst_Dying_Land_Front.ogg" },
    SOUND_PLAY1			= { 0.305, "AmethystVoice_Scream.ogg" },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,


}
	
AMETHYST_BODY_DYING_LAND_BACK = 
{
	ANIM_NAME					= "Dying_Land_Front",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

    SOUND_PLAY0			= { 3.439, "Amethyst_Dying_Land_Front.ogg" },
    SOUND_PLAY1			= { 2.105, "AmethystVoice_Scream.ogg" },

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
}

AMETHYST_BODY_DYING_SKY = 
{
	ANIM_NAME					= "Dying_Land_Front",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

    SOUND_PLAY0			= { 3.439, "Amethyst_Dying_Land_Front.ogg" },
    SOUND_PLAY1			= { 2.105, "AmethystVoice_Scream.ogg" },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}






--------------------------------------------------------------------
--------------------------------------------------------------------
function AMETHYST_MANUAL_TARGET( pKTDXApp, pX2Game, pNPCUnit )

    pUnit = pNPCUnit:GetConsultNpc( NPC_UNIT_ID["NUI_AMETHYST_ATTACKER"] )
    
    if pUnit ~= nil then                 
        pUser = pNPCUnit:GetTargetUser()
        if pUser ~= nil then
            pNPCUnit:SetTargetUnit( pUser )
        end
	end		       
    
end

function CF_AMETHYST_BODY_WIN( pKTDXApp, pX2Game, pNPCUnit )

	if pX2Game:LiveUserUnitNum() == 0 then
		return true
	else
		return false
	end

end


function AMETHYST_BODY_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

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

function AMETHYST_BODY_COMMON_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
           
    pUnit = pNPCUnit:GetConsultNpc( NPC_UNIT_ID["NUI_AMETHYST_ATTACKER"] )
    
    if pUnit ~= nil then        
    
        if pUnit:GetNowHP() <= 0 then
            return
        end
    
        bRight = pUnit:GetIsRight()            		        
        vPos = pUnit:GetPos()
                                
        pNPCUnit:SetPosition( vPos , bRight)
        pUnit:SetNowHP_LUA( pNPCUnit:GetNowHP() )
        pUnit:SetNowMP( pNPCUnit:GetNowMP() )
    end            
    
end

function AMETHYST_BODY_WAIT_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )    
    
    pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_AMETHYST_ATTACKER"], pNPCUnit:GetHardLevel(), false, pNPCUnit:GetPos(), false, 0.01, true  )
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
