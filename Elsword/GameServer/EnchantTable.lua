

-- 옛날 강화석 정보 세팅
EnchantItemManager:SetWeaponEnchantStone( 109950 )
EnchantItemManager:SetRareWeaponEnchantStone( 109960 )
EnchantItemManager:SetArmorEnchantStone( 109965 )
EnchantItemManager:SetRareArmorEnchantStone( 109970 )

-- 플루오르스톤 강화 제한
EnchantItemManager:SetSupportMaterialLimit( 15 )

-- 플루오르스톤 강화 이벤트 제한
EnchantItemManager:SetEventSupportMaterialLimit( 20 )

-- #ifdef SERV_ENCHANT_LIMIT 강화 레벨 제한
-- This GameServer build does not export SetEnchantLimit.  Valid target levels
-- and their complete outcome distributions are enforced by the tables below.
-- #endif SERV_ENCHANT_LIMIT

-- 신규 강화석 정보 세팅
EnchantItemManager:AddEnchantStoneInfo( 130077, ITEM_TYPE["IT_WEAPON"],   0,  20 )   -- 무기 강화석 Lv.1
EnchantItemManager:AddEnchantStoneInfo( 130078, ITEM_TYPE["IT_WEAPON"],  21,  30 )   -- 무기 강화석 Lv.2
EnchantItemManager:AddEnchantStoneInfo( 130079, ITEM_TYPE["IT_WEAPON"],  31,  40 )   -- 무기 강화석 Lv.3
EnchantItemManager:AddEnchantStoneInfo( 130080, ITEM_TYPE["IT_WEAPON"],  41,  50 )   -- 무기 강화석 Lv.4
EnchantItemManager:AddEnchantStoneInfo( 130081, ITEM_TYPE["IT_WEAPON"],  51,  60 )   -- 무기 강화석 Lv.5
EnchantItemManager:AddEnchantStoneInfo( 130082, ITEM_TYPE["IT_WEAPON"],  61,  70 )   -- 무기 강화석 Lv.6
EnchantItemManager:AddEnchantStoneInfo( 130083, ITEM_TYPE["IT_WEAPON"],  71,  80 )   -- 무기 강화석 Lv.7
EnchantItemManager:AddEnchantStoneInfo( 130084, ITEM_TYPE["IT_WEAPON"],  81,  90 )   -- 무기 강화석 Lv.8
EnchantItemManager:AddEnchantStoneInfo( 130085, ITEM_TYPE["IT_WEAPON"],  91, 100 )   -- 무기 강화석 Lv.9
EnchantItemManager:AddEnchantStoneInfo( 130086, ITEM_TYPE["IT_DEFENCE"],  0,  20 )   -- 방어구 강화석 Lv.1
EnchantItemManager:AddEnchantStoneInfo( 130087, ITEM_TYPE["IT_DEFENCE"], 21,  30 )   -- 방어구 강화석 Lv.2
EnchantItemManager:AddEnchantStoneInfo( 130088, ITEM_TYPE["IT_DEFENCE"], 31,  40 )   -- 방어구 강화석 Lv.3
EnchantItemManager:AddEnchantStoneInfo( 130089, ITEM_TYPE["IT_DEFENCE"], 41,  50 )   -- 방어구 강화석 Lv.4
EnchantItemManager:AddEnchantStoneInfo( 130090, ITEM_TYPE["IT_DEFENCE"], 51,  60 )   -- 방어구 강화석 Lv.5
EnchantItemManager:AddEnchantStoneInfo( 130091, ITEM_TYPE["IT_DEFENCE"], 61,  70 )   -- 방어구 강화석 Lv.6
EnchantItemManager:AddEnchantStoneInfo( 130092, ITEM_TYPE["IT_DEFENCE"], 71,  80 )   -- 방어구 강화석 Lv.7
EnchantItemManager:AddEnchantStoneInfo( 130093, ITEM_TYPE["IT_DEFENCE"], 81,  90 )   -- 방어구 강화석 Lv.8
EnchantItemManager:AddEnchantStoneInfo( 130094, ITEM_TYPE["IT_DEFENCE"], 91, 100  )  -- 방어구 강화석 Lv.9

-- 이벤트 강화석
--#ifdef SERV_EVENT_ENCHANT_STONE_MULTI
-- 중국
EnchantItemManager:AddEventEnchantStoneInfo( 80000450, ITEM_TYPE["IT_WEAPON"],  41,  50 )   -- 이벤트용 무기 강화석 Lv.4
EnchantItemManager:AddEventEnchantStoneInfo( 80000451, ITEM_TYPE["IT_DEFENCE"], 41,  50 )   -- 이벤트용 방어구 강화석 Lv.4
--#endif SERV_EVENT_ENCHANT_STONE_MULTI

-- 강화 보조제
EnchantItemManager:AddSupportMaterialInfo( 206730,  0,  20 ) -- 강화 보조제 Lv.1
EnchantItemManager:AddSupportMaterialInfo( 206740, 21,  30 ) -- 강화 보조제 Lv.2
EnchantItemManager:AddSupportMaterialInfo( 206750, 31,  40 ) -- 강화 보조제 Lv.3
EnchantItemManager:AddSupportMaterialInfo( 206760, 41,  50 ) -- 강화 보조제 Lv.4
EnchantItemManager:AddSupportMaterialInfo( 206770, 51,  60 ) -- 강화 보조제 Lv.5
EnchantItemManager:AddSupportMaterialInfo( 206780, 61,  70 ) -- 강화 보조제 Lv.6
EnchantItemManager:AddSupportMaterialInfo( 206790, 71,  80 ) -- 강화 보조제 Lv.7
EnchantItemManager:AddSupportMaterialInfo( 206800, 81,  90 ) -- 강화 보조제 Lv.8
EnchantItemManager:AddSupportMaterialInfo( 206810, 91, 100 ) -- 강화 보조제 Lv.9

--이벤트 강화 보조제(이벤트용 플루오르 스톤)
EnchantItemManager:AddEventSupportMaterialInfo( 160786,  0,  20 ) -- [코보]플루오르 스톤 Lv.1
EnchantItemManager:AddEventSupportMaterialInfo( 160787, 21,  30 ) -- [코보]플루오르 스톤 Lv.2
EnchantItemManager:AddEventSupportMaterialInfo( 160788, 31,  40 ) -- [코보]플루오르 스톤 Lv.3
EnchantItemManager:AddEventSupportMaterialInfo( 160368, 41,  50 ) -- [코보]플루오르 스톤 Lv.4
EnchantItemManager:AddEventSupportMaterialInfo( 160369, 51,  60 ) -- [코보]플루오르 스톤 Lv.5
EnchantItemManager:AddEventSupportMaterialInfo( 160789, 61,  70 ) -- [코보]플루오르 스톤 Lv.6


--#ifdef SERV_EVENT_SUPPORT_MATERIAL_MULTI

