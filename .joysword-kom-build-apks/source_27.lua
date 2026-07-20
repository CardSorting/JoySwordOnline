-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요

--[[
---------------------------------------------------------------------------------------
-- ※ 설정법 // 2013.07.10 // 공솔																							--
---------------------------------------------------------------------------------------
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 그룹ID, 전직, 스킬ID, 스킬레벨 )

	문서 작성용 참고문서로 '(ES_KR_스킬트리 도식화)SkillLevelUpSocketGroup 연관 자료.xlsm' 참조
	기술의 반지는 대칭스킬은 올려주지 않는다.
---------------------------------------------------------------------------------------

UNIT_CLASS["UC_ELSWORD_SWORDMAN"],			엘소드
UNIT_CLASS["UC_ARME_VIOLET_MAGE"],				아이샤
UNIT_CLASS["UC_LIRE_ELVEN_RANGER"],				레나
UNIT_CLASS["UC_EVE_NASOD"],							이브
UNIT_CLASS["UC_RAVEN_FIGHTER"],					레이븐
UNIT_CLASS["UC_CHUNG_IRON_CANNON"],				청
UNIT_CLASS["UC_ARA_MARTIAL_ARTIST"],			아라
UNIT_CLASS["UC_ELESIS_KNIGHT"],						엘리시스
UNIT_CLASS["UC_ELSWORD_KNIGHT"],					소드나이트
UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"],		매직나이트
UNIT_CLASS["UC_LIRE_COMBAT_RANGER"],			컴뱃레인저
UNIT_CLASS["UC_LIRE_SNIPING_RANGER"],			스나이핑레인저
UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"],			하이매지션
UNIT_CLASS["UC_ARME_DARK_MAGICIAN"],			다크매지션
UNIT_CLASS["UC_RAVEN_SOUL_TAKER"],				소드테이커
UNIT_CLASS["UC_RAVEN_OVER_TAKER"],				오버테이커
UNIT_CLASS["UC_EVE_EXOTIC_GEAR"],					코드액조틱
UNIT_CLASS["UC_EVE_ARCHITECTURE"],				코드아키텍쳐
UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"],		퓨리가디언
UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"],	슈팅가디언
UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"],		시스나이트
UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"],			배틀매지션
UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"],			트래핑레인저
UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"],			웨폰테이커
UNIT_CLASS["UC_EVE_ELECTRA"],						코드일렉트라
UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"],	쉘링가디언
UNIT_CLASS["UC_ARA_LITTLE_HSIEN"],					소선
UNIT_CLASS["UC_ARA_LITTLE_DEVIL"],					소마
UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"],			세이버 나이트
UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"],				파이로 나이트
UNIT_CLASS["UC_ELESIS_GRAND_MASTER"],			그랜드 마스터
UNIT_CLASS["UC_ELESIS_BLAZING_HEART"],			블레이징 하트
UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"],			로드나이트
UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"],		룬슬레이어
UNIT_CLASS["UC_LIRE_WIND_SNEAKER"],				윈드스니커
UNIT_CLASS["UC_LIRE_GRAND_ARCHER"],				그랜드아쳐
UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"],		엘리멘탈마스터	
UNIT_CLASS["UC_ARME_VOID_PRINCESS"],			보이드프린세스
UNIT_CLASS["UC_RAVEN_BLADE_MASTER"],			블레이드마스터
UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"],			레크리트피스트
UNIT_CLASS["UC_EVE_CODE_NEMESIS"],				코드네메시스
UNIT_CLASS["UC_EVE_CODE_EMPRESS"],				코드엠프레스
UNIT_CLASS["UC_CHUNG_IRON_PALADIN"],			아이언팔라딘
UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"],		데들리체이서
UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"],	인피니티소드
UNIT_CLASS["UC_ARME_DIMENSION_WITCH"],		디멘션위치
UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"],			나이트와쳐
UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"],베테랑커맨더
UNIT_CLASS["UC_EVE_BATTLE_SERAPH"],				베틀세라프
UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"],	택티컬트루퍼
UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"],			제천
UNIT_CLASS["UC_ARA_YAMA_RAJA"],					명왕


--]]


--46116	모든 전직 액티브 스킬Lv+	--(신규)유연한 기술의 반지
		--노전직
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_SWORDMAN"], 1205, 4 ) --//구르기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_SWORDMAN"], 1206, 4 ) --//소드 웨이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_SWORDMAN"], 1202, 4 ) --//반격
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_SWORDMAN"], 1207, 4 ) --//막기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_VIOLET_MAGE"], 2200, 4 ) --//체인 파이어볼
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_VIOLET_MAGE"], 2206, 4 ) --//아이시클 웨이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_VIOLET_MAGE"], 2205, 4 ) --//파이어 로드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_VIOLET_MAGE"], 2202, 4 ) --//텔레포트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_VIOLET_MAGE"], 2203, 4 ) --//마나 실드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_ELVEN_RANGER"], 3202, 4 ) --//백덤블링 샷
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_ELVEN_RANGER"], 3204, 4 ) --//라이징 팔콘
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_ELVEN_RANGER"], 3205, 4 ) --//시즈모드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_FIGHTER"], 4205, 4 ) --//섀도우 스텝
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_FIGHTER"], 4206, 4 ) --//브레이킹 피스트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_FIGHTER"], 4203, 4 ) --//버닝 러시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_FIGHTER"], 4204, 4 ) --//그라운드 임팩트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_FIGHTER"], 4202, 4 ) --//메가드릴 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELESIS_KNIGHT"], 8200, 4 ) --//닷지&슬래시 
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELESIS_KNIGHT"], 8202, 4 ) --//러싱 소드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELESIS_KNIGHT"], 8201, 4 ) --//도약
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_EVE_NASOD"], 5205, 4 ) --//일루전 레이
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_EVE_NASOD"], 5202, 4 ) --//클로킹
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_EVE_NASOD"], 5207, 4 ) --//점멸
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_EVE_NASOD"], 5219, 4 ) --//엘 분광결정
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_CHUNG_IRON_CANNON"], 6203, 4 ) --//리로드 캐논
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_CHUNG_IRON_CANNON"], 6202, 4 ) --//임팩트 디토네이션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_CHUNG_IRON_CANNON"], 6205, 4 ) --//고정 포격
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARA_MARTIAL_ARTIST"], 7204, 4 ) --//흡공
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARA_MARTIAL_ARTIST"], 7207, 4 ) --//신속
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARA_MARTIAL_ARTIST"], 7206, 4 ) --//철산고
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARA_MARTIAL_ARTIST"], 7205, 4 ) --//천격
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARA_MARTIAL_ARTIST"], 7203, 4 ) --//기공창
		--1차
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_KNIGHT"], 1205, 4 ) --//구르기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_KNIGHT"], 1206, 4 ) --//소드 웨이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_KNIGHT"], 1202, 4 ) --//반격
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_KNIGHT"], 1207, 4 ) --//막기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_KNIGHT"], 1204, 3 ) --//발차기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_KNIGHT"], 1210, 3 ) --//웨폰 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_KNIGHT"], 1209, 3 ) --//아머 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_KNIGHT"], 1203, 3 ) --//극기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"], 1205, 4 ) --//구르기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"], 1206, 4 ) --//소드 웨이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"], 1202, 4 ) --//반격
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"], 1207, 4 ) --//막기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"], 1204, 3 ) --//발차기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"], 1217, 3 ) --//소드 인챈트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"], 1214, 3 ) --//대폭살
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"], 1203, 3 ) --//극기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"], 3202, 4 ) --//백덤블링 샷
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"], 3204, 4 ) --//라이징 팔콘
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"], 3205, 4 ) --//시즈모드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"], 3207, 3 ) --//로우 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"], 3208, 3 ) --//미들 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"], 3203, 3 ) --//리플렉트 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"], 3202, 4 ) --//백덤블링 샷
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"], 3204, 4 ) --//라이징 팔콘
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"], 3205, 4 ) --//시즈모드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"], 3215, 3 ) --//슈팅 매그넘
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"], 3214, 3 ) --//인탱글
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"], 3203, 3 ) --//리플렉트 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"], 2200, 4 ) --//체인 파이어볼
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"], 2206, 4 ) --//아이시클 웨이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"], 2205, 4 ) --//파이어 로드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"], 2202, 4 ) --//텔레포트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"], 2203, 4 ) --//마나 실드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"], 2208, 3 ) --//메디테이션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"], 2204, 3 ) --//서클 플레임
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"], 2200, 4 ) --//체인 파이어볼
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"], 2206, 4 ) --//아이시클 웨이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"], 2205, 4 ) --//파이어 로드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"], 2202, 4 ) --//텔레포트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"], 2203, 4 ) --//마나 실드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"], 2215, 3 ) --//마나 인테이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"], 2204, 3 ) --//서클 플레임
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"], 4205, 4 ) --//섀도우 스텝
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"], 4206, 4 ) --//브레이킹 피스트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"], 4203, 4 ) --//버닝 러시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"], 4204, 4 ) --//그라운드 임팩트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"], 4202, 4 ) --//메가드릴 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"], 4208, 3 ) --//컷텐던
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_OVER_TAKER"], 4205, 4 ) --//섀도우 스텝
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_OVER_TAKER"], 4206, 4 ) --//브레이킹 피스트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_OVER_TAKER"], 4203, 4 ) --//버닝 러시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_OVER_TAKER"], 4204, 4 ) --//그라운드 임팩트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_OVER_TAKER"], 4202, 4 ) --//메가드릴 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_OVER_TAKER"], 4214, 3 ) --//헬 다이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_OVER_TAKER"], 4216, 3 ) --//아머 크래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_OVER_TAKER"], 4215, 3 ) --//웨폰 크래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"], 5205, 4 ) --//일루전 레이
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"], 5202, 4 ) --//클로킹
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"], 5207, 4 ) --//점멸
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"], 5219, 4 ) --//엘 분광결정
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"], 5210, 3 ) --//메탈 더스트 오라
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"], 5204, 3 ) --//메가 일렉트론볼
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_EVE_ARCHITECTURE"], 5205, 4 ) --//일루전 레이
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_EVE_ARCHITECTURE"], 5202, 4 ) --//클로킹
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_EVE_ARCHITECTURE"], 5207, 4 ) --//점멸
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_EVE_ARCHITECTURE"], 5219, 4 ) --//엘 분광결정
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_EVE_ARCHITECTURE"], 5215, 3 ) --//오베론 가드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_EVE_ARCHITECTURE"], 5204, 3 ) --//메가 일렉트론볼
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"], 6203, 4 ) --//리로드 캐논
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"], 6202, 4 ) --//임팩트 디토네이션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"], 6205, 4 ) --//고정 포격
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"], 6207, 3 ) --//가드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"], 6208, 3 ) --//리프 어택
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"], 6204, 3 ) --//에이밍 샷
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"], 6203, 4 ) --//리로드 캐논
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"], 6202, 4 ) --//임팩트 디토네이션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"], 6205, 4 ) --//고정 포격
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"], 6212, 3 ) --//더블 파이어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"], 6214, 3 ) --//헤드 샷
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"], 6215, 3 ) --//매그넘 샷
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"], 6204, 3 ) --//에이밍 샷
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"], 1205, 4 ) --//구르기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"], 1206, 4 ) --//소드 웨이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"], 1202, 4 ) --//반격
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"], 1207, 4 ) --//막기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"], 1222, 3 ) --//소드 실드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"], 1204, 3 ) --//발차기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"], 1224, 3 ) --//피어싱 소드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"], 1223, 3 ) --//하쉬 체이서
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"], 1203, 3 ) --//극기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"], 2200, 4 ) --//체인 파이어볼
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"], 2206, 4 ) --//아이시클 웨이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"], 2205, 4 ) --//파이어 로드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"], 2202, 4 ) --//텔레포트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"], 2203, 4 ) --//마나 실드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"], 2219, 3 ) --//바이탈 드레인
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"], 2220, 3 ) --//에너지 드레인
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"], 2204, 3 ) --//서클 플레임
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"], 3202, 4 ) --//백덤블링 샷
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"], 3204, 4 ) --//라이징 팔콘
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"], 3205, 4 ) --//시즈모드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"], 3224, 3 ) --//구속의 씨앗
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"], 3225, 3 ) --//폭발의 덫
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"], 3228, 3 ) --//가시덩굴 덫
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"], 3229, 3 ) --//찔레 덫
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"], 3203, 3 ) --//리플렉트 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"], 4205, 4 ) --//섀도우 스텝
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"], 4206, 4 ) --//브레이킹 피스트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"], 4203, 4 ) --//버닝 러시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"], 4204, 4 ) --//그라운드 임팩트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"], 4202, 4 ) --//메가드릴 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"], 4219, 3 ) --//연무 폭파
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"], 4220, 3 ) --//화염인
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_EVE_ELECTRA"], 5205, 4 ) --//일루전 레이
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_EVE_ELECTRA"], 5202, 4 ) --//클로킹
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_EVE_ELECTRA"], 5207, 4 ) --//점멸
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_EVE_ELECTRA"], 5219, 4 ) --//엘 분광결정
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_EVE_ELECTRA"], 5204, 3 ) --//메가 일렉트론볼
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"], 6203, 4 ) --//리로드 캐논
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"], 6202, 4 ) --//임팩트 디토네이션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"], 6205, 4 ) --//고정 포격
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"], 6221, 3 ) --//일레스틱 밤 - 핸드 그리네이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"], 6222, 3 ) --//일레스틱 밤 - 그리네이드 런처
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"], 6223, 3 ) --//지휘관의 표식
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"], 6204, 3 ) --//에이밍 샷
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"], 7204, 4 ) --//흡공
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"], 7207, 4 ) --//신속
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"], 7206, 4 ) --//철산고
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"], 7205, 4 ) --//천격
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"], 7203, 4 ) --//기공창
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"], 7208, 3 ) --//맹호 1식 : 바위 깨기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"], 7211, 3 ) --//낙화
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"], 7202, 3 ) --//맹호 2식 : 호랑이 발톱
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"], 7209, 3 ) --//이화접목
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"], 7204, 4 ) --//흡공
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"], 7207, 4 ) --//신속
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"], 7206, 4 ) --//철산고
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"], 7205, 4 ) --//천격
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"], 7203, 4 ) --//기공창
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"], 7214, 3 ) --//낭아 3식 늑대 발톱
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"], 7215, 3 ) --//이혈공
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"], 7217, 3 ) --//이기공
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"], 7219, 3 ) --//반탄공
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"], 8200, 4 ) --//닷지&슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"], 8200, 4 ) --//닷지&슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"], 8202, 4 ) --//러싱 소드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"], 8202, 4 ) --//러싱 소드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"], 8201, 4 ) --//도약
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"], 8201, 4 ) --//도약
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"], 8203, 3 ) --//발차기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"], 8203, 3 ) --//발차기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"], 8210, 3 ) --//헤비 스터너
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"], 8210, 3 ) --//헤비 스터너
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"], 8209, 3 ) --//파워 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"], 8209, 3 ) --//파워 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"], 8207, 3 ) --//극기 - 강
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"], 8207, 3 ) --//극기 - 강
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"], 8200, 4 ) --//닷지&슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"], 8200, 4 ) --//닷지&슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"], 8202, 4 ) --//러싱 소드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"], 8202, 4 ) --//러싱 소드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"], 8201, 4 ) --//도약
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"], 8201, 4 ) --//도약
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"], 8213, 3 ) --//대폭살
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"], 8213, 3 ) --//대폭살
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"], 8203, 3 ) --//발차기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"], 8203, 3 ) --//발차기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"], 8207, 3 ) --//극기 - 강
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"], 8207, 3 ) --//극기 - 강
		--2차
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1205, 4 ) --//구르기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1206, 4 ) --//소드 웨이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1202, 4 ) --//반격
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1207, 4 ) --//막기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1204, 3 ) --//발차기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1210, 3 ) --//웨폰 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1209, 3 ) --//아머 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1203, 3 ) --//극기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1212, 2 ) --//롤링 스매시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1213, 2 ) --//임팩트 스매시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1205, 4 ) --//구르기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1206, 4 ) --//소드 웨이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1202, 4 ) --//반격
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1207, 4 ) --//막기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1204, 3 ) --//발차기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1217, 3 ) --//소드 인챈트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1214, 3 ) --//대폭살
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1203, 3 ) --//극기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1219, 2 ) --//초열의 룬
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1220, 2 ) --//한빙의 룬
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1218, 2 ) --//크리티컬 소드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3202, 4 ) --//백덤블링 샷
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3204, 4 ) --//라이징 팔콘
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3205, 4 ) --//시즈모드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3207, 3 ) --//로우 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3208, 3 ) --//미들 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3203, 3 ) --//리플렉트 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3209, 2 ) --//네이처 포스
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3211, 2 ) --//어설트 임팩트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3212, 2 ) --//백 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3213, 2 ) --//하이 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3202, 4 ) --//백덤블링 샷
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3204, 4 ) --//라이징 팔콘
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3205, 4 ) --//시즈모드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3215, 3 ) --//슈팅 매그넘
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3214, 3 ) --//인탱글
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3203, 3 ) --//리플렉트 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3220, 2 ) --//래피드 샷
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3219, 2 ) --//아크 샷
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3222, 2 ) --//낙인의 사격
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"], 2200, 4 ) --//체인 파이어볼
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"], 2206, 4 ) --//아이시클 웨이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"], 2205, 4 ) --//파이어 로드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"], 2202, 4 ) --//텔레포트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"], 2203, 4 ) --//마나 실드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"], 2208, 3 ) --//메디테이션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"], 2204, 3 ) --//서클 플레임
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"], 2212, 2 ) --//샤이닝 바디
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"], 2210, 2 ) --//스태츄 오브 글로리
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_VOID_PRINCESS"], 2200, 4 ) --//체인 파이어볼
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_VOID_PRINCESS"], 2206, 4 ) --//아이시클 웨이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_VOID_PRINCESS"], 2205, 4 ) --//파이어 로드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_VOID_PRINCESS"], 2202, 4 ) --//텔레포트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_VOID_PRINCESS"], 2203, 4 ) --//마나 실드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_VOID_PRINCESS"], 2215, 3 ) --//마나 인테이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_VOID_PRINCESS"], 2204, 3 ) --//서클 플레임
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_VOID_PRINCESS"], 2218, 2 ) --//섀도우 바디
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_VOID_PRINCESS"], 2216, 2 ) --//쁘띠 앙고르 - 타임 밤
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_VOID_PRINCESS"], 2217, 2 ) --//쁘띠 앙고르 - 헤비 돌
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"], 4205, 4 ) --//섀도우 스텝
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"], 4206, 4 ) --//브레이킹 피스트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"], 4203, 4 ) --//버닝 러시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"], 4204, 4 ) --//그라운드 임팩트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"], 4202, 4 ) --//메가드릴 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"], 4208, 3 ) --//컷텐던
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"], 4209, 2 ) --//일섬
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"], 4210, 2 ) --//소닉 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4205, 4 ) --//섀도우 스텝
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4206, 4 ) --//브레이킹 피스트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4203, 4 ) --//버닝 러시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4204, 4 ) --//그라운드 임팩트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4202, 4 ) --//메가드릴 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4214, 3 ) --//헬 다이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4216, 3 ) --//아머 크래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4215, 3 ) --//웨폰 크래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4218, 2 ) --//리미트 크러셔
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_EVE_CODE_NEMESIS"], 5205, 4 ) --//일루전 레이
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_EVE_CODE_NEMESIS"], 5202, 4 ) --//클로킹
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_EVE_CODE_NEMESIS"], 5207, 4 ) --//점멸
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_EVE_CODE_NEMESIS"], 5219, 4 ) --//엘 분광결정
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_EVE_CODE_NEMESIS"], 5210, 3 ) --//메탈 더스트 오라
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_EVE_CODE_NEMESIS"], 5204, 3 ) --//메가 일렉트론볼
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_EVE_CODE_NEMESIS"], 5213, 2 ) --//스피어 버스트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_EVE_CODE_NEMESIS"], 5206, 2 ) --//테슬라 쇼크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_EVE_CODE_NEMESIS"], 5203, 2 ) --//마력 전환
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_EVE_CODE_EMPRESS"], 5205, 4 ) --//일루전 레이
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_EVE_CODE_EMPRESS"], 5202, 4 ) --//클로킹
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_EVE_CODE_EMPRESS"], 5207, 4 ) --//점멸
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_EVE_CODE_EMPRESS"], 5219, 4 ) --//엘 분광결정
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_EVE_CODE_EMPRESS"], 5215, 3 ) --//오베론 가드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_EVE_CODE_EMPRESS"], 5204, 3 ) --//메가 일렉트론볼
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_EVE_CODE_EMPRESS"], 5206, 2 ) --//테슬라 쇼크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_EVE_CODE_EMPRESS"], 5216, 2 ) --//스핏 파이어 - 플러시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_EVE_CODE_EMPRESS"], 5217, 2 ) --//스핏 파이어 - 그리네이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_EVE_CODE_EMPRESS"], 5203, 2 ) --//마력 전환
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6203, 4 ) --//리로드 캐논
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6202, 4 ) --//임팩트 디토네이션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6205, 4 ) --//고정 포격
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6207, 3 ) --//가드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6208, 3 ) --//리프 어택
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6204, 3 ) --//에이밍 샷
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6209, 2 ) --//서든 버스터
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6210, 2 ) --//아틸러리 노바
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6203, 4 ) --//리로드 캐논
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6202, 4 ) --//임팩트 디토네이션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6205, 4 ) --//고정 포격
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6212, 3 ) --//더블 파이어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6214, 3 ) --//헤드 샷
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6215, 3 ) --//매그넘 샷
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6204, 3 ) --//에이밍 샷
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6219, 2 ) --//레그 샷
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6216, 2 ) --//럼블 샷
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6218, 2 ) --//래피드 캐논
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1205, 4 ) --//구르기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1206, 4 ) --//소드 웨이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1202, 4 ) --//반격
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1207, 4 ) --//막기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1222, 3 ) --//소드 실드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1204, 3 ) --//발차기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1224, 3 ) --//피어싱 소드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1223, 3 ) --//하쉬 체이서
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1203, 3 ) --//극기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1226, 2 ) --//미라지 스팅
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1227, 2 ) --//페이탈 슬랩
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2200, 4 ) --//체인 파이어볼
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2206, 4 ) --//아이시클 웨이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2205, 4 ) --//파이어 로드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2202, 4 ) --//텔레포트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2203, 4 ) --//마나 실드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2219, 3 ) --//바이탈 드레인
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2220, 3 ) --//에너지 드레인
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2204, 3 ) --//서클 플레임
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2222, 2 ) --//에너제틱 바디
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2221, 2 ) --//공간 왜곡
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2225, 2 ) --//웜홀
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3202, 4 ) --//백덤블링 샷
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3204, 4 ) --//라이징 팔콘
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3205, 4 ) --//시즈모드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3224, 3 ) --//구속의 씨앗
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3225, 3 ) --//폭발의 덫
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3228, 3 ) --//가시덩굴 덫
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3229, 3 ) --//찔레 덫
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3203, 3 ) --//리플렉트 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3227, 2 ) --//지연의 신호탄
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3230, 1 ) --//진노의 씨앗
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3231, 1 ) --//엘드랏실의 분노
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4205, 4 ) --//섀도우 스텝
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4206, 4 ) --//브레이킹 피스트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4203, 4 ) --//버닝 러시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4204, 4 ) --//그라운드 임팩트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4202, 4 ) --//메가드릴 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4219, 3 ) --//연무 폭파
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4220, 3 ) --//화염인
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4222, 2 ) --//네이팜 그리네이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4221, 2 ) --//치명상
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"], 5205, 4 ) --//일루전 레이
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"], 5202, 4 ) --//클로킹
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"], 5207, 4 ) --//점멸
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"], 5219, 4 ) --//엘 분광결정
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"], 5204, 3 ) --//메가 일렉트론볼
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"], 5220, 2 ) --//테이저 필라
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"], 5221, 2 ) --//쿠글블릿츠
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"], 5206, 2 ) --//테슬라 쇼크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"], 5203, 2 ) --//마력 전환
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6203, 4 ) --//리로드 캐논
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6202, 4 ) --//임팩트 디토네이션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6205, 4 ) --//고정 포격
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6221, 3 ) --//일레스틱 밤 - 핸드 그리네이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6222, 3 ) --//일레스틱 밤 - 그리네이드 런처
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6223, 3 ) --//지휘관의 표식
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6204, 3 ) --//에이밍 샷
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6225, 2 ) --//박격포
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6226, 1 ) --//지원 포격
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7204, 4 ) --//흡공
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7207, 4 ) --//신속
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7206, 4 ) --//철산고
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7205, 4 ) --//천격
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7203, 4 ) --//기공창
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7208, 3 ) --//맹호 1식 : 바위 깨기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7211, 3 ) --//낙화
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7202, 3 ) --//맹호 2식 : 호랑이 발톱
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7209, 3 ) --//이화접목
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7213, 2 ) --//맹호 3식 : 지축
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARA_YAMA_RAJA"], 7204, 4 ) --//흡공
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARA_YAMA_RAJA"], 7207, 4 ) --//신속
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARA_YAMA_RAJA"], 7206, 4 ) --//철산고
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARA_YAMA_RAJA"], 7205, 4 ) --//천격
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARA_YAMA_RAJA"], 7203, 4 ) --//기공창
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARA_YAMA_RAJA"], 7214, 3 ) --//낭아 3식 늑대 발톱
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARA_YAMA_RAJA"], 7215, 3 ) --//이혈공
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARA_YAMA_RAJA"], 7217, 3 ) --//이기공
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARA_YAMA_RAJA"], 7219, 3 ) --//반탄공
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ARA_YAMA_RAJA"], 7216, 2 ) --//쾌속


