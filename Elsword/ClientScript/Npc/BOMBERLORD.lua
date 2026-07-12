-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	UNIT_WIDTH			= 100.0,
	UNIT_HEIGHT		= 150.0,
	UNIT_LAYER			= X2_LAYER["XL_UNIT_0"],
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{	
		"Arme01_Frost_Ring_LV2_effect_01.dds",
		"GuideArrow02.dds",
		"Pa_Ran_SpaD_Smoke.dds",
		"Nasod_King_Laser03.dds",
		"Pa_Ran_SpaD_Smoke02.DDS",
		"Particle_Blur.DDS",
		"RVC_A_bleedingSlicer_smoke.dds",
		"RVC_SA_DeadlyRaid_line.dds",
		"WhitePoint.dds",
	},
	
	READY_SOUND = 
	{	
		"DarkGate_MonSummon01.ogg",
		"Wyvern_WaitFly.ogg",
		"Wyvern_DamageFront.ogg",
		"Wyvern_DyingLanding.ogg",
		"Down.ogg",
		"bomb.ogg",
		"RidingPet_Summon.ogg",
		"Jubigee_Recovery.ogg",
		"CoacktrigleVoice_DamageDown.ogg",
		"CoacktrigleVoice_Dying.ogg",
		"Shadow_Trickster_SpecialAttackA01.ogg",
	},

	READY_XSKIN_MESH = 
	{
		"DummyAttackBox_50x50x50.X",
	},
	

}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_BomberLord.x",	
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL				= 2000,
	G_ACCEL							= 4000,
	MAX_G_SPEED				= -2000,
	
	WALK_SPEED					= 400,
	RUN_SPEED						= 1000,
	JUMP_SPEED					= 1500,
	DASH_JUMP_SPEED		= 2300,
}


INIT_COMPONENT = 
{
	MAX_HP							= 1500,
	MP_CHANGE_RATE			= 1,
	MP_CHARGE_RATE			= 130,
	
	USE_SLASH_TRACE			= FALSE,
		
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
	
	HEAD_BONE_NAME			= "Bone03",
	
	HYPER_MODE_COUNT		= 0,
	MAX_HYPER_MODE_TIME= 30,
	
	HITTED_TYPE					= HITTED_TYPE["HTD_MEAT"],
	
	FALL_DOWN						= FALSE,
	DAMAGE_DOWN   			= FALSE,	
	SKY_DIE							= TRUE,
	
	DIE_FLY				= FALSE,
}

INIT_STATE = 
{
	{ STATE_NAME = "BOMBERLORD_START",							LUA_STATE_START_FUNC = "BOMBERLORD_START_STATE_START_FUNC",	  		  },
	{ STATE_NAME = "BOMBERLORD_FLY_WAIT",						},
	{ STATE_NAME = "BOMBERLORD_FLY_FRONT",						},
	{ STATE_NAME = "BOMBERLORD_FLY_FRONT_UP",					},
	{ STATE_NAME = "BOMBERLORD_FLY_FRONT_DOWN",					},
	{ STATE_NAME = "BOMBERLORD_FLY_BACK",						},
	{ STATE_NAME = "BOMBERLORD_FLY_BACK_UP",					},
	{ STATE_NAME = "BOMBERLORD_FLY_BACK_DOWN",					},
    { STATE_NAME = "BOMBERLORD_FLY_UP",					        },
    { STATE_NAME = "BOMBERLORD_FLY_DOWN",					    },
    { STATE_NAME = "BOMBERLORD_SUMMON",					    	LUA_FRAME_MOVE_FUNC = "BOMBERLORD_SUMMON_STATE_FRAME_MOVE_FUNC",	STATE_COOL_TIME	= 10, 			},
		
		
		
	--리액션 관련		
	{ STATE_NAME = "BOMBERLORD_DAMAGE",				    },	
	{ STATE_NAME = "BOMBERLORD_DYING",					},
		
    START_STATE					= "BOMBERLORD_START",	
	WAIT_STATE					= "BOMBERLORD_FLY_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "BOMBERLORD_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "BOMBERLORD_DAMAGE",
	SMALL_DAMAGE_AIR_FRONT		= "BOMBERLORD_DAMAGE",
	SMALL_DAMAGE_AIR_BACK		= "BOMBERLORD_DAMAGE",
	
	BIG_DAMAGE_LAND_FRONT		= "BOMBERLORD_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "BOMBERLORD_DAMAGE",
	BIG_DAMAGE_AIR_FRONT		= "BOMBERLORD_DAMAGE",
	BIG_DAMAGE_AIR_BACK			= "BOMBERLORD_DAMAGE",
	
	DOWN_DAMAGE_LAND_FRONT		= "BOMBERLORD_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "BOMBERLORD_DAMAGE",
	DOWN_DAMAGE_AIR				= "BOMBERLORD_DAMAGE",
	UP_DAMAGE					= "BOMBERLORD_DAMAGE",
	FLY_DAMAGE_FRONT			= "BOMBERLORD_DAMAGE",
	FLY_DAMAGE_BACK				= "BOMBERLORD_DAMAGE",
	REVENGE_ATTACK				= "",
	DAMAGE_FLUSH_LAND_FRONT		= "BOMBERLORD_DAMAGE",
	DAMAGE_FLUSH_LAND_BACK		= "BOMBERLORD_DAMAGE",
	DAMAGE_FLUSH_AIR			= "BOMBERLORD_DAMAGE",
		
	DYING_LAND_FRONT			= "BOMBERLORD_DYING",
	DYING_LAND_BACK				= "BOMBERLORD_DYING",
	DYING_SKY					= "BOMBERLORD_DYING",		
	
	COMMON_FRAME_FUNC           = "BOMBERLORD_COMMON_FRAME_FUNC",
}


INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 							= TARGET_PRIORITY["TP_RANDOM"],
		TARGET_INTERVAL							= 1,		-- sec
		TARGET_NEAR_RANGE					= 700,	-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다, 이 몬스터는 무조건 타켓을 갖고 있음
		TARGET_RANGE								= 900,	-- cm, 이 몬스터는 무조건 타켓을 갖고 있음
		TARGET_LOST_RANGE					= 1100,		-- cm, 이 몬스터는 무조건 타켓을 갖고 있음
		TARGET_SUCCESS_RATE				= 100,		-- %, 이 몬스터는 무조건 타켓을 갖고 있음
		ATTACK_TARGET_RATE					= 10,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE		= 50,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE = 
	{		
		DEST_GAP			= 300,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 400,
		
		DIR_CHANGE_INTERVAL = 0.7,
		
		MOVE_SPLIT_RANGE		= 400,
		WALK_INTERVAL				= 1,
		NEAR_WALK_RATE			= 100,   --  70,
		FAR_WALK_RATE				= 100,   -- 30,
		
		JUMP_INTERVAL				= 10,
		UP_JUMP_RATE				= 100, -- 30,
		UP_DOWN_RATE				= 30,
		DOWN_JUMP_RATE			= 100,    --  30,
		DOWN_DOWN_RATE		= 30,
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 100, --50,		
		PATROL_RANGE				= 300,
		PATROL_COOL_TIME		= 2,
		ONLY_THIS_LINE_GROUP = TRUE,
	},
	

	
	FLY_CHASE_MOVE = 
	{
	    DEST_HEIGHT_GAP    		 = 300,  -- 타겟과 유지할 높이(아래 두개의 값보다 커야함)
	    DEST_LAND_GAP      		 = 250,  -- 지면상에서의 타겟과 거리기준
	    DEST_AREA      			 = 250,  -- 타겟과의 지면거리를 기준으로 이 범위안에 있으면 도착했다고 판단
	    
	    FLY_MOVE_INTERVAL		 = 1.0,
	},
	
	ESCAPE_MOVE = 
	{		
		MOVE_SPLIT_RANGE		= 1000,
		ESCAPE_GAP					= 1100,	-- 이 거리 보다 멀면 도망 성공
		
		WALK_INTERVAL				= 1,
		NEAR_WALK_RATE			= 100,   --  70,
		FAR_WALK_RATE				= 100,   -- 30,
		
		JUMP_INTERVAL				= 10,
		UP_JUMP_RATE				= 35, -- 30,
		UP_DOWN_RATE				= 35,
		DOWN_JUMP_RATE			= 35, -- 30,
		DOWN_DOWN_RATE		= 35,
	},
	
	ESCAPE_CONDITION = 
	{
		--RATE	= 0,
		--MY_HP	= 0,
	}	
}

