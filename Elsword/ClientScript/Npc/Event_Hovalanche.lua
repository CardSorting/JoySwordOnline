-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--[[ KjTiger / 2011/05/03 / 아발란쉬(하멜 던전_5 보스 몬스터)/
	 AttackA(근접 물리 + 마법 공격)
	 MagicAttackA(다중 마법 콤보 공격),
	 MagicAttackB(얼음 덩어리),
	 MagicAttackC(얼음 기둥)
	 MagicAttackD(프로즌 오브)
--]]
--------------------------------------------------------------------------
INIT_SYSTEM = 
{
	UNIT_WIDTH	= 300.0,
	UNIT_HEIGHT	= 575.0,	
	UNIT_LAYER	= X2_LAYER["XL_UNIT_0"],

	UNIT_SCALE  = 0.9,
}
--------------------------------------------------------------------------
INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
		"NUI_AVALANCHE_A.tga",
		"NUI_AVALANCHE_B.tga",
		"Water_Temple_Entry_Boss_badak01_P2.tga",
		"steam_BP.dds",
		"Ice_Crystal01.dds",
		"Ice_Crystal_Ring01.dds",
		"Arme_Critical2.dds",
		"FronzenMissile01.tga",
		"NUCLEAR_Effect_Light_Ping.tga",
		"Test_Light03.dds",
		"Condense_Light01.dds",
		"Ice_Crystal01.dds",
		"Hamel_Resiam_Stage_Boss_Crystal.tga",
		"ColorBallBlue2.dds",
		"Poison02.dds",
		"DarkCloud02.dds",
		"ColorBallGray.dds",
		"SM_MagicAttakcB.tga",
	},
	
	READY_SOUND = 
	{
	"Avalanche_Voice_AttackA01.ogg",
	"Avalanche_Voice_Dying01.ogg",
	"Avalanche_Voice_Hit01.ogg",
	"Avalanche_Voice_Hit02.ogg",
	"Avalanche_Voice_Hit03.ogg",
	"Avalanche_Voice_Hit04.ogg",
	"Avalanche_Voice_Hit05.ogg",
	"Avalanche_Voice_Hit06.ogg",
	"Avalanche_Voice_MagicAttackA01.ogg",
	"Avalanche_Voice_MagicAttackACombo01.ogg",
	"Avalanche_Voice_MagicAttackB01.ogg",
	"Avalanche_Voice_MagicAttackC01.ogg",
	"Avalanche_Voice_MagicAttackD01.ogg",
	"Avalanche_Voice_SigerModeA01.ogg",
	"Avalanche_Voice_SigerModeA02.ogg",
	"Avalanche_Voice_WaitStart01.ogg",
	"Swing_Big01.ogg",
	"Swing_Big02.ogg",
	"Swing_Big03.ogg",
	"Swing_Big04.ogg",
	"Swing_Big05.ogg",
	"Avalanche_AttackA01.ogg",
	"Avalanche_AttackACombo01.ogg",
	"Avalanche_MagicAttackA01.ogg",
	"Avalanche_MagicAttackB01.ogg",
	},
	
	READY_XSKIN_MESH = 
	{
		"AV_AttackA_Ice_Mesh.X",
		"FrozenMissile01.X",
		"SI_SA_EAT_HEAVENS_FIST_Effect_Eye_Light01.X",
		"AV_MaB_Ice.X",
		"AV_MaB_Ice_Pa.X",
		"AV_MaD_IceMissile.X",
		"AV_MaD_Bomb_Dummy.X",
		"AV_Dying_End.X",
		"AV_SiegeMode_Wand.X",
		"AV_Siege_Loop_Wand.X",
	},
	
	READY_XMESH =
	{
		"Lire_Uplight01.Y",
		"Arme_ChargeMp2.Y",
	},
}
--------------------------------------------------------------------------
INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_AVALANCHE.x",
}
--------------------------------------------------------------------------
INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 700,
	RUN_SPEED			= 2000,
	JUMP_SPEED			= 2000,
	DASH_JUMP_SPEED		= 2600,
}
--------------------------------------------------------------------------
INIT_COMPONENT = 
{
	IMMUNITY_TIME_STOP = TRUE,
	
	MP_CHANGE_RATE			= 1,
	MP_CHARGE_RATE			= 130,
	
	SHADOW_SIZE				= 200,
	SHADOW_FILE_NAME		= "shadow.dds",
	
	SMALL_HP_BAR_BLUE		= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED		= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW		= "Small_HP_bar_Yellow.TGA",
	
	DRAW_SMALL_MP_BAR		= TRUE,
	--QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	--EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
	--MIND_FLAG_HEIGHT		= 230,
	
	HITTED_TYPE	= HITTED_TYPE["HTD_MEAT"],	
	
	FALL_DOWN	= FALSE,
	
    --SKY_DIE             = TRUE,		
    DIE_FLY					= 0,		

	RAGE_COUNT_MAX		= 60,
	RAGE_TIME_MAX		= 10,
	BOSS_NAME_TEX				= "HQ_BOSS_NAME_AVALANCHE.dds",
    BOSS_GAGE_FACE_TEX			= "DLG_BossState.tga",
    BOSS_GAGE_FACE_TEX_PIECE	= "NUI_AVALANCHE",
	
	WEAPON0 = 
	{
		WEAPON_FILE_NAME	= "HALLOWEEN_MONKEY_KING_Pumpkin.X",
		WEAPON_BONE_NAME	= "Bip01_Head",
			
		USE_SLASH_TRACE		= FALSE,
	},	
	
}
--------------------------------------------------------------------------
INIT_STATE = 
{
	-- 대기 및 이동
	{ STATE_NAME = "HOVALANCHE_START",		LUA_STATE_START_FUNC = "HOVALANCHE_START_FUNC",
											LUA_FRAME_MOVE_FUNC = "HOVALANCHE_START_FRAME_MOVE",},
	{ STATE_NAME = "HOVALANCHE_INVINCIBLE_A",	},
	{ STATE_NAME = "HOVALANCHE_INVINCIBLE_B",	},
	{ STATE_NAME = "HOVALANCHE_ESCAPE",		},
	{ STATE_NAME = "HOVALANCHE_WIN",			},
	{ STATE_NAME = "HOVALANCHE_WAIT",		},
	{ STATE_NAME = "HOVALANCHE_WALK",		},
	{ STATE_NAME = "HOVALANCHE_COMMON_RAGE",	},
	
	{ STATE_NAME = "HOVALANCHE_VANISH_START", LUA_STATE_START_FUNC = "HOVALANCHE_VANISH_START_FUNC", STATE_COOL_TIME = 5,},
	{ STATE_NAME = "HOVALANCHE_VANISH_END",		},
	
	{ STATE_NAME = "HOVALANCHE_VANISH_BACK_START",	},
	{ STATE_NAME = "HOVALANCHE_VANISH_BACK_END",	 LUA_STATE_END_FUNC = "HOVALANCHE_VANISH_BACK_END_END_FUNC",},
		
	-- 공격
	{ STATE_NAME = "HOVALANCHE_ATTACK_A",						STATE_COOL_TIME = 6,	},
	{ STATE_NAME = "HOVALANCHE_ATTACK_A2",						STATE_COOL_TIME = 6,	},
	{ STATE_NAME = "HOVALANCHE_MAGIC_ATTACK_A",			LUA_FRAME_MOVE_FUNC = "HOVALANCHE_MAGIC_ATTACK_A_FRAME_MOVE",	STATE_COOL_TIME = 10,	},
	{ STATE_NAME = "HOVALANCHE_MAGIC_ATTACK_A_COMBO",	LUA_FRAME_MOVE_FUNC	= "HOVALANCHE_MAGIC_ATTACK_A_COMBO_FRAME_MOVE",	},
	{ STATE_NAME = "HOVALANCHE_MAGIC_ATTACK_B",			STATE_COOL_TIME = 4,	},
	{ STATE_NAME = "HOVALANCHE_MAGIC_ATTACK_C",			LUA_FRAME_MOVE_FUNC = "HOVALANCHE_MAGIC_ATTACK_C_FRAME_MOVE",	},
	{ STATE_NAME = "HOVALANCHE_MAGIC_ATTACK_D",			LUA_FRAME_MOVE_FUNC = "HOVALANCHE_MAGIC_ATTACK_D_FRAME_MOVE",	},
	
	{ STATE_NAME = "HOVALANCHE_SIEGE_MODE_A_START",	},
	{ STATE_NAME = "HOVALANCHE_SIEGE_MODE_A_LOOP",	LUA_STATE_START_FUNC = "HOVALANCHE_SIEGE_MODE_A_LOOP_START_FUNC",
													LUA_FRAME_MOVE_FUNC = "HOVALANCHE_SIEGE_MODE_A_LOOP_FRAME_MOVE",	},
	{ STATE_NAME = "HOVALANCHE_SIEGE_MODE_A_END", },
	
	-- 데미지
	{ STATE_NAME = "HOVALANCHE_DAMAGE_FRONT",	}, 		
	{ STATE_NAME = "HOVALANCHE_DAMAGE_BACK",		}, 		
	
	--{ STATE_NAME = "HOVALANCHE_DAMAGE_DOWN_FRONT",	},
	--{ STATE_NAME = "HOVALANCHE_DAMAGE_DOWN_BACK",	},
	{ STATE_NAME = "HOVALANCHE_DYING",	LUA_STATE_START_FUNC = "HOVALANCHE_DYING_START_FUNC",
										LUA_FRAME_MOVE_FUNC = "HOVALANCHE_DYING_FRAME_MOVE",	 STATE_COOL_TIME = 10,},
			
	START_STATE					= "HOVALANCHE_START",
	WAIT_STATE					= "HOVALANCHE_WAIT",
	RAGE_STATE					= "HOVALANCHE_COMMON_RAGE",
	
	SMALL_DAMAGE_LAND_FRONT		= "HOVALANCHE_DAMAGE_FRONT",
	SMALL_DAMAGE_LAND_BACK		= "HOVALANCHE_DAMAGE_BACK",
	SMALL_DAMAGE_AIR			= "HOVALANCHE_DAMAGE_FRONT",
	
	BIG_DAMAGE_LAND_FRONT		= "HOVALANCHE_DAMAGE_FRONT",
	BIG_DAMAGE_LAND_BACK		= "HOVALANCHE_DAMAGE_BACK",
	BIG_DAMAGE_AIR				= "HOVALANCHE_DAMAGE_FRONT",
	
	DOWN_DAMAGE_LAND_FRONT		= "HOVALANCHE_DAMAGE_FRONT",
	DOWN_DAMAGE_LAND_BACK		= "HOVALANCHE_DAMAGE_FRONT",
	DOWN_DAMAGE_AIR				= "HOVALANCHE_DAMAGE_FRONT",
	
	UP_DAMAGE					= "HOVALANCHE_DAMAGE_FRONT",
	
	FLY_DAMAGE_FRONT			= "HOVALANCHE_DAMAGE_FRONT",
	FLY_DAMAGE_BACK				= "HOVALANCHE_DAMAGE_BACK",
	
	REVENGE_ATTACK				= "",	
	--DAMAGE_REVENGE				= "HOVALANCHE_DAMAGE_REVENGE",
	
	DYING_LAND_FRONT			= "HOVALANCHE_ESCAPE",
	DYING_LAND_BACK				= "HOVALANCHE_ESCAPE",
	DYING_SKY					= "HOVALANCHE_ESCAPE",
	
	--DOWN_DAMAGE_AIR_LANDING		= "HOVALANCHE_DAMAGE_AIR_DOWN_LANDING",
	COMMON_FRAME_FUNC           = "HOVALANCHE_COMMON_FRAME_FUNC",
}
--------------------------------------------------------------------------
INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 1,		
		TARGET_NEAR_RANGE			= 9000,		
		TARGET_RANGE				= 9000,		
		TARGET_LOST_RANGE			= 10000,		
		TARGET_SUCCESS_RATE			= 100,		
		ATTACK_TARGET_RATE			= 50,		
		PRESERVE_LAST_TARGET_RATE	= 40,		
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 700,
		DEST_GAP			= 800,
		MOVE_GAP			= 900,
		
		DIR_CHANGE_INTERVAL = 0.7,
		
		WALK_INTERVAL		= 3,
		NEAR_WALK_RATE		= 100,
		FAR_WALK_RATE		= 100,
		
		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 100,
		UP_DOWN_RATE		= 20,  
		DOWN_JUMP_RATE		= 100,
		DOWN_DOWN_RATE		= 40,
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 100,
		PATROL_RANGE			= 200,
		PATROL_COOL_TIME		= 2,
		ONLY_THIS_LINE_GROUP	= TRUE,
	},
}
--------------------------------------------------------------------------
HOVALANCHE_START = 
{
	ANIM_NAME					= "WaitStart",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	INVINCIBLE					= { 0, 100, },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,

	FOCUS_CAMERA_AT_CURRENT_STATE	= TRUE,
	STOP_AT_CURRENT_STATE			= TRUE,

	VIEW_TARGET				= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	SOUND_PLAY0					= { 0.01, "Avalanche_Voice_WaitStart01.ogg" },
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"HOVALANCHE_INVINCIBLE_A",	},
	},
	
	ALARM =
	{
		ALARM_MESSAGE 			 = STR_ID_28283,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = FALSE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_YELLOW"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 6, 				  			    -- 표시 지속 시간
	},
	
	EFFECT_SET_LIST =
	{
		"Effect_Avalanche_WaitStart", 0.0,
	},
}
--------------------------------------------------------------------------
HOVALANCHE_INVINCIBLE_A = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

	INVINCIBLE					= { 0, 100, },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	IMMADIATE_PACKET_SEND		= TRUE,
	RIGHT		= FALSE,

	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"HOVALANCHE_INVINCIBLE_B",	"CF_HOVALANCHE_INVINCIBLE_B",	},
	},
	
}
--------------------------------------------------------------------------
function CF_HOVALANCHE_INVINCIBLE_B( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:GetInt_LUA( 0 ) == 1 then
		return true
	end
	
	return false

end
--------------------------------------------------------------------------
HOVALANCHE_INVINCIBLE_B = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

	INVINCIBLE					= { 0, 100, },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	IMMADIATE_PACKET_SEND		= TRUE,
	RIGHT		= FALSE,

	ALARM =
	{
		ALARM_MESSAGE 			 = STR_ID_28284,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = FALSE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_YELLOW"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 6, 				  			    -- 표시 지속 시간
	},

	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"HOVALANCHE_ESCAPE",	"CF_HOVALANCHE_ESCAPE",	},
	},
	
}
--------------------------------------------------------------------------
function CF_HOVALANCHE_ESCAPE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:GetInt_LUA( 0 ) == 2 then
        nUnitListSize = pX2Game:GetNPCUnitListSize()
		for i = 0, nUnitListSize do
			pUnit = pX2Game:GetNPCUnit( i )
			if pUnit ~= nil and pUnit ~= pNPCUnit then
				pUnit:SetInt_LUA( 0, 2 )
			end
		end	
		return true
	end
	
	return false

