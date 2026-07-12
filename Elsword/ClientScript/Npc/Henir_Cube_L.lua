-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	UNIT_WIDTH		= 50.0,
	UNIT_HEIGHT		= 100.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	
	RENDER_PARAM	= RENDER_TYPE["RT_CARTOON"],
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
		"Imire_Ground_Cube.tga",
		"Imire_Ground_Cube_Dark.dds",
		"Altera_Village_light_up.dds",
		"Enchant_HenireCube_White_P01.dds",
		"Enchant_HenireCube_Green_P01.dds",
		"cube_light_P04.dds",
		"cube_light_P03.dds",
		"cube_light_P02.dds",
		"cube_light_P01.dds",
		"cube_light_M01.dds",
	},
	
	READY_SOUND = 
	{

	},

	READY_XMESH = 
	{
		"Enchant_HenireCube_White_P02.Y",
		"cube_light_M01.Y",
    },
        
	READY_XSKIN_MESH = 
	{
		"Enchant_HenireCube_White_M01.X",
		"Enchant_HenireCube_Green_motion.X",
	},

}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_Imire_Ground_Cube_L.x",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 0,
	MAX_G_SPEED			= 0,
	
	WALK_SPEED			= 0,
	RUN_SPEED			= 0,
	JUMP_SPEED			= 0,
	DASH_JUMP_SPEED		= 0,
}


INIT_COMPONENT = 
{
	MAX_HP				= 1000,
	MP_CHANGE_RATE		= 0,
	MP_CHARGE_RATE		= 0,
	
	USE_SLASH_TRACE		= FALSE,
	
	SHADOW_SIZE			= 0,
	SHADOW_FILE_NAME	= "shadow.dds",
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	--SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	QUESTION_MARK_SEQ		= "",
	EXCLAMATION_MARK_SEQ	= "",
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	HITTED_TYPE			= HITTED_TYPE["HTD_NO_SOUND"],
	
	NOT_CULL			= TRUE,

	NOT_EXTRA_DAMAGE	= TRUE,

}

INIT_STATE = 
{
	{ STATE_NAME = "IMIRE_GROUND_CUBE_L_START",					LUA_STATE_START_FUNC	= "IMIRE_GROUND_CUBE_L_START_STATE_START", 
																LUA_FRAME_MOVE_FUNC		= "IMIRE_GROUND_CUBE_L_START_FRAME_MOVE",	},			
	{ STATE_NAME = "IMIRE_GROUND_CUBE_L_BROKEN",				LUA_STATE_START_FUNC	= "IMIRE_GROUND_CUBE_L_BROKEN_STATE_START",
																LUA_FRAME_MOVE_FUNC		= "IMIRE_GROUND_CUBE_L_BROKEN_FRAME_MOVE",	},
	{ STATE_NAME = "IMIRE_GROUND_CUBE_L_WAIT",					LUA_STATE_START_FUNC	= "IMIRE_GROUND_CUBE_L_WAIT_STATE_START", 
																LUA_FRAME_MOVE_FUNC		= "IMIRE_GROUND_CUBE_L_FRAME_MOVE",			},
	
	--리액션 관련
	{ STATE_NAME = "IMIRE_GROUND_CUBE_L_DAMAGE",					},	
	
	START_STATE					= "IMIRE_GROUND_CUBE_L_START",
	
	SMALL_DAMAGE_LAND_FRONT		= "IMIRE_GROUND_CUBE_L_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "IMIRE_GROUND_CUBE_L_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "IMIRE_GROUND_CUBE_L_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "IMIRE_GROUND_CUBE_L_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "IMIRE_GROUND_CUBE_L_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "IMIRE_GROUND_CUBE_L_DAMAGE",
	FLY_DAMAGE_FRONT			= "IMIRE_GROUND_CUBE_L_DAMAGE",
	FLY_DAMAGE_BACK				= "IMIRE_GROUND_CUBE_L_DAMAGE",
	SMALL_DAMAGE_AIR			= "IMIRE_GROUND_CUBE_L_DAMAGE",	
	BIG_DAMAGE_AIR				= "IMIRE_GROUND_CUBE_L_DAMAGE",
	DOWN_DAMAGE_AIR				= "IMIRE_GROUND_CUBE_L_DAMAGE",
	UP_DAMAGE					= "IMIRE_GROUND_CUBE_L_DAMAGE",
	DAMAGE_REVENGE				= "IMIRE_GROUND_CUBE_L_DAMAGE",
	
	WAIT_STATES = { "IMIRE_GROUND_CUBE_L_WAIT", },	

	REVENGE_ATTACK				= "",	
}

INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 99999,	-- sec
		TARGET_NEAR_RANGE			= 0,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 0,		-- cm
		TARGET_LOST_RANGE			= 0,		-- cm
		TARGET_SUCCESS_RATE			= 0,		-- %
		ATTACK_TARGET_RATE			= 0,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 0,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE = 
	{		
		DEST_GAP			= 150,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 160,
		
		DIR_CHANGE_INTERVAL = 0.7,
		
		MOVE_SPLIT_RANGE	= 600,
		WALK_INTERVAL		= 3,
		NEAR_WALK_RATE		= 100,   --  70,
		FAR_WALK_RATE		= 100,   -- 30,
		
		JUMP_INTERVAL		= 5,
		UP_JUMP_RATE		= 100, -- 40,
		UP_DOWN_RATE		= 20,
		DOWN_JUMP_RATE		= 100,    --  20,
		DOWN_DOWN_RATE		= 40,
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 100, --50,		
		PATROL_RANGE			= 300,
		PATROL_COOL_TIME		= 1,
		ONLY_THIS_LINE_GROUP	= TRUE,
	},
	
	ESCAPE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 500,	-- cm
		ESCAPE_GAP			= 600,	-- 이 거리 보다 멀어지면 도망 성공
		
		WALK_INTERVAL		= 1,	-- 초
		NEAR_WALK_RATE		= 100,   --  10,
		FAR_WALK_RATE		= 100,   -- 10,
		
		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 100, -- 30,
		UP_DOWN_RATE		= 30,
		DOWN_JUMP_RATE		= 100,    --  30,
		DOWN_DOWN_RATE		= 30,
	},
	
	ESCAPE_CONDITION = 
	{
		RATE				= 100, -- 50,
		MY_HP				= 20,		-- %, 전체 HP에 대해 현재 HP의 비율
		ESCAPE_RANGE		= 600,		-- 이 범위 안에 들어오면 타격당하지 않아도 RATE에 지정된 확률로 도망
	}
}

IMIRE_GROUND_CUBE_L_START = 
{
	ANIM_NAME					= "Start_L",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	
	NEVER_MOVE					= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"IMIRE_GROUND_CUBE_L_BROKEN",						},
	},
}

IMIRE_GROUND_CUBE_L_BROKEN = 
{
	ANIM_NAME					= "Broken_L",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	
	NEVER_MOVE					= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"IMIRE_GROUND_CUBE_L_WAIT",						},
	},
}

IMIRE_GROUND_CUBE_L_WAIT = 
{
	ANIM_NAME					= "Broken_Wait_L",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	
	
	NEVER_MOVE					= TRUE,
		
}

IMIRE_GROUND_CUBE_L_DAMAGE =
{
	ANIM_NAME					= "Broken_Wait_L",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	INVINCIBLE					= { 0, 100, }, 		

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,

    SOUND_PLAY0			= { 0.024, "HENIR_Chest_Damage.ogg" },
	
	NEVER_MOVE					= TRUE,
	
	EVENT_PROCESS = 
	{
		--{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"CHEST_WAIT",												},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"IMIRE_GROUND_CUBE_L_WAIT",												},
	},
}

function IMIRE_GROUND_CUBE_L_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pUserUnit1 = pX2Game:GetUserUnit(0)
	pUserUnit2 = pX2Game:GetUserUnit(1)
	pUserUnit3 = pX2Game:GetUserUnit(2)
	pUserUnit4 = pX2Game:GetUserUnit(3)

	if pUserUnit1 ~= nil then
		pUserUnit1:EndHenirBuff()
	end
	if pUserUnit2 ~= nil then
		pUserUnit2:EndHenirBuff()
	end
	if pUserUnit3 ~= nil then
		pUserUnit3:EndHenirBuff()
	end
	if pUserUnit4 ~= nil then
		pUserUnit4:EndHenirBuff()
	end


	local pEffectSet = pX2Game:GetEffectSet()
	local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_IMIRE_GROUND_CUBE_L_START", pNPCUnit )
	pNPCUnit:SetEffectSet_LUA( 0, hEffect )
