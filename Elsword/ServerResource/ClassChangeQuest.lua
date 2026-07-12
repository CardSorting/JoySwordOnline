-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요
--ClassChangeTable:SetClassChange_Quest( 퀘스트 그룹, 퀘스트ID, 직업 )
--ClassChangeTable:SetClassChange_Quest( 1, 1450, UNIT_CLASS["UC_ELSWORD_KNIGHT"] )   -- 예제

--[[  Placebo , 2011.12.4

** 스킬 퀘스트
퀘스트 그룹 첫째 자리 : 1  (스킬 표시)
퀘스트 그룹 둘째 자리 : 기초1, 중급2, 상급3, 고급 4
퀘스트 그룹 세째 자리 : 진행도 1~5

예) 카밀라의 중급 기술훈련 4/5 : 124


** 전직 퀘스트 (단, 2차 전직 퀘스트만 고려 대상, 1차 전직 퀘스트는 필요 없음. 왜 필요 없는지 생각 안나면 찬찬히 생각해보센)
퀘스트 그룹 첫째 자리 : 2 (전직 퀘스트 표시)
퀘스트 그룹 둘째 자리 : 진행도 1~5

로나 3번째 퀘스트 중이라면 
예) 23


2012.07.06 danggunne	스크립트 내용 새로 작성



]]
-- 신규 1차 (메모가 구현되지 않은) 전직으로 변경 시 삭제해야 하는 '진행중인' 퀘스트 목록 
--> 메모가 구현 되었을 때 코드 수정(김민성님)을 통해 이 퀘스트가 삭제 되지 않도록 해야 한다.
--> 메모가 구현 되었을 때 9020~9090 퀘스트 Condition Unit Class 목록에 메모 구현된 클래스를 추가하는 것도 잊지 마세요!!
-- 공통 메모 이므로 삭제 필요가 음씀 ㅠㅠ
--ClassChangeTable:SetClassChange_DelQuest( 9020 )		--(메모)토마의 제안 1/2
--ClassChangeTable:SetClassChange_DelQuest( 9030 )		--(메모)토마의 제안 2/2
--ClassChangeTable:SetClassChange_DelQuest( 9050 )		--(메모)히어로의 조건 1/3
--ClassChangeTable:SetClassChange_DelQuest( 9060 )		--(메모)히어로의 조건 2/3
--ClassChangeTable:SetClassChange_DelQuest( 9070 )		--(메모)히어로의 조건 3/3
--ClassChangeTable:SetClassChange_DelQuest( 9080 )		--(메모)토마의 기억력
--ClassChangeTable:SetClassChange_DelQuest( 9090 )		--(메모)카밀라의 기억력


---------------------------------------------------------------스킬 퀘스트
--소드 나이트
ClassChangeTable:SetClassChange_Quest(111,6930, UNIT_CLASS["UC_ELSWORD_KNIGHT"])--카밀라의 기초 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(112,6940, UNIT_CLASS["UC_ELSWORD_KNIGHT"])--카밀라의 기초 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(113,6950, UNIT_CLASS["UC_ELSWORD_KNIGHT"])--카밀라의 기초 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(114,6960, UNIT_CLASS["UC_ELSWORD_KNIGHT"])--카밀라의 기초 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(115,6970, UNIT_CLASS["UC_ELSWORD_KNIGHT"])--카밀라의 기초 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(121,6980, UNIT_CLASS["UC_ELSWORD_KNIGHT"])--카밀라의 중급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(122,6990, UNIT_CLASS["UC_ELSWORD_KNIGHT"])--카밀라의 중급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(123,7000, UNIT_CLASS["UC_ELSWORD_KNIGHT"])--카밀라의 중급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(124,7010, UNIT_CLASS["UC_ELSWORD_KNIGHT"])--카밀라의 중급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(125,7020, UNIT_CLASS["UC_ELSWORD_KNIGHT"])--카밀라의 중급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(131,7080, UNIT_CLASS["UC_ELSWORD_KNIGHT"])--카밀라의 상급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(132,7090, UNIT_CLASS["UC_ELSWORD_KNIGHT"])--카밀라의 상급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(133,7100, UNIT_CLASS["UC_ELSWORD_KNIGHT"])--카밀라의 상급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(134,7110, UNIT_CLASS["UC_ELSWORD_KNIGHT"])--카밀라의 상급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(135,7120, UNIT_CLASS["UC_ELSWORD_KNIGHT"])--카밀라의 상급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(141,9600, UNIT_CLASS["UC_ELSWORD_KNIGHT"])--카밀라의 고급 기술 훈련 1 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(142,9610, UNIT_CLASS["UC_ELSWORD_KNIGHT"])--카밀라의 고급 기술 훈련 2 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(143,9620, UNIT_CLASS["UC_ELSWORD_KNIGHT"])--카밀라의 고급 기술 훈련 3 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(144,9630, UNIT_CLASS["UC_ELSWORD_KNIGHT"])--카밀라의 고급 기술 훈련 4 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(145,9640, UNIT_CLASS["UC_ELSWORD_KNIGHT"])--카밀라의 고급 기술 훈련 5 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
--로드 나이트
ClassChangeTable:SetClassChange_Quest(111,6930, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"])--카밀라의 기초 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(112,6940, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"])--카밀라의 기초 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(113,6950, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"])--카밀라의 기초 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(114,6960, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"])--카밀라의 기초 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(115,6970, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"])--카밀라의 기초 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(121,6980, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"])--카밀라의 중급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(122,6990, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"])--카밀라의 중급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(123,7000, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"])--카밀라의 중급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(124,7010, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"])--카밀라의 중급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(125,7020, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"])--카밀라의 중급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(131,7080, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"])--카밀라의 상급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(132,7090, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"])--카밀라의 상급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(133,7100, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"])--카밀라의 상급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(134,7110, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"])--카밀라의 상급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(135,7120, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"])--카밀라의 상급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(141,9600, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"])--카밀라의 고급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(142,9610, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"])--카밀라의 고급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(143,9620, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"])--카밀라의 고급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(144,9630, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"])--카밀라의 고급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(145,9640, UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"])--카밀라의 고급 기술 훈련 5 / 5
--매직 나이트
ClassChangeTable:SetClassChange_Quest(111,6931, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"])--카밀라의 기초 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(112,6941, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"])--카밀라의 기초 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(113,6951, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"])--카밀라의 기초 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(114,6961, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"])--카밀라의 기초 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(115,6971, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"])--카밀라의 기초 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(121,6981, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"])--카밀라의 중급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(122,6991, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"])--카밀라의 중급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(123,7001, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"])--카밀라의 중급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(124,7011, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"])--카밀라의 중급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(125,7021, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"])--카밀라의 중급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(131,7081, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"])--카밀라의 상급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(132,7091, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"])--카밀라의 상급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(133,7101, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"])--카밀라의 상급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(134,7111, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"])--카밀라의 상급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(135,7121, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"])--카밀라의 상급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(141,9601, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"])--카밀라의 고급 기술 훈련 1 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(142,9611, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"])--카밀라의 고급 기술 훈련 2 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(143,9621, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"])--카밀라의 고급 기술 훈련 3 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(144,9631, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"])--카밀라의 고급 기술 훈련 4 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(145,9641, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"])--카밀라의 고급 기술 훈련 5 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
--룬 슬레이어
ClassChangeTable:SetClassChange_Quest(111,6931, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"])--카밀라의 기초 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(112,6941, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"])--카밀라의 기초 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(113,6951, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"])--카밀라의 기초 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(114,6961, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"])--카밀라의 기초 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(115,6971, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"])--카밀라의 기초 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(121,6981, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"])--카밀라의 중급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(122,6991, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"])--카밀라의 중급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(123,7001, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"])--카밀라의 중급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(124,7011, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"])--카밀라의 중급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(125,7021, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"])--카밀라의 중급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(131,7081, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"])--카밀라의 상급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(132,7091, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"])--카밀라의 상급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(133,7101, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"])--카밀라의 상급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(134,7111, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"])--카밀라의 상급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(135,7121, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"])--카밀라의 상급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(141,9601, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"])--카밀라의 고급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(142,9611, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"])--카밀라의 고급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(143,9621, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"])--카밀라의 고급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(144,9631, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"])--카밀라의 고급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(145,9641, UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"])--카밀라의 고급 기술 훈련 5 / 5
--시스 나이트
ClassChangeTable:SetClassChange_Quest(111,10780, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"])--카밀라의 기초 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(112,10781, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"])--카밀라의 기초 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(113,10782, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"])--카밀라의 기초 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(114,10783, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"])--카밀라의 기초 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(115,10784, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"])--카밀라의 기초 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(121,10785, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"])--카밀라의 중급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(122,10786, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"])--카밀라의 중급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(123,10787, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"])--카밀라의 중급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(124,10788, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"])--카밀라의 중급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(125,10789, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"])--카밀라의 중급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(131,10790, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"])--카밀라의 상급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(132,10791, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"])--카밀라의 상급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(133,10792, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"])--카밀라의 상급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(134,10793, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"])--카밀라의 상급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(135,10794, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"])--카밀라의 상급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(141,10795, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"])--카밀라의 고급 기술 훈련 1 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(142,10796, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"])--카밀라의 고급 기술 훈련 2 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(143,10797, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"])--카밀라의 고급 기술 훈련 3 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(144,10798, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"])--카밀라의 고급 기술 훈련 4 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(145,10799, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"])--카밀라의 고급 기술 훈련 5 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
--인피니티 소드
ClassChangeTable:SetClassChange_Quest(111,10780, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"])--카밀라의 기초 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(112,10781, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"])--카밀라의 기초 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(113,10782, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"])--카밀라의 기초 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(114,10783, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"])--카밀라의 기초 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(115,10784, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"])--카밀라의 기초 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(121,10785, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"])--카밀라의 중급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(122,10786, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"])--카밀라의 중급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(123,10787, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"])--카밀라의 중급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(124,10788, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"])--카밀라의 중급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(125,10789, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"])--카밀라의 중급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(131,10790, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"])--카밀라의 상급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(132,10791, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"])--카밀라의 상급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(133,10792, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"])--카밀라의 상급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(134,10793, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"])--카밀라의 상급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(135,10794, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"])--카밀라의 상급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(141,10795, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"])--카밀라의 고급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(142,10796, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"])--카밀라의 고급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(143,10797, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"])--카밀라의 고급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(144,10798, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"])--카밀라의 고급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(145,10799, UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"])--카밀라의 고급 기술 훈련 5 / 5

