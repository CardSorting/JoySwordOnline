-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--[[ KjTiger / 2011/3/21 / 하갈라즈, 하멜 던전_5 일반 몬스터/
	 AttackA(근접공격),
	 MagicAttackA(얼음 가루를 날린다. 뒤로 미는 공격)
	 SpecialAttackA(칠링 스파인: 얼음 감옥 트랩 소환)
--]]

--------------------------------------------------------------------------
INIT_SYSTEM = 
{
	UNIT_WIDTH		= 100.0,
	UNIT_HEIGHT		= 150.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	
	UNIT_SCALE		= 1.0,
}
--------------------------------------------------------------------------
INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
		"crystal_Nova.tga",
		"NUI_HAGALAZ_A.tga",
		"NUI_HAGALAZ_B.tga",
		"NUI_HAGALAZ_C.tga",
		"HAGALAZ_Dying_Eye.tga",
	},
	
	READY_SOUND = 
	{
	"Hagalaz_Voice_SpecialAttackA01.ogg",
	"Hagalaz_MagicAttackA01.ogg",
	"IS_MagicAttackA02.ogg",
	"IS_Voice_Hit01.ogg",
	"IS_Voice_Hit02.ogg",
	"IS_Voice_Hit03.ogg",
	"IS_Voice_Hit04.ogg",
	"Hagalaz_Voice_Dying01.ogg",
	"Hagalaz_Voice_Dying02.ogg",
	"Shadow_Stinger_AttackEnd.ogg",
	"PunchAttack.ogg",
	"PunchAttack2.ogg",
	},

	READY_XMESH = 
	{
	},
	
	READY_XSKIN_MESH = 
	{
		"CS_SpecialAttackA_Wind.X",
		"HAGALAZ_AttackA_AttackBox.X",
		"HAGALAZ_Dying_Eye.X",
		"HAGALAZ_Head_Acc.X",
		"HAGALAZ_MaA_AttackBox.X",		
	},
}
--------------------------------------------------------------------------
INIT_MOTION = 
{
	MOTION_FILE_NAME	= "Motion_HAGALAZ.x",
}
--------------------------------------------------------------------------
INIT_PHYSIC = 
{	
	RELOAD_ACCEL	= 2000,
	G_ACCEL			= 4000,
	MAX_G_SPEED		= -2000,
	
	WALK_SPEED		= 500,
	RUN_SPEED		= 500,
	JUMP_SPEED		= 1500,
	DASH_JUMP_SPEED	= 2300,
}
--------------------------------------------------------------------------
INIT_COMPONENT = 
{
	MAX_HP				= 2000,
	MP_CHANGE_RATE		= 0,
	MP_CHARGE_RATE		= 0,
	
	SHADOW_FILE_NAME	= "shadow.dds",
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
		
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	HITTED_TYPE	= HITTED_TYPE["HTD_MEAT"],
	FALL_DOWN	= TRUE,
	
	DAMAGE_DOWN = FALSE,
		
	DIE_FLY     = FALSE,
	
	WEAPON0 = 
	{
		WEAPON_FILE_NAME	= "HAGALAZ_Head_Acc.X",
		WEAPON_BONE_NAME	= "ACC_Dummy03",
		WEAPON_ROTAION_Y	= 90,
		ALPHA_OBJECT		= TRUE,
		WEAPON_DEST_BLEND	= D3DBLEND["D3DBLEND_INVSRCALPHA"],
	},
}
--------------------------------------------------------------------------
INIT_STATE = 
{
	-- 기본
	{ STATE_NAME = "HAGALAZ_START",	},
	{ STATE_NAME = "HAGALAZ_WAIT",	},
	-- 공격
	{ STATE_NAME = "HAGALAZ_ATTACK_A",			STATE_COOL_TIME = 5,	},
	{ STATE_NAME = "HAGALAZ_MAGIC_ATTACK_A",	STATE_COOL_TIME = 5,	},
	{ STATE_NAME = "HAGALAZ_SPECIAL_ATTACK_A",	STATE_COOL_TIME = 15,
												LUA_FRAME_MOVE_FUNC = "HAGALAZ_SPECIAL_ATTACK_A_FRAME_MOVE",	},
	-- 리액션 관련
	{ STATE_NAME = "HAGALAZ_DAMAGE_FRONT",	},	
	{ STATE_NAME = "HAGALAZ_DAMAGE_BACK",	},	
	{ STATE_NAME = "HAGALAZ_DYING",			LUA_STATE_START_FUNC = "HAGALAZ_DYING_STATE_START", },
	-- 이동
	{ STATE_NAME = "HAGALAZ_WALK",			},
	{ STATE_NAME = "HAGALAZ_JUMP_UP",		},
	{ STATE_NAME = "HAGALAZ_JUMP_DOWN",		},
	{ STATE_NAME = "HAGALAZ_JUMP_UP_DIR",	},
	{ STATE_NAME = "HAGALAZ_JUMP_DOWN_DIR",	},
	{ STATE_NAME = "HAGALAZ_JUMP_LANDING",	},

	START_STATE	= "HAGALAZ_START",
	WAIT_STATE	= "HAGALAZ_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "HAGALAZ_DAMAGE_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "HAGALAZ_DAMAGE_BACK",
	BIG_DAMAGE_LAND_FRONT		= "HAGALAZ_DAMAGE_FRONT",
	BIG_DAMAGE_LAND_BACK		= "HAGALAZ_DAMAGE_BACK",
	DOWN_DAMAGE_LAND_FRONT		= "HAGALAZ_DAMAGE_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "HAGALAZ_DAMAGE_BACK",
	FLY_DAMAGE_FRONT			= "HAGALAZ_DAMAGE_FRONT",
	FLY_DAMAGE_BACK				= "HAGALAZ_DAMAGE_BACK",
	SMALL_DAMAGE_AIR			= "HAGALAZ_DAMAGE_FRONT",	
	BIG_DAMAGE_AIR				= "HAGALAZ_DAMAGE_FRONT",
	DOWN_DAMAGE_AIR				= "HAGALAZ_DAMAGE_FRONT",
	UP_DAMAGE					= "HAGALAZ_DAMAGE_FRONT",
	
	DYING_LAND_FRONT			= "HAGALAZ_DYING",
	DYING_LAND_BACK				= "HAGALAZ_DYING",
	DYING_SKY					= "HAGALAZ_DYING",

	REVENGE_ATTACK				= "",	
}
--------------------------------------------------------------------------
INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 3,	-- sec
		TARGET_NEAR_RANGE			= 500,	-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 700,	-- cm
		TARGET_LOST_RANGE			= 900,	-- cm
		TARGET_SUCCESS_RATE			= 100,  -- 40,		-- %
		ATTACK_TARGET_RATE			= 100,	-- 30,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100,	-- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률	
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 300,
		DEST_GAP			= 100,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 700,
		
		DIR_CHANGE_INTERVAL = 0.5,
		
		WALK_INTERVAL		= 2,
		NEAR_WALK_RATE		= 100,	-- 70,
		FAR_WALK_RATE		= 100,	-- 30,
		
		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 25,	-- 80,
		UP_DOWN_RATE		= 20,
		DOWN_JUMP_RATE		= 50,	-- 20,
		DOWN_DOWN_RATE		= 80,
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 100,	--50,		
		PATROL_RANGE			= 200,
		PATROL_COOL_TIME		= 2,
		ONLY_THIS_LINE_GROUP	= TRUE,
	},
	
	ESCAPE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 500,	-- cm
		ESCAPE_GAP			= 600,	-- 이 거리 보다 멀어지면 도망 성공
		
		WALK_INTERVAL		= 1.5,	-- 초
		NEAR_WALK_RATE		= 100,	--  10,
		FAR_WALK_RATE		= 100,	-- 10,
		
		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 100,	-- 30,
		UP_DOWN_RATE		= 30,
		DOWN_JUMP_RATE		= 100,	--  30,
		DOWN_DOWN_RATE		= 30,
	},	
}
--------------------------------------------------------------------------
HAGALAZ_START = 
{
	ANIM_NAME		= "WaitHabit",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= TRUE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	--SOUND_PLAY0 	= { 0.01, "HAGALAZ_Voice_WaitStart01.ogg" },
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"HAGALAZ_WAIT",	},
	},
}
--------------------------------------------------------------------------
HAGALAZ_WAIT = 
{
	ANIM_NAME	= "Wait",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= TRUE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	IMMADIATE_PACKET_SEND	= TRUE,
	EVENT_INTERVAL_TIME0	= 1,

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"HAGALAZ_JUMP_DOWN",	},

		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"HAGALAZ_ATTACK_A",			"CT_HAGALAZ_ATTACK_A",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"HAGALAZ_MAGIC_ATTACK_A",	"CT_HAGALAZ_ATTACK_A",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"HAGALAZ_SPECIAL_ATTACK_A",	"CT_HAGALAZ_SPECIAL_ATTACK_A",	},

		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],		"HAGALAZ_WALK",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],		"HAGALAZ_WALK",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],		"HAGALAZ_JUMP_UP",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],	"HAGALAZ_JUMP_UP_DIR",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],		"HAGALAZ_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],	"HAGALAZ_JUMP_DOWN_DIR",	},
	},

	CT_HAGALAZ_ATTACK_A = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 300,
		RATE						= 90,
	},
	
	CT_HAGALAZ_MAGIC_ATTACK_A = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 300,
		RATE						= 90,
	},
	
	CT_HAGALAZ_SPECIAL_ATTACK_A = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 90,
	},
}
--------------------------------------------------------------------------
HAGALAZ_ATTACK_A =
{
	ANIM_NAME					= "AttackA",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,	

    SOUND_PLAY0					= { 0.30, "Shadow_Stinger_AttackEnd.ogg" },
	SOUND_PLAY1					= { 0.45, "Shadow_Stinger_AttackEnd.ogg" },
	SOUND_PLAY2					= { 1.20, "PunchAttack.ogg" },
	SOUND_PLAY3					= { 1.75, "PunchAttack3.ogg" },
		
	VIEW_TARGET					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	
	EFFECT_SET_LIST =
	{
		"Effect_Hagalaz_Attack_A", 0,	
	},
	
	DELETE_EFFECT_SET_ON_DAMAGE_REACT 	= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"HAGALAZ_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"HAGALAZ_WAIT",			},	
	},
}
--------------------------------------------------------------------------
HAGALAZ_MAGIC_ATTACK_A =
{
	ANIM_NAME	= "MagicAttackA",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	SPEED_X	= 0,
	SPEED_Y	= 0,

	DELETE_EFFECT_SET_ON_DIE = TRUE, 	

    SOUND_PLAY0	= { 1.20, "Hagalaz_MagicAttackA01.ogg" },
		
	VIEW_TARGET				= TRUE,
	ALLOW_DIR_CHANGE		= FALSE,	
	IMMADIATE_PACKET_SEND	= TRUE,
	
	EFFECT_SET_LIST =
	{
		"Effect_Hagalaz_Magic_Attack_A", 0,	
	},
	
	DELETE_EFFECT_SET_ON_DAMAGE_REACT 	= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"HAGALAZ_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"HAGALAZ_WAIT",			},	
	},
}
--------------------------------------------------------------------------
HAGALAZ_SPECIAL_ATTACK_A =
{
	ANIM_NAME	= "SpecialAttackA",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	SPEED_X	= 0,
	SPEED_Y	= 0,	

    SOUND_PLAY0	= { 0.30, "Hagalaz_Voice_SpecialAttackA01.ogg" },
	SOUND_PLAY1	= { 1.60, "IS_MagicAttackA02.ogg" },
	
	VIEW_TARGET				= TRUE,
	ALLOW_DIR_CHANGE		= FALSE,	
	IMMADIATE_PACKET_SEND	= TRUE,
	
	EFFECT_SET_LIST =
	{
		"Effect_Hagalaz_Special_Attack_A", 0,	
	},	
	
	DELETE_EFFECT_SET_ON_DAMAGE_REACT 	= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"HAGALAZ_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"HAGALAZ_WAIT",			},	
	},
}
--------------------------------------------------------------------------
HAGALAZ_DAMAGE_FRONT =
{
	ANIM_NAME		= "DamageFront",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	SOUND_PLAY0 = { 0.01, "IS_Voice_Hit01.ogg",30 },
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"HAGALAZ_WAIT",		},
	},
}
--------------------------------------------------------------------------
HAGALAZ_DAMAGE_BACK =
{
	ANIM_NAME		= "DamageBack",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	SOUND_PLAY0 = { 0.01, "IS_Voice_Hit02.ogg",30 },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"HAGALAZ_WAIT",	},
	},
}
--------------------------------------------------------------------------
HAGALAZ_WALK = 
{
	ANIM_NAME	= "Walk",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= TRUE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	PASSIVE_SPEED_X	= INIT_PHYSIC["WALK_SPEED"],
	
	ALLOW_DIR_CHANGE		= TRUE,
	IMMADIATE_PACKET_SEND	= TRUE,
	
	EVENT_INTERVAL_TIME0	= 2,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"HAGALAZ_JUMP_DOWN_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"HAGALAZ_WAIT",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"HAGALAZ_JUMP_UP",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"HAGALAZ_JUMP_UP_DIR",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"HAGALAZ_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"HAGALAZ_JUMP_DOWN_DIR",	},
	},
}
--------------------------------------------------------------------------
HAGALAZ_JUMP_UP = 
{
	ANIM_NAME		= "JumpUp",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION		= TRUE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	SPEED_X		= 0,
	SPEED_Y		= INIT_PHYSIC["JUMP_SPEED"],
	ADD_POS_Y	= 45,
	
	IMMADIATE_PACKET_SEND	= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"HAGALAZ_JUMP_DOWN",	},
	},
}
--------------------------------------------------------------------------
HAGALAZ_JUMP_DOWN = 
{
	ANIM_NAME		= "JumpDwon",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION		= TRUE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	IMMADIATE_PACKET_SEND	= TRUE,
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"HAGALAZ_JUMP_LANDING",	},
	},
}
--------------------------------------------------------------------------
HAGALAZ_JUMP_UP_DIR = 
{
	ANIM_NAME		= "JumpUp",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION		= TRUE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	PASSIVE_SPEED_X	= INIT_PHYSIC["WALK_SPEED"],
	SPEED_Y			= INIT_PHYSIC["JUMP_SPEED"],
	ADD_POS_Y		= 45,
	
	IMMADIATE_PACKET_SEND	= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"HAGALAZ_JUMP_DOWN_DIR",	},
	},
}
--------------------------------------------------------------------------
HAGALAZ_JUMP_DOWN_DIR = 
{
	ANIM_NAME		= "JumpDown",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION		= TRUE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	PASSIVE_SPEED_X	= INIT_PHYSIC["WALK_SPEED"],
	
	IMMADIATE_PACKET_SEND	= TRUE,
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"HAGALAZ_JUMP_LANDING",	},
	},
}
--------------------------------------------------------------------------
HAGALAZ_JUMP_LANDING = 
{
	ANIM_NAME		= "JumpLanding",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= TRUE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	SPEED_X	= 0,
	SPEED_Y	= 0,
		
	IMMADIATE_PACKET_SEND	= TRUE,

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"HAGALAZ_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"HAGALAZ_WAIT",			},
	},
}
--------------------------------------------------------------------------
HAGALAZ_DYING = 
{
	ANIM_NAME		= "Dying",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	INVINCIBLE		= { 0, 100, }, 		
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= TRUE,
	
	DYING_END	= TRUE,
	DYING_SPEED	= 1.4,

	SOUND_PLAY0 = { 0.01, "Hagalaz_Voice_Dying01.ogg" },
	SOUND_PLAY1 = { 1.13, "Hagalaz_Voice_Dying02.ogg" },
	
	EFFECT_SET_LIST =
	{
		"Effect_Hagalaz_Dying", 0,	
	},
	
	IMMADIATE_PACKET_SEND	= TRUE,
}
--------------------------------------------------------------------------	
function HAGALAZ_DYING_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	local pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	local GetMinorParticle = pX2Game:GetMinorParticle()

	local pSeq = GetMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DieLight",		pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	if pSeq ~= nil then

		pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		pNPCUnit:SetDieSeq( pSeq:GetHandle() )

	end
	pNPCUnit:PlaySound_LUA( "DieLight.ogg" )
