-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Post_Box" )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
--g_pUIDialog:SetCloseCustomUIEventID( POSTBOX_OPTION["PBOUM_CLOSE"]  )

g_pButtonUnReadMail = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUnReadMail )
g_pButtonUnReadMail:SetName( "UnReadMail" )
g_pButtonUnReadMail:SetNormalTex( "DLG_Common_New_Texture66.tga", "Mail_Box" )

g_pButtonUnReadMail:SetOverTex( "DLG_Common_New_Texture66.tga", "Mail_Box" )

g_pButtonUnReadMail:SetDownTex( "DLG_Common_New_Texture66.tga", "Mail_Box" )

g_pButtonUnReadMail:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(891,593)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnReadMail:SetOverPoint
{
    ADD_SIZE_X = 2,
    ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(891-1,593-2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnReadMail:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(891+1,593+2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnReadMail:SetGuideDesc( STR_ID_2712 )




--[[
	g_pButton_Mail_Box = g_pUIDialog:CreateButton()
	g_pUIDialog:AddControl( g_pButton_Mail_Box )
	g_pButton_Mail_Box:SetName( "Button_Mail_Box" )
	g_pButton_Mail_Box:AddDummyInt( ENCHANT_TYPE["ET_RANDOM"] )
	g_pButton_Mail_Box:SetNormalTex( "DLG_Common_New_Texture66.tga", "Mail_Box" )

	g_pButton_Mail_Box:SetOverTex( "DLG_Common_New_Texture66.tga", "Mail_Box" )

	g_pButton_Mail_Box:SetDownTex( "DLG_Common_New_Texture66.tga", "Mail_Box" )

	g_pButton_Mail_Box:SetNormalPoint
	{


 		"LEFT_TOP		= D3DXVECTOR2(891,593)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButton_Mail_Box:SetOverPoint
	{
		ADD_SIZE_X = 2,
		ADD_SIZE_Y = 2,
		"LEFT_TOP		= D3DXVECTOR2(891-1,593-2)",

		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButton_Mail_Box:SetDownPoint
	{
		ADD_SIZE_X = -2,
		ADD_SIZE_Y = -2,
 		"LEFT_TOP		= D3DXVECTOR2(891+1,593+2)",

		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	g_pButton_Mail_Box:SetCustomMsgMouseUp( POSTBOX_DLG_EVENT["PBQM_NEW_MAIL"] )
--]]
