-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--{{ 아리엘 쿠폰 보상 ( 아이템id, 개수, 확률, 가상확률 ) 모두 합쳐 100%가 되어야 합니다.
--[[
g_pKRewardTable:AddAreilCouponRewardData(	132495	,	1	,	0.5	,	1.419	)	--	아리엘의 강화부적 Lv.5
g_pKRewardTable:AddAreilCouponRewardData(	132496	,	1	,	0.18	,	1.294	)	--	아리엘의 강화부적 Lv.6
g_pKRewardTable:AddAreilCouponRewardData(	132497	,	1	,	0.06	,	1.16	)	--	아리엘의 강화부적 Lv.7
g_pKRewardTable:AddAreilCouponRewardData(	132498	,	1	,	0.01	,	0.969	)	--	아리엘의 강화부적 Lv.8
g_pKRewardTable:AddAreilCouponRewardData(	77170	,	1	,	5	,	1.805	)	--	중급 포션
g_pKRewardTable:AddAreilCouponRewardData(	77180	,	1	,	5	,	1.805	)	--	중급 마나포션
g_pKRewardTable:AddAreilCouponRewardData(	77000	,	1	,	6	,	1.838	)	--	초급 포션
g_pKRewardTable:AddAreilCouponRewardData(	77010	,	1	,	6	,	1.838	)	--	초급 마나포션
g_pKRewardTable:AddAreilCouponRewardData(	130047	,	1	,	3	,	1.715	)	--	엘의 조각(불명)
g_pKRewardTable:AddAreilCouponRewardData(	130048	,	1	,	2	,	1.647	)	--	엘의 조각(레드)
g_pKRewardTable:AddAreilCouponRewardData(	130049	,	1	,	2	,	1.647	)	--	엘의 조각(블루)
g_pKRewardTable:AddAreilCouponRewardData(	130050	,	1	,	2	,	1.647	)	--	엘의 조각(윈드)
g_pKRewardTable:AddAreilCouponRewardData(	130051	,	1	,	2	,	1.647	)	--	엘의 조각(그린)
g_pKRewardTable:AddAreilCouponRewardData(	130052	,	1	,	2	,	1.647	)	--	엘의 조각(다크)
g_pKRewardTable:AddAreilCouponRewardData(	130053	,	1	,	2	,	1.647	)	--	엘의 조각(라이트)
g_pKRewardTable:AddAreilCouponRewardData(	132197	,	1	,	2	,	1.647	)	--	각성 지속의 마법석
g_pKRewardTable:AddAreilCouponRewardData(	132198	,	1	,	2	,	1.647	)	--	체력의 마법석
g_pKRewardTable:AddAreilCouponRewardData(	132199	,	1	,	2	,	1.647	)	--	각성 충전의 마법석
g_pKRewardTable:AddAreilCouponRewardData(	132200	,	1	,	2	,	1.647	)	--	속도의 마법석
g_pKRewardTable:AddAreilCouponRewardData(	132201	,	1	,	2	,	1.647	)	--	크리티컬의 마법석
g_pKRewardTable:AddAreilCouponRewardData(	132202	,	1	,	2	,	1.647	)	--	이동 속도의 마법석
g_pKRewardTable:AddAreilCouponRewardData(	132203	,	1	,	2	,	1.647	)	--	명중의 마법석
g_pKRewardTable:AddAreilCouponRewardData(	132204	,	1	,	2	,	1.647	)	--	회피의 마법석
g_pKRewardTable:AddAreilCouponRewardData(	132205	,	1	,	2	,	1.647	)	--	점프 속도의 마법석 
g_pKRewardTable:AddAreilCouponRewardData(	72510	,	1	,	2	,	1.647	)	--	추가 데미지의 마법석
g_pKRewardTable:AddAreilCouponRewardData(	72520	,	1	,	2	,	1.647	)	--	데미지 감소의 마법석 
g_pKRewardTable:AddAreilCouponRewardData(	132110	,	1	,	0.05	,	1.139	)	--	조화의 마법석
g_pKRewardTable:AddAreilCouponRewardData(	132111	,	1	,	0.05	,	1.139	)	--	신비의 마법석
g_pKRewardTable:AddAreilCouponRewardData(	132112	,	1	,	0.05	,	1.139	)	--	광휘의 마법석
g_pKRewardTable:AddAreilCouponRewardData(	132113	,	1	,	0.05	,	1.139	)	--	전투의 마법석
g_pKRewardTable:AddAreilCouponRewardData(	132114	,	1	,	0.05	,	1.139	)	--	증강의 마법석
g_pKRewardTable:AddAreilCouponRewardData(	132115	,	1	,	0.05	,	1.139	)	--	적중의 마법석
g_pKRewardTable:AddAreilCouponRewardData(	133365	,	1	,	0.07	,	1.178	)	--	정제된 엘의 조각(블레이즈 마스터)
g_pKRewardTable:AddAreilCouponRewardData(	133366	,	1	,	0.07	,	1.178	)	--	정제된 엘의 조각(프로즌 마스터)
g_pKRewardTable:AddAreilCouponRewardData(	133367	,	1	,	0.07	,	1.178	)	--	정제된 엘의 조각(포이즌 마스터)
g_pKRewardTable:AddAreilCouponRewardData(	133368	,	1	,	0.07	,	1.178	)	--	정제된 엘의 조각(마스터 피어싱)
g_pKRewardTable:AddAreilCouponRewardData(	133369	,	1	,	0.07	,	1.178	)	--	정제된 엘의 조각(마스터 쇼크)
g_pKRewardTable:AddAreilCouponRewardData(	133370	,	1	,	0.07	,	1.178	)	--	정제된 엘의 조각(마스터 스내치)
g_pKRewardTable:AddAreilCouponRewardData(	133371	,	1	,	0.07	,	1.178	)	--	정제된 엘의 조각(블레이즈 피어싱)
g_pKRewardTable:AddAreilCouponRewardData(	133372	,	1	,	0.07	,	1.178	)	--	정제된 엘의 조각(블레이즈 쇼크)
g_pKRewardTable:AddAreilCouponRewardData(	133373	,	1	,	0.07	,	1.178	)	--	정제된 엘의 조각(블레이즈 스내치)
g_pKRewardTable:AddAreilCouponRewardData(	133374	,	1	,	0.07	,	1.178	)	--	정제된 엘의 조각(프로즌 피어싱)
g_pKRewardTable:AddAreilCouponRewardData(	133375	,	1	,	0.07	,	1.178	)	--	정제된 엘의 조각(프로즌 쇼크)
g_pKRewardTable:AddAreilCouponRewardData(	133376	,	1	,	0.07	,	1.178	)	--	정제된 엘의 조각(프로즌 스내치)
g_pKRewardTable:AddAreilCouponRewardData(	133377	,	1	,	0.07	,	1.178	)	--	정제된 엘의 조각(포이즌 피어싱)
g_pKRewardTable:AddAreilCouponRewardData(	133378	,	1	,	0.07	,	1.178	)	--	정제된 엘의 조각(포이즌 쇼크)
g_pKRewardTable:AddAreilCouponRewardData(	133379	,	1	,	0.07	,	1.178	)	--	정제된 엘의 조각(포이즌 스내치) 
g_pKRewardTable:AddAreilCouponRewardData(	132469	,	1	,	3	,	1.715	)	--	활력의 포션
g_pKRewardTable:AddAreilCouponRewardData(	130165	,	1	,	2	,	1.647	)	--	완전 회복 포션
g_pKRewardTable:AddAreilCouponRewardData(	77200	,	1	,	2	,	1.647	)	--	근성 포션
g_pKRewardTable:AddAreilCouponRewardData(	500030	,	1	,	1	,	1.536	)	--	엘의 나무 씨앗
g_pKRewardTable:AddAreilCouponRewardData(	109995	,	1	,	2.4	,	1.677	)	--	루벤마을 특급 이동 티켓
g_pKRewardTable:AddAreilCouponRewardData(	109996	,	1	,	2.4	,	1.677	)	--	엘더마을 특급 이동 티켓
g_pKRewardTable:AddAreilCouponRewardData(	109997	,	1	,	2.4	,	1.677	)	--	베스마마을 특급 이동 티켓
g_pKRewardTable:AddAreilCouponRewardData(	109998	,	1	,	2.4	,	1.677	)	--	알테라마을 특급 이동 티켓
g_pKRewardTable:AddAreilCouponRewardData(	110832	,	1	,	2.4	,	1.677	)	--	페이타 특급 이동 티켓
g_pKRewardTable:AddAreilCouponRewardData(	110847	,	1	,	2.4	,	1.677	)	--	벨더 근교 특급 이동 티켓
g_pKRewardTable:AddAreilCouponRewardData(	132116	,	1	,	1.6	,	1.61	)	--	다크 베스바이트
g_pKRewardTable:AddAreilCouponRewardData(	132117	,	1	,	1.6	,	1.61	)	--	블루 베스바이트
g_pKRewardTable:AddAreilCouponRewardData(	132118	,	1	,	1.6	,	1.61	)	--	레드 베스바이트
g_pKRewardTable:AddAreilCouponRewardData(	212350	,	1	,	0.8	,	1.502	)	--	나소드 메가폰
g_pKRewardTable:AddAreilCouponRewardData(	212360	,	1	,	0.3	,	1.362	)	--	고성능 나소드 메가폰
g_pKRewardTable:AddAreilCouponRewardData(	109945	,	1	,	5	,	1.805	)	--	마법석
g_pKRewardTable:AddAreilCouponRewardData(	109955	,	1	,	3	,	1.715	)	--	고급 마법석
g_pKRewardTable:AddAreilCouponRewardData(	90001020	,	1	,	1	,	1.536	)	--	부활석(1개) 큐브
g_pKRewardTable:AddAreilCouponRewardData(	90001021	,	1	,	0.8	,	1.502	)	--	부활석(2개) 큐브
g_pKRewardTable:AddAreilCouponRewardData(	90001022	,	1	,	0.5	,	1.433	)	--	부활석(3개) 큐브
g_pKRewardTable:AddAreilCouponRewardData(	90001023	,	1	,	0.3	,	1.362	)	--	부활석(5개) 큐브
--]]
--}} 아리엘 쿠폰 보상

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
g_pKRewardTable:AddRewardData(10079, 132880, 5,  0 ) -- 할로윈 이벤트 : 할로윈 고스트 캔디 (평일 3개)
g_pKRewardTable:AddRewardData(10080, 132880, 10,  0 ) -- 할로윈 이벤트 : 할로윈 고스트 캔디 (주말 6개)
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(10081, 133107, 1,  0 ) -- 엘소드 엑스포 이벤트 : EWE 기념 큐브 1개
g_pKRewardTable:AddRewardData(10082, 133108, 1,  0 ) -- 엘소드 엑스포 이벤트 : 1st EWE 1개
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(10083, 133122, 1,  0 ) -- 카밀라의 선물 이벤트 : 카밀라의 선물 1개
g_pKRewardTable:AddRewardData(10084, 132696, 1,  0 ) -- 카밀라의 선물 이벤트 : 망각의 드링크(7일권) 큐브 1개
-----------------------------------------------------------------------
g_pKRewardTable:AddRewardData(10135, 90000720, 1,  0 ) -- 2차 보안 패드 보상
-----------------------------------------------------------------------



