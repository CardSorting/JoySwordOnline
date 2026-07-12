-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM =
{
	UNIT_WIDTH		= 450.0,
	UNIT_HEIGHT		= 500.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],

	--UNIT_SCALE      = 1.2,
}


INIT_DEVICE =
{
	READY_TEXTURE =
	{
	},

	READY_SOUND =
	{
		"Siege_Tower_Dying1.ogg",
		"Siege_Tower_Dying2.ogg",
		"Siege_Tower_MagicAttackA.ogg",
	},

	READY_XSKIN_MESH =
	{
	},
}

INIT_MOTION =
{
	MOTION_FILE_NAME		= "NUI_SIEGE_TOWER.x",
}

INIT_PHYSIC =
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,

	WALK_SPEED			= 200,
	RUN_SPEED			= 400,
	JUMP_SPEED			= 1200,
	DASH_JUMP_SPEED		= 2000,
}


INIT_COMPONENT =
{
	MP_CHANGE_RATE			= 1,
	MP_CHARGE_RATE			= 130,

	SHADOW_SIZE				= 200,
	SHADOW_FILE_NAME		= "shadow.dds",

	SMALL_HP_BAR_BLUE		= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED		= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW		= "Small_HP_bar_Yellow.TGA",

	--DRAW_SMALL_MP_BAR		= TRUE,
	QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
	--MIND_FLAG_HEIGHT		= 230,
	
	HEAD_BONE_NAME = "ARC_Bip01_Head",

	HITTED_TYPE				= HITTED_TYPE["HTD_WOOD"],

	DAMAGE_DOWN				= TRUE,

    --SKY_DIE             = TRUE,
    DIE_FLY					= 0,


	--BOSS_GAGE_FACE_TEX			= "DLG_BossState.tga",
	--BOSS_GAGE_FACE_TEX_PIECE	= "SUMMON_BOSS",
	--BOSS_NAME_TEX				= "HQ_BOSS_NAME_SUMMON_BOSS.dds",

}

INIT_STATE =
{
	{ STATE_NAME = "SIEGE_TOWER_START",						LUA_STATE_START_FUNC	= "SIEGE_TOWER_START_STATE_START_FUNC",			},
	{ STATE_NAME = "SIEGE_TOWER_WAIT",																								},
	{ STATE_NAME = "SIEGE_TOWER_DYING_FRONT",				LUA_STATE_START_FUNC	= "SIEGE_TOWER_DYING_FRONT_START_FUNC",
															LUA_FRAME_MOVE_FUNC		= "SIEGE_TOWER_DYING_FRONT_FRAME_MOVE",
															LUA_STATE_END_FUNC		= "SIEGE_TOWER_DYING_FRONT_END_FUNC",			},
															
	{ STATE_NAME = "SIEGE_TOWER_DYING_BACK",				LUA_STATE_START_FUNC	= "SIEGE_TOWER_DYING_BACK_START_FUNC",				
															LUA_FRAME_MOVE_FUNC		= "SIEGE_TOWER_DYING_BACK_FRAME_MOVE",
															LUA_STATE_END_FUNC		= "SIEGE_TOWER_DYING_BACK_END_FUNC",			},
															
	{ STATE_NAME = "SIEGE_TOWER_MAGIC_ATTACK_A",			LUA_FRAME_MOVE_FUNC		= "SIEGE_TOWER_MAGIC_ATTACK_A_FRAME_MOVE",		},



	START_STATE					= "SIEGE_TOWER_START",
	WAIT_STATE					= "SIEGE_TOWER_WAIT",

	SMALL_DAMAGE_LAND_FRONT		= "SIEGE_TOWER_WAIT",
	SMALL_DAMAGE_LAND_BACK		= "SIEGE_TOWER_WAIT",
	SMALL_DAMAGE_AIR			= "SIEGE_TOWER_WAIT",

	BIG_DAMAGE_LAND_FRONT		= "SIEGE_TOWER_WAIT",
	BIG_DAMAGE_LAND_BACK		= "SIEGE_TOWER_WAIT",
	BIG_DAMAGE_AIR				= "SIEGE_TOWER_WAIT",

	DOWN_DAMAGE_LAND_FRONT		= "SIEGE_TOWER_WAIT",
	DOWN_DAMAGE_LAND_BACK		= "SIEGE_TOWER_WAIT",
	DOWN_DAMAGE_AIR				= "SIEGE_TOWER_WAIT",

	UP_DAMAGE					= "SIEGE_TOWER_WAIT",

	FLY_DAMAGE_FRONT			= "SIEGE_TOWER_WAIT",
	FLY_DAMAGE_BACK				= "SIEGE_TOWER_WAIT",

	--REVENGE_ATTACK				= "",
	DAMAGE_REVENGE				= "SIEGE_TOWER_WAIT",

	DYING_LAND_FRONT			= "SIEGE_TOWER_DYING_FRONT",
	DYING_LAND_BACK				= "SIEGE_TOWER_DYING_BACK",
	--DYING_SKY					= "",

	--DOWN_DAMAGE_AIR_LANDING		= "",
	COMMON_FRAME_FUNC			= "SIEGE_TOWER_WAIT_FRAME_MOVE",

}

