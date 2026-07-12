-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
--g_pUIDialog:SetFront( true )

g_pUIDialog:AddDummyPos( D3DXVECTOR3( 59, 113, 200 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 286, 113, 200 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 513, 113, 200 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 740, 113, 200 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 170, -285, 200 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 390, -285, 200 ) )

--------캐릭터선택
g_pStaticcharac = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticcharac )
g_pStaticcharac:SetName( "charac" )

--------- TITLE

g_pPicture_title = g_pUIDialog:CreatePicture()
g_pStaticcharac:AddPicture( g_pPicture_title )

g_pPicture_title:SetTex( "DLG_UI_Title01_A.TGA", "charac_selec" )

g_pPicture_title:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(3,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


------------------------------BG

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticcharac:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture08.TGA", "charac_selec_bg1_left" )

g_pPicture_bg1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(43,64)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticcharac:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture08.TGA", "charac_selec_bg1_middle" )

g_pPicture_bg1:SetPoint
{
     ADD_SIZE_X = 915,
	"LEFT_TOP		= D3DXVECTOR2(53,64)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticcharac:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture08.TGA", "charac_selec_bg1_right" )

g_pPicture_bg1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(969,64)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




------------------캐릭터 리스트

g_pPicture_charac = g_pUIDialog:CreatePicture()
g_pStaticcharac:AddPicture( g_pPicture_charac )

g_pPicture_charac:SetTex( "DLG_UI_Title01.TGA", "character" )

g_pPicture_charac:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(55,76)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_list = g_pUIDialog:CreatePicture()
g_pStaticcharac:AddPicture( g_pPicture_list )

g_pPicture_list:SetTex( "DLG_UI_Title01.TGA", "list" )

g_pPicture_list:SetPoint
{
	 
	"LEFT_TOP		= D3DXVECTOR2(117+12,76-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




----------------------튜토리얼

g_pStatictutorial = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatictutorial )
g_pStatictutorial:SetName( "tutorial" )


g_pPicture_help = g_pUIDialog:CreatePicture()
g_pStatictutorial:AddPicture( g_pPicture_help )

g_pPicture_help:SetTex( "DLG_UI_Common_Texture07.TGA", "tutorial_noactive" )

g_pPicture_help:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(61,421)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pButtontutorial = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtontutorial )
g_pButtontutorial:SetName( "tutorial" )
g_pButtontutorial:SetNormalTex( "DLG_UI_BUTTON08.tga", "tutorial_normal" )

g_pButtontutorial:SetOverTex( "DLG_UI_BUTTON08.tga", "tutorial_over" )

g_pButtontutorial:SetDownTex( "DLG_UI_BUTTON08.tga", "tutorial_over" )

g_pButtontutorial:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(61,421)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtontutorial:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(57,418)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtontutorial:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	
 	"LEFT_TOP		= D3DXVECTOR2(57+1,418+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtontutorial:SetCustomMsgMouseUp( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SUSUCM_TUTORIAL"] )


--------------------게임시작

g_pStaticstart = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticstart )
g_pStaticstart:SetName( "start" )


g_pPicture_start = g_pUIDialog:CreatePicture()
g_pStaticstart:AddPicture( g_pPicture_start )

g_pPicture_start:SetTex( "DLG_UI_Common_Texture07.TGA", "start_noactive" )

g_pPicture_start:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(729,421)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pButtonstart = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonstart )
g_pButtonstart:SetName( "start" )
g_pButtonstart:SetNormalTex( "DLG_UI_BUTTON08.tga", "start_normal" )

g_pButtonstart:SetOverTex( "DLG_UI_BUTTON08.tga", "start_over" )

g_pButtonstart:SetDownTex( "DLG_UI_BUTTON08.tga", "start_over" )

g_pButtonstart:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(729,421)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonstart:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(725,418)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonstart:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	
 	"LEFT_TOP		= D3DXVECTOR2(725+1,418+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonstart:SetCustomMsgMouseUp( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SUSUCM_SELECT_UNIT"] )
g_pButtonstart:SetGuideDesc( STR_ID_2716 )

--------------------캐릭터 삭제

g_pStaticdelete = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticdelete )
g_pStaticdelete:SetName( "delete" )


g_pPicture_delete = g_pUIDialog:CreatePicture()
g_pStaticdelete:AddPicture( g_pPicture_delete )

g_pPicture_delete:SetTex( "DLG_UI_Common_Texture07.TGA", "delete_noactive" )

g_pPicture_delete:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(846,421)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pButtondelete = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtondelete )
g_pButtondelete:SetName( "delete" )
g_pButtondelete:SetNormalTex( "DLG_UI_BUTTON08.tga", "delete_normal" )

g_pButtondelete:SetOverTex( "DLG_UI_BUTTON08.tga", "delete_over" )

g_pButtondelete:SetDownTex( "DLG_UI_BUTTON08.tga", "delete_over" )

g_pButtondelete:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(846,421)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtondelete:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(842,418)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtondelete:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	
 	"LEFT_TOP		= D3DXVECTOR2(842+1,418+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtondelete:SetCustomMsgMouseUp( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SUSUCM_DELETE_UNIT"] )
g_pButtondelete:SetGuideDesc( STR_ID_2717 )

g_pPicture_chanal = g_pUIDialog:CreatePicture()
g_pStaticcharac:AddPicture( g_pPicture_chanal )

g_pPicture_chanal:SetTex( "DLG_UI_Common_Texture02.TGA", "esc_icon" )

