-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



-- boxdropper.lua


INIT_SYSTEM = 
{
	UNIT_WIDTH		= 50.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	},
	
	READY_SOUND = 
	{		
		"Succeed.ogg",			
		"WoodBox_Break.ogg",
		"HitWood.wav",
	},
	
	
	READY_XSKIN_MESH = 
	{
		"Dropping_Box.x",
	},
	
	
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_Invisible_Object.X",
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
	USE_SLASH_TRACE		= FALSE,

	SHADOW_SIZE			= 0,
	SHADOW_FILE_NAME	= "shadow.dds",

	SHOW_ON_MINIMAP		= FALSE,
}

INIT_STATE = 
{
	{ STATE_NAME = "ROCK_DROPPER_ARCADE_WAIT",							},
	{ STATE_NAME = "ROCK_DROPPER_ARCADE_ATTACK_UNIT",					LUA_FRAME_MOVE_FUNC = "ROCK_DROPPER_ARCADE_ATTACK_UNIT_FRAME_MOVE"	},
	{ STATE_NAME = "ROCK_DROPPER_ARCADE_ATTACK_LEFT",					LUA_FRAME_MOVE_FUNC = "ROCK_DROPPER_ARCADE_ATTACK_LEFT_FRAME_MOVE"	},
	{ STATE_NAME = "ROCK_DROPPER_ARCADE_ATTACK_RIGHT",					LUA_FRAME_MOVE_FUNC = "ROCK_DROPPER_ARCADE_ATTACK_RIGHT_FRAME_MOVE"	},

	START_STATE					= "ROCK_DROPPER_ARCADE_WAIT",
	
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
	DAMAGE_REVENGE				= "ROCK_DROPPER_ARCADE_WAIT",
	
	DYING_LAND_FRONT			= "",
	DYING_LAND_BACK				= "",
	DYING_SKY					= "",

	REVENGE_ATTACK				= "ROCK_DROPPER_ARCADE_WAIT",	
}

INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_NEAR_FIRST"],
		TARGET_INTERVAL				= 3,		-- sec
		TARGET_NEAR_RANGE			= 10200,	-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 10500,	-- cm
		TARGET_LOST_RANGE			= 10800,	-- cm
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


ROCK_DROPPER_ARCADE_WAIT = 
{
	ANIM_NAME					= "WaitZero",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	EVENT_INTERVAL_TIME0		= 0.2,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"ROCK_DROPPER_ARCADE_ATTACK_UNIT",				"CT_ROCK_DROPPER_ARCADE_ATTACK_UNIT",	},	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"ROCK_DROPPER_ARCADE_ATTACK_LEFT",				"CT_ROCK_DROPPER_ARCADE_ATTACK_LEFT",	},
	},
	
	CT_ROCK_DROPPER_ARCADE_ATTACK_LEFT = 
	{
		EVENT_INTERVAL_ID			= 0,
		STATE_TIME_OVER				= 2.4,
		RATE						= 100,
	},

	CT_ROCK_DROPPER_ARCADE_ATTACK_UNIT =
	{
		EVENT_INTERVAL_ID			= 0,
		STATE_TIME_OVER				= 2.4,
		HAVE_TARGET					= TRUE,
		RATE						= 20,
	},
	
}


ROCK_DROPPER_ARCADE_ATTACK_UNIT = 
{
	ANIM_NAME					= "WaitZero",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	SPEED_X						= 0,
	SPEED_Y						= 0,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	EVENT_INTERVAL_TIME0		= 0.2,
	
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"ROCK_DROPPER_ARCADE_ATTACK_RIGHT",				"CT_ROCK_DROPPER_ARCADE_ATTACK_RIGHT",	},
	},
	
	CT_ROCK_DROPPER_ARCADE_ATTACK_RIGHT = 
	{
		EVENT_INTERVAL_ID		= 0,
		STATE_TIME_OVER			= 2.8,
		RATE					= 100,
	},
	
}




ROCK_DROPPER_ARCADE_ATTACK_LEFT = 
{
	ANIM_NAME					= "WaitZero",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	SPEED_X						= 0,
	SPEED_Y						= 0,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	EVENT_INTERVAL_TIME0		= 0.2,
	
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"ROCK_DROPPER_ARCADE_ATTACK_RIGHT",				"CT_ROCK_DROPPER_ARCADE_ATTACK_RIGHT",	},
		
	},
	
	CT_ROCK_DROPPER_ARCADE_ATTACK_RIGHT = 
	{
		EVENT_INTERVAL_ID		= 0,
		STATE_TIME_OVER			= 2.8,
		RATE					= 100,
	},
	
}






