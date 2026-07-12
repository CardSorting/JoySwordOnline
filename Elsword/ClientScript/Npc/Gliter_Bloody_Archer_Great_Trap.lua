-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	UNIT_WIDTH		= 120.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	UNIT_SCALE      = 1.15,
}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
	},
	
	READY_SOUND = 
	{
	 
    	"GlitterVoice_DeathRoar.ogg",
        "Gliter_Archer_Great_Trap_ArrowShot.ogg",
		
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "NUI_GLITER_ARCHER_GREAT.x",
	MOTION_CHANGE_TEX_XET	= "NUI_BLOODY_GLITER_GREAT.xet",
	MOTION_ANI_TEX_XET		= "NUI_BLOODY_GLITER_GREAT.xet",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 400,
	RUN_SPEED			= 600,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 2300,
}


INIT_COMPONENT = 
{
	MAX_HP				= 5000,
	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 130,
	
	
	SHADOW_SIZE			= 200,
	SHADOW_FILE_NAME	= "shadow.dds",
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	
	FALL_DOWN			= TRUE,
	
	SHOW_ON_MINIMAP		= FALSE,

	WEAPON0 = 
	{
		WEAPON_FILE_NAME	= "NUI_GLITER_GREAT_Bow.X",
		WEAPON_BONE_NAME	= "Dummy1_Rhand",
			
		USE_SLASH_TRACE		= FALSE,
	},
	
}

INIT_STATE = 
{
	{ STATE_NAME = "GLITER_ARCHER_GREAT_TRAP_SIEGE_WAIT_A",						},---LUA_STATE_START_FUNC = "GLITER_ARCHER_GREAT_SIEGE_WAIT_A_STATE_START",			},
	
	{ STATE_NAME = "GLITER_ARCHER_GREAT_TRAP_DAMAGE_DOWN",						},---LUA_STATE_START_FUNC = "GLITER_ARCHER_GREAT_SIEGE_WAIT_A_STATE_START",			},
	{ STATE_NAME = "GLITER_ARCHER_GREAT_TRAP_SIEGE_ATTACK_A",					STATE_COOL_TIME = 8.0, LUA_FRAME_MOVE_FUNC = "GLITER_ARCHER_GREAT_TRAP_SIEGE_ATTACK_A_FRAME_MOVE"			},

	START_STATE					= "GLITER_ARCHER_GREAT_TRAP_SIEGE_WAIT_A",		
	WAIT_STATE					= "GLITER_ARCHER_GREAT_TRAP_SIEGE_WAIT_A",
	
	SMALL_DAMAGE_LAND_FRONT		= "GLITER_ARCHER_GREAT_TRAP_SIEGE_WAIT_A",
	SMALL_DAMAGE_LAND_BACK		= "GLITER_ARCHER_GREAT_TRAP_SIEGE_WAIT_A",
	BIG_DAMAGE_LAND_FRONT		= "GLITER_ARCHER_GREAT_TRAP_SIEGE_WAIT_A",
	BIG_DAMAGE_LAND_BACK		= "GLITER_ARCHER_GREAT_TRAP_SIEGE_WAIT_A",
	DOWN_DAMAGE_LAND_FRONT		= "GLITER_ARCHER_GREAT_TRAP_SIEGE_WAIT_A",
	DOWN_DAMAGE_LAND_BACK		= "GLITER_ARCHER_GREAT_TRAP_SIEGE_WAIT_A",
	FLY_DAMAGE_FRONT			= "GLITER_ARCHER_GREAT_TRAP_SIEGE_WAIT_A",
	FLY_DAMAGE_BACK				= "GLITER_ARCHER_GREAT_TRAP_SIEGE_WAIT_A",
	SMALL_DAMAGE_AIR			= "GLITER_ARCHER_GREAT_TRAP_SIEGE_WAIT_A",	
	BIG_DAMAGE_AIR				= "GLITER_ARCHER_GREAT_TRAP_SIEGE_WAIT_A",
	DOWN_DAMAGE_AIR				= "GLITER_ARCHER_GREAT_TRAP_SIEGE_WAIT_A",
	DOWN_DAMAGE_AIR_LANDING		= "GLITER_ARCHER_GREAT_TRAP_SIEGE_WAIT_A",
	UP_DAMAGE					= "GLITER_ARCHER_GREAT_TRAP_SIEGE_WAIT_A",
	DAMAGE_REVENGE				= "",
	
	DYING_LAND_FRONT			= "GLITER_ARCHER_GREAT_TRAP_DAMAGE_DOWN",
	DYING_LAND_BACK				= "GLITER_ARCHER_GREAT_TRAP_DAMAGE_DOWN",
	DYING_SKY					= "GLITER_ARCHER_GREAT_TRAP_DAMAGE_DOWN",

	REVENGE_ATTACK				= "",	
}

INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 3,		-- sec
		TARGET_NEAR_RANGE			= 5000,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 9000,		-- cm
		TARGET_LOST_RANGE			= 9000,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --80,		-- %
		ATTACK_TARGET_RATE			= 100, -- 80,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, -- 80,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 600,
		DEST_GAP			= 800,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 900,
		
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
		ESCAPE_GAP			= 800,	-- 이 거리 보다 멀어지면 도망 성공
		
		WALK_INTERVAL		= 1.5,	-- 초
		NEAR_WALK_RATE		= 100,   --  10,
		FAR_WALK_RATE		= 100,   -- 30,
		
		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 100, -- 30,
		UP_DOWN_RATE		= 30,
		DOWN_JUMP_RATE		= 100,    --  30,
		DOWN_DOWN_RATE		= 30,
	},
}

GLITER_ARCHER_GREAT_TRAP_SIEGE_WAIT_A = 
{
	ANIM_NAME					= "Siege3_Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= FALSE,	
	
	SPEED_X						= 0,
	SPEED_Y						= 0,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	FALL_DOWN					= FALSE,
	
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_FUNCTION"],		"GLITER_ARCHER_GREAT_TRAP_SIEGE_ATTACK_A",			"CF_GLITER_ARCHER_GREAT_TRAP_SIEGE_ATTACK_A",	},
		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GLITER_ARCHER_GREAT_TRAP_SIEGE_WAIT_A",			},
	},
}

GLITER_ARCHER_GREAT_TRAP_SIEGE_ATTACK_A = 
{
	ANIM_NAME					= "Siege3_Attack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	ANIM_SPEED			= 1.0,
	
	SPEED_X						= 0,
	SPEED_Y						= 0,	

    SOUND_PLAY0			= { 2.058, "Gliter_Archer_Great_Trap_ArrowShot.ogg", 100, false, 40000, },

	
	
	VIEW_TARGET					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	FALL_DOWN					= FALSE,
	
			
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"GLITER_ARCHER_GREAT_TRAP_SIEGE_WAIT_A",					},
	},
	
}
	
GLITER_ARCHER_GREAT_TRAP_DAMAGE_DOWN = 
{
	ANIM_NAME					= "Siege3_DamageDown",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	INVINCIBLE					= { 0, 100, }, 		
	
	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,

    SOUND_PLAY0			= { 0.250, "GlitterVoice_DeathRoar.ogg" },
	
	DYING_END					= TRUE,	
	
	IMMADIATE_PACKET_SEND		= TRUE,
}

--------------------------------------------------------------------
--------------------------------------------------------------------

function CF_GLITER_ARCHER_GREAT_TRAP_SIEGE_ATTACK_A( pKTDXApp, pX2Game, pNPCUnit )
	pUser = pNPCUnit:GetTargetUser()
	
	if pUser ~= nil then
		return true
	end
	return false
end

