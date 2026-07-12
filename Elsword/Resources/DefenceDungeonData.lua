-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



-- 어둠의 문 안열렸을때 곱해지는 값
--DefenceDungeonManager:SetNotOpenGateMultiply( 0.1 )
DefenceDungeonManager:SetNotOpenGateMultiply( 0.25 ) -- ES_INT, 0.25 로 값 수정



-- 어둠의 문 입장 조건 설정

-- 사내
--DefenceDungeonManager:AddEnterLevelCondition( 65, 100 ) -- 100% 확률 세팅

-- Real
DefenceDungeonManager:AddEnterLevelCondition( 5, 25 )
DefenceDungeonManager:AddEnterLevelCondition( 10, 15 )
DefenceDungeonManager:AddEnterLevelCondition( 15, 5 )




-- 어둠의 문이 출현하면 안되는 던전 설정
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_RUBEN_EL_TREE_NORMAL"] ) -- 엘의 나무
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_TUTORIAL_ELSWORD"] ) -- 엘소드 튜토리얼
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_TUTORIAL_ARME"] ) -- 아이샤 튜토리얼
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_TUTORIAL_LIRE"] ) -- 레나 튜토리얼
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_TUTORIAL_RAVEN"] ) -- 레이븐 튜토리얼
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_TUTORIAL_EVE"] ) -- 이브 튜토리얼
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_TUTORIAL_CHUNG"] ) -- 청 튜토리얼
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_ELDER_BENDERS_CAVE_NORMAL"] ) -- 벤더스의 동굴
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_ELDER_BENDERS_CAVE_HARD"] ) -- 벤더스의 동굴 Hard
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_ELDER_BENDERS_CAVE_EXPERT"] ) -- 벤더스의 동굴 Expert
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_ELDER_DRUID_FOREST_NORMAL"] ) -- 어둠의 숲 
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_ELDER_DRUID_FOREST_HARD"] ) -- 어둠의 숲 Hard
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_ELDER_DRUID_FOREST_EXPERT"] ) -- 어둠의 숲 Expert
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_RUBEN_RUIN_OF_ELF_NORMAL"] ) -- 숲속의 폐허
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_RUBEN_RUIN_OF_ELF_HARD"] ) -- 숲속의 폐허 Hard
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_RUBEN_RUIN_OF_ELF_EXPERT"] ) -- 숲속의 폐허 Expert
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_RUBEN_SWAMP_NORMAL"] ) -- 하얀 안개 습지
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_RUBEN_SWAMP_HARD"] ) -- 하얀 안개 습지 Hard
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_RUBEN_SWAMP_EXPERT"] ) -- 하얀 안개 습지 Expert
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_ELDER_WALLY_CASTLE_CENTER_NORMAL"] ) -- 월리의 성 
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_ELDER_WALLY_CASTLE_CENTER_HARD"] ) -- 월리의 성 Hard
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_ELDER_WALLY_CASTLE_CENTER_EXPERT"] ) -- 월리의 성 Expert
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_ELDER_WALLY_CASTLE_ROOF_NORMAL"] ) -- 월리의 성 외곽 
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_ELDER_WALLY_CASTLE_ROOF_HARD"] ) -- 월리의 성 외곽 Hard
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_ELDER_WALLY_CASTLE_ROOF_EXPERT"] ) -- 월리의 성 외곽 Expert
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_ELDER_BELOW_PASSAGE_NORMAL"] ) -- 지하수로 
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_ELDER_BELOW_PASSAGE_HARD"] ) -- 지하수로 Hard
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_ELDER_BELOW_PASSAGE_EXPERT"] ) -- 지하수로 Expert
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_BESMA_DRAGON_ROAD_NORMAL"] ) -- 용의 길
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_BESMA_DRAGON_ROAD_HARD"] ) -- 용의 길 Hard
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_BESMA_DRAGON_ROAD_EXPERT"] ) -- 용의 길 Expert
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_BESMA_LAKE_NORMAL"] ) -- 베스마 호수 
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_BESMA_LAKE_HARD"] ) -- 베스마 호수 Hard
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_BESMA_LAKE_EXPERT"] ) -- 베스마 호수 Expert
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_BESMA_DRAGON_NEST_NORMAL"] ) -- 용의 둥지
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_BESMA_DRAGON_NEST_HARD"] ) -- 용의 둥지 Hard
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_BESMA_DRAGON_NEST_EXPERT"] ) -- 용의 둥지 Expert
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_BESMA_AIRSHIP_NORMAL"] ) -- 수송 비공정
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_BESMA_AIRSHIP_HARD"] ) -- 수송 비공정 Hard
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_BESMA_AIRSHIP_EXPERT"] ) -- 수송 비공정 Expert
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_BESMA_LAKE_NIGHT_NORMAL"] ) -- 베스마 호수(밤)
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_BESMA_LAKE_NIGHT_HARD"] ) -- 베스마 호수(밤) Hard
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_BESMA_LAKE_NIGHT_EXPERT"] ) -- 베스마 호수(밤) Expert
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_BESMA_MINE2_NORMAL"] ) -- 리치 광산
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_BESMA_MINE2_HARD"] ) -- 리치 광산 Hard
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_BESMA_MINE2_EXPERT"] ) -- 리치 광산 Expert
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_ALTERA_BATTLE_AIR_SHIP_NORMAL"] ) -- 블랙크로우 호
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_ALTERA_BATTLE_AIR_SHIP_HARD"] ) -- 블랙크로우 호 Hard
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_ALTERA_BATTLE_AIR_SHIP_EXPERT"] ) -- 블랙크로우 호 Expert
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_ALTERA_PLAIN_RECYCLE_NORMAL"] ) -- 회귀의 평원
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_ALTERA_PLAIN_RECYCLE_HARD"] ) -- 회귀의 평원 Hard
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_ALTERA_PLAIN_RECYCLE_EXPERT"] ) -- 회귀의 평원 Expert
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_ALTERA_BELOW_TUNNEL_NORMAL"] ) -- 운송터널 B4-1
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_ALTERA_BELOW_TUNNEL_HARD"] ) -- 운송터널 B4-2 Hard
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_ALTERA_BELOW_TUNNEL_EXPERT"] ) -- 운송터널 B4-3 Expert
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_ALTERA_PLAIN_NORMAL"] ) -- 알테라 평원
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_ALTERA_PLAIN_HARD"] ) -- 알테라 평원 Hard
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_ALTERA_PLAIN_EXPERT"] ) -- 알테라 평원 Expert
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_ALTERA_NASOD_FACTORY_NORMAL"] ) -- 나소드 생산 공장
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_ALTERA_NASOD_FACTORY_HARD"] ) -- 나소드 생산 공장 Hard
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_ALTERA_NASOD_FACTORY_EXPERT"] ) -- 나소드 생산 공장 Expert
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_ALTERA_CORE_NORMAL"] ) -- 알테라 코어
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_ALTERA_CORE_HARD"] ) -- 알테라 코어 Hard
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_ALTERA_CORE_EXPERT"] ) -- 알테라 코어 Expert
-- 비던도 어둠의 문이 열리도록 수정(2013.04.25 패치)
-- DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_ELDER_SECRET_COMMON"] ) -- 월리의 지하 연구실
-- DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_ELDER_SECRET_HELL"] ) -- 월리의 지하 연구실_Hell
-- DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_BESMA_SECRET_COMMON"] ) -- 용의둥지 : 나락
-- DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_BESMA_SECRET_HELL"] ) -- 용의둥지 : 나락_Hell
-- DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_ALTERA_SECRET_COMMON"] ) -- 운송터널:오염구역
-- DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_ALTERA_SECRET_HELL"] ) -- 운송터널:오염구역_Hell
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_BATTLE_SHIP_VELDER"] ) -- 하멜행 배
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_BATTLE_SHIP_HAMEL"] ) -- 벨더행 배
-- DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_VELDER_SECRET_COMMON"] ) -- 환각의 벨더
-- DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_VELDER_SECRET_HELL"] ) -- 환각의 벨더_Hell
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_ELDER_HENIR_SPACE"] ) -- 헤니르의 시공 (엘더)
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_DEFENCE_DUNGEON_ELDER_NORMAL"] ) -- 어둠의 문 (엘더) 
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_DEFENCE_DUNGEON_ELDER_HARD"] ) -- 어둠의 문 (엘더) Hard
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_DEFENCE_DUNGEON_ELDER_EXPERT"] ) -- 어둠의 문 (엘더) Expert
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_BATTLE_FIELD_TUTORIAL_ELSWORD"] ) -- 엘소드 튜토리얼
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_BATTLE_FIELD_TUTORIAL_AISHA"] ) -- 아이샤 튜토리얼
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_BATTLE_FIELD_TUTORIAL_LENA"] ) -- 레나 튜토리얼
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_BATTLE_FIELD_TUTORIAL_RAVEN"] ) -- 레이븐 튜토리얼
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_BATTLE_FIELD_TUTORIAL_EVE"] ) -- 이브 튜토리얼
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_BATTLE_FIELD_TUTORIAL_CHUNG"] ) -- 청 튜토리얼
DefenceDungeonManager:AddNotBeginDefenceDungeonID( DUNGEON_ID["DI_BATTLE_FIELD_TUTORIAL_ARA"] ) -- 아라 튜토리얼



-- 디펜스 가디언 몬스터
DefenceDungeonManager:AddDefenceGuardianMonster( NPC_UNIT_ID["NUI_GOD_GUARDIAN_GHOST_CLOWN_A"] )
DefenceDungeonManager:AddDefenceGuardianMonster( NPC_UNIT_ID["NUI_GOD_GUARDIAN_GHOST_CLOWN_B"] )
DefenceDungeonManager:AddDefenceGuardianMonster( NPC_UNIT_ID["NUI_GOD_GUARDIAN_GHOST_CLOWN_C"] )
DefenceDungeonManager:AddDefenceGuardianMonster( NPC_UNIT_ID["NUI_GOD_GUARDIAN_ANCIENT_PPORU_A"] )
DefenceDungeonManager:AddDefenceGuardianMonster( NPC_UNIT_ID["NUI_GOD_GUARDIAN_ANCIENT_PPORU_B"] )
DefenceDungeonManager:AddDefenceGuardianMonster( NPC_UNIT_ID["NUI_GOD_GUARDIAN_ANCIENT_PPORU_C"] )
DefenceDungeonManager:AddDefenceGuardianMonster( NPC_UNIT_ID["NUI_GOD_GUARDIAN_TRANVASH_A"] )
DefenceDungeonManager:AddDefenceGuardianMonster( NPC_UNIT_ID["NUI_GOD_GUARDIAN_TRANVASH_B"] )
DefenceDungeonManager:AddDefenceGuardianMonster( NPC_UNIT_ID["NUI_GOD_GUARDIAN_TRANVASH_C"] )


