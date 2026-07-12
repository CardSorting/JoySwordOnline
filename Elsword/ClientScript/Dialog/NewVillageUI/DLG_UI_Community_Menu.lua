-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true  )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseOnFocusOut( true )

g_pStaticuser = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticuser )
g_pStaticuser:SetName( "user" )

---------BG

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticuser:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture03.TGA", "user_bg1_top2" )

g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticuser:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture03.TGA", "user_bg1_middle" )
g_pPicture_bg:SetIndex(1)
g_pPicture_bg:SetPoint
{
    ADD_SIZE_Y = 17,
	"LEFT_TOP		= D3DXVECTOR2(0,14+5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticuser:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture03.TGA", "user_bg1_bottom" )
g_pPicture_bg:SetIndex(2)
g_pPicture_bg:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(0,41-4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------------BG2


g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticuser:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "user_bg2_top" )

g_pPicture_bg2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(10,39-25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticuser:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "user_bg2_middle" )
g_pPicture_bg2:SetIndex(3)
g_pPicture_bg2:SetPoint
{
    ADD_SIZE_Y = 17,
	"LEFT_TOP		= D3DXVECTOR2(10,44-25)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticuser:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "user_bg2_bottom" )
g_pPicture_bg2:SetIndex(4)
g_pPicture_bg2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(10,37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--------------------------- 메뉴




-------------------------------------------      파티초대   -----------------------------------------------------

g_pButtoninvite = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtoninvite )
g_pButtoninvite:SetName( "invite" )
g_pButtoninvite:SetNormalTex( "DLG_UI_BUTTON06.tga", "party_invite" )

g_pButtoninvite:SetOverTex( "DLG_UI_BUTTON06.tga", "party_invite_OVER" )

g_pButtoninvite:SetDownTex( "DLG_UI_BUTTON06.tga", "party_invite_OVER" )

g_pButtoninvite:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(60-15,22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoninvite:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,17)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoninvite:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,17+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoninvite:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_PARTY"] )



-------------------------------------------      파티요청   -----------------------------------------------------

g_pButtonparty = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonparty )
g_pButtonparty:SetName( "party" )
g_pButtonparty:SetNormalTex( "DLG_UI_BUTTON06.tga", "party" )

g_pButtonparty:SetOverTex( "DLG_UI_BUTTON06.tga", "party_OVER" )

g_pButtonparty:SetDownTex( "DLG_UI_BUTTON06.tga", "party_OVER" )

g_pButtonparty:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(60-12,22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonparty:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,17)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonparty:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,17+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonparty:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_PARTY_DEMAND"] )





-------------------------------------------       대화하기   -----------------------------------------------------

g_pButtontalk = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtontalk )
g_pButtontalk:SetName( "talk" )
g_pButtontalk:SetNormalTex( "DLG_UI_BUTTON10.tga", "talk_bt_normal" )

g_pButtontalk:SetOverTex( "DLG_UI_BUTTON10.tga", "talk_bt_OVER" )

g_pButtontalk:SetDownTex( "DLG_UI_BUTTON10.tga", "talk_bt_OVER" )

g_pButtontalk:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(60+20-9,22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtontalk:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,17)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtontalk:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,17+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtontalk:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_USER_LISTBOX_ITEM_LBUTTON_DBLCLK"] )


-------------------------------------------      차단/해제   -----------------------------------------------------

g_pButtoncut = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtoncut )
g_pButtoncut:SetName( "cut_cancle" )
g_pButtoncut:SetNormalTex( "DLG_UI_BUTTON10.tga", "cut_bt_normal" )

g_pButtoncut:SetOverTex( "DLG_UI_BUTTON10.tga", "cut_bt_OVER" )

g_pButtoncut:SetDownTex( "DLG_UI_BUTTON10.tga", "cut_bt_OVER" )

g_pButtoncut:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(56-2,22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncut:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,17)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncut:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,17+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncut:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_USERMENU_BLOCKING"] )


-------------------------------------------      삭제   -----------------------------------------------------

g_pButtondelete = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtondelete )
g_pButtondelete:SetName( "delete" )
g_pButtondelete:SetNormalTex( "DLG_UI_BUTTON10.tga", "del_bt_normal" )

g_pButtondelete:SetOverTex( "DLG_UI_BUTTON10.tga", "del_bt_OVER" )

g_pButtondelete:SetDownTex( "DLG_UI_BUTTON10.tga", "del_bt_OVER" )

