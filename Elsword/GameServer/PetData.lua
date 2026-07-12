


-- 펫 생성 초기값 ( 진화단계, 포만도, 친밀도, 외향성, 감수성 )
g_pPetManager:SetNewPetInfo( 0, 3840, 0, 0, 0 )


-- 펫 생성 아이템 ( 아이템ID, 펫ID, 기간제 일수이며 -1은 영구 )
g_pPetManager:AddPetCreateItemInfo( 500000, PET_UNIT_ID["PUI_PETTE_PPORU"], -1 )		 		-- 쁘띠 뽀루
g_pPetManager:AddPetCreateItemInfo( 500010, PET_UNIT_ID["PUI_PETTE_ANCIENT_PPORU"], -1 ) 		-- 쁘띠 에인션트 뽀루
g_pPetManager:AddPetCreateItemInfo( 500020, PET_UNIT_ID["PUI_TREE_KNIGHT"], -1 )		 		-- 트리 나이트
g_pPetManager:AddPetCreateItemInfo( 500050, PET_UNIT_ID["PUI_PETTE_PPORU_EVENT"], -1 )			-- 야생 쁘띠 뽀루
g_pPetManager:AddPetCreateItemInfo( 500060, PET_UNIT_ID["PUI_PETTE_ANCIENT_PPORU_F"], -1 ) 		-- 쁘띠 에인션트 뽀루
g_pPetManager:AddPetCreateItemInfo( 500070, PET_UNIT_ID["PUI_TREE_KNIGHT_F"], -1 )		 		-- 트리 나이트
g_pPetManager:AddPetCreateItemInfo( 500100, PET_UNIT_ID["PUI_HOLLO_WITCH"], -1 ) 				-- 할로 위치
g_pPetManager:AddPetCreateItemInfo( 500110, PET_UNIT_ID["PUI_HOLLO_WITCH_F"], -1 )				-- 할로 위치
g_pPetManager:AddPetCreateItemInfo( 500140, PET_UNIT_ID["PUI_XMAS2010_PPORU"], -1 )		 		-- 루돌뽀
g_pPetManager:AddPetCreateItemInfo( 500150, PET_UNIT_ID["PUI_MYSTIC_NORM"], -1 )				-- 미스틱
g_pPetManager:AddPetCreateItemInfo( 500160, PET_UNIT_ID["PUI_MYSTIC_BLK"], -1 )					-- 미스틱 - 블랙
g_pPetManager:AddPetCreateItemInfo( 500170, PET_UNIT_ID["PUI_MYSTIC_WHT"], -1 )					-- 미스틱 - 화이트
g_pPetManager:AddPetCreateItemInfo( 500180, PET_UNIT_ID["PUI_MYSTIC_RED"], -1 )					-- 미스틱 - 레드
g_pPetManager:AddPetCreateItemInfo( 500230, PET_UNIT_ID["PUI_HATCHLING_NORM"], -1 )				-- 해츨링
g_pPetManager:AddPetCreateItemInfo( 500240, PET_UNIT_ID["PUI_HATCHLING_DARK"], -1 )				-- 해츨링 - 다크
g_pPetManager:AddPetCreateItemInfo( 500250, PET_UNIT_ID["PUI_HATCHLING_FIRE"], -1 )				-- 해츨링 - 파이어
g_pPetManager:AddPetCreateItemInfo( 500260, PET_UNIT_ID["PUI_HATCHLING_LIGHT"], -1 )			-- 해츨링 - 라이트
g_pPetManager:AddPetCreateItemInfo( 500310, PET_UNIT_ID["PUI_PETIT_ANCIENT_HALLOW_DARK"], -1 )	-- 고스트 에인션트 뽀루-이블
g_pPetManager:AddPetCreateItemInfo( 500320, PET_UNIT_ID["PUI_PETIT_ANCIENT_HALLOW_FLAME"], -1 )	-- 고스트 에인션트 뽀루-헬파이어
g_pPetManager:AddPetCreateItemInfo( 500330, PET_UNIT_ID["PUI_PETIT_ANCIENT_HALLOW_SPOOK"], -1 )	-- 고스트 에인션트 뽀루-할로우
g_pPetManager:AddPetCreateItemInfo( 500340, PET_UNIT_ID["PUI_PETIT_ANCIENT_HALLOW_SPRITE"], -1 )-- 고스트 에인션트 뽀루-세라프
g_pPetManager:AddPetCreateItemInfo( 500510, PET_UNIT_ID["PUI_PETIT_PPORU_BOOMHILL"], -1 )		-- 쁘띠 붐힐 뽀루 (버파 공동 프로모션 보상 펫) -- 재훈
g_pPetManager:AddPetCreateItemInfo( 500520, PET_UNIT_ID["PUI_TREE_KNIGHT_XMAS2011"], -1 )		-- 크리스마스 트리나이트
g_pPetManager:AddPetCreateItemInfo( 500530, PET_UNIT_ID["PUI_TREE_KNIGHT_SANTA2011"], -1 )		-- 산타 트리나이트
g_pPetManager:AddPetCreateItemInfo( 500540, PET_UNIT_ID["PUI_PETIT_LIGHTBRINGER_UNIEL"], -1 )	-- 유니콘-라이트브링어 유니엘
g_pPetManager:AddPetCreateItemInfo( 500550, PET_UNIT_ID["PUI_PETIT_DARKBRINGER_UNIRING"], -1 )	-- 유니콘-다크브링어 유니링
g_pPetManager:AddPetCreateItemInfo( 500600, PET_UNIT_ID["PUI_PET_SILVERFOX_MIHO"], -1 )			-- 구미호-은여우 미호
g_pPetManager:AddPetCreateItemInfo( 500610, PET_UNIT_ID["PUI_PET_FIREFOX_SHIHO"], -1 )			-- 구미호-불여우 시호
g_pPetManager:AddPetCreateItemInfo( 500620, PET_UNIT_ID["PUI_PET_DARKFOX_NAHO"], -1 )			-- 구미호-어둠여우 나호
g_pPetManager:AddPetCreateItemInfo( 500660, PET_UNIT_ID["PUI_PET_BLOOD_EATER"], -1 )			-- 블러드 이터
g_pPetManager:AddPetCreateItemInfo( 500670, PET_UNIT_ID["PUI_PET_MANA_EATER"], -1 )				-- 마나 이터
g_pPetManager:AddPetCreateItemInfo( 500700, PET_UNIT_ID["PUI_TREE_KNIGHT_WINTER_F"], -1 )		-- 트리 나이트 (서리 에디션)
g_pPetManager:AddPetCreateItemInfo( 500710, PET_UNIT_ID["PUI_PET_MILLENNIAFOX_EUN"], -1 )		-- 천년여우 은
g_pPetManager:AddPetCreateItemInfo( 500730, PET_UNIT_ID["PUI_PANDA_STICK_RED"], -1 )		-- 봉술 판다 빨강
g_pPetManager:AddPetCreateItemInfo( 500750, PET_UNIT_ID["PUI_PANDA_STICK_BLUE"], -1 )		-- 봉술 판다 파랑
g_pPetManager:AddPetCreateItemInfo( 500790, PET_UNIT_ID["PUI_PET_BLOOD_EATER"], -1 )			-- 마나 이터( 아라 전용 )
g_pPetManager:AddPetCreateItemInfo( 500800, PET_UNIT_ID["PUI_PET_MANA_EATER"], -1 )				-- 블러드 이터( 아라 전용 )
g_pPetManager:AddPetCreateItemInfo( 500815, PET_UNIT_ID["PUI_TREE_KNIGHT_SPRING_F"], -1 )				-- 트리 나이트 ( 체리 블러섬 ) 
g_pPetManager:AddPetCreateItemInfo( 500816, PET_UNIT_ID["PUI_TREE_KNIGHT_FALL_F"], -1 )			-- 트리 나이트 ( 메이플 )
g_pPetManager:AddPetCreateItemInfo( 500820, PET_UNIT_ID["PUI_PETIT_PPORU_HATS_ON"], -1 )				-- 햇츠온 ( 쁘띠 뽀루 )
g_pPetManager:AddPetCreateItemInfo( 500821, PET_UNIT_ID["PUI_STINKO_HATS_ON"], -1 )				-- 햇츠온 ( 스팅코 )
g_pPetManager:AddPetCreateItemInfo( 500822, PET_UNIT_ID["PUI_EBONY_HATS_ON"], -1 )				-- 햇츠온 ( 에보니 )
g_pPetManager:AddPetCreateItemInfo( 500825, PET_UNIT_ID["PUI_PPORU_HOLLOWEEN_EVENT"], -1 )		-- 할로윈 이벤트 펫 마녀 뽀루
g_pPetManager:AddPetCreateItemInfo( 500826, PET_UNIT_ID["PUI_GRIM_REAPER_DEATH"], -1 )			-- 그림 리퍼-데스(사신 펫)
g_pPetManager:AddPetCreateItemInfo( 500827, PET_UNIT_ID["PUI_GRIM_REAPER_REBIRTH"], -1 )		-- 그림 리퍼-리버스(사신 펫)
g_pPetManager:AddPetCreateItemInfo( 500830, PET_UNIT_ID["PUI_RAINCOAT_CAT_BLACK_KR"], -1  )		-- 생명의 결정 (우비 입은 고양이 - 레비)
g_pPetManager:AddPetCreateItemInfo( 500831, PET_UNIT_ID["PUI_RAINCOAT_CAT_YELLOW_KR"], -1 )		-- 생명의 결정 (우비 입은 고양이 - 레지)
g_pPetManager:AddPetCreateItemInfo( 500840, PET_UNIT_ID["PUI_PET_HUNTER_PENGUIN"], -1 )			-- 펭귄

