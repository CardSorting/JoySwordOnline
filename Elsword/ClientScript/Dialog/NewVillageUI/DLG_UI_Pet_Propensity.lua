-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStaticQust = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticQust )
g_pStaticQust:SetName( "PetDetail" )

g_pUIDialog:SetCloseCustomUIEventID( PET_LIST_UI_CUSTOM_MESSAGE["PLUCM_CLOSE"] )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetPos(15,43+3)


--------------- Static
g_pStatic_Pet_Propensity = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Pet_Propensity )
g_pStatic_Pet_Propensity:SetName( "g_pStatic_Pet_Propensity" )

--------------- BG
g_pPicture_Pat_Propensity_BG1 = g_pUIDialog:CreatePicture()
g_pStatic_Pet_Propensity:AddPicture( g_pPicture_Pat_Propensity_BG1 )
g_pPicture_Pat_Propensity_BG1:SetTex( "DLG_UI_Common_Texture39.TGA", "PAT_BG_BOTTOM" )

g_pPicture_Pat_Propensity_BG1:SetPoint
{
    ADD_SIZE_X = 30,
	
	"LEFT_TOP		= D3DXVECTOR2(-15,-43-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_Pat_Propensity_BG2 = g_pUIDialog:CreatePicture()
g_pStatic_Pet_Propensity:AddPicture( g_pPicture_Pat_Propensity_BG2 )
g_pPicture_Pat_Propensity_BG2:SetTex( "DLG_UI_Common_Texture39.TGA", "PAT_BG_MIDDLE" )

g_pPicture_Pat_Propensity_BG2:SetPoint
{
    ADD_SIZE_X = 30,
	ADD_SIZE_Y = 500+40+20+37+23,
	
	"LEFT_TOP		= D3DXVECTOR2(-15,-43+19-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_Pat_Propensity_BG3 = g_pUIDialog:CreatePicture()
g_pStatic_Pet_Propensity:AddPicture( g_pPicture_Pat_Propensity_BG3 )
g_pPicture_Pat_Propensity_BG3:SetTex( "DLG_UI_Common_Texture39.TGA", "PAT_BG_TOP" )

g_pPicture_Pat_Propensity_BG3:SetPoint
{
    ADD_SIZE_X = 30,
	
	"LEFT_TOP		= D3DXVECTOR2(-15,520+1+20-3-3+37+23)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--------------- gray_BG
g_pPicture_Pat_Propensity_BG1 = g_pUIDialog:CreatePicture()
g_pStatic_Pet_Propensity:AddPicture( g_pPicture_Pat_Propensity_BG1 )
g_pPicture_Pat_Propensity_BG1:SetTex( "DLG_UI_Common_Texture01.TGA", "INVEN_GRAY_TOP" )

g_pPicture_Pat_Propensity_BG1:SetPoint
{
    ADD_SIZE_X = -47,
	
	"LEFT_TOP		= D3DXVECTOR2(3+3,-20+33-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_Pat_Propensity_BG2 = g_pUIDialog:CreatePicture()
g_pStatic_Pet_Propensity:AddPicture( g_pPicture_Pat_Propensity_BG2 )
g_pPicture_Pat_Propensity_BG2:SetTex( "DLG_UI_Common_Texture01.TGA", "INVEN_GRAY_MIDDLE" )

g_pPicture_Pat_Propensity_BG2:SetPoint
{
    ADD_SIZE_X = -47,
	ADD_SIZE_Y = 500+5+37+21,
	
	"LEFT_TOP		= D3DXVECTOR2(3+3,-20+10+33-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_Pat_Propensity_BG3 = g_pUIDialog:CreatePicture()
g_pStatic_Pet_Propensity:AddPicture( g_pPicture_Pat_Propensity_BG3 )
g_pPicture_Pat_Propensity_BG3:SetTex( "DLG_UI_Common_Texture01.TGA", "INVEN_GRAY_BOTTOM" )

g_pPicture_Pat_Propensity_BG3:SetPoint
{
    ADD_SIZE_X = -47,
	
	"LEFT_TOP		= D3DXVECTOR2(3+3,520+1+20+11-22+3-3-3+37-2+23)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


------Bg (탈것 탭 배경)

g_pPicture_Pat_Propensity_BG1 = g_pUIDialog:CreatePicture()
g_pStatic_Pet_Propensity:AddPicture( g_pPicture_Pat_Propensity_BG1 )
g_pPicture_Pat_Propensity_BG1:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_win_top" )

g_pPicture_Pat_Propensity_BG1:SetPoint
{

    ADD_SIZE_X =-44,

	"LEFT_TOP		= D3DXVECTOR2(10,43)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_Pat_Propensity_BG2 = g_pUIDialog:CreatePicture()
g_pStatic_Pet_Propensity:AddPicture( g_pPicture_Pat_Propensity_BG2 )
g_pPicture_Pat_Propensity_BG2:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_win_middle" )

g_pPicture_Pat_Propensity_BG2:SetPoint
{
    ADD_SIZE_X =-44,
	ADD_SIZE_Y = 465+37+22,
	
	"LEFT_TOP		= D3DXVECTOR2(10,43+11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_Pat_Propensity_BG3 = g_pUIDialog:CreatePicture()
g_pStatic_Pet_Propensity:AddPicture( g_pPicture_Pat_Propensity_BG3 )
g_pPicture_Pat_Propensity_BG3:SetTex( "DLG_UI_Common_Texture01.TGA", "Inven_win_bottom" )

g_pPicture_Pat_Propensity_BG3:SetPoint
{
    ADD_SIZE_X =-44,
	
	"LEFT_TOP		= D3DXVECTOR2(10,520+1+37+22)",
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

g_pPicture_Pat_Propensity_title= g_pUIDialog:CreatePicture()
g_pStatic_Pet_Propensity:AddPicture( g_pPicture_Pat_Propensity_title )
g_pPicture_Pat_Propensity_title:SetTex( "DLG_UI_Common_Texture_RidingPet_01.TGA", "SUMMON_LIST_TITLE" )

g_pPicture_Pat_Propensity_title:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(20-15,20-3-43-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--------------- 성향 배경
g_pPicture_Pat_Propensity_Title_BG1 = g_pUIDialog:CreatePicture()
g_pStatic_Pet_Propensity:AddPicture( g_pPicture_Pat_Propensity_Title_BG1 )
g_pPicture_Pat_Propensity_Title_BG1:SetTex( "DLG_UI_Common_Texture39.TGA", "PAT_BG_GRAY_BOTTOM" )

g_pPicture_Pat_Propensity_Title_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(18+2,52+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Pat_Propensity_Title_BG2 = g_pUIDialog:CreatePicture()
g_pStatic_Pet_Propensity:AddPicture( g_pPicture_Pat_Propensity_Title_BG2 )
g_pPicture_Pat_Propensity_Title_BG2:SetTex( "DLG_UI_Common_Texture39.TGA", "PAT_BG_GRAY_MIDDLE" )

g_pPicture_Pat_Propensity_Title_BG2:SetPoint
{
    ADD_SIZE_Y = 12,
	"LEFT_TOP		= D3DXVECTOR2(18+2,63+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Pat_Propensity_Title_BG3 = g_pUIDialog:CreatePicture()
g_pStatic_Pet_Propensity:AddPicture( g_pPicture_Pat_Propensity_Title_BG3 )
g_pPicture_Pat_Propensity_Title_BG3:SetTex( "DLG_UI_Common_Texture39.TGA", "PAT_BG_GRAY_TOP" )

g_pPicture_Pat_Propensity_Title_BG3:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(18+2,77+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


 
 
-------------- 상단 펫이름 배경
g_pPicture_Pet_Propensity_Name_BG1 = g_pUIDialog:CreatePicture()
g_pStatic_Pet_Propensity:AddPicture( g_pPicture_Pet_Propensity_Name_BG1 )
g_pPicture_Pet_Propensity_Name_BG1:SetTex( "DLG_UI_Common_Texture39.TGA", "PAT_CONTENTS_BOTTOM" )

g_pPicture_Pet_Propensity_Name_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(18+2,94+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Pet_Propensity_Name_BG2 = g_pUIDialog:CreatePicture()
g_pStatic_Pet_Propensity:AddPicture( g_pPicture_Pet_Propensity_Name_BG2 )
g_pPicture_Pet_Propensity_Name_BG2:SetTex( "DLG_UI_Common_Texture39.TGA", "PAT_CONTENTS_MIDDLE" )

g_pPicture_Pet_Propensity_Name_BG2:SetPoint
{
    ADD_SIZE_Y = 43,
	"LEFT_TOP		= D3DXVECTOR2(18+2,93+9+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Pet_Propensity_Name_BG3 = g_pUIDialog:CreatePicture()
g_pStatic_Pet_Propensity:AddPicture( g_pPicture_Pet_Propensity_Name_BG3 )
g_pPicture_Pet_Propensity_Name_BG3:SetTex( "DLG_UI_Common_Texture39.TGA", "PAT_CONTENTS_TOP" )

g_pPicture_Pet_Propensity_Name_BG3:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(18+2,145+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




-------------- 중간 회색 배경
g_pPicture_Pat_Propensity_Cont_BG1 = g_pUIDialog:CreatePicture()
g_pStatic_Pet_Propensity:AddPicture( g_pPicture_Pat_Propensity_Cont_BG1 )
g_pPicture_Pat_Propensity_Cont_BG1:SetTex( "DLG_UI_Common_Texture39.TGA", "PAT_CONT_GRAY_BOTTOM" )

g_pPicture_Pat_Propensity_Cont_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(18+2,163)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Pat_Propensity_Cont_BG2 = g_pUIDialog:CreatePicture()
g_pStatic_Pet_Propensity:AddPicture( g_pPicture_Pat_Propensity_Cont_BG2 )
g_pPicture_Pat_Propensity_Cont_BG2:SetTex( "DLG_UI_Common_Texture39.TGA", "PAT_CONT_GRAY_MIDDLE" )

g_pPicture_Pat_Propensity_Cont_BG2:SetPoint
{
    ADD_SIZE_Y = 338,
	"LEFT_TOP		= D3DXVECTOR2(18+2,162+9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Pat_Propensity_Cont_BG3 = g_pUIDialog:CreatePicture()
g_pStatic_Pet_Propensity:AddPicture( g_pPicture_Pat_Propensity_Cont_BG3 )
g_pPicture_Pat_Propensity_Cont_BG3:SetTex( "DLG_UI_Common_Texture39.TGA", "PAT_CONT_GRAY_TOP" )

g_pPicture_Pat_Propensity_Cont_BG3:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(18+2,511)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




--------------- 성향 타이틀(스트링)
g_pStatic_Pet_Propensity_Title = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Pet_Propensity_Title )
g_pStatic_Pet_Propensity_Title:SetName( "Pat_List_Title" )

 g_pStatic_Pet_Propensity_Title:AddString
{
 MSG    		 = STR_ID_5366, --"성향",
 FONT_INDEX      = XUF_DODUM_15_BOLD,
 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
 "POS            = D3DXVECTOR2(195,60)",
 "COLOR          = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.0)",
 }
 
 
 
 
-------------- 기본정보 버튼
g_pButton_Pat_Btn_Basic_Infor= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Pat_Btn_Basic_Infor )
g_pButton_Pat_Btn_Basic_Infor:SetName( "Pat_Btn_Basic_Infor" )

g_pButton_Pat_Btn_Basic_Infor:SetNormalTex( "DLG_UI_Button17.tga", "BTN_BASIC_INFOR_NORMAL" )
g_pButton_Pat_Btn_Basic_Infor:SetOverTex( "DLG_UI_Button17.tga", "BTN_BASIC_INFOR_OVER" )
g_pButton_Pat_Btn_Basic_Infor:SetDownTex( "DLG_UI_Button17.tga", "BTN_BASIC_INFOR_DOWN" )

g_pButton_Pat_Btn_Basic_Infor:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(24,56-1+5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_Btn_Basic_Infor:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(24-2,56-2-1+5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_Btn_Basic_Infor:SetDownPoint
{
	ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(24-4+1,56-4+1-1+5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_Btn_Basic_Infor:SetCustomMsgMouseUp( PET_LIST_UI_CUSTOM_MESSAGE["PLUCM_VIEW_INFO"] )
 

-------------- 펫 캐릭터 박스
g_pPicture_Pat_Propensity_Box_Bg1= g_pUIDialog:CreatePicture()
g_pStatic_Pet_Propensity:AddPicture( g_pPicture_Pat_Propensity_Box_Bg1 )
g_pPicture_Pat_Propensity_Box_Bg1:SetTex( "DLG_UI_Common_Texture41.tga", "PAT_CHARACTER_BOX_BG" )

g_pPicture_Pat_Propensity_Box_Bg1:SetPoint
{
    ADD_SIZE_X = 11,
    ADD_SIZE_Y = 10,
	"LEFT_TOP		= D3DXVECTOR2(30,99+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_Pat_Propensity_Box_Bg1:SetIndex(1)


-------------- 펫 이름
g_pStatic_Pet_Propensity_Name = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Pet_Propensity_Name )
g_pStatic_Pet_Propensity_Name:SetName( "Pet_Propensity_Name" )

g_pStatic_Pet_Propensity_Name:AddString
{
 --MSG    		 = "펫이름펫이름(생명의 결정)",
 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 "POS            = D3DXVECTOR2(75+10,115)",
 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.0)",
 }
 
 -------------- 소환 버튼
g_pButton_Pet_Btn_Recall = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Pet_Btn_Recall )
g_pButton_Pet_Btn_Recall:SetName( "Pet_Btn_Recall" )

g_pButton_Pet_Btn_Recall:SetNormalTex( "DLG_UI_Button16.tga", "BTN_RECALL_NORMAL" )
g_pButton_Pet_Btn_Recall:SetOverTex( "DLG_UI_Button16.tga", "BTN_RECALL_OVER" )
g_pButton_Pet_Btn_Recall:SetDownTex( "DLG_UI_Button16.tga", "BTN_RECALL_OVER" )

g_pButton_Pet_Btn_Recall:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(305,102+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pet_Btn_Recall:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(305-2,102-1+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pet_Btn_Recall:SetDownPoint
{
	ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(305-2+1,102-1+1+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pet_Btn_Recall:SetCustomMsgMouseUp( PET_LIST_UI_CUSTOM_MESSAGE["PLUCM_INFO_SUMMON"] )

 
-------------- 소환해제 버튼
g_pButton_Pet_Btn_Recall = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Pet_Btn_Recall )
g_pButton_Pet_Btn_Recall:SetName( "Pet_Btn_Recall_Cancel" )

g_pButton_Pet_Btn_Recall:SetNormalTex( "DLG_UI_Button17.tga", "BTN_RECALL_CANCEL_NORMAL" )
g_pButton_Pet_Btn_Recall:SetOverTex( "DLG_UI_Button17.tga", "BTN_RECALL_CANCEL_OVER" )
g_pButton_Pet_Btn_Recall:SetDownTex( "DLG_UI_Button17.tga", "BTN_RECALL_CANCEL_OVER" )

g_pButton_Pet_Btn_Recall:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(296,103+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pet_Btn_Recall:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(296-2,103-2+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pet_Btn_Recall:SetDownPoint
{
	ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(296-2+1,103-2+1+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pet_Btn_Recall:SetCustomMsgMouseUp( PET_LIST_UI_CUSTOM_MESSAGE["PLUCM_INFO_SUMMON_CANCEL"] )


-------------- 하단 배경
g_pPicture_Pet_Propensity_Guide_BG1 = g_pUIDialog:CreatePicture()
g_pStatic_Pet_Propensity:AddPicture( g_pPicture_Pet_Propensity_Guide_BG1 )
g_pPicture_Pet_Propensity_Guide_BG1:SetTex( "DLG_UI_Common_Texture39.TGA", "PAT_CONTENTS_BOTTOM" )

g_pPicture_Pet_Propensity_Guide_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(18+2,527)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Pet_Propensity_Guide_BG2 = g_pUIDialog:CreatePicture()
g_pStatic_Pet_Propensity:AddPicture( g_pPicture_Pet_Propensity_Guide_BG2 )
g_pPicture_Pet_Propensity_Guide_BG2:SetTex( "DLG_UI_Common_Texture39.TGA", "PAT_CONTENTS_MIDDLE" )

g_pPicture_Pet_Propensity_Guide_BG2:SetPoint
{
    ADD_SIZE_Y = 36,
	"LEFT_TOP		= D3DXVECTOR2(18+2,527+8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Pet_Propensity_Guide_BG3 = g_pUIDialog:CreatePicture()
g_pStatic_Pet_Propensity:AddPicture( g_pPicture_Pet_Propensity_Guide_BG3 )
g_pPicture_Pet_Propensity_Guide_BG3:SetTex( "DLG_UI_Common_Texture39.TGA", "PAT_CONTENTS_TOP" )

g_pPicture_Pet_Propensity_Guide_BG3:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(18+2,527+44)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-------------- 펫 성향 안내 문구
g_pStatic_Pet_Propensity_Guide = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Pet_Propensity_Guide )
g_pStatic_Pet_Propensity_Guide:SetName( "Pet_Propensity_Guide" )

 g_pStatic_Pet_Propensity_Guide:AddString
{
 --MSG    		 = "펫이름은 외향적이며 감정적입니다.\n펫은 성향에 따라 행동 빈도나 시기가 달라집니다.\n성향은 동행 유지 시간과 음식 섭취 패턴에 따라 변화합니다.",
 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 "POS            = D3DXVECTOR2(18+13,533)",
 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.0)",
 }
 

 

-------------- 바둑판 배경(라인)
-- 가로 라인 1PX
g_pStatic_Pat_Baduk_Check = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Pat_Baduk_Check )
g_pStatic_Pat_Baduk_Check:SetName( "Pat_Baduk_Check" )

g_pPicture_Pat_Baduk_Line1 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Baduk_Check:AddPicture( g_pPicture_Pat_Baduk_Line1 )
g_pPicture_Pat_Baduk_Line1:SetTex( "DLG_UI_Common_Texture41.tga", "PAT_BlACk_LINE" )

g_pPicture_Pat_Baduk_Line1:SetPoint
{
	ADD_SIZE_X = 330,
	"LEFT_TOP		= D3DXVECTOR2(18+14,162+14)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.4)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture_Pat_Baduk_Line2 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Baduk_Check:AddPicture( g_pPicture_Pat_Baduk_Line2 )
g_pPicture_Pat_Baduk_Line2:SetTex( "DLG_UI_Common_Texture41.tga", "PAT_BlACk_LINE" )

g_pPicture_Pat_Baduk_Line2:SetPoint
{
	ADD_SIZE_X = 330,
	"LEFT_TOP		= D3DXVECTOR2(18+14,162+14+55)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.4)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture_Pat_Baduk_Line3 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Baduk_Check:AddPicture( g_pPicture_Pat_Baduk_Line3 )
g_pPicture_Pat_Baduk_Line3:SetTex( "DLG_UI_Common_Texture41.tga", "PAT_BlACk_LINE" )

g_pPicture_Pat_Baduk_Line3:SetPoint
{
	ADD_SIZE_X = 330,
	"LEFT_TOP		= D3DXVECTOR2(18+14,162+14+55+55)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.4)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture_Pat_Baduk_Line4 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Baduk_Check:AddPicture( g_pPicture_Pat_Baduk_Line4 )
g_pPicture_Pat_Baduk_Line4:SetTex( "DLG_UI_Common_Texture41.tga", "PAT_RED_LINE" )

g_pPicture_Pat_Baduk_Line4:SetPoint
{
	ADD_SIZE_X = 330,
	"LEFT_TOP		= D3DXVECTOR2(18+14,162+14+55+55+55)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,0.4)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture_Pat_Baduk_Line5 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Baduk_Check:AddPicture( g_pPicture_Pat_Baduk_Line5 )
g_pPicture_Pat_Baduk_Line5:SetTex( "DLG_UI_Common_Texture41.tga", "PAT_BlACk_LINE" )

g_pPicture_Pat_Baduk_Line5:SetPoint
{
	ADD_SIZE_X = 330,
	"LEFT_TOP		= D3DXVECTOR2(18+14,162+14+55+55+55+55)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.4)",
	CHANGE_TIME     	= 0.0,
}


g_pPicture_Pat_Baduk_Line6 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Baduk_Check:AddPicture( g_pPicture_Pat_Baduk_Line6 )
g_pPicture_Pat_Baduk_Line6:SetTex( "DLG_UI_Common_Texture41.tga", "PAT_BlACk_LINE" )

g_pPicture_Pat_Baduk_Line6:SetPoint
{
	ADD_SIZE_X = 330,
	"LEFT_TOP		= D3DXVECTOR2(18+14,162+14+55+55+55+55+55)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.4)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture_Pat_Baduk_Line7 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Baduk_Check:AddPicture( g_pPicture_Pat_Baduk_Line7 )
g_pPicture_Pat_Baduk_Line7:SetTex( "DLG_UI_Common_Texture41.tga", "PAT_BlACk_LINE" )

g_pPicture_Pat_Baduk_Line7:SetPoint
{
	ADD_SIZE_X = 330,
	"LEFT_TOP		= D3DXVECTOR2(18+14,162+14+55+55+55+55+55+55)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.4)",
	CHANGE_TIME     	= 0.0,
}


-- 세로 라인 1PX
g_pPicture_Pat_Baduk_Line8 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Baduk_Check:AddPicture( g_pPicture_Pat_Baduk_Line8 )
g_pPicture_Pat_Baduk_Line8:SetTex( "DLG_UI_Common_Texture41.tga", "PAT_BlACk_LINE" )

g_pPicture_Pat_Baduk_Line8:SetPoint
{
	ADD_SIZE_Y = 330,
	"LEFT_TOP		= D3DXVECTOR2(18+14,162+14)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.4)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture_Pat_Baduk_Line9 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Baduk_Check:AddPicture( g_pPicture_Pat_Baduk_Line9 )
g_pPicture_Pat_Baduk_Line9:SetTex( "DLG_UI_Common_Texture41.tga", "PAT_BlACk_LINE" )

g_pPicture_Pat_Baduk_Line9:SetPoint
{
	ADD_SIZE_Y = 330,
	"LEFT_TOP		= D3DXVECTOR2(18+14+55,162+14)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.4)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture_Pat_Baduk_Line10 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Baduk_Check:AddPicture( g_pPicture_Pat_Baduk_Line10 )
g_pPicture_Pat_Baduk_Line10:SetTex( "DLG_UI_Common_Texture41.tga", "PAT_BlACk_LINE" )

g_pPicture_Pat_Baduk_Line10:SetPoint
{
	ADD_SIZE_Y = 330,
	"LEFT_TOP		= D3DXVECTOR2(18+14+55+55,162+14)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.4)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture_Pat_Baduk_Line11 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Baduk_Check:AddPicture( g_pPicture_Pat_Baduk_Line11 )
g_pPicture_Pat_Baduk_Line11:SetTex( "DLG_UI_Common_Texture41.tga", "PAT_RED_LINE" )

g_pPicture_Pat_Baduk_Line11:SetPoint
{
	ADD_SIZE_Y = 330,
	"LEFT_TOP		= D3DXVECTOR2(18+14+55+55+55,162+14)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,0.4)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture_Pat_Baduk_Line12 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Baduk_Check:AddPicture( g_pPicture_Pat_Baduk_Line12 )
g_pPicture_Pat_Baduk_Line12:SetTex( "DLG_UI_Common_Texture41.tga", "PAT_BlACk_LINE" )

g_pPicture_Pat_Baduk_Line12:SetPoint
{
	ADD_SIZE_Y = 330,
	"LEFT_TOP		= D3DXVECTOR2(18+14+55+55+55+55,162+14)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.4)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture_Pat_Baduk_Line13 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Baduk_Check:AddPicture( g_pPicture_Pat_Baduk_Line13 )
g_pPicture_Pat_Baduk_Line13:SetTex( "DLG_UI_Common_Texture41.tga", "PAT_BlACk_LINE" )

g_pPicture_Pat_Baduk_Line13:SetPoint
{
	ADD_SIZE_Y = 330,
	"LEFT_TOP		= D3DXVECTOR2(18+14+55+55+55+55+55,162+14)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.4)",
	CHANGE_TIME     	= 0.0,
}

g_pPicture_Pat_Baduk_Line14 = g_pUIDialog:CreatePicture()
g_pStatic_Pat_Baduk_Check:AddPicture( g_pPicture_Pat_Baduk_Line14 )
g_pPicture_Pat_Baduk_Line14:SetTex( "DLG_UI_Common_Texture41.tga", "PAT_BlACk_LINE" )

g_pPicture_Pat_Baduk_Line14:SetPoint
{
	ADD_SIZE_Y = 330,
	"LEFT_TOP		= D3DXVECTOR2(18+14+55+55+55+55+55+55,162+14)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.4)",
	CHANGE_TIME     	= 0.0,
}


--[[
 -------------- 위로 버튼
g_pButton_Pat_Btn_Arrow = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Pat_Btn_Arrow )
g_pButton_Pat_Btn_Arrow:SetName( "Pat_Btn_Top" )

g_pButton_Pat_Btn_Arrow:SetNormalTex( "DLG_UI_Button16.tga", "TOP_ARROW_NORMAL" )
g_pButton_Pat_Btn_Arrow:SetOverTex( "DLG_UI_Button16.tga", "TOP_ARROW_OVER" )
g_pButton_Pat_Btn_Arrow:SetDownTex( "DLG_UI_Button16.tga", "TOP_ARROW_OVER" )

g_pButton_Pat_Btn_Arrow:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(188,168)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_Btn_Arrow:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(188-1,168-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_Btn_Arrow:SetDownPoint
{
	ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(188-1+1,168-1+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-------------- 아래로 버튼
g_pButton_Pat_Btn_Arrow = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Pat_Btn_Arrow )
g_pButton_Pat_Btn_Arrow:SetName( "Pat_Btn_Bottom" )

g_pButton_Pat_Btn_Arrow:SetNormalTex( "DLG_UI_Button16.tga", "BOTTOM_ARROW_NORMAL" )
g_pButton_Pat_Btn_Arrow:SetOverTex( "DLG_UI_Button16.tga", "BOTTOM_ARROW_OVER" )
g_pButton_Pat_Btn_Arrow:SetDownTex( "DLG_UI_Button16.tga", "BOTTOM_ARROW_OVER" )

g_pButton_Pat_Btn_Arrow:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(188,500)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_Btn_Arrow:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(188-1,500-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_Btn_Arrow:SetDownPoint
{
	ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(188-1+1,500-1+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




-------------- 왼쪽 버튼
g_pButton_Pat_Btn_Arrow = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Pat_Btn_Arrow )
g_pButton_Pat_Btn_Arrow:SetName( "Pat_Btn_Left" )

g_pButton_Pat_Btn_Arrow:SetNormalTex( "DLG_UI_Button16.tga", "LEFT_ARROW_NORMAL" )
g_pButton_Pat_Btn_Arrow:SetOverTex( "DLG_UI_Button16.tga", "LEFT_ARROW_OVER" )
g_pButton_Pat_Btn_Arrow:SetDownTex( "DLG_UI_Button16.tga", "LEFT_ARROW_OVER" )

g_pButton_Pat_Btn_Arrow:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(22,330)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_Btn_Arrow:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(22-1,330-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_Btn_Arrow:SetDownPoint
{
	ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(22-1+1,330-1+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




-------------- 오른쪽 버튼
g_pButton_Pat_Btn_Arrow = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Pat_Btn_Arrow )
g_pButton_Pat_Btn_Arrow:SetName( "Pat_Btn_Right" )

g_pButton_Pat_Btn_Arrow:SetNormalTex( "DLG_UI_Button16.tga", "RIGHT_ARROW_NORMAL" )
g_pButton_Pat_Btn_Arrow:SetOverTex( "DLG_UI_Button16.tga", "RIGHT_ARROW_OVER" )
g_pButton_Pat_Btn_Arrow:SetDownTex( "DLG_UI_Button16.tga", "RIGHT_ARROW_OVER" )

g_pButton_Pat_Btn_Arrow:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(355,330)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_Btn_Arrow:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(355-1,330-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Pat_Btn_Arrow:SetDownPoint
{
	ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(355-1+1,330-1+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]

--[[
-------------- 좌표 빨간점 
 g_pPicture_Pat_Propensity_Red_Circle = g_pUIDialog:CreatePicture()
 g_pStatic_Pet_Propensity:AddPicture( g_pPicture_Pat_Propensity_Red_Circle )
 g_pPicture_Pat_Propensity_Red_Circle:SetTex( "DLG_UI_Common_Texture41.TGA", "RED_CIRCLE_COORDINATE" )

 g_pPicture_Pat_Propensity_Red_Circle:SetPoint
 {

	 "LEFT_TOP		= D3DXVECTOR2(18+14 - 66,162+14+55+55+55+55+55+55 - 63)",
	 "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	 CHANGE_TIME		= 0.0,
 }
 g_pPicture_Pat_Propensity_Red_Circle:SetIndex(2)
--]]


-------------- 좌표 풍선말 
g_pPicture_Pat_Propensity_Pungsun = g_pUIDialog:CreatePicture()
g_pStatic_Pet_Propensity:AddPicture( g_pPicture_Pat_Propensity_Pungsun )
g_pPicture_Pat_Propensity_Pungsun:SetTex( "DLG_UI_Common_Texture41.TGA", "PUNGSUNG_BLACK_WIN" )

g_pPicture_Pat_Propensity_Pungsun:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(18+14+33 - 66,162+14+55+55+55+55+55+55+32 - 63)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_Pat_Propensity_Pungsun:SetIndex(3)


-------------- 좌표값(x,y)
g_pStatic_Pet_Propensity_Coordinate = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Pet_Propensity_Coordinate )
g_pStatic_Pet_Propensity_Coordinate:SetName( "Pet_Propensity_Coordinate" )

 g_pStatic_Pet_Propensity_Coordinate:AddString
{
 --MSG    		 = "(50,100)",
 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
 "POS            = D3DXVECTOR2(18+14+33+40 - 66,162+14+55+55+55+55+55+55+32+5 - 63)",
 "COLOR          = D3DXCOLOR(1.0,1.0,1.0,1.0)",
 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,0.0)",
 }
 
 
 
 
-------------- 상단(외향)
g_pStatic_Pet_Propensity_Extroversion = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Pet_Propensity_Extroversion )
g_pStatic_Pet_Propensity_Extroversion:SetName( "Pat_Propensity_Extroversion" )


g_pPicture_Pat_Propensity_Extroversion = g_pUIDialog:CreatePicture()
g_pStatic_Pet_Propensity_Extroversion:AddPicture( g_pPicture_Pat_Propensity_Extroversion )
g_pPicture_Pat_Propensity_Extroversion:SetTex( "DLG_UI_Common_Texture41.TGA", "PET_PROPENSITY_TOP" )

g_pPicture_Pat_Propensity_Extroversion:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(184-10,178)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-------------- 하단(내향)
g_pStatic_Pet_Propensity_Introversion = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Pet_Propensity_Introversion )
g_pStatic_Pet_Propensity_Introversion:SetName( "Pat_Propensity_Introversion" )


g_pPicture_Pat_Propensity_Introversion = g_pUIDialog:CreatePicture()
g_pStatic_Pet_Propensity_Introversion:AddPicture( g_pPicture_Pat_Propensity_Introversion )
g_pPicture_Pat_Propensity_Introversion:SetTex( "DLG_UI_Common_Texture41.TGA", "PET_PROPENSITY_BOTTOM" )

g_pPicture_Pat_Propensity_Introversion:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(184,486)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
  
 
 
-------------- 왼쪽(이성)
g_pStatic_Pet_Propensity_Reason = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Pet_Propensity_Reason )
g_pStatic_Pet_Propensity_Reason:SetName( "Pat_Propensity_Reason" )

g_pPicture_Pat_Propensity_Reason = g_pUIDialog:CreatePicture()
g_pStatic_Pet_Propensity_Reason:AddPicture( g_pPicture_Pat_Propensity_Reason )
g_pPicture_Pat_Propensity_Reason:SetTex( "DLG_UI_Common_Texture41.TGA", "PET_PROPENSITY_LEFT" )

g_pPicture_Pat_Propensity_Reason:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(35,333)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
  
 ---------------------감성(오른쪽)
g_pStatic_Pet_Propensity_Sensitivity = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Pet_Propensity_Sensitivity )
g_pStatic_Pet_Propensity_Sensitivity:SetName( "Pat_Propensity_Sensitivity" )

g_pPicture_Pat_Propensity_Sensitivity = g_pUIDialog:CreatePicture()
g_pStatic_Pet_Propensity_Sensitivity:AddPicture( g_pPicture_Pat_Propensity_Sensitivity )
g_pPicture_Pat_Propensity_Sensitivity:SetTex( "DLG_UI_Common_Texture41.TGA", "PET_PROPENSITY_RIGHT" )

g_pPicture_Pat_Propensity_Sensitivity:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(331-25,333)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
  
