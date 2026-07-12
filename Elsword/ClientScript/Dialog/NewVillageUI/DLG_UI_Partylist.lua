-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_UI_Party_List" )
g_pUIDialog:SetPos( -30, 150 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL_4"] )
--g_pUIDialog:SetEnableMoveByDrag( true )
g_pUIDialog:SetCloseCustomUIEventID( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_CLOSE_WINDOW"] )






g_pStatic_partylist = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_partylist )
g_pStatic_partylist:SetName( "partylist" )


----------BG


g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture01.TGA", "emulate_bg_left" )

g_pPicture_bg1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(71,2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture01.TGA", "emulate_bg_middle" )

g_pPicture_bg1:SetPoint
{
    ADD_SIZE_X = 924,
	"LEFT_TOP		= D3DXVECTOR2(83,2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture01.TGA", "emulate_bg_right" )

g_pPicture_bg1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(1009,2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-------------gray BG 

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture01.TGA", "emulate_bg2_left" )

g_pPicture_bg2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(86,55)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture01.TGA", "emulate_bg2_middle" )

g_pPicture_bg2:SetPoint
{
    ADD_SIZE_X = 903,
	"LEFT_TOP		= D3DXVECTOR2(94,55)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture01.TGA", "emulate_bg2_right" )

g_pPicture_bg2:SetPoint
{
  
	"LEFT_TOP		= D3DXVECTOR2(998,55)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-- note!! dmlee 마을별 던전 라디오 버튼을 코드에서 지역에 따라 해당하는 파일을 읽어온다.
--IncludeLua( "DLG_UI_Ruben_Dungeon.lua" )
--IncludeLua( "DLG_UI_Eldu_Dungeon.lua" )
--IncludeLua( "DLG_UI_Besma_Dungeon.lua" )
--IncludeLua( "DLG_UI_Altera_Dungeon.lua" )




------ BG2

g_pPicture_bg4 = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_bg4 )

g_pPicture_bg4:SetTex( "DLG_UI_Common_Texture01.TGA", "emulate_bg3_left" )

g_pPicture_bg4:SetPoint
{
  
	"LEFT_TOP		= D3DXVECTOR2(92,102)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg4 = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_bg4 )

g_pPicture_bg4:SetTex( "DLG_UI_Common_Texture01.TGA", "emulate_bg3_middle" )

g_pPicture_bg4:SetPoint
{
    ADD_SIZE_X = 889,
	"LEFT_TOP		= D3DXVECTOR2(101,102)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg4 = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_bg4 )

g_pPicture_bg4:SetTex( "DLG_UI_Common_Texture01.TGA", "emulate_bg3_right" )

g_pPicture_bg4:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(991,102)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



----------------------타이틀

g_pPicture_title = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_title )

g_pPicture_title:SetTex( "DLG_UI_Title01.TGA", "party" )

g_pPicture_title:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(87,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_list = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_list )

g_pPicture_list:SetTex( "DLG_UI_Title01.TGA", "list" )

g_pPicture_list:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(132,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-------------------------BAR

g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
   ADD_SIZE_X = 925,
	"LEFT_TOP		= D3DXVECTOR2(82,49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line2 = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_line2 )

g_pPicture_line2:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line2:SetPoint
{
   ADD_SIZE_Y = 18,
	"LEFT_TOP		= D3DXVECTOR2(129,116)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}
 
 

g_pPicture_line3 = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_line3 )

g_pPicture_line3:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line3:SetPoint
{
   ADD_SIZE_Y = 18,
	"LEFT_TOP		= D3DXVECTOR2(216,116)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_line4 = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_line4 )

g_pPicture_line4:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line4:SetPoint 
{
   ADD_SIZE_Y = 18,
	"LEFT_TOP		= D3DXVECTOR2(283,116)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_line5 = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_line5 )

g_pPicture_line5:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line5:SetPoint
{
   ADD_SIZE_Y = 18,
	"LEFT_TOP		= D3DXVECTOR2(331 + 10,116)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line6 = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_line6 )

g_pPicture_line6:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line6:SetPoint
{
   ADD_SIZE_Y = 18, 
	"LEFT_TOP		= D3DXVECTOR2(573,116)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line7 = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_line7 )

g_pPicture_line7:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line7:SetPoint
{
   ADD_SIZE_Y = 18,
	"LEFT_TOP		= D3DXVECTOR2(660,116)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line8 = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_line8 )

g_pPicture_line8:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line8:SetPoint
{
   ADD_SIZE_Y = 18,
	"LEFT_TOP		= D3DXVECTOR2(727,116)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line9 = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_line9 )

g_pPicture_line9:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line9:SetPoint
{
   ADD_SIZE_Y = 18,
	"LEFT_TOP		= D3DXVECTOR2(775 + 10,116)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line10 = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_line10 )

g_pPicture_line10:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line10:SetPoint
{
   ADD_SIZE_Y = 18,
	"LEFT_TOP		= D3DXVECTOR2(331+155,116)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line11 = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_line11 )

g_pPicture_line11:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line11:SetPoint
{
   ADD_SIZE_Y = 18,
	"LEFT_TOP		= D3DXVECTOR2(775+155,116)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}

---------------------- info

---던전

g_pPicture_info = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_info )

g_pPicture_info:SetTex( "DLG_UI_Title01_A.TGA", "dungeon" )

g_pPicture_info:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(139 + 12,119)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_info = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_info )

g_pPicture_info:SetTex( "DLG_UI_Title01_A.TGA", "dungeon" )

g_pPicture_info:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(583 + 12,119)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-----난이도


g_pPicture_info = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_info )

g_pPicture_info:SetTex( "DLG_UI_Title01_A.TGA", "degree_2" )

g_pPicture_info:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(228,119)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_info = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_info )

g_pPicture_info:SetTex( "DLG_UI_Title01_A.TGA", "degree_2" )

g_pPicture_info:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(671,119)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----------인원

g_pPicture_info = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_info )

g_pPicture_info:SetTex( "DLG_UI_Title01_A.TGA", "staff_2" )

g_pPicture_info:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(294 - 2,119)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_info = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_info )

g_pPicture_info:SetTex( "DLG_UI_Title01_A.TGA", "staff_2" )

g_pPicture_info:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(738 - 2,119)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

------ 파티이름

g_pPicture_info = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_info )

g_pPicture_info:SetTex( "DLG_UI_Title01_A.TGA", "party_name" )

g_pPicture_info:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(344 + 15 + 22,119)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_info = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_info )

g_pPicture_info:SetTex( "DLG_UI_Title01_A.TGA", "party_name" )

g_pPicture_info:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(788 + 15 + 22,119)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


------ 파티사기

g_pPicture_info = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_info )

g_pPicture_info:SetTex( "DLG_UI_Title01_A.TGA", "party_Fever" )

g_pPicture_info:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(344+152 - 3,119)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_info = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_info )

g_pPicture_info:SetTex( "DLG_UI_Title01_A.TGA", "party_Fever" )

g_pPicture_info:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(788+152 - 3,119)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





----------------파티 목록



g_pRadioButton_list1 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_list1 )

g_pRadioButton_list1:SetFixOverByCheck( true )
g_pRadioButton_list1:SetShowOffBGByCheck( true )

g_pRadioButton_list1:SetName( "list1" )

g_pRadioButton_list1:SetNormalTex( "DLG_UI_BUTTON03.tga", "partybox_normal" )


g_pRadioButton_list1:SetOverTex( "DLG_UI_BUTTON03.tga", "partybox_over" )


g_pRadioButton_list1:SetCheckedTex( "DLG_UI_BUTTON03.tga", "partybox_over" )


g_pRadioButton_list1:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(105,140)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_list1:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(105,139)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_list1:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,
 
 	"LEFT_TOP		= D3DXVECTOR2(105,139)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(544,180)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_list1:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(105,139)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_list1:SetGroupID( 2 )

g_pRadioButton_list1:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_SLOT_CLICKED"] )
g_pRadioButton_list1:AddDummyInt( 0 )

g_pRadioButton_list1:SetEnableDoubleClick( true )
g_pRadioButton_list1:SetCustomMsgDoubleClicked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_SLOT_DOUBLE_CLICKED"] )
g_pRadioButton_list1:SetCustomMsgRButtonUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_SLOT_RCLICKED"] )







g_pRadioButton_list2 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_list2 )

g_pRadioButton_list2:SetFixOverByCheck( true )
g_pRadioButton_list2:SetShowOffBGByCheck( true )

g_pRadioButton_list2:SetName( "list2" )

g_pRadioButton_list2:SetNormalTex( "DLG_UI_BUTTON03.tga", "partybox_normal" )


g_pRadioButton_list2:SetOverTex( "DLG_UI_BUTTON03.tga", "partybox_over" )


g_pRadioButton_list2:SetCheckedTex( "DLG_UI_BUTTON03.tga", "partybox_over" )


g_pRadioButton_list2:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(105,182)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_list2:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(105,181)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_list2:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,
 
 	"LEFT_TOP		= D3DXVECTOR2(105,181)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(544,222)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_list2:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(105,181)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_list2:SetGroupID( 2 )

g_pRadioButton_list2:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_SLOT_CLICKED"] )
g_pRadioButton_list2:AddDummyInt( 1 )

g_pRadioButton_list2:SetEnableDoubleClick( true )
g_pRadioButton_list2:SetCustomMsgDoubleClicked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_SLOT_DOUBLE_CLICKED"] )
g_pRadioButton_list2:SetCustomMsgRButtonUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_SLOT_RCLICKED"] )










g_pRadioButton_list3 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_list3 )

g_pRadioButton_list3:SetFixOverByCheck( true )
g_pRadioButton_list3:SetShowOffBGByCheck( true )

g_pRadioButton_list3:SetName( "list3" )

g_pRadioButton_list3:SetNormalTex( "DLG_UI_BUTTON03.tga", "partybox_normal" )


g_pRadioButton_list3:SetOverTex( "DLG_UI_BUTTON03.tga", "partybox_over" )


g_pRadioButton_list3:SetCheckedTex( "DLG_UI_BUTTON03.tga", "partybox_over" )


g_pRadioButton_list3:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(105,224)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_list3:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(105,223)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_list3:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,
 
 	"LEFT_TOP		= D3DXVECTOR2(105,223)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(544,264)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_list3:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(105,223)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_list3:SetGroupID( 2 )

g_pRadioButton_list3:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_SLOT_CLICKED"] )
g_pRadioButton_list3:AddDummyInt( 2 )

g_pRadioButton_list3:SetEnableDoubleClick( true )
g_pRadioButton_list3:SetCustomMsgDoubleClicked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_SLOT_DOUBLE_CLICKED"] )
g_pRadioButton_list3:SetCustomMsgRButtonUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_SLOT_RCLICKED"] )







g_pRadioButton_list4 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_list4 )

