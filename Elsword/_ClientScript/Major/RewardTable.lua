-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- 이탈 방지 유저 아이템 보상              ( 슬롯번호, 아이템id, 수량 )
-- #ifdef SERV_NEXON_SESSION_PROTOCOL
--g_pKRewardTable:SetOutUserRetainingRewardItemInfo( 1, 212360,  2 )		-- 고성능 나소드 메가폰		2개
--g_pKRewardTable:SetOutUserRetainingRewardItemInfo( 2, 127030, 10 )		-- 부활석				   10개
--g_pKRewardTable:SetOutUserRetainingRewardItemInfo( 3, 500040,  7 )		-- 엘의 나무 열매			7개
--g_pKRewardTable:SetOutUserRetainingRewardItemInfo( 4, 212350,  5 )		-- 나소드 메가폰			5개
--g_pKRewardTable:SetOutUserRetainingRewardItemInfo( 5, 207500,  1 )		-- 얼음 조각상 가열기		1개
-- #endif SERV_NEXON_SESSION_PROTOCOL

-- 우편 보상 테이블
-- 인자값( RewardID, ItemID, Quantity, Period )

g_pKRewardTable:AddRewardData(  1,  77200, 3,  0 ) -- 근성도 회복 아이템 3개
g_pKRewardTable:AddRewardData(  2, 129070, 3,  0 ) -- 부활석 3개
g_pKRewardTable:AddRewardData(  3, 109965, 3,  0 ) -- 방어구 강화석 3개
g_pKRewardTable:AddRewardData(  3, 109945, 3,  0 ) -- 마법석 3개
g_pKRewardTable:AddRewardData(  4, 109950, 3,  0 ) -- 무기 강화석 3개
g_pKRewardTable:AddRewardData(  4, 109955, 3,  0 ) -- 고급 마법석 3개
g_pKRewardTable:AddRewardData(  5, 106060, 1,  0 ) -- 스승의 은혜 큐브 1개
g_pKRewardTable:AddRewardData(  6, 129070, 5,  0 ) -- 사제 보상 부활석 큐브 5개
g_pKRewardTable:AddRewardData(  7, 129729, 1,  0 ) -- 매일 매일 비밀 큐브 1개
g_pKRewardTable:AddRewardData(  8, 129728, 1,  0 ) -- 체험ID 전환 축하큐브 1개
g_pKRewardTable:AddRewardData(  9, 106061, 1,  0 ) -- 스승의 은혜 초급 큐브 1개
g_pKRewardTable:AddRewardData( 10, 106062, 1,  0 ) -- 스승의 은혜 중급 큐브 1개
g_pKRewardTable:AddRewardData( 11, 106063, 1,  0 ) -- 스승의 은혜 고급 큐브 1개
g_pKRewardTable:AddRewardData( 12, 129735, 1,  0 ) -- 태극기가 있는 가방 악세사리 1개
g_pKRewardTable:AddRewardData( 13, 129755, 1,  0 ) -- 전투식량 큐브 1개
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData( 14,  77190, 3,  0 ) -- 월요일 : 상급포션 3개
g_pKRewardTable:AddRewardData( 14,  77180, 3,  0 ) -- 월요일 : 중급 마나포션 3개
g_pKRewardTable:AddRewardData( 14,  77080, 3,  0 ) -- 월요일 : 축복의 샘물 3개
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData( 15, 109955, 2,  0 ) -- 화요일 : 고급마법석 2개
g_pKRewardTable:AddRewardData( 15, 109945, 3,  0 ) -- 화요일 : 마법석 3개
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData( 16, 109950, 2,  0 ) -- 수요일 : 무기 강화석 2개
g_pKRewardTable:AddRewardData( 16, 109965, 3,  0 ) -- 수요일 : 방어구 강화석 3개
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData( 17, 200630, 1,  1 ) -- 목요일 6월 26일: 공갈 쭈쭈 1개
g_pKRewardTable:AddRewardData( 18, 200600, 1,  1 ) -- 목요일 7월 3일: 쫑긋쫑긋 토끼귀 1개
g_pKRewardTable:AddRewardData( 19, 200610, 1,  1 ) -- 목요일 7월 10일: 활짝 꽃핀 1개
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData( 20, 129770, 1,  1 ) -- 금요일 : act3기념 경험치 15% 메달 1개
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData( 21,  77200, 3,  0 ) -- 토요일 : 근성포션 3개
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData( 22, 129070, 1,  0 ) -- 일요일 : 부활석 큐브 1개
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData( 23, 109945, 2,  0 ) -- 엘소드 200일 이벤트 : 마법석 2개
g_pKRewardTable:AddRewardData( 24, 109965, 2,  0 ) -- 엘소드 200일 이벤트 : 방어구 강화석 2개
g_pKRewardTable:AddRewardData( 25, 129070, 1,  0 ) -- 엘소드 200일 이벤트 : 부활석 큐브 1개
g_pKRewardTable:AddRewardData( 26, 129790, 1,  0 ) -- 엘소드 200일 이벤트 : 프로모션 무기 큐브 1개
g_pKRewardTable:AddRewardData( 27, 109950, 2,  0 ) -- 엘소드 200일 이벤트 : 무기 강화석 2개
g_pKRewardTable:AddRewardData( 28, 109955, 2,  0 ) -- 엘소드 200일 이벤트 : 고급 마법석 2개
g_pKRewardTable:AddRewardData( 29,  77200, 2,  0 ) -- 엘소드 200일 이벤트 : 근성 포션 2개
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData( 30, 129885, 1,  0 ) -- 출입증서 랜덤 큐브 1개
g_pKRewardTable:AddRewardData( 31, 129890, 1,  0 ) -- 무기 랜덤 큐브 1개
g_pKRewardTable:AddRewardData( 32, 129895, 1,  0 ) -- 회복 랜덤 큐브 1개
g_pKRewardTable:AddRewardData( 33, 129900, 1,  0 ) -- 마법석 랜덤 큐브 1개
g_pKRewardTable:AddRewardData( 34, 129905, 1,  0 ) -- 강화석 랜덤 큐브 1개
g_pKRewardTable:AddRewardData( 35, 129906, 1,  0 ) -- ACT3 글자 랜덤 큐브 1개
g_pKRewardTable:AddRewardData( 36, 129845, 1,  0 ) -- ACT3 글자 A 1개
g_pKRewardTable:AddRewardData( 37, 129850, 1,  0 ) -- ACT3 글자 C 1개
g_pKRewardTable:AddRewardData( 38, 129855, 1,  0 ) -- ACT3 글자 T 1개
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData( 39, 109950, 3,  0 ) -- 무기 강화석 3개 : 파티 큐브 A
g_pKRewardTable:AddRewardData( 39, 109965, 3,  0 ) -- 방어구 강화석 3개 : 파티 큐브 A
g_pKRewardTable:AddRewardData( 39, 109945, 3,  0 ) -- 마법석 3개 : 파티 큐브 A
g_pKRewardTable:AddRewardData( 39, 129965, 1, 30 ) -- 벨더 병사 방패 기간제 30일 : 파티 큐브 A
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData( 40, 109950, 3,  0 ) -- 무기 강화석 3개 : 파티 큐브 B
g_pKRewardTable:AddRewardData( 40, 109965, 3,  0 ) -- 방어구 강화석 3개 : 파티 큐브 B
g_pKRewardTable:AddRewardData( 40, 109945, 3,  0 ) -- 마법석 3개 : 파티 큐브 B
g_pKRewardTable:AddRewardData( 40, 109955, 3,  0 ) -- 고급 마법석 3개 : 파티 큐브 B
g_pKRewardTable:AddRewardData( 40, 129966, 1, 30 ) -- 벨더 병사 방패 기간제 30일 : 파티 큐브 B
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData( 41, 129974, 1,  0 ) -- 아케이드 모드 랭킹 축하 큐브
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData( 42, 130001, 1,  0 ) -- 올림픽 이벤트 금메달 큐브
g_pKRewardTable:AddRewardData( 43, 130003, 1,  0 ) -- 대표팀 응원 아이템
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData( 44, 130029, 1,  0 ) -- 신학기 기념 비던 출입증 큐브 
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData( 45, 129070, 1,  0 ) -- 추석 이벤트 부활석 큐브
g_pKRewardTable:AddRewardData( 46, 129885, 1,  0 ) -- 추석 이벤트 출입 랜덤 큐브
g_pKRewardTable:AddRewardData( 47, 109950, 1,  0 ) -- 추석 이벤트 무기강화석
g_pKRewardTable:AddRewardData( 48, 109945, 1,  0 ) -- 추석 이벤트 마법석
g_pKRewardTable:AddRewardData( 49, 130043, 1,  0 ) -- 추석 이벤트 한가위 종합 선물 세트
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData( 50, 109965, 1,  0 ) -- ACT4 이벤트 방어구 강화석
g_pKRewardTable:AddRewardData( 51,  99010, 1,  0 ) -- ACT4 이벤트 요리재료세트 묶음
g_pKRewardTable:AddRewardData( 51,  99030, 1,  0 ) -- ACT4 이벤트 요리재료세트 묶음
g_pKRewardTable:AddRewardData( 51,  99050, 1,  0 ) -- ACT4 이벤트 요리재료세트 묶음
g_pKRewardTable:AddRewardData( 52, 129890, 1,  0 ) -- ACT4 이벤트 무기 큐브
g_pKRewardTable:AddRewardData( 53,  99000, 1,  0 ) -- ACT4 이벤트 장비제조재료세트 묶음
g_pKRewardTable:AddRewardData( 53,  99020, 1,  0 ) -- ACT4 이벤트 장비제조재료세트 묶음
g_pKRewardTable:AddRewardData( 53,  99040, 1,  0 ) -- ACT4 이벤트 장비제조재료세트 묶음
g_pKRewardTable:AddRewardData( 54, 109950, 1,  0 ) -- ACT4 이벤트 무기 강화석
g_pKRewardTable:AddRewardData( 55, 109955, 1,  0 ) -- ACT4 이벤트 고급 마법석
g_pKRewardTable:AddRewardData( 56, 129885, 1,  0 ) -- ACT4 이벤트 출입 랜덤 큐브
g_pKRewardTable:AddRewardData( 57, 129070, 1,  0 ) -- ACT4 이벤트 부활석 큐브
g_pKRewardTable:AddRewardData( 58, 109945, 1,  0 ) -- ACT4 이벤트 마법석
g_pKRewardTable:AddRewardData( 59,  77190, 3,  0 ) -- ACT4 이벤트 상급포션 3개
g_pKRewardTable:AddRewardData( 59,  77180, 3,  0 ) -- ACT4 이벤트 중급 마나포션 3개
g_pKRewardTable:AddRewardData( 59,  77080, 3,  0 ) -- ACT4 이벤트 축복의 샘물 3개
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData( 60, 109950, 3,  0 ) -- 300일 이벤트 무기강화석 3개
g_pKRewardTable:AddRewardData( 60, 109955, 3,  0 ) -- 300일 이벤트 고급마법석 3개
g_pKRewardTable:AddRewardData( 60, 129070, 3,  0 ) -- 300일 이벤트 부활석큐브 3개
g_pKRewardTable:AddRewardData( 60, 130065, 1,  3 ) -- 300일 이벤트 300일칭호 사용 아이템
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData( 61, 130047, 3,  0 ) -- ACT4 이벤트 엘의 조각 (불명)
g_pKRewardTable:AddRewardData( 62, 130048, 3,  0 ) -- ACT4 이벤트 엘의 조각 (레드)
g_pKRewardTable:AddRewardData( 63, 130049, 3,  0 ) -- ACT4 이벤트 엘의 조각 (블루)
g_pKRewardTable:AddRewardData( 64, 130051, 3,  0 ) -- ACT4 이벤트 엘의 조각 (그린)
g_pKRewardTable:AddRewardData( 65, 130050, 3,  0 ) -- ACT4 이벤트 엘의 조각 (윈드)
g_pKRewardTable:AddRewardData( 66, 130053, 3,  0 ) -- ACT4 이벤트 엘의 조각 (라이트)
g_pKRewardTable:AddRewardData( 67, 130052, 3,  0 ) -- ACT4 이벤트 엘의 조각 (다크)
g_pKRewardTable:AddRewardData( 68, 130047, 1,  0 ) -- ACT4 이벤트 엘의 조각 (불명 1개)
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData( 69, 130048, 1,  0 ) -- 할로윈 이벤트 엘의 조각 (레드)
g_pKRewardTable:AddRewardData( 69, 130049, 1,  0 ) -- 할로윈 이벤트 엘의 조각 (블루)
g_pKRewardTable:AddRewardData( 69, 130051, 1,  0 ) -- 할로윈 이벤트 엘의 조각 (그린)
g_pKRewardTable:AddRewardData( 69, 130050, 1,  0 ) -- 할로윈 이벤트 엘의 조각 (윈드)
g_pKRewardTable:AddRewardData( 69, 130053, 1,  0 ) -- 할로윈 이벤트 엘의 조각 (라이트)
g_pKRewardTable:AddRewardData( 69, 130052, 1,  0 ) -- 할로윈 이벤트 엘의 조각 (다크)
g_pKRewardTable:AddRewardData( 69, 109950, 3,  0 ) -- 할로윈 이벤트 무기 강화석 3개
g_pKRewardTable:AddRewardData( 69, 109955, 3,  0 ) -- 할로윈 이벤트 고급 마법석 3개
g_pKRewardTable:AddRewardData( 70,  91480, 1,  0 ) -- 할로윈 이벤트 보통 난이도 던전 입장권
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData( 71, 129940, 1,  1 ) -- 가을 선물 세트 : 경험치 메달 1일권
g_pKRewardTable:AddRewardData( 71, 109955, 3,  0 ) -- 가을 선물 세트 : 고급 마법석 3개
g_pKRewardTable:AddRewardData( 71, 130047, 1,  0 ) -- 가을 선물 세트 : 엘의 조각(불명) 1개
g_pKRewardTable:AddRewardData( 71, 130029, 1,  0 ) -- 가을 선물 세트 : 비밀 던전 큐브 1개
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData( 72, 130047, 5,  0 ) -- 개편 기념 선물 세트 : 엘의 조각(불명) 5개
g_pKRewardTable:AddRewardData( 72, 109955, 5,  0 ) -- 개편 기념 선물 세트 : 고급 마법석 5개
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData( 73, 109950, 3,  0 ) -- 시즌2 전야 선물 : 축복 받은 무기 강화석 3개
g_pKRewardTable:AddRewardData( 73, 109955, 3,  0 ) -- 시즌2 전야 선물 : 고급 마법석 3개
g_pKRewardTable:AddRewardData( 73, 130047, 3,  0 ) -- 시즌2 전야 선물 : 엘의 조각 (불명) 3개
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData( 74, 130048, 1,  0 ) -- 엘의 조각 세트 : 엘의 조각 (레드)
g_pKRewardTable:AddRewardData( 74, 130049, 1,  0 ) -- 엘의 조각 세트 : 엘의 조각 (블루)
g_pKRewardTable:AddRewardData( 74, 130051, 1,  0 ) -- 엘의 조각 세트 : 엘의 조각 (그린)
g_pKRewardTable:AddRewardData( 74, 130050, 1,  0 ) -- 엘의 조각 세트 : 엘의 조각 (윈드)
g_pKRewardTable:AddRewardData( 74, 130053, 1,  0 ) -- 엘의 조각 세트 : 엘의 조각 (라이트)
g_pKRewardTable:AddRewardData( 74, 130052, 1,  0 ) -- 엘의 조각 세트 : 엘의 조각 (다크)
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData( 75, 129940, 1,  1 ) -- 신캐릭터 이벤트 : 경험치 15% 메달
g_pKRewardTable:AddRewardData( 76, 130047, 3,  0 ) -- 신캐릭터 이벤트 : 엘의 조각 (불명)
g_pKRewardTable:AddRewardData( 77, 109950, 3,  0 ) -- 신캐릭터 이벤트 : 축복 받은 무강 3개, 방강 3개
g_pKRewardTable:AddRewardData( 77, 109965, 3,  0 ) -- 신캐릭터 이벤트 : 축복 받은 무강 3개, 방강 3개
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData( 78,  77190, 3,  0 ) -- 크리스마스 이벤트 : 상급포션 3개
g_pKRewardTable:AddRewardData( 78,  77180, 3,  0 ) -- 크리스마스 이벤트 : 중급 마나포션 3개
g_pKRewardTable:AddRewardData( 78,  77080, 3,  0 ) -- 크리스마스 이벤트 : 축복의 샘물 3개
g_pKRewardTable:AddRewardData( 79, 129885, 1,  0 ) -- 크리스마스 이벤트 : 출입 랜덤 큐브
g_pKRewardTable:AddRewardData( 80, 129070, 1,  0 ) -- 크리스마스 이벤트 : 부활석 큐브
g_pKRewardTable:AddRewardData( 81, 109955, 2,  0 ) -- 크리스마스 이벤트 : 고급 마법석 2개
g_pKRewardTable:AddRewardData( 81, 109945, 2,  0 ) -- 크리스마스 이벤트 : 마법석 2개
g_pKRewardTable:AddRewardData( 82, 109950, 2,  0 ) -- 크리스마스 이벤트 : 축복 받은 무강 2개
g_pKRewardTable:AddRewardData( 82, 109965, 2,  0 ) -- 크리스마스 이벤트 : 축복 받은 방강 2개
g_pKRewardTable:AddRewardData( 83, 130047, 2,  0 ) -- 크리스마스 이벤트 : 엘의 조각 (불명) 2개
g_pKRewardTable:AddRewardData( 84, 130144, 1,  3 ) -- 크리스마스 이벤트 : 루돌프 사슴코 1개
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData( 85, 130164, 1,  0 ) -- 기축년 이벤트 : 기축년 기념 칭호 1개
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData( 86, 130180, 1,  0 ) -- 겨울 캠프 이벤트 : '4주간의 겨울 캠프 1월8일자 응모권'
g_pKRewardTable:AddRewardData( 87, 130181, 1,  0 ) -- 겨울 캠프 이벤트 : '4주간의 겨울 캠프 1월9일자 응모권' 
g_pKRewardTable:AddRewardData( 88, 130182, 1,  0 ) -- 겨울 캠프 이벤트 : '4주간의 겨울 캠프 1월10일자 응모권'
g_pKRewardTable:AddRewardData( 89, 130183, 1,  0 ) -- 겨울 캠프 이벤트 : '4주간의 겨울 캠프 1월11일자 응모권'
g_pKRewardTable:AddRewardData( 90, 130184, 1,  0 ) -- 겨울 캠프 이벤트 : '4주간의 겨울 캠프 1월12일자 응모권'
g_pKRewardTable:AddRewardData( 91, 130185, 1,  0 ) -- 겨울 캠프 이벤트 : '4주간의 겨울 캠프 1월13일자 응모권'
g_pKRewardTable:AddRewardData( 92, 130186, 1,  0 ) -- 겨울 캠프 이벤트 : '4주간의 겨울 캠프 1월14일자 응모권'
g_pKRewardTable:AddRewardData( 93, 130187, 1,  0 ) -- 겨울 캠프 이벤트 : '4주간의 겨울 캠프 1월15일자 응모권'
g_pKRewardTable:AddRewardData( 94, 130188, 1,  0 ) -- 겨울 캠프 이벤트 : '4주간의 겨울 캠프 1월16일자 응모권'
g_pKRewardTable:AddRewardData( 95, 130189, 1,  0 ) -- 겨울 캠프 이벤트 : '4주간의 겨울 캠프 1월17일자 응모권'
g_pKRewardTable:AddRewardData( 96, 130190, 1,  0 ) -- 겨울 캠프 이벤트 : '4주간의 겨울 캠프 1월18일자 응모권'
g_pKRewardTable:AddRewardData( 97, 130191, 1,  0 ) -- 겨울 캠프 이벤트 : '4주간의 겨울 캠프 1월19일자 응모권'
g_pKRewardTable:AddRewardData( 98, 130192, 1,  0 ) -- 겨울 캠프 이벤트 : '4주간의 겨울 캠프 1월20일자 응모권'
g_pKRewardTable:AddRewardData( 99, 130193, 1,  0 ) -- 겨울 캠프 이벤트 : '4주간의 겨울 캠프 1월21일자 응모권'
g_pKRewardTable:AddRewardData(100, 130194, 1,  0 ) -- 겨울 캠프 이벤트 : '4주간의 겨울 캠프 1월22일자 응모권'
g_pKRewardTable:AddRewardData(101, 130195, 1,  0 ) -- 겨울 캠프 이벤트 : '4주간의 겨울 캠프 1월23일자 응모권'
g_pKRewardTable:AddRewardData(102, 130196, 1,  0 ) -- 겨울 캠프 이벤트 : '4주간의 겨울 캠프 1월24일자 응모권'
g_pKRewardTable:AddRewardData(103, 130197, 1,  0 ) -- 겨울 캠프 이벤트 : '4주간의 겨울 캠프 1월25일자 응모권'
g_pKRewardTable:AddRewardData(104, 130198, 1,  0 ) -- 겨울 캠프 이벤트 : '4주간의 겨울 캠프 1월26일자 응모권'
g_pKRewardTable:AddRewardData(105, 130199, 1,  0 ) -- 겨울 캠프 이벤트 : '4주간의 겨울 캠프 1월27일자 응모권'
g_pKRewardTable:AddRewardData(106, 130200, 1,  0 ) -- 겨울 캠프 이벤트 : '4주간의 겨울 캠프 1월28일자 응모권'
g_pKRewardTable:AddRewardData(107, 130201, 1,  0 ) -- 겨울 캠프 이벤트 : '4주간의 겨울 캠프 1월29일자 응모권'
g_pKRewardTable:AddRewardData(108, 130202, 1,  0 ) -- 겨울 캠프 이벤트 : '4주간의 겨울 캠프 1월30일자 응모권'
g_pKRewardTable:AddRewardData(109, 130203, 1,  0 ) -- 겨울 캠프 이벤트 : '4주간의 겨울 캠프 1월31일자 응모권'
g_pKRewardTable:AddRewardData(110, 130204, 1,  0 ) -- 겨울 캠프 이벤트 : '4주간의 겨울 캠프 2월1일자 응모권' 
g_pKRewardTable:AddRewardData(111, 130205, 1,  0 ) -- 겨울 캠프 이벤트 : '4주간의 겨울 캠프 2월2일자 응모권' 
g_pKRewardTable:AddRewardData(112, 130206, 1,  0 ) -- 겨울 캠프 이벤트 : '4주간의 겨울 캠프 2월3일자 응모권' 
g_pKRewardTable:AddRewardData(113, 130207, 1,  0 ) -- 겨울 캠프 이벤트 : '4주간의 겨울 캠프 2월4일자 응모권' 
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(114, 130258, 1,  0 ) -- 설날 이벤트 : 새해맞이 떡국 1개
g_pKRewardTable:AddRewardData(114, 129885, 1,  0 ) -- 설날 이벤트 : 출입랜덤큐브 1개
g_pKRewardTable:AddRewardData(115, 130267, 1,  0 ) -- 설날 이벤트 : 새해의 마음가짐 칭호 획득 아이템
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(116, 130463, 1,  0 ) -- 화이트데이 이벤트 :  화이트 데이 선물
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(117, 130484, 1,  0 ) -- 테스트서버 오픈기념 : 선구자를 위한 선물
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(118, 130520, 1,  0 ) -- 만우절 이벤트 : 만우절 큐브
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(119, 130526, 2,  0 ) -- 식목일 이벤트 : 아리엘의 꽃삽
g_pKRewardTable:AddRewardData(120, 130526, 2,  0 ) -- 식목일 이벤트 : 아리엘의 꽃삽
g_pKRewardTable:AddRewardData(120, 130530, 1,  0 ) -- 식목일 이벤트 : 경험치 100% 메달 큐브
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(121, 130539, 1,  0 ) -- 블랙데이 이벤트 : 블랙데이 선물 세트
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(122, 109965, 1,  0 ) -- 방어도 개편 이벤트 : 축복받은 방어구 강화석
g_pKRewardTable:AddRewardData(123, 130543, 1,  0 ) -- 방어도 개편 이벤트 : 방어구 전용 강화 부적 +5
g_pKRewardTable:AddRewardData(123, 130544, 1,  0 ) -- 방어도 개편 이벤트 : 방어구 전용 강화 부적 +6
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(124, 130598, 3,  0 ) -- 어린이날 이벤트 : 윌리엄의 초대장
g_pKRewardTable:AddRewardData(125, 130603, 1,  0 ) -- 어린이날 이벤트 월요일 : 분노의 반지 큐브
g_pKRewardTable:AddRewardData(126, 130047, 5,  0 ) -- 어린이날 이벤트 화요일 : 엘의 조각 5개
g_pKRewardTable:AddRewardData(127, 130604, 1,  0 ) -- 어린이날 이벤트 수요일 : 식목일 무기큐브
g_pKRewardTable:AddRewardData(128, 109955, 5,  0 ) -- 어린이날 이벤트 목요일 : 고급마법석 5개
g_pKRewardTable:AddRewardData(129, 109950, 5,  0 ) -- 어린이날 이벤트 금요일 : 축무강 5개, 축방강 5개
g_pKRewardTable:AddRewardData(129, 109965, 5,  0 ) -- 어린이날 이벤트 금요일 : 축무강 5개, 축방강 5개
g_pKRewardTable:AddRewardData(130, 130605, 1,  0 ) -- 어린이날 이벤트 토요일 : 프로모션 무기큐브
g_pKRewardTable:AddRewardData(131, 130606, 1,  0 ) -- 어린이날 이벤트 일요일 : 마법의 목걸이 큐브
g_pKRewardTable:AddRewardData(132, 130602, 1,  0 ) -- 어린이날 이벤트 : 엘수색대 장교 제복 헤어 큐브
g_pKRewardTable:AddRewardData(133, 130607, 1,  0 ) -- 500일 이벤트 : 넥슨캐시 1만원 응모권 (5월 5일)
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(134, 130601, 1,  0 ) -- 500일 이벤트 : 아크엔젤 아바타 풀세트 큐브
g_pKRewardTable:AddRewardData(135, 130608, 1,  0 ) -- 500일 이벤트 : 넥슨캐시 1만원 응모권 (5월 9일)
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(136, 110831, 1,  0 ) -- 스킬개편 전야 이벤트 : 코보 특제 무기 큐브
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(137, 130638, 1,  0 ) -- 현충일 이벤트 : 한민족의 기상
g_pKRewardTable:AddRewardData(138, 130643, 1,  0 ) -- Act2 페스티벌 : '마법의 목걸이' 큐브
g_pKRewardTable:AddRewardData(139, 130644, 1,  0 ) -- Act2 페스티벌 : '분노의 반지' 큐브
g_pKRewardTable:AddRewardData(140, 129885, 1,  0 ) -- 주말 접속 이벤트 : 출입 랜덤 큐브
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(141, 130714, 10, 0 ) -- 대전 활성화 이벤트 : 카밀라의 열쇠
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(142, 130769, 1,  0 ) -- ACT2외전 이벤트 : 매우가벼운 프로모션 무기 큐브
g_pKRewardTable:AddRewardData(143, 130770, 1,  0 ) -- ACT2외전 이벤트 : 재빠른 프로모션 무기 큐브
g_pKRewardTable:AddRewardData(144, 130771, 1,  0 ) -- ACT2외전 이벤트 : 강력한 프로모션 무기 큐브
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(145, 130820, 1,  0 ) -- ACT2외전 이벤트 : [월] 부활석 10개 큐브 
g_pKRewardTable:AddRewardData(146, 130821, 1,  0 ) -- ACT2외전 이벤트 : [화] 마법석 랜덤 큐브
g_pKRewardTable:AddRewardData(147, 130822, 1,  0 ) -- ACT2외전 이벤트 : [수] 플루오르 스톤 큐브
g_pKRewardTable:AddRewardData(148, 130823, 1,  0 ) -- ACT2외전 이벤트 : [목] 강화 큐브
g_pKRewardTable:AddRewardData(149, 130824, 1,  0 ) -- ACT2외전 이벤트 : [금] 액세서리 큐브
g_pKRewardTable:AddRewardData(150, 130825, 1,  0 ) -- ACT2외전 이벤트 : [토] 경험치 보너스 메달 큐브
g_pKRewardTable:AddRewardData(151, 130826, 1,  0 ) -- ACT2외전 이벤트 : [일] 랜덤 칭호 아이템 큐브
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(152, 110833, 3,  0 ) -- ACT2외전 이벤트 : 헤니르의 열쇠 3개
g_pKRewardTable:AddRewardData(153, 110834, 1,  0 ) -- ACT2외전 이벤트 : 헤니르의 비밀 열쇠 1개
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(154, 130937, 1,  0 ) -- ACT2 외전 마지막 선물 큐브
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(155, 130963, 1,  0 ) -- 신학기 이벤트 : 신학기 특급 선물 큐브 1개
g_pKRewardTable:AddRewardData(156, 130964, 1,  0 ) -- 신학기 이벤트 : 신학기 스페셜 선물 큐브 1개
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(157, 130997, 1,  0 ) -- 패션쇼 이벤트 : 패션쇼 큐브 1개
g_pKRewardTable:AddRewardData(158, 130991, 1,  0 ) -- 프로모션 이벤트 : 매우 가벼운 프로모션 무기 큐브 1개
g_pKRewardTable:AddRewardData(159, 130992, 1,  0 ) -- 프로모션 이벤트 : 재빠른 프로모션 무기 큐브 1개
g_pKRewardTable:AddRewardData(160, 130993, 1,  0 ) -- 프로모션 이벤트 : 강력한 프로모션 무기 큐브 1개
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(161, 131124, 1,  0 ) -- 한가위 이벤트 : 한가위 종합 선물 세트 (월)
g_pKRewardTable:AddRewardData(162, 131125, 1,  0 ) -- 한가위 이벤트 : 한가위 종합 선물 세트 (화)
g_pKRewardTable:AddRewardData(163, 131126, 1,  0 ) -- 한가위 이벤트 : 한가위 종합 선물 세트 (수)
g_pKRewardTable:AddRewardData(164, 131127, 1,  0 ) -- 한가위 이벤트 : 한가위 종합 선물 세트 (목)
g_pKRewardTable:AddRewardData(165, 131128, 1,  0 ) -- 한가위 이벤트 : 한가위 종합 선물 세트 (금)
g_pKRewardTable:AddRewardData(166, 131129, 1,  0 ) -- 한가위 이벤트 : 한가위 종합 선물 세트 (토)
g_pKRewardTable:AddRewardData(167, 131130, 1,  0 ) -- 한가위 이벤트 : 한가위 종합 선물 세트 (일)
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(168, 131204, 1,  0 ) -- ACT3 이벤트 : ACT3 기념 행복한 토요일 큐브 (10월 31일)
g_pKRewardTable:AddRewardData(169, 131205, 1,  0 ) -- ACT3 이벤트 : ACT3 기념 행복한 토요일 큐브 (11월 7일)
g_pKRewardTable:AddRewardData(170, 131206, 1,  0 ) -- ACT3 이벤트 : ACT3 기념 행복한 토요일 큐브 (11월 14일)
g_pKRewardTable:AddRewardData(171, 131207, 1,  0 ) -- ACT3 이벤트 : ACT3 기념 행복한 토요일 큐브 (11월 21일)
g_pKRewardTable:AddRewardData(172, 131208, 1,  0 ) -- ACT3 이벤트 : ACT3 출석권
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(173, 131259, 1,  0 ) -- PC방 이벤트 : PC방 출석권
g_pKRewardTable:AddRewardData(174, 131260, 1,  1 ) -- PC방 이벤트 : PC방 스페셜 카드
g_pKRewardTable:AddRewardData(175, 131265, 1,  0 ) -- PC방 이벤트 : 그레이트 비틀 무기 큐브
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(176, 131201, 1,  0 ) -- ACT3 이벤트 : 강화 이벤트 주문서 A
g_pKRewardTable:AddRewardData(177, 131202, 1,  0 ) -- ACT3 이벤트 : 강화 이벤트 주문서 B
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(178, 131266, 1,  0 ) -- ACT3 이벤트 : 11번째 길드원
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(179, 207500, 1,  0 ) -- 계정단위 접속시간 이벤트 : 얼음 조각상 가열기
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(180, 131286, 1,  0 ) -- 겨울방학전야이벤트 : 히어로 큐브 A
g_pKRewardTable:AddRewardData(181, 131287, 1,  0 ) -- 겨울방학전야이벤트 : 히어로 큐브 B
g_pKRewardTable:AddRewardData(182, 131288, 1,  0 ) -- 겨울방학전야이벤트 : 히어로 큐브 C
g_pKRewardTable:AddRewardData(183, 131282, 1,  0 ) -- 겨울방학전야이벤트 : 엘리오스 대륙의 전설 패키지
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(184, 131374, 1,  0 ) -- 강화데이이벤트 : 강화의 부적 랜덤 큐브 (Lv.5~Lv.8)
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(185, 131375, 1,  0 ) -- 크리스마스이벤트 : 크리스마스 특별 아바타 무기(7일권)큐브
g_pKRewardTable:AddRewardData(186, 131376, 1,  0 ) -- 크리스마스이벤트 : 2008 크리스마스 아바타 풀 세트(1일권)큐브
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(187, 131377, 1,  0 ) -- 2주년 이벤트 : 얼음 조각상 가열기 (아리엘의 선물)
g_pKRewardTable:AddRewardData(188, 131378, 1,  0 ) -- 2주년 이벤트 : 엘소드 2주년 칭호 아이템
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(189, 131401, 1,  0 ) -- 신서버 이벤트 : 코보 여행자 보급 물품(10레벨)
g_pKRewardTable:AddRewardData(190, 131402, 1,  0 ) -- 신서버 이벤트 : 코보 여행자 보급 물품(20레벨)
g_pKRewardTable:AddRewardData(190, 110845, 1,  0 ) -- 신서버 이벤트 : 길드 창단 허가서
g_pKRewardTable:AddRewardData(191, 131403, 1,  0 ) -- 신서버 이벤트 : 코보 여행자 보급 물품(30레벨)
g_pKRewardTable:AddRewardData(192, 131404, 1,  0 ) -- 신서버 이벤트 : 코보 여행자 보급 물품(40레벨)
g_pKRewardTable:AddRewardData(193, 131405, 1,  0 ) -- 신서버 이벤트 : 코보 여행자 보급 물품(50레벨)
g_pKRewardTable:AddRewardData(194, 131415, 1,  0 ) -- 신서버 이벤트 : 헤니르의 열쇠 큐브
g_pKRewardTable:AddRewardData(195, 110859, 1,  0 ) -- 신서버 이벤트 : 그노시스의 대축북(15일:5GSP)
g_pKRewardTable:AddRewardData(195, 110857, 5,  0 ) -- 신서버 이벤트 : 망각의 피리(5개)
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(196, 130165, 10, 0 ) -- PC방 이벤트 : 완전 회복 포션 10개
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(197, 131412, 1,  0 ) -- 새해 맞이 이벤트 : (월) 플루오르 스톤 교환권
g_pKRewardTable:AddRewardData(197, 131423, 1,  0 ) -- 새해 맞이 이벤트 : (월) 새해 복주머니
g_pKRewardTable:AddRewardData(198, 131424, 1,  0 ) -- 새해 맞이 이벤트 : (화) 반지 악세사리 1일권 큐브
g_pKRewardTable:AddRewardData(198, 131423, 1,  0 ) -- 새해 맞이 이벤트 : (화) 새해 복주머니
g_pKRewardTable:AddRewardData(199, 131425, 1,  0 ) -- 새해 맞이 이벤트 : (수) 프로모션 아바타 1일권 큐브
g_pKRewardTable:AddRewardData(199, 131423, 1,  0 ) -- 새해 맞이 이벤트 : (수) 새해 복주머니
g_pKRewardTable:AddRewardData(200, 131414, 1,  0 ) -- 새해 맞이 이벤트 : (목) 아이템 업그레이드 재료 교환권
g_pKRewardTable:AddRewardData(200, 131423, 1,  0 ) -- 새해 맞이 이벤트 : (목) 새해 복주머니
g_pKRewardTable:AddRewardData(201, 131426, 1,  0 ) -- 새해 맞이 이벤트 : (금) 새해의 마음가짐(5일권)
g_pKRewardTable:AddRewardData(201, 131423, 1,  0 ) -- 새해 맞이 이벤트 : (금) 새해 복주머니
g_pKRewardTable:AddRewardData(202, 131427, 1,  0 ) -- 새해 맞이 이벤트 : (토) 경험치 메달 1일권 큐브
g_pKRewardTable:AddRewardData(202, 131423, 1,  0 ) -- 새해 맞이 이벤트 : (토) 새해 복주머니
g_pKRewardTable:AddRewardData(203, 131428, 1,  0 ) -- 새해 맞이 이벤트 : (일) 악세사리 1일권 큐브
g_pKRewardTable:AddRewardData(203, 131423, 1,  0 ) -- 새해 맞이 이벤트 : (일) 새해 복주머니
g_pKRewardTable:AddRewardData(204, 131422, 1,  0 ) -- 새해 맞이 이벤트 : 새해 맞이 한복 아바타 (1일권) 큐브
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(205, 131462, 5,  0 ) -- 겨울방학 이벤트 : 겨울방학 출석 스탬프 5개
g_pKRewardTable:AddRewardData(206, 131462, 10, 0 ) -- 겨울방학 이벤트 : 겨울방학 출석 스탬프 10개
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(207, 131588, 1,  0 ) -- PC방 이벤트 : PC방 출석권(제조재료)
g_pKRewardTable:AddRewardData(208, 110834, 1,  0 ) -- PC방 이벤트 : 헤니르 비밀열쇠 1개
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(209, 131653, 1,  0 ) -- PC방 이벤트 : PC방 선물 박스 1개
g_pKRewardTable:AddRewardData(209, 131654, 1,  0 ) -- PC방 이벤트 : PC방 특별 출석권 1개
g_pKRewardTable:AddRewardData(210, 131663, 1,  0 ) -- PC방 이벤트 : PC방 스페셜 큐브 1개
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(211, 131807, 1,  0 ) -- PC방 이벤트 : PC방 3월의 선물 큐브A 1개
g_pKRewardTable:AddRewardData(212, 131808, 1,  0 ) -- PC방 이벤트 : PC방 3월의 선물 큐브B 1개
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(10000, 131826, 1,  0 ) -- 화이트 데이 이벤트 : 화이트 데이 기념 큐브A
g_pKRewardTable:AddRewardData(10001, 131827, 1,  0 ) -- 화이트 데이 이벤트 : 화이트 데이 기념 큐브B
g_pKRewardTable:AddRewardData(10002, 131819, 1,  0 ) -- 화이트 데이 이벤트 : 화이트 데이 기념 큐브C
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(10003, 131833, 1,  0 ) -- 던전 채널 통합 이벤트 : 던전 채널 통합 기념 큐브
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(10004, 131807, 1,  0 ) -- 4월 PC방 이벤트 : 4월의 선물 큐브A
g_pKRewardTable:AddRewardData(10005, 131808, 1,  0 ) -- 4월 PC방 이벤트 : 4월의 선물 큐브B
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(10006, 131850, 1,  0 ) -- 만우절 깜짝 이벤트 : 만우절 특별 큐브
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(10007, 131856, 5,  0 ) -- 식목일 이벤트 : 평일 자연의 선물 5개
g_pKRewardTable:AddRewardData(10008, 131856, 7,  0 ) -- 식목일 이벤트 : 주말 자연의 선물 7개
g_pKRewardTable:AddRewardData(10009, 131856, 2,  0 ) -- PC방 식목일 이벤트 : 자연의 선물 2개
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(10010, 132052, 1,  0 ) -- 열공모드 이벤트 : 고양이 가방 큐브(7일권) 1개
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(10011, 130825, 1,  0 ) -- Special Week 이벤트 : 5/1 경험치 메달 1일권
g_pKRewardTable:AddRewardData(10011, 130808, 3,  0 ) -- Special Week 이벤트 : 5/1 망각의 알약 3개
g_pKRewardTable:AddRewardData(10012, 131755, 1,  0 ) -- Special Week 이벤트 : 5/2 강화의 부적 랜덤 큐브
g_pKRewardTable:AddRewardData(10012, 130808, 3,  0 ) -- Special Week 이벤트 : 5/2 망각의 알약 3개
g_pKRewardTable:AddRewardData(10013, 131412, 1,  0 ) -- Special Week 이벤트 : 5/3 플루오르 스톤 교환권
g_pKRewardTable:AddRewardData(10014, 130047, 5,  0 ) -- Special Week 이벤트 : 5/4 엘의 조각(불명) 5개
g_pKRewardTable:AddRewardData(10015, 131762, 1,  0 ) -- Special Week 이벤트 : 5/6 부활석 10개 큐브
g_pKRewardTable:AddRewardData(10016, 132206, 1,  0 ) -- Special Week 이벤트 : 5/7 프로모션 아바타 큐브(3일권)
g_pKRewardTable:AddRewardData(10017, 132055, 1,  0 ) -- 어린이날 이벤트 : 어린이날 선물 세트 큐브
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(10018, 132188, 1,  0 ) -- 5월 PC방 이벤트 : PC방 특별 접속 이벤트
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(10019, 132189, 1,  0 ) -- 천안함 추모 이벤트 : 흰국화 큐브
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(10020, 132212, 1,  0 ) -- 헬모드 도전자 이벤트 : 헬던전 출입권 랜덤 큐브 1개
g_pKRewardTable:AddRewardData(10021, 132213, 1,  0 ) -- 헬모드 도전자 이벤트 : 헬던전 출입권 큐브 1개
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(10022, 132187, 1,  0 ) -- 스승의 날 이벤트 : 스승의 날 선물 큐브 1개
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(10023, 132468, 1,  0 ) -- 서버군 통합 이벤트 : 특별 출입증 교환권 1개
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(10024, 132469, 5,  0 ) -- 6월 PC방 이벤트 : 활력의 포션 5개
g_pKRewardTable:AddRewardData(10025, 132469, 10, 0 ) -- 6월 PC방 이벤트 : 활력의 포션 10개
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(10026, 132483, 1,  0 ) -- 900일 이벤트 : 몬스터 탈(7일권) 랜덤 큐브
g_pKRewardTable:AddRewardData(10027, 132484, 1,  0 ) -- 900일 이벤트 : 골드 프로모션 무기 아바타(7일권) 큐브
g_pKRewardTable:AddRewardData(10028, 132485, 1,  0 ) -- 900일 이벤트 : 무기 액세서리(15일권) 큐브
g_pKRewardTable:AddRewardData(10029, 132486, 1,  0 ) -- 900일 이벤트 : 특수 액세서리(15일권) 큐브
g_pKRewardTable:AddRewardData(10030, 132487, 1,  0 ) -- 900일 이벤트 : 기술의 반지(7일권) 큐브
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(10031, 132477, 1,  0 ) -- 900일의 혜택 이벤트 : 특수 액세서리(3일권) 큐브
g_pKRewardTable:AddRewardData(10032, 130047, 3,  0 ) -- 900일의 혜택 이벤트 : 엘의 조각(불명) 3개
g_pKRewardTable:AddRewardData(10033, 130825, 1,  0 ) -- 900일의 혜택 이벤트 : 경험치 메달 1일권 큐브
g_pKRewardTable:AddRewardData(10034, 132478, 1,  0 ) -- 900일의 혜택 이벤트 : 기술의 반지(3일권) 큐브
g_pKRewardTable:AddRewardData(10035, 132481, 1,	 0 ) -- 900일의 혜택 이벤트 : 플루오르 스톤 랜덤 큐브
g_pKRewardTable:AddRewardData(10036, 132337, 1,	 0 ) -- 900일의 혜택 이벤트 : 마법석 랜덤 큐브
g_pKRewardTable:AddRewardData(10037, 132469, 3,	 0 ) -- 900일의 혜택 이벤트 : 활력의 포션 3개
g_pKRewardTable:AddRewardData(10038, 132479, 1,	 0 ) -- 900일의 혜택 이벤트 : 액세서리 큐브(얼굴(중), 3일권) 큐브
g_pKRewardTable:AddRewardData(10039, 132482, 1,	 0 ) -- 900일의 혜택 이벤트 : 축복받은 복원의 주문서 랜덤 큐브
g_pKRewardTable:AddRewardData(10040, 130165, 3,	 0 ) -- 900일의 혜택 이벤트 : 완전 회복 포션 3개
g_pKRewardTable:AddRewardData(10041, 132480, 1,	 0 ) -- 900일의 혜택 이벤트 : 액세서리 큐브(팔, 3일권) 큐브
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(10042, 132476, 1,  0 ) -- 월드컵 1승 이벤트 : 1승 기념 특별 아이템 큐브
g_pKRewardTable:AddRewardData(10043, 132535, 1,  0 ) -- 월드컵 16강 이벤트 : 16강 기념 특별 아이템 큐브
g_pKRewardTable:AddRewardData(10044, 132534, 1,  0 ) -- 월드컵 8강 이벤트 : 8강 기념 특별 아이템 큐브
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(10045, 132527, 1,  0 ) -- 7월 PC방 이벤트 : 응축된 마나 결정 1개
g_pKRewardTable:AddRewardData(10046, 132527, 2,  0 ) -- 7월 PC방 이벤트 : 응축된 마나 결정 2개
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(10047, 132646, 1,  0 ) -- 여름방학 PC방 이벤트 : PC방 7월의 선물 큐브
g_pKRewardTable:AddRewardData(10048, 132651, 1,  0 ) -- 여름방학 PC방 이벤트 : ACT4 기념 루벤 티켓
g_pKRewardTable:AddRewardData(10048, 132652, 1,  0 ) -- 여름방학 PC방 이벤트 : ACT4 기념 벨더 티켓
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(10049, 132653, 1,  0 ) -- 가이아 서버 이벤트 : 가이아의 축복 큐브
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(10050, 131377, 1,  0 ) -- 가열기 이벤트 : 얼음 조각상 가열기 (아리엘의 선물)
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(10051, 132699, 1,  0 ) -- 주말 이벤트 : 특별 교환권
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(10052, 130808, 1,  0 ) -- 8월 PC방 이벤트 평일 : 망각의 알약 1개
g_pKRewardTable:AddRewardData(10053, 132651, 1,  0 ) -- 8월 PC방 이벤트 토요일 : ACT4 기념 루벤 티켓 1개
g_pKRewardTable:AddRewardData(10054, 132652, 1,  0 ) -- 8월 PC방 이벤트 일요일 : ACT4 기념 벨더 티켓 1개
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(10055, 132747, 1,  0 ) -- 방학숙제 이벤트 : 방학 숙제 재료 1개
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(10056, 132751, 1,  0 ) -- 1000일 이벤트 : 1000일을 위한 준비물
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(10057, 132773, 1,  0 ) -- 한가위 특별 선물 이벤트 : 아바타 세트(1일권) 큐브 - 동물 코스프레
g_pKRewardTable:AddRewardData(10058, 132774, 1,  0 ) -- 한가위 특별 선물 이벤트 : 아바타 세트(1일권) 큐브 - 스타 아카데미 하복
g_pKRewardTable:AddRewardData(10059, 132775, 1,  0 ) -- 한가위 특별 선물 이벤트 : 아바타 세트(1일권) 큐브 - 2009 썸머룩
g_pKRewardTable:AddRewardData(10060, 132776, 1,  0 ) -- 한가위 특별 선물 이벤트 : 아바타 세트(1일권) 큐브 - 판타지 아카데미
g_pKRewardTable:AddRewardData(10061, 132777, 1,  0 ) -- 한가위 특별 선물 이벤트 : 아바타 세트(1일권) 큐브 - 겨울 한복
g_pKRewardTable:AddRewardData(10062, 132786, 1,  0 ) -- 한가위 특별 선물 이벤트 : 1000일 기념 액세서리 세트(1일권) 큐브
g_pKRewardTable:AddRewardData(10063, 132778, 1,  0 ) -- 한가위 특별 선물 이벤트 : 아바타 세트(1일권) 큐브 - 2009 한가위
g_pKRewardTable:AddRewardData(10064, 132779, 1,  0 ) -- 한가위 특별 선물 이벤트 : 아바타 세트(1일권) 큐브 - 마린룩
g_pKRewardTable:AddRewardData(10065, 132780, 1,  0 ) -- 한가위 특별 선물 이벤트 : 아바타 세트(1일권) 큐브 - 밀리터리 룩
g_pKRewardTable:AddRewardData(10066, 132781, 1,  0 ) -- 한가위 특별 선물 이벤트 : 아바타 세트(1일권) 큐브 - 5월의 웨딩
g_pKRewardTable:AddRewardData(10067, 132782, 1,  0 ) -- 한가위 특별 선물 이벤트 : 아바타 세트(1일권) 큐브 - 스타 아카데미
g_pKRewardTable:AddRewardData(10068, 132783, 1,  0 ) -- 한가위 특별 선물 이벤트 : 아바타 세트(1일권) 큐브 - 2010 서머 비치룩
g_pKRewardTable:AddRewardData(10069, 132784, 1,  0 ) -- 한가위 특별 선물 이벤트 : 아바타 세트(1일권) 큐브 - 아이돌 밴드
g_pKRewardTable:AddRewardData(10070, 132785, 1,  0 ) -- 한가위 특별 선물 이벤트 : 아바타 세트(1일권) 큐브 - 대륙의 모험가
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(10071, 132833, 1,  0 ) -- 시험대박 이벤트 : 시험 대박 7종 신기 큐브(1일차)
g_pKRewardTable:AddRewardData(10072, 132834, 1,  0 ) -- 시험대박 이벤트 : 시험 대박 7종 신기 큐브(2일차)
g_pKRewardTable:AddRewardData(10073, 132835, 1,  0 ) -- 시험대박 이벤트 : 시험 대박 7종 신기 큐브(3일차)
g_pKRewardTable:AddRewardData(10074, 132836, 1,  0 ) -- 시험대박 이벤트 : 시험 대박 7종 신기 큐브(4일차)
g_pKRewardTable:AddRewardData(10075, 132837, 1,  0 ) -- 시험대박 이벤트 : 시험 대박 7종 신기 큐브(5일차)
g_pKRewardTable:AddRewardData(10076, 132838, 1,  0 ) -- 시험대박 이벤트 : 시험 대박 7종 신기 큐브(6일차)
g_pKRewardTable:AddRewardData(10077, 132839, 1,  0 ) -- 시험대박 이벤트 : 시험 대박 7종 신기 큐브(7일차)
g_pKRewardTable:AddRewardData(10078, 130825, 1,  0 ) -- 시험대박 이벤트 : 경험치 15% 메달(1일권)큐브
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(10079, 132880, 3,  0 ) -- 할로윈 이벤트 : 할로윈 고스트 캔디 (평일 3개)
g_pKRewardTable:AddRewardData(10080, 132880, 6,  0 ) -- 할로윈 이벤트 : 할로윈 고스트 캔디 (주말 6개)

