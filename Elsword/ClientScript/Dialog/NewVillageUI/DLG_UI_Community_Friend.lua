-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
--g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_MESSENGER"] )





-------------------------리스트박스 1--------------------------------------------------------
g_pListBox = g_pUIDialog:CreateListBox()
g_pUIDialog:AddControl( g_pListBox )
g_pListBox:SetName( "ListBoxFriend" )

g_pListBox:SetString		--신경써줄꺼는 폰트 인덱스와 폰트 스타일
{
	-- MSG 			= "NoName",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	"POS 			= D3DXVECTOR2(15,0)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}
g_pListBox:SetGroupString		--신경써줄꺼는 폰트 인덱스와 폰트 스타일
{
	-- MSG 			= "NoName",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	"POS 			= D3DXVECTOR2(15,0)",
	"COLOR			= D3DXCOLOR(0.0,0.0,1.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pListBox:SetTextTex( "DLG_Common_New_Texture62.tga", "Select_Bar" )

g_pListBox:SetBoundingBoxTex( "DLG_Room_Button0.tga","Invisible" )

g_pListBox:SetScollBarUpButtonTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Normal" )

g_pListBox:SetScollBarUpButtonDownTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Over" )

g_pListBox:SetScollBarDownButtonTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Normal" )

g_pListBox:SetScollBarDownButtonDownTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Over" )

g_pListBox:SetScollBarThumbTex( "DLG_Common_New_Texture61.tga", "Scroll_Bar" )

g_pListBox:SetScollBarTrackTex( "DLG_Room_Button0.tga", "Invisible" )


g_pListBox:InitScrollBar()
g_pListBox:SetScrollBarWidth( 21 )
g_pListBox:SetPos( 18+15, 111-15 )
g_pListBox:SetSize( 248-15,272+45 )

g_pListBox:SetCustomMsgSelection( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_USER_LISTBOX_ITEM_LBUTTON"] )
g_pListBox:SetCustomMsgSelectionByRButton( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_USER_LISTBOX_ITEM_RBUTTON"] )
g_pListBox:SetCustomMsgItemDoubleClick( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_USER_LISTBOX_ITEM_LBUTTON_DBLCLK"] )




------친구추가

g_pButtonfriend_add = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonfriend_add )
g_pButtonfriend_add:SetName( "friend_add" )
g_pButtonfriend_add:SetNormalTex( "DLG_UI_BUTTON10.tga", "add_Normal" )

g_pButtonfriend_add:SetOverTex( "DLG_UI_BUTTON10.tga", "add_over" )

g_pButtonfriend_add:SetDownTex( "DLG_UI_BUTTON10.tga", "add_over" )

g_pButtonFriend_add:SetDisableTex( "DLG_UI_Common_Texture09.tga", "add_noactive" )

g_pButtonfriend_add:SetNormalPoint
{
	 
    "LEFT_TOP		= D3DXVECTOR2(19,427)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonfriend_add:SetOverPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(19,427)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonfriend_add:SetDownPoint
{
       ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(19+1,427+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonFriend_add:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(19,427)",
        "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pButtonfriend_add:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_ADD_FRIEND_OPEN"] )





-------------그룹추가



g_pButtonGroup_add= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonGroup_add)
g_pButtonGroup_add:SetName( "group_add" )
g_pButtonGroup_add:SetNormalTex( "DLG_UI_BUTTON10.tga", "group_add_normal" )

g_pButtonGroup_add:SetOverTex( "DLG_UI_BUTTON10.tga", "group_add_over" )

g_pButtonGroup_add:SetDownTex( "DLG_UI_BUTTON10.tga", "group_add_over" )

g_pButtonGroup_add:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(91,427)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGroup_add:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(91,427)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGroup_add:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(91+1,427+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pButtonGroup_add:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_CREATE_GROUP_OPEN"] )



-------------상태별정열



g_pButtonstate_line = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonstate_line )
g_pButtonstate_line:SetName( "state_line" )
g_pButtonstate_line:SetNormalTex( "DLG_UI_BUTTON10.tga", "state_line_normal" )

g_pButtonstate_line:SetOverTex( "DLG_UI_BUTTON10.tga", "state_line_over" )

g_pButtonstate_line:SetDownTex( "DLG_UI_BUTTON10.tga", "state_line_over" )

g_pButtonstate_line:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(162,427)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonstate_line:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(162,427)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonstate_line:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(162+1,427+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pButtonstate_line:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_FRIEND_STATUS_SORT"] )


-------------그룹별 정열



g_pButtongroup_line = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtongroup_line )
g_pButtongroup_line:SetName( "group_line" )
g_pButtongroup_line:SetNormalTex( "DLG_UI_BUTTON10.tga", "group_line_normal" )

g_pButtongroup_line:SetOverTex( "DLG_UI_BUTTON10.tga", "group_line_over" )

g_pButtongroup_line:SetDownTex( "DLG_UI_BUTTON10.tga", "group_line_over" )

g_pButtongroup_line:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(233,427)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtongroup_line:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(233,427)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtongroup_line:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(233+1,427+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtongroup_line:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_FRIEND_GROUP_SORT"] )
