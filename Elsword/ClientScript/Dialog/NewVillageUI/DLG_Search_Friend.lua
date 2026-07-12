-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetName( "DLG_Search_Friend" )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetPos( 355, 234 )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_SEARCH_FRIEND_RESULT_CLOSE"] )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 36, 111, 0 ) ) ----캐릭터 얼굴 아이콘 위치

g_pStatic_Search = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Search )
g_pStatic_Search:SetName( "Search" )

---------BG

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStatic_Search:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture03.TGA", "community_bg1_top" )

g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStatic_Search:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture03.TGA", "community_bg1_middle" )

g_pPicture_bg:SetPoint
{
    ADD_SIZE_Y = 193,
	"LEFT_TOP		= D3DXVECTOR2(0,13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStatic_Search:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture03.TGA", "community_bg1_bottom" )

g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,207)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-------BG2


g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStatic_Search:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "community_bg2_top" )

g_pPicture_bg2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(14,45)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStatic_Search:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "community_bg2_middle" )

g_pPicture_bg2:SetPoint
{
    ADD_SIZE_Y = 142,
	"LEFT_TOP		= D3DXVECTOR2(14,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStatic_Search:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "community_bg2_bottom" )

g_pPicture_bg2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(14,196)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




----------------TITLE

g_pPicture_title = g_pUIDialog:CreatePicture()
g_pStatic_Search:AddPicture( g_pPicture_title )

g_pPicture_title:SetTex( "DLG_UI_Title02_B.tga", "Search" )

g_pPicture_title:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(14,12)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



-------BG3


g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStatic_Search:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture03.TGA", "community_bg3_top" )

g_pPicture_bg3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(19,82-32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStatic_Search:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture03.TGA", "community_bg3_middle" )

g_pPicture_bg3:SetPoint
{
    ADD_SIZE_Y = 81,
	"LEFT_TOP		= D3DXVECTOR2(19,91-32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStatic_Search:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture03.TGA", "community_bg3_bottom" )

g_pPicture_bg3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(19,141)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




--------- exit 버튼

g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Cashshop_BuyWindow_Exit" )
g_pButtonX:SetNormalTex( "DLG_UI_BUTTON01.tga", "EXIT_NORMAL" )

g_pButtonX:SetOverTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetDownTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(277,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(273,11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(273+1,11+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_SEARCH_FRIEND_RESULT_CLOSE"] )



--------------------------------------내용-------------------------------------------------



g_pStatic_Search = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Search )
g_pStatic_Search:SetName( "whole" )


----- 채널박스

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStatic_Search:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )

g_pPicture_box:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(26,92-34)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStatic_Search:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )

g_pPicture_box:SetPoint
{
     ADD_SIZE_X = 170,
	"LEFT_TOP		= D3DXVECTOR2(31,92-34)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStatic_Search:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )

g_pPicture_box:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(202,92-34)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



------ 채널

g_pPicture_ch = g_pUIDialog:CreatePicture()
g_pStatic_Search:AddPicture( g_pPicture_ch )

g_pPicture_ch:SetTex( "DLG_UI_Title01.TGA", "ch" )

g_pPicture_ch:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(31,97-34)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--------------- 마을 이름, 채널


g_pStatic_name = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name )
g_pStatic_name:SetName( "Static_channel_name" )

g_pStatic_name:AddString
{
	-- MSG 			= "",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(61,96-34)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}




-------------------------BAR

g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStatic_Search:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
     ADD_SIZE_X = 260,
	"LEFT_TOP		= D3DXVECTOR2(27,117-34)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line2 = g_pUIDialog:CreatePicture()
g_pStatic_Search:AddPicture( g_pPicture_line2 )

g_pPicture_line2:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line2:SetPoint
{
     ADD_SIZE_X = 260,
	"LEFT_TOP		= D3DXVECTOR2(27,138-34)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}





g_pPicture_line3 = g_pUIDialog:CreatePicture()
g_pStatic_Search:AddPicture( g_pPicture_line3 )

g_pPicture_line3:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line3:SetPoint
{
     ADD_SIZE_X = 260,
	"LEFT_TOP		= D3DXVECTOR2(27,169-34)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_line4 = g_pUIDialog:CreatePicture()
g_pStatic_Search:AddPicture( g_pPicture_line4 )

g_pPicture_line4:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line4:SetPoint
{
     ADD_SIZE_Y = 14,
	"LEFT_TOP		= D3DXVECTOR2(185,121-34)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}




g_pPicture_line5 = g_pUIDialog:CreatePicture()
g_pStatic_Search:AddPicture( g_pPicture_line5 )

g_pPicture_line5:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line5:SetPoint
{
     ADD_SIZE_Y = 25,
	"LEFT_TOP		= D3DXVECTOR2(185,141-34)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


---------------------분류
-------------------------------------------------------  닉네임

g_pPicture_nickname = g_pUIDialog:CreatePicture()
g_pStatic_Search:AddPicture( g_pPicture_nickname )

g_pPicture_nickname:SetTex( "DLG_UI_Title01_A.TGA", "nickname" )

g_pPicture_nickname:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(58,122-34)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

-------------------------------------------------상태


g_pPicture_state = g_pUIDialog:CreatePicture()
g_pStatic_Search:AddPicture( g_pPicture_state )

g_pPicture_state:SetTex( "DLG_UI_Title01_A.TGA", "STATE" )

g_pPicture_state:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(204,122-34)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}



-----------------------------------           캐릭터 뷰  1                  ---------------------------------------

g_pStatic_name1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name1 )
g_pStatic_name1:SetName( "Static_NickName" )

g_pStatic_name1:AddString
{
	-- MSG 			= "길어도여섯자",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(59,149-34)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


---------------------------상태


g_pStatic_state1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_state1 )
g_pStatic_state1:SetName( "Static_State" )

g_pStatic_state1:AddString
{
	-- MSG 			= STR_ID_1263,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(200 - 4,149-34)",
	"COLOR			= D3DXCOLOR(0.0,0.7,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}








-------------------   캐릭터 리스트 각 투명 버튼 


--[[
g_pButtonUser1= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUser1)
g_pButtonUser1:SetName( "User1" )
g_pButtonUser1:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonUser1:SetOverTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser1:SetDownTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser1:SetNormalPoint
{
	  ADD_SIZE_X = 155,
     ADD_SIZE_Y = 25,
    "LEFT_TOP		= D3DXVECTOR2(26,141-34)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser1:SetOverPoint
{
    ADD_SIZE_X = 2,
	"LEFT_TOP		= D3DXVECTOR2(26,141-34)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser1:SetDownPoint
{
     
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(26+1,141+1-34)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser1:AddDummyInt(1)
g_pButtonUser1:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_L_UP"] )
g_pButtonUser1:SetCustomMsgMouseRightUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_R_UP"] )
--]]






--------------------------         하단  버튼 (일반)     -------------------------------

-------------친구추가



g_pButtonFriend_add = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonFriend_add )
g_pButtonFriend_add:SetName( "Button_Friend_add" )
g_pButtonFriend_add:SetNormalTex( "DLG_UI_Button10.tga", "add_Normal" )

g_pButtonFriend_add:SetOverTex( "DLG_UI_Button10.tga", "add_over" )

g_pButtonFriend_add:SetDownTex( "DLG_UI_Button10.tga", "add_over" )

g_pButtonFriend_add:SetDisableTex( "DLG_UI_Common_Texture09.tga", "add_noactive" )

g_pButtonFriend_add:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(19+3,427-276)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonFriend_add:SetOverPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(19+3,427-276)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonFriend_add:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(19+3+1,427+1-276)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonFriend_add:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(19+3,427-276)",
        "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pButtonFriend_add:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_SEARCH_FRIEND_RESULT_ADD_FRIEND"] )




-------------채널이동

g_pButtonMove = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMove )
g_pButtonMove:SetName( "Button_Channel_Move" )
g_pButtonMove:SetNormalTex( "DLG_UI_BUTTON10.tga", "Move_normal" )

g_pButtonMove:SetOverTex( "DLG_UI_BUTTON10.tga", "Move_over" )

g_pButtonMove:SetDownTex( "DLG_UI_BUTTON10.tga", "Move_over" )

g_pButtonMove:SetDisableTex( "DLG_UI_Common_Texture09.tga", "Move_NOACTIVE" )

g_pButtonMove:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(233-3,427-276)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMove:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(233-3,427-276)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMove:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(233-3+1,427+1-276)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonMove:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(233-3,427-276)",
        "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pButtonMove:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_SEARCH_FRIEND_RESULT_CHANNEL_MOVE"] )


-------------------------------- 하단 버튼 ( 필드 ) ------------------------


-------------파티초대

g_pButtonparty = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonparty )
g_pButtonparty:SetName( "Button_Party_Invnte" )
g_pButtonparty:SetNormalTex( "DLG_UI_BUTTON10.tga", "party_normal" )

