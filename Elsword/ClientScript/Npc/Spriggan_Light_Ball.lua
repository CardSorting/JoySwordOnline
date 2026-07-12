-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	UNIT_WIDTH		= 0.0,
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
      "Hit_LightBall.ogg",
      "Spriggan_Light_Ball_Start.ogg",	
      "Spriggan_Light_Ball_Loop.ogg",	
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "NUI_SPRIGGAN_LIGHT_BALL.X",
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
}


INIT_COMPONENT = 
{

	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 130,
	
	USE_SLASH_TRACE		= FALSE,
	
	SHADOW_SIZE			= 0,
	--SHADOW_FILE_NAME	= "shadow.dds",
	
	--SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	--SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	--SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	--HEAD_BONE_NAME		= "Spike_Leaf1",
	SHOW_ON_MINIMAP		= FALSE,

	NOT_EXTRA_DAMAGE	= TRUE,
}

INIT_STATE = 
{
	{ STATE_NAME = "SPRIGGAN_LIGHT_BALL_START",					LUA_STATE_START_FUNC = "SPRIGGAN_LIGHT_BALL_START_STATE_START",},
	{ STATE_NAME = "SPRIGGAN_LIGHT_BALL_WAIT",					LUA_STATE_START_FUNC = "SPRIGGAN_LIGHT_BALL_WAIT_STATE_START",},
	{ STATE_NAME = "SPRIGGAN_LIGHT_BALL_DYING",					LUA_STATE_START_FUNC = "SPRIGGAN_LIGHT_BALL_DYING_STATE_START",},
		
	{ STATE_NAME = "SPRIGGAN_LIGHT_BALL_DAMAGE",},


	START_STATE					= "SPRIGGAN_LIGHT_BALL_START",
	
	SMALL_DAMAGE_LAND_FRONT		= "SPRIGGAN_LIGHT_BALL_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "SPRIGGAN_LIGHT_BALL_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "SPRIGGAN_LIGHT_BALL_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "SPRIGGAN_LIGHT_BALL_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "SPRIGGAN_LIGHT_BALL_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "SPRIGGAN_LIGHT_BALL_DAMAGE",
	FLY_DAMAGE_FRONT			= "SPRIGGAN_LIGHT_BALL_DAMAGE",
	FLY_DAMAGE_BACK				= "SPRIGGAN_LIGHT_BALL_DAMAGE",
	SMALL_DAMAGE_AIR			= "SPRIGGAN_LIGHT_BALL_DAMAGE",	
	BIG_DAMAGE_AIR				= "SPRIGGAN_LIGHT_BALL_DAMAGE",
	DOWN_DAMAGE_AIR				= "SPRIGGAN_LIGHT_BALL_DAMAGE",
	UP_DAMAGE					= "SPRIGGAN_LIGHT_BALL_DAMAGE",
	DAMAGE_REVENGE				= "SPRIGGAN_LIGHT_BALL_DAMAGE",
	
	WAIT_STATES = { "SPRIGGAN_LIGHT_BALL_WAIT", },	
	
	DYING_LAND_FRONT			= "SPRIGGAN_LIGHT_BALL_DYING",
	DYING_LAND_BACK				= "SPRIGGAN_LIGHT_BALL_DYING",
	DYING_SKY				= "SPRIGGAN_LIGHT_BALL_DYING",

	COMMON_FRAME_FUNC           = "SPRIGGAN_LIGHT_BALL_COMMON_FRAME_MOVE",
	REVENGE_ATTACK				= "",
}

INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_NEAR_FIRST"],
		TARGET_INTERVAL				= 0.3,		-- sec
		TARGET_NEAR_RANGE			= 300,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 1000,		-- cm
		TARGET_LOST_RANGE			= 1200,	-- cm
		TARGET_SUCCESS_RATE			= 100,
		ATTACK_TARGET_RATE			= 0,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 0,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},
	
}



