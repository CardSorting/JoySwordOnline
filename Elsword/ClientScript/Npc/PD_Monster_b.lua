-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{	    
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
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
	MOTION_FILE_NAME		= "Dummy_Ani_Wait.x",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 400,
	RUN_SPEED			= 1200,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 2300,
}


INIT_COMPONENT = 
{
	MP_CHANGE_RATE			= 1,
	MP_CHARGE_RATE			= 130,
	
	--SHADOW_SIZE				= 200,
	--SHADOW_FILE_NAME		= "shadow.dds",
	
	SMALL_HP_BAR_BLUE		= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED		= "Small_HP_bar_Red.TGA",
	--SMALL_HP_BAR_YELLOW		= "Small_HP_bar_Yellow.TGA",
	
	SHOW_ON_MINIMAP		= FALSE,
	
	HITTED_TYPE				= HITTED_TYPE["HTD_WOOD"],
	
	DAMAGE_DOWN				= FALSE,
    DIE_FLY					= 0,		
}

INIT_STATE = 
{
	{ STATE_NAME = "PD_MONSTER_B_START",			LUA_STATE_START_FUNC = "PD_MONSTER_B_START_STATE_START"},	
	{ STATE_NAME = "PD_MONSTER_B_WAIT",			},
	{ STATE_NAME = "PD_MONSTER_B_DIE", },
		
	START_STATE					= "PD_MONSTER_B_START",
	WAIT_STATE					= "PD_MONSTER_B_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "",
	SMALL_DAMAGE_LAND_BACK		= "",
	BIG_DAMAGE_LAND_FRONT		= "",
	BIG_DAMAGE_LAND_BACK		= "",
	
	DOWN_DAMAGE_LAND_FRONT		= "",
	DOWN_DAMAGE_LAND_BACK		= "",
	
	FLY_DAMAGE_FRONT			= "",
	FLY_DAMAGE_BACK				= "",
	SMALL_DAMAGE_AIR			= "",	
	BIG_DAMAGE_AIR				= "",
	DOWN_DAMAGE_AIR				= "",
	UP_DAMAGE					= "",
	DAMAGE_REVENGE				= "",	
	
	DYING_LAND_FRONT			= "PD_MONSTER_B_DIE",
	DYING_LAND_BACK				= "PD_MONSTER_B_DIE",
	DYING_SKY					= "PD_MONSTER_B_DIE",
}

PD_MONSTER_B_START = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= TRUE,
	
	INVINCIBLE					= { 0, 100, },
	
	IMMADIATE_PACKET_SEND		= TRUE,

	--SOUND_PLAY0					= { 0.143, "Peita_Crossbow_Start.ogg" },

	CAN_PUSH_UNIT               = FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	NEVER_MOVE					= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"PD_MONSTER_B_WAIT",				},
	},
	
	PARTICLE_SEQ = 
	{
		--Major, time, Name, weaponBonePos, Pos, StateEndDelete, bTrace, posx, posy, posz, bApplyUnitRotation, rotx, roty, rotz,
		{ TRUE, 0.01, "BackLight_Peita_Stage6_Particle01", FALSE, "Bip01", FALSE, FALSE, 0, 4731.059 - 4743, 668 - 1541.319 , },
		{ TRUE, 2.01, "BackLight_Peita_Stage6_Particle02", FALSE, "Bip01", FALSE, FALSE, 0, 4731.059 - 4743, 668 - 1541.319, },
		{ TRUE, 0.01, "BackLight_Peita_Stage6_Particle03", FALSE, "Bip01", FALSE, FALSE, 0, 5708.375 - 4743, 668 - 1541.319, },
	},
}

PD_MONSTER_B_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	CAN_PUSH_UNIT               = FALSE,
	CAN_PASS_UNIT				= TRUE,
	NEVER_MOVE					= TRUE,

	EVENT_PROCESS = 
	{	
	},
}

PD_MONSTER_B_DIE = 
{
    SHOW                        = FALSE,
    
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
		
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,	
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

function PD_MONSTER_B_START_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
    centerPos = D3DXVECTOR3(0, 4743, 668)                
    pNPCUnit:SetPosition( centerPos , false)
end
