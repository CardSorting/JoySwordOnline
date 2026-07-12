-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStaticQust = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticQust )
g_pStaticQust:SetName( "PetList" )

g_pUIDialog:AddDummyPos( D3DXVECTOR3( 0, 0, 0 ) ) -- ?위치
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 436, 544, 0 ) ) -- Size
g_pUIDialog:SetCloseCustomUIEventID( PET_LIST_UI_CUSTOM_MESSAGE["PLUCM_CLOSE"] )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetPos(15,43+3)

 
--------------- Static
g_pStatic_Pat_List = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Pat_List )
g_pStatic_Pat_List:SetName( "g_pStatic_Pat_List" )


--------------- BG
g_pPicture_Pat_List_BG1 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_List:AddPicture( g_pPicture_Pat_List_BG1 )
g_pPicture_Pat_List_BG1:SetTex( "DLG_UI_Common_Texture39.TGA", "PAT_BG_BOTTOM" )

g_pPicture_Pat_List_BG1:SetPoint
{
    ADD_SIZE_X = 30,
	
	"LEFT_TOP		= D3DXVECTOR2(-15,-43-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_Pat_List_BG2 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_List:AddPicture( g_pPicture_Pat_List_BG2 )
g_pPicture_Pat_List_BG2:SetTex( "DLG_UI_Common_Texture39.TGA", "PAT_BG_MIDDLE" )

g_pPicture_Pat_List_BG2:SetPoint
{
    ADD_SIZE_X = 30,
	ADD_SIZE_Y = 500+40+20,
	
	"LEFT_TOP		= D3DXVECTOR2(-15,-43+19-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_Pat_List_BG3 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_List:AddPicture( g_pPicture_Pat_List_BG3 )
g_pPicture_Pat_List_BG3:SetTex( "DLG_UI_Common_Texture39.TGA", "PAT_BG_TOP" )

g_pPicture_Pat_List_BG3:SetPoint
{
    ADD_SIZE_X = 30,
	
	"LEFT_TOP		= D3DXVECTOR2(-15,520+1+20-3-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--------------- gray_BG
g_pPicture_Pat_List_BG1 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_List:AddPicture( g_pPicture_Pat_List_BG1 )
g_pPicture_Pat_List_BG1:SetTex( "DLG_UI_Common_Texture01.TGA", "INVEN_GRAY_TOP" )

g_pPicture_Pat_List_BG1:SetPoint
{
    ADD_SIZE_X = -47,
	
	"LEFT_TOP		= D3DXVECTOR2(3+3,-20+33-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_Pat_List_BG2 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_List:AddPicture( g_pPicture_Pat_List_BG2 )
g_pPicture_Pat_List_BG2:SetTex( "DLG_UI_Common_Texture01.TGA", "INVEN_GRAY_MIDDLE" )

g_pPicture_Pat_List_BG2:SetPoint
{
    ADD_SIZE_X = -47,
	ADD_SIZE_Y = 500+5-2,
	
	"LEFT_TOP		= D3DXVECTOR2(3+3,-20+10+33-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_Pat_List_BG3 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_List:AddPicture( g_pPicture_Pat_List_BG3 )
g_pPicture_Pat_List_BG3:SetTex( "DLG_UI_Common_Texture01.TGA", "INVEN_GRAY_BOTTOM" )

g_pPicture_Pat_List_BG3:SetPoint
{
    ADD_SIZE_X = -47,
	
	"LEFT_TOP		= D3DXVECTOR2(3+3,520+1+20+11-22+3-3-3-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


------Bg (탈것 탭 배경)

g_pPicture_Pat_List_BG1 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_List:AddPicture( g_pPicture_Pat_List_BG1 )
g_pPicture_Pat_List_BG1:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_win_top" )

g_pPicture_Pat_List_BG1:SetPoint
{

    ADD_SIZE_X =-44,

	"LEFT_TOP		= D3DXVECTOR2(10,43)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_Pat_List_BG2 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_List:AddPicture( g_pPicture_Pat_List_BG2 )
g_pPicture_Pat_List_BG2:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_win_middle" )

g_pPicture_Pat_List_BG2:SetPoint
{
    ADD_SIZE_X =-44,
	ADD_SIZE_Y = 465,
	
	"LEFT_TOP		= D3DXVECTOR2(10,43+11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_Pat_List_BG3 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_List:AddPicture( g_pPicture_Pat_List_BG3 )
g_pPicture_Pat_List_BG3:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_win_bottom" )

g_pPicture_Pat_List_BG3:SetPoint
{
    ADD_SIZE_X =-44,
	
	"LEFT_TOP		= D3DXVECTOR2(10,520+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--------------- 펫 텝 버튼 

g_pRadioButtonPetTab = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonPetTab )

g_pRadioButtonPetTab:SetFixOverByCheck( true )
g_pRadioButtonPetTab:SetShowOffBGByCheck( true )

g_pRadioButtonPetTab:SetName( "PET_LIST" )

g_pRadioButtonPetTab:SetNormalTex( "DLG_UI_Button_RidingPet_01.tga", "PET_NORMAL" )


g_pRadioButtonPetTab:SetOverTex( "DLG_UI_Button_RidingPet_01.tga", "PET_OVER" )


g_pRadioButtonPetTab:SetCheckedTex( "DLG_UI_Button_RidingPet_01.tga", "PET_DOWN" )


g_pRadioButtonPetTab:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(20,15+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonPetTab:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(20,15+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonPetTab:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(20,15+2)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(20+40,50)", 
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonPetTab:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(20,15-2)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonPetTab:SetGroupID( 1 )
g_pRadioButtonPetTab:SetCustomMsgChecked( PET_LIST_UI_CUSTOM_MESSAGE["PLUCM_PET_TAP_SELECT"] ) 
g_pRadioButtonPetTab:SetChecked(true)


--- 탈것 텝 버튼
g_pRadioButtonRidingPetTab = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonRidingPetTab )

g_pRadioButtonRidingPetTab:SetFixOverByCheck( true )
g_pRadioButtonRidingPetTab:SetShowOffBGByCheck( true )

g_pRadioButtonRidingPetTab:SetName( "RIDING_PET_LIST" )
g_pRadioButtonRidingPetTab:SetNormalTex( "DLG_UI_Button_RidingPet_01.tga", "RIDING_PET_NORMAL" )
g_pRadioButtonRidingPetTab:SetOverTex( "DLG_UI_Button_RidingPet_01.tga", "RIDING_PET_OVER" )
g_pRadioButtonRidingPetTab:SetCheckedTex( "DLG_UI_Button_RidingPet_01.tga", "RIDING_PET_DOWN" )
g_pRadioButtonRidingPetTab:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(20+40,15+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonRidingPetTab:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(20+40,15+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonRidingPetTab:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(20+40,15+2)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(20+40+40,50)", 
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonRidingPetTab:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(20+40,15-3+1)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonRidingPetTab:SetGroupID( 1 )
g_pRadioButtonRidingPetTab:SetCustomMsgChecked( PET_LIST_UI_CUSTOM_MESSAGE["PLUCM_RIDING_PET_TAP_SELECT"] )


--------------- EXIT 버튼

g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Cashshop_BuyWindow_Exit" )

g_pButtonX:SetNormalTex( "DLG_UI_BUTTON01.tga", "EXIT_NORMAL" )
g_pButtonX:SetOverTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )
g_pButtonX:SetDownTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(352+15,20-2-43)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(352-4+15,16-2-43)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(352+1-4+15,17-2-43)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( PET_LIST_UI_CUSTOM_MESSAGE["PLUCM_CLOSE"] )

--- 도움말 버튼 

g_pButton_Help = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Help )
g_pButton_Help:SetName( "_help" )
g_pButton_Help:SetNormalTex( "DLG_UI_Button14.tga", "Help_NORMAL" )

g_pButton_Help:SetOverTex( "DLG_UI_Button14.tga", "Help_OVER" )

g_pButton_Help:SetDownTex( "DLG_UI_Button14.tga", "Help_OVER" )

g_pButton_Help:SetNormalPoint
{
    "LEFT_TOP		= D3DXVECTOR2(352-26+15,20-2-43)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(352-4-26+15,16-2-43)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(352+1-4-26+15,17-2-43)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_OPEN_ELLIOS_GUIDE_GO_TO_PAGE"] )
g_pButton_Help:AddDummyInt(240)


--------------- 소환수 타이틀

g_pPicture_Pat_List_title= g_pUIDialog:CreatePicture()
g_pStatic_Pat_List:AddPicture( g_pPicture_Pat_List_title )
g_pPicture_Pat_List_title:SetTex( "DLG_UI_Common_Texture_RidingPet_01.TGA", "SUMMON_LIST_TITLE" )

g_pPicture_Pat_List_title:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(20-15,20-3-43-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




--------------- 펫 리스트 배경/타이틀
g_pPicture_Pat_List_Title_BG1 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_List:AddPicture( g_pPicture_Pat_List_Title_BG1 )
g_pPicture_Pat_List_Title_BG1:SetTex( "DLG_UI_Common_Texture39.TGA", "PAT_BG_GRAY_BOTTOM" )
g_pPicture_Pat_List_Title_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(20-1,51+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Pat_List_Title_BG2 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_List:AddPicture( g_pPicture_Pat_List_Title_BG2 )
g_pPicture_Pat_List_Title_BG2:SetTex( "DLG_UI_Common_Texture39.TGA", "PAT_BG_GRAY_MIDDLE" )

g_pPicture_Pat_List_Title_BG2:SetPoint
{
    ADD_SIZE_Y = 10,
	"LEFT_TOP		= D3DXVECTOR2(20-1,62+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Pat_List_Title_BG3 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_List:AddPicture( g_pPicture_Pat_List_Title_BG3 )
g_pPicture_Pat_List_Title_BG3:SetTex( "DLG_UI_Common_Texture39.TGA", "PAT_BG_GRAY_TOP" )

g_pPicture_Pat_List_Title_BG3:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(20-1,74+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




----펫 비활성화 BG

g_pStatic_Pat_ButtonBG = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Pat_ButtonBG )
g_pStatic_Pat_ButtonBG:SetName( "g_pStatic_Pat_ButtonBG" )


-------비활성화_BG 01
g_pPicture_Pat_List_Button_BG1 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_ButtonBG:AddPicture( g_pPicture_Pat_List_Button_BG1 )
g_pPicture_Pat_List_Button_BG1:SetTex( "DLG_UI_Common_Texture39.tga", "PAT_NAME_BG_NORMAL" )
g_pPicture_Pat_List_Button_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(20-1,93)",
	"COLOR			= D3DXCOLOR(0.7,0.7,0.7,0.5)",
	CHANGE_TIME		= 0.0,
}

--------비활성화_BG02
g_pPicture_Pat_List_Button_BG1 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_ButtonBG:AddPicture( g_pPicture_Pat_List_Button_BG1 )
g_pPicture_Pat_List_Button_BG1:SetTex( "DLG_UI_Common_Texture39.tga", "PAT_NAME_BG_NORMAL" )
g_pPicture_Pat_List_Button_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(20-1,158)",
	"COLOR			= D3DXCOLOR(0.7,0.7,0.7,0.5)",
	CHANGE_TIME		= 0.0,
}

---------비활성화_BG03
g_pPicture_Pat_List_Button_BG1 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_ButtonBG:AddPicture( g_pPicture_Pat_List_Button_BG1 )
g_pPicture_Pat_List_Button_BG1:SetTex( "DLG_UI_Common_Texture39.tga", "PAT_NAME_BG_NORMAL" )
g_pPicture_Pat_List_Button_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(20-1,223)",
	"COLOR			= D3DXCOLOR(0.7,0.7,0.7,0.5)",
	CHANGE_TIME		= 0.0,
}

-------비활성화_BG04
g_pPicture_Pat_List_Button_BG1 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_ButtonBG:AddPicture( g_pPicture_Pat_List_Button_BG1 )
g_pPicture_Pat_List_Button_BG1:SetTex( "DLG_UI_Common_Texture39.tga", "PAT_NAME_BG_NORMAL" )
g_pPicture_Pat_List_Button_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(20-1,288)",
	"COLOR			= D3DXCOLOR(0.7,0.7,0.7,0.5)",
	CHANGE_TIME		= 0.0,
}


------비활성화_BG05
g_pPicture_Pat_List_Button_BG1 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_ButtonBG:AddPicture( g_pPicture_Pat_List_Button_BG1 )
g_pPicture_Pat_List_Button_BG1:SetTex( "DLG_UI_Common_Texture39.tga", "PAT_NAME_BG_NORMAL" )
g_pPicture_Pat_List_Button_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(20-1,353)",
	"COLOR			= D3DXCOLOR(0.7,0.7,0.7,0.5)",
	CHANGE_TIME		= 0.0,
}


----비활성화_BG06
g_pPicture_Pat_List_Button_BG1 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_ButtonBG:AddPicture( g_pPicture_Pat_List_Button_BG1 )
g_pPicture_Pat_List_Button_BG1:SetTex( "DLG_UI_Common_Texture39.tga", "PAT_NAME_BG_NORMAL" )
g_pPicture_Pat_List_Button_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(20-1,418)",
	"COLOR			= D3DXCOLOR(0.7,0.7,0.7,0.5)",
	CHANGE_TIME		= 0.0,
}



--------------- 펫 리스트 타이틀(스트링)
g_pStatic_Pat_List_Title = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Pat_List_Title )
g_pStatic_Pat_List_Title:SetName( "Pat_List_Title" )

 g_pStatic_Pat_List_Title:AddString
{
 MSG    		 = STR_ID_5342, --"펫 리스트",
 FONT_INDEX      = XUF_DODUM_15_BOLD,
 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
 "POS            = D3DXVECTOR2(197,60)",
 "COLOR          = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.0)",
 }
 
 
 
-------------- 리스트
---- 버튼 01
g_pButton_Pet_Btn_List_Name = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Pet_Btn_List_Name )
g_pButton_Pet_Btn_List_Name:SetName( "Pet_Btn_List_Name1" )

g_pButton_Pet_Btn_List_Name:SetNormalTex( "DLG_UI_Common_Texture39.tga", "PAT_NAME_BG_NORMAL" )
g_pButton_Pet_Btn_List_Name:SetOverTex( "DLG_UI_Common_Texture39.tga", "PAT_NAME_BG_OVER" )
g_pButton_Pet_Btn_List_Name:SetDownTex( "DLG_UI_Common_Texture39.tga", "PAT_NAME_BG_OVER" )

g_pButton_Pet_Btn_List_Name:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(20-1,93)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pet_Btn_List_Name:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(20+1-1,93)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pet_Btn_List_Name:SetDownPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(20+2-1,93+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pet_Btn_List_Name:AddDummyInt(0)
g_pButton_Pet_Btn_List_Name:SetCustomMsgMouseUp( PET_LIST_UI_CUSTOM_MESSAGE["PLUCM_LIST_SELECT"] )

-----버튼 02
g_pButton_Pet_Btn_List_Name = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Pet_Btn_List_Name )
g_pButton_Pet_Btn_List_Name:SetName( "Pet_Btn_List_Name2" )

g_pButton_Pet_Btn_List_Name:SetNormalTex( "DLG_UI_Common_Texture39.tga", "PAT_NAME_BG_NORMAL" )
g_pButton_Pet_Btn_List_Name:SetOverTex( "DLG_UI_Common_Texture39.tga", "PAT_NAME_BG_OVER" )
g_pButton_Pet_Btn_List_Name:SetDownTex( "DLG_UI_Common_Texture39.tga", "PAT_NAME_BG_OVER" )

g_pButton_Pet_Btn_List_Name:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(20-1,158)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pet_Btn_List_Name:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(20+1-1,158)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pet_Btn_List_Name:SetDownPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(20+2-1,158+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pet_Btn_List_Name:AddDummyInt(1)
g_pButton_Pet_Btn_List_Name:SetCustomMsgMouseUp( PET_LIST_UI_CUSTOM_MESSAGE["PLUCM_LIST_SELECT"] )


---버튼 03
g_pButton_Pet_Btn_List_Name = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Pet_Btn_List_Name )
g_pButton_Pet_Btn_List_Name:SetName( "Pet_Btn_List_Name3" )

g_pButton_Pet_Btn_List_Name:SetNormalTex( "DLG_UI_Common_Texture39.tga", "PAT_NAME_BG_NORMAL" )
g_pButton_Pet_Btn_List_Name:SetOverTex( "DLG_UI_Common_Texture39.tga", "PAT_NAME_BG_OVER" )
g_pButton_Pet_Btn_List_Name:SetDownTex( "DLG_UI_Common_Texture39.tga", "PAT_NAME_BG_OVER" )

g_pButton_Pet_Btn_List_Name:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(20-1,223)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pet_Btn_List_Name:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(20+1-1,223)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pet_Btn_List_Name:SetDownPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(20+2-1,223+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pet_Btn_List_Name:AddDummyInt(2)
g_pButton_Pet_Btn_List_Name:SetCustomMsgMouseUp( PET_LIST_UI_CUSTOM_MESSAGE["PLUCM_LIST_SELECT"] )



---버튼 04
g_pButton_Pet_Btn_List_Name = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Pet_Btn_List_Name )
g_pButton_Pet_Btn_List_Name:SetName( "Pet_Btn_List_Name4" )

g_pButton_Pet_Btn_List_Name:SetNormalTex( "DLG_UI_Common_Texture39.tga", "PAT_NAME_BG_NORMAL" )
g_pButton_Pet_Btn_List_Name:SetOverTex( "DLG_UI_Common_Texture39.tga", "PAT_NAME_BG_OVER" )
g_pButton_Pet_Btn_List_Name:SetDownTex( "DLG_UI_Common_Texture39.tga", "PAT_NAME_BG_OVER" )

g_pButton_Pet_Btn_List_Name:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(20-1,288)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pet_Btn_List_Name:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(20+1-1,288)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pet_Btn_List_Name:SetDownPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(20+2-1,288+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pet_Btn_List_Name:AddDummyInt(3)
g_pButton_Pet_Btn_List_Name:SetCustomMsgMouseUp( PET_LIST_UI_CUSTOM_MESSAGE["PLUCM_LIST_SELECT"] )

 
 
---버튼 05
g_pButton_Pet_Btn_List_Name = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Pet_Btn_List_Name )
g_pButton_Pet_Btn_List_Name:SetName( "Pet_Btn_List_Name5" )

g_pButton_Pet_Btn_List_Name:SetNormalTex( "DLG_UI_Common_Texture39.tga", "PAT_NAME_BG_NORMAL" )
g_pButton_Pet_Btn_List_Name:SetOverTex( "DLG_UI_Common_Texture39.tga", "PAT_NAME_BG_OVER" )
g_pButton_Pet_Btn_List_Name:SetDownTex( "DLG_UI_Common_Texture39.tga", "PAT_NAME_BG_OVER" )

g_pButton_Pet_Btn_List_Name:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(20-1,353)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pet_Btn_List_Name:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(20+1-1,353)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pet_Btn_List_Name:SetDownPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(20+2-1,353+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pet_Btn_List_Name:AddDummyInt(4)
g_pButton_Pet_Btn_List_Name:SetCustomMsgMouseUp( PET_LIST_UI_CUSTOM_MESSAGE["PLUCM_LIST_SELECT"] )

 

---버튼 06
g_pButton_Pet_Btn_List_Name = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Pet_Btn_List_Name )
g_pButton_Pet_Btn_List_Name:SetName( "Pet_Btn_List_Name6" )

g_pButton_Pet_Btn_List_Name:SetNormalTex( "DLG_UI_Common_Texture39.tga", "PAT_NAME_BG_NORMAL" )
g_pButton_Pet_Btn_List_Name:SetOverTex( "DLG_UI_Common_Texture39.tga", "PAT_NAME_BG_OVER" )
g_pButton_Pet_Btn_List_Name:SetDownTex( "DLG_UI_Common_Texture39.tga", "PAT_NAME_BG_OVER" )

g_pButton_Pet_Btn_List_Name:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(20-1,418)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pet_Btn_List_Name:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(20+1-1,418)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pet_Btn_List_Name:SetDownPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(20+2-1,418+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pet_Btn_List_Name:AddDummyInt(5)
g_pButton_Pet_Btn_List_Name:SetCustomMsgMouseUp( PET_LIST_UI_CUSTOM_MESSAGE["PLUCM_LIST_SELECT"] )






 
 
-------------- 펫 캐릭터 창 전체
g_pStatic_Pet_List_Character_Win = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Pet_List_Character_Win )
g_pStatic_Pet_List_Character_Win:SetName( "Pet_List_Character_Win" )


-- 펫 캐릭터 창 01
g_pPicture_Pat_List_Box_Bg1= g_pUIDialog:CreatePicture()
g_pStatic_Pet_List_Character_Win:AddPicture( g_pPicture_Pat_List_Box_Bg1 )
g_pPicture_Pat_List_Box_Bg1:SetTex( "DLG_Common_New_Texture37.tga", "ITEMSLOT_SMALL" )

g_pPicture_Pat_List_Box_Bg1:SetPoint
{
    ADD_SIZE_X = 6,
    ADD_SIZE_Y = 6,
	"LEFT_TOP		= D3DXVECTOR2(30,100)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-- 펫 캐릭터 창 02
g_pPicture_Pat_List_Box_Bg2= g_pUIDialog:CreatePicture()
g_pStatic_Pet_List_Character_Win:AddPicture( g_pPicture_Pat_List_Box_Bg2 )
g_pPicture_Pat_List_Box_Bg2:SetTex( "DLG_Common_New_Texture37.tga", "ITEMSLOT_SMALL" )

g_pPicture_Pat_List_Box_Bg2:SetPoint
{
    ADD_SIZE_X = 6,
    ADD_SIZE_Y = 6,
	"LEFT_TOP		= D3DXVECTOR2(30,165)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--펫 캐릭터 창 03
g_pPicture_Pat_List_Box_Bg3= g_pUIDialog:CreatePicture()
g_pStatic_Pet_List_Character_Win:AddPicture( g_pPicture_Pat_List_Box_Bg3 )
g_pPicture_Pat_List_Box_Bg3:SetTex( "DLG_Common_New_Texture37.tga", "ITEMSLOT_SMALL" )

g_pPicture_Pat_List_Box_Bg3:SetPoint
{
    ADD_SIZE_X = 6,
    ADD_SIZE_Y = 6,
	"LEFT_TOP		= D3DXVECTOR2(30,230)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-- 펫 캐릭터 창 04
g_pPicture_Pat_List_Box_Bg4= g_pUIDialog:CreatePicture()
g_pStatic_Pet_List_Character_Win:AddPicture( g_pPicture_Pat_List_Box_Bg4 )
g_pPicture_Pat_List_Box_Bg4:SetTex( "DLG_Common_New_Texture37.tga", "ITEMSLOT_SMALL" )

g_pPicture_Pat_List_Box_Bg4:SetPoint
{
    ADD_SIZE_X = 6,
    ADD_SIZE_Y = 6,
	"LEFT_TOP		= D3DXVECTOR2(30,295)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-- 펫 캐릭터 창 05
g_pPicture_Pat_List_Box_Bg5= g_pUIDialog:CreatePicture()
g_pStatic_Pet_List_Character_Win:AddPicture( g_pPicture_Pat_List_Box_Bg5 )
g_pPicture_Pat_List_Box_Bg5:SetTex( "DLG_Common_New_Texture37.tga", "ITEMSLOT_SMALL" )

g_pPicture_Pat_List_Box_Bg5:SetPoint
{
    ADD_SIZE_X = 6,
    ADD_SIZE_Y = 6,
	"LEFT_TOP		= D3DXVECTOR2(30,360)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


 
-- 펫 캐릭터 창 06
g_pPicture_Pat_List_Box_Bg6= g_pUIDialog:CreatePicture()
g_pStatic_Pet_List_Character_Win:AddPicture( g_pPicture_Pat_List_Box_Bg6 )
g_pPicture_Pat_List_Box_Bg6:SetTex( "DLG_Common_New_Texture37.tga", "ITEMSLOT_SMALL" )

g_pPicture_Pat_List_Box_Bg6:SetPoint
{
    ADD_SIZE_X = 6,
    ADD_SIZE_Y = 6,
	"LEFT_TOP		= D3DXVECTOR2(30,425)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-------------- 펫이름 전체
g_pStatic_Pet_List_Name = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Pet_List_Name )
g_pStatic_Pet_List_Name:SetName( "Pet_List_Name1" )

 g_pStatic_Pet_List_Name:AddString
{
 MSG    		 = STR_ID_5342, --"펫이름펫이름\n(생명의 결정)",
 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 "POS            = D3DXVECTOR2(80,108)",
 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.0)",
 }
 
 
g_pStatic_Pet_List_Name = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Pet_List_Name )
g_pStatic_Pet_List_Name:SetName( "Pet_List_Name2" )

 g_pStatic_Pet_List_Name:AddString
{
 MSG    		 = STR_ID_5342,
 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 "POS            = D3DXVECTOR2(80,173)",
 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.0)",
 }
 
 
g_pStatic_Pet_List_Name = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Pet_List_Name )
g_pStatic_Pet_List_Name:SetName( "Pet_List_Name3" )

 g_pStatic_Pet_List_Name:AddString
{
 MSG    		 = STR_ID_5342,
 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 "POS            = D3DXVECTOR2(80,238)",
 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.0)",
 }
 
 
g_pStatic_Pet_List_Name = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Pet_List_Name )
g_pStatic_Pet_List_Name:SetName( "Pet_List_Name4" )

 g_pStatic_Pet_List_Name:AddString
{
 MSG    		 = STR_ID_5342,
 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 "POS            = D3DXVECTOR2(80,301)",
 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.0)",
 }
 
 
 g_pStatic_Pet_List_Name = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Pet_List_Name )
