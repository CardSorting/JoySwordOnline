-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- 라이딩 펫 현재 스태미너 수치에 따른 사용 가능 여부 기준
g_pRidingPetManager:SetEnableStamina( 10.0 )	-- 10 이상이면 소환 가능


-- 라이딩 펫 스테미너 최대값 계산 함수
function COMPUTE_RIDING_PET_MAX_STAMINA( K )

	local Y = 100
	local S = 1
	
	return ( Y * K ) * S
	
end

-- 라이딩 펫 스테미너 회복 수치 계산 함수
function GET_RECOVERY_TIME_PER_ONE( )
--[[
		local X = 7.2
		local C = 1
		
		local RecoveryTimePerOne = ( X / C )
		
		if( RecoveryTimePerOne > 7.2 ) then   ---최대값 이거보다 높으면 아래 값으로 아래 지정된 값으로 처리함		
			RecoveryTimePerOne = 7.2
		end
		
		return RecoveryTimePerOne
--]]
	return 7.2
end

g_pRidingPetManager:AddRidingPetTemplet
{
	RIDING_PET_ID	= RIDING_PET_UNIT_ID["RPUI_NASOD_MOBI"],
	COMMON_NAME		= STR_ID_29469,

	STAMINA_INCREASE_RATE	= 1.0,  ---k 값
	STAMINA_RECOVERY_RATE	= 1,	---Z 값
	SCRIPTNAME	= "RidingPet_Nasod_Mobi.lua",
	FACE_IMAGE = { "DLG_UI_Common_Texture_RidingPet_01.tga", "RIDING_MOBI", },
	
	VIEWER_SIZE_X = 0.6,		-- 뷰어에서 몬스터 크기 X
	VIEWER_SIZE_Y = 0.6,		-- 뷰어에서 몬스터 크기 Y
	VIEWER_SIZE_Z = 0.6,		-- 뷰어에서 몬스터 크기 Z
	
	DESCRIPTION = STR_ID_24353, --탈 것 상세 설명
	
	-- 공격
	ATTACK_SKILL_INFO =
	{
		-- 스킬 이미지 파일,			이미지 키값			스킬명			스킬 설명		마나	쿨타임
		{ "DLG_SKILL_RIDING.tga",	"RIDING_MOBI_Z",	STR_ID_24357,	STR_ID_24350,	0,		0.1, },	-- Attack Z
		{ "DLG_SKILL_RIDING.tga",	"RIDING_MOBI_X",	STR_ID_24358,	STR_ID_24351,	0,		5, },	-- Attack X
		{ "DLG_SKILL_RIDING.tga",	"RIDING_MOBI_C",	STR_ID_24359,	STR_ID_24352,		150,		10, },	-- Special Attack
	},
	
	-- 버프
	BUFF_SKILL_INFO =
	{
		--{ "DLG_SKILL_RIDING.tga", "RIDING_BUFF_GROUP", STR_ID_24354, STR_ID_24347, },	-- 파티 버프
		{ "DLG_SKILL_RIDING.tga", "RIDING_BUFF_SINGLE", STR_ID_24355, STR_ID_24348, BUFF_FACTOR_ID["BFI_BUFF_WHEN_RIDE_ON_PET_FOR_ONLY_MASTER_FIX"], },	-- 탑승 버프
		{ "DLG_SKILL_RIDING.tga", "RIDING_BUFF_NORMAL", STR_ID_24356, STR_ID_24349, },	-- 속도 증가
	},
	
	-- 특수 이동
	SPECIAL_MOVE = RIDING_SPECIAL_MOVE["RSM_BOOST_DASH"],

	-- 소켓 옵션 적용
	SOCKET_OPTION = { 71500, 71502,},  ---소켓 옵션 (속성 발동 확률 증가)

}

