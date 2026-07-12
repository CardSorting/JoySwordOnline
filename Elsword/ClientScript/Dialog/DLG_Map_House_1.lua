-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

House = {}

House[ HOUSE_ID["HI_ANNE_HOUSE"] ] = 
{
    -- 앤
	Type = HOUSE_TYPE["HT_EQUIP_SHOP"],
	Name = STR_ID_26244,

	QuestInfoPosX = 100, 
	QuestInfoPosY = 349,
	
	EventQuestInfoPosX = 144, 
	EventQuestInfoPosY = 440,
	
	NPCTextureName = "DLG_Common_New_Texture41.tga",
	NPCTextureKey = "NUI_ANNE_NAME",
	
	NPCTexturePosX = 135, --85
	NPCTexturePosY = 640,
	
	NPCMeshName = "Motion_NPC_RUBEN_ANNE.x",
	NPCAniTex      = "Motion_NPC_RUBEN_ANNE.XET",
	NPCMeshPos = {4702.732, 164.206, 367.613},
	NPCMeshRot = {0, 15, 0},
	NPCMeshScale = {1.3, 1.3, 1.3},
	
	NPCJoinTalk = { "ANNE_HOUSE_Wait_Talk.ogg", "ANNE_HOUSE_Wait_Talk2.ogg", },
	NPCByeTalk  = { "ANNE_HOUSE_Bye_Talk.ogg", "ANNE_HOUSE_Bye_Talk2.ogg", },
	
	JoinArea = 600,	
	
	ENCHANT = TRUE,
	REPAIR_NPC = TRUE,
	SELL_NPC	= TRUE,
	
	
	NPC_ID_LIST = 
	{
		NPC_UNIT_ID["NUI_ANNE"],
	},
	
	SHOP_CATEGORY_TYPE_LIST =
	{
		BUY_ITEM_CATEGORY["BIC_WEAPON"],
		BUY_ITEM_CATEGORY["BIC_COAT"],
		BUY_ITEM_CATEGORY["BIC_TROUSERS"],
		BUY_ITEM_CATEGORY["BIC_HAND"],
		BUY_ITEM_CATEGORY["BIC_FOOTWEAR"],
		BUY_ITEM_CATEGORY["BIC_SPECIAL"],
		BUY_ITEM_CATEGORY["BIC_ACCESSORY"],
	},
	
	Wait_Talk = STR_ID_1002,
	Shop_Talk = STR_ID_1003,
	Quest_Talk = STR_ID_1004,
	Bye_Talk = STR_ID_1005,
	
	TALK_BOX =
 	{
		--{ MESSAGE = STR_ID_14957 },--2011/12/8 제거

	},
}

House[ HOUSE_ID["HI_HAGERS_HOUSE"] ] = 
{
    -- 하거스
	Type = HOUSE_TYPE["HT_NPC_HOUSE"],
	Name = STR_ID_26243,

	QuestInfoPosX = 727, 
	QuestInfoPosY = 253,
	
	EventQuestInfoPosX = 669, 
	EventQuestInfoPosY = 343,
	
	NPCTextureName = "DLG_Common_New_Texture41.tga",
	NPCTextureKey = "NUI_HAGERS_NAME",

	NPCTexturePosX = 154,
	NPCTexturePosY = 637,
	
	TitleTextureName	= "DLG_Common_New_Texture14.tga",
	TitleTextureKey		= "House_Village_CityHall",
	
	NPCMeshName = "Motion_NPC_RUBEN_Hagers.x",
	NPCMeshPos = {2067.699, 164.687, 532.345},
	NPCMeshRot = {0, -15, 0},
	NPCMeshScale = {1.3, 1.3, 1.3},
	
	NPCJoinTalk = { "HAGERS_HOUSE_Wait_Talk.ogg", "HAGERS_HOUSE_Wait_Talk2.ogg", },
	NPCByeTalk  = { "HAGERS_HOUSE_Bye_Talk.ogg", "HAGERS_HOUSE_Bye_Talk2.ogg", },
	
	--EXCHANGE	= TRUE,
	
	JoinArea = 630,	
	
	NPC_ID_LIST = 
	{
		NPC_UNIT_ID["NUI_HAGERS"],
	},
	
 	Wait_Talk = STR_ID_1007,
	Quest_Talk = STR_ID_1008,
	Exchange_Talk = STR_ID_3839,
	Bye_Talk = STR_ID_1009,
}

House[ HOUSE_ID["HI_LOW_TRAINNING_ZONE"] ] = 
{
    -- 로우
	Type = HOUSE_TYPE["HT_TRAINNING_ZONE"],
	Name = STR_ID_26242,

	QuestInfoPosX = 441, 
	QuestInfoPosY = 232,
	
	EventQuestInfoPosX = 477, 
	EventQuestInfoPosY = 309,
	
	NPCTextureName = "DLG_Common_New_Texture41.tga",
	NPCTextureKey = "NUI_LOW_NAME",

	NPCTexturePosX = 136,
	NPCTexturePosY = 635,
	
	NPCMeshName = "Motion_NPC_RUBEN_LOW.x",
	NPCAniTex      = "Motion_NPC_RUBEN_LOW.XET",
	NPCMeshPos = {801.067, 274.436, -16.075},
	NPCMeshRot = {0, -25, 0},
	NPCMeshScale = {1.3, 1.3, 1.3},
	
	NPCJoinTalk = { "LOW_TRAINNING_ZONE_Wait_Talk.ogg", "LOW_TRAINNING_ZONE_Wait_Talk2.ogg", },
	NPCByeTalk  = { "LOW_TRAINNING_ZONE_Bye_Talk.ogg", "LOW_TRAINNING_ZONE_Bye_Talk2.ogg", },
	
	JoinArea = 600,		
	
	-- 훈련 제거
	-- 자유훈련 카밀라에게로 이관
	--TRAINING = TRUE,
	--FREE_TRAINING = TRUE,

	NPC_ID_LIST = 
	{
		NPC_UNIT_ID["NUI_LOW"],
	},
	
	Wait_Talk = STR_ID_1010,
	Shop_Talk = STR_ID_1011,	
	Quest_Talk = STR_ID_1012,
	Bye_Talk = STR_ID_741,
}


-- 루벤 마을 연금술사 집
House[ HOUSE_ID["HI_ADAMS_HOUSE"] ] = 
{
    -- 아담스
	Type = HOUSE_TYPE["HT_ALCHEMIST_HOUSE"],
	Name = STR_ID_1013,

	QuestInfoPosX = 126, 
	QuestInfoPosY = 209,
	
	EventQuestInfoPosX = 237, 
	EventQuestInfoPosY = 248,
	
	NPCTextureName = "DLG_Common_New_Texture41.tga",
	NPCTextureKey = "NUI_ADAMS_NAME",

	NPCTexturePosX = 168, --118,
	NPCTexturePosY = 631,
	
	NPCMeshName = "Motion_NPC_RUBEN_ADAMAS.x",
	NPCMeshPos = {5618.283, 1274.933, -2630.482},
	NPCMeshRot = {0, 0, 0},
	NPCMeshScale = {1.3, 1.3, 1.3},
	
	NPCJoinTalk = { "ADAMS_HOUSE_Wait_Talk.ogg", "ADAMS_HOUSE_Wait_Talk2.ogg", },
	NPCByeTalk  = { "ADAMS_HOUSE_Bye_Talk.ogg", "ADAMS_HOUSE_Bye_Talk2.ogg", },
	
	JoinArea = 500,	
	
	MAKING_NPC = TRUE,
	ATTRIBUTE = TRUE,
	SELL_NPC	= TRUE,
	--EXCHANGE	= TRUE,
	
	
	NPC_ID_LIST = 
	{
		NPC_UNIT_ID["NUI_ADAMS"],
	},
	
	SHOP_CATEGORY_TYPE_LIST =
	{
		BUY_ITEM_CATEGORY["BIC_SPECIAL"],
		BUY_ITEM_CATEGORY["BIC_QUICK_SLOT"],
	},
	
	Wait_Talk = STR_ID_1014,
	Make_Talk = STR_ID_1015,
	Shop_Talk = STR_ID_1016,
	Quest_Talk = STR_ID_1017,
	Exchange_Talk = STR_ID_4409,
	Bye_Talk = STR_ID_1018,
}


House[ HOUSE_ID["HI_ECHO_ALCHEMIST_HOUSE"] ] = 
{
    -- 에코
	Type = HOUSE_TYPE["HT_ALCHEMIST_HOUSE"],
	Name = STR_ID_26247,

	QuestInfoPosX = 271, 
	QuestInfoPosY = 198,
	
	EventQuestInfoPosX = 257, 
	EventQuestInfoPosY = 248,
	
	NPCTextureName = "DLG_Common_New_Texture41.tga",
	NPCTextureKey = "NUI_ECHO_NAME",

	NPCTexturePosX = 144,
	NPCTexturePosY = 627,
	
	NPCMeshName = "Motion_ECHO.x",	
	NPCMeshPos = {4503, 1776, 519},
	NPCMeshRot = {0, 45, 0},
	NPCMeshScale = {1.3, 1.3, 1.3},
	
	NPCJoinTalk = { "ECHO_ALCHEMIST_HOUSE_Wait_Talk.ogg", "ECHO_ALCHEMIST_HOUSE_Wait_Talk2.ogg", },
	NPCByeTalk  = { "ECHO_ALCHEMIST_HOUSE_Bye_Talk.ogg", "ECHO_ALCHEMIST_HOUSE_Bye_Talk2.ogg", },
	
	JoinArea = 700,	
	
	MAKING_NPC = TRUE,
	ATTRIBUTE = TRUE,
	SELL_NPC	= TRUE,
	EXCHANGE	= TRUE,
	
	Wait_Talk = STR_ID_1019,
	Make_Talk = STR_ID_1020,
	Shop_Talk = STR_ID_1021,
	Quest_Talk = STR_ID_1022,
	Exchange_Talk = STR_ID_4410,
	Bye_Talk = STR_ID_1023,
	
	NPC_ID_LIST = 
	{
		NPC_UNIT_ID["NUI_ECHO"],
	},
	
	SHOP_CATEGORY_TYPE_LIST =
	{
		BUY_ITEM_CATEGORY["BIC_SPECIAL"],	
		BUY_ITEM_CATEGORY["BIC_QUICK_SLOT"],
	},
	
	TALK_BOX =
 	{
		--{ MESSAGE = STR_ID_16152 },--2012/03/29 제거 (공존의 축제 멘트)
	},
}



House[ HOUSE_ID["HI_HOFMANN_HOUSE"] ] = 
{
    -- 호프만
	Type = HOUSE_TYPE["HT_NPC_HOUSE"],
	Name = STR_ID_26246,
	
	QuestInfoPosX = 703,
	QuestInfoPosY = 280,
	
	EventQuestInfoPosX = 636, 
	EventQuestInfoPosY = 372,
	
	NPCTextureName = "DLG_Common_New_Texture41.tga",
	NPCTextureKey = "NUI_HOFMANN_NAME",

	NPCTexturePosX = 137,
	NPCTexturePosY = 639,
	
	TitleTextureName	= "DLG_Common_New_Texture14.tga",
	TitleTextureKey		= "House_Bigshopkeeper_Title",

    NPCMeshName = "Motion_NPC_ELDER_HOFMANN.x",	
	NPCMeshPos = {-929.43, 1912, 2756},
	NPCMeshRot = {0, 0, 0},
	NPCMeshScale = {1.3, 1.3, 1.3},
	
	NPCJoinTalk = { "HOFMANN_HOUSE_Wait_Talk.ogg", "HOFMANN_HOUSE_Wait_Talk2.ogg", },
	NPCByeTalk  = { "HOFMANN_HOUSE_Bye_Talk.ogg", "HOFMANN_HOUSE_Bye_Talk2.ogg", },
		
	JoinArea = 500,	
	
	--EXCHANGE	= TRUE,
	
	Wait_Talk = STR_ID_1025,
	Quest_Talk = STR_ID_1026,
	Exchange_Talk = STR_ID_3840,
	Bye_Talk = STR_ID_1027,
	
	NPC_ID_LIST = 
	{
		NPC_UNIT_ID["NUI_HOFMANN"],
	},
}


House[ HOUSE_ID["HI_LUICHEL_HOUSE"] ] = 
{
    -- 루이첼
	Type = HOUSE_TYPE["HT_ACCESSORY_SHOP"],
	Name = STR_ID_26245,
	
	QuestInfoPosX = 420, 
	QuestInfoPosY = 212,
	
	EventQuestInfoPosX = 464, 
	EventQuestInfoPosY = 295,
	
	NPCTextureName = "DLG_Common_New_Texture41.tga",	
	NPCTextureKey = "NUI_LUICHEL_NAME",

	NPCTexturePosX = 120,
	NPCTexturePosY = 634,

    NPCMeshName = "Motion_NPC_ELDER_LUICHE.x",	
    NPCAniTex   = "Motion_NPC_ELDER_LUICHE.XET",
	NPCMeshPos = {-6503, 1500, 287},
	NPCMeshRot = {0, 0, 0},
	NPCMeshScale = {1.3, 1.3, 1.3},
	
	NPCJoinTalk = { "LUICHEL_HOUSE_Wait_Talk.ogg", "LUICHEL_HOUSE_Wait_Talk2.ogg", },
	NPCByeTalk  = { "LUICHEL_HOUSE_Bye_Talk.ogg", "LUICHEL_HOUSE_Bye_Talk2.ogg", },
	    
	JoinArea = 700,	
	
	SELL_NPC	= TRUE,
	MAKING_NPC = TRUE,
	
	Wait_Talk = STR_ID_1029,
	Shop_Talk = STR_ID_1030,
	Quest_Talk = STR_ID_1031,
	Bye_Talk = STR_ID_1032,
	Make_Talk = STR_ID_11597,
	
	NPC_ID_LIST = 
	{
		NPC_UNIT_ID["NUI_LUICHEL"],
	},
	
	SHOP_CATEGORY_TYPE_LIST =
	{
		BUY_ITEM_CATEGORY["BIC_ACCESSORY"],
	},
}

House[ HOUSE_ID["HI_LENPAD_HOUSE"] ] = 
{
    -- 렌파드
	Type = HOUSE_TYPE["HT_EQUIP_SHOP"],
	Name = STR_ID_26248,
	
	QuestInfoPosX = 88, 
	QuestInfoPosY = 359,
	
	EventQuestInfoPosX = 123, 
	EventQuestInfoPosY = 447,
	
	NPCTextureName = "DLG_Common_New_Texture41.tga",
	NPCTextureKey = "NUI_LENPAD_NAME",

	NPCTexturePosX = 139,
	NPCTexturePosY = 633,

    NPCMeshName = "Motion_NPC_ELDER_LENPAD.x",	
	NPCMeshPos = {6696, 1500, 287},
	NPCMeshRot = {0, 0, 0},
	NPCMeshScale = {1.3, 1.3, 1.3},
		
	NPCJoinTalk = { "LENPAD_HOUSE_Wait_Talk.ogg", "LENPAD_HOUSE_Wait_Talk2.ogg", },
	NPCByeTalk  = { "LENPAD_HOUSE_Bye_Talk.ogg", "LENPAD_HOUSE_Bye_Talk2.ogg", },
		
	JoinArea = 700,	
	
	ENCHANT		    = TRUE,
	REPAIR_NPC 		= TRUE,
	SELL_NPC		= TRUE,
	MAKING_NPC 		= TRUE,
	--EXCHANGE	= TRUE,
	
	Wait_Talk		 = STR_ID_1034,
	Shop_Talk		 = STR_ID_1035,
	Make_Talk 	   		= STR_ID_10352,
	Quest_Talk		 = STR_ID_1036,
	Bye_Talk		 = STR_ID_1037,
	Exchange_Talk = STR_ID_13926,

	
	NPC_ID_LIST = 
	{
		NPC_UNIT_ID["NUI_LENPAD"],
	},
	
	SHOP_CATEGORY_TYPE_LIST =
	{
		BUY_ITEM_CATEGORY["BIC_WEAPON"],
		BUY_ITEM_CATEGORY["BIC_COAT"],
		BUY_ITEM_CATEGORY["BIC_TROUSERS"],
		BUY_ITEM_CATEGORY["BIC_HAND"],
		BUY_ITEM_CATEGORY["BIC_FOOTWEAR"],
	},
}


House[ HOUSE_ID["HI_CHACHABUK_HOUSE"] ] = 
{
    -- 차차부크
	Type = HOUSE_TYPE["HT_ALCHEMIST_HOUSE"],
	Name = STR_ID_26249,
		
	QuestInfoPosX = 352+31, 
	QuestInfoPosY = 147+31,
	
	EventQuestInfoPosX = 226, 
	EventQuestInfoPosY = 147,
	
	NPCTextureName = "DLG_Common_New_Texture41.tga",
	NPCTextureKey = "NUI_CHACHABUK_NAME",

	NPCTexturePosX = 155,
	NPCTexturePosY = 643,

	NPCMeshName = "Motion_NPC_BESMA_CHACHABUK.x",	
	NPCMeshPos = {-2230, 5120, -2950},
	NPCMeshRot = {0, 0, 0},
	NPCMeshScale = {1.5, 1.5, 1.5},
	
	NPCJoinTalk = { "CHACHABUK_HOUSE_Wait_Talk.ogg", "CHACHABUK_HOUSE_Wait_Talk2.ogg", },
	NPCByeTalk  = { "CHACHABUK_HOUSE_Bye_Talk.ogg", "CHACHABUK_HOUSE_Bye_Talk2.ogg", },
		
	JoinArea = 500,	
	
	MAKING_NPC = TRUE,
	ATTRIBUTE = TRUE,
	SELL_NPC	= TRUE,
	EXCHANGE	= TRUE,
	
	Wait_Talk = STR_ID_1038,
	Shop_Talk = STR_ID_1039,
	Make_Talk = STR_ID_1040,
	Quest_Talk = STR_ID_1041,
	Exchange_Talk = STR_ID_4411,
	Bye_Talk = STR_ID_1042,
	
	NPC_ID_LIST = 
	{
		NPC_UNIT_ID["NUI_CHACHABUK"],
	},
	
	SHOP_CATEGORY_TYPE_LIST =
	{
		BUY_ITEM_CATEGORY["BIC_SPECIAL"],		
		BUY_ITEM_CATEGORY["BIC_QUICK_SLOT"],
	},
	
	TALK_BOX =
 	{
		--{ MESSAGE = STR_ID_16153 },--2012/03/29 제거 (공존의 축제 멘트)
	},
}