g_pRadioButton_list4:SetFixOverByCheck( true )
g_pRadioButton_list4:SetShowOffBGByCheck( true )

g_pRadioButton_list4:SetName( "list4" )

g_pRadioButton_list4:SetNormalTex( "DLG_UI_BUTTON03.tga", "partybox_normal" )


g_pRadioButton_list4:SetOverTex( "DLG_UI_BUTTON03.tga", "partybox_over" )


g_pRadioButton_list4:SetCheckedTex( "DLG_UI_BUTTON03.tga", "partybox_over" )


g_pRadioButton_list4:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(105,266)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_list4:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(105,265)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_list4:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,
 
 	"LEFT_TOP		= D3DXVECTOR2(105,265)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(544,306)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_list4:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(105,265)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_list4:SetGroupID( 2 )

g_pRadioButton_list4:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_SLOT_CLICKED"] )
g_pRadioButton_list4:AddDummyInt( 3 )

g_pRadioButton_list4:SetEnableDoubleClick( true )
g_pRadioButton_list4:SetCustomMsgDoubleClicked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_SLOT_DOUBLE_CLICKED"] )
g_pRadioButton_list4:SetCustomMsgRButtonUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_SLOT_RCLICKED"] )










g_pRadioButton_list5 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_list5 )

g_pRadioButton_list5:SetFixOverByCheck( true )
g_pRadioButton_list5:SetShowOffBGByCheck( true )

g_pRadioButton_list5:SetName( "list5" )

g_pRadioButton_list5:SetNormalTex( "DLG_UI_BUTTON03.tga", "partybox_normal" )


g_pRadioButton_list5:SetOverTex( "DLG_UI_BUTTON03.tga", "partybox_over" )


g_pRadioButton_list5:SetCheckedTex( "DLG_UI_BUTTON03.tga", "partybox_over" )


g_pRadioButton_list5:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(105,308)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_list5:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(105,307)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_list5:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,
 
 	"LEFT_TOP		= D3DXVECTOR2(105,307)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(544,348)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_list5:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(105,307)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_list5:SetGroupID( 2 )

g_pRadioButton_list5:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_SLOT_CLICKED"] )
g_pRadioButton_list5:AddDummyInt( 4 )



g_pRadioButton_list5:SetEnableDoubleClick( true )
g_pRadioButton_list5:SetCustomMsgDoubleClicked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_SLOT_DOUBLE_CLICKED"] )
g_pRadioButton_list5:SetCustomMsgRButtonUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_SLOT_RCLICKED"] )






g_pRadioButton_list6 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_list6 )

g_pRadioButton_list6:SetFixOverByCheck( true )
g_pRadioButton_list6:SetShowOffBGByCheck( true )

g_pRadioButton_list6:SetName( "list6" )

g_pRadioButton_list6:SetNormalTex( "DLG_UI_BUTTON03.tga", "partybox_normal" )


g_pRadioButton_list6:SetOverTex( "DLG_UI_BUTTON03.tga", "partybox_over" )


g_pRadioButton_list6:SetCheckedTex( "DLG_UI_BUTTON03.tga", "partybox_over" )


g_pRadioButton_list6:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(105,350)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_list6:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(105,349)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_list6:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,
 
 	"LEFT_TOP		= D3DXVECTOR2(105,349)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(544,390)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_list6:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(105,349)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_list6:SetGroupID( 2 )

g_pRadioButton_list6:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_SLOT_CLICKED"] )
g_pRadioButton_list6:AddDummyInt( 5 )


g_pRadioButton_list6:SetEnableDoubleClick( true )
g_pRadioButton_list6:SetCustomMsgDoubleClicked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_SLOT_DOUBLE_CLICKED"] )
g_pRadioButton_list6:SetCustomMsgRButtonUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_SLOT_RCLICKED"] )





---------------------------------------------------------------------------
-------------------------------------------------------------





g_pRadioButton_list7 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_list7 )

g_pRadioButton_list7:SetFixOverByCheck( true )
g_pRadioButton_list7:SetShowOffBGByCheck( true )

g_pRadioButton_list7:SetName( "list7" )

g_pRadioButton_list7:SetNormalTex( "DLG_UI_BUTTON03.tga", "partybox_normal" )


g_pRadioButton_list7:SetOverTex( "DLG_UI_BUTTON03.tga", "partybox_over" )


g_pRadioButton_list7:SetCheckedTex( "DLG_UI_BUTTON03.tga", "partybox_over" )


g_pRadioButton_list7:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(549,140)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_list7:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(549,139)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_list7:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,
 
 	"LEFT_TOP		= D3DXVECTOR2(549,139)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(988,180)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_list7:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(549,139)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_list7:SetGroupID( 2 )

g_pRadioButton_list7:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_SLOT_CLICKED"] )
g_pRadioButton_list7:AddDummyInt( 6 )


g_pRadioButton_list7:SetEnableDoubleClick( true )
g_pRadioButton_list7:SetCustomMsgDoubleClicked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_SLOT_DOUBLE_CLICKED"] )
g_pRadioButton_list7:SetCustomMsgRButtonUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_SLOT_RCLICKED"] )






g_pRadioButton_list8 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_list8 )

g_pRadioButton_list8:SetFixOverByCheck( true )
g_pRadioButton_list8:SetShowOffBGByCheck( true )

g_pRadioButton_list8:SetName( "list8" )

g_pRadioButton_list8:SetNormalTex( "DLG_UI_BUTTON03.tga", "partybox_normal" )


g_pRadioButton_list8:SetOverTex( "DLG_UI_BUTTON03.tga", "partybox_over" )


g_pRadioButton_list8:SetCheckedTex( "DLG_UI_BUTTON03.tga", "partybox_over" )


g_pRadioButton_list8:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(549,182)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_list8:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(549,181)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_list8:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,
 
 	"LEFT_TOP		= D3DXVECTOR2(549,181)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(988,222)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_list8:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(549,181)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_list8:SetGroupID( 2 )

g_pRadioButton_list8:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_SLOT_CLICKED"] )
g_pRadioButton_list8:AddDummyInt( 7 )


g_pRadioButton_list8:SetEnableDoubleClick( true )
g_pRadioButton_list8:SetCustomMsgDoubleClicked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_SLOT_DOUBLE_CLICKED"] )
g_pRadioButton_list8:SetCustomMsgRButtonUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_SLOT_RCLICKED"] )






g_pRadioButton_list9 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_list9 )

g_pRadioButton_list9:SetFixOverByCheck( true )
g_pRadioButton_list9:SetShowOffBGByCheck( true )

