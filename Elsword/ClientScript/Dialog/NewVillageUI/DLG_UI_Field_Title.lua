-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




g_pUIDialog:SetName( "DLG_UI_Field_Title" )
g_pUIDialog:SetPos( 0, 0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_DIRECTING"] )









g_pStatictown = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatictown )
g_pStatictown:SetName( "Field_Title" )



----------------------        마을          --------------------------
-------------------------------------------------------------------

-------------------------------------------------------------
--루벤-------------------------------------------------------
g_pPictureruben = g_pUIDialog:CreatePicture()
g_pStatictown:AddPicture( g_pPictureruben )

g_pPictureruben:SetTex( "DLG_UI_Common_Texture_Fieldname_Village.tga", "VILLAGE_RUBEN" )
g_pPictureruben:SetIndex(1)
g_pPictureruben:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(336,248)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureruben:SetShow( false )

-------------------------------------------------------------
--엘더-------------------------------------------------------
g_pPictureeldu = g_pUIDialog:CreatePicture()
g_pStatictown:AddPicture( g_pPictureeldu )
g_pPictureeldu:SetTex( "DLG_UI_Common_Texture_Fieldname_Village.tga", "VILLAGE_ELDER" )
g_pPictureeldu:SetIndex(2)
g_pPictureeldu:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(336,248)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureeldu:SetShow( false )

-------------------------------------------------------------
--베스마-------------------------------------------------------
g_pPicturebesma = g_pUIDialog:CreatePicture()
g_pStatictown:AddPicture( g_pPicturebesma )

g_pPicturebesma:SetTex( "DLG_UI_Common_Texture_Fieldname_Village.tga", "VILLAGE_BESMA" )
g_pPicturebesma:SetIndex(3)
g_pPicturebesma:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(336,248)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicturebesma:SetShow( false )


-------------------------------------------------------------
--알테라-------------------------------------------------------
g_pPicturealtera = g_pUIDialog:CreatePicture()
g_pStatictown:AddPicture( g_pPicturealtera )

g_pPicturealtera:SetTex( "DLG_UI_Common_Texture_Fieldname_Village.tga", "VILLAGE_ALTERA" )
g_pPicturealtera:SetIndex(4)
g_pPicturealtera:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(336,248)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicturealtera:SetShow( false )

-------------------------------------------------------------
--페이타-------------------------------------------------------

g_pPicture = g_pUIDialog:CreatePicture()
g_pStatictown:AddPicture( g_pPicture )

g_pPicture:SetTex( "DLG_UI_Common_Texture_Fieldname_Village_2.tga", "VILLAGE_PEITA" )
g_pPicture:SetIndex(5)
g_pPicture:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(336,249)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture:SetShow( false )

-------------------------------------------------------------
--벨더-------------------------------------------------------
g_pPictureVelder = g_pUIDialog:CreatePicture()
g_pStatictown:AddPicture( g_pPictureVelder )

g_pPictureVelder:SetTex( "DLG_UI_Common_Texture_Fieldname_Village_2.tga", "VILLAGE_VELDER" )
g_pPictureVelder:SetIndex(11)
g_pPictureVelder:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(336,248)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureVelder:SetShow( false )

-------------------------------------------------------------
--하멜-------------------------------------------------------
g_pPictureHamel = g_pUIDialog:CreatePicture()
g_pStatictown:AddPicture( g_pPictureHamel )

g_pPictureHamel:SetTex( "DLG_UI_Common_Texture_Fieldname_Village_2.tga", "VILLAGE_HARMEL" )
g_pPictureHamel:SetIndex(13)
g_pPictureHamel:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(336,248)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureHamel:SetShow( false )

-------------------------------------------------------------
--샌더-------------------------------------------------------
g_pPictureSander = g_pUIDialog:CreatePicture()
g_pStatictown:AddPicture( g_pPictureSander )

g_pPictureSander:SetTex( "DLG_UI_Common_Texture_Fieldname_Village_2.tga", "VILLAGE_SANDRIA" )
g_pPictureSander:SetIndex(14)
g_pPictureSander:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(336,248)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSander:SetShow( false )
--
----------------------------------------------------------
--휴식처---------------------------------------------------


-------------------------------------------------------------
--엘더쉼터-------------------------------------------------------

g_pPicture = g_pUIDialog:CreatePicture()
g_pStatictown:AddPicture( g_pPicture )

g_pPicture:SetTex( "DLG_UI_Common_Texture_Fieldname_Rest.tga", "FIELD_REST_ELDER" )
g_pPicture:SetIndex(20)
g_pPicture:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(336,249)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture:SetShow( false )

-------------------------------------------------------------
--베스마쉼터-------------------------------------------------------

g_pPicture = g_pUIDialog:CreatePicture()
g_pStatictown:AddPicture( g_pPicture )

g_pPicture:SetTex( "DLG_UI_Common_Texture_Fieldname_Rest.tga", "FIELD_REST_BESMA" )
g_pPicture:SetIndex(21)
g_pPicture:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(336,249)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture:SetShow( false )

-------------------------------------------------------------
--알테라쉼터-------------------------------------------------------

g_pPicture = g_pUIDialog:CreatePicture()
g_pStatictown:AddPicture( g_pPicture )

g_pPicture:SetTex( "DLG_UI_Common_Texture_Fieldname_Rest.tga", "FIELD_REST_ALTERA" )
g_pPicture:SetIndex(22)
g_pPicture:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(336,249)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture:SetShow( false )

-------------------------------------------------------------
--페이타쉼터-------------------------------------------------------

-- g_pPicture = g_pUIDialog:CreatePicture()
-- g_pStatictown:AddPicture( g_pPicture )

-- g_pPicture:SetTex( "DLG_UI_Common_Texture_Fieldname_Rest.tga", "FIELD_REST_VELDER" )
-- g_pPicture:SetIndex(23)
-- g_pPicture:SetPoint
-- {

	-- "LEFT_TOP		= D3DXVECTOR2(336,249)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }
-- g_pPicture:SetShow( false )

-------------------------------------------------------------
--벨더 쉼터-------------------------------------------------------

g_pPicture = g_pUIDialog:CreatePicture()
g_pStatictown:AddPicture( g_pPicture )

g_pPicture:SetTex( "DLG_UI_Common_Texture_Fieldname_Rest.tga", "FIELD_REST_VELDER" )
g_pPicture:SetIndex(24)
g_pPicture:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(336,249)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture:SetShow( false )

-------------------------------------------------------------
--하멜 쉼터-------------------------------------------------------

g_pPicture = g_pUIDialog:CreatePicture()
g_pStatictown:AddPicture( g_pPicture )

g_pPicture:SetTex( "DLG_UI_Common_Texture_Fieldname_Rest.tga", "FIELD_REST_HARMEL" )
g_pPicture:SetIndex(25)
g_pPicture:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(336,249)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture:SetShow( false )

-------------------------------------------------------------
--샌더 쉼터-------------------------------------------------------

g_pPicture = g_pUIDialog:CreatePicture()
g_pStatictown:AddPicture( g_pPicture )

g_pPicture:SetTex( "DLG_UI_Common_Texture_Fieldname_Rest_1.tga", "FIELD_REST_SANDER" )
g_pPicture:SetIndex(26)
g_pPicture:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(336,249)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture:SetShow( false )