g_pRidingPetManager:AddRidingPetTemplet
{
	RIDING_PET_ID	= RIDING_PET_UNIT_ID["RPUI_KOUCIKA"],
	COMMON_NAME		= STR_ID_29470,

	STAMINA_INCREASE_RATE	= 1.0,
	STAMINA_RECOVERY_RATE	= 1,
	SCRIPTNAME	= "RidingPet_Koucika.lua",
	FACE_IMAGE = { "DLG_UI_Common_Texture_RidingPet_01.tga", "RIDING_KOKA", },

	VIEWER_SIZE_X = 0.6,		-- 뷰어에서 몬스터 크기 X
	VIEWER_SIZE_Y = 0.6,		-- 뷰어에서 몬스터 크기 Y
	VIEWER_SIZE_Z = 0.6,		-- 뷰어에서 몬스터 크기 Z
	
	DESCRIPTION = STR_ID_24370, --탈 것 상세 설명
	
	-- 공격
	ATTACK_SKILL_INFO =
	{
		-- 스킬 이미지 파일,			이미지 키값			스킬명			스킬 설명	   마나	  쿨타임
		{ "DLG_SKILL_RIDING.tga", 	"RIDING_KOKA_Z", 		STR_ID_24357, 	STR_ID_24367,	0,		0.1, },	-- Attack Z
		{ "DLG_SKILL_RIDING.tga", 	"RIDING_KOKA_X", 		STR_ID_24358, 	STR_ID_24368,	0,		5, },	-- Attack X
		{ "DLG_SKILL_RIDING.tga", 	"RIDING_KOKA_C", 		STR_ID_24363, 	STR_ID_24369,	150,	10, },	-- Special Attack
	},
	
	-- 버프
	BUFF_SKILL_INFO =
	{
		--{ "DLG_SKILL_RIDING.tga", "RIDING_BUFF_GROUP", STR_ID_24360, STR_ID_24364, },	-- 파티 버프
		{ "DLG_SKILL_RIDING.tga", "RIDING_BUFF_SINGLE", STR_ID_24361, STR_ID_24365, BUFF_FACTOR_ID["BFI_BUFF_WHEN_RIDE_ON_PET_FOR_ONLY_MASTER_FIX"], },	-- 탑승 버프
		{ "DLG_SKILL_RIDING.tga", "RIDING_BUFF_NORMAL", STR_ID_24362, STR_ID_24366, },	-- 속도 증가
	},

	-- 특수 이동
	SPECIAL_MOVE = RIDING_SPECIAL_MOVE["RSM_DOUBLE_JUMP"],

	-- 소켓 옵션 적용
	SOCKET_OPTION = { 71503, 71505, },
}

g_pRidingPetManager:AddRidingPetTemplet
{
	RIDING_PET_ID	= RIDING_PET_UNIT_ID["RPUI_ANCIENT_PPORU"],
	COMMON_NAME		= STR_ID_29471,

	STAMINA_INCREASE_RATE	= 1.0,
	STAMINA_RECOVERY_RATE	= 1,
	SCRIPTNAME	= "RidingPet_Ancient_PPoru.lua",
	FACE_IMAGE = { "DLG_UI_Common_Texture_RidingPet_01.tga", "RIDING_ANCIENT_PORU", },

	VIEWER_SIZE_X = 0.6,		-- 뷰어에서 몬스터 크기 X
	VIEWER_SIZE_Y = 0.6,		-- 뷰어에서 몬스터 크기 Y
	VIEWER_SIZE_Z = 0.6,		-- 뷰어에서 몬스터 크기 Z
	
	DESCRIPTION = STR_ID_24381, --탈 것 상세 설명
	
	-- 공격
	ATTACK_SKILL_INFO =
	{
		-- 스킬 이미지 파일,			이미지 키값			스킬명			스킬 설명	   마나	  쿨타임
		{ "DLG_SKILL_RIDING.tga", "RIDING_ANCIENT_PORU_Z", STR_ID_24357, STR_ID_24378,		0,		0.1, },	-- Attack Z
		{ "DLG_SKILL_RIDING.tga", "RIDING_ANCIENT_PORU_X", STR_ID_24358, STR_ID_24379,		0,		5, },	-- Attack X
		{ "DLG_SKILL_RIDING.tga", "RIDING_ANCIENT_PORU_C", STR_ID_24374, STR_ID_24380,		150,	10, },	-- Special Attack
	},
	
	-- 버프
	BUFF_SKILL_INFO =
	{
		--{ "DLG_SKILL_RIDING.tga", "RIDING_BUFF_GROUP", STR_ID_24371, STR_ID_24375, },	-- 파티 버프
		{ "DLG_SKILL_RIDING.tga", "RIDING_BUFF_SINGLE", STR_ID_24372, STR_ID_24376, BUFF_FACTOR_ID["BFI_BUFF_WHEN_RIDE_ON_PET_FOR_ONLY_MASTER_FIX"], },	-- 탑승 버프
		{ "DLG_SKILL_RIDING.tga", "RIDING_BUFF_NORMAL", STR_ID_24373, STR_ID_24377, },	-- 속도 증가
	},

	-- 특수 이동
	SPECIAL_MOVE = RIDING_SPECIAL_MOVE["RSM_AIR_DASH"],

	-- 소켓 옵션 적용
	SOCKET_OPTION = { 71500, 71504,},
}

