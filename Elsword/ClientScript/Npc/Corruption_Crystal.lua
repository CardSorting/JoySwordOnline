-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



INIT_SYSTEM = 
{
	UNIT_WIDTH		= 200.0,
	UNIT_HEIGHT		= 380.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	UNIT_SCALE		= 0.66,
	RENDER_PARAM	= RENDER_TYPE["RT_REAL_COLOR"],
}

                                                                                 
INIT_DEVICE = 
{
	READY_TEXTURE = 
	{		
	},

	
	READY_SOUND = 
	{
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
	MOTION_FILE_NAME		= "Motion_Corruption_El.X",
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
	HP_CHANGE_RATE			= 10,
	MP_CHANGE_RATE			= 1,
	MP_CHARGE_RATE			= 130,
	
	USE_SLASH_TRACE			= FALSE,
	
	SHADOW_SIZE				= 200,
	SHADOW_FILE_NAME		= "shadow.dds",
	
--	SMALL_HP_BAR_BLUE		= "Small_HP_bar_Blue.TGA",
--	SMALL_HP_BAR_RED		= "Small_HP_bar_Red.TGA",
--	SMALL_HP_BAR_YELLOW 	= "Small_HP_bar_Yellow.TGA",
	
	QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",

	HITTED_TYPE				= HITTED_TYPE["HTD_METAL"],
	FALL_DOWN				= FALSE,
	
	DAMAGE_DOWN         = FALSE,
	DIE_FLY 			= FALSE, 

	NOT_EXTRA_DAMAGE    = TRUE,
}

INIT_STATE = 
{
	{ STATE_NAME = "CORRUPTION_CRYSTAL_START",					LUA_STATE_START_FUNC = "CORRUPTION_CRYSTAL_START_START"			},

															
	{ STATE_NAME = "CORRUPTION_CRYSTAL_WAIT",					LUA_FRAME_MOVE_FUNC = "CORRUPTION_CRYSTAL_WAIT_FRAME_MOVE"			},
	
	
	--리액션 관련
	{ STATE_NAME = "CORRUPTION_CRYSTAL_DAMAGE",					},
	{ STATE_NAME = "CORRUPTION_CRYSTAL_DYING",					LUA_STATE_START_FUNC = "CORRUPTION_CRYSTAL_DYING_START"			},
	
	
	START_STATE					= "CORRUPTION_CRYSTAL_START",
	WAIT_STATE					= "CORRUPTION_CRYSTAL_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "CORRUPTION_CRYSTAL_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "CORRUPTION_CRYSTAL_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "CORRUPTION_CRYSTAL_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "CORRUPTION_CRYSTAL_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "CORRUPTION_CRYSTAL_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "CORRUPTION_CRYSTAL_DAMAGE",
	FLY_DAMAGE_FRONT			= "CORRUPTION_CRYSTAL_DAMAGE",
	FLY_DAMAGE_BACK				= "CORRUPTION_CRYSTAL_DAMAGE",
	SMALL_DAMAGE_AIR			= "CORRUPTION_CRYSTAL_DAMAGE",	
	BIG_DAMAGE_AIR				= "CORRUPTION_CRYSTAL_DAMAGE",
	DOWN_DAMAGE_AIR				= "CORRUPTION_CRYSTAL_DAMAGE",
	UP_DAMAGE					= "CORRUPTION_CRYSTAL_DAMAGE",
	DAMAGE_REVENGE				= "CORRUPTION_CRYSTAL_DAMAGE",
	
	DYING_LAND_FRONT			= "CORRUPTION_CRYSTAL_DYING",
	DYING_LAND_BACK				= "CORRUPTION_CRYSTAL_DYING",
	DYING_SKY					= "CORRUPTION_CRYSTAL_DYING",
	
	COMMON_FRAME_FUNC           = "CORRUPTION_CRYSTAL_COMMON_FRAME_MOVE",

	REVENGE_ATTACK				= "",	
}

INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 9999,		-- sec
		TARGET_NEAR_RANGE			= 0,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 0,		-- cm
		TARGET_LOST_RANGE			= 0,		-- cm
		TARGET_SUCCESS_RATE			= 0,		-- %
		ATTACK_TARGET_RATE			= 0,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 0,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 600,
		DEST_GAP			= 150,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 160,
		
		DIR_CHANGE_INTERVAL = 9999,
		
		WALK_INTERVAL		= 9999,
		NEAR_WALK_RATE		= 100,   --  70,
		FAR_WALK_RATE		= 100,   -- 30,
		
		JUMP_INTERVAL		= 5,
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

CORRUPTION_CRYSTAL_START = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,

    --SOUND_PLAY0			= { 0.01, "El_Extractor_Normal_Start.ogg" },

	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,	
	NEVER_MOVE					= TRUE,
	
	PARTICLE_SEQ = 
	{
	},
	
	EVENT_PROCESS = 
	{		

		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CORRUPTION_CRYSTAL_WAIT",								},
	},
	
	DELETE_EFFECT_SET_ON_DIE	= TRUE,	
} 

CORRUPTION_CRYSTAL_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	NEVER_MOVE					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
} 

