-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




 -- SDAttributeSubStageCount Table
g_pAttribNpcManager:SetAttribSubStageCount( DUNGEON_TYPE["DT_NORMAL"], DIFFICULTY_LEVEL["DL_NORMAL"], 1 )
g_pAttribNpcManager:SetAttribSubStageCount( DUNGEON_TYPE["DT_NORMAL"], DIFFICULTY_LEVEL["DL_HARD"], 3 )
g_pAttribNpcManager:SetAttribSubStageCount( DUNGEON_TYPE["DT_NORMAL"], DIFFICULTY_LEVEL["DL_EXPERT"], 5 )
g_pAttribNpcManager:SetAttribSubStageCount( DUNGEON_TYPE["DT_HENIR"], DUNGEON_MODE["DM_HENIR_PRACTICE"], 0 )
g_pAttribNpcManager:SetAttribSubStageCount( DUNGEON_TYPE["DT_HENIR"], DUNGEON_MODE["DM_HENIR_CHALLENGE"], 0 )
g_pAttribNpcManager:SetAttribSubStageCount( DUNGEON_TYPE["DT_SECRET"], DUNGEON_MODE["DM_SECRET_NORMAL"], 4 )
g_pAttribNpcManager:SetAttribSubStageCount( DUNGEON_TYPE["DT_SECRET"], DUNGEON_MODE["DM_SECRET_HELL"], 4 )



 -- SDNpcDropCount Table
g_pAttribNpcManager:SetNpcDropCount( DUNGEON_TYPE["DT_NORMAL"], 1 ,1 )
g_pAttribNpcManager:SetNpcDropCount( DUNGEON_TYPE["DT_NORMAL"], 2 ,2 )
g_pAttribNpcManager:SetNpcDropCount( DUNGEON_TYPE["DT_NORMAL"], 3 ,3 )
g_pAttribNpcManager:SetNpcDropCount( DUNGEON_TYPE["DT_NORMAL"], 4 ,3 )
g_pAttribNpcManager:SetNpcDropCount( DUNGEON_TYPE["DT_HENIR"], 1 ,0 )
g_pAttribNpcManager:SetNpcDropCount( DUNGEON_TYPE["DT_HENIR"], 2 ,0 )
g_pAttribNpcManager:SetNpcDropCount( DUNGEON_TYPE["DT_HENIR"], 3 ,0 )
g_pAttribNpcManager:SetNpcDropCount( DUNGEON_TYPE["DT_HENIR"], 4 ,0 )
g_pAttribNpcManager:SetNpcDropCount( DUNGEON_TYPE["DT_SECRET"], 1 ,2 )
g_pAttribNpcManager:SetNpcDropCount( DUNGEON_TYPE["DT_SECRET"], 2 ,3 )
g_pAttribNpcManager:SetNpcDropCount( DUNGEON_TYPE["DT_SECRET"], 3 ,4 )
g_pAttribNpcManager:SetNpcDropCount( DUNGEON_TYPE["DT_SECRET"], 4 ,4 )



 -- SDAttributeNpc Table
g_pAttribNpcManager:AddAttribNpcInfo_LUA
{
       m_eDungeonType = DUNGEON_TYPE["DT_NORMAL"],
       m_eDifficulty = DIFFICULTY_LEVEL["DL_NORMAL"],
       m_iNpcLvBegin = 1,
       m_iNpcLvEnd = 10,
       m_eNpcType = NPC_ABILITY_ID["NAI_BRAVE"],

       m_bTotalRandom = True,

       m_fBraveRate = 35,
       m_fCriticalRate = 35,
       m_fHeavyRate = 30,
       m_fBlazeRate = 10,
       m_fFrozenRate = 10,
       m_fPoisonRate = 10,
       m_fPiercingRate = 20,
       m_fShockRate = 25,
       m_fSnatchRate = 25,
}

g_pAttribNpcManager:AddAttribNpcInfo_LUA
{
       m_eDungeonType = DUNGEON_TYPE["DT_NORMAL"],
       m_eDifficulty = DIFFICULTY_LEVEL["DL_NORMAL"],
       m_iNpcLvBegin = 1,
       m_iNpcLvEnd = 10,
       m_eNpcType = NPC_ABILITY_ID["NAI_CLEVER"],

       m_bTotalRandom = True,

       m_fCleaverRate = 35,
       m_fCriticalRate = 35,
       m_fHeavyRate = 30,
       m_fBlazeRate = 10,
       m_fFrozenRate = 10,
       m_fPoisonRate = 10,
       m_fPiercingRate = 20,
       m_fShockRate = 25,
       m_fSnatchRate = 25,
}

g_pAttribNpcManager:AddAttribNpcInfo_LUA
{
       m_eDungeonType = DUNGEON_TYPE["DT_NORMAL"],
       m_eDifficulty = DIFFICULTY_LEVEL["DL_HARD"],
       m_iNpcLvBegin = 1,
       m_iNpcLvEnd = 10,
       m_eNpcType = NPC_ABILITY_ID["NAI_BRAVE"],

       m_bTotalRandom = True,

       m_fBraveRate = 35,
       m_fCriticalRate = 35,
       m_fHeavyRate = 30,
       m_fBlazeRate = 10,
       m_fFrozenRate = 10,
       m_fPoisonRate = 10,
       m_fPiercingRate = 20,
       m_fShockRate = 25,
       m_fSnatchRate = 25,
}

g_pAttribNpcManager:AddAttribNpcInfo_LUA
{
       m_eDungeonType = DUNGEON_TYPE["DT_NORMAL"],
       m_eDifficulty = DIFFICULTY_LEVEL["DL_HARD"],
       m_iNpcLvBegin = 1,
       m_iNpcLvEnd = 10,
       m_eNpcType = NPC_ABILITY_ID["NAI_CLEVER"],

       m_bTotalRandom = True,

       m_fCleaverRate = 35,
       m_fCriticalRate = 35,
       m_fHeavyRate = 30,
       m_fBlazeRate = 10,
       m_fFrozenRate = 10,
       m_fPoisonRate = 10,
       m_fPiercingRate = 20,
       m_fShockRate = 25,
       m_fSnatchRate = 25,
}

g_pAttribNpcManager:AddAttribNpcInfo_LUA
{
       m_eDungeonType = DUNGEON_TYPE["DT_NORMAL"],
       m_eDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
       m_iNpcLvBegin = 1,
       m_iNpcLvEnd = 10,
       m_eNpcType = NPC_ABILITY_ID["NAI_BRAVE"],

       m_bTotalRandom = False,

       m_fBraveRate = 33,
       m_fCriticalRate = 33,
       m_fQuickerRate = 34,
       m_fHeavyRate = 100,
       m_fBlazeMasterRate = 3,
       m_fFrozenMasterRate = 3,
       m_fPoisonMasterRate = 3,
       m_fMasterPiercingRate = 5,
       m_fMasterShockRate = 5,
       m_fMasterSnatchRate = 6,
       m_fBlazePiercingRate = 8,
       m_fBlazeShockRate = 8,
       m_fBlazeSnatchRate = 8,
       m_fFrozenPiercingRate = 9,
       m_fFrozenShockRate = 9,
       m_fFrozenSnatchRate = 9,
       m_fPoisonPiercingRate = 8,
       m_fPoisonShockRate = 8,
       m_fPoisonSnatchRate = 8,
}

g_pAttribNpcManager:AddAttribNpcInfo_LUA
{
       m_eDungeonType = DUNGEON_TYPE["DT_NORMAL"],
       m_eDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
       m_iNpcLvBegin = 1,
       m_iNpcLvEnd = 10,
       m_eNpcType = NPC_ABILITY_ID["NAI_CLEVER"],

       m_bTotalRandom = False,

       m_fCleaverRate = 33,
       m_fCriticalRate = 33,
       m_fQuickerRate = 34,
       m_fHeavyRate = 100,
       m_fBlazeMasterRate = 3,
       m_fFrozenMasterRate = 3,
       m_fPoisonMasterRate = 3,
       m_fMasterPiercingRate = 5,
       m_fMasterShockRate = 5,
       m_fMasterSnatchRate = 6,
       m_fBlazePiercingRate = 8,
       m_fBlazeShockRate = 8,
       m_fBlazeSnatchRate = 8,
       m_fFrozenPiercingRate = 9,
       m_fFrozenShockRate = 9,
       m_fFrozenSnatchRate = 9,
       m_fPoisonPiercingRate = 8,
       m_fPoisonShockRate = 8,
       m_fPoisonSnatchRate = 8,
}

g_pAttribNpcManager:AddAttribNpcInfo_LUA
{
       m_eDungeonType = DUNGEON_TYPE["DT_NORMAL"],
       m_eDifficulty = DIFFICULTY_LEVEL["DL_NORMAL"],
       m_iNpcLvBegin = 11,
       m_iNpcLvEnd = 20,
       m_eNpcType = NPC_ABILITY_ID["NAI_BRAVE"],

       m_bTotalRandom = True,

       m_fBraveRate = 30,
       m_fCriticalRate = 30,
       m_fPhysicDefRate = 15,
       m_fMagicDefRate = 15,
       m_fHeavyRate = 10,
       m_fBlazeRate = 10,
       m_fFrozenRate = 10,
       m_fPoisonRate = 10,
       m_fPiercingRate = 20,
       m_fShockRate = 25,
       m_fSnatchRate = 25,
}

g_pAttribNpcManager:AddAttribNpcInfo_LUA
{
       m_eDungeonType = DUNGEON_TYPE["DT_NORMAL"],
       m_eDifficulty = DIFFICULTY_LEVEL["DL_NORMAL"],
       m_iNpcLvBegin = 11,
       m_iNpcLvEnd = 20,
       m_eNpcType = NPC_ABILITY_ID["NAI_CLEVER"],

       m_bTotalRandom = True,

       m_fCleaverRate = 30,
       m_fCriticalRate = 30,
       m_fPhysicDefRate = 15,
       m_fMagicDefRate = 15,
       m_fHeavyRate = 10,
       m_fBlazeRate = 10,
       m_fFrozenRate = 10,
       m_fPoisonRate = 10,
       m_fPiercingRate = 20,
       m_fShockRate = 25,
       m_fSnatchRate = 25,
}

g_pAttribNpcManager:AddAttribNpcInfo_LUA
{
       m_eDungeonType = DUNGEON_TYPE["DT_NORMAL"],
       m_eDifficulty = DIFFICULTY_LEVEL["DL_HARD"],
       m_iNpcLvBegin = 11,
       m_iNpcLvEnd = 20,
       m_eNpcType = NPC_ABILITY_ID["NAI_BRAVE"],

       m_bTotalRandom = True,

       m_fBraveRate = 30,
       m_fCriticalRate = 30,
       m_fPhysicDefRate = 15,
       m_fMagicDefRate = 15,
       m_fHeavyRate = 10,
       m_fBlazeRate = 10,
       m_fFrozenRate = 10,
       m_fPoisonRate = 10,
       m_fPiercingRate = 20,
       m_fShockRate = 25,
       m_fSnatchRate = 25,
}

