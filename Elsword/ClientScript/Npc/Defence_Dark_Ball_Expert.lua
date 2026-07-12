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
	MOTION_FILE_NAME		= "Motion_DEFENCE_DARK_BALL.X",
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
	IMMUNITY_TIME_STOP = TRUE,
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
	{ STATE_NAME = "DEFENCE_DARK_BALL_START",					LUA_STATE_START_FUNC = "DEFENCE_DARK_BALL_START_STATE_START",},
	{ STATE_NAME = "DEFENCE_DARK_BALL_WAIT",					LUA_STATE_START_FUNC = "DEFENCE_DARK_BALL_WAIT_STATE_START",
																LUA_FRAME_MOVE_FUNC = "DEFENCE_DARK_BALL_WAIT_FRAME_MOVE", },
	{ STATE_NAME = "DEFENCE_DARK_BALL_DYING",					LUA_STATE_START_FUNC = "DEFENCE_DARK_BALL_DYING_STATE_START",},
		
	{ STATE_NAME = "DEFENCE_DARK_BALL_DAMAGE",},


	START_STATE					= "DEFENCE_DARK_BALL_START",
	
	SMALL_DAMAGE_LAND_FRONT		= "DEFENCE_DARK_BALL_WAIT",
	SMALL_DAMAGE_LAND_BACK		= "DEFENCE_DARK_BALL_WAIT",
	BIG_DAMAGE_LAND_FRONT		= "DEFENCE_DARK_BALL_WAIT",
	BIG_DAMAGE_LAND_BACK		= "DEFENCE_DARK_BALL_WAIT",
	DOWN_DAMAGE_LAND_FRONT		= "DEFENCE_DARK_BALL_WAIT",
	DOWN_DAMAGE_LAND_BACK		= "DEFENCE_DARK_BALL_WAIT",
	FLY_DAMAGE_FRONT			= "DEFENCE_DARK_BALL_WAIT",
	FLY_DAMAGE_BACK				= "DEFENCE_DARK_BALL_WAIT",
	SMALL_DAMAGE_AIR			= "DEFENCE_DARK_BALL_WAIT",	
	BIG_DAMAGE_AIR				= "DEFENCE_DARK_BALL_WAIT",
	DOWN_DAMAGE_AIR				= "DEFENCE_DARK_BALL_WAIT",
	UP_DAMAGE					= "DEFENCE_DARK_BALL_WAIT",
	DAMAGE_REVENGE				= "DEFENCE_DARK_BALL_WAIT",
	
	DYING_LAND_FRONT			= "DEFENCE_DARK_BALL_DYING",
	DYING_LAND_BACK				= "DEFENCE_DARK_BALL_DYING",
	DYING_SKY				= "DEFENCE_DARK_BALL_DYING",

	COMMON_FRAME_FUNC           = "",
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



DEFENCE_DARK_BALL_START = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	INVINCIBLE					= { 0, 100, },	
	
	LAND_CONNECT				= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
    SOUND_PLAY0			= { 0.05, "Spriggan_Light_Ball_Start.ogg" },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,

	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE				= FALSE,
	VIEW_TARGET					= FALSE,

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"DEFENCE_DARK_BALL_WAIT",		"CT_DEFENCE_DARK_BALL_WAIT"				},
	},
	

	CT_DEFENCE_DARK_BALL_WAIT = 
	{
		STATE_TIME_OVER			= 0.1,
	},
}


DEFENCE_DARK_BALL_WAIT = 
{

	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,

	INVINCIBLE					= { 0, 100, },		
	
	LAND_CONNECT				= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	

    SOUND_PLAY0			= { 0.001, "Spriggan_Light_Ball_Loop.ogg" },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE				= FALSE,
	VIEW_TARGET					= FALSE,


}

DEFENCE_DARK_BALL_DAMAGE = 
{

	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	LAND_CONNECT				= TRUE,
	
	INVINCIBLE					= { 0, 100, },		
	
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
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"DEFENCE_DARK_BALL_WAIT",		"CT_DEFENCE_DARK_BALL_WAIT"				},
	},
	
	CT_DEFENCE_DARK_BALL_WAIT = 
	{
		STATE_TIME_OVER			= 1.0,
	},


}


DEFENCE_DARK_BALL_DYING = 
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






function DEFENCE_DARK_BALL_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	local hEffect = pNPCUnit:GetEffectSet_LUA( 0 )
	
	if 0 == hEffect then
		local pEffectSet = pX2Game:GetEffectSet()
		--hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_Defence_Dark_Ball", pNPCUnit )
		pNPCUnit:SetEffectSet_LUA(0, hEffect);
	end
	
	
	RESET_SUMMON_GROUP_TIMER(pX2Game, pNPCUnit)


	----------Summon Group Phase 1
	pNPCUnit:SetInt_LUA(0, 0)
	----------Random Offset
	pNPCUnit:SetInt_LUA(1, 0)
	-------------------------
	pNPCUnit:SetInt_LUA(5, 1)

end


function DEFENCE_DARK_BALL_WAIT_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

end


function DEFENCE_DARK_BALL_DYING_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

end




--- Timer(0) : 몬스터1 Summon Interval
--- Timer(1) : 몬스터2 Summon Interval
--- Timer(2) : 몬스터3 Summon Interval
--- Timer(3) : 몬스터4 Summon Interval
--- Timer(4) : 몬스터5 Summon Interval

--- Timer(5) : 몬스터1 Summon Duration
--- Timer(6) : 몬스터2 Summon Duration
--- Timer(7) : 몬스터3 Summon Duration
--- Timer(8) : 몬스터4 Summon Duration
--- Timer(9) : 몬스터5 Summon Duration

--- Vector(0) : 몬스터1 local delay time
--- Vector(1) : 몬스터2 local delay time
--- Vector(2) : 몬스터3 local delay time
--- Vector(3) : 몬스터4 local delay time
--- Vector(4) : 몬스터5 local delay time
--- Vector(5) : 몬스터 그룹 Global delay time
--- Vector(6) : 몬스터 최대 제한 Delay 체크 관련 time

--- Int(0) : 몬스터 그룹 생성 Phase 번호
--- Int(1) : 몬스터 생성 random offset
--- Int(2) : 몬스터 생성 서브 그룹 번호
--- Int(5) : 임시저장소

--- Flag(0) : 몬스터1  생산 중
--- Flag(1) : 몬스터2  생산 중
--- Flag(2) : 몬스터3  생산 중
--- Flag(3) : 몬스터4  생산 중
--- Flag(4) : 몬스터5  생산 중
--- Flag(5) : 몬스터 최대 제한 Delay 체크 관련 bool