end
--------------------------------------------------------------------------
HOVALANCHE_ESCAPE = 
{
	ANIM_NAME					= "Vanish_Start",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	INVINCIBLE					= { 0, 100, },
	VIEW_TARGET					= TRUE,

	DYING_END					= TRUE,
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	IMMADIATE_PACKET_SEND		= TRUE,

	EFFECT_SET_LIST =
	{
		"Effect_Avalanche_Vanish_Start", 0,	
	},

	TALK_BOX = 
	{
		{ RATE = 100, MESSAGE = STR_ID_27387 },
	},

}
--------------------------------------------------------------------------
HOVALANCHE_WIN = 
{
	ANIM_NAME	= "Win",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= TRUE,
	
	INVINCIBLE	= { 0, 100, },
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,	
	
	NEVER_MOVE	= TRUE,
	RIGHT		= TRUE,

	IMMADIATE_PACKET_SEND	= TRUE,
	
	CAMEAR_CRASH	= { 3.5, 20, 0.8, false },
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"HOVALANCHE_WAIT",	},		
	},
}
--------------------------------------------------------------------------
HOVALANCHE_WAIT = 
{
	ANIM_NAME	= "Wait",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= TRUE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,	
	
	SPEED_X	= 0,
	SPEED_Y	= 0,
	
	ALLOW_DIR_CHANGE	= TRUE,
	VIEW_TARGET			= TRUE,
	
	IMMADIATE_PACKET_SEND	= TRUE,
	
	EVENT_INTERVAL_TIME0	= 1,
	EVENT_INTERVAL_TIME1	= 2,
	EVENT_INTERVAL_TIME2	= 10,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"HOVALANCHE_WIN",	"CF_HOVALANCHE_WIN",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"HOVALANCHE_ATTACK_A",	"CT_HOVALANCHE_ATTACK_A",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"HOVALANCHE_MAGIC_ATTACK_A",	"CT_HOVALANCHE_MAGIC_ATTACK_A",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"HOVALANCHE_MAGIC_ATTACK_B",	"CT_HOVALANCHE_MAGIC_ATTACK_B",	},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],	"HOVALANCHE_WALK",	},
	},
	
	CT_HOVALANCHE_ATTACK_A =
	{	-- 근접 공격
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,	
		RATE						= 70,		
	},
	CT_HOVALANCHE_MAGIC_ATTACK_A =
	{	-- 칠링 스파인 후 블리자드 샤워
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1200,	
		RATE						= 60,		
	},
	CT_HOVALANCHE_MAGIC_ATTACK_B =
	{	-- 얼음 창
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1200,	
		RATE						= 60,		
	},
}