House[ HOUSE_ID["HI_RICHANG_HOUSE"] ] = 
{
    -- 리치앙
	Type = HOUSE_TYPE["HT_ACCESSORY_SHOP"],
	Name = STR_ID_26251,

		
	QuestInfoPosX = 416+31, 
	QuestInfoPosY = 298+31,
	
	EventQuestInfoPosX = 430, 
	EventQuestInfoPosY = 367,
	
	NPCTextureName = "DLG_Common_New_Texture41.tga",
	NPCTextureKey = "NUI_RICHANG_NAME",

	NPCTexturePosX = 134,
	NPCTexturePosY = 641,

	NPCMeshName = "Motion_NPC_BESMA_RICHANG.x",	
	NPCMeshPos = {8215, 3526, -3700},
	NPCMeshRot = {0, 0, 0},
	NPCMeshScale = {1.5, 1.5, 1.5},
	
	NPCJoinTalk = { "RICHANG_HOUSE_Wait_Talk.ogg", "RICHANG_HOUSE_Wait_Talk2.ogg", },
	NPCByeTalk  = { "RICHANG_HOUSE_Bye_Talk.ogg", "RICHANG_HOUSE_Bye_Talk2.ogg", },
	
	JoinArea = 700,	
	
	SELL_NPC	= TRUE,
	MAKING_NPC = TRUE,
	
	Wait_Talk = STR_ID_1043,
	Shop_Talk = STR_ID_1044,
	Quest_Talk = STR_ID_1045,
	Bye_Talk = STR_ID_1046,
	Make_Talk = STR_ID_11598,
	
	NPC_ID_LIST = 
	{
		NPC_UNIT_ID["NUI_RICHANG"],
	},
	
	SHOP_CATEGORY_TYPE_LIST =
	{
		BUY_ITEM_CATEGORY["BIC_ACCESSORY"],
	},
}


House[ HOUSE_ID["HI_STELLA_HOUSE"] ] = 
{
    -- 스텔라
	Type = HOUSE_TYPE["HT_NPC_HOUSE"],
	Name = STR_ID_26250,
	
	--QuestInfoPosX = 841, 
	--QuestInfoPosY = 351,
	
	--EventQuestInfoPosX = 908, 
	--EventQuestInfoPosY = 457,
	
	QuestInfoPosX = 847, 
	QuestInfoPosY = 497,
	
	EventQuestInfoPosX = 967, 
	EventQuestInfoPosY = 485,
	
	
	NPCTextureName = "DLG_Common_New_Texture41.tga",
	NPCTextureKey = "NUI_STELLA_NAME",

	NPCTexturePosX = 143,
	NPCTexturePosY = 640,

	
	TitleTextureName	= "DLG_Common_New_Texture14.tga",
	TitleTextureKey		= "Captain_House_Title",
	
	NPCMeshName = "Motion_NPC_BESMA_STELLA.x",	
	NPCAniTex      = "Motion_NPC_BESMA_STELLA.XET",
	NPCMeshPos = {-3600, 3450, -4000},
	NPCMeshRot = {0, 0, 0},
	NPCMeshScale = {1.3, 1.3, 1.3},
	
	NPCJoinTalk = { "STELLA_HOUSE_Wait_Talk.ogg", "STELLA_HOUSE_Wait_Talk2.ogg", },
	NPCByeTalk  = { "STELLA_HOUSE_Bye_Talk.ogg", "STELLA_HOUSE_Bye_Talk2.ogg", },
	
	JoinArea = 500,	
	
	--EXCHANGE	= TRUE,
	--MAKING_NPC 	= TRUE,
	
	Wait_Talk = STR_ID_1048,
	Shop_Talk = STR_ID_1049,
	Quest_Talk = STR_ID_1050,
	Exchange_Talk = STR_ID_3841,
	Make_Talk = STR_ID_17420,
	Bye_Talk = STR_ID_1051,
	
	NPC_ID_LIST = 
	{
		NPC_UNIT_ID["NUI_STELLA"],
	},
}
		
House[ HOUSE_ID["HI_TOMA_HOUSE"] ] = 
{
    -- 토마
	Type = HOUSE_TYPE["HT_EQUIP_SHOP"],
	Name = STR_ID_26252,
		
	QuestInfoPosX = 73, 
	QuestInfoPosY = 304,
	
	EventQuestInfoPosX = 128, 
	EventQuestInfoPosY = 401,
	
	NPCTextureName = "DLG_Common_New_Texture41.tga",
	NPCTextureKey = "NUI_TOMA_NAME",

	NPCTexturePosX = 137,
	NPCTexturePosY = 636,

    NPCMeshName = "Motion_NPC_BESMA_TOMA.x",
    NPCAniTex   = "Motion_NPC_BESMA_TOMA.XET",	
	NPCMeshPos = {7470, 5465, -2550},
	NPCMeshRot = {0, 0, 0},
	NPCMeshScale = {1.2, 1.2, 1.2},
	
	NPCJoinTalk = { "TOMA_HOUSE_Wait_Talk.ogg", "TOMA_HOUSE_Wait_Talk2.ogg", },
	NPCByeTalk  = { "TOMA_HOUSE_Bye_Talk.ogg", "TOMA_HOUSE_Bye_Talk2.ogg", },
	
	JoinArea = 900,	
	
	ENCHANT = TRUE,
	MAKING_NPC 	= TRUE,
	REPAIR_NPC = TRUE,
	SELL_NPC	= TRUE,
	--EXCHANGE	= TRUE,
	
	Wait_Talk = STR_ID_1052,
	Make_Talk = STR_ID_10353,
	Shop_Talk = STR_ID_1053,
	Quest_Talk = STR_ID_1054,
	Bye_Talk = STR_ID_1055,
	Exchange_Talk = STR_ID_13927,
	
	NPC_ID_LIST = 
	{
		NPC_UNIT_ID["NUI_TOMA"],
	},
	
	SHOP_CATEGORY_TYPE_LIST =
	{
		BUY_ITEM_CATEGORY["BIC_WEAPON"],
		BUY_ITEM_CATEGORY["BIC_COAT"],
		BUY_ITEM_CATEGORY["BIC_TROUSERS"],
		BUY_ITEM_CATEGORY["BIC_HAND"],
		BUY_ITEM_CATEGORY["BIC_FOOTWEAR"],
	},
}		







House[ HOUSE_ID["HI_ADEL_HOUSE"] ] = 
{
    -- 아델
	Type = HOUSE_TYPE["HT_NPC_HOUSE"],
	Name = STR_ID_26255,

	QuestInfoPosX = 745, 
	QuestInfoPosY = 305,
	
	EventQuestInfoPosX = 693, 
	EventQuestInfoPosY = 395,
	
	NPCTextureName = "DLG_Common_New_Texture56.tga",
	NPCTextureKey = "NUI_ADEL_NAME",

	NPCTexturePosX = 154,
	NPCTexturePosY = 637,
	
	TitleTextureName	= "DLG_Common_New_Texture14.tga",
	TitleTextureKey		= "House_Village_CityHall",
		
	NPCMeshName = "Motion_Npc_Altera_Adel.x",	
	NPCMeshPos = {-5277, 1559, 270},
	NPCMeshRot = {0, 0, 0},
	NPCMeshScale = {1.3, 1.3, 1.3},
	
	NPCJoinTalk = { "ADEL_HOUSE_Wait_Talk.ogg", "ADEL_HOUSE_Wait_Talk2.ogg", },
	NPCByeTalk  = { "ADEL_HOUSE_Bye_Talk.ogg", "ADEL_HOUSE_Bye_Talk2.ogg", },
	
	JoinArea = 700,	
	
	--EXCHANGE	= TRUE,
	
	Wait_Talk = STR_ID_1056,
	Quest_Talk = STR_ID_1057,
	Exchange_Talk = STR_ID_3842,
	Bye_Talk = STR_ID_1058,
	
	NPC_ID_LIST = 
	{
		NPC_UNIT_ID["NUI_ADEL"],
	},
}

House[ HOUSE_ID["HI_AMOS_ALCHEMIST_HOUSE"] ] = 
{
    -- 아모스
	Type = HOUSE_TYPE["HT_ALCHEMIST_HOUSE"],
	Name = STR_ID_26254,

	QuestInfoPosX = 208, 
	QuestInfoPosY = 180,
	
	EventQuestInfoPosX = 275, 
	EventQuestInfoPosY = 274,
	
	NPCTextureName = "DLG_Common_New_Texture56.tga",
	NPCTextureKey = "NUI_AMOS_NAME",

	NPCTexturePosX = 144,
	NPCTexturePosY = 627,
	
	NPCMeshName = "Motion_Npc_Altera_Amos.X",	
	NPCMeshPos = {3420, 2473, 921},
	NPCMeshRot = {0, 0, 0},
	NPCMeshScale = {1.3, 1.3, 1.3},
	
	NPCJoinTalk = { "AMOS_ALCHEMIST_Wait_Talk.ogg", "AMOS_ALCHEMIST_Wait_Talk2.ogg", },
	NPCByeTalk  = { "AMOS_ALCHEMIST_Bye_Talk.ogg", "AMOS_ALCHEMIST_Bye_Talk2.ogg", },
	
	JoinArea = 700,	
	
	MAKING_NPC = TRUE,
	ATTRIBUTE = TRUE,
	SELL_NPC	= TRUE,
	EXCHANGE	= TRUE,
	
	Wait_Talk = STR_ID_1059,
	Shop_Talk = STR_ID_1060,
	Make_Talk = STR_ID_1061,
	Quest_Talk = STR_ID_1062,
	Exchange_Talk = STR_ID_4412,
	Bye_Talk = STR_ID_1063,

	
	NPC_ID_LIST = 
	{
		NPC_UNIT_ID["NUI_AMOS"],
	},
	
	SHOP_CATEGORY_TYPE_LIST =
	{
		BUY_ITEM_CATEGORY["BIC_SPECIAL"],	
		BUY_ITEM_CATEGORY["BIC_QUICK_SLOT"],
	},
	
	TALK_BOX =
 	{
		--{ MESSAGE = STR_ID_16154 },--2012/03/29 제거 (공존의 축제 멘트)
	},
}

House[ HOUSE_ID["HI_AGATHA_EQUIP_SHOP_HOUSE"] ] = 
{
    -- 아가타
	Type = HOUSE_TYPE["HT_EQUIP_SHOP"],
	Name = STR_ID_26253,
	
	QuestInfoPosX = 305, 
	QuestInfoPosY = 378,
	
	EventQuestInfoPosX = 350, 
	EventQuestInfoPosY = 454,
	
	NPCTextureName = "DLG_Common_New_Texture56.tga",
	NPCTextureKey = "NUI_AGATHA_NAME",

	NPCTexturePosX = 139,
	NPCTexturePosY = 633,
	
	NPCMeshName = "Motion_NPC_ALTERA_AGATHA.x",	
	NPCMeshPos = {4899, 393, 420},
	NPCMeshRot = {0, 0, 0},
	NPCMeshScale = {1.3, 1.3, 1.3},
	
	NPCJoinTalk = { "AGATHA_EQUIP_SHOP_Wait_Talk.ogg", "AGATHA_EQUIP_SHOP_Wait_Talk2.ogg", },
	NPCByeTalk  = { "AGATHA_EQUIP_SHOP_Bye_Talk.ogg", "AGATHA_EQUIP_SHOP_Bye_Talk2.ogg", },
	
	JoinArea = 700,	
	
	ENCHANT = TRUE,
	MAKING_NPC 	= TRUE,
	REPAIR_NPC = TRUE,
	SELL_NPC	= TRUE,
	--EXCHANGE	= TRUE,
	
	Wait_Talk = STR_ID_1064,
	Make_Talk = STR_ID_10354,
	Shop_Talk = STR_ID_1065,
	Quest_Talk = STR_ID_1066,
	Bye_Talk = STR_ID_1067,
	Exchange_Talk = STR_ID_13928,

	
	NPC_ID_LIST = 
	{
		NPC_UNIT_ID["NUI_AGATHA"],
	},
	
	SHOP_CATEGORY_TYPE_LIST =
	{
		BUY_ITEM_CATEGORY["BIC_WEAPON"],
		BUY_ITEM_CATEGORY["BIC_COAT"],
		BUY_ITEM_CATEGORY["BIC_TROUSERS"],
		BUY_ITEM_CATEGORY["BIC_HAND"],
		BUY_ITEM_CATEGORY["BIC_FOOTWEAR"],
	},
}

House[ HOUSE_ID["HI_AIDA_ACCESSORY_HOUSE"] ] = 
{
    -- 아이다
	Type = HOUSE_TYPE["HT_ACCESSORY_SHOP"],
	Name = STR_ID_26256,
		
	QuestInfoPosX = 550, 
	QuestInfoPosY = 200,
	
	EventQuestInfoPosX = 499, 
	EventQuestInfoPosY = 280,
	
	NPCTextureName = "DLG_Common_New_Texture56.tga",
	NPCTextureKey = "NUI_AIDA_NAME",

	NPCTexturePosX = 134,
	NPCTexturePosY = 641,
	
	NPCMeshName = "Motion_NPC_ALTERA_AIDA.x",	
	NPCMeshPos = {-2853, 2682, 970},
	NPCMeshRot = {0, 0, 0},
	NPCMeshScale = {1.3, 1.3, 1.3},
	
	NPCJoinTalk = { "AIDA_ACCESSORY_Wait_Talk.ogg", "AIDA_ACCESSORY_Wait_Talk2.ogg", },
	NPCByeTalk  = { "AIDA_ACCESSORY_Bye_Talk.ogg", "AIDA_ACCESSORY_Bye_Talk2.ogg", },
	
	JoinArea = 700,	
	
	SELL_NPC	= TRUE,
	MAKING_NPC = TRUE,
	
	Wait_Talk = STR_ID_1068,
	Shop_Talk = STR_ID_1069,
	Quest_Talk = STR_ID_1070,
	Bye_Talk = STR_ID_1071,
	Make_Talk = STR_ID_11599,
	
	NPC_ID_LIST = 
	{
		NPC_UNIT_ID["NUI_AIDA"],
	},
	
	SHOP_CATEGORY_TYPE_LIST =
	{
		BUY_ITEM_CATEGORY["BIC_ACCESSORY"],
	},
}

	
House[ HOUSE_ID["HI_CAMILLA_PVP_HOUSE"] ] = 
{
    -- 카밀라
	Type = HOUSE_TYPE["HT_NPC_HOUSE"],
	Name = STR_ID_679,
		
	QuestInfoPosX = 550, 
	QuestInfoPosY = 200,
	
	EventQuestInfoPosX = 499, 
	EventQuestInfoPosY = 280,
	
	NPCTextureName = "dlg_common_new_texture72.tga",	
	NPCTextureKey = "NPC_KAMILRA",

	NPCTexturePosX = 134,
	NPCTexturePosY = 641,
	
	NPCMeshName = "Motion_Npc_All_Camilla.x",	
	NPCAniTex   = "Motion_Npc_All_Camilla.XET",
	NPCMeshPos = {0, 0, 0},
	NPCMeshRot = {0, 0, 0},
	NPCMeshScale = {1.3, 1.3, 1.3},
	
	NPCJoinTalk = { "CAMILLA_PVP_HOUSE_Wait_Talk.ogg", "CAMILLA_PVP_HOUSE_Wait_Talk2.ogg", },
	NPCByeTalk  = { "CAMILLA_PVP_HOUSE_Bye_Talk.ogg", "CAMILLA_PVP_HOUSE_Bye_Talk2.ogg", },
	
	JoinArea = 400,	
	
	-- 카밀라 자유훈련 추가
	FREE_TRAINING = TRUE,
	
	EXCHANGE	= TRUE,
	PVP_NPC = TRUE,
	SELL_NPC	= TRUE,
	REPAIR_NPC = TRUE,
	--MAKING_NPC = TRUE,
	
	Wait_Talk = STR_ID_1072,
	Shop_Talk = STR_ID_2696,
	Pvp_Talk = STR_ID_680,	
	Quest_Talk = STR_ID_1073,
	Bye_Talk = STR_ID_1074,
	Make_Talk = STR_ID_1073,

	COMMON_NPC_LOCATION =
	{
	    { WORLD_ID["WI_VILLAGE_RUBEN"],  7938.352, 1144.109, -1467.982, 0, -10, 0},
	    { WORLD_ID["WI_VILLAGE_ELDER"],  870, 1151, 1100,},
	    { WORLD_ID["WI_VILLAGE_BESMA"],  3600, 5360, -3170,},
	    { WORLD_ID["WI_VILLAGE_ALTERA"],  570, 641, 0, 0, -45, 0},
	    { WORLD_ID["WI_VILLAGE_PEITA"],  -6576, 518.464, -3342.396, },
	    { WORLD_ID["WI_VILLAGE_VELDER"],  -862.071, 341.921, 16.274,},
	    { WORLD_ID["WI_VILLAGE_HAMEL"],  -908.295, 603.00, 608.00, 0, 0, 0, 700 },
		{ WORLD_ID["WI_VILLAGE_SANDER"],  1535.071, 1107.837, -7990.761, 0, 0, 0, 700 },
	},

	
	NPC_ID_LIST = 
	{
		NPC_UNIT_ID["NUI_CAMILLA"],
	},
	
	SHOP_CATEGORY_TYPE_LIST =
	{
		BUY_ITEM_CATEGORY["BIC_SPECIAL"],
		BUY_ITEM_CATEGORY["BIC_QUICK_SLOT"],
	},
	TALK_BOX =
 	{
		--{ MESSAGE = STR_ID_14523 },--2011/10/27
		--{ MESSAGE = STR_ID_14524 },--2011/11/03
		--{ MESSAGE = STR_ID_14596 },--2011/11/03
		--{ MESSAGE = STR_ID_14838 },--2011/11/10
		--{ MESSAGE = STR_ID_14839 },--2011/11/10
		--{ MESSAGE = STR_ID_15066 },--2011/12/8
		--{ MESSAGE = STR_ID_15067 },--2011/12/15
		--{ MESSAGE = STR_ID_15278 },--2011/12/8
		--{ MESSAGE = STR_ID_15279 },--2011/12/15
		--{ MESSAGE = STR_ID_15452 },--2011/12/22		
		--{ MESSAGE = STR_ID_15590 },--2012/01/19
		--{ MESSAGE = STR_ID_15591 },--2012/01/19
		--{ MESSAGE = STR_ID_15762 },	--2012/02/02
		--{ MESSAGE = STR_ID_15763 }, --2012/02/02
		--{ MESSAGE = STR_ID_15878 }, --2012/02/16
		--{ MESSAGE = STR_ID_16291 }, --2012/04/11 (영웅대전)4월 14일\n영웅 대전이 열려!\n자자!용사들이여~\n어서 나에게 와서\n임무를 받으라구!
		--{ MESSAGE = STR_ID_21030 }, --2013/12/13 제거	(영웅대전)12월 8일은\n영웅 대전 결승!\n5주년 파티와 함께\n진행된다고 해!\n홈페이지를 참고해
		--{ MESSAGE = STR_ID_21031 }, --2012/11/29 제거	(영웅대전)온라인 토너먼트\n참가 신청권을\n가지고 있다고?!\n홈페이지로 가서\n어서 신청하라구!
		--{ MESSAGE = STR_ID_21032 }, --2012/11/29 제거	(영웅대전)온라인 토너먼트는\n32강에서 8강까지\n경기가 치뤄져.\n멋진 보상도 있지!
		--{ MESSAGE = STR_ID_21033 }, --2012/11/29 제거	(영웅대전)12월 1일은\n영웅대전 온라인\n토너먼트 날이야!\n누가누가 토너먼트에\n진출하게 될까?
		--{ MESSAGE = STR_ID_21034 }, --2012/11/29 제거	(영웅대전)대회채널 입장?\n나에게서 연습대전을\n누른 후 화면 왼쪽\n대회채널 버튼을\n누르면되.\n할 수 있겠어?
		--{ MESSAGE = STR_ID_21051 }, --2012/12/06 제거	(영웅대전)12월 1일은\n영웅대전 온라인\n토너먼트 날이야!\n진출자 발표 확인은\n홈페이지를 참고해!
		--{ MESSAGE = STR_ID_23335 },--2013/02/21, (밸런스 개편3) 2월 14일!\n드디어 마지막 역습이\n시작되었어!\n이번에는 또 얼마나\n강해질지!\n이제 엘소드 최강은\n누가될까?
	},
}	