end

function IMIRE_GROUND_CUBE_L_START_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	if pNPCUnit:AnimEventTimer_LUA( 1.00 ) then
		local iPowerOfEl = -1
		local iRateSecondBuff = pNPCUnit:GetRandVal() % 100
		if iRateSecondBuff < 50 then
			iPowerOfEl = pNPCUnit:GetRandVal() % 6
		end

		pNPCUnit:SetInt_LUA(0, iPowerOfEl)

		local pUnit = pNPCUnit:GetConsultNpc( NPC_UNIT_ID["NUI_HENIR_RESTROOM_CUBE_B"] )
		if pUnit ~= nil then
			pUnit:SetInt_LUA(0, iPowerOfEl)
		end

	end
end

function IMIRE_GROUND_CUBE_L_BROKEN_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	local pEffectSet = pX2Game:GetEffectSet()
	local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_IMIRE_GROUND_CUBE_L_BROKEN", pNPCUnit )
	pNPCUnit:SetEffectSet_LUA( 1, hEffect )
end


function IMIRE_GROUND_CUBE_L_BROKEN_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 2.00 ) then
		HenirBuffFirst(pX2Game)
	end
end


function IMIRE_GROUND_CUBE_L_WAIT_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	local pEffectSet = pX2Game:GetEffectSet()

	if	pNPCUnit:GetInt_LUA(0) ~= -1 then
		local hEffect0 = pNPCUnit:GetEffectSet_LUA( 0 )
		if nil ~= hEffect0 then
			pEffectSet:StopEffectSet_LUA( hEffect0 )
			pNPCUnit:ClearEffectSet_LUA( 0 )
		end	
		local hEffect1 = pNPCUnit:GetEffectSet_LUA( 1 )
		if nil ~= hEffect1 then
			pEffectSet:StopEffectSet_LUA( hEffect1 )
			pNPCUnit:ClearEffectSet_LUA( 1 )
		end	
	end

	if	pNPCUnit:GetInt_LUA(0) == -1 then
		-- 2차 버프 없음
	elseif	pNPCUnit:GetInt_LUA(0) == 0 then
		pEffectSet:PlayEffectSet_LUA( "EffectSet_IMIRE_GROUND_CUBE_L_WAIT_RED", pNPCUnit )
	elseif	pNPCUnit:GetInt_LUA(0) == 1 then
		pEffectSet:PlayEffectSet_LUA( "EffectSet_IMIRE_GROUND_CUBE_L_WAIT_BLUE", pNPCUnit )
	elseif	pNPCUnit:GetInt_LUA(0) == 2 then
		pEffectSet:PlayEffectSet_LUA( "EffectSet_IMIRE_GROUND_CUBE_L_WAIT_GREEN", pNPCUnit )
	elseif	pNPCUnit:GetInt_LUA(0) == 3 then
		pEffectSet:PlayEffectSet_LUA( "EffectSet_IMIRE_GROUND_CUBE_L_WAIT_WHITE", pNPCUnit )
	elseif	pNPCUnit:GetInt_LUA(0) == 4 then
		pEffectSet:PlayEffectSet_LUA( "EffectSet_IMIRE_GROUND_CUBE_L_WAIT_LIGHT", pNPCUnit )
	elseif	pNPCUnit:GetInt_LUA(0) == 5 then
		pEffectSet:PlayEffectSet_LUA( "EffectSet_IMIRE_GROUND_CUBE_L_WAIT_DARK", pNPCUnit )
	end

end

