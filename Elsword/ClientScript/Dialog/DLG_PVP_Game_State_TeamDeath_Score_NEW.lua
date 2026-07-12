-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "TeamDeathScore" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )

g_pStaticPVPGameState = g_pUIDialog:CreateStatic()
g_pStaticPVPGameState:SetName( "StaticPVPGameState" )
g_pUIDialog:AddControl( g_pStaticPVPGameState )
--picture 0~7

--( 백그라운드 )) Picture(0) 
g_pPictureState_Box1 = g_pUIDialog:CreatePicture()
g_pStaticPVPGameState:AddPicture( g_pPictureState_Box1 )
g_pPictureState_Box1:SetTex( "DLG_UI_Common_Texture65_NEW.tga", "PVP_SCORE_BG" )
g_pPictureState_Box1:SetPoint
{	
	"LEFT_TOP		= D3DXVECTOR2(383,75)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


--( 우리팀 Red, Blue) Picture(1) 
g_pPictureState_PVP_RED = g_pUIDialog:CreatePicture()
g_pStaticPVPGameState:AddPicture( g_pPictureState_PVP_RED )
g_pPictureState_PVP_RED:SetTex( "DLG_UI_Common_Texture65_NEW.TGA", "PVP_RED" )--
--g_pPictureState_PVP_RED:SetTex( "DLG_UI_Common_Texture65_NEW.TGA", "PVP_BLUE_LEFT" )
g_pPictureState_PVP_RED:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(347-14,55)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

--( 다른팀 reD, bluE  ) Picture(2)
g_pPictureState_PVP_BLUE = g_pUIDialog:CreatePicture()
g_pStaticPVPGameState:AddPicture( g_pPictureState_PVP_BLUE )
g_pPictureState_PVP_BLUE:SetTex( "DLG_UI_Common_Texture65_NEW.TGA", "PVP_BLUE" )
--g_pPictureState_PVP_RED_RIGHT:SetTex( "DLG_UI_Common_Texture65_NEW.TGA", "PVP_RED_RIGHT" )
g_pPictureState_PVP_BLUE:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(628-12,55)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}
--(VS) ( Picture(3) )
g_pPictureState_VS = g_pUIDialog:CreatePicture()
g_pStaticPVPGameState:AddPicture( g_pPictureState_VS )
g_pPictureState_VS:SetTex( "DLG_UI_Common_Texture65_NEW.TGA", "VS" )
g_pPictureState_VS:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(506,54)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}
-----스코어 표시

---RED십의 자리수 위치 ( Picture(4) )
g_pPictureState_RED_1 = g_pUIDialog:CreatePicture()
g_pStaticPVPGameState:AddPicture( g_pPictureState_RED_1 )
g_pPictureState_RED_1:SetTex( "DLG_UI_Common_Texture65_NEW.TGA","RED_NUM_1" )
g_pPictureState_RED_1:SetShow(false)
g_pPictureState_RED_1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(403,49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}
-----RED_일의자리수 위치 ( Picture(5) )
g_pPictureState_RED_2 = g_pUIDialog:CreatePicture()
g_pStaticPVPGameState:AddPicture( g_pPictureState_RED_2 )
g_pPictureState_RED_2:SetTex( "DLG_UI_Common_Texture65_NEW.TGA","RED_NUM_0" )
g_pPictureState_RED_2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(437,48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


---BLUE십의 자리수 위치 ( Picture(6) )
g_pPictureState_BLUE_1 = g_pUIDialog:CreatePicture()
g_pStaticPVPGameState:AddPicture( g_pPictureState_BLUE_1 )
g_pPictureState_BLUE_1:SetTex( "DLG_UI_Common_Texture65_NEW.TGA","BLUE_NUM_1" )
g_pPictureState_BLUE_1:SetShow(false)
g_pPictureState_BLUE_1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(548-12-12,48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}
-----BLUE_일의자리수 위치 ( Picture(7) )
g_pPictureState_BLUE_2 = g_pUIDialog:CreatePicture()
g_pStaticPVPGameState:AddPicture( g_pPictureState_BLUE_2 )
g_pPictureState_BLUE_2:SetTex( "DLG_UI_Common_Texture65_NEW.TGA","BLUE_NUM_0" )
g_pPictureState_BLUE_2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(582-12-12,49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}