-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- SEPARATION_MOTION 관련 수정
-- before :
--		m_MotionFile			
--		m_FieldMotionFile       
-- atfer :
--		m_CommonMotion	
--		m_FieldMotion	
--		m_LobbyMotion	
--		m_EmotionMotion	
--		m_GameMotion0	
--		m_GameMotion1	
--		m_GameMotion2	

g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_ELSWORD"],
	unitClass				= UNIT_CLASS["UC_ELSWORD_SWORDMAN"],
			
	name					= STR_ID_614,
	description				= STR_ID_614,
	
	--m_MotionFile			= "Motion_Elsword_SwordMan.x",
	--m_FieldMotionFile       = "Motion_Field_Elsword.x",
	
	basicWeaponItemID	= 7,
	basicHairItemID		= 1,
	basicFaceItemID		= 2,
	basicBodyItemID		= 3,
	basicLegItemID		= 4,
	basicHandItemID		= 5,
	basicFootItemID		= 6,
	
	m_CommonMotion	= "Motion_Elsword_Common.x",
	m_FieldMotion	= "Motion_Elsword_Field.x",
	m_LobbyMotion	= "Motion_Elsword_Lobby.x",
	m_EmotionMotion	= "Motion_Elsword_Emotion.x",	
	
	m_GameMotion0	= "Motion_Elsword.x",
	m_GameMotion1	= "",
	m_GameMotion2	= "",
}

g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_LIRE"],
	unitClass				= UNIT_CLASS["UC_LIRE_ELVEN_RANGER"],
			
	name					= STR_ID_616,
	description				= STR_ID_616,
	
	--m_MotionFile			= "Motion_Lire_ElvenRanger.x",
	--m_FieldMotionFile       = "Motion_Field_Lire.x",
		
	basicWeaponItemID	= 14,
	basicHairItemID		= 8,
	basicFaceItemID		= 9,
	basicBodyItemID		= 10,
	basicLegItemID		= 11,
	basicHandItemID		= 12,
	basicFootItemID		= 13,
	
	m_CommonMotion	= "Motion_Lire_Common.x",
	m_FieldMotion	= "Motion_Lire_Field.x",
	m_LobbyMotion	= "Motion_Lire_Lobby.x",
	m_EmotionMotion	= "Motion_Lire_Emotion.x",	
	
	m_GameMotion0	= "Motion_Lire.x",
	m_GameMotion1	= "",
	m_GameMotion2	= "",
}

g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_ARME"],
	unitClass				= UNIT_CLASS["UC_ARME_VIOLET_MAGE"],
			
	name					= STR_ID_615,
	description				= STR_ID_615,
	
	--m_MotionFile			= "Motion_Arme_VioletMage.x",
	--m_FieldMotionFile       = "Motion_Field_Arme.x",
		
	basicWeaponItemID	= 21,
	basicHairItemID		= 15,
	basicFaceItemID		= 16,
	basicBodyItemID		= 17,
	basicLegItemID		= 18,
	basicHandItemID		= 19,
	basicFootItemID		= 20,
	
	m_CommonMotion	= "Motion_Arme_Common.x",
	m_FieldMotion	= "Motion_Arme_Field.x",
	m_LobbyMotion	= "Motion_Arme_Lobby.x",
	m_EmotionMotion	= "Motion_Arme_Emotion.x",	
	
	m_GameMotion0	= "Motion_Arme.x",
	m_GameMotion1	= "",
	m_GameMotion2	= "",
}


g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_ELSWORD"],
	unitClass				= UNIT_CLASS["UC_ELSWORD_KNIGHT"],
			
	name					= STR_ID_614,
	description				= STR_ID_4231,
	
	--m_MotionFile			= "Motion_Elsword_SwordMan.x",
	--m_FieldMotionFile       = "Motion_Field_Elsword.x",
	
	basicWeaponItemID	= 7,
	basicHairItemID		= 22,
	basicFaceItemID		= 2,
	basicBodyItemID		= 3,
	basicLegItemID		= 4,
	basicHandItemID		= 5,
	basicFootItemID		= 6,
	
	m_CommonMotion	= "Motion_Elsword_Common.x",
	m_FieldMotion	= "Motion_Elsword_Field.x",
	m_LobbyMotion	= "Motion_Elsword_Lobby.x",
	m_EmotionMotion	= "Motion_Elsword_Emotion.x",
	
	m_GameMotion0	= "Motion_Elsword.x",
	m_GameMotion1	= "Motion_Elsword_SK.x",
	m_GameMotion2	= "",
	
}

g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_ELSWORD"],
	unitClass				= UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"],
			
	name					= STR_ID_614,
	description				= STR_ID_4232,
	
	--m_MotionFile			= "Motion_Elsword_SwordMan.x",
	--m_FieldMotionFile       = "Motion_Field_Elsword.x",
	
	basicWeaponItemID	= 7,
	basicHairItemID		= 23,
	basicFaceItemID		= 2,
	basicBodyItemID		= 3,
	basicLegItemID		= 4,
	basicHandItemID		= 5,
	basicFootItemID		= 6,
	
	m_CommonMotion	= "Motion_Elsword_Common.x",
	m_FieldMotion	= "Motion_Elsword_Field.x",
	m_LobbyMotion	= "Motion_Elsword_Lobby.x",
	m_EmotionMotion	= "Motion_Elsword_Emotion.x",
	
	m_GameMotion0	= "Motion_Elsword.x",
	m_GameMotion1	= "Motion_Elsword_MK.x",
	m_GameMotion2	= "",
	
}


g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_ELSWORD"],
	unitClass				= UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"],
			
	name					= STR_ID_614,
	description				= STR_ID_15276,
	
	--m_MotionFile			= "Motion_Elsword_SwordMan.x",
	--m_FieldMotionFile       = "Motion_Field_Elsword.x",
	
	basicWeaponItemID	= 7,
	basicHairItemID		= 40500,
	basicFaceItemID		= 2,
	basicBodyItemID		= 3,
	basicLegItemID		= 4,
	basicHandItemID		= 5,
	basicFootItemID		= 6,
	
	m_CommonMotion	= "Motion_Elsword_Common.x",
	m_FieldMotion	= "Motion_Elsword_Field.x",
	m_LobbyMotion	= "Motion_Elsword_Lobby.x",
	m_EmotionMotion	= "Motion_Elsword_Emotion.x",
	
	m_GameMotion0	= "Motion_Elsword.x",
	m_GameMotion1	= "Motion_Elsword_TK.x",
	m_GameMotion2	= "",
	
}

