-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--------------------------------------------------------------------------
INIT_SYSTEM = 
{
	UNIT_WIDTH	= 250.0,
	UNIT_HEIGHT	= 100.0,
	UNIT_LAYER	= X2_LAYER["XL_UNIT_0"],
	UNIT_SCALE	= 1.1,
}
--------------------------------------------------------------------------
INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
		"INT_Cage_BabyPonggo_Body.tga",
		"INT_Cage_BabyPonggo_Face_Happy.tga",
		"INT_Cage_BabyPonggo_Face_normal.tga",
		"INT_Cage_BabyPonggo_Face_Sad.tga",
		"INT_Cage_blue.tga",
		"INT_Cage_gray.tga",
		"INT_Cage_green.tga",
		"INT_Cage_Red.tga",
		"INT_Cage_violet.tga",
		"INT_Cage_whaite.tga",
		"INT_Cage_yellow.tga",
	},
	
	READY_XMESH = 
	{
	},
	
	READY_SOUND = 
	{
	},
}
--------------------------------------------------------------------------
INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Event_INT_Cage.x",
	MOTION_ANI_TEX_XET		= "Event_INT_Cage.xet",
}
--------------------------------------------------------------------------
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
--------------------------------------------------------------------------
INIT_COMPONENT = 
{
	MAX_HP				= 10000,
	MP_CHANGE_RATE		= 0,
	MP_CHARGE_RATE		= 0,
	
	USE_SLASH_TRACE		= FALSE,
	
	BOSS_GAGE_FACE_TEX			= "DLG_BossState_Event.tga",
	BOSS_GAGE_FACE_TEX_PIECE	= "NUI_PRISON",
	
	QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
	
	HEAD_BONE_NAME		= "Bip01_Head",
	HYPER_MODE_COUNT	= 0,
		
	HITTED_TYPE			= HITTED_TYPE["HTD_STONE"],
	SKY_DIE				= TRUE,
	DIE_FLY				= FALSE,
	CAN_BE_STEPPED_ON	= TRUE,
	OUT_LINE_WIDTH_SCALE	= 0.3,
}
--------------------------------------------------------------------------
INIT_STATE = 
{
	{ STATE_NAME = "START", LUA_STATE_START_FUNC = "START_START_FUNC", },

	{ STATE_NAME = "WAIT",				LUA_FRAME_MOVE_FUNC = "WAIT_FRAME_MOVE_FUNC",		LUA_STATE_START_FUNC = "WAIT_START_FUNC",	},
	{ STATE_NAME = "WAIT_GRAY",			LUA_FRAME_MOVE_FUNC = "WAIT_FRAME_MOVE_FUNC",	},
	{ STATE_NAME = "WAIT_BLUE",			LUA_FRAME_MOVE_FUNC = "WAIT_FRAME_MOVE_FUNC",	},
	{ STATE_NAME = "WAIT_GREEN",		LUA_FRAME_MOVE_FUNC = "WAIT_FRAME_MOVE_FUNC",	},
	{ STATE_NAME = "WAIT_RED",			LUA_FRAME_MOVE_FUNC = "WAIT_FRAME_MOVE_FUNC",	},
	{ STATE_NAME = "WAIT_VIOLET",		LUA_FRAME_MOVE_FUNC = "WAIT_FRAME_MOVE_FUNC",	},
	{ STATE_NAME = "WAIT_YELLOW",		LUA_FRAME_MOVE_FUNC = "WAIT_FRAME_MOVE_FUNC",	},
	
	{ STATE_NAME = "DAMAGE",			LUA_STATE_START_FUNC = "DAMAGE_START_FUNC",	},
	{ STATE_NAME = "DAMAGE_GRAY",	 },
	{ STATE_NAME = "DAMAGE_BLUE",	 },
	{ STATE_NAME = "DAMAGE_GREEN",	 },
	{ STATE_NAME = "DAMAGE_RED",	 },
	{ STATE_NAME = "DAMAGE_VIOLET",	 },
	{ STATE_NAME = "DAMAGE_YELLOW",	 },

	{ STATE_NAME = "DYING",	LUA_FRAME_MOVE_FUNC = "DYING_FRAME_MOVE_FUNC",},

	COMMON_FRAME_FUNC			= "COMMON_FRAME_MOVE",
	
	START_STATE					= "START",
	WAIT_STATE					= "WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "DAMAGE",
	FLY_DAMAGE_FRONT			= "DAMAGE",
	FLY_DAMAGE_BACK				= "DAMAGE",
	SMALL_DAMAGE_AIR			= "DAMAGE",	
	BIG_DAMAGE_AIR				= "DAMAGE",
	DOWN_DAMAGE_AIR				= "DAMAGE",
	UP_DAMAGE					= "DAMAGE",
	DAMAGE_REVENGE				= "DAMAGE",
	
	DYING_LAND_FRONT			= "DYING",
	DYING_LAND_BACK				= "DYING",
	DYING_SKY					= "DYING",

	REVENGE_ATTACK				= "",	
}
--------------------------------------------------------------------------
INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 1,
		TARGET_NEAR_RANGE			= 0,
		TARGET_RANGE				= 0,
		TARGET_LOST_RANGE			= 0,
		TARGET_SUCCESS_RATE			= 0,
		ATTACK_TARGET_RATE			= 100,
		PRESERVE_LAST_TARGET_RATE	= 0,
	},
}
--------------------------------------------------------------------------
START = 
{
	ANIM_NAME	= "Wait_Gray",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= TRUE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,
		
	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,
	
	NEVER_MOVE	= TRUE,
	RIGHT		= TRUE,

	ALARM =
	{
		ALARM_MESSAGE 			 = STR_ID_25285,  		  		    --경고 문구
		DELAY   				 = 1,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = FALSE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_YELLOW"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 5, 				  			    -- 표시 지속 시간
	},

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"WAIT", },
	},
	
	DELETE_EFFECT_SET_ON_DIE = TRUE,

	EFFECT_SET_LIST = 
	{
	},
	
}
WAIT = 
{
	ANIM_NAME	= "Wait_Gray",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= TRUE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,
		
	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,
	
	NEVER_MOVE	= TRUE,
	RIGHT		= TRUE,

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"WAIT", },
	},	
}
WAIT_GRAY = 
{
	ANIM_NAME	= "Wait_Gray",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= TRUE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,
		
	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,
	
	NEVER_MOVE	= TRUE,
	RIGHT		= TRUE,

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"WAIT", },
	},	
}
WAIT_BLUE = 
{
	ANIM_NAME	= "Wait_Blue",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= TRUE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,
		
	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,
	
	NEVER_MOVE	= TRUE,
	RIGHT		= TRUE,

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"WAIT", },
	},	
}
WAIT_GREEN = 
{
	ANIM_NAME	= "Wait_Green",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= TRUE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,
		
	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,
	
	NEVER_MOVE	= TRUE,
	RIGHT		= TRUE,

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"WAIT", },
	},	
}
WAIT_RED = 
{
	ANIM_NAME	= "Wait_Red",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= TRUE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,
		
	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,
	
	NEVER_MOVE	= TRUE,
	RIGHT		= TRUE,

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"WAIT", },
	},	
}
WAIT_VIOLET = 
{
	ANIM_NAME	= "Wait_Violet",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= TRUE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,
		
	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,
	
	NEVER_MOVE	= TRUE,
	RIGHT		= TRUE,

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"WAIT", },
	},	
}
WAIT_YELLOW = 
{
	ANIM_NAME	= "Wait_Yellow",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= TRUE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,
		
	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,
	
	NEVER_MOVE	= TRUE,
	RIGHT		= TRUE,

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"WAIT", },
	},	
}

