-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pUIDialog:SetName( "DLG_ITEM_LIST_DEV_ONLY" )
g_pUIDialog:SetPos( 65, 80 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetEnableMoveByDrag( true )
--g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
--g_pUIDialog:SetCloseOnFocusOut( true )
g_pUIDialog:SetCloseCustomUIEventID( ITEM_CHEAT_POPUP_CUSTOM_MSG["ICPCM_CLOSE_WINDOW"] )
--g_pUIDialog:SetDisableUnderWindow( true )





g_pStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic )
g_pStatic:SetName( "Static_Window_Frame" )



--  상단 가운데
g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_SquareUI.TGA", "Chat_Window3" )
g_pPicture:SetPoint
{
    ADD_SIZE_X = 900,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






-- 아이템 리스트
g_pListBox = g_pUIDialog:CreateListBox()
g_pUIDialog:AddControl( g_pListBox )
g_pListBox:SetName( "ListBox_Item" )

g_pListBox:SetString
{
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	"POS 			= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pListBox:SetTextTex( "DLG_Common_Texture00.tga", "Background_Lena_Color" )
--g_pListBox:SetBoundingBoxTex( "DLG_Room_Button0.tga", "Select_Box" )
--g_pListBox:SetBoundingBoxTex( "DLG_Room_Button0.tga", "Thumb_Tex" )
g_pListBox:SetBoundingBoxTex( "DLG_UI_COMMON_TEXTURE01.tga", "SLOT_BG_MIDDLE" )


g_pListBox:SetScollBarUpButtonTex( "DLG_SquareUI.tga", "Up_Arrow_Yllow" )
g_pListBox:SetScollBarUpButtonDownTex( "DLG_SquareUI.tga", "Up_Arrow_Red" )
g_pListBox:SetScollBarDownButtonTex( "DLG_SquareUI.tga", "Down_Arrow_Yllow" )
g_pListBox:SetScollBarDownButtonDownTex( "DLG_SquareUI.tga", "Down_Arrow_Red" )
g_pListBox:SetScollBarThumbTex( "DLG_Room_Button0.tga", "Thumb_Tex" )
g_pListBox:SetScollBarTrackTex( "DLG_Room_Button0.tga", "Invisible" )

g_pListBox:InitScrollBar()
g_pListBox:SetScrollBarWidth( 30 )
g_pListBox:SetPos( 0, 90 )
g_pListBox:SetSize( 900, 500 )

g_pListBox:SetCustomMsgItemDoubleClick( ITEM_CHEAT_POPUP_CUSTOM_MSG["ICPCM_BUY_ITEM"] )








local combobox_gap	= 150
local textPosX 		= 0
local textPosY 		= 25
local textWidth		= 120
local textHeight	= 25




-- 아바타 아이템만 보이게 할 것인지
g_pCombo = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pCombo )
g_pCombo:SetName( "COMBO_FASHION_ITEM_ONLY" )
g_pCombo:SetReverseDropdown( false )
g_pCombo:SetDropHeight( 200 )
				   
g_pCombo:SetString
{
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	"POS 			= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR( 1, 1, 1, 1 )",
	"OUTLINE_COLOR	= D3DXCOLOR( 0, 0, 0, 1 )",
}

g_pCombo:SetTextTex( "DLG_SquareUI.TGA", "Combo_BG" )
g_pCombo:SetButtonTex ( "DLG_Room_Button0.TGA", "ChatBox_Button_Normal" )
g_pCombo:SetButtonMouseOverTex( "DLG_Room_Button0.TGA", "ChatBox_Button_Over" )
g_pCombo:SetButtonMouseDownTex ( "DLG_Room_Button0.TGA", "ChatBox_Button_Down" )
g_pCombo:SetDropdownTex ( "DLG_Room_Button0.TGA", "Drop_Button" )
g_pCombo:SetDropdownTextTex ( "DLG_Room_Button0.TGA", "Select_Box" )


g_pCombo:SetTextPos( textPosX, textPosY )
g_pCombo:SetTextSize( textWidth, textHeight )
g_pCombo:SetTextStringOffsetPos( 15, 5 )

g_pCombo:SetButtonPos( textPosX + textWidth, textPosY )
g_pCombo:SetButtonSize( textHeight, textHeight )


g_pCombo:AddItem( "NONE" )
g_pCombo:AddItem( "Fashion" )
g_pCombo:AddItem( "Non-Fashion" )

g_pCombo:SetCustomMsgSelectionChanged( ITEM_CHEAT_POPUP_CUSTOM_MSG["ICPCM_COMBO_FASHION_ONLY"] )










textPosX = textPosX + combobox_gap






-- unit type으로 filtering
g_pCombo_UnitType = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pCombo_UnitType )
g_pCombo_UnitType:SetName( "COMBO_UNIT_TYPE" )
g_pCombo_UnitType:SetReverseDropdown( false )
g_pCombo_UnitType:SetDropHeight( 200 )
				   