g_pRadioButton_list9:SetName( "list9" )

g_pRadioButton_list9:SetNormalTex( "DLG_UI_BUTTON03.tga", "partybox_normal" )


g_pRadioButton_list9:SetOverTex( "DLG_UI_BUTTON03.tga", "partybox_over" )


g_pRadioButton_list9:SetCheckedTex( "DLG_UI_BUTTON03.tga", "partybox_over" )


g_pRadioButton_list9:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(549,224)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_list9:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(549,223)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_list9:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,
 
 	"LEFT_TOP		= D3DXVECTOR2(549,223)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(988,264)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_list9:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(549,223)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_list9:SetGroupID( 2 )

g_pRadioButton_list9:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_SLOT_CLICKED"] )
g_pRadioButton_list9:AddDummyInt( 8 )


g_pRadioButton_list9:SetEnableDoubleClick( true )
g_pRadioButton_list9:SetCustomMsgDoubleClicked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_SLOT_DOUBLE_CLICKED"] )
g_pRadioButton_list9:SetCustomMsgRButtonUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_SLOT_RCLICKED"] )






g_pRadioButton_list10 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_list10 )

g_pRadioButton_list10:SetFixOverByCheck( true )
g_pRadioButton_list10:SetShowOffBGByCheck( true )

g_pRadioButton_list10:SetName( "list10" )

g_pRadioButton_list10:SetNormalTex( "DLG_UI_BUTTON03.tga", "partybox_normal" )


g_pRadioButton_list10:SetOverTex( "DLG_UI_BUTTON03.tga", "partybox_over" )


g_pRadioButton_list10:SetCheckedTex( "DLG_UI_BUTTON03.tga", "partybox_over" )


g_pRadioButton_list10:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(549,266)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_list10:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(549,265)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_list10:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,
 
 	"LEFT_TOP		= D3DXVECTOR2(549,265)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(988,306)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_list10:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(549,265)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_list10:SetGroupID( 2 )


g_pRadioButton_list10:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_SLOT_CLICKED"] )
g_pRadioButton_list10:AddDummyInt( 9 )


g_pRadioButton_list10:SetEnableDoubleClick( true )
g_pRadioButton_list10:SetCustomMsgDoubleClicked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_SLOT_DOUBLE_CLICKED"] )
g_pRadioButton_list10:SetCustomMsgRButtonUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_SLOT_RCLICKED"] )





g_pRadioButton_list11 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_list11 )

g_pRadioButton_list11:SetFixOverByCheck( true )
g_pRadioButton_list11:SetShowOffBGByCheck( true )

g_pRadioButton_list11:SetName( "list11" )

g_pRadioButton_list11:SetNormalTex( "DLG_UI_BUTTON03.tga", "partybox_normal" )


g_pRadioButton_list11:SetOverTex( "DLG_UI_BUTTON03.tga", "partybox_over" )


g_pRadioButton_list11:SetCheckedTex( "DLG_UI_BUTTON03.tga", "partybox_over" )


g_pRadioButton_list11:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(549,308)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_list11:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(549,307)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_list11:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,
 
 	"LEFT_TOP		= D3DXVECTOR2(549,307)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(988,348)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_list11:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(549,307)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_list11:SetGroupID( 2 )


g_pRadioButton_list11:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_SLOT_CLICKED"] )
g_pRadioButton_list11:AddDummyInt( 10 )



g_pRadioButton_list11:SetEnableDoubleClick( true )
g_pRadioButton_list11:SetCustomMsgDoubleClicked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_SLOT_DOUBLE_CLICKED"] )
g_pRadioButton_list11:SetCustomMsgRButtonUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_SLOT_RCLICKED"] )












g_pRadioButton_list12 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_list12 )

g_pRadioButton_list12:SetFixOverByCheck( true )
g_pRadioButton_list12:SetShowOffBGByCheck( true )

g_pRadioButton_list12:SetName( "list12" )

g_pRadioButton_list12:SetNormalTex( "DLG_UI_BUTTON03.tga", "partybox_normal" )


g_pRadioButton_list12:SetOverTex( "DLG_UI_BUTTON03.tga", "partybox_over" )


g_pRadioButton_list12:SetCheckedTex( "DLG_UI_BUTTON03.tga", "partybox_over" )


g_pRadioButton_list12:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(549,350)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_list12:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(549,349)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_list12:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,
 
 	"LEFT_TOP		= D3DXVECTOR2(549,349)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(988,390)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_list12:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(549,349)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_list12:SetGroupID( 2 )


g_pRadioButton_list12:SetCustomMsgChecked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_SLOT_CLICKED"] )
g_pRadioButton_list12:AddDummyInt( 11 )




g_pRadioButton_list12:SetEnableDoubleClick( true )
g_pRadioButton_list12:SetCustomMsgDoubleClicked( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_SLOT_DOUBLE_CLICKED"] )
g_pRadioButton_list12:SetCustomMsgRButtonUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_SLOT_RCLICKED"] )







--------------------  레벨 제한표시 
g_pStaticLimit_sign = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticLimit_sign )
g_pStaticLimit_sign:SetName( "Level_Limit1" )
g_pPictureSign1 = g_pUIDialog:CreatePicture()
g_pStaticLimit_sign:AddPicture( g_pPictureSign1 )

g_pPictureSign1:SetTex( "DLG_UI_Common_Texture02.TGA", "level_limit" )

