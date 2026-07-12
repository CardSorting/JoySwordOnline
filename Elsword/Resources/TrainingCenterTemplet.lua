-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



-- 유닛 클래스별 훈련 순서
---------------------------------------------------------------------------------
KTrainingCenterTable:SetTrainingListByUnitClass_LUA
{
	UNIT_CLASS	=	UNIT_CLASS["UC_ELSWORD_SWORDMAN"],

	TRAINING_ID_LIST =	
	{
		106, 105, 101, 
		--107, -- 필살기 훈련 임시로 삭제
		102, 103,
	},

}



KTrainingCenterTable:SetTrainingListByUnitClass_LUA
{
	UNIT_CLASS	=	UNIT_CLASS["UC_ARME_VIOLET_MAGE"],

	TRAINING_ID_LIST =	
	{
		206, 205, 201, 
		--207, -- 필살기 훈련 임시로 삭제
		202, 203,
	},

}




KTrainingCenterTable:SetTrainingListByUnitClass_LUA
{
	UNIT_CLASS	=	UNIT_CLASS["UC_LIRE_ELVEN_RANGER"],

	TRAINING_ID_LIST =	
	{
		306, 305, 301, 
		--307, -- 필살기 훈련 임시로 삭제
		302, 303,
	},

}




KTrainingCenterTable:SetTrainingListByUnitClass_LUA
{
	UNIT_CLASS	=	UNIT_CLASS["UC_RAVEN_FIGHTER"],

	TRAINING_ID_LIST =	
	{
		401, 402, 403, 
		--407, -- 필살기 훈련 임시로 삭제
		404, 405,
	},

}






-- 훈련 목록
---------------------------------------------------------------------------------
-- 훈련 아이디는 1번 부터 쓰도록, 0번 쓰면 안되요~








-- 자유 훈련
KTrainingCenterTable:AddTCTemplet
{
	m_iID			= 1,
	m_iDungeonID	= DUNGEON_ID["DI_TRAINING_FREE"],

	m_iMinLevel	= 1,
	m_iBeforeID	= 0,
	m_fPlayTime	= 999999,
	m_iDifficulty = 1,
	
	m_iTrainingNumber = 0,
	m_wstrTitle = STR_ID_2764,
	m_wstrDesc = STR_ID_2764,

	UNIT_CLASS =
	{
		UNIT_CLASS["UC_NONE"],
	},

	REWARD = 
	{
		m_iRewardED		= 0,
		m_iRewardEXP	= 50,
	},
	
	
	m_wstrTextureName = "DLG_Common_Texture12.tga",
	m_wstrTexturePieceName = "Training_Elsword",
	
}





-- 엘소드
KTrainingCenterTable:AddTCTemplet
{
	m_iID			= 101,	
	m_iDungeonID	= DUNGEON_ID["DI_TRAINING_ELSWORD_0"],

	m_iMinLevel	= 1,
	m_iBeforeID	= 105,
	m_fPlayTime	= 300,
	m_iDifficulty = 3,
	
	m_iTrainingNumber = 1,
	m_wstrTitle = STR_ID_4312,
	m_wstrDesc = STR_ID_4316,
	

	UNIT_CLASS =
	{
		UNIT_CLASS["UC_ELSWORD_SWORDMAN"],
	},

	REWARD = 
	{
		m_iRewardED		= 0,
		m_iRewardEXP	= 150,
	},
	
	m_wstrTextureName = "DLG_Common_Texture12.tga",
	m_wstrTexturePieceName = "Training_Elsword",

	m_wstrDescTextureName = "DLG_Common_Texture18.tga",	
	m_wstrDescTexturePieceName = "Training_Image_Combo",

}

KTrainingCenterTable:AddTCTemplet
{
	m_iID			= 102,
	m_iDungeonID	= DUNGEON_ID["DI_TRAINING_ELSWORD_1"],

	m_iMinLevel	= 1,
	m_iBeforeID	= 101,
	m_fPlayTime	= 300,
	m_iDifficulty = 3,
	
	m_iTrainingNumber = 2,
	m_wstrTitle = STR_ID_4312,
	m_wstrDesc = STR_ID_4318,
	
	
	UNIT_CLASS =
	{
		UNIT_CLASS["UC_ELSWORD_SWORDMAN"],
	},

	REWARD = 
	{
		m_iRewardED		= 0,
		m_iRewardEXP	= 150,
	},

	m_wstrTextureName = "DLG_Common_Texture12.tga",
	m_wstrTexturePieceName = "Training_Elsword",
	
	m_wstrDescTextureName = "DLG_Common_Texture18.tga",	
	m_wstrDescTexturePieceName = "Training_Image_Sky_Attack",
}

