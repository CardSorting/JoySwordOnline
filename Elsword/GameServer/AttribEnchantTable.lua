


-- 사용의 편리를 위해 ItemID를 미리 정의해놓음

ATI_UNKNOWN			= 130047	-- 무속성
ATI_RED				= 130048	-- 불
ATI_BLUE			= 130049	-- 물
ATI_GREEN			= 130051	-- 자연
ATI_WIND			= 130050	-- 바람
ATI_LIGHT			= 130053	-- 빛
ATI_DARK			= 130052	-- 암흑
ATI_IDENTIFY_STONE	= 130054	-- 감정석
ATI_UNKNOWN_STONE	= 130055	-- 복구석


-- 엘의 조각[불명]을 싱글로 박을때 나올 속성 확률

g_pCX2EnchantItem:AddRandomAttribSingle( ENCHANT_TYPE["ET_BLAZE"],  23 )
g_pCX2EnchantItem:AddRandomAttribSingle( ENCHANT_TYPE["ET_WATER"],  15 )
g_pCX2EnchantItem:AddRandomAttribSingle( ENCHANT_TYPE["ET_NATURE"], 23 )
g_pCX2EnchantItem:AddRandomAttribSingle( ENCHANT_TYPE["ET_WIND"],   15 )
g_pCX2EnchantItem:AddRandomAttribSingle( ENCHANT_TYPE["ET_LIGHT"],  12 )
g_pCX2EnchantItem:AddRandomAttribSingle( ENCHANT_TYPE["ET_DARK"],   11 )



-- 엘의 조각[불명]을 듀얼로 박을때 나올 속성 확률 : 1. 싱글로 박혀있는 속성		2. 듀얼로 나올 속성		3. 확률값

g_pCX2EnchantItem:AddRandomAttribDual( ENCHANT_TYPE["ET_WIND"],		ENCHANT_TYPE["ET_BLAZE"],		31 )
g_pCX2EnchantItem:AddRandomAttribDual( ENCHANT_TYPE["ET_WIND"],		ENCHANT_TYPE["ET_WATER"],		21 )
g_pCX2EnchantItem:AddRandomAttribDual( ENCHANT_TYPE["ET_WIND"],		ENCHANT_TYPE["ET_NATURE"],		29 ) 
g_pCX2EnchantItem:AddRandomAttribDual( ENCHANT_TYPE["ET_WIND"],		ENCHANT_TYPE["ET_WIND"],		19 )

g_pCX2EnchantItem:AddRandomAttribDual( ENCHANT_TYPE["ET_LIGHT"],	ENCHANT_TYPE["ET_BLAZE"],		31 )
g_pCX2EnchantItem:AddRandomAttribDual( ENCHANT_TYPE["ET_LIGHT"],	ENCHANT_TYPE["ET_WATER"],		21 )
g_pCX2EnchantItem:AddRandomAttribDual( ENCHANT_TYPE["ET_LIGHT"],	ENCHANT_TYPE["ET_NATURE"],		29 )
g_pCX2EnchantItem:AddRandomAttribDual( ENCHANT_TYPE["ET_LIGHT"],	ENCHANT_TYPE["ET_LIGHT"],		19 )

g_pCX2EnchantItem:AddRandomAttribDual( ENCHANT_TYPE["ET_DARK"],		ENCHANT_TYPE["ET_BLAZE"],		31 )
g_pCX2EnchantItem:AddRandomAttribDual( ENCHANT_TYPE["ET_DARK"],		ENCHANT_TYPE["ET_WATER"],		21 )
g_pCX2EnchantItem:AddRandomAttribDual( ENCHANT_TYPE["ET_DARK"],		ENCHANT_TYPE["ET_NATURE"],		29 )
g_pCX2EnchantItem:AddRandomAttribDual( ENCHANT_TYPE["ET_DARK"],		ENCHANT_TYPE["ET_DARK"],		19 )

g_pCX2EnchantItem:AddRandomAttribDual( ENCHANT_TYPE["ET_BLAZE"],	ENCHANT_TYPE["ET_WIND"],		29 )
g_pCX2EnchantItem:AddRandomAttribDual( ENCHANT_TYPE["ET_BLAZE"],	ENCHANT_TYPE["ET_LIGHT"],		21 )
g_pCX2EnchantItem:AddRandomAttribDual( ENCHANT_TYPE["ET_BLAZE"],	ENCHANT_TYPE["ET_DARK"],		19 )
g_pCX2EnchantItem:AddRandomAttribDual( ENCHANT_TYPE["ET_BLAZE"],	ENCHANT_TYPE["ET_BLAZE"],		31 )