g_pButtonparty:SetOverTex( "DLG_UI_BUTTON10.tga", "party_over" )

g_pButtonparty:SetDownTex( "DLG_UI_BUTTON10.tga", "party_over" )

g_pButtonparty:SetDisableTex( "DLG_UI_Common_Texture09.tga", "party_noactive" )

g_pButtonparty:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(91+1,427-276)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonparty:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(91+1,427-276)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonparty:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(91+1+1,427+1-276)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonparty:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(91+1,427-276)",
        "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pButtonparty:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_SEARCH_FRIEND_RESULT_PARTY_INVITE"] )



-------------파티요청

g_pButtonparty_demand = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonparty_demand )
g_pButtonparty_demand:SetName( "Button_Party_Request" )
g_pButtonparty_demand:SetNormalTex( "DLG_UI_BUTTON10.tga", "party_demand_normal" )

g_pButtonparty_demand:SetOverTex( "DLG_UI_BUTTON10.tga", "party_demand_over" )

g_pButtonparty_demand:SetDownTex( "DLG_UI_BUTTON10.tga", "party_demand_over" )

g_pButtonparty_demand:SetDisableTex( "DLG_UI_Common_Texture09.tga", "party_demand_noactive" )

g_pButtonparty_demand:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(162-1,427-276)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonparty_demand:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(162-1,427-276)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonparty_demand:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(162-1+1,427+1-276)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pButtonparty_demand:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(162-1,427-276)",
        "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pButtonparty_demand:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_SEARCH_FRIEND_RESULT_PARTY_REQUEST"] )