--------------------------------------------------------------------------------------------------------------------------------------------

g_pKRewardTable:AddRewardData(50000, 77180, 10,  0 ) -- 중급마나포션 10개
g_pKRewardTable:AddRewardData(50001, 109950, 5,  0 ) -- 축무강5개
g_pKRewardTable:AddRewardData(50002, 130047, 5,  0 ) -- 엘조불명

g_pKRewardTable:AddRewardData(50003, 90000016, 1,  0 ) -- 길드구해요

g_pKRewardTable:AddRewardData(50004, 90000007, 1,  0 ) -- 10레벨달성
g_pKRewardTable:AddRewardData(50005, 90000008, 1,  0 ) -- 20레벨달성
g_pKRewardTable:AddRewardData(50006, 90000009, 1,  0 ) -- 30레벨달성

g_pKRewardTable:AddRewardData(50007, 78120, 5,  0 ) -- jerky
g_pKRewardTable:AddRewardData(50008, 78210, 5,  0 ) -- soda

g_pKRewardTable:AddRewardData(50009, 90000017, 1,  0 ) -- 깜작큐브

g_pKRewardTable:AddRewardData(50010, 60000907, 1,  0 ) -- 출석권

g_pKRewardTable:AddRewardData(50011, 90000018, 1,  0 ) -- 흰국화

g_pKRewardTable:AddRewardData(50012, 130808, 1,  0 ) -- 망각의알약
g_pKRewardTable:AddRewardData(50013, 131427, 1,  0 ) -- 경험치15%메달

g_pKRewardTable:AddRewardData(50014, 90000061, 1,  0 ) -- 캐나다 국기
g_pKRewardTable:AddRewardData(50015, 90000060, 1,  0 ) -- 미국 국기
g_pKRewardTable:AddRewardData(50016, 90000062, 1,  0 ) -- 독립기념일 아이템

g_pKRewardTable:AddRewardData(50017,  77200, 1,  0 ) -- 근성도 회복 아이템 1개
g_pKRewardTable:AddRewardData(50018,  133131, 1,  0 ) -- 이벤트용 그노시스

g_pKRewardTable:AddRewardData(50019,  65000080, 1,  0 ) -- 칭호 이벤트

g_pKRewardTable:AddRewardData(50020,  90000188, 1,  0 ) -- 엘소드 부채

g_pKRewardTable:AddRewardData(50021,  90000183, 1,  0 ) -- 벨더아카데미 방학숙제

g_pKRewardTable:AddRewardData(50022,  90000016, 1,  0 ) -- 길드구해요

g_pKRewardTable:AddRewardData(50023,  85000513, 1,  0 ) -- 아리엘의 초보 지원 큐브
g_pKRewardTable:AddRewardData(50024,  85000514, 1,  0 ) -- Co-Bo사의 지원큐브 1
g_pKRewardTable:AddRewardData(50025,  85000515, 1,  0 ) -- Co-Bo사의 지원큐브 2
g_pKRewardTable:AddRewardData(50026,  85000516, 1,  0 ) -- Co-Bo사의 지원큐브 3
g_pKRewardTable:AddRewardData(50027,  85000517, 1,  0 ) -- Co-Bo사의 지원큐브 4
g_pKRewardTable:AddRewardData(50028,  85000518, 1,  0 ) -- Co-Bo사의 지원큐브 5
g_pKRewardTable:AddRewardData(50029,  131811, 1,  0 ) -- El Search Party Officer Set Cube (1 Day)

g_pKRewardTable:AddRewardData(50030,  160003, 1,  0 ) -- 선도부장의 위엄

g_pKRewardTable:AddRewardData(50031,  90000228, 1,  0 ) -- 두번째 단서
g_pKRewardTable:AddRewardData(50032,  90000214, 1,  0 ) -- 윌리엄 뽀루의 초대

g_pKRewardTable:AddRewardData(50033,  90000231, 1,  0 ) -- 페이스북
g_pKRewardTable:AddRewardData(50034,  90000232, 1,  0 ) -- 페이스북
g_pKRewardTable:AddRewardData(50035,  90000233, 1,  0 ) -- 페이스북
g_pKRewardTable:AddRewardData(50036,  90000234, 1,  0 ) -- 페이스북

g_pKRewardTable:AddRewardData(50037,  90000253, 5,  0 ) -- 윌리엄의 활력 드링크

g_pKRewardTable:AddRewardData(619, 215660, 1, 1 ) -- 코보 익스프레스 VIP 티켓 1일권

g_pKRewardTable:AddRewardData(50038, 90000271, 1, 0 ) -- Camilla's Skill Notebook

g_pKRewardTable:AddRewardData(50039, 90000320, 1, 0 ) -- 이브의 큐브
g_pKRewardTable:AddRewardData(50040, 90000323, 1, 0 ) -- 환영의 열쇠
g_pKRewardTable:AddRewardData(50041, 90000386, 1, 0 ) -- 추수감사절 칭호

g_pKRewardTable:AddRewardData(50042, 90000390, 1, 0 ) -- 끈기의 증표

g_pKRewardTable:AddRewardData(50043, 90000375, 1, 0 ) -- 여왕 나소드

g_pKRewardTable:AddRewardData(50044, 85000866, 1, 0 ) -- 크리스마스 선물
g_pKRewardTable:AddRewardData(50045, 85000860, 1, 0 ) -- 루돌프 빨간코

g_pKRewardTable:AddRewardData(50046, 90000450, 1, 0 ) -- 새해다짐(던전)
g_pKRewardTable:AddRewardData(50047, 90000451, 1, 0 ) -- 새해다짐(PVP)

g_pKRewardTable:AddRewardData(50048, 90000508, 1, 0 ) -- 루토주사위(30일)
g_pKRewardTable:AddRewardData(50049, 90000504, 1, 0 ) -- 비던입장권(엘더)
g_pKRewardTable:AddRewardData(50050, 90000505, 1, 0 ) -- 비던입장권(베스마)
g_pKRewardTable:AddRewardData(50051, 90000506, 1, 0 ) -- 비던입장권(알테라)


g_pKRewardTable:AddRewardData(50052, 90000510, 1, 0 ) -- 2달러
g_pKRewardTable:AddRewardData(50053, 90000511, 1, 0 ) -- 10달러
g_pKRewardTable:AddRewardData(50054, 90000512, 1, 0 ) -- 20달러
g_pKRewardTable:AddRewardData(50055, 90000513, 1, 0 ) -- 구정 아바타 큐브(15일)
g_pKRewardTable:AddRewardData(50056, 90000514, 1, 0 ) -- 붉은 봉투


g_pKRewardTable:AddRewardData(50057, 130808, 5, 0 ) -- 망각의 알약 5개
g_pKRewardTable:AddRewardData(50058, 90000534, 1, 0 ) -- 풋볼공

g_pKRewardTable:AddRewardData(50059, 90000546, 1, 0 ) -- 엔젤

g_pKRewardTable:AddRewardData(50060, 160025, 1, 0 ) -- 공존의 축제 의상 큐브
g_pKRewardTable:AddRewardData(50061, 85000912, 1, 0 ) -- 연금술사의 전투 지원 랜덤큐브	

g_pKRewardTable:AddRewardData(50062, 132812, 1, 0 ) -- 일급 마법석 랜덤 큐브
g_pKRewardTable:AddRewardData(50063, 500030, 5, 0 ) -- 엘의 나무 씨앗 5개
g_pKRewardTable:AddRewardData(50064, 130165, 10, 0 ) -- 완전회복 포션 10개
g_pKRewardTable:AddRewardData(50065, 135080, 1, 0 ) -- 부활석 5개 큐브

g_pKRewardTable:AddRewardData(50066, 200000000, 1, 0 ) -- 만우절 무기 큐브
g_pKRewardTable:AddRewardData(50067, 200000007, 1, 1 ) -- 피노키오

g_pKRewardTable:AddRewardData(50068, 65000644, 1, 0 ) -- 퀴즈퀴즈

g_pKRewardTable:AddRewardData(50069, 131856, 3, 0 ) -- 자연의 선물 주중
g_pKRewardTable:AddRewardData(50070, 131856, 5, 0 ) -- 자연의 선물 주말

g_pKRewardTable:AddRewardData(50071, 90000591, 1, 0 ) -- 엘소드 1주년 기념 쿠폰
g_pKRewardTable:AddRewardData(50072, 90000593, 1, 0 ) --  액세서리 랜덤 큐브
g_pKRewardTable:AddRewardData(50073, 120003100, 1, 0 ) -- 아리엘의 가열기
g_pKRewardTable:AddRewardData(50074, 131412, 1, 0 ) -- 플루오르 스톤 교환권

g_pKRewardTable:AddRewardData(50075, 120003016, 1, 0 ) -- 3ds 추첨권

g_pKRewardTable:AddRewardData(50076, 65000585, 1, 0 ) -- 비룡의 큐브

g_pKRewardTable:AddRewardData(50077, 90000670, 1, 0 ) -- 엘수색대 감사패

g_pKRewardTable:AddRewardData(50078, 90000656, 1, 0 ) -- 아리엘의 비약
g_pKRewardTable:AddRewardData(50079, 90000665, 1, 0 ) -- 우정의 큐브
g_pKRewardTable:AddRewardData(50080, 90000664, 1, 0 ) -- 끊을 수 없는 우정의 큐브

g_pKRewardTable:AddRewardData(50081, 85000931, 1, 0 ) -- 하멜의 지원군 큐브
g_pKRewardTable:AddRewardData(50082, 85000932, 1, 0 ) -- 하멜의 용사 큐브
g_pKRewardTable:AddRewardData(50083, 85000933, 1, 0 ) -- 하멜의 수호자 큐브
g_pKRewardTable:AddRewardData(50084, 85000934, 1, 0 ) -- 하멜의 절대자 큐브

g_pKRewardTable:AddRewardData(50085, 90000700, 1, 0 ) -- 하멜칭호


g_pKRewardTable:AddRewardData(51214, 90000685, 1, 0 ) -- 길드 꾸러미 큐브


g_pKRewardTable:AddRewardData(51215, 90000751, 1, 0 ) -- 돌아온 모험가의 큐브
g_pKRewardTable:AddRewardData(51216, 90000761, 1, 0 ) -- 코보 VIP 모험가 큐브
g_pKRewardTable:AddRewardData(51217, 90000730, 1, 30 ) -- 하멜의 하얀 늑대 칭호
g_pKRewardTable:AddRewardData(51220, 90000713, 1, 0 ) -- 청열쇠

