-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

INIT_SYSTEM = 
{
	UNIT_WIDTH		= 200.0,
	UNIT_HEIGHT		= 400.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
}
-------------------------------------------------------------------------
INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
		"Chief_Of_Trock_Shield_Wave.dds",
		"CHIEF_OF_TROCKTA_MA_B_Dread.dds",
		"CHIEF_OF_TROCKTA_MA_B_Dread_j.dds",
		"Red_Drain.dds",
		"HQ_BOSS_NAME_TROCKTA.dds",
		"Black_Drain.dds",
		"CHIEF_OF_TROCKTA_SA_A_Ring.dds",
	},
	READY_XMESH =
	{
		"CHIEF_OF_TROCKTA_SA_A_Shield.Y",
		"CHIEF_OF_TROCKTA_SA_B_Light.Y",
	},
	READY_XSKIN_MESH =
	{
		"CHIEF_OF_TROCKTA_MA_A_Mask.X",
		"CHIEF_OF_TROCKTA_SA_A_Summon_Dummy.X",
		"CHIEF_OF_TROCKTA_MA_B_Mask.X",
		"CHIEF_OF_TROCKTA_MA_A_Dummy.X",
		"CHIEF_OF_TROCKTA_Attack_A.X",
		"CHIEF_OF_TROCKTA_HP_Drain.X",
		"CHIEF_OF_TROCKTA_SA_B_Mask.X",
		"CHIEF_OF_TROCKTA_SA_B_Mask_Water.X",
		"CHIEF_OF_TROCKTA_SA_B_Stone.X",
	},
	READY_SOUND = 
	{
		"Chief_Of_Trockta_Voice_WaitStart01.ogg",
		"Chief_Of_Trockta_Voice_AttackA01.ogg",
		"Swing_Big01.ogg",
		"Ran_Swing01.ogg",
		"Chief_Of_Trockta_Voice_MagicAttackA01.ogg",
		"Swing_Medium01.ogg",
		"Wyvern_MagicAttack2.ogg",
		"Chief_Of_Trockta_Voice_MagicAttackB01.ogg",
		"Swing_Underwater02.ogg",
		"Chief_Of_Trockta_MagicAttackB01.ogg",
		"Chief_Of_Trockta_Voice_SpecialAttackA_Ready01.ogg",
		"Ran_MagicAttackC01.ogg",
		"Chief_Of_Trockta_Voice_SpecialAttack_A_Loop01.ogg",
		"Chief_Of_Trockta_Voice_SpecialAttack_A_Loop02.ogg",
		"Chief_Of_Trockta_Voice_SpecialAttack_A_Loop03.ogg",
		"Chief_Of_Trockta_Voice_SpecialAttack_B01.ogg",
		"Chief_Of_Trockta_SpecialAttackB01.ogg",
		"Chief_Of_Trockta_Voice_HP_Drain_Ready01.ogg",
		"Shadow_Linker_SpecialAttack.ogg",
		"Swing_Underwater01.ogg",
		"Chief_Of_Trockta_Voice_DamageA01.ogg",
		"Chief_Of_Trockta_Voice_DamageB01.ogg",
		"Chief_Of_Trockta_Voice_Dying01.ogg",
		"Chief_Of_Trockta_Voice_Dying02.ogg",
		"Chief_Of_Trockta_Voice_Dying03.ogg",
	},
}
-------------------------------------------------------------------------
INIT_MOTION = 
{
	MOTION_FILE_NAME	= "Motion_Chief_Of_Trockta.x",
}
-------------------------------------------------------------------------
INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	WALK_SPEED			= 400,
	RUN_SPEED			= 400,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 2300,
}
-------------------------------------------------------------------------
INIT_COMPONENT = 
{
	IMMUNITY_TIME_STOP = TRUE,
	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 130,
	
	USE_SLASH_TRACE		= FALSE,
	
	SHADOW_SIZE			= 200,
	SHADOW_FILE_NAME	= "shadow.dds",
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	FALL_DOWN			= TRUE,
	
	DIE_FLY				= 0,
	
	BOSS_GAGE_FACE_TEX			= "DLG_BossState.tga",
	BOSS_GAGE_FACE_TEX_PIECE	= "CHIEF_OF_TROCKTA",
	BOSS_NAME_TEX				= "HQ_BOSS_NAME_TROCKTA.dds",
}
-------------------------------------------------------------------------
INIT_STATE = 
{
	{ STATE_NAME = "CHIEF_OF_TROCKTA_START",						LUA_STATE_START_FUNC = "CHIEF_OF_TROCKTA_START_STATE_START", },
	{ STATE_NAME = "CHIEF_OF_TROCKTA_WAIT",							},
	{ STATE_NAME = "CHIEF_OF_TROCKTA_WALK",							},
	{ STATE_NAME = "CHIEF_OF_TROCKTA_JUMP_UP",						},
	{ STATE_NAME = "CHIEF_OF_TROCKTA_JUMP_DOWN",					},
	{ STATE_NAME = "CHIEF_OF_TROCKTA_JUMP_UP_DIR",					},
	{ STATE_NAME = "CHIEF_OF_TROCKTA_JUMP_DOWN_DIR",				},
	{ STATE_NAME = "CHIEF_OF_TROCKTA_JUMP_LANDING",					},

	--일반 공격
	{ STATE_NAME = "CHIEF_OF_TROCKTA_ATTACK_A",					STATE_COOL_TIME	= 7,	},
	
	--원거리 공격
	{ STATE_NAME = "CHIEF_OF_TROCKTA_MAGIC_ATTACK_A",				LUA_FRAME_MOVE_FUNC = "CHIEF_OF_TROCKTA_MAGIC_ATTACK_A_FRAME_MOVE",  STATE_COOL_TIME	= 8, },
	
	--유저를 5초간 겁에 질려 도망가게 만듬
	{ STATE_NAME = "CHIEF_OF_TROCKTA_MAGIC_ATTACK_B",				LUA_STATE_START_FUNC = "CHIEF_OF_TROCKTA_MAGIC_ATTACK_B_STATE_START",
																	LUA_FRAME_MOVE_FUNC = "CHIEF_OF_TROCKTA_MAGIC_ATTACK_B_FRAME_MOVE", 	STATE_COOL_TIME	= 40,		 },
	
	--체력 70,40,10%때마다 무적의 보호막 생성하고 공중에 떠오름
	{ STATE_NAME = "CHIEF_OF_TROCKTA_SPECIAL_ATTACK_A_Ready",		LUA_STATE_START_FUNC = "CHIEF_OF_TROCKTA_SA_A_READY_STAGE_START",
																	LUA_FRAME_MOVE_FUNC = "CHIEF_OF_TROCKTA_SA_A_READY_FRAME_MOVE",	STATE_COOL_TIME	= 30,	},
	{ STATE_NAME = "CHIEF_OF_TROCKTA_SPECIAL_ATTACK_A_Loop",		LUA_STATE_START_FUNC = "CHIEF_OF_TROCKTA_SA_A_LOOP_STAGE_START", },
	{ STATE_NAME = "CHIEF_OF_TROCKTA_SPECIAL_ATTACK_A_End",			LUA_STATE_START_FUNC = "CHIEF_OF_TROCKTA_SA_A_END_STAGE_START", },
	
	--돌 무더기 생성과 동시에 유저 머리 위에 징표가 내려옴, 징표는 붉은색으로 변하다가 폭발
	{ STATE_NAME = "CHIEF_OF_TROCKTA_SPECIAL_ATTACK_B", 			LUA_FRAME_MOVE_FUNC = "CHIEF_OF_TROCKTA_SA_B_FRAME_MOVE", STATE_COOL_TIME	= 25, },
	
	--초당 체력 5% 회복
	{ STATE_NAME = "CHIEF_OF_TROCKTA_HP_DRAIN_READY", 				LUA_FRAME_MOVE_FUNC	= "CHIEF_OF_TROCKTA_HP_DRAIN_READY_FRAME_MOVE",	},
	{ STATE_NAME = "CHIEF_OF_TROCKTA_HP_DRAIN_LOOP",				LUA_STATE_START_FUNC = "CHIEF_OF_TROCKTA_HP_DRAIN_LOOP_STATE_START",
																	LUA_STATE_END_FUNC = "CHIEF_OF_TROCKTA_HP_DRAIN_LOOP_STATE_END",},
	{ STATE_NAME = "CHIEF_OF_TROCKTA_HP_DRAIN_END",					LUA_STATE_START_FUNC = "CHIEF_OF_TROCKTA_HP_DRAIN_END_STATE_START", },
	
	--리액션 관련
	{ STATE_NAME = "CHIEF_OF_TROCKTA_DAMAGE_FRONT",					LUA_STATE_END_FUNC = "CHIEF_OF_TROCKTA_DAMAGE_FRONT_STATE_END", },
	{ STATE_NAME = "CHIEF_OF_TROCKTA_DAMAGE_BACK",					LUA_STATE_END_FUNC = "CHIEF_OF_TROCKTA_DAMAGE_BACK_STATE_END", },
	{ STATE_NAME = "CHIEF_OF_TROCKTA_DYING",						LUA_STATE_START_FUNC = "CHIEF_OF_TROCKTA_DYING_STATE_START", },
	
	START_STATE					= "CHIEF_OF_TROCKTA_START",
	WAIT_STATE					= "CHIEF_OF_TROCKTA_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "CHIEF_OF_TROCKTA_DAMAGE_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "CHIEF_OF_TROCKTA_DAMAGE_BACK",
	BIG_DAMAGE_LAND_FRONT		= "CHIEF_OF_TROCKTA_DAMAGE_FRONT",
	BIG_DAMAGE_LAND_BACK		= "CHIEF_OF_TROCKTA_DAMAGE_BACK",
	DOWN_DAMAGE_LAND_FRONT		= "CHIEF_OF_TROCKTA_DAMAGE_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "CHIEF_OF_TROCKTA_DAMAGE_BACK",
	FLY_DAMAGE_FRONT			= "CHIEF_OF_TROCKTA_DAMAGE_FRONT",
	FLY_DAMAGE_BACK				= "CHIEF_OF_TROCKTA_DAMAGE_BACK",
	SMALL_DAMAGE_AIR			= "CHIEF_OF_TROCKTA_DAMAGE_FRONT",	
	BIG_DAMAGE_AIR				= "CHIEF_OF_TROCKTA_DAMAGE_FRONT",
	DOWN_DAMAGE_AIR				= "CHIEF_OF_TROCKTA_DAMAGE_FRONT",
	DOWN_DAMAGE_AIR_LANDING		= "CHIEF_OF_TROCKTA_DAMAGE_FRONT",
	UP_DAMAGE					= "CHIEF_OF_TROCKTA_DAMAGE_FRONT",
	DAMAGE_REVENGE				= "CHIEF_OF_TROCKTA_DAMAGE_FRONT",
	
	DYING_LAND_FRONT			= "CHIEF_OF_TROCKTA_DYING",
	DYING_LAND_BACK				= "CHIEF_OF_TROCKTA_DYING",
	DYING_SKY					= "CHIEF_OF_TROCKTA_DYING",
	
	COMMON_FRAME_FUNC			= "CHIEF_OF_TROCKTA_COMMON_FRAMEMOVE",
}
-------------------------------------------------------------------------
INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 0,		-- sec
		TARGET_NEAR_RANGE			= 250,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 9999,		-- cm
		TARGET_LOST_RANGE			= 9999,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --50,		-- %
		ATTACK_TARGET_RATE			= 100, -- 10,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, -- 50,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE = 
	{		
		DEST_GAP			= 120,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 160,
		
		DIR_CHANGE_INTERVAL = 0,
		
		MOVE_SPLIT_RANGE	= 400,
		WALK_INTERVAL		= 1,
		NEAR_WALK_RATE		= 100,   --  70,
		FAR_WALK_RATE		= 100,   -- 30,
		
		JUMP_INTERVAL		= 5,
		UP_JUMP_RATE		= 100, -- 30,
		UP_DOWN_RATE		= 30,
		DOWN_JUMP_RATE		= 100,    --  30,
		DOWN_DOWN_RATE		= 30,
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 100, --50,		
		PATROL_RANGE			= 300,
		PATROL_COOL_TIME		= 2,
		ONLY_THIS_LINE_GROUP	= TRUE,
	},
	
	ESCAPE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 400,
		ESCAPE_GAP			= 600,	-- 이 거리 보다 멀면 도망 성공
		
		WALK_INTERVAL		= 1,
		NEAR_WALK_RATE		= 100,   --  70,
		FAR_WALK_RATE		= 100,   -- 30,
		
		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 100, -- 30,
		UP_DOWN_RATE		= 30,
		DOWN_JUMP_RATE		= 100,    --  30,
		DOWN_DOWN_RATE		= 30,
	},
}
-------------------------------------------------------------------------START
CHIEF_OF_TROCKTA_START = 
{
	ANIM_NAME					= "WaitStart",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	INVINCIBLE					= { 0, 100, },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,

	IMMADIATE_PACKET_SEND		= TRUE,
		
	SOUND_PLAY0					= { 0.01, "Chief_Of_Trockta_Voice_WaitStart01.ogg", 100, FALSE, -1.0, FALSE },
				
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"CHIEF_OF_TROCKTA_WAIT",							},	
	},
}
function CHIEF_OF_TROCKTA_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	--트락타 몸 주위 연기, 항상 유지
	local pEffectSet = pX2Game:GetEffectSet()
	if nil ~= pEffectSet then	
		local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_Trockta_Wait_state", pNPCUnit )
		if nil ~= hEffect then
			pNPCUnit:SetEffectSet_LUA( 4, hEffect )
		end
	end