-- 일본
EnchantItemManager:AddEventSupportMaterialInfo( 70001910,   0,  20 ) -- [코보]플루오르 스톤 Lv.1
EnchantItemManager:AddEventSupportMaterialInfo( 70001911,  21,  30 ) -- [코보]플루오르 스톤 Lv.2
EnchantItemManager:AddEventSupportMaterialInfo( 70001912,  31,  40 ) -- [코보]플루오르 스톤 Lv.3
EnchantItemManager:AddEventSupportMaterialInfo( 70001913,  41,  50 ) -- [코보]플루오르 스톤 Lv.4
EnchantItemManager:AddEventSupportMaterialInfo( 70001914,  51,  60 ) -- [코보]플루오르 스톤 Lv.5
EnchantItemManager:AddEventSupportMaterialInfo( 70001915,  61,  70 ) -- [코보]플루오르 스톤 Lv.6
EnchantItemManager:AddEventSupportMaterialInfo( 70001916,  71,  80 ) -- [코보]플루오르 스톤 Lv.7
EnchantItemManager:AddEventSupportMaterialInfo( 70001917,  81,  90 ) -- [코보]플루오르 스톤 Lv.8
EnchantItemManager:AddEventSupportMaterialInfo( 70001918,  91, 100 ) -- [코보]플루오르 스톤 Lv.9

-- 미국
EnchantItemManager:AddEventSupportMaterialInfo( 85001937,   0,  20 ) -- [코보]플루오르 스톤 Lv.1
EnchantItemManager:AddEventSupportMaterialInfo( 85001938,  21,  30 ) -- [코보]플루오르 스톤 Lv.2
EnchantItemManager:AddEventSupportMaterialInfo( 85001939,  31,  40 ) -- [코보]플루오르 스톤 Lv.3
EnchantItemManager:AddEventSupportMaterialInfo( 85001940,  41,  50 ) -- [코보]플루오르 스톤 Lv.4
EnchantItemManager:AddEventSupportMaterialInfo( 85001941,  51,  60 ) -- [코보]플루오르 스톤 Lv.5

-- 중국
EnchantItemManager:AddEventSupportMaterialInfo( 83000140,  0,  20 ) -- 강화 보조제 Lv.1
EnchantItemManager:AddEventSupportMaterialInfo( 83000141, 21,  30 ) -- 강화 보조제 Lv.2
EnchantItemManager:AddEventSupportMaterialInfo( 83000142, 31,  40 ) -- 강화 보조제 Lv.3
EnchantItemManager:AddEventSupportMaterialInfo( 83000143, 41,  50 ) -- 강화 보조제 Lv.4
EnchantItemManager:AddEventSupportMaterialInfo( 83000144, 51,  60 ) -- 강화 보조제 Lv.5
EnchantItemManager:AddEventSupportMaterialInfo( 83000145, 61,  70 ) -- 강화 보조제 Lv.6
EnchantItemManager:AddEventSupportMaterialInfo( 83000146, 71,  80 ) -- 강화 보조제 Lv.7
EnchantItemManager:AddEventSupportMaterialInfo( 83000147, 81,  90 ) -- 강화 보조제 Lv.8
EnchantItemManager:AddEventSupportMaterialInfo( 83000148, 91, 100 ) -- 강화 보조제 Lv.9

EnchantItemManager:AddEventSupportMaterialInfo( 83000190,  0,  20 ) -- 강화 보조제 Lv.1
EnchantItemManager:AddEventSupportMaterialInfo( 83000191, 21,  30 ) -- 강화 보조제 Lv.2
EnchantItemManager:AddEventSupportMaterialInfo( 83000192, 31,  40 ) -- 강화 보조제 Lv.3
EnchantItemManager:AddEventSupportMaterialInfo( 83000193, 41,  50 ) -- 강화 보조제 Lv.4
EnchantItemManager:AddEventSupportMaterialInfo( 83000194, 51,  60 ) -- 강화 보조제 Lv.5
EnchantItemManager:AddEventSupportMaterialInfo( 83000195, 61,  70 ) -- 강화 보조제 Lv.6
EnchantItemManager:AddEventSupportMaterialInfo( 83000196, 71,  80 ) -- 강화 보조제 Lv.7
EnchantItemManager:AddEventSupportMaterialInfo( 83000197, 81,  90 ) -- 강화 보조제 Lv.8
EnchantItemManager:AddEventSupportMaterialInfo( 83000198, 91, 100 ) -- 강화 보조제 Lv.9

-- 대만홍콩
EnchantItemManager:AddEventSupportMaterialInfo( 60005520,  0,  20 )  -- 아리엘의 플루오르 스톤 Lv.1
EnchantItemManager:AddEventSupportMaterialInfo( 60005530,  21,  30 ) -- 아리엘의 플루오르 스톤 Lv.2
EnchantItemManager:AddEventSupportMaterialInfo( 60005540,  31,  40 ) -- 아리엘의 플루오르 스톤 Lv.3
EnchantItemManager:AddEventSupportMaterialInfo( 60005550,  41,  50 ) -- 아리엘의 플루오르 스톤 Lv.4
EnchantItemManager:AddEventSupportMaterialInfo( 60005560,  51,  60 ) -- 아리엘의 플루오르 스톤 Lv.5
EnchantItemManager:AddEventSupportMaterialInfo( 67006182,  61,  70 ) -- 아리엘의 플루오르 스톤 Lv.6

-- 유럽
EnchantItemManager:AddEventSupportMaterialInfo( 85001937,  0,  20 )  -- 아리엘의 플루오르 스톤 Lv.1
EnchantItemManager:AddEventSupportMaterialInfo( 85001938,  21,  30 ) -- 아리엘의 플루오르 스톤 Lv.2
EnchantItemManager:AddEventSupportMaterialInfo( 85001939,  31,  40 ) -- 아리엘의 플루오르 스톤 Lv.3
EnchantItemManager:AddEventSupportMaterialInfo( 85001940,  41,  50 ) -- 아리엘의 플루오르 스톤 Lv.4
EnchantItemManager:AddEventSupportMaterialInfo( 85001941,  51,  60 ) -- 아리엘의 플루오르 스톤 Lv.5

-- 일본
EnchantItemManager:AddEventSupportMaterialInfo( 67006182,  61,  70 ) -- 아리엘의 플루오르 스톤 Lv.6


--#endif SERV_EVENT_SUPPORT_MATERIAL_MULTI

--이벤트 아이템 복구석(이벤트용 축복받은 강화 주문서)
EnchantItemManager:AddEventRestoreItemInfo( 160790, ITEM_TYPE["IT_NONE"],  0,  20 ) -- [코보]축복받은 복원의 주문서 Lv.1
EnchantItemManager:AddEventRestoreItemInfo( 160791, ITEM_TYPE["IT_NONE"], 21,  30 ) -- [코보]축복받은 복원의 주문서 Lv.2
EnchantItemManager:AddEventRestoreItemInfo( 160792, ITEM_TYPE["IT_NONE"], 31,  40 ) -- [코보]축복받은 복원의 주문서 Lv.3
EnchantItemManager:AddEventRestoreItemInfo( 160370, ITEM_TYPE["IT_NONE"], 41,  50 ) -- [코보]축복받은 복원의 주문서 Lv.4
EnchantItemManager:AddEventRestoreItemInfo( 160371, ITEM_TYPE["IT_NONE"], 51,  60 ) -- [코보]축복받은 복원의 주문서 Lv.5
EnchantItemManager:AddEventRestoreItemInfo( 160793, ITEM_TYPE["IT_NONE"], 61,  70 ) -- [코보]축복받은 복원의 주문서 Lv.6


