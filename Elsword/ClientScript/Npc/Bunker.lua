-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


-- barricadeA.lua


INIT_SYSTEM = 
{
	UNIT_WIDTH		= 200.0,
	UNIT_HEIGHT		= 250.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	
	RENDER_PARAM	= RENDER_TYPE["RT_CARTOON"],
	
	UNIT_SCALE		= 1.0,
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	},
	
	READY_SOUND = 
	{
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_Bunker.X",
	--MOTION_MULTI_TEX_XET	= "smallGate.xet",
	--MULTI_TEX_SPEED			= { 2, 0, 0.5, },
	--ADD_ROTATE_Y			= -20.0,
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 0,
	MAX_G_SPEED			= 0,
	
	WALK_SPEED			= 0,
	RUN_SPEED			= 0,
	JUMP_SPEED			= 0,
	DASH_JUMP_SPEED		= 0,
}


INIT_COMPONENT = 
{
	MAX_HP				= 4000,
	MP_CHANGE_RATE		= 0,
	MP_CHARGE_RATE		= 0,
	
	USE_SLASH_TRACE		= FALSE,
	
	SHADOW_SIZE			= 0,
	SHADOW_FILE_NAME	= "shadow.dds",
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
	
	HEAD_BONE_NAME			= "Roof01",
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	HITTED_TYPE			= HITTED_TYPE["HTD_STONE"],
	
	DAMAGE_DOWN         = FALSE,
	
	QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
	

}




INIT_STATE = 
{
	{ STATE_NAME = "BUNKER_WAIT",					},
	
	--리액션 관련
	{ STATE_NAME = "BUNKER_DAMAGE",				},	
	--{ STATE_NAME = "BUNKER_ATTACK_A",				LUA_FRAME_MOVE_FUNC = "BUNKER_ATTACK_A_FRAME_MOVE",		},
	--{ STATE_NAME = "BUNKER_ATTACK_B",				LUA_FRAME_MOVE_FUNC = "BUNKER_ATTACK_B_FRAME_MOVE",		},
	{ STATE_NAME = "BUNKER_DYING",					LUA_FRAME_MOVE_FUNC = "BUNKER_DYING_FRAME_MOVE"			},
	
	START_STATE					= "BUNKER_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "BUNKER_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "BUNKER_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "BUNKER_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "BUNKER_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "BUNKER_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "BUNKER_DAMAGE",
	FLY_DAMAGE_FRONT			= "BUNKER_DAMAGE",
	FLY_DAMAGE_BACK				= "BUNKER_DAMAGE",
	SMALL_DAMAGE_AIR			= "BUNKER_DAMAGE",	
	BIG_DAMAGE_AIR				= "BUNKER_DAMAGE",
	DOWN_DAMAGE_AIR				= "BUNKER_DAMAGE",
	UP_DAMAGE					= "BUNKER_DAMAGE",
	DAMAGE_REVENGE				= "BUNKER_DAMAGE",
	
	DYING_LAND_FRONT			= "BUNKER_DYING",
	DYING_LAND_BACK				= "BUNKER_DYING",
	DYING_SKY					= "BUNKER_DYING",

	REVENGE_ATTACK				= "",	
}

INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_NEAR_FIRST"],
		TARGET_INTERVAL				= 99999,	-- sec
		TARGET_NEAR_RANGE			= 0,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 0,		-- cm
		TARGET_LOST_RANGE			= 1400,		-- cm
		TARGET_SUCCESS_RATE			= 0,		-- %
		ATTACK_TARGET_RATE			= 0,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 0,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE = 
	{		
		DEST_GAP			= 150,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 160,
		
		DIR_CHANGE_INTERVAL = 9999,
		
		MOVE_SPLIT_RANGE	= 600,
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
		PATROL_BEGIN_RATE		= 0,		
		PATROL_RANGE			= 0,
		PATROL_COOL_TIME		= 1,
		ONLY_THIS_LINE_GROUP	= TRUE,
	},
	
	ESCAPE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 500,	-- cm
		ESCAPE_GAP			= 600,	-- 이 거리 보다 멀어지면 도망 성공
		
		WALK_INTERVAL		= 1,	-- 초
		NEAR_WALK_RATE		= 100,   --  10,
		FAR_WALK_RATE		= 100,   -- 10,
		
		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 100, -- 30,
		UP_DOWN_RATE		= 30,
		DOWN_JUMP_RATE		= 100,    --  30,
		DOWN_DOWN_RATE		= 30,
	},
	
}



BUNKER_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	
	NEVER_MOVE					= TRUE,
	
}


BUNKER_DAMAGE =
{
	ANIM_NAME					= "Damage",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	
	NEVER_MOVE					= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"BUNKER_WAIT",				},
	},
}



BUNKER_DYING = 
{
	ANIM_NAME					= "Broken",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	NEVER_MOVE					= TRUE,
	DYING_END					= TRUE,
	--DYING_SPEED					= 1,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}
	





-------------------------------------------------------------------------------------------------------------
function BUNKER_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.2 ) then
		pDamageEffect = pX2Game:GetDamageEffect()
		pos = pNPCUnit:GetLandPosition_LUA()		
		pDamageEffect:CreateInstance_LUA( pNPCUnit, "ARROW", pNPCUnit:GetBonePos_LUA( "Object01" ), pos.y )	
	end

end



-------------------------------------------------------------------------------------------------------------
function BUNKER_ATTACK_B_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.2 ) then
		pDamageEffect = pX2Game:GetDamageEffect()
		pos = pNPCUnit:GetLandPosition_LUA()		
		pDamageEffect:CreateInstance_LUA( pNPCUnit, "BOMB", pNPCUnit:GetBonePos_LUA( "Object01" ), pos.y )	
	end

end





-------------------------------------------------------------------------------------------------------------
function BUNKER_DYING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pX2Game:IsHost() then 
	
		if pNPCUnit:AnimEventTimer_LUA( 0.1 ) then 
		
			pNPCUnit:ReleaseSiegeMode( 100 )
		
		end
	end
	
end