g_pKRewardTable:AddRewardData(51218, 90000951, 1, 0 ) -- 캐나다의 날 상자
g_pKRewardTable:AddRewardData(51219, 90000952, 1, 0 ) -- 독립기념일 상자

g_pKRewardTable:AddRewardData(51221, 90000960, 1, 0 ) -- 아크엔젤 풀셋 1일권

-- 2012.07.11 카밀라의 기술 향상 큐브 3종 지급
g_pKRewardTable:AddRewardData(51222, 90000980, 1, 0 ) -- 카밀라의 기술 향상 큐브(기초)
g_pKRewardTable:AddRewardData(51223, 90000981, 1, 0 ) -- 카밀라의 기술 향상 큐브(중급)
g_pKRewardTable:AddRewardData(51224, 90000982, 1, 0 ) -- 카밀라의 기술 향상 큐브(상급)

-- 2012.07.11 카밀라의 약속 지급
g_pKRewardTable:AddRewardData(51225, 90000983, 1, 0 ) -- 카밀라의 약속(기초)
g_pKRewardTable:AddRewardData(51226, 90000984, 1, 0 ) -- 카밀라의 약속(중급)
g_pKRewardTable:AddRewardData(51227, 90000985, 1, 0 ) -- 카밀라의 약속(상급)

-- 2012.07.11 카밀라의 수상한 부적(1일권) 지급
g_pKRewardTable:AddRewardData(51228, 90000988, 1, 1 ) -- 카밀라의 수상한 부적(1일권)

-- 2012.07.11 치명타의 발견 10개 지급
g_pKRewardTable:AddRewardData(51229, 90000996, 10, 0 ) -- 치명타의 발견 10개

-- 2012.07.11 아리엘의 출석 선물상자 지급
g_pKRewardTable:AddRewardData(51230, 90001030, 1, 0 ) -- 아리엘의 출석 선물상자

-- 2012.07.18 파수병의 열쇠 지급(평일)
g_pKRewardTable:AddRewardData(51231, 90001051, 3, 0 ) -- 파수병의 열쇠

-- 2012.07.18 파수병의 열쇠 지급(주말)
g_pKRewardTable:AddRewardData(51232, 90001051, 5, 0 ) -- 파수병의 열쇠

-- 2012.07.25 마라톤 이벤트 각 지점별 도달 보상
g_pKRewardTable:AddRewardData(51233, 90000715, 1, 0 ) -- 첫 번째 지점 도달 보상 : 부활석 10개 큐브
g_pKRewardTable:AddRewardData(51234, 200000022, 1, 0 ) -- 두 번째 지점 도달 보상 : 엘리오스 게임 성화 큐브(3일권)
g_pKRewardTable:AddRewardData(51234, 200000021, 10, 0 ) -- 두 번째 지점 도달 보상 : 스포츠 드링크 10개
g_pKRewardTable:AddRewardData(51235, 130047, 10, 0 ) -- 세 번째 지점 도달 보상 : 엘의 조각(불명) 10개
g_pKRewardTable:AddRewardData(51236, 109955, 10, 0 ) -- 네 번째 지점 도달 보상 : 고급 마법석 10개
g_pKRewardTable:AddRewardData(51237, 200000020, 1, 0 ) -- 결승점 도달 보상 : 엘리오스 게임의 성화
g_pKRewardTable:AddRewardData(51237, 130047, 10, 0 ) -- 결승점 도달 보상 : 엘의 조각(불명) 10개
g_pKRewardTable:AddRewardData(51237, 109955, 10, 0 ) -- 결승점 도달 보상 : 고급 마법석 10개
g_pKRewardTable:AddRewardData(51237, 200000021, 10, 0 ) -- 결승점 도달 보상 : 스포츠 드링크 10개

-- 2012.07.25 마라톤 이벤트 각 지점별 도달 보상
g_pKRewardTable:AddRewardData(51238, 200000011, 1, 0 ) -- 엘리오스 게임(칭호)
g_pKRewardTable:AddRewardData(51239, 206730, 1, 0 ) -- 플루오르 스톤 LV.1
g_pKRewardTable:AddRewardData(51239, 206880, 1, 0 ) -- 축복받은 복원의 주문서 LV.1
g_pKRewardTable:AddRewardData(51240, 120003100, 1, 0 ) -- 아리엘의 얼음 조각상 가열기
g_pKRewardTable:AddRewardData(51240, 200000019, 1, 0 ) -- 도전자의 상징

-- 2012.08.01 청 2차 전직 접속 이벤트 보상
g_pKRewardTable:AddRewardData(51241, 90001101, 1, 0 ) -- 인내의 상징

-- 2012.08.01 청 2차 전직시 전직의 증표 3개 우편 지급
g_pKRewardTable:AddRewardData(51242, 90001090, 3, 0 ) -- 전직의 증표 3개

-- 2012.08.14 엘리오스 대륙에 닌자 출현?! 연막탄 큐브 우편 지급
g_pKRewardTable:AddRewardData(51243, 90001304, 1, 0 ) -- 연막탄 큐브

-- 2012.08.29 강력한 PVP 칭호를 경험하라 '고통을 이겨낸 자'칭호 우편 지급
g_pKRewardTable:AddRewardData(51244, 90001320, 1, 0 ) -- '고통을 이겨낸 자'칭호

-- 2012.09.12 해적 침공 방어전 결과 보상 우편 지급
g_pKRewardTable:AddRewardData(51245, 90001359, 1, 0 ) -- 전리품 1개
g_pKRewardTable:AddRewardData(51246, 90001361, 1, 0 ) -- 보급품 1개
g_pKRewardTable:AddRewardData(51247, 90001360, 1, 0 ) -- 고급 전리품 1개
g_pKRewardTable:AddRewardData(51248, 90001362, 1, 0 ) -- 고급 보급품 1개

-- 2012.09.12 해적 악세서리 큐브(1일권) 우편 지급
g_pKRewardTable:AddRewardData(51249, 90001400, 1, 0 ) -- 해적 악세서리 큐브(1일권)

-- 2012.09.26 마족의 흔적 1개 우편 지급
g_pKRewardTable:AddRewardData(51250, 90001410, 1, 0 ) -- 마족의 흔적 1개

-- 2012.09.26 홈커밍데이 이벤트 우편 보상 지급
g_pKRewardTable:AddRewardData(51251, 200720, 1, 1 )		-- 10월 3일 레벨 40이하 보상 : 축복의 메달(30%) 1일권
g_pKRewardTable:AddRewardData(51252, 90001022, 1, 0 ) 	-- 10월 4일 레벨 40이하 보상 : 부활석 큐브(3개)
g_pKRewardTable:AddRewardData(51253, 90001417, 1, 0 ) 	-- 10월 5일 레벨 40이하 보상 : 스타 아카데미 하복(3일권) 큐브
g_pKRewardTable:AddRewardData(51254, 109945, 3, 0 ) 	-- 10월 6일 레벨 40이하 보상 : 마법석 3개
g_pKRewardTable:AddRewardData(51255, 90001418, 1, 0 ) 	-- 10월 7일 레벨 40이하 보상 : 특수 액세서리 4종(1일권) 큐브
g_pKRewardTable:AddRewardData(51256, 78140, 10, 0 )		-- 10월 8일 레벨 40이하 보상 : 구운고기 10개
g_pKRewardTable:AddRewardData(51257, 500030, 3, 0 ) 	-- 10월 9일 레벨 40이하 보상 : 엘의 나무 씨앗 3개
g_pKRewardTable:AddRewardData(51258, 130808, 3, 0 ) 	-- 10월 3일 레벨 40이상 보상 : 망각의 알약 3개
g_pKRewardTable:AddRewardData(51259, 90001416, 5, 0 ) 	-- 10월 4일 레벨 40이상 보상 : 코보 완전 회복 포션 5개
g_pKRewardTable:AddRewardData(51260, 90001417, 1, 0 ) 	-- 10월 5일 레벨 40이상 보상 : 스타 아카데미 하복(3일권) 큐브
g_pKRewardTable:AddRewardData(51261, 130047, 3, 0 ) 	-- 10월 6일 레벨 40이상 보상 : 엘의 조각(불명) 3개
g_pKRewardTable:AddRewardData(51262, 90001419, 1, 0 ) 	-- 10월 7일 레벨 40이상 보상 : 기술의 반지 4종 큐브(1일권)
g_pKRewardTable:AddRewardData(51263, 78150, 10, 0 ) 	-- 10월 8일 레벨 40이상 보상 : 생선 구이 10개
g_pKRewardTable:AddRewardData(51264, 500030, 5, 0 ) 	-- 10월 9일 레벨 40이상 보상 : 엘의 나무 씨앗 5개

-- 2012.09.26 스팀 그린라이트 칭호 우편 지급
g_pKRewardTable:AddRewardData(51265, 90001420, 1, 0 ) 	-- 스팀 그린라이트 칭호1
g_pKRewardTable:AddRewardData(51266, 90001421, 1, 0 ) 	-- 스팀 그린라이트 칭호2
g_pKRewardTable:AddRewardData(51267, 90001422, 1, 0 ) 	-- 스팀 그린라이트 칭호3
g_pKRewardTable:AddRewardData(51268, 90001423, 1, 0 ) 	-- 스팀 그린라이트 칭호4

-- 2012.10.10 덫에 걸린 해츨링(유체) 우편 지급
g_pKRewardTable:AddRewardData(51269, 210000070, 1, 0 ) 	-- 덫에 걸린 해츨링(유체)

-- 2012.10.10 카밀라의 데일리 펫 훈련 매거진 우편 지급
g_pKRewardTable:AddRewardData(51270, 210000081, 1, 0 ) 	-- 카밀라의 데일리 펫 훈련 매거진

-- 2012.10.10 펫 훈련장 입장권 우편 지급
g_pKRewardTable:AddRewardData(51271, 210000075, 3, 0 ) 	-- 펫 훈련장 입장권 3개
g_pKRewardTable:AddRewardData(51272, 210000075, 5, 0 ) 	-- 펫 훈련장 입장권 5개

-- 2012.10.24 할로윈 데스사이즈 우편 지급
g_pKRewardTable:AddRewardData(51273, 210000131, 1, 1 ) 	-- 데스사이즈 - 조화 1일권
g_pKRewardTable:AddRewardData(51274, 210000132, 1, 1 ) 	-- 데스사이즈 - 신비 1일권
g_pKRewardTable:AddRewardData(51275, 210000133, 1, 1 ) 	-- 데스사이즈 - 광휘 1일권
g_pKRewardTable:AddRewardData(51276, 210000137, 1, 0 ) 	-- 데스사이즈 6종 1일권 큐브
g_pKRewardTable:AddRewardData(51277, 210000134, 1, 1 ) 	-- 데스사이즈 - 전투 1일권
g_pKRewardTable:AddRewardData(51278, 210000135, 1, 1 ) 	-- 데스사이즈 - 증강 1일권
g_pKRewardTable:AddRewardData(51279, 210000136, 1, 1 ) 	-- 데스사이즈 - 적중 1일권

