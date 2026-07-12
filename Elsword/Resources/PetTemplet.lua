-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_TEST"],
	COMMON_NAME = "쁘띠 에이션트 뽀루",

	CAPRICE = 1.3,
	APPETITE = 1.15,
	EVOLUTION_ALL_STEP = 3,

	PET_STATUS =
	{
		0,
		1,
		2,
		3,
	},

	INVENSLOT_WIDTH_SIZE =
	{
		0,
		4,
		4,
		4,
	},

	INVENSLOT_HEIGHT_SIZE =
	{
		0,
		1,
		2,
		3,
	},

	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_ANCIENT_01", "Petite Breath", "Breathe fire at enemies within a 400 range\r\nthat continuously deals 100% of your average Physical and Magical Attack Power\r\nwhile burning them for 4 seconds.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_ANCIENT_02", "Mega Breath", "Breathe fire at enemies within a 700 range\r\nthat continuously deals 200% of your average Physical and Magical Attack Power\r\nwhile burning them for 6 seconds.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_ANCIENT_03", "Giga Breath", "Breathe fire at enemies within a 1000 range\r\nthat continuously deals 340% of your average Physical and Magical Attack Power\r\nwhile burning them for 8 seconds.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 20%,\r\nCritical Hit Rate increases by 6%,\r\nAttack and Movement Speed increases by 5%,\r\nHP/MP Recovery: Max HP is 0.5% per sec. / 6 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 30%,\r\nCritical Hit Rate increases by 12%,\r\nAttack and Movement Speed increases by 10%,\r\nHP/MP Recovery: Max HP is 1% per sec. / 12 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_PETTE_PPORU"],
	COMMON_NAME = "쁘띠 뽀루",

	CAPRICE = 1,
	APPETITE = 1.15,
	EVOLUTION_ALL_STEP = 3,

	PET_STATUS =
	{
		0,
		1,
		2,
		3,
	},

	INVENSLOT_WIDTH_SIZE =
	{
		0,
		1,
		1,
		1,
	},

	INVENSLOT_HEIGHT_SIZE =
	{
		0,
		1,
		2,
		3,
	},

	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_PPORU_01", "Feeding Bottle Toss", "Throw a feeding bottle at the enemies in front of you\r\nthat deals 300% of your average Physical and Magical Attack Power\r\nwhile pushing them back.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_PPORU_02", "Mug Cup Toss", "Throw a feeding bottle and mug cup at the enemies in front of you\r\nthat deals 350% of your average Physical and Magical Attack Power\r\nwhile pushing them back.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_PPORU_03", "Frying Pan Toss", "Throw a feeding bottle, mug cup, and a frying pan at the enemies in front of you\r\nthat deals 400% of your average Physical and Magical Attack Power\r\nwhile pushing them back.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 20%,\r\nCritical Hit Rate increases by 6%,\r\nAttack and Movement Speed increases by 5%,\r\nHP/MP Recovery: Max HP is 0.5% per sec. / 6 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 30%,\r\nCritical Hit Rate increases by 12%,\r\nAttack and Movement Speed increases by 10%,\r\nHP/MP Recovery: Max HP is 1% per sec. / 12 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ppo_P_01", "Natural Physique", },
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ppo_P_02", "Pure Spirit", },
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ppo_P_03", "Cowardly Stance", },
	},

	AURA_SKILL_1 =
	{
		11161,
		11281,
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
		"Starve!", "NoFood!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_PETTE_ANCIENT_PPORU"],
	COMMON_NAME = "쁘띠 에이션트 뽀루",

	CAPRICE = 1.3,
	APPETITE = 1.15,
	EVOLUTION_ALL_STEP = 3,

	PET_STATUS =
	{
		0,
		1,
		2,
		3,
	},

	INVENSLOT_WIDTH_SIZE =
	{
		0,
		3,
		3,
		3,
	},

	INVENSLOT_HEIGHT_SIZE =
	{
		0,
		1,
		2,
		3,
	},

	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_ANCIENT_01", "Petite Breath", "Breathe fire at enemies within a 400 range\r\nthat continuously deals 100% of your average Physical and Magical Attack Power\r\nwhile burning them for 4 seconds.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_ANCIENT_02", "Mega Breath", "Breathe fire at enemies within a 700 range\r\nthat continuously deals 200% of your average Physical and Magical Attack Power\r\nwhile burning them for 6 seconds.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_ANCIENT_03", "Giga Breath", "Breathe fire at enemies within a 1000 range\r\nthat continuously deals 340% of your average Physical and Magical Attack Power\r\nwhile burning them for 8 seconds.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 20%,\r\nCritical Hit Rate increases by 6%,\r\nAttack and Movement Speed increases by 5%,\r\nHP/MP Recovery: Max HP is 0.5% per sec. / 6 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 30%,\r\nCritical Hit Rate increases by 12%,\r\nAttack and Movement Speed increases by 10%,\r\nHP/MP Recovery: Max HP is 1% per sec. / 12 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ap_P_01", "Noble Physique", },
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ap_P_02", "Harmonious Spirit", },
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ap_P_03", "Aggressive Stance", },
	},

	AURA_SKILL_1 =
	{
		11202,
		11321,
	},

	AURA_SKILL_2 =
	{
		12022,
		12042,
	},

	AURA_SKILL_3 =
	{
		13242,
		13342,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Worship!", "WorshipMe!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_TREE_KNIGHT"],
	COMMON_NAME = "트리 나이트",

	CAPRICE = 0.7,
	APPETITE = 1,
	EVOLUTION_ALL_STEP = 3,

	PET_STATUS =
	{
		0,
		1,
		2,
		3,
	},

	INVENSLOT_WIDTH_SIZE =
	{
		0,
		3,
		3,
		3,
	},

	INVENSLOT_HEIGHT_SIZE =
	{
		0,
		1,
		2,
		3,
	},

	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_TREE_01", "Wind Breakthrough", "Swiftly tackle enemies within a 400 range\r\nthat deals 500% of your average Physical and Magical Attack Power\r\nwhile poisoning them for 6 seconds.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_TREE_02", "Wind Cutter", "Swiftly cleave through multiple enemies within a 500 range\r\nthat deals 1000% of your average Physical and Magical Attack Power\r\nwhile poisoning them for 9 seconds.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_TREE_03", "Wind Cleaver", "Swiftly cleave through multiple enemies within a 700 range\r\nthat deals 240% of your average Physical and Magical Attack Power\r\nwhile poisoning them for 12 seconds.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 20%,\r\nCritical Hit Rate increases by 6%,\r\nAttack and Movement Speed increases by 5%,\r\nHP/MP Recovery: Max HP is 0.5% per sec. / 6 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 30%,\r\nCritical Hit Rate increases by 12%,\r\nAttack and Movement Speed increases by 10%,\r\nHP/MP Recovery: Max HP is 1% per sec. / 12 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_01", "Wooden Physique", },
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_02", "Janus Spirit", },
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_03", "Impenetrable Stance", },
	},

	AURA_SKILL_1 =
	{
		11182,
		11301,
	},

	AURA_SKILL_2 =
	{
		12002,
		12062,
	},

	AURA_SKILL_3 =
	{
		13242,
		13321,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Charge!", "Train!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_PETTE_PPORU_EVENT"],
	COMMON_NAME = "야생 쁘띠 뽀루",

	CAPRICE = 1,
	APPETITE = 1.15,
	EVOLUTION_ALL_STEP = 0,

	PET_STATUS =
	{
		3,
	},

	INVENSLOT_WIDTH_SIZE =
	{
		1,
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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_PPORU_03", "Frying Pan Toss", "Throw a feeding bottle, mug cup, and a frying pan at the enemies in front of you\r\nthat deals 400% of your average Physical and Magical Attack Power\r\nwhile pushing them back.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ppo_P_01", "Natural Physique", },
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ppo_P_02", "Pure Spirit", },
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ppo_P_03", "Cowardly Stance", },
	},

	AURA_SKILL_1 =
	{
		11161,
		11281,
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
		"Starve!", "NoFood!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_PETTE_ANCIENT_PPORU_F"],
	COMMON_NAME = "쁘띠 에이션트 뽀루",

	CAPRICE = 1.3,
	APPETITE = 1.15,
	EVOLUTION_ALL_STEP = 0,

	PET_STATUS =
	{
		3,
	},

	INVENSLOT_WIDTH_SIZE =
	{
		3,
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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_ANCIENT_03", "Giga Breath", "Breathe fire at enemies within a 1000 range\r\nthat continuously deals 340% of your average Physical and Magical Attack Power\r\nwhile burning them for 8 seconds.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ap_P_01", "Noble Physique", },
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ap_P_02", "Harmonious Spirit", },
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ap_P_03", "Aggressive Stance", },
	},

	AURA_SKILL_1 =
	{
		11202,
		11321,
	},

	AURA_SKILL_2 =
	{
		12022,
		12042,
	},

	AURA_SKILL_3 =
	{
		13242,
		13342,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Worship!", "WorshipMe!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_TREE_KNIGHT_F"],
	COMMON_NAME = "트리 나이트",

	CAPRICE = 0.7,
	APPETITE = 1,
	EVOLUTION_ALL_STEP = 0,

	PET_STATUS =
	{
		3,
	},

	INVENSLOT_WIDTH_SIZE =
	{
		3,
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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_TREE_03", "Wind Cleaver", "Swiftly cleave through multiple enemies within a 700 range\r\nthat deals 240% of your average Physical and Magical Attack Power\r\nwhile poisoning them for 12 seconds.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_01", "Wooden Physique", },
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_02", "Janus Spirit", },
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_03", "Impenetrable Stance", },
	},

	AURA_SKILL_1 =
	{
		11182,
		11301,
	},

	AURA_SKILL_2 =
	{
		12002,
		12062,
	},

	AURA_SKILL_3 =
	{
		13242,
		13321,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Charge!", "Train!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_HOLLO_WITCH"],
	COMMON_NAME = "할로위치",

	CAPRICE = 1.3,
	APPETITE = 1.15,
	EVOLUTION_ALL_STEP = 3,

	PET_STATUS =
	{
		0,
		1,
		2,
		3,
	},

	INVENSLOT_WIDTH_SIZE =
	{
		0,
		4,
		4,
		4,
	},

	INVENSLOT_HEIGHT_SIZE =
	{
		0,
		1,
		2,
		3,
	},

	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_HOLLO_01", "Petite Magic Missile Lv. 1", "Shoot a magic ball at the enemy within a 400 range\r\nthat deals 270% of your average Physical and Magical Attack Power.\r\nWhen the ball returns it will deal another 270% damage.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_HOLLO_02", "Petite Magic Missile Lv. 2", "Shoot a magic ball at the enemy within a 500 range\r\nthat deals 540% of your average Physical and Magical Attack Power.\r\nWhen the ball returns it will deal another 540% damage.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_HOLLO_03", "Petite Magic Missile Lv. 3", "Shoot a magic ball at the enemy within a 700 range\r\nthat deals 918% of your average Physical and Magical Attack Power.\r\nWhen the ball returns it will deal another 918% damage.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 20%,\r\nCritical Hit Rate increases by 6%,\r\nAttack and Movement Speed increases by 5%,\r\nHP/MP Recovery: Max HP is 0.5% per sec. / 6 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 30%,\r\nCritical Hit Rate increases by 12%,\r\nAttack and Movement Speed increases by 10%,\r\nHP/MP Recovery: Max HP is 1% per sec. / 12 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_hol_P_01", "Shadow Physique", },
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_hol_P_02", "Repletive Spirit", },
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_hol_P_03", "Joyful Stance", },
	},

	AURA_SKILL_1 =
	{
		11222,
		11341,
	},

	AURA_SKILL_2 =
	{
		12121,
		12001,
		12021,
	},

	AURA_SKILL_3 =
	{
		13241,
		13261,
		13282,
		13302,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Warp!", "Fly!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_HOLLO_WITCH_F"],
	COMMON_NAME = "할로위치",

	CAPRICE = 1.3,
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
		3,
	},

	EVOLUTION_STEP_MAX =
	{
		534240,
	},

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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_HOLLO_03", "Petite Magic Missile Lv. 3", "Shoot a magic ball at the enemy within a 700 range\r\nthat deals 918% of your average Physical and Magical Attack Power.\r\nWhen the ball returns it will deal another 918% damage.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_hol_P_01", "Shadow Physique", },
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_hol_P_02", "Repletive Spirit", },
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_hol_P_03", "Joyful Stance", },
	},

	AURA_SKILL_1 =
	{
		11222,
		11341,
	},

	AURA_SKILL_2 =
	{
		12121,
		12001,
		12021,
	},

	AURA_SKILL_3 =
	{
		13241,
		13261,
		13282,
		13302,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Warp!", "Fly!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_XMAS2010_PPORU"],
	COMMON_NAME = "루돌뽀",

	CAPRICE = 1.15,
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
		3,
	},

	EVOLUTION_STEP_MAX =
	{
		534240,
	},

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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "PET_EVENT_PPO_SKILL1", "Snowball Throw", "Throws 3 snowballs at the enemies from 700 feet away\r\nthat deals 918% of your average Physical and Magical Attack Power.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "PET_EVENT_PPO_P_01", "Polar Body", },
		{ "DLG_SKILL_Pet_P_01.tga", "PET_EVENT_PPO_P_02", "Passionate Soul", },
		{ "DLG_SKILL_Pet_P_01.tga", "PET_EVENT_PPO_P_03", "Festive Form", },
	},

	AURA_SKILL_1 =
	{
		11142,
		11261,
	},

	AURA_SKILL_2 =
	{
		1305,
		12042,
		12062,
	},

	AURA_SKILL_3 =
	{
		1501,
		2404,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"NoPresents!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_MYSTIC_NORM"],
	COMMON_NAME = "미스틱",

	CAPRICE = 0.8,
	APPETITE = 1.2,
	EVOLUTION_ALL_STEP = 3,

	PET_STATUS =
	{
		0,
		1,
		2,
		3,
	},

	INVENSLOT_WIDTH_SIZE =
	{
		0,
		3,
		3,
		3,
	},

	INVENSLOT_HEIGHT_SIZE =
	{
		0,
		1,
		2,
		3,
	},

	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "missile_1", "Homing Missile Lv. 1", "Launch a homing missile\r\nthat deals 100% of your average Physical and Magical Attack Power\r\nwhich also deals 400% explosive damage to all surrounding enemies.\r\n\r\n※When the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "missile_2", "Homing Missile Lv. 2", "Launch 2 homing missiles\r\nthat deals 100% of your average Physical and Magical Attack Power\r\nwhich also deals 400% explosive damage to all surrounding enemies.\r\n\r\n※When the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben2.tga", "missile_3", "Homing Missile Lv. 3", "Launch 4 homing missiles\r\nthat deals 100% of your average Physical and Magical Attack Power\r\nwhich also deals 400% explosive damage to all surrounding enemies.\r\n\r\n※When the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 20%,\r\nCritical Hit Rate increases by 6%,\r\nAttack and Movement Speed increases by 5%,\r\nHP/MP Recovery: Max HP is 0.5% per sec. / 6 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 30%,\r\nCritical Hit Rate increases by 12%,\r\nAttack and Movement Speed increases by 10%,\r\nHP/MP Recovery: Max HP is 1% per sec. / 12 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "PET_NASOD_P_01", "Special Alloy Body", },
		{ "DLG_SKILL_Pet_P_02.tga", "PET_NASOD_P_02", "Fighter of the Soul", },
		{ "DLG_SKILL_Pet_P_02.tga", "PET_NASOD_P_03", "Brave Attitude", },
	},

	AURA_SKILL_1 =
	{
		3720,
		11241,
	},

	AURA_SKILL_2 =
	{
		12002,
		12022,
	},

	AURA_SKILL_3 =
	{
		1602,
		4500,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Launch!", "Fireworks!", "Fire!", "Firecracker!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_MYSTIC_BLK"],
	COMMON_NAME = "미스틱 - 블랙",

	CAPRICE = 0.8,
	APPETITE = 1.2,
	EVOLUTION_ALL_STEP = 3,

	PET_STATUS =
	{
		0,
		1,
		2,
		3,
	},

	INVENSLOT_WIDTH_SIZE =
	{
		0,
		4,
		4,
		4,
	},

	INVENSLOT_HEIGHT_SIZE =
	{
		0,
		1,
		2,
		3,
	},

	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "missile_1", "Homing Missile Lv. 1", "Launch a homing missile\r\nthat deals 100% of your average Physical and Magical Attack Power\r\nwhich also deals 400% explosive damage to all surrounding enemies.\r\n\r\n※When the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "missile_2", "Homing Missile Lv. 2", "Launch 2 homing missiles\r\nthat deals 100% of your average Physical and Magical Attack Power\r\nwhich also deals 400% explosive damage to all surrounding enemies.\r\n\r\n※When the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben2.tga", "missile_3", "Homing Missile Lv. 3", "Launch 4 homing missiles\r\nthat deals 100% of your average Physical and Magical Attack Power\r\nwhich also deals 400% explosive damage to all surrounding enemies.\r\n\r\n※When the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 20%,\r\nCritical Hit Rate increases by 6%,\r\nAttack and Movement Speed increases by 5%,\r\nHP/MP Recovery: Max HP is 0.5% per sec. / 6 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 30%,\r\nCritical Hit Rate increases by 12%,\r\nAttack and Movement Speed increases by 10%,\r\nHP/MP Recovery: Max HP is 1% per sec. / 12 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "PET_NASOD_P_01", "Special Alloy Body", },
		{ "DLG_SKILL_Pet_P_02.tga", "PET_NASOD_P_02", "Destroyer of the Soul", },
		{ "DLG_SKILL_Pet_P_02.tga", "PET_NASOD_P_03", "Fearless Attitude", },
	},

	AURA_SKILL_1 =
	{
		3720,
		11241,
	},

	AURA_SKILL_2 =
	{
		12121,
		12001,
		12021,
	},

	AURA_SKILL_3 =
	{
		1602,
		4500,
		1701,
		1901,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Launch!", "Fireworks!", "Fire!", "Firecracker!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_MYSTIC_WHT"],
	COMMON_NAME = "미스틱 - 화이트",

	CAPRICE = 0.8,
	APPETITE = 1.2,
	EVOLUTION_ALL_STEP = 3,

	PET_STATUS =
	{
		0,
		1,
		2,
		3,
	},

	INVENSLOT_WIDTH_SIZE =
	{
		0,
		4,
		4,
		4,
	},

	INVENSLOT_HEIGHT_SIZE =
	{
		0,
		1,
		2,
		3,
	},

	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "missile_1", "Homing Missile Lv. 1", "Launch a homing missile\r\nthat deals 100% of your average Physical and Magical Attack Power\r\nwhich also deals 400% explosive damage to all surrounding enemies.\r\n\r\n※When the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "missile_2", "Homing Missile Lv. 2", "Launch 2 homing missiles\r\nthat deals 100% of your average Physical and Magical Attack Power\r\nwhich also deals 400% explosive damage to all surrounding enemies.\r\n\r\n※When the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben2.tga", "missile_3", "Homing Missile Lv. 3", "Launch 4 homing missiles\r\nthat deals 100% of your average Physical and Magical Attack Power\r\nwhich also deals 400% explosive damage to all surrounding enemies.\r\n\r\n※When the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 20%,\r\nCritical Hit Rate increases by 6%,\r\nAttack and Movement Speed increases by 5%,\r\nHP/MP Recovery: Max HP is 0.5% per sec. / 6 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 30%,\r\nCritical Hit Rate increases by 12%,\r\nAttack and Movement Speed increases by 10%,\r\nHP/MP Recovery: Max HP is 1% per sec. / 12 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "PET_NASOD_P_01", "Special Alloy Body", },
		{ "DLG_SKILL_Pet_P_02.tga", "PET_NASOD_P_02", "Destroyer of the Soul", },
		{ "DLG_SKILL_Pet_P_02.tga", "PET_NASOD_P_03", "Fearless Attitude", },
	},

	AURA_SKILL_1 =
	{
		3720,
		11241,
	},

	AURA_SKILL_2 =
	{
		12121,
		12001,
		12021,
	},

	AURA_SKILL_3 =
	{
		1602,
		4500,
		1701,
		1901,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Launch!", "Fireworks!", "Fire!", "Firecracker!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_MYSTIC_RED"],
	COMMON_NAME = "미스틱 - 레드",

	CAPRICE = 0.8,
	APPETITE = 1.2,
	EVOLUTION_ALL_STEP = 3,

	PET_STATUS =
	{
		0,
		1,
		2,
		3,
	},

	INVENSLOT_WIDTH_SIZE =
	{
		0,
		4,
		4,
		4,
	},

	INVENSLOT_HEIGHT_SIZE =
	{
		0,
		1,
		2,
		3,
	},

	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "missile_1", "Homing Missile Lv. 1", "Launch a homing missile\r\nthat deals 100% of your average Physical and Magical Attack Power\r\nwhich also deals 400% explosive damage to all surrounding enemies.\r\n\r\n※When the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "missile_2", "Homing Missile Lv. 2", "Launch 2 homing missiles\r\nthat deals 100% of your average Physical and Magical Attack Power\r\nwhich also deals 400% explosive damage to all surrounding enemies.\r\n\r\n※When the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben2.tga", "missile_3", "Homing Missile Lv. 3", "Launch 4 homing missiles\r\nthat deals 100% of your average Physical and Magical Attack Power\r\nwhich also deals 400% explosive damage to all surrounding enemies.\r\n\r\n※When the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 20%,\r\nCritical Hit Rate increases by 6%,\r\nAttack and Movement Speed increases by 5%,\r\nHP/MP Recovery: Max HP is 0.5% per sec. / 6 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 30%,\r\nCritical Hit Rate increases by 12%,\r\nAttack and Movement Speed increases by 10%,\r\nHP/MP Recovery: Max HP is 1% per sec. / 12 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "PET_NASOD_P_01", "Special Alloy Body", },
		{ "DLG_SKILL_Pet_P_02.tga", "PET_NASOD_P_02", "Destroyer of the Soul", },
		{ "DLG_SKILL_Pet_P_02.tga", "PET_NASOD_P_03", "Fearless Attitude", },
	},

	AURA_SKILL_1 =
	{
		3720,
		11241,
	},

	AURA_SKILL_2 =
	{
		12121,
		12001,
		12021,
	},

	AURA_SKILL_3 =
	{
		1602,
		4500,
		1701,
		1901,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Launch!", "Fireworks!", "Fire!", "Firecracker!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_HATCHLING_NORM"],
	COMMON_NAME = "해츨링",

	CAPRICE = 1,
	APPETITE = 1,
	EVOLUTION_ALL_STEP = 3,

	PET_STATUS =
	{
		0,
		1,
		2,
		3,
	},

	INVENSLOT_WIDTH_SIZE =
	{
		0,
		4,
		4,
		4,
	},

	INVENSLOT_HEIGHT_SIZE =
	{
		0,
		1,
		2,
		3,
	},

	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben2.tga", "BREATHE_ICE", "Petite Blast Lv.1", "Throw an exploding sphere towards the enemy\r\nthat deals a 100% of your average Physical and Magical Attack Power\r\nwhile dealing 400% of your average damage to the surrounding opponents.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben2.tga", "BREATHE_ICE", "Petite Blast Lv.2", "Throw an exploding sphere towards the enemy\r\nthat deals a 200% of your average Physical and Magical Attack Power\r\nwhile dealing 800% of your average damage to the surrounding opponents.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben2.tga", "BREATHE_ICE", "Petite Blast Lv.3", "Throw an exploding sphere towards the enemy\r\nthat deals a 500% of your average Physical and Magical Attack Power\r\nwhile dealing 1200% of your average damage to the surrounding opponents.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 20%,\r\nCritical Hit Rate increases by 6%,\r\nAttack and Movement Speed increases by 5%,\r\nHP/MP Recovery: Max HP is 0.5% per sec. / 6 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 30%,\r\nCritical Hit Rate increases by 12%,\r\nAttack and Movement Speed increases by 10%,\r\nHP/MP Recovery: Max HP is 1% per sec. / 12 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_02.tga", "PET_DRAGON_P_01", "Polar Body", },
		{ "DLG_SKILL_Pet_P_02.tga", "PET_DRAGON_P_02", "Inviolable to the Soul", },
		{ "DLG_SKILL_Pet_P_02.tga", "PET_DRAGON_P_03", "Swift Stance", },
	},

	AURA_SKILL_1 =
	{
		3760,
		11261,
	},

	AURA_SKILL_2 =
	{
		12044,
		12064,
	},

	AURA_SKILL_3 =
	{
		40004,
		40502,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Spray!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_HATCHLING_DARK"],
	COMMON_NAME = "해츨링 - 다크",

	CAPRICE = 1.3,
	APPETITE = 1.3,
	EVOLUTION_ALL_STEP = 3,

	PET_STATUS =
	{
		0,
		1,
		2,
		3,
	},

	INVENSLOT_WIDTH_SIZE =
	{
		0,
		4,
		4,
		4,
	},

	INVENSLOT_HEIGHT_SIZE =
	{
		0,
		1,
		2,
		3,
	},

	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben2.tga", "BREATHE_DARK", "Petite Blast Lv.1", "Throw an exploding sphere towards the enemy\r\nthat deals a 100% of your average Physical and Magical Attack Power\r\nwhile dealing 400% of your average damage to the surrounding opponents.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben2.tga", "BREATHE_DARK", "Petite Blast Lv.2", "Throw an exploding sphere towards the enemy\r\nthat deals a 200% of your average Physical and Magical Attack Power\r\nwhile dealing 800% of your average damage to the surrounding opponents.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben2.tga", "BREATHE_DARK", "Petite Blast Lv.3", "Throw an exploding sphere towards the enemy\r\nthat deals a 500% of your average Physical and Magical Attack Power\r\nwhile dealing 1200% of your average damage to the surrounding opponents.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 20%,\r\nCritical Hit Rate increases by 6%,\r\nAttack and Movement Speed increases by 5%,\r\nHP/MP Recovery: Max HP is 0.5% per sec. / 6 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 30%,\r\nCritical Hit Rate increases by 12%,\r\nAttack and Movement Speed increases by 10%,\r\nHP/MP Recovery: Max HP is 1% per sec. / 12 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_02.tga", "PET_DRAGON_P_01", "Dark Body", },
		{ "DLG_SKILL_Pet_P_02.tga", "PET_DRAGON_P_02", "Troop of the Soul", },
		{ "DLG_SKILL_Pet_P_02.tga", "PET_DRAGON_P_03", "Non Compassionate Stance", },
	},

	AURA_SKILL_1 =
	{
		11222,
		11341,
	},

	AURA_SKILL_2 =
	{
		12002,
		12022,
		12041,
		12061,
	},

	AURA_SKILL_3 =
	{
		40104,
		40502,
		40902,
		40802,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Spray!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_HATCHLING_FIRE"],
	COMMON_NAME = "해츨링 - 파이어",

	CAPRICE = 1.3,
	APPETITE = 1.3,
	EVOLUTION_ALL_STEP = 3,

	PET_STATUS =
	{
		0,
		1,
		2,
		3,
	},

	INVENSLOT_WIDTH_SIZE =
	{
		0,
		4,
		4,
		4,
	},

	INVENSLOT_HEIGHT_SIZE =
	{
		0,
		1,
		2,
		3,
	},

	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben2.tga", "BREATHE_FIRE", "Petite Blast Lv.1", "Throw an exploding sphere towards the enemy\r\nthat deals a 100% of your average Physical and Magical Attack Power\r\nwhile dealing 400% of your average damage to the surrounding opponents.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben2.tga", "BREATHE_FIRE", "Petite Blast Lv.2", "Throw an exploding sphere towards the enemy\r\nthat deals a 200% of your average Physical and Magical Attack Power\r\nwhile dealing 800% of your average damage to the surrounding opponents.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben2.tga", "BREATHE_FIRE", "Petite Blast Lv.3", "Throw an exploding sphere towards the enemy\r\nthat deals a 500% of your average Physical and Magical Attack Power\r\nwhile dealing 1200% of your average damage to the surrounding opponents.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 20%,\r\nCritical Hit Rate increases by 6%,\r\nAttack and Movement Speed increases by 5%,\r\nHP/MP Recovery: Max HP is 0.5% per sec. / 6 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 30%,\r\nCritical Hit Rate increases by 12%,\r\nAttack and Movement Speed increases by 10%,\r\nHP/MP Recovery: Max HP is 1% per sec. / 12 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_02.tga", "PET_DRAGON_P_01", "Flame Body", },
		{ "DLG_SKILL_Pet_P_02.tga", "PET_DRAGON_P_02", "Troop of the Soul", },
		{ "DLG_SKILL_Pet_P_02.tga", "PET_DRAGON_P_03", "Non Compassionate Stance", },
	},

	AURA_SKILL_1 =
	{
		3720,
		11241,
	},

	AURA_SKILL_2 =
	{
		12002,
		12022,
		12041,
		12061,
	},

	AURA_SKILL_3 =
	{
		40104,
		40502,
		40902,
		40802,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Spray!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_HATCHLING_LIGHT"],
	COMMON_NAME = "해츨링 - 라이트",

	CAPRICE = 1.3,
	APPETITE = 1.3,
	EVOLUTION_ALL_STEP = 3,

	PET_STATUS =
	{
		0,
		1,
		2,
		3,
	},

	INVENSLOT_WIDTH_SIZE =
	{
		0,
		4,
		4,
		4,
	},

	INVENSLOT_HEIGHT_SIZE =
	{
		0,
		1,
		2,
		3,
	},

	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben2.tga", "BREATHE_LIGHT", "Petite Blast Lv.1", "Throw an exploding sphere towards the enemy\r\nthat deals a 100% of your average Physical and Magical Attack Power\r\nwhile dealing 400% of your average damage to the surrounding opponents.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben2.tga", "BREATHE_LIGHT", "Petite Blast Lv.2", "Throw an exploding sphere towards the enemy\r\nthat deals a 200% of your average Physical and Magical Attack Power\r\nwhile dealing 800% of your average damage to the surrounding opponents.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben2.tga", "BREATHE_LIGHT", "Petite Blast Lv.3", "Throw an exploding sphere towards the enemy\r\nthat deals a 500% of your average Physical and Magical Attack Power\r\nwhile dealing 1200% of your average damage to the surrounding opponents.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 20%,\r\nCritical Hit Rate increases by 6%,\r\nAttack and Movement Speed increases by 5%,\r\nHP/MP Recovery: Max HP is 0.5% per sec. / 6 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 30%,\r\nCritical Hit Rate increases by 12%,\r\nAttack and Movement Speed increases by 10%,\r\nHP/MP Recovery: Max HP is 1% per sec. / 12 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_02.tga", "PET_DRAGON_P_01", "Dawn Body", },
		{ "DLG_SKILL_Pet_P_02.tga", "PET_DRAGON_P_02", "Troop of the Soul", },
		{ "DLG_SKILL_Pet_P_02.tga", "PET_DRAGON_P_03", "Non Compassionate Stance", },
	},

	AURA_SKILL_1 =
	{
		11202,
		11321,
	},

	AURA_SKILL_2 =
	{
		12002,
		12022,
		12041,
		12061,
	},

	AURA_SKILL_3 =
	{
		40104,
		40502,
		40902,
		40802,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Spray!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_PETIT_ANCIENT_HALLOW_DARK"],
	COMMON_NAME = "검은 쁘띠 에이션트 뽀루",

	CAPRICE = 1.2,
	APPETITE = 1.3,
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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_ANCIENT_03", "Giga Breath", "Breathe fire at enemies within a 1000 range\r\nthat continuously deals 340% of your average Physical and Magical Attack Power\r\nwhile burning them for 8 seconds.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_02.tga", "PETIT_ANCIENT_HALLOW_DARK_SKILL", "Noble Physique", },
		{ "DLG_SKILL_Pet_P_02.tga", "PETIT_ANCIENT_HALLOW_SPIRITS_SKILL", "Generous Soul", },
		{ "DLG_SKILL_Pet_P_02.tga", "PETIT_ANCIENT_HALLOW_ATTITUDE_SKILL", "Nimble Pose", },
	},

	AURA_SKILL_1 =
	{
		11222,
		11341,
	},

	AURA_SKILL_2 =
	{
		12121,
		12021,
		12041,
		12061,
	},

	AURA_SKILL_3 =
	{
		40002,
		1903,
		2703,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"UpUp!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_PETIT_ANCIENT_HALLOW_FLAME"],
	COMMON_NAME = "불꽃 쁘띠 에이션트 뽀루",

	CAPRICE = 1.2,
	APPETITE = 1.3,
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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_ANCIENT_03", "Giga Breath", "Breathe fire at enemies within a 1000 range\r\nthat continuously deals 340% of your average Physical and Magical Attack Power\r\nwhile burning them for 8 seconds.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_02.tga", "PETIT_ANCIENT_HALLOW_FLAME_SKILL", "Noble Physique", },
		{ "DLG_SKILL_Pet_P_02.tga", "PETIT_ANCIENT_HALLOW_SPIRITS_SKILL", "Generous Soul", },
		{ "DLG_SKILL_Pet_P_02.tga", "PETIT_ANCIENT_HALLOW_ATTITUDE_SKILL", "Nimble Pose", },
	},

	AURA_SKILL_1 =
	{
		3720,
		11241,
	},

	AURA_SKILL_2 =
	{
		12121,
		12021,
		12041,
		12061,
	},

	AURA_SKILL_3 =
	{
		40002,
		1903,
		2703,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"UpUp!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_PETIT_ANCIENT_HALLOW_SPOOK"],
	COMMON_NAME = "유령 쁘띠 에이션트 뽀루",

	CAPRICE = 1.2,
	APPETITE = 1.3,
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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_ANCIENT_03", "Giga Breath", "Breathe fire at enemies within a 1000 range\r\nthat continuously deals 340% of your average Physical and Magical Attack Power\r\nwhile burning them for 8 seconds.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_02.tga", "PETIT_ANCIENT_HALLOW_SPOOK_SKILL", "Noble Physique", },
		{ "DLG_SKILL_Pet_P_02.tga", "PETIT_ANCIENT_HALLOW_SPIRITS_SKILL", "Generous Soul", },
		{ "DLG_SKILL_Pet_P_02.tga", "PETIT_ANCIENT_HALLOW_ATTITUDE_SKILL", "Nimble Pose", },
	},

	AURA_SKILL_1 =
	{
		3760,
		11261,
	},

	AURA_SKILL_2 =
	{
		12121,
		12021,
		12041,
		12061,
	},

	AURA_SKILL_3 =
	{
		40002,
		1903,
		2703,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"UpUp!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_PETIT_ANCIENT_HALLOW_SPRITE"],
	COMMON_NAME = "정령 쁘띠 에이션트 뽀루",

	CAPRICE = 1.2,
	APPETITE = 1.3,
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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_ANCIENT_03", "Giga Breath", "Breathe fire at enemies within a 1000 range\r\nthat continuously deals 340% of your average Physical and Magical Attack Power\r\nwhile burning them for 8 seconds.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ap_P_01", "Noble Physique", },
		{ "DLG_SKILL_Pet_P_02.tga", "PETIT_ANCIENT_HALLOW_SPIRITS_SKILL", "Generous Soul", },
		{ "DLG_SKILL_Pet_P_02.tga", "PETIT_ANCIENT_HALLOW_ATTITUDE_SKILL", "Nimble Pose", },
	},

	AURA_SKILL_1 =
	{
		11202,
		11321,
	},

	AURA_SKILL_2 =
	{
		12121,
		12021,
		12041,
		12061,
	},

	AURA_SKILL_3 =
	{
		40002,
		1903,
		2703,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"UpUp!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_PETIT_PPORU_BOOMHILL"],
	COMMON_NAME = "붐힐 쁘띠 뽀루",

	CAPRICE = 1,
	APPETITE = 1.15,
	EVOLUTION_ALL_STEP = 0,

	PET_STATUS =
	{
		3,
	},

	INVENSLOT_WIDTH_SIZE =
	{
		1,
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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_PPORU_03", "Frying Pan Toss", "Throw a feeding bottle, mug cup, and a frying pan at the enemies in front of you\r\nthat deals 400% of your average Physical and Magical Attack Power\r\nwhile pushing them back.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ppo_P_01", "물방울 신체", },
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ppo_P_02", "Pure Spirit", },
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ppo_P_03", "Cowardly Stance", },
	},

	AURA_SKILL_1 =
	{
		3750,
		11261,
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

}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_TREE_KNIGHT_XMAS2011"],
	COMMON_NAME = "크리스마스 트리 나이트",

	CAPRICE = 1.3,
	APPETITE = 1.3,
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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben2.TGA", "PET_CHRISTMAS", "Splitting Blizzard", "Swiftly cleave through multiple enemies within a 7m range\r\nthat deals 270% of your average Physical and Magical Attack Power\r\nwhile freeze them for 10 seconds.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_02.tga", "PET_CHRIST_P_01", "Evergreen Tree", },
		{ "DLG_SKILL_Pet_P_02.tga", "PET_CHRIST_P_02", "Free Spirit", },
		{ "DLG_SKILL_Pet_P_02.tga", "PET_JOYOUS", "Cheerful Mood", },
	},

	AURA_SKILL_1 =
	{
		3750,
		3790,
		11261,
		11281,
	},

	AURA_SKILL_2 =
	{
		12121,
		12001,
		12041,
		12061,
	},

	AURA_SKILL_3 =
	{
		40102,
		1903,
		2703,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Parade!", "Festival!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_TREE_KNIGHT_SANTA2011"],
	COMMON_NAME = "산타 트리 나이트",

	CAPRICE = 1.3,
	APPETITE = 1.3,
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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben2.TGA", "PET_CHRISTMAS", "Splitting Blizzard", "Swiftly cleave through multiple enemies within a 7m range\r\nthat deals 270% of your average Physical and Magical Attack Power\r\nwhile freeze them for 10 seconds.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_02.tga", "PET_SANTA_P_01", "Lamplights", },
		{ "DLG_SKILL_Pet_P_02.tga", "PET_SANTA_P_02", "Generous Soul", },
		{ "DLG_SKILL_Pet_P_02.tga", "PET_JOYOUS", "Cheerful Mood", },
	},

	AURA_SKILL_1 =
	{
		3710,
		3910,
		11241,
		11341,
	},

	AURA_SKILL_2 =
	{
		12121,
		12021,
		12041,
		12061,
	},

	AURA_SKILL_3 =
	{
		40102,
		1903,
		2703,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Parade!", "Festival!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_PETIT_LIGHTBRINGER_UNIEL"],
	COMMON_NAME = "유니엘-더 라이트 브링어",

	CAPRICE = 0.7,
	APPETITE = 1,
	EVOLUTION_ALL_STEP = 3,

	PET_STATUS =
	{
		0,
		1,
		2,
		3,
	},

	INVENSLOT_WIDTH_SIZE =
	{
		0,
		3,
		3,
		3,
	},

	INVENSLOT_HEIGHT_SIZE =
	{
		0,
		1,
		2,
		3,
	},

	EVOLUTION_STEP_MAX =
	{
		47700,
		190800,
		381600,
		667800,
	},

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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben2.tga", "Holy_Lightning_01", "Holy Lightning", "Holy lightning strikes down on enemies!\r\nDeals 100% of your average (Physical + Magical) Attack Power\r\nand deals Electric Shock damage within a range.\r\nDeals 200% of your average (Physical + Magical) Electric Shock attack 3 times.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben2.tga", "Holy_Lightning_02", "Divine Lightning", "Holy lightning strikes down on enemies!\r\nDeals 100% of your average (Physical + Magical) Attack Power\r\nand deals Electric Shock damage within a range.\r\nDeals 160% of your average (Physical + Magical) Electric Shock attack 4 times.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben2.tga", "Holy_Lightning_03", "Heaven’s Lightning", "Holy lightning strikes down on enemies!\r\nDeals 100% of your average (Physical + Magical) Attack Power\r\nand deals Electric Shock damage within a range.\r\nDeals 120% of your average (Physical + Magical) Electric Shock attack 6 times.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 20%,\r\nCritical Hit Rate increases by 6%,\r\nAttack and Movement Speed increases by 5%,\r\nHP/MP Recovery: Max HP is 0.5% per sec. / 6 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 30%,\r\nCritical Hit Rate increases by 12%,\r\nAttack and Movement Speed increases by 10%,\r\nHP/MP Recovery: Max HP is 1% per sec. / 12 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_02.tga", "Pet_Lightbringer_P_01", "Brilliance Body", },
		{ "DLG_SKILL_Pet_P_03.tga", "Pet_Lightbringer_P_02", "Light's Soul", },
		{ "DLG_SKILL_Pet_P_03.tga", "Pet_Lightbringer_P_03", "Light's Guidance", },
	},

	AURA_SKILL_1 =
	{
		3880,
		11321,
	},

	AURA_SKILL_2 =
	{
		12002,
		12022,
	},

	AURA_SKILL_3 =
	{
		40104,
		40502,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Giddyup!", "Giddyap!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_PETIT_DARKBRINGER_UNIRING"],
	COMMON_NAME = "유니콘-다크브링어 유니링",

	CAPRICE = 1.3,
	APPETITE = 1.3,
	EVOLUTION_ALL_STEP = 3,

	PET_STATUS =
	{
		0,
		1,
		2,
		3,
	},

	INVENSLOT_WIDTH_SIZE =
	{
		0,
		3,
		3,
		3,
	},

	INVENSLOT_HEIGHT_SIZE =
	{
		0,
		1,
		2,
		3,
	},

	EVOLUTION_STEP_MAX =
	{
		47700,
		190800,
		381600,
		667800,
	},

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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben2.tga", "Dark_Lightning_01", "Dark Lightning", "Dark lightning strikes down on enemies!\r\nDeals 100% of your average (Physical + Magical) Attack Power\r\nand deals Electric Shock damage within a range.\r\nDeals 200% of your average (Physical + Magical) Electric Shock attack 3 times.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben2.tga", "Dark_Lightning_02", "Curse Lightning", "Dark lightning strikes down on enemies!\r\nDeals 100% of your average (Physical + Magical) Attack Power\r\nand deals Electric Shock damage within a range.\r\nDeals 160% of your average (Physical + Magical) Electric Shock attack 4 times.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben2.tga", "Dark_Lightning_03", "Demonic Lightning", "Dark lightning strikes down on enemies!\r\nDeals 100% of your average (Physical + Magical) Attack Power\r\nand deals Electric Shock damage within a range.\r\nDeals 120% of your average (Physical + Magical) Electric Shock attack 6 times.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 20%,\r\nCritical Hit Rate increases by 6%,\r\nAttack and Movement Speed increases by 5%,\r\nHP/MP Recovery: Max HP is 0.5% per sec. / 6 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 30%,\r\nCritical Hit Rate increases by 12%,\r\nAttack and Movement Speed increases by 10%,\r\nHP/MP Recovery: Max HP is 1% per sec. / 12 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_03.tga", "Pet_Darkbringer_P_01", "Under Arrest", },
		{ "DLG_SKILL_Pet_P_03.tga", "Pet_Darkbringer_P_02", "Black Soul", },
		{ "DLG_SKILL_Pet_P_03.tga", "Pet_Darkbringer_P_03", "Dark Guidance", },
	},

	AURA_SKILL_1 =
	{
		3920,
		11341,
	},

	AURA_SKILL_2 =
	{
		12121,
		12001,
		12021,
	},

	AURA_SKILL_3 =
	{
		40104,
		40502,
		40802,
		40902,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Giddyup!", "Giddyap!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_PET_SILVERFOX_MIHO"],
	COMMON_NAME = "구미호-은여우 미호",

	CAPRICE = 0.7,
	APPETITE = 1,
	EVOLUTION_ALL_STEP = 3,

	PET_STATUS =
	{
		0,
		1,
		2,
		3,
	},

	INVENSLOT_WIDTH_SIZE =
	{
		0,
		4,
		4,
		4,
	},

	INVENSLOT_HEIGHT_SIZE =
	{
		0,
		1,
		2,
		4,
	},

	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben2.tga", "PET_SILVERFOX_MIHO_S1", "Silver Fox Hunting Method Lv.1", "Foxy nail attack deals 100 % of your avg. Physical and Magical damage.\Summon fox fireballs that deal 650% of your avg. Physical + Magical damage.\n2 fox fireballs are summoned and automatically tracks down the enemy.\n(Freezes for 2 seconds)\n\n※When the pet is in the ‘special’ status, pet’s attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben2.tga", "PET_SILVERFOX_MIHO_S2", "Silver Fox Hunting Method Lv.2", "Foxy nail attack deals 120 % of your avg. Physical and Magical damage.\Summon fox fireballs that deal 720% of your avg. Physical + Magical damage.\n3 fox fireballs are summoned and automatically tracks down the enemy.\n(Freezes for 2.5 seconds)\n\n※When the pet is in the ‘special’ status, pet’s attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben2.tga", "PET_SILVERFOX_MIHO_S3", "Silver Fox Hunting Method Lv.3", "Foxy nail attack deals 200 % of your avg. Physical and Magical damage.\Summon fox fireballs that deal 550% of your avg. Physical + Magical damage.\n9 fox fireballs are summoned and automatically tracks down the enemy.\n(Freezes for 3 seconds)\n\n※When the pet is in the ‘special’ status, pet’s attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 20%,\r\nCritical Hit Rate increases by 6%,\r\nAttack and Movement Speed increases by 5%,\r\nHP/MP Recovery: Max HP is 0.5% per sec. / 6 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 30%,\r\nCritical Hit Rate increases by 12%,\r\nAttack and Movement Speed increases by 10%,\r\nHP/MP Recovery: Max HP is 1% per sec. / 12 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_03.tga", "PET_SILVERFOX_MIHO_P1", "Cold skin", },
		{ "DLG_SKILL_Pet_P_03.tga", "PET_SILVERFOX_MIHO_P2", "Silver Fox Spirit", },
		{ "DLG_SKILL_Pet_P_03.tga", "PET_SILVERFOX_MIHO_P3", "Seduction Stance", },
	},

	AURA_SKILL_1 =
	{
		3760,
		11261,
	},

	AURA_SKILL_2 =
	{
		12002,
		12022,
	},

	AURA_SKILL_3 =
	{
		1602,
		13321,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Seduction!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_PET_FIREFOX_SHIHO"],
	COMMON_NAME = "구미호-불여우 시호",

	CAPRICE = 0.7,
	APPETITE = 1.3,
	EVOLUTION_ALL_STEP = 3,

	PET_STATUS =
	{
		0,
		1,
		2,
		3,
	},

	INVENSLOT_WIDTH_SIZE =
	{
		0,
		4,
		4,
		4,
	},

	INVENSLOT_HEIGHT_SIZE =
	{
		0,
		1,
		2,
		4,
	},

	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben2.tga", "PET_FIREFOX_SHIHO_S1", "Firefox Hunting Method Lv.1", "Foxy nail attack deals 100 % of your avg. Physical and Magical damage.\Summon fox fireballs that deal 650% of your avg. Physical + Magical damage.\n2 fox fireballs are summoned and automatically tracks down the enemy.\n(Burns for 4 secs.)\n\n※When the pet is in the ‘special’ status, pet’s attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben3.tga", "PET_FIREFOX_SHIHO_S2", "Firefox Hunting Method Lv.2", "Foxy nail attack deals 120 % of your avg. Physical and Magical damage.\Summon fox fireballs that deal 720% of your avg. Physical + Magical damage.\n3 fox fireballs are summoned and automatically tracks down the enemy.\n(Burns for 7 secs.)\n\n※When the pet is in the ‘special’ status, pet’s attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben3.tga", "PET_FIREFOX_SHIHO_S3", "Firefox Hunting Method Lv.3", "Foxy nail attack deals 200 % of your avg. Physical and Magical damage.\Summon fox fireballs that deal 550% of your avg. Physical + Magical damage.\n9 fox fireballs are summoned and automatically tracks down the enemy.\n(Burns for 10 secs.)\n\n※When the pet is in the ‘special’ status, pet’s attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 20%,\r\nCritical Hit Rate increases by 6%,\r\nAttack and Movement Speed increases by 5%,\r\nHP/MP Recovery: Max HP is 0.5% per sec. / 6 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 30%,\r\nCritical Hit Rate increases by 12%,\r\nAttack and Movement Speed increases by 10%,\r\nHP/MP Recovery: Max HP is 1% per sec. / 12 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_03.tga", "PET_FIREFOX_SHIHO_P1", "Hot Skin", },
		{ "DLG_SKILL_Pet_P_03.tga", "PET_FIREFOX_SHIHO_P2", "Firefox Spirit", },
		{ "DLG_SKILL_Pet_P_03.tga", "PET_FIREFOX_SHIHO_P3", "Charming Stance", },
	},

	AURA_SKILL_1 =
	{
		3720,
		11241,
	},

	AURA_SKILL_2 =
	{
		12121,
		12001,
		12021,
	},

	AURA_SKILL_3 =
	{
		40104,
		40502,
		40803,
		40903,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Seduction!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_PET_DARKFOX_NAHO"],
	COMMON_NAME = "구미호-어둠여우 나호",

	CAPRICE = 0.7,
	APPETITE = 1.3,
	EVOLUTION_ALL_STEP = 3,

	PET_STATUS =
	{
		0,
		1,
		2,
		3,
	},

	INVENSLOT_WIDTH_SIZE =
	{
		0,
		4,
		4,
		4,
	},

	INVENSLOT_HEIGHT_SIZE =
	{
		0,
		1,
		2,
		4,
	},

	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben3.tga", "PET_DARKFOX_NAHO_S1", "Darkfox Hunting Method Lv.1", "Foxy nail attack deals 100 % of your avg. Physical and Magical damage.\Summon fox fireballs that deal 650% of your avg. Physical + Magical damage.\n2 fox fireballs are summoned and automatically tracks down the enemy.\n(Burns for 4 secs.)\n\n※When the pet is in the ‘special’ status, pet’s attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben3.tga", "PET_DARKFOX_NAHO_S2", "Darkfox Hunting Method Lv.2", "Foxy nail attack deals 120 % of your avg. Physical and Magical damage.\Summon fox fireballs that deal 720% of your avg. Physical + Magical damage.\n3 fox fireballs are summoned and automatically tracks down the enemy.\n(Burns for 7 secs.)\n\n※When the pet is in the ‘special’ status, pet’s attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben3.tga", "PET_DARKFOX_NAHO_S3", "Darkfox Hunting Method Lv.3", "Foxy nail attack deals 200 % of your avg. Physical and Magical damage.\Summon fox fireballs that deal 550% of your avg. Physical + Magical damage.\n9 fox fireballs are summoned and automatically tracks down the enemy.\n(Burns for 10 secs.)\n\n※When the pet is in the ‘special’ status, pet’s attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 20%,\r\nCritical Hit Rate increases by 6%,\r\nAttack and Movement Speed increases by 5%,\r\nHP/MP Recovery: Max HP is 0.5% per sec. / 6 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 30%,\r\nCritical Hit Rate increases by 12%,\r\nAttack and Movement Speed increases by 10%,\r\nHP/MP Recovery: Max HP is 1% per sec. / 12 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_03.tga", "PET_DARKFOX_NAHO_P1", "Evil Skin", },
		{ "DLG_SKILL_Pet_P_03.tga", "PET_DARKFOX_NAHO_P2", "Darkfox Spirit", },
		{ "DLG_SKILL_Pet_P_03.tga", "PET_DARKFOX_NAHO_P3", "Deception Stance", },
	},

	AURA_SKILL_1 =
	{
		3920,
		11341,
	},

	AURA_SKILL_2 =
	{
		12121,
		12001,
		12021,
	},

	AURA_SKILL_3 =
	{
		40104,
		40502,
		40803,
		40903,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Seduction!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_PET_BLOOD_EATER"],
	COMMON_NAME = "블러드 이터",

	CAPRICE = 0.7,
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
		4,
	},

	EVOLUTION_STEP_MAX =
	{
		534240,
	},

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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben3.tga", "PET_BLOOD_EATER_S1", "Blood Taken", "Resonate a sonic wave that will drain health and recover +5HP% per target\r\nthat continuously deals 900% of your average Physical and Magical Attack Power\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_04.tga", "PET_BLOOD_EATER_P1", "Blood Skin", },
		{ "DLG_SKILL_Pet_P_04.tga", "PET_BLOOD_EATER_P2", "Demon Pride", },
		{ "DLG_SKILL_Pet_P_04.tga", "PET_BLOOD_EATER_P3", "Betrayer's Stand", },
	},

	AURA_SKILL_1 =
	{
		4920,
		11341,
	},

	AURA_SKILL_2 =
	{
		40710,
		12121,
	},

	AURA_SKILL_3 =
	{
		40104,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Run Away!", "Run!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_PET_MANA_EATER"],
	COMMON_NAME = "마나 이터",

	CAPRICE = 0.7,
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
		4,
	},

	EVOLUTION_STEP_MAX =
	{
		534240,
	},

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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben3.tga", "PET_MANA_EATER_S1", "Mana Taken", "Resonate a sonic wave that will drain Mana and recover +10HP% per target\r\nthat continuously deals 900% of your average Physical and Magical Attack Power\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_03.tga", "PET_MANA_EATER_P1", "Mana Skin", },
		{ "DLG_SKILL_Pet_P_03.tga", "PET_MANA_EATER_P2", "Demon Pride", },
		{ "DLG_SKILL_Pet_P_04.tga", "PET_MANA_EATER_P3", "Betrayer's Stand", },
	},

	AURA_SKILL_1 =
	{
		4760,
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
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Run Away!", "Run!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_PET_MILLENNIAFOX_EUN"],
	COMMON_NAME = "천년여우 은",

	CAPRICE = 0.7,
	APPETITE = 1,
	EVOLUTION_ALL_STEP = 0,

	PET_STATUS =
	{
		3,
	},

	INVENSLOT_WIDTH_SIZE =
	{
		3,
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
		"PET_Millenniafox_Eun.lua",
	},

	EVOLUTION_STEP_IMAGE =
	{
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_MILLENNIAFOX_EUN_PIC", },
	},

	EVOLUTION_STEP_GAME_IMAGE =
	{
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_MILLENNIAFOX_EUN_GAUGE", },
	},

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben3.tga", "PET_MILLENNIAFOX_EUN_S3", "천년여우의 사냥법Lv.3", "날카로운 할퀴기로 (물리+마법)평균 공격력의 200% 데미지를 주고\n여우불을 소환해 (물리+마법)평균 공격력의 280% 피해를 준다.\n여우불은 9개가 소환되며 사냥할 적을 스스로 찾아 날아간다.\n(3초간 단죄 효과)\n\n※ 펫이 특별한 상태가 되면 친밀도에 따라\n   공격력이 증가합니다.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "격려", "일정 시간 동안 소환자를 격려 한다\n\n<격려 효과>\n최대HP/현재HP 증가 : 40 %\n크리티컬 확률 증가 : 18 %\n동작속도, 이동속도 증가 : 15 %\nHP/MP회복 : 초당 최대HP의 1.5 % / 18 MP\n\n※ 펫이 특별한 상태가 되면 친밀도에 따라\n   격려효과가 증가합니다.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_04.tga", "PET_MILLENNIAFOX_EUN_P1", "신령의 피부", },
		{ "DLG_SKILL_Pet_P_04.tga", "PET_MILLENNIAFOX_EUN_P2", "천년여우령", },
		{ "DLG_SKILL_Pet_P_04.tga", "PET_MILLENNIAFOX_EUN_P3", "신령의 자세", },
	},

	AURA_SKILL_1 =
	{
		3880,
		11321,
	},

	AURA_SKILL_2 =
	{
		12001,
		12021,
	},

	AURA_SKILL_3 =
	{
		40104,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"유혹!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_PETIT_PPORU_HATS_ON"],
	COMMON_NAME = "햇츠온 쁘띠 뽀루",

	CAPRICE = 1,
	APPETITE = 0.7,
	EVOLUTION_ALL_STEP = 0,

	PET_STATUS =
	{
		3,
	},

	INVENSLOT_WIDTH_SIZE =
	{
		3,
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
		"PET_PETTE_PPORU_HATS_ON_STEB_3.lua",
	},

	EVOLUTION_STEP_IMAGE =
	{
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_HATS_ON_PORU", },
	},

	EVOLUTION_STEP_GAME_IMAGE =
	{
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_HATS_ON_PORU_GAGE", },
	},

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben3.tga", "PET_HATS_ON_PORU_S_1", "가방 던지기", "전방에 가방을 던져\n(물리+마법) 평균 공격력의 300% 로\n타격하고 뒤로 밀어 낸다.\n\n※ 펫이 특별한 상태가 되면 친밀도에 따라\n   공격력이 증가합니다.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "격려", "일정 시간 동안 소환자를 격려 한다\n\n<격려 효과>\n최대HP/현재HP 증가 : 20 %\n크리티컬 확률 증가 : 6 %\n동작속도, 이동속도 증가 : 5 %\nHP/MP회복 : 초당 최대HP의 0.5 % / 6 MP\n\n※ 펫이 특별한 상태가 되면 친밀도에 따라\n   격려효과가 증가합니다.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ppo_P_01", "자연의 신체", },
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ppo_P_02", "순수한 영혼", },
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ppo_P_03", "겁쟁이의 자세", },
	},

	AURA_SKILL_1 =
	{
		11161,
		11281,
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
		"굶어!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_STINKO_HATS_ON"],
	COMMON_NAME = "햇츠온 스팅코",

	CAPRICE = 1.2,
	APPETITE = 1.3,
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
		4,
	},

	EVOLUTION_STEP_MAX =
	{
		534240,
	},

	EVOLUTION_STEP_SCRIPTNAME =
	{
		"PET_STINKO_HATS_ON_STEB_3.lua",
	},

	EVOLUTION_STEP_IMAGE =
	{
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_HATS_ON_STINGKO", },
	},

	EVOLUTION_STEP_GAME_IMAGE =
	{
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_HATS_ON_STINGKO_GAGE", },
	},

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben3.tga", "PET_HATS_ON_STINGKO_S_1", "치즈 투척", "전방에 치즈를 던져\n적을 뒤로 밀어내며 (물리+마법) 평균 공격력의 2200% 로\n범위 폭발 데미지를 입힌다.\n\n※ 펫이 특별한 상태가 되면 친밀도에 따라\n   공격력이 증가합니다.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "격려", "일정 시간 동안 소환자를 격려 한다\n\n<격려 효과>\n최대HP/현재HP 증가 : 40 %\n크리티컬 확률 증가 : 18 %\n동작속도, 이동속도 증가 : 15 %\nHP/MP회복 : 초당 최대HP의 1.5 % / 18 MP\n\n※ 펫이 특별한 상태가 되면 친밀도에 따라\n   격려효과가 증가합니다.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_05.tga", "PET_HATS_ON_STINGKO_P_1", "테즈매니아의 신체", },
		{ "DLG_SKILL_Pet_P_05.tga", "PET_HATS_ON_STINGKO_P_2", "순수한 영혼", },
		{ "DLG_SKILL_Pet_P_05.tga", "PET_HATS_ON_STINGKO_P_3", "겁쟁이의 자세", },
	},

	AURA_SKILL_1 =
	{
		3880,
		11321,
	},

	AURA_SKILL_2 =
	{
		12121,
		12001,
		12021,
	},

	AURA_SKILL_3 =
	{
		13242,
		4500,
		40802,
		40902,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"굶어!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_EBONY_HATS_ON"],
	COMMON_NAME = "햇츠온 에보니",

	CAPRICE = 1.2,
	APPETITE = 1.3,
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
		4,
	},

	EVOLUTION_STEP_MAX =
	{
		534240,
	},

	EVOLUTION_STEP_SCRIPTNAME =
	{
		"PET_EBONY_HATS_ON_STEB_3.lua",
	},

	EVOLUTION_STEP_IMAGE =
	{
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_HATS_ON_EBONY", },
	},

	EVOLUTION_STEP_GAME_IMAGE =
	{
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_HATS_ON_EBONY_GAGE", },
	},

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben3.tga", "PET_HATS_ON_EBONY_S_1", "앙~ 다물기", "전방 1200 거리에 이빨 모자를 던져\n(물리+마법) 평균 공격력의 2000% 로\n데미지를 입힌다.\n\n※ 펫이 특별한 상태가 되면 친밀도에 따라\n   공격력이 증가합니다.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "격려", "일정 시간 동안 소환자를 격려 한다\n\n<격려 효과>\n최대HP/현재HP 증가 : 40 %\n크리티컬 확률 증가 : 18 %\n동작속도, 이동속도 증가 : 15 %\nHP/MP회복 : 초당 최대HP의 1.5 % / 18 MP\n\n※ 펫이 특별한 상태가 되면 친밀도에 따라\n   격려효과가 증가합니다.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_05.tga", "PET_HATS_ON_EBONY_P_1", "테즈매니아의 신체", },
		{ "DLG_SKILL_Pet_P_05.tga", "PET_HATS_ON_EBONY_P_2", "외계의 영혼", },
		{ "DLG_SKILL_Pet_P_05.tga", "PET_HATS_ON_EBONY_P_3", "두려움 없는 자세", },
	},

	AURA_SKILL_1 =
	{
		3920,
		11341,
	},

	AURA_SKILL_2 =
	{
		12121,
		12001,
		12021,
	},

	AURA_SKILL_3 =
	{
		13242,
		4500,
		40802,
		40902,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"심술!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_PANDA_STICK_RED"],
	COMMON_NAME = "봉술 팬더-레드",

	CAPRICE = 0.7,
	APPETITE = 1,
	EVOLUTION_ALL_STEP = 3,

	PET_STATUS =
	{
		0,
		1,
		2,
		3,
	},

	INVENSLOT_WIDTH_SIZE =
	{
		0,
		4,
		4,
		4,
	},

	INVENSLOT_HEIGHT_SIZE =
	{
		0,
		1,
		2,
		3,
	},

	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben3.tga", "PET_PANDA_STICK_RED_S_1", "Sweeping Lv. 1", "Use the bamboo stick to send a shockwave\r\nwithin a 7m range that deals 500% of your average\r\nPhysical + Magical Attack Power while burning the victim for 3 sec.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben3.tga", "PET_PANDA_STICK_RED_S_1", "Sweeping Lv. 2", "Use the bamboo stick to send a shockwave\r\nwithin a 15m range that deals 1000% of your average\r\nPhysical + Magical Attack Power while burning the victim for 6 sec.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben3.tga", "PET_PANDA_STICK_RED_S_1", "Sweeping Lv. 3", "Use the bamboo stick to send a shockwave\r\nwithin a 20m range that deals 1700% of your average\r\nPhysical + Magical Attack Power while burning the victim for 9 sec.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 20%,\r\nCritical Hit Rate increases by 6%,\r\nAttack and Movement Speed increases by 5%,\r\nHP/MP Recovery: Max HP is 0.5% per sec. / 6 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 30%,\r\nCritical Hit Rate increases by 12%,\r\nAttack and Movement Speed increases by 10%,\r\nHP/MP Recovery: Max HP is 1% per sec. / 12 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_04.tga", "PET_PANDA_STICK_RED_P_1", "Round Body", },
		{ "DLG_SKILL_Pet_P_05.tga", "PET_PANDA_STICK_RED_P_2", "Grizzly Bear's Soul", },
		{ "DLG_SKILL_Pet_P_05.tga", "PET_PANDA_STICK_RED_P_3", "Kung Fu Panda Stance", },
	},

	AURA_SKILL_1 =
	{
		3720,
		11241,
	},

	AURA_SKILL_2 =
	{
		12002,
		12022,
		12041,
		12061,
	},

	AURA_SKILL_3 =
	{
		40002,
		40102,
		40802,
		40902,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Roll!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_PANDA_STICK_BLUE"],
	COMMON_NAME = "봉술 팬더-블루",

	CAPRICE = 0.7,
	APPETITE = 1,
	EVOLUTION_ALL_STEP = 3,

	PET_STATUS =
	{
		0,
		1,
		2,
		3,
	},

	INVENSLOT_WIDTH_SIZE =
	{
		0,
		4,
		4,
		4,
	},

	INVENSLOT_HEIGHT_SIZE =
	{
		0,
		1,
		2,
		3,
	},

	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben3.tga", "PET_PANDA_STICK_BLUE_S_1", "Sweeping Lv. 1", "Use the bamboo stick to send a shockwave\r\nwithin a 7m range that deals 500% of your average\r\nPhysical + Magical Attack Power while freezing the victim for 3 sec.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben3.tga", "PET_PANDA_STICK_BLUE_S_1", "Sweeping Lv. 2", "Use the bamboo stick to send a shockwave\r\nwithin a 15m range that deals 1000% of your average\r\nPhysical + Magical Attack Power while freezing the victim for 6 sec.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben3.tga", "PET_PANDA_STICK_BLUE_S_1", "Sweeping Lv. 3", "Use the bamboo stick to send a shockwave\r\nwithin a 20m range that deals 1700% of your average\r\nPhysical + Magical Attack Power while freezing the victim for 9 sec.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 20%,\r\nCritical Hit Rate increases by 6%,\r\nAttack and Movement Speed increases by 5%,\r\nHP/MP Recovery: Max HP is 0.5% per sec. / 6 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 30%,\r\nCritical Hit Rate increases by 12%,\r\nAttack and Movement Speed increases by 10%,\r\nHP/MP Recovery: Max HP is 1% per sec. / 12 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_04.tga", "PET_PANDA_STICK_BLUE_P_1", "Round Body", },
		{ "DLG_SKILL_Pet_P_04.tga", "PET_PANDA_STICK_BLUE_P_2", "Polar Bear's Soul", },
		{ "DLG_SKILL_Pet_P_04.tga", "PET_PANDA_STICK_BLUE_P_3", "Kung Fu Panda Stance", },
	},

	AURA_SKILL_1 =
	{
		3760,
		11261,
	},

	AURA_SKILL_2 =
	{
		12002,
		12022,
		12041,
		12061,
	},

	AURA_SKILL_3 =
	{
		40002,
		40102,
		40802,
		40902,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Roll!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_PANDA_STICK_RED_F"],
	COMMON_NAME = "봉술 팬더-레드 (완전체)",

	CAPRICE = 1.3,
	APPETITE = 1.3,
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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben3.tga", "PET_PANDA_STICK_RED_S_1", "Sweeping Lv. 3", "Use the bamboo stick to send a shockwave\r\nwithin a 20m range that deals 1700% of your average\r\nPhysical + Magical Attack Power while burning the victim for 9 sec.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_04.tga", "PET_PANDA_STICK_RED_P_1", "Round Body", },
		{ "DLG_SKILL_Pet_P_05.tga", "PET_PANDA_STICK_RED_P_2", "Grizzly Bear's Soul", },
		{ "DLG_SKILL_Pet_P_05.tga", "PET_PANDA_STICK_RED_P_3", "Kung Fu Panda Stance", },
	},

	AURA_SKILL_1 =
	{
		3720,
		11241,
	},

	AURA_SKILL_2 =
	{
		12002,
		12022,
		12041,
		12061,
	},

	AURA_SKILL_3 =
	{
		40002,
		40102,
		40802,
		40902,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Roll!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_PANDA_STICK_BLUE_F"],
	COMMON_NAME = "봉술 팬더-블루 (완전체)",

	CAPRICE = 1.3,
	APPETITE = 1.3,
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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben3.tga", "PET_PANDA_STICK_BLUE_S_1", "Sweeping Lv. 3", "Use the bamboo stick to send a shockwave\r\nwithin a 20m range that deals 1700% of your average\r\nPhysical + Magical Attack Power while freezing the victim for 9 sec.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_04.tga", "PET_PANDA_STICK_BLUE_P_1", "Round Body", },
		{ "DLG_SKILL_Pet_P_04.tga", "PET_PANDA_STICK_BLUE_P_2", "Polar Bear's Soul", },
		{ "DLG_SKILL_Pet_P_04.tga", "PET_PANDA_STICK_BLUE_P_3", "Kung Fu Panda Stance", },
	},

	AURA_SKILL_1 =
	{
		3760,
		11261,
	},

	AURA_SKILL_2 =
	{
		12002,
		12022,
		12041,
		12061,
	},

	AURA_SKILL_3 =
	{
		40002,
		40102,
		40802,
		40902,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Roll!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_TREE_KNIGHT_SPRING"],
	COMMON_NAME = "트리 나이트 (체리 블러섬)",

	CAPRICE = 0.7,
	APPETITE = 1,
	EVOLUTION_ALL_STEP = 3,

	PET_STATUS =
	{
		0,
		1,
		2,
		3,
	},

	INVENSLOT_WIDTH_SIZE =
	{
		0,
		4,
		4,
		4,
	},

	INVENSLOT_HEIGHT_SIZE =
	{
		0,
		1,
		2,
		3,
	},

	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_TREE_01", "Wind Breakthrough", "Swiftly tackle enemies within a 400 range\r\nthat deals 500% of your average Physical and Magical Attack Power\r\nwhile blinding them for 6 seconds.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_TREE_02", "Wind Cutter", "Swiftly cleave through multiple enemies within a 500 range\r\nthat deals 1000% of your average Physical and Magical Attack Power\r\nwhile blinding them for 9 seconds.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_TREE_03", "Wind Cleaver", "Swiftly cleave through multiple enemies within a 700 range\r\nthat deals 240% of your average Physical and Magical Attack Power\r\nwhile blinding them for 12 seconds.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 20%,\r\nCritical Hit Rate increases by 6%,\r\nAttack and Movement Speed increases by 5%,\r\nHP/MP Recovery: Max HP is 0.5% per sec. / 6 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 30%,\r\nCritical Hit Rate increases by 12%,\r\nAttack and Movement Speed increases by 10%,\r\nHP/MP Recovery: Max HP is 1% per sec. / 12 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_01", "Wooden Physique", },
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_02", "Janus Spirit", },
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_03", "Impenetrable Stance", },
	},

	AURA_SKILL_1 =
	{
		11162,
		11281,
	},

	AURA_SKILL_2 =
	{
		12002,
		12062,
	},

	AURA_SKILL_3 =
	{
		13242,
		13321,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Charge!", "Train!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_TREE_KNIGHT_FALL"],
	COMMON_NAME = "트리 나이트 가을",

	CAPRICE = 0.7,
	APPETITE = 1,
	EVOLUTION_ALL_STEP = 3,

	PET_STATUS =
	{
		0,
		1,
		2,
		3,
	},

	INVENSLOT_WIDTH_SIZE =
	{
		0,
		4,
		4,
		4,
	},

	INVENSLOT_HEIGHT_SIZE =
	{
		0,
		1,
		2,
		3,
	},

	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_TREE_01", "Wind Breakthrough", "Swiftly tackle enemies within a 400 range\r\nthat deals 500% of your average Physical and Magical Attack Power\r\nwhile poisoning them for 6 seconds.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_TREE_02", "Wind Cutter", "Swiftly cleave through multiple enemies within a 500 range\r\nthat deals 1000% of your average Physical and Magical Attack Power\r\nwhile poisoning them for 9 seconds.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_TREE_03", "Wind Cleaver", "Swiftly cleave through multiple enemies within a 700 range\r\nthat deals 240% of your average Physical and Magical Attack Power\r\nwhile poisoning them for 12 seconds.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 20%,\r\nCritical Hit Rate increases by 6%,\r\nAttack and Movement Speed increases by 5%,\r\nHP/MP Recovery: Max HP is 0.5% per sec. / 6 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 30%,\r\nCritical Hit Rate increases by 12%,\r\nAttack and Movement Speed increases by 10%,\r\nHP/MP Recovery: Max HP is 1% per sec. / 12 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_01", "Wooden Physique", },
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_02", "Janus Spirit", },
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_03", "Impenetrable Stance", },
	},

	AURA_SKILL_1 =
	{
		3720,
		11241,
	},

	AURA_SKILL_2 =
	{
		12121,
		12001,
		12041,
		12061,
	},

	AURA_SKILL_3 =
	{
		13242,
		13321,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Charge!", "Train!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_TREE_KNIGHT_WINTER"],
	COMMON_NAME = "트리 나이트 겨울",

	CAPRICE = 0.7,
	APPETITE = 1,
	EVOLUTION_ALL_STEP = 3,

	PET_STATUS =
	{
		0,
		1,
		2,
		3,
	},

	INVENSLOT_WIDTH_SIZE =
	{
		0,
		4,
		4,
		4,
	},

	INVENSLOT_HEIGHT_SIZE =
	{
		0,
		1,
		2,
		3,
	},

	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_TREE_01", "Wind Breakthrough", "Swiftly tackle enemies within a 400 range\r\nthat deals 500% of your average Physical and Magical Attack Power\r\nwhile freezing them for 6 seconds.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_TREE_02", "Wind Cutter", "Swiftly cleave through multiple enemies within a 500 range\r\nthat deals 1000% of your average Physical and Magical Attack Power\r\nwhile freezing them for 9 seconds.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_TREE_03", "Wind Cleaver", "Swiftly cleave through multiple enemies within a 700 range\r\nthat deals 240% of your average Physical and Magical Attack Power\r\nwhile freezing them for 12 seconds.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 20%,\r\nCritical Hit Rate increases by 6%,\r\nAttack and Movement Speed increases by 5%,\r\nHP/MP Recovery: Max HP is 0.5% per sec. / 6 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 30%,\r\nCritical Hit Rate increases by 12%,\r\nAttack and Movement Speed increases by 10%,\r\nHP/MP Recovery: Max HP is 1% per sec. / 12 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_01", "Wooden Physique", },
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_02", "Janus Spirit", },
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_03", "Impenetrable Stance", },
	},

	AURA_SKILL_1 =
	{
		3760,
		11261,
	},

	AURA_SKILL_2 =
	{
		12121,
		12021,
		12041,
		12061,
	},

	AURA_SKILL_3 =
	{
		13242,
		13321,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Charge!", "Train!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_TREE_KNIGHT_SPRING_F"],
	COMMON_NAME = "트리 나이트 (체리 블러섬)",

	CAPRICE = 0.7,
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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_TREE_03", "Wind Cleaver", "Swiftly cleave through multiple enemies within a 700 range\r\nthat deals 240% of your average Physical and Magical Attack Power\r\nwhile blinding them for 12 seconds.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_01", "Wooden Physique", },
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_02", "Janus Spirit", },
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_03", "Impenetrable Stance", },
	},

	AURA_SKILL_1 =
	{
		11162,
		11281,
	},

	AURA_SKILL_2 =
	{
		12002,
		12062,
	},

	AURA_SKILL_3 =
	{
		13242,
		13321,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Train!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_TREE_KNIGHT_FALL_F"],
	COMMON_NAME = "트리 나이트 (메이플)",

	CAPRICE = 0.7,
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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_TREE_03", "Wind Cleaver", "Swiftly cleave through multiple enemies within a 700 range\r\nthat deals 240% of your average Physical and Magical Attack Power\r\nwhile poisoning them for 12 seconds.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_01", "Wooden Physique", },
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_02", "Janus Spirit", },
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_03", "Impenetrable Stance", },
	},

	AURA_SKILL_1 =
	{
		3720,
		11241,
	},

	AURA_SKILL_2 =
	{
		12121,
		12001,
		12041,
		12061,
	},

	AURA_SKILL_3 =
	{
		13242,
		13321,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Train!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_TREE_KNIGHT_WINTER_F"],
	COMMON_NAME = "트리 나이트 (서리 에디션)",

	CAPRICE = 0.7,
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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_TREE_03", "Wind Cleaver", "Swiftly cleave through multiple enemies within a 700 range\r\nthat deals 240% of your average Physical and Magical Attack Power\r\nwhile freezing them for 12 seconds.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_01", "Wooden Physique", },
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_02", "Janus Spirit", },
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_03", "Impenetrable Stance", },
	},

	AURA_SKILL_1 =
	{
		3760,
		11261,
	},

	AURA_SKILL_2 =
	{
		12121,
		12021,
		12041,
		12061,
	},

	AURA_SKILL_3 =
	{
		13242,
		13321,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Train!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_HATCHLING_BLUE"],
	COMMON_NAME = "야생 해츨링",

	CAPRICE = 1.3,
	APPETITE = 1.3,
	EVOLUTION_ALL_STEP = 3,

	PET_STATUS =
	{
		0,
		1,
		2,
		3,
	},

	INVENSLOT_WIDTH_SIZE =
	{
		0,
		1,
		1,
		1,
	},

	INVENSLOT_HEIGHT_SIZE =
	{
		0,
		1,
		2,
		3,
	},

	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben2.tga", "BREATHE_LIGHT", "Petite Blast Lv.1", "Throw an exploding sphere towards the enemy\r\nthat deals a 100% of your average Physical and Magical Attack Power\r\nwhile dealing 400% of your average damage to the surrounding opponents.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben2.tga", "BREATHE_LIGHT", "Petite Blast Lv.2", "Throw an exploding sphere towards the enemy\r\nthat deals a 200% of your average Physical and Magical Attack Power\r\nwhile dealing 800% of your average damage to the surrounding opponents.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben2.tga", "BREATHE_LIGHT", "Petite Blast Lv.3", "Throw an exploding sphere towards the enemy\r\nthat deals a 500% of your average Physical and Magical Attack Power\r\nwhile dealing 1200% of your average damage to the surrounding opponents.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 20%,\r\nCritical Hit Rate increases by 6%,\r\nAttack and Movement Speed increases by 5%,\r\nHP/MP Recovery: Max HP is 0.5% per sec. / 6 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 30%,\r\nCritical Hit Rate increases by 12%,\r\nAttack and Movement Speed increases by 10%,\r\nHP/MP Recovery: Max HP is 1% per sec. / 12 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_02.tga", "PET_DRAGON_P_01", "Dawn Body", },
		{ "DLG_SKILL_Pet_P_02.tga", "PET_DRAGON_P_02", "Troop of the Soul", },
		{ "DLG_SKILL_Pet_P_02.tga", "PET_DRAGON_P_03", "Non Compassionate Stance", },
	},

	AURA_SKILL_1 =
	{
		11201,
		11321,
	},

	AURA_SKILL_2 =
	{
		12001,
		12021,
		12061,
	},

	AURA_SKILL_3 =
	{
		40102,
		40502,
		40902,
		40802,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Spray!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_DEATH_SCYTHE"],
	COMMON_NAME = "사신",

	CAPRICE = 0.7,
	APPETITE = 1,
	EVOLUTION_ALL_STEP = 3,

	PET_STATUS =
	{
		0,
		1,
		2,
		3,
	},

	INVENSLOT_WIDTH_SIZE =
	{
		0,
		4,
		4,
		4,
	},

	INVENSLOT_HEIGHT_SIZE =
	{
		0,
		1,
		2,
		3,
	},

	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Event.tga", "SKILL_SASIN", "Death Scythe Lv. 1", "Lash the scythe towards the enemy!\r\nAn average of 250 % Physical and Magical damage.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Event.tga", "SKILL_SASIN", "Death Scythe Lv. 2", "Lash the scythe towards the enemy!\r\nAn average of 500 % Physical and Magical damage.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Event.tga", "SKILL_SASIN", "Death Scythe Lv. 3", "Lash the scythe towards the enemy!\r\nAn average of 1000 % Physical and Magical damage.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 20%,\r\nCritical Hit Rate increases by 6%,\r\nAttack and Movement Speed increases by 5%,\r\nHP/MP Recovery: Max HP is 0.5% per sec. / 6 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 30%,\r\nCritical Hit Rate increases by 12%,\r\nAttack and Movement Speed increases by 10%,\r\nHP/MP Recovery: Max HP is 1% per sec. / 12 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01_Event.tga", "PET_SASIN_P_01", "Death Body", },
		{ "DLG_SKILL_Pet_P_01_Event.tga", "PET_SASIN_P_02", "Death Soul", },
		{ "DLG_SKILL_Pet_P_01_Event.tga", "PET_SASIN_P_03", "Death Bringer", },
	},

	AURA_SKILL_1 =
	{
		3920,
		11341,
	},

	AURA_SKILL_2 =
	{
		12002,
		12022,
		12062,
	},

	AURA_SKILL_3 =
	{
		40106,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"DeathScythe!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_DEATH_SCYTHE_F"],
	COMMON_NAME = "사신 완전체",

	CAPRICE = 0.7,
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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Event.tga", "SKILL_SASIN", "Death Scythe Lv. 3", "Lash the scythe towards the enemy!\r\nAn average of 1000 % Physical and Magical damage.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01_Event.tga", "PET_SASIN_P_01", "Death Body", },
		{ "DLG_SKILL_Pet_P_01_Event.tga", "PET_SASIN_P_02", "Death Soul", },
		{ "DLG_SKILL_Pet_P_01_Event.tga", "PET_SASIN_P_03", "Death Bringer", },
	},

	AURA_SKILL_1 =
	{
		3920,
		11341,
	},

	AURA_SKILL_2 =
	{
		12002,
		12022,
		12062,
	},

	AURA_SKILL_3 =
	{
		40106,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"DeathScythe!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_PANDA_ROYAL_RED"],
	COMMON_NAME = "황실 팬더-레드 (완전체)",

	CAPRICE = 1.3,
	APPETITE = 1.3,
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
		"PET_PANDA_ROYAL_RED.lua",
	},

	EVOLUTION_STEP_IMAGE =
	{
		{ "DLG_Common_Texture_INT01.tga", "PET_PANDA_RED_PIC_ROYAL", },
	},

	EVOLUTION_STEP_GAME_IMAGE =
	{
		{ "DLG_Common_Texture_INT01.tga", "PET_PANDA_RED_ROYAL", },
	},

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_CN1.tga", "SKILL_PANDA_RED_ROYAL", "Spirit Summon Lv.3", "Randomly summons 1 of the 4 spirit allies to attack enemies.\r\n*Oryed Spirit: Deals 700% of your average Physical and Magical Attack Power within a short radius.\r\nRaul Spirit: Deals 400% of your average Physical and Magical Attack Power within a short radius and stun for 2 sec.\r\nDryad Spirit: Disables the movement of the enemies for 4 sec. within a short radius.\r\nIllipia Spirit: Heals allies HP for 10 sec. within a short radius.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_CN2.tga", "PET_EVENT_PAN_R_03", "Round Body", },
		{ "DLG_SKILL_Pet_CN2.tga", "PET_EVENT_PAN_R_01_ROYAL", "Soul Spirit", },
		{ "DLG_SKILL_Pet_CN2.tga", "PET_EVENT_PAN_R_02_ROYAL", "Spirit Aura", },
	},

	AURA_SKILL_1 =
	{
		3720,
		11241,
	},

	AURA_SKILL_2 =
	{
		12001,
		12021,
		12042,
		12062,
	},

	AURA_SKILL_3 =
	{
		40002,
		40102,
		40502,
		40602,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Aaargh!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_PANDA_ROYAL_WHITE"],
	COMMON_NAME = "황실 팬더-화이트 (완전체)",

	CAPRICE = 1.3,
	APPETITE = 1.3,
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
		"PET_PANDA_ROYAL_WHITE.lua",
	},

	EVOLUTION_STEP_IMAGE =
	{
		{ "DLG_Common_Texture_INT01.tga", "PET_PANDA_WHITE_PIC_ROYAL", },
	},

	EVOLUTION_STEP_GAME_IMAGE =
	{
		{ "DLG_Common_Texture_INT01.tga", "PET_PANDA_WHITE_ROYAL", },
	},

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_CN1.tga", "SKILL_PANDA_WHITE_ROYAL", "Spirit Summon Lv.3", "Randomly summons 1 of the 4 spirit allies to attack enemies.\r\n*Oryed Spirit: Deals 700% of your average Physical and Magical Attack Power within a short radius.\r\nRaul Spirit: Deals 400% of your average Physical and Magical Attack Power within a short radius and stun for 2 sec.\r\nDryad Spirit: Disables the movement of the enemies for 4 sec. within a short radius.\r\nIllipia Spirit: Heals allies HP for 10 sec. within a short radius.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_CN2.tga", "PET_EVENT_PAN_B_03", "Round Body", },
		{ "DLG_SKILL_Pet_CN2.tga", "PET_EVENT_PAN_W_01_ROYAL", "Soul Spirit", },
		{ "DLG_SKILL_Pet_CN2.tga", "PET_EVENT_PAN_W_02_ROYAL", "Spirit Aura", },
	},

	AURA_SKILL_1 =
	{
		3880,
		11321,
	},

	AURA_SKILL_2 =
	{
		12001,
		12021,
		12042,
		12062,
	},

	AURA_SKILL_3 =
	{
		40002,
		40102,
		40502,
		40602,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Aaargh!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_PETIT_LIGHTBRINGER_UNIEL_F"],
	COMMON_NAME = "유니엘-더 라이트 브링어 (완전체)",

	CAPRICE = 0.7,
	APPETITE = 1,
	EVOLUTION_ALL_STEP = 0,

	PET_STATUS =
	{
		3,
	},

	INVENSLOT_WIDTH_SIZE =
	{
		3,
	},

	INVENSLOT_HEIGHT_SIZE =
	{
		3,
	},

	EVOLUTION_STEP_MAX =
	{
		667800,
	},

	EVOLUTION_STEP_SCRIPTNAME =
	{
		"PET_Petit_Lightbringer_Uniel_3.lua",
	},

	EVOLUTION_STEP_IMAGE =
	{
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_LIGHTBRINGER_PIC_3", },
	},

	EVOLUTION_STEP_GAME_IMAGE =
	{
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_LIGHTBRINGER_GAGE_3", },
	},

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben2.tga", "Holy_Lightning_03", "Heaven’s Lightning", "Holy lightning strikes down on enemies!\r\nDeals 100% of your average (Physical + Magical) Attack Power\r\nand deals Electric Shock damage within a range.\r\nDeals 120% of your average (Physical + Magical) Electric Shock attack 6 times.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_02.tga", "Pet_Lightbringer_P_01", "Brilliance Body", },
		{ "DLG_SKILL_Pet_P_03.tga", "Pet_Lightbringer_P_02", "Light's Soul", },
		{ "DLG_SKILL_Pet_P_03.tga", "Pet_Lightbringer_P_03", "Light's Guidance", },
	},

	AURA_SKILL_1 =
	{
		3880,
		11321,
	},

	AURA_SKILL_2 =
	{
		12002,
		12022,
	},

	AURA_SKILL_3 =
	{
		40104,
		40502,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Giddyup!", "Giddyap!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_SHERIFF_NORM"],
	COMMON_NAME = "보안관",

	CAPRICE = 1.2,
	APPETITE = 1,
	EVOLUTION_ALL_STEP = 3,

	PET_STATUS =
	{
		0,
		1,
		2,
		3,
	},

	INVENSLOT_WIDTH_SIZE =
	{
		0,
		4,
		4,
		4,
	},

	INVENSLOT_HEIGHT_SIZE =
	{
		0,
		1,
		2,
		3,
	},

	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

	EVOLUTION_STEP_SCRIPTNAME =
	{
		"BasicPet.lua",
		"PET_SHERIFF_NORM_STEB_1.lua",
		"PET_SHERIFF_NORM_STEB_2.lua",
		"PET_SHERIFF_NORM_STEB_3.lua",
	},

	EVOLUTION_STEP_IMAGE =
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_PIC", },
		{ "DLG_Common_Texture_INT01.tga", "PET_SHERIFF_BROWN_PIC_01", },
		{ "DLG_Common_Texture_INT01.tga", "PET_SHERIFF_BROWN_PIC_02", },
		{ "DLG_Common_Texture_INT01.tga", "PET_SHERIFF_BROWN_PIC_03", },
	},

	EVOLUTION_STEP_GAME_IMAGE =
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_GAGE", },
		{ "DLG_Common_Texture_INT01.tga", "PET_SHERIFF_BROWN_01", },
		{ "DLG_Common_Texture_INT01.tga", "PET_SHERIFF_BROWN_02", },
		{ "DLG_Common_Texture_INT01.tga", "PET_SHERIFF_BROWN_03", },
	},

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_US1.tga", "PET_SHERIFF_SKILL_NORM", "You're under arrest! Lv.1", "Fires 3 bullets with dual water guns dealing 200%(x3) of your average Physical + Magical attack power.\r\nThen freezes enemy for 1 sec.\r\n\r\n※When the pet is in the ‘special’ status, pet’s attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_US1.tga", "PET_SHERIFF_SKILL_NORM", "You're under arrest! Lv.2", "Fires 3 bullets with dual guns dealing 160%(x3) of your average Physical + Magical attack power.\r\nThen shoots both guns simultaneously to deal 160%(x2) of your average Physical + Magical attack power and freezes enemy for 2 sec.\r\n\r\n※When the pet is in the ‘special’ status, pet’s attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_US1.tga", "PET_SHERIFF_SKILL_NORM", "You're under arrest! Lv.3", "Fires 3 bullets with dual guns dealing 120%(x3) of your average Physical + Magical attack power.\r\nThen shoots 6 rapid fire shots dealing 50%(x6) of your average Physical + Magical attack power.\r\nLastly, shoots both guns simultaneously to deal 190%(x2) of your average Physical + Magical attack power and freezes enemy for 3 sec.\r\n\r\n※When the pet is in the ‘special’ status, pet’s attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 20%,\r\nCritical Hit Rate increases by 6%,\r\nAttack and Movement Speed increases by 5%,\r\nHP/MP Recovery: Max HP is 0.5% per sec. / 6 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 30%,\r\nCritical Hit Rate increases by 12%,\r\nAttack and Movement Speed increases by 10%,\r\nHP/MP Recovery: Max HP is 1% per sec. / 12 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_Buff_Pet_US1.tga", "PET_SHERIFF_BUFF_NORM_01", "Righteous Body", },
		{ "DLG_Buff_Pet_US1.tga", "PET_SHERIFF_BUFF_NORM_02", "Righteous Soul", },
		{ "DLG_Buff_Pet_US1.tga", "PET_SHERIFF_BUFF_NORM_03", "Righteous Power", },
	},

	AURA_SKILL_1 =
	{
		3840,
		11261,
	},

	AURA_SKILL_2 =
	{
		12121,
		12021,
		12062,
	},

	AURA_SKILL_3 =
	{
		40103,
		40001,
		40303,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Bang!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_SHERIFF_WHITE"],
	COMMON_NAME = "보안관-화이트",

	CAPRICE = 1.2,
	APPETITE = 1,
	EVOLUTION_ALL_STEP = 3,

	PET_STATUS =
	{
		0,
		1,
		2,
		3,
	},

	INVENSLOT_WIDTH_SIZE =
	{
		0,
		4,
		4,
		4,
	},

	INVENSLOT_HEIGHT_SIZE =
	{
		0,
		1,
		2,
		3,
	},

	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

	EVOLUTION_STEP_SCRIPTNAME =
	{
		"BasicPet.lua",
		"PET_SHERIFF_WHITE_STEB_1.lua",
		"PET_SHERIFF_WHITE_STEB_2.lua",
		"PET_SHERIFF_WHITE_STEB_3.lua",
	},

	EVOLUTION_STEP_IMAGE =
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_PIC", },
		{ "DLG_Common_Texture_INT01.tga", "PET_SHERIFF_WHITE_PIC_01", },
		{ "DLG_Common_Texture_INT01.tga", "PET_SHERIFF_WHITE_PIC_02", },
		{ "DLG_Common_Texture_INT01.tga", "PET_SHERIFF_WHITE_PIC_03", },
	},

	EVOLUTION_STEP_GAME_IMAGE =
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_GAGE", },
		{ "DLG_Common_Texture_INT01.tga", "PET_SHERIFF_WHITE_01", },
		{ "DLG_Common_Texture_INT01.tga", "PET_SHERIFF_WHITE_02", },
		{ "DLG_Common_Texture_INT01.tga", "PET_SHERIFF_WHITE_03", },
	},

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_US1.tga", "PET_SHERIFF_SKILL_WHITE", "You're under arrest! Lv.1", "Fires 3 bullets with dual water guns dealing 200%(x3) of your average Physical + Magical attack power.\r\nThen blinds the enemy for 3 sec.\r\n\r\n※When the pet is in the ‘special’ status, pet’s attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_US1.tga", "PET_SHERIFF_SKILL_WHITE", "You're under arrest! Lv.2", "Fires 3 bullets with dual guns dealing 160%(x3) of your average Physical + Magical attack power.\r\nThen shoots both guns simultaneously to deal 160%(x2) of your average Physical + Magical attack power and blinds the enemy for 6 sec.\r\n\r\n※When the pet is in the ‘special’ status, pet’s attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_US1.tga", "PET_SHERIFF_SKILL_WHITE", "You're under arrest! Lv.3", "Fires 3 bullets with dual guns dealing 120%(x3) of your average Physical + Magical attack power.\r\nThen shoots 6 rapid fire shots dealing 50%(x6) of your average Physical + Magical attack power.\r\nLastly, shoots both guns simultaneously to deal 190%(x2) of your average Physical + Magical attack power and blinds the enemy for 9 sec.\r\n\r\n※When the pet is in the ‘special’ status, pet’s attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 20%,\r\nCritical Hit Rate increases by 6%,\r\nAttack and Movement Speed increases by 5%,\r\nHP/MP Recovery: Max HP is 0.5% per sec. / 6 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 30%,\r\nCritical Hit Rate increases by 12%,\r\nAttack and Movement Speed increases by 10%,\r\nHP/MP Recovery: Max HP is 1% per sec. / 12 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_Buff_Pet_US1.tga", "PET_SHERIFF_BUFF_WHITE_01", "Righteous Body", },
		{ "DLG_Buff_Pet_US1.tga", "PET_SHERIFF_BUFF_WHITE_02", "Righteous Soul", },
		{ "DLG_Buff_Pet_US1.tga", "PET_SHERIFF_BUFF_WHITE_03", "Righteous Power", },
	},

	AURA_SKILL_1 =
	{
		3800,
		11281,
	},

	AURA_SKILL_2 =
	{
		12121,
		12001,
		12042,
	},

	AURA_SKILL_3 =
	{
		40103,
		40001,
		40303,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Bang!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_SHERIFF_NORM_F"],
	COMMON_NAME = "보안관 (완전체)",

	CAPRICE = 1.2,
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
		"PET_SHERIFF_NORM_STEB_3.lua",
	},

	EVOLUTION_STEP_IMAGE =
	{
		{ "DLG_Common_Texture_INT01.tga", "PET_SHERIFF_BROWN_PIC_03", },
	},

	EVOLUTION_STEP_GAME_IMAGE =
	{
		{ "DLG_Common_Texture_INT01.tga", "PET_SHERIFF_BROWN_03", },
	},

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_US1.tga", "PET_SHERIFF_SKILL_NORM", "You're under arrest! Lv.3", "Fires 3 bullets with dual guns dealing 120%(x3) of your average Physical + Magical attack power.\r\nThen shoots 6 rapid fire shots dealing 50%(x6) of your average Physical + Magical attack power.\r\nLastly, shoots both guns simultaneously to deal 190%(x2) of your average Physical + Magical attack power and freezes enemy for 3 sec.\r\n\r\n※When the pet is in the ‘special’ status, pet’s attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_Buff_Pet_US1.tga", "PET_SHERIFF_BUFF_NORM_01", "Righteous Body", },
		{ "DLG_Buff_Pet_US1.tga", "PET_SHERIFF_BUFF_NORM_02", "Righteous Soul", },
		{ "DLG_Buff_Pet_US1.tga", "PET_SHERIFF_BUFF_NORM_03", "Righteous Power", },
	},

	AURA_SKILL_1 =
	{
		3840,
		11261,
	},

	AURA_SKILL_2 =
	{
		12121,
		12021,
		12062,
	},

	AURA_SKILL_3 =
	{
		40103,
		40001,
		40303,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Bang!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_SHERIFF_WHITE_F"],
	COMMON_NAME = "보안관-화이트 (완전체)",

	CAPRICE = 1.2,
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
		"PET_SHERIFF_WHITE_STEB_3.lua",
	},

	EVOLUTION_STEP_IMAGE =
	{
		{ "DLG_Common_Texture_INT01.tga", "PET_SHERIFF_WHITE_PIC_03", },
	},

	EVOLUTION_STEP_GAME_IMAGE =
	{
		{ "DLG_Common_Texture_INT01.tga", "PET_SHERIFF_WHITE_03", },
	},

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_US1.tga", "PET_SHERIFF_SKILL_WHITE", "You're under arrest! Lv.3", "Fires 3 bullets with dual guns dealing 120%(x3) of your average Physical + Magical attack power.\r\nThen shoots 6 rapid fire shots dealing 50%(x6) of your average Physical + Magical attack power.\r\nLastly, shoots both guns simultaneously to deal 190%(x2) of your average Physical + Magical attack power and blinds the enemy for 9 sec.\r\n\r\n※When the pet is in the ‘special’ status, pet’s attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_Buff_Pet_US1.tga", "PET_SHERIFF_BUFF_WHITE_01", "Righteous Body", },
		{ "DLG_Buff_Pet_US1.tga", "PET_SHERIFF_BUFF_WHITE_02", "Righteous Soul", },
		{ "DLG_Buff_Pet_US1.tga", "PET_SHERIFF_BUFF_WHITE_03", "Righteous Power", },
	},

	AURA_SKILL_1 =
	{
		3800,
		11281,
	},

	AURA_SKILL_2 =
	{
		12121,
		12001,
		12042,
	},

	AURA_SKILL_3 =
	{
		40103,
		40001,
		40303,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Bang!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_PET_SILVERFOX_MIHO_F"],
	COMMON_NAME = "구미호-은여우 미호 (완전체)",

	CAPRICE = 0.7,
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
		4,
	},

	EVOLUTION_STEP_MAX =
	{
		534240,
	},

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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben2.tga", "PET_SILVERFOX_MIHO_S3", "Silver Fox Hunting Method Lv.3", "Foxy nail attack deals 200 % of your avg. Physical and Magical damage.\Summon fox fireballs that deal 550% of your avg. Physical + Magical damage.\n9 fox fireballs are summoned and automatically tracks down the enemy.\n(Freezes for 3 seconds)\n\n※When the pet is in the ‘special’ status, pet’s attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_03.tga", "PET_SILVERFOX_MIHO_P1", "Cold skin", },
		{ "DLG_SKILL_Pet_P_03.tga", "PET_SILVERFOX_MIHO_P2", "Silver Fox Spirit", },
		{ "DLG_SKILL_Pet_P_03.tga", "PET_SILVERFOX_MIHO_P3", "Seduction Stance", },
	},

	AURA_SKILL_1 =
	{
		3760,
		11261,
	},

	AURA_SKILL_2 =
	{
		12002,
		12022,
	},

	AURA_SKILL_3 =
	{
		1602,
		13321,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Seduction!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_PET_FIREFOX_SHIHO_F"],
	COMMON_NAME = "구미호-불여우 시호 (완전체)",

	CAPRICE = 0.7,
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
		4,
	},

	EVOLUTION_STEP_MAX =
	{
		534240,
	},

	EVOLUTION_STEP_SCRIPTNAME =
	{
		"PET_Firefox_Shiho_3.lua",
	},

	EVOLUTION_STEP_IMAGE =
	{
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_FIREFOX_SHIHO_PIC3", },
	},

	EVOLUTION_STEP_GAME_IMAGE =
	{
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_FIREFOX_SHIHO_3", },
	},

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben3.tga", "PET_FIREFOX_SHIHO_S3", "Firefox Hunting Method Lv.3", "Foxy nail attack deals 200 % of your avg. Physical and Magical damage.\Summon fox fireballs that deal 550% of your avg. Physical + Magical damage.\n9 fox fireballs are summoned and automatically tracks down the enemy.\n(Burns for 10 secs.)\n\n※When the pet is in the ‘special’ status, pet’s attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_03.tga", "PET_FIREFOX_SHIHO_P1", "Charming Stance", },
		{ "DLG_SKILL_Pet_P_03.tga", "PET_FIREFOX_SHIHO_P2", "Firefox Spirit", },
		{ "DLG_SKILL_Pet_P_03.tga", "PET_FIREFOX_SHIHO_P3", "Charming Stance", },
	},

	AURA_SKILL_1 =
	{
		3720,
		11241,
	},

	AURA_SKILL_2 =
	{
		12121,
		12001,
		12021,
	},

	AURA_SKILL_3 =
	{
		40104,
		40502,
		40803,
		40903,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Seduction!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_PET_DARKFOX_NAHO_F"],
	COMMON_NAME = "구미호-어둠여우 나호 (완전체)",

	CAPRICE = 0.7,
	APPETITE = 1.3,
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
		4,
	},

	EVOLUTION_STEP_MAX =
	{
		534240,
	},

	EVOLUTION_STEP_SCRIPTNAME =
	{
		"PET_Darkfox_Naho_3.lua",
	},

	EVOLUTION_STEP_IMAGE =
	{
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_DARKFOX_NAHO_PIC3", },
	},

	EVOLUTION_STEP_GAME_IMAGE =
	{
		{ "DLG_UI_Common_Texture67_NEW.tga", "PET_DARKFOX_NAHO_3", },
	},

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben3.tga", "PET_DARKFOX_NAHO_S3", "Darkfox Hunting Method Lv.3", "Foxy nail attack deals 200 % of your avg. Physical and Magical damage.\Summon fox fireballs that deal 550% of your avg. Physical + Magical damage.\n9 fox fireballs are summoned and automatically tracks down the enemy.\n(Aging for 5 secs.)\n\n※When the pet is in the ‘special’ status, pet’s attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_03.tga", "PET_DARKFOX_NAHO_P1", "Deception Stance", },
		{ "DLG_SKILL_Pet_P_03.tga", "PET_DARKFOX_NAHO_P2", "Darkfox Spirit", },
		{ "DLG_SKILL_Pet_P_03.tga", "PET_DARKFOX_NAHO_P3", "Deception Stance", },
	},

	AURA_SKILL_1 =
	{
		3920,
		11341,
	},

	AURA_SKILL_2 =
	{
		12121,
		12001,
		12021,
	},

	AURA_SKILL_3 =
	{
		40104,
		40502,
		40803,
		40903,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Seduction!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_PET_MERCENARY_PPORU_EVENT_INT"],
	COMMON_NAME = "신입 용병 뽀루",

	CAPRICE = 1,
	APPETITE = 1.15,
	EVOLUTION_ALL_STEP = 3,

	PET_STATUS =
	{
		0,
		1,
		2,
		3,
	},

	INVENSLOT_WIDTH_SIZE =
	{
		0,
		0,
		0,
		0,
	},

	INVENSLOT_HEIGHT_SIZE =
	{
		0,
		0,
		0,
		0,
	},

	EVOLUTION_STEP_MAX =
	{
		1,
		152640,
		305280,
		534240,
	},

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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_PPORU_01", "Feeding Bottle Toss", "Throw a feeding bottle at the enemies in front of you\r\nthat deals 300% of your average Physical and Magical Attack Power\r\nwhile pushing them back.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_PPORU_02", "Mug Cup Toss", "Throw a feeding bottle and mug cup at the enemies in front of you\r\nthat deals 350% of your average Physical and Magical Attack Power\r\nwhile pushing them back.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_PPORU_03", "Frying Pan Toss", "Throw a feeding bottle, mug cup, and a frying pan at the enemies in front of you\r\nthat deals 400% of your average Physical and Magical Attack Power\r\nwhile pushing them back.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 20%,\r\nCritical Hit Rate increases by 6%,\r\nAttack and Movement Speed increases by 5%,\r\nHP/MP Recovery: Max HP is 0.5% per sec. / 6 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 30%,\r\nCritical Hit Rate increases by 12%,\r\nAttack and Movement Speed increases by 10%,\r\nHP/MP Recovery: Max HP is 1% per sec. / 12 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ppo_P_01", "Natural Physique", },
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ppo_P_02", "Pure Spirit", },
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ppo_P_03", "Cowardly Stance", },
	},

	AURA_SKILL_1 =
	{
		11162,
		11281,
	},

	AURA_SKILL_2 =
	{
		12044,
		12064,
	},

	AURA_SKILL_3 =
	{
		40508,
		40308,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Starve!", "NoFood!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_RAINCOAT_CAT_BLACK"],
	COMMON_NAME = "우비입은 고양이 블랙 - 레비",

	CAPRICE = 1.3,
	APPETITE = 1,
	EVOLUTION_ALL_STEP = 3,

	PET_STATUS =
	{
		0,
		1,
		2,
		3,
	},

	INVENSLOT_WIDTH_SIZE =
	{
		0,
		4,
		4,
		4,
	},

	INVENSLOT_HEIGHT_SIZE =
	{
		0,
		1,
		2,
		3,
	},

	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

	EVOLUTION_STEP_SCRIPTNAME =
	{
		"BasicPet.lua",
		"PET_RAINCOAT_CAT_BLACK_STEB_1.lua",
		"PET_RAINCOAT_CAT_BLACK_STEB_2.lua",
		"PET_RAINCOAT_CAT_BLACK_STEB_3.lua",
	},

	EVOLUTION_STEP_IMAGE =
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_PIC", },
		{ "DLG_Common_Texture_INT01.tga", "PET_RAINCOAT_CAT_BLACK_PIC_01", },
		{ "DLG_Common_Texture_INT01.tga", "PET_RAINCOAT_CAT_BLACK_PIC_02", },
		{ "DLG_Common_Texture_INT01.tga", "PET_RAINCOAT_CAT_BLACK_PIC_03", },
	},

	EVOLUTION_STEP_GAME_IMAGE =
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_GAGE", },
		{ "DLG_Common_Texture_INT01.tga", "PET_RAINCOAT_CAT_BLACK_01", },
		{ "DLG_Common_Texture_INT01.tga", "PET_RAINCOAT_CAT_BLACK_02", },
		{ "DLG_Common_Texture_INT01.tga", "PET_RAINCOAT_CAT_BLACK_03", },
	},

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_CAT.tga", "PET_RAINCOAT_CAT_SKILL_BLACK", "Cat's Whim Lv.1", "Shoots out cutesy charming heart out of his eyes to deal 100% of your average Physical and Magical Attack Power.\nAlso lowers Defense Power by 10% for 2 sec. and stuns.", },
		{ "DLG_SKILL_Pet_CAT.tga", "PET_RAINCOAT_CAT_SKILL_BLACK", "Cat's Whim Lv.2", "Casts one of the two skills randomly.\n*Charming Eyes:  Shoots out cutesy charming heart out of his eyes to deal 100% of your average Physical and Magical Attack Power.\nAlso lowers Defense Power by 30% for 2.5 sec. and stuns.\n*Ultimate Umbrella: Shoots a water ball to deal 1000% of your average Physical and Magical Attack Power and knocks the enemy back.\n\n ※When the pet is in the 'special' status, it's attack power increases according to the affinity level.", },
		{ "DLG_SKILL_Pet_CAT.tga", "PET_RAINCOAT_CAT_SKILL_BLACK", "Cat's Whim Lv.3", "Casts one of the three skills randomly.\n*Charming Eyes:  Shoots out cutesy charming heart out of his eyes to deal 100% of your average Physical and Magical Attack Power.\nAlso lowers Defense Power by 50% for 3 sec. and stuns.\n*Ultimate Umbrella: Shoots a water ball to deal 1000% of your average Physical and Magical Attack Power and knocks the enemy back.\n\n ※When the pet is in the 'special' status, it's attack power increases according to the affinity level.\n*Nyan Storm: Causes rainstorm to deal 430% of average Physical and Magical Attack Power while freezing enemies for 3 sec.\n\n※When the pet is in the 'special' status, it's attack power increases according to the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 20%,\r\nCritical Hit Rate increases by 6%,\r\nAttack and Movement Speed increases by 5%,\r\nHP/MP Recovery: Max HP is 0.5% per sec. / 6 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 30%,\r\nCritical Hit Rate increases by 12%,\r\nAttack and Movement Speed increases by 10%,\r\nHP/MP Recovery: Max HP is 1% per sec. / 12 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_Buff_Pet_CAT.tga", "PET_RAINCOAT_CAT_BUFF_BLACK_01", "Flexible Body", },
		{ "DLG_Buff_Pet_CAT.tga", "PET_RAINCOAT_CAT_BUFF_BLACK_02", "Sensitive Spirit", },
		{ "DLG_Buff_Pet_CAT.tga", "PET_RAINCOAT_CAT_BUFF_BLACK_03", "Lazy Stance", },
	},

	AURA_SKILL_1 =
	{
		3800,
		11281,
	},

	AURA_SKILL_2 =
	{
		12121,
		12001,
		12021,
	},

	AURA_SKILL_3 =
	{
		40002,
		40502,
		40803,
		40903,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Meow!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_RAINCOAT_CAT_YELLOW"],
	COMMON_NAME = "우비입은 고양이 엘로우 - 레지",

	CAPRICE = 1.3,
	APPETITE = 1,
	EVOLUTION_ALL_STEP = 3,

	PET_STATUS =
	{
		0,
		1,
		2,
		3,
	},

	INVENSLOT_WIDTH_SIZE =
	{
		0,
		4,
		4,
		4,
	},

	INVENSLOT_HEIGHT_SIZE =
	{
		0,
		1,
		2,
		3,
	},

	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

	EVOLUTION_STEP_SCRIPTNAME =
	{
		"BasicPet.lua",
		"PET_RAINCOAT_CAT_YELLOW_STEB_1.lua",
		"PET_RAINCOAT_CAT_YELLOW_STEB_2.lua",
		"PET_RAINCOAT_CAT_YELLOW_STEB_3.lua",
	},

	EVOLUTION_STEP_IMAGE =
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_PIC", },
		{ "DLG_Common_Texture_INT01.tga", "PET_RAINCOAT_CAT_ORANGE_PIC_01", },
		{ "DLG_Common_Texture_INT01.tga", "PET_RAINCOAT_CAT_ORANGE_PIC_02", },
		{ "DLG_Common_Texture_INT01.tga", "PET_RAINCOAT_CAT_ORANGE_PIC_03", },
	},

	EVOLUTION_STEP_GAME_IMAGE =
	{
		{ "DLG_UI_Common_Texture42_NEW.tga", "PET_EGG_GAGE", },
		{ "DLG_Common_Texture_INT01.tga", "PET_RAINCOAT_CAT_ORANGE_01", },
		{ "DLG_Common_Texture_INT01.tga", "PET_RAINCOAT_CAT_ORANGE_02", },
		{ "DLG_Common_Texture_INT01.tga", "PET_RAINCOAT_CAT_ORANGE_03", },
	},

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_CAT.tga", "PET_RAINCOAT_CAT_SKILL_YELLOW", "Cat's Whim Lv.1", "Shoots out cutesy charming heart out of his eyes to deal 100% of your average Physical and Magical Attack Power.\nAlso lowers Defense Power by 10% for 2 sec. and stuns.", },
		{ "DLG_SKILL_Pet_CAT.tga", "PET_RAINCOAT_CAT_SKILL_YELLOW", "Cat's Whim Lv.2", "Casts one of the two skills randomly.\n*Charming Eyes:  Shoots out cutesy charming heart out of his eyes to deal 100% of your average Physical and Magical Attack Power.\nAlso lowers Defense Power by 30% for 2.5 sec. and stuns.\n*Ultimate Umbrella: Shoots a water ball to deal 1000% of your average Physical and Magical Attack Power and knocks the enemy back.\n\n ※When the pet is in the 'special' status, it's attack power increases according to the affinity level.", },
		{ "DLG_SKILL_Pet_CAT.tga", "PET_RAINCOAT_CAT_SKILL_YELLOW", "Cat's Whim Lv.3", "Casts one of the three skills randomly.\n*Charming Eyes:  Shoots out cutesy charming heart out of his eyes to deal 100% of your average Physical and Magical Attack Power.\nAlso lowers Defense Power by 50% for 3 sec. and stuns.\n*Ultimate Umbrella: Shoots a water ball to deal 1700% of your average Physical and Magical Attack Power and knocks the enemy back.\n\n ※When the pet is in the 'special' status, it's attack power increases according to the affinity level.\n*Nyan Storm: Causes rainstorm to deal 370% of average Physical and Magical Attack Power while poisoning enemies for 12 sec.\n\n※When the pet is in the 'special' status, it's attack power increases according to the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 20%,\r\nCritical Hit Rate increases by 6%,\r\nAttack and Movement Speed increases by 5%,\r\nHP/MP Recovery: Max HP is 0.5% per sec. / 6 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 30%,\r\nCritical Hit Rate increases by 12%,\r\nAttack and Movement Speed increases by 10%,\r\nHP/MP Recovery: Max HP is 1% per sec. / 12 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_Buff_Pet_CAT.tga", "PET_RAINCOAT_CAT_BUFF_YELLOW_01", "Flexible Body", },
		{ "DLG_Buff_Pet_CAT.tga", "PET_RAINCOAT_CAT_BUFF_YELLOW_02", "Sensitive Spirit", },
		{ "DLG_Buff_Pet_CAT.tga", "PET_RAINCOAT_CAT_BUFF_YELLOW_03", "Lazy Stance", },
	},

	AURA_SKILL_1 =
	{
		3800,
		11281,
	},

	AURA_SKILL_2 =
	{
		12121,
		12001,
		12021,
	},

	AURA_SKILL_3 =
	{
		40002,
		40502,
		40803,
		40903,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Meow!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_RAINCOAT_CAT_BLACK_F"],
	COMMON_NAME = "우비입은 고양이 블랙(완전체) - 레비",

	CAPRICE = 1.3,
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
		"PET_RAINCOAT_CAT_BLACK_STEB_3.lua",
	},

	EVOLUTION_STEP_IMAGE =
	{
		{ "DLG_Common_Texture_INT01.tga", "PET_RAINCOAT_CAT_BLACK_PIC_03", },
	},

	EVOLUTION_STEP_GAME_IMAGE =
	{
		{ "DLG_Common_Texture_INT01.tga", "PET_RAINCOAT_CAT_BLACK_03", },
	},

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_CAT.tga", "PET_RAINCOAT_CAT_SKILL_BLACK", "Cat's Whim Lv.3", "Casts one of the three skills randomly.\n*Charming Eyes:  Shoots out cutesy charming heart out of his eyes to deal 100% of your average Physical and Magical Attack Power.\nAlso lowers Defense Power by 50% for 3 sec. and stuns.\n*Ultimate Umbrella: Shoots a water ball to deal 1000% of your average Physical and Magical Attack Power and knocks the enemy back.\n\n ※When the pet is in the 'special' status, it's attack power increases according to the affinity level.\n*Nyan Storm: Causes rainstorm to deal 430% of average Physical and Magical Attack Power while freezing enemies for 3 sec.\n\n※When the pet is in the 'special' status, it's attack power increases according to the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_Buff_Pet_CAT.tga", "PET_RAINCOAT_CAT_BUFF_BLACK_01", "Flexible Body", },
		{ "DLG_Buff_Pet_CAT.tga", "PET_RAINCOAT_CAT_BUFF_BLACK_02", "Sensitive Spirit", },
		{ "DLG_Buff_Pet_CAT.tga", "PET_RAINCOAT_CAT_BUFF_BLACK_03", "Lazy Stance", },
	},

	AURA_SKILL_1 =
	{
		3800,
		11281,
	},

	AURA_SKILL_2 =
	{
		12121,
		12001,
		12021,
	},

	AURA_SKILL_3 =
	{
		40002,
		40502,
		40803,
		40903,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Meow!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_RAINCOAT_CAT_YELLOW_F"],
	COMMON_NAME = "우비입은 고양이 엘로우(완전체) - 레지",

	CAPRICE = 1.3,
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
		"PET_RAINCOAT_CAT_YELLOW_STEB_3.lua",
	},

	EVOLUTION_STEP_IMAGE =
	{
		{ "DLG_Common_Texture_INT01.tga", "PET_RAINCOAT_CAT_ORANGE_PIC_03", },
	},

	EVOLUTION_STEP_GAME_IMAGE =
	{
		{ "DLG_Common_Texture_INT01.tga", "PET_RAINCOAT_CAT_ORANGE_03", },
	},

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_CAT.tga", "PET_RAINCOAT_CAT_SKILL_YELLOW", "Cat's Whim Lv.3", "Casts one of the three skills randomly.\n*Charming Eyes:  Shoots out cutesy charming heart out of his eyes to deal 100% of your average Physical and Magical Attack Power.\nAlso lowers Defense Power by 50% for 3 sec. and stuns.\n*Ultimate Umbrella: Shoots a water ball to deal 1700% of your average Physical and Magical Attack Power and knocks the enemy back.\n\n ※When the pet is in the 'special' status, it's attack power increases according to the affinity level.\n*Nyan Storm: Causes rainstorm to deal 370% of average Physical and Magical Attack Power while poisoning enemies for 12 sec.\n\n※When the pet is in the 'special' status, it's attack power increases according to the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_Buff_Pet_CAT.tga", "PET_RAINCOAT_CAT_BUFF_YELLOW_01", "Flexible Body", },
		{ "DLG_Buff_Pet_CAT.tga", "PET_RAINCOAT_CAT_BUFF_YELLOW_02", "Sensitive Spirit", },
		{ "DLG_Buff_Pet_CAT.tga", "PET_RAINCOAT_CAT_BUFF_YELLOW_03", "Lazy Stance", },
	},

	AURA_SKILL_1 =
	{
		3800,
		11281,
	},

	AURA_SKILL_2 =
	{
		12121,
		12001,
		12021,
	},

	AURA_SKILL_3 =
	{
		40002,
		40502,
		40803,
		40903,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Meow!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_HOLLO_WITCH_EVENT_F"],
	COMMON_NAME = "할로위치",

	CAPRICE = 1.3,
	APPETITE = 1.15,
	EVOLUTION_ALL_STEP = 0,

	PET_STATUS =
	{
		3,
	},

	INVENSLOT_WIDTH_SIZE =
	{
		0,
	},

	INVENSLOT_HEIGHT_SIZE =
	{
		0,
	},

	EVOLUTION_STEP_MAX =
	{
		534240,
	},

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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_HOLLO_03", "Petite Magic Missile Lv. 3", "Shoot a magic ball at the enemy within a 700 range\r\nthat deals 918% of your average Physical and Magical Attack Power.\r\nWhen the ball returns it will deal another 918% damage.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_hol_P_01", "Shadow Physique", },
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_hol_P_02", "Repletive Spirit", },
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_hol_P_03", "Joyful Stance", },
	},

	AURA_SKILL_1 =
	{
		11222,
		11341,
	},

	AURA_SKILL_2 =
	{
		12121,
		12001,
		12021,
	},

	AURA_SKILL_3 =
	{
		13241,
		13261,
		13282,
		13302,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Warp!", "Fly!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_HALLOWEEN_PUMPKIN_TANYA"],
	COMMON_NAME = "할로윈 호박 요정 - 타냐 ",

	CAPRICE = 1,
	APPETITE = 1,
	EVOLUTION_ALL_STEP = 3,

	PET_STATUS =
	{
		0,
		1,
		2,
		3,
	},

	INVENSLOT_WIDTH_SIZE =
	{
		0,
		4,
		4,
		4,
	},

	INVENSLOT_HEIGHT_SIZE =
	{
		0,
		1,
		2,
		3,
	},

	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_SKILL_INTANT", "Pumpkin Shot Lv.1", "Summons 3 Halloween pumpkins that fly towards the target within a certain range. Deals 150% of your average Physical and Magical Attack Power\n\nWhen the pet is in the 'special' status, it's attack power increases according to the affinity level.", },
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_SKILL_TEEN", "Pumpkin Shot Lv.2", "Summons 5 Halloween pumpkins that fly towards the target within a certain range. Deals 200% of your average Physical and Magical Attack Power\n\nWhen the pet is in the 'special' status, it's attack power increases according to the affinity level.", },
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_SKILL_TANYA", "Pumpkin Shot Lv.3", "Summons 7 Halloween pumpkins that fly towards the target within a certain range. Deals 250% of your average Physical and Magical Attack Power while burning them for 12 seconds. \n\nWhen the pet is in the 'special' status, its attack power increases according to the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_INT01.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 20%,\r\nCritical Hit Rate increases by 6%,\r\nAttack and Movement Speed increases by 5%,\r\nHP/MP Recovery: Max HP is 0.5% per sec. / 6 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_INT01.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 30%,\r\nCritical Hit Rate increases by 12%,\r\nAttack and Movement Speed increases by 10%,\r\nHP/MP Recovery: Max HP is 1% per sec. / 12 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_INT01.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_01", "Candy-holic Body", },
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_02", "Happy Halloween Soul", },
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_TANYA_03", "Enjoying Halloween", },
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
		"Halloween!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_HALLOWEEN_PUMPKIN_LAEL"],
	COMMON_NAME = "할로윈 호박 요정 - 라엘",

	CAPRICE = 1,
	APPETITE = 1,
	EVOLUTION_ALL_STEP = 3,

	PET_STATUS =
	{
		0,
		1,
		2,
		3,
	},

	INVENSLOT_WIDTH_SIZE =
	{
		0,
		4,
		4,
		4,
	},

	INVENSLOT_HEIGHT_SIZE =
	{
		0,
		1,
		2,
		3,
	},

	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_SKILL_INTANT", "Pumpkin Shot Lv.1", "Summons 3 Halloween pumpkins that fly towards the target within a certain range. Deals 150% of your average Physical and Magical Attack Power\n\nWhen the pet is in the 'special' status, it's attack power increases according to the affinity level.", },
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_SKILL_TEEN", "Pumpkin Shot Lv.2", "Summons 5 Halloween pumpkins that fly towards the target within a certain range. Deals 200% of your average Physical and Magical Attack Power\n\nWhen the pet is in the 'special' status, it's attack power increases according to the affinity level.", },
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_SKILL_LAEL", "Pumpkin Shot Lv.3", "Summons 7 Halloween pumpkins that fly towards the target within a certain range. Deals 250% of your average Physical and Magical Attack Power while freezing them for 12 seconds. \n\nWhen the pet is in the 'special' status, its attack power increases according to the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_INT01.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 20%,\r\nCritical Hit Rate increases by 6%,\r\nAttack and Movement Speed increases by 5%,\r\nHP/MP Recovery: Max HP is 0.5% per sec. / 6 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_INT01.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 30%,\r\nCritical Hit Rate increases by 12%,\r\nAttack and Movement Speed increases by 10%,\r\nHP/MP Recovery: Max HP is 1% per sec. / 12 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_INT01.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_01", "Candy-holic Body", },
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_02", "Happy Halloween Soul", },
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_LAEL_03", "Enjoying Halloween", },
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
		"Halloween!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_HALLOWEEN_PUMPKIN_LOJETA"],
	COMMON_NAME = "할로윈 호박 요정 - 로제타",

	CAPRICE = 1,
	APPETITE = 1,
	EVOLUTION_ALL_STEP = 3,

	PET_STATUS =
	{
		0,
		1,
		2,
		3,
	},

	INVENSLOT_WIDTH_SIZE =
	{
		0,
		4,
		4,
		4,
	},

	INVENSLOT_HEIGHT_SIZE =
	{
		0,
		1,
		2,
		3,
	},

	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_SKILL_INTANT", "Pumpkin Shot Lv.1", "Summons 3 Halloween pumpkins that fly towards the target within a certain range. Deals 150% of your average Physical and Magical Attack Power\n\nWhen the pet is in the 'special' status, it's attack power increases according to the affinity level.", },
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_SKILL_TEEN", "Pumpkin Shot Lv.2", "Summons 5 Halloween pumpkins that fly towards the target within a certain range. Deals 200% of your average Physical and Magical Attack Power\n\nWhen the pet is in the 'special' status, it's attack power increases according to the affinity level.", },
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_SKILL_LOJETA", "Pumpkin Shot Lv.3", "Summons 7 Halloween pumpkins that fly towards the target within a certain range. Deals 250% of your average Physical and Magical Attack Power while poisoning them for 12 seconds. \n\nWhen the pet is in the 'special' status, its attack power increases according to the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_INT01.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 20%,\r\nCritical Hit Rate increases by 6%,\r\nAttack and Movement Speed increases by 5%,\r\nHP/MP Recovery: Max HP is 0.5% per sec. / 6 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_INT01.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 30%,\r\nCritical Hit Rate increases by 12%,\r\nAttack and Movement Speed increases by 10%,\r\nHP/MP Recovery: Max HP is 1% per sec. / 12 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_INT01.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_01", "Candy-holic Body", },
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_02", "Happy Halloween Soul", },
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_LOJETA_03", "Enjoying Halloween", },
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
		"Halloween!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_HALLOWEEN_PUMPKIN_NARENEA"],
	COMMON_NAME = "할로윈 호박 요정 - 나르네아",

	CAPRICE = 1,
	APPETITE = 1,
	EVOLUTION_ALL_STEP = 3,

	PET_STATUS =
	{
		0,
		1,
		2,
		3,
	},

	INVENSLOT_WIDTH_SIZE =
	{
		0,
		4,
		4,
		4,
	},

	INVENSLOT_HEIGHT_SIZE =
	{
		0,
		1,
		2,
		3,
	},

	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_SKILL_INTANT", "Pumpkin Shot Lv.1", "Summons 3 Halloween pumpkins that fly towards the target within a certain range. Deals 150% of your average Physical and Magical Attack Power\n\nWhen the pet is in the 'special' status, it's attack power increases according to the affinity level.", },
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_SKILL_TEEN", "Pumpkin Shot Lv.2", "Summons 5 Halloween pumpkins that fly towards the target within a certain range. Deals 200% of your average Physical and Magical Attack Power\n\nWhen the pet is in the 'special' status, it's attack power increases according to the affinity level.", },
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_SKILL_NARENEA", "Pumpkin Shot Lv.3", "Summons 7 Halloween pumpkins that fly towards the target within a certain range. Deals 250% of your average Physical and Magical Attack Power while blinding them for 12 seconds. \n\nWhen the pet is in the 'special' status, its attack power increases according to the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_INT01.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 20%,\r\nCritical Hit Rate increases by 6%,\r\nAttack and Movement Speed increases by 5%,\r\nHP/MP Recovery: Max HP is 0.5% per sec. / 6 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_INT01.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 30%,\r\nCritical Hit Rate increases by 12%,\r\nAttack and Movement Speed increases by 10%,\r\nHP/MP Recovery: Max HP is 1% per sec. / 12 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_INT01.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_01", "Candy-holic Body", },
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_02", "Happy Halloween Soul", },
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_NARENEA_03", "Enjoying Halloween", },
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
		"Halloween!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_HALLOWEEN_PUMPKIN_ELDENA"],
	COMMON_NAME = "할로윈 호박 요정 - 엘데나",

	CAPRICE = 1,
	APPETITE = 1,
	EVOLUTION_ALL_STEP = 3,

	PET_STATUS =
	{
		0,
		1,
		2,
		3,
	},

	INVENSLOT_WIDTH_SIZE =
	{
		0,
		4,
		4,
		4,
	},

	INVENSLOT_HEIGHT_SIZE =
	{
		0,
		1,
		2,
		3,
	},

	EVOLUTION_STEP_MAX =
	{
		38160,
		152640,
		305280,
		534240,
	},

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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_SKILL_INTANT", "Pumpkin Shot Lv.1", "Summons 3 Halloween pumpkins that fly towards the target within a certain range. Deals 150% of your average Physical and Magical Attack Power\n\nWhen the pet is in the 'special' status, it's attack power increases according to the affinity level.", },
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_SKILL_TEEN", "Pumpkin Shot Lv.2", "Summons 5 Halloween pumpkins that fly towards the target within a certain range. Deals 200% of your average Physical and Magical Attack Power\n\nWhen the pet is in the 'special' status, it's attack power increases according to the affinity level.", },
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_SKILL_ELDENA", "Descent Queen Pumpkin Lv.3", "Summoned Halloween pumpkins damage enemies and deals 100% of your average Physical and Magical Attack Power and explodes dealing 300% of your average Physical and Magical Attack Power. Each pumpkin burns, freezes, poisons and blinds for 12 seconds.\n\nWhen the pet is in the 'special' status, its attack power increases according to the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_INT01.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 20%,\r\nCritical Hit Rate increases by 6%,\r\nAttack and Movement Speed increases by 5%,\r\nHP/MP Recovery: Max HP is 0.5% per sec. / 6 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_INT01.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 30%,\r\nCritical Hit Rate increases by 12%,\r\nAttack and Movement Speed increases by 10%,\r\nHP/MP Recovery: Max HP is 1% per sec. / 12 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
		{ "DLG_SKILL_Pet_INT01.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_01", "Candy-holic Body", },
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_02", "Happy Halloween Soul", },
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_ELDENA_03", "Enjoying Halloween", },
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
		"Halloween!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_HALLOWEEN_PUMPKIN_TANYA_F"],
	COMMON_NAME = "할로윈 호박 요정 - 타냐  (완전체)",

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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_SKILL_TANYA", "Pumpkin Shot Lv.3", "Summons 7 Halloween pumpkins that fly towards the target within a certain range. Deals 250% of your average Physical and Magical Attack Power while burning them for 12 seconds. \n\nWhen the pet is in the 'special' status, its attack power increases according to the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_INT01.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_01", "Candy-holic Body", },
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_02", "Happy Halloween Soul", },
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_TANYA_03", "Enjoying Halloween", },
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
		"Halloween!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_HALLOWEEN_PUMPKIN_LAEL_F"],
	COMMON_NAME = "할로윈 호박 요정 - 라엘 (완전체)",

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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_SKILL_LAEL", "Pumpkin Shot Lv.3", "Summons 7 Halloween pumpkins that fly towards the target within a certain range. Deals 250% of your average Physical and Magical Attack Power while freezing them for 12 seconds. \n\nWhen the pet is in the 'special' status, its attack power increases according to the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_INT01.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_01", "Candy-holic Body", },
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_02", "Happy Halloween Soul", },
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_LAEL_03", "Enjoying Halloween", },
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
		"Halloween!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_HALLOWEEN_PUMPKIN_LOJETA_F"],
	COMMON_NAME = "할로윈 호박 요정 - 로제타 (완전체)",

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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_SKILL_LOJETA", "Pumpkin Shot Lv.3", "Summons 7 Halloween pumpkins that fly towards the target within a certain range. Deals 250% of your average Physical and Magical Attack Power while poisoning them for 12 seconds. \n\nWhen the pet is in the 'special' status, its attack power increases according to the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_INT01.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_01", "Candy-holic Body", },
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_02", "Happy Halloween Soul", },
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_LOJETA_03", "Enjoying Halloween", },
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
		"Halloween!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_HALLOWEEN_PUMPKIN_NARENEA_F"],
	COMMON_NAME = "할로윈 호박 요정 - 나르네아 (완전체)",

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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_SKILL_NARENEA", "Pumpkin Shot Lv.3", "Summons 7 Halloween pumpkins that fly towards the target within a certain range. Deals 250% of your average Physical and Magical Attack Power while blinding them for 12 seconds. \n\nWhen the pet is in the 'special' status, its attack power increases according to the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_INT01.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_01", "Candy-holic Body", },
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_02", "Happy Halloween Soul", },
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_NARENEA_03", "Enjoying Halloween", },
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
		"Halloween!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_HALLOWEEN_PUMPKIN_ELDENA_F"],
	COMMON_NAME = "할로윈 호박 요정 - 엘데나( 완전체 )",

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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_SKILL_ELDENA", "Descent Queen Pumpkin Lv.3", "Summoned Halloween pumpkins damage enemies and deals 100% of your average Physical and Magical Attack Power and explodes dealing 300% of your average Physical and Magical Attack Power. Each pumpkin burns, freezes, poisons and blinds for 12 seconds.\n\nWhen the pet is in the 'special' status, its attack power increases according to the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_INT01.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_01", "Candy-holic Body", },
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_02", "Happy Halloween Soul", },
		{ "DLG_SKILL_Pet_INT01.tga", "PET_HALLOWEENFAIRY_BUFF_ELDENA_03", "Enjoying Halloween", },
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
		"Halloween!", 
	},
}

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
		{ "DLG_SKILL_Pet_common1.tga", "PET_FIREWORK_PPORU_SKILL", "Fireworks", "Throw fireworks at all enemies in front of you\nthat deals 1050% of your average Physical and Magical Attack Power.\n\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ppo_P_01", "Natural Physique", },
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ppo_P_02", "Pure Spirit", },
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_ppo_P_03", "Cowardly Stance", },
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
		"Starve!", "NoFood!", 
	},
}

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
		{ "DLG_Common_Texture_INT04.tga", "PET_SNOWBUMP_SKILL_03", "Whirlwind Lv.3", "Turn around and around to create a whirlwind jump that lands on monsters and causes a shockwave of 1600 % damage to surrounding monsters.\n\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_Common_Texture_INT04.tga", "PET_SNOWBUMP_BUFF_01", "Snowman's Physique", },
		{ "DLG_Common_Texture_INT04.tga", "PET_SNOWBUMP_BUFF_02", "Snowman's Spirit", },
		{ "DLG_Common_Texture_INT04.tga", "PET_SNOWBUMP_BUFF_03", "Snowman's Way", },
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
		"JingleBell!", 
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
		{ "DLG_Common_Texture_INT04.tga", "PET_HUNTER_PENGUIN_SKILL_03", "Snow Shot Lv.3", "Fire at enemies for 1600 % damage. Enemies damaged are slowed for a certain period of time.\n\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_Common_Texture_INT04.tga", "PET_HUNTER_PENGUIN_BUFF_01", "Hunter's Physique", },
		{ "DLG_Common_Texture_INT04.tga", "PET_HUNTER_PENGUIN_BUFF_02", "Hunter's Spirit", },
		{ "DLG_Common_Texture_INT04.tga", "PET_HUNTER_PENGUIN_BUFF_03", "Hunter's Way", },
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
		"LoosenUp!", 
	},
}

