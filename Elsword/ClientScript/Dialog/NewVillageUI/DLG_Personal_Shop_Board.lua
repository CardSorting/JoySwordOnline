-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStaticPersonalShopBoard = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPersonalShopBoard )
g_pStaticPersonalShopBoard:SetName( "StaticGuildBoard" )
g_pUIDialog:SetFront( true )

g_pUIDialog:SetCloseCustomUIEventID( UI_PERSONAL_SHOP_BOARD_CUSTOM_MSG["UPSBCM_EXIT"] )

g_pUIDialog:AddDummyPos( D3DXVECTOR3( 0, 0, 0 ) ) -- 위치
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 460, 493, 0 ) ) -- Size

for	index = 0, 6 do
	g_pUIDialog:AddDummyPos( D3DXVECTOR3( 162,114 + index * 45, 0 ) )
end



---------BG

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticPersonalShopBoard:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture26.TGA", "BG01" )

g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticPersonalShopBoard:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture26.TGA", "BG02" )

g_pPicture_bg:SetPoint
{
    ADD_SIZE_X = 721,
	"LEFT_TOP		= D3DXVECTOR2(165,-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticPersonalShopBoard:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture26.TGA", "BG03" )

g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(888,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticPersonalShopBoard:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture09.TGA", "White" )

g_pPicture_bg:SetPoint
{

    ADD_SIZE_X = 49,
    ADD_SIZE_Y = 312,
    
	"LEFT_TOP		= D3DXVECTOR2(462,116)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.4)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticPersonalShopBoard:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture09.TGA", "White" )

g_pPicture_bg:SetPoint
{

    ADD_SIZE_X = 134,
    ADD_SIZE_Y = 312,
    
	"LEFT_TOP		= D3DXVECTOR2(665,116)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.4)",
	CHANGE_TIME		= 0.0,
}



----------------- bar

--[[
g_pPicturebar = g_pUIDialog:CreatePicture()
g_pStaticPersonalShopBoard:AddPicture( g_pPicturebar )

g_pPicturebar:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicturebar:SetPoint
{

	ADD_SIZE_X = 340,
	"LEFT_TOP		= D3DXVECTOR2(10,45)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}
--]]

------1

g_pPicturebar = g_pUIDialog:CreatePicture()
g_pStaticPersonalShopBoard:AddPicture( g_pPicturebar )

g_pPicturebar:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicturebar:SetPoint
{

	ADD_SIZE_Y = 16,
	"LEFT_TOP		= D3DXVECTOR2(204,95)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

------2

g_pPicturebar = g_pUIDialog:CreatePicture()
g_pStaticPersonalShopBoard:AddPicture( g_pPicturebar )

g_pPicturebar:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicturebar:SetPoint
{

	ADD_SIZE_Y = 16,
	"LEFT_TOP		= D3DXVECTOR2(460,95)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

------3

g_pPicturebar = g_pUIDialog:CreatePicture()
g_pStaticPersonalShopBoard:AddPicture( g_pPicturebar )

g_pPicturebar:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicturebar:SetPoint
{

	ADD_SIZE_Y = 16,
	"LEFT_TOP		= D3DXVECTOR2(512,95)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


------4

g_pPicturebar = g_pUIDialog:CreatePicture()
g_pStaticPersonalShopBoard:AddPicture( g_pPicturebar )

g_pPicturebar:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicturebar:SetPoint
{

	ADD_SIZE_Y = 16,
	"LEFT_TOP		= D3DXVECTOR2(664,95)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

------5

g_pPicturebar = g_pUIDialog:CreatePicture()
g_pStaticPersonalShopBoard:AddPicture( g_pPicturebar )

g_pPicturebar:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicturebar:SetPoint
{

	ADD_SIZE_Y = 16,
	"LEFT_TOP		= D3DXVECTOR2(800,95)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------                BUTTON                             ---------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------





---EXIT 버튼


g_pButton_exit = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_exit )
g_pButton_exit:SetName( "_exit" )
g_pButton_exit:SetNormalTex( "DLG_UI_Button01.tga", "EXIT_NORMAL" )

g_pButton_exit:SetOverTex( "DLG_UI_Button01.tga", "EXIT_OVER" )

g_pButton_exit:SetDownTex( "DLG_UI_Button01.tga", "EXIT_OVER" )

g_pButton_exit:SetNormalPoint
{
    "LEFT_TOP		= D3DXVECTOR2(879+4,15+4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(879,15)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(879+1,15+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetCustomMsgMouseUp( UI_PERSONAL_SHOP_BOARD_CUSTOM_MSG["UPSBCM_EXIT"] )





---HELP 버튼


g_pButton_Help = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Help )
g_pButton_Help:SetName( "_help" )
g_pButton_Help:SetNormalTex( "DLG_UI_Button14.tga", "Help_NORMAL" )

g_pButton_Help:SetOverTex( "DLG_UI_Button14.tga", "Help_OVER" )

g_pButton_Help:SetDownTex( "DLG_UI_Button14.tga", "Help_OVER" )

g_pButton_Help:SetNormalPoint
{
    "LEFT_TOP		= D3DXVECTOR2(879+4-26,15+4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(879-26,15)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(879+1-26,15+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_OPEN_ELLIOS_GUIDE_GO_TO_PAGE"] )
g_pButton_Help:AddDummyInt(100)



--<<

g_pButtonPrevBoard = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonPrevBoard )
g_pButtonPrevBoard:SetName( "ButtonPrevBoard" )
g_pButtonPrevBoard:SetNormalTex( "DLG_UI_BUTTON16.tga", "Arrow_L_Normal" )

g_pButtonPrevBoard:SetOverTex( "DLG_UI_BUTTON16.tga", "Arrow_L_Over" )

g_pButtonPrevBoard:SetDownTex( "DLG_UI_BUTTON16.tga", "Arrow_L_Over" )

g_pButtonPrevBoard:SetNormalPoint
{
    "LEFT_TOP		= D3DXVECTOR2(303+80+1,442+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPrevBoard:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(303+80,442)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPrevBoard:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(303+80+1,442+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPrevBoard:SetCustomMsgMouseUp( UI_PERSONAL_SHOP_BOARD_CUSTOM_MSG["UPSBCM_PUSH_PREV_BOARD"] )

--- < 버튼

g_pButtonPrevPage = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonPrevPage )
g_pButtonPrevPage:SetName( "ButtonPrevPage" )
g_pButtonPrevPage:SetNormalTex( "DLG_UI_BUTTON01.tga", "L_arrow_normal" )

g_pButtonPrevPage:SetOverTex( "DLG_UI_BUTTON01.tga", "L_arrow_over" )

g_pButtonPrevPage:SetDownTex( "DLG_UI_BUTTON01.tga", "L_arrow_over" )

g_pButtonPrevPage:SetNormalPoint
{
    "LEFT_TOP		= D3DXVECTOR2(329+80,442+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPrevPage:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(329+80,442)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPrevPage:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(329+80+1,442+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPrevPage:SetCustomMsgMouseUp( UI_PERSONAL_SHOP_BOARD_CUSTOM_MSG["UPSBCM_PUSH_PREV_PAGE"] )




--->  버튼

g_pButtonNextPage = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonNextPage )
g_pButtonNextPage:SetName( "ButtonNextPage" )
g_pButtonNextPage:SetNormalTex( "DLG_UI_BUTTON01.tga", "R_arrow_normal" )

g_pButtonNextPage:SetOverTex( "DLG_UI_BUTTON01.tga", "R_arrow_over" )

g_pButtonNextPage:SetDownTex( "DLG_UI_BUTTON01.tga", "R_arrow_over" )

g_pButtonNextPage:SetNormalPoint
{
    "LEFT_TOP		= D3DXVECTOR2(555+80+1,442+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNextPage:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(555+80,442)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNextPage:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(555+80+1,442+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNextPage:SetCustomMsgMouseUp( UI_PERSONAL_SHOP_BOARD_CUSTOM_MSG["UPSBCM_PUSH_NEXT_PAGE"] )



--->>  버튼

g_pButtonNextBoard = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonNextBoard )
g_pButtonNextBoard:SetName( "ButtonNextBoard" )
g_pButtonNextBoard:SetNormalTex( "DLG_UI_BUTTON16.tga", "Arrow_R_Normal" )

g_pButtonNextBoard:SetOverTex( "DLG_UI_BUTTON16.tga", "Arrow_R_Over" )

g_pButtonNextBoard:SetDownTex( "DLG_UI_BUTTON16.tga", "Arrow_R_Over" )

g_pButtonNextBoard:SetNormalPoint
{
    "LEFT_TOP		= D3DXVECTOR2(572+80+1,442+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNextBoard:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(572+80,442)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNextBoard:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(572+80+1,442+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNextBoard:SetCustomMsgMouseUp( UI_PERSONAL_SHOP_BOARD_CUSTOM_MSG["UPSBCM_PUSH_NEXT_BOARD"] )



-- 검색 버튼

g_pButtonSearchItem = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSearchItem )
g_pButtonSearchItem:SetName( "ButtonSearchItem" )
g_pButtonSearchItem:SetNormalTex( "DLG_UI_BUTTON16.tga", "Search_Noraml" )
g_pButtonSearchItem:SetOverTex( "DLG_UI_BUTTON16.tga", "Search_Over" )
g_pButtonSearchItem:SetDownTex( "DLG_UI_BUTTON16.tga", "Search_Over" )

g_pButtonSearchItem:SetNormalPoint
{
    "LEFT_TOP		= D3DXVECTOR2(28,60)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSearchItem:SetOverPoint
{
     ADD_SIZE_X = 2,
     ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(28-4-1,60-4-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSearchItem:SetDownPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(28-4,60-4)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSearchItem:SetCustomMsgMouseUp( UI_PERSONAL_SHOP_BOARD_CUSTOM_MSG["UPSBCM_PUSH_SEARCH_ITEM"] )


-- 새로 고침 버튼

g_pButtonRefresh = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonRefresh )
g_pButtonRefresh:SetName( "ButtonRefresh" )
g_pButtonRefresh:SetNormalTex( "DLG_UI_BUTTON13.tga", "BTN_BG_NORMAL" )
g_pButtonRefresh:SetOverTex( "DLG_UI_BUTTON13.tga", "BTN_BG_OVER" )
g_pButtonRefresh:SetDownTex( "DLG_UI_BUTTON13.tga", "BTN_BG_OVER" )

g_pButtonRefresh:SetNormalPoint
{
    "LEFT_TOP		= D3DXVECTOR2(159,63)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRefresh:SetOverPoint
{
     ADD_SIZE_X = 2,
     ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(159-2-1,63-2-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRefresh:SetDownPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(159-2,63-2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRefresh:SetCustomMsgMouseUp( UI_PERSONAL_SHOP_BOARD_CUSTOM_MSG["UPSBCM_PUSH_REFRESH"] )


-- 검색 조건 초기화

g_pButtonInitSearchCondition = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonInitSearchCondition )
g_pButtonInitSearchCondition:SetName( "ButtonInitSearchCondition" )
g_pButtonInitSearchCondition:SetNormalTex( "DLG_UI_BUTTON13.tga", "BTN_BG_NORMAL" )
g_pButtonInitSearchCondition:SetOverTex( "DLG_UI_BUTTON13.tga", "BTN_BG_OVER" )
g_pButtonInitSearchCondition:SetDownTex( "DLG_UI_BUTTON13.tga", "BTN_BG_OVER" )

g_pButtonInitSearchCondition:SetNormalPoint
{
    "LEFT_TOP		= D3DXVECTOR2(159+82,63)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonInitSearchCondition:SetOverPoint
{
     ADD_SIZE_X = 2,
     ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(159+82-2-1,63-2-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonInitSearchCondition:SetDownPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(159+82-2,63-2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonInitSearchCondition:SetCustomMsgMouseUp( UI_PERSONAL_SHOP_BOARD_CUSTOM_MSG["UPSBCM_PUSH_INIT_SEARCH_CONDITION"] )




----페이지 버튼


---01
g_pButtonPageNum1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonPageNum1 )
g_pButtonPageNum1:SetName( "ButtonPageNum1" )
g_pButtonPageNum1:SetNormalTex( "DLG_UI_Common_Texture13.tga", "Black" )
g_pButtonPageNum1:SetOverTex( "DLG_UI_Common_Texture13.tga", "Black" )
g_pButtonPageNum1:SetDownTex( "DLG_UI_Common_Texture13.tga", "Black" )
g_pButtonPageNum1:SetNormalPoint
{
ADD_SIZE_X = 17,
ADD_SIZE_Y = 12,
    "LEFT_TOP		= D3DXVECTOR2(351+80,447)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPageNum1:SetOverPoint
{
ADD_SIZE_X = 17,
ADD_SIZE_Y = 12,
    "LEFT_TOP		= D3DXVECTOR2(351+80,447)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPageNum1:SetDownPoint
{
ADD_SIZE_X = 17,
ADD_SIZE_Y = 12,
    "LEFT_TOP		= D3DXVECTOR2(351+80,447)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPageNum1:SetCustomMsgMouseUp( UI_PERSONAL_SHOP_BOARD_CUSTOM_MSG["UPSBCM_PUSH_PAGE_NUM1"] )


---02
g_pButtonPageNum2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonPageNum2 )
g_pButtonPageNum2:SetName( "ButtonPageNum2" )
g_pButtonPageNum2:SetNormalTex( "DLG_UI_Common_Texture13.tga", "Black" )
g_pButtonPageNum2:SetOverTex( "DLG_UI_Common_Texture13.tga", "Black" )
g_pButtonPageNum2:SetDownTex( "DLG_UI_Common_Texture13.tga", "Black" )
g_pButtonPageNum2:SetNormalPoint
{
ADD_SIZE_X = 17,
ADD_SIZE_Y = 12,
    "LEFT_TOP		= D3DXVECTOR2(351+80+20,447)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPageNum2:SetOverPoint
{
ADD_SIZE_X = 17,
ADD_SIZE_Y = 12,
    "LEFT_TOP		= D3DXVECTOR2(351+80+20,447)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPageNum2:SetDownPoint
{
ADD_SIZE_X = 17,
ADD_SIZE_Y = 12,
    "LEFT_TOP		= D3DXVECTOR2(351+80+20,447)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPageNum2:SetCustomMsgMouseUp( UI_PERSONAL_SHOP_BOARD_CUSTOM_MSG["UPSBCM_PUSH_PAGE_NUM2"] )


---03
g_pButtonPageNum3 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonPageNum3 )
g_pButtonPageNum3:SetName( "ButtonPageNum3" )
g_pButtonPageNum3:SetNormalTex( "DLG_UI_Common_Texture13.tga", "Black" )
g_pButtonPageNum3:SetOverTex( "DLG_UI_Common_Texture13.tga", "Black" )
g_pButtonPageNum3:SetDownTex( "DLG_UI_Common_Texture13.tga", "Black" )
g_pButtonPageNum3:SetNormalPoint
{
ADD_SIZE_X = 17,
ADD_SIZE_Y = 12,
    "LEFT_TOP		= D3DXVECTOR2(351+80+20+20,447)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPageNum3:SetOverPoint
{
ADD_SIZE_X = 17,
ADD_SIZE_Y = 12,
    "LEFT_TOP		= D3DXVECTOR2(351+80+20+20,447)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPageNum3:SetDownPoint
{
ADD_SIZE_X = 17,
ADD_SIZE_Y = 12,
    "LEFT_TOP		= D3DXVECTOR2(351+80+20+20,447)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPageNum3:SetCustomMsgMouseUp( UI_PERSONAL_SHOP_BOARD_CUSTOM_MSG["UPSBCM_PUSH_PAGE_NUM3"] )


---04
g_pButtonPageNum4 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonPageNum4 )
g_pButtonPageNum4:SetName( "ButtonPageNum4" )
g_pButtonPageNum4:SetNormalTex( "DLG_UI_Common_Texture13.tga", "Black" )
g_pButtonPageNum4:SetOverTex( "DLG_UI_Common_Texture13.tga", "Black" )
g_pButtonPageNum4:SetDownTex( "DLG_UI_Common_Texture13.tga", "Black" )
g_pButtonPageNum4:SetNormalPoint
{
ADD_SIZE_X = 17,
ADD_SIZE_Y = 12,
    "LEFT_TOP		= D3DXVECTOR2(351+80+20+20+20,447)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPageNum4:SetOverPoint
{
ADD_SIZE_X = 17,
ADD_SIZE_Y = 12,
    "LEFT_TOP		= D3DXVECTOR2(351+20+20+20,447)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPageNum4:SetDownPoint
{
ADD_SIZE_X = 17,
ADD_SIZE_Y = 12,
    "LEFT_TOP		= D3DXVECTOR2(351+80+20+20+20,447)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPageNum4:SetCustomMsgMouseUp( UI_PERSONAL_SHOP_BOARD_CUSTOM_MSG["UPSBCM_PUSH_PAGE_NUM4"] )


---05
g_pButtonPageNum5 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonPageNum5 )
g_pButtonPageNum5:SetName( "ButtonPageNum5" )
g_pButtonPageNum5:SetNormalTex( "DLG_UI_Common_Texture13.tga", "Black" )
g_pButtonPageNum5:SetOverTex( "DLG_UI_Common_Texture13.tga", "Black" )
g_pButtonPageNum5:SetDownTex( "DLG_UI_Common_Texture13.tga", "Black" )
g_pButtonPageNum5:SetNormalPoint
{
ADD_SIZE_X = 17,
ADD_SIZE_Y = 12,
    "LEFT_TOP		= D3DXVECTOR2(351+80+20+20+20+20,447)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPageNum5:SetOverPoint
{
ADD_SIZE_X = 17,
ADD_SIZE_Y = 12,
    "LEFT_TOP		= D3DXVECTOR2(351+80+20+20+20+20,447)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPageNum5:SetDownPoint
{
ADD_SIZE_X = 17,
ADD_SIZE_Y = 12,
    "LEFT_TOP		= D3DXVECTOR2(351+80+20+20+20+20,447)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPageNum5:SetCustomMsgMouseUp( UI_PERSONAL_SHOP_BOARD_CUSTOM_MSG["UPSBCM_PUSH_PAGE_NUM5"] )


---06
g_pButtonPageNum6 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonPageNum6 )
g_pButtonPageNum6:SetName( "ButtonPageNum6" )
g_pButtonPageNum6:SetNormalTex( "DLG_UI_Common_Texture13.tga", "Black" )
g_pButtonPageNum6:SetOverTex( "DLG_UI_Common_Texture13.tga", "Black" )
g_pButtonPageNum6:SetDownTex( "DLG_UI_Common_Texture13.tga", "Black" )
g_pButtonPageNum6:SetNormalPoint
{
ADD_SIZE_X = 17,
ADD_SIZE_Y = 12,
    "LEFT_TOP		= D3DXVECTOR2(351+80+20+20+20+20+20,447)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPageNum6:SetOverPoint
{
ADD_SIZE_X = 17,
ADD_SIZE_Y = 12,
    "LEFT_TOP		= D3DXVECTOR2(351+20+20+20+20+20,447)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPageNum6:SetDownPoint
{
ADD_SIZE_X = 17,
ADD_SIZE_Y = 12,
    "LEFT_TOP		= D3DXVECTOR2(351+80+20+20+20+20+20,447)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPageNum6:SetCustomMsgMouseUp( UI_PERSONAL_SHOP_BOARD_CUSTOM_MSG["UPSBCM_PUSH_PAGE_NUM6"] )


---07
g_pButtonPageNum7 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonPageNum7 )
g_pButtonPageNum7:SetName( "ButtonPageNum7" )
g_pButtonPageNum7:SetNormalTex( "DLG_UI_Common_Texture13.tga", "Black" )
g_pButtonPageNum7:SetOverTex( "DLG_UI_Common_Texture13.tga", "Black" )
g_pButtonPageNum7:SetDownTex( "DLG_UI_Common_Texture13.tga", "Black" )
g_pButtonPageNum7:SetNormalPoint
{
ADD_SIZE_X = 17,
ADD_SIZE_Y = 12,
    "LEFT_TOP		= D3DXVECTOR2(351+80+20+20+20+20+20+20,447)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPageNum7:SetOverPoint
{
ADD_SIZE_X = 17,
ADD_SIZE_Y = 12,
    "LEFT_TOP		= D3DXVECTOR2(351+80+20+20+20+20+20+20,447)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPageNum7:SetDownPoint
{
ADD_SIZE_X = 17,
ADD_SIZE_Y = 12,
    "LEFT_TOP		= D3DXVECTOR2(351+80+20+20+20+20+20+20,447)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPageNum7:SetCustomMsgMouseUp( UI_PERSONAL_SHOP_BOARD_CUSTOM_MSG["UPSBCM_PUSH_PAGE_NUM7"] )



g_pButtonPageNum8 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonPageNum8 )
g_pButtonPageNum8:SetName( "ButtonPageNum8" )
g_pButtonPageNum8:SetNormalTex( "DLG_UI_Common_Texture13.tga", "Black" )
g_pButtonPageNum8:SetOverTex( "DLG_UI_Common_Texture13.tga", "Black" )
g_pButtonPageNum8:SetDownTex( "DLG_UI_Common_Texture13.tga", "Black" )
g_pButtonPageNum8:SetNormalPoint
{
ADD_SIZE_X = 17,
ADD_SIZE_Y = 12,
    "LEFT_TOP		= D3DXVECTOR2(351+80+20+20+20+20+20+20+20,447)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPageNum8:SetOverPoint
{
ADD_SIZE_X = 17,
ADD_SIZE_Y = 12,
    "LEFT_TOP		= D3DXVECTOR2(351+80+20+20+20+20+20+20+20,447)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPageNum8:SetDownPoint
{
ADD_SIZE_X = 17,
ADD_SIZE_Y = 12,
    "LEFT_TOP		= D3DXVECTOR2(351+80+20+20+20+20+20+20+20,447)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPageNum8:SetCustomMsgMouseUp( UI_PERSONAL_SHOP_BOARD_CUSTOM_MSG["UPSBCM_PUSH_PAGE_NUM8"] )


---09
g_pButtonPageNum9 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonPageNum9 )
g_pButtonPageNum9:SetName( "ButtonPageNum9" )
g_pButtonPageNum9:SetNormalTex( "DLG_UI_Common_Texture13.tga", "Black" )
g_pButtonPageNum9:SetOverTex( "DLG_UI_Common_Texture13.tga", "Black" )
g_pButtonPageNum9:SetDownTex( "DLG_UI_Common_Texture13.tga", "Black" )
g_pButtonPageNum9:SetNormalPoint
{
ADD_SIZE_X = 17,
ADD_SIZE_Y = 12,
    "LEFT_TOP		= D3DXVECTOR2(351+80+20+20+20+20+20+20+20+20,447)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPageNum9:SetOverPoint
{
ADD_SIZE_X = 17,
ADD_SIZE_Y = 12,
    "LEFT_TOP		= D3DXVECTOR2(351+80+20+20+20+20+20+20+20+20,447)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPageNum9:SetDownPoint
{
ADD_SIZE_X = 17,
ADD_SIZE_Y = 12,
    "LEFT_TOP		= D3DXVECTOR2(351+80+20+20+20+20+20+20+20+20,447)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPageNum9:SetCustomMsgMouseUp( UI_PERSONAL_SHOP_BOARD_CUSTOM_MSG["UPSBCM_PUSH_PAGE_NUM9"] )


---10
g_pButtonPageNum10 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonPageNum10 )
g_pButtonPageNum10:SetName( "ButtonPageNum10" )
g_pButtonPageNum10:SetNormalTex( "DLG_UI_Common_Texture13.tga", "Black" )
g_pButtonPageNum10:SetOverTex( "DLG_UI_Common_Texture13.tga", "Black" )
g_pButtonPageNum10:SetDownTex( "DLG_UI_Common_Texture13.tga", "Black" )
g_pButtonPageNum10:SetNormalPoint
{
ADD_SIZE_X = 17,
ADD_SIZE_Y = 12,
    "LEFT_TOP		= D3DXVECTOR2(351+80+20+20+20+20+20+20+20+20+20,447)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPageNum10:SetOverPoint
{
ADD_SIZE_X = 17,
ADD_SIZE_Y = 12,
    "LEFT_TOP		= D3DXVECTOR2(351+80+20+20+20+20+20+20+20+20+20,447)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPageNum10:SetDownPoint
{
ADD_SIZE_X = 17,
ADD_SIZE_Y = 12,
    "LEFT_TOP		= D3DXVECTOR2(351+80+20+20+20+20+20+20+20+20+20,447)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPageNum10:SetCustomMsgMouseUp( UI_PERSONAL_SHOP_BOARD_CUSTOM_MSG["UPSBCM_PUSH_PAGE_NUM10"] )





-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------                TEXT                             ---------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



---------      Pages    ----------------

g_pStaticPageNum= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPageNum )
g_pStaticPageNum:SetName( "StaticPageNum" )

--01
g_pStaticPageNum:AddString
{
	--MSG 			= STR_ID_1329,
	MSG 			= "00",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(360+80,447)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}  

--02
g_pStaticPageNum:AddString
{
	--MSG 			= STR_ID_1329,
	MSG 			= "00",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(360+80+20,447)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}  

--03
g_pStaticPageNum:AddString
{
	--MSG 			= STR_ID_1329,
	MSG 			= "00",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(360+80+20+20,447)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}  

--04
g_pStaticPageNum:AddString
{
	--MSG 			= STR_ID_1329,
	MSG 			= "00",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(360+80+20+20+20,447)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}  

--05
g_pStaticPageNum:AddString
{
	--MSG 			= STR_ID_1329,
	MSG 			= "00",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(360+80+20+20+20+20,447)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}  

--06
g_pStaticPageNum:AddString
{
	--MSG 			= STR_ID_1329,
	MSG 			= "00",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(360+80+20+20+20+20+20,447)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}  

--07
g_pStaticPageNum:AddString
{
	--MSG 			= STR_ID_1329,
	MSG 			= "00",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(360+80+20+20+20+20+20+20,447)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}  

--08
g_pStaticPageNum:AddString
{
	--MSG 			= STR_ID_1329,
	MSG 			= "00",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(360+80+20+20+20+20+20+20+20,447)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}  

--09
g_pStaticPageNum:AddString
{
	--MSG 			= STR_ID_1329,
	MSG 			= "00",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(360+80+20+20+20+20+20+20+20+20,447)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}  

--10
g_pStaticPageNum:AddString
{
	--MSG 			= STR_ID_1329,
	MSG 			= "00",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(360+80+20+20+20+20+20+20+20+20+20,447)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



---------       Notice    ----------------


g_pPicturebar = g_pUIDialog:CreatePicture()
g_pStaticPersonalShopBoard:AddPicture( g_pPicturebar )

g_pPicturebar:SetTex( "DLG_UI_Common_Texture02.TGA", "feel" )

g_pPicturebar:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(142+45,23)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pStaticNotice= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNotice )
g_pStaticNotice:SetName( "StaticNotice" )

g_pStaticNotice:AddString
{
	MSG 			= STR_ID_4930,
--	MSG 			= "물품 구입 시 3%의 수수료가 부과 됩니다.",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(162+45,24)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}  





---------       Title  ----------------

g_pStaticTitle= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticTitle )
g_pStaticTitle:SetName( "StaticTitle" )

g_pStaticTitle:AddString
{
	MSG 			= STR_ID_4931,
	--MSG 			= "상점물품검색",
	FONT_INDEX		= XUF_DODUM_20_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(20+2,19+3)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}  

g_pStaticTitle:AddString
{
	MSG 			= STR_ID_4931,
	--MSG 			= "상점물품검색",
	FONT_INDEX		= XUF_DODUM_20_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(20,19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}  


g_pStaticTitle:AddString
{
	MSG 			= STR_ID_4932,
	--MSG 			= "아이템 이름",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(211,97)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,0.2)",
}  

g_pStaticTitle:AddString
{
	MSG 			= STR_ID_1247,
	--MSG 			= "수량",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(468,97)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,0.2)",
}  

g_pStaticTitle:AddString
{
	MSG 			= STR_ID_4933,
	--MSG 			= "개당 가격",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(521,97)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,0.2)",
}  


g_pStaticTitle:AddString
{
	MSG 			= STR_ID_4934,
	--MSG 			= "판매자",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(672,97)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,0.2)",
}  


g_pStaticTitle:AddString
{
	MSG 			= STR_ID_4935,
	--MSG 			= "사용 가능한 아이템",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(796,67)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,0.2)",
}  


---------       아이템등급   ----------------

g_pStaticGrade= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGrade )
g_pStaticGrade:SetName( "StaticGrade" )

g_pStaticGrade:AddString
{
	MSG 			= STR_ID_935,
	--MSG 			= "유니크",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(37,281)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}  


g_pStaticGrade:AddString
{
	MSG 			= STR_ID_936,
	--MSG 			= "엘리트",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(37,281+26)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}  


g_pStaticGrade:AddString
{
	MSG 			= STR_ID_937,
	--MSG 			= "레어",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(37,281+26+26-1)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}  


g_pStaticGrade:AddString
{
	MSG 			= STR_ID_938,
	--MSG 			= "노멀",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(37,281+26+26+26-2)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}  

g_pStaticGrade:AddString
{
	MSG 			= STR_ID_939,
	--MSG 			= "로우",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(37,281+26+26+26+26-4)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}  





---------       BUTTONS   ----------------

g_pStatic_BUTTON= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_BUTTON )
g_pStatic_BUTTON:SetName( "StaticSearch" )

g_pStatic_BUTTON:AddString
{
	MSG 			= STR_ID_4936,
	--MSG 			= "검색시작",
	FONT_INDEX		= XUF_DODUM_20_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(61+2,74+3)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}  

g_pStatic_BUTTON:AddString
{
	MSG 			= STR_ID_4936,
	--MSG 			= "검색시작",
	FONT_INDEX		= XUF_DODUM_20_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(61,74)",
	"COLOR			= D3DXCOLOR(0.0,0.9,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}  


-----------------------------------

g_pStatic_BUTTON:AddString
{
	MSG 			= STR_ID_4939,
	--MSG 			= "새로고침",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(198,67)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.3,0.0,1.0)",
}  

g_pStatic_BUTTON:AddString
{
	MSG 			= STR_ID_4940,
	--MSG 			= "초기화",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(280,67)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.3,0.0,1.0)",
}  





---- 1차 분류

g_pComboFirst = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pComboFirst )
g_pComboFirst:SetName( "ComboFirst" )

--버튼 클릭했을 때 드랍 텍스쳐 높이
g_pComboFirst:SetDropHeight( 40 )
				   
g_pComboFirst:SetString
{
	-- MSG 			= "NoName",
 	 FONT_INDEX      = XUF_DODUM_13SEMIBOLD,
	"POS 			= D3DXVECTOR2(140,3)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pComboFirst:SetTextTex( "DLG_Common_Button00.tga", "invisible" )
g_pComboFirst:SetButtonTex( "DLG_UI_Button08.TGA", "combo_normal" )
g_pComboFirst:SetButtonMouseOverTex( "DLG_UI_Button08.TGA", "combo_OVER" )
g_pComboFirst:SetButtonMouseDownTex ( "DLG_UI_Button08.TGA", "combo_OVER" )
g_pComboFirst:SetDropdownTex ( "DLG_UI_Common_Texture01.tga", "COMBO_DOWN" )
g_pComboFirst:SetDropdownTextTex ( "DLG_Common_New_Texture62.tga", "Select_Bar" )

g_pComboFirst:SetScollBarUpButtonTex(  "DLG_Common_New_Texture61.tga", "Up_Arrow_Normal" )
g_pComboFirst:SetScollBarUpButtonDownTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Over" )
g_pComboFirst:SetScollBarDownButtonTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Normal" )
g_pComboFirst:SetScollBarDownButtonDownTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Over" )
g_pComboFirst:SetScollBarThumbTex( "DLG_Common_New_Texture61.tga", "Scroll_Bar" )
g_pComboFirst:SetScollBarTrackTex( "DLG_Room_Button0.tga", "Invisible" )
g_pComboFirst:InitScrollBar()

--수동으로 만들 때
g_pComboFirst:SetTextPos( 28, 145) -- 박스 시작 위치
g_pComboFirst:SetTextSize( 119, 21) --박스 사이즈
--텍스트 시작 포인트
g_pComboFirst:SetTextStringOffsetPos( 5, 2 ) -- 텍스트 위치(박스Left_top 기준) 
g_pComboFirst:SetButtonPos( 28+99, 145+3)  -- ▼ 버튼 위치
g_pComboFirst:SetButtonSize( 15, 12)

g_pComboFirst:SetCustomMsgSelectionChanged( UI_PERSONAL_SHOP_BOARD_CUSTOM_MSG["UPSBCM_COMBO_FIRST"] )



---- 2차 분류

g_pComboSecond = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pComboSecond )
g_pComboSecond:SetName( "ComboSecond" )

--버튼 클릭했을 때 드랍 텍스쳐 높이
g_pComboSecond:SetDropHeight( 40 )
				   
g_pComboSecond:SetString
{
	-- MSG 			= "NoName",
 	 FONT_INDEX      = XUF_DODUM_13SEMIBOLD,
	"POS 			= D3DXVECTOR2(140,3)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pComboSecond:SetTextTex( "DLG_Common_Button00.tga", "invisible" )
g_pComboSecond:SetButtonTex( "DLG_UI_Button08.TGA", "combo_normal" )
g_pComboSecond:SetButtonMouseOverTex( "DLG_UI_Button08.TGA", "combo_OVER" )
g_pComboSecond:SetButtonMouseDownTex ( "DLG_UI_Button08.TGA", "combo_OVER" )
g_pComboSecond:SetDropdownTex ( "DLG_UI_Common_Texture01.tga", "COMBO_DOWN" )
g_pComboSecond:SetDropdownTextTex ( "DLG_Common_New_Texture62.tga", "Select_Bar" )

g_pComboSecond:SetScollBarUpButtonTex(  "DLG_Common_New_Texture61.tga", "Up_Arrow_Normal" )
g_pComboSecond:SetScollBarUpButtonDownTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Over" )
g_pComboSecond:SetScollBarDownButtonTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Normal" )
g_pComboSecond:SetScollBarDownButtonDownTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Over" )
g_pComboSecond:SetScollBarThumbTex( "DLG_Common_New_Texture61.tga", "Scroll_Bar" )
g_pComboSecond:SetScollBarTrackTex( "DLG_Room_Button0.tga", "Invisible" )
g_pComboSecond:InitScrollBar()


--수동으로 만들 때
g_pComboSecond:SetTextPos( 28, 145+26) -- 박스 시작 위치
g_pComboSecond:SetTextSize( 119, 21) --박스 사이즈
--텍스트 시작 포인트
g_pComboSecond:SetTextStringOffsetPos( 5, 2 ) -- 텍스트 위치(박스Left_top 기준) 
g_pComboSecond:SetButtonPos( 28+99, 145+3+26)  -- ▼ 버튼 위치
g_pComboSecond:SetButtonSize( 15, 12)
g_pComboSecond:SetCustomMsgSelectionChanged( UI_PERSONAL_SHOP_BOARD_CUSTOM_MSG["UPSBCM_COMBO_SECOND"] )


---- 캐릭터 분류

g_pComboCharacter = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pComboCharacter )
g_pComboCharacter:SetName( "ComboCharacter" )

--버튼 클릭했을 때 드랍 텍스쳐 높이
g_pComboCharacter:SetDropHeight( 40 )
				   
g_pComboCharacter:SetString
{
	-- MSG 			= "NoName",
 	 FONT_INDEX      = XUF_DODUM_13SEMIBOLD,
	"POS 			= D3DXVECTOR2(140,3)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pComboCharacter:SetTextTex( "DLG_Common_Button00.tga", "invisible" )
g_pComboCharacter:SetButtonTex( "DLG_UI_Button08.TGA", "combo_normal" )
g_pComboCharacter:SetButtonMouseOverTex( "DLG_UI_Button08.TGA", "combo_OVER" )
g_pComboCharacter:SetButtonMouseDownTex ( "DLG_UI_Button08.TGA", "combo_OVER" )
g_pComboCharacter:SetDropdownTex ( "DLG_UI_Common_Texture01.tga", "COMBO_DOWN" )
g_pComboCharacter:SetDropdownTextTex ( "DLG_Common_New_Texture62.tga", "Select_Bar" )

g_pComboCharacter:SetScollBarUpButtonTex(  "DLG_Common_New_Texture61.tga", "Up_Arrow_Normal" )
g_pComboCharacter:SetScollBarUpButtonDownTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Over" )
g_pComboCharacter:SetScollBarDownButtonTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Normal" )
g_pComboCharacter:SetScollBarDownButtonDownTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Over" )
g_pComboCharacter:SetScollBarThumbTex( "DLG_Common_New_Texture61.tga", "Scroll_Bar" )
g_pComboCharacter:SetScollBarTrackTex( "DLG_Room_Button0.tga", "Invisible" )
g_pComboCharacter:InitScrollBar()


--수동으로 만들 때
g_pComboCharacter:SetTextPos( 28, 145+26+26) -- 박스 시작 위치
g_pComboCharacter:SetTextSize( 119, 21) --박스 사이즈
--텍스트 시작 포인트
g_pComboCharacter:SetTextStringOffsetPos( 5, 2 ) -- 텍스트 위치(박스Left_top 기준) 
g_pComboCharacter:SetButtonPos( 28+99, 145+3+26+26)  -- ▼ 버튼 위치
g_pComboCharacter:SetButtonSize( 15, 12)
g_pComboCharacter:SetCustomMsgSelectionChanged( UI_PERSONAL_SHOP_BOARD_CUSTOM_MSG["UPSBCM_COMBO_CHARACTER"] )


---- 전직 분류

g_pComboClass = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pComboClass )
g_pComboClass:SetName( "ComboClass" )

--버튼 클릭했을 때 드랍 텍스쳐 높이
g_pComboClass:SetDropHeight( 40 )

g_pComboClass:SetString
{
	-- MSG 			= "NoName",
 	 FONT_INDEX      = XUF_DODUM_13SEMIBOLD,
	"POS 			= D3DXVECTOR2(140,3)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pComboClass:SetTextTex( "DLG_Common_Button00.tga", "invisible" )
g_pComboClass:SetButtonTex( "DLG_UI_Button08.TGA", "combo_normal" )
g_pComboClass:SetButtonMouseOverTex( "DLG_UI_Button08.TGA", "combo_OVER" )
g_pComboClass:SetButtonMouseDownTex ( "DLG_UI_Button08.TGA", "combo_OVER" )
g_pComboClass:SetDropdownTex ( "DLG_UI_Common_Texture01.tga", "COMBO_DOWN" )
g_pComboClass:SetDropdownTextTex ( "DLG_Common_New_Texture62.tga", "Select_Bar" )

g_pComboClass:SetScollBarUpButtonTex(  "DLG_Common_New_Texture61.tga", "Up_Arrow_Normal" )
g_pComboClass:SetScollBarUpButtonDownTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Over" )
g_pComboClass:SetScollBarDownButtonTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Normal" )
g_pComboClass:SetScollBarDownButtonDownTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Over" )
g_pComboClass:SetScollBarThumbTex( "DLG_Common_New_Texture61.tga", "Scroll_Bar" )
g_pComboClass:SetScollBarTrackTex( "DLG_Room_Button0.tga", "Invisible" )
g_pComboClass:InitScrollBar()


--수동으로 만들 때
g_pComboClass:SetTextPos( 28, 145+26+26+26) -- 박스 시작 위치
g_pComboClass:SetTextSize( 119, 21) --박스 사이즈
--텍스트 시작 포인트
g_pComboClass:SetTextStringOffsetPos( 5, 2 ) -- 텍스트 위치(박스Left_top 기준) 
g_pComboClass:SetButtonPos( 28+99, 145+3+26+26+26)  -- ▼ 버튼 위치
g_pComboClass:SetButtonSize( 15, 12)
g_pComboClass:SetCustomMsgSelectionChanged( UI_PERSONAL_SHOP_BOARD_CUSTOM_MSG["UPSBCM_COMBO_CLASS"] )



--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------   체크박스      ----------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

---------------------------유니크

g_pPictureUnique = g_pUIDialog:CreatePicture()
g_pStaticPersonalShopBoard:AddPicture( g_pPictureUnique )

g_pPictureUnique:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

g_pPictureUnique:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(125,281)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pCheckUnique = g_pUIDialog:CreateCheckBox()
g_pCheckUnique:SetName( "CheckUnique" )
g_pUIDialog:AddControl( g_pCheckUnique )

g_pCheckUnique:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckUnique:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )

g_pCheckUnique:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(125,281)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(125+15,281+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckUnique:SetCheckPoint
{    
 	"LEFT_TOP		= D3DXVECTOR2(125-2,281-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pCheckUnique:SetCustomMsgChecked( UI_PERSONAL_SHOP_BOARD_CUSTOM_MSG["UPSBCM_CHECK_UNIQUE"] )
g_pCheckUnique:SetCustomMsgUnChecked( UI_PERSONAL_SHOP_BOARD_CUSTOM_MSG["UPSBCM_CHECK_UNIQUE"] )


-------엘리트 체크

g_pPictureElite = g_pUIDialog:CreatePicture()
g_pStaticPersonalShopBoard:AddPicture( g_pPictureElite )

g_pPictureElite:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

g_pPictureElite:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(125,281+26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pCheckElite = g_pUIDialog:CreateCheckBox()
g_pCheckElite:SetName( "CheckElite" )
g_pUIDialog:AddControl( g_pCheckElite )

g_pCheckElite:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckElite:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )

g_pCheckElite:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(125,281+26)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(125+15,281+15+26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckElite:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(125-2,281-2+26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}

g_pCheckElite:SetCustomMsgChecked( UI_PERSONAL_SHOP_BOARD_CUSTOM_MSG["UPSBCM_CHECK_ELITE"] )
g_pCheckElite:SetCustomMsgUnChecked( UI_PERSONAL_SHOP_BOARD_CUSTOM_MSG["UPSBCM_CHECK_ELITE"] )



-------레어 체크

g_pPictureRare = g_pUIDialog:CreatePicture()
g_pStaticPersonalShopBoard:AddPicture( g_pPictureRare )

g_pPictureRare:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

g_pPictureRare:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(125,281+26+26-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pCheckRare = g_pUIDialog:CreateCheckBox()
g_pCheckRare:SetName( "CheckRare" )
g_pUIDialog:AddControl( g_pCheckRare )

g_pCheckRare:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckRare:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )

g_pCheckRare:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(125,281+26+26-1)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(125+15,281+15+26+26-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckRare:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(125-2,281-2+26+26-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}

g_pCheckRare:SetCustomMsgChecked( UI_PERSONAL_SHOP_BOARD_CUSTOM_MSG["UPSBCM_CHECK_RARE"] )
g_pCheckRare:SetCustomMsgUnChecked( UI_PERSONAL_SHOP_BOARD_CUSTOM_MSG["UPSBCM_CHECK_RARE"] )



-------노말 체크

g_pPictureNormal = g_pUIDialog:CreatePicture()
g_pStaticPersonalShopBoard:AddPicture( g_pPictureNormal )

g_pPictureNormal:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

g_pPictureNormal:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(125,281+26+26+26-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pCheckNormal = g_pUIDialog:CreateCheckBox()
g_pCheckNormal:SetName( "CheckNormal" )
g_pUIDialog:AddControl( g_pCheckNormal )

g_pCheckNormal:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckNormal:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )

g_pCheckNormal:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(125,281+26+26+26-3)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(125+15,281+15+26+26+26-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckNormal:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(125-2,281-2+26+26+26-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pCheckNormal:SetCustomMsgChecked( UI_PERSONAL_SHOP_BOARD_CUSTOM_MSG["UPSBCM_CHECK_NORMAL"] )
g_pCheckNormal:SetCustomMsgUnChecked( UI_PERSONAL_SHOP_BOARD_CUSTOM_MSG["UPSBCM_CHECK_NORMAL"] )


-------로우 체크

g_pPictureLow = g_pUIDialog:CreatePicture()
g_pStaticPersonalShopBoard:AddPicture( g_pPictureLow )

g_pPictureLow:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

g_pPictureLow:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(125,281+26+26+26+26-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pCheckLow = g_pUIDialog:CreateCheckBox()
g_pCheckLow:SetName( "CheckLow" )
g_pUIDialog:AddControl( g_pCheckLow )

g_pCheckLow:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckLow:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )

g_pCheckLow:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(125,281+26+26+26+26-5)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(125+15,281+15+26+26+26+26-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckLow:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(125-2,281-2+26+26+26+26-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pCheckLow:SetCustomMsgChecked( UI_PERSONAL_SHOP_BOARD_CUSTOM_MSG["UPSBCM_CHECK_LOW"] )
g_pCheckLow:SetCustomMsgUnChecked( UI_PERSONAL_SHOP_BOARD_CUSTOM_MSG["UPSBCM_CHECK_LOW"] )



-------사용 가능한 아이템 체크

g_pPictureUsable = g_pUIDialog:CreatePicture()
g_pStaticPersonalShopBoard:AddPicture( g_pPictureUsable )

g_pPictureUsable:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

g_pPictureUsable:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(639+138,66)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pCheckUsable = g_pUIDialog:CreateCheckBox()
g_pCheckUsable:SetName( "CheckUsable" )
g_pUIDialog:AddControl( g_pCheckUsable )

g_pCheckUsable:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckUsable:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )

g_pCheckUsable:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(639+138,66)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(639+138+15,66+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckUsable:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(639+138-2,66-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pCheckUsable:SetCustomMsgChecked( UI_PERSONAL_SHOP_BOARD_CUSTOM_MSG["UPSBCM_CHECK_USABLE"] )
g_pCheckUsable:SetCustomMsgUnChecked( UI_PERSONAL_SHOP_BOARD_CUSTOM_MSG["UPSBCM_CHECK_USABLE"] )





-------------검색 조건 적기

g_pIMEEditItemName = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIMEEditItemName )
g_pIMEEditItemName:SetName( "IMEEditItemName" )
g_pIMEEditItemName:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(32,117)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(32+114,117+18)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIMEEditItemName:SetFont( XUF_DODUM_11_NORMAL)
g_pIMEEditItemName:SetTextColor( 0.2, 0.2, 0.2, 1.0 )
g_pIMEEditItemName:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditItemName:SetSelectedBackColor( 0.5, 0.5, 0.5, 0.5 )
g_pIMEEditItemName:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )
--g_pIMEEditItemName:SetByteLimit(26)
--g_pIMEEditItemName:SetWidthLimit( 437 - (110+9) )
g_pIMEEditItemName:SetLengthLimit(16)
g_pIMEEditItemName:SetCustomMsgEnter( UI_PERSONAL_SHOP_BOARD_CUSTOM_MSG["UPSBCM_ENTER_ITEM_NAME"] )
g_pIMEEditItemName:SetCustomMsgFocusOut( UI_PERSONAL_SHOP_BOARD_CUSTOM_MSG["UPSBCM_MOUSE_OUT_ITEM_NAME"] )


------------------레벨 범위 적기

g_pIMEEditMinLevel = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIMEEditMinLevel )
g_pIMEEditMinLevel:SetName( "IMEEditMinLevel" )
g_pIMEEditMinLevel:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(60,251)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(60+31,251+18)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIMEEditMinLevel:SetFont( XUF_DODUM_11_NORMAL)
g_pIMEEditMinLevel:SetTextColor( 0.2, 0.2, 0.2, 1.0 )
g_pIMEEditMinLevel:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditMinLevel:SetSelectedBackColor( 0.5, 0.5, 0.5, 0.5 )
g_pIMEEditMinLevel:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )
--g_pIMEEditMinLevel:SetByteLimit(26)
--g_pIMEEditMinLevel:SetWidthLimit( 437 - (110+9) )
g_pIMEEditMinLevel:SetLengthLimit(2)
g_pIMEEditMinLevel:SetCustomMsgEnter( UI_PERSONAL_SHOP_BOARD_CUSTOM_MSG["UPSBCM_ENTER_MIN_LEVEL"] )
g_pIMEEditMinLevel:SetCustomMsgFocusOut( UI_PERSONAL_SHOP_BOARD_CUSTOM_MSG["UPSBCM_ENTER_MIN_LEVEL"] )
g_pIMEEditMinLevel:SetOnlyNumMode( true )


------------------레벨 범위 적기

g_pIMEEditMaxLevel = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIMEEditMaxLevel )
g_pIMEEditMaxLevel:SetName( "IMEEditMaxLevel" )
g_pIMEEditMaxLevel:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(117,251)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(117+31,251+18)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIMEEditMaxLevel:SetFont( XUF_DODUM_11_NORMAL)
g_pIMEEditMaxLevel:SetTextColor( 0.2, 0.2, 0.2, 1.0 )
g_pIMEEditMaxLevel:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditMaxLevel:SetSelectedBackColor( 0.5, 0.5, 0.5, 0.5 )
g_pIMEEditMaxLevel:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )
--g_pIMEEditMaxLevel:SetByteLimit(26)
--g_pIMEEditMaxLevel:SetWidthLimit( 437 - (110+9) )
g_pIMEEditMaxLevel:SetLengthLimit(2)
g_pIMEEditMaxLevel:SetCustomMsgEnter( UI_PERSONAL_SHOP_BOARD_CUSTOM_MSG["UPSBCM_ENTER_MAX_LEVEL"] )
g_pIMEEditMaxLevel:SetCustomMsgFocusOut( UI_PERSONAL_SHOP_BOARD_CUSTOM_MSG["UPSBCM_ENTER_MAX_LEVEL"] )
g_pIMEEditMaxLevel:SetOnlyNumMode( true )




------------ 아이템 슬롯

pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_SHOP_PREVIEW"],

	SORT_TYPE	= 0,
	SLOT_ID		= 0,

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],

	"POS		= D3DXVECTOR2( 163, 118 )",
	"SIZE		= D3DXVECTOR2( 40,40 )",

}
pItemSlot:SetClickable( false )

pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_SHOP_PREVIEW"],

	SORT_TYPE	= 0,
	SLOT_ID		= 1,

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],

	"POS		= D3DXVECTOR2( 163, 118+45)",
	"SIZE		= D3DXVECTOR2( 40,40 )",

}
pItemSlot:SetClickable( false )

pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_SHOP_PREVIEW"],

	SORT_TYPE	= 0,
	SLOT_ID		= 2,

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],

	"POS		= D3DXVECTOR2( 163, 118+45+45)",
	"SIZE		= D3DXVECTOR2( 40,40 )",

}
pItemSlot:SetClickable( false )

pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_SHOP_PREVIEW"],

	SORT_TYPE	= 0,
	SLOT_ID		= 3,

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],

	"POS		= D3DXVECTOR2( 163, 118+45+45+45)",
	"SIZE		= D3DXVECTOR2( 40,40 )",

}
pItemSlot:SetClickable( false )

pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_SHOP_PREVIEW"],

	SORT_TYPE	= 0,
	SLOT_ID		= 4,

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],

	"POS		= D3DXVECTOR2( 163, 118+45+45+45+45)",
	"SIZE		= D3DXVECTOR2( 40,40 )",

}
pItemSlot:SetClickable( false )



pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_SHOP_PREVIEW"],

	SORT_TYPE	= 0,
	SLOT_ID		= 5,

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],

	"POS		= D3DXVECTOR2( 163, 118+45+45+45+45+45)",
	"SIZE		= D3DXVECTOR2( 40,40 )",

}
pItemSlot:SetClickable( false )


pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_SHOP_PREVIEW"],

	SORT_TYPE	= 0,
	SLOT_ID		= 6,

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_NONE"],

	"POS		= D3DXVECTOR2( 163, 118+45+45+45+45+45+45)",
	"SIZE		= D3DXVECTOR2( 40,40 )",

}
pItemSlot:SetClickable( false )

