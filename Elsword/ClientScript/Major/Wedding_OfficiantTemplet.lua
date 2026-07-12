-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-- 하거스 NPC
g_pWeddingManager:AddOfficiantTemplet
{	
	-- 주례 ID
	OFFICANT_TYPE = WEDDING_OFFICIANT_TYPE["WOT_NPC_A"],
	
	-- GameMajorXMeshPlayer에 들어갈 Templet Name
	OFFICANT_MOTION_NAME = "Hagers_Officiant",
		
	-- 말풍선 위치 Offset
	TALKBOX_POSITION_OFFSET_X = 0,
	TALKBOX_POSITION_OFFSET_Y = 250,
	TALKBOX_POSITION_OFFSET_Z = 0,
	
	OFFICANT_BEHAVIOR = 
	{
		--지연시간	--대사			--변경할 모션명	--모션 재생 타입
		{ 5,		 STR_ID_24504,			"Wait01", 		XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],}, --오늘 이 성스러운\n결혼식을 맞이하여\n이 자리에 계신\n모든 분을 축복하며\n성혼언약을 진행\n하겠네...
		{ 5,		 STR_ID_24505,			"Talk",	XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],}, --신랑은 신부를 진심\n으로 사랑하고 아껴\n주겠는가?
		{ 5,		 STR_ID_24506,			"Talk",	XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],}, --신부는 신랑을 믿고\n따르며 평생을 사랑\n하겠는가?
		{ 10,		 STR_ID_24507,			"Bye", 	XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],}, --두 사람의 언약을\n공언하며, 이로서 두\n사람은 부부가 되었\n음을 선언하겠네.\n앞으로 잘 살게나.
	},		
	
	-- 카메라 지속 시간
	CAMERA_DURATION_TIME  = 38,	
}

-- 헬렌 NPC
g_pWeddingManager:AddOfficiantTemplet
{	
	-- 주례 ID
	OFFICANT_TYPE = WEDDING_OFFICIANT_TYPE["WOT_NPC_B"],
	
	-- GameMajorXMeshPlayer에 들어갈 Templet Name
	OFFICANT_MOTION_NAME = "Hellen_Officiant",
		
	-- 말풍선 위치 Offset
	TALKBOX_POSITION_OFFSET_X = 0,
	TALKBOX_POSITION_OFFSET_Y = 250,
	TALKBOX_POSITION_OFFSET_Z = 0,
	
	OFFICANT_BEHAVIOR = 
	{
		--지연시간	--대사			--변경할 모션명	--모션 재생 타입
		{ 5,		 STR_ID_24508,			"Wait01", 		XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],}, --기쁘고 성스러운\n결혼식에 축복이\n가득하네요.\n그럼 성혼언약을\n시작하겠어요.
		{ 5,		 STR_ID_24509,			"Talk",	XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],}, --신랑은 신부를\n사랑하시나요?
		{ 5,		 STR_ID_24510,			"Talk",	XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],}, --신부는 신랑을\n사랑하시나요?
		{ 10,		 STR_ID_24511,			"Bye", 	XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],}, --이로서 두 분은\n엘리오스의 축복아래\n부부가 되었음을\n공언합니다.\n행복하세요.
	},		
	
	-- 카메라 지속 시간
	CAMERA_DURATION_TIME  = 38,	
}

-- 글레이브 NPC
g_pWeddingManager:AddOfficiantTemplet
{	
	-- 주례 ID
	OFFICANT_TYPE = WEDDING_OFFICIANT_TYPE["WOT_NPC_C"],
	
	-- GameMajorXMeshPlayer에 들어갈 Templet Name
	OFFICANT_MOTION_NAME = "Glaive_Officiant",
		
	-- 말풍선 위치 Offset
	TALKBOX_POSITION_OFFSET_X = 0,
	TALKBOX_POSITION_OFFSET_Y = 250,
	TALKBOX_POSITION_OFFSET_Z = 0,
	
	OFFICANT_BEHAVIOR = 
	{
		--지연시간	--대사			--변경할 모션명	--모션 재생 타입
		{ 5,		 STR_ID_24512,			"Wait01", 		XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],}, --큭큭큭...\n혼자사는 세상에\n결혼이 무슨소용이지?\n뭐 어쨌든 맡은 일은\n해주지, 큭큭큭...
		{ 5,		 STR_ID_24513,			"Talk",	XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],}, --그래, 남편은 뭐\n스킬이 목적일테고, 큭큭\n스킬때문에하는 결혼인가?
		{ 5,		 STR_ID_24514,			"Talk",	XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],}, --큭큭, 뭐 아내도\n큐브가 목적이자나?\n큭큭큭...
		{ 10,		 STR_ID_24515,			"Bye", 	XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],}, --이유야 어쨌든, 축하해-\n비록 실리를 위한\n결혼이겠지만 말야-\n잘 지내보라고 큭큭..
	},		
	
	-- 카메라 지속 시간
	CAMERA_DURATION_TIME  = 38,	
}