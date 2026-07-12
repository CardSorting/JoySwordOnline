-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--## 각 이벤트 마다 아이디가 겹치지 않아야 하지만 다른 이벤트 끼리는 상광없음. ##

--[[REWARD]]
-- 1 arg : reward id
-- 2 arg : EXE rate
-- 3 arg : VP rate
-- 4 arg : Ed rate

-- 5 arg : Dungeon ID(난이도는 식별하지 않는다.)
-- 6 arg : Unit Level
-- 7 arg : Unit Class
-- 8 arg : dungeon game party unit num
-- # 5, 6, 7, 8 arg 는 사용하지 않는 항목은 0으로 셋팅해야함.
-- # 5,6,7 항목과 8 항목은 전혀 별개로 사용해야함.

CRITERION_USER_TYPE =
{
	CUT_NONE		= 0,
	CUT_EXIST		= 1,
	CUT_COMEBACK	= 2,
	CUT_NEW			= 4,
	CUT_JUMPING		= 8,
	CUT_NOT_JUMPING	= 7,
	CUT_ALL			= 15,
}

--경험치 2배
GameEvent:AddReward( 1, { fEXPRate = 1.0 } )
--경험치 20배
GameEvent:AddReward( 1001, { fEXPRate = 20.0 } )
--vp 2배
GameEvent:AddReward( 2, { fVPRate = 1.0 } )
--ed 2배
GameEvent:AddReward( 3, { fEDRate = 1.0 } )

--초심자의 숲 : 경험치 2배
GameEvent:AddReward( 4, { fEXPRate = 1.0, iDungeonID = 30040 } )
--엘의 나무 서쪽 : 경험치 2배
GameEvent:AddReward( 5, { fEXPRate = 1.0, iDungeonID = 30010 } )
--엘의 나무 : 경험치 2배
GameEvent:AddReward( 6, { fEXPRate = 1.0, iDungeonID = 30000 } )
--엘의 나무 동쪽 : 경험치 2배
GameEvent:AddReward( 7, { fEXPRate = 1.0, iDungeonID = 30090 } )
--엘의 나무 북쪽 : 경험치 2배
GameEvent:AddReward( 8, { fEXPRate = 1.0, iDungeonID = 30020 } )
--원숭이 숲 : 경험치 2배
GameEvent:AddReward( 9, { fEXPRate = 1.0, iDungeonID = 30080 } )
--어둠의 숲 : 경험치 2배
GameEvent:AddReward( 10, { fEXPRate = 1.0, iDungeonID = 30070 } )

--파티경험치 이벤트
GameEvent:AddReward( 11, { fEXPRate = 1.0, iPartyNum = 2 } )

--경험치, vp, ed 150%
--GameEvent:AddReward( 12, { fEXPRate = 0.5, fVPRate = 0.5, fEDRate = 0.5 } )
GameEvent:AddReward( 12, { fEXPRate = 0.5 } )

--경험치, vp, ed 200%
GameEvent:AddReward( 13, { fEXPRate = 1.0, fVPRate = 1.0, fEDRate = 1.0 } )


-- 매일매일 이벤트
GameEvent:AddReward( 14, { fEventTime = 120, iRewardID = 14 } ) -- 월요일
GameEvent:AddReward( 15, { fEventTime = 120, iRewardID = 15 } ) -- 화요일
GameEvent:AddReward( 16, { fEventTime = 120, iRewardID = 16 } ) -- 수요일
GameEvent:AddReward( 17, { fEventTime = 120, iRewardID = 17 } ) -- 목요일 6월 26일
GameEvent:AddReward( 18, { fEventTime = 120, iRewardID = 18 } ) -- 목요일 7월  3일
GameEvent:AddReward( 19, { fEventTime = 120, iRewardID = 19 } ) -- 목요일 7월 10일
GameEvent:AddReward( 20, { fEventTime = 120, iRewardID = 20 } ) -- 금요일
GameEvent:AddReward( 21, { fEventTime = 120, iRewardID = 21 } ) -- 토요일
GameEvent:AddReward( 22, { fEventTime = 120, iRewardID = 22 } ) -- 일요일

-- ACT3 이벤트
GameEvent:AddReward( 23, { fEventTime =   0, iRewardID = 30 } )  -- ACT3 이벤트	출입증서 랜덤 큐브
GameEvent:AddReward( 24, { fEventTime =   0, iRewardID = 31 } )  -- ACT3 이벤트	무기 랜덤 큐브
GameEvent:AddReward( 25, { fEventTime =   0, iRewardID = 32 } )  -- ACT3 이벤트	회복 랜덤 큐브
GameEvent:AddReward( 26, { fEventTime =   0, iRewardID = 33 } )  -- ACT3 이벤트	마법석 랜덤 큐브
GameEvent:AddReward( 27, { fEventTime =   0, iRewardID = 34 } )  -- ACT3 이벤트	강화석 랜덤 큐브
GameEvent:AddReward( 28, { fEventTime =   0, iRewardID = 35 } )  -- ACT3 이벤트	ACT3 글자 랜덤 큐브
GameEvent:AddReward( 29, { fEventTime =   0, iRewardID = 20 } )  -- ACT3 이벤트	ACT3 경험치 15% 메달
GameEvent:AddReward( 30, { fEventTime = 120, iRewardID = 36 } )  -- ACT3 이벤트	ACT3 글자 A
GameEvent:AddReward( 31, { fEventTime = 180, iRewardID = 37 } )  -- ACT3 이벤트	ACT3 글자 C
GameEvent:AddReward( 32, { fEventTime = 120, iRewardID = 38 } )  -- ACT3 이벤트	ACT3 글자 T


--경험치 1.5배
GameEvent:AddReward( 33, { fEXPRate = 0.5 } )
--vp 1.5배
GameEvent:AddReward( 34, { fVPRate = 0.5 } )
--ed 1.5배
GameEvent:AddReward( 35, { fEDRate = 0.5 } )


-- 올림픽 이벤트
GameEvent:AddReward( 36, { fEventTime =   0, iRewardID = 42, bGiveOnce = False, bDelEndEvent = True  } )	-- 금메달 큐브
GameEvent:AddReward( 37, { fEventTime = 120, iRewardID = 43, bGiveOnce = False } )							-- 대표팀 응원 아이템


-- 신학기 기념 이벤트
GameEvent:AddReward( 38, { fEventTime =   0, iRewardID = 44 } )  -- 신학기 기념 출입증 큐브


--경험치 3배
GameEvent:AddReward( 39, { fEXPRate = 2.0 } )
--vp 3배
GameEvent:AddReward( 40, { fVPRate = 2.0 } )
--ed 3배
GameEvent:AddReward( 41, { fEDRate = 2.0 } )


-- 추석 이벤트
GameEvent:AddReward( 42, { fEventTime =   0, iRewardID = 45 } )  -- 추석 이벤트	부활석 큐브
GameEvent:AddReward( 43, { fEventTime =   0, iRewardID = 46 } )  -- 추석 이벤트	출입 랜덤 큐브
GameEvent:AddReward( 44, { fEventTime =   0, iRewardID = 47 } )  -- 추석 이벤트	무기 강화석
GameEvent:AddReward( 45, { fEventTime =   0, iRewardID = 48 } )  -- 추석 이벤트	마법석
GameEvent:AddReward( 46, { fEventTime = 120, iRewardID = 49, bGiveOnce = False } )  -- 추석 이벤트	한가위 종합 선물 세트


-- ACT4 이벤트
GameEvent:AddReward( 47, { fEXPRate = 2.0, iPartyNum = 2 } )

GameEvent:AddReward( 48, { fEventTime =	 0, iRewardID = 50 } )  -- ACT4 이벤트 방어구 강화석
GameEvent:AddReward( 49, { fEventTime =	 0, iRewardID = 51 } )  -- ACT4 이벤트 요리재료세트 묶음
GameEvent:AddReward( 50, { fEventTime =	 0, iRewardID = 52 } )  -- ACT4 이벤트 무기 큐브
GameEvent:AddReward( 51, { fEventTime =	 0, iRewardID = 53 } )  -- ACT4 이벤트 장비제조재료세트 묶음
GameEvent:AddReward( 52, { fEventTime =	 0, iRewardID = 54 } )  -- ACT4 이벤트 무기 강화석
GameEvent:AddReward( 53, { fEventTime =	 0, iRewardID = 55 } )  -- ACT4 이벤트 고급 마법석
GameEvent:AddReward( 54, { fEventTime =	 0, iRewardID = 56 } )  -- ACT4 이벤트 출입 랜덤 큐브
GameEvent:AddReward( 55, { fEventTime =	 0, iRewardID = 57 } )  -- ACT4 이벤트 부활석 큐브
GameEvent:AddReward( 56, { fEventTime =	 0, iRewardID = 58 } )  -- ACT4 이벤트 마법석
GameEvent:AddReward( 57, { fEventTime =	 0, iRewardID = 59 } )  -- ACT4 이벤트 포션 세트


-- 300일 이벤트
GameEvent:AddReward( 58, { fEventTime =	 0, iRewardID = 60 } )  -- 300일 이벤트 종합 선물 세트


-- ACT4 이벤트
GameEvent:AddReward( 59, { fEventTime =	 0, iRewardID = 61 } )  -- ACT4 이벤트 엘의 조각 (불명)
GameEvent:AddReward( 60, { fEventTime =	 0, iRewardID = 62 } )  -- ACT4 이벤트 엘의 조각 (레드)
GameEvent:AddReward( 61, { fEventTime =	 0, iRewardID = 63 } )  -- ACT4 이벤트 엘의 조각 (블루)
GameEvent:AddReward( 62, { fEventTime =	 0, iRewardID = 64 } )  -- ACT4 이벤트 엘의 조각 (그린)
GameEvent:AddReward( 63, { fEventTime =	 0, iRewardID = 65 } )  -- ACT4 이벤트 엘의 조각 (윈드)
GameEvent:AddReward( 64, { fEventTime =	 0, iRewardID = 66 } )  -- ACT4 이벤트 엘의 조각 (라이트)
GameEvent:AddReward( 65, { fEventTime =	 0, iRewardID = 67 } )  -- ACT4 이벤트 엘의 조각 (다크)
GameEvent:AddReward( 66, { fEventTime =	 0, iRewardID = 68 } )  -- ACT4 이벤트 엘의 조각 (불명 1개)


-- 할로윈 이벤트
GameEvent:AddReward( 67, { fEventTime = 150, iRewardID = 69 } )  -- 할로윈 선물 세트
GameEvent:AddReward( 68, { fEventTime =	  0, iRewardID = 70, bGiveOnce = False } )  -- 할로윈 던전 입장권
	
	
-- 가을 이벤트
GameEvent:AddReward( 69, { fEventTime =   0, iRewardID = 71 } )  -- 가을 선물 세트


-- 개편 기념 이벤트
GameEvent:AddReward( 70, { fEventTime =   0, iRewardID = 72 } )  -- 개편 기념 선물 세트
GameEvent:AddReward( 71, { fEventTime = 150, iRewardID = 72 } )  -- 개편 기념 선물 세트


-- 20레벨 이하는 경험치 150% 보너스!
GameEvent:AddReward( 72, { fEXPRate = 0.5, iUnitLevel = 20 } )


-- 시즌2 전야 이벤트
GameEvent:AddReward( 73, { fEventTime = 150, iRewardID = 73 } )  -- 시즌2 전야 선물


-- 신캐릭터 이벤트
GameEvent:AddReward( 74, { fEventTime =   0, iRewardID = 75 } )  -- 신캐릭터 이벤트 : 경험치 15% 메달
GameEvent:AddReward( 75, { fEventTime =   0, iRewardID = 76 } )  -- 신캐릭터 이벤트 : 엘의 조각 (불명)
GameEvent:AddReward( 76, { fEventTime =   0, iRewardID = 77 } )  -- 신캐릭터 이벤트 : 축복 받은 무강 3개, 방강 3개


-- 크리스마스 이벤트
GameEvent:AddReward( 77, { fEventTime =   0, iRewardID = 78 } )  -- 포션세트
GameEvent:AddReward( 78, { fEventTime =   0, iRewardID = 79 } )  -- 출입 랜덤 큐브
GameEvent:AddReward( 79, { fEventTime =   0, iRewardID = 80 } )  -- 부활석 큐브
GameEvent:AddReward( 80, { fEventTime =   0, iRewardID = 81 } )  -- 고급 마법석 2개, 마법석 2개
GameEvent:AddReward( 81, { fEventTime =   0, iRewardID = 82 } )  -- 축복 받은 무강 2개, 축복 받은 방강 2개
GameEvent:AddReward( 82, { fEventTime =   0, iRewardID = 83 } )  -- 엘의 조각 (불명) 2개
GameEvent:AddReward( 83, { fEventTime =   0, iRewardID = 84 } )  -- 루돌프 사슴코 1개


--기축년 이벤트
GameEvent:AddReward( 84, { fEventTime =   0, iRewardID = 85 } )  -- 기축년 기념 칭호 1개


-- 겨울 캠프 이벤트
GameEvent:AddReward( 85,  { fEventTime = 100, iRewardID = 86  } )  -- '4주간의 겨울 캠프 1월8일자 응모권'
GameEvent:AddReward( 86,  { fEventTime = 100, iRewardID = 87  } )  -- '4주간의 겨울 캠프 1월9일자 응모권' 
GameEvent:AddReward( 87,  { fEventTime = 100, iRewardID = 88  } )  -- '4주간의 겨울 캠프 1월10일자 응모권'
GameEvent:AddReward( 88,  { fEventTime = 100, iRewardID = 89  } )  -- '4주간의 겨울 캠프 1월11일자 응모권'
GameEvent:AddReward( 89,  { fEventTime = 100, iRewardID = 90  } )  -- '4주간의 겨울 캠프 1월12일자 응모권'
GameEvent:AddReward( 90,  { fEventTime = 100, iRewardID = 91  } )  -- '4주간의 겨울 캠프 1월13일자 응모권'
GameEvent:AddReward( 91,  { fEventTime = 100, iRewardID = 92  } )  -- '4주간의 겨울 캠프 1월14일자 응모권'
GameEvent:AddReward( 92,  { fEventTime = 100, iRewardID = 93  } )  -- '4주간의 겨울 캠프 1월15일자 응모권'
GameEvent:AddReward( 93,  { fEventTime = 100, iRewardID = 94  } )  -- '4주간의 겨울 캠프 1월16일자 응모권'
GameEvent:AddReward( 94,  { fEventTime = 100, iRewardID = 95  } )  -- '4주간의 겨울 캠프 1월17일자 응모권'
GameEvent:AddReward( 95,  { fEventTime = 100, iRewardID = 96  } )  -- '4주간의 겨울 캠프 1월18일자 응모권'
GameEvent:AddReward( 96,  { fEventTime = 100, iRewardID = 97  } )  -- '4주간의 겨울 캠프 1월19일자 응모권'
GameEvent:AddReward( 97,  { fEventTime = 100, iRewardID = 98  } )  -- '4주간의 겨울 캠프 1월20일자 응모권'
GameEvent:AddReward( 98,  { fEventTime = 100, iRewardID = 99  } )  -- '4주간의 겨울 캠프 1월21일자 응모권'
GameEvent:AddReward( 99,  { fEventTime = 100, iRewardID = 100 } )  -- '4주간의 겨울 캠프 1월22일자 응모권'
GameEvent:AddReward( 100, { fEventTime = 100, iRewardID = 101 } )  -- '4주간의 겨울 캠프 1월23일자 응모권'
GameEvent:AddReward( 101, { fEventTime = 100, iRewardID = 102 } )  -- '4주간의 겨울 캠프 1월24일자 응모권'
GameEvent:AddReward( 102, { fEventTime = 100, iRewardID = 103 } )  -- '4주간의 겨울 캠프 1월25일자 응모권'
GameEvent:AddReward( 103, { fEventTime = 100, iRewardID = 104 } )  -- '4주간의 겨울 캠프 1월26일자 응모권'
GameEvent:AddReward( 104, { fEventTime = 100, iRewardID = 105 } )  -- '4주간의 겨울 캠프 1월27일자 응모권'
GameEvent:AddReward( 105, { fEventTime = 100, iRewardID = 106 } )  -- '4주간의 겨울 캠프 1월28일자 응모권'
GameEvent:AddReward( 106, { fEventTime = 100, iRewardID = 107 } )  -- '4주간의 겨울 캠프 1월29일자 응모권'
GameEvent:AddReward( 107, { fEventTime = 100, iRewardID = 108 } )  -- '4주간의 겨울 캠프 1월30일자 응모권'
GameEvent:AddReward( 108, { fEventTime = 100, iRewardID = 109 } )  -- '4주간의 겨울 캠프 1월31일자 응모권'
GameEvent:AddReward( 109, { fEventTime = 100, iRewardID = 110 } )  -- '4주간의 겨울 캠프 2월1일자 응모권' 
GameEvent:AddReward( 110, { fEventTime = 100, iRewardID = 111 } )  -- '4주간의 겨울 캠프 2월2일자 응모권' 
GameEvent:AddReward( 111, { fEventTime = 100, iRewardID = 112 } )  -- '4주간의 겨울 캠프 2월3일자 응모권' 
GameEvent:AddReward( 112, { fEventTime = 100, iRewardID = 113 } )  -- '4주간의 겨울 캠프 2월4일자 응모권' 


