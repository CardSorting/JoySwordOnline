-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	UNIT_WIDTH		= 400.0,
	UNIT_HEIGHT		= 1000.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	UNIT_SCALE		= 1.7,
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

}

INIT_STATE = 
{
    { STATE_NAME = "VALENTINE_POSION_CUP_KILLER_START",	},
	{ STATE_NAME = "VALENTINE_POSION_CUP_KILLER_WAIT",	},
	{ STATE_NAME = "VALENTINE_POSION_CUP_KILLER_CREATE_BUFF",  LUA_STATE_START_FUNC =  "VALENTINE_POSION_CUP_KILLER_CREATE_BUFF_STATE_START",
																STATE_COOL_TIME = 20,},
	{ STATE_NAME = "VALENTINE_POSION_CUP_KILLER_ATTACK_READY", LUA_STATE_START_FUNC =  "VALENTINE_POSION_CUP_KILLER_ATTACK_READY_STATE_START",		 },
	{ STATE_NAME = "VALENTINE_POSION_CUP_KILLER_ATTACK", LUA_STATE_START_FUNC =  "VALENTINE_POSION_CUP_KILLER_ATTACK_STATE_START",		 },

	START_STATE					= "VALENTINE_POSION_CUP_KILLER_START",
	WAIT_STATE					= "VALENTINE_POSION_CUP_KILLER_WAIT",
}

INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_NEAR_FIRST"],
		TARGET_INTERVAL				= 3,		-- sec
		TARGET_NEAR_RANGE			= 450,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 1000,		-- cm
		TARGET_LOST_RANGE			= 1000,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --100,		-- %
		ATTACK_TARGET_RATE			= 0,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 0,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},
}

VALENTINE_POSION_CUP_KILLER_START =
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	INVINCIBLE					= { 0, 100, }, 	
	
	ALARM =
	{
		--DANGER  				 = TRUE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_23280,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = TRUE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_ORANGE"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 5, 				  			    -- 표시 지속 시간
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],			"VALENTINE_POSION_CUP_KILLER_WAIT",	},
	},
}

VALENTINE_POSION_CUP_KILLER_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	INVINCIBLE					= { 0, 100, }, 	
	
	EVENT_INTERVAL_TIME0		= 1,	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"VALENTINE_POSION_CUP_KILLER_CREATE_BUFF",	"CT_VALENTINE_POSION_CUP_KILLER_CREATE_BUFF",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"VALENTINE_POSION_CUP_KILLER_ATTACK_READY",	"CT_VALENTINE_POSION_CUP_KILLER_ATTACK_READY",	},
	},
	CT_VALENTINE_POSION_CUP_KILLER_CREATE_BUFF =
	{
		RATE = 100,
		EVENT_INTERVAL_ID		= 0,
	},
	CT_VALENTINE_POSION_CUP_KILLER_ATTACK_READY = 
	{
		DISTANCE_TO_TARGET_NEAR = 400,
		EVENT_INTERVAL_ID		= 0,
		IS_ANOTHER_TEAM			= TRUE,
	},
}
VALENTINE_POSION_CUP_KILLER_CREATE_BUFF = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	INVINCIBLE					= { 0, 100, }, 	
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],			"VALENTINE_POSION_CUP_KILLER_WAIT",	},
	},
}

function VALENTINE_POSION_CUP_KILLER_CREATE_BUFF_STATE_START( pKTDXApp, pX2Game, pNPCUnit )		

	local RandValue = pNPCUnit:GetRandVal() % 2
	local vSummonPos = pX2Game:GetLineMap():GetStartPosition( 2 )
	
	if 0 == RandValue then
		pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_VALENTINE_LOVE_HEART_RED"], pNPCUnit:GetHardLevel(), true, vSummonPos, false, 0.1, true  )
	else
		pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_VALENTINE_LOVE_HEART_BLUE"], pNPCUnit:GetHardLevel(), true, vSummonPos, false, 0.1, true  )
	end
		
end
VALENTINE_POSION_CUP_KILLER_ATTACK_READY = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	INVINCIBLE					= { 0, 100, }, 	
	
	EVENT_INTERVAL_TIME0		= 1,	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"VALENTINE_POSION_CUP_KILLER_ATTACK",	"CT_VALENTINE_POSION_CUP_KILLER_ATTACK",	},
	},
	
	CT_VALENTINE_POSION_CUP_KILLER_ATTACK = 
	{
		STATE_TIME_OVER			= 1.5,
		EVENT_INTERVAL_ID		= 0,
	},
}
function VALENTINE_POSION_CUP_KILLER_ATTACK_READY_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
		
	--컵 케익 폐기 지시 확인 플래그
	pNPCUnit:SetFlag_LUA( 0, false )
	
	local pNPC = pX2Game:GetNearestNpcInSpecificRangeByNpcId_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_VALENTINE_POISON_CUP_CAKE"], 850 )
	if nil ~= pNPC then
		pNPC:StateChange_LUA( "POISON_CUP_CAKE_DISUSE", true )	
		pNPCUnit:SetFlag_LUA( 0, true )
	end
end
VALENTINE_POSION_CUP_KILLER_ATTACK = 
{
	ANIM_NAME					= "Attack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	INVINCIBLE					= { 0, 100, }, 	

	SOUND_PLAY0			= { 0.01, "Nasod_Press0.ogg" },
	SOUND_PLAY1			= { 1.186, "Nasod_Press1.ogg" },
	SOUND_PLAY2			= { 1.712, "Nasod_Press2.ogg" },
	SOUND_PLAY3			= { 2.018, "Nasod_Press3.ogg" },  --쿵!!
	SOUND_PLAY4			= { 3.975, "Nasod_Press4.ogg" },
	SOUND_PLAY5			= { 4.883, "Nasod_Press5.ogg" },
	
	PARTICLE_SEQ = 
	{
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
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"VALENTINE_POSION_CUP_KILLER_WAIT",		},
	},
}
function VALENTINE_POSION_CUP_KILLER_ATTACK_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	--컵 케익 폐기 지시 확인 플래그
	if true == pNPCUnit:GetFlag_LUA( 0 ) then	
		if 2 > pX2Game:GetNPCUnitNumByNPCID(NPC_UNIT_ID["NUI_VALENTINE_POISON_CUP_CAKE"]) then	
			local vSummonPos = pX2Game:GetLineMap():GetStartPosition( 2 )
			pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_VALENTINE_POISON_CUP_CAKE"], pNPCUnit:GetHardLevel(), true, vSummonPos, false, 0.1, false  )		
			pX2Game:NotfiyCreateValentimeCupCake()
		end
	end
end
