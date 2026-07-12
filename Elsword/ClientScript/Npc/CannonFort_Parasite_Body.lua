-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.





INIT_SYSTEM = 
{
	UNIT_WIDTH		= 500.0,
	UNIT_HEIGHT		= 0.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
}

                                                                                 
INIT_DEVICE = 
{
	READY_TEXTURE = 
	{		
	},
	
	READY_SOUND = 
	{
	   "CannonFort_Eye_Summon.ogg",
	   "CannonFort_Eye_WaitStart1.ogg",
	   "CannonFort_Eye_WaitStart2.ogg",
	   "CannonFort_Eye_WaitStart3.ogg",
	   "CannonFort_Eye_WaitStart4.ogg",
	   "CannonFort_Eye_WaitStart5.ogg",
       "CannonFort_Laser.ogg",

    },
	
		
	READY_XMESH = 
	{
		"Booster01_WR8.y",
	},	
	
	READY_XSKIN_MESH = 
	{
		"SpecialAttack_WR.x",
		"Missile_WR8.x",
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_CanonFort_Parasite_Eye.x",

	MOTION_MULTI_TEX_XET	= "Motion_CanonFort_Parasite_Eye.xet",
	MULTI_TEX_SPEED			= { 2, 0, 0.5, },

}


INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 400,
	RUN_SPEED			= 600,
	JUMP_SPEED			= 1400,
	DASH_JUMP_SPEED		= 1600,
}


INIT_COMPONENT = 
{
	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 130,
	
	USE_SLASH_TRACE		= FALSE,
	
	--SHADOW_SIZE			= 200,
	--SHADOW_FILE_NAME	= "shadow.dds",
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	DRAW_SMALL_MP_BAR	= TRUE,
	
	HEAD_BONE_NAME			= "Dummy5_Eye",
	
	
	--QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	--EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
	----MIND_FLAG_HEIGHT		= 230,
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	--RAGE_COUNT_MAX		= 15,
	--RAGE_TIME_MAX		= 5,

	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	
	FALL_DOWN			= FALSE,
	--DEFENCE_RATE		= 50,
	
	DAMAGE_DOWN         = FALSE,
	
	BOSS_GAGE_FACE_TEX			= "DLG_BossState.tga",			
	BOSS_GAGE_FACE_TEX_PIECE	= "NUI_ALTRESIA",	
	BOSS_NAME_TEX				= "HQ_BOSS_NAME_ALTRESIA.dds",		
	
	DIE_FLY             = 0,
	
}



