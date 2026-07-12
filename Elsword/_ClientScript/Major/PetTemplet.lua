-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_TEST"],
	COMMON_NAME				= "쁘띠 에이션트 뽀루",

	CAPRICE			    	= 1.3,  -- 변덕
	APPETITE				= 1.15,  -- 식사량

	EVOLUTION_ALL_STEP		= 3, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		0,						-- 알
		1,						-- 유체
		2,						-- 성체
		3,						-- 완전체
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		0,
		4,
		4,
		4,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		0,
		1,
		2,
		3,
	},

	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"BasicPet.lua",
		"PET_ANCIENT_PPORU_STEB_1.lua",
		"PET_ANCIENT_PPORU_STEB_2.lua",
		"PET_ANCIENT_PPORU_STEB_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_PIC", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_A_PPORU_PIC_1", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_A_PPORU_PIC_2", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_A_PPORU_PIC_3", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_GAGE", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_A_PPORU_GAGE_1", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_A_PPORU_GAGE_2", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_A_PPORU_GAGE_3", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_ANCIENT_01", STR_ID_5396, STR_ID_5387, },	-- 1차		
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_ANCIENT_02", STR_ID_5397, STR_ID_5388, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_ANCIENT_03", STR_ID_5398, STR_ID_5389, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6544, },	-- 1차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6545, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	--AURA_SKILL_INFO =
	--{
		--{ "DLG_UI_Common_Texture42_NEW.tga", "PET_SKILL_SLOT_AURA", STR_ID_5403 },	-- 1차		
		--{ "DLG_UI_Common_Texture42_NEW.tga", "PET_SKILL_SLOT_AURA", STR_ID_5403 },	-- 2차
		--{ "DLG_UI_Common_Texture42_NEW.tga", "PET_SKILL_SLOT_AURA", STR_ID_5403 },	-- 3차
	--},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		11202,
		11321,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12022,
		12042,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		13242,
		13342,
	},
}


g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_PETTE_PPORU"],
	COMMON_NAME				= "쁘띠 뽀루",

	CAPRICE			    	= 1,  -- 변덕
	APPETITE				= 1.15,  -- 식사량

	EVOLUTION_ALL_STEP		= 3, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		0,						-- 알
		1,						-- 유체
		2,						-- 기타
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		0,
		1,
		1,
		1,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		0,
		1,
		2,
		3,
	},



	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"BasicPet.lua",
		"PET_PETTE_PPORU_STEB_1.lua",
		"PET_PETTE_PPORU_STEB_2.lua",
		"PET_PETTE_PPORU_STEB_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_PIC", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_PPORU_PIC_1", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_PPORU_PIC_2", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_PPORU_PIC_3", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_GAGE", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_PPORU_GAGE_1", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_PPORU_GAGE_2", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_PPORU_GAGE_3", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_PPORU_01", STR_ID_5393, STR_ID_5384, },	-- 1차		
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_PPORU_02", STR_ID_5394, STR_ID_5385, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_PPORU_03", STR_ID_5395, STR_ID_5386, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6544, },	-- 1차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6545, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ppo_P_01", STR_ID_9069 },	-- 1차		
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ppo_P_02", STR_ID_9070 },	-- 2차
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ppo_P_03", STR_ID_9071 },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		11161,
		11281,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12041,
		12061,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		13322,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
-- #ifdef GLOBAL_PET_COMMAND
		{ STR_ID_13793, },
		{ STR_ID_13794, },
-- #else
--		"굶어!", "밥없어!",
-- #endif GLOBAL_PET_COMMAND
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_PETTE_ANCIENT_PPORU"],
	COMMON_NAME				= "쁘띠 에이션트 뽀루",

	CAPRICE			    	= 1.3,  -- 변덕
	APPETITE				= 1.15,  -- 식사량

	EVOLUTION_ALL_STEP		= 3, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		0,						-- 알
		1,						-- 유체
		2,						-- 성체
		3,						-- 완전체
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		0,
		3,
		3,
		3,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		0,
		1,
		2,
		3,
	},

	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"BasicPet.lua",
		"PET_ANCIENT_PPORU_STEB_1.lua",
		"PET_ANCIENT_PPORU_STEB_2.lua",
		"PET_ANCIENT_PPORU_STEB_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_PIC", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_A_PPORU_PIC_1", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_A_PPORU_PIC_2", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_A_PPORU_PIC_3", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_GAGE", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_A_PPORU_GAGE_1", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_A_PPORU_GAGE_2", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_A_PPORU_GAGE_3", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_ANCIENT_01", STR_ID_5396, STR_ID_5387, },	-- 1차		
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_ANCIENT_02", STR_ID_5397, STR_ID_5388, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_ANCIENT_03", STR_ID_5398, STR_ID_5389, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6544, },	-- 1차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6545, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ap_P_01", STR_ID_9072, },	-- 1차
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ap_P_02", STR_ID_9073, },	-- 2차
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ap_P_03", STR_ID_9074, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		11202,
		11321,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12022,
		12042,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		13242,
		13342,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
-- #ifdef GLOBAL_PET_COMMAND
		{ STR_ID_13795, },
		{ STR_ID_13796, },
-- #else
--		"경배하라!", "경배!",
-- #endif GLOBAL_PET_COMMAND
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_TREE_KNIGHT"],
	COMMON_NAME				= "트리 나이트",

	CAPRICE			    	= 0.7,  -- 변덕
	APPETITE				= 1,  -- 식사량

	EVOLUTION_ALL_STEP		= 3, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		0,						-- 알
		1,						-- 유체
		2,						-- 기타
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		0,
		3,
		3,
		3,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		0,
		1,
		2,
		3,
	},

	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"BasicPet.lua",
		"PET_TREE_KNIGHT_STEB_1.lua",
		"PET_TREE_KNIGHT_STEB_2.lua",
		"PET_TREE_KNIGHT_STEB_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_PIC", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_T_KNIGHT_PIC_1", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_T_KNIGHT_PIC_2", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_T_KNIGHT_PIC_3", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_GAGE", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_T_KNIGHT_GAGE_1", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_T_KNIGHT_GAGE_2", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_T_KNIGHT_GAGE_3", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_TREE_01", STR_ID_5399, STR_ID_5390, },	-- 1차		
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_TREE_02", STR_ID_5400, STR_ID_5391, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_TREE_03", STR_ID_5401, STR_ID_5392, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6544, },	-- 1차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6545, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_01", STR_ID_9075, },	-- 1차
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_02", STR_ID_9076, },	-- 2차
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_03", STR_ID_9077, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		11182,
		11301,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12002,
		12062,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		13242,
		13321,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
-- #ifdef GLOBAL_PET_COMMAND
		{ STR_ID_13797, },
		{ STR_ID_13798, },
-- #else
--		"제식!", "훈련!",
-- #endif GLOBAL_PET_COMMAND
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_PETTE_PPORU_EVENT"],
	COMMON_NAME				= "야생 쁘띠 뽀루",

	CAPRICE			    	= 1,  -- 변덕
	APPETITE				= 1.15,  -- 식사량

	EVOLUTION_ALL_STEP		= 0, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{		
		3,						-- 완전체
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		1,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		3,
	},

	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"PET_PETTE_PPORU_STEB_3_Event.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_WILD_PPO_PIC", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_WILD_PPO_GAGE", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{	
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_PPORU_03", STR_ID_5395, STR_ID_5386, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ppo_P_01", STR_ID_9069, },	-- 1차
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ppo_P_02", STR_ID_9070, },	-- 2차
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ppo_P_03", STR_ID_9071, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		11161,
		11281,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12041,
		12061,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		13322,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
-- #ifdef GLOBAL_PET_COMMAND
		{ STR_ID_13793, },
		{ STR_ID_13794, },
-- #else
--		"굶어!", "밥없어!",
-- #endif GLOBAL_PET_COMMAND
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_PETTE_ANCIENT_PPORU_F"],
	COMMON_NAME				= "쁘띠 에이션트 뽀루",

	CAPRICE			    	= 1.3,  -- 변덕
	APPETITE				= 1.15,  -- 식사량

	EVOLUTION_ALL_STEP		= 0, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{		
		3,						-- 완전체
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		3,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		3,
	},

	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"PET_ANCIENT_PPORU_STEB_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_A_PPORU_PIC_3", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_A_PPORU_GAGE_3", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_ANCIENT_03", STR_ID_5398, STR_ID_5389, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ap_P_01", STR_ID_9072, },	-- 1차
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ap_P_02", STR_ID_9073, },	-- 2차
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ap_P_03", STR_ID_9074, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		11202,
		11321,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12022,
		12042,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		13242,
		13342,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
-- #ifdef GLOBAL_PET_COMMAND
		{ STR_ID_13795, },
		{ STR_ID_13796, },
-- #else
--		"경배하라!", "경배!",
-- #endif GLOBAL_PET_COMMAND
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_TREE_KNIGHT_F"],
	COMMON_NAME				= "트리 나이트",

	CAPRICE			    	= 0.7,  -- 변덕
	APPETITE				= 1,  -- 식사량

	EVOLUTION_ALL_STEP		= 0, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{		
		3,						-- 완전체
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		3,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		3,
	},

	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"PET_TREE_KNIGHT_STEB_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_T_KNIGHT_PIC_3", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_T_KNIGHT_GAGE_3", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_TREE_03", STR_ID_5401, STR_ID_5392, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_01", STR_ID_9075, },	-- 1차
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_02", STR_ID_9076, },	-- 2차
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_03", STR_ID_9077, },	-- 3차
	},
		
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		11182,
		11301,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12002,
		12062,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		13242,
		13321,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
-- #ifdef GLOBAL_PET_COMMAND
		{ STR_ID_13797, },
		{ STR_ID_13798, },
-- #else
--		"제식!", "훈련!",
-- #endif GLOBAL_PET_COMMAND
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_HOLLO_WITCH"],
	COMMON_NAME				= "할로위치",

	CAPRICE			    	= 1.3,  -- 변덕
	APPETITE				= 1.15,  -- 식사량

	EVOLUTION_ALL_STEP		= 3, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		0,						-- 알
		1,						-- 유체
		2,						-- 기타
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		0,
		4,
		4,
		4,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		0,
		1,
		2,
		3,
	},



	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"BasicPet.lua",
		"PET_HOLLO_WITCH_STEB_1.lua",
		"PET_HOLLO_WITCH_STEB_2.lua",
		"PET_HOLLO_WITCH_STEB_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_PIC", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_HOLLOWITCH_PIC_1", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_HOLLOWITCH_PIC_2", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_HOLLOWITCH_PIC_3", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_GAGE", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_HOLLOWITCH_GAGE_1", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_HOLLOWITCH_GAGE_2", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_HOLLOWITCH_GAGE_3", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_HOLLO_01", STR_ID_9051, STR_ID_9054, },	-- 1차		
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_HOLLO_02", STR_ID_9052, STR_ID_9055, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_HOLLO_03", STR_ID_9053, STR_ID_9056, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6544, },	-- 1차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6545, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_hol_P_01", STR_ID_9078, },	-- 1차
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_hol_P_02", STR_ID_9079, },	-- 2차
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_hol_P_03", STR_ID_9080, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		11222,
		11341,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12121,
		12001,
		12021,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		13241,
		13261,
		13282,
		13302,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
-- #ifdef GLOBAL_PET_COMMAND
		{ STR_ID_13799, },
		{ STR_ID_13800, },
-- #else
--		"날틀!", "날아!",
-- #endif GLOBAL_PET_COMMAND
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_HOLLO_WITCH_F"],
	COMMON_NAME				= "할로위치",

	CAPRICE			    	= 1.3,  -- 변덕
	APPETITE				= 1.15,  -- 식사량

	EVOLUTION_ALL_STEP		= 0, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		3,						-- 완전체
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		4,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		3,
	},



	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"PET_HOLLO_WITCH_STEB_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_HOLLOWITCH_PIC_3", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_HOLLOWITCH_GAGE_3", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_HOLLO_03", STR_ID_9053, STR_ID_9056, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_hol_P_01", STR_ID_9078, },	-- 1차
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_hol_P_02", STR_ID_9079, },	-- 2차
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_hol_P_03", STR_ID_9080, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		11222,
		11341,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12121,
		12001,
		12021,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		13241,
		13261,
		13282,
		13302,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
-- #ifdef GLOBAL_PET_COMMAND
		{ STR_ID_13799, },	
		{ STR_ID_13800, },
-- #else
--		"날틀!", "날아!",
-- #endif GLOBAL_PET_COMMAND
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_XMAS2010_PPORU"],
	COMMON_NAME				= "루돌뽀",

	CAPRICE			    	= 1.15,  -- 변덕
	APPETITE				= 1.15,  -- 식사량

	EVOLUTION_ALL_STEP		= 0, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		3,						-- 완전체
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		4,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		3,
	},



	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"PET_PETTE_PPORU_XMAS2010_STEB_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EVENT_PPO_PIC", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EVENT_PPO_GAGE", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben.tga", "PET_EVENT_PPO_SKILL1", STR_ID_9993, STR_ID_9992, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "PET_EVENT_PPO_P_01", STR_ID_9989, },	-- 1차
		{ "DLG_SKILL_Pet_P_01.tga", "PET_EVENT_PPO_P_02", STR_ID_9990, },	-- 2차
		{ "DLG_SKILL_Pet_P_01.tga", "PET_EVENT_PPO_P_03", STR_ID_9991, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		11142, 
		11261,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		1305, 
		12042, 
		12062,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		1501, 
		2404, 

	},
	
	SPECIAL_ACTION_COMMAND =
	{
-- #ifdef GLOBAL_PET_COMMAND
		{ STR_ID_13801, },
-- #else
--		"선물없어!",
-- #endif GLOBAL_PET_COMMAND
	},
}


