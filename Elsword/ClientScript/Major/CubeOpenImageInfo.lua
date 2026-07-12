-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요
--[[
***** 사용법은 아래 예제를 참고 하세요 *****
g_pCubeOpenImageManager:AddImageInfo_LUA
{
		ID = 0,				<- ID 입니다. 중복되지 않게 넣어주세요.
		
		m_setCubeID =		<- 큐브 여는 이미지를 변경 시킬 큐브 아이템 ID 입니다. 어려개를 넣어도 됩니다.
		{
			60004119,
			60004200,
		},
		m_vecImageName =	<- 변경될 이미지 이름입니다. tet 의 네이밍은 "Note" 로 통일시켜주세요!!
		{
			"DLG_UI_Common_TW_Event_Texture01A.tga",
			"DLG_UI_Common_TW_Event_Texture01B.tga",
			"DLG_UI_Common_TW_Event_Texture01C.tga",
			"DLG_UI_Common_TW_Event_Texture01D.tga",
		},
		m_wstrSoundName = 'ES_CardScratch_01.wav',	<- 큐브 여는 동안 재생 될 사운드. 기본은 '무음' 입니다.		
		m_fChangeTime = 0.085,	<- 이미지가 여러장일 경우 변경되는 시간입니다.
		m_bStringendo = False,	<- True 로 셋팅하면, 이미지가 변경되는 속도가 점점 빨라집니다.
		m_bLoop		  = True,	<- 기본값 True. False 면 마지막 이미지까지만 보여주고 이후로는 마지막 이미지만 출력
		m_bShowResult = False,	<- 결과 창을 보여 줄 것인가? 기본은 True
		m_bHideBar = True,		<- 바를 숨길것인가? 기본은 False
		m_bShowResultCustom = False, <- 결과 창 커스텀 버전을 보여줄거냐, 기본은 False

		m_vecResultItemID =		<- 결과템에 따라 또다른 이미지를 보여줘야 하는 경우 결과 아이템 ID ( 예 : 식목일 큐브 )
		{
			242380,
			242390,
			242400,
			242410,	-- 여기까지 성공
			60004119,	-- 이건 실패
		},
		m_vecResultImageName =	<- 결과 아이템에 대응하는 이미지들. 결과템 개수와 동일해야 합니다.
		{
			"DLG_UI_Common_TW_Event_Texture01Success.tga",
			"DLG_UI_Common_TW_Event_Texture01Success.tga",
			"DLG_UI_Common_TW_Event_Texture01Success.tga",
			"DLG_UI_Common_TW_Event_Texture01Success.tga",
			"DLG_UI_Common_TW_Event_Texture01Fail.tga",
		},

}
--]]


g_pCubeOpenImageManager:AddImageInfo_LUA
{
		-- 201218_ESEU_시스나이트
		ID = 1,
		
		m_setCubeID =
		{
			85001892, -- 수습 모험가 기초 교육1
			85001899, -- 수습 모험가 실무 교육1
		},
		m_vecImageName =
		{
			"DLG_UI_Event_EU_SheathKnight_Edu01.tga",
		},
		--m_fChangeTime = 0.085,
		--m_bStringendo = False,
		m_bLoop = False, 
		m_bHideBar = True,
}
g_pCubeOpenImageManager:AddImageInfo_LUA
{
		-- 201218_ESEU_시스나이트
		ID = 2,
		
		m_setCubeID =
		{
			85001893, -- 수습 모험가 기초 교육2
		},
		m_vecImageName =
		{
			"DLG_UI_Event_EU_SheathKnight_Edu03.tga",
			"DLG_UI_Event_EU_SheathKnight_Edu04.tga",
		},
		m_fChangeTime = 0.55,
		--m_bStringendo = False,
		m_bLoop = False, 
		m_bHideBar = True,
}
g_pCubeOpenImageManager:AddImageInfo_LUA
{
		-- 201218_ESEU_시스나이트
		ID = 3,
		
		m_setCubeID =
		{
			85001894, -- 수습 모험가 직무 교육(시스나이트)
			85001895, -- 수습 모험가 직무 교육(소드나이트)
			85001896, -- 수습 모험가 직무 교육(매직나이트)
			85001901, -- 수습 모험가 실무 교육3
		},
		m_vecImageName =
		{
			"DLG_UI_Event_EU_SheathKnight_Edu05.tga",
		},
		--m_fChangeTime = 1.0,
		--m_bStringendo = False,
		m_bLoop = False, 
		m_bHideBar = True,
}
g_pCubeOpenImageManager:AddImageInfo_LUA
{
		-- 201218_ESEU_시스나이트
		ID = 4,
		
		m_setCubeID =
		{
			85001900, -- 수습 모험가 실무 교육2
		},
		m_vecImageName =
		{
			"DLG_UI_Event_EU_SheathKnight_Edu04.tga",
		},
		--m_fChangeTime = 1.0,
		--m_bStringendo = False,
		m_bLoop = False, 
		m_bHideBar = True,
}
g_pCubeOpenImageManager:AddImageInfo_LUA
{
		-- 201218_ESEU_시스나이트
		ID = 5,
		
		m_setCubeID =
		{
			85001902, -- 수습 모험가 교육 수료식(신입의 마음으로)
		},
		m_vecImageName =
		{
			"DLG_UI_Event_EU_SheathKnight_Finish01.tga",
			"DLG_UI_Event_EU_SheathKnight_Finish02.tga",
		},
		m_fChangeTime = 0.55,
		--m_bStringendo = False,
		m_bLoop = False, 
		m_bHideBar = True,
}