INIT_STATE = 
{
	{ STATE_NAME = "CANNONFORT_PARASITE_BODY_START",					LUA_CAMERA_MOVE_FUNC = "CANNONFORT_PARASITE_BODY_START_CAMERA_MOVE",
																		LUA_STATE_START_FUNC = "CANNONFORT_PARASITE_BODY_START_STATE_START",
																		LUA_STATE_END_FUNC = "CANNONFORT_PARASITE_BODY_START_STATE_END",		},
	
	{ STATE_NAME = "CANNONFORT_PARASITE_BODY_WAIT_GUARDED",				},
	--X2OPTIMIZE_NPC_SKINANIM_UPDATE_FREQUENCY( by hcsung: 의미없는 FRAME_MOVE는 제거 )
	--{ STATE_NAME = "CANNONFORT_PARASITE_BODY_WAIT",						LUA_FRAME_MOVE_FUNC = "CANNONFORT_PARASITE_BODY_WAIT_FRAME_MOVE",	
	--																	LUA_STATE_START_FUNC = "CANNONFORT_PARASITE_BODY_WAIT_STATE_START",		},
	{ STATE_NAME = "CANNONFORT_PARASITE_BODY_WAIT",						LUA_STATE_START_FUNC = "CANNONFORT_PARASITE_BODY_WAIT_STATE_START",		},
	{ STATE_NAME = "CANNONFORT_PARASITE_BODY_WAIT_NASOD_EXPLODE",		LUA_FRAME_MOVE_FUNC = "CANNONFORT_PARASITE_BODY_WAIT_NASOD_EXPLODE_FRAME_MOVE",			},
	
	
		
	{ STATE_NAME = "CANNONFORT_PARASITE_BODY_MISSILE_ATTACK_2",			LUA_FRAME_MOVE_FUNC = "CANNONFORT_PARASITE_BODY_MISSILE_ATTACK_2_FRAME_MOVE",
																		STATE_COOL_TIME = 20,						},
	
	
	{ STATE_NAME = "CANNONFORT_PARASITE_BODY_MISSILE_ATTACK_2_GUARDED",		LUA_FRAME_MOVE_FUNC = "CANNONFORT_PARASITE_BODY_MISSILE_ATTACK_2_GUARDED_FRAME_MOVE",			
																			STATE_COOL_TIME = 20,						},
	
	
	{ STATE_NAME = "CANNONFORT_PARASITE_BODY_MISSILE_ATTACK_2_NASOD_EXPLODE",	LUA_FRAME_MOVE_FUNC = "CANNONFORT_PARASITE_BODY_MISSILE_ATTACK_2_NASOD_EXPLODE_FRAME_MOVE",			
																				STATE_COOL_TIME = 20,						},
	

	
	{ STATE_NAME = "CANNONFORT_PARASITE_BODY_ATTACK_LASER_TOP",			LUA_FRAME_MOVE_FUNC = "CANNONFORT_PARASITE_BODY_ATTACK_LASER_TOP_FRAME_MOVE",			},
	{ STATE_NAME = "CANNONFORT_PARASITE_BODY_ATTACK_LASER_BOTTOM",		LUA_FRAME_MOVE_FUNC = "CANNONFORT_PARASITE_BODY_ATTACK_LASER_BOTTOM_FRAME_MOVE",		},	
	{ STATE_NAME = "CANNONFORT_PARASITE_BODY_ATTACK_LASER",				LUA_FRAME_MOVE_FUNC = "CANNONFORT_PARASITE_BODY_ATTACK_LASER_FRAME_MOVE",	
																		},


	{ STATE_NAME = "CANNONFORT_PARASITE_BODY_SUMMON_MINI_CANNON_1",		LUA_FRAME_MOVE_FUNC = "CANNONFORT_PARASITE_BODY_SUMMON_MINI_CANNON_1_FRAME_MOVE",	
																		STATE_COOL_TIME = 20,						},
																		
	{ STATE_NAME = "CANNONFORT_PARASITE_BODY_SUMMON_MINI_CANNON_2",		LUA_FRAME_MOVE_FUNC = "CANNONFORT_PARASITE_BODY_SUMMON_MINI_CANNON_2_FRAME_MOVE",	
																		STATE_COOL_TIME = 20,						},




	{ STATE_NAME = "CANNONFORT_PARASITE_BODY_SUMMON_MINI_CANNON_1_GUARDED",		LUA_FRAME_MOVE_FUNC = "CANNONFORT_PARASITE_BODY_SUMMON_MINI_CANNON_1_GUARDED_FRAME_MOVE",	
																				STATE_COOL_TIME = 20,						},
																		
	{ STATE_NAME = "CANNONFORT_PARASITE_BODY_SUMMON_MINI_CANNON_2_GUARDED",		LUA_FRAME_MOVE_FUNC = "CANNONFORT_PARASITE_BODY_SUMMON_MINI_CANNON_2_GUARDED_FRAME_MOVE",	
																				STATE_COOL_TIME = 20,						},




	--{ STATE_NAME = "CANNONFORT_PARASITE_BODY_SUMMON_PARASITE",			LUA_FRAME_MOVE_FUNC = "CANNONFORT_PARASITE_BODY_SUMMON_PARASITE_FRAME_MOVE",		
	--																	STATE_COOL_TIME = 5,						},	
																		
	{ STATE_NAME = "CANNONFORT_PARASITE_BODY_SUMMON_NASOD",				LUA_STATE_START_FUNC = "CANNONFORT_PARASITE_BODY_SUMMON_NASOD_STATE_START",
																		LUA_FRAME_MOVE_FUNC = "CANNONFORT_PARASITE_BODY_SUMMON_NASOD_FRAME_MOVE",			
																		},

																		
	{ STATE_NAME = "CANNONFORT_PARASITE_BODY_EXPLODE_NASOD",			LUA_FRAME_MOVE_FUNC = "CANNONFORT_PARASITE_BODY_EXPLODE_NASOD_FRAME_MOVE",			
																		STATE_COOL_TIME = 5,						},	

																		

	
	--리액션 관련
	{ STATE_NAME = "CANNONFORT_PARASITE_BODY_DAMAGE_SMALL",				LUA_FRAME_MOVE_FUNC = "CANNONFORT_PARASITE_BODY_DAMAGE_SMALL_FRAME_MOVE"			},
	
	{ STATE_NAME = "CANNONFORT_PARASITE_BODY_DYING_LAND_FRONT",			LUA_STATE_START_FUNC= "CANNONFORT_PARASITE_BODY_DYING_LAND_STATE_START",			},
		
	
	
	START_STATE					= "CANNONFORT_PARASITE_BODY_START",
	WAIT_STATE					= "CANNONFORT_PARASITE_BODY_WAIT",
	
	
	SMALL_DAMAGE_LAND_FRONT		= "CANNONFORT_PARASITE_BODY_DAMAGE_SMALL",
	SMALL_DAMAGE_LAND_BACK		= "CANNONFORT_PARASITE_BODY_DAMAGE_SMALL",
	BIG_DAMAGE_LAND_FRONT		= "CANNONFORT_PARASITE_BODY_DAMAGE_SMALL",
	BIG_DAMAGE_LAND_BACK		= "CANNONFORT_PARASITE_BODY_DAMAGE_SMALL",
	DOWN_DAMAGE_LAND_FRONT		= "CANNONFORT_PARASITE_BODY_DAMAGE_SMALL",
	DOWN_DAMAGE_LAND_BACK		= "CANNONFORT_PARASITE_BODY_DAMAGE_SMALL",
	FLY_DAMAGE_FRONT			= "CANNONFORT_PARASITE_BODY_DAMAGE_SMALL",
	FLY_DAMAGE_BACK				= "CANNONFORT_PARASITE_BODY_DAMAGE_SMALL",
	SMALL_DAMAGE_AIR			= "CANNONFORT_PARASITE_BODY_DAMAGE_SMALL",	
	BIG_DAMAGE_AIR				= "CANNONFORT_PARASITE_BODY_DAMAGE_SMALL",
	DOWN_DAMAGE_AIR				= "CANNONFORT_PARASITE_BODY_DAMAGE_SMALL",
	UP_DAMAGE					= "CANNONFORT_PARASITE_BODY_DAMAGE_SMALL",
	DAMAGE_REVENGE				= "CANNONFORT_PARASITE_BODY_DAMAGE_SMALL",
	
	DYING_LAND_FRONT			= "CANNONFORT_PARASITE_BODY_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "CANNONFORT_PARASITE_BODY_DYING_LAND_FRONT",
	DYING_SKY					= "CANNONFORT_PARASITE_BODY_DYING_LAND_FRONT",

	REVENGE_ATTACK				= "",	
}



INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 2,		-- sec
		TARGET_NEAR_RANGE			= 1000,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 5000,		-- cm
		TARGET_LOST_RANGE			= 6000,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --90,		-- %
		ATTACK_TARGET_RATE			= 100, -- 90,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, -- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 600,
		DEST_GAP			= 5000,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 6000,
		
		DIR_CHANGE_INTERVAL = 999,
		
		WALK_INTERVAL		= 999,
		NEAR_WALK_RATE		= 100,   --  70,
		FAR_WALK_RATE		= 100,   -- 30,
		
		JUMP_INTERVAL		= 999,
		UP_JUMP_RATE		= 100, -- 40,
		UP_DOWN_RATE		= 20,
		DOWN_JUMP_RATE		= 100,    --  20,
		DOWN_DOWN_RATE		= 40,
		
		LINE_END_RANGE		= 80,	-- cm
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 0,		
	},
}


