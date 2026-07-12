-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 13,
    m_wstrDescription = "Speak to Cobo Service Representative Ariel.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_ARIEL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 160,
    m_wstrDescription = "Banthus (Tree of El, 'Normal')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 190,
    m_wstrDescription = "Clear Monkey Forest, 'Normal'.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 230,
    m_wstrDescription = "Collect Leaders' Symbols (White Boss Mong).",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 47 },
        m_iCollectionItemID = 90520,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 240,
    m_wstrDescription = "White Mong (East of the Tree of El, 'Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 38 },
        m_iKillNum = 4,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 250,
    m_wstrDescription = "Organic bananas (Monkey King)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 365 },
        m_iCollectionItemID = 90470,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 270,
    m_wstrDescription = "Clear North of the Tree of El, 'Normal'.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 271,
    m_wstrDescription = "Achieve 1 kill in Survival mode in the Battleground. (Training Channel not applicable)",
    m_eClearType = SUB_QUEST_TYPE["SQT_PVP_KILL"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_ePVPType = PVP_GAME_TYPE["PGT_SURVIVAL"],
        m_iPVPKill = 1,
        m_ePvpChannelClass = PVP_CHANNEL_CLASS["PCC_OFFICIAL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 320,
    m_wstrDescription = "Boss Mong (North of the Tree of El)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 353 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 330,
    m_wstrDescription = "Ancient Phoru (North of the Tree of El, 'Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 364 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 331,
    m_wstrDescription = "Clear North of the Tree of El, 'Normal', with Rank B or higher.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_RANK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = True,
        m_eDungeonRank = 4,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 332,
    m_wstrDescription = "Clear North of the Tree of El, 'Hard', with Damage 30 or lower.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_DAMAGE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = True,
        m_iDungeonDamage = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 340,
    m_wstrDescription = "Giant White Phoru (North of the Tree of El, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 134 },
        m_iKillNum = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 341,
    m_wstrDescription = "Toenails of Giant White Phoru (North of the Tree of El, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 134 },
        m_iCollectionItemID = 90490,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 80,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 350,
    m_wstrDescription = "William Phoru (North of the Tree of El, a 'Very Hard' cave)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 26 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 351,
    m_wstrDescription = "Clear North of the Tree of El, 'Hard or higher'",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 360,
    m_wstrDescription = "Clear Shadow Forest, 'Normal'.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30070 },
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 370,
    m_wstrDescription = "Collect poison spores (Poison Mush).",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30070 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 83 },
        m_iCollectionItemID = 90260,
        m_iCollectionItemNum = 3,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 380,
    m_wstrDescription = "Ghost Magician (Shadow Forest, 'Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30071 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 80 },
        m_iKillNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 381,
    m_wstrDescription = "Poisonous Bee (Shadow Forest, 'Normal').",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30070 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 71 },
        m_iKillNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 390,
    m_wstrDescription = "Collect Straws (Ghost Magician).",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30070 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 80 },
        m_iCollectionItemID = 90280,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 80,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 401,
    m_wstrDescription = "Red Ghost Magician (Shadow Forest, 'Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30071 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 98 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 411,
    m_wstrDescription = "Poison Mush (Shadow Forest, 'Normal')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30072 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 83 },
        m_iKillNum = 8,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 420,
    m_wstrDescription = "Mini Ent (Shadow Forest, 'Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30070 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 106 },
        m_iKillNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 500,
    m_wstrDescription = "Ent (Shadow Forest, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30072 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 78 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 511,
    m_wstrDescription = "Clear Shadow Forest, 'Very Hard', with damage 30 or lower.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_DAMAGE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30070 },
        m_bUpperDifficulty = False,
        m_iDungeonDamage = 30,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 520,
    m_wstrDescription = "Clear Banthus Cave, 'Normal', within 10 minutes.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_TIME"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30050 },
        m_bUpperDifficulty = True,
        m_iDungeonClearTime = 600,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 550,
    m_wstrDescription = "Bat King (Banthus Cave, 'Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30050 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 74 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 560,
    m_wstrDescription = "Clear Banthus Cave, 'Very Hard'.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30052 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 570,
    m_wstrDescription = "Bat (Banthus Cave)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30050 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 45 },
        m_iKillNum = 11,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 580,
    m_wstrDescription = "Giant Phoru (Banthus Cave, 'Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30051 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 27 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 590,
    m_wstrDescription = "Clear Banthus Cave, 'Any Difficulty'",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30050 },
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 591,
    m_wstrDescription = "Little Brother (Banthus Cave, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30050 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 43 },
        m_iKillNum = 8,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 600,
    m_wstrDescription = "Clear the Banthus Cave at Hard or higher.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30051 },
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 620,
    m_wstrDescription = "Big Brother (Banthus Cave, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30052 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 44 },
        m_iKillNum = 14,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 640,
    m_wstrDescription = "Hungry Bat (Banthus Cave)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30050 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 46 },
        m_iKillNum = 4,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 650,
    m_wstrDescription = "Collect leather straps (Little Brother,  Big Brother).",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30050 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 43 },
        m_iCollectionItemID = 90200,
        m_iCollectionItemNum = 8,
        m_fQuestItemDropRate = 80,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 660,
    m_wstrDescription = "Clear Banthus Cave, 'Very Hard', with Rank B or higher.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_RANK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30052 },
        m_bUpperDifficulty = False,
        m_eDungeonRank = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 670,
    m_wstrDescription = "Clear Banthus Cave, 'Very Hard', within 20 minutes.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_TIME"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30052 },
        m_bUpperDifficulty = False,
        m_iDungeonClearTime = 1200,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 680,
    m_wstrDescription = "Collect Bat Wings (Elder Dungeon).",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 90170,
        m_iCollectionItemNum = 6,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 700,
    m_wstrDescription = "Clear Underground Waterway, 'Hard or higher'.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30121 },
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 710,
    m_wstrDescription = "Collect steel pieces (Nasod Banthus).",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30120 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 84 },
        m_iCollectionItemID = 91020,
        m_iCollectionItemNum = 2,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 720,
    m_wstrDescription = "Micky (Underground Waterway 'Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30121 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 87 },
        m_iKillNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 730,
    m_wstrDescription = "Clear Underground Waterway, 'Hard or higher', with damage 25 or lower.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_DAMAGE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30121 },
        m_bUpperDifficulty = True,
        m_iDungeonDamage = 20,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 740,
    m_wstrDescription = "Little Soldier (Underground Waterway, 'Normal')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30120 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 75 },
        m_iKillNum = 8,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 750,
    m_wstrDescription = "White Ghost Magician (Underground Waterway, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30122 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 99 },
        m_iKillNum = 15,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 751,
    m_wstrDescription = "Little Soldier (Underground Waterway, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30122 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 75 },
        m_iKillNum = 15,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 760,
    m_wstrDescription = "Clear The Suburbs of Wally's Castle, 'Any Difficulty'",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30110 },
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 770,
    m_wstrDescription = "Clear The Suburbs of Wally's Castle, 'Any Difficulty', within 10 minutes.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_TIME"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30110 },
        m_bUpperDifficulty = True,
        m_iDungeonClearTime = 480,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 771,
    m_wstrDescription = "Clear The Suburbs of Wally's Castle, 'Hard or higher', within 10 minutes.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_TIME"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30111 },
        m_bUpperDifficulty = True,
        m_iDungeonClearTime = 600,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 772,
    m_wstrDescription = "Clear The Suburbs of Wally's Castle, 'Very Hard', within 12 minutes.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_TIME"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30112 },
        m_bUpperDifficulty = False,
        m_iDungeonClearTime = 720,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 780,
    m_wstrDescription = "William Phoru (The Suburbs of Wally's Castle, 'Hard or higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30111 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 85 },
        m_iKillNum = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 781,
    m_wstrDescription = "Bomber Mong (The Suburbs of Wally's Castle)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30110 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 81 },
        m_iKillNum = 15,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 790,
    m_wstrDescription = "Clear Wally's Castle, 'Hard or higher'",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30100 },
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 800,
    m_wstrDescription = "Big Soldier (Wally's Castle, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30100 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 76 },
        m_iKillNum = 8,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 810,
    m_wstrDescription = "Crossbow Soldier (Wally's Castle, 'Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30101 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 77 },
        m_iKillNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 820,
    m_wstrDescription = "Little Soldier (Wally's Castle 'Normal or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30101 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 75 },
        m_iKillNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 830,
    m_wstrDescription = "Wally's Guardian (Wally's Castle, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30102 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 82 },
        m_iKillNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 840,
    m_wstrDescription = "Wally No. 8 (Wally's Castle, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30102 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 79 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 841,
    m_wstrDescription = "Clear Wally's Castle, 'Very Hard'.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30102 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 850,
    m_wstrDescription = "Clear the El Tree Secret Dungeon, 'Any Difficulty'",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33020 },
        m_eDungeonMode = DUNGEON_MODE["DM_SECRET_NORMAL"],
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 900,
    m_wstrDescription = "Scorpions (Dragon Road, 'Hard or higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30140 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 93 },
        m_iKillNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 910,
    m_wstrDescription = "Clear Dragon Road, 'Normalor higher'",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30140 },
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 920,
    m_wstrDescription = "Clear Dragon Road, 'Hard or higher'",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30141 },
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 930,
    m_wstrDescription = "Cactus (Dragon Road ‘Hard or Higher’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30141 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 164 },
        m_iKillNum = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 940,
    m_wstrDescription = "Lizardman (Dragon Road, 'Hard or higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30141 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 91 },
        m_iKillNum = 15,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 950,
    m_wstrDescription = "Wild Honey (Lizardman Saurus, Bethma Lake, ‘Hard or Higher’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30171 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 491 },
        m_iCollectionItemID = 90950,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 960,
    m_wstrDescription = "Assault Honey (Bethma Lake, 'Hard or higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30171 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 150 },
        m_iKillNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 970,
    m_wstrDescription = "Hard Tail (Scorpion)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30140 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 93 },
        m_iCollectionItemID = 90640,
        m_iCollectionItemNum = 6,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 975,
    m_wstrDescription = "Chat with Chacha Buch.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_CHACHABUK"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 980,
    m_wstrDescription = "Dillo's Carapace (Bethma Lake (Night), Dragon Nest)",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 90680,
        m_iCollectionItemNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 990,
    m_wstrDescription = "Lizardman Warrior (Dragon Road, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30142 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 92 },
        m_iKillNum = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1000,
    m_wstrDescription = "Scorpion Poison Extract (Scorpion, Bethma Dungeon)",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 90630,
        m_iCollectionItemNum = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1010,
    m_wstrDescription = "Scorpion King (Dragon Road, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30142 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 120 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1020,
    m_wstrDescription = "Berauk (Bethma Lake, 'Normal')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30170 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 126 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1030,
    m_wstrDescription = "Lizardman Saurus (Bethma Lake)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30170 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 491 },
        m_iKillNum = 12,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1040,
    m_wstrDescription = "Lizardman (Bethma Lake, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30170 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 107 },
        m_iKillNum = 8,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1050,
    m_wstrDescription = "Hypnosis Stone (Bethma Lake, Lizardman, 'Hard' or higher)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30171 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 91, 491, 107 },
        m_iCollectionItemID = 90770,
        m_iCollectionItemNum = 18,
        m_fQuestItemDropRate = 90,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1060,
    m_wstrDescription = "Hypnosis Stone Bag (Berauk, Bethma Lake, 'Hard' or higher)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30171 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 126 },
        m_iCollectionItemID = 90780,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1061,
    m_wstrDescription = "Chat with Toma.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_TOMA"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1070,
    m_wstrDescription = "Collect Slimy Resin (Komodo, Fire Komodo).",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 90730,
        m_iCollectionItemNum = 20,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1090,
    m_wstrDescription = "Collect copies of the Spellbook on Curses (Shaman Lizardman).",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30200 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 107 },
        m_iCollectionItemID = 90760,
        m_iCollectionItemNum = 3,
        m_fQuestItemDropRate = 44,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1095,
    m_wstrDescription = "Chat with Stella.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_STELLA"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1100,
    m_wstrDescription = "Smelly Scales (Lizardman Race)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 91, 92, 107, 108, 115, 116, 126, 168, 169, 170, 488, 491, 492, 493 },
        m_iCollectionItemID = 90700,
        m_iCollectionItemNum = 2,
        m_fQuestItemDropRate = 8,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1110,
    m_wstrDescription = "Clear Bethma Lake (Night), 'Hard or higher' with Rank B",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_RANK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30201 },
        m_bUpperDifficulty = True,
        m_eDungeonRank = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1120,
    m_wstrDescription = "Roots remaining (Komodo)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 489 },
        m_iCollectionItemID = 90660,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 80,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1130,
    m_wstrDescription = "Armadillo (Bethma Lake (Night), 'Hard or higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30201 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 94 },
        m_iKillNum = 6,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1140,
    m_wstrDescription = "Collect slimy resin (Komodo, Fire Komodo)",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 90730,
        m_iCollectionItemNum = 8,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1150,
    m_wstrDescription = "Shadow Warrior (Bethma Lake (Night), 'Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30201 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 488 },
        m_iKillNum = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1160,
    m_wstrDescription = "Shadow Lizardman (Bethma Lake (Night), 'Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30201 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 115 },
        m_iKillNum = 15,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1170,
    m_wstrDescription = "Saurus Supervisor (Bethma Lake (Night), 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30202 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 493 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1180,
    m_wstrDescription = "Warrior's Coat of Arms",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 90740,
        m_iCollectionItemNum = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1220,
    m_wstrDescription = "Blunt Spear Blade (Shadow Lizardman, Bethma Lake (Night))",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 115 },
        m_iCollectionItemID = 90710,
        m_iCollectionItemNum = 7,
        m_fQuestItemDropRate = 70,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1255,
    m_wstrDescription = "Chat with Stella in Bethma Village",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_STELLA"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1260,
    m_wstrDescription = "Berserk Lizardman (Dragon Nest,  'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30180 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 168 },
        m_iKillNum = 16,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1270,
    m_wstrDescription = "Berserk Shaman Lizardman",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30180 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 169 },
        m_iKillNum = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1280,
    m_wstrDescription = "Win Team Match in the Battleground. (Training Channel not applicable)",
    m_eClearType = SUB_QUEST_TYPE["SQT_PVP_WIN"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_ePVPType = PVP_GAME_TYPE["PGT_TEAM"],
        m_iPVPWin = 10,
        m_ePvpChannelClass = PVP_CHANNEL_CLASS["PCC_NONE"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1290,
    m_wstrDescription = "Clear Dragon Nest, 'Hard', with 60 damage or lower.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_DAMAGE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30181 },
        m_bUpperDifficulty = True,
        m_iDungeonDamage = 60,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1300,
    m_wstrDescription = "Clear Dragon Nest, 'Very Hard', within 15 minutes.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_TIME"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30182 },
        m_bUpperDifficulty = False,
        m_iDungeonClearTime = 900,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1301,
    m_wstrDescription = "Totem (Bethma Lake (Night) ‘Hard of Higher’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30201 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 144 },
        m_iKillNum = 6,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1310,
    m_wstrDescription = "Fire Komodo (Dragon Nest ‘Hard or Higher’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30181 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 490 },
        m_iKillNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1320,
    m_wstrDescription = "Flame Scorpion (Dragon Nest ‘Hard or Higher’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30181 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 113 },
        m_iKillNum = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1330,
    m_wstrDescription = "Stinky Scales (Berserk Lizardman, Bethma Dungeon)",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 90940,
        m_iCollectionItemNum = 6,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1340,
    m_wstrDescription = "Flame Bat (Dragon Nest, 'Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30181 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 166 },
        m_iKillNum = 8,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1350,
    m_wstrDescription = "Berserk Lizardman (Dragon Nest, 'Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30181 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 168 },
        m_iKillNum = 16,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1360,
    m_wstrDescription = "Berserk Shaman Lizardman (Dragon Nest, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30182 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 169 },
        m_iKillNum = 16,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1370,
    m_wstrDescription = "Win Team Death Match (Training Channel not applicable)",
    m_eClearType = SUB_QUEST_TYPE["SQT_PVP_WIN"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_ePVPType = PVP_GAME_TYPE["PGT_TEAM_DEATH"],
        m_iPVPWin = 12,
        m_ePvpChannelClass = PVP_CHANNEL_CLASS["PCC_NONE"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1380,
    m_wstrDescription = "Burned tree roots (Fire Komodo)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 490 },
        m_iCollectionItemID = 90670,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 60,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1400,
    m_wstrDescription = "Curse Spellbook Bundle (Kayak the Shaman)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30182 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 108 },
        m_iCollectionItemID = 90761,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 85,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1401,
    m_wstrDescription = "Curse Spellbook Bundle (Kayak the Shaman)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30182 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 108 },
        m_iCollectionItemID = 90762,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 85,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1402,
    m_wstrDescription = "Curse Spellbook Bundle (Kayak the Shaman)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30182 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 108 },
        m_iCollectionItemID = 90763,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 85,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1403,
    m_wstrDescription = "Curse Spellbook Bundle (Kayak the Shaman)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30182 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 108 },
        m_iCollectionItemID = 90764,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 85,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1410,
    m_wstrDescription = "Clear Richie Mine Entrance, 'Normal'.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30210 },
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1420,
    m_wstrDescription = "Nasod Miner (Richie Mine Entrance, 'Normal')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30210 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 119 },
        m_iKillNum = 30,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1430,
    m_wstrDescription = "Nasod Nickel (Nasod Miner, Nasod Driller)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30210 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 110 },
        m_iCollectionItemID = 90960,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 80,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1440,
    m_wstrDescription = "Defective Flash (Nasod Miner, Nasod Miner)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 119 },
        m_iCollectionItemID = 90800,
        m_iCollectionItemNum = 16,
        m_fQuestItemDropRate = 30,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1450,
    m_wstrDescription = "Nasod Healer (Richie Mine Entrance, 'Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30211 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 104 },
        m_iKillNum = 7,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1460,
    m_wstrDescription = "Life Fog Bag (Bethma Dungeon)",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 90790,
        m_iCollectionItemNum = 15,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1470,
    m_wstrDescription = "Nasod Miner Supervisor (Richie Mine Entrance, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30212 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 178 },
        m_iKillNum = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1490,
    m_wstrDescription = "Nasod Driller (Richie Mine Entrance, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30212 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 151 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1491,
    m_wstrDescription = "Sharp drills (Nasod Driller)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30210 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 151 },
        m_iCollectionItemID = 90910,
        m_iCollectionItemNum = 2,
        m_fQuestItemDropRate = 75,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1500,
    m_wstrDescription = "Clear Richie Mine -Mining Area- 'Normal'.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30210 },
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1510,
    m_wstrDescription = "Collect nuts (Nasod Excavator D-2).",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 111 },
        m_iCollectionItemID = 90840,
        m_iCollectionItemNum = 4,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1520,
    m_wstrDescription = "Collect bolts (Nasod Excavator D-2).",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 111 },
        m_iCollectionItemID = 90860,
        m_iCollectionItemNum = 5,
        m_fQuestItemDropRate = 60,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1530,
    m_wstrDescription = "Fine bolts (Nasod Excavator D-3)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30210 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 112 },
        m_iCollectionItemID = 90850,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1540,
    m_wstrDescription = "Nasod Transporter (-Mining Area-, 'Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30211 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 127 },
        m_iKillNum = 16,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1541,
    m_wstrDescription = "Nasod Excavator D-3 (-Mining Area-, 'Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30210 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 112 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1550,
    m_wstrDescription = "Nasod Excavator D-2 (-Mining Area-, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30212 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 111 },
        m_iKillNum = 15,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1560,
    m_wstrDescription = "Broken Belt (Nasod Excavator D-2)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30190 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 111 },
        m_iCollectionItemID = 90830,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 80,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1561,
    m_wstrDescription = "Nasod Healer (Richie Mine Entrance ‘Hard or Higher’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30211 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 104 },
        m_iKillNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1570,
    m_wstrDescription = "Wally No. 8 Booster (Wally No. 8 Mk2)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30210 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 109 },
        m_iCollectionItemID = 90870,
        m_iCollectionItemNum = 2,
        m_fQuestItemDropRate = 80,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1580,
    m_wstrDescription = "Wally No. 8 Mk2 (-Mining Area- 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30212 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 109 },
        m_iKillNum = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1600,
    m_wstrDescription = "Enhanced Nasod Miner (Cargo Airship, 'Normal')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30190 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 173 },
        m_iKillNum = 15,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1610,
    m_wstrDescription = "Cemented carbide (Enhanced Nasod Miner)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30190 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 173 },
        m_iCollectionItemID = 90880,
        m_iCollectionItemNum = 16,
        m_fQuestItemDropRate = 70,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1620,
    m_wstrDescription = "Nasod Bee (Cargo Airship, 'Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30191 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 125 },
        m_iKillNum = 15,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1630,
    m_wstrDescription = "Nasod Bee Battery (Nasod Bee)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30190 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 125 },
        m_iCollectionItemID = 90900,
        m_iCollectionItemNum = 18,
        m_fQuestItemDropRate = 80,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1640,
    m_wstrDescription = "Nasod Excavator SD-2 (Cargo Airship 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30191 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 175 },
        m_iKillNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1650,
    m_wstrDescription = "Plastic Wing (Nasod Bee)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30190 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 125 },
        m_iCollectionItemID = 90890,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 80,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1660,
    m_wstrDescription = "Wally No. 9 (Cargo Airship, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30192 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 171 },
        m_iKillNum = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1670,
    m_wstrDescription = "Clear Cargo Airship, 'Very Hard'.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30192 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 1680,
    m_wstrDescription = "Nasod Healer (Cargo Airship, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30192 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 104 },
        m_iKillNum = 28,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2260,
    m_wstrDescription = "A Life Fog Bag (Bethma Dungeon)",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 90790,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2270,
    m_wstrDescription = "Clear the Black Crow at Rank B or higher.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_RANK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30240 },
        m_bUpperDifficulty = True,
        m_eDungeonRank = 0,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2280,
    m_wstrDescription = "Black Crow Marks (Black Crow Sniper, The Black Crow, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30240 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 204 },
        m_iCollectionItemID = 91080,
        m_iCollectionItemNum = 8,
        m_fQuestItemDropRate = 80,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2290,
    m_wstrDescription = "Defeat Black Crow Engineer (The Black Crow, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30240 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 202 },
        m_iKillNum = 26,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2300,
    m_wstrDescription = "Defeat Black Crow Snipers. (The Black Crow 'Hard or higher)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30241 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 204 },
        m_iKillNum = 14,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2310,
    m_wstrDescription = "Defeat Black Crow Gladiator. (The Black Crow 'Very Hard)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30242 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 205 },
        m_iKillNum = 13,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2320,
    m_wstrDescription = "Steel Wrenches (From Black Crow Engineers, The Black Crow 'Hard or higher)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30240 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 202 },
        m_iCollectionItemID = 91040,
        m_iCollectionItemNum = 11,
        m_fQuestItemDropRate = 80,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2330,
    m_wstrDescription = "Black Chain Necklaces (From Black Crow Gladiator, The Black Crow 'Very Hard)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30240 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 203 },
        m_iCollectionItemID = 91090,
        m_iCollectionItemNum = 6,
        m_fQuestItemDropRate = 70,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2350,
    m_wstrDescription = "Clear the Black Crow at Hard or higher in 10 minutes.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_TIME"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30241 },
        m_bUpperDifficulty = True,
        m_iDungeonClearTime = 600,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2360,
    m_wstrDescription = "Clear the Black Crow at Very Hard or higher in 10 minutes.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_TIME"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30242 },
        m_bUpperDifficulty = False,
        m_iDungeonClearTime = 660,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2370,
    m_wstrDescription = "Rations (From Black Crow Gladiator The Black Crow 'Hard or higher)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30240 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 205 },
        m_iCollectionItemID = 91060,
        m_iCollectionItemNum = 6,
        m_fQuestItemDropRate = 60,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2380,
    m_wstrDescription = "Raven Crow Swordsmen. (The Black Crow 'Very Hard)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30242 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 238 },
        m_iKillNum = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2390,
    m_wstrDescription = "Clear the Return Plains, 'Normal', with damage 30 or lower.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_DAMAGE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30250 },
        m_bUpperDifficulty = True,
        m_iDungeonDamage = 30,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2400,
    m_wstrDescription = "Collect burners (Corrupt Nasod Miner).",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30250 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 196 },
        m_iCollectionItemID = 91100,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 80,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2410,
    m_wstrDescription = "Gas Mask Filters (Black Crow Sniper, Return Plains, ‘Hard or Higher’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30251 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 204 },
        m_iCollectionItemID = 91110,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2420,
    m_wstrDescription = "Clear the Return Plains, 'Hard', with Rank A or higher.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_RANK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30250 },
        m_bUpperDifficulty = True,
        m_eDungeonRank = 6,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2430,
    m_wstrDescription = "Deliver the Elevator Schematic to Amos in Altera Village.",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 91120,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2440,
    m_wstrDescription = "Collect Motor Parts (Nasod Gardener TYPE-F).",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30250 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 149 },
        m_iCollectionItemID = 91130,
        m_iCollectionItemNum = 6,
        m_fQuestItemDropRate = 80,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2450,
    m_wstrDescription = "Collect special steel plates (Corrupt Nasod Miner).",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30250 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 196 },
        m_iCollectionItemID = 91140,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 70,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2460,
    m_wstrDescription = "Remove Nasod Scouter  TYPE-L.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30250 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 200 },
        m_iKillNum = 23,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2470,
    m_wstrDescription = "Remove Driller Cannons.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30250 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 198 },
        m_iKillNum = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2480,
    m_wstrDescription = "Collect pollutant samples (Corrupt Nasod Miner).",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30250 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 196 },
        m_iCollectionItemID = 91150,
        m_iCollectionItemNum = 32,
        m_fQuestItemDropRate = 70,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2490,
    m_wstrDescription = "Collect Corrupt Nasod Miners.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30250 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 196 },
        m_iKillNum = 27,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2500,
    m_wstrDescription = "Remove Driller Cannons.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30250 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 198 },
        m_iKillNum = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2540,
    m_wstrDescription = "Clear Transporting Tunnel B4-1, 'Normal'.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_RANK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30260 },
        m_bUpperDifficulty = True,
        m_eDungeonRank = 0,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2550,
    m_wstrDescription = "Remove sonic bats.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30260 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 220 },
        m_iKillNum = 6,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2560,
    m_wstrDescription = "Ultrasonic Nose (Sonic Bat, Transporting Tunnel B4-1, ‘Hard or Higher’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30261 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 220 },
        m_iCollectionItemID = 91170,
        m_iCollectionItemNum = 5,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2570,
    m_wstrDescription = "Collect polluted circuits.",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30260 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 237 },
        m_iCollectionItemID = 91180,
        m_iCollectionItemNum = 14,
        m_fQuestItemDropRate = 70,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2580,
    m_wstrDescription = "Collect regenerated spore powder.",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30260 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 221 },
        m_iCollectionItemID = 91200,
        m_iCollectionItemNum = 5,
        m_fQuestItemDropRate = 70,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2590,
    m_wstrDescription = "Remove Alterasia Spores.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30260 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 229 },
        m_iKillNum = 14,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2600,
    m_wstrDescription = "Remove Earthen Armadillos.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30260 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 219 },
        m_iKillNum = 18,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2610,
    m_wstrDescription = "Remove Alterasia petals.",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30260 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 229 },
        m_iCollectionItemID = 91160,
        m_iCollectionItemNum = 6,
        m_fQuestItemDropRate = 80,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2620,
    m_wstrDescription = "Collect Roots of Control.",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30260 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 222 },
        m_iCollectionItemID = 91210,
        m_iCollectionItemNum = 2,
        m_fQuestItemDropRate = 70,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2630,
    m_wstrDescription = "Remove Alterasia Port. ",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30260 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 222 },
        m_iKillNum = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2740,
    m_wstrDescription = "Clear the Altera Plains, 'Normal'.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30270 },
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2750,
    m_wstrDescription = "Chat with Agatha.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_AGATHA"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2760,
    m_wstrDescription = "Collect fine clockwork devices (Nasod Oro).",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30270 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 253 },
        m_iCollectionItemID = 91240,
        m_iCollectionItemNum = 15,
        m_fQuestItemDropRate = 70,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2770,
    m_wstrDescription = "Remove Nasod Oro.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30270 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 253 },
        m_iKillNum = 15,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2780,
    m_wstrDescription = "Clear Altera Plains ‘Hard or Higher’ within 8 minutes",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_TIME"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30271 },
        m_bUpperDifficulty = True,
        m_iDungeonClearTime = 480,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2790,
    m_wstrDescription = "Collect Nasod Traces (Nasod Scorpion).",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30270 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 251 },
        m_iCollectionItemID = 91030,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 70,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2800,
    m_wstrDescription = "Clear the Altera Plains, 'Very Hard', with damage 40 or lower.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_DAMAGE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30272 },
        m_bUpperDifficulty = False,
        m_iDungeonDamage = 40,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2801,
    m_wstrDescription = "Collect steel tails.",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30270 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 251 },
        m_iCollectionItemID = 91220,
        m_iCollectionItemNum = 30,
        m_fQuestItemDropRate = 80,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2810,
    m_wstrDescription = "Remove Electrifying Tongs.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30270 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 252 },
        m_iKillNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2820,
    m_wstrDescription = "Remove Ignis.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30270 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 233 },
        m_iKillNum = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2830,
    m_wstrDescription = "Remove Leviathan.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30270 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 232 },
        m_iKillNum = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2840,
    m_wstrDescription = "Collect green moss (Nasod Scorpion).",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30270 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 251 },
        m_iCollectionItemID = 91230,
        m_iCollectionItemNum = 13,
        m_fQuestItemDropRate = 40,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2890,
    m_wstrDescription = "Clear Nasod Foundry, 'Normal'.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30280 },
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2900,
    m_wstrDescription = "Remove Nasod Manufacturing Machines.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30280 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 255 },
        m_iKillNum = 6,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2910,
    m_wstrDescription = "Collect Ponggo's Popgun Components (Nasod Guard: Cannon, Nasod Foundry, ‘Hard or Higher’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30281 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 194 },
        m_iCollectionItemID = 91250,
        m_iCollectionItemNum = 25,
        m_fQuestItemDropRate = 80,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2920,
    m_wstrDescription = "Clear Nasod Foundry, 'Normal', within 5 minutes and 30 seconds.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_TIME"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30280 },
        m_bUpperDifficulty = True,
        m_iDungeonClearTime = 450,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2930,
    m_wstrDescription = "Clear Nasod Foundry, 'Hard', within 7 minutes and 30 seconds.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_TIME"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30280 },
        m_bUpperDifficulty = True,
        m_iDungeonClearTime = 540,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2940,
    m_wstrDescription = "Collect components of Chaotic Wave Devices.",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30280 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 195 },
        m_iCollectionItemID = 91260,
        m_iCollectionItemNum = 8,
        m_fQuestItemDropRate = 80,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2950,
    m_wstrDescription = "Remove Nasod Guards.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30280 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 195 },
        m_iKillNum = 28,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2960,
    m_wstrDescription = "Collect Attack Control Chips.",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30280 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 259 },
        m_iCollectionItemID = 91270,
        m_iCollectionItemNum = 30,
        m_fQuestItemDropRate = 80,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2970,
    m_wstrDescription = "Remove Nasod Scorpion King.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30280 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 193 },
        m_iKillNum = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 2980,
    m_wstrDescription = "Remove Crow Riders",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30280 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 261 },
        m_iKillNum = 4,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 3100,
    m_wstrDescription = "Chat with Amos.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_AMOS"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 3110,
    m_wstrDescription = "Clear Altera Core, 'Normal', with damage 50 or lower.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_DAMAGE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30300 },
        m_bUpperDifficulty = True,
        m_iDungeonDamage = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 3120,
    m_wstrDescription = "Nasod Blader (Altera Core)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30300 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 260 },
        m_iKillNum = 15,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 3121,
    m_wstrDescription = "Nasod Guards TYPE ICE (Altera Core)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30300 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 337 },
        m_iKillNum = 30,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 3122,
    m_wstrDescription = "Nasod Guards TYPE W9 (Altera Core)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30300 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 259 },
        m_iKillNum = 30,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 3130,
    m_wstrDescription = "Clear Altera Core, 'Normal'.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30300 },
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 3140,
    m_wstrDescription = "Clear Altera Core, 'Hard'.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30300 },
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 3150,
    m_wstrDescription = "Collect High quality Cannon Cylinders (Altera Core, 'Hard').",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30300 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 336 },
        m_iCollectionItemID = 91290,
        m_iCollectionItemNum = 15,
        m_fQuestItemDropRate = 70,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 3170,
    m_wstrDescription = "Collect Fire Nasod's Crystal (Ignis, Altera Core).",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 91310,
        m_iCollectionItemNum = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 3180,
    m_wstrDescription = "Collect Water Nasod's Crystal (Leviathan, Altera Core).",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 91320,
        m_iCollectionItemNum = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 3190,
    m_wstrDescription = "Clear Altera Core, 'Very Hard'.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30302 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 3200,
    m_wstrDescription = "Collect High quality Shield (Altera Core, 'Very Hard').",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30302 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 339 },
        m_iCollectionItemID = 91300,
        m_iCollectionItemNum = 30,
        m_fQuestItemDropRate = 70,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 3210,
    m_wstrDescription = "The red El Energy Extractor (Altera Core, 'Hard' or higher)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30301 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 326 },
        m_iKillNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 3220,
    m_wstrDescription = "The green El Energy Extractor (Altera Core, 'Hard' or higher)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30301 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 327 },
        m_iKillNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 3230,
    m_wstrDescription = "Clear Altera Core ‘Hard’ within 20 minutes",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_TIME"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30301 },
        m_bUpperDifficulty = True,
        m_iDungeonClearTime = 1200,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 3240,
    m_wstrDescription = "Destroy the El Energy Extractor -Fire- (Altera Core, 'Hard' or higher).",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30301 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 332 },
        m_iKillNum = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 3241,
    m_wstrDescription = "Destroy the El Energy Extractor -Water- (Altera Core, 'Hard' or higher).",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30301 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 333 },
        m_iKillNum = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 3250,
    m_wstrDescription = "Destroy the Powertrain of King Nasod (Altera Core, 'Very Hard').",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30302 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 338 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 3260,
    m_wstrDescription = "Destroy King Nasod (Altera Core, 'Very Hard').",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30302 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 338 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 4120,
    m_wstrDescription = "Clear Shrine Entrance, 'Normal'.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32600 },
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 4130,
    m_wstrDescription = "Lantern Fly (Shrine of Dedication Entrance, ‘Any Difficulty’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 91530,
        m_iCollectionItemNum = 8,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 4140,
    m_wstrDescription = "Shrine Entrance, 'Normal', hunt Glitter Archers.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32600 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 358 },
        m_iKillNum = 18,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 4141,
    m_wstrDescription = "Shrine Entrance, 'Normal', hunt Glitter spearmen.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32600 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 357 },
        m_iKillNum = 15,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 4150,
    m_wstrDescription = "Clear Spiral Corridor, 'Normal'.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32700 },
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 4160,
    m_wstrDescription = "Spiral Corridor, 'Normal', hunt Glitter spearmen and shieldmen.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32700 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 357 },
        m_iKillNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 4161,
    m_wstrDescription = "Spiral Corridor, 'Normal', hunt Glitter spearmen and shieldmen.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32700 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 356 },
        m_iKillNum = 8,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 4170,
    m_wstrDescription = "Collect Rough Stone Pieces (Golem monsters from Feita region)",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 91540,
        m_iCollectionItemNum = 13,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 4180,
    m_wstrDescription = "Shrine Entrance, 'Hard',_hunt Golems.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32601 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 379 },
        m_iKillNum = 22,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 4190,
    m_wstrDescription = "Collect Passable Spear Blade (Glitter Spearmen from Feita region)",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 91560,
        m_iCollectionItemNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 4200,
    m_wstrDescription = "Clear Shrine Entrance, 'Hard'.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32600 },
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 4210,
    m_wstrDescription = "Shrine Entrance, 'Hard', hunt Glitter Necromancy.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32600 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 360 },
        m_iKillNum = 15,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 4220,
    m_wstrDescription = "Shrine Entrance, 'Hard', Hunt Durahan Knight.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32601 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 381 },
        m_iKillNum = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 4230,
    m_wstrDescription = "Clear Spiral Corridor, 'Hard'.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32701 },
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 4240,
    m_wstrDescription = "Collect Bravery of the Soul (Glitter Necromancers from Feita region)",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 91550,
        m_iCollectionItemNum = 7,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 4250,
    m_wstrDescription = "Spiral Corridor, 'Hard', hunt Golems.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32701 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 379 },
        m_iKillNum = 20,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 4260,
    m_wstrDescription = "Spiral Corridor, 'Hard', Dungeon Damage.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_DAMAGE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32701 },
        m_bUpperDifficulty = True,
        m_iDungeonDamage = 30,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 4270,
    m_wstrDescription = "Spiral Corridor, 'Hard', Hunt Teach the Tyrant.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32701 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 380 },
        m_iKillNum = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 4280,
    m_wstrDescription = "Clear Shrine Entrance, 'Very Hard'.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32600 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 4290,
    m_wstrDescription = "Clear Shrine of Dedication Entrance ‘Hard’ within 8 minutes",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_TIME"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32601 },
        m_bUpperDifficulty = True,
        m_iDungeonClearTime = 480,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 4300,
    m_wstrDescription = "Shrine Entrance, 'Very Hard', Rank.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_RANK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32602 },
        m_bUpperDifficulty = False,
        m_eDungeonRank = 6,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 4310,
    m_wstrDescription = "Shrine Entrance, 'Very Hard', collect Durahans.",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32602 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 381 },
        m_iCollectionItemID = 91570,
        m_iCollectionItemNum = 3,
        m_fQuestItemDropRate = 70,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 4320,
    m_wstrDescription = "Shrine Entrance, 'Very Hard', collect Golems.",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32602 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 379 },
        m_iCollectionItemID = 91580,
        m_iCollectionItemNum = 22,
        m_fQuestItemDropRate = 70,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 4330,
    m_wstrDescription = "Clear Spiral Corridor, 'Very Hard'.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32702 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 4340,
    m_wstrDescription = "Spiral Corridor, 'Very Hard', collect hammer soldiers.",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32700 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 358 },
        m_iCollectionItemID = 91600,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 70,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 4350,
    m_wstrDescription = "Clear Spiral Corridor ‘Hard’ within 8 minutes",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_TIME"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32701 },
        m_bUpperDifficulty = True,
        m_iDungeonClearTime = 480,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 4360,
    m_wstrDescription = "Spiral Corridor, 'Very Hard', Rank.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_RANK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32702 },
        m_bUpperDifficulty = False,
        m_eDungeonRank = 6,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 4370,
    m_wstrDescription = "Spiral Corridor, 'Very Hard', collect Teach.",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32702 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 380 },
        m_iCollectionItemID = 91590,
        m_iCollectionItemNum = 3,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 4450,
    m_wstrDescription = "Chat with Echo of Elder Village.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_ECHO"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 4800,
    m_wstrDescription = "Chat with Hoffman of Elder Village.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_HOFMANN"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5130,
    m_wstrDescription = "Jango (The Suburbs of Wally's Castle)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30110 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 117 },
        m_iKillNum = 18,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5140,
    m_wstrDescription = "Banthus Cave, hunt 8 Giant Brothers.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30050 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 97 },
        m_iKillNum = 8,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5150,
    m_wstrDescription = "Chat with Luichel.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_LUICHEL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5160,
    m_wstrDescription = "Clear the Banthus Cave at Very Hard within 8 minutes.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_TIME"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30052 },
        m_bUpperDifficulty = False,
        m_iDungeonClearTime = 480,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5170,
    m_wstrDescription = "Clear Underground Waterway, 'Hard', within 10 minutes.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_TIME"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30121 },
        m_bUpperDifficulty = True,
        m_iDungeonClearTime = 600,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5180,
    m_wstrDescription = "Clear Wally's Castle, 'Hard', with Rank B.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_RANK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30101 },
        m_bUpperDifficulty = True,
        m_eDungeonRank = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5190,
    m_wstrDescription = "Hungry Bat (Banthus Cave, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 46 },
        m_iKillNum = 6,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5191,
    m_wstrDescription = "Collect Poison Bee' Wing (Poisonous Bee, Shadow Forest).",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 71 },
        m_iCollectionItemID = 90570,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 80,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5192,
    m_wstrDescription = "Bat King (In the Banthus Cave at Hard or higher)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30051 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 74 },
        m_iKillNum = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5200,
    m_wstrDescription = "Exequator of Velder Principality (Wally's Guardian, Wally's Castle, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30102 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 82 },
        m_iCollectionItemID = 91680,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 7,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5210,
    m_wstrDescription = "Clear Underground Waterway, 'Hard', within 10 minutes.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_TIME"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30121 },
        m_bUpperDifficulty = True,
        m_iDungeonClearTime = 600,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5220,
    m_wstrDescription = "Collect magic crystals (Ghost Magician, Shadow Forest).",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30070 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 80 },
        m_iCollectionItemID = 91700,
        m_iCollectionItemNum = 30,
        m_fQuestItemDropRate = 60,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5221,
    m_wstrDescription = "Collect Dead Tree Pieces (White Ghost Magician, Underground Waterway).",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30120 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 99 },
        m_iCollectionItemID = 91690,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 30,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5222,
    m_wstrDescription = "5 Intermediate Mana Potions",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 77180,
        m_iCollectionItemNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5230,
    m_wstrDescription = "Clear Wally's Castle, 'Hard', with Rank B.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_RANK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30101 },
        m_bUpperDifficulty = True,
        m_eDungeonRank = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5240,
    m_wstrDescription = "Exequator of Velder Principality (Wally's Guardian, Wally's Castle, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30102 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 82 },
        m_iCollectionItemID = 91680,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 7,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5250,
    m_wstrDescription = "Clear The Suburbs of Wally's Castle, 'Hard', with Rank B.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_RANK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30111 },
        m_bUpperDifficulty = True,
        m_eDungeonRank = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5260,
    m_wstrDescription = "Collect Runic Power Crystal (Kira-Kira, Shadow Forest 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30072 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 208 },
        m_iCollectionItemID = 91700,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5270,
    m_wstrDescription = "Collect special bolt (Wally No. 8, Wally's Castle).",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30100 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 79 },
        m_iCollectionItemID = 91710,
        m_iCollectionItemNum = 2,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5271,
    m_wstrDescription = "Collect special nut (Nasod Banthus, Underground Waterway).",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30120 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 84 },
        m_iCollectionItemID = 91720,
        m_iCollectionItemNum = 2,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5280,
    m_wstrDescription = "Collect magic crystals (Ghost Magician, Shadow Forest).",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30070 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 80 },
        m_iCollectionItemID = 91700,
        m_iCollectionItemNum = 30,
        m_fQuestItemDropRate = 60,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5281,
    m_wstrDescription = "Collect Dead Tree Pieces (White Ghost Magician, Underground Waterway).",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30120 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 99 },
        m_iCollectionItemID = 91690,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 25,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5282,
    m_wstrDescription = "5 Intermediate Mana Potions",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 77180,
        m_iCollectionItemNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5290,
    m_wstrDescription = "Collect Pocket Phoru's horns (Pocket Phoru, a dungeon in Elder)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30052 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 27 },
        m_iCollectionItemID = 90250,
        m_iCollectionItemNum = 2,
        m_fQuestItemDropRate = 70,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5291,
    m_wstrDescription = "1 Alchemy Essence",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 91630,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5300,
    m_wstrDescription = "High-Quality Lubricant (Crossbow Soldier, Wally's Castle)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30100 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 77 },
        m_iCollectionItemID = 91730,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 8,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5310,
    m_wstrDescription = "Clear Banthus Cave, 'Hard', with damage 20 or lower.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_DAMAGE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30050 },
        m_bUpperDifficulty = True,
        m_iDungeonDamage = 20,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5320,
    m_wstrDescription = "Chat with Echo.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_ECHO"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5330,
    m_wstrDescription = "Clear Wally's Castle, 'Hard', with Rank B.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_RANK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30101 },
        m_bUpperDifficulty = True,
        m_eDungeonRank = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5340,
    m_wstrDescription = "Collect Bat Teeth. (From Bats in the Banthus Cave)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30050 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 45 },
        m_iCollectionItemID = 90160,
        m_iCollectionItemNum = 15,
        m_fQuestItemDropRate = 90,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5341,
    m_wstrDescription = "1 Alchemy Essence",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 91630,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5350,
    m_wstrDescription = "Clear Banthus Cave, 'Hard', with damage 20 or lower.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_DAMAGE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30051 },
        m_bUpperDifficulty = True,
        m_iDungeonDamage = 20,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5360,
    m_wstrDescription = "Chat with Hoffman.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_HOFMANN"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5370,
    m_wstrDescription = "William (The Suburbs of Wally's Castle)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30110 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 86 },
        m_iKillNum = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5380,
    m_wstrDescription = "Collect bats' wings (Elder Dungeon).",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 90170,
        m_iCollectionItemNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5381,
    m_wstrDescription = "Collect Micky's tails (Micky, Underground Waterway).",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30120 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 87 },
        m_iCollectionItemID = 91740,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 80,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5390,
    m_wstrDescription = "Chat with Hoffman.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_HOFMANN"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5400,
    m_wstrDescription = "Wisp (Shadow Forest)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30070 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 141 },
        m_iKillNum = 15,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5410,
    m_wstrDescription = "Chat with Lenphad.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_LENPAD"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5420,
    m_wstrDescription = "High-quality lubricant (Crossbow Soldier, Wally's Castle)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30100 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 77 },
        m_iCollectionItemID = 91730,
        m_iCollectionItemNum = 2,
        m_fQuestItemDropRate = 4,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5430,
    m_wstrDescription = "Poison Mush (Shadow Forest'Normal')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30070 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 83 },
        m_iKillNum = 6,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5440,
    m_wstrDescription = "Clear The Suburbs of Wally's Castle with Rank B.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_RANK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30112 },
        m_bUpperDifficulty = True,
        m_eDungeonRank = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5441,
    m_wstrDescription = "Clear The Suburbs of Wally's Castle with Rank B.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_RANK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30102 },
        m_bUpperDifficulty = True,
        m_eDungeonRank = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5450,
    m_wstrDescription = "Chat with Luichel.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_LUICHEL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5460,
    m_wstrDescription = "Giant Brother (Banthus Cave)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30050 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 97 },
        m_iKillNum = 8,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5461,
    m_wstrDescription = "Bat King (In the Banthus Cave at Hard or higher)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30051 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 74 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5470,
    m_wstrDescription = "Clear Wally's Castle, 'Normal', within 8 minutes.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_TIME"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30100 },
        m_bUpperDifficulty = True,
        m_iDungeonClearTime = 480,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5480,
    m_wstrDescription = "Clear The Suburbs of Wally's Castle, 'Normal', with Rank A.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_RANK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30110 },
        m_bUpperDifficulty = True,
        m_eDungeonRank = 6,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5490,
    m_wstrDescription = "Jango (The Suburbs of Wally's Castle)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30110 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 117 },
        m_iKillNum = 18,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5500,
    m_wstrDescription = "Chat with Echo.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_ECHO"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5510,
    m_wstrDescription = "Banthus Bandit's Secret Letter (Big Brother, Banthus Cave)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30050 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 44 },
        m_iCollectionItemID = 91750,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 6,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5520,
    m_wstrDescription = "Clear Shadow Forest, 'Very Hard', within 7 minutes.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_TIME"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30071 },
        m_bUpperDifficulty = False,
        m_iDungeonClearTime = 420,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5530,
    m_wstrDescription = "Chat with Lenphad.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_LENPAD"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5540,
    m_wstrDescription = "Epaulettes of the Velder Knights (Little Soldier, Underground Waterway)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30120 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 75 },
        m_iCollectionItemID = 91350,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 40,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5550,
    m_wstrDescription = "The Velder Knight's Ceremonial Sword(William Phoru, The Suburbs of Wally's Castle, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30112 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 86 },
        m_iCollectionItemID = 91390,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 60,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5560,
    m_wstrDescription = "Velder Knight Fencing Manual (Wally's Guardian, Wally's Castle 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 82 },
        m_iCollectionItemID = 91370,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 4,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5570,
    m_wstrDescription = "Cave Melon (Bat, Banthus Cave)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30050 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 45 },
        m_iCollectionItemID = 91660,
        m_iCollectionItemNum = 4,
        m_fQuestItemDropRate = 20,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5580,
    m_wstrDescription = "Epaulettes of the Velder Knights (Little Soldier, Underground Waterway)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30120 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 75 },
        m_iCollectionItemID = 91350,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 90,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5581,
    m_wstrDescription = "Banthus Nasod Arm (Nasod Banthus, Underground Waterway, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30122 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 84 },
        m_iCollectionItemID = 91360,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 70,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5582,
    m_wstrDescription = "30 Metal Pieces (Dismantle Lv.1~20 items)",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 99799,
        m_iCollectionItemNum = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5590,
    m_wstrDescription = "Wally No. 8 Control Chip (Wally No. 8, Wally's Castle, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30102 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 79 },
        m_iCollectionItemID = 91380,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 90,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5600,
    m_wstrDescription = "Chat with Echo.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_ECHO"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5610,
    m_wstrDescription = "William (The Suburbs of Wally's Castle)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30110 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 86 },
        m_iKillNum = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5620,
    m_wstrDescription = "Collect Runic Power Crystal (Kira-Kira, Shadow Forest 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30072 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 208 },
        m_iCollectionItemID = 91700,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5630,
    m_wstrDescription = "Clear Banthus Cave, 'Hard', with Rank B or higher.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_RANK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30051 },
        m_bUpperDifficulty = True,
        m_eDungeonRank = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5640,
    m_wstrDescription = "Chat with Echo.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_ECHO"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5650,
    m_wstrDescription = "Cave Melon (From Bats in the Banthus Cave)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30050 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 45 },
        m_iCollectionItemID = 91660,
        m_iCollectionItemNum = 4,
        m_fQuestItemDropRate = 20,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5660,
    m_wstrDescription = "Nasod Mechanical Device (Wally No. 8, Wally's Castle)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30100 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 79 },
        m_iCollectionItemID = 91760,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 60,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5661,
    m_wstrDescription = "Collect Special Nut (Nasod Banthus, Underground Waterway).",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30120 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 84 },
        m_iCollectionItemID = 91720,
        m_iCollectionItemNum = 2,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5670,
    m_wstrDescription = "Spanners for repair (Little Soldier, Underground Waterway)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30120 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 75 },
        m_iCollectionItemID = 91770,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 12.5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5671,
    m_wstrDescription = "Rusty Weapon Scrap (Dismantle Lv.1~17 weapons)",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 99799,
        m_iCollectionItemNum = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5680,
    m_wstrDescription = "Clear Wally's Castle, 'Very Hard', within 12 minutes.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_TIME"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30102 },
        m_bUpperDifficulty = False,
        m_iDungeonClearTime = 900,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5690,
    m_wstrDescription = "Cave Melon (From Bats in the Banthus Cave)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30050 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 45 },
        m_iCollectionItemID = 91660,
        m_iCollectionItemNum = 4,
        m_fQuestItemDropRate = 20,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5700,
    m_wstrDescription = "Tonfa Blade (Little Soldier, Underground Waterway)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30120 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 75 },
        m_iCollectionItemID = 91670,
        m_iCollectionItemNum = 2,
        m_fQuestItemDropRate = 18.25,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5710,
    m_wstrDescription = "Velder Royal Etiquette Manual (Wally's Guardian, Wally's Castle, 'Hard' or higher)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30101 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 82 },
        m_iCollectionItemID = 91780,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 5720,
    m_wstrDescription = "Clear Wally's Castle, 'Very Hard', within 12 minutes.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_TIME"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30102 },
        m_bUpperDifficulty = False,
        m_iDungeonClearTime = 900,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6130,
    m_wstrDescription = "Clear Chapel, 'Normal', once.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32950 },
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6140,
    m_wstrDescription = "Collect 4 faded jewel pieces.",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32950 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 360 },
        m_iCollectionItemID = 91810,
        m_iCollectionItemNum = 4,
        m_fQuestItemDropRate = 55,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6160,
    m_wstrDescription = "Chat with Allegro.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_ALLEGRO"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6170,
    m_wstrDescription = "Clear Underground Chapel 'Hard' once",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32950 },
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6180,
    m_wstrDescription = "Rage Stone Golem (Underground Chapel ‘Hard or Higher’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32950 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 415 },
        m_iKillNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6190,
    m_wstrDescription = "Chat with Lento.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_LENTO"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6200,
    m_wstrDescription = "Clear Chapel, 'Very Hard', within 13 minutes.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_TIME"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32950 },
        m_bUpperDifficulty = False,
        m_iDungeonClearTime = 780,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6210,
    m_wstrDescription = "Kill the necromancer (Hard or higher).",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32950 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 360 },
        m_iKillNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6211,
    m_wstrDescription = "Kill the soldier with a hammer (Hard or higher).",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32950 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 359 },
        m_iKillNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6212,
    m_wstrDescription = "Kill magic Dutor (Very Hard).",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32950 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 421 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6220,
    m_wstrDescription = "Chat with Allegro.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_ALLEGRO"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6230,
    m_wstrDescription = "Kill magic Dutor once (Very Hard).",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32952 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 421 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6231,
    m_wstrDescription = "Kill Amethyst once (Very Hard).",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32952 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 426 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6240,
    m_wstrDescription = "Weight (Glitter Hammer Soldier, Underground Chapel)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32950 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 359 },
        m_iCollectionItemID = 91790,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 30,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6250,
    m_wstrDescription = "An empty bottle (Mana Eater, Underground Chapel)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32950 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 425 },
        m_iCollectionItemID = 91800,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6260,
    m_wstrDescription = "Clear Garden, Normal, twice.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32960 },
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6270,
    m_wstrDescription = "X Transformed Vines",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32960 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 429 },
        m_iKillNum = 20,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6271,
    m_wstrDescription = "Kill one Plant Overlord.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32960 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 428 },
        m_iKillNum = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6280,
    m_wstrDescription = "Kill x Dark Droseras (Hard or higher).",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32960 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 427 },
        m_iKillNum = 8,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6290,
    m_wstrDescription = "Jubigee (Underground Garden ‘Hard or Higher’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32961 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 439 },
        m_iKillNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6300,
    m_wstrDescription = "Kill x Glitter Royal Guards (Hard or higher).",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32961 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 417 },
        m_iKillNum = 18,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6310,
    m_wstrDescription = "Clear Garden, 'Hard', with Rank B.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_RANK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32960 },
        m_bUpperDifficulty = True,
        m_eDungeonRank = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6320,
    m_wstrDescription = "Kill agile Proxy twice (Hard or higher).",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32960 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 423 },
        m_iKillNum = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6330,
    m_wstrDescription = "Collect x wings of insects filled with magic powers.",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32960 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 424 },
        m_iCollectionItemID = 91850,
        m_iCollectionItemNum = 12,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6331,
    m_wstrDescription = "Rough stone pieces (Golem, all over Feita)",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 91540,
        m_iCollectionItemNum = 20,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6340,
    m_wstrDescription = "Kill 8 Plant Overlords.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32960 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 428, 1422 },
        m_iKillNum = 8,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6350,
    m_wstrDescription = "x vine samples",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32960 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 429 },
        m_iCollectionItemID = 91820,
        m_iCollectionItemNum = 25,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6360,
    m_wstrDescription = "x Poison Spore bags",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32960 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 427 },
        m_iCollectionItemID = 91830,
        m_iCollectionItemNum = 6,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6370,
    m_wstrDescription = "Sacred Tree Moss (Underground Garden)",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 91840,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6380,
    m_wstrDescription = "Sacred Tree Moss (Underground Garden)",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 91840,
        m_iCollectionItemNum = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6503,
    m_wstrDescription = "몬스터 카드 '플랜트 오버로드' 1개 수집",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32960 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 428, 1422 },
        m_iCollectionItemID = 130800,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6530,
    m_wstrDescription = "The Heart of Spire, cleared twice.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32970 },
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6540,
    m_wstrDescription = "Glitter Sniper (The Heart of Spire ‘Hard or Higher’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32971 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 418 },
        m_iKillNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6541,
    m_wstrDescription = "Glitter Dasher (The Heart of Spire ‘Hard or Higher’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32971 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 419 },
        m_iKillNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6550,
    m_wstrDescription = "Catch a Gargoyle at the Heart of Spire and collect 5 toenails of the Gargoyle falling with a chance of 50%.",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32970 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 431 },
        m_iCollectionItemID = 110844,
        m_iCollectionItemNum = 5,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6560,
    m_wstrDescription = "Kill Cutty Sark twice at the Heart of Spire.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32970 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 432 },
        m_iKillNum = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6570,
    m_wstrDescription = "Kill 30 Stone Gargoyles at the Heart of Spire.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32970 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 431 },
        m_iKillNum = 30,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6580,
    m_wstrDescription = "Clear the Heart of Spire, 'Hard' within 12 minutes.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_TIME"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32970 },
        m_bUpperDifficulty = True,
        m_iDungeonClearTime = 720,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6590,
    m_wstrDescription = "Kill Cutty Sark twice at the Heart of Spire, 'Very Hard'.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32972 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 432 },
        m_iKillNum = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6610,
    m_wstrDescription = "Threatening Spear Blade (Glitter Guards)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 417 },
        m_iCollectionItemID = 110837,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 85,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6611,
    m_wstrDescription = "Deadly Weights (Glitter Dasher's soldiers)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 419 },
        m_iCollectionItemID = 110838,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 85,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6620,
    m_wstrDescription = "Sturdy Demon Shield (Glitter Protectors)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 416 },
        m_iCollectionItemID = 110839,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 85,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6630,
    m_wstrDescription = "Mysterious Jewel Pieces (Glitter Illusionist)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32980 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 420 },
        m_iCollectionItemID = 110840,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 14,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6640,
    m_wstrDescription = "Bring 10 Small El Gem (Can be obtained from Dismantling Lv.18-27 equipment)",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 99826,
        m_iCollectionItemNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6650,
    m_wstrDescription = "Kill 20 Glitter Illusionists at the Altar of Dedication.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32980 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 420 },
        m_iKillNum = 20,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6660,
    m_wstrDescription = "Stone Gargoyle (Altar of Dedication ‘Hard or Higher’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32981 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 431 },
        m_iKillNum = 15,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6670,
    m_wstrDescription = "Kill 10 Glitter Dasher's soldiers at the Altar of Dedication, 'Hard or Higher'.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32980 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 419 },
        m_iKillNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6671,
    m_wstrDescription = "Kill 10 Glitter Snipers at the Altar of Dedication, 'Hard or Higher'.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32980 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 418 },
        m_iKillNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6672,
    m_wstrDescription = "Kill 12 Glitter Protectors at the Altar of Dedication, 'Hard or Higher'.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32980 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 416 },
        m_iKillNum = 12,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6673,
    m_wstrDescription = "Kill 15 Glitter Guards at the Altar of Dedication, 'Hard or Higher'.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32980 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 417 },
        m_iKillNum = 15,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6674,
    m_wstrDescription = "Kill 15 Glitter Illusionists at the Altar of Dedication, 'Hard or Higher'.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32980 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 420 },
        m_iKillNum = 15,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6680,
    m_wstrDescription = "Kill Wise Dutor twice at the Altar of Dedication, 'Very Hard'.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32980 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 421 },
        m_iKillNum = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6681,
    m_wstrDescription = "Kill Proxy the Nimble twice at the Altar of Dedication, 'Very Hard'.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32980 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 423 },
        m_iKillNum = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6682,
    m_wstrDescription = "Kill Assaulter Crash twice at the Altar of Dedication, 'Very Hard'.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32980 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 422 },
        m_iKillNum = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6690,
    m_wstrDescription = "Find more proper pieces of Dark El at the Altar of Dedication (Hard or higher).",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32981 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 431 },
        m_iCollectionItemID = 110841,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 4,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6700,
    m_wstrDescription = "Kill Berthe once at the Altar of Dedication, 'Very Hard'.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32982 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 450 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6701,
    m_wstrDescription = "Shards of the Dimension Gate (Altar of Dedication, 'Very Hard', Berthe)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32982 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 450 },
        m_iCollectionItemID = 110842,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 20,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6710,
    m_wstrDescription = "Take Allegro's letter to Stella.",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 110843,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6720,
    m_wstrDescription = "Kill Assaulter Crash twice at the Altar of Dedication (Hard or higher).",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32971 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 422 },
        m_iKillNum = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6730,
    m_wstrDescription = "Chat with Ariel",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_ARIEL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6740,
    m_wstrDescription = "Speak with Stella in Bethma Village",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_STELLA"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6750,
    m_wstrDescription = "Kill Berthe twice at the Altar of Dedication, 'Very Hard'.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32982 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 450 },
        m_iKillNum = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6930,
    m_wstrDescription = "Buy a copy of the 'Basic Training Application' sold by Camilla.",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 99060,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6940,
    m_wstrDescription = "Nasod Nickel (Nasod Monsters in Altera Dungeons)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 238, 196, 221, 237, 197, 236, 194, 195, 259, 255, 260, 193, 149, 249, 251, 253, 200, 252, 250, 254, 261, 198, 326, 337, 339, 325, 327, 336, 338 },
        m_iCollectionItemID = 99171,
        m_iCollectionItemNum = 50,
        m_fQuestItemDropRate = 40,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6950,
    m_wstrDescription = "Nasod Battle Notes (Nasod Monsters in Altera Dungeons)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 238, 196, 221, 237, 197, 236, 194, 195, 259, 255, 260, 193, 149, 249, 251, 253, 200, 252, 250, 254, 261, 198, 326, 337, 339, 325, 327, 336, 338 },
        m_iCollectionItemID = 99740,
        m_iCollectionItemNum = 40,
        m_fQuestItemDropRate = 13,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6960,
    m_wstrDescription = "Nasod Core (Nasod monsters in Altera regions)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 238, 196, 221, 237, 197, 236, 194, 195, 259, 255, 260, 193, 149, 249, 251, 253, 200, 252, 250, 254, 261, 198, 326, 337, 339, 325, 327, 336, 338 },
        m_iCollectionItemID = 99100,
        m_iCollectionItemNum = 30,
        m_fQuestItemDropRate = 8,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6970,
    m_wstrDescription = "Pure Strong Spirit (Dungeon Bosses in Altera Dungeons 'Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 238, 198, 222, 233, 232, 340, 338 },
        m_iCollectionItemID = 99172,
        m_iCollectionItemNum = 2,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6980,
    m_wstrDescription = "Buy a copy of the 'Intermediate Training Application' sold by Camilla.",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 99070,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6990,
    m_wstrDescription = "Glitter Battle Skill Book (Glitter Monsters in Feita Dungeons)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 356, 357, 358, 359, 416, 417, 419 },
        m_iCollectionItemID = 99173,
        m_iCollectionItemNum = 50,
        m_fQuestItemDropRate = 20,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7000,
    m_wstrDescription = "Demon's Command (Dungeon Bosses in Feita Dungeons)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 421, 422, 423 },
        m_iCollectionItemID = 99174,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 40,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7001,
    m_wstrDescription = "Improved Nasod Power Plant (Nasod Race, Return Plains, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30250 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 149, 200, 196, 198 },
        m_iCollectionItemID = 99140,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 0.3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7002,
    m_wstrDescription = "Improved Component Box (Nasod Race, Return Plains, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30250 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 149, 200, 196, 198 },
        m_iCollectionItemID = 99150,
        m_iCollectionItemNum = 50,
        m_fQuestItemDropRate = 13,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7010,
    m_wstrDescription = "Demon's Secret Order (Dungeon Bosses in Feita Dungeons)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 381, 380, 435, 426, 1422, 432, 450 },
        m_iCollectionItemID = 99760,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 40,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7011,
    m_wstrDescription = "Nasod Alloy Chip (Crow Rider, Nasod Foundry)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30280 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 261 },
        m_iCollectionItemID = 99170,
        m_iCollectionItemNum = 4,
        m_fQuestItemDropRate = 20,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7020,
    m_wstrDescription = "Clear the Black Crow (Hard or higher) with Rank B or higher.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_RANK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30241 },
        m_bUpperDifficulty = True,
        m_eDungeonRank = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7021,
    m_wstrDescription = "Clear the Return Plains (Hard or higher) with Rank B or higher.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_RANK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30251 },
        m_bUpperDifficulty = True,
        m_eDungeonRank = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7022,
    m_wstrDescription = "Clear Transporting Tunnel B4-1 (Hard or higher) with Rank B or higher.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_RANK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30261 },
        m_bUpperDifficulty = True,
        m_eDungeonRank = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7080,
    m_wstrDescription = "Buy a copy of the 'Advanced Training Application' sold by Camilla.",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 99560,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7090,
    m_wstrDescription = "A Recruit's Badge (Demons in Velder Dungeons)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 477, 478, 608, 610, 612 },
        m_iCollectionItemID = 99520,
        m_iCollectionItemNum = 50,
        m_fQuestItemDropRate = 12.2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7100,
    m_wstrDescription = "Demonic Officer's Insignia (Dungeon Bosses in Velder Dungeons)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 467, 466, 468, 610 },
        m_iCollectionItemID = 99175,
        m_iCollectionItemNum = 8,
        m_fQuestItemDropRate = 40,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7101,
    m_wstrDescription = "Burning Nuclear (Ignis, Altera Plains)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30270 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 232 },
        m_iCollectionItemID = 99540,
        m_iCollectionItemNum = 2,
        m_fQuestItemDropRate = 20,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7110,
    m_wstrDescription = "Commander's Curtains (Dungeon Bosses in Velder Dungeons 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 477, 478, 607, 613, 622, 481 },
        m_iCollectionItemID = 91050,
        m_iCollectionItemNum = 3,
        m_fQuestItemDropRate = 60,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7120,
    m_wstrDescription = "Clear Altera Plains, ‘Any Difficulty’, within 8 minutes.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_TIME"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30270 },
        m_bUpperDifficulty = True,
        m_iDungeonClearTime = 480,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7121,
    m_wstrDescription = "Clear Nasod Foundry, ‘Any Difficulty’, within 8 minutes.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_TIME"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30280 },
        m_bUpperDifficulty = True,
        m_iDungeonClearTime = 480,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7122,
    m_wstrDescription = "Clear Altera Core, ‘Any Difficulty’, within 9 minutes.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_TIME"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30300 },
        m_bUpperDifficulty = True,
        m_iDungeonClearTime = 540,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7290,
    m_wstrDescription = "Chat with Vanessa.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_VANESSA"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7300,
    m_wstrDescription = "Scout Residential Area 3.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33000 },
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7310,
    m_wstrDescription = "Arc Glitter Guard",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33000 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 459, 608 },
        m_iKillNum = 20,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7311,
    m_wstrDescription = "Arc Glitter Sniper",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33000 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 460 },
        m_iKillNum = 20,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7312,
    m_wstrDescription = "Arc Glitter Dasher",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33000 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 461 },
        m_iKillNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7320,
    m_wstrDescription = "Chat with Noel.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_NOEL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7330,
    m_wstrDescription = "Wyvern",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33000 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 473 },
        m_iKillNum = 12,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7340,
    m_wstrDescription = "Cockatigle",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33000 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 472 },
        m_iKillNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7350,
    m_wstrDescription = "Blood Eater",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33000 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 474 },
        m_iKillNum = 4,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7360,
    m_wstrDescription = "Chat with Vanessa.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_VANESSA"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7370,
    m_wstrDescription = "Uno Hound",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33000 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 477 },
        m_iKillNum = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7380,
    m_wstrDescription = "Arc Glitter Assassin",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33000 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 463 },
        m_iKillNum = 25,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7390,
    m_wstrDescription = "Residential Area 3 (Very Hard)",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33002 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7400,
    m_wstrDescription = "Uno Hound (Residential Area 3 (Very Hard))",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33002 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 477 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7410,
    m_wstrDescription = "Hope Bridge, 'Any Difficulty'",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33010 },
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7420,
    m_wstrDescription = "Break 20 Barricades (Hope Bridge, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33010 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 476 },
        m_iKillNum = 20,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7430,
    m_wstrDescription = "Glitter Commander",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33010 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 465 },
        m_iKillNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7440,
    m_wstrDescription = "Dark Elf Sentinel",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33010 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 470 },
        m_iKillNum = 15,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7450,
    m_wstrDescription = "Chloe",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33010 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 478 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7460,
    m_wstrDescription = "Hope Bridge (Hard)",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33011 },
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7470,
    m_wstrDescription = "Stealthy Morfos",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33010 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 467 },
        m_iKillNum = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7475,
    m_wstrDescription = "Chloe (Hope Bridge, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33012 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 478 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7480,
    m_wstrDescription = "Hope Bridge(Very Hard)",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33012 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7490,
    m_wstrDescription = "Music Scores (Glitter Commander)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 465 },
        m_iCollectionItemID = 91860,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 6.25,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7500,
    m_wstrDescription = "Residential Area 3 (Hard)",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_RANK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33000 },
        m_bUpperDifficulty = True,
        m_eDungeonRank = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7510,
    m_wstrDescription = "Glitter's Teeth (Glitter Soldiers, Velder Capital)",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 91880,
        m_iCollectionItemNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7520,
    m_wstrDescription = "Cockatigle Teardrop (Cockatigle, Residential Area 3, ‘Hard or Higher’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33001 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 472 },
        m_iCollectionItemID = 91855,
        m_iCollectionItemNum = 3,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7530,
    m_wstrDescription = "Wyvern Claws (Wyvern, Residential Area 3, ‘Hard or Higher’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33001 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 473 },
        m_iCollectionItemID = 91875,
        m_iCollectionItemNum = 5,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7540,
    m_wstrDescription = "Red Spirit’s Essence (Blood Eater, Hope Bridge, ‘Hard or Higher’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33011 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 474 },
        m_iCollectionItemID = 91885,
        m_iCollectionItemNum = 2,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7550,
    m_wstrDescription = "Ornament Pieces (Dark Elf Sentinel)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 470 },
        m_iCollectionItemID = 91865,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7560,
    m_wstrDescription = "Refined Armor Scrap (Dismantle Lv. 41~50 items)",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 99806,
        m_iCollectionItemNum = 4,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7561,
    m_wstrDescription = "Large El Gem (Dismantle Lv. 38~47 items)",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 99828,
        m_iCollectionItemNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7562,
    m_wstrDescription = "Advanced Magic Stone",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 109955,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7570,
    m_wstrDescription = "Speak to Lenphad in Elder Village",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_LENPAD"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7580,
    m_wstrDescription = "Rusty Weapon Scrap (Dismantle Lv. 1~20 weapons)",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 99799,
        m_iCollectionItemNum = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7590,
    m_wstrDescription = "Strikingly Forged Sword",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 91870,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7591,
    m_wstrDescription = "Refined Weapon Scrap (Dismantle Lv. 38~47 weapons)",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 99805,
        m_iCollectionItemNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7592,
    m_wstrDescription = "Refined Armor Scrap (Dismantle Lv. 38~47 armors)",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 99806,
        m_iCollectionItemNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7593,
    m_wstrDescription = "Advanced Magic Stone",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 109955,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7594,
    m_wstrDescription = "Speak to Hanna the Weapon Merchant who is located in Velder",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_HANNA"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7600,
    m_wstrDescription = "Wait a bit and talk to Ariel",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_ARIEL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7610,
    m_wstrDescription = "Go to Stella in Bethma Village",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_STELLA"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7620,
    m_wstrDescription = "Stella's Lost Documents\n(Dragon Road~Dragon Nest from Lizardman)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 91, 92, 93, 94, 150, 107, 126, 116, 115, 168, 169, 170, 491, 492, 493 },
        m_iCollectionItemID = 110848,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7630,
    m_wstrDescription = "Take the Guild Master Certificate and go back to Ariel.",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 110849,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7660,
    m_wstrDescription = "Let’s go seek Adel in Altera.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_ADEL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7670,
    m_wstrDescription = "Memory Alloy (Nasod monsters in Altera region)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 238,196,221,237,197,236,194,195,259,255,260,193,149,249,251,253,200,252,250,254,261,198,326,337,339,325,327,336,338 },
        m_iCollectionItemID = 110851,
        m_iCollectionItemNum = 30,
        m_fQuestItemDropRate = 20,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7680,
    m_wstrDescription = "Defeat Crow Rider (Nasod Foundry, ‘Any Difficulty’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30280 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 261 },
        m_iKillNum = 4,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7681,
    m_wstrDescription = "Defeat King Nasod (Altera Core, ‘Any Difficulty’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30300 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 338 },
        m_iKillNum = 4,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7690,
    m_wstrDescription = "Go to Lento in Feita region.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_LENTO"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7700,
    m_wstrDescription = "Glitter Insignia (Glitter monsters in Feita region)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 356,357,358,360 },
        m_iCollectionItemID = 110852,
        m_iCollectionItemNum = 100,
        m_fQuestItemDropRate = 26,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7710,
    m_wstrDescription = "Let’s go seek Adel in Altera.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_ADEL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7720,
    m_wstrDescription = "Memory Alloy (Nasod monsters in Altera region)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 238,196,221,237,197,236,194,195,259,255,260,193,149,249,251,253,200,252,250,254,261,198,326,337,339,325,327,336,338 },
        m_iCollectionItemID = 110853,
        m_iCollectionItemNum = 5,
        m_fQuestItemDropRate = 65,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7730,
    m_wstrDescription = "Defeat Crow Rider (Nasod Foundry, ‘Any Difficulty’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30280 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 261 },
        m_iKillNum = 9,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7731,
    m_wstrDescription = "Defeat King Nasod (Altera Core, ‘Any Difficulty’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30300 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 338 },
        m_iKillNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7740,
    m_wstrDescription = "Go to Lento in Feita region.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_LENTO"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7750,
    m_wstrDescription = "Refined Magic Crystal (Glitter Necromancer in Feita region)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 360 },
        m_iCollectionItemID = 110854,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 6,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7751,
    m_wstrDescription = "Footprint on Solid Rock (Golem monsters in Feita region)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 379,415,380 },
        m_iCollectionItemID = 110855,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 80,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7752,
    m_wstrDescription = "Refined Power Crystal (Glitter monsters in Feita Region)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 356,357,358,360 },
        m_iCollectionItemID = 110856,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7780,
    m_wstrDescription = "Clear Altera Core ‘Very Hard’ with S rank",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_RANK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30302 },
        m_bUpperDifficulty = False,
        m_eDungeonRank = 7,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7781,
    m_wstrDescription = "Clear Altar of Dedication ‘Very Hard’ with S rank",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_RANK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32982 },
        m_bUpperDifficulty = False,
        m_eDungeonRank = 7,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7790,
    m_wstrDescription = "Clear the Transporting Tunnel: Contaminated Area in the \"Hell\" mode.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33050 },
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7800,
    m_wstrDescription = "Kill Berthe at the last stage of Henir's Time and Space.\n(No distinction between challenge and general modes.)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 955 },
        m_iKillNum = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7840,
    m_wstrDescription = "Let’s go seek Adel in Altera.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_ADEL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7850,
    m_wstrDescription = "Memory Alloy (Nasod monsters in Altera region)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 238,196,221,237,197,236,194,195,259,255,260,193,149,249,251,253,200,252,250,254,261,198,326,337,339,325,327,336,338 },
        m_iCollectionItemID = 110860,
        m_iCollectionItemNum = 7,
        m_fQuestItemDropRate = 12,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7860,
    m_wstrDescription = "Defeat King Nasod (Altera Core, ‘Any Difficulty’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30300 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 338 },
        m_iKillNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7870,
    m_wstrDescription = "Let’s go seek Allegro in Feita region.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_ALLEGRO"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7880,
    m_wstrDescription = "Golem (Golem monsters in Feita region)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 379,415,380 },
        m_iKillNum = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7890,
    m_wstrDescription = "Let’s go seek Adel in Altera.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_ADEL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7900,
    m_wstrDescription = "Navigation Core (Nasod Scout Type-L, Altera Region)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 200 },
        m_iCollectionItemID = 110861,
        m_iCollectionItemNum = 5,
        m_fQuestItemDropRate = 32,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7910,
    m_wstrDescription = "Nasod Blader (Nasod Foundry, ‘Any Difficulty’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30280 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 260 },
        m_iKillNum = 20,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7911,
    m_wstrDescription = "Defeat King Nasod (Altera Core, ‘Any Difficulty’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30300 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 338 },
        m_iKillNum = 4,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7920,
    m_wstrDescription = "Let’s go seek Allegro in Feita region.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_ALLEGRO"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 7930,
    m_wstrDescription = "Tainted Spirit Stone (Glitter Necromancer, Feita region)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 360 },
        m_iCollectionItemID = 110862,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 8,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8020,
    m_wstrDescription = "Let’s go seek Adel in Altera.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_ADEL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8030,
    m_wstrDescription = "Memory Alloy (Nasod monsters in Altera region)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 238,196,221,237,197,236,194,195,259,255,260,193,149,249,251,253,200,252,250,254,261,198,326,337,339,325,327,336,338 },
        m_iCollectionItemID = 110863,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 13,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8040,
    m_wstrDescription = "Collect Titanium Blade (Nasod Blader, Nasod Foundry)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30280 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 260 },
        m_iCollectionItemID = 110864,
        m_iCollectionItemNum = 5,
        m_fQuestItemDropRate = 45,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8050,
    m_wstrDescription = "Let’s go seek Allegro in Feita region.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_ALLEGRO"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8060,
    m_wstrDescription = "Spirit Stone of Devildom (Glitter Necromancer, Feita region)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 360 },
        m_iCollectionItemID = 110865,
        m_iCollectionItemNum = 40,
        m_fQuestItemDropRate = 19,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8070,
    m_wstrDescription = "Let’s go seek Adel in Altera.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_ADEL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8080,
    m_wstrDescription = "Memory Alloy (Nasod monsters in Altera region)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 238,196,221,237,197,236,194,195,259,255,260,193,149,249,251,253,200,252,250,254,261,198,326,337,339,325,327,336,338 },
        m_iCollectionItemID = 110866,
        m_iCollectionItemNum = 30,
        m_fQuestItemDropRate = 68,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8090,
    m_wstrDescription = "Defeat Nasod Assault Type-W9 (Nasod Foundry, ‘Any Difficulty’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30280 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 259 },
        m_iKillNum = 200,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8110,
    m_wstrDescription = "Let’s go seek Allegro in Feita region.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_ALLEGRO"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8120,
    m_wstrDescription = "Collect Token of Elite Demon (All Boss monsters in Feita region)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 381, 450, 428, 432, 380, 426, 1422 },
        m_iCollectionItemID = 110867,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 55,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8300,
    m_wstrDescription = "Let’s go seek Adel in Altera.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_ADEL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8310,
    m_wstrDescription = "Memory Alloy (Nasod monsters in Altera region)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 238,196,221,237,197,236,194,195,259,255,260,193,149,249,251,253,200,252,250,254,261,198,326,337,339,325,327,336,338 },
        m_iCollectionItemID = 110851,
        m_iCollectionItemNum = 30,
        m_fQuestItemDropRate = 20,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8320,
    m_wstrDescription = "Nasod Leader Code (Crow Rider, Nasod Foundry)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30280 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 261 },
        m_iCollectionItemID = 110868,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 32,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8330,
    m_wstrDescription = "Go to Lento in Feita region.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_LENTO"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8340,
    m_wstrDescription = "Defeat Glitter Spearman (Feita region)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 357, 417 },
        m_iKillNum = 15,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8341,
    m_wstrDescription = "Defeat Glitter Defender (Feita region)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 356 },
        m_iKillNum = 60,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8342,
    m_wstrDescription = "Defeat Glitter Necromancer (Feita region)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 360 },
        m_iKillNum = 30,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8350,
    m_wstrDescription = "Let’s go seek Adel in Altera.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_ADEL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8360,
    m_wstrDescription = "Electromagnetic Field Motor (Nasod Blader, Nasod Foundry)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30280 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 260 },
        m_iCollectionItemID = 110869,
        m_iCollectionItemNum = 25,
        m_fQuestItemDropRate = 26,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8361,
    m_wstrDescription = "Tiny El Gem (Dismantle Lv. 28~37 Equipment)",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 99827,
        m_iCollectionItemNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8362,
    m_wstrDescription = "Upper potion",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 77190,
        m_iCollectionItemNum = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8370,
    m_wstrDescription = "Charge Control Chip (Nasod Assault Type-W9, Altera Core)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30300 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 259 },
        m_iCollectionItemID = 110870,
        m_iCollectionItemNum = 5,
        m_fQuestItemDropRate = 34,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8371,
    m_wstrDescription = "Alloy Shield Pieces (Nasod Guard: Elite Shield, Altera Core)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30300 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 339 },
        m_iCollectionItemID = 110871,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 70,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8380,
    m_wstrDescription = "Go to Lento in Feita region.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_LENTO"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8390,
    m_wstrDescription = "Refined Dark Steel (Durahan Knight, Shrine of Dedication)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32600 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 381 },
        m_iCollectionItemID = 110872,
        m_iCollectionItemNum = 3,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8400,
    m_wstrDescription = "Let’s go seek Adel in Altera.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_ADEL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8410,
    m_wstrDescription = "Defeat Nasod (Nasod monsters in Altera region)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 238,196,221,237,197,236,194,195,259,255,260,193,149,249,251,253,200,252,250,254,261,198,326,337,339,325,327,336,338 },
        m_iKillNum = 9,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8411,
    m_wstrDescription = "Defeat Crow Rider (Nasod Foundry, ‘Any Difficulty’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30280 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 261 },
        m_iKillNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8420,
    m_wstrDescription = "Navigation Core (Nasod Scout Type-L, Altera Region)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 200 },
        m_iCollectionItemID = 110873,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 32,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8421,
    m_wstrDescription = "Collect Titanium Blade (Nasod Blader, Nasod Foundry)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30280 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 260 },
        m_iCollectionItemID = 110874,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 32,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8422,
    m_wstrDescription = "Nasod Leader Code (Crow Rider, Nasod Foundry)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30280 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 261 },
        m_iCollectionItemID = 110875,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 11,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8430,
    m_wstrDescription = "Go to Lento in Feita region.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_LENTO"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8440,
    m_wstrDescription = "Refined Dark Steel (Durahan Knight, Shrine of Dedication)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32600 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 381 },
        m_iCollectionItemID = 110872,
        m_iCollectionItemNum = 3,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8450,
    m_wstrDescription = "Let’s go seek Adel in Altera.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_ADEL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8460,
    m_wstrDescription = "Collect Nasod Common Core ( Nasod monsters in Altera region)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 238,196,221,237,197,236,194,195,259,255,260,193,149,249,251,253,200,252,250,254,261,198,326,337,339,325,327,336,338 },
        m_iCollectionItemID = 110880,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 0.3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8470,
    m_wstrDescription = "Collect Electromagnetic Field Motor (Nasod Scout Type-L, Altera Core)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30300 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 200 },
        m_iCollectionItemID = 110869,
        m_iCollectionItemNum = 25,
        m_fQuestItemDropRate = 26,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8471,
    m_wstrDescription = "Alchemy Essence (from alchemists)",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 91630,
        m_iCollectionItemNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8480,
    m_wstrDescription = "Go to Lento in Feita region.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_LENTO"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8490,
    m_wstrDescription = "Fine Screw (Glitters in Feita Region)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 356,357,358,360,416,418,419,417,420,421,422,359,423 },
        m_iCollectionItemID = 110877,
        m_iCollectionItemNum = 45,
        m_fQuestItemDropRate = 32,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8491,
    m_wstrDescription = "Soft Cloth (Lantern Fly in Feita region)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 382,424 },
        m_iCollectionItemID = 110878,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 35,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8492,
    m_wstrDescription = "Golems Core (All Golem Monsters in Feita region)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 379,415,380 },
        m_iCollectionItemID = 110879,
        m_iCollectionItemNum = 15,
        m_fQuestItemDropRate = 24,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8940,
    m_wstrDescription = "Clear Wally's Underground Laboratory, 'Any Difficulty'",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33030 },
        m_eDungeonMode = DUNGEON_MODE["DM_SECRET_NORMAL"],
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8941,
    m_wstrDescription = "Defeat Royal Guardians, Wally's Underground Laboratory, 'Normal'",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33030 },
        m_eDungeonMode = DUNGEON_MODE["DM_SECRET_NORMAL"],
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 530 },
        m_iKillNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8942,
    m_wstrDescription = "Clear Wally’s Underground Laboratory, ‘Hell’ mode",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33031 },
        m_eDungeonMode = DUNGEON_MODE["DM_SECRET_HELL"],
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8943,
    m_wstrDescription = "Clear Wally’s Underground Laboratory, ‘Hell’ mode with A rank",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_RANK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33031 },
        m_eDungeonMode = DUNGEON_MODE["DM_SECRET_HELL"],
        m_bUpperDifficulty = False,
        m_eDungeonRank = 6,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8944,
    m_wstrDescription = "Inspector Core Parts (Wally’s Underground Laboratory, ‘Hell’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33031 },
        m_eDungeonMode = DUNGEON_MODE["DM_SECRET_HELL"],
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 523, 599 },
        m_iCollectionItemID = 92300,
        m_iCollectionItemNum = 2,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8945,
    m_wstrDescription = "Clear Wally’s Underground Laboratory, ‘Hell’ within 12 minutes",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_TIME"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33031 },
        m_eDungeonMode = DUNGEON_MODE["DM_SECRET_HELL"],
        m_bUpperDifficulty = False,
        m_iDungeonClearTime = 720,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8946,
    m_wstrDescription = "Defeat Nasod Inspector in Luto’s Mode (Wally’s Underground Laboratory, ‘Hell’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33031 },
        m_eDungeonMode = DUNGEON_MODE["DM_SECRET_HELL"],
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 599 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8950,
    m_wstrDescription = "Clear Dragon Nest: Abyss 'Any Difficulty'",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33040 },
        m_eDungeonMode = DUNGEON_MODE["DM_SECRET_NORMAL"],
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8951,
    m_wstrDescription = "Defeat Saurus Guardian, Dragon Nest: Abyss, 'Normal'",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33040 },
        m_eDungeonMode = DUNGEON_MODE["DM_SECRET_NORMAL"],
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 544 },
        m_iKillNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8952,
    m_wstrDescription = "Clear Dragon Nest: Abyss, 'Hell' mode",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33041 },
        m_eDungeonMode = DUNGEON_MODE["DM_SECRET_HELL"],
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8953,
    m_wstrDescription = "Clear Dragon Nest: Abyss, 'Hell' mode with A rank",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_RANK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33041 },
        m_eDungeonMode = DUNGEON_MODE["DM_SECRET_HELL"],
        m_bUpperDifficulty = False,
        m_eDungeonRank = 6,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8954,
    m_wstrDescription = "Bone Dragon's Wing Bones (Dragon Nest: Abyss, 'Hell')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33041 },
        m_eDungeonMode = DUNGEON_MODE["DM_SECRET_HELL"],
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 524, 600 },
        m_iCollectionItemID = 92301,
        m_iCollectionItemNum = 2,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8955,
    m_wstrDescription = "Clear Dragon Nest: Abyss, 'Hell' within 12 minutes",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_TIME"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33041 },
        m_eDungeonMode = DUNGEON_MODE["DM_SECRET_HELL"],
        m_bUpperDifficulty = False,
        m_iDungeonClearTime = 720,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8956,
    m_wstrDescription = "Defeat Bone Dragon in Luto's Mode (Dragon Nest: Abyss, 'Hell')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33041 },
        m_eDungeonMode = DUNGEON_MODE["DM_SECRET_HELL"],
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 600 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8960,
    m_wstrDescription = "Clear the Transporting Tunnel: Contaminated Area, 'Any Difficulty'",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33050 },
        m_eDungeonMode = DUNGEON_MODE["DM_SECRET_NORMAL"],
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8961,
    m_wstrDescription = "Defeat Corupt Nasod Guardian, Transporting Tunnel: CA, 'Normal'",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33050 },
        m_eDungeonMode = DUNGEON_MODE["DM_SECRET_NORMAL"],
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 564 },
        m_iKillNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8962,
    m_wstrDescription = "Clear Transporting Tunnel: CA, 'Hell' mode",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33051 },
        m_eDungeonMode = DUNGEON_MODE["DM_SECRET_HELL"],
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8963,
    m_wstrDescription = "Clear Transporting Tunnel: CA, 'Hell' mode with A rank",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_RANK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33051 },
        m_eDungeonMode = DUNGEON_MODE["DM_SECRET_HELL"],
        m_bUpperDifficulty = False,
        m_eDungeonRank = 6,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8964,
    m_wstrDescription = "Clues of Alterasia Type-H (Transporting Tunnel: CA, 'Hell')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33051 },
        m_eDungeonMode = DUNGEON_MODE["DM_SECRET_HELL"],
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 581, 598 },
        m_iCollectionItemID = 92302,
        m_iCollectionItemNum = 2,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8965,
    m_wstrDescription = "Defeat Evolved Alterasia (Transporting Tunnel: CA, 'Hell')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33051 },
        m_eDungeonMode = DUNGEON_MODE["DM_SECRET_HELL"],
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 588 },
        m_iKillNum = 20,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 8966,
    m_wstrDescription = "Defeat Alterasia Type-H in Luto's Mode (Transporting Tunnel: CA, 'Hell')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33051 },
        m_eDungeonMode = DUNGEON_MODE["DM_SECRET_HELL"],
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 598 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 9000,
    m_wstrDescription = "Clear Dragon Road, 'Very Hard'.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30142 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 9001,
    m_wstrDescription = "Clear Bethma Lake, 'Very Hard'",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30172 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 9010,
    m_wstrDescription = "Fine Leather (Fire Commodo)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 490 },
        m_iCollectionItemID = 132123,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 8,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 9011,
    m_wstrDescription = "Bethma Native Dyestuff",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 109974,
        m_iCollectionItemNum = 4,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 9020,
    m_wstrDescription = "High Quality Iron Ore (Nasod's in Richie Mines)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30210 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 110, 111, 112, 119, 109, 127, 151 },
        m_iCollectionItemID = 132124,
        m_iCollectionItemNum = 100,
        m_fQuestItemDropRate = 60,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 9021,
    m_wstrDescription = "Zinc Fragment (Nasod Transporter, Richie Mines)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30210 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 127 },
        m_iCollectionItemID = 132125,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 9030,
    m_wstrDescription = "Destroy Mines (Richie Mines)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30210 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 129 },
        m_iKillNum = 8,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 9050,
    m_wstrDescription = "Clear The Black Crow 'Very Hard' within 8 minutes",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_TIME"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30242 },
        m_bUpperDifficulty = False,
        m_iDungeonClearTime = 480,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 9060,
    m_wstrDescription = "Nasod Scout Type-L (Return Plains 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30250 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 200 },
        m_iKillNum = 35,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 9062,
    m_wstrDescription = "Nasod Driller (Return Plains, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30250 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 198 },
        m_iKillNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 9071,
    m_wstrDescription = "Nasod's Core (Fire Nasod: Ignis, Water Nasod: Leviathan, Altera Plains, ‘Any Difficulty’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30270 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 232, 233 },
        m_iCollectionItemID = 132126,
        m_iCollectionItemNum = 4,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 9080,
    m_wstrDescription = "Purchase 'Fine Parchment' from accessory merchant",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 132109,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 9090,
    m_wstrDescription = "Purchase 'Fine Parchment' from accessory merchant",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 132109,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 9470,
    m_wstrDescription = "4 Purified Jewels (Shadow Forest, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30070 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 80 },
        m_iCollectionItemID = 99610,
        m_iCollectionItemNum = 4,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 9471,
    m_wstrDescription = "Ent Orb (Shadow Forest, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30071 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 78 },
        m_iCollectionItemID = 99620,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 9472,
    m_wstrDescription = "Giant Phoru (Banthus Cave, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30050 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 27 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 9640,
    m_wstrDescription = "Buy a copy of the 'Expert Training Application' sold by Camilla.",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 0 },
        m_iCollectionItemID = 99630,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 0,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 9641,
    m_wstrDescription = "Trock's Strong Jaw (Trock Monsters in Sander Dungeons)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 1151, 1152, 1153, 1154, 1155, 1157, 1158, 1162, 1191, 1192, 1193, 1194, 1196, 1197 },
        m_iCollectionItemID = 99176,
        m_iCollectionItemNum = 50,
        m_fQuestItemDropRate = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 9642,
    m_wstrDescription = "Existant Strong Spirit (Dungeon Bosses in Sander Dungeons)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 1158, 1162, 1157, 1172, 1173, 1199, 1200, 1215, 1216, 1217, 1218, 1387, 1388, 1389, 1409 },
        m_iCollectionItemID = 99178,
        m_iCollectionItemNum = 15,
        m_fQuestItemDropRate = 40,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 9643,
    m_wstrDescription = "Demon Clues (Dungeon Bosses in Sander Dungeons 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33202, 33212, 33222, 33232, 33242, 33252 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 1164, 1174, 1202, 1219, 1393, 1410 },
        m_iCollectionItemID = 99177,
        m_iCollectionItemNum = 3,
        m_fQuestItemDropRate = 60,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 9644,
    m_wstrDescription = "Clear the Underground Chapel ‘Very Hard’ within 6 minutes or less.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_TIME"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32952 },
        m_bUpperDifficulty = False,
        m_iDungeonClearTime = 360,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 9645,
    m_wstrDescription = "Clear The Heart of Spire ‘Very Hard’ within 8 minutes or less.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_TIME"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32972 },
        m_bUpperDifficulty = False,
        m_iDungeonClearTime = 480,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 9646,
    m_wstrDescription = "Clear the Altar of Dedication ‘Very Hard’ within 8 minutes or less.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_TIME"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32982 },
        m_bUpperDifficulty = False,
        m_iDungeonClearTime = 480,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 9751,
    m_wstrDescription = "Chat with Lenphad.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_LENPAD"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 9900,
    m_wstrDescription = "Laguz’s Tears (Laguz, Hamel Region)",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 92100,
        m_iCollectionItemNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 9910,
    m_wstrDescription = "Iz’s Scales (Iz, Hamel Region)",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 92101,
        m_iCollectionItemNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10230,
    m_wstrDescription = "Official PVP ‘DeathMatch’ 2 Wins",
    m_eClearType = SUB_QUEST_TYPE["SQT_PVP_WIN"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_ePVPType = PVP_GAME_TYPE["PGT_TEAM_DEATH"],
        m_iPVPWin = 2,
        m_ePvpChannelClass = PVP_CHANNEL_CLASS["PCC_OFFICIAL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10232,
    m_wstrDescription = "Achieve 1 kill from a ranked arena match (Team Death Match)",
    m_eClearType = SUB_QUEST_TYPE["SQT_PVP_KILL"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_ePVPType = PVP_GAME_TYPE["PGT_TEAM_DEATH"],
        m_iPVPKill = 1,
        m_ePvpChannelClass = PVP_CHANNEL_CLASS["PCC_OFFICIAL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10234,
    m_wstrDescription = "Henir’s Time and Space (Any Difficulty)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 955 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10370,
    m_wstrDescription = "Destroy the Gate of Darkness",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 1367 },
        m_iKillNum = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10394,
    m_wstrDescription = "Darkness Bone Pieces",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 804, 805, 806 },
        m_iCollectionItemID = 135171,
        m_iCollectionItemNum = 3,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10820,
    m_wstrDescription = "Defeat King Nasod (Altera Core, ‘Any Difficulty’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30300 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 338 },
        m_iKillNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10840,
    m_wstrDescription = "Collect Token of Elite Demon (All Boss monsters in Feita region)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 381, 450, 428, 1422, 432, 380, 426 },
        m_iCollectionItemID = 110867,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 60,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10870,
    m_wstrDescription = "Defeat King Nasod (Altera Core, ‘Any Difficulty’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30300 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 338 },
        m_iKillNum = 12,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10911,
    m_wstrDescription = "Kill 15 Bomber Mong (The Suburbs of Wally's Castle, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30110 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 81 },
        m_iKillNum = 15,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10912,
    m_wstrDescription = "Kill 14 Jango (The Suburbs of Wally's Castle, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30111 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 117 },
        m_iKillNum = 14,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10913,
    m_wstrDescription = "Kill 14 Kid Phoru (The Suburbs of Wally's Castle, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30111 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 118 },
        m_iKillNum = 14,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10914,
    m_wstrDescription = "Speak with Luichel from Elder",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_LUICHEL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10915,
    m_wstrDescription = "Clear The Suburbs of Wally's Castle 'Very Hard' in 15 minutes",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_TIME"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30112 },
        m_bUpperDifficulty = False,
        m_iDungeonClearTime = 900,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10916,
    m_wstrDescription = "Wally Guardians(Wally's Castle, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30100 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 82 },
        m_iKillNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10917,
    m_wstrDescription = "Crossbow Soldier (Wally's Castle, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30100 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 77 },
        m_iKillNum = 8,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10918,
    m_wstrDescription = "Clear Wally's Castle 'Hard or Higher' with B rank or higher",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_RANK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30101 },
        m_bUpperDifficulty = True,
        m_eDungeonRank = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10919,
    m_wstrDescription = "Collect Mickey's Tail (Mickey, Underground Waterway, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30122 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 87 },
        m_iCollectionItemID = 91740,
        m_iCollectionItemNum = 7,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10920,
    m_wstrDescription = "Velder Kingdom's Exequatur (Wally Guardian, Wally's Castle, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30102 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 82 },
        m_iCollectionItemID = 91680,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 20,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10921,
    m_wstrDescription = "Wally No. 8 (Wally's Castle, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30100 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 79 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10922,
    m_wstrDescription = "Wally No. 8 (Wally's Castle, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30101 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 79 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10923,
    m_wstrDescription = "Clear The Suburbs of Wally's Castle, 'Any Difficulty', with B rank or higher.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_RANK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30110 },
        m_bUpperDifficulty = True,
        m_eDungeonRank = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10924,
    m_wstrDescription = "Collect Special Nut (William Phoru, The Suburbs of Wally's Castle, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30112 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 85 },
        m_iCollectionItemID = 91720,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10925,
    m_wstrDescription = "Collect Bomber Mong's Tool (Bomber Mong, The Suburbs of Wally's Castle, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30112 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 81 },
        m_iCollectionItemID = 92150,
        m_iCollectionItemNum = 3,
        m_fQuestItemDropRate = 20,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10926,
    m_wstrDescription = "Collect Dead Tree Pieces (White Ghost Magician, Underground Waterway, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30122 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 99 },
        m_iCollectionItemID = 91690,
        m_iCollectionItemNum = 4,
        m_fQuestItemDropRate = 40,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10927,
    m_wstrDescription = "5 Intermediate Mana Potions",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 77180,
        m_iCollectionItemNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10928,
    m_wstrDescription = "Runic Necklace (William Phoru, The Suburbs of Wally's Castle, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30112 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 86 },
        m_iCollectionItemID = 92130,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10929,
    m_wstrDescription = "High-quality Lubricant (Crossbow Soldier, Wally's Castle)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30100 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 77 },
        m_iCollectionItemID = 91730,
        m_iCollectionItemNum = 2,
        m_fQuestItemDropRate = 35,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10930,
    m_wstrDescription = "Clear Wally's Castle 'Hard or Higher' with 50 damage or lower",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_DAMAGE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30101 },
        m_bUpperDifficulty = True,
        m_iDungeonDamage = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10931,
    m_wstrDescription = "Speak with Echo from Elder",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_ECHO"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10932,
    m_wstrDescription = "Clear Wally's Castle, 'Any Difficulty', with B rank or higher.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_RANK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30100 },
        m_bUpperDifficulty = True,
        m_eDungeonRank = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10933,
    m_wstrDescription = "Crossbow Soldier (Wally's Castle, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30100 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 77 },
        m_iKillNum = 12,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10934,
    m_wstrDescription = "Clear Wally's Castle 'Hard or Higher' with 60 damage or lower",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_DAMAGE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30102 },
        m_bUpperDifficulty = False,
        m_iDungeonDamage = 60,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10935,
    m_wstrDescription = "Speak with Hoffman from Elder",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_HOFMANN"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10936,
    m_wstrDescription = "William Phoru (The Suburbs of Wally's Castle, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30110 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 86 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10937,
    m_wstrDescription = "The Suburbs of Wally's Castle 'Hard or Higher' 1 time clear",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30111 },
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10938,
    m_wstrDescription = "Speak with Lenphad from Elder",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_LENPAD"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10939,
    m_wstrDescription = "Wally's Castle 'Very Hard ' with B rank or better",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_RANK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30102 },
        m_bUpperDifficulty = False,
        m_eDungeonRank = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10940,
    m_wstrDescription = "Little Soldier (Wally's Castle, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30100 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 75 },
        m_iKillNum = 8,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10941,
    m_wstrDescription = "Clear Wally's Castle 'Hard or Higher' in 10 minutes",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_TIME"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30101 },
        m_bUpperDifficulty = True,
        m_iDungeonClearTime = 600,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10942,
    m_wstrDescription = "Kill 9 Jango (The Suburbs of Wally's Castle, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30110 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 117 },
        m_iKillNum = 9,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10943,
    m_wstrDescription = "Phoru's Secret Letter (William Phoru, The Suburbs of Wally's Castle, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30111 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 86 },
        m_iCollectionItemID = 92140,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10944,
    m_wstrDescription = "Kill 18 Bomber Mong (The Suburbs of Wally's Castle, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30112 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 81 },
        m_iKillNum = 18,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10945,
    m_wstrDescription = "Velder Knight Epaulettes (Little Soldier, Big Soldier, Wally's Castle, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30100 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 75, 76 },
        m_iCollectionItemID = 91350,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 75,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10946,
    m_wstrDescription = "Velder Knight Ceremonial Sword (Wally Guardian, Wally's Castle, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30101 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 82 },
        m_iCollectionItemID = 91390,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 30,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10947,
    m_wstrDescription = "Velder Knight Fencing Manuals (Verngert, Wally's Castle, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30102 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 629 },
        m_iCollectionItemID = 91370,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10948,
    m_wstrDescription = "Guardian's Lunch (Wally Guardian, Wally's Castle, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30100 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 82 },
        m_iCollectionItemID = 92160,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 40,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10949,
    m_wstrDescription = "Wally No. 8 Control Chips (Wally No. 8, Wally's Castle, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30101 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 79 },
        m_iCollectionItemID = 91380,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 90,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10950,
    m_wstrDescription = "Runic Power Crystal (White Ghost Magician, Underground Waterway, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30122 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 99 },
        m_iCollectionItemID = 91700,
        m_iCollectionItemNum = 4,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10951,
    m_wstrDescription = "Big Soldier (Wally's Castle, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30100 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 76 },
        m_iKillNum = 8,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10953,
    m_wstrDescription = "Repair Wrench (Little Soldier, Wally's Castle, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30101 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 75 },
        m_iCollectionItemID = 91770,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 20,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10954,
    m_wstrDescription = "Wally's Castle 'Very Hard' 15 minutes clear",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_TIME"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30102 },
        m_bUpperDifficulty = False,
        m_iDungeonClearTime = 900,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10955,
    m_wstrDescription = "Bomber Mong's Apple (Bomber Mong, The Suburbs of Wally's Castle, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30111 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 81 },
        m_iCollectionItemID = 92170,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 20,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10956,
    m_wstrDescription = "Tonpa Blade (Little Soldier, Underground Waterway)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30120 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 75 },
        m_iCollectionItemID = 91670,
        m_iCollectionItemNum = 2,
        m_fQuestItemDropRate = 45,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10957,
    m_wstrDescription = "Velder Royal Etiquette Manuals (Wally Guardian, Wally's Castle, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30101 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 82 },
        m_iCollectionItemID = 91780,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 30,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10958,
    m_wstrDescription = "Runic Necklace (William Phoru, The Suburbs of Wally's Castle, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30111 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 86 },
        m_iCollectionItemID = 92130,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10959,
    m_wstrDescription = "The Suburbs of Wally's Castle 'Very Hard'",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30112 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10960,
    m_wstrDescription = "Wally's Castle 'Very Hard'",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30102 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10961,
    m_wstrDescription = "Clear Wally's Castle, 'Any Difficulty', with 30 damage or lower.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_DAMAGE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30100 },
        m_bUpperDifficulty = True,
        m_iDungeonDamage = 30,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10962,
    m_wstrDescription = "Little Soldier (Wally's Castle, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30101 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 75 },
        m_iKillNum = 14,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10963,
    m_wstrDescription = "Big Soldier (Wally's Castle, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30101 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 76 },
        m_iKillNum = 14,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10984,
    m_wstrDescription = "Clear Underground Waterway, 'Very Hard' within 10 minutes",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_TIME"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30122 },
        m_bUpperDifficulty = False,
        m_iDungeonClearTime = 600,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10985,
    m_wstrDescription = "Clear The Suburbs of Wally's Castle, 'Very Hard'",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30112 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10986,
    m_wstrDescription = "Conwell (Wally No. 8, Wally's Castle, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30102 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 79 },
        m_iCollectionItemID = 92304,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10987,
    m_wstrDescription = "This Quest cannot be performed.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_ADAMS"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10988,
    m_wstrDescription = "Magical Pendant (William Phoru, The Suburbs of Wally’s Castle, ‘Very Hard’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30112 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 86 },
        m_iCollectionItemID = 92305,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 10991,
    m_wstrDescription = "Moonstone Essence (Glitter monsters in Feita region)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 356,357,358,360 },
        m_iCollectionItemID = 92317,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 11000,
    m_wstrDescription = "Chat with Hagus in Ruben Village",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_VILLAGE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eVillageID = {20000},
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 11005,
    m_wstrDescription = "Enter Lake Noahs",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_FIELD"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40000 },
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 11006,
    m_wstrDescription = "Banthus Bandits Command (Tobu, Lake Noahs)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40000 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5084 },
        m_iCollectionItemID = 92326,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 11010,
    m_wstrDescription = "Tree of El",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30000 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 11011,
    m_wstrDescription = "Find Banthus (Tree of El)",
    m_eClearType = SUB_QUEST_TYPE["SQT_FIND_NPC"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30000 },
        m_bUpperDifficulty = True,
        m_iFindNPCID = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 11012,
    m_wstrDescription = "Defeat Banthus (Tree of El)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30000 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 5 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 11030,
    m_wstrDescription = "Forest Ruins, 'Any Difficulty'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30080 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 11031,
    m_wstrDescription = "Find the leader of the Phoru Bandits (Forest Ruins, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_FIND_NPC"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30080 },
        m_bUpperDifficulty = True,
        m_iFindNPCID = 26,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 11032,
    m_wstrDescription = "William's Letter (William Phoru, Forest Ruins, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30080 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 26 },
        m_iCollectionItemID = 111035,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 11040,
    m_wstrDescription = "Stolen Relics (Thief Phoru , Lake Noahs)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40000 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5086 },
        m_iCollectionItemID = 111034,
        m_iCollectionItemNum = 5,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 11050,
    m_wstrDescription = "White Mist Swamp, 'Any Difficulty'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30090 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 11052,
    m_wstrDescription = "Ancient Phoru (White Mist Swamp, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30090 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 364 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 11060,
    m_wstrDescription = "Banthus Bandits Escape Plan (Bor, Lake Noahs)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40000 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5085 },
        m_iCollectionItemID = 92328,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 12000,
    m_wstrDescription = "Chat with Hoffman in Elder Village",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_VILLAGE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eVillageID = {20001},
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 12001,
    m_wstrDescription = "Visit 'Elder Village' to complete job change",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_VILLAGE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eVillageID = {20001},
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 12005,
    m_wstrDescription = "Enter Wally's Memorial Bridge",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_FIELD"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40001 },
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 12006,
    m_wstrDescription = "Stolen Goods (Scout Bandit, Mercenary Bandit, Wally’s Memorial Bridge)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40001 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5007, 5008 },
        m_iCollectionItemID = 92329,
        m_iCollectionItemNum = 6,
        m_fQuestItemDropRate = 70,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 12010,
    m_wstrDescription = "Let's go chat with Hoffman in Elder Village",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_VILLAGE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eVillageID = {20001},
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 12020,
    m_wstrDescription = "Shadow Forest, 'Any Difficulty'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30070 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 12021,
    m_wstrDescription = "Investigate the cause of the corruption (Shadow Forest, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_FIND_NPC"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30070 },
        m_bUpperDifficulty = True,
        m_iFindNPCID = 78,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 12022,
    m_wstrDescription = "Fallen Antique Ent's Branch (Ent, Shadow Forest, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30070 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 78 },
        m_iCollectionItemID = 92327,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 12030,
    m_wstrDescription = "Shadow Forest 'Hard or Higher'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30071 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 12031,
    m_wstrDescription = "Ghost Magician (Shadow Forest, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30071 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 80 },
        m_iKillNum = 4,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 12032,
    m_wstrDescription = "Kira-Kira (Shadow Forest, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30071 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 208 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 12040,
    m_wstrDescription = "Strange Map Pieces (Scout Bandit, Mercenary Bandit, Wally’s Memorial Bridge)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40001 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5007, 5008 },
        m_iCollectionItemID = 92331,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 12050,
    m_wstrDescription = "Banthus Cave, 'Any Difficulty'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30050 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 12051,
    m_wstrDescription = "Bat (Banthus Cave, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30050 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 45 },
        m_iKillNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 12052,
    m_wstrDescription = "Red Giant Phoru (Banthus Cave, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30050 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 28 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 12060,
    m_wstrDescription = "Bat King (Banthus Cave 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30051 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 74 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 12061,
    m_wstrDescription = "Wally's Secret Letter (Banthus, Banthus Cave, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30051 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 40 },
        m_iCollectionItemID = 111036,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 12064,
    m_wstrDescription = "Banthus Cave 'Hard or Higher'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30051 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 12070,
    m_wstrDescription = "Underground Waterway, 'Any Difficulty'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30120 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 12071,
    m_wstrDescription = "Clear Underground Waterway, 'Any Difficulty'.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30120 },
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 12080,
    m_wstrDescription = "Underground Waterway 'Hard or Higher'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30121 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 12081,
    m_wstrDescription = "Banthus's Battered Necklace (Banthus, Underground Waterway, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30121 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 84 },
        m_iCollectionItemID = 111037,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 12090,
    m_wstrDescription = "Enter Twin Watchtower",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_FIELD"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40002 },
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 12091,
    m_wstrDescription = "Big Soldier's Glove (Watchtower Guard, Twin Watchtower)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40002 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5012 },
        m_iCollectionItemID = 92332,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 70,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 12092,
    m_wstrDescription = "Small Soldier's Knife (Wally Scout, Twin Watchtower)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40002 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5011 },
        m_iCollectionItemID = 92333,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 70,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 13000,
    m_wstrDescription = "Stolen Goods from Castle (Ppojji, Kajji, Twin Watchtower)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40002 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5076, 5077 },
        m_iCollectionItemID = 92334,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 13010,
    m_wstrDescription = "The Suburbs of Wally's Castle, 'Any Difficulty'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30110 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 13011,
    m_wstrDescription = "William's Letter (William Phoru, The Suburbs of Wally's Castle, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30110 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 86 },
        m_iCollectionItemID = 111038,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 13020,
    m_wstrDescription = "The Suburbs of Wally's Castle 'Hard or Higher'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30111 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 13021,
    m_wstrDescription = "Jango (The Suburbs of Wally's Castle, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30111 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 117 },
        m_iKillNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 13022,
    m_wstrDescription = "Kid Phoru (The Suburbs of Wally's Castle, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30111 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 118 },
        m_iKillNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 13030,
    m_wstrDescription = "Wally's Castle, 'Any Difficulty'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30100 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 13031,
    m_wstrDescription = "Find Wally (Wally's Castle, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_FIND_NPC"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30100 },
        m_bUpperDifficulty = True,
        m_iFindNPCID = 79,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 13032,
    m_wstrDescription = "Defeat Wally No. 8 (Wally's Castle, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30100 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 79 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 13040,
    m_wstrDescription = "Wally's Castle 'Hard or Higher'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30101 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 13041,
    m_wstrDescription = "Set of Keys (Verngert, Wally's Castle, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30101 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 629 },
        m_iCollectionItemID = 111039,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 13050,
    m_wstrDescription = "Wally's Castle 'Very Hard'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30102 },
        m_bUpperDifficulty = False,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 13051,
    m_wstrDescription = "Unidentified Clockwork (Wally's Guardian, Wally's Castle, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30102 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 82 },
        m_iCollectionItemID = 92335,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 13052,
    m_wstrDescription = "Components of Wally No. 8 (Wally No. 8, Wally's Castle, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30102 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 79 },
        m_iCollectionItemID = 92336,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 14000,
    m_wstrDescription = "Let’s go speak to Stella in Bethma Village",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_VILLAGE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eVillageID = {20002},
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 14005,
    m_wstrDescription = "Enter Bethagara Falls",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_FIELD"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40003 },
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 14006,
    m_wstrDescription = "Wally No. 8's Propeller (Komodos, Bethagara Falls)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40003 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5004 },
        m_iCollectionItemID = 111040,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 14010,
    m_wstrDescription = "Clear Dragon Road, 'Any Difficulty'.",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30140 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 14011,
    m_wstrDescription = "Lizardman (Dragon Road, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30140 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 91 },
        m_iKillNum = 6,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 14012,
    m_wstrDescription = "Lizardman Warrior (Dragon Road, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30140 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 92 },
        m_iKillNum = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 14020,
    m_wstrDescription = "Dragon Road 'Hard or Higher'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30141 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 14021,
    m_wstrDescription = "Broken Sword (Lizardman Warrior, Dragon Road, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30141 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 92 },
        m_iCollectionItemID = 92337,
        m_iCollectionItemNum = 2,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 14030,
    m_wstrDescription = "Dragon Road 'Very Hard'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30142 },
        m_bUpperDifficulty = False,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 14031,
    m_wstrDescription = "Hard Tail (Scorpion, Dragon Road, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30142 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 93 },
        m_iCollectionItemID = 90640,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 14032,
    m_wstrDescription = "Scorpion King's Pincers (Scorpion King, Dragon Road, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30142 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 120 },
        m_iCollectionItemID = 99080,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 14040,
    m_wstrDescription = "Bethma Lake 'Any Difficulty'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30170 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 14041,
    m_wstrDescription = "Find Berauk (Bethma Lake, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_FIND_NPC"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30170 },
        m_bUpperDifficulty = True,
        m_iFindNPCID = 126,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 14042,
    m_wstrDescription = "Berauk (Bethma Lake, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30170 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 126 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 14043,
    m_wstrDescription = "Chat with Chacha Buch, the town Alchemist of Bethma Village",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_CHACHABUK"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 14060,
    m_wstrDescription = "Bethma Lake 'Hard or Higher'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30171 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 14061,
    m_wstrDescription = "Find the cause of the problem. (Shaman Lizardman, Bethma Lake, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30171 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 107 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 14062,
    m_wstrDescription = "Hypnotizing Orbs (Lizardman, Bethma Lake, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30171 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 91, 92, 107, 108, 115, 116, 126, 168, 169, 170, 488, 491, 492, 493 },
        m_iCollectionItemID = 90770,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 14063,
    m_wstrDescription = "Chat with Chacha Buch, the town Alchemist of Bethma Village",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_CHACHABUK"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 15020,
    m_wstrDescription = "Bethma Lake 'Very Hard'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30172 },
        m_bUpperDifficulty = False,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 15021,
    m_wstrDescription = "Armadillo (Bethma Lake, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30172 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 94 },
        m_iKillNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 15022,
    m_wstrDescription = "King Armadillo (Bethma Lake, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30172 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 165 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 15030,
    m_wstrDescription = "Bethma Lake (Night) 'Any Difficulty'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30200 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 15031,
    m_wstrDescription = "Find the leader of Bethma Lake (Night) (Bethma Lake (Night), 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_FIND_NPC"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30200 },
        m_bUpperDifficulty = True,
        m_iFindNPCID = 488,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 15032,
    m_wstrDescription = "Shadow Warrior (Bethma Lake (Night), 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30200 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 488 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 15040,
    m_wstrDescription = "Bethma Lake (Night) 'Hard or Higher'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30201 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 15041,
    m_wstrDescription = "Blunt Spear Blade (Lizardman, Bethma Lake (Night), 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30201 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 107 },
        m_iCollectionItemID = 90710,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 15050,
    m_wstrDescription = "Bethma Lake (Night) 'Very Hard'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30202 },
        m_bUpperDifficulty = False,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 15051,
    m_wstrDescription = "Torn Map Piece (Lizardman, Bethma Lake (Night) 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30202 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 91, 92, 107, 108, 115, 116, 126, 168, 169, 170, 488, 491, 492, 493 },
        m_iCollectionItemID = 92340,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 15060,
    m_wstrDescription = "Dragon Nest 'Any Difficulty'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30180 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 15061,
    m_wstrDescription = "Find Kayak the Shaman (Dragon Nest, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_FIND_NPC"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30180 },
        m_bUpperDifficulty = True,
        m_iFindNPCID = 108,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 15062,
    m_wstrDescription = "Kayak the Shaman (Dragon Nest, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30180 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 108 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 15063,
    m_wstrDescription = "Chat with Chacha Buch, the town Alchemist of Bethma Village",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_CHACHABUK"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 15070,
    m_wstrDescription = "Dragon Nest 'Hard or Higher'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30181 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 15071,
    m_wstrDescription = "Accursed Scroll Piece (Berserk Shaman Lizardman, Dragon Nest, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30181 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 169 },
        m_iCollectionItemID = 111045,
        m_iCollectionItemNum = 8,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 15080,
    m_wstrDescription = "Dragon Nest 'Very Hard'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30182 },
        m_bUpperDifficulty = False,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 15081,
    m_wstrDescription = "Dark Berauk (Dragon Nest, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30182 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 170 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 15082,
    m_wstrDescription = "Chat with Chacha Buch, the town Alchemist of Bethma Village",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_CHACHABUK"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 15100,
    m_wstrDescription = "Chat with Stella, the Sheriff of Bethma Village",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_STELLA"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 15110,
    m_wstrDescription = "Richie Mines 'Any Difficulty'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30210 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 15111,
    m_wstrDescription = "Find Cause of Drilling : Wally No. 8 MK2 (Richie Mines, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_FIND_NPC"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30210 },
        m_bUpperDifficulty = True,
        m_iFindNPCID = 109,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 15112,
    m_wstrDescription = "Wally No.8 MK2 (Richie Mines, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30210 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 109 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 15120,
    m_wstrDescription = "Richie Mines 'Hard or Higher'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30211 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 15121,
    m_wstrDescription = "Nasod Miner (Richie Mines, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30211 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 119 },
        m_iKillNum = 20,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 15122,
    m_wstrDescription = "Nasod Driller (Richie Mines, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30211 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 151 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 15130,
    m_wstrDescription = "Richie Mines 'Very Hard'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30212 },
        m_bUpperDifficulty = False,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 15131,
    m_wstrDescription = "Cargo Airship Nautical Map (Wally No.8 MK2, Richie Mines, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30212 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 109 },
        m_iCollectionItemID = 92341,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 15140,
    m_wstrDescription = "Cargo Airship 'Any Difficulty'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30190 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 15141,
    m_wstrDescription = "Securing Safety (Cargo Airship, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_FIND_NPC"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30190 },
        m_bUpperDifficulty = True,
        m_iFindNPCID = 143,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 15142,
    m_wstrDescription = "Armored Wally No.9 (Cargo Airship, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30190 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 143 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 15150,
    m_wstrDescription = "Cargo Airship 'Hard or Higher'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30191 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 15151,
    m_wstrDescription = "Hidden Threat : Wally No.9 (Cargo Airship, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_FIND_NPC"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30191 },
        m_bUpperDifficulty = True,
        m_iFindNPCID = 171,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 15152,
    m_wstrDescription = "Wally No.9 (Cargo Airship, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30191 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 171 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 15160,
    m_wstrDescription = "Cargo Airship 'Very Hard'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30192 },
        m_bUpperDifficulty = False,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 15161,
    m_wstrDescription = "Nasod Healer (Cargo Airship, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30192 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 104 },
        m_iKillNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 15162,
    m_wstrDescription = "Crash Landing",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30192 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 15170,
    m_wstrDescription = "Visit Altera Village",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_VILLAGE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eVillageID = {20003},
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 16000,
    m_wstrDescription = "The Black Crow 'Any Difficulty'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30240 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 16001,
    m_wstrDescription = "Find the leader of The Black Crow (The Black Crow, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_FIND_NPC"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30240 },
        m_bUpperDifficulty = True,
        m_iFindNPCID = 238,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 16002,
    m_wstrDescription = "Raven (The Black Crow, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30240 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 238 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 16010,
    m_wstrDescription = "The Black Crow 'Hard or Higher'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30241 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 16011,
    m_wstrDescription = "Black Crow's Symbol (Black Crow Sniper, The Black Crow, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30241 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 204 },
        m_iCollectionItemID = 91080,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 16020,
    m_wstrDescription = "The Black Crow 'Very Hard'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30242 },
        m_bUpperDifficulty = False,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 16021,
    m_wstrDescription = "Howitzer (The Black Crow, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30242 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 231 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 16022,
    m_wstrDescription = "Raven (The Black Crow, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30242 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 238 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 16030,
    m_wstrDescription = "Return Plains 'Any Difficulty'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30250 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 16031,
    m_wstrDescription = "Scout (Return Plains, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_FIND_NPC"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30250 },
        m_bUpperDifficulty = True,
        m_iFindNPCID = 198,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 16032,
    m_wstrDescription = "Corrupt Nasod Driller (Return Plains, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30250 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 198 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 16040,
    m_wstrDescription = "Return Plains 'Hard or Higher'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30251 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 16041,
    m_wstrDescription = "Scout Nasod's Memory Chips (Nasod Scout Type-L, Return Plains, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30251 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 200 },
        m_iCollectionItemID = 111047,
        m_iCollectionItemNum = 5,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 16050,
    m_wstrDescription = "Defeat Corrupt Nasod Driller (Return Plains'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30251 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 198 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 16060,
    m_wstrDescription = "Return Plains 'Very Hard'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30252 },
        m_bUpperDifficulty = False,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 16061,
    m_wstrDescription = "Contaminated Spore Specimen (Corrupt Nasod Driller, Return Plains, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30252 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 198 },
        m_iCollectionItemID = 111048,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 16070,
    m_wstrDescription = "Transporting Tunnel B4-1 'Any Difficulty'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30260 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 16071,
    m_wstrDescription = "Check Contamination (Transporting Tunnel B4-1, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_FIND_NPC"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30260 },
        m_bUpperDifficulty = True,
        m_iFindNPCID = 222,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 16080,
    m_wstrDescription = "Clear the Transporting Tunnel 'Hard or Higher' within 8 minutes.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_TIME"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30261 },
        m_bUpperDifficulty = True,
        m_iDungeonClearTime = 480,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 16090,
    m_wstrDescription = "Transporting Tunnel B4-1 'Hard or Higher'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30261 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 16091,
    m_wstrDescription = "Steam Controller (Transporting Tunnel B4-1, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30261 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 248 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 16092,
    m_wstrDescription = "Alterasia (Transporting Tunnel B4-1, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30261 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 229 },
        m_iKillNum = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 16093,
    m_wstrDescription = "Alterasia Spore (Transporting Tunnel B4-1, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30261 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 221 },
        m_iKillNum = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 16100,
    m_wstrDescription = "Transporting Tunnel B4-1 'Very Hard'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30262 },
        m_bUpperDifficulty = False,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 16101,
    m_wstrDescription = "Purify Parasitic Alterasia Turret (Transporting Tunnel B4-1, ‘Very Hard’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30262 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 222 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 16110,
    m_wstrDescription = "Altera Plains 'Any Difficulty'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30270 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 16111,
    m_wstrDescription = "Nasod Scorpion (Altera Plains, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30270 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 251 },
        m_iKillNum = 12,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 16112,
    m_wstrDescription = "Nasod Gardener Type-F (Altera Plains, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30270 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 149 },
        m_iKillNum = 12,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 16113,
    m_wstrDescription = "Clear Altera Plains (Altera Plains, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_FIND_NPC"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30270 },
        m_bUpperDifficulty = True,
        m_iFindNPCID = 232,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 16120,
    m_wstrDescription = "Clear Altera Plains ‘Hard or Higher’",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30271 },
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 16130,
    m_wstrDescription = "Altera Plains 'Hard or Higher'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30271 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 16131,
    m_wstrDescription = "Fire Nasod: Ignis (Altera Plains, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30271 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 232 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 16132,
    m_wstrDescription = "Water Nasod: Leviathan (Altera Plains, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30271 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 233 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 16133,
    m_wstrDescription = "Remove the threat of Altera Plains (Altera Plains, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30271 },
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 16140,
    m_wstrDescription = "Altera Plains 'Very Hard'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30272 },
        m_bUpperDifficulty = False,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 16141,
    m_wstrDescription = "Destroy Electrifying Tong (Altera Plains, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30272 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 252 },
        m_iKillNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 17000,
    m_wstrDescription = "Nasod Foundry 'Any Difficulty'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30280 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 17001,
    m_wstrDescription = "Find the entrance to Altera Core (Nasod Foundry, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_FIND_NPC"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30280 },
        m_bUpperDifficulty = True,
        m_iFindNPCID = 261,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 17002,
    m_wstrDescription = "Crow Rider (Nasod Foundry, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30280 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 261 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 17010,
    m_wstrDescription = "Nasod Foundry 'Hard or Higher'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30281 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 17011,
    m_wstrDescription = "Nasod Production Machine (Nasod Foundry, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30281 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 255 },
        m_iKillNum = 4,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 17020,
    m_wstrDescription = "Crow Rider (Nasod Foundry, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30281 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 261 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 17030,
    m_wstrDescription = "Nasod Foundry 'Very Hard'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30282 },
        m_bUpperDifficulty = False,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 17031,
    m_wstrDescription = "Nasod Scorpion King (Nasod Foundry, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30282 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 193 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 17040,
    m_wstrDescription = "Altera Core 'Any Difficulty'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30300 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 17041,
    m_wstrDescription = "Monarch of the Nasods (Altera Core, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_FIND_NPC"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30300 },
        m_bUpperDifficulty = True,
        m_iFindNPCID = 338,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 17042,
    m_wstrDescription = "King Nasod (Altera Core, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30300 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 338 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 17050,
    m_wstrDescription = "Destroy El Energy Extractor (Attack) (Altera Core, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30300 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 326 },
        m_iKillNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 17051,
    m_wstrDescription = "Destroy El Energy Extractor (Defense) (Altera Core, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30300 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 327 },
        m_iKillNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 17060,
    m_wstrDescription = "Nasod Assault Type-W9 (Altera Core, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30301 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 259 },
        m_iKillNum = 30,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 17061,
    m_wstrDescription = "Elite Nasod Guard: Cannon (Altera Core, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30301 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 336 },
        m_iKillNum = 30,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 17062,
    m_wstrDescription = "Nasod Guard: Type-ICE (Altera Core, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30301 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 337 },
        m_iKillNum = 30,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 17064,
    m_wstrDescription = "Altera Core 'Hard or Higher'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30301 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 17070,
    m_wstrDescription = "Irradiant El (King Nasod, Altera Core, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30302 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 338 },
        m_iCollectionItemID = 111051,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 17080,
    m_wstrDescription = "Altera Core 'Very Hard'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30302 },
        m_bUpperDifficulty = False,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 17081,
    m_wstrDescription = "Find Irradiant El (Altera Core, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_FIND_NPC"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30302 },
        m_bUpperDifficulty = False,
        m_iFindNPCID = 338,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 17082,
    m_wstrDescription = "Irradiant El (King Nasod, Altera Core, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30302 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 338 },
        m_iCollectionItemID = 111051,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 18000,
    m_wstrDescription = "Chat with Allegro, Feita's Secretary",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_VILLAGE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eVillageID = {20005},
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 18001,
    m_wstrDescription = "Visit 'Feita Village' to complete job change",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_VILLAGE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eVillageID = {20005},
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 18010,
    m_wstrDescription = "Shrine of Dedication Entrance 'Any Difficulty'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32600 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 18011,
    m_wstrDescription = "Glitter Spearman (Shrine of Dedication Entrance, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32600 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 357 },
        m_iKillNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 18012,
    m_wstrDescription = "Glitter Archer (Shrine of Dedication Entrance, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32600 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 358 },
        m_iKillNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 18013,
    m_wstrDescription = "Glitter Defender (Shrine of Dedication Entrance, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32600 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 356 },
        m_iKillNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 18014,
    m_wstrDescription = "Durahan Knight (Shrine of Dedication Entrance, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32600 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 381 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 18020,
    m_wstrDescription = "Shrine of Dedication Entrance 'Hard or Higher'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32601 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 18021,
    m_wstrDescription = "Glitter Necromancer (Shrine of Dedication Entrance, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32601 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 360 },
        m_iKillNum = 4,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 18030,
    m_wstrDescription = "Shrine of Dedication Entrance 'Very Hard'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32602 },
        m_bUpperDifficulty = False,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 18031,
    m_wstrDescription = "Durahan’s Soul Crystal (Durahan Knight, Shrine of Dedication Entrance, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32602 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 381 },
        m_iCollectionItemID = 92343,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 18032,
    m_wstrDescription = "Crack the Soul Crystal through Allegro",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_ALLEGRO"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 18040,
    m_wstrDescription = "Spiral Corridor 'Any Difficulty'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32700 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 18041,
    m_wstrDescription = "Find the exit (Spiral Corridor, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_FIND_NPC"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32700 },
        m_bUpperDifficulty = True,
        m_iFindNPCID = 380,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 18042,
    m_wstrDescription = "Teach the Tyrant (Shrine of Dedication Entrance, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32700 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 380 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 18050,
    m_wstrDescription = "Spiral Corridor 'Hard or Higher'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32701 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 18051,
    m_wstrDescription = "Golem's Core (Stone Golem, Spiral Corridor, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32701 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 379 },
        m_iCollectionItemID = 110879,
        m_iCollectionItemNum = 8,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 18060,
    m_wstrDescription = "Spiral Corridor 'Very Hard'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32702 },
        m_bUpperDifficulty = False,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 18061,
    m_wstrDescription = "Teach the Tyrant's Core (Teach the Tyrant, Spiral Corridor, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32702 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 380 },
        m_iCollectionItemID = 92344,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 18062,
    m_wstrDescription = "Give the Core to Allegro",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_ALLEGRO"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 19000,
    m_wstrDescription = "Underground Chapel 'Any Difficulty'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32950 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 19001,
    m_wstrDescription = "Identify the Darkness (Underground Chapel, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_FIND_NPC"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32950 },
        m_bUpperDifficulty = True,
        m_iFindNPCID = 426,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 19002,
    m_wstrDescription = "Amethyst (Underground Chapel, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32950 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 426 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 19010,
    m_wstrDescription = "Underground Chapel 'Hard or Higher'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32951 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 19011,
    m_wstrDescription = "Empty Bottle (Mana Eater, Underground Chapel, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32951 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 425 },
        m_iCollectionItemID = 91800,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 19012,
    m_wstrDescription = "Capture Amethyst’s Magic (Underground Chapel, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32951 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 426 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 19020,
    m_wstrDescription = "Underground Chapel 'Very Hard'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32952 },
        m_bUpperDifficulty = False,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 19021,
    m_wstrDescription = "Find Wise Dutor (Underground Chapel, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_FIND_NPC"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32952 },
        m_bUpperDifficulty = False,
        m_iFindNPCID = 421,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 19022,
    m_wstrDescription = "Dark El Crystal (Wise Dutor, Underground Chapel, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32952 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 421 },
        m_iCollectionItemID = 111053,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 19023,
    m_wstrDescription = "Chat with Allegro",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_ALLEGRO"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 19030,
    m_wstrDescription = "Deliver Dark El Crystals\nto Feita Guard Knight, Lento",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 111053,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 19040,
    m_wstrDescription = "Underground Garden 'Any Difficulty'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32960 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 19041,
    m_wstrDescription = "Check the source of the pollution (Underground Garden, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_FIND_NPC"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32960 },
        m_bUpperDifficulty = True,
        m_iFindNPCID = 428,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 19042,
    m_wstrDescription = "Vine Specimen (Plant Overlord, Underground Garden, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32960 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 428, 1422 },
        m_iCollectionItemID = 111054,
        m_iCollectionItemNum = 3,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 19043,
    m_wstrDescription = "Chat with Allegro in Feita region.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_ALLEGRO"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 19050,
    m_wstrDescription = "Deliver Vine Specimens\nto Bethma Alchemist, Chacha Buch",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 111054,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 19060,
    m_wstrDescription = "Underground Garden 'Hard or Higher'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32961 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 19061,
    m_wstrDescription = "Teleport Gate Fragments (Underground Garden, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32961 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 427, 428, 429, 430, 439, 424, 417, 359, 428 },
        m_iCollectionItemID = 111055,
        m_iCollectionItemNum = 30,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 19070,
    m_wstrDescription = "Underground Garden 'Very Hard'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32962 },
        m_bUpperDifficulty = False,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 19071,
    m_wstrDescription = "Find Proxy the Nimble (Underground Garden, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_FIND_NPC"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32962 },
        m_bUpperDifficulty = False,
        m_iFindNPCID = 423,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 19072,
    m_wstrDescription = "Proxy the Nimble (Underground Garden, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32962 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 423 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 19080,
    m_wstrDescription = "The Heart of Spire 'Any Difficulty'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32970 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 19081,
    m_wstrDescription = "Investigate the Spire (The Heart of Spire, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_FIND_NPC"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32970 },
        m_bUpperDifficulty = True,
        m_iFindNPCID = 432,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 19082,
    m_wstrDescription = "Cutty Sark (The Heart of Spire, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32970 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 432 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 19090,
    m_wstrDescription = "Clear the Heart of Spire, ‘Hard or Higher’",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32971 },
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 19100,
    m_wstrDescription = "The Heart of Spire 'Hard or Higher'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32971 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 19101,
    m_wstrDescription = "Gargoyle Horns (Stone Gargoyle, The Heart of Spire, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32971 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 431 },
        m_iCollectionItemID = 111056,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 19110,
    m_wstrDescription = "The Heart of Spire 'Very Hard'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32972 },
        m_bUpperDifficulty = False,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 19111,
    m_wstrDescription = "Find Assaulter Crash (The Heart of Spire, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_FIND_NPC"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32972 },
        m_bUpperDifficulty = False,
        m_iFindNPCID = 422,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 19112,
    m_wstrDescription = "Assaulter Crash (The Heart of Spire, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32972 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 422 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 19120,
    m_wstrDescription = "Altar of Dedication 'Any Difficulty'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32980 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 19121,
    m_wstrDescription = "Elite Insignia (Assaulter Crash, Altar of Dedication, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32980 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 422 },
        m_iCollectionItemID = 92345,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 19122,
    m_wstrDescription = "Find the Altar of Dedication (Altar of Dedication, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_FIND_NPC"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32980 },
        m_bUpperDifficulty = True,
        m_iFindNPCID = 450,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 19123,
    m_wstrDescription = "Berthe (Altar of Dedication, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32980 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 450 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 19130,
    m_wstrDescription = "Altar of Dedication 'Hard or Higher'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32981 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 19131,
    m_wstrDescription = "Elite Insignia (Proxy the Nimble, Altar of Dedication, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32981 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 423 },
        m_iCollectionItemID = 92345,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 19132,
    m_wstrDescription = "Dark Spirit Seal Stone (Seal Stone, Altar of Dedication, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32981 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 451 },
        m_iCollectionItemID = 111057,
        m_iCollectionItemNum = 3,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 19140,
    m_wstrDescription = "Wise Dutor (Altar of Dedication'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32982 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 421 },
        m_iKillNum = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 19141,
    m_wstrDescription = "Assaulter Crash (Altar of Dedication, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32982 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 422 },
        m_iKillNum = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 19142,
    m_wstrDescription = "Proxy the Nimble (Altar of Dedication, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32982 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 423 },
        m_iKillNum = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 19150,
    m_wstrDescription = "Berthe (Altar of Dedication, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32982 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 450 },
        m_iKillNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 19160,
    m_wstrDescription = "Altar of Dedication 'Very Hard'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32982 },
        m_bUpperDifficulty = False,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 19161,
    m_wstrDescription = "Wise Dutor (Altar of Dedication, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32982 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 421 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 19162,
    m_wstrDescription = "Proxy the Nimble (Altar of Dedication, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32982 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 423 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 19163,
    m_wstrDescription = "Assaulter Crash (Altar of Dedication, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32982 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 422 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 19170,
    m_wstrDescription = "Clear Feita Dungeon, 'Hard', with Rank B or higher.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_RANK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32601, 32701, 32701, 32951, 32961, 32971, 32981 },
        m_bUpperDifficulty = True,
        m_eDungeonRank = 5,
        m_iDungeonClearCount = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 19180,
    m_wstrDescription = "Clear Velder Dungeon, 'Very Hard', with Rank A or higher.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_RANK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33002, 33012, 33062, 33072, 33082, 33092 },
        m_bUpperDifficulty = False,
        m_eDungeonRank = 6,
        m_iDungeonClearCount = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 19190,
    m_wstrDescription = "Clear Sander Dungeon, 'Very Hard', with Rank S or higher.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_RANK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33202, 33212, 33222, 33232, 33242, 33252 },
        m_bUpperDifficulty = False,
        m_eDungeonRank = 7,
        m_iDungeonClearCount = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 20000,
    m_wstrDescription = "Let's go chat with Vanessa in Velder Village",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_VILLAGE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eVillageID = {20004},
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 20010,
    m_wstrDescription = "Residential Area 3 'Any Difficulty'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33000 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 20011,
    m_wstrDescription = "Clear Residential Area 3 (Residential Area 3, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_FIND_NPC"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33000 },
        m_bUpperDifficulty = True,
        m_iFindNPCID = 477,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 20012,
    m_wstrDescription = "Uno Hound (Residential Area 3, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33000 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 477 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 20020,
    m_wstrDescription = "Wyvern (Residential Area 3, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33001 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 473 },
        m_iKillNum = 7,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 20021,
    m_wstrDescription = "Cockatigle (Residential Area 3, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33001 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 472 },
        m_iKillNum = 7,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 20030,
    m_wstrDescription = "Uno Hound (Residential Area 3, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33001 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 477 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 20040,
    m_wstrDescription = "Residential Area 3 'Hard or Higher'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33001 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 20041,
    m_wstrDescription = "Arc Glitter Assassin (Residential Area 3, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33001 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 463 },
        m_iKillNum = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 20050,
    m_wstrDescription = "Residential Area 3 'Very Hard'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33002 },
        m_bUpperDifficulty = False,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 20051,
    m_wstrDescription = "Glitter March (Glitter Commander, Residential Area 3, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33002 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 465 },
        m_iCollectionItemID = 91860,
        m_iCollectionItemNum = 3,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 20052,
    m_wstrDescription = "Arc Glitter Guard (Residential Area 3, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33002 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 459 },
        m_iKillNum = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 20053,
    m_wstrDescription = "Arc Glitter Dasher (Residential Area 3, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33002 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 461 },
        m_iKillNum = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 20054,
    m_wstrDescription = "Arc Glitter Sniper (Residential Area 3, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33002 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 460 },
        m_iKillNum = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 20060,
    m_wstrDescription = "Hope Bridge 'Any Difficulty'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33010 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 20061,
    m_wstrDescription = "At the end of Hope Bridge... (Hope Bridge, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_FIND_NPC"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33010 },
        m_bUpperDifficulty = True,
        m_iFindNPCID = 478,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 20062,
    m_wstrDescription = "Chloe (Hope Bridge, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33010 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 478 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 20070,
    m_wstrDescription = "Hope Bridge 'Hard or Higher'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33011 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 20071,
    m_wstrDescription = "Barricade Structure (Hope Bridge, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33011 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 476 },
        m_iKillNum = 8,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 20080,
    m_wstrDescription = "Hope Bridge 'Very Hard'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33012 },
        m_bUpperDifficulty = False,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 20081,
    m_wstrDescription = "Arc Glitter Assassin (Hope Bridge, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33012 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 463 },
        m_iKillNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 20082,
    m_wstrDescription = "Stealthy Morfos (Hope Bridge, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33012 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 467 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 20083,
    m_wstrDescription = "Dark Elf Sentinel (Hope Bridge, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33012 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 470 },
        m_iKillNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 20084,
    m_wstrDescription = "Chloe (Hope Bridge, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33012 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 478 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 20090,
    m_wstrDescription = "Dark Elf Sentinel (Hope Bridge, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33011 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 470 },
        m_iKillNum = 15,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 20100,
    m_wstrDescription = "Chloe (Hope Bridge, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33011 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 478 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 20110,
    m_wstrDescription = "Glitter Commander (Hope Bridge, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33012 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 465 },
        m_iKillNum = 4,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21010,
    m_wstrDescription = "Palace Entrance, 'Any Difficulty'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33060 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21011,
    m_wstrDescription = "In front of the Palace Entrance... (Palace Entrance, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_FIND_NPC"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33060 },
        m_bUpperDifficulty = True,
        m_iFindNPCID = 607,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21012,
    m_wstrDescription = "Glitter Vanguard (Palace Entrance, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33060 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 607 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21020,
    m_wstrDescription = "Palace Entrance 'Hard or Higher'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33061 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21021,
    m_wstrDescription = "Kenaz (Palace Entrance, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33061 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 471 },
        m_iKillNum = 12,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21030,
    m_wstrDescription = "Palace Entrance 'Very Hard'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33062 },
        m_bUpperDifficulty = False,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21031,
    m_wstrDescription = "Mcgard the Blitzkrieg (Palace Entrance 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33062 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 466 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21032,
    m_wstrDescription = "Polka (Palace Entrance 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33062 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 634 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21040,
    m_wstrDescription = "Mcgard the Blitzkrieg (Palace Entrance, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33061 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 466 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21041,
    m_wstrDescription = "Polka (Palace Entrance, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33061 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 634 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21050,
    m_wstrDescription = "Alchemy Handbook (Glitter Alchemist, Palace Entrance, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33062 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 464 },
        m_iCollectionItemID = 91895,
        m_iCollectionItemNum = 15,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21051,
    m_wstrDescription = "Defeat Glitter Vanguard (Palace Entrance 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33062 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 607 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21060,
    m_wstrDescription = "Burning Hope Bridge, 'Any Difficulty'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33070 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21061,
    m_wstrDescription = "Cross the Bridge (Burning Hope Bridge 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_FIND_NPC"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33070 },
        m_bUpperDifficulty = True,
        m_iFindNPCID = 613,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21062,
    m_wstrDescription = "Crazy Puppet (Burning Hope Bridge 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33070 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 613 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21070,
    m_wstrDescription = "Burning Hope Bridge 'Hard or Higher'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33071 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21071,
    m_wstrDescription = "Invincible Vardon (Burning Hope Bridge 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33071 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 468 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21080,
    m_wstrDescription = "Demoniac Siege Tower (Burning Hope Bridge, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33071 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 611 },
        m_iKillNum = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21090,
    m_wstrDescription = "Charred Dolls (Kenaz, Burning Hope Bridge, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33071 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 471 },
        m_iCollectionItemID = 111089,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 25,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21100,
    m_wstrDescription = "Crazy Puppet (Burning Hope Bridge, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33072 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 613 },
        m_iKillNum = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21110,
    m_wstrDescription = "Burning Hope Bridge 'Very Hard'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33072 },
        m_bUpperDifficulty = False,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21111,
    m_wstrDescription = "Puppet Soul Fragments (Triple Bell Doll, Burning Hope Bridge 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33072 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 614 },
        m_iCollectionItemID = 111090,
        m_iCollectionItemNum = 2,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21120,
    m_wstrDescription = "Commercial Area 1, 'Any Difficulty'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33080 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21121,
    m_wstrDescription = "Ensure the Safety (Commercial Area 1 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_FIND_NPC"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33080 },
        m_bUpperDifficulty = True,
        m_iFindNPCID = 622,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21122,
    m_wstrDescription = "Spriggan (Commercial Area 1 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33080 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 622 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21130,
    m_wstrDescription = "Arc Glitter Assassin (Commercial Area 1, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33080 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 463 },
        m_iKillNum = 25,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21131,
    m_wstrDescription = "Dark Elf Sentinel (Commercial Area 1, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33080 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 470 },
        m_iKillNum = 35,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21140,
    m_wstrDescription = "Commercial Area 1 'Hard or Higher'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33081 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21150,
    m_wstrDescription = "Buzz Drink Recipe (Sullen Joaquin, Commercial Area 1, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33081 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 610 },
        m_iCollectionItemID = 92356,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21151,
    m_wstrDescription = "Suspicious Potion (Spriggan, Commercial Area 1 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33081 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 622 },
        m_iCollectionItemID = 91905,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21160,
    m_wstrDescription = "Spriggan (Commercial Area 1, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33082 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 622 },
        m_iKillNum = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21170,
    m_wstrDescription = "Commercial Area 1 'Very Hard'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33082 },
        m_bUpperDifficulty = False,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21171,
    m_wstrDescription = "Demon’s Battle Plans : Top (Sullen Joaquin, Commercial Area 1 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33082 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 610 },
        m_iCollectionItemID = 92357,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21172,
    m_wstrDescription = "Demon’s Battle Plans : Bottom (Spriggan, Commercial Area 1 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33082 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 622 },
        m_iCollectionItemID = 92358,
        m_iCollectionItemNum = 2,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21180,
    m_wstrDescription = "Southern Gate, 'Any Difficulty'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33090 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21181,
    m_wstrDescription = "Try to escape (Southern Gate 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_FIND_NPC"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33090 },
        m_bUpperDifficulty = True,
        m_iFindNPCID = 481,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21182,
    m_wstrDescription = "Dark Nephilim (Southern Gate 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33090 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 481 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21190,
    m_wstrDescription = "Southern Gate 'Hard or Higher'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33091 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21191,
    m_wstrDescription = "Arc Glitter Panzer (Southern Gate, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33091 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 462 },
        m_iKillNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21192,
    m_wstrDescription = "Demoniac Cannon (Southern Gate, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33091 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 475 },
        m_iKillNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21193,
    m_wstrDescription = "Cockatigle (Southern Gate 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33091 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 472 },
        m_iKillNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21200,
    m_wstrDescription = "Clear the Southern Gate within the time limit.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_TIME"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33090 },
        m_bUpperDifficulty = True,
        m_iDungeonClearTime = 720,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21210,
    m_wstrDescription = "Stealthy Morfos (Southern Gate, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33091 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 467 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21211,
    m_wstrDescription = "Invincible Vardon (Southern Gate, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33091 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 468 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21212,
    m_wstrDescription = "Mcgard the Blitzkrieg (Southern Gate, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33091 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 466 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21213,
    m_wstrDescription = "Sullen Joaquin (Southern Gate, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33091 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 610 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21220,
    m_wstrDescription = "Dark Nephilim (Southern Gate, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33092 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 481 },
        m_iKillNum = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21230,
    m_wstrDescription = "Southern Gate 'Very Hard'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33092 },
        m_bUpperDifficulty = False,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21231,
    m_wstrDescription = "Rune-Imprinted Stone (Dark Nephilim, Southern Gate 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33092 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 481 },
        m_iCollectionItemID = 91915,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21240,
    m_wstrDescription = "Chat with Vanessa, the Centurion of Velder Village",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_VILLAGE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eVillageID = {20004},
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21250,
    m_wstrDescription = "Let's go chat with Penensio in Hamel Village",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_VILLAGE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eVillageID = {20006},
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21260,
    m_wstrDescription = "Resiam Outskirts, 'Any Difficulty'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33120 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21261,
    m_wstrDescription = "Find the Dark Demon Leader (Resiam Outskirts 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_FIND_NPC"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33120 },
        m_bUpperDifficulty = True,
        m_iFindNPCID = 717,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21262,
    m_wstrDescription = "Shadow Master (Resiam Outskirts 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33120 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 717 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21270,
    m_wstrDescription = "Resiam Outskirts 'Hard or Higher'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33121 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21271,
    m_wstrDescription = "Dark Guardian Stone (Shadow Stinger, Resiam Outskirts, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33121 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 713 },
        m_iCollectionItemID = 91960,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21280,
    m_wstrDescription = "Shadow Crystal (Shadow Defender, Resiam Outskirts, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33121 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 690 },
        m_iCollectionItemID = 91995,
        m_iCollectionItemNum = 5,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21290,
    m_wstrDescription = "Resiam Outskirts 'Very Hard'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33122 },
        m_bUpperDifficulty = False,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21291,
    m_wstrDescription = "Confirm Demon's Symbol (Resiam Outskirts 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33122 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 690 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21292,
    m_wstrDescription = "Find the owner of the symbol (Resiam Outskirts 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_FIND_NPC"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33122 },
        m_bUpperDifficulty = False,
        m_iFindNPCID = 717,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21293,
    m_wstrDescription = "Destroy Symbol : Shadow Master (Resiam Outskirts 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33122 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 717 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21300,
    m_wstrDescription = "Shadow Master (Resiam Outskirts, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33122 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 717 },
        m_iKillNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21310,
    m_wstrDescription = "Sunken Resiam, 'Any Difficulty'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33130 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21311,
    m_wstrDescription = "Find Clues of Rod Ross : Rod Ross’ Jewel (Laguz, Iz,Sunken Resiam 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33130 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 694, 695 },
        m_iCollectionItemID = 91970,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 30,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21312,
    m_wstrDescription = "Deep-sea Escape : Sunken Resiam 'Any Difficulty' Clear",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33130 },
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21320,
    m_wstrDescription = "Sunken Resiam 'Hard or Higher'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33131 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21321,
    m_wstrDescription = "Laguz (Sunken Resiam, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33131 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 694 },
        m_iKillNum = 8,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21322,
    m_wstrDescription = "Iz (Sunken Resiam 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33131 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 695 },
        m_iKillNum = 8,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21330,
    m_wstrDescription = "Merman (Sunken Resiam, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33131 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 704 },
        m_iKillNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21340,
    m_wstrDescription = "Sunken Resiam 'Very Hard'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33132 },
        m_bUpperDifficulty = False,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21341,
    m_wstrDescription = "Check if Rod Ross is held captive (Sunken Resiam 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_FIND_NPC"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33132 },
        m_bUpperDifficulty = False,
        m_iFindNPCID = 718,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21342,
    m_wstrDescription = "Rescue Rod Ross : Resiam Outskirts 'Very Hard' Clear",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33132 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21350,
    m_wstrDescription = "Coral Serpent (Sunken Resiam, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33132 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 718 },
        m_iKillNum = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21360,
    m_wstrDescription = "Ancient Waterway, 'Any Difficulty'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33140 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21361,
    m_wstrDescription = "Navigate Ancient Waterway (Ancient Waterway 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_FIND_NPC"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33140 },
        m_bUpperDifficulty = True,
        m_iFindNPCID = 719,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21362,
    m_wstrDescription = "Taranvash (Ancient Waterway 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33140 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 719 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21370,
    m_wstrDescription = "Ancient Waterway 'Hard or Higher'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33141 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21371,
    m_wstrDescription = "Find Mechanical Device Pieces (Ancient Waterway 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_FIND_NPC"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33141 },
        m_bUpperDifficulty = True,
        m_iFindNPCID = 715,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21372,
    m_wstrDescription = "Bizarre Conrad (Ancient Waterway 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33141 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 715 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21380,
    m_wstrDescription = "Crystal Machine Device (Ancient Waterway, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33141 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 708 },
        m_iKillNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21390,
    m_wstrDescription = "Ancient Nasod Reflector (Ancient Nasod Golem Monsters, Ancient Waterway, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33141 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 698, 700, 699 },
        m_iCollectionItemID = 91975,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21400,
    m_wstrDescription = "Taranvash (Ancient Waterway, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33142 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21410,
    m_wstrDescription = "Ancient Waterway 'Very Hard'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33142 },
        m_bUpperDifficulty = False,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21411,
    m_wstrDescription = "Powerful Dark Guardian Stone (Taranvash, Ancient Waterway 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33142 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 719 },
        m_iCollectionItemID = 91980,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21420,
    m_wstrDescription = "Heart of the Ancient Waterway, 'Any Difficulty'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33150 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21421,
    m_wstrDescription = "Check the Heart of the Ancient Waterway : Encounter Victor (Heart of the Ancient Waterway 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_FIND_NPC"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33150 },
        m_bUpperDifficulty = True,
        m_iFindNPCID = 720,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21422,
    m_wstrDescription = "Victor (Heart of the Ancient Waterway 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33150 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 720 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21430,
    m_wstrDescription = "Heart of the Ancient Waterway 'Hard or Higher'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33151 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21431,
    m_wstrDescription = "Strange Back Knife (Ancient Cockatigle, Heart of the Ancient Waterway 'Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33151 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 701 },
        m_iCollectionItemID = 92075,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21432,
    m_wstrDescription = "Fallen Chloe (Heart of the Ancient Waterway 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33151 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 714 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21440,
    m_wstrDescription = "Captured Shadow Linker (Shadow Linker, Heart of the Ancient Waterway, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33151 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 691 },
        m_iCollectionItemID = 91985,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21441,
    m_wstrDescription = "Pass Heart of the Ancient Waterway : Heart of the Ancient Waterway 'Hard or Higher' Clear",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33151 },
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21450,
    m_wstrDescription = "Heart of the Ancient Waterway 'Very Hard'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33152 },
        m_bUpperDifficulty = False,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21451,
    m_wstrDescription = "Find passage to the Water Temple (Heart of the Ancient Waterway 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_FIND_NPC"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33152 },
        m_bUpperDifficulty = False,
        m_iFindNPCID = 720,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21460,
    m_wstrDescription = "Victor (Heart of the Ancient Waterway, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33152 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 720 },
        m_iKillNum = 4,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21470,
    m_wstrDescription = "Clear Heart of the Ancient Waterway, 'Very Hard'.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33152 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21480,
    m_wstrDescription = "Magmanta's Cave, 'Any Difficulty'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33160 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21481,
    m_wstrDescription = "Find the entrance to the Water Temple (Magmanta's Cave 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_FIND_NPC"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33160 },
        m_bUpperDifficulty = True,
        m_iFindNPCID = 721,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21482,
    m_wstrDescription = "Magmanta (Magmanta's Cave 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33160 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 721 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21490,
    m_wstrDescription = "Demon's Charm (Mana Linker, Shadow Linker, Magmanta's Cave, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33160 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 691, 793 },
        m_iCollectionItemID = 92180,
        m_iCollectionItemNum = 5,
        m_fQuestItemDropRate = 40,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21500,
    m_wstrDescription = "Magmanta's Cave 'Hard or Higher'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33161 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21501,
    m_wstrDescription = "Broken Bridge (Magmanta's Cave 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_FIND_NPC"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33161 },
        m_bUpperDifficulty = True,
        m_iFindNPCID = 716,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21502,
    m_wstrDescription = "Giant Hammer Bobosse (Magmanta's Cave 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33161 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 716 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21510,
    m_wstrDescription = "Demon's Charm (Shadow Port Trickster, Magmanta's Cave, 'Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33161 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 873 },
        m_iCollectionItemID = 92180,
        m_iCollectionItemNum = 5,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21520,
    m_wstrDescription = "Let's go chat with Horatio in Hamel Village",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_VILLAGE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eVillageID = {20005},
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21530,
    m_wstrDescription = "Red Knight’s Cloth Pieces (Mantaray, Mantares, Magmanta's Cave, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33161 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 795, 796 },
        m_iCollectionItemID = 92185,
        m_iCollectionItemNum = 5,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21531,
    m_wstrDescription = "Chat with Denka",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_DENKA"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21540,
    m_wstrDescription = "Red Knight’s Rescue (Magmanta's Cave, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33161 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 797 },
        m_iKillNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21550,
    m_wstrDescription = "Clear Magmanta's Cave, 'Hard or Higher'.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33161 },
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21560,
    m_wstrDescription = "Defeat Bobosse (Magmanta's Cave 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33161 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 716 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21570,
    m_wstrDescription = "Clear Magmanta's Cave 'Very Hard'",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33162 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21580,
    m_wstrDescription = "Magmanta's Cave 'Very Hard'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33162 },
        m_bUpperDifficulty = False,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21581,
    m_wstrDescription = "Magmanta (Magmanta's Cave 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33162 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 721 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21590,
    m_wstrDescription = "Temple of Frozen Water, 'Any Difficulty'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33170 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21591,
    m_wstrDescription = "Rod Ross's Whereabouts (Temple of Frozen Water 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_FIND_NPC"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33170 },
        m_bUpperDifficulty = True,
        m_iFindNPCID = 722,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21592,
    m_wstrDescription = "Avalanche (Temple of Frozen Water 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33170 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 722 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21600,
    m_wstrDescription = "Ice Mole's Oil (Chilling Hedgehog, Temple of Frozen Water, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33170 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 697 },
        m_iCollectionItemID = 92190,
        m_iCollectionItemNum = 15,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21610,
    m_wstrDescription = "Temple of Frozen Water 'Hard or Higher'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33171 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21611,
    m_wstrDescription = "Find Giant Linker (Temple of Frozen Water 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_FIND_NPC"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33171 },
        m_bUpperDifficulty = True,
        m_iFindNPCID = 794,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21612,
    m_wstrDescription = "Giant Linker (Temple of Frozen Water 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33171 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 794 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21620,
    m_wstrDescription = "Chat with Horatio",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_HORATIO"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21630,
    m_wstrDescription = "Chat with Lucy",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_LUCY"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21640,
    m_wstrDescription = "Temple of Frozen Water 'Hard or Higher'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33171 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21641,
    m_wstrDescription = "Priest whereabouts (Temple of Frozen Water 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_FIND_NPC"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33171 },
        m_bUpperDifficulty = True,
        m_iFindNPCID = 794,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21642,
    m_wstrDescription = "Chat with Penensio",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_PENENSIO"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21650,
    m_wstrDescription = "Defeat Giant Linker (Temple of Frozen Water, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33171 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 794 },
        m_iKillNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21660,
    m_wstrDescription = "Clear Temple of Frozen Water, 'Very Hard' 3 Times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33172 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21670,
    m_wstrDescription = "Defeat Hagalaz (Temple of Frozen Water 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33171 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 696 },
        m_iKillNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21680,
    m_wstrDescription = "Temple of Frozen Water 'Very Hard'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33172 },
        m_bUpperDifficulty = False,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21681,
    m_wstrDescription = "Free the Priest's Soul (Temple of Frozen Water 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33172 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 722 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21690,
    m_wstrDescription = "Speak to the Alchemist, Denka",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_DENKA"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21700,
    m_wstrDescription = "Let’s visit Daisy in order to find out about Rod Ross",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_DAISY"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21710,
    m_wstrDescription = "Halls of Water, 'Any Difficulty'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33180 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21711,
    m_wstrDescription = "Find Ran (Halls of Water 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_FIND_NPC"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33180 },
        m_bUpperDifficulty = True,
        m_iFindNPCID = 723,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21712,
    m_wstrDescription = "Ran (Halls of Water 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33180 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 723 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21720,
    m_wstrDescription = "Halls of Water 'Hard or Higher'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33181 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21721,
    m_wstrDescription = "Shadow Stinger (Halls of Water 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33181 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 713 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21722,
    m_wstrDescription = "Bizarre Conrad (Halls of Water 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33181 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 715 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21723,
    m_wstrDescription = "Giant Hammer Bobosse (Halls of Water 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33181 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 716 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21724,
    m_wstrDescription = "Fallen Chloe (Halls of Water 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33181 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 714 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21730,
    m_wstrDescription = "Black Knights Piece of Armor (Shadow Port Monsters, Halls of Water, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33180 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 870, 871, 691, 693, 872, 873, 835 },
        m_iCollectionItemID = 92195,
        m_iCollectionItemNum = 30,
        m_fQuestItemDropRate = 12,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21740,
    m_wstrDescription = "Black Knights Piece of Armor (Fallen Red Knights, Halls of Water 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33181 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 868, 869 },
        m_iCollectionItemID = 92195,
        m_iCollectionItemNum = 5,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21741,
    m_wstrDescription = "Chat with Penensio",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_PENENSIO"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21750,
    m_wstrDescription = "Defeat Red Knights (Halls of Water, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33181 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 868, 869 },
        m_iKillNum = 25,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21760,
    m_wstrDescription = "Helputt's Letter : Top (Bizarre Conrad, Halls of Water 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33181 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 715 },
        m_iCollectionItemID = 92353,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21761,
    m_wstrDescription = "Helputt's Letter : Middle (Fallen Chloe, Halls of Water 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33181 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 714 },
        m_iCollectionItemID = 92354,
        m_iCollectionItemNum = 2,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21762,
    m_wstrDescription = "Helputt's Letter : Bottom (Victor, Halls of Water 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33181 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 867 },
        m_iCollectionItemID = 92355,
        m_iCollectionItemNum = 3,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21770,
    m_wstrDescription = "Demon Ink (Shadow Port Voider, Halls of Water 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33181 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 693 },
        m_iCollectionItemID = 92210,
        m_iCollectionItemNum = 8,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21780,
    m_wstrDescription = "Chat with Penensio",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_PENENSIO"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21790,
    m_wstrDescription = "Clear Halls of Water 'Hard or Higher'",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33181 },
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21800,
    m_wstrDescription = "Clear Halls of Water 'Very Hard'",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33182 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21810,
    m_wstrDescription = "Shadow Stinger (Halls of Water, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33182 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 713 },
        m_iKillNum = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21820,
    m_wstrDescription = "Giant Hammer Bobosse (Halls of Water, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33182 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 716 },
        m_iKillNum = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21830,
    m_wstrDescription = "Fallen Chloe (Halls of Water, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33182 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 714 },
        m_iKillNum = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21831,
    m_wstrDescription = "Victor (Halls of Water, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33182 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 867 },
        m_iKillNum = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21840,
    m_wstrDescription = "Ran (Halls of Water, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33182 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 723 },
        m_iKillNum = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21850,
    m_wstrDescription = "Ran (Halls of Water, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33182 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 723 },
        m_iKillNum = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21860,
    m_wstrDescription = "Halls of Water 'Very Hard'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33182 },
        m_bUpperDifficulty = False,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21861,
    m_wstrDescription = "Check the Altar of Water (Halls of Water 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_FIND_NPC"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33182 },
        m_bUpperDifficulty = False,
        m_iFindNPCID = 723,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21862,
    m_wstrDescription = "Rescue the Water Priestess : Ran (Halls of Water 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33182 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 723 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21870,
    m_wstrDescription = "Head over to Sander to meet with Priestess Anudran",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_VILLAGE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eVillageID = {20007},
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21880,
    m_wstrDescription = "Barren Sander, 'Any Difficulty'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33200 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21881,
    m_wstrDescription = "Find the Wind Priestess (Barren Sander, 'Any Difficulty') ",
    m_eClearType = SUB_QUEST_TYPE["SQT_FIND_NPC"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33200 },
        m_bUpperDifficulty = True,
        m_iFindNPCID = 1164,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21882,
    m_wstrDescription = "Waldo (Barren Sander, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33200 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 1164 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21890,
    m_wstrDescription = "Barren Sander, 'Hard or Higher'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33201 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21891,
    m_wstrDescription = "Defeat Rocky Trock (Barren Sander, 'Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33201 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 1152 },
        m_iKillNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21900,
    m_wstrDescription = "Mysterious Magical Pattern (Buggy Trock, Barren Sander, 'Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33201 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 1155 },
        m_iCollectionItemID = 92361,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 30,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21910,
    m_wstrDescription = "Barren Sander, 'Very Hard'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33202 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21911,
    m_wstrDescription = "Defeat Trocks (Trock Race, Barren Sander, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33202 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 1151,1152,1153,1154,1155,1157, 1158, 1162 },
        m_iKillNum = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21912,
    m_wstrDescription = "Waldo (Waldo, Barren Sander, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33202 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 1164 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21920,
    m_wstrDescription = "Garpai Rock, 'Any Difficulty'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33210 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21921,
    m_wstrDescription = "Steel Wing Kelaino: Kelaino (Garpai Rock, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_FIND_NPC"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33210 },
        m_bUpperDifficulty = True,
        m_iFindNPCID = 1174,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21930,
    m_wstrDescription = "Garpai Rock, 'Hard or Higher'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33211 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21931,
    m_wstrDescription = "Defeat Kelaino (Garpai Rock, 'Hard')  ",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33211 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 1174 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21940,
    m_wstrDescription = "Aello (Garpai Rock, 'Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33211 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 1172 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21941,
    m_wstrDescription = "Okypete (Garpai Rock, 'Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33211 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 1173 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21950,
    m_wstrDescription = "Adventure into an unknown world.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_ADAMS"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21960,
    m_wstrDescription = "Garpai Rock, 'Very Hard'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33212 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21961,
    m_wstrDescription = "Defeat Kelaino (Garpai Rock, 'Very Hard') ",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33212 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 1174 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21970,
    m_wstrDescription = "Clear The Suburbs of Wally's Castle 'Hard' with B rank",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_RANK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30112 },
        m_bUpperDifficulty = True,
        m_eDungeonRank = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21980,
    m_wstrDescription = "Collect Steel Pieces (Nasod Banthus, Underground Waterway)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30120 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 84 },
        m_iCollectionItemID = 91020,
        m_iCollectionItemNum = 2,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 21990,
    m_wstrDescription = "Clear Banthus Cave 'Hard or Higher'",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30051 },
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 22000,
    m_wstrDescription = "Clear Wally's Castle 'Hard' with B rank",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_RANK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30101 },
        m_bUpperDifficulty = True,
        m_eDungeonRank = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 22010,
    m_wstrDescription = "Trock's Lair, 'Any Difficulty'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33220 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 22011,
    m_wstrDescription = "Defeat Guards (Rash Iron Trock, Trock's Lair, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33220 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 1197 },
        m_iKillNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 22012,
    m_wstrDescription = "Trock Tribe Leader (Trock's Lair, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33220 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 1202 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 22020,
    m_wstrDescription = "Trock's Lair, 'Hard or Higher'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33221 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 22021,
    m_wstrDescription = "Trock's Sample (Trock Race, Trocks Lair, 'Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33221 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 1191,1192,1193,1194,1196,1197 },
        m_iCollectionItemID = 92376,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 22031,
    m_wstrDescription = "Cheiftain Trockta (Trock's Lair, 'Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33221 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 1202 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 22040,
    m_wstrDescription = "Trock's Lair, 'Very Hard'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33222 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 22041,
    m_wstrDescription = "Chieftain Trockta (Trock's Lair, 'Very Hard') ",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33222 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 1202 },
        m_iKillNum = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 22050,
    m_wstrDescription = "Caluso Tribal Village, 'Any Difficulty'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33230 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 22051,
    m_wstrDescription = "Caluso Elite Warriors (Caluso Tribal Village, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33230 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 1209 },
        m_iKillNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 22060,
    m_wstrDescription = "Caluso Tribal Village, 'Hard or Higher'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33231 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 22061,
    m_wstrDescription = "Battle Chief Tuadin",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33231 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 1215 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 22062,
    m_wstrDescription = "Battle Chief Vegar",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33231 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 1216 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 22063,
    m_wstrDescription = "Battle Chief Baryon",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33231 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 1217 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 22064,
    m_wstrDescription = "Battle Chief Tariq",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33231 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 1218 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 22070,
    m_wstrDescription = "Wind Spirit (Enraged Sylphid, Caluso Tribal Village, 'Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33231 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 1214 },
        m_iCollectionItemID = 92369,
        m_iCollectionItemNum = 5,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 22080,
    m_wstrDescription = "Caluso Tribal Village, 'Very Hard'",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33232 },
        m_bUpperDifficulty = True,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 22081,
    m_wstrDescription = "Battle Chief Karu (Caluso Tribal Village, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33232 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 1219 },
        m_iKillNum = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26000,
    m_wstrDescription = "Stolen Goods (Scout Bandit, Mercenary Bandit, Wally’s Memorial Bridge)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40001 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5007, 5008 },
        m_iCollectionItemID = 92329,
        m_iCollectionItemNum = 12,
        m_fQuestItemDropRate = 70,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26010,
    m_wstrDescription = "Scout Bandit (Wally’s Memorial Bridge)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40001 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5007 },
        m_iKillNum = 15,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26011,
    m_wstrDescription = "Mercenary Bandit (Wally’s Memorial Bridge)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40001 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5008 },
        m_iKillNum = 15,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26020,
    m_wstrDescription = "Big Soldier's Glove (Watchtower Guard, Twin Watchtower)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40002 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5012 },
        m_iCollectionItemID = 92332,
        m_iCollectionItemNum = 15,
        m_fQuestItemDropRate = 70,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26021,
    m_wstrDescription = "Small Soldier's Knife (Wally Scout, Twin Watchtower)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40002 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5011 },
        m_iCollectionItemID = 92333,
        m_iCollectionItemNum = 15,
        m_fQuestItemDropRate = 70,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26030,
    m_wstrDescription = "Ppojji, Jango (Twin Watchtower, The Suburbs of Wally’s Castle, ‘Hard or Higher’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40002 },
        m_eDungeonID = { 30111 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 5076 },
        m_iKillNum = 20,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26031,
    m_wstrDescription = "Kajji, Kid Phoru (Twin Watchtower, The Suburbs of Wally’s Castle, ‘Hard or Higher’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40002 },
        m_eDungeonID = { 30111 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 5077 },
        m_iKillNum = 20,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26040,
    m_wstrDescription = "Unidentified Clockwork (Watchtower Elite Solider, Twin Watchtower)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40002 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5013 },
        m_iCollectionItemID = 92335,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 75,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26045,
    m_wstrDescription = "Unidentified Clockwork (Watchtower Elite Solider, Wally's Guardian, Twin Watchtower, Wally’s Castle, ‘Hard or Higher’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40002 },
        m_eDungeonID = { 30101 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 5013 },
        m_iCollectionItemID = 92335,
        m_iCollectionItemNum = 30,
        m_fQuestItemDropRate = 75,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26050,
    m_wstrDescription = "Smelly Scales (Lizardman Scout, Bethagara Falls)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40003 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5006 },
        m_iCollectionItemID = 90700,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 40,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26055,
    m_wstrDescription = "Smelly Scales (Lizardman Scout, Lizardman, Bethagara Falls, Dragon Road, ‘Any Difficulty’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40003 },
        m_eDungeonID = { 30140 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 5006 },
        m_iCollectionItemID = 90700,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 40,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26060,
    m_wstrDescription = "Remaining Tree Roots (Baby Komodos, Bethagara Falls)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40003 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5004 },
        m_iCollectionItemID = 90660,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 40,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26065,
    m_wstrDescription = "Whole Apple Tree (Baby Komodos, Komodos, Bethagara Falls, Dragon Road, ‘Hard or Higher’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40003 },
        m_eDungeonID = { 30141 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 5004 },
        m_iCollectionItemID = 92338,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 40,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26070,
    m_wstrDescription = "Slimy Resin (Baby Komodos, Bethagara Falls)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40003 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5004 },
        m_iCollectionItemID = 90730,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 40,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26075,
    m_wstrDescription = "Slimy Resin (Baby Komodos, Komodos, Bethagara Falls, Bethma Lake, ‘Hard or Higher’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40003 },
        m_eDungeonID = { 30141 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 5004 },
        m_iCollectionItemID = 90730,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 40,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26080,
    m_wstrDescription = "Enter Leikiki Lake",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_FIELD"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40004 },
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26081,
    m_wstrDescription = "Toma’s Stolen Armor (Saurus Commander, Leikiki Lake)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40004 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5019 },
        m_iCollectionItemID = 92339,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 75,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26085,
    m_wstrDescription = "Toma’s Stolen Armor (Saurus Commander, Saurus Warrior, Leikiki Lake, Bethma Lake (Night), ‘Hard or Higher’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40004 },
        m_eDungeonID = { 30201 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 5019 },
        m_iCollectionItemID = 92339,
        m_iCollectionItemNum = 30,
        m_fQuestItemDropRate = 75,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26091,
    m_wstrDescription = "Accursed Scroll Piece (Lizardman Healer, Leikiki Lake)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40004 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5018 },
        m_iCollectionItemID = 111045,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 40,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26095,
    m_wstrDescription = "Accursed Scroll Piece (Lizardman Healer, Berserk Shaman Lizardman, Leikiki Lake, Dragon Nest, ‘Hard or Higher’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40004 },
        m_eDungeonID = { 30181 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 5018 },
        m_iCollectionItemID = 111045,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 40,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26100,
    m_wstrDescription = "Enter Toretugera Canyon",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_FIELD"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40005 },
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26101,
    m_wstrDescription = "Bolt (Nasod Miner TYPE-N, Toretugera Canyon)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40005 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5022 },
        m_iCollectionItemID = 90860,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 75,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26102,
    m_wstrDescription = "Nut (Nasod Miner TYPE-F, Toretugera Canyon)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40005 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5023 },
        m_iCollectionItemID = 90840,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 75,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26105,
    m_wstrDescription = "Bolt (Nasod Miner TYPE-N, Toretugera Canyon)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40005 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 5022 },
        m_iCollectionItemID = 90860,
        m_iCollectionItemNum = 30,
        m_fQuestItemDropRate = 75,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26106,
    m_wstrDescription = "Nut (Nasod Miner TYPE-F, Toretugera Canyon)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40005 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 5023 },
        m_iCollectionItemID = 90840,
        m_iCollectionItemNum = 30,
        m_fQuestItemDropRate = 75,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26111,
    m_wstrDescription = "Plastic Wings (Nasod Vulcan Bee, Toretugera Canyon) ",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40005 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5094 },
        m_iCollectionItemID = 90890,
        m_iCollectionItemNum = 30,
        m_fQuestItemDropRate = 75,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26115,
    m_wstrDescription = "Plastic Wings (Nasod Vulcan Bee, Nasod Bee, Toretugera Canyon, Cargo Airship, ‘Hard or Higher’) ",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40005 },
        m_eDungeonID = { 30191 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 5094 },
        m_iCollectionItemID = 90890,
        m_iCollectionItemNum = 30,
        m_fQuestItemDropRate = 75,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26120,
    m_wstrDescription = "Enter Graveyard of Purification",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_FIELD"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40006 },
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26121,
    m_wstrDescription = "Steel Spanner (Black Crow Engineer, Graveyard of Purification)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40006 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5027 },
        m_iCollectionItemID = 91040,
        m_iCollectionItemNum = 30,
        m_fQuestItemDropRate = 67,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26125,
    m_wstrDescription = "Steel Spanner (Black Crow Engineer, Black Crow Engineer, Graveyard of Purification, The Black Crow, ‘Any Difficulty’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40006 },
        m_eDungeonID = { 30240 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 5027 },
        m_iCollectionItemID = 91040,
        m_iCollectionItemNum = 40,
        m_fQuestItemDropRate = 67,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26130,
    m_wstrDescription = "Portable Food (Black Crow Fighter, Graveyard of Purification)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40006 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5025 },
        m_iCollectionItemID = 91060,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26135,
    m_wstrDescription = "Portable Food (Black Crow Fighter, Graveyard of Purification)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40006 },
        m_eDungeonID = { 30241 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 5025 },
        m_iCollectionItemID = 91060,
        m_iCollectionItemNum = 30,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26140,
    m_wstrDescription = "Combustion Device (Contaminated Nasod TYPE-N, Graveyard of Purification)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40006 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5028 },
        m_iCollectionItemID = 91100,
        m_iCollectionItemNum = 30,
        m_fQuestItemDropRate = 67,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26145,
    m_wstrDescription = "Combustion Device (Corrupt Nasod TYPE-N, Corrupt Nasod Miners, Graveyard of Purification, Return Plains, ‘Hard or Higher’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40006 },
        m_eDungeonID = { 30251 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 5028 },
        m_iCollectionItemID = 91100,
        m_iCollectionItemNum = 40,
        m_fQuestItemDropRate = 67,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26150,
    m_wstrDescription = "Enter Nasod Dumpsite",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_FIELD"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40007 },
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26151,
    m_wstrDescription = "Polluted Circuits (Broken Nasod Miner TYPE-N, Nasod Dumpsite)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40007 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5090 },
        m_iCollectionItemID = 91180,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26155,
    m_wstrDescription = "Regenerative Spore Powder (Alterasia Spore, Alterasia, Nasod Dumpsite, Transporting Tunnel B4-1, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40007 },
        m_eDungeonID = { 30261 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 5033 },
        m_iCollectionItemID = 91200,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26160,
    m_wstrDescription = "Fine Clockworks (Broken Nasod Scorpion, Nasod Dumpsite)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40007 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5035 },
        m_iCollectionItemID = 91240,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 33,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26165,
    m_wstrDescription = "Fine Clockworks (Broken Nasod Scorpion, Nasod Scorpion, Nasod Dumpsite, Altera Plains, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40007 },
        m_eDungeonID = { 30261 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 5035 },
        m_iCollectionItemID = 91240,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 33,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26170,
    m_wstrDescription = "Enter Garrison in the Sky",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_FIELD"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40008 },
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26171,
    m_wstrDescription = "Ponggo’s Shield Material (Nasod Guard: Supervisor,  Garrison in the Sky)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40008 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5037 },
        m_iCollectionItemID = 92359,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26175,
    m_wstrDescription = "Ponggo’s Shield Material (Nasod Guard: Supervisor,  Garrison in the Sky)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40008 },
        m_eDungeonID = { 30281 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 5037 },
        m_iCollectionItemID = 92359,
        m_iCollectionItemNum = 30,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26180,
    m_wstrDescription = "Nasod Watcher: Blader (Garrison in the Sky)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40008 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5038 },
        m_iKillNum = 30,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26185,
    m_wstrDescription = "Nasod Watcher: Blader, Nasod Blader (Garrison in the Sky, Altera Core, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40008 },
        m_eDungeonID = { 30301 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 5038 },
        m_iKillNum = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26190,
    m_wstrDescription = "Enter Pilgrim's Gateway",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_FIELD"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40009 },
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26191,
    m_wstrDescription = "Glitter Fang (Lesser Glitter Spearman, Lesser Glitter Archer, Pilgrim's Gateway)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40009 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5042, 5043 },
        m_iCollectionItemID = 92360,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26195,
    m_wstrDescription = "Glitter Fang (Lesser Glitter Spearman, Lesser Glitter Archer, Glitter Spearman, Glitter Archer, Pilgrim's Gateway, Shrine of Dedication Entrance, 'Any difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40009 },
        m_eDungeonID = { 32600 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 5042, 5043 },
        m_iCollectionItemID = 92360,
        m_iCollectionItemNum = 30,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26200,
    m_wstrDescription = "Soul Crystal (Lesser Glitter Necromancer, Pilgrim's Gateway)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40009 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5044 },
        m_iCollectionItemID = 92342,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26205,
    m_wstrDescription = "Soul Crystal (Lesser Glitter Necromancer, Glitter Necromancer, Pilgrim's Gateway, Shrine of Dedication Entrace, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40009 },
        m_eDungeonID = { 32601 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 5044 },
        m_iCollectionItemID = 92342,
        m_iCollectionItemNum = 30,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26210,
    m_wstrDescription = "Useful Arrowhead (Lesser Glitter Archer, Pilgrim's Gateway)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40009 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5043 },
        m_iCollectionItemID = 91600,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26215,
    m_wstrDescription = "Useful Arrowhead (Lesser Glitter Archer, Glitter Archer, Pilgrim's Gateway, Spiral Corridor, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40009 },
        m_eDungeonID = { 32701 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 5043 },
        m_iCollectionItemID = 91600,
        m_iCollectionItemNum = 30,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26220,
    m_wstrDescription = "Enter Pilgrim's Site",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_FIELD"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40010 },
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26221,
    m_wstrDescription = "Weights (Lesser Glitter Dasher, Pilgrim's Site)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40010 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5050 },
        m_iCollectionItemID = 91790,
        m_iCollectionItemNum = 30,
        m_fQuestItemDropRate = 67,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26225,
    m_wstrDescription = "Weights (Lesser Glitter Dasher, Glitter Pounder, Pilgrim's Site, Underground Chapel, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40010 },
        m_eDungeonID = { 32951 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 5050 },
        m_iCollectionItemID = 91790,
        m_iCollectionItemNum = 40,
        m_fQuestItemDropRate = 67,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26230,
    m_wstrDescription = "Bag of Poison Spores (Mini Jubigee, Pilgrim's Site)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40010 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5092 },
        m_iCollectionItemID = 91830,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26235,
    m_wstrDescription = "Bag of Poison Spores (Mini Jubigee, Jubigee, Pilgrim's Site, Underground Garden, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40010 },
        m_eDungeonID = { 32961 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 5092 },
        m_iCollectionItemID = 91830,
        m_iCollectionItemNum = 30,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26240,
    m_wstrDescription = "Enter Deadman's Hill",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_FIELD"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40011 },
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26241,
    m_wstrDescription = "Threatening Spear Blade (Lesser Glitter Guard, Deadman's Hill)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40011 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5093 },
        m_iCollectionItemID = 110837,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26242,
    m_wstrDescription = "Deadly Weights (Lesser Glitter Dasher, Deadman's Hill)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40011 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5050 },
        m_iCollectionItemID = 110838,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26245,
    m_wstrDescription = "Threatening Spear Blade (Lesser Glitter Guard, Glitter Guard, Deadman's Hill, Heart of Spire, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40011 },
        m_eDungeonID = { 32971 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 5093 },
        m_iCollectionItemID = 110837,
        m_iCollectionItemNum = 15,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26246,
    m_wstrDescription = "Deadly Weights (Lesser Glitter Dasher, Glitter Dasher, Deadman's Hill, Heart of Spire, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40011 },
        m_eDungeonID = { 32971 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 5050 },
        m_iCollectionItemID = 110838,
        m_iCollectionItemNum = 15,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26250,
    m_wstrDescription = "Sturdy Demon Shield (Less Glitter Protector, Deadman's Hill)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40011 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5048 },
        m_iCollectionItemID = 110839,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 75,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26255,
    m_wstrDescription = "Sturdy Demon Shield (Less Glitter Protector, Glitter Protector, Deadman's Hill, Altar of Dedication, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40011 },
        m_eDungeonID = { 32981 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 5048 },
        m_iCollectionItemID = 110839,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 75,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26260,
    m_wstrDescription = "Mysterious Jewels Pieces (Lesser Glitter Illusionist, Deadman's Hill)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40011 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5051 },
        m_iCollectionItemID = 110840,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26265,
    m_wstrDescription = "Faded El Shard (Lesser Glitter Illusionist, Glitter Illusionist, Deadman's Hill, Altar of Dedication, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40011 },
        m_eDungeonID = { 32981 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 5051 },
        m_iCollectionItemID = 91810,
        m_iCollectionItemNum = 30,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26270,
    m_wstrDescription = "Enter The Prosperity Road",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_FIELD"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40012 },
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26271,
    m_wstrDescription = "Accessory Pieces (Lesser Dark Elf Sentinel, The Prosperity Road)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40012 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5061 },
        m_iCollectionItemID = 91865,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26275,
    m_wstrDescription = "Accessory Pieces (Lesser Dark Elf Sentinel, Dark Elf Sentinel, Enter The Prosperity Road, Commercial Area 3, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40012 },
        m_eDungeonID = { 33001 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 5061 },
        m_iCollectionItemID = 91865,
        m_iCollectionItemNum = 30,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26280,
    m_wstrDescription = "Life Filled Beads (Blood Eater, Enter The Prosperity Road)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40012 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5058 },
        m_iCollectionItemID = 92348,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 70,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26285,
    m_wstrDescription = "Life Filled Beads (Blood Eater, Enter The Prosperity Road, Hope Bridge, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40012 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5058 },
        m_iCollectionItemID = 92348,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 70,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26290,
    m_wstrDescription = "Enter The Peace Road",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_FIELD"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40013 },
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26291,
    m_wstrDescription = "Fire-Resistant Fabric (Elite Glitter Alchemist, The Peace Road)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40013 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5064 },
        m_iCollectionItemID = 111061,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 33,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26295,
    m_wstrDescription = "Fire-Resistant Fabric (Elite Glitter Alchemist, Glitter Alchemist, The Peace Road, Palace Entrance, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40013 },
        m_eDungeonID = { 33061 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 5064 },
        m_iCollectionItemID = 111061,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 33,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26300,
    m_wstrDescription = "Crude Doll (Elite Glitter Assassin, The Peace Road)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40013 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5062 },
        m_iCollectionItemID = 111092,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26305,
    m_wstrDescription = "Crude Doll (Elite Glitter Assassin, Kenaz, The Peace Road, Burning Hope Bridge, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40013 },
        m_eDungeonID = { 33071 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 5062 },
        m_iCollectionItemID = 111092,
        m_iCollectionItemNum = 30,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26310,
    m_wstrDescription = "Enter Harmony Road",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_FIELD"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40014 },
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26311,
    m_wstrDescription = "Disposed Tool (Elite Glitter Panzer, Harmony Road)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40014 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5066 },
        m_iCollectionItemID = 130468,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 70,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26315,
    m_wstrDescription = "Heavy Steel Armor (Elite Glitter : Panzer, Arc Glitter Protector, Harmony Road, Commercial Area 1, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40014 },
        m_eDungeonID = { 33081 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 5066 },
        m_iCollectionItemID = 130468,
        m_iCollectionItemNum = 30,
        m_fQuestItemDropRate = 70,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26320,
    m_wstrDescription = "Enter Port Lurensia",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_FIELD"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40015 },
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26321,
    m_wstrDescription = "Arc Glitter Shield (Elite Glitter Shielder, Port Lurensia)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40015 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5056 },
        m_iCollectionItemID = 91940,
        m_iCollectionItemNum = 5,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26322,
    m_wstrDescription = "Arc Glitter Spear (Elite Glitter Spearman, Port Lurensia)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40015 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5060 },
        m_iCollectionItemID = 91935,
        m_iCollectionItemNum = 5,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26323,
    m_wstrDescription = "Arc Glitter Bow (Elite Glitter Archer, Port Lurensia)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40015 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5053 },
        m_iCollectionItemID = 91930,
        m_iCollectionItemNum = 5,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26325,
    m_wstrDescription = "Arc Glitter Spear (Elite Glitter Spearman, Arc Glitter Guard, Port Lurensia, Southern Gate, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40015 },
        m_eDungeonID = { 33091 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 5060 },
        m_iCollectionItemID = 91935,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26326,
    m_wstrDescription = "Arc Glitter Bow (Elite Glitter Archer, Arc Glitter Sniper, Port Lurensia, Southern Gate, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40015 },
        m_eDungeonID = { 33091 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 5053 },
        m_iCollectionItemID = 91930,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26327,
    m_wstrDescription = "Arc Glitter Shield (Elite Glitter Shielder, Arc Glitter Protector, Port Lurensia, Southern Gate, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40015 },
        m_eDungeonID = { 33091 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 5056 },
        m_iCollectionItemID = 91940,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26330,
    m_wstrDescription = "Enter Elime's Wave",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_FIELD"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40016 },
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26331,
    m_wstrDescription = "Button Shadow Walker (Elime's Wave)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40016 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5067 },
        m_iKillNum = 25,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26335,
    m_wstrDescription = "Button Shadow Walker, Shadow Walker (Elime's Wave, Resiam Outskirts, 'Any difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40016 },
        m_eDungeonID = { 33120 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 5067 },
        m_iKillNum = 25,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26340,
    m_wstrDescription = "Shadow Crystal (Button Shadow Defender, Elime's Wave)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40016 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5069 },
        m_iCollectionItemID = 91995,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26345,
    m_wstrDescription = "Shadow Crystal (Button Shadow Defender, Shadow Defender, Elime's Wave, Resiam Outskirts, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40016 },
        m_eDungeonID = { 33121 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 5069 },
        m_iCollectionItemID = 91995,
        m_iCollectionItemNum = 30,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26350,
    m_wstrDescription = "Chromnite (Any Shadow Monsters, Elime's Wave)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40016 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5067, 5069, 5068 },
        m_iCollectionItemID = 92000,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 33,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26355,
    m_wstrDescription = "Chromnite (Any Shadow Monsters, Elime's Wave, Sunken Resiam, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40016 },
        m_eDungeonID = { 33131 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 5067, 5069, 5068, 5070 },
        m_iCollectionItemID = 92000,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 33,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26360,
    m_wstrDescription = "Enter Stricken City",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_FIELD"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40017 },
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26361,
    m_wstrDescription = "Ancient Nasod Shoulder Rock (Any Ancient Nasod Golems, Stricken City)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40017 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5099 },
        m_iCollectionItemID = 92005,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26365,
    m_wstrDescription = "Ancient Nasod Shoulder Rock (Any Ancient Nasod Golems, Stricken City, Ancient Waterway, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40017 },
        m_eDungeonID = { 33141 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 5099 },
        m_iCollectionItemID = 92005,
        m_iCollectionItemNum = 30,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26370,
    m_wstrDescription = "Brilliant Feather (Black Ancient Cockatigle, Stricken City)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40017 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5095 },
        m_iCollectionItemID = 92346,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26375,
    m_wstrDescription = "Brilliant Feather (Black Ancient Cockatigle, Ancient Cockatigle, Stricken City, Heart of Ancient Waterway, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40017 },
        m_eDungeonID = { 33151 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 5095 },
        m_iCollectionItemID = 92346,
        m_iCollectionItemNum = 30,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26380,
    m_wstrDescription = "Enter Circular Waterway",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_FIELD"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40018 },
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26381,
    m_wstrDescription = "Chromnite (Shadow Defender, Enter Circular Waterway)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40018 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5067, 5069, 5068 },
        m_iCollectionItemID = 92000,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26385,
    m_wstrDescription = "Chromnite (Shadow Defender, Circular Waterway, Magmanta's Cave, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40018 },
        m_eDungeonID = { 33161 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 5067, 5069, 5068 },
        m_iCollectionItemID = 92000,
        m_iCollectionItemNum = 30,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26390,
    m_wstrDescription = "Enter Noah's Grave",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_FIELD"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40019 },
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26391,
    m_wstrDescription = "Crushed Ice (Hagalaz, Noah's Grave)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40019 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5073 },
        m_iCollectionItemID = 92275,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 33,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26395,
    m_wstrDescription = "Crushed Ice (Hagalaz, Noah's Grave, Temple of Frozen Water, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40019 },
        m_eDungeonID = { 33171 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 5073 },
        m_iCollectionItemID = 92275,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 33,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26400,
    m_wstrDescription = "Red Knight Betrayers (Noah's Grave)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40019 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5097, 5098 },
        m_iKillNum = 35,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26405,
    m_wstrDescription = "Red Knight Betrayer, Fallen Red Knight (Noah's Grave, Halls of Water, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40019 },
        m_eDungeonID = { 33181 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 5097, 5098, 868, 869 },
        m_iKillNum = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26410,
    m_wstrDescription = "Rocky Trock's Jaw (Ragged Rocky Trock, Temple of the Wind)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40022 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5102 },
        m_iCollectionItemID = 92368,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 40,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26415,
    m_wstrDescription = "Rocky Trock's Jaw (Ragged Rocky Trock, Temple of the Wind)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40022 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 5102 },
        m_iCollectionItemID = 92368,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 40,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26420,
    m_wstrDescription = "Enter Temple of the Wind",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_FIELD"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40022 },
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26421,
    m_wstrDescription = "Defeat Messy Oba Trock (Messy Oba Trock, Temple of the Wind)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40022 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5106 },
        m_iKillNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26425,
    m_wstrDescription = "Defeat Messy Oba Trock (Messy Oba Trock, Temple of the Wind)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40022 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 5106 },
        m_iKillNum = 30,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26431,
    m_wstrDescription = "Desert Monkfish Fin (Red Desert Monkfish, Temple of the Wind)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40022 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5105 },
        m_iCollectionItemID = 92366,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 40,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26432,
    m_wstrDescription = "Desert Seal Fur (Desert Sand Seal, Temple of the Wind)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40022 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5104 },
        m_iCollectionItemID = 92367,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 40,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26435,
    m_wstrDescription = "Desert Monkfish Fin (Red Desert Monkfish, Temple of the Wind)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40022 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 5105 },
        m_iCollectionItemID = 92366,
        m_iCollectionItemNum = 15,
        m_fQuestItemDropRate = 40,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26436,
    m_wstrDescription = "Desert Seal Fur (Desert Sand Seal, Temple of the Wind)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40022 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 5104 },
        m_iCollectionItemID = 92367,
        m_iCollectionItemNum = 15,
        m_fQuestItemDropRate = 40,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26440,
    m_wstrDescription = "Potion of Youth",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 92362,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26450,
    m_wstrDescription = "Trocks Saliva Gland (Trock Race, Barren Sander, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33201 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 1151,1152,1153,1154,1155,1156,1157 },
        m_iCollectionItemID = 92363,
        m_iCollectionItemNum = 15,
        m_fQuestItemDropRate = 30,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26451,
    m_wstrDescription = "Desert Creature's Fin (Red Sand Monkfish, Desert Sand Seal, Temple of Wind)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40022 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5105, 5104 },
        m_iCollectionItemID = 92364,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 30,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26452,
    m_wstrDescription = "Harpy Tail Feather (Harpy Race, Garpai Rock, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33211 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 1167, 1168, 1169, 1171, 1172, 1173, 1174 },
        m_iCollectionItemID = 92365,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 20,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26460,
    m_wstrDescription = "Enter Caluso Tribal Territory",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_FIELD"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40023 },
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26461,
    m_wstrDescription = "Trock's Water Bottle (Trock Race, Caluso Tribe Territory)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40023 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5107,5108,5109,5110 },
        m_iCollectionItemID = 92371,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 40,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26475,
    m_wstrDescription = "Wind Spirit's Core (Whirlwind Sylph, Enraged Sylphid, Caluso Tribal Village, 'Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33231 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 1213, 1214 },
        m_iCollectionItemID = 92370,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 30,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26480,
    m_wstrDescription = "Evil Thoughts (Caluso Assassin Warrior, Caluso Tribe Territory)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40023 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5112 },
        m_iKillNum = 40,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26490,
    m_wstrDescription = "Caluso Tribe's Good Luck Charm (Caluso Wind Warrior, Caluso Tribal Village)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40023 },
        m_eDungeonID = { 33231 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 1212 },
        m_iCollectionItemID = 92372,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 80,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26500,
    m_wstrDescription = "Magical Amulet Necklace",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 92373,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26505,
    m_wstrDescription = "Trock's Blood (Trock Race, Caluso Tribe Territory)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40023 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5107, 5108, 5109, 5110 },
        m_iCollectionItemID = 92375,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 25,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 26510,
    m_wstrDescription = "Caluso Tribe's Weapons (Caluso Tribe, Caluso Tribal Village, 'Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33231 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 1209,1210,1211,1212 },
        m_iCollectionItemID = 92374,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 20,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30000,
    m_wstrDescription = "Squirming Stones (Arc Glitter Alchemist, Palace Entrance, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33060 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 464 },
        m_iCollectionItemID = 111063,
        m_iCollectionItemNum = 15,
        m_fQuestItemDropRate = 60,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30010,
    m_wstrDescription = "Demonic Flame Stones (Kenaz, Palace Entrance, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33061 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 471 },
        m_iCollectionItemID = 111060,
        m_iCollectionItemNum = 5,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30020,
    m_wstrDescription = "Fire-Resistant Fabrics (Kenaz, Palace Entrance, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33060 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 471 },
        m_iCollectionItemID = 111061,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 17,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30030,
    m_wstrDescription = "Great Flail (Invincible Vardon, Burning Hope Bridge, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33071 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 468 },
        m_iCollectionItemID = 111091,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30040,
    m_wstrDescription = "Crude Dolls (Burning Hope Bridge, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33070 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 460, 459, 608, 458, 462, 464 },
        m_iCollectionItemID = 111092,
        m_iCollectionItemNum = 8,
        m_fQuestItemDropRate = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30050,
    m_wstrDescription = "Lighter Wick (Crazy Puppet, Burning Hope Bridge, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33071 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 613 },
        m_iCollectionItemID = 111093,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30060,
    m_wstrDescription = "Disposed Tools (Commercial Area 1, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33080 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 460, 463, 458, 464, 459, 465, 608 },
        m_iCollectionItemID = 91890,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 30,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30070,
    m_wstrDescription = "Black Powder (Arc Glitter Alchemist, Commercial Area 1, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33081 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 464 },
        m_iCollectionItemID = 91900,
        m_iCollectionItemNum = 5,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30080,
    m_wstrDescription = "Suspicious Medicine Bottles (Sullen Joaquin, Commercial Area 1, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33080 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 610 },
        m_iCollectionItemID = 91905,
        m_iCollectionItemNum = 3,
        m_fQuestItemDropRate = 70,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30090,
    m_wstrDescription = "Arc Glitter Armors (Arc Glitters, Any dungeon in Velder)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 466, 608, 610, 612 },
        m_iCollectionItemID = 91925,
        m_iCollectionItemNum = 150,
        m_fQuestItemDropRate = 70,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30095,
    m_wstrDescription = "Glitter Commander's Swords (Arc Glitters, Any dungeon in Velder)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 465 },
        m_iCollectionItemID = 91945,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 70,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30096,
    m_wstrDescription = "Arc Glitter Shields (Arc Glitters, Any dungeon in Velder)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 458 },
        m_iCollectionItemID = 91940,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 70,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30097,
    m_wstrDescription = "Arc Glitter Spears (Arc Glitters, Any dungeon in Velder)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 459, 608 },
        m_iCollectionItemID = 91935,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 70,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30098,
    m_wstrDescription = "Arc Glitter Bows (Arc Glitters, Any dungeon in Velder)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 460 },
        m_iCollectionItemID = 91930,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 70,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30100,
    m_wstrDescription = "Arc Glitter Alchemists (Any dungeon in Velder)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 464 },
        m_iKillNum = 20,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30101,
    m_wstrDescription = "Arc Glitter Assassin (Any dungeon in Velder)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 463 },
        m_iKillNum = 20,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30102,
    m_wstrDescription = "Arc Glitter Throwers (Any dungeon in Velder)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 612 },
        m_iKillNum = 20,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30103,
    m_wstrDescription = "Arc Glitter Dasher (Any dungeon in Velder)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 461 },
        m_iKillNum = 20,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30104,
    m_wstrDescription = "Glitter Commander (Any dungeon in Velder)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 465 },
        m_iKillNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30110,
    m_wstrDescription = "Nephilim's Claw (Dark Nephilim, Southern Gate, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33092 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 481 },
        m_iCollectionItemID = 91955,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30120,
    m_wstrDescription = "Open the Skill Window with 'K' button and spend 'SP' (Skill Point)",
    m_eClearType = SUB_QUEST_TYPE["SQT_USE_SKILL_POINT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iSpUseCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30130,
    m_wstrDescription = "Speak to Ariel from Cobo",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_ARIEL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30131,
    m_wstrDescription = "Hoffman's Reference",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 111371,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30140,
    m_wstrDescription = "Talk to Elder's weapon shop owner Lenphad",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_LENPAD"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30150,
    m_wstrDescription = "Enhance an equipment up to +2",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_ENCHANT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iEnchantLevel = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30151,
    m_wstrDescription = "Talk to Elder's accessory shop owner Luichel",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_LUICHEL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30152,
    m_wstrDescription = "Item Enhancement Scroll",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 111373,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30160,
    m_wstrDescription = "Use 2 Magic Stones",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_SOCKET"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iSocketCount = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30161,
    m_wstrDescription = "Talk to Elder's Alchemist Echo",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_ECHO"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30162,
    m_wstrDescription = "Item Socketing Scroll",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 111374,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30170,
    m_wstrDescription = "Enchant One Attribute",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_ATTRIB"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eAttribCountType = ATTRIB_COUNT_TYPE["ACT_SINGLE"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30171,
    m_wstrDescription = "Thesis on Attribute Enchantment",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 111375,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30180,
    m_wstrDescription = "Dismantle Item",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_RESOLVE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iResolveCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30190,
    m_wstrDescription = "Shadow Crystal (Shadow Monsters, Resiam Outskirts, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33120 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 687, 688, 690, 689 },
        m_iCollectionItemID = 91995,
        m_iCollectionItemNum = 50,
        m_fQuestItemDropRate = 30,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30200,
    m_wstrDescription = "Chromnite (Shadow Monsters, Sunken Resiam, ‘Hard or Higher’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33130 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 687, 688, 690, 689 },
        m_iCollectionItemID = 92000,
        m_iCollectionItemNum = 40,
        m_fQuestItemDropRate = 80,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30210,
    m_wstrDescription = "Ancient Nasod Shoulder Rock (Ancient Nasod Golem Monsters , Ancient Waterway, ‘Hard or Higher’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33140 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 698, 700, 699 },
        m_iCollectionItemID = 92005,
        m_iCollectionItemNum = 25,
        m_fQuestItemDropRate = 30,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30220,
    m_wstrDescription = "Steamed Piranha and Crab Recipe (Shadow Monsters, Resiam Outskirts, ‘Hard or Higher’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33121 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 687, 688, 690, 689 },
        m_iCollectionItemID = 92010,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 30,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30230,
    m_wstrDescription = "Ancient Crab’s Thigh Meat (Ancient Crab, Sunken Resiam, ‘Hard or Higher’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33130 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 703 },
        m_iCollectionItemID = 92015,
        m_iCollectionItemNum = 3,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30240,
    m_wstrDescription = "Merman's Shark Fin (Merman, Sunken Resiam, ‘Very Hard’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33131 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 704 },
        m_iCollectionItemID = 92020,
        m_iCollectionItemNum = 5,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30250,
    m_wstrDescription = "Perfectly Skinned Piranha Meat (Piranha, Sunken Resiam, ‘Very Hard’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33132 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 702 },
        m_iCollectionItemID = 92025,
        m_iCollectionItemNum = 5,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30260,
    m_wstrDescription = "Ancient Cookware (Ancient Nasod Golem Monsters, Ancient Waterway, ‘Hard of Higher’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33141 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 698, 700, 699 },
        m_iCollectionItemID = 92030,
        m_iCollectionItemNum = 5,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30270,
    m_wstrDescription = "Speak to Penensio",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_PENENSIO"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30280,
    m_wstrDescription = "Shiny Crystal Clear Beads (Shadow Sniper, Resiam Outskirts, ‘Very Hard’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33122 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 689 },
        m_iCollectionItemID = 92045,
        m_iCollectionItemNum = 3,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30290,
    m_wstrDescription = "Piranha’s Beautiful Fin (Piranhas, Sunken Resiam, ‘Hard or Higher’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33131 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 702 },
        m_iCollectionItemID = 92050,
        m_iCollectionItemNum = 5,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30300,
    m_wstrDescription = "Crystal Machine Device (Crystal Machine Device, Ancient Waterway, ‘Hard or Higher’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33141 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 708 },
        m_iCollectionItemID = 92055,
        m_iCollectionItemNum = 5,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30310,
    m_wstrDescription = "Speak to Denka, the Alchemist in Hamel",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_DENKA"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30320,
    m_wstrDescription = "Chloe’s Hairpin (Fallen Chloe, Heart of the Ancient Waterway, ‘Hard or Higher’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33151 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 714 },
        m_iCollectionItemID = 92060,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30330,
    m_wstrDescription = "Merman’s Shiny Scales (Merman, Heart of the Ancient Waterway, ‘Very Hard’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33152 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 704 },
        m_iCollectionItemID = 92065,
        m_iCollectionItemNum = 5,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30340,
    m_wstrDescription = "Laguz's Love Letter",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 92070,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30380,
    m_wstrDescription = "Speak to Lucy, the Accessory Shop Owner in Hamel",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_LUCY"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30420,
    m_wstrDescription = "Crab Meat",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 92080,
        m_iCollectionItemNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30421,
    m_wstrDescription = "Shark Fins",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 92085,
        m_iCollectionItemNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30422,
    m_wstrDescription = "Piranha’s Meat",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 92090,
        m_iCollectionItemNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30430,
    m_wstrDescription = "Black Petals (Black Flowers, Magmanta’s Cave, ‘Any Difficulty’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33160 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 837 },
        m_iCollectionItemID = 92215,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30440,
    m_wstrDescription = "Spider Cave Moss (Shadow Port Charger, Magmanta’s Cave, ‘Very Hard’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33162 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 871 },
        m_iCollectionItemID = 92220,
        m_iCollectionItemNum = 5,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30450,
    m_wstrDescription = "Ice Cube (Chilling Spine, Temple of Frozen Water, ‘Hard or Higher’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33171 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 710 },
        m_iCollectionItemID = 92225,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30460,
    m_wstrDescription = "Hedgehog’s Crunchy Ice (Chilling Hedgehog, Temple of Frozen Water, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33171 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 697 },
        m_iCollectionItemID = 92230,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30470,
    m_wstrDescription = "Delicious Voider Tail (Shadow Port Voider, Halls of Water, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33180 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 693 },
        m_iCollectionItemID = 92347,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30480,
    m_wstrDescription = "Demon’s Condiment Powder (Any shadow port monsters, Halls of Water 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33180 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 871, 835 },
        m_iCollectionItemID = 92240,
        m_iCollectionItemNum = 5,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30490,
    m_wstrDescription = "Chromnite (Magmanta’s Cave 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33160 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 861 },
        m_iKillNum = 45,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30500,
    m_wstrDescription = "Digging into the Hammer’s Secret (Magmanta’s Cave ‘Very Hard’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33160 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 716 },
        m_iKillNum = 4,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30510,
    m_wstrDescription = "Ice Spirits (Temple of Frozen Water ‘Hard or Higher’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33170 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 696 },
        m_iKillNum = 25,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30520,
    m_wstrDescription = "Stinger's Thorn (Halls of Water ‘Hard or Higher’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33180 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 713 },
        m_iCollectionItemID = 92245,
        m_iCollectionItemNum = 3,
        m_fQuestItemDropRate = 80,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30530,
    m_wstrDescription = "Spider's Web (Mantaray, Mantares, Magmanta’s Cave, ‘Any Difficulty’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33160 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 795, 796 },
        m_iCollectionItemID = 92250,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30540,
    m_wstrDescription = "Hagalaz Accessory (Hagalaz, Temple of Frozen Water, 'Hard or Higher')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 696 },
        m_iCollectionItemID = 92255,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30550,
    m_wstrDescription = "Ancient Iced Crab Carapace Pieces (Ancient Iced Crab, Temple of Frozen Water, ‘Any Difficulty’) ",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33170 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 862 },
        m_iCollectionItemID = 92260,
        m_iCollectionItemNum = 8,
        m_fQuestItemDropRate = 22,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30560,
    m_wstrDescription = "High Heels (Shadow Port Defender, Temple of Frozen Water ‘Hard or Higher’) ",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33170 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 872 },
        m_iCollectionItemID = 92265,
        m_iCollectionItemNum = 4,
        m_fQuestItemDropRate = 13,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30570,
    m_wstrDescription = "Ice Pack (Hagalaz, Chilling Hedgehog, Temple of Frozen Water ‘Any difficulty’) ",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33170 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 696, 697 },
        m_iCollectionItemID = 92270,
        m_iCollectionItemNum = 15,
        m_fQuestItemDropRate = 22,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30580,
    m_wstrDescription = "Ice Pieces (Temple of Frozen Water ‘Hard or Higher’) ",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33170 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 697, 862 },
        m_iCollectionItemID = 92275,
        m_iCollectionItemNum = 8,
        m_fQuestItemDropRate = 11,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30590,
    m_wstrDescription = "Shadow Voider’s Leather (Shadow Port Voider, Halls of Water, ‘Hard or Higher’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33180 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 693 },
        m_iCollectionItemID = 92280,
        m_iCollectionItemNum = 8,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30600,
    m_wstrDescription = "Shiny Equipment (Mini Boss, Halls of Water ‘Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33180 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 715, 867, 714, 716 },
        m_iCollectionItemID = 92285,
        m_iCollectionItemNum = 4,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30610,
    m_wstrDescription = "Grilled Fish",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 78150,
        m_iCollectionItemNum = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30611,
    m_wstrDescription = "Spirit's Tear",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 99822,
        m_iCollectionItemNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30620,
    m_wstrDescription = "Clear Velder's Hallucination, 'Any Difficulty'",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33190 },
        m_eDungeonMode = DUNGEON_MODE["DM_SECRET_NORMAL"],
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30621,
    m_wstrDescription = "Defeat Bloody Glitter Spearman (Velder's Hallucination, 'Normal')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33190 },
        m_eDungeonMode = DUNGEON_MODE["DM_SECRET_NORMAL"],
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 918 },
        m_iKillNum = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30622,
    m_wstrDescription = "Clear Velder's Hallucination, 'Hell' mode",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33191 },
        m_eDungeonMode = DUNGEON_MODE["DM_SECRET_HELL"],
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30623,
    m_wstrDescription = "Clear Velder's Hallucination, 'Hell' mode with A rank",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_RANK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33191 },
        m_eDungeonMode = DUNGEON_MODE["DM_SECRET_HELL"],
        m_bUpperDifficulty = False,
        m_eDungeonRank = 6,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30624,
    m_wstrDescription = "Sullen Joaquin Alchemy Tools (Velder's Hallucination, 'Hell')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33191 },
        m_eDungeonMode = DUNGEON_MODE["DM_SECRET_HELL"],
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 984, 985 },
        m_iCollectionItemID = 92303,
        m_iCollectionItemNum = 2,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30625,
    m_wstrDescription = "Clear Velder's Hallucination, 'Hell' mode within 15 minutes",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_TIME"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33191 },
        m_eDungeonMode = DUNGEON_MODE["DM_SECRET_HELL"],
        m_bUpperDifficulty = False,
        m_iDungeonClearTime = 900,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30626,
    m_wstrDescription = "Defeat Sullen Joaquin in Luto's Mode (Velder's Hallucination, 'Hell')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33191 },
        m_eDungeonMode = DUNGEON_MODE["DM_SECRET_HELL"],
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 985 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30627,
    m_wstrDescription = "Bloody Glitter Defender (Velder's Hallucination, 'Normal')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33190 },
        m_eDungeonMode = DUNGEON_MODE["DM_SECRET_NORMAL"],
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 919 },
        m_iKillNum = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30628,
    m_wstrDescription = "Bloody Glitter Sniper (Velder's Hallucination, 'Normal')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33190 },
        m_eDungeonMode = DUNGEON_MODE["DM_SECRET_NORMAL"],
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 920 },
        m_iKillNum = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30630,
    m_wstrDescription = "Defeat Wally No. 8 MK-2\n\n(Richie Mine, 'Any difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30210 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 109 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30631,
    m_wstrDescription = "Talk to the local sheriff Stella\n\n(Bethma Village)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_STELLA"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30640,
    m_wstrDescription = "Defeat Nasod Bees\n\n(Cargo Airship, 'Any difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30190 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 125 },
        m_iKillNum = 15,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30641,
    m_wstrDescription = "Speak to Bethma alchemist Chacha Buch\n\n(Bethma Village)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_CHACHABUK"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30650,
    m_wstrDescription = "Defeat Raven\n\n(Black Crow, 'Any difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30240 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 238 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30651,
    m_wstrDescription = "Speak to Altera alchemist Amos\n\n(Altera Village)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_AMOS"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30660,
    m_wstrDescription = "Defeat Corrupt Nasod Driller (Return Plains, 'Any difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30250 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 198 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30661,
    m_wstrDescription = "Speak to chief Adel\n\n(Altera Village)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_ADEL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30670,
    m_wstrDescription = "Defeat Parasitic Alterasia Turret\n\n(Trasporting Tunnel B4-1, 'Any difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30260 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 222 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30671,
    m_wstrDescription = "Speak to Cobo employee Ariel\n(Any village)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_ARIEL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30680,
    m_wstrDescription = "Receive first PVP rank\n\n(Play 10 matches)",
    m_eClearType = SUB_QUEST_TYPE["SQT_PVP_PLAY_ARRANGE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iPVPPlay = 10,
        m_ePvpChannelClass = PVP_CHANNEL_CLASS["PCC_OFFICIAL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30690,
    m_wstrDescription = "Achieve 1 kill from offical PVP match",
    m_eClearType = SUB_QUEST_TYPE["SQT_PVP_KILL"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_ePVPType = PVP_GAME_TYPE["PGT_NULL"],
        m_iPVPKill = 1,
        m_ePvpChannelClass = PVP_CHANNEL_CLASS["PCC_OFFICIAL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30691,
    m_wstrDescription = "Achieve 2 kills from offical PVP match",
    m_eClearType = SUB_QUEST_TYPE["SQT_PVP_KILL"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_ePVPType = PVP_GAME_TYPE["PGT_NULL"],
        m_iPVPKill = 2,
        m_ePvpChannelClass = PVP_CHANNEL_CLASS["PCC_OFFICIAL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30692,
    m_wstrDescription = "Achieve 3 kills from offical PVP match",
    m_eClearType = SUB_QUEST_TYPE["SQT_PVP_KILL"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_ePVPType = PVP_GAME_TYPE["PGT_NULL"],
        m_iPVPKill = 3,
        m_ePvpChannelClass = PVP_CHANNEL_CLASS["PCC_OFFICIAL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30693,
    m_wstrDescription = "Achieve 1 win from offical PVP match",
    m_eClearType = SUB_QUEST_TYPE["SQT_PVP_WIN"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_ePVPType = PVP_GAME_TYPE["PGT_NULL"],
        m_iPVPWin = 1,
        m_ePvpChannelClass = PVP_CHANNEL_CLASS["PCC_OFFICIAL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30694,
    m_wstrDescription = "Achieve 2 wins from offical PVP match",
    m_eClearType = SUB_QUEST_TYPE["SQT_PVP_WIN"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_ePVPType = PVP_GAME_TYPE["PGT_NULL"],
        m_iPVPWin = 2,
        m_ePvpChannelClass = PVP_CHANNEL_CLASS["PCC_OFFICIAL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30695,
    m_wstrDescription = "Win 1 3:3 official PVP Deathmatch",
    m_eClearType = SUB_QUEST_TYPE["SQT_PVP_WIN"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_ePVPType = PVP_GAME_TYPE["PGT_TEAM_DEATH"],
        m_iPVPWin = 1,
        m_ePvpChannelClass = PVP_CHANNEL_CLASS["PCC_OFFICIAL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30696,
    m_wstrDescription = "Play 1 3:3 official PVP Deathmatch",
    m_eClearType = SUB_QUEST_TYPE["SQT_PVP_PLAY"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_ePVPType = PVP_GAME_TYPE["PGT_TEAM_DEATH"],
        m_iPVPPlay = 1,
        m_ePvpChannelClass = PVP_CHANNEL_CLASS["PCC_OFFICIAL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30697,
    m_wstrDescription = "Play 1 match in Arena\n(Leaving the game during the match will not count)",
    m_eClearType = SUB_QUEST_TYPE["SQT_PVP_PLAY"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_ePVPType = PVP_GAME_TYPE["PGT_NULL"],
        m_iPVPPlay = 1,
        m_ePvpChannelClass = PVP_CHANNEL_CLASS["PCC_OFFICIAL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30698,
    m_wstrDescription = "Play 2 matches in Arena\n(Leaving the game during the match will not count)",
    m_eClearType = SUB_QUEST_TYPE["SQT_PVP_PLAY"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_ePVPType = PVP_GAME_TYPE["PGT_NULL"],
        m_iPVPPlay = 2,
        m_ePvpChannelClass = PVP_CHANNEL_CLASS["PCC_OFFICIAL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 30699,
    m_wstrDescription = "Play 3 matches in Arena\n(Leaving the game during the match will not count)",
    m_eClearType = SUB_QUEST_TYPE["SQT_PVP_PLAY"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_ePVPType = PVP_GAME_TYPE["PGT_NULL"],
        m_iPVPPlay = 3,
        m_ePvpChannelClass = PVP_CHANNEL_CLASS["PCC_OFFICIAL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 35034,
    m_wstrDescription = "Moonstone (Glitter Necromancer in Feita region)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 360 },
        m_iCollectionItemID = 92317,
        m_iCollectionItemNum = 40,
        m_fQuestItemDropRate = 19,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 35071,
    m_wstrDescription = "Advanced Alchemy Manual (Wally Castle, ‘Any Difficulty’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30100 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 75, 76, 77 },
        m_iCollectionItemID = 92306,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 8,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 35072,
    m_wstrDescription = "Clear Wally’s Castle, ‘Any Difficulty’.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30100 },
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 35073,
    m_wstrDescription = "Elendril Research Paper (Wally No. 8, Wally’s Castle, ‘Very Hard’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30102 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 79 },
        m_iCollectionItemID = 92307,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 35080,
    m_wstrDescription = "Let’s go seek Adel in Altera.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_ADEL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 35081,
    m_wstrDescription = "Pongsten (Nasod monsters in Altera region)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 238,196,221,237,197,236,194,195,259,255,260,193,149,249,251,253,200,252,250,254,261,198,326,337,339,325,327,336,338 },
        m_iCollectionItemID = 92318,
        m_iCollectionItemNum = 7,
        m_fQuestItemDropRate = 12,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 35082,
    m_wstrDescription = "Defeat King Nasod (Altera Core ‘Any Difficulty’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30300 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 338 },
        m_iKillNum = 4,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 35083,
    m_wstrDescription = "Let’s go seek Allegro in Feita region.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_ALLEGRO"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 35084,
    m_wstrDescription = "Pure El Element (Glitter Necromancer in Feita region)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 360 },
        m_iCollectionItemID = 92319,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 8,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 35111,
    m_wstrDescription = "Nasod Hand Overheat Modification (William Phoru, The Suburbs of Wally’s Castle, ‘Very Hard’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30112 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 86 },
        m_iCollectionItemID = 92309,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 35113,
    m_wstrDescription = "Energy Core (Wally No. 8, Wally’s Castle, ‘Very Hard’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30102 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 79 },
        m_iCollectionItemID = 92308,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 35121,
    m_wstrDescription = "Collect Memory Alloy ('Nasod' Monsters in Altera regions)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 238,196,221,237,197,236,194,195,259,255,260,193,149,249,251,253,200,252,250,254,261,198,326,337,339,325,327,336,338 },
        m_iCollectionItemID = 92320,
        m_iCollectionItemNum = 30,
        m_fQuestItemDropRate = 20,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 35122,
    m_wstrDescription = "Collect Alloy Shield Pieces\n(Altera Core, Nasod Guard: Elite Shield)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30300 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 339 },
        m_iCollectionItemID = 92321,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 70,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 35123,
    m_wstrDescription = "Collect Flame Nucleus (Altera Core, Fire of Nasod Ignis)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30300 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 341 },
        m_iCollectionItemID = 92322,
        m_iCollectionItemNum = 2,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 35124,
    m_wstrDescription = "Collect Dark Steel\n(Shrine of Dedication, Durahan Knight)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32600 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 381 },
        m_iCollectionItemID = 92323,
        m_iCollectionItemNum = 3,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 35125,
    m_wstrDescription = "Collect Floating Stone\n('Golem' Monsters in Feita regions)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 379,415,380 },
        m_iCollectionItemID = 92324,
        m_iCollectionItemNum = 15,
        m_fQuestItemDropRate = 24,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 35151,
    m_wstrDescription = "Spectrum Prism (William Phoru, The Suburbs of Wally’s Castle, ‘Very Hard’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30112 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 86 },
        m_iCollectionItemID = 92313,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 35152,
    m_wstrDescription = "Laser Firing Device (Wally No. 8, Wally’s Castle, ‘Any Difficulty’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30100 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 79 },
        m_iCollectionItemID = 92314,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 35153,
    m_wstrDescription = "Clear Wally’s Castle, ‘Very Hard’.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30102 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 35161,
    m_wstrDescription = "Memory Alloy (Nasod monsters in Altera region)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 238,196,221,237,197,236,194,195,259,255,260,193,149,249,251,253,200,252,250,254,261,198,326,337,339,325,327,336,338 },
        m_iCollectionItemID = 110860,
        m_iCollectionItemNum = 7,
        m_fQuestItemDropRate = 12,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 35162,
    m_wstrDescription = "Nasods (Altera Core monsters)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30300 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 200,259,326,337,339,327,260,336,341,342,340,338 },
        m_iKillNum = 90,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 35163,
    m_wstrDescription = "King Nasod Core (King Nasod, Altera Core)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30300 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 338 },
        m_iCollectionItemID = 92325,
        m_iCollectionItemNum = 4,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 35164,
    m_wstrDescription = "Moonstone (Glitter Necromancer in Feita region)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 360 },
        m_iCollectionItemID = 92317,
        m_iCollectionItemNum = 40,
        m_fQuestItemDropRate = 19,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 35191,
    m_wstrDescription = "Ether Flask (William Phoru, The Suburbs of Wally’s Castle, ‘Very Hard’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30112 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 86 },
        m_iCollectionItemID = 92315,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 35192,
    m_wstrDescription = "Centrifugal Device (Wally No. 8, Wally’s Castle, ‘Any Difficulty’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30100 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 79 },
        m_iCollectionItemID = 92316,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 35201,
    m_wstrDescription = "Nasod ZX-32 Alloys (Nasod monsters in Altera region)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 238,196,221,237,197,236,194,195,259,255,260,193,149,249,251,253,200,252,250,254,261,198,326,337,339,325,327,336,338 },
        m_iCollectionItemID = 92349,
        m_iCollectionItemNum = 30,
        m_fQuestItemDropRate = 20,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 35202,
    m_wstrDescription = "El Fusion Reactor (King Nasod, Altera Core)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30300 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 338 },
        m_iCollectionItemID = 92350,
        m_iCollectionItemNum = 4,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 35203,
    m_wstrDescription = "Disfrozen Portal",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 92351,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 35204,
    m_wstrDescription = "Dark El (Durahan Knight, Shrine of Dedication; Teach the Tyrant, Spiral Corridor; Amethyst, Underground Chapel)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 381,380,426 },
        m_iCollectionItemID = 92352,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 35210,
    m_wstrDescription = "Clear The Suburbs of Wally's Castle, 'Hard or Higher', with B rank.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_RANK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30111 },
        m_bUpperDifficulty = True,
        m_eDungeonRank = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 35211,
    m_wstrDescription = "Collect Mechanical Steel (Nasod Banthus, Underground Waterway)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30120 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 84 },
        m_iCollectionItemID = 91020,
        m_iCollectionItemNum = 2,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 35212,
    m_wstrDescription = "Clear Banthus Cave, 'Hard or Higher'.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30051 },
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 35213,
    m_wstrDescription = "Clear Wally's Castle, 'Hard or Higher', with B rank.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_RANK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30101 },
        m_bUpperDifficulty = True,
        m_eDungeonRank = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 35222,
    m_wstrDescription = "Chat with Echo of Elder Village.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_ECHO"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 35223,
    m_wstrDescription = "Clear Underground Waterway, 'Hard', within 8 minutes.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_TIME"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30121 },
        m_bUpperDifficulty = True,
        m_iDungeonClearTime = 480,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 35224,
    m_wstrDescription = "Clear Wally's Castle, 'Very Hard'.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30102 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 35225,
    m_wstrDescription = "Clear ‘Shadow Forest, 'Very Hard', with damage 20 or lower.",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_DAMAGE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30072 },
        m_bUpperDifficulty = False,
        m_iDungeonDamage = 20,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 35240,
    m_wstrDescription = "Let’s go find Adel in Altera.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_ADEL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 35250,
    m_wstrDescription = "Memory Alloy (Nasod monsters in Altera region)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 238,196,221,237,197,236,194,195,259,255,260,193,149,249,251,253,200,252,250,254,261,198,326,337,339,325,327,336,338 },
        m_iCollectionItemID = 110851,
        m_iCollectionItemNum = 30,
        m_fQuestItemDropRate = 20,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 35260,
    m_wstrDescription = "Defeat Crow Rider (Nasod Foundry, ‘Any Difficulty’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30280 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 261 },
        m_iKillNum = 4,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 35261,
    m_wstrDescription = "Defeat King Nasod (Altera Core, ‘Any Difficulty’)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30300 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 338 },
        m_iKillNum = 4,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 35270,
    m_wstrDescription = "Go to Lento in Feita region.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_LENTO"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 35280,
    m_wstrDescription = "Glitter Insignia (Glitter monsters in Feita region)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 356, 357, 358, 359, 360, 416, 417, 419 },
        m_iCollectionItemID = 110852,
        m_iCollectionItemNum = 100,
        m_fQuestItemDropRate = 26,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 35332,
    m_wstrDescription = "Clear Underground Waterway, 'Hard or higher'",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30121 },
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 35333,
    m_wstrDescription = "Clear Wally's Castle, 'Very Hard' ",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30102 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 35380,
    m_wstrDescription = "Clear The Suburbs of Wally's Castle, 'Very Hard'",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30112 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 35390,
    m_wstrDescription = "Book of Enlightenment",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 92389,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 40120,
    m_wstrDescription = "Play 1 match in Arena\n(Leaving the game during the match will not count)",
    m_eClearType = SUB_QUEST_TYPE["SQT_PVP_PLAY"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_ePVPType = PVP_GAME_TYPE["PGT_NULL"],
        m_iPVPPlay = 1,
        m_ePvpChannelClass = PVP_CHANNEL_CLASS["PCC_OFFICIAL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 40324,
    m_wstrDescription = "Chat with Sander Village's Alchemist Vapor.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_VAPOR"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 60700,
    m_wstrDescription = "Lost Documents",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30300 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 200,259,260,336,339,337,340,341,342,338 },
        m_iCollectionItemID = 60003468,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 15,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 60710,
    m_wstrDescription = "El Energy Storage Devices",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30300 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 326, 327 },
        m_iCollectionItemID = 60003476,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 63500,
    m_wstrDescription = "Defeat 1 Field Boss ",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5115, 5116, 5117, 5118, 5119, 5120, 5121, 5122, 5123 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 63510,
    m_wstrDescription = "Defeat 1 Uool & Illy",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5115, 5116 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 63520,
    m_wstrDescription = "Defeat 1 Vescoo",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5117 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 63530,
    m_wstrDescription = "Defeat 1 Sleshu",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5118 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 63540,
    m_wstrDescription = "Defeat 1 Bater",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5119 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 63550,
    m_wstrDescription = "Defeat 1 Lanos & Shinee & Moonstar",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5120, 5121, 5122 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 63560,
    m_wstrDescription = "Defeat 1 Stone God",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5123 },
        m_iKillNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 63610,
    m_wstrDescription = "Haan",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 60007001,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 63611,
    m_wstrDescription = "Sacred Animal",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 60007002,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 63612,
    m_wstrDescription = "Warrior",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 60007003,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 63613,
    m_wstrDescription = "Aren",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 60007004,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 63614,
    m_wstrDescription = "North Fluone Continent",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 60007005,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 63620,
    m_wstrDescription = "Haan",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 60007001,
        m_iCollectionItemNum = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 63621,
    m_wstrDescription = "Sacred Animal",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 60007002,
        m_iCollectionItemNum = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 63622,
    m_wstrDescription = "Warrior",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 60007003,
        m_iCollectionItemNum = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 63623,
    m_wstrDescription = "Aren",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 60007004,
        m_iCollectionItemNum = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 63624,
    m_wstrDescription = "North Fluone Continent",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 60007005,
        m_iCollectionItemNum = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 63630,
    m_wstrDescription = "Haan",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 60007001,
        m_iCollectionItemNum = 9,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 63631,
    m_wstrDescription = "Sacred Animal",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 60007002,
        m_iCollectionItemNum = 9,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 63632,
    m_wstrDescription = "Warrior",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 60007003,
        m_iCollectionItemNum = 9,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 63633,
    m_wstrDescription = "Aren",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 60007004,
        m_iCollectionItemNum = 9,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 63634,
    m_wstrDescription = "North Fluone Continent",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 60007005,
        m_iCollectionItemNum = 9,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 63640,
    m_wstrDescription = "[Event] Fennec Fox Tail (White)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 78,40,84,86,79,92,126,488,108,109,171,381,380,426,428,432,450,238,198,222,233,261,338,477,478,607,613,622,481,717,718,719,720,721,722,723,521,523,522,524,571,581,948,984,1164,1174,1202,1219,1215,1216,1217,1218,1172,1173 },
        m_iCollectionItemID = 60007007,
        m_iCollectionItemNum = 3,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 63641,
    m_wstrDescription = "[Event] Fennec Fox Tail (Yellow)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 78,40,84,86,79,92,126,488,108,109,171,381,380,426,428,432,450,238,198,222,233,261,338,477,478,607,613,622,481,717,718,719,720,721,722,723,521,523,522,524,571,581,948,984,1164,1174,1202,1219,1215,1216,1217,1218,1172,1173 },
        m_iCollectionItemID = 60007008,
        m_iCollectionItemNum = 3,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 63642,
    m_wstrDescription = "[Event] Gray Wolf Storm Tail (Gray)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 78,40,84,86,79,92,126,488,108,109,171,381,380,426,428,432,450,238,198,222,233,261,338,477,478,607,613,622,481,717,718,719,720,721,722,723,521,523,522,524,571,581,948,984,1164,1174,1202,1219,1215,1216,1217,1218,1172,1173 },
        m_iCollectionItemID = 60007009,
        m_iCollectionItemNum = 3,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 63720,
    m_wstrDescription = "Collect 10 Traces of Aren",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5004,5005,5006,5007,5008,5009,5010,5011,5012,5013,5014,5015,5016,5017,5018,5019,5020,5021,5022,5023,5024,5025,5026,5027,5028,5029,5030,5031,5032,5033,5034,5035,5036,5037,5038,5039,5040,5041,5042,5043,5044,5045,5046,5047,5048,5049,5050,5051,5052,5053,5054,5055,5056,5057,5058,5059,5060,5061,5062,5063,5064,5065,5066,5067,5068,5069,5070,5071,5072,5073,5074,5075,5076,5077,5078,5079,5080,5081,5082,5083,5087,5088,5089,5090,5091,5092,5093,5094,5095,5096,5097,5098,5099,5100,5101,5102,5103,5104,5105,5106,5107,5108,5109,5110,5111,5112,5113,5114,5115,5116,5117,5118,5119,5120,5121,5122,5123,5124 },
        m_iCollectionItemID = 60007340,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 63730,
    m_wstrDescription = "Defeat Banthus (Banthus Cave, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30050 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 40 },
        m_iKillNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 63731,
    m_wstrDescription = "Defeat Wally No. 8 (Wally's Castle, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30100 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 79 },
        m_iKillNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 63740,
    m_wstrDescription = "Collect 10 Traces of Aren",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5004,5005,5006,5007,5008,5009,5010,5011,5012,5013,5014,5015,5016,5017,5018,5019,5020,5021,5022,5023,5024,5025,5026,5027,5028,5029,5030,5031,5032,5033,5034,5035,5036,5037,5038,5039,5040,5041,5042,5043,5044,5045,5046,5047,5048,5049,5050,5051,5052,5053,5054,5055,5056,5057,5058,5059,5060,5061,5062,5063,5064,5065,5066,5067,5068,5069,5070,5071,5072,5073,5074,5075,5076,5077,5078,5079,5080,5081,5082,5083,5087,5088,5089,5090,5091,5092,5093,5094,5095,5096,5097,5098,5099,5100,5101,5102,5103,5104,5105,5106,5107,5108,5109,5110,5111,5112,5113,5114,5115,5116,5117,5118,5119,5120,5121,5122,5123,5124 },
        m_iCollectionItemID = 60007340,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 63750,
    m_wstrDescription = "Collect Unknown Spear Pieces",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 60007341,
        m_iCollectionItemNum = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 63760,
    m_wstrDescription = "Collect Aren's Broken Spear Pieces",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 60007342,
        m_iCollectionItemNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 63910,
    m_wstrDescription = "Clear Dungeons with less than lvl 3 difference",
    m_eClearType = SUB_QUEST_TYPE["SQT_SUITABLE_LEVEL_DUNGEON_CLEAR"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 63920,
    m_wstrDescription = "Hunt Field Monsters",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5004,5005,5006,5007,5008,5009,5010,5011,5012,5013,5014,5015,5016,5017,5018,5019,5020,5021,5022,5023,5024,5025,5026,5027,5028,5029,5030,5031,5032,5033,5034,5035,5036,5037,5038,5039,5040,5041,5042,5043,5044,5045,5046,5047,5048,5049,5050,5051,5052,5053,5054,5055,5056,5057,5058,5059,5060,5061,5062,5063,5064,5065,5066,5067,5068,5069,5070,5071,5072,5073,5074,5075,5076,5077,5078,5079,5080,5081,5082,5083,5087,5088,5089,5090,5091,5092,5093,5094,5095,5096,5097,5098,5099,5100,5101,5102,5103,5104,5105,5106,5107,5108,5109,5110,5111,5112,5113,5114,5115,5116,5117,5118,5119,5120,5121,5122,5123,5124 },
        m_iKillNum = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 63930,
    m_wstrDescription = "Win an Arena match",
    m_eClearType = SUB_QUEST_TYPE["SQT_PVP_WIN"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_ePVPType = PVP_GAME_TYPE["PGT_NULL"],
        m_iPVPWin = 3,
        m_ePvpChannelClass = PVP_CHANNEL_CLASS["PCC_OFFICIAL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 63931,
    m_wstrDescription = "Collect the Half Torn Black Letter",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 60008006,
        m_iCollectionItemNum = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 63940,
    m_wstrDescription = "Defeat Ran's Illusion in a dungeon",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 663 },
        m_iKillNum = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 63950,
    m_wstrDescription = "Defeat Ran's Illusion in a field",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 664 },
        m_iKillNum = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 63960,
    m_wstrDescription = "Collect Cobo's Energy Drink",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 60008010,
        m_iCollectionItemNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 63961,
    m_wstrDescription = "Collect Cobo's Vitamin",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 60008011,
        m_iCollectionItemNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 63962,
    m_wstrDescription = "Play through a dungeon with a Little Devil",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74100,
    m_wstrDescription = "Collect 10 Golden Sand Pouch",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 15,27,28,29,43,44,45,46,47,48,71,73,77,78,79,81,82,83,85,87,91,93,94,95,97,99,104,106,107,111,112,113,115,119,120,125,127,149,151,165,168,169,173,175,194,195,202,203,204,205,208,251,253,255,336,337,338,339,340,341,342,356,357,358,359,379,380,382,416,417,418,419,420,424,427,428,450,458,459,460,461,462,463,465,470,471,472,473,476489,490,491,492,493,523,524,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,549,550,551,552,553,555,556,557,558,559,560,561,562,563,564,565,566,572,573,574,575,576,578,579,580,581,582,583,584,585,586,588,589,590,608,611,612,636,644,645,687,688,689,690,691,693,694,695,696,697,698,699,700,701,702,703,704,705,708,725,726,727,731,732,737,744,792,793,794,795,796,799,835,862,867,868,869,870,871,872,873,918,919,920,921,922,923,924,925,926,927,937,956,962,963,964,965,966,967,968,969,970,971,980,984,1151,1152,1153,1154,1155,1156,1157,1158,1159,1160,1161,1162,1164,1165,1166,1167,1168,1169,1170,1171,1172,1173,1174,1191,1192,1193,1194,1195,1196,1197,1198,1199,1200,1201,1202,1209,1210,1211,1212,1213,1214,1215,1216,1217,1218,1219 },
        m_iCollectionItemID = 67006174,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74110,
    m_wstrDescription = "Collect Sander Village's Special Sand Statue",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 67006175,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74111,
    m_wstrDescription = "Collect 10 Wind El Shard",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 15,20,21,27,28,29,43,44,45,46,47,48,71,73,75,76,77,78,79,81,82,83,85,87,91,93,94,95,97,99,104,106,107,111,112,113,115,117,118,119,120,125,126,127,143,149,151,165,168,169,171,173,175,193,194,195,196,197,200,202,203,204,205,208,219,220,221,228,229,231,236,237,251,253,255,259,260,336,337,338,339,340,341,342,356,357,358,359,360,379,380,382,415,416,417,418,419,420,424,425,427,428,429,431,439,450,458,459,460,461,462,463,464,465,470,471,472,473,474,475,476,488,489,490,491,492,493,523,524,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,549,550,551,552,553,554,555,556,557,558,559,560,561,562,563,564,565,566,572,573,574,575,576,578,579,580,581,582,583,584,585,586,588,589,590,608,610,611,612,629,636,644,645,687,688,689,690,691,693,694,695,696,697,698,699,700,701,702,703,704,705,708,725,726,727,731,732,737,744,792,793,794,795,796,799,835,862,867,868,869,870,871,872,873,918,919,920,921,922,923,924,925,926,927,935,936,937,944,956,962,963,964,965,966,967,968,969,970,971,976,977,980,984,1151,1152,1153,1154,1155,1156,1157,1158,1159,1160,1161,1162,1164,1165,1166,1167,1168,1169,1170,1171,1172,1173,1174,1191,1192,1193,1194,1195,1196,1197,1198,1199,1200,1201,1202,1209,1210,1211,1212,1213,1214,1215,1216,1217,1218,1219 },
        m_iCollectionItemID = 67006176,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74120,
    m_wstrDescription = "Collect 1 Wind El",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 67006177,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74121,
    m_wstrDescription = "Collect 10 Sander Merchants Collaborative Sales Ad",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 15,20,21,27,28,29,43,44,45,46,47,48,71,73,75,76,77,78,79,81,82,83,85,87,91,93,94,95,97,99,104,106,107,111,112,113,115,117,118,119,120,125,126,127,143,149,151,165,168,169,171,173,175,193,194,195,196,197,200,202,203,204,205,208,219,220,221,228,229,231,236,237,251,253,255,259,260,336,337,338,339,340,341,342,356,357,358,359,360,379,380,382,415,416,417,418,419,420,424,425,427,428,429,431,439,450,458,459,460,461,462,463,464,465,470,471,472,473,474,475,476,488,489,490,491,492,493,523,524,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,549,550,551,552,553,554,555,556,557,558,559,560,561,562,563,564,565,566,572,573,574,575,576,578,579,580,581,582,583,584,585,586,588,589,590,608,610,611,612,629,636,644,645,687,688,689,690,691,693,694,695,696,697,698,699,700,701,702,703,704,705,708,725,726,727,731,732,737,744,792,793,794,795,796,799,835,862,867,868,869,870,871,872,873,918,919,920,921,922,923,924,925,926,927,935,936,937,944,956,962,963,964,965,966,967,968,969,970,971,976,977,980,984,1151,1152,1153,1154,1155,1156,1157,1158,1159,1160,1161,1162,1164,1165,1166,1167,1168,1169,1170,1171,1172,1173,1174,1191,1192,1193,1194,1195,1196,1197,1198,1199,1200,1201,1202,1209,1210,1211,1212,1213,1214,1215,1216,1217,1218,1219 },
        m_iCollectionItemID = 67006178,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74130,
    m_wstrDescription = "Collect 10 Richian's Letter",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 15,20,21,27,28,29,43,44,45,46,47,48,71,73,75,76,77,78,79,81,82,83,85,87,91,93,94,95,97,99,104,106,107,111,112,113,115,117,118,119,120,125,126,127,143,149,151,165,168,169,171,173,175,193,194,195,196,197,200,202,203,204,205,208,219,220,221,228,229,231,236,237,251,253,255,259,260,336,337,338,339,340,341,342,356,357,358,359,360,379,380,382,415,416,417,418,419,420,424,425,427,428,429,431,439,450,458,459,460,461,462,463,464,465,470,471,472,473,474,475,476,488,489,490,491,492,493,523,524,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,549,550,551,552,553,554,555,556,557,558,559,560,561,562,563,564,565,566,572,573,574,575,576,578,579,580,581,582,583,584,585,586,588,589,590,608,610,611,612,629,636,644,645,687,688,689,690,691,693,694,695,696,697,698,699,700,701,702,703,704,705,708,725,726,727,731,732,737,744,792,793,794,795,796,799,835,862,867,868,869,870,871,872,873,918,919,920,921,922,923,924,925,926,927,935,936,937,944,956,962,963,964,965,966,967,968,969,970,971,976,977,980,984,1151,1152,1153,1154,1155,1156,1157,1158,1159,1160,1161,1162,1164,1165,1166,1167,1168,1169,1170,1171,1172,1173,1174,1191,1192,1193,1194,1195,1196,1197,1198,1199,1200,1201,1202,1209,1210,1211,1212,1213,1214,1215,1216,1217,1218,1219 },
        m_iCollectionItemID = 67006179,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74131,
    m_wstrDescription = "Collect 1 Sander Merchants Collaborative Sales Item",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 67006180,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74200,
    m_wstrDescription = "Clear Barren Sander normal mode 3 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33200 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74210,
    m_wstrDescription = "Clear Garpai Rock Normal 3 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33210 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74220,
    m_wstrDescription = "Clear Barren Sander Hard or Higher 2 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33201 },
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74230,
    m_wstrDescription = "Clear Garpai Rock Hard or Higher 2 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33211 },
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74240,
    m_wstrDescription = "Defeat Banthus (Underground Waterway, 'Very Hard')",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30122 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 84 },
        m_iKillNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74241,
    m_wstrDescription = "Collect 1 path of a Warrior",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 70007205,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74250,
    m_wstrDescription = "Wally's Castle 'Very Hard', Clear 5 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30102 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74251,
    m_wstrDescription = "Collect 1 rightous path of a Warrior",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 70007206,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74260,
    m_wstrDescription = "Shrine of Dedication 'Very Hard', Defeat Durahan 5 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32602 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 381 },
        m_iKillNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74261,
    m_wstrDescription = "Collect 1 Way of the Judge",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 70007207,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74270,
    m_wstrDescription = "Collect 10 Advice for Strength",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5004,5005,5006,5007,5008,5009,5010,5011,5012,5013,5014,5015,5016,5017,5018,5019,5020,5021,5022,5023,5024,5025,5026,5027,5028,5029,5030,5031,5032,5033,5034,5035,5036,5037,5038,5039,5040,5041,5042,5043,5044,5045,5046,5047,5048,5049,5050,5051,5052,5053,5054,5055,5056,5057,5058,5059,5060,5061,5062,5063,5064,5065,5066,5067,5068,5069,5070,5071,5072,5073,5074,5075,5076,5077,5078,5079,5080,5081,5082,5083,5087,5088,5089,5090,5091,5092,5093,5094,5095,5096,5097,5098,5099,5100,5101,5102,5103,5104,5105,5106,5107,5108,5109,5110,5111,5112,5113,5114,5115,5116,5117,5118,5119,5120,5121,5122,5123,5124 },
        m_iCollectionItemID = 70007214,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 4,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74271,
    m_wstrDescription = "Collect 1 Collection of Advice for Ara",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 70007211,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74280,
    m_wstrDescription = "Collect 10 Advice for Strong Skills ",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 78,40,84,86,79,92,126,488,108,109,171,381,380,426,428,432,450,238,198,222,233,261,338,477,478,607,613,622,481,717,718,719,720,721,722,723,521,523,522,524,571,581,948,984,1164,1174,1202,1219,1215,1216,1217,1218,1172,1173 },
        m_iCollectionItemID = 70007215,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 60,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74281,
    m_wstrDescription = "Collect 1 Collection of Advice for Ara",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 70007212,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74290,
    m_wstrDescription = "Collect 10 Advice for a Strong Mind ",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 78,40,84,86,79,92,126,488,108,109,171,381,380,426,428,432,450,238,198,222,233,261,338,477,478,607,613,622,481,717,718,719,720,721,722,723,521,523,522,524,571,581,948,984,1164,1174,1202,1219,1215,1216,1217,1218,1172,1173 },
        m_iCollectionItemID = 70007216,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 60,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74291,
    m_wstrDescription = "Collect 1 Collection of Advice for Ara",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 70007213,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74340,
    m_wstrDescription = "Trock's Traces",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 15,20,27,28,40,43,44,45,46,47,48,71,73,74,75,76,77,78,79,81,82,83,84,85,86,87,95,97,99,106,117,118,208,521,523,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,629,956 },
        m_iCollectionItemID = 60007464,
        m_iCollectionItemNum = 30,
        m_fQuestItemDropRate = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74350,
    m_wstrDescription = "Caluso's Spirit",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 91,92,93,94,104,107,108,109,111,112,113,115,119,120,125,126,127,143,151,165,168,169,170,171,173,175,488,489,490,491,492,493,522,524,525,544,545,546,547,549,550,551,552,553,554,555,556,557,558,559,560,561,562,563,644,645 },
        m_iCollectionItemID = 60007465,
        m_iCollectionItemNum = 30,
        m_fQuestItemDropRate = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74360,
    m_wstrDescription = "Oba Trock's Mask Pieces",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 356,357,358,359,360,379,380,381,382,415,416,417,418,419,420,421,422,423,424,425,426,427,428,429,431,432,439,450,504,505,506,507,509,515,516,517,518,784,785,786 },
        m_iCollectionItemID = 60007466,
        m_iCollectionItemNum = 30,
        m_fQuestItemDropRate = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74370,
    m_wstrDescription = "Harpy's Feather",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 425,458,459,460,461,462,463,464,465,466,467,468,470,471,472,473,474,475,476,477,478,481,607,608,610,611,612,613,622,634,918,919,920,921,922,923,924,925,926,927,935,936,937,944,948,962,963,964,965,966,967,968,969,970,971,976,977,980,984 },
        m_iCollectionItemID = 60007467,
        m_iCollectionItemNum = 30,
        m_fQuestItemDropRate = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74380,
    m_wstrDescription = "Clear Barren Sander (Very Hard) 5 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33202 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74381,
    m_wstrDescription = "Toggy's Training Whip",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 182510,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74390,
    m_wstrDescription = "Clear Garpai Rock (Very Hard) 5 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33212 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74391,
    m_wstrDescription = "Aello's Golden Wings",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 182511,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74400,
    m_wstrDescription = "Clear Trock's Lair (Very Hard) 5 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33222 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74401,
    m_wstrDescription = "Oba Trock's Mask",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 182512,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74410,
    m_wstrDescription = "Clear Caluso Tribal Village (Very Hard) 5 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33232 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74411,
    m_wstrDescription = "Caluso Warrior's Katar",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 182513,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74412,
    m_wstrDescription = "Master's Upgrade Ticket",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 85003810,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74440,
    m_wstrDescription = "Defeat Dungeon Bosses except in Ruben!",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 78,40,84,86,79,92,126,488,108,109,171,381,380,426,428,432,450,238,198,222,233,261,338,477,478,607,613,622,481,717,718,719,720,721,722,723,521,523,522,524,571,581,948,984,1164,1174,1202,1219,1215,1216,1217,1218,1172,1173 },
        m_iKillNum = 7,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74450,
    m_wstrDescription = "Defeat Field Bosses all over Elrios!",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5115,5116,5117,5118,5119,5120,5121,5122,5123,5124 },
        m_iKillNum = 7,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74510,
    m_wstrDescription = "Defeat monsters from the Gate of Darkness in the Elder, Bethma and Altera Fields.",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 662, 663, 664, 665 },
        m_iKillNum = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74520,
    m_wstrDescription = "Use the Unknown Monster Card",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_USE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_listUseItemID = { 67006219 },
        m_iUseItemCnt = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74521,
    m_wstrDescription = "Clear dungeons which gives EXP (Except Ruben and Henir Dungeon)",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74530,
    m_wstrDescription = "Enter the Gate of Darkness",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_DUNGEON"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 38300 },
        m_bUpperDifficulty = False,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74540,
    m_wstrDescription = "Defeat a Giant Guardian",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 1349, 1350, 1351, 1352, 1353, 1354, 1355, 1356, 1357 },
        m_iKillNum = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74550,
    m_wstrDescription = "Clear the Gate of Darkness",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 38300 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74560,
    m_wstrDescription = "Clear Gate of Darkness with 4 party members once",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 38300 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74570,
    m_wstrDescription = "Collect Rider Member Registration",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 15,27,28,29,43,44,45,46,47,48,71,73,77,78,79,81,82,83,85,87,91,93,94,95,97,99,104,106,107,111,112,113,115,119,120,125,127,149,151,165,168,169,173,175,194,195,202,203,204,205,208,251,253,255,336,337,338,339,340,341,342,356,357,358,359,379,380,382,416,417,418,419,420,424,427,428,450,458,459,460,461,462,463,465,470,471,472,473,476489,490,491,492,493,523,524,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,549,550,551,552,553,555,556,557,558,559,560,561,562,563,564,565,566,572,573,574,575,576,578,579,580,581,582,583,584,585,586,588,589,590,608,611,612,636,644,645,687,688,689,690,691,693,694,695,696,697,698,699,700,701,702,703,704,705,708,725,726,727,731,732,737,744,792,793,794,795,796,799,835,862,867,868,869,870,871,872,873,918,919,920,921,922,923,924,925,926,927,937,956,962,963,964,965,966,967,968,969,970,971,980,984,1151,1152,1153,1154,1155,1156,1157,1158,1159,1160,1161,1162,1164,1165,1166,1167,1168,1169,1170,1171,1172,1173,1174,1191,1192,1193,1194,1195,1196,1197,1198,1199,1200,1201,1202,1209,1210,1211,1212,1213,1214,1215,1216,1217,1218,1219 },
        m_iCollectionItemID = 67006320,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74580,
    m_wstrDescription = "Clear dungeons that award EXP using an event mount",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74581,
    m_wstrDescription = "Defeat a Field Boss using your mount",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5115, 5116, 5117, 5118, 5119, 5120, 5121, 5122, 5123, 5124 },
        m_iKillNum = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74590,
    m_wstrDescription = "Collect a Thank You Letter",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 67006347,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74600,
    m_wstrDescription = "Collect ROO!KIE!RIDER! Accessory",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 67006390,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74601,
    m_wstrDescription = "Collect the Pro Rider Practice Certificate",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 67006321,
        m_iCollectionItemNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74602,
    m_wstrDescription = "Collect ROO!KIE!RIDER! Accessory",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 67006391,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74603,
    m_wstrDescription = "Collect ROO!KIE!RIDER! Accessory",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 67006392,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74604,
    m_wstrDescription = "Collect ROO!KIE!RIDER! Accessory",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 67006393,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74605,
    m_wstrDescription = "Collect ROO!KIE!RIDER! Accessory",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 67006394,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74606,
    m_wstrDescription = "Collect ROO!KIE!RIDER! Accessory",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 67006395,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74607,
    m_wstrDescription = "Collect ROO!KIE!RIDER! Accessory",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 67006396,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74610,
    m_wstrDescription = "Collect the Pro Rider Practice Certificate",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 67006321,
        m_iCollectionItemNum = 4,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74620,
    m_wstrDescription = "Clear dungeons that award EXP using an Item Mall mount",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74630,
    m_wstrDescription = "Talk with Ariel",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_ARIEL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74640,
    m_wstrDescription = "노전직 스킬 배우기",
    m_eClearType = SUB_QUEST_TYPE["SQT_LEARN_NEW_SKILL"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_vecSkillID = { 104, 200, 201, 202, 204, 205, 206, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 901, 902, 903, 1000, 1001, 1002, 1003, 1200, 1201, 1202, 1205, 1206, 1207, 2000, 2001, 2002, 2003, 2200, 2201, 2202, 2203, 2205, 2206, 3000, 3001, 3002, 3003, 3200, 3201, 3202, 3204, 3205, 4000, 4001, 4002, 4200, 4201, 4202, 4203, 4204, 4205, 4206, 5000, 5001, 5002, 5003, 5200, 5201, 5202, 5205, 5207, 5219, 6000, 6001, 6002, 6003, 6200, 6201, 6202, 6203, 6205, 7000, 7001, 7002, 7003, 7200, 7201, 7203, 7204, 7205, 7206, 7207 },
        m_iLearnNewSkillCount = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74641,
    m_wstrDescription = "Use base job skills in dungeons 10 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_SKILL_USE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_vecSkillID = { 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 901, 902, 903, 1000, 1001, 1002, 1003, 1200, 1201, 1202, 1205, 1206, 1207, 2000, 2001, 2002, 2003, 2200, 2201, 2202, 2203, 2205, 2206, 3000, 3001, 3002, 3003, 3200, 3201, 3202, 3204, 3205, 4000, 4001, 4002, 4200, 4201, 4202, 4203, 4204, 4205, 4206, 5000, 5001, 5002, 5003, 5200, 5201, 5202, 5205, 5207, 5219, 6000, 6001, 6002, 6003, 6200, 6201, 6202, 6203, 6205, 7000, 7001, 7002, 7003, 7200, 7201, 7203, 7204, 7205, 7206, 7207 },
        m_iUseSkillCount = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74650,
    m_wstrDescription = "1차 전직 스킬 배우기",
    m_eClearType = SUB_QUEST_TYPE["SQT_LEARN_NEW_SKILL"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_vecSkillID = { 100, 101, 203, 1004, 1005, 1006, 1009, 1010, 1011, 1012, 1015, 1016, 1018, 1203, 1204, 1208, 1209, 1210, 1214, 1215, 1217, 1222, 1223, 1224, 1401, 1402, 1407, 1411, 1412, 2004, 2005, 2006, 2007, 2010, 2011, 2012, 2013, 2016, 2017, 2018, 2019, 2204, 2207, 2208, 2213, 2214, 2215, 2219, 2220, 2400, 2401, 2402, 2406, 2407, 2413, 2414, 3004, 3005, 3006, 3010, 3011, 3013, 3015, 3018, 3019, 3203, 3206, 3207, 3208, 3214, 3215, 3216, 3223, 3224, 3225, 3228, 3229, 3400, 3401, 3402, 3405, 3406, 3407, 3410, 4003, 4004, 4005, 4006, 4011, 4012, 4013, 4015, 4016, 4017, 4018, 4019, 4020, 4207, 4208, 4212, 4213, 4214, 4215, 4216, 4219, 4220, 4400, 4402, 4403, 4404, 4413, 5004, 5005, 5006, 5010, 5011, 5012, 5013, 5016, 5017, 5018, 5019, 5020, 5024, 5204, 5208, 5209, 5210, 5215, 5400, 5402, 5403, 5404, 5409, 6004, 6005, 6006, 6007, 6011, 6012, 6013, 6016, 6017, 6018, 6204, 6206, 6207, 6208, 6212, 6213, 6214, 6215, 6220, 6221, 6222, 6223, 6400, 6402, 6403, 6406, 6407, 6412, 6413, 7004, 7006, 7009, 7010, 7011, 7014, 7015, 7021, 7023, 7202, 7208, 7209, 7210, 7211, 7214, 7215, 7217, 7219, 7400, 7401, 7402, 8004, 8005, 8006, 8007, 8008, 8009, 8010, 8011, 8012, 8203, 8207, 8208, 8209, 8210, 8211, 8212, 8213, 8400, 8401, 8402, 8403, },
        m_iLearnNewSkillCount = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74651,
    m_wstrDescription = "Use 1st Job Class Skills in dungeons 10 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_SKILL_USE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_vecSkillID = { 1004, 1005, 1006, 1009, 1010, 1011, 1012, 1015, 1016, 1018, 1203, 1204, 1208, 1209, 1210, 1214, 1215, 1217, 1222, 1223, 1224, 2004, 2005, 2006, 2007, 2010, 2011, 2012, 2013, 2016, 2017, 2018, 2019, 2204, 2207, 2208, 2213, 2214, 2215, 2219, 2220, 3004, 3005, 3006, 3010, 3011, 3013, 3015, 3018, 3019, 3203, 3206, 3207, 3208, 3214, 3215, 3216, 3223, 3224, 3225, 3228, 3229, 4003, 4004, 4005, 4006, 4011, 4012, 4013, 4015, 4016, 4017, 4018, 4019, 4020, 4207, 4208, 4212, 4213, 4214, 4215, 4216, 4219, 4220, 5004, 5005, 5006, 5010, 5011, 5012, 5013, 5016, 5017, 5018, 5019, 5020, 5024, 5204, 5208, 5209, 5210, 5215, 6004, 6005, 6006, 6007, 6011, 6012, 6013, 6016, 6017, 6018, 6204, 6206, 6207, 6208, 6212, 6213, 6214, 6215, 6220, 6221, 6222, 6223, 7004, 7006, 7009, 7010, 7011, 7014, 7015, 7021, 7023, 7202, 7208, 7209, 7210, 7211, 7214, 7215, 7217, 7219, },
        m_iUseSkillCount = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74660,
    m_wstrDescription = "2차 전직 스킬 배우기",
    m_eClearType = SUB_QUEST_TYPE["SQT_LEARN_NEW_SKILL"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_vecSkillID = { 102, 103, 1211, 1212, 1213, 1216, 1218, 1219, 1220, 1221, 1225, 1226, 1227, 1405, 1406, 1408, 1410, 1413, 1415, 2209, 2210, 2211, 2212, 2216, 2217, 2218, 2221, 2222, 2223, 2224, 2225, 2404, 2409, 2412, 3007, 3012, 3014, 3016, 3017, 3209, 3210, 3211, 3212, 3213, 3219, 3220, 3221, 3222, 3227, 3412, 3413, 4007, 4014, 4021, 4209, 4210, 4211, 4218, 4221, 4222, 4401, 4405, 4408, 4410, 4412, 4415, 4416, 5014, 5015, 5206, 5211, 5212, 5213, 5214, 5218, 5220, 5221, 5401, 5411, 5412, 6008, 6014, 6015, 6021, 6022, 6209, 6210, 6211, 6216, 6219, 6224, 6225, 6409, 6415, 7005, 7013, 7022, 7212, 7213, 7216, 7218, 7403, 7404, 7407, 7408, 7410, 7411, 8013, 8014, 8015, 8016, 8214, 8215, 8216, 8217, 8218, 8219, 8406, 8409, 105, 1007, 1008, 1013, 1014, 1017, 1019, 1400, 1403, 1404, 1409, 1414, 1416, 2008, 2009, 2014, 2015, 2020, 2021, 2403, 2405, 2408, 2410, 2411, 2415, 2416, 2417, 3008, 3009, 3020, 3217, 3218, 3226, 3230, 3231, 3403, 3404, 3408, 3409, 3411, 4008, 4009, 4010, 4022, 4023, 4217, 4406, 4407, 4409, 4411, 4414, 4417, 4418, 5007, 5008, 5009, 5021, 5022, 5023, 5203, 5216, 5217, 5405, 5406, 5407, 5408, 5410, 5413, 6009, 6010, 6019, 6020, 6217, 6218, 6226, 6401, 6404, 6405, 6408, 6410, 6411, 6414, 6416, 7007, 7008, 
 },
        m_iLearnNewSkillCount = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74661,
    m_wstrDescription = "Use 2nd Job Class Skills in dungeons 10 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_SKILL_USE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_vecSkillID = { 1211, 1212, 1213, 1216, 1218, 1219, 1220, 1221, 1225, 1226, 1227, 2209, 2210, 2211, 2212, 2216, 2217, 2218, 2221, 2222, 2223, 2224, 2225, 3007, 3012, 3014, 3016, 3017, 3209, 3210, 3211, 3212, 3213, 3219, 3220, 3221, 3222, 3227, 4007, 4014, 4021, 4209, 4210, 4211, 4218, 4221, 4222, 5014, 5015, 5206, 5211, 5212, 5213, 5214, 5218, 5220, 5221, 7005, 7013, 7022, 7212, 7213, 7216, 7218, 1007, 1008, 1013, 1014, 1017, 1019, 2008, 2009, 2014, 2015, 2020, 2021, 3008, 3009, 3020, 3217, 3218, 3226, 3230, 3231, 4008, 4009, 4010, 4022, 4023, 4217, 5007, 5008, 5009, 5021, 5022, 5023, 5203, 5216, 5217, 6009, 6010, 6019, 6020, 6217, 6218, 6226, 7007, 7008, 7405, 7406, 6008, 6014, 6015, 6021, 6022, 6209, 6210, 6211, 6216, 6219, 6224, 6225, },
        m_iUseSkillCount = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74670,
    m_wstrDescription = "Collect 1 Skill Note Exchange Ticket",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 67006510,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 77370,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 1 time",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 77440,
    m_wstrDescription = "Chat with Code Battle Seraph",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_EVENT_APINK_ARCHANGEL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 77450,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 difference 1 time with Code Battle Seraph",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 77460,
    m_wstrDescription = "Bring 5 Code Power",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 80002230,
        m_iCollectionItemNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 77470,
    m_wstrDescription = "Bring 5 Code Power",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 80002230,
        m_iCollectionItemNum = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 77480,
    m_wstrDescription = "Energy Needles (5 Days)",
    m_eClearType = SUB_QUEST_TYPE["SQT_SKILL_USE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_vecSkillID = { 3025 },
        m_iUseSkillCount = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 77490,
    m_wstrDescription = "Taser Pilum (5 Days)",
    m_eClearType = SUB_QUEST_TYPE["SQT_SKILL_USE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_vecSkillID = { 3209 },
        m_iUseSkillCount = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 77500,
    m_wstrDescription = "Energetic Heart (5 Days)",
    m_eClearType = SUB_QUEST_TYPE["SQT_SKILL_USE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_vecSkillID = { 3026 },
        m_iUseSkillCount = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 77510,
    m_wstrDescription = "Play 30 matches in Arena.\n(Leaving the game during the match will not count)",
    m_eClearType = SUB_QUEST_TYPE["SQT_PVP_PLAY"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_ePVPType = PVP_GAME_TYPE["PGT_NULL"],
        m_iPVPPlay = 30,
        m_ePvpChannelClass = PVP_CHANNEL_CLASS["PCC_OFFICIAL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 77511,
    m_wstrDescription = "Achieve 10 wins from Arena PVP",
    m_eClearType = SUB_QUEST_TYPE["SQT_PVP_WIN"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_ePVPType = PVP_GAME_TYPE["PGT_NULL"],
        m_iPVPWin = 10,
        m_ePvpChannelClass = PVP_CHANNEL_CLASS["PCC_OFFICIAL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 77520,
    m_wstrDescription = "Chat with Tactical Trooper",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_EVENT_APINK"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 77530,
    m_wstrDescription = "Bring 3 Ancient Nasod's Technology Book ",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 78,40,84,86,79,92,126,488,108,109,171,381,380,426,428,432,450,238,198,222,233,261,338,477,478,607,613,622,481,717,718,719,720,721,722,723,521,523,522,524,571,581,948,984 },
        m_iCollectionItemID = 80002243,
        m_iCollectionItemNum = 3,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 77531,
    m_wstrDescription = "Bring 2 Disfrozen Energy",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 80002242,
        m_iCollectionItemNum = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 77540,
    m_wstrDescription = "Bring 2 Secret Alchemy Essence",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5007, 5008, 5010, 5011, 5012, 5013, 5076, 5077, 5087, 5088, 5089, 5004, 5005, 5006, 5015, 5017, 5018, 5019, 5020, 5021, 5022, 5023, 5094, 5025, 5027, 5028, 5029, 5030, 5031, 5032, 5033, 5035, 5036, 5037, 5038, 5090, 5091, 5041, 5042, 5043, 5044, 5045, 5047, 5048, 5049, 5050, 5051, 5092, 5093, 5053, 5054, 5055, 5056, 5057, 5058, 5060, 5061, 5062, 5064, 5066, 5067, 5068, 5069, 5071, 5072, 5073, 5074, 5075, 5083, 5095, 5096, 5097, 5098, 5099 },
        m_iCollectionItemID = 80002244,
        m_iCollectionItemNum = 2,
        m_fQuestItemDropRate = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 77541,
    m_wstrDescription = "Bring 1 Disfrozen Energy",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 80002242,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 77550,
    m_wstrDescription = "Acquire 15 El Energy",
    m_eClearType = SUB_QUEST_TYPE["SQT_SUITABLE_LEVEL_DUNGEON_CLEAR"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 15,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 77551,
    m_wstrDescription = "Bring 2 Disfrozen Energy",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 80002242,
        m_iCollectionItemNum = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 77560,
    m_wstrDescription = "Clear dungeons which awards EXP 30 times within a level range of 3 or less (excluding Ruben and Henir's Time and Space Dungeon)",
    m_eClearType = SUB_QUEST_TYPE["SQT_SUITABLE_LEVEL_DUNGEON_CLEAR"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 30,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 77570,
    m_wstrDescription = "Play 3v3 Arena 20 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_PVP_PLAY"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_ePVPType = PVP_GAME_TYPE["PGT_TEAM_DEATH"],
        m_iPVPPlay = 20,
        m_ePvpChannelClass = PVP_CHANNEL_CLASS["PCC_OFFICIAL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 77580,
    m_wstrDescription = "Defeat 10 Field Bosses",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5115, 5116, 5117, 5118, 5119, 5120, 5121, 5122, 5123 },
        m_iKillNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 77590,
    m_wstrDescription = "Use Mortar Fire Skill 30 times in Dungeons",
    m_eClearType = SUB_QUEST_TYPE["SQT_SKILL_USE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_vecSkillID = { 4211 },
        m_iUseSkillCount = 30,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 77591,
    m_wstrDescription = "Use Cannon Strike Skill 30 times in Dungeons ",
    m_eClearType = SUB_QUEST_TYPE["SQT_SKILL_USE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_vecSkillID = { 4025 },
        m_iUseSkillCount = 30,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 77592,
    m_wstrDescription = "Use Tactical Field Skill 30 times in Dungeons",
    m_eClearType = SUB_QUEST_TYPE["SQT_SKILL_USE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_vecSkillID = { 4026 },
        m_iUseSkillCount = 30,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 77600,
    m_wstrDescription = "Bring 5 El Energy Shards",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 15,20,21,27,28,29,43,44,45,46,47,48,71,73,75,76,77,78,79,81,82,83,85,87,91,93,94,95,97,99,104,106,107,111,112,113,115,117,118,119,120,125,126,127,143,149,151,165,168,169,171,173,175,193,194,195,196,197,200,202,203,204,205,208,219,220,221,228,229,231,236,237,251,253,255,259,260,336,337,338,339,340,341,342,356,357,358,359,360,379,380,382,415,416,417,418,419,420,424,425,427,428,429,431,439,450,458,459,460,461,462,463,464,465,470,471,472,473,474,475,476,488,489,490,491,492,493,523,524,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,549,550,551,552,553,554,555,556,557,558,559,560,561,562,563,564,565,566,572,573,574,575,576,578,579,580,581,582,583,584,585,586,588,589,590,608,610,611,612,629,636,644,645,687,688,689,690,691,693,694,695,696,697,698,699,700,701,702,703,704,705,708,725,726,727,731,732,737,744,792,793,794,795,796,799,835,862,867,868,869,870,871,872,873,918,919,920,921,922,923,924,925,926,927,935,936,937,944,956,962,963,964,965,966,967,968,969,970,971,976,977,980,984 },
        m_iCollectionItemID = 80002250,
        m_iCollectionItemNum = 5,
        m_fQuestItemDropRate = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 77610,
    m_wstrDescription = "Bring 3 El Energy Capsules Lv.1",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 80002251,
        m_iCollectionItemNum = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 77620,
    m_wstrDescription = "Bring 5 El Energy Capsules Lv.1 ",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 80002251,
        m_iCollectionItemNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 77630,
    m_wstrDescription = "Bring 7 El Energy Capsules Lv.1",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 80002251,
        m_iCollectionItemNum = 7,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85000,
    m_wstrDescription = "Enter Lake Noahs",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_FIELD"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40000 },
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85010,
    m_wstrDescription = "Enter Wally's Memorial Bridge",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_FIELD"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40001 },
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85020,
    m_wstrDescription = "Enter Twin Watchtower",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_FIELD"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40002 },
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85030,
    m_wstrDescription = "Enter Bethagara Falls",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_FIELD"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40003 },
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85040,
    m_wstrDescription = "Enter Toretugera Canyon",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_FIELD"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40005 },
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85050,
    m_wstrDescription = "Enter Graveyard of Purification",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_FIELD"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40006 },
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85060,
    m_wstrDescription = "Enter Garrison in the Sky",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_FIELD"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40008 },
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85070,
    m_wstrDescription = "Enter Nasod Dumpsite",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_FIELD"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40007 },
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85080,
    m_wstrDescription = "Enter Leikiki Lake",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_FIELD"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40004 },
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85090,
    m_wstrDescription = "Enter Pilgrim's Gateway",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_FIELD"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40009 },
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85100,
    m_wstrDescription = "Enter Pilgrim's Site",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_FIELD"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40010 },
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85110,
    m_wstrDescription = "Enter Dead Man's Hill",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_FIELD"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40011 },
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85120,
    m_wstrDescription = "Enter The Prosperity Road",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_FIELD"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40012 },
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85130,
    m_wstrDescription = "Enter Harmony Road",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_FIELD"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40014 },
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85140,
    m_wstrDescription = "Enter The Peace Road",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_FIELD"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40013 },
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85150,
    m_wstrDescription = "Enter Port Lurensia",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_FIELD"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40015 },
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85160,
    m_wstrDescription = "Enter Elime's Wave",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_FIELD"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40016 },
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85170,
    m_wstrDescription = "Enter Stricken City",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_FIELD"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40017 },
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85180,
    m_wstrDescription = "Enter Noah's Grave",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_FIELD"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40019 },
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85190,
    m_wstrDescription = "Enter Circular Waterway",
    m_eClearType = SUB_QUEST_TYPE["SQT_VISIT_FIELD"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40018 },
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85200,
    m_wstrDescription = "Defeat 10 Elder Field monsters",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5007, 5008, 5010, 5011, 5012, 5013, 5076, 5077, 5087, 5088, 5089 },
        m_iKillNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85210,
    m_wstrDescription = "Defeat 10 Bethma Field monsters",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5004, 5005, 5006, 5015, 5017, 5018, 5019, 5020, 5021, 5022, 5023, 5094 },
        m_iKillNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85220,
    m_wstrDescription = "Defeat 10 Altera Field monsters",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5025, 5027, 5028, 5029, 5030, 5031, 5032, 5033, 5035, 5036, 5037, 5038, 5090, 5091 },
        m_iKillNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85230,
    m_wstrDescription = "Defeat 10 Feita Field monsters",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5041, 5042, 5043, 5044, 5045, 5047, 5048, 5049, 5050, 5051, 5092, 5093 },
        m_iKillNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85240,
    m_wstrDescription = "Defeat 10 Velder Field monsters",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5053, 5054, 5055, 5056, 5057, 5058, 5060, 5061, 5062, 5064, 5066 },
        m_iKillNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85250,
    m_wstrDescription = "Defeat 10 Hamel Field monsters",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5067, 5068, 5069, 5071, 5072, 5073, 5074, 5075, 5083, 5095, 5096, 5097, 5098, 5099 },
        m_iKillNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85260,
    m_wstrDescription = "Defeat 250 Specific Field monsters (Wally Scout, Baby Komodo, Black Crow Engineer, Lesser Glitter Alchemist, Mini Uno ,Button Shadow Defender)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5011, 5027, 5004, 5044, 5055, 5069 },
        m_iKillNum = 250,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85300,
    m_wstrDescription = "Talk to Infinity Sword NPC",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_EVENT_APINK_ARCHANGEL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85310,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 10 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85320,
    m_wstrDescription = "Talk to Night Watcher NPC",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_EVENT_APINK"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85330,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 3 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85331,
    m_wstrDescription = "1 Letter from the Ponggos ",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 85002560,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85340,
    m_wstrDescription = "Defeat 15 Nasod Guard: Shield ",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 195 },
        m_iKillNum = 15,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85341,
    m_wstrDescription = "Defeat 15 Nasod Guard: Cannon ",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 194 },
        m_iKillNum = 15,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85350,
    m_wstrDescription = "Defeat King Nasod 10 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 338 },
        m_iKillNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85360,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 2 times ",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85370,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 1 time",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85380,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 10 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85390,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 5 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85400,
    m_wstrDescription = "Returning Hero’s Badge ",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 85002601,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85410,
    m_wstrDescription = "The Faithful Adventurer’s Badge ",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 85002603,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85420,
    m_wstrDescription = "Dark El Fragment",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 85002803,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85490,
    m_wstrDescription = "Chat with Veteran Commander",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_EVENT_APINK_ARCHANGEL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85500,
    m_wstrDescription = "Bring 5 Nasod Arm Repair Components",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 78,40,84,86,79,92,126,488,108,109,171,381,380,426,428,432,450,238,198,222,233,261,338,477,478,607,613,622,481,717,718,719,720,721,722,723,521,523,522,524,571,581,948,984 },
        m_iCollectionItemID = 85003032,
        m_iCollectionItemNum = 5,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85510,
    m_wstrDescription = "Bring 2 Ancient Nasod Research Book",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 665 },
        m_iCollectionItemID = 85003034,
        m_iCollectionItemNum = 2,
        m_fQuestItemDropRate = 30,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85520,
    m_wstrDescription = "Bring 3 Broken Nasod Components",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 85003033,
        m_iCollectionItemNum = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85530,
    m_wstrDescription = "Bring 5 Broken Nasod Components",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 85003033,
        m_iCollectionItemNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85540,
    m_wstrDescription = "Bring 10 Broken Nasod Components",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 85003033,
        m_iCollectionItemNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85550,
    m_wstrDescription = "Chat with Ariel",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_ARIEL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85560,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 10 times with fully grown Mercenary Phoru Pet",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85570,
    m_wstrDescription = "Defeat Dark Raven 5 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 662 },
        m_iKillNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85580,
    m_wstrDescription = "Use Deadly Raid Skill 10 times (Dungeon)",
    m_eClearType = SUB_QUEST_TYPE["SQT_SKILL_USE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_vecSkillID = { 2525 },
        m_iUseSkillCount = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85590,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 10 times (Other than Ruben/Henir Dungeon)",
    m_eClearType = SUB_QUEST_TYPE["SQT_SUITABLE_LEVEL_DUNGEON_CLEAR"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85600,
    m_wstrDescription = "Bring 5 Commander's Secret Note Piece",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 85003047,
        m_iCollectionItemNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85610,
    m_wstrDescription = "Defeat Dark Raven 5 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 662 },
        m_iKillNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85620,
    m_wstrDescription = "Bring 1 High-Quality Cloth",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 15,20,21,27,28,29,43,44,45,46,47,48,71,73,75,76,77,78,79,81,82,83,85,87,91,93,94,95,97,99,104,106,107,111,112,113,115,117,118,119,120,125,126,127,143,149,151,165,168,169,171,173,175,193,194,195,196,197,200,202,203,204,205,208,219,220,221,228,229,231,236,237,251,253,255,259,260,336,337,338,339,340,341,342,356,357,358,359,360,379,380,382,415,416,417,418,419,420,424,425,427,428,429,431,439,450,458,459,460,461,462,463,464,465,470,471,472,473,474,475,476,488,489,490,491,492,493,523,524,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,549,550,551,552,553,554,555,556,557,558,559,560,561,562,563,564,565,566,572,573,574,575,576,578,579,580,581,582,583,584,585,586,588,589,590,608,610,611,612,629,636,644,645,687,688,689,690,691,693,694,695,696,697,698,699,700,701,702,703,704,705,708,725,726,727,731,732,737,744,792,793,794,795,796,799,835,862,867,868,869,870,871,872,873,918,919,920,921,922,923,924,925,926,927,935,936,937,944,956,962,963,964,965,966,967,968,969,970,971,976,977,980,984 },
        m_iCollectionItemID = 85003052,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 0.3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85621,
    m_wstrDescription = "Bring 5 Sewing Kits",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 15,20,21,27,28,29,43,44,45,46,47,48,71,73,75,76,77,78,79,81,82,83,85,87,91,93,94,95,97,99,104,106,107,111,112,113,115,117,118,119,120,125,126,127,143,149,151,165,168,169,171,173,175,193,194,195,196,197,200,202,203,204,205,208,219,220,221,228,229,231,236,237,251,253,255,259,260,336,337,338,339,340,341,342,356,357,358,359,360,379,380,382,415,416,417,418,419,420,424,425,427,428,429,431,439,450,458,459,460,461,462,463,464,465,470,471,472,473,474,475,476,488,489,490,491,492,493,523,524,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,549,550,551,552,553,554,555,556,557,558,559,560,561,562,563,564,565,566,572,573,574,575,576,578,579,580,581,582,583,584,585,586,588,589,590,608,610,611,612,629,636,644,645,687,688,689,690,691,693,694,695,696,697,698,699,700,701,702,703,704,705,708,725,726,727,731,732,737,744,792,793,794,795,796,799,835,862,867,868,869,870,871,872,873,918,919,920,921,922,923,924,925,926,927,935,936,937,944,956,962,963,964,965,966,967,968,969,970,971,976,977,980,984 },
        m_iCollectionItemID = 85003053,
        m_iCollectionItemNum = 5,
        m_fQuestItemDropRate = 1.5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85622,
    m_wstrDescription = "Bring 3 Color Dyes",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 15,20,21,27,28,29,43,44,45,46,47,48,71,73,75,76,77,78,79,81,82,83,85,87,91,93,94,95,97,99,104,106,107,111,112,113,115,117,118,119,120,125,126,127,143,149,151,165,168,169,171,173,175,193,194,195,196,197,200,202,203,204,205,208,219,220,221,228,229,231,236,237,251,253,255,259,260,336,337,338,339,340,341,342,356,357,358,359,360,379,380,382,415,416,417,418,419,420,424,425,427,428,429,431,439,450,458,459,460,461,462,463,464,465,470,471,472,473,474,475,476,488,489,490,491,492,493,523,524,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,549,550,551,552,553,554,555,556,557,558,559,560,561,562,563,564,565,566,572,573,574,575,576,578,579,580,581,582,583,584,585,586,588,589,590,608,610,611,612,629,636,644,645,687,688,689,690,691,693,694,695,696,697,698,699,700,701,702,703,704,705,708,725,726,727,731,732,737,744,792,793,794,795,796,799,835,862,867,868,869,870,871,872,873,918,919,920,921,922,923,924,925,926,927,935,936,937,944,956,962,963,964,965,966,967,968,969,970,971,976,977,980,984 },
        m_iCollectionItemID = 85003054,
        m_iCollectionItemNum = 3,
        m_fQuestItemDropRate = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85623,
    m_wstrDescription = "Bring 3 Field Boss Essence",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5115, 5116, 5117, 5118, 5119, 5120, 5121, 5122, 5123 },
        m_iCollectionItemID = 85003055,
        m_iCollectionItemNum = 3,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85630,
    m_wstrDescription = "Defeat 100 Field Monsters",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5007, 5008, 5010, 5011, 5012, 5013, 5076, 5077, 5087, 5088, 5089, 5004, 5005, 5006, 5015, 5017, 5018, 5019, 5020, 5021, 5022, 5023, 5094, 5025, 5027, 5028, 5029, 5030, 5031, 5032, 5033, 5035, 5036, 5037, 5038, 5090, 5091, 5041, 5042, 5043, 5044, 5045, 5047, 5048, 5049, 5050, 5051, 5092, 5093, 5053, 5054, 5055, 5056, 5057, 5058, 5060, 5061, 5062, 5064, 5066, 5067, 5068, 5069, 5071, 5072, 5073, 5074, 5075, 5083, 5095, 5096, 5097, 5098, 5099 },
        m_iKillNum = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85640,
    m_wstrDescription = "Play Arena PVP 10 Times",
    m_eClearType = SUB_QUEST_TYPE["SQT_PVP_PLAY"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_ePVPType = PVP_GAME_TYPE["PGT_NULL"],
        m_iPVPPlay = 10,
        m_ePvpChannelClass = PVP_CHANNEL_CLASS["PCC_OFFICIAL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85650,
    m_wstrDescription = "Defeat Heretic Phoru",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 662 },
        m_iKillNum = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85660,
    m_wstrDescription = "Beginner's Book on Heretics",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 85003832,
        m_iCollectionItemNum = 15,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85670,
    m_wstrDescription = "Use Heretic Essence",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_USE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_listUseItemID = { 85003831 },
        m_iUseItemCnt = 7,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91700,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 1 time",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91701,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 2 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91702,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 3 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91703,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 4 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 4,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91704,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 5 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91705,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 6 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 6,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91706,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 7 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 7,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91707,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 8 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 8,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91708,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 9 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 9,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91709,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 10 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91710,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 11 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 11,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91711,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 12 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 12,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91712,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 13 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 13,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91713,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 14 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 14,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91714,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 15 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 15,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91715,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 16 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 16,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91716,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 17 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 17,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91717,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 18 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 18,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91718,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 19 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 19,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91719,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 20 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 20,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91720,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 21 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 21,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91721,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 22 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 22,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91722,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 23 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 23,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91723,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 24 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 24,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91724,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 25 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 25,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91725,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 26 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 26,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91726,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 27 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 27,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91727,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 28 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 28,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91728,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 29 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 29,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91729,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 30 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 30,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91730,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 31 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 31,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91731,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 32 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 32,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91732,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 33 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 33,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91733,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 34 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 34,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91734,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 35 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 35,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91735,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 36 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 36,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91736,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 37 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 37,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91737,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 38 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 38,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91738,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 39 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 39,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91739,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 40 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 40,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91740,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 41 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 41,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91741,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 42 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 42,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91742,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 43 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 43,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91743,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 44 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 44,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91744,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 45 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 45,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91745,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 46 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 46,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91746,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 47 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 47,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91747,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 48 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 48,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91748,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 49 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 49,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91749,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 50 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91750,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 Difference 51 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 51,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91770,
    m_wstrDescription = "Year 1867 Card",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 90002174,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91771,
    m_wstrDescription = "July 1st Card",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 90002175,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91772,
    m_wstrDescription = "Dominion Day Card",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 90002176,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91790,
    m_wstrDescription = "Year 1776 Card",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 90002177,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91791,
    m_wstrDescription = "July 4th Card",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 90002178,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91792,
    m_wstrDescription = "The Declaration of Independence Card ",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 90002179,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91800,
    m_wstrDescription = "Chat with Dimension Witch NPC",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_EVENT_APINK_ARCHANGEL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91810,
    m_wstrDescription = "Chat with Ariel",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_ARIEL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91820,
    m_wstrDescription = "Collect 3 Unrefined Moonstone",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 78,40,84,86,79,92,126,488,108,109,171,381,380,426,428,432,450,238,198,222,233,261,338,477,478,607,613,622,481,717,718,719,720,721,722,723,521,523,522,524,571,581,948,984 },
        m_iCollectionItemID = 90002193,
        m_iCollectionItemNum = 3,
        m_fQuestItemDropRate = 20,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91821,
    m_wstrDescription = "Secretary’s Secret Document",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 90002192,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91830,
    m_wstrDescription = "Collect 1 Unrefined Moonstone Cube",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 90002194,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91831,
    m_wstrDescription = "Moonstone Neutralizer",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 78,40,84,86,79,92,126,488,108,109,171,381,380,426,428,432,450,238,198,222,233,261,338,477,478,607,613,622,481,717,718,719,720,721,722,723,521,523,522,524,571,581,948,984 },
        m_iCollectionItemID = 90002195,
        m_iCollectionItemNum = 5,
        m_fQuestItemDropRate = 20,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91840,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 difference 3 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91850,
    m_wstrDescription = "Clear Dungeons with less than lvl 10 difference 5 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91860,
    m_wstrDescription = "Collect 30 Moonlight Energy ",
    m_eClearType = SUB_QUEST_TYPE["SQT_SKILL_USE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_vecSkillID = { 1525, 1526 },
        m_iUseSkillCount = 30,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91870,
    m_wstrDescription = "Destroy 2 El Crystal",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 1115 },
        m_iKillNum = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91880,
    m_wstrDescription = "Collect 3 Moonstone Shards",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 1115 },
        m_iCollectionItemID = 90002201,
        m_iCollectionItemNum = 3,
        m_fQuestItemDropRate = 100,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91890,
    m_wstrDescription = "Win Arena 2 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_PVP_WIN"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_ePVPType = PVP_GAME_TYPE["PGT_NULL"],
        m_iPVPWin = 2,
        m_ePvpChannelClass = PVP_CHANNEL_CLASS["PCC_OFFICIAL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91900,
    m_wstrDescription = "3 Kills in Arena",
    m_eClearType = SUB_QUEST_TYPE["SQT_PVP_KILL"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_ePVPType = PVP_GAME_TYPE["PGT_NULL"],
        m_iPVPKill = 3,
        m_ePvpChannelClass = PVP_CHANNEL_CLASS["PCC_OFFICIAL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91910,
    m_wstrDescription = "1 Cobo’s Coin of Friendship",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 90002241,
        m_iCollectionItemNum = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91920,
    m_wstrDescription = "3 Cobo’s Coin of Friendship",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 90002241,
        m_iCollectionItemNum = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91930,
    m_wstrDescription = "5 Cobo’s Coin of Friendship",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 90002241,
        m_iCollectionItemNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91940,
    m_wstrDescription = "10 Cobo’s Coin of Friendship",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 90002241,
        m_iCollectionItemNum = 10,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91950,
    m_wstrDescription = "Defeat 3 Thief Phorus (Lake Noahs)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40000 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5086 },
        m_iKillNum = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91951,
    m_wstrDescription = "Talk with Ann",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_ANNE"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91960,
    m_wstrDescription = "Defeat 3 Elite Soldier Bandits (Wally's Memorial Bridge)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40001 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5010 },
        m_iKillNum = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91961,
    m_wstrDescription = "Talk with Echo",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_ECHO"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91970,
    m_wstrDescription = "Collect 3 Richian's Gem (Richie Mine)",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 30210 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 110, 111, 112, 119, 109, 127, 151 },
        m_iCollectionItemID = 90003020,
        m_iCollectionItemNum = 3,
        m_fQuestItemDropRate = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91971,
    m_wstrDescription = "Talk with Richian",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_RICHANG"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91980,
    m_wstrDescription = "Gather 5 Dull Weapon Scraps",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 99801,
        m_iCollectionItemNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91981,
    m_wstrDescription = "Talk with Agatha",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_AGATHA"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91990,
    m_wstrDescription = "Retrieve the Secretary's Book (Durahan, Shrine of Dedication Entrance, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 32600 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 381 },
        m_iCollectionItemID = 90003022,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 50,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 91991,
    m_wstrDescription = "Talk with Allegro",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_ALLEGRO"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 92000,
    m_wstrDescription = "Defeat 5 Lesser Dark Elf  Sentinels (The Prosperity Road)",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40012 },
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5061 },
        m_iKillNum = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 92001,
    m_wstrDescription = "Talk with Noel",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_NOEL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 92010,
    m_wstrDescription = "Get 1 Ancient Accessory Box (Ancient Waterway, 'Any Difficulty')",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 33140 },
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 687, 688, 689, 690, 691, 694, 695, 698, 699, 700, 701, 702, 703, 704, 708, 715, 719 },
        m_iCollectionItemID = 90003023,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 1.5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 92011,
    m_wstrDescription = "Talk with Lucy",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_LUCY"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 92020,
    m_wstrDescription = "El Recruiter and El Recruit: Clear dungeons in level range 5 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_iDungeonClearCount = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 92030,
    m_wstrDescription = "El Recruiter and El Recruit: Party up and defeat 3 Field Bosses together",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5115,5116,5117,5118,5119,5120,5121,5122,5123,5124 },
        m_iKillNum = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 92040,
    m_wstrDescription = "El Recruiter and El Recruit: Play in Arena together 3 times",
    m_eClearType = SUB_QUEST_TYPE["SQT_PVP_PLAY"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_ePVPType = PVP_GAME_TYPE["PGT_TEAM_DEATH"],
        m_iPVPPlay = 3,
        m_ePvpChannelClass = PVP_CHANNEL_CLASS["PCC_OFFICIAL"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 92050,
    m_wstrDescription = "Collect Fresh Potatoes",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 15,27,28,29,43,44,45,46,47,48,71,73,77,78,79,81,82,83,85,87,91,93,94,95,97,99,104,106,107,111,112,113,115,119,120,125,127,149,151,165,168,169,173,175,194,195,202,203,204,205,208,251,253,255,336,337,338,339,340,341,342,356,357,358,359,379,380,382,416,417,418,419,420,424,427,428,450,458,459,460,461,462,463,465,470,471,472,473,476489,490,491,492,493,523,524,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,549,550,551,552,553,555,556,557,558,559,560,561,562,563,564,565,566,572,573,574,575,576,578,579,580,581,582,583,584,585,586,588,589,590,608,611,612,636,644,645,687,688,689,690,691,693,694,695,696,697,698,699,700,701,702,703,704,705,708,725,726,727,731,732,737,744,792,793,794,795,796,799,835,862,867,868,869,870,871,872,873,918,919,920,921,922,923,924,925,926,927,937,956,962,963,964,965,966,967,968,969,970,971,980,984,1151,1152,1153,1154,1155,1156,1157,1158,1159,1160,1161,1162,1164,1165,1166,1167,1168,1169,1170,1171,1172,1173,1174,1191,1192,1193,1194,1195,1196,1197,1198,1199,1200,1201,1202,1209,1210,1211,1212,1213,1214,1215,1216,1217,1218,1219 },
        m_iCollectionItemID = 90003033,
        m_iCollectionItemNum = 11,
        m_fQuestItemDropRate = 13,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 92060,
    m_wstrDescription = "Collect Sweet Pumpkins",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 15,27,28,29,43,44,45,46,47,48,71,73,77,78,79,81,82,83,85,87,91,93,94,95,97,99,104,106,107,111,112,113,115,119,120,125,127,149,151,165,168,169,173,175,194,195,202,203,204,205,208,251,253,255,336,337,338,339,340,341,342,356,357,358,359,379,380,382,416,417,418,419,420,424,427,428,450,458,459,460,461,462,463,465,470,471,472,473,476489,490,491,492,493,523,524,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,549,550,551,552,553,555,556,557,558,559,560,561,562,563,564,565,566,572,573,574,575,576,578,579,580,581,582,583,584,585,586,588,589,590,608,611,612,636,644,645,687,688,689,690,691,693,694,695,696,697,698,699,700,701,702,703,704,705,708,725,726,727,731,732,737,744,792,793,794,795,796,799,835,862,867,868,869,870,871,872,873,918,919,920,921,922,923,924,925,926,927,937,956,962,963,964,965,966,967,968,969,970,971,980,984,1151,1152,1153,1154,1155,1156,1157,1158,1159,1160,1161,1162,1164,1165,1166,1167,1168,1169,1170,1171,1172,1173,1174,1191,1192,1193,1194,1195,1196,1197,1198,1199,1200,1201,1202,1209,1210,1211,1212,1213,1214,1215,1216,1217,1218,1219 },
        m_iCollectionItemID = 90003034,
        m_iCollectionItemNum = 11,
        m_fQuestItemDropRate = 13,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 140190,
    m_wstrDescription = "Recover 2 Santa Penguin’s Lost Presents",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 153000084,
        m_iCollectionItemNum = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 140200,
    m_wstrDescription = "Recover 2 Santa Penguin’s Lost Presents",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 153000084,
        m_iCollectionItemNum = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 140210,
    m_wstrDescription = "Recover 2 Santa Penguin’s Lost Presents",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 153000084,
        m_iCollectionItemNum = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 140220,
    m_wstrDescription = "Collect 20 Max Level Certificate (Dungeon) ",
    m_eClearType = SUB_QUEST_TYPE["SQT_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iCollectionItemID = 153000098,
        m_iCollectionItemNum = 20,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 140221,
    m_wstrDescription = "Collect 13 Max Level Certificate (Field) ",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eFieldID = { 40000, 40001, 40002, 40003, 40004, 40005, 40006, 40007, 40008, 40009, 40010, 40011, 40012, 40013, 40014, 40015, 40016, 40017, 40018, 40019, 40020, 40021, 40022, 40023, 40024, 40025 },
        m_eDungeonID = { 32000 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 0 },
        m_iCollectionItemID = 153000099,
        m_iCollectionItemNum = 13,
        m_fQuestItemDropRate = 4.33,
    },
}