function DEFENCE_DARK_BALL_WAIT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
--[[	-- 라운드 스타트 이펙트 때문에
	if pX2Game:IsHost() == false then
		return
	end
--]]


	if CAN_SUMMON_MONSTER(pX2Game, pNPCUnit) == false then
		return
	end
	
	CHECK_NEXT_SUMMON_GROUP(pX2Game, pNPCUnit)
	
	local iSummonGroupPhase = pNPCUnit:GetInt_LUA(0)
	
	--local iSummonSubGroup = pNPCUnit:GetInt_LUA(2) --2그룹 소환 -- 승만
	local iSummonSubGroup = 0 --1그룹만 소환
	
	if iSummonGroupPhase == 1 then
	
		if iSummonSubGroup == 0 then
			SUMMON_GROUP_1(pX2Game, pNPCUnit)
		else
			SUMMON_GROUP_1_2(pX2Game, pNPCUnit)
		end
		
	elseif iSummonGroupPhase == 2 then
	
		if iSummonSubGroup == 0 then
			SUMMON_GROUP_2(pX2Game, pNPCUnit)
		else
			SUMMON_GROUP_2_2(pX2Game, pNPCUnit)
		end
			
	elseif iSummonGroupPhase == 3 then
	
		if iSummonSubGroup == 0 then
			SUMMON_GROUP_3(pX2Game, pNPCUnit)
		else
			SUMMON_GROUP_3_2(pX2Game, pNPCUnit)
		end
	
	elseif iSummonGroupPhase == 4 then

		if iSummonSubGroup == 0 then
			SUMMON_GROUP_4(pX2Game, pNPCUnit)
		else
			SUMMON_GROUP_4_2(pX2Game, pNPCUnit)
		end
	
	elseif iSummonGroupPhase == 5 then

		if iSummonSubGroup == 0 then
			SUMMON_GROUP_5(pX2Game, pNPCUnit)
		else
			SUMMON_GROUP_5_2(pX2Game, pNPCUnit)
		end

	elseif iSummonGroupPhase == 6 then

		if iSummonSubGroup == 0 then
			SUMMON_GROUP_6(pX2Game, pNPCUnit)
		else
			SUMMON_GROUP_6_2(pX2Game, pNPCUnit)
		end
	
	elseif iSummonGroupPhase == 7 then

		if iSummonSubGroup == 0 then
			SUMMON_GROUP_7(pX2Game, pNPCUnit)
		else
			SUMMON_GROUP_7_2(pX2Game, pNPCUnit)
		end

	elseif iSummonGroupPhase == 8 then

		if iSummonSubGroup == 0 then
			SUMMON_GROUP_8(pX2Game, pNPCUnit)
		else
			SUMMON_GROUP_8_2(pX2Game, pNPCUnit)
		end
	
	elseif iSummonGroupPhase == 9 then

		if iSummonSubGroup == 0 then
			SUMMON_GROUP_9(pX2Game, pNPCUnit)
		else
			SUMMON_GROUP_9_2(pX2Game, pNPCUnit)
		end
	
	elseif iSummonGroupPhase == 10 then

		if iSummonSubGroup == 0 then
			SUMMON_GROUP_10(pX2Game, pNPCUnit)
		else
			SUMMON_GROUP_10_2(pX2Game, pNPCUnit)
		end

	elseif iSummonGroupPhase == 11 then

		if iSummonSubGroup == 0 then
			SUMMON_GROUP_11(pX2Game, pNPCUnit)
		else
			SUMMON_GROUP_11_2(pX2Game, pNPCUnit)
		end
	
	elseif iSummonGroupPhase == 12 then

		if iSummonSubGroup == 0 then
			SUMMON_GROUP_12(pX2Game, pNPCUnit)
		else
			SUMMON_GROUP_12_2(pX2Game, pNPCUnit)
		end

	elseif iSummonGroupPhase == 13 then

		if iSummonSubGroup == 0 then
			SUMMON_GROUP_13(pX2Game, pNPCUnit)
		else
			SUMMON_GROUP_13_2(pX2Game, pNPCUnit)
		end
	
	elseif iSummonGroupPhase == 14 then

		if iSummonSubGroup == 0 then
			SUMMON_GROUP_14(pX2Game, pNPCUnit)
		else
			SUMMON_GROUP_14_2(pX2Game, pNPCUnit)
		end
	
	elseif iSummonGroupPhase == 15 then

		if iSummonSubGroup == 0 then
			SUMMON_GROUP_15(pX2Game, pNPCUnit)
		else
			SUMMON_GROUP_15_2(pX2Game, pNPCUnit)
		end
	
	elseif iSummonGroupPhase == 16 then
		pNPCUnit:StateChange_LUA("DEFENCE_DARK_BALL_DYING", true)
	else
		local iLastSummonGroupPhase = pNPCUnit:GetInt_LUA(5)
		pNPCUnit:SetInt_LUA(0, iLastSummonGroupPhase)
		RESET_SUMMON_GROUP_TIMER(pX2Game, pNPCUnit)
	end

end


function CAN_SUMMON_MONSTER(pX2Game, pNPCUnit)


	if pX2Game:LiveKeyCodeNPCNum(pNPCUnit:GetKeyCode())	> 30	then		--(자신이 소환한 개체수(자신을 포함))
		
		if pNPCUnit:GetFlag_LUA(5) == true then
			pNPCUnit:SetFlag_LUA(5, false)
			local fNowFirstCheckTime = pX2Game:GetGameTime()
			pNPCUnit:SetVector_LUA(6, D3DXVECTOR3(fNowFirstCheckTime, 0, 0))
			
			return false
		end
		
		local vLastCheckTime = pNPCUnit:GetVector_LUA(6)
		local fLastCheckTime = vLastCheckTime.x
		
		local fNowCheckTime = pX2Game:GetGameTime()
		
		pNPCUnit:SetVector_LUA(6, D3DXVECTOR3(fNowCheckTime, 0, 0))
		
		local fDelayTime = fNowCheckTime - fLastCheckTime
		
		
		local vGlobalDelayTime = pNPCUnit:GetVector_LUA(5)
		vGlobalDelayTime.x = vGlobalDelayTime.x + fDelayTime
		pNPCUnit:SetVector_LUA(5, vGlobalDelayTime)
		
		for i=0, 4 do
			local vLocalDelayTime = pNPCUnit:GetVector_LUA(i)
			vLocalDelayTime.x = vLocalDelayTime.x + fDelayTime
			pNPCUnit:SetVector_LUA(i, vLocalDelayTime)
		end
		
		return false
	else
		------ 몬스터 소환 제한의 첫번째 진입
		pNPCUnit:SetFlag_LUA(5, true)
	end

	return true