-----------------------------------------------------------------------



g_pKRewardTable:AddRewardData(20000, 65000002, 1,  0 ) --기본 프로모션 아바타 7일권 큐브
g_pKRewardTable:AddRewardData(20001, 109950, 10,  0 ) -- 축복받은 무기 강화석
g_pKRewardTable:AddRewardData(20002, 109965 , 10,  0 ) -- 축복받은 방어구 강화석
g_pKRewardTable:AddRewardData(20003, 65000024 , 1,  0 ) -- 부활석(5개) 큐브
g_pKRewardTable:AddRewardData(20004, 65000127 , 1,  0 ) -- 마법석 (5개)큐브
g_pKRewardTable:AddRewardData(20005, 60001408 , 1,  0 ) -- 고급 마법석 5개 큐브
g_pKRewardTable:AddRewardData(20006, 130047 , 10,  0 ) -- 엘의 조각(불명)

-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(20007, 85000001, 1,  0 ) -- OBT기념큐브1
g_pKRewardTable:AddRewardData(20008, 85000002, 1,  0 ) -- OBT기념큐브2
g_pKRewardTable:AddRewardData(20009, 85000003, 1,  0 ) -- OBT기념큐브3
g_pKRewardTable:AddRewardData(20010, 85000004, 1,  0 ) -- OBT기념큐브4
g_pKRewardTable:AddRewardData(20011, 85000005, 1,  0 ) -- OBT기념큐브5
g_pKRewardTable:AddRewardData(20012, 85000006, 1,  0 ) -- OBT기념큐브6
g_pKRewardTable:AddRewardData(20013, 85000007, 1,  0 ) -- OBT기념큐브7