end
-------------------------------------------------------------------------WAIT
CHIEF_OF_TROCKTA_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,

	ALLOW_DIR_CHANGE			= TRUE,
	VIEW_TARGET					= TRUE,
	
	EVENT_INTERVAL_TIME0		= 0,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CHIEF_OF_TROCKTA_JUMP_DOWN",														},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CHIEF_OF_TROCKTA_SPECIAL_ATTACK_A_Ready",			"CT_CHIEF_OF_TROCKTA_SPECIAL_ATTACK_A_70",			}, 
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CHIEF_OF_TROCKTA_SPECIAL_ATTACK_A_Ready",			"CT_CHIEF_OF_TROCKTA_SPECIAL_ATTACK_A_40",			}, 
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CHIEF_OF_TROCKTA_SPECIAL_ATTACK_A_Ready",			"CT_CHIEF_OF_TROCKTA_SPECIAL_ATTACK_A_10",			}, 

		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CHIEF_OF_TROCKTA_SPECIAL_ATTACK_B",	"CT_CHIEF_OF_TROCKTA_SPECIAL_ATTACK_B",		},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CHIEF_OF_TROCKTA_ATTACK_A",			"CT_CHIEF_OF_TROCKTA_ATTACK_A",				}, 
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CHIEF_OF_TROCKTA_MAGIC_ATTACK_A",		"CT_CHIEF_OF_TROCKTA_MAGIC_ATTACK_A",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CHIEF_OF_TROCKTA_MAGIC_ATTACK_B",		"CT_CHIEF_OF_TROCKTA_MAGIC_ATTACK_B",		},
			
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"CHIEF_OF_TROCKTA_WALK",															},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"CHIEF_OF_TROCKTA_JUMP_UP",															},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"CHIEF_OF_TROCKTA_JUMP_UP_DIR",														}, 
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"CHIEF_OF_TROCKTA_JUMP_DOWN",														},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"CHIEF_OF_TROCKTA_JUMP_DOWN_DIR",													},
		
	},
	--근접 공격
	CT_CHIEF_OF_TROCKTA_ATTACK_A = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 100,
	},	
	--원거리 마법 공격
	CT_CHIEF_OF_TROCKTA_MAGIC_ATTACK_A =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 500,
		RATE						= 100,
	},
	--모든 플레이어에게 제압 시전
	CT_CHIEF_OF_TROCKTA_MAGIC_ATTACK_B =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 40,
	},
	--보호막 생성,가디언 소환 조건
	CT_CHIEF_OF_TROCKTA_SPECIAL_ATTACK_A_70 =
	{
		EVENT_INTERVAL_ID			= 0,
		MY_HP_LESS_THAN_PERCENT		= 70, --피가 70% 이하일때
		FLAG_FALSE					= 1,  --한번만 실행되도록 체크
	},
	
	CT_CHIEF_OF_TROCKTA_SPECIAL_ATTACK_A_40 =
	{
		EVENT_INTERVAL_ID			= 0,
		MY_HP_LESS_THAN_PERCENT		= 40, --피가 40% 이하일때
		FLAG_FALSE					= 2,  --한번만 실행되도록 체크
	},
	
	CT_CHIEF_OF_TROCKTA_SPECIAL_ATTACK_A_10 =
	{
		EVENT_INTERVAL_ID			= 0,
		MY_HP_LESS_THAN_PERCENT		= 10, --피가 10% 이하일때
		FLAG_FALSE					= 3,  --한번만 실행되도록 체크
	},
	
	--돌무더기 소환->유저를 가둠.
	CT_CHIEF_OF_TROCKTA_SPECIAL_ATTACK_B =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1200,
		RATE						= 40,
	},
}
-------------------------------------------------------------------------WALK
CHIEF_OF_TROCKTA_WALK = 
{
	ANIM_NAME					= "Walk",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	ALLOW_DIR_CHANGE			= TRUE,
	VIEW_TARGET					= TRUE,
	
	EVENT_INTERVAL_TIME0		= 0,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CHIEF_OF_TROCKTA_JUMP_DOWN",														},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CHIEF_OF_TROCKTA_SPECIAL_ATTACK_A_Ready",			"CT_CHIEF_OF_TROCKTA_SPECIAL_ATTACK_A_70",			}, 
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CHIEF_OF_TROCKTA_SPECIAL_ATTACK_A_Ready",			"CT_CHIEF_OF_TROCKTA_SPECIAL_ATTACK_A_40",			}, 
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CHIEF_OF_TROCKTA_SPECIAL_ATTACK_A_Ready",			"CT_CHIEF_OF_TROCKTA_SPECIAL_ATTACK_A_10",			}, 

		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CHIEF_OF_TROCKTA_SPECIAL_ATTACK_B",	"CT_CHIEF_OF_TROCKTA_SPECIAL_ATTACK_B",		},
			
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CHIEF_OF_TROCKTA_ATTACK_A",			"CT_CHIEF_OF_TROCKTA_ATTACK_A",				}, 
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CHIEF_OF_TROCKTA_MAGIC_ATTACK_A",		"CT_CHIEF_OF_TROCKTA_MAGIC_ATTACK_A",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CHIEF_OF_TROCKTA_MAGIC_ATTACK_B",		"CT_CHIEF_OF_TROCKTA_MAGIC_ATTACK_B",		},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"CHIEF_OF_TROCKTA_WAIT",															},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"CHIEF_OF_TROCKTA_JUMP_UP",															},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"CHIEF_OF_TROCKTA_JUMP_UP_DIR",														}, 
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"CHIEF_OF_TROCKTA_JUMP_DOWN",														},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"CHIEF_OF_TROCKTA_JUMP_DOWN_DIR",													},
		
	},
	--근접 공격
	CT_CHIEF_OF_TROCKTA_ATTACK_A = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 100,
	},	
	--원거리 마법 공격
	CT_CHIEF_OF_TROCKTA_MAGIC_ATTACK_A =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 500,
		RATE						= 100,
	},
	--모든 플레이어에게 제압 시전
	CT_CHIEF_OF_TROCKTA_MAGIC_ATTACK_B =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 40,
	},
	--보호막 생성,가디언 소환 조건
	CT_CHIEF_OF_TROCKTA_SPECIAL_ATTACK_A_70 =
	{
		EVENT_INTERVAL_ID			= 0,
		MY_HP_LESS_THAN_PERCENT		= 70, --피가 70% 이하일때
		FLAG_FALSE					= 1,  --한번만 실행되도록 체크
	},
	
	CT_CHIEF_OF_TROCKTA_SPECIAL_ATTACK_A_40 =
	{
		EVENT_INTERVAL_ID			= 0,
		MY_HP_LESS_THAN_PERCENT		= 40, --피가 40% 이하일때
		FLAG_FALSE					= 2,  --한번만 실행되도록 체크
	},
	
	CT_CHIEF_OF_TROCKTA_SPECIAL_ATTACK_A_10 =
	{
		EVENT_INTERVAL_ID			= 0,
		MY_HP_LESS_THAN_PERCENT		= 10, --피가 10% 이하일때
		FLAG_FALSE					= 3,  --한번만 실행되도록 체크
	},
	
	--돌무더기 소환->유저를 가둠.
	CT_CHIEF_OF_TROCKTA_SPECIAL_ATTACK_B =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1200,
		RATE						= 40,
	},
}
-------------------------------------------------------------------------JUMP_UP
CHIEF_OF_TROCKTA_JUMP_UP = 
{
	ANIM_NAME					= "JumpUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	SPEED_Y						= INIT_PHYSIC["JUMP_SPEED"],
	ADD_POS_Y					= 45,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"CHIEF_OF_TROCKTA_JUMP_DOWN", },
	},
}
-------------------------------------------------------------------------JUMP_DOWN
CHIEF_OF_TROCKTA_JUMP_DOWN = 
{
	ANIM_NAME					= "JumpDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"CHIEF_OF_TROCKTA_JUMP_LANDING", },
	},
}
-------------------------------------------------------------------------JUMP_UP_DIR
CHIEF_OF_TROCKTA_JUMP_UP_DIR = 
{
	ANIM_NAME					= "JumpUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	ADD_POS_Y					= 45,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	SPEED_Y						= INIT_PHYSIC["JUMP_SPEED"],
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"CHIEF_OF_TROCKTA_JUMP_DOWN_DIR", },
	},
}
-------------------------------------------------------------------------JUMP_DOWN_DIR
CHIEF_OF_TROCKTA_JUMP_DOWN_DIR = 
{
	ANIM_NAME					= "JumpDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
			
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"CHIEF_OF_TROCKTA_JUMP_LANDING", },
	},
}
-------------------------------------------------------------------------JUMP_LANDING
CHIEF_OF_TROCKTA_JUMP_LANDING = 
{
	ANIM_NAME					= "JumpDownLanding",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CHIEF_OF_TROCKTA_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CHIEF_OF_TROCKTA_WAIT",					},
	},
}
-------------------------------------------------------------------------ATTACK_A
CHIEF_OF_TROCKTA_ATTACK_A = 
{
	ANIM_NAME					= "Attack_A",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	ANIM_SPPED					= 1.0,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	SUPER_ARMOR_TIME0			= { 0.0, 0.82, },
	SUPER_ARMOR_NOT_RED			= TRUE,
	
	ALLOW_DIR_CHANGE			= TRUE,
	VIEW_TARGET					= TRUE,

		SOUND_PLAY0 = { 0.01, "Chief_Of_Trockta_Voice_AttackA01.ogg"},
		SOUND_PLAY1 = { 0.61, "Swing_Big01.ogg"},
		SOUND_PLAY2 = { 0.61, "Ran_Swing01.ogg"},
		

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CHIEF_OF_TROCKTA_JUMP_DOWN", },
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CHIEF_OF_TROCKTA_WAIT", },
	},
	
	ATTACK_TIME0				= { 0.8, 0.9, },
		
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_ROD_SLASH"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},

		
		BACK_SPEED_X			= 1600,
		BACK_SPEED_Y			= 0,
		
		CAMERA_CRASH_GAP		= 5.0,
		CAMERA_CRASH_TIME		= 0.2,

		RE_ATTACK				= FALSE,
		HIT_GAP					= 0.2,
	},
	EFFECT_SET_LIST =
	{
		"EffectSet_Attack_A", 0.0,
	},
}
-------------------------------------------------------------------------MAGIC_ATTACK_A
CHIEF_OF_TROCKTA_MAGIC_ATTACK_A =
{
	ANIM_NAME					= "Magic_Attack_A",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	ANIM_SPEED					= 1.0,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	SUPER_ARMOR_TIME0			= { 0.0, 1.4, },

	ALLOW_DIR_CHANGE			= TRUE,
	VIEW_TARGET					= TRUE,
	
	SOUND_PLAY0 = { 0.01, "Chief_Of_Trockta_Voice_MagicAttackA01.ogg"},
	SOUND_PLAY1 = { 1.21, "Swing_Medium01.ogg"},
	SOUND_PLAY2 = { 1.21, "Wyvern_MagicAttack2.ogg"},
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CHIEF_OF_TROCKTA_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CHIEF_OF_TROCKTA_WAIT",		},
	},
	EFFECT_SET_LIST =
	{
		"EffectSet_MA_A", 0.0,
	},
}
function CHIEF_OF_TROCKTA_MAGIC_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 1.5 ) then	
		local pDamageEffect = pX2Game:GetDamageEffect()
		
		if nil ~= pDamageEffect then
			local pos = pNPCUnit:GetLandPosition_LUA()
			local EffectPos = pNPCUnit:GetBonePos_LUA( "ATTACK_SPHERE1_LHand" )
			EffectPos.y = EffectPos.y - 100
			pDamageEffect:CreateInstance_LUA( pNPCUnit, "DAMAGE_EFFECT_CHIEF_OF_TROCKTA_MAGIC_ATTACK_A", EffectPos, pos.y )
		end
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 2.3 ) then
		local pDamageEffect = pX2Game:GetDamageEffect()
		
		if nil ~= pDamageEffect then
			local pos = pNPCUnit:GetLandPosition_LUA()
			local EffectPos = pNPCUnit:GetBonePos_LUA( "ATTACK_SPHERE1_LHand" )
			EffectPos.y = EffectPos.y -150
			pDamageEffect:CreateInstance_LUA( pNPCUnit, "DAMAGE_EFFECT_CHIEF_OF_TROCKTA_MAGIC_ATTACK_A", EffectPos, pos.y )
		end
	end

