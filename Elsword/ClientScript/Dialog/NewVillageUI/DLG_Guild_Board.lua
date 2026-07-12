-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStaticGuildBoard = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGuildBoard )
g_pStaticGuildBoard:SetName( "StaticGuildBoard" )
g_pUIDialog:SetFront( true )

g_pUIDialog:SetCloseCustomUIEventID( UI_GUILD_BOARD_CUSTOM_MSG["UGBCM_EXIT"] )

g_pUIDialog:AddDummyPos( D3DXVECTOR3( 0, 0, 0 ) ) -- 위치
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 460, 493, 0 ) ) -- Size

for	index = 0, 4 do
	g_pUIDialog:AddDummyPos( D3DXVECTOR3( 54,162 + index * 50, 0 ) )
end



-------------------------BG

g_pPicture_BG_A_01 = g_pUIDialog:CreatePicture()
g_pStaticGuildBoard:AddPicture( g_pPicture_BG_A_01 )

g_pPicture_BG_A_01:SetTex( "DLG_UI_Common_Texture06.TGA", "BG_A_LEFT" )

g_pPicture_BG_A_01:SetPoint
{
 --    ADD_SIZE_X = 260,
	"LEFT_TOP		= D3DXVECTOR2(-2,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_BG_A_02 = g_pUIDialog:CreatePicture()
g_pStaticGuildBoard:AddPicture( g_pPicture_BG_A_02 )

g_pPicture_BG_A_02:SetTex( "DLG_UI_Common_Texture06.TGA", "BG_A_CENTER" )

g_pPicture_BG_A_02:SetPoint
{
     ADD_SIZE_X = 629,
	"LEFT_TOP		= D3DXVECTOR2(35,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BG_A_03 = g_pUIDialog:CreatePicture()
g_pStaticGuildBoard:AddPicture( g_pPicture_BG_A_03 )

g_pPicture_BG_A_03:SetTex( "DLG_UI_Common_Texture06.TGA", "BG_A_RIGHT" )

g_pPicture_BG_A_03:SetPoint
{
 --    ADD_SIZE_X = 260,
	"LEFT_TOP		= D3DXVECTOR2(666,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





---메인 메뉴 버튼

---길드광고
g_pRadioButtonHenir = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonHenir )

g_pRadioButtonHenir:SetFixOverByCheck( true )
g_pRadioButtonHenir:SetShowOffBGByCheck( true )

g_pRadioButtonHenir:SetName( "RadioButton_Henir" )

g_pRadioButtonHenir:SetNormalTex( "DLG_UI_Button14.tga", "Guild_AD_Normal" )


g_pRadioButtonHenir:SetOverTex( "DLG_UI_Button14.tga", "Guild_AD_over" )


g_pRadioButtonHenir:SetCheckedTex( "DLG_UI_Button14.tga", "Guild_AD_down" )


g_pRadioButtonHenir:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(23,57)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonHenir:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(23,57)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonHenir:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(23,57)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(75+34,91)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonHenir:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(26,53)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonHenir:SetGroupID( 1 )
g_pRadioButtonHenir:SetChecked( true )
g_pRadioButtonHenir:SetCustomMsgChecked( UI_GUILD_BOARD_CUSTOM_MSG["UGBCM_SELECT_GUILD_AD_TAP"] )


-------정렬 라디오 버튼



------- 길드 등록순
g_pRadioRegDate = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioRegDate )

g_pRadioRegDate:SetFixOverByCheck( true )
g_pRadioRegDate:SetShowOffBGByCheck( true )

g_pRadioRegDate:SetName( "RadioRegDate" )

g_pRadioRegDate:SetNormalTex( "DLG_UI_Button14_A.tga", "Ordering_Normal" )
g_pRadioRegDate:SetOverTex( "DLG_UI_Button14_A.tga", "Ordering_Over" )
g_pRadioRegDate:SetCheckedTex( "DLG_UI_Button14_A.tga", "Ordering_Over" )


g_pRadioRegDate:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(37,101)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioRegDate:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(37-1,101-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioRegDate:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(37-1,101-1)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(37-1+55+26,101-1+20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioRegDate:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(37-1,101-1)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioRegDate:SetGroupID( 2 )
g_pRadioRegDate:SetCustomMsgChecked( UI_GUILD_BOARD_CUSTOM_MSG["UGBCM_SELECT_REG_DATE"] )
g_pRadioRegDate:SetGuideDesc( STR_ID_4915 )



------- 길드 New
g_pRadioGuildNew = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioGuildNew )

g_pRadioGuildNew:SetFixOverByCheck( true )
g_pRadioGuildNew:SetShowOffBGByCheck( true )

g_pRadioGuildNew:SetName( "RadioGuildNew" )

g_pRadioGuildNew:SetNormalTex( "DLG_UI_Button14.tga", "Guild_AD_Sub_C_Normal" )
g_pRadioGuildNew:SetOverTex( "DLG_UI_Button14.tga", "Guild_AD_Sub_C_Over" )
g_pRadioGuildNew:SetCheckedTex( "DLG_UI_Button14.tga", "Guild_AD_Sub_C_Over" )


g_pRadioGuildNew:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(102+22,101)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioGuildNew:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(102+22,101)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioGuildNew:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(102+22,101)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(102+55+22,101+20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioGuildNew:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(102+22,101)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioGuildNew:SetGroupID( 2 )
g_pRadioGuildNew:SetCustomMsgChecked( UI_GUILD_BOARD_CUSTOM_MSG["UGBCM_SELECT_GUILD_NEW"] )
g_pRadioGuildNew:SetGuideDesc( STR_ID_4906 )

---------------------------------------------------------------------------


------- 길드 Hot
g_pRadioGuildHot = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioGuildHot )

g_pRadioGuildHot:SetFixOverByCheck( true )
g_pRadioGuildHot:SetShowOffBGByCheck( true )

g_pRadioGuildHot:SetName( "RadioGuildHot" )

g_pRadioGuildHot:SetNormalTex( "DLG_UI_Button14.tga", "Guild_AD_Sub_D_Normal" )
g_pRadioGuildHot:SetOverTex( "DLG_UI_Button14.tga", "Guild_AD_Sub_D_Over" )
g_pRadioGuildHot:SetCheckedTex( "DLG_UI_Button14.tga", "Guild_AD_Sub_D_Over" )


g_pRadioGuildHot:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(168+15,101 + 1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioGuildHot:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(168+15-1,101+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioGuildHot:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(168+15,101)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(168+57+15,101+20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioGuildHot:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(168+15-1,101+1)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioGuildHot:SetGroupID( 2 )
g_pRadioGuildHot:SetCustomMsgChecked( UI_GUILD_BOARD_CUSTOM_MSG["UGBCM_SELECT_GUILD_HOT"] )
g_pRadioGuildHot:SetGuideDesc( STR_ID_4907 )





----길드 인원
g_pRadioGuildNumMember = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioGuildNumMember )

g_pRadioGuildNumMember:SetFixOverByCheck( true )
g_pRadioGuildNumMember:SetShowOffBGByCheck( true )

g_pRadioGuildNumMember:SetName( "RadioGuildNumMember" )

g_pRadioGuildNumMember:SetNormalTex( "DLG_UI_Button14.tga", "Guild_AD_Sub_A_Normal" )
g_pRadioGuildNumMember:SetOverTex( "DLG_UI_Button14.tga", "Guild_AD_Sub_A_Over" )
g_pRadioGuildNumMember:SetCheckedTex( "DLG_UI_Button14.tga", "Guild_AD_Sub_A_Over" )


g_pRadioGuildNumMember:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(235+10,101+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioGuildNumMember:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(235-1+10,101-1+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioGuildNumMember:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(235+10,101+1)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(235+57+60 - 40,101+20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioGuildNumMember:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(235-1+10,101-1+1)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioGuildNumMember:SetGroupID( 2 )
g_pRadioGuildNumMember:SetChecked( true )
g_pRadioGuildNumMember:SetCustomMsgChecked( UI_GUILD_BOARD_CUSTOM_MSG["UGBCM_SELECT_GUILD_NUM_MEMBER"] )
g_pRadioGuildNumMember:SetGuideDesc( STR_ID_4904 )

------- 길드 레벨
g_pRadioGuildLevel = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioGuildLevel )

g_pRadioGuildLevel:SetFixOverByCheck( true )
g_pRadioGuildLevel:SetShowOffBGByCheck( true )

g_pRadioGuildLevel:SetName( "RadioGuildLevel" )

g_pRadioGuildLevel:SetNormalTex( "DLG_UI_Button14.tga", "Guild_AD_Sub_B_Normal" )
g_pRadioGuildLevel:SetOverTex( "DLG_UI_Button14.tga", "Guild_AD_Sub_B_over" )
g_pRadioGuildLevel:SetCheckedTex( "DLG_UI_Button14.tga", "Guild_AD_Sub_B_over" )


g_pRadioGuildLevel:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(298 + 60-30,101)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioGuildLevel:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(298 + 60-30,101)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioGuildLevel:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(298 + 60-30,101)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(298+50+57-30+10,101+20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioGuildLevel:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(298+60-30,101)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioGuildLevel:SetGroupID( 2 )
g_pRadioGuildLevel:SetCustomMsgChecked( UI_GUILD_BOARD_CUSTOM_MSG["UGBCM_SELECT_GUILD_LEVEL"] )
g_pRadioGuildLevel:SetGuideDesc( STR_ID_4905 )


---EXIT 버튼


g_pButton_exit = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_exit )
g_pButton_exit:SetName( "_exit" )
g_pButton_exit:SetNormalTex( "DLG_UI_Button01.tga", "exit_NORMAL" )

g_pButton_exit:SetOverTex( "DLG_UI_Button01.tga", "exit_OVER" )

g_pButton_exit:SetDownTex( "DLG_UI_Button01.tga", "exit_OVER" )

g_pButton_exit:SetNormalPoint
{
    	"LEFT_TOP		= D3DXVECTOR2(655+4,16+4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(655,16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetDownPoint
{
      	ADD_SIZE_X = -2,
     	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(655+1,16+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetCustomMsgMouseUp( UI_GUILD_BOARD_CUSTOM_MSG["UGBCM_EXIT"] )

--- << 버튼

g_pButtonL_arrow = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonL_arrow )
g_pButtonL_arrow:SetName( "Button_Larrow" )
g_pButtonL_arrow:SetNormalTex( "DLG_UI_BUTTON01.tga", "L_arrow_normal" )

g_pButtonL_arrow:SetOverTex( "DLG_UI_BUTTON01.tga", "L_arrow_over" )

g_pButtonL_arrow:SetDownTex( "DLG_UI_BUTTON01.tga", "L_arrow_over" )

g_pButtonL_arrow:SetNormalPoint
{
    "LEFT_TOP		= D3DXVECTOR2(110+466,393-293)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(110+466,392-293)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(110+1+466,392+1-293)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetCustomMsgMouseUp( UI_GUILD_BOARD_CUSTOM_MSG["UGBCM_PUSH_PREV_PAGE"] )


--->>  버튼

g_pButtonR_arrow = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonR_arrow )
g_pButtonR_arrow:SetName( "Button_Rarrow" )
g_pButtonR_arrow:SetNormalTex( "DLG_UI_BUTTON01.tga", "R_arrow_normal" )

g_pButtonR_arrow:SetOverTex( "DLG_UI_BUTTON01.tga", "R_arrow_over" )

g_pButtonR_arrow:SetDownTex( "DLG_UI_BUTTON01.tga", "R_arrow_over" )

g_pButtonR_arrow:SetNormalPoint
{
    	"LEFT_TOP		= D3DXVECTOR2(189+466,393-293)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(188+466,392-293)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetDownPoint
{
 	ADD_SIZE_X = -2,
     	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(188+1+466,392+1-293)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetCustomMsgMouseUp( UI_GUILD_BOARD_CUSTOM_MSG["UGBCM_PUSH_NEXT_PAGE"] )

-----페이지
g_pPicture_page= g_pUIDialog:CreatePicture()
g_pStaticGuildBoard:AddPicture( g_pPicture_page)

g_pPicture_page:SetTex( "DLG_UI_COMMON_TEXTURE01.TGA", "page_bar" )

g_pPicture_page:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(128+466,391-293)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

------------페이지 번호


g_pStatic_number = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_number )
g_pStatic_number:SetName( "Static_PageNumber" )

g_pStatic_number:AddString
{
	MSG 			= "1/3",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(156+466,396-293)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.7)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}



-------Others Info-------------------------

------------닉네임 -- 길드 이름
g_pStaticGuildName1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGuildName1 )
g_pStaticGuildName1:SetName( "StaticGuildName1" )

g_pStaticGuildName1:AddString
{
	MSG 			= "WWWWWWWWWWWW",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(37,155+16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.6,0.3,0.1,1.0)",
}

g_pStaticGuildName2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGuildName2 )
g_pStaticGuildName2:SetName( "StaticGuildName2" )

g_pStaticGuildName2:AddString
{
	MSG 			= "WWWWWWWWWWWW",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(37,202+16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.6,0.3,0.1,1.0)",
}

g_pStaticGuildName3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGuildName3 )
g_pStaticGuildName3:SetName( "StaticGuildName3" )

g_pStaticGuildName3:AddString
{
	MSG 			= "WWWWWWWWWWWW",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(37,249+16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.6,0.3,0.1,1.0)",
}

g_pStaticGuildName4 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGuildName4 )
g_pStaticGuildName4:SetName( "StaticGuildName4" )

g_pStaticGuildName4:AddString
{
	MSG 			= "WWWWWWWWWWWW",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(37,296+16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.6,0.3,0.1,1.0)",
}

g_pStaticGuildName5 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGuildName5 )
g_pStaticGuildName5:SetName( "StaticGuildName5" )

g_pStaticGuildName5:AddString
{
	MSG 			= "WWWWWWWWWWWW",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(37,343+16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.6,0.3,0.1,1.0)",
}

g_pStaticGuildName6 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGuildName6 )
g_pStaticGuildName6:SetName( "StaticGuildName6" )

g_pStaticGuildName6:AddString
{
	MSG 			= "WWWWWWWWWWWW",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(37,390+16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.6,0.3,0.1,1.0)",
}





---순위표시 -- 길드레벨
g_pStaticGuildLevel1	=	g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGuildLevel1 )
g_pStaticGuildLevel1:SetName( "StaticGuildLevel1" )

g_pStaticGuildLevel1:AddString
{
	MSG 			= "12",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(164+37,155+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pPictureNum1_100		=	g_pUIDialog:CreatePicture()
g_pStaticGuildLevel1:AddPicture( g_pPictureNum1_100 )
g_pPictureNum1_100:SetTex2( "PC_0.dds" )
g_pPictureNum1_100:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,    
	"LEFT_TOP		= D3DXVECTOR2( 36+74, 161 )",
	"RIGHT_BOTTOM	= D3DXVECTOR2( 36+74, 161 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureNum1_10		=	g_pUIDialog:CreatePicture()
g_pStaticGuildLevel1:AddPicture( g_pPictureNum1_10 )
g_pPictureNum1_10:SetTex2( "PC_0.dds" )
g_pPictureNum1_10:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,    
	"LEFT_TOP		= D3DXVECTOR2( 54+74, 161 )",
	"RIGHT_BOTTOM	= D3DXVECTOR2( 54+74, 161 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureNum1_1		=	g_pUIDialog:CreatePicture()
g_pStaticGuildLevel1:AddPicture( g_pPictureNum1_1 )
g_pPictureNum1_1:SetTex2( "PC_0.dds" )
g_pPictureNum1_1:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,    
	"LEFT_TOP		= D3DXVECTOR2( 72+74, 161 )",
	"RIGHT_BOTTOM	= D3DXVECTOR2( 72+74, 161 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----2

g_pStaticGuildLevel2	=	g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGuildLevel2 )
g_pStaticGuildLevel2:SetName( "StaticGuildLevel2" )


g_pStaticGuildLevel2:AddString
{
	MSG 			= "12",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(164+37,202+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pPictureNum2_100		=	g_pUIDialog:CreatePicture()
g_pStaticGuildLevel2:AddPicture( g_pPictureNum2_100 )
g_pPictureNum2_100:SetTex2( "PC_0.dds" )
g_pPictureNum2_100:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,    
	"LEFT_TOP		= D3DXVECTOR2( 36+74, 210 )",
	"RIGHT_BOTTOM	= D3DXVECTOR2( 36+74, 210 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureNum2_10		=	g_pUIDialog:CreatePicture()
g_pStaticGuildLevel2:AddPicture( g_pPictureNum2_10 )
g_pPictureNum2_10:SetTex2( "PC_0.dds" )
g_pPictureNum2_10:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,    
	"LEFT_TOP		= D3DXVECTOR2( 54+74, 210 )",
	"RIGHT_BOTTOM	= D3DXVECTOR2( 54+74, 210 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureNum2_1		=	g_pUIDialog:CreatePicture()
g_pStaticGuildLevel2:AddPicture( g_pPictureNum2_1 )
g_pPictureNum2_1:SetTex2( "PC_0.dds" )
g_pPictureNum2_1:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,    
	"LEFT_TOP		= D3DXVECTOR2( 72+74,210 )",
	"RIGHT_BOTTOM	= D3DXVECTOR2( 72+74,210 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}

------3

g_pStaticGuildLevel3	=	g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGuildLevel3 )
g_pStaticGuildLevel3:SetName( "StaticGuildLevel3" )

g_pStaticGuildLevel3:AddString
{
	MSG 			= "12",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(164+37,249+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



g_pPictureNum3_100		=	g_pUIDialog:CreatePicture()
g_pStaticGuildLevel3:AddPicture( g_pPictureNum3_100 )
g_pPictureNum3_100:SetTex2( "PC_0.dds" )
g_pPictureNum3_100:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,    
	"LEFT_TOP		= D3DXVECTOR2( 36+74, 259 )",
	"RIGHT_BOTTOM	= D3DXVECTOR2( 36+74, 259 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureNum3_10		=	g_pUIDialog:CreatePicture()
g_pStaticGuildLevel3:AddPicture( g_pPictureNum3_10 )
g_pPictureNum3_10:SetTex2( "PC_0.dds" )
g_pPictureNum3_10:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,    
	"LEFT_TOP		= D3DXVECTOR2( 54+74, 259 )",
	"RIGHT_BOTTOM	= D3DXVECTOR2( 54+74, 259 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureNum3_1		=	g_pUIDialog:CreatePicture()
g_pStaticGuildLevel3:AddPicture( g_pPictureNum3_1 )
g_pPictureNum3_1:SetTex2( "PC_0.dds" )
g_pPictureNum3_1:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,    
	"LEFT_TOP		= D3DXVECTOR2( 72+74, 259 )",
	"RIGHT_BOTTOM	= D3DXVECTOR2( 72+74, 259 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----4

g_pStaticGuildLevel4	=	g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGuildLevel4 )
g_pStaticGuildLevel4:SetName( "StaticGuildLevel4" )

g_pStaticGuildLevel4:AddString
{
	MSG 			= "12",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(164+37,296+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pPictureNum4_100		=	g_pUIDialog:CreatePicture()
g_pStaticGuildLevel4:AddPicture( g_pPictureNum4_100 )
g_pPictureNum4_100:SetTex2( "PC_0.dds" )
g_pPictureNum4_100:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,    
	"LEFT_TOP		= D3DXVECTOR2( 36+74, 308 )",
	"RIGHT_BOTTOM	= D3DXVECTOR2( 36+74, 308 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureNum4_10		=	g_pUIDialog:CreatePicture()
g_pStaticGuildLevel4:AddPicture( g_pPictureNum4_10 )
g_pPictureNum4_10:SetTex2( "PC_0.dds" )
g_pPictureNum4_10:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,    
	"LEFT_TOP		= D3DXVECTOR2( 54+74, 308 )",
	"RIGHT_BOTTOM	= D3DXVECTOR2( 54+74, 308 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureNum4_1		=	g_pUIDialog:CreatePicture()
g_pStaticGuildLevel4:AddPicture( g_pPictureNum4_1 )
g_pPictureNum4_1:SetTex2( "PC_0.dds" )
g_pPictureNum4_1:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,    
	"LEFT_TOP		= D3DXVECTOR2( 72+74, 308 )",
	"RIGHT_BOTTOM	= D3DXVECTOR2( 72+74, 308 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------5

g_pStaticGuildLevel5	=	g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGuildLevel5 )
g_pStaticGuildLevel5:SetName( "StaticGuildLevel5" )

g_pStaticGuildLevel5:AddString
{
	MSG 			= "12",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(164+37,343+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pPictureNum5_100		=	g_pUIDialog:CreatePicture()
g_pStaticGuildLevel5:AddPicture( g_pPictureNum5_100 )
g_pPictureNum5_100:SetTex2( "PC_0.dds" )
g_pPictureNum5_100:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,    
	"LEFT_TOP		= D3DXVECTOR2( 36+74, 357 )",
	"RIGHT_BOTTOM	= D3DXVECTOR2( 36+74, 357 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureNum5_10		=	g_pUIDialog:CreatePicture()
g_pStaticGuildLevel5:AddPicture( g_pPictureNum5_10 )
g_pPictureNum5_10:SetTex2( "PC_0.dds" )
g_pPictureNum5_10:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,    
	"LEFT_TOP		= D3DXVECTOR2( 54+74, 357 )",
	"RIGHT_BOTTOM	= D3DXVECTOR2( 54+74, 357 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureNum5_1		=	g_pUIDialog:CreatePicture()
g_pStaticGuildLevel5:AddPicture( g_pPictureNum5_1 )
g_pPictureNum5_1:SetTex2( "PC_0.dds" )
g_pPictureNum5_1:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,    
	"LEFT_TOP		= D3DXVECTOR2( 72+74, 357 )",
	"RIGHT_BOTTOM	= D3DXVECTOR2( 72+74, 357 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-------6

g_pStaticGuildLevel6	=	g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGuildLevel6 )
g_pStaticGuildLevel6:SetName( "StaticGuildLevel6" )

g_pStaticGuildLevel6:AddString
{
	MSG 			= "12",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(164+37,390+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pPictureNum6_100		=	g_pUIDialog:CreatePicture()
g_pStaticGuildLevel6:AddPicture( g_pPictureNum6_100 )
g_pPictureNum6_100:SetTex2( "PC_0.dds" )
g_pPictureNum6_100:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,    
	"LEFT_TOP		= D3DXVECTOR2( 36+74, 357 )",
	"RIGHT_BOTTOM	= D3DXVECTOR2( 36+74, 357 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureNum6_10		=	g_pUIDialog:CreatePicture()
g_pStaticGuildLevel6:AddPicture( g_pPictureNum6_10 )
g_pPictureNum6_10:SetTex2( "PC_0.dds" )
g_pPictureNum6_10:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,    
	"LEFT_TOP		= D3DXVECTOR2( 54+74, 357 )",
	"RIGHT_BOTTOM	= D3DXVECTOR2( 54+74, 357 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureNum6_1		=	g_pUIDialog:CreatePicture()
g_pStaticGuildLevel6:AddPicture( g_pPictureNum6_1 )
g_pPictureNum6_1:SetTex2( "PC_0.dds" )
g_pPictureNum6_1:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,    
	"LEFT_TOP		= D3DXVECTOR2( 72+74, 357 )",
	"RIGHT_BOTTOM	= D3DXVECTOR2( 72+74, 357 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}




-------------------------------------------------------------------
-------------------------헤니르의시공----------------------------
-------------------------------------------------------------------

-- 길드 광고메시지
g_pStaticAdvertiseMessage1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticAdvertiseMessage1 )
g_pStaticAdvertiseMessage1:SetName( "StaticAdvertiseMessage1" )

g_pStaticAdvertiseMessage1:AddString
{
	MSG 			= "일이삼사오육칠팔구십일이삼사오육칠팔구십...",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(257,15+155)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticAdvertiseMessage2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticAdvertiseMessage2 )
g_pStaticAdvertiseMessage2:SetName( "StaticAdvertiseMessage2" )

g_pStaticAdvertiseMessage2:AddString
{
	MSG 			= "일이삼사오육칠팔구십일이삼사오육칠팔구십...",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(257,15+202)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticAdvertiseMessage3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticAdvertiseMessage3 )
g_pStaticAdvertiseMessage3:SetName( "StaticAdvertiseMessage3" )

g_pStaticAdvertiseMessage3:AddString
{
	MSG 			= "일이삼사오육칠팔구십일이삼사오육칠팔구십...",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(257,15+249)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticAdvertiseMessage4 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticAdvertiseMessage4 )
g_pStaticAdvertiseMessage4:SetName( "StaticAdvertiseMessage4" )

g_pStaticAdvertiseMessage4:AddString
{
	MSG 			= "일이삼사오육칠팔구십일이삼사오육칠팔구십...",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(257,15+296)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticAdvertiseMessage5 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticAdvertiseMessage5 )
g_pStaticAdvertiseMessage5:SetName( "StaticAdvertiseMessage5" )

g_pStaticAdvertiseMessage5:AddString
{
	MSG 			= "일이삼사오육칠팔구십일이삼사오육칠팔구십...",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(257,15+343)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticAdvertiseMessage6 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticAdvertiseMessage6 )
g_pStaticAdvertiseMessage6:SetName( "StaticAdvertiseMessage6" )

g_pStaticAdvertiseMessage6:AddString
{
	MSG 			= "일이삼사오육칠팔구십일이삼사오육칠팔구십...",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(257,15+390)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



-------------------------------------------------- 마우스 오버 용 버튼
g_pButton_opacity1_1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_opacity1_1 )
g_pButton_opacity1_1:SetName( "opacity1_1" )
g_pButton_opacity1_1:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity1_1:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity1_1:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity1_1:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320-280, 160)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+80-280, 160+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity1_1:SetOverPoint
{
     USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320-280, 160)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+80-280, 160+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity1_1:SetDownPoint
{
    USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320-280, 160)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+80-280, 160+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity1_1:SetGuideDesc( STR_ID_2573 )
--g_pButton_opacity1:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OVER"] )
--g_pButton_opacity1:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OUT"] )

----

g_pButton_opacity1_2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_opacity1_2 )
g_pButton_opacity1_2:SetName( "opacity1_2" )
g_pButton_opacity1_2:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity1_2:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity1_2:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity1_2:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320-280, 160+49)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+80-280, 160+49+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity1_2:SetOverPoint
{
     USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320-280, 160+49)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+80-280, 160+49+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity1_2:SetDownPoint
{
    USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320-280, 160+49)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+80-280, 160+49+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity1_2:SetGuideDesc( STR_ID_2573 )
--g_pButton_opacity2:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OVER"] )
--g_pButton_opacity2:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OUT"] )


----

g_pButton_opacity1_3 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_opacity1_3 )
g_pButton_opacity1_3:SetName( "opacity1_3" )
g_pButton_opacity1_3:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity1_3:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity1_3:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity1_3:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320-280, 160+49+49)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+80-280, 160+49+49+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity1_3:SetOverPoint
{
     USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320-280, 160+49+49)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+80-280, 160+49+49+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity1_3:SetDownPoint
{
    USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320-280, 160+49+49)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+80-280, 160+49+49+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity1_3:SetGuideDesc( STR_ID_2573 )
--g_pButton_opacity3:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OVER"] )
--g_pButton_opacity3:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OUT"] )


----

g_pButton_opacity1_4 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_opacity1_4 )
g_pButton_opacity1_4:SetName( "opacity1_4" )
g_pButton_opacity1_4:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity1_4:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity1_4:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity1_4:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320-280, 160+49+49+49)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+80-280, 160+49+49+49+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity1_4:SetOverPoint
{
     USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320-280, 160+49+49+49)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+80-280, 160+49+49+49+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity1_4:SetDownPoint
{
    USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320-280, 160+49+49+49)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+80-280, 160+49+49+49+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity1_4:SetGuideDesc( STR_ID_2573 )