--- 어둠의 문 전용 퀵슬롯 포션 지급
DefenceDungeonManager:SetDefenceDungeonQuickSlotPotion( 78902 )


--- 어둠의 문 전용 퀵슬롯 아이템 등록
--몸빵
DefenceDungeonManager:AddDefenceDungeonQuickSlotItem( 1,	78840,	78841,	78842 )
DefenceDungeonManager:AddDefenceDungeonQuickSlotItem( 1,	78843,	78844,	78845 )
--근딜
DefenceDungeonManager:AddDefenceDungeonQuickSlotItem( 2,	78846,	78847,	78848 )
DefenceDungeonManager:AddDefenceDungeonQuickSlotItem( 2,	78849,	78850,	78851 )
--원딜
DefenceDungeonManager:AddDefenceDungeonQuickSlotItem( 3,	78852,	78853,	78854 )
DefenceDungeonManager:AddDefenceDungeonQuickSlotItem( 3,	78855,	78856,	78857 )
--법사
DefenceDungeonManager:AddDefenceDungeonQuickSlotItem( 4,	78858,	78859,	78860 )
DefenceDungeonManager:AddDefenceDungeonQuickSlotItem( 4,	78861,	78862,	78863 )



--- 소켓 옵션 랜덤 그룹
-- 마룡의 헤드기어 일반 소켓
DefenceDungeonManager:AddSocketOptionRandomGroup( 1,	3720,	1.9	 )	-- 불 속성 저항력 +50
DefenceDungeonManager:AddSocketOptionRandomGroup( 1,	3760,	1.9	 )	-- 냉기 속성 저항력 +50
DefenceDungeonManager:AddSocketOptionRandomGroup( 1,	3840,	1.9	 )	-- 자연 속성 저항력 +50
DefenceDungeonManager:AddSocketOptionRandomGroup( 1,	3800,	1.9	 )	-- 바람 속성 저항력 +50
DefenceDungeonManager:AddSocketOptionRandomGroup( 1,	3880,	1.9	 )	-- 빛 속성 저항력 +50
DefenceDungeonManager:AddSocketOptionRandomGroup( 1,	3920,	1.9	 )	-- 어둠 속성 저항력 +50
DefenceDungeonManager:AddSocketOptionRandomGroup( 1,	5604,	1.9	 )	-- 모든 속성 저항력 +10
DefenceDungeonManager:AddSocketOptionRandomGroup( 1,	69999,	3	 )	-- 불 속성 공격 +0.2%
DefenceDungeonManager:AddSocketOptionRandomGroup( 1,	70099,	3	 )	-- 물 속성 공격 +0.3%
DefenceDungeonManager:AddSocketOptionRandomGroup( 1,	70199,	3	 )	-- 자연 속성 공격 +0.2%
DefenceDungeonManager:AddSocketOptionRandomGroup( 1,	70299,	3	 )	-- 바람 속성 공격 +0.3%
DefenceDungeonManager:AddSocketOptionRandomGroup( 1,	70399,	3	 )	-- 빛 속성 공격 +0.2%
DefenceDungeonManager:AddSocketOptionRandomGroup( 1,	70499,	3	 )	-- 어둠 속성 공격 +0.2%
DefenceDungeonManager:AddSocketOptionRandomGroup( 1,	40102,	2.3	 )	-- 크리티컬 1 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 1,	40002,	2.3	 )	-- 동작속도 1 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 1,	40202,	2.3	 )	-- 추가데미지 1 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 1,	40602,	2.3	 )	-- 데미지 감소 1 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 1,	40806,	5	 )	-- 이동력 3 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 1,	40906,	5	 )	-- 점프력 3 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 1,	60329,	1	 )	-- 물리 공격력 0.5% 증가
DefenceDungeonManager:AddSocketOptionRandomGroup( 1,	60330,	1	 )	-- 마법 공격력 0.5% 증가
DefenceDungeonManager:AddSocketOptionRandomGroup( 1,	60331,	4	 )	-- 물리 방어력 0.5% 증가
DefenceDungeonManager:AddSocketOptionRandomGroup( 1,	60332,	4	 )	-- 마법 방어력 0.5% 증가
DefenceDungeonManager:AddSocketOptionRandomGroup( 1,	1303,	4.9	 )	-- HP +3% (최대 50%)
DefenceDungeonManager:AddSocketOptionRandomGroup( 1,	12126,	2	 )	-- 최대MP +0.5%
DefenceDungeonManager:AddSocketOptionRandomGroup( 1,	41002,	3	 )	-- 각성 지속시간 증가 1.5 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 1,	40402,	3	 )	-- 각성 충전속도 1 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 1,	40304,	5	 )	-- 명중 2 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 1,	40502,	5	 )	-- 회피 1 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 1,	70600,	2	 )	-- 타격시 1% 확률로 파이어 볼
DefenceDungeonManager:AddSocketOptionRandomGroup( 1,	70700,	2	 )	-- 타격시 1% 확률로 아이스 스팅
DefenceDungeonManager:AddSocketOptionRandomGroup( 1,	70900,	2	 )	-- 타격시 1% 확률로 돌풍
DefenceDungeonManager:AddSocketOptionRandomGroup( 1,	71000,	2	 )	-- 타격시 1% 확률로 번개 강타
DefenceDungeonManager:AddSocketOptionRandomGroup( 1,	31713,	2	 )	-- 타격시 1% 확률로 바위 소환
DefenceDungeonManager:AddSocketOptionRandomGroup( 1,	35000,	2.6	 )	-- (테스트) 마나 획득 +1%
DefenceDungeonManager:AddSocketOptionRandomGroup( 1,	3002,	2	 )	-- 수리비 할인 1% (최대 10%)
DefenceDungeonManager:AddSocketOptionRandomGroup( 1,	20201,	2	 )	-- 1% ED 획득량 증가
-- 마룡의 날개 일반 소켓
DefenceDungeonManager:AddSocketOptionRandomGroup( 2,	3728,	1.9	 )	-- 불 속성 저항력 +70
DefenceDungeonManager:AddSocketOptionRandomGroup( 2,	3768,	1.9	 )	-- 냉기 속성 저항력 +70
DefenceDungeonManager:AddSocketOptionRandomGroup( 2,	3848,	1.9	 )	-- 자연 속성 저항력 +70
DefenceDungeonManager:AddSocketOptionRandomGroup( 2,	3808,	1.9	 )	-- 바람 속성 저항력 +70
DefenceDungeonManager:AddSocketOptionRandomGroup( 2,	3888,	1.9	 )	-- 빛 속성 저항력 +70
DefenceDungeonManager:AddSocketOptionRandomGroup( 2,	3928,	1.9	 )	-- 어둠 속성 저항력 +70
DefenceDungeonManager:AddSocketOptionRandomGroup( 2,	5606,	1.9	 )	-- 모든 속성 저항력 +15
DefenceDungeonManager:AddSocketOptionRandomGroup( 2,	69999,	3	 )	-- 불 속성 공격 +0.2%
DefenceDungeonManager:AddSocketOptionRandomGroup( 2,	70099,	3	 )	-- 물 속성 공격 +0.3%
DefenceDungeonManager:AddSocketOptionRandomGroup( 2,	70199,	3	 )	-- 자연 속성 공격 +0.2%
DefenceDungeonManager:AddSocketOptionRandomGroup( 2,	70299,	3	 )	-- 바람 속성 공격 +0.3%
DefenceDungeonManager:AddSocketOptionRandomGroup( 2,	70399,	3	 )	-- 빛 속성 공격 +0.2%
DefenceDungeonManager:AddSocketOptionRandomGroup( 2,	70499,	3	 )	-- 어둠 속성 공격 +0.2%
DefenceDungeonManager:AddSocketOptionRandomGroup( 2,	40103,	2.3	 )	-- 크리티컬 1.5 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 2,	40003,	2.3	 )	-- 동작속도 1.5 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 2,	40203,	2.3	 )	-- 추가데미지 1.5 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 2,	40603,	2.3	 )	-- 데미지 감소 1.5 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 2,	40812,	5	 )	-- 이동력 6 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 2,	40912,	5	 )	-- 점프력 6 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 2,	60301,	1	 )	-- 물리 공격력 1% 증가
DefenceDungeonManager:AddSocketOptionRandomGroup( 2,	60601,	1	 )	-- 마법 공격력 1% 증가
DefenceDungeonManager:AddSocketOptionRandomGroup( 2,	12041,	4	 )	-- 물리 방어력 +1%
DefenceDungeonManager:AddSocketOptionRandomGroup( 2,	12061,	4	 )	-- 마법 방어력 +1%
DefenceDungeonManager:AddSocketOptionRandomGroup( 2,	1305,	4.9	 )	-- HP +5% (최대 50%)
DefenceDungeonManager:AddSocketOptionRandomGroup( 2,	12127,	2	 )	-- 최대MP +1%
DefenceDungeonManager:AddSocketOptionRandomGroup( 2,	41003,	3	 )	-- 각성 지속시간 증가 2.25 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 2,	40403,	3	 )	-- 각성 충전속도 1.5 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 2,	40306,	5	 )	-- 명중 3 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 2,	40504,	5	 )	-- 회피 2 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 2,	70600,	2	 )	-- 타격시 1% 확률로 파이어 볼
DefenceDungeonManager:AddSocketOptionRandomGroup( 2,	70700,	2	 )	-- 타격시 1% 확률로 아이스 스팅
DefenceDungeonManager:AddSocketOptionRandomGroup( 2,	70900,	2	 )	-- 타격시 1% 확률로 돌풍
DefenceDungeonManager:AddSocketOptionRandomGroup( 2,	71000,	2	 )	-- 타격시 1% 확률로 번개 강타
DefenceDungeonManager:AddSocketOptionRandomGroup( 2,	31713,	2	 )	-- 타격시 1% 확률로 바위 소환
DefenceDungeonManager:AddSocketOptionRandomGroup( 2,	35000,	2.6	 )	-- (테스트) 마나 획득 +1%
DefenceDungeonManager:AddSocketOptionRandomGroup( 2,	3002,	2	 )	-- 수리비 할인 1% (최대 10%)
DefenceDungeonManager:AddSocketOptionRandomGroup( 2,	20201,	2	 )	-- 1% ED 획득량 증가
-- 마룡의 꼬리 일반 소켓
DefenceDungeonManager:AddSocketOptionRandomGroup( 3,	3714,	1.9	 )	-- 불 속성 저항력 +35
DefenceDungeonManager:AddSocketOptionRandomGroup( 3,	3754,	1.9	 )	-- 냉기 속성 저항력 +35
DefenceDungeonManager:AddSocketOptionRandomGroup( 3,	3834,	1.9	 )	-- 자연 속성 저항력 +35
DefenceDungeonManager:AddSocketOptionRandomGroup( 3,	3794,	1.9	 )	-- 바람 속성 저항력 +35
DefenceDungeonManager:AddSocketOptionRandomGroup( 3,	3874,	1.9	 )	-- 빛 속성 저항력 +35
DefenceDungeonManager:AddSocketOptionRandomGroup( 3,	3914,	1.9	 )	-- 어둠 속성 저항력 +35
DefenceDungeonManager:AddSocketOptionRandomGroup( 3,	5603,	1.9	 )	-- 모든 속성 저항력 +7
DefenceDungeonManager:AddSocketOptionRandomGroup( 3,	69999,	3	 )	-- 불 속성 공격 +0.2%
DefenceDungeonManager:AddSocketOptionRandomGroup( 3,	70099,	3	 )	-- 물 속성 공격 +0.3%
DefenceDungeonManager:AddSocketOptionRandomGroup( 3,	70199,	3	 )	-- 자연 속성 공격 +0.2%
DefenceDungeonManager:AddSocketOptionRandomGroup( 3,	70299,	3	 )	-- 바람 속성 공격 +0.3%
DefenceDungeonManager:AddSocketOptionRandomGroup( 3,	70399,	3	 )	-- 빛 속성 공격 +0.2%
DefenceDungeonManager:AddSocketOptionRandomGroup( 3,	70499,	3	 )	-- 어둠 속성 공격 +0.2%
DefenceDungeonManager:AddSocketOptionRandomGroup( 3,	40102,	2.3	 )	-- 크리티컬 1 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 3,	40002,	2.3	 )	-- 동작속도 1 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 3,	40202,	2.3	 )	-- 추가데미지 1 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 3,	40602,	2.3	 )	-- 데미지 감소 1 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 3,	40808,	5	 )	-- 이동력 4 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 3,	40908,	5	 )	-- 점프력 4 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 3,	60329,	1	 )	-- 물리 공격력 0.5% 증가
DefenceDungeonManager:AddSocketOptionRandomGroup( 3,	60330,	1	 )	-- 마법 공격력 0.5% 증가
DefenceDungeonManager:AddSocketOptionRandomGroup( 3,	60331,	4	 )	-- 물리 방어력 0.5% 증가
DefenceDungeonManager:AddSocketOptionRandomGroup( 3,	60332,	4	 )	-- 마법 방어력 0.5% 증가
DefenceDungeonManager:AddSocketOptionRandomGroup( 3,	1303,	4.9	 )	-- HP +3% (최대 50%)
DefenceDungeonManager:AddSocketOptionRandomGroup( 3,	12125,	2	 )	-- 최대MP +0.25%
DefenceDungeonManager:AddSocketOptionRandomGroup( 3,	41002,	3	 )	-- 각성 지속시간 증가 1.5 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 3,	40402,	3	 )	-- 각성 충전속도 1 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 3,	40304,	5	 )	-- 명중 2 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 3,	40502,	5	 )	-- 회피 1 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 3,	70600,	2	 )	-- 타격시 1% 확률로 파이어 볼
DefenceDungeonManager:AddSocketOptionRandomGroup( 3,	70700,	2	 )	-- 타격시 1% 확률로 아이스 스팅
DefenceDungeonManager:AddSocketOptionRandomGroup( 3,	70900,	2	 )	-- 타격시 1% 확률로 돌풍
DefenceDungeonManager:AddSocketOptionRandomGroup( 3,	71000,	2	 )	-- 타격시 1% 확률로 번개 강타
DefenceDungeonManager:AddSocketOptionRandomGroup( 3,	31713,	2	 )	-- 타격시 1% 확률로 바위 소환
DefenceDungeonManager:AddSocketOptionRandomGroup( 3,	35000,	2.6	 )	-- (테스트) 마나 획득 +1%
DefenceDungeonManager:AddSocketOptionRandomGroup( 3,	3002,	2	 )	-- 수리비 할인 1% (최대 10%)
DefenceDungeonManager:AddSocketOptionRandomGroup( 3,	20201,	2	 )	-- 1% ED 획득량 증가
-- 마룡의 헥사코어 일반 소켓
DefenceDungeonManager:AddSocketOptionRandomGroup( 4,	3712,	1.9	 )	-- 불 속성 저항력 +30
DefenceDungeonManager:AddSocketOptionRandomGroup( 4,	3752,	1.9	 )	-- 냉기 속성 저항력 +30
DefenceDungeonManager:AddSocketOptionRandomGroup( 4,	3832,	1.9	 )	-- 자연 속성 저항력 +30
DefenceDungeonManager:AddSocketOptionRandomGroup( 4,	3792,	1.9	 )	-- 바람 속성 저항력 +30
DefenceDungeonManager:AddSocketOptionRandomGroup( 4,	3872,	1.9	 )	-- 빛 속성 저항력 +30
DefenceDungeonManager:AddSocketOptionRandomGroup( 4,	3912,	1.9	 )	-- 어둠 속성 저항력 +30
DefenceDungeonManager:AddSocketOptionRandomGroup( 4,	5602,	1.9	 )	-- 모든 속성 저항력 +5
DefenceDungeonManager:AddSocketOptionRandomGroup( 4,	69999,	3	 )	-- 불 속성 공격 +0.2%
DefenceDungeonManager:AddSocketOptionRandomGroup( 4,	70099,	3	 )	-- 물 속성 공격 +0.3%
DefenceDungeonManager:AddSocketOptionRandomGroup( 4,	70199,	3	 )	-- 자연 속성 공격 +0.2%
DefenceDungeonManager:AddSocketOptionRandomGroup( 4,	70299,	3	 )	-- 바람 속성 공격 +0.3%
DefenceDungeonManager:AddSocketOptionRandomGroup( 4,	70399,	3	 )	-- 빛 속성 공격 +0.2%
DefenceDungeonManager:AddSocketOptionRandomGroup( 4,	70499,	3	 )	-- 어둠 속성 공격 +0.2%
DefenceDungeonManager:AddSocketOptionRandomGroup( 4,	40102,	2.3	 )	-- 크리티컬 1 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 4,	40002,	2.3	 )	-- 동작속도 1 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 4,	40202,	2.3	 )	-- 추가데미지 1 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 4,	40602,	2.3	 )	-- 데미지 감소 1 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 4,	40806,	5	 )	-- 이동력 3 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 4,	40906,	5	 )	-- 점프력 3 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 4,	60329,	1	 )	-- 물리 공격력 0.5% 증가
DefenceDungeonManager:AddSocketOptionRandomGroup( 4,	60330,	1	 )	-- 마법 공격력 0.5% 증가
DefenceDungeonManager:AddSocketOptionRandomGroup( 4,	60331,	4	 )	-- 물리 방어력 0.5% 증가
DefenceDungeonManager:AddSocketOptionRandomGroup( 4,	60332,	4	 )	-- 마법 방어력 0.5% 증가
DefenceDungeonManager:AddSocketOptionRandomGroup( 4,	1303,	4.9	 )	-- HP +3% (최대 50%)
DefenceDungeonManager:AddSocketOptionRandomGroup( 4,	12125,	2	 )	-- 최대MP +0.25%
DefenceDungeonManager:AddSocketOptionRandomGroup( 4,	41002,	3	 )	-- 각성 지속시간 증가 1.5 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 4,	40402,	3	 )	-- 각성 충전속도 1 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 4,	40304,	5	 )	-- 명중 2 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 4,	40502,	5	 )	-- 회피 1 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 4,	70600,	2	 )	-- 타격시 1% 확률로 파이어 볼
DefenceDungeonManager:AddSocketOptionRandomGroup( 4,	70700,	2	 )	-- 타격시 1% 확률로 아이스 스팅
DefenceDungeonManager:AddSocketOptionRandomGroup( 4,	70900,	2	 )	-- 타격시 1% 확률로 돌풍
DefenceDungeonManager:AddSocketOptionRandomGroup( 4,	71000,	2	 )	-- 타격시 1% 확률로 번개 강타
DefenceDungeonManager:AddSocketOptionRandomGroup( 4,	31713,	2	 )	-- 타격시 1% 확률로 바위 소환
DefenceDungeonManager:AddSocketOptionRandomGroup( 4,	35000,	2.6	 )	-- (테스트) 마나 획득 +1%
DefenceDungeonManager:AddSocketOptionRandomGroup( 4,	3002,	2	 )	-- 수리비 할인 1% (최대 10%)
DefenceDungeonManager:AddSocketOptionRandomGroup( 4,	20201,	2	 )	-- 1% ED 획득량 증가
-- 마룡의 발톱 일반 소켓
DefenceDungeonManager:AddSocketOptionRandomGroup( 5,	3726,	1.9	 )	-- 불 속성 저항력 +65
DefenceDungeonManager:AddSocketOptionRandomGroup( 5,	3766,	1.9	 )	-- 냉기 속성 저항력 +65
DefenceDungeonManager:AddSocketOptionRandomGroup( 5,	3846,	1.9	 )	-- 자연 속성 저항력 +65
DefenceDungeonManager:AddSocketOptionRandomGroup( 5,	3806,	1.9	 )	-- 바람 속성 저항력 +65
DefenceDungeonManager:AddSocketOptionRandomGroup( 5,	3886,	1.9	 )	-- 빛 속성 저항력 +65
DefenceDungeonManager:AddSocketOptionRandomGroup( 5,	3926,	1.9	 )	-- 어둠 속성 저항력 +65
DefenceDungeonManager:AddSocketOptionRandomGroup( 5,	5605,	1.9	 )	-- 모든 속성 저항력 +12
DefenceDungeonManager:AddSocketOptionRandomGroup( 5,	69999,	3	 )	-- 불 속성 공격 +0.2%
DefenceDungeonManager:AddSocketOptionRandomGroup( 5,	70099,	3	 )	-- 물 속성 공격 +0.3%
DefenceDungeonManager:AddSocketOptionRandomGroup( 5,	70199,	3	 )	-- 자연 속성 공격 +0.2%
DefenceDungeonManager:AddSocketOptionRandomGroup( 5,	70299,	3	 )	-- 바람 속성 공격 +0.3%
DefenceDungeonManager:AddSocketOptionRandomGroup( 5,	70399,	3	 )	-- 빛 속성 공격 +0.2%
DefenceDungeonManager:AddSocketOptionRandomGroup( 5,	70499,	3	 )	-- 어둠 속성 공격 +0.2%
DefenceDungeonManager:AddSocketOptionRandomGroup( 5,	40103,	2.3	 )	-- 크리티컬 1.5 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 5,	40003,	2.3	 )	-- 동작속도 1.5 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 5,	40203,	2.3	 )	-- 추가데미지 1.5 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 5,	40603,	2.3	 )	-- 데미지 감소 1.5 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 5,	40810,	5	 )	-- 이동력 5 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 5,	40910,	5	 )	-- 점프력 5 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 5,	60301,	1	 )	-- 물리 공격력 1% 증가
DefenceDungeonManager:AddSocketOptionRandomGroup( 5,	60601,	1	 )	-- 마법 공격력 1% 증가
DefenceDungeonManager:AddSocketOptionRandomGroup( 5,	12041,	4	 )	-- 물리 방어력 +1%
DefenceDungeonManager:AddSocketOptionRandomGroup( 5,	12061,	4	 )	-- 마법 방어력 +1%
DefenceDungeonManager:AddSocketOptionRandomGroup( 5,	1305,	4.9	 )	-- HP +5% (최대 50%)
DefenceDungeonManager:AddSocketOptionRandomGroup( 5,	12127,	2	 )	-- 최대MP +1%
DefenceDungeonManager:AddSocketOptionRandomGroup( 5,	41003,	3	 )	-- 각성 지속시간 증가 2.25 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 5,	40403,	3	 )	-- 각성 충전속도 1.5 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 5,	40306,	5	 )	-- 명중 3 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 5,	40504,	5	 )	-- 회피 2 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 5,	70600,	2	 )	-- 타격시 1% 확률로 파이어 볼
DefenceDungeonManager:AddSocketOptionRandomGroup( 5,	70700,	2	 )	-- 타격시 1% 확률로 아이스 스팅
DefenceDungeonManager:AddSocketOptionRandomGroup( 5,	70900,	2	 )	-- 타격시 1% 확률로 돌풍
DefenceDungeonManager:AddSocketOptionRandomGroup( 5,	71000,	2	 )	-- 타격시 1% 확률로 번개 강타
DefenceDungeonManager:AddSocketOptionRandomGroup( 5,	31713,	2	 )	-- 타격시 1% 확률로 바위 소환
DefenceDungeonManager:AddSocketOptionRandomGroup( 5,	35000,	2.6	 )	-- (테스트) 마나 획득 +1%
DefenceDungeonManager:AddSocketOptionRandomGroup( 5,	3002,	2	 )	-- 수리비 할인 1% (최대 10%)
DefenceDungeonManager:AddSocketOptionRandomGroup( 5,	20201,	2	 )	-- 1% ED 획득량 증가
-- 마룡의 발톱 특수 소켓(스페셜 몬스터 카드)
DefenceDungeonManager:AddSocketOptionRandomGroup( 6,	35200,	15	 )	-- 어둠의 문에서 스페셜 몬스터 [불꽃 머슈]를 호출할 수 있습니다
DefenceDungeonManager:AddSocketOptionRandomGroup( 6,	35201,	15	 )	-- 어둠의 문에서 스페셜 몬스터 [엘프 간호사]를 호출할 수 있습니다
DefenceDungeonManager:AddSocketOptionRandomGroup( 6,	35202,	15	 )	-- 어둠의 문에서 스페셜 몬스터 [새싹 가르파이 하피]를 호출할 수 있습니다
DefenceDungeonManager:AddSocketOptionRandomGroup( 6,	35203,	15	 )	-- 어둠의 문에서 스페셜 몬스터 [붉은 기사단 돌격대]를 호출할 수 있습니다
DefenceDungeonManager:AddSocketOptionRandomGroup( 6,	35204,	15	 )	-- 어둠의 문에서 스페셜 몬스터 [안개의 라구즈]를 호출할 수 있습니다
DefenceDungeonManager:AddSocketOptionRandomGroup( 6,	35205,	5	 )	-- 어둠의 문에서 히든 스페셜 몬스터 [정예 불꽃 머슈]를 호출할 수 있습니다
DefenceDungeonManager:AddSocketOptionRandomGroup( 6,	35206,	5	 )	-- 어둠의 문에서 히든 스페셜 몬스터 [정예 엘프 간호사]를 호출할 수 있습니다
DefenceDungeonManager:AddSocketOptionRandomGroup( 6,	35207,	5	 )	-- 어둠의 문에서 히든 스페셜 몬스터 [정예 새싹 가르파이 하피]를 호출할 수 있습니다
DefenceDungeonManager:AddSocketOptionRandomGroup( 6,	35208,	5	 )	-- 어둠의 문에서 히든 스페셜 몬스터 [정예 붉은 기사단 돌격대]를 호출할 수 있습니다
DefenceDungeonManager:AddSocketOptionRandomGroup( 6,	35209,	5	 )	-- 어둠의 문에서 히든 스페셜 몬스터 [정예 안개의 라구즈]를 호출할 수 있습니다
-- 고대 마룡의 추가 소켓 (0.5% 소켓)
DefenceDungeonManager:AddSocketOptionRandomGroup( 7,	40001,	6.66	 )	-- 동작속도 0.5 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 7,	40101,	6.66	 )	-- 크리티컬 0.5 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 7,	40201,	6.66	 )	-- 추가데미지 0.5 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 7,	40302,	6.66	 )	-- 명중 1 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 7,	40401,	6.66	 )	-- 각성 충전속도 0.5 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 7,	40502,	6.67	 )	-- 회피 1 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 7,	40601,	6.67	 )	-- 데미지 감소 0.5 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 7,	40701,	6.67	 )	-- HP증가 0.5 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 7,	40802,	6.67	 )	-- 이동력 1 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 7,	40902,	6.67	 )	-- 점프력 1 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 7,	41001,	6.67	 )	-- 각성 지속시간 증가 0.75 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 7,	7,		6.67	 )	-- 물리 공격력 +15
DefenceDungeonManager:AddSocketOptionRandomGroup( 7,	107,	6.67	 )	-- 마법 공격력 +15
DefenceDungeonManager:AddSocketOptionRandomGroup( 7,	506,	6.67	 )	-- 물리 방어력 +10
DefenceDungeonManager:AddSocketOptionRandomGroup( 7,	606,	6.67	 )	-- 마법 방어력 +10
-- 선호 소켓 타입 A(헤드기어/꼬리/헥사코어)
DefenceDungeonManager:AddSocketOptionRandomGroup( 8,	40002,	23	 )	-- 동작속도 1 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 8,	40102,	23	 )	-- 크리티컬 1 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 8,	40202,	23	 )	-- 추가데미지 1 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 8,	40402,	23	 )	-- 각성 충전속도 1 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 8,	40003,	2	 )	-- 동작속도 1.5 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 8,	40103,	2	 )	-- 크리티컬 1.5 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 8,	40203,	2	 )	-- 추가데미지 1.5 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 8,	40403,	2	 )	-- 각성 충전속도 1.5 %
-- 선호 소켓 타입 B(날개/발톱)
DefenceDungeonManager:AddSocketOptionRandomGroup( 9,	40003,	23	 )	-- 동작속도 1.5 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 9,	40103,	23	 )	-- 크리티컬 1.5 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 9,	40203,	23	 )	-- 추가데미지 1.5 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 9,	40403,	23	 )	-- 각성 충전속도 1.5 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 9,	40004,	2	 )	-- 동작속도 2 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 9,	40104,	2	 )	-- 크리티컬 2 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 9,	40204,	2	 )	-- 추가데미지 2 %
DefenceDungeonManager:AddSocketOptionRandomGroup( 9,	40404,	2	 )	-- 각성 충전속도 2 %