g_pCombo_UnitType:SetString
{
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	"POS 			= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pCombo_UnitType:SetTextTex( "DLG_SquareUI.TGA", "Combo_BG" )
g_pCombo_UnitType:SetButtonTex ( "DLG_Room_Button0.TGA", "ChatBox_Button_Normal" )
g_pCombo_UnitType:SetButtonMouseOverTex( "DLG_Room_Button0.TGA", "ChatBox_Button_Over" )
g_pCombo_UnitType:SetButtonMouseDownTex ( "DLG_Room_Button0.TGA", "ChatBox_Button_Down" )
g_pCombo_UnitType:SetDropdownTex ( "DLG_Room_Button0.TGA", "Drop_Button" )
g_pCombo_UnitType:SetDropdownTextTex ( "DLG_Room_Button0.TGA", "Select_Box" )


g_pCombo_UnitType:SetTextPos( textPosX, textPosY )
g_pCombo_UnitType:SetTextSize( textWidth, textHeight )
g_pCombo_UnitType:SetTextStringOffsetPos( 15, 5 )

g_pCombo_UnitType:SetButtonPos( textPosX + textWidth, textPosY )
g_pCombo_UnitType:SetButtonSize( textHeight, textHeight )



g_pCombo_UnitType:SetCustomMsgSelectionChanged( ITEM_CHEAT_POPUP_CUSTOM_MSG["ICPCM_COMBO_UNIT_TYPE"] )














textPosX = textPosX + combobox_gap



-- unit class로 filtering
g_pCombo_UnitClass = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pCombo_UnitClass )
g_pCombo_UnitClass:SetName( "COMBO_UNIT_CLASS" )
g_pCombo_UnitClass:SetReverseDropdown( false )
g_pCombo_UnitClass:SetDropHeight( 200 )
				   
g_pCombo_UnitClass:SetString
{
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	"POS 			= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pCombo_UnitClass:SetTextTex( "DLG_SquareUI.TGA", "Combo_BG" )
g_pCombo_UnitClass:SetButtonTex ( "DLG_Room_Button0.TGA", "ChatBox_Button_Normal" )
g_pCombo_UnitClass:SetButtonMouseOverTex( "DLG_Room_Button0.TGA", "ChatBox_Button_Over" )
g_pCombo_UnitClass:SetButtonMouseDownTex ( "DLG_Room_Button0.TGA", "ChatBox_Button_Down" )
g_pCombo_UnitClass:SetDropdownTex ( "DLG_Room_Button0.TGA", "Drop_Button" )
g_pCombo_UnitClass:SetDropdownTextTex ( "DLG_Room_Button0.TGA", "Select_Box" )


g_pCombo_UnitClass:SetTextPos( textPosX, textPosY )
g_pCombo_UnitClass:SetTextSize( textWidth, textHeight )
g_pCombo_UnitClass:SetTextStringOffsetPos( 15, 5 )

g_pCombo_UnitClass:SetButtonPos( textPosX + textWidth, textPosY )
g_pCombo_UnitClass:SetButtonSize( textHeight, textHeight )


g_pCombo_UnitClass:SetCustomMsgSelectionChanged( ITEM_CHEAT_POPUP_CUSTOM_MSG["ICPCM_COMBO_UNIT_CLASS"] )














textPosX = textPosX + combobox_gap






-- equip position으로 filtering
g_pCombo_EquipPosition = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pCombo_EquipPosition )
g_pCombo_EquipPosition:SetName( "COMBO_EQUIP_POSITION" )
g_pCombo_EquipPosition:SetReverseDropdown( false )
g_pCombo_EquipPosition:SetDropHeight( 250 )
				   