g_pCubeOpenImageManager:AddImageInfo_LUA
{
		-- 미션 던전 매모리 카드
		ID = 6,
		
		m_setCubeID =
		{
			60005090,
		},
		m_vecImageName =
		{
		"DLG_UI_Common_Event_Texture106_a.tga",
		"DLG_UI_Common_Event_Texture106_b.tga",
		"DLG_UI_Common_Event_Texture106_c.tga",
	
		},
		m_fChangeTime = 0.35,
		m_bStringendo = False,
}

g_pCubeOpenImageManager:AddImageInfo_LUA
{
		-- 20130424 필드 전야 이벤트 
		ID = 7,
		
		m_setCubeID =
		{
			85002337, -- 바코드 가 적힌 쿠폰
		},
		m_vecImageName =
		{
			"DLG_UI_Event_EU_ElswordFieldCube.tga",
		},
		--m_fChangeTime = 1.0,
		--m_bStringendo = False,
		m_bLoop = False, 
		--m_bHideBar = True,
}

g_pCubeOpenImageManager:AddImageInfo_LUA
{
		ID = 8,
		
		m_setCubeID =
		{
			85002523, -- 조사단 뽀루의 보물 주머니
		},
		m_vecImageName =
		{
			"DLG_Common_Texture_INT02.tga",
		},
		--m_fChangeTime = 0.1,
		--m_bStringendo = False,
		m_bLoop = False, 
		--m_bHideBar = True,
}

g_pCubeOpenImageManager:AddImageInfo_LUA
{
		-- 봉인된 콘웰 ( 인피 전야 이벤트 )
		ID = 9,
		
		m_setCubeID =
		{
			85002551,
		},
		m_vecImageName =
		{
			"DLG_UI_Event_Conwell1.tga",
			"DLG_UI_Event_Conwell2.tga",
			"DLG_UI_Event_Conwell3.tga",
			"DLG_UI_Event_Conwell4.tga",
		},
		m_fChangeTime = 0.085,
		m_bStringendo = True,
		m_bLoop = False,
}

g_pCubeOpenImageManager:AddImageInfo_LUA
{
		-- 20130619_ESEU_나이트와쳐 전야이벤트 중 퐁고족의 보은 큐브
		ID = 10,
		
		m_setCubeID =
		{
			85002564, -- 풍고족 보은 큐브
		},
		m_vecImageName =
		{
			"DLG_INT_EVENT04.tga",
			"DLG_INT_EVENT05.tga",
		},
		m_fChangeTime = 0.50,
		--m_bStringendo = False,
		m_bLoop = False, 
		m_bHideBar = True,
--#ifdef RNW_EVENT_CUBE_IMAGE_FADE_IN_OUT
		m_bImageFadeInOut = True,
--#endif RNW_EVENT_CUBE_IMAGE_FADE_IN_OUT
		
}

