-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pUIDialog:SetName( "VillageLoadingState" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_DIRECTING"] )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )




-- 엘소드 배경
g_pStatic_Loading_Back = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Loading_Back )
g_pStatic_Loading_Back:SetName( "Static_Loading_BG0" )
g_pStatic_Loading_Back:SetShow( false )


g_pPicture_Loading_Back1 = g_pUIDialog:CreatePicture()
g_pStatic_Loading_Back:AddPicture( g_pPicture_Loading_Back1 )
g_pPicture_Loading_Back1:SetTex( "DLG_Loading_Elsword01.TGA", "LoadingBG1" )
g_pPicture_Loading_Back1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_Loading_Back2 = g_pUIDialog:CreatePicture()
g_pStatic_Loading_Back:AddPicture( g_pPicture_Loading_Back2 )
g_pPicture_Loading_Back2:SetTex( "DLG_Loading_Elsword02.TGA", "LoadingBG2" )
g_pPicture_Loading_Back2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(512,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Loading_Back3 = g_pUIDialog:CreatePicture()
g_pStatic_Loading_Back:AddPicture( g_pPicture_Loading_Back3 )
g_pPicture_Loading_Back3:SetTex( "DLG_Loading_Elsword03.TGA", "LoadingBG3" )
g_pPicture_Loading_Back3:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0,512)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_Loading_Back4 = g_pUIDialog:CreatePicture()
g_pStatic_Loading_Back:AddPicture( g_pPicture_Loading_Back4 )
g_pPicture_Loading_Back4:SetTex( "DLG_Loading_Elsword03.TGA", "LoadingBG4" )
g_pPicture_Loading_Back4:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(512,512)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-- 아이샤 배경
g_pStatic_Loading_Back = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Loading_Back )
g_pStatic_Loading_Back:SetName( "Static_Loading_BG1" )
g_pStatic_Loading_Back:SetShow( false )


g_pPicture_Loading_Back1 = g_pUIDialog:CreatePicture()
g_pStatic_Loading_Back:AddPicture( g_pPicture_Loading_Back1 )
g_pPicture_Loading_Back1:SetTex( "DLG_Loading_Aisha01.TGA", "LoadingBG1" )
g_pPicture_Loading_Back1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_Loading_Back2 = g_pUIDialog:CreatePicture()
g_pStatic_Loading_Back:AddPicture( g_pPicture_Loading_Back2 )
g_pPicture_Loading_Back2:SetTex( "DLG_Loading_Aisha02.TGA", "LoadingBG2" )
g_pPicture_Loading_Back2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(512,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Loading_Back3 = g_pUIDialog:CreatePicture()
g_pStatic_Loading_Back:AddPicture( g_pPicture_Loading_Back3 )
g_pPicture_Loading_Back3:SetTex( "DLG_Loading_Aisha03.TGA", "LoadingBG3" )
g_pPicture_Loading_Back3:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0,512)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_Loading_Back4 = g_pUIDialog:CreatePicture()
g_pStatic_Loading_Back:AddPicture( g_pPicture_Loading_Back4 )
g_pPicture_Loading_Back4:SetTex( "DLG_Loading_Aisha03.TGA", "LoadingBG4" )
g_pPicture_Loading_Back4:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(512,512)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






-- 레나 배경
g_pStatic_Loading_Back = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Loading_Back )
g_pStatic_Loading_Back:SetName( "Static_Loading_BG2" )
g_pStatic_Loading_Back:SetShow( false )


g_pPicture_Loading_Back1 = g_pUIDialog:CreatePicture()
g_pStatic_Loading_Back:AddPicture( g_pPicture_Loading_Back1 )
g_pPicture_Loading_Back1:SetTex( "DLG_Loading_Lena01.TGA", "LoadingBG1" )
g_pPicture_Loading_Back1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_Loading_Back2 = g_pUIDialog:CreatePicture()
g_pStatic_Loading_Back:AddPicture( g_pPicture_Loading_Back2 )
g_pPicture_Loading_Back2:SetTex( "DLG_Loading_Lena02.TGA", "LoadingBG2" )
g_pPicture_Loading_Back2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(512,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Loading_Back3 = g_pUIDialog:CreatePicture()
g_pStatic_Loading_Back:AddPicture( g_pPicture_Loading_Back3 )
g_pPicture_Loading_Back3:SetTex( "DLG_Loading_Lena03.TGA", "LoadingBG3" )
g_pPicture_Loading_Back3:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0,512)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_Loading_Back4 = g_pUIDialog:CreatePicture()
g_pStatic_Loading_Back:AddPicture( g_pPicture_Loading_Back4 )
g_pPicture_Loading_Back4:SetTex( "DLG_Loading_Lena03.TGA", "LoadingBG4" )
g_pPicture_Loading_Back4:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(512,512)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




-- 던전별 로딩화면 용
g_pStaticScreen_hide = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticScreen_hide )
g_pStaticScreen_hide:SetName( "Static_Loading_Dungeon_BG" )
g_pStaticScreen_hide:SetShow( false )


g_pPictureBlack = g_pUIDialog:CreatePicture()
g_pStaticScreen_hide:AddPicture( g_pPictureBlack )

g_pPictureBlack:SetTex( "DLG_UI_Common_Texture01.TGA", "black_bar" )

g_pPictureBlack:SetPoint
{
    ADD_SIZE_X = 1024,
	ADD_SIZE_Y = 768,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureBlack = g_pUIDialog:CreatePicture()
g_pStaticScreen_hide:AddPicture( g_pPictureBlack )

g_pPictureBlack:SetTex( "DLG_UI_Common_Texture01.TGA", "black_bar" )

g_pPictureBlack:SetPoint
{
    ADD_SIZE_X = 512,
	ADD_SIZE_Y = 768,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureBlack = g_pUIDialog:CreatePicture()
g_pStaticScreen_hide:AddPicture( g_pPictureBlack )

g_pPictureBlack:SetTex( "DLG_UI_Common_Texture01.TGA", "black_bar" )

g_pPictureBlack:SetPoint
{
    ADD_SIZE_X = 512,
	ADD_SIZE_Y = 768,
	"LEFT_TOP		= D3DXVECTOR2(512,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
