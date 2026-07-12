-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



-----초상화 박스
g_pStaticPortraitBox = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPortraitBox )
g_pStaticPortraitBox:SetName( "g_pStatic_PortraitBox" )

g_pPictureInfo_BG1 = g_pUIDialog:CreatePicture()	-- 0
g_pStaticPortraitBox:AddPicture( g_pPictureInfo_BG1 )
g_pPictureInfo_BG1:SetTex( "DLG_UI_Common_Texture_NewSkill_01.TGA", "Bg_Portrait_Chung" )
g_pPictureInfo_BG1:SetPoint
{
    -- ADD_SIZE_X = 299,
	"LEFT_TOP		= D3DXVECTOR2(20,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureInfo_BG1 = g_pUIDialog:CreatePicture()
g_pStaticPortraitBox:AddPicture( g_pPictureInfo_BG1 )
g_pPictureInfo_BG1:SetTex( "DLG_UI_Common_Texture21_NEW.TGA", "V_PRINCESS_SMALL" )
g_pPictureInfo_BG1:SetPoint
{
    -- ADD_SIZE_X = 299,
	"LEFT_TOP		= D3DXVECTOR2(20,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticPortraitBox:AddString
{
	MSG 			= "None",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(45,60)",
	"COLOR			= D3DXCOLOR(1.0,0.9,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

-----문제의 초상화 라인 하단 시작					-- 1
g_pStaticPortraitBottomStart = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPortraitBottomStart )
g_pStaticPortraitBottomStart:SetName( "g_pStatic_PortraitBottomStart" )

g_pPictureInfo_BG1 = g_pUIDialog:CreatePicture()
g_pStaticPortraitBottomStart:AddPicture( g_pPictureInfo_BG1 )
g_pPictureInfo_BG1:SetTex( "DLG_UI_Common_Texture_NewSkill_01.TGA", "Bg_Portrait_1" )
g_pPictureInfo_BG1:SetPoint
{
    -- ADD_SIZE_X = 299,
	"LEFT_TOP		= D3DXVECTOR2(34,-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----문제의 초상화 라인 하단 중간					-- 2
g_pStaticPortraitBottomStart = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPortraitBottomStart )
g_pStaticPortraitBottomStart:SetName( "g_pStatic_PortraitBottomMiddle" )

g_pPictureInfo_BG1 = g_pUIDialog:CreatePicture()
g_pStaticPortraitBottomStart:AddPicture( g_pPictureInfo_BG1 )
g_pPictureInfo_BG1:SetTex( "DLG_UI_Common_Texture_NewSkill_01.TGA", "Bg_Portrait_2" )
g_pPictureInfo_BG1:SetPoint
{
    -- ADD_SIZE_X = 299,
	"LEFT_TOP		= D3DXVECTOR2(34,-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----문제의 초상화 라인	하단 끝						-- 3
g_pStaticPortraitBottomEnd = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPortraitBottomEnd )
g_pStaticPortraitBottomEnd:SetName( "g_pStatic_PortraitBottomEnd" )

g_pPictureInfo_BG1 = g_pUIDialog:CreatePicture()
g_pStaticPortraitBottomEnd:AddPicture( g_pPictureInfo_BG1 )
g_pPictureInfo_BG1:SetTex( "DLG_UI_Common_Texture_NewSkill_01.TGA", "Bg_Portrait_3" )
g_pPictureInfo_BG1:SetPoint
{
    -- ADD_SIZE_X = 299,
	"LEFT_TOP		= D3DXVECTOR2(34,-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}