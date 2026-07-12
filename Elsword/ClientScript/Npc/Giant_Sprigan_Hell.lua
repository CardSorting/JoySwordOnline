-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--[[ KjTiger / 2011/8/28 / 초 거대 스프리건, 벨더 비밀 던전 몬스터/
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
	},
	
	READY_SOUND = 
	{
	},
	
	READY_XSKIN_MESH =
	{
	},
}
--------------------------------------------------------------------------
INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_GIANT_SPRIGAN.x",
}
--------------------------------------------------------------------------
INIT_PHYSIC = 
{
	RELOAD_ACCEL	= 2000,
	G_ACCEL			= 4000,
	MAX_G_SPEED		= 0,
	
	WALK_SPEED		= 0,
	RUN_SPEED		= 0,
	JUMP_SPEED		= 0,
	DASH_JUMP_SPEED	= 0,
}
--------------------------------------------------------------------------
INIT_COMPONENT = 
{
	MP_CHANGE_RATE			= 1,
	MP_CHARGE_RATE			= 130,
	
	NOT_CULL	= TRUE,
	
	DAMAGE_DOWN	= FALSE,
	
    DIE_FLY					= 0,		

	SHOW_ON_MINIMAP		= FALSE,
	
	HITTED_TYPE	= HITTED_TYPE["HTD_NO_SOUND"],
	NOT_EXTRA_DAMAGE	= TRUE,
}
--------------------------------------------------------------------------
INIT_STATE = 
{
	{ STATE_NAME = "GIANT_SPRIGAN_START",	LUA_STATE_START_FUNC = "GIANT_SPRIGAN_START_STATE",	},
	{ STATE_NAME = "GIANT_SPRIGAN_WAIT",	},
				
	{ STATE_NAME = "GIANT_SPRIGAN_MAGIC_ATTACK_A",		LUA_FRAME_MOVE_FUNC = "GIANT_SPRIGAN_MAGIC_ATTACK_A_FRAME_MOVE", STATE_COOL_TIME = 7,	},
	
	--리액션 관련
	{ STATE_NAME = "GIANT_SPRIGAN_DYING",	},
			
	START_STATE		= "GIANT_SPRIGAN_START",		
	WAIT_STATE		= "GIANT_SPRIGAN_WAIT",
			
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
	
	DYING_LAND_FRONT	= "GIANT_SPRIGAN_DYING",
	DYING_LAND_BACK		= "GIANT_SPRIGAN_DYING",
	DYING_SKY			= "GIANT_SPRIGAN_DYING",

	REVENGE_ATTACK	= "",
}
--------------------------------------------------------------------------
INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_RANDOM"],
		TARGET_INTERVAL				= 3,
		TARGET_NEAR_RANGE			= 30000,
		TARGET_RANGE				= 50000,
		TARGET_LOST_RANGE			= 60000,
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
GIANT_SPRIGAN_START = 
{
	ANIM_NAME	= "Wait",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
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
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GIANT_SPRIGAN_WAIT",	},
	},
}

function GIANT_SPRIGAN_START_STATE( pKTDXApp, pX2Game, pNPCUnit )
	local vPos = pNPCUnit:GetPos()
	vPos.x = 0
	vPos.y = 0
	vPos.z = 0
	
	pNPCUnit:SetPositionForce( vPos )
end
--------------------------------------------------------------------------
GIANT_SPRIGAN_WAIT = 
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
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],	"GIANT_SPRIGAN_MAGIC_ATTACK_A",	"CT_GIANT_SPRIGAN_MAGIC_ATTACK_A",	},
	},
	
	CT_GIANT_SPRIGAN_MAGIC_ATTACK_A = 
	{
		RATE	= 100,
		EVENT_INTERVAL_ID	= 0,
	},
}
--------------------------------------------------------------------------
GIANT_SPRIGAN_MAGIC_ATTACK_A = 
{
	ANIM_NAME	= "MAGIC_ATTACK_A",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= TRUE,
	LAND_CONNECT	= FALSE,
	ADD_ROTATE_Y	= 180,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,	
	
	INVINCIBLE	= { 0, 100, },
	
	SPEED_X	= 0,
	SPEED_Y	= 0,
		
	IMMADIATE_PACKET_SEND	= TRUE,
	
	--SOUND_PLAY0 = 	{ 2.3, "", },
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"GIANT_SPRIGAN_WAIT",	},
	},
}

function GIANT_SPRIGAN_MAGIC_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	if pNPCUnit:AnimEventTimer_LUA( 1.0 ) then
		local pEffectSet = pX2Game:GetEffectSet()
		
        if pEffectSet ~= nil then
            local unitlandPos = pNPCUnit:GetNearestUserLandPos()
			pNPCUnit:SetVector_LUA( 0, unitlandPos )
			local hEffect = pEffectSet:PlayEffectSetWithCustomPos_LUA( "EffectSet_Giant_Spriggan_Alert", pNPCUnit, unitlandPos, pNPCUnit:GetRotateDegree() )
		end
	end
	
	if pNPCUnit:AnimEventTimer_LUA( 2.0 ) then
		local pEffectSet = pX2Game:GetEffectSet()
		
        if pEffectSet ~= nil then
			local unitPos = pNPCUnit:GetVector_LUA( 0 )
	        local hEffect = pEffectSet:PlayEffectSetWithCustomPos_LUA( "EffectSet_Spriggan_Big_Magic_Attack_B", pNPCUnit, unitPos, pNPCUnit:GetRotateDegree() )
		end
	end	
end
--------------------------------------------------------------------------
GIANT_SPRIGAN_DYING = 
{
	ANIM_NAME	= "Dying",
	PLAY_TYPE	= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION	= FALSE,
	LAND_CONNECT	= TRUE,

	INVINCIBLE	= { 0, 100, },
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,
    	
	DYING_END	= TRUE,
	
	IMMADIATE_PACKET_SEND	= TRUE,
}
--------------------------------------------------------------------------