end


function CHECK_NEXT_SUMMON_GROUP(pX2Game, pNPCUnit)
	
	local iSummonGroupPhase = pNPCUnit:GetInt_LUA(0)
	
	for i=0, 4 do
		local bSummonOnTheWay = pNPCUnit:GetFlag_LUA(i)
		
		if bSummonOnTheWay == true then
			return
		end	
	end
	
	if iSummonGroupPhase >= 15 then												--소환 종료 후, 자신이 소환한 몬스터가 없으면 사망
		if pX2Game:LiveKeyCodeNPCNum(pNPCUnit:GetKeyCode())	<= 1	then		--(하나는 자기 자신)  ---맵상에 최대 몬스터 숫자 --승만
			pNPCUnit:SetNowHP_LUA(0)
		else
			return;
		end
	else
		if pX2Game:LiveKeyCodeNPCNum(pNPCUnit:GetKeyCode())	> 12	then		--(하나는 자기 자신)  ---맵상에 최대 몬스터 숫자 --승만
			return
		end
	end
	
	
	iSummonGroupPhase = iSummonGroupPhase + 1
	pNPCUnit:SetInt_LUA(0, iSummonGroupPhase)

	--------------------------------------------------------
	if iSummonGroupPhase > 0 and iSummonGroupPhase < 16 then
		pNPCUnit:SetInt_LUA(5, iSummonGroupPhase)
	end

	local iSummonSubGroup = pNPCUnit:GetRandVal(iSummonGroupPhase) % 2
	pNPCUnit:SetInt_LUA(2, iSummonSubGroup)
		
	RESET_SUMMON_GROUP_TIMER(pX2Game, pNPCUnit)
	
	
	local pDarknessBoss = pX2Game:GetNPCUnitByType( NPC_UNIT_ID["NUI_DEFENCE_DARKNESS_BOSS_EXPERT"] )
	
	if pDarknessBoss ~= nil then
		local iFastestSummonGroup = pDarknessBoss:GetInt_LUA(1)
		if iSummonGroupPhase > iFastestSummonGroup then
		--{{SERV_DUNGEON_FORCED_EXIT_SYSTEM
		--// 오현빈 // 2013-01-21 // 어문 웨이브 변경 시에 서버에 알려주도록 추가
		-- 해외팀 강퇴 시스템 제거로 인해 주석 처리
		--	pX2Game:Send_EGS_DEFENCE_DUNGEON_WAVE_ID_NOT( iSummonGroupPhase )		
		--}}SERV_DUNGEON_FORCED_EXIT_SYSTEM
			pDarknessBoss:SetInt_LUA(1, iSummonGroupPhase)
		end 
	end
end

function RESET_SUMMON_GROUP_TIMER(pX2Game, pNPCUnit)


	pNPCUnit:SetVector_LUA(5, D3DXVECTOR3(0, 0, 0)) -- vGlobalDelayTime

	for i=0, 4 do
		pNPCUnit:SetFlag_LUA(i, false)
		pNPCUnit:SetTimerRestart( i )
		pNPCUnit:SetTimerRestart( i + 5)
		pNPCUnit:SetVector_LUA(i, D3DXVECTOR3(0, 0, 0)) -- vLocalDelayTime
	end

end

-------------------(A:위치,		B:소환간격,			C:소환시간,			D:엘리트확률,		E:엘리트최대개체,	F:드랍여부, G:몬스터ID,	)---------------------	
function SUMMON_NPC(PosOffset,	fSummonInterval,	fSummonDuration,	fRateSummonElite,	MaxSummonElite,		IsNoDrop,	NPCID,		pX2Game, pNPCUnit, Index )

	local vGlobalDelayTime = pNPCUnit:GetVector_LUA(5)
	local fGlobalDelayTime = vGlobalDelayTime.x
	
	local vLocalDelayTime = pNPCUnit:GetVector_LUA(Index)
	local fLocalDelayTime = vLocalDelayTime.x
	
	
	if pNPCUnit:GetTimerElapsedTime( Index + 5 ) > fSummonDuration + fGlobalDelayTime then
		pNPCUnit:SetFlag_LUA(Index, false)
		return
	else
		pNPCUnit:SetFlag_LUA(Index, true)
	end
	
	
	if pNPCUnit:GetTimerElapsedTime( Index ) > fSummonInterval + fLocalDelayTime then		
		local vSummonPos = pNPCUnit:GetPos()
		
		vSummonPos.x = vSummonPos.x + PosOffset.x
		vSummonPos.y = vSummonPos.y + PosOffset.y
		vSummonPos.z = vSummonPos.z + PosOffset.z

		local iRandomOffset = pNPCUnit:GetInt_LUA(1)
		local fRate = pNPCUnit:GetRandVal(iRandomOffset) % 100
		iRandomOffset = iRandomOffset + 1
		pNPCUnit:SetInt_LUA(1, iRandomOffset)
		
		
		if fRate > fRateSummonElite then
			pX2Game:CreateNPCReqElite( NPCID, pNPCUnit:GetHardLevel(), true, vSummonPos, false, D3DXVECTOR3(0.0, pNPCUnit:GetKeyCode(), 0), IsNoDrop, false  )
		else
			local iSummonedEliteMonsterNum = pX2Game:GetEliteKeyCodeNPCUnitNum(pNPCUnit:GetKeyCode())
		
			if iSummonedEliteMonsterNum >= MaxSummonElite then
				pX2Game:CreateNPCReqElite( NPCID, pNPCUnit:GetHardLevel(), true, vSummonPos, false, D3DXVECTOR3(0.0, pNPCUnit:GetKeyCode(), 0), IsNoDrop, false  )
			else
				pX2Game:CreateNPCReqElite( NPCID, pNPCUnit:GetHardLevel(), true, vSummonPos, false, D3DXVECTOR3(0.0, pNPCUnit:GetKeyCode(), 0), IsNoDrop, true  )
			end
		end
		
		pNPCUnit:SetTimerRestart( Index )
		
		pNPCUnit:SetVector_LUA(Index, D3DXVECTOR3(0, 0, 0))
	end
end




---첫번째 그룹 시작 
---아래쪽---