g_pKRewardTable:AddRewardData(20014, 130165, 5,  0 ) -- 완전 회복 포션
g_pKRewardTable:AddRewardData(20015, 130047, 10,  0 ) -- 엘의 조각(불명)


g_pKRewardTable:AddRewardData(20016, 85000013, 1,  0 ) -- 크리스마스 양말
g_pKRewardTable:AddRewardData(20017, 65000380, 1,  0 ) -- 축하케익박스

---------------------------------------------------------------------
-- 유럽 길드 이벤트 
g_pKRewardTable:AddRewardData(20018, 110846, 1,  0 ) -- 길드 인원 확장권
g_pKRewardTable:AddRewardData(20019, 110857, 1,  0 ) -- 망각의 피리
g_pKRewardTable:AddRewardData(20020, 110859, 1,  0 ) -- 그노시스의 대 축복 (15 일 : 5 GSP) 
g_pKRewardTable:AddRewardData(20021, 212350, 2,  0 ) -- 나소드 메가폰 (2개)

-- 유럽 윌리엄 접속 이벤트용
g_pKRewardTable:AddRewardData(20022, 130598, 3,  0 ) -- 윌리엄 초대장 3장 
g_pKRewardTable:AddRewardData(20023, 130598, 5,  0 ) -- 윌리엄 초대장 5장