--g_pButton_opacity4:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OVER"] )
--g_pButton_opacity4:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OUT"] )



----

g_pButton_opacity1_5 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_opacity1_5 )
g_pButton_opacity1_5:SetName( "opacity1_5" )
g_pButton_opacity1_5:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity1_5:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity1_5:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity1_5:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320-280, 160+49+49+49+49)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+80-280, 160+49+49+49+49+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity1_5:SetOverPoint
{
     USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320-280, 160+49+49+49+49)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+80-280, 160+49+49+49+49+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity1_5:SetDownPoint
{
    USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320-280, 160+49+49+49+49)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+80-280, 160+49+49+49+49+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity1_5:SetGuideDesc( STR_ID_2573 )
--g_pButton_opacity5:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OVER"] )
--g_pButton_opacity5:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OUT"] )




----

g_pButton_opacity1_6 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_opacity1_6 )
g_pButton_opacity1_6:SetName( "opacity1_6" )
g_pButton_opacity1_6:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity1_6:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity1_6:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity1_6:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320-280, 160+49+49+49+49+49)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+80-280, 160+49+49+49+49+49+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity1_6:SetOverPoint
{
     USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320-280, 160+49+49+49+49+49)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+80-280, 160+49+49+49+49+49+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity1_6:SetDownPoint
{
    USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320-280, 160+49+49+49+49+49)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+80-280, 160+49+49+49+49+49+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity1_6:SetGuideDesc( STR_ID_2573 )