function SUMMON_GROUP_1( pX2Game, pNPCUnit )

	local vPosOffset = D3DXVECTOR3(0, 0, 0)
	
	----------(A:위치, B:소환간격, C:소환시간, D:엘리트확률, E:엘리트최대개체, F:드랍여부, G:몬스터ID)---------------------	
	----------(A,			B,		  C,	D,	E,	 F,			G)---------------------------------------------------------------
	SUMMON_NPC(vPosOffset,	1, 		 1.1,	5,	2,	false,	NPC_UNIT_ID["NUI_DEFENCE_AIRSHIP_SOLDIER_SWORDMAN"], pX2Game, pNPCUnit,  	0)
	SUMMON_NPC(vPosOffset,	6, 		 24.1,	5,	2,	false,	NPC_UNIT_ID["NUI_DEFENCE_AIRSHIP_SOLDIER_SWORDMAN"], pX2Game, pNPCUnit,  	1)
	SUMMON_NPC(vPosOffset,	4,		 24.1, 	0,	0,	false,	NPC_UNIT_ID["NUI_DEFENCE_SHADOW_BLAST"],    pX2Game, pNPCUnit, 		2)
	
end

function SUMMON_GROUP_2( pX2Game, pNPCUnit )

	local vPosOffset = D3DXVECTOR3(0, 0, 0)
	
	----------(A:위치, B:소환간격, C:소환시간, D:엘리트확률, E:엘리트최대개체, F:드랍여부, G:몬스터ID)---------------------	
	----------(A,			B,	C,	D,	E,	F,		G)---------------------------------------------------------------
	SUMMON_NPC(vPosOffset,	1, 		 1.1,	10,	2,	false,	NPC_UNIT_ID["NUI_DEFENCE_GHOST_MAGICIAN"], pX2Game, pNPCUnit,  0)
	SUMMON_NPC(vPosOffset,	6, 		 24.1,	10,	2,	false,	NPC_UNIT_ID["NUI_DEFENCE_GHOST_MAGICIAN"], pX2Game, pNPCUnit,  1)
	SUMMON_NPC(vPosOffset,	5,		 25.1, 	0,	0,	false,	NPC_UNIT_ID["NUI_DEFENCE_SHADOW_BLAST"], pX2Game, pNPCUnit, 2)	
end

function SUMMON_GROUP_3( pX2Game, pNPCUnit )

	local vPosOffset = D3DXVECTOR3(0, 0, 0)
	
	----------(A:위치, B:소환간격, C:소환시간, D:엘리트확률, E:엘리트최대개체, F:드랍여부, G:몬스터ID)---------------------	
	----------(A,			B,	C,	D,	E,	F,		G)---------------------------------------------------------------
	SUMMON_NPC(vPosOffset,	1,	 1.1,	10,	3,	false,	NPC_UNIT_ID["NUI_DEFENCE_LIZARDMAN_HIGH"], pX2Game, pNPCUnit, 0)
	SUMMON_NPC(vPosOffset,	8,	24.1,	10,	3,	false,	NPC_UNIT_ID["NUI_DEFENCE_LIZARDMAN_HIGH"], pX2Game, pNPCUnit, 1)
	SUMMON_NPC(vPosOffset,	5,	25.1, 	0,	0,	false,	NPC_UNIT_ID["NUI_DEFENCE_SHADOW_BLAST"], pX2Game, pNPCUnit, 2)
end

function SUMMON_GROUP_4( pX2Game, pNPCUnit )

	local vPosOffset = D3DXVECTOR3(0, 0, 0)
	
	----------(A:위치, B:소환간격, C:소환시간, D:엘리트확률, E:엘리트최대개체, F:드랍여부, G:몬스터ID)---------------------	
	----------(A,			B,	C,	D,	E,	F,		G)---------------------------------------------------------------
	SUMMON_NPC(vPosOffset,	1,	1.1,  10,	2,	false,	NPC_UNIT_ID["NUI_DEFENCE_ARCHER_GREAT"], pX2Game, pNPCUnit, 0)
	SUMMON_NPC(vPosOffset,	8,	24.1, 10,	2,	false,	NPC_UNIT_ID["NUI_DEFENCE_ARCHER_GREAT"], pX2Game, pNPCUnit, 1)
	SUMMON_NPC(vPosOffset,	5,	25.1, 0,	0,	false,	NPC_UNIT_ID["NUI_DEFENCE_SHADOW_BLAST"], pX2Game, pNPCUnit, 2)
end

function SUMMON_GROUP_5( pX2Game, pNPCUnit )

	local vPosOffset = D3DXVECTOR3(0, 0, 0)
	
	----------(A:위치, B:소환간격, C:소환시간, D:엘리트확률, E:엘리트최대개체, F:드랍여부, G:몬스터ID)---------------------	
	----------(A,			B,	C,	D,	E,	F,		G)---------------------------------------------------------------
	SUMMON_NPC(vPosOffset,	1,	1.1,	0,	0,	false,	NPC_UNIT_ID["NUI_DEFENCE_ARCHER_BOSS"], pX2Game, pNPCUnit,  0)
	SUMMON_NPC(vPosOffset,	20,	20.1,	0,	0,	false,	NPC_UNIT_ID["NUI_DEFENCE_ARCHER_BOSS"], pX2Game, pNPCUnit,  1)
	SUMMON_NPC(vPosOffset,	10,	60.1,	0,	0,	false,	NPC_UNIT_ID["NUI_DEFENCE_SHADOW_BLAST"], pX2Game, pNPCUnit, 2)	
end

function SUMMON_GROUP_6( pX2Game, pNPCUnit )

	local vPosOffset = D3DXVECTOR3(0, 0, 0)
	
	----------(A:위치, B:소환간격, C:소환시간, D:엘리트확률, E:엘리트최대개체, F:드랍여부, G:몬스터ID)---------------------	
	----------(A,			B,	C,	D,	E,	F,		G)---------------------------------------------------------------
	SUMMON_NPC(vPosOffset,	1,	1.1, 	0,	0,	false,		NPC_UNIT_ID["NUI_DEFENCE_SHADOW_BLAST"], pX2Game, pNPCUnit, 0)
	SUMMON_NPC(vPosOffset,	25,	50.1,	0,	0,	false,		NPC_UNIT_ID["NUI_DEFENCE_SHADOW_BLAST_BOSS"], pX2Game, pNPCUnit, 1)
	SUMMON_NPC(vPosOffset,	5,	50.1, 	0,	0,	false,		NPC_UNIT_ID["NUI_DEFENCE_SHADOW_BLAST"], pX2Game, pNPCUnit, 2)
		
end

function SUMMON_GROUP_7( pX2Game, pNPCUnit )

	local vPosOffset = D3DXVECTOR3(0, 0, 0)
	
	----------(A:위치, B:소환간격, C:소환시간, D:엘리트확률, E:엘리트최대개체, F:드랍여부, G:몬스터ID)---------------------	
	----------(A,			B,	C,	D,	E,	F,		G)---------------------------------------------------------------
	SUMMON_NPC(vPosOffset,	1,	1.1,	10,	3,	false,	NPC_UNIT_ID["NUI_DEFENCE_SHIELD_GREAT"], pX2Game, pNPCUnit, 0)
	SUMMON_NPC(vPosOffset,	6,	30.1,	10,	3,	false,	NPC_UNIT_ID["NUI_DEFENCE_SHIELD_GREAT"], pX2Game, pNPCUnit, 1)
	SUMMON_NPC(vPosOffset,	5,	35.1, 	0,	0,	false,	NPC_UNIT_ID["NUI_DEFENCE_SHADOW_BLAST"], pX2Game, pNPCUnit, 2)