SPRIGGAN_LIGHT_BALL_START = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	LAND_CONNECT				= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	

    SOUND_PLAY0			= { 0.05, "Spriggan_Light_Ball_Start.ogg" },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,

	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE				= FALSE,
	VIEW_TARGET					= FALSE,
	
	ALARM =
	{
		DANGER  				 = TRUE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_15146,  		  		    --경고 문구
		DELAY   				 = 0,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 = TRUE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_ORANGE"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 = 5, 				  			    -- 표시 지속 시간
	},


}


SPRIGGAN_LIGHT_BALL_WAIT = 
{

	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	LAND_CONNECT				= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	

    SOUND_PLAY0			= { 0.001, "Spriggan_Light_Ball_Loop.ogg" },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	

}

SPRIGGAN_LIGHT_BALL_DAMAGE = 
{

	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	LAND_CONNECT				= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	

    	SOUND_PLAY0			= { 0.001, "Hit_LightBall.ogg" },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE				= FALSE,
	VIEW_TARGET					= FALSE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"SPRIGGAN_LIGHT_BALL_WAIT",		"CT_SPRIGGAN_LIGHT_BALL_WAIT"				},
	},
	
	CT_SPRIGGAN_LIGHT_BALL_WAIT = 
	{
		STATE_TIME_OVER			= 1.0,
	},


}


SPRIGGAN_LIGHT_BALL_DYING = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
}



function SPRIGGAN_LIGHT_BALL_COMMON_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
    
     
    if pNPCUnit:GetTimerElapsedTime( 1 ) > 25 then
		pNPCUnit:SetNowHP_LUA( 0 )
    end   
    
    if pNPCUnit:GetFlag_LUA(0) == true then
		return
    end
	
    
    if pNPCUnit:GetTimerElapsedTime( 0 ) > 10.0 then
		local pEffectSet = pX2Game:GetEffectSet()
		local hEffect = pNPCUnit:GetEffectSet_LUA( 0 )
	
		if 0 ~= hEffect then
			pEffectSet:StopEffectSet_LUA( hEffect )
			pNPCUnit:ClearEffectSet_LUA( 0 )
		end
		pNPCUnit:SetFlag_LUA(0, true) -- 빛의 구슬 완전히 생성
		
		pEffectSet:PlayEffectSet_LUA( "EffectSet_Sprriggan_Light_Ball", pNPCUnit )
		
		pNPCUnit:SetTimerRestart( 1 )
	end	
	
end


function SPRIGGAN_LIGHT_BALL_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:SetTimerRestart( 0 )

	local hEffect = pNPCUnit:GetEffectSet_LUA( 0 )
	
	if 0 == hEffect then
		local pEffectSet = pX2Game:GetEffectSet()
		hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_Sprriggan_Light_Ball_Start", pNPCUnit )
		pNPCUnit:SetEffectSet_LUA(0, hEffect)
	end
end

function SPRIGGAN_LIGHT_BALL_WAIT_STATE_START( pKTDXApp, pX2Game, pNPCUnit )


end

function SPRIGGAN_LIGHT_BALL_DYING_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	local iKeyCode = pNPCUnit:GetKeyCode()
	local pUnit = nil
	if iKeyCode >= 10 then
		pUnit = pX2Game:GetKeyCodeNPC(1)
	elseif iKeyCode >= 20 then
		pUnit = pX2Game:GetKeyCodeNPC(2)
	else
		pUnit = pNPCUnit:GetConsultNpc( NPC_UNIT_ID["NUI_SPRIGGAN_SMALL"] )
	end
	if pUnit ~= nil then
		if iKeyCode >= 20 then
			iKeyCode = iKeyCode - 20
		elseif iKeyCode >= 10 then
			iKeyCode = iKeyCode - 10
		end

		pUnit:SetFlag_LUA(iKeyCode, false)
		
		local NumLightBall = pUnit:GetInt_LUA(1)
		NumLightBall = NumLightBall - 1
		pUnit:SetInt_LUA(1, NumLightBall)
		
	end
end