BOMBERLORD_START = 
{
	ANIM_NAME					= "WaitFly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	INVINCIBLE					= { 0, 100, },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SOUND_PLAY0					= { 0.001, "Wyvern_WaitFly.ogg" },
	SOUND_PLAY1					= { 0.001, "CoacktrigleVoice_DamageDown.ogg" },
	
	RIGHT 						= TRUE,
	
    FLY_AI                    = FALSE,
    PASSIVE_SPEED_Y				= 0,
    ENABLE_HEIGHT_FIX           = TRUE,
    SHOW_NAME                   = TRUE,
    
    SPEED_X						= 0,
	SPEED_Y						= 0,		
	NEVER_MOVE					= TRUE,
    		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"BOMBERLORD_FLY_WAIT",							},
		
	},
}


------------------------------------------------------------------------------------------------------------------

function BOMBERLORD_START_STATE_START_FUNC ( pKTDApp, pX2Game, pNPCUnit )
	pNPCUnit:SetInt_LUA( 3, 0 )
	-- 시간 초기화
	pNPCUnit:SetTimerRestart(0)
	-- GetInt_LUA(0~2)
	pNPCUnit:SetInt_LUA(0, NPC_UNIT_ID["NUI_BOMBER"] )     ---소환할 몬스터 id 
	pNPCUnit:SetInt_LUA(1, NPC_UNIT_ID["NUI_BOMBER"] )     ---소환할 몬스터 id 
	pNPCUnit:SetInt_LUA(2, NPC_UNIT_ID["NUI_BOMBER"] )     ---소환할 몬스터 id 
end

------------------------------------------------------------------------------------------------------------------


BOMBERLORD_SUMMON = 
{	
	ANIM_NAME					= "Summon",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0					= { 1.0, "DarkGate_MonSummon01.ogg" },
	SOUND_PLAY0					= { 1.0, "RidingPet_Summon.ogg" },
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ENABLE_HEIGHT_FIX           = TRUE, 
	
	TALK_BOX =
	{
		{ RATE = 15, MESSAGE = STR_ID_2581 },	-- !!!
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"BOMBERLORD_FLY_WAIT",							},
	},


	EFFECT_SET_LIST =
	{
		"BomBerrLord_Summon", 0,
	},
	
	

}

------------------------------------------------------------------------------------------------------------------

function BOMBERLORD_SUMMON_STATE_FRAME_MOVE_FUNC ( pKTDApp, pX2Game, pNPCUnit )
	-- 지정해둔 0~2번 몬스터 중 랜덤으로 1마리 소환
	if pNPCUnit:AnimEventTimer_LUA( 1.668 ) then
		local RandVal = pNPCUnit:GetInt_LUA(3) % 3
		local CreateNpcID = pNPCUnit:GetInt_LUA( RandVal )
		--local pos = pNPCUnit:GetLandPosition_LUA()		-- 라인맵에서 생성
		local vSummonPos = pNPCUnit:GetPos()						-- 몬스터 위치에서 생성
		local vPos = vSummonPos
		vPos.y = vPos.y + 10
		local vLandPos = pX2Game:GetLineMap():GetLandPosition_LUA( vSummonPos )
		
		if vSummonPos.y - vLandPos.y > 1000 or vLandPos.y - vSummonPos.y > 1000 then
			vPos = pX2Game:GetLineMap():GetNearest_LUA( vSummonPos )
		end
		
		
		-----------------------------유닛 아이디--------------레벨-----액티브----위치---방향(true면 오른쪽)---몬스터 생성할때 delaytime 설정-noDrop-keycode 설정
		pX2Game:CreateNPCReq_LUA( CreateNpcID, pNPCUnit:GetHardLevel(), true, vPos, pNPCUnit:GetIsRight(), 0, false  )
		
		
		-- 몬스터 소환 횟수 갱신
		local SummonCount = pNPCUnit:GetInt_LUA(3)
		pNPCUnit:SetInt_LUA( 3, SummonCount + 1 )	

		-- 시간 초기화

	end
end