--겨울방학이벤트용 펫. 거래불가
g_pPetManager:AddPetCreateItemInfo( 500834, PET_UNIT_ID["PUI_PETTE_ANCIENT_PPORU"], -1 ) 		-- 쁘띠 에인션트 뽀루
g_pPetManager:AddPetCreateItemInfo( 500835, PET_UNIT_ID["PUI_TREE_KNIGHT"], -1 )		 		-- 트리 나이트
g_pPetManager:AddPetCreateItemInfo( 500836, PET_UNIT_ID["PUI_MYSTIC_NORM"], -1 )				-- 미스틱
g_pPetManager:AddPetCreateItemInfo( 500837, PET_UNIT_ID["PUI_HATCHLING_NORM"], -1 )				-- 해츨링
g_pPetManager:AddPetCreateItemInfo( 500838, PET_UNIT_ID["PUI_PETIT_LIGHTBRINGER_UNIEL"], -1 )	-- 유니콘-라이트브링어 유니엘
g_pPetManager:AddPetCreateItemInfo( 500839, PET_UNIT_ID["PUI_PET_SILVERFOX_MIHO"], -1 )			-- 구미호-은여우 미호



---------------
-- 해외 전용 --
---------------


-- 기본펫

g_pPetManager:AddPetCreateItemInfo( 83000011, PET_UNIT_ID["PUI_PETTE_ANCIENT_PPORU"], -1 ) -- 쁘띠 에인션트 뽀루
g_pPetManager:AddPetCreateItemInfo( 83000012, PET_UNIT_ID["PUI_TREE_KNIGHT"], -1 )		 -- 트리 나이트


