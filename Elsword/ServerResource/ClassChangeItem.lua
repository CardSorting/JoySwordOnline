-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요
--ClassChangeTable:SetClassChange_Item( 아이템 그룹, 아이템 ID, 직업 )
--ClassChangeTable:SetClassChange_InventoryItem( 1, 1450, UNIT_CLASS["UC_ELSWORD_KNIGHT"] )   -- 예제
--[[
1 : 1차 스페셜 액티브 1 메모
2 : 1차 스페셜 액티브 2 메모
3 : 1차 액티브 메모  
(일반적으로 메모 아이디가 발급되는 순서와 그룹 넘버링의 순서는 다르므로 작업자는 혼동하면 안된다. 
예를 들어** 시스 나이트를 보라. 1번 그룹이 14번 메모, 2번 그룹이 15번 메모, 3번 그룹이 13번이다.)
신규 캐릭터의 경우, 메모가 구현되지 않았으나, 가라로 등록하고 여기에 추가해두었다. 전직 변경 시 매핑 이슈때문이다. 
덩달아 좋은 점은 실제 메모가 구현되는 시점에서 여기에 호작질을 하지 않아도 된다는 것!

11 : 초급 기술 훈련퀘스트로 획득하는 교본
12 : 중급 기술 훈련퀘스트로 획득하는 교본
13 : 상급 기술 훈련퀘스트로 획득하는 교본
14 : 고급 기술 훈련퀘스트로 획득하는 교본


2012.07.06 danggunne	스크립트 내용 새로 작성


]]
--[[ 메모 스크립트 부터 작업하고, 여기다 붙인 후 _Memo를 _InventoryItem으로 일괄 수정한다. 
( 꼭 그렇게 하란 말은 아니에요. 메모 기술의 노트와 아이템 아이디가 동일해서 중복작업을 줄일 수 있다.) ]]



