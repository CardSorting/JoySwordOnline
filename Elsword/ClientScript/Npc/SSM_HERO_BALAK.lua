-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--[[  / 2013/8/6 / 불가사의한 염원의 발락/
--]]

-- 바운딩 박스와 캐릭터의 크기 배율을 결정합니다.
INIT_SYSTEM =
{
	UNIT_WIDTH		= 70.0,
	UNIT_HEIGHT		= 150.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	--UNIT_SCALE      = 1.5,
}
--------------------------------------------------------------------------
-- 미리 로딩할 텍스쳐와 사운드, 메시를 결정합니다.
INIT_DEVICE =
{
	READY_TEXTURE = {},
	READY_SOUND =
	{
		"RavenVoice_Nuclear.ogg",
		"Raven_Nuclear1.ogg",
		"Raven_Nuclear2.ogg",
	},
	READY_XMESH = {},
	READY_XSKIN_MESH =
	{
		"SI_SA_ROT_NUCLEAR_Effect_Nuclear.X",
		"SI_SA_ROT_NUCLEAR_Effect_Bottom_Light.X",
		"SI_SA_ROT_NUCLEAR_Effect_Explosion_Light.X",
		"SI_SA_ROT_NUCLEAR_Effect_Center_Body.X",
		"SI_SA_ROT_NUCLEAR_Effect_Center_Head.X",
		"SI_SA_ROT_NUCLEAR_Effect_Center_Body_A.X",
		"SI_SA_ROT_NUCLEAR_Effect_Center_Head_A.X",
		"SI_SA_ROT_NUCLEAR_Effect_Mushroom_Body.X",
		"SI_SA_ROT_NUCLEAR_Effect_Mushroom_Head.X",
		"SI_SA_ROT_NUCLEAR_Effect_Mushroom_Head.X",
		"SI_SA_ROT_NUCLEAR_Effect_Dust01.X",
		"SI_SA_ROT_NUCLEAR_Effect_Dust02.X",
	},
}
--------------------------------------------------------------------------
-- 이 NPC가 사용 할 모션을 결정합니다.
-- INIT_MOTION = {MOTION_FILE_NAME	= "Motion_PVP_HERO_BALAK.x",}
INIT_MOTION = {MOTION_FILE_NAME	= "Motion_SSM_BALAK.x",}
--------------------------------------------------------------------------
INIT_PHYSIC =
{
	RELOAD_ACCEL		= 0,
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
	SHADOW_SIZE			= 200,
	SHADOW_FILE_NAME	= "shadow.dds",
	FALL_DOWN			= TRUE,
	DIE_FLY				= FALSE,
	WEAPON0 =
	{
		WEAPON_FILE_NAME			= "Mesh_Raven_Event_Weapon10_Sorted.X",
		WEAPON_BONE_NAME			= "Dummy1_Rhand",
		USE_SLASH_TRACE				= TRUE,
		SLASH_TRACE_TOP_BONE		= "TRACE_START0",
		SLASH_TRACE_BOTTOM_BONE		= "TRACE_END0",
	},
	WEAPON1 =
	{
		WEAPON_FILE_NAME			= "Mesh_Raven_AC_ARM_133249_Sorted.X",
		WEAPON_BONE_NAME			= "Bip01_L_Forearm",
	},
	-- pvp_bot : y 악세서리 추가
	ATTACH_MESH0 =
	{
		ATTACH_MESH_NAME = "MESH_PVP_HERO_BALAK_AC.X",
		ATTACH_BONE_NAME = "Bip01_Spine",
	},
	ATTACH_MESH1 =
	{
		ATTACH_MESH_NAME = "Mesh_Raven_AC_Face2_133243_Sorted.Y",
		ATTACH_BONE_NAME = "Bip01_Head",
	},
	SUMMON_TIME				= 10,
}
--------------------------------------------------------------------------
-- 스테이트와 모션을 지정합니다.(Initializing NPC's states)
INIT_STATE =
{
	-- 시작모션입니다. 노전직 레이븐은 1개의 시작모션을 가지고 있습니다.
	{ STATE_NAME = "SSM_BALAK_START",		},
	-- 뉴클리어!
	{ STATE_NAME = "SSM_BALAK_Nuclear_Success",		},
	{ STATE_NAME = "SSM_BALAK_Nuclear_Fail",		LUA_FRAME_MOVE_FUNC = "SSM_BALAK_Nuclear_Fail_FRAME_MOVE",		},
	{ STATE_NAME = "SSM_BALAK_Nuclear_Artillery",	LUA_FRAME_MOVE_FUNC = "SSM_BALAK_Nuclear_Artillery_FRAME_MOVE",	},
	{ STATE_NAME = "SSM_BALAK_Nuclear_Fist",		LUA_FRAME_MOVE_FUNC = "SSM_BALAK_Nuclear_Fist_FRAME_MOVE",		},
	{ STATE_NAME = "SSM_BALAK_Nuclear_Stone",		LUA_FRAME_MOVE_FUNC = "SSM_BALAK_Nuclear_Stone_FRAME_MOVE",		},
	-- 죽을 때의 모션입니다.
	{ STATE_NAME = "SSM_BALAK_DYING_FRONT",			},
	-- NPC 리액트별 state 연결
	START_STATE					= "SSM_BALAK_START",
	-- WAIT_STATE					= "SSM_BALAK_START",
	-- WIN_STATE					= "SSM_BALAK_START",
	-- LOSE_STATE					= "SSM_BALAK_START",
	-- 죽을 때의 모션 연결입니다.
	DYING_LAND_FRONT			= "SSM_BALAK_DYING_FRONT",
	DYING_LAND_BACK				= "SSM_BALAK_DYING_FRONT",
	SUMMON_END_STATE			= "SSM_BALAK_DYING_FRONT",
	DYING_SKY					= "SSM_BALAK_DYING_FRONT",
	-- REVENGE_ATTACK				= "",
}
--------------------------------------------------------------------------
-- 기본 AI 설정입니다.
INIT_AI =
{
	ALLY =
	{
		FAR_LOST_RANGE	= 9999,			-- 이 거리보다 멀어지면 유저 옆으로 텔레포트
		LOST_RANGE		= 9999,			-- 이 거리보다 멀어지면 유저 쪽으로 걸어감
	},
	TARGET =
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_NEAR_FIRST"],
		TARGET_INTERVAL				= 9999,		-- sec
		TARGET_NEAR_RANGE			= 0,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 9999,		-- cm
		TARGET_LOST_RANGE			= 9999,		-- cm
		TARGET_SUCCESS_RATE			= 0,  --50,		-- %
		ATTACK_TARGET_RATE			= 0, -- 30,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 0, -- 30,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},
}
--------------------------------------------------------------------------
SSM_BALAK_START =
{
	ANIM_NAME				= "Wait",
	PLAY_TYPE				= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	TRANSITION				= TRUE,
	CAN_PUSH_UNIT			= TRUE,
	CAN_PASS_UNIT			= FALSE,
	PASSIVE_SPEED_X			= 0,
	IMMADIATE_PACKET_SEND	= TRUE,
	EVENT_INTERVAL_TIME0	= 0.1,	-- 0.1초 간격으로 다음에 할 행동을 결정합니다.
	EVENT_PROCESS =
	{
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "SSM_BALAK_Nuclear_Success",     	"CT_SSM_BALAK_Nuclear_Success",		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "SSM_BALAK_Nuclear_Artillery",     	"CT_SSM_BALAK_Nuclear_Artillery",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "SSM_BALAK_Nuclear_Fist",     	"CT_SSM_BALAK_Nuclear_Fist",	},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "SSM_BALAK_Nuclear_Stone",     		"CT_SSM_BALAK_Nuclear_Stone",		},
        { STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"], "SSM_BALAK_Nuclear_Fail",     		"CT_SSM_BALAK_Nuclear_Fail",		},
	},
	CT_SSM_BALAK_Nuclear_Success =
	{
		EVENT_INTERVAL_ID			= 0,
		RATE						= 20,
	},
	CT_SSM_BALAK_Nuclear_Artillery =
	{
		EVENT_INTERVAL_ID			= 0,
		RATE						= 15,
	},
	CT_SSM_BALAK_Nuclear_Fist =
	{
		EVENT_INTERVAL_ID			= 0,
		RATE						= 15,
	},
	CT_SSM_BALAK_Nuclear_Stone =
	{
		EVENT_INTERVAL_ID			= 0,
		RATE						= 30,
	},
	CT_SSM_BALAK_Nuclear_Fail =
	{
		EVENT_INTERVAL_ID			= 0,
		RATE						= 100,
	},
}
-- 일반 뉴클리어
SSM_BALAK_Nuclear_Success =
{
	TALK_BOX =
	{
		{ RATE = 33, MESSAGE = STR_ID_12475 },
		{ RATE = 33, MESSAGE = STR_ID_12476 },
	},
	ANIM_NAME				= "SI_SA_ROT_NUCLEAR",
	PLAY_TYPE				= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	IMMADIATE_PACKET_SEND	= TRUE,
	TRANSITION				= TRUE,
	LAND_CONNECT			= FALSE,
	CAN_PUSH_UNIT			= TRUE,
	INVINCIBLE				= { 0, 100, },
	STATE_STRING			= STR_ID_4508,
	SOUND_PLAY0				= { 0.001, "RavenVoice_Nuclear.ogg" },
	SOUND_PLAY1				= { 0.003, "Energy.ogg" },
    SOUND_PLAY2				= { 1.139, "Raven_Nuclear1.ogg" },
	SOUND_PLAY3				= { 2.341, "Raven_Nuclear2.ogg" },
	EFFECT_SET_LIST			= {"EffectSet_RAVEN_NUCLEAR", 0,},
	EVENT_PROCESS			= {{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"SSM_BALAK_DYING_FRONT",},},
}
-- 퀀텀 발리스타
SSM_BALAK_Nuclear_Artillery =
{
	TALK_BOX =
	{
		{ RATE = 33, MESSAGE = STR_ID_12475 },
		{ RATE = 33, MESSAGE = STR_ID_12476 },
	},
	ANIM_SPEED				= 2,
	ANIM_NAME				= "SI_SA_ROT_NUCLEAR",
	PLAY_TYPE				= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	IMMADIATE_PACKET_SEND	= TRUE,
	TRANSITION				= TRUE,
	LAND_CONNECT			= FALSE,
	CAN_PUSH_UNIT			= TRUE,
	INVINCIBLE				= { 0, 100, },
	STATE_STRING			= STR_ID_4508,
	SOUND_PLAY0				= { 0.001, "RavenVoice_NuClear02.ogg" },
	SOUND_PLAY1				= { 0.003, "Energy.ogg" },
    SOUND_PLAY2				= { 0.064, "CannonFort_Cacon_Attack.ogg" },
    SOUND_PLAY3				= { 0.064, "Chung_SignOfCommander_MissilesDrop.ogg" },
	-- EFFECT_SET_LIST			= {"EffectSet_RAVEN_NUCLEAR", 0,},
	-- DAMAGE_EFFECT_CSI_SI_SA_CDC_CHUNG_ARTILLERY_STRIKE_SHELL_GROUND
	EVENT_PROCESS			= {{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"SSM_BALAK_DYING_FRONT",},},
}
function SSM_BALAK_Nuclear_Artillery_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	bRot = 1
	if pNPCUnit:GetIsRight() == false then
		bRot = -1
	end
	if pNPCUnit:AnimEventTimer_LUA( 0.1 ) then
		pDamageEffect = pX2Game:GetDamageEffect()
		landPos = pNPCUnit:GetLandPosition_LUA()
		LHandPos = pNPCUnit:GetBonePos_LUA( "Bip01_L_Hand" )
		LHandPos.x = LHandPos.x + (300 * bRot)
		LHandPos.y = LHandPos.y + 2000
		pCEffect = pDamageEffect:CreateInstance_LUA( pNPCUnit, "DAMAGE_EFFECT_CSI_SI_SA_CDC_CHUNG_ARTILLERY_STRIKE_QUANTUM_BALLISTA_GROUND_SHELL", LHandPos, landPos.y )
	end