g_pStatic_Pet_List_Name:SetName( "Pet_List_Name5" )

 g_pStatic_Pet_List_Name:AddString
{
 MSG    		 = STR_ID_5342,
 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 "POS            = D3DXVECTOR2(80,368)",
 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.0)",
 }
 
 
  g_pStatic_Pet_List_Name = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Pet_List_Name )
g_pStatic_Pet_List_Name:SetName( "Pet_List_Name6" )

 g_pStatic_Pet_List_Name:AddString
{
 MSG    		 = STR_ID_5342,
 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 "POS            = D3DXVECTOR2(80,433)",
 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.0)",
 }


 
 
-- 포만도/친밀도 01
g_pStatic_Pet_List_Satiety = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Pet_List_Satiety )
g_pStatic_Pet_List_Satiety:SetName( "Pet_List_Satiety1" )

 g_pStatic_Pet_List_Satiety:AddString
{
	MSG			= STR_ID_5340,
	FONT_INDEX     		= XUF_DODUM_11_NORMAL,
	SORT_FLAG      		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(290-20,108)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,0.0)",
}
 
g_pStatic_Pet_List_Intimacy = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Pet_List_Intimacy )
g_pStatic_Pet_List_Intimacy:SetName( "Pet_List_Intimacy1" )

 g_pStatic_Pet_List_Intimacy:AddString
{
	MSG			= STR_ID_5341,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS			= D3DXVECTOR2(290-20,124)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,0.0)",
}

 
-- 포만도/친밀도 02
g_pStatic_Pet_List_Satiety = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Pet_List_Satiety )
g_pStatic_Pet_List_Satiety:SetName( "Pet_List_Satiety2" )

 g_pStatic_Pet_List_Satiety:AddString
{
	MSG    		 = STR_ID_5340,
	FONT_INDEX      = XUF_DODUM_11_NORMAL,
	SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
	"POS            = D3DXVECTOR2(290-20,173)",
	"COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.0)",
}
 
