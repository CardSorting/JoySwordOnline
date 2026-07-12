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
	MOTION_FILE_NAME		= "Motion_Imire_Ground_Cube_R.x",
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
	{ STATE_NAME = "IMIRE_GROUND_CUBE_R_START",					LUA_STATE_START_FUNC	= "IMIRE_GROUND_CUBE_R_START_STATE_START", },
	{ STATE_NAME = "IMIRE_GROUND_CUBE_R_BROKEN",				LUA_STATE_START_FUNC	= "IMIRE_GROUND_CUBE_R_BROKEN_STATE_START", },
	{ STATE_NAME = "IMIRE_GROUND_CUBE_R_WAIT",					LUA_STATE_START_FUNC	= "IMIRE_GROUND_CUBE_R_WAIT_STATE_START", },
	
	--리액션 관련
	{ STATE_NAME = "IMIRE_GROUND_CUBE_R_DAMAGE",					},	

	START_STATE					= "IMIRE_GROUND_CUBE_R_START",
	
	SMALL_DAMAGE_LAND_FRONT		= "IMIRE_GROUND_CUBE_R_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "IMIRE_GROUND_CUBE_R_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "IMIRE_GROUND_CUBE_R_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "IMIRE_GROUND_CUBE_R_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "IMIRE_GROUND_CUBE_R_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "IMIRE_GROUND_CUBE_R_DAMAGE",
	FLY_DAMAGE_FRONT			= "IMIRE_GROUND_CUBE_R_DAMAGE",
	FLY_DAMAGE_BACK				= "IMIRE_GROUND_CUBE_R_DAMAGE",
	SMALL_DAMAGE_AIR			= "IMIRE_GROUND_CUBE_R_DAMAGE",	
	BIG_DAMAGE_AIR				= "IMIRE_GROUND_CUBE_R_DAMAGE",
	DOWN_DAMAGE_AIR				= "IMIRE_GROUND_CUBE_R_DAMAGE",
	UP_DAMAGE					= "IMIRE_GROUND_CUBE_R_DAMAGE",
	DAMAGE_REVENGE				= "IMIRE_GROUND_CUBE_R_DAMAGE",
	
	WAIT_STATES = { "IMIRE_GROUND_CUBE_R_WAIT", },	
	
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

IMIRE_GROUND_CUBE_R_START = 
{
	ANIM_NAME					= "Start_R",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	INVINCIBLE					= { 0, 100, }, 		

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	
	NEVER_MOVE					= TRUE,

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"IMIRE_GROUND_CUBE_R_BROKEN",						},
	},
}

IMIRE_GROUND_CUBE_R_BROKEN = 
{
	ANIM_NAME					= "Broken_R",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	INVINCIBLE					= { 0, 100, }, 		

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	
	NEVER_MOVE					= TRUE,


	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"IMIRE_GROUND_CUBE_R_WAIT",						},
	},
}

IMIRE_GROUND_CUBE_R_WAIT = 
{
	ANIM_NAME					= "Broken_Wait_R",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	INVINCIBLE					= { 0, 100, }, 		

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	
	NEVER_MOVE					= TRUE,
	
}

IMIRE_GROUND_CUBE_R_DAMAGE =
{
	ANIM_NAME					= "Broken_Wait_R",
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
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"IMIRE_GROUND_CUBE_R_WAIT",												},
		
	},
}


function IMIRE_GROUND_CUBE_R_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	local pEffectSet = pX2Game:GetEffectSet()
	local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_IMIRE_GROUND_CUBE_R_START", pNPCUnit )
	pNPCUnit:SetEffectSet_LUA( 0, hEffect )
end

function IMIRE_GROUND_CUBE_R_BROKEN_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	local pEffectSet = pX2Game:GetEffectSet()
	local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_IMIRE_GROUND_CUBE_R_BROKEN", pNPCUnit )
	pNPCUnit:SetEffectSet_LUA( 1, hEffect )
end

function IMIRE_GROUND_CUBE_R_WAIT_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
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
		pEffectSet:PlayEffectSet_LUA( "EffectSet_IMIRE_GROUND_CUBE_R_WAIT_RED", pNPCUnit )
	elseif	pNPCUnit:GetInt_LUA(0) == 1 then
		pEffectSet:PlayEffectSet_LUA( "EffectSet_IMIRE_GROUND_CUBE_R_WAIT_BLUE", pNPCUnit )
	elseif	pNPCUnit:GetInt_LUA(0) == 2 then
		pEffectSet:PlayEffectSet_LUA( "EffectSet_IMIRE_GROUND_CUBE_R_WAIT_GREEN", pNPCUnit )
	elseif	pNPCUnit:GetInt_LUA(0) == 3 then
		pEffectSet:PlayEffectSet_LUA( "EffectSet_IMIRE_GROUND_CUBE_R_WAIT_WHITE", pNPCUnit )
	elseif	pNPCUnit:GetInt_LUA(0) == 4 then
		pEffectSet:PlayEffectSet_LUA( "EffectSet_IMIRE_GROUND_CUBE_R_WAIT_LIGHT", pNPCUnit )
	elseif	pNPCUnit:GetInt_LUA(0) == 5 then
		pEffectSet:PlayEffectSet_LUA( "EffectSet_IMIRE_GROUND_CUBE_R_WAIT_DARK", pNPCUnit )
	end

end


