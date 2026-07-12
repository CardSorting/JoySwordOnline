-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--[[ KjTiger / 2011/8/28 / 초 거대 우노하운드, 벨더 비밀 던전 몬스터/
	 MAGIC_ATTACK_A,
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
		"BLOODY_UnoMap01.tga",
		"BLOODY_UnoMap02.tga",
		"BLOODY_UnoMap03.tga",
	},
	
	READY_SOUND = 
	{
	"Giant_UnoHound_MagicAttackA01.ogg",
	"Giant_UnoHound_MagicAttackA02.ogg",
	"Giant_UnoHound_MagicAttackA03.ogg",
	"Giant_UnoHound_MagicAttackA04.ogg",
	},
	
	READY_XSKIN_MESH =
	{
	},
}
--------------------------------------------------------------------------
INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_GIANT_UNOHOUND.x",
	MOTION_CHANGE_TEX_XET	= "NUI_BLOODY_UNOHOUND.xet",
	MOTION_ANI_TEX_XET		= "NUI_BLOODY_UNOHOUND.xet",
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
	IMMUNITY_TIME_STOP = TRUE,
	MP_CHANGE_RATE			= 1,
	MP_CHARGE_RATE			= 130,
	
	NOT_CULL				= TRUE,
	
	DAMAGE_DOWN         = FALSE,
    
	DIE_FLY					= 0,		

	SHOW_ON_MINIMAP		= FALSE,
	
	HITTED_TYPE	= HITTED_TYPE["HTD_NO_SOUND"],
	NOT_EXTRA_DAMAGE	= TRUE,
}
--------------------------------------------------------------------------
INIT_STATE = 
{
	{ STATE_NAME = "GIANT_UNOHOUND_START",	LUA_STATE_START_FUNC = "GIANT_UNOHOUND_START_STATE",	},
	{ STATE_NAME = "GIANT_UNOHOUND_WAIT",	},
				
	{ STATE_NAME = "GIANT_UNOHOUND_MAGIC_ATTACK_A",			LUA_FRAME_MOVE_FUNC = "GIANT_UNOHOUND_MAGIC_ATTACK_A_FRAME_MOVE", STATE_COOL_TIME = 12,	},
	{ STATE_NAME = "GIANT_UNOHOUND_MAGIC_ATTACK_A_Combo",	LUA_FRAME_MOVE_FUNC = "GIANT_UNOHOUND_MAGIC_ATTACK_A_Combo_FRAME_MOVE", STATE_COOL_TIME = 12,	},
	
	--리액션 관련
	{ STATE_NAME = "GIANT_UNOHOUND_DYING",	},
			
	START_STATE		= "GIANT_UNOHOUND_START",		
	WAIT_STATE		= "GIANT_UNOHOUND_WAIT",
			
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
	
	DYING_LAND_FRONT	= "GIANT_UNOHOUND_DYING",
	DYING_LAND_BACK		= "GIANT_UNOHOUND_DYING",
	DYING_SKY			= "GIANT_UNOHOUND_DYING",

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
GIANT_UNOHOUND_START = 
{
	ANIM_NAME	= "Wait",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= TRUE,
	LAND_CONNECT	= FALSE,
	ADD_ROTATE_Y	= 167,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,	
	
	INVINCIBLE	= { 0, 100, },
	
	SPEED_X	= 0,
	SPEED_Y	= 0,
		
	IMMADIATE_PACKET_SEND	= TRUE,
	
	SOUND_PLAY0 = 	{ 0.01, "Giant_UnoHound_MagicAttackA01.ogg", 100, FALSE, 40000 },
	SOUND_PLAY1 = 	{ 0.01, "Giant_UnoHound_MagicAttackA02.ogg", 100, FALSE, 40000 },
	SOUND_PLAY2 = 	{ 0.01, "Giant_UnoHound_MagicAttackA03.ogg", 100, FALSE, 10000 },
	SOUND_PLAY3 = 	{ 0.01, "Giant_UnoHound_MagicAttackA04.ogg", 100, FALSE, 30000 },
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GIANT_UNOHOUND_WAIT",	},
	},
}

function GIANT_UNOHOUND_START_STATE( pKTDXApp, pX2Game, pNPCUnit )
	local vPos = pNPCUnit:GetPos()
	vPos.x = 0
	vPos.y = 0
	vPos.z = 0
	
	pNPCUnit:SetPositionForce( vPos )