g_pButtondelete:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(60+8,22-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtondelete:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,17)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtondelete:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,17+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtondelete:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_USERMENU_DELETE"] )


-------------------------------------------      캐릭터정보   -----------------------------------------------------

g_pButtoninfo = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtoninfo )
g_pButtoninfo:SetName( "character_info" )
g_pButtoninfo:SetNormalTex( "DLG_UI_BUTTON10.tga", "info_bt_normal" )

g_pButtoninfo:SetOverTex( "DLG_UI_BUTTON10.tga", "info_bt_OVER" )

g_pButtoninfo:SetDownTex( "DLG_UI_BUTTON10.tga", "info_bt_OVER" )

g_pButtoninfo:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(56-22,22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoninfo:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,17)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoninfo:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,17+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoninfo:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_USERMENU_CHARINFO"] )

-------------------------------------------       엿보기      -----------------------------------------------------

g_pButtonwatch = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonwatch )
g_pButtonwatch:SetName( "watch" )
g_pButtonwatch:SetNormalTex( "DLG_UI_BUTTON06.tga", "user_info" )

g_pButtonwatch:SetOverTex( "DLG_UI_BUTTON06.tga", "user_info_OVER" )

g_pButtonwatch:SetDownTex( "DLG_UI_BUTTON06.tga", "user_info_OVER" )

g_pButtonwatch:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(60+2-18,22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonwatch:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,17)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonwatch:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,17+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonwatch:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_USERMENU_WATCH"] )

-------------------------------------------      그룹이동   -----------------------------------------------------

g_pButtonmove = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonmove )
g_pButtonmove:SetName( "group_move" )
g_pButtonmove:SetNormalTex( "DLG_UI_BUTTON10.tga", "group_move_bt_normal" )

g_pButtonmove:SetOverTex( "DLG_UI_BUTTON10.tga", "group_move_bt_OVER" )

g_pButtonmove:SetDownTex( "DLG_UI_BUTTON10.tga", "group_move_bt_OVER" )

g_pButtonmove:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(60-4,22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonmove:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,17)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonmove:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,17+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonmove:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MGR_GROUP_MOVE_OPEN"] )


-------------------------------------------       친구요청   -----------------------------------------------------

g_pButtonfriend = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonfriend )
g_pButtonfriend:SetName( "friend" )
g_pButtonfriend:SetNormalTex( "DLG_UI_BUTTON06.tga", "friend" )

g_pButtonfriend:SetOverTex( "DLG_UI_BUTTON06.tga", "friend_OVER" )

g_pButtonfriend:SetDownTex( "DLG_UI_BUTTON06.tga", "friend_OVER" )

g_pButtonfriend:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(59-11+2,22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonfriend:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,17)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonfriend:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,17+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonfriend:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_FRIEND"] )


-------------------------------------------      사제요청   -----------------------------------------------------

g_pButtondisciple = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtondisciple )
g_pButtondisciple:SetName( "disciple" )
g_pButtondisciple:SetNormalTex( "DLG_UI_BUTTON06.tga", "disciple" )

g_pButtondisciple:SetOverTex( "DLG_UI_BUTTON06.tga", "disciple_OVER" )

g_pButtondisciple:SetDownTex( "DLG_UI_BUTTON06.tga", "disciple_OVER" )

g_pButtondisciple:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(60-14,22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtondisciple:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,17)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtondisciple:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,17+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtondisciple:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_DISCIPLE"] )




--[[
-------------------------------------------      파티장임명   -----------------------------------------------------

g_pButtonleader = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonleader )
g_pButtonleader:SetName( "leader" )
g_pButtonleader:SetNormalTex( "DLG_UI_BUTTON06.tga", "party_leader" )

g_pButtonleader:SetOverTex( "DLG_UI_BUTTON06.tga", "party_leader_OVER" )

g_pButtonleader:SetDownTex( "DLG_UI_BUTTON06.tga", "party_leader_OVER" )

g_pButtonleader:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(56,22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonleader:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,17)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonleader:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,17+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonleader:SetCustomMsgMouseUp( USER_MENU_UI_MSG["UMUI_LEADER"] )




-------------------------------------------      강퇴   -----------------------------------------------------

g_pButtonout = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonout )
g_pButtonout:SetName( "out" )
g_pButtonout:SetNormalTex( "DLG_UI_BUTTON06.tga", "get_out" )

g_pButtonout:SetOverTex( "DLG_UI_BUTTON06.tga", "get_out_OVER" )

g_pButtonout:SetDownTex( "DLG_UI_BUTTON06.tga", "get_out_OVER" )

