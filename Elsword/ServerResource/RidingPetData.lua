-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- 라이딩 펫 생성 아이템
--												ItemID				RidingPetID					  Period( 일 단위이며, 영구권은 -1 )
g_pRidingPetManager:AddRidingPetCreateItemInfo( 550000, RIDING_PET_UNIT_ID["RPUI_NASOD_MOBI"],		-1	)	-- 소환석 : 나소드 모비
g_pRidingPetManager:AddRidingPetCreateItemInfo( 550001, RIDING_PET_UNIT_ID["RPUI_NASOD_MOBI"],		1	)	-- 소환석 : 나소드 모비 (1일권)
g_pRidingPetManager:AddRidingPetCreateItemInfo( 550003, RIDING_PET_UNIT_ID["RPUI_NASOD_MOBI"],		7	)	-- 소환석 : 나소드 모비 (7일권)

g_pRidingPetManager:AddRidingPetCreateItemInfo( 550010, RIDING_PET_UNIT_ID["RPUI_KOUCIKA"],			-1	)	-- 소환석 : 신속의 코카
g_pRidingPetManager:AddRidingPetCreateItemInfo( 550011, RIDING_PET_UNIT_ID["RPUI_KOUCIKA"],			1	)	-- 소환석 : 신속의 코카 (1일권)
g_pRidingPetManager:AddRidingPetCreateItemInfo( 550013, RIDING_PET_UNIT_ID["RPUI_KOUCIKA"],			7	)	-- 소환석 : 신속의 코카 (7일권)

g_pRidingPetManager:AddRidingPetCreateItemInfo( 550020, RIDING_PET_UNIT_ID["RPUI_ANCIENT_PPORU"],	-1	)	-- 소환석 : 에이션트 뽀루
g_pRidingPetManager:AddRidingPetCreateItemInfo( 550021, RIDING_PET_UNIT_ID["RPUI_ANCIENT_PPORU"],	1	)	-- 소환석 : 에이션트 뽀루 (1일권)
g_pRidingPetManager:AddRidingPetCreateItemInfo( 550023, RIDING_PET_UNIT_ID["RPUI_ANCIENT_PPORU"],	7	)	-- 소환석 : 에이션트 뽀루 (7일권)

g_pRidingPetManager:AddRidingPetCreateItemInfo( 550030, RIDING_PET_UNIT_ID["RPUI_SCORPION_TYPE_R"],	-1	)	-- 소환석 : 퐁고 스콜피온 TYPE-R

g_pRidingPetManager:AddRidingPetCreateItemInfo( 550040, RIDING_PET_UNIT_ID["RPUI_ICE_HAMELING"],	-1	)	-- 소환석 : 아이스 하멜링

g_pRidingPetManager:AddRidingPetCreateItemInfo( 550041, RIDING_PET_UNIT_ID["RPUI_DARK_HAMELING"],	-1	)	-- 소환석 : 다크 하멜링

g_pRidingPetManager:AddRidingPetCreateItemInfo( 550042, RIDING_PET_UNIT_ID["RPUI_RED_HAMELING"],	-1	)	-- 소환석 : 레드 하멜링

g_pRidingPetManager:AddRidingPetCreateItemInfo( 550050, RIDING_PET_UNIT_ID["RPUI_OBERON_CUSTOM_650"],	-1	)	-- 소환석 : 이브 커스텀-오베론 650


--겨울 방학 이벤트. 거래 불가용 소환석들
g_pRidingPetManager:AddRidingPetCreateItemInfo( 550043, RIDING_PET_UNIT_ID["RPUI_NASOD_MOBI"],	-1	)		-- 소환석 : 나소드 모비
g_pRidingPetManager:AddRidingPetCreateItemInfo( 550044, RIDING_PET_UNIT_ID["RPUI_KOUCIKA"],	-1	)			-- 소환석 : 신속의 코카
g_pRidingPetManager:AddRidingPetCreateItemInfo( 550045, RIDING_PET_UNIT_ID["RPUI_ANCIENT_PPORU"],	-1	)	-- 소환석 : 에이션트 뽀루
g_pRidingPetManager:AddRidingPetCreateItemInfo( 550046, RIDING_PET_UNIT_ID["RPUI_SCORPION_TYPE_R"],	-1	)	-- 소환석 : 퐁고 스콜피온 TYPE-R
g_pRidingPetManager:AddRidingPetCreateItemInfo( 550047, RIDING_PET_UNIT_ID["RPUI_ICE_HAMELING"],	-1	)	-- 소환석 : 아이스 하멜링
g_pRidingPetManager:AddRidingPetCreateItemInfo( 550048, RIDING_PET_UNIT_ID["RPUI_DARK_HAMELING"],	-1	)	-- 소환석 : 다크 하멜링
g_pRidingPetManager:AddRidingPetCreateItemInfo( 550049, RIDING_PET_UNIT_ID["RPUI_RED_HAMELING"],	-1	)	-- 소환석 : 레드 하멜링



