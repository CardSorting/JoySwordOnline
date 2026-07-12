-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

Village = {}


Village[ VILLAGE_MAP_ID["VMI_RUBEN"] ] =
{
	NAME = STR_ID_1112,

	BaseLocalStateID	= LOCAL_MAP_ID["LMI_VELDER_NORTH"],			-- 해당 마을을 품는 로컬 ID
	
	DLGBack				= "DLG_Map_Village_Ruben_Back.lua",
	DLGFront			= "DLG_Map_Village_Ruben_Front.lua",
	
	HouseIDList =
	{
		HOUSE_ID["HI_ANNE_HOUSE"],
		HOUSE_ID["HI_HAGERS_HOUSE"],
		HOUSE_ID["HI_LOW_TRAINNING_ZONE"],
		--HOUSE_ID["HI_ADAMS_HOUSE"],
		--HOUSE_ID["HI_CAMILLA_PVP_HOUSE"],
		--HOUSE_ID["HI_ARIEL_EVENT_HOUSE"],
		--HOUSE_ID["HI_BILLBOARD"],		
		HOUSE_ID["HI_POSTBOX"],	
		--HOUSE_ID["HI_PRIVATE_BANK"],	-- 은행 임시!
		--HOUSE_ID["HI_CHRISTMAS_TREE"],
		
        --HOUSE_ID["HI_EVENT_NPC1"],    -- 뽀루주방장 (블랙데이 이벤트)
        --HOUSE_ID["HI_WILLIAM_PORTER1"],
	},
	
	WORLD_ID = WORLD_ID["WI_VILLAGE_RUBEN"],
	
	CAMERA = { 1500, 230, 300 },
	
	START_POS = 
	{
		{
			StartPosId  = 1,
			StartPosX   = 655.438,
			StartPosY   = 151.576,
			StartPosZ   = -682.745,
			IsSummon    = TRUE,  
		},
		
		{
			StartPosId = 2,
			StartPosX   = 5454.83,
			StartPosY   = 123.391,
			StartPosZ   = -488.52,	 
			IsSummon    = TRUE,  
			IsRight		= FALSE,
		},
		
		{
			StartPosId = 50000,
			StartPosX   = 5454.83,
			StartPosY   = 123.391,
			StartPosZ   = -488.52,	 
			IsSummon    = TRUE,  
		},
		
		{
			StartPosId = 3,
			StartPosX   = 3744.78,
			StartPosY   = 58.10,
			StartPosZ   = -1.66,	 
			IsWarp		= TRUE,                 
		},
		
		{
			StartPosId = 4,
			StartPosX   = 5643.992,
			StartPosY   = 123.391,
			StartPosZ   = -616.398,	 
			
			BattleFieldId = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_RUBEN_FIELD_01"],
			BattleFieldStartLineIndex = 1,
			
			--LinkPos   = { 10, }, 	        
			--LinkDungeon = WORLD_ID["WI_ARCADE_RUBEN_STAGE2"], 
			--LinkDungeonPos = 1,--1,    
		},
				
	
						--[[
								-- 루벤 좌측 스타트 포지션		
								{
									StartPosId  = 1,
									StartPosX   = 1074.65,
									StartPosY   = 1347,
									StartPosZ   = -2853.59,
									IsSummon    = TRUE,           
								},
						--]]
						
						
		--[[
				-- 하거스/앤 사이 스타트 포지션
				{
					StartPosId  = 1,
					StartPosX   = 13283.13,
					StartPosY   = 1444.1,
					StartPosZ   = -3114.13,
					IsSummon    = TRUE,           
				},
				
				{
					StartPosId = 2,
					StartPosX   = 14047.41, 
					StartPosY   = 1444,
					StartPosZ   = -4478.87,	     
					IsSummon    = TRUE,   	        
				},
				{
					StartPosId = 3,
					StartPosX   = 5643.992,
					StartPosY   = 123.391,
					StartPosZ   = -616.398,	 
					IsNPC       = FALSE,
					LinkPos   = { 10, },       
				},
		--]]
						
						--[[
								-- 루벤마을 마켓 제거	    
								{
									StartPosId = 4,
									StartPosX   = 13296.63,
									StartPosY   = 1444.0,
									StartPosZ   = -3130.0,	      	 
									IsMarket    = TRUE,   
								},
						--]]
	    
		--[[
				{
					StartPosId = 5,
					StartPosX   = 9585.19,
					StartPosY   = 1034.52,
					StartPosZ   = -1678.00,	     
					IsWarp    = TRUE,   	        
				},
		--]]
	    
						--[[	
								-- 초심자숲으로 가는 길    
								{
									StartPosId = 6,
									StartPosX   = 682,
									StartPosY   = 1347,
									StartPosZ   = -2801,	      	 
									LinkDungeon = DUNGEON_ID["DI_EL_FOREST_GATE_NORMAL"], 
									LinkDungeonPos = 1,
								},
						--]]	    
	}
}

Village[ VILLAGE_MAP_ID["VMI_DUNGEON_GATE_RUBEN"] ] =
{
	NAME = STR_ID_1113,

	BaseLocalStateID	= LOCAL_MAP_ID["LMI_VELDER_NORTH"],			-- 해당 마을을 품는 로컬 ID
	
	DLGBack				= "DLG_Map_Village_Ruben_Back.lua",
	DLGFront			= "DLG_Map_Village_Ruben_Front.lua",
	
	HouseIDList =
	{
		HOUSE_ID["HI_HELLEN_SHOP_HOUSE"],
		HOUSE_ID["HI_BILLBOARD"],
		--HOUSE_ID["HI_DAO"],
		----HOUSE_ID["HI_APINK_ARCHANGEL"],
	},
	
	WORLD_ID = WORLD_ID["WI_DUNGEON_GATE_RUBEN"],
	
	CAMERA = { 1500, 150, 280 },
	
	START_POS = 
	{
	    {
	        StartPosId  = 10,
	        StartPosX   = -3485.31,
	        StartPosY   = 0,
	        StartPosZ   = -427.52,
	        IsSummon    = TRUE,
	    },
	    {
	        StartPosId  = 11,
	        StartPosX   = 3557.85,
	        StartPosY   = 0,
	        StartPosZ   = -439.96,
	        IsSummon    = TRUE,
	    },
	    {
	        StartPosId = 12,
	        StartPosX   = -3798.921,
	        StartPosY   = 0,
	        StartPosZ   = -481.299,
	        LinkPos   = { 2, }, 	        
	    },
	    {
	        StartPosId = 13,
	        StartPosX   = 3798.921,
	        StartPosY   = 0,
	        StartPosZ   = -481.299,
	        LinkPos   = { 20, }, 	        
	    },
	    {
	        StartPosId  = 14,
	        StartPosX   = -1751.86,
	        StartPosY   = -130.28,
	        StartPosZ   = 0,	     
	        IsWarp      = TRUE,   	        
	    },  
	}
}

Village[ VILLAGE_MAP_ID["VMI_ELDER"] ] =
{
	NAME = STR_ID_1114,

	BaseLocalStateID	= LOCAL_MAP_ID["LMI_VELDER_EAST"],			-- 해당 마을을 품는 로컬 ID
	
	DLGBack				= "DLG_Map_Village_Elder_Back.lua",
	DLGFront			= "DLG_Map_Village_Elder_Front.lua",
	
	HouseIDList =
	{
		HOUSE_ID["HI_ECHO_ALCHEMIST_HOUSE"],
		HOUSE_ID["HI_HOFMANN_HOUSE"],
		HOUSE_ID["HI_LUICHEL_HOUSE"],
		HOUSE_ID["HI_LENPAD_HOUSE"],
		HOUSE_ID["HI_CAMILLA_PVP_HOUSE"],
		HOUSE_ID["HI_ARIEL_EVENT_HOUSE"],
		HOUSE_ID["HI_POSTBOX"],
		HOUSE_ID["HI_BILLBOARD"],
		HOUSE_ID["HI_PRIVATE_BANK"],	-- 은행 임시!
		--HOUSE_ID["HI_MANDRASSIL"], --  만드라실
		--HOUSE_ID["HI_CHRISTMAS_TREE"],
		
		--HOUSE_ID["HI_EVENT_NPC1"],    -- 뽀루 주방장(블랙데이 이벤트)
		--HOUSE_ID["HI_WILLIAM_PORTER2"],
		
		--HOUSE_ID["HI_SANTA_DARKELF"],
		----HOUSE_ID["HI_APINK_ARCHANGEL"],

		--HOUSE_ID["HI_MU"],			-- 해외팀 뮤 제거
		--HOUSE_ID["HI_APINK_ARCHANGEL"], --만우절 이벤트, 앙드레 벤더스
	},
	
	WORLD_ID = WORLD_ID["WI_VILLAGE_ELDER"],
	
	CAMERA = { 1500, 230, 300 },
	
	START_POS = 
	{
	    {
	        StartPosId  = 20,
	        StartPosX   = -8041,
	        StartPosY   = 1400,
	        StartPosZ   = 0,
	        IsSummon    = TRUE,
	    },
	    {
	        StartPosId  = 21,
	        StartPosX   = 7870,
	        StartPosY   = 1400,
	        StartPosZ   = 0,	
	        IsSummon    = TRUE,     
			IsRight		= FALSE, 
	    },
	    {
	        StartPosId  = 22,
	        StartPosX   = -8499,
	        StartPosY   = 1400,
	        StartPosZ   = 0,
	        --LinkPos   = { 11, }, 	        
			
			BattleFieldId = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_RUBEN_FIELD_01"],
			BattleFieldStartLineIndex = 2,
			
			--LinkDungeon = WORLD_ID["WI_ARCADE_RUBEN_STAGE2"], 
			--LinkDungeonPos = 53,--1,    
	    },
	    {
	        StartPosId  = 23,
	        StartPosX   = 8521,
	        StartPosY   = 1400,
	        StartPosZ   = 0,
			BattleFieldId = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_ELDER_FIELD_01"],
			BattleFieldStartLineIndex = 1,
	        -- LinkPos   = { 30, }, 	        
	    },
	    {
	        StartPosId = 24,
	        StartPosX   = -5010.71,
	        StartPosY   = 1400.88,
	        StartPosZ   = 0,	      	 
	        IsMarket    = TRUE,   
	    },
	    {
	        StartPosId = 25,
	        StartPosX   = 1133.42,
	        StartPosY   = 1812.72,
	        StartPosZ   = 2470.83,	      	 
	        IsMarket    = TRUE,   
	    },
	    {
	        StartPosId = 26,
	        StartPosX   = -314.10,
	        StartPosY   = 372.38,
	        StartPosZ   = -483.65,	     
	        IsWarp    = TRUE,   	        
	    },
	}
}

Village[ VILLAGE_MAP_ID["VMI_DUNGEON_GATE_ELDER"] ] =
{
	NAME = STR_ID_1115,

	BaseLocalStateID	= LOCAL_MAP_ID["LMI_VELDER_EAST"],			-- 해당 마을을 품는 로컬 ID
	
	DLGBack				= "DLG_Map_Village_Elder_Back.lua",
	DLGFront			= "DLG_Map_Village_Elder_Front.lua",
		
	WORLD_ID = WORLD_ID["WI_DUNGEON_GATE_ELDER"],
	
	HouseIDList =
	{
		HOUSE_ID["HI_HELLEN_SHOP_HOUSE"],
		HOUSE_ID["HI_GLAVE_HOUSE"],
		--HOUSE_ID["HI_LUTO"],
		--HOUSE_ID["HI_DAO"],
		HOUSE_ID["HI_BILLBOARD"],
	},
	
	CAMERA = { 1500, 160, 300 },
	
	START_POS = 
	{
	    {
	        StartPosId  = 30,
	        StartPosX   = 400.0,
	        StartPosY   = 1241.0,
	        StartPosZ   = 0,
	        IsSummon    = TRUE,
	    },
	    {
	        StartPosId  = 31,
	        StartPosX   = 18850,
	        StartPosY   = 1000,
	        StartPosZ   = 0,	
	        IsSummon    = TRUE,      
	    },
	    {
	        StartPosId  = 32,
	        StartPosX   = 0,
	        StartPosY   = 1241.0,
	        StartPosZ   = 0,
	        LinkPos   = { 21, }, 	        
	    },
	    {
	        StartPosId  = 33,
	        StartPosX   = 19250,
	        StartPosY   = 1000,
	        StartPosZ   = 0,
	        LinkPos   = { 40, }, 	        
	    },
	    {
	        StartPosId  = 34,
	        StartPosX   = 3617.75,
	        StartPosY   = 1000,
	        StartPosZ   = 0,	     
	        IsWarp      = TRUE,   	        
	    },  
	}
}


Village[ VILLAGE_MAP_ID["VMI_BESMA"] ] =
{
	NAME = STR_ID_1116,


	BaseLocalStateID	= LOCAL_MAP_ID["LMI_VELDER_SOUTH"],			-- 해당 마을을 품는 로컬 ID
	
	DLGBack				= "DLG_Map_Village_Besma_Back.lua",
	DLGFront			= "DLG_Map_Village_Besma_Front.lua",
	
	HouseIDList =
	{
		HOUSE_ID["HI_CHACHABUK_HOUSE"],
		HOUSE_ID["HI_RICHANG_HOUSE"],
		HOUSE_ID["HI_STELLA_HOUSE"],
		HOUSE_ID["HI_TOMA_HOUSE"],
		HOUSE_ID["HI_CAMILLA_PVP_HOUSE"],
		HOUSE_ID["HI_ARIEL_EVENT_HOUSE"],
		HOUSE_ID["HI_POSTBOX"],
		HOUSE_ID["HI_BILLBOARD"],
		HOUSE_ID["HI_PRIVATE_BANK"],	-- 은행 임시!
		--HOUSE_ID["HI_MANDRASSIL"], --  만드라실
		--HOUSE_ID["HI_CHRISTMAS_TREE"],
		
		--HOUSE_ID["HI_EVENT_NPC2"],    -- 반더스주방장 (블랙데이 이벤트)
		--HOUSE_ID["HI_WILLIAM_PORTER3"],
		--HOUSE_ID["HI_SANTA_DARKELF"],
		----HOUSE_ID["HI_APINK_ARCHANGEL"],

		--HOUSE_ID["HI_MU"],			-- 해외팀 뮤 제거
		--HOUSE_ID["HI_APINK_ARCHANGEL"], --만우절 이벤트, 앙드레 벤더스
	},
	
	WORLD_ID = WORLD_ID["WI_VILLAGE_BESMA"],
	
	CAMERA = { 1500, 230, 300 },
	
	START_POS = 
	{
	    {
	        StartPosId  = 40,
	        StartPosX   = -4902.71,
	        StartPosY   = 5021,
	        StartPosZ   = -3011.96,
	        IsSummon    = TRUE,
	    },
	    {
	        StartPosId  = 41,
	        StartPosX   = 9348.22,
	        StartPosY   = 5019,
	        StartPosZ   = -2704.63,	  
	        IsSummon    = TRUE,    
			IsRight		= FALSE, 
	    },
	    {
	        StartPosId  = 42,
	        StartPosX   = -6045.52,
	        StartPosY   = 5021,
	        StartPosZ   = -2970.47,
			BattleFieldId = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_ELDER_FIELD_02"],
			BattleFieldStartLineIndex = 2,
	      --  LinkPos   = { 31, }, 	        
	    },
	    {
	        StartPosId  = 43,
	        StartPosX   = 10613.9,
	        StartPosY   = 5019,
	        StartPosZ   = -2776.48,
			
			BattleFieldId = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_BESMA_FIELD_01"],
			BattleFieldStartLineIndex = 1,
			--LinkDungeon = WORLD_ID["WI_ARCADE_RUBEN_STAGE1"], 
			--LinkDungeonPos = 124,--1,    
	        --LinkPos   = { 50, }, 	        
	    },
	    {
	        StartPosId = 44,
	        StartPosX   = 156.76,
	        StartPosY   = 3365.0,
	        StartPosZ   = -4454.24,	      	 
	        IsMarket    = TRUE,   
	    },
	    {
	        StartPosId = 45,
	        StartPosX   = 5246.76,
	        StartPosY   = 3365.0,
	        StartPosZ   = -4456.25,	      	 
	        IsMarket    = TRUE,   
	    },
	    {
	        StartPosId = 46,
	        StartPosX   = 1580.76,
	        StartPosY   = 5265.1,
	        StartPosZ   = -3278.38,	     
	        IsWarp    = TRUE,   	        
	    },
	}
}