g_pPictureSign1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(109,145)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStaticLimit_sign = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticLimit_sign )
g_pStaticLimit_sign:SetName( "Level_Limit2" )
g_pPictureSign2 = g_pUIDialog:CreatePicture()
g_pStaticLimit_sign:AddPicture( g_pPictureSign2 )
g_pPictureSign2:SetTex( "DLG_UI_Common_Texture02.TGA", "level_limit" )
g_pPictureSign2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(109,145+42)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticLimit_sign = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticLimit_sign )
g_pStaticLimit_sign:SetName( "Level_Limit3" )
g_pPictureSign3 = g_pUIDialog:CreatePicture()
g_pStaticLimit_sign:AddPicture( g_pPictureSign3 )
g_pPictureSign3:SetTex( "DLG_UI_Common_Texture02.TGA", "level_limit" )
g_pPictureSign3:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(109,145+84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticLimit_sign = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticLimit_sign )
g_pStaticLimit_sign:SetName( "Level_Limit4" )
g_pPictureSign4 = g_pUIDialog:CreatePicture()
g_pStaticLimit_sign:AddPicture( g_pPictureSign4 )
g_pPictureSign4:SetTex( "DLG_UI_Common_Texture02.TGA", "level_limit" )
g_pPictureSign4:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(109,145+126)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticLimit_sign = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticLimit_sign )
g_pStaticLimit_sign:SetName( "Level_Limit5" )
g_pPictureSign5 = g_pUIDialog:CreatePicture()
g_pStaticLimit_sign:AddPicture( g_pPictureSign5 )
g_pPictureSign5:SetTex( "DLG_UI_Common_Texture02.TGA", "level_limit" )
g_pPictureSign5:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(109,145+168)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticLimit_sign = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticLimit_sign )
g_pStaticLimit_sign:SetName( "Level_Limit6" )
g_pPictureSign6 = g_pUIDialog:CreatePicture()
g_pStaticLimit_sign:AddPicture( g_pPictureSign6 )
g_pPictureSign6:SetTex( "DLG_UI_Common_Texture02.TGA", "level_limit" )
g_pPictureSign6:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(109,145+210)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticLimit_sign = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticLimit_sign )
g_pStaticLimit_sign:SetName( "Level_Limit7" )
g_pPictureSign7 = g_pUIDialog:CreatePicture()
g_pStaticLimit_sign:AddPicture( g_pPictureSign7 )
g_pPictureSign7:SetTex( "DLG_UI_Common_Texture02.TGA", "level_limit" )
g_pPictureSign7:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(556,145)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticLimit_sign = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticLimit_sign )
g_pStaticLimit_sign:SetName( "Level_Limit8" )
g_pPictureSign8 = g_pUIDialog:CreatePicture()
g_pStaticLimit_sign:AddPicture( g_pPictureSign8 )
g_pPictureSign8:SetTex( "DLG_UI_Common_Texture02.TGA", "level_limit" )
g_pPictureSign8:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(556,145+42)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticLimit_sign = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticLimit_sign )
g_pStaticLimit_sign:SetName( "Level_Limit9" )
g_pPictureSign9 = g_pUIDialog:CreatePicture()
g_pStaticLimit_sign:AddPicture( g_pPictureSign9 )
g_pPictureSign9:SetTex( "DLG_UI_Common_Texture02.TGA", "level_limit" )
g_pPictureSign9:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(556,145+84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticLimit_sign = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticLimit_sign )
g_pStaticLimit_sign:SetName( "Level_Limit10" )
g_pPictureSign10 = g_pUIDialog:CreatePicture()
g_pStaticLimit_sign:AddPicture( g_pPictureSign10 )
g_pPictureSign10:SetTex( "DLG_UI_Common_Texture02.TGA", "level_limit" )
g_pPictureSign10:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(556,145+126)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticLimit_sign = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticLimit_sign )
g_pStaticLimit_sign:SetName( "Level_Limit11" )
g_pPictureSign11 = g_pUIDialog:CreatePicture()
g_pStaticLimit_sign:AddPicture( g_pPictureSign11 )
g_pPictureSign11:SetTex( "DLG_UI_Common_Texture02.TGA", "level_limit" )
g_pPictureSign11:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(556,145+168)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticLimit_sign = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticLimit_sign )
g_pStaticLimit_sign:SetName( "Level_Limit12" )
g_pPictureSign12 = g_pUIDialog:CreatePicture()
g_pStaticLimit_sign:AddPicture( g_pPictureSign12 )
g_pPictureSign12:SetTex( "DLG_UI_Common_Texture02.TGA", "level_limit" )
g_pPictureSign12:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(556,145+210)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------------------- 휴면 복귀 유저 표시
g_pStaticPower_sign = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPower_sign )
g_pStaticPower_sign:SetName( "Power1" )
g_pPicturePower1 = g_pUIDialog:CreatePicture()
g_pStaticPower_sign:AddPicture( g_pPicturePower1 )
g_pPicturePower1:SetTex( "DLG_UI_Common_Texture02.TGA", "Power" )
g_pPicturePower1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(106,161)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticPower_sign = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPower_sign )
g_pStaticPower_sign:SetName( "Power2" )
g_pPicturePower2 = g_pUIDialog:CreatePicture()
g_pStaticPower_sign:AddPicture( g_pPicturePower2 )
g_pPicturePower2:SetTex( "DLG_UI_Common_Texture02.TGA", "Power" )
g_pPicturePower2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(106,145+42+16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticPower_sign = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPower_sign )
g_pStaticPower_sign:SetName( "Power3" )
g_pPicturePower3 = g_pUIDialog:CreatePicture()
g_pStaticPower_sign:AddPicture( g_pPicturePower3 )
g_pPicturePower3:SetTex( "DLG_UI_Common_Texture02.TGA", "Power" )
g_pPicturePower3:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(106,145+84+16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticPower_sign = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPower_sign )
g_pStaticPower_sign:SetName( "Power4" )
g_pPicturePower4 = g_pUIDialog:CreatePicture()
g_pStaticPower_sign:AddPicture( g_pPicturePower4 )
g_pPicturePower4:SetTex( "DLG_UI_Common_Texture02.TGA", "Power" )
g_pPicturePower4:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(106,145+126+16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticPower_sign = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPower_sign )
g_pStaticPower_sign:SetName( "Power5" )
g_pPicturePower5 = g_pUIDialog:CreatePicture()
g_pStaticPower_sign:AddPicture( g_pPicturePower5 )
g_pPicturePower5:SetTex( "DLG_UI_Common_Texture02.TGA", "Power" )
g_pPicturePower5:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(106,145+168+16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticPower_sign = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPower_sign )
g_pStaticPower_sign:SetName( "Power6" )
g_pPicturePower6 = g_pUIDialog:CreatePicture()
g_pStaticPower_sign:AddPicture( g_pPicturePower6 )
g_pPicturePower6:SetTex( "DLG_UI_Common_Texture02.TGA", "Power" )
g_pPicturePower6:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(106,145+210+16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticPower_sign = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPower_sign )
g_pStaticPower_sign:SetName( "Power7" )
g_pPicturePower7 = g_pUIDialog:CreatePicture()
g_pStaticPower_sign:AddPicture( g_pPicturePower7 )
g_pPicturePower7:SetTex( "DLG_UI_Common_Texture02.TGA", "Power" )
g_pPicturePower7:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(554,145+16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticPower_sign = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPower_sign )
g_pStaticPower_sign:SetName( "Power8" )
g_pPicturePower8 = g_pUIDialog:CreatePicture()
g_pStaticPower_sign:AddPicture( g_pPicturePower8 )
g_pPicturePower8:SetTex( "DLG_UI_Common_Texture02.TGA", "Power" )
g_pPicturePower8:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(554,145+42+16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticPower_sign = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPower_sign )
g_pStaticPower_sign:SetName( "Power9" )
g_pPicturePower9 = g_pUIDialog:CreatePicture()
g_pStaticPower_sign:AddPicture( g_pPicturePower9 )
g_pPicturePower9:SetTex( "DLG_UI_Common_Texture02.TGA", "Power" )
g_pPicturePower9:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(554,145+84+16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticPower_sign = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPower_sign )
g_pStaticPower_sign:SetName( "Power10" )
g_pPicturePower10 = g_pUIDialog:CreatePicture()
g_pStaticPower_sign:AddPicture( g_pPicturePower10 )
g_pPicturePower10:SetTex( "DLG_UI_Common_Texture02.TGA", "Power" )
g_pPicturePower10:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(554,145+126+16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticPower_sign = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPower_sign )
g_pStaticPower_sign:SetName( "Power11" )
g_pPicturePower11 = g_pUIDialog:CreatePicture()
g_pStaticPower_sign:AddPicture( g_pPicturePower11 )
g_pPicturePower11:SetTex( "DLG_UI_Common_Texture02.TGA", "Power" )
g_pPicturePower11:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(554,145+168+16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticPower_sign = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPower_sign )
g_pStaticPower_sign:SetName( "Power12" )
g_pPicturePower12 = g_pUIDialog:CreatePicture()
g_pStaticPower_sign:AddPicture( g_pPicturePower12 )
g_pPicturePower12:SetTex( "DLG_UI_Common_Texture02.TGA", "Power" )
g_pPicturePower12:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(554,145+210+16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



---------------------- 던전 명


g_pStatic_dungeon1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_dungeon1 )
g_pStatic_dungeon1:SetName( "dungeon1" )

g_pStatic_dungeon1:AddString
{
	MSG 			= STR_ID_1340,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(130,152)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}



g_pStatic_dungeon2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_dungeon2 )
g_pStatic_dungeon2:SetName( "dungeon2" )

g_pStatic_dungeon2:AddString
{
	MSG 			= STR_ID_1341,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(130,196)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStatic_dungeon3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_dungeon3 )
g_pStatic_dungeon3:SetName( "dungeon3" )

g_pStatic_dungeon3:AddString
{
	MSG 			= STR_ID_1342,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(130,238)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}



g_pStatic_dungeon4 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_dungeon4 )
g_pStatic_dungeon4:SetName( "dungeon4" )

g_pStatic_dungeon4:AddString
{
	MSG 			= STR_ID_1343,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(130,280)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStatic_dungeon5 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_dungeon5 )
g_pStatic_dungeon5:SetName( "dungeon5" )

g_pStatic_dungeon5:AddString
{
	MSG 			= STR_ID_1343,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(130,320)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStatic_dungeon6 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_dungeon6 )
g_pStatic_dungeon6:SetName( "dungeon6" )

g_pStatic_dungeon6:AddString
{
	MSG 			= STR_ID_1342,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(130,362)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}



g_pStatic_dungeon7 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_dungeon7 )
g_pStatic_dungeon7:SetName( "dungeon7" )

g_pStatic_dungeon7:AddString
{
	MSG 			= STR_ID_1340,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(576,152)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}



g_pStatic_dungeon8 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_dungeon8 )
g_pStatic_dungeon8:SetName( "dungeon8" )

g_pStatic_dungeon8:AddString
{
	MSG 			= STR_ID_1341,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(576,196)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStatic_dungeon9 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_dungeon9 )
g_pStatic_dungeon9:SetName( "dungeon9" )

g_pStatic_dungeon9:AddString
{
	MSG 			= STR_ID_1342,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(576,238)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}



g_pStatic_dungeon10 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_dungeon10 )
g_pStatic_dungeon10:SetName( "dungeon10" )

g_pStatic_dungeon10:AddString
{
	MSG 			= STR_ID_1343,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(576,280)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStatic_dungeon11 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_dungeon11 )
g_pStatic_dungeon11:SetName( "dungeon11" )

g_pStatic_dungeon11:AddString
{
	MSG 			= STR_ID_1343,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(576,320)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStatic_dungeon12 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_dungeon12 )
g_pStatic_dungeon12:SetName( "dungeon12" )