function CF_HOVALANCHE_WIN( pKTDXApp, pX2Game, pNPCUnit )
	if pX2Game:LiveUserUnitNum() == 0 then
		return true
	else
		return false
	end
end
--------------------------------------------------------------------------
HOVALANCHE_WALK = 
{
	ANIM_NAME	= "Walk",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= TRUE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,
	
	PASSIVE_SPEED_X	= INIT_PHYSIC["WALK_SPEED"],
	
	ALLOW_DIR_CHANGE		= TRUE,
	IMMADIATE_PACKET_SEND	= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"HOVALANCHE_WIN",			"CF_HOVALANCHE_WIN",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"HOVALANCHE_ATTACK_A",		"CT_HOVALANCHE_ATTACK_A",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"HOVALANCHE_MAGIC_ATTACK_A",	"CT_HOVALANCHE_MAGIC_ATTACK_A",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"HOVALANCHE_MAGIC_ATTACK_B",	"CT_HOVALANCHE_MAGIC_ATTACK_B",	},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],				"HOVALANCHE_WALK",	},
	},
	
	CT_HOVALANCHE_ATTACK_A =
	{	-- 근접 공격
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 900,	
		RATE						= 70,		
	},
	CT_HOVALANCHE_MAGIC_ATTACK_A =
	{	-- 칠링 스파인 후 블리자드 샤워
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1200,	
		RATE						= 50,		
	},
	CT_HOVALANCHE_MAGIC_ATTACK_B =
	{	-- 얼음 창
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1100,	
		RATE						= 70,		
	},
}
--------------------------------------------------------------------------
HOVALANCHE_DAMAGE_FRONT = 
{
	ANIM_NAME		= "DamageFront",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,
	
	SPEED_Y	= 0,
	
	EVENT_INTERVAL_TIME0		= 4,

	PASSIVE_SPEED_Y				= 0,
	
	SOUND_PLAY0				= { 0.01, "Avalanche_Voice_Hit01.ogg" },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"HOVALANCHE_WAIT",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"HOVALANCHE_ATTACK_A2",		"CT_HOVALANCHE_ATTACK_A2",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"HOVALANCHE_MAGIC_ATTACK_A",	"CT_HOVALANCHE_MAGIC_ATTACK_A",	},	
		
	},
	CT_HOVALANCHE_ATTACK_A2 =
	{	-- 근접 공격
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		RATE						= 6,		
	},
	
	CT_HOVALANCHE_MAGIC_ATTACK_A =
	{	-- 칠링 스파인 후 블리자드 샤워
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1500,	
		RATE						= 8,		
	},
}
--------------------------------------------------------------------------
HOVALANCHE_DAMAGE_BACK = 
{
	ANIM_NAME		= "DamageBack",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,
	
	SPEED_Y	= 0,
	
	EVENT_INTERVAL_TIME0		= 4,
	
	SOUND_PLAY0				= { 0.01, "Avalanche_Voice_Hit02.ogg" },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"HOVALANCHE_WAIT",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"HOVALANCHE_ATTACK_A",		"CT_HOVALANCHE_ATTACK_A",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"HOVALANCHE_MAGIC_ATTACK_A",	"CT_HOVALANCHE_MAGIC_ATTACK_A",	},	
		
	},
	-- CT_HOVALANCHE_ATTACK_A2 =
	CT_HOVALANCHE_ATTACK_A =
	{	-- 근접 공격
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 700,	
		RATE						= 6,		
	},
	
	CT_HOVALANCHE_MAGIC_ATTACK_A =
	{	-- 칠링 스파인 후 블리자드 샤워
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1500,	
		RATE						= 8,		
	},
}
--------------------------------------------------------------------------
HOVALANCHE_DYING = 
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
	
	SOUND_PLAY0					= { 0.01, "Avalanche_Voice_Dying01.ogg" },
	
	EFFECT_SET_LIST =
	{
		"Effect_Avalanche_Dying", 0,
	},
}

