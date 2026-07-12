-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



INIT_SYSTEM = 
{
	UNIT_WIDTH		= 120.0,
	UNIT_HEIGHT		= 150.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	UNIT_SCALE		= 1.2,
}

INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
		"Particle_Blur.dds",
		"Steam_BP.dds",
		"trockBome_0_MagicAttackA_pieceCircle.dds",
		"RVC_SA_DeadlyRaid_spark.dds",
		"trockBome_0_MagicAttackA_piece.dds",
		"trockBome_0_Chase_fireWork.dds",
		"acce_fireWork_fireParticle.dds",
		"Arme_Critical.dds",

	},
	READY_XSKIN_MESH = 
	{
		"trockBome_0_MagicAttackA_spark01.X",
		"trockBome_0_MagicAttackA_spark02.X",
		"DummyAttackBox_50x50x50.X",
	},	
	READY_SOUND = 
	{
		"Mini_Bomb_Trock_Voice_Wait01.ogg",
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_MINI_BOMB_TROCK.x",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 400,
	RUN_SPEED			= 600,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 1800,
}

INIT_COMPONENT = 
{
	MP_CHANGE_RATE			= 1,
	MP_CHARGE_RATE			= 130,

	
	SHADOW_SIZE				= 200,
	SHADOW_FILE_NAME		= "shadow.dds",
	
	SMALL_HP_BAR_BLUE		= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED		= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW		= "Small_HP_bar_Yellow.TGA",
	
	QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
	
	HYPER_MODE_COUNT		= 0,
	MAX_HYPER_MODE_TIME		= 30,
	

	HITTED_TYPE				= HITTED_TYPE["HTD_MEAT"],
	FALL_DOWN				= TRUE,
}

INIT_STATE = 
{
	{ STATE_NAME = "MINI_BOMB_TROCK_START",						LUA_STATE_END_FUNC = "MINI_BOMB_TROCK_START_STATE_START"					},
		
	{ STATE_NAME = "MINI_BOMB_TROCK_WAIT",						},
	
	{ STATE_NAME = "MINI_BOMB_TROCK_WALK",						LUA_STATE_END_FUNC = "MINI_BOMB_TROCK_WALK_STATE_END"						},
	
	{ STATE_NAME = "MINI_BOMB_TROCK_JUMP_UP",					},
	{ STATE_NAME = "MINI_BOMB_TROCK_JUMP_DOWN",					LUA_STATE_END_FUNC = "MINI_BOMB_TROCK_JUMP_DOWN_STATE_END"					},
	{ STATE_NAME = "MINI_BOMB_TROCK_JUMP_UP_DIR",				},
	{ STATE_NAME = "MINI_BOMB_TROCK_JUMP_DOWN_DIR",				LUA_STATE_END_FUNC = "MINI_BOMB_TROCK_JUMP_DOWN_DIR_STATE_END"				},
	{ STATE_NAME = "MINI_BOMB_TROCK_JUMP_LANDING",				},

	{ STATE_NAME = "MINI_BOMB_TROCK_DYING",						LUA_FRAME_MOVE_FUNC = "MINI_BOMB_TROCK_DYING_FRAME_MOVE"					},
	
	START_STATE					= "MINI_BOMB_TROCK_START",
	WAIT_STATE					= "MINI_BOMB_TROCK_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "MINI_BOMB_TROCK_DYING",
	SMALL_DAMAGE_LAND_BACK		= "MINI_BOMB_TROCK_DYING",
	BIG_DAMAGE_LAND_FRONT		= "MINI_BOMB_TROCK_DYING",
	BIG_DAMAGE_LAND_BACK		= "MINI_BOMB_TROCK_DYING",
	DOWN_DAMAGE_LAND_FRONT		= "MINI_BOMB_TROCK_DYING",
	DOWN_DAMAGE_LAND_BACK		= "MINI_BOMB_TROCK_DYING",
	FLY_DAMAGE_FRONT			= "MINI_BOMB_TROCK_DYING",
	FLY_DAMAGE_BACK				= "MINI_BOMB_TROCK_DYING",
	SMALL_DAMAGE_AIR			= "MINI_BOMB_TROCK_DYING",	
	BIG_DAMAGE_AIR				= "MINI_BOMB_TROCK_DYING",
	DOWN_DAMAGE_AIR				= "MINI_BOMB_TROCK_DYING",
	DOWN_DAMAGE_AIR_LANDING		= "MINI_BOMB_TROCK_DYING",
	UP_DAMAGE					= "MINI_BOMB_TROCK_DYING",
	DAMAGE_REVENGE				= "MINI_BOMB_TROCK_DYING",
	
	DYING_LAND_FRONT			= "MINI_BOMB_TROCK_DYING",
	DYING_LAND_BACK				= "MINI_BOMB_TROCK_DYING",
	DYING_SKY					= "MINI_BOMB_TROCK_DYING",
	
	REVENGE_ATTACK				= "",	
}

INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 3,		-- sec
		TARGET_NEAR_RANGE			= 2000,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 2000,		-- cm
		TARGET_LOST_RANGE			= 600,		-- cm
		TARGET_SUCCESS_RATE			= 100,  	-- 50,		-- %
		ATTACK_TARGET_RATE			= 100, 		-- 30,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, 		-- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 2000,
		DEST_GAP			= 150,		-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 160,
		
		DIR_CHANGE_INTERVAL = 0.7,
		
		WALK_INTERVAL		= 3,
		NEAR_WALK_RATE		= 0,   		-- 70,
		FAR_WALK_RATE		= 0,  	 	-- 30,
		
		JUMP_INTERVAL		= 5,
		UP_JUMP_RATE		= 100, 		-- 40,
		UP_DOWN_RATE		= 20,
		DOWN_JUMP_RATE		= 100,  	-- 20,
		DOWN_DOWN_RATE		= 40,
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 50, 	--50,		
		PATROL_RANGE			= 150,
		PATROL_COOL_TIME		= 2,
		ONLY_THIS_LINE_GROUP	= FALSE,
	},
	
	ESCAPE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 500,		-- cm
		ESCAPE_GAP			= 10,		-- 이 거리 보다 멀어지면 도망 성공
		
		WALK_INTERVAL		= 1.5,		-- 초
		NEAR_WALK_RATE		= 100,   	-- 10,
		FAR_WALK_RATE		= 100,   	-- 10,
		
		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 0, 		-- 30,
		UP_DOWN_RATE		= 0,
		DOWN_JUMP_RATE		= 0,    	-- 30,
		DOWN_DOWN_RATE		= 0,
	},

}

----------------------------------------------------------------------------------------------------------------------------------------

MINI_BOMB_TROCK_START = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,	
		
	SOUND_PLAY0 = { 0.01, "Mini_Bomb_Trock_Voice_Wait01.ogg",30},		
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"], "MINI_BOMB_TROCK_WAIT", "CT_MINI_BOMB_TROCK_WAIT", },
	},
}

function MINI_BOMB_TROCK_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	SetHeadFire( pX2Game, pNPCUnit )		-- 머리 위에 불 킴

end

----------------------------------------------------------------------------------------------------------------------------------------

MINI_BOMB_TROCK_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	PASSIVE_SPEED_X				= 0,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{		
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"MINI_BOMB_TROCK_JUMP_DOWN",			},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"MINI_BOMB_TROCK_DYING",				"CT_MINI_BOMB_TROCK_DYING",			},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"MINI_BOMB_TROCK_WALK",					},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"MINI_BOMB_TROCK_JUMP_UP",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"MINI_BOMB_TROCK_JUMP_UP_DIR",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"MINI_BOMB_TROCK_JUMP_DOWN",			},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"MINI_BOMB_TROCK_JUMP_DOWN_DIR",		},
	},
	
	-- 지폭
	CT_MINI_BOMB_TROCK_DYING = 
	{
		DISTANCE_TO_TARGET_NEAR		= 200,
		HAVE_TARGET					= 1,
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

MINI_BOMB_TROCK_WALK = 
{
	ANIM_NAME					= "walk",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SOUND_PLAY0 = { 0.001, "Mini_Bomb_Trock_Voice_Wait01.ogg",40},		
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 2,
	EVENT_INTERVAL_TIME1		= 3,
	
	EVENT_PROCESS = 
	{		
		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"MINI_BOMB_TROCK_JUMP_DOWN_DIR", 	},
				
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"MINI_BOMB_TROCK_DYING",			"CT_MINI_BOMB_TROCK_DYING", },
	
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"MINI_BOMB_TROCK_WAIT",				},
		--{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"MINI_BOMB_TROCK_DASH",				},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"MINI_BOMB_TROCK_JUMP_UP",			},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"MINI_BOMB_TROCK_JUMP_UP_DIR",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"MINI_BOMB_TROCK_JUMP_DOWN",		},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"MINI_BOMB_TROCK_JUMP_DOWN_DIR",	},
	},
	
	-- 지폭
	CT_MINI_BOMB_TROCK_DYING = 
	{
		DISTANCE_TO_TARGET_NEAR		= 200,
		HAVE_TARGET					= 1,
	},
}