--46117	모든 전직 1필 스킬Lv+		--(신규)강인한 기술의 반지
		--노전직
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ELSWORD_SWORDMAN"], 1200, 4 ) --//메가 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ELSWORD_SWORDMAN"], 1201, 4 ) --//어설트 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ARME_VIOLET_MAGE"], 2201, 4 ) --//바인딩 서클
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_LIRE_ELVEN_RANGER"], 3201, 4 ) --//어설트 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_LIRE_ELVEN_RANGER"], 3200, 4 ) --//레일 스팅어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_RAVEN_FIGHTER"], 4201, 4 ) --//어스 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_RAVEN_FIGHTER"], 4200, 4 ) --//맥시멈 캐논
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ELESIS_KNIGHT"], 8205, 4 ) --//소닉 어설트 - 스탭
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ELESIS_KNIGHT"], 8206, 4 ) --//소닉 어설트 - 스팅
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ELESIS_KNIGHT"], 8204, 4 ) --//메가 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_EVE_NASOD"], 5201, 4 ) --//디멘션 링크 - 센트리
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_EVE_NASOD"], 5200, 4 ) --//일루전 스트라이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_CHUNG_IRON_CANNON"], 6200, 4 ) --//브루탈 스윙
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_CHUNG_IRON_CANNON"], 6201, 4 ) --//디토네이션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ARA_MARTIAL_ARTIST"], 7001, 4 ) --//선풍
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ARA_MARTIAL_ARTIST"], 7200, 4 ) --//낭아 2식 : 바람 쐐기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ARA_MARTIAL_ARTIST"], 7201, 4 ) --//그림자 꽃망울
		--1차
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ELSWORD_KNIGHT"], 1200, 4 ) --//메가 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ELSWORD_KNIGHT"], 1201, 4 ) --//어설트 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ELSWORD_KNIGHT"], 1208, 3 ) --//에어 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"], 1200, 4 ) --//메가 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"], 1201, 4 ) --//어설트 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"], 1215, 3 ) --//윈드 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"], 3201, 4 ) --//어설트 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"], 3200, 4 ) --//레일 스팅어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"], 3206, 3 ) --//스피닝 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"], 3201, 4 ) --//어설트 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"], 3200, 4 ) --//레일 스팅어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"], 3216, 3 ) --//허밍 윈드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"], 2201, 4 ) --//바인딩 서클
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"], 2207, 3 ) --//사이클론
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"], 2201, 4 ) --//바인딩 서클
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"], 2213, 3 ) --//헬 스톤
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"], 2214, 3 ) --//헬 드롭
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"], 4201, 4 ) --//어스 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"], 4200, 4 ) --//맥시멈 캐논
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"], 4207, 3 ) --//버서커 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_RAVEN_OVER_TAKER"], 4201, 4 ) --//어스 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_RAVEN_OVER_TAKER"], 4200, 4 ) --//맥시멈 캐논
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_RAVEN_OVER_TAKER"], 4212, 3 ) --//차지드 볼트 - 헤지호그
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_RAVEN_OVER_TAKER"], 4213, 3 ) --//차지드 볼트 - 블러디 쏜즈
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"], 5201, 4 ) --//디멘션 링크 - 센트리
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"], 5200, 4 ) --//일루전 스트라이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"], 5004, 3 ) --//익스플로전 임팩트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"], 5208, 3 ) --//호넷 스팅 - 익스플로전
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"], 5209, 3 ) --//호넷 스팅 - 쉐이프트 차지
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_EVE_ARCHITECTURE"], 5201, 4 ) --//디멘션 링크 - 센트리
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_EVE_ARCHITECTURE"], 5200, 4 ) --//일루전 스트라이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"], 6200, 4 ) --//브루탈 스윙
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"], 6201, 4 ) --//디토네이션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"], 6206, 3 ) --//스틸 엣지
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"], 6200, 4 ) --//브루탈 스윙
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"], 6201, 4 ) --//디토네이션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"], 6213, 3 ) --//듀얼 버스터
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"], 1200, 4 ) --//메가 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"], 1201, 4 ) --//어설트 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"], 2201, 4 ) --//바인딩 서클
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"], 3201, 4 ) --//어설트 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"], 3200, 4 ) --//레일 스팅어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"], 3223, 3 ) --//이보크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"], 4201, 4 ) --//어스 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"], 4200, 4 ) --//맥시멈 캐논
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"], 4015, 3 ) --//버스팅 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_EVE_ELECTRA"], 5201, 4 ) --//디멘션 링크 - 센트리
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_EVE_ELECTRA"], 5200, 4 ) --//일루전 스트라이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_EVE_ELECTRA"], 5016, 3 ) --//파티클 레이
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"], 6200, 4 ) --//브루탈 스윙
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"], 6201, 4 ) --//디토네이션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"], 6220, 3 ) --//캐논 스트라이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"], 7001, 4 ) --//선풍
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"], 7200, 4 ) --//낭아 2식 : 바람 쐐기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"], 7201, 4 ) --//그림자 꽃망울
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"], 7210, 3 ) --//용아 3식 : 팔괘장
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"], 7001, 4 ) --//선풍
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"], 7200, 4 ) --//낭아 2식 : 바람 쐐기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"], 7201, 4 ) --//그림자 꽃망울
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"], 7009, 3 ) --//나찰 1식 흡혼
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"], 7010, 3 ) --//낭아 4식 늑대 이빨
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"], 8205, 4 ) --//소닉 어설트 - 스탭
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"], 8205, 4 ) --//소닉 어설트 - 스탭
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"], 8206, 4 ) --//소닉 어설트 - 스팅
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"], 8206, 4 ) --//소닉 어설트 - 스팅
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"], 8204, 4 ) --//메가 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"], 8204, 4 ) --//메가 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"], 8208, 3 ) --//크로스 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"], 8208, 3 ) --//크로스 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"], 8205, 4 ) --//소닉 어설트 - 스탭
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"], 8205, 4 ) --//소닉 어설트 - 스탭
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"], 8206, 4 ) --//소닉 어설트 - 스팅
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"], 8206, 4 ) --//소닉 어설트 - 스팅
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"], 8204, 4 ) --//메가 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"], 8204, 4 ) --//메가 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"], 8211, 3 ) --//소드 이럽션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"], 8211, 3 ) --//소드 이럽션
		--2차
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1200, 4 ) --//메가 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1201, 4 ) --//어설트 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1208, 3 ) --//에어 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1211, 2 ) --//소닉 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1200, 4 ) --//메가 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1201, 4 ) --//어설트 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1215, 3 ) --//윈드 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1216, 2 ) --//스플래시 익스플로전
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3201, 4 ) --//어설트 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3200, 4 ) --//레일 스팅어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3206, 3 ) --//스피닝 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3210, 2 ) --//슬라이드 더블 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3008, 2 ) --//아이레린나 - 님프
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3009, 2 ) --//아이레린나 - 실프
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3201, 4 ) --//어설트 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3200, 4 ) --//레일 스팅어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3216, 3 ) --//허밍 윈드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3217, 2 ) --//프리징 애로우 - 스팅
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3218, 2 ) --//프리징 애로우 - 드리즐
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"], 2201, 4 ) --//바인딩 서클
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"], 2207, 3 ) --//사이클론
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"], 2209, 2 ) --//체인 버스트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"], 2211, 2 ) --//워터 캐논
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ARME_VOID_PRINCESS"], 2201, 4 ) --//바인딩 서클
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ARME_VOID_PRINCESS"], 2213, 3 ) --//헬 스톤
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ARME_VOID_PRINCESS"], 2214, 3 ) --//헬 드롭
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"], 4201, 4 ) --//어스 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"], 4200, 4 ) --//맥시멈 캐논
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"], 4207, 3 ) --//버서커 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"], 4211, 2 ) --//울프 팽
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4201, 4 ) --//어스 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4200, 4 ) --//맥시멈 캐논
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4212, 3 ) --//차지드 볼트 - 헤지호그
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4213, 3 ) --//차지드 볼트 - 블러디 쏜즈
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4217, 2 ) --//엑스 크래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_EVE_CODE_NEMESIS"], 5201, 4 ) --//디멘션 링크 - 센트리
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_EVE_CODE_NEMESIS"], 5200, 4 ) --//일루전 스트라이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_EVE_CODE_NEMESIS"], 5004, 3 ) --//익스플로전 임팩트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_EVE_CODE_NEMESIS"], 5208, 3 ) --//호넷 스팅 - 익스플로전
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_EVE_CODE_NEMESIS"], 5209, 3 ) --//호넷 스팅 - 쉐이프트 차지
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_EVE_CODE_NEMESIS"], 5211, 2 ) --//아토믹 블래스터 - 플라즈마 건
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_EVE_CODE_NEMESIS"], 5212, 2 ) --//아토믹 블래스터 - 소닉 건
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_EVE_CODE_NEMESIS"], 5008, 2 ) --//아토믹 실드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_EVE_CODE_EMPRESS"], 5201, 4 ) --//디멘션 링크 - 센트리
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_EVE_CODE_EMPRESS"], 5200, 4 ) --//일루전 스트라이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_EVE_CODE_EMPRESS"], 5214, 2 ) --//서피스 커팅
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_EVE_CODE_EMPRESS"], 5218, 2 ) --//일렉트로닉 필드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6200, 4 ) --//브루탈 스윙
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6201, 4 ) --//디토네이션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6206, 3 ) --//스틸 엣지
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6211, 2 ) --//버스트 울프
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6224, 2 ) --//원더 월
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6200, 4 ) --//브루탈 스윙
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6201, 4 ) --//디토네이션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6213, 3 ) --//듀얼 버스터
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6217, 2 ) --//뷸렛 블릿츠
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1200, 4 ) --//메가 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1201, 4 ) --//어설트 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1221, 2 ) --//크레센트 컷
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1225, 2 ) --//소드 블래스팅
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2201, 4 ) --//바인딩 서클
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2223, 2 ) --//헤비 프레스
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2224, 2 ) --//임팩트 해머
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3201, 4 ) --//어설트 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3200, 4 ) --//레일 스팅어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3223, 3 ) --//이보크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3226, 2 ) --//퓨리어스 인게이지
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4201, 4 ) --//어스 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4200, 4 ) --//맥시멈 캐논
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4015, 3 ) --//버스팅 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4021, 2 ) --//데들리 레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"], 5201, 4 ) --//디멘션 링크 - 센트리
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"], 5200, 4 ) --//일루전 스트라이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"], 5016, 3 ) --//파티클 레이
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"], 5022, 2 ) --//에너지 니들스
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"], 5023, 2 ) --//에너제틱 하트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6200, 4 ) --//브루탈 스윙
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6201, 4 ) --//디토네이션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6220, 3 ) --//캐논 스트라이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6224, 2 ) --//원더 월
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7001, 4 ) --//선풍
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7200, 4 ) --//낭아 2식 : 바람 쐐기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7201, 4 ) --//그림자 꽃망울
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7210, 3 ) --//용아 3식 : 팔괘장
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7212, 2 ) --//맹호 4식 : 노도
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ARA_YAMA_RAJA"], 7001, 4 ) --//선풍
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ARA_YAMA_RAJA"], 7200, 4 ) --//낭아 2식 : 바람 쐐기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ARA_YAMA_RAJA"], 7201, 4 ) --//그림자 꽃망울
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ARA_YAMA_RAJA"], 7009, 3 ) --//나찰 1식 흡혼
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ARA_YAMA_RAJA"], 7010, 3 ) --//낭아 4식 늑대 이빨
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ARA_YAMA_RAJA"], 7013, 2 ) --//낭아 4식 늑대 이빨