end
--------------------------------------------------------------------------
function HAGALAZ_SPECIAL_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pX2Game:IsHost() == false then
		return
	end
	
	if pNPCUnit:GetFlag_LUA( 0 ) then
		pX2Game:KillNPC( NPC_UNIT_ID["NUI_CHILLING_SPINE_TRAP"], 1 )
		--pX2Game:KillNPC( NPC_UNIT_ID["NUI_WOOD_POST_TRAP"], 1 )
		pNPCUnit:SetFlag_LUA( 0, false )
	end
        
    if pNPCUnit:AnimEventTimer_LUA( 1.7 ) then
		if true == pNPCUnit:HasTarget() then
			local vPos = pNPCUnit:GetTargetUser():GetLandPosition_LUA()
			
			pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_CHILLING_SPINE_TRAP"], pNPCUnit:GetHardLevel(), false, vPos, true, 0.01, true  )
			--pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_WOOD_POST_TRAP"], pNPCUnit:GetHardLevel(), false, vPos, true, 0.01, true  )
			pNPCUnit:SetFlag_LUA( 0, true )
		end
	end
end
--------------------------------------------------------------------------

--------------------------------------------------------------------------
-- UTIL FUNCTION
--------------------------------------------------------------------------
function MovePos( pos, dirvector, dist )
	pos.x = pos.x + dist * dirvector.x
	pos.y = pos.y + dist * dirvector.y
	pos.z = pos.z + dist * dirvector.z
	
	return pos
end
--------------------------------------------------------------------------