-- 소켓 옵션 부여되는 아이템 리스트
DefenceDungeonManager:AddItemInfoForManufacture
{
	m_ItemID = 117171, -- 마룡의 헤드기어
	
	OPTION_GROUP = { 8, 1,	},
}

DefenceDungeonManager:AddItemInfoForManufacture
{
	m_ItemID = 117172, -- 마룡의 날개
	
	OPTION_GROUP = { 9, 2, 2,	},
}

DefenceDungeonManager:AddItemInfoForManufacture
{
	m_ItemID = 117173, -- 마룡의 꼬리
	
	OPTION_GROUP = { 8, 3,	},
}


DefenceDungeonManager:AddItemInfoForManufacture
{
	m_ItemID = 117174, -- 마룡의 헥사코어
	
	OPTION_GROUP = { 8, 4,	},
}
	
DefenceDungeonManager:AddItemInfoForManufacture
{
	m_ItemID = 117182, -- 고대 마룡의 헤드기어
	
	OPTION_GROUP = { 8, 1, 7,	},
}
	
DefenceDungeonManager:AddItemInfoForManufacture
{
	m_ItemID = 117183, -- 고대 마룡의 날개

	OPTION_GROUP = { 9, 2, 2, 7,	},
}
	
DefenceDungeonManager:AddItemInfoForManufacture
{
	m_ItemID = 117184, -- 고대 마룡의 꼬리
	
	OPTION_GROUP = { 8, 3, 7,	},
}
DefenceDungeonManager:AddItemInfoForManufacture
{
	m_ItemID = 117185, -- 고대 마룡의 헥사코어
	
	OPTION_GROUP = { 8, 4, 7,	},
}

