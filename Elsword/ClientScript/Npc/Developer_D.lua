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
	--MOTION_FILE_NAME	= "Motion_DEVELOPER_D.x",
	--MOTION_CHANGE_TEX_XET	= "Mesh_Nui_Rainbow_D.xet",
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
	--{ STATE_NAME = "DEVELOPER_D_WAITSTART",					LUA_FRAME_MOVE_FUNC = "DEVELOPER_D_WAITSTART_FRAME_MOVE",
	--														LUA_STATE_END_FUNC = "DEVELOPER_D_WAITSTART_STATE_END" 	},
	
	{ STATE_NAME = "DEVELOPER_D_WAITSTART",		LUA_FRAME_MOVE_FUNC = "DEVELOPER_D_WAITSTART_FRAME_MOVE",	},
	{ STATE_NAME = "DEVELOPER_D_WAIT",					LUA_STATE_END_FUNC = "DEVELOPER_D_WAIT_STATE_END",		},

	{ STATE_NAME = "DEVELOPER_D_WAITEND",					LUA_FRAME_MOVE_FUNC = "DEVELOPER_D_WAITEND_FRAME_MOVE",     },


	START_STATE					= "DEVELOPER_D_WAITSTART",
	--WAIT_STATE					= "DEVELOPER_D_WAITSTART",
	WAIT_STATE					= "DEVELOPER_D_WAIT",


	SMALL_DAMAGE_LAND_FRONT		= "DEVELOPER_D_WAITEND",
	SMALL_DAMAGE_LAND_BACK		= "DEVELOPER_D_WAITEND",
	BIG_DAMAGE_LAND_FRONT		= "DEVELOPER_D_WAITEND",
	BIG_DAMAGE_LAND_BACK		= "DEVELOPER_D_WAITEND",
	DOWN_DAMAGE_LAND_FRONT		= "DEVELOPER_D_WAITEND",
	DOWN_DAMAGE_LAND_BACK		= "DEVELOPER_D_WAITEND",
	FLY_DAMAGE_FRONT			= "DEVELOPER_D_WAITEND",
	FLY_DAMAGE_BACK				= "DEVELOPER_D_WAITEND",
	SMALL_DAMAGE_AIR			= "DEVELOPER_D_WAITEND",
	BIG_DAMAGE_AIR				= "DEVELOPER_D_WAITEND",
	DOWN_DAMAGE_AIR				= "DEVELOPER_D_WAITEND",
	UP_DAMAGE					= "DEVELOPER_D_WAITEND",
	DAMAGE_REVENGE				= "DEVELOPER_D_WAITEND",

	DYING_LAND_FRONT			= "DEVELOPER_D_WAITEND",
	DYING_LAND_BACK				= "DEVELOPER_D_WAITEND",
	DYING_SKY					= "DEVELOPER_D_WAITEND",

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





DEVELOPER_D_WAITSTART =
{
	ANIM_NAME					= "WaitStart",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	ANIM_SPEED					= 1,
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
		--{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"DEVELOPER_D_WAITEND",								},
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"DEVELOPER_D_WAIT",								},
	},

	EFFECT_SET_LIST =
	{
		"EffectSet_DEVELOPER_D", 0,
	},
	
}

DEVELOPER_D_WAITEND =
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

	DYING_END					= TRUE,
	DYING_SPEED					= 1.01,

	--EVENT_PROCESS =
	--{
	--	{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"DEVELOPER_D_DIE",								},
	--},
}

DEVELOPER_D_WAIT = 
{
	--ANIM_NAME					= "Wait",
	ANIM_NAME					= "Wait_04",
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
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"DEVELOPER_D_WAITEND",								},	
	},
	
	TALK_BOX =
	{
		--{ RATE = 100, MESSAGE = STR_ID_11444 },
		{ RATE = 100, MESSAGE = STR_ID_17504 },
	},
}



----------------------------------------------------------
--function DEVELOPER_D_WAITSTART_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
function DEVELOPER_D_WAIT_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:SetNowHP_LUA(0)

end




----------------------------------------------------------
function DEVELOPER_D_WAITSTART_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

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


function DEVELOPER_D_WAITEND_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
-- Fade Start

-- 텔레포트 (사라질때)
	 if pNPCUnit:AnimEventTimer_LUA(1.2) then
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

    if pNPCUnit:AnimEventTimer_LUA(1.3) then
        pNPCUnit:SetUnitFadeStart(RENDER_TYPE["RT_CARTOON_FADE"], 1.0, 1.0, 1.0, 1.0, FALSE, TRUE)
        pNPCUnit:SetUnitFadeMove(1.3, 0.0, 0.0, 0.0, -0.04)
    end

    if pNPCUnit:AnimEventTimer_LUA(1.8) then
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
