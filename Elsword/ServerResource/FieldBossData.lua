-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

FieldBossData:SetData
{
	TotalDangerousValue	= 28,						-- TotalDangerousValue 는 각 필드별 위험도가 초기화 된 횟수 이다.

	FieldBossCoolTime_M				= 60,			-- FieldBoss 출현 Term( 분 )
	PortalHoldingTime_M				= 15,			-- Portal 유지 시간( 분 )
	FieldHoldingTime_M				= 12,			-- Field 유지 시간( 분 )
	EndGameFieldHoldingTime_S		= 255,			-- 전투 종료 후 필드 유지 시간( 초 )
	EndGameFieldHoldingTimeForce_S	= 60,			-- 필드 유지 시간 이후 강제 종료까지의 유예 시간( 초 )
	IntrudeRestrictionTime_S		= 60,			-- 남은 시간이 이 시간 미만일 경우 난입 불가가 된다. ( 초 )
	FieldRemainTimeBroadCastTerm_S	= 10,			-- 클라이언트간 시간 동기화를 위한 전송 주기 ( 초 )

	MaximumExpandedSocketCount		= 1,			-- 최대 확장 가능한 소켓 수 ( 적당한 위치를 찾지 못해서 그냥 여기다 기록 )
	SocketExpandItemForWeapon		= { 117434, },	--( 추후에 아이템 기능을 정리한 스크립트를 제작하여 옮기면 좋겠다 )
	SocketExpandItemForDefence		= { 117435, },

	Reward = 
	{
		LimiteContribution	= 0.009,	-- 최소 기여도
		MaximumContribution	= 1.5,	-- 최대 기여도

		-- 상위 Precedence 순서대로 지급하며, 지급 받은 유저는 다른 보상을 받지 않습니다.
		{
			PrecedenceRate	= 0.3,		-- 상위 30%
			RewardInfo		= { { 70058, 1 }, { 160951, 6 }, { 135461, 2 }, { 135462, 2 }, },
		},
		
		{
			PrecedenceRate	= 1.0,		-- etc ( 적은 수치인 0.3을 포함한다. 하지만 0.3에 속하는 유저는 이미 보상을 받았기 때문에 이것은 받지 않는다. )
			RewardInfo		= { { 70058, 1 }, { 160951, 3 }, { 135461, 1 }, { 135462, 1 },  },
		},
	},

	PortalLocation	=						-- Portal 열릴 수 있는 장소( = TotalDangerousValue에 영향을 주는 장소 )
	{
		--[[
		VILLAGE_MAP_ID["VMI_BATTLE_FIELD_RUBEN_FIELD_01"],
		VILLAGE_MAP_ID["VMI_BATTLE_FIELD_ELDER_FIELD_01"],
		VILLAGE_MAP_ID["VMI_BATTLE_FIELD_ELDER_FIELD_02"],
		VILLAGE_MAP_ID["VMI_BATTLE_FIELD_BESMA_FIELD_01"],
		VILLAGE_MAP_ID["VMI_BATTLE_FIELD_BESMA_FIELD_02"],
		VILLAGE_MAP_ID["VMI_BATTLE_FIELD_BESMA_FIELD_03"],
		VILLAGE_MAP_ID["VMI_BATTLE_FIELD_ALTERA_FIELD_01"],
		VILLAGE_MAP_ID["VMI_BATTLE_FIELD_ALTERA_FIELD_02"],
		VILLAGE_MAP_ID["VMI_BATTLE_FIELD_ALTERA_FIELD_03"],
		VILLAGE_MAP_ID["VMI_BATTLE_FIELD_PEITA_FIELD_01"],
		VILLAGE_MAP_ID["VMI_BATTLE_FIELD_PEITA_FIELD_02"],
		VILLAGE_MAP_ID["VMI_BATTLE_FIELD_PEITA_FIELD_03"],
		VILLAGE_MAP_ID["VMI_BATTLE_FIELD_VELDER_FIELD_01"],
		VILLAGE_MAP_ID["VMI_BATTLE_FIELD_VELDER_FIELD_02"],
		VILLAGE_MAP_ID["VMI_BATTLE_FIELD_VELDER_FIELD_03"],
		VILLAGE_MAP_ID["VMI_BATTLE_FIELD_VELDER_FIELD_04"],
		--]]
		VILLAGE_MAP_ID["VMI_BATTLE_FIELD_HAMEL_FIELD_01"],
		VILLAGE_MAP_ID["VMI_BATTLE_FIELD_HAMEL_FIELD_02"],
		VILLAGE_MAP_ID["VMI_BATTLE_FIELD_HAMEL_FIELD_03"],
		VILLAGE_MAP_ID["VMI_BATTLE_FIELD_HAMEL_FIELD_04"],
		-- VILLAGE_MAP_ID["VMI_BATTLE_FIELD_VELDER_SHIP_STAGE"],
		-- VILLAGE_MAP_ID["VMI_BATTLE_FIELD_HAMEL_SHIP_STAGE"],
		VILLAGE_MAP_ID["VMI_BATTLE_FIELD_SANDER_FIELD_01"],
		VILLAGE_MAP_ID["VMI_BATTLE_FIELD_SANDER_FIELD_02"],
		VILLAGE_MAP_ID["VMI_BATTLE_FIELD_SANDER_FIELD_03"],
		VILLAGE_MAP_ID["VMI_BATTLE_FIELD_SANDER_FIELD_04"],
	},
}