CORRUPTION_CRYSTAL_DAMAGE = 
{
	ANIM_NAME					= "Damage",		
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= TRUE,
	NEVER_MOVE					= TRUE,
	
	EVENT_PROCESS = 
	{		

		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CORRUPTION_CRYSTAL_WAIT",								},
	},
}

CORRUPTION_CRYSTAL_DYING = 
{
	ANIM_NAME					= "Dying",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	NEVER_MOVE					= TRUE,
	
	
	ANIM_SPEED_SET =
	{
		{ 0.0, 1.1, 0.2, },
	},
	
	DYING_SPEED 				= 2.0,
	DYING_END					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	
}

function CORRUPTION_CRYSTAL_WAIT_FRAME_MOVE (  pKTDXApp, pX2Game, pNPCUnit )

	local fHPRate = pNPCUnit:GetNowHP() / pNPCUnit:GetMaxHP() 
	
	if ( fHPRate <= 0.5 ) then
	
		if pNPCUnit:GetFlag_LUA( 0 ) == false then
		
			local pEffectSet = pX2Game:GetEffectSet()
			local hEffectState	= pNPCUnit:GetEffectSet_LUA( 0 )
			
			if nil ~= hEffectState then
				pEffectSet:StopEffectSet_LUA( hEffectState )
				pNPCUnit:ClearEffectSet_LUA( 0 )
			end			 
			 
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_El_unstable_activeEnd", pNPCUnit ) 
	
			if nil ~= hEffect then
				pNPCUnit:SetEffectSet_LUA( 0, hEffect )
			end 		
	
			pNPCUnit:SetFlag_LUA( 0, true )
			
		end
		
	end  
	
end

function CORRUPTION_CRYSTAL_START_START( pKTDXApp, pX2Game, pNPCUnit )	

	--초기 초록색으로 설정
	pNPCUnit:SetUnitColor( 0.9, 0.2, 0.1, 1.0, TRUE, D3DBLEND["D3DBLEND_SRCALPHA"], D3DBLEND["D3DBLEND_INVSRCALPHA"] ) 	 
	
	local pEffectSet = pX2Game:GetEffectSet()
	local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_El_unstable_activeStart", pNPCUnit ) 
	
	if nil ~= hEffect then
		pNPCUnit:SetEffectSet_LUA( 0, hEffect )
	end 		
	
	pNPCUnit:SetTimerRestart( 0 )		-- 어그로 타이머 초기화
	
end

function CORRUPTION_CRYSTAL_DYING_START( pKTDXApp, pX2Game, pNPCUnit ) 

	pNPCUnit:SetUnitColor( 0.6, 0.0, 0.0, 1.0, TRUE, D3DBLEND["D3DBLEND_SRCALPHA"], D3DBLEND["D3DBLEND_INVSRCALPHA"] )    
		
	local pEffectSet = pX2Game:GetEffectSet()
	
	local hEffectState = pNPCUnit:GetEffectSet_LUA( 0 )	
	
	if nil ~= hEffectState then
	
		pEffectSet:StopEffectSet_LUA( hEffectState )
		pNPCUnit:ClearEffectSet_LUA( 0 )
		
	end			 	
	
	local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_El_unstable_broken", pNPCUnit )	-- 사망 공격 이펙트
	
	if nil ~= hEffect then
		pNPCUnit:SetEffectSet_LUA( 1, hEffect )
	end 	
	
end

function CORRUPTION_CRYSTAL_COMMON_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if 0 >= pNPCUnit:GetNowHP() then
		return
	end
	
	-- 체력이 소모될 수록 붉은 색에 가까워 지도록 색 변경.
	fHPRate = pNPCUnit:GetNowHP() / pNPCUnit:GetMaxHP() 
	
	fHPRate = 1.0 - fHPRate
	local fColorR = 0.9 - (0.3 * fHPRate)
	local fColorG = 0.2 - (0.2 * fHPRate)
	local fColorB = 0.1 - (0.1 * fHPRate)  	 
	 	
	pNPCUnit:SetUnitColor( fColorR , fColorG , fColorB , 1 , TRUE, D3DBLEND["D3DBLEND_SRCALPHA"], D3DBLEND["D3DBLEND_INVSRCALPHA"] ) 
	
	-- 주위의 적에게 어그로를 끈다. ( 더미 데미지로 타격 )
	local fEnableAttackTime = pNPCUnit:GetTimerElapsedTime( 0 )	-- 다음 공격까지의 간격
	
	if 3.0 < fEnableAttackTime then
	
		-- 어그로 공격 실행
		local pDamageEffect = pX2Game:GetDamageEffect()
		local vPos 			= pNPCUnit:GetBonePos_LUA( "Bip01" )
        local vLandPos		= pNPCUnit:GetLandPosition_LUA()
			
		if nil ~= pDamageEffect then
			pDamageEffect:CreateInstance_LUA( pNPCUnit, "DAMAGE_EFFECT_CORRUPTION_CRYSTAL_NPC_ATTACK", vPos, vLandPos.y )	-- 착탄 지점 표시 이펙트
		end
			
		pNPCUnit:SetTimerRestart( 0 )							-- 어그로 타이머 초기화
	
	end

end