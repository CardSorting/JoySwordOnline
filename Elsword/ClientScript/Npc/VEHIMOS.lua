-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



INIT_SYSTEM = 
{
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	UNIT_SCALE      = 1,
}

INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
		"Explosion_Sphere.dds",
		"Steam_Bp.dds",
		"Particle_Blur.dds",
		"Explosion_Sphere.dds",
		"ColorBallBlue.dds",
		"soket_earth_quake_smoke02.DDS",
	},
	
	READY_SOUND = 
	{
		"Vehimos_Scene_Growl01.ogg",
		"Vehimos_Scene_Footstep01.ogg",
		"Vehimos_Scene_Footstep02.ogg",
	},

	
	READY_XMESH = 
	{
	},
	
	READY_XSKIN_MESH = 
	{
		"VehimosWindAttackBox.X",
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME = "Motion_VEHIMOS.x",	
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 350,
	RUN_SPEED			= 450,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 1500,
}

INIT_COMPONENT =
{
	MAX_HP              = 30000,
	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 130,
	
	USE_SLASH_TRACE		= FALSE,
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	HITTED_TYPE			= HITTED_TYPE["HTD_STONE"],

	HEAD_BONE_NAME 		= "Bip01_Head",
	
	REMAINING_WHEN_SUB_STAGE_CLEAR = TRUE,

	SHADOW_SIZE				= 153500,
	SHADOW_FILE_NAME		= "shadow.dds",	
}

INIT_STATE =
{
	{ STATE_NAME = "VEHIMOS_START", 		LUA_STATE_START_FUNC = "VEHIMOS_START_STATE_START_FUNC", },
	{ STATE_NAME = "VEHIMOS_DAMAGE", 		},
	{ STATE_NAME = "VEHIMOS_WAIT_HABIT",  	LUA_FRAME_MOVE_FUNC = "VEHIMOS_WAIT_HABIT_FRAME_MOVE",	STATE_COOL_TIME	= 30, },		-- 쿨타임 임의 지정
	{ STATE_NAME = "VEHIMOS_WALK", 			LUA_FRAME_MOVE_FUNC = "VEHIMOS_WALK_FRAME_MOVE",},
	{ STATE_NAME = "VEHIMOS_DYING",			LUA_STATE_START_FUNC = "VEHIMOS_DYING_STATE_START_FUNC",},	
	-- { STATE_NAME = "VEHIMOS_FX", },
	
	START_STATE					= "VEHIMOS_START",
	WAIT_STATE					= "VEHIMOS_WALK",
		
	SMALL_DAMAGE_LAND_FRONT		= "VEHIMOS_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "VEHIMOS_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "VEHIMOS_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "VEHIMOS_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "VEHIMOS_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "VEHIMOS_DAMAGE",
	FLY_DAMAGE_FRONT			= "VEHIMOS_DAMAGE",
	FLY_DAMAGE_BACK				= "VEHIMOS_DAMAGE",
	SMALL_DAMAGE_AIR			= "VEHIMOS_DAMAGE",	
	BIG_DAMAGE_AIR				= "VEHIMOS_DAMAGE",
	DOWN_DAMAGE_AIR				= "VEHIMOS_DAMAGE",
	DOWN_DAMAGE_AIR_LANDING		= "VEHIMOS_DAMAGE",
	UP_DAMAGE					= "VEHIMOS_DAMAGE",
	DAMAGE_REVENGE				= "",

	DYING_LAND_FRONT			= "VEHIMOS_DYING",
	DYING_LAND_BACK				= "VEHIMOS_DYING",
	DYING_SKY					= "VEHIMOS_DYING",
	
}

INIT_AI = 
{
	NO_BRAIN = TRUE,
}

----------------------------------------------------------------------------------------------------------------------------------------