-- #ifdef SERV_EVENT_RESTORE_SCROLL_MULTI
-- 일본
EnchantItemManager:AddEventRestoreItemInfo( 70002800, ITEM_TYPE["IT_NONE"],  0,  20 ) -- [코보]축복받은 복원의 주문서 Lv.1
EnchantItemManager:AddEventRestoreItemInfo( 70002801, ITEM_TYPE["IT_NONE"], 21,  30 ) -- [코보]축복받은 복원의 주문서 Lv.2
EnchantItemManager:AddEventRestoreItemInfo( 70002802, ITEM_TYPE["IT_NONE"], 31,  40 ) -- [코보]축복받은 복원의 주문서 Lv.3
EnchantItemManager:AddEventRestoreItemInfo( 70002803, ITEM_TYPE["IT_NONE"], 41,  50 ) -- [코보]축복받은 복원의 주문서 Lv.4
EnchantItemManager:AddEventRestoreItemInfo( 70002804, ITEM_TYPE["IT_NONE"], 51,  60 ) -- [코보]축복받은 복원의 주문서 Lv.5
EnchantItemManager:AddEventRestoreItemInfo( 70002805, ITEM_TYPE["IT_NONE"], 61,  70 ) -- [코보]축복받은 복원의 주문서 Lv.6
EnchantItemManager:AddEventRestoreItemInfo( 70002806, ITEM_TYPE["IT_NONE"], 71,  80 ) -- [코보]축복받은 복원의 주문서 Lv.7
EnchantItemManager:AddEventRestoreItemInfo( 70002807, ITEM_TYPE["IT_NONE"], 81,  90 ) -- [코보]축복받은 복원의 주문서 Lv.8
EnchantItemManager:AddEventRestoreItemInfo( 70002808, ITEM_TYPE["IT_NONE"], 91, 100 ) -- [코보]축복받은 복원의 주문서 Lv.9
EnchantItemManager:AddEventRestoreItemInfo( 67006183, ITEM_TYPE["IT_NONE"], 61,  70 ) -- 아리엘의 축복받은 복원의 주문서 Lv.6
-- 중국
EnchantItemManager:AddEventRestoreItemInfo( 83000150, ITEM_TYPE["IT_NONE"], 0,  20 ) -- 복구석 Lv.1
EnchantItemManager:AddEventRestoreItemInfo( 83000151, ITEM_TYPE["IT_NONE"],21,  30 ) -- 복구석 Lv.2
EnchantItemManager:AddEventRestoreItemInfo( 83000152, ITEM_TYPE["IT_NONE"],31,  40 ) -- 복구석 Lv.3
EnchantItemManager:AddEventRestoreItemInfo( 83000153, ITEM_TYPE["IT_NONE"],41,  50 ) -- 복구석 Lv.4
EnchantItemManager:AddEventRestoreItemInfo( 83000154, ITEM_TYPE["IT_NONE"],51,  60 ) -- 복구석 Lv.5
EnchantItemManager:AddEventRestoreItemInfo( 83000155, ITEM_TYPE["IT_NONE"],61,  70 ) -- 복구석 Lv.6
EnchantItemManager:AddEventRestoreItemInfo( 83000156, ITEM_TYPE["IT_NONE"],71,  80 ) -- 복구석 Lv.7
EnchantItemManager:AddEventRestoreItemInfo( 83000157, ITEM_TYPE["IT_NONE"],81,  90 ) -- 복구석 Lv.8
EnchantItemManager:AddEventRestoreItemInfo( 83000158, ITEM_TYPE["IT_NONE"],91, 100 ) -- 복구석 Lv.9

EnchantItemManager:AddEventRestoreItemInfo( 83000300, ITEM_TYPE["IT_NONE"], 0,  20 ) -- 루리엘의 축복받은 복원의 주문서 Lv.1
EnchantItemManager:AddEventRestoreItemInfo( 83000301, ITEM_TYPE["IT_NONE"],21,  30 ) -- 루리엘의 축복받은 복원의 주문서 Lv.2
EnchantItemManager:AddEventRestoreItemInfo( 83000302, ITEM_TYPE["IT_NONE"],31,  40 ) -- 루리엘의 축복받은 복원의 주문서 Lv.3
EnchantItemManager:AddEventRestoreItemInfo( 83000303, ITEM_TYPE["IT_NONE"],41,  50 ) -- 루리엘의 축복받은 복원의 주문서 Lv.4
EnchantItemManager:AddEventRestoreItemInfo( 83000304, ITEM_TYPE["IT_NONE"],51,  60 ) -- 루리엘의 축복받은 복원의 주문서 Lv.5
EnchantItemManager:AddEventRestoreItemInfo( 83000305, ITEM_TYPE["IT_NONE"],61,  70 ) -- 루리엘의 축복받은 복원의 주문서 Lv.6
EnchantItemManager:AddEventRestoreItemInfo( 83000306, ITEM_TYPE["IT_NONE"],71,  80 ) -- 루리엘의 축복받은 복원의 주문서 Lv.7
EnchantItemManager:AddEventRestoreItemInfo( 83000307, ITEM_TYPE["IT_NONE"],81,  90 ) -- 루리엘의 축복받은 복원의 주문서 Lv.8
EnchantItemManager:AddEventRestoreItemInfo( 83000308, ITEM_TYPE["IT_NONE"],91, 100 ) -- 루리엘의 축복받은 복원의 주문서 Lv.9

-- 대만 홍콩
EnchantItemManager:AddEventRestoreItemInfo( 67006183, ITEM_TYPE["IT_NONE"],61,	70 ) -- 아리엘의 축복받은 복원의 주문서 Lv.6

-- 유럽
EnchantItemManager:AddEventRestoreItemInfo( 85002096, ITEM_TYPE["IT_NONE"],  0,  20 ) -- 아리엘의 축복받은 복원의 주문서 Lv.1
EnchantItemManager:AddEventRestoreItemInfo( 85002097, ITEM_TYPE["IT_NONE"], 21,  30 ) -- 아리엘의 축복받은 복원의 주문서 Lv.2
EnchantItemManager:AddEventRestoreItemInfo( 85002098, ITEM_TYPE["IT_NONE"], 31,  40 ) -- 아리엘의 축복받은 복원의 주문서 Lv.3
EnchantItemManager:AddEventRestoreItemInfo( 85002099, ITEM_TYPE["IT_NONE"], 41,  50 ) -- 아리엘의 축복받은 복원의 주문서 Lv.4
EnchantItemManager:AddEventRestoreItemInfo( 85002100, ITEM_TYPE["IT_NONE"], 51,  60 ) -- 아리엘의 축복받은 복원의 주문서 Lv.5
-- #endif SERV_EVENT_RESTORE_SCROLL_MULTI