--------------------------------------------------------------------------
DAMAGE = 
{
	ANIM_NAME	= "Damage_Gray",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= TRUE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,
		
	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,

	
	NEVER_MOVE	= TRUE,
	RIGHT		= TRUE,	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"WAIT", },
	},
}
DAMAGE_GRAY = 
{
	ANIM_NAME	= "Damage_Gray",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= TRUE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,
		
	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,

	
	NEVER_MOVE	= TRUE,
	RIGHT		= TRUE,	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"WAIT", },
	},
}
DAMAGE_BLUE = 
{
	ANIM_NAME	= "Damage_Blue",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= TRUE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,
		
	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,

	
	NEVER_MOVE	= TRUE,
	RIGHT		= TRUE,	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"WAIT", },
	},
}
DAMAGE_GREEN = 
{
	ANIM_NAME	= "Damage_Green",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= TRUE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,
		
	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,

	
	NEVER_MOVE	= TRUE,
	RIGHT		= TRUE,	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"WAIT", },
	},
}
DAMAGE_RED = 
{
	ANIM_NAME	= "Damage_Red",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= TRUE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,
		
	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,

	
	NEVER_MOVE	= TRUE,
	RIGHT		= TRUE,	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"WAIT", },
	},
}
DAMAGE_VIOLET = 
{
	ANIM_NAME	= "Damage_Violet",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= TRUE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,
		
	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,

	
	NEVER_MOVE	= TRUE,
	RIGHT		= TRUE,	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"WAIT", },
	},
}
DAMAGE_YELLOW = 
{
	ANIM_NAME	= "Damage_Yellow",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= TRUE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,
		
	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,

	
	NEVER_MOVE	= TRUE,
	RIGHT		= TRUE,	
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"WAIT", },
	},
}
--------------------------------------------------------------------------
DYING = 
{
	ANIM_NAME		= "Dying",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	INVINCIBLE		= { 0, 100, }, 		
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,

	SOUND_PLAY0 				= { 0.02, "HENIR_Gate_Broken.ogg" },
	SOUND_PLAY1 				= { 1.8, "Mark_Success.ogg" },
	SOUND_PLAY2 				= { 0.8, "Nasod_Element_WaitStart1.ogg" },
	
	NEVER_MOVE	= TRUE,
	RIGHT		= TRUE,
	DYING_END	= TRUE,
	DYING_SPEED	= 1.0,
		
	EFFECT_SET_LIST = 
	{
	},
	IMMADIATE_PACKET_SEND	= TRUE,
}