end

function SUMMON_GROUP_8( pX2Game, pNPCUnit )

	local vPosOffset = D3DXVECTOR3(0, 0, 0)
	
	----------(A:위치, B:소환간격, C:소환시간, D:엘리트확률, E:엘리트최대개체, F:드랍여부, G:몬스터ID)---------------------	
	----------(A,			B,	C,	D,	E,	F,		G)---------------------------------------------------------------
	SUMMON_NPC(vPosOffset,	1,	1.1,	10,	3,	false,	NPC_UNIT_ID["NUI_DEFENCE_HAMMER_GREAT"], pX2Game, pNPCUnit, 0)
	SUMMON_NPC(vPosOffset,	6,	24.1,	10,	3,	false,	NPC_UNIT_ID["NUI_DEFENCE_HAMMER_GREAT"], pX2Game, pNPCUnit, 1)
	SUMMON_NPC(vPosOffset,	5,	25.1, 	0,	0,	false,	NPC_UNIT_ID["NUI_DEFENCE_SHADOW_BLAST"], pX2Game, pNPCUnit, 2)
end

function SUMMON_GROUP_9( pX2Game, pNPCUnit )

	local vPosOffset = D3DXVECTOR3(0, 0, 0)
	
	----------(A:위치, B:소환간격, C:소환시간, D:엘리트확률, E:엘리트최대개체, F:드랍여부, G:몬스터ID)---------------------	
	----------(A,			B,	C,	D,	E,	F,		G)---------------------------------------------------------------
	
	SUMMON_NPC(vPosOffset,	1,	1.1, 	10,	2,	false,		NPC_UNIT_ID["NUI_DEFENCE_THIEF_GREAT"], pX2Game, pNPCUnit, 0)
	SUMMON_NPC(vPosOffset,	6,	30.1,	10,	2,	false,		NPC_UNIT_ID["NUI_DEFENCE_THIEF_GREAT"], pX2Game, pNPCUnit, 1)
	SUMMON_NPC(vPosOffset,	5,	30.1, 	0,	0,	false,		NPC_UNIT_ID["NUI_DEFENCE_SHADOW_BLAST"], pX2Game, pNPCUnit, 2)
end

function SUMMON_GROUP_10( pX2Game, pNPCUnit )

	local vPosOffset = D3DXVECTOR3(0, 0, 0)
	
	----------(A:위치, B:소환간격, C:소환시간, D:엘리트확률, E:엘리트최대개체, F:드랍여부, G:몬스터ID)---------------------	
	----------(A,			B,	C,	D,	E,	F,		G)---------------------------------------------------------------
	SUMMON_NPC(vPosOffset,	1,	1.1,	0,	0,	false,	NPC_UNIT_ID["NUI_DEFENCE_THIEF_BOSS"], pX2Game, pNPCUnit,  0)
	SUMMON_NPC(vPosOffset,	20,	20.1,	0,	0,	false,	NPC_UNIT_ID["NUI_DEFENCE_THIEF_BOSS"], pX2Game, pNPCUnit,  1)
	SUMMON_NPC(vPosOffset,	5,	20.1,	0,	0,	false,	NPC_UNIT_ID["NUI_DEFENCE_SHADOW_BLAST"], pX2Game, pNPCUnit, 2)	
end

function SUMMON_GROUP_11( pX2Game, pNPCUnit )

	local vPosOffset = D3DXVECTOR3(0, 0, 0)
	
	----------(A:위치, B:소환간격, C:소환시간, D:엘리트확률, E:엘리트최대개체, F:드랍여부, G:몬스터ID)---------------------	
	----------(A,			B,	C,	D,	E,	F,		G)---------------------------------------------------------------
	SUMMON_NPC(vPosOffset,	1,	1.1, 	0,	0,	false,		NPC_UNIT_ID["NUI_DEFENCE_SHADOW_BLAST"], pX2Game, pNPCUnit, 0)
	SUMMON_NPC(vPosOffset,	5,	60.1,	0,	0,	false,		NPC_UNIT_ID["NUI_DEFENCE_SHADOW_BLAST"], pX2Game, pNPCUnit, 1)
	SUMMON_NPC(vPosOffset,	20,	60.1,	0,	0,	false,		NPC_UNIT_ID["NUI_DEFENCE_SHADOW_BLAST_BOSS"], pX2Game, pNPCUnit, 2)
end

function SUMMON_GROUP_12( pX2Game, pNPCUnit )

	local vPosOffset = D3DXVECTOR3(0, 0, 0)
	
	----------(A:위치, B:소환간격, C:소환시간, D:엘리트확률, E:엘리트최대개체, F:드랍여부, G:몬스터ID)---------------------	
	----------(A,			B,	C,	D,	E,	F,		G)---------------------------------------------------------------
	SUMMON_NPC(vPosOffset,	1,	1.1,  5, 0,	false,	NPC_UNIT_ID["NUI_DEFENCE_GOLEM_RAGE"], 	   pX2Game, pNPCUnit, 0)
	SUMMON_NPC(vPosOffset,	10,	60.1, 5, 0,	false,	NPC_UNIT_ID["NUI_DEFENCE_GOLEM_RAGE"], 	   pX2Game, pNPCUnit, 1)
	SUMMON_NPC(vPosOffset,	5,	60.1, 0, 0,	false,	NPC_UNIT_ID["NUI_DEFENCE_SHADOW_BLAST"], 		pX2Game, pNPCUnit, 2)	
end

function SUMMON_GROUP_13( pX2Game, pNPCUnit )

	local vPosOffset = D3DXVECTOR3(0, 0, 0)
	
	----------(A:위치, B:소환간격, C:소환시간, D:엘리트확률, E:엘리트최대개체, F:드랍여부, G:몬스터ID)---------------------	
	----------(A,			B,	C,	D,	E,	F,		G)---------------------------------------------------------------
	SUMMON_NPC(vPosOffset,	1,	1.1,  5, 3,	false,	NPC_UNIT_ID["NUI_DEFENCE_FRAIL"], 	   pX2Game, pNPCUnit, 0)
	SUMMON_NPC(vPosOffset,	10,	40.1, 5, 3,	false,	NPC_UNIT_ID["NUI_DEFENCE_FRAIL"], 	   pX2Game, pNPCUnit, 1)
	SUMMON_NPC(vPosOffset,	5,	45.1, 0, 0,	false,	NPC_UNIT_ID["NUI_DEFENCE_SHADOW_BLAST"], pX2Game, pNPCUnit, 2)
