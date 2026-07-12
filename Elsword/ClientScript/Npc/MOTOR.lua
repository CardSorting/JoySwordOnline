-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	UNIT_WIDTH		= 530.0,
	UNIT_HEIGHT		= 150.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
		"Explosion_Sphere.dds",
		"Steam_Bp.dds",
		"Moter_Light_Bead.dds",
		"DarkGate_G_Baby_Potion2.dds",
	},
	
	READY_SOUND = 
	{
	},
	
	READY_XMESH = 
	{
	},
	
	READY_XSKIN_MESH = 
	{
		"rana_B_damageUp_circle_f15.X",
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME	= "Motion_MOTOR.x",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
}


INIT_COMPONENT = 
{
	MAX_HP				= 1500,

	SHADOW_SIZE			= 200,
	SHADOW_FILE_NAME	= "shadow.dds",
	
	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],

	DAMAGE_DOWN         = FALSE,	
	DIE_FLY				= FALSE,
	SKY_DIE             = FALSE,
}

INIT_STATE = 
{
	{ STATE_NAME = "MOTOR_START",							LUA_STATE_START_FUNC = "MOTOR_START_STATE_START",	
															LUA_STATE_END_FUNC = "MOTOR_START_STATE_END",	},
	{ STATE_NAME = "MOTOR_WAIT",							LUA_FRAME_MOVE_FUNC = "MOTOR_WAIT_FRAME_MOVE",	},
	{ STATE_NAME = "MOTOR_FULLCHARGE",						LUA_STATE_START_FUNC = "MOTOR_FULLCHARGE_STATE_START",
															LUA_FRAME_MOVE_FUNC = "MOTOR_FULLCHARGE_FRAME_MOVE",		},
	{ STATE_NAME = "MOTOR_LIGHT_OFF",						LUA_STATE_START_FUNC = "MOTOR_LIGHT_OFF_STATE_START",	},
															
	--리액션 관련
	{ STATE_NAME = "MOTOR_DAMAGE",							},
	{ STATE_NAME = "MOTOR_DYING",							LUA_STATE_START_FUNC = "MOTOR_DYING_STATE_START",	},
	
	
	START_STATE					= "MOTOR_START",
	WAIT_STATE					= "MOTOR_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "MOTOR_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "MOTOR_DAMAGE",
	SMALL_DAMAGE_AIR			= "MOTOR_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "MOTOR_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "MOTOR_DAMAGE",
	BIG_DAMAGE_AIR				= "MOTOR_DAMAGE",

	REVENGE_ATTACK				= "",
	
	DYING_LAND_FRONT			= "MOTOR_DYING",
	DYING_LAND_BACK				= "MOTOR_DYING",
	DYING_SKY					= "MOTOR_DYING",
	
	COMMON_FRAME_FUNC			= "MOTOR_COMMON_FRAMEMOVE",
}


INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 0,		-- sec
		TARGET_NEAR_RANGE			= 1000,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 9999,		-- cm
		TARGET_LOST_RANGE			= 9999,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --50,		-- %
		ATTACK_TARGET_RATE			= 100, -- 10,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, -- 50,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},
}

MOTOR_START = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	SPEED_X	= 0,
	SPEED_Y	= 0,
	
	CAN_PASS_ALLY_UNIT			= FALSE,
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	INVINCIBLE					= { 0, 100, },

	IMMADIATE_PACKET_SEND		= TRUE,
	RIGHT					= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MOTOR_WAIT", },
	},
}
function MOTOR_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	--pNPCUnit:SetInt_LUA( 0, 180 )	--불이 켜지는 주기가 바뀌는 시간 1분 = 60초
	--pNPCUnit:SetInt_LUA( 1, 10 )		--바뀌기 전의 불이 켜지는 주기 10초
	--pNPCUnit:SetInt_LUA( 2, 2.5 )	--바뀌고 난 후의 불이 켜지는 주기 2.5 초 (All 15s)
	pNPCUnit:SetInt_LUA( 3, 0 )		--불이 켜진 수
	
	pNPCUnit:SetFlag_LUA( 0, false )
	pNPCUnit:SetFlag_LUA( 1, false )

	pNPCUnit:SetTimerRestart( 0 )
	pNPCUnit:SetTimerRestart( 1 )
	pNPCUnit:SetTimerRestart( 3 )
end
function MOTOR_START_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local vPos = pNPCUnit:GetPos()
	vPos.x = 159210
	vPos.y = 425
	vPos.z = -61370
	pNPCUnit:SetPositionForce( vPos )
	
	local pEffectSet = pX2Game:GetEffectSet()
	if nil ~= pEffectSet then
		local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_MOTER_wind", pNPCUnit )
		if nil ~= hEffect then
			pNPCUnit:SetEffectSet_LUA( 6, hEffect )
			pNPCUnit:SetFlag_LUA( 2, true )
		end
	end
end