g_pRidingPetManager:AddRidingPetTemplet
{
	RIDING_PET_ID	= RIDING_PET_UNIT_ID["RPUI_SCORPION_TYPE_R"],
	COMMON_NAME		= STR_ID_29472,

	STAMINA_INCREASE_RATE	= 1.0,
	STAMINA_RECOVERY_RATE	= 1,
	SCRIPTNAME	= "RidingPet_Scorpion_Type_R.lua",
	FACE_IMAGE = { "DLG_UI_Common_Texture_RidingPet_01.tga", "RIDING_PONGGO", },

	VIEWER_SIZE_X = 0.6,		-- 뷰어에서 몬스터 크기 X
	VIEWER_SIZE_Y = 0.6,		-- 뷰어에서 몬스터 크기 Y
	VIEWER_SIZE_Z = 0.6,		-- 뷰어에서 몬스터 크기 Z
	
	DESCRIPTION = STR_ID_25082, --탈 것 상세 설명
	
	-- 공격
	ATTACK_SKILL_INFO =
	{
		-- 스킬 이미지 파일,			이미지 키값			스킬명			스킬 설명	   마나	  쿨타임
		{ "DLG_SKILL_RIDING.tga", "RIDING_PONGGO_Z", STR_ID_24357, STR_ID_25083,		0,		0.1, },	-- Attack Z
		{ "DLG_SKILL_RIDING.tga", "RIDING_PONGGO_X", STR_ID_24358, STR_ID_25084,		0,		5, },	-- Attack X
		{ "DLG_SKILL_RIDING.tga", "RIDING_PONGGO_C", STR_ID_25088, STR_ID_25085,		150,	10, },	-- Special Attack
	},
	
	-- 버프
	BUFF_SKILL_INFO =
	{
		--{ "DLG_SKILL_RIDING.tga", "RIDING_BUFF_GROUP", STR_ID_24371, STR_ID_24375, },	-- 파티 버프
		{ "DLG_SKILL_RIDING.tga", "RIDING_BUFF_SINGLE", STR_ID_25089, STR_ID_25086, BUFF_FACTOR_ID["BFI_BUFF_WHEN_RIDE_ON_PET_FOR_ONLY_MASTER_FIX"], },	-- 탑승 버프
		{ "DLG_SKILL_RIDING.tga", "RIDING_BUFF_NORMAL", STR_ID_25090, STR_ID_25087, },	-- 속도 증가
	},

	-- 특수 이동
	SPECIAL_MOVE = RIDING_SPECIAL_MOVE["RSM_PASS_DASH"],

	-- 소켓 옵션 적용
	SOCKET_OPTION = { 71500, 71502,},
}