g_pStatic_dungeon12:AddString
{
	MSG 			= STR_ID_1342,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(576,362)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}






-----------난이도


g_pStatic_partylist1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_partylist1 )
g_pStatic_partylist1:SetName( "partylist1" )



g_pPicture_dgeree1 = g_pUIDialog:CreatePicture()
g_pStatic_partylist1:AddPicture( g_pPicture_dgeree1 )

g_pPicture_dgeree1:SetTex( "DLG_UI_Title01_A.TGA", "common" )

g_pPicture_dgeree1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(223,154)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_dgeree1 = g_pUIDialog:CreatePicture()
g_pStatic_partylist1:AddPicture( g_pPicture_dgeree1 )

g_pPicture_dgeree1:SetTex( "DLG_UI_Title01_A.TGA", "diffcult" )

g_pPicture_dgeree1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(223,154)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_dgeree1 = g_pUIDialog:CreatePicture()
g_pStatic_partylist1:AddPicture( g_pPicture_dgeree1 )

g_pPicture_dgeree1:SetTex( "DLG_UI_Title01_A.TGA", "very_diffcult" )

g_pPicture_dgeree1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(223,154)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_dgeree1 = g_pUIDialog:CreatePicture()
g_pStatic_partylist1:AddPicture( g_pPicture_dgeree1 )

g_pPicture_dgeree1:SetTex( "DLG_UI_Title01_A.TGA", "Henir_Normal" )

g_pPicture_dgeree1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(223,154)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_dgeree1 = g_pUIDialog:CreatePicture()
g_pStatic_partylist1:AddPicture( g_pPicture_dgeree1 )

g_pPicture_dgeree1:SetTex( "DLG_UI_Title01_A.TGA", "Henir_Challenge" )

g_pPicture_dgeree1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(223,154)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--{{ 비밀던전 난이도
g_pPicture_dgeree1 = g_pUIDialog:CreatePicture()
g_pStatic_partylist1:AddPicture( g_pPicture_dgeree1 )

g_pPicture_dgeree1:SetTex( "DLG_UI_Title01_A.TGA", "Hell" )

g_pPicture_dgeree1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(223,154)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--}} 비밀 던전 난이도



g_pStatic_partylist2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_partylist2 )
g_pStatic_partylist2:SetName( "partylist2" )




g_pPicture_dgeree2 = g_pUIDialog:CreatePicture()
g_pStatic_partylist2:AddPicture( g_pPicture_dgeree2 )

g_pPicture_dgeree2:SetTex( "DLG_UI_Title01_A.TGA", "common" )

g_pPicture_dgeree2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(223,195)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_dgeree2 = g_pUIDialog:CreatePicture()
g_pStatic_partylist2:AddPicture( g_pPicture_dgeree2 )

g_pPicture_dgeree2:SetTex( "DLG_UI_Title01_A.TGA", "diffcult" )

g_pPicture_dgeree2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(223,195)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_dgeree2 = g_pUIDialog:CreatePicture()
g_pStatic_partylist2:AddPicture( g_pPicture_dgeree2 )

g_pPicture_dgeree2:SetTex( "DLG_UI_Title01_A.TGA", "very_diffcult" )

g_pPicture_dgeree2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(223,195)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_dgeree2 = g_pUIDialog:CreatePicture()
g_pStatic_partylist2:AddPicture( g_pPicture_dgeree2 )

g_pPicture_dgeree2:SetTex( "DLG_UI_Title01_A.TGA", "Henir_Normal" )

g_pPicture_dgeree2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(223,195)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_dgeree2 = g_pUIDialog:CreatePicture()
g_pStatic_partylist2:AddPicture( g_pPicture_dgeree2 )

g_pPicture_dgeree2:SetTex( "DLG_UI_Title01_A.TGA", "Henir_Challenge" )

g_pPicture_dgeree2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(223,195)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--{{ 비밀던전 난이도
g_pPicture_dgeree2 = g_pUIDialog:CreatePicture()
g_pStatic_partylist2:AddPicture( g_pPicture_dgeree2 )

g_pPicture_dgeree2:SetTex( "DLG_UI_Title01_A.TGA", "Hell" )

g_pPicture_dgeree2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(223,195)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--}} 비밀던전 난이도





g_pStatic_partylist3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_partylist3 )
g_pStatic_partylist3:SetName( "partylist3" )


g_pPicture_dgeree3 = g_pUIDialog:CreatePicture()
g_pStatic_partylist3:AddPicture( g_pPicture_dgeree3 )

g_pPicture_dgeree3:SetTex( "DLG_UI_Title01_A.TGA", "common" )

g_pPicture_dgeree3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(223,236)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_dgeree3 = g_pUIDialog:CreatePicture()
g_pStatic_partylist3:AddPicture( g_pPicture_dgeree3 )

g_pPicture_dgeree3:SetTex( "DLG_UI_Title01_A.TGA", "diffcult" )

g_pPicture_dgeree3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(223,236)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_dgeree3 = g_pUIDialog:CreatePicture()
g_pStatic_partylist3:AddPicture( g_pPicture_dgeree3 )

g_pPicture_dgeree3:SetTex( "DLG_UI_Title01_A.TGA", "very_diffcult" )

g_pPicture_dgeree3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(223,236)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_dgeree3 = g_pUIDialog:CreatePicture()
g_pStatic_partylist3:AddPicture( g_pPicture_dgeree3 )

g_pPicture_dgeree3:SetTex( "DLG_UI_Title01_A.TGA", "Henir_Normal" )

g_pPicture_dgeree3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(223,236)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_dgeree3 = g_pUIDialog:CreatePicture()
g_pStatic_partylist3:AddPicture( g_pPicture_dgeree3 )

g_pPicture_dgeree3:SetTex( "DLG_UI_Title01_A.TGA", "Henir_Challenge" )

g_pPicture_dgeree3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(223,236)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--{{ 비밀던전 난이도
g_pPicture_dgeree3 = g_pUIDialog:CreatePicture()
g_pStatic_partylist3:AddPicture( g_pPicture_dgeree3 )

g_pPicture_dgeree3:SetTex( "DLG_UI_Title01_A.TGA", "Hell" )

g_pPicture_dgeree3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(223,236)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--}} 비밀던전 난이도





g_pStatic_partylist4 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_partylist4 )
g_pStatic_partylist4:SetName( "partylist4" )



g_pPicture_dgeree4 = g_pUIDialog:CreatePicture()
g_pStatic_partylist4:AddPicture( g_pPicture_dgeree4 )

g_pPicture_dgeree4:SetTex( "DLG_UI_Title01_A.TGA", "common" )

g_pPicture_dgeree4:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(221,280)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_dgeree4 = g_pUIDialog:CreatePicture()
g_pStatic_partylist4:AddPicture( g_pPicture_dgeree4 )

g_pPicture_dgeree4:SetTex( "DLG_UI_Title01_A.TGA", "diffcult" )

g_pPicture_dgeree4:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(221,280)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_dgeree4 = g_pUIDialog:CreatePicture()
g_pStatic_partylist4:AddPicture( g_pPicture_dgeree4 )

g_pPicture_dgeree4:SetTex( "DLG_UI_Title01_A.TGA", "very_diffcult" )

g_pPicture_dgeree4:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(221,280)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_dgeree4 = g_pUIDialog:CreatePicture()
g_pStatic_partylist4:AddPicture( g_pPicture_dgeree4 )

g_pPicture_dgeree4:SetTex( "DLG_UI_Title01_A.TGA", "Henir_Normal" )

g_pPicture_dgeree4:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(223,280)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_dgeree4 = g_pUIDialog:CreatePicture()
g_pStatic_partylist4:AddPicture( g_pPicture_dgeree4 )

g_pPicture_dgeree4:SetTex( "DLG_UI_Title01_A.TGA", "Henir_Challenge" )

g_pPicture_dgeree4:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(223,280)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--{{ 비밀던전 난이도
g_pPicture_dgeree4 = g_pUIDialog:CreatePicture()
g_pStatic_partylist4:AddPicture( g_pPicture_dgeree4 )

g_pPicture_dgeree4:SetTex( "DLG_UI_Title01_A.TGA", "Hell" )

g_pPicture_dgeree4:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(223,280)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--}} 비밀던전 난이도




g_pStatic_partylist5 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_partylist5 )
g_pStatic_partylist5:SetName( "partylist5" )



g_pPicture_dgeree5 = g_pUIDialog:CreatePicture()
g_pStatic_partylist5:AddPicture( g_pPicture_dgeree5 )

g_pPicture_dgeree5:SetTex( "DLG_UI_Title01_A.TGA", "common" )

g_pPicture_dgeree5:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(221,318)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_dgeree5 = g_pUIDialog:CreatePicture()
g_pStatic_partylist5:AddPicture( g_pPicture_dgeree5 )

