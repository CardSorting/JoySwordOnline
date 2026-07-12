-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

NONE = 0
NORMAL	 = 8
SILVER	= 16 
GOLD	= 24
EMERALD	 = 32
DIAMOND	 = 40
PLATINUM = 48

-- 은행 확장
g_pEDInventoryExpand:AddBankGradeED
{
	GRADE_ED =
	{

		{ GRADE = NORMAL,   ED = 0 },	-- 업그레이드 할 은행 등급,  비용
		{ GRADE = SILVER,   ED = 4000000 },
		{ GRADE = GOLD,     ED = 8000000 },
		{ GRADE = EMERALD,  ED = 18000000 },
		{ GRADE = DIAMOND,  ED = 54000000 },
		{ GRADE = PLATINUM, ED = 65000000 },
	},

}

-- 인벤토리 확장
g_pEDInventoryExpand:AddInventoryGradeED
{
	GRADE_ED =
	{

		{ GRADE = 1, ED = 5000000 },-- 업그레이드 할 단계, 비용  --  업그레이드 안한 상태가 0,  처음 시도가 1
		{ GRADE = 2, ED = 10000000 },
		{ GRADE = 3, ED = 24000000 },
		{ GRADE = 4, ED = 75000000 },
	},

}