function IMIRE_GROUND_CUBE_L_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	if pNPCUnit:AnimEventTimer_LUA( 2.00 ) then
		if	pNPCUnit:GetInt_LUA(0) == 0 then
			HenirBuffFire(pX2Game)
		elseif	pNPCUnit:GetInt_LUA(0) == 1 then
			HenirBuffWater(pX2Game)
		elseif	pNPCUnit:GetInt_LUA(0) == 2 then
			HenirBuffNature(pX2Game)
		elseif	pNPCUnit:GetInt_LUA(0) == 3 then
			HenirBuffWind(pX2Game)
		elseif	pNPCUnit:GetInt_LUA(0) == 4 then
			HenirBuffLight(pX2Game)
		elseif	pNPCUnit:GetInt_LUA(0) == 5 then
			HenirBuffDark(pX2Game)
		end
	end
end


function HenirBuffFirst(pX2Game)
	pUserUnit1 = pX2Game:GetUserUnit(0)
	pUserUnit2 = pX2Game:GetUserUnit(1)
	pUserUnit3 = pX2Game:GetUserUnit(2)
	pUserUnit4 = pX2Game:GetUserUnit(3)

	if pUserUnit1 ~= nil then
		pUserUnit1:StartHenirBuffFirst()
	end
	if pUserUnit2 ~= nil then
		pUserUnit2:StartHenirBuffFirst()
	end
	if pUserUnit3 ~= nil then
		pUserUnit3:StartHenirBuffFirst()
	end
	if pUserUnit4 ~= nil then
		pUserUnit4:StartHenirBuffFirst()
	end
end


function HenirBuffFire(pX2Game)
	pUserUnit1 = pX2Game:GetUserUnit(0)
	pUserUnit2 = pX2Game:GetUserUnit(1)
	pUserUnit3 = pX2Game:GetUserUnit(2)
	pUserUnit4 = pX2Game:GetUserUnit(3)

	if pUserUnit1 ~= nil then
		pUserUnit1:SetBuffFactorToGameUnitByBuffFactorID_LUA( BUFF_FACTOR_ID["BFI_BUFF_HENIR_FIRE"] )
	end
	if pUserUnit2 ~= nil then
		pUserUnit2:SetBuffFactorToGameUnitByBuffFactorID_LUA( BUFF_FACTOR_ID["BFI_BUFF_HENIR_FIRE"] )
	end
	if pUserUnit3 ~= nil then
		pUserUnit3:SetBuffFactorToGameUnitByBuffFactorID_LUA( BUFF_FACTOR_ID["BFI_BUFF_HENIR_FIRE"] )
	end
	if pUserUnit4 ~= nil then
		pUserUnit4:SetBuffFactorToGameUnitByBuffFactorID_LUA( BUFF_FACTOR_ID["BFI_BUFF_HENIR_FIRE"] )
	end
end

function HenirBuffWater(pX2Game)
	pUserUnit1 = pX2Game:GetUserUnit(0)
	pUserUnit2 = pX2Game:GetUserUnit(1)
	pUserUnit3 = pX2Game:GetUserUnit(2)
	pUserUnit4 = pX2Game:GetUserUnit(3)

	if pUserUnit1 ~= nil then
		pUserUnit1:SetBuffFactorToGameUnitByBuffFactorID_LUA( BUFF_FACTOR_ID["BFI_BUFF_HENIR_WATER"] )
	end
	if pUserUnit2 ~= nil then
		pUserUnit2:SetBuffFactorToGameUnitByBuffFactorID_LUA( BUFF_FACTOR_ID["BFI_BUFF_HENIR_WATER"] )
	end
	if pUserUnit3 ~= nil then
		pUserUnit3:SetBuffFactorToGameUnitByBuffFactorID_LUA( BUFF_FACTOR_ID["BFI_BUFF_HENIR_WATER"] )
	end
	if pUserUnit4 ~= nil then
		pUserUnit4:SetBuffFactorToGameUnitByBuffFactorID_LUA( BUFF_FACTOR_ID["BFI_BUFF_HENIR_WATER"] )
	end
end