g_pButtonout:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(60+8,22-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonout:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,17)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonout:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,17+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonout:SetCustomMsgMouseUp( USER_MENU_UI_MSG["UMUI_OUT"] )
--]]



-------------------------------------------      개인거래   -----------------------------------------------------

g_pButtontrade = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtontrade )
g_pButtontrade:SetName( "trade" )
g_pButtontrade:SetNormalTex( "DLG_UI_BUTTON06.tga", "trade" )

g_pButtontrade:SetOverTex( "DLG_UI_BUTTON06.tga", "trade_OVER" )

g_pButtontrade:SetDownTex( "DLG_UI_BUTTON06.tga", "trade_OVER" )

g_pButtontrade:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(59-26+3+19,22-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtontrade:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,17)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtontrade:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,17+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtontrade:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_TRADE"] )






-------------------------------------------      상점보기   -----------------------------------------------------

g_pButtonshop_look = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonshop_look )
g_pButtonshop_look:SetName( "shop_look" )
g_pButtonshop_look:SetNormalTex( "DLG_UI_BUTTON10.tga", "shop_look" )

g_pButtonshop_look:SetOverTex( "DLG_UI_BUTTON10.tga", "shop_look_OVER" )

g_pButtonshop_look:SetDownTex( "DLG_UI_BUTTON10.tga", "shop_look_OVER" )

g_pButtonshop_look:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(59,22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonshop_look:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,17)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonshop_look:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,17+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonshop_look:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MARKET_SHOP"] )



-------------------------------------------      이름바꾸기   -----------------------------------------------------

g_pButtonname_change = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonname_change )
g_pButtonname_change:SetName( "name_change" )
g_pButtonname_change:SetNormalTex( "DLG_UI_BUTTON10.tga", "name_change" )

g_pButtonname_change:SetOverTex( "DLG_UI_BUTTON10.tga", "name_change_OVER" )

g_pButtonname_change:SetDownTex( "DLG_UI_BUTTON10.tga", "name_change_OVER" )

g_pButtonname_change:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(59-3+8,22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonname_change:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,17)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonname_change:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,17+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonname_change:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MGR_CHANGE_GROUP_NAME_OPEN"] )


-- 귓속말
g_pButtonwhisper = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonwhisper )
g_pButtonwhisper:SetName( "whisper" )
g_pButtonwhisper:SetNormalTex( "DLG_UI_BUTTON06.tga", "whisper" )

g_pButtonwhisper:SetOverTex( "DLG_UI_BUTTON06.tga", "whisper_OVER" )

g_pButtonwhisper:SetDownTex( "DLG_UI_BUTTON06.tga", "whisper_OVER" )

g_pButtonwhisper:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(59+5-16,22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonwhisper:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,17)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonwhisper:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,17+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonwhisper:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_USERMENU_WHISPER"] )




------------------------------------------------------ 같이하기 -----------------------------------------------------

g_pButtonTogether = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonTogether )
g_pButtonTogether:SetName( "Together" )
g_pButtonTogether:SetNormalTex( "DLG_UI_BUTTON08.tga", "Together_normal" )

g_pButtonTogether:SetOverTex( "DLG_UI_BUTTON08.tga", "Together_OVER" )

g_pButtonTogether:SetDownTex( "DLG_UI_BUTTON08.tga", "Together_OVER" )

g_pButtonTogether:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(59+9,22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonTogether:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,17)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonTogether:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,17+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonTogether:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_PVP_TOGETHER"] )




------------------------------------------------------ 초대하기 -----------------------------------------------------

g_pButtonInvite = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonInvite )
g_pButtonInvite:SetName( "Invite" )
g_pButtonInvite:SetNormalTex( "DLG_UI_BUTTON08.tga", "Invite_Normal" )

g_pButtonInvite:SetOverTex( "DLG_UI_BUTTON08.tga", "Invite_OVER" )

g_pButtonInvite:SetDownTex( "DLG_UI_BUTTON08.tga", "Invite_OVER" )

g_pButtonInvite:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(59+7,22-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonInvite:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,17)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonInvite:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,17+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonInvite:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_PVP_INVITE"] )


-------------------------------------------      길드초대   -----------------------------------------------------

g_pButtonInviteGuild = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonInviteGuild )
g_pButtonInviteGuild:SetName( "InviteGuild" )
g_pButtonInviteGuild:SetNormalTex( "DLG_UI_BUTTON14.tga", "Guild_Invite_Normal" )