end
-------------------------------------------------------------------------MAGIC_ATTACK_B
CHIEF_OF_TROCKTA_MAGIC_ATTACK_B =
{
	ANIM_NAME					= "Magic_Attack_B",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	SUPER_ARMOR					= TRUE,
	LAND_CONNECT				= FALSE,
	
	ANIM_SPEED					= 1.0,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	ALLOW_DIR_CHANGE			= TRUE,
	VIEW_TARGET					= TRUE,
	
	SOUND_PLAY0 = { 0.01, "Chief_Of_Trockta_Voice_MagicAttackB01.ogg"},
	SOUND_PLAY1 = { 1.11, "Swing_Underwater02.ogg"},
	SOUND_PLAY2 = { 1.20, "Chief_Of_Trockta_MagicAttackB01.ogg"},
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CHIEF_OF_TROCKTA_HP_DRAIN_READY",	},
	},
}
function CHIEF_OF_TROCKTA_MAGIC_ATTACK_B_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	--트락타 모션에 따른 위치 제어
	pNPCUnit:SetGAccel(0)
	pNPCUnit:SetSpeedY(10)
	
	--정면으로 가면이 커지는 이펙트
	local pEffectSet = pX2Game:GetEffectSet()
	if nil ~= pEffectSet then
		local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_MA_B", pNPCUnit )
		if nil ~= hEffect then
			pNPCUnit:SetEffectSet_LUA( 3, hEffect )
		end
	end
