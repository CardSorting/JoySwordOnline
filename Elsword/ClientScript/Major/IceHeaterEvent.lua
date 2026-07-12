-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- 기존 가열기들의 구조로 구성 되었다는 전재하에, 맞춰 제작한 스크립트 입니다.
-- Wait( 가열기 오픈 전 ) - Play( 가열기 오픈 에니메이션 ) - End( 가열기 오픈 종료 ) 의 형식이 아니라면, 소스에 하드 코딩으로 넣어야 합니다.

g_pUIInventory:AddIceHeaterEventInfo	-- 얼음 조각상 가열기
{
	-- 가열기 아이디
	ICE_HEATER_ID 					= RANDOM_ITEM_OPEN_EVENT_TYPE["RIOET_ICE_HEATER"],

	-- 가열기 동작 전 이펙트 	( UIEffectSet.lua )
	WAIT_UI_EFFECT_SET_NAME			= "EffectSet_Ice_Heater_Wait",		
	-- 가열기 동작 이펙트 		( UIEffectSet.lua )
	PLAY_UI_EFFECT_SET_NAME			= "EffectSet_Ice_Heater_Start",
	
	-- 사용할 대기용 가열기 매시 플레이어 	( UIMajorXMeshPlayer.txt )
	WAIT_MESH_PLAYER_NAME			= "FireMachineWait",
	-- 사용할 재생용 가열기 매시 플레이어 	( UIMajorXMeshPlayer.txt )
	PLAY_MESH_PLAYER_NAME			= "FireMachineStart",
	
	-- 가열기 다이얼로그에 표시될 가열기 이름 텍스처
	-- ** 미국은 파일이 다름
	MAIN_DIALOG_TITLE_TEXTURE		= "DLG_UI_Title02_B.tga",
	-- 가열기 다이얼로그에 표시될 가열기 이름 텍스처 키
	MAIN_DIALOG_TITLE_TEXTURE_KEY	= "heater_title",
	
	-- 가열기 결과창 다이얼로그에 표시될 가열기 이름 텍스처
	RESULT_DIALOG_TITLE_TEXTURE		= "DLG_UI_Title02_B.tga",
	-- 가열기 결과창 다이얼로그에 표시될 가열기 이름 텍스처 키
	RESULT_DIALOG_TITLE_TEXTURE_KEY	= "heater_title",
	
	-- 가열기 다이얼로그에 표시될 느낌표 아이콘의 오프셋 X 위치
	CAUTION_ICON_POSITION_X			= -20.0,
	-- 가열기 다이얼로그에 표시될 느낌표 아이콘의 오프셋 Y 위치
	CAUTION_ICON_POSITION_Y			= 0.0,
	
	-- 가열기 다이얼로그의 느낌표 아이콘 옆에 표시될 스트링의 오프셋 X 위치
	CAUTION_STRING_POSITION_X		= -20.0,
	-- 가열기 다이얼로그의 느낌표 아이콘 옆에 표시될 스트링의 오프셋 Y 위치
	CAUTION_STRING_POSITION_Y		= 0.0,
	
	-- 가열기 다이얼로그의 느낌표 아이콘 옆에 표시될 스트링
	CAUTION_STRING_NUM				= STR_ID_998,
	
	-- 가열기 가동 재생음
	ICE_HEATER_PLAY_SOUND			= "Fire_Machine_Start.ogg",
	
	-- 재생 시간 ( 가열기 가동 ~ 종료까지 시간 )
	PLAY_TIME						= 10.0,
}

