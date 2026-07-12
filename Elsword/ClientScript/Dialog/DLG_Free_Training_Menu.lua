-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pUIDialog:SetName( "DLG_Free_Training_Menu" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )

g_pStatic_TRAINING = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_TRAINING )
g_pStatic_TRAINING:SetName( "FreeTrainingEtc" )

textPosX = 500
textPosY = 20
buttonPosX = textPosX + 74
textSize = 120



-- 몬스터 종류
g_pCombo = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pCombo )
g_pCombo:SetName( "TNpcList" )
--거꾸로 나오게 할것인가?
g_pCombo:SetReverseDropdown( false )

--버튼 클릭했을 때 드랍 텍스쳐 높이
--g_pCombo:SetDropHeight( 200 )
				   
g_pCombo:SetString
{
	-- MSG 			= "NoName",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	"POS 			= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pCombo:SetTextTex( "DLG_SquareUI.TGA", "Combo_BG" )
g_pCombo:SetButtonTex ( "DLG_UI_Common_Texture59.tga", "ChatBox_Button_Normal" )
g_pCombo:SetButtonMouseOverTex( "DLG_UI_Common_Texture59.tga", "ChatBox_Button_Over" )
g_pCombo:SetButtonMouseDownTex ( "DLG_UI_Common_Texture59.tga", "ChatBox_Button_Down" )
g_pCombo:SetDropdownTex ( "DLG_Room_Button0.TGA", "Drop_Button" )
g_pCombo:SetDropdownTextTex ( "DLG_Room_Button0.TGA", "Select_Box" )


--자동으로 만들 때
--g_pCombo:SetPos( 160, 700 )
--g_pCombo:SetSize( 100, 50 )

--수동으로 만들 때
g_pCombo:SetTextPos( textPosX, textPosY )
g_pCombo:SetTextSize( 200-25+80-25, 25 )

--텍스트 시작 포인트
g_pCombo:SetTextStringOffsetPos( 15, 5 )
g_pCombo:SetButtonPos( buttonPosX + 100+80-25, textPosY )
g_pCombo:SetButtonSize( 25, 25)


g_pCombo:AddItemStrID( STR_ID_1918 )
--g_pCombo:AddItem("버섯")

g_pCombo:SetCustomMsgSelectionChanged( STATE_TRAINING_GAME_UI_CUSTOM_MSG["STGUCM_NPC_TYPE"] )





textPosX = textPosX + textSize + 100
buttonPosX = textPosX + 74


-- 몬스터 수
g_pCombo = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pCombo )
g_pCombo:SetName( "PVP_Team_ChatMode" )
--거꾸로 나오게 할것인가?
g_pCombo:SetReverseDropdown( false )

--버튼 클릭했을 때 드랍 텍스쳐 높이
--g_pCombo:SetDropHeight( 200 )
				   
g_pCombo:SetString
{
	-- MSG 			= "NoName",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	"POS 			= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pCombo:SetTextTex( "DLG_SquareUI.TGA", "Combo_BG" )
g_pCombo:SetButtonTex ( "DLG_UI_Common_Texture59.tga", "ChatBox_Button_Normal" )
g_pCombo:SetButtonMouseOverTex( "DLG_UI_Common_Texture59.tga", "ChatBox_Button_Over" )
g_pCombo:SetButtonMouseDownTex ( "DLG_UI_Common_Texture59.tga", "ChatBox_Button_Down" )
g_pCombo:SetDropdownTex ( "DLG_Room_Button0.TGA", "Drop_Button" )
g_pCombo:SetDropdownTextTex ( "DLG_Room_Button0.TGA", "Select_Box" )

g_pCombo:SetScollBarUpButtonTex( "DLG_Common_New_Texture11.tga", "Scroll_Up_Over" )
g_pCombo:SetScollBarUpButtonDownTex( "DLG_Common_New_Texture11.tga", "Scroll_Up_Normal" )
g_pCombo:SetScollBarDownButtonTex( "DLG_Common_New_Texture11.tga", "Scroll_Down_Over" )
g_pCombo:SetScollBarDownButtonDownTex( "DLG_Common_New_Texture11.tga", "Scroll_Down_Normal" )
g_pCombo:SetScollBarThumbTex( "DLG_Common_New_Texture02.dds", "Scroll" )
g_pCombo:SetScollBarTrackTex( "DLG_Common_New_Texture11.tga", "Messenger_1Pix_Deepgrey" )
g_pCombo:InitScrollBar()


--자동으로 만들 때
--g_pCombo:SetPos( 260, 700 )
--g_pCombo:SetSize( 100, 50 )

--수동으로 만들 때
g_pCombo:SetTextPos( textPosX+70-25, textPosY)
g_pCombo:SetTextSize( 100+25, 25)
--텍스트 시작 포인트
g_pCombo:SetTextStringOffsetPos( 10, 5 )
g_pCombo:SetButtonPos( buttonPosX+95, textPosY)
g_pCombo:SetButtonSize( 25, 25)


g_pCombo:AddItemStrID( STR_ID_4478 )
g_pCombo:AddItemStrID( STR_ID_4479 )
g_pCombo:AddItemStrID( STR_ID_4480 )
g_pCombo:AddItemStrID( STR_ID_4481 )
g_pCombo:AddItemStrID( STR_ID_4482 )

g_pCombo:SetCustomMsgSelectionChanged( STATE_TRAINING_GAME_UI_CUSTOM_MSG["STGUCM_NPC_COUNT"] )
	
	
	
	
textPosX = textPosX + textSize
buttonPosX = textPosX + 74
	

-- 몬스터 레벨
g_pCombo = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pCombo )
g_pCombo:SetName( "TNpcLevel" )
--거꾸로 나오게 할것인가?
g_pCombo:SetReverseDropdown( false )