Village[ VILLAGE_MAP_ID["VMI_DUNGEON_GATE_BESMA"] ] =
{
	NAME = STR_ID_1117,


	BaseLocalStateID	= LOCAL_MAP_ID["LMI_VELDER_SOUTH"],			-- 해당 마을을 품는 로컬 ID
	
	DLGBack				= "DLG_Map_Village_Elder_Back.lua",
	DLGFront			= "DLG_Map_Village_Elder_Front.lua",
		
	WORLD_ID = WORLD_ID["WI_DUNGEON_GATE_BESMA"],
	
	HouseIDList =
	{
		HOUSE_ID["HI_HELLEN_SHOP_HOUSE"],
		HOUSE_ID["HI_GLAVE_HOUSE"],
		--HOUSE_ID["HI_LUTO"],
		--HOUSE_ID["HI_DAO"],
		HOUSE_ID["HI_BILLBOARD"],
		--HOUSE_ID["HI_CHRISTMAS_TREE"],
		--HOUSE_ID["HI_ALLEGRO_PEITA_HOUSE"],
		--HOUSE_ID["HI_LENTO_PEITA_HOUSE"],
	},
	
	CAMERA = { 1500, 160, 300 },
	
	START_POS = 
	{
	    {
	        StartPosId  = 50,
	        StartPosX   = 853.747,
	        StartPosY   = 1000,
	        StartPosZ   = 0,
	        IsSummon    = TRUE,
	    },
	    {
	        StartPosId  = 51,
	        StartPosX   = 7942.95,
	        StartPosY   = 60,
	        StartPosZ   = -1100,	
	        IsSummon    = TRUE,      
	    },
	    {
	        StartPosId  = 52,
	        StartPosX   = 9812.35,
	        StartPosY   = 1610,
	        StartPosZ   = 0,	   
	        IsSummon    = TRUE,   
	    },
	    {
	        StartPosId  = 53,
	        StartPosX   = 28.2639,
	        StartPosY   = 1000,
	        StartPosZ   = 0,
	        LinkPos   = { 41, }, 	        
	    },
	    {
	        StartPosId  = 54,
	        StartPosX   = 8626,
	        StartPosY   = 50,
	        StartPosZ   = -1100,
	        LinkPos   = { 70, }, 	  --70 페이타      
	    },
	    {
	        StartPosId  = 55,
	        StartPosX   = 10380,
	        StartPosY   = 1660,
	        StartPosZ   = 0,
	        LinkPos   = { 60, }, 	        
	    },
	    {
	        StartPosId  = 56,
	        StartPosX   = 2326.64,
	        StartPosY   = 1000,
	        StartPosZ   = 0,	     
	        IsWarp      = TRUE,   	        
	    },  
	}
}
Village[ VILLAGE_MAP_ID["VMI_ALTERA"] ] =
{
	NAME = STR_ID_1118,

	BaseLocalStateID	= LOCAL_MAP_ID["LMI_ALTERA_ISLAND"],			-- 해당 마을을 품는 로컬 ID
	
	DLGBack				= "DLG_Map_Village_Altera_Back.lua",
	DLGFront			= "DLG_Map_Village_Altera_Front.lua",
	
	HouseIDList =
	{
		HOUSE_ID["HI_ADEL_HOUSE"],
		HOUSE_ID["HI_AMOS_ALCHEMIST_HOUSE"],
		HOUSE_ID["HI_AGATHA_EQUIP_SHOP_HOUSE"],
		HOUSE_ID["HI_AIDA_ACCESSORY_HOUSE"],
		HOUSE_ID["HI_CAMILLA_PVP_HOUSE"],
		HOUSE_ID["HI_ARIEL_EVENT_HOUSE"],
		HOUSE_ID["HI_POSTBOX"],
		HOUSE_ID["HI_BILLBOARD"],
		HOUSE_ID["HI_PRIVATE_BANK"],	-- 은행 임시!
		--HOUSE_ID["HI_MANDRASSIL"], -- 만드라실
		--HOUSE_ID["HI_CHRISTMAS_TREE"],
		
		--HOUSE_ID["HI_EVENT_NPC2"],    -- 반더스주방장 (블랙데이 이벤트)
		--HOUSE_ID["HI_WILLIAM_PORTER4"],
		--HOUSE_ID["HI_SANTA_DARKELF"],
		----HOUSE_ID["HI_APINK_ARCHANGEL"],

		--HOUSE_ID["HI_MU"],			-- 해외팀 뮤 제거
		--HOUSE_ID["HI_APINK_ARCHANGEL"], --만우절 이벤트, 앙드레 벤더스
	},
	
	WORLD_ID = WORLD_ID["WI_VILLAGE_ALTERA"],
	
	CAMERA = { 1500, 250, 300 },
	
	START_POS = 
	{
	    {
	        StartPosId  = 60,
	        StartPosX   = -6166.62,
	        StartPosY   = 2855.64,
	        StartPosZ   = 667.051,
	        IsSummon    = TRUE,
	    },
	    {
	        StartPosId  = 61,
	        StartPosX   = 5893.49,
	        StartPosY   = 1460,
	        StartPosZ   = 82,	 
	        IsSummon    = TRUE,     
			IsRight		= FALSE, 
	    },
		
	    {
	        StartPosId  = 62,
	        StartPosX   = -6685,
	        StartPosY   = 2917,
	        StartPosZ   = 686,
			
			BattleFieldId = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_BESMA_FIELD_03"],
			BattleFieldStartLineIndex = 2,
			
			--LinkDungeon = WORLD_ID["WI_ARCADE_RUBEN_STAGE1_1"], 
			--LinkDungeonPos = 35,
	        --LinkPos   = { 52, }, 	        
	    },
		
	    {
	        StartPosId  = 63,
	        StartPosX   = 6529,
	        StartPosY   = 1460,
	        StartPosZ   = 82,
	        --LinkPos   = { 80, }, 	        
			
			BattleFieldId = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_ALTERA_FIELD_01"],
			BattleFieldStartLineIndex = 1,
			--LinkDungeon = WORLD_ID["WI_ARCADE_RUBEN_STAGE3"], 
			--LinkDungeonPos = 1,
	    },
	    {
	        StartPosId = 64,
	        StartPosX   = -3666.74,
	        StartPosY   = 286.95,
	        StartPosZ   = -65.58,	      	 
	        IsMarket    = TRUE,   
	    },
	    {
	        StartPosId = 65,
	        StartPosX   = 3716.27,
	        StartPosY   = 285.99,
	        StartPosZ   = -97.60,	      	 
	        IsMarket    = TRUE,   
	    },
	    {
	        StartPosId = 66,
	        StartPosX   = -602.62,
	        StartPosY   = 815.8,
	        StartPosZ   = 969.89,	     
	        IsWarp    = TRUE,   	        
	    },
	    {
	        StartPosId  = 67,
	        StartPosX   = 6214,
	        StartPosY   = 285,
	        StartPosZ   = -97,
			
			BattleFieldId = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_ALTERA_FIELD_03"],
			BattleFieldStartLineIndex = 2,
	    },
	    {
	        StartPosId  = 68,
	        StartPosX   = 5698,
	        StartPosY   = 285,
	        StartPosZ   = -97,
	        IsSummon    = TRUE,
			IsRight		= FALSE, 
	    },
		
	}
}

Village[ VILLAGE_MAP_ID["VMI_PEITA"] ] =
{
	NAME = STR_ID_1119,

	BaseLocalStateID	= LOCAL_MAP_ID["LMI_PEITA"],			-- 해당 마을을 품는 로컬 ID
	
	--DLGBack				= "DLG_Map_Village_Altera_Back.lua",
	--DLGFront			= "DLG_Map_Village_Altera_Front.lua",
	
	HouseIDList =
	{
		HOUSE_ID["HI_CAMILLA_PVP_HOUSE"],
		HOUSE_ID["HI_ARIEL_EVENT_HOUSE"],
		HOUSE_ID["HI_ALLEGRO_PEITA_HOUSE"],
		HOUSE_ID["HI_LENTO_PEITA_HOUSE"],
		HOUSE_ID["HI_GLAVE_HOUSE"],
		HOUSE_ID["HI_POSTBOX"],
		HOUSE_ID["HI_BILLBOARD"],
		----HOUSE_ID["HI_APINK_ARCHANGEL"],
		HOUSE_ID["HI_PRIVATE_BANK"],
		--HOUSE_ID["HI_MU"],			-- 해외팀 뮤 제거
		--HOUSE_ID["HI_APINK_ARCHANGEL"], --만우절 이벤트, 앙드레 벤더스
	},
	
	WORLD_ID = WORLD_ID["WI_VILLAGE_PEITA"],
	
	CAMERA = { 1500, 160, 300 },
	
	START_POS = 
	{
	    {
	        StartPosId  = 70,
	        StartPosX   = -13869.24,
	        StartPosY   = 1457,
	        StartPosZ   = -1574,
	        IsSummon    = TRUE,
	    },
	    {
	        StartPosId  = 71,
	        StartPosX   = -1914,
	        StartPosY   = 1137,
	        StartPosZ   = -1476,
	        IsSummon    = TRUE,    
			IsRight		= FALSE,  
	    },
	    {
	        StartPosId  = 72,
	        StartPosX   = -14120,
	        StartPosY   = 1457,
	        StartPosZ   = -1574,
			
			BattleFieldId = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_PEITA_FIELD_01"],
			BattleFieldStartLineIndex = 2,     
	    },
       
	   {
            StartPosId = 73,
	        StartPosX   = -7562.446,
	        StartPosY   = 437.599,
	        StartPosZ   = -3705.317,     
	        IsWarp    = TRUE,   	
        },

        -- 벨더로 가는길
	    {
	        StartPosId  = 74,
	        StartPosX   = -1584,
	        StartPosY   = 1137,
	        StartPosZ   = -1350,
	       
			BattleFieldId = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_PEITA_FIELD_02"],
			BattleFieldStartLineIndex = 1,   
		  -- LinkPos   = { 90, }, 	        
	    },
		
	    {
	        StartPosId = 75,
	        StartPosX   = -8912.602,
	        StartPosY   = 437.464,
	        StartPosZ   = -3705.83,	      	 
	        IsMarket    = TRUE,   
	    },
	}
}

Village[ VILLAGE_MAP_ID["VMI_DUNGEON_GATE_ALTERA"] ] =
{
	NAME = STR_ID_1120,

	BaseLocalStateID	= LOCAL_MAP_ID["LMI_ALTERA_ISLAND"],			-- 해당 마을을 품는 로컬 ID
	
	DLGBack				= "DLG_Map_Village_Altera_Back.lua",
	DLGFront			= "DLG_Map_Village_Altera_Front.lua",
		
	WORLD_ID = WORLD_ID["WI_DUNGEON_GATE_ALTERA"],
	
	HouseIDList =
	{
		HOUSE_ID["HI_HELLEN_SHOP_HOUSE"],
		HOUSE_ID["HI_GLAVE_HOUSE"],
		--HOUSE_ID["HI_LUTO"],
		--HOUSE_ID["HI_DAO"],
		HOUSE_ID["HI_BILLBOARD"],
	},
	
	CAMERA = { 1500, 160, 300 },
	
	START_POS = 
	{
	    {
	        StartPosId  = 80,
	        StartPosX   = 515.295,
	        StartPosY   = 1000,
	        StartPosZ   = 0,
	        IsSummon    = TRUE,
	    },
	    {
	        StartPosId  = 81,
	        StartPosX   = 9402.67,
	        StartPosY   = 1000,
	        StartPosZ   = 0,	
	        IsSummon    = TRUE,      
	    },
	    {
	        StartPosId  = 82,
	        StartPosX   = 0.001,
	        StartPosY   = 1000,
	        StartPosZ   = 0,
	        LinkPos     = { 61, }, 	        
	    },
	    {
	        StartPosId  = 83,
	        StartPosX   = 2400,
	        StartPosY   = 1000,
	        StartPosZ   = 0,	     
	        IsWarp      = TRUE,   	        
	    },    
	}
}

Village[ VILLAGE_MAP_ID["VMI_VELDER"] ] =
{
	NAME = STR_ID_4622,

	BaseLocalStateID	= LOCAL_MAP_ID["LMI_VELDER"],			-- 해당 마을을 품는 로컬 ID
	
	--DLGBack				= "DLG_Map_Village_Altera_Back.lua",
	--DLGFront			= "DLG_Map_Village_Altera_Front.lua",
		
	WORLD_ID = WORLD_ID["WI_VILLAGE_VELDER"],
	
	HouseIDList =
	{
		HOUSE_ID["HI_GRAIL"],
		HOUSE_ID["HI_NOEL"],
		HOUSE_ID["HI_VANESSA"],
		HOUSE_ID["HI_PRAUS"],
		HOUSE_ID["HI_HANNA"],
		HOUSE_ID["HI_CAMILLA_PVP_HOUSE"],
		HOUSE_ID["HI_ARIEL_EVENT_HOUSE"],
		HOUSE_ID["HI_POSTBOX"],
		HOUSE_ID["HI_BILLBOARD"],
		HOUSE_ID["HI_PRIVATE_BANK"],		
		--HOUSE_ID["HI_CHRISTMAS_TREE"],
		--HOUSE_ID["HI_MANDRASSIL"], --  만드라실
		--HOUSE_ID["HI_SANTA_DARKELF"],
		----HOUSE_ID["HI_APINK_ARCHANGEL"],

		--HOUSE_ID["HI_MU"],			-- 해외팀 뮤 제거
		--HOUSE_ID["HI_APINK_ARCHANGEL"], --만우절 이벤트, 앙드레 벤더스
	},
	
	CAMERA = { 1500, 250, 250 },
	
	START_POS = 
	{
	    {
	        StartPosId  = 90,
	        StartPosX   = -4115.85,
	        StartPosY   = 475,
	        StartPosZ   = 80.3739,
	        IsSummon    = TRUE,
	    },
	    {
	        StartPosId  = 91,
	        StartPosX   = 6885.72,
	        StartPosY   = 467,
	        StartPosZ   = -567.6,
	        IsSummon    = TRUE,     
			IsRight		= FALSE, 
	    },	    
	    {
	        StartPosId  = 92,
	        StartPosX   = -4551.87,
	        StartPosY   = 475,
	        StartPosZ   = 142.971,
	        BattleFieldId = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_PEITA_FIELD_03"],
			BattleFieldStartLineIndex = 2, 
			--LinkPos   = { 71, }, 	        
	    },  
	    {
	        StartPosId  = 93,
	        StartPosX   = 7379,
	        StartPosY   = 467,
	        StartPosZ   = -641,
			BattleFieldId = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_VELDER_FIELD_01"],
			BattleFieldStartLineIndex = 1, 
	        --LinkPos   = { 100, }, 	        
	    },
	    {
	        StartPosId = 94,
	        StartPosX   = 1188.84,
	        StartPosY   = 768.0,
	        StartPosZ   = 1584.89,	      	 
	        IsMarket    = TRUE,   
	    },
        {
            StartPosId = 95,
	        StartPosX   = 459.2,
	        StartPosY   = 259,
	        StartPosZ   = -237,	     
	        IsWarp    = TRUE,   	        
        },  
	    
	}
}