INIT_AI =
{
	TARGET =
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_NEAR_FIRST"],
		TARGET_INTERVAL				= 0.5,		-- sec
		TARGET_NEAR_RANGE			= 900,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 1500,		-- cm
		TARGET_LOST_RANGE			= 2000,		-- cm
		TARGET_SUCCESS_RATE			= 50,  --60,		-- %
		ATTACK_TARGET_RATE			= 100, -- 90,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, -- 60,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE =
	{
		MOVE_SPLIT_RANGE	= 700,
		DEST_GAP			= 800,
		MOVE_GAP			= 900,

		DIR_CHANGE_INTERVAL = 0.1,

		WALK_INTERVAL		= 3,
		NEAR_WALK_RATE		= 100,   --  70,
		FAR_WALK_RATE		= 100,   -- 30,

		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 100, -- 40,
		UP_DOWN_RATE		= 20,
		DOWN_JUMP_RATE		= 100,    --  20,
		DOWN_DOWN_RATE		= 40,
	},

	PATROL_MOVE =
	{
		PATROL_BEGIN_RATE		= 0, --50,
		PATROL_RANGE			= 500,
		PATROL_COOL_TIME		= 0.1,
	},

	ESCAPE_MOVE =
	{
		MOVE_SPLIT_RANGE	= 300,	-- cm
		ESCAPE_GAP			= 1800,	-- 이 거리 보다 멀어지면 도망 성공

		WALK_INTERVAL		= 0.1,	-- 초
		NEAR_WALK_RATE		= 100,   --  10,
		FAR_WALK_RATE		= 100,   -- 10,

		JUMP_INTERVAL		= 3,
		UP_JUMP_RATE		= 50,
		UP_DOWN_RATE		= 50,
		DOWN_JUMP_RATE		= 50,
		DOWN_DOWN_RATE		= 50,
	},

	ESCAPE_CONDITION =
	{
		RATE				= 0, -- 50,
		ESCAPE_RANGE		= 2000,		-- 이 범위 안에 들어오면 타격당하지 않아도 RATE에 지정된 확률로 도망
	}
}

SIEGE_TOWER_START =
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	NEVER_MOVE					= TRUE,
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"SIEGE_TOWER_WAIT", 	},
	},
}

SIEGE_TOWER_WAIT =
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	NEVER_MOVE					= TRUE,
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"SIEGE_TOWER_MAGIC_ATTACK_A",			"CT_SIEGE_TOWER_MAGIC_ATTACK_A", 	},
	},
	
	CT_SIEGE_TOWER_MAGIC_ATTACK_A = 
	{
		RATE = 50,
	},
}

SIEGE_TOWER_DYING_BACK =
{
	ANIM_NAME					= "DyingBack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	INVINCIBLE					= { 0, 100, },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	NEVER_MOVE					= TRUE,
	
	DYING_END					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	ATTACK_TIME0				= { 2.33, 2.66, },
	
	SOUND_PLAY0 = 	{ 0.1,"Siege_Tower_Dying2.ogg" },
	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],
		
		ATTACK_ALL_TEAM = TRUE,
		
		CAN_REVENGE				= FALSE,	
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		BUFF_FACTOR =
		{
			BUFF_TEMPLET_ID = BUFF_TEMPLET_ID["BTI_DEBUFF_PRESS"],
			RATE	=
			{
				1,
			},
			IGNORE_REGIST_FOR_RATE = FALSE,

			BEHAVIOR =
			{	
				COMBINATION = { BUFF_BEHAVIOR_TYPE["BBT_CHANGE_UNIT_SCALE"], BUFF_BEHAVIOR_TYPE["BBT_ATTACK_IMPOSSIBLE"], },
		
				BBT_CHANGE_UNIT_SCALE = 
				{
				},
				BBT_ATTACK_IMPOSSIBLE = 
				{
				},
			},
		
			FINALIZER =
			{
				COMBINATION = { BUFF_FINALIZER_TYPE["BFT_TIME"], },
			
				BFT_TIME =
				{
					BUFF_DURATION_TIME_TYPE = BUFF_DURATION_TIME_TYPE["BDTT_NORMAL_TIME"],
					NORMAL_TIME =
					{
						2,
					},
				},
			},
		},
		
		BACK_SPEED_X			= 0,
		BACK_SPEED_Y			= 0,
		
		CAMERA_CRASH_GAP		= 10.0,	
		CAMERA_CRASH_TIME		= 0.3,		
	},

	
	EFFECT_SET_LIST =
	{
		"EffectSet_Siege_Tower_Dying_Back", 0.0,
	},
}

