-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	UNIT_WIDTH		= 50.0,
	UNIT_HEIGHT		= 50.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_2"],
	UNIT_SCALE      = 1.8,
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	},
	
	READY_SOUND = 
	{
	
	 "Luto_WaitStart.ogg",
	
	
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_NPC_ALL_LUTO.X",
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
	MAX_HP				= 3000,
	MP_CHANGE_RATE		= 0,
	MP_CHARGE_RATE		= 0,
	
	USE_SLASH_TRACE		= FALSE,
	
	SHADOW_SIZE			= 0,
	SHADOW_FILE_NAME	= "shadow.dds",
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	--SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	QUESTION_MARK_SEQ		= "",
	EXCLAMATION_MARK_SEQ	= "",
	
	HEAD_BONE_NAME			= "Bip01_Head",
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	HITTED_TYPE			= HITTED_TYPE["HTD_STONE"],
	
	NOT_EXTRA_DAMAGE	= TRUE,	

}

INIT_STATE = 
{
	{ STATE_NAME = "LUTO_START",				LUA_STATE_START_FUNC = "LUTO_START_STATE_START_FUNC", 	LUA_CAMERA_MOVE_FUNC = "LUTO_START_CAMERA_MOVE",			
												LUA_FRAME_MOVE_FUNC = "LUTO_START_FRAME_MOVE",			LUA_STATE_END_FUNC = "LUTO_START_STATE_END_FUNC", 	},
	
	{ STATE_NAME = "LUTO_WAIT",				},
	{ STATE_NAME = "LUTO_DYING",				},
												
	
	START_STATE					= "LUTO_START",
	
	SMALL_DAMAGE_LAND_FRONT		= "LUTO_WAIT",
	SMALL_DAMAGE_LAND_BACK		= "LUTO_WAIT",
	BIG_DAMAGE_LAND_FRONT		= "LUTO_WAIT",
	BIG_DAMAGE_LAND_BACK		= "LUTO_WAIT",
	DOWN_DAMAGE_LAND_FRONT		= "LUTO_WAIT",
	DOWN_DAMAGE_LAND_BACK		= "LUTO_WAIT",
	FLY_DAMAGE_FRONT			= "LUTO_WAIT",
	FLY_DAMAGE_BACK				= "LUTO_WAIT",
	SMALL_DAMAGE_AIR			= "LUTO_WAIT",	
	BIG_DAMAGE_AIR				= "LUTO_WAIT",
	DOWN_DAMAGE_AIR				= "LUTO_WAIT",
	UP_DAMAGE					= "LUTO_WAIT",
	DAMAGE_REVENGE				= "LUTO_WAIT",
	
	DYING_LAND_FRONT			= "LUTO_DYING",
	DYING_LAND_BACK				= "LUTO_DYING",
	DYING_SKY					= "LUTO_DYING",

	REVENGE_ATTACK				= "",	
}

INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 99999,	-- sec
		TARGET_NEAR_RANGE			= 0,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 0,		-- cm
		TARGET_LOST_RANGE			= 0,		-- cm
		TARGET_SUCCESS_RATE			= 0,		-- %
		ATTACK_TARGET_RATE			= 0,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 0,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE = 
	{		
		DEST_GAP			= 150,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 160,
		
		DIR_CHANGE_INTERVAL = 0.7,
		
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
		PATROL_BEGIN_RATE		= 100, --50,		
		PATROL_RANGE			= 300,
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

LUTO_START = 
{
	ANIM_NAME					= "WaitStart",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	INVINCIBLE					= { 0, 100, },
	
	NEVER_MOVE					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,

    SOUND_PLAY0			= { 0.047, "Luto_WaitStart.ogg" },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],			"LUTO_WAIT",	},
	},
	
	TALK_BOX =
	{
		{ RATE = 100, MESSAGE = STR_ID_5064 },
	},
}

LUTO_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	INVINCIBLE					= { 0, 100, },
	
	NEVER_MOVE					= TRUE,
}

LUTO_DYING = 
{
	ANIM_NAME					= "Wait",
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
	TALK_BOX =
	{
		{ RATE = 100, MESSAGE = STR_ID_5064 },
	},
}
	








--------------------------------------------------------------------
--------------------------------------------------------------------
function LUTO_START_STATE_START_FUNC( pKTDXApp, pX2Game, pNPCUnit )
	
	if nil ~= pX2Game:GetMyUnit() then
		pX2Game:GetMyUnit():SetCanNotInputTime_LUA( 4.9 )
		pX2Game:PauseNPCAI( 4.9 )
	end
	
end

function LUTO_START_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimTimer_LUA( 3.0 ) == true then
		pos = pNPCUnit:GetLandPosition_LUA()
		pos.y = pos.y - 200
		pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_GATE_OF_NIGHTMARE"], pNPCUnit:GetHardLevel(), false, pos, false, 0 , true  )
	end
	
end


function LUTO_START_STATE_END_FUNC( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:SetNowHP_LUA( 0.0 )
	
end

function LUTO_START_CAMERA_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	pos = pNPCUnit:GetBonePos_LUA("Bip01_Head")	
	camera = pX2Game:GetX2Camera()
	pos.y = pos.y + 150
	camera:PartsLookDirectCamera_LUA( pNPCUnit, pos, D3DXVECTOR3( 1200, 0, 0 ), D3DXVECTOR2( 0,0 ) )
	
end




