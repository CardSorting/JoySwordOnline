-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{	
    UNIT_WIDTH		= 0,
	UNIT_HEIGHT		= 0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	},
	
	READY_SOUND = 
	{
	
	  "Velder_Trap_Switch_Damage.ogg",
	  
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_VELDER_STAGE6_BOSS_TRAP_SWITCH.x",
	ADD_ROTATE_Y			= -180.0,
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 400,
	RUN_SPEED			= 1200,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 2300,
}


INIT_COMPONENT = 
{
	MP_CHANGE_RATE			= 1,
	MP_CHARGE_RATE			= 130,
	
	SHADOW_SIZE				= 200,
	SHADOW_FILE_NAME		= "shadow.dds",
	
	SMALL_HP_BAR_BLUE		= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED		= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW		= "Small_HP_bar_Yellow.TGA",
	
	HITTED_TYPE				= HITTED_TYPE["HTD_WOOD"],

	DAMAGE_DOWN				= FALSE,
    DIE_FLY					= 0,
	NOT_EXTRA_DAMAGE    = TRUE,		
}

INIT_STATE = 
{
	{ STATE_NAME = "VELDER_STAGE6_BOSS_TRAP_SWITCH_WAIT",			},
	{ STATE_NAME = "VELDER_STAGE6_BOSS_TRAP_SWITCH_ATTACK_A",		STATE_COOL_TIME = 10,	},
	
	--리액션 관련
	{ STATE_NAME = "VELDER_STAGE6_BOSS_TRAP_SWITCH_DAMAGE",			LUA_STATE_START_FUNC = "VELDER_STAGE6_BOSS_TRAP_SWITCH_DAMAGE_START_STATE",		},
		
	START_STATE					= "VELDER_STAGE6_BOSS_TRAP_SWITCH_WAIT",
	WAIT_STATE					= "VELDER_STAGE6_BOSS_TRAP_SWITCH_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "VELDER_STAGE6_BOSS_TRAP_SWITCH_WAIT",
	SMALL_DAMAGE_LAND_BACK		= "VELDER_STAGE6_BOSS_TRAP_SWITCH_WAIT",
	BIG_DAMAGE_LAND_FRONT		= "VELDER_STAGE6_BOSS_TRAP_SWITCH_WAIT",
	BIG_DAMAGE_LAND_BACK		= "VELDER_STAGE6_BOSS_TRAP_SWITCH_WAIT",
	
	DOWN_DAMAGE_LAND_FRONT		= "VELDER_STAGE6_BOSS_TRAP_SWITCH_WAIT",
	DOWN_DAMAGE_LAND_BACK		= "VELDER_STAGE6_BOSS_TRAP_SWITCH_WAIT",
	
	FLY_DAMAGE_FRONT			= "VELDER_STAGE6_BOSS_TRAP_SWITCH_WAIT",
	FLY_DAMAGE_BACK				= "VELDER_STAGE6_BOSS_TRAP_SWITCH_WAIT",
	SMALL_DAMAGE_AIR			= "VELDER_STAGE6_BOSS_TRAP_SWITCH_WAIT",	
	BIG_DAMAGE_AIR				= "VELDER_STAGE6_BOSS_TRAP_SWITCH_WAIT",
	DOWN_DAMAGE_AIR				= "VELDER_STAGE6_BOSS_TRAP_SWITCH_WAIT",
	UP_DAMAGE					= "VELDER_STAGE6_BOSS_TRAP_SWITCH_WAIT",
	DAMAGE_REVENGE				= "VELDER_STAGE6_BOSS_TRAP_SWITCH_WAIT",	
	
	COMMON_FRAME_FUNC           = "VELDER_STAGE6_BOSS_TRAP_SWITCH_COMMON_FRAME_MOVE",
}

INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 3,		-- sec
		TARGET_NEAR_RANGE			= 250,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 9999,		-- cm
		TARGET_LOST_RANGE			= 9998,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --50,		-- %
		ATTACK_TARGET_RATE			= 100, -- 30,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, -- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 600,
		DEST_GAP			= 150,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 160,
		
		DIR_CHANGE_INTERVAL = 0.7,
		
		WALK_INTERVAL		= 3,
		NEAR_WALK_RATE		= 70,   --  70,
		FAR_WALK_RATE		= 70,   -- 30,
		
		JUMP_INTERVAL		= 5,
		UP_JUMP_RATE		= 100, -- 40,
		UP_DOWN_RATE		= 20,
		DOWN_JUMP_RATE		= 100,    --  20,
		DOWN_DOWN_RATE		= 40,
		
		--LINE_END_RANGE		= 100,	-- cm
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 50, --50,		
		PATROL_RANGE			= 150,
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
		
		--LINE_END_RANGE		= 80,	-- cm
	},

}



VELDER_STAGE6_BOSS_TRAP_SWITCH_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	CAN_PASS_UNIT				= TRUE,
	NEVER_MOVE					= TRUE,
	
	EVENT_INTERVAL_TIME0	= 1,
	
	EVENT_PROCESS = 
	{		
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"VELDER_STAGE6_BOSS_TRAP_SWITCH_ATTACK_A",		"CT_VELDER_STAGE6_BOSS_TRAP_SWITCH_ATTACK_A"		},
	},
	
	CT_VELDER_STAGE6_BOSS_TRAP_SWITCH_ATTACK_A = 
	{
	    EVENT_INTERVAL_ID					= 0,
		DISTANCE_TO_TARGET_NEAR				= 2400,
		RATE 								= 100,
	},
}

----------------리액션--------------------------------------------------------------

VELDER_STAGE6_BOSS_TRAP_SWITCH_ATTACK_A = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PASS_UNIT				= TRUE,
	NEVER_MOVE					= TRUE,

	--SOUND_PLAY0					= { 0.01, "Velder_Trap_Switch_Damage.ogg" },
	
	ALARM =
	{
		--DANGER  				 = TRUE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_15152,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = TRUE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_MAGENTA"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 7, 				  			    -- 표시 지속 시간
	},
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"VELDER_STAGE6_BOSS_TRAP_SWITCH_WAIT",							},	
	}	
}

	

VELDER_STAGE6_BOSS_TRAP_SWITCH_DAMAGE = 
{
	ANIM_NAME					= "Damage",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PASS_UNIT				= TRUE,
	NEVER_MOVE					= TRUE,

	SOUND_PLAY0					= { 0.01, "Velder_Trap_Switch_Damage.ogg" },
	
	
}


----------- state function----------------------------------------------------------
----------------------------------------------------------------------------------------
function VELDER_STAGE6_BOSS_TRAP_SWITCH_COMMON_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	local hp = pNPCUnit:GetNowHP() / pNPCUnit:GetMaxHP() * 100
	
	if hp < 5 and pNPCUnit:GetFlag_LUA(0) == false then
		local cHp = pNPCUnit:GetMaxHP()
        pNPCUnit:SetNowHP_LUA(cHp)
        
        pNPCUnit:StateChange_LUA("VELDER_STAGE6_BOSS_TRAP_SWITCH_DAMAGE", true )
        pNPCUnit:SetFlag_LUA( 0, true )
	end 
    
end

function VELDER_STAGE6_BOSS_TRAP_SWITCH_DAMAGE_START_STATE( pKTDXApp, pX2Game, pNPCUnit )

	local vLandPos 	= pNPCUnit:GetLandPosition_LUA()
	local npcUid	= pX2Game:GetNearNPCUnitUID_LUA( vLandPos, NPC_UNIT_ID["NUI_VELDER_STAGE6_BOSS_TRAP"], 2000 )
	
	if npcUid == 0 then
		return
	end
	
	local pWallNpc = pX2Game:GetNPCUnitByUID( npcUid )
	local pBossNpc = pX2Game:GetNPCUnitByType( NPC_UNIT_ID["NUI_DARK_NEPHILIM"] )
		
	if pWallNpc == nil or pBossNpc == nil then
		return
	end
	
	if	pWallNpc:GetXDistanceFrom( pBossNpc:GetPos().x ) < 800	or
		pBossNpc:GetPos().x < pWallNpc:GetPos().x				then
		return
	end
	
	pWallNpc:StateChange_LUA( "VELDER_STAGE6_BOSS_TRAP_ATTACK" )
	
end
