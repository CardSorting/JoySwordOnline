-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "PVP_Result_Card_Back" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( false )

g_pUIDialog:AddDummyPos( D3DXVECTOR3( 127, 128, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 127+278, 128, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 127+278+278, 128, 0 ) )

g_pStaticPVP_Result_Info_Bg_Character = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Result_Info_Bg_Character )
g_pStaticPVP_Result_Info_Bg_Character:SetName( "PVP_Result_Info_Bg_Defualt" )

---기본바탕----------- 
g_pPicturePVP_Result_User_BoxBg = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Info_Bg_Character:AddPicture( g_pPicturePVP_Result_User_BoxBg )
g_pPicturePVP_Result_User_BoxBg:SetTex( "DLG_Common_New_Texture21.tga", "PVP_Result_Image_ElswordMark" )
g_pPicturePVP_Result_User_BoxBg:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(0,0)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pStaticPVP_Result_Info_Bg_Character = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Result_Info_Bg_Character )
g_pStaticPVP_Result_Info_Bg_Character:SetName( "PVP_Result_Info_Bg_Character" )
g_pStaticPVP_Result_Info_Bg_Character:SetShow( false )

-- 엘소드 PVP 슬롯 이미지
g_pPicturePVP_Result_User_BoxElsword = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Info_Bg_Character:AddPicture( g_pPicturePVP_Result_User_BoxElsword )
g_pPicturePVP_Result_User_BoxElsword:SetTex( "DLG_Common_New_Texture20.tga", "PVP_Result_Image_Elsword" )
g_pPicturePVP_Result_User_BoxElsword:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(0,0)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

-- 아이샤 PVP 슬롯 이미지
g_pPicturePVP_Result_User_BoxAisha = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Info_Bg_Character:AddPicture( g_pPicturePVP_Result_User_BoxAisha )
g_pPicturePVP_Result_User_BoxAisha:SetTex( "DLG_Common_New_Texture20.tga", "PVP_Result_Image_Aisha" )
g_pPicturePVP_Result_User_BoxAisha:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(0,0)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

-- 레나 PVP 슬롯 이미지
g_pPicturePVP_Result_User_BoxRena = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Info_Bg_Character:AddPicture( g_pPicturePVP_Result_User_BoxRena )
g_pPicturePVP_Result_User_BoxRena:SetTex( "DLG_Common_New_Texture21.tga", "PVP_Result_Image_Rena" )
g_pPicturePVP_Result_User_BoxRena:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(0,0)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

-- 레이븐 PVP 슬롯 이미지
g_pPicturePVP_Result_User_BoxRaven = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Info_Bg_Character:AddPicture( g_pPicturePVP_Result_User_BoxRaven )
g_pPicturePVP_Result_User_BoxRaven:SetTex( "DLG_Common_New_Texture58.tga", "PVP_RESULT_IMAGE_RAVEN" )	
g_pPicturePVP_Result_User_BoxRaven:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(0,0)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

-- 이브 PVP 슬롯 이미지
g_pPicturePVP_Result_User_BoxEve = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Info_Bg_Character:AddPicture( g_pPicturePVP_Result_User_BoxEve )
g_pPicturePVP_Result_User_BoxEve:SetTex( "DLG_UI_Character01.tga", "PVP_RESULT_IMAGE_EVE" )	
g_pPicturePVP_Result_User_BoxEve:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(4,4)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

-- 청 PVP 슬롯 이미지
g_pPicturePVP_Result_User_BoxChung = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Info_Bg_Character:AddPicture( g_pPicturePVP_Result_User_BoxChung )
g_pPicturePVP_Result_User_BoxChung:SetTex( "DLG_UI_Character04.tga", "Background_Chung_color" )	
g_pPicturePVP_Result_User_BoxChung:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(4,4)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

-- 아라 PVP 슬롯 이미지
g_pPicturePVP_Result_User_BoxAra = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Info_Bg_Character:AddPicture( g_pPicturePVP_Result_User_BoxAra )
g_pPicturePVP_Result_User_BoxAra:SetTex( "DLG_UI_Common_Texture68_NEW.tga", "PVP_RESULT_IMAGE_ARA" )	
g_pPicturePVP_Result_User_BoxAra:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(4,4)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
-- 엘리시스 PVP 슬롯 이미지
g_pPicturePVP_Result_User_BoxElesis = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Info_Bg_Character:AddPicture( g_pPicturePVP_Result_User_BoxElesis )
g_pPicturePVP_Result_User_BoxElesis:SetTex( "DLG_UI_Common_Texture75_NEW.tga", "ELESIS_COLOR" )
g_pPicturePVP_Result_User_BoxElesis:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(4,4)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}


----------순위숫자------------ 
g_pStaticPVP_Result_Info_Bg_Rank = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Result_Info_Bg_Rank )
g_pStaticPVP_Result_Info_Bg_Rank:SetName( "PVP_Result_Info_Bg_Rank" )
g_pStaticPVP_Result_Info_Bg_Rank:SetShow( false )

g_pPicturePVP_Result_User_Box1st = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Info_Bg_Rank:AddPicture( g_pPicturePVP_Result_User_Box1st )
g_pPicturePVP_Result_User_Box1st:SetTex( "DLG_Common_Texture24.tga", "PVP_Result_1st" )
g_pPicturePVP_Result_User_Box1st:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(-5,-2)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPicturePVP_Result_User_Box2nd = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Info_Bg_Rank:AddPicture( g_pPicturePVP_Result_User_Box2nd )
g_pPicturePVP_Result_User_Box2nd:SetTex( "DLG_Common_Texture24.tga", "PVP_Result_2nd" )
g_pPicturePVP_Result_User_Box2nd:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(-5,2)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

g_pPicturePVP_Result_User_Box3rd = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_Info_Bg_Rank:AddPicture( g_pPicturePVP_Result_User_Box3rd )
g_pPicturePVP_Result_User_Box3rd:SetTex( "DLG_Common_Texture24.tga", "PVP_Result_3rd" )
g_pPicturePVP_Result_User_Box3rd:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2(-6,9)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}