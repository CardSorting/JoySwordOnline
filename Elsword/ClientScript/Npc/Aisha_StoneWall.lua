-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	UNIT_WIDTH		= 80.0,
	UNIT_HEIGHT		= 150.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	
	--RENDER_PARAM	= RENDER_TYPE["RT_CARTOON"],
	ALPHA_BLEND		= TRUE,
	
}

INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
		"EM_Stone_Wall_Effect02.dds",
	},
	
	READY_XSKIN_MESH =
	{
		"EM_Stone_Wall_Effect02.x",
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "EM_Stone_Wall_Effect.x",
	--ADD_ROTATE_Y			= -20.0,
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
	
	HEAD_BONE_NAME			= "Object01",
	
	--HYPER_MODE_COUNT	= 0,
	--MAX_HYPER_MODE_TIME	= 30,
	
	HITTED_TYPE			= HITTED_TYPE["HTD_STONE"],
	
	NOT_EXTRA_DAMAGE	= TRUE,
	
	DIE_FLY             = 0,
	--CAN_BE_STEPPED_ON = TRUE,
}

INIT_STATE = 
{
	{ STATE_NAME = "AISHA_STONE_WALL_START",	},
	{ STATE_NAME = "AISHA_STONE_WALL_WAIT",		LUA_STATE_START_FUNC = "AISHA_STONE_WALL_WAIT_STATE_START",
												LUA_FRAME_MOVE_FUNC = "AISHA_STONE_WALL_WAIT_FRAME_MOVE",
												LUA_STATE_END_FUNC = "AISHA_STONE_WALL_WAIT_STATE_END"	},
	{ STATE_NAME = "AISHA_STONE_WALL_DAMAGE",	LUA_STATE_START_FUNC = "AISHA_STONE_WALL_DAMAGE_STATE_START",
												LUA_FRAME_MOVE_FUNC = "AISHA_STONE_WALL_DAMAGE_FRAME_MOVE",
												LUA_STATE_END_FUNC = "AISHA_STONE_WALL_DAMAGE_STATE_END"	},
	
	--리액션 관련
	{ STATE_NAME = "AISHA_STONE_WALL_DYING",	LUA_FRAME_MOVE_FUNC = "AISHA_STONE_WALL_DYING_FRAME_MOVE",	},
	
	START_STATE					= "AISHA_STONE_WALL_START",
	WAIT_STATE					= "AISHA_STONE_WALL_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "AISHA_STONE_WALL_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "AISHA_STONE_WALL_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "AISHA_STONE_WALL_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "AISHA_STONE_WALL_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "AISHA_STONE_WALL_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "AISHA_STONE_WALL_DAMAGE",
	FLY_DAMAGE_FRONT			= "AISHA_STONE_WALL_DAMAGE",
	FLY_DAMAGE_BACK				= "AISHA_STONE_WALL_DAMAGE",
	SMALL_DAMAGE_AIR			= "AISHA_STONE_WALL_DAMAGE",	
	BIG_DAMAGE_AIR				= "AISHA_STONE_WALL_DAMAGE",
	DOWN_DAMAGE_AIR				= "AISHA_STONE_WALL_DAMAGE",
	UP_DAMAGE					= "AISHA_STONE_WALL_DAMAGE",
	DAMAGE_REVENGE				= "AISHA_STONE_WALL_DAMAGE",
	
	DYING_LAND_FRONT			= "AISHA_STONE_WALL_DYING",
	DYING_LAND_BACK				= "AISHA_STONE_WALL_DYING",
	DYING_SKY					= "AISHA_STONE_WALL_DYING",

	REVENGE_ATTACK				= "",	
}

INIT_AI = 
{
	NO_BRAIN = TRUE,
}

AISHA_STONE_WALL_START = 
{
	ANIM_NAME		= "EM_Stone_Wall_Start",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= TRUE,
	LAND_CONNECT	= TRUE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,		

	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,
	NEVER_MOVE		= TRUE,
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"AISHA_STONE_WALL_WAIT",	},
	},
		
	ATTACK_TIME0	= { 0.01, 100 },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE	= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE	= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE	= REACT_TYPE["RT_BIG_DAMAGE"],
		
		PVP_RATE		= 0.6,
		
		DAMAGE = 
		{
			PHYSIC	= 5.55,
		},
		
		BACK_SPEED_X	= 1000,
		--BACK_SPEED_Y	= 1700,
		
		STOP_TIME_DEF	= 0.2,
		
		CAMERA_CRASH_GAP	= 10.0,	
		CAMERA_CRASH_TIME	= 0.2,		
		
		RE_ATTACK	= TRUE,		
		HIT_GAP		= 10,	
	},
}

AISHA_STONE_WALL_WAIT = 
{
	ANIM_NAME		= "EM_Stone_Wall_Wait",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= TRUE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,	

	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,
	NEVER_MOVE		= TRUE,
	--RIGHT			= TRUE,
	
	REFLECT_MAGIC = { 0, 100, },
	
	--SHOW_NAME			= FALSE,


	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"AISHA_STONE_WALL_DYING",	"CT_AISHA_STONE_WALL_DYING",	},
	},
	
	CT_AISHA_STONE_WALL_DYING =
	{
		STATE_TIME_OVER = 20,	-- fix!!
	},
}