g_pStatic_Pet_List_Intimacy = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Pet_List_Intimacy )
g_pStatic_Pet_List_Intimacy:SetName( "Pet_List_Intimacy2" )

 g_pStatic_Pet_List_Intimacy:AddString
{
	MSG    		 = STR_ID_5341,
	FONT_INDEX      = XUF_DODUM_11_NORMAL,
	SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
	"POS            = D3DXVECTOR2(290-20,189)",
	"COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.0)",
}
 

-- 포만도/친밀도 03
g_pStatic_Pet_List_Satiety = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Pet_List_Satiety )
g_pStatic_Pet_List_Satiety:SetName( "Pet_List_Satiety3" )

 g_pStatic_Pet_List_Satiety:AddString
{
	MSG    		 = STR_ID_5340,
	FONT_INDEX      = XUF_DODUM_11_NORMAL,
	SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
	"POS            = D3DXVECTOR2(290-20,238)",
	"COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.0)",
}
 
g_pStatic_Pet_List_Intimacy = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Pet_List_Intimacy )
g_pStatic_Pet_List_Intimacy:SetName( "Pet_List_Intimacy3" )

 g_pStatic_Pet_List_Intimacy:AddString
{
	MSG    		 = STR_ID_5341,
	FONT_INDEX      = XUF_DODUM_11_NORMAL,
	SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
	"POS            = D3DXVECTOR2(290-20,254)",
	"COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.0)",
}

 
-- 포만도/친밀도 04
g_pStatic_Pet_List_Satiety = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Pet_List_Satiety )
g_pStatic_Pet_List_Satiety:SetName( "Pet_List_Satiety4" )

 g_pStatic_Pet_List_Satiety:AddString
{
 MSG    		 = STR_ID_5340,
 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 "POS            = D3DXVECTOR2(290-20,303)",
 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.0)",
 }
 