-- 설날 이벤트
GameEvent:AddReward( 113, { fEventTime =   0, iRewardID = 114 } )  -- 새해맞이 떡국 1개, 출입랜덤큐브 1개
GameEvent:AddReward( 114, { fEventTime =   0, iRewardID = 115 } )  -- 새해의 마음가짐 칭호 획득 아이템


-- 20레벨 이하는 경험치 200% 보너스!
GameEvent:AddReward( 115, { fEXPRate = 1.0, iUnitLevel = 20 } )


-- 화이트 데이 이벤트
GameEvent:AddReward( 116, { fEventTime =   0, iRewardID = 116 } )  -- 화이트 데이 선물 1개


-- 오픈테섭 오픈이벤트
GameEvent:AddReward( 117, { fEventTime =  30, iRewardID = 117 } )  -- 선구자를 위한 선물


-- 만우절 이벤트
GameEvent:AddReward( 118, { fEventTime =   0, iRewardID = 118 } )  -- 만우절 큐브


-- 식목일 이벤트
GameEvent:AddReward( 119, { fEventTime =  30, iRewardID = 119 } )  -- 아리엘의 꽃삽
GameEvent:AddReward( 120, { fEventTime =  30, iRewardID = 120 } )  -- 아리엘의 꽃삽 & 경험치 100% 메달 큐브


-- 블랙데이 이벤트
GameEvent:AddReward( 121, { fEventTime =  30, iRewardID = 121 } )  -- 블랙데이 선물 세트


-- 방어도 개편 이벤트
GameEvent:AddReward( 122, { fEventTime =  30, iRewardID = 122 } )  -- 축복받은 방어구 강화석
GameEvent:AddReward( 123, { fEventTime = 120, iRewardID = 123 } )  -- 방어구 전용 강화 부적


-- 어린이날 이벤트
GameEvent:AddReward( 124, { fEventTime =   0, iRewardID = 124 } )  -- 윌리엄의 초대장
GameEvent:AddReward( 125, { fEventTime =  90, iRewardID = 125 } )  -- 분노의 반지 큐브
GameEvent:AddReward( 126, { fEventTime =  90, iRewardID = 126 } )  -- 엘의 조각 5개
GameEvent:AddReward( 127, { fEventTime =  90, iRewardID = 127 } )  -- 식목일 무기큐브
GameEvent:AddReward( 128, { fEventTime =  90, iRewardID = 128 } )  -- 고급마법석 5개
GameEvent:AddReward( 129, { fEventTime =  90, iRewardID = 129 } )  -- 축무강 5개, 축방강 5개
GameEvent:AddReward( 130, { fEventTime =  90, iRewardID = 130 } )  -- 프로모션 무기큐브
GameEvent:AddReward( 131, { fEventTime =  90, iRewardID = 131 } )  -- 마법의 목걸이 큐브
GameEvent:AddReward( 132, { fEventTime =   0, iRewardID = 132 } )  -- 엘수색대 장교 제복 헤어 큐브 [5월5일 당일]
GameEvent:AddReward( 133, { fEventTime = 120, iRewardID = 133 } )  -- 넥슨캐시 1만원 응모권 [5월5일 당일]


-- 500일 이벤트
GameEvent:AddReward( 134, { fEventTime =   0, iRewardID = 134 } )  -- 아크엔젤 아바타 풀세트 큐브 [5월9일 당일]
GameEvent:AddReward( 135, { fEventTime = 120, iRewardID = 135 } )  -- 넥슨캐시 1만원 응모권 [5월9일 당일]


-- 15레벨 이하는 경험치 200% 보너스!
GameEvent:AddReward( 136, { fEXPRate = 1.0, iUnitLevel = 15 } )


-- 현충일 이벤트, Act2 페스티벌, 주말 접속 이벤트
GameEvent:AddReward( 137, { fEventTime =   0, iRewardID = 137 } )  -- 한민족의 기상 [현충일]
GameEvent:AddReward( 138, { fEventTime =  90, iRewardID = 138 } )  -- '마법의 목걸이' 큐브
GameEvent:AddReward( 139, { fEventTime =  90, iRewardID = 139 } )  -- '분노의 반지' 큐브
GameEvent:AddReward( 140, { fEventTime =   0, iRewardID = 140 } )  -- 출입 랜덤 큐브


-- 대전 활성화 이벤트
GameEvent:AddReward( 141, { fEventTime =   0, iRewardID = 141 } )  -- 카밀라의 열쇠 10개


-- ACT2외전 이벤트
GameEvent:AddReward( 142, { fEventTime =   0, iRewardID = 142 } )  -- 매우가벼운 프로모션 무기 큐브
GameEvent:AddReward( 143, { fEventTime =   0, iRewardID = 143 } )  -- 재빠른 프로모션 무기 큐브
GameEvent:AddReward( 144, { fEventTime =   0, iRewardID = 144 } )  -- 강력한 프로모션 무기 큐브


-- ACT2외전 이벤트
GameEvent:AddReward( 145, { fEventTime = 120, iRewardID = 145 } )  -- [월] 부활석 10개 큐브
GameEvent:AddReward( 146, { fEventTime = 120, iRewardID = 146 } )  -- [화] 마법석 랜덤 큐브
GameEvent:AddReward( 147, { fEventTime = 120, iRewardID = 147 } )  -- [수] 플루오르 스톤 큐브
GameEvent:AddReward( 148, { fEventTime = 120, iRewardID = 148 } )  -- [목] 강화 큐브
GameEvent:AddReward( 149, { fEventTime = 120, iRewardID = 149 } )  -- [금] 액세서리 큐브
GameEvent:AddReward( 150, { fEventTime = 120, iRewardID = 150 } )  -- [토] 경험치 보너스 메달 큐브
GameEvent:AddReward( 151, { fEventTime = 120, iRewardID = 151 } )  -- [일] 랜덤 칭호 아이템 큐브

GameEvent:AddReward( 152, { fEventTime =   0, iRewardID = 152 } )  -- 헤니르의 열쇠 3개
GameEvent:AddReward( 153, { fEventTime =   0, iRewardID = 153 } )  -- 헤니르의 비밀 열쇠 1개


-- ACT2 외전 마지막 선물 큐브
GameEvent:AddReward( 154, { fEventTime =   0, iRewardID = 154 } )  -- ACT2 외전 마지막 선물 큐브


-- 신학기 이벤트
GameEvent:AddReward( 155, { fEventTime =   0, iRewardID = 155 } )  -- 신학기 특급 선물 큐브 1개
GameEvent:AddReward( 156, { fEventTime =  60, iRewardID = 156 } )  -- 신학기 스페셜 선물 큐브 1개


-- 패션쇼 이벤트
GameEvent:AddReward( 157, { fEventTime =  60, iRewardID = 157 } )  -- 패션쇼 큐브 1개
GameEvent:AddReward( 158, { fEventTime =   0, iRewardID = 158 } )  -- 매우 가벼운 프로모션 무기 큐브 1개
GameEvent:AddReward( 159, { fEventTime =   0, iRewardID = 159 } )  -- 재빠른 프로모션 무기 큐브 1개
GameEvent:AddReward( 160, { fEventTime =   0, iRewardID = 160 } )  -- 강력한 프로모션 무기 큐브 1개


-- 한가위 이벤트
GameEvent:AddReward( 161, { fEventTime =  80, iRewardID = 161 } )  -- 한가위 종합 선물 세트 (월)
GameEvent:AddReward( 162, { fEventTime =  80, iRewardID = 162 } )  -- 한가위 종합 선물 세트 (화)
GameEvent:AddReward( 163, { fEventTime =  80, iRewardID = 163 } )  -- 한가위 종합 선물 세트 (수)
GameEvent:AddReward( 164, { fEventTime =  80, iRewardID = 164 } )  -- 한가위 종합 선물 세트 (목)
GameEvent:AddReward( 165, { fEventTime =  80, iRewardID = 165 } )  -- 한가위 종합 선물 세트 (금)
GameEvent:AddReward( 166, { fEventTime =  80, iRewardID = 166 } )  -- 한가위 종합 선물 세트 (토)
GameEvent:AddReward( 167, { fEventTime =  80, iRewardID = 167 } )  -- 한가위 종합 선물 세트 (일)


-- ACT3 이벤트
GameEvent:AddReward( 168, { fEventTime =  60, iRewardID = 168 } )  -- ACT3 기념 행복한 토요일 큐브 (10월 31일)
GameEvent:AddReward( 169, { fEventTime =  60, iRewardID = 169 } )  -- ACT3 기념 행복한 토요일 큐브 (11월 7일)
GameEvent:AddReward( 170, { fEventTime =  60, iRewardID = 170 } )  -- ACT3 기념 행복한 토요일 큐브 (11월 14일)
GameEvent:AddReward( 171, { fEventTime =  60, iRewardID = 171 } )  -- ACT3 기념 행복한 토요일 큐브 (11월 21일)
GameEvent:AddReward( 172, { fEventTime =  80, iRewardID = 172 } )  -- ACT3 출석권


-- PC방 이벤트
GameEvent:AddReward( 173, { fEventTime =  50, iRewardID = 173, bPcBangEvent = True } )  -- PC방 출석권
GameEvent:AddReward( 174, { fEventTime =   0, iRewardID = 174, bPcBangEvent = True } )  -- PC방 스페셜 카드
GameEvent:AddReward( 175, { fEventTime =  50, iRewardID = 175, bPcBangEvent = True } )  -- 그레이트 비틀 무기 큐브


-- ACT3 강화 이벤트
GameEvent:AddReward( 176, { fEventTime =   0, iRewardID = 176 } )  -- 강화 이벤트 주문서 A
GameEvent:AddReward( 177, { fEventTime =   0, iRewardID = 177 } )  -- 강화 이벤트 주문서 B


-- 엘소드2차 전직 이벤트
GameEvent:AddReward( 178, { fEXPRate = 0.5, iUnitLevel = 34, cUnitType = UNIT_TYPE["UT_ELSWORD"] } )  -- 엘소드 캐릭터 34렙 이하 경험치 50%


-- 계정단위 접속시간 이벤트
GameEvent:AddReward( 179, { fEventTime =   1, iRewardID = 179 } )  -- 얼음 조각상 가열기


-- 겨울방학전야이벤트
GameEvent:AddReward( 180, { fEventTime =  70, iRewardID = 180 } )  -- 히어로 큐브 A
GameEvent:AddReward( 181, { fEventTime = 100, iRewardID = 181 } )  -- 히어로 큐브 B
GameEvent:AddReward( 182, { fEventTime =   0, iRewardID = 182 } )  -- 히어로 큐브 C


-- 크리스마스 트리 이벤트 [누적시간이벤트]
GameEvent:AddReward( 183, { fEventTime =  40, iRewardID = 183, bDirectReward = True } )	-- 크리스마스 트리 이벤트


-- 레나2차 전직 이벤트
GameEvent:AddReward( 184, { fEXPRate = 0.5, iUnitLevel = 34, cUnitType = UNIT_TYPE["UT_LIRE"] } )  -- 레나 캐릭터 35렙 이하 경험치 50%


-- 강화 데이 이벤트
GameEvent:AddReward( 185, { fEventTime =   0, iRewardID = 184, iUnitLevel = 10 } ) -- 강화의 부적 랜덤 큐브 (Lv.5~Lv.8)


-- 크리스마스 이벤트
GameEvent:AddReward( 186, { fEventTime =   0, iRewardID = 185 } ) -- 크리스마스 특별 아바타 무기(7일권)큐브
GameEvent:AddReward( 187, { fEventTime =   0, iRewardID = 186 } ) -- 2008 크리스마스 아바타 풀 세트(1일권)큐브


-- 2주년 이벤트
GameEvent:AddReward( 188, { fEventTime =   0, iRewardID = 187, iUnitLevel = 10 } ) -- 얼음 조각상 가열기 (아리엘의 선물)
GameEvent:AddReward( 189, { fEventTime =   0, iRewardID = 188 } ) -- 엘소드 2주년 칭호 아이템


-- 신서버 이벤트
GameEvent:AddReward( 190, { fEventTime =   0, iRewardID = 194 } ) -- 헤니르의 열쇠 큐브


-- PC방 이벤트
GameEvent:AddReward( 191, { fEventTime =  70, iRewardID = 196, bPcBangEvent = True } ) -- 완전 회복 포션 10개


-- 새해 맞이 이벤트 [누적시간이벤트]
GameEvent:AddReward( 192, { fEventTime = 100, iRewardID = 197 } ) -- (월) 플루오르 스톤 교환권
GameEvent:AddReward( 193, { fEventTime = 100, iRewardID = 198 } ) -- (화) 반지 악세사리 1일권 큐브
GameEvent:AddReward( 194, { fEventTime = 100, iRewardID = 199 } ) -- (수) 프로모션 아바타 1일권 큐브
GameEvent:AddReward( 195, { fEventTime = 100, iRewardID = 200 } ) -- (목) 아이템 업그레이드 재료 교환권
GameEvent:AddReward( 196, { fEventTime = 100, iRewardID = 201 } ) -- (금) 새해의 마음가짐(5일권)
GameEvent:AddReward( 197, { fEventTime = 100, iRewardID = 202 } ) -- (토) 경험치 메달 1일권 큐브
GameEvent:AddReward( 198, { fEventTime = 100, iRewardID = 203 } ) -- (일) 악세사리 1일권 큐브


-- 새해 맞이 이벤트
GameEvent:AddReward( 199, { fEventTime =   0, iRewardID = 204 } ) -- 새해 맞이 이벤트 : 새해 맞이 한복 아바타 (1일권) 큐브


-- 아이샤2차 전직 이벤트
GameEvent:AddReward( 200, { fEXPRate = 0.5, iUnitLevel = 34, cUnitType = UNIT_TYPE["UT_ARME"] } )  -- 아이샤 캐릭터 35렙 이하 경험치 50%


-- 겨울방학 이벤트 [누적시간이벤트]
GameEvent:AddReward( 201, { fEventTime =  80, iRewardID = 205 } ) -- 겨울방학 출석 스탬프 평일 5개
GameEvent:AddReward( 202, { fEventTime = 100, iRewardID = 206 } ) -- 겨울방학 출석 스탬프 주말 10개


-- PC방 이벤트
GameEvent:AddReward( 203, { fEventTime =  60, iRewardID = 207, bPcBangEvent = True } )  -- PC방 출석권
GameEvent:AddReward( 204, { fEventTime =   0, iRewardID = 208, bPcBangEvent = True } )  -- 헤니르 비밀열쇠 1개


-- PC방 이벤트
GameEvent:AddReward( 205, { fEventTime =  60, iRewardID = 209, bPcBangEvent = True } )  -- PC방 선물박스, 특별출석권
GameEvent:AddReward( 206, { fEventTime =   0, iRewardID = 210, bPcBangEvent = True } )  -- PC방 스페셜 큐브 1개


-- 레이븐2차 전직 이벤트
GameEvent:AddReward( 207, { fEXPRate = 0.5, iUnitLevel = 34, cUnitType = UNIT_TYPE["UT_RAVEN"] } )  -- 레이븐 캐릭터 35렙 이하 경험치 50%


-- 이브2차 전직 이벤트
GameEvent:AddReward( 208, { fEXPRate = 0.5, iUnitLevel = 34, cUnitType = UNIT_TYPE["UT_EVE"] } )  -- 이브 캐릭터 35렙 이하 경험치 50%


-- 가열기 이벤트
GameEvent:AddReward( 209, { fEventTime =   0, iRewardID = 187 } ) -- 얼음 조각상 가열기 (아리엘의 선물)


-- PC방 3월 이벤트
GameEvent:AddReward( 210, { fEventTime =  30, iRewardID = 211, bPcBangEvent = True } ) -- PC방 3월의 선물 큐브A 1개
GameEvent:AddReward( 211, { fEventTime =  30, iRewardID = 212, bPcBangEvent = True } ) -- PC방 3월의 선물 큐브B 1개


-- 화이트 데이 이벤트 [누적시간이벤트]
GameEvent:AddReward( 212, { fEventTime =  80, iRewardID = 10000 } ) -- 화이트 데이 기념 큐브A
GameEvent:AddReward( 213, { fEventTime = 100, iRewardID = 10001 } ) -- 화이트 데이 기념 큐브B

-- 화이트 데이 이벤트
GameEvent:AddReward( 214, { fEventTime =   0, iRewardID = 10002 } ) -- 화이트 데이 기념 큐브C


-- 던전 채널 통합 이벤트
GameEvent:AddReward( 215, { fEventTime =   0, iRewardID = 10003 } ) -- 던전 채널 통합 기념 큐브


-- 4월 PC방 이벤트
GameEvent:AddReward( 216, { fEventTime =  30, iRewardID = 10004, bPcBangEvent = True } ) -- PC방 4월의 선물 큐브A 1개
GameEvent:AddReward( 217, { fEventTime =  30, iRewardID = 10005, bPcBangEvent = True } ) -- PC방 4월의 선물 큐브B 1개