g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_MYSTIC_NORM"],
	COMMON_NAME				= "미스틱",

	CAPRICE			    	= 0.8,  -- 변덕
	APPETITE				= 1.2,  -- 식사량

	EVOLUTION_ALL_STEP		= 3, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		0,						-- 알
		1,						-- 유체
		2,						-- 기타
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		0,
		3,
		3,
		3,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		0,
		1,
		2,
		3,
	},



	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"BasicPet.lua",
		"PET_Mystic_Norm_1.lua",
		"PET_Mystic_Norm_2.lua",
		"PET_Mystic_Norm_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_PIC", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_NASOD_PIC_1", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_NASOD_PIC_2", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_NASOD_PIC_3", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_GAGE", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_NASOD_GAGE_1", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_NASOD_GAGE_2", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_NASOD_GAGE_3", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben.tga", "missile_1", STR_ID_11528, STR_ID_11531, },	-- 1차		
		{ "DLG_SKILL_Pet_Ruben.tga", "missile_2", STR_ID_11529, STR_ID_11532, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben2.tga", "missile_3", STR_ID_11530, STR_ID_11533, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6544, },	-- 1차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6545, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "PET_NASOD_P_01", STR_ID_11523, },	-- 1차
		{ "DLG_SKILL_Pet_P_02.tga", "PET_NASOD_P_02", STR_ID_11524, },	-- 2차
		{ "DLG_SKILL_Pet_P_02.tga", "PET_NASOD_P_03", STR_ID_11525, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		3720,
		11241,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12002,
		12022,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		1602,
		4500,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
-- #ifdef GLOBAL_PET_COMMAND
		{ STR_ID_17223, },
		{ STR_ID_17224, },
		{ STR_ID_17225, },
		{ STR_ID_17226, },
-- #else
--		"발사!", "불꽃놀이!", "불꽃!", "폭죽!",
-- #endif GLOBAL_PET_COMMAND
	},
}
g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_MYSTIC_BLK"],
	COMMON_NAME				= "미스틱 - 블랙",

	CAPRICE			    	= 0.8,  -- 변덕
	APPETITE				= 1.2,  -- 식사량

	EVOLUTION_ALL_STEP		= 3, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		0,						-- 알
		1,						-- 유체
		2,						-- 기타
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		0,
		4,
		4,
		4,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		0,
		1,
		2,
		3,
	},



	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"BasicPet.lua",
		"PET_Mystic_Blk_1.lua",
		"PET_Mystic_Blk_2.lua",
		"PET_Mystic_Blk_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_PIC", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_NASOD_Y_PIC_1", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_NASOD_Y_PIC_2", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_NASOD_Y_PIC_3", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_GAGE", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_NASOD_Y_GAGE_1", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_NASOD_Y_GAGE_2", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_NASOD_Y_GAGE_3", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben.tga", "missile_1", STR_ID_11528, STR_ID_11531, },	-- 1차		
		{ "DLG_SKILL_Pet_Ruben.tga", "missile_2", STR_ID_11529, STR_ID_11532, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben2.tga", "missile_3", STR_ID_11530, STR_ID_11533, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6544, },	-- 1차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6545, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "PET_NASOD_P_01", STR_ID_11523, },	-- 1차
		{ "DLG_SKILL_Pet_P_02.tga", "PET_NASOD_P_02", STR_ID_11526, },	-- 2차
		{ "DLG_SKILL_Pet_P_02.tga", "PET_NASOD_P_03", STR_ID_11527, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		3720,
		11241,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12121,
		12001, 
		12021,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		1602,
		4500,
		1701,
		1901,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
-- #ifdef GLOBAL_PET_COMMAND
		{ STR_ID_17223, },
		{ STR_ID_17224, },
		{ STR_ID_17225, },
		{ STR_ID_17226, },
-- #else
--		"발사!", "불꽃놀이!", "불꽃!", "폭죽!",
-- #endif GLOBAL_PET_COMMAND
	},
}
g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_MYSTIC_WHT"],
	COMMON_NAME				= "미스틱 - 화이트",

	CAPRICE			    	= 0.8,  -- 변덕
	APPETITE				= 1.2,  -- 식사량

	EVOLUTION_ALL_STEP		= 3, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		0,						-- 알
		1,						-- 유체
		2,						-- 기타
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		0,
		4,
		4,
		4,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		0,
		1,
		2,
		3,
	},



	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"BasicPet.lua",
		"PET_Mystic_Wht_1.lua",
		"PET_Mystic_Wht_2.lua",
		"PET_Mystic_Wht_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_PIC", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_NASOD_WH_PIC_1", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_NASOD_WH_PIC_2", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_NASOD_WH_PIC_3", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_GAGE", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_NASOD_WH_GAGE_1", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_NASOD_WH_GAGE_2", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_NASOD_WH_GAGE_3", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben.tga", "missile_1", STR_ID_11528, STR_ID_11531, },	-- 1차		
		{ "DLG_SKILL_Pet_Ruben.tga", "missile_2", STR_ID_11529, STR_ID_11532, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben2.tga", "missile_3", STR_ID_11530, STR_ID_11533, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6544, },	-- 1차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6545, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "PET_NASOD_P_01", STR_ID_11523, },	-- 1차
		{ "DLG_SKILL_Pet_P_02.tga", "PET_NASOD_P_02", STR_ID_11526, },	-- 2차
		{ "DLG_SKILL_Pet_P_02.tga", "PET_NASOD_P_03", STR_ID_11527, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		3720,
		11241,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12121,
		12001,
		12021,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		1602,
		4500,
		1701,
		1901,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
-- #ifdef GLOBAL_PET_COMMAND
		{ STR_ID_17223, },
		{ STR_ID_17224, },
		{ STR_ID_17225, },
		{ STR_ID_17226, },
-- #else
--		"발사!", "불꽃놀이!", "불꽃!", "폭죽!",
-- #endif GLOBAL_PET_COMMAND
	},
}
g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_MYSTIC_RED"],
	COMMON_NAME				= "미스틱 - 레드",

	CAPRICE			    	= 0.8,  -- 변덕
	APPETITE				= 1.2,  -- 식사량

	EVOLUTION_ALL_STEP		= 3, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		0,						-- 알
		1,						-- 유체
		2,						-- 기타
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		0,
		4,
		4,
		4,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		0,
		1,
		2,
		3,
	},



	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"BasicPet.lua",
		"PET_Mystic_Red_1.lua",
		"PET_Mystic_Red_2.lua",
		"PET_Mystic_Red_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_PIC", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_NASOD_R_PIC_1", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_NASOD_R_PIC_2", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_NASOD_R_PIC_3", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_GAGE", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_NASOD_R_GAGE_1", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_NASOD_R_GAGE_2", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_NASOD_R_GAGE_3", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben.tga", "missile_1", STR_ID_11528, STR_ID_11531, },	-- 1차		
		{ "DLG_SKILL_Pet_Ruben.tga", "missile_2", STR_ID_11529, STR_ID_11532, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben2.tga", "missile_3", STR_ID_11530, STR_ID_11533, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6544, },	-- 1차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6545, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "PET_NASOD_P_01", STR_ID_11523, },	-- 1차
		{ "DLG_SKILL_Pet_P_02.tga", "PET_NASOD_P_02", STR_ID_11526, },	-- 2차
		{ "DLG_SKILL_Pet_P_02.tga", "PET_NASOD_P_03", STR_ID_11527, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		3720,
		11241,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12121,
		12001,
		12021,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		1602,
		4500,
		1701,
		1901,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
-- #ifdef GLOBAL_PET_COMMAND
		{ STR_ID_17223, },
		{ STR_ID_17224, },
		{ STR_ID_17225, },
		{ STR_ID_17226, },
-- #else
--		"발사!", "불꽃놀이!", "불꽃!", "폭죽!",
-- #endif GLOBAL_PET_COMMAND
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_HATCHLING_NORM"],
	COMMON_NAME				= "해츨링",

	CAPRICE			    	= 1.0,  -- 변덕
	APPETITE				= 1.0,  -- 식사량

	EVOLUTION_ALL_STEP		= 3, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		0,						-- 알
		1,						-- 유체
		2,						-- 기타
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		0,
		4,
		4,
		4,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		0,
		1,
		2,
		3,
	},



	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"BasicPet.lua",
		"PET_Haech_Ice_1.lua",
		"PET_Haech_Ice_2.lua",
		"PET_Haech_Ice_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_PIC", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_DRAGON_NORMAL_PIC_1", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_DRAGON_NORMAL_PIC_2", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_DRAGON_NORMAL_PIC_3", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_GAGE", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_DRAGON_NORMAL_1", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_DRAGON_NORMAL_2", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_DRAGON_NORMAL_3", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben2.tga", "BREATHE_ICE", STR_ID_13732, STR_ID_13721, },	-- 1차		
		{ "DLG_SKILL_Pet_Ruben2.tga", "BREATHE_ICE", STR_ID_13733, STR_ID_13722, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben2.tga", "BREATHE_ICE", STR_ID_13734, STR_ID_13723, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6544, },	-- 1차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6545, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_02.tga", "PET_DRAGON_P_01", STR_ID_9989, },	-- 1차
		{ "DLG_SKILL_Pet_P_02.tga", "PET_DRAGON_P_02", STR_ID_13725, },	-- 2차
		{ "DLG_SKILL_Pet_P_02.tga", "PET_DRAGON_P_03", STR_ID_13726, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		3760,
		11261,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12044,
		12064,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		40004,
		40502,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
-- #ifdef GLOBAL_PET_COMMAND
		{ STR_ID_17227, },
		{ STR_ID_17228, },
-- #else
--		"뿜어!",
-- #endif GLOBAL_PET_COMMAND
	},
}
g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_HATCHLING_DARK"],
	COMMON_NAME				= "해츨링 - 다크",

	CAPRICE			    	= 1.3,  -- 변덕
	APPETITE				= 1.3,  -- 식사량

	EVOLUTION_ALL_STEP		= 3, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		0,						-- 알
		1,						-- 유체
		2,						-- 기타
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		0,
		4,
		4,
		4,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		0,
		1,
		2,
		3,
	},



	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"BasicPet.lua",
		"PET_Haech_Dark_1.lua",
		"PET_Haech_Dark_2.lua",
		"PET_Haech_Dark_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_PIC", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_DRAGON_DARK_PIC_1", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_DRAGON_DARK_PIC_2", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_DRAGON_DARK_PIC_3", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_GAGE", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_DRAGON_DARK_1", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_DRAGON_DARK_2", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_DRAGON_DARK_3", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben2.tga", "BREATHE_DARK", STR_ID_13732, STR_ID_13721, },	-- 1차		
		{ "DLG_SKILL_Pet_Ruben2.tga", "BREATHE_DARK", STR_ID_13733, STR_ID_13722, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben2.tga", "BREATHE_DARK", STR_ID_13734, STR_ID_13723, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6544, },	-- 1차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6545, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_02.tga", "PET_DRAGON_P_01", STR_ID_13730, },	-- 1차
		{ "DLG_SKILL_Pet_P_02.tga", "PET_DRAGON_P_02", STR_ID_13728, },	-- 2차
		{ "DLG_SKILL_Pet_P_02.tga", "PET_DRAGON_P_03", STR_ID_13729, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		11222,
		11341,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12002,
		12022, 
		12041,
		12061,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		40104,
		40502,
		40902,
		40802,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
-- #ifdef GLOBAL_PET_COMMAND
		{ STR_ID_17227, },
		{ STR_ID_17228, },
-- #else
--		"뿜어!",
-- #endif GLOBAL_PET_COMMAND
	},
}
g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_HATCHLING_FIRE"],
	COMMON_NAME				= "해츨링 - 파이어",

	CAPRICE			    	= 1.3,  -- 변덕
	APPETITE				= 1.3,  -- 식사량

	EVOLUTION_ALL_STEP		= 3, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		0,						-- 알
		1,						-- 유체
		2,						-- 기타
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		0,
		4,
		4,
		4,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		0,
		1,
		2,
		3,
	},



	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"BasicPet.lua",
		"PET_Haech_Fire_1.lua",
		"PET_Haech_Fire_2.lua",
		"PET_Haech_Fire_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_PIC", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_DRAGON_FIRE_PIC_1", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_DRAGON_FIRE_PIC_2", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_DRAGON_FIRE_PIC_3", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_GAGE", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_DRAGON_FIRE_1", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_DRAGON_FIRE_2", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_DRAGON_FIRE_3", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben2.tga", "BREATHE_FIRE", STR_ID_13732, STR_ID_13721, },	-- 1차		
		{ "DLG_SKILL_Pet_Ruben2.tga", "BREATHE_FIRE", STR_ID_13733, STR_ID_13722, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben2.tga", "BREATHE_FIRE", STR_ID_13734, STR_ID_13723, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6544, },	-- 1차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6545, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_02.tga", "PET_DRAGON_P_01", STR_ID_13999, },	-- 1차
		{ "DLG_SKILL_Pet_P_02.tga", "PET_DRAGON_P_02", STR_ID_13728, },	-- 2차
		{ "DLG_SKILL_Pet_P_02.tga", "PET_DRAGON_P_03", STR_ID_13729, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		3720,
		11241,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12002,
		12022,
		12041,
		12061,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		40104,
		40502,
		40902,
		40802,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
-- #ifdef GLOBAL_PET_COMMAND
		{ STR_ID_17227, },
		{ STR_ID_17228, },
-- #else
--		"뿜어!",
-- #endif GLOBAL_PET_COMMAND
	},
}
g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_HATCHLING_LIGHT"],
	COMMON_NAME				= "해츨링 - 라이트",

	CAPRICE			    	= 1.3,  -- 변덕
	APPETITE				= 1.3,  -- 식사량

	EVOLUTION_ALL_STEP		= 3, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		0,						-- 알
		1,						-- 유체
		2,						-- 기타
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		0,
		4,
		4,
		4,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		0,
		1,
		2,
		3,
	},



	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"BasicPet.lua",
		"PET_Haech_Light_1.lua",
		"PET_Haech_Light_2.lua",
		"PET_Haech_Light_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_PIC", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_DRAGON_LIGHT_PIC_1", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_DRAGON_LIGHT_PIC_2", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_DRAGON_LIGHT_PIC_3", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_GAGE", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_DRAGON_LIGHT_1", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_DRAGON_LIGHT_2", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_DRAGON_LIGHT_3", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben2.tga", "BREATHE_LIGHT", STR_ID_13732, STR_ID_13721, },	-- 1차		
		{ "DLG_SKILL_Pet_Ruben2.tga", "BREATHE_LIGHT", STR_ID_13733, STR_ID_13722, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben2.tga", "BREATHE_LIGHT", STR_ID_13734, STR_ID_13723, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6544, },	-- 1차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6545, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_02.tga", "PET_DRAGON_P_01", STR_ID_13731, },	-- 1차
		{ "DLG_SKILL_Pet_P_02.tga", "PET_DRAGON_P_02", STR_ID_13728, },	-- 2차
		{ "DLG_SKILL_Pet_P_02.tga", "PET_DRAGON_P_03", STR_ID_13729, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		11202,
		11321,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12002,
		12022,
		12041,
		12061,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		40104,
		40502,
		40902,
		40802,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
-- #ifdef GLOBAL_PET_COMMAND
		{ STR_ID_17227, },
		{ STR_ID_17228, },
-- #else
--		"뿜어!",
-- #endif GLOBAL_PET_COMMAND
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_PETIT_ANCIENT_HALLOW_DARK"],
	COMMON_NAME				= "검은 쁘띠 에이션트 뽀루",

	CAPRICE			    	= 1.2,  -- 변덕
	APPETITE				= 1.3,  -- 식사량

	EVOLUTION_ALL_STEP		= 0, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		3,						-- 완전체
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		4,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		3,
	},

	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"PET_ANCIENT_PPORU_HALLOW_DARK.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_HALLOW_A_PPORU_DARK_PIC", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_HALLOW_A_PPORU_DARK_GAGE", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_ANCIENT_03", STR_ID_5398, STR_ID_5389, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_02.tga", "PETIT_ANCIENT_HALLOW_DARK_SKILL", STR_ID_9072, },	-- 1차
		{ "DLG_SKILL_Pet_P_02.tga", "PETIT_ANCIENT_HALLOW_SPIRITS_SKILL", STR_ID_14587, },	-- 2차
		{ "DLG_SKILL_Pet_P_02.tga", "PETIT_ANCIENT_HALLOW_ATTITUDE_SKILL", STR_ID_14588, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		11222,
		11341,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12121,
		12021,
		12041,
		12061,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		40002,
		1903,
		2703,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
-- #ifdef GLOBAL_PET_COMMAND
		{ STR_ID_17229, },
-- #else
--		"재간둥이!",
-- #endif GLOBAL_PET_COMMAND
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_PETIT_ANCIENT_HALLOW_FLAME"],
	COMMON_NAME				= "불꽃 쁘띠 에이션트 뽀루",

	CAPRICE			    	= 1.2,  -- 변덕
	APPETITE				= 1.3,  -- 식사량

	EVOLUTION_ALL_STEP		= 0, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		3,						-- 완전체
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		4,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		3,
	},

	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"PET_ANCIENT_PPORU_HALLOW_FLAME.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_HALLOW_A_PPORU_FLAME_PIC", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_HALLOW_A_PPORU_FLAME_GAGE", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_ANCIENT_03", STR_ID_5398, STR_ID_5389, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_02.tga", "PETIT_ANCIENT_HALLOW_FLAME_SKILL", STR_ID_9072, },	-- 1차
		{ "DLG_SKILL_Pet_P_02.tga", "PETIT_ANCIENT_HALLOW_SPIRITS_SKILL", STR_ID_14587, },	-- 2차
		{ "DLG_SKILL_Pet_P_02.tga", "PETIT_ANCIENT_HALLOW_ATTITUDE_SKILL", STR_ID_14588, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		3720,
		11241,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12121,
		12021,
		12041,
		12061,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		40002,
		1903,
		2703,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
-- #ifdef GLOBAL_PET_COMMAND
		{ STR_ID_17229, },
-- #else
--		"재간둥이!",
-- #endif GLOBAL_PET_COMMAND
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_PETIT_ANCIENT_HALLOW_SPOOK"],
	COMMON_NAME				= "유령 쁘띠 에이션트 뽀루",

	CAPRICE			    	= 1.2,  -- 변덕
	APPETITE				= 1.3,  -- 식사량

	EVOLUTION_ALL_STEP		= 0, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		3,						-- 완전체
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		4,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		3,
	},

	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"PET_ANCIENT_PPORU_HALLOW_SPOOK.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_HALLOW_A_PPORU_SPOOK_PIC", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_HALLOW_A_PPORU_SPOOK_GAGE", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_ANCIENT_03", STR_ID_5398, STR_ID_5389, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_02.tga", "PETIT_ANCIENT_HALLOW_SPOOK_SKILL", STR_ID_9072, },	-- 1차
		{ "DLG_SKILL_Pet_P_02.tga", "PETIT_ANCIENT_HALLOW_SPIRITS_SKILL", STR_ID_14587, },	-- 2차
		{ "DLG_SKILL_Pet_P_02.tga", "PETIT_ANCIENT_HALLOW_ATTITUDE_SKILL", STR_ID_14588, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		3760,
		11261,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12121,
		12021,
		12041,
		12061,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		40002,
		1903,
		2703,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
-- #ifdef GLOBAL_PET_COMMAND
		{ STR_ID_17229, },
-- #else
--		"재간둥이!",
-- #endif GLOBAL_PET_COMMAND
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_PETIT_ANCIENT_HALLOW_SPRITE"],
	COMMON_NAME				= "정령 쁘띠 에이션트 뽀루",

	CAPRICE			    	= 1.2,  -- 변덕
	APPETITE				= 1.3,  -- 식사량

	EVOLUTION_ALL_STEP		= 0, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		3,						-- 완전체
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		4,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		3,
	},

	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"PET_ANCIENT_PPORU_HALLOW_SPRITE.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_HALLOW_A_PPORU_SPRITE_PIC", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_HALLOW_A_PPORU_SPRITE_GAGE", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_ANCIENT_03", STR_ID_5398, STR_ID_5389, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ap_P_01", STR_ID_9072, },	-- 1차
		{ "DLG_SKILL_Pet_P_02.tga", "PETIT_ANCIENT_HALLOW_SPIRITS_SKILL", STR_ID_14587, },	-- 2차
		{ "DLG_SKILL_Pet_P_02.tga", "PETIT_ANCIENT_HALLOW_ATTITUDE_SKILL", STR_ID_14588, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		11202,
		11321,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12121,
		12021,
		12041,
		12061,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		40002,
		1903,
		2703,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
-- #ifdef GLOBAL_PET_COMMAND
		{ STR_ID_17229, },
-- #else
--		"재간둥이!",
-- #endif GLOBAL_PET_COMMAND
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_PETIT_PPORU_BOOMHILL"],
	COMMON_NAME				= "붐힐 쁘띠 뽀루",

	CAPRICE			    	= 1,  -- 변덕
	APPETITE				= 1.15,  -- 식사량

	EVOLUTION_ALL_STEP		= 0, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{		
		3,						-- 완전체
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		1,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		3,
	},

	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"PET_PETIT_PPORU_BOOMHILL_STEB_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_BUBBLE_PPO_PIC", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_BUBBLE_PPO_GAGE", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{	
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_PPORU_03", STR_ID_5395, STR_ID_5386, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ppo_P_01", STR_ID_14956, },	-- 1차
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ppo_P_02", STR_ID_9070, },	-- 2차
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ppo_P_03", STR_ID_9071, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		3750,
		11261,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12041,
		12061,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		13322,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
		"물총쏜다!",
		"쏜다!",
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_TREE_KNIGHT_XMAS2011"],
	COMMON_NAME				= "크리스마스 트리 나이트",

	CAPRICE			    	= 1.3,  -- 변덕
	APPETITE				= 1.3,  -- 식사량

	EVOLUTION_ALL_STEP		= 0, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		4,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		3,
	},

	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"PET_TREE_KNIGHT_XMAS2011.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_TREE_T_KNIGHT_PIC", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_TREE_T_KNIGHT_GAGE", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben2.TGA", "PET_CHRISTMAS", STR_ID_15454, STR_ID_15453, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_02.tga", "PET_CHRIST_P_01", STR_ID_15425, },	-- 1차
		{ "DLG_SKILL_Pet_P_02.tga", "PET_CHRIST_P_02", STR_ID_15426, },	-- 2차
		{ "DLG_SKILL_Pet_P_02.tga", "PET_JOYOUS", STR_ID_15427, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		3750,
		3790,
		11261,
		11281,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12121,
		12001,
		12041,
		12061,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		40102,
		1903,
		2703,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
-- #ifdef GLOBAL_PET_COMMAND
		{ STR_ID_20364, }, 
		{ STR_ID_20365, },
-- #else
--		"퍼레이드!", "축제행렬!",
-- #endif GLOBAL_PET_COMMAND
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_TREE_KNIGHT_SANTA2011"],
	COMMON_NAME				= "산타 트리 나이트",

	CAPRICE			    	= 1.3,  -- 변덕
	APPETITE				= 1.3,  -- 식사량

	EVOLUTION_ALL_STEP		= 0, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이 (최대 4)
	{
		4,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이 (최대 3)
	{
		3,
	},

	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"PET_TREE_KNIGHT_SANTA2011.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_SANTA_T_KNIGHT_PIC", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_SANTA_T_KNIGHT_GAGE", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben2.TGA", "PET_CHRISTMAS", STR_ID_15454, STR_ID_15453, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_02.tga", "PET_SANTA_P_01", STR_ID_15428, },	-- 1차
		{ "DLG_SKILL_Pet_P_02.tga", "PET_SANTA_P_02", STR_ID_14587, },	-- 2차
		{ "DLG_SKILL_Pet_P_02.tga", "PET_JOYOUS", STR_ID_15427, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		3710,
		3910,
		11241,
		11341,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12121,
		12021,
		12041,
		12061,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		40102,
		1903,
		2703,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
-- #ifdef GLOBAL_PET_COMMAND
		{ STR_ID_20364, }, 
		{ STR_ID_20365, },
-- #else
--		"퍼레이드!", "축제행렬!",
-- #endif GLOBAL_PET_COMMAND
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_PETIT_LIGHTBRINGER_UNIEL"],
	COMMON_NAME				= "유니엘-더 라이트 브링어",

	CAPRICE			    	= 0.7,  -- 변덕
	APPETITE				= 1,  -- 식사량

	EVOLUTION_ALL_STEP		= 3, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		0,						-- 알
		1,						-- 유체
		2,						-- 기타
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		0,
		3,
		3,
		3,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		0,
		1,
		2,
		3,
	},



	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		47700,
		190800,
		381600,
		667800,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"BasicPet.lua",
		"PET_Petit_Lightbringer_Uniel_1.lua",
		"PET_Petit_Lightbringer_Uniel_2.lua",
		"PET_Petit_Lightbringer_Uniel_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_PIC", },
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_LIGHTBRINGER_PIC_1", },
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_LIGHTBRINGER_PIC_2", },
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_LIGHTBRINGER_PIC_3", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_GAGE", },
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_LIGHTBRINGER_GAGE_1", },
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_LIGHTBRINGER_GAGE_2", },
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_LIGHTBRINGER_GAGE_3", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben2.tga", "Holy_Lightning_01", STR_ID_16536, STR_ID_16545, },	-- 1차		
		{ "DLG_SKILL_Pet_Ruben2.tga", "Holy_Lightning_02", STR_ID_16537, STR_ID_16546, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben2.tga", "Holy_Lightning_03", STR_ID_16538, STR_ID_16547, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6544, },	-- 1차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6545, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_02.tga", "Pet_Lightbringer_P_01", STR_ID_16533, },	-- 1차
		{ "DLG_SKILL_Pet_P_03.tga", "Pet_Lightbringer_P_02", STR_ID_16534, },	-- 2차
		{ "DLG_SKILL_Pet_P_03.tga", "Pet_Lightbringer_P_03", STR_ID_16535, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		3880,
		11321,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12002,
		12022,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		40104,
		40502,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
		"이랴!", "이럇!",
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_PETIT_DARKBRINGER_UNIRING"],
	COMMON_NAME				= "유니콘-다크브링어 유니링",

	CAPRICE			    	= 1.3,  -- 변덕
	APPETITE				= 1.3,  -- 식사량

	EVOLUTION_ALL_STEP		= 3, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		0,						-- 알
		1,						-- 유체
		2,						-- 기타
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		0,
		3,
		3,
		3,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		0,
		1,
		2,
		3,
	},



	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		47700,
		190800,
		381600,
		667800,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"BasicPet.lua",
		"PET_Petit_Darkbringer_uniring_1.lua",
		"PET_Petit_Darkbringer_uniring_2.lua",
		"PET_Petit_Darkbringer_uniring_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_PIC", },
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_DARKBRINGER_PIC_1", },
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_DARKBRINGER_PIC_2", },
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_DARKBRINGER_PIC_3", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_GAGE", },
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_DARKBRINGER_GAGE_1", },
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_DARKBRINGER_GAGE_2", },
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_DARKBRINGER_GAGE_3", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben2.tga", "Dark_Lightning_01", STR_ID_16542, STR_ID_16548, },	-- 1차		
		{ "DLG_SKILL_Pet_Ruben2.tga", "Dark_Lightning_02", STR_ID_16543, STR_ID_16549, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben2.tga", "Dark_Lightning_03", STR_ID_16544, STR_ID_16550, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6544, },	-- 1차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6545, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_03.tga", "Pet_Darkbringer_P_01", STR_ID_16539, },	-- 1차
		{ "DLG_SKILL_Pet_P_03.tga", "Pet_Darkbringer_P_02", STR_ID_16540, },	-- 2차
		{ "DLG_SKILL_Pet_P_03.tga", "Pet_Darkbringer_P_03", STR_ID_16541, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		3920,
		11341,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12121,
		12001,
		12021,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		40104,
		40502,
		40802,
		40902,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
		"이랴!", "이럇!",
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_PET_SILVERFOX_MIHO"],
	COMMON_NAME				= "구미호-은여우 미호",

	CAPRICE			    	= 0.7,  -- 변덕
	APPETITE				= 1.0,  -- 식사량

	EVOLUTION_ALL_STEP		= 3, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		0,						-- 알
		1,						-- 유체
		2,						-- 기타
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		0,
		4,
		4,
		4,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		0,
		1,
		2,
		4,
	},



	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"BasicPet.lua",
		"PET_Silverfox_Miho_1.lua",
		"PET_Silverfox_Miho_2.lua",
		"PET_Silverfox_Miho_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_PIC", },
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_SILVERFOX_MIHO_PIC1", },
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_SILVERFOX_MIHO_PIC2", },
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_SILVERFOX_MIHO_PIC3", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_GAGE", },
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_SILVERFOX_MIHO_1", },
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_SILVERFOX_MIHO_2", },
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_SILVERFOX_MIHO_3", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben2.tga", "PET_SILVERFOX_MIHO_S1", STR_ID_19072, STR_ID_19100, },	-- 1차		
		{ "DLG_SKILL_Pet_Ruben2.tga", "PET_SILVERFOX_MIHO_S2", STR_ID_19073, STR_ID_19101, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben2.tga", "PET_SILVERFOX_MIHO_S3", STR_ID_19074, STR_ID_19102, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6544, },	-- 1차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6545, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_03.tga", "PET_SILVERFOX_MIHO_P1", STR_ID_19081, },	-- 1차
		{ "DLG_SKILL_Pet_P_03.tga", "PET_SILVERFOX_MIHO_P2", STR_ID_19082, },	-- 2차
		{ "DLG_SKILL_Pet_P_03.tga", "PET_SILVERFOX_MIHO_P3", STR_ID_19083, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		3760,
		11261,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12002,
		12022,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		1602,
		13321,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
		STR_ID_25792,
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_PET_FIREFOX_SHIHO"],
	COMMON_NAME				= "구미호-불여우 시호",

	CAPRICE			    	= 0.7,  -- 변덕
	APPETITE				= 1.3,  -- 식사량

	EVOLUTION_ALL_STEP		= 3, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		0,						-- 알
		1,						-- 유체
		2,						-- 기타
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		0,
		4,
		4,
		4,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		0,
		1,
		2,
		4,
	},



	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"BasicPet.lua",
		"PET_Firefox_Shiho_1.lua",
		"PET_Firefox_Shiho_2.lua",
		"PET_Firefox_Shiho_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_PIC", },
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_FIREFOX_SHIHO_PIC1", },
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_FIREFOX_SHIHO_PIC2", },
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_FIREFOX_SHIHO_PIC3", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_GAGE", },
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_FIREFOX_SHIHO_1", },
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_FIREFOX_SHIHO_2", },
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_FIREFOX_SHIHO_3", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben2.tga", "PET_FIREFOX_SHIHO_S1", STR_ID_19075, STR_ID_19103, },	-- 1차		
		{ "DLG_SKILL_Pet_Ruben3.tga", "PET_FIREFOX_SHIHO_S2", STR_ID_19076, STR_ID_19104, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben3.tga", "PET_FIREFOX_SHIHO_S3", STR_ID_19077, STR_ID_19105, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6544, },	-- 1차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6545, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_03.tga", "PET_FIREFOX_SHIHO_P1", STR_ID_19084, },	-- 1차
		{ "DLG_SKILL_Pet_P_03.tga", "PET_FIREFOX_SHIHO_P2", STR_ID_19085, },	-- 2차
		{ "DLG_SKILL_Pet_P_03.tga", "PET_FIREFOX_SHIHO_P3", STR_ID_19086, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		3720,
		11241,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12121,
		12001,
		12021,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		40104,
		40502,
		40803,
		40903,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
		"유혹!",
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_PET_DARKFOX_NAHO"],
	COMMON_NAME				= "구미호-어둠여우 나호",

	CAPRICE			    	= 0.7,  -- 변덕
	APPETITE				= 1.3,  -- 식사량

	EVOLUTION_ALL_STEP		= 3, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		0,						-- 알
		1,						-- 유체
		2,						-- 기타
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		0,
		4,
		4,
		4,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		0,
		1,
		2,
		4,
	},



	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"BasicPet.lua",
		"PET_Darkfox_Naho_1.lua",
		"PET_Darkfox_Naho_2.lua",
		"PET_Darkfox_Naho_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_PIC", },
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_DARKFOX_NAHO_PIC1", },
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_DARKFOX_NAHO_PIC2", },
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_DARKFOX_NAHO_PIC3", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_GAGE", },
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_DARKFOX_NAHO_1", },
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_DARKFOX_NAHO_2", },
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_DARKFOX_NAHO_3", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben3.tga", "PET_DARKFOX_NAHO_S1", STR_ID_19078, STR_ID_19106, },	-- 1차		
		{ "DLG_SKILL_Pet_Ruben3.tga", "PET_DARKFOX_NAHO_S2", STR_ID_19079, STR_ID_19107, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben3.tga", "PET_DARKFOX_NAHO_S3", STR_ID_19080, STR_ID_19108, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6544, },	-- 1차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6545, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_03.tga", "PET_DARKFOX_NAHO_P1", STR_ID_19087, },	-- 1차
		{ "DLG_SKILL_Pet_P_03.tga", "PET_DARKFOX_NAHO_P2", STR_ID_19088, },	-- 2차
		{ "DLG_SKILL_Pet_P_03.tga", "PET_DARKFOX_NAHO_P3", STR_ID_19089, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		3920,
		11341,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12121,
		12001,
		12021,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		40104,
		40502,
		40803,
		40903,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
		"유혹!",
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_PET_BLOOD_EATER"],
	COMMON_NAME				= "블러드 이터",

	CAPRICE			    	= 0.7,  -- 변덕
	APPETITE				= 1, 	-- 식사량

	EVOLUTION_ALL_STEP		= 0, 	-- 진화단계
	
	PET_STATUS =					-- 펫 상태
	{		
		3,							-- 완전체
	},
	
	INVENSLOT_WIDTH_SIZE =			-- 인벤토리 가로길이
	{
		4,
	},
	
	INVENSLOT_HEIGHT_SIZE =			-- 인벤토리 세로길이
	{
		4,
	},

	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"PET_Blood_Eater.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture77.tga", "PET_BLOOD_EATER_PIC", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture76.tga", "PET_BLOOD_EATER_GAUGE", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{	
		{ "DLG_SKILL_Pet_Ruben3.tga", "PET_BLOOD_EATER_S1", STR_ID_20244, STR_ID_20245, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },		-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_04.tga", "PET_BLOOD_EATER_P1", 	STR_ID_20240, },			-- 1차
		{ "DLG_SKILL_Pet_P_04.tga", "PET_BLOOD_EATER_P2", 	STR_ID_20241, },			-- 2차
		{ "DLG_SKILL_Pet_P_04.tga", "PET_BLOOD_EATER_P3", 	STR_ID_20242, },			-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		4920,
		11341,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		40710,
		12121,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		40104,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
		"도망가!", "도망!",
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_PET_MANA_EATER"],
	COMMON_NAME				= "마나 이터",

	CAPRICE			    	= 0.7,  -- 변덕
	APPETITE				= 1, 	-- 식사량

	EVOLUTION_ALL_STEP		= 0, 	-- 진화단계
	
	PET_STATUS =					-- 펫 상태
	{		
		3,							-- 완전체
	},
	
	INVENSLOT_WIDTH_SIZE =			-- 인벤토리 가로길이
	{
		4,
	},
	
	INVENSLOT_HEIGHT_SIZE =			-- 인벤토리 세로길이
	{
		4,
	},

	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"PET_Mana_Eater.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture77.tga", "PET_MANA_EATER_PIC", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture76.tga", "PET_MANA_EATER_GAUGE", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{	
		{ "DLG_SKILL_Pet_Ruben3.tga", "PET_MANA_EATER_S1", STR_ID_20243, STR_ID_20246, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },		-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_03.tga", "PET_MANA_EATER_P1", 		STR_ID_20238, },		-- 1차
		{ "DLG_SKILL_Pet_P_03.tga", "PET_MANA_EATER_P2", 		STR_ID_20241, },		-- 2차
		{ "DLG_SKILL_Pet_P_04.tga", "PET_MANA_EATER_P3", 		STR_ID_20242, },		-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		4760,
		11261,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		40710,
		12121,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		40104,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
		{ STR_ID_24605, }, --도망가!
		{ STR_ID_24606, }, --도망!
	},
}

