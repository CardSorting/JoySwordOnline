-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Unit_Create_Back" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( false )

g_pStaticUnit_Background = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticUnit_Background )
g_pStaticUnit_Background:SetName( "Unit_Select_background" )

----(배경)
g_pPictureUnit_Background = g_pUIDialog:CreatePicture()
g_pStaticUnit_Background:AddPicture( g_pPictureUnit_Background )
g_pPictureUnit_Background:SetTex( "DLG_Unit_Background.TGA", "Unit_Background" )
g_pPictureUnit_Background:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(0,0)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(1024,768)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}

-----------캐릭터 생성 슬롯----------
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
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,0.5)",
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
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME	= 0.0,
}

-------캐릭터 생성창 추가 스트링
g_pStatic_Create = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Create )
g_pStatic_Create:SetName( "Create_String" )

g_pStatic_Create:AddString
{
	MSG 			= STR_ID_11263,
	FONT_INDEX		= XUF_DODUM_20_BOLD,
	
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(330,728)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.3,0.3,0.3,1.0)",
}




--IncludeLua( "DLG_Unit_Create_Unit.lua" )
--IncludeLua( "DLG_Unit_Create_Select_Unit.lua" )
IncludeLua( "DLG_Unit_Create_Select_Unit_Season3.lua" )		-- 아라 추가로 인한 UI 변경