Village[ VILLAGE_MAP_ID["VMI_DUNGEON_GATE_VELDER"] ] =
{
	NAME = STR_ID_4623,

	BaseLocalStateID	= LOCAL_MAP_ID["LMI_VELDER"],			-- 해당 마을을 품는 로컬 ID
	
	--DLGBack				= "DLG_Map_Village_Altera_Back.lua",
	--DLGFront			= "DLG_Map_Village_Altera_Front.lua",
		
	WORLD_ID = WORLD_ID["WI_DUNGEON_GATE_VELDER"],
	
	HouseIDList =
	{
		HOUSE_ID["HI_HELLEN_SHOP_HOUSE"],
		HOUSE_ID["HI_GLAVE_HOUSE"],
		--HOUSE_ID["HI_LUTO"],
		--HOUSE_ID["HI_DAO"],
		HOUSE_ID["HI_BILLBOARD"],
	},
	
	CAMERA = { 1500, 160, 300 },
	
	START_POS = 
	{
	    {
	        StartPosId  = 100,
	        StartPosX   = -3461.98,
	        StartPosY   = 10,
	        StartPosZ   = -601,
	        IsSummon    = TRUE,
	    },
	    {
	        StartPosId  = 102,
	        StartPosX   = -4000,
	        StartPosY   = 10,
	        StartPosZ   = -601,
	        LinkPos   = { 91, }, 	        
	    },
	    {	-- 하멜에서
	        StartPosId  = 103,
	        StartPosX   = 3140.00,
	        StartPosY   = 10,
	        StartPosZ   = -601,
	        IsSummon    = TRUE,
	    },
	    --[[{	-- 직행 하멜 로
	        StartPosId  = 104,
	        StartPosX   = 3500,
	        StartPosY   = 10,
	        StartPosZ   = -601,
	        LinkPos   = { 110, }, 	        
	    },--]]
	    {	-- 배타고 하멜로
			StartPosId = 104,
			StartPosX   = 3500,
			StartPosY   = 10,
			StartPosZ   = -601,			
			LinkGateDungeon = DUNGEON_ID["DI_BATTLE_SHIP_VELDER"],
		},
        {
            StartPosId = 105,
	        StartPosX   = -1468.23,
	        StartPosY   = 10,
	        StartPosZ   = -601,	     
	        IsWarp    = TRUE,   	        
        },  
	    
	}
}

Village[ VILLAGE_MAP_ID["VMI_HAMEL"] ] =
{
	NAME = STR_ID_10232,

	BaseLocalStateID	= LOCAL_MAP_ID["LMI_HAMEL"],			-- 해당 마을을 품는 로컬 ID
	
	--DLGBack				= "DLG_Map_Village_Altera_Back.lua",
	--DLGFront			= "DLG_Map_Village_Altera_Front.lua",
		
	WORLD_ID = WORLD_ID["WI_VILLAGE_HAMEL"],
	
	HouseIDList =
	{
		HOUSE_ID["HI_HORATIO"],
		HOUSE_ID["HI_LUCY"],
		HOUSE_ID["HI_DAISY"],
		HOUSE_ID["HI_PENENSIO"],
		HOUSE_ID["HI_DENKA"],
		HOUSE_ID["HI_CAMILLA_PVP_HOUSE"],
		HOUSE_ID["HI_ARIEL_EVENT_HOUSE"],
		HOUSE_ID["HI_POSTBOX"],
		HOUSE_ID["HI_BILLBOARD"],
		HOUSE_ID["HI_PRIVATE_BANK"],
		--HOUSE_ID["HI_MANDRASSIL"], --만드라실
		--HOUSE_ID["HI_MU"],			-- 해외팀 뮤 제거
		----HOUSE_ID["HI_APINK_ARCHANGEL"],
		--HOUSE_ID["HI_APINK_ARCHANGEL"], --만우절 이벤트, 앙드레 벤더스
	},
	
	CAMERA = { 1500, 230, 300 },
	
	START_POS = 
	{
	    {	-- 벨더에서
	        StartPosId  = 110,
	        StartPosX   = -7889.64,
	        StartPosY   = 585,
	        StartPosZ   = 1461,
	        IsSummon    = TRUE,
	    },
	    {	-- 하멜 외곽에서
	        StartPosId  = 111,
	        StartPosX   = 7568.44,
	        StartPosY   = 585,
	        StartPosZ   = 1291,
	        IsSummon    = TRUE,    
			IsRight		= FALSE,  
	    },
	    {	-- 배타고 벨더로
			StartPosId  = 112,
	        StartPosX   = -8242,
	        StartPosY   = 585,
	        StartPosZ   = 1461,	
			BattleFieldId = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_HAMEL_SHIP_STAGE"], 
			BattleFieldStartLineIndex = 1, 
		},
	    {	-- 하멜 외곽으로
	        StartPosId  = 113,
	        StartPosX   = 8000,
	        StartPosY   = 585,
	        StartPosZ   = 1291,
	       -- LinkPos		= { 121, }, 
			BattleFieldId = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_HAMEL_FIELD_01"],
			BattleFieldStartLineIndex = 1, 
	    },
	    {
	        StartPosId	= 114,
	        StartPosX   = 0.0,
	        StartPosY   = 465.0,
	        StartPosZ   = 4343.00,	      	 
	        IsMarket    = TRUE,   
	    },
        {
            StartPosId	= 115,
	        StartPosX   = 731.60,
	        StartPosY   = 527.72,
	        StartPosZ   = 88.21,	     
	        IsWarp		= TRUE,   	        
        },
	}
}

Village[ VILLAGE_MAP_ID["VMI_DUNGEON_GATE_HAMEL"] ] =
{
	NAME = STR_ID_10233,

	BaseLocalStateID	= LOCAL_MAP_ID["LMI_HAMEL"],			-- 해당 마을을 품는 로컬 ID
	
	--DLGBack				= "DLG_Map_Village_Altera_Back.lua",
	--DLGFront			= "DLG_Map_Village_Altera_Front.lua",
		
	WORLD_ID = WORLD_ID["WI_DUNGEON_GATE_HAMEL"],
	
	HouseIDList =
	{
		HOUSE_ID["HI_HELLEN_SHOP_HOUSE"],
		HOUSE_ID["HI_GLAVE_HOUSE"],
		--HOUSE_ID["HI_LUTO"],
		--HOUSE_ID["HI_DAO"],
		HOUSE_ID["HI_BILLBOARD"],
	},
	
	CAMERA = { 1500, 160, 300 },
	
	START_POS = 
	{
	    {
	        StartPosId  = 121,
	        StartPosX   = -11318.8,
	        StartPosY   = 5084,
	        StartPosZ   = -12252 + 12000,
	        IsSummon    = TRUE,
	    },
	    --[[{	
	        StartPosId  = 122,
	        StartPosX   = -11512.2,
	        StartPosY   = 5084,
	        StartPosZ   = -12252,
	        IsSummon    = TRUE,
	    },--]]
	    {
	        StartPosId  = 123,
	        StartPosX   = -11531.00,
	        StartPosY   = 5084,
	        StartPosZ   = -12252 + 12000,
	        LinkPos		= { 111, },
	    },
	    --[[{	
	        StartPosId  = 124,
	        StartPosX   = 3500,
	        StartPosY   = 10,
	        StartPosZ   = -601,
	        LinkPos   = { 110, },
	    },--]]
        {
            StartPosId	= 125,
	        StartPosX   = -8094.00,
	        StartPosY   = 4844.00,
	        StartPosZ   = -12252.00 + 12000,
	        IsWarp		= TRUE,
        },  
        -- 샌더로 가는길
-- NO_SANDER_VILLIAGE
--[[
	    {
	        StartPosId  = 126,
	        StartPosX   = -2369.61,
	        StartPosY   = 5084,
	        StartPosZ   = -252,
	        LinkPos   = { 130, }, 	        
	    },
        -- 샌더에서 하멜외곽으로
	    {
	        StartPosId  = 127,
	        StartPosX   = -2640.42,
	        StartPosY   = 5084,
	        StartPosZ   = -252,
	        IsSummon    = TRUE,      
	    },
--]]
-- NO_SANDER_VILLIAGE
	}
}





Village[ VILLAGE_MAP_ID["VMI_SANDER"] ] =
{
	NAME = STR_ID_22048,

	BaseLocalStateID	= LOCAL_MAP_ID["LMI_SANDER"],			-- 해당 마을을 품는 로컬 ID
			
	WORLD_ID = WORLD_ID["WI_VILLAGE_SANDER"],
	
	HouseIDList =
	{
		HOUSE_ID["HI_ROSEANG"],
		HOUSE_ID["HI_EMIRATE"],
		HOUSE_ID["HI_VAPOR"],
		HOUSE_ID["HI_DAPPAR"],
		HOUSE_ID["HI_CAMILLA_PVP_HOUSE"],
		HOUSE_ID["HI_ARIEL_EVENT_HOUSE"],
		HOUSE_ID["HI_POSTBOX"],
		HOUSE_ID["HI_BILLBOARD"],
		HOUSE_ID["HI_PRIVATE_BANK"],
		--HOUSE_ID["HI_MU"],			-- 해외팀 뮤 제거
	},
	
	CAMERA = { 1500, 230, 300 },
	
	START_POS = 
	{
	    {	-- 하멜 필드 에서 샌더 마을에 도착하는 위치
	        StartPosId  = 130,
	        StartPosX   = -10468.64,
	        StartPosY   = 1000,
	        StartPosZ   = -8229,
	        IsSummon    = TRUE,
	    },
		{	-- 샌더 필드 에서 샌더 마을에 도착하는 위치
	        StartPosId  = 131,
	        StartPosX   = 10372,
	        StartPosY   = 1000,
	        StartPosZ   = -8229.71,
	        IsSummon    = TRUE,
			IsRight		= FALSE,  
	    },
		{	-- VMI_BATTLE_FIELD_HAMEL_FIELD_04 으로 가는 위치
			StartPosId  = 132,
	        StartPosX   = -10717.74,
	        StartPosY   = 1000,
	        StartPosZ   = -8229.71,
	        
			BattleFieldId = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_HAMEL_FIELD_04"],
			BattleFieldStartLineIndex = 3,
	    },
		{	-- VVMI_BATTLE_FIELD_SANDER_FIELD_01 으로 가는 위치
			StartPosId  = 133,
	        StartPosX   = 10717.74,
	        StartPosY   = 1000,
	        StartPosZ   = -8229.71,
	        
			BattleFieldId = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_SANDER_FIELD_01"],
			BattleFieldStartLineIndex = 1,
	    },
		
		{	-- 마켓 입구
	        StartPosId  = 134,
	        StartPosX   = -2.897,
	        StartPosY   = 1399.838,
	        StartPosZ   = -1529.702,
	        IsMarket    = TRUE,
	    },
		
		{	-- 기본 소환 위치
	        StartPosId = 135,
	        StartPosX   = -1592.80,
	        StartPosY   = 1000.00,
	        StartPosZ   = -8469.00,    
	        IsWarp    = TRUE,   	        
	    },
	}
}




-- fix!! 아래는 임시 던전결과방 field


Village[ VILLAGE_MAP_ID["VMI_DUNGEON_LOUNGE_RUBEN"] ] =
{
	NAME = STR_ID_1121,

	BaseLocalStateID	= LOCAL_MAP_ID["LMI_VELDER_NORTH"],			-- 해당 마을을 품는 로컬 ID
	
	DLGBack				= "DLG_Map_Village_Altera_Back.lua",			-- fix!!
	DLGFront			= "DLG_Map_Village_Altera_Front.lua",			-- fix!!
		
	HouseIDList =
	{
		HOUSE_ID["HI_HELLEN_SHOP_HOUSE"],
		--HOUSE_ID["HI_WILLIAM_PORTER1"],
	},
			
	WORLD_ID = WORLD_ID["WI_DUNGEON_LOUNGE_RUBEN"],   
	
	CAMERA = { 1500, 160, 300 },
	
	START_POS =	
	{
		{
			StartPosId	= 10001,
			StartPosX	= 1287.78,
			StartPosY	= 1000,
			StartPosZ	= 0,
			IsSummon	= TRUE,
		},
	},
	
	
	
	
	DUNGEON_LOUNGE_START_POS = 
	{
		{
			START_POS_WORLD_ID = WORLD_ID["WI_EL_FOREST_WEST_STAGE3"],
		
			USER_START_POS = 
			{
				{
					StartPosX	= 4912,
					StartPosY	= 960,
					StartPosZ	= 0,
				},
				{
					StartPosX	= 5342,
					StartPosY	= 960,
					StartPosZ	= 0,
				},
				{
					StartPosX	= 4657,
					StartPosY	= 1200,
					StartPosZ	= 0,
				},
				{
					StartPosX	= 5597,
					StartPosY	= 1200,
					StartPosZ	= 0,
				},
			},
		},
		
		{	
			START_POS_WORLD_ID = WORLD_ID["WI_RUBEN_EL_TREE_BOSS_STAGE"],

			USER_START_POS =
			{
				{
					StartPosX	= -1402,
					StartPosY	= 240,
					StartPosZ	= -580,
				},
				{
					StartPosX	= -972,
					StartPosY	= 60,
					StartPosZ	= -580,
				},
				{
					StartPosX	= -84,
					StartPosY	= 100,
					StartPosZ	= -580,
				},
				{
					StartPosX	= 61,
					StartPosY	= 100,
					StartPosZ	= -580,
				},
			},
		},
		
		
		{	
			START_POS_WORLD_ID = WORLD_ID["WI_RUBEN_RUIN_OF_ELF_BOSS_STAGE"],

			USER_START_POS =
			{
				{
					StartPosX	= -220,
					StartPosY	= 142,
					StartPosZ	= 0,
				},
				{
					StartPosX	= -880,
					StartPosY	= 382,
					StartPosZ	= 0,
				},
				{
					StartPosX	= 436,
					StartPosY	= 142,
					StartPosZ	= 0,
				},
				{
					StartPosX	= 778,
					StartPosY	= 142,
					StartPosZ	= 0,
				},
			},
		},
		
		
		{	
			START_POS_WORLD_ID = WORLD_ID["WI_EL_FOREST_MAIN_STAGE4"],

			USER_START_POS =
			{
				{
					StartPosX	= 1473,
					StartPosY	= 340,
					StartPosZ	= 0,
				},
				{
					StartPosX	= 2218,
					StartPosY	= 100,
					StartPosZ	= 365,
				},
				{
					StartPosX	= 1143,
					StartPosY	= 0,
					StartPosZ	= 0,
				},
				{
					StartPosX	= 2396,
					StartPosY	= 100,
					StartPosZ	= 547,
				},
			},
		},
		
		{	

			START_POS_WORLD_ID = WORLD_ID["WI_RUBEN_SWAMP_BOSS_STAGE"],

			USER_START_POS =
			{
				{
					StartPosX	= -132,
					StartPosY	= 411,
					StartPosZ	= 546,
				},
				{
					StartPosX	= 245,
					StartPosY	= 171,
					StartPosZ	= 546,
				},
				{
					StartPosX	= 826,
					StartPosY	= 411,
					StartPosZ	= 639,
				},
				{
					StartPosX	= 1028,
					StartPosY	= 411,
					StartPosZ	= 696,
				},
			},
			
		},
		
		
		{	

			START_POS_WORLD_ID = WORLD_ID["WI_NOVICE_FOREST_STAGE2"],

			USER_START_POS =
			{
				{
					StartPosX	= 750,
					StartPosY	= 240,
					StartPosZ	= 0,
				},
				{
					StartPosX	= 1740,
					StartPosY	= 240,
					StartPosZ	= 0,
				},
				{
					StartPosX	= 984,
					StartPosY	= 0,
					StartPosZ	= 0,
				},
				{
					StartPosX	= 1515,
					StartPosY	= 0,
					StartPosZ	= 0,
				},
			},
			
		},
		
		
		{	
			START_POS_WORLD_ID = WORLD_ID["WI_EL_FOREST_EXTRA_STAGE4"],

			USER_START_POS =
			{
				{
					StartPosX	= 4446,
					StartPosY	= 1900,
					StartPosZ	= 0,
				},
				{
					StartPosX	= 3422,
					StartPosY	= 1420,
					StartPosZ	= 0,
				},
				{
					StartPosX	= 4500,
					StartPosY	= 1420,
					StartPosZ	= 0,
				},
				{
					StartPosX	= 3100,
					StartPosY	= 1660,
					StartPosZ	= 0,
				},
			},
		},
		
		
		{	
			
			START_POS_WORLD_ID = WORLD_ID["WI_EL_FOREST_NORTH_STAGE3"],

			USER_START_POS =
			{
				{
					StartPosX	= 2647,
					StartPosY	= 0,
					StartPosZ	= 0,
				},
				{
					StartPosX	= 3347,
					StartPosY	= 0,
					StartPosZ	= 0,
				},
				{
					StartPosX	= 2297,
					StartPosY	= 0,
					StartPosZ	= 0,
				},
				{
					StartPosX	= 3697,
					StartPosY	= 0,
					StartPosZ	= 0,
				},
			},
			
		},
		
		
		{	
			START_POS_WORLD_ID = WORLD_ID["WI_EL_FOREST_EXTRA_CAVE_STAGE5"],

			USER_START_POS =
			{
				{
					StartPosX	= 1843,
					StartPosY	= 720,
					StartPosZ	= 0,
				},
				{
					StartPosX	= 2143,
					StartPosY	= 720,
					StartPosZ	= 0,
				},
				{
					StartPosX	= 1693,
					StartPosY	= 720,
					StartPosZ	= 0,
				},
				{
					StartPosX	= 2293,
					StartPosY	= 720,
					StartPosZ	= 0,
				},
			},
        },


		{
			START_POS_WORLD_ID = WORLD_ID["WI_TRAINING_CENTER_FREESTAGE"],

			USER_START_POS =
			{
				{
					StartPosX	= 700,
					StartPosY	= 240,
					StartPosZ	= 0,
				},
				{
					StartPosX	= 1000,
					StartPosY	= 240,
					StartPosZ	= 0,
				},
				{
					StartPosX	= 400,
					StartPosY	= 240,
					StartPosZ	= 0,
				},
				{
					StartPosX	= 1300,
					StartPosY	= 240,
					StartPosZ	= 0,
				},
			},
		},
			
		{
			START_POS_WORLD_ID = WORLD_ID["WI_ALTERA_CORE_BOSS_STAGE"],

  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = 1965,
					StartPosY   = 1682,
					StartPosZ   = 249,
				},
  				{
					StartPosX   = 2507,
					StartPosY   = 1682,
					StartPosZ   = 270,
				},
  				{
					StartPosX   = 1500,
					StartPosY   = 1442,
					StartPosZ   = 296,
				},
  				{
					StartPosX   = 2953,
					StartPosY   = 1442,
					StartPosZ   = 350,
				},
			},
		},

	}, -- DUNGEON_LOUNGE_START_POS
		
}