House[ HOUSE_ID["HI_ARIEL_EVENT_HOUSE"] ] = 
{
    -- 아리엘
	Type = HOUSE_TYPE["HT_NPC_HOUSE"],
	Name = STR_ID_1075,
		
	QuestInfoPosX = 550, 
	QuestInfoPosY = 200,
	
	EventQuestInfoPosX = 499, 
	EventQuestInfoPosY = 280,
	
	NPCTextureName = "dlg_common_new_texture72.tga",
	NPCTextureKey = "NPC_ARIEL",

	NPCTexturePosX = 134,
	NPCTexturePosY = 641,
	
	NPCMeshName = "Motion_Npc_All_Ariel.x",
	NPCAniTex   = "Motion_Npc_All_Ariel.XET",
	NPCMeshPos = {0, 0, 0},
	NPCMeshRot = {0, 0, 0},
	NPCMeshScale = {1.1, 1.1, 1.1},
	
	NPCJoinTalk = { "ARIEL_EVENT_HOUSE_Wait_Talk.ogg", "ARIEL_EVENT_HOUSE_Wait_Talk2.ogg", },
	NPCByeTalk  = { "ARIEL_EVENT_HOUSE_Bye_Talk.ogg", "ARIEL_EVENT_HOUSE_Bye_Talk2.ogg", },
	
	JoinArea = 500,
	
	--WEB_EVENT	= TRUE, -- 웹 포인트 이벤트
	SELL_NPC	= TRUE,
	EXCHANGE	= TRUE,
	MAKING_NPC = TRUE,
	--bExchangeNewItem = TRUE,  -- 2013 아이템 개편 (아이템 변경) 버튼 추가 // 2013.05.30 // 공솔
	
	EVENT1	= TRUE,
	--EVENT2	= TRUE,
	--EVENT3	= TRUE,
	--EVENT4	= TRUE,
		
	Wait_Talk = STR_ID_1076,
	Make_Talk = STR_ID_4809,
	Shop_Talk = STR_ID_1077,
	Quest_Talk = STR_ID_1078,
	Exchange_Talk = STR_ID_4491,
	--Exchange_New_Item_Talk = STR_ID_25007, -- 2013 아이템 개편 // 2013.05.30 // 공솔
	--(변경 가능 기간: 2013년 9월 5일 정기 점검 전까지)\n안녕하세요, 모험가님! 코보 서비스 아리엘이에요~\n변경을 원하는 장비를 마우스로 클릭하면 더욱 강력해진 신규 장비를 얻을 수 있답니다.\n아바타와 캐시 액세서리, 헤니르의 시공 장비, 비밀 던전 장비, 캐시 아이템은 변경되지\n않으니 참고해주세요!
	Bye_Talk = STR_ID_1079,

	COMMON_NPC_LOCATION =
	{
	    { WORLD_ID["WI_VILLAGE_RUBEN"],  9338.654, 1133.48, -1423.266,},
	    { WORLD_ID["WI_VILLAGE_ELDER"],  -461, 477, -151,},
	    { WORLD_ID["WI_VILLAGE_BESMA"],  1750, 5360, -3170,},
	    { WORLD_ID["WI_VILLAGE_ALTERA"],  -966, 917, 949, 0, -40, 0},
	    { WORLD_ID["WI_VILLAGE_PEITA"],  -7563.684, 518.464, -3342.396,},
	    { WORLD_ID["WI_VILLAGE_VELDER"],  597.198, 341.921, 16.274,},
	    { WORLD_ID["WI_VILLAGE_HAMEL"],  908.22, 603.636, 608.712, 0, 0, 0, 700},
		{ WORLD_ID["WI_VILLAGE_SANDER"],  -1611.42, 1107.641, -8243.335, 0, 0, 0, 700},
	},

	
	NPC_ID_LIST = 
	{
		NPC_UNIT_ID["NUI_ARIEL"],
	},
	
	SHOP_CATEGORY_TYPE_LIST =
	{
		BUY_ITEM_CATEGORY["BIC_SPECIAL"],
	},
	
	TALK_BOX =
 	{
		--{ MESSAGE = STR_ID_14597 },--2011/11/17 제거
		--{ MESSAGE = STR_ID_14598 },--2011/11/17 제거
		--{ MESSAGE = STR_ID_15381 },--2011/12/29 제거
		--{ MESSAGE = STR_ID_15455 },--2011/12/29 제거 (Dream 교환권 드립)		
		--{ MESSAGE = STR_ID_15997 },--2012/02/16 제거
		--{ MESSAGE = STR_ID_16149 },--2012/03/29 제거 (공존의 축제 멘트)신나는 공존의 축제!\n연금 술사들이 축제\n파이를 나눠드리고\n있다고 해요.\n무료로 구입 할 수\n있으니 참고하세요~
		--{ MESSAGE = STR_ID_16150 },--2012/03/29 제거 (공존의 축제 멘트)타락한 엘을\n정화하는 퀘스트를\n매일 진행하시면\n최고의 속성 아이템을\n교환 받을 수 있어요~
		--{ MESSAGE = STR_ID_16151 },--2012/03/29 제거 (공존의 축제 멘트)토,일요일 오후\n12시 ~ 3시까지\n신나는 공존의 축제\n주말 파티가 열려요!\n절대 놓치지 마세요~
		--{ MESSAGE = STR_ID_16292 },--2012/04/12 제거	재미있는 만우절\n기념 아이템이 지급\n되었습니다.\n매일 우편함을\n꼭 확인해보셔요~
		--{ MESSAGE = STR_ID_16293 },--2012/04/12 제거	엘라보르 주간을\n맞아 자연 보호 운동\n에 동참해주실 용사님\n을 찾고 있어요~
		--{ MESSAGE = STR_ID_16470 },--2012/04/26 제거	벨더 아카데미 시험\n주간 시작~! 우편함을\n꼭 확인 하시고 저의\n일일 퀘스트 수행으로\n다양하고 큰 보상도 획득하세요!
		--{ MESSAGE = STR_ID_16471 },--2012/04/26 제거	엘리오스 데일리 파티\n4월 26일 까지\n매일매일 다른 선물이\n우편함으로 제공되요!
		--{ MESSAGE = STR_ID_17276 },	--2012/05/31 제거	5월 20일\n엘소드 어드벤처 오픈\n모험과 재미있는\n체험이 가득하답니다\n함께 가볼까요?				
		--{ MESSAGE = STR_ID_20871 },--2012/11/10, 코보익스프레스티켓 퀘스트에 대한 설명
		--{ MESSAGE = STR_ID_21217 },	--2012/12/20 제거	그랜드 아처!\n코드 네메시스!\n상향 기념 이벤트!\n레나,이브 님들은\n우편에 선물을 확인해\n주세요.
		--{ MESSAGE = STR_ID_21218 },	--2012/12/20 제거	천년 여우의\n그녀가 곧 여러분 앞에\n모습을 드러냅니다\n퀘스트로 살짝 그녀에\n대해 들여다 볼까요?
		--{ MESSAGE = STR_ID_21219 },	--2012/12/20 제거	모험가님들을 위한\n천년 여우의 선물이\n우편에 도착했습니다.\n어떤 선물을 보냈을까?\n궁금하시죠?
		--{ MESSAGE = STR_ID_23335 },--2013/02/21, (밸런스 개편3) 2월 14일!\n드디어 마지막 역습이\n시작되었어!\n이번에는 또 얼마나\n강해질지!\n이제 엘소드 최강은\n누가될까?
		--{ MESSAGE = STR_ID_23585 },	--2013/3/28 제거	대륙 곳곳에 새로운\n악당들이 나타났어요!\n모험가님!이 악당들을\n물리치고 부디 혼란을\n잠재워주세요.
	},
	
}	
	
House[ HOUSE_ID["HI_HELLEN_SHOP_HOUSE"] ] = 
{
    -- 헬렌
	Type = HOUSE_TYPE["HT_NPC_HOUSE"],
	Name = STR_ID_1080,
		
	QuestInfoPosX = 550, 
	QuestInfoPosY = 200,
	
	EventQuestInfoPosX = 499, 
	EventQuestInfoPosY = 280,
	
	NPCTextureName = "dlg_common_new_texture70.tga",
	NPCTextureKey = "NPC_HELREN",

	NPCTexturePosX = 134,
	NPCTexturePosY = 641,
	
	NPCMeshName = "Motion_Npc_All_Hellen.x",	
	NPCMeshPos = {0, 0, 0},
	NPCMeshRot = {0, 0, 0},
	NPCMeshScale = {1.27, 1.27, 1.27},
	
	NPCJoinTalk = { "HELLEN_SHOP_HOUSE_Wait_Talk.ogg", "HELLEN_SHOP_HOUSE_Wait_Talk2.ogg", },
	NPCByeTalk  = { "HELLEN_SHOP_HOUSE_Bye_Talk.ogg", "HELLEN_SHOP_HOUSE_Bye_Talk2.ogg", },
	
	JoinArea = 560,		
	
	REPAIR_NPC = TRUE,
	SELL_NPC	= TRUE,
	
	Wait_Talk = STR_ID_1081,
	Shop_Talk = STR_ID_1082,
	Quest_Talk = STR_ID_1083,
	Bye_Talk = STR_ID_1084,

	COMMON_NPC_LOCATION =
	{	    
		-- 던전 게이트에서 헬렌 위치
	    { WORLD_ID["WI_DUNGEON_GATE_RUBEN"],  -1228.321, 84.225, 450.0, },
	    { WORLD_ID["WI_DUNGEON_GATE_ELDER"],  4121.273, 1129.055, 819.699, 0, 0, 0, 900},
	    { WORLD_ID["WI_DUNGEON_GATE_BESMA"],  2062, 1101, 300, },
	    { WORLD_ID["WI_DUNGEON_GATE_ALTERA"], 2002, 1096, 294, },
	    --{ WORLD_ID["WI_VILLAGE_PEITA"],  17600, 1100, 200, },
	    { WORLD_ID["WI_DUNGEON_GATE_VELDER"], -1699.262, 101.675, -233.36, },
	    --{ WORLD_ID["WI_DUNGEON_GATE_HAMEL"], -8079.814, 4935.0,	-11840.419, },
	    { WORLD_ID["WI_DUNGEON_GATE_HAMEL"], -8079.814, 4935.0,	-11840.419 + 12000, },


		-- 보스 스테이지에서 헬렌 위치 (마지막 좌표는 StartPos가 찍힌 라인맵에서 +130 )
		--없는 던전--
	    { WORLD_ID["WI_EL_FOREST_WEST_STAGE3"],  5146, 960, 130, },
	    { WORLD_ID["WI_EL_FOREST_MAIN_STAGE4"],  1941, 100, 223, },
	    { WORLD_ID["WI_NOVICE_FOREST_STAGE2"],  1265, 0, 130, },
	    { WORLD_ID["WI_EL_FOREST_EXTRA_STAGE4"],  3946, 1660, 130, },
	    { WORLD_ID["WI_EL_FOREST_NORTH_STAGE3"],  2997, 0, 130, },
	    { WORLD_ID["WI_EL_FOREST_EXTRA_CAVE_STAGE5"],  1993, 720, 130, },
		{ WORLD_ID["WI_ELDER_NATURE_CAVE_STAGE3"],  1490, 720, 130, },
		{ WORLD_ID["WI_ELDER_WALLY_CASTLE_LAB_STAGE5"],  9280, 204, 130, },
		{ WORLD_ID["WI_BESMA_DRAGON_ROAD_CANYON_STAGE4"],  1250, 0, 130, },
	    { WORLD_ID["WI_BESMA_MINE_STAGE4"],  -1349, 240, -57, },
		{ WORLD_ID["WI_BESMA_LAKE_CANYON_STAGE4"],  1650, 360, 650, },
		{ WORLD_ID["WI_TRAINING_CENTER_FREESTAGE"],  1600, 240, 130, },
		{ WORLD_ID["WI_EVENT_TREE_DAY_STAGE_BOSS"],  1645, 0, 140, },
		{ WORLD_ID["WI_EVENT_HALLOWEEN_STAGE_BOSS"], 1436, 720, 130 },	
		
		---루벤--
		--{ WORLD_ID["WI_RUBEN_EL_TREE_BOSS_STAGE"],  148, 720, -420, },
		{ WORLD_ID["WI_RUBEN_EL_TREE_BOSS_STAGE"],  -730, 243, -580, },
		{ WORLD_ID["WI_RUBEN_RUIN_OF_ELF_BOSS_STAGE"],  60.2421, 142, 130, },
		{ WORLD_ID["WI_RUBEN_SWAMP_BOSS_STAGE"],  426,171,686, },
	    
		
		--엘더--
	    { WORLD_ID["WI_ELDER_DRUID_FOREST_STAGE3"],  2636, 240, 130, },  
	    { WORLD_ID["WI_ELDER_BENDERS_CAVE_STAGE3"],  1471, 0, 143, },
	    { WORLD_ID["WI_ELDER_BELOW_PASSAGE_STAGE4"],  2115, 140, 130, },
	    { WORLD_ID["WI_ELDER_WALLY_CASTLE_ROOF_STAGE4"], 0, 160, 130, },
	    { WORLD_ID["WI_ELDER_WALLY_CASTLE_CENTER_STAGE4"],  0, 0, -57, },
	    
	    --베스마--
	    { WORLD_ID["WI_BESMA_DRAGON_ROAD_STAGE4"],  1250, 0, 130, },
	    { WORLD_ID["WI_BESMA_LAKE_STAGE4"],  1650, 360, 650, },
	    { WORLD_ID["WI_BESMA_LAKE_NIGHT_STAGE4"],  1650, 360, 650, },
	    { WORLD_ID["WI_BESMA_DRAGON_NEST_STAGE4"],  1925, 480, 649, },
	    { WORLD_ID["WI_BESMA_MINE2_STAGE4"],  750, 240, -57, },
	    { WORLD_ID["WI_BESMA_AIRSHIP_STAGE5"],  2500, 133, 130, },
		{ WORLD_ID["WI_NEW_BESMA_DRAGON_ROAD_STAGE4"],  1295.66, 480, 130, },
	    
		
		--알테라--
	    { WORLD_ID["WI_ALTERA_BATTLE_AIR_SHIP_STAGE6"],  2502, 3053, -325, },
	    { WORLD_ID["WI_ALTERA_PLAIN_RECYCLE_STAGE3"],  2600, 0, 130, },
	    { WORLD_ID["WI_ALTERA_PLAIN_RECYCLE_STAGE4"],  1700, 0, 130, },
	    { WORLD_ID["WI_ALTERA_BELOW_TUNNEL_STAGE4"],  2500, 0, 130, },
	    { WORLD_ID["WI_ALTERA_PLAIN_STAGE3"],  2600, 0, 130, },
	    { WORLD_ID["WI_ALTERA_NASOD_FACTORY_BOSS"],  1500, 0, 130, },
	    { WORLD_ID["WI_ALTERA_CORE_BOSS_STAGE"],  2237, 1682, 381, },
	    
	    
		--페이타--
	    { WORLD_ID["WI_PEITA_OFFERINGS_STAGE_BOSS"],  -1945, 658, -151, },
	    { WORLD_ID["WI_PEITA_SPIRAL_CORRIDOR_STAGE_BOSS"],  -2000, 1797, -325, },
	    { WORLD_ID["WI_PEITA_CHAPEL_STAGE_BOSS"],  3.18506, 0, 130, },
	    { WORLD_ID["WI_PEITA_UNDER_GARDEN_STAGE_BOSS"],  51.7057, 762, -1192, },
	    { WORLD_ID["WI_PEITA_TOWER_HEART_STAGE_BOSS"],  0, 1671, 130, },
	    { WORLD_ID["WI_PEITA_OFFERINGS_ALTER_STAGE_BOSS"],  0, 4743, 798, },
		
		
		--벨더--
		{ WORLD_ID["WI_VELDER_THIRD_DWELLING_STAGE_BOSS"],  567, 0, -965, },
		{ WORLD_ID["WI_VELDER_BRIDGE_HOPE_STAGE_BOSS"],  5104.96, 1097, -5386, },
		{ WORLD_ID["WI_VELDER_PALACE_ENTRANCE_STAGE_BOSS"],  -96.3749, 18, 3301.41,  },
		{ WORLD_ID["WI_VELDER_BRIDGE_BURNING_BOSS_STAGE"],  4882, 1817, -5386   },	
		{ WORLD_ID["WI_VELDER_MARKET_BOSS_STAGE"], 225.842, 200, 3473.76 },			
		{ WORLD_ID["WI_VELDER_GATE_BOSS_STAGE"], 3247.07, 1440, 130 },	
		
		--하멜--
		{ WORLD_ID["WI_HAMEL_RESIAM_BOSS_STAGE"], 30, 205, -2146 },	
		{ WORLD_ID["WI_HAMEL_WATERWAY_CORE_BOSS_STAGE"], 0, 0, 130 },
		{ WORLD_ID["WI_HAMEL_RESIAM_UNDERWATER_BOSS_STAGE"], 3775, 451, 113 },
		{ WORLD_ID["WI_HAMEL_WATERWAY_BOSS_STAGE"], 370, 0, 130 },
		{ WORLD_ID["WI_HAMEL_CAVE_OF_MAGMANTA_BOSS_STAGE"], -50, 357, -2121 },
		{ WORLD_ID["WI_HAMEL_FROZEN_WATER_TEMPLE_B0SS_STAGE"], 0, 5740, -4000 },
		{ WORLD_ID["WI_HAMEL_FROZEN_WATER_HALL_BOSS_STAGE"], 143, 770, 170 },		
		   
		--비던--
		{ WORLD_ID["WI_ELDER_SECRET_BOSS"],  -462.239, 240, -374, },
		{ WORLD_ID["WI_ELDER_HELL_EXTRA_STAGE5"],  -462.239, 240, -374, },
		{ WORLD_ID["WI_BESMA_HELL_BOSS"],  2036, 479, 355, },
		{ WORLD_ID["WI_BESMA_HELL_EXTRA_BOSS"],  2036, 479, 355, },
		{ WORLD_ID["WI_BESMA_SECRET_BOSS"],  1925, 480, 649, },
		{ WORLD_ID["WI_ALTERA_SECRET_BOSS"],  1900, 60, 130, },
		{ WORLD_ID["WI_VELDER_SECRET_BOSS_STAGE"], 917, 18, 3301 },	
		{ WORLD_ID["WI_VELDER_SECRET_EXTRA_BOSS_STAGE"], 917, 18, 3301 },	

		--디펜스--
		{ WORLD_ID["WI_DEFENCE_DUNGEON_NORMAL_STAGE"], -14, 4177, -4996 },  
		{ WORLD_ID["WI_DEFENCE_DUNGEON_HARD_STAGE"], -14, 4177, -4996 },		
		{ WORLD_ID["WI_DEFENCE_DUNGEON_EXPERT_STAGE"], 1040, 4655, -4944 },
		
		--휴식처--
		{ WORLD_ID["WI_BATTLE_FIELD_ELDER_FIELD_REST_00"], 16200, 2515, -4300 },
		{ WORLD_ID["WI_BATTLE_FIELD_BESMA_FIELD_REST_00"], 500, 2220, 7785, 0, 0, 0, 500 },		
		{ WORLD_ID["WI_BATTLE_FIELD_ALTERA_FIELD_REST_00"], -661, 5478, -20178, 0, -20, 0 },  
		{ WORLD_ID["WI_BATTLE_FIELD_VELDER_FIELD_REST_00"], -9719, 741, 1630 },
		{ WORLD_ID["WI_BATTLE_FIELD_HAMEL_FIELD_REST_00"], 54033, 4441, 434 },
		{ WORLD_ID["WI_BATTLE_FIELD_SANDER_FIELD_REST_00"], -2142.776, 22492.041, -59249.441 },
	},

	NPC_ID_LIST = 
	{
		NPC_UNIT_ID["NUI_HELLEN"],
	},
	
	SHOP_CATEGORY_TYPE_LIST =
	{	
	    BUY_ITEM_CATEGORY["BIC_QUICK_SLOT"],
		BUY_ITEM_CATEGORY["BIC_WEAPON"],		
		BUY_ITEM_CATEGORY["BIC_SPECIAL"],
	},
}		