end


function SUMMON_GROUP_14( pX2Game, pNPCUnit )

	local vPosOffset = D3DXVECTOR3(0, 0, 0)
	
	--------(A:위치, B:소환간격, C:소환시간, D:엘리트확률, E:엘리트최대개체, F:드랍여부, G:몬스터ID)---------------------	
	--------(A,			B,	C,	D,	E,	F,		G)---------------------------------------------------------------
	SUMMON_NPC(vPosOffset,	1,		1.1,	0,	0,	false,		NPC_UNIT_ID["NUI_DEFENCE_UNOHOUND"], pX2Game, pNPCUnit, 		0)	
	SUMMON_NPC(vPosOffset,	40,		40.1,	0,	0,	false,		NPC_UNIT_ID["NUI_DEFENCE_UNOHOUND"], pX2Game, pNPCUnit,  		1)
	SUMMON_NPC(vPosOffset,	10,		40.1,	0,	0,	false,		NPC_UNIT_ID["NUI_DEFENCE_SHADOW_BLAST"], pX2Game, pNPCUnit, 	2)
end  

function SUMMON_GROUP_15( pX2Game, pNPCUnit )

	local vPosOffset = D3DXVECTOR3(0, 0, 0)
	
	----------(A:위치, B:소환간격, C:소환시간, D:엘리트확률, E:엘리트최대개체, F:드랍여부, G:몬스터ID)---------------------	
	----------(A,			B,	C,	D,	E,	F,		G)---------------------------------------------------------------
	SUMMON_NPC(vPosOffset,	10,		50.1,	0,	0,	false,	NPC_UNIT_ID["NUI_DEFENCE_SHADOW_BLAST"], 		pX2Game, pNPCUnit, 0)
	SUMMON_NPC(vPosOffset,	15,		60.1,	0,	0,	false,	NPC_UNIT_ID["NUI_DEFENCE_SHADOW_BLAST_BOSS"], 	pX2Game, pNPCUnit, 1)	
end





---두번째 그룹---


function SUMMON_GROUP_1_1( pX2Game, pNPCUnit )

	local vPosOffset = D3DXVECTOR3(0, 0, 0)
	
	----------(A:위치, B:소환간격, C:소환시간, D:엘리트확률, E:엘리트최대개체, F:드랍여부, G:몬스터ID)---------------------	
	----------(A,			B,		  C,	D,	E,	 F,			G)---------------------------------------------------------------
	SUMMON_NPC(vPosOffset,	1, 		 1.1,	5,	2,	false,	NPC_UNIT_ID["NUI_DEFENCE_THIEF_THIN_ZERO"], pX2Game, pNPCUnit,  0)
	SUMMON_NPC(vPosOffset,	4, 		 20.1,	5,	2,	false,	NPC_UNIT_ID["NUI_DEFENCE_THIEF_THIN_ZERO"], pX2Game, pNPCUnit,  1)
	SUMMON_NPC(vPosOffset,	5,		 20.1, 	0,	0,	false,	NPC_UNIT_ID["NUI_DEFENCE_SHADOW_BLAST"],    pX2Game, pNPCUnit, 2)
	SUMMON_NPC(vPosOffset,	1,	  	 7.1,	0,	0,	false,	NPC_UNIT_ID["NUI_DEFENCE_SHADOW_BLAST_BOSS"], pX2Game, pNPCUnit, 3)
	
end

function SUMMON_GROUP_2_1( pX2Game, pNPCUnit )

	local vPosOffset = D3DXVECTOR3(0, 0, 0)
	
	----------(A:위치, B:소환간격, C:소환시간, D:엘리트확률, E:엘리트최대개체, F:드랍여부, G:몬스터ID)---------------------	
	----------(A,			B,	C,	D,	E,	F,		G)---------------------------------------------------------------
	SUMMON_NPC(vPosOffset,	1, 		 1.1,	5,	2,	false,	NPC_UNIT_ID["NUI_DEFENCE_GHOST_MAGICIAN"], pX2Game, pNPCUnit,  0)
	SUMMON_NPC(vPosOffset,	4, 		 20.1,	5,	2,	false,	NPC_UNIT_ID["NUI_DEFENCE_GHOST_MAGICIAN"], pX2Game, pNPCUnit,  1)
	SUMMON_NPC(vPosOffset,	5,		 20.1, 	0,	0,	false,	NPC_UNIT_ID["NUI_DEFENCE_SHADOW_BLAST"], pX2Game, pNPCUnit, 2)	
end

function SUMMON_GROUP_3_1( pX2Game, pNPCUnit )

	local vPosOffset = D3DXVECTOR3(0, 0, 0)
	
	----------(A:위치, B:소환간격, C:소환시간, D:엘리트확률, E:엘리트최대개체, F:드랍여부, G:몬스터ID)---------------------	
	----------(A,			B,	C,	D,	E,	F,		G)---------------------------------------------------------------
	SUMMON_NPC(vPosOffset,	1,	 1.1,	5,	3,	false,	NPC_UNIT_ID["NUI_DEFENCE_SOLDIER_BENDERS"], pX2Game, pNPCUnit, 0)
	SUMMON_NPC(vPosOffset,	4,	20.1,	5,	3,	false,	NPC_UNIT_ID["NUI_DEFENCE_SOLDIER_BENDERS"], pX2Game, pNPCUnit, 1)
	SUMMON_NPC(vPosOffset,	5,	20.1, 	0,	0,	false,	NPC_UNIT_ID["NUI_DEFENCE_SHADOW_BLAST"], pX2Game, pNPCUnit, 2)
end

function SUMMON_GROUP_4_1( pX2Game, pNPCUnit )

	local vPosOffset = D3DXVECTOR3(0, 0, 0)
	
	----------(A:위치, B:소환간격, C:소환시간, D:엘리트확률, E:엘리트최대개체, F:드랍여부, G:몬스터ID)---------------------	
	----------(A,			B,	C,	D,	E,	F,		G)---------------------------------------------------------------
	SUMMON_NPC(vPosOffset,	1,	1.1,  5,	2,	false,	NPC_UNIT_ID["NUI_DEFENCE_LIZARDMAN_HIGH"], pX2Game, pNPCUnit, 0)
	SUMMON_NPC(vPosOffset,	5,	25.1, 5,	2,	false,	NPC_UNIT_ID["NUI_DEFENCE_LIZARDMAN_HIGH"], pX2Game, pNPCUnit, 1)
	SUMMON_NPC(vPosOffset,	5,	30.1, 0,	0,	false,		NPC_UNIT_ID["NUI_DEFENCE_SHADOW_BLAST"], pX2Game, pNPCUnit, 2)
