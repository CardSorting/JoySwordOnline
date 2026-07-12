-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Unit_Select_Back" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( false )




g_pStaticUnit_Background = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticUnit_Background )
g_pStaticUnit_Background:SetName( "Unit_Select_background" )




----(배경)


g_pPictureUnit_Background01 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Background:AddPicture( g_pPictureUnit_Background01 )

g_pPictureUnit_Background01:SetTex( "DLG_New_Unit_Background01.TGA", "New_Unit_Background01" )

g_pPictureUnit_Background01:SetPoint
{

ADD_SIZE_Y = 256,

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1024,768)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUnit_Background02 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Background:AddPicture( g_pPictureUnit_Background02 )

g_pPictureUnit_Background02:SetTex( "DLG_New_Unit_Background02.TGA", "New_Unit_Background02" )

g_pPictureUnit_Background02:SetPoint
{

ADD_SIZE_Y = 256,

	"LEFT_TOP		= D3DXVECTOR2(512,0)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1024,768)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




----(엘소드 배경)
g_pStaticUnit_Background_Elsword = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticUnit_Background_Elsword )
g_pStaticUnit_Background_Elsword:SetName( "CharBG" )

g_pPictureBackground_Elsword = g_pUIDialog:CreatePicture()
g_pStaticUnit_Background_Elsword:AddPicture( g_pPictureBackground_Elsword )
g_pPictureBackground_Elsword:SetShow( false )

g_pPictureBackground_Elsword:SetTex( "DLG_Background_Elsword.TGA", "Background_Elsword" )

g_pPictureBackground_Elsword:SetPoint
{

	USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1024,768)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




----(아이샤 배경)


g_pPictureBackground_Aisha = g_pUIDialog:CreatePicture()
g_pStaticUnit_Background_Elsword:AddPicture( g_pPictureBackground_Aisha )
g_pPictureBackground_Aisha:SetShow( false )
g_pPictureBackground_Aisha:SetTex( "DLG_Background_Aisha.TGA", "Background_Aisha" )

g_pPictureBackground_Aisha:SetPoint
{

	USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1024,768)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----(레나 배경)



g_pPictureBackground_Rena = g_pUIDialog:CreatePicture()
g_pStaticUnit_Background_Elsword:AddPicture( g_pPictureBackground_Rena )
g_pPictureBackground_Rena:SetShow( false )
g_pPictureBackground_Rena:SetTex( "DLG_Background_Rena.TGA", "Background_Rena" )

g_pPictureBackground_Rena:SetPoint
{

	USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1024,768)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureBackground_Raven = g_pUIDialog:CreatePicture()
g_pStaticUnit_Background_Elsword:AddPicture( g_pPictureBackground_Raven )
g_pPictureBackground_Raven:SetShow( false )
g_pPictureBackground_Raven:SetTex2( "DLG_Background_Raven.tga" )

g_pPictureBackground_Raven:SetPoint
{

	USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(1024,768)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





--------------------(투명 라인)
g_pStaticUnit_Background = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticUnit_Background )
g_pStaticUnit_Background:SetName( "Background" )


g_pPictureBackGround_Line1 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Background:AddPicture( g_pPictureBackGround_Line1 )

g_pPictureBackGround_Line1:SetTex( "DLG_Common_Texture01.TGA", "Black" )

g_pPictureBackGround_Line1:SetPoint
{
    ADD_SIZE_X = 1024,
    ADD_SIZE_Y = 42,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.3)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBackGround_Line2 = g_pUIDialog:CreatePicture()
g_pStaticUnit_Background:AddPicture( g_pPictureBackGround_Line2 )

g_pPictureBackGround_Line2:SetTex( "DLG_Common_Texture01.TGA", "Black" )

g_pPictureBackGround_Line2:SetPoint
{
    ADD_SIZE_X = 1024,
    ADD_SIZE_Y = 42,
	"LEFT_TOP		= D3DXVECTOR2(0,726)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.3)",
	CHANGE_TIME		= 0.0,
}


--[[
g_pPictureEvent = g_pUIDialog:CreatePicture()
g_pStaticUnit_Background:AddPicture( g_pPictureEvent )

g_pPictureEvent:SetTex( "DLG_Event.TGA", "Event" )

g_pPictureEvent:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(2,210)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]


























--IncludeLua( "DLG_Unit_Select_Unit.lua" )




g_pUIDialog:AddDummyPos( D3DXVECTOR3( 348, 66, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 587, 66, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 825, 66, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 348, 398, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 587, 398, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 825, 398, 0 ) )