DefenceDungeonManager:AddItemInfoForManufacture
{
	m_ItemID = 117175, -- 마룡의 발톱 (엘소드)
	
	OPTION_GROUP = { 9, 5, 6,	},
	
	SPECIAL_CARD_GROUP =
	{
		{
			m_SocketOptionID = 35200,
			m_SpecialCardItemID1 = 78864,			
			m_SpecialCardItemID2 = 78865,
			m_SpecialCardItemID3 = 78866,
		},		
		{
			m_SocketOptionID = 35201,
			m_SpecialCardItemID1 = 78867,
			m_SpecialCardItemID2 = 78868,
			m_SpecialCardItemID3 = 78869,
		},		
		{
			m_SocketOptionID = 35202,
			m_SpecialCardItemID1 = 78870,
			m_SpecialCardItemID2 = 78871,
			m_SpecialCardItemID3 = 78872,
		},
		{
			m_SocketOptionID = 35203,
			m_SpecialCardItemID1 = 78873,
			m_SpecialCardItemID2 = 78874,
			m_SpecialCardItemID3 = 78875,
		},		
		{
			m_SocketOptionID = 35204,
			m_SpecialCardItemID1 = 78876,
			m_SpecialCardItemID2 = 78877,
			m_SpecialCardItemID3 = 78878,
		},		
		{
			m_SocketOptionID = 35205,
			m_SpecialCardItemID1 = 78879,
			m_SpecialCardItemID2 = 78880,
			m_SpecialCardItemID3 = 78881,
		},
		{
			m_SocketOptionID = 35206,
			m_SpecialCardItemID1 = 78882,
			m_SpecialCardItemID2 = 78883,
			m_SpecialCardItemID3 = 78884,
		},		
		{
			m_SocketOptionID = 35207,
			m_SpecialCardItemID1 = 78885,
			m_SpecialCardItemID2 = 78886,
			m_SpecialCardItemID3 = 78887,
		},		
		{
			m_SocketOptionID = 35208,
			m_SpecialCardItemID1 = 78888,
			m_SpecialCardItemID2 = 78889,
			m_SpecialCardItemID3 = 78890,
		},		
		{
			m_SocketOptionID = 35209,
			m_SpecialCardItemID1 = 78891,
			m_SpecialCardItemID2 = 78892,
			m_SpecialCardItemID3 = 78893,
		},
	},
}

