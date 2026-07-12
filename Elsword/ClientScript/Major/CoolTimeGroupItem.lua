-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


-- 쿨타임 그룹 아이템 스크립트 (쿨타임을 공유하는 아이템 그룹)
-- ( 쿨타임 그룹 ID, 아이템ID )

-- 그룹 1, HP포션 <재사용 그룹 : HP포션>
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_HP_POTION"], 77000 ) -- 초급 포션
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_HP_POTION"], 77170 ) -- 중급 포션
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_HP_POTION"], 77190 ) -- 상급 포션
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_HP_POTION"], 77270 ) -- 최상급 포션
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_HP_POTION"], 77020 ) -- 허니포션
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_HP_POTION"], 77140 ) -- 홍삼허니포션


-- 그룹 2, 음식 <재사용 그룹 : 음식>
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_FOOD"], 72000 ) -- 계란 후라이
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_FOOD"], 72010 ) -- 환상의 계란 후라이 
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_FOOD"], 72020 ) -- 타버린 계란 후라이
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_FOOD"], 72030 ) -- 소시지 구이
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_FOOD"], 72040 ) -- 환상의 소시지 구이
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_FOOD"], 72050 ) -- 타버린 소시지 구이
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_FOOD"], 72060 ) -- 소시지 크라상
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_FOOD"], 72070 ) -- 환상의 소시지 크라상
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_FOOD"], 72080 ) -- 타버린 소시지 크라상
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_FOOD"], 72090 ) -- 포테이토칩
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_FOOD"], 72100 ) -- 환상의 포테이토칩
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_FOOD"], 72110 ) -- 타버린 포테이토칩
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_FOOD"], 72120 ) -- 콤비네이션 피자
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_FOOD"], 72130 ) -- 환상의 콤비네이션 피자
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_FOOD"], 72140 ) -- 타버린 콤비네이션 피자
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_FOOD"], 72150 ) -- 안심 스테이크
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_FOOD"], 78100 ) -- 곡물 빵
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_FOOD"], 78110 ) -- 뽀루 쿠키
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_FOOD"], 78120 ) -- 말린 고기
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_FOOD"], 78130 ) -- 튀긴 건빵
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_FOOD"], 78140 ) -- 구운 고기
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_FOOD"], 78150 ) -- 생선 구이
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_FOOD"], 78160 ) -- 하멜 이후 음식
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_FOOD"], 77030 ) -- 윌리엄의 풋사과
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_FOOD"], 77040 ) -- 빵조각
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_FOOD"], 77050 ) -- 치즈조각
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_FOOD"], 77150 ) -- 버섯수프
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_FOOD"], 77160 ) -- 과일껍질과자
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_FOOD"], 78800 ) -- 보이더 꼬리 구이
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_FOOD"], 92095 ) -- 피라냐 카사고 크랩 찜
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_FOOD"], 92290 ) -- 거미 뒷다리 찜
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_FOOD"], 129460 ) -- 자장면


-- 그룹 3, AP구입포션 <재사용 그룹 : AP구입 포션>
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_AP_POTION"], 77420 ) -- 하급 소생의 포션
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_AP_POTION"], 77430 ) -- 중급 소생의 포션

-- 그룹 21, 마나포션 <재사용 그룹 : MP포션>
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MP_POTION"], 77010 ) -- 초급 마나 포션
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MP_POTION"], 77180 ) -- 중급 마나 포션
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MP_POTION"], 78902 ) -- 상급 마나포션

-- 그룹 22, 음료 <재사용 그룹 : 음료>
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DRINK"], 78200 ) -- 깔끔한 차
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DRINK"], 78210 ) -- 짜릿한 소다수
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DRINK"], 78220 ) -- 불타는 스무디
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DRINK"], 78230 ) -- 엘 에이드
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DRINK"], 78240 ) -- 마력초 즙
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DRINK"], 78250 ) -- 정령의 정수
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DRINK"], 78260 ) -- 하멜 이후 음료
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DRINK"], 77120 ) -- 바나나 샤베트
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DRINK"], 77130 ) -- 바나나 우유
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DRINK"], 78834 ) -- 사막 선인장 주스
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DRINK"], 78904 ) -- 결혼식 기념 샴페인
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DRINK"], 92295 ) -- 환상의 빙수
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DRINK"], 130044 ) -- 식혜
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DRINK"], 130045 ) -- 수정과
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DRINK"], 132825 ) -- 총명탕
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DRINK"], 160273 ) -- 식혜
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DRINK"], 160274 ) -- 수정과
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DRINK"], 160275 ) -- 한과