Village[ VILLAGE_MAP_ID["VMI_DUNGEON_LOUNGE_ELDER"] ] =
{
	NAME = STR_ID_1122,

	BaseLocalStateID	= LOCAL_MAP_ID["LMI_VELDER_EAST"],			-- 해당 마을을 품는 로컬 ID
	
	DLGBack				= "DLG_Map_Village_Altera_Back.lua",			-- fix!!
	DLGFront			= "DLG_Map_Village_Altera_Front.lua",			-- fix!!

	HouseIDList =
	{
		HOUSE_ID["HI_HELLEN_SHOP_HOUSE"],
		HOUSE_ID["HI_GLAVE_HOUSE"],
		--HOUSE_ID["HI_WILLIAM_PORTER2"],
	},
		
	WORLD_ID = WORLD_ID["WI_DUNGEON_LOUNGE_ELDER"],
	
	CAMERA = { 1500, 160, 300 },
	
	START_POS = 
	{
		{
			StartPosId  = 10002,
			StartPosX   = 1287.78,
			StartPosY   = 1000,
			StartPosZ   = 0,
			IsSummon    = TRUE,
		},
	},
	DUNGEON_LOUNGE_START_POS =
  	{
  		{
			START_POS_WORLD_ID = WORLD_ID["WI_ELDER_DRUID_FOREST_STAGE3"],

  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = 2321,
					StartPosY   = 224,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 2071,
					StartPosY   = 174,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 1814,
					StartPosY   = 122,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 1581,
					StartPosY   = 76,
					StartPosZ   = 0,
				},
			},
		},

		
		{			
			START_POS_WORLD_ID = WORLD_ID["WI_ELDER_NATURE_CAVE_STAGE3"],

  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = 1320,
					StartPosY   = 720,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 1660,
					StartPosY   = 720,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 1150,
					StartPosY   = 720,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 1830,
					StartPosY   = 720,
					StartPosZ   = 0,
				},
			},
		},

		
		{			
			START_POS_WORLD_ID = WORLD_ID["WI_ELDER_BENDERS_STAGE3"],

  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = 1807,
					StartPosY   = 24,
					StartPosZ   = 232,
				},
  				{
					StartPosX   = 1301,
					StartPosY   = 0,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 1297,
					StartPosY   = 580,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 2147,
					StartPosY   = 154,
					StartPosZ   = 470,
				},
			},
		},

		
		{
			START_POS_WORLD_ID = WORLD_ID["WI_ELDER_BELOW_PASSAGE_STAGE4"],

  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = 1733,
					StartPosY   = 126,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 2463,
					StartPosY   = 127,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 1668,
					StartPosY   = 380,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 2527,
					StartPosY   = 380,
					StartPosZ   = 0,
				},
			},
		},

		
		{
			START_POS_WORLD_ID = WORLD_ID["WI_ELDER_WALLY_CASTLE_ROOF_STAGE4"],

  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = -900,
					StartPosY   = 0,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 900,
					StartPosY   = 0,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = -900,
					StartPosY   = 480,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 900,
					StartPosY   = 480,
					StartPosZ   = 0,
				},
			},
		},

		
		{
			START_POS_WORLD_ID = WORLD_ID["WI_ELDER_WALLY_CASTLE_CENTER_STAGE4"],

  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = -300,
					StartPosY   = 0,
					StartPosZ   = -187,
				},
  				{
					StartPosX   = 300,
					StartPosY   = 0,
					StartPosZ   = -187,
				},
  				{
					StartPosX   = -600,
					StartPosY   = 0,
					StartPosZ   = -187,
				},
  				{
					StartPosX   = 600,
					StartPosY   = 0,
					StartPosZ   = -187,
				},
			},
		},

		
		{			
			START_POS_WORLD_ID = WORLD_ID["WI_ELDER_WALLY_CASTLE_LAB_STAGE5"],

  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = 8975,
					StartPosY   = 204,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 9575,
					StartPosY   = 204,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 8650,
					StartPosY   = 449,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 9900,
					StartPosY   = 449,
					StartPosZ   = 0,
				},
			},
		},
			

		{
			START_POS_WORLD_ID = WORLD_ID["WI_TRAINING_CENTER_FREESTAGE"],

			USER_START_POS =
			{
				{
					StartPosX	= 700,
					StartPosY	= 240,
					StartPosZ	= 0,
				},
				{
					StartPosX	= 1000,
					StartPosY	= 240,
					StartPosZ	= 0,
				},
				{
					StartPosX	= 400,
					StartPosY	= 240,
					StartPosZ	= 0,
				},
				{
					StartPosX	= 1300,
					StartPosY	= 240,
					StartPosZ	= 0,
				},
			},
			
		},
		{
			START_POS_WORLD_ID = WORLD_ID["WI_ALTERA_CORE_BOSS_STAGE"],

  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = 1965,
					StartPosY   = 1682,
					StartPosZ   = 249,
				},
  				{
					StartPosX   = 2507,
					StartPosY   = 1682,
					StartPosZ   = 270,
				},
  				{
					StartPosX   = 1500,
					StartPosY   = 1442,
					StartPosZ   = 296,
				},
  				{
					StartPosX   = 2953,
					StartPosY   = 1442,
					StartPosZ   = 350,
				},
			},
		},
		
		{
			START_POS_WORLD_ID = WORLD_ID["WI_ARCADE_NEW_STAGE_REST"],

			USER_START_POS =
			{
				{
					StartPosX	= -230,
					StartPosY	= 240,
					StartPosZ	= -2,
				},
				{
					StartPosX	= 230,
					StartPosY	= 240,
					StartPosZ	= -2,
				},
				{
					StartPosX	= -460,
					StartPosY	= 240,
					StartPosZ	= -2,
				},
				{
					StartPosX	= 460,
					StartPosY	= 240,
					StartPosZ	= -2,
				},
			},
		},
		--식목일 던전 라운지--
		{	

			START_POS_WORLD_ID = WORLD_ID["WI_EVENT_TREE_DAY_STAGE_BOSS"],

			USER_START_POS =
			{
				{
					StartPosX	= 1361,
					StartPosY	= 0,
					StartPosZ	= 10,
				},
				{
					StartPosX	= 1073,
					StartPosY	= 0,
					StartPosZ	= 0,
				},
				{
					StartPosX	= 1867,
					StartPosY	= 0,
					StartPosZ	= 136,
				},
				{
					StartPosX	= 2137,
					StartPosY	= 0,
					StartPosZ	= 391,
				},
			},
			
		},
		
		--비던 엘더 라운지--
		
		{	
			START_POS_WORLD_ID = WORLD_ID["WI_ELDER_SECRET_BOSS"],

			USER_START_POS =
			{
				{
					StartPosX	= -1260.62,
					StartPosY	= 480,
					StartPosZ	= -504,
				},
				{
					StartPosX	= -1044,
					StartPosY	= 480,
					StartPosZ	= -504,
				},
				{
					StartPosX	= -165.992,
					StartPosY	= 0,
					StartPosZ	= -504,
				},
				{
					StartPosX	= 329.121,
					StartPosY	= 0,
					StartPosZ	= -504,
				},
			},
			
		},
		
		{	
			START_POS_WORLD_ID = WORLD_ID["WI_ELDER_HELL_EXTRA_STAGE5"],

			USER_START_POS =
			{
				{
					StartPosX	= -1260.62,
					StartPosY	= 480,
					StartPosZ	= -504,
				},
				{
					StartPosX	= -1044,
					StartPosY	= 480,
					StartPosZ	= -504,
				},
				{
					StartPosX	= -165.992,
					StartPosY	= 0,
					StartPosZ	= -504,
				},
				{
					StartPosX	= 329.121,
					StartPosY	= 0,
					StartPosZ	= -504,
				},
			},
			
		},
		
		{	
			START_POS_WORLD_ID = WORLD_ID["WI_ELDER_SECRET_BOSS"],

			USER_START_POS =
			{
				{
					StartPosX	= -1260.62,
					StartPosY	= 480,
					StartPosZ	= -504,
				},
				{
					StartPosX	= -1044,
					StartPosY	= 480,
					StartPosZ	= -504,
				},
				{
					StartPosX	= -165.992,
					StartPosY	= 0,
					StartPosZ	= -504,
				},
				{
					StartPosX	= 329.121,
					StartPosY	= 0,
					StartPosZ	= -504,
				},
			},
			
		},
		
		
		{	
			START_POS_WORLD_ID = WORLD_ID["WI_EVENT_HALLOWEEN_STAGE_BOSS"],

			USER_START_POS =
			{
				{
					StartPosX	= 640.894,
					StartPosY	= 480,
					StartPosZ	= 0,
				},
				{
					StartPosX	= 841.114,
					StartPosY	= 480,
					StartPosZ	= 0,
				},
				{
					StartPosX	= 1169.68,
					StartPosY	= 720,
					StartPosZ	= 0,
				},
				{
					StartPosX	= 1713.89,
					StartPosY	= 720,
					StartPosZ	= 0,
				},
			},
			
		},
		
		{ --승만
			START_POS_WORLD_ID = WORLD_ID["WI_DEFENCE_DUNGEON_NORMAL_STAGE"],
  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = -436,
					StartPosY   = 3697,
					StartPosZ   = -5126,
				},
  				{
					StartPosX   = 246,
					StartPosY   = 3697,
					StartPosZ   = -5126,
				},
  				{
					StartPosX   = -74,
					StartPosY   = 3697,
					StartPosZ   = -5126,
				},
  				{
					StartPosX   = 19,
					StartPosY   = 3937,
					StartPosZ   = -5126,
				},
			},
		},
		
		{ --승만
			START_POS_WORLD_ID = WORLD_ID["WI_DEFENCE_DUNGEON_HARD_STAGE"],
  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = -436,
					StartPosY   = 3697,
					StartPosZ   = -5126,
				},
  				{
					StartPosX   = 246,
					StartPosY   = 3697,
					StartPosZ   = -5126,
				},
  				{
					StartPosX   = -74,
					StartPosY   = 3697,
					StartPosZ   = -5126,
				},
  				{
					StartPosX   = 19,
					StartPosY   = 3937,
					StartPosZ   = -5126,
				},
			},
		},
				
		{ 	--승만
			START_POS_WORLD_ID = WORLD_ID["WI_DEFENCE_DUNGEON_EXPERT_STAGE"],
  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = 298,
					StartPosY   = 4418,
					StartPosZ   = -5126,
				},
  				{
					StartPosX   = 646,
					StartPosY   = 4418,
					StartPosZ   = -5126,
				},
  				{
					StartPosX   = 1090,
					StartPosY   = 4418,
					StartPosZ   = -5062,
				},
  				{
					StartPosX   = 1423,
					StartPosY   = 4418,
					StartPosZ   = -4960,
				},
			},
		},
		
		
		
  	},

}