--=================================================================================
-- #ifdef	SERV_INT_PET ( 해외 전용 펫 )
--=================================================================================

-- 111109/오현택/트리나이트-계절

g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_TREE_KNIGHT_SPRING"],
	COMMON_NAME				= "트리 나이트 봄",

	CAPRICE			    	= 0.7,  -- 변덕
	APPETITE				= 1,  -- 식사량

	EVOLUTION_ALL_STEP		= 3, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		0,						-- 알
		1,						-- 유체
		2,						-- 기타
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		0,
		4,
		4,
		4,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		0,
		1,
		2,
		3,
	},

	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"BasicPet.lua",
		"PET_TREE_KNIGHT_SPRING_STEB_1.lua",
		"PET_TREE_KNIGHT_SPRING_STEB_2.lua",
		"PET_TREE_KNIGHT_SPRING_STEB_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_PIC", },
		{ "DLG_Common_Texture_INT01.tga", "PET_CHERRY_01", },
		{ "DLG_Common_Texture_INT01.tga", "PET_CHERRY_02", },
		{ "DLG_Common_Texture_INT01.tga", "PET_CHERRY_03", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_GAGE", },
		{ "DLG_Common_Texture_INT01.tga", "PAT_CHERRY_BLOSSOM_WARRIOR_01", },
		{ "DLG_Common_Texture_INT01.tga", "PAT_CHERRY_BLOSSOM_WARRIOR_02", },
		{ "DLG_Common_Texture_INT01.tga", "PAT_CHERRY_BLOSSOM_WARRIOR_03", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_TREE_01", STR_ID_5399, STR_ID_5390, },	-- 1차		
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_TREE_02", STR_ID_5400, STR_ID_5391, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_TREE_03", STR_ID_5401, STR_ID_5392, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6544, },	-- 1차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6545, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_01", STR_ID_9075, },	-- 1차
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_02", STR_ID_9076, },	-- 2차
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_03", STR_ID_9077, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		11182,
		11301,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12121,
		12001,
		12041,
		12061,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		13242,
		13321,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
		{ STR_ID_13797, }, 
		{ STR_ID_13798, },
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_TREE_KNIGHT_FALL"],
	COMMON_NAME				= "트리 나이트 가을",

	CAPRICE			    	= 0.7,  -- 변덕
	APPETITE				= 1,  -- 식사량

	EVOLUTION_ALL_STEP		= 3, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		0,						-- 알
		1,						-- 유체
		2,						-- 기타
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		0,
		4,
		4,
		4,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		0,
		1,
		2,
		3,
	},

	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"BasicPet.lua",
		"PET_TREE_KNIGHT_FALL_STEB_1.lua",
		"PET_TREE_KNIGHT_FALL_STEB_2.lua",
		"PET_TREE_KNIGHT_FALL_STEB_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_PIC", },
		{ "DLG_Common_Texture_INT01.tga", "PET_FALL_01", },
		{ "DLG_Common_Texture_INT01.tga", "PET_FALL_02", },
		{ "DLG_Common_Texture_INT01.tga", "PET_FALL_03", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_GAGE", },
		{ "DLG_Common_Texture_INT01.tga", "PAT_FALL_LEGIONNAIRE_01", },
		{ "DLG_Common_Texture_INT01.tga", "PAT_FALL_LEGIONNAIRE_02", },
		{ "DLG_Common_Texture_INT01.tga", "PAT_FALL_LEGIONNAIRE_03", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_TREE_01", STR_ID_5399, STR_ID_5390, },	-- 1차		
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_TREE_02", STR_ID_5400, STR_ID_5391, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_TREE_03", STR_ID_5401, STR_ID_5392, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6544, },	-- 1차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6545, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_01", STR_ID_9075, },	-- 1차
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_02", STR_ID_9076, },	-- 2차
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_03", STR_ID_9077, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		3720,
		11241,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12121,
		12001,
		12041,
		12061,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		13242,
		13321,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
		{ STR_ID_13797, }, 
		{ STR_ID_13798, },
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_TREE_KNIGHT_WINTER"],
	COMMON_NAME				= "트리 나이트 겨울",

	CAPRICE			    	= 0.7,  -- 변덕
	APPETITE				= 1,  -- 식사량

	EVOLUTION_ALL_STEP		= 3, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		0,						-- 알
		1,						-- 유체
		2,						-- 기타
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		0,
		4,
		4,
		4,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		0,
		1,
		2,
		3,
	},

	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"BasicPet.lua",
		"PET_TREE_KNIGHT_WINTER_STEB_1.lua",
		"PET_TREE_KNIGHT_WINTER_STEB_2.lua",
		"PET_TREE_KNIGHT_WINTER_STEB_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_PIC", },
		{ "DLG_Common_Texture_INT01.tga", "PET_SNOWY_01", },
		{ "DLG_Common_Texture_INT01.tga", "PET_SNOWY_02", },
		{ "DLG_Common_Texture_INT01.tga", "PET_SNOWY_03", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_GAGE", },
		{ "DLG_Common_Texture_INT01.tga", "PAT_SNOWY_KNIGHT_01", },
		{ "DLG_Common_Texture_INT01.tga", "PAT_SNOWY_KNIGHT_02", },
		{ "DLG_Common_Texture_INT01.tga", "PAT_SNOWY_KNIGHT_03", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_TREE_01", STR_ID_5399, STR_ID_15580, },	-- 1차		
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_TREE_02", STR_ID_5400, STR_ID_15581, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_TREE_03", STR_ID_5401, STR_ID_15582, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6544, },	-- 1차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6545, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_01", STR_ID_9075, },	-- 1차
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_02", STR_ID_9076, },	-- 2차
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_03", STR_ID_9077, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		3760,
		11261,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12121,
		12001,
		12041,
		12061,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		13242,
		13321,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
		{ STR_ID_13797, }, 
		{ STR_ID_13798, },
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_TREE_KNIGHT_SPRING_F"],
	COMMON_NAME				= "트리 나이트 봄 (완전체)",

	CAPRICE			    	= 0.7,  -- 변덕
	APPETITE				= 1,  -- 식사량

	EVOLUTION_ALL_STEP		= 0, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		4,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		3,
	},

	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"PET_TREE_KNIGHT_SPRING_STEB_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_Common_Texture_INT01.tga", "PET_CHERRY_03", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_Common_Texture_INT01.tga", "PAT_CHERRY_BLOSSOM_WARRIOR_03", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_TREE_03", STR_ID_5401, STR_ID_5392, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_01", STR_ID_9075, },	-- 1차
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_02", STR_ID_9076, },	-- 2차
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_03", STR_ID_9077, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		11182,
		11301,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12121,
		12001,
		12041,
		12061,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		13242,
		13321,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
		{ STR_ID_13797, }, 
		{ STR_ID_13798, },
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_TREE_KNIGHT_FALL_F"],
	COMMON_NAME				= "트리 나이트 가을 (완전체)",

	CAPRICE			    	= 0.7,  -- 변덕
	APPETITE				= 1,  -- 식사량

	EVOLUTION_ALL_STEP		= 0, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		4,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		3,
	},

	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"PET_TREE_KNIGHT_FALL_STEB_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_Common_Texture_INT01.tga", "PET_FALL_03", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_Common_Texture_INT01.tga", "PAT_FALL_LEGIONNAIRE_03", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_TREE_03", STR_ID_5401, STR_ID_5392, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_01", STR_ID_9075, },	-- 1차
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_02", STR_ID_9076, },	-- 2차
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_03", STR_ID_9077, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		3720,
		11241,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12121,
		12001,
		12041,
		12061,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		13242,
		13321,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
		{ STR_ID_13797, }, 
		{ STR_ID_13798, },
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_TREE_KNIGHT_WINTER_F"],
	COMMON_NAME				= "트리 나이트 겨울 (완전체)",

	CAPRICE			    	= 0.7,  -- 변덕
	APPETITE				= 1,  -- 식사량

	EVOLUTION_ALL_STEP		= 0, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		4,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		3,
	},

	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"PET_TREE_KNIGHT_WINTER_STEB_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_Common_Texture_INT01.tga", "PET_SNOWY_03", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_Common_Texture_INT01.tga", "PAT_SNOWY_KNIGHT_03", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_TREE_03", STR_ID_5401, STR_ID_15582, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_01", STR_ID_9075, },	-- 1차
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_02", STR_ID_9076, },	-- 2차
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_03", STR_ID_9077, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		3760,
		11261,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12121,
		12001,
		12041,
		12061,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		13242,
		13321,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
		{ STR_ID_13797, }, 
		{ STR_ID_13798, },
	},
}