-- 그룹 41, 던지기아이템 <재사용 그룹 : 투척>
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_THROW_ITEM"], 77210 ) -- 나무 토막 던지기
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_THROW_ITEM"], 77220 ) -- 마법의 창
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_THROW_ITEM"], 77230 ) -- 얼음의 수정
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_THROW_ITEM"], 77240 ) -- 불의 수정
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_THROW_ITEM"], 77250 ) -- 마법의 탄환
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_THROW_ITEM"], 77260 ) -- 독 주머니
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_THROW_ITEM"], 78340 ) -- 나무 창
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_THROW_ITEM"], 78350 ) -- 빛의 창
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_THROW_ITEM"], 78360 ) -- 불의 수정구
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_THROW_ITEM"], 78370 ) -- 물의 수정구
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_THROW_ITEM"], 78380 ) -- 자연의 수정구
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_THROW_ITEM"], 78390 ) -- 바람의 수정구
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_THROW_ITEM"], 78400 ) -- 빛의 수정구
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_THROW_ITEM"], 78410 ) -- 어둠의 수정구
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_THROW_ITEM"], 135346 ) -- 벨더 아카데미 신학기 버닝 수정구
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_THROW_ITEM"], 135155 ) -- 폭발하는 울분의 수정구
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_THROW_ITEM"], 160476 ) -- 분노의 어린이탄
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_THROW_ITEM"], 160477 ) -- 냉정한 어린이탄
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_THROW_ITEM"], 160478 ) -- 사랑의 핵폭탄
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_THROW_ITEM"], 160479 ) -- 행복한 어린이탄

g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_THROW_ITEM"], 141000892 ) -- 2014 춘절 폭죽
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_THROW_ITEM"], 141000893 ) -- 2014 춘절 특제 폭죽



