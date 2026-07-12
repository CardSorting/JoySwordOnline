-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


------------마을이름텍스트---------- 
g_pStaticHamel_Local_Text = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticHamel_Local_Text )
g_pStaticHamel_Local_Text:SetName( "Hamel_Local_Text" )

--- 레시암 외곽
g_pPictureOUTSKIRTS_RESIAM_Text = g_pUIDialog:CreatePicture()
g_pStaticHamel_Local_Text:AddPicture( g_pPictureOUTSKIRTS_RESIAM_Text )
g_pPictureOUTSKIRTS_RESIAM_Text:SetTex( "DLG_UI_TITLE03.tga", "OUTSKIRTS_RESIAM" )
g_pPictureOUTSKIRTS_RESIAM_Text:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(391,534)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--- 수중도시 레시암
g_pPictureBREAK_RESIAM_Text = g_pUIDialog:CreatePicture()
g_pStaticHamel_Local_Text:AddPicture( g_pPictureBREAK_RESIAM_Text )
g_pPictureBREAK_RESIAM_Text:SetTex( "DLG_UI_TITLE03.tga", "BREAK_RESIAM" )
g_pPictureBREAK_RESIAM_Text:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(585,556)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--- 고대 수로
g_pPictureANCIENT_WATERWAY_Text = g_pUIDialog:CreatePicture()
g_pStaticHamel_Local_Text:AddPicture( g_pPictureANCIENT_WATERWAY_Text )
g_pPictureANCIENT_WATERWAY_Text:SetTex( "DLG_UI_TITLE03.tga", "ANCIENT_WATERWAY" )
g_pPictureANCIENT_WATERWAY_Text:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(811,519)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--- 고대 수로 중심
g_pPictureANCIENT_WATERWAY_CORE_Text = g_pUIDialog:CreatePicture()
g_pStaticHamel_Local_Text:AddPicture( g_pPictureANCIENT_WATERWAY_CORE_Text )
g_pPictureANCIENT_WATERWAY_CORE_Text:SetTex( "DLG_UI_TITLE03.tga", "ANCIENT_WATERWAY_CORE" )
g_pPictureANCIENT_WATERWAY_CORE_Text:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(811,353)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-- 마그만타의 동굴
g_pPicture_CAVE_OF_MAGMANTA_text = g_pUIDialog:CreatePicture()
g_pStaticHamel_Local_Text:AddPicture( g_pPicture_CAVE_OF_MAGMANTA_text )
g_pPicture_CAVE_OF_MAGMANTA_text:SetTex( "DLG_UI_Title03.tga", "CAVE_OF_MAGMANTA" )
g_pPicture_CAVE_OF_MAGMANTA_text:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(640,250)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--얼어붙은 물의 신전
g_pPicture_FROZEN_WATER_TEMPLE_text = g_pUIDialog:CreatePicture()
g_pStaticHamel_Local_Text:AddPicture( g_pPicture_FROZEN_WATER_TEMPLE_text )
g_pPicture_FROZEN_WATER_TEMPLE_text:SetTex( "DLG_UI_Title03.tga", "FROZEN_WATER_TEMPLE" )
g_pPicture_FROZEN_WATER_TEMPLE_text:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(422,206)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--물의 전당
g_pPicture_FROZEN_WATER_HALL_text = g_pUIDialog:CreatePicture()
g_pStaticHamel_Local_Text:AddPicture( g_pPicture_FROZEN_WATER_HALL_text )
g_pPicture_FROZEN_WATER_HALL_text:SetTex( "DLG_UI_Title03.tga", "FROZEN_WATER_HALL" )
g_pPicture_FROZEN_WATER_HALL_text:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(268,194)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--- 헤니르의시공
g_pStaticHenir = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticHenir )
g_pStaticHenir:SetName( "헤니르의시공" )
g_pPictureHenir_space = g_pUIDialog:CreatePicture()
g_pStaticHenir:AddPicture( g_pPictureHenir_space )
g_pPictureHenir_space:SetTex( "DLG_UI_Title02.tga", "Local_Henir" )
g_pPictureHenir_space:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(742,247)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

	
--[[
	---할로윈 던전---
g_pStaticHalloween = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticHalloween )
g_pStaticHalloween:SetName( "Halloween" )

g_pPictureHalloween = g_pUIDialog:CreatePicture()
g_pStaticHalloween:AddPicture( g_pPictureHalloween )

g_pPictureHalloween:SetTex( "DLG_Common_New_Texture44.tga", "Holloween" )

g_pPictureHalloween:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(117,641)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]



-- 디펜스 던전
g_pStatic_Secretgarden = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Secretgarden )
g_pStatic_Secretgarden:SetName( "DefenceName" )

g_pPicture_Secretgarden_text = g_pUIDialog:CreatePicture()
g_pStatic_Secretgarden:AddPicture( g_pPicture_Secretgarden_text )

g_pPicture_Secretgarden_text:SetTex( "DLG_UI_Title03.tga", "defence_title" )

g_pPicture_Secretgarden_text:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(844,381)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


	

----식목일 이벤트
--[[
g_pStaticTree_Day = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticTree_Day )
g_pStaticTree_Day:SetName( "식목일 이벤트" )
g_pPictureTree_Day_space = g_pUIDialog:CreatePicture()
g_pStaticTree_Day:AddPicture( g_pPictureTree_Day_space )
g_pPictureTree_Day_space:SetTex( "DLG_UI_Title02.tga", "tears" )
g_pPictureTree_Day_space:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(312-40+535,124+25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]