g_pPicture_dgeree5:SetTex( "DLG_UI_Title01_A.TGA", "diffcult" )

g_pPicture_dgeree5:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(221,318)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_dgeree5 = g_pUIDialog:CreatePicture()
g_pStatic_partylist5:AddPicture( g_pPicture_dgeree5 )

g_pPicture_dgeree5:SetTex( "DLG_UI_Title01_A.TGA", "very_diffcult" )

g_pPicture_dgeree5:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(221,318)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_dgeree5 = g_pUIDialog:CreatePicture()
g_pStatic_partylist5:AddPicture( g_pPicture_dgeree5 )

g_pPicture_dgeree5:SetTex( "DLG_UI_Title01_A.TGA", "Henir_Normal" )

g_pPicture_dgeree5:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(223,318)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_dgeree5 = g_pUIDialog:CreatePicture()
g_pStatic_partylist5:AddPicture( g_pPicture_dgeree5 )

g_pPicture_dgeree5:SetTex( "DLG_UI_Title01_A.TGA", "Henir_Challenge" )

g_pPicture_dgeree5:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(223,318)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--{{ 비밀던전 난이도
g_pPicture_dgeree5 = g_pUIDialog:CreatePicture()
g_pStatic_partylist5:AddPicture( g_pPicture_dgeree5 )

g_pPicture_dgeree5:SetTex( "DLG_UI_Title01_A.TGA", "Hell" )

g_pPicture_dgeree5:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(223,318)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--}} 비밀던전 난이도




g_pStatic_partylist6 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_partylist6 )
g_pStatic_partylist6:SetName( "partylist6" )




g_pPicture_dgeree6 = g_pUIDialog:CreatePicture()
g_pStatic_partylist6:AddPicture( g_pPicture_dgeree6 )

g_pPicture_dgeree6:SetTex( "DLG_UI_Title01_A.TGA", "common" )

g_pPicture_dgeree6:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(221,359)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_dgeree6 = g_pUIDialog:CreatePicture()
g_pStatic_partylist6:AddPicture( g_pPicture_dgeree6 )

g_pPicture_dgeree6:SetTex( "DLG_UI_Title01_A.TGA", "diffcult" )

g_pPicture_dgeree6:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(221,359)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_dgeree6 = g_pUIDialog:CreatePicture()
g_pStatic_partylist6:AddPicture( g_pPicture_dgeree6 )

g_pPicture_dgeree6:SetTex( "DLG_UI_Title01_A.TGA", "very_diffcult" )

g_pPicture_dgeree6:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(221,359)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_dgeree6 = g_pUIDialog:CreatePicture()
g_pStatic_partylist6:AddPicture( g_pPicture_dgeree6 )

g_pPicture_dgeree6:SetTex( "DLG_UI_Title01_A.TGA", "Henir_Normal" )

g_pPicture_dgeree6:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(223,359)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_dgeree6 = g_pUIDialog:CreatePicture()
g_pStatic_partylist6:AddPicture( g_pPicture_dgeree6 )

g_pPicture_dgeree6:SetTex( "DLG_UI_Title01_A.TGA", "Henir_Challenge" )

g_pPicture_dgeree6:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(223,359)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--{{ 비밀던전 난이도
g_pPicture_dgeree6 = g_pUIDialog:CreatePicture()
g_pStatic_partylist6:AddPicture( g_pPicture_dgeree6 )

g_pPicture_dgeree6:SetTex( "DLG_UI_Title01_A.TGA", "Hell" )

g_pPicture_dgeree6:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(223,359)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--}} 비밀던전 난이도




g_pStatic_partylist7 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_partylist7 )
g_pStatic_partylist7:SetName( "partylist7" )



g_pPicture_dgeree7 = g_pUIDialog:CreatePicture()
g_pStatic_partylist7:AddPicture( g_pPicture_dgeree7 )

g_pPicture_dgeree7:SetTex( "DLG_UI_Title01_A.TGA", "common" )

g_pPicture_dgeree7:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(667,154)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_dgeree7 = g_pUIDialog:CreatePicture()
g_pStatic_partylist7:AddPicture( g_pPicture_dgeree7 )

g_pPicture_dgeree7:SetTex( "DLG_UI_Title01_A.TGA", "diffcult" )

g_pPicture_dgeree7:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(667,154)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_dgeree7 = g_pUIDialog:CreatePicture()
g_pStatic_partylist7:AddPicture( g_pPicture_dgeree7 )

g_pPicture_dgeree7:SetTex( "DLG_UI_Title01_A.TGA", "very_diffcult" )

g_pPicture_dgeree7:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(667,154)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_dgeree7 = g_pUIDialog:CreatePicture()
g_pStatic_partylist7:AddPicture( g_pPicture_dgeree7 )

g_pPicture_dgeree7:SetTex( "DLG_UI_Title01_A.TGA", "Henir_Normal" )

g_pPicture_dgeree7:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(667,154)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_dgeree7 = g_pUIDialog:CreatePicture()
g_pStatic_partylist7:AddPicture( g_pPicture_dgeree7 )

g_pPicture_dgeree7:SetTex( "DLG_UI_Title01_A.TGA", "Henir_Challenge" )

g_pPicture_dgeree7:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(667,154)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--{{ 비밀던전 난이도
g_pPicture_dgeree7 = g_pUIDialog:CreatePicture()
g_pStatic_partylist7:AddPicture( g_pPicture_dgeree7 )

g_pPicture_dgeree7:SetTex( "DLG_UI_Title01_A.TGA", "Hell" )

g_pPicture_dgeree7:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(667,154)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--}} 비밀던전 난이도


g_pStatic_partylist8 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_partylist8 )
g_pStatic_partylist8:SetName( "partylist8" )


g_pPicture_dgeree8 = g_pUIDialog:CreatePicture()
g_pStatic_partylist8:AddPicture( g_pPicture_dgeree8 )

g_pPicture_dgeree8:SetTex( "DLG_UI_Title01_A.TGA", "common" )

g_pPicture_dgeree8:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(667,195)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_dgeree8 = g_pUIDialog:CreatePicture()
g_pStatic_partylist8:AddPicture( g_pPicture_dgeree8 )

g_pPicture_dgeree8:SetTex( "DLG_UI_Title01_A.TGA", "diffcult" )

g_pPicture_dgeree8:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(667,195)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_dgeree8 = g_pUIDialog:CreatePicture()
g_pStatic_partylist8:AddPicture( g_pPicture_dgeree8 )

g_pPicture_dgeree8:SetTex( "DLG_UI_Title01_A.TGA", "very_diffcult" )

g_pPicture_dgeree8:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(667,195)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_dgeree8 = g_pUIDialog:CreatePicture()
g_pStatic_partylist8:AddPicture( g_pPicture_dgeree8 )

g_pPicture_dgeree8:SetTex( "DLG_UI_Title01_A.TGA", "Henir_Normal" )

g_pPicture_dgeree8:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(667,195)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_dgeree8 = g_pUIDialog:CreatePicture()
g_pStatic_partylist8:AddPicture( g_pPicture_dgeree8 )

g_pPicture_dgeree8:SetTex( "DLG_UI_Title01_A.TGA", "Henir_Challenge" )

g_pPicture_dgeree8:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(667,195)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--{{ 비밀던전 난이도
g_pPicture_dgeree8 = g_pUIDialog:CreatePicture()
g_pStatic_partylist8:AddPicture( g_pPicture_dgeree8 )

g_pPicture_dgeree8:SetTex( "DLG_UI_Title01_A.TGA", "Hell" )

g_pPicture_dgeree8:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(667,195)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--}} 비밀던전 난이도



g_pStatic_partylist9 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_partylist9 )
g_pStatic_partylist9:SetName( "partylist9" )




g_pPicture_dgeree9 = g_pUIDialog:CreatePicture()
g_pStatic_partylist9:AddPicture( g_pPicture_dgeree9 )

g_pPicture_dgeree9:SetTex( "DLG_UI_Title01_A.TGA", "common" )

g_pPicture_dgeree9:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(667,236)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_dgeree9 = g_pUIDialog:CreatePicture()
g_pStatic_partylist9:AddPicture( g_pPicture_dgeree9 )

g_pPicture_dgeree9:SetTex( "DLG_UI_Title01_A.TGA", "diffcult" )

g_pPicture_dgeree9:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(667,236)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_dgeree9 = g_pUIDialog:CreatePicture()
g_pStatic_partylist9:AddPicture( g_pPicture_dgeree9 )

g_pPicture_dgeree9:SetTex( "DLG_UI_Title01_A.TGA", "very_diffcult" )