-- 만우절 깜짝 이벤트
GameEvent:AddReward( 218, { fEventTime =   0, iRewardID = 10006 } ) -- 만우절 특별 큐브


-- 식목일 이벤트
GameEvent:AddReward( 219, { fEventTime =   0, iRewardID = 10007 } ) -- 자연의 선물 3개
GameEvent:AddReward( 220, { fEventTime =   0, iRewardID = 10008 } ) -- 자연의 선물 5개
GameEvent:AddReward( 221, { fEventTime =   0, iRewardID = 10009, bPcBangEvent = True } ) -- 자연의 선물 2개


-- 열공모드 이벤트
GameEvent:AddReward( 222, { fEventTime =   0, iRewardID = 10010 } ) -- 고양이 가방 큐브(7일권) 1개


-- Special Week 이벤트
GameEvent:AddReward( 223, { fEventTime =  60, iRewardID = 10011 } ) -- 5/1 경험치 메달 1일권, 망각의 알약 3개
GameEvent:AddReward( 224, { fEventTime =  60, iRewardID = 10012 } ) -- 5/2 강화의 부적 랜덤 큐브, 망각의 알약 3개
GameEvent:AddReward( 225, { fEventTime =  60, iRewardID = 10013 } ) -- 5/3 플루오르 스톤 교환권
GameEvent:AddReward( 226, { fEventTime =  60, iRewardID = 10014 } ) -- 5/4 엘의 조각(불명) 5개
GameEvent:AddReward( 227, { fEventTime =  60, iRewardID = 10015 } ) -- 5/6 부활석 10개 큐브
GameEvent:AddReward( 228, { fEventTime =  60, iRewardID = 10016 } ) -- 5/7 프로모션 아바타 큐브(3일권)


-- 어린이날 이벤트
GameEvent:AddReward( 229, { fEventTime =   0, iRewardID = 10017 } ) -- 어린이날 선물 세트 큐브


-- 5월 PC방 이벤트
GameEvent:AddReward( 230, { fEventTime =   0, iRewardID = 10018, bPcBangEvent = True } ) -- PC방 특별 접속 이벤트


-- 천안함 추모 이벤트
GameEvent:AddReward( 231, { fEventTime =   0, iRewardID = 10019 } ) -- 흰국화 큐브


-- 헬모드 도전자 이벤트
GameEvent:AddReward( 232, { fEventTime =   0, iRewardID = 10020 } ) -- 헬던전 출입권 랜덤 큐브 1개
GameEvent:AddReward( 233, { fEventTime =   0, iRewardID = 10021 } ) -- 헬던전 출입권 큐브 1개


-- 스승의 날 이벤트
GameEvent:AddReward( 234, { fEventTime =  60, iRewardID = 10022 } ) -- 스승의 날 선물 큐브 1개1


-- 서버군 통합 이벤트
GameEvent:AddReward( 235, { fEventTime =  90, iRewardID = 10023 } ) -- 특별 출입증 교환권 1개


-- 6월 PC방 이벤트
GameEvent:AddReward( 236, { fEventTime =  50, iRewardID = 10024, bPcBangEvent = True } ) -- 활력의 포션 5개
GameEvent:AddReward( 237, { fEventTime =  70, iRewardID = 10025, bPcBangEvent = True } ) -- 활력의 포션 10개


-- 900일 이벤트
GameEvent:AddReward( 238, { fEventTime =  90, iRewardID = 10026 } ) -- 몬스터 탈(7일권) 랜덤 큐브
GameEvent:AddReward( 239, { fEventTime =  90, iRewardID = 10027 } ) -- 골드 프로모션 무기 아바타(7일권) 큐브
GameEvent:AddReward( 240, { fEventTime =  90, iRewardID = 10028 } ) -- 무기 액세서리(15일권) 큐브
GameEvent:AddReward( 241, { fEventTime =  90, iRewardID = 10029 } ) -- 특수 액세서리(15일권) 큐브
GameEvent:AddReward( 242, { fEventTime =  90, iRewardID = 10030 } ) -- 기술의 반지(7일권) 큐브


-- 900일의 혜택 이벤트
GameEvent:AddReward( 243, { fEventTime =   0, iRewardID = 10031 } ) -- 특수 액세서리(3일권) 큐브
GameEvent:AddReward( 244, { fEventTime =   0, iRewardID = 10032 } ) -- 엘의 조각(불명) 3개
GameEvent:AddReward( 245, { fEventTime =   0, iRewardID = 10033 } ) -- 경험치 메달 1일권 큐브
GameEvent:AddReward( 246, { fEventTime =   0, iRewardID = 10034 } ) -- 기술의 반지(3일권) 큐브
GameEvent:AddReward( 247, { fEventTime =   0, iRewardID = 10035 } ) -- 플루오르 스톤 랜덤 큐브
GameEvent:AddReward( 248, { fEventTime =   0, iRewardID = 10036 } ) -- 마법석 랜덤 큐브
GameEvent:AddReward( 249, { fEventTime =   0, iRewardID = 10037 } ) -- 활력의 포션 3개
GameEvent:AddReward( 250, { fEventTime =   0, iRewardID = 10038 } ) -- 액세서리 큐브(얼굴(중), 3일권) 큐브
GameEvent:AddReward( 251, { fEventTime =   0, iRewardID = 10039 } ) -- 축복받은 복원의 주문서 랜덤 큐브
GameEvent:AddReward( 252, { fEventTime =   0, iRewardID = 10040 } ) -- 완전 회복 포션 3개
GameEvent:AddReward( 253, { fEventTime =   0, iRewardID = 10041 } ) -- 액세서리 큐브(팔, 3일권) 큐브


-- 월드컵 이벤트
GameEvent:AddReward( 254, { fEventTime =   0, iRewardID = 10042 } ) -- 1승 기념 특별 아이템 큐브
GameEvent:AddReward( 255, { fEventTime =   0, iRewardID = 10043 } ) -- 16강 기념 특별 아이템 큐브
GameEvent:AddReward( 256, { fEventTime =   0, iRewardID = 10044 } ) -- 8강 기념 특별 아이템 큐브


-- 7월 PC방 이벤트
GameEvent:AddReward( 257, { fEventTime =  50, iRewardID = 10045, bPcBangEvent = True } ) -- 응축된 마나 결정 1개
GameEvent:AddReward( 258, { fEventTime =  50, iRewardID = 10046, bPcBangEvent = True } ) -- 응축된 마나 결정 2개


-- 파티 플레이 드롭률 이벤트
GameEvent:AddReward( 259, { iDropCount =  2, bWithPlayPcBang = True } ) -- PC방 유저와 함께 플레이시 드롭률 2배


-- 여름방학 PC방 이벤트
GameEvent:AddReward( 260, { fEventTime =  30, iRewardID = 10047, bPcBangEvent = True } ) -- PC방 7월의 선물 큐브
GameEvent:AddReward( 261, { fEventTime =  30, iRewardID = 10048, bPcBangEvent = True } ) -- ACT4 기념 루벤 티켓, ACT4 기념 벨더 티켓


-- 가이아 서버 이벤트
GameEvent:AddReward( 262, { fEventTime =  60, iRewardID = 10049, bAccountEvent = True } ) -- 가이아의 축복 큐브


-- 가열기 이벤트
GameEvent:AddReward( 263, { fEventTime =   0, iRewardID = 10050, bAccountEvent = True } ) -- 얼음 조각상 가열기 (아리엘의 선물)
GameEvent:AddReward( 264, { fEventTime =  30, iRewardID = 10050, bAccountEvent = True } ) -- 얼음 조각상 가열기 (아리엘의 선물)
GameEvent:AddReward( 265, { fEventTime =  60, iRewardID = 10050, bAccountEvent = True } ) -- 얼음 조각상 가열기 (아리엘의 선물)


-- 주말 이벤트
GameEvent:AddReward( 266, { fEventTime =  80, iRewardID = 10051 } ) -- 특별 교환권


-- 드롭률 2배 이벤트
GameEvent:AddReward( 267, { iDropCount =  2 } ) -- 드롭률 2배


-- 8월 PC방 이벤트
GameEvent:AddReward( 268, { fEventTime =  50, iRewardID = 10052, bPcBangEvent = True } ) -- 망각의 알약 1개
GameEvent:AddReward( 269, { fEventTime =  50, iRewardID = 10053, bPcBangEvent = True } ) -- ACT4 기념 루벤 티켓 1개
GameEvent:AddReward( 270, { fEventTime =  50, iRewardID = 10054, bPcBangEvent = True } ) -- ACT4 기념 벨더 티켓 1개


-- 방학숙제 이벤트
GameEvent:AddReward( 271, { fEventTime =  60, iRewardID = 10055 } ) -- 방학 숙제 재료 1개


-- 1000일 이벤트
GameEvent:AddReward( 272, { fEventTime =  60, iRewardID = 10056 } ) -- 1000일을 위한 준비물 1개


-- 한가위 특별 선물 이벤트 & 1000일 기념 이벤트
GameEvent:AddReward( 273, { fEventTime =  30, iRewardID = 10057 } ) -- 아바타 세트(1일권) 큐브 - 동물 코스프레
GameEvent:AddReward( 274, { fEventTime =  30, iRewardID = 10058 } ) -- 아바타 세트(1일권) 큐브 - 스타 아카데미 하복
GameEvent:AddReward( 275, { fEventTime =  30, iRewardID = 10059 } ) -- 아바타 세트(1일권) 큐브 - 2009 썸머룩
GameEvent:AddReward( 276, { fEventTime =  30, iRewardID = 10060 } ) -- 아바타 세트(1일권) 큐브 - 판타지 아카데미
GameEvent:AddReward( 277, { fEventTime =  30, iRewardID = 10061 } ) -- 아바타 세트(1일권) 큐브 - 겨울 한복
GameEvent:AddReward( 278, { fEventTime =  30, iRewardID = 10062 } ) -- 1000일 기념 액세서리 세트(1일권) 큐브
GameEvent:AddReward( 279, { fEventTime =  30, iRewardID = 10063 } ) -- 아바타 세트(1일권) 큐브 - 2009 한가위
GameEvent:AddReward( 280, { fEventTime =  30, iRewardID = 10064 } ) -- 아바타 세트(1일권) 큐브 - 마린룩
GameEvent:AddReward( 281, { fEventTime =  30, iRewardID = 10065 } ) -- 아바타 세트(1일권) 큐브 - 밀리터리 룩
GameEvent:AddReward( 282, { fEventTime =  30, iRewardID = 10066 } ) -- 아바타 세트(1일권) 큐브 - 5월의 웨딩
GameEvent:AddReward( 283, { fEventTime =  30, iRewardID = 10067 } ) -- 아바타 세트(1일권) 큐브 - 스타 아카데미
GameEvent:AddReward( 284, { fEventTime =  30, iRewardID = 10068 } ) -- 아바타 세트(1일권) 큐브 - 2010 서머 비치룩
GameEvent:AddReward( 285, { fEventTime =  30, iRewardID = 10069 } ) -- 아바타 세트(1일권) 큐브 - 아이돌 밴드
GameEvent:AddReward( 286, { fEventTime =  30, iRewardID = 10070 } ) -- 아바타 세트(1일권) 큐브 - 대륙의 모험가


-- 시험대박 이벤트
GameEvent:AddReward( 287, { fEventTime =  30, iRewardID = 10071 } ) -- 시험 대박 7종 신기 큐브(1일차)
GameEvent:AddReward( 288, { fEventTime =  30, iRewardID = 10072 } ) -- 시험 대박 7종 신기 큐브(2일차)
GameEvent:AddReward( 289, { fEventTime =  30, iRewardID = 10073 } ) -- 시험 대박 7종 신기 큐브(3일차)
GameEvent:AddReward( 290, { fEventTime =  30, iRewardID = 10074 } ) -- 시험 대박 7종 신기 큐브(4일차)
GameEvent:AddReward( 291, { fEventTime =  30, iRewardID = 10075 } ) -- 시험 대박 7종 신기 큐브(5일차)
GameEvent:AddReward( 292, { fEventTime =  30, iRewardID = 10076 } ) -- 시험 대박 7종 신기 큐브(6일차)
GameEvent:AddReward( 293, { fEventTime =  30, iRewardID = 10077 } ) -- 시험 대박 7종 신기 큐브(7일차)
GameEvent:AddReward( 294, { fEventTime =   0, iRewardID = 10078 } ) -- 경험치 15% 메달(1일권)큐브


-- 할로윈 이벤트
GameEvent:AddReward( 295, { fEventTime =  30, iRewardID = 10079 } ) -- 할로윈 고스트 캔디 (평일 3개)
GameEvent:AddReward( 296, { fEventTime =  30, iRewardID = 10080 } ) -- 할로윈 고스트 캔디 (주말 6개)


-- 엘소드 엑스포 이벤트
GameEvent:AddReward( 297, { fEventTime =  30, iRewardID = 10081 } ) -- EWE 기념 큐브 1개
GameEvent:AddReward( 298, { fEventTime =   0, iRewardID = 10082 } ) -- 1st EWE 1개


-- 다시시작하고싶습니다 이벤트
GameEvent:AddReward( 299, { fEventTime =  30, iRewardID = 10083 } ) -- 카밀라의 선물 1개
GameEvent:AddReward( 300, { fEventTime =  30, iRewardID = 10084 } ) -- 망각의 드링크(7일권) 큐브 1개

--------------------------------------------------------------------------------------------------------------------------------------------

GameEvent:AddReward( 10000, { fEventTime =  10, iRewardID = 50000 } ) -- 중급마나포션 10개
GameEvent:AddReward( 10001, { fEventTime =  60, iRewardID = 50001 } ) -- 축무강5개
GameEvent:AddReward( 10002, { fEventTime =  120, iRewardID = 50002 } ) -- 엘조불명

GameEvent:AddReward( 10003, { fEventTime =  0, iRewardID = 50003 } ) -- 길드구해요
GameEvent:AddReward( 10004, { fEventTime =  60, iRewardID = 50007 } ) -- jerky
GameEvent:AddReward( 10005, { fEventTime =  120, iRewardID = 50008 } ) -- soda

GameEvent:AddReward( 10006, { fEventTime =  60, iRewardID = 50009 } ) -- 깜짝큐브

GameEvent:AddReward( 10007, { fEventTime =  60, iRewardID = 50010 } ) -- 출석권

GameEvent:AddReward( 10008, { fEventTime =  60, iRewardID = 50011 } ) -- 흰국화

GameEvent:AddReward( 10009, { fEventTime =  60, iRewardID = 50012 } ) -- 망각의 알약

GameEvent:AddReward( 10010, { fEventTime =  0, iRewardID = 50013 } ) -- 경험치 15%메달

GameEvent:AddReward( 10011, { fEventTime =  0, iRewardID = 50014 } ) -- 캐나다 국기
GameEvent:AddReward( 10012, { fEventTime =  0, iRewardID = 50015 } ) -- 미국 국기
GameEvent:AddReward( 10013, { fEventTime =  60, iRewardID = 50016 } ) -- 독립기념일 아이템


GameEvent:AddReward( 10014, { fEventTime =  0, iRewardID = 50017, iUnitLevel = 34 } ) -- 근성도

GameEvent:AddReward( 10015, { fEventTime =  0, iRewardID = 50018, bAccountEvent = True } ) -- 그노시스

GameEvent:AddReward( 10016, { fEventTime =  0, iRewardID = 50019 } ) -- 칭호 이벤트

GameEvent:AddReward( 10017, { fEventTime =  0, iRewardID = 50020 } ) -- 엘소드 부채
GameEvent:AddReward( 10018, { fEventTime =  0, iRewardID = 50021 } ) -- 벨더아카데미 방학숙제


GameEvent:AddReward( 10019, { fEventTime =  0, iRewardID = 50022 } ) -- 길드구해요
GameEvent:AddReward( 10020, { fEventTime =   0,  iRewardID = 	50023	, iMinLevel = 	1	,   iMaxLevel =	10	 } )	--아리엘의 초보 지원 큐브
GameEvent:AddReward( 10020, { fEventTime =   0,  iRewardID = 	50024	, iMinLevel = 	11	,   iMaxLevel =	15	 } )	--Co-Bo사의 지원큐브 1
GameEvent:AddReward( 10020, { fEventTime =   0,  iRewardID = 	50025	, iMinLevel = 	16	,   iMaxLevel =	20	 } )	--Co-Bo사의 지원큐브 2
GameEvent:AddReward( 10020, { fEventTime =   0,  iRewardID = 	50026	, iMinLevel = 	21	,   iMaxLevel =	25	 } )	--Co-Bo사의 지원큐브 3
GameEvent:AddReward( 10020, { fEventTime =   0,  iRewardID = 	50027	, iMinLevel = 	26	,   iMaxLevel =	30	 } )	--Co-Bo사의 지원큐브 4
GameEvent:AddReward( 10020, { fEventTime =   0,  iRewardID = 	50028	, iMinLevel = 	31	,   iMaxLevel =	44	 } )	--Co-Bo사의 지원큐브 5
GameEvent:AddReward( 10021, { fEventTime =  0, iRewardID = 50029 } ) -- 대장장이의 지원 아바타 큐브