g_pRidingPetManager:AddRidingPetTemplet
{
	RIDING_PET_ID	= RIDING_PET_UNIT_ID["RPUI_ICE_HAMELING"],
	COMMON_NAME		= STR_ID_29473,

	STAMINA_INCREASE_RATE	= 1.0,
	STAMINA_RECOVERY_RATE	= 1,
	SCRIPTNAME	= "RidingPet_Ice_Hameling.lua",
	FACE_IMAGE = { "DLG_UI_Common_Texture_RidingPet_01.tga", "RIDING_ICE_HAMELING", },

	VIEWER_SIZE_X = 0.6,		-- 뷰어에서 몬스터 크기 X
	VIEWER_SIZE_Y = 0.6,		-- 뷰어에서 몬스터 크기 Y
	VIEWER_SIZE_Z = 0.6,		-- 뷰어에서 몬스터 크기 Z
	
	DESCRIPTION = STR_ID_26915, --탈 것 상세 설명
	
	-- 공격
	ATTACK_SKILL_INFO =
	{
		-- 스킬 이미지 파일,			이미지 키값			스킬명			스킬 설명	   마나	  쿨타임
		{ "DLG_SKILL_RIDING_01.tga", "ICE_HAMELING_Z", STR_ID_24357, STR_ID_26907,		0,		0.1, },	-- Attack Z
		{ "DLG_SKILL_RIDING_01.tga", "ICE_HAMELING_X", STR_ID_24358, STR_ID_26908,		0,		5, },	-- Attack X
		{ "DLG_SKILL_RIDING_01.tga", "ICE_HAMELING_C", STR_ID_26909, STR_ID_26910,		150,	10, },	-- Special Attack
	},
	
	-- 버프
	BUFF_SKILL_INFO =
	{
		--{ "DLG_SKILL_RIDING.tga", "RIDING_BUFF_GROUP", STR_ID_24371, STR_ID_24375, },	-- 파티 버프
		{ "DLG_SKILL_RIDING.tga", "RIDING_BUFF_SINGLE", STR_ID_26911, STR_ID_26912, BUFF_FACTOR_ID["BFI_BUFF_WHEN_RIDE_ON_PET_FOR_ONLY_MASTER_FIX"], },	-- 탑승 버프
		{ "DLG_SKILL_RIDING.tga", "RIDING_BUFF_NORMAL", STR_ID_26913, STR_ID_26914, },	-- 속도 증가
	},

	-- 특수 이동
	SPECIAL_MOVE = RIDING_SPECIAL_MOVE["RSM_AIR_DASH"],

	-- 소켓 옵션 적용
	SOCKET_OPTION = { 71501, 71504,},	--프로즌 발동 확률 +2%, 쇼크 발동 확률 +2%
}

g_pRidingPetManager:AddRidingPetTemplet 
{
	RIDING_PET_ID	= RIDING_PET_UNIT_ID["RPUI_DARK_HAMELING"],
	COMMON_NAME		= STR_ID_29474,

	STAMINA_INCREASE_RATE	= 1.0,
	STAMINA_RECOVERY_RATE	= 1,
	SCRIPTNAME	= "RidingPet_Dark_Hameling.lua",
	FACE_IMAGE = { "DLG_UI_Common_Texture_RidingPet_01.tga", "RIDING_DARK_HAMELING", },

	VIEWER_SIZE_X = 0.6,		-- 뷰어에서 몬스터 크기 X
	VIEWER_SIZE_Y = 0.6,		-- 뷰어에서 몬스터 크기 Y
	VIEWER_SIZE_Z = 0.6,		-- 뷰어에서 몬스터 크기 Z
	
	DESCRIPTION = STR_ID_27348, --탈 것 상세 설명	//	다크 하멜링\n어린 화이트 드래곤인 화이트 헤츨링의 아종.\n마족들의 마기에 영향을 받아 외형과 성격이 변하였다.\n높은 프라이드 만큼 흉폭한 성격을 지니고 있지만,\n한 번 인정한 대상은 끝까지 지켜준다고 한다.\n#CFF0000던전/필드에서 탑승 시 스테미너가 소모.#CX\n#CFF0000탑승하고 있지 않거나 마을에서는 자동으로 스테미너가 회복 됩니다.#CX
	
	-- 공격
	ATTACK_SKILL_INFO =
	{
		-- 스킬 이미지 파일,			이미지 키값			스킬명			스킬 설명	   마나	  쿨타임
		{ "DLG_SKILL_RIDING_01.tga", "DARK_HAMELING_Z", STR_ID_24357, STR_ID_27349,		0,		0.1, },	-- Attack Z
		{ "DLG_SKILL_RIDING_01.tga", "DARK_HAMELING_X", STR_ID_24358, STR_ID_27350,		0,		5, },	-- Attack X
		{ "DLG_SKILL_RIDING_01.tga", "DARK_HAMELING_C", STR_ID_27354, STR_ID_27351,		150,	10, },	-- Special Attack
	},
	
	-- 버프
	BUFF_SKILL_INFO =
	{
		--{ "DLG_SKILL_RIDING.tga", "RIDING_BUFF_GROUP", STR_ID_24371, STR_ID_24375, },	-- 파티 버프
		{ "DLG_SKILL_RIDING.tga", "RIDING_BUFF_SINGLE", STR_ID_26911, STR_ID_27352, BUFF_FACTOR_ID["BFI_BUFF_WHEN_RIDE_ON_PET_FOR_ONLY_MASTER_FIX"], },	-- 탑승 버프
		{ "DLG_SKILL_RIDING.tga", "RIDING_BUFF_NORMAL", STR_ID_26913, STR_ID_27353, },	-- 속도 증가
	},

	-- 특수 이동
	SPECIAL_MOVE = RIDING_SPECIAL_MOVE["RSM_AIR_DASH"],

	-- 소켓 옵션 적용
	SOCKET_OPTION = { 71505, 71503,},	--스내치 발동 확률 +2%, 포이즌 발동 확률 +2%
}