end

function CHIEF_OF_TROCKTA_MAGIC_ATTACK_B_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	--트락타 모션에 따른 위치 제어
	if pNPCUnit:AnimEventTimer_LUA( 0.275 ) then
		pNPCUnit:SetGAccel(0)
		pNPCUnit:SetSpeedY(70)
	elseif pNPCUnit:AnimEventTimer_LUA( 1.08 ) then
		pNPCUnit:SetGAccel(0)
		pNPCUnit:SetSpeedY(0)
	elseif pNPCUnit:AnimEventTimer_LUA( 1.10 ) then
		pNPCUnit:SetGAccel(0)
		pNPCUnit:SetSpeedY(350)
	elseif pNPCUnit:AnimEventTimer_LUA( 1.45 ) then
		pNPCUnit:SetGAccel(0)
		pNPCUnit:SetSpeedY(0)
	elseif pNPCUnit:AnimEventTimer_LUA( 2.3 ) then
		pNPCUnit:SetGAccel(30)
		pNPCUnit:SetSpeedY(-400)
	end

	--해당 시간에 살아있는 유저들에게 스턴,프레스 버프 시전
	if pNPCUnit:AnimEventTimer_LUA( 1.45 ) then
		local iNumofUser = pX2Game:GetUserUnitListSize()
		
		for i = 0, iNumofUser - 1 do
			local pUser = pX2Game:GetUserUnit( i )
			
			if nil ~= pUser then
				if 0.0 < pUser:GetNowHP() then
					pUser:SetBuffFactorToGameUnitByBuffFactorID_LUA( BUFF_FACTOR_ID["BFI_BUFF_TROCKTA_MAGICATTACKB_STUN"] )
					pUser:SetBuffFactorToGameUnitByBuffFactorID_LUA( BUFF_FACTOR_ID["BFI_BUFF_TROCKTA_MAGICATTACKB_PRESS"] )
				end
			end
		end
	end
end
-------------------------------------------------------------------------SPECIAL_ATTACK_A_Ready
CHIEF_OF_TROCKTA_SPECIAL_ATTACK_A_Ready =
{
	ANIM_NAME					= "Special_Attack_A_Ready",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,

	ANIM_SPEED					= 1.0,
	
	SUPER_ARMOR					= TRUE,
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	ALLOW_DIR_CHANGE			= TRUE,
	VIEW_TARGET					= TRUE,
	
	INVINCIBLE					= { 0.7, 100, },
	
		SOUND_PLAY0 = { 0.01, "Chief_Of_Trockta_Voice_SpecialAttackA_Ready01.ogg"},
		SOUND_PLAY1 = { 0.71, "Ran_MagicAttackC01.ogg"},
	
	ALARM =
	{
		DANGER  				 = TRUE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_23188,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = TRUE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_ORANGE"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 5, 				  			    -- 표시 지속 시간
	},	
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CHIEF_OF_TROCKTA_SPECIAL_ATTACK_A_Loop", },
	},
}

function CHIEF_OF_TROCKTA_SA_A_READY_STAGE_START( pKTDXApp, pX2Game, pNPCUnit )
	--무적 보호막 생성
	local pEffectSet = pX2Game:GetEffectSet()
	if nil ~= pEffectSet then
		local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_SA_A_SHIELD", pNPCUnit )
		if nil ~= hEffect then
			pNPCUnit:SetEffectSet_LUA( 2, hEffect )
		end
	end
	
	if false == pNPCUnit:GetFlag_LUA( 1 ) then --피가 70%일때
		pNPCUnit:SetFlag_LUA( 1, true )
		pNPCUnit:SetInt_LUA( 0, 3 )				--트락 가디언 3마리 소환
		return
	end
	
	if false == pNPCUnit:GetFlag_LUA( 2 ) then --피가 40%일때
		pNPCUnit:SetFlag_LUA( 2, true )
		pNPCUnit:SetInt_LUA( 0, 4 )			   --트락 가디언 4마리 소환
		return
	end
	
	if false == pNPCUnit:GetFlag_LUA( 3 ) then --피가 10%일때
		pNPCUnit:SetFlag_LUA( 3, true )
		pNPCUnit:SetInt_LUA( 0, 5 )			   --트락 가디언 5마리 소환
	end