function MINI_BOMB_TROCK_WALK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

----------------------------------------------------------------------------------------------------------------------------------------

MINI_BOMB_TROCK_DASH_END = 
{
	ANIM_NAME					= "DashEnd",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	SPEED_X						= INIT_PHYSIC["RUN_SPEED"],
	
	ALLOW_DIR_CHANGE			= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"MINI_BOMB_TROCK_JUMP_DOWN_DIR",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MINI_BOMB_TROCK_WAIT",			},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

MINI_BOMB_TROCK_JUMP_UP = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"], "MINI_BOMB_TROCK_JUMP_DOWN",	},
	},
	
}

----------------------------------------------------------------------------------------------------------------------------------------

MINI_BOMB_TROCK_JUMP_DOWN = 
{
	ANIM_NAME					= "JumpUp",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
		 
	
	IMMADIATE_PACKET_SEND		= TRUE,
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "MINI_BOMB_TROCK_JUMP_LANDING",	},
	},
}

function MINI_BOMB_TROCK_JUMP_DOWN_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

----------------------------------------------------------------------------------------------------------------------------------------

MINI_BOMB_TROCK_JUMP_UP_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"], "MINI_BOMB_TROCK_JUMP_DOWN_DIR",	},
	},
	
}

----------------------------------------------------------------------------------------------------------------------------------------

MINI_BOMB_TROCK_JUMP_DOWN_DIR = 
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
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"], "MINI_BOMB_TROCK_JUMP_LANDING",	},
	},
}

function MINI_BOMB_TROCK_JUMP_DOWN_DIR_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	local pMinorParticle = pX2Game:GetMinorParticle()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )

end

----------------------------------------------------------------------------------------------------------------------------------------

MINI_BOMB_TROCK_JUMP_LANDING = 
{
	ANIM_NAME					= "JumpDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
    SOUND_PLAY0			= { 0.121, "Glitter_Landing.ogg" },

	SPEED_X						= 0,
	SPEED_Y						= 0,

	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"MINI_BOMB_TROCK_JUMP_DOWN",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MINI_BOMB_TROCK_WAIT",		},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------

MINI_BOMB_TROCK_DYING = 
{
	ANIM_NAME					= "Dying",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

	DYING_END					= TRUE,
	
	SOUND_PLAY0 = { 0.01, "HitBomb.wav"},
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Bomb_Trock_Mini_Dying", 0.0,	
	},
}

function MINI_BOMB_TROCK_DYING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.2 ) then
	
		EraseHeadFire( pX2Game, pNPCUnit )		-- 머리 위에 불 끔
		pNPCUnit:SetUnitFadeStart(RENDER_TYPE["RT_CARTOON_FADE"], 1.0, 1.0, 1.0, 0.0, TRUE, TRUE)
		
	end

end

----------------------------------------------------------------------------------------------------------------------------------------

-- 머리에 불 붙이는 함수
function SetHeadFire( pX2Game, pNPCUnit )
		
	local pEffectSet = pX2Game:GetEffectSet()			-- 머리 위 심지에 불 붙임
	
	if nil ~= pEffectSet then
		local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_Bomb_Trock_Mini_Chase", pNPCUnit )
		
		if nil ~= hEffect then
			pNPCUnit:SetEffectSet_LUA( 0, hEffect )
		end
	end

end

-- 머리에 불 끄는 함수
function EraseHeadFire( pX2Game, pNPCUnit )

	local hEffect = pNPCUnit:GetEffectSet_LUA( 0 )		-- 불붙는 이펙트 셋이 존재하는가
	
	if nil == hEffect then
		return
	end
	
	local pEffectSet = pX2Game:GetEffectSet()			-- 머리 위 심지에 불 끔
	
	if nil ~= pEffectSet then
		pEffectSet:StopEffectSet_LUA( hEffect )
		pNPCUnit:ClearEffectSet_LUA( 0 )
	end

end