CANNONFORT_PARASITE_BODY_START = 
{
	ANIM_NAME					= "WaitStart",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,	
	
	ALARM =
	{
		--DANGER  				 = TRUE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_15270,  		  		    --경고 문구
		DELAY   				 = 4,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = TRUE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_MAGENTA"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 5, 				  			    -- 표시 지속 시간
	},
	   
    SOUND_PLAY0			= { 0.227, "CannonFort_Eye_WaitStart1.ogg", },
    SOUND_PLAY1			= { 1.447, "CannonFort_Eye_WaitStart2.ogg", },
    SOUND_PLAY2			= { 4.001, "CannonFort_Eye_WaitStart3.ogg", },
    SOUND_PLAY3			= { 5.227, "CannonFort_Eye_WaitStart4.ogg", },
    SOUND_PLAY4			= { 5.230, "CannonFort_Eye_WaitStart5.ogg", },
	
	NEVER_MOVE					= TRUE,
	SUPER_ARMOR					= TRUE,
	
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ FALSE, 5.133, "CanonFort_Parasite_WaitStart01", FALSE, "Dummy5_Eye", TRUE, TRUE, -100, 0, -100, TRUE, 0, -20, 0,  },
		{ FALSE, 5.133, "CanonFort_Parasite_WaitStart02", FALSE, "Dummy5_Eye", TRUE, TRUE, -100, 0, -100, TRUE, 0, -20, 0,  },
		
		{ FALSE, 6.4, "CanonFort_Parasite_WaitStart03", FALSE, "Dummy5_Eye", TRUE, FALSE, -50, 0, 0, TRUE, 0, -20, 0, },
	},
	
	
	
	
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"CANNONFORT_PARASITE_BODY_WAIT_GUARDED",		"CT_CANNONFORT_PARASITE_BODY_WAIT_GUARDED"				},
	},
	
	CT_CANNONFORT_PARASITE_BODY_WAIT_GUARDED = 
	{
		STATE_TIME_OVER			= 8,
	},
	
}


------------------------------------------------------------------------------
function CANNONFORT_PARASITE_BODY_START_CAMERA_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	pos = pNPCUnit:GetBonePos_LUA("Dummy5_Eye")
	camera = pX2Game:GetX2Camera()
	camera:PartsLookDirectCamera_LUA( pNPCUnit, pos, D3DXVECTOR3( 500, -50, -20 ), D3DXVECTOR2( 500, 0 ) )

end


------------------------------------------------------------------------------
function CANNONFORT_PARASITE_BODY_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pXSkinAnim = pNPCUnit:GetXSkinAnim()
	pXSkinAnim:SetUseTex( 2, false )

end


------------------------------------------------------------------------------
function CANNONFORT_PARASITE_BODY_START_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:SetTimerRestart( 0 )

end






CANNONFORT_PARASITE_BODY_WAIT_INVINCIBLE =
{
	ANIM_NAME					= "WaitHabit",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,	
	
	NEVER_MOVE					= TRUE,
	SUPER_ARMOR					= TRUE,
	
	INVINCIBLE					= { 0, 99999, },
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"CANNONFORT_PARASITE_BODY_WAIT",		"CT_CANNONFORT_PARASITE_BODY_WAIT"				},
	},
	
	CT_CANNONFORT_PARASITE_BODY_WAIT = 
	{
		STATE_TIME_OVER			= 3,
	},
}






CANNONFORT_PARASITE_BODY_WAIT_GUARDED = 
{
	SHOW						= TRUE,
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	NEVER_MOVE					= TRUE,
	SUPER_ARMOR					= TRUE,
	INVINCIBLE					= { 0, 99999, },
	EVENT_INTERVAL_TIME0		= 2,
	
	
	
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"CANNONFORT_PARASITE_BODY_WAIT",							"CF_CANNONFORT_PARASITE_BODY_WAIT_GUARD",		},
		
--		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CANNONFORT_PARASITE_BODY_SUMMON_MINI_CANNON_1_GUARDED",	"CT_CANNONFORT_PARASITE_BODY_SUMMON_MINI_CANNON_1_GUARDED",			},
--		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CANNONFORT_PARASITE_BODY_SUMMON_MINI_CANNON_2_GUARDED",	"CT_CANNONFORT_PARASITE_BODY_SUMMON_MINI_CANNON_2_GUARDED",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CANNONFORT_PARASITE_BODY_MISSILE_ATTACK_2_GUARDED",		"CT_CANNONFORT_PARASITE_BODY_MISSILE_ATTACK_2_GUARDED",		},
	},
	
	
	CT_CANNONFORT_PARASITE_BODY_SUMMON_MINI_CANNON_1_GUARDED =
	{
		EVENT_INTERVAL_ID			= 0,
		TIMER_ELAPSED0				= 20,
		RATE						= 30,
	},
	
	CT_CANNONFORT_PARASITE_BODY_SUMMON_MINI_CANNON_2_GUARDED =
	{
		EVENT_INTERVAL_ID			= 0,
		TIMER_ELAPSED0				= 20,
		RATE						= 50,
	},
		
		
	CT_CANNONFORT_PARASITE_BODY_MISSILE_ATTACK_2_GUARDED =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 5000,
		RATE						= 100,
	},
		
}



function CF_CANNONFORT_PARASITE_BODY_WAIT_GUARD( pKTDXApp, pX2Game, pNPCUnit )

	pNPC_BodyArmor = pX2Game:GetKeyCodeNPC( 5 ) -- 가운데 꽃 보호 장갑이 깨어지면
	if pNPC_BodyArmor == nil or pNPC_BodyArmor:GetNowHP_LUA() <= 0 then
		return true
	end

end







CANNONFORT_PARASITE_BODY_WAIT = 
{
	SHOW						= TRUE,
	ANIM_NAME					= "WaitHabit",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	

    SOUND_PLAY0			= { 0.01, "CannonFort_Eye_WaitStart2.ogg", },
    SOUND_PLAY1			= { 0.32, "CannonFort_Eye_WaitStart3.ogg", },

	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	PASSIVE_SPEED_X				= 0,
	NEVER_MOVE					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 2,
	SUPER_ARMOR					= TRUE,
	
	DEFENCE						= { 0, 9999, 100, }, 
	
	
	
	EVENT_PROCESS = 
	{	

		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],	"CANNONFORT_PARASITE_BODY_SUMMON_NASOD",			"CF_CANNONFORT_PARASITE_BODY_SUMMON_NASOD",			},




		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"CANNONFORT_PARASITE_BODY_MISSILE_ATTACK_2",		"CT_CANNONFORT_PARASITE_BODY_MISSILE_ATTACK_2",		},
	},
	

	CT_CANNONFORT_PARASITE_BODY_MISSILE_ATTACK_2 =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 5000,
		RATE						= 100,
	},
	
	
}



function CANNONFORT_PARASITE_BODY_WAIT_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pXSkinAnim = pNPCUnit:GetXSkinAnim()
	pXSkinAnim:SetUseTex( 2, true )

end

--X2OPTIMIZE_NPC_SKINANIM_UPDATE_FREQUENCY( by hcsung: 의미없는 FRAME_MOVE는 제거 )
--function CANNONFORT_PARASITE_BODY_WAIT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )


--end