function HOVALANCHE_DYING_START_FUNC( pKTDXApp, pX2Game, pNPCUnit )
	local pos = pNPCUnit:GetPos()
	
	local pMajorXMeshPlayer = pX2Game:GetMajorXMeshPlayer()
	if pMajorXMeshPlayer ~= nil then
		local vPos = pNPCUnit:GetPos()
		local rotDegree = pNPCUnit:GetRotateDegree()
	
		pMajorXMeshPlayer:CreateInstance_LUA( "Mesh_HOVALANCHE_Dying_Wand", vPos, rotDegree, rotDegree, 14 )
	end
	
	pos.y = pos.y + 100.0
	local GetMinorParticle = pX2Game:GetMinorParticle()
	
	local pSeq = GetMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DieLight", pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	if pSeq ~= nil then
		pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		pNPCUnit:SetDieSeq( pSeq:GetHandle() )
	end
	
	pNPCUnit:PlaySound_LUA( "DieLight.ogg" )
end

function HOVALANCHE_DYING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 2.95 ) then
		local pos = pNPCUnit:GetPos()
	
		local pMajorXMeshPlayer = pX2Game:GetMajorXMeshPlayer()
			if pMajorXMeshPlayer ~= nil then
			local vPos = pNPCUnit:GetPos()
			vPos.x = vPos.x - 25
			vPos.y = vPos.y + 30
			local rotDegree = pNPCUnit:GetRotateDegree()
		
			pMajorXMeshPlayer:CreateInstance_LUA( "Mesh_HOVALANCHE_Dying", vPos, rotDegree, rotDegree, 14 )
		end
	end
end
--------------------------------------------------------------------------
HOVALANCHE_ATTACK_A =
{
	ANIM_NAME		= "AttackA",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	
	--SUPER_ARMOR	= TRUE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,
	VIEW_TARGET				= TRUE,
	
	SOUND_PLAY0					= { 0.01, "Avalanche_Voice_AttackA01.ogg", 50 },
	SOUND_PLAY1					= { 1.35, "Swing_Big01.ogg", },
	SOUND_PLAY2					= { 2.00, "Swing_Big02.ogg", },
	SOUND_PLAY3					= { 2.20, "Avalanche_AttackA01.ogg", },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"HOVALANCHE_WAIT",	},
	},
	
	EFFECT_SET_LIST =
	{
		"Effect_Avalanche_AttackA", 1.435,
		"Effect_Avalanche_AttackA_Ice", 1.9,
	},
}