--46118	모든 전직 2필 스킬Lv+		--(신규)강렬한 기술의 반지
		--노전직
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELSWORD_SWORDMAN"], 1001, 4 ) --//플레임 게이저
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELSWORD_SWORDMAN"], 1000, 4 ) --//페이탈 퓨리
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ARME_VIOLET_MAGE"], 2001, 4 ) --//라이트닝 볼트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ARME_VIOLET_MAGE"], 2000, 4 ) --//거스트 스크류
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_LIRE_ELVEN_RANGER"], 3001, 4 ) --//멀티플 스팅어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_LIRE_ELVEN_RANGER"], 3000, 4 ) --//퍼펙트 스톰
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_RAVEN_FIGHTER"], 4000, 4 ) --//파워 어설트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_RAVEN_FIGHTER"], 4001, 4 ) --//캐논 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELESIS_KNIGHT"], 8001, 4 ) --//파워 버스터
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELESIS_KNIGHT"], 8000, 4 ) --//와일드 쇼크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_EVE_NASOD"], 5001, 4 ) --//디멘션 링크 - 블레이더
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_EVE_NASOD"], 5000, 4 ) --//일루전 스팅어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_CHUNG_IRON_CANNON"], 6000, 4 ) --//루나틱 블로우
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_CHUNG_IRON_CANNON"], 6001, 4 ) --//스케어 체이스
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ARA_MARTIAL_ARTIST"], 7000, 4 ) --//용아 2식 : 빨래 널기
		--1차
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELSWORD_KNIGHT"], 1001, 4 ) --//플레임 게이저
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELSWORD_KNIGHT"], 1000, 4 ) --//페이탈 퓨리
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELSWORD_KNIGHT"], 1004, 3 ) --//스파이럴 블래스트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"], 1001, 4 ) --//플레임 게이저
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"], 1000, 4 ) --//페이탈 퓨리
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"], 1009, 3 ) --//라이징 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"], 1010, 3 ) --//라이징 웨이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"], 3001, 4 ) --//멀티플 스팅어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"], 3000, 4 ) --//퍼펙트 스톰
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"], 3004, 3 ) --//크레센트 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"], 3001, 4 ) --//멀티플 스팅어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"], 3000, 4 ) --//퍼펙트 스톰
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"], 3010, 3 ) --//가이드 애로우
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"], 2001, 4 ) --//라이트닝 볼트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"], 2000, 4 ) --//거스트 스크류
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"], 2004, 3 ) --//매직 미사일
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"], 2006, 3 ) --//체인 라이트닝
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"], 2001, 4 ) --//라이트닝 볼트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"], 2000, 4 ) --//거스트 스크류
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"], 2010, 3 ) --//다크 클라우드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"], 2012, 3 ) --//데스 필드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"], 4000, 4 ) --//파워 어설트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"], 4001, 4 ) --//캐논 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"], 4004, 3 ) --//쇼크 웨이브 - 디바이더
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"], 4005, 3 ) --//쇼크 웨이브 - 커터
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_RAVEN_OVER_TAKER"], 4000, 4 ) --//파워 어설트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_RAVEN_OVER_TAKER"], 4001, 4 ) --//캐논 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_RAVEN_OVER_TAKER"], 4012, 3 ) --//발키리스 자벨린
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"], 5001, 4 ) --//디멘션 링크 - 블레이더
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"], 5000, 4 ) --//일루전 스팅어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_EVE_ARCHITECTURE"], 5001, 4 ) --//디멘션 링크 - 블레이더
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_EVE_ARCHITECTURE"], 5000, 4 ) --//일루전 스팅어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_EVE_ARCHITECTURE"], 5010, 3 ) --//소닉 웨이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"], 6000, 4 ) --//루나틱 블로우
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"], 6001, 4 ) --//스케어 체이스
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"], 6006, 3 ) --//판데모니움 - 피어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"], 6005, 3 ) --//판데모니움 - 카오스
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"], 6000, 4 ) --//루나틱 블로우
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"], 6001, 4 ) --//스케어 체이스
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"], 6012, 3 ) --//헤비 레일건
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"], 1001, 4 ) --//플레임 게이저
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"], 1000, 4 ) --//페이탈 퓨리
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"], 1018, 3 ) --//소드 폴
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"], 2001, 4 ) --//라이트닝 볼트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"], 2000, 4 ) --//거스트 스크류
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"], 2018, 3 ) --//길로틴 프레스
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"], 2019, 3 ) --//매지컬 메이크업
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"], 2016, 3 ) --//에너지 스퍼트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"], 3001, 4 ) --//멀티플 스팅어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"], 3000, 4 ) --//퍼펙트 스톰
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"], 3015, 3 ) --//페이탈리티
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"], 4000, 4 ) --//파워 어설트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"], 4001, 4 ) --//캐논 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"], 4018, 3 ) --//하푼 스피어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"], 4016, 3 ) --//리볼버 캐논 - OP탄
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"], 4017, 3 ) --//리볼버 캐논 - HE탄
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_EVE_ELECTRA"], 5001, 4 ) --//디멘션 링크 - 블레이더
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_EVE_ELECTRA"], 5000, 4 ) --//일루전 스팅어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_EVE_ELECTRA"], 5017, 3 ) --//스위프 롤링 - 오버차지
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_EVE_ELECTRA"], 5018, 3 ) --//스위프 롤링 - 트라이 발칸
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_EVE_ELECTRA"], 5019, 3 ) --//포톤 플레어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"], 6000, 4 ) --//루나틱 블로우
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"], 6001, 4 ) --//스케어 체이스
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"], 6016, 3 ) --//빅뱅 스트림
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"], 7000, 4 ) --//용아 2식 : 빨래 널기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"], 7004, 3 ) --//용아 4식 : 달빛 베기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"], 7000, 4 ) --//용아 2식 : 빨래 널기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"], 7011, 3 ) --//기공파
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"], 7015, 3 ) --//나찰 3식 창살감옥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"], 8001, 4 ) --//파워 버스터
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"], 8001, 4 ) --//파워 버스터
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"], 8000, 4 ) --//와일드 쇼크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"], 8000, 4 ) --//와일드 쇼크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"], 8004, 3 ) --//스파이럴 블래스트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"], 8004, 3 ) --//스파이럴 블래스트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"], 8005, 3 ) --//세이버 - 익스팅션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"], 8005, 3 ) --//세이버 - 익스팅션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"], 8001, 4 ) --//파워 버스터
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"], 8001, 4 ) --//파워 버스터
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"], 8000, 4 ) --//와일드 쇼크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"], 8000, 4 ) --//와일드 쇼크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"], 8008, 3 ) --//버스트 라이징
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"], 8008, 3 ) --//버스트 라이징
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"], 8009, 3 ) --//버스트 웨이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"], 8009, 3 ) --//버스트 웨이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"], 8010, 3 ) --//소드 파이어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"], 8010, 3 ) --//소드 파이어
		--2차
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1001, 4 ) --//플레임 게이저
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1000, 4 ) --//페이탈 퓨리
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1004, 3 ) --//스파이럴 블래스트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1007, 2 ) --//윈드밀
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1008, 2 ) --//샌드 스톰
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1001, 4 ) --//플레임 게이저
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1000, 4 ) --//페이탈 퓨리
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1009, 3 ) --//라이징 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1010, 3 ) --//라이징 웨이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1014, 2 ) --//루나 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3001, 4 ) --//멀티플 스팅어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3000, 4 ) --//퍼펙트 스톰
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3004, 3 ) --//크레센트 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3007, 2 ) --//샤프 폴
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3001, 4 ) --//멀티플 스팅어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3000, 4 ) --//퍼펙트 스톰
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3010, 3 ) --//가이드 애로우
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3014, 2 ) --//에어로 스트레이프
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3221, 2 ) --//윈드 블래스트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3012, 2 ) --//윈드 워드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"], 2001, 4 ) --//라이트닝 볼트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"], 2000, 4 ) --//거스트 스크류
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"], 2004, 3 ) --//매직 미사일
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"], 2006, 3 ) --//체인 라이트닝
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"], 2008, 2 ) --//메테오 샤워
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"], 2009, 2 ) --//라이트닝 샤워
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ARME_VOID_PRINCESS"], 2001, 4 ) --//라이트닝 볼트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ARME_VOID_PRINCESS"], 2000, 4 ) --//거스트 스크류
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ARME_VOID_PRINCESS"], 2010, 3 ) --//다크 클라우드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ARME_VOID_PRINCESS"], 2012, 3 ) --//데스 필드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ARME_VOID_PRINCESS"], 2014, 2 ) --//팬텀 브리딩 - 다크 폴
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ARME_VOID_PRINCESS"], 2015, 2 ) --//팬텀 브리딩 - 다크 홀
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"], 4000, 4 ) --//파워 어설트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"], 4001, 4 ) --//캐논 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"], 4004, 3 ) --//쇼크 웨이브 - 디바이더
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"], 4005, 3 ) --//쇼크 웨이브 - 커터
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"], 4007, 2 ) --//플라잉 임팩트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"], 4008, 2 ) --//기가 드라이브 - 리미터
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"], 4009, 2 ) --//기가 드라이브 - 사이즈믹 트레몰
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4000, 4 ) --//파워 어설트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4001, 4 ) --//캐논 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4012, 3 ) --//발키리스 자벨린
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4014, 2 ) --//와일드 차지
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4010, 2 ) --//아크 에너미
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_EVE_CODE_NEMESIS"], 5001, 4 ) --//디멘션 링크 - 블레이더
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_EVE_CODE_NEMESIS"], 5000, 4 ) --//일루전 스팅어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_EVE_CODE_NEMESIS"], 5007, 2 ) --//아이언 스크랩스
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_EVE_CODE_NEMESIS"], 5009, 2 ) --//어설트 스피어 - 저지먼트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_EVE_CODE_EMPRESS"], 5001, 4 ) --//디멘션 링크 - 블레이더
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_EVE_CODE_EMPRESS"], 5000, 4 ) --//일루전 스팅어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_EVE_CODE_EMPRESS"], 5010, 3 ) --//소닉 웨이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_EVE_CODE_EMPRESS"], 5015, 2 ) --//어설트 스피어 - 버스터
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_EVE_CODE_EMPRESS"], 5014, 2 ) --//스페이스 렌치
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6000, 4 ) --//루나틱 블로우
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6001, 4 ) --//스케어 체이스
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6006, 3 ) --//판데모니움 - 피어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6005, 3 ) --//판데모니움 - 카오스
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6008, 2 ) --//아이언 하울링
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6009, 2 ) --//랜드 디몰리셔 - 헤비 암즈
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6010, 2 ) --//랜드 디몰리셔 - 어스퀘이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6000, 4 ) --//루나틱 블로우
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6001, 4 ) --//스케어 체이스
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6012, 3 ) --//헤비 레일건
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6015, 2 ) --//샤프슈터 신드롬
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6014, 2 ) --//카밋 크래셔
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1001, 4 ) --//플레임 게이저
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1000, 4 ) --//페이탈 퓨리
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1018, 3 ) --//소드 폴
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1019, 2 ) --//레이지 커터
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1017, 2 ) --//메일스톰 레이지
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2001, 4 ) --//라이트닝 볼트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2000, 4 ) --//거스트 스크류
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2018, 3 ) --//길로틴 프레스
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2019, 3 ) --//매지컬 메이크업
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2016, 3 ) --//에너지 스퍼트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2020, 2 ) --//스크류 드라이버 - 토네이도
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2021, 2 ) --//스크류 드라이버 - 드릴러
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3001, 4 ) --//멀티플 스팅어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3000, 4 ) --//퍼펙트 스톰
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3015, 3 ) --//페이탈리티
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3016, 2 ) --//트래핑 애로우 - 버스터
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3017, 2 ) --//트래핑 애로우 - 펑거스
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3020, 2 ) --//글라이딩 스트라이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4000, 4 ) --//파워 어설트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4001, 4 ) --//캐논 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4018, 3 ) --//하푼 스피어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4016, 3 ) --//리볼버 캐논 - OP탄
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4017, 3 ) --//리볼버 캐논 - HE탄
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4022, 2 ) --//이그니션 크로우 - 네이팜
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4023, 2 ) --//이그니션 크로우 - 인시너레이션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"], 5001, 4 ) --//디멘션 링크 - 블레이더
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"], 5000, 4 ) --//일루전 스팅어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"], 5017, 3 ) --//스위프 롤링 - 오버차지
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"], 5018, 3 ) --//스위프 롤링 - 트라이 발칸
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"], 5019, 3 ) --//포톤 플레어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"], 5021, 2 ) --//사우전드 스타
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6000, 4 ) --//루나틱 블로우
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6001, 4 ) --//스케어 체이스
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6016, 3 ) --//빅뱅 스트림
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6021, 2 ) --//택티컬 필드 - 인듀런스
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6022, 2 ) --//택티컬 필드 - 레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6020, 2 ) --//드레드 체이스
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6019, 2 ) --//아틸러리 스트라이크 - 미슬 샤워
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7000, 4 ) --//용아 2식 : 빨래 널기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7004, 3 ) --//용아 4식 : 달빛 베기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7005, 2 ) --//무쌍참
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ARA_YAMA_RAJA"], 7000, 4 ) --//용아 2식 : 빨래 널기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ARA_YAMA_RAJA"], 7011, 3 ) --//기공파									2013.11.06 신진섭
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ARA_YAMA_RAJA"], 7015, 3 ) --//나찰 3식 창살감옥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ARA_YAMA_RAJA"], 7218, 2 ) --//나찰 4식 탈혼