g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_LIRE"],
	unitClass				= UNIT_CLASS["UC_LIRE_COMBAT_RANGER"],
			
	name					= STR_ID_616,
	description				= STR_ID_4233,
	
	--m_MotionFile			= "Motion_Lire_ElvenRanger.x",
	--m_FieldMotionFile       = "Motion_Field_Lire.x",
		
	basicWeaponItemID	= 14,
	basicHairItemID		= 24,
	basicFaceItemID		= 9,
	basicBodyItemID		= 10,
	basicLegItemID		= 11,
	basicHandItemID		= 12,
	basicFootItemID		= 13,
	
	m_CommonMotion	= "Motion_Lire_Common.x",
	m_FieldMotion	= "Motion_Lire_Field.x",
	m_LobbyMotion	= "Motion_Lire_Lobby.x",
	m_EmotionMotion	= "Motion_Lire_Emotion.x",	
	
	m_GameMotion0	= "Motion_Lire.x",
	m_GameMotion1	= "Motion_Lire_CR.x",
	m_GameMotion2	= "",
}

g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_LIRE"],
	unitClass				= UNIT_CLASS["UC_LIRE_SNIPING_RANGER"],
			
	name					= STR_ID_616,
	description				= STR_ID_4234,
	
	--m_MotionFile			= "Motion_Lire_ElvenRanger.x",
	--m_FieldMotionFile       = "Motion_Field_Lire.x",
		
	basicWeaponItemID	= 14,
	basicHairItemID		= 25,
	basicFaceItemID		= 9,
	basicBodyItemID		= 10,
	basicLegItemID		= 11,
	basicHandItemID		= 12,
	basicFootItemID		= 13,
	
	m_CommonMotion	= "Motion_Lire_Common.x",
	m_FieldMotion	= "Motion_Lire_Field.x",
	m_LobbyMotion	= "Motion_Lire_Lobby.x",
	m_EmotionMotion	= "Motion_Lire_Emotion.x",	
	
	m_GameMotion0	= "Motion_Lire.x",
	m_GameMotion1	= "Motion_Lire_SR.x",
	m_GameMotion2	= "",
}

g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_ARME"],
	unitClass				= UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"],
			
	name					= STR_ID_615,
	description				= STR_ID_4235,
	
	--m_MotionFile			= "Motion_Arme_VioletMage.x",
	--m_FieldMotionFile       = "Motion_Field_Arme.x",
		
	basicWeaponItemID	= 21,
	basicHairItemID		= 26,
	basicFaceItemID		= 16,
	basicBodyItemID		= 17,
	basicLegItemID		= 18,
	basicHandItemID		= 19,
	basicFootItemID		= 20,
	
	m_CommonMotion	= "Motion_Arme_Common.x",
	m_FieldMotion	= "Motion_Arme_Field.x",
	m_LobbyMotion	= "Motion_Arme_Lobby.x",
	m_EmotionMotion	= "Motion_Arme_Emotion.x",	

	m_GameMotion0	= "Motion_Arme.x",
	m_GameMotion1	= "Motion_Arme_HM.x",
	m_GameMotion2	= "",
}

g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_ARME"],
	unitClass				= UNIT_CLASS["UC_ARME_DARK_MAGICIAN"],
			
	name					= STR_ID_615,
	description				= STR_ID_4236,
	
	--m_MotionFile			= "Motion_Arme_VioletMage.x",
	--m_FieldMotionFile       = "Motion_Field_Arme.x",
		
	basicWeaponItemID	= 21,
	basicHairItemID		= 27,
	basicFaceItemID		= 16,
	basicBodyItemID		= 17,
	basicLegItemID		= 18,
	basicHandItemID		= 19,
	basicFootItemID		= 20,
	
	m_CommonMotion	= "Motion_Arme_Common.x",
	m_FieldMotion	= "Motion_Arme_Field.x",
	m_LobbyMotion	= "Motion_Arme_Lobby.x",
	m_EmotionMotion	= "Motion_Arme_Emotion.x",	

	m_GameMotion0	= "Motion_Arme.x",
	m_GameMotion1	= "Motion_Arme_DM.x",
	m_GameMotion2	= "",
}

g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_ARME"],
	unitClass				= UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"],
			
	name					= STR_ID_615,
	description				= STR_ID_15383,
	
	--m_MotionFile			= "Motion_Arme_VioletMage.x",
	--m_FieldMotionFile       = "Motion_Field_Arme.x",
		
	basicWeaponItemID	= 21,
	basicHairItemID		= 40510,
	basicFaceItemID		= 16,
	basicBodyItemID		= 17,
	basicLegItemID		= 18,
	basicHandItemID		= 19,
	basicFootItemID		= 20,
	
	m_CommonMotion	= "Motion_Arme_Common.x",
	m_FieldMotion	= "Motion_Arme_Field.x",
	m_LobbyMotion	= "Motion_Arme_Lobby.x",
	m_EmotionMotion	= "Motion_Arme_Emotion.x",	

	m_GameMotion0	= "Motion_Arme.x",
	m_GameMotion1	= "Motion_Arme_BM.x",
	m_GameMotion2	= "",
}






g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_RAVEN"],
	unitClass				= UNIT_CLASS["UC_RAVEN_FIGHTER"],
			
	name					= STR_ID_617,
	description				= STR_ID_617,
	
	--m_MotionFile			= "Motion_Raven.x",
	--m_FieldMotionFile       = "Motion_Field_Raven.x",
	
	basicWeaponItemID		= 34,
	basicHairItemID			= 28,
	basicFaceItemID			= 29,
	basicBodyItemID			= 30,
	basicLegItemID			= 31,
	basicHandItemID			= 32,
	basicFootItemID			= 33,
	
	m_RavenLeftArmItemID	= 129976,
	
	m_CommonMotion	= "Motion_Raven_Common.x",
	m_FieldMotion	= "Motion_Raven_Field.x",
	m_LobbyMotion	= "Motion_Raven_Lobby.x",
	m_EmotionMotion	= "Motion_Raven_Emotion.x",	

	m_GameMotion0	= "Motion_Raven.x",
	m_GameMotion1	= "",
	m_GameMotion2	= "",
}






g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_RAVEN"],
	unitClass				= UNIT_CLASS["UC_RAVEN_SOUL_TAKER"],
			
	name					= STR_ID_617,
	description				= STR_ID_4237,
	
	--m_MotionFile			= "Motion_Raven.x",
	--m_FieldMotionFile       = "Motion_Field_Raven.x",
	
	basicWeaponItemID		= 34,				
	basicHairItemID			= 129980,
	basicFaceItemID			= 29,
	basicBodyItemID			= 30,
	basicLegItemID			= 31,
	basicHandItemID			= 32,
	basicFootItemID			= 33,
	
	m_RavenLeftArmItemID	= 129977,			
	
	m_CommonMotion	= "Motion_Raven_Common.x",
	m_FieldMotion	= "Motion_Raven_Field.x",
	m_LobbyMotion	= "Motion_Raven_Lobby.x",
	m_EmotionMotion	= "Motion_Raven_Emotion.x",	

	m_GameMotion0	= "Motion_Raven.x",
	m_GameMotion1	= "Motion_Raven_ST.x",
	m_GameMotion2	= "",
}


