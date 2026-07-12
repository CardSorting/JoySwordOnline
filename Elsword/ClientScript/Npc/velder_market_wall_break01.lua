-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	UNIT_WIDTH		= 50.0,
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
	
	 "BrickWall_Break1.ogg",
	 
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "VELDER_MARKET_WALL_BREAK1.X",
	ADD_ROTATE_Y			= -180.0,
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
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
		
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	HEAD_BONE_NAME		= "Bip01",
		
	SHOW_ON_MINIMAP		= FALSE,
}

INIT_STATE = 
{
	{ STATE_NAME = "VELDER_MARKET_WALL_BREAK01_WAIT",						},
	{ STATE_NAME = "VELDER_MARKET_WALL_BREAK01_BROKEN",			LUA_FRAME_MOVE_FUNC = "VELDER_MARKET_WALL_BREAK01_BROKEN_FRAME_MOVE_FUNC",			},

	START_STATE					= "VELDER_MARKET_WALL_BREAK01_WAIT",
	
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
	DAMAGE_REVENGE				= "VELDER_MARKET_WALL_BREAK01_WAIT",
	
	DYING_LAND_FRONT			= "",
	DYING_LAND_BACK				= "",
	DYING_SKY					= "",

	REVENGE_ATTACK				= "VELDER_MARKET_WALL_BREAK01_WAIT",	
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


VELDER_MARKET_WALL_BREAK01_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	INVINCIBLE					= { 0, 9999, },
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],			"VELDER_MARKET_WALL_BREAK01_BROKEN",				"CF_VELDER_MARKET_WALL_BREAK01_BROKEN",	},
	},
}

VELDER_MARKET_WALL_BREAK01_BROKEN = 
{
	ANIM_NAME					= "Broken",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

	SOUND_PLAY0 = 	{ 0.01,  "BrickWall_Break1.ogg" },
	
	SPEED_X						= 0,
	SPEED_Y						= 0,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	ALLOW_DIR_CHANGE			= FALSE,
	VIEW_TARGET					= FALSE,
	
	INVINCIBLE					= { 0, 9999, },
}




function CF_VELDER_MARKET_WALL_BREAK01_BROKEN( pKTDXApp, pX2Game, pNPCUnit )
	
	local vNearestUserPos 	= pNPCUnit:GetNearestUserPos()
	local dist 				= pNPCUnit:GetXDistanceFrom( vNearestUserPos.x )
	
	if dist < 2750 then
		return true
	end

	return false
	
end



function VELDER_MARKET_WALL_BREAK01_BROKEN_FRAME_MOVE_FUNC( pKTDXApp, pX2Game, pNPCUnit )
	

	
	----- CAMERA 
    
    if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
        
        rotCamera = 0
        heightCamera = 79.118
        distanceCamera = 920
		
		pos = pNPCUnit:GetPos()

		pos.x = 290
		pos.y = 1237.952
		pos.z = 1013.571


		velo_x = 53
		
		velo_y = 20

		velo_rot = -0.272
		velo_distance = 35
		
		pNPCUnit:SetFocusCamera(true)   
	
    end        
    
    if pNPCUnit:GetNowAnimationTime() < 0.02 then 


    elseif pNPCUnit:GetNowAnimTime_LUA() <= 2.3 then   
    
		pos.x = pos.x + velo_x
		pos.y = pos.y + velo_y
		
	    rotCamera = rotCamera + velo_rot 	    
	    heightCamera = heightCamera - velo_y 
	    distanceCamera = distanceCamera + velo_distance
		
	    velo_x = velo_x - 0.54
	    velo_y = velo_y - 0.25
	    velo_rot = velo_rot + 0.0025
	    velo_distance = velo_distance - 0.3

		if velo_x <= 0 then
			velo_x = 0
		end
		
		if velo_y <= 0 then
			velo_y = 0
		end
	
		if velo_distance <= 0 then
			velo_distance = 0
		end

		if velo_rot >= 0 then
			velo_rot = 0
		end

   	    camera = pX2Game:GetX2Camera()	
		camera:PartsLookDirectCamera_LUA( pNPCUnit, pos, D3DXVECTOR3( distanceCamera, heightCamera, rotCamera ), D3DXVECTOR2( 0,0 ) )

	end
    
    
	if pNPCUnit:AnimEventTimer_LUA( 2.31 ) then
        pNPCUnit:SetFocusCamera(false)        
    end

	
end