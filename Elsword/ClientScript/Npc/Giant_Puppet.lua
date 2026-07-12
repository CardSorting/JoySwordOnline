-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--[[ KjTiger / 2011/8/28 / 초 거대 퍼핏, 벨더 비밀 던전 몬스터/
	 MAGIC_ATTACK_A,  MAGIC_ATTACK_B,  MAGIC_ATTACK_C
--]]

--------------------------------------------------------------------------
INIT_SYSTEM = 
{
	UNIT_WIDTH	= 120.0,
	UNIT_LAYER	= X2_LAYER["XL_UNIT_0"],
	
	RENDER_PARAM = RENDER_TYPE["RT_CARTOON"],
}
--------------------------------------------------------------------------
INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	},
	
	READY_SOUND = 
	{	
	"Giant_Puppet_MagicAttackA01.ogg",
	"Giant_Puppet_MagicAttackA02.ogg",
	"Giant_Puppet_MagicAttackB01.ogg",
	"Giant_Puppet_MagicAttackB02.ogg",
	"Giant_Puppet_MagicAttackC01.ogg",
	"Giant_Puppet_MagicAttackC02.ogg",
	"HitStone.wav",
	"HitStone2.wav",
	},	
	READY_XSKIN_MESH =
	{
	},
}
--------------------------------------------------------------------------
INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_GIANT_PUPPET.x",
}
--------------------------------------------------------------------------
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
--------------------------------------------------------------------------
INIT_COMPONENT = 
{
	MP_CHANGE_RATE	= 1,
	MP_CHARGE_RATE	= 130,
	
	NOT_CULL	= TRUE,
	
	DAMAGE_DOWN	= FALSE,
	DIE_FLY		= 0,		

	SHOW_ON_MINIMAP	= FALSE,
	
	HITTED_TYPE	= HITTED_TYPE["HTD_NO_SOUND"],
	NOT_EXTRA_DAMAGE	= TRUE,
}
--------------------------------------------------------------------------
INIT_STATE = 
{
	{ STATE_NAME = "GIANT_PUPPET_START",	LUA_STATE_START_FUNC = "GIANT_PUPPET_START_STATE",	},
	{ STATE_NAME = "GIANT_PUPPET_WAIT",	},
				
	{ STATE_NAME = "GIANT_PUPPET_MAGIC_ATTACK_A",		LUA_FRAME_MOVE_FUNC = "GIANT_PUPPET_MAGIC_ATTACK_A_FRAME_MOVE", STATE_COOL_TIME = 15,	},
	{ STATE_NAME = "GIANT_PUPPET_MAGIC_ATTACK_B",		LUA_FRAME_MOVE_FUNC = "GIANT_PUPPET_MAGIC_ATTACK_B_FRAME_MOVE", STATE_COOL_TIME = 15,	},
	{ STATE_NAME = "GIANT_PUPPET_MAGIC_ATTACK_C",		LUA_FRAME_MOVE_FUNC = "GIANT_PUPPET_MAGIC_ATTACK_C_FRAME_MOVE", STATE_COOL_TIME = 15,	},
	
	--리액션 관련
	{ STATE_NAME = "GIANT_PUPPET_DYING",	},
			
	START_STATE		= "GIANT_PUPPET_START",		
	WAIT_STATE		= "GIANT_PUPPET_WAIT",
			
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
	DOWN_DAMAGE_AIR_LANDING		= "",
	UP_DAMAGE					= "",
	DAMAGE_REVENGE				= "",
	
	DYING_LAND_FRONT	= "GIANT_PUPPET_DYING",
	DYING_LAND_BACK		= "GIANT_PUPPET_DYING",
	DYING_SKY			= "GIANT_PUPPET_DYING",

	REVENGE_ATTACK	= "",
}
--------------------------------------------------------------------------
INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_RANDOM"],
		TARGET_INTERVAL				= 3,
		TARGET_NEAR_RANGE			= 5000,
		TARGET_RANGE				= 10500,
		TARGET_LOST_RANGE			= 10800,
		TARGET_SUCCESS_RATE			= 100,
		ATTACK_TARGET_RATE			= 100,
		PRESERVE_LAST_TARGET_RATE	= 100,
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 600,
		DEST_GAP			= 150,
		MOVE_GAP			= 160,
		
		DIR_CHANGE_INTERVAL = 0.7,
		
		WALK_INTERVAL		= 3,
		NEAR_WALK_RATE		= 100,
		FAR_WALK_RATE		= 100,
		
		JUMP_INTERVAL		= 5,
		UP_JUMP_RATE		= 100,
		UP_DOWN_RATE		= 20,
		DOWN_JUMP_RATE		= 100,
		DOWN_DOWN_RATE		= 40,
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 100,
		PATROL_RANGE			= 200,
		PATROL_COOL_TIME		= 2,
		ONLY_THIS_LINE_GROUP	= TRUE,
	},
	
	ESCAPE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 500,
		ESCAPE_GAP			= 600,
		
		WALK_INTERVAL		= 1.5,
		NEAR_WALK_RATE		= 100,
		FAR_WALK_RATE		= 100,
		
		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 100,
		UP_DOWN_RATE		= 30,
		DOWN_JUMP_RATE		= 100,
		DOWN_DOWN_RATE		= 30,
	},
}
--------------------------------------------------------------------------
GIANT_PUPPET_START = 
{
	ANIM_NAME	= "Wait",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= TRUE,
	LAND_CONNECT	= FALSE,
	ADD_ROTATE_Y	= 180,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,	
	
	INVINCIBLE	= { 0, 100, },
	
	SPEED_X	= 0,
	SPEED_Y	= 0,
		
	IMMADIATE_PACKET_SEND	= TRUE,
			
	SOUND_PLAY0		= { 0.10, "Giant_Puppet_MagicAttackA01.ogg", 100, FALSE, 100000,}, --예비용
	SOUND_PLAY1		= { 0.10, "Giant_Puppet_MagicAttackA02.ogg", 100, FALSE, 100000,}, --예비용
	SOUND_PLAY2		= { 0.10, "Giant_Puppet_MagicAttackB01.ogg", 100, FALSE, 100000,}, --예비용
	SOUND_PLAY3		= { 0.10, "Giant_Puppet_MagicAttackB02.ogg", 100, FALSE, 100000,}, --예비용
	SOUND_PLAY4		= { 0.10, "Giant_Puppet_MagicAttackC01.ogg", 100, FALSE, 100000,}, --예비용
	SOUND_PLAY5		= { 0.10, "Giant_Puppet_MagicAttackC02.ogg", 100, FALSE, 100000,}, --예비용
	SOUND_PLAY6		= { 0.10, "HitStone.wav", 100, FALSE, 100000,}, --예비용
	SOUND_PLAY7		= { 0.10, "HitStone2.wav", 100, FALSE, 100000,}, --예비용
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GIANT_PUPPET_WAIT",	},
	},
}