g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_RAVEN"],
	unitClass				= UNIT_CLASS["UC_RAVEN_OVER_TAKER"],
			
	name					= STR_ID_617,
	description				= STR_ID_4238,
	
	--m_MotionFile			= "Motion_Raven.x",
	--m_FieldMotionFile       = "Motion_Field_Raven.x",
	
	basicWeaponItemID		= 34,			
	basicHairItemID			= 129979,
	basicFaceItemID			= 29,
	basicBodyItemID			= 30,
	basicLegItemID			= 31,
	basicHandItemID			= 32,
	basicFootItemID			= 33,
	
	m_RavenLeftArmItemID	= 129978,
	
	m_CommonMotion	= "Motion_Raven_Common.x",
	m_FieldMotion	= "Motion_Raven_Field.x",
	m_LobbyMotion	= "Motion_Raven_Lobby.x",
	m_EmotionMotion	= "Motion_Raven_Emotion.x",	

	m_GameMotion0	= "Motion_Raven.x",
	m_GameMotion1	= "Motion_Raven_OT.x",
	m_GameMotion2	= "",
}








g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_EVE"],
	unitClass				= UNIT_CLASS["UC_EVE_NASOD"],
			
	name					= STR_ID_618,
	description				= STR_ID_618,
	
	--m_MotionFile			= "Motion_Eve.x",
	--m_FieldMotionFile       = "Motion_Field_Eve.x",
	
	basicWeaponItemID		= 41,					
	basicHairItemID			= 35,					
	basicFaceItemID			= 36,					
	basicBodyItemID			= 37,					
	basicLegItemID			= 38,					
	basicHandItemID			= 39,					
	basicFootItemID			= 40,	
	
	--m_SecondWeaponItemID	= 42,
	
	m_CommonMotion	= "Motion_EVE_Common.x",
	m_FieldMotion	= "Motion_EVE_Field.x",
	m_LobbyMotion	= "Motion_EVE_Lobby.x",
	m_EmotionMotion	= "Motion_EVE_Emotion.x",	

	m_GameMotion0	= "Motion_EVE.x",
	m_GameMotion1	= "",
	m_GameMotion2	= "",
}

g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_EVE"],
	unitClass				= UNIT_CLASS["UC_EVE_EXOTIC_GEAR"],
			
	name					= STR_ID_618,
	description				= STR_ID_4239,
	
	--m_MotionFile			= "Motion_Eve.x",
	--m_FieldMotionFile       = "Motion_Field_Eve.x",
	
	basicWeaponItemID		= 41,					
	basicHairItemID			= 130335,					
	basicFaceItemID			= 36,					
	basicBodyItemID			= 37,					
	basicLegItemID			= 38,					
	basicHandItemID			= 39,					
	basicFootItemID			= 40,	
	
	--m_SecondWeaponItemID	= 42,
	
	m_CommonMotion	= "Motion_EVE_Common.x",
	m_FieldMotion	= "Motion_EVE_Field.x",
	m_LobbyMotion	= "Motion_EVE_Lobby.x",
	m_EmotionMotion	= "Motion_EVE_Emotion.x",	

	m_GameMotion0	= "Motion_EVE.x",
	m_GameMotion1	= "Motion_EVE_EG.x",
	m_GameMotion2	= "",
}

g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_EVE"],
	unitClass				= UNIT_CLASS["UC_EVE_ARCHITECTURE"],
			
	name					= STR_ID_618,
	description				= STR_ID_4240,
	
	--m_MotionFile			= "Motion_Eve.x",
	--m_FieldMotionFile       = "Motion_Field_Eve.x",
	
	basicWeaponItemID		= 41,					
	basicHairItemID			= 130345,					
	basicFaceItemID			= 36,					
	basicBodyItemID			= 37,					
	basicLegItemID			= 38,					
	basicHandItemID			= 39,					
	basicFootItemID			= 40,	
	
	--m_SecondWeaponItemID	= 42,
	
	m_CommonMotion	= "Motion_EVE_Common.x",
	m_FieldMotion	= "Motion_EVE_Field.x",
	m_LobbyMotion	= "Motion_EVE_Lobby.x",
	m_EmotionMotion	= "Motion_EVE_Emotion.x",	

	m_GameMotion0	= "Motion_EVE.x",
	m_GameMotion1	= "Motion_EVE_AT.x",
	m_GameMotion2	= "",
}
















g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_ELSWORD"],
	unitClass				= UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"],
			
	name					= STR_ID_614,
	description				= STR_ID_4643,
	
	--m_MotionFile			= "Motion_Elsword_SwordMan.x",
	--m_FieldMotionFile       = "Motion_Field_Elsword.x",
	
	basicWeaponItemID	= 7,
	basicHairItemID		= 42,
	basicFaceItemID		= 44,
	basicBodyItemID		= 3,
	basicLegItemID		= 4,
	basicHandItemID		= 5,
	basicFootItemID		= 6,
	
	m_CommonMotion	= "Motion_Elsword_Common.x",
	m_FieldMotion	= "Motion_Elsword_Field.x",
	m_LobbyMotion	= "Motion_Elsword_Lobby.x",
	m_EmotionMotion	= "Motion_Elsword_Emotion.x",
	
	m_GameMotion0	= "Motion_Elsword.x",
	m_GameMotion1	= "Motion_Elsword_SK.x",
	m_GameMotion2	= "Motion_Elsword_LK.x",	
}





g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_ELSWORD"],
	unitClass				= UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"],
			
	name					= STR_ID_614,
	description				= STR_ID_4644,
	
	--m_MotionFile			= "Motion_Elsword_SwordMan.x",
	--m_FieldMotionFile       = "Motion_Field_Elsword.x",
	
	basicWeaponItemID	= 7,
	basicHairItemID		= 43,
	basicFaceItemID		= 45,
	basicBodyItemID		= 3,
	basicLegItemID		= 4,
	basicHandItemID		= 5,
	basicFootItemID		= 6,
	
	m_CommonMotion	= "Motion_Elsword_Common.x",
	m_FieldMotion	= "Motion_Elsword_Field.x",
	m_LobbyMotion	= "Motion_Elsword_Lobby.x",
	m_EmotionMotion	= "Motion_Elsword_Emotion.x",
	
	m_GameMotion0	= "Motion_Elsword.x",
	m_GameMotion1	= "Motion_Elsword_MK.x",
	m_GameMotion2	= "Motion_Elsword_RS.x",	
}