HOVALANCHE_ATTACK_A2 =
{
	ANIM_NAME		= "AttackA",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	VIEW_TARGET		= TRUE,
	
	SUPER_ARMOR	= TRUE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	SOUND_PLAY0					= { 0.01, "Avalanche_Voice_AttackA01.ogg", 50 },
	SOUND_PLAY1					= { 1.35, "Swing_Big01.ogg", },
	SOUND_PLAY2					= { 2.00, "Swing_Big02.ogg", },
	SOUND_PLAY3					= { 2.20, "Avalanche_AttackA01.ogg", },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"HOVALANCHE_WAIT",	},
	},
	
	EFFECT_SET_LIST =
	{
		"Effect_Avalanche_AttackA", 1.435,
		"Effect_Avalanche_AttackA_Ice", 1.9,
	},
}
--------------------------------------------------------------------------
HOVALANCHE_MAGIC_ATTACK_A =
{
	ANIM_NAME	= "MagicAttackA",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,
	
	SUPER_ARMOR	= TRUE,

	SPEED_X	= 0,
	SPEED_Y	= 0,	

    VIEW_TARGET				= TRUE,
	ALLOW_DIR_CHANGE		= FALSE,	
	IMMADIATE_PACKET_SEND	= TRUE,
	
	SOUND_PLAY0				= { 0.01, "Avalanche_Voice_MagicAttackA01.ogg" },
	SOUND_PLAY1				= { 1.50, "Avalanche_MagicAttackA01.ogg" },
	
	EFFECT_SET_LIST =
	{
		"Effect_Avalanche_Magic_AttackA", 0,	
	},	
	
	DELETE_EFFECT_SET_ON_DAMAGE_REACT 	= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"HOVALANCHE_MAGIC_ATTACK_A_COMBO",	"CT_HOVALANCHE_MAGIC_ATTACK_A_COMBO",	},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],			"HOVALANCHE_WAIT",	},
	},
	
	CT_HOVALANCHE_MAGIC_ATTACK_A_COMBO =
	{
		ANIM_PLAY_COUNT		= 1,
		RATE				= 100,
	},
}

function HOVALANCHE_MAGIC_ATTACK_A_FRAME_MOVE( pKTDApp, pX2Game, pNPCUnit )
	if pX2Game:IsHost() == false then
		return
	end
	
	local userNumber = pX2Game:GetUserUnitNum_LUA()
		
	-- Kill NPC
	if pNPCUnit:AnimEventTimer_LUA( 1.668 ) then
		if 1 == userNumber then
			pX2Game:KillNPC( NPC_UNIT_ID["NUI_CHILLING_SPINE_TRAP"], 3 )
		elseif 2 == userNumber then
			pX2Game:KillNPC( NPC_UNIT_ID["NUI_CHILLING_SPINE_TRAP"], 4 )
		elseif 3 >= userNumber then
			pX2Game:KillNPC( NPC_UNIT_ID["NUI_CHILLING_SPINE_TRAP"], 5 )
		end
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 1.768 ) then
		--{{ Create NPC to User Position
		if 1 == userNumber then
			local pUser = pX2Game:GetUserUnit( 0 )
			if pUser ~= nil then
				local vPos = pUser:GetLandPosition_LUA()
				pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_CHILLING_SPINE_TRAP"], pNPCUnit:GetHardLevel(), false, vPos, true, 0.01, true  )
			end
		elseif 2 == userNumber then
			for i = 0, 1 do
				local pUser = pX2Game:GetUserUnit( i )
				if pUser ~= nil then
					local vPos = pUser:GetLandPosition_LUA()
					pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_CHILLING_SPINE_TRAP"], pNPCUnit:GetHardLevel(), false, vPos, true, 0.01, true  )
				end
			end
		elseif 3 >= userNumber then
			for i = 0, 2 do
				local pUser = pX2Game:GetUserUnit( i )
				if pUser ~= nil then
					local vPos = pUser:GetLandPosition_LUA()
					pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_CHILLING_SPINE_TRAP"], pNPCUnit:GetHardLevel(), false, vPos, true, 0.01, true  )
				end
			end
		end
		--}}
		
		--{{ Create NPC to Random Position
		if 3 >= userNumber then
			local ArrPos = { 17, 16, 13, 1, 5, 7, }
			for i = 0, 1 do
				local randNum = pNPCUnit:GetRandVal(i) % 6 + 1
				local vPos = pX2Game:GetLineMap():GetStartPosition( ArrPos[randNum] )
								
				pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_CHILLING_SPINE_TRAP"], pNPCUnit:GetHardLevel(), false, vPos, true, 0.01, true  )
			end
		elseif 4 == userNumber then
			local ArrPos = { 17, 16, 13, 1, 5, 7, }
			local randNum = pNPCUnit:GetRandVal() % 6 + 1
			local vPos = pX2Game:GetLineMap():GetStartPosition( ArrPos[randNum] )
			pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_CHILLING_SPINE_TRAP"], pNPCUnit:GetHardLevel(), false, vPos, true, 0.01, true  )
		end
		--}}
	end
end
--------------------------------------------------------------------------
HOVALANCHE_MAGIC_ATTACK_A_COMBO =
{
	ANIM_NAME	= "MagicAttackACombo",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	SPEED_X	= 0,
	SPEED_Y	= 0,	

    VIEW_TARGET				= TRUE,
	ALLOW_DIR_CHANGE		= FALSE,
	
	
	SUPER_ARMOR				= TRUE,
	IMMADIATE_PACKET_SEND	= TRUE,
	
	SOUND_PLAY0				= { 0.01, "Avalanche_Voice_MagicAttackACombo01.ogg" },
	SOUND_PLAY1				= { 1.25, "Avalanche_AttackACombo01.ogg",100,FALSE, -1, FALSE },
	
	EFFECT_SET_LIST =
	{
		"Effect_Avalanche_Magic_AttackA_Combo", 0,	
	},	
	
	DELETE_EFFECT_SET_ON_DAMAGE_REACT 	= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"HOVALANCHE_WAIT",	},	
	},
}