--g_pButton_opacity6:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OVER"] )
--g_pButton_opacity6:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OUT"] )






-------------------------------------------------- 마우스 오버 용 버튼
g_pButton_opacity2_1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_opacity2_1 )
g_pButton_opacity2_1:SetName( "opacity2_1" )
g_pButton_opacity2_1:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity2_1:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity2_1:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity2_1:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320-20, 160)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+180-20, 160+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity2_1:SetOverPoint
{
     USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320-20, 160)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+180-20, 160+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity2_1:SetDownPoint
{
    USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320-20, 160)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+180-20, 160+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity2_1:SetGuideDesc( STR_ID_2573 )
--g_pButton_opacity1:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OVER"] )
--g_pButton_opacity1:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OUT"] )

----

g_pButton_opacity2_2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_opacity2_2 )
g_pButton_opacity2_2:SetName( "opacity2_2" )
g_pButton_opacity2_2:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity2_2:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity2_2:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity2_2:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320-20, 160+49)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+180-20, 160+49+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity2_2:SetOverPoint
{
     USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320-20, 160+49)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+180-20, 160+49+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity2_2:SetDownPoint
{
    USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320-20, 160+49)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+180-20, 160+49+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity2_2:SetGuideDesc( STR_ID_2573 )