g_pPicture_chanal:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(887-45,9 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



------------------------채널서택창으로


g_pButtonchanal = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonchanal )
g_pButtonchanal:SetName( "chanal" )
g_pButtonchanal:SetNormalTex( "DLG_UI_BUTTON08.tga", "chanalselrec_normal" )

g_pButtonchanal:SetOverTex( "DLG_UI_BUTTON08.tga", "chanalselrec_over" )

g_pButtonchanal:SetDownTex( "DLG_UI_BUTTON08.tga", "chanalselrec_over" )

g_pButtonchanal:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(907-50-1,10)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(905-50+1,10)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	
 	"LEFT_TOP		= D3DXVECTOR2(905+1-50+1,10+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonchanal:SetCustomMsgMouseUp( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SSSUCM_UNIT_SELECT_EXIT"] )









--- << 버튼

g_pButtonL_arrow = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonL_arrow )
g_pButtonL_arrow:SetName( "Inventory_arrow" )
g_pButtonL_arrow:SetNormalTex( "DLG_UI_BUTTON01.tga", "L_arrow_normal" )

g_pButtonL_arrow:SetOverTex( "DLG_UI_BUTTON01.tga", "L_arrow_over" )

g_pButtonL_arrow:SetDownTex( "DLG_UI_BUTTON01.tga", "L_arrow_over" )

g_pButtonL_arrow:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(869,80)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(869,79)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(869+1,79+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetCustomMsgMouseUp( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SUSUCM_PREV"] )

--->>  버튼

g_pButtonR_arrow = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonR_arrow )
g_pButtonR_arrow:SetName( "Inventory_arrow" )
g_pButtonR_arrow:SetNormalTex( "DLG_UI_BUTTON01.tga", "R_arrow_normal" )

g_pButtonR_arrow:SetOverTex( "DLG_UI_BUTTON01.tga", "R_arrow_over" )

g_pButtonR_arrow:SetDownTex( "DLG_UI_BUTTON01.tga", "R_arrow_over" )

g_pButtonR_arrow:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(946,80)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(945,79)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(945+1,79+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetCustomMsgMouseUp( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SUSUCM_NEXT"] )

-----페이지
g_pPicture_page= g_pUIDialog:CreatePicture()
g_pStaticcharac:AddPicture( g_pPicture_page)

g_pPicture_page:SetTex( "DLG_UI_COMMON_TEXTURE01.TGA", "page_bar" )

g_pPicture_page:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(886,78)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

------------페이지 번호


g_pStatic_number = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_number )
g_pStatic_number:SetName( "number" )

g_pStatic_number:AddString
{
	-- MSG 			= "",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(915,84 )",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.7)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


---------------bar


g_pPicture_bar1 = g_pUIDialog:CreatePicture()
g_pStaticcharac:AddPicture( g_pPicture_bar1 )

g_pPicture_bar1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_bar1:SetPoint
{
    ADD_SIZE_X = 914, 
	"LEFT_TOP		= D3DXVECTOR2(53,107)", 
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





	

---------채널 표시
g_pStaticChanal_Sign = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticChanal_Sign )
g_pStaticChanal_Sign:SetName( "Chanal_Sign" )
	
	

------------------------------BOX

g_pPictureBox = g_pUIDialog:CreatePicture()
g_pStaticChanal_Sign:AddPicture( g_pPictureBox )

g_pPictureBox:SetTex( "DLG_UI_Common_Texture08.TGA", "chanal_box_left" )

g_pPictureBox:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(805-50,8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureBox = g_pUIDialog:CreatePicture()
g_pStaticChanal_Sign:AddPicture( g_pPictureBox )

g_pPictureBox:SetTex( "DLG_UI_Common_Texture08.TGA", "chanal_box_middle" )

g_pPictureBox:SetPoint
{
     ADD_SIZE_X = 73,
	"LEFT_TOP		= D3DXVECTOR2(811-50,8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBox = g_pUIDialog:CreatePicture()
g_pStaticChanal_Sign:AddPicture( g_pPictureBox )

g_pPictureBox:SetTex( "DLG_UI_Common_Texture08.TGA", "chanal_box_right" )

g_pPictureBox:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(875-40,8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
	

g_pStaticNum = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNum )
g_pStaticNum:SetName( "Channel_Name" )

g_pStaticNum:AddString
{
	MSG 			= STR_ID_238,
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2( 843-45, 14-1 )",
	"COLOR			= D3DXCOLOR(0.96,0.68,0.11,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

	

--//캐릭터 생성 버튼 개발자한테만 메뉴버튼 목록에 같이 보이게 추가
g_pButton_Create = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Create )
g_pButton_Create:SetName( "Create" )
g_pButton_Create:SetShowEnable(false, false)
g_pButton_Create:SetNormalTex( "DLG_UI_Button20.tga", "CREATE_NORMAL" )
g_pButton_Create:SetOverTex( "DLG_UI_Button20.tga", "CREATE_OVER" )
g_pButton_Create:SetDownTex( "DLG_UI_Button20.tga", "CREATE_OVER" )
g_pButton_Create:SetNormalPoint
{	
    "LEFT_TOP		= D3DXVECTOR2(730-117,419)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Create:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(729-117,419)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Create:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2, 	
 	"LEFT_TOP		= D3DXVECTOR2(729-117+1,419+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Create:SetCustomMsgMouseUp( STATE_SERVER_SELECT_UI_CUSTOM_MSG["SUSUCM_CREATE_UNIT"] )
g_pButton_Create:SetGuideDesc( STR_ID_2727 )


IncludeLua( "DLG_UI_Ad.lua" )