Village[ VILLAGE_MAP_ID["VMI_DUNGEON_LOUNGE_BESMA"] ] =
{
	NAME = STR_ID_1123,

	BaseLocalStateID	= LOCAL_MAP_ID["LMI_VELDER_SOUTH"],			-- 해당 마을을 품는 로컬 ID
	
	DLGBack				= "DLG_Map_Village_Altera_Back.lua",			-- fix!!
	DLGFront			= "DLG_Map_Village_Altera_Front.lua",			-- fix!!



	HouseIDList =
	{
		HOUSE_ID["HI_HELLEN_SHOP_HOUSE"],
		HOUSE_ID["HI_GLAVE_HOUSE"],
		--HOUSE_ID["HI_WILLIAM_PORTER3"],
	},

		
	WORLD_ID = WORLD_ID["WI_DUNGEON_LOUNGE_BESMA"],
	
	CAMERA = { 1500, 160, 300 },
	
	START_POS = 
	{
		{
			StartPosId  = 10003,
			StartPosX   = 1287.78,
			StartPosY   = 1000,
			StartPosZ   = 0,
			IsSummon    = TRUE,
		},
	},
	DUNGEON_LOUNGE_START_POS =
  	{
  		{
			START_POS_WORLD_ID = WORLD_ID["WI_BESMA_DRAGON_ROAD_STAGE4"],

  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = 900,
					StartPosY   = 0,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 1600,
					StartPosY   = 0,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 450,
					StartPosY   = 240,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 2050,
					StartPosY   = 240,
					StartPosZ   = 0,
				},
			},
		},
		
		{
			START_POS_WORLD_ID = WORLD_ID["WI_NEW_BESMA_DRAGON_ROAD_STAGE4"],

  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = 725.035,
					StartPosY   = 240,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 317.919,
					StartPosY   = 240,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 1670.77,
					StartPosY   = 240,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 2033.05,
					StartPosY   = 240,
					StartPosZ   = 0,
				},
			},
		},
		
		{			

			START_POS_WORLD_ID = WORLD_ID["WI_BESMA_LAKE_STAGE4"],

  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = 1350,
					StartPosY   = 360,
					StartPosZ   = 520,
				},
  				{
					StartPosX   = 1950,
					StartPosY   = 360,
					StartPosZ   = 520,
				},
  				{
					StartPosX   = 967,
					StartPosY   = 360,
					StartPosZ   = 410,
				},
  				{
					StartPosX   = 2335,
					StartPosY   = 360,
					StartPosZ   = 408,
				},
			},
		},

		
		{
			START_POS_WORLD_ID = WORLD_ID["WI_BESMA_LAKE_NIGHT_STAGE4"],

  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = 1350,
					StartPosY   = 360,
					StartPosZ   = 520,
				},
  				{
					StartPosX   = 1950,
					StartPosY   = 360,
					StartPosZ   = 520,
				},
  				{
					StartPosX   = 967,
					StartPosY   = 360,
					StartPosZ   = 410,
				},
  				{
					StartPosX   = 2335,
					StartPosY   = 360,
					StartPosZ   = 408,
				},
			},

		},

		
		{
			START_POS_WORLD_ID = WORLD_ID["WI_BESMA_DRAGON_ROAD_CANYON_STAGE4"],

  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = 900,
					StartPosY   = 0,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 1600,
					StartPosY   = 0,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 450,
					StartPosY   = 240,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 2050,
					StartPosY   = 240,
					StartPosZ   = 0,
				},
			},

		},

		
		{
			START_POS_WORLD_ID = WORLD_ID["WI_BESMA_LAKE_CANYON_STAGE4"],

       USER_START_POS =
  	  		{
  	  			{
					StartPosX   = 1350,
					StartPosY   = 360,
					StartPosZ   = 520,
				},
  				{
					StartPosX   = 1950,
					StartPosY   = 360,
					StartPosZ   = 520,
				},
  				{
					StartPosX   = 967,
					StartPosY   = 360,
					StartPosZ   = 410,
				},
  				{
					StartPosX   = 2335,
					StartPosY   = 360,
					StartPosZ   = 408,
				},
			},

		},
		
		{
			START_POS_WORLD_ID = WORLD_ID["WI_BESMA_DRAGON_NEST_STAGE4"],

  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = 1625,
					StartPosY   = 480,
					StartPosZ   = 519,
				},
  				{
					StartPosX   = 2225,
					StartPosY   = 480,
					StartPosZ   = 519,
				},
  				{
					StartPosX   = 1325,
					StartPosY   = 480,
					StartPosZ   = 519,
				},
  				{
					StartPosX   = 2525,
					StartPosY   = 480,
					StartPosZ   = 519,
				},
			},

		},

		
		{
			START_POS_WORLD_ID = WORLD_ID["WI_BESMA_MINE_STAGE4"],

  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = -1350,
					StartPosY   = 0,
					StartPosZ   = -187,
				},
  				{
					StartPosX   = -1675,
					StartPosY   = 480,
					StartPosZ   = -187,
				},
  				{
					StartPosX   = -1750,
					StartPosY   = 0,
					StartPosZ   = -187,
				},
  				{
					StartPosX   = -940,
					StartPosY   = 0,
					StartPosZ   = -187,
				},
			},

		},

		
		{
			START_POS_WORLD_ID = WORLD_ID["WI_BESMA_MINE2_STAGE4"],

  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = 752,
					StartPosY   = 0,
					StartPosZ   = -187,
				},
  				{
					StartPosX   = 1160,
					StartPosY   = 0,
					StartPosZ   = -187,
				},
  				{
					StartPosX   = 1160,
					StartPosY   = 480,
					StartPosZ   = -187,
				},
  				{
					StartPosX   = 280,
					StartPosY   = 0,
					StartPosZ   = -187,
				},
			},
		},

		
		{			
			START_POS_WORLD_ID = WORLD_ID["WI_BESMA_AIRSHIP_STAGE5"],

  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = 2250,
					StartPosY   = 133,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 2750,
					StartPosY   = 133,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 1800,
					StartPosY   = 33,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 3200,
					StartPosY   = 33,
					StartPosZ   = 0,
				},
			},
		},

		
		{			
			START_POS_WORLD_ID = WORLD_ID["WI_BESMA_SECRET_BOSS"],

  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = 1625,
					StartPosY   = 480,
					StartPosZ   = 519,
				},
  				{
					StartPosX   = 2225,
					StartPosY   = 480,
					StartPosZ   = 519,
				},
  				{
					StartPosX   = 1325,
					StartPosY   = 480,
					StartPosZ   = 519,
				},
  				{
					StartPosX   = 2525,
					StartPosY   = 480,
					StartPosZ   = 519,
				},
			},
		},
		

		{
			START_POS_WORLD_ID = WORLD_ID["WI_TRAINING_CENTER_FREESTAGE"],

			USER_START_POS =
			{
				{
					StartPosX	= 700,
					StartPosY	= 240,
					StartPosZ	= 0,
				},
				{
					StartPosX	= 1000,
					StartPosY	= 240,
					StartPosZ	= 0,
				},
				{
					StartPosX	= 400,
					StartPosY	= 240,
					StartPosZ	= 0,
				},
				{
					StartPosX	= 1300,
					StartPosY	= 240,
					StartPosZ	= 0,
				},
			},

		},
		{
			START_POS_WORLD_ID = WORLD_ID["WI_ALTERA_CORE_BOSS_STAGE"],

  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = 1965,
					StartPosY   = 1682,
					StartPosZ   = 249,
				},
  				{
					StartPosX   = 2507,
					StartPosY   = 1682,
					StartPosZ   = 270,
				},
  				{
					StartPosX   = 1500,
					StartPosY   = 1442,
					StartPosZ   = 296,
				},
  				{
					StartPosX   = 2953,
					StartPosY   = 1442,
					StartPosZ   = 350,
				},
			},
		},
		
		{
			START_POS_WORLD_ID = WORLD_ID["WI_ARCADE_NEW_STAGE_REST"],

			USER_START_POS =
			{
				{
					StartPosX	= -230,
					StartPosY	= 240,
					StartPosZ	= -2,
				},
				{
					StartPosX	= 230,
					StartPosY	= 240,
					StartPosZ	= -2,
				},
				{
					StartPosX	= -460,
					StartPosY	= 240,
					StartPosZ	= -2,
				},
				{
					StartPosX	= 460,
					StartPosY	= 240,
					StartPosZ	= -2,
				},
			},
		},
		
		--식목일 던전 라운지--
		{	

			START_POS_WORLD_ID = WORLD_ID["WI_EVENT_TREE_DAY_STAGE_BOSS"],

			USER_START_POS =
			{
				{
					StartPosX	= 1361,
					StartPosY	= 0,
					StartPosZ	= 10,
				},
				{
					StartPosX	= 1073,
					StartPosY	= 0,
					StartPosZ	= 0,
				},
				{
					StartPosX	= 1867,
					StartPosY	= 0,
					StartPosZ	= 136,
				},
				{
					StartPosX	= 2137,
					StartPosY	= 0,
					StartPosZ	= 391,
				},
			},
			
		},
		--베스마 비던 
		
		{	

			START_POS_WORLD_ID = WORLD_ID["WI_BESMA_HELL_BOSS"],

			USER_START_POS =
			{
				{
					StartPosX	= 1013.6,
					StartPosY	= 720,
					StartPosZ	= 225,
				},
				{
					StartPosX	= 1402,
					StartPosY	= 479,
					StartPosZ	= 225,
				},
				{
					StartPosX	= 2388.8,
					StartPosY	= 479,
					StartPosZ	= 225,
				},
				{
					StartPosX	= 2694.8,
					StartPosY	= 720,
					StartPosZ	= 225,
				},
			},
			
		},
		
		{	
			START_POS_WORLD_ID = WORLD_ID["WI_BESMA_HELL_EXTRA_BOSS"],

			USER_START_POS =
			{
				{
					StartPosX	= 1013.6,
					StartPosY	= 720,
					StartPosZ	= 225,
				},
				{
					StartPosX	= 1402,
					StartPosY	= 479,
					StartPosZ	= 225,
				},
				{
					StartPosX	= 2388.8,
					StartPosY	= 479,
					StartPosZ	= 225,
				},
				{
					StartPosX	= 2694.8,
					StartPosY	= 720,
					StartPosZ	= 225,
				},
			},
			
		},
		
		{	

			START_POS_WORLD_ID = WORLD_ID["WI_BESMA_HELL_BOSS"],

			USER_START_POS =
			{
				{
					StartPosX	= 1013.6,
					StartPosY	= 720,
					StartPosZ	= 225,
				},
				{
					StartPosX	= 1402,
					StartPosY	= 479,
					StartPosZ	= 225,
				},
				{
					StartPosX	= 2388.8,
					StartPosY	= 479,
					StartPosZ	= 225,
				},
				{
					StartPosX	= 2694.8,
					StartPosY	= 720,
					StartPosZ	= 225,
				},
			},
			
		},
		
		{ --승만
			START_POS_WORLD_ID = WORLD_ID["WI_DEFENCE_DUNGEON_NORMAL_STAGE"],
  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = -436,
					StartPosY   = 3697,
					StartPosZ   = -5126,
				},
  				{
					StartPosX   = 246,
					StartPosY   = 3697,
					StartPosZ   = -5126,
				},
  				{
					StartPosX   = -74,
					StartPosY   = 3697,
					StartPosZ   = -5126,
				},
  				{
					StartPosX   = 19,
					StartPosY   = 3937,
					StartPosZ   = -5126,
				},
			},
		},
		
		{ --승만
			START_POS_WORLD_ID = WORLD_ID["WI_DEFENCE_DUNGEON_HARD_STAGE"],
  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = -436,
					StartPosY   = 3697,
					StartPosZ   = -5126,
				},
  				{
					StartPosX   = 246,
					StartPosY   = 3697,
					StartPosZ   = -5126,
				},
  				{
					StartPosX   = -74,
					StartPosY   = 3697,
					StartPosZ   = -5126,
				},
  				{
					StartPosX   = 19,
					StartPosY   = 3937,
					StartPosZ   = -5126,
				},
			},
		},
				
		{ 	--승만
			START_POS_WORLD_ID = WORLD_ID["WI_DEFENCE_DUNGEON_EXPERT_STAGE"],
  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = 298,
					StartPosY   = 4418,
					StartPosZ   = -5126,
				},
  				{
					StartPosX   = 646,
					StartPosY   = 4418,
					StartPosZ   = -5126,
				},
  				{
					StartPosX   = 1090,
					StartPosY   = 4418,
					StartPosZ   = -5062,
				},
  				{
					StartPosX   = 1423,
					StartPosY   = 4418,
					StartPosZ   = -4960,
				},
			},
		},

  	},
}




Village[ VILLAGE_MAP_ID["VMI_DUNGEON_LOUNGE_ALTERA"] ] =
{
	NAME = STR_ID_1124,

	BaseLocalStateID	= LOCAL_MAP_ID["LMI_ALTERA_ISLAND"],			-- 해당 마을을 품는 로컬 ID
	
	DLGBack				= "DLG_Map_Village_Altera_Back.lua",			-- fix!!
	DLGFront			= "DLG_Map_Village_Altera_Front.lua",			-- fix!!


	HouseIDList =
	{
		HOUSE_ID["HI_HELLEN_SHOP_HOUSE"],
		HOUSE_ID["HI_GLAVE_HOUSE"],
		--HOUSE_ID["HI_WILLIAM_PORTER4"],
	},

		
	WORLD_ID = WORLD_ID["WI_DUNGEON_LOUNGE_ALTERA"],
	
	CAMERA = { 1500, 160, 300 },
	
	START_POS = 
	{
		{
			StartPosId  = 10004,
			StartPosX   = 1287.78,
			StartPosY   = 1000,
			StartPosZ   = 0,
			IsSummon    = TRUE,
		},
	},
	DUNGEON_LOUNGE_START_POS =
  	{
  		{
			START_POS_WORLD_ID = WORLD_ID["WI_ALTERA_BATTLE_AIR_SHIP_STAGE6"],

  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = 2090,
					StartPosY   = 3293,
					StartPosZ   = -455,
				},
  				{
					StartPosX   = 2950,
					StartPosY   = 3293,
					StartPosZ   = -455,
				},
  				{
					StartPosX   = 1800,
					StartPosY   = 3293,
					StartPosZ   = -455,
				},
  				{
					StartPosX   = 3186,
					StartPosY   = 3533,
					StartPosZ   = -455,
				},
			},


		},

		
		{
			START_POS_WORLD_ID = WORLD_ID["WI_ALTERA_PLAIN_RECYCLE_STAGE3"],

  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = 2300,
					StartPosY   = 0,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 2900,
					StartPosY   = 0,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 2000,
					StartPosY   = 0,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 3200,
					StartPosY   = 0,
					StartPosZ   = 0,
				},
			},

		},

		
		{
			START_POS_WORLD_ID = WORLD_ID["WI_ALTERA_PLAIN_RECYCLE_STAGE4"],

  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = 1400,
					StartPosY   = 0,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 2000,
					StartPosY   = 0,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 1100,
					StartPosY   = 0,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 2300,
					StartPosY   = 0,
					StartPosZ   = 0,
				},
			},

		},
		
		{
			START_POS_WORLD_ID = WORLD_ID["WI_ALTERA_BELOW_TUNNEL_STAGE4"],

  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = 1775,
					StartPosY   = 0,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 2000,
					StartPosY   = 300,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 1800,
					StartPosY   = 520,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 2200,
					StartPosY   = 0,
					StartPosZ   = 0,
				},
			},
		},

		
		{
		
			START_POS_WORLD_ID = WORLD_ID["WI_ALTERA_PLAIN_STAGE3"],

  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = 2300,
					StartPosY   = 0,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 2900,
					StartPosY   = 0,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 2000,
					StartPosY   = 0,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 3200,
					StartPosY   = 0,
					StartPosZ   = 0,
				},
			},
		},

		
		{
			START_POS_WORLD_ID = WORLD_ID["WI_ALTERA_NASOD_FACTORY_BOSS"],

  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = 1165,
					StartPosY   = 0,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 1825,
					StartPosY   = 0,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 870,
					StartPosY   = 380,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 2120,
					StartPosY   = 380,
					StartPosZ   = 0,
				},
			},
		},

		
		{
			START_POS_WORLD_ID = WORLD_ID["WI_ALTERA_CORE_BOSS_STAGE"],

  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = 1965,
					StartPosY   = 1682,
					StartPosZ   = 249,
				},
  				{
					StartPosX   = 2507,
					StartPosY   = 1682,
					StartPosZ   = 270,
				},
  				{
					StartPosX   = 1500,
					StartPosY   = 1442,
					StartPosZ   = 296,
				},
  				{
					StartPosX   = 2953,
					StartPosY   = 1442,
					StartPosZ   = 350,
				},
			},
		},

		
		{
			START_POS_WORLD_ID = WORLD_ID["WI_ALTERA_SECRET_BOSS"],

  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = 1700,
					StartPosY   = 60,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 2100,
					StartPosY   = 60,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 1500,
					StartPosY   = 60,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 2300,
					StartPosY   = 60,
					StartPosZ   = 0,
				},
			},
		},
		
		{
			START_POS_WORLD_ID = WORLD_ID["WI_ALTERA_HELL_EXTRA_STAGE5"],

  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = 1700,
					StartPosY   = 60,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 2100,
					StartPosY   = 60,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 1500,
					StartPosY   = 60,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 2300,
					StartPosY   = 60,
					StartPosZ   = 0,
				},
			},
		},
		

		{
			START_POS_WORLD_ID = WORLD_ID["WI_TRAINING_CENTER_FREESTAGE"],

			USER_START_POS =
			{
				{
					StartPosX	= 700,
					StartPosY	= 240,
					StartPosZ	= 0,
				},
				{
					StartPosX	= 1000,
					StartPosY	= 240,
					StartPosZ	= 0,
				},
				{
					StartPosX	= 400,
					StartPosY	= 240,
					StartPosZ	= 0,
				},
				{
					StartPosX	= 1300,
					StartPosY	= 240,
					StartPosZ	= 0,
				},
			},

		},
		
		{
			START_POS_WORLD_ID = WORLD_ID["WI_ALTERA_CORE_BOSS_STAGE"],

  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = 1965,
					StartPosY   = 1682,
					StartPosZ   = 249,
				},
  				{
					StartPosX   = 2507,
					StartPosY   = 1682,
					StartPosZ   = 270,
				},
  				{
					StartPosX   = 1500,
					StartPosY   = 1442,
					StartPosZ   = 296,
				},
  				{
					StartPosX   = 2953,
					StartPosY   = 1442,
					StartPosZ   = 350,
				},
			},
		},

		{
			START_POS_WORLD_ID = WORLD_ID["WI_ARCADE_NEW_STAGE_REST"],

			USER_START_POS =
			{
				{
					StartPosX	= 700,
					StartPosY	= 240,
					StartPosZ	= 0,
				},
				{
					StartPosX	= 1000,
					StartPosY	= 240,
					StartPosZ	= 0,
				},
				{
					StartPosX	= 400,
					StartPosY	= 240,
					StartPosZ	= 0,
				},
				{
					StartPosX	= 1300,
					StartPosY	= 240,
					StartPosZ	= 0,
				},
			},
		},
		--식목일 던전 라운지--
		{	

			START_POS_WORLD_ID = WORLD_ID["WI_EVENT_TREE_DAY_STAGE_BOSS"],

			USER_START_POS =
			{
				{
					StartPosX	= 1361,
					StartPosY	= 0,
					StartPosZ	= 10,
				},
				{
					StartPosX	= 1073,
					StartPosY	= 0,
					StartPosZ	= 0,
				},
				{
					StartPosX	= 1867,
					StartPosY	= 0,
					StartPosZ	= 136,
				},
				{
					StartPosX	= 2137,
					StartPosY	= 0,
					StartPosZ	= 391,
				},
			},
			
		},
		
		{ --승만
			START_POS_WORLD_ID = WORLD_ID["WI_DEFENCE_DUNGEON_NORMAL_STAGE"],
  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = -436,
					StartPosY   = 3697,
					StartPosZ   = -5126,
				},
  				{
					StartPosX   = 246,
					StartPosY   = 3697,
					StartPosZ   = -5126,
				},
  				{
					StartPosX   = -74,
					StartPosY   = 3697,
					StartPosZ   = -5126,
				},
  				{
					StartPosX   = 19,
					StartPosY   = 3937,
					StartPosZ   = -5126,
				},
			},
		},
		
		{ --승만
			START_POS_WORLD_ID = WORLD_ID["WI_DEFENCE_DUNGEON_HARD_STAGE"],
  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = -436,
					StartPosY   = 3697,
					StartPosZ   = -5126,
				},
  				{
					StartPosX   = 246,
					StartPosY   = 3697,
					StartPosZ   = -5126,
				},
  				{
					StartPosX   = -74,
					StartPosY   = 3697,
					StartPosZ   = -5126,
				},
  				{
					StartPosX   = 19,
					StartPosY   = 3937,
					StartPosZ   = -5126,
				},
			},
		},
				
		{ 	--승만
			START_POS_WORLD_ID = WORLD_ID["WI_DEFENCE_DUNGEON_EXPERT_STAGE"],
  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = 298,
					StartPosY   = 4418,
					StartPosZ   = -5126,
				},
  				{
					StartPosX   = 646,
					StartPosY   = 4418,
					StartPosZ   = -5126,
				},
  				{
					StartPosX   = 1090,
					StartPosY   = 4418,
					StartPosZ   = -5062,
				},
  				{
					StartPosX   = 1423,
					StartPosY   = 4418,
					StartPosZ   = -4960,
				},
			},
		},
  	},
}