-------------- 펫이벤트 -----------------------
g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_HATCHLING_BLUE"],
	COMMON_NAME				= "야생 해츨링",

	CAPRICE			    	= 1.3,  -- 변덕
	APPETITE				= 1.3,  -- 식사량

	EVOLUTION_ALL_STEP		= 3, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		0,
		1,						
		2,						
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		0,	
		1,
		1,
		1,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		0,
		1,
		2,
		3,
	},



	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		38160,	
		152640,
		305280,
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"BasicPet.lua",	
		"PET_Haech_Blue_1.lua",
		"PET_Haech_Blue_2.lua",
		"PET_Haech_Blue_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_PIC", },
		{ "DLG_Common_Texture_INT01.tga", "PET_DRAGON_BLUE_PIC_1", },
		{ "DLG_Common_Texture_INT01.tga", "PET_DRAGON_BLUE_PIC_2", },
		{ "DLG_Common_Texture_INT01.tga", "PET_DRAGON_BLUE_PIC_3", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_GAGE", },
		{ "DLG_Common_Texture_INT01.tga", "PET_DRAGON_BLUE_1", },
		{ "DLG_Common_Texture_INT01.tga", "PET_DRAGON_BLUE_2", },
		{ "DLG_Common_Texture_INT01.tga", "PET_DRAGON_BLUE_3", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben2.tga", "BREATHE_LIGHT", STR_ID_13732, STR_ID_13721, },	-- 1차		
		{ "DLG_SKILL_Pet_Ruben2.tga", "BREATHE_LIGHT", STR_ID_13733, STR_ID_13722, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben2.tga", "BREATHE_LIGHT", STR_ID_13734, STR_ID_13723, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6544, },	-- 1차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6545, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_02.tga", "PET_DRAGON_P_01", STR_ID_13731, },	-- 1차
		{ "DLG_SKILL_Pet_P_02.tga", "PET_DRAGON_P_02", STR_ID_13728, },	-- 2차
		{ "DLG_SKILL_Pet_P_02.tga", "PET_DRAGON_P_03", STR_ID_13729, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		11201,
		11321,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12001,
		12021,
		12061,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		40102,
		40502,
		40902,
		40802,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
		{ STR_ID_17227, },
		{ STR_ID_17228, },
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_HATCHLING_BLUE_F"],
	COMMON_NAME				= "야생 해츨링 완전체",

	CAPRICE			    	= 1.3,  -- 변덕
	APPETITE				= 1.3,  -- 식사량

	EVOLUTION_ALL_STEP		= 0, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{	
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		0,	
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		0,
	},



	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"PET_Haech_Blue_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_Common_Texture_INT01.tga", "PET_DRAGON_BLUE_PIC_3", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_Common_Texture_INT01.tga", "PET_DRAGON_BLUE_3", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben2.tga", "BREATHE_LIGHT", STR_ID_13734, STR_ID_13723, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_02.tga", "PET_DRAGON_P_01", STR_ID_13731, },	-- 1차
		{ "DLG_SKILL_Pet_P_02.tga", "PET_DRAGON_P_02", STR_ID_13728, },	-- 2차
		{ "DLG_SKILL_Pet_P_02.tga", "PET_DRAGON_P_03", STR_ID_13729, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		11201,
		11321,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12001,
		12021,
		12061,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		40102,
		40502,
		40902,
		40802,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
		{ STR_ID_17227, },
		{ STR_ID_17228, },
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_DEATH_SCYTHE"],
	COMMON_NAME				= "사신",

	CAPRICE			    	= 0.7,  -- 변덕
	APPETITE				= 1,  -- 식사량

	EVOLUTION_ALL_STEP		= 3, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		0,
		1,						
		2,						
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		0,
		4,
		4,
		4,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		0,
		1,
		2,
		3,
	},



	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		38160,	
		152640,
		305280,
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"BasicPet.lua",	
		"PET_DEATH_SCYTHE_STEB_1.lua",
		"PET_DEATH_SCYTHE_STEB_2.lua",
		"PET_DEATH_SCYTHE_STEB_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_PIC", },
		{ "DLG_Common_Texture_INT01.tga", "PET_SASIN_PIC_1", },
		{ "DLG_Common_Texture_INT01.tga", "PET_SASIN_PIC_2", },
		{ "DLG_Common_Texture_INT01.tga", "PET_SASIN_PIC_3", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_GAGE", },
		{ "DLG_Common_Texture_INT01.tga", "PET_SASIN_1", },
		{ "DLG_Common_Texture_INT01.tga", "PET_SASIN_2", },
		{ "DLG_Common_Texture_INT01.tga", "PET_SASIN_3", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Event.tga", "SKILL_SASIN", STR_ID_20106, STR_ID_20109, },	-- 1차		
		{ "DLG_SKILL_Pet_Event.tga", "SKILL_SASIN", STR_ID_20107, STR_ID_20110, },	-- 2차
		{ "DLG_SKILL_Pet_Event.tga", "SKILL_SASIN", STR_ID_20108, STR_ID_20111, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6544, },	-- 1차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6545, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01_Event.tga", "PET_SASIN_P_01", STR_ID_20113, },	-- 1차
		{ "DLG_SKILL_Pet_P_01_Event.tga", "PET_SASIN_P_02", STR_ID_20114, },	-- 2차
		{ "DLG_SKILL_Pet_P_01_Event.tga", "PET_SASIN_P_03", STR_ID_20115, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		3920,
		11341,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12002,
		12022,
		12062,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		40106,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
		{ STR_ID_20112, },
	},
}


g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_DEATH_SCYTHE_F"],
	COMMON_NAME				= "사신",

	CAPRICE			    	= 0.7,  -- 변덕
	APPETITE				= 1,  -- 식사량

	EVOLUTION_ALL_STEP		= 0, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{	
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		4,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		3,
	},



	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"PET_DEATH_SCYTHE_STEB_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_Common_Texture_INT01.tga", "PET_SASIN_PIC_3", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_Common_Texture_INT01.tga", "PET_SASIN_3", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Event.tga", "SKILL_SASIN", STR_ID_20108, STR_ID_20111, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01_Event.tga", "PET_SASIN_P_01", STR_ID_20113, },	-- 1차
		{ "DLG_SKILL_Pet_P_01_Event.tga", "PET_SASIN_P_02", STR_ID_20114, },	-- 2차
		{ "DLG_SKILL_Pet_P_01_Event.tga", "PET_SASIN_P_03", STR_ID_20115, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		3920,
		11341,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12002,
		12022,
		12062,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		40106,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
		{ STR_ID_20112, },
	},
}

-- 대만&홍콩 완전체 해츨링 판매 등록 2012.01.12 임성식
g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_HATCHLING_NORM_F"],
	COMMON_NAME				= "해츨링",

	CAPRICE			    	= 1.0,  -- 변덕
	APPETITE				= 1.0,  -- 식사량

	EVOLUTION_ALL_STEP		= 0, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		4,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		3,
	},



	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"PET_Haech_Ice_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_DRAGON_NORMAL_PIC_3", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_DRAGON_NORMAL_3", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben2.tga", "BREATHE_ICE", STR_ID_13734, STR_ID_13723, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_02.tga", "PET_DRAGON_P_01", STR_ID_9989, },	-- 1차
		{ "DLG_SKILL_Pet_P_02.tga", "PET_DRAGON_P_02", STR_ID_13725, },	-- 2차
		{ "DLG_SKILL_Pet_P_02.tga", "PET_DRAGON_P_03", STR_ID_13726, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		3760,
		11261,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12044,
		12064,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		40004,
		40502,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
		{ STR_ID_17227, },
	},
}
g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_HATCHLING_DARK_F"],
	COMMON_NAME				= "해츨링 - 다크",

	CAPRICE			    	= 1.3,  -- 변덕
	APPETITE				= 1.3,  -- 식사량

	EVOLUTION_ALL_STEP		= 0, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		4,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		3,
	},



	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"PET_Haech_Dark_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_DRAGON_DARK_PIC_3", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_DRAGON_DARK_3", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben2.tga", "BREATHE_DARK", STR_ID_13734, STR_ID_13723, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_02.tga", "PET_DRAGON_P_01", STR_ID_13730, },	-- 1차
		{ "DLG_SKILL_Pet_P_02.tga", "PET_DRAGON_P_02", STR_ID_13728, },	-- 2차
		{ "DLG_SKILL_Pet_P_02.tga", "PET_DRAGON_P_03", STR_ID_13729, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		11222,
		11341,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12002,
		12022, 
		12041,
		12061,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		40104,
		40502,
		40902,
		40802,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
		{ STR_ID_17227, },
	},
}
g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_HATCHLING_FIRE_F"],
	COMMON_NAME				= "해츨링 - 파이어",

	CAPRICE			    	= 1.3,  -- 변덕
	APPETITE				= 1.3,  -- 식사량

	EVOLUTION_ALL_STEP		= 0, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		4,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		3,
	},



	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"PET_Haech_Fire_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_DRAGON_FIRE_PIC_3", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_DRAGON_FIRE_3", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben2.tga", "BREATHE_FIRE", STR_ID_13734, STR_ID_13723, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_02.tga", "PET_DRAGON_P_01", STR_ID_13999, },	-- 1차
		{ "DLG_SKILL_Pet_P_02.tga", "PET_DRAGON_P_02", STR_ID_13728, },	-- 2차
		{ "DLG_SKILL_Pet_P_02.tga", "PET_DRAGON_P_03", STR_ID_13729, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		3720,
		11241,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12002,
		12022,
		12041,
		12061,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		40104,
		40502,
		40902,
		40802,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
		{ STR_ID_17227, },
	},
}
g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_HATCHLING_LIGHT_F"],
	COMMON_NAME				= "해츨링 - 라이트",

	CAPRICE			    	= 1.3,  -- 변덕
	APPETITE				= 1.3,  -- 식사량

	EVOLUTION_ALL_STEP		= 0, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		4,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		3,
	},



	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"PET_Haech_Light_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_DRAGON_LIGHT_PIC_3", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_DRAGON_LIGHT_3", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben2.tga", "BREATHE_LIGHT", STR_ID_13734, STR_ID_13723, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_02.tga", "PET_DRAGON_P_01", STR_ID_13731, },	-- 1차
		{ "DLG_SKILL_Pet_P_02.tga", "PET_DRAGON_P_02", STR_ID_13728, },	-- 2차
		{ "DLG_SKILL_Pet_P_02.tga", "PET_DRAGON_P_03", STR_ID_13729, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		11202,
		11321,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12002,
		12022,
		12041,
		12061,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		40104,
		40502,
		40902,
		40802,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
		{ STR_ID_17227, },
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_HATCHLING_STAR_F"],
	COMMON_NAME				= "해츨링 - 별",

	CAPRICE			    	= 1.3,  -- 변덕
	APPETITE				= 1.3,  -- 식사량

	EVOLUTION_ALL_STEP		= 0, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		4,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		3,
	},



	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"PET_Haech_Star_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_Common_Texture_INT01.tga", "PET_DRAGON_STAR_PIC_3", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_Common_Texture_INT01.tga", "PET_DRAGON_STAR_3", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben2.tga", "BREATHE_ICE", STR_ID_13734, STR_ID_13723, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_02.tga", "PET_DRAGON_P_01", STR_ID_9989, },	-- 1차
		{ "DLG_SKILL_Pet_P_02.tga", "PET_DRAGON_P_02", STR_ID_13725, },	-- 2차
		{ "DLG_SKILL_Pet_P_02.tga", "PET_DRAGON_P_03", STR_ID_13726, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		3760,
		11261,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12044,
		12064,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		40004,
		40502,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
		{ STR_ID_17227, },
	},
}

