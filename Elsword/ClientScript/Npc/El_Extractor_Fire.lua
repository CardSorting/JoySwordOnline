-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



INIT_SYSTEM = 
{
	UNIT_WIDTH		= 150.0,
	UNIT_HEIGHT		= 200.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],

}

                                                                                 
INIT_DEVICE = 
{
	READY_TEXTURE = 
	{		
	    "Steam_BP.dds", 
	    "ColorBallGray.dds",
	    "Particle_Blur.dds", 
	    "Explosion_Sphere.dds",
	    "GroundShockWave.dds",
	    "Arme_Ring2.dds",
	},
	
	READY_SOUND = 
	{  
		"El_Extractor_Wait.ogg",
	},
	
		
	READY_XMESH = 
	{
	    "RespawnLanding03.Y",	    
	},
	
	READY_XSKIN_MESH = 
	{	    
	},
	
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_El_Extractor_Fire.x",
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
	MP_CHANGE_RATE			= 1,
	MP_CHARGE_RATE			= 130,
	
	USE_SLASH_TRACE			= FALSE,
	
	SHADOW_SIZE				= 200,
	SHADOW_FILE_NAME		= "shadow.dds",
	
	SMALL_HP_BAR_BLUE		= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED		= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW 	= "Small_HP_bar_Yellow.TGA",
	
	--QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	--EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
	--MIND_FLAG_HEIGHT		= 230,
	
	HEAD_BONE_NAME			= "COLLISION_SPHERE1_Body",
	
	HYPER_MODE_COUNT		= 0,
	MAX_HYPER_MODE_TIME		= 30,

	HITTED_TYPE				= HITTED_TYPE["HTD_METAL"],
	
	FALL_DOWN				= FALSE,
	
	DAMAGE_DOWN         = FALSE,
	
}


INIT_STATE = 
{
	{ STATE_NAME = "EL_EXTRACTOR_FIRE_START",			LUA_FRAME_MOVE_FUNC = "EL_EXTRACTOR_FIRE_START_FRAME_MOVE",
																LUA_STATE_END_FUNC = "EL_EXTRACTOR_FIRE_START_STATE_END",		},
																
	{ STATE_NAME = "EL_EXTRACTOR_FIRE_WAIT",		    LUA_FRAME_MOVE_FUNC = "EL_EXTRACTOR_FIRE_WAIT_FRAME_MOVE", },
	
		
	{ STATE_NAME = "EL_EXTRACTOR_FIRE_DAMAGE",				},	
	{ STATE_NAME = "EL_EXTRACTOR_FIRE_DYING",	LUA_STATE_START_FUNC = "EL_EXTRACTOR_FIRE_DYING_LAND_STATE_START"				},
	
	
	
	START_STATE					= "EL_EXTRACTOR_FIRE_START",
	WAIT_STATE					= "EL_EXTRACTOR_FIRE_WAIT",
	
	
	SMALL_DAMAGE_LAND_FRONT		= "EL_EXTRACTOR_FIRE_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "EL_EXTRACTOR_FIRE_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "EL_EXTRACTOR_FIRE_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "EL_EXTRACTOR_FIRE_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "EL_EXTRACTOR_FIRE_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "EL_EXTRACTOR_FIRE_DAMAGE",
	FLY_DAMAGE_FRONT			= "EL_EXTRACTOR_FIRE_DAMAGE",
	FLY_DAMAGE_BACK				= "EL_EXTRACTOR_FIRE_DAMAGE",
	SMALL_DAMAGE_AIR			= "EL_EXTRACTOR_FIRE_DAMAGE",	
	BIG_DAMAGE_AIR				= "EL_EXTRACTOR_FIRE_DAMAGE",
	DOWN_DAMAGE_AIR				= "EL_EXTRACTOR_FIRE_DAMAGE",
	UP_DAMAGE					= "EL_EXTRACTOR_FIRE_DAMAGE",
	DAMAGE_REVENGE				= "",
	
	DYING_LAND_FRONT			= "EL_EXTRACTOR_FIRE_DYING",
	DYING_LAND_BACK				= "EL_EXTRACTOR_FIRE_DYING",
	DYING_SKY					= "EL_EXTRACTOR_FIRE_DYING",

	REVENGE_ATTACK				= "",	}



INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 3,		-- sec
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


EL_EXTRACTOR_FIRE_START = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	INVINCIBLE					= { 0, 100, },
	
	IMMADIATE_PACKET_SEND		= TRUE,	
	NEVER_MOVE					= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"EL_EXTRACTOR_FIRE_WAIT",		"CT_EL_EXTRACTOR_FIRE_WAIT"				},
	},
	
	CT_EL_EXTRACTOR_FIRE_WAIT = 
	{
		STATE_TIME_OVER			= 1,
	},
}


EL_EXTRACTOR_FIRE_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	NEVER_MOVE					= TRUE,
	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	PASSIVE_SPEED_X				= 0,
	--SUPER_ARMOR					= TRUE,
	--SUPER_ARMOR_NOT_RED         = TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 1,
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,					
		{ TRUE, 0.01, "Light_El_Extractor_Fire02", FALSE, "", TRUE, FALSE, 0, 160, 0, },
		{ FALSE, 0.01, "LightParticle_El_Extractor_Fire01", FALSE, "", TRUE, FALSE, 0, 0, 0, },
	},
}


EL_EXTRACTOR_FIRE_DYING = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		

	

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	NEVER_MOVE					= TRUE,
	
	
	DYING_END					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	
}

EL_EXTRACTOR_FIRE_DAMAGE =
{
	SHOW						= TRUE,
	
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	RIGHT                       = TRUE,
	NEVER_MOVE					= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"EL_EXTRACTOR_FIRE_WAIT",		},
	},
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,					
		{ TRUE, 0.01, "Light_El_Extractor_Fire02", FALSE, "", TRUE, FALSE, 0, 160, 0, },
		{ FALSE, 0.01, "LightParticle_El_Extractor_Fire01", FALSE, "", TRUE, FALSE, 0, 0, 0, },
	},
}



------------------------------------------------------------------------------
function EL_EXTRACTOR_FIRE_START_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )    
    
end



------------------------------------------------------------------------------
function EL_EXTRACTOR_FIRE_START_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
    
end

function EL_EXTRACTOR_FIRE_REBOOT_STATE_START( pKTDXApp, pX2Game, pNPCUnit )    
    
end


function EL_EXTRACTOR_FIRE_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
    pNPCUnit:PlaySound_LUA( "Explosion.ogg" )    
    pMajorParticle = pX2Game:GetMajorParticle()
	
	vPos = pNPCUnit:GetPos()	
	vPos.y = vPos.y - 30
	vPos.z = vPos.z + 5
	pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Nasod_ExplodeSmoke", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(40,-1) )
	pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Nasod_ExplodeTail", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "ExplodeImpactRingRed", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(1,-1) )
	pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "ExplodeImpactSlashRed", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(1,-1) )
end


function EL_EXTRACTOR_FIRE_WAIT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )


	if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
		pNPCUnit:PlaySound_LUA( "El_Extractor_Wait.ogg" )
	end
    
end
