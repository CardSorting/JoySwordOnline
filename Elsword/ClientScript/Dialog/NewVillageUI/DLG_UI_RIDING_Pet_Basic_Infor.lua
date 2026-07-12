-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStaticQust = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticQust )
g_pStaticQust:SetName( "PetInfo" )

g_pUIDialog:SetCloseCustomUIEventID( PET_LIST_UI_CUSTOM_MESSAGE["PLUCM_CLOSE"] )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )

g_pUIDialog:AddDummyPos( D3DXVECTOR3( -310, -60, 0 ) )		-- 펫 상대적인 위치
--g_pUIDialog:AddDummyPos( D3DXVECTOR3( 0.5, 0.5, 0.5 ) )		-- 몬스터 크기
--g_pUIDialog:SetPos(15,43+3)

--------------- Static
g_pStatic_Pat_Basic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Pat_Basic )
g_pStatic_Pat_Basic:SetName( "g_pStatic_Pat_Basic" )


--------------- BG
g_pPicture_Pat_Basic_BG1 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Basic:AddPicture( g_pPicture_Pat_Basic_BG1 )
g_pPicture_Pat_Basic_BG1:SetTex( "DLG_UI_Common_Texture39.TGA", "PAT_BG_BOTTOM" )

g_pPicture_Pat_Basic_BG1:SetPoint
{
    ADD_SIZE_X = 30,
	
	"LEFT_TOP		= D3DXVECTOR2(-15,-43-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_Pat_Basic_BG2 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Basic:AddPicture( g_pPicture_Pat_Basic_BG2 )
g_pPicture_Pat_Basic_BG2:SetTex( "DLG_UI_Common_Texture39.TGA", "PAT_BG_MIDDLE" )

g_pPicture_Pat_Basic_BG2:SetPoint
{
    ADD_SIZE_X = 30,
	ADD_SIZE_Y = 500+40+20+37,
	
	"LEFT_TOP		= D3DXVECTOR2(-15,-43+19-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_Pat_Basic_BG3 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Basic:AddPicture( g_pPicture_Pat_Basic_BG3 )
g_pPicture_Pat_Basic_BG3:SetTex( "DLG_UI_Common_Texture39.TGA", "PAT_BG_TOP" )

g_pPicture_Pat_Basic_BG3:SetPoint
{
    ADD_SIZE_X = 30,
	
	"LEFT_TOP		= D3DXVECTOR2(-15,520+1+20-3-3+37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--------------- gray_BG
g_pPicture_Pat_Basic_BG1 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Basic:AddPicture( g_pPicture_Pat_Basic_BG1 )
g_pPicture_Pat_Basic_BG1:SetTex( "DLG_UI_Common_Texture01.TGA", "INVEN_GRAY_TOP" )

g_pPicture_Pat_Basic_BG1:SetPoint
{
    ADD_SIZE_X = -47,
	
	"LEFT_TOP		= D3DXVECTOR2(3+3,-20+33-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_Pat_Basic_BG2 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Basic:AddPicture( g_pPicture_Pat_Basic_BG2 )
g_pPicture_Pat_Basic_BG2:SetTex( "DLG_UI_Common_Texture01.TGA", "INVEN_GRAY_MIDDLE" )

g_pPicture_Pat_Basic_BG2:SetPoint
{
    ADD_SIZE_X = -47,
	ADD_SIZE_Y = 500+5+37-2,
	
	"LEFT_TOP		= D3DXVECTOR2(3+3,-20+10+33-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_Pat_Basic_BG3 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Basic:AddPicture( g_pPicture_Pat_Basic_BG3 )
g_pPicture_Pat_Basic_BG3:SetTex( "DLG_UI_Common_Texture01.TGA", "INVEN_GRAY_BOTTOM" )

g_pPicture_Pat_Basic_BG3:SetPoint
{
    ADD_SIZE_X = -47,
	
	"LEFT_TOP		= D3DXVECTOR2(3+3,520+1+20+11-22+3-3-3+37-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


------Bg (탈것 탭 배경)

g_pPicture_Pat_Basic_BG1 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Basic:AddPicture( g_pPicture_Pat_Basic_BG1 )
g_pPicture_Pat_Basic_BG1:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_win_top" )

g_pPicture_Pat_Basic_BG1:SetPoint
{

    ADD_SIZE_X =-44,

	"LEFT_TOP		= D3DXVECTOR2(10,43)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_Pat_Basic_BG2 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Basic:AddPicture( g_pPicture_Pat_Basic_BG2 )
g_pPicture_Pat_Basic_BG2:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_win_middle" )

g_pPicture_Pat_Basic_BG2:SetPoint
{
    ADD_SIZE_X =-44,
	ADD_SIZE_Y = 465+37,
	
	"LEFT_TOP		= D3DXVECTOR2(10,43+11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_Pat_Basic_BG3 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Basic:AddPicture( g_pPicture_Pat_Basic_BG3 )
g_pPicture_Pat_Basic_BG3:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_win_bottom" )

g_pPicture_Pat_Basic_BG3:SetPoint
{
    ADD_SIZE_X =-44,
	
	"LEFT_TOP		= D3DXVECTOR2(10,520+1+37)",
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

g_pPicture_Pat_Basic_title= g_pUIDialog:CreatePicture()
g_pStatic_Pat_Basic:AddPicture( g_pPicture_Pat_Basic_title )
g_pPicture_Pat_Basic_title:SetTex( "DLG_UI_Common_Texture_RidingPet_01.TGA", "SUMMON_LIST_TITLE" )

g_pPicture_Pat_Basic_title:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(20-15,20-3-43-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




--------------- 기본정보 배경
g_pPicture_Pat_Basic_Title_BG1 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Basic:AddPicture( g_pPicture_Pat_Basic_Title_BG1 )
g_pPicture_Pat_Basic_Title_BG1:SetTex( "DLG_UI_Common_Texture39.TGA", "PAT_BG_GRAY_BOTTOM" )
g_pPicture_Pat_Basic_Title_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(18+2,51+2+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Pat_Basic_Title_BG2 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Basic:AddPicture( g_pPicture_Pat_Basic_Title_BG2 )
g_pPicture_Pat_Basic_Title_BG2:SetTex( "DLG_UI_Common_Texture39.TGA", "PAT_BG_GRAY_MIDDLE" )

g_pPicture_Pat_Basic_Title_BG2:SetPoint
{
    ADD_SIZE_Y = 11,
	"LEFT_TOP		= D3DXVECTOR2(18+2,62+2+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Pat_Basic_Title_BG3 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Basic:AddPicture( g_pPicture_Pat_Basic_Title_BG3 )
g_pPicture_Pat_Basic_Title_BG3:SetTex( "DLG_UI_Common_Texture39.TGA", "PAT_BG_GRAY_TOP" )

g_pPicture_Pat_Basic_Title_BG3:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(18+2,74+4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


 
 
-------------- 상단 펫이름 배경
g_pPicture_Pat_Basic_Name_BG1 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Basic:AddPicture( g_pPicture_Pat_Basic_Name_BG1 )
g_pPicture_Pat_Basic_Name_BG1:SetTex( "DLG_UI_Common_Texture39.TGA", "PAT_CONTENTS_BOTTOM" )

g_pPicture_Pat_Basic_Name_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(18+2,93)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Pat_Basic_Name_BG2 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Basic:AddPicture( g_pPicture_Pat_Basic_Name_BG2 )
g_pPicture_Pat_Basic_Name_BG2:SetTex( "DLG_UI_Common_Texture39.TGA", "PAT_CONTENTS_MIDDLE" )

g_pPicture_Pat_Basic_Name_BG2:SetPoint
{
    ADD_SIZE_Y = 43,
	"LEFT_TOP		= D3DXVECTOR2(18+2,93+8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Pat_Basic_Name_BG3 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Basic:AddPicture( g_pPicture_Pat_Basic_Name_BG3 )
g_pPicture_Pat_Basic_Name_BG3:SetTex( "DLG_UI_Common_Texture39.TGA", "PAT_CONTENTS_TOP" )

g_pPicture_Pat_Basic_Name_BG3:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(18+2,145)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




-------------- 중간 회색 배경
g_pPicture_Pat_Basic_Cont_BG1 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Basic:AddPicture( g_pPicture_Pat_Basic_Cont_BG1 )
g_pPicture_Pat_Basic_Cont_BG1:SetTex( "DLG_UI_Common_Texture39.TGA", "PAT_CONT_GRAY_BOTTOM" )

g_pPicture_Pat_Basic_Cont_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(18+2,163)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Pat_Basic_Cont_BG2 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Basic:AddPicture( g_pPicture_Pat_Basic_Cont_BG2 )
g_pPicture_Pat_Basic_Cont_BG2:SetTex( "DLG_UI_Common_Texture39.TGA", "PAT_CONT_GRAY_MIDDLE" )

g_pPicture_Pat_Basic_Cont_BG2:SetPoint
{
    ADD_SIZE_Y = 205,
	"LEFT_TOP		= D3DXVECTOR2(18+2,162+9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Pat_Basic_Cont_BG3 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Basic:AddPicture( g_pPicture_Pat_Basic_Cont_BG3 )
g_pPicture_Pat_Basic_Cont_BG3:SetTex( "DLG_UI_Common_Texture39.TGA", "PAT_CONT_GRAY_TOP" )

g_pPicture_Pat_Basic_Cont_BG3:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(18+2,378)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




--------------- 기본정보 타이틀(스트링)
g_pStatic_Pat_Basic_Title = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Pat_Basic_Title )
g_pStatic_Pat_Basic_Title:SetName( "Pet_List_Title" )

 g_pStatic_Pat_Basic_Title:AddString
{
 MSG    		 = STR_ID_5348,
 FONT_INDEX      = XUF_DODUM_15_BOLD,
 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
 "POS            = D3DXVECTOR2(195,60)",
 "COLOR          = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.0)",
 }
 
 -------------- 탈것 리스트 버튼
g_pButton_Pat_Btn_Recall = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Pat_Btn_Recall )
g_pButton_Pat_Btn_Recall:SetName( "RIDING_Pet_Btn_PetList" )

g_pButton_Pat_Btn_Recall:SetNormalTex( "DLG_UI_Button_RidingPet_01.tga", "RIDING_PET_LIST_NORMAL" )
g_pButton_Pat_Btn_Recall:SetOverTex( "DLG_UI_Button_RidingPet_01.tga", "RIDING_PET_LIST_OVER" )
g_pButton_Pat_Btn_Recall:SetDownTex( "DLG_UI_Button_RidingPet_01.tga", "RIDING_PET_LIST_DOWN" )

g_pButton_Pat_Btn_Recall:SetNormalPoint
{
    "LEFT_TOP		= D3DXVECTOR2(24+2,56+4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_Btn_Recall:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(24+1,56-1+4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_Btn_Recall:SetDownPoint
{
	ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(24+1,56-1+4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_Btn_Recall:SetCustomMsgMouseUp( PET_LIST_UI_CUSTOM_MESSAGE["PLUCM_RIDING_PET_LIST"] )


-------------- 놓아주기 버튼
g_pButton_Pat_Btn_Recall = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Pat_Btn_Recall )
g_pButton_Pat_Btn_Recall:SetName( "RIDING_Pet_Btn_Release" )

g_pButton_Pat_Btn_Recall:SetNormalTex( "DLG_UI_Button_RidingPet_01.tga", "release_NORMAL" )
g_pButton_Pat_Btn_Recall:SetOverTex( "DLG_UI_Button_RidingPet_01.tga", "release_OVER" )
g_pButton_Pat_Btn_Recall:SetDownTex( "DLG_UI_Button_RidingPet_01.tga", "release_DOWN" )

g_pButton_Pat_Btn_Recall:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(310,353)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_Btn_Recall:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(310-1,353-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_Btn_Recall:SetDownPoint
{
	ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(310-1,353-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_Btn_Recall:SetCustomMsgMouseUp( PET_LIST_UI_CUSTOM_MESSAGE["PLUCM_RIDING_PET_RELEASE"] )



-- 탈것 버프스킬 1 
g_pButton_Pat_Aura_Skill = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Pat_Aura_Skill )
g_pButton_Pat_Aura_Skill:SetName( "RIDING_Pet_Btn_BUFF_Skill_1" )

g_pButton_Pat_Aura_Skill:SetNormalTex( "DLG_UI_Common_Texture41.tga", "PAT_BASIC_SKILL_WIN" )
g_pButton_Pat_Aura_Skill:SetOverTex( "DLG_UI_Common_Texture41.tga", "PAT_BASIC_SKILL_WIN" )
g_pButton_Pat_Aura_Skill:SetDownTex( "DLG_UI_Common_Texture41.tga", "PAT_BASIC_SKILL_WIN" )

g_pButton_Pat_Aura_Skill:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(26+2,167)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_Aura_Skill:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(26+2,167)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_Aura_Skill:SetDownPoint
{	
 	"LEFT_TOP		= D3DXVECTOR2(26+2,167)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-- 탈것 펫 버프스킬 2 
g_pButton_Pat_Aura_Skill = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Pat_Aura_Skill )
g_pButton_Pat_Aura_Skill:SetName( "RIDING_Pet_Btn_BUFF_Skill_2" )

g_pButton_Pat_Aura_Skill:SetNormalTex( "DLG_UI_Common_Texture41.tga", "PAT_BASIC_SKILL_WIN" )
g_pButton_Pat_Aura_Skill:SetOverTex( "DLG_UI_Common_Texture41.tga", "PAT_BASIC_SKILL_WIN" )
g_pButton_Pat_Aura_Skill:SetDownTex( "DLG_UI_Common_Texture41.tga", "PAT_BASIC_SKILL_WIN" )

g_pButton_Pat_Aura_Skill:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(26+2,222)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_Aura_Skill:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(26+2,222)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_Aura_Skill:SetDownPoint
{	
 	"LEFT_TOP		= D3DXVECTOR2(26+2,222)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-- 탈것 Z스킬  
g_pButton_Pat_Aura_Skill = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Pat_Aura_Skill )
g_pButton_Pat_Aura_Skill:SetName( "RIDING_Pet_Btn_Skill_Z" )

g_pButton_Pat_Aura_Skill:SetNormalTex( "DLG_UI_Common_Texture41.tga", "PAT_BASIC_SKILL_WIN" )
g_pButton_Pat_Aura_Skill:SetOverTex( "DLG_UI_Common_Texture41.tga", "PAT_BASIC_SKILL_WIN" )
g_pButton_Pat_Aura_Skill:SetDownTex( "DLG_UI_Common_Texture41.tga", "PAT_BASIC_SKILL_WIN" )

g_pButton_Pat_Aura_Skill:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(317,167)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_Aura_Skill:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(317,167)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_Aura_Skill:SetDownPoint
{	
 	"LEFT_TOP		= D3DXVECTOR2(317,167)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-- 탈것 X스킬 
g_pButton_Pat_Aura_Skill = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Pat_Aura_Skill )
g_pButton_Pat_Aura_Skill:SetName( "RIDING_Pet_Btn_Skill_X" )

g_pButton_Pat_Aura_Skill:SetNormalTex( "DLG_UI_Common_Texture41.tga", "PAT_BASIC_SKILL_WIN" )
g_pButton_Pat_Aura_Skill:SetOverTex( "DLG_UI_Common_Texture41.tga", "PAT_BASIC_SKILL_WIN" )
g_pButton_Pat_Aura_Skill:SetDownTex( "DLG_UI_Common_Texture41.tga", "PAT_BASIC_SKILL_WIN" )

g_pButton_Pat_Aura_Skill:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(317,222)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_Aura_Skill:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(317,222)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_Aura_Skill:SetDownPoint
{	
 	"LEFT_TOP		= D3DXVECTOR2(317,222)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-- 탈것 C스킬
g_pButton_Pat_Aura_Skill = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Pat_Aura_Skill )
g_pButton_Pat_Aura_Skill:SetName( "RIDING_Pet_Btn_Skill_C" )

g_pButton_Pat_Aura_Skill:SetNormalTex( "DLG_UI_Common_Texture41.tga", "PAT_BASIC_SKILL_WIN" )
g_pButton_Pat_Aura_Skill:SetOverTex( "DLG_UI_Common_Texture41.tga", "PAT_BASIC_SKILL_WIN" )
g_pButton_Pat_Aura_Skill:SetDownTex( "DLG_UI_Common_Texture41.tga", "PAT_BASIC_SKILL_WIN" )

g_pButton_Pat_Aura_Skill:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(317,277)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_Aura_Skill:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(317,277)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_Aura_Skill:SetDownPoint
{	
 	"LEFT_TOP		= D3DXVECTOR2(317,277)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--------------------------------------------------


-------------- 탈것 이름/설명
g_pStatic_Pat_Basic_Name = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Pat_Basic_Name )
g_pStatic_Pat_Basic_Name:SetName( "RIDING_Pet_Basic_Name" )

g_pStatic_Pat_Basic_Name:AddString
{
 --MSG    		 = "펫이름펫이름(생명의 결정)",
 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 "POS            = D3DXVECTOR2(75+10,115)",
 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.0)",
 }
 
 ------------ 탈 것 설명
 g_pStatic_Pat_Basic_Name:AddString
{
 --MSG    		 = "포만도: 더 이상 먹을 수 없습니다.\n친밀도: 특별한 상태입니다. 우후훗만 섭취합니다.",
 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 "POS            = D3DXVECTOR2(18+13,460)",
 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.0)",
 }
 
 
 -------------- 탈 것 캐릭터 박스

g_pStatic_Pat_Basic_ChaWin= g_pUIDialog:CreatePicture()
g_pStatic_Pat_Basic_Name:AddPicture( g_pStatic_Pat_Basic_ChaWin )
g_pStatic_Pat_Basic_ChaWin:SetTex( "DLG_UI_Common_Texture41.tga", "PAT_CHARACTER_BOX_BG" )

g_pStatic_Pat_Basic_ChaWin:SetPoint
{
    ADD_SIZE_X = 11,
    ADD_SIZE_Y = 10,
	"LEFT_TOP		= D3DXVECTOR2(30,99)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
 
 
-------------- 탑승 버튼
g_pButton_Pat_Btn_Recall = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Pat_Btn_Recall )
g_pButton_Pat_Btn_Recall:SetName( "Pet_Btn_Ride" )

g_pButton_Pat_Btn_Recall:SetNormalTex( "DLG_UI_Button_RidingPet_01.tga", "RIDING_GET_ON_NORMAL" )
g_pButton_Pat_Btn_Recall:SetOverTex( "DLG_UI_Button_RidingPet_01.tga", "RIDING_GET_ON_OVER" )
g_pButton_Pat_Btn_Recall:SetDownTex( "DLG_UI_Button_RidingPet_01.tga", "RIDING_GET_ON_OVER" )

g_pButton_Pat_Btn_Recall:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(305,102)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_Btn_Recall:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(305-2,102-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_Btn_Recall:SetDownPoint
{
	ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(305-2+1,102-1+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_Btn_Recall:SetCustomMsgMouseUp( PET_LIST_UI_CUSTOM_MESSAGE["PLUCM_RIDING_PET_RIDE"] )

-------스테미너------------- 
g_pStatic_Stamina = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Stamina )
g_pStatic_Stamina:SetName( "RIDING_Pet_Stamina" )
-------------- 탈것 스테미너바 바탕
g_pPicture_Pat_Basic_Green_Bar = g_pUIDialog:CreatePicture()
g_pStatic_Stamina:AddPicture( g_pPicture_Pat_Basic_Green_Bar )
g_pPicture_Pat_Basic_Green_Bar:SetTex( "DLG_UI_Common_Texture42_NEW.tga", "PET_BG_BAR" )

g_pPicture_Pat_Basic_Green_Bar:SetPoint
{
    ADD_SIZE_X = 2,
	ADD_SIZE_Y = 20,
	"LEFT_TOP		= D3DXVECTOR2(55,413)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}



-------------- 탈것 스테미너 초록 바 
g_pPicture_Pat_Basic_Green_Bar = g_pUIDialog:CreatePicture()
g_pStatic_Stamina:AddPicture( g_pPicture_Pat_Basic_Green_Bar )
g_pPicture_Pat_Basic_Green_Bar:SetTex( "DLG_UI_Common_Texture41.tga", "PAT_GREEN_BAR" )

g_pPicture_Pat_Basic_Green_Bar:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(56,415)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





-------------- 탈것  풍선말/ 수치값 (풍선, 바)
g_pPicture_Pat_Basic_Pungsun_Top = g_pUIDialog:CreatePicture()
g_pStatic_Stamina:AddPicture( g_pPicture_Pat_Basic_Pungsun_Top )
g_pPicture_Pat_Basic_Pungsun_Top:SetTex( "DLG_UI_Common_Texture41.tga", "PUNGSUN_WIN_TOP" )

g_pPicture_Pat_Basic_Pungsun_Top:SetPoint
{
	ADD_SIZE_X = 12,
	"LEFT_TOP		= D3DXVECTOR2(18,390)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStatic_Stamina_Num = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Stamina_Num )
g_pStatic_Stamina_Num:SetName( "RIDING_Pet_StaminaNum" )

 g_pStatic_Stamina_Num:AddString
{
 --MSG    		 = "수치값 최대 120",
 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
 "POS            = D3DXVECTOR2(55,393)",
 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.0)",
 }

g_pStatic_Stamina_Num = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Stamina_Num )
g_pStatic_Stamina_Num:SetName( "RIDING_Pet_StaminaNum_Bar" )
 g_pStatic_Stamina_Num:AddString
{
 --MSG    		 = "수치값 최대 120",
 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
 "POS            = D3DXVECTOR2(300,420)",
 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.0)",
 }

-------------- 하단 배경
g_pPicture_Pat_Basic_Name_BG1 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Basic:AddPicture( g_pPicture_Pat_Basic_Name_BG1 )
g_pPicture_Pat_Basic_Name_BG1:SetTex( "DLG_UI_Common_Texture39.TGA", "PAT_CONTENTS_BOTTOM" )

g_pPicture_Pat_Basic_Name_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(18+2,450)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Pat_Basic_Name_BG2 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Basic:AddPicture( g_pPicture_Pat_Basic_Name_BG2 )
g_pPicture_Pat_Basic_Name_BG2:SetTex( "DLG_UI_Common_Texture39.TGA", "PAT_CONTENTS_MIDDLE" )

g_pPicture_Pat_Basic_Name_BG2:SetPoint
{
    ADD_SIZE_Y = 86,
	"LEFT_TOP		= D3DXVECTOR2(18+2,450+8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Pat_Basic_Name_BG3 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Basic:AddPicture( g_pPicture_Pat_Basic_Name_BG3 )
g_pPicture_Pat_Basic_Name_BG3:SetTex( "DLG_UI_Common_Texture39.TGA", "PAT_CONTENTS_TOP" )

g_pPicture_Pat_Basic_Name_BG3:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(18+2,544)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



 
------탈것 스테미너 아이콘
g_pPicture_Pat_Basic_EAT = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Basic:AddPicture( g_pPicture_Pat_Basic_EAT )
g_pPicture_Pat_Basic_EAT:SetTex( "DLG_UI_Common_Texture_RidingPet_01.tga", "RIDING_STAMINA" )

g_pPicture_Pat_Basic_EAT:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(26,415)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




