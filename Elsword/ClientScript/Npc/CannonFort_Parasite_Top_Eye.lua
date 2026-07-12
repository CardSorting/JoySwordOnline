-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.





INIT_SYSTEM = 
{
	UNIT_WIDTH		= 500.0,
	UNIT_HEIGHT		= 0.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
}

                                                                                 
INIT_DEVICE = 
{
	READY_TEXTURE = 
	{		
	},
	
	READY_SOUND = 
	{
	   	   "CannonFort_Cacon_Attack.ogg",
    	   "CannonFort_Cacon_Open1.ogg",
    	   "CannonFort_Cacon_Open2.ogg",
    	   "CannonFort_Cacon_Close1.ogg",
    	   "CannonFort_Cacon_Close2.ogg",
           "CannonFort_Cacon_ReadyAttack.ogg",	
	       "CannonFort_Laser.ogg",
	
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
	MOTION_FILE_NAME		= "CanonFort_Parasite_SmallEye1.x",
}


INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 400,
	RUN_SPEED			= 600,
	JUMP_SPEED			= 1400,
	DASH_JUMP_SPEED		= 1600,
}


INIT_COMPONENT = 
{
	MP_CHANGE_RATE		= 1,
	MP_CHARGE_RATE		= 130,
	
	USE_SLASH_TRACE		= FALSE,
	
	--SHADOW_SIZE			= 200,
	--SHADOW_FILE_NAME	= "shadow.dds",
	
	SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	SMALL_HP_BAR_YELLOW = "Small_HP_bar_Yellow.TGA",
	
	--QUESTION_MARK_SEQ		= "QuestionMarkNPC",
	--EXCLAMATION_MARK_SEQ	= "ExclamationMarkNPC",
	----MIND_FLAG_HEIGHT		= 230,
	
	HYPER_MODE_COUNT	= 0,
	MAX_HYPER_MODE_TIME	= 30,
	

	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	
	FALL_DOWN			= FALSE,
	--DEFENCE_RATE		= 50,
	
	DAMAGE_DOWN         = FALSE,
	
	
	ENABLE_SELF_RESURRECTION		= TRUE,
	SELF_RESURRECTION_TIME			= 30,
	SELF_RESURRECTION_COUNT			= 999,
	SELF_RESURRECTION_HP_PERCENT	= 100,
	
	DIE_FLY             = 0,

}