end

function CHIEF_OF_TROCKTA_SA_A_READY_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	--트락타 모션에 따른 위치 제어
	if pNPCUnit:AnimEventTimer_LUA( 0.486) then
		pNPCUnit:SetGAccel(0)
		pNPCUnit:SetSpeedY(200)
	elseif pNPCUnit:AnimEventTimer_LUA( 1.014 ) then
		pNPCUnit:SetGAccel(0)
		pNPCUnit:SetSpeedY(-150)
	elseif pNPCUnit:AnimEventTimer_LUA( 1.904 ) then
		pNPCUnit:SetGAccel(0)
		pNPCUnit:SetSpeedY(250)
	elseif pNPCUnit:AnimEventTimer_LUA( 3.0 ) then
		pNPCUnit:SetGAccel(0)
		pNPCUnit:SetSpeedY(0)
	end
	
	--트락 가디언 소환
	if pNPCUnit:AnimEventTimer_LUA( 3.2 ) then	
		local bonePos = pNPCUnit:GetBonePos_LUA("Bip01_R_Finger2Nub")
		local pMajorParticle = pX2Game:GetMajorParticle()
		local startPos = 4
		if nil ~= pMajorParticle then
			--소환될 개체수를 받아옴
			local summonNum = pNPCUnit:GetInt_LUA( 0 )
			
			--소환되는 수만큼 반복
			for i = 1, summonNum do 
				--라인맵 인덱스에서 시작위치 읽어옴
				local Position = pX2Game:GetLineMap():GetStartPosition( startPos ) 
				--파티클을 손에서부터 시작위치로 이동하도록 작성(블랙홀 이용)
				local pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "trock_Dog_Togi_SA_WaitStart",	bonePos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(1,-1) )
				pParticle:SetLandPosition( Position.y )
				pParticle:SetBlackHolePosition( Position )
				--파티클이 시작위치에 떨어진 후(1.9초) 트락가디언이 소환되도록 작성
				pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_RASH_TROCK_GUARD"], pNPCUnit:GetHardLevel(), false, Position, true, 1.9, true, 10 )
				--라인맵 인덱스를 증가시킴
				startPos = startPos + 1
			end
	
			pX2Game:FlushCreateNPCReq()	
			pNPCUnit:SetTimerRestart( 1 )
		end
	end
end
-------------------------------------------------------------------------SPECIAL_ATTACK_A_Loop
CHIEF_OF_TROCKTA_SPECIAL_ATTACK_A_Loop =
{
	ANIM_NAME					= "Special_Attack_A_Loop",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	ANIM_SPEED					= 1.0,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	INVINCIBLE					= { 0, 99999, },
	
	SOUND_SET0_RATE = 33, 
	SOUND_SET1_RATE = 33, 
	SOUND_SET2_RATE = 34, 

	SOUND_SET0 =   
	{
		NORMAL =
		{
			SOUND_PLAY0    = { 0.01, "Chief_Of_Trockta_Voice_SpecialAttack_A_Loop01.ogg"},                        
		},                     
	},
	SOUND_SET1 =   
	{
		NORMAL =
		{
			SOUND_PLAY0    = { 0.01, "Chief_Of_Trockta_Voice_SpecialAttack_A_Loop02.ogg" },                               
		},                     
	},
	SOUND_SET2 =   
	{
		NORMAL =
		{
			SOUND_PLAY0    = { 0.01, "Chief_Of_Trockta_Voice_SpecialAttack_A_Loop03.ogg"},                               
		},                     
	},
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"CHIEF_OF_TROCKTA_SPECIAL_ATTACK_A_End",	"CF_CHIEF_OF_TROCKTA_SPECIAL_ATTACK_A",	},
	},
}

function CHIEF_OF_TROCKTA_SA_A_LOOP_STAGE_START( pKTDXApp, pX2Game, pNPCUnit )
	--트락타 모션에 따른 위치 제어
	pNPCUnit:SetGAccel(0)
	pNPCUnit:SetSpeedY(0)
end

function CF_CHIEF_OF_TROCKTA_SPECIAL_ATTACK_A( pKTDXApp, pX2Game, pNPCUnit )
	local fCheckTime = 5.5
	if fCheckTime < pNPCUnit:GetTimerElapsedTime( 1 ) then
		--맵안에 npc 개체수를 받아옴
		local iNumOfNpc = pX2Game:GetNPCUnitListSize()
		local checkNpcNum = 0
		
		--개체수만큼 for문을 돌며 검사
		for i = 0, iNumOfNpc - 1 do
			local pNpc = pX2Game:GetNPCUnit( i )
			
			if nil ~= pNpc then
				--살아있는지
				local npcHp = pNpc:GetNowHP_LUA()
				if npcHp > 0 then
					--살아있다면 트락가디언인지
					if true == pNpc:IsUnitID( NPC_UNIT_ID["NUI_RASH_TROCK_GUARD"] ) then
						--트락가디언이 살아서 존재한다면 체크넘버 증가
						checkNpcNum = checkNpcNum + 1
					end
				end
			end
		end
		
		--트락 가디언이 하나도 없으면 end state로 넘어감
		if checkNpcNum == 0 then 
			return true
		end
	end
	
	return false
end
-------------------------------------------------------------------------SPECIAL_ATTACK_A_End
 CHIEF_OF_TROCKTA_SPECIAL_ATTACK_A_End =
 {
	ANIM_NAME					= "Special_Attack_A_End",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
		
	ANIM_SPEED					= 1.0,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"CHIEF_OF_TROCKTA_WAIT",			},
	},
}
 function CHIEF_OF_TROCKTA_SA_A_END_STAGE_START( pKTDXApp, pX2Game, pNPCUnit )
	ClearEffect_Shield( pKTDXApp, pX2Game, pNPCUnit )
	
	--트락타 모션에 따른 위치 제어
	pNPCUnit:SetGAccel(0)
	pNPCUnit:SetSpeedY(-300)
 end
-------------------------------------------------------------------------SPECIAL_ATTACK_B
CHIEF_OF_TROCKTA_SPECIAL_ATTACK_B =
{
	ANIM_NAME					= "Special_Attack_B",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	ANIM_SPEED					= 1.0,
	
	SUPER_ARMOR					= TRUE,
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	ALLOW_DIR_CHANGE			= TRUE,
	VIEW_TARGET					= TRUE,
	
	SOUND_PLAY0 = { 0.01, "Chief_Of_Trockta_Voice_SpecialAttack_B01.ogg"},
	SOUND_PLAY1 = { 2.50, "Chief_Of_Trockta_SpecialAttackB01.ogg"},

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CHIEF_OF_TROCKTA_WAIT",},
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_SA_B_MAGIC", 0.0,
	},	
}
function CHIEF_OF_TROCKTA_SA_B_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	--트락타 모션에 따른 위치 제어
	if pNPCUnit:AnimEventTimer_LUA( 0.455 ) then
		pNPCUnit:SetGAccel(0)
		pNPCUnit:SetSpeedY(350)
	elseif pNPCUnit:AnimEventTimer_LUA( 1.491 ) then
		pNPCUnit:SetGAccel(0)
		pNPCUnit:SetSpeedY(0)
	elseif pNPCUnit:AnimEventTimer_LUA( 8.1 ) then
		pNPCUnit:SetGAccel(20)
		pNPCUnit:SetSpeedY(-400)
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 1.829 ) then	--해당 시간에 트랩 소환
		local iNumofUser = pX2Game:GetUserUnitListSize()
		
		for i = 0, iNumofUser - 1 do
			local pUser = pX2Game:GetUserUnit( i )	--유저유닛을 가져옴
			
			if nil ~= pUser then					
				if 0.0 < pUser:GetNowHP() then		--유저가 살아 있다면
					local SummonPos = pUser:GetPos()--유저의 현재 위치 체크, 유저의 땅부분 체크,	
					local SummonLandPos = pUser:GetLandPosition_LUA()
					local checkHeight = SummonPos.y - SummonLandPos.y
					if checkHeight < 200 then --유저의 높이가 200보다 작을때만 소환
						pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_TROCKTA_TRAP"], pNPCUnit:GetHardLevel(), false, SummonPos, true, 0.0, true )
					end
				end
			end
		end
	end