g_pStatic_Pet_List_Intimacy = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Pet_List_Intimacy )
g_pStatic_Pet_List_Intimacy:SetName( "Pet_List_Intimacy4" )

 g_pStatic_Pet_List_Intimacy:AddString
{
 MSG    		 = STR_ID_5341,
 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 "POS            = D3DXVECTOR2(290-20,319)",
 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.0)",
 }
 
 
-- 포만도/친밀도 05
g_pStatic_Pet_List_Satiety = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Pet_List_Satiety )
g_pStatic_Pet_List_Satiety:SetName( "Pet_List_Satiety5" )

 g_pStatic_Pet_List_Satiety:AddString
{
 MSG    		 = STR_ID_5340,
 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 "POS            = D3DXVECTOR2(290-20,368)",
 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.0)",
 }
 
g_pStatic_Pet_List_Intimacy = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Pet_List_Intimacy )
g_pStatic_Pet_List_Intimacy:SetName( "Pet_List_Intimacy5" )

 g_pStatic_Pet_List_Intimacy:AddString
{
 MSG    		 = STR_ID_5341,
 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 "POS            = D3DXVECTOR2(290-20,384)",
 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.0)",
 }
 
 
-- 포만도/친밀도 06
g_pStatic_Pet_List_Satiety = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Pet_List_Satiety )
g_pStatic_Pet_List_Satiety:SetName( "Pet_List_Satiety6" )

 g_pStatic_Pet_List_Satiety:AddString
{
 MSG    		 = STR_ID_5340,
 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 "POS            = D3DXVECTOR2(290-20,433)",
 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.0)",
 }
 
