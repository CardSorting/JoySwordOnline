-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 13,
    m_wstrDescription = "Sprich mit Aranka",
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
    m_wstrDescription = "Benders (Els Baum 'normal')",
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
    m_wstrDescription = "Affenwald 'normal' Clear",
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
    m_wstrDescription = "Symbol des Anführers (Weißer Affenboss)",
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
    m_wstrDescription = "Weißer Affe (Osten von Els Baum 'schwer')",
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
    m_wstrDescription = "Bio-Banane (Affenkönig)",
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
    m_wstrDescription = "Norden von Els Baum 'normal' Clear",
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
    m_wstrDescription = "PvP: 1 Kill im Survival-Modus (außer Übungs-Channel)",
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
    m_wstrDescription = "Affenboss (Norden von Els Baum)",
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
    m_wstrDescription = "Uralter Poru (Norden von Els Baum 'schwer')",
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
    m_wstrDescription = "Norden von Els Baum 'normal' mit min. B-Wertung Clear",
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
    m_wstrDescription = "Norden von Els Baum 'schwer' mit max. 30 Gegentreffern",
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
    m_wstrDescription = "Großer Weißer Poru (Norden von Els Baum 'Experte')",
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
    m_wstrDescription = "Zehnagel (Großer Weißer Poru, Norden von Els Baum 'Experte')",
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
    m_wstrDescription = "Willard (Norden von Els Baum 'Experte')",
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
    m_wstrDescription = "Norden von Els Baum 'schwer' Clear",
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
    m_wstrDescription = "Nachtwald 'normal'",
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
    m_wstrDescription = "Giftsporen (Giftpilz, Nachtwald 'normal')",
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
    m_wstrDescription = "Magiergeist (Nachtwald 'schwer')",
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
    m_wstrDescription = "Gifthornisse (Nachtwald 'normal')",
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
    m_wstrDescription = "Stroh (Magiergeist)",
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
    m_wstrDescription = "Roter Magiergeist (Nachtwald 'schwer')",
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
    m_wstrDescription = "Giftpilz (Nachtwald 'Experte')",
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
    m_wstrDescription = "Kleiner Ent (Nachtwald mind. 'schwer')",
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
    m_wstrDescription = "Ent (Nachtwald 'Experte')",
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
    m_wstrDescription = "Nachtwald 'Experte' mit max. 30 Gegentreffern",
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
    m_wstrDescription = "Felsgrotte 'normal' in 10 Min. Clear",
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
    m_wstrDescription = "Vampirkönig (Felsgrotte 'schwer')",
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
    m_wstrDescription = "Felsgrotte 'Experte' Clear",
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
    m_wstrDescription = "Vampir (Felsgrotte)",
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
    m_wstrDescription = "Großer Poru (Felsgrotte 'schwer')",
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
    m_wstrDescription = "Benders' Höhle 'normal'",
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
    m_wstrDescription = "Kleiner Bruder (Benders' Höhle 'normal')",
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
    m_wstrDescription = "Benders' Höhle mind. 'schwer'",
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
    m_wstrDescription = "Großer Bruder (Benders' Höhle, 'Experte')",
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
    m_wstrDescription = "Albinovampir (Benders' Höhle)",
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
    m_wstrDescription = "Lederschnur (Kleiner Bruder, Großer Bruder)",
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
    m_wstrDescription = "Felsgrotte 'Experte' mit min. B-Wertung Clear",
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
    m_wstrDescription = "Benders' Höhle 'Experte' in 20 Min.",
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
    m_wstrDescription = "Vampirflügel (Elder-Dungeons)",
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
    m_wstrDescription = "Abwasserkanal 'schwer'",
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
    m_wstrDescription = "Stahlplatte (Nasodbenders)",
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
    m_wstrDescription = "Mäuse (Abwasserkanal 'schwer')",
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
    m_wstrDescription = "Abwasserkanal 'schwer' mit max. 20 Gegentreffern",
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
    m_wstrDescription = "Kleiner Soldat (Abwasserkanal 'normal')",
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
    m_wstrDescription = "Weißer Magiergeist (Abwasserkanal 'Experte')",
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
    m_wstrDescription = "Kleiner Soldat (Abwasserkanal 'Experte')",
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
    m_wstrDescription = "Wachturm 'normal'",
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
    m_wstrDescription = "Wachturm 'normal' in 8 Min.",
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
    m_wstrDescription = "Wachturm 'schwer' in 10 Min.",
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
    m_wstrDescription = "Wachturm 'Experte' in 12 Min.",
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
    m_wstrDescription = "Willard (Wachturm 'schwer')",
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
    m_wstrDescription = "Bombenaffe (Wachturm)",
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
    m_wstrDescription = "Schloss Robo 'schwer'",
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
    m_wstrDescription = "Großer Soldat (Schloss Robo 'normal')",
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
    m_wstrDescription = "Armbrustsoldat (Schloss Robo 'schwer')",
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
    m_wstrDescription = "Kleiner Soldat (Schloss Robo mind. 'schwer')",
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
    m_wstrDescription = "Robo-Wächter (Schloss Robo 'Experte')",
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
    m_wstrDescription = "Robo N8 (Schloss Robo 'Experte')",
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
    m_wstrDescription = "Schloss Robo 'Experte'",
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
    m_wstrDescription = "Els Baum Geheimdungeon",
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
    m_wstrDescription = "Veränderter Skorpion",
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
    m_wstrDescription = "\"Drachenweg\" 'normal'",
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
    m_wstrDescription = "Drachenweg 'schwer'",
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
    m_wstrDescription = "Kaktusblüte (Drachenweg mindestens 'schwer')",
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
    m_wstrDescription = "Veränderter Echsenmensch (Drachenweg 'schwer')",
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
    m_wstrDescription = "Wildhonig (Echsenmenschen, Saurus; Besma-See mind. 'schwer')",
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
    m_wstrDescription = "Killerhornisse (Besma-See 'schwer')",
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
    m_wstrDescription = "Skorpionstachel (Skorpion)",
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
    m_wstrDescription = "Sprich mit Chachabuk",
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
    m_wstrDescription = "Rückenpanzer eines Gürteltiers (Besma-See Nacht, Drachennest)",
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
    m_wstrDescription = "Echsenkrieger (Drachenweg 'Experte')",
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
    m_wstrDescription = "Fläschchen mit Skorpiongift (Skorpion, Besma-Dungeons)",
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
    m_wstrDescription = "Skorpionkönig (Drachenweg 'Experte')",
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
    m_wstrDescription = "Berauk (Besma-See 'normal')",
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
    m_wstrDescription = "Saurus (Besma-See)",
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
    m_wstrDescription = "Echsenmensch (Besma-See 'normal')",
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
    m_wstrDescription = "Hypnosekugeln (Echsenmensch, Besma-See mind. 'schwer')",
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
    m_wstrDescription = "Säckchen mit Hypnosekugeln (Berauk, Besma-See mind. 'Experte')",
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
    m_wstrDescription = "Sprich mit Toma",
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
    m_wstrDescription = "Klebriger Saft (Komodo, Feuer-Komodo)",
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
    m_wstrDescription = "Abschrift des Fluchmanuskripts (Echsenschamane)",
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
    m_wstrDescription = "Sprich mit Solvej",
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
    m_wstrDescription = "Stinkende Schuppen (Echsenmenschen)",
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
    m_wstrDescription = "Besma-See Nacht 'schwer' mit B-Wertung",
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
    m_wstrDescription = "Angeknabberte Wurzel (Komodo)",
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
    m_wstrDescription = "Gürteltier (Besma-See Nacht 'schwer')",
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
    m_wstrDescription = "Klebriger Saft (Komodo, Feuer-Komodo)",
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
    m_wstrDescription = "Schattenkrieger (Besma-See Nacht 'schwer')",
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
    m_wstrDescription = "Schattenechse (Besma-See Nacht 'schwer')",
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
    m_wstrDescription = "Saurus-Aufseher (Besma-See Nacht 'Experte')",
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
    m_wstrDescription = "Kriegeremblem",
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
    m_wstrDescription = "Stumpfe Speerspitze (Schattenechse, Besma-See Nacht)",
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
    m_wstrDescription = "Sprich mit Solvej in Besma",
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
    m_wstrDescription = "Wilder Echsenmensch (Drachennest)",
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
    m_wstrDescription = "Wilder Echsenschamane",
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
    m_wstrDescription = "PvP: Team-Match gewinnen (außer Übungs-Channel)",
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
    m_wstrDescription = "Drachennest 'schwer' mit max. 60 Gegentreffern",
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
    m_wstrDescription = "Drachennest 'Experte' in 15 Min.",
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
    m_wstrDescription = "Totem (Besma-See Nacht mind. 'schwer')",
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
    m_wstrDescription = "Feuer-Komodo (Drachennest mind. 'schwer')",
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
    m_wstrDescription = "Feuerskorpion (Drachennest mind. 'schwer')",
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
    m_wstrDescription = "Stinkende Schuppen (Wilder Echsenmensch, Besma-Dungeons)",
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
    m_wstrDescription = "Feuervampir (Drachennest 'schwer')",
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
    m_wstrDescription = "Wilder Echsenmensch (Drachennest 'schwer')",
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
    m_wstrDescription = "Wilder Echsenschamane (Drachennest 'Experte')",
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
    m_wstrDescription = "PvP: Team-Deathmatch gewinnen (außer Übungs-Channel)",
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
    m_wstrDescription = "Verbrannte Baumwurzel (Feuer-Komodo)",
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
    m_wstrDescription = "Bündel von Fluchmanuskripten (Schamane Kaya)",
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
    m_wstrDescription = "Bündel von Fluchmanuskripten (Schamane Kaya)",
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
    m_wstrDescription = "Bündel von Fluchmanuskripten (Schamane Kaya)",
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
    m_wstrDescription = "Bündel von Fluchmanuskripten (Schamane Kaya)",
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
    m_wstrDescription = "Mineneingang 'normal' Clear",
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
    m_wstrDescription = "Nasod-Bergarbeiter M9 (Mineneingang 'normal')",
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
    m_wstrDescription = "Nasodnickel (Nasod-Bergarbeiter M9, Abgenutzter Nasodbagger D1)",
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
    m_wstrDescription = "Defekte Leuchte (Nasod-Bergarbeiter M9, Nasod-Bergarbeiter)",
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
    m_wstrDescription = "Nasodheiler (Mineneingang 'schwer')",
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
    m_wstrDescription = "Säckchen mit Nebel des Lebens (Besma-Dungeons)",
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
    m_wstrDescription = "Nasodaufseher (Mineneingang 'Experte')",
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
    m_wstrDescription = "Nasodbohrer C4 (Mineneingang 'Experte')",
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
    m_wstrDescription = "Scharfer Bohrer (Nasodbohrer)",
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
    m_wstrDescription = "Großes Bergwerk 'normal'",
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
    m_wstrDescription = "Mutter (Nasodbagger D2)",
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
    m_wstrDescription = "Schraube (Nasodbagger D2)",
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
    m_wstrDescription = "Kleine Schraube (Nasodbagger D3, Großes Bergwerk 'Experte')",
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
    m_wstrDescription = "Transport-Nasod (Großes Bergwerk 'schwer')",
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
    m_wstrDescription = "Nasodbagger D3 (Großes Bergwerk 'Experte')",
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
    m_wstrDescription = "Nasodbagger D2 (Großes Bergwerk 'Experte')",
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
    m_wstrDescription = "Zerrissener Gürtel (Nasodbagger D2)",
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
    m_wstrDescription = "Nasodheiler (Großes Bergwerk mind. 'schwer')",
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
    m_wstrDescription = "Robo N8-Antriebseinheit (Robo N8 Mk2)",
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
    m_wstrDescription = "Robo N8 Mk2 (Großes Bergwerk 'Experte')",
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
    m_wstrDescription = "Nasod-Bergarbeiter M10 (Transportluftschiff 'normal')",
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
    m_wstrDescription = "Alte Legierung (Nasod-Bergarbeiter M10)",
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
    m_wstrDescription = "Nasodhornisse (Transportluftschiff 'schwer')",
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
    m_wstrDescription = "Batterie der Nasodhornisse (Nasodhornisse)",
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
    m_wstrDescription = "Hochleistungs-Nasodbagger SD2 (Transportluftschiff mind. 'schwer')",
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
    m_wstrDescription = "Plastikflügel (Nasodhornisse)",
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
    m_wstrDescription = "Robo N9 (Transportluftschiff 'Experte')",
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
    m_wstrDescription = "Transportluftschiff 'Experte'",
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
    m_wstrDescription = "Nasodheiler (Transportluftschiff 'Experte')",
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
    m_wstrDescription = "Säckchen mit Nebel des Lebens (Besma-Dungeons)",
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
    m_wstrDescription = "Krähen-Luftschiff mit mind. B-Wertung",
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
    m_wstrDescription = "Wappen der Krähenbande (Krähenbanden-Scharfschütze, Krähen-Luftschiff)",
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
    m_wstrDescription = "Krähenbanden-Mechaniker (Krähen-Luftschiff)",
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
    m_wstrDescription = "Krähenbanden-Scharfschütze (Krähen-Luftschiff mind. 'schwer')",
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
    m_wstrDescription = "Krähenbanden-Schwertkämpfer (Krähen-Luftschiff 'Experte')",
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
    m_wstrDescription = "Stahl-Maulschlüssel (Krähenbanden-Ingenieur, Krähen-Luftschiff mind. 'schwer')",
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
    m_wstrDescription = "Geschwärzte Halskette (Krähenbanden-Schwertkämpfer, Krähen-Luftschiff 'Experte')",
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
    m_wstrDescription = "Krähen-Luftschiff mind. 'schwer' in 10 Min.",
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
    m_wstrDescription = "Krähen-Luftschiff mind. 'Experte' in 11 Min.",
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
    m_wstrDescription = "Essensration (Krähenbanden-Kommandant, Krähen-Luftschiff mind. 'schwer')",
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
    m_wstrDescription = "Raven (Krähen-Luftschiff 'Experte')",
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
    m_wstrDescription = "Ebene der Rückkehr 'normal' mit max. 30 Gegentreffern",
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
    m_wstrDescription = "Verbrennungseinheit (Kontaminierter Nasod-Bergarbeiter M9)",
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
    m_wstrDescription = "Gasmaskenfilter (Krähenbanden-Scharfschütze, Ebene der Rückkehr mind. 'schwer')",
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
    m_wstrDescription = "Ebene der Rückkehr 'schwer' mit mind. A-Wertung",
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
    m_wstrDescription = "Konstruktionsplan des Aufzugs (Amon)",
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
    m_wstrDescription = "Bauteil der Antriebseinheit (Nasodgärtner F8)",
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
    m_wstrDescription = "Edelstahlplatte (Kontaminierter Nasod-Bergarbeiter M9)",
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
    m_wstrDescription = "Nasodaufklärer L5",
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
    m_wstrDescription = "Kanone des Bohrers",
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
    m_wstrDescription = "Probe der kontaminierten Flüssigkeit (Kontaminierter Nasod-Bergarbeiter M9)",
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
    m_wstrDescription = "Kontaminierter Nasod-Bergarbeiter M9",
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
    m_wstrDescription = "Kanone des Bohrers",
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
    m_wstrDescription = "Tunnel B4-1 'normal'",
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
    m_wstrDescription = "Kreischvampir",
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
    m_wstrDescription = "Ultraschallnase (Kreischvampir, Tunnel B4-1 mind. 'schwer')",
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
    m_wstrDescription = "Kontaminierter Schaltkreis",
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
    m_wstrDescription = "Regenerierender Sporenstaub",
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
    m_wstrDescription = "Alterasie (Tunnel B4-1 'Experte')",
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
    m_wstrDescription = "Erd-Gürteltier",
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
    m_wstrDescription = "Alterasienblatt",
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
    m_wstrDescription = "Wurzel der Herrschaft",
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
    m_wstrDescription = "Übler Alterasientopf",
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
    m_wstrDescription = "Altera-Ebene 'normal'",
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
    m_wstrDescription = "Sprich mit Agda",
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
    m_wstrDescription = "Feines Uhrwerk (Nasodlarven)",
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
    m_wstrDescription = "Nasodlarven",
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
    m_wstrDescription = "Altera-Ebene mind. 'schwer' in 8 Min.",
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
    m_wstrDescription = "Nasodemblem (Nasodskorpion)",
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
    m_wstrDescription = "Altera-Ebene 'Experte' mit max. 40 Gegentreffern",
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
    m_wstrDescription = "Stahlschwanz",
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
    m_wstrDescription = "Schockfalle",
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
    m_wstrDescription = "Ignis",
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
    m_wstrDescription = "Leviathan",
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
    m_wstrDescription = "Olivgrünes Moos (Nasodskorpion)",
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
    m_wstrDescription = "Nasodfabrik 'normal'",
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
    m_wstrDescription = "Nasod-Produktionsmaschine",
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
    m_wstrDescription = "Bauteil eines Gewehrs (Nasod-Geschützwächter, Nasodfabrik mind. 'schwer')",
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
    m_wstrDescription = "Nasodfabrik 'normal' in 5 Min. 30 Sek.",
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
    m_wstrDescription = "Nasodfabrik 'schwer' in 7 Min. 30 Sek.",
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
    m_wstrDescription = "Strahleneinheit des Chaos",
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
    m_wstrDescription = "Nasodwächter",
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
    m_wstrDescription = "Angriffskontrollchip",
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
    m_wstrDescription = "Nasod-Skorpionkönig",
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
    m_wstrDescription = "Crowrider",
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
    m_wstrDescription = "Sprich mit Amon",
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
    m_wstrDescription = "Altera-Core 'normal' mit max. 50 Gegentreffern",
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
    m_wstrDescription = "Nasodschlitzer (Altera-Core)",
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
    m_wstrDescription = "Nasodeiswächter (Altera-Core)",
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
    m_wstrDescription = "Nasodbrecher W9 (Altera-Core)",
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
    m_wstrDescription = "Altera-Core 'normal'",
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
    m_wstrDescription = "Altera-Core 'schwer'",
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
    m_wstrDescription = "Hochwertiger Gewehrlauf (Altera-Core 'schwer')",
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
    m_wstrDescription = "Kristall des Feuernasod (Ignis, Altera-Core)",
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
    m_wstrDescription = "Kristall des Wassernasod (Leviathan, Altera-Core)",
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
    m_wstrDescription = "Altera-Core 'Experte'",
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
    m_wstrDescription = "Hochwertige Schilde (Altera-Core 'Experte')",
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
    m_wstrDescription = "Roter Energie-Generator (Altera-Core mind. 'Experte')",
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
    m_wstrDescription = "Olivgrüner Energie-Generator (Altera-Core mind. 'Experte')",
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
    m_wstrDescription = "Altera-Core 'schwer' in 20 Min.",
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
    m_wstrDescription = "Feuergenerator (Altera-Core mind. 'Experte')",
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
    m_wstrDescription = "Eisgenerator (Altera-Core mind. 'Experte')",
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
    m_wstrDescription = "Antriebseinheit des Nasodkönigs (Altera-Core 'Experte')",
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
    m_wstrDescription = "Nasodkönig (Altera-Core 'Experte')",
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
    m_wstrDescription = "Tempeleingang 'normal'",
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
    m_wstrDescription = "Insektenflügel (Tempeleingang mind. 'normal')",
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
    m_wstrDescription = "Vargo-Bogenschütze (Tempeleingang 'normal')",
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
    m_wstrDescription = "Vargo-Speersoldat (Tempeleingang 'normal')",
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
    m_wstrDescription = "Spiralkorridor 'normal'",
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
    m_wstrDescription = "Vargo-Speersoldaten und Vargo-Schildsoldaten (Spiralkorridor 'normal')",
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
    m_wstrDescription = "Vargo-Speersoldaten und Vargo-Schildsoldaten (Spiralkorridor 'normal')",
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
    m_wstrDescription = "Rauer Stein (Golem, Spiralkorridor)",
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
    m_wstrDescription = "Golem (Tempeleingang 'schwer')",
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
    m_wstrDescription = "Brauchbare Speerspitze (Peita)",
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
    m_wstrDescription = "Tempeleingang 'schwer'",
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
    m_wstrDescription = "Vargo-Erzmagier (Tempeleingang 'schwer')",
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
    m_wstrDescription = "Dyurahan-Ritter (Tempeleingang 'schwer')",
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
    m_wstrDescription = "Spiralkorridor 'schwer'",
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
    m_wstrDescription = "Vargo-Seelensphäre (Vargo-Erzmagier, Peita)",
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
    m_wstrDescription = "Golem (Spiralkorridor 'schwer')",
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
    m_wstrDescription = "Spiralkorridor 'schwer' Dungeon-Schaden",
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
    m_wstrDescription = "Techortyrann (Spiralkorridor 'schwer')",
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
    m_wstrDescription = "Tempeleingang 'Experte'",
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
    m_wstrDescription = "Tempeleingang 'schwer' in 8 Min.",
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
    m_wstrDescription = "Tempeleingang 'Experte' Wertung",
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
    m_wstrDescription = "Dyurahan (Tempeleingang 'Experte')",
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
    m_wstrDescription = "Golem (Tempeleingang 'Experte')",
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
    m_wstrDescription = "Spiralkorridor 'Experte'",
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
    m_wstrDescription = "Vargo-Hammersoldat (Spiralkorridor 'Experte')",
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
    m_wstrDescription = "Spiralkorridor 'schwer' in 8 Min.",
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
    m_wstrDescription = "Spiralkorridor 'Experte'",
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
    m_wstrDescription = "Techortyrann (Spiralkorridor 'Experte')",
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
    m_wstrDescription = "Sprich mit Ekko im Dorf Elder",
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
    m_wstrDescription = "Sprich mit Hofmann im Dorf Elder",
    m_eClearType = SUB_QUEST_TYPE["SQT_NPC_TALK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eTalkNPCID = NPC_UNIT_ID["NUI_HOFMANN"],
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 6130,
    m_wstrDescription = "Krypta mind. 'normal'",
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
    m_wstrDescription = "Verblasstes Edelsteinstück",
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
    m_wstrDescription = "Sprich mit Alvar",
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
    m_wstrDescription = "Krypta mind. 'schwer'",
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
    m_wstrDescription = "Wütender Steingolem (Krypta mind. 'schwer')",
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
    m_wstrDescription = "Sprich mit Lento",
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
    m_wstrDescription = "Krypta 'Experte' in 13 Min.",
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
    m_wstrDescription = "Vargo-Erzmagier (mind. stark)",
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
    m_wstrDescription = "Vargo-Hammersoldat (sehr stark)",
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
    m_wstrDescription = "Dyuter (sehr stark)",
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
    m_wstrDescription = "Sprich mit Alvar",
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
    m_wstrDescription = "Dyuter (sehr stark)",
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
    m_wstrDescription = "Amorphyst (sehr stark)",
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
    m_wstrDescription = "Zusatzgewichte (Vargo-Hammersoldat, Krypta)",
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
    m_wstrDescription = "Leere Flasche (Manaesser, Krypta)",
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
    m_wstrDescription = "Tempelgarten 'normal'",
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
    m_wstrDescription = "Mutierter Efeu",
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
    m_wstrDescription = "Yateveo",
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
    m_wstrDescription = "Dunkle Drosera (mind. 'schwer')",
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
    m_wstrDescription = "Jubigi (Tempelgarten mind. 'schwer')",
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
    m_wstrDescription = "Vargo-Palastwache (mind. stark)",
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
    m_wstrDescription = "Tempelgarten 'schwer' mit B-Wertung",
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
    m_wstrDescription = "Syrus (mind. stark)",
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
    m_wstrDescription = "Magieerfüllter Insektenflügel",
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
    m_wstrDescription = "Rauer Stein (Golem, Provinz Peita)",
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
    m_wstrDescription = "Yateveo",
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
    m_wstrDescription = "Probe Mutierten Efeus",
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
    m_wstrDescription = "Säckchen mit Giftsporen",
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
    m_wstrDescription = "Heilwassermoos (Monster im Tempelgarten)",
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
    m_wstrDescription = "Heilwassermoos (Tempelgarten)",
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
    m_wstrDescription = "Sanktum",
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
    m_wstrDescription = "Vargo-Scharfschütze (Sanktum mind. 'schwer')",
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
    m_wstrDescription = "Vargo-Sturmsoldat (Sanktum mind. 'schwer')",
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
    m_wstrDescription = "Gargoyle-Kralle (Sanktum)",
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
    m_wstrDescription = "Cortisak (Sanktum)",
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
    m_wstrDescription = "Steingargoyle (Sanktum)",
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
    m_wstrDescription = "Sanktum mind. 'schwer' in 12 Min.",
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
    m_wstrDescription = "Cortisak (Sanktum 'Experte')",
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
    m_wstrDescription = "Gefährliche Speerspitze (Vargo-Palastwache)",
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
    m_wstrDescription = "Gefährliche Zusatzgewichte (Vargo-Sturmsoldaten)",
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
    m_wstrDescription = "Stabiler Dämonenschild (Vargo-Wache)",
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
    m_wstrDescription = "Merkwürdiges Edelsteinstück (Vargo-Illusionsmagier)",
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
    m_wstrDescription = "Eldrit-Staub (Ausrüstung zerlegen)",
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
    m_wstrDescription = "Vargo-Illusionsmagier (Altarraum)",
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
    m_wstrDescription = "Steingargoyle (Altarraum mind. 'schwer')",
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
    m_wstrDescription = "Vargo-Sturmsoldaten (Altarraum mind. 'schwer')",
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
    m_wstrDescription = "Vargo-Scharfschütze (Altarraum mind. 'schwer')",
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
    m_wstrDescription = "Vargo-Wache (Altarraum mind. 'schwer')",
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
    m_wstrDescription = "Vargo-Palastwache (Altarraum mind. 'schwer')",
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
    m_wstrDescription = "Vargo-Illusionsmagier (Altarraum mind. 'schwer')",
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
    m_wstrDescription = "Dyuter (Altarraum 'Experte')",
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
    m_wstrDescription = "Syrus (Altarraum 'Experte')",
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
    m_wstrDescription = "Vargo-Hauptmann (Altarraum 'Experte')",
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
    m_wstrDescription = "Dunkeleldrit-Fragment (Altarraum mind. 'schwer')",
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
    m_wstrDescription = "Berrut (Altarraum 'Experte')",
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
    m_wstrDescription = "Fragment der Dimensionstür (Berrut, Altarraum 'Experte')",
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
    m_wstrDescription = "Bring Alvars Brief zu Solvej",
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
    m_wstrDescription = "Vargo-Hauptmann (Altarraum mind. 'schwer')",
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
    m_wstrDescription = "Sprich mit Aranka vom CoBo-Service",
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
    m_wstrDescription = "Sprich mit Solvej in Besma",
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
    m_wstrDescription = "Berrut (Altarraum 'Experte')",
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
    m_wstrDescription = "Anmeldeformular für den Ausbildungsbeginn",
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
    m_wstrDescription = "Nasodnickel, die die Nasod bei sich haben (Nasod, Altera)",
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
    m_wstrDescription = "Chronik der Nasod-Schlachten (Nasod, Altera)",
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
    m_wstrDescription = "Nasod-Core (Nasod auf Altera)",
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
    m_wstrDescription = "Unkontaminierte starke Energie (Boss, Altera Dungeon mind. 'schwer')",
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
    m_wstrDescription = "Anmeldeformular zur Fortgeschrittenenausbildung",
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
    m_wstrDescription = "Chronik der Vargo-Schlachten (Vargo-Soldaten, Peita)",
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
    m_wstrDescription = "Befehlsschreiben der Dämonen (mittlere Bossmonster, Peita)",
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
    m_wstrDescription = "Brauchbare Nasod-Antriebseinheit (Nasod, Ebene der Rückkehr)",
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
    m_wstrDescription = "Brauchbare Nasod-Ersatzteile (Nasod, Ebene der Rückkehr)",
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
    m_wstrDescription = "Geheime Befehle der Dämonen (Bossmonster, Peita)",
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
    m_wstrDescription = "Nasod-Legierungs-Chip (Crowrider, Nasodfabrik)",
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
    m_wstrDescription = "Krähen-Luftschiff mind. 'schwer' mit mind. B-Wertung",
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
    m_wstrDescription = "Ebene der Rückkehr mind. 'schwer' mit mind. B-Wertung",
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
    m_wstrDescription = "Tunnel B4-1 mind. 'schwer' mit mind. B-Wertung",
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
    m_wstrDescription = "Bei Camilla Anmeldeformular zur Profiausbildung kaufen",
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
    m_wstrDescription = "Rekrutenabzeichen (Dämonen, Belder)",
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
    m_wstrDescription = "Rangabzeichen (mittlere Bossmonster, Belder)",
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
    m_wstrDescription = "Feuerturbine (Ignis, Altera-Ebene)",
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
    m_wstrDescription = "Abzeichen des Kontrollzentrums (Bossmonster, Belder-Dungeon mind. 'Experte')",
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
    m_wstrDescription = "Altera-Ebene mind. 'normal' in 8 Min.",
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
    m_wstrDescription = "Nasodfabrik mind. 'normal' in 8 Min.",
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
    m_wstrDescription = "Altera-Core mind. 'normal' in 9 Min.",
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
    m_wstrDescription = "Sprich mit Vanessa",
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
    m_wstrDescription = "Aufklärung Dritter Bezirk",
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
    m_wstrDescription = "Erzvargo-Palastwache",
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
    m_wstrDescription = "Erzvargo-Scharfschütze",
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
    m_wstrDescription = "Erzvargo-Sturmsoldat",
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
    m_wstrDescription = "Sprich mit Noel",
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
    m_wstrDescription = "Kockatrigl",
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
    m_wstrDescription = "Blutesser",
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
    m_wstrDescription = "Sprich mit Vanessa",
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
    m_wstrDescription = "Unohound",
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
    m_wstrDescription = "Erzvargo-Attentäter",
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
    m_wstrDescription = "Dritter Bezirk 'Experte'",
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
    m_wstrDescription = "Unohound (Dritter Bezirk 'Experte')",
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
    m_wstrDescription = "Hoffnungsbrücke",
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
    m_wstrDescription = "Barrikaden (Hoffnungsbrücke)",
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
    m_wstrDescription = "Vargo-Kommandant",
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
    m_wstrDescription = "Dunkelelf-Wachposten",
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
    m_wstrDescription = "Hoffnungsbrücke 'schwer'",
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
    m_wstrDescription = "Molpos",
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
    m_wstrDescription = "Chloe (Hoffnungsbrücke 'Experte')",
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
    m_wstrDescription = "Hoffnungsbrücke 'Experte'",
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
    m_wstrDescription = "Noten des Vargo-Marschlieds stehlen (Vargo-Kommandant)",
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
    m_wstrDescription = "Dritter Bezirk 'schwer'",
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
    m_wstrDescription = "Vargozähne (Vargo-Soldaten, Hauptstadt Belder)",
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
    m_wstrDescription = "Kockatrigl-Tränen (Kockatrigl, Dritter Bezirk mind. 'schwer')",
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
    m_wstrDescription = "Wyvern-Eckzähne (Wyvern, Dritter Bezirk mind. 'schwer')",
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
    m_wstrDescription = "Klares Wasser der roten Kraft (Blutesser, Hoffnungsbrücke mind. 'schwer')",
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
    m_wstrDescription = "Dunkelelfen-Kette (Dunkelelf-Wachposten)",
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
    m_wstrDescription = "Verwertbares Rüstungsfragment (erhältlich durch Zerlegen von Lv.41-50 Ausrüstung)",
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
    m_wstrDescription = "Kristall von El (erhältlich durch Zerlegen von Lv.38-47 Ausrüstung)",
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
    m_wstrDescription = "Hochwertiger Zauberstein",
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
    m_wstrDescription = "Sprich mit Lennart in Elder",
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
    m_wstrDescription = "Rostiges Waffenfragment (erhältlich durch Zerlegen von Lv.1-20 Ausrüstung)",
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
    m_wstrDescription = "Geschärfte Klinge",
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
    m_wstrDescription = "Bearbeitetes Waffenfragment (erhältlich durch Zerlegen von Lv.38-47 Ausrüstung)",
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
    m_wstrDescription = "Verwertbares Rüstungsfragment (erhältlich durch Zerlegen von Lv.38-47 Ausrüstung)",
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
    m_wstrDescription = "Hochwertiger Zauberstein",
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
    m_wstrDescription = "Sprich mit Hanna im Feldlager vor Belder",
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
    m_wstrDescription = "Sprich mit Aranka",
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
    m_wstrDescription = "Sprich mit Solvej",
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
    m_wstrDescription = "Solvejs verlorene Unterlagen (Drachenweg bis Drachennest)",
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
    m_wstrDescription = "Bring das Gildenmeisterzertifikat zu Aranka",
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
    m_wstrDescription = "Sprich mit Aron in Altera",
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
    m_wstrDescription = "Speicherlegierung (Nasod auf Altera)",
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
    m_wstrDescription = "Crowrider (Nasodfabrik mind. 'normal')",
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
    m_wstrDescription = "Nasodkönig (Altera-Core mind. 'normal')",
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
    m_wstrDescription = "Sprich mit Lento in Peita",
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
    m_wstrDescription = "Vargo-Rangabzeichen (Vargo in Peita)",
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
    m_wstrDescription = "Sprich mit Aron in Altera",
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
    m_wstrDescription = "Speicherlegierung (Nasod auf Altera)",
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
    m_wstrDescription = "Crowrider (Nasodfabrik mind. 'normal')",
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
    m_wstrDescription = "Nasodkönig (Altera-Core mind. 'normal')",
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
    m_wstrDescription = "Sprich mit Lento in Peita",
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
    m_wstrDescription = "Reiner Kristall der Magie (Vargo-Erzmagier in Peita)",
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
    m_wstrDescription = "Fester Felsen mit Fußabdruck (Golems in Peita)",
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
    m_wstrDescription = "Reiner Kristall der Kraft (Vargo in Peita)",
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
    m_wstrDescription = "Altera-Core 'Experte' mit S-Wertung",
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
    m_wstrDescription = "Altarraum 'Experte' mit S-Wertung",
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
    m_wstrDescription = "Kontaminierte Zone mind. 'normal'",
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
    m_wstrDescription = "Henirs Raumzeit (Challenge oder Normal)",
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
    m_wstrDescription = "Sprich mit Aron in Altera",
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
    m_wstrDescription = "Speicherlegierung (Nasod auf Altera)",
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
    m_wstrDescription = "Nasodkönig (Altera-Core mind. 'normal')",
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
    m_wstrDescription = "Sprich mit Alvar in Peita",
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
    m_wstrDescription = "Golem (Peita)",
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
    m_wstrDescription = "Sprich mit Aron, dem Ältesten von Altera",
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
    m_wstrDescription = "Such-Core (Nasodaufklärer L5, Altera)",
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
    m_wstrDescription = "Nasodschlitzer (Nasodfabrik mind. 'normal')",
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
    m_wstrDescription = "Nasodkönig (Altera-Core mind. 'normal')",
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
    m_wstrDescription = "Sprich mit Alvar in Peita",
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
    m_wstrDescription = "Elfenstein des Magiewindes (Vargo-Erzmagier in Peita)",
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
    m_wstrDescription = "Sprich mit Aron, dem Ältesten von Altera",
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
    m_wstrDescription = "Speicherlegierung (Nasod auf Altera)",
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
    m_wstrDescription = "Titaniumklinge (Nasodschlitzer, Nasodfabrik)",
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
    m_wstrDescription = "Sprich mit Alvar in Peita",
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
    m_wstrDescription = "Unterwelt-Seelenstein (Vargo-Erzmagier in Peita)",
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
    m_wstrDescription = "Sprich mit Aron, dem Ältesten von Altera",
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
    m_wstrDescription = "Speicherlegierung (Nasod auf Altera)",
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
    m_wstrDescription = "Nasodbrecher W9 (Nasodfabrik mind. 'normal')",
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
    m_wstrDescription = "Sprich mit Alvar in Peita",
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
    m_wstrDescription = "Symbol des Hohen Dämonen (Boss-Monster von Peita)",
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
    m_wstrDescription = "Sprich mit Aron in Altera",
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
    m_wstrDescription = "Speicherlegierung (Nasod auf Altera)",
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
    m_wstrDescription = "Nasod-Anführer-Code (Crowrider, Nasodfabrik)",
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
    m_wstrDescription = "Sprich mit Lento in Peita",
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
    m_wstrDescription = "Vargo-Speersoldat (Peita)",
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
    m_wstrDescription = "Vargo-Schildsoldat (Peita)",
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
    m_wstrDescription = "Vargo-Erzmagier (Peita)",
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
    m_wstrDescription = "Sprich mit Aron, dem Ältesten von Altera",
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
    m_wstrDescription = "Magnetfeld-Generator (Nasodschlitzer, Nasodfabrik)",
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
    m_wstrDescription = "Kleiner Eldritkristall (Zerlegen von Ausrüstung Lv.28-37)",
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
    m_wstrDescription = "Starkes Elixier",
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
    m_wstrDescription = "Hemm-Chip (Nasodbrecher W9, Altera-Core)",
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
    m_wstrDescription = "Legierungsschild-Splitter (Nasod-Eliteschildwächter, Altera-Core)",
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
    m_wstrDescription = "Sprich mit Lento in Peita",
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
    m_wstrDescription = "Verfeinerter Dunkelstahl (Dyurahan, Tempeleingang)",
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
    m_wstrDescription = "Sprich mit Aron in Altera",
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
    m_wstrDescription = "Nasod (Altera)",
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
    m_wstrDescription = "Crowrider (Nasodfabrik mind. 'normal')",
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
    m_wstrDescription = "Such-Core (Nasodaufklärer L5, Altera)",
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
    m_wstrDescription = "Titaniumklinge (Nasodschlitzer, Nasodfabrik)",
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
    m_wstrDescription = "Nasod-Anführer-Code (Crowrider, Nasodfabrik)",
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
    m_wstrDescription = "Sprich mit Lento in Peita",
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
    m_wstrDescription = "Verfeinerter Dunkelstahl (Dyurahan, Tempeleingang)",
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
    m_wstrDescription = "Sprich mit Aron, dem Ältesten von Altera",
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
    m_wstrDescription = "Nasod-Core (Nasod auf Altera)",
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
    m_wstrDescription = "Magnetfeld-Generator (Nasodaufklärer L5, Altera-Core)",
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
    m_wstrDescription = "Geheimtrank der Alchemie (beim Alchemisten kaufen)",
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
    m_wstrDescription = "Sprich mit Lento in Peita",
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
    m_wstrDescription = "Veredelte Metallniete (Vargo in Peita)",
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
    m_wstrDescription = "Fluoreszierende Substanz (Leuchtkäfer, Peita)",
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
    m_wstrDescription = "Golemherz (Golems in Peita)",
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
    m_wstrDescription = "Untergrundlabor mind. 'normal'",
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
    m_wstrDescription = "Leibgarde (Untergrundlabor 'normal')",
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
    m_wstrDescription = "Untergrundlabor 'Hölle'",
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
    m_wstrDescription = "Untergrundlabor 'Hölle' mit mind. A-Wertung",
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
    m_wstrDescription = "Bauteile des Deus Ex Nasod (Untergrundlabor 'Hölle')",
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
    m_wstrDescription = "Untergrundlabor 'Hölle' in 12 Min.",
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
    m_wstrDescription = "Deus ex Nasod (Untergrundlabor 'Hölle', Luto-Modus)",
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
    m_wstrDescription = "Unterwelt mind. 'normal'",
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
    m_wstrDescription = "Saurus-Antreiber (Unterwelt 'normal')",
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
    m_wstrDescription = "Unterwelt 'Hölle'",
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
    m_wstrDescription = "Unterwelt 'Hölle' mit mind. A-Wertung",
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
    m_wstrDescription = "Flügelknochen des Knochendrachen (Unterwelt 'Hölle')",
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
    m_wstrDescription = "Unterwelt 'Hölle' in 12 Min.",
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
    m_wstrDescription = "Knochendrache (Unterwelt 'Hölle', Luto-Modus)",
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
    m_wstrDescription = "Kontaminierte Zone mind. 'normal'",
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
    m_wstrDescription = "Kontaminierter Wächter (Kontaminierte Zone 'normal')",
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
    m_wstrDescription = "Kontaminierte Zone 'Hölle'",
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
    m_wstrDescription = "Kontaminierte Zone 'Hölle' mit mind. A-Wertung",
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
    m_wstrDescription = "Sporen der Alterasie Typ-H (Kontaminierte Zone 'Hölle')",
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
    m_wstrDescription = "Weiterentwickelte Alterasie (Kontaminierte Zone 'Hölle')",
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
    m_wstrDescription = "Alterasie Typ-H (Kontaminierte Zone 'Hölle', Luto-Modus)",
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
    m_wstrDescription = "Drachenweg 'Experte'",
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
    m_wstrDescription = "Besma-See 'Experte'",
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
    m_wstrDescription = "Qualitätsleder (Feuer-Komodo)",
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
    m_wstrDescription = "Farbstoff von Besmas Ureinwohnern",
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
    m_wstrDescription = "Hochwertiges Eisenerz (Nasod, Großes Bergwerk)",
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
    m_wstrDescription = "Zinkfragment (Transport-Nasod, Großes Bergwerk)",
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
    m_wstrDescription = "Stollen zerstören (Großes Bergwerk)",
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
    m_wstrDescription = "Krähen-Luftschiff 'Experte' in 8 Min.",
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
    m_wstrDescription = "Nasodaufklärer L5 (Ebene der Rückkehr mind. 'normal')",
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
    m_wstrDescription = "Kontaminierter Nasodbohrer C4 (Ebene der Rückkehr mind. 'normal')",
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
    m_wstrDescription = "Energiequelle eines Nasod (Ignis und Leviathan, Altera-Ebene mind. 'normal')",
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
    m_wstrDescription = "Hochwertiges Pergament (Zubehörladen)",
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
    m_wstrDescription = "Hochwertiges Pergament (Zubehörladen)",
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
    m_wstrDescription = "Edle Perlen der Reinigung (Magiergeist, Nachtwald mind. 'normal')",
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
    m_wstrDescription = "Perle der Ents (Nachtwald mind. 'schwer')",
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
    m_wstrDescription = "Großer Poru (Benders' Höhle mind. 'normal')",
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
    m_wstrDescription = "Anmeldeformular zur Expertenausbildung",
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
    m_wstrDescription = "Starker Kieferknochen eines Trax (Trax, Sander-Dungeons)",
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
    m_wstrDescription = "Energie mit starker Aura (mittlere Bossmonster, Sander)",
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
    m_wstrDescription = "Dämonen-Spur (Bossmonster, Sander-Dungeon 'Experte')",
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
    m_wstrDescription = "Krypta 'Experte' in 6 Min.",
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
    m_wstrDescription = "Sanktum 'Experte' in 8 Min.",
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
    m_wstrDescription = "Altarraum 'Experte' in 8 Min.",
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
    m_wstrDescription = "Sprich mit Lennart in Elder",
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
    m_wstrDescription = "Lagunas Tränen (Laguna, Hamel-Dungeons)",
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
    m_wstrDescription = "Izzys Schuppe (Izzy, Hamel-Dungeons)",
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
    m_wstrDescription = "2mal das offizielle PvP-Deathmatch gewinnen",
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
    m_wstrDescription = "1 Kill im offiziellen PvP-Team-Deathmatch",
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
    m_wstrDescription = "Henirs Raumzeit (Challenge oder Normal)",
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
    m_wstrDescription = "Dunkles Portal zerstören",
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
    m_wstrDescription = "Knochenstück der Finsternis",
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
    m_wstrDescription = "Nasodkönig (Altera-Core mind. 'normal')",
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
    m_wstrDescription = "Symbol des hohen Dämonen (Boss-Monster von Peita)",
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
    m_wstrDescription = "Nasodkönig (Altera-Core mind. 'normal')",
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
    m_wstrDescription = "Bombenaffen (Wachturm)",
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
    m_wstrDescription = "Jangos (Wachturm mind. 'schwer')",
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
    m_wstrDescription = "Kids (Wachturm mind. 'schwer')",
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
    m_wstrDescription = "Sprich mit Lelia in Elder",
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
    m_wstrDescription = "Wachturm 'Experte' in 15 Min.",
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
    m_wstrDescription = "Robo-Wächter (Schloss Robo)",
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
    m_wstrDescription = "Armbrustsoldat (Schloss Robo)",
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
    m_wstrDescription = "Schloss Robo mind. 'schwer' mit mind. B-Wertung",
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
    m_wstrDescription = "Mäuseschwänze (Mäuse, Abwasserkanal 'Experte')",
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
    m_wstrDescription = "Königliche Lizenz (Robo-Wächter, Schloss Robo 'Experte')",
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
    m_wstrDescription = "Robo N8 (Schloss Robo)",
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
    m_wstrDescription = "Robo N8 (Schloss Robo mind. 'schwer')",
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
    m_wstrDescription = "Wachturm mind. B-Wertung",
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
    m_wstrDescription = "Spezialmuttern (Willard, Wachturm 'Experte')",
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
    m_wstrDescription = "Werkzeug des Bombenaffen (Bombenaffe, Wachturm 'Experte')",
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
    m_wstrDescription = "Alte Zweige (Weißer Magiergeist, Abwasserkanal 'Experte')",
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
    m_wstrDescription = "Mittelstarke Mana-Elixiere",
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
    m_wstrDescription = "Halskette zur Magiekontrolle (Willard, Wachturm 'Experte')",
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
    m_wstrDescription = "Hochwertiges Schmieröl (Armbrustsoldat, Schloss Robo)",
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
    m_wstrDescription = "Schloss Robo mind. 'schwer' mit max. 50 Gegentreffern",
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
    m_wstrDescription = "Sprich mit Ekko in Elder",
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
    m_wstrDescription = "Schloss Robo mit mind. B-Wertung",
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
    m_wstrDescription = "Armbrustsoldat (Schloss Robo)",
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
    m_wstrDescription = "Schloss Robo 'Experte' mit max. 60 Gegentreffern",
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
    m_wstrDescription = "Sprich mit Hofmann in Elder",
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
    m_wstrDescription = "Willard (Wachturm)",
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
    m_wstrDescription = "Wachturm mind. 'schwer'",
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
    m_wstrDescription = "Sprich mit Lennart in Elder",
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
    m_wstrDescription = "Schloss Robo 'Experte' mit mind. B-Wertung",
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
    m_wstrDescription = "Kleiner Soldat (Schloss Robo)",
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
    m_wstrDescription = "Schloss Robo mind. 'schwer' in 10 Min.",
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
    m_wstrDescription = "Jango (Wachturm)",
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
    m_wstrDescription = "Geheimbrief der Poru-Bande (Willard, Wachturm mind. 'schwer')",
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
    m_wstrDescription = "Bombenaffen (Wachturm 'Experte')",
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
    m_wstrDescription = "Schulterklappe der Belderritter (Kleiner Soldat, Großer Soldat, Schloss Robo)",
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
    m_wstrDescription = "Zeremonienschwert der Belderritter (Robo-Wächter, Schloss Robo mind. 'schwer')",
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
    m_wstrDescription = "Schwertkunstlehrbuch der Belderritter (Berngot, Schloss Robo 'Experte')",
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
    m_wstrDescription = "Lunchbox des Wächters (Robo-Wächter, Schloss Robo)",
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
    m_wstrDescription = "Kontrollchip des Robo N8 (Robo N8, Schloss Robo mind. 'schwer')",
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
    m_wstrDescription = "Magiekristall (Weißer Magiergeist, Abwasserkanal 'Experte')",
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
    m_wstrDescription = "Großer Soldat (Schloss Robo)",
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
    m_wstrDescription = "Wartungs-Maulschlüssel (Kleiner Soldat, Schloss Robo mind. 'schwer')",
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
    m_wstrDescription = "Schloss Robo 'Experte' in 15 Min.",
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
    m_wstrDescription = "Apfel des Bombenaffen (Bombenaffe, Wachturm mind. 'schwer')",
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
    m_wstrDescription = "Tonfaklinge (Kleiner Soldat, Abwasserkanal mind. 'normal')",
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
    m_wstrDescription = "Gesetzesschrift von Belder (Robo-Wächter, Schloss Robo mind. 'schwer')",
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
    m_wstrDescription = "Halskette zur Magiekontrolle (Willard, Wachturm mind. 'schwer')",
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
    m_wstrDescription = "Wachturm 'Experte'",
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
    m_wstrDescription = "Schloss Robo 'Experte'",
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
    m_wstrDescription = "Schloss Robo mit max. 30 Gegentreffern",
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
    m_wstrDescription = "Kleiner Soldat (Schloss Robo mind. 'schwer')",
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
    m_wstrDescription = "Großer Soldat (Schloss Robo mind. 'schwer')",
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
    m_wstrDescription = "Abwasserkanal 'Experte' in 10 Min.",
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
    m_wstrDescription = "Wachturm 'Experte'",
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
    m_wstrDescription = "Cornwell (Robo N8, Schloss Robo 'Experte')",
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
    m_wstrDescription = "Diese Quest kannst du nicht ausführen.",
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
    m_wstrDescription = "Magieanhänger (Willard, Wachturm 'Experte')",
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
    m_wstrDescription = "Mondstein (Vargo, Peita)",
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
    m_wstrDescription = "Folge Lou nach Ruben",
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
    m_wstrDescription = "Noaz-See",
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
    m_wstrDescription = "Befehlsschreiben der Benders-Bande (Tobu, Noaz-See)",
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
    m_wstrDescription = "Els Baum mind. 'normal'",
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
    m_wstrDescription = "Benders (Els Baum mind. 'normal')",
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
    m_wstrDescription = "Benders (Els Baum mind. 'normal')",
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
    m_wstrDescription = "Ruine im Wald mind. 'normal'",
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
    m_wstrDescription = "Anführer der Poru-Banditen (Ruine im Wald mind. 'normal')",
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
    m_wstrDescription = "Willards Entschuldigungsbrief (Willard, Ruine im Wald mind. 'normal')",
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
    m_wstrDescription = "Reliktfragment (Poruräuber, Noaz-See)",
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
    m_wstrDescription = "Nebelsumpf mind. 'normal'",
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
    m_wstrDescription = "Uralter Poru (Nebelsumpf mind. 'normal')",
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
    m_wstrDescription = "Fluchtplan der Bendersbande (Bor, Noaz-See)",
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
    m_wstrDescription = "Sprich mit Hofmann in Elder",
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
    m_wstrDescription = "Geh zum Dorf Elder, um den Klassenwechsel abzuschließen.",
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
    m_wstrDescription = "Robo-Gedenkbrücke",
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
    m_wstrDescription = "Gestohlene Gegenstände (Bendersbande: Söldner, Bendersbande: Späher, Robo-Gedenkbrücke)",
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
    m_wstrDescription = "Sprich mit Hofmann in Elder",
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
    m_wstrDescription = "Nachtwald mind. 'normal'",
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
    m_wstrDescription = "Ursache des Verfalls (Nachtwald mind. 'normal')",
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
    m_wstrDescription = "Verdorbener Ent-Zweig (Ent, Nachtwald mind. 'normal')",
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
    m_wstrDescription = "Nachtwald mind. 'schwer'",
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
    m_wstrDescription = "Magiergeist (Nachtwald mind. 'schwer')",
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
    m_wstrDescription = "Harlekin (Nachtwald mind. 'schwer')",
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
    m_wstrDescription = "Unbekanntes Kartenfragment (Bendersbande: Späher, Bendersbande: Söldner; Robo-Gedenkbrücke)",
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
    m_wstrDescription = "Benders' Höhle mind. 'normal'",
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
    m_wstrDescription = "Vampir (Benders' Höhle mind. 'normal')",
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
    m_wstrDescription = "Großer Roter Poru (Benders' Höhle mind. 'normal')",
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
    m_wstrDescription = "Vampirkönig (Benders' Höhle mind. 'schwer')",
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
    m_wstrDescription = "Lord Robos Geheimbrief (Benders' Höhle mind. 'schwer')",
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
    m_wstrDescription = "Benders' Höhle mind. 'schwer'",
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
    m_wstrDescription = "Abwasserkanal mind. 'normal'",
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
    m_wstrDescription = "Abwasserkanal mind. 'normal'",
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
    m_wstrDescription = "Abwasserkanal mind. 'schwer'",
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
    m_wstrDescription = "Benders' zerlumpte Halskette (Benders, Abwasserkanal mind. 'schwer')",
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
    m_wstrDescription = "Zwillingswachtürme",
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
    m_wstrDescription = "Stulpen des Großen Soldaten (Wachturm-Garde, Zwillingswachtürme)",
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
    m_wstrDescription = "Messer des Kleinen Soldaten (Robo-Aufklärer, Zwillingswachtürme)",
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
    m_wstrDescription = "Aus dem Schloss gestohlene Gegenstände (Potschi, Katschi; Zwillingswachtürme)",
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
    m_wstrDescription = "Wachturm mind. 'normal'",
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
    m_wstrDescription = "Willards Entschuldigungsbrief (Willard, Wachturm mind. 'schwer')",
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
    m_wstrDescription = "Wachturm mind. 'schwer'",
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
    m_wstrDescription = "Jango (Wachturm mind. 'schwer')",
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
    m_wstrDescription = "Kid (Wachturm mind. 'schwer')",
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
    m_wstrDescription = "Schloss Robo mind. 'normal'",
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
    m_wstrDescription = "Lord Robo suchen (Schloss Robo mind. 'normal')",
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
    m_wstrDescription = "Robo N8 (Schloss Robo mind. 'normal')",
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
    m_wstrDescription = "Schloss Robo mind. 'schwer'",
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
    m_wstrDescription = "Schlüsselbund (Berngot, Schloss Robo mind. 'schwer')",
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
    m_wstrDescription = "Schloss Robo 'Experte'",
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
    m_wstrDescription = "Unbekanntes Uhrwerk (Leibgarde, Schloss Robo 'Experte')",
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
    m_wstrDescription = "Teile von Robo N8 (Robo N8, Schloss Robo 'Experte')",
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
    m_wstrDescription = "Sprich mit Solvej in Besma",
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
    m_wstrDescription = "Besagara-Wasserfall",
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
    m_wstrDescription = "Zerbrochenes Antriebsmodul von Robo N8 (Komodo, Besagara-Wasserfall)",
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
    m_wstrDescription = "Drachenweg mind. 'normal'",
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
    m_wstrDescription = "Echsenmensch (Drachenweg mind. 'normal')",
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
    m_wstrDescription = "Echsenkrieger (Drachenweg mind. 'normal')",
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
    m_wstrDescription = "Drachenweg mind. 'schwer'",
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
    m_wstrDescription = "Zerbrochenes Langschwert (Echsenkrieger, Drachenweg mind. 'schwer')",
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
    m_wstrDescription = "Drachenweg 'Experte'",
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
    m_wstrDescription = "Skorpionstachel (Skorpion, Drachenweg 'Experte')",
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
    m_wstrDescription = "Schere des Skorpionkönigs (Skorpionkönig, Drachenweg 'Experte')",
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
    m_wstrDescription = "Besma-See mind. 'normal'",
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
    m_wstrDescription = "Berauk (Besma-See mind. 'normal')",
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
    m_wstrDescription = "Berauk (Besma-See mind. 'normal')",
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
    m_wstrDescription = "Sprich mit Chachabuk in Besma",
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
    m_wstrDescription = "Besma-See mind. 'schwer'",
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
    m_wstrDescription = "Finde die Ursache (Echsenschamane, Besma-See mind. 'schwer')",
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
    m_wstrDescription = "Hypnosekugeln (Echsenmenschen, Besma-See mind. 'schwer')",
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
    m_wstrDescription = "Sprich mit Chachabuk in Besma",
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
    m_wstrDescription = "Besma-See 'Experte'",
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
    m_wstrDescription = "Gürteltier (Besma-See 'Experte')",
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
    m_wstrDescription = "Gürteltierkönig (Besma-See 'Experte')",
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
    m_wstrDescription = "Besma-See Nacht mind. 'normal'",
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
    m_wstrDescription = "Herrscher des Nacht-Sees finden (Besma-See Nacht mind. 'normal')",
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
    m_wstrDescription = "Schattenkrieger (Besma-See Nacht mind. 'normal')",
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
    m_wstrDescription = "Besma-See Nacht mind. 'schwer'",
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
    m_wstrDescription = "Stumpfe Speerspitze (Echsenmensch, Besma-See Nacht mind. 'normal')",
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
    m_wstrDescription = "Besma-See Nacht 'Experte'",
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
    m_wstrDescription = "Kartenfetzen (Echsenmenschen, Besma-See Nacht 'Experte')",
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
    m_wstrDescription = "Drachennest mind. 'normal'",
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
    m_wstrDescription = "Schamane Kaya (Drachennest mind. 'normal')",
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
    m_wstrDescription = "Schamane Kaya (Drachennest mind. 'normal')",
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
    m_wstrDescription = "Sprich mit Chachabuk in Besma",
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
    m_wstrDescription = "Drachennest mind. 'schwer'",
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
    m_wstrDescription = "Teil eines Fluchmanuskripts (Wilder Echsenschamane, Drachennest mind. 'normal')",
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
    m_wstrDescription = "Drachennest mind. 'schwer'",
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
    m_wstrDescription = "Dunkler Berauk (Drachennest 'Experte')",
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
    m_wstrDescription = "Sprich mit Chachabuk, dem Alchemisten von Besma",
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
    m_wstrDescription = "Sprich mit Solvej, der Sicherheitschefin von Besma",
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
    m_wstrDescription = "Großes Bergwerk mind. 'normal'",
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
    m_wstrDescription = "Robo N8 Mk2 (Großes Bergwerk mind. 'normal')",
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
    m_wstrDescription = "Robo N8 Mk2 (Großes Bergwerk mind. 'normal')",
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
    m_wstrDescription = "Großes Bergwerk mind. 'schwer'",
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
    m_wstrDescription = "Nasod-Bergarbeiter (Großes Bergwerk mind. 'schwer')",
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
    m_wstrDescription = "Nasodbohrer C4 (Großes Bergwerk mind. 'schwer')",
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
    m_wstrDescription = "Großes Bergwerk 'Experte'",
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
    m_wstrDescription = "Transportluftschiff-Streckenplan (Robo N8 Mk2, Großes Bergwerk 'Experte')",
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
    m_wstrDescription = "Transportluftschiff mind. 'normal'",
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
    m_wstrDescription = "Gebiet sichern (Transportluftschiff mind. 'normal')",
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
    m_wstrDescription = "Mecha-Suit N9 (Transportluftschiff mind. 'normal')",
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
    m_wstrDescription = "Transportluftschiff mind. 'schwer'",
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
    m_wstrDescription = "Robo N9 (Transportluftschiff mind. 'schwer')",
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
    m_wstrDescription = "Robo N9 (Transportluftschiff mind. 'schwer')",
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
    m_wstrDescription = "Transportluftschiff 'Experte'",
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
    m_wstrDescription = "Nasodheiler (Transportluftschiff 'Experte')",
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
    m_wstrDescription = "Bruchlandung",
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
    m_wstrDescription = "Nach Altera gehen",
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
    m_wstrDescription = "Krähen-Luftschiff mind. 'normal'",
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
    m_wstrDescription = "Anführer suchen (Krähen-Luftschiff mind. 'normal')",
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
    m_wstrDescription = "Raven (Krähen-Luftschiff mind. 'normal')",
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
    m_wstrDescription = "Krähen-Luftschiff mind. 'schwer'",
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
    m_wstrDescription = "Wappen der Krähenbande (Krähenbanden-Scharfschütze, Krähen-Luftschiff mind. 'schwer')",
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
    m_wstrDescription = "Krähen-Luftschiff 'Experte'",
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
    m_wstrDescription = "Geschütz (Krähen-Luftschiff 'Experte')",
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
    m_wstrDescription = "Raven (Krähen-Luftschiff 'Experte')",
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
    m_wstrDescription = "Ebene der Rückkehr mind. 'normal'",
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
    m_wstrDescription = "Ebene der Rückkehr mind. 'normal'",
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
    m_wstrDescription = "Kontaminierter Nasodbohrer C4 (Ebene der Rückkehr mind. 'normal')",
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
    m_wstrDescription = "Ebene der Rückkehr mind. 'schwer'",
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
    m_wstrDescription = "Speicherchip des Nasodaufklärers (Nasodaufklärer L5, Ebene der Rückkehr mind. 'schwer')",
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
    m_wstrDescription = "Kontaminierter Nasodbohrer C4 (Ebene der Rückkehr mind. 'schwer')",
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
    m_wstrDescription = "Ebene der Rückkehr 'Experte'",
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
    m_wstrDescription = "Probe von Kontaminierten Sporen (Kontaminierter Nasodbohrer C4, Ebene der Rückkehr 'Experte')",
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
    m_wstrDescription = "Tunnel B4-1 mind. 'normal'",
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
    m_wstrDescription = "Tunnel B4-1 mind. 'normal'",
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
    m_wstrDescription = "Tunnel B4-1 mind. 'schwer' in 8 Min.",
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
    m_wstrDescription = "Tunnel B4-1 mind. 'schwer'",
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
    m_wstrDescription = "Dampfregler (Tunnel B4-1 mind. 'schwer')",
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
    m_wstrDescription = "Alterasien (Tunnel B4-1 mind. 'schwer')",
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
    m_wstrDescription = "Alterasienspore (Tunnel B4-1 mind. 'schwer')",
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
    m_wstrDescription = "Tunnel B4-1 'Experte'",
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
    m_wstrDescription = "Übler Alterasientopf (Tunnel B4-1 'Experte')",
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
    m_wstrDescription = "Altera-Ebene mind. 'normal'",
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
    m_wstrDescription = "Nasodskorpion (Altera-Ebene mind. 'normal')",
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
    m_wstrDescription = "Nasodgärtner F8 (Altera-Ebene mind. 'normal')",
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
    m_wstrDescription = "Altera-Ebene mind. 'normal'",
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
    m_wstrDescription = "Altera-Ebene mind. 'schwer'",
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
    m_wstrDescription = "Altera-Ebene mind. 'schwer'",
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
    m_wstrDescription = "Leviathan (Altera-Ebene mind. 'schwer')",
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
    m_wstrDescription = "Wassernasod: Leviathan (Altera-Ebene mind. 'schwer')",
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
    m_wstrDescription = "Altera-Ebene mind. 'schwer'",
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
    m_wstrDescription = "Altera-Ebene 'Experte'",
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
    m_wstrDescription = "Schockfallen (Altera-Ebene mind. 'schwer')",
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
    m_wstrDescription = "Nasodfabrik mind. 'normal'",
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
    m_wstrDescription = "Eingang zum Altera-Core finden (Nasodfabrik mind. 'normal')",
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
    m_wstrDescription = "Crowrider (Nasodfabrik mind. 'normal')",
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
    m_wstrDescription = "Nasodfabrik mind. 'schwer'",
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
    m_wstrDescription = "Nasod-Produktionsmaschine (Nasodfabrik mind. 'schwer')",
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
    m_wstrDescription = "Crowrider (Nasodfabrik mind. 'schwer')",
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
    m_wstrDescription = "Nasodfabrik 'Experte'",
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
    m_wstrDescription = "Nasod-Skorpionkönig (Nasodfabrik 'Experte')",
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
    m_wstrDescription = "Altera-Core mind. 'normal'",
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
    m_wstrDescription = "Herrscher der Nasod (Altera-Core mind. 'normal')",
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
    m_wstrDescription = "Nasodkönig (Altera-Core mind. 'normal')",
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
    m_wstrDescription = "Angriffsgenerator (Altera-Core mind. 'normal')",
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
    m_wstrDescription = "Schildgenerator (Altera-Core mind. 'normal')",
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
    m_wstrDescription = "Nasodbrecher W9 (Altera-Core mind. 'schwer')",
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
    m_wstrDescription = "Nasod-Gefechtswächter (Altera-Core mind. 'schwer')",
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
    m_wstrDescription = "Nasodeiswächter (Altera-Core mind. 'schwer')",
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
    m_wstrDescription = "Altera-Core mind. 'schwer'",
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
    m_wstrDescription = "Strahlend leuchtendes Eldrit (Nasodkönig, Altera-Core 'Experte')",
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
    m_wstrDescription = "Altera-Core 'Experte'",
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
    m_wstrDescription = "Strahlend leuchtendes Eldrit (Altera-Core 'Experte')",
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
    m_wstrDescription = "Strahlend leuchtendes Eldrit (Nasodkönig, Altera-Core 'Experte')",
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
    m_wstrDescription = "Sprich mit Alvar in Peita",
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
    m_wstrDescription = "Geh nach Peita, um den Klassenwechsel abzuschließen.",
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
    m_wstrDescription = "Tempeleingang mind. 'normal'",
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
    m_wstrDescription = "Vargo-Speersoldat (Tempeleingang mind. 'normal')",
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
    m_wstrDescription = "Vargo-Bogenschütze (Tempeleingang mind. 'normal')",
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
    m_wstrDescription = "Vargo-Schildsoldat (Tempeleingang mind. 'normal')",
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
    m_wstrDescription = "Dyurahan-Ritter (Tempeleingang mind. 'normal')",
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
    m_wstrDescription = "Tempeleingang mind. 'schwer'",
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
    m_wstrDescription = "Vargo-Erzmagier (Tempeleingang mind. 'schwer')",
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
    m_wstrDescription = "Tempeleingang 'Experte'",
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
    m_wstrDescription = "Seelenkristall des Dyurahan-Ritters (Dyurahan-Ritter,Tempeleingang 'Experte')",
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
    m_wstrDescription = "Seelenkristall bei Alvar zerstören",
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
    m_wstrDescription = "Spiralkorridor mind. 'normal'",
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
    m_wstrDescription = "Ausgang finden (Spiralkorridor mind. 'normal')",
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
    m_wstrDescription = "Techortyrann (Tempeleingang mind. 'normal')",
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
    m_wstrDescription = "Spiralkorridor mind. 'schwer'",
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
    m_wstrDescription = "Golemherz (Steingolem, Spiralkorridor mind. 'schwer')",
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
    m_wstrDescription = "Spiralkorridor 'Experte'",
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
    m_wstrDescription = "Herz des Techortyrann (Techortyrann, Spiralkorridor 'Experte')",
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
    m_wstrDescription = "Bring Alvar das Herz",
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
    m_wstrDescription = "Krypta mind. 'normal'",
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
    m_wstrDescription = "Identität der Dunkelheit (Krypta mind. 'normal')",
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
    m_wstrDescription = "Amorphyst (Krypta mind. 'normal')",
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
    m_wstrDescription = "Krypta mind. 'schwer'",
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
    m_wstrDescription = "Leere Flasche (Manaesser, Krypta mind. 'schwer')",
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
    m_wstrDescription = "Amorphyst (Krypta mind. 'schwer')",
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
    m_wstrDescription = "Krypta 'Experte'",
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
    m_wstrDescription = "Dyuter (Krypta 'Experte')",
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
    m_wstrDescription = "Dunkler Eldritkristall (Dyuter, Krypta 'Experte')",
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
    m_wstrDescription = "Sprich mit Alvar",
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
    m_wstrDescription = "Dunkler Eldritkristall (Lento, Peita)",
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
    m_wstrDescription = "Tempelgarten mind. 'normal'",
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
    m_wstrDescription = "Quelle der Kontaminierung prüfen (Tempelgarten mind. 'normal')",
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
    m_wstrDescription = "Efeu-Probe (Yateveo, Tempelgarten mind. 'normal')",
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
    m_wstrDescription = "Sprich mit Alvar in Peita",
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
    m_wstrDescription = "Efeu-Probe (Chachabuk, Besma)",
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
    m_wstrDescription = "Tempelgarten mind. 'schwer'",
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
    m_wstrDescription = "Portalfragment (Tempelgarten mind. 'schwer')",
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
    m_wstrDescription = "Tempelgarten 'Experte'",
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
    m_wstrDescription = "Syrus (Tempelgarten 'Experte')",
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
    m_wstrDescription = "Syrus (Tempelgarten 'Experte')",
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
    m_wstrDescription = "Sanktum mind. 'normal'",
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
    m_wstrDescription = "Sanktum mind. 'normal'",
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
    m_wstrDescription = "Cortisak (Sanktum mind. 'normal')",
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
    m_wstrDescription = "Sanktum mind. 'schwer'",
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
    m_wstrDescription = "Sanktum mind. 'schwer'",
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
    m_wstrDescription = "Gargoylehorn (Steingargoyle, Sanktum mind. 'schwer')",
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
    m_wstrDescription = "Sanktum 'Experte'",
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
    m_wstrDescription = "Vargo-Hauptmann (Sanktum 'Experte')",
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
    m_wstrDescription = "Vargo-Hauptmann (Sanktum 'Experte')",
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
    m_wstrDescription = "Altarraum mind. 'normal'",
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
    m_wstrDescription = "Abzeichen des Elitesoldaten (Vargo-Hauptmann, Altarraum mind. 'normal')",
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
    m_wstrDescription = "Altarraum mind. 'normal'",
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
    m_wstrDescription = "Berrut (Altarraum mind. 'normal')",
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
    m_wstrDescription = "Altarraum mind. 'schwer'",
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
    m_wstrDescription = "Abzeichen des Elitesoldaten (Syrus, Altarraum mind. 'schwer')",
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
    m_wstrDescription = "Versiegelungsstein der schwarzen Kraft (Altarraum mind. 'schwer')",
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
    m_wstrDescription = "Dyuter (Altarraum 'Experte')",
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
    m_wstrDescription = "Vargo-Hauptmann (Altarraum 'Experte')",
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
    m_wstrDescription = "Syrus (Altarraum 'Experte')",
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
    m_wstrDescription = "Berrut (Altarraum 'Experte')",
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
    m_wstrDescription = "Altarraum 'Experte'",
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
    m_wstrDescription = "Dyuter (Altarraum 'Experte')",
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
    m_wstrDescription = "Syrus (Altarraum 'Experte')",
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
    m_wstrDescription = "Vargo-Hauptmann (Altarraum 'Experte')",
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
    m_wstrDescription = "Peita-Dungeon 'Experte' mit mind. B-Wertung",
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
    m_wstrDescription = "Belder-Dungeon 'Experte' mit mind. A-Wertung",
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
    m_wstrDescription = "Sander-Dungeon 'Experte' mit mind. S-Wertung",
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
    m_wstrDescription = "Sprich mit Vanessa im Feldlager",
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
    m_wstrDescription = "Dritter Bezirk mind. 'normal'",
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
    m_wstrDescription = "Dritter Bezirk mind. 'normal'",
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
    m_wstrDescription = "Unohound (Dritter Bezirk mind. 'normal')",
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
    m_wstrDescription = "Wyvern (Dritter Bezirk mind. 'schwer')",
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
    m_wstrDescription = "Kockatrigl (Dritter Bezirk mind. 'schwer')",
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
    m_wstrDescription = "Unohound (Dritter Bezirk mind. 'schwer')",
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
    m_wstrDescription = "Dritter Bezirk mind. 'schwer'",
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
    m_wstrDescription = "Erzvargo-Attentäter (Dritter Bezirk mind. 'schwer')",
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
    m_wstrDescription = "Dritter Bezirk 'Experte'",
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
    m_wstrDescription = "Noten des Vargo-Marschlieds (Vargo-Kommandant, Dritter Bezirk 'Experte')",
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
    m_wstrDescription = "Erzvargo-Palastwache (Dritter Bezirk 'Experte')",
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
    m_wstrDescription = "Erzvargo-Sturmsoldat (Dritter Bezirk 'Experte')",
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
    m_wstrDescription = "Erzvargo-Scharfschütze (Dritter Bezirk 'Experte')",
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
    m_wstrDescription = "Hoffnungsbrücke mind. 'normal'",
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
    m_wstrDescription = "Hoffnungsbrücke mind. 'normal'",
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
    m_wstrDescription = "Chloe (Hoffnungsbrücke mind. 'normal')",
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
    m_wstrDescription = "Hoffnungsbrücke mind. 'schwer'",
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
    m_wstrDescription = "Barrikaden (Hoffnungsbrücke mind. 'schwer')",
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
    m_wstrDescription = "Hoffnungsbrücke 'Experte'",
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
    m_wstrDescription = "Erzvargo-Attentäter (Hoffnungsbrücke 'Experte')",
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
    m_wstrDescription = "Molpos (Hoffnungsbrücke 'Experte')",
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
    m_wstrDescription = "Dunkelelf-Wachposten (Hoffnungsbrücke 'Experte')",
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
    m_wstrDescription = "Chloe (Hoffnungsbrücke 'Experte')",
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
    m_wstrDescription = "Dunkelelf-Wachposten (Hoffnungsbrücke mind. 'schwer')",
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
    m_wstrDescription = "Chloe (Hoffnungsbrücke mind. 'schwer')",
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
    m_wstrDescription = "Vargo-Kommandant (Hoffnungsbrücke 'Experte')",
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
    m_wstrDescription = "Palaststraße mind. 'normal'",
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
    m_wstrDescription = "Palasstraße mind. 'normal'",
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
    m_wstrDescription = "Vargopanzer (Palaststraße mind. 'normal')",
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
    m_wstrDescription = "Palaststraße mind. 'schwer'",
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
    m_wstrDescription = "Kena (Palaststraße mind. 'schwer')",
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
    m_wstrDescription = "Palaststraße 'Experte'",
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
    m_wstrDescription = "Maggurd (Palaststraße 'Experte')",
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
    m_wstrDescription = "Polka (Palaststraße 'Experte')",
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
    m_wstrDescription = "Maggurd (Palaststraße mind. 'schwer')",
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
    m_wstrDescription = "Palaststraße mind. 'schwer'",
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
    m_wstrDescription = "Lehrbuch der Alchemie (Erzvargo-Alchemist, Palaststraße 'Experte')",
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
    m_wstrDescription = "Vargopanzer (Palaststraße 'Experte')",
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
    m_wstrDescription = "Brennende Brücke mind. 'normal'",
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
    m_wstrDescription = "Brennende Brücke mind. 'normal'",
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
    m_wstrDescription = "Irrer Puppenmeister (Brennende Brücke mind. 'normal')",
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
    m_wstrDescription = "Brennende Brücke mind. 'schwer'",
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
    m_wstrDescription = "Baradon (Brennende Brücke mind. 'schwer')",
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
    m_wstrDescription = "Belagerungsturm (Brennende Brücke mind. 'schwer')",
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
    m_wstrDescription = "Verkohlte Kinderpuppe (Kena, Brennende Brücke mind. 'schwer')",
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
    m_wstrDescription = "Irrer Puppenmeister (Brennende Brücke 'Experte')",
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
    m_wstrDescription = "Brennende Brücke 'Experte'",
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
    m_wstrDescription = "Seelenstück des Puppenmeisters (Glöckchen-Puppe, Brennende Brücke 'Experte')",
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
    m_wstrDescription = "Händlerviertel mind. 'normal'",
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
    m_wstrDescription = "Gebiet sichern (Händlerviertel mind. 'normal')",
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
    m_wstrDescription = "Spriggan (Händlerviertel mind. 'normal')",
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
    m_wstrDescription = "Erzvargo-Attentäter (Händlerviertel mind. 'normal')",
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
    m_wstrDescription = "Dunkelelf-Wachposten (Händlerviertel mind. 'normal')",
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
    m_wstrDescription = "Händlerviertel mind. 'schwer'",
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
    m_wstrDescription = "Rezept für Brummbrumm-Trank (Düsterer Pyromar, Händlerviertel mind. 'schwer')",
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
    m_wstrDescription = "Verdächtige Medizinflasche (Spriggan, Händlerviertel mind. 'schwer')",
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
    m_wstrDescription = "Spriggan (Händlerviertel 'Experte')",
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
    m_wstrDescription = "Händlerviertel 'Experte'",
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
    m_wstrDescription = "Fragment 1 des Lageplans der Dämonen (Düsterer Pyromar, Händlerviertel 'Experte')",
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
    m_wstrDescription = "Fragment 2 des Lageplans der Dämonen (Spriggan, Händlerviertel 'Experte')",
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
    m_wstrDescription = "Südtor mind. 'normal'",
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
    m_wstrDescription = "Südtor mind. 'normal'",
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
    m_wstrDescription = "Dunkler Nephil (Südtor mind. 'normal')",
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
    m_wstrDescription = "Südtor mind. 'schwer'",
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
    m_wstrDescription = "Erzvargo-Rüstungssoldat (Südtor mind. 'schwer')",
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
    m_wstrDescription = "Dämonische Belagerungskanone (Südtor mind. 'schwer')",
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
    m_wstrDescription = "Kockatrigl (Südtor mind. 'schwer')",
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
    m_wstrDescription = "Südtor in der vorgegebenen Zeit",
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
    m_wstrDescription = "Molpos (Südtor mind. 'schwer')",
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
    m_wstrDescription = "Baradon (Südtor mind. 'schwer')",
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
    m_wstrDescription = "Maggurd (Südtor mind. 'schwer')",
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
    m_wstrDescription = "Düsterer Pyromar (Südtor mind. 'schwer')",
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
    m_wstrDescription = "Dunkler Nephil (Südtor 'Experte')",
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
    m_wstrDescription = "Südtor 'Experte'",
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
    m_wstrDescription = "Runenstein (Dunkler Nephil, Südtor 'Experte')",
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
    m_wstrDescription = "Sprich mit Vanessa im Feldlager",
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
    m_wstrDescription = "Sprich mit Penentio in Hamel",
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
    m_wstrDescription = "Stadtrand von Lysia mind. 'normal'",
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
    m_wstrDescription = "Anführer der Schattendämonen finden (Stadtrand von Lysia mind. 'normal')",
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
    m_wstrDescription = "Schattenmeister (Stadtrand von Lysia mind. 'normal')",
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
    m_wstrDescription = "Stadtrand von Lysia mind. 'schwer'",
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
    m_wstrDescription = "Dunkler Schutzstein (Schattenstachel, Stadtrand von Lysia mind. 'schwer')",
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
    m_wstrDescription = "Schattenkristall (Schattenritter, Stadtrand von Lysia mind. 'schwer')",
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
    m_wstrDescription = "Stadtrand von Lysia mind. 'Experte'",
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
    m_wstrDescription = "Symbole der Dämonen untersuchen (Stadtrand von Lysia 'Experte')",
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
    m_wstrDescription = "Besitzer der Dämonen-Symbole finden (Stadtrand von Lysia 'Experte')",
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
    m_wstrDescription = "Symbole zerstören: Schattenmeister (Stadtrand von Lysia 'Experte')",
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
    m_wstrDescription = "Schattenmeister (Stadtrand von Lysia, 'Experte')",
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
    m_wstrDescription = "Versunkenes Lysia mind. 'normal'",
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
    m_wstrDescription = "Juwel der Hagens (Laguna, Izzy, Versunkenes Lysia mind. 'normal')",
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
    m_wstrDescription = "Versunkenes Lysia mind. 'normal'",
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
    m_wstrDescription = "Versunkenes Lysia mind. 'schwer'",
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
    m_wstrDescription = "Laguna (Versunkenes Lysia mind. 'schwer')",
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
    m_wstrDescription = "Izzy (Versunkenes Lysia mind. 'schwer')",
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
    m_wstrDescription = "Meermann (Versunkenes Lysia mind. 'schwer')",
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
    m_wstrDescription = "Versunkenes Lysia 'Experte' betreten",
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
    m_wstrDescription = "Versunkenes Lysia 'Experte' durchqueren",
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
    m_wstrDescription = "Hagen befreien (Stadtrand von Lysia 'Experte')",
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
    m_wstrDescription = "Seeschlange (Versunkenes Lysia 'Experte')",
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
    m_wstrDescription = "Alte Wasserstraße mind. 'normal' betreten",
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
    m_wstrDescription = "Alte Wasserstraße mind. 'normal' durchqueren",
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
    m_wstrDescription = "Taranbashu des Lichts (Alte Wasserstraße mind. 'normal')",
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
    m_wstrDescription = "Alte Wasserstraße mind. 'schwer'",
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
    m_wstrDescription = "Handwerker finden (Alte Wasserstraße mind. 'schwer')",
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
    m_wstrDescription = "Seltsamer Konrad (Alte Wasserstraße mind. 'schwer')",
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
    m_wstrDescription = "Kristall (Alte Wasserstraße mind. 'schwer')",
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
    m_wstrDescription = "Antiker Nasod-Spiegel (Antike Nasod und Golems, Alte Wasserstraße mind. 'schwer')",
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
    m_wstrDescription = "Taranbashu des Lichts (Alte Wasserstraße 'Experte')",
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
    m_wstrDescription = "Alte Wasserstraße 'Experte'",
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
    m_wstrDescription = "Starker Dunkler Schutzstein (Taranbashu des Lichts, Alte Wasserstraße 'Experte')",
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
    m_wstrDescription = "Zentrum der Alten Wasserstraße mind. 'normal'",
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
    m_wstrDescription = "Dolossus (Zentrum der Alten Wasserstraße mind. 'normal')",
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
    m_wstrDescription = "Dolossus (Zentrum der Alten Wasserstraße mind. 'normal')",
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
    m_wstrDescription = "Zentrum der Alten Wasserstraße mind. 'schwer'",
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
    m_wstrDescription = "Mysteriöses Klappmesser (Lysischer Kockatrigl, Zentrum der Alten Wasserstraße 'schwer')",
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
    m_wstrDescription = "Assassinen-Chloe (Zentrum der Alten Wasserstraße mind. 'schwer')",
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
    m_wstrDescription = "Schattenbinder fangen (Schattenbinder, Zentrum der Alten Wasserstraße mind. 'schwer')",
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
    m_wstrDescription = "Zentrum der Alten Wasserstraße mind. 'schwer'",
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
    m_wstrDescription = "Zentrum der Alten Wasserstraße 'Experte'",
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
    m_wstrDescription = "Weg zum Wassertempel finden (Zentrum der Alten Wasserstraße 'Experte')",
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
    m_wstrDescription = "Dolossus (Zentrum der Alten Wasserstraße 'Experte')",
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
    m_wstrDescription = "Zentrum der Alten Wasserstraße 'Experte'",
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
    m_wstrDescription = "Magmantas Schlupfwinkel mind. 'normal'",
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
    m_wstrDescription = "Eingang des Wassertempels finden (Magmantas Schlupfwinkel mind. 'normal')",
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
    m_wstrDescription = "Magmanta (Magmantas Schlupfwinkel mind. 'normal')",
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
    m_wstrDescription = "Dämonen-Amulett (Manabinder, Schattenbinder; Magmantas Schlupfwinkel mind. 'normal')",
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
    m_wstrDescription = "Magmantas Schlupfwinkel mind. 'schwer'",
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
    m_wstrDescription = "Feind auf der Brücke (Magmantas Schlupfwinkel mind. 'schwer')",
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
    m_wstrDescription = "Riesenhammer-Bobos (Magmantas Unterschlupf mind. 'schwer')",
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
    m_wstrDescription = "Dämonen-Amulett (Marine-Schattentrickser, Magmantas Schlupfwinkel mind. 'schwer')",
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
    m_wstrDescription = "Sprich mit Horatio in Hamel",
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
    m_wstrDescription = "Kleidungsstück der Roten Söldnerritter (Teufelsrochen, Mantares; Magmantas Schlupfwinkel mind. 'schwer')",
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
    m_wstrDescription = "Sprich mit Denka",
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
    m_wstrDescription = "Rote Söldnerritter retten (Magmantas Schlupfwinkel mind. 'schwer')",
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
    m_wstrDescription = "Magmantas Schlupfwinkel mind. 'schwer'",
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
    m_wstrDescription = "Bobos (Magmantas Schlupfwinkel mind. 'schwer')",
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
    m_wstrDescription = "Magmantas Schlupfwinkel 'Experte'",
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
    m_wstrDescription = "Magmantas Schlupfwinkel 'Experte'",
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
    m_wstrDescription = "Magmanta (Magmantas Schlupfwinkel 'Experte')",
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
    m_wstrDescription = "Eingefrorener Wassertempel mind. 'normal'",
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
    m_wstrDescription = "Hagen finden (Eingefrorener Wassertempel mind. 'normal')",
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
    m_wstrDescription = "Avalanche (Eingefrorener Wassertempel mind. 'normal')",
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
    m_wstrDescription = "Frost-Igel-Öl (Frost-Igel, Eingefrorener Wassertempel mind. 'normal')",
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
    m_wstrDescription = "Eingefrorener Wassertempel mind. 'schwer'",
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
    m_wstrDescription = "Binder finden (Eingefrorener Wassertempel mind. 'schwer')",
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
    m_wstrDescription = "Machtbinder (Eingefrorener Wassertempel mind. 'schwer')",
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
    m_wstrDescription = "Sprich mit Horatio",
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
    m_wstrDescription = "Sprich mit Lucy",
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
    m_wstrDescription = "Eingefrorener Wassertempel mind. 'schwer'",
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
    m_wstrDescription = "Hohepriesterin finden (Eingefrorener Wassertempel mind. 'schwer')",
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
    m_wstrDescription = "Sprich mit Penentio",
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
    m_wstrDescription = "Machtbinder (Eingefrorener Wassertempel mind. 'schwer')",
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
    m_wstrDescription = "Eingefrorener Wassertempel 'Experte'",
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
    m_wstrDescription = "Hagalaz (Eingefrorener Wassertempel mind. 'schwer')",
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
    m_wstrDescription = "Eingefrorener Wassertempel, 'Experte'",
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
    m_wstrDescription = "Seele der Hohepriesterin befreien (Eingefrorener Wassertempel 'Experte')",
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
    m_wstrDescription = "Sprich mit Denka",
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
    m_wstrDescription = "Geh zu Daisy, um mit Hagen zu sprechen",
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
    m_wstrDescription = "Schrein im Wassertempel mind. 'normal'",
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
    m_wstrDescription = "Belmez finden (Schrein im Wassertempel mind. 'normal')",
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
    m_wstrDescription = "Graf Belmez (Schrein im Wassertempel mind. 'normal')",
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
    m_wstrDescription = "Schrein im Wassertempel mind. 'schwer'",
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
    m_wstrDescription = "Schattenstachel (Schrein im Wassertempel mind. 'schwer')",
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
    m_wstrDescription = "Seltsamer Konrad (Schrein im Wassertempel mind. 'schwer')",
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
    m_wstrDescription = "Riesenhammer-Bobos (Schrein im Wassertempel mind. 'schwer')",
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
    m_wstrDescription = "Assassinen-Chloe (Schrein im Wassertempel mind. 'schwer')",
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
    m_wstrDescription = "Rüstungsstück der Schwarzen Söldnerritter (Schrein im Wassertempel mind. 'normal')",
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
    m_wstrDescription = "Unbeschädigte Rüstung der Roten Söldnerritter (Besessener Roter Söldnerritter, Schrein im Wassertempel mind. 'schwer')",
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
    m_wstrDescription = "Sprich mit Penentio",
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
    m_wstrDescription = "Rote Söldnerritter (Schrein im Wassertempel mind. 'schwer')",
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
    m_wstrDescription = "Erster Teil von Heinrichs Brief (Schrein im Wassertempel mind. 'schwer')",
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
    m_wstrDescription = "Zweiter Teil von Heinrichs Brief (Assassinen Chloe, Schrein im Wassertempel mind. 'schwer')",
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
    m_wstrDescription = "Dritter Teil von Heinrichs Brief (Dolossus, Schrein im Wassertempel mind. 'schwer')",
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
    m_wstrDescription = "Dämonenblut (Marine-Schattensog, Schrein im Wassertempel mind. 'schwer')",
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
    m_wstrDescription = "Sprich mit Penentio",
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
    m_wstrDescription = "Schrein im Wassertempel mind. 'schwer'",
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
    m_wstrDescription = "Schrein im Wassertempel 'Experte'",
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
    m_wstrDescription = "Schattenstachel (Schrein im Wassertempel 'Experte')",
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
    m_wstrDescription = "Riesenhammer-Bobos (Schrein im Wassertempel 'Experte')",
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
    m_wstrDescription = "Assassinen-Chloe (Schrein im Wassertempel 'Experte')",
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
    m_wstrDescription = "Dolossus (Schrein im Wassertempel 'Experte')",
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
    m_wstrDescription = "Graf Belmez (Schrein im Wassertempel 'Experte')",
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
    m_wstrDescription = "Graf Belmez (Schrein im Wassertempel 'Experte')",
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
    m_wstrDescription = "Schrein im Wassertempel 'Experte'",
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
    m_wstrDescription = "Schrein im Wassertempel 'Experte'",
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
    m_wstrDescription = "Graf Belmez (Schrein im Wassertempel 'Experte')",
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
    m_wstrDescription = "Geh nach Sander, um Anedran zu treffen",
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
    m_wstrDescription = "Trockenes Sander mind. 'normal'",
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
    m_wstrDescription = "Trockenes Sander mind. 'normal'",
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
    m_wstrDescription = "Gigantischer Waldo (Trockenes Sander mind. 'normal' )",
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
    m_wstrDescription = "Trockenes Sander mind. 'schwer'",
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
    m_wstrDescription = "Schepper-Trax (Trockenes Sander mind. 'schwer' )",
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
    m_wstrDescription = "Unbekanntes magisches Muster (Boogy-Trax, Trockenes Sander mind. 'schwer' )",
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
    m_wstrDescription = "Trockenes Sander 'Experte'",
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
    m_wstrDescription = "Trax vertreiben (Trockenes Sander 'Experte' )",
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
    m_wstrDescription = "Gigantischer Waldo (Trockenes Sander 'Experte' )",
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
    m_wstrDescription = "Garpai mind. 'normal'",
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
    m_wstrDescription = "Kellayno treffen (Garpai mind. 'normal')",
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
    m_wstrDescription = "Garpai mind. 'schwer'",
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
    m_wstrDescription = "Kellayno überwältigen (Garpai mind. 'schwer')",
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
    m_wstrDescription = "Goldflügel-Aello (Garpai mind. 'schwer')",
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
    m_wstrDescription = "Schwarzflügel-Okyupete (Garpai mind. 'schwer')",
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
    m_wstrDescription = "Rette Anedran",
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
    m_wstrDescription = "Garpai 'Experte'",
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
    m_wstrDescription = "Kellayno überwältigen (Garpai 'Experte')",
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
    m_wstrDescription = "Wachturm 'schwer' mit B-Wertung",
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
    m_wstrDescription = "Stahlplatte (Nasodbenders, Abwasserkanal)",
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
    m_wstrDescription = "Benders' Höhle mind. 'schwer'",
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
    m_wstrDescription = "Schloss Robo 'schwer' mit B-Wertung",
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
    m_wstrDescription = "Trax-Nest mind. 'normal'",
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
    m_wstrDescription = "Wachposten (Schneller Eisen-Trax, Trax-Nest mind. 'normal')",
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
    m_wstrDescription = "Häuptling Trakta (Trax-Nest mind. 'normal')",
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
    m_wstrDescription = "Trax-Nest mind. 'schwer'",
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
    m_wstrDescription = "Trax-Probe (Trax, Trax-Nest mind. 'schwer')",
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
    m_wstrDescription = "Häuptling Trakta (Trax-Nest mind. 'schwer')",
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
    m_wstrDescription = "Trax-Nest 'Experte'",
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
    m_wstrDescription = "Häuptling Trakta (Trax-Nest 'Experte')",
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
    m_wstrDescription = "Dorf des Kalluso-Stamms mind. 'normal'",
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
    m_wstrDescription = "Kalluso-Elitekrieger (Dorf des Kalluso-Stamms mind. 'normal')",
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
    m_wstrDescription = "Dorf des Kalluso-Stamms mind. 'schwer'",
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
    m_wstrDescription = "Kriegshäuptling Tuadin",
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
    m_wstrDescription = "Kriegshäuptling Beiga",
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
    m_wstrDescription = "Kriegshäuptling Barrion",
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
    m_wstrDescription = "Kriegshäuptling Tarik",
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
    m_wstrDescription = "Windenergie (Zorniger Sylphape, Dorf des Kalluso-Stamms mind. 'schwer')",
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
    m_wstrDescription = "Dorf des Kalluso-Stamms 'Experte'",
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
    m_wstrDescription = "Oberhäuptling Karu (Dorf des Kalluso-Stamms 'Experte)",
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
    m_wstrDescription = "Gestohlene Gegenstände (Bendersbande: Späher, Bendersbande: Söldner; Robo-Gedenkbrücke)",
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
    m_wstrDescription = "Bendersbande: Späher (Robo-Gedenkbrücke)",
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
    m_wstrDescription = "Bendersbande: Söldner (Robo-Gedenkbrücke)",
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
    m_wstrDescription = "Stulpen des Großen Soldaten (Wachturm-Garde, Zwillingswachtürme)",
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
    m_wstrDescription = "Messer des Kleinen Soldaten (Robo-Aufklärer, Zwillingswachtürme)",
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
    m_wstrDescription = "Potschi, Jango (Zwillingswachtürme, Wachturm mind. 'schwer')",
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
    m_wstrDescription = "Katschi, Kid (Zwillingswachtürme, Wachturm mind. 'schwer')",
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
    m_wstrDescription = "Unbekanntes Uhrwerk (Wachturm-Elite, Zwillingswachtürme)",
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
    m_wstrDescription = "Unbekanntes Uhrwerk (Wachturm-Elite, Leibgarde; Zwillingswachtürme, Schloss Robo mind. 'schwer')",
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
    m_wstrDescription = "Stinkende Schuppen (Echsenmensch-Aufklärer, Besagara-Wasserfall)",
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
    m_wstrDescription = "Stinkende Schuppen (Echsenmensch-Aufklärer, Echsenmensch; Besagara-Wasserfall, Drachenweg mind. 'normal')",
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
    m_wstrDescription = "Angeknabberte Baumwurzel (Junger Komodo, Besagara-Wasserfall)",
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
    m_wstrDescription = "Unversehrter Apfelbaum (Junger Komodo, Komodo; Besagara-Wasserfall, Drachenweg mind. 'schwer')",
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
    m_wstrDescription = "Klebriger Saft (Junger Komodo, Besagara-Wasserfall)",
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
    m_wstrDescription = "Klebriger Saft (Junger Komodo, Komodo; Besagara-Wasserfall, Besma-See mind. 'schwer')",
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
    m_wstrDescription = "Reikiki-See",
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
    m_wstrDescription = "Tomas Rüstungen (Saurus-Soldat, Reikiki-See)",
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
    m_wstrDescription = "Tomas Rüstungen (Saurus-Soldat, Saurus-Krieger; Reikiki-See, Besma-See Nacht mind. 'schwer')",
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
    m_wstrDescription = "Teil eines Fluchmanuskripts (Echsenmensch-Heiler, Reikiki-See)",
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
    m_wstrDescription = "Teil eines Fluchmanuskripts (Echsenmensch-Heiler, Wilder Echsenschamane; Reikiki-See, Drachennest mind. 'schwer')",
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
    m_wstrDescription = "Toritugera-Canyon",
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
    m_wstrDescription = "Schraube (Nasod-Bergarbeiter Typ-N, Toritugera-Canyon)",
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
    m_wstrDescription = "Mutter (Nasod-Bergarbeiter Typ-F, Toritugera-Canyon)",
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
    m_wstrDescription = "Schraube (Nasod-Bergarbeiter Typ-N, Toritugera-Canyon)",
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
    m_wstrDescription = "Mutter (Nasod-Bergarbeiter Typ-F, Toritugera-Canyon)",
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
    m_wstrDescription = "Plastikflügel (Nasodhornisse: Balkan, Toritugera-Canyon)",
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
    m_wstrDescription = "Plastikflügel (Nasodhornisse: Balkan, Nasodhornisse; Toritugera-Canyon, Transportluftschiff mind. 'schwer')",
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
    m_wstrDescription = "Gruft der Reinigung",
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
    m_wstrDescription = "Stahl-Maulschlüssel (Krähenbanden-Ingenieur, Gruft der Reinigung)",
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
    m_wstrDescription = "Stahl-Maulschlüssel (Krähenbanden-Ingenieur; Gruft der Reinigung, Krähen-Luftschiff mind. 'normal')",
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
    m_wstrDescription = "Essensration (Krähenbanden-Bastard, Gruft der Reinigung)",
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
    m_wstrDescription = "Essensration (Krähenbanden-Bastard, Gruft der Reinigung)",
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
    m_wstrDescription = "Verbrennungseinheit (Kontaminierter Nasod Typ-N, Gruft der Reinigung)",
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
    m_wstrDescription = "Verbrennungseinheit (Kontaminierter Nasod Typ-N, Kontaminierter Nasod-Bergarbeiter M9; Gruft der Reinigung, Ebene der Rückkehr mind. 'schwer')",
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
    m_wstrDescription = "Nasod-Mülldeponie",
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
    m_wstrDescription = "Kontaminierter Schaltkreis (Bergarbeiter, Nasod-Mülldeponie)",
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
    m_wstrDescription = "Sporenstaub (Alterasienspore, Alterasie; Nasod-Mülldeponie, Tunnel B4-1 mind. 'schwer')",
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
    m_wstrDescription = "Feines Uhrwerk (Defekter Nasodskorpion, Nasod-Mülldeponie)",
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
    m_wstrDescription = "Feines Uhrwerk (Defekter Nasodskorpion, Nasodskorpion; Nasod-Mülldeponie, Altera-Ebene mind. 'schwer')",
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
    m_wstrDescription = "Himmelslager betreten",
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
    m_wstrDescription = "Materialien für Schilde (Nasodbeobachter: Aufseher, Himmelslager)",
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
    m_wstrDescription = "Materialien für Schilde (Nasodbeobachter: Aufseher, Himmelslager)",
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
    m_wstrDescription = "Nasodbeobachter: Schlitzer (Himmelslager)",
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
    m_wstrDescription = "Nasodbeobachter: Schlitzer, Nasodschlitzer (Himmelslager, Altera-Core mind. 'schwer')",
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
    m_wstrDescription = "Pilgertor",
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
    m_wstrDescription = "Vargo-Eckzahn (Niederer Vargo-Speersoldat, Niederer Vargo-Bogenschütze; Pilgertor)",
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
    m_wstrDescription = "Vargo-Eckzahn (Niederer Vargo-Speersoldat, Niederer Vargo-Bogenschütze, Vargo-Speersoldat, Vargo-Bogenschütze; Pilgertor, Tempeleingang mind. 'normal')",
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
    m_wstrDescription = "Seelenkristall (Niederer Vargo-Erzmagier, Pilgertor)",
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
    m_wstrDescription = "Seelenkristall (Niederer Vargo-Erzmagier, Vargo-Erzmagier; Pilgertor, Tempeleingang mind. 'schwer')",
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
    m_wstrDescription = "Brauchbare Pfeilspitze (Niederer Vargo-Bogenschütze, Pilgertor)",
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
    m_wstrDescription = "Brauchbare Pfeilspitze (Niederer Vargo-Bogenschütze, Vargo-Bogenschütze; Pilgertor, Spiralkorridor mind. 'schwer')",
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
    m_wstrDescription = "Pilgerplatz",
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
    m_wstrDescription = "Zusatzgewichte (Niederer Vargo-Sturmsoldat, Pilgerplatz)",
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
    m_wstrDescription = "Zusatzgewichte (Niederer Vargo-Sturmsoldat, Vargo-Hammersoldat; Pilgerplatz, Krypta mind. 'schwer')",
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
    m_wstrDescription = "Giftsporen (Kleiner Jubigi, Pilgerplatz)",
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
    m_wstrDescription = "Säckchen mit Giftsporen (Kleiner Jubigi; Pilgerplatz, Tempelgarten mind. 'schwer')",
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
    m_wstrDescription = "Hügel der Seelen",
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
    m_wstrDescription = "Gefährliche Speerspitze (Niedere Vargo-Palastwache, Hügel der Seelen)",
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
    m_wstrDescription = "Gefährliche Zusatzgewichte (Niederer Vargo-Sturmsoldat, Hügel der Seelen)",
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
    m_wstrDescription = "Gefährliche Speerspitze (Niedere Vargo-Palastwache, Vargo-Palastwache; Hügel der Seelen, Sanktum mind. 'schwer')",
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
    m_wstrDescription = "Gefährliche Zusatzgewichte (Niederer Vargo-Sturmsoldat, Vargo-Sturmsoldat; Hügel der Seelen, Sanktum mind. 'schwer')",
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
    m_wstrDescription = "Stabiler Dämonenschild (Niedere Vargo-Wache, Hügel der Seelen)",
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
    m_wstrDescription = "Stabiler Dämonenschild (Niedere Vargo-Wache, Vargo-Wache; Hügel der Seelen, Altarraum mind. 'schwer')",
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
    m_wstrDescription = "Merkwürdiges Edelsteinstück (Niederer Vargo-Illusionsmagier, Hügel der Seelen)",
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
    m_wstrDescription = "Erloschenes Eldritstück (Niederer Vargo-Illusionsmagier, Vargo-Illusionsmagier; Hügel der Seelen, Altarraum mind. 'schwer')",
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
    m_wstrDescription = "Straße des Reichtums",
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
    m_wstrDescription = "Dunkelelfen-Kette (Niederer Dunkelelf-Wachposten, Straße des Reichtums)",
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
    m_wstrDescription = "Dunkelelfen-Kette (Niederer Dunkelelf-Wachposten, Dunkelelf-Wachposten; Straße des Reichtums, Dritter Bezirk mind. 'schwer')",
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
    m_wstrDescription = "Lebensperle (Blutesser, Straße des Reichtums)",
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
    m_wstrDescription = "Lebensperle (Blutesser; Straße des Reichtums, Hoffnungsbrücke mind. 'schwer')",
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
    m_wstrDescription = "Straße des Friedens",
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
    m_wstrDescription = "Feuerresistente Kleidung (Elite-Vargo: Alchemist, Straße des Friedens)",
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
    m_wstrDescription = "Feuerresistente Kleidung (Elite-Vargo: Alchemist, Straße des Friedens)",
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
    m_wstrDescription = "Beschädigte Puppe (Elite-Vargo: Attentäter, Straße des Friedens)",
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
    m_wstrDescription = "Beschädigte Puppe (Elite-Vargo: Attentäter, Kena; Straße des Friedens, Brennende Brücke mind. 'schwer')",
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
    m_wstrDescription = "Straße der Koexistenz",
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
    m_wstrDescription = "Zurückgelassenes Werkzeug (Elite-Vargo: Rüstungssoldat, Straße der Koexistenz)",
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
    m_wstrDescription = "Dicke Eisenplatte (Elite-Vargo: Rüstungssoldat, Erzvargo-Wache; Straße der Koexistenz, Händlerviertel mind. 'schwer')",
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
    m_wstrDescription = "Elios-Hafen",
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
    m_wstrDescription = "Erzvargo-Schild (Elite-Vargo: Wache, Elios-Hafen)",
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
    m_wstrDescription = "Erzvargo-Speer (Elite-Vargo: Speersoldat, Elios-Hafen)",
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
    m_wstrDescription = "Erzvargo-Bogen (Elite-Vargo: Bogenschütze, Elios-Hafen)",
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
    m_wstrDescription = "Erzvargo-Speer (Elite-Vargo: Speersoldat, Erzvargo-Palastwache; Elios-Hafen, Südtor mind. 'schwer')",
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
    m_wstrDescription = "Erzvargo-Bogen (Elite-Vargo: Bogenschütze, Erzvargo-Scharfschütze; Elios-Hafen, Südtor mind. 'schwer')",
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
    m_wstrDescription = "Erzvargo-Schild (Elite-Vargo: Schildsoldat, Erzvargo-Wache; Elios-Hafen, Südtor mind. 'schwer')",
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
    m_wstrDescription = "Wellen von Ellaim",
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
    m_wstrDescription = "Button-Schattenläufer (Wellen von Ellaim)",
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
    m_wstrDescription = "Button-Schattenläufer, Schattenläufer (Wellen von Ellaim, Stadtrand von Lysia mind. 'normal')",
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
    m_wstrDescription = "Schattenkristall (Button-Schattenritter, Wellen von Ellaim)",
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
    m_wstrDescription = "Schattenkristall (Button-Schattenritter, Schattenritter; Wellen von Ellaim, Stadtrand von Lysia mind. 'schwer')",
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
    m_wstrDescription = "Chromit (Schattendämonen, Wellen von Ellaim)",
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
    m_wstrDescription = "Chromit (Schattendämonen; Wellen von Ellaim, Versunkenes Lysia mind. 'schwer')",
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
    m_wstrDescription = "Überschwemmte Stadt",
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
    m_wstrDescription = "Antiker Nasod-Schulterstein (Antike Nasod-Golems, Überschwemmte Stadt)",
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
    m_wstrDescription = "Antiker Nasod-Schulterstein (Antike Nasod-Golems; Überschwemmte Stadt, Alte Wasserstraße mind. 'schwer')",
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
    m_wstrDescription = "Brillant leuchtende Feder (Schwarzer lysischer Kockatrigl, Überschwemmte Stadt)",
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
    m_wstrDescription = "Brillant leuchtende Feder (Schwarzer lysischer Kockatrigl, Lysischer Kockatrigl; Überschwemmte Stadt, Zentrum der Alten Wasserstraße mind. 'schwer')",
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
    m_wstrDescription = "Kreiskanal",
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
    m_wstrDescription = "Chromit (Schattendämonen, Kreiskanal)",
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
    m_wstrDescription = "Chromit (Schattendämonen; Kreiskanal, Magmantas Schlupfwinkel mind. 'schwer')",
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
    m_wstrDescription = "Noahs Grab",
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
    m_wstrDescription = "Eisstück (Hagalaz, Noahs Grab)",
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
    m_wstrDescription = "Eisstück (Hagalaz; Noahs Grab, Eingefrorener Wassertempel mind. 'schwer')",
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
    m_wstrDescription = "Verratener Roter Söldnerritter (Noahs Grab)",
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
    m_wstrDescription = "Verratener Roter Söldnerritter, Besessener Roter Söldnerritter (Noahs Grab, Schrein im Wassertempel mind. 'schwer')",
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
    m_wstrDescription = "Kieferknochen eines Schepper-Trax (Schepper-Trax, Windtempel)",
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
    m_wstrDescription = "Kieferknochen eines Schepper-Trax (Schepper-Trax; Windtempel, Trockenes Sander mind. 'schwer')",
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
    m_wstrDescription = "Windtempel",
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
    m_wstrDescription = "Ober-Trax (Windtempel)",
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
    m_wstrDescription = "Ober-Trax (Windtempel, Trockenes Sander mind. 'schwer')",
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
    m_wstrDescription = "Rückenhaut des Wüstenanglerfischs (Roter Wüstenanglerfisch, Windtempel)",
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
    m_wstrDescription = "Wüstenleopardenfell (Wüstenleopard, Windtempel)",
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
    m_wstrDescription = "Rückenhaut des Wüstenanglerfischs (Roter Wüstenanglerfisch; Windtempel, Garpai mind. 'schwer')",
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
    m_wstrDescription = "Wüstenleopardenfell (Wüstenleopard; Windtempel, Garpai mind. 'schwer')",
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
    m_wstrDescription = "Geheimelixier der Jugend",
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
    m_wstrDescription = "Trax-Speicheldrüse (Trax, Trockenes Sander mind. 'schwer')",
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
    m_wstrDescription = "Flosse eines Wüstentiers (Wüstenanglerfisch, Wüstenrobbe; Windtempel, Garpai mind. 'schwer')",
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
    m_wstrDescription = "Harpyien-Schwanzfeder (Harpyie, Garpai mind. 'schwer')",
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
    m_wstrDescription = "Patrouillengebiet des Kalluso-Stamms",
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
    m_wstrDescription = "Trax-Wasserflasche (Trax; Patrouillengebiet des Kalluso-Stamms, Trax-Nest mind. 'schwer')",
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
    m_wstrDescription = "Herz eines Windgeistes (Wirbelwind-Sylphe, Wütender Sylphape; Dorf des Kalluso-Stamms mind. 'schwer')",
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
    m_wstrDescription = "Tötungsabsicht eines Attentäters (Kalluso-Attentäter; Patrouillengebiet des Kalluso-Stamms, Dorf des Kalluso-Stamms mind. 'schwer')",
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
    m_wstrDescription = "Schutzschriftrolle des Kalluso-Stamms (Kalluso-Windkrieger; Patrouillengebiet des Kalluso-Stamms, Dorf des Kalluso-Stamms mind. 'schwer')",
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
    m_wstrDescription = "Halskette aus machtvollen Schriftrollen",
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
    m_wstrDescription = "Trax-Blut (Trax; Patrouillengebiet des Kalluso-Stamms, Trax-Nest mind. 'schwer')",
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
    m_wstrDescription = "Waffen des Kalluso-Stamms (Krieger des Kalluso-Stamms, Dorf des Kalluso-Stamms mind. 'schwer')",
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
    m_wstrDescription = "Lebendiger Stein (Erzvargo-Alchemist, Palaststraße)",
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
    m_wstrDescription = "Flammenstein der Magie (Kena, Palaststraße mind. 'schwer')",
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
    m_wstrDescription = "Feuerresistente Kleidung (Kena, Palaststraße)",
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
    m_wstrDescription = "Riesiger Flegel (Baradon, Brennende Brücke mind. 'schwer')",
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
    m_wstrDescription = "Beschädigte Puppe (Brennende Brücke 'Experte')",
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
    m_wstrDescription = "Flammenspitze (Irrer Puppenmeister, Brennende Brücke mind. 'schwer')",
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
    m_wstrDescription = "Zurückgelassenes Werkzeug (Händlerviertel)",
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
    m_wstrDescription = "Schwarzes Pulver (Erzvargo-Alchemist, Händlerviertel mind. 'schwer')",
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
    m_wstrDescription = "Verdächtige Medizinflasche (Düsterer Pyromar, Händlerviertel 'Experte')",
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
    m_wstrDescription = "Erzvargo-Rüstung (Erzvargo, Belder)",
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
    m_wstrDescription = "Schwert des Vargo-Kommandanten (Erzvargo, Belder)",
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
    m_wstrDescription = "Erzvargo-Schild (Erzvargo, Belder)",
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
    m_wstrDescription = "Erzvargo-Speer (Erzvargo, Belder)",
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
    m_wstrDescription = "Erzvargo-Bogen (Erzvargo, Belder)",
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
    m_wstrDescription = "Erzvargo-Alchemist (Belder)",
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
    m_wstrDescription = "Erzvargo-Attentäter (Belder)",
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
    m_wstrDescription = "Erzvargo-Steinschmeißer (Belder)",
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
    m_wstrDescription = "Erzvargo-Sturmsoldat (Belder)",
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
    m_wstrDescription = "Vargo-Kommandant (Belder)",
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
    m_wstrDescription = "Kralle des Nephil (Dunkler Nephil, Südtor 'Experte')",
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
    m_wstrDescription = "Verteile deine Skillpunkte im Skillfenster (K)",
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
    m_wstrDescription = "Sprich mit Aranka vom CoBo-Service",
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
    m_wstrDescription = "Hofmanns Empfehlungsschreiben",
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
    m_wstrDescription = "Sprich mit Lennart, dem Schmied von Elder",
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
    m_wstrDescription = "+2 Upgrade durchführen",
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
    m_wstrDescription = "Sprich mit Lelia, der Besitzerin des Zubehörladens von Elder",
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
    m_wstrDescription = "Methoden des Item-Upgrades",
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
    m_wstrDescription = "Zwei Zaubersteine in Sockel einfügen",
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
    m_wstrDescription = "Sprich mit Ekko, der Alchemistin von Elder",
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
    m_wstrDescription = "Leitfaden zum Sockeln",
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
    m_wstrDescription = "Führe eine einfache Attributverzauberung durch",
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
    m_wstrDescription = "Theorie der Attributverzauberung",
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
    m_wstrDescription = "Zerlege ein Item",
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
    m_wstrDescription = "Schattenkristall (Stadtrand von Lysia mind. 'schwer')",
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
    m_wstrDescription = "Chromit (Versunkenes Lysia mind. 'schwer')",
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
    m_wstrDescription = "Antiker Nasod-Schulterstein (Alte Wasserstraße mind. 'schwer')",
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
    m_wstrDescription = "Rezept für Fischeintopf à la Dämon (Stadtrand von Lysia mind. 'schwer')",
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
    m_wstrDescription = "Fleisch des Lysischen Krebses (Versunkenes Lysia mind. 'normal')",
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
    m_wstrDescription = "Rückenflosse eines Meermanns (Meermann, Versunkenes Lysia 'Experte')",
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
    m_wstrDescription = "Piranhafleisch ohne Gräten (Piranha, Versunkenes Lysia 'Experte')",
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
    m_wstrDescription = "Antiker Kochtopf (Antike Nasod und Golems, Alte Wasserstraße mind. 'schwer')",
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
    m_wstrDescription = "Sprich mit Penentio",
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
    m_wstrDescription = "Brillant leuchtende Perle (Schattenschütze, Stadtrand von Lysia 'Experte')",
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
    m_wstrDescription = "Schöne Piranhaflosse (Versunkenes Lysia mind. 'schwer')",
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
    m_wstrDescription = "Spiegelkristall (Spiegel, Alte Wasserstraße mind. 'schwer')",
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
    m_wstrDescription = "Sprich mit Denka",
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
    m_wstrDescription = "Chloes Haarspange (Assassinen-Chloe, Zentrum der Alten Wasserstraße mind. 'schwer')",
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
    m_wstrDescription = "Glänzende Meermannschuppe (Meermann, Zentrum der Alten Wasserstraße 'Experte')",
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
    m_wstrDescription = "Lagunas Liebesbrief",
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
    m_wstrDescription = "Sprich mit Lucy",
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
    m_wstrDescription = "Krebsfleisch",
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
    m_wstrDescription = "Rückenflosse",
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
    m_wstrDescription = "Piranhafleisch",
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
    m_wstrDescription = "Schwarze Blume (Magmantas Schlupfwinkel mind. 'normal')",
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
    m_wstrDescription = "Höhlenmoos (Marine-Schattenstürmer, Magmantas Schlupfwinkel mind. 'schwer')",
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
    m_wstrDescription = "Eisbrocken (Schockfroster, Eingefrorener Wassertempel mind. 'schwer')",
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
    m_wstrDescription = "Eisstachel des Frost-Igels (Eingefrorener Wassertempel 'Experte')",
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
    m_wstrDescription = "Schattensog-Schwanz (Marine-Schattensog, Schrein im Wassertempel mind. 'normal')",
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
    m_wstrDescription = "Notfallration (Marine-Schattendämonen, Schrein im Wassertempel 'Experte')",
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
    m_wstrDescription = "Chromit (Magmantas Schlupfwinkel mind. 'schwer')",
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
    m_wstrDescription = "Das Geheimnis des Hammers aufdecken (Magmantas Schlupfwinkel, 'Experte')",
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
    m_wstrDescription = "Eis (Eingefrorener Wassertempel mind. 'schwer')",
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
    m_wstrDescription = "Dorn des Schattenstachels (Schrein im Wassertempel mind. 'schwer')",
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
    m_wstrDescription = "Spinnennetz (Teufelsrochen, Mantares; Magmantas Schlupfwinkel mind. 'normal')",
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
    m_wstrDescription = "Hagalaz' Ornamente (Hagalaz, Eingefrorener Wassertempel mind. 'schwer')",
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
    m_wstrDescription = "Rückenpanzer der Uralten Eiskrabbe (Eingefrorener Wassertempel mind. 'normal')",
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
    m_wstrDescription = "Schuhabsatz (Marine-Schattenritter, Eingefrorener Wassertempel mind. 'schwer')",
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
    m_wstrDescription = "Eis für Gesichtsmaske (Hagalaz, Frost-Igel, Eingefrorener Wassertempel mind. 'normal')",
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
    m_wstrDescription = "Eisstück (Eingefrorener Wassertempel mind. 'schwer')",
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
    m_wstrDescription = "Schattensog-Leder (Marine-Schattensog, Schrein im Wassertempel mind. 'schwer')",
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
    m_wstrDescription = "Glitzersteine (Elite-Dämonen, Schrein im Wassertempel 'Experte')",
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
    m_wstrDescription = "Gerösteter Fisch",
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
    m_wstrDescription = "Träne des Wassergeistes",
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
    m_wstrDescription = "Halluzinationen in Belder mind. 'normal'",
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
    m_wstrDescription = "Blutiger Vargo-Speersoldat (Halluzinationen in Belder 'normal')",
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
    m_wstrDescription = "Halluzinationen in Belder 'Hölle'",
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
    m_wstrDescription = "Halluzinationen in Belder 'Hölle' mit A-Wertung",
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
    m_wstrDescription = "Alchemie-Werkzeug des Düsteren Pyromar (Halluzinationen in Belder 'Hölle')",
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
    m_wstrDescription = "Halluzinationen in Belder 'Hölle' in 15 Min.",
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
    m_wstrDescription = "Düsterer Pyromar (Halluzinationen in Belder 'Hölle', Luto-Modus)",
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
    m_wstrDescription = "Blutiger Vargo-Schildsoldat (Halluzinationen in Belder 'normal')",
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
    m_wstrDescription = "Blutiger Vargo-Scharfschütze (Halluzinationen in Belder 'normal')",
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
    m_wstrDescription = "Robo N8 Mk2 (Großes Bergwerk mind. 'normal')",
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
    m_wstrDescription = "Sprich mit Solvej in Besma",
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
    m_wstrDescription = "Nasodhornisse (Transportluftschiff mind. 'normal')",
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
    m_wstrDescription = "Sprich mit Chachabuk in Besma",
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
    m_wstrDescription = "Raven (Krähen-Luftschiff mind. 'normal')",
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
    m_wstrDescription = "Sprich mit Amon in Altera",
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
    m_wstrDescription = "Kontaminierter Nasodbohrer C4 (Ebene der Rückkehr mind. 'normal')",
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
    m_wstrDescription = "Sprich mit Aron in Altera",
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
    m_wstrDescription = "Übler Alterasientopf (Tunnel B4-1 mind. 'normal')",
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
    m_wstrDescription = "Sprich mit Aranka vom CoBo-Service",
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
    m_wstrDescription = "Erste Platzierung im Ranking (10mal PvP spielen)",
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
    m_wstrDescription = "1 Kill im PvP",
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
    m_wstrDescription = "2 Kills im PvP",
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
    m_wstrDescription = "3 Kills im PvP",
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
    m_wstrDescription = "1 Sieg im PvP",
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
    m_wstrDescription = "2 Siege im PvP",
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
    m_wstrDescription = "1mal PvP-Deathmatch: 3 vs. 3 gewinnen",
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
    m_wstrDescription = "1mal PvP-Deathmatch: 3 vs. 3 spielen",
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
    m_wstrDescription = "1mal PvP spielen",
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
    m_wstrDescription = "2mal PvP spielen",
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
    m_wstrDescription = "3mal PvP spielen",
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
    m_wstrDescription = "Mondstein (Vargo-Erzmagier, Peita)",
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
    m_wstrDescription = "Lehrbuch der höheren Alchemie (Schloss Robo mind. 'normal', normale Monster)",
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
    m_wstrDescription = "Schloss Robo mind. 'normal'",
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
    m_wstrDescription = "Forschungen zu Erendil (Robo N8, Schloss Robo 'Experte')",
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
    m_wstrDescription = "Sprich mit Aron in Altera",
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
    m_wstrDescription = "Pongsten (Nasod, Altera)",
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
    m_wstrDescription = "Nasodkönig (Altera-Core mind. 'normal')",
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
    m_wstrDescription = "Sprich mit Alvar in Peita",
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
    m_wstrDescription = "Reines Eldrit-Element (Vargo-Erzmagier, Peita)",
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
    m_wstrDescription = "Modifizierter Nasodhand-Überhitzer (Willard, Wachturm 'Experte')",
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
    m_wstrDescription = "Energie-Core (Robo N8, Schloss Robo 'Experte')",
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
    m_wstrDescription = "Speicherlegierung (Nasod, Altera)",
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
    m_wstrDescription = "Legierungsschild-Splitter (Nasod-Eliteschildwächter, Altera-Core)",
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
    m_wstrDescription = "Flammenkern (Ignis, Altera-Core)",
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
    m_wstrDescription = "Dunkelstahl (Dyurahan-Ritter, Opfertempel)",
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
    m_wstrDescription = "Golemstein (Golems, Peita)",
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
    m_wstrDescription = "Prisma (Willard, Wachturm 'Experte')",
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
    m_wstrDescription = "Emitter (Robo N8, Schloss Robo mind. 'normal')",
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
    m_wstrDescription = "Schloss Robo 'Experte'",
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
    m_wstrDescription = "Speicherlegierung (Nasod, Altera)",
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
    m_wstrDescription = "Nasod (Altera-Core mind. 'normal')",
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
    m_wstrDescription = "Core des Nasodkönigs (Nasodkönig, Altera-Core mind. 'normal')",
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
    m_wstrDescription = "Mondstein (Vargo-Erzmagier, Peita)",
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
    m_wstrDescription = "Ätherkolben (Willard, Wachturm 'Experte')",
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
    m_wstrDescription = "Zentrifuge (Robo N8, Schloss Robo mind. 'normal')",
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
    m_wstrDescription = "Nasod-ZX-32-Legierung (Nasod, Altera)",
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
    m_wstrDescription = "Eldrit-Fusionsreaktor (Nasodkönig, Altera-Core)",
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
    m_wstrDescription = "Defrostportal",
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
    m_wstrDescription = "Dunkeleldrit\n(Dyurahan-Ritter, Tempeleingang)\n(Techortyrann, Spiralkorridor)\n(Amorphyst, Krypta)",
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
    m_wstrDescription = "Wachturm mind. 'schwer' mit mind. B-Wertung",
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
    m_wstrDescription = "Stahlplatte (Nasodbenders, Abwasserkanal mind. 'normal')",
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
    m_wstrDescription = "Benders' Höhle mind. 'schwer'",
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
    m_wstrDescription = "Schloss Robo mind. 'schwer' mit mind. B-Wertung",
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
    m_wstrDescription = "Sprich mit Ekko in Elder",
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
    m_wstrDescription = "Abwasserkanal mind. 'schwer' in 8 Min.",
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
    m_wstrDescription = "Schloss Robo 'Experte'",
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
    m_wstrDescription = "Nachtwald 'Experte' mit max. 20 Gegentreffern",
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
    m_wstrDescription = "Geh zu Aron in Altera",
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
    m_wstrDescription = "Speicherlegierung\n(Nasod auf Altera)",
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
    m_wstrDescription = "Crowrider (Nasodfabrik mind. 'normal')",
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
    m_wstrDescription = "Nasodkönig (Altera-Core mind. 'normal')",
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
    m_wstrDescription = "Geh zu Lento in Peita",
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
    m_wstrDescription = "Vargo-Rangabzeichen\n(Peita-Dungeons: Vargo-Speersoldat, -Schildsoldat, -Bogenschütze, -Erzmagier)",
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
    m_wstrDescription = "Abwasserkanal mind. 'schwer'",
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
    m_wstrDescription = "Schloss Robo 'Experte'",
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
    m_wstrDescription = "Wachturm 'Experte'",
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
    m_wstrDescription = "사파비서",
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
    m_wstrDescription = "PvP spielen\n(Du darfst den Kampf nicht vorzeitig verlassen.)",
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
    m_wstrDescription = "Sprich mit Reyka, der Alchemistin von Sander",
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
    m_wstrDescription = "Verlorene Dokumente",
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
    m_wstrDescription = "Eldritenergie-Tank",
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
    m_wstrDescription = "Feldboss",
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
    m_wstrDescription = "Ull & Illy",
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
    m_wstrDescription = "Besku",
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
    m_wstrDescription = "Sleshyu",
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
    m_wstrDescription = "Betor",
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
    m_wstrDescription = "Ranos, Shinee & Munstar",
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
    m_wstrDescription = "Steingott",
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
    m_wstrDescription = "Seelenwasser",
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
    m_wstrDescription = "Krieger",
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
    m_wstrDescription = "Naios",
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
    m_wstrDescription = "Seelenwasser",
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
    m_wstrDescription = "Krieger",
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
    m_wstrDescription = "Naios",
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
    m_wstrDescription = "Seelenwasser",
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
    m_wstrDescription = "Krieger",
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
    m_wstrDescription = "Naios",
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
    m_wstrDescription = "[Event] Wüstenfuchsschwanz (grau)",
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
    m_wstrDescription = "[Event] Wüstenfuchsschwanz (gelb)",
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
    m_wstrDescription = "[Event] Sturmgrauwolf-Schwanz (blau)",
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
    m_wstrDescription = "10 Spuren von Aren sammeln",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5004,5005,5006,5007,5008,5009,5010,5011,5012,5013,5014,5015,5016,5017,5018,5019,5020,5021,5022,5023,5024,5025,5026,5027,5028,5029,5030,5031,5032,5033,5034,5035,5036,5037,5038,5039,5040,5041,5042,5043,5044,5045,5046,5047,5048,5049,5050,5051,5052,5053,5054,5055,5056,5057,5058,5059,5060,5061,5062,5063,5064,5065,5066,5067,5068,5069,5070,5071,5072,5073,5074,5075,5076,5077,5078,5079,5080,5081,5082,5083,5084,5085,5086,5087,5088,5089,5090,5091,5092,5093,5094,5095,5096,5097,5098,5099,5100,5101,5102,5103,5104,5105,5106,5107,5108,5109,5110,5111,5112,5113,5114,5115,5116,5117,5118,5119,5120,5121 },
        m_iCollectionItemID = 60007340,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 63730,
    m_wstrDescription = "Benders (Benders' Höhle, mind. 'normal') 5-mal beseitigen",
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
    m_wstrDescription = "Robo N8 (Schloss Robo, mind. 'normal') 5-mMal beseitigen",
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
    m_wstrDescription = "10 Spuren von Aren sammeln",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 5004,5005,5006,5007,5008,5009,5010,5011,5012,5013,5014,5015,5016,5017,5018,5019,5020,5021,5022,5023,5024,5025,5026,5027,5028,5029,5030,5031,5032,5033,5034,5035,5036,5037,5038,5039,5040,5041,5042,5043,5044,5045,5046,5047,5048,5049,5050,5051,5052,5053,5054,5055,5056,5057,5058,5059,5060,5061,5062,5063,5064,5065,5066,5067,5068,5069,5070,5071,5072,5073,5074,5075,5076,5077,5078,5079,5080,5081,5082,5083,5084,5085,5086,5087,5088,5089,5090,5091,5092,5093,5094,5095,5096,5097,5098,5099,5100,5101,5102,5103,5104,5105,5106,5107,5108,5109,5110,5111,5112,5113,5114,5115,5116,5117,5118,5119,5120,5121 },
        m_iCollectionItemID = 60007340,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 2,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 63750,
    m_wstrDescription = "Mit Kleiner Hsien einen Dungeon durchspielen und 3 unbekannte Speersplitter sammeln",
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
    m_wstrDescription = "10 Speersplitter von Arens zerbrochenem Speer sammeln",
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
    m_iID = 74100,
    m_wstrDescription = "Beutel mit Goldsand",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 15,20,21,27,28,29,43,44,45,46,47,48,71,73,75,76,77,78,79,81,82,83,85,87,91,93,94,95,97,99,104,106,107,111,112,113,115,117,118,119,120,125,126,127,143,149,151,165,168,169,171,173,175,193,194,195,196,197,200,202,203,204,205,208,219,220,221,228,229,231,236,237,251,253,255,259,260,336,337,338,339,340,341,342,356,357,358,359,360,379,380,382,415,416,417,418,419,420,424,425,427,428,429,431,439,450,458,459,460,461,462,463,464,465,470,471,472,473,474,475,476,488,489,490,491,492,493,523,524,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,549,550,551,552,553,554,555,556,557,558,559,560,561,562,563,564,565,566,572,573,574,575,576,578,579,580,581,582,583,584,585,586,588,589,590,608,610,611,612,629,636,644,645,687,688,689,690,691,693,694,695,696,697,698,699,700,701,702,703,704,705,708,725,726,727,731,732,737,744,792,793,794,795,796,799,835,862,867,868,869,870,871,872,873,918,919,920,921,922,923,924,925,926,927,935,936,937,944,956,962,963,964,965,966,967,968,969,970,971,976,977,980,984,1151,1152,1153,1154,1155,1156,1157,1158,1159,1160,1161,1162,1164,1165,1166,1167,1168,1169,1170,1171,1172,1173,1174,1191,1192,1193,1194,1195,1196,1197,1198,1199,1200,1201,1202,1209,1210,1211,1212,1213,1214,1215,1216,1217,1218,1219 },
        m_iCollectionItemID = 67006174,
        m_iCollectionItemNum = 10,
        m_fQuestItemDropRate = 5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 74110,
    m_wstrDescription = "Sandskulptur-Stücke",
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
    m_wstrDescription = "Windeldrit-Stücke",
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
    m_wstrDescription = "Windeldrit",
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
    m_wstrDescription = "Broschüren mit Angeboten der Sander-Händler",
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
    m_wstrDescription = "Richards Briefe",
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
    m_wstrDescription = "Waren der Sander-Händler",
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
    m_wstrDescription = "Trockenes Sander 'normal'",
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
    m_wstrDescription = "Garpai 'normal'",
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
    m_wstrDescription = "Trockenes Sander mind. 'schwer'",
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
    m_wstrDescription = "Garpai mind. 'schwer'",
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
    m_wstrDescription = "Im Abwasserkanal ('Experte') Benders 5-mal bezwingen",
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
    m_wstrDescription = "Weg des Kriegers",
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
    m_wstrDescription = "Schloss Robo ('Experte') 5-mal abschließen",
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
    m_wstrDescription = "Weg des gerechten Kriegers",
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
    m_wstrDescription = "Im Opfertempel ('Experte') Dyurahan-Ritter 5-mal bezwingen",
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
    m_wstrDescription = "1 Weg des Richters sammeln",
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
    m_wstrDescription = "10 Ratschläge zum Training der Kraft sammeln",
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
    m_wstrDescription = "1 Gebundene Ratschläge für Ara sammeln",
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
    m_wstrDescription = "10 Ratschläge zum Training der Technik sammeln",
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
    m_wstrDescription = "1 Gebundene Ratschläge für Ara, Band 1, sammeln",
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
    m_wstrDescription = "10 Ratschläge zum Training des Herzens sammeln",
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
    m_wstrDescription = "1 Gebundene Ratschläge für Ara, Band 2, sammeln",
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
    m_iID = 74440,
    m_wstrDescription = "Dungeon-Bosse (außer Ruben)",
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
    m_wstrDescription = "Feldbosse (außer Ruben)",
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
    m_wstrDescription = "Monster des Dunklen Portals erledigen, die auf den Feldern in Elder, Besma und Altera erscheinen.",
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
    m_wstrDescription = "Beschwörungskarte für unbekanntes Monster verwenden",
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
    m_wstrDescription = "Dungeon spielen (Ruben und Henir ausgenommen)",
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
    m_wstrDescription = "Dunkles Portal betreten",
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
    m_wstrDescription = "Truppen-Anführer erledigen",
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
    m_wstrDescription = "Dunkles Portal spielen",
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
    m_wstrDescription = "1-mal in einer 4-er Gruppe Dunkles Portal spielen",
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
    m_iID = 74630,
    m_wstrDescription = "Sprich mit Aranka",
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
    m_wstrDescription = "Ohne-Klassenwechsel-Skill verwenden",
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
    m_wstrDescription = "1.Klassenwechsel-Skill verwenden",
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
    m_wstrDescription = "2.Klassenwechsel-Skill verwenden",
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
    m_wstrDescription = "Skill-Notiz-Coupon",
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
    m_wstrDescription = "1mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "Sprich mit dem Nasod-Seraph",
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
    m_wstrDescription = "1mal mit Nasod-Seraph Dungeon mit EXP spielen",
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
    m_wstrDescription = "Kraftquellen-Code",
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
    m_wstrDescription = "Kraftquellen-Code",
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
    m_wstrDescription = "5mal Energienadeln verwenden",
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
    m_wstrDescription = "5mal Taser verwenden",
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
    m_wstrDescription = "5mal Starkes Herz verwenden",
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
    m_wstrDescription = "30mal PvP spielen\n(Du darfst den Kampf nicht vorzeitig verlassen.)",
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
    m_wstrDescription = "10mal im PvP siegen",
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
    m_wstrDescription = "Gespräch mit dem Kommando-Kanonier",
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
    m_wstrDescription = "3 Technikbücher der Antiken Nasod sammeln",
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
    m_wstrDescription = "2-mal Defrost-Energie sammeln",
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
    m_wstrDescription = "2 Alchemie-Geheimtränke sammeln",
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
    m_wstrDescription = "1-mal Defrost-Energie sammeln",
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
    m_wstrDescription = "15-mal Eldritenergie sammeln",
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
    m_wstrDescription = "2-mal Defrost-Energie sammeln",
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
    m_wstrDescription = "30-mal Dungeon mit EXP spielen (alle Dungeons, außer Ruben/Henir)",
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
    m_wstrDescription = "20-mal 3:3-PvP spielen",
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
    m_wstrDescription = "Feldbosse",
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
    m_wstrDescription = "30-mal \"Automatischer Mörser\" verwenden",
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
    m_wstrDescription = "30-mal \"Kanonenhieb\" verwenden",
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
    m_wstrDescription = "30-mal \"Taktisches Feld\" verwenden",
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
    m_wstrDescription = "5 Energiekapsel-Stücke sammeln",
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
    m_wstrDescription = "3 Energiekapseln Lv.1 sammeln",
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
    m_wstrDescription = "5 Energiekapseln Lv.1 sammeln",
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
    m_wstrDescription = "7 Energiekapseln Lv.1 sammeln",
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
    m_wstrDescription = "Noaz-See",
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
    m_wstrDescription = "Robo-Gedenkbrücke",
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
    m_wstrDescription = "Zwillingswachtürme",
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
    m_wstrDescription = "Besagara-Wasserfall",
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
    m_wstrDescription = "Toritugera-Canyon",
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
    m_wstrDescription = "Gruft der Reinigung",
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
    m_wstrDescription = "Himmelslager",
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
    m_wstrDescription = "Nasod-Mülldeponie",
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
    m_wstrDescription = "Reikiki-See",
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
    m_wstrDescription = "Pilgertor",
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
    m_wstrDescription = "Pilgerplatz",
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
    m_wstrDescription = "Hügel der Seelen",
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
    m_wstrDescription = "Straße des Reichtums",
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
    m_wstrDescription = "Straße der Koexistenz",
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
    m_wstrDescription = "Straße des Friedens",
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
    m_wstrDescription = "Elios-Hafen",
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
    m_wstrDescription = "Wellen von Ellaim",
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
    m_wstrDescription = "Überschwemmte Stadt",
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
    m_wstrDescription = "Noahs Grab",
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
    m_wstrDescription = "Kreiskanal",
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
    m_wstrDescription = "Feldmonster von Elder",
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
    m_wstrDescription = "Feldmonster von Besma",
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
    m_wstrDescription = "Feldmonster von Altera",
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
    m_wstrDescription = "Feldmonster von Peita",
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
    m_wstrDescription = "Feldmonster von Belder",
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
    m_wstrDescription = "Feldmonster von Hamel",
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
    m_wstrDescription = "Feldmonster (Robo-Aufklärer, Junger Komodo, Krähenbanden-Techniker, Niederer Vargo-Erzmagier, Kleiner Uno, Button-Schattenritter)",
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
    m_wstrDescription = "Sprich mit dem Schwertrufer-NPC",
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
    m_wstrDescription = "10mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "Sprich mit dem Nachtaugen-NPC",
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
    m_wstrDescription = "3mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "Brief des Pongo-Stamms",
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
    m_wstrDescription = "Nasodschildwächter",
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
    m_wstrDescription = "Nasod-Geschützwächter",
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
    m_wstrDescription = "Nasodkönig",
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
    m_wstrDescription = "2mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "1mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "10mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "5mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "Zertifikat des zurückgekehrten Helden",
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
    m_wstrDescription = "Zertifikat des aufrichtigen Abenteurers",
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
    m_wstrDescription = "Dunkeleldrit-Fragment",
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
    m_iID = 85450,
    m_wstrDescription = "Elios-Landkarten-Stück",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 15,20,21,27,28,29,43,44,45,46,47,48,71,73,75,76,77,78,79,81,82,83,85,87,91,93,94,95,97,99,104,106,107,111,112,113,115,117,118,119,120,125,126,127,143,149,151,165,168,169,171,173,175,193,194,195,196,197,200,202,203,204,205,208,219,220,221,228,229,231,236,237,251,253,255,259,260,336,337,338,339,340,341,342,356,357,358,359,360,379,380,382,415,416,417,418,419,420,424,425,427,428,429,431,439,450,458,459,460,461,462,463,464,465,470,471,472,473,474,475,476,488,489,490,491,492,493,523,524,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,549,550,551,552,553,554,555,556,557,558,559,560,561,562,563,564,565,566,572,573,574,575,576,578,579,580,581,582,583,584,585,586,588,589,590,608,610,611,612,629,636,644,645,687,688,689,690,691,693,694,695,696,697,698,699,700,701,702,703,704,705,708,725,726,727,731,732,737,744,792,793,794,795,796,799,835,862,867,868,869,870,871,872,873,918,919,920,921,922,923,924,925,926,927,935,936,937,944,956,962,963,964,965,966,967,968,969,970,971,976,977,980,984 },
        m_iCollectionItemID = 85002890,
        m_iCollectionItemNum = 5,
        m_fQuestItemDropRate = 2.5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85460,
    m_wstrDescription = "Stoff",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 15,20,21,27,28,29,43,44,45,46,47,48,71,73,75,76,77,78,79,81,82,83,85,87,91,93,94,95,97,99,104,106,107,111,112,113,115,117,118,119,120,125,126,127,143,149,151,165,168,169,171,173,175,193,194,195,196,197,200,202,203,204,205,208,219,220,221,228,229,231,236,237,251,253,255,259,260,336,337,338,339,340,341,342,356,357,358,359,360,379,380,382,415,416,417,418,419,420,424,425,427,428,429,431,439,450,458,459,460,461,462,463,464,465,470,471,472,473,474,475,476,488,489,490,491,492,493,523,524,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,549,550,551,552,553,554,555,556,557,558,559,560,561,562,563,564,565,566,572,573,574,575,576,578,579,580,581,582,583,584,585,586,588,589,590,608,610,611,612,629,636,644,645,687,688,689,690,691,693,694,695,696,697,698,699,700,701,702,703,704,705,708,725,726,727,731,732,737,744,792,793,794,795,796,799,835,862,867,868,869,870,871,872,873,918,919,920,921,922,923,924,925,926,927,935,936,937,944,956,962,963,964,965,966,967,968,969,970,971,976,977,980,984 },
        m_iCollectionItemID = 85002892,
        m_iCollectionItemNum = 1,
        m_fQuestItemDropRate = 0.3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85461,
    m_wstrDescription = "Prächtige Farben",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 15,20,21,27,28,29,43,44,45,46,47,48,71,73,75,76,77,78,79,81,82,83,85,87,91,93,94,95,97,99,104,106,107,111,112,113,115,117,118,119,120,125,126,127,143,149,151,165,168,169,171,173,175,193,194,195,196,197,200,202,203,204,205,208,219,220,221,228,229,231,236,237,251,253,255,259,260,336,337,338,339,340,341,342,356,357,358,359,360,379,380,382,415,416,417,418,419,420,424,425,427,428,429,431,439,450,458,459,460,461,462,463,464,465,470,471,472,473,474,475,476,488,489,490,491,492,493,523,524,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,549,550,551,552,553,554,555,556,557,558,559,560,561,562,563,564,565,566,572,573,574,575,576,578,579,580,581,582,583,584,585,586,588,589,590,608,610,611,612,629,636,644,645,687,688,689,690,691,693,694,695,696,697,698,699,700,701,702,703,704,705,708,725,726,727,731,732,737,744,792,793,794,795,796,799,835,862,867,868,869,870,871,872,873,918,919,920,921,922,923,924,925,926,927,935,936,937,944,956,962,963,964,965,966,967,968,969,970,971,976,977,980,984 },
        m_iCollectionItemID = 85002893,
        m_iCollectionItemNum = 5,
        m_fQuestItemDropRate = 1.5,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85462,
    m_wstrDescription = "Kräftiger Pinsel",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 15,20,21,27,28,29,43,44,45,46,47,48,71,73,75,76,77,78,79,81,82,83,85,87,91,93,94,95,97,99,104,106,107,111,112,113,115,117,118,119,120,125,126,127,143,149,151,165,168,169,171,173,175,193,194,195,196,197,200,202,203,204,205,208,219,220,221,228,229,231,236,237,251,253,255,259,260,336,337,338,339,340,341,342,356,357,358,359,360,379,380,382,415,416,417,418,419,420,424,425,427,428,429,431,439,450,458,459,460,461,462,463,464,465,470,471,472,473,474,475,476,488,489,490,491,492,493,523,524,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,549,550,551,552,553,554,555,556,557,558,559,560,561,562,563,564,565,566,572,573,574,575,576,578,579,580,581,582,583,584,585,586,588,589,590,608,610,611,612,629,636,644,645,687,688,689,690,691,693,694,695,696,697,698,699,700,701,702,703,704,705,708,725,726,727,731,732,737,744,792,793,794,795,796,799,835,862,867,868,869,870,871,872,873,918,919,920,921,922,923,924,925,926,927,935,936,937,944,956,962,963,964,965,966,967,968,969,970,971,976,977,980,984 },
        m_iCollectionItemID = 85002894,
        m_iCollectionItemNum = 3,
        m_fQuestItemDropRate = 1,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85470,
    m_wstrDescription = "Zertifikat des Abenteurers",
    m_eClearType = SUB_QUEST_TYPE["SQT_QUEST_ITEM_COLLECTION"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = { 0 },
        m_bUpperDifficulty = False,
        m_eKillNPCID = { 15,20,21,27,28,29,43,44,45,46,47,48,71,73,75,76,77,78,79,81,82,83,85,87,91,93,94,95,97,99,104,106,107,111,112,113,115,117,118,119,120,125,126,127,143,149,151,165,168,169,171,173,175,193,194,195,196,197,200,202,203,204,205,208,219,220,221,228,229,231,236,237,251,253,255,259,260,336,337,338,339,340,341,342,356,357,358,359,360,379,380,382,415,416,417,418,419,420,424,425,427,428,429,431,439,450,458,459,460,461,462,463,464,465,470,471,472,473,474,475,476,488,489,490,491,492,493,523,524,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,549,550,551,552,553,554,555,556,557,558,559,560,561,562,563,564,565,566,572,573,574,575,576,578,579,580,581,582,583,584,585,586,588,589,590,608,610,611,612,629,636,644,645,687,688,689,690,691,693,694,695,696,697,698,699,700,701,702,703,704,705,708,725,726,727,731,732,737,744,792,793,794,795,796,799,835,862,867,868,869,870,871,872,873,918,919,920,921,922,923,924,925,926,927,935,936,937,944,956,962,963,964,965,966,967,968,969,970,971,976,977,980,984 },
        m_iCollectionItemID = 85003010,
        m_iCollectionItemNum = 20,
        m_fQuestItemDropRate = 3,
    },
}