SIEGE_TOWER_DYING_FRONT =
{
	ANIM_NAME					= "DyingFront",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,

	INVINCIBLE					= { 0, 100, },
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	NEVER_MOVE					= TRUE,
	
	DYING_END					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Siege_Tower_Dying_Front", 0.0,
	},
	
	ATTACK_TIME0				= { 2.00, 2.33, },
	
	SOUND_PLAY0 = 	{ 0.1 ,"Siege_Tower_Dying1.ogg"},

	
	DAMAGE_DATA = 
	{
		DAMAGE_TYPE		= DAMAGE_TYPE["DT_PHYSIC"],
		HIT_TYPE		= HIT_TYPE["HT_PUNCH_HIT"],
		REACT_TYPE		= REACT_TYPE["RT_DOWN"],
		
		ATTACK_ALL_TEAM = TRUE,
		
		CAN_REVENGE				= FALSE,	
		
		DAMAGE = 
		{
			PHYSIC		= 1.0,
		},
		BUFF_FACTOR =
		{
			BUFF_TEMPLET_ID = BUFF_TEMPLET_ID["BTI_DEBUFF_PRESS"],
			RATE	=
			{
				1,
			},
			IGNORE_REGIST_FOR_RATE = FALSE,

			BEHAVIOR =
			{	
				COMBINATION = { BUFF_BEHAVIOR_TYPE["BBT_CHANGE_UNIT_SCALE"], BUFF_BEHAVIOR_TYPE["BBT_ATTACK_IMPOSSIBLE"], },
		
				BBT_CHANGE_UNIT_SCALE = 
				{
				},
				BBT_ATTACK_IMPOSSIBLE = 
				{
				},
			},
		
			FINALIZER =
			{
				COMBINATION = { BUFF_FINALIZER_TYPE["BFT_TIME"], },
			
				BFT_TIME =
				{
					BUFF_DURATION_TIME_TYPE = BUFF_DURATION_TIME_TYPE["BDTT_NORMAL_TIME"],
					NORMAL_TIME =
					{
						2,
					},
				},
			},
		},
		
		BACK_SPEED_X			= 0,
		BACK_SPEED_Y			= 0,
		
		CAMERA_CRASH_GAP		= 10.0,	
		CAMERA_CRASH_TIME		= 0.3,		
	},
}


SIEGE_TOWER_MAGIC_ATTACK_A =
{
	ANIM_NAME					= "MagicAttackA",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	NEVER_MOVE					= TRUE,
	
	SOUND_PLAY0 = 	{ 2.0,"Siege_Tower_MagicAttackA.ogg"},
	
	EVENT_PROCESS =
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"SIEGE_TOWER_WAIT",							},
	},
}

----------- state function--------------------------------------------------------------
----------------------------------------------------------------------------------------
function SIEGE_TOWER_START_STATE_START_FUNC( pKTDXApp, pX2Game, pNPCUnit )
	--local vBonePos	= pNPCUnit:GetBonePos_LUA( "Dummy_Gliter" )
	local vLandPos	= pNPCUnit:GetLandPosition_LUA()
	local bRight 	= pNPCUnit:GetIsRight()
	
	pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID["NUI_GLITER_GREAT_ROCK"], pNPCUnit:GetHardLevel(), true, vLandPos, bRight, 0.0, false  )
end

function SIEGE_TOWER_WAIT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	local npcUid 	= pNPCUnit:GetInt_LUA( 0 )
	local vLandPos	= pNPCUnit:GetLandPosition_LUA()
	
	if npcUid == 0 then
		npcUid = pX2Game:GetNearNPCUnitUID_LUA( vLandPos, NPC_UNIT_ID["NUI_GLITER_GREAT_ROCK"], 700 )
		
		if npcUid ~= 0 then
			pNPCUnit:SetInt_LUA( 0, npcUid )
		end
		
	end
	
	if npcUid ~= 0 then
		local pNpc 			= pX2Game:GetNPCUnitByUID( npcUid )
		
		if pNpc ~= nil then
			local vBonePos		= pNPCUnit:GetBonePos_LUA( "Dummy_Gliter" )
			pNpc:SetPosition( vBonePos )
		end
	
	end

end