--[[
-- TW/HK 파괴 방지 아이템( 불카누스의 눈물 )
EnchantItemManager:AddDestroyGuardInfo( 75000310,  0,  20 ) -- 불카누스의 눈물 Lv.1
EnchantItemManager:AddDestroyGuardInfo( 75000311, 21,  30 ) -- 불카누스의 눈물 Lv.2
EnchantItemManager:AddDestroyGuardInfo( 75000312, 31,  40 ) -- 불카누스의 눈물 Lv.3
EnchantItemManager:AddDestroyGuardInfo( 75000313, 41,  50 ) -- 불카누스의 눈물 Lv.4
EnchantItemManager:AddDestroyGuardInfo( 75000314, 51,  60 ) -- 불카누스의 눈물 Lv.5
EnchantItemManager:AddDestroyGuardInfo( 75000315, 61,  70 ) -- 불카누스의 눈물 Lv.6
EnchantItemManager:AddDestroyGuardInfo( 75000316, 71,  80 ) -- 불카누스의 눈물 Lv.7
EnchantItemManager:AddDestroyGuardInfo( 75000317, 81,  90 ) -- 불카누스의 눈물 Lv.8
EnchantItemManager:AddDestroyGuardInfo( 75000318, 91, 100 ) -- 불카누스의 눈물 Lv.9

-- TW/HK 강화 확률 증가 아이템( 셀레네의 은빛 가루 )
EnchantItemManager:AddEnchantPlusInfo( 75000300,  0,  20 ) -- 셀레네의 은빛 가루 Lv.1
EnchantItemManager:AddEnchantPlusInfo( 75000301, 21,  30 ) -- 셀레네의 은빛 가루 Lv.2
EnchantItemManager:AddEnchantPlusInfo( 75000302, 31,  40 ) -- 셀레네의 은빛 가루 Lv.3
EnchantItemManager:AddEnchantPlusInfo( 75000303, 41,  50 ) -- 셀레네의 은빛 가루 Lv.4
EnchantItemManager:AddEnchantPlusInfo( 75000304, 51,  60 ) -- 셀레네의 은빛 가루 Lv.5
EnchantItemManager:AddEnchantPlusInfo( 75000305, 61,  70 ) -- 셀레네의 은빛 가루 Lv.6
EnchantItemManager:AddEnchantPlusInfo( 75000306, 71,  80 ) -- 셀레네의 은빛 가루 Lv.7
EnchantItemManager:AddEnchantPlusInfo( 75000307, 81,  90 ) -- 셀레네의 은빛 가루 Lv.8
EnchantItemManager:AddEnchantPlusInfo( 75000308, 91, 100 ) -- 셀레네의 은빛 가루 Lv.9
--]]

-- 사용불가 아이템 복구석
EnchantItemManager:AddRestoreItemInfo( 206880, ITEM_TYPE["IT_NONE"],	 0,  20 ) -- 복구석 Lv.1
EnchantItemManager:AddRestoreItemInfo( 206890, ITEM_TYPE["IT_NONE"],	21,  30 ) -- 복구석 Lv.2
EnchantItemManager:AddRestoreItemInfo( 206900, ITEM_TYPE["IT_NONE"],	31,  40 ) -- 복구석 Lv.3
EnchantItemManager:AddRestoreItemInfo( 206910, ITEM_TYPE["IT_NONE"],	41,  50 ) -- 복구석 Lv.4
EnchantItemManager:AddRestoreItemInfo( 206920, ITEM_TYPE["IT_NONE"],	51,  60 ) -- 복구석 Lv.5
EnchantItemManager:AddRestoreItemInfo( 206930, ITEM_TYPE["IT_NONE"],	61,  70 ) -- 복구석 Lv.6
EnchantItemManager:AddRestoreItemInfo( 206940, ITEM_TYPE["IT_NONE"],	71,  80 ) -- 복구석 Lv.7
EnchantItemManager:AddRestoreItemInfo( 206950, ITEM_TYPE["IT_NONE"],	81,  90 ) -- 복구석 Lv.8
EnchantItemManager:AddRestoreItemInfo( 206960, ITEM_TYPE["IT_NONE"],	91, 100 ) -- 복구석 Lv.9

-- 방어구 전용 복원의 주문서
EnchantItemManager:AddRestoreItemInfo( 130545, ITEM_TYPE["IT_DEFENCE"],  0, 20 ) -- 방어구 전용 복원의 주문서 Lv.1
EnchantItemManager:AddRestoreItemInfo( 130546, ITEM_TYPE["IT_DEFENCE"], 21, 30 ) -- 방어구 전용 복원의 주문서 Lv.2
EnchantItemManager:AddRestoreItemInfo( 130547, ITEM_TYPE["IT_DEFENCE"], 31, 40 ) -- 방어구 전용 복원의 주문서 Lv.3
EnchantItemManager:AddRestoreItemInfo( 130548, ITEM_TYPE["IT_DEFENCE"], 41, 50 ) -- 방어구 전용 복원의 주문서 Lv.4
EnchantItemManager:AddRestoreItemInfo( 160027, ITEM_TYPE["IT_DEFENCE"], 51, 60 ) -- 방어구 전용 축복받은 복원의 주문서 Lv.5
EnchantItemManager:AddRestoreItemInfo( 160028, ITEM_TYPE["IT_DEFENCE"], 61, 70 ) -- 방어구 전용 축복받은 복원의 주문서 Lv.6
EnchantItemManager:AddRestoreItemInfo( 160029, ITEM_TYPE["IT_DEFENCE"], 71, 80 ) -- 방어구 전용 축복받은 복원의 주문서 Lv.7
EnchantItemManager:AddRestoreItemInfo( 160030, ITEM_TYPE["IT_DEFENCE"], 81, 90 ) -- 방어구 전용 축복받은 복원의 주문서 Lv.8