function CF_CANNONFORT_PARASITE_BODY_SUMMON_NASOD( pKTDXApp, pX2Game, pNPCUnit )

	nTopCannon = pX2Game:LiveNPCNumType_LUA( NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_TOP_CANNON"] )
	nBottomCannon = pX2Game:LiveNPCNumType_LUA( NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BOTTOM_CANNON"] )
	if nTopCannon == 0 and  nBottomCannon == 0 then 
		return true
	end

	return false

end









CANNONFORT_PARASITE_BODY_SUMMON_NASOD = 
{
	SHOW						= TRUE,
	ANIM_NAME					= "WaitHabit",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,	

    SOUND_PLAY0			= { 0.01, "CannonFort_Eye_Summon.ogg" },
    SOUND_PLAY1			= { 0.01, "CannonFort_Eye_WaitStart2.ogg", },
    SOUND_PLAY2			= { 0.32, "CannonFort_Eye_WaitStart3.ogg", },

	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	SUPER_ARMOR					= TRUE,

	
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CANNONFORT_PARASITE_BODY_WAIT_NASOD_EXPLODE",			"CT_CANNONFORT_PARASITE_BODY_WAIT_NASOD_EXPLODE",		},
	},
	
	CT_CANNONFORT_PARASITE_BODY_WAIT_NASOD_EXPLODE =
	{
		STATE_TIME_OVER				= 1.0,
	},
	
}

function CANNONFORT_PARASITE_BODY_SUMMON_NASOD_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	
	pXSkinAnim = pNPCUnit:GetXSkinAnim()
	pXSkinAnim:SetUseTex( 2, false )
	pNPCUnit:SetInt_LUA( 0, pX2Game:GetGameTime() ) 
	
end



function CANNONFORT_PARASITE_BODY_SUMMON_NASOD_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )


end



CANNONFORT_PARASITE_BODY_WAIT_NASOD_EXPLODE =
{
	ANIM_NAME					= "WaitHabit",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	

    SOUND_PLAY0			= { 0.01, "CannonFort_Eye_WaitStart2.ogg", },
    SOUND_PLAY1			= { 0.32, "CannonFort_Eye_WaitStart3.ogg", },
	
	NEVER_MOVE					= TRUE,
	SUPER_ARMOR					= TRUE,


	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"CANNONFORT_PARASITE_BODY_WAIT",					"CF_CANNONFORT_PARASITE_BODY_WAIT",		},	

		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"CANNONFORT_PARASITE_BODY_ATTACK_LASER_BOTTOM",		"CF_CANNONFORT_PARASITE_BODY_ATTACK_LASER_BOTTOM",			},	

		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"CANNONFORT_PARASITE_BODY_EXPLODE_NASOD",			"CF_CANNONFORT_PARASITE_BODY_EXPLODE_NASOD",		},	

		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CANNONFORT_PARASITE_BODY_SUMMON_MINI_CANNON_1",	"CT_CANNONFORT_PARASITE_BODY_SUMMON_MINI_CANNON_1",			},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CANNONFORT_PARASITE_BODY_SUMMON_MINI_CANNON_2",	"CT_CANNONFORT_PARASITE_BODY_SUMMON_MINI_CANNON_2",			},
		

	},

	CT_CANNONFORT_PARASITE_BODY_SUMMON_MINI_CANNON_1 =
	{
		EVENT_INTERVAL_ID			= 0,
		TIMER_ELAPSED0				= 30,
		RATE						= 30,
	},
	
	CT_CANNONFORT_PARASITE_BODY_SUMMON_MINI_CANNON_2 =
	{
		EVENT_INTERVAL_ID			= 0,
		TIMER_ELAPSED0				= 30,
		RATE						= 50,
	},


	CT_CANNONFORT_PARASITE_BODY_MISSILE_ATTACK_2_NASOD_EXPLODE =
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 5000,
		RATE						= 50,
	},

}

function CF_CANNONFORT_PARASITE_BODY_EXPLODE_NASOD( pKTDXApp, pX2Game, pNPCUnit )

	-- 27초 후에 위아래 캐논 소환
	if (pX2Game:GetGameTime() - pNPCUnit:GetInt_LUA(0) ) > 27 then 
		return true
	end
	
	return false

end



function CANNONFORT_PARASITE_BODY_WAIT_NASOD_EXPLODE_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	-- 27초 후에 어두워짐
	if (pX2Game:GetGameTime() - pNPCUnit:GetInt_LUA(0) ) > 27 then 
		--pX2Game:SetWorldColor_LUA( D3DXCOLOR(0.2,0.2,0.2,1) )
	end
end



function CF_CANNONFORT_PARASITE_BODY_ATTACK_LASER_BOTTOM( pKTDXApp, pX2Game, pNPCUnit )

	-- 29초 후에 레이저 발사
	if (pX2Game:GetGameTime() - pNPCUnit:GetInt_LUA(0) ) > 29 then 
		return true
	end
	
	return false

end




function CF_CANNONFORT_PARASITE_BODY_WAIT( pKTDXApp, pX2Game, pNPCUnit )

	-- 30초 후에 무적 해제
	if (pX2Game:GetGameTime() - pNPCUnit:GetInt_LUA(0) ) > 30 then 
		return true
	end
	
	return false

end




CANNONFORT_PARASITE_BODY_EXPLODE_NASOD = 
{
	SHOW						= TRUE,

	ANIM_NAME					= "WaitHabit",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,	

	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	SUPER_ARMOR					= TRUE,
	
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CANNONFORT_PARASITE_BODY_WAIT_NASOD_EXPLODE",			"CT_CANNONFORT_PARASITE_BODY_WAIT",		},
	},
	
	CT_CANNONFORT_PARASITE_BODY_WAIT =
	{
		STATE_TIME_OVER				= 1.0,
	},
}