function WAIT_START_FUNC( pKTDApp, pX2Game, pNPCUnit )
	if pNPCUnit:GetInt_LUA( 0 ) == 1 then
		pNPCUnit:StateChange_LUA( "WAIT_BLUE" )
	elseif pNPCUnit:GetInt_LUA( 0 ) == 2 then
		pNPCUnit:StateChange_LUA( "WAIT_GREEN" )
	elseif pNPCUnit:GetInt_LUA( 0 ) == 3 then
		pNPCUnit:StateChange_LUA( "WAIT_RED" )
	elseif pNPCUnit:GetInt_LUA( 0 ) == 4 then
		pNPCUnit:StateChange_LUA( "WAIT_VIOLET" )
	elseif pNPCUnit:GetInt_LUA( 0 ) == 5 then
		pNPCUnit:StateChange_LUA( "WAIT_YELLOW" )
	else
		pNPCUnit:StateChange_LUA( "WAIT_GRAY" )
	end
end

function DAMAGE_START_FUNC( pKTDApp, pX2Game, pNPCUnit )
	if pNPCUnit:GetInt_LUA( 0 ) == 1 then
		pNPCUnit:StateChange_LUA( "DAMAGE_BLUE" )
	elseif pNPCUnit:GetInt_LUA( 0 ) == 2 then
		pNPCUnit:StateChange_LUA( "DAMAGE_GREEN" )
	elseif pNPCUnit:GetInt_LUA( 0 ) == 3 then
		pNPCUnit:StateChange_LUA( "DAMAGE_RED" )
	elseif pNPCUnit:GetInt_LUA( 0 ) == 4 then
		pNPCUnit:StateChange_LUA( "DAMAGE_VIOLET" )
	elseif pNPCUnit:GetInt_LUA( 0 ) == 5 then
		pNPCUnit:StateChange_LUA( "DAMAGE_YELLOW" )
	else
		pNPCUnit:StateChange_LUA( "DAMAGE_GRAY" )
	end
