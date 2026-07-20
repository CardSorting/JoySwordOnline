-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



-- 던전방 생성할 때 자동으로 만들어지는 방 이름 (공통) 
-- 각 던전별로는 normal data에 작업하시면 됩니다. AUTO_DUNGEON_ROOM_TITLE로 검색하시면 나와요~


g_pDungeonManager:AddDefaultRoomTitle_LUA( STR_ID_2751 );

g_pDungeonManager:AddDefaultRoomTitle_LUA( STR_ID_2752 );

g_pDungeonManager:AddDefaultRoomTitle_LUA( STR_ID_2753 );

g_pDungeonManager:AddDefaultRoomTitle_LUA( STR_ID_2754 );

g_pDungeonManager:AddDefaultRoomTitle_LUA( STR_ID_2755 );
														   
g_pDungeonManager:AddDefaultRoomTitle_LUA( STR_ID_2756 );

g_pDungeonManager:AddDefaultRoomTitle_LUA( STR_ID_2757 );

g_pDungeonManager:AddDefaultRoomTitle_LUA( STR_ID_2758 );

g_pDungeonManager:AddDefaultRoomTitle_LUA( STR_ID_2759 );

g_pDungeonManager:AddDefaultRoomTitle_LUA( STR_ID_2760 );


---------------------------- 월드 툴 용 ------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_TEMP0"],
	dungeonName 		= STR_ID_2763,
	dataFileName 		= "Dungeon_Monster_Test.lua",

	requireDungeonID	= 0,
	requireSpirit		= 1,    --임시 근성도 fix!! 0 으로 해야???

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_NPCLevel			= 0,


	m_TextureName		= "DLG_New_Dungeon_Image7.dds",
	m_PieceName			= "DUNGEON_IMAGE_TUTORIAL",
}

-------------------------------필드 튜토리얼--------------
-------------------------------엘소드---------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_BATTLE_FIELD_TUTORIAL_ELSWORD"],
	dungeonName 		= STR_ID_2761,
	dataFileName 		= "Dungeon_Battle_Field_Tutorial_Elsword.lua",

	requireDungeonID	= 0,
	requireSpirit		= 1,    --임시 근성도 fix!! 0 으로 해야???

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 0,

	m_LoadingScreenFileName	= "HQ_Loading_RUBEN_PROLOG_01.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_Loading_RUBEN_PROLOG_02.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	m_TextureName		= "DLG_New_Dungeon_Image7.dds",
	m_PieceName			= "DUNGEON_IMAGE_TUTORIAL",
}
-------------------------------아이샤---------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_BATTLE_FIELD_TUTORIAL_AISHA"],
	dungeonName 		= STR_ID_2761,
	dataFileName 		= "Dungeon_Battle_Field_Tutorial_Aisha.lua",

	requireDungeonID	= 0,
	requireSpirit		= 1,    --임시 근성도 fix!! 0 으로 해야???

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 0,

	m_LoadingScreenFileName	= "HQ_Loading_RUBEN_PROLOG_01.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_Loading_RUBEN_PROLOG_02.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	m_TextureName		= "DLG_New_Dungeon_Image7.dds",
	m_PieceName			= "DUNGEON_IMAGE_TUTORIAL",
}
-------------------------------레나---------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_BATTLE_FIELD_TUTORIAL_LENA"],
	dungeonName 		= STR_ID_2761,
	dataFileName 		= "Dungeon_Battle_Field_Tutorial_Lena.lua",

	requireDungeonID	= 0,
	requireSpirit		= 1,    --임시 근성도 fix!! 0 으로 해야???

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 0,

	m_LoadingScreenFileName	= "HQ_Loading_RUBEN_PROLOG_01.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_Loading_RUBEN_PROLOG_02.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	m_TextureName		= "DLG_New_Dungeon_Image7.dds",
	m_PieceName			= "DUNGEON_IMAGE_TUTORIAL",
}
-------------------------------레이븐---------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_BATTLE_FIELD_TUTORIAL_RAVEN"],
	dungeonName 		= STR_ID_2761,
	dataFileName 		= "Dungeon_Battle_Field_Tutorial_Raven.lua",

	requireDungeonID	= 0,
	requireSpirit		= 1,    --임시 근성도 fix!! 0 으로 해야???

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 0,

	m_LoadingScreenFileName	= "HQ_Loading_RUBEN_PROLOG_01.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_Loading_RUBEN_PROLOG_02.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	m_TextureName		= "DLG_New_Dungeon_Image7.dds",
	m_PieceName			= "DUNGEON_IMAGE_TUTORIAL",
}
-------------------------------이브---------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_BATTLE_FIELD_TUTORIAL_EVE"],
	dungeonName 		= STR_ID_2761,
	dataFileName 		= "Dungeon_Battle_Field_Tutorial_Eve.lua",

	requireDungeonID	= 0,
	requireSpirit		= 1,    --임시 근성도 fix!! 0 으로 해야???

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 0,

	m_LoadingScreenFileName	= "HQ_Loading_RUBEN_PROLOG_01.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_Loading_RUBEN_PROLOG_02.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	m_TextureName		= "DLG_New_Dungeon_Image7.dds",
	m_PieceName			= "DUNGEON_IMAGE_TUTORIAL",
}
-------------------------------청---------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_BATTLE_FIELD_TUTORIAL_CHUNG"],
	dungeonName 		= STR_ID_2761,
	dataFileName 		= "Dungeon_Battle_Field_Tutorial_Chung.lua",

	requireDungeonID	= 0,
	requireSpirit		= 1,    --임시 근성도 fix!! 0 으로 해야???

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 0,

	m_LoadingScreenFileName	= "HQ_Loading_RUBEN_PROLOG_01.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_Loading_RUBEN_PROLOG_02.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	m_TextureName		= "DLG_New_Dungeon_Image7.dds",
	m_PieceName			= "DUNGEON_IMAGE_TUTORIAL",
}
-- 아라
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_BATTLE_FIELD_TUTORIAL_ARA"],
	dungeonName			= STR_ID_2761,
	dataFileName		= "Dungeon_Battle_Field_Tutorial_Ara.lua",

	requireDungeonID	= 0,
	requireSpirit		= 1,    --임시 근성도 fix!! 0 으로 해야???

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	m_RequireItemLevel	= 0,
	m_NPCLevel			= 0,

	m_LoadingScreenFileName	= "HQ_Loading_RUBEN_PROLOG_01.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_Loading_RUBEN_PROLOG_02.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
				
	m_TextureName		= "DLG_New_Dungeon_Image7.dds",
	m_PieceName			= "DUNGEON_IMAGE_TUTORIAL",
}
-- 엘리시스
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_BATTLE_FIELD_TUTORIAL_ELESIS"],
	dungeonName			= STR_ID_2761,
	dataFileName		= "Dungeon_Battle_Field_Tutorial_EL.lua",

	requireDungeonID	= 0,
	requireSpirit		= 1,

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	m_RequireItemLevel	= 0,
	m_NPCLevel			= 0,

	m_LoadingScreenFileName	= "HQ_Loading_RUBEN_PROLOG_01.TGA",
	m_LoadingScreenFileName2= "HQ_Loading_RUBEN_PROLOG_02.TGA",

	m_TextureName		= "DLG_New_Dungeon_Image7.dds",
	m_PieceName			= "DUNGEON_IMAGE_TUTORIAL",
}
---------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_TUTORIAL_ELSWORD"],
	dungeonName 		= STR_ID_2761,
	dataFileName 		= "Dungeon_ElTutorial_ELSWORD.lua",

	requireDungeonID	= 0,
	requireSpirit		= 1,    --임시 근성도 fix!! 0 으로 해야???

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 0,


	m_TextureName		= "DLG_New_Dungeon_Image7.dds",
	m_PieceName			= "DUNGEON_IMAGE_TUTORIAL",
}


---------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_TUTORIAL_ARME"],
	dungeonName 		= STR_ID_2761,
	dataFileName 		= "Dungeon_ElTutorial_ARME.lua",

	requireDungeonID	= 0,
	requireSpirit		= 1,    --임시 근성도

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 0,
	
	m_TextureName		= "DLG_New_Dungeon_Image7.dds",
	m_PieceName			= "DUNGEON_IMAGE_TUTORIAL",


}

---------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_TUTORIAL_LIRE"],
	dungeonName 		= STR_ID_2761,
	dataFileName 		= "Dungeon_ElTutorial_LIRE.lua",

	requireDungeonID	= 0,
	requireSpirit		= 1,    --임시 근성도

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 0,
	
	m_TextureName		= "DLG_New_Dungeon_Image7.dds",
	m_PieceName			= "DUNGEON_IMAGE_TUTORIAL",

}

---------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_TUTORIAL_RAVEN"],
	dungeonName 		= STR_ID_2761,
	dataFileName 		= "Dungeon_ElTutorial_Raven.lua",

	requireDungeonID	= 0,
	requireSpirit		= 1,    --임시 근성도

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 0,

	m_TextureName		= "DLG_New_Dungeon_Image7.dds",
	m_PieceName			= "DUNGEON_IMAGE_TUTORIAL",

}




---------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_TUTORIAL_EVE"],
	dungeonName 		= STR_ID_2761,
	dataFileName 		= "Dungeon_ElTutorial_Eve.lua",

	requireDungeonID	= 0,
	requireSpirit		= 1,    --임시 근성도

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 0,
	
	m_TextureName		= "DLG_New_Dungeon_Image7.dds",
	m_PieceName			= "DUNGEON_IMAGE_TUTORIAL",
	
}


---------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_TUTORIAL_CHUNG"],
	dungeonName 		= STR_ID_2761,
	dataFileName 		= "Dungeon_ElTutorial_Chung.lua",

	requireDungeonID	= 0,
	requireSpirit		= 1,    --임시 근성도

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 0,
	
	m_TextureName		= "DLG_New_Dungeon_Image7.dds",
	m_PieceName			= "DUNGEON_IMAGE_TUTORIAL",
	
}





---------------------------------------------------------------------------
-- 몬스터 테스트용 던전
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_MONSTER_TEST_NORMAL"],
	dungeonName 		= STR_ID_2762,
	dataFileName 		= "Dungeon_Monster_Test.lua",

	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

	requireDungeonID	= 0,

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 0,
	
	requireSpirit		= 5,    --임시 근성도

	--m_TextureName			= "DLG_Common_Texture08.TGA",
	--m_PieceName			= "Dungeon_Image_Beginner_Forest",

}


g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_MONSTER_TEST_HARD"],
	dungeonName 		= STR_ID_2762,
	dataFileName 		= "Dungeon_Monster_Test.lua",

	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],
	
	requireLevel		= 0,
	requireDungeonID	= 0,
	

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 0,
}


g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_MONSTER_TEST_EXPERT"],
	dungeonName 		= STR_ID_2762,
	dataFileName 		= "Dungeon_Monster_Test.lua",

	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= 0,

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 0,
}

















---------------------------------------------------------------------------
-- 훈련소 던전




---------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_TRAINING_FREE"],
	dungeonName 		= STR_ID_2764,
	dataFileName 		= "Dungeon_Training_Free.lua",

	requireDungeonID	= 0,

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 0,
	
	m_LoadingScreenFileName	= "HQ_Loading_TRAININGROOM_01.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_Loading_TRAININGROOM_02.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
}





--[[


		---------------------------------------------------------------------------
		g_pDungeonManager:AddDungeonData
		{
			dungeonID			= DUNGEON_ID["DI_TRAINING_COMMON_1"],
			dungeonName 		= "공통훈련1",
			dataFileName 		= "Dungeon_Training_Common_1.lua",

			requireDungeonID	= 0,

			m_MinLevel			= 0,
			m_MaxLevel			= 0,
			
			m_NPCLevel			= 0,
		}


		---------------------------------------------------------------------------
		g_pDungeonManager:AddDungeonData
		{
			dungeonID			= DUNGEON_ID["DI_TRAINING_COMMON_2"],
			dungeonName 		= "공통훈련2",
			dataFileName 		= "Dungeon_Training_Common_2.lua",

			requireDungeonID	= 0,

			m_MinLevel			= 0,
			m_MaxLevel			= 0,
			
			m_NPCLevel			= 0,
		}
--]]





---------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_TRAINING_ELSWORD_0"],
	dungeonName 		= STR_ID_2765,
	dataFileName 		= "Dungeon_Training_Elsword_0.lua",

	requireDungeonID	= 0,

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 0,
}


---------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_TRAINING_ELSWORD_1"],
	dungeonName 		= STR_ID_2766,
	dataFileName 		= "Dungeon_Training_Elsword_1.lua",

	requireDungeonID	= 0,

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 0,
}

---------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_TRAINING_ELSWORD_2"],
	dungeonName 		= STR_ID_2767,
	dataFileName 		= "Dungeon_Training_Elsword_2.lua",

	requireDungeonID	= 0,

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 0,
}


---------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_TRAINING_ELSWORD_3"],
	dungeonName 		= STR_ID_2768,
	dataFileName 		= "Dungeon_Training_Elsword_3.lua",

	requireDungeonID	= 0,

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 0,
}

---------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_TRAINING_ELSWORD_4"],
	dungeonName 		= STR_ID_2770,
	dataFileName 		= "Dungeon_Training_Elsword_4.lua",

	requireDungeonID	= 0,

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 0,
}


---------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_TRAINING_ELSWORD_5"],
	dungeonName 		= STR_ID_2769,
	dataFileName 		= "Dungeon_Training_Elsword_5.lua",

	requireDungeonID	= 0,

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 0,
}



---------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_TRAINING_ELSWORD_6"],
	dungeonName 		= STR_ID_2771,
	dataFileName 		= "Dungeon_Training_Elsword_6.lua",

	requireDungeonID	= 0,

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 0,
}









---------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_TRAINING_ARME_0"],
	dungeonName 		= STR_ID_2765,
	dataFileName 		= "Dungeon_Training_Arme_0.lua",

	requireDungeonID	= 0,

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 0,
}


---------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_TRAINING_ARME_1"],
	dungeonName 		= STR_ID_2766,
	dataFileName 		= "Dungeon_Training_Arme_1.lua",

	requireDungeonID	= 0,

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 0,
}

---------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_TRAINING_ARME_2"],
	dungeonName 		= STR_ID_2767,
	dataFileName 		= "Dungeon_Training_Arme_2.lua",

	requireDungeonID	= 0,

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 0,
}

--[[
		---------------------------------------------------------------------------
		g_pDungeonManager:AddDungeonData
		{
			dungeonID			= DUNGEON_ID["DI_TRAINING_ARME_3"],
			dungeonName 		= "아이샤훈련3",
			dataFileName 		= "Dungeon_Training_Arme_3.lua",

			requireDungeonID	= 0,

			m_MinLevel			= 0,
			m_MaxLevel			= 0,
			
			m_NPCLevel			= 0,
		}
--]]

---------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_TRAINING_ARME_4"],
	dungeonName 		= STR_ID_2770,
	dataFileName 		= "Dungeon_Training_Arme_4.lua",

	requireDungeonID	= 0,

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 0,
}

---------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_TRAINING_ARME_5"],
	dungeonName 		= STR_ID_2769,
	dataFileName 		= "Dungeon_Training_Arme_5.lua",

	requireDungeonID	= 0,

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 0,
}


---------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_TRAINING_ARME_6"],
	dungeonName 		= STR_ID_2771,
	dataFileName 		= "Dungeon_Training_Arme_6.lua",

	requireDungeonID	= 0,

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 0,
}














---------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_TRAINING_LIRE_0"],
	dungeonName 		= STR_ID_2765,
	dataFileName 		= "Dungeon_Training_LIRE_0.lua",

	requireDungeonID	= 0,

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 0,
}


---------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_TRAINING_LIRE_1"],
	dungeonName 		= STR_ID_2766,
	dataFileName 		= "Dungeon_Training_LIRE_1.lua",

	requireDungeonID	= 0,

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 0,
}

---------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_TRAINING_LIRE_2"],
	dungeonName 		= STR_ID_2767,
	dataFileName 		= "Dungeon_Training_LIRE_2.lua",

	requireDungeonID	= 0,

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 0,
}

---------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_TRAINING_LIRE_3"],
	dungeonName 		= STR_ID_2772,
	dataFileName 		= "Dungeon_Training_LIRE_3.lua",

	requireDungeonID	= 0,

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 0,
}

---------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_TRAINING_LIRE_4"],
	dungeonName 		= STR_ID_2770,
	dataFileName 		= "Dungeon_Training_LIRE_4.lua",

	requireDungeonID	= 0,

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 0,
}

---------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_TRAINING_LIRE_5"],
	dungeonName 		= STR_ID_2769,
	dataFileName 		= "Dungeon_Training_LIRE_5.lua",

	requireDungeonID	= 0,

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 0,
}

---------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_TRAINING_LIRE_6"],
	dungeonName 		= STR_ID_2771,
	dataFileName 		= "Dungeon_Training_LIRE_6.lua",

	requireDungeonID	= 0,

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 0,
}







-- 레이븐 훈련소 던전
---------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_TRAINING_RAVEN_0"],
	dungeonName 		= STR_ID_2765,
	dataFileName 		= "Dungeon_Training_RAVEN_0.lua",

	requireDungeonID	= 0,

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 0,
}


---------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_TRAINING_RAVEN_1"],
	dungeonName 		= STR_ID_2766,
	dataFileName 		= "Dungeon_Training_RAVEN_1.lua",

	requireDungeonID	= 0,

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 0,
}

---------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_TRAINING_RAVEN_2"],
	dungeonName 		= STR_ID_2767,
	dataFileName 		= "Dungeon_Training_RAVEN_2.lua",

	requireDungeonID	= 0,

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 0,
}

---------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_TRAINING_RAVEN_3"],
	dungeonName 		= STR_ID_2773,			
	dataFileName 		= "Dungeon_Training_RAVEN_3.lua",

	requireDungeonID	= 0,

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 0,
}

---------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_TRAINING_RAVEN_4"],
	dungeonName 		= STR_ID_2770,
	dataFileName 		= "Dungeon_Training_RAVEN_4.lua",

	requireDungeonID	= 0,

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 0,
}

---------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_TRAINING_RAVEN_5"],
	dungeonName 		= STR_ID_2769,
	dataFileName 		= "Dungeon_Training_RAVEN_5.lua",

	requireDungeonID	= 0,

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 0,
}

---------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_TRAINING_RAVEN_6"],
	dungeonName 		= STR_ID_2771,
	dataFileName 		= "Dungeon_Training_RAVEN_6.lua",

	requireDungeonID	= 0,

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 0,
}



































---------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_EL_FOREST_GATE_NORMAL"],
	dungeonName 		= STR_ID_2774,
	dataFileName 		= "Dungeon_El_Forest_Gate_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

	requireDungeonID	= 0,
	--requireItemID		= 77000,	--테스트! (포션)
	--requireItemCount	= 5,		--테스트! (5개)

	m_MinLevel			= 1,
	m_MaxLevel			= 3,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 1,

	--m_TextureName		= "DLG_Common_Texture08.TGA",
	--m_PieceName			= "Dungeon_Image_Beginner_Forest",
	
	m_TextureName	= "DLG_UI_Dungeon_Image01.dds",
	m_PieceName		= "DUNGEON_IMAGE_BEGINNER_FOREST",
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_BEGINNER_FOREST1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_BEGINNER_FOREST2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	



	m_LocalStarPosX	= 516,
	m_LocalStarPosY	= 671+2,
	
	ENDING_SPEECH0 = 
	{
		ELSWORD = 
		{
			{
				STR_ID_2776,
			},
			{
				STR_ID_2777,
			},
			{
				STR_ID_2778,
			},
			{
				STR_ID_2779,
			},
		}, 
		
		
		AISHA = 
		{
			{
				STR_ID_2780,
			},
			{
				STR_ID_2781,
			},
			{
				STR_ID_2782,
			},
			{
				STR_ID_2783,
			},
		}, 
		
		 
		RENA = 
		{
			{
				STR_ID_2784,
			},
			{
				STR_ID_2785,
			},
			{
				STR_ID_2786,
			},
			{
				STR_ID_2787,
			},
		}, 
		
		RAVEN = 
		{
			{
				STR_ID_2788,
			},
			{
				STR_ID_2789,
			},
			{
				STR_ID_2790,
			},
			{
				STR_ID_2791,
			},
		}, 
			 
		EVE = 
		{
			{
				STR_ID_2792,
			},
			{
				STR_ID_2793,
			},
			{
				STR_ID_2794,
			},
			{
				STR_ID_2795,
			},
		}, 
		
	},
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_EL_FOREST_GATE_HARD"],
	dungeonName 		= STR_ID_2774,
	dataFileName 		= "Dungeon_El_Forest_Gate_Hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],


	requireDungeonID	= DUNGEON_ID["DI_EL_FOREST_GATE_NORMAL"],

	m_MinLevel			= 1,
	m_MaxLevel			= 3,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 2,
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_EL_FOREST_GATE_EXPERT"],
	dungeonName 		= STR_ID_2774,
	dataFileName 		= "Dungeon_El_Forest_Gate_Expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],


	requireDungeonID	= DUNGEON_ID["DI_EL_FOREST_GATE_HARD"],

	m_MinLevel			= 1,
	m_MaxLevel			= 3,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 3,
}
---------------------------------------------------------------------------

--[[
			g_pDungeonManager:AddDungeonData
			{
				dungeonID			= DUNGEON_ID["DI_EL_FOREST_WEST_NORMAL"],
				dungeonName 		= STR_ID_2796,
				dataFileName 		= "Dungeon_El_Forest_West_Normal.lua",
				difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],


				requireDungeonID	= 0,

				m_MinLevel			= 2,
				m_MaxLevel			= 4,
				
				m_NPCLevel			= 2,

				--m_TextureName			= "DLG_Common_Texture02.TGA",
				--m_PieceName			= "Dungeon_Image_El_Tree_West",
				
				m_TextureName	= "DLG_UI_Dungeon_Image01.dds",
				m_PieceName		= "DUNGEON_IMAGE_EL_TREE_WEST",
				m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_EL_FOREST_WEST_STAGE3"],
				m_LoadingScreenFileName	= "HQ_LoadingDungeon_EL_TREE_WEST1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
				m_LoadingScreenFileName2= "HQ_LoadingDungeon_EL_TREE_WEST2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
					
				--m_Explanation			= STR_ID_2797,


				m_LocalStarPosX	= 275,
				m_LocalStarPosY	= 567,
				
				
				
				AUTO_DUNGEON_ROOM_TITLE = 
				{
					STR_ID_2798,
					STR_ID_2799,
					STR_ID_2800,
					STR_ID_2801,
					STR_ID_2802,
					STR_ID_2803,
					STR_ID_2804,
				},
				
				
				ENDING_SPEECH0 = 
				{
						
					ELSWORD = {

					{   STR_ID_2805,                                                   },

					{   STR_ID_2806,                       },

					{   STR_ID_2807,                     },

					{   STR_ID_2808,                                         },
					},
					  

					AISHA = { 

					{   STR_ID_2809,                         },

					{   STR_ID_2810,                        },

					{   STR_ID_2811,            },

					{   STR_ID_2812,                               },
					},
					  

					RENA = {

					{   STR_ID_2813,           },

					{   STR_ID_2814,                                    },

					{   STR_ID_2815,                               },

					{   STR_ID_2816,                 },
					},
					  

					RAVEN = {

					{   STR_ID_2817,  },

					{   STR_ID_2818,           },

					{   STR_ID_2819,                     },

					{   STR_ID_2820,                                },
					},
										 
					EVE = 
					{
						{
							STR_ID_2821,      
						},
						{ 
       						STR_ID_2822,        
						},
						{
       						STR_ID_2823,                     
						},
						{
     						STR_ID_2824,     		
						},
					}, 

				},
			}

			g_pDungeonManager:AddDungeonData
			{
				dungeonID			= DUNGEON_ID["DI_EL_FOREST_WEST_HARD"],
				dungeonName 		= STR_ID_2796,
				dataFileName 		= "Dungeon_El_Forest_West_Hard.lua",
				difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

				requireDungeonID	= DUNGEON_ID["DI_EL_FOREST_WEST_NORMAL"],
				
				m_MinLevel			= 2,
				m_MaxLevel			= 4,
				
				m_NPCLevel			= 3,
				
				m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_EL_FOREST_WEST_STAGE3"],
				m_LoadingScreenFileName	= "HQ_LoadingDungeon_EL_TREE_WEST1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
				m_LoadingScreenFileName2= "HQ_LoadingDungeon_EL_TREE_WEST2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.

			}

			g_pDungeonManager:AddDungeonData
			{
				dungeonID			= DUNGEON_ID["DI_EL_FOREST_WEST_EXPERT"],
				dungeonName 		= STR_ID_2796,
				dataFileName 		= "Dungeon_El_Forest_West_Expert.lua",
				difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

				requireDungeonID	= DUNGEON_ID["DI_EL_FOREST_WEST_HARD"],

				m_MinLevel			= 2,
				m_MaxLevel			= 4,
				
				m_NPCLevel			= 4,
				
				m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_EL_FOREST_WEST_STAGE3"],
				m_LoadingScreenFileName	= "HQ_LoadingDungeon_EL_TREE_WEST1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
				m_LoadingScreenFileName2= "HQ_LoadingDungeon_EL_TREE_WEST2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.

			}



			---------------------------------------------------------------------------

			g_pDungeonManager:AddDungeonData
			{
				dungeonID			= DUNGEON_ID["DI_EL_FOREST_MAIN_NORMAL"],
				dungeonName 		= STR_ID_2825,
				dataFileName 		= "Dungeon_El_Forest_Main_Normal.lua",
				difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],


				requireDungeonID	= DUNGEON_ID["DI_EL_FOREST_WEST_NORMAL"],
			                          
				m_MinLevel			= 3,
				m_MaxLevel			= 5,
				
				m_NPCLevel			= 3,
					
				--m_TextureName			= "DLG_Common_Texture02.TGA",
				--m_PieceName			= "Dungeon_Image_El_Tree",
					
				m_TextureName	= "DLG_UI_Dungeon_Image01.dds",
				m_PieceName		= "DUNGEON_IMAGE_EL_TREE",
				m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_EL_FOREST_MAIN_STAGE4"],
				m_LoadingScreenFileName	= "HQ_LoadingDungeon_EL_TREE1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
				m_LoadingScreenFileName2= "HQ_LoadingDungeon_EL_TREE2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.


				m_LocalStarPosX	= 468,
				m_LocalStarPosY	= 521,
				
				AUTO_DUNGEON_ROOM_TITLE =
				{
					STR_ID_2827,
					STR_ID_2828,
					STR_ID_2829,
					STR_ID_2830,
					STR_ID_2831,
					STR_ID_2832,
					STR_ID_2833,
					STR_ID_2834,
					STR_ID_2835,
				},
				
				-- 벤더스 잡았을 때
				ENDING_SPEECH0 = 
				{
								
					ELSWORD = {

					{   STR_ID_2836,    },

					{   STR_ID_2837,    },

					{   STR_ID_2838,    },

					{   STR_ID_2839,    },
					},
					  

					AISHA = { 

					{   STR_ID_2840,    },

					{   STR_ID_2841,    },

					{   STR_ID_2842,    },

					{   STR_ID_2843,    },
					},
					  

					RENA = {

					{   STR_ID_2844,    },

					{   STR_ID_2845,    },

					{   STR_ID_2846,    },

					{   STR_ID_2847,    },
					},
					  

					RAVEN = {

					{   STR_ID_2848,    },

					{   STR_ID_2849,    },

					{   STR_ID_2850,    },

					{   STR_ID_2851,    },
					},
					  				 
					EVE = 
					{
						{
							STR_ID_2852,      
						},
						{ 
       						STR_ID_2853,        
						},
						{
       						STR_ID_2854,                     
						},
						{
     						STR_ID_2855,     		
						},
					}, 
							  
				},
				
				
				-- 자이언트 뽀루 잡았을 때
				ENDING_SPEECH1 = 
				{
				
					ELSWORD = {

					{    STR_ID_2856,    },

					{    STR_ID_2857,    },

					{    STR_ID_2858,    },

					{    STR_ID_2859,    },
					},
					  

					AISHA = { 

					{    STR_ID_2860,    },

					{    STR_ID_2861,    },

					{    STR_ID_2862,    },

					{    STR_ID_2863,    },
					},
					  

					RENA = {

					{    STR_ID_2864,    },

					{    STR_ID_2865,    },

					{    STR_ID_2866,    },

					{    STR_ID_2867,    },
					},
					  

					RAVEN = {

					{    STR_ID_2868,    },

					{    STR_ID_2869,    },

					{    STR_ID_2870,    },

					{    STR_ID_2871,    },
					},

				
				},

			}

			g_pDungeonManager:AddDungeonData
			{
				dungeonID			= DUNGEON_ID["DI_EL_FOREST_MAIN_HARD"],
				dungeonName 		= STR_ID_2825,
				dataFileName 		= "Dungeon_El_Forest_Main_Hard.lua",
				difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

				requireDungeonID	= DUNGEON_ID["DI_EL_FOREST_MAIN_NORMAL"],

				m_MinLevel			= 3,
				m_MaxLevel			= 5,
				
				m_NPCLevel			= 4,
				
				m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_EL_FOREST_MAIN_STAGE4"],
				m_LoadingScreenFileName	= "HQ_LoadingDungeon_EL_TREE1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
				m_LoadingScreenFileName2= "HQ_LoadingDungeon_EL_TREE2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
			}

			g_pDungeonManager:AddDungeonData
			{
				dungeonID			= DUNGEON_ID["DI_EL_FOREST_MAIN_EXPERT"],
				dungeonName 		= STR_ID_2825,
				dataFileName 		= "Dungeon_El_Forest_Main_Expert.lua",
				difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

				requireDungeonID	= DUNGEON_ID["DI_EL_FOREST_MAIN_HARD"],

				m_MinLevel			= 3,
				m_MaxLevel			= 5,
				
				m_NPCLevel			= 5,
				
				m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_EL_FOREST_MAIN_STAGE4"],
				m_LoadingScreenFileName	= "HQ_LoadingDungeon_EL_TREE1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
				m_LoadingScreenFileName2= "HQ_LoadingDungeon_EL_TREE2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
			}

			---------------------------------------------------------------------------

			g_pDungeonManager:AddDungeonData
			{
				dungeonID			= DUNGEON_ID["DI_EL_FOREST_MONKEY_NORMAL"],
				dungeonName 		= STR_ID_2872,
				dataFileName 		= "Dungeon_El_Forest_Monkey_Normal.lua",
				difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],


				requireDungeonID	= DUNGEON_ID["DI_EL_FOREST_MAIN_NORMAL"],

				m_MinLevel			= 4,
				m_MaxLevel			= 6,
				
				m_NPCLevel			= 4,

				--m_TextureName			= "DLG_Common_Texture10.TGA",
				--m_PieceName			= "Dungeon_Image_Monkey",
				
				m_TextureName	= "DLG_UI_Dungeon_Image01.dds",
				m_PieceName		= "DUNGEON_IMAGE_MONKEY",
				m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_NOVICE_FOREST_STAGE2"],
				m_LoadingScreenFileName	= "HQ_LoadingDungeon_EL_MONKEY1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
				m_LoadingScreenFileName2= "HQ_LoadingDungeon_EL_MONKEY2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
				

				m_LocalStarPosX	= 678,
				m_LocalStarPosY	= 459,
				
				
				AUTO_DUNGEON_ROOM_TITLE =
				{
					STR_ID_2827,
					STR_ID_2828,
					STR_ID_2829,
					STR_ID_2831,
					STR_ID_2832,
					STR_ID_2833,
					STR_ID_2834,
					STR_ID_2874,
				},
				
				
				ENDING_SPEECH0 = 
				{
						
					ELSWORD = {

					{   STR_ID_2875,                           										},

					{   STR_ID_2876,                               										},

					{   STR_ID_2877,           										},

					{   STR_ID_2878,                           									},
					},
					  

					AISHA = { 

					{   STR_ID_2879,                              									},

					{   STR_ID_2880,   									},

					{   STR_ID_2881,               									},

					{   STR_ID_2882,																		},
					},
					  

					RENA = {

					{   STR_ID_2883,                 						},

					{   STR_ID_2884,														},

					{   STR_ID_2885,                               	},

					{   STR_ID_2886,   	},
					},
					  

					RAVEN = {

					{   STR_ID_2887,										},

					{   STR_ID_2888,                   	},

					{   STR_ID_2889,           	},

					{   STR_ID_2890,                         	},
					},
			  		  				 
					EVE = 
					{
						{
							STR_ID_2891,      
						},
						{ 
       						STR_ID_2892,        
						},
						{
       						STR_ID_2893,                     
						},
						{
     						STR_ID_2894,     		
						},
					}, 
					
				},

			}

			g_pDungeonManager:AddDungeonData
			{
				dungeonID			= DUNGEON_ID["DI_EL_FOREST_MONKEY_HARD"],
				dungeonName 		= STR_ID_2872,
				dataFileName 		= "Dungeon_El_Forest_Monkey_Hard.lua",
				difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

				requireDungeonID	= DUNGEON_ID["DI_EL_FOREST_MONKEY_NORMAL"],

				m_MinLevel			= 4,
				m_MaxLevel			= 6,
				
				m_NPCLevel			= 5,
				
				m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_NOVICE_FOREST_STAGE2"],
				m_LoadingScreenFileName	= "HQ_LoadingDungeon_EL_MONKEY1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
				m_LoadingScreenFileName2= "HQ_LoadingDungeon_EL_MONKEY2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.

			}

			g_pDungeonManager:AddDungeonData
			{
				dungeonID			= DUNGEON_ID["DI_EL_FOREST_MONKEY_EXPERT"],
				dungeonName 		= STR_ID_2872,
				dataFileName 		= "Dungeon_El_Forest_Monkey_Expert.lua",
				difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

				requireDungeonID	= DUNGEON_ID["DI_EL_FOREST_MONKEY_HARD"],

				m_MinLevel			= 4,
				m_MaxLevel			= 6,
				
				m_NPCLevel			= 6,
				
				m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_NOVICE_FOREST_STAGE2"],
				m_LoadingScreenFileName	= "HQ_LoadingDungeon_EL_MONKEY1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
				m_LoadingScreenFileName2= "HQ_LoadingDungeon_EL_MONKEY2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.

			}
			---------------------------------------------------------------------------

			g_pDungeonManager:AddDungeonData
			{
				dungeonID			= DUNGEON_ID["DI_EL_FOREST_EXTRA_NORMAL"],
				dungeonName 		= STR_ID_2895,
				dataFileName 		= "Dungeon_El_Forest_Extra_Normal.lua",

				difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],


				requireDungeonID	= DUNGEON_ID["DI_EL_FOREST_MONKEY_NORMAL"],

				m_MinLevel			= 5,
				m_MaxLevel			= 7,
				
				m_NPCLevel			= 5,

				--m_TextureName			= "DLG_Common_Texture10.TGA",
				--m_PieceName			= "Dungeon_Image_Twillght",
				
				m_TextureName	= "DLG_UI_Dungeon_Image06.dds",
				m_PieceName		= "Ruins",
				m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_EL_FOREST_EXTRA_STAGE4"],
				m_LoadingScreenFileName	= "HQ_LoadingDungeon_EL_TREE_TWILLIGHT1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
				m_LoadingScreenFileName2= "HQ_LoadingDungeon_EL_TREE_TWILLIGHT2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
				
				m_LocalStarPosX	= 607,
				m_LocalStarPosY	= 333,
				
				AUTO_DUNGEON_ROOM_TITLE =
				{
					STR_ID_2827,
					STR_ID_2828,
					STR_ID_2829,
					STR_ID_2831,
					STR_ID_2832,
					STR_ID_2833,
					STR_ID_2834,
					STR_ID_2897,
					STR_ID_2898,
				},
				

				ENDING_SPEECH0 = 
				{
						
					ELSWORD = {

					{   STR_ID_2899,        },

					{   STR_ID_2900,                            },

					{   STR_ID_2901,                                  },

					{   STR_ID_2902,                                       },
					},
					  

					AISHA = { 

					{   STR_ID_2903,                    },

					{   STR_ID_2904,                                  },

					{   STR_ID_2905,            },

					{   STR_ID_2906,          },
					},
					  

					RENA = {

					{   STR_ID_2907,    },

					{   STR_ID_2908,               },

					{   STR_ID_2909,                          },

					{   STR_ID_2910,                      },
					},
			  
					RAVEN = {

						{ STR_ID_2911, },

						{ STR_ID_2912, },

						{ STR_ID_2913, },

						{ STR_ID_2914, },
					},
					  		  				 
					EVE = 
					{
						{
							STR_ID_2915,      
						},
						{ 
       						STR_ID_2916,        
						},
						{
       						STR_ID_2917,                     
						},
						{
     						STR_ID_2918,     		
						},
					}, 
					
				},
				
			}

			g_pDungeonManager:AddDungeonData
			{
				dungeonID			= DUNGEON_ID["DI_EL_FOREST_EXTRA_HARD"],
				dungeonName 		= STR_ID_2895,
				dataFileName 		= "Dungeon_El_Forest_Extra_Hard.lua",
				difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

				requireDungeonID	= DUNGEON_ID["DI_EL_FOREST_EXTRA_NORMAL"],

				m_MinLevel			= 5,
				m_MaxLevel			= 7,
				
				m_NPCLevel			= 6,
				
				m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_EL_FOREST_EXTRA_STAGE4"],
				m_LoadingScreenFileName	= "HQ_LoadingDungeon_EL_TREE_TWILLIGHT1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
				m_LoadingScreenFileName2= "HQ_LoadingDungeon_EL_TREE_TWILLIGHT2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
			}

			g_pDungeonManager:AddDungeonData
			{
				dungeonID			= DUNGEON_ID["DI_EL_FOREST_EXTRA_EXPERT"],
				dungeonName 		= STR_ID_2895,
				dataFileName 		= "Dungeon_El_Forest_Extra_Expert.lua",
				difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

				requireDungeonID	= DUNGEON_ID["DI_EL_FOREST_EXTRA_HARD"],

				m_MinLevel			= 5,
				m_MaxLevel			= 7,
				
				m_NPCLevel			= 7,
				
				m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_EL_FOREST_EXTRA_STAGE4"],
				m_LoadingScreenFileName	= "HQ_LoadingDungeon_EL_TREE_TWILLIGHT1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
				m_LoadingScreenFileName2= "HQ_LoadingDungeon_EL_TREE_TWILLIGHT2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
			}


			---------------------------------------------------------------------------

			g_pDungeonManager:AddDungeonData
			{
				dungeonID			= DUNGEON_ID["DI_EL_FOREST_NORTH_NORMAL"],
				dungeonName 		= STR_ID_2919,
				dataFileName 		= "Dungeon_El_Forest_North_Normal.lua",
				difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],


				requireDungeonID	= DUNGEON_ID["DI_EL_FOREST_EXTRA_NORMAL"],

				m_MinLevel			= 6,
				m_MaxLevel			= 8,
				
				m_NPCLevel			= 6,

				--m_TextureName			= "DLG_Common_Texture02.TGA",
				--m_PieceName			= "Dungeon_Image_El_Tree_North",
				
				m_TextureName	= "DLG_UI_Dungeon_Image06.dds",
				m_PieceName		= "Swamp",
				m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_EL_FOREST_NORTH_STAGE3"],
				m_LoadingScreenFileName	= "HQ_LoadingDungeon_EL_TREE_NORTH1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
				m_LoadingScreenFileName2= "HQ_LoadingDungeon_EL_TREE_NORTH2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
				
				--m_Explanation			= STR_ID_2920,


				m_LocalStarPosX	= 318,
				m_LocalStarPosY	= 361,
				
				
				AUTO_DUNGEON_ROOM_TITLE =
				{
					STR_ID_2798,
					STR_ID_2799,
					STR_ID_2800,
					STR_ID_2802,
					STR_ID_2760,
					STR_ID_2804,
					STR_ID_2834,
					STR_ID_2921,
					STR_ID_2897,
					STR_ID_2898,
				},


				-- 에인션트 뽀루잡았을 때
				ENDING_SPEECH0 = 
				{
					ELSWORD = {

					{    STR_ID_2922,       },

					{    STR_ID_2923,       },

					{    STR_ID_2924,       },

					{    STR_ID_2925,       },

					{    STR_ID_2926,       },
					},

					AISHA = { 

					{    STR_ID_2927,       },

					{    STR_ID_2928,       },

					{    STR_ID_2929,       },

					{    STR_ID_2930,       },
					},
					  

					RENA = {

					{    STR_ID_2931,       },

					{    STR_ID_2932,       },

					{    STR_ID_2933,       },

					{    STR_ID_2934,       },
					},
					  

					RAVEN = {

					{    STR_ID_2935,       },

					{    STR_ID_2936,       },

					{    STR_ID_2937,       },

					{    STR_ID_2938,       },
					},
			    		  				 
					EVE = 
					{
						{
							STR_ID_2939,      
						},
						{ 
       						STR_ID_2940,        
						},
						{
       						STR_ID_2941,                     
						},
						{
     						STR_ID_2942,     		
						},
					}, 
				
				},
				
				-- 화이트 자이언트 뽀루잡았을 때
				ENDING_SPEECH1 = 
				{
						
					ELSWORD = {

					{    STR_ID_2943,       },

					{    STR_ID_2944,       },

					{    STR_ID_2945,       },

					{    STR_ID_2926,       },
					},
					  

					AISHA = { 

					{    STR_ID_2946,       },

					{    STR_ID_2947,       },

					{    STR_ID_2948,       },

					{    STR_ID_2949,       },
					},
					  

					RENA = {

					{    STR_ID_2950,       },

					{    STR_ID_2951,       },

					{    STR_ID_2952,       },

					{    STR_ID_2953,       },
					},
					  

					RAVEN = {

					{    STR_ID_2954,       },

					{    STR_ID_2955,       },

					{    STR_ID_2956,       },

					{    STR_ID_2957,       },
					},
					    		  				 
					EVE = 
					{
						{
							STR_ID_2958,      
						},
						{ 
       						STR_ID_2940,        
						},
						{
       						STR_ID_2959,                     
						},
						{
     						STR_ID_2960,     		
						},
					}, 
					
				},
				
			}

			g_pDungeonManager:AddDungeonData
			{
				dungeonID			= DUNGEON_ID["DI_EL_FOREST_NORTH_HARD"],
				dungeonName 		= STR_ID_2919,
				dataFileName 		= "Dungeon_El_Forest_North_Hard.lua",
				difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

				requireDungeonID	= DUNGEON_ID["DI_EL_FOREST_NORTH_NORMAL"],

				m_MinLevel			= 6,
				m_MaxLevel			= 8,
				
				m_NPCLevel			= 7,
				
				m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_EL_FOREST_NORTH_STAGE3"],
				m_LoadingScreenFileName	= "HQ_LoadingDungeon_EL_TREE_NORTH1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
				m_LoadingScreenFileName2= "HQ_LoadingDungeon_EL_TREE_NORTH2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
			}

			g_pDungeonManager:AddDungeonData
			{
				dungeonID			= DUNGEON_ID["DI_EL_FOREST_NORTH_EXPERT"],
				dungeonName 		= STR_ID_2919,
				dataFileName 		= "Dungeon_El_Forest_North_Expert.lua",
				difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

				requireDungeonID	= DUNGEON_ID["DI_EL_FOREST_NORTH_HARD"],

				m_MinLevel			= 6,
				m_MaxLevel			= 8,
				
				m_NPCLevel			= 8,
				
				m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_EL_FOREST_NORTH_STAGE3"],
				m_LoadingScreenFileName	= "HQ_LoadingDungeon_EL_TREE_NORTH1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
				m_LoadingScreenFileName2= "HQ_LoadingDungeon_EL_TREE_NORTH2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.


			}


			---------------------------------------------------------------------------


			g_pDungeonManager:AddDungeonData
			{
				dungeonID			= DUNGEON_ID["DI_EL_FOREST_HELL_NORMAL"],
				dungeonName 		= STR_ID_2961,
				dataFileName 		= "Dungeon_El_Forest_Hell_Normal.lua",
				difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

				requireDungeonID	= 0,


				-- 비밀던전인 경우에 요렇게 설정해줘야합니다
				IS_HELL_MODE = TRUE,
				
				EXTRA_REQUIRE_DUNGEON_ID =
				{
					DUNGEON_ID["DI_EL_FOREST_NORTH_EXPERT"],
					DUNGEON_ID["DI_EL_FOREST_MAIN_EXPERT"],
					DUNGEON_ID["DI_EL_FOREST_WEST_EXPERT"],
					--DUNGEON_ID["DI_EL_FOREST_GATE_EXPERT"],
					DUNGEON_ID["DI_EL_FOREST_MONKEY_EXPERT"],
					DUNGEON_ID["DI_EL_FOREST_EXTRA_EXPERT"],
				},
				
				

				m_MinLevel			= 15,
				m_MaxLevel			= 20,
				
				m_NPCLevel			= 15,

				--m_TextureName			= "DLG_Common_Texture11.TGA",
				--m_PieceName			= "Dungeon_Image_Hellmode",
				
				m_TextureName	= "DLG_UI_Dungeon_Image01.dds",
				m_PieceName		= "DUNGEON_IMAGE_HELLMODE",
				m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_EL_FOREST_EXTRA_CAVE_STAGE5"],
				m_LoadingScreenFileName	= "HQ_LoadingDungeon_EL_TREE_HELLMODE1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
				m_LoadingScreenFileName2= "HQ_LoadingDungeon_EL_TREE_HELLMODE2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
				
				--m_Explanation			= STR_ID_2962,


				m_LocalStarPosX	= 94-7,
				m_LocalStarPosY	= 366+4,
				
				
				ENDING_SPEECH0 = 
				{
						
					ELSWORD = {

						{ STR_ID_2963, },

						{ STR_ID_2964, },

						{ STR_ID_2965, },

						{ STR_ID_2966, },
					},

					AISHA = {

						{ STR_ID_2967, },

						{ STR_ID_2968, },

						{ STR_ID_2969, },

						{ STR_ID_2970, },
					},

					RENA = {

						{ STR_ID_2971, },

						{ STR_ID_2972, },

						{ STR_ID_2973, },

						{ STR_ID_2974, },
					},

					RAVEN = {

						{ STR_ID_2975, },

						{ STR_ID_2976, },

						{ STR_ID_2977, },

						{ STR_ID_2978, },

					},
						    		  				 
					EVE = 
					{
						{
							STR_ID_2979,      
						},
						{ 
       						STR_ID_2980,        
						},
						{
       						STR_ID_2981,                     
						},
						{
     						STR_ID_2982,     		
						},
					}, 
					
				},
			}

			g_pDungeonManager:AddDungeonData
			{
				dungeonID			= DUNGEON_ID["DI_EL_FOREST_HELL_HARD"],
				dungeonName 		= STR_ID_2961,
				dataFileName 		= "Dungeon_El_Forest_Hell_Hard.lua",
				difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

				requireDungeonID	= DUNGEON_ID["DI_EL_FOREST_HELL_NORMAL"],
				
				
				-- 비밀던전인 경우에 요렇게 설정해줘야합니다	
				IS_HELL_MODE = TRUE,	
				EXTRA_REQUIRE_DUNGEON_ID =
				{
					DUNGEON_ID["DI_EL_FOREST_NORTH_EXPERT"],
					DUNGEON_ID["DI_EL_FOREST_MAIN_EXPERT"],
					DUNGEON_ID["DI_EL_FOREST_WEST_EXPERT"],
					--DUNGEON_ID["DI_EL_FOREST_GATE_EXPERT"],
					DUNGEON_ID["DI_EL_FOREST_MONKEY_EXPERT"],
					DUNGEON_ID["DI_EL_FOREST_EXTRA_EXPERT"],
				},

				m_MinLevel			= 15,
				m_MaxLevel			= 20,
				
				m_NPCLevel			= 17,
				
				m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_EL_FOREST_EXTRA_CAVE_STAGE5"],
				m_LoadingScreenFileName	= "HQ_LoadingDungeon_EL_TREE_HELLMODE1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
				m_LoadingScreenFileName2= "HQ_LoadingDungeon_EL_TREE_HELLMODE2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
			}

			g_pDungeonManager:AddDungeonData
			{
				dungeonID			= DUNGEON_ID["DI_EL_FOREST_HELL_EXPERT"],
				dungeonName 		= STR_ID_2961,
				dataFileName 		= "Dungeon_El_Forest_Hell_Expert.lua",
				difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

				requireDungeonID	= DUNGEON_ID["DI_EL_FOREST_HELL_HARD"],
				
				
				-- 비밀던전인 경우에 요렇게 설정해줘야합니다	
				IS_HELL_MODE = TRUE,	
				EXTRA_REQUIRE_DUNGEON_ID =
				{
					DUNGEON_ID["DI_EL_FOREST_NORTH_EXPERT"],
					DUNGEON_ID["DI_EL_FOREST_MAIN_EXPERT"],
					DUNGEON_ID["DI_EL_FOREST_WEST_EXPERT"],
					--DUNGEON_ID["DI_EL_FOREST_GATE_EXPERT"],
					DUNGEON_ID["DI_EL_FOREST_MONKEY_EXPERT"],
					DUNGEON_ID["DI_EL_FOREST_EXTRA_EXPERT"],
				},	

				m_MinLevel			= 15,
				m_MaxLevel			= 20,
				
				m_NPCLevel			= 20,
				
				m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_EL_FOREST_EXTRA_CAVE_STAGE5"],
				m_LoadingScreenFileName	= "HQ_LoadingDungeon_EL_TREE_HELLMODE1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
				m_LoadingScreenFileName2= "HQ_LoadingDungeon_EL_TREE_HELLMODE2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
			}
--]]


---------------------------------------------------------------------------

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ELDER_DRUID_FOREST_NORMAL"],
	dungeonName 		= STR_ID_2983,
	dataFileName 		= "Dungeon_Elder_Druid_Forest_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

	--requireDungeonID	= DUNGEON_ID["DI_RUBEN_SWAMP_NORMAL"],
	--[[
	EXTRA_REQUIRE_DUNGEON_ID =
				{
					DUNGEON_ID["DI_RUBEN_EL_TREE_NORMAL"],
					DUNGEON_ID["DI_RUBEN_RUIN_OF_ELF_NORMAL"],
					DUNGEON_ID["DI_RUBEN_SWAMP_NORMAL"],
				},
	--]]

	m_MinLevel			= 9,
	m_MaxLevel			= 11,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 9,
	
	m_DungeonDescription = STR_ID_19929,

	--m_TextureName			= "DLG_Common_Texture11.TGA",
	--m_PieceName			= "Dungeon_Image_Dark_Forest",
	
	m_TextureName	= "DLG_UI_Dungeon_Image02.dds",
	m_PieceName		= "DUNGEON_IMAGE_DARK_FOREST",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_ELDER_DRUID_FOREST_STAGE3"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_ELDER_DARK_FOREST1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_ELDER_DARK_FOREST2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	--m_Explanation			= STR_ID_2984,


	m_LocalStarPosX	= 295,
	m_LocalStarPosY	= 657,
	
	AUTO_DUNGEON_ROOM_TITLE =
	{
		
		STR_ID_2834,
		STR_ID_2898,
		STR_ID_2985,
		STR_ID_2986, 
	},
	
	BOSS_DROP_ITEM =
	{
		RENA 		= 	{30198,},
	},
	
	ENDING_SPEECH0 = 
	{
	
			
		ELSWORD = {

		{    STR_ID_2987, },

		{    STR_ID_2988, },

		{    STR_ID_2989, },

		{    STR_ID_2990, },

		{    STR_ID_2991, },
		},


		AISHA = {

		{    STR_ID_2992, },

		{    STR_ID_2993, },

		{    STR_ID_2994, },

		{    STR_ID_2995, },

		{    STR_ID_2996, },
		},


		RENA = {

		{    STR_ID_2997, },

		{    STR_ID_2998, },

		{    STR_ID_2999, },

		{    STR_ID_3000, },

		{    STR_ID_3001, },
		},

		RAVEN = {

		{    STR_ID_3002, },

		{    STR_ID_3003, },

		{    STR_ID_3004, },

		{    STR_ID_3005, },

		{    STR_ID_3006, },
		},
	    		  				 
		EVE = 
		{
			{
				STR_ID_3007,      
			},
		    { 
       			STR_ID_3008,        
			},
		}, 
		
		CHUNG = 
		{

		{    STR_ID_9892, },

		{    STR_ID_9893, },

		{    STR_ID_9894, },

		},
		
		ARA = 
		{

		{    STR_ID_21361, },

		{    STR_ID_21362, },

		{    STR_ID_21363, },
		
		{    STR_ID_21364, },

		},
	},
	

}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ELDER_DRUID_FOREST_HARD"],
	dungeonName 		= STR_ID_2983,
	dataFileName 		= "Dungeon_Elder_Druid_Forest_Hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= DUNGEON_ID["DI_ELDER_DRUID_FOREST_NORMAL"],

	m_MinLevel			= 9,
	m_MaxLevel			= 11,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 10,
	
	m_DungeonDescription = STR_ID_19929,
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_ELDER_DRUID_FOREST_STAGE3"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_ELDER_DARK_FOREST1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_ELDER_DARK_FOREST2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		AISHA		= 	{30225,},
		RENA 		= 	{30198,},
	},
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ELDER_DRUID_FOREST_EXPERT"],
	dungeonName 		= STR_ID_2983,
	dataFileName 		= "Dungeon_Elder_Druid_Forest_Expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= DUNGEON_ID["DI_ELDER_DRUID_FOREST_HARD"],

	m_MinLevel			= 9,
	m_MaxLevel			= 11,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 11,
	
	m_DungeonDescription = STR_ID_19929,
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_ELDER_DRUID_FOREST_STAGE3"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_ELDER_DARK_FOREST1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_ELDER_DARK_FOREST2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.

	BOSS_DROP_ITEM =
	{
		AISHA		= 	{30225,},
		RENA 		= 	{30198,},
	},
}
---------------------------------------------------------------------------천연동굴 삭제 
--[[
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ELDER_NATURE_CAVE_NORMAL"],
	dungeonName 		= STR_ID_3009,
	dataFileName 		= "Dungeon_Elder_Nature_Cave_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

	requireDungeonID	= DUNGEON_ID["DI_ELDER_DRUID_FOREST_NORMAL"],

	m_MinLevel			= 10,
	m_MaxLevel			= 12,
	
	m_NPCLevel			= 10,

	--m_TextureName			= "DLG_Common_Texture11.TGA",
	--m_PieceName			= "Dungeon_Image_Nature_Cave",
	
	m_TextureName	= "DLG_UI_Dungeon_Image02.dds",
	m_PieceName		= "DUNGEON_IMAGE_NATURE_CAVE",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_ELDER_NATURE_CAVE_STAGE3"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_ELDER_NATURE_CAVE1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_ELDER_NATURE_CAVE2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	--m_Explanation			= STR_ID_3010,


	m_LocalStarPosX	= 767,
	m_LocalStarPosY	= 584,
	
	AUTO_DUNGEON_ROOM_TITLE =
	{
		
		STR_ID_3011,
		STR_ID_2898,
		STR_ID_2985,
	},


	ENDING_SPEECH0 = 
	{
	
			
		ELSWORD = {

		{    STR_ID_3012, },

		{    STR_ID_3013, },

		{    STR_ID_3014, },

		{    STR_ID_3015, },

		{    STR_ID_3016, },
		},

		AISHA = {

		{    STR_ID_3017, },

		{    STR_ID_3018, },

		{    STR_ID_3019, },

		{    STR_ID_3020, },

		{    STR_ID_3021, },
		},

		RENA = {

		{    STR_ID_3022,    },

		{    STR_ID_3023,    },

		{    STR_ID_3024,    },

		{    STR_ID_3025,    },

		{    STR_ID_3026,    },
		},

		RAVEN = {

		{    STR_ID_3027,    },

		{    STR_ID_3028,    },

		{    STR_ID_3029,    },

		{    STR_ID_3030,    },

		{    STR_ID_3031, 
		},
	
		},
			    		  				 
		EVE = 
		{
			{
				STR_ID_3032,      
			},
		    { 
       			STR_ID_3033,        
			},
		    {
       			STR_ID_3034,                     
			},
		}, 
			
	},
	
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ELDER_NATURE_CAVE_HARD"],
	dungeonName 		= STR_ID_3009,
	dataFileName 		= "Dungeon_Elder_Nature_Cave_Hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= DUNGEON_ID["DI_ELDER_NATURE_CAVE_NORMAL"],

	m_MinLevel			= 10,
	m_MaxLevel			= 12,
	
	m_NPCLevel			= 11,
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_ELDER_NATURE_CAVE_STAGE3"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_ELDER_NATURE_CAVE1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_ELDER_NATURE_CAVE2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ELDER_NATURE_CAVE_EXPERT"],
	dungeonName 		= STR_ID_3009,
	dataFileName 		= "Dungeon_Elder_Nature_Cave_Expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= DUNGEON_ID["DI_ELDER_NATURE_CAVE_HARD"],

	m_MinLevel			= 10,
	m_MaxLevel			= 12,
	
	m_NPCLevel			= 12,
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_ELDER_NATURE_CAVE_STAGE3"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_ELDER_NATURE_CAVE1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_ELDER_NATURE_CAVE2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
}


--]]


---------------------------------------------------------------------------


g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ELDER_BENDERS_CAVE_NORMAL"],
	dungeonName 		= STR_ID_3035,
	dataFileName 		= "Dungeon_Elder_Benders_Cave_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

	--requireDungeonID	= DUNGEON_ID["DI_ELDER_DRUID_FOREST_NORMAL"],
	
	EXTRA_REQUIRE_DUNGEON_ID =
				{
					DUNGEON_ID["DI_ELDER_DRUID_FOREST_NORMAL"],
				},

	m_MinLevel			= 11,
	m_MaxLevel			= 13,
	
	m_RequireItemLevel     = 1,
	
	m_NPCLevel			= 11,
	
	m_DungeonDescription = STR_ID_19930,


	--m_TextureName			= "DLG_Common_Texture02.TGA",
	--m_PieceName			= "Dungeon_Image_Benders_Cave",
	
	m_TextureName	= "DLG_UI_Dungeon_Image02.dds",
	m_PieceName		= "DUNGEON_IMAGE_BENDERS_CAVE",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_ELDER_BENDERS_CAVE_STAGE3"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_ELDER_BENDERS_CAVE1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_ELDER_BENDERS_CAVE2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	

	--m_Explanation			= STR_ID_3036,


	m_LocalStarPosX	= 685+4,
	m_LocalStarPosY	= 440+6,
	
	BOSS_DROP_ITEM =
	{
		ELSWORD 		= 	{ 30154, },
	},
	
	
	AUTO_DUNGEON_ROOM_TITLE =
	{
		
		STR_ID_3011,
		STR_ID_2898,
		STR_ID_2985,
		STR_ID_2830,
		STR_ID_3037, 
	},
	
	
	
	ENDING_SPEECH0 = 
	{
			
		ELSWORD = {

		{    STR_ID_3038,    },

		{    STR_ID_3039,    },

		{    STR_ID_3040,    },

		{    STR_ID_3041,    },

		{    STR_ID_3042,    },
		},

		AISHA = {

		{    STR_ID_3043,    },

		{    STR_ID_3044,    },

		{    STR_ID_3045,    },

		{    STR_ID_3046,    },

		{    STR_ID_3047,    },
		},

		RENA = {

		{    STR_ID_3048,    },

		{    STR_ID_3049,    },

		{    STR_ID_3050,    },
		    
		{    STR_ID_3051,    },

		{    STR_ID_3052,    },
		},

		RAVEN = {

		{    STR_ID_3053, },

		{    STR_ID_3054,    },

		{    STR_ID_3055,    },

		{    STR_ID_3056,    },

		{    STR_ID_3057,    },
		},
				    		  				 
		EVE = 
		{
			{
				STR_ID_3058,      
			},
		    { 
       			STR_ID_3059,        
			},
		    {
       			STR_ID_3060,                     
			},
		}, 
		
		CHUNG = {

		{    STR_ID_9900, },

		{    STR_ID_9901,    },

		{    STR_ID_9902,    },

		{    STR_ID_9903,    },

		},
		
		ARA = 
		{

		{    STR_ID_21365, },

		{    STR_ID_21366, },

		{    STR_ID_21367, },
		
		{    STR_ID_21368, },

		},
	},
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ELDER_BENDERS_CAVE_HARD"],
	dungeonName 		= STR_ID_3035,
	dataFileName 		= "Dungeon_Elder_Benders_Cave_Hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= DUNGEON_ID["DI_ELDER_BENDERS_CAVE_NORMAL"],

	m_MinLevel			= 11,
	m_MaxLevel			= 13,
	
	m_RequireItemLevel     = 1,
	
	m_NPCLevel			= 12,
	
	m_DungeonDescription = STR_ID_19930,
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_ELDER_BENDERS_CAVE_STAGE3"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_ELDER_BENDERS_CAVE1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_ELDER_BENDERS_CAVE2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON			= 	{ 30166, },
		ELSWORD 		= 	{ 30154, },
	},
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ELDER_BENDERS_CAVE_EXPERT"],
	dungeonName 		= STR_ID_3035,
	dataFileName 		= "Dungeon_Elder_Benders_Cave_Expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= DUNGEON_ID["DI_ELDER_BENDERS_CAVE_HARD"],

	m_MinLevel			= 11,
	m_MaxLevel			= 13,
	
	m_RequireItemLevel     = 1,
	
	m_NPCLevel			= 13,

	m_DungeonDescription = STR_ID_19930,
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_ELDER_BENDERS_CAVE_STAGE3"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_ELDER_BENDERS_CAVE1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_ELDER_BENDERS_CAVE2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON			= 	{ 30166, },
		ELSWORD 		= 	{ 30154, },
	},
}


---------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ELDER_BELOW_PASSAGE_NORMAL"],
	dungeonName 		= STR_ID_3061,
	dataFileName 		= "Dungeon_Elder_Below_Passage_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

	--requireDungeonID	= DUNGEON_ID["DI_ELDER_BENDERS_CAVE_NORMAL"],
	
	EXTRA_REQUIRE_DUNGEON_ID =
				{
					DUNGEON_ID["DI_ELDER_DRUID_FOREST_NORMAL"],
					DUNGEON_ID["DI_ELDER_BENDERS_CAVE_NORMAL"],
				},

	m_MinLevel			= 13,
	m_MaxLevel			= 15,
	
	m_RequireItemLevel     = 3,
	
	m_NPCLevel			= 13,

	--m_TextureName			= "DLG_Common_Texture11.TGA",
	--m_PieceName			= "Dungeon_Image_Subway",
	
	m_DungeonDescription = STR_ID_19930,
	
	m_TextureName	= "DLG_UI_Dungeon_Image02.dds",
	m_PieceName		= "DUNGEON_IMAGE_SUBWAY",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_ELDER_BELOW_PASSAGE_STAGE4"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_ELDER_SUBWAY1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_ELDER_SUBWAY2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	

	m_DungeonDescription =STR_ID_19931,


	m_LocalStarPosX	= 448,
	m_LocalStarPosY	= 492,
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{ 30167, 113770,},
	},

	AUTO_DUNGEON_ROOM_TITLE =
	{
		
		STR_ID_3011,
		STR_ID_2898,
		STR_ID_3063,
		STR_ID_3037,
		STR_ID_3064, 
	},
	
	
	ENDING_SPEECH0 = 
	{
			
		ELSWORD = {

		{    STR_ID_3065,    },

		{    STR_ID_3066,    },

		{    STR_ID_3067,    },

		{    STR_ID_3068,    },

		{    STR_ID_3069,    },
		},

		AISHA = {

		{    STR_ID_3070,    },
		    
		{    STR_ID_3071,    },

		{    STR_ID_3072,    },

		{    STR_ID_3073,    },

		{    STR_ID_3074,    },
		},

		RENA = {

		{    STR_ID_3075,    },

		{    STR_ID_3076,    },

		{    STR_ID_3077,    },

		{    STR_ID_3078,    },

		{    STR_ID_3079,    },
		},


		RAVEN = {

		{    STR_ID_3080,    },

		{    STR_ID_3081,    },

		{    STR_ID_3082,    },

		{    STR_ID_3083,    },

		{    STR_ID_3084,    },

		},
					    		  				 
		EVE = 
		{
			{
				STR_ID_3085,      
			},
		    { 
       			STR_ID_3086,        
			},
		    {
       			STR_ID_3087,              
			},
			{
       			STR_ID_3088,              
			},
		}, 
		
		CHUNG =  {

		{    STR_ID_9904,    },

		{    STR_ID_9905,    },

		{    STR_ID_9906,    },

		},		
		
		ARA = 
		{

		{    STR_ID_21369, },

		{    STR_ID_21370, },

		{    STR_ID_21371, },
		
		{    STR_ID_21372, },

		},
	},
}


g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ELDER_BELOW_PASSAGE_HARD"],
	dungeonName 		= STR_ID_3061,
	dataFileName 		= "Dungeon_Elder_Below_Passage_Hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= DUNGEON_ID["DI_ELDER_BELOW_PASSAGE_NORMAL"],

	m_MinLevel			= 13,
	m_MaxLevel			= 15,
	
	m_RequireItemLevel     = 3,
	
	m_NPCLevel			= 14,
	
	m_DungeonDescription =STR_ID_19931,
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_ELDER_BELOW_PASSAGE_STAGE4"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_ELDER_SUBWAY1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_ELDER_SUBWAY2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{ 30167, 113770,},
	},
}


g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ELDER_BELOW_PASSAGE_EXPERT"],
	dungeonName 		= STR_ID_3061,
	dataFileName 		= "Dungeon_Elder_Below_Passage_Expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= DUNGEON_ID["DI_ELDER_BELOW_PASSAGE_HARD"],

	m_MinLevel			= 13,
	m_MaxLevel			= 15,
	
	m_RequireItemLevel     = 3,
	
	m_NPCLevel			= 15,
	
	m_DungeonDescription =STR_ID_19931,
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_ELDER_BELOW_PASSAGE_STAGE4"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_ELDER_SUBWAY1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_ELDER_SUBWAY2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{ 30167, 113770,},
	},
}


---------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ELDER_WALLY_CASTLE_ROOF_NORMAL"],
	dungeonName 		= STR_ID_3089,
	dataFileName 		= "Dungeon_Elder_Wally_Castle_Roof_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

	--requireDungeonID	= DUNGEON_ID["DI_ELDER_BELOW_PASSAGE_NORMAL"],
	
	EXTRA_REQUIRE_DUNGEON_ID =
				{
					DUNGEON_ID["DI_ELDER_DRUID_FOREST_NORMAL"],
					DUNGEON_ID["DI_ELDER_BENDERS_CAVE_NORMAL"],
					DUNGEON_ID["DI_ELDER_BELOW_PASSAGE_NORMAL"],
				},

	m_MinLevel			= 15,
	m_MaxLevel			= 17,
	
	m_RequireItemLevel     = 5,
	
	m_NPCLevel			= 15,
	
	m_DungeonDescription =STR_ID_19932,


	--m_TextureName			= "DLG_Common_Texture11.TGA",
	--m_PieceName			= "Dungeon_Image_Wally_Castle_Outline",
	
	m_TextureName	= "DLG_UI_Dungeon_Image02.dds",
	m_PieceName		= "CASTLE_WILLY_SIDE",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_ELDER_WALLY_CASTLE_ROOF_STAGE4"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_ELDER_CASTLE_WILLY_SIDE1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_ELDER_CASTLE_WILLY_SIDE2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	

	--m_Explanation			= STR_ID_3090,


	m_LocalStarPosX	= 214-2,
	m_LocalStarPosY	= 503,
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{ 30200, 113770, },
		--ELESIS		= 	{ 30275, },
	},
	
	AUTO_DUNGEON_ROOM_TITLE =
	{
		
		STR_ID_3091,
		STR_ID_2898,
		STR_ID_3092,
		STR_ID_3093, 
		 
	},
	
	
	ENDING_SPEECH0 = 
	{
	
			
		ELSWORD = {

		{    STR_ID_3094, },

		{    STR_ID_3095, },

		{    STR_ID_3096, },

		{    STR_ID_3097, },

		{    STR_ID_3098, },
		},

		AISHA = {

		{    STR_ID_3099,    },

		{    STR_ID_3100,    },

		{    STR_ID_3101,    },

		{    STR_ID_3102,    },

		{    STR_ID_3103,    },
		},

		RENA = {

		{    STR_ID_3104,    },

		{    STR_ID_3105,    },

		{    STR_ID_3106,    },

		{    STR_ID_3107,    
			STR_ID_3108,    },

		{    STR_ID_3109,    },
		},


		RAVEN = {

		{    STR_ID_3110,    },

		{    STR_ID_3111,    },

		{    STR_ID_3112,    },

		{    STR_ID_3113,    },

		{    STR_ID_3114,    },
		},
				    		  				 
		EVE = 
		{
			{
				STR_ID_3115,      
			},
		    { 
       			STR_ID_3116,        
			},
			{
       			STR_ID_3117,              
			},
		}, 
			
		CHUNG =  {

		{    STR_ID_9907,    },

		{    STR_ID_9908,    },

		{    STR_ID_9909,    },

		{    STR_ID_9910,    },

		},	
		
		ARA = 
		{

		{    STR_ID_21373, },

		{    STR_ID_21374, },

		{    STR_ID_21375, },
		
		{    STR_ID_21376, },

		},
	},

}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ELDER_WALLY_CASTLE_ROOF_HARD"],
	dungeonName 		= STR_ID_3089,
	dataFileName 		= "Dungeon_Elder_Wally_Castle_Roof_Hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= DUNGEON_ID["DI_ELDER_WALLY_CASTLE_ROOF_NORMAL"],

	m_MinLevel			= 15,
	m_MaxLevel			= 17,
	
	m_RequireItemLevel     = 5,
	
	m_NPCLevel			= 16,
	
	m_DungeonDescription =STR_ID_19932,

	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_ELDER_WALLY_CASTLE_ROOF_STAGE4"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_ELDER_CASTLE_WILLY_SIDE1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_ELDER_CASTLE_WILLY_SIDE2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{ 30200, 113770, },
		--ELESIS		= 	{ 30275, },
	},
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ELDER_WALLY_CASTLE_ROOF_EXPERT"],
	dungeonName 		= STR_ID_3089,
	dataFileName 		= "Dungeon_Elder_Wally_Castle_Roof_Expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= DUNGEON_ID["DI_ELDER_WALLY_CASTLE_ROOF_HARD"],

	m_MinLevel			= 15,
	m_MaxLevel			= 17,
	
	m_RequireItemLevel     = 5,
	
	m_NPCLevel			= 17,
	
	m_DungeonDescription = STR_ID_19932,

	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_ELDER_WALLY_CASTLE_ROOF_STAGE4"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_ELDER_CASTLE_WILLY_SIDE1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_ELDER_CASTLE_WILLY_SIDE2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{ 30200, 113770, },
		--ELESIS		= 	{ 30275, },
	},
}




---------------------------------------------------------------------------

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ELDER_WALLY_CASTLE_CENTER_NORMAL"],
	dungeonName 		= STR_ID_3118,
	dataFileName 		= "Dungeon_Elder_Wally_Castle_Center_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

	--requireDungeonID	= DUNGEON_ID["DI_ELDER_WALLY_CASTLE_ROOF_NORMAL"],
	
	EXTRA_REQUIRE_DUNGEON_ID =
				{
					DUNGEON_ID["DI_ELDER_DRUID_FOREST_NORMAL"],
					DUNGEON_ID["DI_ELDER_BENDERS_CAVE_NORMAL"],
					DUNGEON_ID["DI_ELDER_BELOW_PASSAGE_NORMAL"],
					DUNGEON_ID["DI_ELDER_WALLY_CASTLE_ROOF_NORMAL"],
				},

	m_MinLevel			= 17,
	m_MaxLevel			= 19,
	
	m_RequireItemLevel     = 7,
	
	m_NPCLevel			= 17,

	--m_TextureName			= "DLG_Common_Texture11.TGA",
	--m_PieceName			= "Dungeon_Image_Wally_Castle",
	
	m_TextureName	= "DLG_UI_Dungeon_Image02.dds",
	m_PieceName		= "DUNGEON_IMAGE_WALLY_CASTLE",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_ELDER_WALLY_CASTLE_CENTER_STAGE4"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_ELDER_CASTLE_WILLY1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_ELDER_CASTLE_WILLY2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	

	--m_Explanation			= STR_ID_3119,
	
	m_DungeonDescription = STR_ID_19933,



	m_LocalStarPosX	= 353,
	m_LocalStarPosY	= 315,
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{ 30168,  113750,},
		CHUNG 		= 	{ 30213, },
	},
	
	AUTO_DUNGEON_ROOM_TITLE =
	{
		
		STR_ID_3091,
		STR_ID_2898,
		STR_ID_3093,
		STR_ID_3120, 
		 
	},
	
	
	ENDING_SPEECH0 = 
	{
			
		ELSWORD = {

		{    STR_ID_3121,    },

		{    STR_ID_3122,    },

		{    STR_ID_3123,    },

		{    STR_ID_3124,    },

		{    STR_ID_3125,    },
		},

		AISHA = {

		{    STR_ID_3126,    },

		{    STR_ID_3127,    },

		{    STR_ID_3128,    },

		{    STR_ID_3129,    },

		{    STR_ID_3130,    },
		},

		RENA = {

		{    STR_ID_3131,    },

		{    STR_ID_3132,    },

		{    STR_ID_3133,    },

		{    STR_ID_3134,    },

		{    STR_ID_3135,    },
		},

		RAVEN = {

		{    STR_ID_3136,    },

		{    STR_ID_3137, },

		{    STR_ID_3138,    },

		{    STR_ID_3139,    },

		{    STR_ID_3140,    },
		},
		    		  				 
		EVE = 
		{
			{
				STR_ID_3141,      
			},
		    { 
       			STR_ID_3142,        
			},
		    {
       			STR_ID_3143,              
			},
			{
       			STR_ID_3144,
			},
			{
       			STR_ID_3145,              
			},
		}, 
		
		CHUNG =  {

		{    STR_ID_9911,    },

		{    STR_ID_9912, },

		{    STR_ID_9913,    },

		{    STR_ID_9914,    },

		},
		
		ARA = 
		{

		{    STR_ID_21377, },

		{    STR_ID_21378, },

		{    STR_ID_21379, },
		
		{    STR_ID_21380, },

		},
	},

}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ELDER_WALLY_CASTLE_CENTER_HARD"],
	dungeonName 		= STR_ID_3118,
	dataFileName 		= "Dungeon_Elder_Wally_Castle_Center_Hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= DUNGEON_ID["DI_ELDER_WALLY_CASTLE_CENTER_NORMAL"],

	m_MinLevel			= 17,
	m_MaxLevel			= 19,
	
	m_RequireItemLevel     = 7,
	
	m_NPCLevel			= 18,
	
	m_DungeonDescription = STR_ID_19933,
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_ELDER_WALLY_CASTLE_CENTER_STAGE4"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_ELDER_CASTLE_WILLY1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_ELDER_CASTLE_WILLY2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{ 30168,  113750,},
		CHUNG 		= 	{ 30213, },
	},
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ELDER_WALLY_CASTLE_CENTER_EXPERT"],
	dungeonName 		= STR_ID_3118,
	dataFileName 		= "Dungeon_Elder_Wally_Castle_Center_Expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= DUNGEON_ID["DI_ELDER_WALLY_CASTLE_CENTER_HARD"],

	m_MinLevel			= 17,
	m_MaxLevel			= 19,
	
	m_RequireItemLevel     = 7,
	
	m_NPCLevel			= 19,
	
	m_DungeonDescription = STR_ID_19933,
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_ELDER_WALLY_CASTLE_CENTER_STAGE4"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_ELDER_CASTLE_WILLY1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_ELDER_CASTLE_WILLY2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{ 30168,  113750,},
		CHUNG 		= 	{ 30213, },
	},
}




-------------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ELDER_WALLY_CASTLE_LAB_NORMAL"],
	dungeonName 		= STR_ID_3146,
	dataFileName 		= "Dungeon_Elder_Wally_Castle_Lab_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

	requireDungeonID	= 0,
	
	
	-- 비밀던전인 경우에 요렇게 설정해줘야합니다	
	IS_HELL_MODE = TRUE,	
	EXTRA_REQUIRE_DUNGEON_ID =
	{
		DUNGEON_ID["DI_ELDER_BENDERS_CAVE_EXPERT"],
		--DUNGEON_ID["DI_ELDER_NATURE_CAVE_EXPERT"],
		DUNGEON_ID["DI_ELDER_DRUID_FOREST_EXPERT"],
		DUNGEON_ID["DI_ELDER_WALLY_CASTLE_ROOF_EXPERT"],
		DUNGEON_ID["DI_ELDER_BELOW_PASSAGE_EXPERT"],	
		DUNGEON_ID["DI_ELDER_WALLY_CASTLE_CENTER_EXPERT"],
	},
	
	
	requireItemID		= 109991,
	requireItemCount	= 1,		
	m_MinLevel			= 25,
	m_MaxLevel			= 30,
	
	m_RequireItemLevel     = 15,
	
	m_NPCLevel			= 25,

	--m_TextureName		= "DLG_New_Dungeon_Image5.dds",		
	--m_PieceName			= "Dungeon_Image_Wally_Laboratory ",			
	
	m_TextureName	= "DLG_UI_Dungeon_Image02.dds",
	m_PieceName		= "DUNGEON_IMAGE_WALLY_LABORATORY",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_ELDER_WALLY_CASTLE_LAB_STAGE5"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_ELDER_WALLY_LABORATORY1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_ELDER_WALLY_LABORATORY2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	

	--m_Explanation		= STR_ID_3147,

	m_LocalStarPosX	= 539,
	m_LocalStarPosY	= 327,
	
	
	
	
	ENDING_SPEECH0 = 
	{
			
		ELSWORD = {

		{    STR_ID_3148,    },

		{    STR_ID_3149,    },

		{    STR_ID_3150,    },

		{    STR_ID_3151,    },
		},

		AISHA = {

		{    STR_ID_3152,    },

		{    STR_ID_3153,    },

		{    STR_ID_3154,    },

		{    STR_ID_3155,    },
		},

		RENA = {

		{    STR_ID_3156,    },

		{    STR_ID_3157,    },

		{    STR_ID_3158,    },

		{    STR_ID_3159,    },
		},

		RAVEN = {

		{    STR_ID_3160,    },

		{    STR_ID_3161,    },

		{    STR_ID_3162,    },

		{    STR_ID_3163,    },
		},
  		    		  				 
		EVE = 
		{
			{
				STR_ID_3164,      
			},
		    { 
       			STR_ID_3165,        
			},
		    {
       			STR_ID_3166,              
			},

		}, 
	
	},
	
	
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ELDER_WALLY_CASTLE_LAB_HARD"],
	dungeonName 		= STR_ID_3146,
	dataFileName 		= "Dungeon_Elder_Wally_Castle_Lab_Hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= DUNGEON_ID["DI_ELDER_WALLY_CASTLE_LAB_NORMAL"],
	
	
	
	-- 비밀던전인 경우에 요렇게 설정해줘야합니다	
	IS_HELL_MODE = TRUE,	
	EXTRA_REQUIRE_DUNGEON_ID =
	{
		DUNGEON_ID["DI_ELDER_BENDERS_CAVE_EXPERT"],
		DUNGEON_ID["DI_ELDER_NATURE_CAVE_EXPERT"],
		DUNGEON_ID["DI_ELDER_DRUID_FOREST_EXPERT"],
		DUNGEON_ID["DI_ELDER_WALLY_CASTLE_ROOF_EXPERT"],
		DUNGEON_ID["DI_ELDER_BELOW_PASSAGE_EXPERT"],	
		DUNGEON_ID["DI_ELDER_WALLY_CASTLE_CENTER_EXPERT"],
	},
	
	requireItemID		= 109991,
	requireItemCount	= 1,		

	m_MinLevel			= 25,
	m_MaxLevel			= 30,
	
	m_RequireItemLevel     = 15,
	
	m_NPCLevel			= 27,
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_ELDER_WALLY_CASTLE_LAB_STAGE5"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_ELDER_WALLY_LABORATORY1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_ELDER_WALLY_LABORATORY2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.

}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ELDER_WALLY_CASTLE_LAB_EXPERT"],
	dungeonName 		= STR_ID_3146,
	dataFileName 		= "Dungeon_Elder_Wally_Castle_Lab_Expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= DUNGEON_ID["DI_ELDER_WALLY_CASTLE_LAB_HARD"],
	
	
	-- 비밀던전인 경우에 요렇게 설정해줘야합니다	
	IS_HELL_MODE = TRUE,
	EXTRA_REQUIRE_DUNGEON_ID =
	{
		DUNGEON_ID["DI_ELDER_BENDERS_CAVE_EXPERT"],
		DUNGEON_ID["DI_ELDER_NATURE_CAVE_EXPERT"],
		DUNGEON_ID["DI_ELDER_DRUID_FOREST_EXPERT"],
		DUNGEON_ID["DI_ELDER_WALLY_CASTLE_ROOF_EXPERT"],
		DUNGEON_ID["DI_ELDER_BELOW_PASSAGE_EXPERT"],	
		DUNGEON_ID["DI_ELDER_WALLY_CASTLE_CENTER_EXPERT"],
	},
	
	requireItemID		= 109991,
	requireItemCount	= 1,		

	m_MinLevel			= 25,
	m_MaxLevel			= 30,
	
	m_RequireItemLevel     = 15,
	
	m_NPCLevel			= 30,
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_ELDER_WALLY_CASTLE_LAB_STAGE5"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_ELDER_WALLY_LABORATORY1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_ELDER_WALLY_LABORATORY2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
}





-------------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_BESMA_DRAGON_ROAD_NORMAL"],
	dungeonName 		= STR_ID_3167,
	dataFileName 		= "Dungeon_Besma_Dragon_Road_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

	--requireDungeonID	= DUNGEON_ID["DI_ELDER_WALLY_CASTLE_CENTER_NORMAL"],
	--[[
	EXTRA_REQUIRE_DUNGEON_ID =
				{
					DUNGEON_ID["DI_ELDER_DRUID_FOREST_NORMAL"],
					DUNGEON_ID["DI_ELDER_BENDERS_CAVE_NORMAL"],
					DUNGEON_ID["DI_ELDER_BELOW_PASSAGE_NORMAL"],
					DUNGEON_ID["DI_ELDER_WALLY_CASTLE_ROOF_NORMAL"],
					DUNGEON_ID["DI_ELDER_WALLY_CASTLE_CENTER_NORMAL"],
				},
	--]]

	m_MinLevel			= 19,
	m_MaxLevel			= 21,
	
	m_RequireItemLevel     = 9,
	
	m_NPCLevel			= 19,

	--m_TextureName			= "DLG_New_Dungeon_Image5.dds",
	--m_PieceName			= "Dungeon_Image_Dragon_Way",
	
	m_DungeonDescription = STR_ID_19934,


	
	m_TextureName	= "DLG_UI_Dungeon_Image03.dds",
	m_PieceName		= "DUNGEON_IMAGE_DRAGON_WAY",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_BESMA_DRAGON_ROAD_STAGE4"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_BESMA_DRAGON_ROAD1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_BESMA_DRAGON_ROAD2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{ 113840, },
		RAVEN		= 	{ 30201, },
	},
	

	--m_Explanation		= STR_ID_3168,



	m_LocalStarPosX	= 359,
	m_LocalStarPosY	= 403,
	
	--m_LocalStarPosX	= 477,
	--m_LocalStarPosY	= 447,
	
	
	
	AUTO_DUNGEON_ROOM_TITLE =
	{
		
		STR_ID_3169,
		STR_ID_2898,
		 
	},
	
	
		
	ENDING_SPEECH0 = 
	{
	
			
		ELSWORD = {

		{   STR_ID_3170,   },

		{   STR_ID_3171,   },

		{   STR_ID_3172,  },

		{   STR_ID_3173,   },

		{   STR_ID_3174,   },
		  
		},

		AISHA = { 

		{   STR_ID_3175,   },

		{   STR_ID_3176,   },

		{   STR_ID_3177,   },

		{   STR_ID_3178,   },

		{   STR_ID_3179,   },
		},

		RENA = { 

		{   STR_ID_3180,   },

		{   STR_ID_3181,   },

		{   STR_ID_3182,   },

		{   STR_ID_3183, },

		{   STR_ID_3184,   },
		},

		RAVEN = { 

		{   STR_ID_3185,   },

		{   STR_ID_3186,   },

		{   STR_ID_3187,   },

		{   STR_ID_3188,   },

		{   STR_ID_3189, },
		},
	
		EVE = 
		{
			{
				STR_ID_3190,      
			},
		    { 
       			STR_ID_3191,        
			},

		}, 
		
		CHUNG =  { 

		{   STR_ID_9919,   },

		{   STR_ID_9920,   },

		{   STR_ID_9921,   },

		},
		
		ARA =  { 

		{   STR_ID_21381,   },

		{   STR_ID_21382,   },

		{   STR_ID_21383,   },

		},	
	},

}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_BESMA_DRAGON_ROAD_HARD"],
	dungeonName 		= STR_ID_3167,
	dataFileName 		= "Dungeon_Besma_Dragon_Road_Hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= DUNGEON_ID["DI_BESMA_DRAGON_ROAD_NORMAL"],

	m_MinLevel			= 19,
	m_MaxLevel			= 21,
	
	m_RequireItemLevel     = 9,
	
	m_NPCLevel			= 20,
	
	m_DungeonDescription = STR_ID_19934,
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_BESMA_DRAGON_ROAD_STAGE4"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_BESMA_DRAGON_ROAD1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_BESMA_DRAGON_ROAD2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{ 113840, },
		RAVEN		= 	{ 30201, },
	},
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_BESMA_DRAGON_ROAD_EXPERT"],
	dungeonName 		= STR_ID_3167,
	dataFileName 		= "Dungeon_Besma_Dragon_Road_Expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= DUNGEON_ID["DI_BESMA_DRAGON_ROAD_HARD"],

	m_MinLevel			= 19,
	m_MaxLevel			= 21,
	
	m_RequireItemLevel     = 9,
	
	m_NPCLevel			= 21,
	
	m_DungeonDescription = STR_ID_19934,
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_BESMA_DRAGON_ROAD_STAGE4"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_BESMA_DRAGON_ROAD1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_BESMA_DRAGON_ROAD2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{ 30169, 113840, },
		RAVEN		= 	{ 30201, },
	},
}



-------------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_BESMA_LAKE_NORMAL"],
	dungeonName 		= STR_ID_3197,
	dataFileName 		= "Dungeon_Besma_Lake_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

	--requireDungeonID	= DUNGEON_ID["DI_BESMA_DRAGON_ROAD_NORMAL"],
	
	EXTRA_REQUIRE_DUNGEON_ID =
				{
					DUNGEON_ID["DI_BESMA_DRAGON_ROAD_NORMAL"],
				},

	m_MinLevel			= 21,
	m_MaxLevel			= 23,
	
	m_RequireItemLevel     = 11,
	
	m_NPCLevel			= 21,
	
	m_DungeonDescription = STR_ID_19935,


	--m_TextureName		= "DLG_New_Dungeon_Image4.dds",
	--m_PieceName			= "Dungeon_Image_Besma_Lake",

	m_TextureName	= "DLG_UI_Dungeon_Image03.dds",
	m_PieceName		= "DUNGEON_IMAGE_BESMA_LAKE",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_BESMA_LAKE_STAGE4"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_BESMA_Lake1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_BESMA_Lake2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.


	--m_Explanation		= STR_ID_3198,

	m_LocalStarPosX	= 642,
	m_LocalStarPosY	= 512,
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{ 	113840, },
		AISHA 		= 	{	30202, },
	},
	
	AUTO_DUNGEON_ROOM_TITLE =
	{
		STR_ID_3199,
		STR_ID_3200, 
	},


		
	ENDING_SPEECH0 = 
	{	
		ELSWORD = {

		{   STR_ID_3201,   },

		{   STR_ID_3202,   },

		{   STR_ID_3203,   },

		{   STR_ID_3204,   },

		{   STR_ID_3205, },
		},

		AISHA = { 

		{   STR_ID_3206,   },

		{   STR_ID_3207, },

		{   STR_ID_3208, },

		{   STR_ID_3209,   },

		{   STR_ID_3210, },
		},

		RENA = { 

		{   STR_ID_3211, },

		{   STR_ID_3212, },

		{   STR_ID_3213, },

		{   STR_ID_3214,   },

		{   STR_ID_3215, },
		},

		RAVEN = { 

		{   STR_ID_3216,   },

		{   STR_ID_3217, },

		{   STR_ID_3218, },

		{   STR_ID_3219, },

		{   STR_ID_3220,   },

		},
			    		  				 
		EVE = 
		{
			{
				STR_ID_3221,      
			},
		    { 
       			STR_ID_3222,        
			},
		    {
       			STR_ID_3223,                     
			},

		}, 
		
		CHUNG = { 

		{   STR_ID_9922,  },

		{   STR_ID_9923, },

		{   STR_ID_9924, },

		{   STR_ID_9925, },

		},
		
		ARA =  { 

		{   STR_ID_21384,   },

		{   STR_ID_21385,  },

		{   STR_ID_21386,   },

		},
	},
	
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_BESMA_LAKE_HARD"],
	dungeonName 		= STR_ID_3197,
	dataFileName 		= "Dungeon_Besma_Lake_Hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= DUNGEON_ID["DI_BESMA_LAKE_NORMAL"],

	m_MinLevel			= 21,
	m_MaxLevel			= 23,
	
	m_RequireItemLevel     = 11,
	
	m_NPCLevel			= 22,
	
	m_DungeonDescription = STR_ID_19935,
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_BESMA_LAKE_STAGE4"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_BESMA_Lake1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_BESMA_Lake2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{ 	113840, },
		AISHA 		= 	{	30202,},
	},

}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_BESMA_LAKE_EXPERT"],
	dungeonName 		= STR_ID_3197,
	dataFileName 		= "Dungeon_Besma_Lake_Expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= DUNGEON_ID["DI_BESMA_LAKE_HARD"],

	m_MinLevel			= 21,
	m_MaxLevel			= 23,
	
	m_RequireItemLevel     = 11,
	
	m_NPCLevel			= 23,
	
	m_DungeonDescription = STR_ID_19935,
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_BESMA_LAKE_STAGE4"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_BESMA_Lake1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_BESMA_Lake2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{ 	113840, },
		AISHA 		= 	{	30202,},
	},
}


-------------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_BESMA_LAKE_NIGHT_NORMAL"],
	dungeonName 		= STR_ID_3224,
	dataFileName 		= "Dungeon_Besma_Lake_Night_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

	--requireDungeonID	= DUNGEON_ID["DI_BESMA_LAKE_NORMAL"],
	
	EXTRA_REQUIRE_DUNGEON_ID =
				{
					DUNGEON_ID["DI_BESMA_DRAGON_ROAD_NORMAL"],
					DUNGEON_ID["DI_BESMA_LAKE_NORMAL"],
				},

	m_MinLevel			= 23,
	m_MaxLevel			= 25,
	
	m_RequireItemLevel     = 13,
	
	m_NPCLevel			= 23,
	
	m_DungeonDescription =STR_ID_19936,


	--m_TextureName			= "DLG_New_Dungeon_Image4.dds",
	--m_PieceName			= "Dungeon_Image_Besma_Lakenight",


	m_TextureName	= "DLG_UI_Dungeon_Image03.dds",
	m_PieceName		= "DUNGEON_IMAGE_BESMA_LAKENIGHT",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_BESMA_LAKE_NIGHT_STAGE4"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_BESMA_Lake_Night1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_BESMA_Lake_Night2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.

	--m_Explanation			= STR_ID_3225,



	m_LocalStarPosX	= 807,
	m_LocalStarPosY	= 634,
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{ 	30170, },
		ELSWORD 	= 	{	113830,},
		AISHA 		= 	{	113831,},
		RENA 		= 	{	113832,},
		RAVEN		= 	{	113833,},
		EVE 		= 	{	113834,},
		CHUNG 		= 	{	30237, 113835,},
		ARA 		= 	{	113836,},
		--ELESIS		= 	{	30276, 113837,},
	},
	
	AUTO_DUNGEON_ROOM_TITLE =
	{
		
		STR_ID_3199,
		STR_ID_3200, 
		 
	},
	
	
		
	ENDING_SPEECH0 = 
	{
			
			
		ELSWORD = {

		{   STR_ID_3226,   },

		{   STR_ID_3227,   },

		{   STR_ID_3228, },

		{   STR_ID_3229, },

		{   STR_ID_3230, },
		},

		AISHA = { 

		{   STR_ID_3231,   },

		{   STR_ID_3232,   },

		{   STR_ID_3233,   },

		{   STR_ID_3234,   },

		{   STR_ID_3235,   },
		},

		RENA = { 

		{   STR_ID_3236,   },

		{   STR_ID_3237, },

		{   STR_ID_3238, },

		{   STR_ID_3239,   },

		{   STR_ID_3240, },
		},

		RAVEN = { 

		{   STR_ID_3241, },

		{   STR_ID_3242, },

		{   STR_ID_3243, },

		{   STR_ID_3244, },

		{   STR_ID_3245, },
		},
			    		  				 
		EVE = 
		{
			{
				STR_ID_3246,      
			},
		    { 
       			STR_ID_3247,        
			},
		    {
       			STR_ID_3248,                     
			},
		}, 
		
		CHUNG = { 

		{   STR_ID_9926, },

		{   STR_ID_9927, },

		{   STR_ID_9928, },

		{   STR_ID_9929, },
		
		},
		
		ARA =  { 

		{   STR_ID_21387,   },

		{   STR_ID_21388,  },

		{   STR_ID_21389,   },

		},
	},

}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_BESMA_LAKE_NIGHT_HARD"],
	dungeonName 		= STR_ID_3224,
	dataFileName 		= "Dungeon_Besma_Lake_Night_Hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= DUNGEON_ID["DI_BESMA_LAKE_NIGHT_NORMAL"],

	m_MinLevel			= 23,
	m_MaxLevel			= 25,
	
	m_RequireItemLevel     = 13,
	
	m_NPCLevel			= 24,
	
	m_DungeonDescription = STR_ID_19936,
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_BESMA_LAKE_NIGHT_STAGE4"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_BESMA_Lake_Night1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_BESMA_Lake_Night2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{ 	30170, },
		ELSWORD 	= 	{	113830,},
		AISHA 		= 	{	113831,},
		RENA 		= 	{	113832,},
		RAVEN		= 	{	113833,},
		EVE 		= 	{	113834,},
		CHUNG 		= 	{	30237, 113835,},
		ARA 		= 	{	113836,},
		--ELESIS		= 	{	30276, 113837,},
	},

}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_BESMA_LAKE_NIGHT_EXPERT"],
	dungeonName 		= STR_ID_3224,
	dataFileName 		= "Dungeon_Besma_Lake_Night_Expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= DUNGEON_ID["DI_BESMA_LAKE_NIGHT_HARD"],

	m_MinLevel			= 23,
	m_MaxLevel			= 25,
	
	m_RequireItemLevel     = 13,
	
	m_NPCLevel			= 25,
	
	m_DungeonDescription = STR_ID_19936,
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_BESMA_LAKE_NIGHT_STAGE4"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_BESMA_Lake_Night1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_BESMA_Lake_Night2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{ 	30170, },
		ELSWORD 	= 	{	113830,},
		AISHA 		= 	{	113831,},
		RENA 		= 	{	113832,},
		RAVEN		= 	{	113833,},
		EVE 		= 	{	113834,},
		CHUNG 		= 	{	30237, 113835,},
		ARA 		= 	{	113836,},
		--ELESIS		= 	{	30276, 113837,},
	},
}

-------------------------------------------------------------------------------
--[[
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_BESMA_CANYON_NORMAL"],
	dungeonName 		= STR_ID_3249,
	dataFileName 		= "Dungeon_Besma_Dragon_Canyon_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

	requireDungeonID	= DUNGEON_ID["DI_BESMA_LAKE_NIGHT_NORMAL"],

	m_MinLevel			= 23,
	m_MaxLevel			= 25,
	
	m_NPCLevel			= 23,

	--m_TextureName			= "DLG_New_Dungeon_Image5.dds",
	--m_PieceName			= "Dungeon_Image_Besma_Velley",

	m_TextureName	= "DLG_UI_Dungeon_Image03.dds",
	m_PieceName		= "DUNGEON_IMAGE_BESMA_VELLEY",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_BESMA_DRAGON_ROAD_CANYON_STAGE4"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_BESMA_Dragon_Canyon1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_BESMA_Dragon_Canyon2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.


	--m_Explanation			= STR_ID_3250,



	m_LocalStarPosX	= 395,
	m_LocalStarPosY	= 658,
	--m_LocalStarPosX	= 541,
	--m_LocalStarPosY	= 684,
	
	
	
	AUTO_DUNGEON_ROOM_TITLE =
	{
		
		STR_ID_3199,
		STR_ID_3251, 
		 
	},




		
	ENDING_SPEECH0 = 
	{
	
			
		ELSWORD = {

		{   STR_ID_3252,   },

		{   STR_ID_3253,   },

		{   STR_ID_3254,   },

		{   STR_ID_3255, },

		{   STR_ID_3256, },
		},

		AISHA = { 

		{   STR_ID_3257,   },

		{   STR_ID_3258,   },

		{   STR_ID_3259, },

		{   STR_ID_3260, },

		{   STR_ID_3261,   },
		},

		RENA = { 

		{   STR_ID_3262,   },

		{   STR_ID_3263, },

		{   STR_ID_3264, 
			STR_ID_3265, 
			},

		{   STR_ID_3266,   },

		{   STR_ID_3267,   },
		},

		RAVEN = { 

		{   STR_ID_3268,   },

		{   STR_ID_3269,   },

		{   STR_ID_3270,   },

		{   STR_ID_3271,   },

		{   STR_ID_3272,   },
		},
			    		  				 
		EVE = 
		{
			{
				STR_ID_3273,      
			},
		    { 
       			STR_ID_3274,        
			},
		    {
       			STR_ID_3275,                     
			},

		}, 

	},
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_BESMA_CANYON_HARD"],
	dungeonName 		= STR_ID_3249,
	dataFileName 		= "Dungeon_Besma_Dragon_Canyon_Hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= DUNGEON_ID["DI_BESMA_CANYON_NORMAL"],

	m_MinLevel			= 23,
	m_MaxLevel			= 25,
	
	m_NPCLevel			= 24,
	
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_BESMA_DRAGON_ROAD_CANYON_STAGE4"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_BESMA_Dragon_Canyon1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_BESMA_Dragon_Canyon2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.

}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_BESMA_CANYON_EXPERT"],
	dungeonName 		= STR_ID_3249,
	dataFileName 		= "Dungeon_Besma_Dragon_Canyon_Expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= DUNGEON_ID["DI_BESMA_CANYON_HARD"],

	m_MinLevel			= 23,
	m_MaxLevel			= 25,
	
	m_NPCLevel			= 25,
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_BESMA_DRAGON_ROAD_CANYON_STAGE4"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_BESMA_Dragon_Canyon1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_BESMA_Dragon_Canyon2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
}
--]]
-------------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_BESMA_DRAGON_NEST_NORMAL"],
	dungeonName 		= STR_ID_3276,
	dataFileName 		= "Dungeon_Besma_Dragon_Nest_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

	--requireDungeonID	= DUNGEON_ID["DI_BESMA_LAKE_NIGHT_NORMAL"],
	
	EXTRA_REQUIRE_DUNGEON_ID =
				{
					DUNGEON_ID["DI_BESMA_DRAGON_ROAD_NORMAL"],
					DUNGEON_ID["DI_BESMA_LAKE_NORMAL"],
					DUNGEON_ID["DI_BESMA_LAKE_NIGHT_NORMAL"],
				},

	m_MinLevel			= 25,
	m_MaxLevel			= 27,
	
	m_RequireItemLevel     = 15,
	
	m_NPCLevel			= 25,
	
	m_DungeonDescription = STR_ID_19937,

	--m_TextureName			= "DLG_New_Dungeon_Image4.dds",
	--m_PieceName			= "Dungeon_Image_Dragon_Nest",

	m_TextureName	= "DLG_UI_Dungeon_Image03.dds",
	m_PieceName		= "DUNGEON_IMAGE_DRAGON_NEST",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_BESMA_DRAGON_NEST_STAGE4"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_BESMA_Dragon_Nest1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_BESMA_Dragon_Nest2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.


	--m_Explanation			= STR_ID_3277,

	m_LocalStarPosX	= 395,
	m_LocalStarPosY	= 658,
	--m_LocalStarPosX	= 320,
	--m_LocalStarPosY	= 645,
	
	BOSS_DROP_ITEM =
	{
		ELSWORD 	= 	{	113830,},
		AISHA 		= 	{	113831,},
		RENA 		= 	{	30203, 113832,},
		RAVEN		= 	{	113833,},
		EVE 		= 	{	113834,},
		CHUNG 		= 	{	113835,},
		ARA 		= 	{	113836,},
		--ELESIS		= 	{	113837,},
		
	},
	
	AUTO_DUNGEON_ROOM_TITLE =
	{
		
		STR_ID_3199,
		STR_ID_3251, 
		STR_ID_3278,
		STR_ID_3279, 
	},
	
		
	ENDING_SPEECH0 = 
	{
	
	
			
		ELSWORD = {

		{   STR_ID_3280,   },

		{   STR_ID_3281,   },

		{   STR_ID_3282, },

		{   STR_ID_3283, },

		{   STR_ID_3284,   },
		},

		AISHA = { 

		{   STR_ID_3285,   },

		{   STR_ID_3286,   },

		{   STR_ID_3287,   },

		{   STR_ID_3288, },

		{   STR_ID_3289, },
		},

		RENA = { 

		{   STR_ID_3290,   },

		{   STR_ID_3291, },

		{   STR_ID_3292,   },

		{   STR_ID_3293, },

		{   STR_ID_3294,   },

		},

		RAVEN = { 

		{   STR_ID_3295, },

		{   STR_ID_3296, },

		{   STR_ID_3297, },

		{   STR_ID_3298,   },

		{   STR_ID_3299, },
		},
					    		  				 
		EVE = 
		{
			{
				STR_ID_3300,      
			},
		    { 
       			STR_ID_3301,        
			},
		    {
       			STR_ID_3302,                     
			},
		}, 
		
		CHUNG = { 

		{   STR_ID_9930, },

		{   STR_ID_9931, },

		{   STR_ID_9932, },

		{   STR_ID_9933, },
		},
		
		ARA =  { 

		{   STR_ID_21390,   },

		{   STR_ID_21391,  },

		{   STR_ID_21392,   },

		},
	},

}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_BESMA_DRAGON_NEST_HARD"],
	dungeonName 		= STR_ID_3276,
	dataFileName 		= "Dungeon_Besma_Dragon_Nest_Hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= DUNGEON_ID["DI_BESMA_DRAGON_NEST_NORMAL"],

	m_MinLevel			= 25,
	m_MaxLevel			= 27,
	
	m_RequireItemLevel     = 15,
	
	m_NPCLevel			= 26,
	
	m_DungeonDescription = STR_ID_19937,
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_BESMA_DRAGON_NEST_STAGE4"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_BESMA_Dragon_Nest1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_BESMA_Dragon_Nest2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		ELSWORD 	= 	{	113830,},
		AISHA 		= 	{	113831,},
		RENA 		= 	{	30203, 113832,},
		RAVEN		= 	{	113833,},
		EVE 		= 	{	113834,},
		CHUNG 		= 	{	113835,},
		ARA 		= 	{	113836,},
		--ELESIS		= 	{	113837,},
	},

}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_BESMA_DRAGON_NEST_EXPERT"],
	dungeonName 		= STR_ID_3276,
	dataFileName 		= "Dungeon_Besma_Dragon_Nest_Expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= DUNGEON_ID["DI_BESMA_DRAGON_NEST_HARD"],

	m_MinLevel			= 25,
	m_MaxLevel			= 27,
	
	m_RequireItemLevel     = 15,
	
	m_NPCLevel			= 27,
	
	m_DungeonDescription = STR_ID_19937,
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_BESMA_DRAGON_NEST_STAGE4"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_BESMA_Dragon_Nest1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_BESMA_Dragon_Nest2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{ 	30171, },
		ELSWORD 	= 	{	113830,},
		AISHA 		= 	{	113831,},
		RENA 		= 	{	30203, 113832,},
		RAVEN		= 	{	113833,},
		EVE 		= 	{	30236, 113834,},
		CHUNG 		= 	{	113835,},
		ARA 		= 	{	113836,},
		--ELESIS		= 	{	113837,},
	},
}




-------------------------------------------------------------------------------광산입구 삭제
--[[
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_BESMA_MINE_NORMAL"],
	dungeonName 		= STR_ID_3303,
	dataFileName 		= "Dungeon_Besma_Mine_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

	requireDungeonID	= DUNGEON_ID["DI_BESMA_DRAGON_NEST_NORMAL"],

	m_MinLevel			= 25,
	m_MaxLevel			= 27,
	
	m_NPCLevel			= 25,

	--m_TextureName			= "DLG_New_Dungeon_Image4.dds",
	--m_PieceName			= "Dungeon_Image_Besma_Coal",



	m_TextureName	= "DLG_UI_Dungeon_Image03.dds",
	m_PieceName		= "DUNGEON_IMAGE_BESMA_COAL",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_BESMA_MINE_STAGE4"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_BESMA_Mine1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_BESMA_Mine2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.


	--m_Explanation			= STR_ID_3304,


	m_LocalStarPosX	= 894,
	m_LocalStarPosY	= 464,
	
	
	AUTO_DUNGEON_ROOM_TITLE =
	{
		
		STR_ID_3305,
		STR_ID_3306, 
	},
	
	
	
		
	ENDING_SPEECH0 = 
	{
	
			
			
		ELSWORD = {

		{   STR_ID_3307,   },

		{   STR_ID_3308, },

		{   STR_ID_3309,   },

		{   STR_ID_3310,   },

		{   STR_ID_3311, },
		},
			


		AISHA = { 

		{   STR_ID_3312,   },

		{   STR_ID_3313, 

				STR_ID_3314, },

		{   STR_ID_3315,   },

		{   STR_ID_3316,   },

		{   STR_ID_3317, },
		},


		RENA = { 

		{   STR_ID_3318,   },

		{   STR_ID_3319,   },

		{   STR_ID_3320,   },

		{   STR_ID_3321, },

		{   STR_ID_3322, },

		},

		RAVEN = { 

		{   STR_ID_3323,   },

		{   STR_ID_3324,   },

		{   STR_ID_3325, },

		{   STR_ID_3326,   },

		{   STR_ID_3327,   },
		},
					    		  				 
		EVE = 
		{
			{
				STR_ID_3328,      
			},
		    { 
       			STR_ID_3329,        
			},
		    {
       			STR_ID_3330,                     
			},

		}, 
	
	},


}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_BESMA_MINE_HARD"],
	dungeonName 		= STR_ID_3303,
	dataFileName 		= "Dungeon_Besma_Mine_Hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= DUNGEON_ID["DI_BESMA_MINE_NORMAL"],

	m_MinLevel			= 25,
	m_MaxLevel			= 27,

    m_NPCLevel			= 26,
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_BESMA_MINE_STAGE4"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_BESMA_Mine1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_BESMA_Mine2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_BESMA_MINE_EXPERT"],
	dungeonName 		= STR_ID_3303,
	dataFileName 		= "Dungeon_Besma_Mine_Expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= DUNGEON_ID["DI_BESMA_MINE_HARD"],

	m_MinLevel			= 25,
	m_MaxLevel			= 27,
	
	m_NPCLevel			= 27,
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_BESMA_MINE_STAGE4"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_BESMA_Mine1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_BESMA_Mine2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
}

--]]


-------------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_BESMA_MINE2_NORMAL"],
	dungeonName 		= STR_ID_3331,
	dataFileName 		= "Dungeon_Besma_MINE2_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

	--requireDungeonID	= DUNGEON_ID["DI_BESMA_DRAGON_NEST_NORMAL"],
	
	EXTRA_REQUIRE_DUNGEON_ID =
				{
					DUNGEON_ID["DI_BESMA_DRAGON_ROAD_NORMAL"],
					DUNGEON_ID["DI_BESMA_LAKE_NORMAL"],
					DUNGEON_ID["DI_BESMA_LAKE_NIGHT_NORMAL"],
					DUNGEON_ID["DI_BESMA_DRAGON_NEST_NORMAL"],
				},

	m_MinLevel			= 27,
	m_MaxLevel			= 29,
	
	m_RequireItemLevel     = 17,
	
	m_NPCLevel			= 27,
	
	m_DungeonDescription = STR_ID_19938,


	--m_TextureName			= "DLG_New_Dungeon_Image4.dds",
	--m_PieceName			= "Dungeon_Image_Besma_Coal_Deep",


	m_TextureName	= "DLG_UI_Dungeon_Image03.dds",
	m_PieceName		= "DUNGEON_IMAGE_BESMA_COAL_DEEP",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_BESMA_MINE2_STAGE4"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_BESMA_Mine_Center1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_BESMA_Mine_Center2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.



	--m_Explanation			= STR_ID_3332,


	m_LocalStarPosX	= 775,
	m_LocalStarPosY	= 368,
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{ 	113940, },
		AISHA 		= 	{	30204, },
	},
	
	AUTO_DUNGEON_ROOM_TITLE =
	{
		
		STR_ID_3305,
		STR_ID_3306, 
	},
	
		
	ENDING_SPEECH0 = 
	{
			
		ELSWORD = {

		{   STR_ID_3333,   },

		{   STR_ID_3334,   },

		{   STR_ID_3335,   },

		{   STR_ID_3336,   },

		{   STR_ID_3337,   },
		},

		AISHA = { 

		{   STR_ID_3338,   },

		{   STR_ID_3339, },

		{   STR_ID_3340, },

		{   STR_ID_3341, },

		{   STR_ID_3342, },
		},

		RENA = { 

		{   STR_ID_3343,   },

		{   STR_ID_3344, },

		{   STR_ID_3345,   },

		{   STR_ID_3346, },

		{   STR_ID_3347, },
		},

		RAVEN = { 

		{   STR_ID_3348,   },
		    
		{   STR_ID_3349,   },

		{   STR_ID_3350, },

		{   STR_ID_3351, },

		{   STR_ID_3352, },
		},
					    		  				 
		EVE = 
		{
			{
				STR_ID_3353,      
			},
		    { 
       			STR_ID_3354,        
			},
		}, 
		
		CHUNG = { 

		{   STR_ID_9934, },

		{   STR_ID_9935, },

		{   STR_ID_9936, },

		},
		
		ARA =  
		{ 

		{   STR_ID_21393,   },

		{   STR_ID_21394,  },

		{   STR_ID_21395,   },

		},
	},

}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_BESMA_MINE2_HARD"],
	dungeonName 		= STR_ID_3331,
	dataFileName 		= "Dungeon_Besma_MINE2_Hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= DUNGEON_ID["DI_BESMA_MINE2_NORMAL"],

	m_MinLevel			= 27,
	m_MaxLevel			= 29,
	
	m_RequireItemLevel     = 17,
	
	m_NPCLevel			= 28,
	
	m_DungeonDescription = STR_ID_19938,
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_BESMA_MINE2_STAGE4"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_BESMA_Mine_Center1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_BESMA_Mine_Center2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{ 	113940, },
		ELSWORD 	= 	{	30158, },
		AISHA 		= 	{	30204, },
	},
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_BESMA_MINE2_EXPERT"],
	dungeonName 		= STR_ID_3331,
	dataFileName 		= "Dungeon_Besma_MINE2_Expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= DUNGEON_ID["DI_BESMA_MINE2_HARD"],

	m_MinLevel			= 27,
	m_MaxLevel			= 29,
	
	m_RequireItemLevel     = 17,
	
	m_NPCLevel			= 29,
	
	m_DungeonDescription = STR_ID_19938,
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_BESMA_MINE2_STAGE4"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_BESMA_Mine_Center1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_BESMA_Mine_Center2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{ 	113940, },
		ELSWORD 	= 	{	30158, },
		AISHA 		= 	{	30204, },
	},
}



-------------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_BESMA_AIRSHIP_NORMAL"],
	dungeonName 		= STR_ID_3355,
	dataFileName 		= "Dungeon_Besma_Air_Ship_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

	--requireDungeonID	= DUNGEON_ID["DI_BESMA_MINE2_NORMAL"],
	
	EXTRA_REQUIRE_DUNGEON_ID =
				{
					DUNGEON_ID["DI_BESMA_DRAGON_ROAD_NORMAL"],
					DUNGEON_ID["DI_BESMA_LAKE_NORMAL"],
					DUNGEON_ID["DI_BESMA_LAKE_NIGHT_NORMAL"],
					DUNGEON_ID["DI_BESMA_DRAGON_NEST_NORMAL"],
					DUNGEON_ID["DI_BESMA_MINE2_NORMAL"],
				},

	m_MinLevel			= 29,
	m_MaxLevel			= 31,
	
	m_RequireItemLevel     = 19,
	
	m_NPCLevel			= 29,
	
	m_DungeonDescription = STR_ID_19939,


	--m_TextureName			= "DLG_New_Dungeon_Image4.dds",
	--m_PieceName			= "Dungeon_Image_Sky_Ship",
	
	
	m_TextureName	= "DLG_UI_Dungeon_Image03.dds",
	m_PieceName		= "DUNGEON_IMAGE_SKY_SHIP",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_BESMA_AIRSHIP_STAGE5"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_BESMA_Air_Ship1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_BESMA_Air_Ship2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.




	--m_Explanation			= STR_ID_3356,

	m_LocalStarPosX	= 586,
	m_LocalStarPosY	= 272,

	m_PopUpOffsetPosX = -20,
	m_PopUpOffsetPosY = 13,
	
	BOSS_DROP_ITEM =
	{
		--COMMON		= 	{ 	30227, },
		ELSWORD 	= 	{	113930,},
		AISHA 		= 	{	113931,},
		RENA 		= 	{	113932,},
		RAVEN		= 	{	113933,},
		EVE 		= 	{	113934,},
		CHUNG 		= 	{	113935,},
		ARA			= 	{	113936,},
		--ELESIS		= 	{	113937,},
	},
	
	AUTO_DUNGEON_ROOM_TITLE =
	{
		
		STR_ID_3305,
		STR_ID_3306,
		STR_ID_3357, 
	},
	
		
	ENDING_SPEECH0 = 
	{
			
			
		ELSWORD = {

		{   STR_ID_3358,   },

		{   STR_ID_3359,   },

		{   STR_ID_3360, },

		{   STR_ID_3361,   },

		{   STR_ID_3362, },
		},


		    

		AISHA = { 

		{   STR_ID_3363, },

		{   STR_ID_3364, },

		{   STR_ID_3365, },

		{   STR_ID_3366, },

		{   STR_ID_3367, },
		},

		RENA = { 

		{   STR_ID_3368,   },

		{   STR_ID_3369, },

		{   STR_ID_3370, },

		{   STR_ID_3371, },

		{   STR_ID_3372, },
		},

		RAVEN = { 

		{   STR_ID_3373,   },

		{   STR_ID_3374, },

		{   STR_ID_3375,   },

		{   STR_ID_3376,   },

		{   STR_ID_3377, },		  
		},
							    		  				 
		EVE = 
		{
		    {
				STR_ID_3378,      
			},
		    { 
       			STR_ID_3379,        
			},
		    { 
       			STR_ID_3380,        
			},
	    },
		CHUNG = { 

		{   STR_ID_9937, },

		{   STR_ID_9938, },

		{   STR_ID_9939, },

		{   STR_ID_9940, },
		},
		
		ARA =  
		{ 

		{   STR_ID_21396,   },

		{   STR_ID_21397,  },

		{   STR_ID_21398,   },

		},
	},


}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_BESMA_AIRSHIP_HARD"],
	dungeonName 		= STR_ID_3355,
	dataFileName 		= "Dungeon_Besma_Air_Ship_Hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= DUNGEON_ID["DI_BESMA_AIRSHIP_NORMAL"],

	m_MinLevel			= 29,
	m_MaxLevel			= 31,
	
	m_RequireItemLevel     = 19,
	
	m_NPCLevel			= 30,
	
	m_DungeonDescription = STR_ID_19939,
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_BESMA_AIRSHIP_STAGE5"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_BESMA_Air_Ship1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_BESMA_Air_Ship2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		ELSWORD 	= 	{	113930,},
		AISHA 		= 	{	113931,},
		RENA 		= 	{	113932,},
		RAVEN		= 	{	30227, 113933,},
		EVE 		= 	{	113934,},
		CHUNG 		= 	{	113935,},
		ARA			= 	{	113936,},
		--ELESIS		= 	{	113937,},
	},
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_BESMA_AIRSHIP_EXPERT"],
	dungeonName 		= STR_ID_3355,
	dataFileName 		= "Dungeon_Besma_Air_Ship_Expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= DUNGEON_ID["DI_BESMA_AIRSHIP_HARD"],

	m_MinLevel			= 29,
	m_MaxLevel			= 31,
	
	m_RequireItemLevel     = 19,
	
	m_NPCLevel			= 31,
	
	m_DungeonDescription = STR_ID_19939,
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_BESMA_AIRSHIP_STAGE5"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_BESMA_Air_Ship1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_BESMA_Air_Ship2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		ELSWORD 	= 	{	113930,},
		AISHA 		= 	{	113931,},
		RENA 		= 	{	113932,},
		RAVEN		= 	{	30227, 113933,},
		EVE 		= 	{	113934,},
		CHUNG 		= 	{	113935,},
		ARA			= 	{	113936,},
		--ELESIS		= 	{	113937,},
	},
}

--------------------------------------------------------------------------------------

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ELDER_NEWYEAR_NORMAL"],
	dungeonName 		= STR_ID_3381,
	dataFileName 		= "Dungeon_Elder_NewYear_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],
	
	
	normalOnly			= TRUE,			-- 난이도는 '보통'만 선택할 수 있는 던전임을 표시
	

	requireItemID		= 130258,
	requireItemCount	= 1,
	requireDungeonID	= 0,

	m_MinLevel			= 5,
	m_MaxLevel			= 60,
	requireSpirit		= 5,    --임시 근성도
	
	m_RequireItemLevel     = 0,
	
	m_TextureName		= "DLG_New_Dungeon_Image7.dds",
	m_PieceName			= "DUNGEON_IMAGE_NEW_YEAR",

	--m_Explanation		= STR_ID_3382,
	
	ENDING_SPEECH0 =
	{

		ELSWORD = {

			{   STR_ID_3383, },
			
		},

		AISHA = {

			{   STR_ID_3384,   },

		},


		RENA = {

			{   STR_ID_3385,   },

		},


		RAVEN = {

			{   STR_ID_3386, },

		},

		EVE =
		{
		    {
				STR_ID_3387,
			},
	   },

	},
}

--[[ 월리성 새해잔치는 Normal 난이도만 있음
	g_pDungeonManager:AddDungeonData
	{
		dungeonID			= DUNGEON_ID["DI_ELDER_NEWYEAR_NORMAL"],
		dungeonName 		= STR_ID_3381,
		dataFileName 		= "Elder_NewYear_Hard.lua",
		difficulty			= DIFFICULTY_LEVEL["DL_HARD"],
		
		requireDungeonID	= DUNGEON_ID["DI_TEST1_DUNGEON_NORMAL"],

		requireDungeonID	= 0,

		m_MinLevel			= 0,
		m_MaxLevel			= 0,
	}

	g_pDungeonManager:AddDungeonData
	{
		dungeonID			= DUNGEON_ID["DI_ELDER_NEWYEAR_NORMAL"],
		dungeonName 		= STR_ID_3381,
		dataFileName 		= "Elder_NewYear_Expert.lua",
		difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],
		
		requireDungeonID	= DUNGEON_ID["DI_TEST1_DUNGEON_NORMAL"],

		requireDungeonID	= 0,

		m_MinLevel			= 0,
		m_MaxLevel			= 0,	
	}
--]]



g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_EVENT_KIDDAY_RUBEN"],
	dungeonName 		= STR_ID_3388,
	dataFileName 		= "Dungeon_Event_KidDay.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],


	normalOnly			= TRUE,			-- 난이도는 '보통'만 선택할 수 있는 던전임을 표시


	requireItemID		= 130598,
	requireItemCount	= 1,
	requireDungeonID	= 0,

	m_MinLevel			= 1,
	m_MaxLevel			= 60,
	requireSpirit		= 5,    --임시 근성도
	
	m_RequireItemLevel     = 0,
	
	m_fTimeLimit = 2400,

	m_TextureName		= "DLG_UI_Dungeon_Image05.dds",
	m_PieceName			= "WILLIAM_SPACE",
    m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_TRAINING_CENTER_FREESTAGE"],
    
	--m_Explanation		= STR_ID_3389,

	ENDING_SPEECH0 =
	{

		ELSWORD = {

			{   STR_ID_3390, },

		},

		AISHA = {

			{   STR_ID_3391, },

		},


		RENA = {

			{   STR_ID_3392, },

		},


		RAVEN = {

			{   STR_ID_3393, },

		},

		EVE =
		{

			{   STR_ID_3394, },
	   },

	},
}
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_EVENT_KIDDAY_ELDER"],
	dungeonName 		= STR_ID_3388,
	dataFileName 		= "Dungeon_Event_KidDay.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],


	normalOnly			= TRUE,			-- 난이도는 '보통'만 선택할 수 있는 던전임을 표시


	requireItemID		= 130598,
	requireItemCount	= 1,
	requireDungeonID	= 0,

	m_MinLevel			= 1,
	m_MaxLevel			= 50,
	requireSpirit		= 5,    --임시 근성도
	
	m_RequireItemLevel     = 0,
	
	m_fTimeLimit = 2400,

	m_TextureName		= "DLG_UI_Dungeon_Image05.dds",
	m_PieceName			= "WILLIAM_SPACE",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_TRAINING_CENTER_FREESTAGE"],

	--m_Explanation		= STR_ID_3389,

	ENDING_SPEECH0 =
	{

			ELSWORD = {

			{   STR_ID_3390, },

		},

		AISHA = {

			{   STR_ID_3391, },

		},


		RENA = {

			{   STR_ID_3392, },

		},


		RAVEN = {

			{   STR_ID_3393, },

		},

		EVE =
		{

			{   STR_ID_3394, },
	   },

	},
}
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_EVENT_KIDDAY_BESMA"],
	dungeonName 		= STR_ID_3388,
	dataFileName 		= "Dungeon_Event_KidDay.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],


	normalOnly			= TRUE,			-- 난이도는 '보통'만 선택할 수 있는 던전임을 표시


	requireItemID		= 130598,
	requireItemCount	= 1,
	requireDungeonID	= 0,

	m_MinLevel			= 1,
	m_MaxLevel			= 50,
	requireSpirit		= 5,    --임시 근성도
	
	m_RequireItemLevel     = 0,
	
	m_fTimeLimit = 2400,

	m_TextureName		= "DLG_UI_Dungeon_Image05.dds",
	m_PieceName			= "WILLIAM_SPACE",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_TRAINING_CENTER_FREESTAGE"],

	--m_Explanation		= STR_ID_3389,

	ENDING_SPEECH0 =
	{

			ELSWORD = {

			{   STR_ID_3390, },

		},

		AISHA = {

			{   STR_ID_3391, },

		},


		RENA = {

			{   STR_ID_3392, },

		},


		RAVEN = {

			{   STR_ID_3393, },

		},

		EVE =
		{

			{   STR_ID_3394, },
	   },

	},
}
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_EVENT_KIDDAY_ALTERA"],
	dungeonName 		= STR_ID_3388,
	dataFileName 		= "Dungeon_Event_KidDay.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],


	normalOnly			= TRUE,			-- 난이도는 '보통'만 선택할 수 있는 던전임을 표시


	requireItemID		= 130598,
	requireItemCount	= 1,
	requireDungeonID	= 0,

	m_MinLevel			= 1,
	m_MaxLevel			= 50,
	requireSpirit		= 5,    --임시 근성도
	
	m_RequireItemLevel     = 0,
	
	m_fTimeLimit = 2400,

	m_TextureName		= "DLG_UI_Dungeon_Image05.dds",
	m_PieceName			= "WILLIAM_SPACE",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_TRAINING_CENTER_FREESTAGE"],

	--m_Explanation		= STR_ID_3389,

	ENDING_SPEECH0 =
	{

			ELSWORD = {

			{   STR_ID_3390, },

		},

		AISHA = {

			{   STR_ID_3391, },

		},


		RENA = {

			{   STR_ID_3392, },

		},


		RAVEN = {

			{   STR_ID_3393, },

		},

		EVE =
		{

			{   STR_ID_3394, },
	   },

	},
}


---------------------------테스트용 던전 -------------------------- 

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_TEST_DUNGEON_NORMAL"],
	dungeonName 		= STR_ID_3395,
	dataFileName 		= "El_Tree_Main_Test.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

	requireLevel		= 0,
	requireDungeonID	= 0,

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	requireSpirit		= 5,    --임시 근성도
	
	m_RequireItemLevel     = 0,
	
	--m_TextureName			= "DLG_Common_Texture08.TGA",
	--m_PieceName			= "Dungeon_Image_Beginner_Forest",

	--m_Explanation			= STR_ID_3396,
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_TEST_DUNGEON_HARD"],
	dungeonName 		= STR_ID_3395,
	dataFileName 		= "El_Tree_Main_Test.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireLevel		= 0,
	requireDungeonID	= 0,

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_RequireItemLevel     = 0,
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_TEST_DUNGEON_EXPERT"],
	dungeonName 		= STR_ID_3395,
	dataFileName 		= "El_Tree_Main_Test.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireLevel		= 0,
	requireDungeonID	= 0,

	m_MinLevel			= 0,
	m_MaxLevel			= 0,	
	
	m_RequireItemLevel     = 0,
}











-------------------- 컨셉 테스트 던전 ---------------------------- 

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_TEST1_DUNGEON_NORMAL"],
	dungeonName 		= STR_ID_3397,
	dataFileName 		= "Dungeon_Concent_Test_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

	requireDungeonID	= 0,

	m_MinLevel			= 15,
	m_MaxLevel			= 15,
	requireSpirit		= 0,    --임시 근성도
	
	m_RequireItemLevel     = 0,
	
	--m_TextureName			= "DLG_Common_Texture08.TGA",
	--m_PieceName			= "Dungeon_Image_Beginner_Forest",

	--m_Explanation			= STR_ID_3398,
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_TEST1_DUNGEON_HARD"],
	dungeonName 		= STR_ID_3397,
	dataFileName 		= "Dungeon_Concent_Test_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= 0,

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_RequireItemLevel     = 0,
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_TEST1_DUNGEON_EXPERT"],
	dungeonName 		= STR_ID_3397,
	dataFileName 		= "Dungeon_Concent_Test_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= 0,

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_RequireItemLevel     = 0,
}







-------------------- 테스트 던전 2---------------------------- 
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_TEST2_DUNGEON_NORMAL"],
	dungeonName 		= STR_ID_3397,
	dataFileName 		= "dungeon_test2_dungeon_normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

	requireDungeonID	= 0,

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	requireSpirit		= 0,
	
	m_RequireItemLevel     = 0,
	
	--m_TextureName		= "DLG_Common_Texture08.TGA",
	--m_PieceName			= "Dungeon_Image_Beginner_Forest",

	--m_Explanation		= "^^",
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_TEST2_DUNGEON_HARD"],
	dungeonName 		= STR_ID_3397,
	dataFileName 		= "dungeon_test2_dungeon_hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= 0,

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_RequireItemLevel     = 0,
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_TEST2_DUNGEON_EXPERT"],
	dungeonName 		= STR_ID_3397,
	dataFileName 		= "dungeon_test2_dungeon_expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= 0,

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_RequireItemLevel     = 0,
}











-------------------- 테스트 던전 3---------------------------- 
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_TEST3_DUNGEON_NORMAL"],
	dungeonName 		= STR_ID_3397,
	dataFileName 		= "dungeon_test3_dungeon_normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

	requireDungeonID	= 0,

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	requireSpirit		= 0,
	
	m_RequireItemLevel     = 0,
	
	--m_TextureName		= "DLG_Common_Texture08.TGA",
	--m_PieceName			= "Dungeon_Image_Beginner_Forest",

	--m_Explanation		= "^^",
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_TEST3_DUNGEON_HARD"],
	dungeonName 		= STR_ID_3397,
	dataFileName 		= "dungeon_test3_dungeon_hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= 0,

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_RequireItemLevel     = 0,
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_TEST3_DUNGEON_EXPERT"],
	dungeonName 		= STR_ID_3397,
	dataFileName 		= "dungeon_test3_dungeon_expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= 0,

	m_MinLevel			= 0,
	m_MaxLevel			= 0,
	
	m_RequireItemLevel     = 0,
}














-------------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ALTERA_BATTLE_AIR_SHIP_NORMAL"],
	dungeonName 		= STR_ID_3399,
	dataFileName 		= "Dungeon_Altera_Battle_Air_Ship_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

	--requireDungeonID	= DUNGEON_ID["DI_BESMA_AIRSHIP_NORMAL"],
	
	--[[
	EXTRA_REQUIRE_DUNGEON_ID =
				{
					DUNGEON_ID["DI_BESMA_DRAGON_ROAD_NORMAL"],
					DUNGEON_ID["DI_BESMA_LAKE_NORMAL"],
					DUNGEON_ID["DI_BESMA_LAKE_NIGHT_NORMAL"],
					DUNGEON_ID["DI_BESMA_DRAGON_NEST_NORMAL"],
					DUNGEON_ID["DI_BESMA_MINE2_NORMAL"],
					DUNGEON_ID["DI_BESMA_AIRSHIP_NORMAL"],
				},
	--]]
	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 31,
	m_MaxLevel			= 33,
	
	m_RequireItemLevel     = 21,
	
	m_NPCLevel			= 31,

	--m_TextureName		= "DLG_New_Dungeon_Image5.dds",
	--m_PieceName			= "Dungeon_Image_BattelShip",
	
	m_DungeonDescription = STR_ID_19940,

	
	m_TextureName	= "DLG_UI_Dungeon_Image04.dds",
	m_PieceName		= "DUNGEON_IMAGE_BATTELSHIP",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_ALTERA_BATTLE_AIR_SHIP_STAGE6"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_ALTERA_Battle_Air_Ship1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_ALTERA_Battle_Air_Ship2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.




	--m_Explanation		= STR_ID_3400,

	m_LocalStarPosX	= 123,
	m_LocalStarPosY	= 302,

	m_PopUpOffsetPosX = 0,
	m_PopUpOffsetPosY = 0,
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{ 	30172, 114050, },
		--ELESIS		= 	{ 	30277, },
	},



	AUTO_DUNGEON_ROOM_TITLE =
	{

		STR_ID_3357,
		STR_ID_3401, 
	},
	
	
			
	ENDING_SPEECH0 = 
	{
			
		ELSWORD = {

			{   STR_ID_3402, },

			{   STR_ID_3403,   },

			{   STR_ID_3404, },
		},

		AISHA = {

			{   STR_ID_3405,   },

			{   STR_ID_3406,   },

			{   STR_ID_3407, },
		},
		  

		RENA = {

			{   STR_ID_3408,   },

			{   STR_ID_3409,   },

			{   STR_ID_3410,   },
		},
		  

		RAVEN = {

			{   STR_ID_3411, },

			{   STR_ID_3412,   },

			{   STR_ID_3413,   },
		},
								    		  				 
		EVE = 
		{
		    {
				STR_ID_3414,      
			},
		    { 
       			STR_ID_3415,        
			},
		    {
       			STR_ID_3416,
			},
	   },
		
		CHUNG = { 

		{   STR_ID_9945, },

		{   STR_ID_9946, },

		{   STR_ID_9947, },

		},
		
		ARA = 
		{ 

		{  STR_ID_21399, },

		{   STR_ID_21400, },

		{   STR_ID_21401, },

		},
	},		
}


g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ALTERA_BATTLE_AIR_SHIP_HARD"],
	dungeonName 		= STR_ID_3399,
	dataFileName 		= "Dungeon_Altera_Battle_Air_Ship_Hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= DUNGEON_ID["DI_ALTERA_BATTLE_AIR_SHIP_NORMAL"],

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 31,
	m_MaxLevel			= 33,
	
	m_RequireItemLevel     = 21,
	
	m_NPCLevel			= 32,
	
	m_DungeonDescription = STR_ID_19940,
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_ALTERA_BATTLE_AIR_SHIP_STAGE6"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_ALTERA_Battle_Air_Ship1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_ALTERA_Battle_Air_Ship2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{ 	30172, 114050, },
		--ELESIS		= 	{ 	30277, },
	},
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ALTERA_BATTLE_AIR_SHIP_EXPERT"],
	dungeonName 		= STR_ID_3399,
	dataFileName 		= "Dungeon_Altera_Battle_Air_Ship_Expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= DUNGEON_ID["DI_ALTERA_BATTLE_AIR_SHIP_HARD"],

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 31,
	m_MaxLevel			= 33,
	
	m_RequireItemLevel     = 21,
	
	m_NPCLevel			= 33,
	
	m_DungeonDescription = STR_ID_19940,
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_ALTERA_BATTLE_AIR_SHIP_STAGE6"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_ALTERA_Battle_Air_Ship1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_ALTERA_Battle_Air_Ship2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{ 	30172, 114050, },
		--ELESIS		= 	{ 	30277, },
	},
}




-------------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ALTERA_PLAIN_RECYCLE_NORMAL"],
	dungeonName 		= STR_ID_3417,
	dataFileName 		= "Dungeon_Altera_Plain_Recycle_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

	--requireDungeonID	= DUNGEON_ID["DI_ALTERA_BATTLE_AIR_SHIP_NORMAL"],
	
	EXTRA_REQUIRE_DUNGEON_ID =
				{
					DUNGEON_ID["DI_ALTERA_BATTLE_AIR_SHIP_NORMAL"],
				},

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 32,
	m_MaxLevel			= 34,
	
	m_RequireItemLevel     = 22,
	
	m_NPCLevel			= 32,
	
	m_DungeonDescription = STR_ID_19941,

	--m_TextureName		= "DLG_New_Dungeon_Image5.dds",
	--m_PieceName			= "Dungeon_Image_Plain_Recycle",
	
	
	m_TextureName	= "DLG_UI_Dungeon_Image04.dds",
	m_PieceName		= "DUNGEON_IMAGE_PLAIN_RECYCLE",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_ALTERA_PLAIN_RECYCLE_STAGE3"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_ALTERA_Plain_Recycle1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_ALTERA_Plain_Recycle2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.




	--m_Explanation		= STR_ID_3418,

	m_LocalStarPosX	= 288,
	m_LocalStarPosY	= 448,

	m_PopUpOffsetPosX = 0,
	m_PopUpOffsetPosY = 0,
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{ 	114040, },
		ELSWORD 	= 	{	30159,},
		ARA			= 	{	30239,},
	},

	AUTO_DUNGEON_ROOM_TITLE =
	{
		
		STR_ID_3419,
		STR_ID_3420,
		STR_ID_3401, 
	},
	
	
			
	ENDING_SPEECH0 = 
	{
	
			
		ELSWORD = {

		{   STR_ID_3421, },

		{   STR_ID_3422,   },

		{   STR_ID_3423,   },
		},
		  

		AISHA = {

		{   STR_ID_3424,   },

		{   STR_ID_3425,   },

		{   STR_ID_3426,   },
		},
		  

		RENA = {

		{   STR_ID_3427,   },

		{   STR_ID_3428,   },

		{   STR_ID_3429,   
			STR_ID_3430, },
		},
		    

		RAVEN = {

		{   STR_ID_3431, },

		{   STR_ID_3432, },

		{   STR_ID_3433,   },
		}, 
								    		  				 
		EVE = 
		{
		    {
				STR_ID_3434,      
			},
		    { 
       			STR_ID_3435,        
			},
		    { 
       			STR_ID_3436,        
			},
		    { 
       			STR_ID_3437,        
			},
	    },
		
		CHUNG = { 

		{   STR_ID_9948, },

		{   STR_ID_9949, },

		{   STR_ID_9950, },

		},
		
		ARA = 
		{ 

		{   STR_ID_21402, },

		{   STR_ID_21403, },

		{   STR_ID_21404, },

		},
	},
}


g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ALTERA_PLAIN_RECYCLE_HARD"],
	dungeonName 		= STR_ID_3417,
	dataFileName 		= "Dungeon_Altera_Plain_Recycle_Hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= DUNGEON_ID["DI_ALTERA_PLAIN_RECYCLE_NORMAL"],

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 32,
	m_MaxLevel			= 34,
	
	m_RequireItemLevel     = 22,
	
	m_NPCLevel			= 33,
	
	m_DungeonDescription = STR_ID_19941,
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_ALTERA_PLAIN_RECYCLE_STAGE3"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_ALTERA_Plain_Recycle1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_ALTERA_Plain_Recycle2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{ 	114040, },
		ELSWORD 	= 	{	30159,},
		ARA			= 	{	30239,},
	},
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ALTERA_PLAIN_RECYCLE_EXPERT"],
	dungeonName 		= STR_ID_3417,
	dataFileName 		= "Dungeon_Altera_Plain_Recycle_Expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= DUNGEON_ID["DI_ALTERA_PLAIN_RECYCLE_HARD"],

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 32,
	m_MaxLevel			= 34,
	
	m_RequireItemLevel     = 22,
	
	m_NPCLevel			= 34,
	
	m_DungeonDescription = STR_ID_19941,
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_ALTERA_PLAIN_RECYCLE_STAGE3"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_ALTERA_Plain_Recycle1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_ALTERA_Plain_Recycle2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{ 	114040, },
		ELSWORD 	= 	{	30159,},
		ARA			= 	{	30239,},
	},
}

-------------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ALTERA_BELOW_TUNNEL_NORMAL"],
	dungeonName 		= STR_ID_3438,
	dataFileName 		= "Dungeon_Altera_Below_Tunnel_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

	--requireDungeonID	= DUNGEON_ID["DI_ALTERA_PLAIN_RECYCLE_NORMAL"],
	
	EXTRA_REQUIRE_DUNGEON_ID =
				{
					DUNGEON_ID["DI_ALTERA_BATTLE_AIR_SHIP_NORMAL"],
					DUNGEON_ID["DI_ALTERA_PLAIN_RECYCLE_NORMAL"],
				},

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 33,
	m_MaxLevel			= 35,
	
	m_RequireItemLevel     = 23,
	
	m_NPCLevel			= 33,
	
	m_DungeonDescription = STR_ID_19942,

	
	--m_TextureName		= "DLG_New_Dungeon_Image6.dds",
	--m_PieceName			= "Dungeon_Image_Below_Tunnel",
		
	
	m_TextureName	= "DLG_UI_Dungeon_Image04.dds",
	m_PieceName		= "DUNGEON_IMAGE_BELOW_TUNNEL",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_ALTERA_BELOW_TUNNEL_STAGE4"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_ALTERA_Below_Tunnel1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_ALTERA_Below_Tunnel2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.



	m_LocalStarPosX	= 496 - 9,
	m_LocalStarPosY	= 494,

	--m_Explanation		= STR_ID_3439,

	m_PopUpOffsetPosX = 0,
	m_PopUpOffsetPosY = 0,
	
	BOSS_DROP_ITEM =
	{
		ELSWORD 	= 	{	114030,},
		AISHA 		= 	{	114031,},
		RENA 		= 	{	30205, 114032,},
		RAVEN		= 	{	114033,},
		EVE 		= 	{	114034,},
		CHUNG 		= 	{	114035,},
		ARA 		= 	{	114036,},
		--ELESIS		= 	{	114037,},
	},
	
	AUTO_DUNGEON_ROOM_TITLE =
	{
		
		STR_ID_3440,
		STR_ID_3420,
		STR_ID_3401,
		STR_ID_3441, 
	},
	
	
	
	
			
	ENDING_SPEECH0 = 
	{
		
			
		ELSWORD = {

		{   STR_ID_3442,   },

		{   STR_ID_3443,   },

		{   STR_ID_3444,   },
		},
		  

		AISHA = {

		{   STR_ID_3445,   },

		{   STR_ID_3446, },

		{   STR_ID_3447,   },
		},
		  

		RENA = {

		{   STR_ID_3448,   },

		{   STR_ID_3449,   },

		{   STR_ID_3450, },
		},
		  

		RAVEN = {

		{   STR_ID_3451,   },

		{   STR_ID_3452,   },

		{   STR_ID_3453, },
		},
										    		  				 
		EVE = 
		{
		    {
				STR_ID_3454,      
			},
		    { 
       			STR_ID_3455,        
			},
	    },  
		
		CHUNG = { 

		{   STR_ID_9951, },

		{   STR_ID_9952, },

		{   STR_ID_9953, },

		},
		
		ARA = 
		{ 
		
		{   STR_ID_21408, },

		{   STR_ID_21405, },

		{   STR_ID_21406, },

		{   STR_ID_21407, },

		},
	},
}


g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ALTERA_BELOW_TUNNEL_HARD"],
	dungeonName 		= STR_ID_3438,
	dataFileName 		= "Dungeon_Altera_Below_Tunnel_Hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= DUNGEON_ID["DI_ALTERA_BELOW_TUNNEL_NORMAL"],
	
	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES	

	m_MinLevel			= 33,
	m_MaxLevel			= 35,
	
	m_RequireItemLevel     = 23,
	
	m_NPCLevel			= 34,
	
	m_DungeonDescription = STR_ID_19942,
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_ALTERA_BELOW_TUNNEL_STAGE4"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_ALTERA_Below_Tunnel1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_ALTERA_Below_Tunnel2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.

	BOSS_DROP_ITEM =
	{
		ELSWORD 	= 	{	114030,},
		AISHA 		= 	{	114031,},
		RENA 		= 	{	30205, 114032,},
		RAVEN		= 	{	114033,},
		EVE 		= 	{	114034,},
		CHUNG 		= 	{	114035,},
		ARA 		= 	{	114036,},
		--ELESIS		= 	{	114037,},
	},
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ALTERA_BELOW_TUNNEL_EXPERT"],
	dungeonName 		= STR_ID_3438,
	dataFileName 		= "Dungeon_Altera_Below_Tunnel_Expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],


	requireDungeonID	= DUNGEON_ID["DI_ALTERA_BELOW_TUNNEL_HARD"],
	
	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES	

	m_MinLevel			= 33,
	m_MaxLevel			= 35,
	
	m_RequireItemLevel     = 23,
	
	m_NPCLevel			= 35,
	
	m_DungeonDescription = STR_ID_19942,
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_ALTERA_BELOW_TUNNEL_STAGE4"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_ALTERA_Below_Tunnel1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_ALTERA_Below_Tunnel2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		ELSWORD 	= 	{	114030,},
		AISHA 		= 	{	114031,},
		RENA 		= 	{	30205, 114032,},
		RAVEN		= 	{	114033,},
		EVE 		= 	{	114034,},
		CHUNG 		= 	{	114035,},
		ARA 		= 	{	114036,},
		--ELESIS		= 	{	114037,},
	},
}

-------------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ALTERA_PLAIN_NORMAL"],
	dungeonName 		= STR_ID_3456,
	dataFileName 		= "Dungeon_Altera_Plain_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

	--requireDungeonID	= DUNGEON_ID["DI_ALTERA_BELOW_TUNNEL_NORMAL"],
	
	EXTRA_REQUIRE_DUNGEON_ID =
				{
					DUNGEON_ID["DI_ALTERA_BATTLE_AIR_SHIP_NORMAL"],
					DUNGEON_ID["DI_ALTERA_PLAIN_RECYCLE_NORMAL"],
					DUNGEON_ID["DI_ALTERA_BELOW_TUNNEL_NORMAL"],
				},

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 34,
	m_MaxLevel			= 36,
	
	m_RequireItemLevel     = 24,
	
	m_NPCLevel			= 34,
	
	m_DungeonDescription =STR_ID_19943,

	--m_TextureName		= "DLG_New_Dungeon_Image6.dds",
	--m_PieceName			= "Dungeon_Image_ALTERA_PLAIN",
	
	
	m_TextureName	= "DLG_UI_Dungeon_Image04.dds",
	m_PieceName		= "DUNGEON_IMAGE_ALTERA_PLAIN",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_ALTERA_PLAIN_STAGE3"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_ALTERA_Plain1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_ALTERA_Plain2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.



	m_LocalStarPosX	= 688,
	m_LocalStarPosY	= 467,

	--m_Explanation		= STR_ID_3457,

	m_PopUpOffsetPosX = 0,
	m_PopUpOffsetPosY = 0,
	
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{ 	30173, 30174, 114150,},
		CHUNG 		= 	{	30229, },
	},
	
	AUTO_DUNGEON_ROOM_TITLE =
	{
		
		STR_ID_3458,
		STR_ID_3420,
		STR_ID_3401,
		STR_ID_3459, 
	},
	
	
	
			
	ENDING_SPEECH0 = 
	{
	
			
		ELSWORD = {

		{   STR_ID_3460, },

		{   STR_ID_3461,   },

		{   STR_ID_3462,   },
		},
		  

		AISHA = {

		{   STR_ID_3463,   },

		{   STR_ID_3464,   },

		{   STR_ID_3465,   },
		},
		  

		RENA = {

		{   STR_ID_3466,   },

		{   STR_ID_3467,   },

		{   STR_ID_3468,   },
		},
		  

		RAVEN = {

		{   STR_ID_3469, },

		{   STR_ID_3470,   },

		{   STR_ID_3471,   },
		},
											    		  				 
		EVE = 
		{
		    {
				STR_ID_3472,      
			},
		    { 
       			STR_ID_3473,        
			},
	    },  
		
		CHUNG = { 

		{   STR_ID_9955, },

		{   STR_ID_9954, },

		{   STR_ID_9956, },

		},
		
		ARA = 
		{ 



		{   STR_ID_21409, },

		{   STR_ID_21410, },

		},
	},
	
}


g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ALTERA_PLAIN_HARD"],
	dungeonName 		= STR_ID_3456,
	dataFileName 		= "Dungeon_Altera_Plain_Hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= DUNGEON_ID["DI_ALTERA_PLAIN_NORMAL"],

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 34,
	m_MaxLevel			= 36,
	
	m_RequireItemLevel     = 24,
	
	m_NPCLevel			= 35,
	
	m_DungeonDescription = STR_ID_19943,

	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_ALTERA_PLAIN_STAGE3"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_ALTERA_Plain1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_ALTERA_Plain2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{ 	30173, 30174, 114150,},
		CHUNG 		= 	{	30229, },
	},
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ALTERA_PLAIN_EXPERT"],
	dungeonName 		= STR_ID_3456,
	dataFileName 		= "Dungeon_Altera_Plain_Expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= DUNGEON_ID["DI_ALTERA_PLAIN_HARD"],

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 34,
	m_MaxLevel			= 36,
	
	m_RequireItemLevel     = 24,
	
	m_NPCLevel			= 36,
	
	m_DungeonDescription = STR_ID_19943,
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_ALTERA_PLAIN_STAGE3"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_ALTERA_Plain1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_ALTERA_Plain2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{ 	30173, 30174, 114150,},
		CHUNG 		= 	{	30229, },
	},
}

-------------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ALTERA_NASOD_FACTORY_NORMAL"],
	dungeonName 		= STR_ID_3474,
	dataFileName 		= "Dungeon_Altera_Nasod_Factory_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

	--requireDungeonID	= DUNGEON_ID["DI_ALTERA_PLAIN_NORMAL"],
	
	EXTRA_REQUIRE_DUNGEON_ID =
				{
					DUNGEON_ID["DI_ALTERA_BATTLE_AIR_SHIP_NORMAL"],
					DUNGEON_ID["DI_ALTERA_PLAIN_RECYCLE_NORMAL"],
					DUNGEON_ID["DI_ALTERA_BELOW_TUNNEL_NORMAL"],
					DUNGEON_ID["DI_ALTERA_PLAIN_NORMAL"],
				},

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 35,
	m_MaxLevel			= 37,
	
	m_RequireItemLevel     = 25,
	
	m_NPCLevel			= 35,
	
	m_DungeonDescription = STR_ID_19944,

	--m_TextureName		= "DLG_New_Dungeon_Image6.dds",
	--m_PieceName			= "Dungeon_Image_NASOD_FACTORY",
	
	
	m_TextureName	= "DLG_UI_Dungeon_Image04.dds",
	m_PieceName		= "DUNGEON_IMAGE_NASOD_FACTORY",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_ALTERA_NASOD_FACTORY_BOSS"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_ALTERA_Nasod_Factory1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_ALTERA_Nasod_Factory2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.



	m_LocalStarPosX	= 780,
	m_LocalStarPosY	= 652,

	--m_Explanation		= STR_ID_3475,

	m_PopUpOffsetPosX = 0,
	m_PopUpOffsetPosY = 0,
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{ 	30206, 114160, 114140, },
	},
	
	
	AUTO_DUNGEON_ROOM_TITLE =
	{

		STR_ID_3420,
		STR_ID_3401,
		STR_ID_3459,
		STR_ID_3476, 
	},
	
	
	ENDING_SPEECH0 = 
	{
		ELSWORD = 
		{
	  		{ STR_ID_3477, },
	  		
	  		{ STR_ID_3478, },

	  		{ STR_ID_3479,	},

	  		{ STR_ID_3480, },

	  		{ STR_ID_3481, 
	  		  STR_ID_3482,			},
		},
		
		AISHA = 
		{
  			{ STR_ID_3483,	},

  			{ STR_ID_3484,		},

  			{ STR_ID_3485,		},

  			{ STR_ID_3486,	},

  			{ STR_ID_3487,	},
  		},

		RENA = 
		{
			{ STR_ID_3488,	},

			{ STR_ID_3489,	},

			{ STR_ID_3490,	},

			{ STR_ID_3491,		},

			{ STR_ID_3492,		 },
		},
		

		RAVEN = 
		{
			{ STR_ID_3493,			},

			{ STR_ID_3494,			},

			{ STR_ID_3495,		},

			{ STR_ID_3496,	},

			{ STR_ID_3497,			},
		},
													    		  				 
		EVE = 
		{
		    {
				STR_ID_3498,      
			},
		    { 
       			STR_ID_3499,        
			},
		    { 
       			STR_ID_3500,        
			},
	    },  
		
		CHUNG = { 

		{   STR_ID_9957, },

		{   STR_ID_9958, },

		{   STR_ID_9959, },

		},
		
		ARA = 
		{ 

		{  STR_ID_21411, },

		{  STR_ID_21412, },

		{   STR_ID_21413, },

		},
	},
}


g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ALTERA_NASOD_FACTORY_HARD"],
	dungeonName 		= STR_ID_3474,
	dataFileName 		= "Dungeon_Altera_Nasod_Factory_Hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= DUNGEON_ID["DI_ALTERA_NASOD_FACTORY_NORMAL"],

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 35,
	m_MaxLevel			= 37,
	
	m_RequireItemLevel     = 25,
	
	m_NPCLevel			= 36,
	
	m_DungeonDescription = STR_ID_19944,
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_ALTERA_NASOD_FACTORY_BOSS"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_ALTERA_Nasod_Factory1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_ALTERA_Nasod_Factory2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{ 	30206, 114160, 114140, },
	},
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ALTERA_NASOD_FACTORY_EXPERT"],
	dungeonName 		= STR_ID_3474,
	dataFileName 		= "Dungeon_Altera_Nasod_Factory_Expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= DUNGEON_ID["DI_ALTERA_NASOD_FACTORY_HARD"],

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 35,
	m_MaxLevel			= 37,
	
	m_RequireItemLevel     = 25,
	
	m_NPCLevel			= 37,
	
	m_DungeonDescription = STR_ID_19944,
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_ALTERA_NASOD_FACTORY_BOSS"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_ALTERA_Nasod_Factory1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_ALTERA_Nasod_Factory2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{ 	30206, 114160, 114140, },
	},
}


-------------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_BESMA_SECRET_NORMAL"],
	dungeonName 		= STR_ID_3501,
	dataFileName 		= "Dungeon_Besma_Secret_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

	requireDungeonID	= 0,	
	
		
	-- 비밀던전인 경우에 요렇게 설정해줘야합니다	
	IS_HELL_MODE = TRUE,	
	EXTRA_REQUIRE_DUNGEON_ID =
	{
		DUNGEON_ID["DI_BESMA_DRAGON_ROAD_EXPERT"],
	    DUNGEON_ID["DI_BESMA_LAKE_EXPERT"],
	    DUNGEON_ID["DI_BESMA_MINE_EXPERT"],
	    DUNGEON_ID["DI_BESMA_MINE2_EXPERT"],
	    DUNGEON_ID["DI_BESMA_AIRSHIP_EXPERT"],
	    DUNGEON_ID["DI_BESMA_LAKE_NIGHT_EXPERT"],
	    DUNGEON_ID["DI_BESMA_DRAGON_NEST_EXPERT"],
	},
	
	
	
	
	requireItemID		= 109992,
	requireItemCount	= 1,
	m_MinLevel			= 35,
	m_MaxLevel			= 40,
	
	m_RequireItemLevel     = 25,
	
	m_NPCLevel			= 35,


	
	
	m_TextureName	= "DLG_UI_Dungeon_Image06.dds",
	m_PieceName		= "DUNGEON_IMAGE_VESMA_SECRET",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_BESMA_SECRET_BOSS"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_BESMA_Secret1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_BESMA_Secret2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.



	--m_Explanation		= STR_ID_3502,

	m_LocalStarPosX	= 217,
	m_LocalStarPosY	= 389,
	--m_LocalStarPosX	= 115,
	--m_LocalStarPosY	= 642,
	
	
	
	ENDING_SPEECH0 = 
	{
			
		ELSWORD = {

		{    STR_ID_3503,    },

		{    STR_ID_3504,    },

		{    STR_ID_3505,    },

		{    STR_ID_3506,    },
		
		{    STR_ID_3507,    },
		},

		AISHA = {

		{    STR_ID_3508,    },

		{    STR_ID_3509,    },

		{    STR_ID_3510,    },

		{    STR_ID_3511,    },
		
		{    STR_ID_3512 ,    },
		},

		RENA = {

		{    STR_ID_3513,    },

		{    STR_ID_3514,    },

		{    STR_ID_3515,    },

		{    STR_ID_3516,    },
		
		{    STR_ID_3517,    },
		},

		RAVEN = {

		{    STR_ID_3518,    },

		{    STR_ID_3519,    },

		{    STR_ID_3520,    },

		{    STR_ID_3521,    },
		
		{    STR_ID_3522,    },
		},
  													    		  				 
		EVE = 
		{
		    {
				STR_ID_3523,      
			},
		    { 
       			STR_ID_3524,   
			},
		    { 
       			STR_ID_3525,   
			},
	    },  
	},
	
	
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_BESMA_SECRET_HARD"],
	dungeonName 		= STR_ID_3501,
	dataFileName 		= "Dungeon_Besma_Secret_Hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= DUNGEON_ID["DI_BESMA_SECRET_NORMAL"],
	
	
	-- 비밀던전인 경우에 요렇게 설정해줘야합니다	
	IS_HELL_MODE = TRUE,	
	EXTRA_REQUIRE_DUNGEON_ID =
	{
		DUNGEON_ID["DI_BESMA_DRAGON_ROAD_NORMAL"],
	    DUNGEON_ID["DI_BESMA_LAKE_NORMAL"],
	    DUNGEON_ID["DI_BESMA_MINE_NORMAL"],
	    DUNGEON_ID["DI_BESMA_MINE2_NORMAL"],
	    DUNGEON_ID["DI_BESMA_AIRSHIP_NORMAL"],	
	    DUNGEON_ID["DI_BESMA_LAKE_NIGHT_NORMAL"],
	    --DUNGEON_ID["DI_BESMA_CANYON_NORMAL"],
	    DUNGEON_ID["DI_BESMA_DRAGON_NEST_NORMAL"],
	},
	
	
	requireItemID		= 109992,
	requireItemCount	= 1,		

	m_MinLevel			= 35,
	m_MaxLevel			= 40,
	
	m_RequireItemLevel     = 25,
	
	m_NPCLevel			= 37,
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_BESMA_SECRET_BOSS"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_BESMA_Secret1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_BESMA_Secret2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.

}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_BESMA_SECRET_EXPERT"],
	dungeonName 		= STR_ID_3501,
	dataFileName 		= "Dungeon_Besma_Secret_Expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= DUNGEON_ID["DI_BESMA_SECRET_HARD"],
	
	
	-- 비밀던전인 경우에 요렇게 설정해줘야합니다	
	IS_HELL_MODE = TRUE,
	EXTRA_REQUIRE_DUNGEON_ID =
	{
		DUNGEON_ID["DI_BESMA_DRAGON_ROAD_NORMAL"],
	    DUNGEON_ID["DI_BESMA_LAKE_NORMAL"],
	    DUNGEON_ID["DI_BESMA_MINE_NORMAL"],
	    DUNGEON_ID["DI_BESMA_MINE2_NORMAL"],
	    DUNGEON_ID["DI_BESMA_AIRSHIP_NORMAL"],	
	    DUNGEON_ID["DI_BESMA_LAKE_NIGHT_NORMAL"],
	   -- DUNGEON_ID["DI_BESMA_CANYON_NORMAL"],
	    DUNGEON_ID["DI_BESMA_DRAGON_NEST_NORMAL"],
	},
	
	
	requireItemID		= 109992,
	requireItemCount	= 1,		

	m_MinLevel			= 35,
	m_MaxLevel			= 40,
	
	m_RequireItemLevel     = 25,
	
	m_NPCLevel			= 40,
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_BESMA_SECRET_BOSS"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_BESMA_Secret1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_BESMA_Secret2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
}



-------------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ALTERA_CORE_NORMAL"],
	dungeonName 		= STR_ID_3526,
	dataFileName 		= "Dungeon_Altera_Core_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

	--requireDungeonID	= 0,
	--requireDungeonID	= DUNGEON_ID["DI_ALTERA_NASOD_FACTORY_NORMAL"],
	
	EXTRA_REQUIRE_DUNGEON_ID =
				{
					DUNGEON_ID["DI_ALTERA_BATTLE_AIR_SHIP_NORMAL"],
					DUNGEON_ID["DI_ALTERA_PLAIN_RECYCLE_NORMAL"],
					DUNGEON_ID["DI_ALTERA_BELOW_TUNNEL_NORMAL"],
					DUNGEON_ID["DI_ALTERA_PLAIN_NORMAL"],
					DUNGEON_ID["DI_ALTERA_NASOD_FACTORY_NORMAL"],
				},

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES
	
	m_MinLevel			= 36,
	m_MaxLevel			= 38,
	
	m_RequireItemLevel     = 26,
	
	m_NPCLevel			= 36,
	
	m_DungeonDescription = STR_ID_19945,

	--m_TextureName		= "DLG_New_Dungeon_Image6.dds",		
	--m_PieceName			= "Dungeon_Image_Altera_Core",			
	
	
	m_TextureName	= "DLG_UI_Dungeon_Image04.dds",
	m_PieceName		= "DUNGEON_IMAGE_ALTERA_CORE",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_ALTERA_CORE_BOSS_STAGE"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_ALTERA_Core1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_ALTERA_Core2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.



	--m_Explanation		= STR_ID_3527,

	m_LocalStarPosX	= 499,
	m_LocalStarPosY	= 675,
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{ 	30175, 30173, 30174, 114150,  },
		ELSWORD 	= 	{	114130, },
		AISHA 		= 	{	114131, },
		RENA 		= 	{	114132, },
		RAVEN		= 	{	114133, },
		EVE 		= 	{	30207, 114134, },
		CHUNG 		= 	{	30229, 114135, },
		ARA 		= 	{	114136, },
		--ELESIS		= 	{	114137, },
	},

	AUTO_DUNGEON_ROOM_TITLE =
	{
		
		STR_ID_3528,
		STR_ID_3420,
		STR_ID_3401,
		STR_ID_3459,
		STR_ID_3529,
		STR_ID_3530,
		STR_ID_3531, 
		 
	},
	
	
	
	
	ENDING_SPEECH0 = 
	{
			
		ELSWORD = {

		{    STR_ID_3532,    },

		{    STR_ID_3533,    },

		{    STR_ID_3534,    },

		{    STR_ID_3535,    },
		},

		AISHA = {

		{    STR_ID_3536,    },

		{    STR_ID_3537,    },

		{    STR_ID_3538,    },

		{    STR_ID_3539,    },
		},

		RENA = {

		{    STR_ID_3540,    },

		{    STR_ID_3541,    },

		{    STR_ID_3542,    },

		{    STR_ID_3543,    },
		},

		RAVEN = {

		{    STR_ID_3544,    },

		{    STR_ID_3545,    },

		{    STR_ID_3546,    },
		
		{    STR_ID_3547,    },
		},
    													    		  				 
		EVE = 
		{
		    {
				STR_ID_3548,      
			},
		    { 
       			STR_ID_3549,        
			},
	    },  
		
		CHUNG = { 

		{   STR_ID_9960, },

		{   STR_ID_9961, },

		{   STR_ID_9962, },

		{   STR_ID_9963, },
		},
		
		ARA = 
		{ 

		{   STR_ID_21414, },

		{   STR_ID_21415, },

		{   STR_ID_21416, },
		},
	},
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ALTERA_CORE_HARD"],
	dungeonName 		= STR_ID_3526,
	dataFileName 		= "Dungeon_Altera_Core_Hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= DUNGEON_ID["DI_ALTERA_CORE_NORMAL"],
	
	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 36,
	m_MaxLevel			= 38,
	
	m_RequireItemLevel     = 26,
	
	m_NPCLevel			= 37,
	
	m_DungeonDescription = STR_ID_19945,
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_ALTERA_CORE_BOSS_STAGE"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_ALTERA_Core1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_ALTERA_Core2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.

	BOSS_DROP_ITEM =
	{
		COMMON		= 	{ 	30175, 30173, 30174, 114150,  },
		ELSWORD 	= 	{	114130, },
		AISHA 		= 	{	114131, },
		RENA 		= 	{	114132, },
		RAVEN		= 	{	114133, },
		EVE 		= 	{	30207, 114134, },
		CHUNG 		= 	{	30229, 114135, },
		ARA 		= 	{	114136, },
		--ELESIS		= 	{	114137, },
	},

}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ALTERA_CORE_EXPERT"],
	dungeonName 		= STR_ID_3526,
	dataFileName 		= "Dungeon_Altera_Core_Expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= DUNGEON_ID["DI_ALTERA_CORE_HARD"],
	
	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 36,
	m_MaxLevel			= 38,
	
	m_RequireItemLevel     = 26,
	
	m_NPCLevel			= 38,
	
	m_DungeonDescription = STR_ID_19945,
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_ALTERA_CORE_BOSS_STAGE"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_ALTERA_Core1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_ALTERA_Core2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{ 	30175, 30173, 30174, 30206, },
		ELSWORD 	= 	{	114130, },
		AISHA 		= 	{	114131, },
		RENA 		= 	{	114132, },
		RAVEN		= 	{	114133, },
		EVE 		= 	{	30207, 114134, },
		CHUNG 		= 	{	30229, 114135, },
		ARA 		= 	{	114136, },
		--ELESIS		= 	{	114137, },
	},
}

---운송터널 :  오염구역-----

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ALTERA_SECRET_NORMAL"],
	dungeonName 		= STR_ID_3550,
	dataFileName 		= "Dungeon_Altera_Secret_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],


	requireDungeonID	= 0,

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES	
	
	requireItemID		= 109994,
	requireItemCount	= 1,
	
	m_MinLevel			= 45,
	m_MaxLevel			= 50,
	
	m_RequireItemLevel     = 35,
	
	m_NPCLevel			= 45,
	
	m_fTimeLimit = 600,	
	
	-- 비밀던전인 경우에 요렇게 설정해줘야합니다
	IS_HELL_MODE = TRUE,
	EXTRA_REQUIRE_DUNGEON_ID =
	{
		DUNGEON_ID["DI_ALTERA_BATTLE_AIR_SHIP_EXPERT"],
		DUNGEON_ID["DI_ALTERA_PLAIN_RECYCLE_EXPERT"],
		DUNGEON_ID["DI_ALTERA_BELOW_TUNNEL_EXPERT"],
		DUNGEON_ID["DI_ALTERA_PLAIN_EXPERT"],		
		DUNGEON_ID["DI_ALTERA_NASOD_FACTORY_EXPERT"],
		DUNGEON_ID["DI_ALTERA_CORE_EXPERT"],		
	},

	
	

	m_TextureName		= "dlg_ui_dungeon_image04.dds",		
	m_PieceName			= "DUNGEON_IMAGE_ALTERA_SECRET",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_ALTERA_SECRET_BOSS"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_ALTERA_Secret1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_ALTERA_Secret2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.

	--m_Explanation		= STR_ID_3551,

	m_LocalStarPosX	= 568,
	m_LocalStarPosY	= 342,
	
	
	
	
	ENDING_SPEECH0 = 
	{
			
		ELSWORD = {

		{    STR_ID_3552,    },

		{    STR_ID_3553,    },

		{    STR_ID_3554,    },

		{    STR_ID_3555,    },
		},

		AISHA = {

		{    STR_ID_3556,    },

		{    STR_ID_3557,    },

		{    STR_ID_3558,    },

		{    STR_ID_3559,    },
		},

		RENA = {

		{    STR_ID_3560,    },

		{    STR_ID_3561,    },

		{    STR_ID_3562,    },

		{    STR_ID_3563,    },
		},

		RAVEN = {

		{    STR_ID_3564,    },

		{    STR_ID_3565,    },

		{    STR_ID_3566,    },
		
		{    STR_ID_3567,    },
		},
		
		EVE = {

		{    STR_ID_3568,    },

		{    STR_ID_3569,    },

		{    STR_ID_3570,    },
		
		{    STR_ID_3571,    },
		},

  
	},
	
	
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ALTERA_SECRET_HARD"],
	dungeonName 		= STR_ID_3550,
	dataFileName 		= "Dungeon_Altera_Secret_Hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= DUNGEON_ID["DI_ALTERA_SECRET_NORMAL"],
	
	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES
	
	requireItemID		= 109994,
	requireItemCount	= 1,

	m_MinLevel			= 45,
	m_MaxLevel			= 50,
	
	m_RequireItemLevel     = 35,

	m_NPCLevel			= 47,
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_ALTERA_SECRET_BOSS"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_ALTERA_Secret1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_ALTERA_Secret2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	m_fTimeLimit = 660,
		
	-- 비밀던전인 경우에 요렇게 설정해줘야합니다
	IS_HELL_MODE = TRUE,
	EXTRA_REQUIRE_DUNGEON_ID =
	{
		DUNGEON_ID["DI_ALTERA_BATTLE_AIR_SHIP_EXPERT"],
		DUNGEON_ID["DI_ALTERA_PLAIN_RECYCLE_EXPERT"],
		DUNGEON_ID["DI_ALTERA_BELOW_TUNNEL_EXPERT"],
		DUNGEON_ID["DI_ALTERA_PLAIN_EXPERT"],		
		DUNGEON_ID["DI_ALTERA_NASOD_FACTORY_EXPERT"],
		DUNGEON_ID["DI_ALTERA_CORE_EXPERT"],		
	},

	
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ALTERA_SECRET_EXPERT"],
	dungeonName 		= STR_ID_3550,
	dataFileName 		= "Dungeon_Altera_Secret_Expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= DUNGEON_ID["DI_ALTERA_SECRET_HARD"],

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES	
	
	requireItemID		= 109994,
	requireItemCount	= 1,

	m_MinLevel			= 45,
	m_MaxLevel			= 50,
	
	m_RequireItemLevel     = 35,
	
	m_NPCLevel			= 50,
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_ALTERA_SECRET_BOSS"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_ALTERA_Secret1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_ALTERA_Secret2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	
	m_fTimeLimit = 720,
	
	
	-- 비밀던전인 경우에 요렇게 설정해줘야합니다
	IS_HELL_MODE = TRUE,
	EXTRA_REQUIRE_DUNGEON_ID =
	{
		DUNGEON_ID["DI_ALTERA_BATTLE_AIR_SHIP_EXPERT"],
		DUNGEON_ID["DI_ALTERA_PLAIN_RECYCLE_EXPERT"],
		DUNGEON_ID["DI_ALTERA_BELOW_TUNNEL_EXPERT"],
		DUNGEON_ID["DI_ALTERA_PLAIN_EXPERT"],		
		DUNGEON_ID["DI_ALTERA_NASOD_FACTORY_EXPERT"],
		DUNGEON_ID["DI_ALTERA_CORE_EXPERT"],		
	},

	
}


------------------------------ 페이타 지역 ------------------------=------

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_PEITA_OFFERINGS_NORMAL"],
	dungeonName 		= STR_ID_3572,
	dataFileName 		= "Dungeon_Peita_Offerings_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

	--requireDungeonID	= 0,
	--requireDungeonID	= DUNGEON_ID["DI_ALTERA_CORE_NORMAL"],
	
	--[[
	EXTRA_REQUIRE_DUNGEON_ID =
				{
					DUNGEON_ID["DI_ALTERA_BATTLE_AIR_SHIP_NORMAL"],
					DUNGEON_ID["DI_ALTERA_PLAIN_RECYCLE_NORMAL"],
					DUNGEON_ID["DI_ALTERA_BELOW_TUNNEL_NORMAL"],
					DUNGEON_ID["DI_ALTERA_PLAIN_NORMAL"],
					DUNGEON_ID["DI_ALTERA_NASOD_FACTORY_NORMAL"],
					DUNGEON_ID["DI_ALTERA_CORE_NORMAL"],
				},
	--]]
	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 38,
	m_MaxLevel			= 40,
	
	m_RequireItemLevel     = 28,
	
	m_NPCLevel			= 38,

	m_TextureName		= "dlg_ui_dungeon_image05.dds",
	m_PieceName			= "PEITA_OFFERINGS",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_PEITA_OFFERINGS_STAGE_BOSS"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_FEITA_Offerings1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_FEITA_Offerings2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.

	--m_Explanation		= STR_ID_3573,

	m_LocalStarPosX	= 180,
	m_LocalStarPosY	= 589,
	
	m_DungeonDescription = STR_ID_19946,


	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   30177, 114970, 114950,},
		--ELESIS		= 	{   30278, },
	},

	AUTO_DUNGEON_ROOM_TITLE =
	{

		STR_ID_3574,
		STR_ID_3575,
		STR_ID_3576,
	},




	ENDING_SPEECH0 =
	{

		ELSWORD = {

		{    STR_ID_3577    },							
		{    STR_ID_3578,    },
		{    STR_ID_3579,    },

		},

		AISHA = {

		{    STR_ID_3580,    },
		{    STR_ID_3581,    },
		{    STR_ID_3582,    },

		},

		RENA = {

  		{    STR_ID_3583,    },
  		{    STR_ID_3584,    },
  		{    STR_ID_3585,    },

		},

		RAVEN = {

  		{    STR_ID_3586,    },
  		{    STR_ID_3587,    },
  		{    STR_ID_3588,    },

		},
		
		EVE = {

  		{    STR_ID_3589,    },
  		{    STR_ID_3590,    },
  		{    STR_ID_3591,    },

		},
		
		CHUNG = { 

		{   STR_ID_9968, },

		{   STR_ID_9969, },

		{   STR_ID_9970, },

		},
		
		ARA = { 

		{   STR_ID_21417, },

		{   STR_ID_21418, },

		{   STR_ID_21419, },

		},
	},


}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_PEITA_OFFERINGS_HARD"],
	dungeonName 		= STR_ID_3572,
	dataFileName 		= "Dungeon_Peita_Offerings_Hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= DUNGEON_ID["DI_PEITA_OFFERINGS_NORMAL"],

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 38,
	m_MaxLevel			= 40,
	
	m_RequireItemLevel     = 28,
	
	m_NPCLevel			= 39,
	
	m_DungeonDescription = STR_ID_19946,
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_PEITA_OFFERINGS_STAGE_BOSS"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_FEITA_Offerings1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_FEITA_Offerings2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   30177, 114970, 114950,},
		--ELESIS		= 	{   30278, },
	},
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_PEITA_OFFERINGS_EXPERT"],
	dungeonName 		= STR_ID_3572,
	dataFileName 		= "Dungeon_Peita_Offerings_Expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= DUNGEON_ID["DI_PEITA_OFFERINGS_HARD"],

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 38,
	m_MaxLevel			= 40,
	
	m_RequireItemLevel     = 28,
	
	m_NPCLevel			= 40,
	
	m_DungeonDescription = STR_ID_19946,
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_PEITA_OFFERINGS_STAGE_BOSS"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_FEITA_Offerings1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_FEITA_Offerings2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   30177, 114970, 114950,},
		--ELESIS		= 	{   30278, },
	},
}






-------------------------------------------------------------------------------------

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_PEITA_SPIRAL_CORRIDOR_NORMAL"],
	dungeonName 		= STR_ID_3592,
	dataFileName 		= "Dungeon_Peita_Spiral_Corridor_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

	--requireDungeonID	= DUNGEON_ID["DI_PEITA_OFFERINGS_NORMAL"],
	
	EXTRA_REQUIRE_DUNGEON_ID =
				{
					DUNGEON_ID["DI_PEITA_OFFERINGS_NORMAL"],
				},

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 39,
	m_MaxLevel			= 41,
	
	m_RequireItemLevel     = 29,
	
	m_NPCLevel			= 39,
	
	m_DungeonDescription = STR_ID_19947,


	m_TextureName		= "dlg_ui_dungeon_image05.dds",
	m_PieceName			= "PEITA_SPIRAL_CORRIDOR",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_PEITA_SPIRAL_CORRIDOR_STAGE_BOSS"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_FEITA_Spiral_Corridor1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_FEITA_Spiral_Corridor2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.

	--m_Explanation		= STR_ID_3593,

	m_LocalStarPosX	= 346,
	m_LocalStarPosY	= 646,

	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   30178, 114970, 114950,},
	},


	AUTO_DUNGEON_ROOM_TITLE =
	{
  		STR_ID_3574,
		STR_ID_3575,
		STR_ID_3576,
	},




	ENDING_SPEECH0 =
	{

		ELSWORD = {

		{    STR_ID_3594,    },
		{    STR_ID_3595,    },
		{    STR_ID_3596,    },

		},

		AISHA = {

  		{    STR_ID_3597,    },
		{    STR_ID_3598,    },
		{    STR_ID_3599,    },

		},

		RENA = {

    	{    STR_ID_3600,    },
		{    STR_ID_3601,    },
		{    STR_ID_3602,    },

		},

		RAVEN = {

    	{    STR_ID_3603,    },
		{    STR_ID_3604,    },
		{    STR_ID_3605,    },

		},

		EVE = {

    	{    STR_ID_3606,    },
		{    STR_ID_3607,    },
		{    STR_ID_3608,    },

		},
		
		CHUNG = { 

    	{    STR_ID_9971,    },
		{    STR_ID_9972,    },

		},
		
		ARA = { 

		{   STR_ID_21420, },

		{   STR_ID_21421, },

		},

	},


}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_PEITA_SPIRAL_CORRIDOR_HARD"],
	dungeonName 		= STR_ID_3592,
	dataFileName 		= "Dungeon_Peita_Spiral_Corridor_Hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= DUNGEON_ID["DI_PEITA_SPIRAL_CORRIDOR_NORMAL"],

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 39,
	m_MaxLevel			= 41,
	
	m_RequireItemLevel     = 29,
	
	m_NPCLevel			= 40,
	
	m_DungeonDescription = STR_ID_19947,
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_PEITA_SPIRAL_CORRIDOR_STAGE_BOSS"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_FEITA_Spiral_Corridor1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_FEITA_Spiral_Corridor2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   30178, 114970, 114950,},
	},
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_PEITA_SPIRAL_CORRIDOR_EXPERT"],
	dungeonName 		= STR_ID_3592,
	dataFileName 		= "Dungeon_Peita_Spiral_Corridor_Expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= DUNGEON_ID["DI_PEITA_SPIRAL_CORRIDOR_HARD"],

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 39,
	m_MaxLevel			= 41,
	
	m_RequireItemLevel     = 29,
	
	m_NPCLevel			= 41,
	
	m_DungeonDescription = STR_ID_19947,
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_PEITA_SPIRAL_CORRIDOR_STAGE_BOSS"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_FEITA_Spiral_Corridor1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_FEITA_Spiral_Corridor2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   30178, 114970, 114950,},
	},
}

--------------------------------------------------------------------------------------------------------------------------------------------------------------------
--페이타 던전(지하 예배당)
--{{kimhc -- 2009-05-14

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_PEITA_CHAPEL_NORMAL"],
	dungeonName 		= STR_ID_3609,
	dataFileName 		= "Dungeon_Peita_Chapel_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

	--requireDungeonID	= DUNGEON_ID["DI_PEITA_SPIRAL_CORRIDOR_NORMAL"],
	
	EXTRA_REQUIRE_DUNGEON_ID =
				{
					DUNGEON_ID["DI_PEITA_OFFERINGS_NORMAL"],
					DUNGEON_ID["DI_PEITA_SPIRAL_CORRIDOR_NORMAL"],
				},

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 40,
	m_MaxLevel			= 42,
	
	m_RequireItemLevel     = 30,
	
	m_NPCLevel			= 40,

	m_TextureName		= "dlg_ui_dungeon_image05.dds",
	m_PieceName			= "PEITA_CHAPEL",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_PEITA_CHAPEL_STAGE_BOSS"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_FEITA_Chapel1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_FEITA_Chapel2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.

	--m_Explanation		= STR_ID_3610,

	m_LocalStarPosX	= 632,
	m_LocalStarPosY	= 667,
	
	m_DungeonDescription = STR_ID_19948,


	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   30179, 114960, 114940, },
	},
	

	AUTO_DUNGEON_ROOM_TITLE =
	{
  		STR_ID_3574,
		STR_ID_3575,
		STR_ID_3576,
	},




	ENDING_SPEECH0 =
	{

		ELSWORD = {

		{    STR_ID_3611,    },
		{    STR_ID_3612,    },
		{    STR_ID_3613,    },
		{    STR_ID_3614,    },

		},

		AISHA = {

  		{    STR_ID_3615,    },
		{    STR_ID_3616,    },
		{    STR_ID_3617,    },
		{    STR_ID_3618,    },

		},

		RENA = {

    	{    STR_ID_3619,    },
		{    STR_ID_3620,    },
		{    STR_ID_3621,    },
		{    STR_ID_3622,    },

		},

		RAVEN = {

    	{    STR_ID_3623,    },
		{    STR_ID_3624,    },
		{    STR_ID_3625,    },
		{    STR_ID_3626,    },

		},

		EVE = {

    	{    STR_ID_3627,    },
		{    STR_ID_3628,    },
		{    STR_ID_3629,    },
		{    STR_ID_3630,    },

		},
		
		CHUNG = { 

    	{    STR_ID_9973,    },
		{    STR_ID_9974,    },
		{    STR_ID_9975,    },
		{    STR_ID_9976,    },

		},
		
		ARA = { 

    	{    STR_ID_21422,    },
		{    STR_ID_21423,    },
		{    STR_ID_21424,    },

		},
	},


}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_PEITA_CHAPEL_HARD"],
	dungeonName 		= STR_ID_3609,
	dataFileName 		= "Dungeon_Peita_Chapel_Hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= DUNGEON_ID["DI_PEITA_CHAPEL_NORMAL"],

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 40,
	m_MaxLevel			= 42,
	
	m_RequireItemLevel     = 30,
	
	m_NPCLevel			= 41,
	
	m_DungeonDescription = STR_ID_19948,

	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_PEITA_CHAPEL_STAGE_BOSS"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_FEITA_Chapel1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_FEITA_Chapel2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   30179, 114960, 114940, },
		AISHA 		= 	{	30208,	},
	},
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_PEITA_CHAPEL_EXPERT"],
	dungeonName 		= STR_ID_3609,
	dataFileName 		= "Dungeon_Peita_Chapel_Expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= DUNGEON_ID["DI_PEITA_CHAPEL_HARD"],

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 40,
	m_MaxLevel			= 42,
	
	m_RequireItemLevel     = 30,
	
	m_NPCLevel			= 42,
	
	m_DungeonDescription = STR_ID_19948,

	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_PEITA_CHAPEL_STAGE_BOSS"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_FEITA_Chapel1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_FEITA_Chapel2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   30179, 114960, 114940, },
		AISHA 		= 	{	30208,	},
	},
}

--}}kimhc -- 2009-05-14

-------------------------------------------------------------------------------------


g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_PEITA_UNDER_GARDEN_NORMAL"],
	dungeonName 		= STR_ID_3631,
	dataFileName 		= "Dungeon_Peita_Under_Garden_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

	--requireDungeonID	= DUNGEON_ID["DI_PEITA_CHAPEL_NORMAL"],
	
	EXTRA_REQUIRE_DUNGEON_ID =
				{
					DUNGEON_ID["DI_PEITA_OFFERINGS_NORMAL"],
					DUNGEON_ID["DI_PEITA_SPIRAL_CORRIDOR_NORMAL"],
					DUNGEON_ID["DI_PEITA_CHAPEL_NORMAL"],
				},

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 41,
	m_MaxLevel			= 43,
	
	m_RequireItemLevel     = 31,
	
	m_NPCLevel			= 41,
	
	m_DungeonDescription = STR_ID_19949,


	m_TextureName		= "dlg_ui_dungeon_image05.dds",
	m_PieceName         = "PEITA_GARDEN",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_PEITA_UNDER_GARDEN_STAGE_BOSS"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_FEITA_Under_Garden1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_FEITA_Under_Garden2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.

	--m_Explanation		= STR_ID_3632,

	m_LocalStarPosX	= 500,
	m_LocalStarPosY	= 582,
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   30180, 114960, 114940, },
	},

	AUTO_DUNGEON_ROOM_TITLE =
	{
  		STR_ID_3574,
		STR_ID_3575,
		STR_ID_3576,
	},




	ENDING_SPEECH0 =
	{

		ELSWORD = {

		{    STR_ID_3633,    },
		{    STR_ID_3634,    },
		{    STR_ID_3635,    },
		{    STR_ID_3636,    },
		},

		AISHA = {

  		{    STR_ID_3637,    },
		{    STR_ID_3638,    },
		{    STR_ID_3639,    },
		{    STR_ID_3640,    },
  		},

		RENA = {

    	{    STR_ID_3641,    },
		{    STR_ID_3642,    },
		{    STR_ID_3643,    },
		{    STR_ID_3644,    },
		},

		RAVEN = {

    	{    STR_ID_3645,    },
		{    STR_ID_3646,    },
		{    STR_ID_3647,    },
		{    STR_ID_3648,    },
		},

		EVE = {

    	{    STR_ID_3649,    },
		{    STR_ID_3650,    },
		{    STR_ID_3651,    },
		{    STR_ID_3652,    },
		},
		
		CHUNG = { 

    	{    STR_ID_9977,    },
		{    STR_ID_9978,    },
		{    STR_ID_9979,    },
		{    STR_ID_9980,    },

		},
		
		ARA = { 

    	{    STR_ID_21425,    },
		{    STR_ID_21426,    },
		{    STR_ID_21427,    },
		},
	},
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_PEITA_UNDER_GARDEN_HARD"],
	dungeonName 		= STR_ID_3631,
	dataFileName 		= "Dungeon_Peita_Under_Garden_Hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= DUNGEON_ID["DI_PEITA_UNDER_GARDEN_NORMAL"],

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 41,
	m_MaxLevel			= 43,
	
	m_RequireItemLevel     = 31,
	
	m_NPCLevel			= 42,
	
	m_DungeonDescription = STR_ID_19949,

	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_PEITA_UNDER_GARDEN_STAGE_BOSS"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_FEITA_Under_Garden1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_FEITA_Under_Garden2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   30180, 114960, 114940, },
		RENA 		= 	{	30209,	},
	},
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_PEITA_UNDER_GARDEN_EXPERT"],
	dungeonName 		= STR_ID_3631,
	dataFileName 		= "Dungeon_Peita_Under_Garden_Expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= DUNGEON_ID["DI_PEITA_UNDER_GARDEN_HARD"],

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 41,
	m_MaxLevel			= 43,
	
	m_RequireItemLevel     = 31,
	
	m_NPCLevel			= 43,
	
	m_DungeonDescription = STR_ID_19949,

	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_PEITA_UNDER_GARDEN_STAGE_BOSS"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_FEITA_Under_Garden1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_FEITA_Under_Garden2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   30180, 114960, 114940, },
		RENA 		= 	{	30209,	},
	},
}
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------
-- 첨탑의 심장부

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_PEITA_TOWER_HEART_NORMAL"],
	dungeonName 		= STR_ID_3724,
	dataFileName 		= "Dungeon_Peita_Tower_Heart_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

	--requireDungeonID	= DUNGEON_ID["DI_PEITA_UNDER_GARDEN_NORMAL"],
	
	EXTRA_REQUIRE_DUNGEON_ID =
				{
					DUNGEON_ID["DI_PEITA_OFFERINGS_NORMAL"],
					DUNGEON_ID["DI_PEITA_SPIRAL_CORRIDOR_NORMAL"],
					DUNGEON_ID["DI_PEITA_CHAPEL_NORMAL"],
					DUNGEON_ID["DI_PEITA_UNDER_GARDEN_NORMAL"],
				},

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 42,
	m_MaxLevel			= 44,
	
	m_RequireItemLevel     = 32,
	
	m_NPCLevel			= 42,
	
	m_DungeonDescription = STR_ID_19950,

	m_TextureName		= "dlg_ui_dungeon_image05.dds",
	m_PieceName			= "PEITA_Tower_Heart",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_PEITA_TOWER_HEART_STAGE_BOSS"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_FEITA_Tower_Heart1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_FEITA_Tower_Heart2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.

	--m_Explanation		= STR_ID_3632,

	m_LocalStarPosX	= 459,
	m_LocalStarPosY	= 405,
	
	BOSS_DROP_ITEM =
	{
		ELSWORD 	= 	{	30157, 114930, },
		AISHA 		= 	{	114931,	},
		RENA 		= 	{	114932,	},
		RAVEN		= 	{	114933, },
		EVE 		= 	{	114934, },
		CHUNG 		= 	{	114935, },
		ARA			= 	{	30240, 114936, },
		--ELESIS		= 	{	114937, },
	},

	AUTO_DUNGEON_ROOM_TITLE =
	{
  		STR_ID_3574,
		STR_ID_3575,
		STR_ID_3576,
	},




	ENDING_SPEECH0 =
	{

		ELSWORD = {

		{    STR_ID_3749,    },
		{    STR_ID_3750,    },
		{    STR_ID_3751,    },
		{    STR_ID_3752,    },
		},

		AISHA = {

  		{    STR_ID_3753,    },
		{    STR_ID_3754,    },
		{    STR_ID_3755,    },
		{    STR_ID_3756,    },
  		},

		RENA = {

    	{    STR_ID_3757,    },
		{    STR_ID_3758,    },
		{    STR_ID_3759,    },
		{    STR_ID_3760,    },
		},

		RAVEN = {

    	{    STR_ID_3761,    },
		{    STR_ID_3762,    },
		{    STR_ID_3763,    },
		{    STR_ID_3764,    },
		},

		EVE = {

    	{    STR_ID_3765,    },
		{    STR_ID_3766,    },
		{    STR_ID_3767,    },
		{    STR_ID_3768,    },
		},
		
		CHUNG = {

    	{    STR_ID_9981,    },
		{    STR_ID_9982,    },
		{    STR_ID_9983,    },
		{    STR_ID_9984,    },
		},
		
		ARA = { 

    	{    STR_ID_21428,    },
		{    STR_ID_21429,    },
		{    STR_ID_21430,    },
		},
	},
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_PEITA_TOWER_HEART_HARD"],
	dungeonName 		= STR_ID_3724,
	dataFileName 		= "Dungeon_Peita_Tower_Heart_Hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= DUNGEON_ID["DI_PEITA_TOWER_HEART_NORMAL"],

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 42,
	m_MaxLevel			= 44,
	
	m_RequireItemLevel     = 32,
	
	m_NPCLevel			= 43,
	
	m_DungeonDescription = STR_ID_19950,

	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_PEITA_TOWER_HEART_STAGE_BOSS"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_FEITA_Tower_Heart1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_FEITA_Tower_Heart2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		ELSWORD 	= 	{	30157, 114930, },
		AISHA 		= 	{	114931,	},
		RENA 		= 	{	114932,	},
		RAVEN		= 	{	114933, },
		EVE 		= 	{	30223, 114934, },
		CHUNG 		= 	{	114935, },
		ARA			= 	{	30240, 114936, },
		--ELESIS		= 	{	114937, },
	},
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_PEITA_TOWER_HEART_EXPERT"],
	dungeonName 		= STR_ID_3724,
	dataFileName 		= "Dungeon_Peita_Tower_Heart_Expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= DUNGEON_ID["DI_PEITA_TOWER_HEART_HARD"],

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 42,
	m_MaxLevel			= 44,
	
	m_RequireItemLevel     = 32,
	
	m_NPCLevel			= 44,
	
	m_DungeonDescription = STR_ID_19950,

	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_PEITA_TOWER_HEART_STAGE_BOSS"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_FEITA_Tower_Heart1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_FEITA_Tower_Heart2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		ELSWORD 	= 	{	30157, 114930, },
		AISHA 		= 	{	114931,	},
		RENA 		= 	{	114932,	},
		RAVEN		= 	{	114933, },
		EVE 		= 	{	30223, 114934, },
		CHUNG 		= 	{	114935, },
		ARA			= 	{	30240, 114936, },
		--ELESIS		= 	{	114937, },
	},
}
--------------------------------------------------------------------------------------------------------------------------------------------------------------------



-------------------------------------------------------------------------------------
--봉헌의 제단

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_PEITA_OFFERINGS_ALTER_NORMAL"],
	dungeonName 		= STR_ID_3725,
	dataFileName 		= "Dungeon_Peita_Offerings_Alter_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

	--requireDungeonID	= DUNGEON_ID["DI_PEITA_TOWER_HEART_NORMAL"],
	
	EXTRA_REQUIRE_DUNGEON_ID =
				{
					DUNGEON_ID["DI_PEITA_OFFERINGS_NORMAL"],
					DUNGEON_ID["DI_PEITA_SPIRAL_CORRIDOR_NORMAL"],
					DUNGEON_ID["DI_PEITA_CHAPEL_NORMAL"],
					DUNGEON_ID["DI_PEITA_UNDER_GARDEN_NORMAL"],
					DUNGEON_ID["DI_PEITA_TOWER_HEART_NORMAL"],
				},

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 43,
	m_MaxLevel			= 45,
	
	m_RequireItemLevel     = 33,
	
	m_NPCLevel			= 43,
	
	m_DungeonDescription = STR_ID_19951,


	m_TextureName		= "dlg_ui_dungeon_image05.dds",
	m_PieceName			= "PEITA_Offerings_Alter",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_PEITA_OFFERINGS_ALTER_STAGE_BOSS"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_FEITA_Offerings_Alter1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_FEITA_Offerings_Alter2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.

	--m_Explanation		= STR_ID_3632,

	m_LocalStarPosX	= 467,
	m_LocalStarPosY	= 226,

	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   30181, 30182, },
		ELSWORD 	= 	{	114930, },
		AISHA 		= 	{	114931,	},
		RENA 		= 	{	114932,	},
		RAVEN		= 	{	30222, 114933, },
		EVE 		= 	{	30223, 114934, },
		CHUNG 		= 	{	114935, },
		ARA			= 	{	114936, },
		--ELESIS		= 	{	114937, },
	},
	
	AUTO_DUNGEON_ROOM_TITLE =
	{
  		STR_ID_3574,
		STR_ID_3575,
		STR_ID_3576,
	},

	ENDING_SPEECH0 =
	{

		ELSWORD = {

		{    STR_ID_3769,    },
		{    STR_ID_3770,    },
		{    STR_ID_3771,    },
		{    STR_ID_3772,    },
		},

		AISHA = {

  		{    STR_ID_3773,    },
		{    STR_ID_3774,    },
		{    STR_ID_3775,    },
		{    STR_ID_3776,    },
  		},

		RENA = {

    	{    STR_ID_3777,    },
		{    STR_ID_3778,    },
		{    STR_ID_3779,    },
		{    STR_ID_3780,    },
		},

		RAVEN = {

    	{    STR_ID_3781,    },
		{    STR_ID_3782,    },
		{    STR_ID_3783,    },
		{    STR_ID_3784,    },
		},

		EVE = {

    	{    STR_ID_3785,    },
		{    STR_ID_3786,    },
		{    STR_ID_3787,    },
		{    STR_ID_3788,    },
		},
		
		CHUNG = {

    	{    STR_ID_9985,    },
		{    STR_ID_9986,    },
		{    STR_ID_9987,    },
		{    STR_ID_9988,    },
		},
		
		ARA = {

    	{    STR_ID_21431,    },
		{    STR_ID_21432,    },
		{    STR_ID_21433,    },
		{    STR_ID_21434,    },
		},
	},
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_PEITA_OFFERINGS_ALTER_HARD"],
	dungeonName 		= STR_ID_3725,
	dataFileName 		= "Dungeon_Peita_Offerings_Alter_Hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= DUNGEON_ID["DI_PEITA_OFFERINGS_ALTER_NORMAL"],

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 43,
	m_MaxLevel			= 45,
	
	m_RequireItemLevel     = 33,
	
	m_NPCLevel			= 44,
	
	m_DungeonDescription = STR_ID_19951,

	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_PEITA_OFFERINGS_ALTER_STAGE_BOSS"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_FEITA_Offerings_Alter1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_FEITA_Offerings_Alter2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   30181, 30182, 114940,},
		ELSWORD 	= 	{	114930, },
		AISHA 		= 	{	114931,	},
		RENA 		= 	{	30209, 114932,	},
		RAVEN		= 	{	30222, 114933, },
		EVE 		= 	{	30223, 114934, },
		CHUNG 		= 	{	114935, },
		ARA			= 	{	114936, },
		--ELESIS		= 	{	114937, },
	},
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_PEITA_OFFERINGS_ALTER_EXPERT"],
	dungeonName 		= STR_ID_3725,
	dataFileName 		= "Dungeon_Peita_Offerings_Alter_Expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= DUNGEON_ID["DI_PEITA_OFFERINGS_ALTER_HARD"],

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 43,
	m_MaxLevel			= 45,
	
	m_RequireItemLevel     = 33,
	
	m_NPCLevel			= 45,
	
	m_DungeonDescription = STR_ID_19951,

	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_PEITA_OFFERINGS_ALTER_STAGE_BOSS"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_FEITA_Offerings_Alter1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_FEITA_Offerings_Alter2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   30181, 30182, 114940, 114960, },
		ELSWORD 	= 	{	114930, },
		AISHA 		= 	{	30208, 114931,	},
		RENA 		= 	{	30209, 114932,	},
		RAVEN		= 	{	30222, 114933, },
		EVE 		= 	{	30223, 114934, },
		CHUNG 		= 	{	114935, },
		ARA			= 	{	114936, },
		--ELESIS		= 	{	114937, },
	},
}
--------------------------------------------------------------------------------------------------------------------------------------------------------------------


-------------------------------------------------------------------------------------
--제3 거주지구

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_VELDER_THIRD_DWELLING_NORMAL"],
	dungeonName 		= STR_ID_4619,
	dataFileName 		= "Dungeon_Velder_Third_Dwelling_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

	--requireDungeonID	= DUNGEON_ID["DI_PEITA_OFFERINGS_ALTER_NORMAL"],
	
	--[[
	EXTRA_REQUIRE_DUNGEON_ID =
				{
					DUNGEON_ID["DI_PEITA_OFFERINGS_NORMAL"],
					DUNGEON_ID["DI_PEITA_SPIRAL_CORRIDOR_NORMAL"],
					DUNGEON_ID["DI_PEITA_CHAPEL_NORMAL"],
					DUNGEON_ID["DI_PEITA_UNDER_GARDEN_NORMAL"],
					DUNGEON_ID["DI_PEITA_TOWER_HEART_NORMAL"],
					DUNGEON_ID["DI_PEITA_OFFERINGS_ALTER_NORMAL"],
				},
	--]]

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 45,
	m_MaxLevel			= 47,
	
	m_RequireItemLevel     = 35,
	
	m_NPCLevel			= 45,
	
	m_DungeonDescription = STR_ID_19952,

	m_TextureName		= "dlg_ui_dungeon_image06.dds",
	m_PieceName			= "VELDER_DWELLING",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_VELDER_THIRD_DWELLING_STAGE_BOSS"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_VELDER_THIRD_DWELLING1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_VELDER_THIRD_DWELLING2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.

	--m_Explanation		= STR_ID_3632,

	m_LocalStarPosX	= 168,
	m_LocalStarPosY	= 468,
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   30183, 115170, 115150, },
		CHUNG 		= 	{	30214, },
	},


	AUTO_DUNGEON_ROOM_TITLE =
	{
  		STR_ID_4752,
		STR_ID_4753,
		STR_ID_4754,
	},
	
	ENDING_SPEECH0 =
	{

		ELSWORD = {

		{    STR_ID_4685,    },
		{    STR_ID_4686,    },
		{    STR_ID_4687,    },
		},

		AISHA = {

  		{    STR_ID_4688,    },
		{    STR_ID_4689,    },
		{    STR_ID_4690,    },
  		},

		RENA = {

    	{    STR_ID_4691,    },
		{    STR_ID_4692,    },
		{    STR_ID_4693,    },
		},

		RAVEN = {

    	{    STR_ID_4694,    },
		{    STR_ID_4695,    },
		{    STR_ID_4696,    },
		},

		EVE = {

    	{    STR_ID_4697,    },
		{    STR_ID_4698,    },
		{    STR_ID_4699,    },
		},
		
		CHUNG = {

    	{    STR_ID_9994,    },
		{    STR_ID_9995,    },
		{    STR_ID_9996,    },
		},
		
		ARA = {

    	{    STR_ID_21435,    },
		{    STR_ID_21436,    },
		{    STR_ID_21437,    },
		},
	},


}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_VELDER_THIRD_DWELLING_HARD"],
	dungeonName 		= STR_ID_4619,
	dataFileName 		= "Dungeon_Velder_Third_Dwelling_Hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= DUNGEON_ID["DI_VELDER_THIRD_DWELLING_NORMAL"],

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 45,
	m_MaxLevel			= 47,
	
	m_RequireItemLevel     = 35,
	
	m_NPCLevel			= 46,
	
	m_DungeonDescription = STR_ID_19952,

	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_VELDER_THIRD_DWELLING_STAGE_BOSS"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_VELDER_THIRD_DWELLING1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_VELDER_THIRD_DWELLING2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   30183, 115170, 115150, },
		CHUNG 		= 	{	30214, },
	},
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_VELDER_THIRD_DWELLING_EXPERT"],
	dungeonName 		= STR_ID_4619,
	dataFileName 		= "Dungeon_Velder_Third_Dwelling_Expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= DUNGEON_ID["DI_VELDER_THIRD_DWELLING_HARD"],

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 45,
	m_MaxLevel			= 47,
	
	m_RequireItemLevel     = 35,
	
	m_NPCLevel			= 47,
	
	m_DungeonDescription = STR_ID_19952,

	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_VELDER_THIRD_DWELLING_STAGE_BOSS"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_VELDER_THIRD_DWELLING1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_VELDER_THIRD_DWELLING2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   30183, 115170, 115150, },
		CHUNG 		= 	{	30214, },
	},
}

-------------------------------------------------------------------------------------
--희망의 다리

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_VELDER_BRIDGE_HOPE_NORMAL"],
	dungeonName 		= STR_ID_4620,
	dataFileName 		= "Dungeon_Velder_Bridge_Hope_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

	--requireDungeonID	= DUNGEON_ID["DI_VELDER_THIRD_DWELLING_NORMAL"],
	
	EXTRA_REQUIRE_DUNGEON_ID =
				{
					DUNGEON_ID["DI_VELDER_THIRD_DWELLING_NORMAL"],
				},

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 46,
	m_MaxLevel			= 48,
	
	m_RequireItemLevel     = 36,
	
	m_NPCLevel			= 46,
	
	m_DungeonDescription = STR_ID_19953,

	m_TextureName		= "dlg_ui_dungeon_image06.dds",
	m_PieceName			= "VELDER_HOPE_BRIDGE",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_VELDER_BRIDGE_HOPE_STAGE_BOSS"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_VELDER_BRIDGE_HOPE1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_VELDER_BRIDGE_HOPE2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.

	--m_Explanation		= STR_ID_3632,

	m_LocalStarPosX	= 336,
	m_LocalStarPosY	= 371,
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   30184, 30185, 115160, 115140, },
	},


	AUTO_DUNGEON_ROOM_TITLE =
	{
  		STR_ID_4752,
		STR_ID_4755,
		STR_ID_4754,
	},




	ENDING_SPEECH0 =
	{

		ELSWORD = {

		{    STR_ID_4700,    },
		{    STR_ID_4701,    },
		{    STR_ID_4702,    },
		},

		AISHA = {

  		{    STR_ID_4703,    },
		{    STR_ID_4704,    },
		{    STR_ID_4705,    },
  		},

		RENA = {

    	{    STR_ID_4706,    },
		{    STR_ID_4707,    },
		{    STR_ID_4708,    },
		},

		RAVEN = {

    	{    STR_ID_4709,    },
		{    STR_ID_4710,    },
		{    STR_ID_4711,    },
		},

		EVE = {

    	{    STR_ID_4712,    },
		{    STR_ID_4713,    },
		{    STR_ID_4714,    },
		},
		
		CHUNG = {

    	{    STR_ID_9997,    },
		{    STR_ID_9998,    },
		{    STR_ID_9999,    },
		},
		
		ARA = {

    	{    STR_ID_21438,    },
		{    STR_ID_21439,    },
		{    STR_ID_21440,    },
		},
	},


}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_VELDER_BRIDGE_HOPE_HARD"],
	dungeonName 		= STR_ID_4620,
	dataFileName 		= "Dungeon_Velder_Bridge_Hope_Hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= DUNGEON_ID["DI_VELDER_BRIDGE_HOPE_NORMAL"],

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 46,
	m_MaxLevel			= 48,
	
	m_RequireItemLevel     = 36,
	
	m_NPCLevel			= 47,
	
	m_DungeonDescription = STR_ID_19953,

	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_VELDER_BRIDGE_HOPE_STAGE_BOSS"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_VELDER_BRIDGE_HOPE1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_VELDER_BRIDGE_HOPE2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   30184, 30185, 115160, 115140, },
		--ELESIS		= 	{	30279,  },
	},
}
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_VELDER_BRIDGE_HOPE_EXPERT"],
	dungeonName 		= STR_ID_4620,
	dataFileName 		= "Dungeon_Velder_Bridge_Hope_Expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= DUNGEON_ID["DI_VELDER_BRIDGE_HOPE_HARD"],

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 46,
	m_MaxLevel			= 48,
	
	m_RequireItemLevel     = 36,
	
	m_NPCLevel			= 48,
	
	m_DungeonDescription = STR_ID_19953,

	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_VELDER_BRIDGE_HOPE_STAGE_BOSS"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_VELDER_BRIDGE_HOPE1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_VELDER_BRIDGE_HOPE2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   30184, 30185, 115160, 115140, },
		--ELESIS		= 	{	30279,  },
	},
}

-------------------------------------------------------------------------------------
--왕궁 진입로

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_VELDER_PALACE_ENTRANCE_NORMAL"],
	dungeonName 		= STR_ID_5235,
	dataFileName 		= "Dungeon_Velder_Palace_Entrance_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

	--requireDungeonID	= DUNGEON_ID["DI_VELDER_BRIDGE_HOPE_NORMAL"],
	
	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES
	
	EXTRA_REQUIRE_DUNGEON_ID =
				{
					DUNGEON_ID["DI_VELDER_THIRD_DWELLING_NORMAL"],
					DUNGEON_ID["DI_VELDER_BRIDGE_HOPE_NORMAL"],
				},

	m_MinLevel			= 47,
	m_MaxLevel			= 49,
	
	m_RequireItemLevel     = 37,
	
	m_NPCLevel			= 47,
	
	m_DungeonDescription = STR_ID_19954,


	m_TextureName		= "dlg_ui_dungeon_image06.dds",
	m_PieceName			= "VELDER_PALACE_ENTRANCE",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_VELDER_PALACE_ENTRANCE_STAGE_BOSS"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon__ROAD_PALACE1.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon__ROAD_PALACE2.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.

	--m_Explanation		= STR_ID_3632,

	m_LocalStarPosX	= 501,
	m_LocalStarPosY	= 303,

	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   30186,  },
		ELSWORD 	= 	{	115130, },
		AISHA 		= 	{	115131, },
		RENA 		= 	{	30210, 115132, },
		RAVEN		= 	{	115133, },
		EVE 		= 	{	115134, },
		CHUNG 		= 	{	115135, },
		ARA			= 	{	30241, 115136, },
		--ELESIS		= 	{	115137, },
	},

	AUTO_DUNGEON_ROOM_TITLE =
	{
  		STR_ID_4752,
		STR_ID_4755,
		STR_ID_4754,
	},




	ENDING_SPEECH0 =
	{

		ELSWORD = {

		{    STR_ID_5248,    },
		{    STR_ID_5249,    },
		},

		AISHA = {

  		{    STR_ID_5250,    },
		{    STR_ID_5251,    },
  		},

		RENA = {

    	{    STR_ID_5252,    },
		{    STR_ID_5253,    },
		},

		RAVEN = {

    	{    STR_ID_5254,    },
		{    STR_ID_5255,    },
		},

		EVE = {

    	{    STR_ID_5256,    },
		{    STR_ID_5257,    },
		},
		
		CHUNG = {

    	{    STR_ID_10000,    },
		{    STR_ID_10001,    },
		},
		
		ARA = {

    	{    STR_ID_21441,    },
		{    STR_ID_21442,    },
		{    STR_ID_21443,    },
		},
	},
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_VELDER_PALACE_ENTRANCE_HARD"],
	dungeonName 		= STR_ID_5235,
	dataFileName 		= "Dungeon_Velder_Palace_Entrance_Hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= DUNGEON_ID["DI_VELDER_PALACE_ENTRANCE_NORMAL"],

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 47,
	m_MaxLevel			= 49,
	
	m_RequireItemLevel     = 37,
	
	m_NPCLevel			= 48,
	
	m_DungeonDescription = STR_ID_19954,

	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_VELDER_PALACE_ENTRANCE_STAGE_BOSS"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon__ROAD_PALACE1.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon__ROAD_PALACE2.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   30186,  },
		ELSWORD 	= 	{	115130, },
		AISHA 		= 	{	115131, },
		RENA 		= 	{	30210, 115132, },
		RAVEN		= 	{	115133, },
		EVE 		= 	{	115134, },
		CHUNG 		= 	{	115135, },
		ARA			= 	{	30241, 115136, },
		--ELESIS		= 	{	115137, },
	},
}
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_VELDER_PALACE_ENTRANCE_EXPERT"],
	dungeonName 		= STR_ID_5235,
	dataFileName 		= "Dungeon_Velder_Palace_Entrance_Expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= DUNGEON_ID["DI_VELDER_PALACE_ENTRANCE_HARD"],

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 47,
	m_MaxLevel			= 49,
	
	m_RequireItemLevel     = 37,
	
	m_NPCLevel			= 49,
	
	m_DungeonDescription = STR_ID_19954,


	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_VELDER_PALACE_ENTRANCE_STAGE_BOSS"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon__ROAD_PALACE1.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon__ROAD_PALACE2.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   30186,  },
		ELSWORD 	= 	{	115130, },
		AISHA 		= 	{	115131, },
		RENA 		= 	{	30210, 115132, },
		RAVEN		= 	{	115133, },
		EVE 		= 	{	115134, },
		CHUNG 		= 	{	115135, },
		ARA			= 	{	30241, 115136, },
		--ELESIS		= 	{	115137, },
	},
}

-------------------------------------------------------------------------------------
--불타는 희망의 다리

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_VELDER_BRIDGE_BUNNING_NORMAL"],
	dungeonName 		= STR_ID_5275,
	dataFileName 		= "Dungeon_Velder_Bridge_Burning_Normal.lua",	
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

	--requireDungeonID	= DUNGEON_ID["DI_VELDER_PALACE_ENTRANCE_NORMAL"],

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES
	
	EXTRA_REQUIRE_DUNGEON_ID =
				{
					DUNGEON_ID["DI_VELDER_THIRD_DWELLING_NORMAL"],
					DUNGEON_ID["DI_VELDER_BRIDGE_HOPE_NORMAL"],
					DUNGEON_ID["DI_VELDER_PALACE_ENTRANCE_NORMAL"],
				},

	m_MinLevel			= 48,
	m_MaxLevel			= 50,
	
	m_RequireItemLevel     = 38,
	
	m_NPCLevel			= 48,
	
	m_DungeonDescription = STR_ID_19955,

	m_TextureName		= "dlg_ui_dungeon_image07.dds",
	m_PieceName			= "BRIDGE_BUNNING",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_VELDER_BRIDGE_BURNING_BOSS_STAGE"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon__BRIDGE_BUNNING1.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon__BRIDGE_BUNNING2.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.

	--m_Explanation		= STR_ID_3632,

	m_LocalStarPosX	= 660,
	m_LocalStarPosY	= 403,

	BOSS_DROP_ITEM =
	{
		COMMON		= 	{  30187, 115370, 115350,  },
	},

	AUTO_DUNGEON_ROOM_TITLE =
	{
  		STR_ID_5270,
		STR_ID_5271,
		STR_ID_5272,
		STR_ID_5273,
		STR_ID_5274,
	},




	ENDING_SPEECH0 =
	{

		ELSWORD = {

		{    STR_ID_5260,    },
		{    STR_ID_5261,    },
		},

		AISHA = {

  		{    STR_ID_5264,    },
		{    STR_ID_5265,    },
  		},

		RENA = {

    	{    STR_ID_5262,    },
		{    STR_ID_5263,    },
		},

		RAVEN = {

    	{    STR_ID_5266,    },
		{    STR_ID_5267,    },
		},

		EVE = {

    	{    STR_ID_5268,    },
		{    STR_ID_5269,    },
		},
		
		CHUNG = {

    	{    STR_ID_10002,    },
		{    STR_ID_10003,    },
		},
		
		ARA = {

    	{    STR_ID_21444,    },
		{    STR_ID_21445,    },
		{    STR_ID_21446,    },
		},
	},
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_VELDER_BRIDGE_BUNNING_HARD"],
	dungeonName 		= STR_ID_5275,
	dataFileName 		= "Dungeon_Velder_Bridge_Burning_Hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= DUNGEON_ID["DI_VELDER_BRIDGE_BUNNING_NORMAL"],

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 48,
	m_MaxLevel			= 50,
	
	m_RequireItemLevel     = 38,
	
	m_NPCLevel			= 49,
	
	m_DungeonDescription = STR_ID_19955,

	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_VELDER_BRIDGE_BURNING_BOSS_STAGE"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon__BRIDGE_BUNNING1.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon__BRIDGE_BUNNING2.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{  30187, 115370, 115350,  },
		ELSWORD 	= 	{  30155, },
	},
}
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_VELDER_BRIDGE_BUNNING_EXPERT"],
	dungeonName 		= STR_ID_5275,
	dataFileName 		= "Dungeon_Velder_Bridge_Burning_Expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= DUNGEON_ID["DI_VELDER_BRIDGE_BUNNING_HARD"],

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 48,
	m_MaxLevel			= 50,
	
	m_RequireItemLevel     = 38,
	
	m_NPCLevel			= 50,
	
	m_DungeonDescription = STR_ID_19955,

	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_VELDER_BRIDGE_BURNING_BOSS_STAGE"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon__BRIDGE_BUNNING1.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon__BRIDGE_BUNNING2.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{  30187, 115370, 115350,  },
		ELSWORD 	= 	{  30155, },
	},
}

-----------------------------벨더 5번 - 제1 상업지구------------------------

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_VELDER_MARKET_NORMAL"],
	dungeonName 		= STR_ID_5298,
	dataFileName 		= "Dungeon_Velder_Market_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

	--requireDungeonID	= DUNGEON_ID["DI_VELDER_BRIDGE_BUNNING_NORMAL"],
	
	EXTRA_REQUIRE_DUNGEON_ID =
				{
					DUNGEON_ID["DI_VELDER_THIRD_DWELLING_NORMAL"],
					DUNGEON_ID["DI_VELDER_BRIDGE_HOPE_NORMAL"],
					DUNGEON_ID["DI_VELDER_PALACE_ENTRANCE_NORMAL"],
					DUNGEON_ID["DI_VELDER_BRIDGE_BUNNING_NORMAL"],
				},

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 49,
	m_MaxLevel			= 51,
	
	m_RequireItemLevel     = 39,
	
	m_NPCLevel			= 49,
	
	m_DungeonDescription = STR_ID_19956,


	m_TextureName		= "dlg_ui_dungeon_image07.dds",
	m_PieceName			= "MARKET",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_VELDER_MARKET_BOSS_STAGE"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon__MARKET1.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon__MARKET2.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.

	--m_Explanation		= STR_ID_3632,

	m_LocalStarPosX	= 564,
	m_LocalStarPosY	= 562,

	BOSS_DROP_ITEM =
	{
		COMMON		= 	{  30188, 115360, 115340, },
	},

	AUTO_DUNGEON_ROOM_TITLE =
	{
  		STR_ID_5294,
		STR_ID_5295,
		STR_ID_5296,
		STR_ID_5297,
	},




	ENDING_SPEECH0 =
	{

		ELSWORD = {

		{    STR_ID_5284,    },
		{    STR_ID_5285,    },
		},

		AISHA = {

  		{    STR_ID_5286,    },
		{    STR_ID_5287,    },
  		},

		RENA = {

    	{    STR_ID_5288,    },
		{    STR_ID_5289,    },
		},

		RAVEN = {

    	{    STR_ID_5290,    },
		{    STR_ID_5291,    },
		},

		EVE = {

    	{    STR_ID_5292,    },
		{    STR_ID_5293,    },
		},
		
		CHUNG = {

    	{    STR_ID_10004,    },
		{    STR_ID_10005,    },
		},
		
		ARA = {

    	{    STR_ID_21447,    },
		{    STR_ID_21448,    },
		{    STR_ID_21449,    },
		},
	},
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_VELDER_MARKET_HARD"],
	dungeonName 		= STR_ID_5298,
	dataFileName 		= "Dungeon_Velder_Market_Hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= DUNGEON_ID["DI_VELDER_MARKET_NORMAL"],

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 49,
	m_MaxLevel			= 51,
	
	m_RequireItemLevel     = 39,
	
	m_NPCLevel			= 50,
	
	m_DungeonDescription = STR_ID_19956,

	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_VELDER_MARKET_BOSS_STAGE"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon__MARKET1.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon__MARKET2.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{  30188, 115360, 115340, },
		AISHA 		= 	{  30211, },
	},
}
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_VELDER_MARKET_EXPERT"],
	dungeonName 		= STR_ID_5298,
	dataFileName 		= "Dungeon_Velder_Market_Expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= DUNGEON_ID["DI_VELDER_MARKET_HARD"],

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 49,
	m_MaxLevel			= 51,
	
	m_RequireItemLevel     = 39,
	
	m_NPCLevel			= 51,
	
	m_DungeonDescription = STR_ID_19956,

	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_VELDER_MARKET_BOSS_STAGE"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon__MARKET1.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon__MARKET2.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{  30188, 115360, 115340, },
		AISHA 		= 	{  30211, },
	},
}


-----------------------------벨더 6번 : 남쪽 게이트 ------------------------------------

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_VELDER_GATE_NORMAL"],
	dungeonName 		= STR_ID_5318,
	dataFileName 		= "Dungeon_Velder_Gate_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

	--requireDungeonID	= DUNGEON_ID["DI_VELDER_MARKET_NORMAL"],
	
	EXTRA_REQUIRE_DUNGEON_ID =
				{
					DUNGEON_ID["DI_VELDER_THIRD_DWELLING_NORMAL"],
					DUNGEON_ID["DI_VELDER_BRIDGE_HOPE_NORMAL"],
					DUNGEON_ID["DI_VELDER_PALACE_ENTRANCE_NORMAL"],
					DUNGEON_ID["DI_VELDER_BRIDGE_BUNNING_NORMAL"],
					DUNGEON_ID["DI_VELDER_MARKET_NORMAL"],
				},

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 50,
	m_MaxLevel			= 52,
	
	m_RequireItemLevel     = 40,
	
	m_NPCLevel			= 50,
	
	m_DungeonDescription = STR_ID_19957,

	m_TextureName		= "dlg_ui_dungeon_image07.dds",
	m_PieceName			= "GATE",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_VELDER_GATE_BOSS_STAGE"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon__GATE1.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon__GATE2.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.

	--m_Explanation		= STR_ID_3632,

	m_LocalStarPosX	= 389,
	m_LocalStarPosY	= 646,

	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   30189, 115340, 115150,  },
		ELSWORD 	= 	{	30155, 115130, 115330, },
		AISHA 		= 	{	30211, 115131, 115331, },
		RENA 		= 	{	30210, 115132, 115332, },
		RAVEN		= 	{	115133, 115333, },
		EVE 		= 	{	115134, 115334, },
		CHUNG 		= 	{	115135, 115335, },
		ARA 		= 	{	115136, 115336, },
		--ELESIS		= 	{	30279, 115137, 115337, },
	},

	AUTO_DUNGEON_ROOM_TITLE =
	{
  		STR_ID_5319,
		STR_ID_5320,
		STR_ID_5321,
		STR_ID_5322,
	},




	ENDING_SPEECH0 =
	{

		ELSWORD = {

		{    STR_ID_5323,    },
		{    STR_ID_5324,    },
		},

		AISHA = {

  		{    STR_ID_5327,    },
		{    STR_ID_5328,    },
  		},

		RENA = {

    	{    STR_ID_5325,    },
		{    STR_ID_5326,    },
		},

		RAVEN = {

    	{    STR_ID_5329,    },
		{    STR_ID_5330,    },
		},

		EVE = {

    	{    STR_ID_5331,    },
		{    STR_ID_5332,    },
		},
		
		CHUNG = {

    	{    STR_ID_10006,    },
		{    STR_ID_10007,    },
		},
		
		ARA = {

    	{    STR_ID_21450,    },
		{    STR_ID_21451,    },
		{    STR_ID_21452,    },
		},
	},
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_VELDER_GATE_HARD"],
	dungeonName 		= STR_ID_5318,
	dataFileName 		= "Dungeon_Velder_Gate_Hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= DUNGEON_ID["DI_VELDER_GATE_NORMAL"],

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 50,
	m_MaxLevel			= 52,
	
	m_RequireItemLevel     = 40,
	
	m_NPCLevel			= 51,
	
	m_DungeonDescription = STR_ID_19957,

	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_VELDER_GATE_BOSS_STAGE"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon__GATE1.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon__GATE2.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   30189, 115340, 115360, 115170, 115150, 115350, 115370, },
		ELSWORD 	= 	{	30155, 115130, 115330, },
		AISHA 		= 	{	30211, 115131, 115331, },
		RENA 		= 	{	30210, 115132, 115332, },
		RAVEN		= 	{	115133, 115333, },
		EVE 		= 	{	115134, 115334, },
		CHUNG 		= 	{	115135, 115335, },
		ARA 		= 	{	115136, 115336, },
		--ELESIS		= 	{	30279, 115137, 115337, },
	},
}
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_VELDER_GATE_EXPERT"],
	dungeonName 		= STR_ID_5318,
	dataFileName 		= "Dungeon_Velder_Gate_Expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= DUNGEON_ID["DI_VELDER_GATE_HARD"],

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 50,
	m_MaxLevel			= 52,
	
	m_RequireItemLevel     = 40,
	
	m_NPCLevel			= 52,
	
	m_DungeonDescription = STR_ID_19957,

	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_VELDER_GATE_BOSS_STAGE"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon__GATE1.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon__GATE2.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   30189, 115340, 115360, 115170, 115150, 115350, 115370, },
		ELSWORD 	= 	{	30155, 115130, 115330, },
		AISHA 		= 	{	30211, 115131, 115331, },
		RENA 		= 	{	30210, 115132, 115332, },
		RAVEN		= 	{	115133, 115333, },
		EVE 		= 	{	115134, 115334, },
		CHUNG 		= 	{	115135, 115335, },
		ARA 		= 	{	115136, 115336, },
		--ELESIS		= 	{	30279, 115137, 115337, },
	},
}

--[[
--할로윈 던전-----
	g_pDungeonManager:AddDungeonData
	{
		dungeonID			= DUNGEON_ID["DI_ELDER_HALLOWEEN_NORMAL"],
		dungeonName 		= STR_ID_3653,
		dataFileName 		= "Dungeon_Elder_Halloween_Normal.lua",
		--m_bRelativeMonsterLevel = FALSE, 
		difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

		--requireDungeonID	= 0,
		--requireDungeonID	= DUNGEON_ID["DI_ALTERA_NASOD_FACTORY_NORMAL"],
		
		m_MinLevel			= 1,
		m_MaxLevel			= 60,
		requireItemID		= 132880,
		requireItemCount	= 1,

		m_TextureName		= "DLG_UI_Dungeon_Image07.dds",		
		m_PieceName			= "HOLLWEEN",			
		m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_EVENT_HALLOWEEN_STAGE_BOSS"],
		
		--m_Explanation		= STR_ID_3654,

		m_LocalStarPosX	= 127,
		m_LocalStarPosY	= 669,
		
		
		
		
		ENDING_SPEECH0 = 
		{
				
			ELSWORD = {

	        {    STR_ID_3655,    },
	        
	        {    STR_ID_3656,    },
	        
			
			},

			AISHA = {
			
	        {    STR_ID_3657,    },

	        {    STR_ID_3658,    },


			},

			RENA = {

	        {    STR_ID_3659,    },

	        {    STR_ID_3660,    },


			},

			RAVEN = {
			
			{    STR_ID_3661,    },

	        {    STR_ID_3662,    },

			},
			
			EVE = {
		    {
				STR_ID_9633,      
			},
		    { 
       			STR_ID_9634,        
			},
			
			}, 
		},
		
		
	}

	g_pDungeonManager:AddDungeonData
	{
		dungeonID			= DUNGEON_ID["DI_ELDER_HALLOWEEN_HARD"],
		dungeonName 		= STR_ID_3653,
		--m_bRelativeMonsterLevel = FALSE, 
		dataFileName 		= "Dungeon_Elder_Halloween_Hard.lua",
		difficulty			= DIFFICULTY_LEVEL["DL_HARD"],
		

		requireDungeonID	= DUNGEON_ID["DI_ELDER_HALLOWEEN_NORMAL"],
		m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_EVENT_HALLOWEEN_STAGE_BOSS"],
	    requireItemID		= 132880,
	    requireItemCount	= 2,
		

		m_MinLevel			= 1,
		m_MaxLevel			= 60,

	}

	g_pDungeonManager:AddDungeonData
	{
		dungeonID			= DUNGEON_ID["DI_ELDER_HALLOWEEN_EXPERT"],
		dungeonName 		= STR_ID_3653,
		--m_bRelativeMonsterLevel = FALSE, 
		dataFileName 		= "Dungeon_Elder_Halloween_Expert.lua",
		difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

		requireDungeonID	= DUNGEON_ID["DI_ELDER_HALLOWEEN_HARD"],
		m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_EVENT_HALLOWEEN_STAGE_BOSS"],
		requireItemID		= 132880,
		requireItemCount	= 3,
		

		m_MinLevel			= 1,
		m_MaxLevel			= 60,
	}
--]]

















































-- 아케이드 던전
-----------------------------------------------------------------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ARCADE_RUBEN"],
	dungeonName 		= STR_ID_3663,
	dataFileName 		= "Dungeon_Arcade_Ruben.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

 	requireDungeonID	= 0,

	m_MinLevel			= 5,
	m_MaxLevel			= 15,
	requireSpirit		= 0,
	
	m_RequireItemLevel     = 0,
	
	m_bArcadeMode		= TRUE,
	
	m_TextureName	= "DLG_UI_Dungeon_Image01.dds",
	m_PieceName		= "EMIRSPACE_RUBEN",		



	--m_Explanation		= STR_ID_3664,
	
	ENDING_SPEECH0 = 
	{
			
		ELSWORD = {

		{    STR_ID_3665,    },

		{    STR_ID_3666,    },

		{    STR_ID_3667,    },

		{    STR_ID_3668,    },
		
		{    STR_ID_3669,    },
		},

		AISHA = {

		{    STR_ID_3670,    },

		{    STR_ID_3671,    },

		{    STR_ID_3672,    },

		{    STR_ID_3673,    },
		
		},

		RENA = {

		{    STR_ID_3674,    },

		{    STR_ID_3675,    },

		{    STR_ID_3676,    },

		{    STR_ID_3677,    },
		
		},

		RAVEN = {

		{    STR_ID_3678,    },

		{    STR_ID_3679,    },

		{    STR_ID_3680,    },

		{    STR_ID_3681,    },
		
		{    STR_ID_3682,    },
		},
  
  		EVE = 
		{
		    {
				STR_ID_3683,      
			},
		    { 
       			STR_ID_3684,        
			},
		    { 
       			STR_ID_3685,        
			},
		    { 
       			STR_ID_3686,        
			},
	    },  
	},
}


g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ARCADE_ELDER"],
	dungeonName 		= STR_ID_3687,
	dataFileName 		= "Dungeon_Arcade_Elder.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

	requireDungeonID	= 0,

	m_MinLevel			= 8,
	m_MaxLevel			= 25,
	requireSpirit		= 0,
	
	m_RequireItemLevel     = 0,

	m_bArcadeMode		= TRUE,
	
	m_TextureName	= "DLG_UI_Dungeon_Image02.dds",
	m_PieceName		= "EMIRSPACE_ELDU",		



	--m_Explanation		= STR_ID_3688,

		ENDING_SPEECH0 =
	{

			ELSWORD = {

		{    STR_ID_3665,    },

		{    STR_ID_3666,    },

		{    STR_ID_3667,    },

		{    STR_ID_3668,    },

		{    STR_ID_3669,    },
		},

		AISHA = {

		{    STR_ID_3670,    },

		{    STR_ID_3671,    },

		{    STR_ID_3672,    },

		{    STR_ID_3673,    },

		},

		RENA = {

		{    STR_ID_3674,    },

		{    STR_ID_3675,    },

		{    STR_ID_3676,    },

		{    STR_ID_3677,    },

		},

		RAVEN = {

		{    STR_ID_3678,    },

		{    STR_ID_3679,    },

		{    STR_ID_3680,    },

		{    STR_ID_3681,    },

		{    STR_ID_3682,    },
		},

  		EVE = 
		{
		    {
				STR_ID_3683,      
			},
		    { 
       			STR_ID_3684,        
			},
		    { 
       			STR_ID_3685,        
			},
		    { 
       			STR_ID_3686,        
			},
	    }, 
	},
}





g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ARCADE_SEASON1"],
	dungeonName 		= STR_ID_3689,
	dataFileName 		= "Dungeon_Arcade_Season1.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

 	requireDungeonID	= 0,

	m_MinLevel			= 5,
	m_MaxLevel			= 50,
	requireSpirit		= 0,
	
	m_RequireItemLevel     = 0,

	m_bArcadeMode		= TRUE,


	--m_TextureName		= "DLG_Dungeon_Arcade_Image01.DDS",
	--m_PieceName		= "Arcade_Ruben",
	
		
	
	m_TextureName	= "DLG_UI_Dungeon_Image04.dds",
	m_PieceName		= "DUNGEON_IMAGE_ALTERA_CORE",			-- fix!!!



	--m_Explanation		= STR_ID_3690,

		ENDING_SPEECH0 =
	{

		ELSWORD = {

		{    STR_ID_3665,    },

		{    STR_ID_3666,    },

		{    STR_ID_3667,    },

		{    STR_ID_3668,    },

		{    STR_ID_3669,    },
		},

		AISHA = {

		{    STR_ID_3670,    },

		{    STR_ID_3671,    },

		{    STR_ID_3672,    },

		{    STR_ID_3673,    },

		},

		RENA = {

		{    STR_ID_3674,    },

		{    STR_ID_3675,    },

		{    STR_ID_3676,    },

		{    STR_ID_3677,    },

		},

		RAVEN = {

		{    STR_ID_3678,    },

		{    STR_ID_3679,    },

		{    STR_ID_3680,    },

		{    STR_ID_3681,    },

		{    STR_ID_3682,    },
		},

  		EVE = 
		{
		    {
				STR_ID_3683,      
			},
		    { 
       			STR_ID_3684,        
			},
		    { 
       			STR_ID_3685,        
			},
		    { 
       			STR_ID_3686,        
			},
	    }, 
	},
}



---------------------------헤니르의 시공---------------------------




g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ELDER_HENIR_SPACE"],
	--dungeonName 		= STR_ID_3796, --헤니르 : 엘더
	dungeonName 		= STR_ID_3722, --헤니르의 시공
	dataFileName 		= "Dungeon_Henir_Space.lua",

 	m_eDungeonType = DUNGEON_TYPE["DT_HENIR"],   --던전타입 헤니르
	m_bRelativeMonsterLevel = TRUE,              --유저레벨 연동 던전


	--requireItemID		= 110833,                --1모드입장요구아이템
	--requireItemCount	= 1,
	--requireItemID2		= 110834,                --2모드입장요구아이템
	--requireItemCount2	= 1,
	requireDungeonID	= 0,

	m_MinLevel			= 1,
	m_MaxLevel			= 60,
	
	m_RequireItemLevel     = 0,
	
	m_DungeonDescription = STR_ID_19970,

	m_fTimeLimit = 0,
		
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_Henir_Space1.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_Henir_Space2.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.

	m_TextureName		= "DLG_UI_Dungeon_Image05.dds",
	m_PieceName			= "HENIR_SPACE",
    m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_ARCADE_NEW_STAGE_REST"],

	--m_Explanation		= STR_ID_3789,

	m_LocalStarPosX	= 646+107,
	m_LocalStarPosY	= 278-10,
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{ 61205,},
	},

	ENDING_SPEECH0 =
	{

		ELSWORD = {

			{   STR_ID_3804, },
			{   STR_ID_3805, },
			{   STR_ID_3806, },

		},

		AISHA = {

			{   STR_ID_3807, },
			{   STR_ID_3808, },
			{   STR_ID_3809, },

		},


		RENA = {

			{   STR_ID_3810, },
			{   STR_ID_3811, },
			{   STR_ID_3812, },

		},


		RAVEN = {

			{   STR_ID_3813, },
			{   STR_ID_3814, },
			{   STR_ID_3815, },

		},

		EVE =
		{

			{   STR_ID_3816, },
			{   STR_ID_3817, },
			{   STR_ID_3818, },
	   },
	   
	   CHUNG = {

    	{    STR_ID_10008,    },
		{    STR_ID_10009,    },
		{    STR_ID_10010,    },
		},
		
		ARA = {

    	{    STR_ID_21488,   },
		{    STR_ID_21489,   },
		{    STR_ID_21490,   },
		},
	},
	
	ENDING_SPEECH1 =
	{

		ELSWORD = {

			{   STR_ID_3834, },

		},

		AISHA = {

			{   STR_ID_3835, },

		},


		RENA = {

			{   STR_ID_3836, },

		},


		RAVEN = {

			{   STR_ID_3837, },

		},

		EVE =
		{

			{   STR_ID_3838, },
	   },
	   
	   CHUNG = {

    	{    STR_ID_10011,    },
		},
		
		ARA = {

    	{    STR_ID_10011,    },
		},

	},
}

-- 식목일 이벤트 던전
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_EVENT_TREE_DAY_ELDER"],
	dungeonName 		= STR_ID_4979,
	dataFileName 		= "Dungeon_Event_Treeday_Event.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],
	normalOnly			= TRUE,			-- 난이도는 '보통'만 선택할 수 있는 던전임을 표시
	
	--requireDungeonID	= 0,
	--requireDungeonID	= DUNGEON_ID["DI_ALTERA_NASOD_FACTORY_NORMAL"],
	
	m_MinLevel			= 10,
	m_MaxLevel			= 60,
	requireItemID		= 131856,
	requireItemCount	= 1,
	
	m_RequireItemLevel     = 0,

	--m_TextureName		= "DLG_UI_Dunrgeon_Image06.dds",		
	--m_PieceName			= "Tee_Day",	
	
	m_TextureName		= "DLG_UI_Dungeon_Image06.dds",		
	m_PieceName			= "Tree_Day",

	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_EVENT_TREE_DAY_STAGE_BOSS"],	

	--m_Explanation		= STR_ID_3654,

	--m_LocalStarPosX	= 314-30,
	--m_LocalStarPosY	= 150,
	
ENDING_SPEECH0 = 
	{		
		ELSWORD = 
		{
			{   STR_ID_11449, },
		},

		AISHA = 
		{
			{   STR_ID_11451,   },
		},
		  

		RENA = 
		{
			{   STR_ID_11450,   },
		},
		  

		RAVEN = {
			{   STR_ID_11454, },
		},
								    		  				 
		EVE = 
		{
		    {	STR_ID_11452,      			},
		},
		
		CHUNG = 
		{
			{    STR_ID_11453,    },
		},
	   
	},	
}



g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_EVENT_TREE_DAY_BESMA"],
	dungeonName 		= STR_ID_4979,
	dataFileName 		= "Dungeon_Event_Treeday_Event.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],
	normalOnly			= TRUE,			-- 난이도는 '보통'만 선택할 수 있는 던전임을 표시

	--requireDungeonID	= 0,
	--requireDungeonID	= DUNGEON_ID["DI_ALTERA_NASOD_FACTORY_NORMAL"],
	
	m_MinLevel			= 10,
	m_MaxLevel			= 60,
	requireItemID		= 131856,
	requireItemCount	= 1,
	
	m_RequireItemLevel     = 0,

	m_TextureName		= "DLG_UI_Dungeon_Image06.dds",		
	m_PieceName			= "Tree_Day",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_EVENT_TREE_DAY_STAGE_BOSS"],		

	--m_Explanation		= STR_ID_3654,

	--m_LocalStarPosX	= 314,
	--m_LocalStarPosY	= 150,
	
ENDING_SPEECH0 = 
	{		
		ELSWORD = 
		{
			{   STR_ID_11449, },
		},

		AISHA = 
		{
			{   STR_ID_11451,   },
		},
		  

		RENA = 
		{
			{   STR_ID_11450,   },
		},
		  

		RAVEN = {
			{   STR_ID_11454, },
		},
								    		  				 
		EVE = 
		{
		    {	STR_ID_11452,      			},
		},
		
		CHUNG = 
		{
			{    STR_ID_11453,    },
		},
	   
	},	
}


g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_EVENT_TREE_DAY_ALTERA"],
	dungeonName 		= STR_ID_4979,
	dataFileName 		= "Dungeon_Event_Treeday_Event.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],
	normalOnly			= TRUE,			-- 난이도는 '보통'만 선택할 수 있는 던전임을 표시

	--requireDungeonID	= 0,
	--requireDungeonID	= DUNGEON_ID["DI_ALTERA_NASOD_FACTORY_NORMAL"],
	
	m_MinLevel			= 10,
	m_MaxLevel			= 60,
	requireItemID		= 131856,
	requireItemCount	= 1,
	
	m_RequireItemLevel     = 0,

	m_TextureName		= "DLG_UI_Dungeon_Image06.dds",		
	m_PieceName			= "Tree_Day",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_EVENT_TREE_DAY_STAGE_BOSS"],		

	--m_Explanation		= STR_ID_3654,

	--m_LocalStarPosX	= 314,
	--m_LocalStarPosY	= 150,
	
ENDING_SPEECH0 = 
	{		
		ELSWORD = 
		{
			{   STR_ID_11449, },
		},

		AISHA = 
		{
			{   STR_ID_11451,   },
		},
		  

		RENA = 
		{
			{   STR_ID_11450,   },
		},
		  

		RAVEN = {
			{   STR_ID_11454, },
		},
								    		  				 
		EVE = 
		{
		    {	STR_ID_11452,      			},
		},
		
		CHUNG = 
		{
			{    STR_ID_11453,    },
		},
	   
	},		
}


g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_EVENT_TREE_DAY_PEITA"],
	dungeonName 		= STR_ID_4979,
	dataFileName 		= "Dungeon_Event_Treeday_Event.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],
	normalOnly			= TRUE,			-- 난이도는 '보통'만 선택할 수 있는 던전임을 표시
	
	--requireDungeonID	= 0,
	--requireDungeonID	= DUNGEON_ID["DI_ALTERA_NASOD_FACTORY_NORMAL"],
	
	m_MinLevel			= 10,
	m_MaxLevel			= 60,
	requireItemID		= 131856,
	requireItemCount	= 1,
	
	m_RequireItemLevel     = 0,

	m_TextureName		= "DLG_UI_Dungeon_Image06.dds",		
	m_PieceName			= "Tree_Day",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_EVENT_TREE_DAY_STAGE_BOSS"],		

	--m_Explanation		= STR_ID_3654,

	--m_LocalStarPosX	= 314,
	--m_LocalStarPosY	= 150,
	
	ENDING_SPEECH0 = 
	{		
		ELSWORD = 
		{
			{   STR_ID_11449, },
		},

		AISHA = 
		{
			{   STR_ID_11451,   },
		},
		  

		RENA = 
		{
			{   STR_ID_11450,   },
		},
		  

		RAVEN = {
			{   STR_ID_11454, },
		},
								    		  				 
		EVE = 
		{
		    {	STR_ID_11452,      			},
		},
		
		CHUNG = 
		{
			{    STR_ID_11453,    },
		},
	   
	},	
	
}
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_EVENT_TREE_DAY_VELDER"],
	dungeonName 		= STR_ID_4979,
	dataFileName 		= "Dungeon_Event_Treeday_Event.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],
	normalOnly			= TRUE,			-- 난이도는 '보통'만 선택할 수 있는 던전임을 표시
	
	--requireDungeonID	= 0,
	--requireDungeonID	= DUNGEON_ID["DI_ALTERA_NASOD_FACTORY_NORMAL"],	
	
	m_MinLevel			= 10,
	m_MaxLevel			= 60,
	requireItemID		= 131856,
	requireItemCount	= 1,
	
	m_RequireItemLevel     = 0,

	m_TextureName		= "DLG_UI_Dungeon_Image06.dds",		
	m_PieceName			= "Tree_Day",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_EVENT_TREE_DAY_STAGE_BOSS"],		

	--m_Explanation		= STR_ID_3654,

	--m_LocalStarPosX	= 314-30,
	--m_LocalStarPosY	= 150,
	
	ENDING_SPEECH0 = 
	{		
		ELSWORD = 
		{
			{   STR_ID_11449, },
		},

		AISHA = 
		{
			{   STR_ID_11451,   },
		},
		  

		RENA = 
		{
			{   STR_ID_11450,   },
		},
		  

		RAVEN = {
			{   STR_ID_11454, },
		},
								    		  				 
		EVE = 
		{
		    {	STR_ID_11452,      			},
		},
		
		CHUNG = 
		{
			{    STR_ID_11453,    },
		},
	   
	},		
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_EVENT_TREE_DAY_HAMEL"],
	dungeonName 		= STR_ID_4979,
	dataFileName 		= "Dungeon_Event_Treeday_Event.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],
	normalOnly			= TRUE,			-- 난이도는 '보통'만 선택할 수 있는 던전임을 표시
	
	--requireDungeonID	= 0,
	--requireDungeonID	= DUNGEON_ID["DI_ALTERA_NASOD_FACTORY_NORMAL"],	
	
	m_MinLevel			= 10,
	m_MaxLevel			= 60,
	requireItemID		= 131856,
	requireItemCount	= 1,
	
	m_RequireItemLevel     = 0,

	m_TextureName		= "DLG_UI_Dungeon_Image06.dds",		
	m_PieceName			= "Tree_Day",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_EVENT_TREE_DAY_STAGE_BOSS"],		

	--m_Explanation		= STR_ID_3654,

	--m_LocalStarPosX	= 314-30,
	--m_LocalStarPosY	= 150,
	
	ENDING_SPEECH0 = 
	{		
		ELSWORD = 
		{
			{   STR_ID_11449, },
		},

		AISHA = 
		{
			{   STR_ID_11451,   },
		},
		  

		RENA = 
		{
			{   STR_ID_11450,   },
		},
		  

		RAVEN = {
			{   STR_ID_11454, },
		},
								    		  				 
		EVE = 
		{
		    {	STR_ID_11452,      			},
		},
		
		CHUNG = 
		{
			{    STR_ID_11453,    },
		},
	   
	},	
}


--[[
-- 루벤 개편으로 사라짐
			----비밀던전 루벤---

			g_pDungeonManager:AddDungeonData
			{
				dungeonID			= DUNGEON_ID["DI_RUBEN_SECRET_COMMON"],
				dungeonName 		= STR_ID_2961,
				dataFileName 		= "Dungeon_Ruben_Secret_Common.lua",

				difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],
				m_eDungeonType = DUNGEON_TYPE["DT_SECRET"],--던전 타입 스크리트
				
				m_bRelativeMonsterLevel = TRUE,

				requireDungeonID	= 0,
				
				-- 비밀던전인 경우에 요렇게 설정해줘야합니다	
				IS_HELL_MODE = TRUE,
				
				EXTRA_REQUIRE_DUNGEON_ID =
				{
					DUNGEON_ID["DI_EL_FOREST_NORTH_EXPERT"],
					DUNGEON_ID["DI_EL_FOREST_MAIN_EXPERT"],
					DUNGEON_ID["DI_EL_FOREST_WEST_EXPERT"],
					--DUNGEON_ID["DI_EL_FOREST_GATE_EXPERT"],
					DUNGEON_ID["DI_EL_FOREST_MONKEY_EXPERT"],
					DUNGEON_ID["DI_EL_FOREST_EXTRA_EXPERT"],
				},

				m_MinLevel			= 15,
				m_MaxLevel			= 20,

				--m_TextureName			= "DLG_Common_Texture10.TGA",
				--m_PieceName			= "Dungeon_Image_Twillght",
				
				m_TextureName	= "DLG_UI_Dungeon_Image01.dds",
				m_PieceName		= "DUNGEON_IMAGE_HELLMODE",
				m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_EL_FOREST_EXTRA_CAVE_STAGE5"],
				m_LoadingScreenFileName	= "HQ_LoadingDungeon_EL_TREE_HELLMODE1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
				m_LoadingScreenFileName2= "HQ_LoadingDungeon_EL_TREE_HELLMODE2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요
				
				--m_Explanation			= STR_ID_2896,

				-- m_LocalStarPosX	= 571+10,
				-- m_LocalStarPosY	= 283+12,
				
				--자동파티 타이틀--
				AUTO_DUNGEON_ROOM_TITLE =
				{
					STR_ID_2827,
					STR_ID_2828,
					STR_ID_2829,
					STR_ID_2831,
					STR_ID_2832,
					STR_ID_2833,
					STR_ID_2834,
					STR_ID_2897,
					STR_ID_2898,
				},
				

				ENDING_SPEECH0 = 
				{
						
					ELSWORD = {

						{ STR_ID_2963, },

						{ STR_ID_2964, },

						{ STR_ID_2965, },

						{ STR_ID_2966, },
					},

					AISHA = {

						{ STR_ID_2967, },

						{ STR_ID_2968, },

						{ STR_ID_2969, },

						{ STR_ID_2970, },
					},

					RENA = {

						{ STR_ID_2971, },

						{ STR_ID_2972, },

						{ STR_ID_2973, },

						{ STR_ID_2974, },
					},

					RAVEN = {

						{ STR_ID_2975, },

						{ STR_ID_2976, },

						{ STR_ID_2977, },

						{ STR_ID_2978, },

					},
						    		  				 
					EVE = 
					{
						{
							STR_ID_2979,      
						},
						{ 
       						STR_ID_2980,        
						},
						{
       						STR_ID_2981,                     
						},
						{
     						STR_ID_2982,     		
						},
					}, 
					
				},
				
			}




			g_pDungeonManager:AddDungeonData
			{
				dungeonID			= DUNGEON_ID["DI_RUBEN_SECRET_HELL"],
				dungeonName 		= STR_ID_2961,
				dataFileName 		= "Dungeon_Ruben_Secret_Hell.lua",

				difficulty			= DIFFICULTY_LEVEL["DL_HARD"],
				m_eDungeonType = DUNGEON_TYPE["DT_SECRET"],--던전 타입 스크리트

				requireDungeonID	= 0,
				
				EXTRA_REQUIRE_DUNGEON_ID =
				{
					DUNGEON_ID["DI_EL_FOREST_NORTH_EXPERT"],
					DUNGEON_ID["DI_EL_FOREST_MAIN_EXPERT"],
					DUNGEON_ID["DI_EL_FOREST_WEST_EXPERT"],
					--DUNGEON_ID["DI_EL_FOREST_GATE_EXPERT"],
					DUNGEON_ID["DI_EL_FOREST_MONKEY_EXPERT"],
					DUNGEON_ID["DI_EL_FOREST_EXTRA_EXPERT"],
				},
				
				m_bRelativeMonsterLevel = TRUE,

				m_MinLevel			= 15,
				m_MaxLevel			= 20,

				--m_TextureName			= "DLG_Common_Texture10.TGA",
				--m_PieceName			= "Dungeon_Image_Twillght",
				
				m_TextureName	= "DLG_UI_Dungeon_Image01.dds",
				m_PieceName		= "DUNGEON_IMAGE_HELLMODE",
				m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_EL_FOREST_EXTRA_CAVE_STAGE5"],
				m_LoadingScreenFileName	= "HQ_LoadingDungeon_EL_TREE_HELLMODE1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
				m_LoadingScreenFileName2= "HQ_LoadingDungeon_EL_TREE_HELLMODE2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요
				
				--m_Explanation			= STR_ID_2896,

				-- m_LocalStarPosX	= 571+10,
				-- m_LocalStarPosY	= 283+12,
				
				--자동파티 타이틀--
				AUTO_DUNGEON_ROOM_TITLE =
				{
					STR_ID_2827,
					STR_ID_2828,
					STR_ID_2829,
					STR_ID_2831,
					STR_ID_2832,
					STR_ID_2833,
					STR_ID_2834,
					STR_ID_2897,
					STR_ID_2898,
				},
	

	
			}
--]]



--비밀던전 엘더--

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ELDER_SECRET_COMMON"],
	dungeonName 		= STR_ID_3146,
	dataFileName 		= "Dungeon_Elder_Secret_Common.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

	m_eDungeonType = DUNGEON_TYPE["DT_SECRET"],
	m_bRelativeMonsterLevel = TRUE,              --유저레벨 연동 던전

	requireDungeonID	= 0,
	
	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES
	
	-- 비밀던전인 경우에 요렇게 설정해줘야합니다	
	IS_HELL_MODE = TRUE,	
	EXTRA_REQUIRE_DUNGEON_ID =
	{
		DUNGEON_ID["DI_ELDER_BENDERS_CAVE_EXPERT"],
		--DUNGEON_ID["DI_ELDER_NATURE_CAVE_EXPERT"],
		DUNGEON_ID["DI_ELDER_DRUID_FOREST_EXPERT"],
		DUNGEON_ID["DI_ELDER_WALLY_CASTLE_ROOF_EXPERT"],
		DUNGEON_ID["DI_ELDER_BELOW_PASSAGE_EXPERT"],	
		DUNGEON_ID["DI_ELDER_WALLY_CASTLE_CENTER_EXPERT"],
	},
	
	
	requireItemID		= 109991,
	requireItemCount	= 1,		
	m_MinLevel			= 50,
	m_MaxLevel			= 60,
	
	m_RequireItemLevel     = 70,
	
	m_DungeonDescription = STR_ID_19965,

	--m_TextureName		= "DLG_New_Dungeon_Image5.dds",		
	--m_PieceName			= "Dungeon_Image_Wally_Laboratory ",			
	
	m_TextureName	= "DLG_UI_Dungeon_Image06.dds",
	m_PieceName		= "Dungeon_Image_Elder_Secret",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_ELDER_SECRET_BOSS"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_ELDER_WALLY_LABORATORY1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_ELDER_WALLY_LABORATORY2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	

	--m_Explanation		= STR_ID_3147,

	m_LocalStarPosX	= 539,
	m_LocalStarPosY	= 327,
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   132119, 132116,},
		ELSWORD 	= 	{	111714, 111713, },
		AISHA 		= 	{	111719, 111718, },
		RENA 		= 	{	111724, 111723, },
		RAVEN		= 	{	111729, 111728, },
		EVE 		= 	{	111734, 111733, },
		CHUNG 		= 	{	111739, 111738, },
		ARA 		= 	{	112603, 112604, },
		--ELESIS		= 	{	117198, 117199, },
	},


	ENDING_SPEECH0 = 
	{
			
		ELSWORD = {

		{    STR_ID_3148,    },

		{    STR_ID_3149,    },

		{    STR_ID_3150,    },

		{    STR_ID_3151,    },
		},

		AISHA = {

		{    STR_ID_3152,    },

		{    STR_ID_3153,    },

		{    STR_ID_3154,    },

		{    STR_ID_3155,    },
		},

		RENA = {

		{    STR_ID_3156,    },

		{    STR_ID_3157,    },

		{    STR_ID_3158,    },

		{    STR_ID_3159,    },
		},

		RAVEN = {

		{    STR_ID_3160,    },

		{    STR_ID_3161,    },

		{    STR_ID_3162,    },

		{    STR_ID_3163,    },
		},
  		    		  				 
		EVE = 
		{
			{
				STR_ID_3164,      
			},
		    { 
       			STR_ID_3165,        
			},
		    {
       			STR_ID_3166,              
			},

		}, 
		
		CHUNG = {

		{    STR_ID_9915,    },

		{    STR_ID_9916,    },

		{    STR_ID_9917,    },

		{    STR_ID_9918,    },
		},
		
		ARA = {

		{    STR_ID_21474,    },

		{    STR_ID_21475,    },

		{    STR_ID_21476,   },
		},
	},
	



	
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ELDER_SECRET_HELL"],
	dungeonName 		= STR_ID_3146,
	dataFileName 		= "Dungeon_Elder_Secret_Hell.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	m_eDungeonType = DUNGEON_TYPE["DT_SECRET"],
	m_bRelativeMonsterLevel = TRUE,              --유저레벨 연동 던전

	requireDungeonID	= 0,

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES
	
	m_DungeonDescription = STR_ID_19965,
	
	
	-- 비밀던전인 경우에 요렇게 설정해줘야합니다	
	IS_HELL_MODE = TRUE,	
	EXTRA_REQUIRE_DUNGEON_ID =
	{
		DUNGEON_ID["DI_ELDER_BENDERS_CAVE_EXPERT"],
		--DUNGEON_ID["DI_ELDER_NATURE_CAVE_EXPERT"],
		DUNGEON_ID["DI_ELDER_DRUID_FOREST_EXPERT"],
		DUNGEON_ID["DI_ELDER_WALLY_CASTLE_ROOF_EXPERT"],
		DUNGEON_ID["DI_ELDER_BELOW_PASSAGE_EXPERT"],	
		DUNGEON_ID["DI_ELDER_WALLY_CASTLE_CENTER_EXPERT"],
	},
	
	
	requireItemID		= 132048,
	requireItemCount	= 1,		
	m_MinLevel			= 50,
	m_MaxLevel			= 63,
	
	m_RequireItemLevel     = 85,

	--m_TextureName		= "DLG_New_Dungeon_Image5.dds",		
	--m_PieceName			= "Dungeon_Image_Wally_Laboratory ",			
	
	m_TextureName	= "DLG_UI_Dungeon_Image02.dds",
	m_PieceName		= "DUNGEON_IMAGE_WALLY_LABORATORY",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_ELDER_SECRET_BOSS"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_ELDER_WALLY_LABORATORY1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_ELDER_WALLY_LABORATORY2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	
	--m_Explanation		= STR_ID_3147,

	m_LocalStarPosX	= 539,
	m_LocalStarPosY	= 327,
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   132119, 132116,},
		ELSWORD 	= 	{	111711, 111712, 111890, 111710,},
		AISHA 		= 	{	111716, 111717, 111891, 111715,},
		RENA 		= 	{	111721, 111722, 111892, 111720,},
		RAVEN		= 	{	111726, 111727, 111893, 111725,},
		EVE 		= 	{	111731, 111732, 111894, 111730,},
		CHUNG 		= 	{	111736, 111737, 111895, 111735,},
		ARA 		= 	{	112601, 112602, 112640, 112600,},
		--ELESIS		= 	{	117196, 117197, 117200, 117195,},
	},

	ENDING_SPEECH0 = 
	{
			
		ELSWORD = {

		{    STR_ID_3148,    },

		{    STR_ID_3149,    },

		{    STR_ID_3150,    },

		{    STR_ID_3151,    },
		},

		AISHA = {

		{    STR_ID_3152,    },

		{    STR_ID_3153,    },

		{    STR_ID_3154,    },

		{    STR_ID_3155,    },
		},

		RENA = {

		{    STR_ID_3156,    },

		{    STR_ID_3157,    },

		{    STR_ID_3158,    },

		{    STR_ID_3159,    },
		},

		RAVEN = {

		{    STR_ID_3160,    },

		{    STR_ID_3161,    },

		{    STR_ID_3162,    },

		{    STR_ID_3163,    },
		},
  		    		  				 
		EVE = 
		{
			{
				STR_ID_3164,      
			},
		    { 
       			STR_ID_3165,        
			},
		    {
       			STR_ID_3166,              
			},

		}, 
		
		CHUNG = {

		{    STR_ID_9915,    },

		{    STR_ID_9916,    },

		{    STR_ID_9917,    },

		{    STR_ID_9918,    },
		},
		
		ARA = {

		{    STR_ID_21474,    },

		{    STR_ID_21475,    },

		{    STR_ID_21476,   },
		},
	
	},
	
}


--비밀던전 베스마--

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_BESMA_SECRET_COMMON"],
	dungeonName 		= STR_ID_3501,
	dataFileName 		= "Dungeon_Besma_Secret_Common.lua",
	
	m_eDungeonType = DUNGEON_TYPE["DT_SECRET"],
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],
	m_bRelativeMonsterLevel = TRUE,              --유저레벨 연동 던전

	requireDungeonID	= 0,	

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	
	m_DungeonDescription = STR_ID_19966,	
	
	-- 비밀던전인 경우에 요렇게 설정해줘야합니다	
	IS_HELL_MODE = TRUE,	
	EXTRA_REQUIRE_DUNGEON_ID =
	{
		DUNGEON_ID["DI_BESMA_DRAGON_ROAD_EXPERT"],
	    DUNGEON_ID["DI_BESMA_LAKE_EXPERT"],
	    --DUNGEON_ID["DI_BESMA_MINE_EXPERT"],
	    DUNGEON_ID["DI_BESMA_MINE2_EXPERT"],
	    DUNGEON_ID["DI_BESMA_AIRSHIP_EXPERT"],
	    DUNGEON_ID["DI_BESMA_LAKE_NIGHT_EXPERT"],
	    DUNGEON_ID["DI_BESMA_DRAGON_NEST_EXPERT"],
	},
	
	
	
	
	requireItemID		= 109992,
	requireItemCount	= 1,
	m_MinLevel			= 50,
	m_MaxLevel			= 60,
	
	m_RequireItemLevel     = 70,

	
	
	m_TextureName	= "DLG_UI_Dungeon_Image06.dds",
	m_PieceName		= "DUNGEON_IMAGE_VESMA_SECRET",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_BESMA_HELL_BOSS"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_BESMA_Secret1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_BESMA_Secret2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.



	--m_Explanation		= STR_ID_3502,

	m_LocalStarPosX	= 217,
	m_LocalStarPosY	= 389,
	--m_LocalStarPosX	= 115,
	--m_LocalStarPosY	= 642,
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   132120, 132117,},
		ELSWORD 	= 	{	111744, 111743,},
		AISHA 		= 	{	111749, 111748,},
		RENA 		= 	{	111754, 111753,},
		RAVEN		= 	{	111759, 111758,},
		EVE 		= 	{	111764, 111763,},
		CHUNG 		= 	{	111769, 111768,},
		ARA 		= 	{	112614, 112613,},
	},
	
	
	

	ENDING_SPEECH0 = 
	{
			
		ELSWORD = {

		{    STR_ID_3503,    },

		{    STR_ID_3504,    },

		{    STR_ID_3505,    },

		{    STR_ID_3506,    },
		
		{    STR_ID_3507,    },
		},

		AISHA = {

		{    STR_ID_3508,    },

		{    STR_ID_3509,    },

		{    STR_ID_3510,    },

		{    STR_ID_3511,    },
		
		{    STR_ID_3512 ,    },
		},

		RENA = {

		{    STR_ID_3513,    },

		{    STR_ID_3514,    },

		{    STR_ID_3515,    },

		{    STR_ID_3516,    },
		
		{    STR_ID_3517,    },
		},

		RAVEN = {

		{    STR_ID_3518,    },

		{    STR_ID_3519,    },

		{    STR_ID_3520,    },

		{    STR_ID_3521,    },
		
		{    STR_ID_3522,    },
		},
  													    		  				 
		EVE = 
		{
		    {
				STR_ID_3523,      
			},
		    { 
       			STR_ID_3524,   
			},
		    { 
       			STR_ID_3525,   
			},
	    },
		CHUNG = { 

		{   STR_ID_9941, },

		{   STR_ID_9942, },

		{   STR_ID_9943, },

		{   STR_ID_9944, },
		},	

		ARA = {

		{    STR_ID_21477,    },

		{    STR_ID_21478,    },

		{    STR_ID_21479,   },
		},	
	},
	
}






g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_BESMA_SECRET_HELL"],
	dungeonName 		= STR_ID_3501,
	dataFileName 		= "Dungeon_Besma_Secret_Hell.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],
	m_eDungeonType = DUNGEON_TYPE["DT_SECRET"],
	m_bRelativeMonsterLevel = TRUE,              --유저레벨 연동 던전

	requireDungeonID	= 0,	
	
	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES	

	m_DungeonDescription = STR_ID_19966,	
	
		
	-- 비밀던전인 경우에 요렇게 설정해줘야합니다	
	IS_HELL_MODE = TRUE,	
	EXTRA_REQUIRE_DUNGEON_ID =
	{
		DUNGEON_ID["DI_BESMA_DRAGON_ROAD_EXPERT"],
	    DUNGEON_ID["DI_BESMA_LAKE_EXPERT"],
	   -- DUNGEON_ID["DI_BESMA_MINE_EXPERT"],
	    DUNGEON_ID["DI_BESMA_MINE2_EXPERT"],
	    DUNGEON_ID["DI_BESMA_AIRSHIP_EXPERT"],
	    DUNGEON_ID["DI_BESMA_LAKE_NIGHT_EXPERT"],
	    DUNGEON_ID["DI_BESMA_DRAGON_NEST_EXPERT"],
	},
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   132120, 132117,},
		ELSWORD 	= 	{	111741, 111742, 111896, 111740,},
		AISHA 		= 	{	111746, 111747, 111897, 111745,},
		RENA 		= 	{	111751, 111752, 111898, 111750, },
		RAVEN		= 	{	111756, 111757, 111899, 111755,},
		EVE 		= 	{	111761, 111762, 111900, 111760,},
		CHUNG 		= 	{	111766, 111767, 111901, 111765,},
		ARA 		= 	{	112611, 112612, 112642, 112610,},
		--ELESIS 		= 	{	117208, 117209, 117212, 117207,},
	},
	
	requireItemID		= 132049,
	requireItemCount	= 1,
	m_MinLevel			= 50,
	m_MaxLevel			= 63,
	
	m_RequireItemLevel     = 85,


	
	
	m_TextureName	= "DLG_UI_Dungeon_Image06.dds",
	m_PieceName		= "DUNGEON_IMAGE_VESMA_SECRET",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_BESMA_HELL_BOSS"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_BESMA_Secret1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_BESMA_Secret2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.



	--m_Explanation		= STR_ID_3502,

	m_LocalStarPosX	= 217,
	m_LocalStarPosY	= 389,
	--m_LocalStarPosX	= 115,
	--m_LocalStarPosY	= 642,
	
	
    ENDING_SPEECH0 = 
	{
			
		ELSWORD = {

		{    STR_ID_3503,    },

		{    STR_ID_3504,    },

		{    STR_ID_3505,    },

		{    STR_ID_3506,    },
		
		{    STR_ID_3507,    },
		},

		AISHA = {

		{    STR_ID_3508,    },

		{    STR_ID_3509,    },

		{    STR_ID_3510,    },

		{    STR_ID_3511,    },
		
		{    STR_ID_3512 ,    },
		},

		RENA = {

		{    STR_ID_3513,    },

		{    STR_ID_3514,    },

		{    STR_ID_3515,    },

		{    STR_ID_3516,    },
		
		{    STR_ID_3517,    },
		},

		RAVEN = {

		{    STR_ID_3518,    },

		{    STR_ID_3519,    },

		{    STR_ID_3520,    },

		{    STR_ID_3521,    },
		
		{    STR_ID_3522,    },
		},
  													    		  				 
		EVE = 
		{
		    {
				STR_ID_3523,      
			},
		    { 
       			STR_ID_3524,   
			},
		    { 
       			STR_ID_3525,   
			},
	    },  
		CHUNG = { 

		{   STR_ID_9941, },

		{   STR_ID_9942, },

		{   STR_ID_9943, },

		{   STR_ID_9944, },
		},
		
		ARA = {

		{    STR_ID_21477,    },

		{    STR_ID_21478,    },

		{    STR_ID_21479,   },
		},
	},
}


---비밀던전 알테라--

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ALTERA_SECRET_COMMON"],
	dungeonName 		= STR_ID_3550,
	dataFileName 		= "Dungeon_Altera_Secret_Common.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],
	m_eDungeonType = DUNGEON_TYPE["DT_SECRET"],
	m_bRelativeMonsterLevel = TRUE,              --유저레벨 연동 던전


	requireDungeonID	= 0,

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES	
	
	requireItemID		= 109994,
	requireItemCount	= 1,
	
	m_MinLevel			= 50,
	m_MaxLevel			= 60,
	
	m_RequireItemLevel     = 70,
	
	m_fPoisonTimeLimit = 600,
	
	m_DungeonDescription = STR_ID_19967,
	
	-- 비밀던전인 경우에 요렇게 설정해줘야합니다
	IS_HELL_MODE = TRUE,
	EXTRA_REQUIRE_DUNGEON_ID =
	{
		DUNGEON_ID["DI_ALTERA_BATTLE_AIR_SHIP_EXPERT"],
		DUNGEON_ID["DI_ALTERA_PLAIN_RECYCLE_EXPERT"],
		DUNGEON_ID["DI_ALTERA_BELOW_TUNNEL_EXPERT"],
		DUNGEON_ID["DI_ALTERA_PLAIN_EXPERT"],		
		DUNGEON_ID["DI_ALTERA_NASOD_FACTORY_EXPERT"],
		DUNGEON_ID["DI_ALTERA_CORE_EXPERT"],		
	},

	
	

	m_TextureName		= "dlg_ui_dungeon_image04.dds",		
	m_PieceName			= "DUNGEON_IMAGE_ALTERA_SECRET",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_ALTERA_SECRET_BOSS"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_ALTERA_Secret1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_ALTERA_Secret2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.

	--m_Explanation		= STR_ID_3551,

	m_LocalStarPosX	= 568,
	m_LocalStarPosY	= 342,
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   132121, 132118,},
		ELSWORD 	= 	{	111774, 111773,},
		AISHA 		= 	{	111779, 111778, },
		RENA 		= 	{	111784, 111783, },
		RAVEN		= 	{	111789, 111788,},
		EVE 		= 	{	111794, 111793,},
		CHUNG 		= 	{	111799, 111798,},
		ARA 		= 	{	112624, 112623,},
		--ELESIS		= 	{	117223, 117222,},
	},

	ENDING_SPEECH0 = 
	{
			
		ELSWORD = {

		{    STR_ID_3552,    },

		{    STR_ID_3553,    },

		{    STR_ID_3554,    },

		{    STR_ID_3555,    },
		},

		AISHA = {

		{    STR_ID_3556,    },

		{    STR_ID_3557,    },

		{    STR_ID_3558,    },

		{    STR_ID_3559,    },
		},

		RENA = {

		{    STR_ID_3560,    },

		{    STR_ID_3561,    },

		{    STR_ID_3562,    },

		{    STR_ID_3563,    },
		},

		RAVEN = {

		{    STR_ID_3564,    },

		{    STR_ID_3565,    },

		{    STR_ID_3566,    },
		
		{    STR_ID_3567,    },
		},
		
		EVE = {

		{    STR_ID_3568,    },

		{    STR_ID_3569,    },

		{    STR_ID_3570,    },
		
		{    STR_ID_3571,    },
		},
		
		CHUNG = { 

		{   STR_ID_9964, },

		{   STR_ID_9965, },

		{   STR_ID_9966, },

		{   STR_ID_9967, },
		},
		
		ARA = {

		{    STR_ID_21480,   },

		{    STR_ID_21481,    },

		{    STR_ID_21482,   },
		},
  
	},
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_ALTERA_SECRET_HELL"],
	dungeonName 		= STR_ID_3550,
	dataFileName 		= "Dungeon_Altera_Secret_Hell.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],
	m_eDungeonType = DUNGEON_TYPE["DT_SECRET"],
	m_bRelativeMonsterLevel = TRUE,              --유저레벨 연동 던전


	requireDungeonID	= 0,

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES	
	
	requireItemID		= 132050,
	requireItemCount	= 1,
	
	m_MinLevel			= 50,
	m_MaxLevel			= 63,
	
	m_RequireItemLevel     = 85,
	
	m_fPoisonTimeLimit = 720,
	m_fExtraStagePoisonTimeLimit = 900,
	
	m_DungeonDescription = STR_ID_19967,
	
	-- 비밀던전인 경우에 요렇게 설정해줘야합니다
	IS_HELL_MODE = TRUE,
	EXTRA_REQUIRE_DUNGEON_ID =
	{
		DUNGEON_ID["DI_ALTERA_BATTLE_AIR_SHIP_EXPERT"],
		DUNGEON_ID["DI_ALTERA_PLAIN_RECYCLE_EXPERT"],
		DUNGEON_ID["DI_ALTERA_BELOW_TUNNEL_EXPERT"],
		DUNGEON_ID["DI_ALTERA_PLAIN_EXPERT"],		
		DUNGEON_ID["DI_ALTERA_NASOD_FACTORY_EXPERT"],
		DUNGEON_ID["DI_ALTERA_CORE_EXPERT"],		
	},
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   132121, 132118,},
		ELSWORD 	= 	{	111771, 111772, 111902, 111770,},
		AISHA 		= 	{	111776, 111777, 111903, 111775,},
		RENA 		= 	{	111781, 111782, 111904, 111780,},
		RAVEN		= 	{	111786, 111787, 111905, 111785,},
		EVE 		= 	{	111791, 111792, 111906, 111790,},
		CHUNG 		= 	{	111796, 111797, 111907, 111795,},
		ARA 		= 	{	112621, 112622, 112644, 112620,},
		--ELESIS 		= 	{	117220, 117221, 117224, 117219,},
	},

	m_TextureName		= "dlg_ui_dungeon_image04.dds",		
	m_PieceName			= "DUNGEON_IMAGE_ALTERA_SECRET",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_ALTERA_SECRET_BOSS"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_ALTERA_Secret1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_ALTERA_Secret2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.

	--m_Explanation		= STR_ID_3551,

	m_LocalStarPosX	= 568,
	m_LocalStarPosY	= 342,
	
	
	
	ENDING_SPEECH0 = 
	{
			
		ELSWORD = {

		{    STR_ID_3552,    },

		{    STR_ID_3553,    },

		{    STR_ID_3554,    },

		{    STR_ID_3555,    },
		},

		AISHA = {

		{    STR_ID_3556,    },

		{    STR_ID_3557,    },

		{    STR_ID_3558,    },

		{    STR_ID_3559,    },
		},

		RENA = {

		{    STR_ID_3560,    },

		{    STR_ID_3561,    },

		{    STR_ID_3562,    },

		{    STR_ID_3563,    },
		},

		RAVEN = {

		{    STR_ID_3564,    },

		{    STR_ID_3565,    },

		{    STR_ID_3566,    },
		
		{    STR_ID_3567,    },
		},
		
		EVE = {

		{    STR_ID_3568,    },

		{    STR_ID_3569,    },

		{    STR_ID_3570,    },
		
		{    STR_ID_3571,    },
		},
		
		ARA = {

		{    STR_ID_21480,   },

		{    STR_ID_21481,    },

		{    STR_ID_21482,   },
		},

  
	},
}

---------------------------------------------------------------------------
-- 루벤 개편된 엘의 나무
---------------------------------------------------------------------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_RUBEN_EL_TREE_NORMAL"],
	dungeonName 		= STR_ID_2825,
	dataFileName 		= "Dungeon_Ruben_El_Tree_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],
	normalOnly			= TRUE,			-- 난이도는 '보통'만 선택할 수 있는 던전임을 표시
                          
	m_MinLevel			= 2,
	m_MaxLevel			= 3,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 2,
	
	m_DungeonDescription =STR_ID_19926,
	
	m_TextureName	= "DLG_UI_Dungeon_Image01.dds",
	m_PieceName		= "DUNGEON_IMAGE_EL_TREE",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_RUBEN_EL_TREE_BOSS_STAGE"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_EL_TREE1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_EL_TREE2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.

	--m_Explanation			= STR_ID_2826,

	m_LocalStarPosX	= 462,
	m_LocalStarPosY	= 515,
	
	m_LocalQuestPosX = 0,	
	m_LocalQuestPosY = -160,

	AUTO_DUNGEON_ROOM_TITLE =
	{
		STR_ID_5218,
		STR_ID_5219,
		STR_ID_5220,
		STR_ID_5221,
	},
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{ 30163, 30165, },
	},
	
	ENDING_SPEECH0 = 
				{
								
					ELSWORD = {

					{   STR_ID_2836,    },

					{   STR_ID_2837,    },

					{   STR_ID_2838,    },

					{   STR_ID_2839,    },
					},
					  

					AISHA = { 

					{   STR_ID_2840,    },

					{   STR_ID_2841,    },

					{   STR_ID_2842,    },

					{   STR_ID_2843,    },
					},
					  

					RENA = {

					{   STR_ID_2844,    },

					{   STR_ID_2845,    },

					{   STR_ID_2846,    },

					{   STR_ID_2847,    },
					},
					  

					RAVEN = {

					{   STR_ID_2848,    },

					{   STR_ID_2849,    },

					{   STR_ID_2850,    },

					{   STR_ID_2851,    },
					},
					  				 
					EVE = 
					{
						{
							STR_ID_2852,      
						},
						{ 
       						STR_ID_2853,        
						},
						{
       						STR_ID_2854,                     
						},
						{
     						STR_ID_2855,     		
						},
					}, 
					
					CHUNG = 
					{
						{
							STR_ID_9880,      
						},
						{ 
       						STR_ID_9881,        
						},
						{
       						STR_ID_9882,                     
						},
						{
     						STR_ID_9883,     		
						},
					}, 
					
					ARA = 
					{
						{
							STR_ID_21349,      
						},
						{ 
       						STR_ID_21350,       
						},
						{
       						STR_ID_21351,                   
						},
						{
     						STR_ID_21352,     		
						},
					}, 	
				},
}

---------------------------------------------------------------------------
-- 루벤 개편된 숲속의 폐허
---------------------------------------------------------------------------

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_RUBEN_RUIN_OF_ELF_NORMAL"],
	dungeonName 		= STR_ID_5185,
	dataFileName 		= "Dungeon_Ruben_Ruin_of_elf_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],


	--requireDungeonID	= DUNGEON_ID["DI_RUBEN_EL_TREE_NORMAL"],
	
	EXTRA_REQUIRE_DUNGEON_ID =
				{
					DUNGEON_ID["DI_RUBEN_EL_TREE_NORMAL"],
				},

	m_MinLevel			= 4,
	m_MaxLevel			= 6,
	
	m_RequireItemLevel     = 0,
	
	
	m_NPCLevel			= 4,

	m_DungeonDescription = STR_ID_19927,

	m_TextureName	= "DLG_UI_Dungeon_Image06.dds",
	m_PieceName		= "RUINS",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_RUBEN_RUIN_OF_ELF_BOSS_STAGE"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_EL_TREE_TWILLIGHT1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_EL_TREE_TWILLIGHT2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	

	m_LocalStarPosX	= 610,
	m_LocalStarPosY	= 326,
	
	m_LocalQuestPosX = 0,	
	m_LocalQuestPosY = -160,

	
	AUTO_DUNGEON_ROOM_TITLE =
	{
		STR_ID_5222,
		STR_ID_5223,
		STR_ID_5224,
		STR_ID_5225,
	},
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{30224,},
	},
	
	ENDING_SPEECH0 = 
				{
						
					ELSWORD = {

					{   STR_ID_2805,     },

					{   STR_ID_2806,     },

					{   STR_ID_2807,     },

					{   STR_ID_2808,     },
					},
					  

					AISHA = { 

					{   STR_ID_2809,    },

					{   STR_ID_2810,    },

					{   STR_ID_2811,    },

					{   STR_ID_2812,    },
					},
					  

					RENA = {

					{   STR_ID_2813,     },

					{   STR_ID_2814,     },

					{   STR_ID_2815,     },

					{   STR_ID_2816,     },
					},
					  

					RAVEN = {

					{   STR_ID_2817,  	},

					{   STR_ID_2818, 	},

					{   STR_ID_2819,  	},

					{   STR_ID_2820,    },
					},
										 
					EVE = 
					{
						{
							STR_ID_2821,      
						},
						{ 
       						STR_ID_2822,        
						},
						{
       						STR_ID_2823,                     
						},
						{
     						STR_ID_2824,     		
						},
					}, 
					
					CHUNG = 
					{
						{
							STR_ID_9884,      
						},
						{ 
       						STR_ID_9885,        
						},
						{
       						STR_ID_9886,                     
						},
					},
					
					ARA = 
					{
						{
							STR_ID_21353,      
						},
						{ 
       						STR_ID_21354,        
						},
						{
       						STR_ID_21355,                     
						},
						{
     						STR_ID_21356,    		
						},
					}, 
				},			
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_RUBEN_RUIN_OF_ELF_HARD"],
	dungeonName 		= STR_ID_5185,
	dataFileName 		= "Dungeon_Ruben_Ruin_of_elf_Hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= DUNGEON_ID["DI_RUBEN_RUIN_OF_ELF_NORMAL"],

	m_MinLevel			= 4,
	m_MaxLevel			= 6,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 5,
	
	m_DungeonDescription = STR_ID_19927,
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_RUBEN_RUIN_OF_ELF_BOSS_STAGE"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_EL_TREE_TWILLIGHT1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_EL_TREE_TWILLIGHT2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{30224,},
	},
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_RUBEN_RUIN_OF_ELF_EXPERT"],
	dungeonName 		= STR_ID_5185,
	dataFileName 		= "Dungeon_Ruben_Ruin_of_elf_Expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= DUNGEON_ID["DI_RUBEN_RUIN_OF_ELF_HARD"],

	m_MinLevel			= 4,
	m_MaxLevel			= 6,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 6,
	
	m_DungeonDescription = STR_ID_19927,
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_RUBEN_RUIN_OF_ELF_BOSS_STAGE"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_EL_TREE_TWILLIGHT1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_EL_TREE_TWILLIGHT2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{30224,},
	},
}
---------------------------------------------------------------------------
-- 루벤 개편된 하얀 안개 습지
---------------------------------------------------------------------------

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_RUBEN_SWAMP_NORMAL"],
	dungeonName 		= STR_ID_5186,
	dataFileName 		= "Dungeon_Ruben_Swamp_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],


	--requireDungeonID	= DUNGEON_ID["DI_RUBEN_RUIN_OF_ELF_NORMAL"],
	
	EXTRA_REQUIRE_DUNGEON_ID =
				{
					DUNGEON_ID["DI_RUBEN_EL_TREE_NORMAL"],
					DUNGEON_ID["DI_RUBEN_RUIN_OF_ELF_NORMAL"],
				},

	m_MinLevel			= 6,
	m_MaxLevel			= 8,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 6,
	
	m_DungeonDescription =STR_ID_19928,

	
	m_TextureName	= "DLG_UI_Dungeon_Image06.dds",
	m_PieceName		= "SWAMP",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_RUBEN_SWAMP_BOSS_STAGE"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_EL_TREE_NORTH1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_EL_TREE_NORTH2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	

	m_LocalStarPosX	= 323,
	m_LocalStarPosY	= 349,
	
	m_LocalQuestPosX = 0,	
	m_LocalQuestPosY = -160,

	AUTO_DUNGEON_ROOM_TITLE =
	{
		STR_ID_5226,
		STR_ID_5227,
		STR_ID_5228,
		STR_ID_5221,
	},
	
	BOSS_DROP_ITEM =
	{
		RAVEN		= 	{30197,},
	},
	
	ENDING_SPEECH0 = 
				{
					ELSWORD = {

					{    STR_ID_2922,       },

					{    STR_ID_2923,       },

					{    STR_ID_2924,       },

					{    STR_ID_2925,       },

					{    STR_ID_2926,       },
					},

					AISHA = { 

					{    STR_ID_2927,       },

					{    STR_ID_2928,       },

					{    STR_ID_2929,       },

					{    STR_ID_2930,       },
					},
					  

					RENA = {

					{    STR_ID_2931,       },

					{    STR_ID_2932,       },

					{    STR_ID_2933,       },

					{    STR_ID_2934,       },
					},
					  

					RAVEN = {

					{    STR_ID_2935,       },

					{    STR_ID_2936,       },

					{    STR_ID_2937,       },

					{    STR_ID_2938,       },
					},
			    		  				 
					EVE = 
					{
						{
							STR_ID_2939,      
						},
						{ 
       						STR_ID_2940,        
						},
						{
       						STR_ID_2941,                     
						},
						{
     						STR_ID_2942,     		
						},
					}, 
					
					CHUNG = 
					{
						{
							STR_ID_9888,      
						},
						{ 
       						STR_ID_9889,        
						},
						{
       						STR_ID_9890,                     
						},
					}, 
					ARA = 
					{
						{
							STR_ID_21357,      
						},
						{ 
       						STR_ID_21358,        
						},
						{
       						STR_ID_21359,                   
						},
						{
       						STR_ID_21360,                
						},
					}, 
				},

}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_RUBEN_SWAMP_HARD"],
	dungeonName 		= STR_ID_5186,
	dataFileName 		= "Dungeon_Ruben_Swamp_Hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= DUNGEON_ID["DI_RUBEN_SWAMP_NORMAL"],

	m_MinLevel			= 6,
	m_MaxLevel			= 8,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 7,
	
	m_DungeonDescription =STR_ID_19928,

	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_RUBEN_SWAMP_BOSS_STAGE"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_EL_TREE_NORTH1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_EL_TREE_NORTH2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{30164,},
		RAVEN		= 	{30197,},
	},
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_RUBEN_SWAMP_EXPERT"],
	dungeonName 		= STR_ID_5186,
	dataFileName 		= "Dungeon_Ruben_Swamp_Expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= DUNGEON_ID["DI_RUBEN_SWAMP_HARD"],

	m_MinLevel			= 6,
	m_MaxLevel			= 8,
	
	m_RequireItemLevel     = 0,
	
	m_NPCLevel			= 8,
	
	m_DungeonDescription =STR_ID_19928,

	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_RUBEN_SWAMP_BOSS_STAGE"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_EL_TREE_NORTH1.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_EL_TREE_NORTH2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{30164,},
		RAVEN		= 	{30197,},
	},
}


-------------------------------------------------------------------------------------
-- 하멜 던전
-- 레시암 외각
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_HAMEL_OUTSKIRTS_RESIAM_NORMAL"],
	dungeonName 		= STR_ID_11048,
	dataFileName 		= "Dungeon_Hamel_Outskirts_Resiam_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

	--requireDungeonID	= DUNGEON_ID["DI_VELDER_GATE_NORMAL"],
	
	--[[
	EXTRA_REQUIRE_DUNGEON_ID =
				{
					DUNGEON_ID["DI_VELDER_THIRD_DWELLING_NORMAL"],
					DUNGEON_ID["DI_VELDER_BRIDGE_HOPE_NORMAL"],
					DUNGEON_ID["DI_VELDER_PALACE_ENTRANCE_NORMAL"],
					DUNGEON_ID["DI_VELDER_BRIDGE_BUNNING_NORMAL"],
					DUNGEON_ID["DI_VELDER_MARKET_NORMAL"],
					DUNGEON_ID["DI_VELDER_GATE_NORMAL"],
				},
	--]]
	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 52,
	m_MaxLevel			= 54,
	
	m_RequireItemLevel     = 42,
	
	m_NPCLevel			= 52,
	
	m_DungeonDescription = STR_ID_19958,


	m_TextureName		= "dlg_ui_dungeon_image07.dds",
	m_PieceName			= "OUTSKIRTS_RESIAM",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_HAMEL_RESIAM_BOSS_STAGE"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_OUTSKIRTS_RESIAM01.dds", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_OUTSKIRTS_RESIAM02.dds", -- 던전별 로딩화면. 해당 파일명을 적어주세요.


	m_LocalStarPosX	= 395,
	m_LocalStarPosY	= 560,
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   30190, 115570, 115770, },
	},

	AUTO_DUNGEON_ROOM_TITLE =
	{
		STR_ID_11071,	
		STR_ID_11072,	
		STR_ID_11073,	
		STR_ID_11074,	

	},

	ENDING_SPEECH0 =
	{
		ELSWORD = 
		{
			{	STR_ID_11053,	},
			{	STR_ID_11054,	},
			{	STR_ID_11055,	},

		},

		AISHA = 
		{
			{	STR_ID_11059,	},
			{	STR_ID_11060,	},
			{	STR_ID_11061,	},

  		},

		RENA = 
		{
			{	STR_ID_11056,	},
			{	STR_ID_11057,	},
			{	STR_ID_11058,	},

		},

		RAVEN = 
		{
			{	STR_ID_11062,	},
			{	STR_ID_11063,	},
			{	STR_ID_11064,	},

		},

		EVE = 
		{
			{	STR_ID_11065,	},
			{	STR_ID_11066,	},
			{	STR_ID_11067,	},

		},
		
		CHUNG = 
		{
			{	STR_ID_11068,	},
			{	STR_ID_11069,	},
			{	STR_ID_11070,	},

		},
		
		ARA = 
		{
			{	STR_ID_21453,	},
			{	STR_ID_21454,	},
			{	STR_ID_21455,	},

		},
	},
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_HAMEL_OUTSKIRTS_RESIAM_HARD"],
	dungeonName 		= STR_ID_11048,
	dataFileName 		= "Dungeon_Hamel_Outskirts_Resiam_Hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= DUNGEON_ID["DI_HAMEL_OUTSKIRTS_RESIAM_NORMAL"],

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 52,
	m_MaxLevel			= 54,
	
	m_RequireItemLevel     = 42,
	
	m_NPCLevel			= 53,
	
	m_DungeonDescription = STR_ID_19958,

	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_HAMEL_RESIAM_BOSS_STAGE"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_OUTSKIRTS_RESIAM01.dds", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_OUTSKIRTS_RESIAM02.dds", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   30190, 115570, 115770, },
		CHUNG 		= 	{	30216, },
	},
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_HAMEL_OUTSKIRTS_RESIAM_EXPERT"],
	dungeonName 		= STR_ID_11048,
	dataFileName 		= "Dungeon_Hamel_Outskirts_Resiam_Expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= DUNGEON_ID["DI_HAMEL_OUTSKIRTS_RESIAM_HARD"],

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 52,
	m_MaxLevel			= 54,
	
	m_RequireItemLevel     = 42,
	
	m_NPCLevel			= 54,
	
	m_DungeonDescription = STR_ID_19958,

	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_HAMEL_RESIAM_BOSS_STAGE"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_OUTSKIRTS_RESIAM01.dds", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_OUTSKIRTS_RESIAM02.dds", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   30190, 115570, 115770, },
		CHUNG 		= 	{	30216, },
	},
}



-------------------------------------------------------------------------------------
-- 수중도시 레시암
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_HAMEL_BREAK_RESIAM_NORMAL"],
	dungeonName 		= STR_ID_11049,
	
	dataFileName 		= "Dungeon_Hamel_Break_Resiam_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

	--requireDungeonID	= DUNGEON_ID["DI_HAMEL_OUTSKIRTS_RESIAM_NORMAL"],
	
	EXTRA_REQUIRE_DUNGEON_ID =
				{
					DUNGEON_ID["DI_HAMEL_OUTSKIRTS_RESIAM_NORMAL"],
				},

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 53,
	m_MaxLevel			= 55,
	
	m_RequireItemLevel     = 43,
	
	m_NPCLevel			= 53,
	
	m_DungeonDescription = STR_ID_19959,


	m_TextureName		= "dlg_ui_dungeon_image07.dds",
	m_PieceName			= "BREAK_RESIAM",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_HAMEL_RESIAM_UNDERWATER_BOSS_STAGE"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_BREAK_RESIAM01.dds", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_BREAK_RESIAM02.dds", -- 던전별 로딩화면. 해당 파일명을 적어주세요.


	m_LocalStarPosX	= 615,
	m_LocalStarPosY	= 581,

	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   30191, 115550, 115750, },
	},

	AUTO_DUNGEON_ROOM_TITLE =
	{
		STR_ID_11093,	
		STR_ID_11094,	
		STR_ID_11095,	
		STR_ID_11096,	
		STR_ID_11097,	

	},

	ENDING_SPEECH0 =
	{
		ELSWORD = 
		{
			{	STR_ID_11075,	},
			{	STR_ID_11076,	},
			{	STR_ID_11077,	},

		},

		AISHA = 
		{
			{	STR_ID_11081,	},
			{	STR_ID_11082,	},
			{	STR_ID_11083,	},

  		},

		RENA = 
		{
			{	STR_ID_11078,	},
			{	STR_ID_11079,	},
			{	STR_ID_11080,	},

		},

		RAVEN = 
		{
			{	STR_ID_11084,	},
			{	STR_ID_11085,	},
			{	STR_ID_11086,	},

		},

		EVE = 
		{
			{	STR_ID_11087,	},
			{	STR_ID_11088,	},
			{	STR_ID_11089,	},

		},
		
		CHUNG = 
		{
			{	STR_ID_11090,	},
			{	STR_ID_11091,	},
			{	STR_ID_11092,	},

		},
		
		ARA = 
		{
			{	STR_ID_21456,	},
			{	STR_ID_21457,	},
			{	STR_ID_21458,	},

		},
	},
}




g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_HAMEL_BREAK_RESIAM_HARD"],
	dungeonName 		= STR_ID_11049,
	dataFileName 		= "Dungeon_Hamel_Break_Resiam_Hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= DUNGEON_ID["DI_HAMEL_BREAK_RESIAM_NORMAL"],

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 53,
	m_MaxLevel			= 55,
	
	m_RequireItemLevel     = 43,
	
	m_NPCLevel			= 54,
	
	m_DungeonDescription = STR_ID_19959,

	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_HAMEL_RESIAM_UNDERWATER_BOSS_STAGE"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_BREAK_RESIAM01.dds", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_BREAK_RESIAM02.dds", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   30191, 115550, 115750, }
	},
}
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_HAMEL_BREAK_RESIAM_EXPERT"],
	dungeonName 		= STR_ID_11049,
	dataFileName 		= "Dungeon_Hamel_Break_Resiam_Expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= DUNGEON_ID["DI_HAMEL_BREAK_RESIAM_HARD"],

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 53,
	m_MaxLevel			= 55,
	
	m_RequireItemLevel     = 43,
	
	m_NPCLevel			= 55,
	
	m_DungeonDescription = STR_ID_19959,

	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_HAMEL_RESIAM_UNDERWATER_BOSS_STAGE"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_BREAK_RESIAM01.dds", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_BREAK_RESIAM02.dds", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   30191, 115550, 115750, }
	},
}
-------------------------------------------------------------------------------------
-- 고대 수로
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_HAMEL_ANCIENT_WATERWAY_NORMAL"],
	dungeonName 		= STR_ID_11050,
	dataFileName 		= "Dungeon_Hamel_Waterway_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

	--requireDungeonID	= DUNGEON_ID["DI_HAMEL_BREAK_RESIAM_NORMAL"],
	
	EXTRA_REQUIRE_DUNGEON_ID =
				{
					DUNGEON_ID["DI_HAMEL_OUTSKIRTS_RESIAM_NORMAL"],
					DUNGEON_ID["DI_HAMEL_BREAK_RESIAM_NORMAL"],
				},

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 54,
	m_MaxLevel			= 56,
	
	m_RequireItemLevel     = 44,
	
	m_NPCLevel			= 54,
	
	m_DungeonDescription = STR_ID_19960,

	m_TextureName		= "dlg_ui_dungeon_image08.dds",
	m_PieceName			= "ANCIENT_WATERWAY",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_HAMEL_WATERWAY_BOSS_STAGE"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_WATERWAY01.dds", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_WATERWAY02.dds", -- 던전별 로딩화면. 해당 파일명을 적어주세요.


	m_LocalStarPosX	= 811,
	m_LocalStarPosY	= 539,
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   30192, 115560, 115760, 115540, 115740,},
	},

	AUTO_DUNGEON_ROOM_TITLE =
	{
		STR_ID_11116,	
		STR_ID_11117,	
		STR_ID_11118,	
		STR_ID_11119,	
		STR_ID_11120,	

	},

	ENDING_SPEECH0 =
	{
		ELSWORD = 
		{
			{	STR_ID_11098,	},
			{	STR_ID_11099,	},
			{	STR_ID_11100,	},

		},

		AISHA = 
		{
			{	STR_ID_11104,	},
			{	STR_ID_11105,	},
			{	STR_ID_11106,	},

  		},

		RENA = 
		{
			{	STR_ID_11101,	},
			{	STR_ID_11102,	},
			{	STR_ID_11103,	},

		},

		RAVEN = 
		{
			{	STR_ID_11107,	},
			{	STR_ID_11108,	},
			{	STR_ID_11109,	},

		},

		EVE = 
		{
			{	STR_ID_11110,	},
			{	STR_ID_11111,	},
			{	STR_ID_11112,	},

		},
		
		CHUNG = 
		{
			{	STR_ID_11113,	},
			{	STR_ID_11114,	},
			{	STR_ID_11115,	},

		},
		
		ARA = 
		{
			{	STR_ID_21459,	},
			{	STR_ID_21460,	},
			{	STR_ID_21461,	},
		},
	},
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_HAMEL_ANCIENT_WATERWAY_HARD"],
	dungeonName 		= STR_ID_11050,
	dataFileName 		= "Dungeon_Hamel_Waterway_Hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= DUNGEON_ID["DI_HAMEL_ANCIENT_WATERWAY_NORMAL"],

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 54,
	m_MaxLevel			= 56,
	
	m_RequireItemLevel     = 44,
	
	m_NPCLevel			= 55,
	
	m_DungeonDescription = STR_ID_19960,

	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_HAMEL_WATERWAY_BOSS_STAGE"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_WATERWAY01.dds", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_WATERWAY02.dds", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   30192, 115560, 115760, 115540, 115740,},
		RENA 		= 	{	30218, },
	},
}
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_HAMEL_ANCIENT_WATERWAY_EXPERT"],
	dungeonName 		= STR_ID_11050,
	dataFileName 		= "Dungeon_Hamel_Waterway_Expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= DUNGEON_ID["DI_HAMEL_ANCIENT_WATERWAY_HARD"],

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 54,
	m_MaxLevel			= 56,
	
	m_RequireItemLevel     = 44,
	
	m_NPCLevel			= 56,
	
	m_DungeonDescription = STR_ID_19960,

	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_HAMEL_WATERWAY_BOSS_STAGE"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_WATERWAY01.dds", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_WATERWAY02.dds", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   30192, 115560, 115760, 115540, 115740,},
		RENA 		= 	{	30218, },
	},
}

-------------------------------------------------------------------------------------
-- 고대 수로 외곽
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_HAMEL_ANCIENT_WATERWAY_CORE_NORMAL"],
	dungeonName 		= STR_ID_11051,
	dataFileName 		= "Dungeon_Hamel_Waterway_Core_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

	--requireDungeonID	= DUNGEON_ID["DI_HAMEL_ANCIENT_WATERWAY_NORMAL"],
	
	EXTRA_REQUIRE_DUNGEON_ID =
				{
					DUNGEON_ID["DI_HAMEL_OUTSKIRTS_RESIAM_NORMAL"],
					DUNGEON_ID["DI_HAMEL_BREAK_RESIAM_NORMAL"],
					DUNGEON_ID["DI_HAMEL_ANCIENT_WATERWAY_NORMAL"],
				},

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 55,
	m_MaxLevel			= 57,
	
	m_RequireItemLevel     = 45,
	
	m_NPCLevel			= 55,
	
	m_DungeonDescription = STR_ID_19961,

	m_TextureName		= "dlg_ui_dungeon_image08.dds",
	m_PieceName			= "ANCIENT_WATERWAY_CORE",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_HAMEL_WATERWAY_CORE_BOSS_STAGE"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_WATERWAY_CORE01.dds", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_WATERWAY_CORE02.dds", -- 던전별 로딩화면. 해당 파일명을 적어주세요.


	m_LocalStarPosX	= 841,
	m_LocalStarPosY	= 375,
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   30193,},
		ELSWORD 	= 	{	115530, 115730, },
		AISHA 		= 	{	115531, 115731, },
		RENA 		= 	{	115532, 115732, },
		RAVEN		= 	{	115533, 115733, },
		EVE 		= 	{	115534, 115734, },
		CHUNG 		= 	{	115535, 115735, },
		ARA 		= 	{	115536, 115736, },
		--ELESIS 		= 	{	115537, 115737, },
	},

	AUTO_DUNGEON_ROOM_TITLE =
	{
		STR_ID_11139,	
		STR_ID_11140,	
		STR_ID_11141,	
		STR_ID_11142,	
		STR_ID_11143,	

	},

	ENDING_SPEECH0 =
	{
		ELSWORD = 
		{
			{	STR_ID_11121,	},
			{	STR_ID_11122,	},
			{	STR_ID_11123,	},

		},

		AISHA = 
		{
			{	STR_ID_11127,	},
			{	STR_ID_11128,	},
			{	STR_ID_11129,	},

  		},

		RENA = 
		{
			{	STR_ID_11124,	},
			{	STR_ID_11125,	},
			{	STR_ID_11126,	},

		},

		RAVEN = 
		{
			{	STR_ID_11130,	},
			{	STR_ID_11131,	},
			{	STR_ID_11132,	},

		},

		EVE = 
		{
			{	STR_ID_11133,	},
			{	STR_ID_11134,	},
			{	STR_ID_11135,	},

		},
		
		CHUNG = 
		{
			{	STR_ID_11136,	},
			{	STR_ID_11137,	},
			{	STR_ID_11138,	},

		},
		
		ARA = 
		{
			{	STR_ID_21462,	},
			{	STR_ID_21463,	},
			{	STR_ID_21464,	},
		},
	},
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_HAMEL_ANCIENT_WATERWAY_CORE_HARD"],
	dungeonName 		= STR_ID_11051,
	dataFileName 		= "Dungeon_Hamel_Waterway_Core_Hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= DUNGEON_ID["DI_HAMEL_ANCIENT_WATERWAY_CORE_NORMAL"],

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 55,
	m_MaxLevel			= 57,
	
	m_RequireItemLevel     = 45,
	
	m_NPCLevel			= 56,
	
	m_DungeonDescription = STR_ID_19961,

	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_HAMEL_WATERWAY_CORE_BOSS_STAGE"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_WATERWAY_CORE01.dds", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_WATERWAY_CORE02.dds", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   30193,},
		ELSWORD 	= 	{	115530, 115730, },
		AISHA 		= 	{	115531, 115731, },
		RENA 		= 	{	115532, 115732, },
		RAVEN		= 	{	30235, 115533, 115733, },
		EVE 		= 	{	115534, 115734, },
		CHUNG 		= 	{	115535, 115735, },
		ARA 		= 	{	115536, 115736, },
		--ELESIS 		= 	{	115537, 115737, },
	},
}
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_HAMEL_ANCIENT_WATERWAY_CORE_EXPERT"],
	dungeonName 		= STR_ID_11051,
	dataFileName 		= "Dungeon_Hamel_Waterway_Core_Expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= DUNGEON_ID["DI_HAMEL_ANCIENT_WATERWAY_CORE_HARD"],

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 55,
	m_MaxLevel			= 57,
	
	m_RequireItemLevel     = 45,
	
	m_NPCLevel			= 57,
	
	m_DungeonDescription = STR_ID_19961,

	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_HAMEL_WATERWAY_CORE_BOSS_STAGE"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_WATERWAY_CORE01.dds", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_WATERWAY_CORE02.dds", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   30193,},
		ELSWORD 	= 	{	115530, 115730, },
		AISHA 		= 	{	115531, 115731, },
		RENA 		= 	{	115532, 115732, },
		RAVEN		= 	{	30235, 115533, 115733, },
		EVE 		= 	{	115534, 115734, },
		CHUNG 		= 	{	115535, 115735, },
		ARA 		= 	{	115536, 115736, },
		--ELESIS 		= 	{	115537, 115737, },
	},
}

-----------------------------------------------------------디펜스------------
------------- 디펜스 던전(엘더)---------------------

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_DEFENCE_DUNGEON_ELDER_NORMAL"],
	dungeonName 		= STR_ID_11495,
	dataFileName 		= "Dungeon_Defence_Normal.lua",
	
	 --m_bRelativeMonsterLevel = TRUE,
	-- m_eDungeonType 			= DUNGEON_TYPE["DT_HENIR"],
	
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],
	m_MinLevel			= 1,
	m_MaxLevel			= 60,
	
	m_RequireItemLevel     = 0,
	
	m_DungeonDescription = STR_ID_19969,

	m_TextureName		= "DLG_UI_Dungeon_Image08.dds",
	m_PieceName			= "Event_dungeon",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_DEFENCE_DUNGEON_NORMAL_STAGE"],

	m_LoadingScreenFileName	= "HQ_LoadingDungeon_Gate_of_darkness01.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_Gate_of_darkness02.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.

	--m_LocalStarPosX	= 314-30,
	--m_LocalStarPosY	= 150,
	
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{ 111383, 78600,},
	},
	
	
	AUTO_DUNGEON_ROOM_TITLE = --자동파티 타이틀--
	{
		STR_ID_11554,
		STR_ID_11555,
		STR_ID_11556,
		STR_ID_11557,
	},
	
	ENDING_SPEECH0 = 
	{			
		ELSWORD = 
		{
			{   STR_ID_11558,   },
			{   STR_ID_11559,   },
		},
		AISHA = 
		{
			{   STR_ID_11560,   },
			{   STR_ID_11561,   },
		},
		RENA = 
		{
			{   STR_ID_11562,   },
			{   STR_ID_11563,   },
		},
		
		RAVEN = 
		{
			{   STR_ID_11564, },
			{   STR_ID_11565, },
		},								    		  				 
		EVE = 
		{
		    {	STR_ID_11566,      },
		    { 	STR_ID_11567,      },
		},	
		
		CHUNG = 
		{
			{	STR_ID_11568,	},
			{	STR_ID_11569,	},
		},	
		
		ARA = 
		{
			{	STR_ID_21486,	},
			{	STR_ID_21487,	},
		},
		ELESIS =
		{
               {STR_ID_26067,},
               {STR_ID_26068,},
		},
	},

	-- 어둠의 문 입장 대사
	ENDING_SPEECH1 =
	{
		ELSWORD =
		{
			{   STR_ID_24073,   },
		},

		AISHA =
		{
			{   STR_ID_24074,   },
		},

		RENA =
		{
			{   STR_ID_24075,   },
		},

		RAVEN =
		{
			{   STR_ID_24076, 	},
		},

		EVE =
		{
			{   STR_ID_24077,   },
		},

		CHUNG =
		{
			{   STR_ID_24078,   },
		},

		ARA =
		{
			{   STR_ID_24079,   },
		},
		ELESIS =
		{
               {STR_ID_26069,},
		},
	},	
}



g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_DEFENCE_DUNGEON_ELDER_HARD"],
	dungeonName 		= STR_ID_11495,
	dataFileName 		= "Dungeon_Defence_Hard.lua",
	
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],
	m_MinLevel			= 1,
	m_MaxLevel			= 60,
	
	m_RequireItemLevel     = 0,
	
	m_DungeonDescription = STR_ID_19969,
	
	--requireDungeonID	= DUNGEON_ID["DI_DEFENCE_DUNGEON_ELDER_NORMAL"],
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_DEFENCE_DUNGEON_HARD_STAGE"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeonGate_defence01.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeonGate_defence02.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{ 111383, 78600,},
	},
}



g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_DEFENCE_DUNGEON_ELDER_EXPERT"],
	dungeonName 		= STR_ID_11495,
	dataFileName 		= "Dungeon_Defence_Expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	--requireDungeonID	= DUNGEON_ID["DI_DEFENCE_DUNGEON_ELDER_HARD"],
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_DEFENCE_DUNGEON_EXPERT_STAGE"],

	m_MinLevel			= 1,
	m_MaxLevel			= 60,
	
	m_RequireItemLevel     = 0,
	
	m_DungeonDescription = STR_ID_19969,

	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_DEFENCE_DUNGEON_EXPERT_STAGE"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeonGate_defence01.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeonGate_defence02.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{ 111383, 78600,},
	},
}

-------------------------------------------------------------------------------------------------------------------디펜스 던전 끝 

--{{ 마그만타의 동굴 ----
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_HAMEL_CAVE_OF_MAGMANTA_NORMAL"],
	dungeonName 		= STR_ID_13415,
	dataFileName 		= "Dungeon_Hamel_Cave_Of_Magmanta_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

	--requireDungeonID	= DUNGEON_ID["DI_HAMEL_ANCIENT_WATERWAY_CORE_NORMAL"],
	
	EXTRA_REQUIRE_DUNGEON_ID =
				{
					DUNGEON_ID["DI_HAMEL_OUTSKIRTS_RESIAM_NORMAL"],
					DUNGEON_ID["DI_HAMEL_BREAK_RESIAM_NORMAL"],
					DUNGEON_ID["DI_HAMEL_ANCIENT_WATERWAY_NORMAL"],
					DUNGEON_ID["DI_HAMEL_ANCIENT_WATERWAY_CORE_NORMAL"],
				},

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 56,
	m_MaxLevel			= 58,
	
	m_RequireItemLevel     = 46,
	
	m_NPCLevel			= 56,
	
	m_DungeonDescription = STR_ID_19962,

	m_TextureName		= "dlg_ui_dungeon_image08.dds",
	m_PieceName			= "HAMEL_CAVE_OF_MAGMANTA",
	
	
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_HAMEL_CAVE_OF_MAGMANTA_BOSS_STAGE"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_CAVE_OF_MAGMANTA01.dds", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_CAVE_OF_MAGMANTA02.dds", -- 던전별 로딩화면. 해당 파일명을 적어주세요.


	m_LocalStarPosX	= 665,
	m_LocalStarPosY	= 273,
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   30196, 115960, 116160, 115940, 116140,},
		RENA 		= 	{	30231, },
		EVE 		= 	{	30230, },
		--ELESIS 		= 	{	30280, },
	},
	
	AUTO_DUNGEON_ROOM_TITLE =
	{
		STR_ID_13402,	
		STR_ID_13403,	
		STR_ID_13404,	
		STR_ID_13405,		
	},

	ENDING_SPEECH0 =
	{
		ELSWORD = 
		{
			{	STR_ID_13348,	},
			{	STR_ID_13349,	},
			{	STR_ID_13350,	},

		},

		AISHA = 
		{
			{	STR_ID_13354,	},
			{	STR_ID_13355,	},
			{	STR_ID_13356,	},

  		},

		RENA = 
		{
			{	STR_ID_13351,	},
			{	STR_ID_13352,	},
			{	STR_ID_13353,	},

		},

		RAVEN = 
		{
			{	STR_ID_13357,	},
			{	STR_ID_13358,	},
			{	STR_ID_13359,	},

		},

		EVE = 
		{
			{	STR_ID_13360,	},
			{	STR_ID_13361,	},
			{	STR_ID_13362,	},

		},
		
		CHUNG = 
		{
			{	STR_ID_13363,	},
			{	STR_ID_13364,	},
			{	STR_ID_13365,	},

		},
		
		ARA = 
		{
			{	STR_ID_21465,	},
			{	STR_ID_21466,	},
			{	STR_ID_21467,	},

		},
	},
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_HAMEL_CAVE_OF_MAGMANTA_HARD"],
	dungeonName 		= STR_ID_13415,
	dataFileName 		= "Dungeon_Hamel_Cave_Of_Magmanta_Hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= DUNGEON_ID["DI_HAMEL_CAVE_OF_MAGMANTA_NORMAL"],

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 56,
	m_MaxLevel			= 58,
	
	m_RequireItemLevel     = 46,
	
	m_NPCLevel			= 57,
	
	m_DungeonDescription = STR_ID_19962,

	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_HAMEL_CAVE_OF_MAGMANTA_BOSS_STAGE"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_CAVE_OF_MAGMANTA01.dds", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_CAVE_OF_MAGMANTA02.dds", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   30196, 115960, 116160, 115940, 116140,},
		RENA 		= 	{	30231, },
		EVE 		= 	{	30230, },
		CHUNG 		= 	{	30234, },
		--ELESIS 		= 	{	30280, 30281, },
	},
}
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_HAMEL_CAVE_OF_MAGMANTA_EXPERT"],
	dungeonName 		= STR_ID_13415,
	dataFileName 		= "Dungeon_Hamel_Cave_Of_Magmanta_Expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= DUNGEON_ID["DI_HAMEL_CAVE_OF_MAGMANTA_HARD"],

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 56,
	m_MaxLevel			= 58,
	
	m_RequireItemLevel     = 46,
	
	m_NPCLevel			= 58,
	
	m_DungeonDescription = STR_ID_19962,

	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_HAMEL_CAVE_OF_MAGMANTA_BOSS_STAGE"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_CAVE_OF_MAGMANTA01.dds", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_CAVE_OF_MAGMANTA02.dds", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   30196, 115960, 116160, 115940, 116140,},
		RENA 		= 	{	30231, },
		EVE 		= 	{	30230, },
		CHUNG 		= 	{	30234, },
		--ELESIS 		= 	{	30280, 30281, },
	},
}
--}} 마그만타의 동굴 ----

--{{ 얼어붙은 물의 신전 ----
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_HAMEL_FROZEN_WATER_TEMPLE_NORMAL"],
	dungeonName 		= STR_ID_13416,
	dataFileName 		= "Dungeon_Hamel_Frozen_Water_Temple_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

	--requireDungeonID	= DUNGEON_ID["DI_HAMEL_CAVE_OF_MAGMANTA_NORMAL"],
	
	EXTRA_REQUIRE_DUNGEON_ID =
				{
					DUNGEON_ID["DI_HAMEL_OUTSKIRTS_RESIAM_NORMAL"],
					DUNGEON_ID["DI_HAMEL_BREAK_RESIAM_NORMAL"],
					DUNGEON_ID["DI_HAMEL_ANCIENT_WATERWAY_NORMAL"],
					DUNGEON_ID["DI_HAMEL_ANCIENT_WATERWAY_CORE_NORMAL"],
					DUNGEON_ID["DI_HAMEL_CAVE_OF_MAGMANTA_NORMAL"],
				},

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 57,
	m_MaxLevel			= 59,
	
	m_RequireItemLevel     = 47,
	
	m_NPCLevel			= 57,
	
	m_DungeonDescription = STR_ID_19963,

	m_TextureName		= "dlg_ui_dungeon_image08.dds",
	m_PieceName			= "HAMEL_FROZEN_WATER_TEMPLE",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_HAMEL_FROZEN_WATER_TEMPLE_B0SS_STAGE"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_FROZEN_WATER_TEMPLE01.dds", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_FROZEN_WATER_TEMPLE02.dds", -- 던전별 로딩화면. 해당 파일명을 적어주세요.


	m_LocalStarPosX	= 451,
	m_LocalStarPosY	= 231,
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   115970, 116170, 115950, 116150,},
		AISHA 		= 	{	30219,},
		RAVEN		= 	{	30220,},
	},

	
	AUTO_DUNGEON_ROOM_TITLE =
	{
		STR_ID_13406,	
		STR_ID_13407,	
		STR_ID_13408,	
		STR_ID_13409,	

	},

	ENDING_SPEECH0 =
	{
		ELSWORD = 
		{
			{	STR_ID_13366,	},
			{	STR_ID_13367,	},
			{	STR_ID_13368,	},
		},
		AISHA = 
		{
			{	STR_ID_13372,	},
			{	STR_ID_13373,	},
			{	STR_ID_13374,	},
  		},
		RENA = 
		{
			{	STR_ID_13369,	},
			{	STR_ID_13370,	},
			{	STR_ID_13371,	},
		},
		
		
		RAVEN = 
		{
			{	STR_ID_13375,	},
			{	STR_ID_13376,	},
			{	STR_ID_13377,	},
		},
		EVE = 
		{
			{	STR_ID_13378,	},
			{	STR_ID_13379,	},
			{	STR_ID_13380,	},
		},		
		CHUNG = 
		{
			{	STR_ID_13381,	},
			{	STR_ID_13382,	},
			{	STR_ID_13383,	},
		},
		
		ARA = 
		{
			{	STR_ID_21468,	},
			{	STR_ID_21469,	},
			{	STR_ID_21470,	},
		},
	},
}
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_HAMEL_FROZEN_WATER_TEMPLE_HARD"],
	dungeonName 		= STR_ID_13416,
	dataFileName 		= "Dungeon_Hamel_Frozen_Water_Temple_Hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= DUNGEON_ID["DI_HAMEL_FROZEN_WATER_TEMPLE_NORMAL"],

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 57,
	m_MaxLevel			= 59,
	
	m_RequireItemLevel     = 47,
	
	m_NPCLevel			= 58,
	
	m_DungeonDescription = STR_ID_19963,

	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_HAMEL_FROZEN_WATER_TEMPLE_B0SS_STAGE"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_FROZEN_WATER_TEMPLE01.dds", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_FROZEN_WATER_TEMPLE02.dds", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   115970, 116170, 115950, 116150,},
		AISHA 		= 	{	30219,},
		RAVEN		= 	{	30220,},
	},
}
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_HAMEL_FROZEN_WATER_TEMPLE_EXPERT"],
	dungeonName 		= STR_ID_13416,
	dataFileName 		= "Dungeon_Hamel_Frozen_Water_Temple_Expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= DUNGEON_ID["DI_HAMEL_FROZEN_WATER_TEMPLE_HARD"],

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 57,
	m_MaxLevel			= 59,
	
	m_RequireItemLevel     = 47,
	
	m_NPCLevel			= 59,
	
	m_DungeonDescription = STR_ID_19963,

	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_HAMEL_FROZEN_WATER_TEMPLE_B0SS_STAGE"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_FROZEN_WATER_TEMPLE01.dds", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_FROZEN_WATER_TEMPLE02.dds", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   115970, 116170, 115950, 116150,},
		AISHA 		= 	{	30219,},
		RAVEN		= 	{	30220,},
	},
}
--}} 얼어붙은 물의 신전 ----

--{{ 얼어붙은 물의 전당 ----
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_HAMEL_FROZEN_WATER_HALL_NORMAL"],
	dungeonName 		= STR_ID_13417,
	dataFileName 		= "Dungeon_Hamel_Frozen_Water_Hall_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

	--requireDungeonID	= DUNGEON_ID["DI_HAMEL_FROZEN_WATER_TEMPLE_NORMAL"],
	
	EXTRA_REQUIRE_DUNGEON_ID =
				{
					DUNGEON_ID["DI_HAMEL_OUTSKIRTS_RESIAM_NORMAL"],
					DUNGEON_ID["DI_HAMEL_BREAK_RESIAM_NORMAL"],
					DUNGEON_ID["DI_HAMEL_ANCIENT_WATERWAY_NORMAL"],
					DUNGEON_ID["DI_HAMEL_ANCIENT_WATERWAY_CORE_NORMAL"],
					DUNGEON_ID["DI_HAMEL_CAVE_OF_MAGMANTA_NORMAL"],
					DUNGEON_ID["DI_HAMEL_FROZEN_WATER_TEMPLE_NORMAL"],
				},

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 58,
	m_MaxLevel			= 60,
	
	m_RequireItemLevel     = 48,
	
	m_NPCLevel			= 58,
	
	m_DungeonDescription = STR_ID_19964,

	m_TextureName		= "dlg_ui_dungeon_image08.dds",
	m_PieceName			= "HAFROZEN_WATER_HALL",
	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_HAMEL_FROZEN_WATER_HALL_BOSS_STAGE"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_FROZEN_WATER_HALL01.dds", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_FROZEN_WATER_HALL02.dds", -- 던전별 로딩화면. 해당 파일명을 적어주세요.


	m_LocalStarPosX	= 265,
	m_LocalStarPosY	= 218,
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{  30195, 30194, 30193,  },
		ELSWORD 	= 	{	115930, 116130, },
		AISHA 		= 	{	115931, 116131, },
		RENA 		= 	{	30218, 115932, 116132, },
		RAVEN		= 	{	115933, 116133, },
		EVE 		= 	{	115934, 116134, },
		CHUNG 		= 	{	30234, 115935, 116135, },
		ARA 		= 	{	30242, 115936, 116136, },
		--ELESIS		= 	{	30281, 115937, 116137, },
	},

	
	AUTO_DUNGEON_ROOM_TITLE =
	{
		STR_ID_13410,	
		STR_ID_13411,	
		STR_ID_13412,	
		STR_ID_13413,	
	},

	ENDING_SPEECH0 =
	{
		ELSWORD = 
		{
			{	STR_ID_13384,	},
			{	STR_ID_13385,	},
			{	STR_ID_13386,	},
		},
		AISHA = 
		{
			{	STR_ID_13390,	},
			{	STR_ID_13391,	},
			{	STR_ID_13392,	},
  		},
		RENA = 
		{
			{	STR_ID_13387,	},
			{	STR_ID_13388,	},
			{	STR_ID_13389,	},
		},
		
		
		RAVEN = 
		{
			{	STR_ID_13393,	},
			{	STR_ID_13394,	},
			{	STR_ID_13395,	},
		},
		EVE = 
		{
			{	STR_ID_13396,	},
			{	STR_ID_13397,	},
			{	STR_ID_13398,	},
		},		
		CHUNG = 
		{
			{	STR_ID_13399,	},
			{	STR_ID_13400,	},
			{	STR_ID_13401,	},
		},
		
		ARA = 
		{
			{	STR_ID_21471,	},
			{	STR_ID_21472,	},
			{	STR_ID_21473,	},
		},
	},
}




g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_HAMEL_FROZEN_WATER_HALL_HARD"],
	dungeonName 		= STR_ID_13417,
	dataFileName 		= "Dungeon_Hamel_Frozen_Water_Hall_Hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= DUNGEON_ID["DI_HAMEL_FROZEN_WATER_HALL_NORMAL"],

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 58,
	m_MaxLevel			= 60,
	
	m_RequireItemLevel     = 48,
	
	m_NPCLevel			= 59,
	
	m_DungeonDescription = STR_ID_19964,

	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_HAMEL_FROZEN_WATER_HALL_BOSS_STAGE"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_FROZEN_WATER_HALL01.dds", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_FROZEN_WATER_HALL02.dds", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{  30195, 30194, 30193,  },
		ELSWORD 	= 	{	115930, 116130, },
		AISHA 		= 	{	30232, 115931, 116131, },
		RENA 		= 	{	30218, 115932, 116132, },
		RAVEN		= 	{	30235, 115933, 116133, },
		EVE 		= 	{	115934, 116134, },
		CHUNG 		= 	{	30234, 115935, 116135, },
		ARA 		= 	{	30242, 115936, 116136, },
		--ELESIS		= 	{	30281, 115937, 116137, },
	},
}
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_HAMEL_FROZEN_WATER_HALL_EXPERT"],
	dungeonName 		= STR_ID_13417,
	dataFileName 		= "Dungeon_Hamel_Frozen_Water_Hall_Expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= DUNGEON_ID["DI_HAMEL_FROZEN_WATER_HALL_HARD"],

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 58,
	m_MaxLevel			= 60,
	
	m_RequireItemLevel     = 48,
	
	m_NPCLevel			= 60,
	
	m_DungeonDescription = STR_ID_19964,

	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_HAMEL_FROZEN_WATER_HALL_BOSS_STAGE"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_FROZEN_WATER_HALL01.dds", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_FROZEN_WATER_HALL02.dds", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{  30195, 30194, 30193,  },
		ELSWORD 	= 	{	115930, 116130, },
		AISHA 		= 	{	30232, 115931, 116131, },
		RENA 		= 	{	30218, 115932, 116132, },
		RAVEN		= 	{	30235, 115933, 116133, },
		EVE 		= 	{	115934, 116134, },
		CHUNG 		= 	{	30234, 115935, 116135, },
		ARA 		= 	{	30242, 115936, 116136, },
		--ELESIS		= 	{	30281, 115937, 116137, },
	},
}

--{{ 비밀던전 벨더---
	-- 일반
	g_pDungeonManager:AddDungeonData
	{
		dungeonID		= DUNGEON_ID["DI_VELDER_SECRET_COMMON"],
		dungeonName 	= STR_ID_13861,
		dataFileName 	= "Dungeon_Velder_Secret_Common.lua",
		difficulty		= DIFFICULTY_LEVEL["DL_NORMAL"],
		m_eDungeonType	= DUNGEON_TYPE["DT_SECRET"],
		m_bRelativeMonsterLevel = TRUE,              --유저레벨 연동 던전

		requireDungeonID	= 0,
		
		m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES
			
		requireItemID		= 78330,
		requireItemCount	= 1,
	
		m_MinLevel			= 55,
		m_MaxLevel			= 60,
		
		m_RequireItemLevel     = 70,
		
		m_DungeonDescription = STR_ID_19968,
	
		--m_fPoisonTimeLimit = 600,
	
		-- 비밀던전인 경우에 요렇게 설정해줘야합니다
		IS_HELL_MODE = TRUE,

		EXTRA_REQUIRE_DUNGEON_ID =
		{
			DUNGEON_ID["DI_VELDER_THIRD_DWELLING_EXPERT"],
			DUNGEON_ID["DI_VELDER_BRIDGE_HOPE_EXPERT"],
			DUNGEON_ID["DI_VELDER_PALACE_ENTRANCE_EXPERT"],
			DUNGEON_ID["DI_VELDER_BRIDGE_BUNNING_EXPERT"],		
			DUNGEON_ID["DI_VELDER_MARKET_EXPERT"],
			DUNGEON_ID["DI_VELDER_GATE_EXPERT"],		
		},

		m_TextureName		= "DLG_UI_Dungeon_Image08.dds",		
		m_PieceName			= "VELDER_SCRET",
		m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_VELDER_SECRET_BOSS_STAGE"],
		m_LoadingScreenFileName		= "HQ_LoadingDungeon_VELDER_SECRET1.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
		m_LoadingScreenFileName2	= "HQ_LoadingDungeon_VELDER_SECRET2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
		--m_Explanation		= STR_ID_363,
	
		m_LocalStarPosX	= 795,
		m_LocalStarPosY	= 281,
		
		
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   111926, 111700,},
		ELSWORD 	= 	{	111624, 111623,},
		AISHA 		= 	{	111629, 111628,},
		RENA 		= 	{	111634, 111633,},
		RAVEN		= 	{	111639, 111638,},
		EVE 		= 	{	111644, 111643,},
		CHUNG 		= 	{	111649, 111648,},
		ARA 		= 	{	112634, 112633,},
		--ELESIS		= 	{	117235,  117234, },
	},
	
	
		ENDING_SPEECH0 = 
		{			
			ELSWORD = {
				{ STR_ID_13865, },
				{ STR_ID_13866, },
				{ STR_ID_13867, },
			},

			AISHA = {
				{ STR_ID_13868, },
				{ STR_ID_13869, },
				{ STR_ID_13870, },
			},

			RENA = {
				{ STR_ID_13871, },
				{ STR_ID_13872, },
				{ STR_ID_13873, },
			},

			RAVEN = {
				{ STR_ID_13874, },
				{ STR_ID_13875, },
				{ STR_ID_13876, },
			},
		
			EVE = {
				{ STR_ID_13877, },
				{ STR_ID_13878, },
				{ STR_ID_13879, },
			},
		
			CHUNG = { 
				{ STR_ID_13880, },
				{ STR_ID_13881, },
				{ STR_ID_13882, },
			},
			
			ARA = { 
				{ STR_ID_21483, },
				{ STR_ID_21484, },
				{ STR_ID_21485, },
			},
		},
	}

---벨더 비밀던전 헬
	g_pDungeonManager:AddDungeonData
	{
		dungeonID		= DUNGEON_ID["DI_VELDER_SECRET_HELL"],
		dungeonName 	= STR_ID_13861,
		dataFileName 	= "Dungeon_Velder_Secret_Hell.lua",
		difficulty		= DIFFICULTY_LEVEL["DL_HARD"],
		m_eDungeonType	= DUNGEON_TYPE["DT_SECRET"],
		m_bRelativeMonsterLevel = TRUE,              --유저레벨 연동 던전
		
		requireDungeonID	= 0,
		
		m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES
		
		requireItemID		= 78331,
		requireItemCount	= 1,
	
		m_MinLevel			= 55,
		m_MaxLevel			= 63,
		
		m_RequireItemLevel     = 85,
		
		m_DungeonDescription = STR_ID_19968,
	
		--m_fPoisonTimeLimit = 720,
		--m_fExtraStagePoisonTimeLimit = 900,
	
		-- 비밀던전인 경우에 요렇게 설정해줘야합니다
		IS_HELL_MODE = TRUE,

		EXTRA_REQUIRE_DUNGEON_ID =
		{
			DUNGEON_ID["DI_VELDER_THIRD_DWELLING_EXPERT"],
			DUNGEON_ID["DI_VELDER_BRIDGE_HOPE_EXPERT"],
			DUNGEON_ID["DI_VELDER_PALACE_ENTRANCE_EXPERT"],
			DUNGEON_ID["DI_VELDER_BRIDGE_BUNNING_EXPERT"],		
			DUNGEON_ID["DI_VELDER_MARKET_EXPERT"],
			DUNGEON_ID["DI_VELDER_GATE_EXPERT"],		
		},
		
		m_TextureName		= "DLG_UI_Dungeon_Image08.dds",		
		m_PieceName			= "VELDER_SCRET",
		m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_VELDER_SECRET_BOSS_STAGE"],
		m_LoadingScreenFileName		= "HQ_LoadingDungeon_VELDER_SECRET1.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
		m_LoadingScreenFileName2	= "HQ_LoadingDungeon_VELDER_SECRET2.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
		--m_Explanation		= STR_ID_363,
	
		m_LocalStarPosX	= 795,
		m_LocalStarPosY	= 281,
		
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   111926, 111700,},
		ELSWORD 	= 	{	111621, 111622, 111680, 111620,},
		AISHA 		= 	{	111626, 111627, 111681, 111625,},
		RENA 		= 	{	111631, 111632, 111682, 111630,},
		RAVEN		= 	{	111636, 111637, 111683, 111635,},
		EVE 		= 	{	111641, 111642, 111684, 111640,},
		CHUNG 		= 	{	111646, 111647, 111685, 111645,},
		ARA 		= 	{	112631, 112632, 112646, 112630,},
		--ELESIS		= 	{	117232, 117233, 117236, 117231,},
	},
		ENDING_SPEECH0 = 
		{
			ELSWORD = {
				{ STR_ID_13865, },
				{ STR_ID_13866, },
				{ STR_ID_13867, },
			},

			AISHA = {
				{ STR_ID_13868, },
				{ STR_ID_13869, },
				{ STR_ID_13870, },
			},

			RENA = {
				{ STR_ID_13871, },
				{ STR_ID_13872, },
				{ STR_ID_13873, },
			},

			RAVEN = {
				{ STR_ID_13874, },
				{ STR_ID_13875, },
				{ STR_ID_13876, },
			},
		
			EVE = {
				{ STR_ID_13877, },
				{ STR_ID_13878, },
				{ STR_ID_13879, },
			},
		
			CHUNG = { 
				{ STR_ID_13880, },
				{ STR_ID_13881, },
				{ STR_ID_13882, },
			},
			
			ARA = { 
				{ STR_ID_21483, },
				{ STR_ID_21484, },
				{ STR_ID_21485, },
			},
		},
	}
----------------샌더  던전 데이타--------------
--메마른 샌더 ----
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_SANDER_DRY_SANDER_NORMAL"],
	dungeonName 		= STR_ID_21696,
	dataFileName 		= "Dungeon_Sander_Dry_Sander_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],

	--requireDungeonID	= DUNGEON_ID["DI_HAMEL_FROZEN_WATER_TEMPLE_NORMAL"],
	
	EXTRA_REQUIRE_DUNGEON_ID =
				{
					-- DUNGEON_ID["DI_HAMEL_OUTSKIRTS_RESIAM_NORMAL"],
					-- DUNGEON_ID["DI_HAMEL_BREAK_RESIAM_NORMAL"],
					-- DUNGEON_ID["DI_HAMEL_ANCIENT_WATERWAY_NORMAL"],
					-- DUNGEON_ID["DI_HAMEL_ANCIENT_WATERWAY_CORE_NORMAL"],
					-- DUNGEON_ID["DI_HAMEL_CAVE_OF_MAGMANTA_NORMAL"],
					-- DUNGEON_ID["DI_HAMEL_FROZEN_WATER_TEMPLE_NORMAL"],
				},
				
	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES			

	m_MinLevel			= 60,
	m_MaxLevel			= 62,
	
	m_RequireItemLevel     = 50,			--m_MinLevel -10 인 수치
	
	m_NPCLevel			= 60,
	
	m_DungeonDescription = STR_ID_21698,

	m_TextureName		= "DLG_UI_Dungeon_Image08.dds",
	m_PieceName			= "Dry_Sander",
	
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_Dry_Sander_01.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_Dry_Sander_02.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.


	--m_LocalStarPosX	= 265,
	--m_LocalStarPosY	= 218,
	--m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_HAMEL_FROZEN_WATER_HALL_BOSS_STAGE"],
	
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{  30247, 30248, 30249, 116340, 116540,},
	},
	
	-- AUTO_DUNGEON_ROOM_TITLE =
	-- {
		-- STR_ID_13410,	
		-- STR_ID_13411,	
		-- STR_ID_13412,	
		-- STR_ID_13413,	
	-- },

	ENDING_SPEECH0 =
	{
		ELSWORD = 
		{
			{	STR_ID_21576,	},
			{	STR_ID_21577,	},
			{	STR_ID_21578,	},
			{	STR_ID_21579,	},
		},
		AISHA = 
		{
			{	STR_ID_21584,	},
			{	STR_ID_21585,	},
			{	STR_ID_21586,	},
			{	STR_ID_21587,	},
  		},
		RENA = 
		{
			{	STR_ID_21580,	},
			{	STR_ID_21581,	},
			{	STR_ID_21582,	},
			{	STR_ID_21583,	},
		},
		RAVEN = 
		{
			{	STR_ID_21588,	},
			{	STR_ID_21589,	},
			{	STR_ID_21590,	},
			{	STR_ID_21591,	},
		},
		EVE = 
		{
			{	STR_ID_21592,	},
			{	STR_ID_21593,	},
			{	STR_ID_21594,	},
			{	STR_ID_21595,	},
		},		
		CHUNG = 
		{
			{	STR_ID_21596,	},
			{	STR_ID_21597,	},
			{	STR_ID_21598,	},
			{	STR_ID_21599,	},
		},
		ARA = 
		{
			{	STR_ID_21600,	},
			{	STR_ID_21601,	},
			{	STR_ID_21602,	},
			{	STR_ID_21603,	},
		},
	},
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_SANDER_DRY_SANDER_HARD"],
	dungeonName 		= STR_ID_21696,
	dataFileName 		= "Dungeon_Sander_Dry_Sander_Hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= DUNGEON_ID["DI_SANDER_DRY_SANDER_NORMAL"],

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 60,
	m_MaxLevel			= 62,
	
	m_RequireItemLevel     = 51,
	
	m_NPCLevel			= 61,
	
	m_DungeonDescription = STR_ID_21698,

	--m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_HAMEL_FROZEN_WATER_HALL_BOSS_STAGE"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_Dry_Sander_01.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_Dry_Sander_02.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{  30247, 30248, 30249, 116340, 116540,},
		AISHA 		= 	{	30243, },
		RAVEN		= 	{	30244, },
		EVE 		= 	{	30245, },
	},
}
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_SANDER_DRY_SANDER_EXPERT"],
	dungeonName 		= STR_ID_21696,
	dataFileName 		= "Dungeon_Sander_Dry_Sander_Expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= DUNGEON_ID["DI_SANDER_DRY_SANDER_HARD"],

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 60,
	m_MaxLevel			= 62,
	
	m_RequireItemLevel     = 52,
	
	m_NPCLevel			= 62,
	
	m_DungeonDescription = STR_ID_21698,

	--m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_HAMEL_FROZEN_WATER_HALL_BOSS_STAGE"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_Dry_Sander_01.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_Dry_Sander_02.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{  30247, 30248, 30249, 116340, 116540,},
		AISHA 		= 	{	30243, },
		RAVEN		= 	{	30244, },
		EVE 		= 	{	30245, },
	},
}


--------------가르파이 기암지대------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_SANDER_GARPAI_ROCK_NORMAL"],
	dungeonName 		= STR_ID_21697,
	dataFileName 		= "Dungeon_Sander_Garpai_Rock_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],


	--requireDungeonID	= DUNGEON_ID["DI_HAMEL_FROZEN_WATER_TEMPLE_NORMAL"],
	
	EXTRA_REQUIRE_DUNGEON_ID =
				{
					 DUNGEON_ID["DI_SANDER_DRY_SANDER_NORMAL"],
				},
				
	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES			

	m_MinLevel			= 61,
	m_MaxLevel			= 63,
	
	m_RequireItemLevel     = 51,			--m_MinLevel -10 인 수치
	
	m_NPCLevel			= 61,
	
	m_DungeonDescription = STR_ID_21699,

	m_TextureName		= "dlg_ui_dungeon_image09.dds",
	m_PieceName			= "Garpai_Rock",
	
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_Garpai_Rock_01.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_Garpai_Rock_02.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.

	--m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_HAMEL_FROZEN_WATER_HALL_BOSS_STAGE"],
	-- -- m_LocalStarPosX	= 265,
	-- -- m_LocalStarPosY	= 218,
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{  30253, 30254, 30255, 116370, 116570, },
	},
	-- AUTO_DUNGEON_ROOM_TITLE =
	-- {
		-- STR_ID_13410,	
		-- STR_ID_13411,	
		-- STR_ID_13412,	
		-- STR_ID_13413,	
	-- },

	ENDING_SPEECH0 =
	{
		ELSWORD = 
		{
			{	STR_ID_21604,	},
			{	STR_ID_21605,	},
			{	STR_ID_21606,	},
			{	STR_ID_21607,	},
		},
		AISHA = 
		{
			{	STR_ID_21612,	},
			{	STR_ID_21613,	},
			{	STR_ID_21614,	},
			{	STR_ID_21615,	},
  		},
		RENA = 
		{
			{	STR_ID_21608,	},
			{	STR_ID_21609,	},
			{	STR_ID_21610,	},
			{	STR_ID_21611,	},
		},
		RAVEN = 
		{
			{	STR_ID_21616,	},
			{	STR_ID_21617,	},
			{	STR_ID_21618,	},
			{	STR_ID_21619,	},
		},
		EVE = 
		{
			{	STR_ID_21620,	},
			{	STR_ID_21621,	},
			{	STR_ID_21622,	},
			{	STR_ID_21623,	},
		},		
		CHUNG = 
		{
			{	STR_ID_21624,	},
			{	STR_ID_21625,	},
			{	STR_ID_21626,	},
			{	STR_ID_21627,	},
		},
		ARA = 
		{
			{	STR_ID_21628,	},
			{	STR_ID_21629,	},
			{	STR_ID_21630,	},
			{	STR_ID_21631,	},
		},
	},
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_SANDER_GARPAI_ROCK_HARD"],
	dungeonName 		= STR_ID_21697,
	dataFileName 		= "Dungeon_Sander_Garpai_Rock_Hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= DUNGEON_ID["DI_SANDER_GARPAI_ROCK_NORMAL"],
	
	EXTRA_REQUIRE_DUNGEON_ID =
		{
			DUNGEON_ID["DI_SANDER_DRY_SANDER_NORMAL"],
		},
		
	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES	

	m_MinLevel			= 61,
	m_MaxLevel			= 63,
	
	m_RequireItemLevel     = 52,
	
	m_NPCLevel			= 62,
	
	m_DungeonDescription = STR_ID_21699,

	--m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_HAMEL_FROZEN_WATER_HALL_BOSS_STAGE"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_Garpai_Rock_01.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_Garpai_Rock_02.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   30253, 30254, 30255, 116370, 116570, },
		ELSWORD 	= 	{	30250, },
		RENA 		= 	{	30251, },
		CHUNG 		= 	{	30252, },
		--ELESIS 		= 	{	30282, },
	},
}


g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_SANDER_GARPAI_ROCK_EXPERT"],
	dungeonName 		= STR_ID_21697,
	dataFileName 		= "Dungeon_Sander_Garpai_Rock_Expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= DUNGEON_ID["DI_SANDER_GARPAI_ROCK_HARD"],
	EXTRA_REQUIRE_DUNGEON_ID =
		{
			DUNGEON_ID["DI_SANDER_DRY_SANDER_NORMAL"],
		},
	
	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES
		
	m_MinLevel			= 61,
	m_MaxLevel			= 63,
	
	m_RequireItemLevel     = 53,
	
	m_NPCLevel			= 63,
	
	m_DungeonDescription = STR_ID_21699,

	--m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_HAMEL_FROZEN_WATER_HALL_BOSS_STAGE"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_Garpai_Rock_01.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_Garpai_Rock_02.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   30253, 30254, 30255, 116370, 116570, },
		ELSWORD 	= 	{	30250, },
		RENA 		= 	{	30251, },
		CHUNG 		= 	{	30252, },
		--ELESIS 		= 	{	30282, },
	},
}


--------------트락 소굴--------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_SANDER_DEN_OF_TROCK_NORMAL"],
	dungeonName 		= STR_ID_22490,
	dataFileName 		= "Dungeon_Sander_Den_Of_Trock_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],


	--requireDungeonID	= DUNGEON_ID["DI_HAMEL_FROZEN_WATER_TEMPLE_NORMAL"],
	
	EXTRA_REQUIRE_DUNGEON_ID =
				{
					 DUNGEON_ID["DI_SANDER_GARPAI_ROCK_NORMAL"],
				},
				
	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES			

	m_MinLevel			= 62,
	m_MaxLevel			= 64,
	
	m_RequireItemLevel     = 52,			--m_MinLevel -10 인 수치
	
	m_NPCLevel			= 62,				--m_MinLevel레벨과 동일
	
	m_DungeonDescription = STR_ID_22492,

	m_TextureName		= "dlg_ui_dungeon_image09.dds",
	m_PieceName			= "SANDER_DEN_OF_TROCK",
	
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_Den_Of_Trock_01.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_Den_Of_Trock_02.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.

	--m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_HAMEL_FROZEN_WATER_HALL_BOSS_STAGE"],
	-- -- m_LocalStarPosX	= 265,
	-- -- m_LocalStarPosY	= 218,
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   30263, 30264, 30265, },
		ELSWORD 	= 	{	116530, 116330,},
		AISHA 		= 	{	116531, 116331,},
		RENA 		= 	{	116532, 116332,},
		RAVEN		= 	{	116533, 116333,},
		EVE 		= 	{	116534, 116334,},
		CHUNG 		= 	{	116535,	116335,},
		ARA 		= 	{	116536, 116336,},
		--ELESIS 		= 	{	116537, 116337,},
	},
	-- AUTO_DUNGEON_ROOM_TITLE =
	-- {
		-- STR_ID_13410,	
		-- STR_ID_13411,	
		-- STR_ID_13412,	
		-- STR_ID_13413,	
	-- },

	ENDING_SPEECH0 =
	{
		ELSWORD = 
		{
			{	STR_ID_22238,	},
			{	STR_ID_22239,	},
			{	STR_ID_22240,	},
			{	STR_ID_22241,	},
		},
		AISHA = 
		{
			{	STR_ID_22246,	},
			{	STR_ID_22247,	},
			{	STR_ID_22248,	},
			{	STR_ID_22249,	},
  		},
		RENA = 
		{
			{	STR_ID_22242,	},
			{	STR_ID_22243,	},
			{	STR_ID_22244,	},
			{	STR_ID_22245,	},
		},
		RAVEN = 
		{
			{	STR_ID_22250,	},
			{	STR_ID_22251,	},
			{	STR_ID_22252,	},
			{	STR_ID_22253,	},
		},
		EVE = 
		{
			{	STR_ID_22254,	},
			{	STR_ID_22255,	},
			{	STR_ID_22256,	},
			{	STR_ID_22257,	},
		},		
		CHUNG = 
		{
			{	STR_ID_22258,	},
			{	STR_ID_22259,	},
			{	STR_ID_22260,	},
			{	STR_ID_22261,	},
		},
		ARA = 
		{
			{	STR_ID_22262,	},
			{	STR_ID_22263,	},
			{	STR_ID_22264,	},
			{	STR_ID_22265,	},
		},
	},
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_SANDER_DEN_OF_TROCK_HARD"],
	dungeonName 		= STR_ID_22490,
	dataFileName 		= "Dungeon_Sander_Den_Of_Trock_Hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= DUNGEON_ID["DI_SANDER_DEN_OF_TROCK_NORMAL"],
	
	EXTRA_REQUIRE_DUNGEON_ID =
		{
			DUNGEON_ID["DI_SANDER_DRY_SANDER_NORMAL"],
		},
		
	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES	

	m_MinLevel			= 62,
	m_MaxLevel			= 64,
	
	m_RequireItemLevel     = 53,
	
	m_NPCLevel			= 63,
	
	m_DungeonDescription = STR_ID_22492,

	--m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_HAMEL_FROZEN_WATER_HALL_BOSS_STAGE"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_Den_Of_Trock_01.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_Den_Of_Trock_02.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   30263, 30264, 30265, },
		ELSWORD 	= 	{	30162, 116530, 116330,},
		AISHA 		= 	{	30259, 116531, 116331,},
		RENA 		= 	{	116532, 116332,},
		RAVEN		= 	{	116533, 116333,},
		EVE 		= 	{	30261, 116534, 116334,},
		CHUNG 		= 	{	116535,	116335,},
		ARA 		= 	{	116536, 116336,},
		--ELESIS 		= 	{	116537, 116337,},
	},
}





g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_SANDER_DEN_OF_TROCK_EXPERT"],
	dungeonName 		= STR_ID_22490,
	dataFileName 		= "Dungeon_Sander_Den_Of_Trock_Expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= DUNGEON_ID["DI_SANDER_DEN_OF_TROCK_HARD"],
	
	
	EXTRA_REQUIRE_DUNGEON_ID =
		{
			DUNGEON_ID["DI_SANDER_DRY_SANDER_NORMAL"],
		},
		
	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES	
		
	m_MinLevel			= 62,
	m_MaxLevel			= 64,
	
	m_RequireItemLevel     = 54,
	
	m_NPCLevel			= 64,
	
	m_DungeonDescription = STR_ID_22492,

	--m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_HAMEL_FROZEN_WATER_HALL_BOSS_STAGE"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_Den_Of_Trock_01.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_Den_Of_Trock_02.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		COMMON		= 	{   30263, 30264, 30265, },
		ELSWORD 	= 	{	30162, 116530, 116330,},
		AISHA 		= 	{	30259, 116531, 116331,},
		RENA 		= 	{	116532, 116332,},
		RAVEN		= 	{	116533, 116333,},
		EVE 		= 	{	30261, 116534, 116334,},
		CHUNG 		= 	{	116535,	116335,},
		ARA 		= 	{	116536, 116336,},
		--ELESIS 		= 	{	116537, 116337,},
	},
}

--------------칼루소 부족 마을--------------
g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_SANDER_KARUSO_VILLAGE_NORMAL"],
	dungeonName 		= STR_ID_22491,
	dataFileName 		= "Dungeon_Sander_Karuso_Village_Normal.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],


	--requireDungeonID	= DUNGEON_ID["DI_HAMEL_FROZEN_WATER_TEMPLE_NORMAL"],
	
	EXTRA_REQUIRE_DUNGEON_ID =
				{
					 DUNGEON_ID["DI_SANDER_DEN_OF_TROCK_NORMAL"],
				},

	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES

	m_MinLevel			= 63,
	m_MaxLevel			= 65,
	
	m_RequireItemLevel     = 53,			--m_MinLevel -10 인 수치
	
	m_NPCLevel			= 63,				--m_MinLevel레벨과 동일
	
	m_DungeonDescription = STR_ID_22493,

	m_TextureName		= "dlg_ui_dungeon_image09.dds",
	m_PieceName			= "SANDER_KARUSO_VILLAGE",
	
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_Karuso_Village_01.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_Karuso_Village_02.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.

	--m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_HAMEL_FROZEN_WATER_HALL_BOSS_STAGE"],
	-- -- m_LocalStarPosX	= 265,
	-- -- m_LocalStarPosY	= 218,
	
	BOSS_DROP_ITEM =
	{
		--COMMON		= 	{   30266, 30267, 30268, 117251, 117275, }, -- 샌더 5,6번
		COMMON		= 	{   30266, 30267, 30268, },
	},

	-- AUTO_DUNGEON_ROOM_TITLE =
	-- {
		-- STR_ID_13410,	
		-- STR_ID_13411,	
		-- STR_ID_13412,	
		-- STR_ID_13413,	
	-- },

	ENDING_SPEECH0 =
	{
		ELSWORD = 
		{
			{	STR_ID_22266,	},
			{	STR_ID_22267,	},
			{	STR_ID_22268,	},
			{	STR_ID_22269,	},
		},
		AISHA = 
		{
			{	STR_ID_22274,	},
			{	STR_ID_22275,	},
			{	STR_ID_22276,	},
			{	STR_ID_22277,	},
  		},
		RENA = 
		{
			{	STR_ID_22270,	},
			{	STR_ID_22271,	},
			{	STR_ID_22272,	},
			{	STR_ID_22273,	},
		},
		RAVEN = 
		{
			{	STR_ID_22278,	},
			{	STR_ID_22279,	},
			{	STR_ID_22280,	},
			{	STR_ID_22281,	},
		},
		EVE = 
		{
			{	STR_ID_22282,	},
			{	STR_ID_22283,	},
			{	STR_ID_22284,	},
			{	STR_ID_22285,	},
		},		
		CHUNG = 
		{
			{	STR_ID_22286,	},
			{	STR_ID_22287,	},
			{	STR_ID_22288,	},
			{	STR_ID_22289,	},
		},
		ARA = 
		{
			{	STR_ID_22290,	},
			{	STR_ID_22291,	},
			{	STR_ID_22292,	},
			{	STR_ID_22293,	},
		},
	},
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_SANDER_KARUSO_VILLAGE_HARD"],
	dungeonName 		= STR_ID_22491,
	dataFileName 		= "Dungeon_Sander_Karuso_Village_Hard.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_HARD"],

	requireDungeonID	= DUNGEON_ID["DI_SANDER_KARUSO_VILLAGE_NORMAL"],
	
	EXTRA_REQUIRE_DUNGEON_ID =
		{
			DUNGEON_ID["DI_SANDER_DEN_OF_TROCK_NORMAL"],
		},
		
	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES	

	m_MinLevel			= 63,
	m_MaxLevel			= 65,
	
	m_RequireItemLevel     = 54,
	
	m_NPCLevel			= 64,
	
	m_DungeonDescription = STR_ID_22493,

	--m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_HAMEL_FROZEN_WATER_HALL_BOSS_STAGE"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_Karuso_Village_01.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_Karuso_Village_02.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		--COMMON		= 	{   30266, 30267, 30268, 117251, 117275, }, -- 샌더 5,6번
		COMMON		= 	{   30266, 30267, 30268, },
		RENA 		= 	{	30257, },
		RAVEN		= 	{	30260, },
		CHUNG 		= 	{	30258, },
		ARA 		= 	{	30262, },
		--ELESIS		= 	{	30283, },
	},
}


g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_SANDER_KARUSO_VILLAGE_EXPERT"],
	dungeonName 		= STR_ID_22491,
	dataFileName 		= "Dungeon_Sander_Karuso_Village_Expert.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_EXPERT"],

	requireDungeonID	= DUNGEON_ID["DI_SANDER_KARUSO_VILLAGE_HARD"],
	
	
	EXTRA_REQUIRE_DUNGEON_ID =
		{
			DUNGEON_ID["DI_SANDER_DEN_OF_TROCK_NORMAL"],
		},
	
	m_bSwitchingWithEventInfo		= FALSE, -- SERV_NEW_EVENT_TYPES	
		
	m_MinLevel			= 63,
	m_MaxLevel			= 65,
	
	m_RequireItemLevel     = 55,
	
	m_NPCLevel			= 65,
	
	m_DungeonDescription = STR_ID_22493,

	--m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_HAMEL_FROZEN_WATER_HALL_BOSS_STAGE"],
	m_LoadingScreenFileName	= "HQ_LoadingDungeon_Karuso_Village_01.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_Karuso_Village_02.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	
	BOSS_DROP_ITEM =
	{
		--COMMON		= 	{   30266, 30267, 30268, 117251, 117275, }, -- 샌더 5,6번
		COMMON		= 	{   30266, 30267, 30268, },
		RENA 		= 	{	30257, },
		RAVEN		= 	{	30260, },
		CHUNG 		= 	{	30258, },
		ARA 		= 	{	30262, },
		--ELESIS		= 	{	30283, },
	},
}


------------발렌타인 던전 임시-----------------
--[[
	g_pDungeonManager:AddDungeonData
	{
		dungeonID				= DUNGEON_ID["DI_EVENT_VALENTINE_DAY"],
		dungeonName 			= STR_ID_23227,
		dataFileName 			= "Dungeon_Event_Valentine_Day.lua",
		difficulty				= DIFFICULTY_LEVEL["DL_NORMAL"],
		normalOnly				= TRUE,
		m_bRelativeMonsterLevel = FALSE,              --유저레벨 연동 던전

		--requireDungeonID	= DUNGEON_ID["DI_SANDER_KARUSO_VILLAGE_HARD"],
		
		
		-- EXTRA_REQUIRE_DUNGEON_ID =
			-- {
				-- DUNGEON_ID["DI_SANDER_DEN_OF_TROCK_NORMAL"],
			-- },
			
		m_MinLevel			= 10,
		m_MaxLevel			= 65,
		
		m_RequireItemLevel     = 0,
		
		--m_NPCLevel			= 65,
		
		requireItemID		= 135344,
		requireItemCount	= 1,
		
		m_DungeonDescription = STR_ID_23248,

		--m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_HAMEL_FROZEN_WATER_HALL_BOSS_STAGE"],
		
		m_TextureName		= "dlg_ui_dungeon_image09.dds",
		m_PieceName			= "EVENT_VALENTINE",
		
		m_LoadingScreenFileName	= "HQ_LoadingDungeon_Event_Valentine_01.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
		m_LoadingScreenFileName2= "HQ_LoadingDungeon_Event_Valentine_02.tga", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
		
		BOSS_DROP_ITEM =
		{
			COMMON		= 	{  160576, 130265, 130264, 160613, 111702, 132201,},
		},
		
		ENDING_SPEECH0 =
		{
			ELSWORD = 
			{
				{	STR_ID_23249,	},
				{	STR_ID_23250,	},
			},
			AISHA = 
			{
				{	STR_ID_23251,	},
				{	STR_ID_23252,	},
			},
			RENA = 
			{
				{	STR_ID_23253,	},
				{	STR_ID_23254,	},
			},
			RAVEN = 
			{
				{	STR_ID_23255,	},
				{	STR_ID_23256,	},
			},
			EVE = 
			{
				{	STR_ID_23257,	},
				{	STR_ID_23258,	},
			},		
			CHUNG = 
			{
				{	STR_ID_23259,	},
				{	STR_ID_23260,	},
			},
			ARA = 
			{
				{	STR_ID_23261,	},
				{	STR_ID_23262,	},
			},
		},
	}
--]]


g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_EVENT_NIGHT_WATCHER"],
	dungeonName 		= STR_ID_25256,
	dataFileName 		= "Dungeon_Night_Watcher_Event.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],
	normalOnly					= TRUE,		-- 난이도는 '보통'만 선택할 수 있는 던전임을 표시

	m_MinLevel			= 10,
	m_MaxLevel			= 60,
	m_RequireItemLevel	= 0,

	requireItemID		= 84001800,
	requireItemCount	= 0,

	m_DungeonDescription = STR_ID_25385,

	additionalTicket =
	{
		{
			requireItemID		= 80002140,
			requireItemCount	= 1,
		},
	},

	m_bHideLoadingTip			= TRUE,		-- 던전 로딩시 팁을 숨김
	m_bShowStageTime			= TRUE,		-- 스테이지마다 남은 초를 보여줌
	m_bSwitchingWithEventInfo	= TRUE,		-- 이벤트 시스템으로 OnOff 가능한 던전

	m_bLevelEqualized			= TRUE,		-- 1레벨 보정 던전
	m_bDamageEqualized			= TRUE,		-- 데미지 보정 던전
	m_bEventDungeon				= TRUE,		-- 이벤트 던전
	m_usFixedMembers			= 1,		-- 특정 인원 고정 던전	


	m_TextureName	= "DLG_UI_Dungeon_Image11.dds",
	m_PieceName		= "KING_NASODS_LAIR",

	m_eDefaultDungeonLoungeWorldID = WORLD_ID["WI_ALTERA_CORE_BOSS_STAGE"],

	m_LoadingScreenFileName	= "HQ_Loading_Jail_01.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_Loading_Jail_02.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.

	ENDING_SPEECH0 = 
	{
		ELSWORD = {
			{ STR_ID_25287, },
		},

		AISHA = {
			{ STR_ID_25288, },
		},

		RENA = {
			{ STR_ID_25289, },
		},

		RAVEN = {
			{ STR_ID_25290, },
		},

		EVE = {
			{ STR_ID_25291, },
		},

		CHUNG = {
			{ STR_ID_25292, },
		},
	},
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_EVENT_HALLOWEEN_2013"],
	dungeonName 		= STR_ID_27377,
	dataFileName 		= "Dungeon_Event_Halloween_2013.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],
	normalOnly			= TRUE,		-- 난이도는 '보통'만 선택할 수 있는 던전임을 표시

	m_MinLevel			= 10,
	m_MaxLevel			= 60,
	m_RequireItemLevel	= 0,

	m_iLimitedPlayTimes	= 3,

	--requireItemID		= 80002282,
	--requireItemCount	= 1,

	m_DungeonDescription = STR_ID_27389,

	--m_bHideLoadingTip			= TRUE,		-- 던전 로딩시 팁을 숨김
	m_bShowStageTime			= TRUE,		-- 스테이지마다 남은 초를 보여줌
	m_bSwitchingWithEventInfo	= TRUE,		-- 이벤트 시스템으로 OnOff 가능한 던전

	m_bLevelEqualized			= TRUE,		-- 1레벨 보정 던전
	m_bDamageEqualized			= TRUE,		-- 데미지 보정 던전
	m_bEventDungeon				= TRUE,		-- 이벤트 던전

	m_TextureName	= "DLG_UI_Dungeon_Image_INT01.dds",
	m_PieceName		= "HALLOWEEN_BANQUET",

	m_LoadingScreenFileName	= "HQ_LoadingDungeon_Halloween01.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_Halloween02.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.

	ENDING_SPEECH0 = 
	{
		ELSWORD = {
			{ STR_ID_27378, },
		},

		AISHA = {
			{ STR_ID_27379, },
		},

		RENA = {
			{ STR_ID_27380, },
		},

		RAVEN = {
			{ STR_ID_27381, },
		},

		EVE = {
			{ STR_ID_27382, },
		},

		CHUNG = {
			{ STR_ID_27383, },
		},
		
		ARA = {
			{ STR_ID_27384, },
		},
	},
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_EVENT_HALLOWEEN_2013_BOSS"],
	dungeonName 		= STR_ID_27377,
	dataFileName 		= "Dungeon_Event_Halloween_2013_Boss.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],
	normalOnly			= TRUE,		-- 난이도는 '보통'만 선택할 수 있는 던전임을 표시

	m_MinLevel			= 10,
	m_MaxLevel			= 60,
	m_RequireItemLevel	= 0,

	m_iLimitedClearTimes	= 1,

	--requireItemID		= 80002282,
	--requireItemCount	= 1,

	m_DungeonDescription = STR_ID_27389,

	--m_bHideLoadingTip			= TRUE,	-- 던전 로딩시 팁을 숨김
	m_bShowStageTime			= TRUE,		-- 스테이지마다 남은 초를 보여줌
	m_bSwitchingWithEventInfo	= TRUE,		-- 이벤트 시스템으로 OnOff 가능한 던전

	m_bLevelEqualized			= TRUE,		-- 1레벨 보정 던전
	m_bDamageEqualized			= TRUE,		-- 데미지 보정 던전
	m_bEventDungeon				= TRUE,		-- 이벤트 던전

	m_TextureName	= "DLG_UI_Dungeon_Image_INT01.dds",
	m_PieceName		= "HALLOWEEN_BANQUET",

	m_LoadingScreenFileName	= "HQ_LoadingDungeon_Halloween01.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_Halloween02.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.

	ENDING_SPEECH0 = 
	{
		ELSWORD = {
			{ STR_ID_27378, },
		},

		AISHA = {
			{ STR_ID_27379, },
		},

		RENA = {
			{ STR_ID_27380, },
		},

		RAVEN = {
			{ STR_ID_27381, },
		},

		EVE = {
			{ STR_ID_27382, },
		},

		CHUNG = {
			{ STR_ID_27383, },
		},
		
		ARA = {
			{ STR_ID_27384, },
		},
	},
}

g_pDungeonManager:AddDungeonData
{
	dungeonID			= DUNGEON_ID["DI_EVENT_HALLOWEEN_2013_LINKER"],
	dungeonName 		= STR_ID_27377,
	dataFileName 		= "Dungeon_Event_Halloween_2013_Linker.lua",
	difficulty			= DIFFICULTY_LEVEL["DL_NORMAL"],
	normalOnly			= TRUE,		-- 난이도는 '보통'만 선택할 수 있는 던전임을 표시

	m_MinLevel			= 10,
	m_MaxLevel			= 60,
	m_RequireItemLevel	= 0,

	m_iLimitedPlayTimes	= 3,

	--requireItemID		= 80002282,
	--requireItemCount	= 1,

	m_DungeonDescription = STR_ID_27389,

	--m_bHideLoadingTip			= TRUE,		-- 던전 로딩시 팁을 숨김
	m_bShowStageTime			= TRUE,		-- 스테이지마다 남은 초를 보여줌
	m_bSwitchingWithEventInfo	= TRUE,		-- 이벤트 시스템으로 OnOff 가능한 던전

	m_bLevelEqualized			= TRUE,		-- 1레벨 보정 던전
	m_bDamageEqualized			= TRUE,		-- 데미지 보정 던전
	m_bEventDungeon				= TRUE,		-- 이벤트 던전

	m_TextureName	= "DLG_UI_Dungeon_Image_INT01.dds",
	m_PieceName		= "HALLOWEEN_BANQUET",

	m_LoadingScreenFileName	= "HQ_LoadingDungeon_Halloween01.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.
	m_LoadingScreenFileName2= "HQ_LoadingDungeon_Halloween02.TGA", -- 던전별 로딩화면. 해당 파일명을 적어주세요.

	ENDING_SPEECH0 = 
	{
		ELSWORD = {
			{ STR_ID_27378, },
		},

		AISHA = {
			{ STR_ID_27379, },
		},

		RENA = {
			{ STR_ID_27380, },
		},

		RAVEN = {
			{ STR_ID_27381, },
		},

		EVE = {
			{ STR_ID_27382, },
		},

		CHUNG = {
			{ STR_ID_27383, },
		},
		
		ARA = {
			{ STR_ID_27384, },
		},
	},
}