House[ HOUSE_ID["HI_ALLEGRO_PEITA_HOUSE"] ] = 
{
    -- 알레그로
	Type = HOUSE_TYPE["HT_ALCHEMIST_HOUSE"],
	Name = STR_ID_26258,
		
	QuestInfoPosX = 550, 
	QuestInfoPosY = 200,
	
	EventQuestInfoPosX = 499, 
	EventQuestInfoPosY = 280,
	
	NPCTextureName = "dlg_common_new_texture72.tga",
	NPCTextureKey = "NPC_ALEGRO",

	NPCTexturePosX = 134,
	NPCTexturePosY = 641,
	
	NPCMeshName = "Motion_Npc_Peita_Allegro.x",	
	NPCMeshPos = {0, 0, 0},
	NPCMeshRot = {0, 0, 0},
	NPCMeshScale = {1.2, 1.2, 1.2},
	
	NPCJoinTalk = { "ALLEGRO_PEITA_HOUSE_Wait_Talk.ogg", "ALLEGRO_PEITA_HOUSE_Wait_Talk2.ogg", },
	NPCByeTalk  = { "ALLEGRO_PEITA_HOUSE_Bye_Talk.ogg", "ALLEGRO_PEITA_HOUSE_Bye_Talk2.ogg", },
	
	JoinArea = 500,		
	
	MAKING_NPC = TRUE,
	ATTRIBUTE = TRUE,
	SELL_NPC	= TRUE,
	
	
	Wait_Talk = STR_ID_1086,	
	Quest_Talk = STR_ID_1087,
	Exchange_Talk = STR_ID_3843,
	Bye_Talk = STR_ID_1088,

	COMMON_NPC_LOCATION =
	{	    
	    --{ WORLD_ID["WI_DUNGEON_GATE_BESMA"],  13100, 31, -800, },
	    { WORLD_ID["WI_VILLAGE_PEITA"],  -7347.549, 1496.973, -1164.323, },
	},

	
	NPC_ID_LIST = 
	{
		NPC_UNIT_ID["NUI_ALLEGRO"],
	},
	
}		

House[ HOUSE_ID["HI_LENTO_PEITA_HOUSE"] ] = 
{
    -- 렌토
	Type = HOUSE_TYPE["HT_EQUIP_SHOP"],
	Name = STR_ID_26257,
		
	QuestInfoPosX = 550, 
	QuestInfoPosY = 200,
	
	EventQuestInfoPosX = 499, 
	EventQuestInfoPosY = 280,
	
	NPCTextureName = "dlg_common_new_texture70.tga",
	NPCTextureKey = "NPC_RENTO",

	NPCTexturePosX = 134,
	NPCTexturePosY = 641,
	
	NPCMeshName = "Motion_Npc_Peita_Lento.x",	
	NPCMeshPos = {0, 0, 0},
	NPCMeshRot = {0, 0, 0},
	NPCMeshScale = {1.4, 1.4, 1.4},
	
	NPCJoinTalk = { "LENTO_PEITA_HOUSE_Wait_Talk.ogg", "LENTO_PEITA_HOUSE_Wait_Talk2.ogg", },
	NPCByeTalk  = { "LENTO_PEITA_HOUSE_Bye_Talk.ogg", "LENTO_PEITA_HOUSE_Bye_Talk2.ogg", },
	
	JoinArea = 500,
	
	ENCHANT = TRUE,
	MAKING_NPC 	= TRUE,
	REPAIR_NPC = TRUE,
	SELL_NPC	= TRUE,
	
	Wait_Talk = STR_ID_1090,	
	Quest_Talk = STR_ID_1091,
	Bye_Talk = STR_ID_1092,

	COMMON_NPC_LOCATION =
	{	    
	    --{ WORLD_ID["WI_DUNGEON_GATE_BESMA"],  14056, 31, -800, },
	    { WORLD_ID["WI_VILLAGE_PEITA"],  -6104.926, 1496.973, -1122.664, },
	},

	
	NPC_ID_LIST = 
	{
		NPC_UNIT_ID["NUI_LENTO"],
	},
	
}		

-- 우체통, 우편함	
House[ HOUSE_ID["HI_POSTBOX"] ] = 
{
	Type = HOUSE_TYPE["HT_POSTBOX"],
	Name = STR_ID_754,

    NPCMeshName = "Village_PostBox.X",	
	NPCMeshPos = {0, 0, 0},
	NPCMeshRot = {0, 0, 0},
	NPCMeshScale = {1.0, 1.0, 1.0},
	
	JoinArea = 450,		
	
	COMMON_NPC_LOCATION =
	{	    
	    { WORLD_ID["WI_VILLAGE_RUBEN"],  3766.969, 55.044, 360.000, 0, 0, 0},
	    { WORLD_ID["WI_VILLAGE_ELDER"],  720, 1812.72, 2820,},
	    { WORLD_ID["WI_VILLAGE_BESMA"],  1776.706, 3123.739, -3955.38,},
	    { WORLD_ID["WI_VILLAGE_ALTERA"],  -2763, 286, 329,},
	    { WORLD_ID["WI_VILLAGE_PEITA"],  -11758.194, 1577.217, -1292.539},
	    { WORLD_ID["WI_VILLAGE_VELDER"],  -953.867, 765.87, 1654.633, 0, 20, 0},
	    { WORLD_ID["WI_VILLAGE_HAMEL"],  3871.405, 585.94, 1702.175, 0, 40, 0 },
		{ WORLD_ID["WI_VILLAGE_SANDER"],  -1438.335, 1380.957, -1229.702, 0, 0, 0 },
		
		--휴식처--
		{ WORLD_ID["WI_BATTLE_FIELD_ELDER_FIELD_REST_00"], 17633, 2415, -4300 , 0, 0, 0, 500 },
		{ WORLD_ID["WI_BATTLE_FIELD_BESMA_FIELD_REST_00"], -455, 2100, 7615 , 0, 0, 0, 500 },
		{ WORLD_ID["WI_BATTLE_FIELD_ALTERA_FIELD_REST_00"], -3558, 5378, -20136, 0, 25, 0, 500 },
		{ WORLD_ID["WI_BATTLE_FIELD_VELDER_FIELD_REST_00"], -7763, 662, 1551 , 0, 0, 0, 500 },
		{ WORLD_ID["WI_BATTLE_FIELD_HAMEL_FIELD_REST_00"], 51299, 4441, 434, 0, 0, 0, 500 },		
		{ WORLD_ID["WI_BATTLE_FIELD_SANDER_FIELD_REST_00"], -1024.214, 22380.662, -59183.211 },
	},
	TALK_BOX =
 	{
		--{ MESSAGE = STR_ID_16231 },--2012/03/29
	},
}	







House[ HOUSE_ID["HI_EVENT_NPC1"] ] = 
{
    -- 이벤트 npc
	Type = HOUSE_TYPE["HT_NPC_HOUSE"],
	Name = STR_ID_1093,

    NPCMeshName = "Motion_PPORU_TOWN.x",	
	NPCMeshPos = {0, 0, 0},
	NPCMeshRot = {0, 0, 0},
	NPCMeshScale = {1.3, 1.3, 1.3},
	
	JoinArea = 700,		
	
	EVENT_NPC = TRUE,
	-- 이벤트 시간 설정 (년, 월, 일, 시간, 활성시간(분), 대기시간(분))
	EVENT_NPC_TIME = { 2009, 4, 8, 0, 5, 5, },
	
	Wait_Talk = STR_ID_1094,	
	Quest_Talk = STR_ID_1095,
	Bye_Talk = STR_ID_1096,
	
	COMMON_NPC_LOCATION =
	{	    
	    { WORLD_ID["WI_VILLAGE_RUBEN"],  11168.07, 1051, -1278, 0, 0, 0},
	    { WORLD_ID["WI_VILLAGE_ELDER"],  -1500, 1051, 950, 0, -30, 0},
	},
	
	NPC_ID_LIST = 
	{
		NPC_UNIT_ID["NUI_PPORU_TOWN"],
	},
}	

House[ HOUSE_ID["HI_EVENT_NPC2"] ] = 
{
    -- 이벤트 npc
	Type = HOUSE_TYPE["HT_NPC_HOUSE"],
	Name = STR_ID_1097,

    NPCMeshName = "Motion_BENDERS_TOWN.x",	
	NPCMeshPos = {0, 0, 0},
	NPCMeshRot = {0, 0, 0},
	NPCMeshScale = {1.1, 1.1, 1.1},
	
	JoinArea = 700,		
	
	EVENT_NPC = TRUE,
	-- 이벤트 시간 설정 (년, 월, 일, 시간, 활성시간(분), 대기시간(분))
	EVENT_NPC_TIME = { 2009, 4, 8, 0, 5, 5, },
	
	Wait_Talk = STR_ID_1098,	
	Quest_Talk = STR_ID_1099,
	Bye_Talk = STR_ID_1100,
	
	COMMON_NPC_LOCATION =
	{	    
	    { WORLD_ID["WI_VILLAGE_BESMA"],  5493, 5024.59, -3023, 0, 0, 0},
	    { WORLD_ID["WI_VILLAGE_ALTERA"],  1000, 815, 1300, 0, 40, 0},
	},
	
	NPC_ID_LIST = 
	{
		NPC_UNIT_ID["NUI_BENDERS_TOWN"],
	},
}	

House[ HOUSE_ID["HI_WILLIAM_PORTER1"] ] = 
{
    -- 윌리엄(루벤) npc
	Type = HOUSE_TYPE["HT_NPC_HOUSE"],
	Name = "윌리엄",

    NPCMeshName = "Motion_NPC_RUBEN_WilliamBBoru.x",	
	NPCMeshPos = {0, 0, 0},
	NPCMeshRot = {0, 0, 0},
	NPCMeshScale = {1.3, 1.3, 1.3},
	
	JoinArea = 500,		
		
	Wait_Talk = "윌리엄의 시공에 도전해 보겠는가?! 그 정도의 용기는 있겠지?",
	Quest_Talk = "나는 관대하다... 너무 어려운 과제는 참아주도록 하지...",
	Bye_Talk = "언제든 다시 찾아오라구!",

	COMMON_NPC_LOCATION =
	{
		-- 루벤 마을에서 윌리엄 위치
	    { WORLD_ID["WI_VILLAGE_RUBEN"],  11168.07, 1051, -1278, 0, 0, 0 },


		-- 이벤트 던전 라운지에서 위치
	    { WORLD_ID["WI_TRAINING_CENTER_FREESTAGE"],  200, 240, 130, },

	},

	
	NPC_ID_LIST = 
	{
		NPC_UNIT_ID["NUI_WILLIAM_PORTER"],
	},
}

House[ HOUSE_ID["HI_WILLIAM_PORTER2"] ] = 
{
    -- 윌리엄(엘더) npc
	Type = HOUSE_TYPE["HT_NPC_HOUSE"],
	Name = "윌리엄",

    NPCMeshName = "Motion_NPC_ELDER_WilliamBBoru.x",	
	NPCMeshPos = {0, 0, 0},
	NPCMeshRot = {0, 0, 0},
	NPCMeshScale = {1.3, 1.3, 1.3},
	
	JoinArea = 600,		
		
 	Wait_Talk = "윌리엄의 시공에 도전해 보겠는가?! 그 정도의 용기는 있겠지?",
	Quest_Talk = "나는 관대하다... 너무 어려운 과제는 참아주도록 하지...",
	Bye_Talk = "언제든 다시 찾아오라구!",
	
	COMMON_NPC_LOCATION =
	{
		-- 엘더 마을에서 윌리엄 위치
	    { WORLD_ID["WI_VILLAGE_ELDER"],  -1500, 1051, 950, 0, -30, 0 },


		-- 이벤트 던전 라운지에서 위치
	    { WORLD_ID["WI_TRAINING_CENTER_FREESTAGE"],  200, 240, 130, },

	},
	
	NPC_ID_LIST = 
	{
		NPC_UNIT_ID["NUI_WILLIAM_PORTER"],
	},
}

House[ HOUSE_ID["HI_WILLIAM_PORTER3"] ] = 
{
    -- 윌리엄(베스마) npc
	Type = HOUSE_TYPE["HT_NPC_HOUSE"],
	Name = "윌리엄",

    NPCMeshName = "Motion_NPC_BESMA_WilliamBBoru.x",	
	NPCMeshPos = {0, 0, 0},
	NPCMeshRot = {0, 0, 0},
	NPCMeshScale = {1.3, 1.3, 1.3},
	
	JoinArea = 400,		
		
 	Wait_Talk = "윌리엄의 시공에 도전해 보겠는가?! 그 정도의 용기는 있겠지?",
	Quest_Talk = "나는 관대하다... 너무 어려운 과제는 참아주도록 하지...",
	Bye_Talk = "언제든 다시 찾아오라구!",
	
	COMMON_NPC_LOCATION =
	{
		-- 베스마 마을에서 윌리엄 위치
	    { WORLD_ID["WI_VILLAGE_BESMA"],  5578.50, 5024.06, -3211.49, 0, 0, 0 },


		-- 이벤트 던전 라운지에서 위치
	    { WORLD_ID["WI_TRAINING_CENTER_FREESTAGE"],  200, 240, 130, },

	},
	
	NPC_ID_LIST = 
	{
		NPC_UNIT_ID["NUI_WILLIAM_PORTER"],
	},
}

House[ HOUSE_ID["HI_WILLIAM_PORTER4"] ] = 
{
    -- 윌리엄(알테라) npc
	Type = HOUSE_TYPE["HT_NPC_HOUSE"],
	Name = "윌리엄",

    NPCMeshName = "Motion_NPC_ALTERA_WilliamBBoru.x",	
	NPCMeshPos = {0, 0, 0},
	NPCMeshRot = {0, 0, 0},
	NPCMeshScale = {1.3, 1.3, 1.3},
	
	JoinArea = 600,		
		
 	Wait_Talk = "윌리엄의 시공에 도전해 보겠는가?! 그 정도의 용기는 있겠지?",
	Quest_Talk = "나는 관대하다... 너무 어려운 과제는 참아주도록 하지...",
	Bye_Talk = "언제든 다시 찾아오라구!",
	
	COMMON_NPC_LOCATION =
	{
		-- 알테라 마을에서 윌리엄 위치
	    { WORLD_ID["WI_VILLAGE_ALTERA"],  1000, 815, 1300, 0, 40, 0 },


		-- 이벤트 던전 라운지에서 위치
	    { WORLD_ID["WI_TRAINING_CENTER_FREESTAGE"],  200, 240, 130, },

	},
	
	NPC_ID_LIST = 
	{
		NPC_UNIT_ID["NUI_WILLIAM_PORTER"],
	},
}