function CANNONFORT_PARASITE_BODY_EXPLODE_NASOD_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )



	if pNPCUnit:AnimEventTimer_LUA( 0.05 ) then
	
		nTopCannon = pX2Game:LiveNPCNumType_LUA( NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_TOP_CANNON"] )
		if nTopCannon == 0 then 
			vSummonPos = pX2Game:GetLineMap():GetStartPosition( 1 )
			vBonePos = pNPCUnit:GetBonePos_LUA("Dummy5_Eye")
			pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "SummonLight",	vBonePos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(1,-1) )
			pParticle:SetLandPosition( vSummonPos.y )		
			pParticle:SetBlackHolePosition( vSummonPos )
			-- int unitID, int level, bool bActive, D3DXVECTOR3 vPos, bool bRight, float fDelayTime, bool bNoDrop, int iKeyCode )
			pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_TOP_CANNON"], pNPCUnit:GetHardLevel(), false, vSummonPos, false, 1.0, true, 2 )
		end


		nBottomCannon = pX2Game:LiveNPCNumType_LUA( NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BOTTOM_CANNON"] )
		if nBottomCannon == 0 then
			vSummonPos = pX2Game:GetLineMap():GetStartPosition( 1 )		
			pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "SummonLight",	vBonePos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(1,-1) )
			pParticle:SetLandPosition( vSummonPos.y )
			pParticle:SetBlackHolePosition( vSummonPos )
			-- int unitID, int level, bool bActive, D3DXVECTOR3 vPos, bool bRight, float fDelayTime, bool bNoDrop, int iKeyCode )
			pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BOTTOM_CANNON"], pNPCUnit:GetHardLevel(), false, vSummonPos, false, 1.0, true, 4 )
		end
		
		pX2Game:FlushCreateNPCReq()
	end

end






CANNONFORT_PARASITE_BODY_SUMMON_MINI_CANNON_1_GUARDED = 
{
	ANIM_NAME					= "WaitHabit",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	
    SOUND_PLAY0			= { 0.01, "CannonFort_Eye_Summon.ogg" },
    SOUND_PLAY1			= { 0.01, "CannonFort_Eye_WaitStart2.ogg", },
    SOUND_PLAY2			= { 0.32, "CannonFort_Eye_WaitStart3.ogg", },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,	

	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	SUPER_ARMOR					= TRUE,
	
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CANNONFORT_PARASITE_BODY_WAIT_GUARDED",				},	
	},
	
}


function CANNONFORT_PARASITE_BODY_SUMMON_MINI_CANNON_1_GUARDED_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.05 ) then	
	
		-- 현재 나와 있는 미니캐논을 다 없애고
		nNPCListSize = pX2Game:GetNPCUnitListSize()
		for i=0, nNPCListSize-1 do 
			
			pUnit = pX2Game:GetNPCUnit( i )
			
			if pUnit ~= nil and pUnit:GetNowHP() > 0 then
			
				if pUnit:IsUnitID( NPC_UNIT_ID[ "NUI_CANNON_MINI" ] ) or 
					pUnit:IsUnitID( NPC_UNIT_ID[ "NUI_CANNON_MINI_UP" ] ) then 
				
					pUnit:SetNowHP_LUA(0)
								
				end
			end
		end	
	
	
	
		vBonePos = pNPCUnit:GetBonePos_LUA("Dummy5_Eye")
		pMajorParticle = pX2Game:GetMajorParticle()
			
		
		vSummonPos = pX2Game:GetLineMap():GetStartPosition( 21 )
		pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "SummonLight",	vBonePos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(1,-1) )
		pParticle:SetLandPosition( vSummonPos.y )		
		pParticle:SetBlackHolePosition( vSummonPos )
		-- int unitID, int level, bool bActive, D3DXVECTOR3 vPos, bool bRight, float fDelayTime, bool bNoDrop, int iKeyCode )
		pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_CANNON_MINI"], pNPCUnit:GetHardLevel(), false, vSummonPos, true, 1.9, true, -1 )
		
		
		vSummonPos = pX2Game:GetLineMap():GetStartPosition( 6 )
		pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "SummonLight",	vBonePos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(1,-1) )
		pParticle:SetLandPosition( vSummonPos.y )		
		pParticle:SetBlackHolePosition( vSummonPos )
		-- int unitID, int level, bool bActive, D3DXVECTOR3 vPos, bool bRight, float fDelayTime, bool bNoDrop, int iKeyCode )
		pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_CANNON_MINI_UP"], pNPCUnit:GetHardLevel(), false, vSummonPos, true, 1.9, true, -1 )


		vSummonPos = pX2Game:GetLineMap():GetStartPosition( 16 )
		vSummonPos.y = vSummonPos.y - 20					
		pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "SummonLight",	vBonePos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(1,-1) )
		pParticle:SetLandPosition( vSummonPos.y )
		pParticle:SetBlackHolePosition( vSummonPos )
		-- int unitID, int level, bool bActive, D3DXVECTOR3 vPos, bool bRight, float fDelayTime, bool bNoDrop, int iKeyCode )
		pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_CANNON_MINI_UP"], pNPCUnit:GetHardLevel(), false, vSummonPos, true, 1.9, true, -1 )
		
		
		pX2Game:FlushCreateNPCReq()
		
		pNPCUnit:SetTimerRestart( 0 )
		
	end
	
end











CANNONFORT_PARASITE_BODY_SUMMON_MINI_CANNON_2_GUARDED = 
{
	ANIM_NAME					= "WaitHabit",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.01, "CannonFort_Eye_Summon.ogg" },
    SOUND_PLAY1			= { 0.01, "CannonFort_Eye_WaitStart2.ogg", },
    SOUND_PLAY2			= { 0.32, "CannonFort_Eye_WaitStart3.ogg", },

	SPEED_X						= 0,
	SPEED_Y						= 0,	

	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	SUPER_ARMOR					= TRUE,
	
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CANNONFORT_PARASITE_BODY_WAIT_GUARDED",				},	
	},
	
}


