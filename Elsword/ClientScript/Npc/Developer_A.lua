-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


-- fix!! 필요없는 상태들 정리하기
-- fix!! 이름 _Eve로 다 바꿔야함





INIT_SYSTEM = 
{
	UNIT_WIDTH		= 150.0,
	UNIT_HEIGHT		= 250.0,
	UNIT_SCALE		= 1.5,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
}

INIT_DEVICE = 
{
	READY_TEXTURE = 
	{		
		--"Dark_Smoke.dds",
		--"Steam_BP.tga",
	},
	
	READY_SOUND = 
	{
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
	--MOTION_FILE_NAME	= "Motion_DEVELOPER_A.x",
	MOTION_FILE_NAME	= "A_Pink_.x",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 700,
	RUN_SPEED			= 1200,
	JUMP_SPEED			= 2000,
	DASH_JUMP_SPEED		= 2500,
}

INIT_COMPONENT = 
{
	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 130,
	
	SHADOW_SIZE			= 200,
	SHADOW_FILE_NAME	= "shadow.dds",
	
	--SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	--SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	--SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	NOT_EXTRA_DAMAGE    = TRUE,
	
	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	FALL_DOWN			= FALSE,
    DIE_FLY             = 0,	    
}

INIT_STATE = 
{
	{ STATE_NAME = "DEVELOPER_A_WAITSTART",					LUA_FRAME_MOVE_FUNC = "DEVELOPER_A_WAITSTART_FRAME_MOVE", 	},

	{ STATE_NAME = "DEVELOPER_A_WAIT",						},
	
	{ STATE_NAME = "DEVELOPER_A_WAITEND",					LUA_STATE_START_FUNC = "DEVELOPER_A_WAITEND_STATE_START",	
	                                                        LUA_FRAME_MOVE_FUNC = "DEVELOPER_A_WAITEND_FRAME_MOVE",    
	                                                        LUA_STATE_END_FUNC = "DEVELOPER_A_WAITEND_STATE_END" },	
	{ STATE_NAME = "DEVELOPER_A_DIE",						},
		
	
	START_STATE					= "DEVELOPER_A_WAITSTART",
	WAIT_STATE					= "DEVELOPER_A_WAIT",
	
	
	SMALL_DAMAGE_LAND_FRONT		= "DEVELOPER_A_DIE",
	SMALL_DAMAGE_LAND_BACK		= "DEVELOPER_A_DIE",
	BIG_DAMAGE_LAND_FRONT		= "DEVELOPER_A_DIE",
	BIG_DAMAGE_LAND_BACK		= "DEVELOPER_A_DIE",
	DOWN_DAMAGE_LAND_FRONT		= "DEVELOPER_A_DIE",
	DOWN_DAMAGE_LAND_BACK		= "DEVELOPER_A_DIE",
	FLY_DAMAGE_FRONT			= "DEVELOPER_A_DIE",
	FLY_DAMAGE_BACK				= "DEVELOPER_A_DIE",
	SMALL_DAMAGE_AIR			= "DEVELOPER_A_DIE",	
	BIG_DAMAGE_AIR				= "DEVELOPER_A_DIE",
	DOWN_DAMAGE_AIR				= "DEVELOPER_A_DIE",
	UP_DAMAGE					= "DEVELOPER_A_DIE",
	DAMAGE_REVENGE				= "DEVELOPER_A_DIE",
	
	DYING_LAND_FRONT			= "DEVELOPER_A_DIE",
	DYING_LAND_BACK				= "DEVELOPER_A_DIE",
	DYING_SKY					= "DEVELOPER_A_DIE",

	REVENGE_ATTACK				= "",	
}


INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_NEAR_FIRST"],
		TARGET_INTERVAL				= 9999,		-- sec
		TARGET_NEAR_RANGE			= 0,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 0,		-- cm
		TARGET_LOST_RANGE			= 91000,		-- cm
		TARGET_SUCCESS_RATE			= 0,		-- %
		ATTACK_TARGET_RATE			= 0,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 0,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE = 
	{		
		DEST_GAP			= 100,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 310,
		
		DIR_CHANGE_INTERVAL = 9999,
		
		MOVE_SPLIT_RANGE	= 600,
		WALK_INTERVAL		= 2,
		NEAR_WALK_RATE		= 100,   --  90,
		FAR_WALK_RATE		= 100,   -- 70, 
		
		JUMP_INTERVAL		= 5,
		UP_JUMP_RATE		= 100, -- 10,
		UP_DOWN_RATE		= 10,
		DOWN_JUMP_RATE		= 100,    --  10,
		DOWN_DOWN_RATE		= 10,
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 0,		
		PATROL_RANGE			= 500,
		PATROL_COOL_TIME		= 1.5,
		ONLY_THIS_LINE_GROUP	= TRUE,
	},
}





