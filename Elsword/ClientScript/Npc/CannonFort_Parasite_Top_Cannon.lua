-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.





INIT_SYSTEM = 
{
	UNIT_WIDTH		= 500.0,
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
	   	   "CannonFort_Cacon_Attack.ogg",
    	   "CannonFort_Cacon_Open1.ogg",
    	   "CannonFort_Cacon_Open2.ogg",
    	   "CannonFort_Cacon_Close1.ogg",
    	   "CannonFort_Cacon_Close2.ogg",
           "CannonFort_Cacon_ReadyAttack.ogg",	
	       "CannonFort_Cacon_MissileFly.ogg",
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
	MOTION_FILE_NAME		= "Motion_CanonFort_Parasite_Cacon1.x",
}


INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 400,
	RUN_SPEED			= 600,
	JUMP_SPEED			= 1400,
	DASH_JUMP_SPEED		= 1600,
}


INIT_COMPONENT = 
{
	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 130,
	
	USE_SLASH_TRACE		= FALSE,
	
	--SHADOW_SIZE			= 200,
	--SHADOW_FILE_NAME	= "shadow.dds",
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	--QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	--EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
	----MIND_FLAG_HEIGHT		= 230,
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,

	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	
	FALL_DOWN			= FALSE,
	--DEFENCE_RATE		= 50,
	
	DAMAGE_DOWN         = FALSE,
	
	--BOSS_GAGE_FACE_TEX			= "DLG_BossState.tga",
	--BOSS_GAGE_FACE_TEX_PIECE	= "Nasod_Driller",		
	--BOSS_NAME_TEX				= "HQ_BOSS_NAME_NASOD_DRILLER.dds",
	

    DIE_FLY             = 0,	
}



INIT_STATE = 
{
	{ STATE_NAME = "CANNONFORT_PARASITE_TOP_CANNON_START",						LUA_FRAME_MOVE_FUNC = "CANNONFORT_PARASITE_TOP_CANNON_START_FRAME_MOVE",
																				LUA_STATE_END_FUNC = "CANNONFORT_PARASITE_TOP_CANNON_START_STATE_END",			},
																				
	{ STATE_NAME = "CANNONFORT_PARASITE_TOP_CANNON_WAIT",						},
	
	{ STATE_NAME = "CANNONFORT_PARASITE_TOP_CANNON_OPEN",						},
	{ STATE_NAME = "CANNONFORT_PARASITE_TOP_CANNON_CLOSE",						},

	{ STATE_NAME = "CANNONFORT_PARASITE_TOP_CANNON_ATTACK",						LUA_FRAME_MOVE_FUNC = "CANNONFORT_PARASITE_TOP_CANNON_ATTACK_FRAME_MOVE",	},
																				
	
	
	--리액션 관련
	{ STATE_NAME = "CANNONFORT_PARASITE_TOP_CANNON_DAMAGE_SMALL",				LUA_FRAME_MOVE_FUNC = "CANNONFORT_PARASITE_TOP_CANNON_DAMAGE_SMALL_FRAME_MOVE"		},
	
	{ STATE_NAME = "CANNONFORT_PARASITE_TOP_CANNON_DYING_LAND_FRONT",			LUA_STATE_START_FUNC= "CANNONFORT_PARASITE_TOP_CANNON_DYING_LAND_STATE_START",},
	
	
	
	START_STATE					= "CANNONFORT_PARASITE_TOP_CANNON_START",
	WAIT_STATE					= "CANNONFORT_PARASITE_TOP_CANNON_WAIT",
	
	INDEXED_STATE0				= "CANNONFORT_PARASITE_TOP_CANNON_OPEN",
	
	REBIRTH_STATE				= "CANNONFORT_PARASITE_TOP_CANNON_WAIT",
	
	
	
	
	SMALL_DAMAGE_LAND_FRONT		= "CANNONFORT_PARASITE_TOP_CANNON_DAMAGE_SMALL",
	SMALL_DAMAGE_LAND_BACK		= "CANNONFORT_PARASITE_TOP_CANNON_DAMAGE_SMALL",
	BIG_DAMAGE_LAND_FRONT		= "CANNONFORT_PARASITE_TOP_CANNON_DAMAGE_SMALL",
	BIG_DAMAGE_LAND_BACK		= "CANNONFORT_PARASITE_TOP_CANNON_DAMAGE_SMALL",
	DOWN_DAMAGE_LAND_FRONT		= "CANNONFORT_PARASITE_TOP_CANNON_DAMAGE_SMALL",
	DOWN_DAMAGE_LAND_BACK		= "CANNONFORT_PARASITE_TOP_CANNON_DAMAGE_SMALL",
	FLY_DAMAGE_FRONT			= "CANNONFORT_PARASITE_TOP_CANNON_DAMAGE_SMALL",
	FLY_DAMAGE_BACK				= "CANNONFORT_PARASITE_TOP_CANNON_DAMAGE_SMALL",
	SMALL_DAMAGE_AIR			= "CANNONFORT_PARASITE_TOP_CANNON_DAMAGE_SMALL",	
	BIG_DAMAGE_AIR				= "CANNONFORT_PARASITE_TOP_CANNON_DAMAGE_SMALL",
	DOWN_DAMAGE_AIR				= "CANNONFORT_PARASITE_TOP_CANNON_DAMAGE_SMALL",
	UP_DAMAGE					= "CANNONFORT_PARASITE_TOP_CANNON_DAMAGE_SMALL",
	DAMAGE_REVENGE				= "CANNONFORT_PARASITE_TOP_CANNON_DAMAGE_SMALL",
	
	DYING_LAND_FRONT			= "CANNONFORT_PARASITE_TOP_CANNON_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "CANNONFORT_PARASITE_TOP_CANNON_DYING_LAND_FRONT",
	DYING_SKY					= "CANNONFORT_PARASITE_TOP_CANNON_DYING_LAND_FRONT",

	REVENGE_ATTACK				= "",	
}



INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 1,		-- sec
		TARGET_NEAR_RANGE			= 150,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 800,		-- cm
		TARGET_LOST_RANGE			= 1200,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --50,		-- %
		ATTACK_TARGET_RATE			= 100, -- 30,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, -- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 600,
		DEST_GAP			= 150,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 160,
		
		DIR_CHANGE_INTERVAL = 0.7,
		
		WALK_INTERVAL		= 3,
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


CANNONFORT_PARASITE_TOP_CANNON_START = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,	
	
	NEVER_MOVE					= TRUE,
	SUPER_ARMOR					= TRUE,
	
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CANNONFORT_PARASITE_TOP_CANNON_WAIT",		"CT_CANNONFORT_PARASITE_TOP_CANNON_WAIT"				},
	},
	
	CT_CANNONFORT_PARASITE_TOP_CANNON_WAIT = 
	{
		STATE_TIME_OVER			= 8,
	},
}



CANNONFORT_PARASITE_TOP_CANNON_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SUPER_ARMOR					= TRUE,
	NEVER_MOVE					= TRUE,
	
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{		
		--{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CANNONFORT_PARASITE_TOP_CANNON_OPEN",				"CT_CANNONFORT_PARASITE_TOP_CANNON_OPEN",			},
	},
	
	CT_CANNONFORT_PARASITE_TOP_CANNON_OPEN = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 1000,
		RATE						= 50,
	},
}




CANNONFORT_PARASITE_TOP_CANNON_OPEN =
{
	ANIM_NAME					= "Open",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SUPER_ARMOR					= TRUE,

    SOUND_PLAY0			= { 0.172, "CannonFort_Cacon_Open1.ogg" },
    SOUND_PLAY1			= { 0.282, "CannonFort_Cacon_Open2.ogg" },
    SOUND_PLAY2			= { 0.329, "CannonFort_Cacon_ReadyAttack.ogg" },
	
	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	
	
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CANNONFORT_PARASITE_TOP_CANNON_ATTACK",												},	
	},
}