g_pCX2EnchantItem:AddRandomAttribDual( ENCHANT_TYPE["ET_WATER"],	ENCHANT_TYPE["ET_WIND"],		31 )
g_pCX2EnchantItem:AddRandomAttribDual( ENCHANT_TYPE["ET_WATER"],	ENCHANT_TYPE["ET_LIGHT"],		21 )
g_pCX2EnchantItem:AddRandomAttribDual( ENCHANT_TYPE["ET_WATER"],	ENCHANT_TYPE["ET_DARK"],		19 )
g_pCX2EnchantItem:AddRandomAttribDual( ENCHANT_TYPE["ET_WATER"],	ENCHANT_TYPE["ET_WATER"],		29 )

g_pCX2EnchantItem:AddRandomAttribDual( ENCHANT_TYPE["ET_NATURE"],	ENCHANT_TYPE["ET_WIND"],		29 )
g_pCX2EnchantItem:AddRandomAttribDual( ENCHANT_TYPE["ET_NATURE"],	ENCHANT_TYPE["ET_LIGHT"],		21 )
g_pCX2EnchantItem:AddRandomAttribDual( ENCHANT_TYPE["ET_NATURE"],	ENCHANT_TYPE["ET_DARK"],		19 )
g_pCX2EnchantItem:AddRandomAttribDual( ENCHANT_TYPE["ET_NATURE"],	ENCHANT_TYPE["ET_NATURE"],		31 )



-- 엘의 조각[불명]을 트리플로 박을때 나올 속성 확률 : 1. 싱글로 박혀있는 속성		2. 듀얼로 박혀있는 속성		3. 트리플로 나올 속성		4. 확률값

g_pCX2EnchantItem:AddRandomAttribTriple( ENCHANT_TYPE["ET_BLAZE"],	ENCHANT_TYPE["ET_BLAZE"],	ENCHANT_TYPE["ET_BLAZE"],		19 )
g_pCX2EnchantItem:AddRandomAttribTriple( ENCHANT_TYPE["ET_BLAZE"],	ENCHANT_TYPE["ET_BLAZE"],	ENCHANT_TYPE["ET_WIND"],		33 )
g_pCX2EnchantItem:AddRandomAttribTriple( ENCHANT_TYPE["ET_BLAZE"],	ENCHANT_TYPE["ET_BLAZE"],	ENCHANT_TYPE["ET_LIGHT"],		25 )
g_pCX2EnchantItem:AddRandomAttribTriple( ENCHANT_TYPE["ET_BLAZE"],	ENCHANT_TYPE["ET_BLAZE"],	ENCHANT_TYPE["ET_DARK"],		23 )

g_pCX2EnchantItem:AddRandomAttribTriple( ENCHANT_TYPE["ET_WATER"],	ENCHANT_TYPE["ET_WATER"],	ENCHANT_TYPE["ET_WATER"],		19 )
g_pCX2EnchantItem:AddRandomAttribTriple( ENCHANT_TYPE["ET_WATER"],	ENCHANT_TYPE["ET_WATER"],	ENCHANT_TYPE["ET_WIND"],		33 )
g_pCX2EnchantItem:AddRandomAttribTriple( ENCHANT_TYPE["ET_WATER"],	ENCHANT_TYPE["ET_WATER"],	ENCHANT_TYPE["ET_LIGHT"],		25 )
g_pCX2EnchantItem:AddRandomAttribTriple( ENCHANT_TYPE["ET_WATER"],	ENCHANT_TYPE["ET_WATER"],	ENCHANT_TYPE["ET_DARK"],		23 )

g_pCX2EnchantItem:AddRandomAttribTriple( ENCHANT_TYPE["ET_NATURE"],	ENCHANT_TYPE["ET_NATURE"],	ENCHANT_TYPE["ET_NATURE"],		19 )
g_pCX2EnchantItem:AddRandomAttribTriple( ENCHANT_TYPE["ET_NATURE"],	ENCHANT_TYPE["ET_NATURE"],	ENCHANT_TYPE["ET_WIND"],		33 )
g_pCX2EnchantItem:AddRandomAttribTriple( ENCHANT_TYPE["ET_NATURE"],	ENCHANT_TYPE["ET_NATURE"],	ENCHANT_TYPE["ET_LIGHT"],		25 )
g_pCX2EnchantItem:AddRandomAttribTriple( ENCHANT_TYPE["ET_NATURE"],	ENCHANT_TYPE["ET_NATURE"],	ENCHANT_TYPE["ET_DARK"],		23 )