--g_pButton_opacity2:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OVER"] )
--g_pButton_opacity2:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OUT"] )


----

g_pButton_opacity2_3 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_opacity2_3 )
g_pButton_opacity2_3:SetName( "opacity2_3" )
g_pButton_opacity2_3:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity2_3:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity2_3:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity2_3:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320-20, 160+49+49)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+180-20, 160+49+49+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity2_3:SetOverPoint
{
     USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320-20, 160+49+49)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+180-20, 160+49+49+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity2_3:SetDownPoint
{
    USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320-20, 160+49+49)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+180-20, 160+49+49+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity2_3:SetGuideDesc( STR_ID_2573 )
--g_pButton_opacity3:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OVER"] )
--g_pButton_opacity3:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OUT"] )


----

g_pButton_opacity2_4 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_opacity2_4 )
g_pButton_opacity2_4:SetName( "opacity2_4" )
g_pButton_opacity2_4:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity2_4:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity2_4:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity2_4:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320-20, 160+49+49+49)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+180-20, 160+49+49+49+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity2_4:SetOverPoint
{
     USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320-20, 160+49+49+49)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+180-20, 160+49+49+49+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity2_4:SetDownPoint
{
    USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320-20, 160+49+49+49)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+180-20, 160+49+49+49+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity2_4:SetGuideDesc( STR_ID_2573 )
