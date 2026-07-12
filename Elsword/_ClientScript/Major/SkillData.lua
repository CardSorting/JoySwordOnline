-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


----------------------------------------------
-- 레벨업 시 추가로 지급하는 sp 계산
----------------------------------------------
function CalcLevelUpIncreaseSkillPoint( iNewLevel )

	currSP = 0

	currSP = ( iNewLevel / 10.0 ) + 4.0

	return currSP
end

-- ----------------------------------------------
-- -- 초기화 시 지급하는 sp 계산
-- ----------------------------------------------
-- function CalcInitSkillPoint( iNewLevel )

	-- totalSP = 0
	-- currSp = 0
    -- for i = 2, iNewLevel do
		-- currSP = ( iNewLevel / 5.0 ) + 4.0
		-- totalSP = totalSP + currSP
	-- end

    -- return totalSP
-- end

-- 봉인 스킬 정보 : (1) 스킬ID   (2) 해당 스킬의 봉인을 풀수있는 ItemID
g_pSkillTree:AddSealSkillInfo
{
    m_iItemID = 270970,             -- 1-1 캐시 스킬 아이템 카밀라의 비전서 (초급)
    m_eUnitClassType = UNIT_CLASS_TYPE["UCT_FIRST_CLASS"],  -- 1차 전직 부터 구매 가능
    m_SkillID =
	{
		1209, 1214, 1223, 2006, 2407, 2414, 
		3208, 3214, 3225, 4005, 4215, 4220, 
		5209, 5011, 5018, 6005, 6012, 6222, 
		7211, --ES_INT 김석근 [2013.10.04] --7215, 8209, 8009,
	},
}

g_pSkillTree:AddSealSkillInfo
{
	m_iItemID = 270971,             -- 1-2 캐시 스킬 아이템 카밀라의 비전서 (중급)
	m_eUnitClassType = UNIT_CLASS_TYPE["UCT_FIRST_CLASS"],  -- 1차 전직 부터 구매 가능
	m_SkillID =
	{
		1005, 1012, 1016, 2005, 2011, 2016, 
		3006, 3013, 3019, 4006, 4013, 4020, 
		5006, 5013, 5020, 6007, 6011, 6018, 
		7006, --ES_INT 김석근 [2013.10.04] --7014, 8006, 8012,		 
	},
}


g_pSkillTree:AddSealSkillInfo
{
    m_iItemID = 270972,             -- 2-1 캐시 스킬 아이템 카밀라의 비전서 (상급)
    m_eUnitClassType = UNIT_CLASS_TYPE["UCT_SECOND_CLASS"],  -- 2차 전직 부터 구매 가능
    m_SkillID =
	{
		1213, 1220, 1225, 2211, 2217, 2224, 
		3211, 3222, 3017, 4210, 4410, 4021, 
		5212, 5218, 5221, 6211, 6014, 6022, 
		7404, --ES_INT 김석근 [2013.10.04] --7013, 8014, 8016,
	},
}


g_pSkillTree:AddSealSkillInfo
{
    m_iItemID = 270973,             -- 2-2 캐시 스킬 아이템 카밀라의 비전서 (고급)
    m_eUnitClassType = UNIT_CLASS_TYPE["UCT_SECOND_CLASS"],  -- 2차 전직 부터 구매 가능
    m_SkillID =
	{
		1404, 1409, 1414, 2403, 2408, 2416, 
		3403, 3409, 3231, 4407, 4409, 4418, 
		5406, 5408, 5413, 6405, 6411, 6416, 
		7405, --ES_INT 김석근 [2013.10.04] --7409, 8405, 8407,
	},
}
--ES_INT 김석근 [2013.10.04] --
--[[
g_pSkillTree:AddSealSkillInfo
{
    m_iItemID = 271311,             -- 2-3  퀘스트 스킬 아이템 궁극의 비전서
    m_eUnitClassType = UNIT_CLASS_TYPE["UCT_SECOND_CLASS"],  -- 2차 전직 부터 구매 가능
    m_SkillID =
	{
		1600, 1601, 1602, 2600, 2601, 2602,
		3600, 3601, 3602, 4600, 4601, 4602,
		5600, 5601, 5602, 6600, 6601, 6602,
		7600, 7601, 8600, 8601,
	},
}
--]]

