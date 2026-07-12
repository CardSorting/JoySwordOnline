-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

INIT_SYSTEM = 
{
	UNIT_WIDTH		= 200.0,
	UNIT_HEIGHT		= 800.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	--UNIT_SCALE      = 1.5,
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
		"Fire_flame01.tga",
		"GuideArrow01.dds",
		"Steam_BP.dds",
		"smoke02.dds",
		"Darksmoke01.dds",
		"HQ_ROUND_INFO.dds",
		"HQ_ROUND_START.dds",	
	},
	
	READY_SOUND = 
	{
	"Defence_Darkness_Boss_MagicAttack_Cold01.ogg",
	"Defence_Darkness_Boss_MagicAttack_Fire01.ogg",
	"Defence_Darkness_Boss_MagicAttack_Stone01.ogg",
	"Defence_Darkness_Boss_MagicAttack01.ogg",
	"Defence_Darkness_Boss_MagicAttack02.ogg",
	"Defence_Darkness_Boss_MagicAttack03.ogg",
	"Defence_Darkness_Boss_MagicSummon01.ogg",
	"Defence_Darkness_Boss_MagicSummon02.ogg",
	"Defence_Darkness_Boss_MagicSummon03.ogg",
	"Defence_Darkness_Boss_WaitStart01.ogg",
	"Dragon_RockAttack.ogg"
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
	MOTION_FILE_NAME		= "Motion_DEFENCE_DARKNESS_BOSS.x",
	ADD_ROTATE_Y			= 20.0,
	
	
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 500,
	RUN_SPEED			= 1300,
	JUMP_SPEED			= 0,
	DASH_JUMP_SPEED		= 0,
}

INIT_COMPONENT = 
{
	IMMUNITY_TIME_STOP = TRUE,
	MAX_HP				= 9225,
	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 130,
	
	USE_SLASH_TRACE		= FALSE,

	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	--SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	SHOW_ON_MINIMAP		= FALSE,
	
	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],	-- 피격 종류에 따른 사운드 선택	- X2GameUnit.cpp
	
	FALL_DOWN			= FALSE,	
	
	DAMAGE_DOWN         = FALSE,	
	
	DIE_FLY             = 0,	
}

INIT_STATE = 
{
	{ STATE_NAME = "DEFENCE_DARKNESS_BOSS_START",							LUA_STATE_START_FUNC = "DEFENCE_DARKNESS_BOSS_STATE_START", 							},
	
	{ STATE_NAME = "DEFENCE_DARKNESS_BOSS_WAIT",							LUA_FRAME_MOVE_FUNC  = "DEFENCE_DARKNESS_BOSS_WAIT_FRAME_MOVE",							},--모든 머리 취침
	
	{ STATE_NAME = "DEFENCE_DARKNESS_BOSS_WAIT_A1",							LUA_FRAME_MOVE_FUNC  = "DEFENCE_DARKNESS_BOSS_WAIT_FRAME_MOVE",							},--첫번째 머리 기상
	{ STATE_NAME = "DEFENCE_DARKNESS_BOSS_WAIT_A2",							LUA_FRAME_MOVE_FUNC  = "DEFENCE_DARKNESS_BOSS_WAIT_FRAME_MOVE",							},--첫번째, 두번째 머리 기상
	{ STATE_NAME = "DEFENCE_DARKNESS_BOSS_WAIT_A3",							LUA_FRAME_MOVE_FUNC  = "DEFENCE_DARKNESS_BOSS_WAIT_FRAME_MOVE",							},--모든 머리 기상
																
																			
																			
	{ STATE_NAME = "DEFENCE_DARKNESS_BOSS_WAKE_UP_A1",						LUA_STATE_START_FUNC = "DEFENCE_DARKNESS_BOSS_WAKE_UP_A1_STATE_START",					
																			LUA_STATE_END_FUNC   = "DEFENCE_DARKNESS_BOSS_WAKE_UP_A1_STATE_END",					},
	{ STATE_NAME = "DEFENCE_DARKNESS_BOSS_WAKE_UP_A2",						LUA_STATE_START_FUNC = "DEFENCE_DARKNESS_BOSS_WAKE_UP_A2_STATE_START",					
																			LUA_STATE_END_FUNC   = "DEFENCE_DARKNESS_BOSS_WAKE_UP_A2_STATE_END",					},
	{ STATE_NAME = "DEFENCE_DARKNESS_BOSS_WAKE_UP_A3",						LUA_STATE_START_FUNC = "DEFENCE_DARKNESS_BOSS_WAKE_UP_A3_STATE_START",					
																			LUA_STATE_END_FUNC   = "DEFENCE_DARKNESS_BOSS_WAKE_UP_A3_STATE_END",					},
	
	{ STATE_NAME = "DEFENCE_DARKNESS_BOSS_SLEEP1",							},																		
	{ STATE_NAME = "DEFENCE_DARKNESS_BOSS_SLEEP2",							},
	{ STATE_NAME = "DEFENCE_DARKNESS_BOSS_SLEEP3",							},
	
	
	{ STATE_NAME = "DEFENCE_DARKNESS_BOSS_MAGICATTACK_A1",					LUA_FRAME_MOVE_FUNC  = "DEFENCE_DARKNESS_BOSS_MAGICATTACK_A_SELECT_EFFECT_FRAME_MOVE",
																			LUA_STATE_END_FUNC   = "DEFENCE_DARKNESS_BOSS_MAGICATTACK_A_STATE_END",					},
	{ STATE_NAME = "DEFENCE_DARKNESS_BOSS_MAGICATTACK_A2",					LUA_FRAME_MOVE_FUNC  = "DEFENCE_DARKNESS_BOSS_MAGICATTACK_A_SELECT_EFFECT_FRAME_MOVE",	
																			LUA_STATE_END_FUNC   = "DEFENCE_DARKNESS_BOSS_MAGICATTACK_A_STATE_END",					},
	{ STATE_NAME = "DEFENCE_DARKNESS_BOSS_MAGICATTACK_A3",					LUA_FRAME_MOVE_FUNC  = "DEFENCE_DARKNESS_BOSS_MAGICATTACK_A_SELECT_EFFECT_FRAME_MOVE",	
																			LUA_STATE_END_FUNC   = "DEFENCE_DARKNESS_BOSS_MAGICATTACK_A_STATE_END",					},

	{ STATE_NAME = "DEFENCE_DARKNESS_BOSS_MAGICATTACK_B1",					LUA_FRAME_MOVE_FUNC  = "DEFENCE_DARKNESS_BOSS_MAGICATTACK_B_SELECT_EFFECT_FRAME_MOVE",	
																			LUA_STATE_END_FUNC   = "DEFENCE_DARKNESS_BOSS_MAGICATTACK_B_STATE_END",					},
	{ STATE_NAME = "DEFENCE_DARKNESS_BOSS_MAGICATTACK_B2",					LUA_FRAME_MOVE_FUNC  = "DEFENCE_DARKNESS_BOSS_MAGICATTACK_B_SELECT_EFFECT_FRAME_MOVE",	
																			LUA_STATE_END_FUNC   = "DEFENCE_DARKNESS_BOSS_MAGICATTACK_B_STATE_END",					},
	{ STATE_NAME = "DEFENCE_DARKNESS_BOSS_MAGICATTACK_B3",					LUA_FRAME_MOVE_FUNC  = "DEFENCE_DARKNESS_BOSS_MAGICATTACK_B_SELECT_EFFECT_FRAME_MOVE",	
																			LUA_STATE_END_FUNC   = "DEFENCE_DARKNESS_BOSS_MAGICATTACK_B_STATE_END",					},

																			
	{ STATE_NAME = "DEFENCE_DARKNESS_BOSS_PRE_DYING",						LUA_STATE_START_FUNC = "DEFENCE_DARKNESS_BOSS_PRE_DYING_STATE_START",						},
	
	{ STATE_NAME = "DEFENCE_DARKNESS_BOSS_DYING1",							LUA_STATE_START_FUNC = "DEFENCE_DARKNESS_BOSS_DYING_STATE_START",
																			LUA_FRAME_MOVE_FUNC  = "DEFENCE_DARKNESS_BOSS_DYING_STATE_FRAME_MOVE"					},
	{ STATE_NAME = "DEFENCE_DARKNESS_BOSS_DYING2",							LUA_STATE_START_FUNC = "DEFENCE_DARKNESS_BOSS_DYING_STATE_START",
																			LUA_FRAME_MOVE_FUNC  = "DEFENCE_DARKNESS_BOSS_DYING_STATE_FRAME_MOVE"					},
	{ STATE_NAME = "DEFENCE_DARKNESS_BOSS_DYING3",							LUA_STATE_START_FUNC = "DEFENCE_DARKNESS_BOSS_DYING_STATE_START",
																			LUA_FRAME_MOVE_FUNC  = "DEFENCE_DARKNESS_BOSS_DYING_STATE_FRAME_MOVE"					},
																			

	START_STATE					= "DEFENCE_DARKNESS_BOSS_START",
	WAIT_STATE					= "DEFENCE_DARKNESS_BOSS_WAIT",		
	WAIT_STATE					= "DEFENCE_DARKNESS_BOSS_WAIT",		
	
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
	DAMAGE_REVENGE				= "",
	
	DYING_LAND_FRONT			= "DEFENCE_DARKNESS_BOSS_PRE_DYING",
	DYING_LAND_BACK				= "DEFENCE_DARKNESS_BOSS_PRE_DYING",
	DYING_SKY					= "DEFENCE_DARKNESS_BOSS_PRE_DYING",

	COMMON_FRAME_FUNC           = "DEFENCE_DARKNESS_BOSS_COMMON_FRAME_MOVE",
	
	REVENGE_ATTACK				= "",
}



