-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

INIT_SYSTEM =
{
	LUA_SHAREABLE	= TRUE,
	UNIT_WIDTH		= 150.0,
	UNIT_HEIGHT		= 250.0,
	UNIT_SCALE		= 1.15,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
}

INIT_DEVICE =
{
	READY_TEXTURE =
	{
	},

	READY_SOUND =
	{
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
	MOTION_FILE_NAME	= "Motion_Event_Teacher_Hagers.x",
}

INIT_PHYSIC =
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,

	WALK_SPEED			= 700,
	RUN_SPEED			= 1200,
	JUMP_SPEED			= 2000,
	DASH_JUMP_SPEED		= 2500,
}

INIT_COMPONENT =
{
	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 130,

	SHADOW_SIZE			= 200,
	SHADOW_FILE_NAME	= "shadow.dds",

	NOT_EXTRA_DAMAGE    = TRUE,

	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	FALL_DOWN			= FALSE,
    DIE_FLY             = 0,
}

INIT_STATE =
{
	{ STATE_NAME = "EVENT_TEACHER_HAGERS_WAITSTART",	LUA_FRAME_MOVE_FUNC = "EVENT_TEACHER_HAGERS_WAITSTART_FRAME_MOVE",	},
	{ STATE_NAME = "EVENT_TEACHER_HAGERS_WAIT",			LUA_STATE_END_FUNC = "EVENT_TEACHER_HAGERS_WAIT_STATE_END",			},
	{ STATE_NAME = "EVENT_TEACHER_HAGERS_WAITEND",		LUA_FRAME_MOVE_FUNC = "EVENT_TEACHER_HAGERS_WAITEND_FRAME_MOVE",    },


	START_STATE					= "EVENT_TEACHER_HAGERS_WAITSTART",
	WAIT_STATE					= "EVENT_TEACHER_HAGERS_WAIT",

	SMALL_DAMAGE_LAND_FRONT		= "EVENT_TEACHER_HAGERS_WAITEND",
	SMALL_DAMAGE_LAND_BACK		= "EVENT_TEACHER_HAGERS_WAITEND",
	BIG_DAMAGE_LAND_FRONT		= "EVENT_TEACHER_HAGERS_WAITEND",
	BIG_DAMAGE_LAND_BACK		= "EVENT_TEACHER_HAGERS_WAITEND",
	DOWN_DAMAGE_LAND_FRONT		= "EVENT_TEACHER_HAGERS_WAITEND",
	DOWN_DAMAGE_LAND_BACK		= "EVENT_TEACHER_HAGERS_WAITEND",
	FLY_DAMAGE_FRONT			= "EVENT_TEACHER_HAGERS_WAITEND",
	FLY_DAMAGE_BACK				= "EVENT_TEACHER_HAGERS_WAITEND",
	SMALL_DAMAGE_AIR			= "EVENT_TEACHER_HAGERS_WAITEND",
	BIG_DAMAGE_AIR				= "EVENT_TEACHER_HAGERS_WAITEND",
	DOWN_DAMAGE_AIR				= "EVENT_TEACHER_HAGERS_WAITEND",
	UP_DAMAGE					= "EVENT_TEACHER_HAGERS_WAITEND",
	DAMAGE_REVENGE				= "EVENT_TEACHER_HAGERS_WAITEND",

	DYING_LAND_FRONT			= "EVENT_TEACHER_HAGERS_WAITEND",
	DYING_LAND_BACK				= "EVENT_TEACHER_HAGERS_WAITEND",
	DYING_SKY					= "EVENT_TEACHER_HAGERS_WAITEND",

	REVENGE_ATTACK				= "",
}

INIT_AI =
{
	TARGET =
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_NEAR_FIRST"],
		TARGET_INTERVAL				= 9999,		-- sec
		TARGET_NEAR_RANGE			= 0,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 0,		-- cm
		TARGET_LOST_RANGE			= 91000,	-- cm
		TARGET_SUCCESS_RATE			= 0,		-- %
		ATTACK_TARGET_RATE			= 0,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 0,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE =
	{
		DEST_GAP			= 100,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 310,

		DIR_CHANGE_INTERVAL = 9999,

		MOVE_SPLIT_RANGE	= 600,
		WALK_INTERVAL		= 2,
		NEAR_WALK_RATE		= 100,   	-- 90,
		FAR_WALK_RATE		= 100,   	-- 70,

		JUMP_INTERVAL		= 5,
		UP_JUMP_RATE		= 100, 		-- 10,
		UP_DOWN_RATE		= 10,
		DOWN_JUMP_RATE		= 100,    	-- 10,
		DOWN_DOWN_RATE		= 10,
	},

	PATROL_MOVE =
	{
		PATROL_BEGIN_RATE		= 0,
		PATROL_RANGE			= 500,
		PATROL_COOL_TIME		= 1.5,
		ONLY_THIS_LINE_GROUP	= TRUE,
	},
}

