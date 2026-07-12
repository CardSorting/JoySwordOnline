-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetName( "DLG_Square_ChatBox" )
g_pUIDialog:SetPos( 0, 0 )	-- INT_WIDE_BAR	g_pUIDialog:SetPos( 0, 18 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_MESSENGER"] )
--g_pUIDialog:SetCloseCustomUIEventID( PARTYMSGER_UI_MSG["PUM_CHAT_WINDOW_CLOSE"] )
g_pUIDialog:SetCloseOnFocusOutEvent( NASOD_SCOPE_UI_MSG["NSUM_MENU_CLEAR"] )
------------------------------------------------------------------------------------------------
--마우스 오버를 위한 전체 채팅창 빈 박스
g_pButtonBtn_Box = g_pUIDialog:CreateButton()
g_pButtonBtn_Box:SetName( "g_pButtonBtn_Box" )
g_pUIDialog:AddControl( g_pButtonBtn_Box )
g_pButtonBtn_Box:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonBtn_Box:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonBtn_Box:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonBtn_Box:SetNormalPoint
{
    ADD_SIZE_X = 380,
 	ADD_SIZE_Y = 220,
 	"LEFT_TOP		= D3DXVECTOR2(0,443-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBtn_Box:SetOverPoint
{
    ADD_SIZE_X = 380,
 	ADD_SIZE_Y = 220,
	"LEFT_TOP		= D3DXVECTOR2(0,443-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBtn_Box:SetDownPoint
{
    ADD_SIZE_X = 380,
 	ADD_SIZE_Y = 220,
 	"LEFT_TOP		= D3DXVECTOR2(0,443-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-- 공통 채팅탭 // 배경
g_pStatic_ChatBoxLarge = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_ChatBoxLarge )
g_pStatic_ChatBoxLarge:SetName( "Chat_Box_Common" )

g_pPictureBG8= g_pUIDialog:CreatePicture()
g_pStatic_ChatBoxLarge:AddPicture( g_pPictureBG8)
g_pPictureBG8:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "CHAT_BG"  )
g_pPictureBG8:SetPoint
{
    ADD_SIZE_X=322,
	ADD_SIZE_Y=96,
	"LEFT_TOP		= D3DXVECTOR2(22,540)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureBG9= g_pUIDialog:CreatePicture()
g_pStatic_ChatBoxLarge:AddPicture( g_pPictureBG9)
g_pPictureBG9:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "SCROLL"  )
g_pPictureBG9:SetPoint
{    
	ADD_SIZE_Y=25,
	"LEFT_TOP		= D3DXVECTOR2(2,580)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	CHANGE_TIME		= 0.0,
}
-- 채팅창 배경 // help버튼
g_pButtonHelp = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonHelp )
g_pButtonHelp:SetName( "Help" )
g_pButtonHelp:SetNormalTex( "DLG_UI_Button19_NEW.tga", "SCROLL_HELP" )
g_pButtonHelp:SetOverTex( "DLG_UI_Button19_NEW.tga", "SCROLL_HELP_OVER" )
g_pButtonHelp:SetDownTex( "DLG_UI_Button19_NEW.tga", "SCROLL_HELP_OVER" )
g_pButtonHelp:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(2,540)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonHelp:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(2,540)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonHelp:SetDownPoint
{
    ADD_SIZE_X = -2,
 	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(2+1,540+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonHelp:SetCustomMsgMouseUp( PARTYMSGER_UI_MSG["PUM_CHAT_HELP"] )
-- 공통 채팅탭 // 스크롤 // DOWN2
g_pButtonDown2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonDown2 )
g_pButtonDown2:SetName( "Down2" )
g_pButtonDown2:SetNormalTex( "DLG_UI_Button19_NEW.tga", "SCROLL_DOWN_END" )
g_pButtonDown2:SetOverTex( "DLG_UI_Button19_NEW.tga", "SCROLL_DOWN_END_OVER" )
g_pButtonDown2:SetDownTex( "DLG_UI_Button19_NEW.tga", "SCROLL_DOWN_END_OVER" )
g_pButtonDown2:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(2,644)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDown2:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(2,644)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDown2:SetDownPoint
{
    ADD_SIZE_X = -2,
 	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(3,645)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDown2:SetCustomMsgMouseUp( PARTYMSGER_UI_MSG["PUM_CHAT_WINDOW_SCROLL_TO_LATEST"] )

-------텝버튼-전체
g_pRadioButtonAll = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonAll )
g_pRadioButtonAll:SetFixOverByCheck( true )
g_pRadioButtonAll:SetShowOffBGByCheck( true )
g_pRadioButtonAll:SetName( "ButtonAll" )
g_pRadioButtonAll:SetNormalTex( "DLG_UI_Button19_NEW.tga", "CHAT_ALL_NORMAL" )
g_pRadioButtonAll:SetOverTex( "DLG_UI_Button19_NEW.tga", "CHAT_ALL_Over" )
g_pRadioButtonAll:SetCheckedTex( "DLG_UI_Button19_NEW.tga", "CHAT_ALL_Over" )
g_pRadioButtonAll:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(23+1,527-2)",
	"COLOR			= D3DXCOLOR(0.7,0.7,0.7,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonAll:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(21,524-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonAll:SetRBPoint
{
 	--USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(23+1,524-2)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(24+45,524-2+30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonAll:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(21,524-3)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonAll:SetGroupID( 1 )
g_pRadioButtonAll:SetCustomMsgChecked( PARTYMSGER_UI_MSG["PUM_CHAT_MODE_ALL"] )
g_pRadioButtonAll:SetCustomMsgRButtonUp( PARTYMSGER_UI_MSG["PUM_POPUP_OPTION_MENU_ALL"] )
g_pRadioButtonAll:SetChecked( true )

-------텝버튼-파티
g_pRadioButtonParty = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonParty )
g_pRadioButtonParty:SetFixOverByCheck( true )
g_pRadioButtonParty:SetShowOffBGByCheck( true )
g_pRadioButtonParty:SetName( "ButtonParty" )
g_pRadioButtonParty:SetNormalTex( "DLG_UI_Button19_NEW.tga", "CHAT_PARTY_NORMAL" )
g_pRadioButtonParty:SetOverTex( "DLG_UI_Button19_NEW.tga", "CHAT_PARTY_OVER" )
g_pRadioButtonParty:SetCheckedTex( "DLG_UI_Button19_NEW.tga", "CHAT_PARTY_OVER" )
g_pRadioButtonParty:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(59+6,527-2)",
	"COLOR			= D3DXCOLOR(0.7,0.7,0.7,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonParty:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(21,527-3-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonParty:SetRBPoint
{
 	--USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(59+6,527-2)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(65+45,525+30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonParty:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(21,527-3-3)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonParty:SetGroupID( 1 )
g_pRadioButtonParty:SetCustomMsgChecked( PARTYMSGER_UI_MSG["PUM_CHAT_MODE_PARTY"] )
g_pRadioButtonParty:SetCustomMsgRButtonUp( PARTYMSGER_UI_MSG["PUM_POPUP_OPTION_MENU_PARTY"] )

--탭버튼 길드
g_pRadioButtonGuild = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonGuild )
g_pRadioButtonGuild:SetFixOverByCheck( true )
g_pRadioButtonGuild:SetShowOffBGByCheck( true )
g_pRadioButtonGuild:SetName( "ButtonGuild" )
g_pRadioButtonGuild:SetNormalTex( "DLG_UI_Button19_NEW.tga", "CHAT_GUILD_NORMAL" )
g_pRadioButtonGuild:SetOverTex( "DLG_UI_Button19_NEW.tga", "CHAT_GUILD_OVER" )
g_pRadioButtonGuild:SetCheckedTex( "DLG_UI_Button19_NEW.tga", "CHAT_GUILD_OVER" )
g_pRadioButtonGuild:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(93+11,527-2)",
	"COLOR			= D3DXCOLOR(0.7,0.7,0.7,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonGuild:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(21,527-4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonGuild:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(95+11,527-2)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(95+11+45,524+30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonGuild:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(21,524-2)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonGuild:SetGroupID( 1 )
g_pRadioButtonGuild:SetCustomMsgChecked( PARTYMSGER_UI_MSG["PUM_CHAT_MODE_GUILD"] )
g_pRadioButtonGuild:SetCustomMsgRButtonUp( PARTYMSGER_UI_MSG["PUM_POPUP_OPTION_MENU_GUILD"] )

--탭버튼 귓속말
g_pRadioButtonPersonal = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonPersonal )
g_pRadioButtonPersonal:SetFixOverByCheck( true )
g_pRadioButtonPersonal:SetShowOffBGByCheck( true )
g_pRadioButtonPersonal:SetName( "ButtonPersonal" )
g_pRadioButtonPersonal:SetNormalTex( "DLG_UI_Button19_NEW.tga", "CHAT_TALK_NORMAL" )
g_pRadioButtonPersonal:SetOverTex( "DLG_UI_Button19_NEW.tga", "CHAT_TALK_OVER" )
g_pRadioButtonPersonal:SetCheckedTex( "DLG_UI_Button19_NEW.tga", "CHAT_TALK_OVER" )
g_pRadioButtonPersonal:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(131+14,527-2)",
	"COLOR			= D3DXCOLOR(0.7,0.7,0.7,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonPersonal:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(21,524-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonPersonal:SetRBPoint
{
 	--USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(131+14,527-3)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(145+45,524+30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonPersonal:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(21,524-3)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonPersonal:SetGroupID( 1 )
g_pRadioButtonPersonal:SetCustomMsgChecked( PARTYMSGER_UI_MSG["PUM_CHAT_MODE_PERSONAL"] )
g_pRadioButtonPersonal:SetCustomMsgRButtonUp( PARTYMSGER_UI_MSG["PUM_POPUP_OPTION_MENU_WHISPER"] )

--[[ #define ADDED_RELATIONSHIP_SYSTEM
-------텝버튼-커플
g_pRadioButtonRelation1 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonRelation1 )
g_pRadioButtonRelation1:SetFixOverByCheck( true )
g_pRadioButtonRelation1:SetShowOffBGByCheck( true )
g_pRadioButtonRelation1:SetName( "ButtonRelationCouple" )
g_pRadioButtonRelation1:SetNormalTex( "DLG_UI_Button21_NEW.tga", "Chat_Couple_Normal" )
g_pRadioButtonRelation1:SetOverTex( "DLG_UI_Button21_NEW.tga", "Chat_Couple_Over" )
g_pRadioButtonRelation1:SetCheckedTex( "DLG_UI_Button21_NEW.tga", "Chat_Couple_Over" )
g_pRadioButtonRelation1:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(131+14+39,527-2)",
	"COLOR			= D3DXCOLOR(0.7,0.7,0.7,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonRelation1:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(21,524-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonRelation1:SetRBPoint
{
 	--USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(131+14+39,527-3)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(145+45+39,524+30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonRelation1:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(21,524-3)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonRelation1:SetGroupID( 1 )
g_pRadioButtonRelation1:SetCustomMsgChecked( PARTYMSGER_UI_MSG["PUM_CHAT_MODE_RELATION"] )
g_pRadioButtonRelation1:SetCustomMsgRButtonUp( PARTYMSGER_UI_MSG["PUM_POPUP_OPTION_MENU_RELATION"] )


-------텝버튼-결혼
g_pRadioButtonRelation2 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonRelation2 )
g_pRadioButtonRelation2:SetFixOverByCheck( true )
g_pRadioButtonRelation2:SetShowOffBGByCheck( true )
g_pRadioButtonRelation2:SetName( "ButtonRelationMarried" )
g_pRadioButtonRelation2:SetNormalTex( "DLG_UI_Button21_NEW.tga", "Chat_Marriage_Normal" )
g_pRadioButtonRelation2:SetOverTex( "DLG_UI_Button21_NEW.tga", "Chat_Marriage_Over" )
g_pRadioButtonRelation2:SetCheckedTex( "DLG_UI_Button21_NEW.tga", "Chat_Marriage_Over" )
g_pRadioButtonRelation2:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(131+14+39,527-2)",
	"COLOR			= D3DXCOLOR(0.7,0.7,0.7,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonRelation2:SetBGMouseOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(21,524-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonRelation2:SetRBPoint
{
 	--USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(131+14+39,527-3)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(145+45+39,524+30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonRelation2:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(21,524-3)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButtonRelation2:SetGroupID( 1 )
g_pRadioButtonRelation2:SetCustomMsgChecked( PARTYMSGER_UI_MSG["PUM_CHAT_MODE_RELATION"] )
g_pRadioButtonRelation2:SetCustomMsgRButtonUp( PARTYMSGER_UI_MSG["PUM_POPUP_OPTION_MENU_RELATION"] )
--]]

---탭버튼 메가폰 
g_pStatic_MEGA = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_MEGA )
g_pStatic_MEGA:SetName( "Chat_Box_Megaphone" )
g_pPicture_MEGA_BG= g_pUIDialog:CreatePicture()
g_pStatic_MEGA:AddPicture( g_pPicture_MEGA_BG)
g_pPicture_MEGA_BG:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "CHAT_BG"  )
g_pPicture_MEGA_BG:SetPoint
{
    ADD_SIZE_X=330-8,
	ADD_SIZE_Y=52,
	"LEFT_TOP		= D3DXVECTOR2(22,443-5)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureBG= g_pUIDialog:CreatePicture()
g_pStatic_MEGA:AddPicture( g_pPictureBG)
g_pPictureBG:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "SCROLL"  )
g_pPictureBG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(2,483-20-5)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	CHANGE_TIME		= 0.0,
}

----메가폰 스크롤 맨 마지막
g_pButton_MEGA_Down2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_MEGA_Down2 )
g_pButton_MEGA_Down2:SetName( "MegaDown2" )
g_pButton_MEGA_Down2:SetNormalTex( "DLG_UI_Button19_NEW.tga", "SCROLL_DOWN_END" )
g_pButton_MEGA_Down2:SetOverTex( "DLG_UI_Button19_NEW.tga", "SCROLL_DOWN_END_OVER" )
g_pButton_MEGA_Down2:SetDownTex( "DLG_UI_Button19_NEW.tga", "SCROLL_DOWN_END_OVER" )
g_pButton_MEGA_Down2:SetNormalPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(2,503-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_MEGA_Down2:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(2,503-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_MEGA_Down2:SetDownPoint
{
    ADD_SIZE_X = -2,
 	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(3,504-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_MEGA_Down2:SetCustomMsgMouseUp( PARTYMSGER_UI_MSG["PUM_CHAT_WINDOW_SCROLL_TO_LATEST"] )

---메가폰 탭 버튼
g_pPictureBG= g_pUIDialog:CreatePicture()
g_pStatic_MEGA:AddPicture( g_pPictureBG)
g_pPictureBG:SetTex( "DLG_UI_Button19_NEW.tga", "CHAT_MEGA_OVER"  )
g_pPictureBG:SetPoint
{   
	
	"LEFT_TOP		= D3DXVECTOR2(342-8,523-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-- [[
--------------------------------------------------------------------------------
--채팅 // 전체
g_pListBox = g_pUIDialog:CreateListBox()
g_pUIDialog:AddControl( g_pListBox )
g_pListBox:SetName( "ListBox_All" )
--g_pListBox:SetOffsetMaximize( 0, 200 )
g_pListBox:SetIgnoreListClick( true )

g_pListBox:SetString	
{
	-- MSG 			= "NoName",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	"POS 			= D3DXVECTOR2(22,540)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
}

g_pListBox:SetTextTex( "DLG_UI_Common_Texture10.tga", "Gray_BG_A" )
g_pListBox:SetButtonMouseOverTex( "DLG_UI_Common_Texture10.tga", "Gray_BG_B" )
--g_pListBox:SetTextTex( "DLG_Room_Button0.tga", "Invisible" )
g_pListBox:SetBoundingBoxTex( "DLG_Room_Button0.tga","Invisible" )

g_pListBox:SetScollBarUpButtonTex( "DLG_UI_Button19_NEW.tga", "SCROLL_UP" )
g_pListBox:SetScollBarUpButtonDownTex( "DLG_UI_Button19_NEW.tga", "SCROLL_UP_OVER" )
g_pListBox:SetScollBarDownButtonTex( "DLG_UI_Button19_NEW.tga", "SCROLL_DOWN" )
g_pListBox:SetScollBarDownButtonDownTex( "DLG_UI_Button19_NEW.tga", "SCROLL_DOWN_OVER" )
g_pListBox:SetScollBarThumbTex( "DLG_Room_Button0.tga", "Thumb_Tex" )
g_pListBox:SetScollBarTrackTex( "DLG_Room_Button0.tga", "Invisible" )

g_pScrollBar = g_pListBox:InitScrollBar()
g_pListBox:SetScrollBarPos( 2, 560 )
g_pListBox:SetScrollBarSize( 19, 84 )
g_pListBox:SetUpdateScrollBarOnUpdate( false )
--g_pListBox:SetScrollBarOnRight( false )

g_pScrollBar:SetEnableThumb( false )
g_pScrollBar:SetEnableTrack( false )

g_pListBox:SetPos( 22, 540 )
g_pListBox:SetSize( 330, 124 )
g_pListBox:SetUseItemDisappear( true )
g_pListBox:SetScrollToEndOnUpdateRects( true )
for i=1, 20 do
	g_pListBox:AddItem( "  " )
end

g_pListBox:SetCustomMsgSelection( NASOD_SCOPE_UI_MSG["NSUM_CHAT_SELECT_MESSAGE"] )
g_pListBox:SetCustomMsgSelectionByRButton( NASOD_SCOPE_UI_MSG["NSUM_CHAT_OPEN_MENU"] )
g_pListBox:SetCustomMsgItemDoubleClick( NASOD_SCOPE_UI_MSG["NSUM_MENU_WHISPER"] )

--------------------------------------------------------------------------------
--채팅 파티탭
g_pListBox = g_pUIDialog:CreateListBox()
g_pUIDialog:AddControl( g_pListBox )
g_pListBox:SetName( "ListBox_Party" )
--g_pListBox:SetOffsetMaximize( 0, 200 )
g_pListBox:SetIgnoreListClick( true )

g_pListBox:SetString	
{
	-- MSG 			= "NoName",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	"POS 			= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	
}

g_pListBox:SetTextTex( "DLG_UI_Common_Texture10.tga", "Gray_BG_A" )
g_pListBox:SetButtonMouseOverTex( "DLG_UI_Common_Texture10.tga", "Gray_BG_B" )
--g_pListBox:SetTextTex( "DLG_Room_Button0.tga", "Invisible" )
g_pListBox:SetBoundingBoxTex( "DLG_Room_Button0.tga","Invisible" )

g_pListBox:SetScollBarUpButtonTex( "DLG_UI_Button19_NEW.tga", "SCROLL_UP" )
g_pListBox:SetScollBarUpButtonDownTex( "DLG_UI_Button19_NEW.tga", "SCROLL_UP_OVER" )
g_pListBox:SetScollBarDownButtonTex( "DLG_UI_Button19_NEW.tga", "SCROLL_DOWN" )
g_pListBox:SetScollBarDownButtonDownTex( "DLG_UI_Button19_NEW.tga", "SCROLL_DOWN_OVER" )
g_pListBox:SetScollBarThumbTex( "DLG_Room_Button0.tga", "Thumb_Tex" )
g_pListBox:SetScollBarTrackTex( "DLG_Room_Button0.tga", "Invisible" )


g_pScrollBar = g_pListBox:InitScrollBar()
g_pListBox:SetScrollBarPos( 2, 560 )
g_pListBox:SetScrollBarSize( 19, 84 )
g_pListBox:SetUpdateScrollBarOnUpdate( false )
--g_pListBox:SetScrollBarOnRight( false )

g_pScrollBar:SetEnableThumb( false )
g_pScrollBar:SetEnableTrack( false )

g_pListBox:SetPos( 22, 540 )
g_pListBox:SetSize( 330, 124 )
g_pListBox:SetUseItemDisappear( true )
g_pListBox:SetScrollToEndOnUpdateRects( true )


for i=1, 20 do
	g_pListBox:AddItem( "  " )
end

g_pListBox:SetCustomMsgSelection( NASOD_SCOPE_UI_MSG["NSUM_CHAT_SELECT_MESSAGE"] )
g_pListBox:SetCustomMsgSelectionByRButton( NASOD_SCOPE_UI_MSG["NSUM_CHAT_OPEN_MENU"] )
g_pListBox:SetCustomMsgItemDoubleClick( NASOD_SCOPE_UI_MSG["NSUM_MENU_WHISPER"] )


--------------------------------------------------------------------------------
--채팅 길드
g_pListBox = g_pUIDialog:CreateListBox()
g_pUIDialog:AddControl( g_pListBox )
g_pListBox:SetName( "ListBox_Guild" )
--g_pListBox:SetOffsetMaximize( 0, 200 )
g_pListBox:SetIgnoreListClick( true )

g_pListBox:SetString	
{
	-- MSG 			= "NoName",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	"POS 			= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	
}

g_pListBox:SetTextTex( "DLG_UI_Common_Texture10.tga", "Gray_BG_A" )
g_pListBox:SetButtonMouseOverTex( "DLG_UI_Common_Texture10.tga", "Gray_BG_B" )
--g_pListBox:SetTextTex( "DLG_Room_Button0.tga", "Invisible" )
g_pListBox:SetBoundingBoxTex( "DLG_Room_Button0.tga","Invisible" )

g_pListBox:SetScollBarUpButtonTex( "DLG_UI_Button19_NEW.tga", "SCROLL_UP" )
g_pListBox:SetScollBarUpButtonDownTex( "DLG_UI_Button19_NEW.tga", "SCROLL_UP_OVER" )
g_pListBox:SetScollBarDownButtonTex( "DLG_UI_Button19_NEW.tga", "SCROLL_DOWN" )
g_pListBox:SetScollBarDownButtonDownTex( "DLG_UI_Button19_NEW.tga", "SCROLL_DOWN_OVER" )
g_pListBox:SetScollBarThumbTex( "DLG_Room_Button0.tga", "Thumb_Tex" )
g_pListBox:SetScollBarTrackTex( "DLG_Room_Button0.tga", "Invisible" )


g_pScrollBar = g_pListBox:InitScrollBar()
g_pListBox:SetScrollBarPos( 2, 560 )
g_pListBox:SetScrollBarSize( 19, 84 )
g_pListBox:SetUpdateScrollBarOnUpdate( false )
--g_pListBox:SetScrollBarOnRight( false )

g_pScrollBar:SetEnableThumb( false )
g_pScrollBar:SetEnableTrack( false )

g_pListBox:SetPos( 22, 540 )
g_pListBox:SetSize( 330, 124 )
g_pListBox:SetUseItemDisappear( true )
g_pListBox:SetScrollToEndOnUpdateRects( true )




for i=1, 20 do
	g_pListBox:AddItem( "  " )
end

g_pListBox:SetCustomMsgSelection( NASOD_SCOPE_UI_MSG["NSUM_CHAT_SELECT_MESSAGE"] )
g_pListBox:SetCustomMsgSelectionByRButton( NASOD_SCOPE_UI_MSG["NSUM_CHAT_OPEN_MENU"] )
g_pListBox:SetCustomMsgItemDoubleClick( NASOD_SCOPE_UI_MSG["NSUM_MENU_WHISPER"] )


--------------------------------------------------------------------------------
--채팅 귓속말
g_pListBox = g_pUIDialog:CreateListBox()
g_pUIDialog:AddControl( g_pListBox )
g_pListBox:SetName( "ListBox_Personal" )
--g_pListBox:SetOffsetMaximize( 0, 200 )
g_pListBox:SetIgnoreListClick( true )

g_pListBox:SetString	
{
	-- MSG 			= "NoName",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	"POS 			= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	
}

g_pListBox:SetTextTex( "DLG_UI_Common_Texture10.tga", "Gray_BG_A" )
g_pListBox:SetButtonMouseOverTex( "DLG_UI_Common_Texture10.tga", "Gray_BG_B" )
--g_pListBox:SetTextTex( "DLG_Room_Button0.tga", "Invisible" )
g_pListBox:SetBoundingBoxTex( "DLG_Room_Button0.tga","Invisible" )

g_pListBox:SetScollBarUpButtonTex( "DLG_UI_Button19_NEW.tga", "SCROLL_UP" )
g_pListBox:SetScollBarUpButtonDownTex( "DLG_UI_Button19_NEW.tga", "SCROLL_UP_OVER" )
g_pListBox:SetScollBarDownButtonTex( "DLG_UI_Button19_NEW.tga", "SCROLL_DOWN" )
g_pListBox:SetScollBarDownButtonDownTex( "DLG_UI_Button19_NEW.tga", "SCROLL_DOWN_OVER" )
g_pListBox:SetScollBarThumbTex( "DLG_Room_Button0.tga", "Thumb_Tex" )
g_pListBox:SetScollBarTrackTex( "DLG_Room_Button0.tga", "Invisible" )


g_pScrollBar = g_pListBox:InitScrollBar()
g_pListBox:SetScrollBarPos( 2, 560 )
g_pListBox:SetScrollBarSize( 19, 84 )
g_pListBox:SetUpdateScrollBarOnUpdate( false )
--g_pListBox:SetScrollBarOnRight( false )

g_pScrollBar:SetEnableThumb( false )
g_pScrollBar:SetEnableTrack( false )

g_pListBox:SetPos( 22, 540 )
g_pListBox:SetSize( 330, 124 )
g_pListBox:SetUseItemDisappear( true )
g_pListBox:SetScrollToEndOnUpdateRects( true )

for i=1, 20 do
	g_pListBox:AddItem( "  " )
end

g_pListBox:SetCustomMsgSelection( NASOD_SCOPE_UI_MSG["NSUM_CHAT_SELECT_MESSAGE"] )
g_pListBox:SetCustomMsgSelectionByRButton( NASOD_SCOPE_UI_MSG["NSUM_CHAT_OPEN_MENU"] )
g_pListBox:SetCustomMsgItemDoubleClick( NASOD_SCOPE_UI_MSG["NSUM_MENU_WHISPER"] )




--------------------------------------------------------------------------------
--채팅 메가폰
g_pListBox = g_pUIDialog:CreateListBox()
g_pUIDialog:AddControl( g_pListBox )
g_pListBox:SetName( "ListBox_Megaphone" )
--g_pListBox:SetOffsetMaximize( 0, 200 )
g_pListBox:SetIgnoreListClick( true )

g_pListBox:SetString	
{
	-- MSG 			= "NoName",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	"POS 			= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	
}

g_pListBox:SetTextTex( "DLG_UI_Common_Texture10.tga", "Gray_BG_A" )
g_pListBox:SetButtonMouseOverTex( "DLG_UI_Common_Texture10.tga", "Gray_BG_B" )
--g_pListBox:SetTextTex( "DLG_Room_Button0.tga", "Invisible" )
g_pListBox:SetBoundingBoxTex( "DLG_Room_Button0.tga","Invisible" )

g_pListBox:SetScollBarUpButtonTex( "DLG_UI_Button19_NEW.tga", "SCROLL_UP" )
g_pListBox:SetScollBarUpButtonDownTex( "DLG_UI_Button19_NEW.tga", "SCROLL_UP_OVER" )
g_pListBox:SetScollBarDownButtonTex( "DLG_UI_Button19_NEW.tga", "SCROLL_DOWN" )
g_pListBox:SetScollBarDownButtonDownTex( "DLG_UI_Button19_NEW.tga", "SCROLL_DOWN_OVER" )
g_pListBox:SetScollBarThumbTex( "DLG_Room_Button0.tga", "Thumb_Tex" )
g_pListBox:SetScollBarTrackTex( "DLG_Room_Button0.tga", "Invisible" )


g_pScrollBar = g_pListBox:InitScrollBar()
g_pListBox:SetScrollBarPos( 2, 443 -5)
g_pListBox:SetScrollBarSize( 19, 60 )
g_pListBox:SetUpdateScrollBarOnUpdate( false )
--g_pListBox:SetScrollBarOnRight( false )

g_pScrollBar:SetEnableThumb( false )
g_pScrollBar:SetEnableTrack( false )

g_pListBox:SetPos( 22, 443-5 )
g_pListBox:SetSize( 360, 82 )
g_pListBox:SetUseItemDisappear( true )
g_pListBox:SetScrollToEndOnUpdateRects( true )

for i=1, 20 do
	g_pListBox:AddItem( "  " )
end


g_pListBox:SetCustomMsgSelection( NASOD_SCOPE_UI_MSG["NSUM_CHAT_SELECT_MESSAGE"] )
g_pListBox:SetCustomMsgSelectionByRButton( NASOD_SCOPE_UI_MSG["NSUM_CHAT_OPEN_MENU"] )
g_pListBox:SetCustomMsgItemDoubleClick( NASOD_SCOPE_UI_MSG["NSUM_MENU_WHISPER"] )



--[[
-- 공통 채팅탭, 마우스 우클릭 메뉴를 위한 빈 버튼

g_pButtonBtn_Box2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonBtn_Box2 )
g_pButtonBtn_Box2:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonBtn_Box2:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonBtn_Box2:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButtonBtn_Box2:SetNormalPoint
{
    ADD_SIZE_X = 360,
 	ADD_SIZE_Y = 123,
	"LEFT_TOP		= D3DXVECTOR2(20,540)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBtn_Box2:SetOverPoint
{
    ADD_SIZE_X = 360,
 	ADD_SIZE_Y = 123,
	"LEFT_TOP		= D3DXVECTOR2(20,540)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBtn_Box2:SetDownPoint
{
    ADD_SIZE_X = 360,
 	ADD_SIZE_Y = 123,
	"LEFT_TOP		= D3DXVECTOR2(20,540)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBtn_Box2:SetCustomMsgMouseRightUp( PARTYMSGER_UI_MSG["PUM_POPUP_MENU_CHAT_TAB"] )
g_pButtonBtn_Box2:SetCustomMsgMouseUp( PARTYMSGER_UI_MSG["PUM_POPUP_MENU_CLOSE"] )
--]]