function CANNONFORT_PARASITE_BODY_SUMMON_MINI_CANNON_2_GUARDED_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.05 ) then	
	
	
		-- 현재 나와 있는 미니캐논을 다 없애고
		nNPCListSize = pX2Game:GetNPCUnitListSize()
		for i=0, nNPCListSize-1 do 
			
			pUnit = pX2Game:GetNPCUnit( i )
			
			if pUnit ~= nil and pUnit:GetNowHP() > 0 then
			
				if pUnit:IsUnitID( NPC_UNIT_ID[ "NUI_CANNON_MINI" ] ) or 
					pUnit:IsUnitID( NPC_UNIT_ID[ "NUI_CANNON_MINI_UP" ] ) then 
				
					pUnit:SetNowHP_LUA(0)
								
				end
			end
		end	
	
	
	
	
		vBonePos = pNPCUnit:GetBonePos_LUA("Dummy5_Eye")
		pMajorParticle = pX2Game:GetMajorParticle()
		
		
		
		vSummonPos = pX2Game:GetLineMap():GetStartPosition( 18 )
		pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "SummonLight",	vBonePos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(1,-1) )
		pParticle:SetLandPosition( vSummonPos.y )		
		pParticle:SetBlackHolePosition( vSummonPos )
		-- int unitID, int level, bool bActive, D3DXVECTOR3 vPos, bool bRight, float fDelayTime, bool bNoDrop, int iKeyCode )
		pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_CANNON_MINI"], pNPCUnit:GetHardLevel(), false, vSummonPos, true, 1.9, true, -1 )
		
		
		vSummonPos = pX2Game:GetLineMap():GetStartPosition( 6 )
		pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "SummonLight",	vBonePos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(1,-1) )
		pParticle:SetLandPosition( vSummonPos.y )		
		pParticle:SetBlackHolePosition( vSummonPos )
		-- int unitID, int level, bool bActive, D3DXVECTOR3 vPos, bool bRight, float fDelayTime, bool bNoDrop, int iKeyCode )
		pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_CANNON_MINI"], pNPCUnit:GetHardLevel(), false, vSummonPos, true, 1.9, true, -1 )


		vSummonPos = pX2Game:GetLineMap():GetStartPosition( 16 )
		vSummonPos.y = vSummonPos.y - 40				
		pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "SummonLight",	vBonePos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(1,-1) )
		pParticle:SetLandPosition( vSummonPos.y )
		pParticle:SetBlackHolePosition( vSummonPos )
		-- int unitID, int level, bool bActive, D3DXVECTOR3 vPos, bool bRight, float fDelayTime, bool bNoDrop, int iKeyCode )
		pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_CANNON_MINI_UP"], pNPCUnit:GetHardLevel(), false, vSummonPos, true, 1.9, true, -1 )
		
		
		pX2Game:FlushCreateNPCReq()
		
		
		pNPCUnit:SetTimerRestart( 0 )
		
	end
	
end










CANNONFORT_PARASITE_BODY_SUMMON_MINI_CANNON_1 = 
{
	ANIM_NAME					= "WaitHabit",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.01, "CannonFort_Eye_Summon.ogg" },
    SOUND_PLAY1			= { 0.01, "CannonFort_Eye_WaitStart2.ogg", },
    SOUND_PLAY2			= { 0.32, "CannonFort_Eye_WaitStart3.ogg", },

	SPEED_X						= 0,
	SPEED_Y						= 0,	



	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	SUPER_ARMOR					= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CANNONFORT_PARASITE_BODY_WAIT_NASOD_EXPLODE",				},	
	},
	
}


function CANNONFORT_PARASITE_BODY_SUMMON_MINI_CANNON_1_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.05 ) then	
	
	
	
		-- 현재 나와 있는 미니캐논을 다 없애고
		nNPCListSize = pX2Game:GetNPCUnitListSize()
		for i=0, nNPCListSize-1 do 
			
			pUnit = pX2Game:GetNPCUnit( i )
			
			if pUnit ~= nil and pUnit:GetNowHP() > 0 then
			
				if pUnit:IsUnitID( NPC_UNIT_ID[ "NUI_CANNON_MINI" ] ) or 
					pUnit:IsUnitID( NPC_UNIT_ID[ "NUI_CANNON_MINI_UP" ] ) then 
				
					pUnit:SetNowHP_LUA(0)
								
				end
			end
		end	
	
	
	
	
	
	
		vBonePos = pNPCUnit:GetBonePos_LUA("Dummy5_Eye")
		pMajorParticle = pX2Game:GetMajorParticle()
		
		
		
		vSummonPos = pX2Game:GetLineMap():GetStartPosition( 21 )
		pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "SummonLight",	vBonePos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(1,-1) )
		pParticle:SetLandPosition( vSummonPos.y )		
		pParticle:SetBlackHolePosition( vSummonPos )
		-- int unitID, int level, bool bActive, D3DXVECTOR3 vPos, bool bRight, float fDelayTime, bool bNoDrop, int iKeyCode )
		pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_CANNON_MINI"], pNPCUnit:GetHardLevel(), false, vSummonPos, true, 1.9, true, -1 )
		
		
		vSummonPos = pX2Game:GetLineMap():GetStartPosition( 6 )
		pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "SummonLight",	vBonePos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(1,-1) )
		pParticle:SetLandPosition( vSummonPos.y )		
		pParticle:SetBlackHolePosition( vSummonPos )
		-- int unitID, int level, bool bActive, D3DXVECTOR3 vPos, bool bRight, float fDelayTime, bool bNoDrop, int iKeyCode )
		pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_CANNON_MINI"], pNPCUnit:GetHardLevel(), false, vSummonPos, true, 1.9, true, -1 )


		vSummonPos = pX2Game:GetLineMap():GetStartPosition( 16 )
		vSummonPos.y = vSummonPos.y - 40					
		pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "SummonLight",	vBonePos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(1,-1) )
		pParticle:SetLandPosition( vSummonPos.y )
		pParticle:SetBlackHolePosition( vSummonPos )
		-- int unitID, int level, bool bActive, D3DXVECTOR3 vPos, bool bRight, float fDelayTime, bool bNoDrop, int iKeyCode )
		pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_CANNON_MINI_UP"], pNPCUnit:GetHardLevel(), false, vSummonPos, true, 1.9, true, -1 )
		
		
		pX2Game:FlushCreateNPCReq()
		
		pNPCUnit:SetTimerRestart( 0 )
		
	end
	
end











CANNONFORT_PARASITE_BODY_SUMMON_MINI_CANNON_2 = 
{
	ANIM_NAME					= "WaitHabit",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,	

    SOUND_PLAY0			= { 0.01, "CannonFort_Eye_Summon.ogg" },
    SOUND_PLAY1			= { 0.01, "CannonFort_Eye_WaitStart2.ogg", },
    SOUND_PLAY2			= { 0.32, "CannonFort_Eye_WaitStart3.ogg", },

	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	SUPER_ARMOR					= TRUE,
	
	
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CANNONFORT_PARASITE_BODY_WAIT_NASOD_EXPLODE",				},	
	},
	
}