g_pCombo_EquipPosition:SetString
{
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	"POS 			= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pCombo_EquipPosition:SetTextTex( "DLG_SquareUI.TGA", "Combo_BG" )
g_pCombo_EquipPosition:SetButtonTex ( "DLG_Room_Button0.TGA", "ChatBox_Button_Normal" )
g_pCombo_EquipPosition:SetButtonMouseOverTex( "DLG_Room_Button0.TGA", "ChatBox_Button_Over" )
g_pCombo_EquipPosition:SetButtonMouseDownTex ( "DLG_Room_Button0.TGA", "ChatBox_Button_Down" )
g_pCombo_EquipPosition:SetDropdownTex ( "DLG_Room_Button0.TGA", "Drop_Button" )
g_pCombo_EquipPosition:SetDropdownTextTex ( "DLG_Room_Button0.TGA", "Select_Box" )


g_pCombo_EquipPosition:SetTextPos( textPosX, textPosY )
g_pCombo_EquipPosition:SetTextSize( textWidth, textHeight )
g_pCombo_EquipPosition:SetTextStringOffsetPos( 15, 5 )

g_pCombo_EquipPosition:SetButtonPos( textPosX + textWidth, textPosY )
g_pCombo_EquipPosition:SetButtonSize( textHeight, textHeight )




g_pCombo_EquipPosition:AddItem( "NONE" )
g_pCombo_EquipPosition:AddItem( "QUICK_SLOT" )		--퀵슬롯아이템

--무기
g_pCombo_EquipPosition:AddItem( "WEAPON_HAND" )		--무기
g_pCombo_EquipPosition:AddItem( "WEAPON_TEMP1" )		--임시1
g_pCombo_EquipPosition:AddItem( "WEAPON_TEMP2" )		--임시2
g_pCombo_EquipPosition:AddItem( "WEAPON_TEMP3" )		--임시3

--방어구
g_pCombo_EquipPosition:AddItem( "DEFENCE_HAIR" )		--헤어스타일
g_pCombo_EquipPosition:AddItem( "DEFENCE_FACE" )		--얼굴
g_pCombo_EquipPosition:AddItem( "DEFENCE_BODY" )		--상의
g_pCombo_EquipPosition:AddItem( "DEFENCE_LEG" )		--하의
g_pCombo_EquipPosition:AddItem( "DEFENCE_HAND" )		--장갑
g_pCombo_EquipPosition:AddItem( "DEFENCE_FOOT" )		--신발
g_pCombo_EquipPosition:AddItem( "DEFENCE_TEMP1" )		--임시1
g_pCombo_EquipPosition:AddItem( "DEFENCE_TEMP2" )		--임시2
g_pCombo_EquipPosition:AddItem( "DEFENCE_TEMP3" )		--임시3

--액세서리
g_pCombo_EquipPosition:AddItem( "AC_TITLE" )			--칭호
g_pCombo_EquipPosition:AddItem( "AC_HAIR" )			--헤어
g_pCombo_EquipPosition:AddItem( "AC_FACE1" )			--얼굴(상)
g_pCombo_EquipPosition:AddItem( "AC_FACE2" )			--얼굴(중)
g_pCombo_EquipPosition:AddItem( "AC_FACE3" )			--얼굴(하)
g_pCombo_EquipPosition:AddItem( "AC_BODY" )			--상의
g_pCombo_EquipPosition:AddItem( "AC_LEG" )			--다리
g_pCombo_EquipPosition:AddItem( "AC_ARM" )			--팔
g_pCombo_EquipPosition:AddItem( "AC_RING" )			--반지
g_pCombo_EquipPosition:AddItem( "AC_NECKLESS" )		--목걸이
g_pCombo_EquipPosition:AddItem( "AC_WEAPON" )			--무기악세사리
g_pCombo_EquipPosition:AddItem( "AC_TEMP2" )			--임시2
g_pCombo_EquipPosition:AddItem( "AC_TEMP3" )			--임시3
g_pCombo_EquipPosition:AddItem( "AC_TEMP4" )			--임시4
g_pCombo_EquipPosition:AddItem( "AC_TEMP5" )			--임시5

--필살기
g_pCombo_EquipPosition:AddItem( "SKILL_1" )			--1단계필살기
g_pCombo_EquipPosition:AddItem( "SKILL_2" )			--2단계필살기
g_pCombo_EquipPosition:AddItem( "SKILL_3" )			--3단계필살기
g_pCombo_EquipPosition:AddItem( "SKILL_TEMP1" )		--임시1
g_pCombo_EquipPosition:AddItem( "SKILL_TEMP2" )		--임시2
g_pCombo_EquipPosition:AddItem( "SKILL_TEMP3" )		--임시3

g_pCombo_EquipPosition:AddItem( "RAVEN_LEFT_ARM" )	--dmlee2008.07.31- 레이븐 왼팔, 오른팔 나누면서	
g_pCombo_EquipPosition:AddItem( "WEAPON_SECOND" )		--dmlee2008.12.12-두 번째 무기

				

g_pCombo_EquipPosition:SetCustomMsgSelectionChanged( ITEM_CHEAT_POPUP_CUSTOM_MSG["ICPCM_COMBO_EQUIP_POSITION"] )










textPosX = textPosX + combobox_gap


-- 아바타 아이템만 보이게 할 것인지
g_pCombo_SortType = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pCombo_SortType )
g_pCombo_SortType:SetName( "COMBO_FASHION_ITEM_ONLY" )
g_pCombo_SortType:SetReverseDropdown( false )
g_pCombo_SortType:SetDropHeight( 200 )
				   
