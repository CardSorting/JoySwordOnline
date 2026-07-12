-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--[[ JHKang / 강정훈 / 2012.09.17 대전 시즌 2 개편으로 주석 처리
	g_pLVUpEventMgr:AddLevelUpEvent_LUA
	{
		EVENT_ID = LEVEL_UP_EVENT_ID["LUEI_PVP_PR"],
	
		TYPE0 = 
		{
			COND = 
			{
				LEVEL = 10,

				UNIT_CLASS = 
				{
					UNIT_CLASS["UC_NONE"],
				},
			},

			REACT = 
			{
				DIALOG_LIST = 
				{
					"DLG_PVP_PR.lua",
				},
			},	
		},
	}
--]]

g_pLVUpEventMgr:AddLevelUpEvent_LUA
{
	EVENT_ID = LEVEL_UP_EVENT_ID["LUEI_CHANGE_CLASS_GUIDE_FIRST"],
	
	TYPE0 = 
	{
		COND = 
		{
			LEVEL = 15,

			UNIT_CLASS = 
			{
				UNIT_CLASS["UC_ELSWORD_SWORDMAN"],
			},
		},

		REACT = 
		{
			DIALOG_LIST = 
			{
				"DLG_Class_Change_Guide_Elsword.lua",
			},
		},	
	},
	
	TYPE1 = 
	{
		COND = 
		{
			LEVEL = 15,

			UNIT_CLASS = 
			{
				UNIT_CLASS["UC_ARME_VIOLET_MAGE"],
			},
		},

		REACT = 
		{
			DIALOG_LIST = 
			{
				"DLG_Class_Change_Guide_Aisha.lua",
			},
		},	
	},
	
	TYPE2 = 
	{
		COND = 
		{
			LEVEL = 15,

			UNIT_CLASS = 
			{
				UNIT_CLASS["UC_LIRE_ELVEN_RANGER"],
			},
		},

		REACT = 
		{
			DIALOG_LIST = 
			{
				"DLG_Class_Change_Guide_Lena.lua",
			},
		},	
	},
	
	TYPE3 = 
	{
		COND = 
		{
			LEVEL = 15,

			UNIT_CLASS = 
			{
				UNIT_CLASS["UC_RAVEN_FIGHTER"],
			},
		},

		REACT = 
		{
			DIALOG_LIST = 
			{
				"DLG_Class_Change_Guide_Raven.lua",
			},
		},	
	},
	
	TYPE4 = 
	{
		COND = 
		{
			LEVEL = 15,

			UNIT_CLASS = 
			{
				UNIT_CLASS["UC_EVE_NASOD"],
			},
		},

		REACT = 
		{
			DIALOG_LIST = 
			{
				"DLG_Class_Change_Guide_Eve.lua",
			},
		},	
	},
	
	TYPE5 = 
	{
		COND = 
		{
			LEVEL = 15,

			UNIT_CLASS = 
			{
				UNIT_CLASS["UC_CHUNG_IRON_CANNON"],
			},
		},

		REACT = 
		{
			DIALOG_LIST = 
			{
				"DLG_Class_Change_Guide_Chung.lua",
			},
		},	
	},

	TYPE6 = 
	{
		COND = 
		{
			LEVEL = 15,

			UNIT_CLASS = 
			{
				UNIT_CLASS["UC_ARA_MARTIAL_ARTIST"],
			},
		},

		REACT = 
		{
			DIALOG_LIST = 
			{
				"DLG_Class_Change_Guide_Ara.lua",
			},
		},	
	},

	TYPE7 = 
	{
		COND = 
		{
			LEVEL = 15,

			UNIT_CLASS = 
			{
				UNIT_CLASS["UC_ELESIS_KNIGHT"],
			},
		},

		REACT = 
		{
			DIALOG_LIST = 
			{
				"Class_Change_Guide_Elesis.lua",
			},
		},	
	},
}

--[[
	g_pLVUpEventMgr:AddLevelUpEvent_LUA
	{
		EVENT_ID = LEVEL_UP_EVENT_ID["LUEI_LEVEL_10"],
		
		TYPE0 = 
		{
			COND = 
			{
				LEVEL = 10,

				UNIT_CLASS = 
				{
					UNIT_CLASS["UC_NONE"],
				},
			},

			REACT = 
			{
				DIALOG_LIST = 
				{
					"DLG_10LV_PR.lua",
				},
			},	
		},
	}
--]]