g_pStatic_Pet_List_Intimacy = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Pet_List_Intimacy )
g_pStatic_Pet_List_Intimacy:SetName( "Pet_List_Intimacy6" )

 g_pStatic_Pet_List_Intimacy:AddString
{
 MSG    		 = STR_ID_5341,
 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 "POS            = D3DXVECTOR2(290-20,449)",
 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.0)",
 }



---------진화가능 아이콘

g_pStatic_Pat_List_EVOLUTION = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Pat_List_EVOLUTION )
g_pStatic_Pat_List_EVOLUTION:SetName( "Pet_List_Character_Evolution" )

-------------진화01
g_pPicture_Pat_List_EVOLUTION_EFFECT= g_pUIDialog:CreatePicture()
g_pStatic_Pat_List_EVOLUTION:AddPicture( g_pPicture_Pat_List_EVOLUTION_EFFECT )
g_pPicture_Pat_List_EVOLUTION_EFFECT:SetTex( "DLG_UI_Common_Texture42_NEW.TGA", "EVOLUTION_EFFECT" )

g_pPicture_Pat_List_EVOLUTION_EFFECT:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(248-25,105)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------------진화02
g_pPicture_Pat_List_EVOLUTION_EFFECT= g_pUIDialog:CreatePicture()
g_pStatic_Pat_List_EVOLUTION:AddPicture( g_pPicture_Pat_List_EVOLUTION_EFFECT )
g_pPicture_Pat_List_EVOLUTION_EFFECT:SetTex( "DLG_UI_Common_Texture42_NEW.TGA", "EVOLUTION_EFFECT" )