-- 해츨링

g_pPetManager:AddPetCreateItemInfo( 83000130, PET_UNIT_ID["PUI_HATCHLING_NORM"], -1 )		-- 해츨링
g_pPetManager:AddPetCreateItemInfo( 83000131, PET_UNIT_ID["PUI_HATCHLING_DARK"], -1 )		-- 해츨링 - 다크
g_pPetManager:AddPetCreateItemInfo( 83000132, PET_UNIT_ID["PUI_HATCHLING_FIRE"], -1 )		-- 해츨링 - 파이어
g_pPetManager:AddPetCreateItemInfo( 83000133, PET_UNIT_ID["PUI_HATCHLING_LIGHT"], -1 )	-- 해츨링 - 라이트

g_pPetManager:AddPetCreateItemInfo( 60003797, PET_UNIT_ID["PUI_HATCHLING_NORM_F"], -1 )	-- 해츨링 완전체(대만 홍콩) 2012.01.13 임성식
g_pPetManager:AddPetCreateItemInfo( 60003798, PET_UNIT_ID["PUI_HATCHLING_DARK_F"], -1 )	-- 해츨링_다크 완전체(대만 홍콩) 2012.01.13 임성식
g_pPetManager:AddPetCreateItemInfo( 60003799, PET_UNIT_ID["PUI_HATCHLING_FIRE_F"], -1 )	-- 해츨링_파이어 완전체(대만 홍콩) 2012.01.13 임성식
g_pPetManager:AddPetCreateItemInfo( 60003800, PET_UNIT_ID["PUI_HATCHLING_LIGHT_F"], -1 )	-- 해츨링_나이트 완전체(대만 홍콩) 2012.01.13 임성식
g_pPetManager:AddPetCreateItemInfo( 60003950, PET_UNIT_ID["PUI_HATCHLING_STAR_F"], -1 )	-- 해츨링_별 완전체(대만 홍콩) 2012.01.13 임성식