function HOVALANCHE_MAGIC_ATTACK_A_COMBO_FRAME_MOVE( pKTDApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 1.2 ) then
		CallBlizzard( pX2Game, pNPCUnit, 1200 )
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 1.3 ) then
		CallBlizzard( pX2Game, pNPCUnit, -1200 )
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 1.4 ) then
		CallBlizzard( pX2Game, pNPCUnit, 1600 )
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 1.5 ) then
		CallBlizzard( pX2Game, pNPCUnit, -1600 )
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 1.6 ) then
		CallBlizzard( pX2Game, pNPCUnit, 1800 )
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 1.7 ) then
		CallBlizzard( pX2Game, pNPCUnit, -1800 )
	end
end

function CallBlizzard( pX2Game, pNPCUnit, iRange )
	local pDamageEffect = pX2Game:GetDamageEffect()
	local landPos = pNPCUnit:GetLandPosition_LUA()
	local landPos1 = pNPCUnit:GetLandPosition_LUA()
	local vDirVector = pNPCUnit:GetDirVector()
			
	local landPos = MovePos( landPos, vDirVector, -iRange )
	local posR = pX2Game:GetLineMap():GetRandomPositionDir( landPos, iRange, true, true )
	posR.y = posR.y + 850.0
			
	local vRot = pNPCUnit:GetRotateDegree()
	if pNPCUnit:GetIsRight() then
		vRot.z = vRot.z - 50.0
	else
		vRot.z = vRot.z + 235.0
	end
	
	if pNPCUnit:GetIsRight() == false then
		vRot.y = vRot.y + 180.0
	end
							
	if pDamageEffect ~= nil then
		pDamageEffect:CreateInstance_LUA2( pNPCUnit, "HOVALANCHE_MAGIC_ATTACK_A_COMBO", posR, landPos1.y, vRot)
	end
end
--------------------------------------------------------------------------
HOVALANCHE_MAGIC_ATTACK_B =
{
	ANIM_NAME	= "MagicAttackB",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	SPEED_X	= 0,
	SPEED_Y	= 0,	

    VIEW_TARGET				= TRUE,
	ALLOW_DIR_CHANGE		= FALSE,
	
	SUPER_ARMOR	= TRUE,
	IMMADIATE_PACKET_SEND	= TRUE,
	
	SOUND_PLAY0				= { 0.01, "Avalanche_Voice_MagicAttackB01.ogg" },
	SOUND_PLAY1				= { 1.85, "Swing_Big05.ogg" },
	SOUND_PLAY2				= { 1.85, "Avalanche_MagicAttackB01.ogg" },
	
	EFFECT_SET_LIST =
	{
		"Effect_Avalanche_Magic_AttackB_Ready", 0,
		"Effect_Avalanche_Magic_AttackB_Spear", 0,
	},	
	
	DELETE_EFFECT_SET_ON_DAMAGE_REACT 	= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"HOVALANCHE_WAIT",	},	
	},
}
--------------------------------------------------------------------------
HOVALANCHE_MAGIC_ATTACK_C =
{
	ANIM_NAME	= "MagicAttackC",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	SPEED_X	= 0,
	SPEED_Y	= 0,	

    VIEW_TARGET				= TRUE,
	ALLOW_DIR_CHANGE		= FALSE,	
	IMMADIATE_PACKET_SEND	= TRUE,
	
	SOUND_PLAY0				= { 0.01, "Avalanche_Voice_MagicAttackC01.ogg" },
	
	EFFECT_SET_LIST =
	{
		"Effect_Avalanche_Magic_AttackC_Ready", 0,	
	},	
	
	ALARM =
	{
		DANGER  				 = TRUE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_15202,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = TRUE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_ORANGE"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 6, 				  			    -- 표시 지속 시간
	},
	
	DELETE_EFFECT_SET_ON_DAMAGE_REACT 	= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"HOVALANCHE_MAGIC_ATTACK_D",	"CT_HOVALANCHE_MAGIC_ATTACK_D",	},
	},
	
	CT_HOVALANCHE_MAGIC_ATTACK_D =
	{
		ANIM_PLAY_COUNT		= 1,
		RATE				= 100,
	},
}

function HOVALANCHE_MAGIC_ATTACK_C_FRAME_MOVE( pKTDApp, pX2Game, pNPCUnit )
	-- 얼음 기둥 소환_현재 레시암 보스 맵 기준
	local ArrPillarPosB1 = { 7, 8, 16 }
	local ArrPillarPosB2 = { 2, 3, 4, }
	local ArrPillarPosB3 = { 15, 14, 13, }
	local ArrPillarPosS1 = { 5, 10, 6, }
	local ArrPillarPosS2 = { 18, 17, 16, }
	local ArrPillarPosS3 = { 12, 11, 1, }
	
	if pNPCUnit:AnimEventTimer_LUA( 1.768 ) then
		pX2Game:KillNPC( NPC_UNIT_ID["NUI_HOVALANCHE_ICE_PILLAR_BIG"], 3 )
		pX2Game:KillNPC( NPC_UNIT_ID["NUI_HOVALANCHE_ICE_PILLAR_SMALL"], 3 )
			
		-- 라인 맵 위치 얻어 오기
		local randNum = pNPCUnit:GetRandVal() % 3 + 1
		local vPos = pX2Game:GetLineMap():GetStartPosition( ArrPillarPosB1[randNum] )
		pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_HOVALANCHE_ICE_PILLAR_BIG"], pNPCUnit:GetHardLevel(), false, vPos, true, 0.01, true  )
		
		vPos = pX2Game:GetLineMap():GetStartPosition( ArrPillarPosB2[randNum] )
		pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_HOVALANCHE_ICE_PILLAR_BIG"], pNPCUnit:GetHardLevel(), false, vPos, true, 0.02, true  )
		
		vPos = pX2Game:GetLineMap():GetStartPosition( ArrPillarPosB3[randNum] )
		pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_HOVALANCHE_ICE_PILLAR_BIG"], pNPCUnit:GetHardLevel(), false, vPos, true, 0.01, true  )
		
		vPos = pX2Game:GetLineMap():GetStartPosition( ArrPillarPosS1[randNum] )
		pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_HOVALANCHE_ICE_PILLAR_SMALL"], pNPCUnit:GetHardLevel(), false, vPos, true, 0.03, true  )
		
		vPos = pX2Game:GetLineMap():GetStartPosition( ArrPillarPosS2[randNum] )
		pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_HOVALANCHE_ICE_PILLAR_SMALL"], pNPCUnit:GetHardLevel(), false, vPos, true, 0.01, true  )
		
		vPos = pX2Game:GetLineMap():GetStartPosition( ArrPillarPosS3[randNum] )
		pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_HOVALANCHE_ICE_PILLAR_SMALL"], pNPCUnit:GetHardLevel(), false, vPos, true, 0.02, true  )
	end