VEHIMOS_START = 
{
	ANIM_NAME		= "Start",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	ANIM_SPEED		= 1,
	INVINCIBLE					= { 0, 100, },
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,
	NEVER_MOVE 		= TRUE,
	--         시작 시간,        사운드 파일 이름, 재생될 확률,  내 유닛에게만, 최대 들리는 사정거리, 3D 사운드 여부
	SOUND_PLAY0	= { 1.15, "Vehimos_Scene_Growl01.ogg", 100, FALSE, -1, FALSE },
	
	IMMADIATE_PACKET_SEND	= TRUE,
	
	EVENT_PROCESS = 
	{								
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],			"VEHIMOS_WALK",	},
	},
	-- DELETE_EFFECT_SET_ON_STATE_END = TRUE,
	EFFECT_SET_LIST =
	{
		"EffectSet_VEHIMOS_Dust", 0,	
	},
}

-- VEHIMOS_FX = 
-- {
	-- ANIM_NAME		= "Walk",
	-- PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	-- TRANSITION		= FALSE,
	-- LAND_CONNECT	= FALSE,
	-- ANIM_SPEED		= 1,
	-- INVINCIBLE					= { 0, 100, },
	
	-- CAN_PUSH_UNIT	= FALSE,
	-- CAN_PASS_UNIT	= FALSE,
	
	-- STOP_AT_CURRENT_STATE = TRUE,
	
	-- EVENT_PROCESS = 
	-- {								
		-- { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"VEHIMOS_WALK",			"CT_VEHIMOS_FX",	},
	-- },
	
	-- CT_VEHIMOS_FX = 
	-- {
		-- STATE_TIME_OVER				= 4.5,
	-- },
-- }
----------------------------------------------------------------------------------------------------------------------------------------



function VEHIMOS_START_STATE_START_FUNC( pKTDXApp, pX2Game, pNPCUnit ) -- 

	local vSummonPos1 = D3DXVECTOR3(18000, 6300, -50000) -- 1번 바람 소환 위치
	local vSummonPos2 = D3DXVECTOR3(18500, 6000, -50000) -- 2번 바람 소환 위치
	local vSummonPos3 = D3DXVECTOR3(19000, 5500, -50000) -- 3번 바람 소환 위치
		
	pNPCUnit:SetVector_LUA ( 0, vSummonPos1 )		-- 바람 위치 저장
	pNPCUnit:SetVector_LUA ( 1, vSummonPos2 )	
	pNPCUnit:SetVector_LUA ( 2, vSummonPos3 )	
	
	local iSummonStageNumber1 = 1
	local iSummonStageNumber2 = 1
	local iSummonStageNumber3 = 1

	pNPCUnit:SetInt_LUA ( 0, iSummonStageNumber1 )		-- 1번 바람의 스테이지 저장, 1번 스테이지에서 불러옵니다.
	pNPCUnit:SetInt_LUA ( 1, iSummonStageNumber2 )		-- 2번 바람의 스테이지 저장, 1번 스테이지에서 불러옵니다.
	pNPCUnit:SetInt_LUA ( 2, iSummonStageNumber3 )		-- 3번 바람의 스테이지 저장, 1번 스테이지에서 불러옵니다.
	
	
	local iSummonSize1 = 1
	local iSummonSize2 = 1
	local iSummonSize3 = 1

	
	pNPCUnit:SetNumber_LUA ( 0, iSummonSize1 )		-- 1번 바람 크기
	pNPCUnit:SetNumber_LUA ( 1, iSummonSize2 )		-- 2번 바람 크기
	pNPCUnit:SetNumber_LUA ( 2, iSummonSize3 )		-- 3번 바람 크기
	
	
	
	
	pNPCUnit:SetInt_LUA( 9, 2 )   						   ---저장된 좌표 갯수 - 1
	
	
	
	pNPCUnit:SetFogNPC_LUA ( -2000, 120000, 0, 0, 0, D3DXCOLOR(0.376471, 0.203922, 0.129412, 1) )	-- 안개값 수정
	-- 혹시 Stage 에 맞게 Fog 값 수정해야 한다면, 얘기해주세여
