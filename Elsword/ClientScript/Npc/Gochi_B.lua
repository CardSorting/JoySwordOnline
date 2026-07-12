-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

INIT_SYSTEM = 
{
	UNIT_WIDTH		= 100.0,
	UNIT_HEIGHT		= 100.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	},
	
	READY_SOUND = 
	{
	"Squish_Hit02.wav",
	"Gochi_A_Dying01.ogg",
	},

	READY_XSKIN_MESH =
	{
		"_Motion_MANTA_RAY.x",
	},


}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_GOCHI_A.x",

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
	MAX_HP				= 10000,
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
	SKY_DIE			= TRUE,	

	CAN_BE_STEPPED_ON = TRUE,

}

INIT_STATE = 
{
	{ STATE_NAME = "GOCHI_B_WAIT",					},
	
	--리액션 관련
	{ STATE_NAME = "GOCHI_B_DAMAGE",				},

	{ STATE_NAME = "GOCHI_B_DYING",					LUA_FRAME_MOVE_FUNC = "GOCHI_B_BROKEN_FRAME_MOVE", },
	
	START_STATE					= "GOCHI_B_WAIT",
	WAIT_STATE					= "GOCHI_B_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "GOCHI_B_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "GOCHI_B_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "GOCHI_B_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "GOCHI_B_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "GOCHI_B_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "GOCHI_B_DAMAGE",
	FLY_DAMAGE_FRONT			= "GOCHI_B_DAMAGE",
	FLY_DAMAGE_BACK				= "GOCHI_B_DAMAGE",
	SMALL_DAMAGE_AIR			= "GOCHI_B_DAMAGE",	
	BIG_DAMAGE_AIR				= "GOCHI_B_DAMAGE",
	DOWN_DAMAGE_AIR				= "GOCHI_B_DAMAGE",
	UP_DAMAGE					= "GOCHI_B_DAMAGE",
	DAMAGE_REVENGE				= "GOCHI_B_DAMAGE",
	
	DYING_LAND_FRONT			= "GOCHI_B_DYING",
	DYING_LAND_BACK				= "GOCHI_B_DYING",
	DYING_SKY					= "GOCHI_B_DYING",

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
}

GOCHI_B_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	--INVINCIBLE					= { 0, 100, },
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	
	NEVER_MOVE					= TRUE,
	
}

GOCHI_B_DAMAGE = 
{
	ANIM_NAME					= "Damage",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	--INVINCIBLE					= { 0, 100, },
	SOUND_PLAY0 = { 0.01, "Squish_Hit02.wav" },
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	
	NEVER_MOVE					= TRUE,
	
	
	EVENT_PROCESS = 
	{
			{ STATE_CHANGE_TYPE["SCT_MOTION_END"],			"GOCHI_B_WAIT", },
	},
}



GOCHI_B_DYING = 
{
	ANIM_NAME					= "Dying",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	NEVER_MOVE					= TRUE,
	DYING_END					= TRUE,
	--DYING_SPEED					= 1,
	
	NEVER_MOVE					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SOUND_PLAY0 = { 0.01, "Gochi_A_Dying01.ogg" },
}



function GOCHI_B_BROKEN_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.001 ) then
		local pEffectSet = pX2Game:GetEffectSet()
		pEffectSet:PlayEffectSet_LUA( "EffectSet_GOCHI_DYING", pNPCUnit )
	end

	if pNPCUnit:AnimEventTimer_LUA( 0.6 ) then
		local fRate = pNPCUnit:GetRandVal() % 100

		local vSummonPos = pNPCUnit:GetPos()
		if fRate < 50 then
			pX2Game:CreateNPCReqElite( NPC_UNIT_ID["NUI_MANTA_RAI"], pNPCUnit:GetHardLevel(), false, vSummonPos, false, D3DXVECTOR3(0.0, pNPCUnit:GetKeyCode(), 0), false, false  )
		else
			pX2Game:CreateNPCReqElite( NPC_UNIT_ID["NUI_MANTA_RES"], pNPCUnit:GetHardLevel(), false, vSummonPos, false, D3DXVECTOR3(1.0, pNPCUnit:GetKeyCode(), 0), false, false  )		
		end	
	end

end