--46119	모든 전직 3필 스킬Lv+		--(신규)초월한 기술의 반지
		--노전직
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELSWORD_SWORDMAN"], 1002, 4 ) --//언리미티드 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELSWORD_SWORDMAN"], 1003, 4 ) --//트리플 게이저
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ARME_VIOLET_MAGE"], 2003, 4 ) --//아이스 스톰
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ARME_VIOLET_MAGE"], 2002, 4 ) --//거스트 스톰
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_LIRE_ELVEN_RANGER"], 3003, 4 ) --//피닉스 스트라이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_LIRE_ELVEN_RANGER"], 3002, 4 ) --//에어로 토네이도
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_RAVEN_FIGHTER"], 4002, 4 ) --//세븐 버스트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELESIS_KNIGHT"], 8003, 4 ) --//언리미티드 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELESIS_KNIGHT"], 8002, 4 ) --//메가 버스터
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_EVE_NASOD"], 5003, 4 ) --//디멘션 링크 - 가디언
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_EVE_NASOD"], 5002, 4 ) --//제네레이트 블랙홀
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_CHUNG_IRON_CANNON"], 6002, 4 ) --//기간틱 임팩트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_CHUNG_IRON_CANNON"], 6003, 4 ) --//아겔다마
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ARA_MARTIAL_ARTIST"], 7003, 4 ) --//귀살 3식 : 그림자 매듭
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ARA_MARTIAL_ARTIST"], 7002, 4 ) --//강룡추
		--1차
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELSWORD_KNIGHT"], 1002, 4 ) --//언리미티드 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELSWORD_KNIGHT"], 1003, 4 ) --//트리플 게이저
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELSWORD_KNIGHT"], 1006, 3 ) --//더블 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELSWORD_KNIGHT"], 1005, 3 ) --//아마겟돈 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"], 1002, 4 ) --//언리미티드 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"], 1003, 4 ) --//트리플 게이저
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"], 1011, 3 ) --//소드 파이어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"], 1012, 3 ) --//피닉스 탤런
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"], 3003, 4 ) --//피닉스 스트라이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"], 3002, 4 ) --//에어로 토네이도
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"], 3005, 3 ) --//다이브킥 봄잉
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"], 3006, 3 ) --//바이올런트 어택
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"], 3003, 4 ) --//피닉스 스트라이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"], 3002, 4 ) --//에어로 토네이도
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"], 3011, 3 ) --//크레이지 샷
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"], 3013, 3 ) --//궁그닐
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"], 2003, 4 ) --//아이스 스톰
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"], 2002, 4 ) --//거스트 스톰
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"], 2007, 3 ) --//블레이즈 스텝
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"], 2005, 3 ) --//블리자드 샤워
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"], 2003, 4 ) --//아이스 스톰
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"], 2002, 4 ) --//거스트 스톰
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"], 2013, 3 ) --//에이징
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"], 2011, 3 ) --//플라즈마 커터
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"], 4002, 4 ) --//세븐 버스트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"], 4003, 3 ) --//하이퍼 소닉 스탭
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"], 4006, 3 ) --//블러디 액셀
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_RAVEN_OVER_TAKER"], 4002, 4 ) --//세븐 버스트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_RAVEN_OVER_TAKER"], 4011, 3 ) --//가디언 스트라이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_RAVEN_OVER_TAKER"], 4013, 3 ) --//뉴클리어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"], 5003, 4 ) --//디멘션 링크 - 가디언
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"], 5002, 4 ) --//제네레이트 블랙홀
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"], 5005, 3 ) --//퀸스 쓰론
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"], 5006, 3 ) --//정크 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_EVE_ARCHITECTURE"], 5003, 4 ) --//디멘션 링크 - 가디언
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_EVE_ARCHITECTURE"], 5002, 4 ) --//제네레이트 블랙홀
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_EVE_ARCHITECTURE"], 5011, 3 ) --//제노사이드 리퍼
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_EVE_ARCHITECTURE"], 5012, 3 ) --//헤븐즈 피스트 - 프레셔
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_EVE_ARCHITECTURE"], 5013, 3 ) --//헤븐즈 피스트 - 스위퍼
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"], 6002, 4 ) --//기간틱 임팩트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"], 6003, 4 ) --//아겔다마
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"], 6004, 3 ) --//루나틱 퓨리
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"], 6007, 3 ) --//칼라드볼그 페인
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"], 6002, 4 ) --//기간틱 임팩트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"], 6003, 4 ) --//아겔다마
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"], 6013, 3 ) --//슈팅 스타
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"], 6011, 3 ) --//아틸러리 스트라이크 - 퀀텀 발리스타
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"], 1002, 4 ) --//언리미티드 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"], 1003, 4 ) --//트리플 게이저
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"], 1015, 3 ) --//파이널 스트라이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"], 1016, 3 ) --//팬텀 소드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"], 2003, 4 ) --//아이스 스톰
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"], 2002, 4 ) --//거스트 스톰
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"], 2017, 3 ) --//슈퍼 노바
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"], 3003, 4 ) --//피닉스 스트라이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"], 3002, 4 ) --//에어로 토네이도
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"], 3018, 3 ) --//콜 오브 루인
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"], 3019, 3 ) --//카르마
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"], 4002, 4 ) --//세븐 버스트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"], 4019, 3 ) --//헬파이어 개틀링
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"], 4020, 3 ) --//기가 프로미넌스
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_EVE_ELECTRA"], 5003, 4 ) --//디멘션 링크 - 가디언
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_EVE_ELECTRA"], 5002, 4 ) --//제네레이트 블랙홀
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_EVE_ELECTRA"], 5024, 3 ) --//리니어 디바이더
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_EVE_ELECTRA"], 5020, 3 ) --//기가 스트림
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"], 6002, 4 ) --//기간틱 임팩트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"], 6003, 4 ) --//아겔다마
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"], 6017, 3 ) --//카오스 캐논
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"], 6018, 3 ) --//카펫 바밍
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"], 7003, 4 ) --//귀살 3식 : 그림자 매듭
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"], 7002, 4 ) --//강룡추
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"], 7006, 3 ) --//맹호격
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"], 7003, 4 ) --//귀살 3식 : 그림자 매듭
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"], 7002, 4 ) --//강룡추
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"], 7014, 3 ) --//연환지옥						2013.11.06 신진섭
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"], 8003, 4 ) --//언리미티드 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"], 8003, 4 ) --//언리미티드 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"], 8002, 4 ) --//메가 버스터
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"], 8002, 4 ) --//메가 버스터
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"], 8007, 3 ) --//심판의 검
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"], 8007, 3 ) --//심판의 검
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"], 8006, 3 ) --//승리의 검
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"], 8006, 3 ) --//승리의 검
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"], 8003, 4 ) --//언리미티드 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"], 8003, 4 ) --//언리미티드 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"], 8002, 4 ) --//메가 버스터
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"], 8002, 4 ) --//메가 버스터
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"], 8011, 3 ) --//인페르날 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"], 8011, 3 ) --//인페르날 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"], 8012, 3 ) --//이터널 파이어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"], 8012, 3 ) --//이터널 파이어
		--2차
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1002, 4 ) --//언리미티드 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1003, 4 ) --//트리플 게이저
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1006, 3 ) --//더블 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1005, 3 ) --//아마겟돈 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1002, 4 ) --//언리미티드 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1003, 4 ) --//트리플 게이저
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1011, 3 ) --//소드 파이어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1012, 3 ) --//피닉스 탤런
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1013, 2 ) --//스톰 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3003, 4 ) --//피닉스 스트라이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3002, 4 ) --//에어로 토네이도
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3005, 3 ) --//다이브킥 봄잉
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3006, 3 ) --//바이올런트 어택
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3003, 4 ) --//피닉스 스트라이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3002, 4 ) --//에어로 토네이도
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3011, 3 ) --//크레이지 샷
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3013, 3 ) --//궁그닐
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"], 2003, 4 ) --//아이스 스톰
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"], 2002, 4 ) --//거스트 스톰
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"], 2007, 3 ) --//블레이즈 스텝
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"], 2005, 3 ) --//블리자드 샤워
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ARME_VOID_PRINCESS"], 2003, 4 ) --//아이스 스톰
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ARME_VOID_PRINCESS"], 2002, 4 ) --//거스트 스톰
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ARME_VOID_PRINCESS"], 2013, 3 ) --//에이징
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ARME_VOID_PRINCESS"], 2011, 3 ) --//플라즈마 커터
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"], 4002, 4 ) --//세븐 버스트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"], 4003, 3 ) --//하이퍼 소닉 스탭
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"], 4006, 3 ) --//블러디 액셀
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4002, 4 ) --//세븐 버스트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4011, 3 ) --//가디언 스트라이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4013, 3 ) --//뉴클리어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_EVE_CODE_NEMESIS"], 5003, 4 ) --//디멘션 링크 - 가디언
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_EVE_CODE_NEMESIS"], 5002, 4 ) --//제네레이트 블랙홀
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_EVE_CODE_NEMESIS"], 5005, 3 ) --//퀸스 쓰론
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_EVE_CODE_NEMESIS"], 5006, 3 ) --//정크 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_EVE_CODE_EMPRESS"], 5003, 4 ) --//디멘션 링크 - 가디언
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_EVE_CODE_EMPRESS"], 5002, 4 ) --//제네레이트 블랙홀
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_EVE_CODE_EMPRESS"], 5011, 3 ) --//제노사이드 리퍼
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_EVE_CODE_EMPRESS"], 5012, 3 ) --//헤븐즈 피스트 - 프레셔
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_EVE_CODE_EMPRESS"], 5013, 3 ) --//헤븐즈 피스트 - 스위퍼
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6002, 4 ) --//기간틱 임팩트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6003, 4 ) --//아겔다마
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6004, 3 ) --//루나틱 퓨리
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6007, 3 ) --//칼라드볼그 페인
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6002, 4 ) --//기간틱 임팩트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6003, 4 ) --//아겔다마
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6013, 3 ) --//슈팅 스타
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6011, 3 ) --//아틸러리 스트라이크 - 퀀텀 발리스타
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1002, 4 ) --//언리미티드 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1003, 4 ) --//트리플 게이저
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1015, 3 ) --//파이널 스트라이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1016, 3 ) --//팬텀 소드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2003, 4 ) --//아이스 스톰
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2002, 4 ) --//거스트 스톰
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2017, 3 ) --//슈퍼 노바
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3003, 4 ) --//피닉스 스트라이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3002, 4 ) --//에어로 토네이도
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3018, 3 ) --//콜 오브 루인
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3019, 3 ) --//카르마
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4002, 4 ) --//세븐 버스트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4019, 3 ) --//헬파이어 개틀링
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4020, 3 ) --//기가 프로미넌스
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"], 5003, 4 ) --//디멘션 링크 - 가디언
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"], 5002, 4 ) --//제네레이트 블랙홀
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"], 5024, 3 ) --//리니어 디바이더
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"], 5020, 3 ) --//기가 스트림
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6002, 4 ) --//기간틱 임팩트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6003, 4 ) --//아겔다마
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6017, 3 ) --//카오스 캐논
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6018, 3 ) --//카펫 바밍
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7003, 4 ) --//귀살 3식 : 그림자 매듭
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7002, 4 ) --//강룡추
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7006, 3 ) --//맹호격
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7008, 2 ) --//제압 : 정
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7007, 2 ) --//비연
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ARA_YAMA_RAJA"], 7003, 4 ) --//귀살 3식 : 그림자 매듭
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ARA_YAMA_RAJA"], 7002, 4 ) --//강룡추
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ARA_YAMA_RAJA"], 7014, 3 )	--//연환지옥								2013.11.06 신진섭
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ARA_YAMA_RAJA"], 7012, 2 ) --//제압 : 기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ARA_YAMA_RAJA"], 7016, 2 ) --//초진공장

--46101	기본 전직 모든 액티브 Lv+		--솟구치는 용기 세트 효과
		--노전직
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELSWORD_SWORDMAN"], 1205, 4 ) --//구르기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELSWORD_SWORDMAN"], 1206, 4 ) --//소드 웨이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELSWORD_SWORDMAN"], 1202, 4 ) --//반격
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELSWORD_SWORDMAN"], 1207, 4 ) --//막기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARME_VIOLET_MAGE"], 2200, 4 ) --//체인 파이어볼
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARME_VIOLET_MAGE"], 2206, 4 ) --//아이시클 웨이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARME_VIOLET_MAGE"], 2205, 4 ) --//파이어 로드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARME_VIOLET_MAGE"], 2202, 4 ) --//텔레포트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARME_VIOLET_MAGE"], 2203, 4 ) --//마나 실드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_LIRE_ELVEN_RANGER"], 3202, 4 ) --//백덤블링 샷
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_LIRE_ELVEN_RANGER"], 3204, 4 ) --//라이징 팔콘
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_LIRE_ELVEN_RANGER"], 3205, 4 ) --//시즈모드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_RAVEN_FIGHTER"], 4205, 4 ) --//섀도우 스텝
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_RAVEN_FIGHTER"], 4206, 4 ) --//브레이킹 피스트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_RAVEN_FIGHTER"], 4203, 4 ) --//버닝 러시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_RAVEN_FIGHTER"], 4204, 4 ) --//그라운드 임팩트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_RAVEN_FIGHTER"], 4202, 4 ) --//메가드릴 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELESIS_KNIGHT"], 8200, 4 ) --//닷지&슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELESIS_KNIGHT"], 8202, 4 ) --//러싱 소드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELESIS_KNIGHT"], 8201, 4 ) --//도약
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_EVE_NASOD"], 5205, 4 ) --//일루전 레이
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_EVE_NASOD"], 5202, 4 ) --//클로킹
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_EVE_NASOD"], 5207, 4 ) --//점멸
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_EVE_NASOD"], 5219, 4 ) --//엘 분광결정
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_CHUNG_IRON_CANNON"], 6203, 4 ) --//리로드 캐논
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_CHUNG_IRON_CANNON"], 6202, 4 ) --//임팩트 디토네이션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_CHUNG_IRON_CANNON"], 6205, 4 ) --//고정 포격
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARA_MARTIAL_ARTIST"], 7204, 4 ) --//흡공
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARA_MARTIAL_ARTIST"], 7207, 4 ) --//신속
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARA_MARTIAL_ARTIST"], 7206, 4 ) --//철산고
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARA_MARTIAL_ARTIST"], 7205, 4 ) --//천격
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARA_MARTIAL_ARTIST"], 7203, 4 ) --//기공창
		--1차
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELSWORD_KNIGHT"], 1205, 4 ) --//구르기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELSWORD_KNIGHT"], 1206, 4 ) --//소드 웨이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELSWORD_KNIGHT"], 1202, 4 ) --//반격
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELSWORD_KNIGHT"], 1207, 4 ) --//막기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"], 1205, 4 ) --//구르기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"], 1206, 4 ) --//소드 웨이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"], 1202, 4 ) --//반격
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"], 1207, 4 ) --//막기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"], 3202, 4 ) --//백덤블링 샷
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"], 3204, 4 ) --//라이징 팔콘
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"], 3205, 4 ) --//시즈모드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"], 3202, 4 ) --//백덤블링 샷
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"], 3204, 4 ) --//라이징 팔콘
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"], 3205, 4 ) --//시즈모드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"], 2200, 4 ) --//체인 파이어볼
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"], 2206, 4 ) --//아이시클 웨이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"], 2205, 4 ) --//파이어 로드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"], 2202, 4 ) --//텔레포트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"], 2203, 4 ) --//마나 실드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"], 2200, 4 ) --//체인 파이어볼
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"], 2206, 4 ) --//아이시클 웨이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"], 2205, 4 ) --//파이어 로드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"], 2202, 4 ) --//텔레포트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"], 2203, 4 ) --//마나 실드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"], 4205, 4 ) --//섀도우 스텝
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"], 4206, 4 ) --//브레이킹 피스트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"], 4203, 4 ) --//버닝 러시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"], 4204, 4 ) --//그라운드 임팩트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"], 4202, 4 ) --//메가드릴 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_RAVEN_OVER_TAKER"], 4205, 4 ) --//섀도우 스텝
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_RAVEN_OVER_TAKER"], 4206, 4 ) --//브레이킹 피스트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_RAVEN_OVER_TAKER"], 4203, 4 ) --//버닝 러시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_RAVEN_OVER_TAKER"], 4204, 4 ) --//그라운드 임팩트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_RAVEN_OVER_TAKER"], 4202, 4 ) --//메가드릴 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"], 5205, 4 ) --//일루전 레이
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"], 5202, 4 ) --//클로킹
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"], 5207, 4 ) --//점멸
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"], 5219, 4 ) --//엘 분광결정
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_EVE_ARCHITECTURE"], 5205, 4 ) --//일루전 레이
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_EVE_ARCHITECTURE"], 5202, 4 ) --//클로킹
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_EVE_ARCHITECTURE"], 5207, 4 ) --//점멸
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_EVE_ARCHITECTURE"], 5219, 4 ) --//엘 분광결정
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"], 6203, 4 ) --//리로드 캐논
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"], 6202, 4 ) --//임팩트 디토네이션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"], 6205, 4 ) --//고정 포격
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"], 6203, 4 ) --//리로드 캐논
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"], 6202, 4 ) --//임팩트 디토네이션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"], 6205, 4 ) --//고정 포격
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"], 1205, 4 ) --//구르기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"], 1206, 4 ) --//소드 웨이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"], 1202, 4 ) --//반격
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"], 1207, 4 ) --//막기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"], 2200, 4 ) --//체인 파이어볼
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"], 2206, 4 ) --//아이시클 웨이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"], 2205, 4 ) --//파이어 로드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"], 2202, 4 ) --//텔레포트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"], 2203, 4 ) --//마나 실드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"], 3202, 4 ) --//백덤블링 샷
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"], 3204, 4 ) --//라이징 팔콘
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"], 3205, 4 ) --//시즈모드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"], 4205, 4 ) --//섀도우 스텝
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"], 4206, 4 ) --//브레이킹 피스트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"], 4203, 4 ) --//버닝 러시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"], 4204, 4 ) --//그라운드 임팩트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"], 4202, 4 ) --//메가드릴 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_EVE_ELECTRA"], 5205, 4 ) --//일루전 레이
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_EVE_ELECTRA"], 5202, 4 ) --//클로킹
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_EVE_ELECTRA"], 5207, 4 ) --//점멸
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_EVE_ELECTRA"], 5219, 4 ) --//엘 분광결정
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"], 6203, 4 ) --//리로드 캐논
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"], 6202, 4 ) --//임팩트 디토네이션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"], 6205, 4 ) --//고정 포격
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"], 7204, 4 ) --//흡공
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"], 7207, 4 ) --//신속
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"], 7206, 4 ) --//철산고
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"], 7205, 4 ) --//천격
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"], 7203, 4 ) --//기공창
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"], 7204, 4 ) --//흡공
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"], 7207, 4 ) --//신속
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"], 7206, 4 ) --//철산고
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"], 7205, 4 ) --//천격
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"], 7203, 4 ) --//기공창
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"], 8200, 4 ) --//닷지&슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"], 8200, 4 ) --//닷지&슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"], 8202, 4 ) --//러싱 소드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"], 8202, 4 ) --//러싱 소드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"], 8201, 4 ) --//도약
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"], 8201, 4 ) --//도약
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"], 8200, 4 ) --//닷지&슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"], 8200, 4 ) --//닷지&슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"], 8202, 4 ) --//러싱 소드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"], 8202, 4 ) --//러싱 소드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"], 8201, 4 ) --//도약
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"], 8201, 4 ) --//도약
		--2차
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1205, 4 ) --//구르기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1206, 4 ) --//소드 웨이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1202, 4 ) --//반격
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1207, 4 ) --//막기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1205, 4 ) --//구르기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1206, 4 ) --//소드 웨이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1202, 4 ) --//반격
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1207, 4 ) --//막기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3202, 4 ) --//백덤블링 샷
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3204, 4 ) --//라이징 팔콘
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3205, 4 ) --//시즈모드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3202, 4 ) --//백덤블링 샷
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3204, 4 ) --//라이징 팔콘
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3205, 4 ) --//시즈모드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"], 2200, 4 ) --//체인 파이어볼
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"], 2206, 4 ) --//아이시클 웨이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"], 2205, 4 ) --//파이어 로드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"], 2202, 4 ) --//텔레포트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"], 2203, 4 ) --//마나 실드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARME_VOID_PRINCESS"], 2200, 4 ) --//체인 파이어볼
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARME_VOID_PRINCESS"], 2206, 4 ) --//아이시클 웨이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARME_VOID_PRINCESS"], 2205, 4 ) --//파이어 로드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARME_VOID_PRINCESS"], 2202, 4 ) --//텔레포트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARME_VOID_PRINCESS"], 2203, 4 ) --//마나 실드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"], 4205, 4 ) --//섀도우 스텝
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"], 4206, 4 ) --//브레이킹 피스트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"], 4203, 4 ) --//버닝 러시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"], 4204, 4 ) --//그라운드 임팩트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"], 4202, 4 ) --//메가드릴 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4205, 4 ) --//섀도우 스텝
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4206, 4 ) --//브레이킹 피스트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4203, 4 ) --//버닝 러시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4204, 4 ) --//그라운드 임팩트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4202, 4 ) --//메가드릴 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_EVE_CODE_NEMESIS"], 5205, 4 ) --//일루전 레이
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_EVE_CODE_NEMESIS"], 5202, 4 ) --//클로킹
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_EVE_CODE_NEMESIS"], 5207, 4 ) --//점멸
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_EVE_CODE_NEMESIS"], 5219, 4 ) --//엘 분광결정
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_EVE_CODE_EMPRESS"], 5205, 4 ) --//일루전 레이
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_EVE_CODE_EMPRESS"], 5202, 4 ) --//클로킹
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_EVE_CODE_EMPRESS"], 5207, 4 ) --//점멸
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_EVE_CODE_EMPRESS"], 5219, 4 ) --//엘 분광결정
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6203, 4 ) --//리로드 캐논
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6202, 4 ) --//임팩트 디토네이션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6205, 4 ) --//고정 포격
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6203, 4 ) --//리로드 캐논
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6202, 4 ) --//임팩트 디토네이션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6205, 4 ) --//고정 포격
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1205, 4 ) --//구르기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1206, 4 ) --//소드 웨이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1202, 4 ) --//반격
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1207, 4 ) --//막기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2200, 4 ) --//체인 파이어볼
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2206, 4 ) --//아이시클 웨이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2205, 4 ) --//파이어 로드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2202, 4 ) --//텔레포트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2203, 4 ) --//마나 실드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3202, 4 ) --//백덤블링 샷
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3204, 4 ) --//라이징 팔콘
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3205, 4 ) --//시즈모드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4205, 4 ) --//섀도우 스텝
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4206, 4 ) --//브레이킹 피스트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4203, 4 ) --//버닝 러시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4204, 4 ) --//그라운드 임팩트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4202, 4 ) --//메가드릴 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"], 5205, 4 ) --//일루전 레이
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"], 5202, 4 ) --//클로킹
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"], 5207, 4 ) --//점멸
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"], 5219, 4 ) --//엘 분광결정
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6203, 4 ) --//리로드 캐논
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6202, 4 ) --//임팩트 디토네이션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6205, 4 ) --//고정 포격
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7204, 4 ) --//흡공
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7207, 4 ) --//신속
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7206, 4 ) --//철산고
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7205, 4 ) --//천격
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7203, 4 ) --//기공창
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARA_YAMA_RAJA"], 7204, 4 ) --//흡공
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARA_YAMA_RAJA"], 7207, 4 ) --//신속
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARA_YAMA_RAJA"], 7206, 4 ) --//철산고
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARA_YAMA_RAJA"], 7205, 4 ) --//천격
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARA_YAMA_RAJA"], 7203, 4 ) --//기공창
	-- 추가 대칭스킬 // 필요에따라 제거될 가능성 있음 // 20130710 버전 // 공솔
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_LIRE_ELVEN_RANGER"], 3201, 4 ) --//어설트 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_RAVEN_FIGHTER"], 4200, 4 ) --//맥시멈 캐논
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELESIS_KNIGHT"], 8204, 4 ) --//메가 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"], 3201, 4 ) --//어설트 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"], 3201, 4 ) --//어설트 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"], 4200, 4 ) --//맥시멈 캐논
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_RAVEN_OVER_TAKER"], 4200, 4 ) --//맥시멈 캐논
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"], 3201, 4 ) --//어설트 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"], 4200, 4 ) --//맥시멈 캐논
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"], 8204, 4 ) --//메가 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"], 8204, 4 ) --//메가 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"], 8204, 4 ) --//메가 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"], 8204, 4 ) --//메가 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3201, 4 ) --//어설트 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3201, 4 ) --//어설트 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"], 4200, 4 ) --//맥시멈 캐논
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4200, 4 ) --//맥시멈 캐논
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3201, 4 ) --//어설트 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4200, 4 ) --//맥시멈 캐논
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELSWORD_SWORDMAN"], 1201, 4 ) --//어설트 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_RAVEN_FIGHTER"], 4201, 4 ) --//어스 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELESIS_KNIGHT"], 8000, 4 ) --//와일드 쇼크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_CHUNG_IRON_CANNON"], 6201, 4 ) --//디토네이션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARA_MARTIAL_ARTIST"], 7201, 4 ) --//그림자 꽃망울
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELSWORD_KNIGHT"], 1201, 4 ) --//어설트 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"], 1201, 4 ) --//어설트 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"], 4201, 4 ) --//어스 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_RAVEN_OVER_TAKER"], 4201, 4 ) --//어스 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"], 6201, 4 ) --//디토네이션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"], 6201, 4 ) --//디토네이션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"], 1201, 4 ) --//어설트 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"], 4201, 4 ) --//어스 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"], 6201, 4 ) --//디토네이션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"], 7201, 4 ) --//그림자 꽃망울
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"], 8000, 4 ) --//와일드 쇼크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"], 8000, 4 ) --//와일드 쇼크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"], 8000, 4 ) --//와일드 쇼크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"], 8000, 4 ) --//와일드 쇼크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1201, 4 ) --//어설트 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1201, 4 ) --//어설트 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"], 4201, 4 ) --//어스 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4201, 4 ) --//어스 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6201, 4 ) --//디토네이션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6201, 4 ) --//디토네이션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1201, 4 ) --//어설트 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4201, 4 ) --//어스 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6201, 4 ) --//디토네이션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7201, 4 ) --//그림자 꽃망울


