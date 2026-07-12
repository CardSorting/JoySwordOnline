-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10,
    m_wstrDescription = "[Field] Clear Thief Phoru",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_QUEST"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iQuestID = 11040,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 20,
    m_wstrDescription = "Tree of El (Normal)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_RUBEN_EL_TREE_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NORMAL"],
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 21,
    m_wstrDescription = "Forest Ruins (Hard)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_RUBEN_RUIN_OF_ELF_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_HARD"],
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 22,
    m_wstrDescription = "White Mist Swamp (Very Hard)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_RUBEN_SWAMP_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30,
    m_wstrDescription = "William Phoru",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 26 },
        m_iKillNum = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 31,
    m_wstrDescription = "Hungry Phoru",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 619 },
        m_iKillNum = 5,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 32,
    m_wstrDescription = "Relic Thief Phoru",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 620 },
        m_iKillNum = 5,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 40,
    m_wstrDescription = "Monkey King (White Mist Swamp - Very Hard)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_RUBEN_SWAMP_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_eKillNPCID = { 365 },
        m_iKillNum = 2,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 41,
    m_wstrDescription = "Apple Mong",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 15 },
        m_iKillNum = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 42,
    m_wstrDescription = "Rolling Mong",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 192 },
        m_iKillNum = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 43,
    m_wstrDescription = "Monkey King (White Mist Swamp Very Hard)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_RUBEN_SWAMP_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_eKillNPCID = { 365 },
        m_iKillNum = 2,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 50,
    m_wstrDescription = "Shadow Forest (Very Hard)\nReceive S Rank.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_RANK"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_ELDER_DRUID_FOREST_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_eDungeonRank = 7,
        m_iDungeonClearCount = 0,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 80,
    m_wstrDescription = "Use the lucky four-leaf clover.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 130063,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 90,
    m_wstrDescription = "Scorpion King (Dragon Road - Very Hard)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 120 },
        m_iKillNum = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 91,
    m_wstrDescription = "Dragon Road (Very Hard)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_BESMA_DRAGON_ROAD_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_iDungeonClearCount = 4,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 100,
    m_wstrDescription = "Richie Mine – Mining Area - (Very Hard) \nReceive S Rank.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_RANK"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_BESMA_MINE2_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_eDungeonRank = 7,
        m_iDungeonClearCount = 0,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 120,
    m_wstrDescription = "King Nasod",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_ALTERA_CORE_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_eKillNPCID = { 289 },
        m_iKillNum = 4,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 121,
    m_wstrDescription = "Altera Core (Normal) ",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_ALTERA_CORE_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NORMAL"],
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 122,
    m_wstrDescription = "Altera Core (Hard) ",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_ALTERA_CORE_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_HARD"],
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 123,
    m_wstrDescription = "Altera Core (Very Hard) ",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_ALTERA_CORE_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 130,
    m_wstrDescription = "Shadow Warrior\n(Bethma Lake at night- Very Hard) ",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_BESMA_LAKE_NIGHT_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_eKillNPCID = { 488 },
        m_iKillNum = 6,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 140,
    m_wstrDescription = "Nasod Banthus",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_ELDER_BELOW_PASSAGE_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 84 },
        m_iKillNum = 4,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 150,
    m_wstrDescription = "Bat King",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_ELDER_BENDERS_CAVE_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 74 },
        m_iKillNum = 2,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 160,
    m_wstrDescription = "Clear Wally's Castle (Very Hard)\nwithin 8 minutes.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_TIME"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_ELDER_WALLY_CASTLE_CENTER_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_iDungeonClearTime = 480,
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 170,
    m_wstrDescription = "Nasod Drillers\n(Richie Mine – Mining Area - at Very Hard)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_BESMA_MINE2_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_eKillNPCID = { 151 },
        m_iKillNum = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 171,
    m_wstrDescription = "Wally No. 8 MK2\n(Richie Mine (excavation area) - Very Hard)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_BESMA_MINE2_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_eKillNPCID = { 109 },
        m_iKillNum = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 172,
    m_wstrDescription = "Wally No. 9\n(Cargo Airship - Very Hard)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_BESMA_AIRSHIP_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_eKillNPCID = { 171 },
        m_iKillNum = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 180,
    m_wstrDescription = "Shrine of Dedication Entrance (Very Hard)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_PEITA_OFFERINGS_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_iDungeonClearCount = 5,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 190,
    m_wstrDescription = "Clear the Black Crow (Very Hard)\nwith damage 10 or lower.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_DAMAGE"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_ALTERA_BATTLE_AIR_SHIP_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_iDungeonDamage = 10,
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 200,
    m_wstrDescription = "Alterasia",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 229 },
        m_iKillNum = 10,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 201,
    m_wstrDescription = "Alterasia Spore",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 221 },
        m_iKillNum = 100,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 210,
    m_wstrDescription = "Altera Core (Very Hard)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_ALTERA_CORE_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_iDungeonClearCount = 2,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 220,
    m_wstrDescription = "Clear Altera Core (Very Hard)\nwithin 8 minutes.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_TIME"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_ALTERA_CORE_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_iDungeonClearTime = 480,
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 230,
    m_wstrDescription = "Kill Wise Dutor 5 times.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 421 },
        m_iKillNum = 5,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 231,
    m_wstrDescription = "Kill Amethyst 5 times.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 426 },
        m_iKillNum = 5,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 240,
    m_wstrDescription = "Destroy Vines 100 times.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 429 },
        m_iKillNum = 100,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 250,
    m_wstrDescription = "Berthe (Altar of Dedication, 'Very Hard')",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_PEITA_OFFERINGS_ALTER_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_eKillNPCID = { 450 },
        m_iKillNum = 20,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 251,
    m_wstrDescription = "Glitter Protector",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 416 },
        m_iKillNum = 250,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 252,
    m_wstrDescription = "Glitter Guard",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 417 },
        m_iKillNum = 250,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 253,
    m_wstrDescription = "Glitter Sniper",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 418 },
        m_iKillNum = 250,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 254,
    m_wstrDescription = "Glitter Dasher",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 419 },
        m_iKillNum = 250,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 270,
    m_wstrDescription = "Clear Wally's Underground Laboratory in 25 minutes. (Any difficulty) ",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_TIME"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_ELDER_SECRET_COMMON"],
        m_eDungeonMode = DUNGEON_MODE["DM_SECRET_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_bUpperDifficulty = True,
        m_iDungeonClearTime = 1500,
        m_iDungeonClearCount = 5,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 271,
    m_wstrDescription = "Clear the Dragon Nest: Abyss in 25 minutes. (Any difficulty) ",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_TIME"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_BESMA_SECRET_COMMON"],
        m_eDungeonMode = DUNGEON_MODE["DM_SECRET_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_bUpperDifficulty = True,
        m_iDungeonClearTime = 1500,
        m_iDungeonClearCount = 5,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 272,
    m_wstrDescription = "Clear the Transporting Tunnel CA in 25 minutes. (Any difficulty) ",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_TIME"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_ALTERA_SECRET_COMMON"],
        m_eDungeonMode = DUNGEON_MODE["DM_SECRET_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_bUpperDifficulty = True,
        m_iDungeonClearTime = 1500,
        m_iDungeonClearCount = 5,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 273,
    m_wstrDescription = "Clear the Dragon Nest: Abyss in the Hell mode\nat Rank S.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_RANK"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_VELDER_SECRET_COMMON"],
        m_eDungeonMode = DUNGEON_MODE["DM_SECRET_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_bUpperDifficulty = True,
        m_eDungeonRank = 5,
        m_iDungeonClearCount = 5,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 274,
    m_wstrDescription = "Clear the Transporting Tunnel: Contaminated Area in the Hell mode\nwithout being hit more than 30 times.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_DAMAGE"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_ALTERA_SECRET_HELL"],
        m_eDungeonMode = DUNGEON_MODE["DM_SECRET_HELL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_iDungeonDamage = 30,
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 275,
    m_wstrDescription = "Clear the Velder's Hallucination in 25 minutes. (Any difficulty) ",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_TIME"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_VELDER_SECRET_COMMON"],
        m_eDungeonMode = DUNGEON_MODE["DM_SECRET_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_bUpperDifficulty = True,
        m_iDungeonClearTime = 1500,
        m_iDungeonClearCount = 5,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 280,
    m_wstrDescription = "Clear Wally's Underground Lab (Hell mode)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_ELDER_SECRET_HELL"],
        m_eDungeonMode = DUNGEON_MODE["DM_SECRET_HELL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_iDungeonClearCount = 199,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 290,
    m_wstrDescription = "Clear the Dragon Nest: Abyss (Hell mode)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_BESMA_SECRET_HELL"],
        m_eDungeonMode = DUNGEON_MODE["DM_SECRET_HELL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_iDungeonClearCount = 199,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 300,
    m_wstrDescription = "Clear the Transporting Tunnel CA (Hell mode)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_ALTERA_SECRET_HELL"],
        m_eDungeonMode = DUNGEON_MODE["DM_SECRET_HELL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_iDungeonClearCount = 199,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 310,
    m_wstrDescription = "Stealthy Morfos",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 467 },
        m_iKillNum = 45,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 311,
    m_wstrDescription = "Mcgard the Blitzkrieg",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 466 },
        m_iKillNum = 45,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 312,
    m_wstrDescription = "Invincible Vardon",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 468 },
        m_iKillNum = 45,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 313,
    m_wstrDescription = "Sullen Joaquin",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 610 },
        m_iKillNum = 45,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 320,
    m_wstrDescription = "Cockatigle",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 472 },
        m_iKillNum = 250,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 321,
    m_wstrDescription = "Polka",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 634 },
        m_iKillNum = 30,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 330,
    m_wstrDescription = "Mana Eater",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 425 },
        m_iKillNum = 75,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 331,
    m_wstrDescription = "Blood Eater",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 474 },
        m_iKillNum = 200,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 332,
    m_wstrDescription = "Spriggan",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 622 },
        m_iKillNum = 20,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 340,
    m_wstrDescription = "Clear Residential Area 3 (Very Hard)\nat Rank S.\n",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_RANK"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_VELDER_THIRD_DWELLING_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_eDungeonRank = 7,
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 341,
    m_wstrDescription = "Clear the Hope Bridge (Very Hard)\nat Rank S.\n",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_RANK"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_VELDER_BRIDGE_HOPE_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_eDungeonRank = 7,
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 342,
    m_wstrDescription = "Clear the Palace Entrance (Very Hard)\nat Rank S.\n",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_RANK"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_VELDER_PALACE_ENTRANCE_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_eDungeonRank = 7,
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 343,
    m_wstrDescription = "Clear the Burning Hope Bridge (Very Hard)\nat Rank S.\n",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_RANK"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_VELDER_BRIDGE_BUNNING_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_eDungeonRank = 7,
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 344,
    m_wstrDescription = "Clear Commercial Area 1 (Very Hard)\nat Rank SS.\n",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_RANK"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_VELDER_MARKET_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_eDungeonRank = 8,
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 350,
    m_wstrDescription = "Dark Elf Sentinel",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 470 },
        m_iKillNum = 300,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 351,
    m_wstrDescription = "Kenaz",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 471 },
        m_iKillNum = 200,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 352,
    m_wstrDescription = "Chloe (Hope Bridge 'Very Hard')",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_VELDER_BRIDGE_HOPE_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_eKillNPCID = { 478 },
        m_iKillNum = 20,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 353,
    m_wstrDescription = "Dark Nephilim (Southern Gate 'Very Hard')",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_VELDER_GATE_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_eKillNPCID = { 481 },
        m_iKillNum = 30,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 360,
    m_wstrDescription = "Elite Nasod Guards",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 339 },
        m_iKillNum = 10,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 361,
    m_wstrDescription = "Glitter Shielders",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 356 },
        m_iKillNum = 10,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 362,
    m_wstrDescription = "Glitter Protector",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 416 },
        m_iKillNum = 100,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 363,
    m_wstrDescription = "Arc Glitter Protector",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 458 },
        m_iKillNum = 200,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 364,
    m_wstrDescription = "Invincible Vardon",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 468 },
        m_iKillNum = 50,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 370,
    m_wstrDescription = "Barricades",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 476 },
        m_iKillNum = 200,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 371,
    m_wstrDescription = "Demoniac Cannon",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 475 },
        m_iKillNum = 125,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 372,
    m_wstrDescription = "Siege Towers",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 611 },
        m_iKillNum = 50,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 380,
    m_wstrDescription = "Uno Hound (Residential Area 3 'Any difficulty')",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 477 },
        m_iKillNum = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 390,
    m_wstrDescription = "Clear Hope Bridge (Very Hard)\nin 3 minutes and 30 seconds.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_TIME"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_VELDER_BRIDGE_HOPE_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_iDungeonClearTime = 210,
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 391,
    m_wstrDescription = "Clear the Palace Entrance (Very Hard)\nin 3 minutes and 50 seconds.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_TIME"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_VELDER_PALACE_ENTRANCE_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_iDungeonClearTime = 230,
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 392,
    m_wstrDescription = "Clear Burning Hope Bridge (Very Hard)\nin 4 minutes and 10 seconds.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_TIME"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_VELDER_BRIDGE_BUNNING_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_iDungeonClearTime = 250,
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 393,
    m_wstrDescription = "Clear Commercial Area 1 (Very Hard)\nin 4 minutes and 30 seconds.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_TIME"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_VELDER_MARKET_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_iDungeonClearTime = 270,
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 400,
    m_wstrDescription = "Arc Glitter Assassin",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 463 },
        m_iKillNum = 400,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 401,
    m_wstrDescription = "Arc Glitter Dasher",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 461 },
        m_iKillNum = 400,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 402,
    m_wstrDescription = "Arc Glitter Sniper",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 460 },
        m_iKillNum = 150,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 403,
    m_wstrDescription = "Arc Glitter Panzer",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 462 },
        m_iKillNum = 200,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 404,
    m_wstrDescription = "Glitter Commander",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 465 },
        m_iKillNum = 150,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 410,
    m_wstrDescription = "Piranha",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 702 },
        m_iKillNum = 150,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 411,
    m_wstrDescription = "Ancient Crab",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 703 },
        m_iKillNum = 100,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 412,
    m_wstrDescription = "Merman",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 704 },
        m_iKillNum = 150,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 413,
    m_wstrDescription = "Deep Sea Fish",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 705 },
        m_iKillNum = 100,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 414,
    m_wstrDescription = "Coral Serpent",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 718 },
        m_iKillNum = 40,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 420,
    m_wstrDescription = "Fallen Chloe",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 714 },
        m_iKillNum = 50,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 421,
    m_wstrDescription = "Bizarre Conrad",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 715 },
        m_iKillNum = 50,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 430,
    m_wstrDescription = "Clear Resiam Outskirts ‘Very Hard’ with S rank",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_RANK"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_HAMEL_OUTSKIRTS_RESIAM_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_eDungeonRank = 7,
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 431,
    m_wstrDescription = "Clear Sunken Resiam ‘Very Hard’ with S rank",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_RANK"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_HAMEL_BREAK_RESIAM_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_eDungeonRank = 7,
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 432,
    m_wstrDescription = "Clear Ancient Waterway ‘Very Hard’ with SS rank",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_RANK"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_HAMEL_ANCIENT_WATERWAY_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_eDungeonRank = 8,
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 440,
    m_wstrDescription = "Black Petal",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 706, 733, 837 },
        m_iKillNum = 200,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 450,
    m_wstrDescription = "Ancient Nasod Sentinel",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 698 },
        m_iKillNum = 125,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 451,
    m_wstrDescription = "Ancient Nasod Guard",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 700 },
        m_iKillNum = 100,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 452,
    m_wstrDescription = "Mini Ancient Nasod Sentinel",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 699 },
        m_iKillNum = 100,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 460,
    m_wstrDescription = "Clear El Tree",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_RUBEN_EL_TREE_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NORMAL"],
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 461,
    m_wstrDescription = "Clear Forest Ruins ‘Very Hard’",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_RUBEN_RUIN_OF_ELF_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 462,
    m_wstrDescription = "Clear White Mist Swamp ‘Very Difficult’",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_RUBEN_SWAMP_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 470,
    m_wstrDescription = "Shadow Linker",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 691 },
        m_iKillNum = 1000,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 480,
    m_wstrDescription = "Clear Velder’s Pier",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_BATTLE_SHIP_VELDER"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NORMAL"],
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 490,
    m_wstrDescription = "거미 고치에서 기사단 구조",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 798 },
        m_iKillNum = 500,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 495,
    m_wstrDescription = "Rescue the cocooned Knights",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 797 },
        m_iKillNum = 500,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 500,
    m_wstrDescription = "Mantaray",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 795 },
        m_iKillNum = 1000,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 501,
    m_wstrDescription = "Mantares",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 796 },
        m_iKillNum = 1000,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 502,
    m_wstrDescription = "Magmanta",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 721 },
        m_iKillNum = 30,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 505,
    m_wstrDescription = "Mantaray",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 795 },
        m_iKillNum = 1000,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 506,
    m_wstrDescription = "Mantares",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 796 },
        m_iKillNum = 1000,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 507,
    m_wstrDescription = "Magmanta",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 721 },
        m_iKillNum = 30,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 510,
    m_wstrDescription = "칠링 스파인(소환된 칠링 스파인 제외)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 710 },
        m_iKillNum = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 515,
    m_wstrDescription = "Chilling Spine (Except for summoned Chilling Spine)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 710 },
        m_iKillNum = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 520,
    m_wstrDescription = "[하급]등급의 아이템을 펫의 먹이로 주기\n",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_GIVE_PET_FEED"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eItemGrade = ITEM_GRADE["IG_LOW"],
        m_iPetFeedCount = 200,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 525,
    m_wstrDescription = "[Old] Feed pet with a low grade item\n",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_GIVE_PET_FEED"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eItemGrade = ITEM_GRADE["IG_LOW"],
        m_iPetFeedCount = 200,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 530,
    m_wstrDescription = "[엘리트]등급의 아이템을 펫의 먹이로 주기\n",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_GIVE_PET_FEED"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eItemGrade = ITEM_GRADE["IG_ELITE"],
        m_iPetFeedCount = 30,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 531,
    m_wstrDescription = "[유니크]등급의 아이템을 펫의 먹이로 주기\n",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_GIVE_PET_FEED"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eItemGrade = ITEM_GRADE["IG_UNIQUE"],
        m_iPetFeedCount = 10,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 535,
    m_wstrDescription = "[Elite] Feed pet with low grade item\n",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_GIVE_PET_FEED"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eItemGrade = ITEM_GRADE["IG_ELITE"],
        m_iPetFeedCount = 30,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 536,
    m_wstrDescription = "[Unique] Feed pet with low grade item\n",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_GIVE_PET_FEED"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eItemGrade = ITEM_GRADE["IG_UNIQUE"],
        m_iPetFeedCount = 10,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 540,
    m_wstrDescription = "심해어",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 705 },
        m_iKillNum = 150,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 545,
    m_wstrDescription = "Deep Sea Fish",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 705 },
        m_iKillNum = 150,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 550,
    m_wstrDescription = "가라앉은 레시암 '매우 어려움'\n난이도를 8분 10초 내로 클리어",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_TIME"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_HAMEL_BREAK_RESIAM_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_iDungeonClearTime = 490,
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 551,
    m_wstrDescription = "혼자서 가라앉은 레시암 '매우 어려움'\n난이도를 8분 45초 내로 클리어",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_PLAYER_WITH_DUNGEON_CLEAR"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_HAMEL_BREAK_RESIAM_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_iDungeonClearTime = 525,
        m_iDungeonClearCount = 1,
        m_iPlayerCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 555,
    m_wstrDescription = "Clear Sunken Resiam ‘Very Hard’ within 8 minutes and 10 seconds",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_TIME"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_HAMEL_BREAK_RESIAM_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_iDungeonClearTime = 490,
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 556,
    m_wstrDescription = "Clear Sunken Resiam 'Very Hard’ within 8 minutes and 45 seconds by yourself",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_PLAYER_WITH_DUNGEON_CLEAR"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_HAMEL_BREAK_RESIAM_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_iDungeonClearTime = 525,
        m_iDungeonClearCount = 1,
        m_iPlayerCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 560,
    m_wstrDescription = "고대 얼음 게",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 862 },
        m_iKillNum = 250,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 561,
    m_wstrDescription = "하갈라즈",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 696 },
        m_iKillNum = 500,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 562,
    m_wstrDescription = "칠링 헤지호그",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 697 },
        m_iKillNum = 500,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 563,
    m_wstrDescription = "아이스 스팅어",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 799 },
        m_iKillNum = 50,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 564,
    m_wstrDescription = "아발란쉬",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 722 },
        m_iKillNum = 25,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 565,
    m_wstrDescription = "Ancient Iced Crab",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 862 },
        m_iKillNum = 250,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 566,
    m_wstrDescription = "Hagalaz",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 696 },
        m_iKillNum = 500,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 567,
    m_wstrDescription = "Chilling Hedgehog",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 697 },
        m_iKillNum = 500,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 568,
    m_wstrDescription = "Ice Stinger",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 799 },
        m_iKillNum = 50,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 569,
    m_wstrDescription = "Avalanche",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 722 },
        m_iKillNum = 25,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 570,
    m_wstrDescription = "고대수로 '매우 어려움' 난이도를\nSS랭크로 클리어",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_RANK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_HAMEL_ANCIENT_WATERWAY_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_eDungeonRank = 8,
        m_iDungeonClearCount = 7,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 571,
    m_wstrDescription = "고대수로 중심부 '매우 어려움' 난이도를\nSS랭크로 클리어",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_RANK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_HAMEL_ANCIENT_WATERWAY_CORE_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_eDungeonRank = 8,
        m_iDungeonClearCount = 15,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 572,
    m_wstrDescription = "마그만타의 동굴 '매우 어려움' 난이도를\nSS랭크로 클리어",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_RANK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_HAMEL_CAVE_OF_MAGMANTA_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_eDungeonRank = 8,
        m_iDungeonClearCount = 22,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 573,
    m_wstrDescription = "얼어붙은 물의 신전 '매우 어려움' \n난이도를 SS랭크로 클리어",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_RANK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_HAMEL_FROZEN_WATER_TEMPLE_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_eDungeonRank = 8,
        m_iDungeonClearCount = 30,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 574,
    m_wstrDescription = "물의 전당 '매우 어려움' 난이도를\nSS랭크로 클리어",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_RANK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_HAMEL_FROZEN_WATER_HALL_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_eDungeonRank = 8,
        m_iDungeonClearCount = 35,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 575,
    m_wstrDescription = "Clear Ancient Waterway ‘Very Hard’ with SS rank",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_RANK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_HAMEL_ANCIENT_WATERWAY_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_eDungeonRank = 8,
        m_iDungeonClearCount = 7,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 576,
    m_wstrDescription = "Clear Heart of the Ancient Waterway ‘Very Hard’ with SS rank",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_RANK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_HAMEL_ANCIENT_WATERWAY_CORE_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_eDungeonRank = 8,
        m_iDungeonClearCount = 15,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 577,
    m_wstrDescription = "Clear Magmanta’s Cave ‘Very Hard’ with SS rank",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_RANK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_HAMEL_CAVE_OF_MAGMANTA_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_eDungeonRank = 8,
        m_iDungeonClearCount = 22,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 578,
    m_wstrDescription = "Clear Temple of Frozen Water ‘Very Hard’ with SS rank",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_RANK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_HAMEL_FROZEN_WATER_TEMPLE_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_eDungeonRank = 8,
        m_iDungeonClearCount = 30,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 579,
    m_wstrDescription = "Clear Halls of Water ‘Very Hard’ with SS rank",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_RANK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_HAMEL_FROZEN_WATER_HALL_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_eDungeonRank = 8,
        m_iDungeonClearCount = 35,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 580,
    m_wstrDescription = "혼자서 물의 전당 '매우 어려움' 난이도를 클리어",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_PLAYER_WITH_DUNGEON_CLEAR"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_HAMEL_FROZEN_WATER_HALL_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_iDungeonClearTime = 0,
        m_iDungeonClearCount = 1,
        m_iPlayerCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 581,
    m_wstrDescription = "물의 전당 '매우 어려움' 난이도를\n부활하지 않고 클리어",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_RESURRECTION_STONE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_HAMEL_FROZEN_WATER_HALL_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_iDungeonClearCount = 1,
        m_bCheckResurrectionStone = False,
        m_iDieCount = 0,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 582,
    m_wstrDescription = "위의 조건을 동시에 만족하고 클리어",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_TOGETHER_MISSION_CLEAR"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iDungeonClearCount = 150,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 585,
    m_wstrDescription = "Clear Halls of Water 'Very Hard' by yourself",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_PLAYER_WITH_DUNGEON_CLEAR"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_HAMEL_FROZEN_WATER_HALL_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_iDungeonClearTime = 0,
        m_iDungeonClearCount = 1,
        m_iPlayerCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 586,
    m_wstrDescription = "Clear Halls of Water ‘Very Hard’ with no use of Resurrection Stones",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_RESURRECTION_STONE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_HAMEL_FROZEN_WATER_HALL_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_iDungeonClearCount = 1,
        m_bCheckResurrectionStone = False,
        m_iDieCount = 0,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 587,
    m_wstrDescription = "Clear the above conditions at the same time",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_TOGETHER_MISSION_CLEAR"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iDungeonClearCount = 150,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 590,
    m_wstrDescription = "물의 전당 '매우 어려움' 난이도를\n부활하지 않고 클리어",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_RESURRECTION_STONE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_HAMEL_FROZEN_WATER_HALL_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_iDungeonClearCount = 1,
        m_bCheckResurrectionStone = False,
        m_iDieCount = 0,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 591,
    m_wstrDescription = "혼자서 물의 전당 '매우 어려움' 난이도를\n25분 내로 클리어",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_PLAYER_WITH_DUNGEON_CLEAR"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_HAMEL_FROZEN_WATER_HALL_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_iDungeonClearTime = 1500,
        m_iDungeonClearCount = 1,
        m_iPlayerCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 592,
    m_wstrDescription = "물의 전당 '매우 어려움' 난이도를\n피격 수 10 이내로 클리어",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_DAMAGE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_HAMEL_FROZEN_WATER_HALL_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_iDungeonDamage = 10,
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 593,
    m_wstrDescription = "물의 전당 '매우 어려움' 난이도를\nSS랭크로 클리어",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_RANK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_HAMEL_FROZEN_WATER_HALL_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_eDungeonRank = 8,
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 594,
    m_wstrDescription = "위의 조건을 동시에 만족하고 클리어",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_TOGETHER_MISSION_CLEAR"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 595,
    m_wstrDescription = "Clear Halls of Water ‘Very Hard’ with no use of Resurrection Stones",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_RESURRECTION_STONE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_HAMEL_FROZEN_WATER_HALL_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_iDungeonClearCount = 1,
        m_bCheckResurrectionStone = False,
        m_iDieCount = 0,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 596,
    m_wstrDescription = "Clear the Halls of Water ‘Very Hard’ within 25 minutes by yourself",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_PLAYER_WITH_DUNGEON_CLEAR"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_HAMEL_FROZEN_WATER_HALL_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_iDungeonClearTime = 1500,
        m_iDungeonClearCount = 1,
        m_iPlayerCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 597,
    m_wstrDescription = "Clear the Halls of Water ‘Very Hard’ with 10 hits or less",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_DAMAGE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_HAMEL_FROZEN_WATER_HALL_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_iDungeonDamage = 10,
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 598,
    m_wstrDescription = "Clear Halls of Water ‘Very Hard’ with SS rank",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_RANK"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_HAMEL_FROZEN_WATER_HALL_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_eDungeonRank = 8,
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 599,
    m_wstrDescription = "Clear the above conditions at the same time",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_TOGETHER_MISSION_CLEAR"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 600,
    m_wstrDescription = "쉐도우 스팅어",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 713 },
        m_iKillNum = 500,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 601,
    m_wstrDescription = "타락한 클로에",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 714 },
        m_iKillNum = 500,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 602,
    m_wstrDescription = "란",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 723 },
        m_iKillNum = 500,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 603,
    m_wstrDescription = "기묘한 콘라드",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 715 },
        m_iKillNum = 500,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 604,
    m_wstrDescription = "거대망치 보보스",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 716 },
        m_iKillNum = 500,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 605,
    m_wstrDescription = "Shadow Stinger",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 713 },
        m_iKillNum = 500,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 606,
    m_wstrDescription = "Fallen Chloe",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 714 },
        m_iKillNum = 500,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 607,
    m_wstrDescription = "Ran",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 723 },
        m_iKillNum = 500,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 608,
    m_wstrDescription = "Bizarre Conrad",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 715 },
        m_iKillNum = 500,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 609,
    m_wstrDescription = "Giant Hammer Bobosse",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 716 },
        m_iKillNum = 500,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 610,
    m_wstrDescription = "Clear Velder's Hallucination, 'Hell' mode",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_VELDER_SECRET_HELL"],
        m_eDungeonMode = DUNGEON_MODE["DM_SECRET_HELL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 199,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 611,
    m_wstrDescription = "Defeat 50 Vegar Trocks",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 1151 },
        m_iKillNum = 50,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 612,
    m_wstrDescription = "Barren Sander, 'Any Difficulty', at SS rank 3 times",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_RANK"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_SANDER_DRY_SANDER_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NORMAL"],
        m_bUpperDifficulty = True,
        m_eDungeonRank = 8,
        m_iDungeonClearCount = 3,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 613,
    m_wstrDescription = "Defeat 300 Rocky Trocks ",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 1152 },
        m_iKillNum = 300,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 614,
    m_wstrDescription = "Clear Garpai Rock, 'Any Difficulty', 10 times.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_SANDER_GARPAI_ROCK_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 10,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 615,
    m_wstrDescription = "Clear Garpai Rock, 'Very Hard', within 4 mins 10 sec.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_TIME"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_SANDER_GARPAI_ROCK_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_iDungeonClearTime = 250,
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 620,
    m_wstrDescription = "Clear Caluso Tribal Village, 'Very Hard', within 4 mins.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_TIME"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_SANDER_KARUSO_VILLAGE_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_bUpperDifficulty = True,
        m_iDungeonClearTime = 240,
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 621,
    m_wstrDescription = "Clear Caluso Tribal Village, 'Very Hard', at SS rank.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_RANK"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_SANDER_KARUSO_VILLAGE_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_bUpperDifficulty = True,
        m_eDungeonRank = 8,
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 622,
    m_wstrDescription = "Clear the above conditions at the same time.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_TOGETHER_MISSION_CLEAR"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iDungeonClearCount = 5,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 630,
    m_wstrDescription = "Rash Fogta Trock",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 1193 },
        m_iKillNum = 100,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 640,
    m_wstrDescription = "Clear Barren Sander, 'Very Hard', without being hit more than 30 times.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_DAMAGE"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_SANDER_DRY_SANDER_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_iDungeonDamage = 30,
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 641,
    m_wstrDescription = "Clear Garpai Rock, 'Very Hard', without being hit more than 30 times.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_DAMAGE"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_SANDER_GARPAI_ROCK_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_iDungeonDamage = 30,
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 642,
    m_wstrDescription = "Clear Trock's Lair, 'Very Hard', without being hit more than 30 times.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_DAMAGE"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_SANDER_DEN_OF_TROCK_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_iDungeonDamage = 30,
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 643,
    m_wstrDescription = "Clear Caluso Tribal Village, 'Very Hard', without being hit more than 30 times.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_DAMAGE"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_SANDER_KARUSO_VILLAGE_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_iDungeonDamage = 30,
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 650,
    m_wstrDescription = "Clear Trock's Lair, 'Very Hard', without using Resurrection Stones.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_RESURRECTION_STONE"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_SANDER_DEN_OF_TROCK_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_iDungeonClearCount = 25,
        m_bCheckResurrectionStone = False,
        m_iDieCount = 0,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 660,
    m_wstrDescription = "Great Battle Chief Karu (Caluso Tribal Village, 'Very Hard')",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_SANDER_KARUSO_VILLAGE_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_eKillNPCID = { 1219 },
        m_iKillNum = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 670,
    m_wstrDescription = "Enraged Sylphid",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 1214 },
        m_iKillNum = 9999,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 680,
    m_wstrDescription = "Clear Caluso Tribal Village without using Resurrection Stones.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_RESURRECTION_STONE"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_SANDER_KARUSO_VILLAGE_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_iDungeonClearCount = 1,
        m_bCheckResurrectionStone = False,
        m_iDieCount = 0,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 681,
    m_wstrDescription = "Clear Caluso Tribal Village, 'Very Hard', within 5 mins.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_PLAYER_WITH_DUNGEON_CLEAR"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_SANDER_KARUSO_VILLAGE_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_iDungeonClearTime = 300,
        m_iDungeonClearCount = 1,
        m_iPlayerCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 682,
    m_wstrDescription = "Clear Caluso Tribal Village, 'Very Hard', without being hit more than 10 times.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_DAMAGE"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_SANDER_KARUSO_VILLAGE_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_iDungeonDamage = 10,
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 683,
    m_wstrDescription = "Clear Caluso Tribal Village, 'Very Hard', at SS rank",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_RANK"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_SANDER_KARUSO_VILLAGE_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_bUpperDifficulty = True,
        m_eDungeonRank = 8,
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 684,
    m_wstrDescription = "Clear the above conditions at the same time.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_TOGETHER_MISSION_CLEAR"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 690,
    m_wstrDescription = "Demons (Heart of Behemoth, 'Very Hard')",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_SANDER_BEHIMOSS_HEART_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 1384, 1385, 1386, 1387, 1388, 1389, 1396, 1397, 1398 },
        m_iKillNum = 30000,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 691,
    m_wstrDescription = "Dark Clark/Living Trock\n(Heart of Behemoth 'Very Hard')",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_SANDER_BEHIMOSS_HEART_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 1375, 1376, 1377, 1378, 1379, 1380, 1381, 1412, 1413, 1414, 1415, 1416, 1417, 1409, 1418 },
        m_iKillNum = 15000,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 692,
    m_wstrDescription = "Karis' True Form (Heart of Behemoth, 'Very Hard')",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_SANDER_BEHIMOSS_HEART_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_bUpperDifficulty = True,
        m_eKillNPCID = { 1410 },
        m_iKillNum = 800,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5000,
    m_wstrDescription = "Use the item, The Brave Takes the Lead.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 131267,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5010,
    m_wstrDescription = "Use the item, Catch Insects.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 131268,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5020,
    m_wstrDescription = "Use HKBN item.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 60000220,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5030,
    m_wstrDescription = "Use the Motherly Love title item.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 60000492,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5040,
    m_wstrDescription = "Offer event",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 60000501,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5060,
    m_wstrDescription = "10주년 기념 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 60000947,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5070,
    m_wstrDescription = "아버지의 마음\n이벤트 퀘스트",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_QUEST"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iQuestID = 60336,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5080,
    m_wstrDescription = "칠석 발렌타인 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 60001088,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5090,
    m_wstrDescription = "Use the Freedom Symbol item.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 60001279,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5100,
    m_wstrDescription = "Use the Hand in Hand item.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 60001299,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5101,
    m_wstrDescription = "1주년 기념 칭호 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 60001305,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5102,
    m_wstrDescription = "Use the Brave New User (15 Days) item.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 60001358,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5103,
    m_wstrDescription = "역시 기존 유저가 대단해 칭호(7일권) 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 60001359,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5104,
    m_wstrDescription = "HKBN 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 60001421,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5105,
    m_wstrDescription = "1주년 기념 칭호 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 60001482,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5106,
    m_wstrDescription = "크리스마스 트리 칭호(1일)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 60001483,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5107,
    m_wstrDescription = "크리스마스 트리 칭호(300일)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 60001485,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5108,
    m_wstrDescription = "발렌타인 히어로 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 60001685,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5109,
    m_wstrDescription = "발렌타인 히로인 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 60001686,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5110,
    m_wstrDescription = "발렌타인 히로인 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 60001753,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5111,
    m_wstrDescription = "빈펀 칭호 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 60001785,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5112,
    m_wstrDescription = "마족 소탕 칭호 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 60001845,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5113,
    m_wstrDescription = "마족 말살 칭호 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 60001846,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5114,
    m_wstrDescription = "대양의 무법자 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 60001930,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5115,
    m_wstrDescription = "대양의 무법자 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 60001931,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5116,
    m_wstrDescription = "플루오네의 탐험가(15일) 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 65000624,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5117,
    m_wstrDescription = "엘리오스의 용기 칭호 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 60002740,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5118,
    m_wstrDescription = "엘리오스의 용맹 칭호 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 60002741,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5120,
    m_wstrDescription = "반갑다 친구야 칭호(7일) 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 60003050,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5121,
    m_wstrDescription = "반갑다 친구야 칭호(30일) 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 60003051,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5122,
    m_wstrDescription = "반갑다 친구야 칭호(영구) 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 60003052,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5130,
    m_wstrDescription = "스승의 날 칭호(100일) 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 60003350,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5140,
    m_wstrDescription = "엘리오스 대륙으로 돌아온 귀환 \n모험가들을 위한 전용 칭호(기간제)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5150,
    m_wstrDescription = "QuizQuiz(15일) 칭호 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 65000644,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5160,
    m_wstrDescription = "감마니아 칭호 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 60003471,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5170,
    m_wstrDescription = "환각의 벨더 칭호 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 60003712,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5180,
    m_wstrDescription = "빛나는 파괴의 검사 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 60003778,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5190,
    m_wstrDescription = "빛나는 활력의 검사 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 60003777,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5200,
    m_wstrDescription = "The Rage 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 60003980,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5210,
    m_wstrDescription = "아이템 '어둠 속의 적(30일)' 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 60004087,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5220,
    m_wstrDescription = "아담스의 컴백 15일 권 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 60004107,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5230,
    m_wstrDescription = "엘소드 강태공 30일 권 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 60004108,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5231,
    m_wstrDescription = "엘소드 강태공 15일 권 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 60004109,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5240,
    m_wstrDescription = "'새로운 영웅'사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 64000003,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5250,
    m_wstrDescription = "'다시 돌아온 자(15일)'사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 60004135,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5260,
    m_wstrDescription = "'배틀 매지션 런칭기념' 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 60004142,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5270,
    m_wstrDescription = "'새로운 영웅'사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 60004147,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5280,
    m_wstrDescription = "'시스 나이트 런칭기념' 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 60004194,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5290,
    m_wstrDescription = "'Mother's Day' 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 60004218,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5300,
    m_wstrDescription = "'새로운 영웅'사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 60004268,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5310,
    m_wstrDescription = "'트레핑 레인져 기념' 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 60004275,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5320,
    m_wstrDescription = "'새로운 영웅'사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 60004440,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5330,
    m_wstrDescription = "웨폰 테이커(칭호) 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 60004490,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5340,
    m_wstrDescription = "'새로운 영웅'사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 60004550,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5350,
    m_wstrDescription = "코드 일렉트라(칭호) 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 60004750,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5360,
    m_wstrDescription = "'새로운 영웅'사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 60004882,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5370,
    m_wstrDescription = "쉘링 가디언 칭호 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 60004920,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5500,
    m_wstrDescription = "Provide an event.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 65000003,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5501,
    m_wstrDescription = "Provide an event.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 65000006,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5502,
    m_wstrDescription = "A title only for the best guild.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5503,
    m_wstrDescription = "Use Crow Mercenaries Title",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_QUEST"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iQuestID = 70024,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5504,
    m_wstrDescription = "Use Crow Mercenaries Title",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 65000080,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5505,
    m_wstrDescription = "Use the Nasod Queen title item.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 65000174,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5506,
    m_wstrDescription = "Use 10-Year Commemoration.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 65000233,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5507,
    m_wstrDescription = "마츠리다 왓쇼이 칭호(7일권) 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 65000232,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5508,
    m_wstrDescription = "Use the Ariel's Title item.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 65000278,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5509,
    m_wstrDescription = "Use the Ariel's Smile Title (7 Days) item.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 65000279,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5510,
    m_wstrDescription = "엘소드 대륙을 일주한 대표 여행가를 위한 칭호 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 85000230,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5511,
    m_wstrDescription = "왕국을 수호하라!(15일) 칭호 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 65000492,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5512,
    m_wstrDescription = "2011년 부활절을 기념하는 부활절 토끼칭호",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 85000251,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5513,
    m_wstrDescription = "Lacher♡ 칭호 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 65000595,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5514,
    m_wstrDescription = "Use the QuizQuiz (30 Days) Title",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 65000644,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5515,
    m_wstrDescription = "샤샤의 SOS!! 아이템 사용(1일권)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 65000644,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5516,
    m_wstrDescription = "일루전 브레이커(이벤트) 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 65000644,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5517,
    m_wstrDescription = "시간의 파괴자 (이벤트) 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 65000964,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5518,
    m_wstrDescription = "이벤트용 불멸의 투지 칭호 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 65000080,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5519,
    m_wstrDescription = "활력의 검사 & 파괴의 검사\n이벤트 퀘스트 클리어",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_QUEST"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iQuestID = 4020,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5520,
    m_wstrDescription = "활력의 검사 & 파괴의 검사\n이벤트 퀘스트 클리어",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_QUEST"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iQuestID = 4020,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5521,
    m_wstrDescription = "활력의 검사 & 파괴의 검사\n이벤트 퀘스트 클리어",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_QUEST"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iQuestID = 4020,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5522,
    m_wstrDescription = "활력의 검사 & 파괴의 검사\n이벤트 퀘스트 클리어",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_QUEST"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iQuestID = 4020,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5530,
    m_wstrDescription = "내가 시스나이트다 칭호 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 67000364,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5540,
    m_wstrDescription = "나는 천재 마법소녀!! 칭호 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 67000601,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5550,
    m_wstrDescription = "엘드랏실의 전사 칭호 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 67000781,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5560,
    m_wstrDescription = "이벤트 기간동안 니코니코 채널링으로 접속한 유저에게 착용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5570,
    m_wstrDescription = "니코니코 (칭호) 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 67002120,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5580,
    m_wstrDescription = "나는 웨폰 테이커다 칭호 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 67002137,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5590,
    m_wstrDescription = "나는 코드 일렉트라 칭호 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 67002137,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 5600,
    m_wstrDescription = "나는 쉘링 가디언 칭호 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 67002400,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10000,
    m_wstrDescription = "Use the emblem, 200 Days.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 129785,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10010,
    m_wstrDescription = "Phoru - Amateur Champion",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 361 },
        m_iKillNum = 5,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10020,
    m_wstrDescription = "Phoru - Minor Champion",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 362 },
        m_iKillNum = 10,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10030,
    m_wstrDescription = "Phoru - Major Champion",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 363 },
        m_iKillNum = 20,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10040,
    m_wstrDescription = "Use the emblem, 300 Days.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 130064,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10050,
    m_wstrDescription = "Use the emblem, 300 Days.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 130065,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10060,
    m_wstrDescription = "Kid-O-Lantern",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 376 },
        m_iKillNum = 5,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10070,
    m_wstrDescription = "Holy-O-Latern",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 377 },
        m_iKillNum = 10,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10080,
    m_wstrDescription = "Jack-O-Latern",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 132879,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10090,
    m_wstrDescription = "Use the 'Symbol of a Fighter' that is acquired\nwhen you rank second or above in the competition channel.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 130066,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10100,
    m_wstrDescription = "Clear the event quest,\nHoffman's 'Magic Autumn'.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_QUEST"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iQuestID = 4020,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10110,
    m_wstrDescription = "Clear the event quest,\n'Soul of Knight' of Lenphad.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 130139,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10120,
    m_wstrDescription = "Clear the event quest,\n'Stone Fury' of Lenphad.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 130140,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10130,
    m_wstrDescription = "William Phoru wearing Korean traditional costume",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 349 },
        m_iKillNum = 30,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10140,
    m_wstrDescription = "Use the item, Lord of Coldness.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 130158,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10150,
    m_wstrDescription = "Use the title item celebrating the year 2009\nthat is given to those logging in on January 1, 2009.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 130164,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10160,
    m_wstrDescription = "Provide an event.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 130255,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10170,
    m_wstrDescription = "Use the item, Set of Mind for the New Year (for 5 days).",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 130266,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10180,
    m_wstrDescription = "Use the item, Set of Mind for the New Year.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 130267,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10190,
    m_wstrDescription = "Event of Valentine Chocolate Gift King.\nGiven to top 20 users\nwho have given many gifts (Check the event page.).",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 130310,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10200,
    m_wstrDescription = "Event of Valentine Chocolate Gift King.\nGiven to top 20 users\nwho have received many gifts (Check the event page.).",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 130320,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10210,
    m_wstrDescription = "Use the item, Undying Hero.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 130506,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10220,
    m_wstrDescription = "Use the item, Quick Delivery!",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 130541,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10230,
    m_wstrDescription = "Use the item 'Ruler of Ordeals'",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 130591,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10240,
    m_wstrDescription = "Use the item, the Miracle of 500 Days.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 130592,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10250,
    m_wstrDescription = "Use the item, the Spirit of Korean Nation.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 130638,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10260,
    m_wstrDescription = "Use the item, Lord of Dawn.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 130723,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10270,
    m_wstrDescription = "Use the item, Henir's Invitation.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 130802,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10280,
    m_wstrDescription = "Use the item, Soul of Knight (1 day).",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 130902,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10290,
    m_wstrDescription = "Use the item, Stone Fury (1 day).",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 130903,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10300,
    m_wstrDescription = "Use the item, Lord of Coldness (1 day).",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 130899,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10310,
    m_wstrDescription = "Provide an event.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 130901,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10320,
    m_wstrDescription = "Use the item, Undying Will to Fight (1 day).",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 130898,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10330,
    m_wstrDescription = "Use the item, Lord of Dawn (1 day).",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 130900,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10340,
    m_wstrDescription = "Use the item, the Lucky Four-Leaf Clover (1 day).",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 130904,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10350,
    m_wstrDescription = "Use the Ocean Outlaw item",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 213170,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10360,
    m_wstrDescription = "Use the item, Affluent Thanksgiving Day.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 131131,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10370,
    m_wstrDescription = "Use the item, Dandy Style!",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 131135,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10380,
    m_wstrDescription = "Use the item, Looking For Guild!",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 131151,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10381,
    m_wstrDescription = "Use the item, Celebrating the Launch.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 131350,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10390,
    m_wstrDescription = "Available when logging in from the Kill3rcombo Premium PC Gaming Center.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10400,
    m_wstrDescription = "Use the item, Elsword's 2nd Year!\nthat is provided by mail when logging in on December 27.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 131378,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10410,
    m_wstrDescription = "Use the item, Dignity of the White Tiger.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 131466,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10430,
    m_wstrDescription = "Use the item, Protection of Trees.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 131847,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10440,
    m_wstrDescription = "Use Luto's Contract.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 132054,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10450,
    m_wstrDescription = "Use 12th Warrior.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 132475,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10460,
    m_wstrDescription = "Use Ready to Combat.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 132545,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10470,
    m_wstrDescription = "Use Ruben Forest Miracle.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 132647,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10480,
    m_wstrDescription = "Use  Elrios Bay Title",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 132697,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10490,
    m_wstrDescription = "Use the Passionate Touch item.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 111086,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10500,
    m_wstrDescription = "Use the Unlimited Stamina 30! item.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 132715,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10510,
    m_wstrDescription = "Use the Elsword In Wonderland Title.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 132795,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10520,
    m_wstrDescription = "Use the Elrios Examinees item.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 132882,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10530,
    m_wstrDescription = "1st EWE 칭호 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 133108,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10540,
    m_wstrDescription = "Use the Happy Merry Christmas Title",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 133341,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10550,
    m_wstrDescription = "플루오네의 탐험가 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 133468,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10560,
    m_wstrDescription = "플루오네의 개척자 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 133469,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10570,
    m_wstrDescription = "Use the Student Council item.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 160003,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10580,
    m_wstrDescription = "영웅대전 16강 2등~16등 유저에게 지급되는 칭호",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10590,
    m_wstrDescription = "영웅대전 우승자 2명에게 지급되는 칭호",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10600,
    m_wstrDescription = "Use the Peace Maker item",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 160026,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10610,
    m_wstrDescription = "Use the Protector of Elarbor title",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 160031,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10620,
    m_wstrDescription = "빅뱅 칭호 - GD",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 0,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10630,
    m_wstrDescription = "빅뱅 칭호 - 대성",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 0,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10640,
    m_wstrDescription = "빅뱅 칭호 - 승리",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 0,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10650,
    m_wstrDescription = "빅뱅 칭호 - 탑",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 0,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10660,
    m_wstrDescription = "빅뱅 칭호 - 태양",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 0,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10670,
    m_wstrDescription = "Use the Demon Invasion Warrior",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 160037,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10680,
    m_wstrDescription = "청 Rebirth 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 160228,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10690,
    m_wstrDescription = "Use the Wonders of Time and Space item.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 160249,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10700,
    m_wstrDescription = "TooniLand 칭호 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 160253,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10710,
    m_wstrDescription = "이벤트 기간동안 신규계정으로 접속하는 모든 캐릭터(기간제)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10720,
    m_wstrDescription = "영웅비화 칭호 아이템사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 160242,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10730,
    m_wstrDescription = "2NE1 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 238150,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10740,
    m_wstrDescription = "자애로운 평화 전도사(2011 공존의 가을 축제) 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 160285,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10745,
    m_wstrDescription = "모험가의 서사시 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 131466,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10750,
    m_wstrDescription = "파괴의 검사 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 160295,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10755,
    m_wstrDescription = "활력의 검사 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 160296,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10760,
    m_wstrDescription = "Use Raven's Rage!",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 160303,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10765,
    m_wstrDescription = "엘의 가호",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 160304,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10770,
    m_wstrDescription = "엘소드 특공대",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 160305,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10775,
    m_wstrDescription = "용사의 묵시록 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 160404,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10780,
    m_wstrDescription = "진정한 학생의 투혼 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 160418,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10790,
    m_wstrDescription = "Wonder Girls! 혜림 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 233110,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10800,
    m_wstrDescription = "Wonder Girls! 유빈 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 233120,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10810,
    m_wstrDescription = "Wonder Girls! 예은 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 233130,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10820,
    m_wstrDescription = "Wonder Girls! 소희 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 233140,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10830,
    m_wstrDescription = "Wonder Girls! 선예 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 233150,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10840,
    m_wstrDescription = "정의로운 평화 전도사 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 160285,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10850,
    m_wstrDescription = "GOOD 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 160472,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10860,
    m_wstrDescription = "BEST 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 160471,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10870,
    m_wstrDescription = "EXCELLENT 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 160470,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10880,
    m_wstrDescription = "2012 어린이 주간 칭호 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 160480,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10890,
    m_wstrDescription = "엘소드 어드벤처 칭호 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 160486,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10900,
    m_wstrDescription = "에이핑크♡하영 하영 칭호 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 251520,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10910,
    m_wstrDescription = "에이핑크♡남주 남주 칭호 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 251530,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10920,
    m_wstrDescription = "에이핑크♡유경 유경 칭호 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 251540,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10930,
    m_wstrDescription = "에이핑크♡나은 나은 칭호 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 251480,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10940,
    m_wstrDescription = "에이핑크♡은지 은지 칭호 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 251510,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10950,
    m_wstrDescription = "에이핑크♡보미 보미 칭호 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 251490,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10960,
    m_wstrDescription = "에이핑크♡초롱 초롱 칭호 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 251500,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10970,
    m_wstrDescription = "홀리 유니콘의 힘 칭호 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 81650,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10980,
    m_wstrDescription = "명예 검투사 칭호 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 160563,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 10990,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 11000,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 11010,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 11020,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 11050,
    m_wstrDescription = "Use the Millennium Fox's Calling item",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 160631,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 11120,
    m_wstrDescription = "Use the 'Ancient Fossil Collector' item.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 135400,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 11130,
    m_wstrDescription = "Use the 'Ancient Fossil Analyst' item.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 135401,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 15000,
    m_wstrDescription = "CBT달인",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 65000006,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 15001,
    m_wstrDescription = "Exclusive Title given to CBT players!",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 90000003,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 15002,
    m_wstrDescription = "Discover all social features in Trials of Elsword.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 90000002,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 15003,
    m_wstrDescription = "길드 코인을 가장 많이 획득 한 길드",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 15004,
    m_wstrDescription = "싸워라(퀘스트) 클리어",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_QUEST"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iQuestID = 75021,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 15005,
    m_wstrDescription = "엘소드의 여인 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 80000103,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 20000,
    m_wstrDescription = "Imir's Time and Space - Ruben\nRanked first today.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 20010,
    m_wstrDescription = "Imir's Time and Space - Ruben\nRanked second-fifth today.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 20020,
    m_wstrDescription = "Imir's Time and Space - Ruben\nRanked second-fifth today.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 20030,
    m_wstrDescription = "Imir's Time and Space - Ruben\nClear up to 20 stages.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_ARCADE_RUBEN"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 20040,
    m_wstrDescription = "Imir's Time and Space - Elder\nRanked first today.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 20050,
    m_wstrDescription = "Imir's Time and Space - Elder\nRanked second-fifth today.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 20060,
    m_wstrDescription = "Imir's Time and Space - Elder\nRanked second-fifth today.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 20070,
    m_wstrDescription = "Imir's Time and Space - Elder\nClear up to 20 stages.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_ARCADE_ELDER"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 20080,
    m_wstrDescription = "Henir's Time and Space Challenge Mode\nThose who ranked first each day may use this.\n(Based on ranks at 3 a.m. every day)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 20090,
    m_wstrDescription = "Henir's Time and Space Challenge Mode\nThose who ranked second-tenth each day may use this.\n(Based on ranks at 3 a.m. every day)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 20095,
    m_wstrDescription = "Henir's Time and Space Challenge Mode\nThose who ranked eleventh-hundredth each day may use this.\n(Based on ranks at 3 a.m. every day)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 20100,
    m_wstrDescription = "Henir's Time and Space Challenge Mode\nThose who ranked first each week may use this.\n(Based on ranks from the weekly regular check)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 20110,
    m_wstrDescription = "Henir's Time and Space Challenge Mode\nThose who ranked second-tenth each week may use this.\n(Based on ranks from the weekly regular check)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 20115,
    m_wstrDescription = "Henir's Time and Space Challenge Mode\nThose who ranked eleventh-hundredth each week may use this.\n(Based on ranks from the weekly regular check)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 20120,
    m_wstrDescription = "Henir's Time and Space Challenge Mode\nThose ranked first each month may use this.\n(Based on ranks from the regular check during the first week of every month)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 20130,
    m_wstrDescription = "Henir's Time and Space Challenge Mode\nThose who ranked second-tenth each month may use this.\n(Based on ranks from the regular check during the first week of every month)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 20140,
    m_wstrDescription = "Use the item, Dungeon Master!",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 131279,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 20150,
    m_wstrDescription = "엘리오스 대륙으로 돌아온 귀환 모험가들을 위한 전용 칭호(기간제)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 20160,
    m_wstrDescription = "(Official PVP Match against Epic NPC)\nLowe - The El Search Party Master ",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 847 },
        m_iKillNum = 7,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 20170,
    m_wstrDescription = "(Official PVP Match against Epic NPC)\nPenensio - The Red Knight Chief ",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 848 },
        m_iKillNum = 25,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 20180,
    m_wstrDescription = "(Official PVP Match against Epic NPC)\nNoah - The Royal Guard's Ice Princess ",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 849 },
        m_iKillNum = 25,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 20190,
    m_wstrDescription = "(Official PVP Match against Epic NPC)\nSpeka - The Shadow Witch",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 850 },
        m_iKillNum = 15,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 20200,
    m_wstrDescription = "(Official PVP Match against Epic NPC)\nLime - The Green Forest Ranger",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 851 },
        m_iKillNum = 15,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 20210,
    m_wstrDescription = "(Official PVP Match against Epic NPC)\nAmelia - The Wind Archer",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 852 },
        m_iKillNum = 15,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 20220,
    m_wstrDescription = "(Official PVP Match against Epic NPC)\nEdan - The Blood Colonel",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 853 },
        m_iKillNum = 25,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 20230,
    m_wstrDescription = "(Official PVP Match against Epic NPC)\nValak - The Lord of Pain",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 854 },
        m_iKillNum = 40,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 20240,
    m_wstrDescription = "(Official PVP Match against Epic NPC)\nCode:Q-Proto_00 - The Reckless Queen",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 855 },
        m_iKillNum = 40,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 20250,
    m_wstrDescription = "(Official PVP Match against Epic NPC)\nApple - The Ancient Nasod Princess ",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 856 },
        m_iKillNum = 10,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 20260,
    m_wstrDescription = "Use this 'The Challenger' Title.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 160569,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30000,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 27 },
        m_iKillNum = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30001,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NORMAL"],
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30002,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_BESMA_LAKE_NIGHT_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_HARD"],
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30003,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_BESMA_MINE2_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_HARD"],
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30004,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_ELDER_BENDERS_CAVE_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_HARD"],
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30005,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_ELDER_DRUID_FOREST_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NORMAL"],
        m_iDungeonClearCount = 0,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30006,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_QUEST"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iQuestID = 13050,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30007,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_QUEST"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iQuestID = 18010,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30008,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_ALTERA_BATTLE_AIR_SHIP_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_HARD"],
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30009,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_ALTERA_CORE_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30010,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_ALTERA_CORE_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30011,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_QUEST"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iQuestID = 0,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30012,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_PEITA_CHAPEL_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_HARD"],
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30013,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 429 },
        m_iKillNum = 50,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30014,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_PEITA_OFFERINGS_ALTER_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_HARD"],
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30020,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_ELDER_SECRET_HELL"],
        m_eDungeonMode = DUNGEON_MODE["DM_SECRET_HELL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_iDungeonClearCount = 10,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30030,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_BESMA_SECRET_HELL"],
        m_eDungeonMode = DUNGEON_MODE["DM_SECRET_HELL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_iDungeonClearCount = 10,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30040,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_ALTERA_SECRET_HELL"],
        m_eDungeonMode = DUNGEON_MODE["DM_SECRET_HELL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_iDungeonClearCount = 10,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30050,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_VELDER_BRIDGE_HOPE_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_eKillNPCID = { 467 },
        m_iKillNum = 5,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30060,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 608 },
        m_iKillNum = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30070,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 425 },
        m_iKillNum = 20,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30080,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_VELDER_THIRD_DWELLING_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NORMAL"],
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30090,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_VELDER_BRIDGE_HOPE_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_eKillNPCID = { 478 },
        m_iKillNum = 5,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30100,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 468 },
        m_iKillNum = 2,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30110,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 476 },
        m_iKillNum = 20,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30120,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_VELDER_THIRD_DWELLING_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NORMAL"],
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 100,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30130,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_TIME"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_VELDER_PALACE_ENTRANCE_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_iDungeonClearTime = 300,
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30140,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 463 },
        m_iKillNum = 20,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30141,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 461 },
        m_iKillNum = 20,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30142,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 460 },
        m_iKillNum = 5,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30143,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 462 },
        m_iKillNum = 10,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30144,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 465 },
        m_iKillNum = 5,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30150,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_HAMEL_BREAK_RESIAM_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NORMAL"],
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30160,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_HAMEL_ANCIENT_WATERWAY_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30170,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_HAMEL_OUTSKIRTS_RESIAM_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NORMAL"],
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30180,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 706 },
        m_iKillNum = 10,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30190,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 698 },
        m_iKillNum = 10,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30200,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_RUBEN_EL_TREE_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NORMAL"],
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 10,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30201,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_ELDER_DRUID_FOREST_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NORMAL"],
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 10,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30202,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_BESMA_DRAGON_ROAD_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NORMAL"],
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 10,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30203,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_PEITA_OFFERINGS_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NORMAL"],
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 10,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30204,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_ALTERA_BATTLE_AIR_SHIP_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NORMAL"],
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 10,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30210,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 691 },
        m_iKillNum = 100,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30220,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_BATTLE_SHIP_VELDER"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NORMAL"],
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 50,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30221,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_BATTLE_SHIP_HAMEL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NORMAL"],
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 50,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30230,
    m_wstrDescription = "거미 고치에서 기사단 구조",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 798 },
        m_iKillNum = 100,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30235,
    m_wstrDescription = "거미 고치에서 기사단 구조",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 797 },
        m_iKillNum = 100,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30240,
    m_wstrDescription = "마그만타",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 721 },
        m_iKillNum = 5,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30245,
    m_wstrDescription = "마그만타",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 721 },
        m_iKillNum = 5,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30250,
    m_wstrDescription = "아이스 스파인",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 710 },
        m_iKillNum = 100,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30255,
    m_wstrDescription = "아이스 스파인",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 710 },
        m_iKillNum = 100,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30260,
    m_wstrDescription = "[하급]등급의 아이템을 펫의 먹이로 주기\n",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_GIVE_PET_FEED"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eItemGrade = ITEM_GRADE["IG_LOW"],
        m_iPetFeedCount = 10,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30265,
    m_wstrDescription = "[하급]등급의 아이템을 펫의 먹이로 주기\n",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_GIVE_PET_FEED"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eItemGrade = ITEM_GRADE["IG_LOW"],
        m_iPetFeedCount = 10,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30270,
    m_wstrDescription = "[유니크]등급의 아이템을 펫의 먹이로 주기\n",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_GIVE_PET_FEED"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eItemGrade = ITEM_GRADE["IG_UNIQUE"],
        m_iPetFeedCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30275,
    m_wstrDescription = "[유니크]등급의 아이템을 펫의 먹이로 주기\n",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_GIVE_PET_FEED"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eItemGrade = ITEM_GRADE["IG_UNIQUE"],
        m_iPetFeedCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30280,
    m_wstrDescription = "산소게이지 부족으로 사망",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USER_UNIT_DIE"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDieReason = USER_UNIT_DIE_REASON["UUDR_LACK_OF_OXYGEN"],
        m_iDieCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30285,
    m_wstrDescription = "산소게이지 부족으로 사망",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USER_UNIT_DIE"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDieReason = USER_UNIT_DIE_REASON["UUDR_LACK_OF_OXYGEN"],
        m_iDieCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30290,
    m_wstrDescription = "가라앉은 레시암 '매우 어려움'난이도를 10분 내로 클리어",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_TIME"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_HAMEL_BREAK_RESIAM_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_iDungeonClearTime = 600,
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30295,
    m_wstrDescription = "가라앉은 레시암 '매우 어려움'난이도를 10분 내로 클리어",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_TIME"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_HAMEL_BREAK_RESIAM_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_iDungeonClearTime = 600,
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30300,
    m_wstrDescription = "아발란쉬 관련 에픽퀘스트 클리어",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_QUEST"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iQuestID = 21580,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30305,
    m_wstrDescription = "아발란쉬 관련 에픽퀘스트 클리어",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_QUEST"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iQuestID = 21580,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30310,
    m_wstrDescription = "레시암 외곽 SS로 클리어",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_RANK"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_HAMEL_OUTSKIRTS_RESIAM_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NORMAL"],
        m_bUpperDifficulty = True,
        m_eDungeonRank = 8,
        m_iDungeonClearCount = 3,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30311,
    m_wstrDescription = "가라앉은 레시암 SS로 클리어",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_RANK"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_HAMEL_BREAK_RESIAM_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NORMAL"],
        m_bUpperDifficulty = True,
        m_eDungeonRank = 8,
        m_iDungeonClearCount = 5,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30315,
    m_wstrDescription = "레시암 외곽 SS로 클리어",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_RANK"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_HAMEL_OUTSKIRTS_RESIAM_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NORMAL"],
        m_bUpperDifficulty = True,
        m_eDungeonRank = 8,
        m_iDungeonClearCount = 3,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30316,
    m_wstrDescription = "가라앉은 레시암 SS로 클리어",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_RANK"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_HAMEL_BREAK_RESIAM_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NORMAL"],
        m_bUpperDifficulty = True,
        m_eDungeonRank = 8,
        m_iDungeonClearCount = 5,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30320,
    m_wstrDescription = "마나 링커",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 793 },
        m_iKillNum = 1500,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30321,
    m_wstrDescription = "블러드 링커",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 792 },
        m_iKillNum = 1500,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30322,
    m_wstrDescription = "쉐도우 포트 트릭스터",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 873 },
        m_iKillNum = 1000,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30323,
    m_wstrDescription = "쉐도우 포트 보이더",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 693 },
        m_iKillNum = 800,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30325,
    m_wstrDescription = "마나 링커",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 793 },
        m_iKillNum = 1500,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30326,
    m_wstrDescription = "블러드 링커",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 792 },
        m_iKillNum = 1500,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30327,
    m_wstrDescription = "쉐도우 포트 트릭스터",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 873 },
        m_iKillNum = 1000,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30328,
    m_wstrDescription = "쉐도우 포트 보이더",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 693 },
        m_iKillNum = 800,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30330,
    m_wstrDescription = "란",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 723 },
        m_iKillNum = 100,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30335,
    m_wstrDescription = "란",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 723 },
        m_iKillNum = 100,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30340,
    m_wstrDescription = "자이언트 링커",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 794 },
        m_iKillNum = 100,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30341,
    m_wstrDescription = "쉐도우 포트 스나이퍼",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 791 },
        m_iKillNum = 1000,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30342,
    m_wstrDescription = "쉐도우 포트 디펜더",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 872 },
        m_iKillNum = 1000,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30343,
    m_wstrDescription = "쉐도우 포트 워커",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 870 },
        m_iKillNum = 1000,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30344,
    m_wstrDescription = "쉐도우 포트 차저",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 871 },
        m_iKillNum = 1000,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30345,
    m_wstrDescription = "자이언트 링커",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 794 },
        m_iKillNum = 100,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30346,
    m_wstrDescription = "쉐도우 포트 스나이퍼",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 835 },
        m_iKillNum = 1000,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30347,
    m_wstrDescription = "쉐도우 포트 디펜더",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 872 },
        m_iKillNum = 1000,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30348,
    m_wstrDescription = "쉐도우 포트 워커",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 870 },
        m_iKillNum = 1000,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30349,
    m_wstrDescription = "쉐도우 포트 차저",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 871 },
        m_iKillNum = 1000,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30470,
    m_wstrDescription = "(공식대전 에픽 NPC)\n엘 수색대장 로우",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 847 },
        m_iKillNum = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30480,
    m_wstrDescription = "(공식대전 에픽 NPC)\n붉은 기사단 십부장 페넨시오",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 848 },
        m_iKillNum = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30490,
    m_wstrDescription = "(공식대전 에픽 NPC)\n근위대장 얼음공주 노아",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 849 },
        m_iKillNum = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30500,
    m_wstrDescription = "(공식대전 에픽 NPC)\n그림자 마녀 스피카",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 850 },
        m_iKillNum = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30510,
    m_wstrDescription = "(공식대전 에픽 NPC)\n푸른 숲의 라임",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 851 },
        m_iKillNum = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30520,
    m_wstrDescription = "(공식대전 에픽 NPC)\n바람의 사수 아멜리아",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 852 },
        m_iKillNum = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30530,
    m_wstrDescription = "(공식대전 에픽 NPC)\n피의 장교 에단",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 853 },
        m_iKillNum = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30540,
    m_wstrDescription = "(공식대전 에픽 NPC)\n고통의 발락",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 854 },
        m_iKillNum = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30550,
    m_wstrDescription = "(공식대전 에픽 NPC)\n코드:Q-Proto_00",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 855 },
        m_iKillNum = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30560,
    m_wstrDescription = "(공식대전 에픽 NPC)\n고대 나소드 공주 애플",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 856 },
        m_iKillNum = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30570,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_VELDER_SECRET_HELL"],
        m_eDungeonMode = DUNGEON_MODE["DM_SECRET_HELL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_iDungeonClearCount = 10,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30580,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_SANDER_DRY_SANDER_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_bUpperDifficulty = True,
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30590,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 1151 },
        m_iKillNum = 200,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30600,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 1152 },
        m_iKillNum = 50,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30610,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 1168 },
        m_iKillNum = 150,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30620,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_RANK"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_SANDER_GARPAI_ROCK_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_eDungeonRank = 8,
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30630,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_QUEST"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iQuestID = 22030,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30640,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 1193 },
        m_iKillNum = 100,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30650,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_PLAYER_WITH_DUNGEON_CLEAR"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_SANDER_DRY_SANDER_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NORMAL"],
        m_bUpperDifficulty = True,
        m_iDungeonClearTime = 0,
        m_iDungeonClearCount = 10,
        m_iPlayerCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30651,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_PLAYER_WITH_DUNGEON_CLEAR"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_SANDER_GARPAI_ROCK_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NORMAL"],
        m_bUpperDifficulty = True,
        m_iDungeonClearTime = 0,
        m_iDungeonClearCount = 10,
        m_iPlayerCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30652,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_PLAYER_WITH_DUNGEON_CLEAR"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_SANDER_DEN_OF_TROCK_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NORMAL"],
        m_bUpperDifficulty = True,
        m_iDungeonClearTime = 0,
        m_iDungeonClearCount = 10,
        m_iPlayerCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30653,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_PLAYER_WITH_DUNGEON_CLEAR"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_SANDER_KARUSO_VILLAGE_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NORMAL"],
        m_bUpperDifficulty = True,
        m_iDungeonClearTime = 0,
        m_iDungeonClearCount = 10,
        m_iPlayerCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30660,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_RESURRECTION_STONE"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_SANDER_DEN_OF_TROCK_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_iDungeonClearCount = 1,
        m_bCheckResurrectionStone = False,
        m_iDieCount = 0,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30670,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_RESURRECTION_STONE"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_SANDER_KARUSO_VILLAGE_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_iDungeonClearCount = 1,
        m_bCheckResurrectionStone = True,
        m_iDieCount = 7,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30680,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_NULL"],
        m_eKillNPCID = { 1214 },
        m_iKillNum = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30690,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_RESURRECTION_STONE"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_SANDER_KARUSO_VILLAGE_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_iDungeonClearCount = 1,
        m_bCheckResurrectionStone = False,
        m_iDieCount = 0,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30691,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_PLAYER_WITH_DUNGEON_CLEAR"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_NONE"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_iDungeonClearTime = 0,
        m_iDungeonClearCount = 1,
        m_iPlayerCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30692,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_DAMAGE"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_SANDER_KARUSO_VILLAGE_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_iDungeonDamage = 30,
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30693,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_TOGETHER_MISSION_CLEAR"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30700,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_DAMAGE"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_SANDER_BEHIMOSS_HEART_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_iDungeonDamage = 1,
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30701,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_RANK"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_eDungeonID = DUNGEON_ID["DI_SANDER_BEHIMOSS_HEART_NORMAL"],
        m_cDifficulty = DIFFICULTY_LEVEL["DL_EXPERT"],
        m_bUpperDifficulty = True,
        m_eDungeonRank = 8,
        m_iDungeonClearCount = 1,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 30702,
    m_wstrDescription = "",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_TOGETHER_MISSION_CLEAR"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iDungeonClearCount = 10,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 35000,
    m_wstrDescription = "Use the item, Looking for Guild",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 90000016,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 35001,
    m_wstrDescription = "Complete the quest ‘Saving Private Aiden'",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 90000019,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 35002,
    m_wstrDescription = "Complete the quest ‘Saving Corporal Anthony’",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 90000020,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 35003,
    m_wstrDescription = "Complete the quest ‘Saving Sergeant Arun’",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 90000021,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 35004,
    m_wstrDescription = "Acquire Adel’s bronze, silver, and gold medal",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 90000022,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 35005,
    m_wstrDescription = "Connect to the game (One title per character only)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 90000060,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 35006,
    m_wstrDescription = "Connect to the game (One title per character only)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 90000061,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 35007,
    m_wstrDescription = "Use Warrior of Velder Title",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 90000101,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 35008,
    m_wstrDescription = "Use the exclusive Anime Expo Coupon for Attendees",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 90000135,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 35009,
    m_wstrDescription = "Use the item, Best Guild Item",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 90000204,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 35010,
    m_wstrDescription = "Use the item, Best of the Best Guild Item",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 90000205,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 35012,
    m_wstrDescription = "Use the item, ‘Likes for Elsword(10K)‘ item",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 90000231,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 35013,
    m_wstrDescription = "Use the item, ‘Likes for Elsword(12K)‘ item",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 90000232,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 35014,
    m_wstrDescription = "Use the item, ‘Likes for Elsword(14K)‘ item",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 90000233,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 35015,
    m_wstrDescription = "Use the item, ‘Likes for Elsword(15K)‘ item",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 90000234,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 35016,
    m_wstrDescription = "Use the title to celebrate Thanksgiving",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 90000331,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 35017,
    m_wstrDescription = "Use the title to celebrate Thanksgiving",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 90000371,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 35018,
    m_wstrDescription = "Use the title to celebrate Thanksgiving",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 90000372,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 35019,
    m_wstrDescription = "Use the title to celebrate Thanksgiving",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 90000373,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 35020,
    m_wstrDescription = "Use the title to celebrate Thanksgiving",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 90000374,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 35021,
    m_wstrDescription = "Equip the Queen Nasod Title",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 90000375,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 35030,
    m_wstrDescription = "Use the Happy New Year’s Title (30 Days)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 90000470,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 35031,
    m_wstrDescription = "Use the Happy New Year’s Title (20 Days)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 90000471,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 35032,
    m_wstrDescription = "Use the Happy New Year’s Title (10 Days)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 90000472,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 35040,
    m_wstrDescription = "Equip the Change Your Password Promotional Title (30 Days)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 90000565,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 35060,
    m_wstrDescription = "Use the Support Hamel Title (30 Days)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 90000700,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 35070,
    m_wstrDescription = "Use the Hamel's White Wolf Title (30 Days)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 90000730,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 35080,
    m_wstrDescription = "Use the Returner Title (30 Days)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 90000754,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 35090,
    m_wstrDescription = "Master of Hamel Monsters Title (30 Days)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 90001108,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 35100,
    m_wstrDescription = "Use this ‘Painkiller’ Title.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 90001320,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 35110,
    m_wstrDescription = "Clear Conquer the Secret Dungeon-Wally’s Underground Laboratory once",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 90001351,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 35120,
    m_wstrDescription = "Clear Conquer the Secret Dungeon-Dragon Nest: Abyss once",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 90001352,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 35130,
    m_wstrDescription = "Clear Conquer the Secret Dungeon-Transporting Tunnel: CA once",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 90001353,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 35140,
    m_wstrDescription = "Clear Conquer the Secret Dungeon-Velder’s Hallucination once",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 90001354,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 35150,
    m_wstrDescription = "Use GREENLIGHT ELSWORD (B&W) Title (14 days)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 90001420,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 35160,
    m_wstrDescription = "Use GREENLIGHT ELSWORD (Bronze) Title (14 days)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 90001421,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 35170,
    m_wstrDescription = "Use GREENLIGHT ELSWORD (Silver) Title",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 90001422,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 35180,
    m_wstrDescription = "Use GREENLIGHT ELSWORD (Gold) Title",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 90001423,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 35190,
    m_wstrDescription = "Use the four-leaf clover (1 Day)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 90001866,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 35200,
    m_wstrDescription = "Use Trial of Elsword",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 90002160,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 35210,
    m_wstrDescription = "Obtained by your first login to Elsword as a new Steam user.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 35220,
    m_wstrDescription = "Use Adventurer's from an Exisiting World title.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 90002240,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 35230,
    m_wstrDescription = "Obtained by your first login to Elsword as a new Ignite user.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 40000,
    m_wstrDescription = "[벨더 2개던전]새로운 불청객",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 85000426,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 40001,
    m_wstrDescription = "[EU] 새로운 모험가",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 85000481,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 40010,
    m_wstrDescription = "[EU] 새로운 모험가",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iItemID = 85000481,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 40020,
    m_wstrDescription = "[EU] 새로운 모험가",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 85000481,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 40030,
    m_wstrDescription = "공간의 군주 30일권 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 85000872,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 40040,
    m_wstrDescription = "공식 응원단 칭호 30일권 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 85000872,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 40045,
    m_wstrDescription = "백부장(7일) 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 85001600,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 40050,
    m_wstrDescription = "테스트",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 85001100,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 40060,
    m_wstrDescription = "Born to Blood(7일) 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 85001601,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 40070,
    m_wstrDescription = "고통을 이겨낸 자(7일) 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 85001602,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 40080,
    m_wstrDescription = "Use the ‘Sword of Vitality’ Item (15 Days)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 85001854,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 40090,
    m_wstrDescription = "Use the ‘Sword of Destruction’ Item (15 Days)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 85001855,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 40100,
    m_wstrDescription = "Use the 'Power of Splendor (2days)' item",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 85001949,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 40110,
    m_wstrDescription = "Use the 'Magic of Splendor (2days)' item",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 85001950,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 40120,
    m_wstrDescription = "Use the 'Sword of Splendor (2days)' item",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 85001951,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 40130,
    m_wstrDescription = "Receive this when you connect to the game.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 40140,
    m_wstrDescription = "Use the Returning Heroes item (15 days)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 85002600,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 40150,
    m_wstrDescription = "Use the The Faithful Adventurer item (1 days)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 85002602,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 40160,
    m_wstrDescription = "Use Rookie Halloween Fashion Designer Title Item (15 Days)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 85003050,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 40170,
    m_wstrDescription = "Use Legendary Halloween Fashion Designer Title Item (15 Days)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 85003051,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 50000,
    m_wstrDescription = "귀족솔로 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 80000172,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 50001,
    m_wstrDescription = "학원스타 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 80000191,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 50002,
    m_wstrDescription = "앤의 선물 퀘스트 클리어",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_QUEST"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iQuestID = 11010,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 50010,
    m_wstrDescription = "앤과 대화하기",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_QUEST"],
    m_bAutomaticDescription = True,
    m_ClearCondition = 
    {
        m_iQuestID = 11010,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 50020,
    m_wstrDescription = "용쟁호투 (칭호) 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 84000540,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 50021,
    m_wstrDescription = "용쟁호투 (30일) 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 84000541,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 50030,
    m_wstrDescription = "'특별한 나소드의 여왕' 칭호 7일권 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 84000790,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 50031,
    m_wstrDescription = "'특별한 나소드의 여왕' 칭호 15일권 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 84000791,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 50032,
    m_wstrDescription = "'특별한 나소드의 여왕' 칭호 30일권 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 84000792,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 50040,
    m_wstrDescription = "길드 대전 응원 칭호 1일권 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 80000680,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 50041,
    m_wstrDescription = "엘소드 길드 대전 시즌 1 준우승 길드 참가유저에게 지급되는 칭호",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 50042,
    m_wstrDescription = "엘소드 길드 대전 시즌 1 우승 길드 참가유저에게 지급되는 칭호",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 50050,
    m_wstrDescription = "청명절의 가호 1일권 칭호 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 80000702,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 50060,
    m_wstrDescription = "하멜을 지원하라 30일권 칭호 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 80001290,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 50070,
    m_wstrDescription = "엘소드의 악수(좌) 1일권 칭호 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 80001321,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 50071,
    m_wstrDescription = "엘소드의 악수(우) 1일권 칭호 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 80001322,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 50080,
    m_wstrDescription = "고독칠석(남) 1일권 칭호 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 80001482,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 50081,
    m_wstrDescription = "고독칠석(여) 1일권 칭호 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 80001483,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 50082,
    m_wstrDescription = "낭만칠석 1일권 칭호 아이템 사용",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 80001496,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 100000,
    m_wstrDescription = "Acquire the Elympics (15 days) item",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 200000011,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 100010,
    m_wstrDescription = "Access the game to obtain it.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 100100,
    m_wstrDescription = "Use the Heart of Passion (M) Title.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 210000210,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 100110,
    m_wstrDescription = "Use the Heart of Story (M) Title.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 210000211,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 100120,
    m_wstrDescription = "Use the Heart of Purity (M) Title.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 210000212,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 100130,
    m_wstrDescription = "Use the Heart of Passion (F) Title.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 210000213,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 100140,
    m_wstrDescription = "Use the Heart of Story (F) Title.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 210000214,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 100150,
    m_wstrDescription = "Use the Heart of Purity (F) Title.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 210000215,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 100160,
    m_wstrDescription = "Use the Sad Lonely Heart Title.",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 210000216,
    },
}

TitleManager:AddSubTitleMissionInfo_LUA
{
    m_iID = 100170,
    m_wstrDescription = "Use the item, World War (8 days)",
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_bAutomaticDescription = False,
    m_ClearCondition = 
    {
        m_iItemID = 60008016,
    },
}