INIT_STATE = 
{
	{ STATE_NAME = "CANNONFORT_PARASITE_TOP_EYE_START",							LUA_FRAME_MOVE_FUNC = "CANNONFORT_PARASITE_TOP_EYE_START_FRAME_MOVE",
																				LUA_STATE_END_FUNC = "CANNONFORT_PARASITE_TOP_EYE_START_STATE_END",				},
																				
	{ STATE_NAME = "CANNONFORT_PARASITE_TOP_EYE_WAIT",							},
	
	{ STATE_NAME = "CANNONFORT_PARASITE_TOP_EYE_OPEN",							},
	{ STATE_NAME = "CANNONFORT_PARASITE_TOP_EYE_OPEN_LASER",					},
	{ STATE_NAME = "CANNONFORT_PARASITE_TOP_EYE_CLOSE",							},

	{ STATE_NAME = "CANNONFORT_PARASITE_TOP_EYE_ATTACK",						LUA_FRAME_MOVE_FUNC = "CANNONFORT_PARASITE_TOP_EYE_ATTACK_FRAME_MOVE",	
																				LUA_STATE_END_FUNC = "CANNONFORT_PARASITE_TOP_EYE_ATTACK_STATE_END",			},
	
	
	{ STATE_NAME = "CANNONFORT_PARASITE_TOP_EYE_ATTACK_LASER",					LUA_FRAME_MOVE_FUNC = "CANNONFORT_PARASITE_TOP_EYE_ATTACK_LASER_FRAME_MOVE",	},
	
	
	--리액션 관련
	{ STATE_NAME = "CANNONFORT_PARASITE_TOP_EYE_DAMAGE_SMALL",					LUA_FRAME_MOVE_FUNC = "CANNONFORT_PARASITE_TOP_EYE_DAMAGE_SMALL_FRAME_MOVE"		},
	
	{ STATE_NAME = "CANNONFORT_PARASITE_TOP_EYE_DYING_LAND_FRONT",				LUA_STATE_START_FUNC= "CANNONFORT_PARASITE_TOP_EYE_DYING_LAND_STATE_START",		},
	
	
	
	START_STATE					= "CANNONFORT_PARASITE_TOP_EYE_START",
	WAIT_STATE					= "CANNONFORT_PARASITE_TOP_EYE_WAIT",
	REBIRTH_STATE				= "CANNONFORT_PARASITE_TOP_EYE_WAIT",
	
	
	SMALL_DAMAGE_LAND_FRONT		= "CANNONFORT_PARASITE_TOP_EYE_DAMAGE_SMALL",
	SMALL_DAMAGE_LAND_BACK		= "CANNONFORT_PARASITE_TOP_EYE_DAMAGE_SMALL",
	BIG_DAMAGE_LAND_FRONT		= "CANNONFORT_PARASITE_TOP_EYE_DAMAGE_SMALL",
	BIG_DAMAGE_LAND_BACK		= "CANNONFORT_PARASITE_TOP_EYE_DAMAGE_SMALL",
	DOWN_DAMAGE_LAND_FRONT		= "CANNONFORT_PARASITE_TOP_EYE_DAMAGE_SMALL",
	DOWN_DAMAGE_LAND_BACK		= "CANNONFORT_PARASITE_TOP_EYE_DAMAGE_SMALL",
	FLY_DAMAGE_FRONT			= "CANNONFORT_PARASITE_TOP_EYE_DAMAGE_SMALL",
	FLY_DAMAGE_BACK				= "CANNONFORT_PARASITE_TOP_EYE_DAMAGE_SMALL",
	SMALL_DAMAGE_AIR			= "CANNONFORT_PARASITE_TOP_EYE_DAMAGE_SMALL",	
	BIG_DAMAGE_AIR				= "CANNONFORT_PARASITE_TOP_EYE_DAMAGE_SMALL",
	DOWN_DAMAGE_AIR				= "CANNONFORT_PARASITE_TOP_EYE_DAMAGE_SMALL",
	UP_DAMAGE					= "CANNONFORT_PARASITE_TOP_EYE_DAMAGE_SMALL",
	DAMAGE_REVENGE				= "CANNONFORT_PARASITE_TOP_EYE_DAMAGE_SMALL",
	
	DYING_LAND_FRONT			= "CANNONFORT_PARASITE_TOP_EYE_DYING_LAND_FRONT",
	DYING_LAND_BACK				= "CANNONFORT_PARASITE_TOP_EYE_DYING_LAND_FRONT",
	DYING_SKY					= "CANNONFORT_PARASITE_TOP_EYE_DYING_LAND_FRONT",

	REVENGE_ATTACK				= "",	
}



INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_LOW_HP_FIRST"],
		TARGET_INTERVAL				= 1,		-- sec
		TARGET_NEAR_RANGE			= 150,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 800,		-- cm
		TARGET_LOST_RANGE			= 1200,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --50,		-- %
		ATTACK_TARGET_RATE			= 100, -- 30,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 100, -- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
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
		
		LINE_END_RANGE		= 80,	-- cm
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 0,		
	},
}


CANNONFORT_PARASITE_TOP_EYE_START = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	IMMADIATE_PACKET_SEND		= TRUE,	
	
	NEVER_MOVE					= TRUE,
			
	SHOW						= FALSE,
	INVINCIBLE					= { 0, 9999, },
	SUPER_ARMOR					= TRUE,
	
		
	EVENT_PROCESS = 
	{		
		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"CANNONFORT_PARASITE_TOP_EYE_WAIT",		"CT_CANNONFORT_PARASITE_TOP_EYE_WAIT"				},
	},
	
	CT_CANNONFORT_PARASITE_TOP_EYE_WAIT = 
	{
		STATE_TIME_OVER			= 8,
	},
}