--46102	기본 전직 모든 1필 스킬Lv+		--밴디트 세트 효과, 강화된 밴디트 세트 효과
		--노전직
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELSWORD_SWORDMAN"], 1200, 4 ) --//메가 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELSWORD_SWORDMAN"], 1201, 4 ) --//어설트 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ARME_VIOLET_MAGE"], 2201, 4 ) --//바인딩 서클
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_LIRE_ELVEN_RANGER"], 3201, 4 ) --//어설트 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_LIRE_ELVEN_RANGER"], 3200, 4 ) --//레일 스팅어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_RAVEN_FIGHTER"], 4201, 4 ) --//어스 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_RAVEN_FIGHTER"], 4200, 4 ) --//맥시멈 캐논
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELESIS_KNIGHT"], 8205, 4 ) --//소닉 어설트 - 스탭
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELESIS_KNIGHT"], 8206, 4 ) --//소닉 어설트 - 스팅
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELESIS_KNIGHT"], 8204, 4 ) --//메가 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_EVE_NASOD"], 5201, 4 ) --//디멘션 링크 - 센트리
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_EVE_NASOD"], 5200, 4 ) --//일루전 스트라이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_CHUNG_IRON_CANNON"], 6200, 4 ) --//브루탈 스윙
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_CHUNG_IRON_CANNON"], 6201, 4 ) --//디토네이션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ARA_MARTIAL_ARTIST"], 7001, 4 ) --//선풍
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ARA_MARTIAL_ARTIST"], 7200, 4 ) --//낭아 2식 : 바람 쐐기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ARA_MARTIAL_ARTIST"], 7201, 4 ) --//그림자 꽃망울
		--1차
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELSWORD_KNIGHT"], 1200, 4 ) --//메가 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELSWORD_KNIGHT"], 1201, 4 ) --//어설트 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"], 1200, 4 ) --//메가 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"], 1201, 4 ) --//어설트 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"], 3201, 4 ) --//어설트 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"], 3200, 4 ) --//레일 스팅어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"], 3201, 4 ) --//어설트 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"], 3200, 4 ) --//레일 스팅어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"], 2201, 4 ) --//바인딩 서클
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"], 2201, 4 ) --//바인딩 서클
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"], 4201, 4 ) --//어스 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"], 4200, 4 ) --//맥시멈 캐논
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_RAVEN_OVER_TAKER"], 4201, 4 ) --//어스 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_RAVEN_OVER_TAKER"], 4200, 4 ) --//맥시멈 캐논
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"], 5201, 4 ) --//디멘션 링크 - 센트리
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"], 5200, 4 ) --//일루전 스트라이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_EVE_ARCHITECTURE"], 5201, 4 ) --//디멘션 링크 - 센트리
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_EVE_ARCHITECTURE"], 5200, 4 ) --//일루전 스트라이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"], 6200, 4 ) --//브루탈 스윙
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"], 6201, 4 ) --//디토네이션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"], 6200, 4 ) --//브루탈 스윙
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"], 6201, 4 ) --//디토네이션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"], 1200, 4 ) --//메가 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"], 1201, 4 ) --//어설트 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"], 2201, 4 ) --//바인딩 서클
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"], 3201, 4 ) --//어설트 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"], 3200, 4 ) --//레일 스팅어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"], 4201, 4 ) --//어스 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"], 4200, 4 ) --//맥시멈 캐논
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_EVE_ELECTRA"], 5201, 4 ) --//디멘션 링크 - 센트리
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_EVE_ELECTRA"], 5200, 4 ) --//일루전 스트라이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"], 6200, 4 ) --//브루탈 스윙
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"], 6201, 4 ) --//디토네이션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"], 7001, 4 ) --//선풍
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"], 7200, 4 ) --//낭아 2식 : 바람 쐐기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"], 7201, 4 ) --//그림자 꽃망울
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"], 7001, 4 ) --//선풍
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"], 7200, 4 ) --//낭아 2식 : 바람 쐐기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"], 7201, 4 ) --//그림자 꽃망울
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"], 8205, 4 ) --//소닉 어설트 - 스탭
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"], 8205, 4 ) --//소닉 어설트 - 스탭
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"], 8206, 4 ) --//소닉 어설트 - 스팅
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"], 8206, 4 ) --//소닉 어설트 - 스팅
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"], 8204, 4 ) --//메가 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"], 8204, 4 ) --//메가 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"], 8205, 4 ) --//소닉 어설트 - 스탭
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"], 8205, 4 ) --//소닉 어설트 - 스탭
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"], 8206, 4 ) --//소닉 어설트 - 스팅
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"], 8206, 4 ) --//소닉 어설트 - 스팅
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"], 8204, 4 ) --//메가 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"], 8204, 4 ) --//메가 슬래시
		--2차
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1200, 4 ) --//메가 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1201, 4 ) --//어설트 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1200, 4 ) --//메가 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1201, 4 ) --//어설트 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3201, 4 ) --//어설트 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3200, 4 ) --//레일 스팅어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3201, 4 ) --//어설트 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3200, 4 ) --//레일 스팅어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"], 2201, 4 ) --//바인딩 서클
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ARME_VOID_PRINCESS"], 2201, 4 ) --//바인딩 서클
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"], 4201, 4 ) --//어스 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"], 4200, 4 ) --//맥시멈 캐논
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4201, 4 ) --//어스 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4200, 4 ) --//맥시멈 캐논
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_EVE_CODE_NEMESIS"], 5201, 4 ) --//디멘션 링크 - 센트리
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_EVE_CODE_NEMESIS"], 5200, 4 ) --//일루전 스트라이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_EVE_CODE_EMPRESS"], 5201, 4 ) --//디멘션 링크 - 센트리
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_EVE_CODE_EMPRESS"], 5200, 4 ) --//일루전 스트라이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6200, 4 ) --//브루탈 스윙
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6201, 4 ) --//디토네이션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6200, 4 ) --//브루탈 스윙
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6201, 4 ) --//디토네이션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1200, 4 ) --//메가 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1201, 4 ) --//어설트 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2201, 4 ) --//바인딩 서클
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3201, 4 ) --//어설트 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3200, 4 ) --//레일 스팅어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4201, 4 ) --//어스 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4200, 4 ) --//맥시멈 캐논
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"], 5201, 4 ) --//디멘션 링크 - 센트리
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"], 5200, 4 ) --//일루전 스트라이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6200, 4 ) --//브루탈 스윙
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6201, 4 ) --//디토네이션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7001, 4 ) --//선풍
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7200, 4 ) --//낭아 2식 : 바람 쐐기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7201, 4 ) --//그림자 꽃망울
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ARA_YAMA_RAJA"], 7001, 4 ) --//선풍
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ARA_YAMA_RAJA"], 7200, 4 ) --//낭아 2식 : 바람 쐐기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ARA_YAMA_RAJA"], 7201, 4 ) --//그림자 꽃망울
	-- 추가 대칭스킬 // 필요에따라 제거될 가능성 있음 // 20130710 버전 // 공솔
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELSWORD_SWORDMAN"], 1206, 4 ) --//소드 웨이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ARME_VIOLET_MAGE"], 2000, 4 ) --//거스트 스크류
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_LIRE_ELVEN_RANGER"], 3000, 4 ) --//퍼펙트 스톰
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_RAVEN_FIGHTER"], 4204, 4 ) --//그라운드 임팩트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_CHUNG_IRON_CANNON"], 6001, 4 ) --//스케어 체이스
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_CHUNG_IRON_CANNON"], 6202, 4 ) --//임팩트 디토네이션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ARA_MARTIAL_ARTIST"], 7000, 4 ) --//용아 2식 : 빨래 널기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ARA_MARTIAL_ARTIST"], 7205, 4 ) --//천격
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELSWORD_KNIGHT"], 1206, 4 ) --//소드 웨이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"], 1206, 4 ) --//소드 웨이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"], 3000, 4 ) --//퍼펙트 스톰
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"], 3000, 4 ) --//퍼펙트 스톰
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"], 2000, 4 ) --//거스트 스크류
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"], 2000, 4 ) --//거스트 스크류
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"], 4204, 4 ) --//그라운드 임팩트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_RAVEN_OVER_TAKER"], 4204, 4 ) --//그라운드 임팩트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"], 6001, 4 ) --//스케어 체이스
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"], 6202, 4 ) --//임팩트 디토네이션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"], 6001, 4 ) --//스케어 체이스
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"], 6202, 4 ) --//임팩트 디토네이션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"], 1206, 4 ) --//소드 웨이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"], 2000, 4 ) --//거스트 스크류
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"], 3000, 4 ) --//퍼펙트 스톰
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"], 4204, 4 ) --//그라운드 임팩트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"], 6001, 4 ) --//스케어 체이스
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"], 6202, 4 ) --//임팩트 디토네이션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"], 7000, 4 ) --//용아 2식 : 빨래 널기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"], 7205, 4 ) --//천격
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1206, 4 ) --//소드 웨이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1206, 4 ) --//소드 웨이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3000, 4 ) --//퍼펙트 스톰
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3000, 4 ) --//퍼펙트 스톰
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"], 2000, 4 ) --//거스트 스크류
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ARME_VOID_PRINCESS"], 2000, 4 ) --//거스트 스크류
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"], 4204, 4 ) --//그라운드 임팩트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4204, 4 ) --//그라운드 임팩트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6001, 4 ) --//스케어 체이스
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6202, 4 ) --//임팩트 디토네이션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6001, 4 ) --//스케어 체이스
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6202, 4 ) --//임팩트 디토네이션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1206, 4 ) --//소드 웨이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2000, 4 ) --//거스트 스크류
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3000, 4 ) --//퍼펙트 스톰
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4204, 4 ) --//그라운드 임팩트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6001, 4 ) --//스케어 체이스
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6202, 4 ) --//임팩트 디토네이션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7000, 4 ) --//용아 2식 : 빨래 널기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7205, 4 ) --//천격
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELSWORD_SWORDMAN"], 1000, 4 ) --//페이탈 퓨리
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_LIRE_ELVEN_RANGER"], 3204, 4 ) --//라이징 팔콘
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_RAVEN_FIGHTER"], 4202, 4 ) --//메가드릴 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELESIS_KNIGHT"], 8201, 4 ) --//도약
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELSWORD_KNIGHT"], 1000, 4 ) --//페이탈 퓨리
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"], 1000, 4 ) --//페이탈 퓨리
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"], 3204, 4 ) --//라이징 팔콘
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"], 3204, 4 ) --//라이징 팔콘
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"], 4202, 4 ) --//메가드릴 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_RAVEN_OVER_TAKER"], 4202, 4 ) --//메가드릴 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"], 1000, 4 ) --//페이탈 퓨리
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"], 3204, 4 ) --//라이징 팔콘
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"], 4202, 4 ) --//메가드릴 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"], 8201, 4 ) --//도약
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"], 8201, 4 ) --//도약
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"], 8201, 4 ) --//도약
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"], 8201, 4 ) --//도약
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1000, 4 ) --//페이탈 퓨리
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1000, 4 ) --//페이탈 퓨리
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3204, 4 ) --//라이징 팔콘
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3204, 4 ) --//라이징 팔콘
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"], 4202, 4 ) --//메가드릴 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4202, 4 ) --//메가드릴 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1000, 4 ) --//페이탈 퓨리
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3204, 4 ) --//라이징 팔콘
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4202, 4 ) --//메가드릴 브레이크