g_pCombo_SortType:SetString
{
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	"POS 			= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR( 1, 1, 1, 1 )",
	"OUTLINE_COLOR	= D3DXCOLOR( 0, 0, 0, 1 )",
}

g_pCombo_SortType:SetTextTex( "DLG_SquareUI.TGA", "Combo_BG" )
g_pCombo_SortType:SetButtonTex ( "DLG_Room_Button0.TGA", "ChatBox_Button_Normal" )
g_pCombo_SortType:SetButtonMouseOverTex( "DLG_Room_Button0.TGA", "ChatBox_Button_Over" )
g_pCombo_SortType:SetButtonMouseDownTex ( "DLG_Room_Button0.TGA", "ChatBox_Button_Down" )
g_pCombo_SortType:SetDropdownTex ( "DLG_Room_Button0.TGA", "Drop_Button" )
g_pCombo_SortType:SetDropdownTextTex ( "DLG_Room_Button0.TGA", "Select_Box" )


g_pCombo_SortType:SetTextPos( textPosX, textPosY )
g_pCombo_SortType:SetTextSize( textWidth, textHeight )
g_pCombo_SortType:SetTextStringOffsetPos( 15, 5 )

g_pCombo_SortType:SetButtonPos( textPosX + textWidth, textPosY )
g_pCombo_SortType:SetButtonSize( textHeight, textHeight )


g_pCombo_SortType:AddItem( "SORT_NONE" )
g_pCombo_SortType:AddItem( "SORT_ID" )
g_pCombo_SortType:AddItem( "SORT_NAME" )

g_pCombo_SortType:SetCustomMsgSelectionChanged( ITEM_CHEAT_POPUP_CUSTOM_MSG["ICPCM_COMBO_SORT_TYPE"] )
















-- 아이템 레벨 lower bound
g_pStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic )
g_pStatic:SetName( "Static_Edit_Box" )

g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_Room_Button0.tga", "Thumb_Tex" )
g_pPicture:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2( 0, 50 )",
	"RIGHT_BOTTOM	= D3DXVECTOR2( 140, 80 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStatic:AddString
{
 	MSG    			= STR_ID_4776,
 	FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
 	SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	"POS            = D3DXVECTOR2(0, 80)",
 	"COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR  = D3DXCOLOR(1.0,1.0,1.0,1.0)",

}



g_pIME_MinLevel = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIME_MinLevel )
g_pIME_MinLevel:SetName( "IME_MIN_LEVEL" )
g_pIME_MinLevel:SetTextPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2( 0, 50 )",
	"RIGHT_BOTTOM	= D3DXVECTOR2( 120, 80 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pIME_MinLevel:SetFont( XF_DODUM_15_NORMAL )
g_pIME_MinLevel:SetTextColor( 1.0, 1.0, 1.0, 1.0 )
g_pIME_MinLevel:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_MinLevel:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIME_MinLevel:SetCaretColor( 1.0, 1.0, 1.0, 1.0 )
g_pIME_MinLevel:SetTabControlName( "IME_MAX_LEVEL" )
g_pIME_MinLevel:SetCustomMsgEnter( ITEM_CHEAT_POPUP_CUSTOM_MSG["ICPCM_EDIT_MIN_LEVEL"] )







	

-- 아이템 레벨 upper bound
g_pStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic )
g_pStatic:SetName( "Static_Edit_Box" )

g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_Room_Button0.tga", "Thumb_Tex" )
g_pPicture:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2( 0 + 150, 50 )",
	"RIGHT_BOTTOM	= D3DXVECTOR2( 140 + 150, 80 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStatic:AddString
{
 	MSG    			= STR_ID_4777,
 	FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
 	SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	"POS            = D3DXVECTOR2( 0 + 150, 80)",
 	"COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR  = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	
}



g_pIME_MaxLevel = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIME_MaxLevel )
g_pIME_MaxLevel:SetName( "IME_MAX_LEVEL" )
g_pIME_MaxLevel:SetTextPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2( 0 + 150, 50 )",
	"RIGHT_BOTTOM	= D3DXVECTOR2( 120 + 150, 80 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pIME_MaxLevel:SetFont( XF_DODUM_15_NORMAL )