--하이 매지션
ClassChangeTable:SetClassChange_Quest(111,6932, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"])--카밀라의 기초 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(112,6942, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"])--카밀라의 기초 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(113,6952, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"])--카밀라의 기초 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(114,6962, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"])--카밀라의 기초 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(115,6972, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"])--카밀라의 기초 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(121,6982, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"])--카밀라의 중급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(122,6992, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"])--카밀라의 중급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(123,7002, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"])--카밀라의 중급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(124,7012, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"])--카밀라의 중급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(125,7022, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"])--카밀라의 중급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(131,7082, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"])--카밀라의 상급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(132,7092, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"])--카밀라의 상급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(133,7102, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"])--카밀라의 상급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(134,7112, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"])--카밀라의 상급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(135,7122, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"])--카밀라의 상급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(141,9602, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"])--카밀라의 고급 기술 훈련 1 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(142,9612, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"])--카밀라의 고급 기술 훈련 2 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(143,9622, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"])--카밀라의 고급 기술 훈련 3 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(144,9632, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"])--카밀라의 고급 기술 훈련 4 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(145,9642, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"])--카밀라의 고급 기술 훈련 5 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
--엘리멘탈 마스터
ClassChangeTable:SetClassChange_Quest(111,6932, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"])--카밀라의 기초 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(112,6942, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"])--카밀라의 기초 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(113,6952, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"])--카밀라의 기초 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(114,6962, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"])--카밀라의 기초 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(115,6972, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"])--카밀라의 기초 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(121,6982, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"])--카밀라의 중급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(122,6992, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"])--카밀라의 중급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(123,7002, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"])--카밀라의 중급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(124,7012, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"])--카밀라의 중급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(125,7022, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"])--카밀라의 중급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(131,7082, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"])--카밀라의 상급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(132,7092, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"])--카밀라의 상급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(133,7102, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"])--카밀라의 상급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(134,7112, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"])--카밀라의 상급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(135,7122, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"])--카밀라의 상급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(141,9602, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"])--카밀라의 고급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(142,9612, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"])--카밀라의 고급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(143,9622, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"])--카밀라의 고급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(144,9632, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"])--카밀라의 고급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(145,9642, UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"])--카밀라의 고급 기술 훈련 5 / 5
--다크 매지션
ClassChangeTable:SetClassChange_Quest(111,6933, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"])--카밀라의 기초 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(112,6943, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"])--카밀라의 기초 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(113,6953, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"])--카밀라의 기초 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(114,6963, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"])--카밀라의 기초 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(115,6973, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"])--카밀라의 기초 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(121,6983, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"])--카밀라의 중급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(122,6993, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"])--카밀라의 중급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(123,7003, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"])--카밀라의 중급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(124,7013, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"])--카밀라의 중급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(125,7023, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"])--카밀라의 중급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(131,7083, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"])--카밀라의 상급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(132,7093, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"])--카밀라의 상급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(133,7103, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"])--카밀라의 상급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(134,7113, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"])--카밀라의 상급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(135,7123, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"])--카밀라의 상급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(141,9603, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"])--카밀라의 고급 기술 훈련 1 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(142,9613, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"])--카밀라의 고급 기술 훈련 2 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(143,9623, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"])--카밀라의 고급 기술 훈련 3 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(144,9633, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"])--카밀라의 고급 기술 훈련 4 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(145,9643, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"])--카밀라의 고급 기술 훈련 5 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
--보이드 프린세스
ClassChangeTable:SetClassChange_Quest(111,6933, UNIT_CLASS["UC_ARME_VOID_PRINCESS"])--카밀라의 기초 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(112,6943, UNIT_CLASS["UC_ARME_VOID_PRINCESS"])--카밀라의 기초 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(113,6953, UNIT_CLASS["UC_ARME_VOID_PRINCESS"])--카밀라의 기초 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(114,6963, UNIT_CLASS["UC_ARME_VOID_PRINCESS"])--카밀라의 기초 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(115,6973, UNIT_CLASS["UC_ARME_VOID_PRINCESS"])--카밀라의 기초 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(121,6983, UNIT_CLASS["UC_ARME_VOID_PRINCESS"])--카밀라의 중급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(122,6993, UNIT_CLASS["UC_ARME_VOID_PRINCESS"])--카밀라의 중급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(123,7003, UNIT_CLASS["UC_ARME_VOID_PRINCESS"])--카밀라의 중급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(124,7013, UNIT_CLASS["UC_ARME_VOID_PRINCESS"])--카밀라의 중급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(125,7023, UNIT_CLASS["UC_ARME_VOID_PRINCESS"])--카밀라의 중급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(131,7083, UNIT_CLASS["UC_ARME_VOID_PRINCESS"])--카밀라의 상급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(132,7093, UNIT_CLASS["UC_ARME_VOID_PRINCESS"])--카밀라의 상급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(133,7103, UNIT_CLASS["UC_ARME_VOID_PRINCESS"])--카밀라의 상급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(134,7113, UNIT_CLASS["UC_ARME_VOID_PRINCESS"])--카밀라의 상급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(135,7123, UNIT_CLASS["UC_ARME_VOID_PRINCESS"])--카밀라의 상급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(141,9603, UNIT_CLASS["UC_ARME_VOID_PRINCESS"])--카밀라의 고급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(142,9613, UNIT_CLASS["UC_ARME_VOID_PRINCESS"])--카밀라의 고급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(143,9623, UNIT_CLASS["UC_ARME_VOID_PRINCESS"])--카밀라의 고급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(144,9633, UNIT_CLASS["UC_ARME_VOID_PRINCESS"])--카밀라의 고급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(145,9643, UNIT_CLASS["UC_ARME_VOID_PRINCESS"])--카밀라의 고급 기술 훈련 5 / 5
--배틀매지션
ClassChangeTable:SetClassChange_Quest(111,35000, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"])--카밀라의 기초 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(112,35001, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"])--카밀라의 기초 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(113,35002, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"])--카밀라의 기초 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(114,35003, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"])--카밀라의 기초 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(115,35004, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"])--카밀라의 기초 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(121,35005, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"])--카밀라의 중급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(122,35006, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"])--카밀라의 중급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(123,35007, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"])--카밀라의 중급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(124,35008, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"])--카밀라의 중급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(125,35009, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"])--카밀라의 중급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(131,35010, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"])--카밀라의 상급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(132,35011, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"])--카밀라의 상급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(133,35012, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"])--카밀라의 상급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(134,35013, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"])--카밀라의 상급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(135,35014, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"])--카밀라의 상급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(141,35015, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"])--카밀라의 고급 기술 훈련 1 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(142,35016, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"])--카밀라의 고급 기술 훈련 2 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(143,35017, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"])--카밀라의 고급 기술 훈련 3 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(144,35018, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"])--카밀라의 고급 기술 훈련 4 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(145,35019, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"])--카밀라의 고급 기술 훈련 5 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
--디멘션 위치
ClassChangeTable:SetClassChange_Quest(111,35000, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"])--카밀라의 기초 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(112,35001, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"])--카밀라의 기초 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(113,35002, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"])--카밀라의 기초 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(114,35003, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"])--카밀라의 기초 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(115,35004, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"])--카밀라의 기초 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(121,35005, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"])--카밀라의 중급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(122,35006, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"])--카밀라의 중급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(123,35007, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"])--카밀라의 중급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(124,35008, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"])--카밀라의 중급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(125,35009, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"])--카밀라의 중급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(131,35010, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"])--카밀라의 상급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(132,35011, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"])--카밀라의 상급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(133,35012, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"])--카밀라의 상급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(134,35013, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"])--카밀라의 상급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(135,35014, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"])--카밀라의 상급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(141,35015, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"])--카밀라의 고급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(142,35016, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"])--카밀라의 고급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(143,35017, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"])--카밀라의 고급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(144,35018, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"])--카밀라의 고급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(145,35019, UNIT_CLASS["UC_ARME_DIMENSION_WITCH"])--카밀라의 고급 기술 훈련 5 / 5

--컴뱃 레인저
ClassChangeTable:SetClassChange_Quest(111,6935, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"])--카밀라의 기초 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(112,6945, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"])--카밀라의 기초 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(113,6955, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"])--카밀라의 기초 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(114,6965, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"])--카밀라의 기초 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(115,6975, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"])--카밀라의 기초 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(121,6985, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"])--카밀라의 중급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(122,6995, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"])--카밀라의 중급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(123,7005, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"])--카밀라의 중급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(124,7015, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"])--카밀라의 중급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(125,7025, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"])--카밀라의 중급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(131,7085, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"])--카밀라의 상급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(132,7095, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"])--카밀라의 상급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(133,7105, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"])--카밀라의 상급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(134,7115, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"])--카밀라의 상급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(135,7125, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"])--카밀라의 상급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(141,9605, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"])--카밀라의 고급 기술 훈련 1 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(142,9615, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"])--카밀라의 고급 기술 훈련 2 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(143,9625, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"])--카밀라의 고급 기술 훈련 3 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(144,9635, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"])--카밀라의 고급 기술 훈련 4 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(145,9645, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"])--카밀라의 고급 기술 훈련 5 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
--윈드 스니커
ClassChangeTable:SetClassChange_Quest(111,6935, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"])--카밀라의 기초 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(112,6945, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"])--카밀라의 기초 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(113,6955, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"])--카밀라의 기초 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(114,6965, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"])--카밀라의 기초 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(115,6975, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"])--카밀라의 기초 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(121,6985, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"])--카밀라의 중급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(122,6995, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"])--카밀라의 중급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(123,7005, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"])--카밀라의 중급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(124,7015, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"])--카밀라의 중급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(125,7025, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"])--카밀라의 중급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(131,7085, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"])--카밀라의 상급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(132,7095, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"])--카밀라의 상급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(133,7105, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"])--카밀라의 상급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(134,7115, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"])--카밀라의 상급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(135,7125, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"])--카밀라의 상급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(141,9605, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"])--카밀라의 고급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(142,9615, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"])--카밀라의 고급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(143,9625, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"])--카밀라의 고급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(144,9635, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"])--카밀라의 고급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(145,9645, UNIT_CLASS["UC_LIRE_WIND_SNEAKER"])--카밀라의 고급 기술 훈련 5 / 5
--스나이핑 레인저
ClassChangeTable:SetClassChange_Quest(111,6934, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"])--카밀라의 기초 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(112,6944, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"])--카밀라의 기초 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(113,6954, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"])--카밀라의 기초 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(114,6964, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"])--카밀라의 기초 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(115,6974, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"])--카밀라의 기초 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(121,6984, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"])--카밀라의 중급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(122,6994, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"])--카밀라의 중급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(123,7004, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"])--카밀라의 중급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(124,7014, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"])--카밀라의 중급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(125,7024, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"])--카밀라의 중급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(131,7084, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"])--카밀라의 상급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(132,7094, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"])--카밀라의 상급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(133,7104, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"])--카밀라의 상급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(134,7114, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"])--카밀라의 상급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(135,7124, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"])--카밀라의 상급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(141,9604, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"])--카밀라의 고급 기술 훈련 1 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(142,9614, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"])--카밀라의 고급 기술 훈련 2 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(143,9624, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"])--카밀라의 고급 기술 훈련 3 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(144,9634, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"])--카밀라의 고급 기술 훈련 4 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(145,9644, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"])--카밀라의 고급 기술 훈련 5 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
--그랜드 아처
ClassChangeTable:SetClassChange_Quest(111,6934, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"])--카밀라의 기초 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(112,6944, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"])--카밀라의 기초 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(113,6954, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"])--카밀라의 기초 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(114,6964, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"])--카밀라의 기초 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(115,6974, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"])--카밀라의 기초 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(121,6984, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"])--카밀라의 중급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(122,6994, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"])--카밀라의 중급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(123,7004, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"])--카밀라의 중급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(124,7014, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"])--카밀라의 중급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(125,7024, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"])--카밀라의 중급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(131,7084, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"])--카밀라의 상급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(132,7094, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"])--카밀라의 상급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(133,7104, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"])--카밀라의 상급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(134,7114, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"])--카밀라의 상급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(135,7124, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"])--카밀라의 상급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(141,9604, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"])--카밀라의 고급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(142,9614, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"])--카밀라의 고급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(143,9624, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"])--카밀라의 고급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(144,9634, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"])--카밀라의 고급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(145,9644, UNIT_CLASS["UC_LIRE_GRAND_ARCHER"])--카밀라의 고급 기술 훈련 5 / 5
--트래핑 레인저
ClassChangeTable:SetClassChange_Quest(111,35050, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"])--카밀라의 기초 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(112,35051, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"])--카밀라의 기초 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(113,35052, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"])--카밀라의 기초 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(114,35053, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"])--카밀라의 기초 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(115,35054, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"])--카밀라의 기초 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(121,35055, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"])--카밀라의 중급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(122,35056, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"])--카밀라의 중급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(123,35057, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"])--카밀라의 중급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(124,35058, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"])--카밀라의 중급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(125,35059, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"])--카밀라의 중급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(131,35060, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"])--카밀라의 상급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(132,35061, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"])--카밀라의 상급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(133,35062, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"])--카밀라의 상급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(134,35063, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"])--카밀라의 상급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(135,35064, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"])--카밀라의 상급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(141,35065, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"])--카밀라의 고급 기술 훈련 1 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(142,35066, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"])--카밀라의 고급 기술 훈련 2 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(143,35067, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"])--카밀라의 고급 기술 훈련 3 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(144,35068, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"])--카밀라의 고급 기술 훈련 4 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(145,35069, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"])--카밀라의 고급 기술 훈련 5 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
--나이트 와처
ClassChangeTable:SetClassChange_Quest(111,35050, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"])--카밀라의 기초 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(112,35051, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"])--카밀라의 기초 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(113,35052, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"])--카밀라의 기초 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(114,35053, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"])--카밀라의 기초 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(115,35054, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"])--카밀라의 기초 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(121,35055, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"])--카밀라의 중급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(122,35056, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"])--카밀라의 중급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(123,35057, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"])--카밀라의 중급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(124,35058, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"])--카밀라의 중급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(125,35059, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"])--카밀라의 중급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(131,35060, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"])--카밀라의 상급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(132,35061, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"])--카밀라의 상급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(133,35062, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"])--카밀라의 상급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(134,35063, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"])--카밀라의 상급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(135,35064, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"])--카밀라의 상급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(141,35065, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"])--카밀라의 고급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(142,35066, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"])--카밀라의 고급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(143,35067, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"])--카밀라의 고급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(144,35068, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"])--카밀라의 고급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(145,35069, UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"])--카밀라의 고급 기술 훈련 5 / 5

