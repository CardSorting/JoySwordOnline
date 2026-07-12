-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.
g_pWeddingManager:AddWeddingHallTemplet
{	
	-- 예식장 타입
	WEDDING_HALL_TYPE			= WEDDING_HALL_TYPE["WHT_CASH_A"],
	
	-- 월드 ID
	WORLD_ID					= WORLD_ID["WI_RUBEN_WEDDING"],
	
	-- 주례 관련 위치
	OFFCIANT_POSISTION = 
	{	
		-- 주례 위치
		OFFCIANT_POS_X = -26.261,
		OFFCIANT_POS_Y = 67.804,
		OFFCIANT_POS_Z = 1236.763,
		
		-- 주례 카메라
		EYE_POS_X = -8.71,
		EYE_POS_Y = 164.19,
		EYE_POS_Z = 365.11,
		
		LOOKAT_POS_X = -36.92,
		LOOKAT_POS_Y = 869.06,
		LOOKAT_POS_Z = 5150.79,
	},
	
	-- 신랑, 신부, 하객 스타트 포지션	
	BRIDE_START_POS				= 1,
	GROOM_START_POS				= 2,	
	WEDDING_GUEST_START_POS		= 
	{
		5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, -- 좌측 1번 3, 2번 3, 우측 1번 3, 2번 3 Total 12랜덤 위치
	},
	
	-- 신랑, 신부의 주례사 시작 후 이동 될 포지션	
	BRIDE_OFFICIANT_START_POS				= 3,
	GROOM_OFFICIANT_START_POS				= 4,
	
	-- 공지 글자 색상 = 최대값 1 , RGBA 형태, RGB값 / 255
	"COLOR			= D3DXCOLOR(0.0, 0.9, 0.2, 1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
g_pWeddingManager:AddWeddingHallTemplet
{	
	-- 예식장 타입
	WEDDING_HALL_TYPE			= WEDDING_HALL_TYPE["WHT_CASH_B"],
	
	-- 월드 ID
	WORLD_ID					= WORLD_ID["WI_SANDER_WEDDING"],
	
	-- 주례 관련 위치
	OFFCIANT_POSISTION = 
	{	
		-- 주례 위치
		OFFCIANT_POS_X = -26.261,
		OFFCIANT_POS_Y = 67.804,
		OFFCIANT_POS_Z = 1236.763,
		
		-- 주례 카메라
		EYE_POS_X = -8.71,
		EYE_POS_Y = 164.19,
		EYE_POS_Z = 365.11,
		
		LOOKAT_POS_X = -36.92,
		LOOKAT_POS_Y = 869.06,
		LOOKAT_POS_Z = 5150.79,
	},
	
	-- 신랑, 신부, 하객 스타트 포지션	
	BRIDE_START_POS				= 1,
	GROOM_START_POS				= 2,	
	WEDDING_GUEST_START_POS		= 
	{
		5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16,
	},
	
	-- 신랑, 신부의 주례사 시작 후 이동 될 포지션	
	BRIDE_OFFICIANT_START_POS				= 3,
	GROOM_OFFICIANT_START_POS				= 4,
	
	-- 공지 글자 색상 = 최대값 1 , RGBA 형태, RGB값 / 255
	"COLOR			= D3DXCOLOR(0.0, 0.9, 0.2, 1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}