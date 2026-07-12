-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStaticSkillDesc = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkillDesc )
g_pStaticSkillDesc:SetName( "SkillDesc" )

g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetCloseOnFocusOut( true )

-- 스킬 툴팁 배경					-- 0
g_pPictureBG = g_pUIDialog:CreatePicture() 
g_pStaticSkillDesc:AddPicture( g_pPictureBG )
g_pPictureBG:SetTex2( "FadeInOut.dds" )
g_pPictureBG:SetPoint
{
  	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureBG:SetEdge( false, 2, D3DXCOLOR(1,1,1,1) );

-- 스킬 아이콘						-- 1
g_pPictureIcon = g_pUIDialog:CreatePicture() 
g_pStaticSkillDesc:AddPicture( g_pPictureIcon )
g_pPictureIcon:SetTex( "DLG_SKILL_Passive_01.tga", "SI_P_COMMON_PHYSIC_ATTACK_BEGINNER" )
g_pPictureIcon:SetPoint
{
	ADD_SIZE_X 		= -15,
	ADD_SIZE_Y 		= -15,
  	"LEFT_TOP		= D3DXVECTOR2(20,16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-- 스킬 시전 샘플 이미지			-- 2
g_pPictureImage = g_pUIDialog:CreatePicture() 
g_pStaticSkillDesc:AddPicture( g_pPictureImage )
g_pPictureImage:SetTex( "DLG_Aisha_SKILL_ScreenShot_02.tga", "SI_A_ADM_HELL_STONE" )
g_pPictureImage:SetPoint
{
	-- ADD_SIZE_X 		= 65,
	-- ADD_SIZE_Y 		= 55,
  	"LEFT_TOP		= D3DXVECTOR2(425,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--선행 스킬 아이콘					-- 3
-- g_pPictureFirstSkillIcon = g_pUIDialog:CreatePicture() 
-- g_pStaticSkillDesc:AddPicture( g_pPictureFirstSkillIcon )
-- g_pPictureFirstSkillIcon:SetTex( "DLG_SKILL_Passive_01.tga", "SI_P_COMMON_PHYSIC_ATTACK_BEGINNER" )
-- g_pPictureFirstSkillIcon:SetPoint
-- {
	-- ADD_SIZE_X 		= 55,
	-- ADD_SIZE_Y 		= 55,
	-- "LEFT_TOP		= D3DXVECTOR2(0,173)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- 타이틀 툴팁 ( 스킬 이름 및 레벨 )
g_pStaticSkillDesc:AddString		-- 1
{
	MSG             ="",
	FONT_INDEX      = XUF_DODUM_15_BOLD,
	SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(20,20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

-- 메인 툴팁 ( 스킬 설명 및 효과 )
g_pStaticSkillDesc:AddString		-- 0
{
	MSG             ="",
	FONT_INDEX      = XUF_DODUM_15_BOLD,
	SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(20,20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

-- 서브 툴팁  ( 스킬 타입, 소모 MP, 재사용 시간 )
g_pStaticSkillDesc:AddString		-- 2
{
	MSG             ="",
	FONT_INDEX      = XUF_DODUM_15_BOLD,
	SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(200,20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

-- 스킬 툴팁내 분할 선
g_pStaticHorizonLine = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticHorizonLine )
g_pStaticHorizonLine:SetName( "g_pStatic_HorizonLine" )

-- 스킬 툴팁내 분할 선( 제목 ~ 설명 )
g_pPictureHorizonLine1 = g_pUIDialog:CreatePicture()	-- 0
g_pStaticHorizonLine:AddPicture( g_pPictureHorizonLine1 )
g_pPictureHorizonLine1:SetTex( "DLG_UI_Common_Texture_NewSkill_01.TGA", "Bg_Horizon_Line" )
g_pPictureHorizonLine1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(10,73)",	-- 길이 60
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-- 스킬 툴팁내 분할 선( 설명 ~ 효과 )
g_pPictureHorizonLine1 = g_pUIDialog:CreatePicture()	-- 1
g_pStaticHorizonLine:AddPicture( g_pPictureHorizonLine1 )
g_pPictureHorizonLine1:SetTex( "DLG_UI_Common_Texture_NewSkill_01.TGA", "Bg_Horizon_Line" )
g_pPictureHorizonLine1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(10,0)",	-- 길이 60
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}