-- 봉술 팬더

g_pPetManager:AddPetCreateItemInfo( 84001270, PET_UNIT_ID["PUI_PANDA_STICK_RED"], -1 )	-- 생명의 결정 (봉술 팬더-레드)
g_pPetManager:AddPetCreateItemInfo( 84001271, PET_UNIT_ID["PUI_PANDA_STICK_BLUE"], -1 )	-- 생명의 결정 (봉술 팬더-블루)

g_pPetManager:AddPetCreateItemInfo( 84001272, PET_UNIT_ID["PUI_PANDA_STICK_RED_F"], -1 )	-- 봉술펜더 완전체 (봉술 팬더-레드)
g_pPetManager:AddPetCreateItemInfo( 84001273, PET_UNIT_ID["PUI_PANDA_STICK_BLUE_F"], -1 )	-- 봉술펜더 완전체 (봉술 팬더-블루)


-- 우비

g_pPetManager:AddPetCreateItemInfo( 60007750, PET_UNIT_ID["PUI_RAINCOAT_CAT_BLACK"], -1 )	-- 생명의 결정 (우비 입은 고양이 - 레비)
g_pPetManager:AddPetCreateItemInfo( 60007751, PET_UNIT_ID["PUI_RAINCOAT_CAT_YELLOW"], -1 )	-- 생명의 결정 (우비 입은 고양이 - 레지)
g_pPetManager:AddPetCreateItemInfo( 60007754, PET_UNIT_ID["PUI_RAINCOAT_CAT_BLACK_F"], -1 )	-- 우비 입은 고양이 - 레비
g_pPetManager:AddPetCreateItemInfo( 60007755, PET_UNIT_ID["PUI_RAINCOAT_CAT_YELLOW_F"], -1 )	-- 우비 입은 고양이 - 레지


-- 트리나이트