--소드 테이커
ClassChangeTable:SetClassChange_Quest(111,6936, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"])--카밀라의 기초 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(112,6946, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"])--카밀라의 기초 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(113,6956, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"])--카밀라의 기초 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(114,6966, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"])--카밀라의 기초 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(115,6976, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"])--카밀라의 기초 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(121,6986, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"])--카밀라의 중급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(122,6996, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"])--카밀라의 중급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(123,7006, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"])--카밀라의 중급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(124,7016, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"])--카밀라의 중급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(125,7026, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"])--카밀라의 중급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(131,7086, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"])--카밀라의 상급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(132,7096, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"])--카밀라의 상급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(133,7106, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"])--카밀라의 상급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(134,7116, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"])--카밀라의 상급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(135,7126, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"])--카밀라의 상급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(141,9606, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"])--카밀라의 고급 기술 훈련 1 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(142,9616, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"])--카밀라의 고급 기술 훈련 2 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(143,9626, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"])--카밀라의 고급 기술 훈련 3 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(144,9636, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"])--카밀라의 고급 기술 훈련 4 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(145,9646, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"])--카밀라의 고급 기술 훈련 5 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
--블레이드 마스터
ClassChangeTable:SetClassChange_Quest(111,6936, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"])--카밀라의 기초 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(112,6946, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"])--카밀라의 기초 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(113,6956, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"])--카밀라의 기초 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(114,6966, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"])--카밀라의 기초 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(115,6976, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"])--카밀라의 기초 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(121,6986, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"])--카밀라의 중급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(122,6996, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"])--카밀라의 중급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(123,7006, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"])--카밀라의 중급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(124,7016, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"])--카밀라의 중급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(125,7026, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"])--카밀라의 중급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(131,7086, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"])--카밀라의 상급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(132,7096, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"])--카밀라의 상급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(133,7106, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"])--카밀라의 상급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(134,7116, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"])--카밀라의 상급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(135,7126, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"])--카밀라의 상급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(141,9606, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"])--카밀라의 고급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(142,9616, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"])--카밀라의 고급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(143,9626, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"])--카밀라의 고급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(144,9636, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"])--카밀라의 고급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(145,9646, UNIT_CLASS["UC_RAVEN_BLADE_MASTER"])--카밀라의 고급 기술 훈련 5 / 5
--오버 테이커
ClassChangeTable:SetClassChange_Quest(111,6937, UNIT_CLASS["UC_RAVEN_OVER_TAKER"])--카밀라의 기초 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(112,6947, UNIT_CLASS["UC_RAVEN_OVER_TAKER"])--카밀라의 기초 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(113,6957, UNIT_CLASS["UC_RAVEN_OVER_TAKER"])--카밀라의 기초 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(114,6967, UNIT_CLASS["UC_RAVEN_OVER_TAKER"])--카밀라의 기초 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(115,6977, UNIT_CLASS["UC_RAVEN_OVER_TAKER"])--카밀라의 기초 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(121,6987, UNIT_CLASS["UC_RAVEN_OVER_TAKER"])--카밀라의 중급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(122,6997, UNIT_CLASS["UC_RAVEN_OVER_TAKER"])--카밀라의 중급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(123,7007, UNIT_CLASS["UC_RAVEN_OVER_TAKER"])--카밀라의 중급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(124,7017, UNIT_CLASS["UC_RAVEN_OVER_TAKER"])--카밀라의 중급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(125,7027, UNIT_CLASS["UC_RAVEN_OVER_TAKER"])--카밀라의 중급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(131,7087, UNIT_CLASS["UC_RAVEN_OVER_TAKER"])--카밀라의 상급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(132,7097, UNIT_CLASS["UC_RAVEN_OVER_TAKER"])--카밀라의 상급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(133,7107, UNIT_CLASS["UC_RAVEN_OVER_TAKER"])--카밀라의 상급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(134,7117, UNIT_CLASS["UC_RAVEN_OVER_TAKER"])--카밀라의 상급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(135,7127, UNIT_CLASS["UC_RAVEN_OVER_TAKER"])--카밀라의 상급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(141,9607, UNIT_CLASS["UC_RAVEN_OVER_TAKER"])--카밀라의 고급 기술 훈련 1 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(142,9617, UNIT_CLASS["UC_RAVEN_OVER_TAKER"])--카밀라의 고급 기술 훈련 2 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(143,9627, UNIT_CLASS["UC_RAVEN_OVER_TAKER"])--카밀라의 고급 기술 훈련 3 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(144,9637, UNIT_CLASS["UC_RAVEN_OVER_TAKER"])--카밀라의 고급 기술 훈련 4 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(145,9647, UNIT_CLASS["UC_RAVEN_OVER_TAKER"])--카밀라의 고급 기술 훈련 5 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
--레크리스 피스트
ClassChangeTable:SetClassChange_Quest(111,6937, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"])--카밀라의 기초 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(112,6947, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"])--카밀라의 기초 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(113,6957, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"])--카밀라의 기초 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(114,6967, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"])--카밀라의 기초 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(115,6977, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"])--카밀라의 기초 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(121,6987, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"])--카밀라의 중급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(122,6997, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"])--카밀라의 중급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(123,7007, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"])--카밀라의 중급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(124,7017, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"])--카밀라의 중급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(125,7027, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"])--카밀라의 중급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(131,7087, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"])--카밀라의 상급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(132,7097, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"])--카밀라의 상급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(133,7107, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"])--카밀라의 상급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(134,7117, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"])--카밀라의 상급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(135,7127, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"])--카밀라의 상급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(141,9607, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"])--카밀라의 고급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(142,9617, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"])--카밀라의 고급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(143,9627, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"])--카밀라의 고급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(144,9637, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"])--카밀라의 고급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(145,9647, UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"])--카밀라의 고급 기술 훈련 5 / 5
--웨폰 테이커
ClassChangeTable:SetClassChange_Quest(111,35090, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"])--카밀라의 기초 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(112,35091, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"])--카밀라의 기초 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(113,35092, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"])--카밀라의 기초 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(114,35093, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"])--카밀라의 기초 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(115,35094, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"])--카밀라의 기초 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(121,35095, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"])--카밀라의 중급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(122,35096, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"])--카밀라의 중급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(123,35097, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"])--카밀라의 중급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(124,35098, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"])--카밀라의 중급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(125,35099, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"])--카밀라의 중급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(131,35100, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"])--카밀라의 상급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(132,35101, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"])--카밀라의 상급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(133,35102, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"])--카밀라의 상급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(134,35103, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"])--카밀라의 상급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(135,35104, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"])--카밀라의 상급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(141,35105, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"])--카밀라의 고급 기술 훈련 1 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(142,35106, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"])--카밀라의 고급 기술 훈련 2 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(143,35107, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"])--카밀라의 고급 기술 훈련 3 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(144,35108, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"])--카밀라의 고급 기술 훈련 4 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(145,35109, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"])--카밀라의 고급 기술 훈련 5 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
--베테랑 커맨더
ClassChangeTable:SetClassChange_Quest(111,35090, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"])--카밀라의 기초 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(112,35091, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"])--카밀라의 기초 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(113,35092, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"])--카밀라의 기초 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(114,35093, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"])--카밀라의 기초 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(115,35094, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"])--카밀라의 기초 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(121,35095, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"])--카밀라의 중급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(122,35096, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"])--카밀라의 중급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(123,35097, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"])--카밀라의 중급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(124,35098, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"])--카밀라의 중급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(125,35099, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"])--카밀라의 중급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(131,35100, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"])--카밀라의 상급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(132,35101, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"])--카밀라의 상급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(133,35102, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"])--카밀라의 상급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(134,35103, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"])--카밀라의 상급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(135,35104, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"])--카밀라의 상급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(141,35105, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"])--카밀라의 고급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(142,35106, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"])--카밀라의 고급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(143,35107, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"])--카밀라의 고급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(144,35108, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"])--카밀라의 고급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(145,35109, UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"])--카밀라의 고급 기술 훈련 5 / 5