g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_LIRE"],
	unitClass				= UNIT_CLASS["UC_LIRE_WIND_SNEAKER"],
			
	name					= STR_ID_616,
	description				= STR_ID_4781,
	
	--m_MotionFile			= "Motion_Lire_ElvenRanger.x",
	--m_FieldMotionFile       = "Motion_Field_Lire.x",
		
	basicWeaponItemID	= 14,
	basicHairItemID		= 46,
	basicFaceItemID		= 9,
	basicBodyItemID		= 10,
	basicLegItemID		= 11,
	basicHandItemID		= 12,
	basicFootItemID		= 13,
	
	m_CommonMotion	= "Motion_Lire_Common.x",
	m_FieldMotion	= "Motion_Lire_Field.x",
	m_LobbyMotion	= "Motion_Lire_Lobby.x",
	m_EmotionMotion	= "Motion_Lire_Emotion.x",	
	
	m_GameMotion0	= "Motion_Lire.x",
	m_GameMotion1	= "Motion_Lire_CR.x",
	m_GameMotion2	= "Motion_Lire_WS.x",
}

g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_LIRE"],
	unitClass				= UNIT_CLASS["UC_LIRE_GRAND_ARCHER"],
			
	name					= STR_ID_616,
	description				= STR_ID_4782,
	
	--m_MotionFile			= "Motion_Lire_ElvenRanger.x",
	--m_FieldMotionFile       = "Motion_Field_Lire.x",
		
	basicWeaponItemID	= 14,
	basicHairItemID		= 47,
	basicFaceItemID		= 9,
	basicBodyItemID		= 10,
	basicLegItemID		= 11,
	basicHandItemID		= 12,
	basicFootItemID		= 13,
	
	m_CommonMotion	= "Motion_Lire_Common.x",
	m_FieldMotion	= "Motion_Lire_Field.x",
	m_LobbyMotion	= "Motion_Lire_Lobby.x",
	m_EmotionMotion	= "Motion_Lire_Emotion.x",	
	
	m_GameMotion0	= "Motion_Lire.x",
	m_GameMotion1	= "Motion_Lire_SR.x",
	m_GameMotion2	= "Motion_Lire_GA.x",
}









g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_ARME"],
	unitClass				= UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"],
			
	name					= STR_ID_615,
	description				= STR_ID_4790,
	
	--m_MotionFile			= "Motion_Arme_VioletMage.x",
	--m_FieldMotionFile       = "Motion_Field_Arme.x",
		
	basicWeaponItemID	= 21,
	basicHairItemID		= 48,
	basicFaceItemID		= 50,
	basicBodyItemID		= 17,
	basicLegItemID		= 18,
	basicHandItemID		= 19,
	basicFootItemID		= 20,
	
	m_CommonMotion	= "Motion_Arme_Common.x",
	m_FieldMotion	= "Motion_Arme_Field.x",
	m_LobbyMotion	= "Motion_Arme_Lobby.x",
	m_EmotionMotion	= "Motion_Arme_Emotion.x",	

	m_GameMotion0	= "Motion_Arme.x",
	m_GameMotion1	= "Motion_Arme_HM.x",
	m_GameMotion2	= "Motion_Arme_EM.x",
}

g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_ARME"],
	unitClass				= UNIT_CLASS["UC_ARME_VOID_PRINCESS"],
			
	name					= STR_ID_615,
	description				= STR_ID_4791,
	
	--m_MotionFile			= "Motion_Arme_VioletMage.x",
	--m_FieldMotionFile       = "Motion_Field_Arme.x",
		
	basicWeaponItemID	= 21,
	basicHairItemID		= 49,
	basicFaceItemID		= 51,
	basicBodyItemID		= 17,
	basicLegItemID		= 18,
	basicHandItemID		= 19,
	basicFootItemID		= 20,
	
	m_CommonMotion	= "Motion_Arme_Common.x",
	m_FieldMotion	= "Motion_Arme_Field.x",
	m_LobbyMotion	= "Motion_Arme_Lobby.x",
	m_EmotionMotion	= "Motion_Arme_Emotion.x",	

	m_GameMotion0	= "Motion_Arme.x",
	m_GameMotion1	= "Motion_Arme_DM.x",
	m_GameMotion2	= "Motion_Arme_VP.x",
}

g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_RAVEN"],
	unitClass				= UNIT_CLASS["UC_RAVEN_BLADE_MASTER"],
			
	name					= STR_ID_4847,
	description				= STR_ID_4849,
	
	--m_MotionFile			= "Motion_Raven.x",	
	--m_FieldMotionFile       = "Motion_Field_Raven.x",
	
	basicWeaponItemID		= 34,				
	basicHairItemID			= 52,
	basicFaceItemID			= 29,
	basicBodyItemID			= 30,
	basicLegItemID			= 31,
	basicHandItemID			= 32,
	basicFootItemID			= 33,
	
	m_RavenLeftArmItemID	= 131598,	
	
	m_CommonMotion	= "Motion_Raven_Common.x",
	m_FieldMotion	= "Motion_Raven_Field.x",
	m_LobbyMotion	= "Motion_Raven_Lobby.x",
	m_EmotionMotion	= "Motion_Raven_Emotion.x",	

	m_GameMotion0	= "Motion_Raven.x",
	m_GameMotion1	= "Motion_Raven_ST.x",
	m_GameMotion2	= "Motion_Raven_BM.x",		
}


g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_RAVEN"],
	unitClass				= UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"],
			
	name					= STR_ID_4848,
	description				= STR_ID_4850,
	
	--m_MotionFile			= "Motion_Raven.x",	
	--m_FieldMotionFile       = "Motion_Field_Raven.x",
	
	basicWeaponItemID		= 34,			
	basicHairItemID			= 53,
	basicFaceItemID			= 29,
	basicBodyItemID			= 30,
	basicLegItemID			= 31,
	basicHandItemID			= 32,
	basicFootItemID			= 33,
	
	m_RavenLeftArmItemID	= 131599,
	
	m_CommonMotion	= "Motion_Raven_Common.x",
	m_FieldMotion	= "Motion_Raven_Field.x",
	m_LobbyMotion	= "Motion_Raven_Lobby.x",
	m_EmotionMotion	= "Motion_Raven_Emotion.x",	

	m_GameMotion0	= "Motion_Raven.x",
	m_GameMotion1	= "Motion_Raven_OT.x",
	m_GameMotion2	= "Motion_Raven_RF.x",		
}