GameEvent:AddReward( 10022, { fEventTime =  0, iRewardID = 50030 } ) -- 선도부장의 위엄

GameEvent:AddReward( 10023, { fEventTime =  0, iRewardID = 50031 } ) -- 두번째 단서
GameEvent:AddReward( 10024, { fEventTime =  0, iRewardID = 50032 } ) -- 윌리엄 뽀루의 초대

GameEvent:AddReward( 10025, { fEventTime =  0, iRewardID = 50033 } ) -- 페이스북
GameEvent:AddReward( 10026, { fEventTime =  0, iRewardID = 50034 } ) -- 페이스북
GameEvent:AddReward( 10027, { fEventTime =  0, iRewardID = 50035 } ) -- 페이스북
GameEvent:AddReward( 10028, { fEventTime =  0, iRewardID = 50036 } ) -- 페이스북


GameEvent:AddReward( 10029, { fEventTime =  30, iRewardID = 50037 } ) -- 윌리엄의 활력 드링크

-- 할로윈 던전 무료입장
GameEvent:AddReward( 10030, { iDungeonID = DUNGEON_ID["DI_ELDER_HALLOWEEN_NORMAL"]} )
GameEvent:AddReward( 10031, { iDungeonID = DUNGEON_ID["DI_ELDER_HALLOWEEN_HARD"]	} )
GameEvent:AddReward( 10032, { iDungeonID = DUNGEON_ID["DI_ELDER_HALLOWEEN_EXPERT"]} )

GameEvent:AddReward( 10033, { fEventTime =  60, iRewardID = 50039 } ) -- 이브의 큐브


-- 이브2차 전직 이벤트
GameEvent:AddReward( 10034, { fEXPRate = 0.5, iUnitLevel = 34, cUnitType = UNIT_TYPE["UT_EVE"] } )  -- 이브 캐릭터 34렙 이하 경험치 50%
GameEvent:AddReward( 10035, { fEventTime = 0, iRewardID = 50040 } ) -- 환영의 열쇠

GameEvent:AddReward( 10036, { fEventTime = 0, iRewardID = 50041 } ) -- 추수감사절 칭호

GameEvent:AddReward( 10037, { fEventTime = 60, iRewardID = 50042 } ) -- 끈기의 증표

GameEvent:AddReward( 10038, { fEventTime = 0, iRewardID = 50043 } ) -- 여왕 나소드

GameEvent:AddReward( 10039, { fEventTime = 150, iRewardID = 50044, bAccountEvent = True } ) -- 크리스마스 선물
GameEvent:AddReward( 10040, { fEventTime = 0, iRewardID = 50045 } ) -- 루돌프 빨간코


GameEvent:AddReward( 10041, { fEventTime = 0, iRewardID = 50046 } ) -- 새해다짐(던전)
GameEvent:AddReward( 10042, { fEventTime = 0, iRewardID = 50047 } ) -- 새해다짐(PVP)

GameEvent:AddReward( 10043, { fEventTime = 0, iRewardID = 50048 } ) -- 루토주사위(30일)
GameEvent:AddReward( 10044, { fEventTime = 0, iRewardID = 50049 } ) -- 비던입장권(엘더)
GameEvent:AddReward( 10045, { fEventTime = 0, iRewardID = 50050 } ) -- 비던입장권(베스마)
GameEvent:AddReward( 10046, { fEventTime = 0, iRewardID = 50051 } ) -- 비던입장권(알테라)

GameEvent:AddReward( 10047, { fEventTime = 60, iRewardID = 50052, bAccountEvent = True } ) -- 2달러
GameEvent:AddReward( 10048, { fEventTime = 60, iRewardID = 50053, bAccountEvent = True } ) -- 10달러
GameEvent:AddReward( 10049, { fEventTime = 60, iRewardID = 50054, bAccountEvent = True } ) -- 20달러
GameEvent:AddReward( 10050, { fEventTime = 60, iRewardID = 50055, bAccountEvent = True } ) -- 구정 아바타 큐브(15일)
GameEvent:AddReward( 10051, { fEventTime = 60, iRewardID = 50056, bAccountEvent = True } ) -- 붉은 봉투

GameEvent:AddReward( 10052, { fEventTime = 0, iRewardID = 50057 } ) -- 망각의 알약 5개
GameEvent:AddReward( 10053, { fEventTime = 60, iRewardID = 50058 } ) -- 풋볼공

GameEvent:AddReward( 10054, { fEventTime = 0, iRewardID = 50059 } ) -- 엔젤

-- 헤니르 드롭률 2배 이벤트
GameEvent:AddReward( 10055, { iDropCount =  2, iDungeonID = 38100 } )
GameEvent:AddReward( 10056, { iDropCount =  2, iDungeonID = 38110 } )
GameEvent:AddReward( 10057, { iDropCount =  2, iDungeonID = 38120 } )
GameEvent:AddReward( 10058, { iDropCount =  2, iDungeonID = 38130 } )
GameEvent:AddReward( 10059, { iDropCount =  2, iDungeonID = 38140 } )

GameEvent:AddReward( 10060, { fEventTime = 0, iRewardID = 50060 } ) -- 공존의 축제 의상 큐브
GameEvent:AddReward( 10061, { fEventTime = 0, iRewardID = 50061 } ) -- 연금술사의 전투 지원 랜덤큐브	

GameEvent:AddReward( 10062, { fEventTime = 100, iRewardID = 50062 } ) -- 일급 마법석 랜덤 큐브
GameEvent:AddReward( 10063, { fEventTime = 100, iRewardID = 50063 } ) -- 엘의 나무 씨앗 5개
GameEvent:AddReward( 10064, { fEventTime = 100, iRewardID = 50064 } ) -- 완전회복 포션 10개
GameEvent:AddReward( 10065, { fEventTime = 100, iRewardID = 50065 } ) -- 부활석 5개 큐브

GameEvent:AddReward( 10066, { fEventTime = 0, iRewardID = 50066 } ) -- 만우절 무기 큐브
GameEvent:AddReward( 10067, { fEventTime = 120, iRewardID = 50066 } ) -- 만우절 무기 큐브 2차
GameEvent:AddReward( 10068, { fEventTime = 0, iRewardID = 50067 } ) -- 피노키오

GameEvent:AddReward( 10069, { fEventTime = 0, iRewardID = 50068 } ) -- 퀴즈퀴즈

GameEvent:AddReward( 10070, { fEventTime = 30, iRewardID = 50069 } ) -- 자연의 선물 주중
GameEvent:AddReward( 10071, { fEventTime = 30, iRewardID = 50070 } ) -- 자연의 선물 주말

-- 루벤 숲의 눈물 드랍률 두배 이벤트
GameEvent:AddReward( 10072, { iDropCount =  2, iDungeonID = 39500 } )
GameEvent:AddReward( 10073, { iDropCount =  2, iDungeonID = 39510 } )
GameEvent:AddReward( 10074, { iDropCount =  2, iDungeonID = 39520 } )
GameEvent:AddReward( 10075, { iDropCount =  2, iDungeonID = 39530 } )
GameEvent:AddReward( 10076, { iDropCount =  2, iDungeonID = 39540 } )

-- 1주년 기념 이벤트
GameEvent:AddReward( 10077, { fEventTime = 60, iRewardID = 50071, bAccountEvent = True } )
GameEvent:AddReward( 10078, { fEventTime = 60, iRewardID = 50072, bAccountEvent = True } )
GameEvent:AddReward( 10079, { fEventTime = 60, iRewardID = 50073, bAccountEvent = True } )
GameEvent:AddReward( 10080, { fEventTime = 60, iRewardID = 50074, bAccountEvent = True } )

GameEvent:AddReward( 10081, { fEventTime = 0, iRewardID = 50075, bAccountEvent = True } )

-- 어둠의 문
GameEvent:AddReward( 10082, { fEventTime = 0, iRewardID = 50076 } ) -- 비룡의 큐브

-- 추천인
GameEvent:AddReward( 10083, { fEventTime = 60, iRewardID = 50078, bAccountEvent = True } ) -- 아리엘의 비약
GameEvent:AddReward( 10084, { fEventTime = 60, iRewardID = 50079, bAccountEvent = True } ) -- 우정의 큐브
GameEvent:AddReward( 10085, { fEventTime = 60, iRewardID = 50080, bAccountEvent = True } ) -- 끊을 수 없는 우정의 큐브

GameEvent:AddReward( 10086, { fEventTime = 60, iRewardID = 51214, bAccountEvent = True } ) -- 길드 꾸러미 큐브

GameEvent:AddReward( 10087, { fEventTime = 0, iRewardID = 50081 } ) -- 하멜의 지원군 큐브
GameEvent:AddReward( 10088, { fEventTime = 0, iRewardID = 50082 } ) -- 하멜의 용사 큐브
GameEvent:AddReward( 10089, { fEventTime = 0, iRewardID = 50083 } ) -- 하멜의 수호자 큐브
GameEvent:AddReward( 10090, { fEventTime = 0, iRewardID = 50084 } ) -- 하멜의 절대자 큐브

-- 하멜의 부서진 기둥 이벤트(캐릭터 단위, 60분, 누적 접속 시간 이벤트, 하루에 3번까지 보상 지급)
GameEvent:AddReward( 10091, { fEventTime =  60, iRewardID = 10091, bDirectReward = True } ) -- 직접 보상(하멜의 흔전 1개)
GameEvent:AddReward( 10092, { fEventTime = 0, iRewardID = 50085 } ) -- 하멜칭호

GameEvent:AddReward( 10093, { fEventTime = 10, iRewardID = 51215, bAccountEvent = True, bComeBackEvent = True, } ) -- 돌아온 모험가의 큐브
GameEvent:AddReward( 10094, { fEventTime = 10, iRewardID = 51216, bAccountEvent = True, bNotComeBackEvent = True, } ) -- 코보 VIP 모험가 큐브
GameEvent:AddReward( 10095, { fEventTime = 0, iRewardID = 51217, cUnitType = UNIT_TYPE["UT_ELSWORD"] } )	-- 하멜의 하얀 늑대 칭호
GameEvent:AddReward( 10096, { fEventTime = 0, iRewardID = 51217, cUnitType = UNIT_TYPE["UT_LIRE"] } )		-- 하멜의 하얀 늑대 칭호
GameEvent:AddReward( 10097, { fEventTime = 0, iRewardID = 51217, cUnitType = UNIT_TYPE["UT_ARME"] } )		-- 하멜의 하얀 늑대 칭호
GameEvent:AddReward( 10098, { fEventTime = 0, iRewardID = 51217, cUnitType = UNIT_TYPE["UT_RAVEN"] } )		-- 하멜의 하얀 늑대 칭호
GameEvent:AddReward( 10099, { fEventTime = 0, iRewardID = 51217, cUnitType = UNIT_TYPE["UT_EVE"] } )		-- 하멜의 하얀 늑대 칭호
GameEvent:AddReward( 10102, { fEventTime = 0, iRewardID = 51220, cUnitType = UNIT_TYPE["UT_CHUNG"] } ) -- 청열쇠

GameEvent:AddReward( 10100, { fEventTime = 0, iRewardID = 51218 } ) -- 캐나다의 날 상자
GameEvent:AddReward( 10101, { fEventTime = 0, iRewardID = 51219 } ) -- 독립기념일 상자

GameEvent:AddReward( 10103, { fEventTime = 30, iRewardID = 51221 } ) -- 아크엔젤 풀셋 1일권

-- 2012.07.11 카밀라의 기술 향상 큐브 지급 이벤트(캐릭터 단위, 접속 즉시, 청 캐릭터 제한, 단 한번 지급)
GameEvent:AddReward( 10104, { fEventTime = 0, iRewardID = 51222, cUnitType = UNIT_TYPE["UT_CHUNG"], bGiveOnce = True } ) -- 카밀라의 기술 향상 큐브(기초)
GameEvent:AddReward( 10105, { fEventTime = 0, iRewardID = 51223, cUnitType = UNIT_TYPE["UT_CHUNG"], bGiveOnce = True } ) -- 카밀라의 기술 향상 큐브(중급)
GameEvent:AddReward( 10106, { fEventTime = 0, iRewardID = 51224, cUnitType = UNIT_TYPE["UT_CHUNG"], bGiveOnce = True } ) -- 카밀라의 기술 향상 큐브(상급)

-- 2012.07.11 카밀라의 수상한 부적 지급 이벤트(캐릭터 단위, 접속 즉시, 매일 지급)
GameEvent:AddReward( 10107, { fEventTime = 0, iRewardID = 51228 } ) -- 카밀라의 수상한 부적(1일권)

-- 2012.07.11 치명타의 발견 10개 지급 이벤트(캐릭터 단위, 접속 즉시, 매일 지급)
GameEvent:AddReward( 10108, { fEventTime = 0, iRewardID = 51229 } ) -- 치명타의 발견 10개

-- 2012.07.11 아리엘의 출석 선물상자 1개 지급 이벤트(계정 단위, 접속 즉시, 매일 지급)
GameEvent:AddReward( 10109, { fEventTime = 60, iRewardID = 51230, bAccountEvent = True } ) -- 아리엘의 출석 선물상자 1개

-- 2012.07.18 45레벨 이상 50레벨 이하 경험치 1.2배 이벤트
GameEvent:AddReward( 10110, { fEXPRate = 0.2, iMinLevel = 45, iMaxLevel = 50 } )

-- 2012.07.18 평일 파수병의 열쇠 지급 이벤트(캐릭터 단위, 30분, 월,화,수,목,금요일 지급)
GameEvent:AddReward( 10111, { fEventTime = 30, iRewardID = 51231 } )

-- 2012.07.18 주말 파수병의 열쇠 지급 이벤트(캐릭터 단위, 30분, 토,일요일 지급)
GameEvent:AddReward( 10112, { fEventTime = 30, iRewardID = 51232 } )

-- 2012.07.25 올림픽 개막식 기념 칭호 아이템 지급 이벤트(캐릭터 단위, 1분, 하루 지급)
GameEvent:AddReward( 10113, { fEventTime = 1, iRewardID = 51238 } )

-- 2012.07.25 올림픽 개막식 기념 경험치 2배 이벤트
GameEvent:AddReward( 10114, { fEXPRate = 1.0 } )

-- 2012.07.25 올림픽 개막식 기념 드롭률 2배 이벤트
GameEvent:AddReward( 10115, { iDropCount =  2 } )

-- 2012.07.25 올림픽 기념 플루오르 스톤 LV.1 및 축복받은 복원의 주문서 LV.1 지급 이벤트(계정 단위, 10분, 매일 지급)
GameEvent:AddReward( 10116, { fEventTime = 10, iRewardID = 51239, bAccountEvent = True } )

-- 2012.07.25 올림픽 폐막식 기념 도전자의 상징과 아리엘의 가열기 지급 이벤트(계정 단위, 120분, 하루 지급)
GameEvent:AddReward( 10117, { fEventTime = 120, iRewardID = 51240, bAccountEvent = True } )

-- 2012.08.01 35레벨 이하 청 캐릭터 경험치 50% 추가 획득
GameEvent:AddReward( 10118, { fEXPRate = 0.5, iUnitLevel = 35, cUnitType = UNIT_TYPE["UT_CHUNG"] } )

-- 2012.08.01 청 2차 전직 기념 성장의 비결(인내의 상징) 1개 우편 지급 이벤트(캐릭터 단위, 60분, 매일 지급)
GameEvent:AddReward( 10119, { fEventTime = 60, iRewardID = 51241, cUnitType = UNIT_TYPE["UT_CHUNG"] } )

-- 2012.08.14 엘리오스 대륙에 닌자 출현?! 연막탄 큐브 우편 지급 이벤트(캐릭터 단위, 30분, 매일 지급)
GameEvent:AddReward( 10120, { fEventTime = 30, iRewardID = 51243 } )

-- 2012.08.29 '고통을 이겨낸 자'칭호 우편 지급 이벤트(캐릭터 단위, 접속 즉시, 단 한번 지급)
GameEvent:AddReward( 10121, { fEventTime = 0, iRewardID = 51244, bGiveOnce = True } )

-- 2012.09.12 해적 침공 보상 우편 지급 이벤트(캐릭터 단위, 60분, 해적 침공 다음날 지급)
GameEvent:AddReward( 10122, { fEventTime = 60, iRewardID = 51245 } )	-- 일반 성공 보상
GameEvent:AddReward( 10123, { fEventTime = 60, iRewardID = 51246 } )	-- 일반 실패 보상
GameEvent:AddReward( 10124, { fEventTime = 60, iRewardID = 51247 } )	-- 6일차 성공 보상
GameEvent:AddReward( 10125, { fEventTime = 60, iRewardID = 51248 } )	-- 6일차 실패 보상

-- 2012.09.12 해적 이벤트 기념 우편 지급 이벤트(캐릭터 단위, 접속 즉시, 매일 지급)
GameEvent:AddReward( 10126, { fEventTime = 0, iRewardID = 51249 } )		-- 해적 악세서리 풀 큐브(1일권)