g_pUIInventory:AddIceHeaterEventInfo	-- 골드 얼음 조각상 가열기
{
	-- 가열기 아이디
	ICE_HEATER_ID 					= RANDOM_ITEM_OPEN_EVENT_TYPE["RIOET_GOLD_ICE_HEATER"],

	-- 가열기 동작 전 이펙트 	( UIEffectSet.lua )
	WAIT_UI_EFFECT_SET_NAME			= "EffectSet_Ice_Heater_Wait",		
	-- 가열기 동작 이펙트 		( UIEffectSet.lua )
	PLAY_UI_EFFECT_SET_NAME			= "EffectSet_Ice_Heater_Start",
	
	-- 사용할 대기용 가열기 매시 플레이어 	( UIMajorXMeshPlayer.txt )
	WAIT_MESH_PLAYER_NAME			= "GoldFireMachineWait",
	-- 사용할 재생용 가열기 매시 플레이어 	( UIMajorXMeshPlayer.txt )
	PLAY_MESH_PLAYER_NAME			= "GoldFireMachineStart",
	
	-- 가열기 다이얼로그에 표시될 가열기 이름 텍스처
	MAIN_DIALOG_TITLE_TEXTURE		= "DLG_UI_Title02_B.tga",
	-- 가열기 다이얼로그에 표시될 가열기 이름 텍스처 키
	MAIN_DIALOG_TITLE_TEXTURE_KEY	= "heater_title",
	
	-- 가열기 결과창 다이얼로그에 표시될 가열기 이름 텍스처
	RESULT_DIALOG_TITLE_TEXTURE		= "DLG_UI_Title02_B.tga",
	-- 가열기 결과창 다이얼로그에 표시될 가열기 이름 텍스처 키
	RESULT_DIALOG_TITLE_TEXTURE_KEY	= "heater_title",
	
	-- 가열기 다이얼로그에 표시될 느낌표 아이콘의 오프셋 X 위치
	CAUTION_ICON_POSITION_X			= -20.0,
	-- 가열기 다이얼로그에 표시될 느낌표 아이콘의 오프셋 Y 위치
	CAUTION_ICON_POSITION_Y			= 0.0,
	
	-- 가열기 다이얼로그에 표시될 느낌표 아이콘의 오프셋 Z 위치
	CAUTION_STRING_POSITION_X		= -20.0,
	-- 가열기 다이얼로그에 표시될 느낌표 아이콘의 오프셋 Z 위치
	CAUTION_STRING_POSITION_Y		= 0.0,
	
	-- 가열기 가동 재생음
	ICE_HEATER_PLAY_SOUND			= "Fire_Machine_Start.ogg",
	
	-- 가열기 다이얼로그의 느낌표 아이콘 옆에 표시될 스트링
	CAUTION_STRING_NUM				= STR_ID_998,
	
	-- 재생 시간 ( 가열기 가동 ~ 종료까지 시간 )
	PLAY_TIME						= 10.0,
}

g_pUIInventory:AddIceHeaterEventInfo	-- 미니 얼음 조각상 가열기
{	
	-- 가열기 아이디
	ICE_HEATER_ID 					= RANDOM_ITEM_OPEN_EVENT_TYPE["RIOET_MINI_ICE_HEATER"],

	-- 가열기 동작 전 이펙트 	( UIEffectSet.lua )
	WAIT_UI_EFFECT_SET_NAME			= "EffectSet_Ice_Heater_Wait",		
	-- 가열기 동작 이펙트 		( UIEffectSet.lua )
	PLAY_UI_EFFECT_SET_NAME			= "EffectSet_Mini_Ice_Heater_Start",
	
	-- 사용할 대기용 가열기 매시 플레이어 	( UIMajorXMeshPlayer.txt )
	WAIT_MESH_PLAYER_NAME			= "FireMachineWait",
	-- 사용할 재생용 가열기 매시 플레이어 	( UIMajorXMeshPlayer.txt )
	PLAY_MESH_PLAYER_NAME			= "MiniFireMachineStart",
	
	-- 가열기 다이얼로그에 표시될 가열기 이름 텍스처
	MAIN_DIALOG_TITLE_TEXTURE		= "DLG_UI_Title03.tga",
	-- 가열기 다이얼로그에 표시될 가열기 이름 텍스처 키
	MAIN_DIALOG_TITLE_TEXTURE_KEY	= "MINI",
	
	-- 가열기 결과창 다이얼로그에 표시될 가열기 이름 텍스처
	RESULT_DIALOG_TITLE_TEXTURE		= "DLG_UI_Title03.tga",
	-- 가열기 결과창 다이얼로그에 표시될 가열기 이름 텍스처 키
	RESULT_DIALOG_TITLE_TEXTURE_KEY	= "MINI",
	
	-- 가열기 다이얼로그에 표시될 느낌표 아이콘의 오프셋 X 위치
	CAUTION_ICON_POSITION_X			= -20.0,
	-- 가열기 다이얼로그에 표시될 느낌표 아이콘의 오프셋 Y 위치
	CAUTION_ICON_POSITION_Y			= 0.0,
	
	-- 가열기 다이얼로그에 표시될 느낌표 아이콘의 오프셋 Z 위치
	CAUTION_STRING_POSITION_X		= -20.0,
	-- 가열기 다이얼로그에 표시될 느낌표 아이콘의 오프셋 Z 위치
	CAUTION_STRING_POSITION_Y		= 0.0,
	
	-- 가열기 가동 재생음
	ICE_HEATER_PLAY_SOUND			= "Fire_Machine_Start.ogg",
	
	-- 가열기 다이얼로그의 느낌표 아이콘 옆에 표시될 스트링
	CAUTION_STRING_NUM				= STR_ID_22053,
	
	-- 재생 시간 ( 가열기 가동 ~ 종료까지 시간 )
	PLAY_TIME						= 5.28,
}