Village[ VILLAGE_MAP_ID["VMI_DUNGEON_LOUNGE_PEITA"] ] =
{
	NAME = STR_ID_1125,

	BaseLocalStateID	= LOCAL_MAP_ID["LMI_PEITA"],			-- 해당 마을을 품는 로컬 ID
	
	DLGBack				= "DLG_Map_Village_Altera_Back.lua",			-- fix!!
	DLGFront			= "DLG_Map_Village_Altera_Front.lua",			-- fix!!


	HouseIDList =
	{
		HOUSE_ID["HI_HELLEN_SHOP_HOUSE"],
		HOUSE_ID["HI_GLAVE_HOUSE"],
	},

		
	WORLD_ID = WORLD_ID["WI_DUNGEON_LOUNGE_PEITA"],
	
	CAMERA = { 1500, 160, 300 },
	
	START_POS = 
	{
		{
			StartPosId  = 10005,
			StartPosX   = 1287.78,
			StartPosY   = 1000,
			StartPosZ   = 0,
			IsSummon    = TRUE,
		},
	},

  	DUNGEON_LOUNGE_START_POS =
  	{
  		{
			START_POS_WORLD_ID = WORLD_ID["WI_PEITA_OFFERINGS_STAGE_BOSS"],

  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = -2145,
					StartPosY   = 658,
					StartPosZ   = -281,
				},
  				{
					StartPosX   = -1745,
					StartPosY   = 658,
					StartPosZ   = -281,
				},
  				{
					StartPosX   = -2445,
					StartPosY   = 898,
					StartPosZ   = -284,
				},
  				{
					StartPosX   = -1445,
					StartPosY   = 898,
					StartPosZ   = -278,
				},
			},
		},

		
		{
			START_POS_WORLD_ID = WORLD_ID["WI_PEITA_SPIRAL_CORRIDOR_STAGE_BOSS"],

  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = -2250,
					StartPosY   = 1797,
					StartPosZ   = -455,
				},
  				{
					StartPosX   = -1750,
					StartPosY   = 1797,
					StartPosZ   = -455,
				},
  				{
					StartPosX   = -2500,
					StartPosY   = 1797,
					StartPosZ   = -455,
				},
  				{
					StartPosX   = -1500,
					StartPosY   = 1797,
					StartPosZ   = -455,
				},
			},
		},
		
		{
			START_POS_WORLD_ID = WORLD_ID["WI_PEITA_CHAPEL_STAGE_BOSS"],

  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = -275.047,
					StartPosY   = 0,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 277.607,
					StartPosY   = 0,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = -547.22,
					StartPosY   = 0,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 521.071,
					StartPosY   = 0,
					StartPosZ   = 0,
				},
			},
		},
		
		{
			START_POS_WORLD_ID = WORLD_ID["WI_PEITA_UNDER_GARDEN_STAGE_BOSS"],

  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = -260.603,
					StartPosY   = 1002,
					StartPosZ   = -1322,
				},
  				{
					StartPosX   = 370.825,
					StartPosY   = 1002,
					StartPosZ   = -1322,
				},
  				{
					StartPosX   = -259.82,
					StartPosY   = 762,
					StartPosZ   = -1322,
				},
  				{
					StartPosX   = 409.707,
					StartPosY   = 762,
					StartPosZ   = -1322,
				},
			},
		},
		
		{
			START_POS_WORLD_ID = WORLD_ID["WI_PEITA_TOWER_HEART_STAGE_BOSS"],

  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = -489,
					StartPosY   = 1671,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = -228,
					StartPosY   = 1671,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 228,
					StartPosY   = 1671,
					StartPosZ   = 0,
				},
  				{
					StartPosX   = 489,
					StartPosY   = 1671,
					StartPosZ   = 0,
				},
			},
		},
		
		{
			START_POS_WORLD_ID = WORLD_ID["WI_PEITA_OFFERINGS_ALTER_STAGE_BOSS"],

  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = -489,
					StartPosY   = 4743,
					StartPosZ   = 668,
				},
  				{
					StartPosX   = -228,
					StartPosY   = 4743,
					StartPosZ   = 668,
				},
  				{
					StartPosX   = 228,
					StartPosY   = 4743,
					StartPosZ   = 668,
				},
  				{
					StartPosX   = 489,
					StartPosY   = 4743,
					StartPosZ   = 668,
				},
			},
		},
		
		{
			START_POS_WORLD_ID = WORLD_ID["WI_ARCADE_NEW_STAGE_REST"],

			USER_START_POS =
			{
				{
					StartPosX	= -230,
					StartPosY	= 240,
					StartPosZ	= -2,
				},
				{
					StartPosX	= 230,
					StartPosY	= 240,
					StartPosZ	= -2,
				},
				{
					StartPosX	= -460,
					StartPosY	= 240,
					StartPosZ	= -2,
				},
				{
					StartPosX	= 460,
					StartPosY	= 240,
					StartPosZ	= -2,
				},
			},
		},
		
		--식목일 던전 라운지--
		{	

			START_POS_WORLD_ID = WORLD_ID["WI_EVENT_TREE_DAY_STAGE_BOSS"],

			USER_START_POS =
			{
				{
					StartPosX	= 1361,
					StartPosY	= 0,
					StartPosZ	= 10,
				},
				{
					StartPosX	= 1073,
					StartPosY	= 0,
					StartPosZ	= 0,
				},
				{
					StartPosX	= 1867,
					StartPosY	= 0,
					StartPosZ	= 136,
				},
				{
					StartPosX	= 2137,
					StartPosY	= 0,
					StartPosZ	= 391,
				},
			},
			
		},
		
		{ --승만
			START_POS_WORLD_ID = WORLD_ID["WI_DEFENCE_DUNGEON_NORMAL_STAGE"],
  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = -436,
					StartPosY   = 3697,
					StartPosZ   = -5126,
				},
  				{
					StartPosX   = 246,
					StartPosY   = 3697,
					StartPosZ   = -5126,
				},
  				{
					StartPosX   = -74,
					StartPosY   = 3697,
					StartPosZ   = -5126,
				},
  				{
					StartPosX   = 19,
					StartPosY   = 3937,
					StartPosZ   = -5126,
				},
			},
		},
		
		{ --승만
			START_POS_WORLD_ID = WORLD_ID["WI_DEFENCE_DUNGEON_HARD_STAGE"],
  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = -436,
					StartPosY   = 3697,
					StartPosZ   = -5126,
				},
  				{
					StartPosX   = 246,
					StartPosY   = 3697,
					StartPosZ   = -5126,
				},
  				{
					StartPosX   = -74,
					StartPosY   = 3697,
					StartPosZ   = -5126,
				},
  				{
					StartPosX   = 19,
					StartPosY   = 3937,
					StartPosZ   = -5126,
				},
			},
		},
				
		{ 	--승만
			START_POS_WORLD_ID = WORLD_ID["WI_DEFENCE_DUNGEON_EXPERT_STAGE"],
  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = 298,
					StartPosY   = 4418,
					StartPosZ   = -5126,
				},
  				{
					StartPosX   = 646,
					StartPosY   = 4418,
					StartPosZ   = -5126,
				},
  				{
					StartPosX   = 1090,
					StartPosY   = 4418,
					StartPosZ   = -5062,
				},
  				{
					StartPosX   = 1423,
					StartPosY   = 4418,
					StartPosZ   = -4960,
				},
			},
		},
		
  	},
}