end
--------------------------------------------------------------------------
HOVALANCHE_MAGIC_ATTACK_D =
{
	ANIM_NAME	= "MagicAttackD",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	INVINCIBLE	= { 0, 100, },
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	SPEED_X	= 0,
	SPEED_Y	= 0,	

    VIEW_TARGET				= TRUE,
	ALLOW_DIR_CHANGE		= FALSE,	
	IMMADIATE_PACKET_SEND	= TRUE,
	
	SOUND_PLAY0				= { 0.01, "Avalanche_Voice_MagicAttackD01.ogg" },
	
	EFFECT_SET_LIST =
	{
		"Effect_Avalanche_Magic_AttackD_Ready", 0,	
	},	
	
	DELETE_EFFECT_SET_ON_DAMAGE_REACT 	= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"HOVALANCHE_WAIT",	},
	},
}

function HOVALANCHE_MAGIC_ATTACK_D_FRAME_MOVE( pKTDApp, pX2Game, pNPCUnit )
	-- 얼음 폭탄 소환
	if pNPCUnit:AnimEventTimer_LUA( 2.0 ) then
		local ArrPos = { 17, 16, 13, 1, 5, 7, }
		local vOffset = pNPCUnit:GetLandPosition_LUA().x
		local randNum = pNPCUnit:GetRandVal(vOffset) % 6 + 1
		local vPos = pX2Game:GetLineMap():GetStartPosition( ArrPos[randNum] )
		local vRot = pNPCUnit:GetRotateDegree()
		
		local pEffectSet = pX2Game:GetEffectSet()
		pEffectSet:PlayEffectSetWithCustomPos_LUA( "Effect_Avalanche_Magic_AttackD_Ice_Bomb", pNPCUnit, vPos, vRot )
		
		vOffset = pNPCUnit:GetLandPosition_LUA().x * 3
		randNum = pNPCUnit:GetRandVal(vOffset) % 6 + 1
		vPos = pX2Game:GetLineMap():GetStartPosition( ArrPos[randNum] )
		pEffectSet:PlayEffectSetWithCustomPos_LUA( "Effect_Avalanche_Magic_AttackD_Ice_Bomb", pNPCUnit, vPos, vRot )
	end
end
--------------------------------------------------------------------------
HOVALANCHE_VANISH_START = 
{
	ANIM_NAME	= "Vanish_Start",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	INVINCIBLE	= { 0, 100, },
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,

	SPEED_X	= 0,
	SPEED_Y	= 0,	

    IMMADIATE_PACKET_SEND	= TRUE,
	
	EFFECT_SET_LIST =
	{
		"Effect_Avalanche_Vanish_Start", 0,	
	},
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"HOVALANCHE_VANISH_END",	"CF_HOVALANCHE_VANISH_END",	},
	},
}

function CF_HOVALANCHE_VANISH_END( pKTDApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 1.2 ) then
		local vPos = pX2Game:GetLineMap():GetStartPosition( 21 )
		pNPCUnit:SetPosition( vPos )
		
		return true
	end
end

function HOVALANCHE_VANISH_START_FUNC( pKTDApp, pX2Game, pNPCUnit )
end
--------------------------------------------------------------------------
HOVALANCHE_VANISH_END = 
{
	ANIM_NAME	= "Vanish_End",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	INVINCIBLE	= { 0, 100, },
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,

	SPEED_X	= 0,
	SPEED_Y	= 0,	

    IMMADIATE_PACKET_SEND	= TRUE,
	RIGHT = TRUE,
		
	EFFECT_SET_LIST =
	{
		"Effect_Avalanche_Vanish_End", 0,	
	},
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"HOVALANCHE_SIEGE_MODE_A_START",	"CT_HOVALANCHE_SIEGE_MODE_A_START",	},
	},
	
	CT_HOVALANCHE_SIEGE_MODE_A_START = 
	{
		ANIM_PLAY_COUNT		= 1,
	},
}
--------------------------------------------------------------------------
HOVALANCHE_SIEGE_MODE_A_START = 
{
	ANIM_NAME	= "SigeModeA",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	INVINCIBLE	= { 0, 100, },
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,
	
	RIGHT = TRUE,
	
	SPEED_X	= 0,
	SPEED_Y	= 0,	

    IMMADIATE_PACKET_SEND	= TRUE,
	
	SOUND_PLAY0				= { 0.01, "Avalanche_Voice_SigerModeA02.ogg" },
	--SOUND_PLAY1				= { 0.01, "Avalanche_Voice_SigerModeA01.ogg" },
	EFFECT_SET_LIST =
	{
		"Effect_Avalanche_Siege_ModeA_Start", 0,	
	},
	
	ALARM =
	{
		DANGER  				 = TRUE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_15201,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = TRUE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_ORANGE"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 6, 				  			    -- 표시 지속 시간
	},
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"HOVALANCHE_SIEGE_MODE_A_LOOP",	"CT_HOVALANCHE_SIEGE_MODE_A_LOOP",	},
	},
	
	CT_HOVALANCHE_SIEGE_MODE_A_LOOP = 
	{
		ANIM_PLAY_COUNT		= 1,
	},
}
--------------------------------------------------------------------------
HOVALANCHE_SIEGE_MODE_A_LOOP = 
{
	ANIM_NAME	= "SigeModeA_Loop",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= FALSE,
	INVINCIBLE	= { 0, 100, },
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,
	
	RIGHT = TRUE,
	
	SPEED_X	= 0,
	SPEED_Y	= 0,
	
	IMMADIATE_PACKET_SEND	= TRUE,
			
	EFFECT_SET_LIST =
	{
		"Effect_Avalanche_Siege_ModeA_Loop", 0,	
	},
		
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"HOVALANCHE_SIEGE_MODE_A_END",	"CT_HOVALANCHE_SIEGE_MODE_A_END",	},
	},
	
	CT_HOVALANCHE_SIEGE_MODE_A_END =
	{
		STATE_TIME_OVER	= 20,
	},
}