g_pUIInventory:AddIceHeaterEventInfo	-- 올인원 얼음 조각상 가열기
{	
	-- 가열기 아이디
	ICE_HEATER_ID 					= RANDOM_ITEM_OPEN_EVENT_TYPE["RIOET_ALL_IN_ONE_ICE_HEATER"],

	-- 가열기 동작 전 이펙트 	( UIEffectSet.lua )
	WAIT_UI_EFFECT_SET_NAME			= "EffectSet_AllInOne_Ice_Heater_Wait",		
	-- 가열기 동작 이펙트 		( UIEffectSet.lua )
	PLAY_UI_EFFECT_SET_NAME			= "EffectSet_All_In_One_Ice_Heater_Start",
	
	-- 사용할 대기용 가열기 매시 플레이어 	( UIMajorXMeshPlayer.txt )
	WAIT_MESH_PLAYER_NAME			= "AllInOneFireMachineWait",
	-- 사용할 재생용 가열기 매시 플레이어 	( UIMajorXMeshPlayer.txt )
	PLAY_MESH_PLAYER_NAME			= "AllInOneFireMachineStart",
	
	-- 가열기 다이얼로그에 표시될 가열기 이름 텍스처
	MAIN_DIALOG_TITLE_TEXTURE		= "DLG_UI_Common_Texture_MarriageSystem_02.tga",
	-- 가열기 다이얼로그에 표시될 가열기 이름 텍스처 키
	MAIN_DIALOG_TITLE_TEXTURE_KEY	= "Bg_Title_AllInOne",
	
	-- 가열기 결과창 다이얼로그에 표시될 가열기 이름 텍스처
	RESULT_DIALOG_TITLE_TEXTURE		= "DLG_UI_Common_Texture_MarriageSystem_02.tga",
	-- 가열기 결과창 다이얼로그에 표시될 가열기 이름 텍스처 키
	RESULT_DIALOG_TITLE_TEXTURE_KEY	= "Bg_Title_AllInOne_2",
	
	-- 가열기 다이얼로그에 표시될 느낌표 아이콘의 오프셋 X 위치
	CAUTION_ICON_POSITION_X			= -23.0,
	-- 가열기 다이얼로그에 표시될 느낌표 아이콘의 오프셋 Y 위치
	CAUTION_ICON_POSITION_Y			= 0.0,
	
	-- 가열기 다이얼로그에 표시될 느낌표 아이콘의 오프셋 Z 위치
	CAUTION_STRING_POSITION_X		= -23.0,
	-- 가열기 다이얼로그에 표시될 느낌표 아이콘의 오프셋 Z 위치
	CAUTION_STRING_POSITION_Y		= 0.0,
	
	-- 가열기 가동 재생음
	ICE_HEATER_PLAY_SOUND			= "Fire_Machine_Start.ogg",
	
	-- 가열기 다이얼로그의 느낌표 아이콘 옆에 표시될 스트링
	CAUTION_STRING_NUM				= STR_ID_24383,
	
	-- 재생 시간 ( 가열기 가동 ~ 종료까지 시간 )
	PLAY_TIME						= 10.0,
}