end

function SUMMON_GROUP_5_1( pX2Game, pNPCUnit )

	local vPosOffset = D3DXVECTOR3(0, 0, 0)
	
	----------(A:위치, B:소환간격, C:소환시간, D:엘리트확률, E:엘리트최대개체, F:드랍여부, G:몬스터ID)---------------------	
	----------(A,			B,	C,	D,	E,	F,		G)---------------------------------------------------------------
	SUMMON_NPC(vPosOffset,	1,	1.1, 	5,	2,	false,		NPC_UNIT_ID["NUI_DEFENCE_WALKER"], pX2Game, pNPCUnit, 0)
	SUMMON_NPC(vPosOffset,	5,	25.1,	5,	2,	false,		NPC_UNIT_ID["NUI_DEFENCE_WALKER"], pX2Game, pNPCUnit, 1)	
	SUMMON_NPC(vPosOffset,	5,	20.1, 	0,	0,	false,		NPC_UNIT_ID["NUI_DEFENCE_SHADOW_BLAST"], pX2Game, pNPCUnit, 2)
end



function SUMMON_GROUP_6_1( pX2Game, pNPCUnit )

	local vPosOffset = D3DXVECTOR3(0, 0, 0)
	
	----------(A:위치, B:소환간격, C:소환시간, D:엘리트확률, E:엘리트최대개체, F:드랍여부, G:몬스터ID)---------------------	
	----------(A,			B,	C,	D,	E,	F,		G)---------------------------------------------------------------
	SUMMON_NPC(vPosOffset,	1,	1.1, 	0,	0,	false,		NPC_UNIT_ID["NUI_DEFENCE_SHADOW_BLAST"], pX2Game, pNPCUnit, 0)
	SUMMON_NPC(vPosOffset,	4,	40.1,	0,	0,	false,		NPC_UNIT_ID["NUI_DEFENCE_SHADOW_BLAST"], pX2Game, pNPCUnit, 1)
	SUMMON_NPC(vPosOffset,	10,	10.1,	0,	0,	false,		NPC_UNIT_ID["NUI_DEFENCE_SHADOW_BLAST_BOSS"], pX2Game, pNPCUnit, 2)
	SUMMON_NPC(vPosOffset,	5,	40.1, 	0,	0,	false,		NPC_UNIT_ID["NUI_DEFENCE_SHADOW_BLAST"], pX2Game, pNPCUnit, 3)
		
end

function SUMMON_GROUP_7_1( pX2Game, pNPCUnit )

	local vPosOffset = D3DXVECTOR3(0, 0, 0)
	
	----------(A:위치, B:소환간격, C:소환시간, D:엘리트확률, E:엘리트최대개체, F:드랍여부, G:몬스터ID)---------------------	
	----------(A,			B,	C,	D,	E,	F,		G)---------------------------------------------------------------
	SUMMON_NPC(vPosOffset,	1,	1.1,	5,	3,	false,	NPC_UNIT_ID["NUI_DEFENCE_ARCHER"], pX2Game, pNPCUnit, 0)
	SUMMON_NPC(vPosOffset,	4,	24.1,	5,	3,	false,	NPC_UNIT_ID["NUI_DEFENCE_ARCHER"], pX2Game, pNPCUnit, 1)
	SUMMON_NPC(vPosOffset,	5,	20.1, 	0,	0,	false,	NPC_UNIT_ID["NUI_DEFENCE_SHADOW_BLAST"], pX2Game, pNPCUnit, 2)
end


function SUMMON_GROUP_8_1( pX2Game, pNPCUnit )

	local vPosOffset = D3DXVECTOR3(0, 0, 0)
	
	----------(A:위치, B:소환간격, C:소환시간, D:엘리트확률, E:엘리트최대개체, F:드랍여부, G:몬스터ID)---------------------	
	----------(A,			B,	C,	D,	E,	F,		G)---------------------------------------------------------------
	SUMMON_NPC(vPosOffset,	1,	1.1,	5,	3,	false,	NPC_UNIT_ID["NUI_DEFENCE_GLITER_LANCE"], pX2Game, pNPCUnit, 0)
	SUMMON_NPC(vPosOffset,	4,	24.1,	5,	3,	false,	NPC_UNIT_ID["NUI_DEFENCE_GLITER_LANCE"], pX2Game, pNPCUnit, 1)
	SUMMON_NPC(vPosOffset,	5,	20.1, 	0,	0,	false,	NPC_UNIT_ID["NUI_DEFENCE_SHADOW_BLAST"], pX2Game, pNPCUnit, 2)
end

function SUMMON_GROUP_9_1( pX2Game, pNPCUnit )

	local vPosOffset = D3DXVECTOR3(0, 0, 0)
	
	----------(A:위치, B:소환간격, C:소환시간, D:엘리트확률, E:엘리트최대개체, F:드랍여부, G:몬스터ID)---------------------	
	----------(A,			B,	C,	D,	E,	F,		G)---------------------------------------------------------------
	
	SUMMON_NPC(vPosOffset,	1,	1.1, 	5,	2,	false,		NPC_UNIT_ID["NUI_DEFENCE_HAMMER"], pX2Game, pNPCUnit, 0)
	SUMMON_NPC(vPosOffset,	4,	28.1,	5,	2,	false,		NPC_UNIT_ID["NUI_DEFENCE_HAMMER"], pX2Game, pNPCUnit, 1)
	SUMMON_NPC(vPosOffset,	30,	30.1,	5,	2,	false,		NPC_UNIT_ID["NUI_DEFENCE_HAMMER"], pX2Game, pNPCUnit, 2)
	SUMMON_NPC(vPosOffset,	5,	20.1, 	0,	0,	false,		NPC_UNIT_ID["NUI_DEFENCE_SHADOW_BLAST"], pX2Game, pNPCUnit, 3)
end