g_pKRewardTable:AddRewardData(51280, 210000125, 1, 1 ) 	-- 아리엘의 할로윈 사탕 1개(평일)
g_pKRewardTable:AddRewardData(51281, 210000125, 2, 1 ) 	-- 아리엘의 할로윈 사탕 2개(주말)

-- 2012.11.07 레이븐 분노 이벤트 우편 지급
g_pKRewardTable:AddRewardData(51282, 160303, 1, 0 ) 	-- The Rage 칭호 15일권
g_pKRewardTable:AddRewardData(51283, 200700, 1, 15 ) 	-- 분노의 반지 15일권

-- 2012.11.21 검의 길 이벤트 우편 지급
g_pKRewardTable:AddRewardData(51284, 85001854,  1,  0 )  -- 활력의 검사 칭호
g_pKRewardTable:AddRewardData(51285, 85001855,  1,  0 )  -- 파괴의 검사 칭호
g_pKRewardTable:AddRewardData(51286, 85001856,  1,  15 )  -- 활력의 룬 (15일)
g_pKRewardTable:AddRewardData(51287, 85001857,  1,  15 )  -- 파괴의 룬 (15일)

-- 2012.11.21 검의 길 이벤트 검사의 깨달음 우편 지급
g_pKRewardTable:AddRewardData(51288, 85001873,  1,  0 )  -- 검사의 깨달음

-- 2012.11.28 추천인 이벤트 아리엘 연금술 비약 우편 지급
g_pKRewardTable:AddRewardData(51289, 90001532,  3,  0 )  -- 아리엘 연금술 비약
g_pKRewardTable:AddRewardData(51290, 90001546,  1,  0 )  -- 우정의 큐브
g_pKRewardTable:AddRewardData(51291, 90001543,  1,  0 )  -- 끊을 수 없는 우정의 큐브
g_pKRewardTable:AddRewardData(51292, 160250,  1,  0 )  -- 세나스의 무공훈장

-- 2012.12.07 시스나이트 전야 이벤트 콘웰의 현신(7일권) 우편 지급
g_pKRewardTable:AddRewardData(51293, 85001884,  1,  7 )  -- 콘웰의 현신 7일권

-- 2012.12.18 크리스마스 이벤트 크리스마스 선물 우편 지급
g_pKRewardTable:AddRewardData(51294, 109945,  5,  0 )  -- 마법석 5개
g_pKRewardTable:AddRewardData(51295, 109955,  5,  0 )  -- 고급 마법석 5개
g_pKRewardTable:AddRewardData(51296, 109950, 10,  0 )  -- 축복받은 무기 강화석 10개
g_pKRewardTable:AddRewardData(51297, 130047,  5,  0 )  -- 엘의 조각(불명) 5개
g_pKRewardTable:AddRewardData(51298, 90001022,  1,  0 )  -- 부활석 3개 큐브
g_pKRewardTable:AddRewardData(51299, 500030,  3,  0 )  -- 엘의 나무 씨앗 3개
g_pKRewardTable:AddRewardData(51300, 131412,  5,  0 )  -- 플루오르 스톤 교환권 5개
g_pKRewardTable:AddRewardData(51301, 243330,  1,  0 )  -- 크리스마스 한정 액세서리

-- 2012.12.18 시스나이트 이벤트 우편 지급
g_pKRewardTable:AddRewardData(51302, 85001892,  1,  0 )  -- 수습 모험가 기초 교육1
g_pKRewardTable:AddRewardData(51303, 85001909,  1,  0 )  -- 모험가 기초 교육 수강권
g_pKRewardTable:AddRewardData(51304, 85001910,  1,  0 )  -- 모험가 실무 교육 수강권
g_pKRewardTable:AddRewardData(51305, 85001911,  1,  0 )  -- 모험가 2차 직무 교육 수강권
g_pKRewardTable:AddRewardData(51306, 85001912,  1,  0 )  -- 모험가 승급 교육 수강권

-- 2012.12.27 못 다 이룬 연초 결심(접속 이벤트) 우편 지급
g_pKRewardTable:AddRewardData(51307, 85001930,  1,  0 )  -- 되찾은 의지

-- 2013.01.09 마법소녀의 날개 (접속 이벤트) 우편 지급
g_pKRewardTable:AddRewardData(51308, 180158,  1,  7 )  -- 마법소녀의 소망 7일권

-- 2013.01.16 이벤트 기간 동안 접속시 마법소녀의 희망(15일권)을 획득할 수 있다
g_pKRewardTable:AddRewardData(51309, 90001701,  1,  0 )  -- 마법소녀의 희망(15일권)

-- 2013.01.16 이벤트 기간 동안 접속 시 평일은 마법소녀의 수련장 입장권 3장을 주말에는 5장을 획득할 수 있다
g_pKRewardTable:AddRewardData(51310, 90001703,  3,  0 )  -- 마법소녀의 수련장 입장권 3장
g_pKRewardTable:AddRewardData(51311, 90001703,  5,  0 )  -- 마법소녀의 수련장 입장권 5장

-- 2013.01.16 마법 소녀의 열쇠 우편 지급
g_pKRewardTable:AddRewardData(51312, 85001929,  1,  0 )  -- 마법소녀의 수련장 입장권 5장

-- 태그 모드 서포터즈 (2013-01-30 ~ 2013-02-27)
g_pKRewardTable:AddRewardData(51313, 75000600,  1,  1 )  -- 태그 모드 지원1 마목 1일권
g_pKRewardTable:AddRewardData(51313, 85002000,  1,  0 )  -- 태그 모드 지원1 기반 4종 1일권
g_pKRewardTable:AddRewardData(51314, 85002001,  1,  0 )  -- 태그 모드 지원2 태그 모드 프로모션 무기 아바타 3종(1일권) 큐브

-- 새로운 영웅에 대한 단서_엘렌딜의 힘! (2013년 2월 6일 ~ 2013년 2월 12일) 
g_pKRewardTable:AddRewardData(51315, 85002010,  1,  0 )  -- 이벤트 기간 동안 30분 접속 시 “영웅에 대한 소식지” 우편 지급

-- 2013-02-9 ~ 2013-02-10 엘드랏실의 축복
g_pKRewardTable:AddRewardData(51316, 85002013,  1,  0 )  -- 이벤트 기간 내 주말 60분 접속 시 엘드랏실의 축복 우편 지급.

--  2013-01-30 ~ 2013-02-27 영광의 코인 : 태그 모드 승리 시 인벤토리 지급 / 인벤토리가 가득 찬 경우 우편 지급
g_pKRewardTable:AddRewardData(51317, 85002007,  1,  0 ) 

-- 2013년 2월 10일에 30분간 접속하는 모든 캐릭터에게 한복 1일권 큐브 지급(1P 색상)
g_pKRewardTable:AddRewardData(51318, 90001840,  1,  0 )

-- 2013-02-13 ~ 2013-02-26 트래핑 레인저 캐릭터로 접속 시 엘드라실의 신성한 큐브 지급(캐릭터 단위/10분/ 열쇠 있어야 오픈 가능)
g_pKRewardTable:AddRewardData(51319, 85002040,  1,  0 )