-- 2012.09.26 어둠의 문 우편 지급 이벤트(캐릭터 단위, 30분, 매일 지급)
GameEvent:AddReward( 10127, { fEventTime = 30, iRewardID = 51250 } )	-- 마족의 흔적 1개

-- 2012.09.26 어둠의 문 우편 지급 이벤트(캐릭터 단위, 30분, 하루 지급)
GameEvent:AddReward( 10128, { fEventTime = 30, iRewardID = 51251, iMinLevel = 1, iMaxLevel = 40 } )	-- 10월 3일 레벨 40이하 보상 : 축복의 메달(30%) 1일권
GameEvent:AddReward( 10129, { fEventTime = 30, iRewardID = 51252, iMinLevel = 1, iMaxLevel = 40 } )	-- 10월 4일 레벨 40이하 보상 : 부활석 큐브(3개)
GameEvent:AddReward( 10130, { fEventTime = 30, iRewardID = 51253, iMinLevel = 1, iMaxLevel = 40 } )	-- 10월 5일 레벨 40이하 보상 : 스타 아카데미 하복(3일권) 큐브
GameEvent:AddReward( 10131, { fEventTime = 30, iRewardID = 51254, iMinLevel = 1, iMaxLevel = 40 } )	-- 10월 6일 레벨 40이하 보상 : 마법석 3개
GameEvent:AddReward( 10132, { fEventTime = 30, iRewardID = 51255, iMinLevel = 1, iMaxLevel = 40 } )	-- 10월 7일 레벨 40이하 보상 : 특수 액세서리 4종(1일권) 큐브
GameEvent:AddReward( 10133, { fEventTime = 30, iRewardID = 51256, iMinLevel = 1, iMaxLevel = 40 } )	-- 10월 8일 레벨 40이하 보상 : 구운고기 10개
GameEvent:AddReward( 10134, { fEventTime = 30, iRewardID = 51257, iMinLevel = 1, iMaxLevel = 40 } )	-- 10월 9일 레벨 40이하 보상 : 엘의 나무 씨앗 3개
GameEvent:AddReward( 10135, { fEventTime = 30, iRewardID = 51258, iMinLevel = 41, iMaxLevel = 60 } )	-- 10월 3일 레벨 40이상 보상 : 망각의 알약 3개
GameEvent:AddReward( 10136, { fEventTime = 30, iRewardID = 51259, iMinLevel = 41, iMaxLevel = 60 } )	-- 10월 4일 레벨 40이상 보상 : 코보 완전 회복 포션 5개
GameEvent:AddReward( 10137, { fEventTime = 30, iRewardID = 51260, iMinLevel = 41, iMaxLevel = 60 } )	-- 10월 5일 레벨 40이상 보상 : 스타 아카데미 하복(3일권) 큐브
GameEvent:AddReward( 10138, { fEventTime = 30, iRewardID = 51261, iMinLevel = 41, iMaxLevel = 60 } )	-- 10월 6일 레벨 40이상 보상 : 엘의 조각(불명) 3개
GameEvent:AddReward( 10139, { fEventTime = 30, iRewardID = 51262, iMinLevel = 41, iMaxLevel = 60 } )	-- 10월 7일 레벨 40이상 보상 : 기술의 반지 4종 큐브(1일권)
GameEvent:AddReward( 10140, { fEventTime = 30, iRewardID = 51263, iMinLevel = 41, iMaxLevel = 60 } )	-- 10월 8일 레벨 40이상 보상 : 생선 구이 10개
GameEvent:AddReward( 10141, { fEventTime = 30, iRewardID = 51264, iMinLevel = 41, iMaxLevel = 60 } )	-- 10월 9일 레벨 40이상 보상 : 엘의 나무 씨앗 5개

-- 2012.09.26 스팀 그린라이트 우편 지급 이벤트(캐릭터 단위, 접속 즉시, 단 한번 지급)
GameEvent:AddReward( 10142, { fEventTime = 0, iRewardID = 51265, bGiveOnce = True } )	-- 스팀 그린라이트 칭호1
GameEvent:AddReward( 10143, { fEventTime = 0, iRewardID = 51266, bGiveOnce = True } )	-- 스팀 그린라이트 칭호2
GameEvent:AddReward( 10144, { fEventTime = 0, iRewardID = 51267, bGiveOnce = True } )	-- 스팀 그린라이트 칭호3
GameEvent:AddReward( 10145, { fEventTime = 0, iRewardID = 51268, bGiveOnce = True } )	-- 스팀 그린라이트 칭호4

-- 2012.10.10 주말 헤니르 보상 횟수 +2 이벤트
GameEvent:AddReward( 10146, { iHenirRewardEventCount = 2 } )

-- 2012.10.10 펫 이벤트 기념 덫에 걸린 해츨링(유체) 지급 이벤트(계정 단위, 150분)
GameEvent:AddReward( 10147, { fEventTime = 150, iRewardID = 51269, bAccountEvent = True } )	-- 덫에 걸린 해츨링(유체)

-- 2012.10.10 펫 이벤트 기념 카밀라의 데일리 펫 훈련 매거진 지급 이벤트(계정 단위, 30분)
GameEvent:AddReward( 10148, { fEventTime = 30, iRewardID = 51270, bAccountEvent = True } )	-- 카밀라의 데일리 펫 훈련 매거진

-- 2012.10.10 펫 훈련장 입장권 우편 지급 이벤트(캐릭터 단위, 60분)
GameEvent:AddReward( 10149, { fEventTime = 60, iRewardID = 51271 } )	-- 펫 훈련장 입장권 3개
GameEvent:AddReward( 10150, { fEventTime = 60, iRewardID = 51272 } )	-- 펫 훈련장 입장권 5개

-- 2012.10.10 펫 훈련장 무료 입장 이벤트
GameEvent:AddReward( 10151, { iDungeonID = DUNGEON_ID["DI_EVENT_PET_TRAINING_DUNGEON_NORMAL"] } )
GameEvent:AddReward( 10152, { iDungeonID = DUNGEON_ID["DI_EVENT_PET_TRAINING_DUNGEON_HARD"]	} )

-- 2012.10.24 할로윈 이벤트
GameEvent:AddReward( 10153, { fEventTime = 0, iRewardID = 10153, bDirectReward = True } )	-- Trick or Treat!! 이벤트용(미국 전용)
GameEvent:AddReward( 10154, { fEventTime = 10, iRewardID = 51273 } )	-- 데스사이즈-조화(1일권)
GameEvent:AddReward( 10155, { fEventTime = 10, iRewardID = 51274 } )	-- 데스사이즈-신비(1일권)
GameEvent:AddReward( 10156, { fEventTime = 10, iRewardID = 51275 } )	-- 데스사이즈-광휘(1일권)
GameEvent:AddReward( 10157, { fEventTime = 10, iRewardID = 51276 } )	-- 데스사이즈 1일권 6종 큐브
GameEvent:AddReward( 10158, { fEventTime = 10, iRewardID = 51277 } )	-- 데스사이즈-전투(1일권)
GameEvent:AddReward( 10159, { fEventTime = 10, iRewardID = 51278 } )	-- 데스사이즈-증강(1일권)
GameEvent:AddReward( 10160, { fEventTime = 10, iRewardID = 51279 } )	-- 데스사이즈-적중(1일권)
GameEvent:AddReward( 10161, { fEventTime = 10, iRewardID = 51280 } )	-- 아리엘의 할로윈 사탕 1개(평일)
GameEvent:AddReward( 10162, { fEventTime = 10, iRewardID = 51281 } )	-- 아리엘의 할로윈 사탕 2개(주말)

-- 2012.11.07 레이븐 분노 이벤트(캐릭터 단위, 10분)
GameEvent:AddReward( 10163, { fEventTime = 10, iRewardID = 51282 } )	-- The Rage 칭호 15일권
GameEvent:AddReward( 10164, { fEventTime = 10, iRewardID = 51283 } )	-- 분노의 반지 15일권

-- 2012.11.21 추수감사절 이벤트(캐릭터 단위, 30분, 직접지급)
GameEvent:AddReward( 10165, { fEventTime = 30, iRewardID = 10165, bDirectReward = True } )

-- 2012.11.21 검의 길 이벤트(캐릭터, 10분)
GameEvent:AddReward( 10166, { fEventTime = 10, iRewardID = 51284, bGiveOnce = True } )	-- 활력의 검사 칭호 (15일) 
GameEvent:AddReward( 10167, { fEventTime = 10, iRewardID = 51285, bGiveOnce = True } )	-- 파괴의 검사 칭호 (15일) 
GameEvent:AddReward( 10168, { fEventTime = 10, iRewardID = 51286, bGiveOnce = True } )	-- 활력의 룬 (15일) 
GameEvent:AddReward( 10169, { fEventTime = 10, iRewardID = 51287, bGiveOnce = True } )	-- 파괴의 른 (15일) 

-- 2012.11.21 검의 길 이벤트(엘소드 캐릭터만, 120분)
GameEvent:AddReward( 10170, { fEventTime = 120, iRewardID = 51288, cUnitType = UNIT_TYPE["UT_ELSWORD"]} )	-- 검사의 깨달음

-- 2012.11.28 추천인 이벤트(캐릭터 단위, 30분)
GameEvent:AddReward( 10171, { fEventTime = 30, iRewardID = 51289 } )	-- 아리엘 연금술 비약 3개

-- 2012.11.28 추천인 이벤트(계정 단위 , 60분, 단 한번 지급)
GameEvent:AddReward( 10172, { fEventTime = 60, iRewardID = 51290, bAccountEvent = True, bGiveOnce = True } )	-- 우정의 큐브
GameEvent:AddReward( 10173, { fEventTime = 60, iRewardID = 51291, bAccountEvent = True, bGiveOnce = True } )	-- 끊을 수 없는 우정의 큐브

-- 2012.12.07 시스나이트 전야 이벤트(캐릭터 단위, 10분)
GameEvent:AddReward( 10174, { fEventTime = 10, iRewardID = 51293 } )	-- 콘웰의 헌신 7일권

-- 2012.12.18 크리스마스 이벤트(캐릭터 단위, 60분)
GameEvent:AddReward( 10175, { fEventTime = 60, iRewardID = 51294 } )	-- 12월 21일 크리스마스 선물 - 마법석 5개
GameEvent:AddReward( 10176, { fEventTime = 60, iRewardID = 51295 } )	-- 12월 22일 크리스마스 선물 - 고급 마법석 5개
GameEvent:AddReward( 10177, { fEventTime = 60, iRewardID = 51296 } )	-- 12월 23일 크리스마스 선물 - 축복받은 무기 강화석 10개
GameEvent:AddReward( 10178, { fEventTime = 60, iRewardID = 51297 } )	-- 12월 24일 크리스마스 선물 - 엘의 조각(불명) 5개
GameEvent:AddReward( 10179, { fEventTime = 60, iRewardID = 51298 } )	-- 12월 25일 크리스마스 선물 - 부활석 3개 큐브
GameEvent:AddReward( 10180, { fEventTime = 60, iRewardID = 51299 } )	-- 12월 26일 크리스마스 선물 - 엘의 나무 씨앗 3개

GameEvent:AddReward( 10181, { fEventTime = 120, iRewardID = 51300, bAccountEvent = True } )	-- 12월 22일 크리스마스 선물 - 플루오르 스톤 5개 교환권
GameEvent:AddReward( 10182, { fEventTime = 200, iRewardID = 51301, bAccountEvent = True } )	-- 12월 26일 크리스마스 선물 - 크리스마스 한정 액세서리

-- 2012.12.18 시스나이트 이벤트(캐릭터 단위, 접속 즉시, 단 한번 지급, 엘소드, 신규 유닛)
GameEvent:AddReward( 10183, { fEventTime = 0, iRewardID = 51302, bGiveOnce = True, cUnitType = UNIT_TYPE["UT_ELSWORD"], bNewUnitEvent = True } )	-- 수습 모험가 기초 교육1 큐브

-- 2012.12.18 시스나이트 이벤트(캐릭터 단위, 접속 즉시, 단 한번 지급, 엘소드, 기존 유닛)
GameEvent:AddReward( 10184, { fEventTime = 0, iRewardID = 51303, bGiveOnce = True, cUnitType = UNIT_TYPE["UT_ELSWORD"], iMinLevel = 21, iMaxLevel = 30, bCurrentUnitEvent = True} )	-- 21~30레벨 모험가 기초 교육 수강권
GameEvent:AddReward( 10184, { fEventTime = 0, iRewardID = 51304, bGiveOnce = True, cUnitType = UNIT_TYPE["UT_ELSWORD"], iMinLevel = 31, iMaxLevel = 40, bCurrentUnitEvent = True} )	-- 31~40레벨 모험가 실무 교육 수강권
GameEvent:AddReward( 10184, { fEventTime = 0, iRewardID = 51305, bGiveOnce = True, cUnitType = UNIT_TYPE["UT_ELSWORD"], iMinLevel = 41, iMaxLevel = 50, bCurrentUnitEvent = True} )	-- 41~50레벨 모험가 2차 직무 교육 수강권
GameEvent:AddReward( 10184, { fEventTime = 0, iRewardID = 51306, bGiveOnce = True, cUnitType = UNIT_TYPE["UT_ELSWORD"], iMinLevel = 51, iMaxLevel = 60, bCurrentUnitEvent = True} )	-- 51~60레벨 모험가 승급 교육 수강권

-- 2012.12.27 못 다 이룬 연초 결심(캐릭터단위, 100분)
GameEvent:AddReward( 10185, { fEventTime = 100, iRewardID = 51307 } )	-- 되찾은 의지 1개

-- 2013.01.09 마법소녀의 날개(캐릭터단위, 10분)
GameEvent:AddReward( 10186, { fEventTime = 10, iRewardID = 51308 } )	-- 마법소녀의 소망

-- 2013.01.16 마법소녀의   희망(캐릭터단위, 30분)
GameEvent:AddReward( 10187, { fEventTime = 30, iRewardID = 51309 } )	-- 마법소녀의   희망

-- 2013.01.16 이벤트 기간 동안 접속 시 평일은 마법소녀의 수련장 입장권 3장을 주말에는 5장을 획득할 수 있다
GameEvent:AddReward( 10188, { fEventTime = 10, iRewardID = 51310 } )	-- 마법소녀의 수련장 입장권 3장
GameEvent:AddReward( 10189, { fEventTime = 10, iRewardID = 51311 } )	-- 마법소녀의 수련장 입장권 3장

-- 태그 모드 서포터즈 (2013-01-30 ~ 2013-02-27)
GameEvent:AddReward( 10190, { fEventTime = 10, iRewardID = 51313 } )	-- 태그 모드 지원1 마목 1일권 기반 4종 1일권
GameEvent:AddReward( 10191, { fEventTime = 30, iRewardID = 51314 } )	-- 태그 모드 지원2 태그 모드 프로모션 무기 아바타 3종(1일권) 큐브

-- 새로운 영웅에 대한 단서_엘렌딜의 힘! (2013년 2월 6일 ~ 2013년 2월 12일) 
GameEvent:AddReward( 10192, { fEventTime = 30, iRewardID = 51315 } )	-- 이벤트 기간 동안 30분 접속 시 “영웅에 대한 소식지” 우편 지급

-- 2013-02-9 ~ 2013-02-10 엘드랏실의 축복
GameEvent:AddReward( 10193, { fEventTime = 60, iRewardID = 51316 } )	-- 이벤트 기간 내 주말 60분 접속 시 엘드랏실의 축복 우편 지급.

-- 2013년 2월 10일에 30분간 접속하는 모든 캐릭터에게 한복 1일권 큐브 지급(1P 색상)
GameEvent:AddReward( 10194, { fEventTime = 30, iRewardID = 51318 } )

-- 2013-02-13 ~ 2013-02-26 트래핑 레인저 캐릭터로 접속 시 엘드라실의 신성한 큐브 지급(캐릭터 단위/10분/ 열쇠 있어야 오픈 가능)
GameEvent:AddReward( 10195, { fEventTime = 10, iRewardID = 51319, cUnitClass = UNIT_CLASS["UC_LIRE_TRAPPING_RANGER"] } )