g_pPicture_dgeree9:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(667,236)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_dgeree9 = g_pUIDialog:CreatePicture()
g_pStatic_partylist9:AddPicture( g_pPicture_dgeree9 )

g_pPicture_dgeree9:SetTex( "DLG_UI_Title01_A.TGA", "Henir_Normal" )

g_pPicture_dgeree9:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(667,236)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_dgeree9 = g_pUIDialog:CreatePicture()
g_pStatic_partylist9:AddPicture( g_pPicture_dgeree9 )

g_pPicture_dgeree9:SetTex( "DLG_UI_Title01_A.TGA", "Henir_Challenge" )

g_pPicture_dgeree9:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(667,236)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--{{ 비밀던전 난이도
g_pPicture_dgeree9 = g_pUIDialog:CreatePicture()
g_pStatic_partylist9:AddPicture( g_pPicture_dgeree9 )

g_pPicture_dgeree9:SetTex( "DLG_UI_Title01_A.TGA", "Hell" )

g_pPicture_dgeree9:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(667,236)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--}} 비밀던전 난이도


g_pStatic_partylist10 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_partylist10 )
g_pStatic_partylist10:SetName( "partylist10" )




g_pPicture_dgeree10 = g_pUIDialog:CreatePicture()
g_pStatic_partylist10:AddPicture( g_pPicture_dgeree10 )

g_pPicture_dgeree10:SetTex( "DLG_UI_Title01_A.TGA", "common" )

g_pPicture_dgeree10:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(667,279)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_dgeree10 = g_pUIDialog:CreatePicture()
g_pStatic_partylist10:AddPicture( g_pPicture_dgeree10 )

g_pPicture_dgeree10:SetTex( "DLG_UI_Title01_A.TGA", "diffcult" )

g_pPicture_dgeree10:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(667,279)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_dgeree10 = g_pUIDialog:CreatePicture()
g_pStatic_partylist10:AddPicture( g_pPicture_dgeree10 )

g_pPicture_dgeree10:SetTex( "DLG_UI_Title01_A.TGA", "very_diffcult" )

g_pPicture_dgeree10:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(667,279)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPicture_dgeree10 = g_pUIDialog:CreatePicture()
g_pStatic_partylist10:AddPicture( g_pPicture_dgeree10 )

g_pPicture_dgeree10:SetTex( "DLG_UI_Title01_A.TGA", "Henir_Normal" )

g_pPicture_dgeree10:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(667,279)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_dgeree10 = g_pUIDialog:CreatePicture()
g_pStatic_partylist10:AddPicture( g_pPicture_dgeree10 )

g_pPicture_dgeree10:SetTex( "DLG_UI_Title01_A.TGA", "Henir_Challenge" )

g_pPicture_dgeree10:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(667,279)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--{{ 비밀던전 난이도
g_pPicture_dgeree10 = g_pUIDialog:CreatePicture()
g_pStatic_partylist10:AddPicture( g_pPicture_dgeree10 )

g_pPicture_dgeree10:SetTex( "DLG_UI_Title01_A.TGA", "Hell" )

g_pPicture_dgeree10:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(667,279)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--}} 비밀던전 난이도

g_pStatic_partylist11 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_partylist11 )
g_pStatic_partylist11:SetName( "partylist11" )




g_pPicture_dgeree11 = g_pUIDialog:CreatePicture()
g_pStatic_partylist11:AddPicture( g_pPicture_dgeree11 )

g_pPicture_dgeree11:SetTex( "DLG_UI_Title01_A.TGA", "common" )

g_pPicture_dgeree11:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(667,322)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_dgeree11 = g_pUIDialog:CreatePicture()
g_pStatic_partylist11:AddPicture( g_pPicture_dgeree11 )

g_pPicture_dgeree11:SetTex( "DLG_UI_Title01_A.TGA", "diffcult" )

g_pPicture_dgeree11:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(667,322)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_dgeree11 = g_pUIDialog:CreatePicture()
g_pStatic_partylist11:AddPicture( g_pPicture_dgeree11 )

g_pPicture_dgeree11:SetTex( "DLG_UI_Title01_A.TGA", "very_diffcult" )

g_pPicture_dgeree11:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(667,322)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPicture_dgeree11 = g_pUIDialog:CreatePicture()
g_pStatic_partylist11:AddPicture( g_pPicture_dgeree11 )

g_pPicture_dgeree11:SetTex( "DLG_UI_Title01_A.TGA", "Henir_Normal" )

g_pPicture_dgeree11:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(667,322)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_dgeree11 = g_pUIDialog:CreatePicture()
g_pStatic_partylist11:AddPicture( g_pPicture_dgeree11 )

g_pPicture_dgeree11:SetTex( "DLG_UI_Title01_A.TGA", "Henir_Challenge" )

g_pPicture_dgeree11:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(667,322)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--{{ 비밀던전 난이도
g_pPicture_dgeree11 = g_pUIDialog:CreatePicture()
g_pStatic_partylist11:AddPicture( g_pPicture_dgeree11 )

g_pPicture_dgeree11:SetTex( "DLG_UI_Title01_A.TGA", "Hell" )

g_pPicture_dgeree11:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(667,322)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--}} 비밀던전 난이도

g_pStatic_partylist12 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_partylist12 )
g_pStatic_partylist12:SetName( "partylist12" )




g_pPicture_dgeree12 = g_pUIDialog:CreatePicture()
g_pStatic_partylist12:AddPicture( g_pPicture_dgeree12 )

g_pPicture_dgeree12:SetTex( "DLG_UI_Title01_A.TGA", "common" )

g_pPicture_dgeree12:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(667,363)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_dgeree12 = g_pUIDialog:CreatePicture()
g_pStatic_partylist12:AddPicture( g_pPicture_dgeree12 )

g_pPicture_dgeree12:SetTex( "DLG_UI_Title01_A.TGA", "diffcult" )

g_pPicture_dgeree12:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(667,363)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_dgeree12 = g_pUIDialog:CreatePicture()
g_pStatic_partylist12:AddPicture( g_pPicture_dgeree12 )

g_pPicture_dgeree12:SetTex( "DLG_UI_Title01_A.TGA", "very_diffcult" )

g_pPicture_dgeree12:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(667,363)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_dgeree12 = g_pUIDialog:CreatePicture()
g_pStatic_partylist12:AddPicture( g_pPicture_dgeree12 )

g_pPicture_dgeree12:SetTex( "DLG_UI_Title01_A.TGA", "Henir_Normal" )

g_pPicture_dgeree12:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(667,363)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_dgeree12 = g_pUIDialog:CreatePicture()
g_pStatic_partylist12:AddPicture( g_pPicture_dgeree12 )

g_pPicture_dgeree12:SetTex( "DLG_UI_Title01_A.TGA", "Henir_Challenge" )

g_pPicture_dgeree12:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(667,363)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--{{ 비밀던전 난이도
g_pPicture_dgeree12 = g_pUIDialog:CreatePicture()
g_pStatic_partylist12:AddPicture( g_pPicture_dgeree12 )

g_pPicture_dgeree12:SetTex( "DLG_UI_Title01_A.TGA", "Hell" )

g_pPicture_dgeree12:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(667,363)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--}} 비밀던전 난이도


--------------- 인원


g_pStatic_staff1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_staff1 )
g_pStatic_staff1:SetName( "staff1" )

g_pStatic_staff1:AddString
{
	-- MSG 			= "4/4",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(294,152)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}



g_pStatic_staff2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_staff2 )
g_pStatic_staff2:SetName( "staff2" )

g_pStatic_staff2:AddString
{
	-- MSG 			= "2/4",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(294,196)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStatic_staff3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_staff3 )
g_pStatic_staff3:SetName( "staff3" )

g_pStatic_staff3:AddString
{
	-- MSG 			= "1/2",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(294,238)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}



g_pStatic_staff4 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_staff4 )
g_pStatic_staff4:SetName( "staff4" )

g_pStatic_staff4:AddString
{
	-- MSG 			= "1/3",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(294,280)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStatic_staff5 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_staff5 )
g_pStatic_staff5:SetName( "staff5" )

g_pStatic_staff5:AddString
{
	-- MSG 			= "2/2",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(294,320)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStatic_staff6 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_staff6 )
g_pStatic_staff6:SetName( "staff6" )

g_pStatic_staff6:AddString
{
	-- MSG 			= "1/4",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(294,362)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}



g_pStatic_staff7 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_staff7 )
g_pStatic_staff7:SetName( "staff7" )

g_pStatic_staff7:AddString
{
	-- MSG 			= "2/3",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(739,152)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}



g_pStatic_staff8 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_staff8 )
g_pStatic_staff8:SetName( "staff8" )