-- 점점 더 강해지는 적에 대비하라. (2013-03-06 ~ 2013-03-13)
g_pKRewardTable:AddRewardData(51320, 85002060,  1,  0 ) -- 건블레이드 (영구

-- 코보 용병단 활동 개시! (2013-03-13 ~ 2013-03-27)
g_pKRewardTable:AddRewardData(51321, 85002067,  1,  0 ) -- 코보 용병단 스타트업 큐브 열쇠

-- 미스 엘리오스 2013-02-27 ~ 2013-03-13
g_pKRewardTable:AddRewardData(51322, 200720,  1,  1 )	-- 30분 접속 시 경험치 메달 30% 1일권(ItemID 200720) 지급(캐릭터)
g_pKRewardTable:AddRewardData(51323, 67003746,  1,  0 )	-- 60분 접속시  아리엘의 플루오르 스톤 Lv3 ~ 5(ItemID 67003746) 지급(캐릭터)
g_pKRewardTable:AddRewardData(51324, 67003744,  1,  0 )	-- 60분 접속시  듀얼 마법석 랜덤 큐브(ItemID 67003744 ) 지급(캐릭터) 

g_pKRewardTable:AddRewardData(51325, 67003771,  1,  0 ) -- 2013-03-12 60분   접속 시 승리의 왕관 14일권 큐브 우편 지급

-- 길드원이 필요하다면? (2013-02-27 ~ 2013-03-13)
--[[
g_pKRewardTable:AddRewardData(51326, 85002110,  1,  0 ) -- 10분,2월 27일 이전 길드에 가입되어 있지 않던 캐릭터 길드 가입 프로모션 쿠폰
g_pKRewardTable:AddRewardData(51327, 85002110,  1,  0 ) -- 10분, 2월 28일 업데이트 이후 생성 캐릭터 길드 가입 프로모션 쿠폰
--]]

-- 1. 진정한 지휘관의 귀환 (2013-03-13 ~ 2013-03-27) 
g_pKRewardTable:AddRewardData(51326, 85002070,  1,  0 )	-- 돌아온 지휘관의 큐브 1

-- 봄방학 이벤트 2013-03-13 ~ 2013-04-02
g_pKRewardTable:AddRewardData(51327, 90001850,  1,  7 )	-- 성 패트릭 데이 모자 엘소드
g_pKRewardTable:AddRewardData(51327, 90001861,  1,  15 )	-- 클로버 페이스페인팅
g_pKRewardTable:AddRewardData(51328, 90001851,  1,  7 )	-- 성 패트릭 데이 모자 아이샤 
g_pKRewardTable:AddRewardData(51328, 90001861,  1,  15 )	-- 클로버 페이스페인팅
g_pKRewardTable:AddRewardData(51329, 90001852,  1,  7 )	-- 성 패트릭 데이 모자 레나
g_pKRewardTable:AddRewardData(51329, 90001861,  1,  15 )	-- 클로버 페이스페인팅
g_pKRewardTable:AddRewardData(51330, 90001853,  1,  7 )	-- 성 패트릭 데이 모자 레이븐
g_pKRewardTable:AddRewardData(51330, 90001861,  1,  15 )	-- 클로버 페이스페인팅
g_pKRewardTable:AddRewardData(51331, 90001854,  1,  7 )	-- 성 패트릭 데이 모자 이브
g_pKRewardTable:AddRewardData(51331, 90001861,  1,  15 )	-- 클로버 페이스페인팅
g_pKRewardTable:AddRewardData(51332, 90001855,  1,  7 )	-- 성 패트릭 데이 모자 청
g_pKRewardTable:AddRewardData(51332, 90001861,  1,  15 )	-- 클로버 페이스페인팅

-- Happy Easter!! (2013-03-20 ~ 2013-04-02)
g_pKRewardTable:AddRewardData(51333, 90001870,  1,  14 )	-- Easter Bunny 
g_pKRewardTable:AddRewardData(51334, 90001871,  1,  14 )	-- Easter Bunny 
g_pKRewardTable:AddRewardData(51335, 90001872,  1,  14 )	-- Easter Bunny 
g_pKRewardTable:AddRewardData(51336, 90001873,  1,  14 )	-- Easter Bunny 
g_pKRewardTable:AddRewardData(51337, 90001874,  1,  14 )	-- Easter Bunny 
g_pKRewardTable:AddRewardData(51338, 90001875,  1,  14 )	-- Easter Bunny 

-- 3/17일접속시 네잎클로버 1일권 증정
g_pKRewardTable:AddRewardData(51339, 90001866,  1,  1 )	-- 네잎클로버 1일권

-- 3. 나소드 여왕의 절대 권력_최강 이브로 업그레이드(2013-04-03 ~ 2013-04-16)
g_pKRewardTable:AddRewardData(51340, 85002093,  1,  0 )  -- 엘 에너지 캡슐

--  메모리 카드 지급_미션 던전 이벤트
g_pKRewardTable:AddRewardData(51341, 60005091,  1,  0 )  -- 나의 미션 메모리 카드 (A)
g_pKRewardTable:AddRewardData(51342, 60005092,  1,  0 )  -- 나의 미션 메모리 카드 (B)
g_pKRewardTable:AddRewardData(51343, 60005093,  1,  0 )  -- 나의 미션 메모리 카드 (C)
g_pKRewardTable:AddRewardData(51344, 60005094,  1,  0 )  -- 나의 미션 메모리 카드 (D)
g_pKRewardTable:AddRewardData(51345, 60005095,  1,  0 )  -- 나의 미션 메모리 카드 (E)
g_pKRewardTable:AddRewardData(51346, 60005096,  1,  0 )  -- 나의 미션 메모리 카드 (F)

--  보호의 부적 우편 지급_미션 던전 이벤트
g_pKRewardTable:AddRewardData(51347, 60005097,  1,  0 )  -- 보호 부적 평일 1장 40분
g_pKRewardTable:AddRewardData(51348, 60005097,  2,  0 )  -- 보호 부적 주말 2장 70분

--------------------------------------------------------------------------
--만우절 앜엔
g_pKRewardTable:AddRewardData(51349, 250000510, 1, 1 )
g_pKRewardTable:AddRewardData(51349, 250000511, 1, 1 )
g_pKRewardTable:AddRewardData(51349, 250000512, 1, 1 )
g_pKRewardTable:AddRewardData(51349, 250000513, 1, 1 )
g_pKRewardTable:AddRewardData(51349, 250000514, 1, 1 )
g_pKRewardTable:AddRewardData(51349, 250000515, 1, 1 )
g_pKRewardTable:AddRewardData(51349, 250000516, 1, 1 )
g_pKRewardTable:AddRewardData(51349, 250000517, 1, 1 )

g_pKRewardTable:AddRewardData(51350, 250000520, 1, 1 )
g_pKRewardTable:AddRewardData(51350, 250000521, 1, 1 )
g_pKRewardTable:AddRewardData(51350, 250000522, 1, 1 )
g_pKRewardTable:AddRewardData(51350, 250000523, 1, 1 )
g_pKRewardTable:AddRewardData(51350, 250000524, 1, 1 )
g_pKRewardTable:AddRewardData(51350, 250000525, 1, 1 )
g_pKRewardTable:AddRewardData(51350, 250000526, 1, 1 )
g_pKRewardTable:AddRewardData(51350, 250000527, 1, 1 )

g_pKRewardTable:AddRewardData(51351, 250000530, 1, 1 )
g_pKRewardTable:AddRewardData(51351, 250000531, 1, 1 )
g_pKRewardTable:AddRewardData(51351, 250000532, 1, 1 )
g_pKRewardTable:AddRewardData(51351, 250000533, 1, 1 )
g_pKRewardTable:AddRewardData(51351, 250000534, 1, 1 )
g_pKRewardTable:AddRewardData(51351, 250000535, 1, 1 )
g_pKRewardTable:AddRewardData(51351, 250000536, 1, 1 )
g_pKRewardTable:AddRewardData(51351, 250000537, 1, 1 )

g_pKRewardTable:AddRewardData(51352, 250000540, 1, 1 )
g_pKRewardTable:AddRewardData(51352, 250000541, 1, 1 )
g_pKRewardTable:AddRewardData(51352, 250000542, 1, 1 )
g_pKRewardTable:AddRewardData(51352, 250000543, 1, 1 )
g_pKRewardTable:AddRewardData(51352, 250000544, 1, 1 )
g_pKRewardTable:AddRewardData(51352, 250000545, 1, 1 )
g_pKRewardTable:AddRewardData(51352, 250000546, 1, 1 )
g_pKRewardTable:AddRewardData(51352, 250000547, 1, 1 )

g_pKRewardTable:AddRewardData(51353, 250000550, 1, 1 )
g_pKRewardTable:AddRewardData(51353, 250000551, 1, 1 )
g_pKRewardTable:AddRewardData(51353, 250000552, 1, 1 )
g_pKRewardTable:AddRewardData(51353, 250000553, 1, 1 )
g_pKRewardTable:AddRewardData(51353, 250000554, 1, 1 )
g_pKRewardTable:AddRewardData(51353, 250000555, 1, 1 )
g_pKRewardTable:AddRewardData(51353, 250000556, 1, 1 )
g_pKRewardTable:AddRewardData(51353, 250000557, 1, 1 )

g_pKRewardTable:AddRewardData(51354, 250000560, 1, 1 )
g_pKRewardTable:AddRewardData(51354, 250000561, 1, 1 )
g_pKRewardTable:AddRewardData(51354, 250000562, 1, 1 )
g_pKRewardTable:AddRewardData(51354, 250000563, 1, 1 )
g_pKRewardTable:AddRewardData(51354, 250000564, 1, 1 )
g_pKRewardTable:AddRewardData(51354, 250000565, 1, 1 )
g_pKRewardTable:AddRewardData(51354, 250000566, 1, 1 )
g_pKRewardTable:AddRewardData(51354, 250000567, 1, 1 )

-- 2. 고대 나소드의 신성한 코드_일렉트라는 어디에? (2013-04-03 ~ 2013-04-10 업데이트 전)
g_pKRewardTable:AddRewardData(51355, 180164, 1, 15 ) -- ”나소드 분광석”(15일) 
g_pKRewardTable:AddRewardData(51356, 135088, 1, 0 ) -- 코드 분석 회로

--이브 성장 찬스 티켓
g_pKRewardTable:AddRewardData(51357, 85002088,  1,  0 )	-- 이브 성장 찬스 티켓

-- 엘소드 미국 2주년 기념 대축제(2013-05-01~2013-05-07)
g_pKRewardTable:AddRewardData(51358, 120002740,  1,  1 )	-- 경험치 메달(50%) 1일권
g_pKRewardTable:AddRewardData(51359, 90001923,  1,  0 )	-- 아리엘의 뽀루의 발도장 랜덤 큐브
g_pKRewardTable:AddRewardData(51360, 212360,  1,  0 )	-- 고성능 나소드 메가폰 1개
g_pKRewardTable:AddRewardData(51361, 120003100,  1,  0 )	-- 아리엘의 가열기 1개
g_pKRewardTable:AddRewardData(51362, 200740,  1,  7 )	-- 프리미엄 상점 7일권
g_pKRewardTable:AddRewardData(51363, 500030,  5,  0 )	-- 엘의 나무 씨앗 5개
g_pKRewardTable:AddRewardData(51364, 200730,  5,  0 )	-- 스킬 되돌리기 메달 5개

-- 1.	공포 파괴자 강화!! (2013-05-01 ~ 2013-05-14)
g_pKRewardTable:AddRewardData(51365, 85002266,  1,  0 ) -- 이벤트 기간 동안 쉘링 가디언 전직시(캐시샵 구매 또는 퀘스트 클리어) ‘포병의 마음가짐’ 메일로 획득 가능

-- 의문의 몬스터 카드! (2013년 04월 24일~05월07일)
g_pKRewardTable:AddRewardData(51366, 60005023,  5,  0 ) -- 의문의 몬스터 카드 5개

-- 카드 캡터 뽀루 등장! (2013년 04월 24일~05월07일)
g_pKRewardTable:AddRewardData(51367, 60005046,  1,  0 ) -- 몬스터 카드 수집가의 모자(30일권)

--------------------------------------------------------------------------
-- 2013.04.24 대전시즌2 개편 이벤트 
g_pKRewardTable:AddRewardData(51368, 85002316, 1, 0 ) --승부의 세계, 승자의 코인(1개)
g_pKRewardTable:AddRewardData(51369, 85002282, 1, 0 ) --새로운 대전을 즐기자, 1번째 배치경기, 그레이트 비틀 아바타 풀세트 큐브(30일권)
g_pKRewardTable:AddRewardData(51369, 85002283, 1, 0 ) --새로운 대전을 즐기자, 1번째 배치경기, 체험판 대전 전용 장비 풀세트 큐브(15일권)
g_pKRewardTable:AddRewardData(51370, 85002317, 1, 0 ) --새로운 대전을 즐기자, 랭크 받을 경우, 승부의 세계 도전장(1단계)
g_pKRewardTable:AddRewardData(51370, 85002314, 1, 0 ) --새로운 대전을 즐기자,랭크 받을 경우, 투사의 방패 액세서리 큐브(15일권)
g_pKRewardTable:AddRewardData(51371, 85002282, 1, 0 ) --새로운 대전을 즐기자, 1번째 배치경기, 그레이트 비틀 아바타 풀세트 큐브(30일권)
g_pKRewardTable:AddRewardData(51371, 85002340, 1, 0 ) --새로운 대전을 즐기자, 1번째 배치경기, 대전 전용 무기 아바타(15일권) 큐브
g_pKRewardTable:AddRewardData(51372, 85002317, 1, 0 ) --새로운 대전을 즐기자, 랭크 받을 경우, 승부의 세계 도전장(1단계)
g_pKRewardTable:AddRewardData(51372, 85002315, 1, 0 ) --새로운 대전을 즐기자, 랭크 받을 경우, 투사의 방패 액세서리 큐브(7일권)
---------------------------------------------------------------------------

-- 필드 전야 5/29 ~ 6/3
g_pKRewardTable:AddRewardData(51373, 85002337, 1, 0 ) -- 바코드가 적힌 쿠폰 
g_pKRewardTable:AddRewardData(51374, 85002330, 1, 0 ) -- 필드 100% 즐기기 필수 가이드북
g_pKRewardTable:AddRewardData(51375, 85002339, 1, 0 ) -- 필드 모험 준비 패키지

g_pKRewardTable:AddRewardData(51376, 90002150, 1, 0 ) -- 밀리터리 큐브

-- 필드 업데이트 기념 2013-06-04 ~ 2013-06-18
g_pKRewardTable:AddRewardData(51377, 85002460,  1,  0 ) -- 필드 쿠키 
g_pKRewardTable:AddRewardData(51378, 85002462,  1,  0 ) -- 황금 필드 쿠키 

--* 제목 : 인피니티 소드의 등장
--* 이벤트 기간 : 2013년 6월 19일 ~ 2013년 6월 25일 (1주일)
g_pKRewardTable:AddRewardData(51379, 85002541,  1,  0 ) -- 인피니티 소드 준비 큐브
g_pKRewardTable:AddRewardData(51380, 85002542,  1,  0 ) -- 미제련된 무한의 콘웰

--2. 코보의 신규 유저 지원(2013-06-19~2013-07-09)
--북미 계정 유저들은 첫 캐릭터가 30분 접속시 해당 큐브 획득 가능(접속 이벤트)
g_pKRewardTable:AddRewardData(51381, 90002161,  1,  0 ) -- 1레벨 큐브
g_pKRewardTable:AddRewardData(51382, 90002162,  1,  0 ) -- 4레벨 큐브
g_pKRewardTable:AddRewardData(51383, 90002163,  1,  0 ) -- 7레벨 큐브
g_pKRewardTable:AddRewardData(51384, 90002164,  1,  0 ) -- 10레벨 큐브
g_pKRewardTable:AddRewardData(51385, 90002165,  1,  0 ) -- 15레벨 큐브
g_pKRewardTable:AddRewardData(51386, 90002166,  1,  0 ) -- 20레벨 큐브
g_pKRewardTable:AddRewardData(51387, 90002167,  1,  0 ) -- 23레벨 큐브
g_pKRewardTable:AddRewardData(51388, 90002168,  1,  0 ) -- 26레벨 큐브
g_pKRewardTable:AddRewardData(51389, 90002169,  1,  0 ) -- 29레벨 큐브
g_pKRewardTable:AddRewardData(51390, 90002170,  1,  0 ) -- 32레벨 큐브
g_pKRewardTable:AddRewardData(51391, 90002171,  1,  0 ) -- 35레벨 큐브

--ESUS_컴백 이벤트&인피니티소드 이벤트 (2013-06-26 ~ 2013-07-09)
-- 복귀유저
g_pKRewardTable:AddRewardData(51392, 85002610,  1,  0 ) -- 기본 아바타 무기(영구) 랜덤 큐브
g_pKRewardTable:AddRewardData(51392, 85002600,  1,  0 ) -- 돌아온 영웅의 칭호 (15일권)
g_pKRewardTable:AddRewardData(51393, 85002601,  1,  0 ) -- 돌아온 영웅의 증표 1개
-- 기존, 신규유저
g_pKRewardTable:AddRewardData(51394, 85002603,  1,  0 ) -- 성실한 모험가의 증표 1개
g_pKRewardTable:AddRewardData(51394, 85002602,  1,  0 ) -- 성실한 모험가의 칭호 (1일권)
-- 주말 동안 매일 모든 유저 60분 접속 시 돌아온 영웅의 코인 우편 보상 획득
g_pKRewardTable:AddRewardData(51395, 85002604,  1,  0 ) -- 영웅의 코인 1개
-- 무한의 큐브 (2013-06-26 ~ 2013-07-09)
g_pKRewardTable:AddRewardData(51396, 85002800,  1,  0 ) -- 미약한 무한의 큐브 1개
g_pKRewardTable:AddRewardData(51397, 85002801,  1,  0 ) -- 무한의 큐브 1개
g_pKRewardTable:AddRewardData(51397, 85002804,  1,  0 ) -- 다크엘의 결정 1개
g_pKRewardTable:AddRewardData(51398, 85002802,  1,  0 ) -- 진화된 무한의 큐브 1개

--남미 신규 유저 특전(2013-06-19~2013-07-09)
g_pKRewardTable:AddRewardData(51399, 90002160,  1,  0 ) -- Trial of Elsword  칭호

-- 아리엘의 감사 보상(2013-07-17 ~ 2013-07-23)
g_pKRewardTable:AddRewardData(51400, 90002203, 1,  0 ) -- 망각의 드링크(7일권) 큐브 1개

-- 디멘션 위치 전직을 준비하자.  2013년 07월 24일 ~ 2013년 07월 31일
g_pKRewardTable:AddRewardData(51401, 90002191,  1,  0 ) -- 디멘션 위치 준비 큐브

--남미 코보 서포트 큐브 1개 
g_pKRewardTable:AddRewardData(51402, 90002210,  1,  0 )

-- 나와 전야 이벤트
g_pKRewardTable:AddRewardData(51403, 85002560,  1,  0 ) -- 30분 접속 시 풍고족의 납치를 알리는 “풍고족의 서신”지급

-- 나와 이벤트
g_pKRewardTable:AddRewardData(51404, 80002140, 1, 0 ) --킹 나소드 소굴 입장 티켓
g_pKRewardTable:AddRewardData(51405, 80002141, 1, 0 ) --아기 퐁고의 메아리
g_pKRewardTable:AddRewardData(51406, 80002142, 1, 0 ) --나소드의 비밀 열쇠
g_pKRewardTable:AddRewardData(51407, 80002143, 1, 0 ) --킹 나소드의 비밀 열쇠

-- 나와 전야 후속 조치
g_pKRewardTable:AddRewardData(51408, 80002130, 1, 0 ) --1분 접속 시 “강열한 에렌딜의 열쇠” 1장 지급
g_pKRewardTable:AddRewardData(51409, 80002131, 1, 0 ) --1분 접속 시 “온유한 엘렌딜의 열쇠” 1장 지급
g_pKRewardTable:AddRewardData(51410, 80002132, 1, 0 ) --1분 접속 시 “내유외강 엘렌딜의 열쇠” 1장 지급

-- 스팀 이벤트
g_pKRewardTable:AddRewardData(51411, 90002240, 1, 0 ) -- 스팀 유저가 아닌 계정으로부터 접속하는 모든 캐릭터들에게 아래의 칭호 지급 
g_pKRewardTable:AddRewardData(51412, 130633, 1, 7 ) -- 7/27일 13:00~ 13:59분 사이에 접속하는 모든 캐릭터 망각의 드링크(7일권)
g_pKRewardTable:AddRewardData(51413, 90002270, 1, 0 ) -- 7/27일에 접속하는 모든 캐릭터 금강 천야차 올세트 큐브(1일권)
g_pKRewardTable:AddRewardData(51414, 90002271, 1, 0 ) -- 7/28일에 접속하는 모든 캐릭터 마린룩 풀세트 큐브(1일권)
g_pKRewardTable:AddRewardData(51415, 90002220, 1, 0 ) -- 스팀 유저 모든 캐릭에게 1레벨 큐브 지급

-- 베커 전야 이벤트
g_pKRewardTable:AddRewardData(51416, 85003031,  1,  0 ) -- 베테랑 커맨더 준비 큐브
g_pKRewardTable:AddRewardData(51417, 85001663,  1,  0 ) -- 듀얼 마법석 랜덤 큐브	
g_pKRewardTable:AddRewardData(51418, 85002094,  1,  0 ) -- 아리엘이 플루오르 스톤 교환권	

-- 배틀 세라프 전야 이벤트
g_pKRewardTable:AddRewardData(51419, 80002201,  1,  0 ) -- 배틀 세라프 준비 큐브
g_pKRewardTable:AddRewardData(51420, 80002202,  1,  0 ) -- 세라프 코드 A
g_pKRewardTable:AddRewardData(51421, 80002203,  1,  0 ) -- 세라프 코드 B
g_pKRewardTable:AddRewardData(51422, 80002204,  1,  0 ) -- 세라프 코드 C
g_pKRewardTable:AddRewardData(51423, 80002205,  1,  0 ) -- 세라프 코드 D
g_pKRewardTable:AddRewardData(51424, 80002206,  1,  0 ) -- 세라프 코드 랜덤 큐브

-- 필드 보스 이벤트
g_pKRewardTable:AddRewardData(51425, 60006500,  1,  20 ) -- 카메라 ES-888(블랙)
g_pKRewardTable:AddRewardData(51426, 60006541,  1,  0 ) -- 대박 필드 보스 큐브

-- 택틱컬 트루퍼 전야
g_pKRewardTable:AddRewardData( 51427, 80002241,  1,  0 ) -- 택티컬 트루퍼 준비 큐브
g_pKRewardTable:AddRewardData( 51428, 80002242,  1,  0 ) -- 디스프로즌 에너지

-- 13일 금요일 이벤트
g_pKRewardTable:AddRewardData( 51429, 90002280,  1,  3 ) -- 제이슨 마스크

-- 택티컬 트루퍼(2013년 10월 02일 ~ 2013년 10월 8일)
g_pKRewardTable:AddRewardData( 51430, 80002255,  1,  0 ) -- 모든 캐릭터에게 60분간 접속시 캐릭터 카드 랜덤 큐브 
-- 할로윈 전야(2013년 10월 09일 ~ 2013년 10월 22일)
g_pKRewardTable:AddRewardData( 51431, 85003050,  1,  0 ) -- 이벤트 기간 중 30분 접속 시 캐릭터 단위로 지급 신인 할로윈 디자이너 칭호 (15일권)
g_pKRewardTable:AddRewardData( 51432, 85003051,  1,  0 ) -- 이벤트 기간 중 30분 접속 시 캐릭터 단위로 지급 전설의 할로윈 디자이너 칭호(15일권)

--{{ 아이템 개편 이벤트 (2013-10-16 ~ 2013-10-29)
-- 아이템 개편 기념 주말 특별 이벤트 (2013-10-16 ~ 2013-10-29)
g_pKRewardTable:AddRewardData( 51433, 60007561,  1,  0 ) -- (2013-10-19 ~ 2013-10-20) 루리엘의 축복받은 시공간의 주문서 교환권
g_pKRewardTable:AddRewardData( 51434, 60007580,  1,  0 ) -- (2013-10-26 ~ 2013-10-27) 루리엘의 축복받은 시공간의 주문서(연동레벨)
-- 아이템 개편 기념 강화 지원 이벤트 (2013-10-23 ~ 2013-10-29)
g_pKRewardTable:AddRewardData( 51435, 85002094,  1,  0 ) -- 매일 루리엘의 플루오르스톤 교환권
g_pKRewardTable:AddRewardData( 51438, 60007562,  1,  0 ) -- 아이템을 미감정 상태로 되돌릴 때마다 “아이템 감정 증명서” 1개 지급
g_pKRewardTable:AddRewardData( 51439, 60007560,  1,  0 ) -- (구) 아이템을 신 아이템으로 교환을 하면 신 아이템 체험 증명서 1개 지급
--}}

--{{ 할로윈 이벤트 2013년 10월 23일 ~ 2013년 11월 5일
--할로윈 연회 참석 준비
g_pKRewardTable:AddRewardData( 51436, 85003490,  1,  0 ) -- 10분 동안 접속 시 할로위치(15일권) 지급
g_pKRewardTable:AddRewardData( 51437, 85003491,  1,  0 ) -- 0분 동안 접속 시 매일 할로윈 몬스터 코스프레 교환권 1개 지급
g_pKRewardTable:AddRewardData( 51440, 85003500,  1,  0 ) -- 주말 및 할로윈 당일(10/26 ~ 10/27, 10/31, 11/2~11/3)에 120분 동안 연속으로 접속 시 빛나는 할로윈 몬스터의 영혼 1개 지급
--}}

-- 스킬트리 개편 이벤트 2013-11-06 정기 점검 후 ~ 2013-11-20 정기 점검 전
-- 복귀 유저와 성실 유저를 위한 선물
g_pKRewardTable:AddRewardData( 1505, 67006456, 1, 0 ) -- 복귀 유저 인증 티켓
g_pKRewardTable:AddRewardData( 1506, 67006457, 1, 0 ) -- 성실 유저 인증 티켓

-- 복귀 유저를 위한 선물
-- 11/6, 11/13 강화를 하자!(1)
g_pKRewardTable:AddRewardData( 1507, 83000193, 1, 0 ) -- 루리엘의 플루오르스톤(Lv4)
g_pKRewardTable:AddRewardData( 1507, 67006451, 10, 0 ) -- 루리엘의 망각의 알약 10개
g_pKRewardTable:AddRewardData( 1508, 83000194, 1, 0 ) -- 루리엘의 플루오르스톤(Lv5)
g_pKRewardTable:AddRewardData( 1508, 67006451, 10, 0 ) -- 루리엘의 망각의 알약 10개
-- 11/7, 11/14 강화를 하자!(2)
g_pKRewardTable:AddRewardData( 1509, 83000193, 1, 0 ) -- 루리엘의 플루오르스톤(Lv4)
g_pKRewardTable:AddRewardData( 1509, 215670, 1, 1 ) -- 마나민트 츄잉껌(1일권)
g_pKRewardTable:AddRewardData( 1510, 83000194, 1, 0 ) -- 루리엘의 플루오르스톤(Lv5)
g_pKRewardTable:AddRewardData( 1510, 215670, 1, 1 ) -- 마나민트 츄잉껌(1일권)
-- 11/8, 11/15 강화를 하자!(3)
g_pKRewardTable:AddRewardData( 1511, 83000193, 1, 0 ) -- 루리엘의 플루오르스톤(Lv4)
g_pKRewardTable:AddRewardData( 1511, 130633, 1, 1 ) -- 망각의 드링크(1일권)
g_pKRewardTable:AddRewardData( 1512, 83000194, 1, 0 ) -- 루리엘의 플루오르스톤(Lv5)
g_pKRewardTable:AddRewardData( 1512, 130633, 1, 1 ) -- 망각의 드링크(1일권)
-- 11/9, 11/16 감정을 해 보자!(1)
g_pKRewardTable:AddRewardData( 1513, 60007574, 1, 0 ) -- 루리엘의 축복받은 시공간의 주문서(Lv4)
g_pKRewardTable:AddRewardData( 1513, 75000600, 1, 1 ) -- 마목2 (1일권)
g_pKRewardTable:AddRewardData( 1514, 60007575, 1, 0 ) -- 루리엘의 축복받은 시공간의 주문서(Lv5)
g_pKRewardTable:AddRewardData( 1514, 75000600, 1, 1 ) -- 마목2 (1일권)
--11/10, 11/17 감정을 해 보자!(2)
g_pKRewardTable:AddRewardData( 1515, 60007574, 1, 0 ) -- 루리엘의 축복받은 시공간의 주문서(Lv4)
g_pKRewardTable:AddRewardData( 1515, 67006458, 1, 0 ) -- 기술의 반지 랜덤큐브 (1일권)
g_pKRewardTable:AddRewardData( 1516, 60007575, 1, 0 ) -- 루리엘의 축복받은 시공간의 주문서(Lv5)
g_pKRewardTable:AddRewardData( 1516, 67006458, 1, 0 ) -- 기술의 반지 랜덤큐브 (1일권)
--11/11, 11/18 감정을 해 보자!(3)
g_pKRewardTable:AddRewardData( 1517, 60007574, 1, 0 ) -- 루리엘의 축복받은 시공간의 주문서(Lv4)
g_pKRewardTable:AddRewardData( 1517, 67006452, 5, 0 ) -- 루리엘의 마나 에릭실 5개
g_pKRewardTable:AddRewardData( 1518, 60007575, 1, 0 ) -- 루리엘의 축복받은 시공간의 주문서(Lv5)
g_pKRewardTable:AddRewardData( 1518, 67006452, 5, 0 ) -- 루리엘의 마나 에릭실 5개
--11/12, 11/19 감정을 해 보자!(4)
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

-- 2013.11.06 ESJP_추천인 이벤트
g_pKRewardTable:AddRewardData(1531, 90003028, 1, 0 ) -- 우정의 날개

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

-- 추수감사절 이벤트 2013-11-27 00:00 ~ 2013-12-03 23:59
-- 가을걷이 필수 아이템
g_pKRewardTable:AddRewardData(1549, 90003030, 1, 0 ) -- 농기구 큐브
-- 추수감사절의 축복 
g_pKRewardTable:AddRewardData(1550, 90003039, 1, 0 ) -- 추수감사절의 축복 
-- 추수 감사절 축복의 여운 (11/29)
g_pKRewardTable:AddRewardData(1551, 210000226, 1, 0 ) -- 루리엘의 얼음 조각상 가열기

-- 2013.12.04 어둠의 문 개편 이벤트
g_pKRewardTable:AddRewardData(1552, 67006211, 1, 0 ) -- 새로운 어둠의 등장에 대한 지침서,

-- 2013.12.18 아라1차전직이벤트 
g_pKRewardTable:AddRewardData(1553, 60007347, 1, 0 ) -- 소선을 위한 특별 선물 큐브A
g_pKRewardTable:AddRewardData(1554, 60007348, 1, 0 ) -- 소선을 위한 특별 선물 큐브B

-- 2013.12.18 제천 이벤트
g_pKRewardTable:AddRewardData(1555, 70007200, 1, 0 ) -- 아라, 아라 응원 선물 1개
g_pKRewardTable:AddRewardData(1556, 70007209, 1, 0 ) -- 아라이외, 아라 서포터 큐브 1개

-- 소선 이벤트
-- 아라 업데이트 기념 이벤트
g_pKRewardTable:AddRewardData(1557, 60007352, 1, 0 ) -- 빛 나는 푸른 구미호 꼬리 액세서리 2일권 큐브
g_pKRewardTable:AddRewardData(1558, 60007353, 1, 0 ) -- 빛 나는 붉은 구미호 꼬리 액세서리 2일권 큐브
g_pKRewardTable:AddRewardData(1559, 85002094, 1, 0 ) -- 루리엘의 플루오르 스톤 교환권 1개
g_pKRewardTable:AddRewardData(1560, 85002095, 1, 0 ) -- 루리엘의 축복 받은 복원의 주문서 1개
g_pKRewardTable:AddRewardData(1561, 60007561, 1, 0 ) -- 루리엘의 시공간의 주문서 교환권 1개
g_pKRewardTable:AddRewardData(1562, 109950, 10, 0 ) -- 축복 받은 무기 강화석 10개
g_pKRewardTable:AddRewardData(1562, 109965, 20, 0 ) -- 축복 받은 방어구 강화석 20개

-- 2013.12.04 은행 공유 이벤트
g_pKRewardTable:AddRewardData(1564, 65000700, 1, 15 ) -- 휴대용 강철금고 (15일권)
g_pKRewardTable:AddRewardData(1565, 65000700, 1, 0 ) -- 휴대용 강철금고
g_pKRewardTable:AddRewardData(1565, 65000702, 1, 0 ) -- 루리엘의 쿠폰
g_pKRewardTable:AddRewardData(1566, 65000705, 1, 0 ) -- 루리엘의 고객 감동 선물


-- 2013.12.18 크리스 마스 이벤트
g_pKRewardTable:AddRewardData(2000, 153000085, 1, 0 ) -- 2013.12.18 크리스마스 특별 선물 이벤트  ( 폴라 베어 코스프레 세트(한벌) 1개 )

-- 2013.12.27 신년 이벤트
g_pKRewardTable:AddRewardData(2001, 153000094, 1, 0 ) -- 2013.12.27 2013년 마지막 접속 이벤트  ( 2013년 마지막 접속 인증 티켓 1개 )

g_pKRewardTable:AddRewardData(2002, 153000096, 1, 0 ) -- 2013.12.27 2013년 라스트 미션  ( 만렙 서포트 큐브 1개 )
g_pKRewardTable:AddRewardData(2003, 153000097, 1, 0 ) -- 2013.12.27 2013년 라스트 미션  ( 만렙 ALL 큐브 1개 )
g_pKRewardTable:AddRewardData(2004, 210000226, 3, 0 ) -- 2013.12.27 2013년 라스트 미션  ( 루리엘의 얼음 조각상 가열기 3개 )

g_pKRewardTable:AddRewardData(2005, 153000167, 1, 0 ) -- 2013.12.27  2014년 퍼스트 미션   ( 경험치100%메달(3일권) 1개 )
g_pKRewardTable:AddRewardData(2006, 70007030, 1, 0 ) -- 2013.12.27  2014년 퍼스트 미션   ( 루리엘의 그노시스의 축복(30SP, 7일권) 1개 )
g_pKRewardTable:AddRewardData(2007, 153000102, 1, 0 ) -- 2013.12.27  2014년 퍼스트 미션   ( 6강 장비 풀세트 큐브(22레벨) 1개 )
g_pKRewardTable:AddRewardData(2008, 75000600, 1, 15 ) -- 2013.12.27  2014년 퍼스트 미션   ( 마법의 목걸이(15일권) 1개 )
g_pKRewardTable:AddRewardData(2008, 153000101, 1, 0 ) -- 2013.12.27  2014년 퍼스트 미션   ( 2014년 새해 특별 패키지 구매권 1개 )
g_pKRewardTable:AddRewardData(2009, 109950, 10, 0 ) -- 2013.12.27  2014년 퍼스트 미션   ( 축무강 10개 )
g_pKRewardTable:AddRewardData(2009, 109965, 30, 0 ) -- 2013.12.27  2014년 퍼스트 미션   ( 축방강 30개 )
g_pKRewardTable:AddRewardData(2009, 109955, 10, 0 ) -- 2013.12.27 2014년 퍼스트 미션   ( 고마 10개 )
g_pKRewardTable:AddRewardData(2010, 60007270, 1, 0 ) -- 2013.12.27  2014년 퍼스트 미션   ( 루리엘의 강화 부적 LV7 1개 )

g_pKRewardTable:AddRewardData(2011, 130047, 40, 0 ) -- 2013.12.27  2014년 퍼스트 미션   ( 엘조불명 40개 )
g_pKRewardTable:AddRewardData(2012, 133388, 1, 0 ) -- 2013.12.27  2014년 퍼스트 미션   ( 정제된 엘의 조각 랜덤 큐브 1개 )
g_pKRewardTable:AddRewardData(2013, 153000103, 1, 0 ) -- 2013.12.27  2014년 퍼스트 미션   ( 아바타 풀 세트 큐브(30일권) 1개 )
g_pKRewardTable:AddRewardData(2014, 153000104, 1, 0 ) -- 2013.12.27  2014년 퍼스트 미션   ( 포니 헤드 액세서리 1개 )
g_pKRewardTable:AddRewardData(2015, 153000104, 1, 3 ) -- 2013.12.27 2014년 첫 접속 인증  ( 포니 헤드 액세서리 (3일권) 1개 )


-- 2014 탈 것 이벤트
g_pKRewardTable:AddRewardData(2016, 550001, 1, 3 ) -- 라이딩 체험 ( 돌진 전차 모비 RT (1일권) )
g_pKRewardTable:AddRewardData(2017, 550011, 1, 3 ) -- 라이딩 체험 ( 바람의 코우시카 (1일권) )
g_pKRewardTable:AddRewardData(2018, 550021, 1, 3 ) -- 라이딩 체험 ( 에이션트 라이딩 뽀루 (1일권) )
g_pKRewardTable:AddRewardData(2019, 550001, 1, 3 ) -- 라이딩 체험 ( 돌진 전차 모비 RT (1일권) )
g_pKRewardTable:AddRewardData(2019, 550011, 1, 3 ) -- 라이딩 체험 ( 바람의 코우시카 (1일권) )
g_pKRewardTable:AddRewardData(2019, 550021, 1, 3 ) -- 라이딩 체험 ( 에이션트 라이딩 뽀루 (1일권) )
g_pKRewardTable:AddRewardData(2020, 67006347, 1, 0 ) -- 프로 라이더를 위한 연습(감사의 편지)
g_pKRewardTable:AddRewardData(2021, 67006749, 1, 0 ) -- 프로 라이더를 위한 특별 선물 (루리엘의 고대 화석 판별기)

-- 2014 샌더던전 3,4 이벤트
g_pKRewardTable:AddRewardData(2022, 60007468, 1, 0 ) -- 샌더 마을에서의 여정(샌더 액세서리 큐브)

-- 2014 소마 이벤트
g_pKRewardTable:AddRewardData(2023, 60008000, 1, 0 ) -- '거침없는 그녀' 큐브
g_pKRewardTable:AddRewardData(2024, 60008003, 1, 0 ) -- '거침없는 소마' 큐브

g_pKRewardTable:AddRewardData(2025, 130047, 10, 0 ) -- 엘의 조각(불명) 10개
g_pKRewardTable:AddRewardData(2025, 109955, 5, 0 ) -- 고급 마법석 5개

g_pKRewardTable:AddRewardData(2026, 130047, 20, 0 ) -- 엘의 조각(불명) 20개
g_pKRewardTable:AddRewardData(2026, 109955, 10, 0 ) -- 고급 마법석 10개
g_pKRewardTable:AddRewardData(2026, 85003780, 1, 0 ) -- 글레이셜 아바타(3일권) 풀세트 큐브

g_pKRewardTable:AddRewardData(2027, 200640, 1, 7 ) -- 깜찍한 토끼 가방(7일권)
g_pKRewardTable:AddRewardData(2027, 90001106, 1, 0 ) -- 부활석 5개 큐브
g_pKRewardTable:AddRewardData(2027, 132469, 10, 0 ) -- 활력의 포션 10개

g_pKRewardTable:AddRewardData(2028, 200600, 1, 7 ) -- 쫑긋쫑긋 토끼귀(7일권)
g_pKRewardTable:AddRewardData(2028, 109950, 3, 0 ) -- 축복받은 무기 강화석 3개
g_pKRewardTable:AddRewardData(2028, 109965, 5, 0 ) -- 축복받은 방어구 강화석 5개

g_pKRewardTable:AddRewardData(2029, 206020, 1, 7 ) -- 여우 꼬리(7일권)
g_pKRewardTable:AddRewardData(2029, 60004428, 1, 0 ) -- 일급 마법석 랜덤 큐브
g_pKRewardTable:AddRewardData(2029, 85002095, 1, 0 ) -- 루리엘의 축복받은 복원의 주문서 교환권

g_pKRewardTable:AddRewardData(2030, 239140, 1, 7 ) -- 엔젤윙(7일권)
g_pKRewardTable:AddRewardData(2030, 60004428, 3, 0 ) -- 일급 마법석 랜덤 큐브 3개
g_pKRewardTable:AddRewardData(2030, 85002094, 1, 0 ) -- 루리엘의 플루오르 스톤 교환권

g_pKRewardTable:AddRewardData(2031, 60008009, 1, 0 ) -- '소마를 도우는 힘' 큐브

-- 2014 아라2차전직(명왕) 이벤트
g_pKRewardTable:AddRewardData(2032, 60008014, 1, 0 ) -- 아라 신규 2차 전직 업데이트 기념 큐브
g_pKRewardTable:AddRewardData(2033, 85003800, 1, 0 ) -- 2차 전직 축하 큐브
g_pKRewardTable:AddRewardData(2034, 60008016, 1, 0 ) -- World War 알림 칭호 8일권 1개
g_pKRewardTable:AddRewardData(2035, 60008020, 1, 3 ) -- 안티 포이즌 반지(3일권)
g_pKRewardTable:AddRewardData(2036, 67006720, 1, 0 ) -- 소환석 : 돌진 전차 모비RT (3일권)
g_pKRewardTable:AddRewardData(2037, 85002094, 1, 0 ) -- 루리엘의 플루오르스톤 교환권 1개
g_pKRewardTable:AddRewardData(2038, 60008023, 1, 0 ) -- 2차 전직 프로모션 아바타 무기(포이즈닝) 3일권 큐브
g_pKRewardTable:AddRewardData(2039, 67006451, 3, 0 ) -- 루리엘의 망각의 알약 3개
g_pKRewardTable:AddRewardData(2040, 85003044, 10, 0 ) -- 루리엘의 활력의 포션 10개
g_pKRewardTable:AddRewardData(2040, 67006452, 10, 0 ) -- 루리엘의 마나 에릭실 10개
g_pKRewardTable:AddRewardData(2041, 67003765, 1, 0 ) -- 부활석 3개 큐브 1개
g_pKRewardTable:AddRewardData(2042, 60008013, 1, 0 ) -- 승리 전리품 큐브 1개

-- 2014 아라 신전직 전야 이벤트
g_pKRewardTable:AddRewardData(2043, 85003830, 2, 0 ) -- 미약한 사파의 정수 2개
g_pKRewardTable:AddRewardData(2044, 85003835, 1, 0 ) -- 정파 비전 큐브 열쇠 1개
g_pKRewardTable:AddRewardData(2045, 85003836, 1, 0 ) -- 사파 비전 큐브 열쇠 1개
--[[
-- 2014 밸런스, 하액 패치
g_pKRewardTable:AddRewardData(2046, 60008058, 1, 0 ) -- 루리엘의 마나 활성화 포션
g_pKRewardTable:AddRewardData(2046, 60008059, 1, 1 ) -- 스마트 밸런스 쿨타임 가속기 (1일권)
g_pKRewardTable:AddRewardData(2046, 60008060, 1, 0 ) -- 스마트 밸런스 출석권
g_pKRewardTable:AddRewardData(2047, 60008058, 1, 0 ) -- 루리엘의 마나 활성화 포션
g_pKRewardTable:AddRewardData(2047, 60008067, 1, 0 ) -- 궁극의 힘 일일 연구 보고서
--]]

-- 2014.1.27 1000일 이벤트
g_pKRewardTable:AddRewardData(2048, 90003100, 1, 0 ) -- 1000일 쿠폰

-- ES_US 춘절 기념 이벤트 2014-01-30 00:00 ~ 2014-02-02 23:59
-- 1. 춘절 기념 접속 이벤트! (2014-01-30 00:00 ~ 2014-02-02 23:59)
g_pKRewardTable:AddRewardData(2049, 141000899, 1, 14 ) -- 2014년 새해 특별 액세서리(파랑) (14일권) 1개
g_pKRewardTable:AddRewardData(2049, 141000913, 1, 14 ) -- 2014년 새해 특별 액세서리(분홍) (14일권) 1개
g_pKRewardTable:AddRewardData(2050, 141000892, 20, 0 ) -- 2014년 춘절 폭죽 20개
g_pKRewardTable:AddRewardData(2050, 90003110, 1, 0 ) -- 춘절 만두 3단 찜통

------------------------------------------------------------------------------------------------------------------------
-- 레벨업 보상 테이블   (이벤트 없을 시 *주석* 처리!!)
-- 인자값( level, iRewardID )               
--g_pKRewardTable:AddLevelUpRewardData( 21, 10227 )		-- 현자의 주문서 1개 (1일)
--g_pKRewardTable:AddLevelUpRewardData( 25, 10227 )		-- 현자의 주문서 1개 (1일)
--g_pKRewardTable:AddLevelUpRewardData( 29, 10227 )		-- 현자의 주문서 1개 (1일)
--g_pKRewardTable:AddLevelUpRewardData( 33, 10227 )		-- 현자의 주문서 1개 (1일)
--g_pKRewardTable:AddLevelUpRewardData( 37, 10227 )		-- 현자의 주문서 1개 (1일)
--g_pKRewardTable:AddLevelUpRewardData( 41, 10227 )		-- 현자의 주문서 1개 (1일)
--g_pKRewardTable:AddLevelUpRewardData( 45, 10227 )		-- 현자의 주문서 1개 (1일)
--g_pKRewardTable:AddLevelUpRewardData( 49, 10227 )		-- 현자의 주문서 1개 (1일)
