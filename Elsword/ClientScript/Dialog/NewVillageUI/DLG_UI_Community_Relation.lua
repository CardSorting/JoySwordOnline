-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )

g_pUIDialog:AddDummyPos( D3DXVECTOR3( 31 , 145, 0 ) ) -- 유저1  ---  31 , 145
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 31 , 176, 0 ) ) -- 유저2  ---  31 , 176

g_pStaticRelation = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRelation )
g_pStaticRelation:SetName( "Relation" )


g_pUIDialog:AddDummyPos( D3DXVECTOR3( 300, -150, 0.8 ) ) -- 화면 중앙을 기준으로 한 왼쪽 유닛의 뷰어 위치
g_pUIDialog:AddDummyPos( D3DXVECTOR3( -250000, 50000, -500000 ) ) -- 유닛뷰어에 적용될 LightPos


----- 길드네임박스

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticRelation:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )

g_pPicture_box:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(26,92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticRelation:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )

g_pPicture_box:SetPoint
{
     ADD_SIZE_X = 140,
	"LEFT_TOP		= D3DXVECTOR2(31,92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStaticRelation:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )

g_pPicture_box:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(172,92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





-------------------------BAR

g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticRelation:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
     ADD_SIZE_X = 260,
	"LEFT_TOP		= D3DXVECTOR2(27,117)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line2 = g_pUIDialog:CreatePicture()
g_pStaticRelation:AddPicture( g_pPicture_line2 )

g_pPicture_line2:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line2:SetPoint
{
     ADD_SIZE_X = 260,
	"LEFT_TOP		= D3DXVECTOR2(27,138)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line3 = g_pUIDialog:CreatePicture()
g_pStaticRelation:AddPicture( g_pPicture_line3 )

g_pPicture_line3:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line3:SetPoint
{
     ADD_SIZE_X = 155-11,
	"LEFT_TOP		= D3DXVECTOR2(27,169)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line4 = g_pUIDialog:CreatePicture()
g_pStaticRelation:AddPicture( g_pPicture_line4 )

g_pPicture_line4:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line4:SetPoint
{
     ADD_SIZE_X = 99+11,
	"LEFT_TOP		= D3DXVECTOR2(188-11,169)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line5 = g_pUIDialog:CreatePicture()
g_pStaticRelation:AddPicture( g_pPicture_line5 )

g_pPicture_line5:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line5:SetPoint
{
     ADD_SIZE_X = 155-11,
	"LEFT_TOP		= D3DXVECTOR2(27,200)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line6 = g_pUIDialog:CreatePicture()
g_pStaticRelation:AddPicture( g_pPicture_line6 )

g_pPicture_line6:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line6:SetPoint
{
     ADD_SIZE_X = 99+11,
	"LEFT_TOP		= D3DXVECTOR2(188-11,200)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_line7 = g_pUIDialog:CreatePicture()
g_pStaticRelation:AddPicture( g_pPicture_line7 )

g_pPicture_line7:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line7:SetPoint
{
     ADD_SIZE_Y = 14,
	"LEFT_TOP		= D3DXVECTOR2(185-10,121)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line8 = g_pUIDialog:CreatePicture()
g_pStaticRelation:AddPicture( g_pPicture_line8 )

g_pPicture_line8:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_line8:SetPoint
{
     ADD_SIZE_Y = 60,
	"LEFT_TOP		= D3DXVECTOR2(185-10,140)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}

---------------------분류

g_pStaticRelationInfoType = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRelationInfoType )
g_pStaticRelationInfoType:SetName( "GuildInfoType" )
-------------------------------------------------------  닉네임

g_pPicture_nickname = g_pUIDialog:CreatePicture()
g_pStaticRelationInfoType:AddPicture( g_pPicture_nickname )

g_pPicture_nickname:SetTex( "DLG_UI_Title01.TGA", "nickname" )

g_pPicture_nickname:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(58,122)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}



-------------------------------------------------위치

g_pPicture_state = g_pUIDialog:CreatePicture()
g_pStaticRelationInfoType:AddPicture( g_pPicture_state )

g_pPicture_state:SetTex( "DLG_UI_Title01.TGA", "POSITION" )

g_pPicture_state:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(204-10,122)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


-------------------------------------------------등급

g_pPicture_state = g_pUIDialog:CreatePicture()
g_pStaticRelationInfoType:AddPicture( g_pPicture_state )

g_pPicture_state:SetTex( "DLG_UI_Title01.TGA", "RANK" )

g_pPicture_state:SetShow( false )

g_pPicture_state:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(204-10,122)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}





--------------- 커플 상태, 지속 시간


g_pStatic_Couple_State = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Couple_State )
g_pStatic_Couple_State:SetName( "couple_state" )


g_pStatic_Couple_State:AddString
{
--	MSG 			= "WWWWWWWWWWWWWW",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],	
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(32+1,96+1)",
	"COLOR			= D3DXCOLOR(0.960,0.623,0.094,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.3,1.0)",
}

g_pStatic_Couple_State:AddString
{
--	MSG 			= "WWWWWWWWWWWWWW",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],	
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(153,96)",
	"COLOR			= D3DXCOLOR(0.960,0.623,0.094,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.3,1.0)",
}



 
-----------------------------------           캐릭터 뷰  1                  ---------------------------------------


g_pStatic_name1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name1 )
g_pStatic_name1:SetName( "name1" )

g_pStatic_name1:AddString
{
	-- MSG 			= "길어도여섯자",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(59,149)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


---------------------------등급 or 위치

g_pStatic_state1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_state1 )
g_pStatic_state1:SetName( "state1" )

g_pStatic_state1:AddString
{
	MSG 			= STR_ID_1260,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(181,149)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

---------------------------채널

g_pStatic_state1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_state1 )
g_pStatic_state1:SetName( "channel1" )

g_pStatic_state1:AddString
{
	MSG 			= STR_ID_1260,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(241,149)",
	"COLOR			= D3DXCOLOR(0.0,0.7,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}




----------------------------------------         캐릭터 뷰  2             ----------------------------




g_pStatic_name2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name2 )
g_pStatic_name2:SetName( "name2" )

g_pStatic_name2:AddString
{
	-- MSG 			= "길어도여섯자",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(59,178)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



---------------------------등급 or 위치

g_pStatic_state2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_state2 )
g_pStatic_state2:SetName( "state2" )

g_pStatic_state2:AddString
{
	MSG 			= STR_ID_106,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(181,178)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


---------------------------채널

g_pStatic_state2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_state2 )
g_pStatic_state2:SetName( "channel2" )

g_pStatic_state2:AddString
{
	MSG 			= STR_ID_106,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(241,178)",
	"COLOR			= D3DXCOLOR(0.0,0.7,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}





----------------------------------------------------------------------------------------
-------------------   캐릭터 리스트 각 투명 버튼 ------------------------------

------------------ 캐릭터 1 투명 버튼 ---------------------------------

g_pButtonUser1= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUser1)
g_pButtonUser1:SetName( "User1" )
g_pButtonUser1:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonUser1:SetOverTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser1:SetDownTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser1:SetNormalPoint
{
	  ADD_SIZE_X = 155 - 10,
     ADD_SIZE_Y = 25,
    "LEFT_TOP		= D3DXVECTOR2(26,141)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser1:SetOverPoint
{
    ADD_SIZE_X = 2 - 10,
	"LEFT_TOP		= D3DXVECTOR2(26,141)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser1:SetDownPoint
{
     ADD_SIZE_X = -10,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(26+1,141+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser1:AddDummyInt(1)
--g_pButtonUser1:AddDummyInt(0)		-- 유저닉네임을 클릭 했다는 구분 용도로 사용
g_pButtonUser1:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_L_UP"] )
g_pButtonUser1:SetCustomMsgMouseRightUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_R_UP"] )
g_pButtonUser1:SetShow (false)
------------------------------------ 캐릭터 2 투명 버튼 ------------------------------------------

g_pButtonUser2= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUser2)
g_pButtonUser2:SetName( "User2" )
g_pButtonUser2:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonUser2:SetOverTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser2:SetDownTex( "DLG_UI_BUTTON10.tga", "user_click" )

g_pButtonUser2:SetNormalPoint
{
	  ADD_SIZE_X = 155 - 10,
     ADD_SIZE_Y = 25,
    "LEFT_TOP		= D3DXVECTOR2(26,172)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser2:SetOverPoint
{
     ADD_SIZE_X = 2 - 10,
	"LEFT_TOP		= D3DXVECTOR2(26,172)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser2:SetDownPoint
{
      ADD_SIZE_X = -10,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(26+1,172+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser2:AddDummyInt(2)
--g_pButtonUser2:AddDummyInt(0)		-- 유저닉네임을 클릭 했다는 구분 용도로 사용
g_pButtonUser2:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_L_UP"] )
g_pButtonUser2:SetCustomMsgMouseRightUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_MOUSE_R_UP"] )
g_pButtonUser2:SetShow (false)


--------------------------         하단  버튼    -------------------------------

-------------프로포즈
g_pButtonPropose = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonPropose )
g_pButtonPropose:SetName( "Button_Propose" )
g_pButtonPropose:SetNormalTex( "DLG_UI_Common_Texture_MarriageSystem_01.tga", "Bt_Propose_Normal" )

g_pButtonPropose:SetOverTex( "DLG_UI_Common_Texture_MarriageSystem_01.tga", "Bt_Propose_Over" )

g_pButtonPropose:SetDownTex( "DLG_UI_Common_Texture_MarriageSystem_01.tga", "Bt_Propose_Over" )

g_pButtonPropose:SetDisableTex( "DLG_UI_Common_Texture_MarriageSystem_01.tga", "Bt_Propose_Gray" )

g_pButtonPropose:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(19,427)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPropose:SetOverPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(19,427)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPropose:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(19+1,427+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonPropose:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(19,427)",
        "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPropose:SetCustomMsgMouseUp( RELATIONSHIP_UI_MESSAGE["RUM_RELATIONSHIP_PROPOSE"] )
g_pButtonPropose:SetShow (false)

-------------소환하기
g_pButtonTeleport = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonTeleport )
g_pButtonTeleport:SetName( "Button_Teleport" )
g_pButtonTeleport:SetNormalTex( "DLG_UI_Common_Texture_MarriageSystem_01.tga", "Bt_SummonPartner_Normal" )

g_pButtonTeleport:SetOverTex( "DLG_UI_Common_Texture_MarriageSystem_01.tga", "Bt_SummonPartner_Over" )

g_pButtonTeleport:SetDownTex( "DLG_UI_Common_Texture_MarriageSystem_01.tga", "Bt_SummonPartner_Over" )

g_pButtonTeleport:SetDisableTex( "DLG_UI_Common_Texture_MarriageSystem_01.tga", "Bt_SummonPartner_Normal" )

g_pButtonTeleport:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(19,427)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonTeleport:SetOverPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(19,427)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonTeleport:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(19+1,427+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonTeleport:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(19,427)",
        "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonTeleport:SetCustomMsgMouseUp( X2_COMMUNITY_CUSTOM_UI_MSG["XCCUM_SUMMON_COUPLE"] )
g_pButtonTeleport:SetShow (false)


-------------길드정보

g_pButtonKick = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonKick )
g_pButtonKick:SetName( "Button_Kick" )
g_pButtonKick:SetNormalTex( "DLG_UI_Common_Texture_MarriageSystem_01.tga", "Bt_BrokenHeart_Normal" )

g_pButtonKick:SetOverTex( "DLG_UI_Common_Texture_MarriageSystem_01.tga", "Bt_BrokenHeart_Over" )

g_pButtonKick:SetDownTex( "DLG_UI_Common_Texture_MarriageSystem_01.tga", "Bt_BrokenHeart_Over" )

g_pButtonKick:SetDisableTex( "DLG_UI_Common_Texture_MarriageSystem_01.tga", "Bt_BrokenHeart_Gray" )

g_pButtonKick:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(233,427)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonKick:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(233,427)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonKick:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(233+1,427+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonKick:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(233,427)",
        "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonKick:SetCustomMsgMouseUp( RELATIONSHIP_UI_MESSAGE["RUM_RELATIONSHIP_FAREWELL"] )
g_pButtonKick:SetShow (false)



g_pButtonRefresh = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonRefresh )
g_pButtonRefresh:SetName( "Return" )
g_pButtonRefresh:SetNormalTex( "DLG_UI_BUTTON10.tga", "return_normal" )

g_pButtonRefresh:SetOverTex( "DLG_UI_BUTTON10.tga", "return_over" )

g_pButtonRefresh:SetDownTex( "DLG_UI_BUTTON10.tga", "return_over" )

g_pButtonRefresh:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(213,89)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRefresh:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(213,89)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRefresh:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(213+1,89+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRefresh:SetCustomMsgMouseUp( RELATIONSHIP_UI_MESSAGE["RUM_RELATIONSHIP_REFRESH_DATA"] )