g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_EVE"],
	unitClass				= UNIT_CLASS["UC_EVE_CODE_NEMESIS"],
			
	name					= STR_ID_4916,
	description				= STR_ID_4845,
	
	--m_MotionFile			= "Motion_Eve.x",
	--m_FieldMotionFile       = "Motion_Field_Eve.x",
	
	basicWeaponItemID		= 41,					
	basicHairItemID			= 54,					
	basicFaceItemID			= 36,					
	basicBodyItemID			= 37,					
	basicLegItemID			= 38,					
	basicHandItemID			= 39,					
	basicFootItemID			= 40,	
	
	--m_SecondWeaponItemID	= 42,
	
	m_CommonMotion	= "Motion_EVE_Common.x",
	m_FieldMotion	= "Motion_EVE_Field.x",
	m_LobbyMotion	= "Motion_EVE_Lobby.x",
	m_EmotionMotion	= "Motion_EVE_Emotion.x",	

	m_GameMotion0	= "Motion_EVE.x",
	m_GameMotion1	= "Motion_EVE_EG.x",
	m_GameMotion2	= "Motion_EVE_NS.x",
}

g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_EVE"],
	unitClass				= UNIT_CLASS["UC_EVE_CODE_EMPRESS"],
			
	name					= STR_ID_4917,
	description				= STR_ID_4846,
	
	--m_MotionFile			= "Motion_Eve.x",
	--m_FieldMotionFile       = "Motion_Field_Eve.x",
	
	basicWeaponItemID		= 41,					
	basicHairItemID			= 55,					
	basicFaceItemID			= 36,					
	basicBodyItemID			= 37,					
	basicLegItemID			= 38,					
	basicHandItemID			= 39,					
	basicFootItemID			= 40,	
	
	--m_SecondWeaponItemID	= 42,
	
	m_CommonMotion	= "Motion_EVE_Common.x",
	m_FieldMotion	= "Motion_EVE_Field.x",
	m_LobbyMotion	= "Motion_EVE_Lobby.x",
	m_EmotionMotion	= "Motion_EVE_Emotion.x",	

	m_GameMotion0	= "Motion_EVE.x",
	m_GameMotion1	= "Motion_EVE_AT.x",
	m_GameMotion2	= "Motion_EVE_EP.x",
}


-- 청, 노전직
g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_CHUNG"],
	unitClass				= UNIT_CLASS["UC_CHUNG_IRON_CANNON"],
			
	name					= STR_ID_9739,
	description				= STR_ID_9739,
	
	basicWeaponItemID		= 62,					
	basicHairItemID			= 56,					
	basicFaceItemID			= 57,					
	basicBodyItemID			= 58,					
	basicLegItemID			= 59,					
	basicHandItemID			= 60,					
	basicFootItemID			= 61,	
	
	m_CommonMotion	= "Motion_CHUNG_Common.x",
	m_FieldMotion	= "Motion_CHUNG_Field.x",
	m_LobbyMotion	= "Motion_CHUNG_Lobby.x",
	m_EmotionMotion	= "Motion_CHUNG_Emotion.x",	

	m_GameMotion0	= "Motion_CHUNG.x",
	--m_GameMotion1	= "Motion_EVE_EG.x",
	--m_GameMotion2	= "Motion_EVE_NS.x",
}

-- 청, 1차 전직 (퓨리 가디언)
g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_CHUNG"],
	unitClass				= UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"],
			
	name					= STR_ID_10239,
	description				= STR_ID_10237,
	
	basicWeaponItemID		= 62,					
	basicHairItemID			= 40240,					
	basicFaceItemID			= 57,					
	basicBodyItemID			= 58,					
	basicLegItemID			= 59,					
	basicHandItemID			= 60,					
	basicFootItemID			= 61,
	
	m_CommonMotion	= "Motion_CHUNG_Common.x",
	m_FieldMotion	= "Motion_CHUNG_Field.x",
	m_LobbyMotion	= "Motion_CHUNG_Lobby.x",
	m_EmotionMotion	= "Motion_CHUNG_Emotion.x",	
	
	m_GameMotion0	= "Motion_CHUNG.x",
	m_GameMotion1	= "Motion_CHUNG_CFG.x",
	--m_GameMotion2	= "",
}

-- 청, 1차 전직 (슈팅 가디언)
g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_CHUNG"],
	unitClass				= UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"],
			
	name					= STR_ID_10240,
	description				= STR_ID_10238,
	
	basicWeaponItemID		= 62,					
	basicHairItemID			= 40250,					
	basicFaceItemID			= 57,					
	basicBodyItemID			= 58,					
	basicLegItemID			= 59,					
	basicHandItemID			= 60,					
	basicFootItemID			= 61,
	
	m_CommonMotion	= "Motion_CHUNG_Common.x",
	m_FieldMotion	= "Motion_CHUNG_Field.x",
	m_LobbyMotion	= "Motion_CHUNG_Lobby.x",
	m_EmotionMotion	= "Motion_CHUNG_Emotion.x",	
	
	m_GameMotion0	= "Motion_CHUNG.x",
	m_GameMotion1	= "Motion_CHUNG_CSG.x",
	--m_GameMotion2	= "",
}

-- 청, 1차 전직 (쉘링 가디언)
g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_CHUNG"],
	unitClass				= UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"],
			
	name					= STR_ID_15998,
	description				= STR_ID_15999,
	
	basicWeaponItemID		= 62,					
	basicHairItemID			= 40550,					
	basicFaceItemID			= 57,					
	basicBodyItemID			= 58,					
	basicLegItemID			= 59,					
	basicHandItemID			= 60,					
	basicFootItemID			= 61,
	
	m_CommonMotion	= "Motion_CHUNG_Common.x",
	m_FieldMotion	= "Motion_CHUNG_Field.x",
	m_LobbyMotion	= "Motion_CHUNG_Lobby.x",
	m_EmotionMotion	= "Motion_CHUNG_Emotion.x",	
	
	m_GameMotion0	= "Motion_CHUNG.x",
	m_GameMotion1	= "Motion_CHUNG_CHG.x",
	--m_GameMotion2	= "",
}

-- 청, 2차 전직 (아이언 팔라딘)
g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_CHUNG"],
	unitClass				= UNIT_CLASS["UC_CHUNG_IRON_PALADIN"],
			
	name					= STR_ID_12769,
	description				= STR_ID_12781,
	
	basicWeaponItemID		= 62,					
	basicHairItemID			= 40430,					
	basicFaceItemID			= 57,					
	basicBodyItemID			= 58,					
	basicLegItemID			= 59,					
	basicHandItemID			= 60,					
	basicFootItemID			= 61,
	
	m_CommonMotion	= "Motion_CHUNG_Common.x",
	m_FieldMotion	= "Motion_CHUNG_Field.x",
	m_LobbyMotion	= "Motion_CHUNG_Lobby.x",
	m_EmotionMotion	= "Motion_CHUNG_Emotion.x",	
	
	m_GameMotion0	= "Motion_CHUNG.x",
	m_GameMotion1	= "Motion_CHUNG_CFG.x",
	m_GameMotion2	= "Motion_CHUNG_CIP.x",
}