CANNONFORT_PARASITE_TOP_CANNON_ATTACK = 
{
	ANIM_NAME					= "Attack",
	ANIM_SPEED					= 0.5,
	
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,

    SOUND_PLAY0			= { 0.094, "CannonFort_Cacon_Attack.ogg" },
    SOUND_PLAY1			= { 0.1, "CannonFort_Cacon_MissileFly.ogg" },
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SUPER_ARMOR					= TRUE,

	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CANNONFORT_PARASITE_TOP_CANNON_CLOSE",												},	
		--{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"CANNONFORT_PARASITE_TOP_CANNON_CLOSE",			"CT_CANNONFORT_PARASITE_TOP_CANNON_CLOSE",			},
		
	},
	
	
	CT_CANNONFORT_PARASITE_TOP_CANNON_CLOSE = 
	{
		ANIM_PLAY_COUNT		= 1,
		RATE				= 100,
	},
}




function CANNONFORT_PARASITE_TOP_CANNON_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
			
			
	if pNPCUnit:AnimEventTimer_LUA( 0.05 ) then
		
		pDamageEffect = pX2Game:GetDamageEffect()
		landPos = pNPCUnit:GetLandPosition_LUA()
		rotDegree = pNPCUnit:GetRotateDegree()
		vBonePos 	= pNPCUnit:GetBonePos_LUA("Dummy3_Canon1")
		
		pMissile = pDamageEffect:CreateInstance_LUA2( pNPCUnit, "CANNONFORT_PARASITE_CANNON_MISSILE", vBonePos, landPos.y, rotDegree )
		pNPCUnit:SetLockOn( pMissile, 0 )
		
		pNPCUnit:ClearEventCheck( 0.2 )
	
	end
	
	
	
	if pNPCUnit:AnimEventTimer_LUA( 0.2 ) then
	
		pNPCUnit:ClearEventCheck( 0.05 )
	
	end
	
end





CANNONFORT_PARASITE_TOP_CANNON_CLOSE =
{
	ANIM_NAME					= "Close",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SPEED_X						= 0,
	SPEED_Y						= 0,	

    SOUND_PLAY0			= { 0.141, "CannonFort_Cacon_Close1.ogg" },
    SOUND_PLAY1			= { 0.367, "CannonFort_Cacon_Close2.ogg" },

	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	
	SUPER_ARMOR					= TRUE,
	
	
	
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CANNONFORT_PARASITE_TOP_CANNON_WAIT",												},	
	},
}



CANNONFORT_PARASITE_TOP_CANNON_DAMAGE_SMALL = 
{
	ANIM_NAME					= "Wait",		
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	NEVER_MOVE					= TRUE,
		
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CANNONFORT_PARASITE_TOP_CANNON_WAIT",												},
	},
}



CANNONFORT_PARASITE_TOP_CANNON_DYING_LAND_FRONT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= TRUE,

	INVINCIBLE					= { 0, 100, }, 		

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	NEVER_MOVE					= TRUE,
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	

	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,

		{ TRUE, 0.01, "Bomb_Explosionx2", FALSE, "Bone_Door1_Up", TRUE, TRUE, 0, 0, 0, TRUE, },
			
	},

}
	






------------------------------------------------------------------------------
function CANNONFORT_PARASITE_TOP_CANNON_START_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

end



------------------------------------------------------------------------------
function CANNONFORT_PARASITE_TOP_CANNON_START_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

end







function CANNONFORT_PARASITE_TOP_CANNON_DAMAGE_SMALL_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end



function CANNONFORT_PARASITE_TOP_CANNON_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

--[[
	pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	GetMinorParticle = pX2Game:GetMinorParticle()
	
	pSeq = GetMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DieLight",		pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	if pSeq ~= nil then
	
		pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		pNPCUnit:SetDieSeq( pSeq:GetHandle() )
	
	end
	pNPCUnit:PlaySound_LUA( "DieLight.ogg" )
--]]	
	
end








------------------------------------------------------------------------------
-- UTIL FUNCTION
------------------------------------------------------------------------------



------------------------------------------------------------------------------
function MovePos( pos, dirvector, dist )
	
	pos.x = pos.x + dist * dirvector.x
	pos.y = pos.y + dist * dirvector.y
	pos.z = pos.z + dist * dirvector.z
	
	return pos
	
end