-- 유럽 신 스킬 업데이트 접속 이벤트 (주말용)
g_pKRewardTable:AddRewardData(20024, 85000233, 1,  0 ) -- 기술의 반지 시리즈 큐브(1일) / 19일
g_pKRewardTable:AddRewardData(20025, 85000236, 1,  0 ) -- 기술의 반지 시리즈 큐브(1일) / 20일
g_pKRewardTable:AddRewardData(20026, 85000237, 1,  0 ) -- 기술의 반지 시리즈 큐브(1일) / 26일
g_pKRewardTable:AddRewardData(20027, 85000238, 1,  0 ) -- 기술의 반지 시리즈 큐브(1일) / 27일

-- 유럽 신 스킬 업데이트 접속 이벤트 (일일)
g_pKRewardTable:AddRewardData(20028, 85000232, 1,  0 ) -- 기술의 티켓 1장


-- 유럽 만우절 접속 이벤트
g_pKRewardTable:AddRewardData(20029, 65000493 , 1,  0 ) -- 만우절 아바타 큐브

-- 윌리엄 시공 2 이벤트용 아이템 주기
g_pKRewardTable:AddRewardData(20030, 85000239 , 50,  0 ) -- 오염된 행운의 편지

-- 부활절 이벤트
g_pKRewardTable:AddRewardData(20031, 85000251 , 1,  0 ) -- 부활절 토끼 칭호
g_pKRewardTable:AddRewardData(20032, 85000235 , 1,  0 ) -- 토끼귀 큐브 접속이벤트용 
g_pKRewardTable:AddRewardData(20033, 85000264 , 1,  0 ) -- 부활절 토끼 무기 큐브
g_pKRewardTable:AddRewardData(20034, 85000263 , 1,  0 ) -- 신규 유저용 큐브 

-- 엘소드 2차 전직 이벤트 
g_pKRewardTable:AddRewardData(20035, 85000387 , 1,  0 ) -- 전직의 기운 

-- 2011.06.28 사진 복원기 접속 이벤트
g_pKRewardTable:AddRewardData(20036, 85000451 , 1,  0 ) -- 사진 복원기

-- 2011.06.29 새로운 모험가 칭호 아이템 지급 이벤트
g_pKRewardTable:AddRewardData(20037, 85000481 , 1,  0 ) -- 새로운 모험가 칭호 아이템

-- 2011.07.27 기술의 노트 홍보 큐브 지급 이벤트
g_pKRewardTable:AddRewardData(20038, 85000487 , 1,  0 ) -- 기술의 노트 홍보 큐브

-- 2011.08.09 Bo-Co 사의 지원 큐브 지급 이벤트
g_pKRewardTable:AddRewardData(20039, 85000521 , 1,  0 ) -- Bo-Co 사의 지원 큐브

-- 2011.08.09 아리엘의 초보 지원 큐브 지급 이벤트
g_pKRewardTable:AddRewardData(20040, 85000513 , 1,  0 ) -- 아리엘의 초보 지원 큐브

-- 2011.08.10 Co-Bo사의 지원큐브 퀘스트 완료 우편 보상
g_pKRewardTable:AddRewardData(20041, 85000514 , 1,  0 ) -- Co-Bo사의 지원큐브 1

-- 2011.08.10 Co-Bo사의 지원큐브 퀘스트 완료 우편 보상
g_pKRewardTable:AddRewardData(20042, 85000515 , 1,  0 ) -- Co-Bo사의 지원큐브 2
g_pKRewardTable:AddRewardData(20043, 85000534 , 1,  0 ) -- Co-Bo사의 지원큐브 2
g_pKRewardTable:AddRewardData(20044, 85000535 , 1,  0 ) -- Co-Bo사의 지원큐브 2
g_pKRewardTable:AddRewardData(20045, 85000536 , 1,  0 ) -- Co-Bo사의 지원큐브 2

-- 2011.08.10 Co-Bo사의 지원큐브 퀘스트 완료 우편 보상
g_pKRewardTable:AddRewardData(20046, 85000516 , 1,  0 ) -- Co-Bo사의 지원큐브 3
g_pKRewardTable:AddRewardData(20047, 85000537 , 1,  0 ) -- Co-Bo사의 지원큐브 3
g_pKRewardTable:AddRewardData(20048, 85000538 , 1,  0 ) -- Co-Bo사의 지원큐브 3
g_pKRewardTable:AddRewardData(20049, 85000539 , 1,  0 ) -- Co-Bo사의 지원큐브 3

-- 2011.08.10 Co-Bo사의 지원큐브 퀘스트 완료 우편 보상
g_pKRewardTable:AddRewardData(20050, 85000517 , 1,  0 ) -- Co-Bo사의 지원큐브 4
g_pKRewardTable:AddRewardData(20051, 85000540 , 1,  0 ) -- Co-Bo사의 지원큐브 4
g_pKRewardTable:AddRewardData(20052, 85000541 , 1,  0 ) -- Co-Bo사의 지원큐브 4
g_pKRewardTable:AddRewardData(20053, 85000542 , 1,  0 ) -- Co-Bo사의 지원큐브 4

-- 2011.08.10 Co-Bo사의 지원큐브 퀘스트 완료 우편 보상
g_pKRewardTable:AddRewardData(20054, 85000518 , 1,  0 ) -- Co-Bo사의 지원큐브 5
g_pKRewardTable:AddRewardData(20055, 85000543 , 1,  0 ) -- Co-Bo사의 지원큐브 5
g_pKRewardTable:AddRewardData(20056, 85000544 , 1,  0 ) -- Co-Bo사의 지원큐브 5
g_pKRewardTable:AddRewardData(20057, 85000545 , 1,  0 ) -- Co-Bo사의 지원큐브 5

-- 2011.08.25 접속시 비밀던전 입장권 5장 지급
g_pKRewardTable:AddRewardData(20058, 85000546 , 5,  0 ) -- 아리엘의 비밀던전 입장권

-- 2011.09.08 60분간 접속 유지시 아이템 보상
g_pKRewardTable:AddRewardData(20059, 85400000 , 1,  0 ) -- 프랑스 OBT 기념 큐브

-- 2011.09.21 펫 전야 이벤트
g_pKRewardTable:AddRewardData(20060, 85000645 , 1,  0 ) -- 쁘띠 뽀루의 목걸이 큐브

-- 2011.10.12 여명의 군주 재료 보상 우편
g_pKRewardTable:AddRewardData(20061, 91610, 100,  0 ) -- 차가운 크리스탈
g_pKRewardTable:AddRewardData(20061, 91630, 100,  0 ) -- 연금술의 비약

-- 2011.10.13 할로윈 이벤트 아이템 지급
g_pKRewardTable:AddRewardData(20062, 132880, 5,  0 ) -- 할로윈 고스트 캔디 5개 지급
g_pKRewardTable:AddRewardData(20063, 132880, 10,  0 ) -- 할로윈 고스트 캔디 10개 지급
g_pKRewardTable:AddRewardData(20064, 215660, 1, 1 ) -- 코보 익스프레스 VIP 티켓 1일권