-- 게시판
House[ HOUSE_ID["HI_BILLBOARD"] ] = 
{
	Type = HOUSE_TYPE["HT_BILLBOARD"],
	Name = STR_ID_3723,

	--QuestInfoPosX = 727, 
	--QuestInfoPosY = 253,
	
	--EventQuestInfoPosX = 669, 
	--EventQuestInfoPosY = 343,
	
	--NPCTextureName = "DLG_Common_New_Texture41.tga",		-- fix!!
	--NPCTextureKey = "NUI_HAGERS_NAME",						-- fix!!

	NPCTexturePosX = 154,
	NPCTexturePosY = 637,
	
	--TitleTextureName	= "DLG_Common_New_Texture14.tga",	-- fix!!
	--TitleTextureKey		= "House_Village_CityHall",			-- fix!!
	
	NPCMeshName = "Motion_NPC_ALL_BILLBOARD.x",
	NPCMeshPos = {0, 0, 0},
	NPCMeshRot = {0, 0, 0},
	NPCMeshScale = { 0.9, 0.9, 0.9 },
	
	JoinArea = 450,		
	
	PERSONAL_SHOP = TRUE, -- 개인 상점 검색 시스템
	GUILD = TRUE, -- 길드 게시판
	RANKING = TRUE,
	--EVENT1	= TRUE,
	--EVENT2	= TRUE,
	--EVENT3	= TRUE,
	--EVENT4	= TRUE,

	Wait_Talk = STR_ID_3844,
	Ranking_Talk = STR_ID_3845,
	GuildAD_Talk = STR_ID_4912,
	PersonalShop_Talk = STR_ID_4984,
	Bye_Talk = STR_ID_3846,
	
	COMMON_NPC_LOCATION =
	{	    
		{ WORLD_ID["WI_VILLAGE_RUBEN"],  		11191.144, 1038.54, -1311.727,				},
		{ WORLD_ID["WI_DUNGEON_GATE_RUBEN"],  	7320, 0, 300,								},
		{ WORLD_ID["WI_VILLAGE_ELDER"],  		1397, 1037.201, 948, 0, 30, 0, 400			},
		{ WORLD_ID["WI_DUNGEON_GATE_ELDER"],  	8608.723, 999.847, 421.904, 0, 0, 0, 600	},
		{ WORLD_ID["WI_VILLAGE_BESMA"],  		3826.923, 5740.703, -2657.457, 0, 0, 0, 400  	},
		{ WORLD_ID["WI_DUNGEON_GATE_BESMA"],  	6550, 1236.217, 200,						},
		{ WORLD_ID["WI_VILLAGE_ALTERA"], 		995.483, 807.676, 1003.463, 0, 50, 0, 		},
		{ WORLD_ID["WI_DUNGEON_GATE_ALTERA"],  	4360, 1000, 300,							},
		{ WORLD_ID["WI_VILLAGE_PEITA"],	-8889.451, 1627.947, -1287.789,				},
		{ WORLD_ID["WI_VILLAGE_VELDER"],        -1836.314, 464.409, 212.094,                },
		{ WORLD_ID["WI_DUNGEON_GATE_VELDER"],   2112.628, -1.236, -233.36,                  },
		{ WORLD_ID["WI_VILLAGE_HAMEL"],			-2240.592, 583.941, 3388.178, 0, -65, 0,	},
		{ WORLD_ID["WI_DUNGEON_GATE_HAMEL"],	-5788.464, 4844.685, -12015.385 + 12000,	},
		{ WORLD_ID["WI_VILLAGE_SANDER"],		2355.114, 1107.282, -6223.316, 0, -90, 0	},
		
		--휴식처--
		{ WORLD_ID["WI_BATTLE_FIELD_ELDER_FIELD_REST_00"], 19328, 2415, -4300 , 0, 0, 0, 500 },
		{ WORLD_ID["WI_BATTLE_FIELD_BESMA_FIELD_REST_00"], 1450, 2100, 7610 , 0, 0, 0, 500 },
		{ WORLD_ID["WI_BATTLE_FIELD_ALTERA_FIELD_REST_00"], -2040, 5378, -20472, 0, 5, 0, 500 },  
		{ WORLD_ID["WI_BATTLE_FIELD_VELDER_FIELD_REST_00"], -8593, 649, 1543 , 0, 0, 0, 500 },
		{ WORLD_ID["WI_BATTLE_FIELD_HAMEL_FIELD_REST_00"], 52648, 4441, 434, 0, 0, 0, 500 },	
		{ WORLD_ID["WI_BATTLE_FIELD_SANDER_FIELD_REST_00"], 636.496, 22383.838, -59183.211 },
	},
	
	
	
	--NPCJoinTalk = { "HAGERS_HOUSE_Wait_Talk.ogg", "HAGERS_HOUSE_Wait_Talk2.ogg", },
	--NPCByeTalk  = { "HAGERS_HOUSE_Bye_Talk.ogg", "HAGERS_HOUSE_Bye_Talk2.ogg", },
	
	
	NPC_ID_LIST = 
	{
		NPC_UNIT_ID["NUI_BILLBOARD"],
	}, 	
}

-- 글레이브
House[ HOUSE_ID["HI_GLAVE_HOUSE"] ] =
{
	Type = HOUSE_TYPE["HT_NPC_HOUSE"],
	Name = STR_ID_3819,

	--QuestInfoPosX = 550,
	--QuestInfoPosY = 200,

	--EventQuestInfoPosX = 499,
	--EventQuestInfoPosY = 280,

	NPCTextureName = "DLG_Common_New_Texture70.TGA",
	NPCTextureKey = "NPC_Glave",

	NPCTexturePosX = 134,
	NPCTexturePosY = 641,

	NPCMeshName = "Motion_NPC_ALL_GLAIVE.x",
	NPCMeshPos = {0, 0, 0},
	NPCMeshRot = {0, 0, 0},
	NPCMeshScale = {1.27, 1.27, 1.27},

	NPCJoinTalk = { "GLAVE_VELDER_HOUSE_Wait_TalkA.ogg", "GLAVE_VELDER_HOUSE_Wait_TalkB.ogg", },
	NPCByeTalk  = { "GLAVE_VELDER_HOUSE_Bye_TalkA.ogg", "GLAVE_VELDER_HOUSE_Bye_TalkB.ogg", },

	JoinArea = 520,

	REPAIR_NPC = TRUE,
	SELL_NPC	= TRUE,
	MAKING_NPC = TRUE,
	EXCHANGE	= TRUE,

	Wait_Talk = STR_ID_3820,
	Shop_Talk = STR_ID_3822,
	Make_Talk = STR_ID_3823,
	Quest_Talk = STR_ID_3821,
	Bye_Talk = STR_ID_3825,	
	Exchange_Talk = STR_ID_3824,

	COMMON_NPC_LOCATION =
	{
		-- 던전 게이트에서 글레이브 위치
	    { WORLD_ID["WI_DUNGEON_GATE_ELDER"],  6750, 1201.869, 855.239, 0, 0, 0, 950},
	    { WORLD_ID["WI_DUNGEON_GATE_BESMA"],  3350, 1100, 250, },
	    { WORLD_ID["WI_DUNGEON_GATE_ALTERA"],  3370, 1100, 250, },
	    { WORLD_ID["WI_VILLAGE_PEITA"],  -11102.931, 1078.239, -3092.143, },
	    { WORLD_ID["WI_DUNGEON_GATE_VELDER"], 1393.005, 101.675, -233.36, },
	    { WORLD_ID["WI_DUNGEON_GATE_HAMEL"], -7091.401, 4935.0,	-11740.419 + 12000, 0, 0, 0, 620},


		-- 헤니르 상자방에서 글레이브 위치 (마지막 좌표는 StartPos가 찍힌 라인맵에서 +130 )
	    { WORLD_ID["WI_ARCADE_NEW_STAGE_REST"],  -15, 240, 130, },

		--휴식처--
		{ WORLD_ID["WI_BATTLE_FIELD_ELDER_FIELD_REST_00"], 20985, 2515, -4300 },	
		{ WORLD_ID["WI_BATTLE_FIELD_BESMA_FIELD_REST_00"], 60, 1720, 5280 },		
		{ WORLD_ID["WI_BATTLE_FIELD_ALTERA_FIELD_REST_00"], 775, 5478, -19579, 0, -30, 0 },  
		{ WORLD_ID["WI_BATTLE_FIELD_VELDER_FIELD_REST_00"], -6771, 741, 1630, },
		{ WORLD_ID["WI_BATTLE_FIELD_HAMEL_FIELD_REST_00"], 55369, 4438, 826, 0, 15, 0 }, 
		{ WORLD_ID["WI_BATTLE_FIELD_SANDER_FIELD_REST_00"], 1759.507, 22491.57, -59249.441 },
	},

	NPC_ID_LIST =
	{
		NPC_UNIT_ID["NUI_GLAVE"],
	},

	SHOP_CATEGORY_TYPE_LIST =
	{
	    BUY_ITEM_CATEGORY["BIC_QUICK_SLOT"],
		BUY_ITEM_CATEGORY["BIC_SPECIAL"],
	},
	
	TALK_BOX =
 	{
		--{ MESSAGE = STR_ID_13652 },
		--{ MESSAGE = STR_ID_13653 },
		--{ MESSAGE = STR_ID_13654 },
		--{ MESSAGE = STR_ID_15764 },	--2012/02/02
		--{ MESSAGE = STR_ID_17292 },	--2012/06/07 제거. (무라마사 이벤트)무라마사 녀석이\n귀찮은걸 두고 갔군.\n내게 말을 걸어봐.\n재미있는 걸 주지.\n큭큭큭...
		--{ MESSAGE = STR_ID_23186 },	--2013/02/21 제거 (강화 이벤트)큭큭큭...\n2013년 최강자는\n과연 누가 될까?\n너를위해 특별한\n선물을 준비했지
	},
}

-- 은행 NPC(루리엘)
House[ HOUSE_ID["HI_PRIVATE_BANK"] ] =
{
	Type = HOUSE_TYPE["HT_PRIVATE_BANK"],
	Name = STR_ID_3905,				-- NPC 대화창 이름

	--QuestInfoPosX = 550,
	--QuestInfoPosY = 200,

	--EventQuestInfoPosX = 499,
	--EventQuestInfoPosY = 280,

	NPCTextureName = "DLG_Common_New_Texture70.TGA",
	NPCTextureKey = "NPC_Luriel",	-- NPC UI 이미지 밑에 이름

	NPCTexturePosX = 134,
	NPCTexturePosY = 641,

	NPCMeshName = "Motion_Npc_All_Ruriel.x",
    NPCAniTex   = "Motion_Npc_All_Ruriel.XET",
	NPCMeshPos = {0, 0, 0},
	NPCMeshRot = {0, 0, 0},
	NPCMeshScale = {1.27, 1.27, 1.27},

	NPCJoinTalk = { "RURIEL_BANK_HOUSE_Wait_TalkA.ogg", "RURIEL_BANK_HOUSE_Wait_TalkB.ogg", },
	NPCByeTalk  = { "RURIEL_BANK_HOUSE_Bye_TalkA.ogg", "RURIEL_BANK_HOUSE_Bye_TalkB.ogg", },

	JoinArea = 500,

	PRIVATE_BANK	= TRUE,

	Wait_Talk = STR_ID_4311,
	Quest_Talk = STR_ID_4313,
	Bye_Talk = STR_ID_4315,	
	PrivateBank_Talk = STR_ID_4317,
	

	COMMON_NPC_LOCATION =
	{
		-- 은행 임시 위치
	    { WORLD_ID["WI_VILLAGE_RUBEN"],  6977.195, 1274.933, -1716.402, 0, -50, 0},
	    { WORLD_ID["WI_VILLAGE_ELDER"],  0, 1912.53, 2689.291,},
	    { WORLD_ID["WI_VILLAGE_BESMA"],  2687.099, 3223, -3950,},
	    { WORLD_ID["WI_VILLAGE_ALTERA"],  -5218.201, 386, -751.722, 0, -45, 0},
        { WORLD_ID["WI_VILLAGE_VELDER"],  -242.279, 860.789, 2118.722, }, 
        { WORLD_ID["WI_VILLAGE_HAMEL"],  3475.048, 691.657, 2313.206, 0, 40, 0 }, 
		{ WORLD_ID["WI_VILLAGE_PEITA"],  -10704.64, 1577.217, -1202.55, },
		{ WORLD_ID["WI_VILLAGE_SANDER"], -2231.168, 1169.011, -4475.58,0, 90, 0 },
	},

	NPC_ID_LIST =
	{
		NPC_UNIT_ID["NUI_LURIEL"],
	},
}

House[ HOUSE_ID["HI_VANESSA"] ] = 
{
    -- 바네사
	Type = HOUSE_TYPE["HT_NPC_HOUSE"],
	Name = STR_ID_26262,

	QuestInfoPosX = 727, 
	QuestInfoPosY = 253,
	
	EventQuestInfoPosX = 669, 
	EventQuestInfoPosY = 343,
	
	NPCTextureName = "DLG_Common_New_Texture70.tga",
	NPCTextureKey = "NPC_VANESSA",

	NPCTexturePosX = 154,
	NPCTexturePosY = 637,
	
	TitleTextureName	= "DLG_Common_New_Texture14.tga",
	TitleTextureKey		= "House_Village_CityHall",
	
	NPCMeshName = "Motion_NPC_VELDER_VANESSA.x",
	NPCAniTex   = "Motion_NPC_VELDER_VANESSA.XET",
	
	NPCMeshPos = {0, 0, 0},
	NPCMeshRot = {0, 0, 0},
	NPCMeshScale = {1.3, 1.3, 1.3},
	
	NPCJoinTalk = { "VANESSA_VELDER_HOUSE_Wait_TalkA.ogg", "VANESSA_VELDER_HOUSE_Wait_TalkB.ogg", },
	NPCByeTalk  = { "VANESSA_VELDER_HOUSE_Bye_TalkA.ogg", "VANESSA_VELDER_HOUSE_Bye_TalkB.ogg", },
	
	--EXCHANGE	= TRUE,
	
	JoinArea = 800,	
	
	NPC_ID_LIST = 
	{
		NPC_UNIT_ID["NUI_VANESSA"],
	},
	
	COMMON_NPC_LOCATION =
	{	    
		{ WORLD_ID["WI_VILLAGE_VELDER"],  4754.116, 551.277, 38.595, 0, 10, 0 },
		--{ WORLD_ID["WI_VILLAGE_HAMEL"],  -5597.761, 582.297, 1878.929 },
	},
	
 	Wait_Talk = STR_ID_4650,
	Quest_Talk = STR_ID_4651,
	Exchange_Talk = STR_ID_4652,
	Bye_Talk = STR_ID_4653,
}

House[ HOUSE_ID["HI_PRAUS"] ] = 
{
    -- 프라우스
	Type = HOUSE_TYPE["HT_ACCESSORY_SHOP"],
	Name = STR_ID_26259,
		
	QuestInfoPosX = 550, 
	QuestInfoPosY = 200,
	
	EventQuestInfoPosX = 499, 
	EventQuestInfoPosY = 280,
	
	NPCTextureName = "DLG_Common_New_Texture70.tga",
	NPCTextureKey = "NPC_PRAUS",

	NPCTexturePosX = 134,
	NPCTexturePosY = 641,
	
	NPCMeshName = "Motion_NPC_BELDER_PRAUS.x",	
	NPCAniTex   = "Motion_NPC_BELDER_PRAUS.XET",
	
	NPCMeshPos = {0, 0, 0},
	NPCMeshRot = {0, 0, 0},
	NPCMeshScale = {1.3, 1.3, 1.3},
	
	NPCJoinTalk = { "PRAUS_VELDER_HOUSE_Wait_TalkA.ogg", "PRAUS_VELDER_HOUSE_Wait_TalkB.ogg", },
	NPCByeTalk  = { "PRAUS_VELDER_HOUSE_Bye_TalkA.ogg", "PRAUS_VELDER_HOUSE_Bye_TalkB.ogg", },
	
	JoinArea = 600,	
	
	SELL_NPC	= TRUE,
	MAKING_NPC = TRUE,
	
	COMMON_NPC_LOCATION =
	{	    
		{ WORLD_ID["WI_VILLAGE_VELDER"],  -1948.817, 860.789, 1418.8, 0, -10, 0 },
		--{ WORLD_ID["WI_VILLAGE_HAMEL"],  -1499.448, 707.127, 4447.323 },
	},
	
	Wait_Talk = STR_ID_4654,
	Shop_Talk = STR_ID_4655,
	Quest_Talk = STR_ID_4656,
	Bye_Talk = STR_ID_4657,
	Make_Talk = STR_ID_11600,

	
	NPC_ID_LIST = 
	{
		NPC_UNIT_ID["NUI_PRAUS"],
	},

	SHOP_CATEGORY_TYPE_LIST =
	{
		BUY_ITEM_CATEGORY["BIC_ACCESSORY"],
	},

}