g_pCX2EnchantItem:AddRandomAttribTriple( ENCHANT_TYPE["ET_WIND"],	ENCHANT_TYPE["ET_WIND"],	ENCHANT_TYPE["ET_WIND"],		19 )
g_pCX2EnchantItem:AddRandomAttribTriple( ENCHANT_TYPE["ET_WIND"],	ENCHANT_TYPE["ET_WIND"],	ENCHANT_TYPE["ET_BLAZE"],		33 )
g_pCX2EnchantItem:AddRandomAttribTriple( ENCHANT_TYPE["ET_WIND"],	ENCHANT_TYPE["ET_WIND"],	ENCHANT_TYPE["ET_WATER"],		23 )
g_pCX2EnchantItem:AddRandomAttribTriple( ENCHANT_TYPE["ET_WIND"],	ENCHANT_TYPE["ET_WIND"],	ENCHANT_TYPE["ET_NATURE"],		25 )

g_pCX2EnchantItem:AddRandomAttribTriple( ENCHANT_TYPE["ET_LIGHT"],	ENCHANT_TYPE["ET_LIGHT"],	ENCHANT_TYPE["ET_LIGHT"],		19 )
g_pCX2EnchantItem:AddRandomAttribTriple( ENCHANT_TYPE["ET_LIGHT"],	ENCHANT_TYPE["ET_LIGHT"],	ENCHANT_TYPE["ET_BLAZE"],		33 )
g_pCX2EnchantItem:AddRandomAttribTriple( ENCHANT_TYPE["ET_LIGHT"],	ENCHANT_TYPE["ET_LIGHT"],	ENCHANT_TYPE["ET_WATER"],		23 )
g_pCX2EnchantItem:AddRandomAttribTriple( ENCHANT_TYPE["ET_LIGHT"],	ENCHANT_TYPE["ET_LIGHT"],	ENCHANT_TYPE["ET_NATURE"],		25 )

g_pCX2EnchantItem:AddRandomAttribTriple( ENCHANT_TYPE["ET_DARK"],	ENCHANT_TYPE["ET_DARK"],	ENCHANT_TYPE["ET_DARK"],		19 )
g_pCX2EnchantItem:AddRandomAttribTriple( ENCHANT_TYPE["ET_DARK"],	ENCHANT_TYPE["ET_DARK"],	ENCHANT_TYPE["ET_BLAZE"],		33 )
g_pCX2EnchantItem:AddRandomAttribTriple( ENCHANT_TYPE["ET_DARK"],	ENCHANT_TYPE["ET_DARK"],	ENCHANT_TYPE["ET_WATER"],		23 )
g_pCX2EnchantItem:AddRandomAttribTriple( ENCHANT_TYPE["ET_DARK"],	ENCHANT_TYPE["ET_DARK"],	ENCHANT_TYPE["ET_NATURE"],		25 )

g_pCX2EnchantItem:AddRandomAttribTriple( ENCHANT_TYPE["ET_BLAZE"],	ENCHANT_TYPE["ET_WIND"],	ENCHANT_TYPE["ET_BLAZE"],		60 )
g_pCX2EnchantItem:AddRandomAttribTriple( ENCHANT_TYPE["ET_BLAZE"],	ENCHANT_TYPE["ET_WIND"],	ENCHANT_TYPE["ET_WIND"],		40 )

g_pCX2EnchantItem:AddRandomAttribTriple( ENCHANT_TYPE["ET_BLAZE"],	ENCHANT_TYPE["ET_LIGHT"],	ENCHANT_TYPE["ET_BLAZE"],		60 )
g_pCX2EnchantItem:AddRandomAttribTriple( ENCHANT_TYPE["ET_BLAZE"],	ENCHANT_TYPE["ET_LIGHT"],	ENCHANT_TYPE["ET_LIGHT"],		40 )

g_pCX2EnchantItem:AddRandomAttribTriple( ENCHANT_TYPE["ET_BLAZE"],	ENCHANT_TYPE["ET_DARK"],	ENCHANT_TYPE["ET_BLAZE"],		60 )
g_pCX2EnchantItem:AddRandomAttribTriple( ENCHANT_TYPE["ET_BLAZE"],	ENCHANT_TYPE["ET_DARK"],	ENCHANT_TYPE["ET_DARK"],		40 )

g_pCX2EnchantItem:AddRandomAttribTriple( ENCHANT_TYPE["ET_WATER"],	ENCHANT_TYPE["ET_WIND"],	ENCHANT_TYPE["ET_WATER"],		60 )
g_pCX2EnchantItem:AddRandomAttribTriple( ENCHANT_TYPE["ET_WATER"],	ENCHANT_TYPE["ET_WIND"],	ENCHANT_TYPE["ET_WIND"],		40 )