DefenceDungeonManager:AddItemInfoForManufacture
{
	m_ItemID = 117176, -- 마룡의 발톱 (아이샤)
	
	OPTION_GROUP = { 9, 5, 6,	},
	SPECIAL_CARD_GROUP =
	{
		{
			m_SocketOptionID = 35200,
			m_SpecialCardItemID1 = 78864,			
			m_SpecialCardItemID2 = 78865,
			m_SpecialCardItemID3 = 78866,
		},		
		{
			m_SocketOptionID = 35201,
			m_SpecialCardItemID1 = 78867,
			m_SpecialCardItemID2 = 78868,
			m_SpecialCardItemID3 = 78869,
		},		
		{
			m_SocketOptionID = 35202,
			m_SpecialCardItemID1 = 78870,
			m_SpecialCardItemID2 = 78871,
			m_SpecialCardItemID3 = 78872,
		},
		{
			m_SocketOptionID = 35203,
			m_SpecialCardItemID1 = 78873,
			m_SpecialCardItemID2 = 78874,
			m_SpecialCardItemID3 = 78875,
		},		
		{
			m_SocketOptionID = 35204,
			m_SpecialCardItemID1 = 78876,
			m_SpecialCardItemID2 = 78877,
			m_SpecialCardItemID3 = 78878,
		},		
		{
			m_SocketOptionID = 35205,
			m_SpecialCardItemID1 = 78879,
			m_SpecialCardItemID2 = 78880,
			m_SpecialCardItemID3 = 78881,
		},
		{
			m_SocketOptionID = 35206,
			m_SpecialCardItemID1 = 78882,
			m_SpecialCardItemID2 = 78883,
			m_SpecialCardItemID3 = 78884,
		},		
		{
			m_SocketOptionID = 35207,
			m_SpecialCardItemID1 = 78885,
			m_SpecialCardItemID2 = 78886,
			m_SpecialCardItemID3 = 78887,
		},		
		{
			m_SocketOptionID = 35208,
			m_SpecialCardItemID1 = 78888,
			m_SpecialCardItemID2 = 78889,
			m_SpecialCardItemID3 = 78890,
		},		
		{
			m_SocketOptionID = 35209,
			m_SpecialCardItemID1 = 78891,
			m_SpecialCardItemID2 = 78892,
			m_SpecialCardItemID3 = 78893,
		},
	},
}

DefenceDungeonManager:AddItemInfoForManufacture
{
	m_ItemID = 117177, -- 마룡의 발톱 (레나)
	
	OPTION_GROUP = { 9, 5, 6, },
	SPECIAL_CARD_GROUP =
	{
		{
			m_SocketOptionID = 35200,
			m_SpecialCardItemID1 = 78864,			
			m_SpecialCardItemID2 = 78865,
			m_SpecialCardItemID3 = 78866,
		},		
		{
			m_SocketOptionID = 35201,
			m_SpecialCardItemID1 = 78867,
			m_SpecialCardItemID2 = 78868,
			m_SpecialCardItemID3 = 78869,
		},		
		{
			m_SocketOptionID = 35202,
			m_SpecialCardItemID1 = 78870,
			m_SpecialCardItemID2 = 78871,
			m_SpecialCardItemID3 = 78872,
		},
		{
			m_SocketOptionID = 35203,
			m_SpecialCardItemID1 = 78873,
			m_SpecialCardItemID2 = 78874,
			m_SpecialCardItemID3 = 78875,
		},		
		{
			m_SocketOptionID = 35204,
			m_SpecialCardItemID1 = 78876,
			m_SpecialCardItemID2 = 78877,
			m_SpecialCardItemID3 = 78878,
		},		
		{
			m_SocketOptionID = 35205,
			m_SpecialCardItemID1 = 78879,
			m_SpecialCardItemID2 = 78880,
			m_SpecialCardItemID3 = 78881,
		},
		{
			m_SocketOptionID = 35206,
			m_SpecialCardItemID1 = 78882,
			m_SpecialCardItemID2 = 78883,
			m_SpecialCardItemID3 = 78884,
		},		
		{
			m_SocketOptionID = 35207,
			m_SpecialCardItemID1 = 78885,
			m_SpecialCardItemID2 = 78886,
			m_SpecialCardItemID3 = 78887,
		},		
		{
			m_SocketOptionID = 35208,
			m_SpecialCardItemID1 = 78888,
			m_SpecialCardItemID2 = 78889,
			m_SpecialCardItemID3 = 78890,
		},		
		{
			m_SocketOptionID = 35209,
			m_SpecialCardItemID1 = 78891,
			m_SpecialCardItemID2 = 78892,
			m_SpecialCardItemID3 = 78893,
		},
	},
}

DefenceDungeonManager:AddItemInfoForManufacture
{
	m_ItemID = 117178, -- 마룡의 발톱 (레이븐)
	
	OPTION_GROUP = { 9, 5, 6, },
	SPECIAL_CARD_GROUP =
	{
		{
			m_SocketOptionID = 35200,
			m_SpecialCardItemID1 = 78864,			
			m_SpecialCardItemID2 = 78865,
			m_SpecialCardItemID3 = 78866,
		},		
		{
			m_SocketOptionID = 35201,
			m_SpecialCardItemID1 = 78867,
			m_SpecialCardItemID2 = 78868,
			m_SpecialCardItemID3 = 78869,
		},		
		{
			m_SocketOptionID = 35202,
			m_SpecialCardItemID1 = 78870,
			m_SpecialCardItemID2 = 78871,
			m_SpecialCardItemID3 = 78872,
		},
		{
			m_SocketOptionID = 35203,
			m_SpecialCardItemID1 = 78873,
			m_SpecialCardItemID2 = 78874,
			m_SpecialCardItemID3 = 78875,
		},		
		{
			m_SocketOptionID = 35204,
			m_SpecialCardItemID1 = 78876,
			m_SpecialCardItemID2 = 78877,
			m_SpecialCardItemID3 = 78878,
		},		
		{
			m_SocketOptionID = 35205,
			m_SpecialCardItemID1 = 78879,
			m_SpecialCardItemID2 = 78880,
			m_SpecialCardItemID3 = 78881,
		},
		{
			m_SocketOptionID = 35206,
			m_SpecialCardItemID1 = 78882,
			m_SpecialCardItemID2 = 78883,
			m_SpecialCardItemID3 = 78884,
		},		
		{
			m_SocketOptionID = 35207,
			m_SpecialCardItemID1 = 78885,
			m_SpecialCardItemID2 = 78886,
			m_SpecialCardItemID3 = 78887,
		},		
		{
			m_SocketOptionID = 35208,
			m_SpecialCardItemID1 = 78888,
			m_SpecialCardItemID2 = 78889,
			m_SpecialCardItemID3 = 78890,
		},		
		{
			m_SocketOptionID = 35209,
			m_SpecialCardItemID1 = 78891,
			m_SpecialCardItemID2 = 78892,
			m_SpecialCardItemID3 = 78893,
		},
	},
}

