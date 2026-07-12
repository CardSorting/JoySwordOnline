-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
--g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_MESSENGER"] )




------------------------- ----



g_pStaticdisciple = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticdisciple )
g_pStaticdisciple:SetName( "disciple" )



-------------------------BAR

g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticdisciple:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
     ADD_SIZE_X = 260,
	"LEFT_TOP		= D3DXVECTOR2(27,118)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line2 = g_pUIDialog:CreatePicture()
g_pStaticdisciple:AddPicture( g_pPicture_line2 )

g_pPicture_line2:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line2:SetPoint
{
     ADD_SIZE_X = 260,
	"LEFT_TOP		= D3DXVECTOR2(27,138)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line3 = g_pUIDialog:CreatePicture()
g_pStaticdisciple:AddPicture( g_pPicture_line3 )

g_pPicture_line3:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line3:SetPoint
{
     ADD_SIZE_X = 141,
	"LEFT_TOP		= D3DXVECTOR2(27,169)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line4 = g_pUIDialog:CreatePicture()
g_pStaticdisciple:AddPicture( g_pPicture_line4 )

g_pPicture_line4:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line4:SetPoint
{
     ADD_SIZE_X = 118,
	"LEFT_TOP		= D3DXVECTOR2(174,169)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line5 = g_pUIDialog:CreatePicture()
g_pStaticdisciple:AddPicture( g_pPicture_line5 )

g_pPicture_line5:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line5:SetPoint
{
     ADD_SIZE_X = 141 ,
	"LEFT_TOP		= D3DXVECTOR2(27,200)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line6 = g_pUIDialog:CreatePicture()
g_pStaticdisciple:AddPicture( g_pPicture_line6 )

g_pPicture_line6:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line6:SetPoint
{
     ADD_SIZE_X = 118,
	"LEFT_TOP		= D3DXVECTOR2(174,200)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}




g_pPicture_line17 = g_pUIDialog:CreatePicture()
g_pStaticdisciple:AddPicture( g_pPicture_line17 )

g_pPicture_line17:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line17:SetPoint
{
     ADD_SIZE_X = 260,
	"LEFT_TOP		= D3DXVECTOR2(27,231)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_line18 = g_pUIDialog:CreatePicture()
g_pStaticdisciple:AddPicture( g_pPicture_line18 )

g_pPicture_line18:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line18:SetPoint
{
     ADD_SIZE_Y = 14,
	"LEFT_TOP		= D3DXVECTOR2(171,121)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line19 = g_pUIDialog:CreatePicture()
g_pStaticdisciple:AddPicture( g_pPicture_line19 )

g_pPicture_line19:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line19:SetPoint
{
     ADD_SIZE_Y = 90,
	"LEFT_TOP		= D3DXVECTOR2(171,140)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}



---------------------분류

g_pPicture_lv = g_pUIDialog:CreatePicture()
g_pStaticdisciple:AddPicture( g_pPicture_lv )

g_pPicture_lv:SetTex( "DLG_UI_Title02.TGA", "lv" )

g_pPicture_lv:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(43,123)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}




-------------------------------------------------------  닉테임

g_pPicture_nickname = g_pUIDialog:CreatePicture()
g_pStaticdisciple:AddPicture( g_pPicture_nickname )

g_pPicture_nickname:SetTex( "DLG_UI_Title01_A.TGA", "nickname" )

g_pPicture_nickname:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(96,123)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

-------------------------------------------------상태


g_pPicture_state = g_pUIDialog:CreatePicture()
g_pStaticdisciple:AddPicture( g_pPicture_state )

g_pPicture_state:SetTex( "DLG_UI_Title01_A.TGA", "STATE" )

g_pPicture_state:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(217,123)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}






g_pStatic_User1_lv = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_User1_lv )
g_pStatic_User1_lv:SetName( "User1_lv" )

g_pStatic_User1_lv:AddString
{
	-- MSG 			= "Lv.99",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,149)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



g_pStatic_name1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name1 )
g_pStatic_name1:SetName( "name1" )

g_pStatic_name1:AddString
{
	-- MSG 			= "길어도여섯자",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(78,149)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


---------------------------상태


g_pStatic_state1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_state1 )
g_pStatic_state1:SetName( "state1" )

g_pStatic_state1:AddString
{
	MSG 			= STR_ID_1254,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,

	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(232,149)",
	"COLOR			= D3DXCOLOR(0.0,0.7,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}







g_pStatic_User2_lv = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_User2_lv )
g_pStatic_User2_lv:SetName( "User2_lv" )

g_pStatic_User2_lv:AddString
{
	-- MSG 			= "Lv.99",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,178)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



g_pStatic_name2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name2 )
g_pStatic_name2:SetName( "name2" )

g_pStatic_name2:AddString
{
	-- MSG 			= "길어도여섯자",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(78,178)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


---------------------------상태


g_pStatic_state2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_state2 )
g_pStatic_state2:SetName( "state2" )

g_pStatic_state2:AddString
{
	MSG 			= STR_ID_1255,
	FONT_INDEX		= XUF_DODUM_11_NORAML,

	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(232,178)",
	"COLOR			= D3DXCOLOR(0.0,0.7,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}











g_pStatic_User3_lv = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_User3_lv )
g_pStatic_User3_lv:SetName( "User3_lv" )

g_pStatic_User3_lv:AddString
{
	-- MSG 			= "Lv.99",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,211)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}






g_pStatic_name3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name3 )
g_pStatic_name3:SetName( "name3" )

g_pStatic_name3:AddString
{
	-- MSG 			= "길어도여섯자",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(78,211)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


---------------------------상태


g_pStatic_state3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_state3 )
g_pStatic_state3:SetName( "state3" )

g_pStatic_state3:AddString
{
	MSG 			= STR_ID_1256,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,

	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(232,211)",
	"COLOR			= D3DXCOLOR(0.0,0.7,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}











-------------------   사제 리스트 각 투명 버튼 



g_pButtonUser1= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUser1)
g_pButtonUser1:SetName( "Square_User_List0" )
g_pButtonUser1:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonUser1:SetOverTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser1:SetDownTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser1:SetNormalPoint
{
	  ADD_SIZE_X = 140,
     ADD_SIZE_Y = 25,
    "LEFT_TOP		= D3DXVECTOR2(26,141)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser1:SetOverPoint
{
    ADD_SIZE_X = -13,
	"LEFT_TOP		= D3DXVECTOR2(26,141)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser1:SetDownPoint
{
      ADD_SIZE_X = -15,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(26+1,141+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonUser1:AddDummyInt(1)
g_pButtonUser1:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_L_UP"] )
g_pButtonUser1:SetCustomMsgMouseRightUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_R_UP"] )


g_pButtonUser2= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUser2)
g_pButtonUser2:SetName( "Square_User_List1" )
g_pButtonUser2:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonUser2:SetOverTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser2:SetDownTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser2:SetNormalPoint
{
	  ADD_SIZE_X = 140,
     ADD_SIZE_Y = 25,
    "LEFT_TOP		= D3DXVECTOR2(26,172)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser2:SetOverPoint
{
    ADD_SIZE_X = -13,
	"LEFT_TOP		= D3DXVECTOR2(26,172)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser2:SetDownPoint
{
      ADD_SIZE_X = -15,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(26+1,172+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonUser2:AddDummyInt(2)
g_pButtonUser2:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_L_UP"] )
g_pButtonUser2:SetCustomMsgMouseRightUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_R_UP"] )


g_pButtonUser3= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUser3)
g_pButtonUser3:SetName( "Square_User_List2" )
g_pButtonUser3:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonUser3:SetOverTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser3:SetDownTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser3:SetNormalPoint
{
	  ADD_SIZE_X = 140,
     ADD_SIZE_Y = 25,
    "LEFT_TOP		= D3DXVECTOR2(26,203)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser3:SetOverPoint
{
    ADD_SIZE_X = -13,
	"LEFT_TOP		= D3DXVECTOR2(26,203)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser3:SetDownPoint
{
      ADD_SIZE_X = -15,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(26+1,203+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonUser3:AddDummyInt(3)
g_pButtonUser3:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_L_UP"] )
g_pButtonUser3:SetCustomMsgMouseRightUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_R_UP"] )














--------------------------         하단  버튼        -------------------------------

-------------친구맺기



g_pButtonfriend_add = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonfriend_add )
g_pButtonfriend_add:SetName( "friend_add" )
g_pButtonfriend_add:SetNormalTex( "DLG_UI_BUTTON10.tga", "friend_add_normal" )

g_pButtonfriend_add:SetOverTex( "DLG_UI_BUTTON10.tga", "friend_add_over" )

g_pButtonfriend_add:SetDownTex( "DLG_UI_BUTTON10.tga", "friend_add_over" )

g_pButtonfriend_add:SetDisableTex( "DLG_UI_Common_Texture09.tga", "friend_add_noactive" )

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


g_pButtonfriend_add:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(19,427)",
        "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pButtonfriend_add:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_SEARCH_FRIEND_OPEN"] )






-------------사제끊기



g_pButtondisciple_cut = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtondisciple_cut )
g_pButtondisciple_cut:SetName( "disciple_cut" )
g_pButtondisciple_cut:SetNormalTex( "DLG_UI_BUTTON12.tga", "disciple_cut_normal" )

g_pButtondisciple_cut:SetOverTex( "DLG_UI_BUTTON12.tga", "disciple_cut_over" )

g_pButtondisciple_cut:SetDownTex( "DLG_UI_BUTTON12.tga", "disciple_cut_over" )

g_pButtondisciple_cut:SetDisableTex( "DLG_UI_Common_Texture09.tga", "disciple_cut_noactive" )

g_pButtondisciple_cut:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(91,427)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtondisciple_cut:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(91,427)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtondisciple_cut:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(91+1,427+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtondisciple_cut:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(91,427)",
        "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pButtondisciple_cut:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_DISCIPLE_CUT"] )












-------------새로 고침



g_pButtonReturn = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonReturn )
g_pButtonReturn:SetName( "Return" )
g_pButtonReturn:SetNormalTex( "DLG_UI_BUTTON10.tga", "return_normal" )

g_pButtonReturn:SetOverTex( "DLG_UI_BUTTON10.tga", "return_over" )

g_pButtonReturn:SetDownTex( "DLG_UI_BUTTON10.tga", "return_over" )

g_pButtonReturn:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(213,89)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonReturn:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(213,89)",	

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonReturn:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(213+1,89+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

