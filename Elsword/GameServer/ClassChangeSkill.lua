-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요
--ClassChangeTable:SetClassChange_Skill( 스킬 그룹, 스킬ID, 직업 )
--ClassChangeTable:SetClassChange_Skill( 1, 1450, UNIT_CLASS["UC_ELSWORD_KNIGHT"] )   -- 예제
--[[
2011.12.4 placebo 초안 처리

1 : 초급 기술 훈련퀘스트로 획득하는 스킬
2 : 중급 기술 훈련퀘스트로 획득하는 스킬
3 : 상급 기술 훈련퀘스트로 획득하는 스킬
4 : 고급 기술 훈련퀘스트로 획득하는 스킬


2011.12.26 placebo 예외처리 추가 필요사항 발견 수정 : 1차 전직에서도 4번 그룹의 스킬을 검색하도록 추가함
(12.29일 패치 이전 상태에서는 
--1차 전직들에서 4번 그룹(고급 스킬) 서칭하게 추가함. 12.26 라는 주석 아래 3행을 참조하세요

2012.07.06 danggunne	스크립트 내용 새로 작성

]]

--소드 나이트
ClassChangeTable:SetClassChange_Skill(1,1209, UNIT_CLASS["UC_ELSWORD_KNIGHT"])
ClassChangeTable:SetClassChange_Skill(2,1005, UNIT_CLASS["UC_ELSWORD_KNIGHT"])
ClassChangeTable:SetClassChange_Skill(3,1213, UNIT_CLASS["UC_ELSWORD_KNIGHT"])
ClassChangeTable:SetClassChange_Skill(4,1404, UNIT_CLASS["UC_ELSWORD_KNIGHT"])--필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
ClassChangeTable:SetClassChange_Skill(5,1600, UNIT_CLASS["UC_ELSWORD_KNIGHT"])--필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
--로드 나이트
ClassChangeTable:SetClassChange_Skill(1,1209, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"])
ClassChangeTable:SetClassChange_Skill(2,1005, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"])
ClassChangeTable:SetClassChange_Skill(3,1213, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"])
ClassChangeTable:SetClassChange_Skill(4,1404, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"])
ClassChangeTable:SetClassChange_Skill(5,1600, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"])

--매직 나이트
ClassChangeTable:SetClassChange_Skill(1,1214, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"])
ClassChangeTable:SetClassChange_Skill(2,1012, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"])
ClassChangeTable:SetClassChange_Skill(3,1220, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"])
ClassChangeTable:SetClassChange_Skill(4,1409, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"])--필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
ClassChangeTable:SetClassChange_Skill(5,1601, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"])--필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
--룬 슬레이어
ClassChangeTable:SetClassChange_Skill(1,1214, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"])
ClassChangeTable:SetClassChange_Skill(2,1012, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"])
ClassChangeTable:SetClassChange_Skill(3,1220, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"])
ClassChangeTable:SetClassChange_Skill(4,1409, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"])
ClassChangeTable:SetClassChange_Skill(5,1601, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"])

--시스 나이트
ClassChangeTable:SetClassChange_Skill(1,1223, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"])
ClassChangeTable:SetClassChange_Skill(2,1016, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"])
ClassChangeTable:SetClassChange_Skill(3,1225, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"])
ClassChangeTable:SetClassChange_Skill(4,1414, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"])--필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
ClassChangeTable:SetClassChange_Skill(5,1602, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"])--필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
--인피니티 소드
ClassChangeTable:SetClassChange_Skill(1,1223, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"])
ClassChangeTable:SetClassChange_Skill(2,1016, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"])
ClassChangeTable:SetClassChange_Skill(3,1225, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"])
ClassChangeTable:SetClassChange_Skill(4,1414, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"])
ClassChangeTable:SetClassChange_Skill(5,1602, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"])

--하이 매지션
ClassChangeTable:SetClassChange_Skill(1,2006, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"])
ClassChangeTable:SetClassChange_Skill(2,2005, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"])
ClassChangeTable:SetClassChange_Skill(3,2211, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"])
ClassChangeTable:SetClassChange_Skill(4,2403, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"])--필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
ClassChangeTable:SetClassChange_Skill(5,2600, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"])--필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
--엘리멘탈 마스터
ClassChangeTable:SetClassChange_Skill(1,2006, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"])
ClassChangeTable:SetClassChange_Skill(2,2005, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"])
ClassChangeTable:SetClassChange_Skill(3,2211, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"])
ClassChangeTable:SetClassChange_Skill(4,2403, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"])
ClassChangeTable:SetClassChange_Skill(5,2600, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"])

--다크 매지션
ClassChangeTable:SetClassChange_Skill(1,2407, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"])
ClassChangeTable:SetClassChange_Skill(2,2011, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"])
ClassChangeTable:SetClassChange_Skill(3,2217, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"])
ClassChangeTable:SetClassChange_Skill(4,2408, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"])--필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
ClassChangeTable:SetClassChange_Skill(5,2601, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"])--필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
--보이드 프린세스
ClassChangeTable:SetClassChange_Skill(1,2407, UNIT_CLASS["UC_ARME_VOID_PRINCESS"])
ClassChangeTable:SetClassChange_Skill(2,2011, UNIT_CLASS["UC_ARME_VOID_PRINCESS"])
ClassChangeTable:SetClassChange_Skill(3,2217, UNIT_CLASS["UC_ARME_VOID_PRINCESS"])
ClassChangeTable:SetClassChange_Skill(4,2408, UNIT_CLASS["UC_ARME_VOID_PRINCESS"])
ClassChangeTable:SetClassChange_Skill(5,2601, UNIT_CLASS["UC_ARME_VOID_PRINCESS"])

--배틀 매지션
ClassChangeTable:SetClassChange_Skill(1,2414, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"])
ClassChangeTable:SetClassChange_Skill(2,2016, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"])
ClassChangeTable:SetClassChange_Skill(3,2224, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"])
ClassChangeTable:SetClassChange_Skill(4,2416, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"])--필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로) : 2012-07-24 오류 발견, 1525로 되어 있었음
ClassChangeTable:SetClassChange_Skill(5,2602, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"])--필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
--디멘션 위치
ClassChangeTable:SetClassChange_Skill(1,2414, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"])
ClassChangeTable:SetClassChange_Skill(2,2016, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"])
ClassChangeTable:SetClassChange_Skill(3,2224, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"])
ClassChangeTable:SetClassChange_Skill(4,2416, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"])--2012-07-24 오류 발견, 1525로 되어 있었음
ClassChangeTable:SetClassChange_Skill(5,2602, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"])

--컴뱃 레인저
ClassChangeTable:SetClassChange_Skill(1,3208, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"])
ClassChangeTable:SetClassChange_Skill(2,3006, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"])
ClassChangeTable:SetClassChange_Skill(3,3211, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"])
ClassChangeTable:SetClassChange_Skill(4,3403, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"])--필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
ClassChangeTable:SetClassChange_Skill(5,3600, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"])--필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
--윈드 스니커
ClassChangeTable:SetClassChange_Skill(1,3208, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"])
ClassChangeTable:SetClassChange_Skill(2,3006, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"])
ClassChangeTable:SetClassChange_Skill(3,3211, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"])
ClassChangeTable:SetClassChange_Skill(4,3403, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"])
ClassChangeTable:SetClassChange_Skill(5,3600, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"])

--스나이핑 레인저
ClassChangeTable:SetClassChange_Skill(1,3214, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"])
ClassChangeTable:SetClassChange_Skill(2,3013, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"])
ClassChangeTable:SetClassChange_Skill(3,3222, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"])
ClassChangeTable:SetClassChange_Skill(4,3409, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"])--필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
ClassChangeTable:SetClassChange_Skill(5,3601, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"])--필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
--그랜드 아처
ClassChangeTable:SetClassChange_Skill(1,3214, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"])
ClassChangeTable:SetClassChange_Skill(2,3013, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"])
ClassChangeTable:SetClassChange_Skill(3,3222, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"])
ClassChangeTable:SetClassChange_Skill(4,3409, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"])
ClassChangeTable:SetClassChange_Skill(5,3601, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"])

--트래핑 레인저
ClassChangeTable:SetClassChange_Skill(1,3225, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"])
ClassChangeTable:SetClassChange_Skill(2,3019, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"])
ClassChangeTable:SetClassChange_Skill(3,3017, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"])
ClassChangeTable:SetClassChange_Skill(4,3231, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"])--필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
ClassChangeTable:SetClassChange_Skill(5,3602, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"])--필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
--나이트 와처
ClassChangeTable:SetClassChange_Skill(1,3225, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"])
ClassChangeTable:SetClassChange_Skill(2,3019, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"])
ClassChangeTable:SetClassChange_Skill(3,3017, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"])
ClassChangeTable:SetClassChange_Skill(4,3231, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"])
ClassChangeTable:SetClassChange_Skill(5,3602, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"])

--소드 테이커
ClassChangeTable:SetClassChange_Skill(1,4005, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"])
ClassChangeTable:SetClassChange_Skill(2,4006, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"])
ClassChangeTable:SetClassChange_Skill(3,4210, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"])
ClassChangeTable:SetClassChange_Skill(4,4407, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"])--필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
ClassChangeTable:SetClassChange_Skill(5,4600, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"])--필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
--블레이드 마스터
ClassChangeTable:SetClassChange_Skill(1,4005, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"])
ClassChangeTable:SetClassChange_Skill(2,4006, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"])
ClassChangeTable:SetClassChange_Skill(3,4210, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"])
ClassChangeTable:SetClassChange_Skill(4,4407, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"])
ClassChangeTable:SetClassChange_Skill(5,4600, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"])

--오버 테이커
ClassChangeTable:SetClassChange_Skill(1,4215, UNIT_CLASS["UC_RAVEN_OVER_TAKER"])
ClassChangeTable:SetClassChange_Skill(2,4013, UNIT_CLASS["UC_RAVEN_OVER_TAKER"])
ClassChangeTable:SetClassChange_Skill(3,4410, UNIT_CLASS["UC_RAVEN_OVER_TAKER"])
ClassChangeTable:SetClassChange_Skill(4,4409, UNIT_CLASS["UC_RAVEN_OVER_TAKER"])--필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
ClassChangeTable:SetClassChange_Skill(5,4601, UNIT_CLASS["UC_RAVEN_OVER_TAKER"])--필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
--레크리스 피스트
ClassChangeTable:SetClassChange_Skill(1,4215, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"])
ClassChangeTable:SetClassChange_Skill(2,4013, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"])
ClassChangeTable:SetClassChange_Skill(3,4410, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"])
ClassChangeTable:SetClassChange_Skill(4,4409, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"])
ClassChangeTable:SetClassChange_Skill(5,4601, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"])

--웨폰 테이커
ClassChangeTable:SetClassChange_Skill(1,4220, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"])
ClassChangeTable:SetClassChange_Skill(2,4020, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"])
ClassChangeTable:SetClassChange_Skill(3,4021, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"])
ClassChangeTable:SetClassChange_Skill(4,4418, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"])--필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
ClassChangeTable:SetClassChange_Skill(5,4602, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"])--필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
--베테랑 커맨더
ClassChangeTable:SetClassChange_Skill(1,4220, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"])
ClassChangeTable:SetClassChange_Skill(2,4020, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"])
ClassChangeTable:SetClassChange_Skill(3,4021, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"])
ClassChangeTable:SetClassChange_Skill(4,4418, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"])
ClassChangeTable:SetClassChange_Skill(5,4602, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"])

--코드 엑조틱
ClassChangeTable:SetClassChange_Skill(1,5209, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"])
ClassChangeTable:SetClassChange_Skill(2,5006, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"])
ClassChangeTable:SetClassChange_Skill(3,5212, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"])
ClassChangeTable:SetClassChange_Skill(4,5406, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"])--필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
ClassChangeTable:SetClassChange_Skill(5,5600, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"])--필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
--코드 네메시스
ClassChangeTable:SetClassChange_Skill(1,5209, UNIT_CLASS["UC_EVE_CODE_NEMESIS"])
ClassChangeTable:SetClassChange_Skill(2,5006, UNIT_CLASS["UC_EVE_CODE_NEMESIS"])
ClassChangeTable:SetClassChange_Skill(3,5212, UNIT_CLASS["UC_EVE_CODE_NEMESIS"])
ClassChangeTable:SetClassChange_Skill(4,5406, UNIT_CLASS["UC_EVE_CODE_NEMESIS"])
ClassChangeTable:SetClassChange_Skill(5,5600, UNIT_CLASS["UC_EVE_CODE_NEMESIS"])

--코드 아키텍처
ClassChangeTable:SetClassChange_Skill(1,5011, UNIT_CLASS["UC_EVE_ARCHITECTURE"])
ClassChangeTable:SetClassChange_Skill(2,5013, UNIT_CLASS["UC_EVE_ARCHITECTURE"])
ClassChangeTable:SetClassChange_Skill(3,5218, UNIT_CLASS["UC_EVE_ARCHITECTURE"])
ClassChangeTable:SetClassChange_Skill(4,5408, UNIT_CLASS["UC_EVE_ARCHITECTURE"])--필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
ClassChangeTable:SetClassChange_Skill(5,5601, UNIT_CLASS["UC_EVE_ARCHITECTURE"])--필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
--코드 엠프레스
ClassChangeTable:SetClassChange_Skill(1,5011, UNIT_CLASS["UC_EVE_CODE_EMPRESS"])
ClassChangeTable:SetClassChange_Skill(2,5013, UNIT_CLASS["UC_EVE_CODE_EMPRESS"])
ClassChangeTable:SetClassChange_Skill(3,5218, UNIT_CLASS["UC_EVE_CODE_EMPRESS"])
ClassChangeTable:SetClassChange_Skill(4,5408, UNIT_CLASS["UC_EVE_CODE_EMPRESS"])
ClassChangeTable:SetClassChange_Skill(5,5601, UNIT_CLASS["UC_EVE_CODE_EMPRESS"])

--코드 일렉트라
ClassChangeTable:SetClassChange_Skill(1,5018, UNIT_CLASS["UC_EVE_ELECTRA"])
ClassChangeTable:SetClassChange_Skill(2,5020, UNIT_CLASS["UC_EVE_ELECTRA"])
ClassChangeTable:SetClassChange_Skill(3,5221, UNIT_CLASS["UC_EVE_ELECTRA"])
ClassChangeTable:SetClassChange_Skill(4,5413, UNIT_CLASS["UC_EVE_ELECTRA"])--필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
ClassChangeTable:SetClassChange_Skill(5,5602, UNIT_CLASS["UC_EVE_ELECTRA"])--필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
--코드 배틀 세라프
ClassChangeTable:SetClassChange_Skill(1,5018, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"])
ClassChangeTable:SetClassChange_Skill(2,5020, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"])
ClassChangeTable:SetClassChange_Skill(3,5221, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"])
ClassChangeTable:SetClassChange_Skill(4,5413, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"])
ClassChangeTable:SetClassChange_Skill(5,5602, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"])

--퓨리 가디언
ClassChangeTable:SetClassChange_Skill(1,6005, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"])
ClassChangeTable:SetClassChange_Skill(2,6007, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"])
ClassChangeTable:SetClassChange_Skill(3,6211, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"])
ClassChangeTable:SetClassChange_Skill(4,6405, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"])--필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
ClassChangeTable:SetClassChange_Skill(5,6600, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"])--필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
--아이언 팔라딘
ClassChangeTable:SetClassChange_Skill(1,6005, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"])
ClassChangeTable:SetClassChange_Skill(2,6007, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"])
ClassChangeTable:SetClassChange_Skill(3,6211, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"])
ClassChangeTable:SetClassChange_Skill(4,6405, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"])
ClassChangeTable:SetClassChange_Skill(5,6600, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"])

--슈팅 가디언
ClassChangeTable:SetClassChange_Skill(1,6012, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"])
ClassChangeTable:SetClassChange_Skill(2,6011, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"])
ClassChangeTable:SetClassChange_Skill(3,6014, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"])
ClassChangeTable:SetClassChange_Skill(4,6411, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"])--필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
ClassChangeTable:SetClassChange_Skill(5,6601, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"])--필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
--데들리 체이서
ClassChangeTable:SetClassChange_Skill(1,6012, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"])
ClassChangeTable:SetClassChange_Skill(2,6011, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"])
ClassChangeTable:SetClassChange_Skill(3,6014, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"])
ClassChangeTable:SetClassChange_Skill(4,6411, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"])
ClassChangeTable:SetClassChange_Skill(5,6601, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"])

--쉘링 가디언
ClassChangeTable:SetClassChange_Skill(1,6222, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"])
ClassChangeTable:SetClassChange_Skill(2,6018, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"])
ClassChangeTable:SetClassChange_Skill(3,6022, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"])
ClassChangeTable:SetClassChange_Skill(4,6416, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"])--필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
ClassChangeTable:SetClassChange_Skill(5,6602, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"])--필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
--택티컬 트루퍼
ClassChangeTable:SetClassChange_Skill(1,6222, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"])
ClassChangeTable:SetClassChange_Skill(2,6018, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"])
ClassChangeTable:SetClassChange_Skill(3,6022, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"])
ClassChangeTable:SetClassChange_Skill(4,6416, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"])
ClassChangeTable:SetClassChange_Skill(5,6602, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"])

--소선
ClassChangeTable:SetClassChange_Skill(1,7211, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"])--낙화
ClassChangeTable:SetClassChange_Skill(2,7006, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"])--맹호격
ClassChangeTable:SetClassChange_Skill(3,7404, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"])--창술의 극의
ClassChangeTable:SetClassChange_Skill(4,7405, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"])--만월 베기, 필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
ClassChangeTable:SetClassChange_Skill(5,7600, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"])--분기등천-천수화, 필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
--제천
ClassChangeTable:SetClassChange_Skill(1,7211, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"])--낙화
ClassChangeTable:SetClassChange_Skill(2,7006, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"])--맹호격
ClassChangeTable:SetClassChange_Skill(3,7404, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"])--창술의 극의
ClassChangeTable:SetClassChange_Skill(4,7405, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"])--만월 베기, 필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
ClassChangeTable:SetClassChange_Skill(5,7600, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"])--분기등천-천수화, 필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)

--[[
--소마
ClassChangeTable:SetClassChange_Skill(1,7215, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"])--이혈공
ClassChangeTable:SetClassChange_Skill(2,7014, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"])--연환지옥
ClassChangeTable:SetClassChange_Skill(3,7013, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"])--연환장
ClassChangeTable:SetClassChange_Skill(4,7409, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"])--늑대의 울부짖음, 필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
ClassChangeTable:SetClassChange_Skill(5,7601, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"])--대규환지옥, 필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
--명왕
ClassChangeTable:SetClassChange_Skill(1,7215, UNIT_CLASS["UC_ARA_YAMA_RAJA"])--이혈공
ClassChangeTable:SetClassChange_Skill(2,7014, UNIT_CLASS["UC_ARA_YAMA_RAJA"])--연환지옥
ClassChangeTable:SetClassChange_Skill(3,7013, UNIT_CLASS["UC_ARA_YAMA_RAJA"])--연환장
ClassChangeTable:SetClassChange_Skill(4,7409, UNIT_CLASS["UC_ARA_YAMA_RAJA"])--늑대의 울부짖음
ClassChangeTable:SetClassChange_Skill(5,7601, UNIT_CLASS["UC_ARA_YAMA_RAJA"])--대규환지옥

--세이버 나이트
ClassChangeTable:SetClassChange_Skill(1,8209, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"])--파워 브레이크
ClassChangeTable:SetClassChange_Skill(2,8006, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"])--승리의 검
ClassChangeTable:SetClassChange_Skill(3,8014, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"])--크리티컬 다이브
ClassChangeTable:SetClassChange_Skill(4,8405, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"])--검의 왈츠, 필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
ClassChangeTable:SetClassChange_Skill(5,8600, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"])--소드 오브 렐릭스, 필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
--파이로 나이트
ClassChangeTable:SetClassChange_Skill(1,8009, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"])--버스트 웨이브
ClassChangeTable:SetClassChange_Skill(2,8012, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"])--이터널 파이어
ClassChangeTable:SetClassChange_Skill(3,8016, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"])--파이어 월
ClassChangeTable:SetClassChange_Skill(4,8408, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"])--꺼지지 않는 불꽃, 필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
ClassChangeTable:SetClassChange_Skill(5,8601, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"])--에인션트 파이어, 필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
--그랜드 마스터
ClassChangeTable:SetClassChange_Skill(1,8209, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"])--파워 브레이크
ClassChangeTable:SetClassChange_Skill(2,8006, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"])--승리의 검
ClassChangeTable:SetClassChange_Skill(3,8014, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"])--크리티컬 다이브
ClassChangeTable:SetClassChange_Skill(4,8405, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"])--검의 왈츠, 필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
ClassChangeTable:SetClassChange_Skill(5,8600, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"])--소드 오브 렐릭스, 필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
--블레이징 하트
ClassChangeTable:SetClassChange_Skill(1,8009, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"])--버스트 웨이브
ClassChangeTable:SetClassChange_Skill(2,8012, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"])--이터널 파이어
ClassChangeTable:SetClassChange_Skill(3,8016, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"])--파이어 월
ClassChangeTable:SetClassChange_Skill(4,8408, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"])--꺼지지 않는 불꽃, 필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
ClassChangeTable:SetClassChange_Skill(5,8601, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"])--에인션트 파이어, 필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
--]]
-- 엘리시스 Camilla skill rewards (restored)
ClassChangeTable:SetClassChange_Skill(1,8209, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"])--파워 브레이크
ClassChangeTable:SetClassChange_Skill(2,8006, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"])--승리의 검
ClassChangeTable:SetClassChange_Skill(3,8014, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"])--크리티컬 다이브
ClassChangeTable:SetClassChange_Skill(4,8405, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"])--검의 왈츠, 필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
ClassChangeTable:SetClassChange_Skill(5,8600, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"])--소드 오브 렐릭스, 필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
ClassChangeTable:SetClassChange_Skill(1,8009, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"])--버스트 웨이브
ClassChangeTable:SetClassChange_Skill(2,8012, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"])--이터널 파이어
ClassChangeTable:SetClassChange_Skill(3,8016, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"])--파이어 월
ClassChangeTable:SetClassChange_Skill(4,8408, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"])--꺼지지 않는 불꽃, 필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
ClassChangeTable:SetClassChange_Skill(5,8601, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"])--에인션트 파이어, 필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
ClassChangeTable:SetClassChange_Skill(1,8209, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"])--파워 브레이크
ClassChangeTable:SetClassChange_Skill(2,8006, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"])--승리의 검
ClassChangeTable:SetClassChange_Skill(3,8014, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"])--크리티컬 다이브
ClassChangeTable:SetClassChange_Skill(4,8405, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"])--검의 왈츠, 필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
ClassChangeTable:SetClassChange_Skill(5,8600, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"])--소드 오브 렐릭스, 필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
ClassChangeTable:SetClassChange_Skill(1,8009, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"])--버스트 웨이브
ClassChangeTable:SetClassChange_Skill(2,8012, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"])--이터널 파이어
ClassChangeTable:SetClassChange_Skill(3,8016, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"])--파이어 월
ClassChangeTable:SetClassChange_Skill(4,8408, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"])--꺼지지 않는 불꽃, 필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
ClassChangeTable:SetClassChange_Skill(5,8601, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"])--에인션트 파이어, 필요없지만 추가함 (1차 캐릭으론 획득할 수 없음으로)