function HOVALANCHE_SIEGE_MODE_A_LOOP_START_FUNC( pKTDApp, pX2Game, pNPCUnit )
	if nil ~= pNPCUnit then
		local vPos = D3DXVECTOR3( -1084, 7113, -4280 )
		pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_HOVALANCHE_STATUE"], pNPCUnit:GetHardLevel(), false, vPos, true, 0.01, true  )
		
		vPos = D3DXVECTOR3( 1074, 7131, -4280 )
		pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_HOVALANCHE_STATUE"], pNPCUnit:GetHardLevel(), false, vPos, true, 0.01, true  )
	end
end

function HOVALANCHE_SIEGE_MODE_A_LOOP_FRAME_MOVE( pKTDApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.1 ) then
		local iKeyCode = pNPCUnit:GetKeyCode()
		if iKeyCode == 1 then
			if nil ~= pNPCUnit then
				local vPos = D3DXVECTOR3( -1484, 6913, -4280 )
				pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_HOVALANCHE_STATUE"], pNPCUnit:GetHardLevel(), false, vPos, true, 0.01, true  )
		
				vPos = D3DXVECTOR3( 1474, 6931, -4280 )
				pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_HOVALANCHE_STATUE"], pNPCUnit:GetHardLevel(), false, vPos, true, 0.01, true  )
			end
		end

		local pMajorXMeshPlayer = pX2Game:GetMajorXMeshPlayer()
		if pMajorXMeshPlayer ~= nil then
			local vPos = pX2Game:GetLineMap():GetStartPosition( 6 )
			vPos.y = vPos.y + 1800
			local rotDegree = pNPCUnit:GetRotateDegree()
		
			pMajorXMeshPlayer:CreateInstance_LUA( "Mesh_HOVALANCHE_MaD_Statue_Ice_Sphere", vPos, rotDegree, rotDegree, 14 )
		end
		
		local camera = pX2Game:GetX2Camera()
		camera:PartsLookTrackingCameraByNpc_LUA( pNPCUnit, D3DXVECTOR3(40, 6759, 1698), D3DXVECTOR3(10000, 350, 0), D3DXVECTOR3( 0, 0, 1 ), 20 )
	end
end
--------------------------------------------------------------------------
HOVALANCHE_SIEGE_MODE_A_END = 
{
	ANIM_NAME	= "SigeModeA_End",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	INVINCIBLE	= { 0, 100, },
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,
	
	SPEED_X	= 0,
	SPEED_Y	= 0,
	
	IMMADIATE_PACKET_SEND	= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"HOVALANCHE_VANISH_BACK_START",	},
	},
}
--------------------------------------------------------------------------
HOVALANCHE_VANISH_BACK_START = 
{
	ANIM_NAME	= "Vanish_Start",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	INVINCIBLE	= { 0, 100, },
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,

	SPEED_X	= 0,
	SPEED_Y	= 0,	

    IMMADIATE_PACKET_SEND	= TRUE,
	
	EFFECT_SET_LIST =
	{
		"Effect_Avalanche_Vanish_Start", 0,	
	},
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"HOVALANCHE_VANISH_BACK_END",	"CF_HOVALANCHE_VANISH_BACK_END",	},
	},
}

function CF_HOVALANCHE_VANISH_BACK_END( pKTDApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 1.2 ) then
		local vPos = pX2Game:GetLineMap():GetStartPosition( 1 )
		pNPCUnit:SetPosition( vPos )
		
		return true
	end
end
--------------------------------------------------------------------------
HOVALANCHE_VANISH_BACK_END = 
{
	ANIM_NAME	= "Vanish_End",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	INVINCIBLE	= { 0, 100, },
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,

	SPEED_X	= 0,
	SPEED_Y	= 0,	

    IMMADIATE_PACKET_SEND	= TRUE,
	RIGHT = TRUE,
		
	EFFECT_SET_LIST =
	{
		"Effect_Avalanche_Vanish_End", 0,	
	},
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"HOVALANCHE_WAIT",	},
	},
}
function HOVALANCHE_VANISH_BACK_END_END_FUNC( pKTDApp, pX2Game, pNPCUnit )
end
--------------------------------------------------------------------------
HOVALANCHE_COMMON_RAGE =
{
	ANIM_NAME		= "Wait",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= FALSE,

	SPEED_X	= 0,
	SPEED_Y	= 0,
	
	IMMADIATE_PACKET_SEND	= TRUE,
	EVENT_INTERVAL_TIME0	= 0.5,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"HOVALANCHE_MAGIC_ATTACK_C",	"CT_HOVALANCHE_MAGIC_ATTACK_C",	},
	},
	
	CT_HOVALANCHE_MAGIC_ATTACK_C =
	{
		EVENT_INTERVAL_ID	= 0,
		RATE				= 100,
	},
}
--------------------------------------------------------------------------
function HOVALANCHE_START_FUNC( pKTDApp, pX2Game, pNPCUnit )
	pNPCUnit:SetShowGage( false )
end
--------------------------------------------------------------------------
function HOVALANCHE_START_FRAME_MOVE( pKTDApp, pX2Game, pNPCUnit )

end
--------------------------------------------------------------------------
function HOVALANCHE_COMMON_FRAME_FUNC( pKTDApp, pX2Game, pNPCUnit )
	if nil ~= pX2Game then
		if pX2Game:GetGameTime() > 230.0 then
			pNPCUnit:SetInt_LUA( 0, 2 )
		elseif pX2Game:GetGameTime() > 60.0 then
			pNPCUnit:SetInt_LUA( 0, 1 )
		end
	end
end
--------------------------------------------------------------------------
-- UTIL FUNCTION
--------------------------------------------------------------------------
function MovePos( pos, dirvector, dist )
	
	pos.x = pos.x + dist * dirvector.x
	pos.y = pos.y + dist * dirvector.y
	pos.z = pos.z + dist * dirvector.z
	
	return pos
	
end