g_pPetManager:AddPetCreateItemInfo( 90000280, PET_UNIT_ID["PUI_TREE_KNIGHT_SPRING"], -1 )	-- 트리 나이트 봄
g_pPetManager:AddPetCreateItemInfo( 90000281, PET_UNIT_ID["PUI_TREE_KNIGHT_FALL"], -1 )	-- 트리 나이트 가을
g_pPetManager:AddPetCreateItemInfo( 90000282, PET_UNIT_ID["PUI_TREE_KNIGHT_WINTER"], -1 )	-- 트리 나이트 겨울
g_pPetManager:AddPetCreateItemInfo( 75000633, PET_UNIT_ID["PUI_TREE_KNIGHT_SPRING_F"], -1 )	-- 트리 나이트 봄 (완전체)
g_pPetManager:AddPetCreateItemInfo( 75000634, PET_UNIT_ID["PUI_TREE_KNIGHT_FALL_F"], -1 )	-- 트리 나이트 가을 (완전체)
g_pPetManager:AddPetCreateItemInfo( 75000635, PET_UNIT_ID["PUI_TREE_KNIGHT_WINTER_F"], -1 )	-- 트리 나이트 겨울 (완전체)

g_pPetManager:AddPetCreateItemInfo( 115000140, PET_UNIT_ID["PUI_TREE_KNIGHT_SPRING"], -1 )	-- 트리 나이트 봄
g_pPetManager:AddPetCreateItemInfo( 115000141, PET_UNIT_ID["PUI_TREE_KNIGHT_FALL"], -1 )	-- 트리 나이트 가을
g_pPetManager:AddPetCreateItemInfo( 115000142, PET_UNIT_ID["PUI_TREE_KNIGHT_WINTER"], -1 )	-- 트리 나이트 겨울
g_pPetManager:AddPetCreateItemInfo( 115000130, PET_UNIT_ID["PUI_TREE_KNIGHT_SPRING_F"], -1 )	-- 트리 나이트 봄(완전체)
g_pPetManager:AddPetCreateItemInfo( 115000131, PET_UNIT_ID["PUI_TREE_KNIGHT_FALL_F"], -1 )		-- 트리 나이트 가을(완전체)
g_pPetManager:AddPetCreateItemInfo( 115000132, PET_UNIT_ID["PUI_TREE_KNIGHT_WINTER_F"], -1 )	-- 트리 나이트 겨울(완전체)

g_pPetManager:AddPetCreateItemInfo( 85003660, PET_UNIT_ID["PUI_TREE_KNIGHT_EVENT_F"], 7 )	-- 트리나이트 완전체(7일)


-- 야생 해츨링

g_pPetManager:AddPetCreateItemInfo( 210000071, PET_UNIT_ID["PUI_HATCHLING_BLUE"], -1 )	-- 야생 해츨링(유체)
g_pPetManager:AddPetCreateItemInfo( 85003020, PET_UNIT_ID["PUI_HATCHLING_BLUE_F"], -1 )	-- 야생 해츨링


-- 사신

g_pPetManager:AddPetCreateItemInfo( 210000138, PET_UNIT_ID["PUI_DEATH_SCYTHE"], -1 )	-- 사신
g_pPetManager:AddPetCreateItemInfo( 210000140, PET_UNIT_ID["PUI_DEATH_SCYTHE_F"], -1 )	-- 사신 ( 완전체 )


-- 유니링

g_pPetManager:AddPetCreateItemInfo( 67005730, PET_UNIT_ID["PUI_PETIT_LIGHTBRINGER_UNIEL_F"], -1 )	-- 유니엘-더 라이트 브링어 (완전체) 2013.04.19 이경철
g_pPetManager:AddPetCreateItemInfo( 67005830, PET_UNIT_ID["PUI_PETIT_DARKBRINGER_UNIRING_F"], -1 )	-- 유니링-더 다크 브링어 (완전체) 2013.05.11 이경철


-- 블러드이터

g_pPetManager:AddPetCreateItemInfo( 67005860, PET_UNIT_ID["PUI_PET_BLOOD_EATER_EVENT"], -1 )	-- 이벤트용 블러드 이터 완전체) 2013.06.07 이경철


-- 쁘띠 쉐도우