-- 청, 2차 전직 (데들리 체이서)
g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_CHUNG"],
	unitClass				= UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"],
			
	name					= STR_ID_12770,
	description				= STR_ID_12782,
	
	basicWeaponItemID		= 62,					
	basicHairItemID			= 40490,					
	basicFaceItemID			= 57,					
	basicBodyItemID			= 58,					
	basicLegItemID			= 59,					
	basicHandItemID			= 60,					
	basicFootItemID			= 61,
	
	m_CommonMotion	= "Motion_CHUNG_Common.x",
	m_FieldMotion	= "Motion_CHUNG_Field.x",
	m_LobbyMotion	= "Motion_CHUNG_Lobby.x",
	m_EmotionMotion	= "Motion_CHUNG_Emotion.x",	
	
	m_GameMotion0	= "Motion_CHUNG.x",
	m_GameMotion1	= "Motion_CHUNG_CSG.x",
	m_GameMotion2	= "Motion_CHUNG_CDC.x",
}

--{{ SERV_TRAPPING_RANGER_TEST
g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_LIRE"],
	unitClass				= UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"],
			
	name					= STR_ID_616,
	description				= STR_ID_15457,
	
	--m_MotionFile			= "Motion_Lire_ElvenRanger.x",
	--m_FieldMotionFile       = "Motion_Field_Lire.x",
		
	basicWeaponItemID	= 14,
	basicHairItemID		= 40520,
	basicFaceItemID		= 9,
	basicBodyItemID		= 10,
	basicLegItemID		= 11,
	basicHandItemID		= 12,
	basicFootItemID		= 13,
	
	m_CommonMotion	= "Motion_Lire_Common.x",
	m_FieldMotion	= "Motion_Lire_Field.x",
	m_LobbyMotion	= "Motion_Lire_Lobby.x",
	m_EmotionMotion	= "Motion_Lire_Emotion.x",	
	
	m_GameMotion0	= "Motion_Lire.x",
	m_GameMotion1	= "Motion_Lire_RTR.x",
	m_GameMotion2	= "",
}
--}} SERV_TRAPPING_RANGER_TEST

--{{	RAVEN_WEAOPN_TAKER
g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_RAVEN"],
	unitClass				= UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"],
			
	name					= STR_ID_617,
	description				= STR_ID_15439,
	
	--m_MotionFile			= "Motion_Raven.x",
	--m_FieldMotionFile       = "Motion_Field_Raven.x",
	
	basicWeaponItemID		= 34,			
	basicHairItemID			= 40530,
	basicFaceItemID			= 29,
	basicBodyItemID			= 30,
	basicLegItemID			= 31,
	basicHandItemID			= 32,
	basicFootItemID			= 33,
	
	m_RavenLeftArmItemID	= 40940,
	
	m_CommonMotion	= "Motion_Raven_Common.x",
	m_FieldMotion	= "Motion_Raven_Field.x",
	m_LobbyMotion	= "Motion_Raven_Lobby.x",
	m_EmotionMotion	= "Motion_Raven_Emotion.x",	

	m_GameMotion0	= "Motion_Raven.x",
	m_GameMotion1	= "Motion_Raven_WT.x",
	m_GameMotion2	= "",
}

g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_EVE"],
	unitClass				= UNIT_CLASS["UC_EVE_ELECTRA"],
			
	name					= STR_ID_15827,
	description				= STR_ID_15828,
	
	--m_MotionFile			= "Motion_Eve.x",
	--m_FieldMotionFile       = "Motion_Field_Eve.x",
	
	basicWeaponItemID		= 41,					
	basicHairItemID			= 40540,					
	basicFaceItemID			= 36,					
	basicBodyItemID			= 37,					
	basicLegItemID			= 38,					
	basicHandItemID			= 39,					
	basicFootItemID			= 40,	
	
	--m_SecondWeaponItemID	= 42,
	
	m_CommonMotion	= "Motion_EVE_Common.x",
	m_FieldMotion	= "Motion_EVE_Field.x",
	m_LobbyMotion	= "Motion_EVE_Lobby.x",
	m_EmotionMotion	= "Motion_EVE_Emotion.x",	

	m_GameMotion0	= "Motion_EVE.x",
	m_GameMotion1	= "Motion_EVE_PR.x",
	m_GameMotion2	= "",
}

-- SERV_ELSWORD_INFINITY_SWORD
g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_ELSWORD"],
	unitClass				= UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"],
			
	name					= STR_ID_614,
	description				= STR_ID_17424,
	
	--m_MotionFile			= "Motion_Elsword_SwordMan.x",
	--m_FieldMotionFile       = "Motion_Field_Elsword.x",
	
	basicWeaponItemID	= 7,
	basicHairItemID		= 41250,
	basicFaceItemID		= 69,
	basicBodyItemID		= 3,
	basicLegItemID		= 4,
	basicHandItemID		= 5,
	basicFootItemID		= 6,
	
	m_CommonMotion	= "Motion_Elsword_Common.x",
	m_FieldMotion	= "Motion_Elsword_Field.x",
	m_LobbyMotion	= "Motion_Elsword_Lobby.x",
	m_EmotionMotion	= "Motion_Elsword_Emotion.x",
	
	m_GameMotion0	= "Motion_Elsword.x",
	m_GameMotion1	= "Motion_Elsword_TK.x",
	m_GameMotion2	= "Motion_Elsword_IS.x",	
}

-- SERV_ARME_DIMENSION_WITCH
g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_ARME"],
	unitClass				= UNIT_CLASS["UC_ARME_DIMENSION_WITCH"],
			
	name					= STR_ID_615,
	description				= STR_ID_17426,
	
	--m_MotionFile			= "Motion_Arme_VioletMage.x",
	--m_FieldMotionFile       = "Motion_Field_Arme.x",
		
	basicWeaponItemID	= 21,
	basicHairItemID		= 41260,
	basicFaceItemID		= 16,
	basicBodyItemID		= 17,
	basicLegItemID		= 18,
	basicHandItemID		= 19,
	basicFootItemID		= 20,
	
	m_CommonMotion	= "Motion_Arme_Common.x",
	m_FieldMotion	= "Motion_Arme_Field.x",
	m_LobbyMotion	= "Motion_Arme_Lobby.x",
	m_EmotionMotion	= "Motion_Arme_Emotion.x",	

	m_GameMotion0	= "Motion_Arme.x",
	m_GameMotion1	= "Motion_Arme_BM.x",
	m_GameMotion2	= "Motion_Arme_DW.x",
}