--=================================================================================
--	#else SERV_INT_PET
--=================================================================================



--=================================================================================
--	#endif SERV_INT_PET
--=================================================================================

g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_PET_MILLENNIAFOX_EUN"],
	COMMON_NAME				= "천년여우 은",

	CAPRICE			    	= 0.7,  -- 변덕
	APPETITE				= 1,  -- 식사량

	EVOLUTION_ALL_STEP		= 0, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		3,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		3,
	},

	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"PET_Millenniafox_Eun.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_MILLENNIAFOX_EUN_PIC", 	},
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_MILLENNIAFOX_EUN_GAUGE", 	},
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben3.tga", "PET_MILLENNIAFOX_EUN_S3", STR_ID_21318, STR_ID_21319, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_04.tga", "PET_MILLENNIAFOX_EUN_P1", STR_ID_21315, },	-- 1차
		{ "DLG_SKILL_Pet_P_04.tga", "PET_MILLENNIAFOX_EUN_P2", STR_ID_21316, },	-- 2차
		{ "DLG_SKILL_Pet_P_04.tga", "PET_MILLENNIAFOX_EUN_P3", STR_ID_21317, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		3880,
		11321,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12001,
		12021,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		40104,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
		"유혹!",
	},
}

-- 2013.02.04 lygan_조성욱 // 봉술 펫 추가 // 김종훈 // 중국 봉술 펫 추가
g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_PANDA_STICK_RED"],
	COMMON_NAME				= "봉술 팬더-레드",

	CAPRICE			    	= 0.7,  -- 변덕
	APPETITE				= 1,  -- 식사량

	EVOLUTION_ALL_STEP		= 3, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		0,
		1,						
		2,						
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		0,
		4,
		4,
		4,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		0,
		1,
		2,
		3,
	},



	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		38160,	
		152640,
		305280,
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"BasicPet.lua",	
		"PET_PANDA_STICK_RED_STEB_1.lua",
		"PET_PANDA_STICK_RED_STEB_2.lua",
		"PET_PANDA_STICK_RED_STEB_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_PIC", },
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_PANDA_STICK_RED_PIC_1", },
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_PANDA_STICK_RED_PIC_2", },
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_PANDA_STICK_RED_PIC_3", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_GAGE", },
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_PANDA_STICK_RED_GAUGE_1", },
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_PANDA_STICK_RED_GAUGE_2", },
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_PANDA_STICK_RED_GAUGE_3", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben3.tga", "PET_PANDA_STICK_RED_S_1", STR_ID_20575, STR_ID_20578, },	-- 1차		
		{ "DLG_SKILL_Pet_Ruben3.tga", "PET_PANDA_STICK_RED_S_1", STR_ID_20576, STR_ID_20579, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben3.tga", "PET_PANDA_STICK_RED_S_1", STR_ID_20577, STR_ID_20580, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6544, },	-- 1차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6545, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_04.tga", "PET_PANDA_STICK_RED_P_1", STR_ID_20584, },	-- 1차
		{ "DLG_SKILL_Pet_P_05.tga", "PET_PANDA_STICK_RED_P_2", STR_ID_20585, },	-- 2차
		{ "DLG_SKILL_Pet_P_05.tga", "PET_PANDA_STICK_RED_P_3", STR_ID_20586, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		3720,
		11241,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12002,
		12022,
		12041,
		12061,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		40002,
		40102,
		40802,
		40902,		
	},
	
	SPECIAL_ACTION_COMMAND =
	{
		{ STR_ID_20295, },
	},
}


