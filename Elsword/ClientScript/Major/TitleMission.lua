-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_QUEST"],
    m_MissionName = "앤의 선물",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10,
    },

    m_sPeriod = 0,
    m_iTitleID = 10,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 20,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_MissionName = "엘 수색대",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        20,
        21,
        22,
    },

    m_sPeriod = 0,
    m_iTitleID = 20,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "뽀루 슬레이어",
    m_iConditionLv = 2,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30,
        31,
        32,
    },

    m_sPeriod = 0,
    m_iTitleID = 30,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 40,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "원숭이 사냥꾼",
    m_iConditionLv = 3,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        43,
    },

    m_sPeriod = 0,
    m_iTitleID = 40,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 50,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_RANK"],
    m_MissionName = "어둠을 밝힌 자",
    m_iConditionLv = 8,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        50,
    },

    m_sPeriod = 0,
    m_iTitleID = 50,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 80,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "행운의 징표",
    m_iConditionLv = 15,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        80,
    },

    m_sPeriod = 0,
    m_iTitleID = 80,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 90,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "불의 친화",
    m_iConditionLv = 15,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        90,
        91,
    },

    m_sPeriod = 0,
    m_iTitleID = 90,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 100,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_RANK"],
    m_MissionName = "작업 반장",
    m_iConditionLv = 18,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30003,

    m_SubMission = 
    {
        100,
    },

    m_sPeriod = 0,
    m_iTitleID = 100,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 130,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "어둠의 추적자",
    m_iConditionLv = 15,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30002,

    m_SubMission = 
    {
        130,
    },

    m_sPeriod = 0,
    m_iTitleID = 130,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 140,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_QUEST"],
    m_MissionName = "도적 토벌대",
    m_iConditionLv = 9,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30004,

    m_SubMission = 
    {
        140,
    },

    m_sPeriod = 0,
    m_iTitleID = 140,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 150,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "배트 슬레이어",
    m_iConditionLv = 8,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        150,
    },

    m_sPeriod = 0,
    m_iTitleID = 150,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 160,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_TIME"],
    m_MissionName = "혁명의 영웅",
    m_iConditionLv = 15,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30006,

    m_SubMission = 
    {
        160,
    },

    m_sPeriod = 0,
    m_iTitleID = 160,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 170,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "나소드 파괴자",
    m_iConditionLv = 18,
    m_eConditionUnitType = UNIT_TYPE["UT_ELSWORD"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        170,
        171,
        172,
    },

    m_sPeriod = 0,
    m_iTitleID = 170,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 171,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "나소드 파괴자",
    m_iConditionLv = 18,
    m_eConditionUnitType = UNIT_TYPE["UT_ARME"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        170,
        171,
        172,
    },

    m_sPeriod = 0,
    m_iTitleID = 171,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 172,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "나소드 파괴자",
    m_iConditionLv = 18,
    m_eConditionUnitType = UNIT_TYPE["UT_LIRE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        170,
        171,
        172,
    },

    m_sPeriod = 0,
    m_iTitleID = 172,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 173,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "나소드 파괴자",
    m_iConditionLv = 18,
    m_eConditionUnitType = UNIT_TYPE["UT_RAVEN"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        170,
        171,
        172,
    },

    m_sPeriod = 0,
    m_iTitleID = 173,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 174,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "나소드 파괴자",
    m_iConditionLv = 18,
    m_eConditionUnitType = UNIT_TYPE["UT_CHUNG"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        170,
        171,
        172,
    },

    m_sPeriod = 0,
    m_iTitleID = 174,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 180,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_QUEST"],
    m_MissionName = "페이타의 구원자",
    m_iConditionLv = 22,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30007,

    m_SubMission = 
    {
        180,
    },

    m_sPeriod = 0,
    m_iTitleID = 180,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 190,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_DAMAGE"],
    m_MissionName = "역전의 용사",
    m_iConditionLv = 29,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30008,

    m_SubMission = 
    {
        190,
    },

    m_sPeriod = 0,
    m_iTitleID = 190,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 200,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "환경 미화원",
    m_iConditionLv = 32,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        200,
        201,
    },

    m_sPeriod = 0,
    m_iTitleID = 200,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 210,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_MissionName = "퐁고족의 영웅",
    m_iConditionLv = 35,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30009,

    m_SubMission = 
    {
        210,
    },

    m_sPeriod = 0,
    m_iTitleID = 210,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 220,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_TIME"],
    m_MissionName = "신속의 영웅",
    m_iConditionLv = 35,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30010,

    m_SubMission = 
    {
        220,
    },

    m_sPeriod = 0,
    m_iTitleID = 220,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 230,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "강인한 영혼",
    m_iConditionLv = 28,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30012,

    m_SubMission = 
    {
        230,
        231,
    },

    m_sPeriod = 0,
    m_iTitleID = 230,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 240,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "난폭한 정원사",
    m_iConditionLv = 31,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30013,

    m_SubMission = 
    {
        240,
    },

    m_sPeriod = 0,
    m_iTitleID = 240,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 250,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "데몬 슬레이어",
    m_iConditionLv = 38,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30014,

    m_SubMission = 
    {
        250,
        251,
        252,
        253,
        254,
    },

    m_sPeriod = 0,
    m_iTitleID = 250,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 270,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_TIME"],
    m_MissionName = "비밀 파괴자",
    m_iConditionLv = 35,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        270,
        271,
        272,
        275,
    },

    m_sPeriod = 0,
    m_iTitleID = 270,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 280,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_MissionName = "나소드 이터",
    m_iConditionLv = 40,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30020,

    m_SubMission = 
    {
        280,
    },

    m_sPeriod = 0,
    m_iTitleID = 280,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 290,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_MissionName = "드래곤 슬레이어",
    m_iConditionLv = 40,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30030,

    m_SubMission = 
    {
        290,
    },

    m_sPeriod = 0,
    m_iTitleID = 290,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 300,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_MissionName = "퓨리파이어",
    m_iConditionLv = 40,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30040,

    m_SubMission = 
    {
        300,
    },

    m_sPeriod = 0,
    m_iTitleID = 300,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 310,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "글리터 토벌대",
    m_iConditionLv = 40,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30050,

    m_SubMission = 
    {
        310,
        311,
        312,
        313,
    },

    m_sPeriod = 0,
    m_iTitleID = 310,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 320,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "승차감 최악",
    m_iConditionLv = 35,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30060,

    m_SubMission = 
    {
        320,
        321,
    },

    m_sPeriod = 0,
    m_iTitleID = 320,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 330,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "됐다! 도망가자~",
    m_iConditionLv = 40,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30070,

    m_SubMission = 
    {
        330,
        331,
        332,
    },

    m_sPeriod = 0,
    m_iTitleID = 330,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 340,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_RANK"],
    m_MissionName = "왕국을 수호하라!",
    m_iConditionLv = 40,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30080,

    m_SubMission = 
    {
        340,
        341,
        342,
        343,
        344,
    },

    m_sPeriod = 0,
    m_iTitleID = 340,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 350,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "다크엘프 사냥꾼",
    m_iConditionLv = 40,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30090,

    m_SubMission = 
    {
        350,
        351,
        352,
        353,
    },

    m_sPeriod = 0,
    m_iTitleID = 350,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 360,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "막지마! 비키라구!",
    m_iConditionLv = 40,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30100,

    m_SubMission = 
    {
        360,
        361,
        362,
        363,
        364,
    },

    m_sPeriod = 0,
    m_iTitleID = 360,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 370,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "기물 파괴자",
    m_iConditionLv = 40,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30110,

    m_SubMission = 
    {
        370,
        371,
        372,
    },

    m_sPeriod = 0,
    m_iTitleID = 370,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 380,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "팔찌 강탈자",
    m_iConditionLv = 35,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30120,

    m_SubMission = 
    {
        380,
    },

    m_sPeriod = 0,
    m_iTitleID = 380,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 390,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_TIME"],
    m_MissionName = "속도 쾌감!",
    m_iConditionLv = 40,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30130,

    m_SubMission = 
    {
        390,
        391,
        392,
        393,
    },

    m_sPeriod = 0,
    m_iTitleID = 390,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 400,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "글리터 종결자",
    m_iConditionLv = 35,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30140,

    m_SubMission = 
    {
        400,
        401,
        402,
        403,
        404,
    },

    m_sPeriod = 0,
    m_iTitleID = 400,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 410,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "생선이 좋아 >ㅁ<!",
    m_iConditionLv = 50,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30150,

    m_SubMission = 
    {
        410,
        411,
        412,
        413,
        414,
    },

    m_sPeriod = 0,
    m_iTitleID = 410,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 420,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "아류 종결자",
    m_iConditionLv = 50,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30160,

    m_SubMission = 
    {
        420,
        421,
    },

    m_sPeriod = 0,
    m_iTitleID = 420,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 430,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_RANK"],
    m_MissionName = "벨더의 전령사",
    m_iConditionLv = 45,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30170,

    m_SubMission = 
    {
        430,
        431,
        432,
    },

    m_sPeriod = 0,
    m_iTitleID = 430,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 440,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "잡초 제거반",
    m_iConditionLv = 45,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30180,

    m_SubMission = 
    {
        440,
    },

    m_sPeriod = 0,
    m_iTitleID = 440,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 450,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "골렘 브레이커",
    m_iConditionLv = 50,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30190,

    m_SubMission = 
    {
        450,
        451,
        452,
    },

    m_sPeriod = 0,
    m_iTitleID = 450,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 460,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_MissionName = "루렌시아의 풍류랑",
    m_iConditionLv = 45,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30200,

    m_SubMission = 
    {
        460,
        461,
        462,
    },

    m_sPeriod = 0,
    m_iTitleID = 460,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 470,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "끼끼 낌끼끼~",
    m_iConditionLv = 45,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30210,

    m_SubMission = 
    {
        470,
    },

    m_sPeriod = 0,
    m_iTitleID = 470,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 480,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_MissionName = "소문난 항해사",
    m_iConditionLv = 45,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30220,

    m_SubMission = 
    {
        480,
    },

    m_sPeriod = 0,
    m_iTitleID = 480,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 495,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "기사단 구조대",
    m_iConditionLv = 50,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30350,

    m_SubMission = 
    {
        495,
    },

    m_sPeriod = 0,
    m_iTitleID = 495,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 505,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "극지의 거미",
    m_iConditionLv = 50,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30360,

    m_SubMission = 
    {
        505,
        506,
        507,
    },

    m_sPeriod = 0,
    m_iTitleID = 505,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 515,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "프리즌 브레이크",
    m_iConditionLv = 50,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30370,

    m_SubMission = 
    {
        515,
    },

    m_sPeriod = 0,
    m_iTitleID = 515,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 525,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "쓸만한 먹이",
    m_iConditionLv = 50,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30380,

    m_SubMission = 
    {
        525,
    },

    m_sPeriod = 0,
    m_iTitleID = 525,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 535,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "프리미엄 우후훗",
    m_iConditionLv = 50,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30390,

    m_SubMission = 
    {
        535,
        536,
    },

    m_sPeriod = 0,
    m_iTitleID = 535,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 545,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "심해 잠수부",
    m_iConditionLv = 50,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30400,

    m_SubMission = 
    {
        545,
    },

    m_sPeriod = 0,
    m_iTitleID = 545,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 555,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_TIME"],
    m_MissionName = "하멜의 물개",
    m_iConditionLv = 50,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30410,

    m_SubMission = 
    {
        555,
        556,
    },

    m_sPeriod = 0,
    m_iTitleID = 555,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 565,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "얼음 조각사",
    m_iConditionLv = 50,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30420,

    m_SubMission = 
    {
        565,
        566,
        567,
        568,
        569,
    },

    m_sPeriod = 0,
    m_iTitleID = 565,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 575,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_RANK"],
    m_MissionName = "그것은 SS",
    m_iConditionLv = 50,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30430,

    m_SubMission = 
    {
        575,
        576,
        577,
        578,
        579,
    },

    m_sPeriod = 0,
    m_iTitleID = 575,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 585,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "파워 오브 스플렌더",
    m_iConditionLv = 50,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30440,

    m_SubMission = 
    {
        585,
        586,
        587,
    },

    m_sPeriod = 0,
    m_iTitleID = 585,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 595,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "매직 오브 스플렌더",
    m_iConditionLv = 50,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30450,

    m_SubMission = 
    {
        595,
        596,
        597,
        598,
        599,
    },

    m_sPeriod = 0,
    m_iTitleID = 595,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 605,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "소드 오브 스플렌더",
    m_iConditionLv = 50,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30460,

    m_SubMission = 
    {
        605,
        606,
        608,
        609,
        607,
    },

    m_sPeriod = 0,
    m_iTitleID = 605,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 610,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_MissionName = "일루전 브레이커",
    m_iConditionLv = 40,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30570,

    m_SubMission = 
    {
        610,
    },

    m_sPeriod = 0,
    m_iTitleID = 610,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 611,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "샌더스철",
    m_iConditionLv = 60,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30580,

    m_SubMission = 
    {
        611,
    },

    m_sPeriod = 0,
    m_iTitleID = 611,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 612,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_RANK"],
    m_MissionName = "밴드 오브 트락",
    m_iConditionLv = 60,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30590,

    m_SubMission = 
    {
        612,
    },

    m_sPeriod = 0,
    m_iTitleID = 612,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 613,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "3000!",
    m_iConditionLv = 60,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30600,

    m_SubMission = 
    {
        613,
    },

    m_sPeriod = 0,
    m_iTitleID = 613,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 614,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_RANK"],
    m_MissionName = "하피하피",
    m_iConditionLv = 60,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30610,

    m_SubMission = 
    {
        614,
    },

    m_sPeriod = 0,
    m_iTitleID = 614,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 615,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_TIME"],
    m_MissionName = "강철의 날개",
    m_iConditionLv = 60,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30620,

    m_SubMission = 
    {
        615,
    },

    m_sPeriod = 0,
    m_iTitleID = 615,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 620,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_TIME"],
    m_MissionName = "바람의 자손",
    m_iConditionLv = 60,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30630,

    m_SubMission = 
    {
        620,
        621,
        622,
    },

    m_sPeriod = 0,
    m_iTitleID = 620,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 630,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "폭탄 적재 완료",
    m_iConditionLv = 60,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30640,

    m_SubMission = 
    {
        630,
    },

    m_sPeriod = 0,
    m_iTitleID = 630,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 640,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_MissionName = "홀로서기",
    m_iConditionLv = 60,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30650,

    m_SubMission = 
    {
        640,
        641,
        642,
        643,
    },

    m_sPeriod = 0,
    m_iTitleID = 640,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 650,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_MissionName = "다이하드",
    m_iConditionLv = 60,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30660,

    m_SubMission = 
    {
        650,
    },

    m_sPeriod = 0,
    m_iTitleID = 650,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 660,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "7전 8기",
    m_iConditionLv = 60,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30670,

    m_SubMission = 
    {
        660,
    },

    m_sPeriod = 0,
    m_iTitleID = 660,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 670,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "폭풍의 전사",
    m_iConditionLv = 60,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30680,

    m_SubMission = 
    {
        670,
    },

    m_sPeriod = 0,
    m_iTitleID = 670,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 680,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_MissionName = "모래바람의 악령",
    m_iConditionLv = 60,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30690,

    m_SubMission = 
    {
        680,
        681,
        682,
        683,
        684,
    },

    m_sPeriod = 0,
    m_iTitleID = 680,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 690,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "사신",
    m_iConditionLv = 60,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30700,

    m_SubMission = 
    {
        690,
        691,
        692,
    },

    m_sPeriod = 0,
    m_iTitleID = 690,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5000,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5000,
    },

    m_sPeriod = 0,
    m_iTitleID = 5000,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5010,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5010,
    },

    m_sPeriod = 0,
    m_iTitleID = 5010,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5020,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5020,
    },

    m_sPeriod = 30,
    m_iTitleID = 5020,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5030,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5030,
    },

    m_sPeriod = 30,
    m_iTitleID = 5030,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5040,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5040,
    },

    m_sPeriod = 0,
    m_iTitleID = 5040,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5050,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5501,
    },

    m_sPeriod = 0,
    m_iTitleID = 5500,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5060,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5506,
    },

    m_sPeriod = 0,
    m_iTitleID = 5060,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5070,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_DAMAGE"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5070,
    },

    m_sPeriod = 30,
    m_iTitleID = 5070,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5080,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5080,
    },

    m_sPeriod = 0,
    m_iTitleID = 5080,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5090,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
    },

    m_sPeriod = 30,
    m_iTitleID = 5090,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5100,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5100,
    },

    m_sPeriod = 1,
    m_iTitleID = 5100,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5101,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5101,
    },

    m_sPeriod = 7,
    m_iTitleID = 5101,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5102,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5102,
    },

    m_sPeriod = 15,
    m_iTitleID = 5102,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5103,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5103,
    },

    m_sPeriod = 15,
    m_iTitleID = 5103,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5104,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5104,
    },

    m_sPeriod = 30,
    m_iTitleID = 5104,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5105,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5105,
    },

    m_sPeriod = 0,
    m_iTitleID = 5105,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5106,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5106,
    },

    m_sPeriod = 1,
    m_iTitleID = 5106,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5107,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5106,
    },

    m_sPeriod = 300,
    m_iTitleID = 5107,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5108,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5108,
    },

    m_sPeriod = 14,
    m_iTitleID = 5108,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5109,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5109,
    },

    m_sPeriod = 14,
    m_iTitleID = 5109,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5110,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5110,
    },

    m_sPeriod = 30,
    m_iTitleID = 5110,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5111,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5111,
    },

    m_sPeriod = 30,
    m_iTitleID = 5111,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5112,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5112,
    },

    m_sPeriod = 100,
    m_iTitleID = 5112,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5113,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5113,
    },

    m_sPeriod = 100,
    m_iTitleID = 5113,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5114,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5114,
    },

    m_sPeriod = 7,
    m_iTitleID = 5114,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5115,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5115,
    },

    m_sPeriod = 30,
    m_iTitleID = 5115,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5116,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5116,
    },

    m_sPeriod = 15,
    m_iTitleID = 5116,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5117,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5117,
    },

    m_sPeriod = 0,
    m_iTitleID = 5117,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5118,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5118,
    },

    m_sPeriod = 0,
    m_iTitleID = 5118,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5120,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5120,
    },

    m_sPeriod = 7,
    m_iTitleID = 5120,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5121,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5121,
    },

    m_sPeriod = 30,
    m_iTitleID = 5121,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5122,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5122,
    },

    m_sPeriod = 0,
    m_iTitleID = 5122,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5130,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5130,
    },

    m_sPeriod = 100,
    m_iTitleID = 5130,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5140,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5140,
    },

    m_sPeriod = 0,
    m_iTitleID = 5140,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5150,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5150,
    },

    m_sPeriod = 30,
    m_iTitleID = 5150,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5160,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5160,
    },

    m_sPeriod = 0,
    m_iTitleID = 5160,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5170,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5170,
    },

    m_sPeriod = 0,
    m_iTitleID = 5170,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5180,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 0,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5180,
    },

    m_sPeriod = 1,
    m_iTitleID = 5180,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5190,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 0,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5190,
    },

    m_sPeriod = 1,
    m_iTitleID = 5190,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5200,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 0,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5200,
    },

    m_sPeriod = 7,
    m_iTitleID = 5200,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5210,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5210,
    },

    m_sPeriod = 0,
    m_iTitleID = 5210,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5220,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5220,
    },

    m_sPeriod = 15,
    m_iTitleID = 5220,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5230,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5230,
    },

    m_sPeriod = 30,
    m_iTitleID = 5230,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5231,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5231,
    },

    m_sPeriod = 15,
    m_iTitleID = 5231,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5240,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5240,
    },

    m_sPeriod = 0,
    m_iTitleID = 5240,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5250,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5250,
    },

    m_sPeriod = 15,
    m_iTitleID = 5250,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5260,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5260,
    },

    m_sPeriod = 0,
    m_iTitleID = 5260,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5270,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5270,
    },

    m_sPeriod = 0,
    m_iTitleID = 5270,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5280,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5280,
    },

    m_sPeriod = 0,
    m_iTitleID = 5280,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5290,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5290,
    },

    m_sPeriod = 15,
    m_iTitleID = 5290,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5300,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5300,
    },

    m_sPeriod = 0,
    m_iTitleID = 5300,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5310,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5310,
    },

    m_sPeriod = 0,
    m_iTitleID = 5310,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5320,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5320,
    },

    m_sPeriod = 0,
    m_iTitleID = 5320,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5330,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5330,
    },

    m_sPeriod = 0,
    m_iTitleID = 5330,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5340,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5340,
    },

    m_sPeriod = 0,
    m_iTitleID = 5340,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5350,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5350,
    },

    m_sPeriod = 0,
    m_iTitleID = 5350,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5360,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5360,
    },

    m_sPeriod = 0,
    m_iTitleID = 5360,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5370,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 0,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5370,
    },

    m_sPeriod = 0,
    m_iTitleID = 5370,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5500,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5500,
    },

    m_sPeriod = 0,
    m_iTitleID = 5500,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5501,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5501,
    },

    m_sPeriod = 0,
    m_iTitleID = 5500,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5502,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5502,
    },

    m_sPeriod = 0,
    m_iTitleID = 5502,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5503,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_QUEST"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5503,
    },

    m_sPeriod = 30,
    m_iTitleID = 5503,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5504,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "크로우 용병단(1일)",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5504,
    },

    m_sPeriod = 14,
    m_iTitleID = 5504,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5505,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5505,
    },

    m_sPeriod = 30,
    m_iTitleID = 5505,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5506,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
    },

    m_sPeriod = 7,
    m_iTitleID = 5506,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5507,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
    },

    m_sPeriod = 0,
    m_iTitleID = 5507,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5508,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5508,
    },

    m_sPeriod = 0,
    m_iTitleID = 5507,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5509,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5509,
    },

    m_sPeriod = 0,
    m_iTitleID = 5507,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5510,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5509,
    },

    m_sPeriod = 0,
    m_iTitleID = 5510,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5511,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5511,
    },

    m_sPeriod = 0,
    m_iTitleID = 5511,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5512,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5512,
    },

    m_sPeriod = 0,
    m_iTitleID = 5512,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5513,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5513,
    },

    m_sPeriod = 0,
    m_iTitleID = 5513,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5514,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "QuizQuiz",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5514,
    },

    m_sPeriod = 30,
    m_iTitleID = 5514,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5515,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5515,
    },

    m_sPeriod = 0,
    m_iTitleID = 5514,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5516,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5515,
    },

    m_sPeriod = 0,
    m_iTitleID = 5514,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5517,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5517,
    },

    m_sPeriod = 0,
    m_iTitleID = 20095,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5518,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 0,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5518,
    },

    m_sPeriod = 30,
    m_iTitleID = 10210,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5519,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_QUEST"],
    m_MissionName = "",
    m_iConditionLv = 0,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5519,
    },

    m_sPeriod = 1,
    m_iTitleID = 10755,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5520,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_QUEST"],
    m_MissionName = "",
    m_iConditionLv = 0,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5520,
    },

    m_sPeriod = 1,
    m_iTitleID = 10750,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5521,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5521,
    },

    m_sPeriod = 0,
    m_iTitleID = 5521,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5522,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5522,
    },

    m_sPeriod = 0,
    m_iTitleID = 5522,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5530,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5530,
    },

    m_sPeriod = 0,
    m_iTitleID = 5530,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5540,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5540,
    },

    m_sPeriod = 0,
    m_iTitleID = 5540,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5550,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5550,
    },

    m_sPeriod = 0,
    m_iTitleID = 5550,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5560,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5560,
    },

    m_sPeriod = 0,
    m_iTitleID = 5560,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5570,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5570,
    },

    m_sPeriod = 0,
    m_iTitleID = 5560,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5580,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5580,
    },

    m_sPeriod = 0,
    m_iTitleID = 5580,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5590,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5580,
    },

    m_sPeriod = 0,
    m_iTitleID = 5590,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 5600,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 0,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5600,
    },

    m_sPeriod = 0,
    m_iTitleID = 5600,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10000,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10000,
    },

    m_sPeriod = 0,
    m_iTitleID = 10000,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10010,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10010,
    },

    m_sPeriod = 0,
    m_iTitleID = 10010,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10020,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10020,
    },

    m_sPeriod = 0,
    m_iTitleID = 10020,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10030,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10030,
    },

    m_sPeriod = 0,
    m_iTitleID = 10030,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10040,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10040,
    },

    m_sPeriod = 0,
    m_iTitleID = 10040,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10050,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10050,
    },

    m_sPeriod = 3,
    m_iTitleID = 10050,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10060,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10060,
    },

    m_sPeriod = 300,
    m_iTitleID = 10060,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10070,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10070,
    },

    m_sPeriod = 300,
    m_iTitleID = 10070,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10080,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "펌킨 킹",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10080,
    },

    m_sPeriod = 30,
    m_iTitleID = 10080,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10090,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10090,
    },

    m_sPeriod = 30,
    m_iTitleID = 10090,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10100,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_QUEST"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10100,
    },

    m_sPeriod = 30,
    m_iTitleID = 10100,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10110,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10110,
    },

    m_sPeriod = 30,
    m_iTitleID = 10110,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10120,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10120,
    },

    m_sPeriod = 30,
    m_iTitleID = 10120,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10130,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10130,
    },

    m_sPeriod = 0,
    m_iTitleID = 10130,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10140,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "냉기의 군주",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10140,
    },

    m_sPeriod = 0,
    m_iTitleID = 10140,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10150,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10150,
    },

    m_sPeriod = 3,
    m_iTitleID = 10150,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10160,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10160,
    },

    m_sPeriod = 0,
    m_iTitleID = 10160,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10170,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10170,
    },

    m_sPeriod = 0,
    m_iTitleID = 10170,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10180,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10180,
    },

    m_sPeriod = 5,
    m_iTitleID = 10180,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10190,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10190,
    },

    m_sPeriod = 0,
    m_iTitleID = 10190,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10200,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10200,
    },

    m_sPeriod = 0,
    m_iTitleID = 10200,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10210,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "불멸의 투지",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10210,
    },

    m_sPeriod = 0,
    m_iTitleID = 10210,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10220,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10220,
    },

    m_sPeriod = 30,
    m_iTitleID = 10220,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10230,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "시련의 지배자-윌리엄-",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10230,
    },

    m_sPeriod = 1,
    m_iTitleID = 10230,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10240,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10240,
    },

    m_sPeriod = 30,
    m_iTitleID = 10240,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10250,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10250,
    },

    m_sPeriod = 0,
    m_iTitleID = 10250,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10260,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "여명의 군주",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10260,
    },

    m_sPeriod = 0,
    m_iTitleID = 10260,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10270,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10270,
    },

    m_sPeriod = 0,
    m_iTitleID = 10270,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10280,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10280,
    },

    m_sPeriod = 1,
    m_iTitleID = 10280,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10290,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10290,
    },

    m_sPeriod = 1,
    m_iTitleID = 10290,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10300,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10300,
    },

    m_sPeriod = 1,
    m_iTitleID = 10300,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10310,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "엘리오스의 개척자(10일)",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10310,
    },

    m_sPeriod = 10,
    m_iTitleID = 10310,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10320,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10320,
    },

    m_sPeriod = 1,
    m_iTitleID = 10320,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10330,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10330,
    },

    m_sPeriod = 1,
    m_iTitleID = 10330,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10340,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10340,
    },

    m_sPeriod = 1,
    m_iTitleID = 10340,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10350,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "대양의 무법자",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10350,
    },

    m_sPeriod = 0,
    m_iTitleID = 10350,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10360,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10360,
    },

    m_sPeriod = 5,
    m_iTitleID = 10360,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10370,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10370,
    },

    m_sPeriod = 0,
    m_iTitleID = 10370,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10380,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "길드 구해요!",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10380,
    },

    m_sPeriod = 1,
    m_iTitleID = 10380,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10381,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10381,
    },

    m_sPeriod = 0,
    m_iTitleID = 10381,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10390,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
    },

    m_sPeriod = 0,
    m_iTitleID = 10390,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10400,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10400,
    },

    m_sPeriod = 22,
    m_iTitleID = 10400,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10410,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10410,
    },

    m_sPeriod = 0,
    m_iTitleID = 10410,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10420,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
    },

    m_sPeriod = 0,
    m_iTitleID = 10420,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10430,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10430,
    },

    m_sPeriod = 0,
    m_iTitleID = 10430,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10440,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10440,
    },

    m_sPeriod = 15,
    m_iTitleID = 10440,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10450,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10450,
    },

    m_sPeriod = 30,
    m_iTitleID = 10450,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10460,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10460,
    },

    m_sPeriod = 30,
    m_iTitleID = 10460,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10470,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10470,
    },

    m_sPeriod = 0,
    m_iTitleID = 10470,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10480,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "쿨 엘리오스 베이",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10480,
    },

    m_sPeriod = 0,
    m_iTitleID = 10480,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10490,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "열정의 손길",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10490,
    },

    m_sPeriod = 0,
    m_iTitleID = 10490,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10500,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10500,
    },

    m_sPeriod = 100,
    m_iTitleID = 10500,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10510,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "이상한 나라의 엘소드",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10510,
    },

    m_sPeriod = 0,
    m_iTitleID = 10510,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10520,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10520,
    },

    m_sPeriod = 14,
    m_iTitleID = 10520,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10530,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10530,
    },

    m_sPeriod = 0,
    m_iTitleID = 10530,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10540,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "해피 메리 크리스마스",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10540,
    },

    m_sPeriod = 0,
    m_iTitleID = 10540,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10550,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10550,
    },

    m_sPeriod = 0,
    m_iTitleID = 10550,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10560,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10560,
    },

    m_sPeriod = 0,
    m_iTitleID = 10560,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10570,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "선도부장의 위엄",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10570,
    },

    m_sPeriod = 15,
    m_iTitleID = 10570,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10580,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10580,
    },

    m_sPeriod = 0,
    m_iTitleID = 10580,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10590,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10590,
    },

    m_sPeriod = 0,
    m_iTitleID = 10590,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10600,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "따뜻한 평화 전도사",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10600,
    },

    m_sPeriod = 0,
    m_iTitleID = 10600,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10610,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "엘라보르 수호자",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10610,
    },

    m_sPeriod = 0,
    m_iTitleID = 10610,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10620,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10620,
    },

    m_sPeriod = 0,
    m_iTitleID = 10620,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10630,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10630,
    },

    m_sPeriod = 0,
    m_iTitleID = 10630,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10640,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10640,
    },

    m_sPeriod = 0,
    m_iTitleID = 10640,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10650,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10650,
    },

    m_sPeriod = 0,
    m_iTitleID = 10650,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10660,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10660,
    },

    m_sPeriod = 0,
    m_iTitleID = 10660,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10670,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "마족 침공 참전 용사",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10670,
    },

    m_sPeriod = 15,
    m_iTitleID = 10670,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10680,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 35,
    m_eConditionUnitType = UNIT_TYPE["UT_CHUNG"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10680,
    },

    m_sPeriod = 0,
    m_iTitleID = 10680,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10690,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "시공의 방랑자",
    m_iConditionLv = 10,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10690,
    },

    m_sPeriod = 1,
    m_iTitleID = 10690,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10700,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10700,
    },

    m_sPeriod = 0,
    m_iTitleID = 10700,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10710,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "",
    m_iConditionLv = 0,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10710,
    },

    m_sPeriod = 0,
    m_iTitleID = 10710,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10720,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10720,
    },

    m_sPeriod = 0,
    m_iTitleID = 10720,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10730,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10730,
    },

    m_sPeriod = 0,
    m_iTitleID = 10730,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10740,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10740,
    },

    m_sPeriod = 0,
    m_iTitleID = 10740,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10745,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 15,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10745,
    },

    m_sPeriod = 0,
    m_iTitleID = 10745,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10750,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 0,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10750,
    },

    m_sPeriod = 10,
    m_iTitleID = 10750,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10755,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 0,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10755,
    },

    m_sPeriod = 10,
    m_iTitleID = 10755,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10760,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "The Rage (15일)",
    m_iConditionLv = 0,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10760,
    },

    m_sPeriod = 15,
    m_iTitleID = 10760,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10765,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 0,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10765,
    },

    m_sPeriod = 30,
    m_iTitleID = 10765,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10770,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 0,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10770,
    },

    m_sPeriod = 0,
    m_iTitleID = 10770,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10775,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 15,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10775,
    },

    m_sPeriod = 0,
    m_iTitleID = 10775,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10780,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10780,
    },

    m_sPeriod = 0,
    m_iTitleID = 10780,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10790,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10790,
    },

    m_sPeriod = 0,
    m_iTitleID = 10790,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10800,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10800,
    },

    m_sPeriod = 0,
    m_iTitleID = 10800,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10810,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10810,
    },

    m_sPeriod = 0,
    m_iTitleID = 10810,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10820,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10820,
    },

    m_sPeriod = 0,
    m_iTitleID = 10820,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10830,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10830,
    },

    m_sPeriod = 0,
    m_iTitleID = 10830,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10840,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10840,
    },

    m_sPeriod = 0,
    m_iTitleID = 10840,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10850,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10850,
    },

    m_sPeriod = 0,
    m_iTitleID = 10850,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10860,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10860,
    },

    m_sPeriod = 0,
    m_iTitleID = 10860,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10870,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10870,
    },

    m_sPeriod = 0,
    m_iTitleID = 10870,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10880,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10880,
    },

    m_sPeriod = 0,
    m_iTitleID = 10880,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10890,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10890,
    },

    m_sPeriod = 0,
    m_iTitleID = 10890,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10900,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10900,
    },

    m_sPeriod = 0,
    m_iTitleID = 10900,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10910,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10910,
    },

    m_sPeriod = 0,
    m_iTitleID = 10910,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10920,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10920,
    },

    m_sPeriod = 0,
    m_iTitleID = 10920,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10930,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10930,
    },

    m_sPeriod = 0,
    m_iTitleID = 10930,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10940,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10940,
    },

    m_sPeriod = 0,
    m_iTitleID = 10940,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10950,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10950,
    },

    m_sPeriod = 0,
    m_iTitleID = 10950,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10960,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10960,
    },

    m_sPeriod = 0,
    m_iTitleID = 10960,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10970,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10970,
    },

    m_sPeriod = 0,
    m_iTitleID = 10970,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10980,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10980,
    },

    m_sPeriod = 0,
    m_iTitleID = 10980,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 10990,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "",
    m_iConditionLv = 0,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10990,
    },

    m_sPeriod = 0,
    m_iTitleID = 10990,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 11000,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "",
    m_iConditionLv = 0,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        11000,
    },

    m_sPeriod = 0,
    m_iTitleID = 11000,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 11010,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "",
    m_iConditionLv = 0,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        11010,
    },

    m_sPeriod = 0,
    m_iTitleID = 11010,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 11020,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "",
    m_iConditionLv = 0,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        11020,
    },

    m_sPeriod = 0,
    m_iTitleID = 11020,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 11050,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "천년 여우의 부름 (15일)",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        11050,
    },

    m_sPeriod = 15,
    m_iTitleID = 11050,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 11120,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "고대 화석 수집가",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        11120,
    },

    m_sPeriod = 0,
    m_iTitleID = 11120,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 11130,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "고대 화석 분석가",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        11130,
    },

    m_sPeriod = 0,
    m_iTitleID = 11130,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 15000,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        15000,
    },

    m_sPeriod = 0,
    m_iTitleID = 15000,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 15001,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "나는 CBT 유저다!",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        15001,
    },

    m_sPeriod = 0,
    m_iTitleID = 15001,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 15002,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "Facebook Elsword",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        15002,
    },

    m_sPeriod = 0,
    m_iTitleID = 15002,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 15003,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        15003,
    },

    m_sPeriod = 0,
    m_iTitleID = 15003,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 15004,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        15004,
    },

    m_sPeriod = 0,
    m_iTitleID = 15004,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 15005,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_DAMAGE"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        15005,
    },

    m_sPeriod = 0,
    m_iTitleID = 15005,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 20000,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "",
    m_iConditionLv = 5,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        20000,
    },

    m_sPeriod = 0,
    m_iTitleID = 20000,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 20010,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "",
    m_iConditionLv = 5,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        20010,
    },

    m_sPeriod = 0,
    m_iTitleID = 20010,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 20020,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "",
    m_iConditionLv = 5,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        20020,
    },

    m_sPeriod = 0,
    m_iTitleID = 20020,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 20030,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_MissionName = "",
    m_iConditionLv = 5,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        20030,
    },

    m_sPeriod = 7,
    m_iTitleID = 20030,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 20040,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "",
    m_iConditionLv = 8,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        20040,
    },

    m_sPeriod = 0,
    m_iTitleID = 20040,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 20050,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "",
    m_iConditionLv = 8,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        20050,
    },

    m_sPeriod = 0,
    m_iTitleID = 20050,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 20060,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "",
    m_iConditionLv = 8,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        20060,
    },

    m_sPeriod = 0,
    m_iTitleID = 20060,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 20070,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_MissionName = "",
    m_iConditionLv = 8,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        20070,
    },

    m_sPeriod = 7,
    m_iTitleID = 20070,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 20080,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "시간의 군주",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        20080,
    },

    m_sPeriod = 0,
    m_iTitleID = 20080,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 20090,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "시간의 정복자",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        20090,
    },

    m_sPeriod = 0,
    m_iTitleID = 20090,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 20095,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "시간의 파괴자",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        20095,
    },

    m_sPeriod = 0,
    m_iTitleID = 20095,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 20100,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "공간의 군주",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        20100,
    },

    m_sPeriod = 0,
    m_iTitleID = 20100,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 20110,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "공간의 정복자",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        20110,
    },

    m_sPeriod = 0,
    m_iTitleID = 20110,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 20115,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "공간의 파괴자",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        20115,
    },

    m_sPeriod = 0,
    m_iTitleID = 20115,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 20120,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "창세신의 재림",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        20120,
    },

    m_sPeriod = 0,
    m_iTitleID = 20120,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 20130,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "창세신의 힘",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        20130,
    },

    m_sPeriod = 0,
    m_iTitleID = 20130,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 20140,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 50,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        20140,
    },

    m_sPeriod = 0,
    m_iTitleID = 20140,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 20150,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "",
    m_iConditionLv = 0,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        20150,
    },

    m_sPeriod = 0,
    m_iTitleID = 20150,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 20160,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "엘 수색대 우수 졸업생",
    m_iConditionLv = 0,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30470,

    m_SubMission = 
    {
        20160,
    },

    m_sPeriod = 0,
    m_iTitleID = 20160,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 20170,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "백부장",
    m_iConditionLv = 0,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30480,

    m_SubMission = 
    {
        20170,
    },

    m_sPeriod = 0,
    m_iTitleID = 20170,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 20180,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "철벽을 무너트리다",
    m_iConditionLv = 0,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30490,

    m_SubMission = 
    {
        20180,
    },

    m_sPeriod = 0,
    m_iTitleID = 20180,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 20190,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "쓰러진 앙고르 퀸",
    m_iConditionLv = 0,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30500,

    m_SubMission = 
    {
        20190,
    },

    m_sPeriod = 0,
    m_iTitleID = 20190,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 20200,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "격투의 달인",
    m_iConditionLv = 0,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30510,

    m_SubMission = 
    {
        20200,
    },

    m_sPeriod = 0,
    m_iTitleID = 20200,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 20210,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "부러진 화살",
    m_iConditionLv = 0,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30520,

    m_SubMission = 
    {
        20210,
    },

    m_sPeriod = 0,
    m_iTitleID = 20210,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 20220,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "Born to blood",
    m_iConditionLv = 0,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30530,

    m_SubMission = 
    {
        20220,
    },

    m_sPeriod = 0,
    m_iTitleID = 20220,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 20230,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "고통을 이겨낸 자",
    m_iConditionLv = 0,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30540,

    m_SubMission = 
    {
        20230,
    },

    m_sPeriod = 0,
    m_iTitleID = 20230,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 20240,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "폭주한 자아",
    m_iConditionLv = 0,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30550,

    m_SubMission = 
    {
        20240,
    },

    m_sPeriod = 0,
    m_iTitleID = 20240,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 20250,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "고대종의 한계",
    m_iConditionLv = 0,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 30560,

    m_SubMission = 
    {
        20250,
    },

    m_sPeriod = 0,
    m_iTitleID = 20250,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 20260,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "대련장의 도전자",
    m_iConditionLv = 0,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        20260,
    },

    m_sPeriod = 0,
    m_iTitleID = 20260,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30000,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "뽀루슬레이어 선행미션",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30000,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30001,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_MissionName = "원숭이사냥꾼 선행미션",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30001,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30002,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_MissionName = "어둠의 추적자 선행미션",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30002,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30003,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_MissionName = "작업반장 선행미션",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30003,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30004,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_MissionName = "도적 토벌대 선행미션",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30004,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30005,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_MissionName = "배트 슬레이어 선행미션",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30005,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30006,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_QUEST"],
    m_MissionName = "혁명의 영웅 선행미션",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30006,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30007,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_QUEST"],
    m_MissionName = "페이타의 구원자 선행미션",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30007,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30008,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_MissionName = "역전의 용사 선행미션",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30008,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30009,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_MissionName = "퐁고족의 영웅 선행미션",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30009,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30010,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_MissionName = "신속의 영웅 선행미션",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30010,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30011,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_QUEST"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30011,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30012,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_MissionName = "강인한 영혼 선행미션",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30012,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30013,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_QUEST"],
    m_MissionName = "난폭한 정원사 선행미션",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30013,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30014,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_MissionName = "데몬 슬레이어 선행미션",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30014,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30020,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_MissionName = "나소드 이터 선행미션",
    m_iConditionLv = 40,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 270,

    m_SubMission = 
    {
        30020,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30030,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_MissionName = "드래곤 슬레이어 선행미션",
    m_iConditionLv = 40,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 270,

    m_SubMission = 
    {
        30030,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30040,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "퓨리파이어 선행미션",
    m_iConditionLv = 40,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 270,

    m_SubMission = 
    {
        30040,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30050,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "글리터 토벌대 선행미션",
    m_iConditionLv = 40,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30050,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30060,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "승차감 최악 선행미션",
    m_iConditionLv = 40,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30060,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30070,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_MissionName = "됐다! 도망가자~ 선행미션",
    m_iConditionLv = 40,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30070,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30080,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_TIME"],
    m_MissionName = "왕국을 수호하라! 선행미션",
    m_iConditionLv = 40,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30080,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30090,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "다크엘프 사냥꾼 선행미션",
    m_iConditionLv = 40,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30090,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30100,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "막지마! 비키라구! 선행미션",
    m_iConditionLv = 35,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30100,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30110,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_MissionName = "기물 파괴자 선행미션",
    m_iConditionLv = 35,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30110,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30120,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_MissionName = "팔찌를 내놔라! 선행미션",
    m_iConditionLv = 40,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30120,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30130,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "속도 쾌감! 선행미션",
    m_iConditionLv = 35,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 220,

    m_SubMission = 
    {
        30130,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30140,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "글리터 종결자 선행미션",
    m_iConditionLv = 40,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 310,

    m_SubMission = 
    {
        30140,
        30141,
        30142,
        30143,
        30144,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30150,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_MissionName = "생선이 좋아 >ㅁ<! 선행미션",
    m_iConditionLv = 50,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30150,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30160,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_MissionName = "아류 종결자 선행미션",
    m_iConditionLv = 50,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30160,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30170,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_MissionName = "벨더의 전령사 선행미션",
    m_iConditionLv = 45,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30170,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30180,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "잡초 제거반 선행미션",
    m_iConditionLv = 45,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30180,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30190,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "골렘 브레이커 선행미션",
    m_iConditionLv = 50,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30190,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30200,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_MissionName = "루렌시아의 풍류랑 선행미션",
    m_iConditionLv = 45,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30200,
        30201,
        30202,
        30203,
        30204,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30210,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "끼끼 낌끼끼~ 선행미션",
    m_iConditionLv = 45,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30210,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30220,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_MissionName = "소문난 항해사 선행미션",
    m_iConditionLv = 45,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30220,
        30221,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30350,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "기사단 구조대 선행미션",
    m_iConditionLv = 50,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30235,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30360,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "지겨운 거미 선행미션",
    m_iConditionLv = 50,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30245,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30370,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "프리즌 브레이크 선행미션",
    m_iConditionLv = 50,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30255,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30380,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "쓸만한 먹이 선행미션",
    m_iConditionLv = 50,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30265,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30390,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "프리미엄 우후훗 선행미션",
    m_iConditionLv = 50,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30275,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30400,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "심해 잠수부 선행미션",
    m_iConditionLv = 50,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30285,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30410,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_TIME"],
    m_MissionName = "하멜의 물개 선행미션",
    m_iConditionLv = 50,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30295,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30420,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "얼음 조각사 선행미션",
    m_iConditionLv = 50,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30305,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30430,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_RANK"],
    m_MissionName = "그것은 SS 선행미션",
    m_iConditionLv = 50,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30315,
        30316,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30440,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "파워 오브 스플렌더 선행미션",
    m_iConditionLv = 50,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30325,
        30326,
        30327,
        30328,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30450,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "매직 오브 스플렌더 선행미션",
    m_iConditionLv = 50,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30335,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30460,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "소드 오브 스플렌더 선행미션",
    m_iConditionLv = 50,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30345,
        30346,
        30347,
        30348,
        30349,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30470,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "엘 수색대 우수 졸업생 선행미션",
    m_iConditionLv = 0,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30470,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30480,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "백부장 선행미션",
    m_iConditionLv = 0,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30480,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30490,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "철벽을 무너트리다 선행미션",
    m_iConditionLv = 0,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30490,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30500,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "쓰러진 앙고르 퀸 선행미션",
    m_iConditionLv = 0,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30500,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30510,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "격투의 달인 선행미션",
    m_iConditionLv = 0,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30510,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30520,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "부러진 화살 선행미션",
    m_iConditionLv = 0,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30520,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30530,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "Born to blood 선행미션",
    m_iConditionLv = 0,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30530,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30540,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "고통을 이겨낸 자 선행미션",
    m_iConditionLv = 0,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30540,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30550,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "폭주한 자아 선행미션",
    m_iConditionLv = 0,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30550,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30560,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "고대종의 한계 선행미션",
    m_iConditionLv = 0,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30560,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30570,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "일루전브레이커 선행미션",
    m_iConditionLv = 40,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 270,

    m_SubMission = 
    {
        30570,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30580,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_MissionName = "샌더스철 선행미션",
    m_iConditionLv = 60,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30580,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30590,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "밴드 오브 트락 선행미션",
    m_iConditionLv = 60,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30590,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30600,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "3000! 선행미션",
    m_iConditionLv = 60,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30600,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30610,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "하피하피 선행미션",
    m_iConditionLv = 60,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30610,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30620,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_RANK"],
    m_MissionName = "강철의 날개 선행미션",
    m_iConditionLv = 60,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30620,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30630,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_QUEST"],
    m_MissionName = "바람의 자손 선행미션",
    m_iConditionLv = 60,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30630,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30640,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "폭탄 적재 완료 선행미션",
    m_iConditionLv = 60,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30640,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30650,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_MissionName = "홀로서기 선행미션",
    m_iConditionLv = 60,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30650,
        30651,
        30652,
        30653,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30660,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_MissionName = "다이하드 선행미션",
    m_iConditionLv = 60,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30660,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30670,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_MissionName = "7전 8기 선행미션",
    m_iConditionLv = 60,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30670,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30680,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NPC_HUNT"],
    m_MissionName = "폭풍의 전사 선행미션",
    m_iConditionLv = 60,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30680,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30690,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_MissionName = "모래바람의 악령 선행미션",
    m_iConditionLv = 60,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30690,
        30691,
        30692,
        30693,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 30700,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_DUNGEON_CLEAR_COUNT"],
    m_MissionName = "사신 선행미션",
    m_iConditionLv = 60,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        30700,
        30701,
        30702,
    },

    m_sPeriod = 0,
    m_iTitleID = 0,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 35000,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "길드 구해요!",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        35000,
    },

    m_sPeriod = 14,
    m_iTitleID = 35000,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 35001,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "동성훈장",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        35001,
    },

    m_sPeriod = 14,
    m_iTitleID = 35001,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 35002,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "은성훈장",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        35002,
    },

    m_sPeriod = 14,
    m_iTitleID = 35002,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 35003,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "금성훈장",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        35003,
    },

    m_sPeriod = 14,
    m_iTitleID = 35003,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 35004,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "명예훈장",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        35004,
    },

    m_sPeriod = 14,
    m_iTitleID = 35004,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 35005,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "사랑해요 USA!",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        35005,
    },

    m_sPeriod = 14,
    m_iTitleID = 35005,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 35006,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "사랑해요 CANADA!",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        35006,
    },

    m_sPeriod = 14,
    m_iTitleID = 35006,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 35007,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "벨더의 전사",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        35007,
    },

    m_sPeriod = 0,
    m_iTitleID = 35007,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 35008,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "ANIME AX 기념",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        35008,
    },

    m_sPeriod = 0,
    m_iTitleID = 35008,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 35009,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "Best Guild",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        35009,
    },

    m_sPeriod = 40,
    m_iTitleID = 35009,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 35010,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "Best of Best Guild",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        35010,
    },

    m_sPeriod = 40,
    m_iTitleID = 35010,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 35012,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "[US]페이스북 칭호",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        35012,
    },

    m_sPeriod = 0,
    m_iTitleID = 35012,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 35013,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "[US]페이스북 12000 칭호",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        35013,
    },

    m_sPeriod = 0,
    m_iTitleID = 35013,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 35014,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "[US]페이스북 14000 칭호",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        35014,
    },

    m_sPeriod = 0,
    m_iTitleID = 35014,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 35015,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "[US]페이스북 15000 칭호",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        35015,
    },

    m_sPeriod = 0,
    m_iTitleID = 35015,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 35016,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "Gobbler",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        35016,
    },

    m_sPeriod = 15,
    m_iTitleID = 35016,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 35017,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "Gobbler",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        35017,
    },

    m_sPeriod = 15,
    m_iTitleID = 35016,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 35018,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "Gobbler",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        35018,
    },

    m_sPeriod = 15,
    m_iTitleID = 35016,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 35019,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "Gobbler",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        35019,
    },

    m_sPeriod = 15,
    m_iTitleID = 35016,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 35020,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "Gobbler",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        35020,
    },

    m_sPeriod = 15,
    m_iTitleID = 35016,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 35021,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "나소드의 여왕",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        35021,
    },

    m_sPeriod = 15,
    m_iTitleID = 35021,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 35030,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "해피 뉴 이얼(30일)",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        35030,
    },

    m_sPeriod = 30,
    m_iTitleID = 35030,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 35031,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "해피 뉴 이얼(20일)",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        35031,
    },

    m_sPeriod = 20,
    m_iTitleID = 35031,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 35032,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "해피 뉴 이얼(10일)",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        35032,
    },

    m_sPeriod = 10,
    m_iTitleID = 35032,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 35040,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "비밀번호 변경 칭호",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        35040,
    },

    m_sPeriod = 30,
    m_iTitleID = 35040,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 35060,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "하멜을 지원하라!",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        35060,
    },

    m_sPeriod = 30,
    m_iTitleID = 35060,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 35070,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "하멜의 하얀 늑대",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        35070,
    },

    m_sPeriod = 30,
    m_iTitleID = 35070,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 35080,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "돌아온 모험가",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        35080,
    },

    m_sPeriod = 30,
    m_iTitleID = 35080,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 35090,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "하멜 몬스터 마스터",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        35090,
    },

    m_sPeriod = 30,
    m_iTitleID = 35090,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 35100,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "고통을 이겨낸 자",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        35100,
    },

    m_sPeriod = 0,
    m_iTitleID = 35100,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 35110,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "비밀던전 정복(월리의 지하 연구소)",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        35110,
    },

    m_sPeriod = 1,
    m_iTitleID = 35110,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 35120,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "비밀던전 정복(용의 둥지:나락)",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        35120,
    },

    m_sPeriod = 1,
    m_iTitleID = 35120,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 35130,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "비밀던전 정복(운송터널:오염)",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        35130,
    },

    m_sPeriod = 1,
    m_iTitleID = 35130,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 35140,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "비밀던전 정복(환각의 벨더)",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        35140,
    },

    m_sPeriod = 1,
    m_iTitleID = 35140,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 35150,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "GREENLIGHT ELSWORD(B&W)",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        35150,
    },

    m_sPeriod = 14,
    m_iTitleID = 35150,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 35160,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "GREENLIGHT ELSWORD(Bronze)",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        35160,
    },

    m_sPeriod = 14,
    m_iTitleID = 35160,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 35170,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "GREENLIGHT ELSWORD(Silver)",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        35170,
    },

    m_sPeriod = 0,
    m_iTitleID = 35170,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 35180,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "GREENLIGHT ELSWORD(Gold)",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        35180,
    },

    m_sPeriod = 0,
    m_iTitleID = 35180,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 35190,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "행운의 징표",
    m_iConditionLv = 0,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        35190,
    },

    m_sPeriod = 1,
    m_iTitleID = 35190,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 35200,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "Trial of Elsword",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        35200,
    },

    m_sPeriod = 0,
    m_iTitleID = 35200,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 35210,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "새로운 세계로부터의 모험가 칭호",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        35210,
    },

    m_sPeriod = 30,
    m_iTitleID = 35210,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 35220,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "기존 세계로부터의 모험가 칭호",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        35220,
    },

    m_sPeriod = 30,
    m_iTitleID = 35220,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 35230,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "새로운 세계로부터의 모험가 칭호",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        35230,
    },

    m_sPeriod = 30,
    m_iTitleID = 35230,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 40000,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        5512,
    },

    m_sPeriod = 0,
    m_iTitleID = 40000,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 40001,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
    },

    m_sPeriod = 0,
    m_iTitleID = 40001,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 40010,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
    },

    m_sPeriod = 0,
    m_iTitleID = 40001,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 40020,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
    },

    m_sPeriod = 0,
    m_iTitleID = 40001,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 40030,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
    },

    m_sPeriod = 30,
    m_iTitleID = 40030,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 40040,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
    },

    m_sPeriod = 0,
    m_iTitleID = 40040,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 40045,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        40045,
    },

    m_sPeriod = 7,
    m_iTitleID = 40045,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 40050,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        40050,
    },

    m_sPeriod = 7,
    m_iTitleID = 40050,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 40060,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        40060,
    },

    m_sPeriod = 7,
    m_iTitleID = 40060,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 40070,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        40070,
    },

    m_sPeriod = 7,
    m_iTitleID = 40070,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 40080,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "활력의 검사 (15일)",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        40080,
    },

    m_sPeriod = 15,
    m_iTitleID = 40080,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 40090,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "파괴의 검사 (15일)",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        40090,
    },

    m_sPeriod = 15,
    m_iTitleID = 40090,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 40100,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "파워 오브 스플렌더(2일)",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        40100,
    },

    m_sPeriod = 2,
    m_iTitleID = 40100,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 40110,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "매직 오브 스플렌더(2일)",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        40110,
    },

    m_sPeriod = 2,
    m_iTitleID = 40110,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 40120,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "소드 오브 스플렌더(2일)",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        40120,
    },

    m_sPeriod = 2,
    m_iTitleID = 40120,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 40130,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "포병대로부터의 지원",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        40130,
    },

    m_sPeriod = 0,
    m_iTitleID = 40130,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 40140,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "돌아온 영웅",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        40140,
    },

    m_sPeriod = 15,
    m_iTitleID = 40140,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 40150,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "성실한 모험가",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        40150,
    },

    m_sPeriod = 1,
    m_iTitleID = 40150,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 40160,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "신인 할로윈 디자이너(15일권)",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        40160,
    },

    m_sPeriod = 15,
    m_iTitleID = 40160,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 40170,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "전설의 할로윈 디자이너(15일권)",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        40170,
    },

    m_sPeriod = 15,
    m_iTitleID = 40170,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 50000,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        50000,
    },

    m_sPeriod = 0,
    m_iTitleID = 50000,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 50001,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        50001,
    },

    m_sPeriod = 0,
    m_iTitleID = 50001,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 50002,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_QUEST"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        10,
    },

    m_sPeriod = 0,
    m_iTitleID = 50002,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 50020,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        50020,
    },

    m_sPeriod = 0,
    m_iTitleID = 50020,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 50021,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        50021,
    },

    m_sPeriod = 30,
    m_iTitleID = 50021,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 50030,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        50030,
    },

    m_sPeriod = 7,
    m_iTitleID = 50030,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 50031,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        50031,
    },

    m_sPeriod = 15,
    m_iTitleID = 50030,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 50032,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        50032,
    },

    m_sPeriod = 30,
    m_iTitleID = 50030,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 50040,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        50040,
    },

    m_sPeriod = 1,
    m_iTitleID = 50040,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 50041,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        50041,
    },

    m_sPeriod = 0,
    m_iTitleID = 50041,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 50042,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        50042,
    },

    m_sPeriod = 0,
    m_iTitleID = 50042,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 50050,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        50050,
    },

    m_sPeriod = 1,
    m_iTitleID = 50050,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 50060,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        50060,
    },

    m_sPeriod = 30,
    m_iTitleID = 50060,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 50070,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        50070,
    },

    m_sPeriod = 1,
    m_iTitleID = 50070,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 50071,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        50071,
    },

    m_sPeriod = 1,
    m_iTitleID = 50071,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 50080,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        50080,
    },

    m_sPeriod = 1,
    m_iTitleID = 50080,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 50081,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        50081,
    },

    m_sPeriod = 1,
    m_iTitleID = 50081,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 50082,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        50082,
    },

    m_sPeriod = 1,
    m_iTitleID = 50082,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 100000,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "엘리오스 게임",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        100000,
    },

    m_sPeriod = 15,
    m_iTitleID = 100000,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 100010,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "엘소드 태그 토너먼트",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        100010,
    },

    m_sPeriod = 0,
    m_iTitleID = 100010,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 100100,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "열정의 하트 (남)",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        100100,
    },

    m_sPeriod = 0,
    m_iTitleID = 100020,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 100110,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "사연있는 하트 (남)",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        100110,
    },

    m_sPeriod = 0,
    m_iTitleID = 100030,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 100120,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "순수 하트 (남)",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        100120,
    },

    m_sPeriod = 0,
    m_iTitleID = 100040,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 100130,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "열정의 하트 (여)",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        100130,
    },

    m_sPeriod = 0,
    m_iTitleID = 100050,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 100140,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "사연있는 하트 (여)",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        100140,
    },

    m_sPeriod = 0,
    m_iTitleID = 100060,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 100150,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "순수 하트 (여)",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        100150,
    },

    m_sPeriod = 0,
    m_iTitleID = 100070,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 100160,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_USE_ITEM"],
    m_MissionName = "쓸쓸한 론리 하트",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        100160,
    },

    m_sPeriod = 0,
    m_iTitleID = 100080,
}

TitleManager:AddTitleMissionInfo_LUA
{
    m_iMissionID = 100170,
    m_eClearType = TITLE_MISSION_CLEAR_TYPE["TMCT_NONE"],
    m_MissionName = "World War 알림 칭호 (8일권)",
    m_iConditionLv = 1,
    m_eConditionUnitType = UNIT_TYPE["UT_NONE"],
    m_eConditionUnitClass = UNIT_CLASS["UC_NONE"],
    m_iConditionClearMissionID = 0,

    m_SubMission = 
    {
        100170,
    },

    m_sPeriod = 8,
    m_iTitleID = 100170,
}