g_pAttribNpcManager:AddAttribNpcInfo_LUA
{
       m_eDungeonType = DUNGEON_TYPE["DT_NORMAL"],
       m_eDifficulty = DIFFICULTY_LEVEL["DL_HARD"],
       m_iNpcLvBegin = 11,
       m_iNpcLvEnd = 20,
       m_eNpcType = NPC_ABILITY_ID["NAI_CLEVER"],

       m_bTotalRandom = True,

       m_fCleaverRate = 30,
       m_fCriticalRate = 30,
       m_fPhysicDefRate = 15,
       m_fMagicDefRate = 15,
       m_fHeavyRate = 10,
       m_fBlazeRate = 10,
       m_fFrozenRate = 10,
       m_fPoisonRate = 10,
       m_fPiercingRate = 20,
       m_fShockRate = 25,
       m_fSnatchRate = 25,
}

g_pAttribNpcManager:AddAttribNpcInfo_LUA
{
       m_eDungeonType = DUNGEON_TYPE["DT_NORMAL"],
       m_eDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
       m_iNpcLvBegin = 11,
       m_iNpcLvEnd = 20,
       m_eNpcType = NPC_ABILITY_ID["NAI_BRAVE"],

       m_bTotalRandom = False,

       m_fBraveRate = 30,
       m_fCriticalRate = 35,
       m_fQuickerRate = 35,
       m_fPhysicDefRate = 35,
       m_fMagicDefRate = 35,
       m_fHeavyRate = 30,
       m_fBlazeMasterRate = 3,
       m_fFrozenMasterRate = 3,
       m_fPoisonMasterRate = 3,
       m_fMasterPiercingRate = 5,
       m_fMasterShockRate = 5,
       m_fMasterSnatchRate = 6,
       m_fBlazePiercingRate = 8,
       m_fBlazeShockRate = 8,
       m_fBlazeSnatchRate = 8,
       m_fFrozenPiercingRate = 9,
       m_fFrozenShockRate = 9,
       m_fFrozenSnatchRate = 9,
       m_fPoisonPiercingRate = 8,
       m_fPoisonShockRate = 8,
       m_fPoisonSnatchRate = 8,
}

g_pAttribNpcManager:AddAttribNpcInfo_LUA
{
       m_eDungeonType = DUNGEON_TYPE["DT_NORMAL"],
       m_eDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
       m_iNpcLvBegin = 11,
       m_iNpcLvEnd = 20,
       m_eNpcType = NPC_ABILITY_ID["NAI_CLEVER"],

       m_bTotalRandom = False,

       m_fCleaverRate = 30,
       m_fCriticalRate = 35,
       m_fQuickerRate = 35,
       m_fPhysicDefRate = 35,
       m_fMagicDefRate = 35,
       m_fHeavyRate = 30,
       m_fBlazeMasterRate = 3,
       m_fFrozenMasterRate = 3,
       m_fPoisonMasterRate = 3,
       m_fMasterPiercingRate = 5,
       m_fMasterShockRate = 5,
       m_fMasterSnatchRate = 6,
       m_fBlazePiercingRate = 8,
       m_fBlazeShockRate = 8,
       m_fBlazeSnatchRate = 8,
       m_fFrozenPiercingRate = 9,
       m_fFrozenShockRate = 9,
       m_fFrozenSnatchRate = 9,
       m_fPoisonPiercingRate = 8,
       m_fPoisonShockRate = 8,
       m_fPoisonSnatchRate = 8,
}

g_pAttribNpcManager:AddAttribNpcInfo_LUA
{
       m_eDungeonType = DUNGEON_TYPE["DT_NORMAL"],
       m_eDifficulty = DIFFICULTY_LEVEL["DL_NORMAL"],
       m_iNpcLvBegin = 21,
       m_iNpcLvEnd = 30,
       m_eNpcType = NPC_ABILITY_ID["NAI_BRAVE"],

       m_bTotalRandom = True,

       m_fBraveRate = 30,
       m_fCriticalRate = 30,
       m_fPhysicDefRate = 15,
       m_fMagicDefRate = 15,
       m_fHeavyRate = 10,
       m_fBlazeRate = 10,
       m_fFrozenRate = 10,
       m_fPoisonRate = 10,
       m_fPiercingRate = 20,
       m_fShockRate = 25,
       m_fSnatchRate = 25,
}

g_pAttribNpcManager:AddAttribNpcInfo_LUA
{
       m_eDungeonType = DUNGEON_TYPE["DT_NORMAL"],
       m_eDifficulty = DIFFICULTY_LEVEL["DL_NORMAL"],
       m_iNpcLvBegin = 21,
       m_iNpcLvEnd = 30,
       m_eNpcType = NPC_ABILITY_ID["NAI_CLEVER"],

       m_bTotalRandom = True,

       m_fCleaverRate = 30,
       m_fCriticalRate = 30,
       m_fPhysicDefRate = 15,
       m_fMagicDefRate = 15,
       m_fHeavyRate = 10,
       m_fBlazeRate = 10,
       m_fFrozenRate = 10,
       m_fPoisonRate = 10,
       m_fPiercingRate = 20,
       m_fShockRate = 25,
       m_fSnatchRate = 25,
}

g_pAttribNpcManager:AddAttribNpcInfo_LUA
{
       m_eDungeonType = DUNGEON_TYPE["DT_NORMAL"],
       m_eDifficulty = DIFFICULTY_LEVEL["DL_HARD"],
       m_iNpcLvBegin = 21,
       m_iNpcLvEnd = 30,
       m_eNpcType = NPC_ABILITY_ID["NAI_BRAVE"],

       m_bTotalRandom = True,

       m_fBraveRate = 30,
       m_fCriticalRate = 30,
       m_fPhysicDefRate = 15,
       m_fMagicDefRate = 15,
       m_fHeavyRate = 10,
       m_fBlazeRate = 10,
       m_fFrozenRate = 10,
       m_fPoisonRate = 10,
       m_fPiercingRate = 20,
       m_fShockRate = 25,
       m_fSnatchRate = 25,
}

g_pAttribNpcManager:AddAttribNpcInfo_LUA
{
       m_eDungeonType = DUNGEON_TYPE["DT_NORMAL"],
       m_eDifficulty = DIFFICULTY_LEVEL["DL_HARD"],
       m_iNpcLvBegin = 21,
       m_iNpcLvEnd = 30,
       m_eNpcType = NPC_ABILITY_ID["NAI_CLEVER"],

       m_bTotalRandom = True,

       m_fCleaverRate = 30,
       m_fCriticalRate = 30,
       m_fPhysicDefRate = 15,
       m_fMagicDefRate = 15,
       m_fHeavyRate = 10,
       m_fBlazeRate = 10,
       m_fFrozenRate = 10,
       m_fPoisonRate = 10,
       m_fPiercingRate = 20,
       m_fShockRate = 25,
       m_fSnatchRate = 25,
}

g_pAttribNpcManager:AddAttribNpcInfo_LUA
{
       m_eDungeonType = DUNGEON_TYPE["DT_NORMAL"],
       m_eDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
       m_iNpcLvBegin = 21,
       m_iNpcLvEnd = 30,
       m_eNpcType = NPC_ABILITY_ID["NAI_BRAVE"],

       m_bTotalRandom = False,

       m_fBraveRate = 30,
       m_fCriticalRate = 35,
       m_fQuickerRate = 35,
       m_fPhysicDefRate = 35,
       m_fMagicDefRate = 35,
       m_fHeavyRate = 30,
       m_fBlazeMasterRate = 7,
       m_fFrozenMasterRate = 7,
       m_fPoisonMasterRate = 8,
       m_fMasterPiercingRate = 8,
       m_fMasterShockRate = 8,
       m_fMasterSnatchRate = 8,
       m_fBlazePiercingRate = 6,
       m_fBlazeShockRate = 6,
       m_fBlazeSnatchRate = 6,
       m_fFrozenPiercingRate = 6,
       m_fFrozenShockRate = 6,
       m_fFrozenSnatchRate = 6,
       m_fPoisonPiercingRate = 6,
       m_fPoisonShockRate = 6,
       m_fPoisonSnatchRate = 6,
}

g_pAttribNpcManager:AddAttribNpcInfo_LUA
{
       m_eDungeonType = DUNGEON_TYPE["DT_NORMAL"],
       m_eDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
       m_iNpcLvBegin = 21,
       m_iNpcLvEnd = 30,
       m_eNpcType = NPC_ABILITY_ID["NAI_CLEVER"],

       m_bTotalRandom = False,

       m_fCleaverRate = 30,
       m_fCriticalRate = 35,
       m_fQuickerRate = 35,
       m_fPhysicDefRate = 35,
       m_fMagicDefRate = 35,
       m_fHeavyRate = 30,
       m_fBlazeMasterRate = 7,
       m_fFrozenMasterRate = 7,
       m_fPoisonMasterRate = 8,
       m_fMasterPiercingRate = 8,
       m_fMasterShockRate = 8,
       m_fMasterSnatchRate = 8,
       m_fBlazePiercingRate = 6,
       m_fBlazeShockRate = 6,
       m_fBlazeSnatchRate = 6,
       m_fFrozenPiercingRate = 6,
       m_fFrozenShockRate = 6,
       m_fFrozenSnatchRate = 6,
       m_fPoisonPiercingRate = 6,
       m_fPoisonShockRate = 6,
       m_fPoisonSnatchRate = 6,
}

g_pAttribNpcManager:AddAttribNpcInfo_LUA
{
       m_eDungeonType = DUNGEON_TYPE["DT_NORMAL"],
       m_eDifficulty = DIFFICULTY_LEVEL["DL_NORMAL"],
       m_iNpcLvBegin = 31,
       m_iNpcLvEnd = 40,
       m_eNpcType = NPC_ABILITY_ID["NAI_BRAVE"],

       m_bTotalRandom = True,

       m_fBraveRate = 15,
       m_fCriticalRate = 19,
       m_fQuickerRate = 15,
       m_fPhysicDefRate = 19,
       m_fMagicDefRate = 19,
       m_fSuperArmorRate = 3,
       m_fHeavyRate = 10,
       m_fBlazeRate = 15,
       m_fFrozenRate = 15,
       m_fPoisonRate = 15,
       m_fPiercingRate = 15,
       m_fShockRate = 20,
       m_fSnatchRate = 20,
}

g_pAttribNpcManager:AddAttribNpcInfo_LUA
{
       m_eDungeonType = DUNGEON_TYPE["DT_NORMAL"],
       m_eDifficulty = DIFFICULTY_LEVEL["DL_NORMAL"],
       m_iNpcLvBegin = 31,
       m_iNpcLvEnd = 40,
       m_eNpcType = NPC_ABILITY_ID["NAI_CLEVER"],

       m_bTotalRandom = True,

       m_fCleaverRate = 15,
       m_fCriticalRate = 19,
       m_fQuickerRate = 15,
       m_fPhysicDefRate = 19,
       m_fMagicDefRate = 19,
       m_fSuperArmorRate = 3,
       m_fHeavyRate = 10,
       m_fBlazeRate = 15,
       m_fFrozenRate = 15,
       m_fPoisonRate = 15,
       m_fPiercingRate = 15,
       m_fShockRate = 20,
       m_fSnatchRate = 20,
}