g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_PANDA_STICK_BLUE"],
	COMMON_NAME				= "봉술 팬더-블루",

	CAPRICE			    	= 0.7,  -- 변덕
	APPETITE				= 1,  -- 식사량

	EVOLUTION_ALL_STEP		= 3, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		0,
		1,						
		2,						
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		0,
		4,
		4,
		4,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		0,
		1,
		2,
		3,
	},



	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		38160,	
		152640,
		305280,
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"BasicPet.lua",	
		"PET_PANDA_STICK_BLUE_STEB_1.lua",
		"PET_PANDA_STICK_BLUE_STEB_2.lua",
		"PET_PANDA_STICK_BLUE_STEB_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_PIC", },
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_PANDA_STICK_BLUE_PIC_1", },
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_PANDA_STICK_BLUE_PIC_2", },
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_PANDA_STICK_BLUE_PIC_3", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_GAGE", },
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_PANDA_STICK_BLUE_GAUGE_1", },
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_PANDA_STICK_BLUE_GAUGE_2", },
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_PANDA_STICK_BLUE_GAUGE_3", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben3.tga", "PET_PANDA_STICK_BLUE_S_1", STR_ID_20575, STR_ID_20581, },	-- 1차		
		{ "DLG_SKILL_Pet_Ruben3.tga", "PET_PANDA_STICK_BLUE_S_1", STR_ID_20576, STR_ID_20582, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben3.tga", "PET_PANDA_STICK_BLUE_S_1", STR_ID_20577, STR_ID_20583, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6544, },	-- 1차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6545, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_04.tga", "PET_PANDA_STICK_BLUE_P_1", STR_ID_20587, },	-- 1차
		{ "DLG_SKILL_Pet_P_04.tga", "PET_PANDA_STICK_BLUE_P_2", STR_ID_20588, },	-- 2차
		{ "DLG_SKILL_Pet_P_04.tga", "PET_PANDA_STICK_BLUE_P_3", STR_ID_20589, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		3760,
		11261,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12002,
		12022,
		12041,
		12061,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		40002,
		40102,
		40802,
		40902,		
	},
	
	SPECIAL_ACTION_COMMAND =
	{
		{ STR_ID_20295, },
	},
}
g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_PANDA_STICK_RED_F"],
	COMMON_NAME				= "봉술 팬더-레드 (완전체)",

	CAPRICE			    	= 1.3,  -- 변덕
	APPETITE				= 1.3,  -- 식사량

	EVOLUTION_ALL_STEP		= 0, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		4,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		3,
	},



	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"PET_PANDA_STICK_RED_STEB_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_PANDA_STICK_RED_PIC_3", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_PANDA_STICK_RED_GAUGE_3", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben3.tga", "PET_PANDA_STICK_RED_S_1", STR_ID_20577, STR_ID_20580, },	-- 3차			
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_04.tga", "PET_PANDA_STICK_RED_P_1", STR_ID_20584, },	-- 1차
		{ "DLG_SKILL_Pet_P_05.tga", "PET_PANDA_STICK_RED_P_2", STR_ID_20585, },	-- 2차
		{ "DLG_SKILL_Pet_P_05.tga", "PET_PANDA_STICK_RED_P_3", STR_ID_20596, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		3720,
		11241,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12002,
		12022,
		12041,
		12061,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		40002,
		40102,
		40802,
		40902,		
	},
	
	SPECIAL_ACTION_COMMAND =
	{
		{ STR_ID_20295, },
	},
}
g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_PANDA_STICK_BLUE_F"],
	COMMON_NAME				= "봉술 팬더-블루 (완전체)",

	CAPRICE			    	= 1.3,  -- 변덕
	APPETITE				= 1.3,  -- 식사량

	EVOLUTION_ALL_STEP		= 0, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		4,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		3,
	},



	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"PET_PANDA_STICK_BLUE_STEB_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_PANDA_STICK_BLUE_PIC_3", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_PANDA_STICK_BLUE_GAUGE_3", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben3.tga", "PET_PANDA_STICK_BLUE_S_1", STR_ID_20577, STR_ID_20583, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_04.tga", "PET_PANDA_STICK_BLUE_P_1", STR_ID_20587, },	-- 1차
		{ "DLG_SKILL_Pet_P_04.tga", "PET_PANDA_STICK_BLUE_P_2", STR_ID_20588, },	-- 2차
		{ "DLG_SKILL_Pet_P_04.tga", "PET_PANDA_STICK_BLUE_P_3", STR_ID_20589, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		3760,
		11261,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12002,
		12022,
		12041,
		12061,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		40002,
		40102,
		40802,
		40902,		
	},
	
	SPECIAL_ACTION_COMMAND =
	{
		{ STR_ID_20295, },
	},
}
g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_PETTE_ANCIENT_PPORU_SHADOW"],
	COMMON_NAME				= "쁘띠 쉐도우 뽀루",

	CAPRICE			    	= 1.3,  -- 변덕
	APPETITE				= 1.15,  -- 식사량

	EVOLUTION_ALL_STEP		= 3, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		0,						-- 알
		1,						-- 유체
		2,						-- 성체
		3,						-- 완전체
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		0,
		3,
		3,
		3,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		0,
		1,
		2,
		3,
	},

	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"BasicPet.lua",
		"PET_ANCIENT_PPORU_SHADOW_STEB_1.lua",
		"PET_ANCIENT_PPORU_SHADOW_STEB_2.lua",
		"PET_ANCIENT_PPORU_SHADOW_STEB_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_PIC", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_DARK_A_PPORU_PIC_1", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_DARK_A_PPORU_PIC_2", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_DARK_A_PPORU_PIC_3", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_GAGE", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_DARK_A_PPORU_GAGE_1", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_DARK_A_PPORU_GAGE_2", },
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_DARK_A_PPORU_GAGE_3", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_ANCIENT_01", STR_ID_5396, STR_ID_5387, },	-- 1차		
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_ANCIENT_02", STR_ID_5397, STR_ID_5388, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_ANCIENT_03", STR_ID_5398, STR_ID_5389, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6544, },	-- 1차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6545, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ap_P_01", STR_ID_9072, },	-- 1차
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ap_P_02", STR_ID_9073, },	-- 2차
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ap_P_03", STR_ID_9074, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		11202,
		11321,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12022,
		12042,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		13242,
		13342,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
		{ STR_ID_13795, },
		{ STR_ID_13796, },
	},
}

----------- 2011.11.01 / 김민곤 / 대만 감마니아 뽀루 추가 (완전체) -----------------------------------
g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_GAMANIA_PETTE_PPORU"],
	COMMON_NAME				= "감마니아 뽀루",

	CAPRICE			    	= 1,  -- 변덕
	APPETITE				= 0.7,  -- 식사량

	EVOLUTION_ALL_STEP		= 0, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		3,						-- 완전체
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		1,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		3,
	},



	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"PET_GAMANIA_PETTE_PPORU_STEB_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_WILD_PPO_PIC", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_WILD_PPO_GAGE", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_PPORU_01", STR_ID_5393, STR_ID_5384, },	-- 1차		
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_PPORU_02", STR_ID_5394, STR_ID_5385, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_PPORU_03", STR_ID_5395, STR_ID_5386, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6544, },	-- 1차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6545, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ppo_P_01", STR_ID_9069 },	-- 1차		
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ppo_P_02", STR_ID_9070 },	-- 2차
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ppo_P_03", STR_ID_9071 },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		11161,
		11281,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12041,
		12061,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		13322,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
	},
}
g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_PETTE_ANCIENT_PPORU_SHADOW_F"],
	COMMON_NAME				= "쁘띠 쉐도우 뽀루",

	CAPRICE			    	= 1.3,  -- 변덕
	APPETITE				= 1.15,  -- 식사량

	EVOLUTION_ALL_STEP		= 0, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		3,						-- 완전체
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		3,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		3,
	},

	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"PET_ANCIENT_PPORU_SHADOW_STEB_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42.tga", "EVENT_AP_PIC3", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42.tga", "EVENT_AP_3", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_ANCIENT_03", STR_ID_5398, STR_ID_5389, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ap_P_01", STR_ID_9072, },	-- 1차
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ap_P_02", STR_ID_9073, },	-- 2차
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ap_P_03", STR_ID_9074, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		11202,
		11321,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12022,
		12042,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		13242,
		13342,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
		{ STR_ID_13795, },
		{ STR_ID_13796, },
	},
}


		


-- 130425/이경철/유니엘-더 라이트 브링어 (완전체)
g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_PETIT_LIGHTBRINGER_UNIEL_F"],
	COMMON_NAME				= "유니엘-더 라이트 브링어 (완전체)",

	CAPRICE			    	= 0.7,  -- 변덕
	APPETITE				= 1,  -- 식사량

	EVOLUTION_ALL_STEP		= 0, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		3,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		3,
	},

	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		667800,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"PET_Petit_Lightbringer_Uniel_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture61.tga", "PET_LIGHTBRINGER_PIC_3", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture61.tga", "PET_LIGHTBRINGER_GAGE_3", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben2.tga", "Holy_Lightning_03", STR_ID_16538, STR_ID_16547, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_02.tga", "Pet_Lightbringer_P_01", STR_ID_16533, },	-- 1차
		{ "DLG_SKILL_Pet_P_03.tga", "Pet_Lightbringer_P_02", STR_ID_16534, },	-- 2차
		{ "DLG_SKILL_Pet_P_03.tga", "Pet_Lightbringer_P_03", STR_ID_16535, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		3880,
		11321,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12002,
		12022,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		40104,
		40502,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
		{ STR_ID_24311, }, --이랴!
		{ STR_ID_24312, }, --이럇!
	},
}

-- 130522/이경철/유니콘-다크브링어 유니링 (완전체)
g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_PETIT_DARKBRINGER_UNIRING_F"],
	COMMON_NAME				= "유니콘-다크브링어 유니링 (완전체)",

	CAPRICE			    	= 1.3,  -- 변덕
	APPETITE				= 1.3,  -- 식사량

	EVOLUTION_ALL_STEP		= 0, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		3,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		3,
	},

	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		667800,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"PET_Petit_Darkbringer_uniring_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_DARKBRINGER_PIC_3", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_DARKBRINGER_GAGE_3", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben2.tga", "Dark_Lightning_03", STR_ID_16544, STR_ID_16550, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_03.tga", "Pet_Darkbringer_P_01", STR_ID_16539, },	-- 1차
		{ "DLG_SKILL_Pet_P_03.tga", "Pet_Darkbringer_P_02", STR_ID_16540, },	-- 2차
		{ "DLG_SKILL_Pet_P_03.tga", "Pet_Darkbringer_P_03", STR_ID_16541, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		3920,
		11341,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12121,
		12001,
		12021,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		40104,
		40502,
		40802,
		40902,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
		{ STR_ID_24311, }, --이랴!
		{ STR_ID_24312, }, --이럇!
	},
}

-- 130611/이경철/이벤트용 블러드 이터
g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_PET_BLOOD_EATER_EVENT"],
	COMMON_NAME				= "블러드 이터",

	CAPRICE			    	= 0.7,  -- 변덕
	APPETITE				= 1, 	-- 식사량

	EVOLUTION_ALL_STEP		= 0, 	-- 진화단계
	
	PET_STATUS =					-- 펫 상태
	{		
		3,							-- 완전체
	},
	
	INVENSLOT_WIDTH_SIZE =			-- 인벤토리 가로길이
	{
		0,
	},
	
	INVENSLOT_HEIGHT_SIZE =			-- 인벤토리 세로길이
	{
		0,
	},

	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"PET_Blood_Eater.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture77.tga", "PET_BLOOD_EATER_PIC", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture76.tga", "PET_BLOOD_EATER_GAUGE", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{	
		{ "DLG_SKILL_Pet_Ruben3.tga", "PET_BLOOD_EATER_S1", STR_ID_20244, STR_ID_20245, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },		-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_04.tga", "PET_BLOOD_EATER_P1", 	STR_ID_20240, },			-- 1차
		{ "DLG_SKILL_Pet_P_04.tga", "PET_BLOOD_EATER_P2", 	STR_ID_20241, },			-- 2차
		{ "DLG_SKILL_Pet_P_04.tga", "PET_BLOOD_EATER_P3", 	STR_ID_20242, },			-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		4920,
		11341,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		40710,
		12121,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		40104,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
		{ STR_ID_24605, }, --도망가!
		{ STR_ID_24606, }, --도망!
	},
}

-- 130807/오현택/신입 용병 뽀루
g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_PET_MERCENARY_PPORU_EVENT_INT"],	
	COMMON_NAME				= "신입 용병 뽀루",

	CAPRICE			    	= 1,  -- 변덕
	APPETITE				= 1.15,  -- 식사량
	
	ALWAYS_MAX_SATIETY		= True,

	EVOLUTION_ALL_STEP		= 3, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		0,						-- 알
		1,						-- 유체
		2,						-- 기타
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		0,
		0,
		0,
		0,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		0,
		0,
		0,
		0,
	},



	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		1,
		152640,
		305280,
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"BasicPet.lua",
		"PET_PETTE_PPORU_YoungByung_STEB_1.lua",
		"PET_PETTE_PPORU_YoungByung_STEB_2.lua",
		"PET_PETTE_PPORU_YoungByung_STEB_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_PIC", },
		{ "DLG_Common_Texture_INT01.tga", "PET_PPORU_YB_PIC_1", },
		{ "DLG_Common_Texture_INT01.tga", "PET_PPORU_YB_PIC_2", },
		{ "DLG_Common_Texture_INT01.tga", "PET_PPORU_YB_PIC_3", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_GAGE", },
		{ "DLG_Common_Texture_INT01.tga", "PET_PPORU_YB_GAGE_1", },
		{ "DLG_Common_Texture_INT01.tga", "PET_PPORU_YB_GAGE_2", },
		{ "DLG_Common_Texture_INT01.tga", "PET_PPORU_YB_GAGE_3", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_PPORU_01", STR_ID_5393, STR_ID_5384, },	-- 1차		
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_PPORU_02", STR_ID_5394, STR_ID_5385, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_PPORU_03", STR_ID_5395, STR_ID_5386, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6544, },	-- 1차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6545, },	-- 2차
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ppo_P_01", STR_ID_9069 },	-- 1차		
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ppo_P_02", STR_ID_9070 },	-- 2차
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ppo_P_03", STR_ID_9071 },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		11162,
		11281,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12044,
		12064,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		40508,
		40308,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