g_pCX2EnchantItem:AddRandomAttribTriple( ENCHANT_TYPE["ET_WATER"],	ENCHANT_TYPE["ET_LIGHT"],	ENCHANT_TYPE["ET_WATER"],		60 )
g_pCX2EnchantItem:AddRandomAttribTriple( ENCHANT_TYPE["ET_WATER"],	ENCHANT_TYPE["ET_LIGHT"],	ENCHANT_TYPE["ET_LIGHT"],		40 )

g_pCX2EnchantItem:AddRandomAttribTriple( ENCHANT_TYPE["ET_WATER"],	ENCHANT_TYPE["ET_DARK"],	ENCHANT_TYPE["ET_WATER"],		60 )
g_pCX2EnchantItem:AddRandomAttribTriple( ENCHANT_TYPE["ET_WATER"],	ENCHANT_TYPE["ET_DARK"],	ENCHANT_TYPE["ET_DARK"],		40 )

g_pCX2EnchantItem:AddRandomAttribTriple( ENCHANT_TYPE["ET_NATURE"],	ENCHANT_TYPE["ET_WIND"],	ENCHANT_TYPE["ET_NATURE"],		60 )
g_pCX2EnchantItem:AddRandomAttribTriple( ENCHANT_TYPE["ET_NATURE"],	ENCHANT_TYPE["ET_WIND"],	ENCHANT_TYPE["ET_WIND"],		40 )

g_pCX2EnchantItem:AddRandomAttribTriple( ENCHANT_TYPE["ET_NATURE"],	ENCHANT_TYPE["ET_LIGHT"],	ENCHANT_TYPE["ET_NATURE"],		60 )
g_pCX2EnchantItem:AddRandomAttribTriple( ENCHANT_TYPE["ET_NATURE"],	ENCHANT_TYPE["ET_LIGHT"],	ENCHANT_TYPE["ET_LIGHT"],		40 )

g_pCX2EnchantItem:AddRandomAttribTriple( ENCHANT_TYPE["ET_NATURE"],	ENCHANT_TYPE["ET_DARK"],	ENCHANT_TYPE["ET_NATURE"],		60 )
g_pCX2EnchantItem:AddRandomAttribTriple( ENCHANT_TYPE["ET_NATURE"],	ENCHANT_TYPE["ET_DARK"],	ENCHANT_TYPE["ET_DARK"],		40 )



-- 엘의 조각[불명]을 감정하거나 엘의 조각[색깔]을 엘의조각[불명]으로 복구하는 확률 설정

-- 1. 감정대상이 될 엘의 조각		2. 감정에 필요한 감정석			3. 감정 결과		4. 감정 확률

-- 엘의조각 감정
g_pCX2EnchantItem:AddIdentifyInfo( ATI_UNKNOWN, ATI_IDENTIFY_STONE, ATI_RED,	22 )
g_pCX2EnchantItem:AddIdentifyInfo( ATI_UNKNOWN, ATI_IDENTIFY_STONE, ATI_BLUE,	15 )
g_pCX2EnchantItem:AddIdentifyInfo( ATI_UNKNOWN, ATI_IDENTIFY_STONE, ATI_WIND,	22 )
g_pCX2EnchantItem:AddIdentifyInfo( ATI_UNKNOWN, ATI_IDENTIFY_STONE, ATI_GREEN,	15 )
g_pCX2EnchantItem:AddIdentifyInfo( ATI_UNKNOWN, ATI_IDENTIFY_STONE, ATI_DARK,	13 )
g_pCX2EnchantItem:AddIdentifyInfo( ATI_UNKNOWN, ATI_IDENTIFY_STONE, ATI_LIGHT,	13 )

-- 엘의조각 복구
g_pCX2EnchantItem:AddIdentifyInfo( ATI_RED,		ATI_UNKNOWN_STONE, ATI_UNKNOWN,	100 )
g_pCX2EnchantItem:AddIdentifyInfo( ATI_BLUE,	ATI_UNKNOWN_STONE, ATI_UNKNOWN,	100 )
g_pCX2EnchantItem:AddIdentifyInfo( ATI_WIND,	ATI_UNKNOWN_STONE, ATI_UNKNOWN,	100 )
g_pCX2EnchantItem:AddIdentifyInfo( ATI_GREEN,	ATI_UNKNOWN_STONE, ATI_UNKNOWN,	100 )
g_pCX2EnchantItem:AddIdentifyInfo( ATI_DARK,	ATI_UNKNOWN_STONE, ATI_UNKNOWN,	100 )
g_pCX2EnchantItem:AddIdentifyInfo( ATI_LIGHT,	ATI_UNKNOWN_STONE, ATI_UNKNOWN,	100 )