INIT_AI = 
{
	-- 타겟팅
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_RANDOM"],	-- 타겟 우선순위
		TARGET_INTERVAL				= 3,		-- sec	-- 타겟 간격
		TARGET_NEAR_RANGE			= 5000,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 10500,	-- cm		-- 타겟 범위
		TARGET_LOST_RANGE			= 10800,	-- cm		-- 타겟을 잃어버리는 범위
		TARGET_SUCCESS_RATE			= 100,  	--100,		-- %
		ATTACK_TARGET_RATE			= 100, 		-- 40,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, 		-- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	-- 타겟을 추적하는 이동
	CHASE_MOVE = 	
	{		
		MOVE_SPLIT_RANGE	= 600,
		DEST_GAP			= 150,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 160,	-- 이 거리보다 멀어지면 움직임이 시작
		
		DIR_CHANGE_INTERVAL = 0.7,
		
		WALK_INTERVAL		= 3,	-- 걷는 간격
		NEAR_WALK_RATE		= 100,  -- 70,
		FAR_WALK_RATE		= 100,  -- 30,
		
		JUMP_INTERVAL		= 5,	-- 점프 간격
		UP_JUMP_RATE		= 100, 	-- 40,
		UP_DOWN_RATE		= 20,
		DOWN_JUMP_RATE		= 100,  -- 20,
		DOWN_DOWN_RATE		= 40,
	},	
	
	-- 순찰 움직임
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 100, -- 50,		
		PATROL_RANGE			= 200, -- 순찰 범위
		PATROL_COOL_TIME		= 2,   -- 순찰 시간
		ONLY_THIS_LINE_GROUP	= TRUE, -- 한 라인에서만
	},
	
	-- 도망가는 움직임
	ESCAPE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 500,	-- cm
		ESCAPE_GAP			= 600,	-- 이 거리 보다 멀어지면 도망 성공
		
		WALK_INTERVAL		= 1.5,	-- 초
		NEAR_WALK_RATE		= 100,  -- 10,
		FAR_WALK_RATE		= 100,  -- 10,
		
		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 100, 	-- 30,
		UP_DOWN_RATE		= 30,
		DOWN_JUMP_RATE		= 100,  -- 30,
		DOWN_DOWN_RATE		= 30,
	},
	
}




DEFENCE_DARKNESS_BOSS_START = 
{
	ANIM_NAME					= "START",	-- 이름
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,			-- 이동
	
	CAN_PUSH_UNIT				= FALSE,			-- 초기값
	CAN_PASS_UNIT				= FALSE,			-- 초기값
	
	RIGHT                       = TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,		
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	INVINCIBLE     				 = { 0, 99999 },
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	EVENT_INTERVAL_TIME0		= 1,	
	
	SOUND_PLAY0					= { 0.003, "Defence_Darkness_Boss_WaitStart01.ogg", 100,FALSE,999999, },
	SOUND_PLAY1					= { 0.1, "Defence_Darkness_Boss_WaitStart01.ogg", 100,FALSE,999999, },
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"DEFENCE_DARKNESS_BOSS_WAIT",		},
	},
}

function DEFENCE_DARKNESS_BOSS_STATE_START( pKTDXApp, pX2Game, pNPCUnit )  	

	pNPCUnit:SetTimerRestart( 0 )					--상자 소환용
	pNPCUnit:SetTimerRestart( 1 )					--취침 타이머
	pNPCUnit:SetTimerRestart( 2 )					--공격 대기 타이머
	
	pNPCUnit:SetInt_LUA(0, 0)						--Shadow Blast Boss 의 사망 카운트
	pNPCUnit:SetInt_LUA(1, 0)						--현재 라운드
	pNPCUnit:SetInt_LUA(2, 0)						--전(Before) 라운드
	pNPCUnit:SetInt_LUA(3, 0)						--Random Index용
	pNPCUnit:SetInt_LUA(4, 0)						--머리 3 취침 여부		변경점
	pNPCUnit:SetInt_LUA(5, 0)						--머리 2 취침 여부		변경점
	pNPCUnit:SetInt_LUA(6, 0)						--머리 1 취침 여부		변경점
	pNPCUnit:SetInt_LUA(7, 0)						--머리 3 공격 속성
	pNPCUnit:SetInt_LUA(8, 0)						--머리 2 공격 속성	
	pNPCUnit:SetInt_LUA(9, 0)						--머리 1 공격 속성		
	
	pNPCUnit:SetFlag_LUA(0, false)					--앨의 수정에서 재우는 신호(true = 재우기 신호 발산)
	pNPCUnit:SetFlag_LUA(2, false)					--보스 사망 확인용
													--머리 순서 : 3, 2, 1
	pNPCUnit:SetVector_LUA(0, D3DXVECTOR3(0, 0, 0))	--Attack A1 공격 시간	Index : 0, 1, 2
	pNPCUnit:SetVector_LUA(1, D3DXVECTOR3(0, 0, 0))	--Attack A1 공격 시간	Index : 3, 4, 5
	pNPCUnit:SetVector_LUA(2, D3DXVECTOR3(0, 0, 0))	--Attack A1 공격 시간	Index : 6, 7, 8
	pNPCUnit:SetVector_LUA(3, D3DXVECTOR3(0, 0, 0))	--Attack A2 공격 시간	Index : 0, 1, 2
	pNPCUnit:SetVector_LUA(4, D3DXVECTOR3(0, 0, 0))	--Attack A2 공격 시간	Index : 3, 4, 5
	pNPCUnit:SetVector_LUA(5, D3DXVECTOR3(0, 0, 0))	--Attack A3 공격 시간	Index : 6, 7, 8
	pNPCUnit:SetVector_LUA(6, D3DXVECTOR3(0, 0, 0))	--Attack A3 공격 시간	Index : 0, 1, 2
	pNPCUnit:SetVector_LUA(7, D3DXVECTOR3(0, 0, 0))	--Attack A3 공격 시간	Index : 3, 4, 5
	pNPCUnit:SetVector_LUA(8, D3DXVECTOR3(0, 0, 0))	--Attack A3 공격 시간	Index : 6, 7, 8
	pNPCUnit:SetVector_LUA(9, D3DXVECTOR3(0, 0, 0))	--Magic Attack A, Magic Attack B 공격 후 대기 시간 - x
	
end

--



DEFENCE_DARKNESS_BOSS_WAIT = --모든 머리 취침
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	ANIM_SPEED					= 1.0,
	
	INVINCIBLE     				 = { 0, 99999 },
	
	RIGHT                       = TRUE,
	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

DEFENCE_DARKNESS_BOSS_WAIT_A1 =	--머리 2개가 잠들어 있을 때의 Wait State
{
	ANIM_NAME					= "Wait_A1",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	ANIM_SPEED					= 1.0,
	
	INVINCIBLE     				 = { 0, 99999 },
	
	RIGHT                       = TRUE,
	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	EVENT_INTERVAL_TIME0		= 1,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
		
	EVENT_PROCESS =		
	{				
		--State는 모션 종료시 Default로 변경되도록 설정 되었지만, Frame Move에서 재설정 (실제로 Default State로 갈 일은 없음) - StateEnd 설정용
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		         	"DEFENCE_DARKNESS_BOSS_WAIT_A1", 				},
	},
}

DEFENCE_DARKNESS_BOSS_WAIT_A2 = --머리 1개가 잠들어 있을 때의 Wait State
{
	ANIM_NAME					= "Wait_A2",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	ANIM_SPEED					= 1.0,
	
	INVINCIBLE     				 = { 0, 99999 },
	
	RIGHT                       = TRUE,
	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	EVENT_INTERVAL_TIME0		= 1,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
		
	EVENT_PROCESS =	
	{				
		--State는 모션 종료시 Default로 변경되도록 설정 되었지만, Frame Move에서 재설정 (실제로 Default State로 갈 일은 없음) - StateEnd 설정용
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		         	"DEFENCE_DARKNESS_BOSS_WAIT_A2", 				},
	},
}

DEFENCE_DARKNESS_BOSS_WAIT_A3 = --모두 깨어있을 때의 Wait State
{
	ANIM_NAME					= "Wait_A3",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	ANIM_SPEED					= 1.0,
	
	INVINCIBLE     				 = { 0, 99999 },
	
	RIGHT                       = TRUE,
	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	EVENT_INTERVAL_TIME0		= 1,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
		
	EVENT_PROCESS =		
	{				
		--State는 모션 종료시 Default로 변경되도록 설정 되었지만, Frame Move에서 재설정 (실제로 Default State로 갈 일은 없음) - StateEnd 설정용
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		         	"DEFENCE_DARKNESS_BOSS_WAIT_A3", 				},
	},
}

--DEFENCE_DARKNESS_BOSS_WAIT의 공통 FRAME MOVE
function DEFENCE_DARKNESS_BOSS_WAIT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	local iDraknessA3Sleep 	= pNPCUnit:GetInt_LUA(6)
	
	if WakeUpHead( pNPCUnit ) == true then								--깨우는 함수
	
		pNPCUnit:SetVector_LUA(9, D3DXVECTOR3(0, 0, 0 ))				--일어날 때 대기시간 초기화
		return
	
	end
	
	if SleepHead( pNPCUnit ) == true and iDraknessA3Sleep ~= 0 then		--재우는 함수
	
		pNPCUnit:SetVector_LUA(9, D3DXVECTOR3(0, 0, 0 ))				--일어날 때 대기시간 초기화
		return
	
	end
	
end

--



DEFENCE_DARKNESS_BOSS_WAKE_UP_A1 =
{
	ANIM_NAME					= "Wake_Up_A1",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	ANIM_SPEED					= 1.0,
	
	INVINCIBLE     				 = { 0, 99999 },
	
	RIGHT                       = TRUE,
	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	EVENT_INTERVAL_TIME0		= 1,	
	
	IMMADIATE_PACKET_SEND		= TRUE,

	SOUND_PLAY0					= { 0.003, "Defence_Darkness_Boss_MagicAttack03.ogg", 100,FALSE,999999, },
	SOUND_PLAY1					= { 0.1, "Defence_Darkness_Boss_MagicAttack03.ogg", 100,FALSE,999999, },
	
	EVENT_PROCESS =
	{				
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		         	"DEFENCE_DARKNESS_BOSS_WAIT_A1", 				},
	},
	
	ALARM =
	{
		DANGER  				 = TRUE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_16454,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = TRUE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_ORANGE"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 5, 				  			    -- 표시 지속 시간
	},	
}