g_pCubeOpenImageManager:AddImageInfo_LUA
{
		-- 정체모를 나소드 큐브 ( 나이트 와쳐 이벤트 )
		ID = 11,
		
		m_setCubeID =
		{
			80002144,
		},
		m_vecImageName =
		{
			"UI_EVENT_SAVE_PONGO01.tga",
		},
		--m_fChangeTime = 0.1,
		--m_bStringendo = False,
		m_bLoop = False, 
		m_bHideBar = True,
}

g_pCubeOpenImageManager:AddImageInfo_LUA
{
		ID = 12,
		
		m_setCubeID =
		{
			67006184, -- 샌더 마을 관광 가이드북
		},
		m_vecImageName =
		{
			"DLG_INT_EVENT03.tga",
		},
		--m_fChangeTime = 0.1,
		--m_bStringendo = False,
		m_bLoop = False, 
		--m_bHideBar = True,
}

g_pCubeOpenImageManager:AddImageInfo_LUA
{
		ID = 13,
		
		m_setCubeID =
		{
			67006211, -- 새로운 어둠의 등장에 대한 지침서,
		},
		m_vecImageName =
		{
			"UI_EVENT_GOD.tga",
		},
		--m_fChangeTime = 0.1,
		--m_bStringendo = False,
		m_bLoop = False, 
		--m_bHideBar = True,
}

g_pCubeOpenImageManager:AddImageInfo_LUA
{
		ID = 14,
		
		m_setCubeID =
		{
			153000081, -- 신비의 얼음 큐브
		},
		m_vecImageName =
		{
			"DLG_INT_CHRISTMAS2013_01.tga",
			"DLG_INT_CHRISTMAS2013_02.tga",
		},
		m_fChangeTime = 0.5,
		--m_bStringendo = False,
		m_bLoop = False, 
		--m_bHideBar = True,
		
}

g_pCubeOpenImageManager:AddImageInfo_LUA
{
		ID = 15,
		
		m_setCubeID =
		{
			90000413,
		},
		m_vecImageName =
		{
			"DLG_UI_Treasure_Box1_1.tga",
			"DLG_UI_Treasure_Box2_1.tga",
			"DLG_UI_Treasure_Box3_1.tga",
			"DLG_UI_Treasure_Box4_1.tga",
			"DLG_UI_Treasure_Box5_1.tga",
			"DLG_UI_Treasure_Box6_1.tga",
			"DLG_UI_Treasure_Box7_1.tga",
			"DLG_UI_Treasure_Box8_1.tga",
			"DLG_UI_Treasure_Box9_1.tga",
		},
		m_fChangeTime = 0.1,
		--m_bStringendo = False,
		m_bLoop = False, 
		m_bHideBar = True,
		
}

g_pCubeOpenImageManager:AddImageInfo_LUA
{
		ID = 16,
		
		m_setCubeID =
		{
			85003724,
		},
		m_vecImageName =
		{
			"DLG_UI_Treasure_Box1_1.tga",
			"DLG_UI_Treasure_Box2_1.tga",
			"DLG_UI_Treasure_Box3_1.tga",
			"DLG_UI_Treasure_Box4_1.tga",
			"DLG_UI_Treasure_Box5_1.tga",
			"DLG_UI_Treasure_Box6_1.tga",
			"DLG_UI_Treasure_Box7_1.tga",
			"DLG_UI_Treasure_Box8_1.tga",
			"DLG_UI_Treasure_Box9_1.tga",
		},
		m_fChangeTime = 0.1,
		--m_bStringendo = False,
		m_bLoop = False, 
		m_bHideBar = True,
		
}

g_pCubeOpenImageManager:AddImageInfo_LUA
{
		ID = 17,
		
		m_setCubeID =
		{
			85003725,
		},
		m_vecImageName =
		{
			"DLG_UI_Treasure_Box1_1.tga",
			"DLG_UI_Treasure_Box2_1.tga",
			"DLG_UI_Treasure_Box3_1.tga",
			"DLG_UI_Treasure_Box4_1.tga",
			"DLG_UI_Treasure_Box5_1.tga",
			"DLG_UI_Treasure_Box6_1.tga",
			"DLG_UI_Treasure_Box7_1.tga",
			"DLG_UI_Treasure_Box8_1.tga",
			"DLG_UI_Treasure_Box9_1.tga",
		},
		m_fChangeTime = 0.1,
		--m_bStringendo = False,
		m_bLoop = False, 
		m_bHideBar = True,
		
}