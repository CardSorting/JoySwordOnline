-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	UNIT_WIDTH		= 200.0,
	UNIT_HEIGHT		= 1000.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	UNIT_SCALE		= 0.8,
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
		"NUI_TENTACLE_PILLAR.dds",
		"Gear_Water.tga",
		"Pet_Haecheulring_flame.dds",
		"RVC_A_bleedingSlicer_smoke2.dds",
	},
	
	READY_SOUND = 
	{
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME	= "Motion_Tentacle_Pillar.x",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
}


INIT_COMPONENT = 
{
	SHADOW_SIZE			= 200,
	SHADOW_FILE_NAME	= "shadow.dds",
	
	-- SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	-- SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	-- SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",

	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	
	FALL_DOWN			= TRUE,
	
	DAMAGE_DOWN         = FALSE,
	DIE_FLY				= 0,
}

INIT_STATE = 
{
	{ STATE_NAME = "TENTACLE_PILLAR_SMALL_SUMMON_START",							LUA_STATE_START_FUNC = "TENTACLE_PILLAR_SMALL_SUMMON_START_START",
																			LUA_STATE_END_FUNC = "TENTACLE_PILLAR_SMALL_SUMMON_START_END",				},
	{ STATE_NAME = "TENTACLE_PILLAR_SMALL_SUMMON_WAIT",							LUA_FRAME_MOVE_FUNC = "TENTACLE_PILLAR_SMALL_SUMMON_WAIT_FRAME_MOVE",		},
	
	{ STATE_NAME = "TENTACLE_PILLAR_SMALL_SUMMON_START_ATTACK",							},
	--5초 주기로 소환
	{ STATE_NAME = "TENTACLE_PILLAR_SMALL_SUMMON_SUMMON_A",						LUA_FRAME_MOVE_FUNC = "TENTACLE_PILLAR_SMALL_SUMMON_SUMMON_A_FRAME_MOVE",	},
	--2초 주기로 소환
	{ STATE_NAME = "TENTACLE_PILLAR_SMALL_SUMMON_SUMMON_B",						LUA_FRAME_MOVE_FUNC = "TENTACLE_PILLAR_SMALL_SUMMON_SUMMON_B_FRAME_MOVE",	},
	
	{ STATE_NAME = "TENTACLE_PILLAR_SMALL_SUMMON_DYING",						LUA_STATE_END_FUNC = "TENTACLE_PILLAR_SMALL_SUMMON_DYING_END",	},
	{ STATE_NAME = "TENTACLE_PILLAR_SMALL_SUMMON_DAMAGE",							},

	START_STATE					= "TENTACLE_PILLAR_SMALL_SUMMON_START",
	WAIT_STATE					= "TENTACLE_PILLAR_SMALL_SUMMON_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "TENTACLE_PILLAR_SMALL_SUMMON_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "TENTACLE_PILLAR_SMALL_SUMMON_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "TENTACLE_PILLAR_SMALL_SUMMON_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "TENTACLE_PILLAR_SMALL_SUMMON_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "TENTACLE_PILLAR_SMALL_SUMMON_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "TENTACLE_PILLAR_SMALL_SUMMON_DAMAGE",
	
	DYING_LAND_FRONT			= "TENTACLE_PILLAR_SMALL_SUMMON_DYING",
	DYING_LAND_BACK				= "TENTACLE_PILLAR_SMALL_SUMMON_DYING",
	DYING_SKY					= "TENTACLE_PILLAR_SMALL_SUMMON_DYING",
	
	REVENGE_ATTACK				= "",
}


INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 3,		-- sec
		TARGET_NEAR_RANGE			= 800,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 1200,		-- cm
		TARGET_LOST_RANGE			= 2000,		-- cm
		TARGET_SUCCESS_RATE			= 100,  	-- 50,		-- %
		ATTACK_TARGET_RATE			= 100, 		-- 30,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 50, 		-- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 1000,
		DEST_GAP			= 500,		-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 600,
		
		DIR_CHANGE_INTERVAL = 0.7,
		
		WALK_INTERVAL		= 3,
		NEAR_WALK_RATE		= 70,   	-- 70,
		FAR_WALK_RATE		= 70,   	-- 30,
		
		JUMP_INTERVAL		= 5,
		UP_JUMP_RATE		= 0, 		-- 40,
		UP_DOWN_RATE		= 0,
		DOWN_JUMP_RATE		= 0,  	-- 20,
		DOWN_DOWN_RATE		= 0,
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 50, 	--50,		
		PATROL_RANGE			= 150,
		PATROL_COOL_TIME		= 2,
		ONLY_THIS_LINE_GROUP	= TRUE,
	},
	
	ESCAPE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 500,		-- cm
		ESCAPE_GAP			= 600,		-- 이 거리 보다 멀어지면 도망 성공
		
		WALK_INTERVAL		= 1.5,		-- 초
		NEAR_WALK_RATE		= 100,   	-- 10,
		FAR_WALK_RATE		= 100,   	-- 10,
		
		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 100, 		-- 30,
		UP_DOWN_RATE		= 30,
		DOWN_JUMP_RATE		= 100,    	-- 30,
		DOWN_DOWN_RATE		= 30,
	},
}