-- 2011.10.26 나소드의 여왕 칭호 아이템 지급
g_pKRewardTable:AddRewardData(20065, 85000652, 1, 0 ) -- 나소드의 여왕 칭호 아이템 지급

-- 2011.11.16 이벤트 퀘스트 보상 우편 지급
g_pKRewardTable:AddRewardData(20066, 130165, 25, 0 ) -- 완전 회복 포션 25개 지급

-- 2011.11.30 이탈리아 OBT 기념 접속 이벤트
g_pKRewardTable:AddRewardData(20067, 85400014, 1, 0 ) -- 이탈리아 OBT 기념 큐브

-- 2011.12.22 크리스마스 이벤트 우편 지급
g_pKRewardTable:AddRewardData(20068, 85000860, 1, 0 ) -- 루돌프 빨간코 15일권 큐브

-- 2011.12.22 크리스마스 이벤트 우편 지급
g_pKRewardTable:AddRewardData(20069, 85000866, 1, 0 ) -- 크리스마스 특별 선물

-- 2012.01.04 헤니르 시공 입장권 우편 지급
g_pKRewardTable:AddRewardData(20070, 110833, 3, 0 ) -- 헤니르 시공 입장권 3매

-- 2012.01.04 주말 120분 접속시 아이템 우편 지급
g_pKRewardTable:AddRewardData(20071, 214370, 1, 0 ) -- 뽀루의 발도장(흰색) 1장

-- 2012.01.04 주말 120분 접속시 아이템 우편 지급
g_pKRewardTable:AddRewardData(20072, 130165, 10, 0 ) -- 완전 회복 포션 10개

-- 2012.01.04 주말 120분 접속시 아이템 우편 지급
g_pKRewardTable:AddRewardData(20073, 214380, 1, 0 ) -- 뽀루의 발도장(노란색) 1장

-- 2012.01.04 주말 120분 접속시 아이템 우편 지급
g_pKRewardTable:AddRewardData(20074, 130047, 5, 0 ) -- 엘의 조각(불명) 5개

-- 2012.01.04 주말 120분 접속시 아이템 우편 지급
g_pKRewardTable:AddRewardData(20075, 214390, 1, 0 ) -- 뽀루의 발도장(보라색) 1장

-- 2012.01.04 주말 120분 접속시 아이템 우편 지급
g_pKRewardTable:AddRewardData(20076, 109950, 20, 0 ) -- 축복받은 무기 강화석 20개

-- 2012.01.26 발렌타인데이 이벤트 엔젤 미니미(소년) 우편 지급
g_pKRewardTable:AddRewardData(20077, 85000910, 1, 15 )

-- 2012.01.26 발렌타인데이 이벤트 엔젤 미니미(소년) 우편 지급
g_pKRewardTable:AddRewardData(20078, 85000910, 1, 30 )

-- 2012.01.26 발렌타인데이 이벤트 엔젤 미니미(소년) 우편 지급
g_pKRewardTable:AddRewardData(20079, 85000910, 1, 0 )

-- 2012.01.26 발렌타인데이 이벤트 엔젤 미니미(소녀) 우편 지급
g_pKRewardTable:AddRewardData(20080, 85000911, 1, 15 )

-- 2012.01.26 발렌타인데이 이벤트 엔젤 미니미(소녀) 우편 지급
g_pKRewardTable:AddRewardData(20081, 85000911, 1, 30 )

-- 2012.01.26 발렌타인데이 이벤트 엔젤 미니미(소녀) 우편 지급
g_pKRewardTable:AddRewardData(20082, 85000911, 1, 0 )

-- 2012.02.21 디펜스 던전 접속 이벤트 비룡의 큐브 우편 지급
g_pKRewardTable:AddRewardData(20083, 65000585, 1, 0 )

-- 2012.03.14 던전 사용 아이템 이벤트 연금술사의 전투 지원 큐브 우편 지급
g_pKRewardTable:AddRewardData(20084, 85000912, 1, 0 )

-- 2012.03.14 엘소드 데이 접속 이벤트 우편 지급(3월 17일 토요일)
g_pKRewardTable:AddRewardData(20085, 132812, 1, 0 )

-- 2012.03.14 엘소드 데이 접속 이벤트 우편 지급(3월 18일 일요일)
g_pKRewardTable:AddRewardData(20086, 85000914, 1, 0 )

-- 2012.03.14 엘소드 데이 접속 이벤트 우편 지급(3월 24일 토요일)
g_pKRewardTable:AddRewardData(20087, 130165, 10, 0 )

-- 2012.03.14 엘소드 데이 접속 이벤트 우편 지급(3월 25일 일요일)
g_pKRewardTable:AddRewardData(20088, 135080, 1, 0 )

-- 2012.03.28 공존의 축제 접속 이벤트 우편 지급
g_pKRewardTable:AddRewardData(20089, 160025, 1, 0 ) -- 공존의 축제 의상 큐브

-- 2012.03.28 만우절 이벤트 우편 지급(4월 1일 일요일)
g_pKRewardTable:AddRewardData(20090, 200000007, 1, 1 ) -- 피노키오의 매력(1일권)

-- 2012.03.28 만우절 이벤트 우편 지급(4월 1일 일요일)
g_pKRewardTable:AddRewardData(20091, 200000000, 1, 1 ) -- 양치기의 무기 3개 큐브

-- 2012.04.18 식목일 접속 이벤트 우편 지급(4월 18일 ~ 5월 2일)
g_pKRewardTable:AddRewardData(20092, 131856, 3, 0 ) -- 자연의 선물 3개(평일)

-- 2012.04.18 식목일 접속 이벤트 우편 지급(4월 18일 ~ 5월 2일)
g_pKRewardTable:AddRewardData(20093, 131856, 5, 0 ) -- 자연의 선물 5개(주말)

-- 2012.05.03 일일퀴즈 접속 이벤트 우편 지급(5월 3일 ~ 5월 15일)
g_pKRewardTable:AddRewardData(20094, 65000644, 1, 15 ) -- QuizQuiz 칭호 아이템(15일 기간제)

-- 2012.05.03 일일퀴즈 이벤트 기출문제 쪽지 우편 지급(5월 3일 ~ 5월 15일)
g_pKRewardTable:AddRewardData(20095, 65000642, 1, 0 )

-- 2012.05.10 하멜 전야 이벤트 우편 지급(5월 16일 ~ 5월 30일)
g_pKRewardTable:AddRewardData(20096, 85000931, 1, 0 )

-- 2012.05.10 하멜 전야 이벤트 우편 지급(5월 16일 ~ 5월 30일)
g_pKRewardTable:AddRewardData(20097, 85000932, 1, 0 )

-- 2012.05.10 하멜 전야 이벤트 우편 지급(5월 16일 ~ 5월 30일)
g_pKRewardTable:AddRewardData(20098, 85000933, 1, 0 )

-- 2012.05.10 하멜 전야 이벤트 우편 지급(5월 16일 ~ 5월 30일)
g_pKRewardTable:AddRewardData(20099, 85000934, 1, 0 )

-- 2012.05.24 유로 2012 이벤트 우편 지급
g_pKRewardTable:AddRewardData(20100, 85001003, 1, 3 ) -- 축구공 액세서리(3일권)

-- 2012.05.24 유로 2012 우승팀 맞축기 이벤트 우편 지급
g_pKRewardTable:AddRewardData(20101, 85001010, 1, 0 ) -- 우승팀 투표권

-- 2012.06.11 하멜을 지원하라!. (칭호 보상) 칭호 우편 지급
g_pKRewardTable:AddRewardData(20102, 90000700, 1, 0 ) -- ‘하멜을 지원하라!’ 칭호 (30일)

-- 2012.07.04 청 전야 이벤트 : 새로운 영웅의 상징!
g_pKRewardTable:AddRewardData(20103, 85001083, 1, 0 ) -- 새로운 영웅의 퍼즐 조각 4

-- 2012.07.11 청 이벤트 : 청 칭호 및 귀환자 이벤트!
g_pKRewardTable:AddRewardData(20104, 90000751, 1, 0 ) -- 돌아온 모험가의 큐브
g_pKRewardTable:AddRewardData(20105, 90000761, 1, 0 ) -- 코보 VIP 모험가 큐브
g_pKRewardTable:AddRewardData(20106, 90000730, 1, 30 ) -- 하멜의 하얀 늑대 칭호

-- 2012.07.25 카밀라의 기술 향상 큐브 3종 지급
g_pKRewardTable:AddRewardData(20107, 90000980, 1, 0 ) -- 카밀라의 기술 향상 큐브(기초)
g_pKRewardTable:AddRewardData(20108, 90000981, 1, 0 ) -- 카밀라의 기술 향상 큐브(중급)
g_pKRewardTable:AddRewardData(20109, 90000982, 1, 0 ) -- 카밀라의 기술 향상 큐브(상급)

-- 2012.07.25 카밀라의 약속 지급
g_pKRewardTable:AddRewardData(20110, 90000983, 1, 0 ) -- 카밀라의 약속(기초)
g_pKRewardTable:AddRewardData(20111, 90000984, 1, 0 ) -- 카밀라의 약속(중급)
g_pKRewardTable:AddRewardData(20112, 90000985, 1, 0 ) -- 카밀라의 약속(상급)

-- 2012.07.25 카밀라의 수상한 부적(1일권) 지급
g_pKRewardTable:AddRewardData(20113, 90000988, 1, 1 ) -- 카밀라의 수상한 부적(1일권)

-- 2012.07.25 치명타의 발견 7개 지급
g_pKRewardTable:AddRewardData(20114, 90000996, 7, 0 ) -- 치명타의 발견 7개

-- 2012.08.01 마라톤 이벤트 각 지점별 도달 보상
g_pKRewardTable:AddRewardData(20115, 90000715, 1, 0 ) 	-- 첫 번째 지점 도달 보상 : 부활석 10개 큐브
g_pKRewardTable:AddRewardData(20116, 200000022, 1, 0 ) 	-- 두 번째 지점 도달 보상 : 엘리오스 게임 성화 큐브(3일권)
g_pKRewardTable:AddRewardData(20116, 200000021, 10, 0 ) -- 두 번째 지점 도달 보상 : 스포츠 드링크 10개
g_pKRewardTable:AddRewardData(20117, 130047, 10, 0 ) 	-- 세 번째 지점 도달 보상 : 엘의 조각(불명) 10개
g_pKRewardTable:AddRewardData(20118, 109955, 10, 0 ) 	-- 네 번째 지점 도달 보상 : 고급 마법석 10개
g_pKRewardTable:AddRewardData(20119, 200000020, 1, 0 ) 	-- 결승점 도달 보상 : 엘리오스 게임의 성화
g_pKRewardTable:AddRewardData(20119, 130047, 10, 0 ) 	-- 결승점 도달 보상 : 엘의 조각(불명) 10개
g_pKRewardTable:AddRewardData(20119, 109955, 10, 0 ) 	-- 결승점 도달 보상 : 고급 마법석 10개
g_pKRewardTable:AddRewardData(20119, 200000021, 10, 0 ) -- 결승점 도달 보상 : 스포츠 드링크 10개

-- 2012.08.01 마라톤 이벤트 보상
g_pKRewardTable:AddRewardData(20120, 200000011, 1, 0 ) -- 엘리오스 게임(칭호)
g_pKRewardTable:AddRewardData(20121, 206730, 1, 0 ) -- 플루오르 스톤 LV.1
g_pKRewardTable:AddRewardData(20121, 206880, 1, 0 ) -- 축복받은 복원의 주문서 LV.1
g_pKRewardTable:AddRewardData(20122, 131377, 1, 0 ) -- 아리엘의 얼음 조각상 가열기
g_pKRewardTable:AddRewardData(20122, 200000019, 1, 0 ) -- 도전자의 상징


-- 2012.08.08 파수병의 열쇠 지급(평일)
g_pKRewardTable:AddRewardData(20123, 90001051, 3, 0 ) -- 파수병의 열쇠

-- 2012.08.08 파수병의 열쇠 지급(주말)
g_pKRewardTable:AddRewardData(20124, 90001051, 5, 0 ) -- 파수병의 열쇠


-- 2012.08.22 청 2차 전직 접속 이벤트 보상
g_pKRewardTable:AddRewardData(20125, 90001101, 1, 0 ) -- 인내의 상징

-- 2012.08.22 청 2차 전직시 전직의 증표 3개 우편 지급
g_pKRewardTable:AddRewardData(20126, 90001090, 3, 0 ) -- 전직의 증표 3개


-- 2012.08.29 엘의 여인의 눈물
g_pKRewardTable:AddRewardData(20127, 85001550, 5, 0 ) -- 엘의 여인의 눈물 5개

-- 2012.08.29 세나스 공국의 분노
g_pKRewardTable:AddRewardData(20128, 85001551, 1, 0 ) -- 세나스 공국의 분노 1개


-- 2012.09.12 다시 떠오르는 영웅들 (2012-09-12 ~ 2012-09-25)
g_pKRewardTable:AddRewardData(20129, 85001590, 10, 0 ) -- 코보 마나 서포터 10개
g_pKRewardTable:AddRewardData(20129, 85001603, 1, 0 ) -- 다시 떠오르는 영웅들 1개

-- 2012.09.12 청의 다시 찾은 의지 (2012-09-12 ~ 2012-09-25)
g_pKRewardTable:AddRewardData(20130, 85001598, 1, 0 ) -- 의지의 증명 1개


-- 2012.09.26 비밀의 정원 (2012-09-26 ~ 2012-10-09) 평일 3개
g_pKRewardTable:AddRewardData(20131, 85001660, 3, 0 ) -- 비밀의 정원 열쇠 (평일 3개)

-- 2012.09.26 비밀의 정원 (2012-09-26 ~ 2012-10-09) 주말 5개
g_pKRewardTable:AddRewardData(20132, 85001660, 5, 0 ) -- 비밀의 정원 열쇠 (주말 5개)

-- 2012.09.26 ESL 대전대회 기념 큐브를 드려요! (2012-10-01 ~ 2012-11-04)
g_pKRewardTable:AddRewardData(20133, 85001830, 1, 0 ) -- ESL 대전 아이템 큐브

-- 2012.09.26 ESL 대전대회 기념 큐브를 드려요! (2012-10-01 ~ 2012-11-04)
g_pKRewardTable:AddRewardData(20134, 85001831, 1, 0 ) -- ESL 대전 아이템 큐브 열쇠


-- 2012.10.10 펫 이벤트
g_pKRewardTable:AddRewardData(20135, 210000070, 1,  0 ) -- 덫에 걸린 해츨링(유체)
g_pKRewardTable:AddRewardData(20136, 210000081, 1,  0 ) -- 카밀라의 데일리 펫 훈련 매거진

-- 2012.10.10 펫 훈련장 입장권 우편 지급
g_pKRewardTable:AddRewardData(20137, 210000075, 3, 0 ) 	-- 펫 훈련장 입장권 3개
g_pKRewardTable:AddRewardData(20138, 210000075, 5, 0 ) 	-- 펫 훈련장 입장권 5개