--46105	1차 전직 액티브 스킬Lv+		--야생의 추적자 세트, 사나운 급습의 상의
-----------------------------------------------------------------------------------------------------------------------------------------------
-- 2013.07.16 // 공솔 // 노전직에서 표시해줄 툴팁 내용 추가
-----------------------------------------------------------------------------------------------------------------------------------------------
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ELSWORD_SWORDMAN"], 901, 3 ) --//(특정 스킬 강화 옵션 : 1차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ARME_VIOLET_MAGE"], 901, 3 ) --//(특정 스킬 강화 옵션 : 1차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_LIRE_ELVEN_RANGER"], 901, 3 ) --//(특정 스킬 강화 옵션 : 1차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_RAVEN_FIGHTER"], 901, 3 ) --//(특정 스킬 강화 옵션 : 1차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ELESIS_KNIGHT"], 901, 3 ) --//(특정 스킬 강화 옵션 : 1차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_EVE_NASOD"], 901, 3 ) --//(특정 스킬 강화 옵션 : 1차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_CHUNG_IRON_CANNON"], 901, 3 ) --//(특정 스킬 강화 옵션 : 1차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ARA_MARTIAL_ARTIST"], 901, 3 ) --//(특정 스킬 강화 옵션 : 1차전직)
-----------------------------------------------------------------------------------------------------------------------------------------------
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ELSWORD_KNIGHT"], 1204, 3 ) --//발차기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ELSWORD_KNIGHT"], 1210, 3 ) --//웨폰 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ELSWORD_KNIGHT"], 1209, 3 ) --//아머 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ELSWORD_KNIGHT"], 1203, 3 ) --//극기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"], 1204, 3 ) --//발차기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"], 1217, 3 ) --//소드 인챈트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"], 1214, 3 ) --//대폭살
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"], 1203, 3 ) --//극기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"], 3207, 3 ) --//로우 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"], 3208, 3 ) --//미들 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"], 3203, 3 ) --//리플렉트 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"], 3215, 3 ) --//슈팅 매그넘
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"], 3214, 3 ) --//인탱글
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"], 3203, 3 ) --//리플렉트 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"], 2208, 3 ) --//메디테이션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"], 2204, 3 ) --//서클 플레임
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"], 2215, 3 ) --//마나 인테이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"], 2204, 3 ) --//서클 플레임
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"], 4208, 3 ) --//컷텐던
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_RAVEN_OVER_TAKER"], 4214, 3 ) --//헬 다이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_RAVEN_OVER_TAKER"], 4216, 3 ) --//아머 크래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_RAVEN_OVER_TAKER"], 4215, 3 ) --//웨폰 크래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"], 5210, 3 ) --//메탈 더스트 오라
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"], 5204, 3 ) --//메가 일렉트론볼
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_EVE_ARCHITECTURE"], 5215, 3 ) --//오베론 가드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_EVE_ARCHITECTURE"], 5204, 3 ) --//메가 일렉트론볼
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"], 6207, 3 ) --//가드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"], 6208, 3 ) --//리프 어택
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"], 6204, 3 ) --//에이밍 샷
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"], 6212, 3 ) --//더블 파이어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"], 6214, 3 ) --//헤드 샷
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"], 6215, 3 ) --//매그넘 샷
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"], 6204, 3 ) --//에이밍 샷
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"], 1222, 3 ) --//소드 실드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"], 1204, 3 ) --//발차기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"], 1224, 3 ) --//피어싱 소드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"], 1223, 3 ) --//하쉬 체이서
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"], 1203, 3 ) --//극기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"], 2219, 3 ) --//바이탈 드레인
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"], 2220, 3 ) --//에너지 드레인
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"], 2204, 3 ) --//서클 플레임
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"], 3224, 3 ) --//구속의 씨앗
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"], 3225, 3 ) --//폭발의 덫
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"], 3228, 3 ) --//가시덩굴 덫
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"], 3229, 3 ) --//찔레 덫
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"], 3203, 3 ) --//리플렉트 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"], 4219, 3 ) --//연무 폭파
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"], 4220, 3 ) --//화염인
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_EVE_ELECTRA"], 5204, 3 ) --//메가 일렉트론볼
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"], 6221, 3 ) --//일레스틱 밤 - 핸드 그리네이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"], 6222, 3 ) --//일레스틱 밤 - 그리네이드 런처
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"], 6223, 3 ) --//지휘관의 표식
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"], 6204, 3 ) --//에이밍 샷
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"], 7208, 3 ) --//맹호 1식 : 바위 깨기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"], 7211, 3 ) --//낙화
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"], 7202, 3 ) --//맹호 2식 : 호랑이 발톱
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"], 7209, 3 ) --//이화접목
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"], 7214, 3 ) --//낭아 3식 늑대 발톱
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"], 7215, 3 ) --//이혈공
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"], 7217, 3 ) --//이기공
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"], 7219, 3 ) --//반탄공
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"], 8203, 3 ) --//발차기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"], 8203, 3 ) --//발차기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"], 8210, 3 ) --//헤비 스터너
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"], 8210, 3 ) --//헤비 스터너
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"], 8209, 3 ) --//파워 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"], 8209, 3 ) --//파워 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"], 8207, 3 ) --//극기 - 강
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"], 8207, 3 ) --//극기 - 강
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"], 8213, 3 ) --//대폭살
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"], 8213, 3 ) --//대폭살
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"], 8203, 3 ) --//발차기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"], 8203, 3 ) --//발차기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"], 8207, 3 ) --//극기 - 강
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"], 8207, 3 ) --//극기 - 강
		--2차
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1204, 3 ) --//발차기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1210, 3 ) --//웨폰 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1209, 3 ) --//아머 브레이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1203, 3 ) --//극기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1204, 3 ) --//발차기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1217, 3 ) --//소드 인챈트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1214, 3 ) --//대폭살
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1203, 3 ) --//극기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3207, 3 ) --//로우 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3208, 3 ) --//미들 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3203, 3 ) --//리플렉트 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3215, 3 ) --//슈팅 매그넘
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3214, 3 ) --//인탱글
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3203, 3 ) --//리플렉트 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"], 2208, 3 ) --//메디테이션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"], 2204, 3 ) --//서클 플레임
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ARME_VOID_PRINCESS"], 2215, 3 ) --//마나 인테이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ARME_VOID_PRINCESS"], 2204, 3 ) --//서클 플레임
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"], 4208, 3 ) --//컷텐던
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4214, 3 ) --//헬 다이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4216, 3 ) --//아머 크래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4215, 3 ) --//웨폰 크래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_EVE_CODE_NEMESIS"], 5210, 3 ) --//메탈 더스트 오라
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_EVE_CODE_NEMESIS"], 5204, 3 ) --//메가 일렉트론볼
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_EVE_CODE_EMPRESS"], 5215, 3 ) --//오베론 가드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_EVE_CODE_EMPRESS"], 5204, 3 ) --//메가 일렉트론볼
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6207, 3 ) --//가드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6208, 3 ) --//리프 어택
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6204, 3 ) --//에이밍 샷
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6212, 3 ) --//더블 파이어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6214, 3 ) --//헤드 샷
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6215, 3 ) --//매그넘 샷
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6204, 3 ) --//에이밍 샷
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1222, 3 ) --//소드 실드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1204, 3 ) --//발차기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1224, 3 ) --//피어싱 소드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1223, 3 ) --//하쉬 체이서
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1203, 3 ) --//극기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2219, 3 ) --//바이탈 드레인
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2220, 3 ) --//에너지 드레인
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2204, 3 ) --//서클 플레임
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3224, 3 ) --//구속의 씨앗
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3225, 3 ) --//폭발의 덫
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3228, 3 ) --//가시덩굴 덫
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3229, 3 ) --//찔레 덫
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3203, 3 ) --//리플렉트 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4219, 3 ) --//연무 폭파
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4220, 3 ) --//화염인
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"], 5204, 3 ) --//메가 일렉트론볼
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6221, 3 ) --//일레스틱 밤 - 핸드 그리네이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6222, 3 ) --//일레스틱 밤 - 그리네이드 런처
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6223, 3 ) --//지휘관의 표식
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6204, 3 ) --//에이밍 샷
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7208, 3 ) --//맹호 1식 : 바위 깨기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7211, 3 ) --//낙화
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7202, 3 ) --//맹호 2식 : 호랑이 발톱
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7209, 3 ) --//이화접목
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ARA_YAMA_RAJA"], 7214, 3 ) --//낭아 3식 늑대 발톱
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ARA_YAMA_RAJA"], 7215, 3 ) --//이혈공
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ARA_YAMA_RAJA"], 7217, 3 ) --//이기공
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ARA_YAMA_RAJA"], 7219, 3 ) --//반탄공
	-- 추가 대칭스킬 // 필요에따라 제거될 가능성 있음 // 20130710 버전 // 공솔
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"], 6220, 3 ) --//캐논 스트라이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"], 7400, 3 ) --//재빠른 기상
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6220, 3 ) --//캐논 스트라이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7400, 3 ) --//재빠른 기상
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"], 3010, 3 ) --//가이드 애로우
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"], 7210, 3 ) --//용아 3식 : 팔괘장
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3010, 3 ) --//가이드 애로우
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7210, 3 ) --//용아 3식 : 팔괘장


--46106	1차 전직 1필 스킬Lv+		--레드락 치프 세트, 상급 레드락 치프 세트,  사나운 급습 세트,
-----------------------------------------------------------------------------------------------------------------------------------------------
-- 2013.07.16 // 공솔 // 노전직에서 표시해줄 툴팁 내용 추가
-----------------------------------------------------------------------------------------------------------------------------------------------
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_ELSWORD_SWORDMAN"], 901, 3 ) --//(특정 스킬 강화 옵션 : 1차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_ARME_VIOLET_MAGE"], 901, 3 ) --//(특정 스킬 강화 옵션 : 1차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_LIRE_ELVEN_RANGER"], 901, 3 ) --//(특정 스킬 강화 옵션 : 1차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_RAVEN_FIGHTER"], 901, 3 ) --//(특정 스킬 강화 옵션 : 1차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_ELESIS_KNIGHT"], 901, 3 ) --//(특정 스킬 강화 옵션 : 1차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_EVE_NASOD"], 901, 3 ) --//(특정 스킬 강화 옵션 : 1차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_CHUNG_IRON_CANNON"], 901, 3 ) --//(특정 스킬 강화 옵션 : 1차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_ARA_MARTIAL_ARTIST"], 901, 3 ) --//(특정 스킬 강화 옵션 : 1차전직)
-----------------------------------------------------------------------------------------------------------------------------------------------
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_ELSWORD_KNIGHT"], 1208, 3 ) --//에어 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"], 1215, 3 ) --//윈드 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"], 3206, 3 ) --//스피닝 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"], 3216, 3 ) --//허밍 윈드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"], 2207, 3 ) --//사이클론
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"], 2213, 3 ) --//헬 스톤
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"], 2214, 3 ) --//헬 드롭
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"], 4207, 3 ) --//버서커 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_RAVEN_OVER_TAKER"], 4212, 3 ) --//차지드 볼트 - 헤지호그
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_RAVEN_OVER_TAKER"], 4213, 3 ) --//차지드 볼트 - 블러디 쏜즈
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"], 5004, 3 ) --//익스플로전 임팩트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"], 5208, 3 ) --//호넷 스팅 - 익스플로전
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"], 5209, 3 ) --//호넷 스팅 - 쉐이프트 차지
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"], 6206, 3 ) --//스틸 엣지
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"], 6213, 3 ) --//듀얼 버스터
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"], 3223, 3 ) --//이보크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"], 4015, 3 ) --//버스팅 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_EVE_ELECTRA"], 5016, 3 ) --//파티클 레이
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"], 6220, 3 ) --//캐논 스트라이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"], 7210, 3 ) --//용아 3식 : 팔괘장
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"], 7009, 3 ) --//나찰 1식 흡혼
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"], 7010, 3 ) --//낭아 4식 늑대 이빨
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"], 8208, 3 ) --//크로스 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"], 8208, 3 ) --//크로스 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"], 8211, 3 ) --//소드 이럽션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"], 8211, 3 ) --//소드 이럽션
		--2차
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1208, 3 ) --//에어 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1215, 3 ) --//윈드 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3206, 3 ) --//스피닝 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3216, 3 ) --//허밍 윈드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"], 2207, 3 ) --//사이클론
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_ARME_VOID_PRINCESS"], 2213, 3 ) --//헬 스톤
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_ARME_VOID_PRINCESS"], 2214, 3 ) --//헬 드롭
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"], 4207, 3 ) --//버서커 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4212, 3 ) --//차지드 볼트 - 헤지호그
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4213, 3 ) --//차지드 볼트 - 블러디 쏜즈
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_EVE_CODE_NEMESIS"], 5004, 3 ) --//익스플로전 임팩트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_EVE_CODE_NEMESIS"], 5208, 3 ) --//호넷 스팅 - 익스플로전
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_EVE_CODE_NEMESIS"], 5209, 3 ) --//호넷 스팅 - 쉐이프트 차지
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6206, 3 ) --//스틸 엣지
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6213, 3 ) --//듀얼 버스터
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3223, 3 ) --//이보크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4015, 3 ) --//버스팅 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"], 5016, 3 ) --//파티클 레이
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6220, 3 ) --//캐논 스트라이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7210, 3 ) --//용아 3식 : 팔괘장
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_ARA_YAMA_RAJA"], 7009, 3 ) --//나찰 1식 흡혼
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_ARA_YAMA_RAJA"], 7010, 3 ) --//낭아 4식 늑대 이빨
	-- 추가 대칭스킬 // 필요에따라 제거될 가능성 있음 // 20130710 버전 // 공솔
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"], 6012, 3 ) --//헤비 레일건
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"], 7211, 3 ) --//낙화
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6012, 3 ) --//헤비 레일건
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7211, 3 ) --//낙화
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"], 6223, 3 ) --//지휘관의 표식
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6223, 3 ) --//지휘관의 표식


--46107	1차 전직 2필 스킬Lv+		--신비한 영혼 세트, 작렬하는 원소의 상의
-----------------------------------------------------------------------------------------------------------------------------------------------
-- 2013.07.16 // 공솔 // 노전직에서 표시해줄 툴팁 내용 추가
-----------------------------------------------------------------------------------------------------------------------------------------------
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_ELSWORD_SWORDMAN"], 901, 3 ) --//(특정 스킬 강화 옵션 : 1차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_ARME_VIOLET_MAGE"], 901, 3 ) --//(특정 스킬 강화 옵션 : 1차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_LIRE_ELVEN_RANGER"], 901, 3 ) --//(특정 스킬 강화 옵션 : 1차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_RAVEN_FIGHTER"], 901, 3 ) --//(특정 스킬 강화 옵션 : 1차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_ELESIS_KNIGHT"], 901, 3 ) --//(특정 스킬 강화 옵션 : 1차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_EVE_NASOD"], 901, 3 ) --//(특정 스킬 강화 옵션 : 1차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_CHUNG_IRON_CANNON"], 901, 3 ) --//(특정 스킬 강화 옵션 : 1차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_ARA_MARTIAL_ARTIST"], 901, 3 ) --//(특정 스킬 강화 옵션 : 1차전직)
-----------------------------------------------------------------------------------------------------------------------------------------------
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_ELSWORD_KNIGHT"], 1004, 3 ) --//스파이럴 블래스트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"], 1009, 3 ) --//라이징 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"], 1010, 3 ) --//라이징 웨이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"], 3004, 3 ) --//크레센트 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"], 3010, 3 ) --//가이드 애로우
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"], 2004, 3 ) --//매직 미사일
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"], 2006, 3 ) --//체인 라이트닝
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"], 2010, 3 ) --//다크 클라우드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"], 2012, 3 ) --//데스 필드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"], 4004, 3 ) --//쇼크 웨이브 - 디바이더
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"], 4005, 3 ) --//쇼크 웨이브 - 커터
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_RAVEN_OVER_TAKER"], 4012, 3 ) --//발키리스 자벨린
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_EVE_ARCHITECTURE"], 5010, 3 ) --//소닉 웨이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"], 6006, 3 ) --//판데모니움 - 피어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"], 6005, 3 ) --//판데모니움 - 카오스
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"], 6012, 3 ) --//헤비 레일건
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"], 1018, 3 ) --//소드 폴
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"], 2018, 3 ) --//길로틴 프레스
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"], 2019, 3 ) --//매지컬 메이크업
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"], 2016, 3 ) --//에너지 스퍼트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"], 3015, 3 ) --//페이탈리티
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"], 4018, 3 ) --//하푼 스피어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"], 4016, 3 ) --//리볼버 캐논 - OP탄
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"], 4017, 3 ) --//리볼버 캐논 - HE탄
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_EVE_ELECTRA"], 5017, 3 ) --//스위프 롤링 - 오버차지
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_EVE_ELECTRA"], 5018, 3 ) --//스위프 롤링 - 트라이 발칸
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_EVE_ELECTRA"], 5019, 3 ) --//포톤 플레어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"], 6016, 3 ) --//빅뱅 스트림
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"], 7004, 3 ) --//용아 4식 : 달빛 베기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"], 7011, 3 ) --//기공파 										2013.11.06 신진섭
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"], 7015, 3 ) --//나찰 3식 창살감옥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"], 8004, 3 ) --//스파이럴 블래스트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"], 8004, 3 ) --//스파이럴 블래스트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"], 8005, 3 ) --//세이버 - 익스팅션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"], 8005, 3 ) --//세이버 - 익스팅션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"], 8008, 3 ) --//버스트 라이징
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"], 8008, 3 ) --//버스트 라이징
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"], 8009, 3 ) --//버스트 웨이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"], 8009, 3 ) --//버스트 웨이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"], 8010, 3 ) --//소드 파이어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"], 8010, 3 ) --//소드 파이어
		--2차
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1004, 3 ) --//스파이럴 블래스트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1009, 3 ) --//라이징 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1010, 3 ) --//라이징 웨이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3004, 3 ) --//크레센트 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3010, 3 ) --//가이드 애로우
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"], 2004, 3 ) --//매직 미사일
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"], 2006, 3 ) --//체인 라이트닝
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_ARME_VOID_PRINCESS"], 2010, 3 ) --//다크 클라우드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_ARME_VOID_PRINCESS"], 2012, 3 ) --//데스 필드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"], 4004, 3 ) --//쇼크 웨이브 - 디바이더
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"], 4005, 3 ) --//쇼크 웨이브 - 커터
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4012, 3 ) --//발키리스 자벨린
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_EVE_CODE_EMPRESS"], 5010, 3 ) --//소닉 웨이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6006, 3 ) --//판데모니움 - 피어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6005, 3 ) --//판데모니움 - 카오스
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6012, 3 ) --//헤비 레일건
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1018, 3 ) --//소드 폴
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2018, 3 ) --//길로틴 프레스
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2019, 3 ) --//매지컬 메이크업
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2016, 3 ) --//에너지 스퍼트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3015, 3 ) --//페이탈리티
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4018, 3 ) --//하푼 스피어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4016, 3 ) --//리볼버 캐논 - OP탄
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4017, 3 ) --//리볼버 캐논 - HE탄
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"], 5017, 3 ) --//스위프 롤링 - 오버차지
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"], 5018, 3 ) --//스위프 롤링 - 트라이 발칸
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"], 5019, 3 ) --//포톤 플레어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6016, 3 ) --//빅뱅 스트림
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7004, 3 ) --//용아 4식 : 달빛 베기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_ARA_YAMA_RAJA"], 7011, 3 ) --//기공파 										2013.11.06 신진섭
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_ARA_YAMA_RAJA"], 7015, 3 ) --//나찰 3식 창살감옥
	-- 추가 대칭스킬 // 필요에따라 제거될 가능성 있음 // 20130710 버전 // 공솔
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"], 3214, 3 ) --//인탱글
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_EVE_ARCHITECTURE"], 5011, 3 ) --//제노사이드 리퍼
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"], 7006, 3 ) --//맹호격
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3214, 3 ) --//인탱글
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_EVE_CODE_EMPRESS"], 5011, 3 ) --//제노사이드 리퍼
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7006, 3 ) --//맹호격
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"], 6213, 3 ) --//듀얼 버스터
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"], 2017, 3 ) --//슈퍼 노바
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6213, 3 ) --//듀얼 버스터
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2017, 3 ) --//슈퍼 노바