DefenceDungeonManager:AddItemInfoForManufacture
{
	m_ItemID = 117179, -- 마룡의 발톱 (이브)
	
	OPTION_GROUP = { 9, 5, 6, },
	SPECIAL_CARD_GROUP =
	{
		{
			m_SocketOptionID = 35200,
			m_SpecialCardItemID1 = 78864,			
			m_SpecialCardItemID2 = 78865,
			m_SpecialCardItemID3 = 78866,
		},		
		{
			m_SocketOptionID = 35201,
			m_SpecialCardItemID1 = 78867,
			m_SpecialCardItemID2 = 78868,
			m_SpecialCardItemID3 = 78869,
		},		
		{
			m_SocketOptionID = 35202,
			m_SpecialCardItemID1 = 78870,
			m_SpecialCardItemID2 = 78871,
			m_SpecialCardItemID3 = 78872,
		},
		{
			m_SocketOptionID = 35203,
			m_SpecialCardItemID1 = 78873,
			m_SpecialCardItemID2 = 78874,
			m_SpecialCardItemID3 = 78875,
		},		
		{
			m_SocketOptionID = 35204,
			m_SpecialCardItemID1 = 78876,
			m_SpecialCardItemID2 = 78877,
			m_SpecialCardItemID3 = 78878,
		},		
		{
			m_SocketOptionID = 35205,
			m_SpecialCardItemID1 = 78879,
			m_SpecialCardItemID2 = 78880,
			m_SpecialCardItemID3 = 78881,
		},
		{
			m_SocketOptionID = 35206,
			m_SpecialCardItemID1 = 78882,
			m_SpecialCardItemID2 = 78883,
			m_SpecialCardItemID3 = 78884,
		},		
		{
			m_SocketOptionID = 35207,
			m_SpecialCardItemID1 = 78885,
			m_SpecialCardItemID2 = 78886,
			m_SpecialCardItemID3 = 78887,
		},		
		{
			m_SocketOptionID = 35208,
			m_SpecialCardItemID1 = 78888,
			m_SpecialCardItemID2 = 78889,
			m_SpecialCardItemID3 = 78890,
		},		
		{
			m_SocketOptionID = 35209,
			m_SpecialCardItemID1 = 78891,
			m_SpecialCardItemID2 = 78892,
			m_SpecialCardItemID3 = 78893,
		},
	},
}

DefenceDungeonManager:AddItemInfoForManufacture
{
	m_ItemID = 117180, -- 마룡의 발톱 (청)
	
	OPTION_GROUP = { 9, 5, 6, },
	SPECIAL_CARD_GROUP =
	{
		{
			m_SocketOptionID = 35200,
			m_SpecialCardItemID1 = 78864,			
			m_SpecialCardItemID2 = 78865,
			m_SpecialCardItemID3 = 78866,
		},		
		{
			m_SocketOptionID = 35201,
			m_SpecialCardItemID1 = 78867,
			m_SpecialCardItemID2 = 78868,
			m_SpecialCardItemID3 = 78869,
		},		
		{
			m_SocketOptionID = 35202,
			m_SpecialCardItemID1 = 78870,
			m_SpecialCardItemID2 = 78871,
			m_SpecialCardItemID3 = 78872,
		},
		{
			m_SocketOptionID = 35203,
			m_SpecialCardItemID1 = 78873,
			m_SpecialCardItemID2 = 78874,
			m_SpecialCardItemID3 = 78875,
		},		
		{
			m_SocketOptionID = 35204,
			m_SpecialCardItemID1 = 78876,
			m_SpecialCardItemID2 = 78877,
			m_SpecialCardItemID3 = 78878,
		},		
		{
			m_SocketOptionID = 35205,
			m_SpecialCardItemID1 = 78879,
			m_SpecialCardItemID2 = 78880,
			m_SpecialCardItemID3 = 78881,
		},
		{
			m_SocketOptionID = 35206,
			m_SpecialCardItemID1 = 78882,
			m_SpecialCardItemID2 = 78883,
			m_SpecialCardItemID3 = 78884,
		},		
		{
			m_SocketOptionID = 35207,
			m_SpecialCardItemID1 = 78885,
			m_SpecialCardItemID2 = 78886,
			m_SpecialCardItemID3 = 78887,
		},		
		{
			m_SocketOptionID = 35208,
			m_SpecialCardItemID1 = 78888,
			m_SpecialCardItemID2 = 78889,
			m_SpecialCardItemID3 = 78890,
		},		
		{
			m_SocketOptionID = 35209,
			m_SpecialCardItemID1 = 78891,
			m_SpecialCardItemID2 = 78892,
			m_SpecialCardItemID3 = 78893,
		},
	},
}

DefenceDungeonManager:AddItemInfoForManufacture
{
	m_ItemID = 117181, -- 마룡의 발톱 (아라)
	
	OPTION_GROUP = { 9, 5, 6, },
	SPECIAL_CARD_GROUP =
	{
		{
			m_SocketOptionID = 35200,
			m_SpecialCardItemID1 = 78864,			
			m_SpecialCardItemID2 = 78865,
			m_SpecialCardItemID3 = 78866,
		},		
		{
			m_SocketOptionID = 35201,
			m_SpecialCardItemID1 = 78867,
			m_SpecialCardItemID2 = 78868,
			m_SpecialCardItemID3 = 78869,
		},		
		{
			m_SocketOptionID = 35202,
			m_SpecialCardItemID1 = 78870,
			m_SpecialCardItemID2 = 78871,
			m_SpecialCardItemID3 = 78872,
		},
		{
			m_SocketOptionID = 35203,
			m_SpecialCardItemID1 = 78873,
			m_SpecialCardItemID2 = 78874,
			m_SpecialCardItemID3 = 78875,
		},		
		{
			m_SocketOptionID = 35204,
			m_SpecialCardItemID1 = 78876,
			m_SpecialCardItemID2 = 78877,
			m_SpecialCardItemID3 = 78878,
		},		
		{
			m_SocketOptionID = 35205,
			m_SpecialCardItemID1 = 78879,
			m_SpecialCardItemID2 = 78880,
			m_SpecialCardItemID3 = 78881,
		},
		{
			m_SocketOptionID = 35206,
			m_SpecialCardItemID1 = 78882,
			m_SpecialCardItemID2 = 78883,
			m_SpecialCardItemID3 = 78884,
		},		
		{
			m_SocketOptionID = 35207,
			m_SpecialCardItemID1 = 78885,
			m_SpecialCardItemID2 = 78886,
			m_SpecialCardItemID3 = 78887,
		},		
		{
			m_SocketOptionID = 35208,
			m_SpecialCardItemID1 = 78888,
			m_SpecialCardItemID2 = 78889,
			m_SpecialCardItemID3 = 78890,
		},		
		{
			m_SocketOptionID = 35209,
			m_SpecialCardItemID1 = 78891,
			m_SpecialCardItemID2 = 78892,
			m_SpecialCardItemID3 = 78893,
		},
	},
}

DefenceDungeonManager:AddItemInfoForManufacture
{
	m_ItemID = 117193, -- 마룡의 발톱 (아라)
	
	OPTION_GROUP = { 9, 5, 6, },
	SPECIAL_CARD_GROUP =
	{
		{
			m_SocketOptionID = 35200,
			m_SpecialCardItemID1 = 78864,			
			m_SpecialCardItemID2 = 78865,
			m_SpecialCardItemID3 = 78866,
		},		
		{
			m_SocketOptionID = 35201,
			m_SpecialCardItemID1 = 78867,
			m_SpecialCardItemID2 = 78868,
			m_SpecialCardItemID3 = 78869,
		},		
		{
			m_SocketOptionID = 35202,
			m_SpecialCardItemID1 = 78870,
			m_SpecialCardItemID2 = 78871,
			m_SpecialCardItemID3 = 78872,
		},
		{
			m_SocketOptionID = 35203,
			m_SpecialCardItemID1 = 78873,
			m_SpecialCardItemID2 = 78874,
			m_SpecialCardItemID3 = 78875,
		},		
		{
			m_SocketOptionID = 35204,
			m_SpecialCardItemID1 = 78876,
			m_SpecialCardItemID2 = 78877,
			m_SpecialCardItemID3 = 78878,
		},		
		{
			m_SocketOptionID = 35205,
			m_SpecialCardItemID1 = 78879,
			m_SpecialCardItemID2 = 78880,
			m_SpecialCardItemID3 = 78881,
		},
		{
			m_SocketOptionID = 35206,
			m_SpecialCardItemID1 = 78882,
			m_SpecialCardItemID2 = 78883,
			m_SpecialCardItemID3 = 78884,
		},		
		{
			m_SocketOptionID = 35207,
			m_SpecialCardItemID1 = 78885,
			m_SpecialCardItemID2 = 78886,
			m_SpecialCardItemID3 = 78887,
		},		
		{
			m_SocketOptionID = 35208,
			m_SpecialCardItemID1 = 78888,
			m_SpecialCardItemID2 = 78889,
			m_SpecialCardItemID3 = 78890,
		},		
		{
			m_SocketOptionID = 35209,
			m_SpecialCardItemID1 = 78891,
			m_SpecialCardItemID2 = 78892,
			m_SpecialCardItemID3 = 78893,
		},
	},
}