-- #ifdef GLOBAL_PET_COMMAND
		{ STR_ID_13793, },
		{ STR_ID_13794, },
-- #else
--		"굶어!", "밥없어!",
-- #endif GLOBAL_PET_COMMAND
	},
}
--=================================================================================
-- #ifndef	SERV_INT_PET ( 해외 전용 펫 )
--=================================================================================

--=================================================================================
-- #endif	SERV_INT_PET ( 해외 전용 펫 )
--=================================================================================
g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_HOLLO_WITCH_EVENT_F"],
	COMMON_NAME				= "할로위치",

	CAPRICE			    	= 1.3,  -- 변덕
	APPETITE				= 1.15,  -- 식사량

	EVOLUTION_ALL_STEP		= 0, -- 진화단계
	
	FREE_AUTO_LOOTING		= True,
	
	PET_STATUS =				-- 펫 상태
	{
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		0,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		0,
	},



	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"PET_HOLLO_WITCH_STEB_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_HOLLOWITCH_PIC_3", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_HOLLOWITCH_GAGE_3", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_HOLLO_03", STR_ID_9053, STR_ID_9056, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_hol_P_01", STR_ID_9078, },	-- 1차
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_hol_P_02", STR_ID_9079, },	-- 2차
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_hol_P_03", STR_ID_9080, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		11222,
		11341,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12121,
		12001,
		12021,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		13241,
		13261,
		13282,
		13302,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
-- #ifdef GLOBAL_PET_COMMAND
		{ STR_ID_13799, },
		{ STR_ID_13800, },
-- #else
--		"날틀!", "날아!",
-- #endif GLOBAL_PET_COMMAND
	},
}
g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_HALLOWEEN_PUMPKIN_TANYA"],
	COMMON_NAME				= "할로윈 호박 요정 타냐",

	CAPRICE			    	= 1,  -- 변덕
	APPETITE				= 1,  -- 식사량

	EVOLUTION_ALL_STEP		= 3, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		0,						-- 알
		1,						-- 유체
		2,						-- 기타
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		0,
		4,
		4,
		4,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		0,
		1,
		2,
		3,
	},

	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"BasicPet.lua",
		"PET_HALLOWEEN_PUMPKIN_FAIRY_STEB_1.lua",
		"PET_HALLOWEEN_PUMPKIN_FAIRY_STEB_2.lua",
		"PET_HALLOWEEN_PUMPKIN_TANYA_STEB_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_PIC", },
		{ "DLG_Common_Texture_INT01.tga", "PET_HALLOWENNFAIRY_INFANT_PIC", },
		{ "DLG_Common_Texture_INT01.tga", "PET_HALLOWENNFAIRY_TEEN_PIC", },
		{ "DLG_Common_Texture_INT01.tga", "PET_HALLOWENNFAIRY_TANYA_PIC", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_GAGE", },
		{ "DLG_Common_Texture_INT01.tga", "PET_HALLOWENNFAIRY_INFANT", },
		{ "DLG_Common_Texture_INT01.tga", "PET_HALLOWENNFAIRY_TEEN", },
		{ "DLG_Common_Texture_INT01.tga", "PET_HALLOWENNFAIRY_TANYA", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_SKILL_INTANT", STR_ID_28108, STR_ID_28112, },	-- 1차		
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_SKILL_TEEN", STR_ID_28109, STR_ID_28113, },	-- 2차
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_SKILL_TANYA", STR_ID_28110, STR_ID_28191, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_INT01.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6544, },	-- 1차
		{ "DLG_SKILL_Pet_INT01.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6545, },	-- 2차
		{ "DLG_SKILL_Pet_INT01.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_01", STR_ID_28117, },	-- 1차
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_02", STR_ID_28118, },	-- 2차
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_TANYA_03", STR_ID_28116, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		40502,
		40806,
		40906,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12121,
		12001,
		12021,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		1601,
		3710,
		11241,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
			{ STR_ID_28107, },
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_HALLOWEEN_PUMPKIN_LAEL"],
	COMMON_NAME				= "할로윈 호박 요정 라엘",

	CAPRICE			    	= 1,  -- 변덕
	APPETITE				= 1,  -- 식사량

	EVOLUTION_ALL_STEP		= 3, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		0,						-- 알
		1,						-- 유체
		2,						-- 기타
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		0,
		4,
		4,
		4,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		0,
		1,
		2,
		3,
	},

	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"BasicPet.lua",
		"PET_HALLOWEEN_PUMPKIN_FAIRY_STEB_1.lua",
		"PET_HALLOWEEN_PUMPKIN_FAIRY_STEB_2.lua",
		"PET_HALLOWEEN_PUMPKIN_LAEL_STEB_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_PIC", },
		{ "DLG_Common_Texture_INT01.tga", "PET_HALLOWENNFAIRY_INFANT_PIC", },
		{ "DLG_Common_Texture_INT01.tga", "PET_HALLOWENNFAIRY_TEEN_PIC", },
		{ "DLG_Common_Texture_INT01.tga", "PET_HALLOWENNFAIRY_LAEL_PIC", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_GAGE", },
		{ "DLG_Common_Texture_INT01.tga", "PET_HALLOWENNFAIRY_INFANT", },
		{ "DLG_Common_Texture_INT01.tga", "PET_HALLOWENNFAIRY_TEEN", },
		{ "DLG_Common_Texture_INT01.tga", "PET_HALLOWENNFAIRY_LAEL", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_SKILL_INTANT", STR_ID_28108, STR_ID_28112, },	-- 1차		
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_SKILL_TEEN", STR_ID_28109, STR_ID_28113, },	-- 2차
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_SKILL_LAEL", STR_ID_28110, STR_ID_28192, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_INT01.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6544, },	-- 1차
		{ "DLG_SKILL_Pet_INT01.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6545, },	-- 2차
		{ "DLG_SKILL_Pet_INT01.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_01", STR_ID_28117, },	-- 1차
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_02", STR_ID_28118, },	-- 2차
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_LAEL_03", STR_ID_28116, },	-- 3차
	},
	
	AURA_SKILL_1 =
	{
		40502,
		40806,
		40906,
	},

	AURA_SKILL_2 =
	{
		12121,
		12001,
		12021,
	},

	AURA_SKILL_3 =
	{
		1601,
		3750,
		11261,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
		{ STR_ID_28107, },
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_HALLOWEEN_PUMPKIN_LOJETA"],
	COMMON_NAME				= "할로윈 호박 요정 로제타",

	CAPRICE			    	= 1,  -- 변덕
	APPETITE				= 1,  -- 식사량

	EVOLUTION_ALL_STEP		= 3, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		0,						-- 알
		1,						-- 유체
		2,						-- 기타
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		0,
		4,
		4,
		4,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		0,
		1,
		2,
		3,
	},

	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"BasicPet.lua",
		"PET_HALLOWEEN_PUMPKIN_FAIRY_STEB_1.lua",
		"PET_HALLOWEEN_PUMPKIN_FAIRY_STEB_2.lua",
		"PET_HALLOWEEN_PUMPKIN_LOJETA_STEB_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_PIC", },
		{ "DLG_Common_Texture_INT01.tga", "PET_HALLOWENNFAIRY_INFANT_PIC", },
		{ "DLG_Common_Texture_INT01.tga", "PET_HALLOWENNFAIRY_TEEN_PIC", },
		{ "DLG_Common_Texture_INT01.tga", "PET_HALLOWENNFAIRY_LOJETA_PIC", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_GAGE", },
		{ "DLG_Common_Texture_INT01.tga", "PET_HALLOWENNFAIRY_INFANT", },
		{ "DLG_Common_Texture_INT01.tga", "PET_HALLOWENNFAIRY_TEEN", },
		{ "DLG_Common_Texture_INT01.tga", "PET_HALLOWENNFAIRY_LOJETA", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_SKILL_INTANT", STR_ID_28108, STR_ID_28112, },	-- 1차		
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_SKILL_TEEN", STR_ID_28109, STR_ID_28113, },	-- 2차
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_SKILL_LOJETA", STR_ID_28110, STR_ID_28193, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_INT01.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6544, },	-- 1차
		{ "DLG_SKILL_Pet_INT01.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6545, },	-- 2차
		{ "DLG_SKILL_Pet_INT01.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_01", STR_ID_28117, },	-- 1차
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_02", STR_ID_28118, },	-- 2차
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_LOJETA_03", STR_ID_28116, },	-- 3차
	},
	
	AURA_SKILL_1 =
	{
		40502,
		40806,
		40906,
	},

	AURA_SKILL_2 =
	{
		12121,
		12001,
		12021,
	},

	AURA_SKILL_3 =
	{
		1601,
		3830,
		11301,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
		{ STR_ID_28107, },
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_HALLOWEEN_PUMPKIN_NARENEA"],
	COMMON_NAME				= "할로윈 호박 요정 나르네아",

	CAPRICE			    	= 1,  -- 변덕
	APPETITE				= 1,  -- 식사량

	EVOLUTION_ALL_STEP		= 3, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		0,						-- 알
		1,						-- 유체
		2,						-- 기타
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		0,
		4,
		4,
		4,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		0,
		1,
		2,
		3,
	},

	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"BasicPet.lua",
		"PET_HALLOWEEN_PUMPKIN_FAIRY_STEB_1.lua",
		"PET_HALLOWEEN_PUMPKIN_FAIRY_STEB_2.lua",
		"PET_HALLOWEEN_PUMPKIN_NARENEA_STEB_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_PIC", },
		{ "DLG_Common_Texture_INT01.tga", "PET_HALLOWENNFAIRY_INFANT_PIC", },
		{ "DLG_Common_Texture_INT01.tga", "PET_HALLOWENNFAIRY_TEEN_PIC", },
		{ "DLG_Common_Texture_INT01.tga", "PET_HALLOWENNFAIRY_NARENEA_PIC", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_GAGE", },
		{ "DLG_Common_Texture_INT01.tga", "PET_HALLOWENNFAIRY_INFANT", },
		{ "DLG_Common_Texture_INT01.tga", "PET_HALLOWENNFAIRY_TEEN", },
		{ "DLG_Common_Texture_INT01.tga", "PET_HALLOWENNFAIRY_NARENEA", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_SKILL_INTANT", STR_ID_28108, STR_ID_28112, },	-- 1차		
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_SKILL_TEEN", STR_ID_28109, STR_ID_28113, },	-- 2차
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_SKILL_NARENEA", STR_ID_28110, STR_ID_28194, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_INT01.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6544, },	-- 1차
		{ "DLG_SKILL_Pet_INT01.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6545, },	-- 2차
		{ "DLG_SKILL_Pet_INT01.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_01", STR_ID_28117, },	-- 1차
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_02", STR_ID_28118, },	-- 2차
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_NARENEA_03", STR_ID_28116, },	-- 3차
	},
	
	AURA_SKILL_1 =
	{
		40502,
		40806,
		40906,
	},

	AURA_SKILL_2 =
	{
		12121,
		12001,
		12021,
	},

	AURA_SKILL_3 =
	{
		1601,
		3910,
		11341,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
		{ STR_ID_28107, },
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_HALLOWEEN_PUMPKIN_ELDENA"],
	COMMON_NAME				= "할로윈 호박 요정 엘데나",

	CAPRICE			    	= 1,  -- 변덕
	APPETITE				= 1,  -- 식사량

	EVOLUTION_ALL_STEP		= 3, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		0,						-- 알
		1,						-- 유체
		2,						-- 기타
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		0,
		4,
		4,
		4,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		0,
		1,
		2,
		3,
	},

	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"BasicPet.lua",
		"PET_HALLOWEEN_PUMPKIN_FAIRY_STEB_1.lua",
		"PET_HALLOWEEN_PUMPKIN_FAIRY_STEB_2.lua",
		"PET_HALLOWEEN_PUMPKIN_ELDENA_STEB_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_PIC", },
		{ "DLG_Common_Texture_INT01.tga", "PET_HALLOWENNFAIRY_INFANT_PIC", },
		{ "DLG_Common_Texture_INT01.tga", "PET_HALLOWENNFAIRY_TEEN_PIC", },
		{ "DLG_Common_Texture_INT01.tga", "PET_HALLOWENNFAIRY_ELDENA_PIC", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_GAGE", },
		{ "DLG_Common_Texture_INT01.tga", "PET_HALLOWENNFAIRY_INFANT", },
		{ "DLG_Common_Texture_INT01.tga", "PET_HALLOWENNFAIRY_TEEN", },
		{ "DLG_Common_Texture_INT01.tga", "PET_HALLOWENNFAIRY_ELDENA", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_SKILL_INTANT", STR_ID_28108, STR_ID_28112, },	-- 1차		
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_SKILL_TEEN", STR_ID_28109, STR_ID_28113, },	-- 2차
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_SKILL_ELDENA", STR_ID_28111, STR_ID_28195, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_INT01.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6544, },	-- 1차
		{ "DLG_SKILL_Pet_INT01.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_6545, },	-- 2차
		{ "DLG_SKILL_Pet_INT01.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_01", STR_ID_28117, },	-- 1차
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_02", STR_ID_28118, },	-- 2차
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_ELDENA_03", STR_ID_28116, },	-- 3차
	},
	
	AURA_SKILL_1 =
	{
		40502,
		40806,
		40906,
	},

	AURA_SKILL_2 =
	{
		12121,
		12001,
		12021,
	},

	AURA_SKILL_3 =
	{
		1601,
		5610,
		11241,
		11261,
		11301,
		11341,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
		{ STR_ID_28107, },
	},
}


g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_HALLOWEEN_PUMPKIN_TANYA_F"],
	COMMON_NAME				= "할로윈 호박 요정 타냐 완전체",

	CAPRICE			    	= 1,  -- 변덕
	APPETITE				= 1,  -- 식사량

	EVOLUTION_ALL_STEP		= 0, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		4,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		3,
	},

	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"PET_HALLOWEEN_PUMPKIN_TANYA_STEB_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_Common_Texture_INT01.tga", "PET_HALLOWENNFAIRY_TANYA_PIC", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_Common_Texture_INT01.tga", "PET_HALLOWENNFAIRY_TANYA", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_SKILL_TANYA", STR_ID_28110, STR_ID_28191, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_INT01.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_01", STR_ID_28117, },	-- 1차
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_02", STR_ID_28118, },	-- 2차
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_TANYA_03", STR_ID_28116, },	-- 3차
	},
	
	AURA_SKILL_1 =
	{
		40502,
		40806,
		40906,
	},

	AURA_SKILL_2 =
	{
		12121,
		12001,
		12021,
	},

	AURA_SKILL_3 =
	{
		1601,
		3710,
		11241,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
		{ STR_ID_28107, },
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_HALLOWEEN_PUMPKIN_LAEL_F"],
	COMMON_NAME				= "할로윈 호박 요정 라엘 완전체",

	CAPRICE			    	= 1,  -- 변덕
	APPETITE				= 1,  -- 식사량

	EVOLUTION_ALL_STEP		= 0, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		4,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		3,
	},

	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"PET_HALLOWEEN_PUMPKIN_LAEL_STEB_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_Common_Texture_INT01.tga", "PET_HALLOWENNFAIRY_LAEL_PIC", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_Common_Texture_INT01.tga", "PET_HALLOWENNFAIRY_LAEL", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_SKILL_LAEL", STR_ID_28110, STR_ID_28192, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_INT01.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_01", STR_ID_28117, },	-- 1차
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_02", STR_ID_28118, },	-- 2차
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_LAEL_03", STR_ID_28116, },	-- 3차
	},
	
	AURA_SKILL_1 =
	{
		40502,
		40806,
		40906,
	},

	AURA_SKILL_2 =
	{
		12121,
		12001,
		12021,
	},

	AURA_SKILL_3 =
	{
		1601,
		3750,
		11261,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
		{ STR_ID_28107, },
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_HALLOWEEN_PUMPKIN_LOJETA_F"],
	COMMON_NAME				= "할로윈 호박 요정 로제타 완전체",

	CAPRICE			    	= 1,  -- 변덕
	APPETITE				= 1,  -- 식사량

	EVOLUTION_ALL_STEP		= 0, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		4,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		3,
	},

	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"PET_HALLOWEEN_PUMPKIN_LOJETA_STEB_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_Common_Texture_INT01.tga", "PET_HALLOWENNFAIRY_LOJETA_PIC", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_Common_Texture_INT01.tga", "PET_HALLOWENNFAIRY_LOJETA", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_SKILL_LOJETA", STR_ID_28110, STR_ID_28193, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_INT01.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_01", STR_ID_28117, },	-- 1차
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_02", STR_ID_28118, },	-- 2차
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_LOJETA_03", STR_ID_28116, },	-- 3차
	},
	
	AURA_SKILL_1 =
	{
		40502,
		40806,
		40906,
	},

	AURA_SKILL_2 =
	{
		12121,
		12001,
		12021,
	},

	AURA_SKILL_3 =
	{
		1601,
		3830,
		11301,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
		{ STR_ID_28107, },
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_HALLOWEEN_PUMPKIN_NARENEA_F"],
	COMMON_NAME				= "할로윈 호박 요정 나르네아 완전체",

	CAPRICE			    	= 1,  -- 변덕
	APPETITE				= 1,  -- 식사량

	EVOLUTION_ALL_STEP		= 0, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		4,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		3,
	},

	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"PET_HALLOWEEN_PUMPKIN_NARENEA_STEB_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_Common_Texture_INT01.tga", "PET_HALLOWENNFAIRY_NARENEA_PIC", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_Common_Texture_INT01.tga", "PET_HALLOWENNFAIRY_NARENEA", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_SKILL_NARENEA", STR_ID_28110, STR_ID_28194, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_INT01.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_01", STR_ID_28117, },	-- 1차
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_02", STR_ID_28118, },	-- 2차
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_NARENEA_03", STR_ID_28116, },	-- 3차
	},
	
	AURA_SKILL_1 =
	{
		40502,
		40806,
		40906,
	},

	AURA_SKILL_2 =
	{
		12121,
		12001,
		12021,
	},

	AURA_SKILL_3 =
	{
		1601,
		3910,
		11341,
	},

	SPECIAL_ACTION_COMMAND =
	{
		{ STR_ID_28107, },
	},
}