-- SERV_RENA_NIGHT_WATCHER
g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_LIRE"],
	unitClass				= UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"],
			
	name					= STR_ID_616,
	description				= STR_ID_17428,
	
	--m_MotionFile			= "Motion_Lire_ElvenRanger.x",
	--m_FieldMotionFile       = "Motion_Field_Lire.x",
		
	basicWeaponItemID	= 14,
	basicHairItemID		= 41270,
	basicFaceItemID		= 70,
	basicBodyItemID		= 10,
	basicLegItemID		= 11,
	basicHandItemID		= 12,
	basicFootItemID		= 13,
	
	m_CommonMotion	= "Motion_Lire_Common.x",
	m_FieldMotion	= "Motion_Lire_Field.x",
	m_LobbyMotion	= "Motion_Lire_Lobby.x",
	m_EmotionMotion	= "Motion_Lire_Emotion.x",	
	
	m_GameMotion0	= "Motion_Lire.x",
	m_GameMotion1	= "Motion_Lire_RTR.x",
	m_GameMotion2	= "Motion_Lire_NW.x",
}

--SERV_RAVEN_VETERAN_COMMANDER
g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_RAVEN"],
	unitClass				= UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"],
			
	name					= STR_ID_617,
	description				= STR_ID_17430,
	
	--m_MotionFile			= "Motion_Raven.x",
	--m_FieldMotionFile       = "Motion_Field_Raven.x",
	
	basicWeaponItemID		= 34,				
	basicHairItemID			= 41280,
	basicFaceItemID			= 29,
	basicBodyItemID			= 30,
	basicLegItemID			= 31,
	basicHandItemID			= 32,
	basicFootItemID			= 33,
	
	m_RavenLeftArmItemID	= 41330,
	
	m_CommonMotion	= "Motion_Raven_Common.x",
	m_FieldMotion	= "Motion_Raven_Field.x",
	m_LobbyMotion	= "Motion_Raven_Lobby.x",
	m_EmotionMotion	= "Motion_Raven_Emotion.x",	

	m_GameMotion0	= "Motion_Raven.x",
	m_GameMotion1	= "Motion_Raven_WT.x",
	m_GameMotion2	= "Motion_Raven_VC.x",
}

g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_EVE"],
	unitClass				= UNIT_CLASS["UC_EVE_BATTLE_SERAPH"],
			
	name					= STR_ID_17433,
	description				= STR_ID_17432,
		
	basicWeaponItemID		= 41,			
	-- basicHairItemID			= 40540,			--이거 일렉꺼임, 임시로 넣음	
	basicHairItemID			= 41290,
	basicFaceItemID			= 36,
	basicBodyItemID			= 37,
	basicLegItemID			= 38,
	basicHandItemID			= 39,
	basicFootItemID			= 40,
	
	--m_SecondWeaponItemID	= 42,
	
	m_CommonMotion	= "Motion_EVE_Common.x",
	m_FieldMotion	= "Motion_EVE_Field.x",
	m_LobbyMotion	= "Motion_EVE_Lobby.x",
	m_EmotionMotion	= "Motion_EVE_Emotion.x",	

	m_GameMotion0	= "Motion_EVE.x",
	m_GameMotion1	= "Motion_EVE_PR.x",
	m_GameMotion2	= "Motion_EVE_BS.x",
}

--SERV_CHUNG_TACTICAL_TROOPER
g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_CHUNG"],
	unitClass				= UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"],
			
	name					= STR_ID_9739,
	description				= STR_ID_17434,
	
	basicWeaponItemID		= 62,					
	basicHairItemID			= 41300,					
	basicFaceItemID			= 57,					
	basicBodyItemID			= 58,					
	basicLegItemID			= 59,					
	basicHandItemID			= 60,					
	basicFootItemID			= 61,
	
	m_CommonMotion	= "Motion_CHUNG_Common.x",
	m_FieldMotion	= "Motion_CHUNG_Field.x",
	m_LobbyMotion	= "Motion_CHUNG_Lobby.x",
	m_EmotionMotion	= "Motion_CHUNG_Emotion.x",	
	
	m_GameMotion0	= "Motion_CHUNG.x",
	m_GameMotion1	= "Motion_CHUNG_CHG.x",
	m_GameMotion2	= "Motion_CHUNG_CTT.x",
}
g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_ARA"],
	unitClass				= UNIT_CLASS["UC_ARA_MARTIAL_ARTIST"],

	name					= STR_ID_21181,
	description				= STR_ID_21181,
		
	basicWeaponItemID		= 41450,
	basicHairItemID			= 41390,
	basicFaceItemID			= 41400,
	basicBodyItemID			= 41410,
	basicLegItemID			= 41420,
	basicHandItemID			= 41430,
	basicFootItemID			= 41440,

	m_CommonMotion	= "Motion_ARA_Common.x",
	m_FieldMotion	= "Motion_ARA_Field.x",
	m_LobbyMotion	= "Motion_ARA_Lobby.x",
	m_EmotionMotion	= "Motion_ARA_Emotion.x",	

	m_GameMotion0	= "Motion_ARA.x",
	m_GameMotion1	= "Motion_Ara_LH.x",
}
g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_ARA"],
	unitClass				= UNIT_CLASS["UC_ARA_LITTLE_HSIEN"], -- 소선

	name					= STR_ID_22115,
	description				= STR_ID_22328,
		
	basicWeaponItemID		= 41450,
	basicHairItemID			= 41585,
	basicFaceItemID			= 41400,
	basicBodyItemID			= 41410,
	basicLegItemID			= 41420,
	basicHandItemID			= 41430,
	basicFootItemID			= 41440,

	m_CommonMotion	= "Motion_ARA_Common.x",
	m_FieldMotion	= "Motion_ARA_Field.x",
	m_LobbyMotion	= "Motion_ARA_Lobby.x",
	m_EmotionMotion	= "Motion_ARA_Emotion.x",	

	m_GameMotion0	= "Motion_ARA.x",
	m_GameMotion1	= "Motion_Ara_LH.x",
}
g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_ARA"],
	unitClass				= UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], -- 제천

	name					= STR_ID_22116,
	description				= STR_ID_22329,
		
	basicWeaponItemID		= 41450,
	basicHairItemID			= 41645,
	basicFaceItemID			= 41400,
	basicBodyItemID			= 41410,
	basicLegItemID			= 41420,
	basicHandItemID			= 41430,
	basicFootItemID			= 41440,

	m_CommonMotion	= "Motion_ARA_Common.x",
	m_FieldMotion	= "Motion_ARA_Field.x",
	m_LobbyMotion	= "Motion_ARA_Lobby.x",
	m_EmotionMotion	= "Motion_ARA_Emotion.x",	

	m_GameMotion0	= "Motion_ARA.x",
	m_GameMotion1	= "Motion_Ara_LH.x",
	m_GameMotion2	= "Motion_Ara_SD.x",
}