Village[ VILLAGE_MAP_ID["VMI_DUNGEON_LOUNGE_VELDER"] ] =
{
	NAME = STR_ID_4624,

	BaseLocalStateID	= LOCAL_MAP_ID["LMI_VELDER"],			-- 해당 마을을 품는 로컬 ID
	
	DLGBack				= "DLG_Map_Village_Altera_Back.lua",			-- fix!!
	DLGFront			= "DLG_Map_Village_Altera_Front.lua",			-- fix!!


	HouseIDList =
	{
		HOUSE_ID["HI_HELLEN_SHOP_HOUSE"],
		HOUSE_ID["HI_GLAVE_HOUSE"],
	},

		
	WORLD_ID = WORLD_ID["WI_DUNGEON_LOUNGE_VELDER"],
	
	CAMERA = { 1500, 160, 300 },
	
	START_POS = 
	{
		{
			StartPosId  = 87,
			StartPosX   = 1287.78,
			StartPosY   = 1000,
			StartPosZ   = 0,
			IsSummon    = TRUE,
		},
	},

  	DUNGEON_LOUNGE_START_POS =
  	{
  		{
			START_POS_WORLD_ID = WORLD_ID["WI_VELDER_THIRD_DWELLING_STAGE_BOSS"],

  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = 100,
					StartPosY   = 0,
					StartPosZ   = -1095,
				},
				{
					StartPosX   = 900,
					StartPosY   = 0,
					StartPosZ   = -1095,
				},
				{
					StartPosX   = 1420,
					StartPosY   = 240,
					StartPosZ   = -1095,
				},
				{
					StartPosX   = 1762.82,
					StartPosY   = 480,
					StartPosZ   = -1095,
				},
			},
		},
		
		{
			START_POS_WORLD_ID = WORLD_ID["WI_VELDER_BRIDGE_HOPE_STAGE_BOSS"],

  	  		USER_START_POS =
  	  		{
				{
					StartPosX   = 4780,
					StartPosY   = 1337,
					StartPosZ   = -5516,
				},
				{
					StartPosX   = 4444,
					StartPosY   = 1097,
					StartPosZ   = -5516,
				},
				{
					StartPosX   = 5432,
					StartPosY   = 1097,
					StartPosZ   = -5516,
				},
				{
					StartPosX   = 5814,
					StartPosY   = 1097,
					StartPosZ   = -5516,
				},
			},
		},

		{
			START_POS_WORLD_ID = WORLD_ID["WI_VELDER_PALACE_ENTRANCE_STAGE_BOSS"],

  	  		USER_START_POS =
  	  		{
				{
					StartPosX   = -600,
					StartPosY   = 18,
					StartPosZ   = 3171,
				},
				{
					StartPosX   = -376,					
					StartPosY   = 18,
					StartPosZ   = 3171,
				},
				{
					StartPosX   = 133,				
					StartPosY   = 18,
					StartPosZ   = 3171,
				},
				{
					StartPosX   = 407,				
					StartPosY   = 18,
					StartPosZ   = 3171,
				},
			},
		},
		
		{
			START_POS_WORLD_ID = WORLD_ID["WI_VELDER_BRIDGE_BURNING_BOSS_STAGE"],

  	  		USER_START_POS =
  	  		{
				{
					StartPosX   = 4469.18,
					StartPosY   = 1577,
					StartPosZ   = -5516,
				},
				{
					StartPosX   = 4399.55,					
					StartPosY   = 1577,
					StartPosZ   = -5516,
				},
				{
					StartPosX   = 5428,				
					StartPosY   = 1577,
					StartPosZ   = -5516,
				},
				{
					StartPosX   = 5723,				
					StartPosY   = 1577,
					StartPosZ   = -5516,
				},
			},
		},
		
		{
			START_POS_WORLD_ID = WORLD_ID["WI_VELDER_MARKET_BOSS_STAGE"],

  	  		USER_START_POS =
  	  		{
				{
					StartPosX   = -384.499,
					StartPosY   = 200,
					StartPosZ   = 3343.59,
				},
				{
					StartPosX   = -69.0972,					
					StartPosY   = 200,
					StartPosZ   = 3343.33,
				},
				{
					StartPosX   = 454.948,				
					StartPosY   = 200,
					StartPosZ   = 3343.52,
				},
				{
					StartPosX   = 697.027,				
					StartPosY   = 200,
					StartPosZ   = 3343.03,
				},
			},
		},
		
		
		{
			START_POS_WORLD_ID = WORLD_ID["WI_VELDER_GATE_BOSS_STAGE"],

  	  		USER_START_POS =
  	  		{
				{
					StartPosX   = 2542,
					StartPosY   = 1200,
					StartPosZ   = 0,
				},
				{
					StartPosX   = 2992.76,					
					StartPosY   = 1200,
					StartPosZ   = 0,
				},
				{
					StartPosX   = 3374.23,				
					StartPosY   = 1200,
					StartPosZ   = 0,
				},
				{
					StartPosX   = 2147.22,				
					StartPosY   = 1200,
					StartPosZ   = 0,
				},
			},
		},
		
		
		{
			START_POS_WORLD_ID = WORLD_ID["WI_ARCADE_NEW_STAGE_REST"],

			USER_START_POS =
			{
				{
					StartPosX	= -230,
					StartPosY	= 240,
					StartPosZ	= -2,
				},
				{
					StartPosX	= 230,
					StartPosY	= 240,
					StartPosZ	= -2,
				},
				{
					StartPosX	= -460,
					StartPosY	= 240,
					StartPosZ	= -2,
				},
				{
					StartPosX	= 460,
					StartPosY	= 240,
					StartPosZ	= -2,
				},
			},
		},
		--식목일 던전 라운지--
		{	

			START_POS_WORLD_ID = WORLD_ID["WI_EVENT_TREE_DAY_STAGE_BOSS"],

			USER_START_POS =
			{
				{
					StartPosX	= 1361,
					StartPosY	= 0,
					StartPosZ	= 10,
				},
				{
					StartPosX	= 1073,
					StartPosY	= 0,
					StartPosZ	= 0,
				},
				{
					StartPosX	= 1867,
					StartPosY	= 0,
					StartPosZ	= 136,
				},
				{
					StartPosX	= 2137,
					StartPosY	= 0,
					StartPosZ	= 391,
				},
			},
			
		},
		{ --승만
			START_POS_WORLD_ID = WORLD_ID["WI_DEFENCE_DUNGEON_NORMAL_STAGE"],
  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = -436,
					StartPosY   = 3697,
					StartPosZ   = -5126,
				},
  				{
					StartPosX   = 246,
					StartPosY   = 3697,
					StartPosZ   = -5126,
				},
  				{
					StartPosX   = -74,
					StartPosY   = 3697,
					StartPosZ   = -5126,
				},
  				{
					StartPosX   = 19,
					StartPosY   = 3937,
					StartPosZ   = -5126,
				},
			},
		},
		
		{ --승만
			START_POS_WORLD_ID = WORLD_ID["WI_DEFENCE_DUNGEON_HARD_STAGE"],
  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = -436,
					StartPosY   = 3697,
					StartPosZ   = -5126,
				},
  				{
					StartPosX   = 246,
					StartPosY   = 3697,
					StartPosZ   = -5126,
				},
  				{
					StartPosX   = -74,
					StartPosY   = 3697,
					StartPosZ   = -5126,
				},
  				{
					StartPosX   = 19,
					StartPosY   = 3937,
					StartPosZ   = -5126,
				},
			},
		},
				
		{ 	--승만
			START_POS_WORLD_ID = WORLD_ID["WI_DEFENCE_DUNGEON_EXPERT_STAGE"],
  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = 298,
					StartPosY   = 4418,
					StartPosZ   = -5126,
				},
  				{
					StartPosX   = 646,
					StartPosY   = 4418,
					StartPosZ   = -5126,
				},
  				{
					StartPosX   = 1090,
					StartPosY   = 4418,
					StartPosZ   = -5062,
				},
  				{
					StartPosX   = 1423,
					StartPosY   = 4418,
					StartPosZ   = -4960,
				},
			},
		},
		
		{
			START_POS_WORLD_ID = WORLD_ID["WI_VELDER_SECRET_BOSS_STAGE"],
  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = 1134,
					StartPosY   = 18,
					StartPosZ   = 3171,
				},
  				{
					StartPosX   = 1610,
					StartPosY   = 18,
					StartPosZ   = 3171,
				},
  				{
					StartPosX   = 621,
					StartPosY   = 18,
					StartPosZ   = 3171,
				},
  				{
					StartPosX   = 268,
					StartPosY   = 18,
					StartPosZ   = 3171,
				},
			},
		},
		
		{
			START_POS_WORLD_ID = WORLD_ID["WI_VELDER_SECRET_EXTRA_BOSS_STAGE"],
  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = 1134,
					StartPosY   = 18,
					StartPosZ   = 3171,
				},
  				{
					StartPosX   = 1610,
					StartPosY   = 18,
					StartPosZ   = 3171,
				},
  				{
					StartPosX   = 621,
					StartPosY   = 18,
					StartPosZ   = 3171,
				},
  				{
					StartPosX   = 268,
					StartPosY   = 18,
					StartPosZ   = 3171,
				},
			},
		},
	}
}

Village[ VILLAGE_MAP_ID["VMI_DUNGEON_LOUNGE_HAMEL"] ] =
{
	NAME = STR_ID_13414,

	BaseLocalStateID	= LOCAL_MAP_ID["LMI_HAMEL"],			-- 해당 마을을 품는 로컬 ID
	
	DLGBack				= "DLG_Map_Village_Altera_Back.lua",			-- fix!!
	DLGFront			= "DLG_Map_Village_Altera_Front.lua",			-- fix!!


	HouseIDList =
	{
		HOUSE_ID["HI_HELLEN_SHOP_HOUSE"],
		HOUSE_ID["HI_GLAVE_HOUSE"],
	},

		
	WORLD_ID = WORLD_ID["WI_DUNGEON_LOUNGE_HAMEL"],
	
	CAMERA = { 1500, 160, 300 },
	
	START_POS = 
	{
		{
			StartPosId  = 87,
			StartPosX   = 1287.78,
			StartPosY   = 1000,
			StartPosZ   = 0,
			IsSummon    = TRUE,
		},
	},

  	DUNGEON_LOUNGE_START_POS =
  	{
  		{
			START_POS_WORLD_ID = WORLD_ID["WI_HAMEL_RESIAM_BOSS_STAGE"],

  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = -592,
					StartPosY   = 205,
					StartPosZ   = -2276,
				},
				{
					StartPosX   = -270,
					StartPosY   = 205,
					StartPosZ   = -2276,
				},
				{
					StartPosX   = 346,
					StartPosY   = 205,
					StartPosZ   = -2276,
				},
				{
					StartPosX   = 767,
					StartPosY   = 205,
					StartPosZ   = -2276,
				},
			},
		},
		
		{
			START_POS_WORLD_ID = WORLD_ID["WI_HAMEL_RESIAM_UNDERWATER_BOSS_STAGE"],

  	  		USER_START_POS =
  	  		{
				{
					StartPosX   = 3291,
					StartPosY   = 451,
					StartPosZ   = -17,
				},
				{
					StartPosX   = 3552,
					StartPosY   = 451,
					StartPosZ   = -17,
				},
				{
					StartPosX   = 4064,
					StartPosY   = 451,
					StartPosZ   = -17,
				},
				{
					StartPosX   = 4325,
					StartPosY   = 451,
					StartPosZ   = -17,
				},
			},
		},

		{
			START_POS_WORLD_ID = WORLD_ID["WI_HAMEL_WATERWAY_BOSS_STAGE"],

  	  		USER_START_POS =
  	  		{
				{
					StartPosX   = -630,
					StartPosY   = 0,
					StartPosZ   = 0,
				},
				{
					StartPosX   = -328,					
					StartPosY   = 0,
					StartPosZ   = 0,
				},
				{
					StartPosX   = 370,				
					StartPosY   = 0,
					StartPosZ   = 0,
				},
				{
					StartPosX   = 631,				
					StartPosY   = 0,
					StartPosZ   = 0,
				},
			},
		},
		
		{
			START_POS_WORLD_ID = WORLD_ID["WI_HAMEL_WATERWAY_CORE_BOSS_STAGE"],

  	  		USER_START_POS =
  	  		{
				{
					StartPosX   = -261,
					StartPosY   = 0,
					StartPosZ   = 0,
				},
				{
					StartPosX   = -81,					
					StartPosY   = 0,
					StartPosZ   = 0,
				},
				{
					StartPosX   = 131,				
					StartPosY   = 0,
					StartPosZ   = 0,
				},
				{
					StartPosX   = 294,				
					StartPosY   = 0,
					StartPosZ   = 0,
				},
			},
		},
		
		{
			START_POS_WORLD_ID = WORLD_ID["WI_HAMEL_CAVE_OF_MAGMANTA_BOSS_STAGE"],

  	  		USER_START_POS =
  	  		{
				{
					StartPosX   = 599,
					StartPosY   = 357,
					StartPosZ   = -2251,
				},
				{
					StartPosX   = 924,					
					StartPosY   = 357,
					StartPosZ   = -2251,
				},
				{
					StartPosX   = -563,				
					StartPosY   = 357,
					StartPosZ   = -2251,
				},
				{
					StartPosX   = -893,				
					StartPosY   = 357,
					StartPosZ   = -2251,
				},
			},
		},
		
		{
			START_POS_WORLD_ID = WORLD_ID["WI_HAMEL_FROZEN_WATER_TEMPLE_B0SS_STAGE"],

  	  		USER_START_POS =
  	  		{
				{
					StartPosX   = -407,
					StartPosY   =  5740,
					StartPosZ   = -4277,
				},
				{
					StartPosX   =  -659,					
					StartPosY   =  5740,
					StartPosZ   = -4277,
				},
				{
					StartPosX   = 285,				
					StartPosY   = 5740,
					StartPosZ   = -4277,
				},
				{
					StartPosX   = 549,				
					StartPosY   = 5740,
					StartPosZ   = -4277,
				},
			},
		},
		
		{
			START_POS_WORLD_ID = WORLD_ID["WI_HAMEL_FROZEN_WATER_HALL_BOSS_STAGE"],

  	  		USER_START_POS =
  	  		{
				{
					StartPosX   = -440,
					StartPosY   = 770,
					StartPosZ   = 40,
				},
				{
					StartPosX   = -914,					
					StartPosY   = 770,
					StartPosZ   = 40,
				},
				{
					StartPosX   = 662,				
					StartPosY   = 770,
					StartPosZ   = 40,
				},
				{
					StartPosX   = 952,				
					StartPosY   = 770,
					StartPosZ   = 40,
				},
			},
		},

		{
			START_POS_WORLD_ID = WORLD_ID["WI_ARCADE_NEW_STAGE_REST"],

			USER_START_POS =
			{
				{
					StartPosX	= -230,
					StartPosY	= 240,
					StartPosZ	= -2,
				},
				{
					StartPosX	= 230,
					StartPosY	= 240,
					StartPosZ	= -2,
				},
				{
					StartPosX	= -460,
					StartPosY	= 240,
					StartPosZ	= -2,
				},
				{
					StartPosX	= 460,
					StartPosY	= 240,
					StartPosZ	= -2,
				},
			},
		},
		
		{ --승만
			START_POS_WORLD_ID = WORLD_ID["WI_DEFENCE_DUNGEON_NORMAL_STAGE"],
  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = -436,
					StartPosY   = 3697,
					StartPosZ   = -5126,
				},
  				{
					StartPosX   = 246,
					StartPosY   = 3697,
					StartPosZ   = -5126,
				},
  				{
					StartPosX   = -74,
					StartPosY   = 3697,
					StartPosZ   = -5126,
				},
  				{
					StartPosX   = 19,
					StartPosY   = 3937,
					StartPosZ   = -5126,
				},
			},
		},
		{ --승만
			START_POS_WORLD_ID = WORLD_ID["WI_DEFENCE_DUNGEON_HARD_STAGE"],
  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = -436,
					StartPosY   = 3697,
					StartPosZ   = -5126,
				},
  				{
					StartPosX   = 246,
					StartPosY   = 3697,
					StartPosZ   = -5126,
				},
  				{
					StartPosX   = -74,
					StartPosY   = 3697,
					StartPosZ   = -5126,
				},
  				{
					StartPosX   = 19,
					StartPosY   = 3937,
					StartPosZ   = -5126,
				},
			},
		},
				
		{ 	--승만
			START_POS_WORLD_ID = WORLD_ID["WI_DEFENCE_DUNGEON_EXPERT_STAGE"],
  	  		USER_START_POS =
  	  		{
  	  			{
					StartPosX   = 298,
					StartPosY   = 4418,
					StartPosZ   = -5126,
				},
  				{
					StartPosX   = 646,
					StartPosY   = 4418,
					StartPosZ   = -5126,
				},
  				{
					StartPosX   = 1090,
					StartPosY   = 4418,
					StartPosZ   = -5062,
				},
  				{
					StartPosX   = 1423,
					StartPosY   = 4418,
					StartPosZ   = -4960,
				},
			},
		},
		
		--식목일 던전 라운지--
		{	

			START_POS_WORLD_ID = WORLD_ID["WI_EVENT_TREE_DAY_STAGE_BOSS"],

			USER_START_POS =
			{
				{
					StartPosX	= 1361,
					StartPosY	= 0,
					StartPosZ	= 10,
				},
				{
					StartPosX	= 1073,
					StartPosY	= 0,
					StartPosZ	= 0,
				},
				{
					StartPosX	= 1867,
					StartPosY	= 0,
					StartPosZ	= 136,
				},
				{
					StartPosX	= 2137,
					StartPosY	= 0,
					StartPosZ	= 391,
				},
			},
			
		},
	}
}

------------------------------- 여기서 부터는 배틀 필드 쉼터 --------------------------------------------
-- StartPosId 를 30000 부터 사용 한다.

-- 엘더 쉼터_보리스의 평야_워프 위치 값 다 수정해야됨
Village[ VILLAGE_MAP_ID["VMI_BATTLE_FIELD_ELDER_REST_00"] ] =
{
	NAME = STR_ID_19988,

	BaseLocalStateID	= LOCAL_MAP_ID["LMI_VELDER_EAST"],	--엘더		-- 해당 마을을 품는 로컬 ID
	
	HouseIDList =
	{
		HOUSE_ID["HI_HELLEN_SHOP_HOUSE"],
		HOUSE_ID["HI_GLAVE_HOUSE"],
		--HOUSE_ID["HI_LUTO"],
		--HOUSE_ID["HI_DAO"],
		HOUSE_ID["HI_POSTBOX"],
		HOUSE_ID["HI_BILLBOARD"],
		----HOUSE_ID["HI_APINK_ARCHANGEL"],
	},	
	
	WORLD_ID = WORLD_ID["WI_BATTLE_FIELD_ELDER_FIELD_REST_00"],
	
	CAMERA = { 1800, 160, 300 },
	
	START_POS = 
	{
	    {	-- VMI_BATTLE_FIELD_ELDER_FIELD_01 로 부터 이동 되는 위치
	        StartPosId  = 300,
	        StartPosX   = 13576.75,
	        StartPosY   = 2420.00,
	        StartPosZ   = -4752.00,
	        IsSummon    = TRUE,
	    },
		
		{	-- VMI_BATTLE_FIELD_ELDER_FIELD_01 으로 가는 위치
	        StartPosId  = 301,
	        StartPosX   = 13291.00,
	        StartPosY   = 2420.00,
	        StartPosZ   = -4752.00,
	        
			BattleFieldId = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_ELDER_FIELD_01"],
			BattleFieldStartLineIndex = 2,
	    },
		
		{	-- VMI_BATTLE_FIELD_ELDER_FIELD_02 로 부터 이동 되는 위치
	        StartPosId  = 302,
	        StartPosX   = 22512.43,
	        StartPosY   = 2420.00,
	        StartPosZ   = -4752.00,
	        IsSummon    = TRUE,     
			IsRight		= FALSE, 
	    },
		
		{	-- VMI_BATTLE_FIELD_ELDER_FIELD_02 으로 가는 위치
	        StartPosId  = 303,
	        StartPosX   = 22885.00,
	        StartPosY   = 2420.00,
	        StartPosZ   = -4752.00,
	        
			BattleFieldId = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_ELDER_FIELD_02"],
			BattleFieldStartLineIndex = 1,
	    },
		
		{	-- 워프
	        StartPosId  = 304,
	        StartPosX   = 16177.383,
	        StartPosY   = 2445.425,
	        StartPosZ   = -4752.352,
	        
			IsWarp		= TRUE,                 
	    },
	}
}

