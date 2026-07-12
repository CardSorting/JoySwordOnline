-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	UNIT_WIDTH		= 144.0,
	UNIT_HEIGHT		= 180.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	
	UNIT_SCALE      = 1.22,
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	},
	
	READY_SOUND = 
	{
	
	 "DarkBoss_SpecialAttackCReady.ogg",
	 "DARKELF_BossVoice_SPAttackB_Summon.ogg",
	 "DarkBoss_SPAttackB_Summon.ogg",
	 
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
	MOTION_FILE_NAME		= "Motion_DARKELF_BOSS.x",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 800,
	RUN_SPEED			= 900,
	JUMP_SPEED			= 2400,
	DASH_JUMP_SPEED		= 2700,
}


INIT_COMPONENT = 
{	
	MAX_HP				= 9225,
	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 130,
	
	USE_SLASH_TRACE		= FALSE,
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	--FOCUS_CAMERA_FORCE	= TRUE,	
	SHOW_ON_MINIMAP		= FALSE,
	FALL_DOWN			= FALSE,
}

INIT_STATE = 
{
	{ STATE_NAME = "DARKELF_BOSS_DP_SUMMMON",							LUA_STATE_START_FUNC 	= "DARKELF_BOSS_DP_SUMMMON_START_FUNC", },								
	{ STATE_NAME = "DARKELF_BOSS_DP_ESCAPE",							LUA_STATE_END_FUNC 		= "DARKELF_BOSS_DP_ESCAPE_END_FUNC",		},	
	--{ STATE_NAME = "DARKELF_BOSS_DP_DYING",							},
	
	START_STATE					= "DARKELF_BOSS_DP_SUMMMON",		
	WAIT_STATE					= "DARKELF_BOSS_DP_SUMMMON",

	
	
	
	SMALL_DAMAGE_LAND_FRONT		= "",
	SMALL_DAMAGE_LAND_BACK		= "",
	BIG_DAMAGE_LAND_FRONT		= "",
	BIG_DAMAGE_LAND_BACK		= "",
	DOWN_DAMAGE_LAND_FRONT		= "",
	DOWN_DAMAGE_LAND_BACK		= "",
	FLY_DAMAGE_FRONT			= "",
	FLY_DAMAGE_BACK				= "",
	SMALL_DAMAGE_AIR			= "",	
	BIG_DAMAGE_AIR				= "",
	DOWN_DAMAGE_AIR				= "",
	DOWN_DAMAGE_AIR_LANDING		= "",
	UP_DAMAGE					= "",
	DAMAGE_REVENGE				= "",
	
	DYING_LAND_FRONT			= "",
	DYING_LAND_BACK				= "",
	DYING_SKY					= "",

	REVENGE_ATTACK				= "",	
}

INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 3,		-- sec
		TARGET_NEAR_RANGE			= 400,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 9000,		-- cm
		TARGET_LOST_RANGE			= 8000,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --70,		-- %
		ATTACK_TARGET_RATE			= 100, -- 80,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, -- 80,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 600,
		DEST_GAP			= 600,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 700,
		
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
		ESCAPE_GAP			= 650,	-- 이 거리 보다 멀어지면 도망 성공
		
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

DARKELF_BOSS_DP_SUMMMON = 
{
	ANIM_NAME					= "SpecialAttackB",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= TRUE,
	ANIM_SPEED					= 0.7,
	ADD_ROTATE_Y				= -70,
	
	INVINCIBLE					= { 0, 100, }, 		

    SOUND_PLAY0			= { 0.021, "DARKELF_BossVoice_SPAttackB_Summon.ogg", 100, false, 30000, },
    SOUND_PLAY1			= { 0.68, "DarkBoss_SPAttackB_Summon.ogg", 100, false, 30000, },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"DARKELF_BOSS_DP_ESCAPE",						},
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Summon_Nephilim", 0.0,
	},
}
DARKELF_BOSS_DP_ESCAPE = 
{
	ANIM_NAME					= "SpecialAttackCReady",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	ANIM_SPEED					= 1.2,
	ADD_ROTATE_Y				= -70,
	
	INVINCIBLE					= { 0, 100, }, 		

    SOUND_PLAY0			= { 0.181, "DarkBoss_SpecialAttackCReady.ogg", 100, false, 30000, },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	-- EVENT_PROCESS = 
	-- {		
		-- { STATE_CHANGE_TYPE["SCT_MOTION_END"],				"DARKELF_BOSS_DP_DYING",						},
	-- },
	
}

-- DARKELF_BOSS_DP_DYING = 
-- {
	-- ANIM_NAME					= "SpecialAttackCReady",
	-- PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	-- TRANSITION					= FALSE,
	-- LAND_CONNECT				= FALSE,
	-- ADD_ROTATE_Y				= -70,
	
	-- INVINCIBLE					= { 0, 100, }, 		

	-- CAN_PUSH_UNIT				= FALSE,
	-- CAN_PASS_UNIT				= TRUE,
	
	-- DYING_END					= TRUE,
	-- IMMADIATE_PACKET_SEND		= TRUE,
-- }




--------------------------------------------------------------------
--------------------------------------------------------------------

function DARKELF_BOSS_DP_SUMMMON_START_FUNC( pKTDXApp, pX2Game, pNPCUnit )
	
	local vPos = pNPCUnit:GetPos()
	vPos.x = vPos.x - 1000
	
	pNPCUnit:SetPosition( vPos )
	--pNPCUnit:SetFocusCamera( false )
	--pNPCUnit:SetFocusCameraForce( false )
	pNPCUnit:SetShowGage( false )
	--pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_DARK_NEPHILIM_FAKE"], pNPCUnit:GetHardLevel(), false, D3DXVECTOR3( 0.0, 0.0, 0.0 ), false, 0.3, true  )
end

function DARKELF_BOSS_DP_ESCAPE_END_FUNC( pKTDXApp, pX2Game, pNPCUnit )
	-- pNpcUnit:SetShow( false )
	-- pNPCUnit:SetNowHP_LUA( 0.0 )
	
	-- local vPos = pNPCUnit:GetPos()
	-- vPos.x = vPos.x + 15000
	-- vPos.y = vPos.y + 5000
	
	-- pNPCUnit:SetPositionForce( vPos )
	
end