-- 강화 부여 아이템
EnchantItemManager:AddAttachItemInfo( 130147,	{	iItemType = ITEM_TYPE["IT_NONE"],		iEnchantLevel = 5	}	) -- 강화권 Lv.5
EnchantItemManager:AddAttachItemInfo( 130148,	{	iItemType = ITEM_TYPE["IT_NONE"],		iEnchantLevel = 6	}	) -- 강화권 Lv.6
EnchantItemManager:AddAttachItemInfo( 130149,	{	iItemType = ITEM_TYPE["IT_NONE"],		iEnchantLevel = 7	}	) -- 강화권 Lv.7
EnchantItemManager:AddAttachItemInfo( 130150,	{	iItemType = ITEM_TYPE["IT_NONE"],		iEnchantLevel = 8	}	) -- 강화권 Lv.8
EnchantItemManager:AddAttachItemInfo( 130151,	{	iItemType = ITEM_TYPE["IT_NONE"],		iEnchantLevel = 9	}	) -- 강화권 Lv.9
EnchantItemManager:AddAttachItemInfo( 130152,	{	iItemType = ITEM_TYPE["IT_NONE"],		iEnchantLevel = 10	}	) -- 강화권 Lv.10
EnchantItemManager:AddAttachItemInfo( 130543,	{	iItemType = ITEM_TYPE["IT_DEFENCE"],	iEnchantLevel = 5	}	) -- 방어구 전용 강화의 부적 Lv.5
EnchantItemManager:AddAttachItemInfo( 130544,	{	iItemType = ITEM_TYPE["IT_DEFENCE"],	iEnchantLevel = 6	}	) -- 방어구 전용 강화의 부적 Lv.6
EnchantItemManager:AddAttachItemInfo( 132495,	{	iItemType = ITEM_TYPE["IT_NONE"],		iEnchantLevel = 5	}	) -- 강화권 Lv.5_이벤트 용(거래불가)
EnchantItemManager:AddAttachItemInfo( 132496,	{	iItemType = ITEM_TYPE["IT_NONE"],		iEnchantLevel = 6	}	) -- 강화권 Lv.6_이벤트 용(거래불가)
EnchantItemManager:AddAttachItemInfo( 132497,	{	iItemType = ITEM_TYPE["IT_NONE"],		iEnchantLevel = 7	}	) -- 강화권 Lv.7_이벤트 용(거래불가)
EnchantItemManager:AddAttachItemInfo( 132498,	{	iItemType = ITEM_TYPE["IT_NONE"],		iEnchantLevel = 8	}	) -- 강화권 Lv.8_이벤트 용(거래불가)
EnchantItemManager:AddAttachItemInfo( 132499,	{	iItemType = ITEM_TYPE["IT_NONE"],		iEnchantLevel = 9	}	) -- 강화권 Lv.9_이벤트 용(거래불가)
EnchantItemManager:AddAttachItemInfo( 132500,	{	iItemType = ITEM_TYPE["IT_NONE"],		iEnchantLevel = 10	}	) -- 강화권 Lv.10_이벤트 용(거래불가)
EnchantItemManager:AddAttachItemInfo( 85000016,	{	iItemType = ITEM_TYPE["IT_NONE"],		iEnchantLevel = 4	}	) -- 강화권 Lv.4_이벤트 용(거래불가)
EnchantItemManager:AddAttachItemInfo( 127150,	{	iItemType = ITEM_TYPE["IT_NONE"],		iEnchantLevel = 5	}	) -- 돌아온 모험가의 강화 부적 Lv.5(거래불가)
EnchantItemManager:AddAttachItemInfo( 127160,	{	iItemType = ITEM_TYPE["IT_NONE"],		iEnchantLevel = 6	}	) -- 돌아온 모험가의 강화 부적 Lv.6(거래불가)
EnchantItemManager:AddAttachItemInfo( 127170,	{	iItemType = ITEM_TYPE["IT_NONE"],		iEnchantLevel = 7	}	) -- 돌아온 모험가의 강화 부적 Lv.7(거래불가)
EnchantItemManager:AddAttachItemInfo( 135076,	{	iItemType = ITEM_TYPE["IT_NONE"],		iEnchantLevel = 7	}	) -- 아리엘의 강화 부적 Lv.7(거래불가)
EnchantItemManager:AddAttachItemInfo( 85002101,	{	iItemType = ITEM_TYPE["IT_NONE"],		iEnchantLevel = 7	}	) -- 아리엘의 강화 부적 Lv.7(거래불가) 미국

EnchantItemManager:AddAttachItemInfo( 135427,	{	iItemType = ITEM_TYPE["IT_NONE"],		iEnchantLevel = 10,	iMinItemLevel = 1,	iMaxItemLevel = 30	}	) -- [코보] 초급 붉은 기사단 강화의 부적 Lv.10 ( 1 ~ 29레벨 아이템에 사용 가능 )
EnchantItemManager:AddAttachItemInfo( 135428,	{	iItemType = ITEM_TYPE["IT_NONE"],		iEnchantLevel = 10,	iMinItemLevel = 31,	iMaxItemLevel = 40	}	) -- [코보] 상급 붉은 기사단 강화의 부적 Lv.10 ( 30 ~ 40레벨 아이템에 사용 가능 )
EnchantItemManager:AddAttachItemInfo( 90002373,	{	iItemType = ITEM_TYPE["IT_NONE"],		iEnchantLevel = 9,	iMinItemLevel = 1,	iMaxItemLevel = 30	}	) -- 루리엘의 초급 강화의 부적 Lv.9

-- 해외
EnchantItemManager:AddAttachItemInfo( 60005987,	{	iItemType = ITEM_TYPE["IT_NONE"],		iEnchantLevel = 3	}	) -- 강화권 Lv.3_이벤트 용(거래불가)
EnchantItemManager:AddAttachItemInfo( 60004196,	{	iItemType = ITEM_TYPE["IT_NONE"],		iEnchantLevel = 7	}	) -- 강화권 Lv.7_이벤트 용(거래불가/삭제용)
EnchantItemManager:AddAttachItemInfo( 60004197,	{	iItemType = ITEM_TYPE["IT_NONE"],		iEnchantLevel = 8	}	) -- 강화권 Lv.8_이벤트 용(거래불가/삭제용)
EnchantItemManager:AddAttachItemInfo( 60004198,	{	iItemType = ITEM_TYPE["IT_NONE"],		iEnchantLevel = 9	}	) -- 강화권 Lv.9_이벤트 용(거래불가/삭제용)
EnchantItemManager:AddAttachItemInfo( 85002325,	{	iItemType = ITEM_TYPE["IT_DEFENCE"],		iEnchantLevel = 6	}	) -- 아리엘의 방어구 전용 강화의 부적 Lv.6
EnchantItemManager:AddAttachItemInfo( 84000003,	{	iItemType = ITEM_TYPE["IT_NONE"],		iEnchantLevel = 3	}	) -- 강화권 Lv.3_이벤트 용(거래불가)
EnchantItemManager:AddAttachItemInfo( 84000065 ,	{	iItemType = ITEM_TYPE["IT_NONE"],		iEnchantLevel = 4	}	) -- 강화권 Lv.4_이벤트 용(거래불가)
EnchantItemManager:AddAttachItemInfo( 85002326,	{	iItemType = ITEM_TYPE["IT_NONE"],		iEnchantLevel = 6	}	) -- 아리엘의 강화부적 Lv.6
--일본
--EnchantItemManager:AddAttachItemInfo( 60007250,	{	iItemType = ITEM_TYPE["IT_NONE"],		iEnchantLevel = 5	}	) -- 아리엘의 강화 부적 Lv.5(거래불가)
--미국 시작
-- 인피 이벤트
EnchantItemManager:AddAttachItemInfo( 85002810,	{	iItemType = ITEM_TYPE["IT_NONE"],		iEnchantLevel = 5	}	) -- 아리엘의 강화 부적 Lv.5(거래불가)
EnchantItemManager:AddAttachItemInfo( 85002820,	{	iItemType = ITEM_TYPE["IT_NONE"],		iEnchantLevel = 6	}	) -- 아리엘의 강화 부적 Lv.6(거래불가)
EnchantItemManager:AddAttachItemInfo( 85002830,	{	iItemType = ITEM_TYPE["IT_NONE"],		iEnchantLevel = 7	}	) -- 아리엘의 강화 부적 Lv.7(거래불가)
EnchantItemManager:AddAttachItemInfo( 85002840,	{	iItemType = ITEM_TYPE["IT_NONE"],		iEnchantLevel = 8	}	) -- 아리엘의 강화 부적 Lv.8(거래불가)
EnchantItemManager:AddAttachItemInfo( 85002850,	{	iItemType = ITEM_TYPE["IT_NONE"],		iEnchantLevel = 9	}	) -- 아리엘의 강화 부적 Lv.9(거래불가)
EnchantItemManager:AddAttachItemInfo( 85002860,	{	iItemType = ITEM_TYPE["IT_NONE"],		iEnchantLevel = 10	}	) -- 아리엘의 강화 부적 Lv.10(거래불가)
-- 배틀 세라프 이벤트