g_pPicture_Pat_List_EVOLUTION_EFFECT:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(248-25,146+24)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-------------진화03
g_pPicture_Pat_List_EVOLUTION_EFFECT= g_pUIDialog:CreatePicture()
g_pStatic_Pat_List_EVOLUTION:AddPicture( g_pPicture_Pat_List_EVOLUTION_EFFECT )
g_pPicture_Pat_List_EVOLUTION_EFFECT:SetTex( "DLG_UI_Common_Texture42_NEW.TGA", "EVOLUTION_EFFECT" )

g_pPicture_Pat_List_EVOLUTION_EFFECT:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(248-25,211+24)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-------------진화04
g_pPicture_Pat_List_EVOLUTION_EFFECT= g_pUIDialog:CreatePicture()
g_pStatic_Pat_List_EVOLUTION:AddPicture( g_pPicture_Pat_List_EVOLUTION_EFFECT )
g_pPicture_Pat_List_EVOLUTION_EFFECT:SetTex( "DLG_UI_Common_Texture42_NEW.TGA", "EVOLUTION_EFFECT" )

g_pPicture_Pat_List_EVOLUTION_EFFECT:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(248-25,276+24)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-------------진화05
g_pPicture_Pat_List_EVOLUTION_EFFECT= g_pUIDialog:CreatePicture()
g_pStatic_Pat_List_EVOLUTION:AddPicture( g_pPicture_Pat_List_EVOLUTION_EFFECT )
g_pPicture_Pat_List_EVOLUTION_EFFECT:SetTex( "DLG_UI_Common_Texture42_NEW.TGA", "EVOLUTION_EFFECT" )