------------------------------------------------------------------------------------------------------------------




BOMBERLORD_FLY_WAIT = 
{
	ANIM_NAME					= "WaitFly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0					= { 0.001, "Wyvern_WaitFly.ogg" },

    VIEW_TARGET					= TRUE,
    ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 1,
	
	PASSIVE_SPEED_Y				= 0,
	ENABLE_HEIGHT_FIX           = TRUE,
	
	TALK_BOX =
	{
		{ RATE = 15, MESSAGE = STR_ID_2575 },	-- …
	},
	
	EVENT_PROCESS = 
	{	    		
		

	    { STATE_CHANGE_TYPE["SCT_AI_FLY_UP"],					    "BOMBERLORD_FLY_UP",						    },
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_DOWN"],					    "BOMBERLORD_FLY_DOWN",						    },
	    	    
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT"],				    "BOMBERLORD_FLY_FRONT",						    },		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_UP"],					"BOMBERLORD_FLY_FRONT_UP",						},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_DOWN"],			    "BOMBERLORD_FLY_FRONT_DOWN",					},		
		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK"],					    "BOMBERLORD_FLY_BACK",							},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_UP"],					"BOMBERLORD_FLY_BACK_UP",						},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_DOWN"],				"BOMBERLORD_FLY_BACK_DOWN",						},		
	},
}

BOMBERLORD_FLY_FRONT = 
{
	ANIM_NAME					= "WaitFly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0					= { 0.001, "Wyvern_WaitFly.ogg" },
	
	PASSIVE_SPEED_X				= 500,
	PASSIVE_SPEED_Y				= 0,
	-- SPEED_TIME0		= { 900, -1, 0.01, 3}, 
	-- SPEED_TIME1		= { -1, -1, 100, 3},  

	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
		
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{		    
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_UP"],				 	    "BOMBERLORD_FLY_UP",					        },
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_DOWN"],				 	    "BOMBERLORD_FLY_DOWN",						    },
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_BACK"],					    "BOMBERLORD_FLY_BACK",							},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_UP"],					"BOMBERLORD_FLY_BACK_UP",						},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_DOWN"],				"BOMBERLORD_FLY_BACK_DOWN",						},
	    
	    
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					        "BOMBERLORD_FLY_WAIT",							},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_UP"],					"BOMBERLORD_FLY_FRONT_UP",						},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_DOWN"],				"BOMBERLORD_FLY_FRONT_DOWN",					},				
	},
}
BOMBERLORD_FLY_FRONT_UP = 
{
	ANIM_NAME					= "WaitFly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= 500,
	PASSIVE_SPEED_Y				= 3,

	SOUND_PLAY0					= { 0.001, "Wyvern_WaitFly.ogg" },
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
		
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{	
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_UP"],				   	 	"BOMBERLORD_FLY_UP",					        },
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_DOWN"],				   	 	"BOMBERLORD_FLY_DOWN",						    },
	    { STATE_CHANGE_TYPE["SCT_AI_WAIT"],					    	"BOMBERLORD_FLY_WAIT",							},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_BACK"],					    "BOMBERLORD_FLY_BACK",							},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_UP"],					"BOMBERLORD_FLY_BACK_UP",						},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_DOWN"],				"BOMBERLORD_FLY_BACK_DOWN",						},	
					
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT"],					"BOMBERLORD_FLY_FRONT",						    },
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_DOWN"],				"BOMBERLORD_FLY_FRONT_DOWN",					},
		
		
	},
}
BOMBERLORD_FLY_FRONT_DOWN = 
{
	ANIM_NAME					= "WaitFly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= 500,
	PASSIVE_SPEED_Y				= -3,
	
	SOUND_PLAY0					= { 0.001, "Wyvern_WaitFly.ogg" },
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
		
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{		
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_UP"],				  		"BOMBERLORD_FLY_UP",						    },
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_DOWN"],				  	  	"BOMBERLORD_FLY_DOWN",						  	},
	    { STATE_CHANGE_TYPE["SCT_AI_WAIT"],					        "BOMBERLORD_FLY_WAIT",							},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_BACK"],					    "BOMBERLORD_FLY_BACK",							},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_UP"],					"BOMBERLORD_FLY_BACK_UP",						},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_DOWN"],				"BOMBERLORD_FLY_BACK_DOWN",						},
	   		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT"],				    "BOMBERLORD_FLY_FRONT",						    },		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_UP"],					"BOMBERLORD_FLY_FRONT_UP",						},			
	},
}

