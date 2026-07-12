-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

-----엘소드 검의 길
----활력의 검사
g_pStatic_EL_BLUE = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_EL_BLUE )
g_pStatic_EL_BLUE:SetName( "g_pStatic_EL_BLUE" )
g_pPicture_BLUE_BG = g_pUIDialog:CreatePicture()
g_pStatic_EL_BLUE:AddPicture( g_pPicture_BLUE_BG )
g_pPicture_BLUE_BG:SetTex( "DLG_UI_Common_Texture16_NEW.TGA", "EL_BG" )
g_pPicture_BLUE_BG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(86-1,67-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_BLUE_BG:SetShow(false)
----게이지
g_pPicture_BLUE_GAGE = g_pUIDialog:CreatePicture()
g_pStatic_EL_BLUE:AddPicture( g_pPicture_BLUE_GAGE )
g_pPicture_BLUE_GAGE:SetTex( "DLG_UI_Common_Texture16_NEW.TGA", "EL_BLUE" )
g_pPicture_BLUE_GAGE:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(101-1,72-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_BLUE_GAGE:SetShow(false)
----게이지_EFFECT
g_pPicture_BLUE_GAGE_EFFECT = g_pUIDialog:CreatePicture()
g_pStatic_EL_BLUE:AddPicture( g_pPicture_BLUE_GAGE_EFFECT )
g_pPicture_BLUE_GAGE_EFFECT:SetTex( "DLG_UI_Common_Texture16_NEW.TGA", "EL_EFFECT" )
g_pPicture_BLUE_GAGE_EFFECT:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(101-1,72-1)",
	"COLOR			= D3DXCOLOR(0.8,0.9,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_BLUE_GAGE_EFFECT:SetShow(false)

----반구슬
g_pPicture_BLUE_NORMAL = g_pUIDialog:CreatePicture()
g_pStatic_EL_BLUE:AddPicture( g_pPicture_BLUE_NORMAL )
g_pPicture_BLUE_NORMAL:SetTex( "DLG_UI_Common_Texture16_NEW.TGA", "EL_BLUE_NORMAL" )
g_pPicture_BLUE_NORMAL:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(306-1,64-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_BLUE_NORMAL:SetShow(false)
----FULL구슬
g_pPicture_BLUE_FULL = g_pUIDialog:CreatePicture()
g_pStatic_EL_BLUE:AddPicture( g_pPicture_BLUE_FULL )
g_pPicture_BLUE_FULL:SetTex( "DLG_UI_Common_Texture16_NEW.TGA", "EL_BLUE_FULL" )
g_pPicture_BLUE_FULL:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(306-1,64-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_BLUE_FULL:SetShow(false)
--- 빈구슬
g_pPicture_BLUE_BG2 = g_pUIDialog:CreatePicture()
g_pStatic_EL_BLUE:AddPicture( g_pPicture_BLUE_BG2 )
g_pPicture_BLUE_BG2:SetTex( "DLG_UI_Common_Texture16_NEW.TGA", "EL_GRAY" )
g_pPicture_BLUE_BG2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(306-1,64-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_BLUE_BG2:SetShow(false)
----파괴의 검사
g_pStatic_EL_RED = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_EL_RED )
g_pStatic_EL_RED:SetName( "g_pStatic_EL_RED" )
g_pPicture_RED_BG = g_pUIDialog:CreatePicture()
g_pStatic_EL_RED:AddPicture( g_pPicture_RED_BG )
g_pPicture_RED_BG:SetTex( "DLG_UI_Common_Texture16_NEW.TGA", "EL_BG" )
g_pPicture_RED_BG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(86-1,67-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_RED_BG:SetShow(false)
----게이지
g_pPicture_RED_GAGE = g_pUIDialog:CreatePicture()
g_pStatic_EL_RED:AddPicture( g_pPicture_RED_GAGE )
g_pPicture_RED_GAGE:SetTex( "DLG_UI_Common_Texture16_NEW.TGA", "EL_RED" )
g_pPicture_RED_GAGE:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(101-1,72-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_RED_GAGE:SetShow(false)
----게이지_EFFECT
g_pPicture_RED_GAGE_EFFECT = g_pUIDialog:CreatePicture()
g_pStatic_EL_RED:AddPicture( g_pPicture_RED_GAGE_EFFECT )
g_pPicture_RED_GAGE_EFFECT:SetTex( "DLG_UI_Common_Texture16_NEW.TGA", "EL_EFFECT" )
g_pPicture_RED_GAGE_EFFECT:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(101-1,72-1)",
	"COLOR			= D3DXCOLOR(1.0,0.8,0.8,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_RED_GAGE_EFFECT:SetShow(false)
----반구슬
g_pPicture_RED_NORMAL = g_pUIDialog:CreatePicture()
g_pStatic_EL_RED:AddPicture( g_pPicture_RED_NORMAL )
g_pPicture_RED_NORMAL:SetTex( "DLG_UI_Common_Texture16_NEW.TGA", "EL_RED_NORMAL" )
g_pPicture_RED_NORMAL:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(306-1,64-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_RED_NORMAL:SetShow(false)
----FULL구슬
g_pPicture_RED_FULL = g_pUIDialog:CreatePicture()
g_pStatic_EL_RED:AddPicture( g_pPicture_RED_FULL )
g_pPicture_RED_FULL:SetTex( "DLG_UI_Common_Texture16_NEW.TGA", "EL_RED_FULL" )
g_pPicture_RED_FULL:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(306-1,64-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_RED_FULL:SetShow(false)
----마우스 오버용 투명 버튼
g_pButton_opacity1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_opacity1 )
g_pButton_opacity1:SetName( "opacity1" )
g_pButton_opacity1:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity1:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity1:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity1:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(310,69)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(325,83)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity1:SetOverPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(310,69)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(325,83)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity1:SetDownPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(310,69)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(325,83)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity1:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ELSWORD_WSS_MOUSE_OVER"] )
g_pButton_opacity1:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ELSWORD_WSS_MOUSE_OUT"] )