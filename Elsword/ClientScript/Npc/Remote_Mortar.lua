-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	UNIT_WIDTH		= 50.0,
	UNIT_HEIGHT		= 150.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	UNIT_SCALE		= 1.1,

}


INIT_DEVICE = 
{
	READY_TEXTURE = 
	{
		"SI_A_CTT_REMOTE_MORTAR_Effect.tga",
	},
	
	READY_SOUND = 
	{
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME	= "SI_A_CTT_REMOTE_MORTAR_Effect.x",
	MOTION_FILE_NAME_ENEMY	= "SI_A_CTT_REMOTE_MORTAR_Effect_Enemy.x",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 400,
	RUN_SPEED			= 400,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 2300,
}


INIT_COMPONENT = 
{
	MP_CHANGE_RATE		= 0,
	MP_CHARGE_RATE		= 0,
	
	USE_SLASH_TRACE		= FALSE,
	
	SHADOW_SIZE			= 200,
	SHADOW_FILE_NAME	= "shadow.dds",
	
	-- SMALL_HP_BAR_BLUE	= "Small_HP_bar_Blue.TGA",
	-- SMALL_HP_BAR_RED	= "Small_HP_bar_Red.TGA",
	
	QUESTION_MARK_SEQ		= "",
	EXCLAMATION_MARK_SEQ	= "",
	
	HEAD_BONE_NAME			= "REMOTE_MORTAR_Head",
	
	HITTED_TYPE			= HITTED_TYPE["HTD_MEAT"],
	
	FALL_DOWN			= TRUE,
	
	DAMAGE_DOWN         = FALSE,
	
	DIE_FLY             = 0,
	
	DELETE_NPC_BY_SUB_STAGE_END = TRUE;
}

INIT_STATE = 
{
	{ STATE_NAME = "REMOTE_MORTAR_START",				LUA_STATE_START_FUNC = "REMOTE_MORTAR_STATE_START",				},
	
	{ STATE_NAME = "REMOTE_MORTAR_WAIT",				},
												
	{ STATE_NAME = "REMOTE_MORTAR_ATTACK",				LUA_STATE_END_FUNC = "REMOTE_MORTAR_ATTACK_STATE_END"	},
	
	--리액션 관련
	{ STATE_NAME = "REMOTE_MORTAR_DYING",				},

{ STATE_NAME = "REMOTE_MORTAR_DAMAGE", },
	
	START_STATE					= "REMOTE_MORTAR_START",
	WAIT_STATE					= "REMOTE_MORTAR_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "REMOTE_MORTAR_DAMAGE",
	SMALL_DAMAGE_LAND_BACK		= "REMOTE_MORTAR_DAMAGE",
	BIG_DAMAGE_LAND_FRONT		= "REMOTE_MORTAR_DAMAGE",
	BIG_DAMAGE_LAND_BACK		= "REMOTE_MORTAR_DAMAGE",
	DOWN_DAMAGE_LAND_FRONT		= "REMOTE_MORTAR_DAMAGE",
	DOWN_DAMAGE_LAND_BACK		= "REMOTE_MORTAR_DAMAGE",
	FLY_DAMAGE_FRONT			= "REMOTE_MORTAR_DAMAGE",
	FLY_DAMAGE_BACK				= "REMOTE_MORTAR_DAMAGE",
	SMALL_DAMAGE_AIR			= "REMOTE_MORTAR_DAMAGE",	
	BIG_DAMAGE_AIR				= "REMOTE_MORTAR_DAMAGE",
	DOWN_DAMAGE_AIR				= "REMOTE_MORTAR_DAMAGE",
	UP_DAMAGE					= "REMOTE_MORTAR_DAMAGE",
	DAMAGE_REVENGE				= "REMOTE_MORTAR_DAMAGE",
	
	DYING_LAND_FRONT			= "REMOTE_MORTAR_DYING",
	DYING_LAND_BACK				= "REMOTE_MORTAR_DYING",
	DYING_SKY					= "REMOTE_MORTAR_DYING",
	
	COMMON_FRAME_FUNC           = "REMOTE_MORTAR_COMMON_FRAME_MOVE",

	REVENGE_ATTACK				= "",	
	
}

INIT_AI = 
{
	NO_BRAIN = TRUE,
}

REMOTE_MORTAR_START = 
{
	ANIM_NAME		= "Start",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= TRUE,
	LAND_CONNECT	= TRUE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,		

	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,
	NEVER_MOVE		= TRUE,
		
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"REMOTE_MORTAR_WAIT",	},
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Remote_Mortar_Start", 0,
	},
}