-- 루리엘의 강화부적 사용하기로 해외팀에서 정한 ID들 
EnchantItemManager:AddAttachItemInfo( 60007250,	{	iItemType = ITEM_TYPE["IT_NONE"],		iEnchantLevel = 5	}	) -- 루리엘의 강화 부적 Lv.5(거래불가)
EnchantItemManager:AddAttachItemInfo( 60007260,	{	iItemType = ITEM_TYPE["IT_NONE"],		iEnchantLevel = 6	}	) -- 루리엘의 강화 부적 Lv.6(거래불가)
EnchantItemManager:AddAttachItemInfo( 60007270,	{	iItemType = ITEM_TYPE["IT_NONE"],		iEnchantLevel = 7	}	) -- 루리엘의 강화 부적 Lv.7(거래불가)
EnchantItemManager:AddAttachItemInfo( 60007280,	{	iItemType = ITEM_TYPE["IT_NONE"],		iEnchantLevel = 8	}	) -- 루리엘의 강화 부적 Lv.8(거래불가)
EnchantItemManager:AddAttachItemInfo( 60007290,	{	iItemType = ITEM_TYPE["IT_NONE"],		iEnchantLevel = 9	}	) -- 루리엘의 강화 부적 Lv.9(거래불가)
EnchantItemManager:AddAttachItemInfo( 60007300,	{	iItemType = ITEM_TYPE["IT_NONE"],		iEnchantLevel = 10	}	) -- 루리엘의 강화 부적 Lv.10(거래불가)



-- 강화에 따른 능력치 변화 ( 강화레벨, 강화 정도 )
EnchantItemManager:SetEnchantRate(  0,  1.00 )
EnchantItemManager:SetEnchantRate(  1,  1.03 )
EnchantItemManager:SetEnchantRate(  2,  1.06 )
EnchantItemManager:SetEnchantRate(  3,  1.09 )
EnchantItemManager:SetEnchantRate(  4,  1.16 )
EnchantItemManager:SetEnchantRate(  5,  1.23 )
EnchantItemManager:SetEnchantRate(  6,  1.30 )
EnchantItemManager:SetEnchantRate(  7,  1.45 )
EnchantItemManager:SetEnchantRate(  8,  1.60 )
EnchantItemManager:SetEnchantRate(  9,  1.75 )
EnchantItemManager:SetEnchantRate( 10,  2.15 )
EnchantItemManager:SetEnchantRate( 11,  2.55 )
EnchantItemManager:SetEnchantRate( 12,  2.95 )
EnchantItemManager:SetEnchantRate( 13,  3.35 )
EnchantItemManager:SetEnchantRate( 14,  3.75 )
EnchantItemManager:SetEnchantRate( 15,  4.25 )
EnchantItemManager:SetEnchantRate( 16,  4.75 )
EnchantItemManager:SetEnchantRate( 17,  5.25 )
EnchantItemManager:SetEnchantRate( 18,  5.75 )
EnchantItemManager:SetEnchantRate( 19,  6.75 )
EnchantItemManager:SetEnchantRate( 20,  8.75 )

-- 강화 성공률 ( 강화레벨, 성공, 변화 없음, 1단계 하락, 초기화, 깨짐)
-- 해외팀 강화 확률 수정 ( 대만 제외 )

-- GameSysVal.lua 에 SetEnchantEventStartTime , SetEnchantEventEndTime 의 조건이 만족하면 해당 성공률을 참고한다.
-- 이벤트 강화 성공률 ( 강화레벨, 성공, 변화 없음, 1단계 하락, 초기화, 깨짐)
EnchantItemManager:SetEnchantProbability_Event(  1, { Up1 = 100, NoChange =   0, Down1 =  0, DownTo0 =  0, Break =  0   } )
EnchantItemManager:SetEnchantProbability_Event(  2, { Up1 = 100, NoChange =   0, Down1 =  0, DownTo0 =  0, Break =  0   } )
EnchantItemManager:SetEnchantProbability_Event(  3, { Up1 =  80, NoChange =  20, Down1 =  0, DownTo0 =  0, Break =  0   } )
EnchantItemManager:SetEnchantProbability_Event(  4, { Up1 =  60, NoChange =  40, Down1 =  0, DownTo0 =  0, Break =  0   } )
EnchantItemManager:SetEnchantProbability_Event(  5, { Up1 =  20, NoChange =  50, Down1 = 30, DownTo0 =  0, Break =  0   } )
EnchantItemManager:SetEnchantProbability_Event(  6, { Up1 =  10, NoChange =  40, Down1 = 50, DownTo0 =  0, Break =  0   } )
EnchantItemManager:SetEnchantProbability_Event(  7, { Up1 =  10, NoChange =  30, Down1 = 40, DownTo0 = 20, Break =  0   } )
EnchantItemManager:SetEnchantProbability_Event(  8, { Up1 =   5, NoChange =  25, Down1 = 30, DownTo0 = 40, Break =  0   } )
EnchantItemManager:SetEnchantProbability_Event(  9, { Up1 =   2, NoChange =  30, Down1 = 28, DownTo0 = 40, Break =  0   } )
EnchantItemManager:SetEnchantProbability_Event( 10, { Up1 =   1, NoChange =  32, Down1 = 27, DownTo0 = 40, Break =  0	} )
EnchantItemManager:SetEnchantProbability_Event( 11, { Up1 = 0.7, NoChange =  42.3, Down1 = 27, DownTo0 = 30, Break =  0	} )
EnchantItemManager:SetEnchantProbability_Event( 12, { Up1 =   1, NoChange =  32, Down1 = 27, DownTo0 = 40, Break = 0	} )
EnchantItemManager:SetEnchantProbability_Event( 13, { Up1 =   0, NoChange =  33, Down1 = 27, DownTo0 = 40, Break = 0   	} )
EnchantItemManager:SetEnchantProbability_Event( 14, { Up1 =   1, NoChange =  32, Down1 = 27, DownTo0 = 40, Break = 0   	} )
EnchantItemManager:SetEnchantProbability_Event( 15, { Up1 = 0.5, NoChange =  32.5, Down1 = 27, DownTo0 = 40, Break = 0 	} )
EnchantItemManager:SetEnchantProbability_Event( 16, { Up1 = 0.5, NoChange =  32.5, Down1 = 27, DownTo0 = 40, Break = 0 	} )
EnchantItemManager:SetEnchantProbability_Event( 17, { Up1 = 0.3, NoChange =  32.7, Down1 = 27, DownTo0 = 40, Break = 0 	} )
EnchantItemManager:SetEnchantProbability_Event( 18, { Up1 = 0.3, NoChange =  32.7, Down1 = 27, DownTo0 = 40, Break = 0 	} )
EnchantItemManager:SetEnchantProbability_Event( 19, { Up1 = 0.1, NoChange =  32.9, Down1 = 27, DownTo0 = 40, Break = 0 	} )
EnchantItemManager:SetEnchantProbability_Event( 20, { Up1 =   0, NoChange =  33, Down1 = 27, DownTo0 = 40, Break = 0    } )