g_pPetManager:AddPetCreateItemInfo( 115000301, PET_UNIT_ID["PUI_PETTE_ANCIENT_PPORU_SHADOW"], -1 )	-- 쁘띠 쉐도우 뽀루
g_pPetManager:AddPetCreateItemInfo( 115000300, PET_UNIT_ID["PUI_PETTE_ANCIENT_PPORU_SHADOW_F"], -1 )	-- 쁘띠 쉐도우 뽀루(완전체)

g_pPetManager:AddPetCreateItemInfo( 60001802, PET_UNIT_ID["PUI_PETTE_ANCIENT_PPORU_SHADOW"], -1 ) -- 쁘띠 쉐도우 뽀루 - 테스트중


-- 2013 할로윈 펫

g_pPetManager:AddPetCreateItemInfo( 90002292, PET_UNIT_ID["PUI_HALLOWEEN_PUMPKIN_TANYA_F"], -1 )	-- 할로윈 호박 요정 타냐 완전체
g_pPetManager:AddPetCreateItemInfo( 90002293, PET_UNIT_ID["PUI_HALLOWEEN_PUMPKIN_LAEL_F"], -1 )	-- 할로윈 호박 요정 라엘 완전체
g_pPetManager:AddPetCreateItemInfo( 90002294, PET_UNIT_ID["PUI_HALLOWEEN_PUMPKIN_LOJETA_F"], -1 )	-- 할로윈 호박 요정 로제타 완전체
g_pPetManager:AddPetCreateItemInfo( 90002295, PET_UNIT_ID["PUI_HALLOWEEN_PUMPKIN_NARENEA_F"], -1 ) -- 할로윈 호박 요정 나르네아 완전체
g_pPetManager:AddPetCreateItemInfo( 90002296, PET_UNIT_ID["PUI_HALLOWEEN_PUMPKIN_ELDENA_F"], -1 ) -- 할로윈 호박 요정 엘데나 완전체 ( 테스트용 )


-- 할로위치

g_pPetManager:AddPetCreateItemInfo( 85003490, PET_UNIT_ID["PUI_HOLLO_WITCH_EVENT_F"], 15 )	-- 이벤트용 할로 위치 (완전체) 2013.09.29 이경철


-- 황실 팬더

g_pPetManager:AddPetCreateItemInfo( 210000230, PET_UNIT_ID["PUI_PANDA_ROYAL_RED"], -1 )	-- 황실펜더 완전체 (레드)
g_pPetManager:AddPetCreateItemInfo( 210000240, PET_UNIT_ID["PUI_PANDA_ROYAL_WHITE"], -1 )	-- 황실펜더 완전체 (화이트)


-- 보안관

g_pPetManager:AddPetCreateItemInfo( 90002050, PET_UNIT_ID["PUI_SHERIFF_NORM"], -1 )	-- 생명의 결정 (보안관)
g_pPetManager:AddPetCreateItemInfo( 90002090, PET_UNIT_ID["PUI_SHERIFF_WHITE"], -1 )	-- 생명의 결정 (보안관-화이트)

g_pPetManager:AddPetCreateItemInfo( 90002060, PET_UNIT_ID["PUI_SHERIFF_NORM_F"], -1 )	-- 보안관 완전체
g_pPetManager:AddPetCreateItemInfo( 90002100, PET_UNIT_ID["PUI_SHERIFF_WHITE_F"], -1 )	-- 보안관 화이트 완전체


-- 용병뽀루

g_pPetManager:AddPetCreateItemInfo( 85003040, PET_UNIT_ID["PUI_PET_MERCENARY_PPORU_EVENT_INT"], -1 )	-- 용병뽀루


-- 불꽃 뽀루

g_pPetManager:AddPetCreateItemInfo( 153000095, PET_UNIT_ID["PUI_FIREWORK_PPORU"], -1 )	-- 불꽃 뽀루


-- 크리스마스?

g_pPetManager:AddPetCreateItemInfo( 85003670, PET_UNIT_ID["PUI_PET_SNOWBUMP"], -1 )	-- 눈사람
g_pPetManager:AddPetCreateItemInfo( 85003680, PET_UNIT_ID["PUI_PET_HUNTER_PENGUIN"], -1 )	-- 팽귄