g_pAttribNpcManager:AddAttribNpcInfo_LUA
{
       m_eDungeonType = DUNGEON_TYPE["DT_NORMAL"],
       m_eDifficulty = DIFFICULTY_LEVEL["DL_HARD"],
       m_iNpcLvBegin = 31,
       m_iNpcLvEnd = 40,
       m_eNpcType = NPC_ABILITY_ID["NAI_BRAVE"],

       m_bTotalRandom = True,

       m_fBraveRate = 15,
       m_fCriticalRate = 19,
       m_fQuickerRate = 15,
       m_fPhysicDefRate = 19,
       m_fMagicDefRate = 19,
       m_fSuperArmorRate = 3,
       m_fHeavyRate = 10,
       m_fBlazeRate = 20,
       m_fFrozenRate = 10,
       m_fPoisonRate = 20,
       m_fPiercingRate = 10,
       m_fShockRate = 20,
       m_fSnatchRate = 20,
}

g_pAttribNpcManager:AddAttribNpcInfo_LUA
{
       m_eDungeonType = DUNGEON_TYPE["DT_NORMAL"],
       m_eDifficulty = DIFFICULTY_LEVEL["DL_HARD"],
       m_iNpcLvBegin = 31,
       m_iNpcLvEnd = 40,
       m_eNpcType = NPC_ABILITY_ID["NAI_CLEVER"],

       m_bTotalRandom = True,

       m_fCleaverRate = 15,
       m_fCriticalRate = 19,
       m_fQuickerRate = 15,
       m_fPhysicDefRate = 19,
       m_fMagicDefRate = 19,
       m_fSuperArmorRate = 3,
       m_fHeavyRate = 10,
       m_fBlazeRate = 20,
       m_fFrozenRate = 10,
       m_fPoisonRate = 20,
       m_fPiercingRate = 10,
       m_fShockRate = 20,
       m_fSnatchRate = 20,
}

g_pAttribNpcManager:AddAttribNpcInfo_LUA
{
       m_eDungeonType = DUNGEON_TYPE["DT_NORMAL"],
       m_eDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
       m_iNpcLvBegin = 31,
       m_iNpcLvEnd = 40,
       m_eNpcType = NPC_ABILITY_ID["NAI_BRAVE"],

       m_bTotalRandom = False,

       m_fBraveRate = 30,
       m_fCriticalRate = 35,
       m_fQuickerRate = 35,
       m_fPhysicDefRate = 33,
       m_fMagicDefRate = 33,
       m_fSuperArmorRate = 4,
       m_fHeavyRate = 30,
       m_fBlazeMasterRate = 7,
       m_fFrozenMasterRate = 7,
       m_fPoisonMasterRate = 8,
       m_fMasterPiercingRate = 8,
       m_fMasterShockRate = 8,
       m_fMasterSnatchRate = 8,
       m_fBlazePiercingRate = 6,
       m_fBlazeShockRate = 6,
       m_fBlazeSnatchRate = 6,
       m_fFrozenPiercingRate = 6,
       m_fFrozenShockRate = 6,
       m_fFrozenSnatchRate = 6,
       m_fPoisonPiercingRate = 6,
       m_fPoisonShockRate = 6,
       m_fPoisonSnatchRate = 6,
}

g_pAttribNpcManager:AddAttribNpcInfo_LUA
{
       m_eDungeonType = DUNGEON_TYPE["DT_NORMAL"],
       m_eDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
       m_iNpcLvBegin = 31,
       m_iNpcLvEnd = 40,
       m_eNpcType = NPC_ABILITY_ID["NAI_CLEVER"],

       m_bTotalRandom = False,

       m_fCleaverRate = 30,
       m_fCriticalRate = 35,
       m_fQuickerRate = 35,
       m_fPhysicDefRate = 33,
       m_fMagicDefRate = 33,
       m_fSuperArmorRate = 4,
       m_fHeavyRate = 30,
       m_fBlazeMasterRate = 7,
       m_fFrozenMasterRate = 7,
       m_fPoisonMasterRate = 8,
       m_fMasterPiercingRate = 8,
       m_fMasterShockRate = 8,
       m_fMasterSnatchRate = 8,
       m_fBlazePiercingRate = 6,
       m_fBlazeShockRate = 6,
       m_fBlazeSnatchRate = 6,
       m_fFrozenPiercingRate = 6,
       m_fFrozenShockRate = 6,
       m_fFrozenSnatchRate = 6,
       m_fPoisonPiercingRate = 6,
       m_fPoisonShockRate = 6,
       m_fPoisonSnatchRate = 6,
}

g_pAttribNpcManager:AddAttribNpcInfo_LUA
{
       m_eDungeonType = DUNGEON_TYPE["DT_NORMAL"],
       m_eDifficulty = DIFFICULTY_LEVEL["DL_NORMAL"],
       m_iNpcLvBegin = 41,
       m_iNpcLvEnd = 80,
       m_eNpcType = NPC_ABILITY_ID["NAI_BRAVE"],

       m_bTotalRandom = True,

       m_fBraveRate = 15,
       m_fCriticalRate = 18,
       m_fQuickerRate = 15,
       m_fPhysicDefRate = 18,
       m_fMagicDefRate = 18,
       m_fSuperArmorRate = 6,
       m_fHeavyRate = 10,
       m_fBlazeRate = 15,
       m_fFrozenRate = 15,
       m_fPoisonRate = 15,
       m_fPiercingRate = 15,
       m_fShockRate = 20,
       m_fSnatchRate = 20,
}

g_pAttribNpcManager:AddAttribNpcInfo_LUA
{
       m_eDungeonType = DUNGEON_TYPE["DT_NORMAL"],
       m_eDifficulty = DIFFICULTY_LEVEL["DL_NORMAL"],
       m_iNpcLvBegin = 41,
       m_iNpcLvEnd = 80,
       m_eNpcType = NPC_ABILITY_ID["NAI_CLEVER"],

       m_bTotalRandom = True,

       m_fCleaverRate = 15,
       m_fCriticalRate = 18,
       m_fQuickerRate = 15,
       m_fPhysicDefRate = 18,
       m_fMagicDefRate = 18,
       m_fSuperArmorRate = 6,
       m_fHeavyRate = 10,
       m_fBlazeRate = 15,
       m_fFrozenRate = 15,
       m_fPoisonRate = 15,
       m_fPiercingRate = 15,
       m_fShockRate = 20,
       m_fSnatchRate = 20,
}

g_pAttribNpcManager:AddAttribNpcInfo_LUA
{
       m_eDungeonType = DUNGEON_TYPE["DT_NORMAL"],
       m_eDifficulty = DIFFICULTY_LEVEL["DL_HARD"],
       m_iNpcLvBegin = 41,
       m_iNpcLvEnd = 80,
       m_eNpcType = NPC_ABILITY_ID["NAI_BRAVE"],

       m_bTotalRandom = True,

       m_fBraveRate = 15,
       m_fCriticalRate = 18,
       m_fQuickerRate = 15,
       m_fPhysicDefRate = 18,
       m_fMagicDefRate = 18,
       m_fSuperArmorRate = 6,
       m_fHeavyRate = 10,
       m_fBlazeRate = 20,
       m_fFrozenRate = 10,
       m_fPoisonRate = 20,
       m_fPiercingRate = 10,
       m_fShockRate = 20,
       m_fSnatchRate = 20,
}

g_pAttribNpcManager:AddAttribNpcInfo_LUA
{
       m_eDungeonType = DUNGEON_TYPE["DT_NORMAL"],
       m_eDifficulty = DIFFICULTY_LEVEL["DL_HARD"],
       m_iNpcLvBegin = 41,
       m_iNpcLvEnd = 80,
       m_eNpcType = NPC_ABILITY_ID["NAI_CLEVER"],

       m_bTotalRandom = True,

       m_fCleaverRate = 15,
       m_fCriticalRate = 18,
       m_fQuickerRate = 15,
       m_fPhysicDefRate = 18,
       m_fMagicDefRate = 18,
       m_fSuperArmorRate = 6,
       m_fHeavyRate = 10,
       m_fBlazeRate = 20,
       m_fFrozenRate = 10,
       m_fPoisonRate = 20,
       m_fPiercingRate = 10,
       m_fShockRate = 20,
       m_fSnatchRate = 20,
}

g_pAttribNpcManager:AddAttribNpcInfo_LUA
{
       m_eDungeonType = DUNGEON_TYPE["DT_NORMAL"],
       m_eDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
       m_iNpcLvBegin = 41,
       m_iNpcLvEnd = 80,
       m_eNpcType = NPC_ABILITY_ID["NAI_BRAVE"],

       m_bTotalRandom = False,

       m_fBraveRate = 30,
       m_fCriticalRate = 35,
       m_fQuickerRate = 35,
       m_fPhysicDefRate = 30,
       m_fMagicDefRate = 30,
       m_fSuperArmorRate = 10,
       m_fHeavyRate = 30,
       m_fBlazeMasterRate = 7,
       m_fFrozenMasterRate = 7,
       m_fPoisonMasterRate = 8,
       m_fMasterPiercingRate = 8,
       m_fMasterShockRate = 8,
       m_fMasterSnatchRate = 8,
       m_fBlazePiercingRate = 6,
       m_fBlazeShockRate = 6,
       m_fBlazeSnatchRate = 6,
       m_fFrozenPiercingRate = 6,
       m_fFrozenShockRate = 6,
       m_fFrozenSnatchRate = 6,
       m_fPoisonPiercingRate = 6,
       m_fPoisonShockRate = 6,
       m_fPoisonSnatchRate = 6,
}

g_pAttribNpcManager:AddAttribNpcInfo_LUA
{
       m_eDungeonType = DUNGEON_TYPE["DT_NORMAL"],
       m_eDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
       m_iNpcLvBegin = 41,
       m_iNpcLvEnd = 80,
       m_eNpcType = NPC_ABILITY_ID["NAI_CLEVER"],

       m_bTotalRandom = False,

       m_fCleaverRate = 30,
       m_fCriticalRate = 35,
       m_fQuickerRate = 35,
       m_fPhysicDefRate = 30,
       m_fMagicDefRate = 30,
       m_fSuperArmorRate = 10,
       m_fHeavyRate = 30,
       m_fBlazeMasterRate = 7,
       m_fFrozenMasterRate = 7,
       m_fPoisonMasterRate = 8,
       m_fMasterPiercingRate = 8,
       m_fMasterShockRate = 8,
       m_fMasterSnatchRate = 8,
       m_fBlazePiercingRate = 6,
       m_fBlazeShockRate = 6,
       m_fBlazeSnatchRate = 6,
       m_fFrozenPiercingRate = 6,
       m_fFrozenShockRate = 6,
       m_fFrozenSnatchRate = 6,
       m_fPoisonPiercingRate = 6,
       m_fPoisonShockRate = 6,
       m_fPoisonSnatchRate = 6,
}