function GLITER_ARCHER_GREAT_TRAP_SIEGE_ATTACK_A_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )


	

	if pNPCUnit:AnimEventTimer_LUA( 1.8 ) then
	
		UserPos = pNPCUnit:GetNearestUserPos()

		FlightDistance = pX2Game:GetDist_LUA(UserPos, pNPCUnit:GetPos())
		
		FlightTime = FlightDistance / 2200.0 -- 화살의 x축 등속도 
		
		--FlightTime = 1.5 + FlightTime / 1.7 
	

		targetpos = UserPos

		randX = ( pNPCUnit:GetRandVal(0) % 100 ) * 4 - 200

		randY = ( pNPCUnit:GetRandVal(1) % 100 ) * 4 - 200
		
		randZ = ( pNPCUnit:GetRandVal(2) % 100 ) * 4 - 200

		randT = pNPCUnit:GetRandVal(3) % 5
		
		targetpos.x = targetpos.x + randX
		targetpos.y = targetpos.y + randY
		--targetpos.z = targetpos.z + randZ

		randT = randT / 10
	
		pDamageEffect = pX2Game:GetDamageEffect()
		pos = pNPCUnit:GetLandPosition_LUA()
		pDamageEffect:CreateInstanceParabolic_LUA( pNPCUnit, "ARROW_CROSSBOW_GLITER_TRAP", pNPCUnit:GetBonePos_LUA( "Dummy1_Rhand" ), targetpos, D3DXVECTOR3(0, -1100.0, 0), FlightTime + randT, 10.0 )	
	end
	
	
	if pNPCUnit:AnimEventTimer_LUA( 2.0 ) then
	
		UserPos = pNPCUnit:GetNearestUserPos()

		FlightDistance = pX2Game:GetDist_LUA(UserPos, pNPCUnit:GetPos())
		
		FlightTime = FlightDistance / 2200.0 -- 화살의 x축 등속도 
		
		--FlightTime = 1.5 + FlightTime / 1.7 
			
	
		targetpos = UserPos

		randX = ( pNPCUnit:GetRandVal(4) % 100 ) * 4 - 200

		randY = ( pNPCUnit:GetRandVal(5) % 100 ) * 4 - 200
		
		randZ = ( pNPCUnit:GetRandVal(6) % 100 ) * 4 - 200

		randT = pNPCUnit:GetRandVal(7) % 5
		
		targetpos.x = targetpos.x + randX
		targetpos.y = targetpos.y + randY
		--targetpos.z = targetpos.z + randZ

		randT = randT / 10

	
		pDamageEffect = pX2Game:GetDamageEffect()
		pos = pNPCUnit:GetLandPosition_LUA()
		pDamageEffect:CreateInstanceParabolic_LUA( pNPCUnit, "ARROW_CROSSBOW_GLITER_TRAP", pNPCUnit:GetBonePos_LUA( "Dummy1_Rhand" ), targetpos, D3DXVECTOR3(0, -1100.0, 0), FlightTime + randT, 10.0 )	
	end
	
	
	if pNPCUnit:AnimEventTimer_LUA( 2.2 ) then
	
		UserPos = pNPCUnit:GetNearestUserPos()

		FlightDistance = pX2Game:GetDist_LUA(UserPos, pNPCUnit:GetPos())
		
		FlightTime = FlightDistance / 2200.0 -- 화살의 x축 등속도 
		
		--FlightTime = 1.5 + FlightTime / 1.7 	
	
		targetpos = UserPos

		randX = ( pNPCUnit:GetRandVal(8) % 100 ) * 4 - 200

		randY = ( pNPCUnit:GetRandVal(9) % 100 ) * 4 - 200
		
		randZ = ( pNPCUnit:GetRandVal(10) % 100 ) * 4 - 200

		randT = pNPCUnit:GetRandVal(11) % 5
		
		targetpos.x = targetpos.x + randX
		targetpos.y = targetpos.y + randY
		--targetpos.z = targetpos.z + randZ

		randT = randT / 10

		pDamageEffect = pX2Game:GetDamageEffect()
		pos = pNPCUnit:GetLandPosition_LUA()
		pDamageEffect:CreateInstanceParabolic_LUA( pNPCUnit, "ARROW_CROSSBOW_GLITER_TRAP", pNPCUnit:GetBonePos_LUA( "Dummy1_Rhand" ), targetpos, D3DXVECTOR3(0, -1100.0, 0), FlightTime + randT, 10.0 )	
	end				
	


end

--[[
function GLITER_ARCHER_GREAT_DAMAGE_DOWN_FRONT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.3 ) then
		pNPCUnit:PlaySound_LUA( "Down.ogg" )
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DownSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(7,-1) )
	end

end

function GLITER_ARCHER_GREAT_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	
	pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	GetMinorParticle = pX2Game:GetMinorParticle()
	
	pSeq = GetMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DieLight",		pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	if pSeq ~= nil then
	
		pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		pNPCUnit:SetDieSeq( pSeq:GetHandle() )
	
	end
	pNPCUnit:PlaySound_LUA( "DieLight.ogg" )
	
end


function GLITER_ARCHER_GREAT_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 2.0 ) then
		pDamageEffect = pX2Game:GetDamageEffect()
		pos = pNPCUnit:GetLandPosition_LUA()		
		pDamageEffect:CreateInstance_LUA( pNPCUnit, "ARROW_CROSSBOW_GLITER_TRAP", pNPCUnit:GetBonePos_LUA( "Dummy1_Rhand" ), pos.y )	
	end	

end
--]]