--------------------------         하단  버튼 (대전)     -------------------------------


-------------초대하기

g_pButtonInvite = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonInvite )
g_pButtonInvite:SetName( "Button_PVP_Invite" )
g_pButtonInvite:SetNormalTex( "DLG_UI_BUTTON10.tga", "Invite_normal" )

g_pButtonInvite:SetOverTex( "DLG_UI_BUTTON10.tga", "Invite_over" )

g_pButtonInvite:SetDownTex( "DLG_UI_BUTTON10.tga", "Invite_over" )

g_pButtonInvite:SetDisableTex( "DLG_UI_Common_Texture09.tga", "Invite_noactive" )

g_pButtonInvite:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(91+1,427-276)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonInvite:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(91+1,427-276)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonInvite:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(91+1+1,427+1-276)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonInvite:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(91+1,427-276)",
        "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pButtonInvite:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_SEARCH_FRIEND_RESULT_PVP_INVITE"] )



-------------같이하기

g_pButtonparty_demand = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonparty_demand )
g_pButtonparty_demand:SetName( "Button_PVP_Together" )
g_pButtonparty_demand:SetNormalTex( "DLG_UI_BUTTON10.tga", "Together_normal" )

g_pButtonparty_demand:SetOverTex( "DLG_UI_BUTTON10.tga", "Together_over" )

g_pButtonparty_demand:SetDownTex( "DLG_UI_BUTTON10.tga", "Together_over" )

g_pButtonparty_demand:SetDisableTex( "DLG_UI_Common_Texture09.tga", "Together_noactive" )

g_pButtonparty_demand:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(162-1,427-276)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonparty_demand:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(162-1,427-276)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonparty_demand:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(162-1+1,427+1-276)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pButtonparty_demand:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(162-1,427-276)",
        "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pButtonparty_demand:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_SEARCH_FRIEND_RESULT_PVP_PLAYTOGETHER"] )