-- 감마니아 뽀루


g_pPetManager:AddPetCreateItemInfo( 60003470, PET_UNIT_ID["PUI_GAMANIA_PETTE_PPORU"], -1 )			-- 감마니아 뽀루


-- 미호 완전체

g_pPetManager:AddPetCreateItemInfo( 70006030, PET_UNIT_ID["PUI_PET_SILVERFOX_MIHO_F"], -1 )	-- 은여우 미호
g_pPetManager:AddPetCreateItemInfo( 70006040, PET_UNIT_ID["PUI_PET_FIREFOX_SHIHO_F"], -1 )	-- 불여우 시호
g_pPetManager:AddPetCreateItemInfo( 70006050, PET_UNIT_ID["PUI_PET_DARKFOX_NAHO_F"], -1 )	-- 어둠여우 나호


-- 이벤트용?

g_pPetManager:AddPetCreateItemInfo( 84002210, PET_UNIT_ID["PUI_HATCHLING_NORM_EVENT_F"], 15 )	-- 해츨링 완전체 15일
g_pPetManager:AddPetCreateItemInfo( 84002211, PET_UNIT_ID["PUI_MYSTIC_EVENT_NORM_F"], 15 )	-- 미스틱 완전체 15일


-- 손오공

g_pPetManager:AddPetCreateItemInfo( 67006630, PET_UNIT_ID["PUI_SONOKONG"], -1 ) -- 생명의 결정(손오공)
g_pPetManager:AddPetCreateItemInfo( 67006632, PET_UNIT_ID["PUI_SONOKONG_F"], -1 ) -- 손오공 완전체

--춘절이벤트 
g_pPetManager:AddPetCreateItemInfo( 141000908, PET_UNIT_ID["PUI_TREE_KNIGHT"],-1 )		 		-- 트리 나이트
g_pPetManager:AddPetCreateItemInfo( 141000909, PET_UNIT_ID["PUI_PETTE_ANCIENT_PPORU"],-1 ) 		-- 쁘띠 에인션트 뽀루
g_pPetManager:AddPetCreateItemInfo( 141000910, PET_UNIT_ID["PUI_MYSTIC_NORM"],-1 )				-- 미스틱
g_pPetManager:AddPetCreateItemInfo( 141000911, PET_UNIT_ID["PUI_HATCHLING_NORM"],-1 )				-- 해츨링

-- 판별기 구성 이벤트 용 펫
g_pPetManager:AddPetCreateItemInfo( 82500010, PET_UNIT_ID["PUI_PETTE_ANCIENT_PPORU"], -1 ) 		-- 쁘띠 에인션트 뽀루
g_pPetManager:AddPetCreateItemInfo( 82500020, PET_UNIT_ID["PUI_TREE_KNIGHT"], -1 )		 		-- 트리 나이트
g_pPetManager:AddPetCreateItemInfo( 82500150, PET_UNIT_ID["PUI_MYSTIC_NORM"], -1 )				-- 미스틱
g_pPetManager:AddPetCreateItemInfo( 82500230, PET_UNIT_ID["PUI_HATCHLING_NORM"], -1 )				-- 해츨링
g_pPetManager:AddPetCreateItemInfo( 82500540, PET_UNIT_ID["PUI_PETIT_LIGHTBRINGER_UNIEL"], -1 )	-- 유니콘-라이트브링어 유니엘
g_pPetManager:AddPetCreateItemInfo( 82500600, PET_UNIT_ID["PUI_PET_SILVERFOX_MIHO"], -1 )			-- 구미호-은여우 미호