--g_pButton_opacity4:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OVER"] )
--g_pButton_opacity4:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OUT"] )



----

g_pButton_opacity2_5 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_opacity2_5 )
g_pButton_opacity2_5:SetName( "opacity2_5" )
g_pButton_opacity2_5:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity2_5:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity2_5:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity2_5:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320-20, 160+49+49+49+49)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+180-20, 160+49+49+49+49+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity2_5:SetOverPoint
{
     USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320-20, 160+49+49+49+49)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+180-20, 160+49+49+49+49+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity2_5:SetDownPoint
{
    USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320-20, 160+49+49+49+49)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+180-20, 160+49+49+49+49+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity2_5:SetGuideDesc( STR_ID_2573 )
--g_pButton_opacity5:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OVER"] )
--g_pButton_opacity5:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OUT"] )




----

g_pButton_opacity2_6 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_opacity2_6 )
g_pButton_opacity2_6:SetName( "opacity2_6" )
g_pButton_opacity2_6:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity2_6:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity2_6:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity2_6:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320-20, 160+49+49+49+49+49)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+180-20, 160+49+49+49+49+49+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity2_6:SetOverPoint
{
     USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320-20, 160+49+49+49+49+49)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+180-20, 160+49+49+49+49+49+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity2_6:SetDownPoint
{
    USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(320-20, 160+49+49+49+49+49)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(320+180-20, 160+49+49+49+49+49+40)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity2_6:SetGuideDesc( STR_ID_2573 )
--g_pButton_opacity6:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OVER"] )
--g_pButton_opacity6:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OUT"] )














--- << 버튼

g_pButtonJoin1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonJoin1 )
g_pButtonJoin1:SetName( "ButtonJoin1" )
g_pButtonJoin1:SetNormalTex( "DLG_UI_BUTTON13.tga", "BTN_B_NORMAL" )