g_pUIInventory:AddIceHeaterEventInfo	-- 고대 화석 판별기
{	
	-- 가열기 아이디
	ICE_HEATER_ID 					= RANDOM_ITEM_OPEN_EVENT_TYPE["RIOET_RIDING_PET_GACHA"],

	-- 가열기 동작 전 이펙트 	( UIEffectSet.lua )
	WAIT_UI_EFFECT_SET_NAME			= "EffectSet_Ancient_Ice_Heater_Wait",		
	-- 가열기 동작 이펙트 		( UIEffectSet.lua )
	PLAY_UI_EFFECT_SET_NAME			= "EffectSet_Ancient_Ice_Heater_Start",
	
	-- 사용할 대기용 가열기 매시 플레이어 	( UIMajorXMeshPlayer.txt )
	WAIT_MESH_PLAYER_NAME			= "AncinetFossilRidingPetWait",
	-- 사용할 재생용 가열기 매시 플레이어 	( UIMajorXMeshPlayer.txt )
	PLAY_MESH_PLAYER_NAME			= "AncinetFossilRidingPetStart",
	
	-- 가열기 다이얼로그에 표시될 가열기 이름 텍스처
	MAIN_DIALOG_TITLE_TEXTURE		= "DLG_UI_Common_Texture_RidingPet_01.tga",
	-- 가열기 다이얼로그에 표시될 가열기 이름 텍스처 키
	MAIN_DIALOG_TITLE_TEXTURE_KEY	= "riding_heater_title",
	
	-- 가열기 결과창 다이얼로그에 표시될 가열기 이름 텍스처
	RESULT_DIALOG_TITLE_TEXTURE		= "DLG_UI_Common_Texture_RidingPet_01.tga",
	-- 가열기 결과창 다이얼로그에 표시될 가열기 이름 텍스처 키
	RESULT_DIALOG_TITLE_TEXTURE_KEY	= "riding_heater_title_result",
	
	-- 가열기 다이얼로그에 표시될 느낌표 아이콘의 오프셋 X 위치
	CAUTION_ICON_POSITION_X			= -17.0,
	-- 가열기 다이얼로그에 표시될 느낌표 아이콘의 오프셋 Y 위치
	CAUTION_ICON_POSITION_Y			= 0.0,
	
	-- 가열기 다이얼로그에 표시될 느낌표 아이콘의 오프셋 Z 위치
	CAUTION_STRING_POSITION_X		= -17.0,
	-- 가열기 다이얼로그에 표시될 느낌표 아이콘의 오프셋 Z 위치
	CAUTION_STRING_POSITION_Y		= 0.0,
	
	-- 가열기 가동 재생음
	ICE_HEATER_PLAY_SOUND			= "AncientFossilMachine_Start.ogg",
	
	-- 가열기 다이얼로그의 느낌표 아이콘 옆에 표시될 스트링
	CAUTION_STRING_NUM				= STR_ID_24518,
	
	-- 재생 시간 ( 가열기 가동 ~ 종료까지 시간 )
	PLAY_TIME						= 5.2,
}

g_pUIInventory:AddIceHeaterEventInfo	-- 할로윈 가열기
{	
	-- 가열기 아이디
	ICE_HEATER_ID 					= RANDOM_ITEM_OPEN_EVENT_TYPE["RIOET_HALLOWEEN_ICE_HEATER"],

	-- 가열기 동작 전 이펙트 	( UIEffectSet_INT.lua )
	WAIT_UI_EFFECT_SET_NAME			= "EffectSet_Halloween_Ice_Heater_Wait",		
	-- 가열기 동작 이펙트 		( UIEffectSet_INT.lua )
	PLAY_UI_EFFECT_SET_NAME			= "EffectSet_Halloween_Ice_Heater_Start",
	
	-- 사용할 대기용 가열기 매시 플레이어 	( UIMajorXMeshPlayer.txt )
	WAIT_MESH_PLAYER_NAME			= "Halloween_Ice_Heater_Wait",
	-- 사용할 재생용 가열기 매시 플레이어 	( UIMajorXMeshPlayer.txt )
	PLAY_MESH_PLAYER_NAME			= "Halloween_Ice_Heater_Start",
	
	-- 가열기 다이얼로그에 표시될 가열기 이름 텍스처
	MAIN_DIALOG_TITLE_TEXTURE		= "DLG_Common_New_Texture_INT01.tga",
	-- 가열기 다이얼로그에 표시될 가열기 이름 텍스처 키
	MAIN_DIALOG_TITLE_TEXTURE_KEY	= "SOUL_TESTER",
	
	-- 가열기 결과창 다이얼로그에 표시될 가열기 이름 텍스처
	RESULT_DIALOG_TITLE_TEXTURE		= "DLG_Common_New_Texture_INT01.tga",
	-- 가열기 결과창 다이얼로그에 표시될 가열기 이름 텍스처 키
	RESULT_DIALOG_TITLE_TEXTURE_KEY	= "SOUL_TESTER",
	
	-- 가열기 다이얼로그에 표시될 느낌표 아이콘의 오프셋 X 위치
	CAUTION_ICON_POSITION_X			= -17.0,
	-- 가열기 다이얼로그에 표시될 느낌표 아이콘의 오프셋 Y 위치
	CAUTION_ICON_POSITION_Y			= 0.0,
	
	-- 가열기 다이얼로그에 표시될 느낌표 아이콘의 오프셋 Z 위치
	CAUTION_STRING_POSITION_X		= -17.0,
	-- 가열기 다이얼로그에 표시될 느낌표 아이콘의 오프셋 Z 위치
	CAUTION_STRING_POSITION_Y		= 0.0,
	
	-- 가열기 가동 재생음
	ICE_HEATER_PLAY_SOUND			= "AncientFossilMachine_Start.ogg",
	
	-- 가열기 다이얼로그의 느낌표 아이콘 옆에 표시될 스트링
	CAUTION_STRING_NUM				= STR_ID_809,
	
	-- 재생 시간 ( 가열기 가동 ~ 종료까지 시간 )
	PLAY_TIME						= 6.6,
}