REMOTE_MORTAR_WAIT = 
{
	ANIM_NAME		= "Wait",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= TRUE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,

	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,
	NEVER_MOVE		= TRUE,
}

REMOTE_MORTAR_DAMAGE = 
{
	ANIM_NAME		= "Damage",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= TRUE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,		

	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,
	NEVER_MOVE		= TRUE,

	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"REMOTE_MORTAR_WAIT",	},
	},
}

REMOTE_MORTAR_ATTACK = 
{
	ANIM_NAME		= "Attack",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= TRUE,
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,

	PASSIVE_SPEED_X	= 0,
	PASSIVE_SPEED_Y	= 0,
	NEVER_MOVE		= TRUE,
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"REMOTE_MORTAR_WAIT",	},
	},
	
	EFFECT_SET_LIST =
	{
		"EffectSet_Remote_Mortar_Fire", 0,
	},
}

REMOTE_MORTAR_DYING = 
{
	ANIM_NAME		= "Wait",
	PLAY_TYPE		= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION		= FALSE,
	LAND_CONNECT	= FALSE,

	INVINCIBLE		= { 0, 100, }, 		
	
	CAN_PUSH_UNIT	= FALSE,
	CAN_PASS_UNIT	= TRUE,
	
	DYING_END		= TRUE,
	DYING_SPEED 	= 0.8,

	EFFECT_SET_LIST =
	{
		"EffectSet_Remote_Mortar_End", 0,
	},
}

function REMOTE_MORTAR_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	pNPCUnit:SetInt_LUA(0, 1)						-- 탄 발사 순서
	pNPCUnit:SetInt_LUA(1, 3)						-- 발사 가능한 탄 갯수
	pNPCUnit:SetInt_LUA(2, 1)						-- 사망 처리 전까지 쿨타임
	
	pNPCUnit:SetFlag_LUA(0, true)					-- 발사 가능 상태 ( true = 발사 가능, false = 발사 불가능 )
	pNPCUnit:SetFlag_LUA(1, false)					-- 사망 여부
	
	pNPCUnit:SetTimerRestart( 0 )					-- 타겟 검사 함수가 실행되기까지의 시간
	pNPCUnit:SetTimerRestart( 1 )					-- 다음 발사 까지의 시간
	
	-- Timer 0										-- 타겟 검사 함수가 실행되기까지의 시간
	-- Timer 1										-- 다음 발사까지의 간격
	-- Timer 2										-- 모든 포탄을 다 쏜 경우에 한해서 사망 전까지 쿨타임 타이머

	pNPCUnit:SetVector_LUA(0, D3DXVECTOR3(0, 0, 0) )  

	
end

function REMOTE_MORTAR_ATTACK_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	local iMaxFireNum = pNPCUnit:GetInt_LUA(1)		-- 발사 가능한 탄 갯수

	if iMaxFireNum < pNPCUnit:GetInt_LUA(0) then	-- 발사된 탄수 검사
		
		pNPCUnit:SetFlag_LUA(1, true)				-- 모든 포탄을 다 쏜 경우에 한해서 사망 전까지 특정 쿨타임 추가
		
		pNPCUnit:SetTimerRestart( 2 )				-- 사망 전 쿨타임
		
		return
		
	end

end