-- 베스마 쉼터_아슬아슬 하늘길
Village[ VILLAGE_MAP_ID["VMI_BATTLE_FIELD_BESMA_REST_00"] ] =
{
	NAME = STR_ID_19991,

	BaseLocalStateID	= LOCAL_MAP_ID["LMI_VELDER_SOUTH"],	--베스마		-- 해당 마을을 품는 로컬 ID
	
	HouseIDList =
	{
		HOUSE_ID["HI_HELLEN_SHOP_HOUSE"],
		HOUSE_ID["HI_GLAVE_HOUSE"],
		HOUSE_ID["HI_POSTBOX"],
		HOUSE_ID["HI_BILLBOARD"],
		----HOUSE_ID["HI_APINK_ARCHANGEL"],
	},
	
	WORLD_ID = WORLD_ID["WI_BATTLE_FIELD_BESMA_FIELD_REST_00"],
	
	CAMERA = { 1800, 160, 300 },
	
	START_POS = 
	{
	    {	-- VMI_BATTLE_FIELD_BESMA_FIELD_01 로 부터 이동 되는 위치
	        StartPosId  = 310, --310
			
	        StartPosX   = -2476,
	        StartPosY   = 1620,
	        StartPosZ   = 7230,
	        IsSummon    = TRUE,
	    },
		
		{	-- VMI_BATTLE_FIELD_BESMA_FIELD_01 으로 가는 위치
	        StartPosId  = 311,	--311
	        StartPosX   = -3022,
	        StartPosY   = 1620,
	        StartPosZ   = 7230,
	        
			BattleFieldId = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_BESMA_FIELD_01"],
			BattleFieldStartLineIndex = 2,
	    },
		
		{	-- VMI_BATTLE_FIELD_BESMA_FIELD_02 로 부터 이동 되는 위치
	        StartPosId  = 312,	--312
	        StartPosX   = 4051,
	        StartPosY   = 1860,
	        StartPosZ   = 6895,
	        IsSummon    = TRUE,     
			IsRight		= FALSE, 
	    },
		
		{	-- VMI_BATTLE_FIELD_BESMA_FIELD_02 으로 가는 위치
	        StartPosId  = 313,	--313
	        StartPosX   = 4240,
	        StartPosY   = 1860,
	        StartPosZ   = 6629,
	        
			BattleFieldId = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_BESMA_FIELD_02"],
			BattleFieldStartLineIndex = 1,
	    },
	    
	    {	-- VMI_BATTLE_FIELD_BESMA_FIELD_03 로 부터 이동 되는 위치
	        StartPosId  = 314,	--314
	        StartPosX   = 3974,
	        StartPosY   = 2100,
	        StartPosZ   = 7230,
	        IsSummon    = TRUE,     
			IsRight		= FALSE, 
	    },
		
		{	-- VMI_BATTLE_FIELD_BESMA_FIELD_03 으로 가는 위치
	        StartPosId  = 315,	--315
	        StartPosX   = 4610,
	        StartPosY   = 2100,
	        StartPosZ   = 7230,
	        
			BattleFieldId = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_BESMA_FIELD_03"],
			BattleFieldStartLineIndex = 1,
	    },		
		
		{	-- 워프
	        StartPosId  = 316,
	        StartPosX   = 493.568,
	        StartPosY   = 2100.0,
	        StartPosZ   = 7489.997,
	        
			IsWarp		= TRUE,                 
	    },
	}
}

--알테라 쉼터_퐁고족의 은신처_워프 위치 값 다 수정해야됨
Village[ VILLAGE_MAP_ID["VMI_BATTLE_FIELD_ALTERA_REST_00"] ] =
{
	NAME = STR_ID_19995,

	BaseLocalStateID	= LOCAL_MAP_ID["LMI_ALTERA_ISLAND"],	--알테라		-- 해당 마을을 품는 로컬 ID
	
	HouseIDList =
	{
		HOUSE_ID["HI_HELLEN_SHOP_HOUSE"],
		HOUSE_ID["HI_GLAVE_HOUSE"],
		HOUSE_ID["HI_POSTBOX"],
		HOUSE_ID["HI_BILLBOARD"],
		----HOUSE_ID["HI_APINK_ARCHANGEL"],
	},
		
	WORLD_ID = WORLD_ID["WI_BATTLE_FIELD_ALTERA_FIELD_REST_00"],
	
	CAMERA = { 1800, 160, 300 },
	
	START_POS = 
	{
	    {	-- VMI_BATTLE_FIELD_ALTERA_FIELD_01 로 부터 이동 되는 위치
	        StartPosId  = 320,	--320
	       
		    StartPosX   = 2612,
	        StartPosY   = 5617,
	        StartPosZ   = -18672,
	        IsSummon    = TRUE,
			IsRight		= FALSE, 
	    },
		
		{	-- VMI_BATTLE_FIELD_ALTERA_FIELD_01 으로 가는 위치
	        StartPosId  = 321,	--321
	        StartPosX   = 2926,
	        StartPosY   = 5617,
	        StartPosZ   = -18371,
	        
			BattleFieldId = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_ALTERA_FIELD_01"],
			BattleFieldStartLineIndex = 2,
	    },
		
		{	-- VMI_BATTLE_FIELD_ALTERA_FIELD_02 로 부터 이동 되는 위치
	        StartPosId  = 322,	--322
			
	        StartPosX   = -6438,
	        StartPosY   = 5617,
	        StartPosZ   = -18300,
	        IsSummon    = TRUE,     
	    },
		
		{	-- VMI_BATTLE_FIELD_ALTERA_FIELD_02 으로 가는 위치
	        StartPosId  = 323,	--323
	       
			StartPosX   = -6725,
	        StartPosY   = 5617,
	        StartPosZ   = -17961,
	        
			BattleFieldId = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_ALTERA_FIELD_02"],
			BattleFieldStartLineIndex = 2,
	    },
		
		{	-- 워프
	        StartPosId  = 324,
	        StartPosX   = -510.316,
	        StartPosY   = 5377.844,
	        StartPosZ   = -20579.938,
	        
			IsWarp		= TRUE,                 
	    },
	}
}

--벨더 쉼터_시계탑 광장_워프 위치 값 다 수정해야됨
Village[ VILLAGE_MAP_ID["VMI_BATTLE_FIELD_VELDER_REST_00"] ] =
{
	NAME = STR_ID_20002,

	BaseLocalStateID	= LOCAL_MAP_ID["LMI_VELDER"],	--벨더		-- 해당 마을을 품는 로컬 ID
	
	HouseIDList =
	{
		HOUSE_ID["HI_HELLEN_SHOP_HOUSE"],
		HOUSE_ID["HI_GLAVE_HOUSE"],
		HOUSE_ID["HI_POSTBOX"],
		HOUSE_ID["HI_BILLBOARD"],
		----HOUSE_ID["HI_APINK_ARCHANGEL"],
	},
		
	WORLD_ID = WORLD_ID["WI_BATTLE_FIELD_VELDER_FIELD_REST_00"],
	
	CAMERA = { 1800, 160, 300 },
	
	START_POS = 
	{
	    {	-- VMI_BATTLE_FIELD_VELDER_FIELD_01 로 부터 이동 되는 위치
	        StartPosId  = 330,	--330
	        StartPosX   = -12829.76,
	        StartPosY   = 900,
	        StartPosZ   = 1262,
	        IsSummon    = TRUE,
	    },
		
		{	-- VMI_BATTLE_FIELD_VELDER_FIELD_01 으로 가는 위치
	        StartPosId  = 331,	--331
	        StartPosX   = -13452,
	        StartPosY   = 900,
	        StartPosZ   = 1262,
	        
			BattleFieldId = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_VELDER_FIELD_01"],
			BattleFieldStartLineIndex = 2,
	    },
		
		{	-- VMI_BATTLE_FIELD_VELDER_FIELD_02 로 부터 이동 되는 위치
	        StartPosId  = 332,	--332
	        StartPosX   = -4465.22,
	        StartPosY   = 1333,
	        StartPosZ   = 3475.49,
	        IsSummon    = TRUE,     
	    },
		
		{	-- VMI_BATTLE_FIELD_VELDER_FIELD_02 으로 가는 위치
	        StartPosId  = 333,	--333
	        StartPosX   = -4465.22,
	        StartPosY   = 1376,
	        StartPosZ   = 3772.49,
	        
			BattleFieldId = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_VELDER_FIELD_02"],
			BattleFieldStartLineIndex = 1,
	    },
		
		{	-- VMI_BATTLE_FIELD_VELDER_FIELD_03 로 부터 이동 되는 위치
	        StartPosId  = 334,	--334
	        StartPosX   = -3173.22,
	        StartPosY   = 900,
	        StartPosZ   = 1262.49,
	        IsSummon    = TRUE,     
			IsRight		= FALSE, 
	    },
		
		{	-- VMI_BATTLE_FIELD_VELDER_FIELD_03 으로 가는 위치
	        StartPosId  = 335,	--335
	        StartPosX   = -2510,
	        StartPosY   = 900,
	        StartPosZ   = 1262,
	        
			BattleFieldId = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_VELDER_FIELD_03"],
			BattleFieldStartLineIndex = 1,
	    },
		
		{	-- 워프
	        StartPosId  = 336,
	        StartPosX   = -9722.0,
	        StartPosY   = 660.0,
	        StartPosZ   = 1262.0,
	        
			IsWarp		= TRUE,                 
	    },
	}
}

--하멜 쉼터_치유의 샘터_
Village[ VILLAGE_MAP_ID["VMI_BATTLE_FIELD_HAMEL_REST_00"] ] =
{
	NAME = STR_ID_20008,

	BaseLocalStateID	= LOCAL_MAP_ID["LMI_HAMEL"],	--벨더		-- 해당 마을을 품는 로컬 ID
	 
	HouseIDList =
	{
		HOUSE_ID["HI_GLAVE_HOUSE"],
		HOUSE_ID["HI_HELLEN_SHOP_HOUSE"],
		HOUSE_ID["HI_BILLBOARD"],
		HOUSE_ID["HI_POSTBOX"],
		----HOUSE_ID["HI_APINK_ARCHANGEL"],
	},
		
	WORLD_ID = WORLD_ID["WI_BATTLE_FIELD_HAMEL_FIELD_REST_00"], 
	
	CAMERA = { 1800, 160, 300 },
	
	START_POS = 
	{
	    {	-- VMI_BATTLE_FIELD_HAMEL_FIELD_02 로 부터 이동 되는 위치
	        StartPosId  = 340,	--340
	        StartPosX   = 48524.76,
	        StartPosY   = 4500,
	        StartPosZ   = 482,
	        IsSummon    = TRUE,
	    },
		
		{	-- VMI_BATTLE_FIELD_HAMEL_FIELD_02 으로 가는 위치
	        StartPosId  = 341,	--341
	        StartPosX   = 48157,
	        StartPosY   = 4500,
	        StartPosZ   = 482,
	        
			BattleFieldId = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_HAMEL_FIELD_02"],
			BattleFieldStartLineIndex = 2,
	    },
		
		{	-- VMI_BATTLE_FIELD_HAMEL_FIELD_04 로 부터 이동 되는 위치
	        StartPosId  = 342,	--342
	        StartPosX   = 57412,
	        StartPosY   = 4500,
	        StartPosZ   = 123.59,
	        IsSummon    = TRUE,     
			IsRight		= FALSE, 
	    },
		
		{	-- VMI_BATTLE_FIELD_HAMEL_FIELD_04 으로 가는 위치
	        StartPosId  = 343,	--343
	        StartPosX   = 58196,
	        StartPosY   = 4740,
	        StartPosZ   = 733,
	        
			BattleFieldId = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_HAMEL_FIELD_04"],
			BattleFieldStartLineIndex = 1,
	    },
		
		{	-- VMI_BATTLE_FIELD_HAMEL_FIELD_03 로 부터 이동 되는 위치
	        StartPosId  = 344,	--344
	        StartPosX   = 57749.22,
	        StartPosY   = 4740,
	        StartPosZ   = 733.49,
	        IsSummon    = TRUE,    
			IsRight		= FALSE,  
	    },
		
		{	-- VMI_BATTLE_FIELD_HAMEL_FIELD_03 으로 가는 위치
	        StartPosId  = 345,	--345
	        StartPosX   = 57735,
	        StartPosY   = 4500,
	        StartPosZ   = -236,
	        
			BattleFieldId = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_HAMEL_FIELD_03"],
			BattleFieldStartLineIndex = 1,
	    },
		
		{	-- 워프
	        StartPosId  = 346,
			
	        StartPosX   = 54035.949,
	        StartPosY   = 4350.0,
	        StartPosZ   = -52.499,
	        
			IsWarp		= TRUE,                 
	    },
	}
}

--샌더 쉼터_윈드스톤 유적지
Village[ VILLAGE_MAP_ID["VMI_BATTLE_FIELD_SANDER_REST_00"] ] =
{
	NAME = STR_ID_23093,

	BaseLocalStateID	= LOCAL_MAP_ID["LMI_SANDER"],	--벨더		-- 해당 마을을 품는 로컬 ID
	 
	HouseIDList =
	{
		HOUSE_ID["HI_GLAVE_HOUSE"],
		HOUSE_ID["HI_HELLEN_SHOP_HOUSE"],
		HOUSE_ID["HI_BILLBOARD"],
		HOUSE_ID["HI_POSTBOX"],
		----HOUSE_ID["HI_APINK_ARCHANGEL"],
	},
		
	WORLD_ID = WORLD_ID["WI_BATTLE_FIELD_SANDER_FIELD_REST_00"], 
	
	CAMERA = { 1800, 160, 300 },
	
	START_POS = 
	{
	    -- {	-- VMI_BATTLE_FIELD_SANDER_FIELD_02 로 부터 이동 되는 위치
	        -- StartPosId  = 350,
			
			-- StartPosX   = -4641.17,
	        -- StartPosY   = 22594.00,
	        -- StartPosZ   = -59506.00,
	       
	        -- IsSummon    = TRUE,
	    -- },
		
		-- {	-- VMI_BATTLE_FIELD_SANDER_FIELD_02 으로 가는 위치
	        -- StartPosId  = 351,	--341

			-- StartPosX   = -5035.00,
	        -- StartPosY   = 22594.00,
	        -- StartPosZ   = -59506.00,
	        
			-- BattleFieldId = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_SANDER_FIELD_02"],
			-- BattleFieldStartLineIndex = 2,
	    -- },
		
		{	-- VMI_BATTLE_FIELD_SANDER_FIELD_02 로 부터 이동 되는 위치
	        StartPosId  = 350,	--340
			
	        StartPosX   = -4888,
	        StartPosY   = 22594,
	        StartPosZ   = -59506,
	        IsSummon    = TRUE,
	    },
		
		{	-- VMI_BATTLE_FIELD_SANDER_FIELD_02 으로 가는 위치
	        StartPosId  = 351,	--341
			
	        StartPosX   = -5035,
	        StartPosY   = 22594,
	        StartPosZ   = -59506,
	        
			BattleFieldId = VILLAGE_MAP_ID["VMI_BATTLE_FIELD_SANDER_FIELD_02"],
			BattleFieldStartLineIndex = 2,
	    },
		
		{	-- 워프
	        StartPosId  = 356,
	        StartPosX   = 624,
	        StartPosY   = 22400,
	        StartPosZ   = -59506,
	        
			IsWarp		= TRUE,                 
	    },
	}
}