--[[
-- TW/HK 강화 확률 증가 아이템 사용시의 강화 성공률 ( 강화레벨, 성공, 변화 없음, 1단계 하락, 초기화, 깨짐)
EnchantItemManager:SetEnchantPlusProbability(	1	, { Up1 =	100	, NoChange =	0	, Down1 =	0	, DownTo0 =	0	, Break =	0	} )
EnchantItemManager:SetEnchantPlusProbability(	2	, { Up1 =	98	, NoChange =	2	, Down1 =	0	, DownTo0 =	0	, Break =	0	} )
EnchantItemManager:SetEnchantPlusProbability(	3	, { Up1 =	85	, NoChange =	15	, Down1 =	0	, DownTo0 =	0	, Break =	0	} )
EnchantItemManager:SetEnchantPlusProbability(	4	, { Up1 =	65	, NoChange =	20	, Down1 =	15	, DownTo0 =	0	, Break =	0	} )
EnchantItemManager:SetEnchantPlusProbability(	5	, { Up1 =	45	, NoChange =	25	, Down1 =	30	, DownTo0 =	0	, Break =	0	} )
EnchantItemManager:SetEnchantPlusProbability(	6	, { Up1 =	31	, NoChange =	25	, Down1 =	44	, DownTo0 =	0	, Break =	0	} )
EnchantItemManager:SetEnchantPlusProbability(	7	, { Up1 =	15	, NoChange =	18	, Down1 =	27	, DownTo0 =	22	, Break =	18	} )
EnchantItemManager:SetEnchantPlusProbability(	8	, { Up1 =	6	, NoChange =	18	, Down1 =	31	, DownTo0 =	25	, Break =	20	} )
EnchantItemManager:SetEnchantPlusProbability(	9	, { Up1 =	2.2	, NoChange =	19	, Down1 =	32	, DownTo0 =	24	, Break =	22.8	} )
EnchantItemManager:SetEnchantPlusProbability(	10	, { Up1 =	0.55	, NoChange =	7	, Down1 =	27	, DownTo0 =	40	, Break =	25.45	} )
EnchantItemManager:SetEnchantPlusProbability(	11	, { Up1 =	0.11	, NoChange =	7	, Down1 =	27	, DownTo0 =	30	, Break =	35.89	} )
EnchantItemManager:SetEnchantPlusProbability(	12	, { Up1 =	0	, NoChange =	8	, Down1 =	27	, DownTo0 =	40	, Break =	25	} )
EnchantItemManager:SetEnchantPlusProbability(	13	, { Up1 =	0	, NoChange =	8	, Down1 =	27	, DownTo0 =	40	, Break =	25	} )
EnchantItemManager:SetEnchantPlusProbability(	14	, { Up1 =	0.1	, NoChange =	7	, Down1 =	27	, DownTo0 =	30	, Break =	35.9	} )
EnchantItemManager:SetEnchantPlusProbability(	15	, { Up1 =	0.1	, NoChange =	7	, Down1 =	27	, DownTo0 =	30	, Break =	35.9	} )
EnchantItemManager:SetEnchantPlusProbability(	16	, { Up1 =	0.1	, NoChange =	7	, Down1 =	27	, DownTo0 =	30	, Break =	35.9	} )
EnchantItemManager:SetEnchantPlusProbability(	17	, { Up1 =	0.1	, NoChange =	7	, Down1 =	27	, DownTo0 =	30	, Break =	35.9	} )
EnchantItemManager:SetEnchantPlusProbability(	18	, { Up1 =	0.1	, NoChange =	7	, Down1 =	27	, DownTo0 =	30	, Break =	35.9	} )
EnchantItemManager:SetEnchantPlusProbability(	19	, { Up1 =	0.1	, NoChange =	7	, Down1 =	27	, DownTo0 =	30	, Break =	35.9	} )
EnchantItemManager:SetEnchantPlusProbability(	20	, { Up1 =	0.1	, NoChange =	7	, Down1 =	27	, DownTo0 =	30	, Break =	35.9	} )
--]]

-- 희귀한 강화 성공률 ( 강화레벨, 성공, 변화 없음, 1단계 하락, 초기화, 깨짐)
EnchantItemManager:SetEnchantRareProbability( 1, { Up1 =100, NoChange =  0, Down1 =  0, DownTo0 =  0, Break =  0 } )
EnchantItemManager:SetEnchantRareProbability( 2, { Up1 = 80, NoChange = 20, Down1 =  0, DownTo0 =  0, Break =  0 } )
EnchantItemManager:SetEnchantRareProbability( 3, { Up1 = 60, NoChange = 40, Down1 =  0, DownTo0 =  0, Break =  0 } )
EnchantItemManager:SetEnchantRareProbability( 4, { Up1 = 30, NoChange = 40, Down1 = 30, DownTo0 =  0, Break =  0 } )
EnchantItemManager:SetEnchantRareProbability( 5, { Up1 = 30, NoChange = 40, Down1 = 30, DownTo0 =  0, Break =  0 } )
EnchantItemManager:SetEnchantRareProbability( 6, { Up1 = 30, NoChange = 40, Down1 = 30, DownTo0 =  0, Break =  0 } )
EnchantItemManager:SetEnchantRareProbability( 7, { Up1 = 20, NoChange = 30, Down1 = 20, DownTo0 = 20, Break = 10 } )	--10
EnchantItemManager:SetEnchantRareProbability( 8, { Up1 = 20, NoChange = 30, Down1 = 20, DownTo0 = 20, Break = 10 } )	--10
EnchantItemManager:SetEnchantRareProbability( 9, { Up1 = 10, NoChange = 30, Down1 = 20, DownTo0 = 20, Break = 20 } )	--20


-- 이벤트
-- 드롭에 대한 랜덤 강화 테이블 ( 강화레벨, 확률 )
EnchantItemManager:AddDropRandomEnchantInfo( 0,	60.505	)
EnchantItemManager:AddDropRandomEnchantInfo( 1,	15	)
EnchantItemManager:AddDropRandomEnchantInfo( 2,	8	)
EnchantItemManager:AddDropRandomEnchantInfo( 3,	6	)
EnchantItemManager:AddDropRandomEnchantInfo( 4,	4.3	)
EnchantItemManager:AddDropRandomEnchantInfo( 5,	1.2	)
EnchantItemManager:AddDropRandomEnchantInfo( 6,	3.1	)
EnchantItemManager:AddDropRandomEnchantInfo( 7,	1.87	)
EnchantItemManager:AddDropRandomEnchantInfo( 8,	0.02	)
EnchantItemManager:AddDropRandomEnchantInfo( 9,	0.00499	)	-- 부동 소수점 오류로 인해 0.005에서 깎음


