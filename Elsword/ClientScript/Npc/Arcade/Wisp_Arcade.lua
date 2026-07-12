-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	UNIT_WIDTH		= 50.0,
	UNIT_HEIGHT		= 100.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	
	RENDER_PARAM	= RENDER_TYPE["RT_REAL_COLOR"],
	ALPHA_BLEND		= TRUE,
	CULL_MODE		= FALSE,
	Z_ENABLE		= FALSE,
	FORCE_BILLBOARD	= TRUE,
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	},
	
	READY_SOUND = 
	{
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_Wisp.X",
	MOTION_ANI_TEX_XET		= "Motion_Wisp.xet",
}

INIT_PHYSIC = 
{	
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 300,
	RUN_SPEED			= 300,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 2300,
}


INIT_COMPONENT = 
{
	MAX_HP				= 2000,
	MP_CHANGE_RATE		= 0,
	MP_CHARGE_RATE		= 0,
	
	USE_SLASH_TRACE		= FALSE,
	
	--SHADOW_SIZE			= 200,
	SHADOW_FILE_NAME	= "shadow.dds",
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
	
	HEAD_BONE_NAME			= "Wisp_Body",
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	FALL_DOWN			= TRUE,
	
	-- 몬스터가 텍스쳐 한장짜리인가?
	FLAT_MONSTER		= TRUE,
	SHOCK_EFFECT_COLOR = 0.1,
}




INIT_STATE = 
{
	{ STATE_NAME = "WISP_ARCADE_START",				},
	{ STATE_NAME = "WISP_ARCADE_WAIT",					},
	
	
	--리액션 관련
	{ STATE_NAME = "WISP_ARCADE_DAMAGE",				},	
	{ STATE_NAME = "WISP_ARCADE_DYING",				LUA_STATE_START_FUNC = "WISP_ARCADE_DYING_STATE_START", },
	{ STATE_NAME = "WISP_ARCADE_WALK",					},
	{ STATE_NAME = "WISP_ARCADE_JUMP_UP",				},
	{ STATE_NAME = "WISP_ARCADE_JUMP_DOWN",			},
	{ STATE_NAME = "WISP_ARCADE_JUMP_UP_DIR",			},
	{ STATE_NAME = "WISP_ARCADE_JUMP_DOWN_DIR",		},
	{ STATE_NAME = "WISP_ARCADE_JUMP_LANDING",			},
	
	{ STATE_NAME = "WISP_ARCADE_WAKE_UP",				LUA_STATE_START_FUNC = "WISP_ARCADE_WAKE_UP_STATE_START", },
	
	START_STATE					= "WISP_ARCADE_START",
	WAIT_STATE					= "WISP_ARCADE_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "WISP_ARCADE_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "WISP_ARCADE_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "WISP_ARCADE_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "WISP_ARCADE_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "WISP_ARCADE_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "WISP_ARCADE_DAMAGE",
	FLY_DAMAGE_FRONT			= "WISP_ARCADE_DAMAGE",
	FLY_DAMAGE_BACK				= "WISP_ARCADE_DAMAGE",
	SMALL_DAMAGE_AIR			= "WISP_ARCADE_DAMAGE",	
	BIG_DAMAGE_AIR				= "WISP_ARCADE_DAMAGE",
	DOWN_DAMAGE_AIR				= "WISP_ARCADE_DAMAGE",
	UP_DAMAGE					= "WISP_ARCADE_DAMAGE",
	DAMAGE_REVENGE				= "WISP_ARCADE_DAMAGE",
	
	DYING_LAND_FRONT			= "WISP_ARCADE_DYING",
	DYING_LAND_BACK				= "WISP_ARCADE_DYING",
	DYING_SKY					= "WISP_ARCADE_DYING",

	REVENGE_ATTACK				= "",	
}

INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 3,		-- sec
		TARGET_NEAR_RANGE			= 150,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 500,		-- cm
		TARGET_LOST_RANGE			= 800,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --40,		-- %
		ATTACK_TARGET_RATE			= 100, -- 30,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, -- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
		TARGET_NPC					= TRUE,
		
		MANUAL_TARGETING_FUNC		= "WISP_ARCADE_MANUAL_TARGET",
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 600,
		DEST_GAP			= 10,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 160,
		
		DIR_CHANGE_INTERVAL = 0.7,
		
		WALK_INTERVAL		= 3,
		NEAR_WALK_RATE		= 100,   --  70,
		FAR_WALK_RATE		= 100,   -- 30,
		
		JUMP_INTERVAL		= 5,
		UP_JUMP_RATE		= 100, -- 80,
		UP_DOWN_RATE		= 20,
		DOWN_JUMP_RATE		= 100,    --  20,
		DOWN_DOWN_RATE		= 80,
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 100, --50,		
		PATROL_RANGE			= 200,
		PATROL_COOL_TIME		= 2,
		ONLY_THIS_LINE_GROUP	= TRUE,
	},
	
	ESCAPE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 500,	-- cm
		ESCAPE_GAP			= 600,	-- 이 거리 보다 멀어지면 도망 성공
		
		WALK_INTERVAL		= 1.5,	-- 초
		NEAR_WALK_RATE		= 100,   --  10,
		FAR_WALK_RATE		= 100,   -- 10,
		
		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 100, -- 30,
		UP_DOWN_RATE		= 30,
		DOWN_JUMP_RATE		= 100,    --  30,
		DOWN_DOWN_RATE		= 30,
	},
	
	
}

function WISP_ARCADE_MANUAL_TARGET( pKTDXApp, pX2Game, pNPCUnit )
	
	--if pX2Game:AnyUserUnitInRange( pNPCUnit:GetPos(), 5000 ) then
		local pNearestNpc = pX2Game:GetNearestNpcInSpecificRangeByNpcId_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_ENT_SMALL_ARCADE"], 999999 )
	
		if nil ~= pNearestNpc then
			pNPCUnit:SetTargetUnit( pNearestNpc )
		end
	--end
	
end



WISP_ARCADE_START = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ TRUE, 0.01, "Wisp_Light01", FALSE, "Wisp_Body", FALSE },
	},
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"WISP_ARCADE_WAIT",				},
	},
	
	
}




function WISP_ARCADE_WAKE_UP_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	
	NPCUID = pX2Game:GetNearNPCUnitUIDInStart_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_ENT_SMALL_ARCADE"], 25 )
	if pX2Game:ChangeRebirthStateNPCUnit_LUA( NPCUID ) == true then 
		pNPCUnit:SetNowHP_LUA(0)
		vPos		= pNPCUnit:GetPos()
		rotDegree 	= pNPCUnit:GetRotateDegree()
		pMinorXMeshPlayer = pX2Game:GetMinorXMeshPlayer()
		pMinorXMeshPlayer:CreateInstance_LUA( "RespawnLanding01", vPos, rotDegree, rotDegree, 14 )
		pMinorXMeshPlayer:CreateInstance_LUA( "RespawnLanding02", vPos, rotDegree, rotDegree, 14 )
		
		minorParticle = pX2Game:GetMinorParticle()
		minorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "RespawnLanding_P01", pNPCUnit:GetPos(), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		
	end
	
end





WISP_ARCADE_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"WISP_ARCADE_JUMP_DOWN",					},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WALK"],					"WISP_ARCADE_WALK",						},
		{ STATE_CHANGE_TYPE["SCT_AI_DASH"],					"WISP_ARCADE_WALK",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"WISP_ARCADE_JUMP_UP",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"WISP_ARCADE_JUMP_UP_DIR",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"WISP_ARCADE_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"WISP_ARCADE_JUMP_DOWN_DIR",				},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"WISP_ARCADE_WAKE_UP",						"CF_WISP_ARCADE_WAKE_UP", },
	},
}

function CF_WISP_ARCADE_WAKE_UP( pKTDXApp, pX2Game, pNPCUnit )

    if pX2Game ~= nil and pNPCUnit ~= nil then
	    if pX2Game:GetNearNPCUnitUIDInStart_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_ENT_SMALL_ARCADE"], 20 ) ~= 0 then
		    return true
	    end
    end
    
	return false
end

WISP_ARCADE_DAMAGE =
{
	ANIM_NAME					= "Damage",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"WISP_ARCADE_WAIT",				},
	},
}