KTrainingCenterTable:AddTCTemplet
{
	m_iID			= 103,
	m_iDungeonID	= DUNGEON_ID["DI_TRAINING_ELSWORD_2"],

	m_iMinLevel	= 1,
	m_iBeforeID	= 102,
	m_fPlayTime	= 300,
	m_iDifficulty = 3,
	
	m_iTrainingNumber = 3,
	m_wstrTitle = STR_ID_4312,
	m_wstrDesc = STR_ID_4319,
	


	UNIT_CLASS =
	{
		UNIT_CLASS["UC_ELSWORD_SWORDMAN"],
	},

	REWARD = 
	{
		m_iRewardED		= 0,
		m_iRewardEXP	= 150,
	},
	
	
	m_wstrTextureName = "DLG_Common_Texture12.tga",
	m_wstrTexturePieceName = "Training_Elsword",
	
	m_wstrDescTextureName = "DLG_Common_Texture18.tga",	
	m_wstrDescTexturePieceName = "Training_Image_Sky_Combo",
	
}


KTrainingCenterTable:AddTCTemplet
{
	m_iID			= 104,
	m_iDungeonID	= DUNGEON_ID["DI_TRAINING_ELSWORD_3"],

	m_iMinLevel	= 1,
	m_iBeforeID	= 103,
	m_fPlayTime	= 300,
	m_iDifficulty = 3,
	
	m_iTrainingNumber = 0,	
	m_wstrTitle = STR_ID_2768,
	m_wstrDesc = STR_ID_4320,


	UNIT_CLASS =
	{
		UNIT_CLASS["UC_ELSWORD_SWORDMAN"],
	},

	REWARD = 
	{
		m_iRewardED		= 0,
		m_iRewardEXP	= 150,
	},
		
	m_wstrTextureName = "DLG_Common_Texture12.tga",
	m_wstrTexturePieceName = "Training_Elsword",
	
	m_wstrDescTextureName = "DLG_Common_Texture19.tga",	
	m_wstrDescTexturePieceName = "Training_Image_Counterattack",

}




KTrainingCenterTable:AddTCTemplet
{
	m_iID			= 105,
	m_iDungeonID	= DUNGEON_ID["DI_TRAINING_ELSWORD_4"],

	m_iMinLevel	= 1,
	m_iBeforeID	= 106,
	m_fPlayTime	= 180,
	m_iDifficulty = 1,
		
	m_iTrainingNumber = 2,
	m_wstrTitle = STR_ID_1377,
	m_wstrDesc = STR_ID_4321,


	UNIT_CLASS =
	{
		UNIT_CLASS["UC_ELSWORD_SWORDMAN"],
	},

	REWARD = 
	{
		m_iRewardED		= 0,
		m_iRewardEXP	= 50,
	},
		
	m_wstrTextureName = "DLG_Common_Texture12.tga",
	m_wstrTexturePieceName = "Training_Elsword",
	
	m_wstrDescTextureName = "DLG_Common_Texture18.tga",	
	m_wstrDescTexturePieceName = "Training_Image_Jump",

}




KTrainingCenterTable:AddTCTemplet
{
	m_iID			= 106,
	m_iDungeonID	= DUNGEON_ID["DI_TRAINING_ELSWORD_5"],

	m_iMinLevel	= 1,
	m_iBeforeID	= 0,
	m_fPlayTime	= 30,
	m_iDifficulty = 1,
			
	m_iTrainingNumber = 1,
	m_wstrTitle = STR_ID_1377,
	m_wstrDesc = STR_ID_1378,

	UNIT_CLASS =
	{
		UNIT_CLASS["UC_ELSWORD_SWORDMAN"],
	},

	REWARD = 
	{
		m_iRewardED		= 0,
		m_iRewardEXP	= 50,
	},
	
		
	m_wstrTextureName = "DLG_Common_Texture12.tga",
	m_wstrTexturePieceName = "Training_Elsword",
	
	m_wstrDescTextureName = "DLG_Common_Texture18.tga",	
	m_wstrDescTexturePieceName = "Training_Image_Moving",


}


