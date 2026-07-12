-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	LUA_SHAREABLE	= TRUE,
	UNIT_WIDTH		= 120.0,
	UNIT_HEIGHT		= 150.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	
	UNIT_SCALE		= 0.9,
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	},
	
	READY_SOUND = 
	{
	"Bubble_Loop.ogg",
	"IS_MagicAttackA01.ogg",
	"IS_MagicAttackA02.ogg",
	"Laguz_Bubble01.ogg",
	"Laguz_bubble02.ogg",
	"Laguz_Bubble03.ogg",
	"Laguz_Dying.ogg",
	"Laguz_SpecialAttackA01.ogg",
	"Laguz_SpecialAttackB01.ogg",
	"Laguz_SpecialAttackB02.ogg",
	"IS_Voice_Dying01.ogg",
	"IS_Voice_Hit01.ogg",
	"IS_Voice_Hit02.ogg",
	"IS_Voice_Hit03.ogg",
	"IS_Voice_Hit04.ogg",
	"IS_Voice_MagicAttackA01.ogg",
	"IS_Voice_WaitStart01.ogg",
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_IS.x",
}

INIT_PHYSIC = 
{	
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 300,
	RUN_SPEED			= 300,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 2300,
}


INIT_COMPONENT = 
{
	MAX_HP				= 2000,
	--HP_CHANGE_RATE		= -50,
	MP_CHANGE_RATE		= 0,
	MP_CHARGE_RATE		= 0,
	
	--USE_SLASH_TRACE		= FALSE,
	
	--SHADOW_SIZE			= 200,
	SHADOW_FILE_NAME	= "shadow.dds",
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
	
	--HEAD_BONE_NAME			= "Wisp_Body",
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	FALL_DOWN			= TRUE,
	
	DAMAGE_DOWN         = FALSE,
		
	DIE_FLY             = 0,

}




INIT_STATE = 
{
	{ STATE_NAME = "LOW_IS_FD_START",				},
	{ STATE_NAME = "LOW_IS_FD_WAIT",					},
	
	

	{ STATE_NAME = "LOW_IS_FD_SPECIAL_ATTACK_A",		STATE_COOL_TIME = 5,        },
	
--리액션 관련
	{ STATE_NAME = "LOW_IS_FD_DAMAGE_FRONT",				},	
	{ STATE_NAME = "LOW_IS_FD_DAMAGE_BACK",				},	
	{ STATE_NAME = "LOW_IS_FD_DYING",				LUA_FRAME_MOVE_FUNC = "LOW_IS_FD_DYING_FRAME_MOVE", },
	--{ STATE_NAME = "LOW_IS_FD_DYING",				 },

	{ STATE_NAME = "LOW_IS_FD_WALK",					},
	{ STATE_NAME = "LOW_IS_FD_JUMP_UP",				},
	{ STATE_NAME = "LOW_IS_FD_JUMP_DOWN",			},
	{ STATE_NAME = "LOW_IS_FD_JUMP_UP_DIR",			},
	{ STATE_NAME = "LOW_IS_FD_JUMP_DOWN_DIR",		},
	{ STATE_NAME = "LOW_IS_FD_JUMP_LANDING",			},
	
	
	START_STATE					= "LOW_IS_FD_WAIT",
	WAIT_STATE					= "LOW_IS_FD_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "LOW_IS_FD_DAMAGE_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "LOW_IS_FD_DAMAGE_BACK",
	BIG_DAMAGE_LAND_FRONT		= "LOW_IS_FD_DAMAGE_FRONT",
	BIG_DAMAGE_LAND_BACK		= "LOW_IS_FD_DAMAGE_BACK",
	DOWN_DAMAGE_LAND_FRONT		= "LOW_IS_FD_DAMAGE_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "LOW_IS_FD_DAMAGE_BACK",
	FLY_DAMAGE_FRONT			= "LOW_IS_FD_DAMAGE_FRONT",
	FLY_DAMAGE_BACK				= "LOW_IS_FD_DAMAGE_BACK",
	SMALL_DAMAGE_AIR			= "LOW_IS_FD_DAMAGE_FRONT",	
	BIG_DAMAGE_AIR				= "LOW_IS_FD_DAMAGE_FRONT",
	DOWN_DAMAGE_AIR				= "LOW_IS_FD_DAMAGE_FRONT",
	UP_DAMAGE					= "LOW_IS_FD_DAMAGE_FRONT",

	
	DYING_LAND_FRONT			= "LOW_IS_FD_DYING",
	DYING_LAND_BACK				= "LOW_IS_FD_DYING",
	DYING_SKY					= "LOW_IS_FD_DYING",

	REVENGE_ATTACK				= "",	
}

INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 3,		-- sec
		TARGET_NEAR_RANGE			= 800,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 900,		-- cm
		TARGET_LOST_RANGE			= 1000,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --40,		-- %
		ATTACK_TARGET_RATE			= 100, -- 30,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, -- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률	
		TARGET_HEIGHT_LIMIT			= 50,
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 600,
		DEST_GAP			= 500,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 700,
		
		DIR_CHANGE_INTERVAL = 0.7,
		
		WALK_INTERVAL		= 2,
		NEAR_WALK_RATE		= 100,   --  70,
		FAR_WALK_RATE		= 100,   -- 30,
		
		JUMP_INTERVAL		= 0,
		UP_JUMP_RATE		= 0, -- 80,
		UP_DOWN_RATE		= 0,
		DOWN_JUMP_RATE		= 0,    --  20,
		DOWN_DOWN_RATE		= 0,
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 100, --50,		
		PATROL_RANGE			= 200,
		PATROL_COOL_TIME		= 2,
		ONLY_THLOW_IS_FD_LINE_GROUP	= TRUE,
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
	},
	
	
}



LOW_IS_FD_START = 
{
	ANIM_NAME					= "WaitHabit",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.01, "IS_Voice_WaitStart01.ogg" },
	
--[[
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ TRUE, 0.01, "Wisp_Light01", FALSE, "Wisp_Body", FALSE },
	},
--]]	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"LOW_IS_FD_WAIT",				},
	},
	
	
}



LOW_IS_FD_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	

	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 1,

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"LOW_IS_FD_JUMP_DOWN",					},

		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"LOW_IS_FD_SPECIAL_ATTACK_A",				"CT_LOW_IS_FD_SPECIAL_ATTACK_A",			},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"LOW_IS_FD_WALK",						},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"LOW_IS_FD_WALK",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"LOW_IS_FD_JUMP_UP",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"LOW_IS_FD_JUMP_UP_DIR",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"LOW_IS_FD_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"LOW_IS_FD_JUMP_DOWN_DIR",				},
	},


	CT_LOW_IS_FD_SPECIAL_ATTACK_A = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 100,
	},
}



LOW_IS_FD_SPECIAL_ATTACK_A =
{
	ANIM_NAME					= "MagicAttackA",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	INVINCIBLE					= { 0, 0.5, },

	SPEED_X						= 0,
	SPEED_Y						= 0,	
	
	SOUND_PLAY2					= { 0.01, "IS_Voice_MagicAttackA01.ogg",50 },
    SOUND_PLAY0					= { 1.60, "IS_MagicAttackA01.ogg" },
    SOUND_PLAY1					= { 2.45, "IS_MagicAttackA02.ogg" },	
	
	VIEW_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	DELETE_EFFECT_SET_ON_DIE	 = TRUE, 
	

	EFFECT_SET_LIST =
	{
		"Is_Special_Attack", 0,	
	},
	
	DELETE_EFFECT_SET_ON_DAMAGE_REACT 	= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"LOW_IS_FD_JUMP_DOWN",								},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"LOW_IS_FD_WAIT",									},	
	},
}