BOMBERLORD_FLY_BACK = 
{
	ANIM_NAME					= "WaitFly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0					= { 0.001, "Wyvern_WaitFly.ogg" },
	
	PASSIVE_SPEED_X				= -700,
	PASSIVE_SPEED_Y				= 0,
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{		
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_UP"],				 	    "BOMBERLORD_FLY_UP",						    },
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_DOWN"],				    	"BOMBERLORD_FLY_DOWN",							},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_UP"],					"BOMBERLORD_FLY_BACK_UP",						},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_DOWN"],				"BOMBERLORD_FLY_BACK_DOWN",						},
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					        "BOMBERLORD_FLY_WAIT",							},
	    
		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT"],				    "BOMBERLORD_FLY_FRONT",						    },		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_UP"],					"BOMBERLORD_FLY_FRONT_UP",						},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_DOWN"],			    "BOMBERLORD_FLY_FRONT_DOWN",					},						
	},	
}
BOMBERLORD_FLY_BACK_UP = 
{
	ANIM_NAME					= "WaitFly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0					= { 0.001, "Wyvern_WaitFly.ogg" },
	
	PASSIVE_SPEED_X				= -700,
	PASSIVE_SPEED_Y				= 3,
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{		
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_UP"],				 	    "BOMBERLORD_FLY_UP",					        },
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_DOWN"],				 	    "BOMBERLORD_FLY_DOWN",						    },
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_BACK"],					    "BOMBERLORD_FLY_BACK",							},		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_DOWN"],				"BOMBERLORD_FLY_BACK_DOWN",						},
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					        "BOMBERLORD_FLY_WAIT",							},			    
		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT"],				    "BOMBERLORD_FLY_FRONT",						    },		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_UP"],					"BOMBERLORD_FLY_FRONT_UP",						},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_DOWN"],			    "BOMBERLORD_FLY_FRONT_DOWN",					},		
		
	},	
}
BOMBERLORD_FLY_BACK_DOWN = 
{
	ANIM_NAME					= "WaitFly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= -700,
	PASSIVE_SPEED_Y				= -3,
	
	SOUND_PLAY0					= { 0.001, "Wyvern_WaitFly.ogg" },
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{		
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_UP"],				   		"BOMBERLORD_FLY_UP",						    },
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_DOWN"],				   		"BOMBERLORD_FLY_DOWN",						    },
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_BACK"],					    "BOMBERLORD_FLY_BACK",							},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_UP"],					"BOMBERLORD_FLY_BACK_UP",						},
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					        "BOMBERLORD_FLY_WAIT",							},
				
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT"],				    "BOMBERLORD_FLY_FRONT",						    },		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_UP"],					"BOMBERLORD_FLY_FRONT_UP",						},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_DOWN"],			    "BOMBERLORD_FLY_FRONT_DOWN",					},		
			
	},	
}