g_pButtonInviteGuild:SetOverTex( "DLG_UI_BUTTON14.tga", "Guild_Invite_OVER" )

g_pButtonInviteGuild:SetDownTex( "DLG_UI_BUTTON14.tga", "Guild_Invite_OVER" )

g_pButtonInviteGuild:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(60-8,46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonInviteGuild:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,42)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonInviteGuild:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,42+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonInviteGuild:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_INVITE_GUILD_MEMBER"] )

-------------------------------------------      길드추방   -----------------------------------------------------

g_pButtonBanish = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonBanish )
g_pButtonBanish:SetName( "BanishGuild" )
g_pButtonBanish:SetNormalTex( "DLG_UI_BUTTON14.tga", "Guild_Banish_Normal" )

g_pButtonBanish:SetOverTex( "DLG_UI_BUTTON14.tga", "Guild_Banish_OVER" )

g_pButtonBanish:SetDownTex( "DLG_UI_BUTTON14.tga", "Guild_Banish_OVER" )

g_pButtonBanish:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(60-14,46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBanish:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,42)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBanish:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,42+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonBanish:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_KICK_GUILD_MEMBER"] )

-------------------------------------------      모니터링   -----------------------------------------------------

g_pButtonBanish = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonBanish )
g_pButtonBanish:SetName( "Menu_Image" )
g_pButtonBanish:SetNormalTex( "DLG_UI_Button20.tga", "image" )

g_pButtonBanish:SetOverTex( "DLG_UI_Button20.tga", "image" )

g_pButtonBanish:SetDownTex( "DLG_UI_Button20.tga", "image" )

g_pButtonBanish:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(13,42)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBanish:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,42)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBanish:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,42+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonBanish:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_USERMENU_IMAGE"] )

g_pButtonBanish = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonBanish )
g_pButtonBanish:SetName( "Menu_Brick" )
g_pButtonBanish:SetNormalTex( "DLG_UI_Button20.tga", "brick" )

g_pButtonBanish:SetOverTex( "DLG_UI_Button20.tga", "brick" )

g_pButtonBanish:SetDownTex( "DLG_UI_Button20.tga", "brick" )

g_pButtonBanish:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(13,42)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBanish:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,42)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBanish:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,42+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonBanish:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_USERMENU_USER_BLOCK"] )

g_pButtonBanish = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonBanish )
g_pButtonBanish:SetName( "Menu_Machine_Brick" )
g_pButtonBanish:SetNormalTex( "DLG_UI_Button20.tga", "machine_brick" )

g_pButtonBanish:SetOverTex( "DLG_UI_Button20.tga", "machine_brick" )

g_pButtonBanish:SetDownTex( "DLG_UI_Button20.tga", "machine_brick" )

g_pButtonBanish:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(13,42)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBanish:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,42)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBanish:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,42+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonBanish:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_USERMENU_MACHINE_BLOCK"] )

--[[ #define ADDED_RELATIONSHIP_SYSTEM
------------------------------------------------------ 커플 신청 -----------------------------------------------------

g_pButtonInvite = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonInvite )
g_pButtonInvite:SetName( "couple" )
g_pButtonInvite:SetNormalTex( "DLG_UI_Common_Texture_MarriageSystem_04.tga", "Bt_Marriage_Couple_Normal" )

g_pButtonInvite:SetOverTex( "DLG_UI_Common_Texture_MarriageSystem_04.tga", "Bt_Marriage_Couple_Over" )

g_pButtonInvite:SetDownTex( "DLG_UI_Common_Texture_MarriageSystem_04.tga", "Bt_Marriage_Couple_Over" )

g_pButtonInvite:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(59,22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonInvite:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,17)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonInvite:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,17+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonInvite:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_INVITE_COUPLE"] )



------------------------------------------------------ 커플 소환하기 -----------------------------------------------------

g_pButtonSummon = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSummon )
g_pButtonSummon:SetName( "summon" )
g_pButtonSummon:SetNormalTex( "DLG_UI_Common_Texture_MarriageSystem_04.tga", "Bt_Marriage_Summon_Normal" )
g_pButtonSummon:SetOverTex( "DLG_UI_Common_Texture_MarriageSystem_04.tga", "Bt_Marriage_Summon_Over" )
g_pButtonSummon:SetDownTex( "DLG_UI_Common_Texture_MarriageSystem_04.tga", "Bt_Marriage_Summon_Over" )

g_pButtonSummon:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(60,22)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSummon:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,17)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSummon:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,17+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSummon:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_SUMMON_COUPLE"] )
--]]