---------------------------------------------------------------인벤토리 메모 아이템
--소드 나이트
ClassChangeTable:SetClassChange_InventoryItem(1,601003, UNIT_CLASS["UC_ELSWORD_KNIGHT"])
ClassChangeTable:SetClassChange_InventoryItem(2,601009, UNIT_CLASS["UC_ELSWORD_KNIGHT"])
ClassChangeTable:SetClassChange_InventoryItem(3,601011, UNIT_CLASS["UC_ELSWORD_KNIGHT"])
--로드 나이트
ClassChangeTable:SetClassChange_InventoryItem(1,601003, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"])
ClassChangeTable:SetClassChange_InventoryItem(2,601009, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"])
ClassChangeTable:SetClassChange_InventoryItem(3,601011, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"])

--매직 나이트
ClassChangeTable:SetClassChange_InventoryItem(1,601010, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"])
ClassChangeTable:SetClassChange_InventoryItem(2,601004, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"])
ClassChangeTable:SetClassChange_InventoryItem(3,601012, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"])
--룬 슬레이어
ClassChangeTable:SetClassChange_InventoryItem(1,601010, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"])
ClassChangeTable:SetClassChange_InventoryItem(2,601004, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"])
ClassChangeTable:SetClassChange_InventoryItem(3,601012, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"])

--시스 나이트
ClassChangeTable:SetClassChange_InventoryItem(1,601014, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"])
ClassChangeTable:SetClassChange_InventoryItem(2,601015, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"])
ClassChangeTable:SetClassChange_InventoryItem(3,601013, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"])
--인피니티 소드
ClassChangeTable:SetClassChange_InventoryItem(1,601014, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"])
ClassChangeTable:SetClassChange_InventoryItem(2,601015, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"])
ClassChangeTable:SetClassChange_InventoryItem(3,601013, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"])

--하이 매지션
ClassChangeTable:SetClassChange_InventoryItem(1,602009, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"])
ClassChangeTable:SetClassChange_InventoryItem(2,602003, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"])
ClassChangeTable:SetClassChange_InventoryItem(3,602011, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"])
--엘리멘탈 마스터
ClassChangeTable:SetClassChange_InventoryItem(1,602009, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"])
ClassChangeTable:SetClassChange_InventoryItem(2,602003, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"])
ClassChangeTable:SetClassChange_InventoryItem(3,602011, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"])

--다크 매지션
ClassChangeTable:SetClassChange_InventoryItem(1,602010, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"])
ClassChangeTable:SetClassChange_InventoryItem(2,602004, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"])
ClassChangeTable:SetClassChange_InventoryItem(3,602012, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"])
--보이드 프린세스
ClassChangeTable:SetClassChange_InventoryItem(1,602010, UNIT_CLASS["UC_ARME_VOID_PRINCESS"])
ClassChangeTable:SetClassChange_InventoryItem(2,602004, UNIT_CLASS["UC_ARME_VOID_PRINCESS"])
ClassChangeTable:SetClassChange_InventoryItem(3,602012, UNIT_CLASS["UC_ARME_VOID_PRINCESS"])

--배틀 매지션
ClassChangeTable:SetClassChange_InventoryItem(1,602014, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"])
ClassChangeTable:SetClassChange_InventoryItem(2,602015, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"])
ClassChangeTable:SetClassChange_InventoryItem(3,602013, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"])
--디멘션 위치
ClassChangeTable:SetClassChange_InventoryItem(1,602014, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"])
ClassChangeTable:SetClassChange_InventoryItem(2,602015, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"])
ClassChangeTable:SetClassChange_InventoryItem(3,602013, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"])

--컴뱃 레인저
ClassChangeTable:SetClassChange_InventoryItem(1,603009, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"])
ClassChangeTable:SetClassChange_InventoryItem(2,603003, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"])
ClassChangeTable:SetClassChange_InventoryItem(3,603011, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"])
--윈드 스니커
ClassChangeTable:SetClassChange_InventoryItem(1,603009, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"])
ClassChangeTable:SetClassChange_InventoryItem(2,603003, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"])
ClassChangeTable:SetClassChange_InventoryItem(3,603011, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"])

--스나이핑 레인저
ClassChangeTable:SetClassChange_InventoryItem(1,603010, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"])
ClassChangeTable:SetClassChange_InventoryItem(2,603004, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"])
ClassChangeTable:SetClassChange_InventoryItem(3,603012, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"])
--그랜드 아처
ClassChangeTable:SetClassChange_InventoryItem(1,603010, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"])
ClassChangeTable:SetClassChange_InventoryItem(2,603004, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"])
ClassChangeTable:SetClassChange_InventoryItem(3,603012, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"])

--트래핑 레인저
ClassChangeTable:SetClassChange_InventoryItem(1,603014, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"])
ClassChangeTable:SetClassChange_InventoryItem(2,603015, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"])
ClassChangeTable:SetClassChange_InventoryItem(3,603013, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"])
--나이트 와처
ClassChangeTable:SetClassChange_InventoryItem(1,603014, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"])
ClassChangeTable:SetClassChange_InventoryItem(2,603015, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"])
ClassChangeTable:SetClassChange_InventoryItem(3,603013, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"])

--소드 테이커
ClassChangeTable:SetClassChange_InventoryItem(1,604009, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"])
ClassChangeTable:SetClassChange_InventoryItem(2,604003, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"])
ClassChangeTable:SetClassChange_InventoryItem(3,604011, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"])
--블레이드 마스터
ClassChangeTable:SetClassChange_InventoryItem(1,604009, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"])
ClassChangeTable:SetClassChange_InventoryItem(2,604003, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"])
ClassChangeTable:SetClassChange_InventoryItem(3,604011, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"])

--오버 테이커
ClassChangeTable:SetClassChange_InventoryItem(1,604010, UNIT_CLASS["UC_RAVEN_OVER_TAKER"])
ClassChangeTable:SetClassChange_InventoryItem(2,604004, UNIT_CLASS["UC_RAVEN_OVER_TAKER"])
ClassChangeTable:SetClassChange_InventoryItem(3,604012, UNIT_CLASS["UC_RAVEN_OVER_TAKER"])
--레크리스 피스트
ClassChangeTable:SetClassChange_InventoryItem(1,604010, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"])
ClassChangeTable:SetClassChange_InventoryItem(2,604004, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"])
ClassChangeTable:SetClassChange_InventoryItem(3,604012, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"])

--웨폰 테이커
ClassChangeTable:SetClassChange_InventoryItem(1,604014, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"])
ClassChangeTable:SetClassChange_InventoryItem(2,604015, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"])
ClassChangeTable:SetClassChange_InventoryItem(3,604013, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"])
--베테랑 커맨더
ClassChangeTable:SetClassChange_InventoryItem(1,604014, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"])
ClassChangeTable:SetClassChange_InventoryItem(2,604015, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"])
ClassChangeTable:SetClassChange_InventoryItem(3,604013, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"])

--코드 엑조틱
ClassChangeTable:SetClassChange_InventoryItem(1,605009, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"])
ClassChangeTable:SetClassChange_InventoryItem(2,605003, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"])
ClassChangeTable:SetClassChange_InventoryItem(3,605011, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"])
--코드 네메시스
ClassChangeTable:SetClassChange_InventoryItem(1,605009, UNIT_CLASS["UC_EVE_CODE_NEMESIS"])
ClassChangeTable:SetClassChange_InventoryItem(2,605003, UNIT_CLASS["UC_EVE_CODE_NEMESIS"])
ClassChangeTable:SetClassChange_InventoryItem(3,605011, UNIT_CLASS["UC_EVE_CODE_NEMESIS"])

--코드 아키텍처
ClassChangeTable:SetClassChange_InventoryItem(1,605010, UNIT_CLASS["UC_EVE_ARCHITECTURE"])
ClassChangeTable:SetClassChange_InventoryItem(2,605004, UNIT_CLASS["UC_EVE_ARCHITECTURE"])
ClassChangeTable:SetClassChange_InventoryItem(3,605012, UNIT_CLASS["UC_EVE_ARCHITECTURE"])
--코드 엠프레스
ClassChangeTable:SetClassChange_InventoryItem(1,605010, UNIT_CLASS["UC_EVE_CODE_EMPRESS"])
ClassChangeTable:SetClassChange_InventoryItem(2,605004, UNIT_CLASS["UC_EVE_CODE_EMPRESS"])
ClassChangeTable:SetClassChange_InventoryItem(3,605012, UNIT_CLASS["UC_EVE_CODE_EMPRESS"])

--코드 일렉트라
ClassChangeTable:SetClassChange_InventoryItem(1,605014, UNIT_CLASS["UC_EVE_ELECTRA"])
ClassChangeTable:SetClassChange_InventoryItem(2,605015, UNIT_CLASS["UC_EVE_ELECTRA"])
ClassChangeTable:SetClassChange_InventoryItem(3,605013, UNIT_CLASS["UC_EVE_ELECTRA"])
--코드 배틀 세라프
ClassChangeTable:SetClassChange_InventoryItem(1,605014, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"])
ClassChangeTable:SetClassChange_InventoryItem(2,605015, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"])
ClassChangeTable:SetClassChange_InventoryItem(3,605013, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"])

--퓨리 가디언
ClassChangeTable:SetClassChange_InventoryItem(0,606007, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"])
ClassChangeTable:SetClassChange_InventoryItem(1,606003, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"])
ClassChangeTable:SetClassChange_InventoryItem(2,606010, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"])
ClassChangeTable:SetClassChange_InventoryItem(3,606012, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"])
--아이언 팔라딘
ClassChangeTable:SetClassChange_InventoryItem(0,606007, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"])
ClassChangeTable:SetClassChange_InventoryItem(1,606003, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"])
ClassChangeTable:SetClassChange_InventoryItem(2,606010, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"])
ClassChangeTable:SetClassChange_InventoryItem(3,606012, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"])

--슈팅 가디언
ClassChangeTable:SetClassChange_InventoryItem(0,606008, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"])
ClassChangeTable:SetClassChange_InventoryItem(1,606004, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"])
ClassChangeTable:SetClassChange_InventoryItem(2,606011, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"])
ClassChangeTable:SetClassChange_InventoryItem(3,606013, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"])
--데들리 체이서
ClassChangeTable:SetClassChange_InventoryItem(0,606008, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"])
ClassChangeTable:SetClassChange_InventoryItem(1,606004, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"])
ClassChangeTable:SetClassChange_InventoryItem(2,606011, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"])
ClassChangeTable:SetClassChange_InventoryItem(3,606013, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"])

--쉘링 가디언
ClassChangeTable:SetClassChange_InventoryItem(0,606017, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"])
ClassChangeTable:SetClassChange_InventoryItem(1,606014, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"])
ClassChangeTable:SetClassChange_InventoryItem(2,606015, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"])
ClassChangeTable:SetClassChange_InventoryItem(3,606016, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"])
--택티컬 트루퍼
ClassChangeTable:SetClassChange_InventoryItem(0,606017, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"])
ClassChangeTable:SetClassChange_InventoryItem(1,606014, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"])
ClassChangeTable:SetClassChange_InventoryItem(2,606015, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"])
ClassChangeTable:SetClassChange_InventoryItem(3,606016, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"])

--소선
ClassChangeTable:SetClassChange_InventoryItem(0,607011, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"])
ClassChangeTable:SetClassChange_InventoryItem(1,607012, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"])	
ClassChangeTable:SetClassChange_InventoryItem(2,607013, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"])
ClassChangeTable:SetClassChange_InventoryItem(3,607010, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"])
--제천
ClassChangeTable:SetClassChange_InventoryItem(0,607011, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"])
ClassChangeTable:SetClassChange_InventoryItem(1,607012, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"])	
ClassChangeTable:SetClassChange_InventoryItem(2,607013, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"])
ClassChangeTable:SetClassChange_InventoryItem(3,607010, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"])

--소마
ClassChangeTable:SetClassChange_InventoryItem(0,607015, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"])
ClassChangeTable:SetClassChange_InventoryItem(1,607016, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"])	
ClassChangeTable:SetClassChange_InventoryItem(2,607017, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"])
ClassChangeTable:SetClassChange_InventoryItem(3,607014, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"])
--명왕
ClassChangeTable:SetClassChange_InventoryItem(0,607015, UNIT_CLASS["UC_ARA_YAMA_RAJA"])
ClassChangeTable:SetClassChange_InventoryItem(1,607016, UNIT_CLASS["UC_ARA_YAMA_RAJA"])	
ClassChangeTable:SetClassChange_InventoryItem(2,607017, UNIT_CLASS["UC_ARA_YAMA_RAJA"])
ClassChangeTable:SetClassChange_InventoryItem(3,607014, UNIT_CLASS["UC_ARA_YAMA_RAJA"])

---------------------------------------------------------------인벤토리 교본 아이템
--소드 나이트
ClassChangeTable:SetClassChange_InventoryItem(11,99180, UNIT_CLASS["UC_ELSWORD_KNIGHT"])
ClassChangeTable:SetClassChange_InventoryItem(12,99280, UNIT_CLASS["UC_ELSWORD_KNIGHT"])
ClassChangeTable:SetClassChange_InventoryItem(13,99420, UNIT_CLASS["UC_ELSWORD_KNIGHT"])
ClassChangeTable:SetClassChange_InventoryItem(14,99640, UNIT_CLASS["UC_ELSWORD_KNIGHT"])
--로드 나이트
ClassChangeTable:SetClassChange_InventoryItem(11,99180, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"])
ClassChangeTable:SetClassChange_InventoryItem(12,99280, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"])
ClassChangeTable:SetClassChange_InventoryItem(13,99420, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"])
ClassChangeTable:SetClassChange_InventoryItem(14,99640, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"])

--매직 나이트
ClassChangeTable:SetClassChange_InventoryItem(11,99190, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"])
ClassChangeTable:SetClassChange_InventoryItem(12,99290, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"])
ClassChangeTable:SetClassChange_InventoryItem(13,99430, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"])
ClassChangeTable:SetClassChange_InventoryItem(14,99650, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"])
--룬 슬레이어
ClassChangeTable:SetClassChange_InventoryItem(11,99190, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"])
ClassChangeTable:SetClassChange_InventoryItem(12,99290, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"])
ClassChangeTable:SetClassChange_InventoryItem(13,99430, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"])
ClassChangeTable:SetClassChange_InventoryItem(14,99650, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"])

--시스 나이트
ClassChangeTable:SetClassChange_InventoryItem(11,99950, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"])
ClassChangeTable:SetClassChange_InventoryItem(12,99951, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"])
ClassChangeTable:SetClassChange_InventoryItem(13,99952, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"])
ClassChangeTable:SetClassChange_InventoryItem(14,99968, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"])
--인피니티 소드
ClassChangeTable:SetClassChange_InventoryItem(11,99950, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"])
ClassChangeTable:SetClassChange_InventoryItem(12,99951, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"])
ClassChangeTable:SetClassChange_InventoryItem(13,99952, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"])
ClassChangeTable:SetClassChange_InventoryItem(14,99968, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"])

--하이 매지션
ClassChangeTable:SetClassChange_InventoryItem(11,99200, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"])
ClassChangeTable:SetClassChange_InventoryItem(12,99310, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"])
ClassChangeTable:SetClassChange_InventoryItem(13,99450, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"])
ClassChangeTable:SetClassChange_InventoryItem(14,99660, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"])
--엘리멘탈 마스터
ClassChangeTable:SetClassChange_InventoryItem(11,99200, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"])
ClassChangeTable:SetClassChange_InventoryItem(12,99310, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"])
ClassChangeTable:SetClassChange_InventoryItem(13,99450, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"])
ClassChangeTable:SetClassChange_InventoryItem(14,99660, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"])

--다크 매지션
ClassChangeTable:SetClassChange_InventoryItem(11,99210, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"])
ClassChangeTable:SetClassChange_InventoryItem(12,99300, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"])
ClassChangeTable:SetClassChange_InventoryItem(13,99440, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"])
ClassChangeTable:SetClassChange_InventoryItem(14,99670, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"])
--보이드 프린세스
ClassChangeTable:SetClassChange_InventoryItem(11,99210, UNIT_CLASS["UC_ARME_VOID_PRINCESS"])
ClassChangeTable:SetClassChange_InventoryItem(12,99300, UNIT_CLASS["UC_ARME_VOID_PRINCESS"])
ClassChangeTable:SetClassChange_InventoryItem(13,99440, UNIT_CLASS["UC_ARME_VOID_PRINCESS"])
ClassChangeTable:SetClassChange_InventoryItem(14,99670, UNIT_CLASS["UC_ARME_VOID_PRINCESS"])

--배틀 매지션
ClassChangeTable:SetClassChange_InventoryItem(11,99953, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"])
ClassChangeTable:SetClassChange_InventoryItem(12,99954, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"])
ClassChangeTable:SetClassChange_InventoryItem(13,99955, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"])
ClassChangeTable:SetClassChange_InventoryItem(14,99969, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"])
--디멘션 위치
ClassChangeTable:SetClassChange_InventoryItem(11,99953, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"])
ClassChangeTable:SetClassChange_InventoryItem(12,99954, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"])
ClassChangeTable:SetClassChange_InventoryItem(13,99955, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"])
ClassChangeTable:SetClassChange_InventoryItem(14,99969, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"])

--컴뱃 레인저
ClassChangeTable:SetClassChange_InventoryItem(11,99220, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"])
ClassChangeTable:SetClassChange_InventoryItem(12,99320, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"])
ClassChangeTable:SetClassChange_InventoryItem(13,99460, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"])
ClassChangeTable:SetClassChange_InventoryItem(14,99680, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"])
--윈드 스니커
ClassChangeTable:SetClassChange_InventoryItem(11,99220, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"])
ClassChangeTable:SetClassChange_InventoryItem(12,99320, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"])
ClassChangeTable:SetClassChange_InventoryItem(13,99460, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"])
ClassChangeTable:SetClassChange_InventoryItem(14,99680, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"])

--스나이핑 레인저
ClassChangeTable:SetClassChange_InventoryItem(11,99230, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"])
ClassChangeTable:SetClassChange_InventoryItem(12,99330, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"])
ClassChangeTable:SetClassChange_InventoryItem(13,99470, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"])
ClassChangeTable:SetClassChange_InventoryItem(14,99690, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"])
--그랜드 아처
ClassChangeTable:SetClassChange_InventoryItem(11,99230, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"])
ClassChangeTable:SetClassChange_InventoryItem(12,99330, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"])
ClassChangeTable:SetClassChange_InventoryItem(13,99470, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"])
ClassChangeTable:SetClassChange_InventoryItem(14,99690, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"])

--트래핑 레인저
ClassChangeTable:SetClassChange_InventoryItem(11,99956, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"])
ClassChangeTable:SetClassChange_InventoryItem(12,99957, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"])
ClassChangeTable:SetClassChange_InventoryItem(13,99958, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"])
ClassChangeTable:SetClassChange_InventoryItem(14,99970, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"])
--나이트 와처
ClassChangeTable:SetClassChange_InventoryItem(11,99956, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"])
ClassChangeTable:SetClassChange_InventoryItem(12,99957, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"])
ClassChangeTable:SetClassChange_InventoryItem(13,99958, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"])
ClassChangeTable:SetClassChange_InventoryItem(14,99970, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"])

--소드 테이커
ClassChangeTable:SetClassChange_InventoryItem(11,99240, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"])
ClassChangeTable:SetClassChange_InventoryItem(12,99340, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"])
ClassChangeTable:SetClassChange_InventoryItem(13,99480, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"])
ClassChangeTable:SetClassChange_InventoryItem(14,99700, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"])
--블레이드 마스터
ClassChangeTable:SetClassChange_InventoryItem(11,99240, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"])
ClassChangeTable:SetClassChange_InventoryItem(12,99340, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"])
ClassChangeTable:SetClassChange_InventoryItem(13,99480, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"])
ClassChangeTable:SetClassChange_InventoryItem(14,99700, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"])

--오버 테이커
ClassChangeTable:SetClassChange_InventoryItem(11,99250, UNIT_CLASS["UC_RAVEN_OVER_TAKER"])
ClassChangeTable:SetClassChange_InventoryItem(12,99350, UNIT_CLASS["UC_RAVEN_OVER_TAKER"])
ClassChangeTable:SetClassChange_InventoryItem(13,99490, UNIT_CLASS["UC_RAVEN_OVER_TAKER"])
ClassChangeTable:SetClassChange_InventoryItem(14,99710, UNIT_CLASS["UC_RAVEN_OVER_TAKER"])
--레크리스 피스트
ClassChangeTable:SetClassChange_InventoryItem(11,99250, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"])
ClassChangeTable:SetClassChange_InventoryItem(12,99350, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"])
ClassChangeTable:SetClassChange_InventoryItem(13,99490, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"])
ClassChangeTable:SetClassChange_InventoryItem(14,99710, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"])

--웨폰 테이커
ClassChangeTable:SetClassChange_InventoryItem(11,99959, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"])
ClassChangeTable:SetClassChange_InventoryItem(12,99960, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"])
ClassChangeTable:SetClassChange_InventoryItem(13,99961, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"])
ClassChangeTable:SetClassChange_InventoryItem(14,99971, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"])
--베테랑 커맨더
ClassChangeTable:SetClassChange_InventoryItem(11,99959, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"])
ClassChangeTable:SetClassChange_InventoryItem(12,99960, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"])
ClassChangeTable:SetClassChange_InventoryItem(13,99961, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"])
ClassChangeTable:SetClassChange_InventoryItem(14,99971, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"])

--코드 엑조틱
ClassChangeTable:SetClassChange_InventoryItem(11,99260, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"])
ClassChangeTable:SetClassChange_InventoryItem(12,99360, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"])
ClassChangeTable:SetClassChange_InventoryItem(13,99500, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"])
ClassChangeTable:SetClassChange_InventoryItem(14,99720, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"])
--코드 네메시스
ClassChangeTable:SetClassChange_InventoryItem(11,99260, UNIT_CLASS["UC_EVE_CODE_NEMESIS"])
ClassChangeTable:SetClassChange_InventoryItem(12,99360, UNIT_CLASS["UC_EVE_CODE_NEMESIS"])
ClassChangeTable:SetClassChange_InventoryItem(13,99500, UNIT_CLASS["UC_EVE_CODE_NEMESIS"])
ClassChangeTable:SetClassChange_InventoryItem(14,99720, UNIT_CLASS["UC_EVE_CODE_NEMESIS"])

--코드 아키텍처
ClassChangeTable:SetClassChange_InventoryItem(11,99270, UNIT_CLASS["UC_EVE_ARCHITECTURE"])
ClassChangeTable:SetClassChange_InventoryItem(12,99370, UNIT_CLASS["UC_EVE_ARCHITECTURE"])
ClassChangeTable:SetClassChange_InventoryItem(13,99510, UNIT_CLASS["UC_EVE_ARCHITECTURE"])
ClassChangeTable:SetClassChange_InventoryItem(14,99730, UNIT_CLASS["UC_EVE_ARCHITECTURE"])
--코드 엠프레스
ClassChangeTable:SetClassChange_InventoryItem(11,99270, UNIT_CLASS["UC_EVE_CODE_EMPRESS"])
ClassChangeTable:SetClassChange_InventoryItem(12,99370, UNIT_CLASS["UC_EVE_CODE_EMPRESS"])
ClassChangeTable:SetClassChange_InventoryItem(13,99510, UNIT_CLASS["UC_EVE_CODE_EMPRESS"])
ClassChangeTable:SetClassChange_InventoryItem(14,99730, UNIT_CLASS["UC_EVE_CODE_EMPRESS"])

--코드 일렉트라
ClassChangeTable:SetClassChange_InventoryItem(11,99962, UNIT_CLASS["UC_EVE_ELECTRA"])
ClassChangeTable:SetClassChange_InventoryItem(12,99963, UNIT_CLASS["UC_EVE_ELECTRA"])
ClassChangeTable:SetClassChange_InventoryItem(13,99964, UNIT_CLASS["UC_EVE_ELECTRA"])
ClassChangeTable:SetClassChange_InventoryItem(14,99972, UNIT_CLASS["UC_EVE_ELECTRA"])
--코드 배틀 세라프
ClassChangeTable:SetClassChange_InventoryItem(11,99962, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"])
ClassChangeTable:SetClassChange_InventoryItem(12,99963, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"])
ClassChangeTable:SetClassChange_InventoryItem(13,99964, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"])
ClassChangeTable:SetClassChange_InventoryItem(14,99972, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"])

--퓨리 가디언
ClassChangeTable:SetClassChange_InventoryItem(11,99850, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"])
ClassChangeTable:SetClassChange_InventoryItem(12,99870, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"])
ClassChangeTable:SetClassChange_InventoryItem(13,99880, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"])
ClassChangeTable:SetClassChange_InventoryItem(14,99930, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"])
--아이언 팔라딘
ClassChangeTable:SetClassChange_InventoryItem(11,99850, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"])
ClassChangeTable:SetClassChange_InventoryItem(12,99870, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"])
ClassChangeTable:SetClassChange_InventoryItem(13,99880, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"])
ClassChangeTable:SetClassChange_InventoryItem(14,99930, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"])

--슈팅 가디언
ClassChangeTable:SetClassChange_InventoryItem(11,99860, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"])
ClassChangeTable:SetClassChange_InventoryItem(12,99890, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"])
ClassChangeTable:SetClassChange_InventoryItem(13,99900, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"])
ClassChangeTable:SetClassChange_InventoryItem(14,99940, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"])
--데들리 체이서
ClassChangeTable:SetClassChange_InventoryItem(11,99860, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"])
ClassChangeTable:SetClassChange_InventoryItem(12,99890, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"])
ClassChangeTable:SetClassChange_InventoryItem(13,99900, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"])
ClassChangeTable:SetClassChange_InventoryItem(14,99940, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"])

--쉘링 가디언
ClassChangeTable:SetClassChange_InventoryItem(11,99965, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"])
ClassChangeTable:SetClassChange_InventoryItem(12,99966, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"])
ClassChangeTable:SetClassChange_InventoryItem(13,99967, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"])
ClassChangeTable:SetClassChange_InventoryItem(14,99973, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"])
--택티컬 트루퍼
ClassChangeTable:SetClassChange_InventoryItem(11,99965, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"])
ClassChangeTable:SetClassChange_InventoryItem(12,99966, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"])
ClassChangeTable:SetClassChange_InventoryItem(13,99967, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"])
ClassChangeTable:SetClassChange_InventoryItem(14,99973, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"])
-- 엘리시스 ClassChangeItem.lua (cloned from Elsword parallels)
--ClassChangeTable:SetClassChange_InventoryItem( 1, 1450, UNIT_CLASS["UC_ELESIS_KNIGHT"] )   -- 예제
--ClassChangeTable:SetClassChange_InventoryItem( 1, 1450, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"] )   -- 예제
--ClassChangeTable:SetClassChange_InventoryItem( 1, 1450, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"] )   -- 예제
ClassChangeTable:SetClassChange_InventoryItem(1,601003, UNIT_CLASS["UC_ELESIS_KNIGHT"])
ClassChangeTable:SetClassChange_InventoryItem(1,601003, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"])
ClassChangeTable:SetClassChange_InventoryItem(1,601003, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"])
ClassChangeTable:SetClassChange_InventoryItem(2,601009, UNIT_CLASS["UC_ELESIS_KNIGHT"])
ClassChangeTable:SetClassChange_InventoryItem(2,601009, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"])
ClassChangeTable:SetClassChange_InventoryItem(2,601009, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"])
ClassChangeTable:SetClassChange_InventoryItem(3,601011, UNIT_CLASS["UC_ELESIS_KNIGHT"])
ClassChangeTable:SetClassChange_InventoryItem(3,601011, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"])
ClassChangeTable:SetClassChange_InventoryItem(3,601011, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"])
ClassChangeTable:SetClassChange_InventoryItem(1,601010, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"])
ClassChangeTable:SetClassChange_InventoryItem(1,601010, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"])
ClassChangeTable:SetClassChange_InventoryItem(2,601004, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"])
ClassChangeTable:SetClassChange_InventoryItem(2,601004, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"])
ClassChangeTable:SetClassChange_InventoryItem(3,601012, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"])
ClassChangeTable:SetClassChange_InventoryItem(3,601012, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"])
ClassChangeTable:SetClassChange_InventoryItem(11,99180, UNIT_CLASS["UC_ELESIS_KNIGHT"])
ClassChangeTable:SetClassChange_InventoryItem(11,99180, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"])
ClassChangeTable:SetClassChange_InventoryItem(11,99180, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"])
ClassChangeTable:SetClassChange_InventoryItem(12,99280, UNIT_CLASS["UC_ELESIS_KNIGHT"])
ClassChangeTable:SetClassChange_InventoryItem(12,99280, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"])
ClassChangeTable:SetClassChange_InventoryItem(12,99280, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"])
ClassChangeTable:SetClassChange_InventoryItem(13,99420, UNIT_CLASS["UC_ELESIS_KNIGHT"])
ClassChangeTable:SetClassChange_InventoryItem(13,99420, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"])
ClassChangeTable:SetClassChange_InventoryItem(13,99420, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"])
ClassChangeTable:SetClassChange_InventoryItem(14,99640, UNIT_CLASS["UC_ELESIS_KNIGHT"])
ClassChangeTable:SetClassChange_InventoryItem(14,99640, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"])
ClassChangeTable:SetClassChange_InventoryItem(14,99640, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"])
ClassChangeTable:SetClassChange_InventoryItem(11,99190, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"])
ClassChangeTable:SetClassChange_InventoryItem(11,99190, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"])
ClassChangeTable:SetClassChange_InventoryItem(12,99290, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"])
ClassChangeTable:SetClassChange_InventoryItem(12,99290, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"])
ClassChangeTable:SetClassChange_InventoryItem(13,99430, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"])
ClassChangeTable:SetClassChange_InventoryItem(13,99430, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"])
ClassChangeTable:SetClassChange_InventoryItem(14,99650, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"])
ClassChangeTable:SetClassChange_InventoryItem(14,99650, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"])