function GIANT_PUPPET_START_STATE( pKTDXApp, pX2Game, pNPCUnit )
	local vPos = pNPCUnit:GetPos()
	vPos.x = 0
	vPos.y = 0
	vPos.z = 0
	
	pNPCUnit:SetPositionForce( vPos )
end
--------------------------------------------------------------------------
GIANT_PUPPET_WAIT = 
{
	ANIM_NAME	= "Wait",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= TRUE,
	LAND_CONNECT	= FALSE,
	ADD_ROTATE_Y	= 180,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,	
	
	INVINCIBLE	= { 0, 100, },
	
	SPEED_X	= 0,
	SPEED_Y	= 0,
		
	IMMADIATE_PACKET_SEND	= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"GIANT_PUPPET_MAGIC_ATTACK_A",	"CT_GIANT_PUPPET_MAGIC_ATTACK_A",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"GIANT_PUPPET_MAGIC_ATTACK_B",	"CT_GIANT_PUPPET_MAGIC_ATTACK_B",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"GIANT_PUPPET_MAGIC_ATTACK_C",	"CT_GIANT_PUPPET_MAGIC_ATTACK_C",	},
	},
	
	CT_GIANT_PUPPET_MAGIC_ATTACK_A = 
	{
		RATE	= 30,
		EVENT_INTERVAL_ID	= 0,
	},
	
	CT_GIANT_PUPPET_MAGIC_ATTACK_B = 
	{
		RATE	= 30,
		EVENT_INTERVAL_ID	= 0,
	},
	
	CT_GIANT_PUPPET_MAGIC_ATTACK_C = 
	{
		RATE	= 30,
		EVENT_INTERVAL_ID	= 0,
	},
}
--------------------------------------------------------------------------
GIANT_PUPPET_MAGIC_ATTACK_A = 
{
	ANIM_NAME		= "MAGIC_ATTACK_A",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= TRUE,
	LAND_CONNECT	= FALSE,
	ADD_ROTATE_Y	= 180,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,	
	
	INVINCIBLE	= { 0, 100, },
	
	SOUND_PLAY0					= { 0.20, "Giant_Puppet_MagicAttackA01.ogg", 100, FALSE, 23000,},
	SOUND_PLAY1					= { 3.00, "HitStone.wav", 100, FALSE, 23000,},
	SOUND_PLAY2					= { 3.45, "Giant_Puppet_MagicAttackA02.ogg", 100, FALSE, 23000,},
	
	SPEED_X	= 0,
	SPEED_Y	= 0,
		
	IMMADIATE_PACKET_SEND	= TRUE,
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GIANT_PUPPET_WAIT",	},
	},
}