KTrainingCenterTable:AddTCTemplet
{
	m_iID			= 107,
	m_iDungeonID	= DUNGEON_ID["DI_TRAINING_ELSWORD_6"],

	m_iMinLevel	= 1,
	m_iBeforeID	= 101,
	m_fPlayTime	= 300,
	m_iDifficulty = 3,
		
	m_iTrainingNumber = 0,		
	m_wstrTitle = STR_ID_2771,
	m_wstrDesc = STR_ID_4322,
	
	

	UNIT_CLASS =
	{
		UNIT_CLASS["UC_ELSWORD_SWORDMAN"],
	},

	REWARD = 
	{
		m_iRewardED		= 0,
		m_iRewardEXP	= 150,
	},
	
		
	m_wstrTextureName = "DLG_Common_Texture12.tga",
	m_wstrTexturePieceName = "Training_Elsword",
	
	m_wstrDescTextureName = "DLG_Common_Texture19.tga",	
	m_wstrDescTexturePieceName = "Training_Image_Hard_Death_Skill",
}






-- 아이샤
KTrainingCenterTable:AddTCTemplet
{
	m_iID			= 201,
	m_iDungeonID	= DUNGEON_ID["DI_TRAINING_ARME_0"],

	m_iMinLevel	= 1,
	m_iBeforeID	= 205,
	m_fPlayTime	= 300,
	m_iDifficulty = 3,

	m_iTrainingNumber = 1,
	m_wstrTitle = STR_ID_4312,
	m_wstrDesc = STR_ID_4316,

	

	UNIT_CLASS =
	{
		UNIT_CLASS["UC_ARME_VIOLET_MAGE"],
	},

	REWARD = 
	{
		m_iRewardED		= 0,
		m_iRewardEXP	= 150,
	},
	
		
	m_wstrTextureName = "DLG_Common_Texture12.tga",
	m_wstrTexturePieceName = "Training_Aisha",
	
	m_wstrDescTextureName = "DLG_Common_Texture18.tga",	
	m_wstrDescTexturePieceName = "Training_Image_Combo",
}


KTrainingCenterTable:AddTCTemplet
{
	m_iID			= 202,
	m_iDungeonID	= DUNGEON_ID["DI_TRAINING_ARME_1"],

	m_iMinLevel	= 1,
	m_iBeforeID	= 201,
	m_fPlayTime	= 300,
	m_iDifficulty = 4,
	
	m_iTrainingNumber = 2,	
	m_wstrTitle = STR_ID_4312,
	m_wstrDesc = STR_ID_4318,
	
	

	UNIT_CLASS =
	{
		UNIT_CLASS["UC_ARME_VIOLET_MAGE"],
	},

	REWARD = 
	{
		m_iRewardED		= 0,
		m_iRewardEXP	= 200,
	},
	
		
	m_wstrTextureName = "DLG_Common_Texture12.tga",
	m_wstrTexturePieceName = "Training_Aisha",

	m_wstrDescTextureName = "DLG_Common_Texture18.tga",	
	m_wstrDescTexturePieceName = "Training_Image_Sky_Attack",

}


KTrainingCenterTable:AddTCTemplet
{
	m_iID			= 203,
	m_iDungeonID	= DUNGEON_ID["DI_TRAINING_ARME_2"],

	m_iMinLevel	= 1,
	m_iBeforeID	= 202,
	m_fPlayTime	= 300,
	m_iDifficulty = 4,
		
	m_iTrainingNumber = 3,
	m_wstrTitle = STR_ID_4312,
	m_wstrDesc = STR_ID_4319,
	
	

	UNIT_CLASS =
	{
		UNIT_CLASS["UC_ARME_VIOLET_MAGE"],
	},

	REWARD = 
	{
		m_iRewardED		= 0,
		m_iRewardEXP	= 200,
	},
	
		
	m_wstrTextureName = "DLG_Common_Texture12.tga",
	m_wstrTexturePieceName = "Training_Aisha",

	m_wstrDescTextureName = "DLG_Common_Texture18.tga",	
	m_wstrDescTexturePieceName = "Training_Image_Sky_Combo",

}






