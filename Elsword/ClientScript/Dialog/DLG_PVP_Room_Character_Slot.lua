-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_PVP_Room_Character_Slot" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( false )



g_pStatic_Character_Slot = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Character_Slot )
g_pStatic_Character_Slot:SetName( "PVP_Room_Character_Slot" )




g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic_Character_Slot:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_Common_New_Texture20.tga", "PVP_Result_Image_Elsword" )
g_pPicture:SetPoint
{
	  ADD_SIZE_X=-37,
	  ADD_SIZE_Y=-47,

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic_Character_Slot:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_Common_New_Texture20.tga", "PVP_Result_Image_Aisha" )
g_pPicture:SetPoint
{
	  ADD_SIZE_X=-37,
	  ADD_SIZE_Y=-47,

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic_Character_Slot:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_Common_New_Texture21.tga", "PVP_Result_Image_Rena" )
g_pPicture:SetPoint
{
	  ADD_SIZE_X=-37,
	  ADD_SIZE_Y=-47,

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic_Character_Slot:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_Common_New_Texture58.tga", "PVP_RESULT_IMAGE_RAVEN" )		
g_pPicture:SetPoint
{
	  ADD_SIZE_X=-37,
	  ADD_SIZE_Y=-47,

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic_Character_Slot:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_UI_Character01.tga", "PVP_RESULT_IMAGE_EVE" )		
g_pPicture:SetPoint
{
	  ADD_SIZE_X=-37,
	  ADD_SIZE_Y=-47,

	"LEFT_TOP		= D3DXVECTOR2(4,4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic_Character_Slot:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_UI_Character04.tga", "Background_Chung_color" )		
g_pPicture:SetPoint
{
	  ADD_SIZE_X=-37,
	  ADD_SIZE_Y=-47,

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-- 아라
g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic_Character_Slot:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_UI_Common_Texture68_NEW.tga", "PVP_RESULT_IMAGE_ARA" )
g_pPicture = g_pUIDialog:CreatePicture()
g_pStaticCharacter:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_UI_Common_Texture75_NEW.tga", "ELESIS_COLOR" )
g_pPicture:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
		
g_pPicture:SetPoint
{
	  ADD_SIZE_X=-37,
	  ADD_SIZE_Y=-47,

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