g_pIME_MaxLevel:SetTextColor( 1.0, 1.0, 1.0, 1.0 )
g_pIME_MaxLevel:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_MaxLevel:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIME_MaxLevel:SetCaretColor( 1.0, 1.0, 1.0, 1.0 )
g_pIME_MaxLevel:SetTabControlName( "IME_BUY_ITEM_COUNT" )
g_pIME_MaxLevel:SetCustomMsgEnter( ITEM_CHEAT_POPUP_CUSTOM_MSG["ICPCM_EDIT_MAX_LEVEL"] )









-- 아이템 살 때 수량 입력 editbox
g_pStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic )
g_pStatic:SetName( "Static_Edit_Box" )

g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_Room_Button0.tga", "Thumb_Tex" )
g_pPicture:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2( 0 + 150 * 2, 50 )",
	"RIGHT_BOTTOM	= D3DXVECTOR2( 140 + 150 * 2, 80 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStatic:AddString
{
 	MSG    			= STR_ID_4778,
 	FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
 	SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	"POS            = D3DXVECTOR2( 0 + 150 * 2, 80)",
 	"COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR  = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	
}


g_pIME_BuyItemCount = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIME_BuyItemCount )
g_pIME_BuyItemCount:SetName( "IME_BUY_ITEM_COUNT" )
g_pIME_BuyItemCount:SetTextPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2( 0 + 150 * 2, 50 )",
	"RIGHT_BOTTOM	= D3DXVECTOR2( 120 + 150 * 2, 80 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pIME_BuyItemCount:SetFont( XF_DODUM_15_NORMAL )
g_pIME_BuyItemCount:SetTextColor( 1.0, 1.0, 1.0, 1.0 )
g_pIME_BuyItemCount:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_BuyItemCount:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIME_BuyItemCount:SetCaretColor( 1.0, 1.0, 1.0, 1.0 )
g_pIME_BuyItemCount:SetTabControlName( "IME_SEARCH_KEYWORD" )
g_pIME_BuyItemCount:SetCustomMsgEnter( ITEM_CHEAT_POPUP_CUSTOM_MSG["ICPCM_EDIT_ITEM_COUNT"] )








-- 아이템 검색할 때 문자열
g_pStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic )
g_pStatic:SetName( "Static_Edit_Box" )

g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_Room_Button0.tga", "Thumb_Tex" )
g_pPicture:SetPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2( 0 + 150 * 3, 50 )",
	"RIGHT_BOTTOM	= D3DXVECTOR2( 140 + 150 * 3, 80 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStatic:AddString
{
 	MSG    			= STR_ID_4779,
 	FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
 	SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	"POS            = D3DXVECTOR2( 0 + 150 * 3, 80)",
 	"COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR  = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	
}



g_pIME_SearchKeyword = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIME_SearchKeyword )
g_pIME_SearchKeyword:SetName( "IME_SEARCH_KEYWORD" )
g_pIME_SearchKeyword:SetTextPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2( 0 + 150 * 3, 50 )",
	"RIGHT_BOTTOM	= D3DXVECTOR2( 120 + 150 * 3, 80 )",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pIME_SearchKeyword:SetFont( XF_DODUM_15_NORMAL )
g_pIME_SearchKeyword:SetTextColor( 1.0, 1.0, 1.0, 1.0 )
g_pIME_SearchKeyword:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_SearchKeyword:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIME_SearchKeyword:SetCaretColor( 1.0, 1.0, 1.0, 1.0 )
g_pIME_SearchKeyword:SetTabControlName( "IME_MIN_LEVEL" )
g_pIME_SearchKeyword:SetCustomMsgEnter( ITEM_CHEAT_POPUP_CUSTOM_MSG["ICPCM_EDIT_SEARCH_KEYWORD"] )
g_pIME_SearchKeyword:RequestFocus()













-- 닫기 버튼
g_pButton = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton )
g_pButton:SetName( "Button_Close" )
g_pButton:SetNormalTex( "DLG_Room_Button0.TGA", "Thumb_Tex" )
g_pButton:SetOverTex( "DLG_Room_Button0.TGA", "Thumb_Tex" )
g_pButton:SetDownTex( "DLG_Room_Button0.TGA", "Thumb_Tex" )

g_pButton:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_		= 0.0,
}
g_pButton:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_		= 0.0,
}
g_pButton:SetDownPoint
{
	ADD_SIZE_X = -3,
	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(0,0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_		= 0.0,
}
g_pButton:SetCustomMsgMouseUp( ITEM_CHEAT_POPUP_CUSTOM_MSG["ICPCM_CLOSE_WINDOW"] )


