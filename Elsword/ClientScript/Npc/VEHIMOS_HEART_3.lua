-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	UNIT_WIDTH		= 200.0,
	UNIT_HEIGHT		= 150.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	UNIT_SCALE		= 1.4,
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
		"NUI_VEHIMOS_HEART_001.dds",
		"NUI_VEHIMOS_HEART_003.dds",
		"Explosion_Sphere.dds",
		"Particle_Blur.dds",
		"Gear_Water.tga",
	},
	
	READY_SOUND = 
	{
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME	= "Motion_Vehimos_Heart.x",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 400,
	RUN_SPEED			= 400,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 2300,
}


INIT_COMPONENT = 
{
	MAX_HP				= 1500,
	
	USE_SLASH_TRACE		= FALSE,
	
	SHADOW_SIZE			= 200,
	SHADOW_FILE_NAME	= "shadow.dds",
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",

	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	
	FALL_DOWN			= TRUE,
	
	DAMAGE_DOWN         = FALSE,	
	DIE_FLY				= FALSE,
	
	NOT_EXTRA_DAMAGE	= TRUE,
}

INIT_STATE = 
{
	{ STATE_NAME = "VEHIMOS_HEART_3_START",							LUA_STATE_END_FUNC = "VEHIMOS_HEART_3_START_END",				},
	{ STATE_NAME = "VEHIMOS_HEART_3_WAIT",							},
	
	--Red Egg를 소환
	{ STATE_NAME = "VEHIMOS_HEART_3_SUMMON_A",						LUA_FRAME_MOVE_FUNC = "VEHIMOS_HEART_3_SUMMON_A_FRAME_MOVE",
																	LUA_STATE_END_FUNC = "VEHIMOS_HEART_3_SUMMON_A_END",			},
	--생체, 변종 촉수를 소환
	{ STATE_NAME = "VEHIMOS_HEART_3_SUMMON_B",						LUA_FRAME_MOVE_FUNC = "VEHIMOS_HEART_3_SUMMON_B_FRAME_MOVE",	
																	LUA_STATE_END_FUNC = "VEHIMOS_HEART_3_SUMMON_B_END",			},
	
	{ STATE_NAME = "VEHIMOS_HEART_3_DYING",							},
	{ STATE_NAME = "VEHIMOS_HEART_3_DAMAGE",							},

	START_STATE					= "VEHIMOS_HEART_3_START",
	WAIT_STATE					= "VEHIMOS_HEART_3_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "VEHIMOS_HEART_3_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "VEHIMOS_HEART_3_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "VEHIMOS_HEART_3_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "VEHIMOS_HEART_3_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "VEHIMOS_HEART_3_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "VEHIMOS_HEART_3_DAMAGE",
	
	DYING_LAND_FRONT			= "VEHIMOS_HEART_3_DYING",
	DYING_LAND_BACK				= "VEHIMOS_HEART_3_DYING",
	DYING_SKY					= "VEHIMOS_HEART_3_DYING",
	
	REVENGE_ATTACK				= "",
}


INIT_AI = 
{
	NO_BRAIN = TRUE,
}

VEHIMOS_HEART_3_START = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	INVINCIBLE					= { 0, 100, },
	ANIM_SPEED					= 5,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,	

	NEVER_MOVE					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"VEHIMOS_HEART_3_WAIT",							},
		
	},
}
function VEHIMOS_HEART_3_START_END( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetTimerRestart( 0 )	--Summon_A 체크 시간 리셋
	pNPCUnit:SetTimerRestart( 1 )	--Summon_B 체크 시간 리셋
	
	pNPCUnit:SetInt_LUA( 0, 4 )	--Summon_A의 소환 쿨타임 15초
	pNPCUnit:SetInt_LUA( 1, 99999 )		--Summon_B의 소환 쿨타임 10초
	pNPCUnit:SetInt_LUA( 2, 6 )		--최대 소환 가능한 Red Egg 수 4마리
	pNPCUnit:SetInt_LUA( 3, 10 )	--최대 소환 가능한 촉수 수 20마리
	pNPCUnit:SetInt_LUA( 4, 15 )	--최대 소환 가능한 NPC 수 20마리
	
	local NowHp = pNPCUnit:GetNowHP_LUA()
	local MinusHp = NowHp * 0.15	-- 몇 % 씩 깍일지 정해주세요( 숫자 - 소수점으로 )
	pNPCUnit:SetVector_LUA( 0, D3DXVECTOR3( MinusHp, 0, 0 ) )
end

VEHIMOS_HEART_3_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,	

	NEVER_MOVE					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"VEHIMOS_HEART_3_SUMMON_A",	"CF_VEHIMOS_HEART_3_SUMMON_A",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"VEHIMOS_HEART_3_SUMMON_B",	"CF_VEHIMOS_HEART_3_SUMMON_B",	},
	},
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_VEHIMOS_HEART_Wait", 0,
	},
	
	EFFECT_SET_LIFE_TIME  = 4,
	DELETE_EFFECT_SET_ON_DIE = TRUE,
}
function CF_VEHIMOS_HEART_3_SUMMON_A( pKTDXApp, pX2Game, pNPCUnit )

	--Summon_A 시간 체크
	if pNPCUnit:GetInt_LUA( 0 ) < pNPCUnit:GetTimerElapsedTime( 0 ) then

		local iNumOfNpc = pX2Game:GetNPCUnitListSize() --현재 npc 수
		local checkNpcNum = 0
		
		--최대 npc 소환 가능 숫자 체크
		if true == CheckAbleSummon( pX2Game, pNPCUnit ) then
			--Red Egg 소환된 숫자 조사
			for i = 0, iNumOfNpc - 1 do
				local pNpc = pX2Game:GetNPCUnit( i )
				
				if nil ~= pNpc then
					--살아 있는지 체크
					local npcHP = pNpc:GetNowHP_LUA()
					if npcHP > 0 then
						--Red Egg인지 체크
						if true == pNpc:IsUnitID( NPC_UNIT_ID["NUI_RED_EGG_SUMMON"] ) then
							checkNpcNum = checkNpcNum + 1
						end
					end
				end
			end
			
			--최대 소환 갯수보다 작으면 VEHIMOS_HEART_3_SUMMON_A state로 넘어감
			if checkNpcNum < pNPCUnit:GetInt_LUA( 2 ) then
				return true
			end	
		end
	end
	
	return false