end

function WAIT_FRAME_MOVE_FUNC( pKTDApp, pX2Game, pNPCUnit )
	if pNPCUnit:GetTimerElapsedTime( 0 ) > 20 then
		pNPCUnit:SetTimerRestart( 0 )
		pNPCUnit:SetTimerRestart( 1 )

		pNPCUnit:ReInitAtkAndDef_LUA()

		colorRand = pNPCUnit:GetRandVal() % 100
		if colorRand < 18 then
			pNPCUnit:SetInt_LUA( 0, 1 )
		elseif colorRand < 36 then
			pNPCUnit:SetInt_LUA( 0, 2 )
		elseif colorRand < 54 then
			pNPCUnit:SetInt_LUA( 0, 3 )
		elseif colorRand < 72 then
			pNPCUnit:SetInt_LUA( 0, 4 )
			pNPCUnit:SetDefMagic_LUA( pNPCUnit:SetDefMagic_LUA() * 5.0 )
		elseif colorRand < 90 then
			pNPCUnit:SetInt_LUA( 0, 5 )
			pNPCUnit:SetDefPhysic_LUA( pNPCUnit:GetDefPhysic_LUA() * 5.0 )
		else
			pNPCUnit:SetInt_LUA( 0, 0 )
		end
		
		pNPCUnit:StateChange_LUA( "WAIT" )
	end
end


function DYING_FRAME_MOVE_FUNC( pKTDApp, pX2Game, pNPCUnit )
	if nil ~= pNPCUnit then
		if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
			pNPCUnit:SetCoolTimeSummonCard_LUA()
		elseif pNPCUnit:AnimEventTimer_LUA( 2.00 ) then
			pNPCUnit:CreateAllyNpcByMonster_LUA( NPC_UNIT_ID["NUI_EVENT_BABY"])
		end
	end
end


function START_START_FUNC( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetTimerRestart( 0 )
end

function COMMON_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	local vPos = pNPCUnit:GetBonePos_LUA( "Bip01" )
	local pNearUserUnit = pX2Game:GetNearestUserUnitInSpecificRange_LUA( vPos, 0, 2000 )
	
	if nil ~= pNearUserUnit and pNPCUnit:GetTimerElapsedTime( 1 ) > 1 then

		if pNPCUnit:GetInt_LUA( 0 ) == 1 then
			newMP = pNearUserUnit:GetNowMP() - pNearUserUnit:GetMaxMP() * 0.03
			if newMP < 0 then
				newMP = 0
			end
			pNearUserUnit:SetNowMP( newMP )
		elseif pNPCUnit:GetInt_LUA( 0 ) == 2 then
			newHP = pNPCUnit:GetNowHP() + pNPCUnit:GetMaxHP() * 0.01
			if newHP > pNPCUnit:GetMaxHP() then
				newHP = pNPCUnit:GetMaxHP()
			end
			pNPCUnit:SetNowHP( newHP )
		elseif pNPCUnit:GetInt_LUA( 0 ) == 3 then
			newHP = pNearUserUnit:GetNowHP() - pNearUserUnit:GetMaxHP() * 0.03
			if newHP < 1 and pNearUserUnit:GetNowHP() >= 1 then
				newHP = 1
			end
			pNearUserUnit:SetNowHP( newHP )
		end
		
		pNPCUnit:SetTimerRestart( 1 )
	end

end