KTrainingCenterTable:AddTCTemplet
{
	m_iID			= 205,
	m_iDungeonID	= DUNGEON_ID["DI_TRAINING_ARME_4"],

	m_iMinLevel	= 1,
	m_iBeforeID	= 206,
	m_fPlayTime	= 180,
	m_iDifficulty = 2,
	
	
	m_iTrainingNumber = 2,
	m_wstrTitle = STR_ID_1377,
	m_wstrDesc = STR_ID_4321,
	
	

	UNIT_CLASS =
	{
		UNIT_CLASS["UC_ARME_VIOLET_MAGE"],
	},

	REWARD = 
	{
		m_iRewardED		= 0,
		m_iRewardEXP	= 100,
	},
	
		
	m_wstrTextureName = "DLG_Common_Texture12.tga",
	m_wstrTexturePieceName = "Training_Aisha",
	
	m_wstrDescTextureName = "DLG_Common_Texture18.tga",	
	m_wstrDescTexturePieceName = "Training_Image_Jump",

}




KTrainingCenterTable:AddTCTemplet
{
	m_iID			= 206,
	m_iDungeonID	= DUNGEON_ID["DI_TRAINING_ARME_5"],

	m_iMinLevel	= 1,
	m_iBeforeID	= 0,
	m_fPlayTime	= 30,
	m_iDifficulty = 1,
	
	m_iTrainingNumber = 1,
	m_wstrTitle = STR_ID_1377,
	m_wstrDesc = STR_ID_1378,
	

	UNIT_CLASS =
	{
		UNIT_CLASS["UC_ARME_VIOLET_MAGE"],
	},

	REWARD = 
	{
		m_iRewardED		= 0,
		m_iRewardEXP	= 50,
	},
	
		
	m_wstrTextureName = "DLG_Common_Texture12.tga",
	m_wstrTexturePieceName = "Training_Aisha",
	
	m_wstrDescTextureName = "DLG_Common_Texture18.tga",	
	m_wstrDescTexturePieceName = "Training_Image_Moving",

}




KTrainingCenterTable:AddTCTemplet
{
	m_iID			= 207,
	m_iDungeonID	= DUNGEON_ID["DI_TRAINING_ARME_6"],

	m_iMinLevel	= 1,
	m_iBeforeID	= 201,
	m_fPlayTime	= 300,
	m_iDifficulty = 3,
	
	m_iTrainingNumber = 0,
	
	m_wstrTitle = STR_ID_2771,
	m_wstrDesc = STR_ID_4322,
	

	UNIT_CLASS =
	{
		UNIT_CLASS["UC_ARME_VIOLET_MAGE"],
	},

	REWARD = 
	{
		m_iRewardED		= 0,
		m_iRewardEXP	= 150,
	},
		
	m_wstrTextureName = "DLG_Common_Texture12.tga",
	m_wstrTexturePieceName = "Training_Aisha",
	
	m_wstrDescTextureName = "DLG_Common_Texture19.tga",	
	m_wstrDescTexturePieceName = "Training_Image_Hard_Death_Skill",

}















-- 레나
KTrainingCenterTable:AddTCTemplet
{
	m_iID			= 301,
	m_iDungeonID	= DUNGEON_ID["DI_TRAINING_LIRE_0"],

	m_iMinLevel	= 1,
	m_iBeforeID	= 305,
	m_fPlayTime	= 300,
	m_iDifficulty = 3,
	
	m_iTrainingNumber = 1,
	m_wstrTitle = STR_ID_4312,
	m_wstrDesc = STR_ID_4316,
	

	UNIT_CLASS =
	{
		UNIT_CLASS["UC_LIRE_ELVEN_RANGER"],
	},

	REWARD = 
	{
		m_iRewardED		= 0,
		m_iRewardEXP	= 150,
	},
	
		
	m_wstrTextureName = "DLG_Common_Texture12.tga",
	m_wstrTexturePieceName = "Training_Rena",
	
	m_wstrDescTextureName = "DLG_Common_Texture18.tga",	
	m_wstrDescTexturePieceName = "Training_Image_Combo",

}