House[ HOUSE_ID["HI_HANNA"] ] = 
{
    -- 한나
	Type = HOUSE_TYPE["HT_EQUIP_SHOP"],
	Name = STR_ID_26260,
	
	QuestInfoPosX = 88, 
	QuestInfoPosY = 359,
	
	EventQuestInfoPosX = 123, 
	EventQuestInfoPosY = 447,
	
	NPCTextureName = "DLG_Common_New_Texture70.tga",
	NPCTextureKey = "NPC_HANNA",

	NPCTexturePosX = 139,
	NPCTexturePosY = 633,

    NPCMeshName = "Motion_NPC_VELDER_HANNA.x",	
	NPCAniTex   = "Motion_NPC_VELDER_HANNA.XET",
	
	NPCMeshPos = {0, 0, 0},
	NPCMeshRot = {0, 0, 0},
	NPCMeshScale = {1.3, 1.3, 1.3},
		
	NPCJoinTalk = { "HANNA_VELDER_HOUSE_Wait_TalkA.ogg", "HANNA_VELDER_HOUSE_Wait_TalkB.ogg", },
	NPCByeTalk  = { "HANNA_VELDER_HOUSE_Bye_TalkA.ogg", "HANNA_VELDER_HOUSE_Bye_TalkB.ogg", },
		
	JoinArea = 600,	
	
	ENCHANT		= TRUE,
	MAKING_NPC 	= TRUE,
	REPAIR_NPC 	= TRUE,
	SELL_NPC	= TRUE,
	
	COMMON_NPC_LOCATION =
	{	    
		{ WORLD_ID["WI_VILLAGE_VELDER"],  2424.573, 860.789, 1612.191, 0, 30, 0 },
		--{ WORLD_ID["WI_VILLAGE_HAMEL"],  -3015.085, 745.516, 2566.593, 0, -45, 0 },
	},
	
	Wait_Talk = STR_ID_4658,
	Make_Talk = STR_ID_10355,
	Shop_Talk = STR_ID_4659,
	Quest_Talk = STR_ID_4660,
	Bye_Talk = STR_ID_4661, 	
	
	NPC_ID_LIST = 
	{
		NPC_UNIT_ID["NUI_HANNA"],
	},

	SHOP_CATEGORY_TYPE_LIST =
	{
		BUY_ITEM_CATEGORY["BIC_WEAPON"],
		BUY_ITEM_CATEGORY["BIC_COAT"],
		BUY_ITEM_CATEGORY["BIC_TROUSERS"],
		BUY_ITEM_CATEGORY["BIC_HAND"],
		BUY_ITEM_CATEGORY["BIC_FOOTWEAR"],
	},

}

House[ HOUSE_ID["HI_NOEL"] ] = 
{
    -- 노엘
	Type = HOUSE_TYPE["HT_NPC_HOUSE"],
	Name = STR_ID_26261,

	QuestInfoPosX = 727, 
	QuestInfoPosY = 253,
	
	EventQuestInfoPosX = 669, 
	EventQuestInfoPosY = 343,
	
	NPCTextureName = "DLG_Common_New_Texture70.tga",
	NPCTextureKey = "NPC_NOEL",

	NPCTexturePosX = 154,
	NPCTexturePosY = 637,
	
	TitleTextureName	= "DLG_Common_New_Texture14.tga",
	TitleTextureKey		= "House_Village_CityHall",
	
	NPCMeshName = "Motion_NPC_VELDER_Noel.x",
	NPCAniTex   = "Motion_NPC_VELDER_Noel.XET",
	
	NPCMeshPos = {0, 0, 0},
	NPCMeshRot = {0, 0, 0},
	NPCMeshScale = {1.3, 1.3, 1.3},
	
	NPCJoinTalk = { "NOEL_VELDER_HOUSE_Wait_TalkA.ogg", "NOEL_VELDER_HOUSE_Wait_TalkB.ogg", },
	NPCByeTalk  = { "NOEL_VELDER_HOUSE_Bye_TalkA.ogg", "NOEL_VELDER_HOUSE_Bye_TalkB.ogg", },
	
	
	JoinArea = 700,	
	
	NPC_ID_LIST = 
	{
		NPC_UNIT_ID["NUI_NOEL"],
	},
	
	COMMON_NPC_LOCATION =
	{	    
		{ WORLD_ID["WI_VILLAGE_VELDER"],  3353.645, 860.789, 1088.987, 0, 25, 0 },
		--{ WORLD_ID["WI_VILLAGE_HAMEL"],  2822.801, 745.514, 3930.801, 0, 45, 0},
	},
	
 	Wait_Talk = STR_ID_4662,
	Quest_Talk = STR_ID_4663,
	Bye_Talk = STR_ID_4664,
}

House[ HOUSE_ID["HI_GRAIL"] ] = 
{
    -- 그레일
	Type = HOUSE_TYPE["HT_ALCHEMIST_HOUSE"],
	Name = STR_ID_26263,

	QuestInfoPosX = 126, 
	QuestInfoPosY = 209,
	
	EventQuestInfoPosX = 237, 
	EventQuestInfoPosY = 248,
	
	NPCTextureName = "DLG_Common_New_Texture70.tga",
	NPCTextureKey = "NPC_GRAIL",

	NPCTexturePosX = 168, --118,
	NPCTexturePosY = 631,
	
	NPCMeshName = "Motion_NPC_BELDER_GRAIL.x",
	NPCAniTex   = "Motion_NPC_BELDER_GRAIL.XET",
	
	NPCMeshPos = {0, 0, 0},
	NPCMeshRot = {0, 0, 0},
	NPCMeshScale = {1.3, 1.3, 1.3},
	
	NPCJoinTalk = { "GRAIL_VELDER_HOUSE_Wait_TalkA.ogg", "GRAIL_VELDER_HOUSE_Wait_TalkB.ogg", },
	NPCByeTalk  = { "GRAIL_VELDER_HOUSE_Bye_TalkA.ogg", "GRAIL_VELDER_HOUSE_Bye_TalkB.ogg", },
	
	JoinArea = 600,	
	
	MAKING_NPC = TRUE,
	ATTRIBUTE = TRUE,
	SELL_NPC	= TRUE,
	EXCHANGE	= TRUE,
	
	
	NPC_ID_LIST = 
	{
		NPC_UNIT_ID["NUI_GRAIL"],
	},
	
	SHOP_CATEGORY_TYPE_LIST =
	{
		BUY_ITEM_CATEGORY["BIC_SPECIAL"],
		BUY_ITEM_CATEGORY["BIC_QUICK_SLOT"],
	},
	
	TALK_BOX =
 	{
		--{ MESSAGE = STR_ID_16156 },--2012/03/29 제거 (공존의 축제 멘트)
	},
	
	COMMON_NPC_LOCATION =
	{	    
		{ WORLD_ID["WI_VILLAGE_VELDER"],  1797.932, 546.904, 7.837 },
		--{ WORLD_ID["WI_VILLAGE_HAMEL"],  1977.259, 583.94, 4708.032, 0, 30, 0 },
	},
	
	Wait_Talk = STR_ID_4665,
	Make_Talk = STR_ID_4666,
	Shop_Talk = STR_ID_4667,
	Quest_Talk = STR_ID_4668,
	Exchange_Talk = STR_ID_4669,
	Bye_Talk = STR_ID_4670, 
}

--[[
			-- 크리스마스 트리
			House[ HOUSE_ID["HI_CHRISTMAS_TREE"] ] = 
			{
 				Type = HOUSE_TYPE["HT_EVENT"],
				Name = STR_ID_754,

				NPCMeshName = "NPC_Christmas_Tree_Set.X",	
				NPCMeshPos = {0, 0, 0},
				NPCMeshRot = {0, 0, 0},
				NPCMeshScale = {1.2, 1.2, 1.2},
				
				JoinArea = 900,
				
				bCanTalkNpc = FALSE,		
				
				COMMON_NPC_LOCATION =
				{	    
					{ WORLD_ID["WI_VILLAGE_RUBEN"],   2700, 1330, -2750, },
					{ WORLD_ID["WI_VILLAGE_ELDER"],  650, 367, -150, },
					{ WORLD_ID["WI_VILLAGE_BESMA"],  -970, 5015, -3000, },
					{ WORLD_ID["WI_VILLAGE_ALTERA"], -600, 525, 70, },
					{ WORLD_ID["WI_VILLAGE_VELDER"],  6250, 455, -150, },
				},
			}
--]]



--[[
House[ HOUSE_ID["HI_EVENT_FAIRY_GUARDIAN"] ] = 
{
    -- 이벤트 페어리 가디언
	Type = HOUSE_TYPE["HT_NPC_HOUSE"],
	Name = STR_ID_9732,

	QuestInfoPosX = 126, 
	QuestInfoPosY = 209,
	
	EventQuestInfoPosX = 237, 
	EventQuestInfoPosY = 248,
	
	NPCTextureName = "DLG_Common_New_Texture70.tga",
	NPCTextureKey = "NPC_EVENT_EXPO",

	NPCTexturePosX = 168, --118,
	NPCTexturePosY = 631,
	
	NPCMeshName = "Npc_Event_Fairy_Guardian.x",
--	NPCAniTex   = "Motion_NPC_BELDER_GRAIL.XET",
	
	NPCMeshPos = {1797.932, 546.904, 7.837},
	NPCMeshRot = {0, 0, 0},
	NPCMeshScale = {1.3, 1.3, 1.3},
	
	--NPCJoinTalk = { "GRAIL_VELDER_HOUSE_Wait_TalkA.ogg", "GRAIL_VELDER_HOUSE_Wait_TalkB.ogg", },
	--NPCByeTalk  = { "GRAIL_VELDER_HOUSE_Bye_TalkA.ogg", "GRAIL_VELDER_HOUSE_Bye_TalkB.ogg", },
	
	JoinArea = 500,	
	
	MAKING_NPC = TRUE,
		
	NPC_ID_LIST = 
	{
		NPC_UNIT_ID["NUI_EVENT_FAIRY_GUARDIAN"],
	},
	
	COMMON_NPC_LOCATION =
	{	    
		{ WORLD_ID["WI_VILLAGE_ELDER"],  386, 370, -151, },
		{ WORLD_ID["WI_VILLAGE_BESMA"],  -1002, 5050, -2950, },
		{ WORLD_ID["WI_VILLAGE_ALTERA"], -740.38, 550 , 150 , },
		{ WORLD_ID["WI_VILLAGE_VELDER"],  -3250.697, 470.478, 475.678, },
	},
	
	Wait_Talk = STR_ID_9716,
	Make_Talk = STR_ID_9718,
	Shop_Talk = STR_ID_4667,
	Quest_Talk = STR_ID_9717,
	Exchange_Talk = STR_ID_4669,
	Bye_Talk = STR_ID_9715, 
}
--]]

-- 산타 클로에
House[ HOUSE_ID["HI_SANTA_DARKELF"] ] = 
{
	Type = HOUSE_TYPE["HT_NPC_HOUSE"],
	Name = STR_ID_10026,
	
	
	NPC_ID_LIST = 
	{
		NPC_UNIT_ID["NUI_SANTA_DARKELF"],
	},
	
	
	QuestInfoPosX = 126, 
	QuestInfoPosY = 209,
	
	EventQuestInfoPosX = 237, 
	EventQuestInfoPosY = 248,
	
	NPCTextureName = "DLG_Common_New_Texture70.tga",
	NPCTextureKey = "NPC_EVENT_SANTA",
	
	NPCTexturePosX = 168, --118,
	NPCTexturePosY = 631,

	NPCMeshName = "Npc_SANTA_DARKELF.x",	
	NPCMeshPos = {0, 0, 0},
	NPCMeshRot = {0, 0, 0},
	NPCMeshScale = {1.25, 1.25, 1.25},
				
	JoinArea = 700,
			
	bCanTalkNpc = TRUE,		
				
	COMMON_NPC_LOCATION =
	{	    
		{ WORLD_ID["WI_VILLAGE_ELDER"],  650, 367, -150, },
		{ WORLD_ID["WI_VILLAGE_BESMA"],  -670, 5015, -3000, },
		{ WORLD_ID["WI_VILLAGE_ALTERA"], -300, 525, 0, },
		{ WORLD_ID["WI_VILLAGE_VELDER"],  6250, 455, -150, },
	},
	
	
	Wait_Talk = STR_ID_10200,
	Quest_Talk = STR_ID_10201,
	Bye_Talk = STR_ID_10202, 
}

-------------------- 하멜
-- 호레이쇼(대장)
House[ HOUSE_ID["HI_HORATIO"] ] = 
{
	Type = HOUSE_TYPE["HT_EQUIP_SHOP"],
	Name = STR_ID_26267,
	
	QuestInfoPosX = 88, 
	QuestInfoPosY = 359,
	
	EventQuestInfoPosX = 123, 
	EventQuestInfoPosY = 447,
	
	NPCTextureName = "DLG_Common_New_Texture71.tga",
	NPCTextureKey = "NUI_HORATIO_NAME",

	NPCTexturePosX = 139,
	NPCTexturePosY = 633,

    NPCMeshName = "Motion_Npc_Hamel_Horatio.x",	
	NPCAniTex   = "Motion_NPC_VELDER_HANNA.XET",
	
	NPCMeshPos = {0, 0, 0},
	NPCMeshRot = {0, 0, 0},
	NPCMeshScale = {1.5, 1.5, 1.5},
		
	NPCJoinTalk = { "HORATIO_HAMEL_EQUIP_SHOP_Wait_Talk.ogg", "HORATIO_HAMEL_EQUIP_SHOP_Wait_Talk2.ogg", "HORATIO_HAMEL_EQUIP_SHOP_Wait_Talk3.ogg", "HORATIO_HAMEL_EQUIP_SHOP_Wait_Talk4.ogg",},
	NPCByeTalk  = { "HORATIO_HAMEL_EQUIP_SHOP_Bye_Talk.ogg", "HORATIO_HAMEL_EQUIP_SHOP_Bye_Talk2.ogg", "HORATIO_HAMEL_EQUIP_SHOP_Bye_Talk3.ogg", "HORATIO_HAMEL_EQUIP_SHOP_Bye_Talk4.ogg", },
		
	JoinArea = 700,	
	
	ENCHANT 	= TRUE,
	MAKING_NPC 	= TRUE,
	REPAIR_NPC  = TRUE,
	SELL_NPC	= TRUE,
	
	COMMON_NPC_LOCATION =
	{	    
		{ WORLD_ID["WI_VILLAGE_HAMEL"],  -3141.514, 853.233, 2693.023, 0, -45, 0 },
	},
	
	Wait_Talk = STR_ID_11146,
	Make_Talk = STR_ID_11148,
	Shop_Talk = STR_ID_11150,
	Quest_Talk = STR_ID_11151,
	Bye_Talk = STR_ID_11147, 	
	
	NPC_ID_LIST = 
	{
		NPC_UNIT_ID["NUI_HORATIO"],
	},

	SHOP_CATEGORY_TYPE_LIST =
	{
		BUY_ITEM_CATEGORY["BIC_WEAPON"],
		BUY_ITEM_CATEGORY["BIC_COAT"],
		BUY_ITEM_CATEGORY["BIC_TROUSERS"],
		BUY_ITEM_CATEGORY["BIC_HAND"],
		BUY_ITEM_CATEGORY["BIC_FOOTWEAR"],
	},
}