-- 그룹 41, 던지기아이템 <재사용 그룹 : 몬스터 카드>
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78620 ) -- 몬스터 카드 '마르스'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78621 ) -- 몬스터 카드 '루치'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78622 ) -- 몬스터 카드 '트리나이트'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78623 ) -- 몬스터 카드 '페어리 가디언'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78630 ) -- 몬스터 카드 '월리 가디언'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78631 ) -- 몬스터 카드 '포이즌 머슈'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78632 ) -- 몬스터 카드 '화이트 고스트 매지션'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78633 ) -- 몬스터 카드 '장고'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78634 ) -- 몬스터 카드 '애플몽'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78635 ) -- 몬스터 카드 '봄버몽'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78640 ) -- 몬스터 카드 '리자드맨 사우러스'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78641 ) -- 몬스터 카드 '선인짱'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78642 ) -- 몬스터 카드 '파이어 코모도'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78643 ) -- 몬스터 카드 '나소드 허니'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78644 ) -- 몬스터 카드 '나소드 광부'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78645 ) -- 몬스터 카드 '아르마딜로'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78646 ) -- 몬스터 카드 '스콜피온 킹'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78650 ) -- 몬스터 카드 '블랙크로우 저격병'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78651 ) -- 몬스터 카드 '소닉 배트'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78652 ) -- 몬스터 카드 '나소드 크리크'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78653 ) -- 몬스터 카드 '나소드 경비병 : 실드'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78654 ) -- 몬스터 카드 '나소드 가드 : TYPE - ICE'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78655 ) -- 몬스터 카드 '킹 크리크'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78656 ) -- 몬스터 카드 '블랙크로우 검사'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78660 ) -- 몬스터 카드 '글리터 창병'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78661 ) -- 몬스터 카드 '랜턴 플라이'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78662 ) -- 몬스터 카드 '레이지 스톤 골렘'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78663 ) -- 몬스터 카드 '글리터 강령술사'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78664 ) -- 몬스터 카드 '쥬비기'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78665 ) -- 몬스터 카드 '스톤 가고일'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78666 ) -- 몬스터 카드 '기민한 프록시'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78667 ) -- 몬스터 카드 '글리터 수호병'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78669 ) -- 몬스터 카드 '코카트리글'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78670 ) -- 몬스터 카드 '아크글리터 돌격병'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78671 ) -- 몬스터 카드 '아크글리터 저격병'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78672 ) -- 몬스터 카드 '아크글리터 암살병'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78673 ) -- 몬스터 카드 '아크글리터 장갑병'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78674 ) -- 몬스터 카드 '글리투스 커맨더'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78675 ) -- 몬스터 카드 '케나즈'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78676 ) -- 몬스터 카드 '다크엘프 센티넬'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78677 ) -- 몬스터 카드 '글리터 연금술사'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78678 ) -- 몬스터 카드 '잠행의 몰포스'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78679 ) -- 몬스터 카드 '맹공의 맥거드'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78680 ) -- 몬스터 카드 '쉐도우 워커'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78681 ) -- 몬스터 카드 '하갈라즈'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78682 ) -- 몬스터 카드 '고대 얼음게'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78683 ) -- 몬스터 카드 '머맨'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78684 ) -- 몬스터 카드 '칠링 헤지호그'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78685 ) -- 몬스터 카드 '쉐도우 디펜더'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78686 ) -- 몬스터 카드 '쉐도우 포트 스나이퍼'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78687 ) -- 몬스터 카드 '이스'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78688 ) -- 몬스터 카드 '쉐도우 포트 트릭스터'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78689 ) -- 몬스터 카드 '쉐도우 보이더'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78690 ) -- 몬스터 카드 '타락한 클로에'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78691 ) -- 몬스터 카드 '거대 망치 보보스'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78745 ) -- 몬스터 카드 '쉐도우 스나이퍼'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78746 ) -- 몬스터 카드 '고대 나소드 근위병'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78747 ) -- 몬스터 카드 '만타 레스'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78748 ) -- 몬스터 카드 '실종된 붉은 기사단원'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78692 ) -- [이벤트] 몬스터 카드 '마르스'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78693 ) -- [이벤트] 몬스터 카드 '루치'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78694 ) -- [이벤트] 몬스터 카드 '트리나이트'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78695 ) -- [이벤트] 몬스터 카드 '페어리 가디언'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78696 ) -- [이벤트] 몬스터 카드 '월리 가디언'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78697 ) -- [이벤트] 몬스터 카드 '포이즌 머슈'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78698 ) -- [이벤트] 몬스터 카드 '화이트 고스트 매지션'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78699 ) -- [이벤트] 몬스터 카드 '장고'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78700 ) -- [이벤트] 몬스터 카드 '애플몽'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78701 ) -- [이벤트] 몬스터 카드 '봄버몽'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78702 ) -- [이벤트] 몬스터 카드 '리자드맨 사우러스'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78703 ) -- [이벤트] 몬스터 카드 '선인짱'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78704 ) -- [이벤트] 몬스터 카드 '파이어 코모도'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78705 ) -- [이벤트] 몬스터 카드 '나소드 허니'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78706 ) -- [이벤트] 몬스터 카드 '나소드 광부'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78707 ) -- [이벤트] 몬스터 카드 '아르마딜로'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78708 ) -- [이벤트] 몬스터 카드 '스콜피온 킹'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78709 ) -- [이벤트] 몬스터 카드 '블랙크로우 저격병'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78710 ) -- [이벤트] 몬스터 카드 '소닉 배트'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78711 ) -- [이벤트] 몬스터 카드 '나소드 크리크'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78712 ) -- [이벤트] 몬스터 카드 '나소드 경비병 : 실드'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78713 ) -- [이벤트] 몬스터 카드 '나소드 가드 : TYPE - ICE'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78714 ) -- [이벤트] 몬스터 카드 '킹 크리크'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78715 ) -- [이벤트] 몬스터 카드 '글리터 창병'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78716 ) -- [이벤트] 몬스터 카드 '랜턴 플라이'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78717 ) -- [이벤트] 몬스터 카드 '레이지 스톤 골렘'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78718 ) -- [이벤트] 몬스터 카드 '글리터 강령술사'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78719 ) -- [이벤트] 몬스터 카드 '쥬비기'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78720 ) -- [이벤트] 몬스터 카드 '스톤 가고일'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78721 ) -- [이벤트] 몬스터 카드 '기민한 프록시'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78722 ) -- [이벤트] 몬스터 카드 '코카트리글'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78723 ) -- [이벤트] 몬스터 카드 '아크글리터 돌격병'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78724 ) -- [이벤트] 몬스터 카드 '아크글리터 저격병'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78725 ) -- [이벤트] 몬스터 카드 '아크글리터 암살병'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78726 ) -- [이벤트] 몬스터 카드 '아크글리터 장갑병'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78727 ) -- [이벤트] 몬스터 카드 '글리투스 커맨더'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78728 ) -- [이벤트] 몬스터 카드 '케나즈'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78729 ) -- [이벤트] 몬스터 카드 '다크엘프 센티넬'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78730 ) -- [이벤트] 몬스터 카드 '글리터 연금술사'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78731 ) -- [이벤트] 몬스터 카드 '잠행의 몰포스'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78732 ) -- [이벤트] 몬스터 카드 '맹공의 맥거드'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78733 ) -- [이벤트] 몬스터 카드 '쉐도우 워커'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78734 ) -- [이벤트] 몬스터 카드 '하갈라즈'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78735 ) -- [이벤트] 몬스터 카드 '고대 얼음게'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78736 ) -- [이벤트] 몬스터 카드 '머맨'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78737 ) -- [이벤트] 몬스터 카드 '칠링 헤지호그'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78738 ) -- [이벤트] 몬스터 카드 '쉐도우 디펜더'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78739 ) -- [이벤트] 몬스터 카드 '쉐도우 포트 스나이퍼'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78740 ) -- [이벤트] 몬스터 카드 '이스'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78741 ) -- [이벤트] 몬스터 카드 '쉐도우 포트 트릭스터'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78742 ) -- [이벤트] 몬스터 카드 '쉐도우 보이더'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78743 ) -- [이벤트] 몬스터 카드 '타락한 클로에'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78744 ) -- [이벤트] 몬스터 카드 '거대 망치 보보스'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78749 ) -- [이벤트] 몬스터 카드 '블랙크로우 검사'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78750 ) -- [이벤트] 몬스터 카드 '글리터 수호병'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78751 ) -- [이벤트] 몬스터 카드 '쉐도우 스나이퍼'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78752 ) -- [이벤트] 몬스터 카드 '고대 나소드 근위병'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78753 ) -- [이벤트] 몬스터 카드 '만타 레스'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78754 ) -- [이벤트] 몬스터 카드 '실종된 붉은 기사단원'