-- 큐브에 대한 랜덤 강화 테이블 ( 강화레벨, 확률 )
EnchantItemManager:AddCubeRandomEnchantInfo( 0,	71.368	)
EnchantItemManager:AddCubeRandomEnchantInfo( 1,	12.6	)
EnchantItemManager:AddCubeRandomEnchantInfo( 2,	6.4	)
EnchantItemManager:AddCubeRandomEnchantInfo( 3,	4.3	)
EnchantItemManager:AddCubeRandomEnchantInfo( 4,	1.47	)
EnchantItemManager:AddCubeRandomEnchantInfo( 5,	0.937	)
EnchantItemManager:AddCubeRandomEnchantInfo( 6,	2.4	)
EnchantItemManager:AddCubeRandomEnchantInfo( 7,	0.5	)
EnchantItemManager:AddCubeRandomEnchantInfo( 8,	0.02	)
EnchantItemManager:AddCubeRandomEnchantInfo( 9,	0.005	)


--[[
-- 시스템
-- 드롭에 대한 랜덤 강화 테이블 ( 강화레벨, 확률 )
EnchantItemManager:AddDropRandomEnchantInfo( 0,	65	)
EnchantItemManager:AddDropRandomEnchantInfo( 1,	15	)
EnchantItemManager:AddDropRandomEnchantInfo( 2,	8	)
EnchantItemManager:AddDropRandomEnchantInfo( 3,	6	)
EnchantItemManager:AddDropRandomEnchantInfo( 4,	4.3	)
EnchantItemManager:AddDropRandomEnchantInfo( 5,	1.2	)
EnchantItemManager:AddDropRandomEnchantInfo( 6,	0.31	)
EnchantItemManager:AddDropRandomEnchantInfo( 7,	0.187	)
EnchantItemManager:AddDropRandomEnchantInfo( 8,	0.002	)
EnchantItemManager:AddDropRandomEnchantInfo( 9,	0.001	)


-- 큐브에 대한 랜덤 강화 테이블 ( 강화레벨, 확률 )
EnchantItemManager:AddCubeRandomEnchantInfo( 0,	74	)
EnchantItemManager:AddCubeRandomEnchantInfo( 1,	12.6	)
EnchantItemManager:AddCubeRandomEnchantInfo( 2,	6.4	)
EnchantItemManager:AddCubeRandomEnchantInfo( 3,	4.3	)
EnchantItemManager:AddCubeRandomEnchantInfo( 4,	1.47	)
EnchantItemManager:AddCubeRandomEnchantInfo( 5,	0.937	)
EnchantItemManager:AddCubeRandomEnchantInfo( 6,	0.24	)
EnchantItemManager:AddCubeRandomEnchantInfo( 7,	0.05	)
EnchantItemManager:AddCubeRandomEnchantInfo( 8,	0.002	)
EnchantItemManager:AddCubeRandomEnchantInfo( 9,	0.000999	)	-- 부동 소수점 오류로 인해 0.001에서 깎음
--]]











-- REBALANCE_ENHANCEMENT_CURVE: Modern Gacha Standard (Zero Destruction, Zero Reset)
EnchantItemManager:SetEnchantProbability(  1, { Up1 = 100, NoChange =   0, Down1 =  0, DownTo0 = 0, Break = 0 } )
EnchantItemManager:SetEnchantProbability(  2, { Up1 = 100, NoChange =   0, Down1 =  0, DownTo0 = 0, Break = 0 } )
EnchantItemManager:SetEnchantProbability(  3, { Up1 =  80, NoChange =  20, Down1 =  0, DownTo0 = 0, Break = 0 } )
EnchantItemManager:SetEnchantProbability(  4, { Up1 =  60, NoChange =  40, Down1 =  0, DownTo0 = 0, Break = 0 } )
EnchantItemManager:SetEnchantProbability(  5, { Up1 =  40, NoChange =  60, Down1 =  0, DownTo0 = 0, Break = 0 } )
EnchantItemManager:SetEnchantProbability(  6, { Up1 =  30, NoChange =  70, Down1 =  0, DownTo0 = 0, Break = 0 } )
EnchantItemManager:SetEnchantProbability(  7, { Up1 =  35, NoChange =  45, Down1 = 20, DownTo0 = 0, Break = 0 } )
EnchantItemManager:SetEnchantProbability(  8, { Up1 =  25, NoChange =  50, Down1 = 25, DownTo0 = 0, Break = 0 } )
EnchantItemManager:SetEnchantProbability(  9, { Up1 =  15, NoChange =  55, Down1 = 30, DownTo0 = 0, Break = 0 } )
EnchantItemManager:SetEnchantProbability( 10, { Up1 =  10, NoChange =  60, Down1 = 30, DownTo0 = 0, Break = 0 } )
EnchantItemManager:SetEnchantProbability( 11, { Up1 =   5, NoChange =  65, Down1 = 30, DownTo0 = 0, Break = 0 } )
EnchantItemManager:SetEnchantProbability( 12, { Up1 =   2, NoChange =  68, Down1 = 30, DownTo0 = 0, Break = 0 } )

EnchantItemManager:SetEnchantProbability_Event(  1, { Up1 = 100, NoChange =   0, Down1 =  0, DownTo0 = 0, Break = 0 } )
EnchantItemManager:SetEnchantProbability_Event(  2, { Up1 = 100, NoChange =   0, Down1 =  0, DownTo0 = 0, Break = 0 } )
EnchantItemManager:SetEnchantProbability_Event(  3, { Up1 =  80, NoChange =  20, Down1 =  0, DownTo0 = 0, Break = 0 } )
EnchantItemManager:SetEnchantProbability_Event(  4, { Up1 =  60, NoChange =  40, Down1 =  0, DownTo0 = 0, Break = 0 } )
EnchantItemManager:SetEnchantProbability_Event(  5, { Up1 =  40, NoChange =  60, Down1 =  0, DownTo0 = 0, Break = 0 } )
EnchantItemManager:SetEnchantProbability_Event(  6, { Up1 =  30, NoChange =  70, Down1 =  0, DownTo0 = 0, Break = 0 } )
EnchantItemManager:SetEnchantProbability_Event(  7, { Up1 =  35, NoChange =  45, Down1 = 20, DownTo0 = 0, Break = 0 } )
EnchantItemManager:SetEnchantProbability_Event(  8, { Up1 =  25, NoChange =  50, Down1 = 25, DownTo0 = 0, Break = 0 } )
EnchantItemManager:SetEnchantProbability_Event(  9, { Up1 =  15, NoChange =  55, Down1 = 30, DownTo0 = 0, Break = 0 } )
EnchantItemManager:SetEnchantProbability_Event( 10, { Up1 =  10, NoChange =  60, Down1 = 30, DownTo0 = 0, Break = 0 } )
EnchantItemManager:SetEnchantProbability_Event( 11, { Up1 =   5, NoChange =  65, Down1 = 30, DownTo0 = 0, Break = 0 } )
EnchantItemManager:SetEnchantProbability_Event( 12, { Up1 =   2, NoChange =  68, Down1 = 30, DownTo0 = 0, Break = 0 } )
-- END_REBALANCE_ENHANCEMENT_CURVE