function REMOTE_MORTAR_COMMON_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )

	local pOwnerUnit = pX2Game:GetUserUnitByUID( pNPCUnit:GetOwnerUserUnitUID() )
	
	-- 소환자 사망시 소환물도 같이 사망
	if nil ~= pOwnerUnit then
	
		if 0 >= pOwnerUnit:GetNowHP()  then
			
			pNPCUnit:SetNowHP_LUA( 0 )
			
			return
		
		end
	
	end

	-- 사망중이면, 공격 연산 않함
	if 0 >= pNPCUnit:GetNowHP_LUA() then
	
		return
	
	end
	
	-- 사망 전 쿨타임이 돌고 있다면, 공격 연산 않함 ( 모든 포탄 다 쏜 경우에 한해서 )
	local bCheckIsDying = pNPCUnit:GetFlag_LUA(1)
	
	if true == bCheckIsDying then
	
		local fDyingTime 	  = pNPCUnit:GetTimerElapsedTime( 2 )	-- 모든 포탄을 다 쏜 경우에 한해서 사망 전까지 쿨타임 갱신
		local iDyingLimitTime = pNPCUnit:GetInt_LUA(2)				-- 사망 전 쿨타임 한계
		
		if iDyingLimitTime <= fDyingTime then						-- 쿨타임 종료되면 사망 처리
		
			pNPCUnit:SetNowHP_LUA( 0 )
		
		end
		
		return
		
	end

	-- 공격 연산
	local bCheckPossibleFire = pNPCUnit:GetFlag_LUA(0)
	
	if true == bCheckPossibleFire then				-- 발사 가능 상태일 때
	
		local fEnableCheckTime = pNPCUnit:GetTimerElapsedTime( 0 )	-- 타겟 검사 함수가 실행되기까지의 시간
			 
		if 0.2 > fEnableCheckTime then				-- 해당 시간에 한번씩 검사
		
			return
		
		end
		
		local pTargetUnit = pNPCUnit:GetNearestUnitPosByOwnerUnit(700.0)	-- 자신을 생성시킨 유저 근처에 있는 적 반환
		
		if nil ~= pTargetUnit then
			
			-- 관련 이펙트 생성		
			local vTargetPos 	= pTargetUnit:GetPos()
			local vLandPos 		= pX2Game:GetLineMap():GetLandPosition_LUA( vTargetPos )
			vTargetPos.y 		=  vTargetPos.y + 2000
			
			local vFirePos		= pNPCUnit:GetPos()
			local vAimPos		= pTargetUnit:GetPos()		

			vFirePos.y	= vAimPos.y


			local distance = pX2Game:GetDist_LUA(vFirePos, vAimPos)

			local Aimdistance = distance / 3




			local vDirFire = D3DXVECTOR3(vAimPos.x - vFirePos.x, vAimPos.y - vFirePos.y, vAimPos.z - vFirePos.z)
			local vFireDegree = GetDirVecToDegree( vDirFire )

			vFireDegree.z	= 0
			vFireDegree.x	= 0

			vDirFire.x = vDirFire.x / 3
			vDirFire.z = vDirFire.z / 3

			vAimPos.x = vAimPos.x - vDirFire.x
			vAimPos.z = vAimPos.z - vDirFire.z
			vAimPos.y = vAimPos.y + 3000


			local pDamageEffect = pX2Game:GetDamageEffect()
			pDamageEffect:CreateInstance_LUA( pNPCUnit, "CTT_REMOTE_MORTAR_SHELLING_POINT", vLandPos, vLandPos.y )	-- 착탄 지점 표시 이펙트
			local pIns = pDamageEffect:CreateInstance_LUA( pNPCUnit, "CTT_REMOTE_MORTAR_SHELL_ATTACK", vAimPos )		-- 일정 시간 후 목표 지점으로 떨어지는 탄
			-------------------
			

			local pMainEffect = pIns:GetMainEffect()
			pMainEffect:SetVelocity( D3DXVECTOR3( Aimdistance , -3000 , 0 ) )
			pMainEffect:SetRotateDegree( vFireDegree )
			pMainEffect:SetMoveAxisAngleDegree( vFireDegree )

			
			-- 초기화 및 설정
			
			pNPCUnit:SetFlag_LUA(0, false)			-- 발사 불가 설정
	
			pNPCUnit:SetTimerRestart( 0 )			-- 타겟 검사 함수가 실행되기까지의 시간 초기화
			pNPCUnit:SetTimerRestart( 1 )			-- 다음 발사 까지의 시간 초기화
			
			pNPCUnit:SetVector_LUA(0, D3DXVECTOR3(2, 0, 0) )  


			pNPCUnit:SetInt_LUA(0, pNPCUnit:GetInt_LUA(0) + 1 )			-- 발사 카운트 증가
			
			pNPCUnit:StateChange_LUA( "REMOTE_MORTAR_ATTACK", false )	-- 공격 State 변경
			-------------------
			
			return
			
		end
	
	else	-- 발사 불가능 상태일 때
		
		local fEnableFireTime = pNPCUnit:GetTimerElapsedTime( 1 )	-- 다음 발사까지의 간격
		
		local fRandFireTime = pNPCUnit:GetVector_LUA( 0 )

		if fRandFireTime.x < fEnableFireTime then		-- 발사 후 2초 이상 경과시 발사 가능 설정
		
			pNPCUnit:SetFlag_LUA(0, true)			-- 발사 가능 설정
			
		end
		
	end
	
end

--------------------------------------------------------------------------
function MovePos( pos, dirvector, dist )
	pos.x = pos.x + dist * dirvector.x
	pos.y = pos.y + dist * dirvector.y
	pos.z = pos.z + dist * dirvector.z
	
	return pos
end
--------------------------------------------------------------------------