g_pStatic_staff8:AddString
{
	-- MSG 			= "4/4",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(739,196)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStatic_staff9 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_staff9 )
g_pStatic_staff9:SetName( "staff9" )

g_pStatic_staff9:AddString
{
	-- MSG 			= "4/4",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(739,238)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}



g_pStatic_staff10 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_staff10 )
g_pStatic_staff10:SetName( "staff10" )

g_pStatic_staff10:AddString
{
	-- MSG 			= "3/4",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(739,280)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStatic_staff11 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_staff11 )
g_pStatic_staff11:SetName( "staff11" )

g_pStatic_staff11:AddString
{
	-- MSG 			= "1/2",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(739,320)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStatic_staff12 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_staff12 )
g_pStatic_staff12:SetName( "staff12" )

g_pStatic_staff12:AddString
{
	-- MSG 			= "1/1",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(739,362)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}



----------------- 파티 명


g_pStatic_name1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name1 )
g_pStatic_name1:SetName( "name1" )

g_pStatic_name1:AddString
{
	MSG 			= STR_ID_1344,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(346,154)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}



g_pStatic_name2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name2 )
g_pStatic_name2:SetName( "name2" )

g_pStatic_name2:AddString
{
	MSG 			= STR_ID_1345,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(346,195)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStatic_name3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name3 )
g_pStatic_name3:SetName( "name3" )

g_pStatic_name3:AddString
{
	MSG 			= STR_ID_1346,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(346,236)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}



g_pStatic_name4 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name4 )
g_pStatic_name4:SetName( "name4" )

g_pStatic_name4:AddString
{
	MSG 			= STR_ID_1347,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(346,279)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStatic_name5 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name5 )
g_pStatic_name5:SetName( "name5" )

g_pStatic_name5:AddString
{
	MSG 			= STR_ID_1348,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(346,320)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStatic_name6 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name6 )
g_pStatic_name6:SetName( "name6" )

g_pStatic_name6:AddString
{
	-- MSG 			= "돈말고 템을 줘~~~",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(346,362)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}



g_pStatic_name7 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name7 )
g_pStatic_name7:SetName( "name7" )

g_pStatic_name7:AddString
{
	MSG 			= STR_ID_1349,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(790,154)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}



g_pStatic_name8 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name8 )
g_pStatic_name8:SetName( "name8" )

g_pStatic_name8:AddString
{
	MSG 			= STR_ID_1350,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(790,196)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStatic_name9 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name9 )
g_pStatic_name9:SetName( "name9" )

g_pStatic_name9:AddString
{
	-- MSG 			= "쩔해주실분!!",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(790,238)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}



g_pStatic_name10 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name10 )
g_pStatic_name10:SetName( "name10" )

g_pStatic_name10:AddString
{
	MSG 			= STR_ID_1351,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(790,280)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStatic_name11 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name11 )
g_pStatic_name11:SetName( "name11" )

g_pStatic_name11:AddString
{
	-- MSG 			= "초딩들은 가라~~",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(790,321)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStatic_name12 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name12 )
g_pStatic_name12:SetName( "name12" )

g_pStatic_name12:AddString
{
	MSG 			= STR_ID_1352,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(790,364)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


--------------- 파티사기

g_pStatic_Fever1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Fever1 )
g_pStatic_Fever1:SetName( "Fever1" )

g_pStatic_Fever1:AddString
{
	-- MSG 			= "33/33",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(294+204,152)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}



g_pStatic_Fever2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Fever2 )
g_pStatic_Fever2:SetName( "Fever2" )

g_pStatic_Fever2:AddString
{
	-- MSG 			= "33/33",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(294+204,196)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStatic_Fever3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Fever3 )
g_pStatic_Fever3:SetName( "Fever3" )

g_pStatic_Fever3:AddString
{
	-- MSG 			= "33/33",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(294+204,238)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}



g_pStatic_Fever4 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Fever4 )
g_pStatic_Fever4:SetName( "Fever4" )

g_pStatic_Fever4:AddString
{
	-- MSG 			= "33/33",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(294+204,280)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStatic_Fever5 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Fever5 )
g_pStatic_Fever5:SetName( "Fever5" )

g_pStatic_Fever5:AddString
{
	-- MSG 			= "33/33",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(294+204,320)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStatic_Fever6 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Fever6 )
g_pStatic_Fever6:SetName( "Fever6" )

g_pStatic_Fever6:AddString
{
	-- MSG 			= "33/33",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(294+204,362)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}



g_pStatic_Fever7 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Fever7 )
g_pStatic_Fever7:SetName( "Fever7" )

g_pStatic_Fever7:AddString
{
	-- MSG 			= "33/33",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(739+204,152)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}



g_pStatic_Fever8 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Fever8 )
g_pStatic_Fever8:SetName( "Fever8" )

g_pStatic_Fever8:AddString
{
	-- MSG 			= "33/33",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(739+204,196)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStatic_Fever9 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Fever9 )
g_pStatic_Fever9:SetName( "Fever9" )

g_pStatic_Fever9:AddString
{
	-- MSG 			= "33/33",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(739+204,238)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}



g_pStatic_Fever10 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Fever10 )
g_pStatic_Fever10:SetName( "Fever10" )

g_pStatic_Fever10:AddString
{
	-- MSG 			= "33/33",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(739+204,280)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStatic_Fever11 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Fever11 )
g_pStatic_Fever11:SetName( "Fever11" )

g_pStatic_Fever11:AddString
{
	-- MSG 			= "11/22",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(739+204,320)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStatic_Fever12 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Fever12 )
g_pStatic_Fever12:SetName( "Fever12" )

g_pStatic_Fever12:AddString
{
	-- MSG 			= "11/11",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(739+204,362)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}






----------------EXIT 버튼


g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Exit" )
g_pButtonX:SetNormalTex( "DLG_UI_BUTTON01.tga", "EXIT_NORMAL" )

g_pButtonX:SetOverTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetDownTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(983,17)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(979,13)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(979+1,13+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_CLOSE_WINDOW"] )



----------    << 버튼


g_pButtonL_arrow = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonL_arrow )
g_pButtonL_arrow:SetName( "emulate_arrow" )
g_pButtonL_arrow:SetNormalTex( "DLG_UI_BUTTON01.tga", "L_arrow_normal" )

g_pButtonL_arrow:SetOverTex( "DLG_UI_BUTTON01.tga", "L_arrow_over" )

g_pButtonL_arrow:SetDownTex( "DLG_UI_BUTTON01.tga", "L_arrow_over" )

g_pButtonL_arrow:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(702,403)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(702,402)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(702+1,402+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_PREV_PAGE"] )


--->>  버튼

g_pButtonR_arrow = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonR_arrow )
g_pButtonR_arrow:SetName( "emulate_arrow" )
g_pButtonR_arrow:SetNormalTex( "DLG_UI_BUTTON01.tga", "R_arrow_normal" )

g_pButtonR_arrow:SetOverTex( "DLG_UI_BUTTON01.tga", "R_arrow_over" )

g_pButtonR_arrow:SetDownTex( "DLG_UI_BUTTON01.tga", "R_arrow_over" )

g_pButtonR_arrow:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(779,403)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(778,402)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(778+1,402+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_NEXT_PAGE"] )




-----페이지
g_pPicture_page= g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicture_page)

g_pPicture_page:SetTex( "DLG_UI_COMMON_TEXTURE01.TGA", "page_bar" )

g_pPicture_page:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(719,401)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-----페이지 번호

g_pStatic_number = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_number )
g_pStatic_number:SetName( "number" )

g_pStatic_number:AddString
{
	-- MSG 			= "1/3",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(747,407 + 4)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.7)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}



-----------------파티 참가



g_pButtonjoin = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonjoin )
g_pButtonjoin:SetName( "emulate_arrow" )
g_pButtonjoin:SetNormalTex( "DLG_UI_BUTTON02.tga", "join_normal" )

g_pButtonjoin:SetOverTex( "DLG_UI_BUTTON02.tga", "join_over" )

g_pButtonjoin:SetDownTex( "DLG_UI_BUTTON02.tga", "join_over" )

g_pButtonjoin:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(852,397)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonjoin:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(848,393)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonjoin:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(848+1,393+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonjoin:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_LIST_JOIN_PARTY"] )







--------------------p.s

g_pPicturePS = g_pUIDialog:CreatePicture()
g_pStatic_partylist:AddPicture( g_pPicturePS )

g_pPicturePS:SetTex( "DLG_UI_Common_Texture02.TGA", "feel" )

g_pPicturePS:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(105,402)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pStaticPS = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPS )
g_pStaticPS:SetName( "PS" )

g_pStaticPS:AddString
{
	MSG 			= STR_ID_1353,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(124,405)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.7)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}



