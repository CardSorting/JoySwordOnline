-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요

--[[ 물리, 마법 스탯 계산 함수
A : SecondClassStat // 2차 전직 능력치 상수(2차전직이 아니라면 캐릭터 능력치 사용)
B : CharStat		// 캐릭터 능력치 상수
C : EqipStat		// 장비 장착 위치별 능력치 상수
D : ItemLV			// 아이템별 착용 레벨
E : ItemAddLV	

A = 현재 캐릭터 또는 현재 2차 전직 캐릭터의 기본 능력치(테이블 존재)
B = 기본 캐릭터의 능력치(테이블 존재)
C = 부위별 능력치 연산 상수(테이블 존재)
D = 아이템별 착용 레벨
E = 


①물리/마법 공격력 + 물리/마법 방어력 부위별 능력치 연산 수식
= ROUND((C*[{A+A*(D+E-1)*0.15}-[(B*0.8)+0.15*{B*(D+E-1)*0.15}] ]),0)   --소수점 1자리 반올림 연산

②HP 부위별 능력치 연산 수식
= ROUND((C*(E*[  {A+A*(D-1)*0.15}-[(B*0.8)+0.15*{B*(D-1)*0.15}] ])),0)   --소수점 1자리 반올림 연산.

--]]

function CalculatePhysicalAndMagicalStat( SecondClassStat, CharStat, EqipStat, ItemLV, itemAddLV )

	--2차전직 능력치 계산
	local Cal1 = SecondClassStat + SecondClassStat *( ItemLV + itemAddLV - 1 ) * 0.15
	
	--기본 캐릭터 능력치 계산
	local Cal2 = CharStat * 0.8
	local Cal3 = CharStat * ( ItemLV + itemAddLV - 1 ) * 0.0225

	-- 아이템 부위 능력치 계산
	local Cal4 = EqipStat * ( Cal1 - Cal2 - Cal3 )

	-- 반올림해서 반환
	return math.floor( Cal4 + 0.5) 	
end

-- HP 스탯 계산 함수
function CalculateHPStat( SecondClassStat, CharStat, EqipStat, ItemLV, itemAddLV )

	--2차전직 능력치 계산
	local Cal1 = SecondClassStat + SecondClassStat *( ItemLV - 1 ) * 0.15
	
	--기본 캐릭터 능력치 계산
	local Cal2 = CharStat								--//(구)CharStat * 0.8
	local Cal3 = CharStat * ( ItemLV - 1 ) * 0.15		--//(구)CharStat * ( ItemLV - 1 ) * 0.0225

	-- 아이템 레벨 능력치 계산
	local Cal4 = ( itemAddLV / 10 ) * ( Cal1 - Cal2 - Cal3 )

	-- 아이템 부위 능력치 계산
	local Cal5 = EqipStat * Cal4
	
	-- 반올림해서 반환gpd
	return math.floor( Cal5 + 0.5) 	
end

--장비 장착 위치별 능력치
EQIP_POSITION_RELATIVE_STAT_TABLE =
{
									 -- 물공,	물방,	마공,	마방,	체력
	{ EQIP_POSITION["EP_WEAPON_HAND"],	 1,		  0,	 1,	 	0,		0.1},	--무기
	{ EQIP_POSITION["EP_DEFENCE_BODY"],	 0.03,	0.3,	  0,	0.25,	0.35},	--상의
	{ EQIP_POSITION["EP_DEFENCE_LEG"],	    0,	0.25,	0.05,	0.3,	0.3},	--하의
	{ EQIP_POSITION["EP_DEFENCE_HAND"],	 0.05,	0.2,	  0,	0.25,	0.1},	--장갑
	{ EQIP_POSITION["EP_DEFENCE_FOOT"],	    0,	0.25,	0.03,	0.2,	0.15},	--신발
}

