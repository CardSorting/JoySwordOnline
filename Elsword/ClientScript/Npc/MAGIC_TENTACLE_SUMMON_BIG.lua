-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	UNIT_WIDTH		= 100.0,
	UNIT_HEIGHT		= 150.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	UNIT_SCALE		= 1.3,
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
		"NUI_MAGIC_TENTACLE_SUMMON_001.tga",
		"PlusHPMP.dds",
		"Jin_attackA_fire_Sphere_A.dds",
		"Pet_unicorn_lightning_After.DDS",
		"LobbyLevelUp04.tga",
	},
	
	READY_SOUND = 
	{
	},
	
	READY_XMESH = 
	{
		"darkness_attackA_curse_Sphere.Y",
	},
	
	READY_XSKIN_MESH = 
	{
		"MAGIC_TENTACLE_SUMMON_MA_A_Dummy.X",
		"DummyAttackBox_50x50x50.X",
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME	= "Motion_Magic_Tentacle.x",
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
	
	FALL_DOWN			= TRUE,
	
	DAMAGE_DOWN         = FALSE,
	DIE_FLY				= FALSE,
}

INIT_STATE = 
{
	{ STATE_NAME = "MAGIC_TENTACLE_SUMMON_BIG_START",							},
	{ STATE_NAME = "MAGIC_TENTACLE_SUMMON_BIG_WAIT",							},

	{ STATE_NAME = "MAGIC_TENTACLE_SUMMON_BIG_MAGIC_ATTACK",		LUA_FRAME_MOVE_FUNC = "MAGIC_TENTACLE_SUMMON_BIG_MAGIC_ATTACK_FRAME_MOVE",			STATE_COOL_TIME = 5,		},

	--리액션 관련
	{ STATE_NAME = "MAGIC_TENTACLE_SUMMON_BIG_DAMAGE",							},
	
	{ STATE_NAME = "MAGIC_TENTACLE_SUMMON_BIG_DYING",				LUA_STATE_END_FUNC = "MAGIC_TENTACLE_SUMMON_BIG_DYING_END",	},
	
	START_STATE					= "MAGIC_TENTACLE_SUMMON_BIG_START",
	WAIT_STATE					= "MAGIC_TENTACLE_SUMMON_BIG_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "MAGIC_TENTACLE_SUMMON_BIG_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "MAGIC_TENTACLE_SUMMON_BIG_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "MAGIC_TENTACLE_SUMMON_BIG_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "MAGIC_TENTACLE_SUMMON_BIG_DAMAGE",
	
	-- fix!! 안넘어지게 테스트
	DOWN_DAMAGE_LAND_FRONT		= "MAGIC_TENTACLE_SUMMON_BIG_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "MAGIC_TENTACLE_SUMMON_BIG_DAMAGE",
	

	REVENGE_ATTACK				= "",
	
	DYING_LAND_FRONT			= "MAGIC_TENTACLE_SUMMON_BIG_DYING",
	DYING_LAND_BACK				= "MAGIC_TENTACLE_SUMMON_BIG_DYING",
	DYING_SKY					= "MAGIC_TENTACLE_SUMMON_BIG_DYING",
}


INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 2,		-- sec
		TARGET_NEAR_RANGE			= 1000,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 1200,		-- cm
		TARGET_LOST_RANGE			= 1500,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --50,		-- %
		ATTACK_TARGET_RATE			= 100, -- 10,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, -- 50,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},
	
	CHASE_MOVE = 
	{		
		DIR_CHANGE_INTERVAL = 0,
	},
}

MAGIC_TENTACLE_SUMMON_BIG_START = 
{
	ANIM_NAME					= "Start",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	INVINCIBLE					= { 0, 100, },
	SOUND_PLAY0			= { 0.012, "Plant_Whip_WaitStart.ogg" },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"MAGIC_TENTACLE_SUMMON_BIG_WAIT",							},
		
	},
}