MOTOR_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PASS_ALLY_UNIT	= FALSE,
	
	NEVER_MOVE					= TRUE,
	RIGHT					= TRUE,
}
function MOTOR_WAIT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	if false == pNPCUnit:GetFlag_LUA( 2 ) then
		local pEffectSet = pX2Game:GetEffectSet()
		if nil ~= pEffectSet then
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_MOTER_wind", pNPCUnit )
			if nil ~= hEffect then
				pNPCUnit:SetEffectSet_LUA( 6, hEffect )
				pNPCUnit:SetFlag_LUA( 2, true )
			end
		end
	end
	
	if false == pNPCUnit:GetFlag_LUA( 1 ) then	
		--불이 켜지는 주기가 바뀌기 전
		if 180 > pNPCUnit:GetTimerElapsedTime( 0 ) then
			--정해진 초가 경과하면 불이 들어온다
			if 10 < pNPCUnit:GetTimerElapsedTime( 1 ) then
				local pEffectSet = pX2Game:GetEffectSet()
				if nil ~= pEffectSet then
					--불이 켜진 갯수
					local LightNum = pNPCUnit:GetInt_LUA( 3 )
					local LightEffect = { "EffectSet_MOTER_Charge01", "EffectSet_MOTER_Charge02", "EffectSet_MOTER_Charge03",
										  "EffectSet_MOTER_Charge04", "EffectSet_MOTER_Charge05", "EffectSet_MOTER_Charge06", }
					LightNum = LightNum + 1
					pNPCUnit:SetInt_LUA( 3, LightNum )
					local hEffect = pEffectSet:PlayEffectSet_LUA( LightEffect[LightNum], pNPCUnit )
					if nil ~= hEffect then
						pNPCUnit:SetEffectSet_LUA( LightNum, hEffect )
					end
					--타이머 리셋
					pNPCUnit:SetTimerRestart( 1 )
				end
			end
		
		--불이 켜지는 주기가 바뀐 후
		else
			--정해진 초가 경과하면 불이 들어온다
			if 2.5 < pNPCUnit:GetTimerElapsedTime( 1 ) then
				local pEffectSet = pX2Game:GetEffectSet()
				if nil ~= pEffectSet then
					--불이 켜진 갯수
					local LightNum = pNPCUnit:GetInt_LUA( 3 )
					local LightEffect = { "EffectSet_MOTER_Charge01", "EffectSet_MOTER_Charge02", "EffectSet_MOTER_Charge03",
										  "EffectSet_MOTER_Charge04", "EffectSet_MOTER_Charge05", "EffectSet_MOTER_Charge06", }
					LightNum = LightNum + 1
					pNPCUnit:SetInt_LUA( 3, LightNum )
					local hEffect = pEffectSet:PlayEffectSet_LUA( LightEffect[LightNum], pNPCUnit )
					if nil ~= hEffect then
						pNPCUnit:SetEffectSet_LUA( LightNum, hEffect )
					end
					--타이머 리셋
					pNPCUnit:SetTimerRestart( 1 )
				end
			end
		end
	end
end

MOTOR_DAMAGE = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SOUND_PLAY0	= { 0.001, "Swing_Big06.ogg", 100 },
	
	CAN_PASS_ALLY_UNIT	= FALSE,
	
	LAND_CONNECT			= FALSE,

	NEVER_MOVE				= TRUE,
	RIGHT							= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MOTOR_WAIT", },
	},
}