-- 2012.10.24 할로윈 데스사이즈 우편 지급
g_pKRewardTable:AddRewardData(20139, 210000131, 1, 1 ) 	-- 데스사이즈 - 조화 1일권
g_pKRewardTable:AddRewardData(20140, 210000132, 1, 1 ) 	-- 데스사이즈 - 신비 1일권
g_pKRewardTable:AddRewardData(20141, 210000133, 1, 1 ) 	-- 데스사이즈 - 광휘 1일권
g_pKRewardTable:AddRewardData(20142, 210000137, 1, 0 ) 	-- 데스사이즈 6종 1일권 큐브
g_pKRewardTable:AddRewardData(20143, 210000134, 1, 1 ) 	-- 데스사이즈 - 전투 1일권
g_pKRewardTable:AddRewardData(20144, 210000135, 1, 1 ) 	-- 데스사이즈 - 증강 1일권
g_pKRewardTable:AddRewardData(20145, 210000136, 1, 1 ) 	-- 데스사이즈 - 적중 1일권

-- 2012.10.24 아리엘의 할로윈 사탕 우편 지급
g_pKRewardTable:AddRewardData(20146, 210000125,  1,  1 )  -- 아리엘의 할로윈 사탕 1개
g_pKRewardTable:AddRewardData(20147, 210000125,  2,  1 )  -- 아리엘의 할로윈 사탕 2개


-- 2012.11.07 1.활력vs파괴 1) 검사의 선택
g_pKRewardTable:AddRewardData(20148, 85001854,  1,  0 )  -- 활력의 검사 칭호 (15일)
g_pKRewardTable:AddRewardData(20149, 85001855,  1,  0 )  -- 파괴의 검사 칭호 (15일)
g_pKRewardTable:AddRewardData(20150, 85001856,  1,  15 )  -- 활력의 룬 (15일)
g_pKRewardTable:AddRewardData(20151, 85001857,  1,  15 )  -- 파괴의 룬 (15일)

-- 2012.11.07 1.활력vs파괴 3) 검사의 깨달음
g_pKRewardTable:AddRewardData(20152, 85001873,  1,  0 )  -- 검사의 깨달음


-- 2012.11.21 마족의 흔적 (2012-11-21 ~ 2012-12-05)
g_pKRewardTable:AddRewardData(20153, 90001410,  1,  0 )  -- 마족의 흔적


-- 2012.12.05 The Rage! (2012-12-05 ~ 2012-12-19)
g_pKRewardTable:AddRewardData(20154, 160303,  1,  0 )  -- The Rage! (15일권)
g_pKRewardTable:AddRewardData(20154, 200700,  1,  15 )  -- 아이템분노의 반지(15일)

-- 2012.12.05 새로운 검사의 상징 (2012-12-12 ~ 2012-12-18)
g_pKRewardTable:AddRewardData(20155, 85001884,  1,  7 )  -- 콘웰의 현신(7일권)


-- 2012.12.18 수습 모험가 “엘소드” (2012-12-18 ~ 2013-01-02)
g_pKRewardTable:AddRewardData(20156, 85001892,  1,  0 )  -- 수습 모험가 기초 교육1 큐브

-- 2012.12.18 코보사의 정규 모험가 재교육 프로그램 (2012-12-18 ~ 2013-01-02)
g_pKRewardTable:AddRewardData(20157, 85001909,  1,  0 )  -- 21~30레벨	모험가 기초 교육 수강권
g_pKRewardTable:AddRewardData(20158, 85001910,  1,  0 )  -- 31~40레벨	모험가 실무 교육 수강권
g_pKRewardTable:AddRewardData(20159, 85001911,  1,  0 )  -- 41~50레벨	모험가 2차 직무 교육 수강권
g_pKRewardTable:AddRewardData(20160, 85001912,  1,  0 )  -- 51~60레벨	모험가 승급 교육 수강권

-- 2012.12.18 크리스마스 특별 선물
g_pKRewardTable:AddRewardData(20161, 85001920,  1,  0 )  -- 12/23 계정당 1회 120분 접속시 아리엘의 가열기 1개
g_pKRewardTable:AddRewardData(20162, 131412,  1,  0 )  	 -- 12/24 계정당 1회 120분 접속시 플루오스 스톤 교환권 지급
g_pKRewardTable:AddRewardData(20163, 243330,  1,  0 )  	 -- 12/25 계정당 1회 120분 접속시 크리스마스 지팡이 사탕 장식 액세서리 영구권 지급

-- 2012.12.18 모험가의 귀환
g_pKRewardTable:AddRewardData(20164, 85001918,  1,  0 )  -- 돌아온 모험가의 큐브

-- 2012.12.18 2012년 못 다 이룬 연초 결심(12월 26일 ~ 12월 31일) 
g_pKRewardTable:AddRewardData(20165, 85001930,  1,  0 )  -- 캐릭터 단위로 매일 100분 접속 시 ‘되찾은 연초의 결심’

-- 2012.12.18 마법소녀의 날개 (2013-01-09 ~ 2013-01-15)
g_pKRewardTable:AddRewardData(20166, 180158,  1,  7 )  -- 캐릭터로 10분 접속 시 ‘마법소녀의 소망(7일)’


-- 도전! 마법소녀의 수련장 (2013-01-16 ~ 2013-01-29)
-- 마법소녀의 희망
g_pKRewardTable:AddRewardData(20167, 90001701,  1,  15 )  -- 캐릭터로 30분 접속 시 ‘마법소녀의 희망(15일)’
-- 마법소녀의 수련장 입장권
g_pKRewardTable:AddRewardData(20168, 90001703,  3,  0 )  -- 평일 3장 10분
g_pKRewardTable:AddRewardData(20169, 90001703,  5,  0 )  -- 주말 5장 10분

-- 마법소녀의 열쇠 
g_pKRewardTable:AddRewardData(20170, 85001929,  1,  0 )  -- 배틀매지션 전직시 지급


-- 태그모드 (2013-01-30 ~ 2013-02-27)
-- 태그 모드 지원1
g_pKRewardTable:AddRewardData(20171, 75000600,  1 ,  1 )  -- 매일 10분 접속 시 마법의 목걸이(1일권) 
g_pKRewardTable:AddRewardData(20171, 85002000,  1 ,  0 )  -- 매일 10분 접속 시 기술의 반지 4종(1일권) 큐브
-- 태그 모드 지원2
g_pKRewardTable:AddRewardData(20172, 85002001,  1 ,  0 )  -- 매일 30분 접속 시 태그 모드 프로모션 무기 아바타 3종(1일권) 큐브
-- 트래핑 레인저 전야 이벤트 - 영웅에 대한 소식지
g_pKRewardTable:AddRewardData(20173, 85002010,  1 ,  0 )  -- 매일 30분 접속 시 “영웅에 대한 소식지” 우편 지급 
-- 트래핑 레인저 전야 이벤트 - 엘드랏실의 축복
g_pKRewardTable:AddRewardData(20174, 85002013,  1 ,  0 )  -- 주말 60분 접속 시 엘드랏실의 축복 우편 지급 
--g_pKRewardTable:AddRewardData(RewardID, ItemID,  Item 개수 ,  기간여부 )  

-- 영광의 코인
g_pKRewardTable:AddRewardData(20175, 85002007,  1,  0 )  -- 태크모드(아너모드) 승리시 인벤 찼을 때 우편지급

--  비밀스런 바람의 소리_바람의 암살자 트레핑 레인저(2013-02-13 ~ 2013-02-26)
g_pKRewardTable:AddRewardData(20176, 85002040,  1,  0 )  -- 엘드라실의 신성한 큐브(30레벨 달성시 오픈 가능)

--  메모리 카드 지급_미션 던전 이벤트(2013-02-27 ~ 2013-03-13)
g_pKRewardTable:AddRewardData(20177, 60005091,  1,  0 )  -- 나의 미션 메모리 카드 (A)
g_pKRewardTable:AddRewardData(20178, 60005092,  1,  0 )  -- 나의 미션 메모리 카드 (B)
g_pKRewardTable:AddRewardData(20179, 60005093,  1,  0 )  -- 나의 미션 메모리 카드 (C)
g_pKRewardTable:AddRewardData(20180, 60005094,  1,  0 )  -- 나의 미션 메모리 카드 (D)
g_pKRewardTable:AddRewardData(20181, 60005095,  1,  0 )  -- 나의 미션 메모리 카드 (E)
g_pKRewardTable:AddRewardData(20182, 60005096,  1,  0 )  -- 나의 미션 메모리 카드 (F)

--  보호의 부적 우편 지급_미션 던전 이벤트(2013-02-27 ~ 2013-03-13)
g_pKRewardTable:AddRewardData(20183, 60005097,  1,  0 )  -- 보호 부적 평일 1장 40분
g_pKRewardTable:AddRewardData(20184, 60005097,  2,  0 )  -- 보호 부적 주말 2장 70분

--  웨폰테이커 전야 이벤트(2013-03-06 ~ 2013-03-27) 
g_pKRewardTable:AddRewardData(20185, 85002060,  1,  0 )  -- 건블레이드
g_pKRewardTable:AddRewardData(20186, 85002067,  1,  0 )  -- 코보 용병단 스타트업 큐브 열쇠

-- 길드원이 필요하다면? (2013-02-27 ~ 2013-03-13)
g_pKRewardTable:AddRewardData(20187, 85002110,  1,  0 ) -- 10분,2월 27일 이전 길드에 가입되어 있지 않던 캐릭터 길드 가입 프로모션 쿠폰
g_pKRewardTable:AddRewardData(20188, 85002110,  1,  0 ) -- 10분, 2월 28일 업데이트 이후 생성 캐릭터 길드 가입 프로모션 쿠폰

-- 미스 엘리오스 2013-03-27~ 2013-04-10
g_pKRewardTable:AddRewardData(20189, 200720,  1,  1 )	-- 30분 접속 시 경험치 메달 30% 1일권(ItemID 200720) 지급(캐릭터)
g_pKRewardTable:AddRewardData(20190, 67003746,  1,  0 )	-- 60분 접속시  아리엘의 플루오르 스톤 Lv3 ~ 5(ItemID 67003746) 지급(캐릭터)
g_pKRewardTable:AddRewardData(20191, 67003744,  1,  0 )	-- 60분 접속시  듀얼 마법석 랜덤 큐브(ItemID 67003744 ) 지급(캐릭터) 
g_pKRewardTable:AddRewardData(20192, 67003771,  1,  0 ) -- 2013-03-12 60분   접속 시 승리의 왕관 14일권 큐브 우편 지급

-- 1. 진정한 지휘관의 귀환 (2013-03-13 ~ 2013-03-27) 
g_pKRewardTable:AddRewardData(20193, 85002070,  1,  0 )	-- 지휘관의 큐브

--고대 나소드의 신성한 코드 획득(1분)
g_pKRewardTable:AddRewardData(20194, 180164,  1,  15 )	-- 나소드 분광석(기간제)

--고대 나소드의 신성한 코드 해석(30분)
g_pKRewardTable:AddRewardData(20195, 135088,  1,  0 )	-- 코드 분석 회로

--5회 : 다음날 60분 접속 시 정제된 엘의 조각(마스터) 랜덤 큐브 1개 우편 지급(캐릭단위)
g_pKRewardTable:AddRewardData(20196, 90000764,  1,  0 )	-- 정제된 엘의 조각 랜덤 큐브

--6회 : 다음날 60분 접속 시 뽀루의 발도장(하양,노랑,보라) 랜덤 큐브 1개 우편 지급(캐릭단위)
g_pKRewardTable:AddRewardData(20197, 85002026,  1,  0 )	-- 2013 미스 엘리오스 공약 뽀루의 발도장 랜덤 큐브

--이브 성장 찬스 티켓
g_pKRewardTable:AddRewardData(20198, 85002088,  1,  0 )	-- 이브 성장 찬스 티켓


--------------------------------------------------------------------------
--만우절 앜엔
g_pKRewardTable:AddRewardData(20199, 250000510, 1, 1 )
g_pKRewardTable:AddRewardData(20199, 250000511, 1, 1 )
g_pKRewardTable:AddRewardData(20199, 250000512, 1, 1 )
g_pKRewardTable:AddRewardData(20199, 250000513, 1, 1 )
g_pKRewardTable:AddRewardData(20199, 250000514, 1, 1 )
g_pKRewardTable:AddRewardData(20199, 250000515, 1, 1 )
g_pKRewardTable:AddRewardData(20199, 250000516, 1, 1 )
g_pKRewardTable:AddRewardData(20199, 250000517, 1, 1 )

g_pKRewardTable:AddRewardData(20200, 250000520, 1, 1 )
g_pKRewardTable:AddRewardData(20200, 250000521, 1, 1 )
g_pKRewardTable:AddRewardData(20200, 250000522, 1, 1 )
g_pKRewardTable:AddRewardData(20200, 250000523, 1, 1 )
g_pKRewardTable:AddRewardData(20200, 250000524, 1, 1 )
g_pKRewardTable:AddRewardData(20200, 250000525, 1, 1 )
g_pKRewardTable:AddRewardData(20200, 250000526, 1, 1 )
g_pKRewardTable:AddRewardData(20200, 250000527, 1, 1 )

g_pKRewardTable:AddRewardData(20201, 250000530, 1, 1 )
g_pKRewardTable:AddRewardData(20201, 250000531, 1, 1 )
g_pKRewardTable:AddRewardData(20201, 250000532, 1, 1 )
g_pKRewardTable:AddRewardData(20201, 250000533, 1, 1 )
g_pKRewardTable:AddRewardData(20201, 250000534, 1, 1 )
g_pKRewardTable:AddRewardData(20201, 250000535, 1, 1 )
g_pKRewardTable:AddRewardData(20201, 250000536, 1, 1 )
g_pKRewardTable:AddRewardData(20201, 250000537, 1, 1 )

g_pKRewardTable:AddRewardData(20202, 250000540, 1, 1 )
g_pKRewardTable:AddRewardData(20202, 250000541, 1, 1 )
g_pKRewardTable:AddRewardData(20202, 250000542, 1, 1 )
g_pKRewardTable:AddRewardData(20202, 250000543, 1, 1 )
g_pKRewardTable:AddRewardData(20202, 250000544, 1, 1 )
g_pKRewardTable:AddRewardData(20202, 250000545, 1, 1 )
g_pKRewardTable:AddRewardData(20202, 250000546, 1, 1 )
g_pKRewardTable:AddRewardData(20202, 250000547, 1, 1 )

g_pKRewardTable:AddRewardData(20203, 250000550, 1, 1 )
g_pKRewardTable:AddRewardData(20203, 250000551, 1, 1 )
g_pKRewardTable:AddRewardData(20203, 250000552, 1, 1 )
g_pKRewardTable:AddRewardData(20203, 250000553, 1, 1 )
g_pKRewardTable:AddRewardData(20203, 250000554, 1, 1 )
g_pKRewardTable:AddRewardData(20203, 250000555, 1, 1 )
g_pKRewardTable:AddRewardData(20203, 250000556, 1, 1 )
g_pKRewardTable:AddRewardData(20203, 250000557, 1, 1 )

g_pKRewardTable:AddRewardData(20204, 250000560, 1, 1 )
g_pKRewardTable:AddRewardData(20204, 250000561, 1, 1 )
g_pKRewardTable:AddRewardData(20204, 250000562, 1, 1 )
g_pKRewardTable:AddRewardData(20204, 250000563, 1, 1 )
g_pKRewardTable:AddRewardData(20204, 250000564, 1, 1 )
g_pKRewardTable:AddRewardData(20204, 250000565, 1, 1 )
g_pKRewardTable:AddRewardData(20204, 250000566, 1, 1 )
g_pKRewardTable:AddRewardData(20204, 250000567, 1, 1 )