g_pAttribNpcManager:AddAttribNpcInfo_LUA
{
       m_eDungeonType = DUNGEON_TYPE["DT_SECRET"],
       m_eDungeonMode = DUNGEON_MODE["DM_SECRET_NORMAL"],
       m_iNpcLvBegin = 1,
       m_iNpcLvEnd = 80,
       m_eNpcType = NPC_ABILITY_ID["NAI_BRAVE"],

       m_bTotalRandom = True,

       m_fBraveRate = 15,
       m_fCriticalRate = 20,
       m_fQuickerRate = 15,
       m_fPhysicDefRate = 20,
       m_fMagicDefRate = 20,
       m_fHeavyRate = 10,
       m_fBlazeRate = 15,
       m_fFrozenRate = 15,
       m_fPoisonRate = 15,
       m_fPiercingRate = 15,
       m_fShockRate = 20,
       m_fSnatchRate = 20,
}

g_pAttribNpcManager:AddAttribNpcInfo_LUA
{
       m_eDungeonType = DUNGEON_TYPE["DT_SECRET"],
       m_eDungeonMode = DUNGEON_MODE["DM_SECRET_NORMAL"],
       m_iNpcLvBegin = 1,
       m_iNpcLvEnd = 80,
       m_eNpcType = NPC_ABILITY_ID["NAI_CLEVER"],

       m_bTotalRandom = True,

       m_fCleaverRate = 15,
       m_fCriticalRate = 20,
       m_fQuickerRate = 15,
       m_fPhysicDefRate = 20,
       m_fMagicDefRate = 20,
       m_fHeavyRate = 10,
       m_fBlazeRate = 15,
       m_fFrozenRate = 15,
       m_fPoisonRate = 15,
       m_fPiercingRate = 15,
       m_fShockRate = 20,
       m_fSnatchRate = 20,
}

g_pAttribNpcManager:AddAttribNpcInfo_LUA
{
       m_eDungeonType = DUNGEON_TYPE["DT_SECRET"],
       m_eDungeonMode = DUNGEON_MODE["DM_SECRET_HELL"],
       m_iNpcLvBegin = 1,
       m_iNpcLvEnd = 80,
       m_eNpcType = NPC_ABILITY_ID["NAI_BRAVE"],

       m_bTotalRandom = True,

       m_fBraveRate = 18,
       m_fCriticalRate = 25,
       m_fQuickerRate = 25,
       m_fPhysicDefRate = 5,
       m_fMagicDefRate = 5,
       m_fSuperArmorRate = 2,
       m_fHeavyRate = 20,
       m_fBlazeRate = 15,
       m_fFrozenRate = 15,
       m_fPoisonRate = 15,
       m_fPiercingRate = 15,
       m_fShockRate = 20,
       m_fSnatchRate = 20,
}

g_pAttribNpcManager:AddAttribNpcInfo_LUA
{
       m_eDungeonType = DUNGEON_TYPE["DT_SECRET"],
       m_eDungeonMode = DUNGEON_MODE["DM_SECRET_HELL"],
       m_iNpcLvBegin = 1,
       m_iNpcLvEnd = 80,
       m_eNpcType = NPC_ABILITY_ID["NAI_CLEVER"],

       m_bTotalRandom = True,

       m_fCleaverRate = 18,
       m_fCriticalRate = 25,
       m_fQuickerRate = 25,
       m_fPhysicDefRate = 5,
       m_fMagicDefRate = 5,
       m_fSuperArmorRate = 2,
       m_fHeavyRate = 20,
       m_fBlazeRate = 15,
       m_fFrozenRate = 15,
       m_fPoisonRate = 15,
       m_fPiercingRate = 15,
       m_fShockRate = 20,
       m_fSnatchRate = 20,
}



 -- SDAttributeNpcLevelDrop Table
g_pAttribNpcManager:AddAttribDropInfo( 1, 10010, 10020, 10030 )
g_pAttribNpcManager:AddAttribDropInfo( 2, 10010, 10020, 10030 )
g_pAttribNpcManager:AddAttribDropInfo( 3, 10010, 10020, 10030 )
g_pAttribNpcManager:AddAttribDropInfo( 4, 10010, 10020, 10030 )
g_pAttribNpcManager:AddAttribDropInfo( 5, 10110, 10120, 10130 )
g_pAttribNpcManager:AddAttribDropInfo( 6, 10110, 10120, 10130 )
g_pAttribNpcManager:AddAttribDropInfo( 7, 10110, 10120, 10130 )
g_pAttribNpcManager:AddAttribDropInfo( 8, 10110, 10120, 10130 )
g_pAttribNpcManager:AddAttribDropInfo( 9, 10210, 10220, 10230 )
g_pAttribNpcManager:AddAttribDropInfo( 10, 10210, 10220, 10230 )
g_pAttribNpcManager:AddAttribDropInfo( 11, 10210, 10220, 10230 )
g_pAttribNpcManager:AddAttribDropInfo( 12, 10210, 10220, 10230 )
g_pAttribNpcManager:AddAttribDropInfo( 13, 10310, 10320, 10330 )
g_pAttribNpcManager:AddAttribDropInfo( 14, 10310, 10320, 10330 )
g_pAttribNpcManager:AddAttribDropInfo( 15, 10310, 10320, 10330 )
g_pAttribNpcManager:AddAttribDropInfo( 16, 10310, 10320, 10330 )
g_pAttribNpcManager:AddAttribDropInfo( 17, 10410, 10420, 10430 )
g_pAttribNpcManager:AddAttribDropInfo( 18, 10410, 10420, 10430 )
g_pAttribNpcManager:AddAttribDropInfo( 19, 10410, 10420, 10430 )
g_pAttribNpcManager:AddAttribDropInfo( 20, 10410, 10420, 10430 )
g_pAttribNpcManager:AddAttribDropInfo( 21, 10510, 10520, 10530 )
g_pAttribNpcManager:AddAttribDropInfo( 22, 10510, 10520, 10530 )
g_pAttribNpcManager:AddAttribDropInfo( 23, 10510, 10520, 10530 )
g_pAttribNpcManager:AddAttribDropInfo( 24, 10510, 10520, 10530 )
g_pAttribNpcManager:AddAttribDropInfo( 25, 10610, 10620, 10630 )
g_pAttribNpcManager:AddAttribDropInfo( 26, 10610, 10620, 10630 )
g_pAttribNpcManager:AddAttribDropInfo( 27, 10610, 10620, 10630 )
g_pAttribNpcManager:AddAttribDropInfo( 28, 10610, 10620, 10630 )
g_pAttribNpcManager:AddAttribDropInfo( 29, 10710, 10720, 10730 )
g_pAttribNpcManager:AddAttribDropInfo( 30, 10710, 10720, 10730 )
g_pAttribNpcManager:AddAttribDropInfo( 31, 10710, 10720, 10730 )
g_pAttribNpcManager:AddAttribDropInfo( 32, 10710, 10720, 10730 )
g_pAttribNpcManager:AddAttribDropInfo( 33, 10810, 10820, 10830 )
g_pAttribNpcManager:AddAttribDropInfo( 34, 10810, 10820, 10830 )
g_pAttribNpcManager:AddAttribDropInfo( 35, 10810, 10820, 10830 )
g_pAttribNpcManager:AddAttribDropInfo( 36, 10810, 10820, 10830 )
g_pAttribNpcManager:AddAttribDropInfo( 37, 10910, 10920, 10930 )
g_pAttribNpcManager:AddAttribDropInfo( 38, 10910, 10920, 10930 )
g_pAttribNpcManager:AddAttribDropInfo( 39, 10910, 10920, 10930 )
g_pAttribNpcManager:AddAttribDropInfo( 40, 10910, 10920, 10930 )
g_pAttribNpcManager:AddAttribDropInfo( 41, 11010, 11020, 11030 )
g_pAttribNpcManager:AddAttribDropInfo( 42, 11010, 11020, 11030 )
g_pAttribNpcManager:AddAttribDropInfo( 43, 11010, 11020, 11030 )
g_pAttribNpcManager:AddAttribDropInfo( 44, 11010, 11020, 11030 )
g_pAttribNpcManager:AddAttribDropInfo( 45, 11110, 11120, 11130 )
g_pAttribNpcManager:AddAttribDropInfo( 46, 11110, 11120, 11130 )
g_pAttribNpcManager:AddAttribDropInfo( 47, 11110, 11120, 11130 )
g_pAttribNpcManager:AddAttribDropInfo( 48, 11110, 11120, 11130 )
g_pAttribNpcManager:AddAttribDropInfo( 49, 11210, 11220, 11230 )
g_pAttribNpcManager:AddAttribDropInfo( 50, 11210, 11220, 11230 )
g_pAttribNpcManager:AddAttribDropInfo( 51, 11210, 11220, 11230 )
g_pAttribNpcManager:AddAttribDropInfo( 52, 11210, 11220, 11230 )
g_pAttribNpcManager:AddAttribDropInfo( 53, 11310, 11320, 11330 )
g_pAttribNpcManager:AddAttribDropInfo( 54, 11310, 11320, 11330 )
g_pAttribNpcManager:AddAttribDropInfo( 55, 11310, 11320, 11330 )
g_pAttribNpcManager:AddAttribDropInfo( 56, 11310, 11320, 11330 )
g_pAttribNpcManager:AddAttribDropInfo( 57, 11410, 11420, 11430 )
g_pAttribNpcManager:AddAttribDropInfo( 58, 11410, 11420, 11430 )
g_pAttribNpcManager:AddAttribDropInfo( 59, 11410, 11420, 11430 )
g_pAttribNpcManager:AddAttribDropInfo( 60, 11410, 11420, 11430 )
g_pAttribNpcManager:AddAttribDropInfo( 61, 11510, 11520, 11530 )
g_pAttribNpcManager:AddAttribDropInfo( 62, 11510, 11520, 11530 )
g_pAttribNpcManager:AddAttribDropInfo( 63, 11510, 11520, 11530 )
g_pAttribNpcManager:AddAttribDropInfo( 64, 11510, 11520, 11530 )
g_pAttribNpcManager:AddAttribDropInfo( 65, 11610, 11620, 11630 )
g_pAttribNpcManager:AddAttribDropInfo( 66, 11610, 11620, 11630 )
g_pAttribNpcManager:AddAttribDropInfo( 67, 11610, 11620, 11630 )
g_pAttribNpcManager:AddAttribDropInfo( 68, 11610, 11620, 11630 )
g_pAttribNpcManager:AddAttribDropInfo( 69, 11610, 11620, 11630 )
g_pAttribNpcManager:AddAttribDropInfo( 70, 11610, 11620, 11630 )
g_pAttribNpcManager:AddAttribDropInfo( 71, 11610, 11620, 11630 )
g_pAttribNpcManager:AddAttribDropInfo( 72, 11610, 11620, 11630 )
g_pAttribNpcManager:AddAttribDropInfo( 73, 11610, 11620, 11630 )
g_pAttribNpcManager:AddAttribDropInfo( 74, 11610, 11620, 11630 )
g_pAttribNpcManager:AddAttribDropInfo( 75, 11610, 11620, 11630 )
g_pAttribNpcManager:AddAttribDropInfo( 76, 11610, 11620, 11630 )
g_pAttribNpcManager:AddAttribDropInfo( 77, 11610, 11620, 11630 )
g_pAttribNpcManager:AddAttribDropInfo( 78, 11610, 11620, 11630 )
g_pAttribNpcManager:AddAttribDropInfo( 79, 11610, 11620, 11630 )
g_pAttribNpcManager:AddAttribDropInfo( 80, 11610, 11620, 11630 )


 -- SDAttributeNpcDropGroup Table
