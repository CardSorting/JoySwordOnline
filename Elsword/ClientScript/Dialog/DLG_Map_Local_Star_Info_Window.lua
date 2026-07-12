-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


--[[오현빈 //필드에서 사용하지 않는 스크립트입니다.

DLG_Map_Local_Altera_Island_Icon_NEW.lua
DLG_Map_Local_Hamel_Icon_NEW.lua
DLG_Map_Local_Velder_East_Icon_NEW.lua
DLG_Map_Local_Velder_Icon_NEW.lua
DLG_Map_Local_Velder_North_Icon_NEW.lua
DLG_Map_Local_Velder_South_Icon_NEW.lua
DLG_UI_Local_Peita_Icon_NEW.lua
에서 각각 위치 잡아 주고 있습니다.
--]]

--필드용 난이도 바--

g_pStaticStar_Info = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticStar_Info )
g_pStaticStar_Info:SetName( "Temp_Star_Info" )

g_pPictureStarBg = g_pUIDialog:CreatePicture()
g_pStaticStar_Info:AddPicture( g_pPictureStarBg )

g_pPictureStarBg:SetTex( "DLG_Common_Button00_NEW.TGA", "DIFFICULT_BG" )

g_pPictureStarBg:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(327-327,345-345)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureStar0 = g_pUIDialog:CreatePicture()
g_pStaticStar_Info:AddPicture( g_pPictureStar0 )

g_pPictureStar0:SetTex( "DLG_Common_Button00_NEW.TGA", "DIFFICULT_1" )

g_pPictureStar0:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(333-327,349-345)",
	"COLOR			= D3DXCOLOR(0.0,1.0,0.0,1.0)",
	
	CHANGE_TIME		= 0.0,
}

g_pPictureStar1 = g_pUIDialog:CreatePicture()
g_pStaticStar_Info:AddPicture( g_pPictureStar1 )

g_pPictureStar1:SetTex( "DLG_Common_Button00_NEW.TGA", "DIFFICULT_2" )

g_pPictureStar1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(358-327,349-345)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureStar2 = g_pUIDialog:CreatePicture()
g_pStaticStar_Info:AddPicture( g_pPictureStar2 )

g_pPictureStar2:SetTex( "DLG_Common_Button00_NEW.TGA", "DIFFICULT_3" )

g_pPictureStar2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(385-327,349-345)",

	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
} 

