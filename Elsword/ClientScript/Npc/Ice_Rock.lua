-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	UNIT_WIDTH		= 100.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	RENDER_PARAM	= RENDER_TYPE["RT_REAL_COLOR"],
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	},
	
	READY_SOUND = 
	{
		"Ice_Rock_Broken01.ogg",
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_ICE_ROCK.x",
	
	ADD_ROTATE_Y			= 180,
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
	MAX_HP				= 3000,
	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 130,
	
	USE_SLASH_TRACE		= FALSE,
	
	SHADOW_SIZE			= 1,
	SHADOW_FILE_NAME	= "shadow.dds",
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	--QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	--EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",

	HITTED_TYPE			= HITTED_TYPE["HTD_STONE"],

	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	HEAD_BONE_NAME		= "Stone01",
		
	SHOW_ON_MINIMAP		= FALSE,
	
	NOT_EXTRA_DAMAGE	= TRUE,
}

INIT_STATE = 
{
	{ STATE_NAME = "ICE_ROCK_WAIT",						},
	{ STATE_NAME = "ICE_ROCK_WAIT2",						},
	{ STATE_NAME = "ICE_ROCK_ATTACK_BEFORE",				LUA_FRAME_MOVE_FUNC = "ICE_ROCK_ATTACK_BEFORE_FRAME_MOVE", },
	
	{ STATE_NAME = "ICE_ROCK_ATTACK",					LUA_STATE_END_FUNC = "ICE_ROCK_ATTACK_STATE_END",
																},
																
	
	
	{ STATE_NAME = "ICE_ROCK_DAMAGE",						},
	
	{ STATE_NAME = "ICE_ROCK_BROKEN",					LUA_STATE_START_FUNC = "ICE_ROCK_BROKEN_STATE_START", 
																LUA_FRAME_MOVE_FUNC = "ICE_ROCK_BROKEN_FRAME_MOVE", },

	START_STATE					= "ICE_ROCK_WAIT",
	WAIT_STATE					= "ICE_ROCK_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "ICE_ROCK_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "ICE_ROCK_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "ICE_ROCK_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "ICE_ROCK_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "ICE_ROCK_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "ICE_ROCK_DAMAGE",
	FLY_DAMAGE_FRONT			= "ICE_ROCK_DAMAGE",
	FLY_DAMAGE_BACK				= "ICE_ROCK_DAMAGE",
	SMALL_DAMAGE_AIR			= "ICE_ROCK_DAMAGE",	
	BIG_DAMAGE_AIR				= "ICE_ROCK_DAMAGE",
	DOWN_DAMAGE_AIR				= "ICE_ROCK_DAMAGE",
	UP_DAMAGE					= "ICE_ROCK_DAMAGE",
	DAMAGE_REVENGE				= "ICE_ROCK_DAMAGE",
	
	WAIT_STATES = { "ICE_ROCK_WAIT2", },
	
	DYING_LAND_FRONT			= "ICE_ROCK_BROKEN",
	DYING_LAND_BACK				= "ICE_ROCK_BROKEN",
	DYING_SKY					= "ICE_ROCK_BROKEN",

	REVENGE_ATTACK				= "ICE_ROCK_DAMAGE",	
}

INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_NEAR_FIRST"],
		TARGET_INTERVAL				= 3,		-- sec
		TARGET_NEAR_RANGE			= 200,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 10500,		-- cm
		TARGET_LOST_RANGE			= 10800,		-- cm
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


ICE_ROCK_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	INVINCIBLE					= { 0, 100, }, 		
	
	--IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"ICE_ROCK_ATTACK_BEFORE",				"CT_ICE_ROCK_ATTACK_BEFORE",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"ICE_ROCK_ATTACK_BEFORE",				"CT_ICE_ROCK_ATTACK_BEFORE2",	},
	},
	
	CT_ICE_ROCK_ATTACK_BEFORE = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 2800,
		RATE						= 100,
		SAME_LINE_WITH_TARGET		= TRUE,
	},

	CT_ICE_ROCK_ATTACK_BEFORE2 = 
	{
		EVENT_INTERVAL_ID			= 0,
		GE_KEYCODE					= 10,
	},
}

