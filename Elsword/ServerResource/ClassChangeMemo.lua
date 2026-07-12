-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요
--ClassChangeTable:SetClassChange_Memo( 메모 그룹, 메모ID, 직업 )
--ClassChangeTable:SetClassChange_Memo( 1, 1450, UNIT_CLASS["UC_ELSWORD_KNIGHT"] )   -- 예제

--ClassChangeTable:SetClassChange_Memo( 1, 601014, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"] )
--ClassChangeTable:SetClassChange_Memo( 1, 601015, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"] )
--ClassChangeTable:SetClassChange_Memo( 1, 601013, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"] )

--[[
1 : 1차 스페셜 액티브 1 메모
2 : 1차 스페셜 액티브 2 메모
3 : 1차 액티브 메모  
(일반적으로 메모 아이디가 발급되는 순서와 그룹 넘버링의 순서는 다르므로 작업자는 혼동하면 안된다. 
예를 들어 위의 주석 예제 시스 나이트를 보라. 1번 그룹이 14번 메모, 2번 그룹이 15번 메모, 3번 그룹이 13번이다.)
신규 캐릭터의 경우, 메모가 구현되지 않았으나, 가라로 등록하고 여기에 추가해두었다. 전직 변경 시 매핑 이슈때문이다. 
덩달아 좋은 점은 실제 메모가 구현되는 시점에서 여기에 호작질을 하지 않아도 된다는 것!

2012.07.06 danggunne	스크립트 내용 새로 작성

]]



--소드 나이트
ClassChangeTable:SetClassChange_Memo(1,601003, UNIT_CLASS["UC_ELSWORD_KNIGHT"])
ClassChangeTable:SetClassChange_Memo(2,601009, UNIT_CLASS["UC_ELSWORD_KNIGHT"])
ClassChangeTable:SetClassChange_Memo(3,601011, UNIT_CLASS["UC_ELSWORD_KNIGHT"])
--로드 나이트
ClassChangeTable:SetClassChange_Memo(1,601003, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"])
ClassChangeTable:SetClassChange_Memo(2,601009, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"])
ClassChangeTable:SetClassChange_Memo(3,601011, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"])

--매직 나이트
ClassChangeTable:SetClassChange_Memo(1,601010, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"])
ClassChangeTable:SetClassChange_Memo(2,601004, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"])
ClassChangeTable:SetClassChange_Memo(3,601012, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"])
--룬 슬레이어
ClassChangeTable:SetClassChange_Memo(1,601010, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"])
ClassChangeTable:SetClassChange_Memo(2,601004, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"])
ClassChangeTable:SetClassChange_Memo(3,601012, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"])

--시스 나이트
ClassChangeTable:SetClassChange_Memo(1,601014, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"])
ClassChangeTable:SetClassChange_Memo(2,601015, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"])
ClassChangeTable:SetClassChange_Memo(3,601013, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"])
--인피니티 소드
ClassChangeTable:SetClassChange_Memo(1,601014, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"])
ClassChangeTable:SetClassChange_Memo(2,601015, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"])
ClassChangeTable:SetClassChange_Memo(3,601013, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"])

--하이 매지션
ClassChangeTable:SetClassChange_Memo(1,602009, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"])
ClassChangeTable:SetClassChange_Memo(2,602003, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"])
ClassChangeTable:SetClassChange_Memo(3,602011, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"])
--엘리멘탈 마스터
ClassChangeTable:SetClassChange_Memo(1,602009, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"])
ClassChangeTable:SetClassChange_Memo(2,602003, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"])
ClassChangeTable:SetClassChange_Memo(3,602011, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"])

--다크 매지션
ClassChangeTable:SetClassChange_Memo(1,602010, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"])
ClassChangeTable:SetClassChange_Memo(2,602004, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"])
ClassChangeTable:SetClassChange_Memo(3,602012, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"])
--보이드 프린세스
ClassChangeTable:SetClassChange_Memo(1,602010, UNIT_CLASS["UC_ARME_VOID_PRINCESS"])
ClassChangeTable:SetClassChange_Memo(2,602004, UNIT_CLASS["UC_ARME_VOID_PRINCESS"])
ClassChangeTable:SetClassChange_Memo(3,602012, UNIT_CLASS["UC_ARME_VOID_PRINCESS"])

--배틀 매지션
ClassChangeTable:SetClassChange_Memo(1,602014, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"])
ClassChangeTable:SetClassChange_Memo(2,602015, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"])
ClassChangeTable:SetClassChange_Memo(3,602013, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"])
--디멘션 위치
ClassChangeTable:SetClassChange_Memo(1,602014, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"])
ClassChangeTable:SetClassChange_Memo(2,602015, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"])
ClassChangeTable:SetClassChange_Memo(3,602013, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"])

--컴뱃 레인저
ClassChangeTable:SetClassChange_Memo(1,603009, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"])
ClassChangeTable:SetClassChange_Memo(2,603003, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"])
ClassChangeTable:SetClassChange_Memo(3,603011, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"])
--윈드 스니커
ClassChangeTable:SetClassChange_Memo(1,603009, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"])
ClassChangeTable:SetClassChange_Memo(2,603003, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"])
ClassChangeTable:SetClassChange_Memo(3,603011, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"])

--스나이핑 레인저
ClassChangeTable:SetClassChange_Memo(1,603010, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"])
ClassChangeTable:SetClassChange_Memo(2,603004, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"])
ClassChangeTable:SetClassChange_Memo(3,603012, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"])
--그랜드 아처
ClassChangeTable:SetClassChange_Memo(1,603010, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"])
ClassChangeTable:SetClassChange_Memo(2,603004, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"])
ClassChangeTable:SetClassChange_Memo(3,603012, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"])

--트래핑 레인저
ClassChangeTable:SetClassChange_Memo(1,603014, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"])
ClassChangeTable:SetClassChange_Memo(2,603015, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"])
ClassChangeTable:SetClassChange_Memo(3,603013, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"])
--나이트 와처
ClassChangeTable:SetClassChange_Memo(1,603014, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"])
ClassChangeTable:SetClassChange_Memo(2,603015, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"])
ClassChangeTable:SetClassChange_Memo(3,603013, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"])

--소드 테이커
ClassChangeTable:SetClassChange_Memo(1,604009, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"])
ClassChangeTable:SetClassChange_Memo(2,604003, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"])
ClassChangeTable:SetClassChange_Memo(3,604011, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"])
--블레이드 마스터
ClassChangeTable:SetClassChange_Memo(1,604009, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"])
ClassChangeTable:SetClassChange_Memo(2,604003, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"])
ClassChangeTable:SetClassChange_Memo(3,604011, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"])

--오버 테이커
ClassChangeTable:SetClassChange_Memo(1,604010, UNIT_CLASS["UC_RAVEN_OVER_TAKER"])
ClassChangeTable:SetClassChange_Memo(2,604004, UNIT_CLASS["UC_RAVEN_OVER_TAKER"])
ClassChangeTable:SetClassChange_Memo(3,604012, UNIT_CLASS["UC_RAVEN_OVER_TAKER"])
--레크리스 피스트
ClassChangeTable:SetClassChange_Memo(1,604010, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"])
ClassChangeTable:SetClassChange_Memo(2,604004, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"])
ClassChangeTable:SetClassChange_Memo(3,604012, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"])

--웨폰 테이커
ClassChangeTable:SetClassChange_Memo(1,604014, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"])
ClassChangeTable:SetClassChange_Memo(2,604015, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"])
ClassChangeTable:SetClassChange_Memo(3,604013, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"])
--베테랑 커맨더
ClassChangeTable:SetClassChange_Memo(1,604014, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"])
ClassChangeTable:SetClassChange_Memo(2,604015, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"])
ClassChangeTable:SetClassChange_Memo(3,604013, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"])

--코드 엑조틱
ClassChangeTable:SetClassChange_Memo(1,605009, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"])
ClassChangeTable:SetClassChange_Memo(2,605003, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"])
ClassChangeTable:SetClassChange_Memo(3,605011, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"])
--코드 네메시스
ClassChangeTable:SetClassChange_Memo(1,605009, UNIT_CLASS["UC_EVE_CODE_NEMESIS"])
ClassChangeTable:SetClassChange_Memo(2,605003, UNIT_CLASS["UC_EVE_CODE_NEMESIS"])
ClassChangeTable:SetClassChange_Memo(3,605011, UNIT_CLASS["UC_EVE_CODE_NEMESIS"])

--코드 아키텍처
ClassChangeTable:SetClassChange_Memo(1,605010, UNIT_CLASS["UC_EVE_ARCHITECTURE"])
ClassChangeTable:SetClassChange_Memo(2,605004, UNIT_CLASS["UC_EVE_ARCHITECTURE"])
ClassChangeTable:SetClassChange_Memo(3,605012, UNIT_CLASS["UC_EVE_ARCHITECTURE"])
--코드 엠프레스
ClassChangeTable:SetClassChange_Memo(1,605010, UNIT_CLASS["UC_EVE_CODE_EMPRESS"])
ClassChangeTable:SetClassChange_Memo(2,605004, UNIT_CLASS["UC_EVE_CODE_EMPRESS"])
ClassChangeTable:SetClassChange_Memo(3,605012, UNIT_CLASS["UC_EVE_CODE_EMPRESS"])

--코드 일렉트라
ClassChangeTable:SetClassChange_Memo(1,605014, UNIT_CLASS["UC_EVE_ELECTRA"])
ClassChangeTable:SetClassChange_Memo(2,605015, UNIT_CLASS["UC_EVE_ELECTRA"])
ClassChangeTable:SetClassChange_Memo(3,605013, UNIT_CLASS["UC_EVE_ELECTRA"])
--코드 배틀 세라프
ClassChangeTable:SetClassChange_Memo(1,605014, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"])
ClassChangeTable:SetClassChange_Memo(2,605015, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"])
ClassChangeTable:SetClassChange_Memo(3,605013, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"])

--퓨리 가디언
ClassChangeTable:SetClassChange_Memo(0,606007, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"])
ClassChangeTable:SetClassChange_Memo(1,606003, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"])
ClassChangeTable:SetClassChange_Memo(2,606010, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"])
ClassChangeTable:SetClassChange_Memo(3,606012, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"])
--아이언 팔라딘
ClassChangeTable:SetClassChange_Memo(0,606007, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"])
ClassChangeTable:SetClassChange_Memo(1,606003, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"])
ClassChangeTable:SetClassChange_Memo(2,606010, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"])
ClassChangeTable:SetClassChange_Memo(3,606012, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"])

--슈팅 가디언
ClassChangeTable:SetClassChange_Memo(0,606008, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"])
ClassChangeTable:SetClassChange_Memo(1,606004, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"])
ClassChangeTable:SetClassChange_Memo(2,606011, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"])
ClassChangeTable:SetClassChange_Memo(3,606013, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"])
--데들리 체이서
ClassChangeTable:SetClassChange_Memo(0,606008, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"])
ClassChangeTable:SetClassChange_Memo(1,606004, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"])
ClassChangeTable:SetClassChange_Memo(2,606011, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"])
ClassChangeTable:SetClassChange_Memo(3,606013, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"])

--쉘링 가디언
ClassChangeTable:SetClassChange_Memo(0,606017, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"])
ClassChangeTable:SetClassChange_Memo(1,606014, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"])
ClassChangeTable:SetClassChange_Memo(2,606015, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"])
ClassChangeTable:SetClassChange_Memo(3,606016, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"])
--택티컬 트루퍼
ClassChangeTable:SetClassChange_Memo(0,606017, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"])
ClassChangeTable:SetClassChange_Memo(1,606014, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"])
ClassChangeTable:SetClassChange_Memo(2,606015, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"])
ClassChangeTable:SetClassChange_Memo(3,606016, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"])

--소선
ClassChangeTable:SetClassChange_Memo(0,607011, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"])
ClassChangeTable:SetClassChange_Memo(1,607012, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"])	
ClassChangeTable:SetClassChange_Memo(2,607013, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"])
ClassChangeTable:SetClassChange_Memo(3,607010, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"])
--제천
ClassChangeTable:SetClassChange_Memo(0,607011, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"])
ClassChangeTable:SetClassChange_Memo(1,607012, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"])	
ClassChangeTable:SetClassChange_Memo(2,607013, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"])
ClassChangeTable:SetClassChange_Memo(3,607010, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"])

--소마
ClassChangeTable:SetClassChange_Memo(0,607015, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"])
ClassChangeTable:SetClassChange_Memo(1,607016, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"])	
ClassChangeTable:SetClassChange_Memo(2,607017, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"])
ClassChangeTable:SetClassChange_Memo(3,607014, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"])
--명왕
ClassChangeTable:SetClassChange_Memo(0,607015, UNIT_CLASS["UC_ARA_YAMA_RAJA"])
ClassChangeTable:SetClassChange_Memo(1,607016, UNIT_CLASS["UC_ARA_YAMA_RAJA"])	
ClassChangeTable:SetClassChange_Memo(2,607017, UNIT_CLASS["UC_ARA_YAMA_RAJA"])
ClassChangeTable:SetClassChange_Memo(3,607014, UNIT_CLASS["UC_ARA_YAMA_RAJA"])
-- 엘리시스 ClassChangeMemo.lua (cloned from Elsword parallels)
--ClassChangeTable:SetClassChange_Memo( 1, 1450, UNIT_CLASS["UC_ELESIS_KNIGHT"] )   -- 예제
--ClassChangeTable:SetClassChange_Memo( 1, 1450, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"] )   -- 예제
--ClassChangeTable:SetClassChange_Memo( 1, 1450, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"] )   -- 예제
ClassChangeTable:SetClassChange_Memo(1,601003, UNIT_CLASS["UC_ELESIS_KNIGHT"])
ClassChangeTable:SetClassChange_Memo(1,601003, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"])
ClassChangeTable:SetClassChange_Memo(1,601003, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"])
ClassChangeTable:SetClassChange_Memo(2,601009, UNIT_CLASS["UC_ELESIS_KNIGHT"])
ClassChangeTable:SetClassChange_Memo(2,601009, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"])
ClassChangeTable:SetClassChange_Memo(2,601009, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"])
ClassChangeTable:SetClassChange_Memo(3,601011, UNIT_CLASS["UC_ELESIS_KNIGHT"])
ClassChangeTable:SetClassChange_Memo(3,601011, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"])
ClassChangeTable:SetClassChange_Memo(3,601011, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"])
ClassChangeTable:SetClassChange_Memo(1,601010, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"])
ClassChangeTable:SetClassChange_Memo(1,601010, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"])
ClassChangeTable:SetClassChange_Memo(2,601004, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"])
ClassChangeTable:SetClassChange_Memo(2,601004, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"])
ClassChangeTable:SetClassChange_Memo(3,601012, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"])
ClassChangeTable:SetClassChange_Memo(3,601012, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"])