end

----------------------------------------------------------------------------------------------------------------------------------------

VEHIMOS_WALK = 
{
	ANIM_NAME		= "Walk",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	
	INVINCIBLE		= { 0, 100, },
	NEVER_MOVE 		= TRUE,

	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,
	
	SOUND_PLAY0	= { 1.2, "Vehimos_Scene_Footstep02.ogg", 100, FALSE, -1, FALSE },
	SOUND_PLAY1	= { 1.45, "Vehimos_Scene_Footstep02.ogg", 100, FALSE, -1, FALSE },
	SOUND_PLAY2	= { 2.6, "Vehimos_Scene_Footstep02.ogg", 100, FALSE, -1, FALSE },
	SOUND_PLAY3	= { 2.8, "Vehimos_Scene_Footstep02.ogg", 100, FALSE, -1, FALSE },
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{
	--	{ STATE_CHANGE_TYPE["SCT_MOTION_END"],			"VEHIMOS_WALK",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"VEHIMOS_WAIT_HABIT",		"CF_VEHIMOS_WAIT_HABIT",	},					
	},
}
---------------------------------------------------------------------------------------------------------------------------------------


function VEHIMOS_WALK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimTimer_LUA( 0.001 ) then	
		local pEffectSet = pX2Game:GetEffectSet()
		if pEffectSet ~= nil then
			local hEffect = pEffectSet:PlayEffectSet_LUA( "EffectSet_VEHIMOS_Dust", pNPCUnit )	
			pNPCUnit:SetEffectSet_LUA ( 0, hEffect )
		end
	end
end


----------------------------------------------------------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------------------------------------------------------

function CF_VEHIMOS_WAIT_HABIT( pKTDXApp, pX2Game, pNPCUnit ) -- 베히모스가 Magic A State 로 전환될 조건 및 좌표 설정
	local SavedStageAndSubStageIndex = pNPCUnit:GetInt_LUA ( 9 )
	local iPhase = 0
	for iPhase = 0, SavedStageAndSubStageIndex do
		local StageAndSubStageInfo = pNPCUnit:GetInt_LUA ( iPhase )
		if StageAndSubStageInfo == pX2Game:GetNowStageIndex () then
			return true
		end
	end
		
	return false
end

---------------------------------------------------------------------------------------------------------------------------------------

VEHIMOS_DAMAGE = 
{
	ANIM_NAME		= "Damage",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	
	INVINCIBLE		= { 0, 100, },
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,
		
	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE 		= TRUE,

	EVENT_PROCESS = 
	{								
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"VEHIMOS_WALK",	},
	},
	-- DELETE_EFFECT_SET_ON_STATE_END = TRUE,
	EFFECT_SET_LIST =
	{
		"EffectSet_VEHIMOS_Dust", 0,	
		"EffectSet_VEHIMOS_Damage", 0,
	},
	
}

----------------------------------------------------------------------------------------------------------------------------------------



VEHIMOS_WAIT_HABIT = 
{
	ANIM_NAME		= "Wait_Habit",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	ANIM_SPEED		= 1,

	INVINCIBLE		= { 0, 100, },
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,
	NEVER_MOVE 		= TRUE,
		
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{								
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"VEHIMOS_WALK",	},
	},
	-- DELETE_EFFECT_SET_ON_STATE_END = TRUE,
	EFFECT_SET_LIST =
	{
		"EffectSet_VEHIMOS_Dust", 0,	
		"EffectSet_VEHIMOS_Wait_Habit", 0,	
	},
	
	ALARM =
	{
		DANGER  							 = TRUE,  				    	   							--DANGER 표시
		ALARM_MESSAGE 			 = STR_ID_26355,  		  		    					--경고 문구
		DELAY   							 = 0.002,  				    	 								--이 스테이트가 시작되고 이 시간이 경과 후에 경고가 나갑니다.
		REPEAT   						 = TRUE,  		 		   		   							--한 번만 반복 FALSE, 이 스테이트 취할때 마다 반복 TRUE
		ALARM_COLOR_TYPE		 = ALARM_COLOR_TYPE["ACT_ORANGE"],	--경고 문구 색깔 (ACT_RED, ACT_BLUE, ACT_YELLOW ,ACT_ORANGE, ACT_MAGENTA
		DISAPPEAR_TIME  			 = 1, 				  			 								--표시 지속 시간
	},	
	
	
}

