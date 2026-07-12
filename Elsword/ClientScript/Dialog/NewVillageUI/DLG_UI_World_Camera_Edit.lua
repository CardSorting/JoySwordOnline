-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


dlgX = 120
dlgY = 302
g_pUIDialog:SetPos( dlgX, dlgY )


g_pUIDialog:SetFront( true )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )

g_pUIDialog:AddDummyPos( D3DXVECTOR3( 625, 1190, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 625, 1150, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 625, 1110, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 625, 1070, 0 ) )

g_pStatic_item_soket = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_item_soket )
g_pStatic_item_soket:SetName( "g_pStatic_item_soket" )




g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_Common_New_Texture32.tga", "F12_WINDOW1" )

g_pPicture_bg1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(-70,32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_Common_New_Texture32.tga", "F12_WINDOW2" )

g_pPicture_bg2:SetPoint
{
    	ADD_SIZE_X = 23,
	"LEFT_TOP		= D3DXVECTOR2(56,32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_Common_New_Texture32.tga", "F12_WINDOW3" )

g_pPicture_bg3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(80,32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---------BG

g_pPicture_bg4 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_bg4 )

g_pPicture_bg4:SetTex( "DLG_Common_New_Texture26.tga", "TRADE_SHOP_GUIDE_WINDOW1" )

g_pPicture_bg4:SetPoint
{
    	
	"LEFT_TOP		= D3DXVECTOR2(0-30,165)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg5 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_bg5 )

g_pPicture_bg5:SetTex( "DLG_Common_New_Texture26.tga", "TRADE_SHOP_GUIDE_WINDOW2" )

g_pPicture_bg5:SetPoint
{
    	ADD_SIZE_X = 80+30,
	"LEFT_TOP		= D3DXVECTOR2(17-30,165)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg6 = g_pUIDialog:CreatePicture()
g_pStatic_item_soket:AddPicture( g_pPicture_bg6 )

g_pPicture_bg6:SetTex( "DLG_Common_New_Texture26.tga", "TRADE_SHOP_GUIDE_WINDOW3" )

g_pPicture_bg6:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(98,165)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




--[[
g_pStatic_info = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_info )
g_pStatic_info:SetName( "Static_info" )


------------- 말풍선
g_pPicture_info1 = g_pUIDialog:CreatePicture()
g_pStatic_info:AddPicture( g_pPicture_info1 )

g_pPicture_info1:SetTex( "DLG_UI_Common_Texture09.tga", "WINDOW_TOP" )

g_pPicture_info1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,-40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_info2 = g_pUIDialog:CreatePicture()
g_pStatic_info:AddPicture( g_pPicture_info2 )

g_pPicture_info2:SetTex( "DLG_UI_Common_Texture09.tga", "WINDOW_CENTER" )

g_pPicture_info2:SetPoint
{
    	ADD_SIZE_Y = 50,
	"LEFT_TOP		= D3DXVECTOR2(0,-21)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_info3 = g_pUIDialog:CreatePicture()
g_pStatic_info:AddPicture( g_pPicture_info3 )

g_pPicture_info3:SetTex( "DLG_UI_Common_Texture09.tga", "WINDOW_BOTTOM" )
g_pPicture_info3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,31)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--]]

g_pStaticKeyFrameState = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticKeyFrameState )
g_pStaticKeyFrameState:SetName( "StaticKeyFrameState" )

g_pStaticKeyFrameState:AddString
{
	MSG 			= "",
	FONT_INDEX		= XUF_HEADLINE_30_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(50,91)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,0.9)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pStaticKeyFrameState:AddString
{
	MSG 			= "",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(78,112)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.9)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pStaticKeyFrameState:AddString
{
	MSG 			= "",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(78+10,112)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.9)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}




--------------------------------------------------------------------------------------------
-- < 버튼

g_pButtonPrevPage = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonPrevPage )
g_pButtonPrevPage:SetName( "ButtonPrevPage" )
g_pButtonPrevPage:SetNormalTex( "DLG_UI_BUTTON01.tga", "L_arrow_normal" )

g_pButtonPrevPage:SetOverTex( "DLG_UI_BUTTON01.tga", "L_arrow_over" )

g_pButtonPrevPage:SetDownTex( "DLG_UI_BUTTON01.tga", "L_arrow_over" )