BOMBERLORD_FLY_UP = 
{
	ANIM_NAME					= "WaitFly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0					= { 0.001, "Wyvern_WaitFly.ogg" },

    VIEW_TARGET					= TRUE,
    ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,

	
	EVENT_INTERVAL_TIME0		= 1,
	
	PASSIVE_SPEED_Y				= 3,		
		
	EVENT_PROCESS = 
	{	    
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			        "BOMBERLORD_FLY_WAIT",		                    "CT_BOMBERLORD_FLY_WAIT",	},	    
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_DOWN"],				        "BOMBERLORD_FLY_DOWN",						    },    	    	
	    { STATE_CHANGE_TYPE["SCT_AI_WAIT"],					        "BOMBERLORD_FLY_WAIT",							},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_BACK"],					    "BOMBERLORD_FLY_BACK",							},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_UP"],					"BOMBERLORD_FLY_BACK_UP",						},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_DOWN"],				"BOMBERLORD_FLY_BACK_DOWN",						},
			    	    
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT"],				    "BOMBERLORD_FLY_FRONT",						    },		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_UP"],					"BOMBERLORD_FLY_FRONT_UP",						},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_DOWN"],			    "BOMBERLORD_FLY_FRONT_DOWN",					},				
	},
	
	CT_BOMBERLORD_FLY_WAIT =
	{
		STATE_TIME_OVER			= 4,
	},	
}
BOMBERLORD_FLY_DOWN = 
{
	ANIM_NAME					= "WaitFly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
		
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0					= { 0.001, "Wyvern_WaitFly.ogg" },

    VIEW_TARGET					= TRUE,
    ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 1,
	
	PASSIVE_SPEED_Y				= -3,
	
	
	EVENT_PROCESS = 
	{		    
	    { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			        "BOMBERLORD_FLY_WAIT",		                    "CT_BOMBERLORD_FLY_WAIT",	},	
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_UP"],				    	"BOMBERLORD_FLY_UP",						    },	    	
	    { STATE_CHANGE_TYPE["SCT_AI_WAIT"],					        "BOMBERLORD_FLY_WAIT",							},
	    { STATE_CHANGE_TYPE["SCT_AI_FLY_BACK"],					    "BOMBERLORD_FLY_BACK",							},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_UP"],					"BOMBERLORD_FLY_BACK_UP",						},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_BACK_DOWN"],				"BOMBERLORD_FLY_BACK_DOWN",						},    	 
			    	    
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT"],				    "BOMBERLORD_FLY_FRONT",						    },		
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_UP"],					"BOMBERLORD_FLY_FRONT_UP",						},
		{ STATE_CHANGE_TYPE["SCT_AI_FLY_FRONT_DOWN"],			    "BOMBERLORD_FLY_FRONT_DOWN",					},		
	},
	
	CT_BOMBERLORD_FLY_WAIT =
	{
		STATE_TIME_OVER			= 4,
	},
}

BOMBERLORD_DAMAGE = 
{
	ANIM_NAME					= "Damage_Fly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SOUND_PLAY0					= { 0.159, "Wyvern_DamageFront.ogg", 20 },
		
	SPEED_X						= 0,
	SPEED_Y						= 0,	
	PASSIVE_SPEED_Y				= 0,
	
	ENABLE_HEIGHT_FIX           = TRUE,
	
	--FLY_AI                      = FALSE,
	EVENT_INTERVAL_TIME0		= 1,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BOMBERLORD_FLY_WAIT", },
	},
}

BOMBERLORD_DYING = 
{
	ANIM_NAME					= "Dying_Fly",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	DYING_SPEED					= 1.0,
	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

	SOUND_PLAY0					= { 0.001, "CoacktrigleVoice_Dying.ogg" },
	SOUND_PLAY1					= { 0.094, "Wyvern_DyingLanding.ogg" },
	SOUND_PLAY2					= { 0.12, "Down.ogg" },
	SOUND_PLAY3					= { 0.15, "Shadow_Trickster_SpecialAttackA01.ogg" },
	

	FLY_AI                      = TRUE,
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EFFECT_SET_LIST =
	{
		"BomBerrLord_Dying_Fly", 0.1,
	},
}

------------------------------------------------------------------------------------------------------------------

function BOMBERLORD_COMMON_FRAME_FUNC ( pKTDApp, pX2Game, pNPCUnit )
	local SummonTimeGap = 8					---소환 할 시간 차이
	local SummonLimit = 4						---소환 수 제한, 다 소환하면 터짐
	local MaxMonsterCount = 30					---스테이지 내 존재하는 몬스터 숫자 제한 
	
	if SummonTimeGap <= pNPCUnit:GetTimerElapsedTime(0) then	
		if MaxMonsterCount >= pX2Game:GetNPCUnitNum() then	
			if pNPCUnit:GetNowHP() > 0 then	  
				if pNPCUnit:HasTarget() == true then
					if pNPCUnit:GetInt_LUA ( 3 ) < SummonLimit then				
						pNPCUnit:StateChange_LUA( "BOMBERLORD_SUMMON", false )
						pNPCUnit:SetTimerRestart(0)		
					else		
						pNPCUnit:StateChange_LUA( "BOMBERLORD_DYING", false )
					end
				end
			end
		end		
	end
end

------------------------------------------------------------------------------------------------------------------