---------------------------------TENTACLE_PILLAR_SMALL_SUMMON_START---------------------------------
TENTACLE_PILLAR_SMALL_SUMMON_START = 
{
	ANIM_NAME					= "wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	INVINCIBLE					= { 0, 100, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,

	NEVER_MOVE					= TRUE,
	RIGHT                       = TRUE,
	
	
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 0.01,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"TENTACLE_PILLAR_SMALL_SUMMON_START_ATTACK",			"CT_TENTACLE_PILLAR_SMALL_SUMMON_START_ATTACK",		},
	},

	CT_TENTACLE_PILLAR_SMALL_SUMMON_START_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1200,
		RATE						= 100,
	},	
}
function TENTACLE_PILLAR_SMALL_SUMMON_START_START( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetInt_LUA( 0, 0.3 )		--Summon_A의 소환 쿨타임 5초
	pNPCUnit:SetInt_LUA( 1, 0.1 )		--Summon_B의 소환 쿨타임 2초
	pNPCUnit:SetInt_LUA( 2, 30 )	--최대 소환 가능한 NPC 수 20마리
	pNPCUnit:SetInt_LUA( 3, NPC_UNIT_ID["NUI_KARIS_JIN"] )	--마스터 유닛
	
	pNPCUnit:SetVector_LUA( 0, D3DXVECTOR3(    0.5, 0, 0 ) )	--Summon A인지 B인지 체크하는 HP Percent 50% -> 0.5
	
	local NowHp = pNPCUnit:GetNowHP_LUA()
	local MinusHp = NowHp * 0.1	-- 몇 % 씩 깍일지 정해주세요( 숫자 - 소수점으로 )
	pNPCUnit:SetVector_LUA( 1, D3DXVECTOR3( MinusHp, 0, 0 ) )
end

function TENTACLE_PILLAR_SMALL_SUMMON_START_END( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetTimerRestart( 0 )	--체크 시간 리셋
end
------------------------------------------------------------------------------------------
---------------------------------TENTACLE_PILLAR_SMALL_SUMMON_START---------------------------------
TENTACLE_PILLAR_SMALL_SUMMON_START_ATTACK = 
{
	ANIM_NAME					= "Start",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	INVINCIBLE					= { 0, 100, },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,
	
	SOUND_PLAY0			= { 0.012, "Plant_OverLord_MagicAttack.ogg" },
	SOUND_PLAY1			= { 0.112, "Victor_SpecialAttackA_JumpUp01.ogg " },


	NEVER_MOVE					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	RIGHT                       = TRUE,
	
	ATTACK_TIME0	= { 0.078, 0.184, },	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE	= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE	= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE	= REACT_TYPE["RT_BIG_DAMAGE"],
		
		DAMAGE		= 
		{ 
		 	PHYSIC	= 1.17, 		
		},
		
		BACK_SPEED_X	= 1880,
		--BACK_SPEED_Y			= 200,
		--ARRANGED_FLY			= TRUE,
		
		RE_ATTACK		= FALSE,
		
		CAMERA_CRASH_GAP	= 3.0,	
		CAMERA_CRASH_TIME	= 0.2,	
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"TENTACLE_PILLAR_SMALL_SUMMON_WAIT",							},
	},
}