----------------------------------------------------------

EVENT_TEACHER_HAGERS_WAITSTART =
{
	ANIM_NAME					= "WaitStart",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	ANIM_SPEED					= 1,
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

	SPEED_X						= 0,
	SPEED_Y						= 0,

	RIGHT						= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,

	INVINCIBLE					= { 0, 100, },

	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"EVENT_TEACHER_HAGERS_WAIT",	},
	},
}

function EVENT_TEACHER_HAGERS_WAITSTART_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

-- 페이드 인 효과
	local fAnimationTime = pNPCUnit:GetNowAnimationTime()
	
	if fAnimationTime < 0.5 then
	
		pNPCUnit:SetUnitFadeStart(RENDER_TYPE["RT_CARTOON_FADE"], 1.0, 1.0, 1.0, 1.0, TRUE, TRUE)	
		pNPCUnit:SetUnitColor( 1, 1, 1, fAnimationTime * 2 , TRUE, D3DBLEND["D3DBLEND_SRCALPHA"], D3DBLEND["D3DBLEND_INVSRCALPHA"] ) 
		
	end

end

----------------------------------------------------------

EVENT_TEACHER_HAGERS_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	RIGHT						= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	INVINCIBLE					= { 0, 100, }, 		
		
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"EVENT_TEACHER_HAGERS_WAITEND",	},	
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_DEVELOPER_A", 0,
	},
	
	TALK_BOX =
	{
		{ RATE = 100, MESSAGE = STR_ID_23489 },
	},
}

function EVENT_TEACHER_HAGERS_WAIT_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:SetNowHP_LUA(0)

end

----------------------------------------------------------


EVENT_TEACHER_HAGERS_WAITEND =
{
	ANIM_NAME					= "WaitEnd",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	ANIM_SPEED					= 1.5,
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, },

	RIGHT						= TRUE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,

	DYING_END					= TRUE,
	DYING_SPEED					= 1.01,

	EVENT_PROCESS =
	{
		--{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"EVENT_TEACHER_HAGERS_DIE",	},
	},
}

function EVENT_TEACHER_HAGERS_WAITEND_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
-- Fade Start

-- 텔레포트 (사라질때)
	 if pNPCUnit:AnimEventTimer_LUA(1.2) then
	   pNPCUnit:PlaySound_LUA( "Nasod_Element_Teleport.ogg" )

	    local pos = pNPCUnit:GetPos()
	    local rotDegree 	= pNPCUnit:GetRotateDegree()
	    local pMinorXMeshPlayer = pX2Game:GetMinorXMeshPlayer()

	    rotDegree.y = 0

	    if pMinorXMeshPlayer ~= nil then
	        pMinorXMeshPlayer:CreateInstance_LUA( "RespawnLanding01", pos, rotDegree, rotDegree, 14 )
	        pMinorXMeshPlayer:CreateInstance_LUA( "RespawnLanding02", pos, rotDegree, rotDegree, 14 )
	    end
	end

-- 페이드 아웃 효과
	local fAnimationTime = pNPCUnit:GetNowAnimationTime()
	
	if fAnimationTime > 0.37 then
	
		local Alpha = 0.87 - fAnimationTime
		pNPCUnit:SetUnitFadeStart(RENDER_TYPE["RT_CARTOON_FADE"], 1.0, 1.0, 1.0, 1.0, TRUE, TRUE)	
		pNPCUnit:SetUnitColor( 1, 1, 1, Alpha * 2.5 , TRUE, D3DBLEND["D3DBLEND_SRCALPHA"], D3DBLEND["D3DBLEND_INVSRCALPHA"] ) 
		
	end

-- Fade End
end

-- UTILITY FUNCTIONS ---------------------------------------

function MovePos( pos, dirvector, dist )

	pos.x = pos.x + dist * dirvector.x
	pos.y = pos.y + dist * dirvector.y
	pos.z = pos.z + dist * dirvector.z

	return pos

end