g_pPicture_Pat_List_EVOLUTION_EFFECT:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(248-25,341+24)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------------진화06
g_pPicture_Pat_List_EVOLUTION_EFFECT= g_pUIDialog:CreatePicture()
g_pStatic_Pat_List_EVOLUTION:AddPicture( g_pPicture_Pat_List_EVOLUTION_EFFECT )
g_pPicture_Pat_List_EVOLUTION_EFFECT:SetTex( "DLG_UI_Common_Texture42_NEW.TGA", "EVOLUTION_EFFECT" )

g_pPicture_Pat_List_EVOLUTION_EFFECT:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(248-25,406+24)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


 
 --------------- << 버튼

g_pButtonL_arrow = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonL_arrow )
g_pButtonL_arrow:SetName( "Inventory_arrowL" )

g_pButtonL_arrow:SetNormalTex( "DLG_UI_BUTTON01.tga", "L_arrow_normal" )
g_pButtonL_arrow:SetOverTex( "DLG_UI_BUTTON01.tga", "L_arrow_over" )
g_pButtonL_arrow:SetDownTex( "DLG_UI_BUTTON01.tga", "L_arrow_over" )

g_pButtonL_arrow:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(140,492)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(140,492)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(140+1,492+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetCustomMsgMouseUp( PET_LIST_UI_CUSTOM_MESSAGE["PLUCM_LIST_PREV"] )



--------------- >> 버튼

g_pButtonR_arrow = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonR_arrow )
g_pButtonR_arrow:SetName( "Inventory_arrowR" )

g_pButtonR_arrow:SetNormalTex( "DLG_UI_BUTTON01.tga", "R_arrow_normal" )
g_pButtonR_arrow:SetOverTex( "DLG_UI_BUTTON01.tga", "R_arrow_over" )
g_pButtonR_arrow:SetDownTex( "DLG_UI_BUTTON01.tga", "R_arrow_over" )

g_pButtonR_arrow:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(230,492)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(229,492)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetDownPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(229+1,492+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetCustomMsgMouseUp( PET_LIST_UI_CUSTOM_MESSAGE["PLUCM_LIST_NEXT"] )
 
 
-------------- 페이지
g_pPicturepage= g_pUIDialog:CreatePicture()
g_pStatic_Pat_List:AddPicture( g_pPicturepage )
g_pPicturepage:SetTex( "DLG_UI_COMMON_TEXTURE01.TGA", "page_bar" )

g_pPicturepage:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(164,490)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-------------- 페이지 번호

g_pStaticnumber = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticnumber )
g_pStaticnumber:SetName( "Pet_Page_Num" )

g_pStaticnumber:AddString
{
	MSG 			= STR_ID_5342, --"1/3",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(192,495)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.7)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