g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_ARA"],
	unitClass				= UNIT_CLASS["UC_ARA_LITTLE_DEVIL"], -- 소마

	name					= STR_ID_26771,
	description				= STR_ID_26773,
		
	basicWeaponItemID		= 41450,
	basicHairItemID			= 41730,
	basicFaceItemID			= 41400,
	basicBodyItemID			= 41410,
	basicLegItemID			= 41420,
	basicHandItemID			= 41430,
	basicFootItemID			= 41440,

	m_CommonMotion	= "Motion_ARA_Common.x",
	m_FieldMotion	= "Motion_ARA_Field.x",
	m_LobbyMotion	= "Motion_ARA_Lobby.x",
	m_EmotionMotion	= "Motion_ARA_Emotion.x",	

	m_GameMotion0	= "Motion_ARA.x",
	m_GameMotion1	= "Motion_Ara_LD.x",
}
g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_ARA"],
	unitClass				= UNIT_CLASS["UC_ARA_YAMA_RAJA"], -- 명왕

	name					= STR_ID_26772,
	description				= STR_ID_26774,
		
	basicWeaponItemID		= 41450,
	basicHairItemID			= 41737,
	basicFaceItemID			= 41400,
	basicBodyItemID			= 41410,
	basicLegItemID			= 41420,
	basicHandItemID			= 41430,
	basicFootItemID			= 41440,

	m_CommonMotion	= "Motion_ARA_Common.x",
	m_FieldMotion	= "Motion_ARA_Field.x",
	m_LobbyMotion	= "Motion_ARA_Lobby.x",
	m_EmotionMotion	= "Motion_ARA_Emotion.x",	

	m_GameMotion0	= "Motion_ARA.x",
	m_GameMotion1	= "Motion_Ara_LD.x",
	m_GameMotion2	= "Motion_Ara_YR.x",
}

g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_ARA"],
	unitClass				= UNIT_CLASS["UC_ELESIS_KNIGHT"],

	name					= STR_ID_25873,
	description				= STR_ID_25873,
		
	basicWeaponItemID		= 77,
	basicHairItemID			= 71,
	basicFaceItemID			= 72,
	basicBodyItemID			= 73,
	basicLegItemID			= 74,
	basicHandItemID			= 75,
	basicFootItemID			= 76,

	-- This x2.exe build predates the Elesis motion runtime.  It contains the
	-- Elesis enums/mechanics but no built-in Motion_EL_* registration, which
	-- leaves character-select blank and crashes on Motion_EL_Field.x.
	-- Ara uses the compatible female humanoid skeleton supported by this build.
	m_CommonMotion	= "Motion_ARA_Common.x",
	m_FieldMotion	= "Motion_ARA_Field.x",
	m_LobbyMotion	= "Motion_ARA_Lobby.x",
	m_EmotionMotion	= "Motion_ARA_Emotion.x",	

	m_GameMotion0	= "Motion_ARA.x",
}
g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_ARA"],
	unitClass				= UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"],

	name					= STR_ID_24893,
	description				= STR_ID_26274,
		
	basicWeaponItemID		= 77,
	basicHairItemID			= 41725,
	basicFaceItemID			= 72,
	basicBodyItemID			= 73,
	basicLegItemID			= 74,
	basicHandItemID			= 75,
	basicFootItemID			= 76,

	m_CommonMotion	= "Motion_ARA_Common.x",
	m_FieldMotion	= "Motion_ARA_Field.x",
	m_LobbyMotion	= "Motion_ARA_Lobby.x",
	m_EmotionMotion	= "Motion_ARA_Emotion.x",	

	m_GameMotion0	= "Motion_ARA.x",
	m_GameMotion1	= "Motion_Ara_LD.x",
}
g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_ARA"],
	unitClass				= UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"],

	name					= STR_ID_24894,
	description				= STR_ID_26275,
		
	basicWeaponItemID		= 77,
	basicHairItemID			= 41726,
	basicFaceItemID			= 72,
	basicBodyItemID			= 73,
	basicLegItemID			= 74,
	basicHandItemID			= 75,
	basicFootItemID			= 76,

	m_CommonMotion	= "Motion_ARA_Common.x",
	m_FieldMotion	= "Motion_ARA_Field.x",
	m_LobbyMotion	= "Motion_ARA_Lobby.x",
	m_EmotionMotion	= "Motion_ARA_Emotion.x",	

	m_GameMotion0	= "Motion_ARA.x",
	m_GameMotion1	= "Motion_Ara_LD.x",
}
g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_ARA"],
	unitClass				= UNIT_CLASS["UC_ELESIS_GRAND_MASTER"],

	name					= STR_ID_24895,
	description				= STR_ID_26276,
		
	basicWeaponItemID		= 77,
	basicHairItemID			= 41727,
	basicFaceItemID			= 72,
	basicBodyItemID			= 73,
	basicLegItemID			= 74,
	basicHandItemID			= 75,
	basicFootItemID			= 76,

	m_CommonMotion	= "Motion_ARA_Common.x",
	m_FieldMotion	= "Motion_ARA_Field.x",
	m_LobbyMotion	= "Motion_ARA_Lobby.x",
	m_EmotionMotion	= "Motion_ARA_Emotion.x",	

	m_GameMotion0	= "Motion_ARA.x",
	m_GameMotion1	= "Motion_Ara_LD.x",
	m_GameMotion2	= "Motion_Ara_YR.x",
}
g_pUnitManager:AddUnitTemplet
{		
	unitType				= UNIT_TYPE["UT_ARA"],
	unitClass				= UNIT_CLASS["UC_ELESIS_BLAZING_HEART"],

	name					= STR_ID_24896,
	description				= STR_ID_26277,
		
	basicWeaponItemID		= 77,
	basicHairItemID			= 41728,
	basicFaceItemID			= 72,
	basicBodyItemID			= 73,
	basicLegItemID			= 74,
	basicHandItemID			= 75,
	basicFootItemID			= 76,

	m_CommonMotion	= "Motion_ARA_Common.x",
	m_FieldMotion	= "Motion_ARA_Field.x",
	m_LobbyMotion	= "Motion_ARA_Lobby.x",
	m_EmotionMotion	= "Motion_ARA_Emotion.x",	

	m_GameMotion0	= "Motion_ARA.x",
	m_GameMotion1	= "Motion_Ara_LD.x",
	m_GameMotion2	= "Motion_Ara_YR.x",
}