end
-- 불발 뉴클리어
SSM_BALAK_Nuclear_Fail =
{
	TALK_BOX =
	{
		{ RATE = 33, MESSAGE = STR_ID_12475 },
		{ RATE = 33, MESSAGE = STR_ID_12476 },
	},
	ANIM_SPEED				= 2,
	ANIM_NAME				= "SI_SA_ROT_NUCLEAR",
	PLAY_TYPE				= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	IMMADIATE_PACKET_SEND	= TRUE,
	TRANSITION				= TRUE,
	LAND_CONNECT			= FALSE,
	CAN_PUSH_UNIT			= TRUE,
	INVINCIBLE				= { 0, 100, },
	STATE_STRING			= STR_ID_4508,
	SOUND_PLAY0				= { 0.001, "RavenVoice_Nuclear.ogg" },
	SOUND_PLAY1				= { 0.003, "Energy.ogg" },
	SOUND_PLAY2				= { 2.0, "RavenVoice_Lose4.ogg" },
	-- EFFECT_SET_LIST			= {"EffectSet_RAVEN_NUCLEAR", 0,},
	EVENT_PROCESS			= {{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"SSM_BALAK_DYING_FRONT",},},
}
function SSM_BALAK_Nuclear_Fail_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	bRot = 1
	if pNPCUnit:GetIsRight() == false then
		bRot = -1
	end
	if pNPCUnit:AnimEventTimer_LUA( 0.1 ) then
		pDamageEffect = pX2Game:GetDamageEffect()
		landPos = pNPCUnit:GetLandPosition_LUA()
		LHandPos = pNPCUnit:GetBonePos_LUA( "Bip01_L_Hand" )
		LHandPos.x = LHandPos.x + (300 * bRot)
		LHandPos.y = LHandPos.y - 100
		pCEffect = pDamageEffect:CreateInstance_LUA( pNPCUnit, "DamageEffect_SSM_Balak_Nuclear_Fail", LHandPos, landPos.y )
	end
