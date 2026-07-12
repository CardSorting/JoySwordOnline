-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pRadioButtonRed_Team = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonRed_Team )
g_pRadioButtonRed_Team:SetName( "RadioButtonRed" )

g_pRadioButtonRed_Team:SetNormalTex ( "DLG_Server_Select3.TGA", "invisible" )

g_pRadioButtonRed_Team:SetOverTex   ( "DLG_Server_Select3.TGA", "invisible" )

g_pRadioButtonRed_Team:SetCheckedTex( "DLG_Room_Button0.TGA", "Red_Button" )

g_pRadioButtonRed_Team:SetBGPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(799,173)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(893,244)",
	
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonRed_Team:SetBGMouseOverPoint
{

 USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(799,173)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(893,244)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonRed_Team:SetRBPoint
{
	USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(799,173)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(893,244)",
	
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonRed_Team:SetCheckPoint
{

	"LEFT_TOP		= D3DXVECTOR2(795,169)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonRed_Team:SetGroupID( 1 )
g_pRadioButtonRed_Team:SetCustomMsgChecked( PVP_ROOM_UI_CUSTOM_MSG["PRUCM_RED_TEAM"] )

g_pRadioButtonBlue_Team = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonBlue_Team )
g_pRadioButtonBlue_Team:SetName( "RadioButtonBlue" )

g_pRadioButtonBlue_Team:SetNormalTex ( "DLG_Server_Select3.TGA", "invisible" )

g_pRadioButtonBlue_Team:SetOverTex   ( "DLG_Server_Select3.TGA", "invisible" )

g_pRadioButtonBlue_Team:SetCheckedTex( "DLG_Room_Button0.TGA", "Blue_Button" )

g_pRadioButtonBlue_Team:SetBGPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(897,173)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(991,244)",

 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonBlue_Team:SetBGMouseOverPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(897,173)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(991,244)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonBlue_Team:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(897,173)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(991,244)",

 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonBlue_Team:SetCheckPoint
{

    "LEFT_TOP		= D3DXVECTOR2(893,169)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonBlue_Team:SetGroupID( 1 )
g_pRadioButtonBlue_Team:SetCustomMsgChecked( PVP_ROOM_UI_CUSTOM_MSG["PRUCM_BLUE_TEAM"] )