g_pRidingPetManager:AddRidingPetTemplet 
{
	RIDING_PET_ID	= RIDING_PET_UNIT_ID["RPUI_RED_HAMELING"],
	COMMON_NAME		= STR_ID_29475,

	STAMINA_INCREASE_RATE	= 1.0,
	STAMINA_RECOVERY_RATE	= 1,
	SCRIPTNAME	= "RidingPet_Red_Hameling.lua",
	FACE_IMAGE = { "DLG_UI_Common_Texture_RidingPet_01.tga", "RIDING_RED_HAMELING", },

	VIEWER_SIZE_X = 0.6,		-- 뷰어에서 몬스터 크기 X
	VIEWER_SIZE_Y = 0.6,		-- 뷰어에서 몬스터 크기 Y
	VIEWER_SIZE_Z = 0.6,		-- 뷰어에서 몬스터 크기 Z
	
	DESCRIPTION = STR_ID_27355, --탈 것 상세 설명	//	레드 하멜링\n화염 분지에서 서식하는 화이트 헤츨링의 아종으로,\n태생부터 화염에 면역을 지니고 있다. 환경 탓인지 모르지만\n매우 다혈질이나 평소에는 온순하다고 한다.\n무엇때문에 화가 나는지는 불명.\n#CFF0000던전/필드에서 탑승 시 스테미너가 소모.#CX\n#CFF0000탑승하고 있지 않거나 마을에서는 자동으로 스테미너가 회복 됩니다.#CX
	
	-- 공격
	ATTACK_SKILL_INFO =
	{
		-- 스킬 이미지 파일,			이미지 키값			스킬명			스킬 설명	   마나	  쿨타임
		{ "DLG_SKILL_RIDING_01.tga", "RED_HAMELING_Z", STR_ID_24357, STR_ID_27356,		0,		0.1, },	-- Attack Z
		{ "DLG_SKILL_RIDING_01.tga", "RED_HAMELING_X", STR_ID_24358, STR_ID_27357,		0,		5, },	-- Attack X
		{ "DLG_SKILL_RIDING_01.tga", "RED_HAMELING_C", STR_ID_27361, STR_ID_27358,		150,	10, },	-- Special Attack
	},
	
	-- 버프
	BUFF_SKILL_INFO =
	{
		--{ "DLG_SKILL_RIDING.tga", "RIDING_BUFF_GROUP", STR_ID_24371, STR_ID_24375, },	-- 파티 버프
		{ "DLG_SKILL_RIDING.tga", "RIDING_BUFF_SINGLE", STR_ID_26911, STR_ID_27359, BUFF_FACTOR_ID["BFI_BUFF_WHEN_RIDE_ON_PET_FOR_ONLY_MASTER_FIX"], },	-- 탑승 버프
		{ "DLG_SKILL_RIDING.tga", "RIDING_BUFF_NORMAL", STR_ID_26913, STR_ID_27360, },	-- 속도 증가
	},

	-- 특수 이동
	SPECIAL_MOVE = RIDING_SPECIAL_MOVE["RSM_AIR_DASH"],

	-- 소켓 옵션 적용
	SOCKET_OPTION = { 71500, 71505,},	--블레이즈 발동 확률 +2%, 스내치 발동 확률 +2%
}