KTrainingCenterTable:AddTCTemplet
{
	m_iID			= 302,
	m_iDungeonID	= DUNGEON_ID["DI_TRAINING_LIRE_1"],

	m_iMinLevel	= 1,
	m_iBeforeID	= 301,
	m_fPlayTime	= 300,
	m_iDifficulty = 3,
	
	m_iTrainingNumber = 2,
	m_wstrTitle = STR_ID_4312,
	m_wstrDesc = STR_ID_4318,
		

	UNIT_CLASS =
	{
		UNIT_CLASS["UC_LIRE_ELVEN_RANGER"],
	},

	REWARD = 
	{
		m_iRewardED		= 0,
		m_iRewardEXP	= 150,
	},
	
		
	m_wstrTextureName = "DLG_Common_Texture12.tga",
	m_wstrTexturePieceName = "Training_Rena",
	
	m_wstrDescTextureName = "DLG_Common_Texture18.tga",	
	m_wstrDescTexturePieceName = "Training_Image_Sky_Attack",

}


KTrainingCenterTable:AddTCTemplet
{
	m_iID			= 303,
	m_iDungeonID	= DUNGEON_ID["DI_TRAINING_LIRE_2"],

	m_iMinLevel	= 1,
	m_iBeforeID	= 302,
	m_fPlayTime	= 300,
	m_iDifficulty = 3,
	
	m_iTrainingNumber = 3,
	m_wstrTitle = STR_ID_4312,
	m_wstrDesc = STR_ID_4319,
	
	

	UNIT_CLASS =
	{
		UNIT_CLASS["UC_LIRE_ELVEN_RANGER"],
	},

	REWARD = 
	{
		m_iRewardED		= 0,
		m_iRewardEXP	= 150,
	},
	
		
	m_wstrTextureName = "DLG_Common_Texture12.tga",
	m_wstrTexturePieceName = "Training_Rena",
	
	m_wstrDescTextureName = "DLG_Common_Texture18.tga",	
	m_wstrDescTexturePieceName = "Training_Image_Sky_Combo",
}




KTrainingCenterTable:AddTCTemplet
{
	m_iID			= 304,
	m_iDungeonID	= DUNGEON_ID["DI_TRAINING_LIRE_3"],

	m_iMinLevel	= 1,
	m_iBeforeID	= 303,
	m_fPlayTime	= 300,
	m_iDifficulty = 3,

	m_iTrainingNumber = 0,

	m_wstrTitle = STR_ID_4314,
	m_wstrDesc = STR_ID_4323,
	

	UNIT_CLASS =
	{
		UNIT_CLASS["UC_LIRE_ELVEN_RANGER"],
	},

	REWARD = 
	{
		m_iRewardED		= 0,
		m_iRewardEXP	= 150,
	},
	
		
	m_wstrTextureName = "DLG_Common_Texture12.tga",
	m_wstrTexturePieceName = "Training_Rena",
	
	m_wstrDescTextureName = "DLG_Common_Texture18.tga",	
	m_wstrDescTexturePieceName = "Training_Image_Siege",

}



KTrainingCenterTable:AddTCTemplet
{
	m_iID			= 305,
	m_iDungeonID	= DUNGEON_ID["DI_TRAINING_LIRE_4"],

	m_iMinLevel	= 1,
	m_iBeforeID	= 306,
	m_fPlayTime	= 180,
	m_iDifficulty = 1,

	m_iTrainingNumber = 2,
	m_wstrTitle = STR_ID_1377,
	m_wstrDesc = STR_ID_4321,
	
	

	UNIT_CLASS =
	{
		UNIT_CLASS["UC_LIRE_ELVEN_RANGER"],
	},

	REWARD = 
	{
		m_iRewardED		= 0,
		m_iRewardEXP	= 50,
	},
	
		
	m_wstrTextureName = "DLG_Common_Texture12.tga",
	m_wstrTexturePieceName = "Training_Rena",
	
	m_wstrDescTextureName = "DLG_Common_Texture18.tga",	
	m_wstrDescTexturePieceName = "Training_Image_Jump",

}



KTrainingCenterTable:AddTCTemplet
{
	m_iID			= 306,
	m_iDungeonID	= DUNGEON_ID["DI_TRAINING_LIRE_5"],

	m_iMinLevel	= 1,
	m_iBeforeID	= 0,
	m_fPlayTime	= 30,
	m_iDifficulty = 1,

	m_iTrainingNumber = 1,
	m_wstrTitle = STR_ID_1377,
	m_wstrDesc = STR_ID_1378,
	

	UNIT_CLASS =
	{
		UNIT_CLASS["UC_LIRE_ELVEN_RANGER"],
	},

	REWARD = 
	{
		m_iRewardED		= 0,
		m_iRewardEXP	= 50,
	},
	
		
	m_wstrTextureName = "DLG_Common_Texture12.tga",
	m_wstrTexturePieceName = "Training_Rena",
	
	m_wstrDescTextureName = "DLG_Common_Texture18.tga",	
	m_wstrDescTexturePieceName = "Training_Image_Moving",
}