--코드 엑조틱
ClassChangeTable:SetClassChange_Quest(111,6938, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"])--카밀라의 기초 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(112,6948, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"])--카밀라의 기초 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(113,6958, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"])--카밀라의 기초 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(114,6968, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"])--카밀라의 기초 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(115,6978, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"])--카밀라의 기초 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(121,6988, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"])--카밀라의 중급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(122,6998, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"])--카밀라의 중급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(123,7008, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"])--카밀라의 중급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(124,7018, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"])--카밀라의 중급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(125,7028, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"])--카밀라의 중급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(131,7088, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"])--카밀라의 상급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(132,7098, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"])--카밀라의 상급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(133,7108, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"])--카밀라의 상급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(134,7118, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"])--카밀라의 상급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(135,7128, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"])--카밀라의 상급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(141,9608, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"])--카밀라의 고급 기술 훈련 1 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(142,9618, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"])--카밀라의 고급 기술 훈련 2 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(143,9628, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"])--카밀라의 고급 기술 훈련 3 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(144,9638, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"])--카밀라의 고급 기술 훈련 4 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(145,9648, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"])--카밀라의 고급 기술 훈련 5 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
--코드 네메시스
ClassChangeTable:SetClassChange_Quest(111,6938, UNIT_CLASS["UC_EVE_CODE_NEMESIS"])--카밀라의 기초 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(112,6948, UNIT_CLASS["UC_EVE_CODE_NEMESIS"])--카밀라의 기초 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(113,6958, UNIT_CLASS["UC_EVE_CODE_NEMESIS"])--카밀라의 기초 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(114,6968, UNIT_CLASS["UC_EVE_CODE_NEMESIS"])--카밀라의 기초 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(115,6978, UNIT_CLASS["UC_EVE_CODE_NEMESIS"])--카밀라의 기초 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(121,6988, UNIT_CLASS["UC_EVE_CODE_NEMESIS"])--카밀라의 중급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(122,6998, UNIT_CLASS["UC_EVE_CODE_NEMESIS"])--카밀라의 중급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(123,7008, UNIT_CLASS["UC_EVE_CODE_NEMESIS"])--카밀라의 중급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(124,7018, UNIT_CLASS["UC_EVE_CODE_NEMESIS"])--카밀라의 중급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(125,7028, UNIT_CLASS["UC_EVE_CODE_NEMESIS"])--카밀라의 중급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(131,7088, UNIT_CLASS["UC_EVE_CODE_NEMESIS"])--카밀라의 상급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(132,7098, UNIT_CLASS["UC_EVE_CODE_NEMESIS"])--카밀라의 상급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(133,7108, UNIT_CLASS["UC_EVE_CODE_NEMESIS"])--카밀라의 상급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(134,7118, UNIT_CLASS["UC_EVE_CODE_NEMESIS"])--카밀라의 상급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(135,7128, UNIT_CLASS["UC_EVE_CODE_NEMESIS"])--카밀라의 상급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(141,9608, UNIT_CLASS["UC_EVE_CODE_NEMESIS"])--카밀라의 고급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(142,9618, UNIT_CLASS["UC_EVE_CODE_NEMESIS"])--카밀라의 고급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(143,9628, UNIT_CLASS["UC_EVE_CODE_NEMESIS"])--카밀라의 고급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(144,9638, UNIT_CLASS["UC_EVE_CODE_NEMESIS"])--카밀라의 고급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(145,9648, UNIT_CLASS["UC_EVE_CODE_NEMESIS"])--카밀라의 고급 기술 훈련 5 / 5
--코드 아키텍처
ClassChangeTable:SetClassChange_Quest(111,6939, UNIT_CLASS["UC_EVE_ARCHITECTURE"])--카밀라의 기초 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(112,6949, UNIT_CLASS["UC_EVE_ARCHITECTURE"])--카밀라의 기초 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(113,6959, UNIT_CLASS["UC_EVE_ARCHITECTURE"])--카밀라의 기초 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(114,6969, UNIT_CLASS["UC_EVE_ARCHITECTURE"])--카밀라의 기초 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(115,6979, UNIT_CLASS["UC_EVE_ARCHITECTURE"])--카밀라의 기초 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(121,6989, UNIT_CLASS["UC_EVE_ARCHITECTURE"])--카밀라의 중급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(122,6999, UNIT_CLASS["UC_EVE_ARCHITECTURE"])--카밀라의 중급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(123,7009, UNIT_CLASS["UC_EVE_ARCHITECTURE"])--카밀라의 중급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(124,7019, UNIT_CLASS["UC_EVE_ARCHITECTURE"])--카밀라의 중급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(125,7029, UNIT_CLASS["UC_EVE_ARCHITECTURE"])--카밀라의 중급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(131,7089, UNIT_CLASS["UC_EVE_ARCHITECTURE"])--카밀라의 상급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(132,7099, UNIT_CLASS["UC_EVE_ARCHITECTURE"])--카밀라의 상급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(133,7109, UNIT_CLASS["UC_EVE_ARCHITECTURE"])--카밀라의 상급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(134,7119, UNIT_CLASS["UC_EVE_ARCHITECTURE"])--카밀라의 상급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(135,7129, UNIT_CLASS["UC_EVE_ARCHITECTURE"])--카밀라의 상급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(141,9609, UNIT_CLASS["UC_EVE_ARCHITECTURE"])--카밀라의 고급 기술 훈련 1 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(142,9619, UNIT_CLASS["UC_EVE_ARCHITECTURE"])--카밀라의 고급 기술 훈련 2 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(143,9629, UNIT_CLASS["UC_EVE_ARCHITECTURE"])--카밀라의 고급 기술 훈련 3 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(144,9639, UNIT_CLASS["UC_EVE_ARCHITECTURE"])--카밀라의 고급 기술 훈련 4 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(145,9649, UNIT_CLASS["UC_EVE_ARCHITECTURE"])--카밀라의 고급 기술 훈련 5 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
--코드 엠프레스
ClassChangeTable:SetClassChange_Quest(111,6939, UNIT_CLASS["UC_EVE_CODE_EMPRESS"])--카밀라의 기초 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(112,6949, UNIT_CLASS["UC_EVE_CODE_EMPRESS"])--카밀라의 기초 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(113,6959, UNIT_CLASS["UC_EVE_CODE_EMPRESS"])--카밀라의 기초 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(114,6969, UNIT_CLASS["UC_EVE_CODE_EMPRESS"])--카밀라의 기초 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(115,6979, UNIT_CLASS["UC_EVE_CODE_EMPRESS"])--카밀라의 기초 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(121,6989, UNIT_CLASS["UC_EVE_CODE_EMPRESS"])--카밀라의 중급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(122,6999, UNIT_CLASS["UC_EVE_CODE_EMPRESS"])--카밀라의 중급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(123,7009, UNIT_CLASS["UC_EVE_CODE_EMPRESS"])--카밀라의 중급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(124,7019, UNIT_CLASS["UC_EVE_CODE_EMPRESS"])--카밀라의 중급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(125,7029, UNIT_CLASS["UC_EVE_CODE_EMPRESS"])--카밀라의 중급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(131,7089, UNIT_CLASS["UC_EVE_CODE_EMPRESS"])--카밀라의 상급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(132,7099, UNIT_CLASS["UC_EVE_CODE_EMPRESS"])--카밀라의 상급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(133,7109, UNIT_CLASS["UC_EVE_CODE_EMPRESS"])--카밀라의 상급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(134,7119, UNIT_CLASS["UC_EVE_CODE_EMPRESS"])--카밀라의 상급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(135,7129, UNIT_CLASS["UC_EVE_CODE_EMPRESS"])--카밀라의 상급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(141,9609, UNIT_CLASS["UC_EVE_CODE_EMPRESS"])--카밀라의 고급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(142,9619, UNIT_CLASS["UC_EVE_CODE_EMPRESS"])--카밀라의 고급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(143,9629, UNIT_CLASS["UC_EVE_CODE_EMPRESS"])--카밀라의 고급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(144,9639, UNIT_CLASS["UC_EVE_CODE_EMPRESS"])--카밀라의 고급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(145,9649, UNIT_CLASS["UC_EVE_CODE_EMPRESS"])--카밀라의 고급 기술 훈련 5 / 5
--코드 일렉트라
ClassChangeTable:SetClassChange_Quest(111,35130, UNIT_CLASS["UC_EVE_ELECTRA"])--카밀라의 기초 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(112,35131, UNIT_CLASS["UC_EVE_ELECTRA"])--카밀라의 기초 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(113,35132, UNIT_CLASS["UC_EVE_ELECTRA"])--카밀라의 기초 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(114,35133, UNIT_CLASS["UC_EVE_ELECTRA"])--카밀라의 기초 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(115,35134, UNIT_CLASS["UC_EVE_ELECTRA"])--카밀라의 기초 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(121,35135, UNIT_CLASS["UC_EVE_ELECTRA"])--카밀라의 중급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(122,35136, UNIT_CLASS["UC_EVE_ELECTRA"])--카밀라의 중급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(123,35137, UNIT_CLASS["UC_EVE_ELECTRA"])--카밀라의 중급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(124,35138, UNIT_CLASS["UC_EVE_ELECTRA"])--카밀라의 중급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(125,35139, UNIT_CLASS["UC_EVE_ELECTRA"])--카밀라의 중급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(131,35140, UNIT_CLASS["UC_EVE_ELECTRA"])--카밀라의 상급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(132,35141, UNIT_CLASS["UC_EVE_ELECTRA"])--카밀라의 상급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(133,35142, UNIT_CLASS["UC_EVE_ELECTRA"])--카밀라의 상급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(134,35143, UNIT_CLASS["UC_EVE_ELECTRA"])--카밀라의 상급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(135,35144, UNIT_CLASS["UC_EVE_ELECTRA"])--카밀라의 상급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(141,35145, UNIT_CLASS["UC_EVE_ELECTRA"])--카밀라의 고급 기술 훈련 1 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(142,35146, UNIT_CLASS["UC_EVE_ELECTRA"])--카밀라의 고급 기술 훈련 2 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(143,35147, UNIT_CLASS["UC_EVE_ELECTRA"])--카밀라의 고급 기술 훈련 3 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(144,35148, UNIT_CLASS["UC_EVE_ELECTRA"])--카밀라의 고급 기술 훈련 4 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(145,35149, UNIT_CLASS["UC_EVE_ELECTRA"])--카밀라의 고급 기술 훈련 5 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
--코드 배틀 세라프
ClassChangeTable:SetClassChange_Quest(111,35130, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"])--카밀라의 기초 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(112,35131, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"])--카밀라의 기초 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(113,35132, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"])--카밀라의 기초 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(114,35133, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"])--카밀라의 기초 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(115,35134, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"])--카밀라의 기초 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(121,35135, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"])--카밀라의 중급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(122,35136, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"])--카밀라의 중급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(123,35137, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"])--카밀라의 중급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(124,35138, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"])--카밀라의 중급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(125,35139, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"])--카밀라의 중급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(131,35140, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"])--카밀라의 상급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(132,35141, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"])--카밀라의 상급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(133,35142, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"])--카밀라의 상급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(134,35143, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"])--카밀라의 상급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(135,35144, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"])--카밀라의 상급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(141,35145, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"])--카밀라의 고급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(142,35146, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"])--카밀라의 고급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(143,35147, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"])--카밀라의 고급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(144,35148, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"])--카밀라의 고급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(145,35149, UNIT_CLASS["UC_EVE_BATTLE_SERAPH"])--카밀라의 고급 기술 훈련 5 / 5

--퓨리 가디언
ClassChangeTable:SetClassChange_Quest(111,9770, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"])--카밀라의 기초 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(112,9780, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"])--카밀라의 기초 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(113,9790, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"])--카밀라의 기초 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(114,9800, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"])--카밀라의 기초 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(115,9810, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"])--카밀라의 기초 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(121,10090, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"])--카밀라의 중급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(122,10092, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"])--카밀라의 중급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(123,10094, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"])--카밀라의 중급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(124,10096, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"])--카밀라의 중급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(125,10098, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"])--카밀라의 중급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(131,10100, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"])--카밀라의 상급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(132,10102, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"])--카밀라의 상급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(133,10104, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"])--카밀라의 상급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(134,10106, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"])--카밀라의 상급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(135,10108, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"])--카밀라의 상급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(141,10891, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"])--카밀라의 고급 기술 훈련 1 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(142,10892, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"])--카밀라의 고급 기술 훈련 2 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(143,10893, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"])--카밀라의 고급 기술 훈련 3 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(144,10894, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"])--카밀라의 고급 기술 훈련 4 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(145,10895, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"])--카밀라의 고급 기술 훈련 5 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
--아이언 팔라딘
ClassChangeTable:SetClassChange_Quest(111,9770, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"])--카밀라의 기초 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(112,9780, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"])--카밀라의 기초 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(113,9790, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"])--카밀라의 기초 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(114,9800, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"])--카밀라의 기초 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(115,9810, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"])--카밀라의 기초 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(121,10090, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"])--카밀라의 중급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(122,10092, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"])--카밀라의 중급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(123,10094, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"])--카밀라의 중급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(124,10096, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"])--카밀라의 중급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(125,10098, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"])--카밀라의 중급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(131,10100, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"])--카밀라의 상급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(132,10102, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"])--카밀라의 상급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(133,10104, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"])--카밀라의 상급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(134,10106, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"])--카밀라의 상급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(135,10108, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"])--카밀라의 상급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(141,10891, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"])--카밀라의 고급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(142,10892, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"])--카밀라의 고급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(143,10893, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"])--카밀라의 고급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(144,10894, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"])--카밀라의 고급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(145,10895, UNIT_CLASS["UC_CHUNG_IRON_PALADIN"])--카밀라의 고급 기술 훈련 5 / 5
--슈팅 가디언
ClassChangeTable:SetClassChange_Quest(111,9771, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"])--카밀라의 기초 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(112,9781, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"])--카밀라의 기초 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(113,9791, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"])--카밀라의 기초 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(114,9801, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"])--카밀라의 기초 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(115,9811, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"])--카밀라의 기초 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(121,10091, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"])--카밀라의 중급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(122,10093, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"])--카밀라의 중급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(123,10095, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"])--카밀라의 중급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(124,10097, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"])--카밀라의 중급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(125,10099, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"])--카밀라의 중급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(131,10101, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"])--카밀라의 상급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(132,10103, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"])--카밀라의 상급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(133,10105, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"])--카밀라의 상급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(134,10107, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"])--카밀라의 상급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(135,10109, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"])--카밀라의 상급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(141,10896, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"])--카밀라의 고급 기술 훈련 1 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(142,10897, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"])--카밀라의 고급 기술 훈련 2 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(143,10898, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"])--카밀라의 고급 기술 훈련 3 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(144,10899, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"])--카밀라의 고급 기술 훈련 4 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(145,10900, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"])--카밀라의 고급 기술 훈련 5 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
--데들리 체이서
ClassChangeTable:SetClassChange_Quest(111,9771, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"])--카밀라의 기초 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(112,9781, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"])--카밀라의 기초 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(113,9791, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"])--카밀라의 기초 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(114,9801, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"])--카밀라의 기초 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(115,9811, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"])--카밀라의 기초 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(121,10091, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"])--카밀라의 중급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(122,10093, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"])--카밀라의 중급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(123,10095, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"])--카밀라의 중급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(124,10097, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"])--카밀라의 중급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(125,10099, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"])--카밀라의 중급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(131,10101, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"])--카밀라의 상급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(132,10103, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"])--카밀라의 상급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(133,10105, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"])--카밀라의 상급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(134,10107, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"])--카밀라의 상급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(135,10109, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"])--카밀라의 상급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(141,10896, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"])--카밀라의 고급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(142,10897, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"])--카밀라의 고급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(143,10898, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"])--카밀라의 고급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(144,10899, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"])--카밀라의 고급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(145,10900, UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"])--카밀라의 고급 기술 훈련 5 / 5
--쉘링 가디언
ClassChangeTable:SetClassChange_Quest(111,35170, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"])--카밀라의 기초 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(112,35171, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"])--카밀라의 기초 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(113,35172, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"])--카밀라의 기초 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(114,35173, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"])--카밀라의 기초 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(115,35174, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"])--카밀라의 기초 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(121,35175, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"])--카밀라의 중급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(122,35176, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"])--카밀라의 중급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(123,35177, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"])--카밀라의 중급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(124,35178, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"])--카밀라의 중급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(125,35179, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"])--카밀라의 중급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(131,35180, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"])--카밀라의 상급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(132,35181, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"])--카밀라의 상급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(133,35182, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"])--카밀라의 상급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(134,35183, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"])--카밀라의 상급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(135,35184, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"])--카밀라의 상급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(141,35185, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"])--카밀라의 고급 기술 훈련 1 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(142,35186, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"])--카밀라의 고급 기술 훈련 2 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(143,35187, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"])--카밀라의 고급 기술 훈련 3 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(144,35188, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"])--카밀라의 고급 기술 훈련 4 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(145,35189, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"])--카밀라의 고급 기술 훈련 5 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
--택티컬 트루퍼
ClassChangeTable:SetClassChange_Quest(111,35170, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"])--카밀라의 기초 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(112,35171, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"])--카밀라의 기초 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(113,35172, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"])--카밀라의 기초 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(114,35173, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"])--카밀라의 기초 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(115,35174, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"])--카밀라의 기초 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(121,35175, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"])--카밀라의 중급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(122,35176, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"])--카밀라의 중급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(123,35177, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"])--카밀라의 중급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(124,35178, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"])--카밀라의 중급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(125,35179, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"])--카밀라의 중급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(131,35180, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"])--카밀라의 상급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(132,35181, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"])--카밀라의 상급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(133,35182, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"])--카밀라의 상급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(134,35183, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"])--카밀라의 상급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(135,35184, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"])--카밀라의 상급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(141,35185, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"])--카밀라의 고급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(142,35186, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"])--카밀라의 고급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(143,35187, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"])--카밀라의 고급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(144,35188, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"])--카밀라의 고급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(145,35189, UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"])--카밀라의 고급 기술 훈련 5 / 5
--[[2013.8.7. 이승헌, 아라는 기존 스킬 퀘스트를 그대로 유지함. 보상,수행 조건 등 아라의 모든 전직이 동일하기 때문. 이 후 추가되는 전직도 이렇게 작업할 것.
아래는 혹시나 해서 빠르게 대응하기 위해 추가해둔 것. 문제 없다면 지워도 상관없다.
--소선
ClassChangeTable:SetClassChange_Quest(111,35290, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"])--카밀라의 기초 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(112,35291, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"])--카밀라의 기초 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(113,35292, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"])--카밀라의 기초 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(114,35293, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"])--카밀라의 기초 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(115,35294, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"])--카밀라의 기초 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(121,35295, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"])--카밀라의 중급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(122,35296, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"])--카밀라의 중급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(123,35297, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"])--카밀라의 중급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(124,35298, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"])--카밀라의 중급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(125,35299, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"])--카밀라의 중급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(131,35300, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"])--카밀라의 상급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(132,35301, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"])--카밀라의 상급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(133,35302, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"])--카밀라의 상급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(134,35303, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"])--카밀라의 상급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(135,35304, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"])--카밀라의 상급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(141,35305, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"])--카밀라의 고급 기술 훈련 1 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(142,35306, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"])--카밀라의 고급 기술 훈련 2 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(143,35307, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"])--카밀라의 고급 기술 훈련 3 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(144,35308, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"])--카밀라의 고급 기술 훈련 4 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(145,35309, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"])--카밀라의 고급 기술 훈련 5 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
--제천
ClassChangeTable:SetClassChange_Quest(111,35290, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"])--카밀라의 기초 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(112,35291, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"])--카밀라의 기초 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(113,35292, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"])--카밀라의 기초 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(114,35293, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"])--카밀라의 기초 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(115,35294, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"])--카밀라의 기초 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(121,35295, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"])--카밀라의 중급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(122,35296, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"])--카밀라의 중급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(123,35297, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"])--카밀라의 중급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(124,35298, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"])--카밀라의 중급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(125,35299, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"])--카밀라의 중급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(131,35300, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"])--카밀라의 상급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(132,35301, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"])--카밀라의 상급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(133,35302, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"])--카밀라의 상급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(134,35303, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"])--카밀라의 상급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(135,35304, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"])--카밀라의 상급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(141,35305, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"])--카밀라의 고급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(142,35306, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"])--카밀라의 고급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(143,35307, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"])--카밀라의 고급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(144,35308, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"])--카밀라의 고급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(145,35309, UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"])--카밀라의 고급 기술 훈련 5 / 5
--소마
ClassChangeTable:SetClassChange_Quest(111,35290, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"])--카밀라의 기초 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(112,35291, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"])--카밀라의 기초 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(113,35292, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"])--카밀라의 기초 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(114,35293, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"])--카밀라의 기초 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(115,35294, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"])--카밀라의 기초 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(121,35295, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"])--카밀라의 중급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(122,35296, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"])--카밀라의 중급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(123,35297, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"])--카밀라의 중급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(124,35298, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"])--카밀라의 중급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(125,35299, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"])--카밀라의 중급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(131,35300, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"])--카밀라의 상급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(132,35301, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"])--카밀라의 상급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(133,35302, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"])--카밀라의 상급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(134,35303, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"])--카밀라의 상급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(135,35304, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"])--카밀라의 상급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(141,35305, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"])--카밀라의 고급 기술 훈련 1 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(142,35306, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"])--카밀라의 고급 기술 훈련 2 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(143,35307, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"])--카밀라의 고급 기술 훈련 3 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(144,35308, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"])--카밀라의 고급 기술 훈련 4 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(145,35309, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"])--카밀라의 고급 기술 훈련 5 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
--명왕
ClassChangeTable:SetClassChange_Quest(111,35290, UNIT_CLASS["UC_ARA_YAMA_RAJA"])--카밀라의 기초 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(112,35291, UNIT_CLASS["UC_ARA_YAMA_RAJA"])--카밀라의 기초 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(113,35292, UNIT_CLASS["UC_ARA_YAMA_RAJA"])--카밀라의 기초 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(114,35293, UNIT_CLASS["UC_ARA_YAMA_RAJA"])--카밀라의 기초 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(115,35294, UNIT_CLASS["UC_ARA_YAMA_RAJA"])--카밀라의 기초 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(121,35295, UNIT_CLASS["UC_ARA_YAMA_RAJA"])--카밀라의 중급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(122,35296, UNIT_CLASS["UC_ARA_YAMA_RAJA"])--카밀라의 중급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(123,35297, UNIT_CLASS["UC_ARA_YAMA_RAJA"])--카밀라의 중급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(124,35298, UNIT_CLASS["UC_ARA_YAMA_RAJA"])--카밀라의 중급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(125,35299, UNIT_CLASS["UC_ARA_YAMA_RAJA"])--카밀라의 중급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(131,35300, UNIT_CLASS["UC_ARA_YAMA_RAJA"])--카밀라의 상급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(132,35301, UNIT_CLASS["UC_ARA_YAMA_RAJA"])--카밀라의 상급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(133,35302, UNIT_CLASS["UC_ARA_YAMA_RAJA"])--카밀라의 상급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(134,35303, UNIT_CLASS["UC_ARA_YAMA_RAJA"])--카밀라의 상급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(135,35304, UNIT_CLASS["UC_ARA_YAMA_RAJA"])--카밀라의 상급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(141,35305, UNIT_CLASS["UC_ARA_YAMA_RAJA"])--카밀라의 고급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(142,35306, UNIT_CLASS["UC_ARA_YAMA_RAJA"])--카밀라의 고급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(143,35307, UNIT_CLASS["UC_ARA_YAMA_RAJA"])--카밀라의 고급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(144,35308, UNIT_CLASS["UC_ARA_YAMA_RAJA"])--카밀라의 고급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(145,35309, UNIT_CLASS["UC_ARA_YAMA_RAJA"])--카밀라의 고급 기술 훈련 5 / 5
--]]
---------------------------------------------------------------전직 퀘스트
--소드 나이트
ClassChangeTable:SetClassChange_Quest(21,7660, UNIT_CLASS["UC_ELSWORD_KNIGHT"])--로드 나이트 1 / 5
ClassChangeTable:SetClassChange_Quest(22,7670, UNIT_CLASS["UC_ELSWORD_KNIGHT"])--로드 나이트 2 / 5
ClassChangeTable:SetClassChange_Quest(23,7680, UNIT_CLASS["UC_ELSWORD_KNIGHT"])--로드 나이트 3 / 5
ClassChangeTable:SetClassChange_Quest(24,7690, UNIT_CLASS["UC_ELSWORD_KNIGHT"])--로드 나이트 4 / 5
ClassChangeTable:SetClassChange_Quest(25,7700, UNIT_CLASS["UC_ELSWORD_KNIGHT"])--로드 나이트 5 / 5
--매직 나이트
ClassChangeTable:SetClassChange_Quest(21,7710, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"])--룬 슬레이어 1 / 5
ClassChangeTable:SetClassChange_Quest(22,7720, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"])--룬 슬레이어 2 / 5
ClassChangeTable:SetClassChange_Quest(23,7730, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"])--룬 슬레이어 3 / 5
ClassChangeTable:SetClassChange_Quest(24,7740, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"])--룬 슬레이어 4 / 5
ClassChangeTable:SetClassChange_Quest(25,7750, UNIT_CLASS["UC_ELSWORD_MAGIC_KNIGHT"])--룬 슬레이어 5 / 5
--시스 나이트
ClassChangeTable:SetClassChange_Quest(21,10987, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"])--인피니티 소드 1 / 5
ClassChangeTable:SetClassChange_Quest(22,10988, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"])--인피니티 소드 2 / 5
ClassChangeTable:SetClassChange_Quest(23,10989, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"])--인피니티 소드 3 / 5
ClassChangeTable:SetClassChange_Quest(24,10990, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"])--인피니티 소드 4 / 5
ClassChangeTable:SetClassChange_Quest(25,10991, UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"])--인피니티 소드 5 / 5

--하이 매지션
ClassChangeTable:SetClassChange_Quest(21,8020, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"])--엘리멘탈 마스터 1 / 5
ClassChangeTable:SetClassChange_Quest(22,8030, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"])--엘리멘탈 마스터 2 / 5
ClassChangeTable:SetClassChange_Quest(23,8040, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"])--엘리멘탈 마스터 3 / 5
ClassChangeTable:SetClassChange_Quest(24,8050, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"])--엘리멘탈 마스터 4 / 5
ClassChangeTable:SetClassChange_Quest(25,8060, UNIT_CLASS["UC_ARME_HIGH_MAGICIAN"])--엘리멘탈 마스터 5 / 5
--다크 매지션
ClassChangeTable:SetClassChange_Quest(21,8070, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"])--보이드 프린세스 1 / 5
ClassChangeTable:SetClassChange_Quest(22,8080, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"])--보이드 프린세스 2 / 5
ClassChangeTable:SetClassChange_Quest(23,8090, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"])--보이드 프린세스 3 / 5
ClassChangeTable:SetClassChange_Quest(24,8110, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"])--보이드 프린세스 4 / 5
ClassChangeTable:SetClassChange_Quest(25,8120, UNIT_CLASS["UC_ARME_DARK_MAGICIAN"])--보이드 프린세스 5 / 5
--배틀 매지션
ClassChangeTable:SetClassChange_Quest(21,35030, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"])--디멘션 위치 1 / 5
ClassChangeTable:SetClassChange_Quest(22,35031, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"])--디멘션 위치 2 / 5
ClassChangeTable:SetClassChange_Quest(23,35032, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"])--디멘션 위치 3 / 5
ClassChangeTable:SetClassChange_Quest(24,35033, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"])--디멘션 위치 4 / 5
ClassChangeTable:SetClassChange_Quest(25,35034, UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"])--디멘션 위치 5 / 5

--컴뱃 레인저
ClassChangeTable:SetClassChange_Quest(21,7840, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"])--윈드 스니커 1 / 5
ClassChangeTable:SetClassChange_Quest(22,7850, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"])--윈드 스니커 2 / 5
ClassChangeTable:SetClassChange_Quest(23,7860, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"])--윈드 스니커 3 / 5
ClassChangeTable:SetClassChange_Quest(24,7870, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"])--윈드 스니커 4 / 5
ClassChangeTable:SetClassChange_Quest(25,7880, UNIT_CLASS["UC_LIRE_COMBAT_RANGER"])--윈드 스니커 5 / 5
--스나이핑 레인저
ClassChangeTable:SetClassChange_Quest(21,7890, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"])--그랜드 아처 1 / 5
ClassChangeTable:SetClassChange_Quest(22,7900, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"])--그랜드 아처 2 / 5
ClassChangeTable:SetClassChange_Quest(23,7910, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"])--그랜드 아처 3 / 5
ClassChangeTable:SetClassChange_Quest(24,7920, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"])--그랜드 아처 4 / 5
ClassChangeTable:SetClassChange_Quest(25,7930, UNIT_CLASS["UC_LIRE_SNIPING_RANGER"])--그랜드 아처 5 / 5
--트래핑 레인저
ClassChangeTable:SetClassChange_Quest(21,35080, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"])--나이트 와처 1 / 5
ClassChangeTable:SetClassChange_Quest(22,35081, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"])--나이트 와처 2 / 5
ClassChangeTable:SetClassChange_Quest(23,35082, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"])--나이트 와처 3 / 5
ClassChangeTable:SetClassChange_Quest(24,35083, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"])--나이트 와처 4 / 5
ClassChangeTable:SetClassChange_Quest(25,35084, UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"])--나이트 와처 5 / 5

--소드 테이커
ClassChangeTable:SetClassChange_Quest(21,8300, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"])--블레이드 마스터 1 / 5
ClassChangeTable:SetClassChange_Quest(22,8310, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"])--블레이드 마스터 2 / 5
ClassChangeTable:SetClassChange_Quest(23,8320, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"])--블레이드 마스터 3 / 5
ClassChangeTable:SetClassChange_Quest(24,8330, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"])--블레이드 마스터 4 / 5
ClassChangeTable:SetClassChange_Quest(25,8340, UNIT_CLASS["UC_RAVEN_SOUL_TAKER"])--블레이드 마스터 5 / 5
--오버 테이커
ClassChangeTable:SetClassChange_Quest(21,8350, UNIT_CLASS["UC_RAVEN_OVER_TAKER"])--레크리스 피스트 1 / 5
ClassChangeTable:SetClassChange_Quest(22,8360, UNIT_CLASS["UC_RAVEN_OVER_TAKER"])--레크리스 피스트 2 / 5
ClassChangeTable:SetClassChange_Quest(23,8370, UNIT_CLASS["UC_RAVEN_OVER_TAKER"])--레크리스 피스트 3 / 5
ClassChangeTable:SetClassChange_Quest(24,8380, UNIT_CLASS["UC_RAVEN_OVER_TAKER"])--레크리스 피스트 4 / 5
ClassChangeTable:SetClassChange_Quest(25,8390, UNIT_CLASS["UC_RAVEN_OVER_TAKER"])--레크리스 피스트 5 / 5
--웨폰 테이커
ClassChangeTable:SetClassChange_Quest(21,35120, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"])--베테랑 커맨더 1 / 5
ClassChangeTable:SetClassChange_Quest(22,35121, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"])--베테랑 커맨더 2 / 5
ClassChangeTable:SetClassChange_Quest(23,35122, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"])--베테랑 커맨더 3 / 5
ClassChangeTable:SetClassChange_Quest(24,35123, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"])--베테랑 커맨더 4 / 5
ClassChangeTable:SetClassChange_Quest(25,35124, UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"])--베테랑 커맨더 5 / 5

--코드 엑조틱
ClassChangeTable:SetClassChange_Quest(21,8400, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"])--코드 네메시스 1 / 5
ClassChangeTable:SetClassChange_Quest(22,8410, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"])--코드 네메시스 2 / 5
ClassChangeTable:SetClassChange_Quest(23,8420, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"])--코드 네메시스 3 / 5
ClassChangeTable:SetClassChange_Quest(24,8430, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"])--코드 네메시스 4 / 5
ClassChangeTable:SetClassChange_Quest(25,8440, UNIT_CLASS["UC_EVE_EXOTIC_GEAR"])--코드 네메시스 5 / 5
--코드 아키텍처
ClassChangeTable:SetClassChange_Quest(21,8450, UNIT_CLASS["UC_EVE_ARCHITECTURE"])--코드 엠프레스 1 / 5
ClassChangeTable:SetClassChange_Quest(22,8460, UNIT_CLASS["UC_EVE_ARCHITECTURE"])--코드 엠프레스 2 / 5
ClassChangeTable:SetClassChange_Quest(23,8470, UNIT_CLASS["UC_EVE_ARCHITECTURE"])--코드 엠프레스 3 / 5
ClassChangeTable:SetClassChange_Quest(24,8480, UNIT_CLASS["UC_EVE_ARCHITECTURE"])--코드 엠프레스 4 / 5
ClassChangeTable:SetClassChange_Quest(25,8490, UNIT_CLASS["UC_EVE_ARCHITECTURE"])--코드 엠프레스 5 / 5
--코드 일렉트라
ClassChangeTable:SetClassChange_Quest(21,35160, UNIT_CLASS["UC_EVE_ELECTRA"])--코드 배틀 세라프 1 / 5
ClassChangeTable:SetClassChange_Quest(22,35161, UNIT_CLASS["UC_EVE_ELECTRA"])--코드 배틀 세라프 2 / 5
ClassChangeTable:SetClassChange_Quest(23,35162, UNIT_CLASS["UC_EVE_ELECTRA"])--코드 배틀 세라프 3 / 5
ClassChangeTable:SetClassChange_Quest(24,35163, UNIT_CLASS["UC_EVE_ELECTRA"])--코드 배틀 세라프 4 / 5
ClassChangeTable:SetClassChange_Quest(25,35164, UNIT_CLASS["UC_EVE_ELECTRA"])--코드 배틀 세라프 5 / 5

--퓨리 가디언
ClassChangeTable:SetClassChange_Quest(21,8400, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"])--아이언 팔라딘 1 / 5
ClassChangeTable:SetClassChange_Quest(22,8410, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"])--아이언 팔라딘 2 / 5
ClassChangeTable:SetClassChange_Quest(23,8420, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"])--아이언 팔라딘 3 / 5
ClassChangeTable:SetClassChange_Quest(24,8430, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"])--아이언 팔라딘 4 / 5
ClassChangeTable:SetClassChange_Quest(25,8440, UNIT_CLASS["UC_CHUNG_FURY_GUARDIAN"])--아이언 팔라딘 5 / 5
--슈팅 가디언
ClassChangeTable:SetClassChange_Quest(21,8450, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"])--데들리 체이서 1 / 5
ClassChangeTable:SetClassChange_Quest(22,8460, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"])--데들리 체이서 2 / 5
ClassChangeTable:SetClassChange_Quest(23,8470, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"])--데들리 체이서 3 / 5
ClassChangeTable:SetClassChange_Quest(24,8480, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"])--데들리 체이서 4 / 5
ClassChangeTable:SetClassChange_Quest(25,8490, UNIT_CLASS["UC_CHUNG_SHOOTING_GUARDIAN"])--데들리 체이서 5 / 5
--쉘링 가디언
ClassChangeTable:SetClassChange_Quest(21,35200, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"])--택티컬 트루퍼 1 / 5
ClassChangeTable:SetClassChange_Quest(22,35201, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"])--택티컬 트루퍼 2 / 5
ClassChangeTable:SetClassChange_Quest(23,35202, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"])--택티컬 트루퍼 3 / 5
ClassChangeTable:SetClassChange_Quest(24,35203, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"])--택티컬 트루퍼 4 / 5
ClassChangeTable:SetClassChange_Quest(25,35204, UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"])--택티컬 트루퍼 5 / 5
--소선
ClassChangeTable:SetClassChange_Quest(21,35240, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"])--제천 1 / 5
ClassChangeTable:SetClassChange_Quest(22,35250, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"])--제천 2 / 5
ClassChangeTable:SetClassChange_Quest(23,35260, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"])--제천 3 / 5
ClassChangeTable:SetClassChange_Quest(24,35270, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"])--제천 4 / 5
ClassChangeTable:SetClassChange_Quest(25,35280, UNIT_CLASS["UC_ARA_LITTLE_HSIEN"])--제천 5 / 5

--소마
ClassChangeTable:SetClassChange_Quest(21,35390, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"])--명왕 1 / 5
ClassChangeTable:SetClassChange_Quest(22,35391, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"])--명왕 2 / 5
ClassChangeTable:SetClassChange_Quest(23,35392, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"])--명왕 3 / 5
ClassChangeTable:SetClassChange_Quest(24,35393, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"])--명왕 4 / 5
ClassChangeTable:SetClassChange_Quest(25,35394, UNIT_CLASS["UC_ARA_LITTLE_DEVIL"])--명왕 5 / 5
-- 엘리시스 ClassChangeQuest.lua (cloned from Elsword parallels)
--ClassChangeTable:SetClassChange_Quest( 1, 1450, UNIT_CLASS["UC_ELESIS_KNIGHT"] )   -- 예제
--ClassChangeTable:SetClassChange_Quest( 1, 1450, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"] )   -- 예제
--ClassChangeTable:SetClassChange_Quest( 1, 1450, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"] )   -- 예제
ClassChangeTable:SetClassChange_Quest(111,6930, UNIT_CLASS["UC_ELESIS_KNIGHT"])--카밀라의 기초 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(111,6930, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"])--카밀라의 기초 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(111,6930, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"])--카밀라의 기초 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(112,6940, UNIT_CLASS["UC_ELESIS_KNIGHT"])--카밀라의 기초 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(112,6940, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"])--카밀라의 기초 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(112,6940, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"])--카밀라의 기초 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(113,6950, UNIT_CLASS["UC_ELESIS_KNIGHT"])--카밀라의 기초 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(113,6950, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"])--카밀라의 기초 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(113,6950, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"])--카밀라의 기초 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(114,6960, UNIT_CLASS["UC_ELESIS_KNIGHT"])--카밀라의 기초 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(114,6960, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"])--카밀라의 기초 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(114,6960, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"])--카밀라의 기초 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(115,6970, UNIT_CLASS["UC_ELESIS_KNIGHT"])--카밀라의 기초 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(115,6970, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"])--카밀라의 기초 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(115,6970, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"])--카밀라의 기초 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(121,6980, UNIT_CLASS["UC_ELESIS_KNIGHT"])--카밀라의 중급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(121,6980, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"])--카밀라의 중급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(121,6980, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"])--카밀라의 중급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(122,6990, UNIT_CLASS["UC_ELESIS_KNIGHT"])--카밀라의 중급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(122,6990, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"])--카밀라의 중급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(122,6990, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"])--카밀라의 중급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(123,7000, UNIT_CLASS["UC_ELESIS_KNIGHT"])--카밀라의 중급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(123,7000, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"])--카밀라의 중급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(123,7000, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"])--카밀라의 중급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(124,7010, UNIT_CLASS["UC_ELESIS_KNIGHT"])--카밀라의 중급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(124,7010, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"])--카밀라의 중급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(124,7010, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"])--카밀라의 중급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(125,7020, UNIT_CLASS["UC_ELESIS_KNIGHT"])--카밀라의 중급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(125,7020, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"])--카밀라의 중급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(125,7020, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"])--카밀라의 중급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(131,7080, UNIT_CLASS["UC_ELESIS_KNIGHT"])--카밀라의 상급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(131,7080, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"])--카밀라의 상급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(131,7080, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"])--카밀라의 상급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(132,7090, UNIT_CLASS["UC_ELESIS_KNIGHT"])--카밀라의 상급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(132,7090, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"])--카밀라의 상급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(132,7090, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"])--카밀라의 상급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(133,7100, UNIT_CLASS["UC_ELESIS_KNIGHT"])--카밀라의 상급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(133,7100, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"])--카밀라의 상급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(133,7100, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"])--카밀라의 상급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(134,7110, UNIT_CLASS["UC_ELESIS_KNIGHT"])--카밀라의 상급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(134,7110, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"])--카밀라의 상급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(134,7110, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"])--카밀라의 상급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(135,7120, UNIT_CLASS["UC_ELESIS_KNIGHT"])--카밀라의 상급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(135,7120, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"])--카밀라의 상급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(135,7120, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"])--카밀라의 상급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(141,9600, UNIT_CLASS["UC_ELESIS_KNIGHT"])--카밀라의 고급 기술 훈련 1 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(141,9600, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"])--카밀라의 고급 기술 훈련 1 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(141,9600, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"])--카밀라의 고급 기술 훈련 1 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(142,9610, UNIT_CLASS["UC_ELESIS_KNIGHT"])--카밀라의 고급 기술 훈련 2 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(142,9610, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"])--카밀라의 고급 기술 훈련 2 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(142,9610, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"])--카밀라의 고급 기술 훈련 2 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(143,9620, UNIT_CLASS["UC_ELESIS_KNIGHT"])--카밀라의 고급 기술 훈련 3 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(143,9620, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"])--카밀라의 고급 기술 훈련 3 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(143,9620, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"])--카밀라의 고급 기술 훈련 3 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(144,9630, UNIT_CLASS["UC_ELESIS_KNIGHT"])--카밀라의 고급 기술 훈련 4 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(144,9630, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"])--카밀라의 고급 기술 훈련 4 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(144,9630, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"])--카밀라의 고급 기술 훈련 4 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(145,9640, UNIT_CLASS["UC_ELESIS_KNIGHT"])--카밀라의 고급 기술 훈련 5 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(145,9640, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"])--카밀라의 고급 기술 훈련 5 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(145,9640, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"])--카밀라의 고급 기술 훈련 5 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(111,6931, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"])--카밀라의 기초 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(111,6931, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"])--카밀라의 기초 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(112,6941, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"])--카밀라의 기초 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(112,6941, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"])--카밀라의 기초 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(113,6951, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"])--카밀라의 기초 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(113,6951, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"])--카밀라의 기초 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(114,6961, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"])--카밀라의 기초 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(114,6961, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"])--카밀라의 기초 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(115,6971, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"])--카밀라의 기초 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(115,6971, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"])--카밀라의 기초 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(121,6981, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"])--카밀라의 중급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(121,6981, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"])--카밀라의 중급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(122,6991, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"])--카밀라의 중급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(122,6991, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"])--카밀라의 중급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(123,7001, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"])--카밀라의 중급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(123,7001, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"])--카밀라의 중급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(124,7011, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"])--카밀라의 중급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(124,7011, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"])--카밀라의 중급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(125,7021, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"])--카밀라의 중급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(125,7021, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"])--카밀라의 중급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(131,7081, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"])--카밀라의 상급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(131,7081, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"])--카밀라의 상급 기술 훈련 1 / 5
ClassChangeTable:SetClassChange_Quest(132,7091, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"])--카밀라의 상급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(132,7091, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"])--카밀라의 상급 기술 훈련 2 / 5
ClassChangeTable:SetClassChange_Quest(133,7101, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"])--카밀라의 상급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(133,7101, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"])--카밀라의 상급 기술 훈련 3 / 5
ClassChangeTable:SetClassChange_Quest(134,7111, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"])--카밀라의 상급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(134,7111, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"])--카밀라의 상급 기술 훈련 4 / 5
ClassChangeTable:SetClassChange_Quest(135,7121, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"])--카밀라의 상급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(135,7121, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"])--카밀라의 상급 기술 훈련 5 / 5
ClassChangeTable:SetClassChange_Quest(141,9601, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"])--카밀라의 고급 기술 훈련 1 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(141,9601, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"])--카밀라의 고급 기술 훈련 1 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(142,9611, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"])--카밀라의 고급 기술 훈련 2 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(142,9611, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"])--카밀라의 고급 기술 훈련 2 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(143,9621, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"])--카밀라의 고급 기술 훈련 3 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(143,9621, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"])--카밀라의 고급 기술 훈련 3 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(144,9631, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"])--카밀라의 고급 기술 훈련 4 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(144,9631, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"])--카밀라의 고급 기술 훈련 4 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(145,9641, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"])--카밀라의 고급 기술 훈련 5 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(145,9641, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"])--카밀라의 고급 기술 훈련 5 / 5필요없지만 추가함 (1차 캐릭으론 수행할 수 없음으로)
ClassChangeTable:SetClassChange_Quest(21,7660, UNIT_CLASS["UC_ELESIS_KNIGHT"])--로드 나이트 1 / 5
ClassChangeTable:SetClassChange_Quest(21,7660, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"])--로드 나이트 1 / 5
ClassChangeTable:SetClassChange_Quest(21,7660, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"])--로드 나이트 1 / 5
ClassChangeTable:SetClassChange_Quest(22,7670, UNIT_CLASS["UC_ELESIS_KNIGHT"])--로드 나이트 2 / 5
ClassChangeTable:SetClassChange_Quest(22,7670, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"])--로드 나이트 2 / 5
ClassChangeTable:SetClassChange_Quest(22,7670, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"])--로드 나이트 2 / 5
ClassChangeTable:SetClassChange_Quest(23,7680, UNIT_CLASS["UC_ELESIS_KNIGHT"])--로드 나이트 3 / 5
ClassChangeTable:SetClassChange_Quest(23,7680, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"])--로드 나이트 3 / 5
ClassChangeTable:SetClassChange_Quest(23,7680, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"])--로드 나이트 3 / 5
ClassChangeTable:SetClassChange_Quest(24,7690, UNIT_CLASS["UC_ELESIS_KNIGHT"])--로드 나이트 4 / 5
ClassChangeTable:SetClassChange_Quest(24,7690, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"])--로드 나이트 4 / 5
ClassChangeTable:SetClassChange_Quest(24,7690, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"])--로드 나이트 4 / 5
ClassChangeTable:SetClassChange_Quest(25,7700, UNIT_CLASS["UC_ELESIS_KNIGHT"])--로드 나이트 5 / 5
ClassChangeTable:SetClassChange_Quest(25,7700, UNIT_CLASS["UC_ELESIS_SABER_KNIGHT"])--로드 나이트 5 / 5
ClassChangeTable:SetClassChange_Quest(25,7700, UNIT_CLASS["UC_ELESIS_GRAND_MASTER"])--로드 나이트 5 / 5
ClassChangeTable:SetClassChange_Quest(21,7710, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"])--룬 슬레이어 1 / 5
ClassChangeTable:SetClassChange_Quest(21,7710, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"])--룬 슬레이어 1 / 5
ClassChangeTable:SetClassChange_Quest(22,7720, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"])--룬 슬레이어 2 / 5
ClassChangeTable:SetClassChange_Quest(22,7720, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"])--룬 슬레이어 2 / 5
ClassChangeTable:SetClassChange_Quest(23,7730, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"])--룬 슬레이어 3 / 5
ClassChangeTable:SetClassChange_Quest(23,7730, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"])--룬 슬레이어 3 / 5
ClassChangeTable:SetClassChange_Quest(24,7740, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"])--룬 슬레이어 4 / 5
ClassChangeTable:SetClassChange_Quest(24,7740, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"])--룬 슬레이어 4 / 5
ClassChangeTable:SetClassChange_Quest(25,7750, UNIT_CLASS["UC_ELESIS_PYRO_KNIGHT"])--룬 슬레이어 5 / 5
ClassChangeTable:SetClassChange_Quest(25,7750, UNIT_CLASS["UC_ELESIS_BLAZING_HEART"])--룬 슬레이어 5 / 5