end
-- 돌덩어리
SSM_BALAK_Nuclear_Stone =
{
	TALK_BOX =
	{
		{ RATE = 33, MESSAGE = STR_ID_12475 },
		{ RATE = 33, MESSAGE = STR_ID_12476 },
	},
	ANIM_SPEED				= 2,
	ANIM_NAME				= "SI_SA_ROT_NUCLEAR",
	PLAY_TYPE				= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	IMMADIATE_PACKET_SEND	= TRUE,
	TRANSITION				= TRUE,
	LAND_CONNECT			= FALSE,
	CAN_PUSH_UNIT			= TRUE,
	INVINCIBLE				= { 0, 100, },
	STATE_STRING			= STR_ID_4508,
	SOUND_PLAY0				= { 0.001, "RavenVoice_Nuclear.ogg" },
	SOUND_PLAY1				= { 2.0, "RavenVoice_Lose4.ogg" },
	-- EFFECT_SET_LIST			= {"EffectSet_RAVEN_NUCLEAR", 0,},
	EVENT_PROCESS			= {{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"SSM_BALAK_DYING_FRONT",},},
}
function SSM_BALAK_Nuclear_Stone_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	bRot = 1
	if pNPCUnit:GetIsRight() == false then
		bRot = -1
	end
	if pNPCUnit:AnimEventTimer_LUA( 0.1 ) then
		pDamageEffect = pX2Game:GetDamageEffect()
		landPos = pNPCUnit:GetLandPosition_LUA()
		LHandPos = pNPCUnit:GetBonePos_LUA( "Bip01_L_Hand" )
		LHandPos.x = LHandPos.x + (300 * bRot)
		LHandPos.y = LHandPos.y + 1000
		pCEffect = pDamageEffect:CreateInstance_LUA( pNPCUnit, "DAMAGE_EFFECT_EQUIP_FALLING_ROCK", LHandPos, landPos.y )
	end