g_pQuestManager:AddSubQuestTemplet_LUA
{
    m_iID = 85490,
    m_wstrDescription = "Sprich mit dem Flammenkommandanten",
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
    m_wstrDescription = "Nasodhand-Reparaturteile",
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
    m_wstrDescription = "Antike Nasod-Forschungsdokumente",
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
    m_wstrDescription = "Zerbrochene Nasodteile",
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
    m_wstrDescription = "Zerbrochene Nasodteile",
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
    m_wstrDescription = "Zerbrochene Nasodteile",
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
    m_wstrDescription = "Sprich mit Aranka",
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
    m_wstrDescription = "Spiele 10 Dungeons mit dem \"Söldnerporu (Mighty)\"",
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
    m_wstrDescription = "Dunkler Raven",
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
    m_wstrDescription = "10mal \"Tödlicher Raubzug\" verwenden",
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
    m_wstrDescription = "10mal zu deinem Level passenden Dungeon spielen (außer Ruben und Henir)",
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
    m_wstrDescription = "Teile des geheimen Buchs des Kommandanten",
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
    m_wstrDescription = "Dunkler Raven",
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
    m_wstrDescription = "1 hochwertigen Stoff besorgen",
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
    m_wstrDescription = "5-mal Nähzeug besorgen",
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
    m_wstrDescription = "3 Färbemittel besorgen",
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
    m_wstrDescription = "3 Essenzen eines Feldbosses besorgen",
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
    m_wstrDescription = "100 Feldmonster beseitigen (Feldbosse ausgenommen)",
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
    m_wstrDescription = "10-mal PvP spielen",
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
    m_iID = 91700,
    m_wstrDescription = "1mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "2mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "3mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "4mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "5mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "6mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "7mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "8mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "9mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "10mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "11mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "12mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "13mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "14mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "15mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "16mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "17mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "18mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "19mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "20mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "21mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "22mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "23mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "24mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "25mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "26mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "27mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "28mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "29mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "30mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "31mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "32mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "33mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "34mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "35mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "36mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "37mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "38mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "39mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "40mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "41mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "42mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "43mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "44mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "45mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "46mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "47mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "48mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "49mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "50mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "51mal Dungeon mit EXP spielen",
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
    m_iID = 91800,
    m_wstrDescription = "Sprich mit der Dimensionshexe",
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
    m_wstrDescription = "Sprich mit Aranka",
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
    m_wstrDescription = "Unbearbeitete Mondsteine",
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
    m_wstrDescription = "Alvars Geheimdokument",
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
    m_wstrDescription = "Würfel des unbearbeiteten Mondsteins",
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
    m_wstrDescription = "Mondstein-Neutralisierer",
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
    m_wstrDescription = "3mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "5mal Dungeon mit EXP spielen",
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
    m_wstrDescription = "Mondlicht-Energie",
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
    m_wstrDescription = "Eldrit-Kristalle zerstören",
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
    m_wstrDescription = "Mondstein-Stücke",
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
    m_wstrDescription = "2mal im PvP siegen",
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
    m_wstrDescription = "3 Kills im PvP",
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
    m_iID = 140190,
    m_wstrDescription = "2 verlorene Geschenke des Pinguin-Weihnachtsmanns sammeln",
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
    m_wstrDescription = "2 verlorene Geschenke des Pinguin-Weihnachtsmanns sammeln",
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
    m_wstrDescription = "2 verlorene Geschenke des Pinguin-Weihnachtsmanns sammeln",
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
    m_wstrDescription = "20 Maxlevel-Beweiszeichen (Dungeon) sammeln",
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
    m_wstrDescription = "13 Maxlevel-Beweiszeichen (Feld) sammeln",
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

