-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	UNIT_WIDTH		= 50.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	    "Arme_Critical2.dds",
	    "ColorBallGray.tga",
	    "Lightning_Shock01.dds",
	},
	
	READY_SOUND = 
	{
		"ShockStick_Attack1.ogg",
		"ShockStick_Attack2.ogg",
		"ShockStick_Attack3.ogg",
--		"ShockStick_Damage.ogg",
		"ShockStick_Hide1.ogg",
		"ShockStick_Hide2.ogg",
	},
	
	READY_XSKIN_MESH = 
	{
	    "DummyAttackBox_50x50x50.x",
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_Altera_Shock_Stick_None.x",
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
	MAX_HP				= 9225,
	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 130,
	
	USE_SLASH_TRACE		= FALSE,
	
	SHADOW_SIZE			= 200,
	SHADOW_FILE_NAME	= "shadow.dds",
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	--QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	--EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
		
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	--HEAD_BONE_NAME		= "Spike_Leaf1",
	
	DAMAGE_DOWN         = FALSE,
		
	SHOW_ON_MINIMAP		= FALSE,
	

	

}

INIT_STATE = 
{
	{ STATE_NAME = "SHOCK_STICK_NONE_WAIT",						},
	{ STATE_NAME = "SHOCK_STICK_NONE_WAITSTART",					},
	{ STATE_NAME = "SHOCK_STICK_NONE_ATTACK",					LUA_FRAME_MOVE_FUNC = "SHOCK_STICK_NONE_ATTACK_FRAME_MOVE", STATE_COOL_TIME = 2,	},
	{ STATE_NAME = "SHOCK_STICK_NONE_HIDE",						},
	{ STATE_NAME = "SHOCK_STICK_NONE_DAMAGE",					},
	{ STATE_NAME = "SHOCK_STICK_NONE_DYING",				        LUA_STATE_START_FUNC = "SHOCK_STICK_NONE_DYING_STATE_START", },

	START_STATE					= "SHOCK_STICK_NONE_WAITSTART",
	WAIT_STATE					= "SHOCK_STICK_NONE_WAITSTART",
	
	SMALL_DAMAGE_LAND_FRONT		= "SHOCK_STICK_NONE_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "SHOCK_STICK_NONE_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "SHOCK_STICK_NONE_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "SHOCK_STICK_NONE_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "SHOCK_STICK_NONE_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "SHOCK_STICK_NONE_DAMAGE",
	FLY_DAMAGE_FRONT			= "SHOCK_STICK_NONE_DAMAGE",
	FLY_DAMAGE_BACK				= "SHOCK_STICK_NONE_DAMAGE",
	SMALL_DAMAGE_AIR			= "SHOCK_STICK_NONE_DAMAGE",	
	BIG_DAMAGE_AIR				= "SHOCK_STICK_NONE_DAMAGE",
	DOWN_DAMAGE_AIR				= "SHOCK_STICK_NONE_DAMAGE",
	UP_DAMAGE					= "SHOCK_STICK_NONE_DAMAGE",
	DAMAGE_REVENGE				= "SHOCK_STICK_NONE_DAMAGE",
	
	WAIT_STATES                 = { "SHOCK_STICK_NONE_WAIT", },	
	
	DYING_LAND_FRONT			= "SHOCK_STICK_NONE_DYING",
	DYING_LAND_BACK				= "SHOCK_STICK_NONE_DYING",
	DYING_SKY					= "SHOCK_STICK_NONE_DYING",

	REVENGE_ATTACK				= "",	
}

INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_NEAR_FIRST"],
		TARGET_INTERVAL				= 3,		-- sec
		TARGET_NEAR_RANGE			= 200,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 10500,		-- cm
		TARGET_LOST_RANGE			= 10800,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --100,		-- %
		ATTACK_TARGET_RATE			= 0,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 0,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
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


SHOCK_STICK_NONE_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
		
	NEVER_MOVE					= TRUE,
	
	EVENT_INTERVAL_TIME0		= 2,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],			"SHOCK_STICK_NONE_HIDE",    },
	},
}