ICE_ROCK_WAIT2 = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	--IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	EVENT_INTERVAL_TIME0		= 2,
	


	EVENT_PROCESS = 
	{		
	},
}

ICE_ROCK_ATTACK_BEFORE =
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
	INVINCIBLE					= { 0, 100, }, 		
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	--IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"ICE_ROCK_ATTACK",				"CT_ICE_ROCK_ATTACK",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"ICE_ROCK_ATTACK",				"CT_ICE_ROCK_ATTACK2",	},
	},
	
	CT_ICE_ROCK_ATTACK = 
	{
		STATE_TIME_OVER			= 2,
	},

	CT_ICE_ROCK_ATTACK2 = 
	{
		STATE_TIME_OVER			= 1,
	},


}

ICE_ROCK_ATTACK = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,

	SPEED_X						= 0,
	SPEED_Y						= 0,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	SUPER_ARMOR					= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"ICE_ROCK_BROKEN",				},
	},
	
	ATTACK_TIME0				= { 0, 100, },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_SWORD_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_FLY"],
		ATTACK_ALL_TEAM	= TRUE,
		CAN_REVENGE		= FALSE,
		
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
		BACK_SPEED_X			= INIT_PHYSIC["JUMP_SPEED"] * 0.8,
		BACK_SPEED_Y			= INIT_PHYSIC["JUMP_SPEED"] * 0.8,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},

}



ICE_ROCK_DAMAGE =
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	
	NEVER_MOVE					= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"ICE_ROCK_WAIT2",												},
	},
}




ICE_ROCK_BROKEN = 
{
	ANIM_NAME					= "Broken",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SOUND_PLAY0					= { 0.01, "Ice_Rock_Broken01.ogg" },
	
	EVENT_PROCESS = 
	{
	},
}

function ICE_ROCK_ATTACK_BEFORE_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
     	pNPCUnit:PlaySound_LUA( "DownStoneDust.ogg" )
		pos = pNPCUnit:GetLandPosition_LUA()
		
		pMinorParticle = pX2Game:GetMinorParticle()
		if pMinorParticle ~= nil then
			pParticle = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownStoneTrap_Dust", pNPCUnit:GetPos(), D3DXVECTOR2(200,200), D3DXVECTOR2(10,-1) )
			if pParticle ~= nil then 
				pParticle:SetLandPosition( pos.y - 5 )
			end
		end
		
	end

end

function ICE_ROCK_BROKEN_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	
	pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	GetMinorParticle = pX2Game:GetMinorParticle()
	
	pSeq = GetMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DieLight",		pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	if pSeq ~= nil then
	
		pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		pNPCUnit:SetDieSeq( pSeq:GetHandle() )
	
	end
	pNPCUnit:PlaySound_LUA( "DieLight.ogg" )
	
	

end

function ICE_ROCK_ATTACK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:PlaySound_LUA( "DownStone.ogg" )
	pMinorParticle = pX2Game:GetMinorParticle()
	pos = pNPCUnit:GetLandPosition_LUA()
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pos, D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	pos.y = pos.y + 5
	pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "GroundShockWave", pos, D3DXVECTOR2(100,100), D3DXVECTOR2(1,-1) )
	pParticle = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "AirDownTick", pNPCUnit:GetPos(), D3DXVECTOR2(200,200), D3DXVECTOR2(10,-1) )
	if pParticle ~= nil then 
		pParticle:SetLandPosition( pos.y - 5 )
	end
	
	if GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 500 then
		pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 10.0, 0.1 )
	end		

end


function ICE_ROCK_BROKEN_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.252 ) then
	
		pMinorParticle = pX2Game:GetMinorParticle()
		if pMinorParticle ~= nil then
		    pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
        	end
	end

end