end
-------------------------------------------------------------------------HP_DRAIN_READY
CHIEF_OF_TROCKTA_HP_DRAIN_READY =
{
	ANIM_NAME					= "HP_Drain_Ready",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	ANIM_SPEED					= 1.0,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	SUPER_ARMOR					= TRUE,
	
	ALLOW_DIR_CHANGE			= TRUE,
	VIEW_TARGET					= TRUE,
		
	SOUND_PLAY0 = { 0.01, "Chief_Of_Trockta_Voice_HP_Drain_Ready01.ogg"},
	SOUND_PLAY1 = { 0.81, "Shadow_Linker_SpecialAttack.ogg"},
	SOUND_PLAY2 = { 0.61, "Swing_Underwater01.ogg"},
	

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CHIEF_OF_TROCKTA_HP_DRAIN_LOOP",		},
	},
}
function CHIEF_OF_TROCKTA_HP_DRAIN_READY_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	--트락타 모션에 따른 위치 제어
	if pNPCUnit:AnimEventTimer_LUA( 0.1 ) then
		pNPCUnit:SetGAccel(-1400)
		pNPCUnit:SetSpeedY(500)
	elseif pNPCUnit:AnimEventTimer_LUA( 0.34 ) then
		pNPCUnit:SetGAccel(0)
		pNPCUnit:SetSpeedY(0)
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 0.1 ) then
		local pEffectSet = pX2Game:GetEffectSet()
		if nil ~= pEffectSet then
			--트락타 몸 주위 버프, 손에 혈기
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_HP_Drain_Blood", pNPCUnit )
			if nil ~= hEffect then
				pNPCUnit:SetEffectSet_LUA( 0, hEffect )
			end
			--케릭터 몸에 소용돌이
			local vPos = pNPCUnit:GetBonePos_LUA( "Bip01_Neck" )
			local pNearUser = pX2Game:GetNearestUserUnitInSpecificRange_LUA( vPos, 0, 9999 )
		
			pNPCUnit:SetTargetUnit( pNearUser )
			pNPCUnit:SetNearestGUUser( pNearUser )
			
			local hEffect = pEffectSet:PlayEffectSet_LUA("EffectSet_HP_Drain_Maelstrom", pNearUser )
			if nil ~= hEffect then
				pNPCUnit:SetEffectSet_LUA( 1, hEffect )
			end
		end
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 0.8 ) then
		--트락타와 케릭터간 링크
		local pMajorXMeshPlayer = pX2Game:GetMajorXMeshPlayer()
		if nil ~= pMajorXMeshPlayer then
			local vLinkedUser = pNPCUnit:GetNearestGUUser()
			local vLinkedPos = vLinkedUser:GetPos()
			vLinkedPos.y = vLinkedPos.y + 110
			local vBonePos = pNPCUnit:GetBonePos_LUA( "Bip01_R_Finger2Nub" )
			local offset = pNPCUnit:GetBonePos_LUA( "Bip01_R_Forearm" )
			local fDist = pX2Game:GetDist_LUA( vBonePos, vLinkedPos )
			
			if fDist <= 0 then
				fDist = 1
			end
			
			local fScaleX = fDist / 580
			
			--손에 혈기 이펙트를 알맞은 장소에 나오게 offset값을 더해서 이동
			vBonePos.x = ( vBonePos.x + ( vBonePos.x - offset.x ) * 0.2 )
			vBonePos.y = ( vBonePos.y + ( vBonePos.y - offset.y ) * 0.5 )
			vBonePos.z = ( vBonePos.z + ( vBonePos.z - offset.z ) * 0.2 )
			
			local rotDegree = pNPCUnit:GetRotateDegree()
			
			vLinkedPos.x = ( vLinkedPos.x - vBonePos.x )
			vLinkedPos.y = ( vLinkedPos.y - vBonePos.y )
			vLinkedPos.z = ( vLinkedPos.z - vBonePos.z )
			
			local vDir = GetDirVecToDegree( vLinkedPos )
			local pMeshPlayer = pMajorXMeshPlayer:CreateInstance_LUA( "CHIEF_OF_TROCKTA_HP_Drain_M01", vBonePos, vDir, vDir, 14 )
			pMeshPlayer:SetScale_LUA( fScaleX, 1.0, 1.0 )
			if nil ~= pMeshPlayer then
				pNPCUnit:SetMajorMeshPlayer_LUA( 0, pMeshPlayer)
			end
			
		--스킬 시전 시간 리셋
		pNPCUnit:SetTimerRestart( 0 )
		--스킬 시전 타이밍에 hp 체크
		local startHP = pNPCUnit:GetNowHP_LUA()
		pNPCUnit:SetVector_LUA( 0, D3DXVECTOR3( startHP, 0, 0 ) )
		
		pNPCUnit:SetFlag_LUA( 0, true )
		
		--자기 자신에게 hp회복 버프
		pNPCUnit:SetBuffFactorToGameUnitByBuffFactorID_LUA( BUFF_FACTOR_ID["BFI_BUFF_TROCKTA_HP_DRAIN"] )
		
		local UserMaxHp = vLinkedUser:GetMaxHP()		--유저의 maxhp를 가져와 저장
		local MinusHp = UserMaxHp * 0.04				--4%씩 hp를 깍는다
		pNPCUnit:SetVector_LUA( 1, D3DXVECTOR3( MinusHp, 0, 0 ) ) --마이너스양을 계산해서 저장해둠
		
		--유저의 피를 1초씩 깍기 위한 타이머
		pNPCUnit:SetTimerRestart( 2 )
		pNPCUnit:SetVector_LUA( 2, D3DXVECTOR3( 0, 0, 0 ) ) 
		end
	end
end
-------------------------------------------------------------------------HP_DRAIN_LOOP
CHIEF_OF_TROCKTA_HP_DRAIN_LOOP =
{
	ANIM_NAME					= "HP_Drain_Loop",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	ANIM_SPPED					= 1.0,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	ALLOW_DIR_CHANGE			= TRUE,
	VIEW_TARGET					= TRUE,
	
	SUPER_ARMOR					= TRUE,
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"CHIEF_OF_TROCKTA_HP_DRAIN_END",	"CF_CHIEF_OF_TROCKTA_HP_DRAIN",	},
	},
}
function CHIEF_OF_TROCKTA_HP_DRAIN_LOOP_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	--트락타 모션에 따른 위치 제어
	pNPCUnit:SetGAccel(0)
	pNPCUnit:SetSpeedY(0)
end

function CF_CHIEF_OF_TROCKTA_HP_DRAIN( pKTDXApp, pX2Game, pNPCUnit )

	local fLinkTime = 10.0
	local checkNPCHP = pNPCUnit:GetVector_LUA( 0 )
	local nowHP = pNPCUnit:GetNowHP_LUA()

	--스킬 시전시간 10초 체크
	if fLinkTime <= pNPCUnit:GetTimerElapsedTime( 0 ) then
		return true
	end
	
	--스킬 시전동안 체력이 0.05% 깍였는지 체크
	checkNPCHP.x = checkNPCHP.x * 0.92
	if nowHP <= checkNPCHP.x then
		return true
	end
	
	--타겟의 hp가 1인지 체크
	local vTargetUser = pNPCUnit:GetTargetUser()
	if 1 == vTargetUser:GetNowHP() then
		return true
	end
	
	return false