DEVELOPER_A_WAITSTART = 
{
	ANIM_NAME					= "WaitStart",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	ANIM_SPEED					= 1.5,
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,	

	SPEED_X						= 0,
	SPEED_Y						= 0,
		
	RIGHT						= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	INVINCIBLE					= { 0, 100, }, 		
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"DEVELOPER_A_WAIT",								},	
	},
}

DEVELOPER_A_WAITEND = 
{	
	ANIM_NAME					= "WaitEnd",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	ANIM_SPEED					= 1.5,
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 	
		
	RIGHT						= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"DEVELOPER_A_DIE",								},	
	},
	
}


DEVELOPER_A_WAIT = 
{
	--ANIM_NAME					= "Wait",
	ANIM_NAME					= "Wait_01",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	RIGHT						= TRUE,
	
	--VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	INVINCIBLE					= { 0, 100, }, 		
		
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"DEVELOPER_A_WAITEND",								},	
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_DEVELOPER_A", 0,
	},
	
	TALK_BOX =
	{
		--{ RATE = 100, MESSAGE = STR_ID_11441 },
		{ RATE = 100, MESSAGE = STR_ID_17501 },
	},
}

DEVELOPER_A_DIE = 
{	
	SHOW						= FALSE,
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],	
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,

	INVINCIBLE					= { 0, 100, }, 	

	RIGHT						= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	DYING_END					= TRUE,
	DYING_SPEED					= 0.2,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	
}



----------------------------------------------------------
function DEVELOPER_A_WAITEND_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:SetNowHP_LUA(0)
	
end







----------------------------------------------------------
function DEVELOPER_A_WAITSTART_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
 
 -- Fade Start 
    if pNPCUnit:AnimEventTimer_LUA(0.001) then
        pNPCUnit:SetUnitFadeStart(RENDER_TYPE["RT_CARTOON_FADE_NONTEX"], 1.0, 1.0, 1.0, 0.0, TRUE, TRUE)
        pNPCUnit:SetUnitFadeMove(0.15, 0.0, 0.0, 0.0, 0.01)
    end  
    
	if pNPCUnit:AnimEventTimer_LUA( 0.08 ) then
		pNPCUnit:SetDamageData_LUA( "DAMAGE_DATA2" )
	end

    if pNPCUnit:AnimEventTimer_LUA(0.15) then
        pNPCUnit:SetUnitFadeStart(RENDER_TYPE["RT_CARTOON_FADE"], 1.0, 1.0, 1.0, 0.0, FALSE, TRUE)
        pNPCUnit:SetUnitFadeMove(0.1, 0.0, 0.0, 0.0, 0.02)        
    end
-- Fade End    

end


function DEVELOPER_A_WAITEND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

    -- 텔레포트 (사라질때) 
    pNPCUnit:PlaySound_LUA( "Nasod_Element_Teleport.ogg" )
    
    pos = pNPCUnit:GetPos()
    rotDegree 	= pNPCUnit:GetRotateDegree()
    pMinorXMeshPlayer = pX2Game:GetMinorXMeshPlayer()          
   
    rotDegree.y = 0
    
    if pMinorXMeshPlayer ~= nil then
        pMeshPlayer = pMinorXMeshPlayer:CreateInstance_LUA( "RespawnLanding01", pos, rotDegree, rotDegree, 14 )
        --if pMeshPlayer ~= nil then
        --    pMeshPlayer:SetManualSize(1.5, 1.5, 1.5)
        --end    
        pMeshPlayer = pMinorXMeshPlayer:CreateInstance_LUA( "RespawnLanding02", pos, rotDegree, rotDegree, 14 )
        --if pMeshPlayer ~= nil then
        --    pMeshPlayer:SetManualSize(1.5, 1.5, 1.5)
        --end
    end
end

function DEVELOPER_A_WAITEND_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
-- Fade Start    

    if pNPCUnit:AnimEventTimer_LUA(0.1) then
        pNPCUnit:SetUnitFadeStart(RENDER_TYPE["RT_CARTOON_FADE"], 1.0, 1.0, 1.0, 1.0, FALSE, TRUE)
        pNPCUnit:SetUnitFadeMove(1.3, 0.0, 0.0, 0.0, -0.04)
    end
    
    if pNPCUnit:AnimEventTimer_LUA(0.5) then
        pNPCUnit:SetUnitFadeStart(RENDER_TYPE["RT_CARTOON_FADE_NONTEX"], 1.0, 1.0, 1.0, 1.0, TRUE, TRUE)
        pNPCUnit:SetUnitFadeMove(0.3, 0.0, 0.0, 0.0, -0.1)
        pNPCUnit:SetUnitFadeScale(0.3, -0.1, 0.1, -0.1)
    end  

-- Fade End    
end








-- UTILITY FUNCTIONS ---------------------------------------
function MovePos( pos, dirvector, dist )
	
	pos.x = pos.x + dist * dirvector.x
	pos.y = pos.y + dist * dirvector.y
	pos.z = pos.z + dist * dirvector.z
	
	return pos
	
end