g_pAttribNpcManager:AddAttribDropGroupInfo( 10010, 2, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10010, 5, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10010, 7, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10010, 9, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10010, 11, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10010, 4040, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10010, 6007, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10020, 2, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10020, 5, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10020, 7, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10020, 9, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10020, 11, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10020, 4040, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10020, 6007, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10030, 2, 8)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10030, 5, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10030, 7, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10030, 9, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10030, 11, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10030, 4040, 8)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10030, 6007, 8)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10110, 14, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10110, 17, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10110, 19, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10110, 21, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10110, 23, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10110, 4040, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10110, 6007, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10120, 14, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10120, 17, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10120, 19, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10120, 21, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10120, 23, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10120, 4040, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10120, 6007, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10130, 14, 8)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10130, 17, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10130, 19, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10130, 21, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10130, 23, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10130, 4040, 8)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10130, 6007, 8)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10210, 26, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10210, 29, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10210, 31, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10210, 33, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10210, 35, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10210, 4040, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10210, 6007, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10220, 26, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10220, 29, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10220, 31, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10220, 33, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10220, 35, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10220, 4040, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10220, 6007, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10230, 26, 8)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10230, 29, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10230, 31, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10230, 33, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10230, 35, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10230, 4040, 8)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10230, 6007, 8)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10310, 38, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10310, 41, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10310, 43, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10310, 45, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10310, 47, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10310, 4040, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10310, 6007, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10320, 38, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10320, 41, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10320, 43, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10320, 45, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10320, 47, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10320, 4040, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10320, 6007, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10330, 38, 8)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10330, 41, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10330, 43, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10330, 45, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10330, 47, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10330, 4040, 8)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10330, 6007, 8)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10410, 50, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10410, 53, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10410, 55, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10410, 57, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10410, 59, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10410, 4040, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10410, 6007, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10420, 50, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10420, 53, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10420, 55, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10420, 57, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10420, 59, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10420, 4040, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10420, 6007, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10430, 50, 8)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10430, 53, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10430, 55, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10430, 57, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10430, 59, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10430, 4040, 8)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10430, 6007, 8)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10510, 62, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10510, 65, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10510, 67, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10510, 69, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10510, 71, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10510, 4050, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10510, 6007, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10520, 62, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10520, 65, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10520, 67, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10520, 69, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10520, 71, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10520, 4050, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10520, 6007, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10530, 62, 8)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10530, 65, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10530, 67, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10530, 69, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10530, 71, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10530, 4050, 8)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10530, 6007, 8)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10610, 74, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10610, 77, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10610, 79, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10610, 81, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10610, 83, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10610, 4050, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10610, 6007, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10620, 74, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10620, 77, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10620, 79, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10620, 81, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10620, 83, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10620, 4050, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10620, 6007, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10630, 74, 8)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10630, 77, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10630, 79, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10630, 81, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10630, 83, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10630, 4050, 8)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10630, 6007, 8)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10710, 86, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10710, 89, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10710, 91, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10710, 93, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10710, 95, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10710, 4060, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10710, 6007, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10720, 86, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10720, 89, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10720, 91, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10720, 93, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10720, 95, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10720, 4060, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10720, 6007, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10730, 86, 8)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10730, 89, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10730, 91, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10730, 93, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10730, 95, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10730, 4060, 8)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10730, 6007, 8)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10810, 98, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10810, 101, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10810, 103, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10810, 105, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10810, 107, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10810, 4060, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10810, 6007, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10820, 98, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10820, 101, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10820, 103, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10820, 105, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10820, 107, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10820, 4060, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10820, 6007, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10830, 98, 8)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10830, 101, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10830, 103, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10830, 105, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10830, 107, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10830, 4060, 8)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10830, 6007, 8)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10910, 110, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10910, 113, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10910, 115, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10910, 117, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10910, 119, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10910, 4070, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10910, 6007, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10920, 110, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10920, 113, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10920, 115, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10920, 117, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10920, 119, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10920, 4070, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10920, 6007, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10930, 110, 8)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10930, 113, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10930, 115, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10930, 117, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10930, 119, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10930, 4070, 8)
g_pAttribNpcManager:AddAttribDropGroupInfo( 10930, 6007, 8)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11010, 122, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11010, 125, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11010, 127, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11010, 129, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11010, 131, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11010, 4070, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11010, 6007, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11020, 122, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11020, 125, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11020, 127, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11020, 129, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11020, 131, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11020, 4070, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11020, 6007, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11030, 122, 8)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11030, 125, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11030, 127, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11030, 129, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11030, 131, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11030, 4070, 8)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11030, 6007, 8)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11110, 134, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11110, 137, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11110, 139, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11110, 141, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11110, 143, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11110, 4070, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11110, 6007, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11120, 134, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11120, 137, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11120, 139, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11120, 141, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11120, 143, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11120, 4070, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11120, 6007, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11130, 134, 8)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11130, 137, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11130, 139, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11130, 141, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11130, 143, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11130, 4070, 8)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11130, 6007, 8)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11210, 146, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11210, 149, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11210, 151, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11210, 153, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11210, 155, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11210, 4080, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11210, 6007, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11220, 146, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11220, 149, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11220, 151, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11220, 153, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11220, 155, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11220, 4080, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11220, 6007, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11230, 146, 8)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11230, 149, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11230, 151, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11230, 153, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11230, 155, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11230, 4080, 8)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11230, 6007, 8)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11310, 158, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11310, 161, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11310, 163, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11310, 165, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11310, 167, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11310, 4080, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11310, 6007, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11320, 158, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11320, 161, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11320, 163, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11320, 165, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11320, 167, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11320, 4080, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11320, 6007, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11330, 158, 8)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11330, 161, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11330, 163, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11330, 165, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11330, 167, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11330, 4080, 8)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11330, 6007, 8)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11410, 170, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11410, 173, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11410, 175, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11410, 177, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11410, 179, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11410, 4080, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11410, 6007, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11420, 170, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11420, 173, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11420, 175, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11420, 177, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11420, 179, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11420, 4080, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11420, 6007, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11430, 170, 8)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11430, 173, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11430, 175, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11430, 177, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11430, 179, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11430, 4080, 8)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11430, 6007, 8)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11510, 182, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11510, 185, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11510, 187, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11510, 189, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11510, 191, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11510, 4090, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11510, 6007, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11520, 182, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11520, 185, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11520, 187, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11520, 189, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11520, 191, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11520, 4090, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11520, 6007, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11530, 182, 8)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11530, 185, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11530, 187, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11530, 189, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11530, 191, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11530, 4090, 8)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11530, 6007, 8)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11610, 182, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11610, 185, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11610, 187, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11610, 189, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11610, 191, 6)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11610, 4090, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11610, 6007, 3)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11620, 182, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11620, 185, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11620, 187, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11620, 189, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11620, 191, 9)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11620, 4090, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11620, 6007, 5)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11630, 182, 8)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11630, 185, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11630, 187, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11630, 189, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11630, 191, 12)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11630, 4090, 8)
g_pAttribNpcManager:AddAttribDropGroupInfo( 11630, 6007, 8)


 -- SDNoDropNpc Table
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BENDERS_NORMAL"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BENDERS_HARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BENDERS_EXPERT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MONKEY_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PPORU_WILLIAM_NORMAL"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PPORU_GIANT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PPORU_GIANT_RED"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_CHEST_MONSTER"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BENDERS_B"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BENDERS_UPGRADE_NORMAL"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BENDERS_UPGRADE_HARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BENDERS_UPGRADE_EXPERT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MONKEY_C_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PPORU_GIANT_BLACK"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PPORU_WILLIAM_HARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PPORU_WILLIAM_EXPERT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BAT_KING"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_ENT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_WALLY_8TH"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BENDERS_NASOD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PPORU_WILLIAM_B"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PPORU_WILLIAM_C"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MOUSE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_LIZARDMAN_HIGH"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MOUSE_NODROP"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GHOST_MAGICIAN_RED"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_KING"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_WALLY_8TH_MK2"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_SCORPION_KING"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_LIZARDMAN_OLDER"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MUSHROOM_KING"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BEE_QUEEN"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MONKEY_BOMB_KING"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PPORU_GIANT_WHITE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_WISP"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MUSHROOM_KING_BLACK"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_WALLY_9TH_ARMOR"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NASOD_DRILLER"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_ARMADILLO_KING"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_LIZARDMAN_OLDER_BLACK"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_WALLY_9TH"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_AIR"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NASOD_DRILLER_AIR"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NASOD_MINER_THIN_BIG"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_EXPERT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_WALLY_8TH_EXPERT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_WALLY_8TH_MK2_EXPERT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NASOD_DRILLER_EXPERT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK_EXPERT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_LIZARDMAN_OLDER_BLACK_EXPERT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_LIZARDMAN_SHAMAN_KING_EXPERT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_WALLY_9TH_EXPERT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_WALLY_9TH_ARMOR_EXPERT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_LIZARDMAN_OLDER_EXPERT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_SCORPION_KING_EXPERT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NASOD_GUARDIAN"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NASOD_DRILLER_CANNON"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NASOD_DRILLER_CANNON_DEFECT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GHOST_CLOWN_THUNDER"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_WALLY_8TH_FIST"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_WALLY_8TH_MISSILE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_WALLY_8TH_LASER"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_WALLY_7TH"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PARASITE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BODY"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BODY_ARMOR"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_TOP_EYE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_TOP_CANNON"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BOTTOM_EYE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BOTTOM_CANNON"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NASOD_ELEMENT_FIRE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NASOD_ELEMENT_ICE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BARRIERMACHINE_FIRE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BARRIERMACHINE_ICE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_RAVEN"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_CANNON_FORT_PARASITE_BODY_SHELL"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NASOD_ELEMENT_FIRE_SOLO"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NASOD_ELEMENT_ICE_SOLO"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NASOD_MOUSE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_RAVEN_CLONE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_RAVEN_CLONE_PROTO"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_LIZARDMAN_SHAMANKING_DARK"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_LIZARDMAN_SHAMANKING_DARK_A"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NASOD_KING"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PPORU_WILLIAM_THIEF_ARCADE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_EL_EXTRACTOR_FIRE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_EL_EXTRACTOR_ICE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_EL_EXTRACTOR_EARTH"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_EL_EXTRACTOR_NOVA"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_EL_POWER_PLANT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_RAVEN_CLONE_B"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NASOD_ELEMENT_FIRE_B"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NASOD_ELEMENT_ICE_B"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PPORU_WILLIAM_KOREAN_CLOTHES"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MONKEY_BOSS_EASY"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_ANCIENT_PPORU"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MONKEY_KING"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MUSHROOM_ELEMENTAL_DARK"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MUSHROOM_ELEMENTAL_LIGHT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MUSHROOM_ELEMENTAL_FIRE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MUSHROOM_ELEMENTAL_ICE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MUSHROOM_ELEMENTAL_NATURE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MUSHROOM_ELEMENTAL_WIND"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GHOST_MAGICIAN_EVENT1"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GHOST_MAGICIAN_EVENT2"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GHOST_MAGICIAN_EVENT3"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GHOST_MAGICIAN_EVENT_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GHOST_MAGICIAN_EVENT11"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GHOST_MAGICIAN_EVENT22"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GHOST_MAGICIAN_EVENT33"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GOLEM_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DULLAHAN"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PPORU_WILLIAM_SANTA"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_ELSWORD_PARASITE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PARASITE_EVOLUTION"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_RAVEN_EVENT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BENDERS_UPGRADE_NORMAL_EVENT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_WALLY_8TH_EVENT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PPORU_WILLIAM_NORMAL_EVENT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PPORU_WILLIAM_VALENTINE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PPORU_THIEF_BLACKDAY"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BENDERS_BLACKDAY"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_NECROMANCER_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_HAMMER_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_ARCHER_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MANA_EATER"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_AMETHYST"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PLANT_OVERLOAD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PLANT_WHIP_B"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_CUTTYSARK"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_TRAP_CHAIN"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_SMALLGATE_POST_CAPTION1"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_SMALLGATE_POST_CAPTION2"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BOX_HENIR"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GATE_HENIR_YES"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GATE_HENIR_NO"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_SUMMON_BOSS_A"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GATE_FLYING_STONE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GATE_FLYING_STONE_POST"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_TRAP_CROSSBOW"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_TRAP_CHAIN_RED"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PD_MONSTER_B"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_FRAIL_GREAT_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BLOOD_EATER"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_CANNON_DEMON"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BARRICADE_DEMON"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_UNOHOUND"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DARKELF_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_VANGARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DOSHOUND"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DARK_NEPHILIM"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK_NEW"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_SAURUS_HIGH_DARK"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_LUTO"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BOX_EVENT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NASOD_MINER_THIN_EVENT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NASOD_MINER_FAT_A_EVENT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NASOD_MINER_FAT_C_AIR_EVENT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NASOD_RAIL_EVENT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NASOD_RAIL_CART_EVENT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NASOD_SPRAY_EVENT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_WALLY_9TH_TYPE2_EVENT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NASOD_WATCH_EVENT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_TREE_KNIGHT_EVENT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_ENT_SMALL_EVENT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_ENT_EVENT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NASOD_DRILLER_EVENT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_WALLY_9TH_EVENT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_WALLY_8TH_MK2_EVENT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NASOD_INSPECTOR"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_ANCIENT_BONE_DRAGON"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NASOD_INSPECTOR_HELL"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_ANCIENT_BONE_DRAGON_HELL"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_LIZARDMAN_SHAMANKING_DARK_HELL"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_WALLY_7TH_COMMON"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_WALLY_7TH_HELL"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK_NEW_COMMON"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_LIZARDMAN_OLDER_BLACK_COMMON"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_LIZARDMAN_HIGH_DARK_NEW_HELL"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_LIZARDMAN_OLDER_BLACK_HELL"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_ELSWORD_PARASITE_COMMON"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PARASITE_EVOLUTION_COMMON"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_ELSWORD_PARASITE_HELL"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PARASITE_EVOLUTION_HELL"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PARASITE_HOUSE_EVOLUTION_REVERS_HELL"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PARASITE_HOUSE_EVOLUTION_REVERS_EXTRA"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GATE_OF_NIGHTMARE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BESMA_ROCK_BIG_COMMON"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BESMA_ROCK_COMMON_START"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BESMA_ROCK_CONTROLER_EXTRA"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_ELSWORD_PARASITE_EXTRA"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NASOD_INSPECTOR_EXTRA"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_ANCIENT_BONE_DRAGON_EXTRA"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_VANGUARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_COACKTRIGLE_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_SIEGE_TOWER"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_GREAT_STONE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_CRAZY_PUPPET"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_SPRIGGAN_SMALL"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_SPRIGGAN_BIG"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT_TRAP"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_SOLDIER_BENDERS_STRONG"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_VELDER_MISSION"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_RUBEN_MISSION"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_COACKATRIGLE_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_VELDER_PALACE_GATE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BOX_VELDER"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DUNGEON_CHECKER1"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DUNGEON_CHECKER2"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DUNGEON_CHECKER3"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DUNGEON_CHECKER4"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DUNGEON_CHECKER5"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BOX_ALTERA"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BOX_BESMA1"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BOX_BESMA2"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BOX_PEITA"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_VELDER_MARKET_WALL_BREAK1"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_VELDER_MARKET_WALL_BREAK2"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_VELDER_MARKET_WALL_BREAK3"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_SPRIGGAN_LIGHT_BALL"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_SPRIGGAN_ENTANGLE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_VELDER_MARKET_GATE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_VELDER_MARKET_BOSS_GATE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_VELDER_STAGE6_BOSS_TRAP"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_VELDER_STAGE6_BOSS_TRAP_SWITCH"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_VELDER_STAGE6_BOSS_WALL"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DARK_NEPHILIM_FAKE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DARKELF_BOSS_FAKE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_FLAME_RED_EVENT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_FLAME_BLUE_EVENT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_JOKE_PPORU"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NASOD_DRILLER_HENIR"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_HALLOWEEN_DULLAHAN_KNIGHT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_HALLOWEEN_LIZARDMAN_SHAMANKING"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_HALLOWEEN_MANA_EATER"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MAST_A"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MAST_B"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MAST_C"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_SANTA_CHLOE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BLACK_FLOWER_TRAP"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_VORTEX_TRAP"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_CRYSTAL_TRAP"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_ICE_PILLAR_TRAP"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_CHILLING_SPINE_TRAP"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_ICE_SLOPE_TRAP"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BROKEN_TOWER"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_SHADOW_STINGER"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_CLOE_THE_CORRUPTION"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_CONRAD_THE_ODD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BOBOSSE_THE_REDHAMMER"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_SHADOW_MASTER"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_CORAL_SERPENT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_TARANVASH_THE_SHINE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_VICTOR"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MAGMANTA"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_AVALANCHE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_RAN"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT_SHIP"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT_SHIP"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DARKELF_SENTINEL_SHIP"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MAST_D"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MAST_E"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MAST_F"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_ANCIENT_CRAB_SHIP"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MERMAN_SHIP"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BLACK_FLOWER_TRAP_SIDE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GEAR_TRAP"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GEAR_RESPAWN_A"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GEAR_RESPAWN_B"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PIRANHA_HOUSE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_SHADOW_MASTER_DARK_BALL"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_TARANVASH_THE_SHINE_FAKE_A"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_TARANVASH_THE_SHINE_FAKE_B"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_CRYSTAL_TRAP_RIGHT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_CRYSTAL_TRAP_LEFT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_WATERWAY_CORE_RESPAWNER"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BOX_HAMEL"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_RESIAM_GATE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_RESIAM_BOSS_GATE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_WATERWAY_GATE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_WATERWAY_BOSS_GATE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_UNDERWATER_GATE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_UNDERWATER_BOSS_GATE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MERMAN_EVENT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_SHADOW_WALKER_EVENT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_REJECTION_MONKEY"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DEFENCE_SOLDIER_BENDERS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DEFENCE_LIZARDMAN_HIGH"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DEFENCE_AIRSHIP_SOLDIER_SWORDMAN"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DEFENCE_GLITER_LANCE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DEFENCE_GLITER_LANCE_GREAT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DEFENCE_SHADOW_BLAST"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DEFENCE_DARKNESS_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_EVENT_CHALLENGER"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_EVENT_EL_THIEF"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DEVELOPER_A"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DEVELOPER_B"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DEVELOPER_C"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DEVELOPER_D"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DEVELOPER_E"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DEFENCE_CRYSTAL"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_JOKE_PPORU2"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DOPPELGANGER_ELSWORD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DOPPELGANGER_ARME"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DOPPELGANGER_LIRE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DOPPELGANGER_RAVEN"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DOPPELGANGER_EVE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_EVENT_FREST_KNIGHT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_EVENT_FREST_LORD_SMALL"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_EVENT_FREST_LORD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_KNIGHT_LORD_KNIGHT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_KNIGHT_RUNE_SLAYER"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GIANT_LINKER"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_ICE_STINGER"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DEFENCE_CRYSTAL_SMALL"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DEFENCE_DARK_BALL_NORMAL"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DEFENCE_DARK_BALL_HARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DEFENCE_DARK_BALL_EXPERT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DEFENCE_DARKNESS_BOSS_NORMAL"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DEFENCE_DARKNESS_BOSS_HARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DEFENCE_DARKNESS_BOSS_EXPERT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DEFENCE_MANA_EATER"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DEFENCE_BLOOD_EATER"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DEFENCE_CLOE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DEFENCE_THIEF_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DEFENCE_ARCHER_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DEFENCE_STINGER"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DEFENCE_HAMMER_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DEFENCE_DURAHAN"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DEFENCE_GOLEM_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DEFENCE_PUPPET"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DEFENCE_SHADOW_BLAST_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DEFENCE_SQUARE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DEFENCE_SQUARE_SMALL"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_AVALANCHE_ICE_PILLAR_BIG"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_AVALANCHE_ICE_PILLAR_SMALL"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BOBOSSE_THE_REDHAMMER_DP"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_EVENT_GLITER_ALCHEMYST_NEW"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_EVENT_GLITER_ALCHEMYST_SUSPICIOUS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_EVENT_GLITER_ALCHEMYST_SUPPORTER"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PVP_BOT_ELSWORD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PVP_BOT_AISHA"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PVP_BOT_RENA"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PVP_BOT_RAVEN"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PVP_BOT_EVE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PVP_BOT_CHUNG"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PVP_HERO_LOW"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PVP_HERO_PENENSIO"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PVP_HERO_NOA"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PVP_HERO_SPIKA"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PVP_HERO_LIME"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PVP_HERO_AMELIA"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PVP_HERO_EDAN"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PVP_HERO_BALAK"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PVP_HERO_CODE_Q_PROTO_00"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PVP_HERO_APPLE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PVP_RUNE_GUARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_AVALANCHE_STATUE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_ICE_ROCK"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_TARGETING_CHUNG"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_CAVE_OF_MAGMANTA_GATE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_FROZEN_WATER_TEMPLE_GATE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_FAKE_RAVEN"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_VICTOR_LAST"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_LORD_KNIGHT_CORRUPTION"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_RUNE_SLAYER_CORRUPTION"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_FROZEN_WATER_HALL_GATE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_LORD_KNIGHT_RESPAWN"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_RUNE_SLAYER_RESPAWN"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NPC_ELSWORD_01"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NPC_ELSWORD_02"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NPC_ELSWORD_03"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NPC_ELSWORD_04"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NPC_ELSWORD_05"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NPC_AISHA_01"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NPC_AISHA_02"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NPC_AISHA_03"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NPC_AISHA_04"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NPC_AISHA_05"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NPC_RENA_01"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NPC_RENA_02"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NPC_RENA_03"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NPC_RENA_04"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NPC_RENA_05"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NPC_RAVEN_01"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NPC_RAVEN_02"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NPC_RAVEN_03"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NPC_RAVEN_04"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NPC_RAVEN_05"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NPC_EVE_01"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NPC_EVE_02"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NPC_EVE_03"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NPC_EVE_04"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NPC_EVE_05"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NPC_CHUNG_01"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NPC_CHUNG_02"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NPC_CHUNG_03"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NPC_CHUNG_04"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NPC_CHUNG_05"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_HENIR_SECRETROOM_GLAVE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_HENIR_RESTROOM_CUBE_A"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_HENIR_RESTROOM_CUBE_B"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_HENIR_CRYSTAL_TRAP_LEFT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_HENIR_CRYSTAL_TRAP_RIGHT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_HENIR_CODE_Q_PROTO_00"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_HENIR_APPLE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT_BOSS_STAGE0"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT_BOSS_STAGE1"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT_BOSS_STAGE2"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT_BOSS_STAGE3"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_POT_RED"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_POT_YELLOW"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_POT_BLUE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_CRAZY_PUPPET_NOT_MOVE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BLOODY_UNOHOUND"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_VELDER_WRECK1"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_VELDER_WRECK2"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_VELDER_WRECK3"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_VELDER_WRECK4"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_VELDER_WRECK5"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_TOMBSTONE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_ZOMBIE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GIANT_UNOHOUND"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GIANT_PUPPET"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GIANT_SPRIGAN"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_SECRET_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_HENIR_CLEAR_GLAVE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_HENIR_CUT_REPORTER_ELDER"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_HENIR_CUT_REPORTER_BESMA"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_HENIR_CUT_REPORTER_ALTERA"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_HENIR_CUT_REPORTER_PEITA"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_HENIR_CUT_REPORTER_VELDER"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_HENIR_CUT_REPORTER_HAMEL"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_WALLY_8TH_MK2_HELL"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_HENIR_RAN"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_HENIR_GLITER_NECROMANCER_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_HENIR_GLITER_HAMMER_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_HENIR_GLITER_ARCHER_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BLOODY_GLITER_ARCHER_TRAP"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT_BOSS_STAGE0_HELL"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT_BOSS_STAGE1_HELL"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT_BOSS_STAGE2_HELL"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT_BOSS_STAGE3_HELL"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_CRAZY_PUPPET_NOT_MOVE_HELL"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BLOODY_UNOHOUND_HELL"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_TOMBSTONE_HELL"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_TOMBSTONE_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GIANT_UNOHOUND_HELL"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GIANT_PUPPET_HELL"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GIANT_SPRIGAN_HELL"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_SECRET_BOSS_HELL"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_SECRET_BOSS_EXTRA"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PPORU_WILLIAM_TRANSFORM"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BENDERS_NASOD_TRANSFORM"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_ARCHER_BOSS_TRANSFORM"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DARKELF_BOSS_TRANSFORM"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_WYVERN_TRANSFORM"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_UNOHOUND_TRANSFORM"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_SUMMON_BOSS_A_TRANSFORM"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PPORU_WILLIAM_FAKE_TEACHER"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PPORU_WILLIAM_REAL_TEACHER"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PUMPKIN_BOX_1"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PUMPKIN_BOX_2"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PUMPKIN_BOX_3"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PUMPKIN_BOX_4"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_HENIR_GLITER_VANGUARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_HALLOWEEN_MONKEY_KING"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_HALLOWEEN_UNOHOUND"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_HALLOWEEN_GOLEM_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_HALLOWEEN_VICTOR"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_HALLOWEEN_NASOD_BENDERS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_HALLOWEEN_CLOE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PUMPKIN_BIG_BOX_1"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PUMPKIN_BIG_BOX_2"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PUMPKIN_BIG_BOX_3"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PUMPKIN_BIG_BOX_4"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_SUMMON_PUMPKIN"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_VAMPIRE_LINKER"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_SUMMON_PUMPKIN_NORMAL"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_SUMMON_PUMPKIN_HARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_SUMMON_PUMPKIN_EXPERT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_EVENT_BAZZI"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_EVENT_GOLDEN_DAO"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PVP_HERO_LOW_EVENT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_EVOKE_TRAP_LIRE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_EVENT_ABYSS_RAN"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_EVOKE_TRAP_LIRE_MEMO"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DEFENCE_DARK_BALL_EXTRA"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_SUMMON_SHADOW_BLAST"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MARS_RUBEN_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_SOLDIER_BENDERS_ELDER_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_SAURUS_BESMA_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_ALTERA_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_LANCE_PEITA_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_HAMMER_VELDER_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_SHADOW_WALKER_HAMEL_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MONKEY_WOOD_BIG"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MONKEY_WOOD_SMALL"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_CHICKEN_RUBEN_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_TREE_KNIGHT_RUBEN_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_FAIRY_GUARDIAN_RUBEN_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MUSHROOM_POISON_ELDER_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GHOST_MAGICIAN_RAGGED_ELDER_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PPORU_WILLIAM_THIEF_ELDER_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MONKEY_APPLE_ELDER_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MONKEY_BOMB_ELDER_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_CACTUS_BESMA_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_FIRE_KOMODO_BESMA_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BEE_NASOD_BESMA_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NASOD_MINER_THIN_BESMA_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_ARMADILLO_BESMA_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_SCORPION_KING_BESMA_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BAT_SONIC_ALTERA_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NASOD_GUARDIAN_SMALL_ALTERA_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NASOD_GUARD_ALTERA_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NASOD_SPRAY_ICE_ALTERA_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_NASOD_GUARDIAN_ALTERA_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GOLEM_STONE_RAGE_PEITA_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_NECROMANCER_PEITA_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_JUBIGEE_PEITA_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GARGOYLE_STONE_PEITA_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_FLY_LANTERN_PEITA_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_ARCHER_BOSS_PEITA_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_COACKATRIGLE_VELDER_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_ARCHER_GREAT_VELDER_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT_VELDER_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_COMMANDER_VELDER_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_ELEMENTAL_KENAZ_VELDER_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DARKELF_SENTINEL_VELDER_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_ALCHEMYST_GREAT_VELDER_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_THIEF_GREAT_BOSS_VELDER_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_LANCE_GREAT_BOSS_VELDER_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_IS_HAMEL_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_HAGALAZ_HAMEL_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_ANCIENT_ICE_CRAB_HAMEL_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MERMAN_HAMEL_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_CHILLING_HEDGEHOG_HAMEL_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_SHADOW_LINKER_HAMEL_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_SHADOW_FORT_TRICKSTER_HAMEL_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_SHADOW_VOIDER_HAMEL_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_CLOE_THE_CORRUPTION_HAMEL_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BOBOSSE_THE_REDHAMMER_HAMEL_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_FRAIL_GREAT_VELDER_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_SHADOW_DEFENDER_HAMEL_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_SHADOW_FORT_SNIPER_HAMEL_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_SHADOW_TRICKSTER_HAMEL_CARD_TOTEM_B"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_AIRSHIP_SOLDIER_SWORDMAN_ALTERA_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_SHADOW_SNIPER_HAMEL_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_ANCIENTNASOD_GUARD_HAMEL_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MANTA_RES_HAMEL_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_KNIGHT_RUNE_SLAYER_HAMEL_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_SHIELD_ELITE_PEITA_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_ADW_DISTORTION"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_APINK_ANGEL_01_ELSWORD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_APINK_ANGEL_02_AISHA"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_APINK_ANGEL_03_RENA"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_APINK_ANGEL_04_RAVEN"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_APINK_ANGEL_05_EVE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_APINK_ANGEL_06_CHUNG"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_APINK_ANGEL_07_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_EVENT_APINK_LOCKUP"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_REMOTE_MORTAR"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_REMOTE_MORTAR_APINK"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_CSM_PVP_HERO_LOW"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_CSM_PVP_HERO_PENENSIO"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_CSM_PVP_HERO_NOA"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_CSM_PVP_HERO_SPIKA"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_CSM_PVP_HERO_LIME"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_CSM_PVP_HERO_AMELIA"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_CSM_PVP_HERO_EDAN"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_CSM_PVP_HERO_BALAK"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_CSM_PVP_HERO_CODE_Q_PROTO_00"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_CSM_PVP_HERO_APPLE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_EVENT_FULL_MOON_MONSTER"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_EVENT_RED_FULL_MOON_MONSTER"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_EVENT_BLUE_FULL_MOON_MONSTER"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DARK_CRYSTAL"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_CHINA_HARVEST_DAY_EVENT_MANA_EATER"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_CHINA_HARVEST_DAY_EVENT_MANA_EATER_FAKE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_EVENT_PET_HATCHLING_NORM_F_MONSTER"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_EVENT_PET_HATCHLING_DARK_F_MONSTER"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_EVENT_PET_HATCHLING_FIRE_F_MONSTER"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_EVENT_PET_HATCHLING_LIGHT_F_MONSTER"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_EVENT_PET_HATCHLING_SUMMON_GATE_NORMAL"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_EVENT_PET_HATCHLING_SUMMON_GATE_HARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_WANDERING_SOUL_OF_DEMON"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MI_LINE_A_NPC"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MI_LINE_B_NPC"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MI_LINE_C_NPC"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MI_LINE_D_NPC"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MI_LINE_E_NPC"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MI_IF1_BOX"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MI_IF2_BOX"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MI_HIDE_TRIGGER"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MI_REWARD_BOX"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MI_FIRE_TRAP"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MI_FIRE_TOTEM"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MI_RED_ALERT_SYSTEM"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MI_BLUE_ALERT_SYSTEM"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MI_GREEN_ALERT_SYSTEM"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MI_RED_ALERT_MOVE_SYSTEM"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MI_BLUE_ALERT_MOVE_SYSTEM"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MI_GREEN_ALERT_MOVE_SYSTEM"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MI_ICE_PILLAR"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MI_BIG_STONE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MI_SMALL_STONE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MI_STONE_CONTROLER"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MI_STONE_COMMON_START"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MI_STONE_COMMON_END"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_CSM_KIM_SWORD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MI_STONE_COMMON"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_EVENT_BIRTHDAY_CAKE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_STRONG_STEEL_TROCK"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_TROCK_DOG_TOGI"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_TROCK_DOG_SP_FIRE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_TROCK_DOG_SP_ICE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_TROCK_DOG_SP_POISON"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_STONE_AXE_TROCK_BUTRUE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DRY_SANDER_ACTOR_NPC"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_WALDO_TROCK"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GOLDWING_ALELO"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DARKWING_OQPETE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_KELAINO_HARPY"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_WALDO_TROCK_STONE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DRY_SANDER_EVENT_NPC_ANUDRAN"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DRY_SANDER_EVENT_NPC_KARIS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DRY_SANDER_GATE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GARPAI_ROCK_GATE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_STONE_AXE_TROCK_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_WING_HARPY_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GIANT_HARPY_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_SHAMAN_HARPY_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_STRONG_STEEL_TROCK_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_STONE_AXE_TROCK_BUTRUE_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GOLDWING_ALELO_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DARKWING_OQPETE_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_RED_ANGLER_DP"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_TROCK_DARK_POISON"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_TROCK_DOG_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BOMB_TROCK_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MINI_BOMB_TROCK"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_CHIEF_OF_TROCKTA"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_KARUSO_ASSASSIN_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_KARUSO_FIGHTER_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_KARUSO_BATTLE_MASTER"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_TROCK_SUMMON_CAVE1"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_TROCK_SUMMON_CAVE2"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_TROCK_SUMMON_CAVE3"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_TROCK_SUMMON_CAVE4"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_TROCK_SUMMON_CAVE5"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_SANDER_DEN_OF_TROCK_GATE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_SANDER_KARUSO_VILLAGE_GATE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_TROCKTA_TRAP"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_SANDER_KARUSO_VILLAGE_CLEAR_NPC"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_KARUSO_BATTLE_MASTER_DP"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_TROCK_DARK_POISON_SMALL"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_RASH_VEGA_TROCK_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_RASH_STONE_AXE_TROCK_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_RASH_STEEL_TROCK_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_KARUSO_ASSASSIN_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_KARUSO_FIGHTER_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_KARUSO_WIND_MAGICIAN_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_ANGER_SIRAPE_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_TROCK_DOG_BOSS_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_KARUSO_SUPPRESSION_BOSS_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_KARUSO_ASSASSIN_BOSS_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_KARUSO_FIGHTER_BOSS_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_VALENTINE_POISON_CUP_CAKE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_VALENTINE_POISON_CUP_CAKE_KILLER"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_VALENTINE_BOX_MAKER"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_VALENTINE_LOVE_HEART_RED"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_VALENTINE_LOVE_HEART_BLUE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_VALENTINE_DROP_MONSTER1"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_VALENTINE_DROP_MONSTER2"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_VALENTINE_DROP_MONSTER3"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_VALENTINE_DROP_MONSTER4"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_VALENTINE_DROP_MONSTER5"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_SEED_OF_DARK_PORTAL"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GOD_COMMON_TARGET_GATE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GOD_FAIL_COUNT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MOTOR"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_RESTRAINT_SWITCH"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_VEHIMOS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DUMMY_SUMMONER1"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DUMMY_SUMMONER2"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_VEHIMOS_FX"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_VEHIMOS_TRAP"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_TENTACLE_SMALL"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_TENTACLE_BIG"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PHYSIC_TENTACLE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MAGIC_TENTACLE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_TENTACLE_PILLAR_SMALL"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_TENTACLE_PILLAR_BIG"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_VEHIMOS_HEART"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_RED_EGG"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_WALDOMENATION"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_KARIS_JIN"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_CORRUPTION_WIND_EL"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BORN_VEGA_TROCK_SUMMON"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BORN_STEEL_TROCK_SUMMON"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BORN_TROCK_DOG_SUMMON"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_WALDOMENATION_SUMMON"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_TARGETING_CHUNG_NOT_SHOW_OTHER_PLAYER"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_RENA_ANGER_OF_ELF"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PLANT_OVERLOAD_QUEST"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DARK_VEGA_TROCK_SUMMON"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DARK_STONE_AXE_TROCK_SUMMON"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DARK_STEEL_TROCK_SUMMON"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DARK_TROCK_GUARD_SUMMON"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DARK_BUGI_TROCK_SUMMON"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DARK_BOMB_TROCK_SUMMON"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DARK_TROCK_DOG_SUMMON"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MOTOR_SUB"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PHYSIC_TENTACLE_SUMMON"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MAGIC_TENTACLE_SUMMON"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_TENTACLE_PILLAR_SMALL_SUMMON"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_RED_EGG_SUMMON"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_SANTILUS_SHIP_GATE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BEHIMOSS_HEART_GATE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BEHIMOSS_HEART_BOSS_GATE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_TENTACLE_SMALL_2"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_TENTACLE_SMALL_3"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_TENTACLE_SMALL_4"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_TENTACLE_SMALL_5"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_SI_HA_FERDINAND"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DUMMY_SUMMONER1_1"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DUMMY_SUMMONER1_2"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DUMMY_SUMMONER1_3"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DUMMY_SUMMONER2_1"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DARK_VEGA_TROCK_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DARK_STONE_AXE_TROCK_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DARK_STEEL_TROCK_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_ICOOS_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_ANU_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_ERIS_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_ICOOS_BOSS_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_ANU_BOSS_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_ERIS_BOSS_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_WALDOMENATION_CARD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_SSM_HERO_BALAK"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BOMBER_SOCKET"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BRUTAL_WALKER_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BRUTAL_CHARGE_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BRUTAL_TRICKSTER_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BRUTAL_STINGER_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BRUTAL_DEFENDER_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BRUTAL_BOBOSE_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_ANCIENT_MAGMANTA_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BRUTAL_SHADOW_MASTER"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BRUTAL_VICTOR"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DARK_PRIEST"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_HELLPUTT_DARK_ACTOR"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PROTECT_GUARD_PHYSIC_STATUE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PROTECT_GUARD_MAGIC_STATUE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_HAMEL_SUMMON_DUMMY"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BLOODY_RAVEN_GLITER_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BLOODY_RENA_GLITER_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BLOODY_MAGIC_GLITER_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BESMA_SECRET_BESCU_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BESMA_SECRET_SAURUS_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BESMA_SECRET_SPEAR_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BESMA_SECRET_LIZARDMAN_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_TARGETING_HELLPUTT"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_HELLPUTT_DARK_BOSS_HELL"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_HELLPUTT_DARK_BOSS_EXTRA"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_ALTERA_SECRET_DRILLER_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_ALTERA_SECRET_MINER_FAT_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_ALTERA_SECRET_SCORPION_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_ALTERA_SECRET_SHOOTER_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_ALTERA_SECRET_TYPE2_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_HELLPUTT_DARK_BOSS_DP"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_HAMEL_SECRET_MONSTER_GROUP1"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_HAMEL_SECRET_MONSTER_GROUP2"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_HAMEL_SECRET_MONSTER_GROUP3"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_HELLPUTT_DARK_DP_STAGE0"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_HAMEL_SHASHA_SUMMONER"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_HENIR_CUT_REPORTER_SANDER"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_WALDO_TROCK_HENIR"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_HENIR_CUT_REPORTER_HAMEL_DUMMY"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_ELESIS_FIRE_BLOSSOM"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_FIELD_BOSS_IRON_ELTRION"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_FIELD_BOSS_COLLISION_BOX_1"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_FIELD_BOSS_COLLISION_BOX_2"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_FIELD_BOSS_COLLISION_BOX_3"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_FIELD_BOSS_COLLISION_BOX_4"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_FIELD_BOSS_COLLISION_BOX_5"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_UFO_AISHA_DROPPER"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_UFO_AISHA_DROPPER_MEMO"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_EVENT_CRAYON_ELRIN"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_EVENT_MAD_MOON"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_UOOL_FD_BOSS_HALLOWEEN"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_ILLY_FD_BOSS_HALLOWEEN"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_WALLY_ZERO_FD_BOSS_HALLOWEEN"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_VESCOO_FD_BOSS_HALLOWEEN"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_SLESHU_FD_BOSS_HALLOWEEN"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MUTA_FD_BOSS_HALLOWEEN"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_WAMU_FD_BOSS_HALLOWEEN"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BATER_FD_BOSS_HALLOWEEN"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_BLACK_FD_BOSS_HALLOWEEN"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_BLUE_FD_BOSS_HALLOWEEN"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_PINK_FD_BOSS_HALLOWEEN"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_RED_FD_BOSS_HALLOWEEN"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_YELLOW_FD_BOSS_HALLOWEEN"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_LANOS_FD_BOSS_HALLOWEEN"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_SHINEE_FD_BOSS_HALLOWEEN"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MOONSTAR_FD_BOSS_HALLOWEEN"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_STRONE_GOD_FD_BOSS_HALLOWEEN"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_SHADOSS_FD_BOSS_HALLOWEEN"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_KALLVEROS_FD_BOSS_HALLOWEEN"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MAFU_FD_BOSS_HALLOWEEN"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_HAPPY_HALLOWEEN_PUPPET"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_WITCH_PPORU"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_HAPPY_HALLOWEEN_PUPPET_SMALL_FALSE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_HAPPY_HALLOWEEN_PUPPET_SMALL_TRUE"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_HAPPY_HALLOWEEN_DROP_DUMMY1"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_HAPPY_HALLOWEEN_DROP_DUMMY2"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_HAPPY_HALLOWEEN_DROP_DUMMY3"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PVP_EVENT_LOW_1"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PVP_EVENT_LOW_2"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PVP_EVENT_LOW_3"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PVP_EVENT_LOW_4"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PVP_EVENT_LOW_5"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PVP_EVENT_LOW_6"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_PVP_EVENT_LOW_7"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_DUNGEON_NPC_END"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BLOOD_EATER_FD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MANA_EATER_FD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GOLDEN_CHEST_FD"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_UOOL_FD_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_ILLY_FD_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_VESCOO_FD_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_SLESHU_FD_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_BATER_FD_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_LANOS_FD_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_SHINEE_FD_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MOONSTAR_FD_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_STRONE_GOD_FD_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_KALLVEROS_FD_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_WALLY_ZERO_FD_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MUTA_FD_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MUTA_FD_S1"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MUTA_FD_S2"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_WAMU_FD_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_RED_FD_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_BLUE_FD_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_PINK_FD_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_YELLOW_FD_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_GLITER_BLACK_FD_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_SHADOSS_FD_BOSS"] )
g_pAttribNpcManager:AddNoDropNpc( NPC_UNIT_ID["NUI_MAFU_FD_BOSS"] )