---------------------------------TENTACLE_PILLAR_SMALL_SUMMON_WAIT---------------------------------
TENTACLE_PILLAR_SMALL_SUMMON_WAIT = 
{
	ANIM_NAME					= "SummonWait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,

	NEVER_MOVE					= TRUE,

}
function TENTACLE_PILLAR_SMALL_SUMMON_WAIT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	local NowHp = pNPCUnit:GetNowHP_LUA()
	local MaxHp = pNPCUnit:GetMaxHP()
	local HpPercent = NowHp / MaxHp
	local CheckHpPercent = pNPCUnit:GetVector_LUA( 0 )
	
	--Hp percent 체크
	if HpPercent > CheckHpPercent.x then 		
		--Summon_A 시간 체크 (50% 초과)
		local CheckTime_SummonA = pNPCUnit:GetInt_LUA( 0 ) --Summon_A의 소환 쿨타임 5초
		if CheckTime_SummonA < pNPCUnit:GetTimerElapsedTime( 0 ) then
		
			if true == CheckAbleSummon( pX2Game, pNPCUnit ) then --최대 마릿수 체크
				pNPCUnit:StateChange_LUA( "TENTACLE_PILLAR_SMALL_SUMMON_SUMMON_A" )
			end
			
		end
		
	else
		--Summon_B 시간 체크 (50% 이하)
		local CheckTime_SummonB = pNPCUnit:GetInt_LUA( 1 ) --Summon_B의 소환 쿨타임 2초
		if CheckTime_SummonB < pNPCUnit:GetTimerElapsedTime( 0 ) then
		
			if true == CheckAbleSummon( pX2Game, pNPCUnit ) then --최대 마릿수 체크
				pNPCUnit:StateChange_LUA( "TENTACLE_PILLAR_SMALL_SUMMON_SUMMON_B" )
			end
			
		end
		
	end
end
------------------------------------------------------------------------------------------


---------------------------------TENTACLE_PILLAR_SMALL_SUMMON_SUMMON_A-----------------------------
TENTACLE_PILLAR_SMALL_SUMMON_SUMMON_A = 
{
	ANIM_NAME					= "Summon",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	NEVER_MOVE					= TRUE,
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,
	
	SOUND_PLAY0			= { 0.012, "Plant_OverLord_Sound2.ogg" },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"TENTACLE_PILLAR_SMALL_SUMMON_WAIT", },
	},
}
function TENTACLE_PILLAR_SMALL_SUMMON_SUMMON_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 1.2 ) then
		local ArrBoneName = { "R1", "R2", "R3", "R4", "R5", "R6", } --소환될 Bone 이름
		local SummonNpcDir = { false, true, false, true, true, false } --소환될 npc가 쳐다볼 방향
		local SummonNpcID = { "NUI_BORN_VEGA_TROCK_SUMMON", "NUI_BORN_STEEL_TROCK_SUMMON", "NUI_BORN_TROCK_DOG_SUMMON", } --소환될 NPC ID
		local SummonNpcNum = 3 --소환될 NPC ID 배열의 크기 ( 위 배열의 ID 숫자와 같게 맞춰줘야 함 )
		
		--소환될 bone 위치 랜덤 선택
		local randNum = pNPCUnit:GetRandVal(0) % 6 + 1
		local BonePos = pNPCUnit:GetBonePos_LUA( ArrBoneName[randNum] )	
		
		--소환될 NPC 랜덤 선택
		local randNumNPC = pNPCUnit:GetRandVal(1) % SummonNpcNum + 1
		
		--소환 이펙트
		local pEffectSet = pX2Game:GetEffectSet()
		if nil ~= pEffectSet then
			pEffectSet:PlayEffectSetWithCustomPos_LUA( "Tentacle_Pillar_Summon_R1", pNPCUnit, BonePos, D3DXVECTOR3(0, 0, 0) )
		end
		
		--몬스터 소환
		wantZPos = pNPCUnit:GetPos()
		BonePos.z = wantZPos.z
		local SummonPos = pX2Game:GetLineMap():GetNearest_LUA(BonePos)
		----------------------------------------------유닛 아이디-----------------레벨--------------액티브----위치---방향(true면 오른쪽)---몬스터 생성할때 delaytime 설정-noDrop-keycode 설정
		pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID[SummonNpcID[randNumNPC]], pNPCUnit:GetHardLevel(), true, SummonPos, SummonNpcDir[randNum], 0.2, false, 0 )
		pX2Game:FlushCreateNPCReq()	
		
		--소환할때마다 체력을 소모
		local NowHp = pNPCUnit:GetNowHP_LUA()
		local MinusHp = pNPCUnit:GetVector_LUA( 1 )
		NowHp = NowHp - MinusHp.x
		pNPCUnit:SetNowHP_LUA( NowHp )
			
		pNPCUnit:SetTimerRestart( 0 )	--체크 시간 리셋
	end
	
end
------------------------------------------------------------------------------------------


