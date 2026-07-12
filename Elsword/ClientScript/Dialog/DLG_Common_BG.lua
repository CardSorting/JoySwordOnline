-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_CommonBG" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( false )

g_pStaticBackground = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticBackground )
g_pStaticBackground:SetName( "ChararcterBG" )

-- 엘소드 배경
g_pPictureBackground_Elsword_Color = g_pUIDialog:CreatePicture()
g_pStaticBackground:AddPicture( g_pPictureBackground_Elsword_Color )
g_pPictureBackground_Elsword_Color:SetShow( false )
g_pPictureBackground_Elsword_Color:SetTex( "DLG_Common_Texture01.TGA", "Background_Elsword_Color" )
g_pPictureBackground_Elsword_Color:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(0,0)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(1024,768)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}

-- 아이샤 배경
g_pPictureBackground_Aisha_Color = g_pUIDialog:CreatePicture()
g_pStaticBackground:AddPicture( g_pPictureBackground_Aisha_Color )
g_pPictureBackground_Aisha_Color:SetShow( false )
g_pPictureBackground_Aisha_Color:SetTex( "DLG_Common_Texture01.TGA", "Background_Aisha_Color" )
g_pPictureBackground_Aisha_Color:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(0,0)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(1024,768)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}

-- 레나 배경
g_pPictureBackground_Lena_Color = g_pUIDialog:CreatePicture()
g_pStaticBackground:AddPicture( g_pPictureBackground_Lena_Color )
g_pPictureBackground_Lena_Color:SetShow( false )
g_pPictureBackground_Lena_Color:SetTex( "DLG_Common_Texture01.TGA", "Background_Lena_Color" )
g_pPictureBackground_Lena_Color:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(0,0)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(1024,768)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}

-- 레이븐 배경
g_pPictureBackground_Raven_Color = g_pUIDialog:CreatePicture()
g_pStaticBackground:AddPicture( g_pPictureBackground_Raven_Color )
g_pPictureBackground_Raven_Color:SetShow( false )
g_pPictureBackground_Raven_Color:SetTex( "DLG_Common_Texture01.TGA", "Background_Raven_Color" )
g_pPictureBackground_Raven_Color:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(0,0)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(1024,768)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}

-- 이브 배경
g_pPictureBackground_Eve_Color = g_pUIDialog:CreatePicture()
g_pStaticBackground:AddPicture( g_pPictureBackground_Eve_Color )
g_pPictureBackground_Eve_Color:SetShow( false )
g_pPictureBackground_Eve_Color:SetTex( "DLG_UI_Character01.TGA", "Background_Eve_Color" )
g_pPictureBackground_Eve_Color:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(0,0)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(1024,768)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}

-- 청 배경
g_pPictureBackground_Chung_Color = g_pUIDialog:CreatePicture()
g_pStaticBackground:AddPicture( g_pPictureBackground_Chung_Color )
g_pPictureBackground_Chung_Color:SetShow( false )
g_pPictureBackground_Chung_Color:SetTex( "DLG_UI_Character04.tga", "Background_Chung_color" )
g_pPictureBackground_Chung_Color:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(0,0)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(1024,768)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}

-- 아라 배경
g_pPictureBackground_Ara_Color = g_pUIDialog:CreatePicture()
g_pStaticBackground:AddPicture( g_pPictureBackground_Ara_Color )
g_pPictureBackground_Ara_Color:SetShow( false )
g_pPictureBackground_Ara_Color:SetTex( "DLG_UI_Character01.TGA", "Background_Eve_Color" )
g_pPictureBackground_Ara_Color:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(0,0)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(1024,768)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}

