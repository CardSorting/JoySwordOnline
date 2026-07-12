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
		WEAPON_FILE_NAME	= "CSM_HAGALAZ_Head_Acc.X",
		WEAPON_BONE_NAME	= "ACC_Dummy03",
		WEAPON_ROTAION_Y	= 90,
		ALPHA_OBJECT		= TRUE,
		WEAPON_DEST_BLEND	= D3DBLEND["D3DBLEND_INVSRCALPHA"],
	},
	
	SUMMON_TIME			= 180,
}
--------------------------------------------------------------------------
INIT_STATE = 
{
	-- 기본
	{ STATE_NAME = "CSM_HAGALAZ_START",	},
	{ STATE_NAME = "CSM_HAGALAZ_WAIT",	},
	{ STATE_NAME = "CSM_HAGALAZ_END",	},
	-- 공격
	{ STATE_NAME = "CSM_HAGALAZ_ATTACK_A",			STATE_COOL_TIME = 3,	LUA_FRAME_MOVE_FUNC = "CSM_HAGALAZ_ATTACK_A_FRAME_MOVE"},
	{ STATE_NAME = "CSM_HAGALAZ_MAGIC_ATTACK_A",	STATE_COOL_TIME = 6,	},
	
	-- 리액션 관련
	{ STATE_NAME = "CSM_HAGALAZ_DAMAGE_FRONT",	},	
	{ STATE_NAME = "CSM_HAGALAZ_DAMAGE_BACK",	},	
	{ STATE_NAME = "CSM_HAGALAZ_DYING",			LUA_STATE_START_FUNC = "CSM_HAGALAZ_DYING_STATE_START", },
	-- 이동
	{ STATE_NAME = "CSM_HAGALAZ_WALK",			},
	{ STATE_NAME = "CSM_HAGALAZ_JUMP_UP",		},
	{ STATE_NAME = "CSM_HAGALAZ_JUMP_DOWN",		},
	{ STATE_NAME = "CSM_HAGALAZ_JUMP_UP_DIR",	},
	{ STATE_NAME = "CSM_HAGALAZ_JUMP_DOWN_DIR",	},
	{ STATE_NAME = "CSM_HAGALAZ_JUMP_LANDING",	},

	START_STATE					= "CSM_HAGALAZ_START",
	WAIT_STATE					= "CSM_HAGALAZ_WAIT",
	SUMMON_END_STATE			= "CSM_HAGALAZ_END",
	
	SMALL_DAMAGE_LAND_FRONT		= "CSM_HAGALAZ_DAMAGE_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "CSM_HAGALAZ_DAMAGE_BACK",
	BIG_DAMAGE_LAND_FRONT		= "CSM_HAGALAZ_DAMAGE_FRONT",
	BIG_DAMAGE_LAND_BACK		= "CSM_HAGALAZ_DAMAGE_BACK",
	DOWN_DAMAGE_LAND_FRONT		= "CSM_HAGALAZ_DAMAGE_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "CSM_HAGALAZ_DAMAGE_BACK",
	FLY_DAMAGE_FRONT			= "CSM_HAGALAZ_DAMAGE_FRONT",
	FLY_DAMAGE_BACK				= "CSM_HAGALAZ_DAMAGE_BACK",
	SMALL_DAMAGE_AIR			= "CSM_HAGALAZ_DAMAGE_FRONT",	
	BIG_DAMAGE_AIR				= "CSM_HAGALAZ_DAMAGE_FRONT",
	DOWN_DAMAGE_AIR				= "CSM_HAGALAZ_DAMAGE_FRONT",
	UP_DAMAGE					= "CSM_HAGALAZ_DAMAGE_FRONT",
	
	DYING_LAND_FRONT			= "CSM_HAGALAZ_DYING",
	DYING_LAND_BACK				= "CSM_HAGALAZ_DYING",
	DYING_SKY					= "CSM_HAGALAZ_DYING",

	REVENGE_ATTACK				= "",	
}
--------------------------------------------------------------------------
INIT_AI = 
{
	ALLY = 
	{
		FAR_LOST_RANGE	= 1400,			-- 이 거리보다 멀어지면 유저 옆으로 텔레포트
		LOST_RANGE		= 1400,			-- 이 거리보다 멀어지면 유저 쪽으로 걸어감
	},

	TARGET =
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_NEAR_FIRST"],
		TARGET_INTERVAL 			= 1,
		TARGET_NEAR_RANGE 			= 1000,
		TARGET_RANGE 				= 2000,
		TARGET_LOST_RANGE 			= 5000,
		TARGET_SUCCESS_RATE 		= 100,
		ATTACK_TARGET_RATE 			= 100,
		PRESERVE_LAST_TARGET_RATE 	= 20,
	},
	
	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 300,
		DEST_GAP			= 250,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 400,
		
		DIR_CHANGE_INTERVAL = 0.5,
		
		WALK_INTERVAL		= 1,
		NEAR_WALK_RATE		= 1,	-- 70,
		FAR_WALK_RATE		= 1,	-- 30,
		
		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 25,	-- 80,
		UP_DOWN_RATE		= 20,
		DOWN_JUMP_RATE		= 50,	-- 20,
		DOWN_DOWN_RATE		= 80,
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 1,	--50,		
		PATROL_RANGE			= 200,
		PATROL_COOL_TIME		= 2,
		ONLY_THIS_LINE_GROUP	= TRUE,
	},
	
	ESCAPE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 500,	-- cm
		ESCAPE_GAP			= 600,	-- 이 거리 보다 멀어지면 도망 성공
		
		WALK_INTERVAL		= 1.5,	-- 초
		NEAR_WALK_RATE		= 10,	--  10,
		FAR_WALK_RATE		= 10,	-- 10,
		
		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 100,	-- 30,
		UP_DOWN_RATE		= 30,
		DOWN_JUMP_RATE		= 100,	--  30,
		DOWN_DOWN_RATE		= 30,
	},	
}
--------------------------------------------------------------------------
CSM_HAGALAZ_START = 
{
	ANIM_NAME		= "WaitHabit",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= TRUE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	--SOUND_PLAY0 	= { 0.01, "CSM_HAGALAZ_Voice_WaitStart01.ogg" },
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"CSM_HAGALAZ_WAIT",	},
	},
}
--------------------------------------------------------------------------
CSM_HAGALAZ_WAIT = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_HAGALAZ_JUMP_DOWN",	},

		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"CSM_HAGALAZ_ATTACK_A",			"CT_CSM_HAGALAZ_ATTACK_A",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"CSM_HAGALAZ_MAGIC_ATTACK_A",	"CT_CSM_HAGALAZ_MAGIC_ATTACK_A",	},

		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],		"CSM_HAGALAZ_WALK",				},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],		"CSM_HAGALAZ_WALK",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],		"CSM_HAGALAZ_JUMP_UP",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],	"CSM_HAGALAZ_JUMP_UP_DIR",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],		"CSM_HAGALAZ_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],	"CSM_HAGALAZ_JUMP_DOWN_DIR",	},
	},


	CT_CSM_HAGALAZ_ATTACK_A = 
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 300,
		RATE						= 100,
	},
	
	CT_CSM_HAGALAZ_MAGIC_ATTACK_A = 
	{
		IS_ANOTHER_TEAM				= TRUE,
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 300,
		RATE						= 100,
	},
	
}
--------------------------------------------------------------------------
CSM_HAGALAZ_END = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	

    INVINCIBLE					= { 0, 100, }, 
    
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	RIGHT						= FALSE,
	
	DYING_END					= TRUE,	
	
	IMMADIATE_PACKET_SEND		= TRUE,	
}	
--------------------------------------------------------------------------
CSM_HAGALAZ_ATTACK_A =
{
	ANIM_SPEED					= 1.33,
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
		"Effect_CSM_Hagalaz_Attack_A", 0,	
	},
	
	DELETE_EFFECT_SET_ON_DAMAGE_REACT 	= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_HAGALAZ_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_HAGALAZ_WAIT",			},	
	},
}
--------------------------------------------------------------------------
CSM_HAGALAZ_MAGIC_ATTACK_A =
{
	ANIM_SPEED	= 1.2,
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
		"Effect_CSM_Hagalaz_Magic_Attack_A", 0,	
	},
	
	DELETE_EFFECT_SET_ON_DAMAGE_REACT 	= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_HAGALAZ_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_HAGALAZ_WAIT",			},	
	},
}
--------------------------------------------------------------------------
CSM_HAGALAZ_DAMAGE_FRONT =
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
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"CSM_HAGALAZ_WAIT",		},
	},
}
--------------------------------------------------------------------------
CSM_HAGALAZ_DAMAGE_BACK =
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
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"CSM_HAGALAZ_WAIT",	},
	},
}
--------------------------------------------------------------------------
CSM_HAGALAZ_WALK = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_HAGALAZ_JUMP_DOWN_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"CSM_HAGALAZ_WAIT",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"CSM_HAGALAZ_JUMP_UP",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"CSM_HAGALAZ_JUMP_UP_DIR",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"CSM_HAGALAZ_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"CSM_HAGALAZ_JUMP_DOWN_DIR",	},
	},
}
--------------------------------------------------------------------------
CSM_HAGALAZ_JUMP_UP = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"CSM_HAGALAZ_JUMP_DOWN",	},
	},
}
--------------------------------------------------------------------------
CSM_HAGALAZ_JUMP_DOWN = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"CSM_HAGALAZ_JUMP_LANDING",	},
	},
}
--------------------------------------------------------------------------
CSM_HAGALAZ_JUMP_UP_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],	"CSM_HAGALAZ_JUMP_DOWN_DIR",	},
	},
}
--------------------------------------------------------------------------
CSM_HAGALAZ_JUMP_DOWN_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],	"CSM_HAGALAZ_JUMP_LANDING",	},
	},
}
--------------------------------------------------------------------------
CSM_HAGALAZ_JUMP_LANDING = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"CSM_HAGALAZ_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CSM_HAGALAZ_WAIT",			},
	},
}
--------------------------------------------------------------------------
CSM_HAGALAZ_DYING = 
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
		"Effect_CSM_Hagalaz_Dying", 0,	
	},
	
	IMMADIATE_PACKET_SEND	= TRUE,
}
--------------------------------------------------------------------------	
function CSM_HAGALAZ_DYING_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	local pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	local GetMinorParticle = pX2Game:GetMinorParticle()

	local pSeq = GetMinorParticle:CreateSequence_LUA( "DieLight",		pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	if pSeq ~= nil then

		pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		pNPCUnit:SetDieSeq( pSeq:GetHandle() )

	end
	pNPCUnit:PlaySound_LUA( "DieLight.ogg" )
end
--------------------------------------------------------------------------
function CSM_HAGALAZ_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
    if pNPCUnit:AnimEventTimer_LUA( 1.19 ) then
		pNPCUnit:SetSpeedX( 700.0 )		
	end
    if pNPCUnit:AnimEventTimer_LUA( 1.74 ) then
		pNPCUnit:SetSpeedX( 1000.0 )		
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