--버튼 클릭했을 때 드랍 텍스쳐 높이
g_pCombo:SetDropHeight( 400 )
				   
g_pCombo:SetString
{
	-- MSG 			= "NoName",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	"POS 			= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pCombo:SetTextTex( "DLG_SquareUI.TGA", "Combo_BG" )
g_pCombo:SetButtonTex ( "DLG_UI_Common_Texture59.tga", "ChatBox_Button_Normal" )
g_pCombo:SetButtonMouseOverTex( "DLG_UI_Common_Texture59.tga", "ChatBox_Button_Over" )
g_pCombo:SetButtonMouseDownTex ( "DLG_UI_Common_Texture59.tga", "ChatBox_Button_Down" )
g_pCombo:SetDropdownTex ( "DLG_Room_Button0.TGA", "Drop_Button" )
g_pCombo:SetDropdownTextTex ( "DLG_Room_Button0.TGA", "Select_Box" )

g_pCombo:SetScollBarUpButtonTex( "DLG_Common_New_Texture11.tga", "Scroll_Up_Over" )
g_pCombo:SetScollBarUpButtonDownTex( "DLG_Common_New_Texture11.tga", "Scroll_Up_Normal" )
g_pCombo:SetScollBarDownButtonTex( "DLG_Common_New_Texture11.tga", "Scroll_Down_Over" )
g_pCombo:SetScollBarDownButtonDownTex( "DLG_Common_New_Texture11.tga", "Scroll_Down_Normal" )
g_pCombo:SetScollBarThumbTex( "DLG_Common_New_Texture02.dds", "Scroll" )
g_pCombo:SetScollBarTrackTex( "DLG_Common_New_Texture11.tga", "Messenger_1Pix_Deepgrey" )
g_pCombo:InitScrollBar()


--자동으로 만들 때
--g_pCombo:SetPos( 160, 700 )
--g_pCombo:SetSize( 100, 50 )

--수동으로 만들 때
g_pCombo:SetTextPos( textPosX+80, textPosY)
g_pCombo:SetTextSize( 100-25, 25)
--텍스트 시작 포인트
g_pCombo:SetTextStringOffsetPos( 15, 5 )
g_pCombo:SetButtonPos( buttonPosX+80, textPosY)
g_pCombo:SetButtonSize( 25, 25)

--[[
g_pCombo:AddItemStrID( STR_ID_4484 )
g_pCombo:AddItemStrID( STR_ID_4485 )
g_pCombo:AddItemStrID( STR_ID_4486 )
g_pCombo:AddItemStrID( STR_ID_4487 )
g_pCombo:AddItemStrID( STR_ID_4488 )
--]]

g_pCombo:SetCustomMsgSelectionChanged( STATE_TRAINING_GAME_UI_CUSTOM_MSG["STGUCM_NPC_LEVEL"] )
	
	

		
		
		
		
		
		
--[[		
textPosX = textPosX + textSize
buttonPosX = textPosX + 74
	

-- 공격 여부
g_pCombo = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pCombo )
g_pCombo:SetName( "PVP_Team_ChatMode" )
--거꾸로 나오게 할것인가?
g_pCombo:SetReverseDropdown( false )

--버튼 클릭했을 때 드랍 텍스쳐 높이
--g_pCombo:SetDropHeight( 200 )
				   
g_pCombo:SetString
{
	-- MSG 			= "NoName",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	"POS 			= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pCombo:SetTextTex( "DLG_SquareUI.TGA", "Combo_BG" )
g_pCombo:SetButtonTex ( "DLG_UI_Common_Texture59.tga", "ChatBox_Button_Normal" )
g_pCombo:SetButtonMouseOverTex( "DLG_UI_Common_Texture59.tga", "ChatBox_Button_Over" )
g_pCombo:SetButtonMouseDownTex ( "DLG_UI_Common_Texture59.tga", "ChatBox_Button_Down" )
g_pCombo:SetDropdownTex ( "DLG_Room_Button0.TGA", "Drop_Button" )
g_pCombo:SetDropdownTextTex ( "DLG_Room_Button0.TGA", "Select_Box" )


--자동으로 만들 때
--g_pCombo:SetPos( 160, 700 )
--g_pCombo:SetSize( 100, 50 )

--수동으로 만들 때
g_pCombo:SetTextPos( textPosX, textPosY)
g_pCombo:SetTextSize( 100, 25)
--텍스트 시작 포인트
g_pCombo:SetTextStringOffsetPos( 15, 5 )
g_pCombo:SetButtonPos( buttonPosX, textPosY)
g_pCombo:SetButtonSize( 25, 25)


g_pCombo:AddItemStrID( STR_ID_4489 )
g_pCombo:AddItemStrID( STR_ID_4490 )

g_pCombo:SetCustomMsgSelectionChanged( STATE_TRAINING_GAME_UI_CUSTOM_MSG["STGUCM_NPC_AGGRESIVE"] )
	
	
--]]				
				
				




		
textPosX = textPosX + textSize
buttonPosX = textPosX + 74



















----------------버튼



imageBtnPosX = 608
imageBtnPosY = 706




g_pButtonCombo_List = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCombo_List )
g_pButtonCombo_List:SetName( "Combo_List" )
g_pButtonCombo_List:SetNormalTex( "DLG_Common_Texture16.tga", "Combo_List_Normal" )