function SIEGE_TOWER_DYING_FRONT_START_FUNC( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetVector_LUA( 0, D3DXVECTOR3( 0, 0, 0 ) )
	
	local npcUid = pNPCUnit:GetInt_LUA( 0 )
	
	if npcUid ~= 0 then
	
		local pNpc = pX2Game:GetNPCUnitByUID( npcUid )

		if pNpc ~= nil then
			--pNpc:SetNowHP_LUA( 0.001 )
			pNpc:StateChange_LUA( "GLITER_GREAT_ROCK_DYING_WITH_TOWER_FRONT" )
		end
		
	end
end

function SIEGE_TOWER_DYING_BACK_START_FUNC( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetVector_LUA( 0, D3DXVECTOR3( 0, 0, 0 ) )
		
	local npcUid = pNPCUnit:GetInt_LUA( 0 )
	
	if npcUid ~= 0 then
		local pNpc = pX2Game:GetNPCUnitByUID( npcUid )

		if pNpc ~= nil then
			--pNpc:SetNowHP_LUA( 0.001 )
			pNpc:StateChange_LUA( "GLITER_GREAT_ROCK_DYING_WITH_TOWER_BACK" )
		end
	end	
end

function SIEGE_TOWER_DYING_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	SetGliterGreatRockPosition( pNPCUnit, pX2Game, true )	
end

function SIEGE_TOWER_DYING_BACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	SetGliterGreatRockPosition( pNPCUnit, pX2Game, false )

end

function SIEGE_TOWER_DYING_FRONT_END_FUNC( pKTDXApp, pX2Game, pNPCUnit )
		local npcUid = pNPCUnit:GetInt_LUA( 0 )
		
		if npcUid ~= 0 then
			local pNpc = pX2Game:GetNPCUnitByUID( npcUid )
	
			if pNpc ~= nil then
				--pNpc:SetNowHP_LUA( 0.001 )
				pNpc:StateChange_LUA( "GLITER_GREAT_ROCK_DYING_WITH_TOWER_FRONT" )
				pNpc:SetShow( false )
				pNpc:SetShowGage( false )
			end
		end
end

function SIEGE_TOWER_DYING_BACK_END_FUNC( pKTDXApp, pX2Game, pNPCUnit )
		local npcUid = pNPCUnit:GetInt_LUA( 0 )
		
		if npcUid ~= 0 then
			local pNpc = pX2Game:GetNPCUnitByUID( npcUid )
	
			if pNpc ~= nil then
				--pNpc:SetNowHP_LUA( 0.001 )
				pNpc:StateChange_LUA( "GLITER_GREAT_ROCK_DYING_WITH_TOWER_BACK" )
				pNpc:SetShow( false )
				pNpc:SetShowGage( false )
			end
		end
end

function SIEGE_TOWER_MAGIC_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 2.0 ) then
		local pDamageEffect = pX2Game:GetDamageEffect()
		local pos = pNPCUnit:GetLandPosition_LUA()		
		pDamageEffect:CreateInstance_LUA( pNPCUnit, "ARROW_CROSSBOW", pNPCUnit:GetBonePos_LUA( "Dummy01" ), pos.y )	
	end	

end

----------- util function--------------------------------------------------------------
----------------------------------------------------------------------------------------
function SetGliterGreatRockPosition( pNPCUnit, pX2Game, bFront )

	local npcUid = pNPCUnit:GetInt_LUA( 0 )
		
	if npcUid ~= 0 then
		local pNpc = pX2Game:GetNPCUnitByUID( npcUid )
		
		if pNpc ~= nil then
			local vBonePos		= pNPCUnit:GetBonePos_LUA( "Dummy_Gliter" )
			pNpc:SetPosition( vBonePos )
			
			local vRot = pNPCUnit:GetVector_LUA( 0 )
			pNpc:SetAddRotateDegree_LUA( 0, 0, vRot.z )
			
			if bFront == true then
				if vRot.z > -90 then
				vRot.z = vRot.z - 0.4
				pNPCUnit:SetVector_LUA( 0, vRot )
				end
			else
				if vRot.z < 90 then
				vRot.z = vRot.z + 0.4
				pNPCUnit:SetVector_LUA( 0, vRot )
				end		
			end
				
		end

	end
end

-- function ()
	-- local vBonePos = pNPCUnit:GetBonePos_LUA( "Bip01" )
	-- local vec01 = vBonePos
	-- vec01.x = 0
	-- vec01.y = 1
	-- vec01.z = 0
	
	-- local vec02 = pNPCUnit:GetBonePos_LUA( "Dummy_Gliter" )
	-- vec02.x = vec02.x - vBonePos.x
	-- vec02.y = vec02.y - vBonePos.y
	-- vec02.z = vec02.z - vBonePos.z
	
	-- local powVec02 = vec02
	-- powVec02.x = powVec02.x * powVec02.x
	-- powVec02.y = powVec02.y * powVec02.y
	-- powVec02.z = powVec02.z * powVec02.z
	
	
	
-- end