function CANNONFORT_PARASITE_BODY_SUMMON_MINI_CANNON_2_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.05 ) then	
	
	
		-- 현재 나와 있는 미니캐논을 다 없애고
		nNPCListSize = pX2Game:GetNPCUnitListSize()
		for i=0, nNPCListSize-1 do 
			
			pUnit = pX2Game:GetNPCUnit( i )
			
			if pUnit ~= nil and pUnit:GetNowHP() > 0 then
			
				if pUnit:IsUnitID( NPC_UNIT_ID[ "NUI_CANNON_MINI" ] ) or 
					pUnit:IsUnitID( NPC_UNIT_ID[ "NUI_CANNON_MINI_UP" ] ) then 
				
					pUnit:SetNowHP_LUA(0)
								
				end
			end
		end	
	
	
	
	
	
		vBonePos = pNPCUnit:GetBonePos_LUA("Dummy5_Eye")
		pMajorParticle = pX2Game:GetMajorParticle()
		
		
		
		vSummonPos = pX2Game:GetLineMap():GetStartPosition( 18 )
		pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "SummonLight",	vBonePos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(1,-1) )
		pParticle:SetLandPosition( vSummonPos.y )		
		pParticle:SetBlackHolePosition( vSummonPos )
		-- int unitID, int level, bool bActive, D3DXVECTOR3 vPos, bool bRight, float fDelayTime, bool bNoDrop, int iKeyCode )
		pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_CANNON_MINI_UP"], pNPCUnit:GetHardLevel(), false, vSummonPos, true, 1.9, true, -1 )
		
		
		vSummonPos = pX2Game:GetLineMap():GetStartPosition( 6 )
		pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "SummonLight",	vBonePos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(1,-1) )
		pParticle:SetLandPosition( vSummonPos.y )		
		pParticle:SetBlackHolePosition( vSummonPos )
		-- int unitID, int level, bool bActive, D3DXVECTOR3 vPos, bool bRight, float fDelayTime, bool bNoDrop, int iKeyCode )
		pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_CANNON_MINI"], pNPCUnit:GetHardLevel(), false, vSummonPos, true, 1.9, true, -1 )


		vSummonPos = pX2Game:GetLineMap():GetStartPosition( 16 )
		vSummonPos.y = vSummonPos.y - 40				
		pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "SummonLight",	vBonePos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(1,-1) )
		pParticle:SetLandPosition( vSummonPos.y )
		pParticle:SetBlackHolePosition( vSummonPos )
		-- int unitID, int level, bool bActive, D3DXVECTOR3 vPos, bool bRight, float fDelayTime, bool bNoDrop, int iKeyCode )
		pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_CANNON_MINI"], pNPCUnit:GetHardLevel(), false, vSummonPos, true, 1.9, true, -1 )
		
		
		pX2Game:FlushCreateNPCReq()
		
		
		pNPCUnit:SetTimerRestart( 0 )
		
	end
	
end




CANNONFORT_PARASITE_BODY_MISSILE_ATTACK_2 = 
{
	SHOW						= TRUE,

	ANIM_NAME					= "WaitHabit",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,	

	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	SUPER_ARMOR					= TRUE,
	
	

	DEFENCE						= { 0, 9999, 100, }, 
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"CANNONFORT_PARASITE_BODY_WAIT",		"CT_CANNONFORT_PARASITE_BODY_WAIT"				},
	},
	
	
	CT_CANNONFORT_PARASITE_BODY_WAIT =
	{
		STATE_TIME_OVER				= 0.9,
	},
}



function CANNONFORT_PARASITE_BODY_MISSILE_ATTACK_2_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	if pNPCUnit:GetStateTime() < 0.9 then 
		
		FireMissle( pNPCUnit, pX2Game )
			
	end
	
end





CANNONFORT_PARASITE_BODY_MISSILE_ATTACK_2_GUARDED = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,	

	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	SUPER_ARMOR					= TRUE,
	
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"CANNONFORT_PARASITE_BODY_WAIT_GUARDED",		"CT_CANNONFORT_PARASITE_BODY_WAIT_GUARDED"				},
	},
	
	
	CT_CANNONFORT_PARASITE_BODY_WAIT_GUARDED =
	{
		STATE_TIME_OVER				= 0.9,
	},
}



function CANNONFORT_PARASITE_BODY_MISSILE_ATTACK_2_GUARDED_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
		
	if pNPCUnit:GetStateTime() < 0.9 then 
		
		FireMissle( pNPCUnit, pX2Game )
		
	end
	
end









CANNONFORT_PARASITE_BODY_MISSILE_ATTACK_2_NASOD_EXPLODE = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,	

	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	SUPER_ARMOR					= TRUE,
	
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"CANNONFORT_PARASITE_BODY_WAIT_NASOD_EXPLODE",		"CT_CANNONFORT_PARASITE_BODY_WAIT_NASOD_EXPLODE"				},
	},
	
	
	CT_CANNONFORT_PARASITE_BODY_WAIT_NASOD_EXPLODE =
	{
		STATE_TIME_OVER				= 0.9,
	},
}



function CANNONFORT_PARASITE_BODY_MISSILE_ATTACK_2_NASOD_EXPLODE_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
		
	if pNPCUnit:GetStateTime() < 0.9 then 
		
		FireMissle( pNPCUnit, pX2Game )
		
	end
	
end




CANNONFORT_PARASITE_BODY_ATTACK_LASER_TOP = 
{
	ANIM_NAME					= "WaitHabit",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,	

	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	SUPER_ARMOR					= TRUE,
	
	
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"CANNONFORT_PARASITE_BODY_ATTACK_LASER",		"CT_CANNONFORT_PARASITE_BODY_ATTACK_LASER"				},
	},
	
	
	CT_CANNONFORT_PARASITE_BODY_ATTACK_LASER =
	{
		STATE_TIME_OVER				= 1.5,
	},
}



function CANNONFORT_PARASITE_BODY_ATTACK_LASER_TOP_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	if pNPCUnit:GetStateTime() < 0.9 then 
		
		FireLaser( pNPCUnit, pX2Game, 0 )
			
	end
	
end




CANNONFORT_PARASITE_BODY_ATTACK_LASER_BOTTOM = 
{
	ANIM_NAME					= "WaitHabit",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,	

	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	SUPER_ARMOR					= TRUE,
	
	ALARM =
	{
		DANGER  				 = TRUE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_15110,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = TRUE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_ORANGE"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 5, 				  			    -- 표시 지속 시간
	},
	
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"CANNONFORT_PARASITE_BODY_ATTACK_LASER_TOP",		"CT_CANNONFORT_PARASITE_BODY_ATTACK_LASER_TOP"				},
	},
	
	
	CT_CANNONFORT_PARASITE_BODY_ATTACK_LASER_TOP =
	{
		STATE_TIME_OVER				= 1.0,
	},
}



function CANNONFORT_PARASITE_BODY_ATTACK_LASER_BOTTOM_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	if pNPCUnit:GetStateTime() < 0.9 then 
		
		FireLaser( pNPCUnit, pX2Game, 1 )
		
		pNPCUnit:SetNowMP( 0 )
			
	end
	
end