-- 루시(액세서리)
House[ HOUSE_ID["HI_LUCY"] ] = 
{
	Type = HOUSE_TYPE["HT_ACCESSORY_SHOP"],
	Name = STR_ID_26266,
		
	QuestInfoPosX = 550, 
	QuestInfoPosY = 200,
	
	EventQuestInfoPosX = 499, 
	EventQuestInfoPosY = 280,
	
	NPCTextureName = "DLG_Common_New_Texture71.tga",
	NPCTextureKey = "NUI_LUCY_NAME",

	NPCTexturePosX = 134,
	NPCTexturePosY = 641,
	
	NPCMeshName = "Motion_Npc_Hamel_Lucy.x",	
	NPCAniTex   = "Motion_NPC_BELDER_PRAUS.XET",
	
	NPCMeshPos = {0, 0, 0},
	NPCMeshRot = {0, 0, 0},
	NPCMeshScale = {1.5, 1.5, 1.5},
	
	NPCJoinTalk = { "LUCY_HAMEL_ACCESSORY_Wait_Talk.ogg", "LUCY_HAMEL_ACCESSORY_Wait_Talk2.ogg", "LUCY_HAMEL_ACCESSORY_Wait_Talk3.ogg", "LUCY_HAMEL_ACCESSORY_Wait_Talk4.ogg",  },
	NPCByeTalk  = { "LUCY_HAMEL_ACCESSORY_Bye_Talk.ogg", "LUCY_HAMEL_ACCESSORY_Bye_Talk2.ogg", "LUCY_HAMEL_ACCESSORY_Bye_Talk3.ogg", "LUCY_HAMEL_ACCESSORY_Bye_Talk4.ogg",  },
	
	JoinArea = 600,	
	
	SELL_NPC	= TRUE,
	MAKING_NPC = TRUE,
	
	COMMON_NPC_LOCATION =
	{	    
		{ WORLD_ID["WI_VILLAGE_HAMEL"],  -1499.448, 707.127, 4447.323, 0, -30.0, 0 },
	},
	
	Wait_Talk = STR_ID_11155,
	Shop_Talk = STR_ID_11154,
	Quest_Talk = STR_ID_11156,
	Bye_Talk = STR_ID_11157,
	Make_Talk = STR_ID_11601,
	
	NPC_ID_LIST = 
	{
		NPC_UNIT_ID["NUI_LUCY"],
	},

	SHOP_CATEGORY_TYPE_LIST =
	{
		BUY_ITEM_CATEGORY["BIC_ACCESSORY"],
	},
}
-- 페넨시오(마을 입구 퀘스트 NPC)
House[ HOUSE_ID["HI_PENENSIO"] ] = 
{
	Type = HOUSE_TYPE["HT_NPC_HOUSE"],
	Name = STR_ID_26268,

	QuestInfoPosX = 727, 
	QuestInfoPosY = 253,
	
	EventQuestInfoPosX = 669, 
	EventQuestInfoPosY = 343,
	
	NPCTextureName = "DLG_Common_New_Texture71.tga",
	NPCTextureKey = "NUI_PENENSIO_NAME",

	NPCTexturePosX = 154,
	NPCTexturePosY = 637,
	
	TitleTextureName	= "DLG_Common_New_Texture14.tga",
	TitleTextureKey		= "House_Village_CityHall",
	
	NPCMeshName = "Motion_Npc_Hamel_Penensio.x",
	NPCAniTex   = "Motion_NPC_VELDER_Noel.XET",
	
	NPCMeshPos = {0, 0, 0},
	NPCMeshRot = {0, 0, 0},
	NPCMeshScale = {1.5, 1.5, 1.5},
	
	NPCJoinTalk = { "PENENSIO_HAMEL_HOUSE_Wait_Talk.ogg", "PENENSIO_HAMEL_HOUSE_Wait_Talk2.ogg", "PENENSIO_HAMEL_HOUSE_Wait_Talk3.ogg", "PENENSIO_HAMEL_HOUSE_Wait_Talk4.ogg", },
	NPCByeTalk  = { "PENENSIO_HAMEL_HOUSE_Bye_Talk.ogg", "PENENSIO_HAMEL_HOUSE_Bye_Talk2.ogg", "PENENSIO_HAMEL_HOUSE_Bye_Talk3.ogg", },
	
	JoinArea = 800,	
	
	NPC_ID_LIST = 
	{
		NPC_UNIT_ID["NUI_PENENSIO"],
	},
	
	COMMON_NPC_LOCATION =
	{	    
		{ WORLD_ID["WI_VILLAGE_HAMEL"],  -5597.761, 582.297, 1878.929 },
	},
	
 	Wait_Talk = STR_ID_11159,
	Quest_Talk = STR_ID_11160,
	Bye_Talk = STR_ID_11161,
}
-- 데이지(중앙 부근 퀘스트 NPC)
House[ HOUSE_ID["HI_DAISY"] ] = 
{
	Type = HOUSE_TYPE["HT_NPC_HOUSE"],
	Name = STR_ID_26264,

	QuestInfoPosX = 727, 
	QuestInfoPosY = 253,
	
	EventQuestInfoPosX = 669, 
	EventQuestInfoPosY = 343,
	
	NPCTextureName = "DLG_Common_New_Texture71.tga",
	NPCTextureKey = "NUI_DAISY_NAME",

	NPCTexturePosX = 154,
	NPCTexturePosY = 637,
	
	TitleTextureName	= "DLG_Common_New_Texture14.tga",
	TitleTextureKey		= "House_Village_CityHall",
	
	NPCMeshName = "Motion_Npc_Hamel_Daisy.x",
	NPCAniTex   = "Motion_NPC_VELDER_VANESSA.XET",
	
	NPCMeshPos = {0, 0, 0},
	NPCMeshRot = {0, 0, 0},
	NPCMeshScale = {1.5, 1.5, 1.5},
	
	NPCJoinTalk = { "DAISY_HAMEL_HOUSE_Wait_Talk.ogg", "DAISY_HAMEL_HOUSE_Wait_Talk2.ogg", "DAISY_HAMEL_HOUSE_Wait_Talk3.ogg", "DAISY_HAMEL_HOUSE_Wait_Talk4.ogg",  },
	NPCByeTalk  = { "DAISY_HAMEL_HOUSE_Bye_Talk.ogg", "DAISY_HAMEL_HOUSE_Bye_Talk2.ogg", "DAISY_HAMEL_HOUSE_Bye_Talk3.ogg", "DAISY_HAMEL_HOUSE_Bye_Talk4.ogg", },
	
	--EXCHANGE	= TRUE,
	
	JoinArea = 800,	
	
	NPC_ID_LIST = 
	{
		NPC_UNIT_ID["NUI_DAISY"],
	},
	
	COMMON_NPC_LOCATION =
	{	    
		{ WORLD_ID["WI_VILLAGE_HAMEL"],  2780.746, 691.656, 3888.746, 0, 45, 0},
	},
	
 	Wait_Talk = STR_ID_11165,
	Quest_Talk = STR_ID_11163,
	Exchange_Talk = STR_ID_11164,
	Bye_Talk = STR_ID_11166,
}
-- 덴카(연금술사)
House[ HOUSE_ID["HI_DENKA"] ] = 
{
	Type = HOUSE_TYPE["HT_ALCHEMIST_HOUSE"],
	Name = STR_ID_26265,

	QuestInfoPosX = 126, 
	QuestInfoPosY = 209,
	
	EventQuestInfoPosX = 237, 
	EventQuestInfoPosY = 248,
	
	NPCTextureName = "DLG_Common_New_Texture71.tga",
	NPCTextureKey = "NUI_DENKA_NAME",

	NPCTexturePosX = 168, --118,
	NPCTexturePosY = 631,
	
	NPCMeshName = "Motion_Npc_Hamel_Denka.x",
	NPCAniTex   = "Motion_NPC_BELDER_GRAIL.XET",
	
	NPCMeshPos = {0, 0, 0},
	NPCMeshRot = {0, 0, 0},
	NPCMeshScale = {1.5, 1.5, 1.5},
	
	NPCJoinTalk = { "DENKA_HAMEL_ALCHEMIST_HOUSE_Wait_Talk.ogg", "DENKA_HAMEL_ALCHEMIST_HOUSE_Wait_Talk2.ogg", "DENKA_HAMEL_ALCHEMIST_HOUSE_Wait_Talk3.ogg", "DENKA_HAMEL_ALCHEMIST_HOUSE_Wait_Talk4.ogg",  },
	NPCByeTalk  = { "DENKA_HAMEL_ALCHEMIST_HOUSE_Bye_Talk.ogg", "DENKA_HAMEL_ALCHEMIST_HOUSE_Bye_Talk2.ogg", "DENKA_HAMEL_ALCHEMIST_HOUSE_Bye_Talk3.ogg", "DENKA_HAMEL_ALCHEMIST_HOUSE_Bye_Talk4.ogg",  },
	
	JoinArea = 600,	
	
	MAKING_NPC = TRUE,
	ATTRIBUTE = TRUE,
	SELL_NPC	= TRUE,
	EXCHANGE	= TRUE,
	
	
	NPC_ID_LIST = 
	{
		NPC_UNIT_ID["NUI_DENKA"],
	},
	
	SHOP_CATEGORY_TYPE_LIST =
	{
		BUY_ITEM_CATEGORY["BIC_SPECIAL"],
		BUY_ITEM_CATEGORY["BIC_QUICK_SLOT"],
	},
	
	TALK_BOX =
 	{
		--{ MESSAGE = STR_ID_16155 },--2012/03/29 제거 (공존의 축제 멘트)
	},
	
	COMMON_NPC_LOCATION =
	{	    
		{ WORLD_ID["WI_VILLAGE_HAMEL"],  1814.409, 583.94, 4425.967, 0, 30, 0 },
	},
	
	Wait_Talk = STR_ID_11169,
	Make_Talk = STR_ID_11174,
	Shop_Talk = STR_ID_11171,
	Quest_Talk = STR_ID_11168,
	Exchange_Talk = STR_ID_11172,
	Bye_Talk = STR_ID_11173, 
}
-------------------- 하멜



------이벤트 몬스터----------

House[ HOUSE_ID["HI_MANDRASSIL"] ] = 
{
    -- 이벤트 만드라실
	Type = HOUSE_TYPE["HT_NPC_HOUSE"],
	Name = STR_ID_11404,

	QuestInfoPosX = 126, 
	QuestInfoPosY = 209,
	
	EventQuestInfoPosX = 237, 
	EventQuestInfoPosY = 248,
	
	NPCTextureName = "DLG_Common_New_Texture71.tga",
	NPCTextureKey = "NUI_EVENT_MANDLASIL",

	NPCTexturePosX = 118, --118,
	NPCTexturePosY = 631,
	
	NPCMeshName = "Npc_Event_Fairy_Guardian.x",
--	NPCAniTex   = "Motion_NPC_BELDER_GRAIL.XET",
	
	NPCMeshPos = {1797.932, 546.904, 7.837},
	NPCMeshRot = {0, 0, 0},
	NPCMeshScale = {1.1, 1.1, 1.1},
	
	--NPCJoinTalk = { "GRAIL_VELDER_HOUSE_Wait_TalkA.ogg", "GRAIL_VELDER_HOUSE_Wait_TalkB.ogg", },
	--NPCByeTalk  = { "GRAIL_VELDER_HOUSE_Bye_TalkA.ogg", "GRAIL_VELDER_HOUSE_Bye_TalkB.ogg", },
	
	JoinArea = 500,	
	
	--MAKING_NPC = TRUE,
		
	NPC_ID_LIST = 
	{
		NPC_UNIT_ID["NUI_MANDRASSIL"],
	},
	
	COMMON_NPC_LOCATION =
	{	    
		{ WORLD_ID["WI_VILLAGE_ELDER"],  386, 370, -151, },
		{ WORLD_ID["WI_VILLAGE_BESMA"],  -1002, 5050, -2950, },
		{ WORLD_ID["WI_VILLAGE_ALTERA"], -740.38, 550 , 150 , },
		{ WORLD_ID["WI_VILLAGE_VELDER"],  -3250.697, 470.478, 475.678, },
		{ WORLD_ID["WI_VILLAGE_HAMEL"],  -4313, 585.478, 1791.678, },
	},
	
	Wait_Talk = STR_ID_11406,
	Make_Talk = STR_ID_11407,
	Quest_Talk = STR_ID_11408,
	Bye_Talk = STR_ID_11409, 
	
	TALK_BOX =
 	{
		{ MESSAGE = STR_ID_16290 },--2012/04/12	(식목일,엘라보르 주간)루벤 숲의 눈물\n나..통해서만..\n갈..수..있다.\n..자연의 선물.\n필요해...너..\n준다..
	},
}

-- 대리상인
House[ HOUSE_ID["HI_MU"] ] = 
{
    -- 뮤
	Type = HOUSE_TYPE["HT_NPC_HOUSE"],
	Name = STR_ID_12133,

	QuestInfoPosX = 126, 
	QuestInfoPosY = 209,
	
	EventQuestInfoPosX = 237, 
	EventQuestInfoPosY = 248,
	
	NPCTextureName = "DLG_Common_New_Texture71.tga",
	NPCTextureKey = "NUI_MU_NAME",

	NPCTexturePosX = 168, --118,
	NPCTexturePosY = 631,
	
	NPCMeshName = "Motion_Npc_All_Mu.x",
	--NPCAniTex   = "Motion_Npc_All_Mu.XET",
	NPCMeshPos = {5618.283, 1274.933, -2630.482},
	NPCMeshRot = {0, 0, 0},
	NPCMeshScale = {1.2, 1.2, 1.2},
	
	--NPCJoinTalk = { "MU_HOUSE_Wait_TalkA.ogg", "MU_HOUSE_Wait_TalkB.ogg", "MU_HOUSE_Wait_TalkC.ogg", "MU_HOUSE_Wait_TalkD.ogg", },
	--NPCByeTalk  = { "MU_HOUSE_Bye_TalkA.ogg", "MU_HOUSE_Bye_TalkB.ogg", "MU_HOUSE_Bye_TalkC.ogg", "MU_HOUSE_Bye_TalkD.ogg", },
	
	JoinArea = 400,	
	
	--AGENCY_TRADER_REGISTER	= TRUE,
	AGENCY_TRADER_RECEIVE	= TRUE,
	
	NPC_ID_LIST = 
	{
		NPC_UNIT_ID["NUI_MU"],
	},
	
	COMMON_NPC_LOCATION =
	{	    
		{ WORLD_ID["WI_VILLAGE_ELDER"],  1600, 1930, 2785, },
		{ WORLD_ID["WI_VILLAGE_BESMA"],  710, 3465, -4228, },
		{ WORLD_ID["WI_VILLAGE_ALTERA"], 2880, 390 , 260 , },
		{ WORLD_ID["WI_VILLAGE_VELDER"], 670, 847, 1900,},
		{ WORLD_ID["WI_VILLAGE_HAMEL"],  760, 660, 4805, 0, 0, 0, 500, },
	    { WORLD_ID["WI_VILLAGE_PEITA"],  -9636.636, 518.464, -3342.396,},
		{ WORLD_ID["WI_VILLAGE_SANDER"], 1405.37, 1380.957, -1229.702, },
	},
	
	Wait_Talk = STR_ID_12159,
	Register_Talk = STR_ID_12160,
	Receive_Talk = STR_ID_12161,
	Bye_Talk = STR_ID_12162,
}

House[ HOUSE_ID["HI_LUTO"] ] =
{
    -- 루토
	Type = HOUSE_TYPE["HT_NPC_HOUSE"],
	Name = STR_ID_13859,

	--QuestInfoPosX = 550,
	--QuestInfoPosY = 200,

	--EventQuestInfoPosX = 499,
	--EventQuestInfoPosY = 280,

	NPCTextureName = "DLG_Common_New_Texture71.TGA",
	NPCTextureKey = "NUI_RUTO_NAME",

	NPCTexturePosX = 134,
	NPCTexturePosY = 641,

	NPCMeshName = "NPC_EVENT_LUTO.x",
	NPCMeshPos = {0, 0, 0},
	NPCMeshRot = {0, 0, 0},
	NPCMeshScale = {1.27, 1.27, 1.27},

	--NPCJoinTalk = { "GLAVE_VELDER_HOUSE_Wait_TalkA.ogg", "GLAVE_VELDER_HOUSE_Wait_TalkB.ogg", },
	--NPCByeTalk  = { "GLAVE_VELDER_HOUSE_Bye_TalkA.ogg", "GLAVE_VELDER_HOUSE_Bye_TalkB.ogg", },

	JoinArea = 500,

	--REPAIR_NPC = TRUE,
	--SELL_NPC	= TRUE,
	MAKING_NPC = TRUE,
	EXCHANGE	= TRUE,

	Wait_Talk = STR_ID_13788,
	--Shop_Talk = STR_ID_3822,
	Make_Talk = STR_ID_13789,
	Quest_Talk = STR_ID_13790,
	Bye_Talk = STR_ID_13791,	
	Exchange_Talk = STR_ID_13792,

	COMMON_NPC_LOCATION =
	{
		-- 던전 게이트에서 루토 위치
	    { WORLD_ID["WI_DUNGEON_GATE_ELDER"],  5650, 1006.869, 855.239, 0, 0, 0, 950},
	    { WORLD_ID["WI_DUNGEON_GATE_BESMA"],  4120, 1005, 250, 0, 0, 0, 400},
	    { WORLD_ID["WI_DUNGEON_GATE_ALTERA"],  1270, 1005, 250, 0, 0, 0, 350},
	    --{ WORLD_ID["WI_VILLAGE_PEITA"],  18350, 1005, 250, 0, 0, 0, 330},
	    { WORLD_ID["WI_DUNGEON_GATE_VELDER"], 493.005, 6.675, -233.36, },
		{ WORLD_ID["WI_DUNGEON_GATE_HAMEL"], -9300.401, 4855.0,	-11960.419 + 12000, 0, 0, 0, 620},
	},

	NPC_ID_LIST =
	{
		NPC_UNIT_ID["NUI_LUTO_VILLAGE"],
	},

	--[[SHOP_CATEGORY_TYPE_LIST =
	{
	    BUY_ITEM_CATEGORY["BIC_QUICK_SLOT"],
		BUY_ITEM_CATEGORY["BIC_SPECIAL"],
	},--]]
	TALK_BOX =
 	{
		--{ MESSAGE = STR_ID_13783 },--2011/08/25, 09/01
		--{ MESSAGE = STR_ID_13784 },--2011/08/25
		--{ MESSAGE = STR_ID_13785 },--2011/08/25
		--{ MESSAGE = STR_ID_13786 },--2011/09/01
		--{ MESSAGE = STR_ID_13787 },--2011/09/01
		{ MESSAGE = STR_ID_13864 },--2011/09/01
	},
}

House[ HOUSE_ID["HI_DAO"] ] =
{
    -- 다오 (2011-12-08 제거)
	Type = HOUSE_TYPE["HT_NPC_HOUSE"],
	Name = STR_ID_14879,

	--QuestInfoPosX = 550,
	--QuestInfoPosY = 200,

	--EventQuestInfoPosX = 499,
	--EventQuestInfoPosY = 280,

	NPCTextureName = "DLG_Common_New_Texture71.TGA",
	NPCTextureKey = "NUI_DAO_NAME",

	NPCTexturePosX = 134,
	NPCTexturePosY = 641,

	NPCMeshName = "Motion_Npc_All_Dao.x",
	NPCMeshPos = {0, 0, 0},
	NPCMeshRot = {0, 0, 0},
	NPCMeshScale = {2.8, 2.8, 2.8},

	--NPCJoinTalk = { "GLAVE_VELDER_HOUSE_Wait_TalkA.ogg", "GLAVE_VELDER_HOUSE_Wait_TalkB.ogg", },
	--NPCByeTalk  = { "GLAVE_VELDER_HOUSE_Bye_TalkA.ogg", "GLAVE_VELDER_HOUSE_Bye_TalkB.ogg", },

	JoinArea = 500,

	--REPAIR_NPC = TRUE,
	--SELL_NPC	= TRUE,
	--MAKING_NPC = TRUE,
	--EXCHANGE	= TRUE,

	Wait_Talk = STR_ID_14958,
	Quest_Talk = STR_ID_14959,
	Bye_Talk = STR_ID_14960,	
	
	COMMON_NPC_LOCATION =
	{
		-- 던전 게이트에서 다오 위치
		{ WORLD_ID["WI_DUNGEON_GATE_RUBEN"],  -352.321, 0.225, 450.0, },
	    { WORLD_ID["WI_DUNGEON_GATE_ELDER"],  5650, 1006.869, 855.239, 0, 0, 0, 950},
	    { WORLD_ID["WI_DUNGEON_GATE_BESMA"],  4120, 1005, 250, 0, 0, 0, 400},
	    { WORLD_ID["WI_DUNGEON_GATE_ALTERA"],  1270, 1005, 250, 0, 0, 0, 350},
	    { WORLD_ID["WI_VILLAGE_PEITA"],  18350, 1005, 250, 0, 0, 0, 330},
	    { WORLD_ID["WI_DUNGEON_GATE_VELDER"], 493.005, 6.675, -233.36, },
		{ WORLD_ID["WI_DUNGEON_GATE_HAMEL"], -9300.401, 4855.0,	-11960.419 + 12000, 0, 0, 0, 620},
	},

	NPC_ID_LIST =
	{
		NPC_UNIT_ID["NUI_EVENT_DAO"],
	},

	TALK_BOX =
 	{
		--{ MESSAGE = STR_ID_13787 },--2011/09/01
		--{ MESSAGE = STR_ID_13864 },--2011/09/01
	},
}