-- 점점 더 강해지는 적에 대비하라. (2013-03-06 ~ 2013-03-13)
GameEvent:AddReward( 10196, { fEventTime = 10, iRewardID = 51320 } ) -- 건블레이드 (영구

-- 코보 용병단 활동 개시! (2013-03-13 ~ 2013-03-27)
GameEvent:AddReward( 10197, { fEventTime = 10, iRewardID = 51321 } ) -- 코보 용병단 스타트업 큐브 열쇠

-- 미스 엘리오스 2013-02-27 ~ 2013-03-13
GameEvent:AddReward( 10198, { fEventTime = 30, iRewardID = 51322 } ) -- 30분 접속 시 경험치 메달 30% 1일권(ItemID 200720) 지급(캐릭터)
GameEvent:AddReward( 10199, { fEventTime = 60, iRewardID = 51323 } ) -- 60분 접속시  아리엘의 플루오르 스톤 Lv3 ~ 5(ItemID 67003746) 지급(캐릭터)
GameEvent:AddReward( 10200, { fEventTime = 60, iRewardID = 51324 } ) -- 60분 접속시  듀얼 마법석 랜덤 큐브(ItemID 67003744 ) 지급(캐릭터) 

GameEvent:AddReward( 10201, { fEventTime = 60, iRewardID = 51325 } ) -- 2013-03-12 60분   접속 시 승리의 왕관 14일권 큐브 우편 지급

-- 길드원이 필요하다면? (2013-02-27 ~ 2013-03-13)
--[[
GameEvent:AddReward( 10202, { fEventTime = 10, iRewardID = 51326, bCustomEvent = True, } ) -- 10분,2월 27일 이전 길드에 가입되어 있지 않던 캐릭터 길드 가입 프로모션 쿠폰
GameEvent:AddReward( 10203, { fEventTime = 10, iRewardID = 51327, bNewUnitEvent = True, } ) -- 10분, 2월 28일 업데이트 이후 생성 캐릭터 길드 가입 프로모션 쿠폰
--]]

-- 진정한 지휘관의 귀환 (2013-03-13 ~ 2013-03-27) 
-- 레이븐 레벨 15이하 유저는 경험치 2배를 획득할 수 있음
GameEvent:AddReward( 10202, { fEXPRate = 1.0, iUnitLevel = 15, cUnitType = UNIT_TYPE["UT_RAVEN"] } )
-- 모든 노전직 레이븐 캐릭터로 접속 시 무기 큐브 증정
GameEvent:AddReward( 10203, { fEventTime = 30, iRewardID = 51326, cUnitClass = UNIT_CLASS["UC_RAVEN_FIGHTER"], } ) -- 돌아온 지휘관의 큐브 1

-- 봄방학 이벤트 2013-03-13 ~ 2013-04-02
GameEvent:AddReward( 10204, { fEventTime = 120, iRewardID = 51327, cUnitType = UNIT_TYPE["UT_ELSWORD"], } ) -- 성 패트릭의 날
GameEvent:AddReward( 10205, { fEventTime = 120, iRewardID = 51328, cUnitType = UNIT_TYPE["UT_ARME"], } ) -- 성 패트릭의 날
GameEvent:AddReward( 10206, { fEventTime = 120, iRewardID = 51329, cUnitType = UNIT_TYPE["UT_LIRE"], } ) -- 성 패트릭의 날
GameEvent:AddReward( 10207, { fEventTime = 120, iRewardID = 51330, cUnitType = UNIT_TYPE["UT_RAVEN"], } ) -- 성 패트릭의 날
GameEvent:AddReward( 10208, { fEventTime = 120, iRewardID = 51331, cUnitType = UNIT_TYPE["UT_EVE"], } ) -- 성 패트릭의 날
GameEvent:AddReward( 10209, { fEventTime = 120, iRewardID = 51332, cUnitType = UNIT_TYPE["UT_CHUNG"], } ) -- 성 패트릭의 날

-- Happy Easter!! (2013-03-20 ~ 2013-04-02)
GameEvent:AddReward( 10210, { fEventTime = 60, iRewardID = 51333, cUnitType = UNIT_TYPE["UT_ELSWORD"], } ) -- Easter Bunny 
GameEvent:AddReward( 10211, { fEventTime = 60, iRewardID = 51334, cUnitType = UNIT_TYPE["UT_ARME"], } ) -- Easter Bunny 
GameEvent:AddReward( 10212, { fEventTime = 60, iRewardID = 51335, cUnitType = UNIT_TYPE["UT_LIRE"], } ) -- Easter Bunny 
GameEvent:AddReward( 10213, { fEventTime = 60, iRewardID = 51336, cUnitType = UNIT_TYPE["UT_RAVEN"], } ) -- Easter Bunny 
GameEvent:AddReward( 10214, { fEventTime = 60, iRewardID = 51337, cUnitType = UNIT_TYPE["UT_EVE"], } ) -- Easter Bunny 
GameEvent:AddReward( 10215, { fEventTime = 60, iRewardID = 51338, cUnitType = UNIT_TYPE["UT_CHUNG"], } ) -- Easter Bunny 

-- 3/17일접속시 네잎클로버 1일권 증정
GameEvent:AddReward( 10216, { fEventTime = 0, iRewardID = 51339, } )	-- 네잎클로버 1일권

-- 3. 나소드 여왕의 절대 권력_최강 이브로 업그레이드(2013-04-03 ~ 2013-04-16)
GameEvent:AddReward( 10217, { fEventTime = 30, iRewardID = 51340, cUnitType = UNIT_TYPE["UT_EVE"], iMinLevel = 40, } )	-- 엘 에너지 캡슐

-- 2. 고대 나소드의 신성한 코드_일렉트라는 어디에? (2013-04-03 ~ 2013-04-10 업데이트 전)
GameEvent:AddReward( 10218, { fEventTime = 1, iRewardID = 51355, } )	-- ”나소드 분광석”(15일)
GameEvent:AddReward( 10219, { fEventTime = 30, iRewardID = 51356, } )	-- 매일 “코드 분석 회로 1개” 

-- 2013.02.27 미션 던전 이벤트 : 접속 이벤트 (한번 / 캐릭터 단위 / 30분접속 /캐릭터)
GameEvent:AddReward( 10220, { fEventTime =  30, iRewardID = 51341, bGiveOnce = True, } )	--  메모리 카드A 지급
GameEvent:AddReward( 10221, { fEventTime =  30, iRewardID = 51342, bGiveOnce = True, } )	--  메모리 카드B 지급
GameEvent:AddReward( 10222, { fEventTime =  30, iRewardID = 51343, bGiveOnce = True, } )	--  메모리 카드C 지급
GameEvent:AddReward( 10223, { fEventTime =  30, iRewardID = 51344, bGiveOnce = True, } )	--  메모리 카드D 지급
GameEvent:AddReward( 10224, { fEventTime =  30, iRewardID = 51345, bGiveOnce = True, } )	--  메모리 카드E 지급
-- 2013.02.27 미션 던전 이벤트 : 접속 이벤트 (한번 / 캐릭터 단위 / 60분접속 /캐릭터)
GameEvent:AddReward( 10225, { fEventTime =  60, iRewardID = 51346, bGiveOnce = True, } )	--  메모리 카드F 지급
-- 2013.02.27 미션 던전 이벤트 : 접속 이벤트 (한번 / 캐릭터 단위 / 평일40분접속 /캐릭터)
GameEvent:AddReward( 10226, { fEventTime =  40, iRewardID = 51347, bGiveOnce = True, } )	--  보호 부적 평일 1장 40분
-- 2013.02.27 미션 던전 이벤트 : 접속 이벤트 (한번 / 캐릭터 단위 / 주말70분접속 /캐릭터)
GameEvent:AddReward( 10227, { fEventTime =  70, iRewardID = 51348, bGiveOnce = True, } )	--  보호 부적 주말 2장 70분


-- 엘소드 미국 2주년 기념 대축제(2013-05-01~2013-05-07)
GameEvent:AddReward( 10228, { fEventTime =  54, iRewardID = 51358, bGiveOnce = True, bAccountEvent = True} )-- 경험치 메달(50%) 1일권
GameEvent:AddReward( 10229, { fEventTime =  54, iRewardID = 51359, bGiveOnce = True, bAccountEvent = True} )-- 아리엘의 뽀루의 발도장 랜덤 큐브
GameEvent:AddReward( 10230, { fEventTime =  54, iRewardID = 51360, bGiveOnce = True, bAccountEvent = True} )-- 고성능 나소드 메가폰 1개
GameEvent:AddReward( 10231, { fEventTime =  110, iRewardID = 51361, bGiveOnce = True, bAccountEvent = True} )-- 아리엘의 가열기 1개 110분
GameEvent:AddReward( 10232, { fEventTime =  164, iRewardID = 51361, bGiveOnce = True, bAccountEvent = True} )-- 아리엘의 가열기 1개 164분
GameEvent:AddReward( 10233, { fEventTime =  54, iRewardID = 51362, bGiveOnce = True, bAccountEvent = True} )-- 프리미엄 상점 7일권
GameEvent:AddReward( 10234, { fEventTime =  54, iRewardID = 51363, bGiveOnce = True, bAccountEvent = True} )-- 엘의 나무 씨앗 5개
GameEvent:AddReward( 10235, { fEventTime =  54, iRewardID = 51364, bGiveOnce = True, bAccountEvent = True} )-- 스킬 되돌리기 메달 5개

-- 의문의 몬스터 카드! (2013년 04월 24일~05월07일)
GameEvent:AddReward( 10236, { fEventTime =  1, iRewardID = 51366, bGiveOnce = True, } ) -- 의문의 몬스터 카드 5개

-- 카드 캡터 뽀루 등장! (2013년 04월 24일~05월07일)
GameEvent:AddReward( 10237, { fEventTime =  1, iRewardID = 51367, bGiveOnce = True, } ) -- 몬스터 카드 수집가의 모자(30일권)

-- 필드 전야 5/29 ~ 6/3
GameEvent:AddReward( 10238, { fEventTime =  10, iRewardID = 51374, bGiveOnce = True, iMinLevel = 10,} ) -- 필드 100% 즐기기 필수 가이드북
GameEvent:AddReward( 10239, { fEventTime =  30, iRewardID = 51375, bGiveOnce = True, iMinLevel = 10, bAccountEvent = True} ) -- 필드 모험 준비 패키지

GameEvent:AddReward( 10240, { fEventTime =  1, iRewardID = 51376, bGiveOnce = True, } ) -- 밀리터리 큐브

-- 필드 업데이트 기념 2013-06-04 ~ 2013-06-18
GameEvent:AddReward( 10241, { fEventTime =  10, iRewardID = 51377, bGiveOnce = True, iMinLevel = 10,} ) -- 필드 쿠키 
GameEvent:AddReward( 10242, { fEventTime =  60, iRewardID = 51378, bGiveOnce = True, iMinLevel = 10,} ) -- 황금 필드 쿠키 

--* 제목 : 인피니티 소드의 등장
--* 이벤트 기간 : 2013년 6월 19일 ~ 2013년 6월 25일 (1주일)
GameEvent:AddReward( 10243, { fEXPRate = 1.0, iUnitLevel = 35, cUnitClass = UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"], } ) -- 35레벨 이하 시스나이트는 경험치 2배 획득
GameEvent:AddReward( 10244, { fEventTime =  30, iRewardID = 51379, bGiveOnce = True, iMinLevel = 35, cUnitClass = UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"], } ) -- 인피니티 소드 준비 큐브
GameEvent:AddReward( 10245, { fEventTime =  60, iRewardID = 51380, bGiveOnce = True, } ) -- 미제련된 무한의 콘웰

--2. 코보의 신규 유저 지원(2013-06-19~2013-07-09)
--북미 계정 유저들은 첫 캐릭터가 30분 접속시 해당 큐브 획득 가능(접속 이벤트)
GameEvent:AddReward( 10246, { fEventTime =  30, iRewardID = 51381, bGiveOnce = True, bAccountEvent = True, iMinLevel = 1, iMaxLevel = 3, } ) -- 1레벨 큐브
GameEvent:AddReward( 10246, { fEventTime =  30, iRewardID = 51382, bGiveOnce = True, bAccountEvent = True, iMinLevel = 4, iMaxLevel = 6, } ) -- 4레벨 큐브
GameEvent:AddReward( 10246, { fEventTime =  30, iRewardID = 51383, bGiveOnce = True, bAccountEvent = True, iMinLevel = 7, iMaxLevel = 9, } ) -- 7레벨 큐브
GameEvent:AddReward( 10246, { fEventTime =  30, iRewardID = 51384, bGiveOnce = True, bAccountEvent = True, iMinLevel = 10, iMaxLevel = 14, } ) -- 10레벨 큐브
GameEvent:AddReward( 10246, { fEventTime =  30, iRewardID = 51385, bGiveOnce = True, bAccountEvent = True, iMinLevel = 15, iMaxLevel = 19, } ) -- 15레벨 큐브
GameEvent:AddReward( 10246, { fEventTime =  30, iRewardID = 51386, bGiveOnce = True, bAccountEvent = True, iMinLevel = 20, iMaxLevel = 22, } ) -- 20레벨 큐브
GameEvent:AddReward( 10246, { fEventTime =  30, iRewardID = 51387, bGiveOnce = True, bAccountEvent = True, iMinLevel = 23, iMaxLevel = 25, } ) -- 23레벨 큐브
GameEvent:AddReward( 10246, { fEventTime =  30, iRewardID = 51388, bGiveOnce = True, bAccountEvent = True, iMinLevel = 26, iMaxLevel = 28, } ) -- 26레벨 큐브
GameEvent:AddReward( 10246, { fEventTime =  30, iRewardID = 51389, bGiveOnce = True, bAccountEvent = True, iMinLevel = 29, iMaxLevel = 31, } ) -- 29레벨 큐브
GameEvent:AddReward( 10246, { fEventTime =  30, iRewardID = 51390, bGiveOnce = True, bAccountEvent = True, iMinLevel = 32, iMaxLevel = 34, } ) -- 32벨 큐브
GameEvent:AddReward( 10246, { fEventTime =  30, iRewardID = 51391, bGiveOnce = True, bAccountEvent = True, iMinLevel = 35, } ) -- 35레벨 큐브

--ESUS_컴백 이벤트&인피니티소드 이벤트 (2013-06-26 ~ 2013-07-09)
-- 복귀유저
GameEvent:AddReward( 10247, { fEventTime =  30, iRewardID = 51392, bGiveOnce = True, bAccountEvent = True, iMinLevel = 10, iCustomEventID = 1} ) -- 기본 아바타 무기(영구) 랜덤 큐브, 돌아온 영웅의 칭호 (15일권)
GameEvent:AddReward( 10248, { fEventTime =  10, iRewardID = 51393, bGiveOnce = True, bAccountEvent = True, iMinLevel = 10, iCustomEventID = 1} ) -- 돌아온 영웅의 증표 1개
-- 기존, 신규유저
GameEvent:AddReward( 10249, { fEventTime =  10, iRewardID = 51394, bGiveOnce = True, bAccountEvent = True, iMinLevel = 10, iCustomEventID = 2} ) -- 성실한 모험가의 증표 1개 성실한 모험가의 칭호 (1일권)
-- 주말 동안 매일 모든 유저 60분 접속 시 돌아온 영웅의 코인 우편 보상 획득
GameEvent:AddReward( 10250, { fEventTime =  60, iRewardID = 51395, bGiveOnce = True, bAccountEvent = True, } ) -- 영웅의 코인 1개
-- 무한의 큐브 (2013-06-26 ~ 2013-07-09)
GameEvent:AddReward( 10251, { fEventTime =  10, iRewardID = 51396, bGiveOnce = True, } ) -- 미약한 무한의 큐브 1개
GameEvent:AddReward( 10252, { fEventTime =  10, iRewardID = 51397, bGiveOnce = True, cUnitClass = UNIT_CLASS["UC_ELSWORD_SHEATH_KNIGHT"],} ) -- 무한의 큐브 1개 다크엘의 결정 1개
GameEvent:AddReward( 10253, { fEventTime =  10, iRewardID = 51398, bGiveOnce = True, cUnitClass = UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"],} ) -- 진화된 무한의 큐브 1개

--남미 신규 유저 특전(2013-06-19~2013-07-09)
GameEvent:AddReward( 10254, { fEventTime =  1, iRewardID = 51399, bGiveOnce = True, bAccountEvent = True, } ) -- Trial of Elsword  칭호

-- 아리엘의 감사 보상(2013-07-17 ~ 2013-07-23)
GameEvent:AddReward( 10255, { fEventTime =  1, iRewardID = 51400, bGiveOnce = True, bAccountEvent = True,  cUnitClass = UNIT_CLASS["UC_ARME_DIMENSION_WITCH"], } ) -- 망각의 드링크(7일권) 큐브 1개

-- 디멘션 위치 전직을 준비하자.  2013년 07월 24일 ~ 2013년 07월 31일 
GameEvent:AddReward( 10256, { fEXPRate = 1.0, iUnitLevel = 35, cUnitClass = UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"], } ) -- 35레벨 이하 배틀매지션는 경험치 2배 획득
GameEvent:AddReward( 10257, { fEventTime =  30, iRewardID = 51401, bGiveOnce = True, iMinLevel = 35, cUnitClass = UNIT_CLASS["UC_ARME_BATTLE_MAGICIAN"], } ) -- 디멘션 위치 준비 큐브

--남미 코보 서포트 큐브 1개 
GameEvent:AddReward( 10258, { fEventTime =  30, iRewardID = 51402, bGiveOnce = True, } )

-- 나와 전야 이벤트
GameEvent:AddReward( 10259, { fEventTime =  30, iRewardID = 51403, bGiveOnce = True, } ) -- 30분 접속 시 풍고족의 납치를 알리는 “풍고족의 서신”지급

-- 나와 이벤트
GameEvent:AddReward( 10260, { fEventTime =  1, iRewardID = 51404, bGiveOnce = True, } ) -- 1분 접속 시 “킹 나소드 소굴 오픈 티켓” 1장 지급(일일)
GameEvent:AddReward( 10261, { fEventTime =  20, iRewardID = 51405, bGiveOnce = True, } ) -- 20분마다 “아기 퐁고의 메아리” 1개 지급(일일)
GameEvent:AddReward( 10262, { fEventTime =  40, iRewardID = 51405, bGiveOnce = True, } ) -- 20분마다 “아기 퐁고의 메아리” 1개 지급(일일)
GameEvent:AddReward( 10263, { fEventTime =  60, iRewardID = 51405, bGiveOnce = True, } ) -- 20분마다 “아기 퐁고의 메아리” 1개 지급(일일)
GameEvent:AddReward( 10264, { fEventTime =  10, iRewardID = 51406, bGiveOnce = True, cUnitClass = UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"],} ) -- 내 10분 접속 시 “나소드의 비밀 열쇠” 1개 지급(일일)
GameEvent:AddReward( 10265, { fEventTime =  30, iRewardID = 51407, bGiveOnce = True, cUnitClass = UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"],} ) -- 내 30분 접속 시 “킹 나소드의 비밀 열쇠” 1개 지급(일일)

-- 나와 전야 후속 조치
GameEvent:AddReward( 10266, { fEventTime =  1, iRewardID = 51408, bGiveOnce = True, iEventItemID = 85002576 } ) -- 1분 접속 시 “강열한 에렌딜의 열쇠” 1장 지급
GameEvent:AddReward( 10267, { fEventTime =  1, iRewardID = 51409, bGiveOnce = True, iEventItemID = 85002577 } ) -- 1분 접속 시 “온유한 엘렌딜의 열쇠” 1장 지급
GameEvent:AddReward( 10268, { fEventTime =  1, iRewardID = 51410, bGiveOnce = True, iEventItemID = 85002578 } ) -- 1분 접속 시 “내유외강 엘렌딜의 열쇠” 1장 지급

-- 스팀 이벤트
GameEvent:AddReward( 10269, { fEventTime =  1, iRewardID = 51411, bGiveOnce = True, bOnlyNotSteamUser = True } )-- 스팀 유저가 아닌 계정으로부터 접속하는 모든 캐릭터들에게 아래의 칭호 지급 
GameEvent:AddReward( 10270, { fEventTime =  20, iRewardID = 51412, bGiveOnce = True, } ) -- 7/27일 13:00~ 13:59분 사이에 접속하는 모든 캐릭터 망각의 드링크(7일권)
GameEvent:AddReward( 10271, { fEventTime =  1, iRewardID = 51413, bGiveOnce = True, } ) -- 7/27일에 접속하는 모든 캐릭터 금강 천야차 올세트 큐브(1일권)
GameEvent:AddReward( 10272, { fEventTime =  1, iRewardID = 51414, bGiveOnce = True, } ) -- 7/28일에 접속하는 모든 캐릭터 마린룩 풀세트 큐브(1일권)
GameEvent:AddReward( 10273, { fEventTime =  1, iRewardID = 51415, bGiveOnce = True, bOnlySteamUser = True } )-- 스팀 유저 모든 캐릭에게 1레벨 큐브 지급

-- 베커 전야 이벤트
GameEvent:AddReward( 10274, { fEventTime =  30, iRewardID = 51416, bGiveOnce = True, iMinLevel = 35, cUnitClass = UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"], } ) -- 베테랑 커맨더 준비 큐브
GameEvent:AddReward( 10275, { fEXPRate = 1.0, iUnitLevel = 35, cUnitClass = UNIT_CLASS["UC_RAVEN_WEAPON_TAKER"], } ) -- 35레벨 이하 웨폰테이커는 경험치 2배 획득

-- 배틀 세라프 전야 이벤트
GameEvent:AddReward( 10276, { fEventTime =  30, iRewardID = 51419, bGiveOnce = True, iMinLevel = 35, cUnitClass = UNIT_CLASS["UC_EVE_ELECTRA"], } ) -- 배틀 세라프 준비 큐브
GameEvent:AddReward( 10277, { fEXPRate = 1.0, iUnitLevel = 35, cUnitClass = UNIT_CLASS["UC_EVE_ELECTRA"], } ) -- 35레벨 이하 코드 일렉트라는 경험치 2배 획득
-- 연속 접속 이벤트
GameEvent:AddReward( 10278, { fEventTime = 20, iRewardID = 51420, bGiveOnce =  True, bRepeatRewardEvent = True, iBeforeEventID = 0 } ) 	-- 세라프 코드 A
GameEvent:AddReward( 10279, { fEventTime = 20, iRewardID = 51421, bGiveOnce =  True, bRepeatRewardEvent = True, iBeforeEventID = 10278 } ) -- 세라프 코드 B
GameEvent:AddReward( 10280, { fEventTime = 20, iRewardID = 51422, bGiveOnce =  True, bRepeatRewardEvent = True, iBeforeEventID = 10279 } ) -- 세라프 코드 C
GameEvent:AddReward( 10281, { fEventTime = 20, iRewardID = 51423, bGiveOnce =  True, bRepeatRewardEvent = True, iBeforeEventID = 10280 } ) -- 세라프 코드 D
GameEvent:AddReward( 10282, { fEventTime = 20, iRewardID = 51420, bGiveOnce =  True, bRepeatRewardEvent = True, iBeforeEventID = 10281 } ) 	-- 세라프 코드 A
GameEvent:AddReward( 10283, { fEventTime = 20, iRewardID = 51421, bGiveOnce =  True, bRepeatRewardEvent = True, iBeforeEventID = 10282 } ) -- 세라프 코드 B
GameEvent:AddReward( 10284, { fEventTime = 20, iRewardID = 51422, bGiveOnce =  True, bRepeatRewardEvent = True, iBeforeEventID = 10283 } ) -- 세라프 코드 C
GameEvent:AddReward( 10285, { fEventTime = 20, iRewardID = 51423, bGiveOnce =  True, bRepeatRewardEvent = True, iBeforeEventID = 10284 } ) -- 세라프 코드 D
GameEvent:AddReward( 10286, { fEventTime = 30, iRewardID = 51424, bGiveOnce =  True, cUnitClass = UNIT_CLASS["UC_EVE_ELECTRA"], } ) -- 세라프 코드 랜덤 큐브

-- 필드 보스 이벤트
GameEvent:AddReward( 10287, { fEventTime =  10, iRewardID = 51425, bGiveOnce = True, } ) --카메라 ES-888(블랙)
GameEvent:AddReward( 10288, { fEventTime =  30, iRewardID = 51426, bGiveOnce = True, } ) -- 대박 필드 보스 큐브
-- 택틱컬 트루퍼 전야
GameEvent:AddReward( 10289, { fEventTime =  30, iRewardID = 51427, bGiveOnce = True, iMinLevel = 35, cUnitClass = UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"]} ) -- 택티컬 트루퍼 준비 큐브
GameEvent:AddReward( 10290, { fEventTime =  30, iRewardID = 51428, bGiveOnce = True, } ) -- 디스프로즌 에너지
GameEvent:AddReward( 10291, { fEXPRate = 1.0, iUnitLevel = 35, cUnitClass = UNIT_CLASS["UC_CHUNG_SHELLING_GUARDIAN"], } ) -- 35레벨 이하 쉘링가디언은 경험치 2배 획득
-- 13일 금요일 이벤트
GameEvent:AddReward( 10292, { fEventTime =  13, iRewardID = 51429, bGiveOnce = True, } ) -- 제이슨 마스크

-- 택티컬 트루퍼(2013년 10월 02일 ~ 2013년 10월 8일)
GameEvent:AddReward( 10293, { fEventTime =  60, iRewardID = 51430, bGiveOnce = True, } ) -- 모든 캐릭터에게 60분간 접속시 캐릭터 카드 랜덤 큐브 
-- 할로윈 전야(2013년 10월 09일 ~ 2013년 10월 22일)
GameEvent:AddReward( 10294, { fEventTime =  30, iRewardID = 51431, bGiveOnce = True, } ) -- 이벤트 기간 중 30분 접속 시 캐릭터 단위로 지급 신인 할로윈 디자이너 칭호 (15일권)
GameEvent:AddReward( 10295, { fEventTime =  30, iRewardID = 51432, bGiveOnce = True, } ) -- 이벤트 기간 중 30분 접속 시 캐릭터 단위로 지급 전설의 할로윈 디자이너 칭호(15일권)

--{{ 아이템 개편 이벤트 (2013-10-16 ~ 2013-10-29)
-- 아이템 개편 기념 주말 특별 이벤트 (2013-10-16 ~ 2013-10-29)
GameEvent:AddReward( 10296, { fEventTime =  100, iRewardID = 51433, bGiveOnce = True, } )-- (2013-10-19 ~ 2013-10-20) 루리엘의 축복받은 시공간의 주문서 교환권
GameEvent:AddReward( 10297, { fEventTime =  100, iRewardID = 51434, bGiveOnce = True, } ) -- (2013-10-26 ~ 2013-10-27) 루리엘의 축복받은 시공간의 주문서(연동레벨)
-- 아이템 개편 기념 강화 지원 이벤트 (2013-10-23 ~ 2013-10-29)
GameEvent:AddReward( 10298, { fEventTime =  60, iRewardID = 51435, bGiveOnce = True, bAccountEvent = True, } ) -- 매일 루리엘의 플루오르스톤 교환권
--}}
--{{ 할로윈 이벤트 2013년 10월 23일 ~ 2013년 11월 5일
--할로윈 연회 참석 준비
GameEvent:AddReward( 10299, { fEventTime =  10, iRewardID = 51436, bGiveOnce = True, } ) -- 10분 동안 접속 시 할로위치(15일권) 지급
GameEvent:AddReward( 10300, { fEventTime =  1, iRewardID = 51437, bGiveOnce = True, } ) -- 0분 동안 접속 시 매일 할로윈 몬스터 코스프레 교환권 1개 지급
GameEvent:AddReward( 10301, { fEventTime =  120, iRewardID = 51440, bGiveOnce = True, bAccountEvent = True, } ) -- 주말 및 할로윈 당일(10/26 ~ 10/27, 10/31, 11/2~11/3)에 120분 동안 연속으로 접속 시 빛나는 할로윈 몬스터의 영혼 1개 지급
--}}

-- 스킬트리 개편 이벤트 2013-11-06 정기 점검 후 ~ 2013-11-20 정기 점검 전
-- 복귀 유저와 성실 유저를 위한 선물
GameEvent:AddReward( 1565, { fEventTime = 10, iRewardID = 1505, bGiveOnce = True, bAccountEvent = True, bNewUnitEvent = True } )  -- 복귀 유저인증 티켓 (한번/캐릭터/10분/10월16일이후 접속기록 없는 유저)
GameEvent:AddReward( 1566, { fEventTime = 10, iRewardID = 1506, bGiveOnce = True, bAccountEvent = True, bNewUnitEvent2 = True } )  -- 성실 유저인증 티켓 (한번/캐릭터/10분/10월16일이후 접속기록 있는 유저)
-- _복귀 유저를 위한 선물
-- 11/6, 11/13 강화를 하자!(1)
GameEvent:AddReward( 1567, { fEventTime = 10, iRewardID = 1507, bGiveOnce = True, iMinLevel = 10, iMaxLevel = 50, iEventItemID = 67006456 } )  -- 복귀 유저인증 티켓 (한번/캐릭터/10분/복귀유저인증티켓소지)
GameEvent:AddReward( 1568, { fEventTime = 10, iRewardID = 1508, bGiveOnce = True, iMinLevel = 51, iMaxLevel = 60, iEventItemID = 67006456 } )  -- 복귀 유저인증 티켓 (한번/캐릭터/10분/복귀유저인증티켓소지)
-- 11/7, 11/14 강화를 하자!(2)
GameEvent:AddReward( 1569, { fEventTime = 10, iRewardID = 1509, bGiveOnce = True, iMinLevel = 10, iMaxLevel = 50, iEventItemID = 67006456 } )  -- 복귀 유저인증 티켓 (한번/캐릭터/10분/복귀유저인증티켓소지)
GameEvent:AddReward( 1570, { fEventTime = 10, iRewardID = 1510, bGiveOnce = True, iMinLevel = 51, iMaxLevel = 60, iEventItemID = 67006456 } )  -- 복귀 유저인증 티켓 (한번/캐릭터/10분/복귀유저인증티켓소지)
-- 11/8, 11/15 강화를 하자!(3)
GameEvent:AddReward( 1571, { fEventTime = 10, iRewardID = 1511, bGiveOnce = True, iMinLevel = 10, iMaxLevel = 50, iEventItemID = 67006456 } )  -- 복귀 유저인증 티켓 (한번/캐릭터/10분/복귀유저인증티켓소지)
GameEvent:AddReward( 1572, { fEventTime = 10, iRewardID = 1512, bGiveOnce = True, iMinLevel = 51, iMaxLevel = 60, iEventItemID = 67006456 } )  -- 복귀 유저인증 티켓 (한번/캐릭터/10분/복귀유저인증티켓소지)
-- 11/9, 11/16 감정을 해 보자!(1)
GameEvent:AddReward( 1573, { fEventTime = 10, iRewardID = 1513, bGiveOnce = True, iMinLevel = 10, iMaxLevel = 50, iEventItemID = 67006456 } )  -- 복귀 유저인증 티켓 (한번/캐릭터/10분/복귀유저인증티켓소지)
GameEvent:AddReward( 1574, { fEventTime = 10, iRewardID = 1514, bGiveOnce = True, iMinLevel = 51, iMaxLevel = 60, iEventItemID = 67006456 } )  -- 복귀 유저인증 티켓 (한번/캐릭터/10분/복귀유저인증티켓소지)
--11/10, 11/17 감정을 해 보자!(2)
GameEvent:AddReward( 1575, { fEventTime = 10, iRewardID = 1515, bGiveOnce = True, iMinLevel = 10, iMaxLevel = 50, iEventItemID = 67006456 } )  -- 복귀 유저인증 티켓 (한번/캐릭터/10분/복귀유저인증티켓소지)
GameEvent:AddReward( 1576, { fEventTime = 10, iRewardID = 1516, bGiveOnce = True, iMinLevel = 51, iMaxLevel = 60, iEventItemID = 67006456 } )  -- 복귀 유저인증 티켓 (한번/캐릭터/10분/복귀유저인증티켓소지)
--11/11, 11/18 감정을 해 보자!(3)
GameEvent:AddReward( 1577, { fEventTime = 10, iRewardID = 1517, bGiveOnce = True, iMinLevel = 10, iMaxLevel = 50, iEventItemID = 67006456 } )  -- 복귀 유저인증 티켓 (한번/캐릭터/10분/복귀유저인증티켓소지)
GameEvent:AddReward( 1578, { fEventTime = 10, iRewardID = 1518, bGiveOnce = True, iMinLevel = 51, iMaxLevel = 60, iEventItemID = 67006456 } )  -- 복귀 유저인증 티켓 (한번/캐릭터/10분/복귀유저인증티켓소지)
--11/12, 11/19 감정을 해 보자!(4)
GameEvent:AddReward( 1579, { fEventTime = 10, iRewardID = 1519, bGiveOnce = True, iEventItemID = 67006456 } )  -- 복귀 유저인증 티켓 (한번/캐릭터/10분/복귀유저인증티켓소지)
-- 성실 유저를 위한 선물
GameEvent:AddReward( 1580, { fEventTime = 10, iRewardID = 1520, bGiveOnce = True, iEventItemID = 67006457 } )  -- 성실 유저인증 티켓 (한번/캐릭터/10분/성실유저인증티켓소지)
GameEvent:AddReward( 1581, { fEventTime = 10, iRewardID = 1521, bGiveOnce = True, iEventItemID = 67006457 } )  -- 성실 유저인증 티켓 (한번/캐릭터/10분/성실유저인증티켓소지)
GameEvent:AddReward( 1582, { fEventTime = 10, iRewardID = 1522, bGiveOnce = True, iEventItemID = 67006457 } )  -- 성실 유저인증 티켓 (한번/캐릭터/10분/성실유저인증티켓소지)
GameEvent:AddReward( 1583, { fEventTime = 10, iRewardID = 1523, bGiveOnce = True, iEventItemID = 67006457 } )  -- 성실 유저인증 티켓 (한번/캐릭터/10분/성실유저인증티켓소지)
GameEvent:AddReward( 1584, { fEventTime = 10, iRewardID = 1524, bGiveOnce = True, iEventItemID = 67006457 } )  -- 성실 유저인증 티켓 (한번/캐릭터/10분/성실유저인증티켓소지)
GameEvent:AddReward( 1585, { fEventTime = 10, iRewardID = 1525, bGiveOnce = True, iEventItemID = 67006457 } )  -- 성실 유저인증 티켓 (한번/캐릭터/10분/성실유저인증티켓소지)
GameEvent:AddReward( 1586, { fEventTime = 10, iRewardID = 1526, bGiveOnce = True, iEventItemID = 67006457 } )  -- 성실 유저인증 티켓 (한번/캐릭터/10분/성실유저인증티켓소지)
-- 수련을 시작하자
GameEvent:AddReward( 1587, { fEventTime = 1, iRewardID = 1527, bGiveOnce = True } )  -- 수련용 반지 (한번/캐릭터/30분)

-- 2013.11.20 샌더 이벤트
GameEvent:AddReward( 1596, { fEventTime = 1, iRewardID = 1539, bGiveOnce = True, iMinLevel = 10 }) -- Lv10 이상 최초 접속 시, 샌더마을 관광 가이드북 1개 지급

-- 2013.11.20 아라전야이벤트 30분->3분, 60분->6분
GameEvent:AddReward( 1597, { fEventTime = 30, iRewardID = 1541, bGiveOnce = True, iMinLevel = 10 } ) -- Lv10 이상 30분 접속 시 아라 가문의 문서 보관함 우편 지급(캐릭터 단위)
GameEvent:AddReward( 1598, { fEventTime = 60, iRewardID = 1542, bAccountEvent = True, bGiveOnce = True, iMinLevel = 10 } ) -- Lv10 이상 60분 접속 시 봉인된 구미호 은큐브 우편 지급(계정 단위)


-- 추수감사절 이벤트 2013-11-27 00:00 ~ 2013-12-03 23:59
-- 가을걷이 필수 아이템
GameEvent:AddReward( 1599, { fEventTime = 1, iRewardID = 1549, bGiveOnce = True, } ) -- 농기구 큐브
-- 추수감사절의 축복 
GameEvent:AddReward( 1600, { fEventTime = 30, iRewardID = 1550, bGiveOnce = True, } )-- 추수감사절의 축복 
-- 추수 감사절 축복의 여운 (11/29)
GameEvent:AddReward( 1601, { fEventTime = 30, iRewardID = 1551, bGiveOnce = True, bAccountEvent = True, } )-- 루리엘의 얼음 조각상 가열기

-- 2013.12.04 어둠의 문 개편 이벤트
GameEvent:AddReward( 1602, { fEventTime = 30, iRewardID = 1552, bGiveOnce = True, } ) -- 새로운 어둠의 등장에 대한 지침서
-- 2013-12-24  제천 이벤트
GameEvent:AddReward( 1603, { fEventTime = 1, iRewardID = 1555, bGiveOnce = True, cUnitType = UNIT_TYPE["UT_ARA"] } )  -- 아라 접속시, 아라응원 선물 1개
GameEvent:AddReward( 1604, { fEventTime = 1, iRewardID = 1556, bGiveOnce = True, cUnitType = UNIT_TYPE["UT_ELSWORD"] } )  -- 아라 이외 접속시, 아라 서포터 큐브  1개
GameEvent:AddReward( 1605, { fEventTime = 1, iRewardID = 1556, bGiveOnce = True, cUnitType = UNIT_TYPE["UT_LIRE"] } )  -- 아라 이외 접속시, 아라 서포터 큐브  1개
GameEvent:AddReward( 1606, { fEventTime = 1, iRewardID = 1556, bGiveOnce = True, cUnitType = UNIT_TYPE["UT_ARME"] } )  -- 아라 이외 접속시, 아라 서포터 큐브  1개
GameEvent:AddReward( 1607, { fEventTime = 1, iRewardID = 1556, bGiveOnce = True, cUnitType = UNIT_TYPE["UT_RAVEN"] } )  -- 아라 이외 접속시, 아라 서포터 큐브  1개
GameEvent:AddReward( 1608, { fEventTime = 1, iRewardID = 1556, bGiveOnce = True, cUnitType = UNIT_TYPE["UT_EVE"] } )  -- 아라 이외 접속시, 아라 서포터 큐브  1개
GameEvent:AddReward( 1609, { fEventTime = 1, iRewardID = 1556, bGiveOnce = True, cUnitType = UNIT_TYPE["UT_CHUNG"] } )  -- 아라 이외 접속시, 아라 서포터 큐브  1개

-- 2013-12-18  아라 전직 이벤트
GameEvent:AddReward( 1610, { fEXPRate = 0.5, iUnitLevel = 64, cUnitType = UNIT_TYPE["UT_ARA"] } )  -- 아라 캐릭터 63렙 이하 경험치 1.5배

-- 2013-12-24  아라 제천 이벤트
GameEvent:AddReward( 1611, { fEXPRate = 1.0, iUnitLevel = 35, cUnitType = UNIT_TYPE["UT_ARA"] } )  -- 아라 캐릭터 35렙 이하 경험치 2배

-- 2013-12-18  2. 아라 업데이트 기념 매일 매일 선물 이벤트
GameEvent:AddReward( 1612, { fEventTime = 30, iRewardID = 1557 } )  -- 빛 나는 푸른 구미호 꼬리 액세서리 2일권 큐브
GameEvent:AddReward( 1613, { fEventTime = 30, iRewardID = 1558 } )  -- 빛 나는 붉은 구미호 꼬리 액세서리 2일권 큐브
GameEvent:AddReward( 1614, { fEventTime = 30, iRewardID = 1559 } )  -- 루리엘의 플루오르 스톤 교환권 1개
GameEvent:AddReward( 1615, { fEventTime = 30, iRewardID = 1560 } )  -- 루리엘의 축복 받은 복원의 주문서 1개
GameEvent:AddReward( 1616, { fEventTime = 30, iRewardID = 1561 } )  -- 루리엘의 시공간의 주문서 교환권 1개
GameEvent:AddReward( 1617, { fEventTime = 30, iRewardID = 1562 } )  -- 축복 받은 무기 강화석 10개  축복 받은 방어구 강화석 20개

--[[
-- 2013.12.04 은행 공유 이벤트
GameEvent:AddReward( 1619, { fEventTime = 10, iRewardID = 1564, bGiveOnce = True, iMinLevel = 10 } )-- 휴대용 강철금고 (15일권)
--]]
-- : 2013-12-18  크리스마스
GameEvent:AddReward( 2000, { fEventTime = 25, iRewardID = 2000, bGiveOnce = True, } )  -- 폴라 베어 코스프레 세트(한벌)

-- 2013-12-27 2013년 마지막 접속 이벤트
GameEvent:AddReward( 2001, { fEventTime = 30, iRewardID = 2001, bGiveOnce = True, bAccountEvent = True, } )  -- 2013년 마지막 접속 인증 티켓

-- 2014-01-01 2014년 첫 접속 인증
GameEvent:AddReward( 2014, { fEventTime = 30, iRewardID = 2015, bGiveOnce = True, bAccountEvent = True } )  -- 포니 헤드 액세서리(3일권)


-- 2014 탈 것 이벤트
GameEvent:AddReward( 2015, { fEventTime = 10, iRewardID = 2016, bGiveOnce = True, } )  -- 라이딩 체험 ( 돌진 전차 모비 RT (1일권) )
GameEvent:AddReward( 2016, { fEventTime = 10, iRewardID = 2017, bGiveOnce = True, } )  -- 라이딩 체험 ( 바람의 코우시카 (1일권) )
GameEvent:AddReward( 2017, { fEventTime = 10, iRewardID = 2018, bGiveOnce = True, } )  -- 라이딩 체험 ( 에이션트 라이딩 뽀루 (1일권) )
GameEvent:AddReward( 2018, { fEventTime = 10, iRewardID = 2019, bGiveOnce = True, } )  -- 라이딩 체험 ( 3종류 (1일권) )
GameEvent:AddReward( 2019, { fEventTime = 30, iRewardID = 2021, bAccountEvent = True, bGiveOnce = True, } )  -- 프로 라이더를 위한 특별 선물 (루리엘의 고대 화석 판별기)

-- 2014 샌더던전 3,4 이벤트
GameEvent:AddReward( 2020, { fEventTime = 1, iRewardID = 2022, bGiveOnce = True } )  -- 샌더 마을에서의 여정(샌더 액세서리 큐브)

-- 아라1차 소마 이벤트_ES_US 2014-01-28 00:00 ~ 2014-02-04 23:59
-- 1. 아라, 그녀에게 무슨 일이? (2014-01-28 00:00 ~ 2014-02-04 23:59)
GameEvent:AddReward( 2021, { fEXPRate = 1.0, iUnitLevel = 15, cUnitClass = UNIT_CLASS["UC_ARA_MARTIAL_ARTIST"] } )	-- 15레벨 이하 아라 캐릭터 경험치 2배

GameEvent:AddReward( 2022, { fEventTime = 10, iRewardID = 2023, bGiveOnce = True, cUnitClass = UNIT_CLASS["UC_ARA_MARTIAL_ARTIST"] } )	-- 노전직 아라 캐릭터 '거침없는 그녀' 큐브 우편 지급(매일/캐릭터/10분)
GameEvent:AddReward( 2023, { fEventTime = 10, iRewardID = 2024, bGiveOnce = True, cUnitClass = UNIT_CLASS["UC_ARA_LITTLE_DEVIL"] } )	-- 소마 캐릭터 '거침없는 소마' 큐브 우편 지급(매일/캐릭터/10분)

-- 2. 소마 서포터즈 (2014-01-28 00:00 ~ 2014-02-04 23:59)
GameEvent:AddReward( 2024, { fEventTime = 10, iRewardID = 2031, bGiveOnce = True, cUnitType = UNIT_TYPE["UT_ELSWORD"] } )	-- 엘소드 캐릭터 '소마를 도우는 힘' 큐브 우편 지급(매일/캐릭터/10분)
GameEvent:AddReward( 2025, { fEventTime = 10, iRewardID = 2031, bGiveOnce = True, cUnitType = UNIT_TYPE["UT_ARME"] } )	-- 아이샤 캐릭터 '소마를 도우는 힘' 큐브 우편 지급(매일/캐릭터/10분)
GameEvent:AddReward( 2026, { fEventTime = 10, iRewardID = 2031, bGiveOnce = True, cUnitType = UNIT_TYPE["UT_LIRE"] } )	-- 레나 캐릭터 '소마를 도우는 힘' 큐브 우편 지급(매일/캐릭터/10분)
GameEvent:AddReward( 2027, { fEventTime = 10, iRewardID = 2031, bGiveOnce = True, cUnitType = UNIT_TYPE["UT_RAVEN"] } )	-- 레이븐 캐릭터 '소마를 도우는 힘' 큐브 우편 지급(매일/캐릭터/10분)
GameEvent:AddReward( 2028, { fEventTime = 10, iRewardID = 2031, bGiveOnce = True, cUnitType = UNIT_TYPE["UT_EVE"] } )	-- 이브 캐릭터 '소마를 도우는 힘' 큐브 우편 지급(매일/캐릭터/10분)
GameEvent:AddReward( 2029, { fEventTime = 10, iRewardID = 2031, bGiveOnce = True, cUnitType = UNIT_TYPE["UT_CHUNG"] } )	-- 청 캐릭터 '소마를 도우는 힘' 큐브 우편 지급(매일/캐릭터/10분)
GameEvent:AddReward( 2030, { fEventTime = 10, iRewardID = 2031, bGiveOnce = True, cUnitClass = UNIT_CLASS["UC_ARA_LITTLE_HSIEN"] } )	-- 아라 소선 캐릭터 '소마를 도우는 힘' 큐브 우편 지급(매일/캐릭터/10분)
GameEvent:AddReward( 2031, { fEventTime = 10, iRewardID = 2031, bGiveOnce = True, cUnitClass = UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"] } ) -- 아라 제천 캐릭터 '소마를 도우는 힘' 큐브 우편 지급(매일/캐릭터/10분)

-- 아라2차 명왕 이벤트 2014-02-05 00:00 ~ 2014-02-11 23:59
-- 1. 아라 신규 2차 전직 오픈 기념 (2014-02-05 00:00 ~ 2014-02-11 23:59)
GameEvent:AddReward( 2032, { fEXPRate = 0.5, iUnitLevel = 35, cUnitClass = UNIT_CLASS["UC_ARA_LITTLE_DEVIL"] } ) -- 35레벨 이하 소마 캐릭터 경험치 1.5배
GameEvent:AddReward( 2033, { fEventTime = 35, iRewardID = 2034, bGiveOnce = True, iUnitClassLevel = 2 } ) -- 2/5 2차 전직 캐릭터 World War 칭호(8일권) 우편 지급(매일/캐릭터/35분)
GameEvent:AddReward( 2034, { fEventTime = 35, iRewardID = 2035, bGiveOnce = True, iUnitClassLevel = 2 } ) -- 2/6 2차 전직 캐릭터 안티 포이즌 반지(3일권) 우편 지급(매일/캐릭터/35분)
GameEvent:AddReward( 2035, { fEventTime = 35, iRewardID = 2036, bGiveOnce = True, iUnitClassLevel = 2 } ) -- 2/7 2차 전직 캐릭터 소환석 : 돌진 전차 모비RT (3일권) 1개 우편 지급(매일/캐릭터/35분)
GameEvent:AddReward( 2036, { fEventTime = 35, iRewardID = 2037, bGiveOnce = True, iUnitClassLevel = 2 } ) -- 2/8 2차 전직 캐릭터 루리엘의 플루오르스톤 교환권 1개 우편 지급(매일/캐릭터/35분)
GameEvent:AddReward( 2037, { fEventTime = 35, iRewardID = 2038, bGiveOnce = True, iUnitClassLevel = 2 } ) -- 2/9 2차 전직 캐릭터 2차 전직 프로모션 아바타 무기(포이즈닝)(3일권) 우편 지급(매일/캐릭터/35분)
GameEvent:AddReward( 2038, { fEventTime = 35, iRewardID = 2039, bGiveOnce = True, iUnitClassLevel = 2 } ) -- 2/10 2차 전직 캐릭터 선택 스킬 초기화 3개 우편 지급(매일/캐릭터/35분)
GameEvent:AddReward( 2039, { fEventTime = 35, iRewardID = 2040, bGiveOnce = True, iUnitClassLevel = 2 } ) -- 2/11 2차 전직 캐릭터 루리엘의 활력의 포션 10개, 루리엘의 마나 에릭실 10개 우편 지급(매일/캐릭터/35분)
--GameEvent:AddReward( 2040, { fEventTime = 35, iRewardID = 2041, bGiveOnce = True, iUnitClassLevel = 2 } ) -- 2/12 2차 전직 캐릭터 부활석 3개 큐브 1개 우편 지급(매일/캐릭터/35분)(미국은 안함)

-- 2014 아라 신전직 전야 이벤트
GameEvent:AddReward( 2041, { fEventTime = 10, iRewardID = 2043, bGiveOnce = True} ) -- 미약한 사파의 정수 2개 우편 지급(매일/캐릭터/10분)
GameEvent:AddReward( 2042, { fEventTime = 10, iRewardID = 2044, bGiveOnce = True, iEventItemID = 85003833 } )	-- 정파 비전 큐브 열쇠 1개 우편 지급(한번/캐릭터/10분/정파비전 큐브 보유시)
GameEvent:AddReward( 2043, { fEventTime = 10, iRewardID = 2045, bGiveOnce = True, iEventItemID = 85003834 } )	-- 사파 비전 큐브 열쇠 1개 우편 지급(한번/캐릭터/10분/사파비전 큐브 보유시)
--[[
-- 궁극의 힘
GameEvent:AddReward(	2046, { fEventTime =   10,	iRewardID = 2020,	iMinLevel = 10, } )	-- 루리엘의 마나 활성화 포션 등
GameEvent:AddReward(	2047, { fEventTime =   20,	iRewardID = 2020,	iEventItemID = 60008063,  } )	-- 루리엘의 마나 활성화 포션 등
--]]

-- 2014.1.27 1000일 이벤트
GameEvent:AddReward( 2048, { fEventTime = 1, iRewardID = 2048, bGiveOnce = True, bAccountEvent = True } ) -- 1000일 쿠폰

-- ES_US 춘절 기념 이벤트 2014-01-30 00:00 ~ 2014-02-02 23:59
-- 1. 춘절 기념 접속 이벤트! (2014-01-30 00:00 ~ 2014-02-02 23:59)
GameEvent:AddReward( 2049, { fEventTime = 20, iRewardID = 2049, bGiveOnce = True, bAccountEvent = True, iMinLevel = 10 } ) -- 2014년 새해 특별 액세서리(파랑),(분홍) (14일권) 1개
GameEvent:AddReward( 2050, { fEventTime = 30, iRewardID = 2050, bGiveOnce = True, bAccountEvent = True, iMinLevel = 10 } ) -- 2014년 춘절 폭죽 20개, 춘절 만두 3단 찜통


---------------------------------------------------------------------------------------------------
-- 2012.11.21 광고판등록
-- OFFLINE: GameEvent:AddAdvertisement( 1, { URL = "http://en.elswordonline.com/ingameinfo/" } ) -- 북미용
-- OFFLINE: GameEvent:AddAdvertisement( 2, { URL = "http://es.elswordonline.com/ingameinfo/" } ) -- 남미용

---------------------------------------------------------------------------------------------------
--공지 이벤트 날릴 센터서버UID
GameEvent:AddNotifyMSGServerInfo( SERVER_GROUP_ID["SGI_SOLES"],  3 ) -- 솔레스
GameEvent:AddNotifyMSGServerInfo( SERVER_GROUP_ID["SGI_GAIA"], 103 )  -- 가이아