CANNONFORT_PARASITE_TOP_EYE_WAIT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION					= TRUE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,	
	
	NEVER_MOVE					= TRUE,
				
	SHOW						= FALSE,
	INVINCIBLE					= { 0, 9999, },
	SUPER_ARMOR					= TRUE,

	
	IMMADIATE_PACKET_SEND		= TRUE,
	
}







CANNONFORT_PARASITE_TOP_EYE_OPEN =
{
	ANIM_NAME					= "Open",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.172, "CannonFort_Cacon_Open1.ogg" },
    SOUND_PLAY1			= { 0.282, "CannonFort_Cacon_Open2.ogg" },
    SOUND_PLAY2			= { 0.429, "CannonFort_Cacon_ReadyAttack.ogg" },

	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
		
	SHOW						= TRUE,
	SUPER_ARMOR					= TRUE,
	
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CANNONFORT_PARASITE_TOP_EYE_ATTACK",												},	
	},
}


CANNONFORT_PARASITE_TOP_EYE_ATTACK = 
{
	ANIM_NAME					= "Attack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,


	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	
	SUPER_ARMOR					= TRUE,
	
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CANNONFORT_PARASITE_TOP_EYE_CLOSE",												},	
	},
	
}



CANNONFORT_PARASITE_TOP_EYE_CLOSE =
{
	ANIM_NAME					= "Close",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.141, "CannonFort_Cacon_Close1.ogg" },
    SOUND_PLAY1			= { 0.367, "CannonFort_Cacon_Close2.ogg" },

	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	
	SUPER_ARMOR					= TRUE,
	
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CANNONFORT_PARASITE_TOP_EYE_WAIT",												},	
	},
}





CANNONFORT_PARASITE_TOP_EYE_OPEN_LASER =
{
	ANIM_NAME					= "Open",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

    SOUND_PLAY0			= { 0.172, "CannonFort_Cacon_Open1.ogg" },
    SOUND_PLAY1			= { 0.282, "CannonFort_Cacon_Open2.ogg" },
    SOUND_PLAY2			= { 0.429, "CannonFort_Cacon_ReadyAttack.ogg" },

	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
		
	SHOW						= TRUE,
	SUPER_ARMOR					= TRUE,
	
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CANNONFORT_PARASITE_TOP_EYE_ATTACK_LASER",												},	
	},
}





CANNONFORT_PARASITE_TOP_EYE_ATTACK_LASER = 
{

	ANIM_NAME					= "Attack",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,

	SUPER_ARMOR					= TRUE,
	
	IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE					= TRUE,
	
	EVENT_PROCESS = 
	{	
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CANNONFORT_PARASITE_TOP_EYE_CLOSE",									},	
	},
	
}


------------------------------------------------------------------------------
function CANNONFORT_PARASITE_TOP_EYE_ATTACK_LASER_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	pX2Game:SetWorldColor_LUA( D3DXCOLOR(0.2,0.2,0.2,1) )

	if pNPCUnit:AnimEventTimer_LUA( 0.01 ) then
	
		pNPCUnit:PlaySound_LUA( "Energy.ogg" )
		bonePos = pNPCUnit:GetBonePos_LUA("Dummy1_SmallEye1")	
		pMajorParticle = pX2Game:GetMajorParticle()
		pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "SpecialEnergyCenter",	bonePos, D3DXVECTOR2(20,40), D3DXVECTOR2(10,-1) )
		pParticle = pMajorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "SpecialEnergyLine",		bonePos, D3DXVECTOR2(40,80), D3DXVECTOR2(20,-1) )
		pParticle:SetBlackHolePosition( bonePos )
		pParticle:UseLookPoint( true )
		pParticle:SetLookPoint( bonePos )
		
	end

	if pNPCUnit:AnimEventTimer_LUA( 0.4 ) then
		
		pos		= pNPCUnit:GetPos()
		eyePos	= pNPCUnit:GetBonePos_LUA("Dummy1_SmallEye1")
		landPos = pNPCUnit:GetLandPosition_LUA()
		bIsRight = pNPCUnit:GetIsRight()
		rotDegree = pNPCUnit:GetRotateDegree()
		dirVector = pNPCUnit:GetDirVector()
		vZVector = pNPCUnit:GetZVector()
		
	
		if bIsRight == false then
			eyePos = MovePos( eyePos, dirVector, 100 )
		else
			eyePos = MovePos( eyePos, dirVector, -100 )
		end
		eyePos = MovePos( eyePos, vZVector, 50 )


		
		pDamageEffect = pX2Game:GetDamageEffect()
		pDamageEffect:CreateInstance_LUA( pNPCUnit, "CANNONFORT_PARASITE_LASER", eyePos, landPos.y )
		
		
		pMinorParticle = pX2Game:GetMinorParticle()
		pParticle = pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "Wally8thSpecialAttack",	eyePos, D3DXVECTOR2(20,40), D3DXVECTOR2(10,-1) )
		if pParticle ~= nil then
			pParticle:SetAddRotate( rotDegree )
			pParticle:SetAxisAngle( rotDegree )
		end
		
		pX2Game:GetX2Camera():GetCamera():UpDownCrashCameraNoReset( 50.0, 1.3 )
				
	end