KTrainingCenterTable:AddTCTemplet
{
	m_iID			= 307,
	m_iDungeonID	= DUNGEON_ID["DI_TRAINING_LIRE_6"],

	m_iMinLevel	= 1,
	m_iBeforeID	= 301,
	m_fPlayTime	= 300,
	m_iDifficulty = 3,

	m_iTrainingNumber = 0,
	m_wstrTitle = STR_ID_2771,
	m_wstrDesc = STR_ID_4322,
	

	UNIT_CLASS =
	{
		UNIT_CLASS["UC_LIRE_ELVEN_RANGER"],
	},

	REWARD = 
	{
		m_iRewardED		= 0,
		m_iRewardEXP	= 150,
	},
	
		
	m_wstrTextureName = "DLG_Common_Texture12.tga",
	m_wstrTexturePieceName = "Training_Rena",
	
	m_wstrDescTextureName = "DLG_Common_Texture19.tga",	
	m_wstrDescTexturePieceName = "Training_Image_Hard_Death_Skill",
}


















-- 레이븐
KTrainingCenterTable:AddTCTemplet
{
	m_iID			= 401,
	m_iDungeonID	= DUNGEON_ID["DI_TRAINING_RAVEN_0"],

	m_iMinLevel	= 1,
	m_iBeforeID	= 0,
	m_fPlayTime	= 30,
	m_iDifficulty = 1,

	m_iTrainingNumber = 1,
	m_wstrTitle = STR_ID_1377,
	m_wstrDesc = STR_ID_1378,
	

	UNIT_CLASS =
	{
		UNIT_CLASS["UC_RAVEN_FIGHTER"],
	},

	REWARD = 
	{
		m_iRewardED		= 0,
		m_iRewardEXP	= 50,
	},
	
		
	m_wstrTextureName = "DLG_Common_New_Texture58.tga",
	m_wstrTexturePieceName = "Training_Raven",
	
	m_wstrDescTextureName = "DLG_Common_Texture18.tga",	
	m_wstrDescTexturePieceName = "Training_Image_Moving",
}


KTrainingCenterTable:AddTCTemplet
{
	m_iID			= 402,
	m_iDungeonID	= DUNGEON_ID["DI_TRAINING_RAVEN_1"],

	m_iMinLevel	= 1,
	m_iBeforeID	= 401,
	m_fPlayTime	= 180,
	m_iDifficulty = 1,

	m_iTrainingNumber = 2,
	m_wstrTitle = STR_ID_1377,
	m_wstrDesc = STR_ID_4321,
	
	

	UNIT_CLASS =
	{
		UNIT_CLASS["UC_RAVEN_FIGHTER"],
	},

	REWARD = 
	{
		m_iRewardED		= 0,
		m_iRewardEXP	= 50,
	},
	
		
	m_wstrTextureName = "DLG_Common_New_Texture58.tga",
	m_wstrTexturePieceName = "Training_Raven",
	
	m_wstrDescTextureName = "DLG_Common_Texture18.tga",	
	m_wstrDescTexturePieceName = "Training_Image_Jump",

}








KTrainingCenterTable:AddTCTemplet
{
	m_iID			= 403,
	m_iDungeonID	= DUNGEON_ID["DI_TRAINING_RAVEN_2"],

	m_iMinLevel	= 1,
	m_iBeforeID	= 402,
	m_fPlayTime	= 300,
	m_iDifficulty = 3,
	
	m_iTrainingNumber = 1,
	m_wstrTitle = STR_ID_4312,
	m_wstrDesc = STR_ID_4316,
	

	UNIT_CLASS =
	{
		UNIT_CLASS["UC_RAVEN_FIGHTER"],
	},

	REWARD = 
	{
		m_iRewardED		= 0,
		m_iRewardEXP	= 150,
	},
	
		
	m_wstrTextureName = "DLG_Common_New_Texture58.tga",
	m_wstrTexturePieceName = "Training_Raven",
	
	m_wstrDescTextureName = "DLG_Common_Texture18.tga",	
	m_wstrDescTexturePieceName = "Training_Image_Combo",

}