LOW_IS_FD_DAMAGE_FRONT =
{
	ANIM_NAME					= "DamageFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SOUND_PLAY0					= { 0.01, "IS_Voice_Hit01.ogg", 30 },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"LOW_IS_FD_WAIT",				},
	},
}


LOW_IS_FD_DAMAGE_BACK =
{
	ANIM_NAME					= "DamageBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0					= { 0.01, "IS_Voice_Hit02.ogg", 30 },

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"LOW_IS_FD_WAIT",				},
	},
}


LOW_IS_FD_WALK = 
{
	ANIM_SPEED					= 0.7,
	ANIM_NAME					= "Walk",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= 100,
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"LOW_IS_FD_JUMP_DOWN_DIR",				},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"LOW_IS_FD_SPECIAL_ATTACK_A",				"CT_LOW_IS_FD_SPECIAL_ATTACK_A",			},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"LOW_IS_FD_WAIT",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"LOW_IS_FD_JUMP_UP",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"LOW_IS_FD_JUMP_UP_DIR",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"LOW_IS_FD_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"LOW_IS_FD_JUMP_DOWN_DIR",				},
	},
	
	CT_LOW_IS_FD_SPECIAL_ATTACK_A = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 800,
		RATE						= 100,
	},
}

LOW_IS_FD_JUMP_UP = 
{
	ANIM_NAME					= "JumpUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SPEED_X						= 0,
	SPEED_Y						= INIT_PHYSIC["JUMP_SPEED"],
	ADD_POS_Y					= 45,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"LOW_IS_FD_JUMP_DOWN",				},
	},
}

LOW_IS_FD_JUMP_DOWN = 
{
	ANIM_NAME					= "JumpDwon",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	
	
	IMMADIATE_PACKET_SEND		= TRUE,
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"LOW_IS_FD_JUMP_LANDING",				},
	},
}

LOW_IS_FD_JUMP_UP_DIR = 
{
	ANIM_NAME					= "JumpUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	SPEED_Y						= INIT_PHYSIC["JUMP_SPEED"],
	ADD_POS_Y					= 45,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"LOW_IS_FD_JUMP_DOWN_DIR",				},
	},
}

LOW_IS_FD_JUMP_DOWN_DIR = 
{
	ANIM_NAME					= "JumpDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	IMMADIATE_PACKET_SEND		= TRUE,
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"LOW_IS_FD_JUMP_LANDING",				},
	},
}

LOW_IS_FD_JUMP_LANDING = 
{
	ANIM_NAME					= "JumpLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SPEED_X						= 400,
	SPEED_Y						= 0,
		
	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"LOW_IS_FD_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"LOW_IS_FD_WAIT",					},
	},
}




LOW_IS_FD_DYING = 
{
	ANIM_NAME					= "Dying",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,
	
	SOUND_PLAY0					= { 0.01, "IS_Voice_Dying01.ogg" },
	SOUND_PLAY1 				= { 2.10, "Laguz_Dying.ogg" },
	
	--NEVER_MOVE					= TRUE,
	DYING_END					= TRUE,
	DYING_SPEED					= 1.4,
	
	EFFECT_SET_LIST =
	{
		"Is_Dying", 0,	
	},
	
	
	
	IMMADIATE_PACKET_SEND		= TRUE,
}
	



function LOW_IS_FD_DYING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.1 ) then
		local pMinorParticle = pX2Game:GetMinorParticle()
		local vPos = pNPCUnit:GetBonePos_LUA("Bip01")
		vPos.y = vPos.y + 200
		local pParticle = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "ExclamationMarkNPC", vPos, D3DXVECTOR2(100,100), D3DXVECTOR2(3, 1) )
		if pParticle ~= nil then
			pParticle:SetPosition( vPos )
		end
	end
end


function LOW_IS_FD_MAGIC_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
  
end



function LOW_IS_FD_MAGIC_ATTACK_A_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	
	
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