---------------
-- 해외 전용 --
---------------


g_pRidingPetManager:AddRidingPetTemplet
{
	RIDING_PET_ID	= RIDING_PET_UNIT_ID["RPUI_NASOD_MOBI_INT"],
	COMMON_NAME		= STR_ID_29463,

	STAMINA_INCREASE_RATE	= 1.0,  ---k 값
	STAMINA_RECOVERY_RATE	= 1,	---Z 값
	SCRIPTNAME	= "RidingPet_Nasod_Mobi.lua",
	FACE_IMAGE = { "DLG_UI_Common_Texture_RidingPet_01.tga", "RIDING_MOBI", },
	
	VIEWER_SIZE_X = 0.6,		-- 뷰어에서 몬스터 크기 X
	VIEWER_SIZE_Y = 0.6,		-- 뷰어에서 몬스터 크기 Y
	VIEWER_SIZE_Z = 0.6,		-- 뷰어에서 몬스터 크기 Z
	
	DESCRIPTION = STR_ID_24353, --탈 것 상세 설명
	
	-- 공격
	ATTACK_SKILL_INFO =
	{
		-- 스킬 이미지 파일,			이미지 키값			스킬명			스킬 설명		마나	쿨타임
		{ "DLG_SKILL_RIDING.tga",	"RIDING_MOBI_Z",	STR_ID_24357,	STR_ID_24350,	0,		0.1, },	-- Attack Z
		{ "DLG_SKILL_RIDING.tga",	"RIDING_MOBI_X",	STR_ID_24358,	STR_ID_24351,	0,		5, },	-- Attack X
		{ "DLG_SKILL_RIDING.tga",	"RIDING_MOBI_C",	STR_ID_24359,	STR_ID_24352,		150,		10, },	-- Special Attack
	},
	
	-- 버프
	BUFF_SKILL_INFO =
	{
		--{ "DLG_SKILL_RIDING.tga", "RIDING_BUFF_GROUP", STR_ID_24354, STR_ID_24347, },	-- 파티 버프
		{ "DLG_SKILL_RIDING.tga", "RIDING_BUFF_SINGLE", STR_ID_24355, STR_ID_29466, BUFF_FACTOR_ID["BFI_BUFF_WHEN_RIDE_ON_PET_FOR_ONLY_MASTER"], },	-- 탑승 버프
		{ "DLG_SKILL_RIDING.tga", "RIDING_BUFF_NORMAL", STR_ID_24356, STR_ID_24349, },	-- 속도 증가
	},
	
	-- 특수 이동
	SPECIAL_MOVE = RIDING_SPECIAL_MOVE["RSM_BOOST_DASH"],

	-- 소켓 옵션 적용
	SOCKET_OPTION = { 71500, 71502,},  ---소켓 옵션 (속성 발동 확률 증가)

}