---------------
-- 해외 전용 --
---------------

g_pRidingPetManager:AddRidingPetCreateItemInfo( 67006329, RIDING_PET_UNIT_ID["RPUI_NASOD_MOBI"],		15	)	-- 소환석 : 나소드 모비 (15일권)
g_pRidingPetManager:AddRidingPetCreateItemInfo( 67006330, RIDING_PET_UNIT_ID["RPUI_KOUCIKA"],			15	)	-- 소환석 : 신속의 코카 (15일권)
g_pRidingPetManager:AddRidingPetCreateItemInfo( 67006331, RIDING_PET_UNIT_ID["RPUI_ANCIENT_PPORU"],		15	)	-- 소환석 : 에이션트 뽀루 (15일권)

g_pRidingPetManager:AddRidingPetCreateItemInfo( 67006703, RIDING_PET_UNIT_ID["RPUI_SCORPION_TYPE_R"],	1	)	-- 소환석 : 퐁고 스콜피온 TYPE-R
g_pRidingPetManager:AddRidingPetCreateItemInfo( 67006704, RIDING_PET_UNIT_ID["RPUI_SCORPION_TYPE_R"],	2	)	-- 소환석 : 퐁고 스콜피온 TYPE-R
g_pRidingPetManager:AddRidingPetCreateItemInfo( 67006705, RIDING_PET_UNIT_ID["RPUI_SCORPION_TYPE_R"],	3	)	-- 소환석 : 퐁고 스콜피온 TYPE-R
g_pRidingPetManager:AddRidingPetCreateItemInfo( 67006706, RIDING_PET_UNIT_ID["RPUI_SCORPION_TYPE_R"],	5	)	-- 소환석 : 퐁고 스콜피온 TYPE-R
g_pRidingPetManager:AddRidingPetCreateItemInfo( 67006707, RIDING_PET_UNIT_ID["RPUI_SCORPION_TYPE_R"],	10	)	-- 소환석 : 퐁고 스콜피온 TYPE-R
g_pRidingPetManager:AddRidingPetCreateItemInfo( 67006714, RIDING_PET_UNIT_ID["RPUI_SCORPION_TYPE_R"],	15	)	-- 소환석 : 퐁고 스콜피온 TYPE-R
g_pRidingPetManager:AddRidingPetCreateItemInfo( 67006712, RIDING_PET_UNIT_ID["RPUI_SCORPION_TYPE_R"],	30	)	-- 소환석 : 퐁고 스콜피온 TYPE-R

g_pRidingPetManager:AddRidingPetCreateItemInfo( 67006720, RIDING_PET_UNIT_ID["RPUI_NASOD_MOBI"],		3	)	-- 소환석 : 나소드 모비 (3일권)
g_pRidingPetManager:AddRidingPetCreateItemInfo( 67006721, RIDING_PET_UNIT_ID["RPUI_KOUCIKA"],			3	)	-- 소환석 : 신속의 코카 (3일권)
g_pRidingPetManager:AddRidingPetCreateItemInfo( 67006722, RIDING_PET_UNIT_ID["RPUI_ANCIENT_PPORU"],		3	)	-- 소환석 : 에이션트 뽀루 (3일권)

g_pRidingPetManager:AddRidingPetCreateItemInfo( 60008021, RIDING_PET_UNIT_ID["RPUI_SCORPION_TYPE_R"],	3	)	-- 소환석 : 퐁고 스콜피온 TYPE-R (3일권)

g_pRidingPetManager:AddRidingPetCreateItemInfo( 84002150, RIDING_PET_UNIT_ID["RPUI_NASOD_MOBI_INT"],	-1	)	-- 소환석 : 고대의 돌진 전차 모비RT
g_pRidingPetManager:AddRidingPetCreateItemInfo( 84002160, RIDING_PET_UNIT_ID["RPUI_KOUCIKA_INT"],		-1	)	-- 소환석 : 고대의 바람의 코우시카
g_pRidingPetManager:AddRidingPetCreateItemInfo( 84002170, RIDING_PET_UNIT_ID["RPUI_ANCIENT_PPORU_INT"],	-1	)	-- 소환석 : 고대의 에이션트 라이딩 뽀루