g_pButtonJoin1:SetOverTex( "DLG_UI_BUTTON13.tga", "BTN_B_OVER" )

g_pButtonJoin1:SetDownTex( "DLG_UI_BUTTON13.tga", "BTN_B_OVER" )

g_pButtonJoin1:SetNormalPoint
{
	
    	"LEFT_TOP		= D3DXVECTOR2(561+37,155)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoin1:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(561+37-2,155-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoin1:SetDownPoint
{
      	ADD_SIZE_X = -2,
     	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(561+37-2+1,155-2+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoin1:SetCustomMsgMouseUp( UI_GUILD_BOARD_CUSTOM_MSG["UGBCM_PUSH_JOIN"] )
g_pButtonJoin1:AddDummyInt(0)

g_pStaticButtonJoin1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticButtonJoin1 )
g_pStaticButtonJoin1:SetName( "StaticButtonJoin1" )

----------가입신청 버튼
g_pStaticButtonJoin1:AddString
{
	MSG 			= STR_ID_4859,
--	MSG 			= "가입신청",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      	= FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(595+37,155+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.6,0.3,0.1,1.0)",
}


--->>  버튼

g_pButtonSkill1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSkill1 )
g_pButtonSkill1:SetName( "ButtonSkill1" )
g_pButtonSkill1:SetNormalTex( "DLG_UI_BUTTON13.tga", "BTN_B_NORMAL" )


g_pButtonSkill1:SetOverTex( "DLG_UI_BUTTON13.tga", "BTN_B_OVER" )

g_pButtonSkill1:SetDownTex( "DLG_UI_BUTTON13.tga", "BTN_B_OVER" )

g_pButtonSkill1:SetNormalPoint
{
    	"LEFT_TOP		= D3DXVECTOR2(561+37,155+22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pButtonSkill1:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(561+37-2,155-2+22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkill1:SetDownPoint
{
      	ADD_SIZE_X = -2,
     	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(561+37-2+1,155-2+1+22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkill1:SetCustomMsgMouseUp( UI_GUILD_BOARD_CUSTOM_MSG["UGBCM_PUSH_SKILL"] )

g_pButtonSkill1:AddDummyInt(0)

g_pStaticButtonSkill1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticButtonSkill1 )
g_pStaticButtonSkill1:SetName( "StaticButtonSkill1" )

----------스킬보기 버튼
g_pStaticButtonSkill1:AddString
{
	MSG 			= STR_ID_4860,
--	MSG 			= "스킬보기",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      	= FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(595+37,155+3+22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.6,0.3,0.1,1.0)",
}






--- << 버튼

g_pButtonJoin2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonJoin2 )
g_pButtonJoin2:SetName( "ButtonJoin2" )
g_pButtonJoin2:SetNormalTex( "DLG_UI_BUTTON13.tga", "BTN_B_NORMAL" )

g_pButtonJoin2:SetOverTex( "DLG_UI_BUTTON13.tga", "BTN_B_OVER" )

g_pButtonJoin2:SetDownTex( "DLG_UI_BUTTON13.tga", "BTN_B_OVER" )

g_pButtonJoin2:SetNormalPoint
{
    	"LEFT_TOP		= D3DXVECTOR2(561+37,202)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoin2:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(561+37-2,202-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoin2:SetDownPoint
{
      	ADD_SIZE_X = -2,
     	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(561+37-2+1,202-2+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoin2:SetCustomMsgMouseUp( UI_GUILD_BOARD_CUSTOM_MSG["UGBCM_PUSH_JOIN"] )
g_pButtonJoin2:AddDummyInt(1)


g_pStaticButtonJoin2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticButtonJoin2 )
g_pStaticButtonJoin2:SetName( "StaticButtonJoin2" )

----------가입신청 버튼
g_pStaticButtonJoin2:AddString
{
	MSG 			= STR_ID_4859,
--	MSG 			= "가입신청",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      	= FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(595+37,202+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.6,0.3,0.1,1.0)",
}


--->>  버튼

g_pButtonSkill2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSkill2 )
g_pButtonSkill2:SetName( "ButtonSkill2" )
g_pButtonSkill2:SetNormalTex( "DLG_UI_BUTTON13.tga", "BTN_B_NORMAL" )


g_pButtonSkill2:SetOverTex( "DLG_UI_BUTTON13.tga", "BTN_B_OVER" )

g_pButtonSkill2:SetDownTex( "DLG_UI_BUTTON13.tga", "BTN_B_OVER" )

g_pButtonSkill2:SetNormalPoint
{
    	"LEFT_TOP		= D3DXVECTOR2(561+37,202+22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonSkill2:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(561+37-2,202-2+22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkill2:SetDownPoint
{
      	ADD_SIZE_X = -2,
     	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(561+37-2+1,202-2+1+22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkill2:SetCustomMsgMouseUp( UI_GUILD_BOARD_CUSTOM_MSG["UGBCM_PUSH_SKILL"] )

g_pButtonSkill2:AddDummyInt(1)

g_pStaticButtonSkill2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticButtonSkill2 )
g_pStaticButtonSkill2:SetName( "StaticButtonSkill2" )

----------스킬보기 버튼
g_pStaticButtonSkill2:AddString
{
	MSG 			= STR_ID_4860,
--	MSG 			= "스킬보기",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      	= FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(595+37,202+3+22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.6,0.3,0.1,1.0)",
}




--- << 버튼

g_pButtonJoin3 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonJoin3 )
g_pButtonJoin3:SetName( "ButtonJoin3" )
g_pButtonJoin3:SetNormalTex( "DLG_UI_BUTTON13.tga", "BTN_B_NORMAL" )

g_pButtonJoin3:SetOverTex( "DLG_UI_BUTTON13.tga", "BTN_B_OVER" )

g_pButtonJoin3:SetDownTex( "DLG_UI_BUTTON13.tga", "BTN_B_OVER" )

g_pButtonJoin3:SetNormalPoint
{
    	"LEFT_TOP		= D3DXVECTOR2(561+37,249)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoin3:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(561+37-2,249-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoin3:SetDownPoint
{
      	ADD_SIZE_X = -2,
     	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(561+37-2+1,249-2+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoin3:SetCustomMsgMouseUp( UI_GUILD_BOARD_CUSTOM_MSG["UGBCM_PUSH_JOIN"] )
g_pButtonJoin3:AddDummyInt(2)


g_pStaticButtonJoin3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticButtonJoin3 )
g_pStaticButtonJoin3:SetName( "StaticButtonJoin3" )

----------가입신청 버튼
g_pStaticButtonJoin3:AddString
{
	MSG 			= STR_ID_4859,
--	MSG 			= "가입신청",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      	= FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(595+37,249+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.6,0.3,0.1,1.0)",
}



--->>  버튼

g_pButtonSkill3 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSkill3 )
g_pButtonSkill3:SetName( "ButtonSkill3" )
g_pButtonSkill3:SetNormalTex( "DLG_UI_BUTTON13.tga", "BTN_B_NORMAL" )

g_pButtonSkill3:SetOverTex( "DLG_UI_BUTTON13.tga", "BTN_B_OVER" )

g_pButtonSkill3:SetDownTex( "DLG_UI_BUTTON13.tga", "BTN_B_OVER" )


g_pButtonSkill3:SetNormalPoint
{
    	"LEFT_TOP		= D3DXVECTOR2(561+37,249+22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonSkill3:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(561+37-2,249-2+22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkill3:SetDownPoint
{
      	ADD_SIZE_X = -2,
    	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(561+37-2+1,249-2+1+22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonSkill3:SetCustomMsgMouseUp( UI_GUILD_BOARD_CUSTOM_MSG["UGBCM_PUSH_SKILL"] )

g_pButtonSkill3:AddDummyInt(2)

g_pStaticButtonSkill3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticButtonSkill3 )
g_pStaticButtonSkill3:SetName( "StaticButtonSkill3" )

----------스킬보기 버튼
g_pStaticButtonSkill3:AddString
{
	MSG 			= STR_ID_4860,
--	MSG 			= "스킬보기",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      	= FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(595+37,249+3+22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.6,0.3,0.1,1.0)",
}



--- << 버튼

g_pButtonJoin4 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonJoin4 )
g_pButtonJoin4:SetName( "ButtonJoin4" )
g_pButtonJoin4:SetNormalTex( "DLG_UI_BUTTON13.tga", "BTN_B_NORMAL" )

g_pButtonJoin4:SetOverTex( "DLG_UI_BUTTON13.tga", "BTN_B_OVER" )

g_pButtonJoin4:SetDownTex( "DLG_UI_BUTTON13.tga", "BTN_B_OVER" )

g_pButtonJoin4:SetNormalPoint
{
    	"LEFT_TOP		= D3DXVECTOR2(561+37,296)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoin4:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(561+37-2,296-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoin4:SetDownPoint
{
      	ADD_SIZE_X = -2,
     	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(561+37-2+1,296-2+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoin4:SetCustomMsgMouseUp( UI_GUILD_BOARD_CUSTOM_MSG["UGBCM_PUSH_JOIN"] )
g_pButtonJoin4:AddDummyInt(3)


g_pStaticButtonJoin4 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticButtonJoin4 )
g_pStaticButtonJoin4:SetName( "StaticButtonJoin4" )

----------가입신청 버튼
g_pStaticButtonJoin4:AddString
{
	MSG 			= STR_ID_4859,
--	MSG 			= "가입신청",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      	= FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(595+37,296+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.6,0.3,0.1,1.0)",
}


--->>  버튼

g_pButtonSkill4 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSkill4 )
g_pButtonSkill4:SetName( "ButtonSkill4" )
g_pButtonSkill4:SetNormalTex( "DLG_UI_BUTTON13.tga", "BTN_B_NORMAL" )

g_pButtonSkill4:SetOverTex( "DLG_UI_BUTTON13.tga", "BTN_B_OVER" )

g_pButtonSkill4:SetDownTex( "DLG_UI_BUTTON13.tga", "BTN_B_OVER" )


g_pButtonSkill4:SetNormalPoint
{
    	"LEFT_TOP		= D3DXVECTOR2(561+37,296+22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonSkill4:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(561+37-2,296-2+22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkill4:SetDownPoint
{
      	ADD_SIZE_X = -2,
    	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(561+37-2+1,296-2+1+22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkill4:SetCustomMsgMouseUp( UI_GUILD_BOARD_CUSTOM_MSG["UGBCM_PUSH_SKILL"] )

g_pButtonSkill4:AddDummyInt(3)

g_pStaticButtonSkill4 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticButtonSkill4 )
g_pStaticButtonSkill4:SetName( "StaticButtonSkill4" )

----------스킬보기 버튼
g_pStaticButtonSkill4:AddString
{
	MSG 			= STR_ID_4860,
--	MSG 			= "스킬보기",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      	= FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(595+37,296+3+22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.6,0.3,0.1,1.0)",
}



--- << 버튼

g_pButtonJoin5 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonJoin5 )
g_pButtonJoin5:SetName( "ButtonJoin5" )
g_pButtonJoin5:SetNormalTex( "DLG_UI_BUTTON13.tga", "BTN_B_NORMAL" )

g_pButtonJoin5:SetOverTex( "DLG_UI_BUTTON13.tga", "BTN_B_OVER" )

g_pButtonJoin5:SetDownTex( "DLG_UI_BUTTON13.tga", "BTN_B_OVER" )

g_pButtonJoin5:SetNormalPoint
{
    	"LEFT_TOP		= D3DXVECTOR2(561+37,343)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoin5:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(561+37-2,343-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoin5:SetDownPoint
{
      	ADD_SIZE_X = -2,
     	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(561+37-2+1,343-2+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonJoin5:SetCustomMsgMouseUp( UI_GUILD_BOARD_CUSTOM_MSG["UGBCM_PUSH_JOIN"] )

g_pButtonJoin5:AddDummyInt(4)


g_pStaticButtonJoin5 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticButtonJoin5 )
g_pStaticButtonJoin5:SetName( "StaticButtonJoin5" )

----------가입신청 버튼
g_pStaticButtonJoin5:AddString
{
	MSG 			= STR_ID_4859,
--	MSG 			= "가입신청",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      	= FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(595+37,343+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.6,0.3,0.1,1.0)",
}


--->>  버튼

g_pButtonSkill5 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSkill5 )
g_pButtonSkill5:SetName( "ButtonSkill5" )
g_pButtonSkill5:SetNormalTex( "DLG_UI_BUTTON13.tga", "BTN_B_NORMAL" )

g_pButtonSkill5:SetOverTex( "DLG_UI_BUTTON13.tga", "BTN_B_OVER" )

g_pButtonSkill5:SetDownTex( "DLG_UI_BUTTON13.tga", "BTN_B_OVER" )

g_pButtonSkill5:SetNormalPoint
{
    	"LEFT_TOP		= D3DXVECTOR2(561+37,343+22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonSkill5:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(561+37-2,343-2+22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkill5:SetDownPoint
{
      	ADD_SIZE_X = -2,
    	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(561+37-2+1,343-2+1+22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonSkill5:SetCustomMsgMouseUp( UI_GUILD_BOARD_CUSTOM_MSG["UGBCM_PUSH_SKILL"] )

g_pButtonSkill5:AddDummyInt(4)

g_pStaticButtonSkill5 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticButtonSkill5 )
g_pStaticButtonSkill5:SetName( "StaticButtonSkill5" )

----------스킬보기 버튼
g_pStaticButtonSkill5:AddString
{
	MSG 			= STR_ID_4860,
--	MSG 			= "스킬보기",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      	= FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(595+37,343+3+22 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.6,0.3,0.1,1.0)",
}



--- << 버튼

g_pButtonJoin6 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonJoin6 )
g_pButtonJoin6:SetName( "ButtonJoin6" )
g_pButtonJoin6:SetNormalTex( "DLG_UI_BUTTON13.tga", "BTN_B_NORMAL" )

g_pButtonJoin6:SetOverTex( "DLG_UI_BUTTON13.tga", "BTN_B_OVER" )

g_pButtonJoin6:SetDownTex( "DLG_UI_BUTTON13.tga", "BTN_B_OVER" )

g_pButtonJoin6:SetNormalPoint
{
    	"LEFT_TOP		= D3DXVECTOR2(561+37,390)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonJoin6:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(561+37-2,390-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoin6:SetDownPoint
{
      	ADD_SIZE_X = -2,
     	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(561+37-2+1,390-2+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoin6:SetCustomMsgMouseUp( UI_GUILD_BOARD_CUSTOM_MSG["UGBCM_PUSH_JOIN"] )

g_pButtonJoin6:AddDummyInt(5)


g_pStaticButtonJoin6 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticButtonJoin6 )
g_pStaticButtonJoin6:SetName( "StaticButtonJoin6" )

----------가입신청 버튼
g_pStaticButtonJoin6:AddString
{
	MSG 			= STR_ID_4859,
--	MSG 			= "가입신청",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      	= FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(595+37,390+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.6,0.3,0.1,1.0)",
}


--->>  버튼

g_pButtonSkill6 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSkill6 )
g_pButtonSkill6:SetName( "ButtonSkill6" )
g_pButtonSkill6:SetNormalTex( "DLG_UI_BUTTON13.tga", "BTN_B_NORMAL" )

g_pButtonSkill6:SetOverTex( "DLG_UI_BUTTON13.tga", "BTN_B_OVER" )

g_pButtonSkill6:SetDownTex( "DLG_UI_BUTTON13.tga", "BTN_B_OVER" )


g_pButtonSkill6:SetNormalPoint
{
    	"LEFT_TOP		= D3DXVECTOR2(561+37,390+22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonSkill6:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(561+37-2,390-2+22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkill6:SetDownPoint
{
      	ADD_SIZE_X = -2,
    	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(561+37-2+1,390-2+1+22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSkill6:SetCustomMsgMouseUp( UI_GUILD_BOARD_CUSTOM_MSG["UGBCM_PUSH_SKILL"] )

g_pButtonSkill6:AddDummyInt(5)

g_pStaticButtonSkill6 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticButtonSkill6 )
g_pStaticButtonSkill6:SetName( "StaticButtonSkill6" )

----------스킬보기 버튼
g_pStaticButtonSkill6:AddString
{
	MSG 			= STR_ID_4860,
--	MSG 			= "스킬보기",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      	= FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(595+37,390+3+22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.6,0.3,0.1,1.0)",
}

-- 광고 등록 버튼

g_pButtonRegister = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonRegister )
g_pButtonRegister:SetName( "ButtonRegister" )
g_pButtonRegister:SetNormalTex( "DLG_UI_BUTTON13.tga", "BTN_BG_NORMAL" )
g_pButtonRegister:SetOverTex( "DLG_UI_BUTTON13.tga", "BTN_BG_OVER" )
g_pButtonRegister:SetDownTex( "DLG_UI_BUTTON13.tga", "BTN_BG_OVER" )

g_pButtonRegister:SetNormalPoint
{
	ADD_SIZE_X = 20,
    	"LEFT_TOP		= D3DXVECTOR2(266-25,442)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRegister:SetOverPoint
{
	ADD_SIZE_X = 20,
	"LEFT_TOP		= D3DXVECTOR2(266-2-25,442-2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRegister:SetDownPoint
{
      	ADD_SIZE_X = -2 + 20,
     	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(266-2+1-25,442-2+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRegister:SetCustomMsgMouseUp( UI_GUILD_BOARD_CUSTOM_MSG["UGBCM_PUSH_ADVERTISE"] )


-- 신청 목록 버튼

g_pButtonJoinList = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonJoinList )
g_pButtonJoinList:SetName( "ButtonJoinList" )
g_pButtonJoinList:SetNormalTex( "DLG_UI_BUTTON13.tga", "BTN_BG_NORMAL" )
g_pButtonJoinList:SetOverTex( "DLG_UI_BUTTON13.tga", "BTN_BG_OVER" )
g_pButtonJoinList:SetDownTex( "DLG_UI_BUTTON13.tga", "BTN_BG_OVER" )

g_pButtonJoinList:SetNormalPoint
{
ADD_SIZE_X = 18,
    	"LEFT_TOP		= D3DXVECTOR2(266+83-8,442)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoinList:SetOverPoint
{
ADD_SIZE_X = 18,
	"LEFT_TOP		= D3DXVECTOR2(266+83-2-8,442-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoinList:SetDownPoint
{
      	ADD_SIZE_X = -2 + 18,
    	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(266+83-2+1-8,442-2+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonJoinList:SetCustomMsgMouseUp( UI_GUILD_BOARD_CUSTOM_MSG["UGBCM_PUSH_JOIN_LIST"] )




--------- 세부항목
g_pCommonStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pCommonStatic )
g_pCommonStatic:SetName( "g_pCommonStatic" )

g_pCommonStatic:AddString
{
	MSG 			= STR_ID_4853,
--	MSG 			= "길드광고",
	FONT_INDEX		= XUF_DODUM_20_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(20+3,21+3)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pCommonStatic:AddString
{
	MSG 			= STR_ID_4853,
--	MSG 			= "길드광고",
	FONT_INDEX		= XUF_DODUM_20_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(20,21)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



g_pCommonStatic:AddString
{
	MSG 			= STR_ID_4854,
--	MSG 			= "길드이름",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(63+ 15,134)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.6,0.3,0.1,1.0)",
}



g_pCommonStatic:AddString
{
	MSG 			= STR_ID_4856,
--	MSG 			= "레벨",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(202,134)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.6,0.3,0.1,1.0)",
}


g_pCommonStatic:AddString
{
	MSG 			= STR_ID_4855,
--	MSG 			= "메시지",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(323-12,134)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.6,0.3,0.1,1.0)",
}

g_pCommonStatic:AddString
{
	MSG 			= STR_ID_4857,
--	MSG 			= "광고등록",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      	= FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(304-15,446)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.6,0.3,0.1,1.0)",
}


g_pCommonStatic:AddString
{
	MSG 			= STR_ID_4858,
--	MSG 			= "신청목록",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      	= FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(304+84,446)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.6,0.3,0.1,1.0)",
}





