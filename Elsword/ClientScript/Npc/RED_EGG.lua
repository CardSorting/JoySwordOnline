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
		"NUI_TENTACLE_PILLAR.dds",
		"Peita_Teleport_Jin01.DDS",
		"Steam_BP.DDS",
		"state_potion_flare.DDS",
		"Pa_Ran_SpaD_Smoke02.DDS",
		"Pa_Ran_SpaD_blackAura.DDS",
		"ColorBallGray.dds",
	},
	
	READY_SOUND = 
	{
	},
	READY_XMESH = 
	{
		"raven_powrUp_M_lightning02.Y",
	},
	READY_XSKIN_MESH = 
	{
		"Spin_Liner02.X",
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME	= "Motion_Red_Egg.x",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 400,
	RUN_SPEED			= 400,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 2300,
}


INIT_COMPONENT = 
{
	MAX_HP				= 1500,
	
	USE_SLASH_TRACE		= FALSE,
	
	SHADOW_SIZE			= 200,
	SHADOW_FILE_NAME	= "shadow.dds",
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",

	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	
	FALL_DOWN			= TRUE,
	
	DAMAGE_DOWN         = FALSE,	
}

INIT_STATE = 
{
	{ STATE_NAME = "RED_EGG_START",							LUA_STATE_END_FUNC = "RED_EGG_START_START",			},
	{ STATE_NAME = "RED_EGG_WAIT",							LUA_FRAME_MOVE_FUNC = "RED_EGG_WAIT_FRAME_MOVE",	},
	{ STATE_NAME = "RED_EGG_SUMMON",						LUA_FRAME_MOVE_FUNC = "RED_EGG_SUMMON_FRAME_MOVE",	},
	{ STATE_NAME = "RED_EGG_DYING",							},
	{ STATE_NAME = "RED_EGG_DAMAGE",						},

	START_STATE					= "RED_EGG_START",
	WAIT_STATE					= "RED_EGG_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "RED_EGG_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "RED_EGG_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "RED_EGG_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "RED_EGG_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "RED_EGG_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "RED_EGG_DAMAGE",
	
	DYING_LAND_FRONT			= "RED_EGG_DYING",
	DYING_LAND_BACK				= "RED_EGG_DYING",
	DYING_SKY					= "RED_EGG_DYING",
	
	REVENGE_ATTACK				= "",
}


INIT_AI = 
{
	NO_BRAIN = TRUE,
}

RED_EGG_START = 
{
	ANIM_NAME					= "Start",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	INVINCIBLE					= { 0, 100, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,

	NEVER_MOVE					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"RED_EGG_WAIT",							},
		
	},
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_RED_EGG_Start", 0,
	},	
}
function RED_EGG_START_START( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetInt_LUA( 0, 15 )		--소환 쿨타임 5초
	pNPCUnit:SetTimerRestart( 0 )	--체크 시간 리셋
end


RED_EGG_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,
	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	NEVER_MOVE					= TRUE,
}
function RED_EGG_WAIT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:GetInt_LUA( 0 ) < pNPCUnit:GetTimerElapsedTime( 0 ) then
		pNPCUnit:StateChange_LUA( "RED_EGG_SUMMON" )
	end
	
end


RED_EGG_SUMMON = 
{
	ANIM_NAME					= "Summon",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	NEVER_MOVE					= TRUE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"RED_EGG_DYING", },
	},
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_RED_EGG_Summon", 0,
	},	
}
function RED_EGG_SUMMON_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 1.582 ) then
		local vPos = pNPCUnit:GetPos()
		local vPos1 = vPos
		vPos1.x = vPos1.x - 70
		pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_WALDOMENATION"], pNPCUnit:GetHardLevel(), false, vPos1, false, 0.0, true, 0 )
		vPos.x = vPos.x + 70
		pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_WALDOMENATION"], pNPCUnit:GetHardLevel(), false, vPos, false, 0.0, true, 0 )
		
		pX2Game:FlushCreateNPCReq()	
	end
	
end


RED_EGG_DYING =
{
	ANIM_NAME					= "Dying",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	DYING_SPEED					= 1,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

RED_EGG_DAMAGE = 
{
	ANIM_NAME					= "Damage",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,
	
	NEVER_MOVE					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"RED_EGG_WAIT", },
	},
}