g_pButtonPrevPage:SetNormalPoint
{
    "LEFT_TOP		= D3DXVECTOR2(55,128+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPrevPage:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(55,128)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPrevPage:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(55+1,128+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPrevPage:SetCustomMsgMouseUp( UI_CAMERA_EDIT_CUSTOM_MSG["UCECM_PREV_KEYFRAME"] )


-->  버튼

g_pButtonNextPage = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonNextPage )
g_pButtonNextPage:SetName( "ButtonNextPage" )
g_pButtonNextPage:SetNormalTex( "DLG_UI_BUTTON01.tga", "R_arrow_normal" )

g_pButtonNextPage:SetOverTex( "DLG_UI_BUTTON01.tga", "R_arrow_over" )

g_pButtonNextPage:SetDownTex( "DLG_UI_BUTTON01.tga", "R_arrow_over" )

g_pButtonNextPage:SetNormalPoint
{
    "LEFT_TOP		= D3DXVECTOR2(55+20+1,128+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNextPage:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(55+20,128)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNextPage:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(55+20+1,128+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNextPage:SetCustomMsgMouseUp( UI_CAMERA_EDIT_CUSTOM_MSG["UCECM_NEXT_KEYFRAME"] )









-------------------------------------------------------------------------------------


g_pStaticAngleType = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticAngleType )
g_pStaticAngleType:SetName( "StaticAngleType" )


g_pPicture_bg1_1 = g_pUIDialog:CreatePicture()
g_pStaticAngleType:AddPicture( g_pPicture_bg1_1 )

g_pPicture_bg1_1:SetTex( "DLG_Common_New_Texture26.tga", "TRADE_SHOP_TEXT_BOX1" )

