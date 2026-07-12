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
	DIE_FLY				= FALSE,
}

INIT_STATE = 
{
	{ STATE_NAME = "RED_EGG_SUMMON_START",							LUA_STATE_END_FUNC = "RED_EGG_SUMMON_START_START",			},
	{ STATE_NAME = "RED_EGG_SUMMON_WAIT",							LUA_FRAME_MOVE_FUNC = "RED_EGG_SUMMON_WAIT_FRAME_MOVE",	},
	{ STATE_NAME = "RED_EGG_SUMMON_SUMMON",						LUA_FRAME_MOVE_FUNC = "RED_EGG_SUMMON_SUMMON_FRAME_MOVE",	},
	{ STATE_NAME = "RED_EGG_SUMMON_DYING",							LUA_STATE_END_FUNC = "RED_EGG_SUMMON_DYING_END" },
	{ STATE_NAME = "RED_EGG_SUMMON_DAMAGE",						},

	START_STATE					= "RED_EGG_SUMMON_START",
	WAIT_STATE					= "RED_EGG_SUMMON_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "RED_EGG_SUMMON_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "RED_EGG_SUMMON_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "RED_EGG_SUMMON_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "RED_EGG_SUMMON_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "RED_EGG_SUMMON_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "RED_EGG_SUMMON_DAMAGE",
	
	DYING_LAND_FRONT			= "RED_EGG_SUMMON_DYING",
	DYING_LAND_BACK				= "RED_EGG_SUMMON_DYING",
	DYING_SKY					= "RED_EGG_SUMMON_DYING",
	
	REVENGE_ATTACK				= "",
}


INIT_AI = 
{
	NO_BRAIN = TRUE,
}

RED_EGG_SUMMON_START = 
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
	
	SOUND_PLAY0			= { 0.1, "Plant_Whip_WaitStart.ogg" },
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"RED_EGG_SUMMON_WAIT",							},
		
	},
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_RED_EGG_Start", 0,
	},	
}
function RED_EGG_SUMMON_START_START( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetInt_LUA( 0, 3 )		--소환 쿨타임 5초
	pNPCUnit:SetInt_LUA( 3, NPC_UNIT_ID["NUI_KARIS_JIN"] )	--마스터 유닛
	pNPCUnit:SetTimerRestart( 0 )	--체크 시간 리셋
end


RED_EGG_SUMMON_WAIT = 
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
function RED_EGG_SUMMON_WAIT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:GetInt_LUA( 0 ) < pNPCUnit:GetTimerElapsedTime( 0 ) then
		pNPCUnit:StateChange_LUA( "RED_EGG_SUMMON_SUMMON" )
	end
	
end


RED_EGG_SUMMON_SUMMON = 
{
	ANIM_NAME					= "Summon",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	NEVER_MOVE					= TRUE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0			= { 0.1, "Gochi_A_Dying01.ogg" },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"RED_EGG_SUMMON_DYING", },
	},
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_RED_EGG_Summon", 0,
	},	
}
function RED_EGG_SUMMON_SUMMON_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 1.582 ) then
		local vPos = pNPCUnit:GetPos()
		local vPos1 = vPos
		vPos1.x = vPos1.x
		
		----------------------------------------------유닛 아이디----------------------레벨--------------액티브----위치---방향(true면 오른쪽)---몬스터 생성할때 delaytime 설정-noDrop-keycode 설정
		pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_WALDOMENATION_SMALL_SUMMON"], pNPCUnit:GetHardLevel(), true, vPos1, false, 0.0, false, 0 )
		
		pX2Game:FlushCreateNPCReq()	
	end
	
end


RED_EGG_SUMMON_DYING =
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

RED_EGG_SUMMON_DAMAGE = 
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
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"RED_EGG_SUMMON_WAIT", },
	},
}






function RED_EGG_SUMMON_DYING_END( pKTDXApp, pX2Game, pNPCUnit )
	local MasterUnitUID = pNPCUnit:GetInt_LUA (3)
	local pNpc = pX2Game:GetNearestNpcInSpecificRangeByNpcId_LUA( pNPCUnit:GetPos(), MasterUnitUID, 999999 )
	if pNpc ~= nil then
		for i = 4, 7 do
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