MAGIC_TENTACLE_SUMMON_BIG_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	NEVER_MOVE					= TRUE,
	
	VIEW_TARGET     			= TRUE, 
	ALLOW_DIR_CHANGE			= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"MAGIC_TENTACLE_SUMMON_BIG_MAGIC_ATTACK",			"CT_MAGIC_TENTACLE_SUMMON_BIG_MAGIC_ATTACK"		}, 	
	},
	
	CT_MAGIC_TENTACLE_SUMMON_BIG_MAGIC_ATTACK = 
	{
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 100,
	},	
}

MAGIC_TENTACLE_SUMMON_BIG_MAGIC_ATTACK = 
{
	ANIM_NAME					= "Magic_Attack_A",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SUPER_ARMOR_TIME0			= { 0, 0.5, },

	NEVER_MOVE					= TRUE,
	
	VIEW_TARGET     			= TRUE, 
	ALLOW_DIR_CHANGE			= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MAGIC_TENTACLE_SUMMON_BIG_WAIT", },
	},
	
	DELETE_EFFECT_SET_ON_DAMAGE_REACT = TRUE,
	EFFECT_SET_LIST = 
	{
		"EffectSet_MAGIC_TENTACLE_MA_A", 0.0,
	},	
}

function MAGIC_TENTACLE_SUMMON_BIG_MAGIC_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 1.2 ) then
		
		local pDamageEffect = pX2Game:GetDamageEffect()
		
		if nil ~= pDamageEffect then
			local pos = pNPCUnit:GetLandPosition_LUA()
			local EffectPos = pNPCUnit:GetBonePos_LUA( "ATTACK_SPHERE1_Body01" )
			local vDirVector = pNPCUnit:GetDirVector()
			local bIsRight = pNPCUnit:GetIsRight()
			if bIsRight == true then 
				EffectPos.x = EffectPos.x + 140.0-- * vDirVector.x
			else
				EffectPos.x = EffectPos.x - 140.0 --* vDirVector.x
			end
			EffectPos.y = EffectPos.y - 140
			local pCEffect = pDamageEffect:CreateInstance_LUA( pNPCUnit, "DAMAGE_EFFECT_MAGIC_TENTACLE_MAGIC_ATTACK", EffectPos, pos.y )
			
			if nil ~= pCEffect then
				pNPCUnit:SetLockOnTarget( pCEffect )
			end
		end
	end
end

MAGIC_TENTACLE_SUMMON_BIG_DAMAGE = 
{
	ANIM_NAME					= "Damage",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0			= { 0.050, "Plant_Whip_Damage.ogg" },
	NEVER_MOVE					= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MAGIC_TENTACLE_SUMMON_BIG_WAIT", },
	},
}

MAGIC_TENTACLE_SUMMON_BIG_DYING = 
{
	ANIM_NAME					= "Dying",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		
	SOUND_PLAY0			= { 0.011, "Plant_Whip_Dying.ogg" },	
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}








function MAGIC_TENTACLE_SUMMON_BIG_DYING_END( pKTDXApp, pX2Game, pNPCUnit )
	
	local MasterUnitUID = NPC_UNIT_ID["NUI_CORRUPTION_WIND_EL"]
	local pNpc = pX2Game:GetNearestNpcInSpecificRangeByNpcId_LUA( pNPCUnit:GetPos(), MasterUnitUID, 999999 )
	if pNpc ~= nil then
		for i = 0, 3 do
			local vSummonInfo = pNpc:GetVector_LUA (i)
			local vSummonPos = pX2Game:GetLineMap():GetStartPosition( vSummonInfo.x )
			local fGap = pX2Game:GetDist_LUA ( vSummonPos, pNPCUnit:GetPos() )
			if  fGap <= 10 then
				vSummonInfo.y = 0	
				pNpc:SetVector_LUA (i, vSummonInfo)
			end
		end
	end
end