g_pPetManager:AddPetTemplet
{
	PET_ID = PET_UNIT_ID["PUI_TREE_KNIGHT_EVENT_F"],
	COMMON_NAME = "트리 나이트",

	CAPRICE = 0.7,
	APPETITE = 1,
	EVOLUTION_ALL_STEP = 0,

	PET_STATUS =
	{
		3,
	},

	INVENSLOT_WIDTH_SIZE =
	{
		0,
	},

	INVENSLOT_HEIGHT_SIZE =
	{
		0,
	},

	EVOLUTION_STEP_MAX =
	{
		534240,
	},

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

	ATTACK_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_TREE_03", "Wind Cleaver", "Swiftly cleave through multiple enemies within a 700 range\r\nthat deals 240% of your average Physical and Magical Attack Power\r\nwhile blinding them for 12 seconds.\r\n\r\nWhen the pet is in the 'special' status, pet's attack power increases accordingly with the affinity level.", },
	},

	CHEER_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_Ruben.tga", "SKILL_CHEER", "Encouragement", "Your confidence and energy will increase during this skill's duration.\r\nMax HP and remaining HP increases by 40%,\r\nCritical Hit Rate increases by 18%,\r\nAttack and Movement Speed increases by 15%,\r\nHP/MP Recovery: Max HP is 1.5% per sec. / 18 MP\r\n\r\nWhen the pet is in the 'special' status, pet's encouragement effect increases accordingly with the affinity level.", },
	},

	AURA_SKILL_INFO =
	{
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_01", "Wooden Physique", },
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_02", "Janus Spirit", },
		{ "DLG_SKILL_Pet_P_01.tga", "Pet_tr_P_03", "Impenetrable Stance", },
	},

	AURA_SKILL_1 =
	{
		11182,
		11301,
	},

	AURA_SKILL_2 =
	{
		12002,
		12062,
	},

	AURA_SKILL_3 =
	{
		13242,
		13321,
	},

	SPECIAL_ACTION_COMMAND =
	{
		"Train!", 
	},
}