--캐릭터별 능력치
CHARACTER_RELATIVE_STAT_TABLE =
{
							 -- 물공,	물방,	마공,	마방,	체력
	{ UNIT_TYPE["UT_ELSWORD"],	 450,	100,	370,	 83,	11250},	--엘소드
	{ UNIT_TYPE["UT_ARME"],	 	 360,	 85,	490,	108,	 9500},	--아이샤
	{ UNIT_TYPE["UT_LIRE"],		 390,	 93,	420,	105,	10000},	--레나
	{ UNIT_TYPE["UT_RAVEN"], 	 430,	103,	380,	 83,	11250},	--레이븐
	{ UNIT_TYPE["UT_EVE"],		 380,	108,	470,	 75,	10500},	--이브
	{ UNIT_TYPE["UT_CHUNG"],	 440,	108,	380,	 88,	10000},	--청
	{ UNIT_TYPE["UT_ARA"],		 440,	103,	370,	 90,	10500},	--아라	
	{ UNIT_TYPE["UT_ELESIS"],	 450,	100,	370,	 83,	11250},	--EL
}

--2차 전직 클래스별 능력치
SECOND_CLASS_RELATIVE_STAT_TABLE =
{
											-- 물공,	물방,	마공,	마방,	체력
	{UNIT_CLASS["UC_ELSWORD_LORD_KNIGHT"],	 	500,	112,	400,	 90,	12250},	--로드 나이트
	{UNIT_CLASS["UC_ELSWORD_RUNE_SLAYER"],	 	490,	110,	430,	 92,	11750},	--룬 슬레이어
	{UNIT_CLASS["UC_ELSWORD_INFINITY_SWORD"],	510,	102,	410,	 97,	12000},	--인피니티 소드
	
	{UNIT_CLASS["UC_ARME_ELEMENTAL_MASTER"],	390,	 92,	530,	117,	11000},	--엘리멘탈 마스터
	{UNIT_CLASS["UC_ARME_VOID_PRINCESS"],		400,	 95,	540,	115,	10500},	--보이드 프린세스
	{UNIT_CLASS["UC_ARME_DIMENSION_WITCH"],	 	430,	 97,	500,	110,	11000},	--디멘션 위치
	
	{UNIT_CLASS["UC_LIRE_WIND_SNEAKER"],		430,	100,	460,	115,	11250},	--윈드 스니커
	{UNIT_CLASS["UC_LIRE_GRAND_ARCHER"],		420,	100,	480,	115,	11000},	--그랜드 아처
	{UNIT_CLASS["UC_LIRE_NIGHT_WATCHER"],		440,	105,	470,	110,	10750},	--나이트 와처
	
	{UNIT_CLASS["UC_RAVEN_BLADE_MASTER"],		480,	112,	410,	 90,	12500},	--블레이드 마스터
	{UNIT_CLASS["UC_RAVEN_RECKLESS_FIST"],		470,	110,	430,	 92,	12250},	--레크리스 피스트
	{UNIT_CLASS["UC_RAVEN_VETERAN_COMMANDER"],	460,	112,	430,	 95,	12000},	--베테랑 커맨더
	
	{UNIT_CLASS["UC_EVE_CODE_NEMESIS"],		 	420,	115,	510,	 85,	11750},	--코드 네메시스
	{UNIT_CLASS["UC_EVE_CODE_EMPRESS"],		 	440,	115,	480,	 85,	12000},	--코드 엠프레스
	{UNIT_CLASS["UC_EVE_BATTLE_SERAPH"],		410,	115,	520,	 87,	11500},	--배틀 세라프
	
	{UNIT_CLASS["UC_CHUNG_IRON_PALADIN"],		500,	117,	400,	 92,	11500},	--아이언 팔라딘
	{UNIT_CLASS["UC_CHUNG_DEADLY_CHASER"],	 	470,	112,	440,	 97,	11250},	--데들리 체이서
	{UNIT_CLASS["UC_CHUNG_TACTICAL_TROOPER"],	460,	110,	440,	100,	11500},	--택티컬 트루퍼
	
	{UNIT_CLASS["UC_ARA_SAKRA_DEVANAM"],		480,	115,	400,	 97,	11750},	--제천
}