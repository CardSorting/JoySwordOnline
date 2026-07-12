-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




g_pUIDialog:SetName( "DLG_UI_Field_Title" )
g_pUIDialog:SetPos( 0, 0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_DIRECTING"] )




g_pStaticSHIP = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSHIP )
g_pStaticSHIP:SetName( "Ship_Title" )



----------------------        마을          --------------------------
-------------------------------------------------------------------


g_pPictureVELDER_SHIP = g_pUIDialog:CreatePicture()
g_pStaticSHIP:AddPicture( g_pPictureVELDER_SHIP )

g_pPictureVELDER_SHIP:SetTex( "DLG_UI_Common_Texture05.tga", "VELDER_SHIP" )
g_pPictureVELDER_SHIP:SetIndex(1)
g_pPictureVELDER_SHIP:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(336,248)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureHAMEL_SHIP = g_pUIDialog:CreatePicture()
g_pStaticSHIP:AddPicture( g_pPictureHAMEL_SHIP )

g_pPictureHAMEL_SHIP:SetTex( "DLG_UI_Common_Texture05.tga", "HAMEL_SHIP" )
g_pPictureHAMEL_SHIP:SetIndex(2)
g_pPictureHAMEL_SHIP:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(336,248)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}







------------------------  bar  ---------------------


g_pPicturebar = g_pUIDialog:CreatePicture()
g_pStaticSHIP:AddPicture( g_pPicturebar )

g_pPicturebar:SetTex( "DLG_UI_Common_Texture12.tga", "bar" )

g_pPicturebar:SetPoint
{
    ADD_SIZE_X = 159,
	"LEFT_TOP		= D3DXVECTOR2(168,293)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-- 던전게이트전용
----------------던전ps

g_pPictureps = g_pUIDialog:CreatePicture()
g_pStaticSHIP:AddPicture( g_pPictureps )

g_pPictureps:SetTex( "DLG_UI_Common_Texture05.tga", "SHIP_EXPLAIN" )
g_pPictureps:SetIndex(100)
g_pPictureps:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(367,301)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