end

function CF_VEHIMOS_HEART_3_SUMMON_B( pKTDXApp, pX2Game, pNPCUnit )

	--Summon_B 시간 체크
	if pNPCUnit:GetInt_LUA( 1 ) < pNPCUnit:GetTimerElapsedTime( 1 ) then		

		local iNumOfNpc = pX2Game:GetNPCUnitListSize() --현재 npc 수
		local checkNpcNum = 0
		
		--최대 npc 소환 가능 숫자 체크
		if true == CheckAbleSummon( pX2Game, pNPCUnit ) then
			--촉수 소환된 수자 조사
			for i = 0, iNumOfNpc - 1 do
				local pNpc = pX2Game:GetNPCUnit( i )
				
				if nil ~= pNpc then
					--살아 있는지 체크
					local npcHP = pNpc:GetNowHP_LUA()
					if npcHP > 0 then
						--촉수인지 체크
						if true == pNpc:IsUnitID( NPC_UNIT_ID["NUI_PHYSIC_TENTACLE_SUMMON"] ) or
						   true == pNpc:IsUnitID( NPC_UNIT_ID["NUI_MAGIC_TENTACLE_SUMMON"] ) then
						   checkNpcNum = checkNpcNum + 1
						end
					end
				end
			end
			
			--최대 소환 갯수보다 작으면 VEHIMOS_HEART_3_SUMMON_B state로 넘어감
			if checkNpcNum < pNPCUnit:GetInt_LUA( 3 ) then
				return true
			end
		end
	end
	
	return false
end


VEHIMOS_HEART_3_SUMMON_A = 
{
	ANIM_NAME					= "SummonA",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	NEVER_MOVE					= TRUE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	SOUND_PLAY0					= { 0.4, "DarkGate_MonSummon01.ogg" },

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"VEHIMOS_HEART_3_WAIT", },
	},
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_VEHIMOS_HEART_2_Summon", 0,
	},
	EFFECT_SET_LIFE_TIME  = 4,
	DELETE_EFFECT_SET_ON_DIE = TRUE,
}
function VEHIMOS_HEART_3_SUMMON_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 2.4 ) then
		if nil ~= pX2Game:GetLineMap() then
			local ArrSize = 12 --ArrPos 배열안의 인자 갯수와 숫자를 같게 해줘야 함.
			local ArrPos = { 103, 105, 106, 107, 109, 110, 111, 113, 114, 115, 116, 117, } --라인 맵의 스타트 포지션 지정 해줘야 함.
							  	
			local RandNum = 0;
			local IsSummon = false
			local vPos
			for i = 1, ArrSize do --소환될 지정 장소 중 비어 있는 장소를 탐색.
				RandNum = math.random( 1, ArrSize )
				vPos = pX2Game:GetLineMap():GetStartPosition( ArrPos[RandNum] )
				
				--해당 위치에 Red Egg가 소환되어 있지 않다면 소환한다.
				if false == pX2Game:IsNearNPCUnitUID_LUA( vPos, NPC_UNIT_ID["NUI_RED_EGG_SUMMON"], 2 ) then
			                      -----------------------유닛 아이디----------------------레벨--------------액티브----위치---방향(true면 오른쪽)---몬스터 생성할때 delaytime 설정-noDrop-keycode 설정
					pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_RED_EGG_SUMMON"], pNPCUnit:GetHardLevel(), true, vPos, false, 0.0, false, 0 )
					IsSummon = true
					break
				end
			end
			
			if true == IsSummon then
				pX2Game:FlushCreateNPCReq()				
				--소환할때마다 체력을 소모
				local NowHp = pNPCUnit:GetNowHP_LUA()
				local MinusHp = pNPCUnit:GetVector_LUA( 0 )
				NowHp = NowHp - MinusHp.x
				pNPCUnit:SetNowHP_LUA( NowHp )
			end
			
		end
	end
	