-- APink 에이핑크 -- 택티컬 트루퍼
House[ HOUSE_ID["HI_APINK"] ] = 
{
	Type = HOUSE_TYPE["HT_NPC_HOUSE"],
	Name = STR_ID_17351,
	
	
	NPC_ID_LIST = 
	{
		NPC_UNIT_ID["NUI_EVENT_APINK"],
	},
	
	
	QuestInfoPosX = 126, 
	QuestInfoPosY = 209,
	
	EventQuestInfoPosX = 237, 
	EventQuestInfoPosY = 248,
	
	NPCTextureName = "DLG_Common_New_Texture_TW01.tga",
	NPCTextureKey = "NUI_EVENT_CHUNG_NAME",
	
	NPCTexturePosX = 168, --118,
	NPCTexturePosY = 631,

	NPCMeshName = "Motion_EVENT_TACTICAL_TROOPER.x",	
	NPCMeshPos = {0, 0, 0},
	NPCMeshRot = {0, 0, 0},
	NPCMeshScale = {1.25, 1.25, 1.25},
				
	JoinArea = 600,

	EXCHANGE	= TRUE,
			
	bCanTalkNpc = TRUE,		
				
	COMMON_NPC_LOCATION =
	{	
		{ WORLD_ID["WI_DUNGEON_GATE_RUBEN"],  -145.974,  0,  350.403, },
		{ WORLD_ID["WI_VILLAGE_ELDER"],  386, 370, -151, },
		{ WORLD_ID["WI_VILLAGE_BESMA"],  -1002, 5018, -2950, },
		{ WORLD_ID["WI_VILLAGE_ALTERA"], -520.38, 550 , 150 , 0, 30, 0, },	-- -740.38, 550
		{ WORLD_ID["WI_VILLAGE_PEITA"], -5048.274, 764.556, -3028.798, },
		{ WORLD_ID["WI_VILLAGE_VELDER"],  -3250.697, 470.478, 475.678, },
		{ WORLD_ID["WI_VILLAGE_HAMEL"],  -4313, 585.478, 1791.678, },
		
	
	},
	
	--NPCJoinTalk = { "APINK_EVENT_Wait_TalkA.wav", },
	

	Wait_Talk = STR_ID_26902,
	Quest_Talk = STR_ID_26902,
	Bye_Talk = STR_ID_26902,
	Exchange_Talk = STR_ID_26902,

	TALK_BOX =
 	{
		--{ MESSAGE = STR_ID_17360 },--2012/06/21 제거, (에이핑크 프로모션)안녕하세요.\n'에이핑크 손나은'\n입니다. 모험가\n여러분을 만나러 엘리오스에 왔어요~
	},
}

-------------------- 샌더
-- 로즈앙(액세서리)
House[ HOUSE_ID["HI_ROSEANG"] ] = 
{
	Type = HOUSE_TYPE["HT_ACCESSORY_SHOP"],
	Name = STR_ID_26272,
		
	QuestInfoPosX = 550, 
	QuestInfoPosY = 200,
	
	EventQuestInfoPosX = 499, 
	EventQuestInfoPosY = 280,
	
	NPCTextureName = "DLG_Common_New_Texture75.tga",
	NPCTextureKey = "NUI_ROSEANG",

	NPCTexturePosX = 134,
	NPCTexturePosY = 641,
	
	NPCMeshName = "Motion_Npc_Sender_Roseang.x",	
	
	NPCMeshPos = {0, 0, 0},
	NPCMeshRot = {0, 0, 0},
	NPCMeshScale = {1.15, 1.15, 1.15},
	
	NPCJoinTalk = { "ROSEANG_SANDER_ACCESSORY_Wait_Talk.ogg", "ROSEANG_SANDER_ACCESSORY_Wait_Talk2.ogg", "ROSEANG_SANDER_ACCESSORY_Wait_Talk3.ogg", "ROSEANG_SANDER_ACCESSORY_Wait_Talk4.ogg",  },
	NPCByeTalk  = { "ROSEANG_SANDER_ACCESSORY_Bye_Talk.ogg", "ROSEANG_SANDER_ACCESSORY_Bye_Talk2.ogg", "ROSEANG_SANDER_ACCESSORY_Bye_Talk3.ogg", "ROSEANG_SANDER_ACCESSORY_Bye_Talk4.ogg",  },
	
	JoinArea = 600,	
	
	SELL_NPC	= TRUE,
	MAKING_NPC = TRUE,
	
	COMMON_NPC_LOCATION =
	{	    
		{ WORLD_ID["WI_VILLAGE_SANDER"],  -4858.142, 1167.893, -1036.91, 0, 0, 0 },
	},
	
	Wait_Talk = STR_ID_22018,
	Shop_Talk = STR_ID_22019,
	Quest_Talk = STR_ID_22020,
	Make_Talk = STR_ID_22021,
	Exchange_Talk = STR_ID_22022,
	Bye_Talk = STR_ID_22023,

	NPC_ID_LIST = 
	{
		NPC_UNIT_ID["NUI_ROSEANG"],
	},

	SHOP_CATEGORY_TYPE_LIST =
	{
		BUY_ITEM_CATEGORY["BIC_ACCESSORY"],
	},
}

-- 에미리트(촌장)
House[ HOUSE_ID["HI_EMIRATE"] ] = 
{
	Type = HOUSE_TYPE["HT_NPC_HOUSE"],
	Name = STR_ID_26269,

	QuestInfoPosX = 727, 
	QuestInfoPosY = 253,
	
	EventQuestInfoPosX = 669, 
	EventQuestInfoPosY = 343,
	
	NPCTextureName = "DLG_Common_New_Texture75.tga",
	NPCTextureKey = "NUI_EMIRATE",

	NPCTexturePosX = 154,
	NPCTexturePosY = 637,
	
	TitleTextureName	= "DLG_Common_New_Texture14.tga",
	TitleTextureKey		= "House_Village_CityHall",
	
	NPCMeshName = "Motion_Npc_Sender_Emirate.x",
	
	NPCMeshPos = {0, 0, 0},
	NPCMeshRot = {0, 0, 0},
	NPCMeshScale = {1.2, 1.2, 1.2},
	
	NPCJoinTalk = { "EMIRATE_SANDER_HOUSE_Wait_Talk.ogg", "EMIRATE_SANDER_HOUSE_Wait_Talk2.ogg", "EMIRATE_SANDER_HOUSE_Wait_Talk3.ogg", "EMIRATE_SANDER_HOUSE_Wait_Talk4.ogg", },
	NPCByeTalk  = { "EMIRATE_SANDER_HOUSE_Bye_Talk.ogg", "EMIRATE_SANDER_HOUSE_Bye_Talk2.ogg", "EMIRATE_SANDER_HOUSE_Bye_Talk3.ogg", "EMIRATE_SANDER_HOUSE_Bye_Talk4.ogg",},
	
	JoinArea = 800,	
	
	NPC_ID_LIST = 
	{
		NPC_UNIT_ID["NUI_EMIRATE"],
	},
	
	COMMON_NPC_LOCATION =
	{	    
		{ WORLD_ID["WI_VILLAGE_SANDER"],  -2248.255, 1133.509, -6959.08, 0, 90, 0 },
	},
	
 	Wait_Talk = STR_ID_22024,
	Shop_Talk = STR_ID_22025,
	Quest_Talk = STR_ID_22026,
	Make_Talk = STR_ID_22027,
	Exchange_Talk = STR_ID_22028,
	Bye_Talk = STR_ID_22029,
}


-- 바포르(연금술사)
House[ HOUSE_ID["HI_VAPOR"] ] = 
{
	Type = HOUSE_TYPE["HT_ALCHEMIST_HOUSE"],
	Name = STR_ID_26270,

	QuestInfoPosX = 126, 
	QuestInfoPosY = 209,
	
	EventQuestInfoPosX = 237, 
	EventQuestInfoPosY = 248,
	
	NPCTextureName = "DLG_Common_New_Texture75.tga",
	NPCTextureKey = "NUI_VAPOR",

	NPCTexturePosX = 168, --118,
	NPCTexturePosY = 631,
	
	NPCMeshName = "Motion_Npc_Sender_Vapor.x",
	
	NPCMeshPos = {0, 0, 0},
	NPCMeshRot = {0, 0, 0},
	NPCMeshScale = {1.1, 1.1, 1.1},
	
	NPCJoinTalk = { "VAPOR_SANDER_ALCHEMIST_Wait_Talk.ogg", "VAPOR_SANDER_ALCHEMIST_Wait_Talk2.ogg", "VAPOR_SANDER_ALCHEMIST_Wait_Talk3.ogg", "VAPOR_SANDER_ALCHEMIST_Wait_Talk4.ogg",  },
	NPCByeTalk  = { "VAPOR_SANDER_ALCHEMIST_Bye_Talk.ogg", "VAPOR_SANDER_ALCHEMIST_Bye_Talk2.ogg", "VAPOR_SANDER_ALCHEMIST_Bye_Talk3.ogg", "VAPOR_SANDER_ALCHEMIST_Bye_Talk4.ogg",  },
	
	JoinArea = 600,	
	
	MAKING_NPC = TRUE,
	ATTRIBUTE = TRUE,
	SELL_NPC	= TRUE,
	EXCHANGE	= TRUE,
	SYNTHESIS	= TRUE,			-- SERV_SYNTHESIS_AVATAR	
	
	NPC_ID_LIST = 
	{
		NPC_UNIT_ID["NUI_VAPOR"],
	},
	
	SHOP_CATEGORY_TYPE_LIST =
	{
		BUY_ITEM_CATEGORY["BIC_SPECIAL"],
		BUY_ITEM_CATEGORY["BIC_QUICK_SLOT"],
	},
	
	TALK_BOX =
 	{
		--{ MESSAGE = STR_ID_16155 },--2012/03/29 제거 (공존의 축제 멘트)
	},
	
	COMMON_NPC_LOCATION =
	{	    
		{ WORLD_ID["WI_VILLAGE_SANDER"],  2308.93, 1221.097, -4308.306, 0, -90, 0 },
	},
	
	Wait_Talk = STR_ID_22030,
	Shop_Talk = STR_ID_22031,
	Quest_Talk = STR_ID_22032,
	Make_Talk = STR_ID_22033,
	Exchange_Talk = STR_ID_22034,
	Bye_Talk = STR_ID_22035,
	Synthesis_Talk = STR_ID_12148,		-- SERV_SYNTHESIS_AVATAR	
}








-- 다파르(무기 상점)
House[ HOUSE_ID["HI_DAPPAR"] ] = 
{
	Type = HOUSE_TYPE["HT_EQUIP_SHOP"],
	Name = STR_ID_26271,
	
	QuestInfoPosX = 88, 
	QuestInfoPosY = 359,
	
	EventQuestInfoPosX = 123, 
	EventQuestInfoPosY = 447,
	
	NPCTextureName = "DLG_Common_New_Texture75.tga",
	NPCTextureKey = "NUI_DAPPAR",

	NPCTexturePosX = 139,
	NPCTexturePosY = 633,

    NPCMeshName = "Motion_Npc_Sender_Dappar.x",	
	
	NPCMeshPos = {0, 0, 0},
	NPCMeshRot = {0, 0, 0},
	NPCMeshScale = {1.2, 1.2, 1.2},
		
	NPCJoinTalk = { "DAPPAR_SANDER_EQUIP_SHOP_Wait_Talk.ogg", "DAPPAR_SANDER_EQUIP_SHOP_Wait_Talk2.ogg", "DAPPAR_SANDER_EQUIP_SHOP_Wait_Talk3.ogg", "DAPPAR_SANDER_EQUIP_SHOP_Wait_Talk4.ogg",},
	NPCByeTalk  = { "DAPPAR_SANDER_EQUIP_SHOP_Bye_Talk.ogg", "DAPPAR_SANDER_EQUIP_SHOP_Bye_Talk2.ogg", "DAPPAR_SANDER_EQUIP_SHOP_Bye_Talk3.ogg", "DAPPAR_SANDER_EQUIP_SHOP_Bye_Talk4.ogg", },
		
	JoinArea = 700,	
	
	ENCHANT 	= TRUE,
	MAKING_NPC 	= TRUE,
	REPAIR_NPC  = TRUE,
	SELL_NPC	= TRUE,
	
	COMMON_NPC_LOCATION =
	{	    
		{ WORLD_ID["WI_VILLAGE_SANDER"],  4648.412, 1230.764, -953.326, 0, 0, 0 },
	},
	
	Wait_Talk = STR_ID_22036,
	Shop_Talk = STR_ID_22037,
	Quest_Talk = STR_ID_22038,
	Make_Talk = STR_ID_22039,
	Exchange_Talk = STR_ID_22040,
	Bye_Talk = STR_ID_22041,


	NPC_ID_LIST = 
	{
		NPC_UNIT_ID["NUI_DAPPAR"],
	},

	SHOP_CATEGORY_TYPE_LIST =
	{
		BUY_ITEM_CATEGORY["BIC_WEAPON"],
		BUY_ITEM_CATEGORY["BIC_COAT"],
		BUY_ITEM_CATEGORY["BIC_TROUSERS"],
		BUY_ITEM_CATEGORY["BIC_HAND"],
		BUY_ITEM_CATEGORY["BIC_FOOTWEAR"],
	},
}
-------------------- 샌더


House[ HOUSE_ID["HI_EVENT_BENDERS"] ] = --만우절 이벤트 앙드레 벤더스
{
	Type = HOUSE_TYPE["HT_NPC_HOUSE"],
	Name = STR_ID_23705,
	
	
	NPC_ID_LIST = 
	{
		NPC_UNIT_ID["NUI_EVENT_BENDERS"],
	},
	
	
	QuestInfoPosX = 126, 
	QuestInfoPosY = 209,
	
	EventQuestInfoPosX = 237, 
	EventQuestInfoPosY = 248,
	
	NPCTextureName = "DLG_Common_New_Texture75.tga",
	NPCTextureKey = "NUI_ANDRE_BENDERS",
	
	NPCTexturePosX = 138, --118,
	NPCTexturePosY = 631,

	NPCMeshName = "Motion_Event_ang_Benders.x",	
	NPCMeshPos = {0, 0, 0},
	NPCMeshRot = {0, 0, 0},
	NPCMeshScale = {1.25, 1.25, 1.25},
				
	JoinArea = 600,

--	EXCHANGE	= TRUE,
			
	bCanTalkNpc = TRUE,		
				
	COMMON_NPC_LOCATION =
	{	
		{ WORLD_ID["WI_VILLAGE_RUBEN"],  -145.974,  0,  350.403, },
		{ WORLD_ID["WI_VILLAGE_RUBEN"],  -145.974,  0,  350.403, },
		{ WORLD_ID["WI_VILLAGE_ELDER"],  386, 370, -151, },
		{ WORLD_ID["WI_VILLAGE_BESMA"],  -1002, 5018, -2950, },
		{ WORLD_ID["WI_VILLAGE_ALTERA"], -520.38, 550 , 150 , 0, 30, 0, },	-- -740.38, 550
		{ WORLD_ID["WI_VILLAGE_PEITA"], -5048.274, 764.556, -3028.798, },
		{ WORLD_ID["WI_VILLAGE_VELDER"],  -3250.697, 470.478, 475.678, },
		{ WORLD_ID["WI_VILLAGE_HAMEL"],  -4313, 585.478, 1791.678, },
		{ WORLD_ID["WI_VILLAGE_SANDER"],  2280.00, 1107.837, -7460.33, 0, -90, 0 },
	},
	
	Wait_Talk = STR_ID_23697,
	Quest_Talk = STR_ID_23698,
	Bye_Talk = STR_ID_23699,
	Exchange_Talk = STR_ID_23700,

	TALK_BOX =
 	{
		{ MESSAGE = STR_ID_23701 },--2013/04/18 제거, 헬로우~\n반가워, 어드벤춰~\n도적생활은 끝냈어\n이젠 디~자이너야~\n'앙드레 벤더스'\n라고 불러줄래?
	},
}



House[ HOUSE_ID["HI_APINK_ARCHANGEL"] ] = -- 인피니티 소드, 나이트와쳐, 디멘션 위치, 베테랑 커멘더, 배틀 세라프  NPC 같은 ID를 쓴다
--House[ HOUSE_ID["HI_APINK"] ] = -- 나이트와쳐
{
	Type = HOUSE_TYPE["HT_NPC_HOUSE"],
	--Name = STR_ID_17425,
	--Name = STR_ID_17427,
	--Name = STR_ID_17429,
	--Name = STR_ID_17431,
	Name = STR_ID_17433,
	
	
	NPC_ID_LIST = 
	{
		NPC_UNIT_ID["NUI_EVENT_APINK_ARCHANGEL"],
	},
	
	
	QuestInfoPosX = 126, 
	QuestInfoPosY = 209,
	
	EventQuestInfoPosX = 237, 
	EventQuestInfoPosY = 248,
	
	NPCTextureName = "DLG_Common_New_Texture_TW01.tga",
	NPCTextureKey = "NUI_EVENT_EVE_NAME",
	
	NPCTexturePosX = 138, --118,
	NPCTexturePosY = 631,

	NPCMeshName = "Motion_EVENT_Battle_Seraph.x",	
	NPCMeshPos = {0, 0, 0},
	NPCMeshRot = {0, 0, 0},
	NPCMeshScale = {1.25, 1.25, 1.25},
				
	JoinArea = 600,

--	EXCHANGE	= TRUE,
			
	bCanTalkNpc = TRUE,		
				
	COMMON_NPC_LOCATION =
	{	
		{ WORLD_ID["WI_VILLAGE_RUBEN"],  -145.974,  0,  350.403, },
		{ WORLD_ID["WI_VILLAGE_ELDER"],  386, 370, -151, 0, 30, 0,},
		{ WORLD_ID["WI_VILLAGE_BESMA"],  -1002, 5018, -2950, 0, 30, 0,},
		{ WORLD_ID["WI_VILLAGE_ALTERA"], -520.38, 550 , 150 , 0, 60, 0, },	-- -740.38, 550
		{ WORLD_ID["WI_VILLAGE_PEITA"], -5048.274, 764.556, -3028.798, 0, 30, 0,},
		{ WORLD_ID["WI_VILLAGE_VELDER"],  -3250.697, 470.478, 475.678, 0, 30, 0,},
		{ WORLD_ID["WI_VILLAGE_HAMEL"],  -4313, 585.478, 1791.678, 0, 30, 0,},
		--{ WORLD_ID["WI_VILLAGE_SANDER"],  2280.00, 1107.837, -7460.33, 0, -90, 0 },
	},
	
	Wait_Talk = STR_ID_26855,
	Quest_Talk = STR_ID_26855,
	Bye_Talk = STR_ID_26855,
	Exchange_Talk = STR_ID_26855,

	TALK_BOX =
 	{
		--{ MESSAGE = STR_ID_23701 },--2013/04/18 제거, 헬로우~\n반가워, 어드벤춰~\n도적생활은 끝냈어\n이젠 디~자이너야~\n'앙드레 벤더스'\n라고 불러줄래?
	},
}