g_pRidingPetManager:AddRidingPetTemplet
{
	RIDING_PET_ID	= RIDING_PET_UNIT_ID["RPUI_KOUCIKA_INT"],
	COMMON_NAME		= STR_ID_29464,

	STAMINA_INCREASE_RATE	= 1.0,
	STAMINA_RECOVERY_RATE	= 1,
	SCRIPTNAME	= "RidingPet_Koucika.lua",
	FACE_IMAGE = { "DLG_UI_Common_Texture_RidingPet_01.tga", "RIDING_KOKA", },

	VIEWER_SIZE_X = 0.6,		-- 뷰어에서 몬스터 크기 X
	VIEWER_SIZE_Y = 0.6,		-- 뷰어에서 몬스터 크기 Y
	VIEWER_SIZE_Z = 0.6,		-- 뷰어에서 몬스터 크기 Z
	
	DESCRIPTION = STR_ID_24370, --탈 것 상세 설명
	
	-- 공격
	ATTACK_SKILL_INFO =
	{
		-- 스킬 이미지 파일,			이미지 키값			스킬명			스킬 설명	   마나	  쿨타임
		{ "DLG_SKILL_RIDING.tga", 	"RIDING_KOKA_Z", 		STR_ID_24357, 	STR_ID_24367,	0,		0.1, },	-- Attack Z
		{ "DLG_SKILL_RIDING.tga", 	"RIDING_KOKA_X", 		STR_ID_24358, 	STR_ID_24368,	0,		5, },	-- Attack X
		{ "DLG_SKILL_RIDING.tga", 	"RIDING_KOKA_C", 		STR_ID_24363, 	STR_ID_24369,	150,	10, },	-- Special Attack
	},
	
	-- 버프
	BUFF_SKILL_INFO =
	{
		--{ "DLG_SKILL_RIDING.tga", "RIDING_BUFF_GROUP", STR_ID_24360, STR_ID_24364, },	-- 파티 버프
		{ "DLG_SKILL_RIDING.tga", "RIDING_BUFF_SINGLE", STR_ID_24361, STR_ID_29467, BUFF_FACTOR_ID["BFI_BUFF_WHEN_RIDE_ON_PET_FOR_ONLY_MASTER"], },	-- 탑승 버프
		{ "DLG_SKILL_RIDING.tga", "RIDING_BUFF_NORMAL", STR_ID_24362, STR_ID_24366, },	-- 속도 증가
	},

	-- 특수 이동
	SPECIAL_MOVE = RIDING_SPECIAL_MOVE["RSM_DOUBLE_JUMP"],

	-- 소켓 옵션 적용
	SOCKET_OPTION = { 71503, 71505, },
}

g_pRidingPetManager:AddRidingPetTemplet
{
	RIDING_PET_ID	= RIDING_PET_UNIT_ID["RPUI_ANCIENT_PPORU_INT"],
	COMMON_NAME		= STR_ID_29465,

	STAMINA_INCREASE_RATE	= 1.0,
	STAMINA_RECOVERY_RATE	= 1,
	SCRIPTNAME	= "RidingPet_Ancient_PPoru.lua",
	FACE_IMAGE = { "DLG_UI_Common_Texture_RidingPet_01.tga", "RIDING_ANCIENT_PORU", },

	VIEWER_SIZE_X = 0.6,		-- 뷰어에서 몬스터 크기 X
	VIEWER_SIZE_Y = 0.6,		-- 뷰어에서 몬스터 크기 Y
	VIEWER_SIZE_Z = 0.6,		-- 뷰어에서 몬스터 크기 Z
	
	DESCRIPTION = STR_ID_24381, --탈 것 상세 설명
	
	-- 공격
	ATTACK_SKILL_INFO =
	{
		-- 스킬 이미지 파일,			이미지 키값			스킬명			스킬 설명	   마나	  쿨타임
		{ "DLG_SKILL_RIDING.tga", "RIDING_ANCIENT_PORU_Z", STR_ID_24357, STR_ID_24378,		0,		0.1, },	-- Attack Z
		{ "DLG_SKILL_RIDING.tga", "RIDING_ANCIENT_PORU_X", STR_ID_24358, STR_ID_24379,		0,		5, },	-- Attack X
		{ "DLG_SKILL_RIDING.tga", "RIDING_ANCIENT_PORU_C", STR_ID_24374, STR_ID_24380,		150,	10, },	-- Special Attack
	},
	
	-- 버프
	BUFF_SKILL_INFO =
	{
		--{ "DLG_SKILL_RIDING.tga", "RIDING_BUFF_GROUP", STR_ID_24371, STR_ID_24375, },	-- 파티 버프
		{ "DLG_SKILL_RIDING.tga", "RIDING_BUFF_SINGLE", STR_ID_24372, STR_ID_29468, BUFF_FACTOR_ID["BFI_BUFF_WHEN_RIDE_ON_PET_FOR_ONLY_MASTER"], },	-- 탑승 버프
		{ "DLG_SKILL_RIDING.tga", "RIDING_BUFF_NORMAL", STR_ID_24373, STR_ID_24377, },	-- 속도 증가
	},

	-- 특수 이동
	SPECIAL_MOVE = RIDING_SPECIAL_MOVE["RSM_AIR_DASH"],

	-- 소켓 옵션 적용
	SOCKET_OPTION = { 71500, 71504,},
}