function HenirBuffNature(pX2Game)
	pUserUnit1 = pX2Game:GetUserUnit(0)
	pUserUnit2 = pX2Game:GetUserUnit(1)
	pUserUnit3 = pX2Game:GetUserUnit(2)
	pUserUnit4 = pX2Game:GetUserUnit(3)

	if pUserUnit1 ~= nil then
		pUserUnit1:SetBuffFactorToGameUnitByBuffFactorID_LUA( BUFF_FACTOR_ID["BFI_BUFF_HENIR_NATURE"] )
	end
	if pUserUnit2 ~= nil then
		pUserUnit2:SetBuffFactorToGameUnitByBuffFactorID_LUA( BUFF_FACTOR_ID["BFI_BUFF_HENIR_NATURE"] )
	end
	if pUserUnit3 ~= nil then
		pUserUnit3:SetBuffFactorToGameUnitByBuffFactorID_LUA( BUFF_FACTOR_ID["BFI_BUFF_HENIR_NATURE"] )
	end
	if pUserUnit4 ~= nil then
		pUserUnit4:SetBuffFactorToGameUnitByBuffFactorID_LUA( BUFF_FACTOR_ID["BFI_BUFF_HENIR_NATURE"] )
	end
end

function HenirBuffWind(pX2Game)
	pUserUnit1 = pX2Game:GetUserUnit(0)
	pUserUnit2 = pX2Game:GetUserUnit(1)
	pUserUnit3 = pX2Game:GetUserUnit(2)
	pUserUnit4 = pX2Game:GetUserUnit(3)

	if pUserUnit1 ~= nil then
		pUserUnit1:SetBuffFactorToGameUnitByBuffFactorID_LUA( BUFF_FACTOR_ID["BFI_BUFF_HENIR_WIND"] )
	end
	if pUserUnit2 ~= nil then
		pUserUnit2:SetBuffFactorToGameUnitByBuffFactorID_LUA( BUFF_FACTOR_ID["BFI_BUFF_HENIR_WIND"] )
	end
	if pUserUnit3 ~= nil then
		pUserUnit3:SetBuffFactorToGameUnitByBuffFactorID_LUA( BUFF_FACTOR_ID["BFI_BUFF_HENIR_WIND"] )
	end
	if pUserUnit4 ~= nil then
		pUserUnit4:SetBuffFactorToGameUnitByBuffFactorID_LUA( BUFF_FACTOR_ID["BFI_BUFF_HENIR_WIND"] )
	end
end

function HenirBuffLight(pX2Game)
	pUserUnit1 = pX2Game:GetUserUnit(0)
	pUserUnit2 = pX2Game:GetUserUnit(1)
	pUserUnit3 = pX2Game:GetUserUnit(2)
	pUserUnit4 = pX2Game:GetUserUnit(3)

	if pUserUnit1 ~= nil then
		pUserUnit1:SetBuffFactorToGameUnitByBuffFactorID_LUA( BUFF_FACTOR_ID["BFI_BUFF_HENIR_LIGHT"] )
	end
	if pUserUnit2 ~= nil then
		pUserUnit2:SetBuffFactorToGameUnitByBuffFactorID_LUA( BUFF_FACTOR_ID["BFI_BUFF_HENIR_LIGHT"] )
	end
	if pUserUnit3 ~= nil then
		pUserUnit3:SetBuffFactorToGameUnitByBuffFactorID_LUA( BUFF_FACTOR_ID["BFI_BUFF_HENIR_LIGHT"] )
	end
	if pUserUnit4 ~= nil then
		pUserUnit4:SetBuffFactorToGameUnitByBuffFactorID_LUA( BUFF_FACTOR_ID["BFI_BUFF_HENIR_LIGHT"] )
	end
end

function HenirBuffDark(pX2Game)		-- 즉시 피 채워주는 기능이므로, 따로 버프를 만들지 말자.
	pUserUnit1 = pX2Game:GetUserUnit(0)
	pUserUnit2 = pX2Game:GetUserUnit(1)
	pUserUnit3 = pX2Game:GetUserUnit(2)
	pUserUnit4 = pX2Game:GetUserUnit(3)

	if pUserUnit1 ~= nil then
		pUserUnit1:StartHenirBuffDark()
	end
	if pUserUnit2 ~= nil then
		pUserUnit2:StartHenirBuffDark()
	end
	if pUserUnit3 ~= nil then
		pUserUnit3:StartHenirBuffDark()
	end
	if pUserUnit4 ~= nil then
		pUserUnit4:StartHenirBuffDark()
	end
end