g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78755 ) -- 에이핑크 NPC 던전 소환 카드
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78756 ) -- 에이핑크 NPC 던전 소환 카드
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78757 ) -- 에이핑크 NPC 던전 소환 카드
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78758 ) -- 에이핑크 NPC 던전 소환 카드
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78759 ) -- 에이핑크 NPC 던전 소환 카드
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78760 ) -- 에이핑크 NPC 던전 소환 카드
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78761 ) -- 에이핑크 NPC 던전 소환 카드


g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78761 ) -- 에픽NPC 카드 '로우'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78762 ) -- 에픽NPC 카드 '페넨시오'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78763 ) -- 에픽NPC 카드 '노아'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78764 ) -- 에픽NPC 카드 '스피카'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78765 ) -- 에픽NPC 카드 '라임'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78766 ) -- 에픽NPC 카드 '아멜리아'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78767 ) -- 에픽NPC 카드 '에단'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78768 ) -- 에픽NPC 카드 '발락'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78769 ) -- 에픽NPC 카드 '코드:Q-Proto_00'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78770 ) -- 에픽NPC 카드 '애플'

g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78810 ) -- NPC 카드 '도전자 김소드'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78811 ) -- NPC 카드 '베가 트락'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78812 ) -- NPC 카드 '철그락 트락'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78813 ) -- NPC 카드 '오바 트락''
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78814 ) -- NPC 카드 '가르파이 하피'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78815 ) -- NPC 카드 '가르파이 거대 하피'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78816 ) -- NPC 카드 '돌개바람 하피'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78817 ) -- NPC 카드 '힘 좋은 철그락 바론'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78818 ) -- NPC 카드 '사나운 돌도끼 부트루'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78819 ) -- NPC 카드 '금빛 날개 : 아엘로'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78820 ) -- NPC 카드 '어둠 날개 : 오큐페테'

g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78821 ) -- 몬스터 카드 '래쉬 베가 트락'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78822 ) -- 몬스터 카드 '래쉬 철그락 트락'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78823 ) -- 몬스터 카드 '래쉬 오바 트락'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78824 ) -- 몬스터 카드 '칼루소 정예 전사'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78825 ) -- 몬스터 카드 '칼루소 전사 : 암살자'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78826 ) -- 몬스터 카드 '칼루소 격투 전사'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78827 ) -- 몬스터 카드 '칼루소 바람 전사'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78828 ) -- 몬스터 카드 '분노한 실라페'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78829 ) -- 몬스터 카드 '트락 캐베로스'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78830 ) -- 몬스터 카드 '전투 추장 : 투아딘'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78831 ) -- 몬스터 카드 '전투 추장 : 베이가'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78832 ) -- 몬스터 카드 '전투 추장 : 바리온'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78833 ) -- 몬스터 카드 '전투 추장 : 타릭'