ROCK_DROPPER_ARCADE_ATTACK_RIGHT = 
{
	ANIM_NAME					= "WaitZero",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	SPEED_X						= 0,
	SPEED_Y						= 0,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	EVENT_INTERVAL_TIME0		= 0.2,
	
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"ROCK_DROPPER_ARCADE_WAIT",				"CT_ROCK_DROPPER_ARCADE_WAIT",	},
	},
	
	CT_ROCK_DROPPER_ARCADE_WAIT = 
	{
		EVENT_INTERVAL_ID		= 0,
		STATE_TIME_OVER			= 3.0,
		RATE					= 100,
	},
	
}





-------------------------------------------------------------------------------
function ROCK_DROPPER_ARCADE_ATTACK_UNIT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.25 ) then
	

	
		--landPos = pNPCUnit:GetLandPosition_LUA()
		leftLandPos = pX2Game:GetLineMap():GetRandomPositionDir( pNPCUnit:GetPos(), 1000, true, false )
		
		unitPos = pNPCUnit:GetAITargetPos()
		unitLandPos = pX2Game:GetLineMap():GetLandPosition_LUA( unitPos )
		
		
		rotDegree 	= pNPCUnit:GetRotateDegree()
		pMeshPlayer = pX2Game:GetMajorXMeshPlayer():CreateInstance_LUA( "GroundMarker", unitLandPos, rotDegree, rotDegree, 14 )
		
		
		pos = pNPCUnit:GetPos()	
		pos.x = unitLandPos.x
		pos.z = unitLandPos.z
		pos.y = unitLandPos.y + 1200.0
		pDamageEffect = pX2Game:GetDamageEffect()
		pDamageEffect:CreateInstance_LUA( pNPCUnit, "DROPPING_ROCK", pos, unitLandPos.y )

				
		pos.y = pos.y - 1000.0
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DangerIndicatorShort", pos, D3DXVECTOR2(100,100), D3DXVECTOR2(1,-1) )

	
	end

end




-------------------------------------------------------------------------------
function ROCK_DROPPER_ARCADE_ATTACK_LEFT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.25 ) then
	

	
		landPos = pNPCUnit:GetLandPosition_LUA()
		leftLandPos = pX2Game:GetLineMap():GetRandomPositionDir( pNPCUnit:GetPos(), 1000, true, false )
		
		rotDegree 	= pNPCUnit:GetRotateDegree()
		pMeshPlayer = pX2Game:GetMajorXMeshPlayer():CreateInstance_LUA( "GroundMarker", leftLandPos, rotDegree, rotDegree, 14 )

		
		pos = pNPCUnit:GetPos()	
		pos.x = leftLandPos.x
		pos.z = leftLandPos.z
		pos.y = leftLandPos.y + 1200.0
		pDamageEffect = pX2Game:GetDamageEffect()
		pDamageEffect:CreateInstance_LUA( pNPCUnit, "DROPPING_ROCK", pos, leftLandPos.y )
		
		pos.y = pos.y - 1000.0
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DangerIndicatorShort", pos, D3DXVECTOR2(100,100), D3DXVECTOR2(1,-1) )

	
	end


end





-------------------------------------------------------------------------------
function ROCK_DROPPER_ARCADE_ATTACK_RIGHT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.25 ) then
	
		landPos = pNPCUnit:GetLandPosition_LUA()
		rightLandPos = pX2Game:GetLineMap():GetRandomPositionDir( pNPCUnit:GetPos(), 1000, true, true )
		
		rotDegree 	= pNPCUnit:GetRotateDegree()
		pMeshPlayer = pX2Game:GetMajorXMeshPlayer():CreateInstance_LUA( "GroundMarker", rightLandPos, rotDegree, rotDegree, 14 )


		pos = pNPCUnit:GetPos()
		pos.x = rightLandPos.x
		pos.z = rightLandPos.z
		pos.y = rightLandPos.y + 1200.0
		pDamageEffect = pX2Game:GetDamageEffect()
		pDamageEffect:CreateInstance_LUA( pNPCUnit, "DROPPING_ROCK", pos, rightLandPos.y )
		
		pos.y = pos.y - 1000.0
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DangerIndicatorShort", pos, D3DXVECTOR2(100,100), D3DXVECTOR2(1,-1) )
				
	end

end
