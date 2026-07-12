-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pButtonSpiritButton = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSpiritButton )
g_pButtonSpiritButton:SetName( "SpiritButton" )
g_pButtonSpiritButton:SetNormalTex(  "DLG_Room_Button0.tga", "Invisible" )

g_pButtonSpiritButton:SetOverTex(  "DLG_Room_Button0.tga", "Invisible"  )

g_pButtonSpiritButton:SetDownTex(  "DLG_Room_Button0.tga", "Invisible"  )

g_pButtonSpiritButton:SetNormalPoint
{
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(36,118)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(498,123)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSpiritButton:SetOverPoint
{


	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(36,118)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(498,123)",


	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSpiritButton:SetDownPoint
{

	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(36,118)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(498,123)",
	
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonSpiritButton:SetGuideDesc( STR_ID_2725 )







g_pButtonRebirthStoneDesc = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonRebirthStoneDesc )
g_pButtonRebirthStoneDesc:SetName( "RebirthStoneDesc" )
g_pButtonRebirthStoneDesc:SetNormalTex(  "DLG_Room_Button0.tga", "Invisible" )

g_pButtonRebirthStoneDesc:SetOverTex(  "DLG_Room_Button0.tga", "Invisible"  )

g_pButtonRebirthStoneDesc:SetDownTex(  "DLG_Room_Button0.tga", "Invisible"  )

g_pButtonRebirthStoneDesc:SetNormalPoint
{
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(362,60)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(441,90)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRebirthStoneDesc:SetOverPoint
{


	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(362,60)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(441,90)",


	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRebirthStoneDesc:SetDownPoint
{

	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(362,60)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(441,90)",
	
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonRebirthStoneDesc:SetGuideDesc( STR_ID_2726 )