g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78771 ) -- 몬스터 카드 '다크 베가 트락'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78772 ) -- 몬스터 카드 '다크 오바 트락'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78773 ) -- 몬스터 카드 '다크 철그락 트락'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78774 ) -- 몬스터 카드 '인큐버스 : 이쿠스'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78775 ) -- 몬스터 카드 '슬레이어 : 아누'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78776 ) -- 몬스터 카드 '서큐버스 : 에리스'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78777 ) -- 몬스터 카드 '인큐버스 : 인쿨로드'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78778 ) -- 몬스터 카드 '슬레이어 : 아누드'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78779 ) -- 몬스터 카드 '서큐버스 : 에리롯드'
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MONSTER_CARD"], 78780 ) -- 몬스터 카드 '왈도미네이션'

-- 어둠의 문 소환 카드 (어문 외에서는 사용되지 않음)
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER"], 78840 ) -- 이끼 거대게
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER"], 78841 ) -- 수풀 거대게
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER"], 78842 ) -- 정글 거대게
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER"], 78843 ) -- 풀잎 파수꾼
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER"], 78844 ) -- 성난 파수꾼
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER"], 78845 ) -- 진노한 단풍 파수꾼
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER"], 78846 ) -- 롤링 몽
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER"], 78847 ) -- 야생 몽
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER"], 78848 ) -- 분노 몽
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER"], 78849 ) -- 새싹 트리나이트
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER"], 78850 ) -- 수풀 트리나이트
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER"], 78851 ) -- 정예 트리나이트
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER"], 78852 ) -- 구리갑옷 정찰병
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER"], 78853 ) -- 철갑 정찰병
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER"], 78854 ) -- 금갑 정찰병
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER"], 78855 ) -- 바늘잎 선인짱
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER"], 78856 ) -- 가시 선인짱
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER"], 78857 ) -- 쐐기 선인짱
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER"], 78858 ) -- 화약 폭탄몽
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER"], 78859 ) -- 작약 폭탄몽
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER"], 78860 ) -- 폭약 폭탄몽
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER"], 78861 ) -- 포레스트 매지션
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER"], 78862 ) -- 라이트닝 매지션
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER"], 78863 ) -- 메테오 매지션
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER_SPECIAL"], 78864 ) -- 불꽃 머슈
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER_SPECIAL"], 78865 ) -- 폭탄 머슈
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER_SPECIAL"], 78866 ) -- 폭발성 킹머슈
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER_SPECIAL"], 78867 ) -- 엘프 간호사
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER_SPECIAL"], 78868 ) -- 엘프 회복사
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER_SPECIAL"], 78869 ) -- 엘프 치료사
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER_SPECIAL"], 78870 ) -- 새싹 가르파이 하피
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER_SPECIAL"], 78871 ) -- 삭풍의 가르파이 하피
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER_SPECIAL"], 78872 ) -- 금빛 가르파이 하피
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER_SPECIAL"], 78873 ) -- 붉은 기사단 돌격대
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER_SPECIAL"], 78874 ) -- 붉은 기사단 근위대
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER_SPECIAL"], 78875 ) -- 붉은 기사단 친위대
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER_SPECIAL"], 78876 ) -- 안개의 라구즈
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER_SPECIAL"], 78877 ) -- 맺힌 이슬의 라구즈
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER_SPECIAL"], 78878 ) -- 소용돌이의 라구즈
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER_SPECIAL"], 78879 ) -- 정예 불꽃 머슈
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER_SPECIAL"], 78880 ) -- 정예 폭탄 머슈
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER_SPECIAL"], 78881 ) -- 정예 폭발성 킹머슈
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER_SPECIAL"], 78882 ) -- 정예 엘프 간호사
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER_SPECIAL"], 78883 ) -- 정예 엘프 회복사
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER_SPECIAL"], 78884 ) -- 정예 엘프 치료사
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER_SPECIAL"], 78885 ) -- 정예 새싹 가르파이 하피
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER_SPECIAL"], 78886 ) -- 정예 삭풍의 가르파이 하피
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER_SPECIAL"], 78887 ) -- 정예 금빛 가르파이 하피
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER_SPECIAL"], 78888 ) -- 정예 붉은 기사단 돌격대
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER_SPECIAL"], 78889 ) -- 정예 붉은 기사단 근위대
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER_SPECIAL"], 78890 ) -- 정예 붉은 기사단 친위대
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER_SPECIAL"], 78891 ) -- 정예 안개의 라구즈
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER_SPECIAL"], 78892 ) -- 정예 맺힌 이슬의 라구즈
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_DEFENCE_MONSTER_SPECIAL"], 78893 ) -- 정예 소용돌이의 라구즈