g_pPicture_bg1_1:SetPoint
{
    	
	"LEFT_TOP		= D3DXVECTOR2(15-27,200-8+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg1_2 = g_pUIDialog:CreatePicture()
g_pStaticAngleType:AddPicture( g_pPicture_bg1_2 )

g_pPicture_bg1_2:SetTex( "DLG_Common_New_Texture26.tga", "TRADE_SHOP_TEXT_BOX2" )

g_pPicture_bg1_2:SetPoint
{
    	ADD_SIZE_X = 80+30,
	"LEFT_TOP		= D3DXVECTOR2(17-27,200-8+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg1_3 = g_pUIDialog:CreatePicture()
g_pStaticAngleType:AddPicture( g_pPicture_bg1_3 )

g_pPicture_bg1_3:SetTex( "DLG_Common_New_Texture26.tga", "TRADE_SHOP_TEXT_BOX3" )

g_pPicture_bg1_3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(98-27+30,200-8+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticAngleType:AddString
{
	MSG 			= "",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(15-2-28,200 - 13-9+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.9)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pComboFirst = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pComboFirst )
g_pComboFirst:SetName( "ComboAngleInterpolation" )

--버튼 클릭했을 때 드랍 텍스쳐 높이
g_pComboFirst:SetDropHeight( 40 )
				   
g_pComboFirst:SetString
{
	-- MSG 			= "NoName",
 	 FONT_INDEX      = XUF_DODUM_13SEMIBOLD,
	"POS 			= D3DXVECTOR2(140,3)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pComboFirst:SetTextTex( "DLG_Common_Button00.tga", "invisible" )
g_pComboFirst:SetButtonTex( "DLG_UI_Button08.TGA", "combo_OVER" )
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
g_pComboFirst:SetTextPos( 28-40, 145+51+3) -- 박스 시작 위치
g_pComboFirst:SetTextSize( 116, 21) --박스 사이즈
--텍스트 시작 포인트
g_pComboFirst:SetTextStringOffsetPos( 5, 2 ) -- 텍스트 위치(박스Left_top 기준) 
g_pComboFirst:SetButtonPos( 28+99-42, 145+3+49+3)  -- ▼ 버튼 위치
g_pComboFirst:SetButtonSize( 15, 12)

g_pComboFirst:SetCustomMsgSelectionChanged( UI_CAMERA_EDIT_CUSTOM_MSG["UCECM_COMBO_ANGLE"] )






-------------------------------------------------------------------------------------


g_pStaticMoveVelo = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMoveVelo )
g_pStaticMoveVelo:SetName( "StaticMoveVelo" )


g_pPicture_bg1_1 = g_pUIDialog:CreatePicture()
g_pStaticMoveVelo:AddPicture( g_pPicture_bg1_1 )

g_pPicture_bg1_1:SetTex( "DLG_Common_New_Texture26.tga", "TRADE_SHOP_TEXT_BOX1" )

g_pPicture_bg1_1:SetPoint
{
    	
	"LEFT_TOP		= D3DXVECTOR2(15-27,200+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg1_2 = g_pUIDialog:CreatePicture()
g_pStaticMoveVelo:AddPicture( g_pPicture_bg1_2 )

g_pPicture_bg1_2:SetTex( "DLG_Common_New_Texture26.tga", "TRADE_SHOP_TEXT_BOX2" )

g_pPicture_bg1_2:SetPoint
{
    	ADD_SIZE_X = 47,
	"LEFT_TOP		= D3DXVECTOR2(17-27,200+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg1_3 = g_pUIDialog:CreatePicture()
g_pStaticMoveVelo:AddPicture( g_pPicture_bg1_3 )

g_pPicture_bg1_3:SetTex( "DLG_Common_New_Texture26.tga", "TRADE_SHOP_TEXT_BOX3" )

g_pPicture_bg1_3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(98-33-27,200+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticMoveVelo:AddString
{
	MSG 			= "",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(15-2,200 - 13+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.9)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}



g_pStaticRotateVelo = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRotateVelo )
g_pStaticRotateVelo:SetName( "StaticRotateVelo" )


g_pPicture_bg2_1 = g_pUIDialog:CreatePicture()
g_pStaticRotateVelo:AddPicture( g_pPicture_bg2_1 )

g_pPicture_bg2_1:SetTex( "DLG_Common_New_Texture26.tga", "TRADE_SHOP_TEXT_BOX1" )

g_pPicture_bg2_1:SetPoint
{
    	
	"LEFT_TOP		= D3DXVECTOR2(15+33,200+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg2_2 = g_pUIDialog:CreatePicture()
g_pStaticRotateVelo:AddPicture( g_pPicture_bg2_2 )

g_pPicture_bg2_2:SetTex( "DLG_Common_New_Texture26.tga", "TRADE_SHOP_TEXT_BOX2" )

g_pPicture_bg2_2:SetPoint
{
    	ADD_SIZE_X = 47,
	"LEFT_TOP		= D3DXVECTOR2(17+33,200+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg2_3 = g_pUIDialog:CreatePicture()
g_pStaticRotateVelo:AddPicture( g_pPicture_bg2_3 )

g_pPicture_bg2_3:SetTex( "DLG_Common_New_Texture26.tga", "TRADE_SHOP_TEXT_BOX3" )

g_pPicture_bg2_3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(98+33-33,200+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pStaticRotateVelo:AddString
{
	MSG 			= "",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(15-2+62,200 - 13+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.9)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}



-------- 소켓 옵션 코드1  

g_pIMEEditCode1 = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIMEEditCode1 )
g_pIMEEditCode1:SetName( "IMEEditMoveVelo" )
g_pIMEEditCode1:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(15+2-27,200+2+35)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(15+50-27,200+20+35)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIMEEditCode1:SetFont( XUF_DODUM_11_NORMAL)
g_pIMEEditCode1:SetTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditCode1:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditCode1:SetSelectedBackColor( 0.5, 0.5, 0.5, 0.5 )
g_pIMEEditCode1:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )
--g_pIMEEditCode1:SetByteLimit(26)
--g_pIMEEditCode1:SetWidthLimit( 437 - (110+9) )
g_pIMEEditCode1:SetLengthLimit(5)
g_pIMEEditCode1:SetCustomMsgEnter( UI_CAMERA_EDIT_CUSTOM_MSG["UCECM_ENTER_MOV_VELO"] )
g_pIMEEditCode1:SetCustomMsgFocusOut( UI_CAMERA_EDIT_CUSTOM_MSG["UCECM_ENTER_MOV_VELO"] )
g_pIMEEditCode1:AddDummyInt(0)
g_pIMEEditCode1:SetOnlyNumMode( true )


-------- 소켓 옵션 코드2  

g_pIMEEditCode2 = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIMEEditCode2 )
g_pIMEEditCode2:SetName( "IMEEditRotateVelo" )
g_pIMEEditCode2:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(15+2+33,200+35+2)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(15+80+33,200+35+20)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIMEEditCode2:SetFont( XUF_DODUM_11_NORMAL)
g_pIMEEditCode2:SetTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditCode2:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditCode2:SetSelectedBackColor( 0.5, 0.5, 0.5, 0.5 )
g_pIMEEditCode2:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )
--g_pIMEEditCode2:SetByteLimit(26)
--g_pIMEEditCode2:SetWidthLimit( 437 - (110+9) )
g_pIMEEditCode2:SetLengthLimit(5)
g_pIMEEditCode2:SetCustomMsgEnter( UI_CAMERA_EDIT_CUSTOM_MSG["UCECM_ENTER_ROT_VELO"] )
g_pIMEEditCode2:SetCustomMsgFocusOut( UI_CAMERA_EDIT_CUSTOM_MSG["UCECM_ENTER_ROT_VELO"] )
g_pIMEEditCode2:AddDummyInt(1)
g_pIMEEditCode2:SetOnlyNumMode( true )
















-------------------------------------------------------------------------------------


g_pStaticFixedPosition = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticFixedPosition )
g_pStaticFixedPosition:SetName( "StaticFixedPosition" )


g_pPicture_bg1_1 = g_pUIDialog:CreatePicture()
g_pStaticFixedPosition:AddPicture( g_pPicture_bg1_1 )

g_pPicture_bg1_1:SetTex( "DLG_Common_New_Texture26.tga", "TRADE_SHOP_TEXT_BOX1" )

g_pPicture_bg1_1:SetPoint
{
    	
	"LEFT_TOP		= D3DXVECTOR2(15+50+60,200+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg1_2 = g_pUIDialog:CreatePicture()
g_pStaticFixedPosition:AddPicture( g_pPicture_bg1_2 )

g_pPicture_bg1_2:SetTex( "DLG_Common_New_Texture26.tga", "TRADE_SHOP_TEXT_BOX2" )

g_pPicture_bg1_2:SetPoint
{
    	ADD_SIZE_X = 47,
	"LEFT_TOP		= D3DXVECTOR2(17+50+60,200+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg1_3 = g_pUIDialog:CreatePicture()
g_pStaticFixedPosition:AddPicture( g_pPicture_bg1_3 )

g_pPicture_bg1_3:SetTex( "DLG_Common_New_Texture26.tga", "TRADE_SHOP_TEXT_BOX3" )

g_pPicture_bg1_3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(98+50+60-33,200+35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticFixedPosition:AddString
{
	MSG 			= "",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(15-2+83+60-6,200 - 13+35)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.9)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pPicture_bg2_1 = g_pUIDialog:CreatePicture()
g_pStaticFixedPosition:AddPicture( g_pPicture_bg2_1 )

g_pPicture_bg2_1:SetTex( "DLG_Common_New_Texture26.tga", "TRADE_SHOP_TEXT_BOX1" )

g_pPicture_bg2_1:SetPoint
{
    	
	"LEFT_TOP		= D3DXVECTOR2(15+50+60,200+35+38)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg2_2 = g_pUIDialog:CreatePicture()
g_pStaticFixedPosition:AddPicture( g_pPicture_bg2_2 )

g_pPicture_bg2_2:SetTex( "DLG_Common_New_Texture26.tga", "TRADE_SHOP_TEXT_BOX2" )

g_pPicture_bg2_2:SetPoint
{
    	ADD_SIZE_X = 47,
	"LEFT_TOP		= D3DXVECTOR2(17+50+60,200+35+38)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg2_3 = g_pUIDialog:CreatePicture()
g_pStaticFixedPosition:AddPicture( g_pPicture_bg2_3 )

g_pPicture_bg2_3:SetTex( "DLG_Common_New_Texture26.tga", "TRADE_SHOP_TEXT_BOX3" )

g_pPicture_bg2_3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(98+50+60-33,200+35+38)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pStaticFixedPosition:AddString
{
	MSG 			= "",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(15-2+83+60-6,200 - 13+35+38)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}



g_pPicture_bg3_1 = g_pUIDialog:CreatePicture()
g_pStaticFixedPosition:AddPicture( g_pPicture_bg3_1 )

g_pPicture_bg3_1:SetTex( "DLG_Common_New_Texture26.tga", "TRADE_SHOP_TEXT_BOX1" )

g_pPicture_bg3_1:SetPoint
{
    	
	"LEFT_TOP		= D3DXVECTOR2(15+50+60,200+35+38+38)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg3_2 = g_pUIDialog:CreatePicture()
g_pStaticFixedPosition:AddPicture( g_pPicture_bg3_2 )

g_pPicture_bg3_2:SetTex( "DLG_Common_New_Texture26.tga", "TRADE_SHOP_TEXT_BOX2" )

g_pPicture_bg3_2:SetPoint
{
    	ADD_SIZE_X = 47,
	"LEFT_TOP		= D3DXVECTOR2(17+50+60,200+35+38+38)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg3_3 = g_pUIDialog:CreatePicture()
g_pStaticFixedPosition:AddPicture( g_pPicture_bg3_3 )

g_pPicture_bg3_3:SetTex( "DLG_Common_New_Texture26.tga", "TRADE_SHOP_TEXT_BOX3" )

g_pPicture_bg3_3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(98+50+60-33,200+35+38+38)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pStaticFixedPosition:AddString
{
	MSG 			= "",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(15-2+83+60-6,200 - 13+35+38+38)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}





-------- 소켓 옵션 코드1  

g_pIMEEditCoordX = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIMEEditCoordX )
g_pIMEEditCoordX:SetName( "IMEEditCoordX" )
g_pIMEEditCoordX:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(15+2+50+60,200+2+35)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(15+50+50+60,200+20+35)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIMEEditCoordX:SetFont( XUF_DODUM_11_NORMAL)
g_pIMEEditCoordX:SetTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditCoordX:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditCoordX:SetSelectedBackColor( 0.5, 0.5, 0.5, 0.5 )
g_pIMEEditCoordX:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )
--g_pIMEEditCoordX:SetByteLimit(26)
--g_pIMEEditCoordX:SetWidthLimit( 437 - (110+9) )
g_pIMEEditCoordX:SetLengthLimit(5)
g_pIMEEditCoordX:SetCustomMsgEnter( UI_CAMERA_EDIT_CUSTOM_MSG["UCECM_ENTER_FIXED_COORD_X"] )
g_pIMEEditCoordX:SetCustomMsgFocusOut( UI_CAMERA_EDIT_CUSTOM_MSG["UCECM_ENTER_FIXED_COORD_X"] )
g_pIMEEditCoordX:AddDummyInt(0)
--g_pIMEEditCoordX:SetOnlyNumMode( true )


-------- 소켓 옵션 코드2  

g_pIMEEditCoordY = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIMEEditCoordY )
g_pIMEEditCoordY:SetName( "IMEEditCoordY" )
g_pIMEEditCoordY:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(15+2+50+60,200+2+35+38)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(15+50+50+60,200+20+35+38)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIMEEditCoordY:SetFont( XUF_DODUM_11_NORMAL)
g_pIMEEditCoordY:SetTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditCoordY:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditCoordY:SetSelectedBackColor( 0.5, 0.5, 0.5, 0.5 )
g_pIMEEditCoordY:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )
--g_pIMEEditCoordY:SetByteLimit(26)
--g_pIMEEditCoordY:SetWidthLimit( 437 - (110+9) )
g_pIMEEditCoordY:SetLengthLimit(5)
g_pIMEEditCoordY:SetCustomMsgEnter( UI_CAMERA_EDIT_CUSTOM_MSG["UCECM_ENTER_FIXED_COORD_Y"] )
g_pIMEEditCoordY:SetCustomMsgFocusOut( UI_CAMERA_EDIT_CUSTOM_MSG["UCECM_ENTER_FIXED_COORD_Y"] )
g_pIMEEditCoordY:AddDummyInt(1)
--g_pIMEEditCoordY:SetOnlyNumMode( true )

-------- 소켓 옵션 코드3 

g_pIMEEditCoordZ = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIMEEditCoordZ )
g_pIMEEditCoordZ:SetName( "IMEEditCoordZ" )
g_pIMEEditCoordZ:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(15+2+50+60,200+2+35+38+38)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(15+50+50+60,200+20+35+38+38)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIMEEditCoordZ:SetFont( XUF_DODUM_11_NORMAL)
g_pIMEEditCoordZ:SetTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditCoordZ:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditCoordZ:SetSelectedBackColor( 0.5, 0.5, 0.5, 0.5 )
g_pIMEEditCoordZ:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )
--g_pIMEEditCoordZ:SetByteLimit(26)
--g_pIMEEditCoordZ:SetWidthLimit( 437 - (110+9) )
g_pIMEEditCoordZ:SetLengthLimit(5)
g_pIMEEditCoordZ:SetCustomMsgEnter( UI_CAMERA_EDIT_CUSTOM_MSG["UCECM_ENTER_FIXED_COORD_Z"] )
g_pIMEEditCoordZ:SetCustomMsgFocusOut( UI_CAMERA_EDIT_CUSTOM_MSG["UCECM_ENTER_FIXED_COORD_Z"] )
g_pIMEEditCoordZ:AddDummyInt(1)
--g_pIMEEditCoordZ:SetOnlyNumMode( true )















--[[
-------------------------  장착 하기 버튼

g_pButton_SocketCheat = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_SocketCheat )
g_pButton_SocketCheat:SetName( "Button_SocketCheat" )

g_pButton_SocketCheat:SetNormalTex( "DLG_UI_BUTTON03.tga", "MAGIC_NORMAL" )
g_pButton_SocketCheat:SetOverTex( "DLG_UI_BUTTON03.tga", "MAGIC_OVER" )
g_pButton_SocketCheat:SetDownTex( "DLG_UI_BUTTON03.tga", "MAGIC_OVER" )

g_pButton_SocketCheat:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(36+4,90+4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_SocketCheat:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(36,90)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_SocketCheat:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(36+1,90+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_SocketCheat:SetCustomMsgMouseUp( UI_SOCKET_ITEM_CUSTOM_MSG["USICM_SOCKET_EQUIP_DEV"] )
--]]


-------------------------  키 프레임 추가

g_pButtonKeyFrame1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonKeyFrame1 )
g_pButtonKeyFrame1:SetName( "ButtonKeyFrame1" )

g_pButtonKeyFrame1:SetNormalTex( "DLG_UI_Button11.tga", "EMPTY_NORMAL" )
g_pButtonKeyFrame1:SetOverTex( "DLG_UI_Button11.tga", "EMPTY_OVER" )
g_pButtonKeyFrame1:SetDownTex( "DLG_UI_Button11.tga", "EMPTY_OVER" )

g_pButtonKeyFrame1:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(33+4-50,90+4+180)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonKeyFrame1:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(33-50,90+180)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonKeyFrame1:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(33+1-50,90+1+180)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonKeyFrame1:SetCustomMsgMouseUp( UI_CAMERA_EDIT_CUSTOM_MSG["UCECM_ADD_KEYFRAME"] )


-------------------------  키 프레임 저장

g_pButtonKeyFrame2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonKeyFrame2 )
g_pButtonKeyFrame2:SetName( "ButtonKeyFrame2" )

g_pButtonKeyFrame2:SetNormalTex( "DLG_UI_Button11.tga", "EMPTY_NORMAL" )
g_pButtonKeyFrame2:SetOverTex( "DLG_UI_Button11.tga", "EMPTY_OVER" )
g_pButtonKeyFrame2:SetDownTex( "DLG_UI_Button11.tga", "EMPTY_OVER" )

g_pButtonKeyFrame2:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(33+4-50,90+4+180+30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonKeyFrame2:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(33-50,90+180+30)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonKeyFrame2:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(33+1-50,90+1+180+30)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonKeyFrame2:SetCustomMsgMouseUp( UI_CAMERA_EDIT_CUSTOM_MSG["UCECM_SAVE_KEYFRAME"] )

-------------------------  키 프레임 삭제

g_pButtonKeyFrame3 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonKeyFrame3 )
g_pButtonKeyFrame3:SetName( "ButtonKeyFrame3" )

g_pButtonKeyFrame3:SetNormalTex( "DLG_UI_Button11.tga", "EMPTY_NORMAL" )
g_pButtonKeyFrame3:SetOverTex( "DLG_UI_Button11.tga", "EMPTY_OVER" )
g_pButtonKeyFrame3:SetDownTex( "DLG_UI_Button11.tga", "EMPTY_OVER" )

g_pButtonKeyFrame3:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(33+4-50,90+4+180+30+30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonKeyFrame3:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(33-50,90+180+30+30)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonKeyFrame3:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(33+1-50,90+1+180+30+30)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonKeyFrame3:SetCustomMsgMouseUp( UI_CAMERA_EDIT_CUSTOM_MSG["UCECM_DEL_KEYFRAME"] )




g_pStaticKeyFrameButtonName = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticKeyFrameButtonName )
g_pStaticKeyFrameButtonName:SetName( "StaticKeyFrameButtonName" )

g_pStaticKeyFrameButtonName:AddString
{
	MSG 			= "",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(33+4-50+58,90+4+180+6)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticKeyFrameButtonName:AddString
{
	MSG 			= "",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(33+4-50+58,90+4+180+30+6)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pStaticKeyFrameButtonName:AddString
{
	MSG 			= "",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(33+4-50+58,90+4+180+30+30+6)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}




 