end

function CHIEF_OF_TROCKTA_HP_DRAIN_LOOP_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetTimerRestart( 0 )
	ClearEffect_HP_Drain( pKTDXApp, pX2Game, pNPCUnit )  
	pNPCUnit:SetFlag_LUA( 0, false )
	pNPCUnit:EraseBuffTempletFromGameUnit_LUA( BUFF_TEMPLET_ID["BTI_BUFF_TROCKTA_HP_DRAIN"] )
end
-------------------------------------------------------------------------HP_DRAIN_END
CHIEF_OF_TROCKTA_HP_DRAIN_END =
{
	ANIM_NAME					= "HP_Drain_End",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	ANIMI_SPEED					= 1.0,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	VIEW_TARGET					= TRUE,
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"CHIEF_OF_TROCKTA_WAIT",			},
	},
}

function CHIEF_OF_TROCKTA_HP_DRAIN_END_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	--트락타 모션에 따른 위치 제어
	pNPCUnit:SetGAccel(50)
	pNPCUnit:SetSpeedY(-230)
end

-------------------------------------------------------------------------DAMAGE_FRONT
CHIEF_OF_TROCKTA_DAMAGE_FRONT = 
{
	ANIM_NAME					= "DamageFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0 = { 0.01, "Chief_Of_Trockta_Voice_DamageA01.ogg",30},
	EVENT_INTERVAL_TIME0		= 0,

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CHIEF_OF_TROCKTA_SPECIAL_ATTACK_A_Ready",			"CT_CHIEF_OF_TROCKTA_SPECIAL_ATTACK_A_70",			}, 
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CHIEF_OF_TROCKTA_SPECIAL_ATTACK_A_Ready",			"CT_CHIEF_OF_TROCKTA_SPECIAL_ATTACK_A_40",			}, 
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CHIEF_OF_TROCKTA_SPECIAL_ATTACK_A_Ready",			"CT_CHIEF_OF_TROCKTA_SPECIAL_ATTACK_A_10",			}, 
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CHIEF_OF_TROCKTA_SPECIAL_ATTACK_B",	"CT_CHIEF_OF_TROCKTA_SPECIAL_ATTACK_B",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CHIEF_OF_TROCKTA_ATTACK_A",			"CT_CHIEF_OF_TROCKTA_ATTACK_A",				}, 
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CHIEF_OF_TROCKTA_MAGIC_ATTACK_A",		"CT_CHIEF_OF_TROCKTA_MAGIC_ATTACK_A",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CHIEF_OF_TROCKTA_MAGIC_ATTACK_B",		"CT_CHIEF_OF_TROCKTA_MAGIC_ATTACK_B",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CHIEF_OF_TROCKTA_WAIT", },
	},	 	
			
			
	--근접 공격		
	CT_CHIEF_OF_TROCKTA_ATTACK_A = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 100,
	},	
	--원거리 마법 공격
	CT_CHIEF_OF_TROCKTA_MAGIC_ATTACK_A =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 500,
		RATE						= 100,
	},
	--모든 플레이어에게 제압 시전
	CT_CHIEF_OF_TROCKTA_MAGIC_ATTACK_B =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 40,
	},
	--보호막 생성,가디언 소환 조건
	CT_CHIEF_OF_TROCKTA_SPECIAL_ATTACK_A_70 =
	{
		EVENT_INTERVAL_ID			= 0,
		MY_HP_LESS_THAN_PERCENT		= 70, --피가 70% 이하일때
		FLAG_FALSE					= 1,  --한번만 실행되도록 체크
	},
	CT_CHIEF_OF_TROCKTA_SPECIAL_ATTACK_A_40 =
	{
		EVENT_INTERVAL_ID			= 0,
		MY_HP_LESS_THAN_PERCENT		= 40, --피가 40% 이하일때
		FLAG_FALSE					= 2,  --한번만 실행되도록 체크
	},
	CT_CHIEF_OF_TROCKTA_SPECIAL_ATTACK_A_10 =
	{
		EVENT_INTERVAL_ID			= 0,
		MY_HP_LESS_THAN_PERCENT		= 10, --피가 10% 이하일때
		FLAG_FALSE					= 3,  --한번만 실행되도록 체크
	},
	--돌무더기 소환->유저를 가둠.
	CT_CHIEF_OF_TROCKTA_SPECIAL_ATTACK_B =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1200,
		RATE						= 40,
	},
}

function CHIEF_OF_TROCKTA_DAMAGE_FRONT_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	ClearEffect_HP_Drain( pKTDXApp, pX2Game, pNPCUnit )
	ClearEffect_Shield( pKTDXApp, pX2Game, pNPCUnit )
	ClearEffect_Stun( pKTDXApp, pX2Game, pNPCUnit )
end
-------------------------------------------------------------------------DAMAGE_BACK
CHIEF_OF_TROCKTA_DAMAGE_BACK =
{
	ANIM_NAME					= "DamageBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0 = { 0.01, "Chief_Of_Trockta_Voice_DamageB01.ogg",30},

	EVENT_INTERVAL_TIME0		= 0,
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CHIEF_OF_TROCKTA_SPECIAL_ATTACK_A_Ready",			"CT_CHIEF_OF_TROCKTA_SPECIAL_ATTACK_A_70",			}, 
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CHIEF_OF_TROCKTA_SPECIAL_ATTACK_A_Ready",			"CT_CHIEF_OF_TROCKTA_SPECIAL_ATTACK_A_40",			}, 
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CHIEF_OF_TROCKTA_SPECIAL_ATTACK_A_Ready",			"CT_CHIEF_OF_TROCKTA_SPECIAL_ATTACK_A_10",			}, 
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CHIEF_OF_TROCKTA_SPECIAL_ATTACK_B",	"CT_CHIEF_OF_TROCKTA_SPECIAL_ATTACK_B",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CHIEF_OF_TROCKTA_MAGIC_ATTACK_A",		"CT_CHIEF_OF_TROCKTA_MAGIC_ATTACK_A",		},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CHIEF_OF_TROCKTA_MAGIC_ATTACK_B",		"CT_CHIEF_OF_TROCKTA_MAGIC_ATTACK_B",		},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CHIEF_OF_TROCKTA_WAIT", },
		
	},
	--원거리 마법 공격
	CT_CHIEF_OF_TROCKTA_MAGIC_ATTACK_A =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 500,
		RATE						= 100,
	},
	--모든 플레이어에게 제압 시전
	CT_CHIEF_OF_TROCKTA_MAGIC_ATTACK_B =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,
		RATE						= 40,
	},
	--보호막 생성,가디언 소환 조건
	CT_CHIEF_OF_TROCKTA_SPECIAL_ATTACK_A_70 =
	{
		EVENT_INTERVAL_ID			= 0,
		MY_HP_LESS_THAN_PERCENT		= 70, --피가 70% 이하일때
		FLAG_FALSE					= 1,  --한번만 실행되도록 체크
	},
	CT_CHIEF_OF_TROCKTA_SPECIAL_ATTACK_A_40 =
	{
		EVENT_INTERVAL_ID			= 0,
		MY_HP_LESS_THAN_PERCENT		= 40, --피가 40% 이하일때
		FLAG_FALSE					= 2,  --한번만 실행되도록 체크
	},
	CT_CHIEF_OF_TROCKTA_SPECIAL_ATTACK_A_10 =
	{
		EVENT_INTERVAL_ID			= 0,
		MY_HP_LESS_THAN_PERCENT		= 10, --피가 10% 이하일때
		FLAG_FALSE					= 3,  --한번만 실행되도록 체크
	},
	--돌무더기 소환->유저를 가둠.
	CT_CHIEF_OF_TROCKTA_SPECIAL_ATTACK_B =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1200,
		RATE						= 40,
	},
}
function CHIEF_OF_TROCKTA_DAMAGE_BACK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	ClearEffect_HP_Drain( pKTDXApp, pX2Game, pNPCUnit )
	ClearEffect_Shield( pKTDXApp, pX2Game, pNPCUnit )
	ClearEffect_Stun( pKTDXApp, pX2Game, pNPCUnit )