function DEFENCE_DARKNESS_BOSS_WAKE_UP_A1_STATE_START( pKTDXApp, pX2Game, pNPCUnit )  	
		
	pNPCUnit:SetInt_LUA(4, 2)												
	
	local iRandNum = CustomRandVal( pNPCUnit, 3 )								
	pNPCUnit:SetInt_LUA(7, iRandNum)
	
end

function DEFENCE_DARKNESS_BOSS_WAKE_UP_A1_STATE_END( pKTDXApp, pX2Game, pNPCUnit )  	
	
	pNPCUnit:SetVector_LUA(9, D3DXVECTOR3(2.160, 0, 0 ))			--일어난 후 Wait State 에서 2.160초간 대기
	pNPCUnit:SetTimerRestart( 2 )
	
end

--



DEFENCE_DARKNESS_BOSS_WAKE_UP_A2 =
{
	ANIM_NAME					= "Wake_Up_A2",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	ANIM_SPEED					= 1.0,
	
	INVINCIBLE     				 = { 0, 99999 },
	
	RIGHT                       = TRUE,
	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	EVENT_INTERVAL_TIME0		= 1,	
	
	IMMADIATE_PACKET_SEND		= TRUE,

	SOUND_PLAY0					= { 0.003, "Defence_Darkness_Boss_MagicAttack03.ogg", 100,FALSE,999999, },
	SOUND_PLAY1					= { 0.1, "Defence_Darkness_Boss_MagicAttack03.ogg", 100,FALSE,999999, },
	
	EVENT_PROCESS =
	{				
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		         	"DEFENCE_DARKNESS_BOSS_WAIT_A2", 				},
	},
	
	ALARM =
	{
		DANGER  				 = TRUE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_16455,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = TRUE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_ORANGE"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 5, 				  			    -- 표시 지속 시간
	},
}

function DEFENCE_DARKNESS_BOSS_WAKE_UP_A2_STATE_START( pKTDXApp, pX2Game, pNPCUnit )  	
		
	pNPCUnit:SetInt_LUA(5, 2)	 									--기상 
		
	local iAttack_Element_Value = pNPCUnit:GetInt_LUA(7, 2)									
	local iRandNum = CustomRandVal( pNPCUnit, 2 )		
	
	if iAttack_Element_Value == 0 then								--속성 중복 방지
		if iRandNum == 0 then
			pNPCUnit:SetInt_LUA(8, 1)
		else
			pNPCUnit:SetInt_LUA(8, 2)
		end
	elseif iAttack_Element_Value == 1 then
		if iRandNum == 0 then
			pNPCUnit:SetInt_LUA(8, 0)
		else
			pNPCUnit:SetInt_LUA(8, 2)
		end
	else
		if iRandNum == 0 then
			pNPCUnit:SetInt_LUA(8, 0)
		else
			pNPCUnit:SetInt_LUA(8, 1)
		end
	end
		
end

function DEFENCE_DARKNESS_BOSS_WAKE_UP_A2_STATE_END( pKTDXApp, pX2Game, pNPCUnit )  	
	
	pNPCUnit:SetVector_LUA(9, D3DXVECTOR3(2.760, 0, 0 ))			--일어난 후 Wait State 에서 2.760초간 대기
	pNPCUnit:SetTimerRestart( 2 )
	
end

--



DEFENCE_DARKNESS_BOSS_WAKE_UP_A3 =
{
	ANIM_NAME					= "Wake_Up_A3",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	ANIM_SPEED					= 1.0,
	
	INVINCIBLE     				 = { 0, 99999 },
	
	RIGHT                       = TRUE,
	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	EVENT_INTERVAL_TIME0		= 1,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
		
	SOUND_PLAY0					= { 0.003, "Defence_Darkness_Boss_MagicAttack03.ogg", 100,FALSE,999999, },
	SOUND_PLAY1					= { 0.1, "Defence_Darkness_Boss_MagicAttack03.ogg", 100,FALSE,999999, },
		
	EVENT_PROCESS =
	{				
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		         	"DEFENCE_DARKNESS_BOSS_WAIT_A3", 				},
	},	
	
	ALARM =
	{
		DANGER  				 = TRUE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_16456,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = TRUE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_ORANGE"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 5, 				  			    -- 표시 지속 시간
	},
}

function DEFENCE_DARKNESS_BOSS_WAKE_UP_A3_STATE_START( pKTDXApp, pX2Game, pNPCUnit )  	
		
	pNPCUnit:SetInt_LUA(6, 2)	 									--기상 	
		
	local iAttack_Element_Value_01 = pNPCUnit:GetInt_LUA(7, 2)									
	local iAttack_Element_Value_02 = pNPCUnit:GetInt_LUA(8, 2)									
	
	if iAttack_Element_Value_01 == 0 then							--속성 중복 방지
		if iAttack_Element_Value_02 == 1 then
			pNPCUnit:SetInt_LUA(9, 2)
		else
			pNPCUnit:SetInt_LUA(9, 1)
		end
	elseif iAttack_Element_Value_01 == 1 then
		if iAttack_Element_Value_02 == 2 then
			pNPCUnit:SetInt_LUA(9, 0)
		else
			pNPCUnit:SetInt_LUA(9, 2)
		end
	else
		if iAttack_Element_Value_02 == 0 then
			pNPCUnit:SetInt_LUA(9, 1)
		else
			pNPCUnit:SetInt_LUA(9, 0)
		end
	end	
		
end

function DEFENCE_DARKNESS_BOSS_WAKE_UP_A3_STATE_END( pKTDXApp, pX2Game, pNPCUnit )  	
	
	pNPCUnit:SetVector_LUA(9, D3DXVECTOR3(2.790, 0, 0 ))			--일어난 후 Wait State 에서 2.790초간 대기
	pNPCUnit:SetTimerRestart( 2 )
	
end

--



DEFENCE_DARKNESS_BOSS_SLEEP1 = 
{
	ANIM_NAME					= "Sleep1",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	ANIM_SPEED					= 1.0,
	
	INVINCIBLE     				 = { 0, 99999 },
	
	RIGHT                       = TRUE,
	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SOUND_PLAY0					= { 0.003, "Defence_Darkness_Boss_MagicAttack02.ogg", 100,FALSE,999999, },
	SOUND_PLAY1					= { 0.1, "Defence_Darkness_Boss_MagicAttack02.ogg", 100,FALSE,999999, },
	
	
	EVENT_PROCESS =
	 {	
		 { STATE_CHANGE_TYPE["SCT_MOTION_END"],		         	"DEFENCE_DARKNESS_BOSS_WAIT", 				},
	 },
	
	
	ALARM =
	{
		DANGER  				 = FALSE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_16457,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = TRUE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_MAGENTA"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 5, 				  			    -- 표시 지속 시간
	},
}

DEFENCE_DARKNESS_BOSS_SLEEP2 = 
{
	ANIM_NAME					= "Sleep2",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	ANIM_SPEED					= 1.0,
	
	INVINCIBLE     				 = { 0, 99999 },
	
	RIGHT                       = TRUE,
	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SOUND_PLAY0					= { 0.003, "Defence_Darkness_Boss_MagicAttack02.ogg", 100,FALSE,999999, },
	SOUND_PLAY1					= { 0.1, "Defence_Darkness_Boss_MagicAttack02.ogg", 100,FALSE,999999, },
		
	 EVENT_PROCESS =
	 {	
		 { STATE_CHANGE_TYPE["SCT_MOTION_END"],		         	"DEFENCE_DARKNESS_BOSS_WAIT", 				},
	 },
	
	ALARM =
	{
		DANGER  				 = FALSE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_16457,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = TRUE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_MAGENTA"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 5, 				  			    -- 표시 지속 시간
	},
}

DEFENCE_DARKNESS_BOSS_SLEEP3 = 
{
	ANIM_NAME					= "Sleep3",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	ANIM_SPEED					= 1.0,
	
	INVINCIBLE     				 = { 0, 99999 },
	
	RIGHT                       = TRUE,
	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
		
	 EVENT_PROCESS =	
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		         	"DEFENCE_DARKNESS_BOSS_WAIT", 				},
	},
	
	ALARM =
	{
		DANGER  				 = FALSE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_16457,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = TRUE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_MAGENTA"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 5, 				  			    -- 표시 지속 시간
	},
}

--



DEFENCE_DARKNESS_BOSS_MAGICATTACK_A1 =								--2개의 머리가 취침중인 상태에서 공격
{
	ANIM_NAME					= "MagicAttackA1",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	INVINCIBLE     				 = { 0, 99999 },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	ANIM_SPEED					= 1.0,

	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	NEVER_MOVE					= TRUE,
	
	VIEW_TARGET					= FALSE,
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SOUND_PLAY0					= { 0.1, "Defence_Darkness_Boss_MagicAttack01.ogg", 100, FALSE, 999999, },
	SOUND_PLAY1					= { 0.1, "Defence_Darkness_Boss_MagicAttack01.ogg", 100, FALSE, 999999, },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"DEFENCE_DARKNESS_BOSS_WAIT_A1",						},
	},
}