end

function VEHIMOS_HEART_3_SUMMON_A_END( pKTDXApp, pX2Game, pNPCUnit )
	--타이머 다시 리셋
	pNPCUnit:SetTimerRestart( 0 )
end

VEHIMOS_HEART_3_SUMMON_B = 
{
	ANIM_NAME					= "SummonB",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	NEVER_MOVE					= TRUE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,	
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	SOUND_PLAY0					= { 0.4, "DarkGate_MonSummon01.ogg" },

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"VEHIMOS_HEART_3_WAIT", },
	},
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_VEHIMOS_HEART_Summon", 0,
	},
	EFFECT_SET_LIFE_TIME  = 4,
	DELETE_EFFECT_SET_ON_DIE = TRUE,
}
function VEHIMOS_HEART_3_SUMMON_B_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 1.2 ) then
		if nil ~= pX2Game:GetLineMap() then
			local ArrSize = 9 --ArrPos 배열안의 인자 갯수와 숫자를 같게 해줘야 함.
			local ArrPos = { 118, 116, 115, 113, 112, 110, 107, 105, 104,  } --라인 맵의 스타트 포지션 지정 해줘야 함.
			local RandNum = 0;
			local IsSummon = false
			local vPos
			for i = 1, ArrSize do --소환될 지정 장소 중 비어 있는 장소를 탐색.
				RandNum = math.random( 1, ArrSize )
				vPos = pX2Game:GetLineMap():GetStartPosition( ArrPos[RandNum] )
				
				--해당 위치에 Red Egg가 소환되어 있지 않다면 소환한다.
				if false == pX2Game:IsNearNPCUnitUID_LUA( vPos, NPC_UNIT_ID["NUI_PHYSIC_TENTACLE_SUMMON"], 10 ) and
				   false == pX2Game:IsNearNPCUnitUID_LUA( vPos, NPC_UNIT_ID["NUI_MAGIC_TENTACLE_SUMMON"], 10 ) then
					local RandomSelect = pNPCUnit:GetRandVal(0) % 2
					if RandomSelect == 0 then
						pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_MAGIC_TENTACLE_SUMMON"], pNPCUnit:GetHardLevel(), false, vPos, false, 0.0, true, 0 )
					else
						pX2Game:PushCreateNPCReq_Lua( NPC_UNIT_ID["NUI_PHYSIC_TENTACLE_SUMMON"], pNPCUnit:GetHardLevel(), false, vPos, false, 0.0, true, 0 )
					end
					IsSummon = true
					break
				end
			end

			if true == IsSummon then
				pX2Game:FlushCreateNPCReq()				
				--소환할때마다 체력을 소모
				local NowHp = pNPCUnit:GetNowHP_LUA()
				local MinusHp = pNPCUnit:GetVector_LUA( 0 )
				NowHp = NowHp - MinusHp.x
				pNPCUnit:SetNowHP_LUA( NowHp )
			end
			
		end
	end
	
end

function VEHIMOS_HEART_3_SUMMON_B_END( pKTDXApp, pX2Game, pNPCUnit )
	--타이머 다시 리셋
	pNPCUnit:SetTimerRestart( 1 )
end


VEHIMOS_HEART_3_DYING =
{
	ANIM_NAME					= "Dying",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 	

	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,		

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	SOUND_PLAY0					= { 0.2, "BarrierMachine_ShotDown.ogg" },
	
	DYING_END					= TRUE,
	DYING_SPEED					= 1,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EFFECT_SET_LIST = 
	{
		"EffectSet_VEHIMOS_HEART_Dying", 0,
	},
}

VEHIMOS_HEART_3_DAMAGE = 
{
	ANIM_NAME					= "Damage",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED			= TRUE,	
	
	NEVER_MOVE					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"VEHIMOS_HEART_3_WAIT", },
	},
}


---------------------------------------함수-----------------------------------------------
function CheckAbleSummon( pX2Game, pNPCUnit )
	local MaxSummonNum = pNPCUnit:GetInt_LUA( 4 ) --최대 소환 가능한 NPC 수 20마리
	local iNumOfNpc = pX2Game:GetNPCUnitNum()
	
	if iNumOfNpc < MaxSummonNum then
		return true
	end
	
	return false
end