function SUMMON_GROUP_10_1( pX2Game, pNPCUnit )

	local vPosOffset = D3DXVECTOR3(0, 0, 0)
	
	----------(A:위치, B:소환간격, C:소환시간, D:엘리트확률, E:엘리트최대개체, F:드랍여부, G:몬스터ID)---------------------	
	----------(A,			B,	C,	D,	E,	F,		G)---------------------------------------------------------------
	SUMMON_NPC(vPosOffset,	1,	1.1,	0,	0,	false,	NPC_UNIT_ID["NUI_DEFENCE_HAMMER_BOSS"], pX2Game, pNPCUnit,  0)
	SUMMON_NPC(vPosOffset,	25,	25.1,	0,	0,	false,	NPC_UNIT_ID["NUI_DEFENCE_HAMMER_BOSS"], pX2Game, pNPCUnit,  1)
	SUMMON_NPC(vPosOffset,	50,	50.1,	0,	0,	false,	NPC_UNIT_ID["NUI_DEFENCE_HAMMER_BOSS"], pX2Game, pNPCUnit, 	2)	
	SUMMON_NPC(vPosOffset,	10,	50.1,	0,	0,	false,	NPC_UNIT_ID["NUI_DEFENCE_SHADOW_BLAST"], pX2Game, pNPCUnit, 3)	
end


function SUMMON_GROUP_11_1( pX2Game, pNPCUnit )

	local vPosOffset = D3DXVECTOR3(0, 0, 0)
	
	----------(A:위치, B:소환간격, C:소환시간, D:엘리트확률, E:엘리트최대개체, F:드랍여부, G:몬스터ID)---------------------	
	----------(A,			B,	C,	D,	E,	F,		G)---------------------------------------------------------------
	SUMMON_NPC(vPosOffset,	1,	1.1, 	0,	0,	false,		NPC_UNIT_ID["NUI_DEFENCE_SHADOW_BLAST"], pX2Game, pNPCUnit, 0)
	SUMMON_NPC(vPosOffset,	3,	42.1,	0,	0,	false,		NPC_UNIT_ID["NUI_DEFENCE_SHADOW_BLAST"], pX2Game, pNPCUnit, 1)
	SUMMON_NPC(vPosOffset,	10,	10.1,	0,	0,	false,		NPC_UNIT_ID["NUI_DEFENCE_SHADOW_BLAST_BOSS"], pX2Game, pNPCUnit, 2)
	SUMMON_NPC(vPosOffset,	20,	20.1,	0,	0,	false,		NPC_UNIT_ID["NUI_DEFENCE_SHADOW_BLAST_BOSS"], pX2Game, pNPCUnit, 3)		
end


function SUMMON_GROUP_12_1( pX2Game, pNPCUnit )

	local vPosOffset = D3DXVECTOR3(0, 0, 0)
	
	----------(A:위치, B:소환간격, C:소환시간, D:엘리트확률, E:엘리트최대개체, F:드랍여부, G:몬스터ID)---------------------	
	----------(A,			B,	C,	D,	E,	F,		G)---------------------------------------------------------------
	SUMMON_NPC(vPosOffset,	1,	1.1,  5, 3,	false,	NPC_UNIT_ID["NUI_DEFENCE_SHIELD"], 	   pX2Game, pNPCUnit, 0)
	SUMMON_NPC(vPosOffset,	4,	24.1, 5, 3,	false,	NPC_UNIT_ID["NUI_DEFENCE_SHIELD"], 	   pX2Game, pNPCUnit, 1)
	SUMMON_NPC(vPosOffset,	5,	20.1, 0, 0,	false,	NPC_UNIT_ID["NUI_DEFENCE_SHADOW_BLAST"], pX2Game, pNPCUnit, 2)
end


function SUMMON_GROUP_13_1( pX2Game, pNPCUnit )

	local vPosOffset = D3DXVECTOR3(0, 0, 0)
	
	----------(A:위치, B:소환간격, C:소환시간, D:엘리트확률, E:엘리트최대개체, F:드랍여부, G:몬스터ID)---------------------	
	----------(A,			B,	C,	D,	E,	F,		G)---------------------------------------------------------------
	SUMMON_NPC(vPosOffset,	1,	1.1,  0, 0,	false,	NPC_UNIT_ID["NUI_DEFENCE_GOLEM"], 	   pX2Game, pNPCUnit, 0)
	SUMMON_NPC(vPosOffset,	7,	49.1, 0, 0,	false,	NPC_UNIT_ID["NUI_DEFENCE_GOLEM"], 	   pX2Game, pNPCUnit, 1)
	SUMMON_NPC(vPosOffset,	5,	40.1, 0, 0,	false,	NPC_UNIT_ID["NUI_DEFENCE_SHADOW_BLAST"], pX2Game, pNPCUnit, 2)	
end

function SUMMON_GROUP_14_1( pX2Game, pNPCUnit )

	local vPosOffset = D3DXVECTOR3(0, 0, 0)
	
	--------(A:위치, B:소환간격, C:소환시간, D:엘리트확률, E:엘리트최대개체, F:드랍여부, G:몬스터ID)---------------------	
	--------(A,			B,	C,	D,	E,	F,		G)---------------------------------------------------------------
	SUMMON_NPC(vPosOffset,	1,		1.1,	0,	0,	false,		NPC_UNIT_ID["NUI_DEFENCE_GOLEM_BOSS"], pX2Game, pNPCUnit, 			0)	
	SUMMON_NPC(vPosOffset,	45,		90.1,	0,	0,	false,		NPC_UNIT_ID["NUI_DEFENCE_GOLEM_BOSS"], pX2Game, pNPCUnit,  		1)
	SUMMON_NPC(vPosOffset,	10,		90.1,	0,	0,	false,		NPC_UNIT_ID["NUI_DEFENCE_SHADOW_BLAST"], pX2Game, pNPCUnit, 	2)
end  

function SUMMON_GROUP_15_1( pX2Game, pNPCUnit )

	local vPosOffset = D3DXVECTOR3(0, 0, 0)
	
	----------(A:위치, B:소환간격, C:소환시간, D:엘리트확률, E:엘리트최대개체, F:드랍여부, G:몬스터ID)---------------------	
	----------(A,			B,	C,	D,	E,	F,		G)---------------------------------------------------------------
	SUMMON_NPC(vPosOffset,	1,		1.1,	0,	0,	false,	NPC_UNIT_ID["NUI_DEFENCE_SHADOW_BLAST"], 		pX2Game, pNPCUnit, 0)
	SUMMON_NPC(vPosOffset,	10,		10.1,	0,	0,	false,	NPC_UNIT_ID["NUI_DEFENCE_SHADOW_BLAST_BOSS"], 	pX2Game, pNPCUnit, 1)	
	SUMMON_NPC(vPosOffset,	25,		75.1,	0,	0,	false,	NPC_UNIT_ID["NUI_DEFENCE_SHADOW_BLAST_BOSS"], 	pX2Game, pNPCUnit, 2)
	SUMMON_NPC(vPosOffset,	10,		30.1,	0,	0,	false,	NPC_UNIT_ID["NUI_DEFENCE_SHADOW_BLAST"], 		pX2Game, pNPCUnit, 3)	
end