end
--------------------------------------------------------------------------
GIANT_UNOHOUND_WAIT = 
{
	ANIM_NAME	= "Wait",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION	= TRUE,
	LAND_CONNECT	= FALSE,
	ADD_ROTATE_Y	= 167,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,	
	
	INVINCIBLE	= { 0, 100, },
	
	SPEED_X	= 0,
	SPEED_Y	= 0,
		
	IMMADIATE_PACKET_SEND	= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"GIANT_UNOHOUND_MAGIC_ATTACK_A",	"CT_GIANT_UNOHOUND_MAGIC_ATTACK_A",	},
	},
	
	CT_GIANT_UNOHOUND_MAGIC_ATTACK_A = 
	{
		RATE	= 100,
		EVENT_INTERVAL_ID	= 0,
	},
}
--------------------------------------------------------------------------
GIANT_UNOHOUND_MAGIC_ATTACK_A = 
{
	ANIM_NAME	= "MAGIC_ATTACK_A",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= TRUE,
	ANIM_SPEED	 	= 0.5,
	LAND_CONNECT	= FALSE,
	ADD_ROTATE_Y	= 167,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,	
	
	INVINCIBLE	= { 0, 100, },
	
	SPEED_X	= 0,
	SPEED_Y	= 0,
		
	IMMADIATE_PACKET_SEND	= TRUE,
	
	SOUND_PLAY0 = 	{ 0.15, "Giant_UnoHound_MagicAttackA01.ogg", 100, FALSE, 40000 },
	SOUND_PLAY1 = 	{ 2.27, "Giant_UnoHound_MagicAttackA02.ogg", 100, FALSE, 40000 },
	SOUND_PLAY2 = 	{ 2.4, "Giant_UnoHound_MagicAttackA03.ogg", 100, FALSE, 10000 },
	SOUND_PLAY3 = 	{ 5.250, "Giant_UnoHound_MagicAttackA04.ogg", 100, FALSE, 30000 },
	 
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GIANT_UNOHOUND_WAIT",	},
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"GIANT_UNOHOUND_MAGIC_ATTACK_A_Combo",	"CT_GIANT_UNOHOUND_MAGIC_ATTACK_A_Combo",	},
	},
	
	CT_GIANT_UNOHOUND_MAGIC_ATTACK_A_Combo = 
	{
		RATE	= 70,
		ANIM_EVENT_TIMER	= 5.412,
	},
}

function GIANT_UNOHOUND_MAGIC_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 2.277 ) then
		local pEffectSet = pX2Game:GetEffectSet()
		if pEffectSet ~= nil then
			local hEffect = pEffectSet:PlayEffectSet_LUA( "Effectset_Giant_Unohound_Beam_LR", pNPCUnit )
		end

		pX2Game:GetX2Camera():GetCamera():UpDownCrashCamera( 6.0, 10.0 )
	end	
end
--------------------------------------------------------------------------
GIANT_UNOHOUND_MAGIC_ATTACK_A_Combo = 
{
	ANIM_NAME	= "MAGIC_ATTACK_A_Combo",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= TRUE,
	ANIM_SPEED	 	= 0.5,
	LAND_CONNECT	= FALSE,
	ADD_ROTATE_Y	= 167,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,	
	
	INVINCIBLE	= { 0, 100, },
	
	SPEED_X	= 0,
	SPEED_Y	= 0,
		
	IMMADIATE_PACKET_SEND	= TRUE,
	
	SOUND_PLAY0 = 	{ 0.2, "Giant_UnoHound_MagicAttackA02.ogg", 100, FALSE, 40000 },
	SOUND_PLAY1 = 	{ 0.35, "Giant_UnoHound_MagicAttackA03.ogg", 100, FALSE, 10000 },
	SOUND_PLAY2 = 	{ 3.176, "Giant_UnoHound_MagicAttackA04.ogg", 100, FALSE, 30000 },
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GIANT_UNOHOUND_WAIT",	},
	},
}

function GIANT_UNOHOUND_MAGIC_ATTACK_A_Combo_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 0.231 ) then
		local pEffectSet = pX2Game:GetEffectSet()
		if pEffectSet ~= nil then
			local hEffect = pEffectSet:PlayEffectSet_LUA( "Effectset_Giant_Unohound_Beam_RL", pNPCUnit )
		end

		pX2Game:GetX2Camera():GetCamera():UpDownCrashCamera( 6.0, 10.0 )
	end	
end
--------------------------------------------------------------------------
GIANT_UNOHOUND_DYING = 
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