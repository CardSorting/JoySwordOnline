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
	},


	
	READY_SOUND = 
	{
	
       "El_Extractor_Normal_Start.ogg",
	
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
	MOTION_FILE_NAME		= "Motion_El_Extractor_NormalA.X",
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
	MP_CHANGE_RATE			= 1,
	MP_CHARGE_RATE			= 130,
	
	USE_SLASH_TRACE			= FALSE,
	
	SHADOW_SIZE				= 200,
	SHADOW_FILE_NAME		= "shadow.dds",
	
	SMALL_HP_BAR_BLUE		= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED		= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW 	= "Small_HP_bar_Yellow.TGA",
	
	QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
	
	HEAD_BONE_NAME			= "COLLISION_SPHERE1",

	HITTED_TYPE				= HITTED_TYPE["HTD_METAL"],
	FALL_DOWN				= FALSE,
	
	DAMAGE_DOWN         = FALSE,
}


INIT_STATE = 
{
	{ STATE_NAME = "EL_EXTRACTOR_NORMAL_B_START",			LUA_CAMERA_MOVE_FUNC = "EL_EXTRACTOR_NORMAL_B_START_CAMERA_MOVE",	},

															
	{ STATE_NAME = "EL_EXTRACTOR_NORMAL_B_WAIT",		    },
	
	
	{ STATE_NAME = "EL_EXTRACTOR_NORMAL_B_BUFF",		    LUA_STATE_START_FUNC ="EL_EXTRACTOR_NORMAL_B_BUFF_STATE_START",		},
	
	
	
	
	--리액션 관련
	{ STATE_NAME = "EL_EXTRACTOR_NORMAL_B_DAMAGE",			},
	{ STATE_NAME = "EL_EXTRACTOR_NORMAL_B_DYING",			LUA_STATE_START_FUNC ="EL_EXTRACTOR_NORMAL_B_DYING_STATE_START",		},
	
	
	START_STATE					= "EL_EXTRACTOR_NORMAL_B_START",
	WAIT_STATE					= "EL_EXTRACTOR_NORMAL_B_WAIT",
	
	
	SMALL_DAMAGE_LAND_FRONT		= "EL_EXTRACTOR_NORMAL_B_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "EL_EXTRACTOR_NORMAL_B_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "EL_EXTRACTOR_NORMAL_B_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "EL_EXTRACTOR_NORMAL_B_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "EL_EXTRACTOR_NORMAL_B_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "EL_EXTRACTOR_NORMAL_B_DAMAGE",
	FLY_DAMAGE_FRONT			= "EL_EXTRACTOR_NORMAL_B_DAMAGE",
	FLY_DAMAGE_BACK				= "EL_EXTRACTOR_NORMAL_B_DAMAGE",
	SMALL_DAMAGE_AIR			= "EL_EXTRACTOR_NORMAL_B_DAMAGE",	
	BIG_DAMAGE_AIR				= "EL_EXTRACTOR_NORMAL_B_DAMAGE",
	DOWN_DAMAGE_AIR				= "EL_EXTRACTOR_NORMAL_B_DAMAGE",
	UP_DAMAGE					= "EL_EXTRACTOR_NORMAL_B_DAMAGE",
	DAMAGE_REVENGE				= "EL_EXTRACTOR_NORMAL_B_DAMAGE",
	
	DYING_LAND_FRONT			= "EL_EXTRACTOR_NORMAL_B_DYING",
	DYING_LAND_BACK				= "EL_EXTRACTOR_NORMAL_B_DYING",
	DYING_SKY					= "EL_EXTRACTOR_NORMAL_B_DYING",

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


EL_EXTRACTOR_NORMAL_B_START = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,


    SOUND_PLAY0			= { 0.01, "El_Extractor_Normal_Start.ogg" },

	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,	
	NEVER_MOVE					= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"EL_EXTRACTOR_NORMAL_B_BUFF",		"CT_EL_EXTRACTOR_NORMAL_B_BUFF"				},
	},
	
	CT_EL_EXTRACTOR_NORMAL_B_BUFF = 
	{
		STATE_TIME_OVER			= 5,
	},
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ TRUE, 0.1, "El_Extractor_WaitStart02_G", FALSE, "", TRUE, FALSE, 0, 50, 0, },
		{ TRUE, 0.26, "El_Extractor_WaitStart02_G", FALSE, "", TRUE, FALSE, 0, 100, 0, },
		{ TRUE, 0.39, "El_Extractor_WaitStart02_G", FALSE, "", TRUE, FALSE, 0, 150, 0, },
		{ TRUE, 0.52, "El_Extractor_WaitStart02_G", FALSE, "", TRUE, FALSE, 0, 200, 0, },
		{ TRUE, 0.65, "El_Extractor_WaitStart02_G", FALSE, "", TRUE, FALSE, 0, 250, 0, },
		{ TRUE, 0.01, "Ground_ShockWave01", FALSE, "", TRUE, FALSE, 0, 0, 0, },
		
		{ TRUE, 0.65, "El_Extractor_WaitStart03_Light_G", FALSE, "", FALSE, FALSE, 0, 200, 0, },
		{ TRUE, 0.65, "El_Extractor_WaitStart01_G", FALSE, "", FALSE, FALSE, 0, 200, 0, },
	},
	
}


function EL_EXTRACTOR_NORMAL_B_START_CAMERA_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	pos = pNPCUnit:GetBonePos_LUA("Cylinder05")	
	camera = pX2Game:GetX2Camera()
	camera:PartsLookDirectCamera_LUA( pNPCUnit, pos, D3DXVECTOR3( 700, 200, -30 ), D3DXVECTOR2( 0,0 ) )

end





EL_EXTRACTOR_NORMAL_B_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	NEVER_MOVE					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	EVENT_INTERVAL_TIME0		= 2,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],  	    "EL_EXTRACTOR_NORMAL_B_BUFF",		"CT_EL_EXTRACTOR_NORMAL_B_BUFF",	},
	},		
	
	CT_EL_EXTRACTOR_NORMAL_B_BUFF = 
	{
		EVENT_INTERVAL_ID		= 0,	
		STATE_TIME_OVER			= 10,		
	},
	
}




EL_EXTRACTOR_NORMAL_B_BUFF = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	NEVER_MOVE					= TRUE,
	SUPER_ARMOR					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"EL_EXTRACTOR_NORMAL_B_WAIT",								},
	},		
}



function EL_EXTRACTOR_NORMAL_B_BUFF_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:SetBuffFactorToGameUnitByBuffFactorID_LUA( BUFF_FACTOR_ID["BFI_NPC_PHYSIC_DEFENCE_ACCEL"] )
	pNPCUnit:SetBuffFactorToGameUnitByBuffFactorID_LUA( BUFF_FACTOR_ID["BFI_NPC_MAGIC_DEFENCE_ACCEL"] )
    
end




EL_EXTRACTOR_NORMAL_B_DAMAGE = 
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

		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"EL_EXTRACTOR_NORMAL_B_WAIT",								},
	},
}


EL_EXTRACTOR_NORMAL_B_DYING = 
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
	
	DYING_SPEED					= 10,
}
	




function EL_EXTRACTOR_NORMAL_B_DYING_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	
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