DefenceDungeonManager:AddItemInfoForManufacture
{
	m_ItemID = 117186, -- 고대 마룡의 발톱 (엘소드)
	
	OPTION_GROUP = { 9, 5, 7, 6, },
	SPECIAL_CARD_GROUP =
	{
		{
			m_SocketOptionID = 35200,
			m_SpecialCardItemID1 = 78864,			
			m_SpecialCardItemID2 = 78865,
			m_SpecialCardItemID3 = 78866,
		},		
		{
			m_SocketOptionID = 35201,
			m_SpecialCardItemID1 = 78867,
			m_SpecialCardItemID2 = 78868,
			m_SpecialCardItemID3 = 78869,
		},		
		{
			m_SocketOptionID = 35202,
			m_SpecialCardItemID1 = 78870,
			m_SpecialCardItemID2 = 78871,
			m_SpecialCardItemID3 = 78872,
		},
		{
			m_SocketOptionID = 35203,
			m_SpecialCardItemID1 = 78873,
			m_SpecialCardItemID2 = 78874,
			m_SpecialCardItemID3 = 78875,
		},		
		{
			m_SocketOptionID = 35204,
			m_SpecialCardItemID1 = 78876,
			m_SpecialCardItemID2 = 78877,
			m_SpecialCardItemID3 = 78878,
		},		
		{
			m_SocketOptionID = 35205,
			m_SpecialCardItemID1 = 78879,
			m_SpecialCardItemID2 = 78880,
			m_SpecialCardItemID3 = 78881,
		},
		{
			m_SocketOptionID = 35206,
			m_SpecialCardItemID1 = 78882,
			m_SpecialCardItemID2 = 78883,
			m_SpecialCardItemID3 = 78884,
		},		
		{
			m_SocketOptionID = 35207,
			m_SpecialCardItemID1 = 78885,
			m_SpecialCardItemID2 = 78886,
			m_SpecialCardItemID3 = 78887,
		},		
		{
			m_SocketOptionID = 35208,
			m_SpecialCardItemID1 = 78888,
			m_SpecialCardItemID2 = 78889,
			m_SpecialCardItemID3 = 78890,
		},		
		{
			m_SocketOptionID = 35209,
			m_SpecialCardItemID1 = 78891,
			m_SpecialCardItemID2 = 78892,
			m_SpecialCardItemID3 = 78893,
		},
	},
}

DefenceDungeonManager:AddItemInfoForManufacture
{
	m_ItemID = 117187, -- 고대 마룡의 발톱 (아이샤)
	
	OPTION_GROUP = { 9, 5, 7, 6, },
	SPECIAL_CARD_GROUP =
	{
		{
			m_SocketOptionID = 35200,
			m_SpecialCardItemID1 = 78864,			
			m_SpecialCardItemID2 = 78865,
			m_SpecialCardItemID3 = 78866,
		},		
		{
			m_SocketOptionID = 35201,
			m_SpecialCardItemID1 = 78867,
			m_SpecialCardItemID2 = 78868,
			m_SpecialCardItemID3 = 78869,
		},		
		{
			m_SocketOptionID = 35202,
			m_SpecialCardItemID1 = 78870,
			m_SpecialCardItemID2 = 78871,
			m_SpecialCardItemID3 = 78872,
		},
		{
			m_SocketOptionID = 35203,
			m_SpecialCardItemID1 = 78873,
			m_SpecialCardItemID2 = 78874,
			m_SpecialCardItemID3 = 78875,
		},		
		{
			m_SocketOptionID = 35204,
			m_SpecialCardItemID1 = 78876,
			m_SpecialCardItemID2 = 78877,
			m_SpecialCardItemID3 = 78878,
		},		
		{
			m_SocketOptionID = 35205,
			m_SpecialCardItemID1 = 78879,
			m_SpecialCardItemID2 = 78880,
			m_SpecialCardItemID3 = 78881,
		},
		{
			m_SocketOptionID = 35206,
			m_SpecialCardItemID1 = 78882,
			m_SpecialCardItemID2 = 78883,
			m_SpecialCardItemID3 = 78884,
		},		
		{
			m_SocketOptionID = 35207,
			m_SpecialCardItemID1 = 78885,
			m_SpecialCardItemID2 = 78886,
			m_SpecialCardItemID3 = 78887,
		},		
		{
			m_SocketOptionID = 35208,
			m_SpecialCardItemID1 = 78888,
			m_SpecialCardItemID2 = 78889,
			m_SpecialCardItemID3 = 78890,
		},		
		{
			m_SocketOptionID = 35209,
			m_SpecialCardItemID1 = 78891,
			m_SpecialCardItemID2 = 78892,
			m_SpecialCardItemID3 = 78893,
		},
	},
}

DefenceDungeonManager:AddItemInfoForManufacture
{
	m_ItemID = 117188, -- 고대 마룡의 발톱 (레나)
	
	OPTION_GROUP = { 9, 5, 7, 6, },
	SPECIAL_CARD_GROUP =
	{
		{
			m_SocketOptionID = 35200,
			m_SpecialCardItemID1 = 78864,			
			m_SpecialCardItemID2 = 78865,
			m_SpecialCardItemID3 = 78866,
		},		
		{
			m_SocketOptionID = 35201,
			m_SpecialCardItemID1 = 78867,
			m_SpecialCardItemID2 = 78868,
			m_SpecialCardItemID3 = 78869,
		},		
		{
			m_SocketOptionID = 35202,
			m_SpecialCardItemID1 = 78870,
			m_SpecialCardItemID2 = 78871,
			m_SpecialCardItemID3 = 78872,
		},
		{
			m_SocketOptionID = 35203,
			m_SpecialCardItemID1 = 78873,
			m_SpecialCardItemID2 = 78874,
			m_SpecialCardItemID3 = 78875,
		},		
		{
			m_SocketOptionID = 35204,
			m_SpecialCardItemID1 = 78876,
			m_SpecialCardItemID2 = 78877,
			m_SpecialCardItemID3 = 78878,
		},		
		{
			m_SocketOptionID = 35205,
			m_SpecialCardItemID1 = 78879,
			m_SpecialCardItemID2 = 78880,
			m_SpecialCardItemID3 = 78881,
		},
		{
			m_SocketOptionID = 35206,
			m_SpecialCardItemID1 = 78882,
			m_SpecialCardItemID2 = 78883,
			m_SpecialCardItemID3 = 78884,
		},		
		{
			m_SocketOptionID = 35207,
			m_SpecialCardItemID1 = 78885,
			m_SpecialCardItemID2 = 78886,
			m_SpecialCardItemID3 = 78887,
		},		
		{
			m_SocketOptionID = 35208,
			m_SpecialCardItemID1 = 78888,
			m_SpecialCardItemID2 = 78889,
			m_SpecialCardItemID3 = 78890,
		},		
		{
			m_SocketOptionID = 35209,
			m_SpecialCardItemID1 = 78891,
			m_SpecialCardItemID2 = 78892,
			m_SpecialCardItemID3 = 78893,
		},
	},
}

DefenceDungeonManager:AddItemInfoForManufacture
{
	m_ItemID = 117189, -- 고대 마룡의 발톱 (레이븐)
	
	OPTION_GROUP = { 9, 5, 7, 6, },
	SPECIAL_CARD_GROUP =
	{
		{
			m_SocketOptionID = 35200,
			m_SpecialCardItemID1 = 78864,			
			m_SpecialCardItemID2 = 78865,
			m_SpecialCardItemID3 = 78866,
		},		
		{
			m_SocketOptionID = 35201,
			m_SpecialCardItemID1 = 78867,
			m_SpecialCardItemID2 = 78868,
			m_SpecialCardItemID3 = 78869,
		},		
		{
			m_SocketOptionID = 35202,
			m_SpecialCardItemID1 = 78870,
			m_SpecialCardItemID2 = 78871,
			m_SpecialCardItemID3 = 78872,
		},
		{
			m_SocketOptionID = 35203,
			m_SpecialCardItemID1 = 78873,
			m_SpecialCardItemID2 = 78874,
			m_SpecialCardItemID3 = 78875,
		},		
		{
			m_SocketOptionID = 35204,
			m_SpecialCardItemID1 = 78876,
			m_SpecialCardItemID2 = 78877,
			m_SpecialCardItemID3 = 78878,
		},		
		{
			m_SocketOptionID = 35205,
			m_SpecialCardItemID1 = 78879,
			m_SpecialCardItemID2 = 78880,
			m_SpecialCardItemID3 = 78881,
		},
		{
			m_SocketOptionID = 35206,
			m_SpecialCardItemID1 = 78882,
			m_SpecialCardItemID2 = 78883,
			m_SpecialCardItemID3 = 78884,
		},		
		{
			m_SocketOptionID = 35207,
			m_SpecialCardItemID1 = 78885,
			m_SpecialCardItemID2 = 78886,
			m_SpecialCardItemID3 = 78887,
		},		
		{
			m_SocketOptionID = 35208,
			m_SpecialCardItemID1 = 78888,
			m_SpecialCardItemID2 = 78889,
			m_SpecialCardItemID3 = 78890,
		},		
		{
			m_SocketOptionID = 35209,
			m_SpecialCardItemID1 = 78891,
			m_SpecialCardItemID2 = 78892,
			m_SpecialCardItemID3 = 78893,
		},
	},
}

DefenceDungeonManager:AddItemInfoForManufacture
{
	m_ItemID = 117190, -- 고대 마룡의 발톱 (이브)
	
	OPTION_GROUP = { 9, 5, 7, 6, },
	SPECIAL_CARD_GROUP =
	{
		{
			m_SocketOptionID = 35200,
			m_SpecialCardItemID1 = 78864,			
			m_SpecialCardItemID2 = 78865,
			m_SpecialCardItemID3 = 78866,
		},		
		{
			m_SocketOptionID = 35201,
			m_SpecialCardItemID1 = 78867,
			m_SpecialCardItemID2 = 78868,
			m_SpecialCardItemID3 = 78869,
		},		
		{
			m_SocketOptionID = 35202,
			m_SpecialCardItemID1 = 78870,
			m_SpecialCardItemID2 = 78871,
			m_SpecialCardItemID3 = 78872,
		},
		{
			m_SocketOptionID = 35203,
			m_SpecialCardItemID1 = 78873,
			m_SpecialCardItemID2 = 78874,
			m_SpecialCardItemID3 = 78875,
		},		
		{
			m_SocketOptionID = 35204,
			m_SpecialCardItemID1 = 78876,
			m_SpecialCardItemID2 = 78877,
			m_SpecialCardItemID3 = 78878,
		},		
		{
			m_SocketOptionID = 35205,
			m_SpecialCardItemID1 = 78879,
			m_SpecialCardItemID2 = 78880,
			m_SpecialCardItemID3 = 78881,
		},
		{
			m_SocketOptionID = 35206,
			m_SpecialCardItemID1 = 78882,
			m_SpecialCardItemID2 = 78883,
			m_SpecialCardItemID3 = 78884,
		},		
		{
			m_SocketOptionID = 35207,
			m_SpecialCardItemID1 = 78885,
			m_SpecialCardItemID2 = 78886,
			m_SpecialCardItemID3 = 78887,
		},		
		{
			m_SocketOptionID = 35208,
			m_SpecialCardItemID1 = 78888,
			m_SpecialCardItemID2 = 78889,
			m_SpecialCardItemID3 = 78890,
		},		
		{
			m_SocketOptionID = 35209,
			m_SpecialCardItemID1 = 78891,
			m_SpecialCardItemID2 = 78892,
			m_SpecialCardItemID3 = 78893,
		},
	},
}