--46109	2차 전직 액티브 스킬Lv+		--글리터 헌터 세트, 상급 글리터 헌터 세트, 야생의 추적자 상의
-----------------------------------------------------------------------------------------------------------------------------------------------
-- 2013.07.16 // 공솔 // 노전직에서 표시해줄 툴팁 내용 추가
-----------------------------------------------------------------------------------------------------------------------------------------------
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_ELSWORD_SWORDMAN"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_ARME_VIOLET_MAGE"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_LIRE_ELVEN_RANGER"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_RAVEN_FIGHTER"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_ELESIS_KNIGHT"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_EVE_NASOD"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_CHUNG_IRON_CANNON"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_ARA_MARTIAL_ARTIST"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
-----------------------------------------------------------------------------------------------------------------------------------------------
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_ELSWORD_KNIGHT"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_RAVEN_OVER_TAKER"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_EVE_ARCHITECTURE"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_EVE_ELECTRA"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
-----------------------------------------------------------------------------------------------------------------------------------------------
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1212, 2 ) --//롤링 스매시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1213, 2 ) --//임팩트 스매시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1219, 2 ) --//초열의 룬
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1220, 2 ) --//한빙의 룬
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1218, 2 ) --//크리티컬 소드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3209, 2 ) --//네이처 포스
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3211, 2 ) --//어설트 임팩트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3212, 2 ) --//백 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3213, 2 ) --//하이 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3220, 2 ) --//래피드 샷
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3219, 2 ) --//아크 샷
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3222, 2 ) --//낙인의 사격
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"], 2212, 2 ) --//샤이닝 바디
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"], 2210, 2 ) --//스태츄 오브 글로리
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_ARME_VOID_PRINCESS"], 2218, 2 ) --//섀도우 바디
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_ARME_VOID_PRINCESS"], 2216, 2 ) --//쁘띠 앙고르 - 타임 밤
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_ARME_VOID_PRINCESS"], 2217, 2 ) --//쁘띠 앙고르 - 헤비 돌
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"], 4209, 2 ) --//일섬
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"], 4210, 2 ) --//소닉 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4218, 2 ) --//리미트 크러셔
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_EVE_CODE_NEMESIS"], 5213, 2 ) --//스피어 버스트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_EVE_CODE_NEMESIS"], 5206, 2 ) --//테슬라 쇼크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_EVE_CODE_NEMESIS"], 5203, 2 ) --//마력 전환
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_EVE_CODE_EMPRESS"], 5206, 2 ) --//테슬라 쇼크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_EVE_CODE_EMPRESS"], 5216, 2 ) --//스핏 파이어 - 플러시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_EVE_CODE_EMPRESS"], 5217, 2 ) --//스핏 파이어 - 그리네이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_EVE_CODE_EMPRESS"], 5203, 2 ) --//마력 전환
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6209, 2 ) --//서든 버스터
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6210, 2 ) --//아틸러리 노바
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6219, 2 ) --//레그 샷
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6216, 2 ) --//럼블 샷
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6218, 2 ) --//래피드 캐논
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1226, 2 ) --//미라지 스팅
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1227, 2 ) --//페이탈 슬랩
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2222, 2 ) --//에너제틱 바디
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2221, 2 ) --//공간 왜곡
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2225, 2 ) --//웜홀
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3227, 2 ) --//지연의 신호탄
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3230, 1 ) --//진노의 씨앗
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3231, 1 ) --//엘드랏실의 분노
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4222, 2 ) --//네이팜 그리네이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4221, 2 ) --//치명상
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"], 5220, 2 ) --//테이저 필라
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"], 5221, 2 ) --//쿠글블릿츠
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"], 5206, 2 ) --//테슬라 쇼크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"], 5203, 2 ) --//마력 전환
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6225, 2 ) --//박격포
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6226, 1 ) --//지원 포격
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7213, 2 ) --//맹호 3식 : 지축
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_ARA_YAMA_RAJA"], 7216, 2 ) --//쾌속
		-- 추가 대칭스킬 // 필요에따라 제거될 가능성 있음 // 20130710 버전 // 공솔
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6211, 2 ) --//버스트 울프
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4021, 2 ) --//데들리 레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6224, 2 ) --//원더 월
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1211, 2 ) --//소닉 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3210, 2 ) --//슬라이드 더블 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6217, 2 ) --//뷸렛 블릿츠


--46110	2차 전직 1필 스킬Lv+		--갈라진 혼돈 세트, 뒤틀린 바람 세트, 신비한 영혼의 상의
-----------------------------------------------------------------------------------------------------------------------------------------------
-- 2013.07.16 // 공솔 // 노전직에서 표시해줄 툴팁 내용 추가
-----------------------------------------------------------------------------------------------------------------------------------------------
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_ELSWORD_SWORDMAN"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_ARME_VIOLET_MAGE"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_LIRE_ELVEN_RANGER"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_RAVEN_FIGHTER"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_ELESIS_KNIGHT"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_EVE_NASOD"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_CHUNG_IRON_CANNON"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_ARA_MARTIAL_ARTIST"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
-----------------------------------------------------------------------------------------------------------------------------------------------
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_ELSWORD_KNIGHT"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_RAVEN_OVER_TAKER"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_EVE_ARCHITECTURE"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_EVE_ELECTRA"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
-----------------------------------------------------------------------------------------------------------------------------------------------
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1211, 2 ) --//소닉 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1216, 2 ) --//스플래시 익스플로전
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3210, 2 ) --//슬라이드 더블 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3008, 2 ) --//아이레린나 - 님프
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3009, 2 ) --//아이레린나 - 실프
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3217, 2 ) --//프리징 애로우 - 스팅
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3218, 2 ) --//프리징 애로우 - 드리즐
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"], 2209, 2 ) --//체인 버스트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"], 2211, 2 ) --//워터 캐논
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"], 4211, 2 ) --//울프 팽
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4217, 2 ) --//엑스 크래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_EVE_CODE_NEMESIS"], 5211, 2 ) --//아토믹 블래스터 - 플라즈마 건
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_EVE_CODE_NEMESIS"], 5212, 2 ) --//아토믹 블래스터 - 소닉 건
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_EVE_CODE_NEMESIS"], 5008, 2 ) --//아토믹 실드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_EVE_CODE_EMPRESS"], 5214, 2 ) --//서피스 커팅
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_EVE_CODE_EMPRESS"], 5218, 2 ) --//일렉트로닉 필드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6211, 2 ) --//버스트 울프
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6224, 2 ) --//원더 월
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6217, 2 ) --//뷸렛 블릿츠
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1221, 2 ) --//크레센트 컷
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1225, 2 ) --//소드 블래스팅
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2223, 2 ) --//헤비 프레스
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2224, 2 ) --//임팩트 해머
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3226, 2 ) --//퓨리어스 인게이지
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4021, 2 ) --//데들리 레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"], 5022, 2 ) --//에너지 니들스
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"], 5023, 2 ) --//에너제틱 하트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6224, 2 ) --//원더 월
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7212, 2 ) --//맹호 4식 : 노도
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_ARA_YAMA_RAJA"], 7013, 2 ) --//나찰 2식 연환장
	-- 추가 대칭스킬 // 필요에따라 제거될 가능성 있음 // 20130710 버전 // 공솔
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1213, 2 ) --//임팩트 스매시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3211, 2 ) --//어설트 임팩트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6218, 2 ) --//래피드 캐논
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3020, 2 ) --//글라이딩 스트라이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7404, 2 ) --//창술의 극의
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4010, 2 ) --//아크 에너미
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_EVE_CODE_NEMESIS"], 105, 2 ) --//격려의 기운
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6210, 2 ) --//아틸러리 노바
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6008, 2 ) --//아이언 하울링
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4221, 2 ) --//치명상
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"], 5412, 2 ) --//고출력 전자회로
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"], 5021, 2 ) --//사우전드 스타
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6008, 2 ) --//아이언 하울링


--46111	2차 전직 2필 스킬Lv+		--작렬하는 원소 세트
-----------------------------------------------------------------------------------------------------------------------------------------------
-- 2013.07.16 // 공솔 // 노전직에서 표시해줄 툴팁 내용 추가
-----------------------------------------------------------------------------------------------------------------------------------------------
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_ELSWORD_SWORDMAN"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_ARME_VIOLET_MAGE"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_LIRE_ELVEN_RANGER"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_RAVEN_FIGHTER"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_ELESIS_KNIGHT"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_EVE_NASOD"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_CHUNG_IRON_CANNON"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_ARA_MARTIAL_ARTIST"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
-----------------------------------------------------------------------------------------------------------------------------------------------
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_ELSWORD_KNIGHT"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_RAVEN_OVER_TAKER"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_EVE_ARCHITECTURE"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_EVE_ELECTRA"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"], 902, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
-----------------------------------------------------------------------------------------------------------------------------------------------
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1007, 2 ) --//윈드밀
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1008, 2 ) --//샌드 스톰
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1014, 2 ) --//루나 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3007, 2 ) --//샤프 폴
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3014, 2 ) --//에어로 스트레이프
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3221, 2 ) --//윈드 블래스트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3012, 2 ) --//윈드 워드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"], 2008, 2 ) --//메테오 샤워
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"], 2009, 2 ) --//라이트닝 샤워
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_ARME_VOID_PRINCESS"], 2014, 2 ) --//팬텀 브리딩 - 다크 폴
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_ARME_VOID_PRINCESS"], 2015, 2 ) --//팬텀 브리딩 - 다크 홀
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"], 4007, 2 ) --//플라잉 임팩트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"], 4008, 2 ) --//기가 드라이브 - 리미터
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"], 4009, 2 ) --//기가 드라이브 - 사이즈믹 트레몰
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4014, 2 ) --//와일드 차지
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4010, 2 ) --//아크 에너미
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_EVE_CODE_NEMESIS"], 5007, 2 ) --//아이언 스크랩스
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_EVE_CODE_NEMESIS"], 5009, 2 ) --//어설트 스피어 - 저지먼트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_EVE_CODE_EMPRESS"], 5015, 2 ) --//어설트 스피어 - 버스터
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_EVE_CODE_EMPRESS"], 5014, 2 ) --//스페이스 렌치
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6008, 2 ) --//아이언 하울링
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6009, 2 ) --//랜드 디몰리셔 - 헤비 암즈
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6010, 2 ) --//랜드 디몰리셔 - 어스퀘이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6015, 2 ) --//샤프슈터 신드롬
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6014, 2 ) --//카밋 크래셔
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1019, 2 ) --//레이지 커터
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1017, 2 ) --//메일스톰 레이지
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2020, 2 ) --//스크류 드라이버 - 토네이도
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2021, 2 ) --//스크류 드라이버 - 드릴러
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3016, 2 ) --//트래핑 애로우 - 버스터
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3017, 2 ) --//트래핑 애로우 - 펑거스
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3020, 2 ) --//글라이딩 스트라이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4022, 2 ) --//이그니션 크로우 - 네이팜
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4023, 2 ) --//이그니션 크로우 - 인시너레이션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"], 5021, 2 ) --//사우전드 스타
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6021, 2 ) --//택티컬 필드 - 인듀런스
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6022, 2 ) --//택티컬 필드 - 레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6020, 2 ) --//드레드 체이스
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6019, 2 ) --//아틸러리 스트라이크 - 미슬 샤워
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7005, 2 ) --//무쌍참
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_ARA_YAMA_RAJA"], 7218, 2 ) --//나찰 4식 탈혼
		-- 추가 대칭스킬 // 필요에따라 제거될 가능성 있음 // 20130710 버전 // 공솔
			g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4217, 2 ) --//엑스 크래시
			g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6224, 2 ) --//원더 월
			g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"], 5023, 2 ) --//에너제틱 하트
			g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1013, 2 ) --//스톰 블레이드
			g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3226, 2 ) --//퓨리어스 인게이지

		