KTrainingCenterTable:AddTCTemplet
{
	m_iID			= 404,
	m_iDungeonID	= DUNGEON_ID["DI_TRAINING_RAVEN_3"],

	m_iMinLevel	= 1,
	m_iBeforeID	= 403,
	m_fPlayTime	= 300,
	m_iDifficulty = 3,
	
	m_iTrainingNumber = 2,
	m_wstrTitle = STR_ID_4312,
	m_wstrDesc = STR_ID_4318,
		

	UNIT_CLASS =
	{
		UNIT_CLASS["UC_RAVEN_FIGHTER"],
	},

	REWARD = 
	{
		m_iRewardED		= 0,
		m_iRewardEXP	= 150,
	},
	
		
	m_wstrTextureName = "DLG_Common_New_Texture58.tga",
	m_wstrTexturePieceName = "Training_Raven",
	
	m_wstrDescTextureName = "DLG_Common_Texture18.tga",	
	m_wstrDescTexturePieceName = "Training_Image_Sky_Attack",

}


KTrainingCenterTable:AddTCTemplet
{
	m_iID			= 405,
	m_iDungeonID	= DUNGEON_ID["DI_TRAINING_RAVEN_4"],

	m_iMinLevel	= 1,
	m_iBeforeID	= 404,
	m_fPlayTime	= 300,
	m_iDifficulty = 3,
	
	m_iTrainingNumber = 3,
	m_wstrTitle = STR_ID_4312,
	m_wstrDesc = STR_ID_4319,
	
	

	UNIT_CLASS =
	{
		UNIT_CLASS["UC_RAVEN_FIGHTER"],
	},

	REWARD = 
	{
		m_iRewardED		= 0,
		m_iRewardEXP	= 150,
	},
	
		
	m_wstrTextureName = "DLG_Common_New_Texture58.tga",
	m_wstrTexturePieceName = "Training_Raven",
	
	m_wstrDescTextureName = "DLG_Common_Texture18.tga",	
	m_wstrDescTexturePieceName = "Training_Image_Sky_Combo",	
}




KTrainingCenterTable:AddTCTemplet
{
	m_iID			= 406,
	m_iDungeonID	= DUNGEON_ID["DI_TRAINING_RAVEN_5"],

	m_iMinLevel	= 1,
	m_iBeforeID	= 405,
	m_fPlayTime	= 300,
	m_iDifficulty = 3,

	m_iTrainingNumber = 0,

	m_wstrTitle = STR_ID_2773,		
	m_wstrDesc = STR_ID_4324, 
	

	UNIT_CLASS =
	{
		UNIT_CLASS["UC_RAVEN_FIGHTER"],
	},

	REWARD = 
	{
		m_iRewardED		= 0,
		m_iRewardEXP	= 150,
	},
	
		
	m_wstrTextureName = "DLG_Common_New_Texture58.tga",
	m_wstrTexturePieceName = "Training_Raven",
	
	m_wstrDescTextureName = "DLG_Common_New_Texture58.tga",	
	m_wstrDescTexturePieceName = "Training_Image_Burningrush",		

}



KTrainingCenterTable:AddTCTemplet
{
	m_iID			= 407,
	m_iDungeonID	= DUNGEON_ID["DI_TRAINING_RAVEN_6"],

	m_iMinLevel	= 1,
	m_iBeforeID	= 403,
	m_fPlayTime	= 300,
	m_iDifficulty = 3,

	m_iTrainingNumber = 0,
	m_wstrTitle = STR_ID_2771,
	m_wstrDesc = STR_ID_4322,
	

	UNIT_CLASS =
	{
		UNIT_CLASS["UC_RAVEN_FIGHTER"],
	},

	REWARD = 
	{
		m_iRewardED		= 0,
		m_iRewardEXP	= 150,
	},
	
		
	m_wstrTextureName = "DLG_Common_New_Texture58.tga",
	m_wstrTexturePieceName = "Training_Raven",
	
	m_wstrDescTextureName = "DLG_Common_Texture19.tga",	
	m_wstrDescTexturePieceName = "Training_Image_Hard_Death_Skill",
}




