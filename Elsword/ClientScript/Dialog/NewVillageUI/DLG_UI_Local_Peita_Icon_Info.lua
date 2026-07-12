-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


------------마을이름텍스트---------- 
g_pStaticPeita_Local_Text = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPeita_Local_Text )
g_pStaticPeita_Local_Text:SetName( "Peita_Local_Text" )



g_pPicturebonghun_temple_text = g_pUIDialog:CreatePicture()
g_pStaticPeita_Local_Text:AddPicture( g_pPicturebonghun_temple_text )

g_pPicturebonghun_temple_text:SetTex( "DLG_UI_Title02_B.tga", "bonghun_gate" )

g_pPicturebonghun_temple_text:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(158,561)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPicturescrew_corridor_text = g_pUIDialog:CreatePicture()
g_pStaticPeita_Local_Text:AddPicture( g_pPicturescrew_corridor_text )

g_pPicturescrew_corridor_text:SetTex( "DLG_UI_Title02_B.tga", "screw_pass" )

g_pPicturescrew_corridor_text:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(348,619)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-----------------------------------------------------------------------------------------------
--{{ kimhc -- 2009-05-14
--지하 예배당

g_pPictureChapel_text = g_pUIDialog:CreatePicture()
g_pStaticPeita_Local_Text:AddPicture( g_pPictureChapel_text )

g_pPictureChapel_text:SetTex( "DLG_UI_Title02_B.tga", "CHAPEL" )

g_pPictureChapel_text:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(624,641 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----------------------------------------------------------------------------------------------
-- 지하 정원

g_pPictureUnderGarden_text = g_pUIDialog:CreatePicture()
g_pStaticPeita_Local_Text:AddPicture( g_pPictureUnderGarden_text )

g_pPictureUnderGarden_text:SetTex( "DLG_UI_Title02_B.tga", "GARDEN" )

g_pPictureUnderGarden_text:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(502,553)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-----------------------------------------------------------------------------------------------

-- 첨탑의 심장부

g_pPictureTowerHeart_text = g_pUIDialog:CreatePicture()
g_pStaticPeita_Local_Text:AddPicture( g_pPictureTowerHeart_text )

g_pPictureTowerHeart_text:SetTex( "DLG_UI_Title02_B.tga", "Tower_Heart" )

g_pPictureTowerHeart_text:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(444, 373)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----------------------------------------------------------------------------------------------


-- 봉헌의 제단

g_pPictureOfferingsAlter_text = g_pUIDialog:CreatePicture()
g_pStaticPeita_Local_Text:AddPicture( g_pPictureOfferingsAlter_text )

g_pPictureOfferingsAlter_text:SetTex( "DLG_UI_Title02_B.tga", "Offerings_Alter" )

g_pPictureOfferingsAlter_text:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(461,195)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----------------------------------------------------------------------------------------------


----헤니르의시공
g_pStaticHenir = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticHenir )
g_pStaticHenir:SetNameStrID( STR_ID_3722 )
g_pPictureHenir_space = g_pUIDialog:CreatePicture()
g_pStaticHenir:AddPicture( g_pPictureHenir_space )

g_pPictureHenir_space:SetTex( "DLG_UI_Title02_B.tga", "Local_Henir" )

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

	"LEFT_TOP		= D3DXVECTOR2(117-60,641)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]
	

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
	"LEFT_TOP		= D3DXVECTOR2(312-10-30,124+168)",
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

	"LEFT_TOP		= D3DXVECTOR2(742+113,247+163)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}