g_pButtonCombo_List:SetOverTex( "DLG_Common_Texture16.tga", "Combo_List_Over" )

g_pButtonCombo_List:SetDownTex( "DLG_Common_Texture16.tga", "Combo_List_Normal" )

g_pButtonCombo_List:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCombo_List:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCombo_List:SetDownPoint
{
	
 	"LEFT_TOP		= D3DXVECTOR2(0,0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCombo_List:SetOffsetPos( imageBtnPosX, imageBtnPosY+2 )
g_pButtonCombo_List:SetCustomMsgMouseUp( STATE_TRAINING_GAME_UI_CUSTOM_MSG["STGUCM_COMBO_LIST"] )





g_pButtonReset = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonReset )
g_pButtonReset:SetName( "Reset" )
g_pButtonReset:SetNormalTex( "DLG_Common_Texture16.tga", "Reset_Normal" )

g_pButtonReset:SetOverTex( "DLG_Common_Texture16.tga", "Reset_Over" )

g_pButtonReset:SetDownTex( "DLG_Common_Texture16.tga", "Reset_Normal" )

g_pButtonReset:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(127,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonReset:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(127,0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonReset:SetDownPoint
{
  
 	"LEFT_TOP		= D3DXVECTOR2(127,0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonReset:SetOffsetPos( imageBtnPosX, imageBtnPosY )
g_pButtonReset:SetCustomMsgMouseUp( STATE_TRAINING_GAME_UI_CUSTOM_MSG["STGUCM_RESET"] )






g_pButtonTraining_Exit = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonTraining_Exit )
g_pButtonTraining_Exit:SetName( "Training_Exit" )
g_pButtonTraining_Exit:SetNormalTex( "DLG_Common_Texture16.tga", "Training_Exit_Normal" )

g_pButtonTraining_Exit:SetOverTex( "DLG_Common_Texture16.tga", "Training_Exit_Over" )

g_pButtonTraining_Exit:SetDownTex( "DLG_Common_Texture16.tga", "Training_Exit_Normal" )

g_pButtonTraining_Exit:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(280,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonTraining_Exit:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(280,0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonTraining_Exit:SetDownPoint
{
  
 	"LEFT_TOP		= D3DXVECTOR2(280,0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonTraining_Exit:SetOffsetPos( imageBtnPosX, imageBtnPosY )
g_pButtonTraining_Exit:SetCustomMsgMouseUp( STATE_TRAINING_GAME_UI_CUSTOM_MSG["STGUCM_EXIT"] )



---------체력 회복 F5
g_pPicture_Training_F5 = g_pUIDialog:CreatePicture()
g_pStatic_TRAINING:AddPicture( g_pPicture_Training_F5 )
g_pPicture_Training_F5:SetTex( "DLG_UI_Common_Texture59.tga", "Bg_F5" )
g_pPicture_Training_F5:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(172,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-------------

---------마나 회복 F5
g_pPicture_Training_F5 = g_pUIDialog:CreatePicture()
g_pStatic_TRAINING:AddPicture( g_pPicture_Training_F5 )
g_pPicture_Training_F5:SetTex( "DLG_UI_Common_Texture59.tga", "Bg_F6" )
g_pPicture_Training_F5:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(269,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-------------

---------콤보데미지 기록
g_pPicture_Training_F5 = g_pUIDialog:CreatePicture()
g_pStatic_TRAINING:AddPicture( g_pPicture_Training_F5 )
g_pPicture_Training_F5:SetTex( "DLG_UI_Common_Texture59.tga", "Bg_Combo_Record" )
g_pPicture_Training_F5:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(14,650)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-------------
---------현재콤보데미지 기록
g_pPicture_Training_F5 = g_pUIDialog:CreatePicture()
g_pStatic_TRAINING:AddPicture( g_pPicture_Training_F5 )
g_pPicture_Training_F5:SetTex( "DLG_UI_Common_Texture59.tga", "Bg_Combo_Now_Record" )
g_pPicture_Training_F5:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,696+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-------------


								
		