--46103	기본 전직 2필 스킬Lv+		--솟구치는 용기의 상의
		--노전직
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ELSWORD_SWORDMAN"], 1001, 4 ) --//플레임 게이저
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ELSWORD_SWORDMAN"], 1000, 4 ) --//페이탈 퓨리
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ARME_VIOLET_MAGE"], 2001, 4 ) --//라이트닝 볼트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ARME_VIOLET_MAGE"], 2000, 4 ) --//거스트 스크류
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_LIRE_ELVEN_RANGER"], 3001, 4 ) --//멀티플 스팅어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_LIRE_ELVEN_RANGER"], 3000, 4 ) --//퍼펙트 스톰
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_RAVEN_FIGHTER"], 4000, 4 ) --//파워 어설트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_RAVEN_FIGHTER"], 4001, 4 ) --//캐논 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ELESIS_KNIGHT"], 8001, 4 ) --//파워 버스터
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ELESIS_KNIGHT"], 8000, 4 ) --//와일드 쇼크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_EVE_NASOD"], 5001, 4 ) --//디멘션 링크 - 블레이더
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_EVE_NASOD"], 5000, 4 ) --//일루전 스팅어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_CHUNG_IRON_CANNON"], 6000, 4 ) --//루나틱 블로우
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_CHUNG_IRON_CANNON"], 6001, 4 ) --//스케어 체이스
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ARA_MARTIAL_ARTIST"], 7000, 4 ) --//용아 2식 : 빨래 널기
		--1차
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ELSWORD_KNIGHT"], 1001, 4 ) --//플레임 게이저
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ELSWORD_KNIGHT"], 1000, 4 ) --//페이탈 퓨리
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"], 1001, 4 ) --//플레임 게이저
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"], 1000, 4 ) --//페이탈 퓨리
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"], 3001, 4 ) --//멀티플 스팅어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"], 3000, 4 ) --//퍼펙트 스톰
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"], 3001, 4 ) --//멀티플 스팅어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"], 3000, 4 ) --//퍼펙트 스톰
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"], 2001, 4 ) --//라이트닝 볼트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"], 2000, 4 ) --//거스트 스크류
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"], 2001, 4 ) --//라이트닝 볼트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"], 2000, 4 ) --//거스트 스크류
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"], 4000, 4 ) --//파워 어설트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"], 4001, 4 ) --//캐논 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_RAVEN_OVER_TAKER"], 4000, 4 ) --//파워 어설트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_RAVEN_OVER_TAKER"], 4001, 4 ) --//캐논 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"], 5001, 4 ) --//디멘션 링크 - 블레이더
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"], 5000, 4 ) --//일루전 스팅어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_EVE_ARCHITECTURE"], 5001, 4 ) --//디멘션 링크 - 블레이더
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_EVE_ARCHITECTURE"], 5000, 4 ) --//일루전 스팅어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"], 6000, 4 ) --//루나틱 블로우
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"], 6001, 4 ) --//스케어 체이스
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"], 6000, 4 ) --//루나틱 블로우
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"], 6001, 4 ) --//스케어 체이스
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"], 1001, 4 ) --//플레임 게이저
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"], 1000, 4 ) --//페이탈 퓨리
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"], 2001, 4 ) --//라이트닝 볼트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"], 2000, 4 ) --//거스트 스크류
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"], 3001, 4 ) --//멀티플 스팅어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"], 3000, 4 ) --//퍼펙트 스톰
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"], 4000, 4 ) --//파워 어설트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"], 4001, 4 ) --//캐논 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_EVE_ELECTRA"], 5001, 4 ) --//디멘션 링크 - 블레이더
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_EVE_ELECTRA"], 5000, 4 ) --//일루전 스팅어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"], 6000, 4 ) --//루나틱 블로우
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"], 6001, 4 ) --//스케어 체이스
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"], 7000, 4 ) --//용아 2식 : 빨래 널기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"], 7000, 4 ) --//용아 2식 : 빨래 널기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"], 8001, 4 ) --//파워 버스터
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"], 8001, 4 ) --//파워 버스터
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"], 8000, 4 ) --//와일드 쇼크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"], 8000, 4 ) --//와일드 쇼크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"], 8001, 4 ) --//파워 버스터
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"], 8001, 4 ) --//파워 버스터
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"], 8000, 4 ) --//와일드 쇼크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"], 8000, 4 ) --//와일드 쇼크
		--2차
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1001, 4 ) --//플레임 게이저
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1000, 4 ) --//페이탈 퓨리
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1001, 4 ) --//플레임 게이저
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1000, 4 ) --//페이탈 퓨리
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3001, 4 ) --//멀티플 스팅어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3000, 4 ) --//퍼펙트 스톰
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3001, 4 ) --//멀티플 스팅어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3000, 4 ) --//퍼펙트 스톰
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"], 2001, 4 ) --//라이트닝 볼트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"], 2000, 4 ) --//거스트 스크류
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ARME_VOID_PRINCESS"], 2001, 4 ) --//라이트닝 볼트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ARME_VOID_PRINCESS"], 2000, 4 ) --//거스트 스크류
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"], 4000, 4 ) --//파워 어설트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"], 4001, 4 ) --//캐논 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4000, 4 ) --//파워 어설트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4001, 4 ) --//캐논 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_EVE_CODE_NEMESIS"], 5001, 4 ) --//디멘션 링크 - 블레이더
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_EVE_CODE_NEMESIS"], 5000, 4 ) --//일루전 스팅어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_EVE_CODE_EMPRESS"], 5001, 4 ) --//디멘션 링크 - 블레이더
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_EVE_CODE_EMPRESS"], 5000, 4 ) --//일루전 스팅어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6000, 4 ) --//루나틱 블로우
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6001, 4 ) --//스케어 체이스
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6000, 4 ) --//루나틱 블로우
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6001, 4 ) --//스케어 체이스
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1001, 4 ) --//플레임 게이저
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1000, 4 ) --//페이탈 퓨리
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2001, 4 ) --//라이트닝 볼트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2000, 4 ) --//거스트 스크류
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3001, 4 ) --//멀티플 스팅어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3000, 4 ) --//퍼펙트 스톰
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4000, 4 ) --//파워 어설트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4001, 4 ) --//캐논 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"], 5001, 4 ) --//디멘션 링크 - 블레이더
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"], 5000, 4 ) --//일루전 스팅어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6000, 4 ) --//루나틱 블로우
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6001, 4 ) --//스케어 체이스
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7000, 4 ) --//용아 2식 : 빨래 널기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ARA_YAMA_RAJA"], 7000, 4 ) --//용아 2식 : 빨래 널기
	-- 추가 대칭스킬 // 필요에따라 제거될 가능성 있음 // 20130710 버전 // 공솔
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ELSWORD_SWORDMAN"], 1200, 4 ) --//메가 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_RAVEN_FIGHTER"], 4002, 4 ) --//세븐 버스트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ELESIS_KNIGHT"], 8202, 4 ) --//러싱 소드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ELSWORD_KNIGHT"], 1200, 4 ) --//메가 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"], 1200, 4 ) --//메가 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"], 4002, 4 ) --//세븐 버스트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_RAVEN_OVER_TAKER"], 4002, 4 ) --//세븐 버스트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"], 1200, 4 ) --//메가 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"], 4002, 4 ) --//세븐 버스트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"], 8202, 4 ) --//러싱 소드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"], 8202, 4 ) --//러싱 소드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"], 8202, 4 ) --//러싱 소드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"], 8202, 4 ) --//러싱 소드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1200, 4 ) --//메가 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1200, 4 ) --//메가 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"], 4002, 4 ) --//세븐 버스트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4002, 4 ) --//세븐 버스트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1200, 4 ) --//메가 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4002, 4 ) --//세븐 버스트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ARME_VIOLET_MAGE"], 2201, 4 ) --//바인딩 서클
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_LIRE_ELVEN_RANGER"], 3200, 4 ) --//레일 스팅어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_CHUNG_IRON_CANNON"], 6200, 4 ) --//브루탈 스윙
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ARA_MARTIAL_ARTIST"], 7200, 4 ) --//낭아 2식 : 바람 쐐기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"], 3200, 4 ) --//레일 스팅어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"], 3200, 4 ) --//레일 스팅어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"], 2201, 4 ) --//바인딩 서클
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"], 2201, 4 ) --//바인딩 서클
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"], 6200, 4 ) --//브루탈 스윙
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"], 6200, 4 ) --//브루탈 스윙
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"], 2201, 4 ) --//바인딩 서클
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"], 3200, 4 ) --//레일 스팅어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"], 6200, 4 ) --//브루탈 스윙
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"], 7200, 4 ) --//낭아 2식 : 바람 쐐기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3200, 4 ) --//레일 스팅어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3200, 4 ) --//레일 스팅어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"], 2201, 4 ) --//바인딩 서클
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ARME_VOID_PRINCESS"], 2201, 4 ) --//바인딩 서클
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6200, 4 ) --//브루탈 스윙
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6200, 4 ) --//브루탈 스윙
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2201, 4 ) --//바인딩 서클
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3200, 4 ) --//레일 스팅어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6200, 4 ) --//브루탈 스윙
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7200, 4 ) --//낭아 2식 : 바람 쐐기
		
		--46120	하이퍼 액티브 스킬Lv+		--불가사의한 염원의 상의
		-----------------------------------------------------------------------------------------------------------------------------------------------
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_ELSWORD_SWORDMAN"], 903, 1 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_ARME_VIOLET_MAGE"], 903, 1 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_LIRE_ELVEN_RANGER"], 903, 1 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_RAVEN_FIGHTER"], 903, 1 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_ELESIS_KNIGHT"], 903, 1 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_EVE_NASOD"], 903, 1 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_CHUNG_IRON_CANNON"], 903, 1 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_ARA_MARTIAL_ARTIST"], 903, 1 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_ELSWORD_KNIGHT"], 903, 1 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"], 903, 1 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"], 903, 1 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"], 903, 1 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"], 903, 1 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"], 903, 1 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"], 903, 1 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_RAVEN_OVER_TAKER"], 903, 1 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"], 903, 1 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"], 903, 1 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"], 903, 1 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"], 903, 1 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"], 903, 1 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"], 903, 1 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"], 903, 1 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_EVE_ELECTRA"], 903, 1 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"], 903, 1 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"], 903, 1 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"], 903, 1 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"], 903, 1 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"], 903, 1 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"], 903, 1 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"], 903, 1 ) --//(특정 스킬 강화 옵션 : 2차전직)
-----------------------------------------------------------------------------------------------------------------------------------------------
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1600, 1 ) --//기간틱 슬래쉬
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1601, 1 ) --//샤이닝 룬 버스터
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1602, 1 ) --//블레이드 레인
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"], 2600, 1 ) --//엘리멘탈 스톰
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_ARME_VOID_PRINCESS"], 2601, 1 ) --//어비스 앙고르
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2602, 1 ) --//페이트 스페이스
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3600, 1 ) --//스파이럴 스트라이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3601, 1 ) --//슈터 데스티니
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3602, 1 ) --//이노센트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"], 4600, 1 ) --//익스트림 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4601, 1 ) --//인페르날 암즈
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4602, 1 ) --//버닝 버스터
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_EVE_CODE_NEMESIS"], 5600, 1 ) --//루나틱 스커드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_EVE_CODE_EMPRESS"], 5601, 1 ) --//링크 오버차지 일루전 - 썬더볼트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"], 5602, 1 ) --//사이킥 아틸러리 - 이레이저 캐논
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6600, 1 ) --//둠 스트라이크 
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6601, 1 ) --//아웃레이지 스트라이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"], 6602, 1 ) --//세틀라이트 레인 
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7600, 1 ) --//분기등천 - 천수화
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_ARA_YAMA_RAJA"], 7601, 1 ) --//대규환지옥
-----------------------------------------------------------------------------------------------------------------------------------------------
		-- 1차전직 기본스킬(패시브 제외) +3
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 15, UNIT_CLASS["UC_ELSWORD_SWORDMAN"], 902, 3 ) --//(특정 스킬 강화 옵션 : 1차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 15, UNIT_CLASS["UC_ARME_VIOLET_MAGE"], 902, 3 ) --//(특정 스킬 강화 옵션 : 1차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 15, UNIT_CLASS["UC_LIRE_ELVEN_RANGER"], 902, 3 ) --//(특정 스킬 강화 옵션 : 1차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 15, UNIT_CLASS["UC_RAVEN_FIGHTER"], 902, 3 ) --//(특정 스킬 강화 옵션 : 1차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 15, UNIT_CLASS["UC_ELESIS_KNIGHT"], 902, 3 ) --//(특정 스킬 강화 옵션 : 1차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 15, UNIT_CLASS["UC_EVE_NASOD"], 902, 3 ) --//(특정 스킬 강화 옵션 : 1차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 15, UNIT_CLASS["UC_CHUNG_IRON_CANNON"], 902, 3 ) --//(특정 스킬 강화 옵션 : 1차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 15, UNIT_CLASS["UC_ARA_MARTIAL_ARTIST"], 902, 3 ) --//(특정 스킬 강화 옵션 : 1차전직)
		
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 15, UNIT_CLASS["UC_ELSWORD_KNIGHT"], 1208, 3 ) -- 에어 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 15, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"], 1215, 3 ) -- 윈드 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 15, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"], 3206, 3 ) --스피닝 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 15, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"], 3215, 3 ) --슈팅 매그넘
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 15, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"], 2208, 3 ) --메디테이션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 15, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"], 2215, 3 ) --마나 인테이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 15, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"], 4207, 3 ) --버서커 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 15, UNIT_CLASS["UC_RAVEN_OVER_TAKER"], 4214, 3 ) --헬 다이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 15, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"], 5004, 3 ) --익스플로전 임팩트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 15, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"], 6206, 3 ) --스틸 엣지
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 15, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"], 6212, 3 ) --더블 파이어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 15, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"], 1222, 3 ) --소드 실드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 15, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"], 2018, 3 ) --길로틴 프레스
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 15, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"], 3223, 3 ) --이보크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 15, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"], 4015, 3 ) --버스팅 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 15, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"], 7208, 3 ) --바위 깨기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 15, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"], 7009, 3 ) --흡혼
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 15, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"], 8208, 3 ) --크로스 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 15, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"], 8208, 3 ) --크로스 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 15, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"], 8211, 3 ) --소드 이럽션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 15, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"], 8211, 3 ) --소드 이럽션
		
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 15, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1208, 3 ) --에어 슬래시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 15, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1215, 3 ) --윈드 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 15, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1222, 3 ) --소드 실드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 15, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"], 2208, 3 ) --메디테이션
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 15, UNIT_CLASS["UC_ARME_VOID_PRINCESS"], 2215, 3 ) --마나 인테이크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 15, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2018, 3 ) --길로틴 프레스
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 15, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3206, 3 ) --스피닝 킥
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 15, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3215, 3 ) --슈팅 매그넘
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 15, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3223, 3 ) --이보크
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 15, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"], 4207, 3 ) --버서커 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 15, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4214, 3 ) --헬 다이브
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 15, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4015, 3 ) --버스팅 블레이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 15, UNIT_CLASS["UC_EVE_CODE_NEMESIS"], 5004, 3 ) --익스플로전 임팩트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 15, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6206, 3 ) --스틸 엣지
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 15, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"], 6212, 3 ) --더블 파이어
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 15, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7208, 3 ) --바위 깨기
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 15, UNIT_CLASS["UC_ARA_YAMA_RAJA"], 7009, 3 ) --흡혼
-----------------------------------------------------------------------------------------------------------------------------------------------
		-- 2차전직 기본스킬(패시브 제외) +3
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 16, UNIT_CLASS["UC_ELSWORD_SWORDMAN"], 903, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 16, UNIT_CLASS["UC_ARME_VIOLET_MAGE"], 903, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 16, UNIT_CLASS["UC_LIRE_ELVEN_RANGER"], 903, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 16, UNIT_CLASS["UC_RAVEN_FIGHTER"], 903, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 16, UNIT_CLASS["UC_ELESIS_KNIGHT"], 903, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 16, UNIT_CLASS["UC_EVE_NASOD"], 903, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 16, UNIT_CLASS["UC_CHUNG_IRON_CANNON"], 903, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 16, UNIT_CLASS["UC_ARA_MARTIAL_ARTIST"], 903, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 16, UNIT_CLASS["UC_ELSWORD_KNIGHT"], 903, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 16, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"], 903, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 16, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"], 903, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 16, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"], 903, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 16, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"], 903, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 16, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"], 903, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 16, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"], 903, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 16, UNIT_CLASS["UC_RAVEN_OVER_TAKER"], 903, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 16, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"], 903, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 16, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"], 903, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 16, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"], 903, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 16, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"], 903, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 16, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"], 903, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 16, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"], 903, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 16, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"], 903, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 16, UNIT_CLASS["UC_LIRE_ELVEN_RANGER"], 903, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 16, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"], 903, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 16, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"], 903, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 16, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"], 903, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 16, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"], 903, 2 ) --//(특정 스킬 강화 옵션 : 2차전직)

-- RESTORE_ELESIS_SOCKETS: 2nd job socket groups
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8205, 4 ) --//구르기 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8206, 4 ) --//소드 웨이브 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8202, 4 ) --//반격 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8207, 4 ) --//막기 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8204, 3 ) --//발차기 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8210, 3 ) --//웨폰 브레이크 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8209, 3 ) --//아머 브레이크 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8203, 3 ) --//극기 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8212, 2 ) --//롤링 스매시 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8213, 2 ) --//임팩트 스매시 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8200, 4 ) --//메가 슬래시 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8201, 4 ) --//어설트 슬래시 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8208, 3 ) --//에어 슬래시 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8211, 2 ) --//소닉 블레이드 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8001, 4 ) --//플레임 게이저 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8000, 4 ) --//페이탈 퓨리 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8004, 3 ) --//스파이럴 블래스트 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8007, 2 ) --//윈드밀 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8008, 2 ) --//샌드 스톰 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8002, 4 ) --//언리미티드 블레이드 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8003, 4 ) --//트리플 게이저 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8006, 3 ) --//더블 슬래시 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8005, 3 ) --//아마겟돈 블레이드 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8205, 4 ) --//구르기 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8206, 4 ) --//소드 웨이브 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8202, 4 ) --//반격 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8207, 4 ) --//막기 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8201, 4 ) --//어설트 슬래시 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8200, 4 ) --//메가 슬래시 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8201, 4 ) --//어설트 슬래시 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8206, 4 ) --//소드 웨이브 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8000, 4 ) --//페이탈 퓨리 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8204, 3 ) --//발차기 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8210, 3 ) --//웨폰 브레이크 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8209, 3 ) --//아머 브레이크 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8203, 3 ) --//극기 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8208, 3 ) --//에어 슬래시 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8004, 3 ) --//스파이럴 블래스트 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8212, 2 ) --//롤링 스매시 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8213, 2 ) --//임팩트 스매시 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8211, 2 ) --//소닉 블레이드 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8211, 2 ) --//소닉 블레이드 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8213, 2 ) --//임팩트 스매시 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8007, 2 ) --//윈드밀 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8008, 2 ) --//샌드 스톰 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8001, 4 ) --//플레임 게이저 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8000, 4 ) --//페이탈 퓨리 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8200, 4 ) --//메가 슬래시 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8600, 1 ) --//기간틱 슬래쉬 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 15, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8208, 3 ) --에어 슬래시 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 16, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 8212, 3 ) --롤링 스매시 --// cloned for UC_ELESIS_GRAND_MASTER
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8205, 4 ) --//구르기 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8206, 4 ) --//소드 웨이브 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8202, 4 ) --//반격 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8207, 4 ) --//막기 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8204, 3 ) --//발차기 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8217, 3 ) --//소드 인챈트 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8214, 3 ) --//대폭살 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8203, 3 ) --//극기 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8219, 2 ) --//초열의 룬 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8220, 2 ) --//한빙의 룬 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 1, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8218, 2 ) --//크리티컬 소드 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8200, 4 ) --//메가 슬래시 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8201, 4 ) --//어설트 슬래시 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8215, 3 ) --//윈드 블레이드 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 2, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8216, 2 ) --//스플래시 익스플로전 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8001, 4 ) --//플레임 게이저 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8000, 4 ) --//페이탈 퓨리 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8009, 3 ) --//라이징 슬래시 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8010, 3 ) --//라이징 웨이브 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 3, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8014, 2 ) --//루나 블레이드 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8002, 4 ) --//언리미티드 블레이드 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8003, 4 ) --//트리플 게이저 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8011, 3 ) --//소드 파이어 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8012, 3 ) --//피닉스 탤런 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 4, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8013, 2 ) --//스톰 블레이드 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8205, 4 ) --//구르기 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8206, 4 ) --//소드 웨이브 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8202, 4 ) --//반격 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8207, 4 ) --//막기 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 5, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8201, 4 ) --//어설트 슬래시 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8200, 4 ) --//메가 슬래시 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8201, 4 ) --//어설트 슬래시 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8206, 4 ) --//소드 웨이브 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 6, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8000, 4 ) --//페이탈 퓨리 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8204, 3 ) --//발차기 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8217, 3 ) --//소드 인챈트 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8214, 3 ) --//대폭살 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 7, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8203, 3 ) --//극기 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 8, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8215, 3 ) --//윈드 블레이드 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8009, 3 ) --//라이징 슬래시 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 9, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8010, 3 ) --//라이징 웨이브 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8219, 2 ) --//초열의 룬 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8220, 2 ) --//한빙의 룬 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 10, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8218, 2 ) --//크리티컬 소드 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 11, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8216, 2 ) --//스플래시 익스플로전 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8014, 2 ) --//루나 블레이드 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 12, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8013, 2 ) --//스톰 블레이드 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8001, 4 ) --//플레임 게이저 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8000, 4 ) --//페이탈 퓨리 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 13, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8200, 4 ) --//메가 슬래시 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 14, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8601, 1 ) --//샤이닝 룬 버스터 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 15, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8215, 3 ) --윈드 블레이드 --// cloned for UC_ELESIS_BLAZING_HEART
	g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 16, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 8216, 3 ) --스플래시 익스플로전 --// cloned for UC_ELESIS_BLAZING_HEART
		
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 16, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"], 1212, 3 ) --롤링 스매시
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 16, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"], 1216, 3 ) --스플래시 익스플로전
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 16, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"], 1226, 3 ) --미라지 스팅
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 16, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"], 2212, 3 ) --샤이닝 바디
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 16, UNIT_CLASS["UC_ARME_VOID_PRINCESS"], 2218, 3 ) --섀도우 바디
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 16, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], 2222, 3 ) --에너제틱 바디
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 16, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"], 3209, 3 ) --네이처 포스
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 16, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"], 3220, 3 ) --래피드 샷
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 16, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"], 3227, 3 ) --지연의 신호탄
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 16, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"], 4211, 3 ) --울프 팽
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 16, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"], 4218, 3 ) --리미트 크러셔
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 16, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"], 4222, 3 ) --네이팜 그리네이드
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 16, UNIT_CLASS["UC_EVE_CODE_NEMESIS"], 5213, 3 ) --스피어 버스트
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 16, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"], 6209, 3 ) --서든 버스터
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 16, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"], 7213, 3 ) --지축
		g_pCX2SocketItem:AddSkillLevelUpSocketGroup( 16, UNIT_CLASS["UC_ARA_YAMA_RAJA"], 7216, 3 ) --쾌속
