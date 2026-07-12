-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	LUA_SHAREABLE	= TRUE,
	UNIT_WIDTH		= 50.0,
	UNIT_HEIGHT		= 100.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	
	UNIT_SCALE      = 1.5,
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	    "Sap_Gray01.dds",
	    "ColorBallGray.dds",
	},
	
	READY_SOUND = 
	{
	  "Plant_Drosera_WaitStart.ogg",
	  "Plant_Drosera_Attack1.ogg",  --
	  "Plant_Drosera_Attack2.ogg",  --
      "Plant_Drosera_AttackB.ogg",  --
      "Plant_Drosera_AttackB_Splash.ogg", --,
	  "Plant_Drosera_Damage.ogg",   --
	  "Plant_Drosera_Dying.ogg",    --
		
	},
	
	READY_XSKIN_MESH = 
	{
	    "DummyAttackBox_50x50x50.X",
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "NUI_PLANT_DROSERA.x",
	ADD_ROTATE_Y			= -180.0,
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
	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 130,
	
	USE_SLASH_TRACE		= FALSE,
	
	--SHADOW_SIZE			= 200,
	--SHADOW_FILE_NAME	= "shadow.dds",
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
		
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,

	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	
	HEAD_BONE_NAME		= "Bip01_Head",
	
	FALL_DOWN			= FALSE,
	
	DIE_FLY             = 0,
	DAMAGE_DOWN         = FALSE,		
	
}

INIT_STATE = 
{
    { STATE_NAME = "PLANT_DROSERA_TRAPMODE",					},
	{ STATE_NAME = "PLANT_DROSERA_WAIT",						},
	{ STATE_NAME = "PLANT_DROSERA_WAITSTART",					},
	
	{ STATE_NAME = "PLANT_DROSERA_ATTACK",					    LUA_FRAME_MOVE_FUNC = "PLANT_DROSERA_ATTACK_FRAME_MOVE", STATE_COOL_TIME = 3, },
	{ STATE_NAME = "PLANT_DROSERA_ATTACKB",					    LUA_FRAME_MOVE_FUNC = "PLANT_DROSERA_ATTACKB_FRAME_MOVE", STATE_COOL_TIME = 4, },
	
	{ STATE_NAME = "PLANT_DROSERA_DAMAGE_FRONT",				},
	{ STATE_NAME = "PLANT_DROSERA_DAMAGE_BACK",					},
	
	{ STATE_NAME = "PLANT_DROSERA_DYING",				        LUA_STATE_START_FUNC = "PLANT_DROSERA_DYING_STATE_START", },

	START_STATE					= "PLANT_DROSERA_TRAPMODE",
	WAIT_STATE					= "PLANT_DROSERA_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "PLANT_DROSERA_DAMAGE_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "PLANT_DROSERA_DAMAGE_BACK",
	BIG_DAMAGE_LAND_FRONT		= "PLANT_DROSERA_DAMAGE_FRONT",
	BIG_DAMAGE_LAND_BACK		= "PLANT_DROSERA_DAMAGE_BACK",
	DOWN_DAMAGE_LAND_FRONT		= "PLANT_DROSERA_DAMAGE_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "PLANT_DROSERA_DAMAGE_BACK",
	FLY_DAMAGE_FRONT			= "PLANT_DROSERA_DAMAGE_FRONT",
	FLY_DAMAGE_BACK				= "PLANT_DROSERA_DAMAGE_BACK",
	SMALL_DAMAGE_AIR			= "PLANT_DROSERA_DAMAGE_BACK",	
	BIG_DAMAGE_AIR				= "PLANT_DROSERA_DAMAGE_FRONT",
	DOWN_DAMAGE_AIR				= "PLANT_DROSERA_DAMAGE_BACK",
	UP_DAMAGE					= "PLANT_DROSERA_DAMAGE_FRONT",
	DAMAGE_REVENGE				= "PLANT_DROSERA_DAMAGE_FRONT",
	
	DYING_LAND_FRONT			= "PLANT_DROSERA_DYING",
	DYING_LAND_BACK				= "PLANT_DROSERA_DYING",
	DYING_SKY					= "PLANT_DROSERA_DYING",

	REVENGE_ATTACK				= "",	
}

INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_NEAR_FIRST"],
		TARGET_INTERVAL				= 1,		-- sec
		TARGET_NEAR_RANGE			= 800,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 800,		-- cm
		TARGET_LOST_RANGE			= 500,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --100,		-- %
		ATTACK_TARGET_RATE			= 0,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 0,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
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
	},
	
	
}