function AISHA_STONE_WALL_WAIT_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	local vBonePos = pNPCUnit:GetBonePos_LUA("Dummy01")
	local rotDegree	= pNPCUnit:GetRotateDegree()
	local pMajorXMeshPlayer = pX2Game:GetMajorXMeshPlayer()
	
	if  pMajorXMeshPlayer ~= nil then
		vBonePos.y = vBonePos.y - 13
	
		local pMeshPlayer = pMajorXMeshPlayer:CreateInstance_LUA( "EM_Stone_Wall_protection_Wait", vBonePos, rotDegree, rotDegree, 14 )
		
		if pMeshPlayer ~= nil then
			pNPCUnit:SetMajorMeshPlayer_LUA( 0, pMeshPlayer )
		end
	end
end

function AISHA_STONE_WALL_WAIT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	local pMeshPlayer = pNPCUnit:GetMajorMeshPlayer_LUA( 0 )
	
	if nil ~= pMeshPlayer then
		local pMajorXMeshPlayer = pX2Game:GetMajorXMeshPlayer()

		if nil ~= pMajorXMeshPlayer then
			if false == pMajorXMeshPlayer:IsLiveInstance( pMeshPlayer ) then
				pNPCUnit:ClearMajorMeshPlayer_LUA( 0 )
			else
				local vBonePos = pNPCUnit:GetPos()
				pMeshPlayer:SetPos( vBonePos )
			end
		end
	end
end

function AISHA_STONE_WALL_WAIT_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMajorXMeshPlayer = pX2Game:GetMajorXMeshPlayer()
	if pMajorXMeshPlayer ~= nil then
		pMajorXMeshPlayer:DestroyInstance( pNPCUnit:GetMajorMeshPlayerHandle( 0 ) )
		pNPCUnit:ClearMajorMeshPlayer_LUA( 0 )
	end
end

AISHA_STONE_WALL_DAMAGE = 
{
	ANIM_NAME		= "EM_Stone_Wall_Damage",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= TRUE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= FALSE,	

	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,
	NEVER_MOVE		= TRUE,
	--RIGHT			= TRUE,
	
	REFLECT_MAGIC = { 0, 100, },
	
	--SHOW_NAME			= FALSE,
	

	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"AISHA_STONE_WALL_WAIT",	},
		--{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"AISHA_STONE_WALL_WAIT",	"CT_AISHA_STONE_WALL_WAIT",	},
	},
	
	--CT_AISHA_STONE_WALL_WAIT =
	--{
		--STATE_TIME_OVER = 0.5,		
	--},
}

function AISHA_STONE_WALL_DAMAGE_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	local vBonePos = pNPCUnit:GetBonePos_LUA("Dummy01")
	local rotDegree	= pNPCUnit:GetRotateDegree()
	local pMajorXMeshPlayer = pX2Game:GetMajorXMeshPlayer()
	vBonePos.y = vBonePos.y - 13
	
	local pMeshPlayer = pMajorXMeshPlayer:CreateInstance_LUA( "EM_Stone_Wall_protection_Wait", vBonePos, rotDegree, rotDegree, 14 )
		
	if pMeshPlayer ~= nil then
		pNPCUnit:SetMajorMeshPlayer_LUA( 1, pMeshPlayer )
	end
end

function AISHA_STONE_WALL_DAMAGE_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	local pMeshPlayer = pNPCUnit:GetMajorMeshPlayer_LUA( 1 )
	
	if nil ~= pMeshPlayer then
		local pMajorXMeshPlayer = pX2Game:GetMajorXMeshPlayer()

		if nil ~= pMajorXMeshPlayer then
			if false == pMajorXMeshPlayer:IsLiveInstance( pMeshPlayer ) then
				pNPCUnit:ClearMajorMeshPlayer_LUA( 1 )
			else
				local vBonePos = pNPCUnit:GetPos()
				pMeshPlayer:SetPos( vBonePos )
			end
		end
	end
end

function AISHA_STONE_WALL_DAMAGE_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	local pMajorXMeshPlayer = pX2Game:GetMajorXMeshPlayer()
	if pMajorXMeshPlayer ~= nil then
		pMajorXMeshPlayer:DestroyInstance( pNPCUnit:GetMajorMeshPlayerHandle( 1 ) )
		pNPCUnit:ClearMajorMeshPlayer_LUA( 1 )
	end
end

AISHA_STONE_WALL_DYING = 
{
	ANIM_NAME		= "EM_Stone_Wall_Broken",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,
	
	--SHOW_NAME		= FALSE,

	INVINCIBLE	= { 0, 100, }, 		
	
	CAN_PUSH_UNIT	= TRUE,
	CAN_PASS_UNIT	= TRUE,
	
	NEVER_MOVE	= FALSE,
	DYING_END	= TRUE,
	DYING_SPEED	= 3,
	
	IMMADIATE_PACKET_SEND	= TRUE,
	
	SOUND_PLAY0	= { 0.01, "Aisha_EM_Stone_Wall_End.ogg" },	
}

----------------------------------------------------------
function AISHA_STONE_WALL_DYING_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:GetNowAnimationTime() > 0.4 then
		local unitColor = pNPCUnit:GetColor()
		if unitColor.a > 0 then
			unitColor.a = unitColor.a - 0.01
		end
		
		pNPCUnit:SetColor( unitColor )
	end 	
end