-- 펫 생성 아이템 ID , 펫 ID , 확률
g_pPetManager:AddRandomPetCreateItemInfo( 90002290, PET_UNIT_ID["PUI_HALLOWEEN_PUMPKIN_TANYA"], 23 ) -- 할로윈 호박 요정 타냐
g_pPetManager:AddRandomPetCreateItemInfo( 90002290, PET_UNIT_ID["PUI_HALLOWEEN_PUMPKIN_LAEL"], 23 )	-- 할로윈 호박 요정 라엘
g_pPetManager:AddRandomPetCreateItemInfo( 90002290, PET_UNIT_ID["PUI_HALLOWEEN_PUMPKIN_LOJETA"], 23 ) -- 할로윈 호박 요정 로제타
g_pPetManager:AddRandomPetCreateItemInfo( 90002290, PET_UNIT_ID["PUI_HALLOWEEN_PUMPKIN_NARENEA"], 23 ) -- 할로윈 호박 요정 나르네아
g_pPetManager:AddRandomPetCreateItemInfo( 90002290, PET_UNIT_ID["PUI_HALLOWEEN_PUMPKIN_ELDENA"], 8 ) -- 할로윈 호박 요정 엘데나

-- 펫 변신 아이템 ID , 펫 생성 아이템 ID , 펫 ID , 확률
-- 하나의 레어 아이템만 확률 지정 가능합니다. 자신의 펫과 같은 것을 제외한 나머지를 똑같이 확률을 나눕니다. ( 정수로 딱 나누어 떨어져야 합니다. )
-- ex) 자신이 타냐 펫을 가지고 있고 변신 아이템을 사용하면 엘데나 10 , 라엘 30 , 로제타 30 , 나르네아 30 확률로 지정됩니다.
g_pPetManager:AddTransformPetItemInfo( 90002300, 90002290, PET_UNIT_ID["PUI_HALLOWEEN_PUMPKIN_ELDENA"], 10 )

-- 이벤트 펫 먹이
g_pPetManager:AddPetCashFeedItemInfo( 141000880, 234 ) -- 루리엘의 펫 시리얼


-- 캐쉬템 펫 먹이
g_pPetManager:AddPetCashFeedItemInfo( 500030, 468 ) -- 엘의 나무 씨앗
g_pPetManager:AddPetCashFeedItemInfo( 500040, 936 ) -- 엘의 나무 열매

g_pPetManager:AddPetCashFeedItemInfo( 83000010, 936 ) -- (중국용) 엘의 나무 열매
g_pPetManager:AddPetCashFeedItemInfo( 210000074, 1404 ) -- 신비의 풀 SERV_PET_EVENT_EVOLUTION_ITEM
g_pPetManager:AddPetCashFeedItemInfo( 84001302, 1404 ) -- (중국용) 대나무

-- 이벤트 펫 먹이
g_pPetManager:AddPetCashFeedItemInfo( 141000880, 234 ) -- 루리엘의 펫 시리얼

-- 친밀도가 70% 이상인 경우에만 섭취하는 펫 먹이
g_pPetManager:AddSpecialFeedItemID( 500030 )
g_pPetManager:AddSpecialFeedItemID( 500040 )

g_pPetManager:AddSpecialFeedItemID( 83000010 )
g_pPetManager:AddSpecialFeedItemID( 210000074 ) -- SERV_PET_EVENT_EVOLUTION_ITEM
g_pPetManager:AddSpecialFeedItemID( 84001302 ) -- (중국용) 대나무

g_pPetManager:AddSpecialFeedItemID( 141000880 ) -- 루리엘의 펫 시리얼

-- 펫 포만도 감소 상수 ( 진화단계, 상수값 )
g_pPetManager:AddPetSatietyDecreaseFactor( 0, 1 )
g_pPetManager:AddPetSatietyDecreaseFactor( 1, 1 )
g_pPetManager:AddPetSatietyDecreaseFactor( 2, 1 )
g_pPetManager:AddPetSatietyDecreaseFactor( 3, 0.5 )


-- 큐피엘 젤리
g_pPetManager:IncreaseSpecialFeedIntimacyRate( 0.0201 )
g_pPetManager:DecreaseSpecialFeedIntimacyRate( 0.0501 )