-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	UNIT_WIDTH		= 400.0,
	UNIT_HEIGHT		= 1000.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	},
	
	READY_SOUND = 
	{
        "Nasod_Press0.ogg",   
    	"Nasod_Press1.ogg",
		"Nasod_Press2.ogg",
		"Nasod_Press3.ogg",
		"Nasod_Press4.ogg",
		"Nasod_Press5.ogg",
        
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_Altera_Factory_Press.x",
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
	
	IGNORE_LINE_SPEED	= TRUE,
	
}


INIT_COMPONENT = 
{
	IMMUNITY_TIME_STOP = TRUE,
	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 130,
	
	USE_SLASH_TRACE		= FALSE,
	
	SHADOW_SIZE			= 500,
	SHADOW_FILE_NAME	= "shadow.dds",
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	--QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	--EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
		
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	--HEAD_BONE_NAME		= "Spike_Leaf1",
		
	SHOW_ON_MINIMAP		= FALSE,
}

INIT_STATE = 
{
    { STATE_NAME = "FACTORY_PRESSMACHINE_START",					},
	{ STATE_NAME = "FACTORY_PRESSMACHINE_WAIT",						},	
	{ STATE_NAME = "FACTORY_PRESSMACHINE_ATTACK",					LUA_FRAME_MOVE_FUNC = "FACTORY_PRESSMACHINE_ATTACK_FRAME_MOVE", STATE_COOL_TIME = 10, },

	START_STATE					= "FACTORY_PRESSMACHINE_START",
	WAIT_STATE					= "FACTORY_PRESSMACHINE_WAIT",
	
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
	DAMAGE_REVENGE				= "FACTORY_PRESSMACHINE_WAIT",
	
	DYING_LAND_FRONT			= "",
	DYING_LAND_BACK				= "",
	DYING_SKY					= "",

	REVENGE_ATTACK				= "FACTORY_PRESSMACHINE_WAIT",	
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

FACTORY_PRESSMACHINE_START =
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	RIGHT                       = TRUE,
	--IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"FACTORY_PRESSMACHINE_ATTACK",				"CT_FACTORY_PRESSMACHINE_ATTACK",	},
	},
	
	CT_FACTORY_PRESSMACHINE_ATTACK = 
	{
		STATE_TIME_OVER			= 1.5,
	},
}

FACTORY_PRESSMACHINE_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	RIGHT                       = TRUE,
	--IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"FACTORY_PRESSMACHINE_ATTACK",				"CT_FACTORY_PRESSMACHINE_ATTACK",	},
	},
	
	CT_FACTORY_PRESSMACHINE_ATTACK = 
	{
		STATE_TIME_OVER			= 3,
	},
}

FACTORY_PRESSMACHINE_ATTACK = 
{
	ANIM_NAME					= "Attack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	--CAN_PASS_UNIT				= FALSE,

  SOUND_PLAY0			= { 0.01, "Nasod_Press0.ogg" },
  SOUND_PLAY1			= { 1.186, "Nasod_Press1.ogg" },
  SOUND_PLAY2			= { 1.712, "Nasod_Press2.ogg" },
  SOUND_PLAY3			= { 2.018, "Nasod_Press3.ogg" },  --쿵!!
  SOUND_PLAY4			= { 3.975, "Nasod_Press4.ogg" },
  SOUND_PLAY5			= { 4.883, "Nasod_Press5.ogg" },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	RIGHT                       = TRUE,
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,		
		
		{ TRUE, 2.0666, "Smoke_Nasod_Factory_Press04", FALSE, "Dummy01", TRUE, FALSE, 0, 0, -200, },
		{ TRUE, 1.2333, "Flare_Nasod_Factory_Press01", FALSE, "Bone03", TRUE, FALSE, 0, 0, 0, },
		{ TRUE, 1.2333, "Flare_Nasod_Factory_Press01", FALSE, "Bone05", TRUE, FALSE, 0, 0, 0, },
		{ TRUE, 1.2333, "Flare_Nasod_Factory_Press01", FALSE, "Bone07", TRUE, FALSE, 0, 0, 0, },		
		{ TRUE, 1.2333, "Flare_Nasod_Factory_Press01", FALSE, "Bone09", TRUE, FALSE, 0, 0, 0, },		
		{ TRUE, 2.3333, "Flare_Nasod_Factory_Press02", FALSE, "Object274", TRUE, FALSE, 0, 780, -200, },		
		{ TRUE, 0.01, "Steam_Nasod_Factory_Press05", FALSE, "Bone07", TRUE, FALSE, 35, 0, 50, },		
		{ TRUE, 0.01, "Steam_Nasod_Factory_Press05", FALSE, "Bone03", TRUE, FALSE, -35, 0, 50, },
		{ TRUE, 0.01, "Steam_Nasod_Factory_Press05", FALSE, "Bone09", TRUE, FALSE, 0, 0, 0, },
		
	},
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"FACTORY_PRESSMACHINE_WAIT",					},
	},
	
	ATTACK_TIME0				= { 2.0, 2.3, },
	
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		
		BUFF_FACTOR =
		{
			BUFF_TEMPLET_ID = BUFF_TEMPLET_ID["BTI_DEBUFF_PRESS"],
			RATE	=
			{
				1,
			},
			IGNORE_REGIST_FOR_RATE = FALSE,

			BEHAVIOR =
			{	
				COMBINATION = { BUFF_BEHAVIOR_TYPE["BBT_CHANGE_UNIT_SCALE"], BUFF_BEHAVIOR_TYPE["BBT_ATTACK_IMPOSSIBLE"], },
		
				BBT_CHANGE_UNIT_SCALE = 
				{
				},
				BBT_ATTACK_IMPOSSIBLE = 
				{
				},
			},
		
			FINALIZER =
			{
				COMBINATION = { BUFF_FINALIZER_TYPE["BFT_TIME"], },
			
				BFT_TIME =
				{
					BUFF_DURATION_TIME_TYPE = BUFF_DURATION_TIME_TYPE["BDTT_NORMAL_TIME"],
					NORMAL_TIME =
					{
						4,
					},
				},
			},
		},
		
		BACK_SPEED_X			= 0,
		BACK_SPEED_Y			= 0,
		
		CAMERA_CRASH_GAP		= 5.0,	
		CAMERA_CRASH_TIME		= 0.2,		
	},

}




function FACTORY_PRESSMACHINE_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
		
	if pNPCUnit:AnimEventTimer_LUA(2.0) then
	    if GetDistance_LUA( pNPCUnit:GetPos(), pX2Game:GetFocusUnitPos_LUA() ) < 1200 then
		    pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 15.0, 0.5 )
	    end	
	end	
	if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
	    pNPCUnit:SetCanPassUnit(true)	    
	end
		
	if pNPCUnit:AnimEventTimer_LUA( 2.3 ) then
	    pNPCUnit:SetCanPassUnit(false)	    
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 4.1 ) then
	    pNPCUnit:SetCanPassUnit(true)	    
	end
	

end

