-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true  )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseOnFocusOut( true )

g_pStaticGuild = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGuild )
g_pStaticGuild:SetName( "Guild" )

---------BG

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticGuild:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture03.TGA", "user_bg1_top2" )

g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticGuild:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture03.TGA", "user_bg1_middle" )
g_pPicture_bg:SetIndex(1)
g_pPicture_bg:SetPoint
{
    ADD_SIZE_Y = 17,
	"LEFT_TOP		= D3DXVECTOR2(0,14+5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticGuild:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture03.TGA", "user_bg1_bottom" )
g_pPicture_bg:SetIndex(2)
g_pPicture_bg:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(0,41-4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------------BG2


g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticGuild:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "user_bg2_top" )

g_pPicture_bg2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(10,39-25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticGuild:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "user_bg2_middle" )
g_pPicture_bg2:SetIndex(3)
g_pPicture_bg2:SetPoint
{
    ADD_SIZE_Y = 17,
	"LEFT_TOP		= D3DXVECTOR2(10,44-25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticGuild:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "user_bg2_bottom" )
g_pPicture_bg2:SetIndex(4)
g_pPicture_bg2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(10,37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------  길드마스터 메뉴  ---------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------


------------------------------------------------------ 신입길드원 임명 -----------------------------------------------------

g_pButtonFresh = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonFresh )
g_pButtonFresh:SetName( "Fresh" )
g_pButtonFresh:SetNormalTex( "DLG_UI_BUTTON14.tga", "Guild_Fresh_Normal" )

g_pButtonFresh:SetOverTex( "DLG_UI_BUTTON14.tga", "Guild_Fresh_OVER" )

g_pButtonFresh:SetDownTex( "DLG_UI_BUTTON14.tga", "Guild_Fresh_OVER" )

g_pButtonFresh:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(39 + 27,47-22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonFresh:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,42-22)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonFresh:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,42+1-22)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonFresh:SetCustomMsgMouseUp( GUILD_CHANGE_GRADE_UI_MSG["GCGUM_NEW_USER"] )


------------------------------------------------------ 일반길드원 임명 -----------------------------------------------------

g_pButtonCommon = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCommon )
g_pButtonCommon:SetName( "Common" )
g_pButtonCommon:SetNormalTex( "DLG_UI_BUTTON14.tga", "Guild_Common_Normal" )

g_pButtonCommon:SetOverTex( "DLG_UI_BUTTON14.tga", "Guild_Common_OVER" )

g_pButtonCommon:SetDownTex( "DLG_UI_BUTTON14.tga", "Guild_Common_OVER" )

g_pButtonCommon:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(39 + 25,47-22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCommon:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,42-22)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCommon:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,42+1-22)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonCommon:SetCustomMsgMouseUp( GUILD_CHANGE_GRADE_UI_MSG["GCGUM_NORMAL_USER"] )

------------------------------------------------------ 우수길드원 임명 -----------------------------------------------------

g_pButtonPremium = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonPremium )
g_pButtonPremium:SetName( "Premium" )
g_pButtonPremium:SetNormalTex( "DLG_UI_BUTTON14.tga", "Guild_Premium_Normal" )

g_pButtonPremium:SetOverTex( "DLG_UI_BUTTON14.tga", "Guild_Premium_OVER" )

g_pButtonPremium:SetDownTex( "DLG_UI_BUTTON14.tga", "Guild_Premium_OVER" )

g_pButtonPremium:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(39 + 27,47-22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPremium:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,42-22)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPremium:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,42+1-22)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonPremium:SetCustomMsgMouseUp( GUILD_CHANGE_GRADE_UI_MSG["GCGUM_VIP_USER"] )

------------------------------------------------------ 원로길드원 임명 -----------------------------------------------------

g_pButtonOld = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonOld )
g_pButtonOld:SetName( "Old" )
g_pButtonOld:SetNormalTex( "DLG_UI_BUTTON14.tga", "Guild_Old_Normal" )

g_pButtonOld:SetOverTex( "DLG_UI_BUTTON14.tga", "Guild_Old_OVER" )

g_pButtonOld:SetDownTex( "DLG_UI_BUTTON14.tga", "Guild_Old_OVER" )

g_pButtonOld:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(41+27,47-22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonOld:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,42-22)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonOld:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,42+1-22)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonOld:SetCustomMsgMouseUp( GUILD_CHANGE_GRADE_UI_MSG["GCGUM_OLD_USER"] )

------------------------------------------------------ 길드관리자 임명 -----------------------------------------------------

g_pButtonAdmin = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonAdmin )
g_pButtonAdmin:SetName( "Admin" )
g_pButtonAdmin:SetNormalTex( "DLG_UI_BUTTON14.tga", "Guild_Admin_Normal" )

g_pButtonAdmin:SetOverTex( "DLG_UI_BUTTON14.tga", "Guild_Admin_OVER" )

g_pButtonAdmin:SetDownTex( "DLG_UI_BUTTON14.tga", "Guild_Admin_OVER" )

g_pButtonAdmin:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(39+10,47-22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonAdmin:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,42-22)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonAdmin:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,42+1-22)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonAdmin:SetCustomMsgMouseUp( GUILD_CHANGE_GRADE_UI_MSG["GCGUM_SYSOP"] )

------------------------------------------------------ 길드마스터 임명 -----------------------------------------------------

g_pButtonMaster = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMaster )
g_pButtonMaster:SetName( "Master" )
g_pButtonMaster:SetNormalTex( "DLG_UI_BUTTON14.tga", "Guild_Master_Normal" )

g_pButtonMaster:SetOverTex( "DLG_UI_BUTTON14.tga", "Guild_Master_OVER" )

g_pButtonMaster:SetDownTex( "DLG_UI_BUTTON14.tga", "Guild_Master_OVER" )

g_pButtonMaster:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(41 +12,47-22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMaster:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,42-22)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMaster:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,42+1-22)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonMaster:SetCustomMsgMouseUp( GUILD_CHANGE_GRADE_UI_MSG["GCGUM_MASTER"] )