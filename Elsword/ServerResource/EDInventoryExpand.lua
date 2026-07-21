-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

NONE = 0
NORMAL	 = 8
SILVER	= 16 
GOLD	= 24
EMERALD	 = 32
DIAMOND	 = 40
PLATINUM = 48

-- REBALANCE_ED_STORAGE_COSTS: Modernized Fair ED Storage Expansion Costs
-- 은행 확장
g_pEDInventoryExpand:AddBankGradeED
{
	GRADE_ED =
	{
		{ GRADE = NORMAL,   ED = 0 },
		{ GRADE = SILVER,   ED = 100000 },
		{ GRADE = GOLD,     ED = 500000 },
		{ GRADE = EMERALD,  ED = 1000000 },
		{ GRADE = DIAMOND,  ED = 2500000 },
		{ GRADE = PLATINUM, ED = 5000000 },
	},
}

-- 인벤토리 확장
g_pEDInventoryExpand:AddInventoryGradeED
{
	GRADE_ED =
	{
		{ GRADE = 1, ED = 250000 },
		{ GRADE = 2, ED = 750000 },
		{ GRADE = 3, ED = 1500000 },
		{ GRADE = 4, ED = 3000000 },
	},
}
-- END_REBALANCE_ED_STORAGE_COSTS