----------------------------------------------
-- 직업별 데미지 배율 테이블
----------------------------------------------
g_pSkillTree:AddSkillPowerRate_LUA
{
	m_eID = SKILL_POWER_RATE_TYPE["SPRT_BASIC_CLASS"],		-- 기본 전직
	
	m_Value =
    {
        1.0000,	1.0225,	1.0450,	1.0675,	1.0900,	1.1125,	1.1350,	1.1575,	1.1800,	1.2025,
        1.2250,	1.2475,	1.2700,	1.2925,	1.3150,	1.3375,	1.3600,	1.3825,	1.4050,	1.4275,
        1.4500,	1.4725,	1.4950,	1.5175,	1.5400,	1.5625,	1.5850,	1.6075,	1.6300,	1.6525,
    },
}

g_pSkillTree:AddSkillPowerRate_LUA
{
	m_eID = SKILL_POWER_RATE_TYPE["SPRT_FIRST_CLASS"],		-- 1차 전직
	
	m_Value =
    {
        1.0000,	1.0325,	1.0650,	1.0975,	1.1300,	1.1625,	1.1950,	1.2275,	1.2600,	1.2925,
        1.3250,	1.3575,	1.3900,	1.4225,	1.4550,	1.4875,	1.5200,	1.5525,	1.5850,	1.6175,
        1.6500,	1.6825,	1.7150,	1.7475,	1.7800,	1.8125,	1.8450,	1.8775,	1.9100,	1.9425,
    },
}

g_pSkillTree:AddSkillPowerRate_LUA
{
	m_eID = SKILL_POWER_RATE_TYPE["SPRT_SECOND_CLASS"],		-- 2차 전직_1
	
	m_Value =
    {
        1.0000,	1.0450,	1.0900,	1.1350,	1.1800,	1.2250,	1.2700,	1.3150,	1.3600,	1.4050,
        1.4500,	1.4950,	1.5400,	1.5850,	1.6300,	1.6750,	1.7200,	1.7650,	1.8100,	1.8550,
        1.9000,	1.9450,	1.9900,	2.0350,	2.0800,	2.1250,	2.1700,	2.2150,	2.2600,	2.3050,
    },
}

g_pSkillTree:AddSkillPowerRate_LUA
{
	m_eID = SKILL_POWER_RATE_TYPE["SPRT_SECOND_CLASS2"],	-- 2차 전직_2
	
	m_Value =
    {
        1.0000,	1.0750,	1.1500,	1.2250,	1.3000,	1.3750,	1.4500,	1.5250,	1.6000,	1.6750,
        1.7500,	1.8250,	1.9000,	1.9750,	2.0500,	2.1250,	2.2000,	2.2750,	2.3500,	2.4250,
        2.5000,	2.5750,	2.6500,	2.7250,	2.8000,	2.8750,	2.9500,	3.0250,	3.1000,	3.1750,
    },
}