--나소드 여왕 이브를 향한 무한 지원
g_pKRewardTable:AddRewardData(20205, 85002085,  1,  0 )	-- 나소드 여왕 전용 액세서리 큐브
g_pKRewardTable:AddRewardData(20205, 85002087,  1,  0 )	-- 나소드 여왕 1차 전직 기념 큐브
g_pKRewardTable:AddRewardData(20205, 85002089,  1,  0 )	-- 코드 일렉트라 전용 큐브 
g_pKRewardTable:AddRewardData(20206, 85002062,  1,  0 )  -- 나소드 건블레이드

g_pKRewardTable:AddRewardData(20207, 85002093,  1,  0 )  -- 엘 에너지 캡슐

-----------------------------------------------------------------------------
g_pKRewardTable:AddRewardData(20208, 85002337,  1,  0 )  -- 필드 전야 바코드가 적힌 쿠폰

--------------------------------------------------------------------------
--만우절 장교
--[[
g_pKRewardTable:AddRewardData(20199, 250000570, 1, 1 )
g_pKRewardTable:AddRewardData(20199, 250000571, 1, 1 )
g_pKRewardTable:AddRewardData(20199, 250000572, 1, 1 )
g_pKRewardTable:AddRewardData(20199, 250000573, 1, 1 )
g_pKRewardTable:AddRewardData(20199, 250000574, 1, 1 )
g_pKRewardTable:AddRewardData(20199, 250000575, 1, 1 )
g_pKRewardTable:AddRewardData(20199, 250000576, 1, 1 )
g_pKRewardTable:AddRewardData(20199, 250000577, 1, 1 )
g_pKRewardTable:AddRewardData(20199, 250000630, 1, 1 )

g_pKRewardTable:AddRewardData(20200, 250000580, 1, 1 )
g_pKRewardTable:AddRewardData(20200, 250000581, 1, 1 )
g_pKRewardTable:AddRewardData(20200, 250000582, 1, 1 )
g_pKRewardTable:AddRewardData(20200, 250000583, 1, 1 )
g_pKRewardTable:AddRewardData(20200, 250000584, 1, 1 )
g_pKRewardTable:AddRewardData(20200, 250000585, 1, 1 )
g_pKRewardTable:AddRewardData(20200, 250000586, 1, 1 )
g_pKRewardTable:AddRewardData(20200, 250000587, 1, 1 )
g_pKRewardTable:AddRewardData(20200, 250000630, 1, 1 )

g_pKRewardTable:AddRewardData(20201, 250000590, 1, 1 )
g_pKRewardTable:AddRewardData(20201, 250000591, 1, 1 )
g_pKRewardTable:AddRewardData(20201, 250000592, 1, 1 )
g_pKRewardTable:AddRewardData(20201, 250000593, 1, 1 )
g_pKRewardTable:AddRewardData(20201, 250000594, 1, 1 )
g_pKRewardTable:AddRewardData(20201, 250000595, 1, 1 )
g_pKRewardTable:AddRewardData(20201, 250000596, 1, 1 )
g_pKRewardTable:AddRewardData(20201, 250000597, 1, 1 )
g_pKRewardTable:AddRewardData(20201, 250000630, 1, 1 )

g_pKRewardTable:AddRewardData(20202, 250000600, 1, 1 )
g_pKRewardTable:AddRewardData(20202, 250000601, 1, 1 )
g_pKRewardTable:AddRewardData(20202, 250000602, 1, 1 )
g_pKRewardTable:AddRewardData(20202, 250000603, 1, 1 )
g_pKRewardTable:AddRewardData(20202, 250000604, 1, 1 )
g_pKRewardTable:AddRewardData(20202, 250000605, 1, 1 )
g_pKRewardTable:AddRewardData(20202, 250000606, 1, 1 )
g_pKRewardTable:AddRewardData(20202, 250000607, 1, 1 )
g_pKRewardTable:AddRewardData(20202, 250000630, 1, 1 )

g_pKRewardTable:AddRewardData(20203, 250000610, 1, 1 )
g_pKRewardTable:AddRewardData(20203, 250000611, 1, 1 )
g_pKRewardTable:AddRewardData(20203, 250000612, 1, 1 )
g_pKRewardTable:AddRewardData(20203, 250000613, 1, 1 )
g_pKRewardTable:AddRewardData(20203, 250000614, 1, 1 )
g_pKRewardTable:AddRewardData(20203, 250000615, 1, 1 )
g_pKRewardTable:AddRewardData(20203, 250000616, 1, 1 )
g_pKRewardTable:AddRewardData(20203, 250000617, 1, 1 )
g_pKRewardTable:AddRewardData(20203, 250000630, 1, 1 )

g_pKRewardTable:AddRewardData(20204, 250000620, 1, 1 )
g_pKRewardTable:AddRewardData(20204, 250000621, 1, 1 )
g_pKRewardTable:AddRewardData(20204, 250000622, 1, 1 )
g_pKRewardTable:AddRewardData(20204, 250000623, 1, 1 )
g_pKRewardTable:AddRewardData(20204, 250000624, 1, 1 )
g_pKRewardTable:AddRewardData(20204, 250000625, 1, 1 )
g_pKRewardTable:AddRewardData(20204, 250000626, 1, 1 )
g_pKRewardTable:AddRewardData(20204, 250000627, 1, 1 )
g_pKRewardTable:AddRewardData(20204, 250000630, 1, 1 )
--]]
-- 1.	공포 파괴자 강화!! (2013-05-01 ~ 2013-05-14)
g_pKRewardTable:AddRewardData(20209, 85002266, 1, 0 ) -- 이벤트 기간 동안 쉘링 가디언 전직시(캐시샵 구매 또는 퀘스트 클리어) ‘포병의 마음가짐’ 메일로 획득 가능

-- 의문의 몬스터 카드! (2013년 04월 24일~05월07일)
g_pKRewardTable:AddRewardData(20210, 60005023, 5, 0 ) -- 의문의 몬스터 카드 5개

-- 카드 캡터 뽀루 등장! (2013년 04월 24일~05월07일)
g_pKRewardTable:AddRewardData(20211, 60005046, 1, 0 ) -- 몬스터 카드 수집가의 모자(30일) 큐브

--------------------------------------------------------------------------
-- 2013.04.24 대전시즌2 개편 이벤트 
g_pKRewardTable:AddRewardData(20212, 85002316, 1, 0 ) --승부의 세계, 승자의 코인(1개)
g_pKRewardTable:AddRewardData(20213, 85002282, 1, 0 ) --새로운 대전을 즐기자, 1번째 배치경기, 그레이트 비틀 아바타 풀세트 큐브(30일권)
g_pKRewardTable:AddRewardData(20213, 85002283, 1, 0 ) --새로운 대전을 즐기자, 1번째 배치경기, 체험판 대전 전용 장비 풀세트 큐브(15일권)
g_pKRewardTable:AddRewardData(20214, 85002317, 1, 0 ) --새로운 대전을 즐기자, 랭크 받을 경우, 승부의 세계 도전장(1단계)
g_pKRewardTable:AddRewardData(20214, 85002314, 1, 0 ) --새로운 대전을 즐기자,랭크 받을 경우, 투사의 방패 액세서리 큐브(15일권)
g_pKRewardTable:AddRewardData(20215, 85002282, 1, 0 ) --새로운 대전을 즐기자, 1번째 배치경기, 그레이트 비틀 아바타 풀세트 큐브(30일권)
g_pKRewardTable:AddRewardData(20215, 85002340, 1, 0 ) --새로운 대전을 즐기자, 1번째 배치경기, 대전 전용 무기 아바타(15일권) 큐브
g_pKRewardTable:AddRewardData(20216, 85002317, 1, 0 ) --새로운 대전을 즐기자, 랭크 받을 경우, 승부의 세계 도전장(1단계)
g_pKRewardTable:AddRewardData(20216, 85002315, 1, 0 ) --새로운 대전을 즐기자, 랭크 받을 경우, 투사의 방패 액세서리 큐브(7일권)
---------------------------------------------------------------------------
-- 2013.04.24 필드 업데이트를 기다려라
g_pKRewardTable:AddRewardData(20217, 85002339, 1, 0 ) -- 필드 모험 준비 패키지

g_pKRewardTable:AddRewardData(20218, 85002330, 1, 0 ) -- 필드 100% 즐기기 필수 가이드북
-- 2013.06.04 ESeu_필드 이벤트 85002462 황금 필드 쿠키
g_pKRewardTable:AddRewardData(20220, 85002460, 1, 0 ) -- 필드 쿠키
g_pKRewardTable:AddRewardData(20221, 85002462, 1, 0 ) -- 황금 필드 쿠키

-- 2013.06.13 ESeu_나이트 와쳐 전야  85002560 풍고족의 서신
g_pKRewardTable:AddRewardData(20222, 85002560, 1, 0 ) -- 풍고족의 서신

--* 제목 : 인피니티 소드의 등장
--* 이벤트 기간 : 2013년 6월 19일 ~ 2013년 6월 25일 (1주일)
g_pKRewardTable:AddRewardData(20223, 85002541,  1,  0 ) -- 인피니티 소드 준비 큐브
g_pKRewardTable:AddRewardData(20224, 85002542,  1,  0 ) -- 미제련된 무한의 콘웰

--ESEU_컴백 이벤트&인피니티소드 이벤트 (2013-06-26 ~ 2013-07-10)
-- 복귀유저
g_pKRewardTable:AddRewardData(20225, 85002610,  1,  0 ) -- 기본 아바타 무기(영구) 랜덤 큐브
g_pKRewardTable:AddRewardData(20225, 85002600,  1,  0 ) -- 돌아온 영웅의 칭호 (15일권)
g_pKRewardTable:AddRewardData(20226, 85002601,  1,  0 ) -- 돌아온 영웅의 증표 1개
-- 기존, 신규유저
g_pKRewardTable:AddRewardData(20227, 85002603,  1,  0 ) -- 성실한 모험가의 증표 1개
g_pKRewardTable:AddRewardData(20227, 85002602,  1,  0 ) -- 성실한 모험가의 칭호 (1일권)
-- 주말 동안 매일 모든 유저 60분 접속 시 돌아온 영웅의 코인 우편 보상 획득
g_pKRewardTable:AddRewardData(20228, 85002604,  1,  0 ) -- 영웅의 코인 1개
-- 무한의 큐브 (2013-06-26 ~ 2013-07-09)
g_pKRewardTable:AddRewardData(20229, 85002800,  1,  0 ) -- 미약한 무한의 큐브 1개
g_pKRewardTable:AddRewardData(20230, 85002801,  1,  0 ) -- 무한의 큐브 1개
g_pKRewardTable:AddRewardData(20230, 85002804,  1,  0 ) -- 다크엘의 결정 1개
g_pKRewardTable:AddRewardData(20231, 85002802,  1,  0 ) -- 진화된 무한의 큐브 1개

--##############################################################################--
--ESEU_영국 obt 이벤트 85002891
--매일 60분 접속 시 우편으로 보상아이템 지급 – 중간접속 종료 시 다시 카운트
g_pKRewardTable:AddRewardData(20232, 85002891,  1,  0 ) -- 엘소드 영국 OBT 기념 큐브
g_pKRewardTable:AddRewardData(20233, 85002478,  1,  0 ) -- 엘리오스 조사단 아바타 풀세트 큐브(15일권)
--##############################################################################--

-----------------------2013.07.17 EU 패치 나와,디위전야, 디위----------------------
-- 디멘션 위치 전직을 준비하자.  2013년 07월 24일 ~ 2013년 07월 31일(캐릭터)
g_pKRewardTable:AddRewardData(20234, 90002191,  1,  0 ) -- 디멘션 위치 준비 큐브
-- 디멘션 위치 아리엘의 감사 보상 2013년 07월 31일 ~ 2013년 08월 07일(계정)
g_pKRewardTable:AddRewardData(20235, 90002203, 1,  0 ) -- 망각의 드링크(7일권) 큐브 1개
--나이트와쳐 이벤트
g_pKRewardTable:AddRewardData(20236, 80002130, 1, 0 ) --강렬한 에렌딜의 영혼 큐브 열쇠
g_pKRewardTable:AddRewardData(20237, 80002131, 1, 0 ) --온유한 에렌딜의 영혼 큐브 열쇠
g_pKRewardTable:AddRewardData(20238, 80002132, 1, 0 ) --내유외강 에렌딜의 영혼 큐브 열쇠

g_pKRewardTable:AddRewardData(20239, 80002140, 1, 0 ) --킹 나소드 소굴 입장 티켓
g_pKRewardTable:AddRewardData(20240, 80002141, 1, 0 ) --아기 퐁고의 메아리
g_pKRewardTable:AddRewardData(20241, 80002142, 1, 0 ) --나소드의 비밀 열쇠
g_pKRewardTable:AddRewardData(20242, 80002143, 1, 0 ) --킹 나소드의 비밀 열쇠

-----------------------2013.08.07 EU 중보, 배커 전야 , 배커 ----------------------
g_pKRewardTable:AddRewardData(20243, 60006500,  1,  0 ) -- 카메라 ES-888(블랙)
g_pKRewardTable:AddRewardData(20244, 60006541,  1,  0 ) -- 대박 필드 보스 큐브
g_pKRewardTable:AddRewardData(20245, 85003031,  1,  0 ) -- 베테랑 커맨더 준비 큐브

g_pKRewardTable:AddRewardData(20246, 85001663,  1,  0 ) -- 듀얼 마법석 랜덤 큐브
g_pKRewardTable:AddRewardData(20247, 85002094,  1,  0 ) -- 아리엘의 플루오르 스톤 교환권

-----------------------------------------------------------------------

-----------------------2013.09.04 EU 배세, 택트전야, 텍트,할로윈, 13일 금요일 ----------------------
-- 코드 배틀세라프 전야
g_pKRewardTable:AddRewardData( 20248, 80002201,  1,  0 ) -- 코드 배틀세라프 준비 큐브
g_pKRewardTable:AddRewardData( 20249, 80002206,  1,  0 ) -- 세라프 코드 랜덤 큐브
g_pKRewardTable:AddRewardData( 20250, 80002202,  1,  0 ) -- 세라프 코드  A
g_pKRewardTable:AddRewardData( 20251, 80002203,  1,  0 ) -- 세라프 코드  B
g_pKRewardTable:AddRewardData( 20252, 80002204,  1,  0 ) -- 세라프 코드  C
g_pKRewardTable:AddRewardData( 20253, 80002205,  1,  0 ) -- 세라프 코드  D
-- 택틱컬 트루퍼 전야
g_pKRewardTable:AddRewardData( 20254, 80002241,  1,  0 ) -- 택티컬 트루퍼 준비 큐브
g_pKRewardTable:AddRewardData( 20255, 80002242,  1,  0 ) -- 디스프로즌 에너지
--택티컬 트루퍼 
g_pKRewardTable:AddRewardData( 20256, 80002255,  1,  0 ) -- 신규 2차전직 캐릭터 카드 랜덤 큐브
--할로윈 전야 이벤트 
g_pKRewardTable:AddRewardData( 20257, 85003050,  1,  0 ) -- 신인 할로윈 디자어너 칭호(15일권)
g_pKRewardTable:AddRewardData( 20258, 85003051,  1,  0 ) -- 전설의 할로윈 디자이너 칭호(15일권)
--13일 금요일
g_pKRewardTable:AddRewardData( 20259, 90002280,  1,  3 ) -- 13일 금요일(3일권)