-- 추가	<재사용 그룹 : 이벤트 사과>
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_EVENT_APPLE"], 78040 ) -- 유기농 사과
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_EVENT_APPLE"], 78050 ) -- 돌사과
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_EVENT_APPLE"], 78060 ) -- 안드로메다 사과
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_EVENT_APPLE"], 78070 ) -- 질풍의 사과
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_EVENT_APPLE"], 78080 ) -- 초인의 사과
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_EVENT_APPLE"], 78090 ) -- 거인의 사과


-- 추가 <재사용 그룹 : 이벤트 회복 아이템>
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_EVENT_RECOVER_ITEM"], 72500 ) -- 공존의 축제 파이
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_EVENT_RECOVER_ITEM"], 129967 ) -- 코-크 HP 포션
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_EVENT_RECOVER_ITEM"], 129968 ) -- 코-크 MP 포션
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_EVENT_RECOVER_ITEM"], 129993 ) -- 스포츠 드링크 1000ml
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_EVENT_RECOVER_ITEM"], 129994 ) -- 스포츠 드링크 500ml
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_EVENT_RECOVER_ITEM"], 130007 ) -- 원기 F
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_EVENT_RECOVER_ITEM"], 130044 ) -- 식혜
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_EVENT_RECOVER_ITEM"], 130045 ) -- 수정과
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_EVENT_RECOVER_ITEM"], 130061 ) -- 엘의 정화수
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_EVENT_RECOVER_ITEM"], 130062 ) -- 고급 엘의 정화수
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_EVENT_RECOVER_ITEM"], 135291 ) -- 초코 스틱 비스켓
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_EVENT_RECOVER_ITEM"], 160002 ) -- 카카오
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_EVENT_RECOVER_ITEM"], 160046 ) -- 미니 딸기 타르트
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_EVENT_RECOVER_ITEM"], 130300 ) -- 최고급 수제 초콜릿
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_EVENT_RECOVER_ITEM"], 130537 ) -- 코그반점 수타짜장면
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_EVENT_RECOVER_ITEM"], 130538 ) -- 코그반점 사천짜장면
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_EVENT_RECOVER_ITEM"], 131194 ) -- 빼빼로 과자
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_EVENT_RECOVER_ITEM"], 160272 ) -- 송편


--추가 <재사용 그룹 : 특수 소비 아이템>
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_SPECIA_FOOD"], 130467 ) -- 투지의 물약
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_SPECIA_FOOD"], 130507 ) -- 청양 고추

--추가 <재사용 그룹 : 특수 회복 아이템>
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_SPECIAL_RECOVER_ITEM"], 132469 ) -- 활력의 포션

--추가 <재사용 그룹 : 해독제>
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_ANTI_PITION"], 77060 ) -- 해독약
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_ANTI_PITION"], 77070 ) -- 바람의 정령석
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_ANTI_PITION"], 77080 ) -- 축복의 샘물
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_ANTI_PITION"], 77090 ) -- 성역의 샘물
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_ANTI_PITION"], 77100 ) -- 정령의 풀피리
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_ANTI_PITION"], 77110 ) -- 위그드라실의 잎

--추가 <캐시 아이템으로 별도의 재사용 그룹 없음>
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_FULL_RECOVER_ITEM"], 130165 ) -- 완전 회복 포션
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_SHERBET_ITEM"], 130166 ) -- 팥빙수
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_FULL_RECOVER_ITEM"], 135243 ) -- [코보]완전 회복 포션
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_PILL_ITEM"], 135402 ) -- 고대 화석 환약
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MP_ELIXIR_ITEM"], 215680 ) -- 마나 에릭실
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_WEDDING_CAKE_ITEM"], 78903 ) -- 결혼식 조각 케이크
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_WEDDING_DRINK_ITEM"], 78904 ) -- 결혼식 기념 샴페인

g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_FULL_RECOVER_ITEM"], 215680 ) -- 고기 만두
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_MP_ELIXIR_ITEM"], 215680 ) -- 야채 만두
g_pItemManager:AddCoolTimeGroupItem( COOLTIME_ITEM_GROUP["CIG_FULL_RECOVER_ITEM"], 141000884 ) -- 특제 만두