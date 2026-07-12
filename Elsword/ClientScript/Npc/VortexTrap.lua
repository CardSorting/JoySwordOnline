-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--[[ KjTiger / 2010/1/24 / 소용돌이 트랩, 하멜 수중 트랩, /
	 일정 거리에 들어오면 끌어 당기다 내뱉음, 키보드 좌우 바꿈
--]]

--------------------------------------------------------------------------
INIT_SYSTEM = 
{
	UNIT_WIDTH		= 50.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	RENDER_PARAM	= RENDER_TYPE["RT_REAL_COLOR"],
	ALPHA_BLEND		= TRUE,
	Z_ENABLE		= TRUE,
}
--------------------------------------------------------------------------
INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	},
	READY_SOUND =
	{
		"Trap_VortexLoop.ogg",
	},
	READY_XSKIN_MESH = 
	{
		"Trap_Vortex_AttackBox.X",
	},
}
--------------------------------------------------------------------------
INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Trap_Vortex.X",
}
--------------------------------------------------------------------------
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
--------------------------------------------------------------------------
INIT_COMPONENT = 
{
	MAX_HP				= 9225,
	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 130,
	
	USE_SLASH_TRACE		= FALSE,
	
	SHADOW_SIZE			= 0,
	SHADOW_FILE_NAME	= "shadow.dds",
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	--QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	--EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
		
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	HEAD_BONE_NAME		= "Spike_Leaf1",
		
	SHOW_ON_MINIMAP		= FALSE,
}
--------------------------------------------------------------------------
INIT_STATE = 
{
	{ STATE_NAME = "VORTEX_WAIT",	},
	{ STATE_NAME = "VORTEX_ATTACK",	LUA_FRAME_MOVE_FUNC = "VORTEX_ATTACK_FRAME_MOVE"	},

	START_STATE					= "VORTEX_WAIT",
	
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
	UP_DAMAGE					= "",
	DAMAGE_REVENGE				= "",
	
	DYING_LAND_FRONT			= "",
	DYING_LAND_BACK				= "",
	DYING_SKY					= "",

	REVENGE_ATTACK				= "",	
}
--------------------------------------------------------------------------
INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_NEAR_FIRST"],
		TARGET_INTERVAL				= 3,	-- sec
		TARGET_NEAR_RANGE			= 200,	-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 600,	-- cm
		TARGET_LOST_RANGE			= 800,	-- cm
		TARGET_SUCCESS_RATE			= 100,	--100,		-- %
		ATTACK_TARGET_RATE			= 0,	-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 0,	-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 600,
		DEST_GAP			= 150,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 160,
		
		DIR_CHANGE_INTERVAL = 0.7,
		
		WALK_INTERVAL		= 3,
		NEAR_WALK_RATE		= 100,	--  70,
		FAR_WALK_RATE		= 100,	-- 30,
		
		JUMP_INTERVAL		= 5,
		UP_JUMP_RATE		= 100,	-- 40,
		UP_DOWN_RATE		= 20,
		DOWN_JUMP_RATE		= 100,	--  20,
		DOWN_DOWN_RATE		= 40,
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
		NEAR_WALK_RATE		= 100,	-- 10,
		FAR_WALK_RATE		= 100,	-- 10,
		
		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 100,	-- 30,
		UP_DOWN_RATE		= 30,
		DOWN_JUMP_RATE		= 100,	--  30,
		DOWN_DOWN_RATE		= 30,
	},
}
--------------------------------------------------------------------------
VORTEX_WAIT = 
{
	ANIM_NAME	= "Normal",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= FALSE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,	
	
	SPEED_X	= 0,
	SPEED_Y	= 0,
	
	NEVER_MOVE	= TRUE,
	VIEW_TARGET	= FALSE,
	
	ALLOW_DIR_CHANGE		= FALSE,
	EVENT_INTERVAL_TIME0	= 2,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"VORTEX_ATTACK",	"CT_VORTEX_ATTACK",	},
	},
	
	CT_VORTEX_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 600,
		RATE						= 100,
	},
}
--------------------------------------------------------------------------
VORTEX_ATTACK = 
{
	ANIM_NAME	= "Normal",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= FALSE,
	
	LAND_CONNECT	= FALSE,
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,
	
	SPEED_X	= 0,
	SPEED_Y	= 0,
	
	NEVER_MOVE	= TRUE,
	VIEW_TARGET	= FALSE,
	
	ALLOW_DIR_CHANGE		= FALSE,
	IMMADIATE_PACKET_SEND	= TRUE,
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_Vortex_Nodamage", 0,
	},
	
	DELETE_EFFECT_SET_ON_STATE_END = TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"VORTEX_WAIT",		"CT_VORTEX_WAIT",	},
	},

	CT_VORTEX_WAIT = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_OVER_TARGET_NEAR	= 650,
		RATE						= 100,
	},
}
--------------------------------------------------------------------------
function VORTEX_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.001 ) then
		local vLandPos = pNPCUnit:GetLandPosition_LUA()
	    local vPos = pNPCUnit:GetBonePos_LUA( "Dummy01_Vortex" )
		local pDamageEffect = pX2Game:GetDamageEffect()		
	    pDamageEffect:CreateInstance_LUA( pNPCUnit, "VORTEXT_TRAP_BLACKHOLE", vPos, vLandPos.y )
	end
	
	if pNPCUnit:AnimTimer_LUA( 0.001 ) then
		pNPCUnit:PlaySound_LUA( "Trap_VortexLoop.ogg" )
	end
end