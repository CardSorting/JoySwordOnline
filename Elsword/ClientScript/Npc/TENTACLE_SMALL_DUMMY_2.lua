-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	UNIT_WIDTH		= 50.0,
	UNIT_HEIGHT		= 150.0,
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
	MOTION_FILE_NAME	= "TENTACLE_DUMMY.X",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
}


INIT_COMPONENT = 
{
	SHADOW_SIZE			= 200,
	SHADOW_FILE_NAME	= "shadow.dds",
	
	-- SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	-- SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	-- SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",

	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	
	FALL_DOWN			= FALSE,
	
	DAMAGE_DOWN         = FALSE,	
	DIE_FLY				= FALSE,
}

INIT_STATE = 
{
	{ STATE_NAME = "TENTACLE_SMALL_DUMMY_2_START",		LUA_STATE_END_FUNC = "TENTACLE_SMALL_DUMMY_2_START_STATE_END",},
	{ STATE_NAME = "TENTACLE_SMALL_DUMMY_2_WAIT_READY",		},
	{ STATE_NAME = "TENTACLE_SMALL_DUMMY_2_WAIT",		},

	{ STATE_NAME = "TENTACLE_SMALL_DUMMY_2_DYING",		LUA_STATE_START_FUNC = "TENTACLE_SMALL_DUMMY_2_DYING_STATE_START",},
	{ STATE_NAME = "TENTACLE_SMALL_DUMMY_2_DAMAGE",		},

	START_STATE					= "TENTACLE_SMALL_DUMMY_2_START",
	WAIT_STATE					= "TENTACLE_SMALL_DUMMY_2_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "TENTACLE_SMALL_DUMMY_2_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "TENTACLE_SMALL_DUMMY_2_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "TENTACLE_SMALL_DUMMY_2_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "TENTACLE_SMALL_DUMMY_2_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "TENTACLE_SMALL_DUMMY_2_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "TENTACLE_SMALL_DUMMY_2_DAMAGE",
	
	DYING_LAND_FRONT			= "TENTACLE_SMALL_DUMMY_2_DYING",
	DYING_LAND_BACK				= "TENTACLE_SMALL_DUMMY_2_DYING",
	DYING_SKY					= "TENTACLE_SMALL_DUMMY_2_DYING",
	
	REVENGE_ATTACK				= "",
}


INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_NEAR_FIRST"],
		TARGET_INTERVAL				= 0,		-- sec
		TARGET_NEAR_RANGE			= 1000,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 9999,		-- cm
		TARGET_LOST_RANGE			= 9999,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --50,		-- %
		ATTACK_TARGET_RATE			= 100, -- 10,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, -- 50,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},
}

---------------------------------TENTACLE_SMALL_DUMMY_2_START---------------------------------
TENTACLE_SMALL_DUMMY_2_START = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT	= FALSE,
	
	INVINCIBLE					= { 0, 100, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_ID			= 0.1,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"TENTACLE_SMALL_DUMMY_2_WAIT_READY",			"CT_TENTACLE_SMALL_DUMMY_2_WAIT_READY",				}, 
	},
	
	CT_TENTACLE_SMALL_DUMMY_2_WAIT_READY = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 100,
	},
}
function TENTACLE_SMALL_DUMMY_2_START_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	--맵안에 npc 개체수를 받아옴
	local iNumOfNpc = pX2Game:GetNPCUnitListSize()
	--개체수만큼 for문을 돌며 검사
	for i = 0, iNumOfNpc - 1 do
		local pNpc = pX2Game:GetNPCUnit( i )
		if nil ~= pNpc then
			if true == pNpc:IsUnitID( NPC_UNIT_ID["NUI_TENTACLE_SMALL_2"] ) then
				pNpc:StateChange_LUA("TENTACLE_SMALL_2_ATTACK")
				break;
			end
		end
	end
end
------------------------------------------------------------------------------------------
TENTACLE_SMALL_DUMMY_2_WAIT_READY = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= TRUE,

	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,

	NEVER_MOVE					= TRUE,
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"TENTACLE_SMALL_DUMMY_2_WAIT",		"CT_TENTACLE_SMALL_DUMMY_2_WAIT"	},
	},
	CT_TENTACLE_SMALL_DUMMY_2_WAIT =
	{
		STATE_TIME_OVER	= 1.0,
	},
}
---------------------------------TENTACLE_SMALL_DUMMY_2_WAIT---------------------------------
TENTACLE_SMALL_DUMMY_2_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	NEVER_MOVE					= TRUE,
}
------------------------------------------------------------------------------------------


---------------------------------TENTACLE_SMALL_DUMMY_2_DYING--------------------------------
TENTACLE_SMALL_DUMMY_2_DYING =
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	ANIM_SPEED					= 2.0,
	
	INVINCIBLE					= { 0, 100, }, 		

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	DYING_SPEED					= 1,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}
function TENTACLE_SMALL_DUMMY_2_DYING_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	--맵안에 npc 개체수를 받아옴
	local iNumOfNpc = pX2Game:GetNPCUnitListSize()
	--개체수만큼 for문을 돌며 검사
	for i = 0, iNumOfNpc - 1 do
		local pNpc = pX2Game:GetNPCUnit( i )
		if nil ~= pNpc then
			if true == pNpc:IsUnitID( NPC_UNIT_ID["NUI_TENTACLE_SMALL_2"] ) then
				--죽인다
				pNpc:SetNowHP_LUA( 0 )
				break;
			end
		end
	end
end
------------------------------------------------------------------------------------------


---------------------------------TENTACLE_SMALL_DUMMY_2_DAMAGE-------------------------------
TENTACLE_SMALL_DUMMY_2_DAMAGE = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	ANIM_SPEED					= 2.0,
	
	NEVER_MOVE					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"TENTACLE_SMALL_DUMMY_2_WAIT", },
	},
}
------------------------------------------------------------------------------------------