g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_HALLOWEEN_PUMPKIN_ELDENA_F"],
	COMMON_NAME				= "할로윈 호박 요정 엘데나 완전체",

	CAPRICE			    	= 1,  -- 변덕
	APPETITE				= 1,  -- 식사량

	EVOLUTION_ALL_STEP		= 0, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		4,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		3,
	},

	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"PET_HALLOWEEN_PUMPKIN_ELDENA_STEB_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_Common_Texture_INT01.tga", "PET_HALLOWENNFAIRY_ELDENA_PIC", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_Common_Texture_INT01.tga", "PET_HALLOWENNFAIRY_ELDENA", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_SKILL_ELDENA", STR_ID_28111, STR_ID_28195, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_INT01.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_01", STR_ID_28117, },	-- 1차
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_02", STR_ID_28118, },	-- 2차
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_ELDENA_03", STR_ID_28116, },	-- 3차
	},
	
	AURA_SKILL_1 =
	{
		40502,
		40806,
		40906,
	},

	AURA_SKILL_2 =
	{
		12121,
		12001,
		12021,
	},

	AURA_SKILL_3 =
	{
		1601,
		5610,
		11241,
		11261,
		11301,
		11341,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
		{ STR_ID_28107, },
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_TREE_KNIGHT_EVENT_F"],
	COMMON_NAME				= "트리 나이트",

	CAPRICE			    	= 0.7,  -- 변덕
	APPETITE				= 1,  -- 식사량

	EVOLUTION_ALL_STEP		= 0, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{		
		3,						-- 완전체
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		0,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		0,
	},

	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"PET_TREE_KNIGHT_STEB_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_T_KNIGHT_PIC_3", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_T_KNIGHT_GAGE_3", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_TREE_03", STR_ID_5401, STR_ID_5392, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_01", STR_ID_9075, },	-- 1차
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_02", STR_ID_9076, },	-- 2차
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_03", STR_ID_9077, },	-- 3차
	},
		
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		11182,
		11301,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12002,
		12062,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		13242,
		13321,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
-- #ifdef GLOBAL_PET_COMMAND
		{ STR_ID_13797, },
		{ STR_ID_13798, },
-- #else
--		"제식!", "훈련!",
-- #endif GLOBAL_PET_COMMAND
	},
}

-- 131218/이경철/불꽃 뽀루
g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_FIREWORK_PPORU"],
	COMMON_NAME = "불꽃 뽀루",

	CAPRICE = 1,
	APPETITE = 1.15,
	EVOLUTION_ALL_STEP = 0,

	PET_STATUS =
	{
		3,
	},

	INVENSLOT_WIDTH_SIZE =
	{
		4,
	},

	INVENSLOT_HEIGHT_SIZE =
	{
		2,
	},

	EVOLUTION_STEP_MAX =
	{
		534240,
	},

	EVOLUTION_STEP_SCRIPTNAME =
	{
		"PET_FIREWORK_PPORU.lua",
	},

	EVOLUTION_STEP_IMAGE =
	{
		{ "DLG_Common_Texture_INT01.tga", "PET_FIREWORK_PPORU_PIC", },
	},

	EVOLUTION_STEP_GAME_IMAGE =
	{
		{ "DLG_Common_Texture_INT01.tga", "PET_FIREWORK_PPORU", },
	},

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_common1.tga", "PET_FIREWORK_PPORU_SKILL", STR_ID_29383, STR_ID_29384, },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ppo_P_01", STR_ID_9069 },
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ppo_P_02", STR_ID_9070 },
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ppo_P_03", STR_ID_9071 },
	},

	AURA_SKILL_1 =
	{
		11121,
		11241,
	},

	AURA_SKILL_2 =
	{
		12041,
		12061,
	},

	AURA_SKILL_3 =
	{
		13322,
	},

	SPECIAL_ACTION_COMMAND =
	{
		{ STR_ID_13793, },
		{ STR_ID_13794, },
	},
}

-- 131218/이경철/크리스마스 펫 2종
g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_PET_SNOWBUMP"],
	COMMON_NAME = "스노우 범프",

	CAPRICE = 1,
	APPETITE = 1,
	EVOLUTION_ALL_STEP = 0,

	PET_STATUS =
	{
		3,
	},

	INVENSLOT_WIDTH_SIZE =
	{
		4,
	},

	INVENSLOT_HEIGHT_SIZE =
	{
		3,
	},

	EVOLUTION_STEP_MAX =
	{
		534240,
	},

	EVOLUTION_STEP_SCRIPTNAME =
	{
		"PET_SNOWBUMP.lua",
	},

	EVOLUTION_STEP_IMAGE =
	{
		{ "DLG_Common_Texture_INT01.tga", "PET_SNOWBUMP_PIC_3", },
	},

	EVOLUTION_STEP_GAME_IMAGE =
	{
		{ "DLG_Common_Texture_INT01.tga", "PET_SNOWBUMP_3", },
	},

	ATTACK_SKILL_INFO =
	{
		{ "DLG_Common_Texture_INT04.tga", "PET_SNOWBUMP_SKILL_03", STR_ID_29071, STR_ID_29072, },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_Common_Texture_INT04.tga", "PET_SNOWBUMP_BUFF_01", STR_ID_29068, },
		{ "DLG_Common_Texture_INT04.tga", "PET_SNOWBUMP_BUFF_02", STR_ID_29069, },
		{ "DLG_Common_Texture_INT04.tga", "PET_SNOWBUMP_BUFF_03", STR_ID_29067, },
	},

	AURA_SKILL_1 =
	{
		3760,
		11261,
	},

	AURA_SKILL_2 =
	{
		12121,
		12001,
		12021,
	},

	AURA_SKILL_3 =
	{
		40004,
		40504,
	},

	SPECIAL_ACTION_COMMAND =
	{
		STR_ID_29070, 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_PET_HUNTER_PENGUIN"],
	COMMON_NAME = "아크틱헌터 펭",

	CAPRICE = 1,
	APPETITE = 1,
	EVOLUTION_ALL_STEP = 0,

	PET_STATUS =
	{
		3,
	},

	INVENSLOT_WIDTH_SIZE =
	{
		4,
	},

	INVENSLOT_HEIGHT_SIZE =
	{
		3,
	},

	EVOLUTION_STEP_MAX =
	{
		534240,
	},

	EVOLUTION_STEP_SCRIPTNAME =
	{
		"PET_HUNTER_PENGUIN.lua",
	},

	EVOLUTION_STEP_IMAGE =
	{
		{ "DLG_Common_Texture_INT01.tga", "PET_HUNTER_PENGUIN_PIC_3", },
	},

	EVOLUTION_STEP_GAME_IMAGE =
	{
		{ "DLG_Common_Texture_INT01.tga", "PET_HUNTER_PENGUIN_3", },
	},

	ATTACK_SKILL_INFO =
	{
		{ "DLG_Common_Texture_INT04.tga", "PET_HUNTER_PENGUIN_SKILL_03", STR_ID_29197, STR_ID_29198, },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_Common_Texture_INT04.tga", "PET_HUNTER_PENGUIN_BUFF_01", STR_ID_29194, },
		{ "DLG_Common_Texture_INT04.tga", "PET_HUNTER_PENGUIN_BUFF_02", STR_ID_29195, },
		{ "DLG_Common_Texture_INT04.tga", "PET_HUNTER_PENGUIN_BUFF_03", STR_ID_29193, },
	},

	AURA_SKILL_1 =
	{
		3760,
		11261,
	},

	AURA_SKILL_2 =
	{
		40710,
		12121,
	},

	AURA_SKILL_3 =
	{
		40104,
		40304,
	},

	SPECIAL_ACTION_COMMAND =
	{
		STR_ID_29196, 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID					= PET_UNIT_ID["PUI_PET_SILVERFOX_MIHO_F"],
	COMMON_NAME				= "구미호-은여우 미호 완전체",

	CAPRICE			    	= 0.7,  -- 변덕
	APPETITE				= 1.0,  -- 식사량

	EVOLUTION_ALL_STEP		= 0, -- 진화단계
	
	PET_STATUS =				-- 펫 상태
	{
		3,
	},
	
	INVENSLOT_WIDTH_SIZE =		-- 인벤토리 가로길이
	{
		4,
	},
	
	INVENSLOT_HEIGHT_SIZE =		-- 인벤토리 세로길이
	{
		4,
	},



	-- 각 진화단계에 따른 최대 친밀도
	EVOLUTION_STEP_MAX =
	{
		534240,
	},

	-- 각 진화단계에 따른 펫 스크립트 이름
	EVOLUTION_STEP_SCRIPTNAME = 
	{
		"PET_Silverfox_Miho_3.lua",
	},
	
	EVOLUTION_STEP_IMAGE = 
	{
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_SILVERFOX_MIHO_PIC3", },
	},
	
	EVOLUTION_STEP_GAME_IMAGE = 
	{
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_SILVERFOX_MIHO_3", },
	},
	
	-- 공격
	ATTACK_SKILL_INFO =
	{		
		{ "DLG_SKILL_Pet_Ruben2.tga", "PET_SILVERFOX_MIHO_S3", STR_ID_19074, STR_ID_19102, },	-- 3차
	},
	
	-- 격려
	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", STR_ID_5403, STR_ID_5402, },	-- 3차
	},
	
	-- 기운
	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_03.tga", "PET_SILVERFOX_MIHO_P1", STR_ID_19081, },	-- 1차
		{ "DLG_SKILL_Pet_P_03.tga", "PET_SILVERFOX_MIHO_P2", STR_ID_19082, },	-- 2차
		{ "DLG_SKILL_Pet_P_03.tga", "PET_SILVERFOX_MIHO_P3", STR_ID_19083, },	-- 3차
	},
	
	-- 유체 기운 스킬 (속성류 - 신체)
	AURA_SKILL_1 =
	{
		3760,
		11261,
	},
	-- 성체 기운 스킬 (강화류 - 혼)
	AURA_SKILL_2 =
	{
		12002,
		12022,
	},
	-- 완전체 기운 스킬 (옵션류 - 자세)
	AURA_SKILL_3 =
	{
		1602,
		13321,
	},
	
	SPECIAL_ACTION_COMMAND =
	{
		STR_ID_25792,
	},
}
--=================================================================================
-- #endif	SERV_INT_PET ( 해외 전용 펫 )
--=================================================================================