MOTOR_FULLCHARGE =
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SOUND_PLAY0	= { 1.000, "swordcrash.ogg", 100 },
		
	CAN_PASS_ALLY_UNIT	= FALSE,
	
	LAND_CONNECT			= FALSE,

	NEVER_MOVE				= TRUE,
	RIGHT							= TRUE,
	INVINCIBLE					= { 0, 100, },
	
	ALARM =
	{
		DANGER  							 = FALSE,  				    	    --DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_26755,  		  		    --경고 문구
		DELAY   							 = 0.001,  				    	 		--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   				 		 = FALSE,  		 		   		    --한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_YELLOW"],  --경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  		 	 = 3, 				  			    -- 표시 지속 시간
	},
}
function MOTOR_FULLCHARGE_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetTimerRestart( 2 )
end
function MOTOR_FULLCHARGE_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if 1.5 < pNPCUnit:GetTimerElapsedTime( 2 ) and false == pNPCUnit:GetFlag_LUA( 0 ) then
		--화면 번쩍
		pMajorParticle = pX2Game:GetMajorParticle()
		if nil ~= pMajorParticle then		
			pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit,  "WhiteOut", D3DXVECTOR3(0,0,0), D3DXVECTOR2(-1,-1), D3DXVECTOR2(1,-1) )
		end
		pNPCUnit:SetFlag_LUA( 0, true )
		
		--맵안에 npc 개체수를 받아옴
		local iNumOfNpc = pX2Game:GetNPCUnitListSize()
		--개체수만큼 for문을 돌며 검사
		for i = 0, iNumOfNpc - 1 do
			local pNpc = pX2Game:GetNPCUnit( i )
			if nil ~= pNpc then
				if false == pNpc:IsUnitID( NPC_UNIT_ID["NUI_DUNGEON_CHECKER1"] ) and
					false == pNpc:IsUnitID( NPC_UNIT_ID["NUI_DUNGEON_CHECKER2"] ) and
					false == pNpc:IsUnitID( NPC_UNIT_ID["NUI_DUNGEON_CHECKER3"] ) and
					false == pNpc:IsUnitID( NPC_UNIT_ID["NUI_DUNGEON_CHECKER4"] ) and
					false == pNpc:IsUnitID( NPC_UNIT_ID["NUI_DUNGEON_CHECKER5"] ) and
					false == pNpc:IsUnitID( NPC_UNIT_ID["NUI_VEHIMOS"] ) and
					false == pNpc:IsUnitID( NPC_UNIT_ID["NUI_MOTOR"] ) then
					--죽인다
					pNpc:SetNowHP_LUA( 0 )
				end
			end
		end
	end
	
	if 2.0 < pNPCUnit:GetTimerElapsedTime( 2 ) then
		--맵안에 npc 개체수를 받아옴
		local iNumOfNpc = pX2Game:GetNPCUnitListSize()
		--개체수만큼 for문을 돌며 검사
		for i = 0, iNumOfNpc - 1 do
			local pNpc = pX2Game:GetNPCUnit( i )
			if nil ~= pNpc then
				if false == pNpc:IsUnitID( NPC_UNIT_ID["NUI_DUNGEON_CHECKER1"] ) and
					false == pNpc:IsUnitID( NPC_UNIT_ID["NUI_DUNGEON_CHECKER2"] ) and
					false == pNpc:IsUnitID( NPC_UNIT_ID["NUI_DUNGEON_CHECKER3"] ) and
					false == pNpc:IsUnitID( NPC_UNIT_ID["NUI_DUNGEON_CHECKER4"] ) and
					false == pNpc:IsUnitID( NPC_UNIT_ID["NUI_DUNGEON_CHECKER5"] ) and
					false == pNpc:IsUnitID( NPC_UNIT_ID["NUI_VEHIMOS"] ) and
					false == pNpc:IsUnitID( NPC_UNIT_ID["NUI_MOTOR"] ) then
					--죽인다
					pNpc:SetNowHP_LUA( 0 )
				end
			end
		end
		pNPCUnit:StateChange_LUA( "MOTOR_WAIT" )
	end
end	

MOTOR_DYING = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PASS_ALLY_UNIT	= FALSE,
	
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		
	NEVER_MOVE					= TRUE,
	RIGHT					= TRUE,
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}
function MOTOR_DYING_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	local pEffectSet = pX2Game:GetEffectSet()
	if nil ~= pEffectSet then
		local hEffect = pNPCUnit:GetEffectSet_LUA( 6 )
		pEffectSet:StopEffectSet_LUA( hEffect )
	end		
end
---------------------------------------------------------------------------------

MOTOR_LIGHT_OFF =
{	
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PASS_ALLY_UNIT	= FALSE,
	
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		
	NEVER_MOVE					= TRUE,
	RIGHT					= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"MOTOR_WAIT", },
	},
	
	IMMADIATE_PACKET_SEND		= TRUE,
}
function MOTOR_LIGHT_OFF_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	--만약 불이 켜진게 있으면 꺼주자
	local pEffectSet = pX2Game:GetEffectSet()
	if nil ~= pEffectSet then
		local Light = pNPCUnit:GetInt_LUA( 3 )
		if Light > 0 then
			local hEffect = pNPCUnit:GetEffectSet_LUA( Light )
			pEffectSet:StopEffectSet_LUA( hEffect )
			Light = Light - 1
			pNPCUnit:SetInt_LUA( 3, Light )
		end
	end		
end


-------------------------------------------------------------------------------------------------------------
function MOTOR_COMMON_FRAMEMOVE( pKTDXApp, pX2Game, pNPCUnit )

	if 1.0 < pNPCUnit:GetTimerElapsedTime( 3 ) then --1초마다 체크함
		local fRemainHPRate = pNPCUnit:GetNowHP() / pNPCUnit:GetMaxHP()
			
		if fRemainHPRate <= 0.5 then
			pNPCUnit:SetNowHP_LUA( pNPCUnit:GetMaxHP() )
			pNPCUnit:StateChange_LUA( "MOTOR_LIGHT_OFF" )	
		end
		
		if false == pNPCUnit:GetFlag_LUA( 1 ) then
			--불이 6개 켜지면 DUMY 몬스터를 죽여 던전을 클리어 시키자
			if pNPCUnit:GetInt_LUA( 3 ) > 5 then	
				--불 1~5까진 꺼주자(6번이 모든 불을 색깔바꿔 키는 이펙트이기 때문에 중첩됨)
				local pEffectSet = pX2Game:GetEffectSet()
				if nil ~= pEffectSet then
					for i = 1, 5 do
						local hEffect = pNPCUnit:GetEffectSet_LUA( i )
						pEffectSet:StopEffectSet_LUA( hEffect )
					end
				end	
				pNPCUnit:StateChange_LUA( "MOTOR_FULLCHARGE" )
				pNPCUnit:SetFlag_LUA( 1, true )
			end
		end
		
		pNPCUnit:SetTimerRestart( 3 )
	end
end