g_pSkillTree:AddSkillPowerRate_LUA
{
	m_eID = SKILL_POWER_RATE_TYPE["SPRT_HYPER_SKILL"],		-- 각성(2013.08.06. 이승헌 //하이퍼 액티브 데미지 상향 위해 1lv 1.2, 이후 +0.075 배율로 조정)
	
	m_Value =
    {
        1.2000,	1.2750,	1.3500,	1.4250,	1.5000,	1.5750,	1.6500,	1.7250,	1.8000,	1.8750,
        1.9500,	2.0250,	2.1000,	2.1750,	2.2500,	2.3250,	2.4000,	2.4750,	2.5500,	2.6250,
        2.7000,	2.7750,	2.8500,	2.9250,	3.0000,	3.0750,	3.1500,	3.2250,	3.3000,	3.3750,
    },
}


----------------------------------------------
-- 전직별로 주어지는 기본 스킬 리스트
----------------------------------------------
-- 기본 전직
g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_ELSWORD_SWORDMAN"],		1001,	1205,	0,		0,		0,		0,		}
g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_ARME_VIOLET_MAGE"],		2001,	2200,	0,		0,		0,		0,		}
g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_LIRE_ELVEN_RANGER"],		3001,	3202,	0,		0,		0,		0,		}
g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_RAVEN_FIGHTER"],			4000,	4205,	0,		0,		0,		0,		}
g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_EVE_NASOD"],				5001,	5205,	0,		0,		0,		0,		}
g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_CHUNG_IRON_CANNON"],		6000,	6203,	0,		0,		0,		0,		}
g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_ARA_MARTIAL_ARTIST"],		7001,	7204,	0,		0,		0,		0,		}
g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_ELESIS_KNIGHT"],			8001,	8200,	0,		0,		0,		0,		}

-- 1차 전직
g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_ELSWORD_KNIGHT"],			1001,	1205,	1208,	100,	0,		0,		}
g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"],	1001,	1205,	1215,	101,	0,		0,		}
g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"],	1001,	1205,	1222,	100,	0,		0,		}

g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"],		2001,	2200,	2208,	101,	0,		0,		}
g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_ARME_DARK_MAGICIAN"],		2001,	2200,	2215,	101,	0,		0,		}
g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"],	2001,	2200,	2018,	100,	0,		0,		}

g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_LIRE_COMBAT_RANGER"],		3001,	3202,	3206,	100,	0,		0,		}
g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_LIRE_SNIPING_RANGER"],		3001,	3202,	3215,	101,	0,		0,		}
g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"],	3001,	3202,	3223,	100,	0,		0,		}

g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_RAVEN_SOUL_TAKER"],		4000,	4205,	4207,	100,	0,		0,		}
g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_RAVEN_OVER_TAKER"],		4000,	4205,	4214,	101,	0,		0,		}
g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"],		4000,	4205,	4015,	101,	0,		0,		}

g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_EVE_EXOTIC_GEAR"],			5001,	5205,	5004,	101,	0,		0,		}
g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_EVE_ARCHITECTURE"],		5001,	5205,	5402,	100,	0,		0,		}
g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_EVE_ELECTRA"],				5001,	5205,	5409,	101,	0,		0,		}

g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"],		6000,	6203,	6206,	100,	0,		0,		}
g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"],	6000,	6203,	6212,	101,	0,		0,		}
g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"],	6000,	6203,	6412,	101,	0,		0,		}

g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_ARA_LITTLE_HSIEN"],		7001,	7204,	7208,	100,	0,		0,		}
--ES_INT 김석근 [2013.10.04] --g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_ARA_LITTLE_DEVIL"],		7001,	7204,	7009,	101,	0,		0,		}

g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"],		8001,	8200,	8208,	100,	0,		0,		}
g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"],		8001,	8200,	8211,	101,	0,		0,		}



-- 2차 전직
g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"],		1001,	1205,	1208,	100,	1212,	102,	}
g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"],		1001,	1205,	1215,	101,	1216,	103,	}
g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"],	1001,	1205,	1222,	100,	1226,	102,	}

g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"],	2001,	2200,	2208,	101,	2212,	103,	}
g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_ARME_VOID_PRINCESS"],		2001,	2200,	2215,	101,	2218,	103,	}
g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_ARME_DIMENSION_WITCH"],	2001,	2200,	2018,	100,	2222,	102,	}

g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_LIRE_WIND_SNEAKER"],		3001,	3202,	3206,	100,	3209,	102,	}
g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_LIRE_GRAND_ARCHER"],		3001,	3202,	3215,	101,	3220,	103,	}
g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"],		3001,	3202,	3223,	100,	3227,	102,	}

g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_RAVEN_BLADE_MASTER"],		4000,	4205,	4207,	100,	4211,	102,	}
g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"],		4000,	4205,	4214,	101,	4218,	103,	}
g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"],	4000,	4205,	4015,	101,	4222,	103,	}

g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_EVE_CODE_NEMESIS"],		5001,	5205,	5004,	101,	5213,	103,	}
g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_EVE_CODE_EMPRESS"],		5001,	5205,	5402,	100,	5401,	102,	}
g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_EVE_BATTLE_SERAPH"],		5001,	5205,	5409,	101,	5411,	103,	}

g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_CHUNG_IRON_PALADIN"],		6000,	6203,	6206,	100,	6209,	102,	}
g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"],		6000,	6203,	6212,	101,	6409,	103,	}
g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"],	6000,	6203,	6412,	101,	6415,	103,	}

g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"],		7001,	7204,	7208,	100,	7213,	102,	}
--ES_INT 김석근 [2013.10.04] --g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_ARA_YAMA_RAJA"],			7001,	7204,	7009,	101,  	7216,	103,	}

g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_ELESIS_GRAND_MASTER"],		8001,	8200,	8208,	100,	8214,	102,	}
g_pSkillTree:AddDefaultSkill_LUA{ UNIT_CLASS["UC_ELESIS_BLAZING_HEART"],	8001,	8200,	8211,	101,	8217,	103,	}