WISP_ARCADE_WALK = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	ALLOW_DIR_CHANGE			= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"WISP_ARCADE_JUMP_DOWN_DIR",				},
		
		{ STATE_CHANGE_TYPE["SCT_AI_WAIT"],					"WISP_ARCADE_WAIT",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP"],					"WISP_ARCADE_JUMP_UP",						},
		{ STATE_CHANGE_TYPE["SCT_AI_JUMP_DIR"],				"WISP_ARCADE_JUMP_UP_DIR",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN"],					"WISP_ARCADE_JUMP_DOWN",					},
		{ STATE_CHANGE_TYPE["SCT_AI_DOWN_DIR"],				"WISP_ARCADE_JUMP_DOWN_DIR",				},
		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"WISP_ARCADE_WAKE_UP",						"CF_WISP_ARCADE_WAKE_UP", },
	},
	
	TALK_BOX = 
	{
		{ RATE = 8, MESSAGE = STR_ID_1486 },
	},
}

WISP_ARCADE_JUMP_UP = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	SPEED_X						= 0,
	SPEED_Y						= INIT_PHYSIC["JUMP_SPEED"],
	ADD_POS_Y					= 45,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"WISP_ARCADE_JUMP_DOWN",				},
	},
}

WISP_ARCADE_JUMP_DOWN = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	
	
	IMMADIATE_PACKET_SEND		= TRUE,
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"WISP_ARCADE_JUMP_LANDING",				},
	},
}

WISP_ARCADE_JUMP_UP_DIR = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	SPEED_Y						= INIT_PHYSIC["JUMP_SPEED"],
	ADD_POS_Y					= 45,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_NEGATIVE_Y_SPEED"],		"WISP_ARCADE_JUMP_DOWN_DIR",				},
	},
}

WISP_ARCADE_JUMP_DOWN_DIR = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	
	
	PASSIVE_SPEED_X				= INIT_PHYSIC["WALK_SPEED"],
	
	IMMADIATE_PACKET_SEND		= TRUE,
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_TRUE"],		"WISP_ARCADE_JUMP_LANDING",				},
	},
}

WISP_ARCADE_JUMP_LANDING = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
		
	IMMADIATE_PACKET_SEND		= TRUE,

	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_FOOT_ON_LINE_FALSE_DOWN"],	"WISP_ARCADE_JUMP_DOWN",				},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"WISP_ARCADE_WAIT",					},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"WISP_ARCADE_WAKE_UP",						"CF_WISP_ARCADE_WAKE_UP", },
	},
}

WISP_ARCADE_WAKE_UP = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"WISP_ARCADE_WAIT",				},
	},
}

function WISP_ARCADE_WAKE_UP_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	
	NPCUID = pX2Game:GetNearNPCUnitUIDInStart_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_ENT_SMALL_ARCADE"], 25 )
	
	if NPCUID ~= 0 and pX2Game:ChangeRebirthStateNPCUnit_LUA( NPCUID ) == true then 
		pNPCUnit:SetNowHP_LUA(0)
		vPos		= pNPCUnit:GetPos()
		rotDegree 	= pNPCUnit:GetRotateDegree()
		pMinorXMeshPlayer = pX2Game:GetMinorXMeshPlayer()
		pMinorXMeshPlayer:CreateInstance_LUA( "RespawnLanding01", vPos, rotDegree, rotDegree, 14 )
		pMinorXMeshPlayer:CreateInstance_LUA( "RespawnLanding02", vPos, rotDegree, rotDegree, 14 )
		
		minorParticle = pX2Game:GetMinorParticle()
		minorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "RespawnLanding_P01", pNPCUnit:GetPos(), D3DXVECTOR2(-1,-1), D3DXVECTOR2(-1,-1) )
		
	end
	
end

WISP_ARCADE_DYING = 
{
	ANIM_NAME					= "Damage",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	--NEVER_MOVE					= TRUE,
	DYING_END					= TRUE,
	--DYING_SPEED					= 1,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}
	



function WISP_ARCADE_DYING_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	
	pNPCUnit:SetShow( false )
	pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	GetMinorParticle = pX2Game:GetMinorParticle()
	
	pSeq = GetMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DieLight",		pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	if pSeq ~= nil then
	
		pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		pNPCUnit:SetDieSeq( pSeq:GetHandle() )
	
	end
	
	GetMajorParticle = pX2Game:GetMajorParticle()
	GetMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DamageImpact",			pos, D3DXVECTOR2(100,200), D3DXVECTOR2(2,10) )
	GetMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DamageImpactCore",		pos, D3DXVECTOR2(100,200), D3DXVECTOR2(2,10) )
	GetMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DamageImpactRingRed",		pos, D3DXVECTOR2(100,200), D3DXVECTOR2(2,10) )
	
	pNPCUnit:PlaySound_LUA( "DieLight.ogg" )
	
end