SHOCK_STICK_NONE_HIDE = 
{
	ANIM_NAME					= "Hide",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,

    SOUND_PLAY0			= { 0.088, "ShockStick_Hide1.ogg", },
    SOUND_PLAY1			= { 0.47, "ShockStick_Hide2.ogg", },
	
	INVINCIBLE					= { 0, 100, },
	
	NEVER_MOVE					= TRUE,	
	EVENT_INTERVAL_TIME0		= 2,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],			"SHOCK_STICK_NONE_WAITSTART",    },
	},
}

SHOCK_STICK_NONE_WAITSTART = 
{
	ANIM_NAME					= "WaitStart",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	INVINCIBLE					= { 0, 100, }, 	
	
	NEVER_MOVE					= TRUE,
	EVENT_INTERVAL_TIME0		= 1,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],			"SHOCK_STICK_NONE_ATTACK",				"CT_SHOCK_STICK_NONE_ATTACK",	},
	},
	
	CT_SHOCK_STICK_NONE_ATTACK = 
	{
		EVENT_INTERVAL_ID			= 0,
		DISTANCE_TO_TARGET_NEAR		= 500,
		RATE						= 100,
	},
}

SHOCK_STICK_NONE_DAMAGE =
{
	ANIM_NAME					= "Damage",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	

--    SOUND_PLAY0			= { 0.08, "ShockStick_Damage.ogg", },
	
	PASSIVE_SPEED_X				= 0,
	PASSIVE_SPEED_Y				= 0,
	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],					"SHOCK_STICK_NONE_WAIT",				},
	},
}

SHOCK_STICK_NONE_ATTACK = 
{
	ANIM_NAME					= "Attack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.153, "ShockStick_Attack1.ogg", },
    SOUND_PLAY1			= { 0.441, "ShockStick_Attack2.ogg", },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,	
	
	SUPER_ARMOR					= TRUE,
	SUPER_ARMOR_NOT_RED         = TRUE,
	
	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"SHOCK_STICK_NONE_WAIT",					},
	},
	
    PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,			
		{ TRUE, 0.7, "Light_Lightning_Shock02", FALSE, "Dummy01", FALSE, FALSE, 0, 0, -15, FALSE, 0, 0, 0, },
		{ TRUE, 0.7, "Counter_Particle02", FALSE, "Dummy01", FALSE, FALSE, 0, 0, 0, FALSE, 0, 0, 0, },
		{ TRUE, 0.833, "Lightning_Shock01", FALSE, "Dummy01", FALSE, FALSE, 0, 0, 0, FALSE, 0, 0, 0, },		
	},	
	
	CAMERA_CRASH = 
	{
	    {0.833, 5.0, 0.2, TRUE, },
	},
}


SHOCK_STICK_NONE_DYING = 
{
	ANIM_NAME					= "WaitStart",
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


function SHOCK_STICK_NONE_DYING_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	
	pNPCUnit:PlaySound_LUA( "Explosion.ogg" )    
    pMajorParticle = pX2Game:GetMajorParticle()
	
	vPos = pNPCUnit:GetPos()	
	vPos.y = vPos.y - 50
	vPos.z = vPos.z + 5
	if pMajorParticle ~= nil then
	    pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Nasod_ExplodeSmoke", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(40,-1) )
	    pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Nasod_ExplodeTail", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	    pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "ExplodeImpactRingRed", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(1,-1) )
	    pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "ExplodeImpactSlashRed", vPos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(1,-1) )
    	
	    pNPCUnit:SetShow(false)
    end    
	
end

function SHOCK_STICK_NONE_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	if pNPCUnit:AnimEventTimer_LUA( 0.7 ) then
	    vBonePos1 = pNPCUnit:GetBonePos_LUA( "Dummy01" )	    
	    vBonePos2 = pNPCUnit:GetBonePos_LUA( "Dummy01" )
	    
		landPos = pNPCUnit:GetLandPosition_LUA()
		
		pDamageEffect = pX2Game:GetDamageEffect()
		if pDamageEffect ~= nil then
		    vBonePos1.x = vBonePos1.x - 90
		    pDamageEffect:CreateInstance_LUA( pNPCUnit, "SHOCK_STICK_ATTACK1", vBonePos1, landPos.y )	
		    vBonePos2.x = vBonePos2.x + 90
		    pDamageEffect:CreateInstance_LUA( pNPCUnit, "SHOCK_STICK_ATTACK2", vBonePos2, landPos.y )		    
        end		    
	end

end