end
-------------------------------------------------------------------------DYING
CHIEF_OF_TROCKTA_DYING = 
{
	ANIM_NAME					= "Dying",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	
	SOUND_SET0_RATE = 33, 
	SOUND_SET1_RATE = 33, 
	SOUND_SET2_RATE = 34, 

	SOUND_SET0 =   
	{
		NORMAL =
		{
			SOUND_PLAY0    = { 0.01, "Chief_Of_Trockta_Voice_Dying01.ogg"},                        
		},                     
	},
	SOUND_SET1 =   
	{
		NORMAL =
		{
			SOUND_PLAY0    = { 0.01, "Chief_Of_Trockta_Voice_Dying02.ogg"},                               
		},                     
	},
	SOUND_SET2 =   
	{
		NORMAL =
		{
			SOUND_PLAY0    = { 0.01, "Chief_Of_Trockta_Voice_Dying03.ogg" },                               
		},                     
	},
	
	IMMADIATE_PACKET_SEND		= TRUE,
}
function CHIEF_OF_TROCKTA_DYING_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	ClearEffect_HP_Drain( pKTDXApp, pX2Game, pNPCUnit )
	ClearEffect_Shield( pKTDXApp, pX2Game, pNPCUnit )
	ClearEffect_Stun( pKTDXApp, pX2Game, pNPCUnit )
	ClearEffect_Aura( pKTDXApp, pX2Game, pNPCUnit )
end
-------------------------------------------------------------------------COMMON_FRAME_MOVE
function CHIEF_OF_TROCKTA_COMMON_FRAMEMOVE( pKTDXApp, pX2Game, pNPCUnit )
	if true == pNPCUnit:GetFlag_LUA( 0 ) then
		Hp_Drain_func( pKTDXApp, pX2Game, pNPCUnit )
	end
end

function Hp_Drain_func( pKTDXApp, pX2Game, pNPCUnit )
	local pLinkedUser = pNPCUnit:GetNearestGUUser()
	pNPCUnit:SetTargetUnit( pLinkedUser )
	local vPos = pNPCUnit:GetBonePos_LUA( "Bip01" )

	local vLinkedPos = pLinkedUser:GetPos()
	vLinkedPos.y = vLinkedPos.y + 110
	
	-------------------------------타겟 유저 데미지---------------------------------
	local ElapsedTime = pNPCUnit:GetTimerElapsedTime( 2 )
	local checkTime	= pNPCUnit:GetVector_LUA( 2 )
	
	if 1 < ( ElapsedTime - checkTime.x ) then				--1초당 데미지를 준다
		pNPCUnit:SetVector_LUA( 2, D3DXVECTOR3( ElapsedTime, 0, 0 ) ) 
		local minusHp = pNPCUnit:GetVector_LUA( 1 )
		local UserHp = pLinkedUser:GetNowHP()
		UserHp = UserHp - minusHp.x
		if UserHp > 1 then
			pLinkedUser:SetNowHP( UserHp )
		else
			pLinkedUser:SetNowHP( 1 )
		end
	end
	--------------------------------------------------------------------------------
	
	-------------------------------링크 연결 부분-----------------------------------
	local pMeshPlayer = pNPCUnit:GetMajorMeshPlayer_LUA( 0 )
	if nil ~= pMeshPlayer then
		local pMajorXMeshPlayer = pX2Game:GetMajorXMeshPlayer()
		
		if nil ~= pMajorXMeshPlayer then
			local offset = pNPCUnit:GetBonePos_LUA( "Bip01_R_Forearm" )
			local vBonePos = pNPCUnit:GetBonePos_LUA( "Bip01_R_Finger2Nub" )
			local fDist = pX2Game:GetDist_LUA( vBonePos, vLinkedPos )
			
			if fDist <= 0 then
				fDist = 1
			end
			
			local fScaleX = fDist / 580
			vBonePos.x = ( vBonePos.x + ( vBonePos.x - offset.x ) * 0.2 )
			vBonePos.y = ( vBonePos.y + ( vBonePos.y - offset.y ) * 0.5 )
			vBonePos.z = ( vBonePos.z + ( vBonePos.z - offset.z ) * 0.2 )
			pMeshPlayer:SetPos( vBonePos )
			vLinkedPos.x = ( vLinkedPos.x - vBonePos.x )
			vLinkedPos.y = ( vLinkedPos.y - vBonePos.y )
			vLinkedPos.z = ( vLinkedPos.z - vBonePos.z )
			local vDir = GetDirVecToDegree( vLinkedPos )
			pMeshPlayer:SetRotateDegree( vDir )
			pMeshPlayer:SetMoveAxisAngleDegree( vDir )
			pMeshPlayer:SetScale_LUA( fScaleX, 1.0, 1.0 )
		end
	end
	--------------------------------------------------------------------------------
end

-------------------------------------------------------------------------클리어 함수들
--hp drain
function ClearEffect_HP_Drain( pKTDXApp, pX2Game, pNPCUnit )
	local pEffectSet = pX2Game:GetEffectSet()
	if nil ~= pEffectSet then
		for i = 0, 1 do
			local hEffect = pNPCUnit:GetEffectSet_LUA( i )
			if nil ~= hEffect then
				pEffectSet:StopEffectSet_LUA( hEffect )
				pNPCUnit:ClearEffectSet_LUA( i )
			end
		end
	end
	
	local pMajorMeshPlayer = pX2Game:GetMajorXMeshPlayer()
	if nil ~= pMajorMeshPlayer then
		pMajorMeshPlayer:DestroyInstance( pNPCUnit:GetMajorMeshPlayerHandle( 0 ) )
		pNPCUnit:ClearMajorMeshPlayer_LUA( 0 )
	end
end
--shield
function ClearEffect_Shield( pKTDXApp, pX2Game, pNPCUnit )
	local pEffectSet = pX2Game:GetEffectSet()
	if nil ~= pEffectSet then
		local hEffect = pNPCUnit:GetEffectSet_LUA( 2 )
		if nil ~= hEffect then
			pEffectSet:StopEffectSet_LUA( hEffect )
			pNPCUnit:ClearEffectSet_LUA( 2 )
		end
	end
end
--stun
function ClearEffect_Stun( pKTDXApp, pX2Game, pNPCUnit )
	local pEffectSet = pX2Game:GetEffectSet()
	if nil ~= pEffectSet then
		local hEffect = pNPCUnit:GetEffectSet_LUA( 3 )
		if nil ~= hEffect then
			pEffectSet:StopEffectSet_LUA( hEffect )
			pNPCUnit:ClearEffectSet_LUA( 3 )
		end
	end
end
--연기
function ClearEffect_Aura( pKTDXApp, pX2Game, pNPCUnit )
	local pEffectSet = pX2Game:GetEffectSet()
	if nil ~= pEffectSet then
		local hEffect = pNPCUnit:GetEffectSet_LUA( 4 )
		if nil ~= hEffect then
			pEffectSet:StopEffectSet_LUA( hEffect )
			pNPCUnit:ClearEffectSet_LUA( 4 )
		end
	end
end
-------------------------------------------------------------------------

function MovePos( pos, dirvector, dist )
	
	pos.x = pos.x + dist * dirvector.x
	pos.y = pos.y + dist * dirvector.y
	pos.z = pos.z + dist * dirvector.z
	
	return pos
	
end