---------------------------------TENTACLE_PILLAR_SMALL_SUMMON_SUMMON_B-----------------------------
TENTACLE_PILLAR_SMALL_SUMMON_SUMMON_B = 
{
	ANIM_NAME					= "Summon",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,
	
	NEVER_MOVE					= TRUE,
	
	SOUND_PLAY0			= { 0.012, "Plant_OverLord_Sound2.ogg" },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"TENTACLE_PILLAR_SMALL_SUMMON_WAIT", },
	},
}
function TENTACLE_PILLAR_SMALL_SUMMON_SUMMON_B_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 1.2 ) then
		local ArrBoneName = { "R1", "R2", "R3", "R4", "R5", "R6", } --소환될 Bone 이름
		local SummonNpcDir = { false, true, false, true, true, false } --소환될 npc가 쳐다볼 방향
		local SummonNpcID = { "NUI_BORN_VEGA_TROCK_SUMMON", "NUI_BORN_STEEL_TROCK_SUMMON", "NUI_BORN_TROCK_DOG_SUMMON", } --소환될 NPC ID
		local SummonNpcNum = 3 --소환될 NPC ID 배열의 크기 ( 위 배열의 ID 숫자와 같게 맞춰줘야 함 )
		
		--소환될 bone 위치 랜덤 선택
		local randNum = pNPCUnit:GetRandVal(0) % 6 + 1
		local BonePos = pNPCUnit:GetBonePos_LUA( ArrBoneName[randNum] )	
		
		--소환될 NPC 랜덤 선택
		local randNumNPC = pNPCUnit:GetRandVal(0) % SummonNpcNum + 1
		
		--소환 이펙트
		local pEffectSet = pX2Game:GetEffectSet()
		if nil ~= pEffectSet then
			pEffectSet:PlayEffectSetWithCustomPos_LUA( "Tentacle_Pillar_Summon_R1", pNPCUnit, BonePos, D3DXVECTOR3(0, 0, 0) )
		end
		
		--몬스터 소환
		wantZPos = pNPCUnit:GetPos()
		BonePos.z = wantZPos.z
		----------------------------------------------유닛 아이디-----------------레벨--------------액티브----위치---방향(true면 오른쪽)---몬스터 생성할때 delaytime 설정-noDrop-keycode 설정
		local SummonPos = pX2Game:GetLineMap():GetNearest_LUA(BonePos)	
		pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID[SummonNpcID[randNumNPC]], pNPCUnit:GetHardLevel(), true, SummonPos, SummonNpcDir[randNum], 0.0, false, 0 )
		pX2Game:FlushCreateNPCReq()	
		
		--소환할때마다 체력을 소모
		local NowHp = pNPCUnit:GetNowHP_LUA()
		local MinusHp = pNPCUnit:GetVector_LUA( 1 )
		NowHp = NowHp - MinusHp.x
		pNPCUnit:SetNowHP_LUA( NowHp )
		
		pNPCUnit:SetTimerRestart( 0 )	--체크 시간 리셋
	end
	
end
------------------------------------------------------------------------------------------


---------------------------------TENTACLE_PILLAR_SMALL_SUMMON_DYING--------------------------------
TENTACLE_PILLAR_SMALL_SUMMON_DYING =
{
	ANIM_NAME					= "Dying",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 	

	SOUND_PLAY0			= { 0.012, "Plant_OverLord_MagicAttack.ogg" },	

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	DYING_SPEED					= 1,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}
------------------------------------------------------------------------------------------


---------------------------------TENTACLE_PILLAR_SMALL_SUMMON_DAMAGE-------------------------------
TENTACLE_PILLAR_SMALL_SUMMON_DAMAGE = 
{
	ANIM_NAME					= "Damage",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SOUND_PLAY0			= { 0.012, "Plant_OverLord_MagicAttack.ogg" },	
	
	NEVER_MOVE					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"TENTACLE_PILLAR_SMALL_SUMMON_WAIT", },
	},
}
------------------------------------------------------------------------------------------



---------------------------------------함수-----------------------------------------------
function CheckAbleSummon( pX2Game, pNPCUnit )
	local MaxSummonNum = pNPCUnit:GetInt_LUA( 2 ) --최대 소환 가능한 NPC 수 20마리
	local iNumOfNpc = pX2Game:GetNPCUnitNum()
	
	if iNumOfNpc < MaxSummonNum then
		return true
	end
	
	return false
end
function TENTACLE_PILLAR_SMALL_SUMMON_DYING_END( pKTDXApp, pX2Game, pNPCUnit )
	local MasterUnitUID = pNPCUnit:GetInt_LUA (3)
	local pNpc = pX2Game:GetNearestNpcInSpecificRangeByNpcId_LUA( pNPCUnit:GetPos(), MasterUnitUID, 999999 )
	if pNpc ~= nil then
		for i = 0, 3 do
			local vSummonInfo = pNpc:GetVector_LUA (i)
			local vSummonPos = pX2Game:GetLineMap():GetStartPosition( vSummonInfo.x )
			local fGap = pX2Game:GetDist_LUA ( vSummonPos, pNPCUnit:GetPos() )
			if  fGap <= 10 then
				vSummonInfo.y = 0	
				pNpc:SetVector_LUA (i, vSummonInfo)
			end
		end
	end
end