--배경과 캐릭터 사이의 이펙트 들
g_pStaticBackground = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticBackground )
g_pStaticBackground:SetName( "BGEffect0" )
g_pPictureBGEffect = g_pUIDialog:CreatePicture()
g_pStaticBackground:AddPicture( g_pPictureBGEffect )
g_pPictureBGEffect:SetTex( "DLG_CommonBG_Effect.TGA", "BGEffect" )
g_pPictureBGEffect:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(-100,0)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pStaticBackground = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticBackground )
g_pStaticBackground:SetName( "BGEffect1" )
g_pPictureBGEffect = g_pUIDialog:CreatePicture()
g_pStaticBackground:AddPicture( g_pPictureBGEffect )
g_pPictureBGEffect:SetTex( "DLG_CommonBG_Effect.TGA", "BGEffect" )
g_pPictureBGEffect:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(-100,100)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pStaticBackground = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticBackground )
g_pStaticBackground:SetName( "BGEffect2" )
g_pPictureBGEffect = g_pUIDialog:CreatePicture()
g_pStaticBackground:AddPicture( g_pPictureBGEffect )
g_pPictureBGEffect:SetTex( "DLG_CommonBG_Effect.TGA", "BGEffect" )
g_pPictureBGEffect:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(-100,200)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pStaticBackground = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticBackground )
g_pStaticBackground:SetName( "BGEffect3" )
g_pPictureBGEffect = g_pUIDialog:CreatePicture()
g_pStaticBackground:AddPicture( g_pPictureBGEffect )
g_pPictureBGEffect:SetTex( "DLG_CommonBG_Effect.TGA", "BGEffect" )
g_pPictureBGEffect:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(-100,300)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pStaticBackground = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticBackground )
g_pStaticBackground:SetName( "BGEffect4" )
g_pPictureBGEffect = g_pUIDialog:CreatePicture()
g_pStaticBackground:AddPicture( g_pPictureBGEffect )
g_pPictureBGEffect:SetTex( "DLG_CommonBG_Effect.TGA", "BGEffect" )
g_pPictureBGEffect:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(-100,0)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pStaticBackground = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticBackground )
g_pStaticBackground:SetName( "BGEffect5" )
g_pPictureBGEffect = g_pUIDialog:CreatePicture()
g_pStaticBackground:AddPicture( g_pPictureBGEffect )
g_pPictureBGEffect:SetTex( "DLG_CommonBG_Effect.TGA", "BGEffect" )
g_pPictureBGEffect:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(-100,400)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pStaticBackground = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticBackground )
g_pStaticBackground:SetName( "BGEffect6" )
g_pPictureBGEffect = g_pUIDialog:CreatePicture()
g_pStaticBackground:AddPicture( g_pPictureBGEffect )
g_pPictureBGEffect:SetTex( "DLG_CommonBG_Effect.TGA", "BGEffect" )
g_pPictureBGEffect:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(-100,500)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pStaticBackground = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticBackground )
g_pStaticBackground:SetName( "BGEffect7" )
g_pPictureBGEffect = g_pUIDialog:CreatePicture()
g_pStaticBackground:AddPicture( g_pPictureBGEffect )
g_pPictureBGEffect:SetTex( "DLG_CommonBG_Effect.TGA", "BGEffect" )
g_pPictureBGEffect:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(-100,600)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pStaticBackground = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticBackground )
g_pStaticBackground:SetName( "BGEffect8" )
g_pPictureBGEffect = g_pUIDialog:CreatePicture()
g_pStaticBackground:AddPicture( g_pPictureBGEffect )
g_pPictureBGEffect:SetTex( "DLG_CommonBG_Effect.TGA", "BGEffect" )
g_pPictureBGEffect:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(-100,700)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pStaticBackground = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticBackground )
g_pStaticBackground:SetName( "Character" )
g_pPictureBackground_Elsword = g_pUIDialog:CreatePicture()
g_pStaticBackground:AddPicture( g_pPictureBackground_Elsword )
g_pPictureBackground_Elsword:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(0,0)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(1024,768)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}

g_pStaticBackground = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticBackground )
g_pStaticBackground:SetName( "CommonBlackUpDownBG" )
--------------------(투명 라인)

g_pPictureBackGround_Line1 = g_pUIDialog:CreatePicture()
g_pStaticBackground:AddPicture( g_pPictureBackGround_Line1 )
g_pPictureBackGround_Line1:SetTex( "DLG_Common_Texture01.TGA", "Black" )
g_pPictureBackGround_Line1:SetPoint
{
	ADD_SIZE_X	= 1024,
	ADD_SIZE_Y	= 42,
	"LEFT_TOP	= D3DXVECTOR2(0,0)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,0.3)",
	CHANGE_TIME	= 0.0,
}

g_pPictureBackGround_Line2 = g_pUIDialog:CreatePicture()
g_pStaticBackground:AddPicture( g_pPictureBackGround_Line2 )
g_pPictureBackGround_Line2:SetTex( "DLG_Common_Texture01.TGA", "Black" )
g_pPictureBackGround_Line2:SetPoint
{
	ADD_SIZE_X	= 1024,
	ADD_SIZE_Y	= 42,
	"LEFT_TOP	= D3DXVECTOR2(0,726)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,0.3)",
	CHANGE_TIME	= 0.0,
}