DEFENCE_DARKNESS_BOSS_MAGICATTACK_A2 =								--1개의 머리가 취침중인 상태에서 공격
{
	ANIM_NAME					= "MagicAttackA2",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	INVINCIBLE     				 = { 0, 99999 },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	ANIM_SPEED					= 1.0,

	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	NEVER_MOVE					= TRUE,
	
	VIEW_TARGET					= FALSE,
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SOUND_PLAY0					= { 0.1, "Defence_Darkness_Boss_MagicAttack01.ogg", 100, FALSE, 999999, },
	SOUND_PLAY1					= { 0.1, "Defence_Darkness_Boss_MagicAttack01.ogg", 100, FALSE, 999999, },
	
	 EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"DEFENCE_DARKNESS_BOSS_WAIT_A2",						},
	},
}

DEFENCE_DARKNESS_BOSS_MAGICATTACK_A3 =								--모두 깨어있는 상태에서 공격
{
	ANIM_NAME					= "MagicAttackA3",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	INVINCIBLE     				 = { 0, 99999 },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	ANIM_SPEED					= 1.0,

	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	NEVER_MOVE					= TRUE,
	
	VIEW_TARGET					= FALSE,
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SOUND_PLAY0					= { 0.1, "Defence_Darkness_Boss_MagicAttack01.ogg", 100, FALSE, 999999, },
	SOUND_PLAY1					= { 0.1, "Defence_Darkness_Boss_MagicAttack01.ogg", 100, FALSE, 999999, },
	
	 EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"DEFENCE_DARKNESS_BOSS_WAIT_A3",						},
	},
}

--DEFENCE_DARKNESS_BOSS_MAGICATTACK_A의 공통 FRAME MOVE
function DEFENCE_DARKNESS_BOSS_MAGICATTACK_A_SELECT_EFFECT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )  	
	
	SelectEffect_A( pKTDXApp, pX2Game, pNPCUnit ) 								--공격중인 머리와 속성에 해당하는 EffectSet 생성
	
end

--DEFENCE_DARKNESS_BOSS_MAGICATTACK_A의 공통 STATE_END
function DEFENCE_DARKNESS_BOSS_MAGICATTACK_A_STATE_END( pKTDXApp, pX2Game, pNPCUnit )  	

	pNPCUnit:SetVector_LUA(9, D3DXVECTOR3( 5, 0, 0 ))							--공격 A종료 후 Wait State 에서 5초간 대기
	pNPCUnit:SetTimerRestart( 2 )

end

--



DEFENCE_DARKNESS_BOSS_MAGICATTACK_B1 = 
{
	ANIM_NAME					= "MagicAttackB1",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	INVINCIBLE     				 = { 0, 99999 },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,

	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	NEVER_MOVE					= TRUE,
	
	VIEW_TARGET					= FALSE,
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SOUND_PLAY0					= { 0.937, "Dragon_RockAttack.ogg",100, FALSE, 999999, },
	SOUND_PLAY1					= { 0.937, "Dragon_RockAttack.ogg",100, FALSE, 999999, },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"DEFENCE_DARKNESS_BOSS_WAIT_A1",						},
	},
}

DEFENCE_DARKNESS_BOSS_MAGICATTACK_B2 = 
{
	ANIM_NAME					= "MagicAttackB2",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	INVINCIBLE     				 = { 0, 99999 },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,

	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	NEVER_MOVE					= TRUE,
	
	VIEW_TARGET					= FALSE,
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SOUND_PLAY0					= { 0.937, "Dragon_RockAttack.ogg",100, FALSE, 999999, },
	SOUND_PLAY1					= { 0.937, "Dragon_RockAttack.ogg",100, FALSE, 999999, },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"DEFENCE_DARKNESS_BOSS_WAIT_A2",						},
	},
}

DEFENCE_DARKNESS_BOSS_MAGICATTACK_B3 = 
{
	ANIM_NAME					= "MagicAttackB3",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	INVINCIBLE     				 = { 0, 99999 },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,

	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	NEVER_MOVE					= TRUE,
	
	VIEW_TARGET					= FALSE,
	ALLOW_DIR_CHANGE			= FALSE,	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SOUND_PLAY0					= { 0.937, "Dragon_RockAttack.ogg",100, FALSE, 999999, },
	SOUND_PLAY1					= { 0.937, "Dragon_RockAttack.ogg",100, FALSE, 999999, },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"DEFENCE_DARKNESS_BOSS_WAIT_A3",						},
	},
}

--DEFENCE_DARKNESS_BOSS_MAGICATTACK_B의 공통 FRAME MOVE
function DEFENCE_DARKNESS_BOSS_MAGICATTACK_B_SELECT_EFFECT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )  	
	
	SelectEffect_B( pKTDXApp, pX2Game, pNPCUnit ) 						--공격중인 머리와 속성에 해당하는 EffectSet 생성
	
end

--DEFENCE_DARKNESS_BOSS_MAGICATTACK_B의 공통 STATE_END
function DEFENCE_DARKNESS_BOSS_MAGICATTACK_B_STATE_END( pKTDXApp, pX2Game, pNPCUnit )  	

	pNPCUnit:SetVector_LUA(9, D3DXVECTOR3( 3, 0, 0 ))					--공격 A종료 후 Wait State 에서 3초간 대기
	pNPCUnit:SetTimerRestart( 2 )

end

function SelectEffect_A( pKTDXApp, pX2Game, pNPCUnit )					--현재 공격중인 머리와 속성에 맞는 공격 Effect 출력 함수(A)
	
	local iDraknessA1Sleep 	= pNPCUnit:GetInt_LUA(4)
	local iDraknessA2Sleep 	= pNPCUnit:GetInt_LUA(5)
	local iDraknessA3Sleep 	= pNPCUnit:GetInt_LUA(6)
	
	if iDraknessA3Sleep == 2 then										--세번째 머리가 깨어 있으면
		
		AttackEffect_A1( pKTDXApp, pX2Game, pNPCUnit )
		AttackEffect_A2( pKTDXApp, pX2Game, pNPCUnit )
		AttackEffect_A3( pKTDXApp, pX2Game, pNPCUnit )
		return
		
	elseif iDraknessA2Sleep == 2 then									--두번째 머리가 깨어 있으면
		
		AttackEffect_A1( pKTDXApp, pX2Game, pNPCUnit )
		AttackEffect_A2( pKTDXApp, pX2Game, pNPCUnit )
		return
		
	else																--첫번째 머리가 깨어 있으면
		
		AttackEffect_A1( pKTDXApp, pX2Game, pNPCUnit )
		return
		
	end

end

function SelectEffect_B( pKTDXApp, pX2Game, pNPCUnit, Index )			--현재 공격중인 머리와 속성에 맞는 공격 EffectSet 출력 함수(B)
	
	local iDraknessA1Sleep 	= pNPCUnit:GetInt_LUA(4)
	local iDraknessA2Sleep 	= pNPCUnit:GetInt_LUA(5)
	local iDraknessA3Sleep 	= pNPCUnit:GetInt_LUA(6)
	
	if iDraknessA3Sleep == 2 then										--세번째 머리가 깨어 있으면
		
		AttackEffect_B1( pKTDXApp, pX2Game, pNPCUnit )
		AttackEffect_B2( pKTDXApp, pX2Game, pNPCUnit )
		AttackEffect_B3( pKTDXApp, pX2Game, pNPCUnit )
		return
		
	elseif iDraknessA2Sleep == 2 then									--두번째 머리가 깨어 있으면
		
		AttackEffect_B1( pKTDXApp, pX2Game, pNPCUnit )
		AttackEffect_B2( pKTDXApp, pX2Game, pNPCUnit )
		return
		
	else																--첫번째 머리가 깨어 있으면
		
		AttackEffect_B1( pKTDXApp, pX2Game, pNPCUnit )
		return
		
	end
	
end