CANNONFORT_PARASITE_BODY_ATTACK_LASER = 
{

	ANIM_NAME					= "Attack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SUPER_ARMOR					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,


	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"CANNONFORT_PARASITE_BODY_WAIT_NASOD_EXPLODE",		"CT_CANNONFORT_PARASITE_BODY_WAIT_NASOD_EXPLODE"				},
	},
	
	CT_CANNONFORT_PARASITE_BODY_WAIT_NASOD_EXPLODE =
	{
		STATE_TIME_OVER				= 1.4,
	},
	
}


------------------------------------------------------------------------------
function CANNONFORT_PARASITE_BODY_ATTACK_LASER_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	pX2Game:SetWorldColor_LUA( D3DXCOLOR(0.2,0.2,0.2,1) )

	if pNPCUnit:AnimEventTimer_LUA( 0.41 ) then
	
		pNPCUnit:PlaySound_LUA( "Energy.ogg" )
		bonePos = pNPCUnit:GetBonePos_LUA("Dummy5_Eye")	
		pMajorParticle = pX2Game:GetMajorParticle()
		pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "SpecialEnergyCenter",	bonePos, D3DXVECTOR2(20,40), D3DXVECTOR2(10,-1) )
		pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "SpecialEnergyLine",		bonePos, D3DXVECTOR2(40,80), D3DXVECTOR2(20,-1) )
		pParticle:SetBlackHolePosition( bonePos )
		pParticle:UseLookPoint( true )
		pParticle:SetLookPoint( bonePos )
		
	end

	if pNPCUnit:AnimEventTimer_LUA( 0.8 ) then
		
		pos		= pNPCUnit:GetPos()
		eyePos	= pNPCUnit:GetBonePos_LUA("Dummy5_Eye")
		landPos = pNPCUnit:GetLandPosition_LUA()
		bIsRight = pNPCUnit:GetIsRight()
		rotDegree = pNPCUnit:GetRotateDegree()
		dirVector = pNPCUnit:GetDirVector()
		vZVector = pNPCUnit:GetZVector()
		
				
		if bIsRight == false then
			eyePos = MovePos( eyePos, dirVector, 100 )
		else
			eyePos = MovePos( eyePos, dirVector, -100 )
		end
		eyePos = MovePos( eyePos, vZVector, 50 )

		
		pDamageEffect = pX2Game:GetDamageEffect()
		
		pMinorParticle = pX2Game:GetMinorParticle()
		pParticle = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Wally8thSpecialAttack",	eyePos, D3DXVECTOR2(20,40), D3DXVECTOR2(10,-1) )
		if pParticle ~= nil then
			pParticle:SetAddRotate( rotDegree )
			pParticle:SetAxisAngle( rotDegree )
		end		
		
		pDamageEffect:CreateInstance_LUA( pNPCUnit, "CANNONFORT_PARASITE_LASER_BIG", eyePos, landPos.y )
		
		
		pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 70.0, 1.5 )
				
	end

end







CANNONFORT_PARASITE_BODY_DAMAGE_SMALL = 
{
	ANIM_NAME					= "Wait",		
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	NEVER_MOVE					= TRUE,
		
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CANNONFORT_PARASITE_BODY_WAIT_NASOD_EXPLODE",												},
	},
}



CANNONFORT_PARASITE_BODY_DYING_LAND_FRONT = 
{
	ANIM_NAME					= "Attack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= TRUE,

	INVINCIBLE					= { 0, 100, }, 		

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	NEVER_MOVE					= TRUE,
	DYING_END					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
}
	










function CANNONFORT_PARASITE_BODY_DAMAGE_SMALL_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end



function CANNONFORT_PARASITE_BODY_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pos = pNPCUnit:GetPos()	
	pos.y = pos.y + 100.0
	GetMinorParticle = pX2Game:GetMinorParticle()
	
	pSeq = GetMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DieLight",		pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	if pSeq ~= nil then
	
		pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		pNPCUnit:SetDieSeq( pSeq:GetHandle() )
	
	end
	pNPCUnit:PlaySound_LUA( "DieLight.ogg" )
	
end









------------------------------------------------------------------------------
-- UTIL FUNCTION
------------------------------------------------------------------------------




function FireMissle( pNPCUnit, pX2Game )

	if pNPCUnit:AnimEventTimer_LUA( 0.5 ) then	
			
		pNPC_UpperCannon = pX2Game:GetKeyCodeNPC( 2 ) 
		pNPC_LowerCannon = pX2Game:GetKeyCodeNPC( 4 ) 
		
		if pNPC_UpperCannon ~= nil and pNPC_UpperCannon:GetNowHP_LUA() > 0 then
			pNPC_UpperCannon:StateChange_LUA( "CANNONFORT_PARASITE_TOP_CANNON_OPEN", false )
		end
		
		if pNPC_LowerCannon ~= nil and pNPC_LowerCannon:GetNowHP_LUA() > 0 then
			pNPC_LowerCannon:StateChange_LUA( "CANNONFORT_PARASITE_BOTTOM_CANNON_OPEN", false )
		end
		
		pNPCUnit:ClearEventCheck(0.6)
		
	end
			
	if pNPCUnit:AnimEventTimer_LUA( 0.6 ) then
		pNPCUnit:ClearEventCheck(0.5)
	end

end




-- whichOne : 0-top, 1-bottom
function FireLaser( pNPCUnit, pX2Game, whichOne )

	if pNPCUnit:AnimEventTimer_LUA( 0.5 ) then	
		
		if whichOne == 0 then  
					
			pNPC_UpperFlower = pX2Game:GetKeyCodeNPC( 1 ) 
				
			if pNPC_UpperFlower ~= nil and pNPC_UpperFlower:GetNowHP_LUA() > 0 then
			
				pNPC_UpperFlower:StateChange_LUA( "CANNONFORT_PARASITE_TOP_EYE_OPEN_LASER", false )
			end
		
		elseif whichOne == 1 then
		
			pNPC_LowerFlower = pX2Game:GetKeyCodeNPC( 3 ) 
			if pNPC_LowerFlower ~= nil and pNPC_LowerFlower:GetNowHP_LUA() > 0 then
				
				pNPC_LowerFlower:StateChange_LUA( "CANNONFORT_PARASITE_BOTTOM_EYE_OPEN_LASER", false )
			end
		end
		
	end
	
end




------------------------------------------------------------------------------
function MovePos( pos, dirvector, dist )
	
	pos.x = pos.x + dist * dirvector.x
	pos.y = pos.y + dist * dirvector.y
	pos.z = pos.z + dist * dirvector.z
	
	return pos
	
end





