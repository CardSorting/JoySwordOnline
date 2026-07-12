-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

INIT_SYSTEM = 
{
	UNIT_WIDTH		= 330.0,
	UNIT_HEIGHT		= 375.0,	
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	RENDER_PARAM	= RENDER_TYPE["RT_REAL_COLOR"],
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	},
	
	READY_SOUND = 
	{
		"Dark_Nephilim_WaitStart.ogg",
	},
	
	READY_XSKIN_MESH = 
	{
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Motion_DARK_NEPHILIM_DP.x",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 700,
	RUN_SPEED			= 2000,
	JUMP_SPEED			= 2000,
	DASH_JUMP_SPEED		= 2600,
}


INIT_COMPONENT = 
{
	MP_CHANGE_RATE			= 1,
	MP_CHARGE_RATE			= 130,
	
	HITTED_TYPE				= HITTED_TYPE["HTD_MEAT"],	
	NOT_CULL				= TRUE,
	
	DAMAGE_DOWN			= FALSE,
	DAMAGE_DOWN         = FALSE,
    DIE_FLY					= 0,		

	FOCUS_CAMERA_FORCE	= TRUE,	
	SHOW_ON_MINIMAP		= FALSE,
}

INIT_STATE = 
{
	{ STATE_NAME = "DARK_NEPHILIM_DP_WAIT_START",				LUA_STATE_START_FUNC = "DARK_NEPHILIM_DP_WAIT_START_START_FUNC",
															LUA_STATE_END_FUNC = "DARK_NEPHILIM_DP_WAIT_START_END_FUNC",
															LUA_CAMERA_MOVE_FUNC= "DARK_NEPHILIM_DP_WAIT_START_CAMERA_MOVE",			},
	
	{ STATE_NAME = "DARK_NEPHILIM_DP_DYING",					},
	
	
	
		
	START_STATE					= "DARK_NEPHILIM_DP_WAIT_START",
	--WAIT_STATE					= "DARK_NEPHILIM_DP_WAIT_START",
	
	SMALL_DAMAGE_LAND_FRONT		= "",
	SMALL_DAMAGE_LAND_BACK		= "",
	SMALL_DAMAGE_AIR			= "",	
	
	BIG_DAMAGE_LAND_FRONT		= "",
	BIG_DAMAGE_LAND_BACK		= "",
	BIG_DAMAGE_AIR				= "",
	
	DOWN_DAMAGE_LAND_FRONT		= "",
	DOWN_DAMAGE_LAND_BACK		= "",
	DOWN_DAMAGE_AIR				= "",
	
	UP_DAMAGE					= "",
	
	FLY_DAMAGE_FRONT			= "",
	FLY_DAMAGE_BACK				= "",
	
	REVENGE_ATTACK				= "",	
	DAMAGE_REVENGE				= "",
	
	DYING_LAND_FRONT			= "DARK_NEPHILIM_DP_DYING",
	DYING_LAND_BACK				= "DARK_NEPHILIM_DP_DYING",
	DYING_SKY					= "DARK_NEPHILIM_DP_DYING",
		
	DOWN_DAMAGE_AIR_LANDING		= "",
}

INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_FAR_FIRST"],
		TARGET_INTERVAL				= 1,		
		TARGET_NEAR_RANGE			= 9000,		
		TARGET_RANGE				= 9000,		
		TARGET_LOST_RANGE			= 10000,		
		TARGET_SUCCESS_RATE			= 100,		
		ATTACK_TARGET_RATE			= 50,		
		PRESERVE_LAST_TARGET_RATE	= 40,		
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 700,
		DEST_GAP			= 800,
		MOVE_GAP			= 900,
		
		DIR_CHANGE_INTERVAL = 0.7,
		
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
		PATROL_BEGIN_RATE		= 100, --50,		
		PATROL_RANGE			= 200,
		PATROL_COOL_TIME		= 2,
		ONLY_THIS_LINE_GROUP	= TRUE,
	},
}

DARK_NEPHILIM_DP_WAIT_START = 
{
	ANIM_NAME					= "WaitStart",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE"],
	TRANSITION					= TRUE,
	LAND_CONNECT				= FALSE,
	ADD_ROTATE_Y				= 180,
	ANIM_WAIT_TIME				= 5.0,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
	SOUND_PLAY0					= { 0.3, "Dark_Nephilim_WaitStart.ogg", 100, FALSE, -1.0, FALSE },
	
	INVINCIBLE					= { 0, 100, },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],		"DARK_NEPHILIM_DP_DYING",				},
	},
}