---------------------------------------------------------------------------------------------------------------------------------------


function VEHIMOS_WAIT_HABIT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 2.102 ) then
		local iPhase = 0
		local SavedStageAndSubStageIndex = pNPCUnit:GetInt_LUA ( 9 )
		for iPhase = 0, SavedStageAndSubStageIndex do
			local iStageIndex = pNPCUnit:GetInt_LUA ( iPhase )
			if iStageIndex == pX2Game:GetNowStageIndex () then
				local vPos = pNPCUnit:GetVector_LUA ( iPhase )
				local fScale = pNPCUnit:GetNumber_LUA ( iPhase )
				local vScale = D3DXVECTOR3(fScale, fScale, fScale ) -- 1번 바람 소환 위치
				local vRot = pNPCUnit:GetRotateDegree()		
				local pEffectSet = pX2Game:GetEffectSet()
				if pEffectSet ~= nil then
					local hVehimosWindEffect = pEffectSet:PlayEffectSetWithCustomPos_LUA( "EffectSet_Vehimos_MagicAttack_A", pNPCUnit, vPos, D3DXVECTOR3( 0, 0, 0 ) )
					pEffectSet:SetEffectScale_LUA ( hVehimosWindEffect, vScale, true )
				end
			end
		end
	end
end

-------------------------------------------------------------------------------------------------------------------------------------

VEHIMOS_DYING = 
{
	ANIM_NAME		= "Dying",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	NEVER_MOVE 		= TRUE,
	
	INVINCIBLE		= { 0, 100, },
	
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,
	
	DYING_END		= TRUE,
	
	FOCUS_CAMERA_AT_CURRENT_STATE = TRUE,
	STOP_AT_CURRENT_STATE = TRUE,
		
	CAMERA = 
	{
		SUB_CAMERA_TIMING = { 0.5,},		
	
		SUB_CAMERA0 = 
		{
			CAMERA_TYPE		= CAMERA_TYPE["CT_PARTS_LOOK_DIRECT"],
			LOOK_TYPE		= LOOK_TYPE["LT_BONE"],
			LOOK_PARTS		= "Bip01_Neck",
			DISTANCE		= 33000,
			HEIGHT			= 3000,
			ANGLEDEGREE		= -3,
			EYEDISTANCE		= 0,
		},
		SUB_CAMERA1 = 
		{
		
			CAMERA_TYPE		= CAMERA_TYPE["CT_PARTS_LOOK_DIRECT"],
			LOOK_TYPE		= LOOK_TYPE["LT_BONE"],
			LOOK_PARTS		= "Bip01_Neck",
			DISTANCE		= 33000,
			HEIGHT			= 3000,
			ANGLEDEGREE		= -3,
			EYEDISTANCE		= 0,
		},
	},
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

----------------------------------------------------------------------------------------------------------------------------------------

function VEHIMOS_DYING_STATE_START_FUNC( pKTDXApp, pX2Game, pNPCUnit ) -- 베히모스가 소환할 몬스터 UID 및 위치 를 저장
	local pEffectSet = pX2Game:GetEffectSet()
	if hEffectSet ~= nil then
		local hEffectSet = pNPCUnit:GetEffectSet_LUA (0)
		pEffectSet:StopEffectSet_LUA ( hEffectSet )
	end
end

----------------------------------------------------------------------------------------------------------------------------------------