function AttackEffect_A1( pKTDXApp, pX2Game, pNPCUnit )					--A1 공격 이펙트

	local vElementHead = pNPCUnit:GetInt_LUA(7)								

	if pNPCUnit:AnimEventTimer_LUA( 0.05 ) then							--공격
	
		EyeEffect_1( pX2Game, pNPCUnit, vElementHead )	
		
		SetAttackTime( pNPCUnit, 0 )									--임의의 발사 시간 설정
		
	end
	
	for i=0, 8 do
	
		if pNPCUnit:AnimEventTimer_LUA( GetAttackTime( pNPCUnit, i, 0 ) ) then				
		
			local pDamageEffect = pX2Game:GetDamageEffect()
			local pMajorParticle = pX2Game:GetMajorParticle()
			local vSummonPos = {}										--공격 목표 위치

			vSummonPos[0] = D3DXVECTOR3( 3529, 3697, -3829 )
			vSummonPos[1] = D3DXVECTOR3( 3305, 3697, -4014 )
			vSummonPos[2] = D3DXVECTOR3( 3072, 3697, -4207 )
			vSummonPos[3] = D3DXVECTOR3( 2837, 3697, -4385 )
			vSummonPos[4] = D3DXVECTOR3( 2583, 3697, -4533 )
			vSummonPos[5] = D3DXVECTOR3( 2299, 3697, -4637 )
			vSummonPos[6] = D3DXVECTOR3( 2020, 3697, -4740 )
			vSummonPos[7] = D3DXVECTOR3( 1742, 3697, -4820 )
			vSummonPos[8] = D3DXVECTOR3( 1464, 3697, -4944 )
			
			if vElementHead == 0 then									--저주
			
				pDamageEffect:CreateInstance_LUA2( pNPCUnit, "DARKNESS_ATTACK_A_CURSE",  D3DXVECTOR3(vSummonPos[i].x, vSummonPos[i].y + 3000, vSummonPos[i].z), vSummonPos[i], D3DXVECTOR3(0, 0, 0) )
				pMajorParticle:CreateSequence_LUA( "darkness_attackA_curse_sign_P01", D3DXVECTOR3( vSummonPos[i].x, vSummonPos[i].y + 15, vSummonPos[i].z), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
				pNPCUnit:PlaySound_LUA( "Defence_Darkness_Boss_MagicAttack_Fire01.ogg" )
				pNPCUnit:PlaySound_LUA( "Defence_Darkness_Boss_MagicAttack_Fire01.ogg" )
				
			elseif vElementHead == 1 then								--화염
			
				pDamageEffect:CreateInstance_LUA2( pNPCUnit, "DARKNESS_ATTACK_A_FIRE",  D3DXVECTOR3(vSummonPos[i].x, vSummonPos[i].y + 3000, vSummonPos[i].z), vSummonPos[i], D3DXVECTOR3(0, 0, 0) )
				pMajorParticle:CreateSequence_LUA( "darkness_attackA_fire_sign_P01", D3DXVECTOR3( vSummonPos[i].x, vSummonPos[i].y + 15, vSummonPos[i].z), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
				pNPCUnit:PlaySound_LUA( "Defence_Darkness_Boss_MagicAttack_Cold01.ogg" )
				pNPCUnit:PlaySound_LUA( "Defence_Darkness_Boss_MagicAttack_Cold01.ogg" )
				
			else														--냉기
			
				pDamageEffect:CreateInstance_LUA2( pNPCUnit, "DARKNESS_ATTACK_A_ICE",  D3DXVECTOR3(vSummonPos[i].x, vSummonPos[i].y + 3000, vSummonPos[i].z), vSummonPos[i], D3DXVECTOR3(0, 0, 0) )
				pMajorParticle:CreateSequence_LUA( "darkness_attackA_ice_sign_P01", D3DXVECTOR3( vSummonPos[i].x, vSummonPos[i].y + 15, vSummonPos[i].z), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
				pNPCUnit:PlaySound_LUA( "Defence_Darkness_Boss_MagicAttack_Stone01.ogg" )
				pNPCUnit:PlaySound_LUA( "Defence_Darkness_Boss_MagicAttack_Stone01.ogg" )
				
			end
		
		end
	
	end

end

function AttackEffect_A2( pKTDXApp, pX2Game, pNPCUnit )					--A2 공격 이펙트

	local vElementHead = pNPCUnit:GetInt_LUA(8)								
	
	if pNPCUnit:AnimEventTimer_LUA( 0.05 ) then							--공격
	
		EyeEffect_2( pX2Game, pNPCUnit, vElementHead )	
	
		SetAttackTime( pNPCUnit, 1 )									--임의의 발사 시간 설정
		
	end
		
	for i=0, 8 do
	
		if pNPCUnit:AnimEventTimer_LUA( GetAttackTime( pNPCUnit, i, 1 ) ) then				
		
			local pDamageEffect = pX2Game:GetDamageEffect()
			local pMajorParticle = pX2Game:GetMajorParticle()
			local vSummonPos = {}										--공격 목표 위치

			vSummonPos[0] = D3DXVECTOR3(  1183, 3697, -5039 )
			vSummonPos[1] = D3DXVECTOR3(   888, 3697, -5110 )
			vSummonPos[2] = D3DXVECTOR3(   587, 3697, -5126 )
			vSummonPos[3] = D3DXVECTOR3(   290, 3697, -5126 )
			vSummonPos[4] = D3DXVECTOR3(   -13, 3697, -5126 )
			vSummonPos[5] = D3DXVECTOR3(  -311, 3697, -5126 )
			vSummonPos[6] = D3DXVECTOR3(  -608, 3697, -5126 )
			vSummonPos[7] = D3DXVECTOR3(  -909, 3697, -5095 )
			vSummonPos[8] = D3DXVECTOR3( -1198, 3697, -5031 )
			
			if vElementHead == 0 then									--저주
			
				pDamageEffect:CreateInstance_LUA2( pNPCUnit, "DARKNESS_ATTACK_A_CURSE",  D3DXVECTOR3(vSummonPos[i].x, vSummonPos[i].y + 3000, vSummonPos[i].z), vSummonPos[i], D3DXVECTOR3(0, 0, 0) )
				pMajorParticle:CreateSequence_LUA( "darkness_attackA_curse_sign_P01", D3DXVECTOR3( vSummonPos[i].x, vSummonPos[i].y + 15, vSummonPos[i].z), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
				pNPCUnit:PlaySound_LUA( "Defence_Darkness_Boss_MagicAttack_Fire01.ogg" )
				pNPCUnit:PlaySound_LUA( "Defence_Darkness_Boss_MagicAttack_Fire01.ogg" )
				
			elseif vElementHead == 1 then								--화염
			
				pDamageEffect:CreateInstance_LUA2( pNPCUnit, "DARKNESS_ATTACK_A_FIRE",  D3DXVECTOR3(vSummonPos[i].x, vSummonPos[i].y + 3000, vSummonPos[i].z), vSummonPos[i], D3DXVECTOR3(0, 0, 0) )
				pMajorParticle:CreateSequence_LUA( "darkness_attackA_fire_sign_P01", D3DXVECTOR3( vSummonPos[i].x, vSummonPos[i].y + 15, vSummonPos[i].z), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
				pNPCUnit:PlaySound_LUA( "Defence_Darkness_Boss_MagicAttack_Cold01.ogg" )
				pNPCUnit:PlaySound_LUA( "Defence_Darkness_Boss_MagicAttack_Cold01.ogg" )
				
			else														--냉기
			
				pDamageEffect:CreateInstance_LUA2( pNPCUnit, "DARKNESS_ATTACK_A_ICE",  D3DXVECTOR3(vSummonPos[i].x, vSummonPos[i].y + 3000, vSummonPos[i].z), vSummonPos[i], D3DXVECTOR3(0, 0, 0) )
				pMajorParticle:CreateSequence_LUA( "darkness_attackA_ice_sign_P01", D3DXVECTOR3( vSummonPos[i].x, vSummonPos[i].y + 15, vSummonPos[i].z), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
				pNPCUnit:PlaySound_LUA( "Defence_Darkness_Boss_MagicAttack_Stone01.ogg" )
				pNPCUnit:PlaySound_LUA( "Defence_Darkness_Boss_MagicAttack_Stone01.ogg" )
				
			end
		
		end
	
	end
	
end

function AttackEffect_A3( pKTDXApp, pX2Game, pNPCUnit )					--A3 공격 이펙트

	local vElementHead = pNPCUnit:GetInt_LUA(9)								
	
	if pNPCUnit:AnimEventTimer_LUA( 0.05 ) then							--공격
	
		EyeEffect_3( pX2Game, pNPCUnit, vElementHead )	
	
		SetAttackTime( pNPCUnit, 2 )									--임의의 발사 시간 설정
		
	end
		
	for i=0, 8 do
	
		if pNPCUnit:AnimEventTimer_LUA( GetAttackTime( pNPCUnit, i, 2 ) ) then				
		
			local pDamageEffect = pX2Game:GetDamageEffect()
			local pMajorParticle = pX2Game:GetMajorParticle()
			local vSummonPos = {}										--공격 목표 위치

			vSummonPos[0] = D3DXVECTOR3( -1484, 3697, -4928 )
			vSummonPos[1] = D3DXVECTOR3( -1762, 3697, -4827 )
			vSummonPos[2] = D3DXVECTOR3( -2039, 3697, -4726 )
			vSummonPos[3] = D3DXVECTOR3( -2320, 3697, -4624 )
			vSummonPos[4] = D3DXVECTOR3( -2597, 3697, -4515 )
			vSummonPos[5] = D3DXVECTOR3( -2850, 3697, -4360 )
			vSummonPos[6] = D3DXVECTOR3( -3097, 3697, -4180 )
			vSummonPos[7] = D3DXVECTOR3( -3317, 3697, -3994 )
			vSummonPos[8] = D3DXVECTOR3( -3543, 3697, -3803 )
			
			if vElementHead == 0 then									--저주
			
				pDamageEffect:CreateInstance_LUA2( pNPCUnit, "DARKNESS_ATTACK_A_CURSE",  D3DXVECTOR3(vSummonPos[i].x, vSummonPos[i].y + 3000, vSummonPos[i].z), vSummonPos[i], D3DXVECTOR3(0, 0, 0) )
				pMajorParticle:CreateSequence_LUA( "darkness_attackA_curse_sign_P01", D3DXVECTOR3( vSummonPos[i].x, vSummonPos[i].y + 15, vSummonPos[i].z), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
				pNPCUnit:PlaySound_LUA( "Defence_Darkness_Boss_MagicAttack_Fire01.ogg" )
				pNPCUnit:PlaySound_LUA( "Defence_Darkness_Boss_MagicAttack_Fire01.ogg" )
				
			elseif vElementHead == 1 then								--화염
			
				pDamageEffect:CreateInstance_LUA2( pNPCUnit, "DARKNESS_ATTACK_A_FIRE",  D3DXVECTOR3(vSummonPos[i].x, vSummonPos[i].y + 3000, vSummonPos[i].z), vSummonPos[i], D3DXVECTOR3(0, 0, 0) )
				pMajorParticle:CreateSequence_LUA( "darkness_attackA_fire_sign_P01", D3DXVECTOR3( vSummonPos[i].x, vSummonPos[i].y + 15, vSummonPos[i].z), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
				pNPCUnit:PlaySound_LUA( "Defence_Darkness_Boss_MagicAttack_Cold01.ogg" )
				pNPCUnit:PlaySound_LUA( "Defence_Darkness_Boss_MagicAttack_Cold01.ogg" )
				
			else														--냉기
			
				pDamageEffect:CreateInstance_LUA2( pNPCUnit, "DARKNESS_ATTACK_A_ICE",  D3DXVECTOR3(vSummonPos[i].x, vSummonPos[i].y + 3000, vSummonPos[i].z), vSummonPos[i], D3DXVECTOR3(0, 0, 0) )
				pMajorParticle:CreateSequence_LUA( "darkness_attackA_ice_sign_P01", D3DXVECTOR3( vSummonPos[i].x, vSummonPos[i].y + 15, vSummonPos[i].z), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
				pNPCUnit:PlaySound_LUA( "Defence_Darkness_Boss_MagicAttack_Stone01.ogg" )
				pNPCUnit:PlaySound_LUA( "Defence_Darkness_Boss_MagicAttack_Stone01.ogg" )
				
			end
		
		end
	
	end

end

--Magic Attack A 공격 발생 시간 설정 함수
function SetAttackTime( pNPCUnit, iAttackHead )													--iAttackHead	->	 0 - 첫번째 머리, 1 - 두번째 머리, 2 - 세번째 머리

	local bRandomHeight = false

	for i = 0, 2 do
		
		for j = 0, 2 do
			
			--공격을 피할 수 있도록 공격간 달래이 설정 구문 - Magic Attack A 한정
			--현재 불덩이의 발사 간격은 각각 생성시간의 차로 구분한다. ( 각 불덩이마다 생성 시간이 다르다. )
			--기본적으로 불덩이의 발사 시간은 ( 0.1초 ~ 1.1초 ), ( 2.3초 ~ 3.3초 ) 중 렌덤으로 결정된다.
			--만약 3연속으로 비슷한 생성 시간을 지닐 때, 3번째 불덩이 생성 시간을 강제적으로 조정한다. ( 1, 2번째 불덩이와 큰 시간차를 두도록 )
			--이는 피할 수 있는 틈이 무조건 하나 이상은 생기도록 하기 위함이다.
			
			local vAttackStartPosition 	= pNPCUnit:GetVector_LUA(i + (iAttackHead * 3))			--저장된 공격 시작 시간
			local iVarHeight 			= CustomRandVal( pNPCUnit, 20 )							--임의의 발사 시간 설정
			local fFireTime 			= 2														--저장될 발사 시간
			
			local iIndex = i + j + ( i * 2 )													--현재 불덩이 인덱스
			
			fFireTime = ( iVarHeight / 10 )	+ 0.1												--실제 발사 시간 (0.1초 ~ 1.1초)
			
			if iIndex >= 2 then																	--3번째 불덩이부터 연산( 3번째 불덩이가 지금 연산하려는 불덩이며 1, 2번째 불덩이는 이미 연산했던 불덩이 )
				local fBeforeTime1 = GetAttackTime( pNPCUnit, iIndex - 1 , iAttackHead )		--2번째 불덩이 발사 시간
				local fBeforeTime2 = GetAttackTime( pNPCUnit, iIndex - 2 , iAttackHead )		--1번쩨 불덩이 발사 시간
				
				
				local fBeforeTimeDifference = 0													--2번째 불덩이와 1번째 불덩이의 시간차
				if fBeforeTime1 > fBeforeTime2 then
					fBeforeTimeDifference = fBeforeTime1 - fBeforeTime2
				else
					fBeforeTimeDifference = fBeforeTime2 - fBeforeTime1
				end
				
				local fRecentTimeDifference = 0													--현재 불덩이( 3번째 )와 2번째 불덩이의 시간차
				if fFireTime > fBeforeTime1 then
					fRecentTimeDifference = fFireTime - fBeforeTime1
				else
					fRecentTimeDifference = fBeforeTime1 - fFireTime
				end
				
				local fTotalDifference = 0														--이전 불덩이들 시간차와 현재 불덩이 시간차의 시간차
				if fRecentTimeDifference > fBeforeTimeDifference then
					fTotalDifference = fRecentTimeDifference - fBeforeTimeDifference
				else
					fTotalDifference = fBeforeTimeDifference - fRecentTimeDifference
				end
				
				if fTotalDifference < 0.6 then													--세 불덩이의 시간차가 낮을 때( 비슷한 시간에 떨어질 때 )
					fRandTime = CustomRandVal( pNPCUnit, 3 )
					if fBeforeTime1 > 1.1 then													--현재 불덩이 생성 시간이 느리면
						fFireTime = fBeforeTime1 - ( 0.9 - (fRandTime / 10) )					--강제로 빠른 시간으로 설정
					else																		--현재 불덩이 생성 시간이 빠르면
						fFireTime = fBeforeTime1 + ( 0.9 + (fRandTime / 10) )					--강제로 느린 시간으로 설정
					end
				end
			end
			
			if j == 0 then
			
				pNPCUnit:SetVector_LUA(i + (iAttackHead * 3), D3DXVECTOR3(fFireTime, vAttackStartPosition.y, vAttackStartPosition.z))
				
			elseif j == 1 then

				pNPCUnit:SetVector_LUA(i + (iAttackHead * 3), D3DXVECTOR3(vAttackStartPosition.x, fFireTime, vAttackStartPosition.z))
			
			else
				
				pNPCUnit:SetVector_LUA(i + (iAttackHead * 3), D3DXVECTOR3(vAttackStartPosition.x, vAttackStartPosition.y, fFireTime))
				
			end
			
		end
		
	end

end

--현재 공격을 할 불덩이가 생성 될 시간값 가져오는 함수
function GetAttackTime( pNPCUnit, iIndex , iAttackHead)

	local iCount = 0;
	for i = 0, 2 do
		
		for j = 0, 2 do
			
			if iCount == iIndex then
			
				local vAttackStartPosition 	= pNPCUnit:GetVector_LUA(i + (iAttackHead * 3))	
			
				if j == 0 then
				
					return vAttackStartPosition.x
					
				elseif j == 1 then

					return vAttackStartPosition.y
				
				else
					
					return vAttackStartPosition.z
					
				end
			
			end
			
			iCount = iCount + 1
			
		end
		
	end
	
	return 0

end

function AttackEffect_B1( pKTDXApp, pX2Game, pNPCUnit )					--B1 공격 이펙트

	if pNPCUnit:AnimEventTimer_LUA( 0.5 ) then							--공격
	
		EyeEffect_1( pX2Game, pNPCUnit, 0 )	
	
	elseif pNPCUnit:AnimEventTimer_LUA( 1.0 ) then						--공격

		local vSummonPos = {}											--공격 목표 위치

		vSummonPos[0] = D3DXVECTOR3( 0, -721, 0 )						--1층
		vSummonPos[1] = D3DXVECTOR3( 0,    0, 0 )						--2층

		for i = 0, 1 do
		
			pNPCUnit:PlaySound_LUA( "Defence_Darkness_Boss_MagicAttack_Fire01.ogg" )
			pNPCUnit:PlaySound_LUA( "Defence_Darkness_Boss_MagicAttack_Fire01.ogg" )
		
			local pEffectSet = pX2Game:GetEffectSet()

			pEffectSet:PlayEffectSetWithCustomPos_LUA( "EffectSet_darkness_attackB1_M01", pNPCUnit, vSummonPos[i], D3DXVECTOR3(0, 0, 0) )
			
		end
		
	end

end

function AttackEffect_B2( pKTDXApp, pX2Game, pNPCUnit )					--B2 공격 이펙트

	if pNPCUnit:AnimEventTimer_LUA( 0.5 ) then							--공격
	
		EyeEffect_2( pX2Game, pNPCUnit, 0 )	
	
	elseif pNPCUnit:AnimEventTimer_LUA( 1.0 ) then						--공격

		local vSummonPos = {}											--공격 목표 위치
	
		vSummonPos[0] = D3DXVECTOR3( 0, -721, 0 )						--1층
		vSummonPos[1] = D3DXVECTOR3( 0,    0, 0 )						--2층

		for i = 0, 1 do
		
			pNPCUnit:PlaySound_LUA( "Defence_Darkness_Boss_MagicAttack_Fire01.ogg" )
			pNPCUnit:PlaySound_LUA( "Defence_Darkness_Boss_MagicAttack_Fire01.ogg" )
		
			local pEffectSet = pX2Game:GetEffectSet()

			pEffectSet:PlayEffectSetWithCustomPos_LUA( "EffectSet_darkness_attackB2_M01", pNPCUnit, vSummonPos[i], D3DXVECTOR3(0, 0, 0) )
			
		end
		
	end

end

function AttackEffect_B3( pKTDXApp, pX2Game, pNPCUnit )					--B3 공격 이펙트

	if pNPCUnit:AnimEventTimer_LUA( 0.5 ) then							--공격
	
		EyeEffect_3( pX2Game, pNPCUnit, 0 )	
	
	elseif pNPCUnit:AnimEventTimer_LUA( 1.0 ) then						--공격

		local vSummonPos = {}											--공격 목표 위치

		vSummonPos[0] = D3DXVECTOR3( 0, -721, 0 )						--1층
		vSummonPos[1] = D3DXVECTOR3( 0,    0, 0 )						--2층
	
		for i = 0, 1 do
	
			pNPCUnit:PlaySound_LUA( "Defence_Darkness_Boss_MagicAttack_Fire01.ogg" )
			pNPCUnit:PlaySound_LUA( "Defence_Darkness_Boss_MagicAttack_Fire01.ogg" )
		
			local pEffectSet = pX2Game:GetEffectSet()
			
			if i == 0 then												--1층과 2층은 같은 공격 EffectSet를 사용하지 않는다.
	
				pEffectSet:PlayEffectSetWithCustomPos_LUA( "EffectSet_darkness_attackB3_M01", pNPCUnit, vSummonPos[i], D3DXVECTOR3(0, 0, 0) )
				
			else	
			
				pEffectSet:PlayEffectSetWithCustomPos_LUA( "EffectSet_darkness_attackB4_M01", pNPCUnit, vSummonPos[i], D3DXVECTOR3(0, 0, 0) )
				
			end
			
		end
		
	end

end

function EyeEffect_1( pX2Game, pNPCUnit, vElementHead )	

	local pEffectSet = pX2Game:GetEffectSet()
	if vElementHead == 0 then											--저주
	
		hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_Darkness_Boss_MagicAttick_Eye_Curse_01", pNPCUnit )
		
	elseif vElementHead == 1 then										--화염
	
		hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_Darkness_Boss_MagicAttick_Eye_Fire_01", pNPCUnit )
		
	else																--냉기
	
		hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_Darkness_Boss_MagicAttick_Eye_Cold_01", pNPCUnit )
		
	end
	
	if nil ~= hEffect then
		pNPCUnit:SetEffectSet_LUA(0, hEffect)
	end

end

function EyeEffect_2( pX2Game, pNPCUnit, vElementHead )	

	local pEffectSet = pX2Game:GetEffectSet()
	if vElementHead == 0 then											--저주
	
		hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_Darkness_Boss_MagicAttick_Eye_Curse_02", pNPCUnit )
		
	elseif vElementHead == 1 then										--화염
	
		hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_Darkness_Boss_MagicAttick_Eye_Fire_02", pNPCUnit )
		
	else																--냉기
	
		hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_Darkness_Boss_MagicAttick_Eye_Cold_02", pNPCUnit )
		
	end
	
	if nil ~= hEffect then
		pNPCUnit:SetEffectSet_LUA(0, hEffect)
	end

end

function EyeEffect_3( pX2Game, pNPCUnit, vElementHead )	

	local pEffectSet = pX2Game:GetEffectSet()
	if vElementHead == 0 then											--저주
	
		hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_Darkness_Boss_MagicAttick_Eye_Curse_03", pNPCUnit )
		
	elseif vElementHead == 1 then										--화염
	
		hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_Darkness_Boss_MagicAttick_Eye_Fire_03", pNPCUnit )
		
	else																--냉기
	
		hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_Darkness_Boss_MagicAttick_Eye_Cold_03", pNPCUnit )
		
	end
	
	if nil ~= hEffect then
		pNPCUnit:SetEffectSet_LUA(0, hEffect)
	end

end

--공격시 해당 공격  State로 변경해 주는 함수
function Start_Atatck( pNPCUnit )
	
	local iDraknessA1Sleep 	= pNPCUnit:GetInt_LUA(4)
	local iDraknessA2Sleep 	= pNPCUnit:GetInt_LUA(5)
	local iDraknessA3Sleep 	= pNPCUnit:GetInt_LUA(6)
	
	local iRandNum = CustomRandVal( pNPCUnit, 100 )								--승만 			--공격 종류 설정용 난수
	if iRandNum > 45 then	
	
		if iDraknessA3Sleep == 2 then															--모든 머리 공격
		
			pNPCUnit:StateChange_LUA("DEFENCE_DARKNESS_BOSS_MAGICATTACK_A3", true)		
		
		elseif iDraknessA2Sleep == 2 then														--첫번째, 두번째 머리 공격
		
			pNPCUnit:StateChange_LUA("DEFENCE_DARKNESS_BOSS_MAGICATTACK_A2", true)		
			
		else																					--첫번째 머리 공격
			
			pNPCUnit:StateChange_LUA("DEFENCE_DARKNESS_BOSS_MAGICATTACK_A1", true)		
		
		end
		
	else		
			
		if iDraknessA3Sleep == 2 then															--모든 머리 공격														
		
			pNPCUnit:StateChange_LUA("DEFENCE_DARKNESS_BOSS_MAGICATTACK_B3", true)		
		
		elseif iDraknessA2Sleep == 2 then														--첫번째, 두번째 머리 공격												
		
			pNPCUnit:StateChange_LUA("DEFENCE_DARKNESS_BOSS_MAGICATTACK_B2", true)		
			
		else																				--첫번째 머리 공격
			
			pNPCUnit:StateChange_LUA("DEFENCE_DARKNESS_BOSS_MAGICATTACK_B1", true)		
		
		end
		
	end	
	
end

--


DEFENCE_DARKNESS_BOSS_PRE_DYING = 
{
	ANIM_NAME					= "Dying_A1",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		

	NEVER_MOVE					= TRUE,

    SOUND_PLAY0					= { 0.129, "Ancient_Bone_Dragon_Dying.ogg" },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	DYING_SPEED                 = 1,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

function DEFENCE_DARKNESS_BOSS_PRE_DYING_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	SelectDieState( pNPCUnit )

end

--


DEFENCE_DARKNESS_BOSS_DYING1 = 
{
	ANIM_NAME					= "Dying_A1",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		

	NEVER_MOVE					= TRUE,

    SOUND_PLAY0					= { 0.129, "Ancient_Bone_Dragon_Dying.ogg" },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	DYING_SPEED                 = 1,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ALARM =
	{
		DANGER  				 = FALSE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_17095,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = TRUE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_MAGENTA"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 5, 				  			    -- 표시 지속 시간
	},
}

DEFENCE_DARKNESS_BOSS_DYING2 = 
{
	ANIM_NAME					= "Dying_A2",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		

	NEVER_MOVE					= TRUE,

    SOUND_PLAY0					= { 0.129, "Ancient_Bone_Dragon_Dying.ogg" },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	DYING_SPEED                 = 1,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ALARM =
	{
		DANGER  				 = FALSE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_17095,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = TRUE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_MAGENTA"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 5, 				  			    -- 표시 지속 시간
	},
}

DEFENCE_DARKNESS_BOSS_DYING3 = 
{
	ANIM_NAME					= "Dying_A3",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		

	NEVER_MOVE					= TRUE,

    SOUND_PLAY0					= { 0.129, "Ancient_Bone_Dragon_Dying.ogg" },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	DYING_SPEED                 = 1,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ALARM =
	{
		DANGER  				 = FALSE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_17095,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = TRUE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_MAGENTA"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 5, 				  			    -- 표시 지속 시간
	},
}

function DEFENCE_DARKNESS_BOSS_DYING_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	GetMinorParticle = pX2Game:GetMinorParticle()
	pSeq = GetMinorParticle:CreateSequence_LUA( "DieLight",		pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	
	if pSeq ~= nil then
	
		pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		pNPCUnit:SetDieSeq( pSeq:GetHandle() )
	
	end
	
	pNPCUnit:PlaySound_LUA( "DieLight.ogg" )

end

function DEFENCE_DARKNESS_BOSS_DYING_STATE_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

    if pNPCUnit:AnimEventTimer_LUA( 2.8 ) then
	
        pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 50.0, 3.2 )
		
    end
	
end

--



function DEFENCE_DARKNESS_BOSS_COMMON_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )    
	
	local fNowCheckTime    = pX2Game:GetGameTime()								--게임 시간 체크
	local iBlastBossKilled = pNPCUnit:GetInt_LUA(0)								--Shadow Blast Boss의 사망 카운트
	local bDArknessDie	   = pNPCUnit:GetFlag_LUA(2)							--사망 체크
	local iDarknessDieTime = 3600												--생존 시간
	
	--사망 조건
	if bDArknessDie == true then												--사망중이면 Return
	
		return
	
	end
	
	if fNowCheckTime >= iDarknessDieTime then 									--게임 일정 시간 지난 후 사망 진행
		
		pNPCUnit:SetFlag_LUA(2, true)											--사망 인식 Boolean
		pNPCUnit:SetNowHP_LUA(0)												--사망	State
		return
	
	end
	
	local pCrystal = pX2Game:GetNPCUnitByType( NPC_UNIT_ID["NUI_DEFENCE_CRYSTAL"] )
	local pDarkBallExpert = pX2Game:GetNPCUnitByType( NPC_UNIT_ID["NUI_DEFENCE_DARK_BALL_EXPERT"] )
	local pDarkBallExtra = pX2Game:GetNPCUnitByType( NPC_UNIT_ID["NUI_DEFENCE_DARK_BALL_EXTRA"] )

	if pCrystal ~= nil then														--엘의 수정이 존재함
			
		if pCrystal:GetNowHP_LUA() > 0 then										--엘의 수정의 체력이 남아 있을 때
		
			if (iBlastBossKilled >= 18) then 									--Shodow Blast Boss 사망카운트 충족 or DarkBall의 소멸 --블라스트 보스 카운트 100이 되어야 사망 처리됨
				pNPCUnit:SetFlag_LUA(2, true)									--사망 인식 Boolean
				pNPCUnit:SetNowHP_LUA(0)										--사망	State
				return
			
			end
			
			if pDarkBallExpert == nil and  pDarkBallExtra == nil then			--소환문이 소환을 마치고, 혼자 남을 때 사망 처리
				pNPCUnit:SetFlag_LUA(2, true)									--사망 인식 Boolean
				pNPCUnit:SetNowHP_LUA(0)
			end
			
		end		
		
	end

	--취침 타이머 설정	--승만										
	local bSleepDarknrss   = pNPCUnit:GetFlag_LUA(0)							--취침 상태	여부	true = 취침 상태, false = 기상 상태
																				--머리 3, 2, 1
																				--Int[4~6]	0 = 취침중, 1 = 일어날 준비, 2 = 일어난 상태
	local iDraknessA1Sleep 	= pNPCUnit:GetInt_LUA(4)
	local iDraknessA2Sleep 	= pNPCUnit:GetInt_LUA(5)
	local iDraknessA3Sleep 	= pNPCUnit:GetInt_LUA(6)
	local iSleepTimeHead1  = 10													--머리 1 깨는 시간
	local iSleepTimeHead2  = 120													--머리 2 깨는 시간
	local iSleepTimeHead3  = 240												--머리 3 깨는 시간
		
	if iDraknessA3Sleep == 0 then												--마지막 머리가 잠들어 있을 때 까지 타이머 작동
															
		local fSleepTime = pNPCUnit:GetTimerElapsedTime( 1 )					--취침 설정 타이머 갱신
		 
		if fSleepTime >= iSleepTimeHead1 and iDraknessA1Sleep == 0 then			--첫번째 머리 깨어나는 시간
		
			pNPCUnit:SetInt_LUA(4, 1)
		
		elseif fSleepTime >= iSleepTimeHead2 and iDraknessA2Sleep == 0 then		--두번째 머리 깨어나는 시간
		
			pNPCUnit:SetInt_LUA(5, 1)
		
		elseif fSleepTime >= iSleepTimeHead3 and iDraknessA3Sleep == 0 then		--세번째 머리 깨어나는 시간
		
			pNPCUnit:SetInt_LUA(6, 1)
			
			pNPCUnit:SetTimerRestart( 1 )
		
		end
		
	end
	
	local vAttackWaitTime = pNPCUnit:GetVector_LUA(9)
	local fAttackWaitTime = vAttackWaitTime.x
	
	--Wait State 일 떄, 대기 시간
	if fAttackWaitTime > 0 then
	
		local fWaitTime = pNPCUnit:GetTimerElapsedTime( 2 )						
		
		if fWaitTime >= fAttackWaitTime then									--대기 시간 종료 시 공격 State 전환
			pNPCUnit:SetVector_LUA(9, D3DXVECTOR3(0, 0, 0 ))					--대기 시간 초기화
			Start_Atatck( pNPCUnit )
		end
	
	end
	
	--이하 라운드 제어용
	local iFastestSummonGroup = pNPCUnit:GetInt_LUA(1)
	local iLastPlayedRoundEffect = pNPCUnit:GetInt_LUA(2)

	--상자 소환
	SUMMON_BOX( 49, 50, 100, pX2Game, pNPCUnit)  ---두번째 까지 라인맵 번호 

	--라운드 파티클
	if iLastPlayedRoundEffect >= 15 then
		return
	end
	
	if iFastestSummonGroup > iLastPlayedRoundEffect then
		if iLastPlayedRoundEffect == 0 then
			--첫 라운드 파티클은 "엘의 수정을 보호하세요" 나온 후 보여지도록 제어
			if fNowCheckTime > 10 then
				local pMajorParticle = pX2Game:GetMajorParticle()
				pMajorParticle:CreateSequence_LUA( "UI_Defence_Round_Effect",D3DXVECTOR3(512, 324, 0), D3DXVECTOR2(1, 1), D3DXVECTOR2(-1,-1) )
				
				-- 최대 라운드 숫자 UI 파티클
				pMajorParticle:CreateSequence_LUA( "UI_Defence_Round_Number15",D3DXVECTOR3(512 + 150, 324 - 62, 0), D3DXVECTOR2(1, 1), D3DXVECTOR2(-1,-1) )
				
				-- 현재 라운드 숫자 UI 파티클 (iFastestSummonGroup)
				pMajorParticle:CreateSequence_LUA( "UI_Defence_Round_Number1", D3DXVECTOR3(512 + 40, 324 - 62, 0), D3DXVECTOR2(1, 1), D3DXVECTOR2(-1,-1) )
				
				pNPCUnit:SetInt_LUA(2, iFastestSummonGroup)
			end
		else
			local pMajorParticle = pX2Game:GetMajorParticle()
			pMajorParticle:CreateSequence_LUA( "UI_Defence_Round_Effect",D3DXVECTOR3(512, 324, 0), D3DXVECTOR2(1, 1), D3DXVECTOR2(-1,-1) )
			
			-- 최대 라운드 숫자 UI 파티클
			pMajorParticle:CreateSequence_LUA( "UI_Defence_Round_Number15",D3DXVECTOR3(512 + 150, 324 - 62, 0), D3DXVECTOR2(1, 1), D3DXVECTOR2(-1,-1) )
			
			-- 현재 라운드 숫자 UI 파티클 (iFastestSummonGroup)
			local strDefenceRoundNumberEffect = string.format( "UI_Defence_Round_Number%d", iFastestSummonGroup)
			pMajorParticle:CreateSequence_LUA( strDefenceRoundNumberEffect, D3DXVECTOR3(512 + 40, 324 - 62, 0), D3DXVECTOR2(1, 1), D3DXVECTOR2(-1,-1) )
			
			pNPCUnit:SetInt_LUA(2, iFastestSummonGroup)
		end
	end
	
end

function WakeUpHead( pNPCUnit )			
	
	local iDraknessA1Sleep 	= pNPCUnit:GetInt_LUA(4)
	local iDraknessA2Sleep 	= pNPCUnit:GetInt_LUA(5)
	local iDraknessA3Sleep 	= pNPCUnit:GetInt_LUA(6)
	 
	if iDraknessA3Sleep == 1 then									--머리 3 깨워야 한다.
	 
		pNPCUnit:SetFlag_LUA(1, true)								--State End에서 State Change 구문이 발생되지 않도록 처리(STATE_WAIT 전용)
		pNPCUnit:StateChange_LUA("DEFENCE_DARKNESS_BOSS_WAKE_UP_A3", true)
		return true
	 
	elseif iDraknessA2Sleep == 1 then								--머리 2 깨워야 한다.
	
		pNPCUnit:SetFlag_LUA(1, true)								--State End에서 State Change 구문이 발생되지 않도록 처리(STATE_WAIT 전용)
		pNPCUnit:StateChange_LUA("DEFENCE_DARKNESS_BOSS_WAKE_UP_A2", true)
		return true
		
	elseif iDraknessA1Sleep == 1 then								--머리 1 깨워야 한다.
	
		pNPCUnit:SetFlag_LUA(1, true)								--State End에서 State Change 구문이 발생되지 않도록 처리(STATE_WAIT 전용)
		pNPCUnit:StateChange_LUA("DEFENCE_DARKNESS_BOSS_WAKE_UP_A1", true)
		return true
	
	end
	
	return false

end

function SleepHead( pNPCUnit )
	
	local bSleepDarknrss = pNPCUnit:GetFlag_LUA(0)					--수정 공격 여부	true = 취침 상태, false = 기상 상태
	
	if bSleepDarknrss == true then									--수정 공격
	
		local iDraknessA1Sleep 	= pNPCUnit:GetInt_LUA(4)
		local iDraknessA2Sleep 	= pNPCUnit:GetInt_LUA(5)
		local iDraknessA3Sleep 	= pNPCUnit:GetInt_LUA(6)
	
		if iDraknessA3Sleep == 2 then								--모든 머리 잠드는 애니메이션
		
			pNPCUnit:StateChange_LUA("DEFENCE_DARKNESS_BOSS_SLEEP3", true)
			
		elseif iDraknessA2Sleep == 2 then							--첫번째, 두번째 머리만 잠드는 애니메이션		
		
			pNPCUnit:StateChange_LUA("DEFENCE_DARKNESS_BOSS_SLEEP2", true)
		
		elseif iDraknessA1Sleep == 2 then							--첫번째 머리만 잠드는 애니메이션
		
			pNPCUnit:StateChange_LUA("DEFENCE_DARKNESS_BOSS_SLEEP1", true)
			
		end
		
		pNPCUnit:SetInt_LUA(4, 0)									--모든 머리 취침
		pNPCUnit:SetInt_LUA(5, 0)
		pNPCUnit:SetInt_LUA(6, 0)
		pNPCUnit:SetFlag_LUA(0, false)								--엘의 수정 대기중
		pNPCUnit:SetTimerRestart( 1 )								--취침 타이머 초기화
		pNPCUnit:SetVector_LUA(9, D3DXVECTOR3(0, 0, 0 ))			--일어날 때 대기시간 초기화
		return true
		
	end
	
	return false

end

function SUMMON_BOX(LineIndex1, LineIndex2, fSummonInterval, pX2Game, pNPCUnit )
	
	if pNPCUnit:GetTimerElapsedTime( 0 ) < fSummonInterval then
		return
	end
	
	local vSummonPos1 = pX2Game:GetNPCStartPos( LineIndex1 )
	local vSummonPos2 = pX2Game:GetNPCStartPos( LineIndex2 )

	
	if pX2Game:GetNPCUnitByKeyCode(101) == nil then
		pX2Game:CreateNPCReqElite( NPC_UNIT_ID["NUI_CHEST"], pNPCUnit:GetHardLevel(), true, vSummonPos1, false, D3DXVECTOR3(0.1, 101, 0), false, false  )
	end
	
	if pX2Game:GetNPCUnitByKeyCode(102) == nil then
		pX2Game:CreateNPCReqElite( NPC_UNIT_ID["NUI_CHEST"], pNPCUnit:GetHardLevel(), true, vSummonPos2, false, D3DXVECTOR3(0.1, 102, 0), false, false  )
	end
	
	pNPCUnit:SetTimerRestart( 0 )
	
end

function CustomRandVal( pNPCUnit, RandomNum )						--매 호출시 다른 난수값 반환 함수

	local iRandNumIndex = pNPCUnit:GetInt_LUA(3)
	local iRandNum = pNPCUnit:GetRandVal(iRandNumIndex) % RandomNum
	
	if iRandNumIndex >=  100 then
	
		pNPCUnit:SetInt_LUA(3, 0)
		
	else
		
		pNPCUnit:SetInt_LUA(3, iRandNumIndex + 1)
	
	end
	
	return iRandNum

end

function SelectDieState( pNPCUnit )									--남아있는 머리에 따른 사망 State 설정

	local iDraknessA1Sleep 	= pNPCUnit:GetInt_LUA(4)
	local iDraknessA2Sleep 	= pNPCUnit:GetInt_LUA(5)
	local iDraknessA3Sleep 	= pNPCUnit:GetInt_LUA(6)
	
	if iDraknessA3Sleep == 2 then									--모든 머리 죽는  State
		
		pNPCUnit:StateChange_LUA("DEFENCE_DARKNESS_BOSS_DYING3", true)
		
	elseif iDraknessA2Sleep == 2 then								--첫번째, 두번째 머리만 죽는 State
	
		pNPCUnit:StateChange_LUA("DEFENCE_DARKNESS_BOSS_DYING2", true)
	
	elseif iDraknessA1Sleep == 2 then								--첫번째 머리만 죽는 State
	
		pNPCUnit:StateChange_LUA("DEFENCE_DARKNESS_BOSS_DYING1", true)
	
	else															--자고 있을 때 죽는 State
	
		pNPCUnit:StateChange_LUA("DEFENCE_DARKNESS_BOSS_DYING3", true)
		
	end

end