DARK_NEPHILIM_DP_DYING = 
{
	ANIM_NAME					= "WaitStart",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

----------- condition function----------------------------------------------------------
----------------------------------------------------------------------------------------

----------- state function----------------------------------------------------------
----------------------------------------------------------------------------------------
function DARK_NEPHILIM_DP_WAIT_START_START_FUNC( pKTDXApp, pX2Game, pNPCUnit )
	if pX2Game:GetMyUnit() ~= nil then
		pX2Game:GetMyUnit():SetCanNotInputTime_LUA( 13 )	
	end 
	
	 local vPos = pNPCUnit:GetPos()
	 vPos.x = 0
	 vPos.y = 0
	 vPos.z = 0
	
	pNPCUnit:SetPositionForce( vPos )
end

function DARK_NEPHILIM_DP_WAIT_START_CAMERA_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
	if pNPCUnit:GetNowAnimTime_LUA() < 0.1 then
	
		local pos = pNPCUnit:GetBonePos_LUA( "Bip01_Head" )	
		pos.x = pos.x + 500
		local camera = pX2Game:GetX2Camera()
		camera:PartsLookDirectCamera_LUA( pNPCUnit, pos, D3DXVECTOR3( 2000, 480, 25 ), D3DXVECTOR2( 3800, 0 ) )
	
	elseif pNPCUnit:AnimEventTimer_LUA( 0.13 ) then
		
		local pos = pNPCUnit:GetBonePos_LUA( "Bip01_Head" )	
		local camera = pX2Game:GetX2Camera()
		camera:PartsLookTrackingCamera_LUA( pNPCUnit, pos, D3DXVECTOR3( 2000, 480, 25 ), D3DXVECTOR3( 2800, 0, 8 ) )
	
	elseif pNPCUnit:AnimEventTimer_LUA( 3.0 ) then
		
		pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 40.0, 2.0 )
		
	elseif pNPCUnit:AnimEventTimer_LUA( 4.3 ) then
		
		local pos = pNPCUnit:GetBonePos_LUA( "Bip01_Head" )	
		local camera = pX2Game:GetX2Camera()
		camera:PartsLookTrackingCamera_LUA( pNPCUnit, pos, D3DXVECTOR3( 2300, -400, -30 ), D3DXVECTOR3( -2300, 0, 0.5 ) )
				
	elseif pNPCUnit:AnimEventTimer_LUA( 4.83 ) then
		
		local pos = pNPCUnit:GetBonePos_LUA( "Bip01_Head" )	
		pos.x = 5000
		--pos.y = pos.y - 3
		local camera = pX2Game:GetX2Camera()
		camera:PartsLookTrackingCamera_LUA( pNPCUnit, pos, D3DXVECTOR3( 500, 100, 5 ), D3DXVECTOR3( 1000, 0, 8 ) )
		
	elseif pNPCUnit:AnimEventTimer_LUA( 6.0 ) then
		
		local pos = pNPCUnit:GetBonePos_LUA( "Bip01_Head" )	
		pos.x = 5000
		local camera = pX2Game:GetX2Camera()
		
		camera:PartsLookTrackingCamera_LUA( pNPCUnit, pos, D3DXVECTOR3( 200, 50, 5 ), D3DXVECTOR3( 1500, 0, 3 ) )
	end
	
end

function DARK_NEPHILIM_DP_WAIT_START_END_FUNC( pKTDXApp, pX2Game, pNPCUnit )
	pNPCUnit:SetNowHP_LUA( 0.0 )
	pNPCUnit:SetFocusCamera( false )
	pNPCUnit:SetFocusCameraForce( false )
		
	local pBossNpc = pX2Game:GetNPCUnitByType( NPC_UNIT_ID["NUI_DARK_NEPHILIM"] )
	
	if pBossNpc ~= nil then
		pBossNpc:StateChange_LUA( "DARK_NEPHILIM_START" )
	end
	
	pNPCUnit:SetPositionForce( D3DXVECTOR3( 0.0, -5000, 0.0 ) )
	
end

----------- util function----------------------------------------------------------
----------------------------------------------------------------------------------------