end






CANNONFORT_PARASITE_TOP_EYE_DAMAGE_SMALL = 
{
	ANIM_NAME					= "Wait",		
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= FALSE,
	
	CAN_PUSH_UNIT				= TRUE,
	CAN_PASS_UNIT				= FALSE,
	
	NEVER_MOVE					= TRUE,
		
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"CANNONFORT_PARASITE_TOP_EYE_WAIT",												},
	},
}



CANNONFORT_PARASITE_TOP_EYE_DYING_LAND_FRONT = 
{
	ANIM_NAME					= "Wait",
	PLAY_TYPE					= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION					= FALSE,
	LAND_CONNECT				= TRUE,

	INVINCIBLE					= { 0, 100, }, 		

	CAN_PUSH_UNIT				= FALSE,
	CAN_PASS_UNIT				= TRUE,
	
	NEVER_MOVE					= TRUE,
	DYING_END					= TRUE,
	IMMADIATE_PACKET_SEND		= TRUE,
}
	






------------------------------------------------------------------------------
function CANNONFORT_PARASITE_TOP_EYE_START_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )



end



------------------------------------------------------------------------------
function CANNONFORT_PARASITE_TOP_EYE_START_STATE_END( pKTDXApp, pX2Game, pNPCUnit )



end






------------------------------------------------------------------------------
function CANNONFORT_PARASITE_TOP_EYE_ATTACK_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	


end


------------------------------------------------------------------------------
function CANNONFORT_PARASITE_TOP_EYE_ATTACK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	

end



function CANNONFORT_PARASITE_TOP_EYE_DAMAGE_SMALL_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	if pNPCUnit:AnimEventTimer_LUA( 0.047 ) then
		pMinorParticle = pX2Game:GetMinorParticle()
		pMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "StepSmoke", pNPCUnit:GetLandPosition_LUA(), D3DXVECTOR2(100,100), D3DXVECTOR2(5,-1) )
	end

end



function CANNONFORT_PARASITE_TOP_EYE_DYING_LAND_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

--[[
	pos = pNPCUnit:GetPos()
	pos.y = pos.y + 100.0
	GetMinorParticle = pX2Game:GetMinorParticle()
	
	pSeq = GetMinorParticle:GameUnitCreateSequence_LUA( pNPCUnit, "DieLight",		pos, D3DXVECTOR2(-1,-1), D3DXVECTOR2(3,-1) )
	if pSeq ~= nil then
	
		pSeq:SetLandPosition( pNPCUnit:GetLandPosition_LUA().y )
		pNPCUnit:SetDieSeq( pSeq:GetHandle() )
	
	end
	pNPCUnit:PlaySound_LUA( "DieLight.ogg" )
--]]	

end








------------------------------------------------------------------------------
-- UTIL FUNCTION
------------------------------------------------------------------------------



------------------------------------------------------------------------------
function MovePos( pos, dirvector, dist )
	
	pos.x = pos.x + dist * dirvector.x
	pos.y = pos.y + dist * dirvector.y
	pos.z = pos.z + dist * dirvector.z
	
	return pos
	
end