-----------------------2013.10.02 EU 아이템 개편, 할로윈 ---------------------
-- 아이템 개편 이벤트
g_pKRewardTable:AddRewardData( 20260, 60007562, 1, 0 ) -- 아이템 감정 증명서
g_pKRewardTable:AddRewardData( 20261, 60007560, 1, 0 ) -- 신 아이템 체험 증명서
g_pKRewardTable:AddRewardData( 20262, 60007561, 1, 0 ) -- 루리엘의 축복받은 시공간의 주문서 교환권
g_pKRewardTable:AddRewardData( 20263, 60007580, 1, 0 ) -- 루리엘의 축복받은 시공간의 주문서(연동 레벨)
-- 할로윈 이벤트
g_pKRewardTable:AddRewardData( 20264, 85003490, 1, 0 ) -- 할로위치 15일 펫 10분 
g_pKRewardTable:AddRewardData( 20265, 85003491, 1, 0 ) -- 할로윈 몬스터 코스프레 교환권 0분
g_pKRewardTable:AddRewardData( 20266, 85003500, 1, 0 ) -- 빛나는 할로윈 몬스터의 영혼 120분
--아이템 개편 기념 강화 지원 이벤트 
g_pKRewardTable:AddRewardData( 20267, 85002094, 1, 0 ) -- 아리엘의 플루오르 스톤 교환권
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(20219, 90000720, 1,  0 ) -- 2차 보안 패드 보상
-----------------------------------------------------------------------

-- 스킬트리 개편 이벤트 2013-11-20 정기 점검 후 ~ 2013-12-04 정기 점검 전
-- 복귀 유저와 성실 유저를 위한 선물
g_pKRewardTable:AddRewardData( 1505, 67006456, 1, 0 ) -- 복귀 유저 인증 티켓
g_pKRewardTable:AddRewardData( 1506, 67006457, 1, 0 ) -- 성실 유저 인증 티켓

-- 복귀 유저를 위한 선물
-- 11/20, 11/27 강화를 하자!(1)
g_pKRewardTable:AddRewardData( 1507, 83000193, 1, 0 ) -- 루리엘의 플루오르스톤(Lv4)
g_pKRewardTable:AddRewardData( 1507, 67006451, 10, 0 ) -- 루리엘의 망각의 알약 10개
g_pKRewardTable:AddRewardData( 1508, 83000194, 1, 0 ) -- 루리엘의 플루오르스톤(Lv5)
g_pKRewardTable:AddRewardData( 1508, 67006451, 10, 0 ) -- 루리엘의 망각의 알약 10개
-- 11/21, 11/28 강화를 하자!(2)
g_pKRewardTable:AddRewardData( 1509, 83000193, 1, 0 ) -- 루리엘의 플루오르스톤(Lv4)
g_pKRewardTable:AddRewardData( 1509, 215670, 1, 1 ) -- 마나민트 츄잉껌(1일권)
g_pKRewardTable:AddRewardData( 1510, 83000194, 1, 0 ) -- 루리엘의 플루오르스톤(Lv5)
g_pKRewardTable:AddRewardData( 1510, 215670, 1, 1 ) -- 마나민트 츄잉껌(1일권)
-- 11/22, 11/29 강화를 하자!(3)
g_pKRewardTable:AddRewardData( 1511, 83000193, 1, 0 ) -- 루리엘의 플루오르스톤(Lv4)
g_pKRewardTable:AddRewardData( 1511, 130633, 1, 1 ) -- 망각의 드링크(1일권)
g_pKRewardTable:AddRewardData( 1512, 83000194, 1, 0 ) -- 루리엘의 플루오르스톤(Lv5)
g_pKRewardTable:AddRewardData( 1512, 130633, 1, 1 ) -- 망각의 드링크(1일권)
-- 11/23, 11/30 감정을 해 보자!(1)
g_pKRewardTable:AddRewardData( 1513, 60007574, 1, 0 ) -- 루리엘의 축복받은 시공간의 주문서(Lv4)
g_pKRewardTable:AddRewardData( 1513, 75000600, 1, 1 ) -- 마목2 (1일권)
g_pKRewardTable:AddRewardData( 1514, 60007575, 1, 0 ) -- 루리엘의 축복받은 시공간의 주문서(Lv5)
g_pKRewardTable:AddRewardData( 1514, 75000600, 1, 1 ) -- 마목2 (1일권)
--11/24, 12/01 감정을 해 보자!(2)
g_pKRewardTable:AddRewardData( 1515, 60007574, 1, 0 ) -- 루리엘의 축복받은 시공간의 주문서(Lv4)
g_pKRewardTable:AddRewardData( 1515, 67006458, 1, 0 ) -- 기술의 반지 랜덤큐브 (1일권)
g_pKRewardTable:AddRewardData( 1516, 60007575, 1, 0 ) -- 루리엘의 축복받은 시공간의 주문서(Lv5)
g_pKRewardTable:AddRewardData( 1516, 67006458, 1, 0 ) -- 기술의 반지 랜덤큐브 (1일권)
--11/25, 12/02 감정을 해 보자!(3)
g_pKRewardTable:AddRewardData( 1517, 60007574, 1, 0 ) -- 루리엘의 축복받은 시공간의 주문서(Lv4)
g_pKRewardTable:AddRewardData( 1517, 67006452, 5, 0 ) -- 루리엘의 마나 에릭실 5개
g_pKRewardTable:AddRewardData( 1518, 60007575, 1, 0 ) -- 루리엘의 축복받은 시공간의 주문서(Lv5)
g_pKRewardTable:AddRewardData( 1518, 67006452, 5, 0 ) -- 루리엘의 마나 에릭실 5개
--11/26, 12/03 감정을 해 보자!(4)
g_pKRewardTable:AddRewardData( 1519, 60007580, 1, 0 ) -- 루리엘의 축복받은 시공간의 주문서(연동레벨)
g_pKRewardTable:AddRewardData( 1519, 67006210, 5, 0 ) -- 루리엘의 완포 5개

-- 성실 유저를 위한 선물
-- 스킬 개편 보너스
g_pKRewardTable:AddRewardData( 1520, 67006451, 20, 0 ) -- 루리엘의 망각의 알약 20개
g_pKRewardTable:AddRewardData( 1521, 215670, 1, 7 ) -- 마나민트 츄잉껌(7일)
g_pKRewardTable:AddRewardData( 1522, 130633, 1, 7 ) -- 망각의 드링크(7일)
g_pKRewardTable:AddRewardData( 1523, 75000600, 1, 7 ) -- 마목2(7일)
g_pKRewardTable:AddRewardData( 1524, 98003, 1, 7 ) -- 승부사의 반지(7일)
g_pKRewardTable:AddRewardData( 1525, 67006452, 10, 0 ) -- 루리엘의 마나 에릭실 10개
g_pKRewardTable:AddRewardData( 1526, 67006210, 10, 0 ) -- 루리엘의 완포 10개

-- 수련을 시작하자
g_pKRewardTable:AddRewardData( 1527, 67006459, 1, 1 ) -- 수련용 반지(1일권)

------------------------------ 스킬개편 ---------------------------------------------
-- 만렙 달성 시 망각의 드링크 (3일권) 제공
g_pKRewardTable:AddRewardData( 1528, 135417, 1, 3 ) -- 망각의 드링크 (3일권)

-- 1차 캐시 전직권 구매 시 망각의 드링크 (3일권) 및 1차 프로모션 아이템 제공
g_pKRewardTable:AddRewardData( 1529, 109999, 1, 0 ) -- 1차 전직 프로모션 큐브
g_pKRewardTable:AddRewardData( 1529, 135417, 1, 3 ) -- 망각의 드링크 (3일권)

-- 2차 캐시 전직권 구매 시 망각의 드링크 (3일권) 및 2차 프로모션 아이템 제공
g_pKRewardTable:AddRewardData( 1530, 110850, 1, 0 ) -- 2차 전직 프로모션 큐브
g_pKRewardTable:AddRewardData( 1530, 135417, 1, 3 ) -- 망각의 드링크 (3일권)
------------------------------ 스킬개편 ---------------------------------------------

-- 2013.11.20 샌더 이벤트
g_pKRewardTable:AddRewardData(1539, 67006184, 1, 0 ) -- 샌더마을 관광 가이드북 1개
g_pKRewardTable:AddRewardData(1540, 67006185, 1, 0 ) -- 샌더마을 정복자 큐브

-- 2013.11.20 아라전야 이벤트
-- 아라 가문의 문서 보관함
g_pKRewardTable:AddRewardData(1541, 60007000, 1, 0 ) -- 아라 가문의 문서 보관함
-- 봉인된 구미호 은큐브
g_pKRewardTable:AddRewardData(1542, 60007010, 1, 0 ) -- 봉인된 구미호 '은' 큐브
g_pKRewardTable:AddRewardData(1543, 60007011, 1, 0 ) -- 봉인된 구미호 '은' 큐브 열쇠
g_pKRewardTable:AddRewardData(1544, 60007012, 1, 0 ) -- 봉인된 구미호 '은' 특별 큐브

-- 2013.11.20 아라이벤트, Level UP 서포트 이벤트
g_pKRewardTable:AddRewardData(1545, 85003660, 1, 0 ) -- 트리나이트 기간제 3일 펫
g_pKRewardTable:AddRewardData(1546, 60007122, 1, 0 ) -- 특수 액세서리 3일 큐브
g_pKRewardTable:AddRewardData(1547, 500030, 10, 0 ) -- 엘의 나무 씨앗 10개
g_pKRewardTable:AddRewardData(1548, 70007020, 1, 0 ) -- 그노시스 축복(60SP) 15일권

-- 2013.09.11 ESJP_어둠의 문 개편 이벤트
g_pKRewardTable:AddRewardData(1552, 67006211, 1, 0 ) -- 새로운 어둠의 등장에 대한 지침서

-- 2013.07.31 ESJP_아라1차전직이벤트 
g_pKRewardTable:AddRewardData(1553, 60007347, 1, 0 ) -- 소선을 위한 특별 선물 큐브A
g_pKRewardTable:AddRewardData(1554, 60007348, 1, 0 ) -- 소선을 위한 특별 선물 큐브B

-- 2013.08.07 ESJP_제천 이벤트
g_pKRewardTable:AddRewardData(1555, 70007200, 1, 0 ) -- 아라, 아라 응원 선물 1개
g_pKRewardTable:AddRewardData(1556, 70007209, 1, 0 ) -- 아라이외, 아라 서포터 큐브 1개

-- 아라 업데이트 기념 이벤트
g_pKRewardTable:AddRewardData(1557, 109950, 10, 0 ) -- 축복 받은 무기 강화석 10개
g_pKRewardTable:AddRewardData(1558, 109965, 20, 0 ) -- 축복 받은 방어구 강화석 20개
g_pKRewardTable:AddRewardData(1559, 60007561, 1, 0 ) -- 루리엘의 시공간의 주문서 교환권 1개
g_pKRewardTable:AddRewardData(1560, 85002094, 1, 0 ) -- 루리엘의 플루오르 스톤 교환권 1개
g_pKRewardTable:AddRewardData(1561, 85002095, 1, 0 ) -- 루리엘의 축복 받은 복원의 주문서 1개
g_pKRewardTable:AddRewardData(1562, 60007352, 1, 0 ) -- 빛 나는 푸른 구미호 꼬리 액세서리 2일권 큐브
g_pKRewardTable:AddRewardData(1563, 60007353, 1, 0 ) -- 빛 나는 붉은 구미호 꼬리 액세서리 2일권 큐브


-- 2013.12.11 크리스 마스 이벤트
g_pKRewardTable:AddRewardData(2000, 153000085, 1, 0 ) -- 2013.12.03 크리스마스 특별 선물 이벤트  ( 폴라 베어 코스프레 세트(한벌) 1개 )

-- 2013.12.11 신년 이벤트
g_pKRewardTable:AddRewardData(2001, 153000094, 1, 0 ) -- 2013.12.03 2013년 마지막 접속 이벤트  ( 2013년 마지막 접속 인증 티켓 1개 )

g_pKRewardTable:AddRewardData(2002, 153000096, 1, 0 ) -- 2013.12.03 2013년 라스트 미션  ( 만렙 서포트 큐브 1개 )
g_pKRewardTable:AddRewardData(2003, 153000097, 1, 0 ) -- 2013.12.03 2013년 라스트 미션  ( 만렙 ALL 큐브 1개 )
g_pKRewardTable:AddRewardData(2004, 210000226, 3, 0 ) -- 2013.12.03 2013년 라스트 미션  ( 루리엘의 얼음 조각상 가열기 3개 )

g_pKRewardTable:AddRewardData(2005, 153000167, 1, 0 ) -- 2013.12.03  2014년 퍼스트 미션   ( 경험치100%메달(3일권) 1개 )
g_pKRewardTable:AddRewardData(2006, 70007030, 1, 0 ) -- 2013.12.03  2014년 퍼스트 미션   ( 루리엘의 그노시스의 축복(30SP, 7일권) 1개 )
g_pKRewardTable:AddRewardData(2007, 153000102, 1, 0 ) -- 2013.12.03  2014년 퍼스트 미션   ( 6강 장비 풀세트 큐브(22레벨) 1개 )
g_pKRewardTable:AddRewardData(2008, 75000600, 1, 15 ) -- 2013.12.03  2014년 퍼스트 미션   ( 마법의 목걸이(15일권) 1개 )
g_pKRewardTable:AddRewardData(2008, 153000101, 1, 0 ) -- 2013.12.03  2014년 퍼스트 미션   ( 2014년 새해 특별 패키지 구매권 1개 )
g_pKRewardTable:AddRewardData(2009, 109950, 10, 0 ) -- 2013.12.03  2014년 퍼스트 미션   ( 축무강 10개 )
g_pKRewardTable:AddRewardData(2009, 109965, 30, 0 ) -- 2013.12.03  2014년 퍼스트 미션   ( 축방강 30개 )
g_pKRewardTable:AddRewardData(2009, 109955, 10, 0 ) -- 2013.12.03  2014년 퍼스트 미션   ( 고마 10개 )
g_pKRewardTable:AddRewardData(2010, 60007270, 1, 0 ) -- 2013.12.03  2014년 퍼스트 미션   ( 루리엘의 강화 부적 LV7 1개 )

g_pKRewardTable:AddRewardData(2011, 130047, 40, 0 ) -- 2013.12.03  2014년 퍼스트 미션   ( 엘조불명 40개 )
g_pKRewardTable:AddRewardData(2012, 90000764, 1, 0 ) -- 2013.12.03  2014년 퍼스트 미션   ( 정제된 엘의 조각 랜덤 큐브 1개 )
g_pKRewardTable:AddRewardData(2013, 153000103, 1, 0 ) -- 2013.12.03  2014년 퍼스트 미션   ( 아바타 풀 세트 큐브(30일권) 1개 )
g_pKRewardTable:AddRewardData(2014, 153000104, 1, 0 ) -- 2013.12.03  2014년 퍼스트 미션   ( 포니 헤드 액세서리 1개 )
g_pKRewardTable:AddRewardData(2015, 153000104, 1, 3 ) -- 2013.12.03 2014년 첫 접속 인증  ( 포니 헤드 액세서리 (3일권) 1개 )