function GIANT_PUPPET_MAGIC_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 3.246 ) then
		local pEffectSet = pX2Game:GetEffectSet()
		local hEffect = pEffectSet:PlayEffectSet_LUA( "Effectset_Giant_Puppet_Burn", pNPCUnit )
	end	
end
--------------------------------------------------------------------------
GIANT_PUPPET_MAGIC_ATTACK_B = 
{
	ANIM_NAME		= "MAGIC_ATTACK_B",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= TRUE,
	LAND_CONNECT	= FALSE,
	ADD_ROTATE_Y	= 180,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,	
	
	INVINCIBLE	= { 0, 100, },
	
	SOUND_PLAY0					= { 0.20, "Giant_Puppet_MagicAttackB01.ogg", 100, FALSE, 23000, },
	SOUND_PLAY1					= { 3.10, "HitStone2.wav", 100, FALSE, 23000, },
	SOUND_PLAY2					= { 3.80, "Giant_Puppet_MagicAttackB02.ogg", 100, FALSE, 23000, },
	
	SPEED_X	= 0,
	SPEED_Y	= 0,
		
	IMMADIATE_PACKET_SEND	= TRUE,
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GIANT_PUPPET_WAIT",	},
	},
}

function GIANT_PUPPET_MAGIC_ATTACK_B_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 3.246 ) then
		local pEffectSet = pX2Game:GetEffectSet()
		local hEffect = pEffectSet:PlayEffectSet_LUA( "Effectset_Giant_Puppet_Burn", pNPCUnit )
	end	
end
--------------------------------------------------------------------------
GIANT_PUPPET_MAGIC_ATTACK_C = 
{
	ANIM_NAME		= "MAGIC_ATTACK_C",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= TRUE,
	LAND_CONNECT	= FALSE,
	ADD_ROTATE_Y	= 180,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,	
	
	INVINCIBLE	= { 0, 100, },
	
	SOUND_PLAY0					= { 0.20, "Giant_Puppet_MagicAttackC01.ogg", 100, FALSE, 23000, },
	SOUND_PLAY1					= { 3.10, "HitStone.wav", 100, FALSE, 23000, },
	SOUND_PLAY2					= { 3.72, "Giant_Puppet_MagicAttackC02.ogg", 100, FALSE, 23000, },

	SPEED_X	= 0,
	SPEED_Y	= 0,
		
	IMMADIATE_PACKET_SEND	= TRUE,
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GIANT_PUPPET_WAIT",	},
	},
}

function GIANT_PUPPET_MAGIC_ATTACK_C_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 3.246 ) then
		local pEffectSet = pX2Game:GetEffectSet()
		local hEffect = pEffectSet:PlayEffectSet_LUA( "Effectset_Giant_Puppet_Burn", pNPCUnit )
	end	
end
--------------------------------------------------------------------------
GIANT_PUPPET_DYING = 
{
	ANIM_NAME	= "Dying",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= TRUE,
	RIGHT	= TRUE,

	INVINCIBLE	= { 0, 100, }, 		
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,
    	
	DYING_END	= TRUE,
	
	IMMADIATE_PACKET_SEND	= TRUE,
}
--------------------------------------------------------------------------