DefenceDungeonManager:AddItemInfoForManufacture
{
	m_ItemID = 117191, -- 고대 마룡의 발톱 (청)
	
	OPTION_GROUP = { 9, 5, 7, 6, },
	SPECIAL_CARD_GROUP =
	{
		{
			m_SocketOptionID = 35200,
			m_SpecialCardItemID1 = 78864,			
			m_SpecialCardItemID2 = 78865,
			m_SpecialCardItemID3 = 78866,
		},		
		{
			m_SocketOptionID = 35201,
			m_SpecialCardItemID1 = 78867,
			m_SpecialCardItemID2 = 78868,
			m_SpecialCardItemID3 = 78869,
		},		
		{
			m_SocketOptionID = 35202,
			m_SpecialCardItemID1 = 78870,
			m_SpecialCardItemID2 = 78871,
			m_SpecialCardItemID3 = 78872,
		},
		{
			m_SocketOptionID = 35203,
			m_SpecialCardItemID1 = 78873,
			m_SpecialCardItemID2 = 78874,
			m_SpecialCardItemID3 = 78875,
		},		
		{
			m_SocketOptionID = 35204,
			m_SpecialCardItemID1 = 78876,
			m_SpecialCardItemID2 = 78877,
			m_SpecialCardItemID3 = 78878,
		},		
		{
			m_SocketOptionID = 35205,
			m_SpecialCardItemID1 = 78879,
			m_SpecialCardItemID2 = 78880,
			m_SpecialCardItemID3 = 78881,
		},
		{
			m_SocketOptionID = 35206,
			m_SpecialCardItemID1 = 78882,
			m_SpecialCardItemID2 = 78883,
			m_SpecialCardItemID3 = 78884,
		},		
		{
			m_SocketOptionID = 35207,
			m_SpecialCardItemID1 = 78885,
			m_SpecialCardItemID2 = 78886,
			m_SpecialCardItemID3 = 78887,
		},		
		{
			m_SocketOptionID = 35208,
			m_SpecialCardItemID1 = 78888,
			m_SpecialCardItemID2 = 78889,
			m_SpecialCardItemID3 = 78890,
		},		
		{
			m_SocketOptionID = 35209,
			m_SpecialCardItemID1 = 78891,
			m_SpecialCardItemID2 = 78892,
			m_SpecialCardItemID3 = 78893,
		},
	},
}

DefenceDungeonManager:AddItemInfoForManufacture
{
	m_ItemID = 117192, -- 고대 마룡의 발톱 (아라)
	
	OPTION_GROUP = { 9, 5, 7, 6, },
	SPECIAL_CARD_GROUP =
	{
		{
			m_SocketOptionID = 35200,
			m_SpecialCardItemID1 = 78864,			
			m_SpecialCardItemID2 = 78865,
			m_SpecialCardItemID3 = 78866,
		},		
		{
			m_SocketOptionID = 35201,
			m_SpecialCardItemID1 = 78867,
			m_SpecialCardItemID2 = 78868,
			m_SpecialCardItemID3 = 78869,
		},		
		{
			m_SocketOptionID = 35202,
			m_SpecialCardItemID1 = 78870,
			m_SpecialCardItemID2 = 78871,
			m_SpecialCardItemID3 = 78872,
		},
		{
			m_SocketOptionID = 35203,
			m_SpecialCardItemID1 = 78873,
			m_SpecialCardItemID2 = 78874,
			m_SpecialCardItemID3 = 78875,
		},		
		{
			m_SocketOptionID = 35204,
			m_SpecialCardItemID1 = 78876,
			m_SpecialCardItemID2 = 78877,
			m_SpecialCardItemID3 = 78878,
		},		
		{
			m_SocketOptionID = 35205,
			m_SpecialCardItemID1 = 78879,
			m_SpecialCardItemID2 = 78880,
			m_SpecialCardItemID3 = 78881,
		},
		{
			m_SocketOptionID = 35206,
			m_SpecialCardItemID1 = 78882,
			m_SpecialCardItemID2 = 78883,
			m_SpecialCardItemID3 = 78884,
		},		
		{
			m_SocketOptionID = 35207,
			m_SpecialCardItemID1 = 78885,
			m_SpecialCardItemID2 = 78886,
			m_SpecialCardItemID3 = 78887,
		},		
		{
			m_SocketOptionID = 35208,
			m_SpecialCardItemID1 = 78888,
			m_SpecialCardItemID2 = 78889,
			m_SpecialCardItemID3 = 78890,
		},		
		{
			m_SocketOptionID = 35209,
			m_SpecialCardItemID1 = 78891,
			m_SpecialCardItemID2 = 78892,
			m_SpecialCardItemID3 = 78893,
		},
	},
}

DefenceDungeonManager:AddItemInfoForManufacture
{
	m_ItemID = 117194, -- 고대 마룡의 발톱 (엘리시스)
	
	OPTION_GROUP = { 9, 5, 7, 6, },
	SPECIAL_CARD_GROUP =
	{
		{
			m_SocketOptionID = 35200,
			m_SpecialCardItemID1 = 78864,			
			m_SpecialCardItemID2 = 78865,
			m_SpecialCardItemID3 = 78866,
		},		
		{
			m_SocketOptionID = 35201,
			m_SpecialCardItemID1 = 78867,
			m_SpecialCardItemID2 = 78868,
			m_SpecialCardItemID3 = 78869,
		},		
		{
			m_SocketOptionID = 35202,
			m_SpecialCardItemID1 = 78870,
			m_SpecialCardItemID2 = 78871,
			m_SpecialCardItemID3 = 78872,
		},
		{
			m_SocketOptionID = 35203,
			m_SpecialCardItemID1 = 78873,
			m_SpecialCardItemID2 = 78874,
			m_SpecialCardItemID3 = 78875,
		},		
		{
			m_SocketOptionID = 35204,
			m_SpecialCardItemID1 = 78876,
			m_SpecialCardItemID2 = 78877,
			m_SpecialCardItemID3 = 78878,
		},		
		{
			m_SocketOptionID = 35205,
			m_SpecialCardItemID1 = 78879,
			m_SpecialCardItemID2 = 78880,
			m_SpecialCardItemID3 = 78881,
		},
		{
			m_SocketOptionID = 35206,
			m_SpecialCardItemID1 = 78882,
			m_SpecialCardItemID2 = 78883,
			m_SpecialCardItemID3 = 78884,
		},		
		{
			m_SocketOptionID = 35207,
			m_SpecialCardItemID1 = 78885,
			m_SpecialCardItemID2 = 78886,
			m_SpecialCardItemID3 = 78887,
		},		
		{
			m_SocketOptionID = 35208,
			m_SpecialCardItemID1 = 78888,
			m_SpecialCardItemID2 = 78889,
			m_SpecialCardItemID3 = 78890,
		},		
		{
			m_SocketOptionID = 35209,
			m_SpecialCardItemID1 = 78891,
			m_SpecialCardItemID2 = 78892,
			m_SpecialCardItemID3 = 78893,
		},
	},
}

DefenceDungeonManager:AddOldDefenceItemID( 113500 ) --  (구)마룡의 헤드기어
DefenceDungeonManager:AddOldDefenceItemID( 113501 ) --  (구)마룡의 날개
DefenceDungeonManager:AddOldDefenceItemID( 113502 ) --  (구)마룡의 꼬리
DefenceDungeonManager:AddOldDefenceItemID( 113503 ) --  (구)마룡의 헥사코어
DefenceDungeonManager:AddOldDefenceItemID( 113504 ) --  (구)마룡의 발톱 (엘소드)
DefenceDungeonManager:AddOldDefenceItemID( 113505 ) --  (구)마룡의 발톱 (아이샤)
DefenceDungeonManager:AddOldDefenceItemID( 113506 ) --  (구)마룡의 발톱 (레나)
DefenceDungeonManager:AddOldDefenceItemID( 113507 ) --  (구)마룡의 발톱 (레이븐)
DefenceDungeonManager:AddOldDefenceItemID( 113508 ) --  (구)마룡의 발톱 (이브)
DefenceDungeonManager:AddOldDefenceItemID( 113509 ) --  (구)마룡의 발톱 (청)
DefenceDungeonManager:AddOldDefenceItemID( 113510 ) --  (구)마룡의 발톱 (아라)
DefenceDungeonManager:AddOldDefenceItemID( 113511 ) --  (구)고대 마룡의 헤드기어
DefenceDungeonManager:AddOldDefenceItemID( 113512 ) --  (구)고대 마룡의 날개
DefenceDungeonManager:AddOldDefenceItemID( 113513 ) --  (구)고대 마룡의 꼬리
DefenceDungeonManager:AddOldDefenceItemID( 113514 ) --  (구)고대 마룡의 헥사코어
DefenceDungeonManager:AddOldDefenceItemID( 113515 ) --  (구)고대 마룡의 발톱 (엘소드)
DefenceDungeonManager:AddOldDefenceItemID( 113516 ) --  (구)고대 마룡의 발톱 (아이샤)
DefenceDungeonManager:AddOldDefenceItemID( 113517 ) --  (구)고대 마룡의 발톱 (레나)
DefenceDungeonManager:AddOldDefenceItemID( 113518 ) --  (구)고대 마룡의 발톱 (레이븐)
DefenceDungeonManager:AddOldDefenceItemID( 113519 ) --  (구)고대 마룡의 발톱 (이브)
DefenceDungeonManager:AddOldDefenceItemID( 113520 ) --  (구)고대 마룡의 발톱 (청)
DefenceDungeonManager:AddOldDefenceItemID( 113521 ) --  (구)고대 마룡의 발톱 (아라)