PLANT_DROSERA_TRAPMODE = 
{
	ANIM_NAME					= "TrapMode",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
	INVINCIBLE					= { 0, 100, },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,

    RIGHT                       = TRUE,
    		
	NEVER_MOVE					= TRUE,
	
	EVENT_INTERVAL_TIME0		= 2,
	

	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PLANT_DROSERA_WAITSTART",				"CT_PLANT_DROSERA_WAITSTART",	},
	},
	
	CT_PLANT_DROSERA_WAITSTART = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 100,
	},
}

PLANT_DROSERA_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
    		
	NEVER_MOVE					= TRUE,
	
	RIGHT                       = TRUE,
	
	EVENT_INTERVAL_TIME0		= 2,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PLANT_DROSERA_ATTACK",				"CT_PLANT_DROSERA_ATTACK",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"PLANT_DROSERA_ATTACKB",			"CT_PLANT_DROSERA_ATTACKB",	},		
	},

	CT_PLANT_DROSERA_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 60,
	},

	CT_PLANT_DROSERA_ATTACKB =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 40,
	},
}

PLANT_DROSERA_WAITSTART = 
{
	ANIM_NAME					= "WaitStart",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,

    SOUND_PLAY0			= { 1.380, "Plant_Drosera_WaitStart.ogg" },
	
	INVINCIBLE					= { 0, 100, }, 		
	
	RIGHT                       = TRUE,
	
	NEVER_MOVE					= TRUE,
	EVENT_INTERVAL_TIME0		= 1,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],			"PLANT_DROSERA_WAIT",    },
	},
}

PLANT_DROSERA_DAMAGE_FRONT =
{
	ANIM_NAME					= "DamageFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	

    SOUND_PLAY0			= { 0.031, "Plant_Drosera_Damage.ogg" },
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	RIGHT                       = TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PLANT_DROSERA_WAIT",				},
	},
}

PLANT_DROSERA_DAMAGE_BACK =
{
	ANIM_NAME					= "DamageBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	

    SOUND_PLAY0			= { 0.031, "Plant_Drosera_Damage.ogg" },
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	RIGHT                       = TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"PLANT_DROSERA_WAIT",				},
	},
}

PLANT_DROSERA_ATTACK = 
{
	ANIM_NAME					= "Attack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

    SOUND_PLAY0			= { 0.437, "Plant_Drosera_Attack1.ogg" },
    SOUND_PLAY1			= { 0.987, "Plant_Drosera_Attack2.ogg" },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,	
	RIGHT                       = TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PLANT_DROSERA_WAIT",					},
	},
	    
    ATTACK_TIME0				= { 1.120, 1.180, },
    ATTACK_TIME1				= { 1.700, 1.740, },	    
	    
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},		
		
		BACK_SPEED_X			= 0,
		BACK_SPEED_Y			= 0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},
	
	DAMAGE_DATA_LAST = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},		
		
		BACK_SPEED_X			= 300,
		BACK_SPEED_Y			= 0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,
	},	        
	
	
}

PLANT_DROSERA_ATTACKB = 
{
	ANIM_NAME					= "AttackB",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

    SOUND_PLAY0			= { 0.001, "Plant_Drosera_AttackB.ogg", },

	
	SPEED_X						= 0,
	SPEED_Y						= 0,	
	RIGHT                       = TRUE,
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"PLANT_DROSERA_WAIT",					},
	},
}

PLANT_DROSERA_DYING = 
{
	ANIM_NAME					= "Dying_Front",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		

    SOUND_PLAY0			= { 0.007, "Plant_Drosera_Dying.ogg", },
	RIGHT                       = TRUE,
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	NEVER_MOVE					= TRUE,
	
	DYING_END					= TRUE,
	DYING_SPEED                 = 1,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}


function PLANT_DROSERA_DYING_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

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


function PLANT_DROSERA_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	if pNPCUnit:AnimEventTimer_LUA( 1.5 ) then
		pNPCUnit:ClearHitUnitList_LUA()
		pNPCUnit:SetDamageData_LUA( "DAMAGE_DATA_LAST" )
	end
end

function PLANT_DROSERA_ATTACKB_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	if pNPCUnit:AnimEventTimer_LUA( 1.0 ) then
	    local pDamageEffect = pX2Game:GetDamageEffect()
	    local vPos = pNPCUnit:GetPos()
	    vPos.y = vPos.y + 100
	    local landPos = pNPCUnit:GetLandPosition_LUA()
	    
	    if pDamageEffect ~= nil then
	        pDamageEffect:CreateInstance_LUA( pNPCUnit, "DROSERA_ATTACKB", vPos, landPos.y )
		end
	end
end

