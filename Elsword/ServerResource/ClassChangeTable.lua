-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요
--ClassChangeTable:SetClassGroupID( 직업 그룹, 직업 )
--ClassChangeTable:SetClassGroupID( 1, UNIT_CLASS["UC_ELSWORD_KNIGHT"] )

--[[  Placebo , 2011.12.4
직업 그룹 첫째 자리 : 캐릭터 구분  (1: 엘초딩, 2: 아르메, 3: 리르짜응, 4: 기낌이, 5: 이브, 6: 매미없는 청, 7: 아직 안나온 아라, 8:엘리thㅣ스)
직업 그룹 둘째 자리 : 1/2차 전직 구분  ( 1: 1차, 2: 2차 )   3차 이상 가면 다음 날 출근에 지장 되니까 2차에서 끝내야함. 그래서 3은 없다.

1차 전직 업데이트 시 각 그룹 별, 끝에서 2번째 행 주석을 지우고 활성화
2차 전직 추가 시 각 캐릭터 그룹 별 가장 아래 2행을 수정해야 함. (1차 임시 행을 삭제하고 주석 행을 활성화) 

작업 그룹들
ClassChangeTable.lua   
ClassChangeSkill.lua   
ClassChangeQuest.lua   
ClassChangeMemo.lua
ClassChangeItem.lua

2012.07.06 danggunne	스크립트 내용 새로 작성

]]

--엘소드 1차 전직
ClassChangeTable:SetClassGroupID(11, UNIT_CLASS["UC_ELSWORD_KNIGHT"])
ClassChangeTable:SetClassGroupID(11, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"])
ClassChangeTable:SetClassGroupID(11, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"])
--엘소드 2차 전직
ClassChangeTable:SetClassGroupID(12, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"])
ClassChangeTable:SetClassGroupID(12, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"])
ClassChangeTable:SetClassGroupID(12, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"])

--아이샤 1차 전직
ClassChangeTable:SetClassGroupID(21, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"])
ClassChangeTable:SetClassGroupID(21, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"])
ClassChangeTable:SetClassGroupID(21, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"])
--아이샤 2차 전직
ClassChangeTable:SetClassGroupID(22, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"])
ClassChangeTable:SetClassGroupID(22, UNIT_CLASS["UC_ARME_VOID_PRINCESS"])
ClassChangeTable:SetClassGroupID(22, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"])

--레나 1차 전직
ClassChangeTable:SetClassGroupID(31, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"])
ClassChangeTable:SetClassGroupID(31, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"])
ClassChangeTable:SetClassGroupID(31, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"])
--레나 2차 전직
ClassChangeTable:SetClassGroupID(32, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"])
ClassChangeTable:SetClassGroupID(32, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"])
ClassChangeTable:SetClassGroupID(32, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"])

--레이븐 1차 전직
ClassChangeTable:SetClassGroupID(41, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"])
ClassChangeTable:SetClassGroupID(41, UNIT_CLASS["UC_RAVEN_OVER_TAKER"])
ClassChangeTable:SetClassGroupID(41, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"])
--레이븐 2차 전직
ClassChangeTable:SetClassGroupID(42, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"])
ClassChangeTable:SetClassGroupID(42, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"])
ClassChangeTable:SetClassGroupID(42, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"])

--이브 1차 전직
ClassChangeTable:SetClassGroupID(51, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"])
ClassChangeTable:SetClassGroupID(51, UNIT_CLASS["UC_EVE_ARCHITECTURE"])
ClassChangeTable:SetClassGroupID(51, UNIT_CLASS["UC_EVE_ELECTRA"])
--이브 2차 전직
ClassChangeTable:SetClassGroupID(52, UNIT_CLASS["UC_EVE_CODE_NEMESIS"])
ClassChangeTable:SetClassGroupID(52, UNIT_CLASS["UC_EVE_CODE_EMPRESS"])
ClassChangeTable:SetClassGroupID(52, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"])

--청 1차 전직
ClassChangeTable:SetClassGroupID(61, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"])
ClassChangeTable:SetClassGroupID(61, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"])
ClassChangeTable:SetClassGroupID(61, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"])
--청 2차 전직
ClassChangeTable:SetClassGroupID(62, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"])
ClassChangeTable:SetClassGroupID(62, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"])
ClassChangeTable:SetClassGroupID(62, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"])

--아라 1차 전직
ClassChangeTable:SetClassGroupID(71, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"])	--//아라 1차 소선(2013.8.6. 이승헌)
ClassChangeTable:SetClassGroupID(71, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"])	--//아라 1차 소마(2013.8.6. 이승헌)
--아라 2차 전직
ClassChangeTable:SetClassGroupID(72, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"])	--//아라 2차 제천(2013.8.6. 이승헌)
ClassChangeTable:SetClassGroupID(72, UNIT_CLASS["UC_ARA_YAMA_RAJA"])		--//아라 2차 명왕(2013.8.6. 이승헌)

--엘리시스 1차 전직
ClassChangeTable:SetClassGroupID(81, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"])
ClassChangeTable:SetClassGroupID(81, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"])
--엘리시스 2차 전직
ClassChangeTable:SetClassGroupID(82, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"])
ClassChangeTable:SetClassGroupID(82, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"])