end
-- 콘라드 피스트
SSM_BALAK_Nuclear_Fist =
{
	TALK_BOX =
	{
		{ RATE = 33, MESSAGE = STR_ID_12475 },
		{ RATE = 33, MESSAGE = STR_ID_12476 },
	},
	ANIM_SPEED				= 2,
	ANIM_NAME				= "SI_SA_ROT_NUCLEAR",
	PLAY_TYPE				= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	IMMADIATE_PACKET_SEND	= TRUE,
	TRANSITION				= TRUE,
	LAND_CONNECT			= FALSE,
	CAN_PUSH_UNIT			= TRUE,
	INVINCIBLE				= { 0, 100, },
	STATE_STRING			= STR_ID_4508,
	SOUND_PLAY0				= { 0.001, "RavenVoice_Nuclear.ogg" },
	SOUND_PLAY1				= { 2.0, "RavenVoice_Lose4.ogg" },
	-- EFFECT_SET_LIST			= {"EffectSet_RAVEN_NUCLEAR", 0,},
	EVENT_PROCESS			= {{ STATE_CHANGE_TYPE["SCT_MOTION_END"],	"SSM_BALAK_DYING_FRONT",},},
}
function SSM_BALAK_Nuclear_Fist_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	bRot = 1
	if pNPCUnit:GetIsRight() == false then
		bRot = -1
	end
	if pNPCUnit:AnimEventTimer_LUA( 0.1 ) then
		pDamageEffect = pX2Game:GetDamageEffect()
		landPos = pNPCUnit:GetLandPosition_LUA()
		LHandPos = pNPCUnit:GetBonePos_LUA( "Bip01_L_Hand" )
		LHandPos.x = LHandPos.x + (-300 * bRot)
		LHandPos.y = LHandPos.y - 100
		pCEffect = pDamageEffect:CreateInstance_LUA( pNPCUnit, "CONRAD_SPECIALC", LHandPos, landPos.y )
	end
end
SSM_BALAK_DYING_FRONT =
{
	ANIM_SPEED				= 1,
	ANIM_NAME				= "Wait",
	PLAY_TYPE				= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION				= FALSE,
	LAND_CONNECT			= FALSE,
	INVINCIBLE				= { 0, 100, },
	CAN_PUSH_UNIT			= FALSE,
	CAN_PASS_UNIT			= TRUE,
	DYING_END				= TRUE,
	DYING_SPEED				= 1,
	IMMADIATE_PACKET_SEND	= TRUE,
}