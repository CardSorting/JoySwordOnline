-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetName( "DLG_Create_PVP_Room" )
--g_pUIDialog:SetPos( 0, 0 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
--g_pUIDialog:SetEnableMoveByDrag( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( UI_PVP_LOBBY_CUSTOM_MSG["UPLCM_CREATEROOMDLG_EXIT"] )


g_pUIDialog:AddDummyInt( 4 )				-- 방 만들기에서 default 방이름 개수
g_pUIDialog:AddDummyString( STR_ID_4415 )
g_pUIDialog:AddDummyString( STR_ID_4416 )
g_pUIDialog:AddDummyString( STR_ID_4417 )
g_pUIDialog:AddDummyString( STR_ID_4418 )
--g_pUIDialog:AddDummyString( "Test5" )
--g_pUIDialog:AddDummyString( "Test6" )



g_pStatic_make = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_make )
g_pStatic_make:SetName( "make" )

----------BG
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_make:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture03.TGA", "make_bg1_top" )

g_pPicture_bg1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(383,381-32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_make:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture03.TGA", "make_bg1_middle" )

g_pPicture_bg1:SetPoint
{
    ADD_SIZE_Y= 283+32,
	"LEFT_TOP		= D3DXVECTOR2(383,393-32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_make:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture03.TGA", "make_bg1_bottom" )

g_pPicture_bg1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(383,677)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



----------BG2
g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStatic_make:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "make_bg2_top" )

g_pPicture_bg2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(398,426-32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStatic_make:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "make_bg2_middle" )

g_pPicture_bg2:SetPoint
{
    ADD_SIZE_Y= 230+32-35,
	"LEFT_TOP		= D3DXVECTOR2(398,435-32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStatic_make:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "make_bg2_bottom" )

g_pPicture_bg2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(398,666-35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



----------BG3
g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStatic_make:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture03.TGA", "make_bg3_top" )

g_pPicture_bg3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(403,431-32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStatic_make:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture03.TGA", "make_bg3_middle" )

g_pPicture_bg3:SetPoint
{
    ADD_SIZE_Y= 186+32,
	"LEFT_TOP		= D3DXVECTOR2(403,440-32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStatic_make:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture03.TGA", "make_bg3_bottom" )

g_pPicture_bg3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(403,627)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



---------------TITLE

g_pPicture_title2 = g_pUIDialog:CreatePicture()
g_pStatic_make:AddPicture( g_pPicture_title2 )

g_pPicture_title2:SetTex( "DLG_UI_Title01.TGA", "room_make" )

g_pPicture_title2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(399,393-32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}









---------- 방이름


g_pStatic_name = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name )
g_pStatic_name:SetName( "name" )

g_pStatic_name:AddString
{
	MSG 			= STR_ID_991,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(413,445-32)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}





g_pPicture_name = g_pUIDialog:CreatePicture()
g_pStatic_make:AddPicture( g_pPicture_name )

g_pPicture_name:SetTex( "DLG_UI_Common_Texture01.TGA", "price_left" )

g_pPicture_name:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(458,440-32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_name = g_pUIDialog:CreatePicture()
g_pStatic_make:AddPicture( g_pPicture_name )

g_pPicture_name:SetTex( "DLG_UI_Common_Texture01.TGA", "price_middle" )

g_pPicture_name:SetPoint
{
    ADD_SIZE_X= 236,
	"LEFT_TOP		= D3DXVECTOR2(463,440-32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_name = g_pUIDialog:CreatePicture()
g_pStatic_make:AddPicture( g_pPicture_name )

g_pPicture_name:SetTex( "DLG_UI_Common_Texture01.TGA", "price_right" )

g_pPicture_name:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(700,440-32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


---------모드선택

g_pStatic_chois = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_chois )
g_pStatic_chois:SetName( "chois" )

g_pStatic_chois:AddString
{
	MSG 			= STR_ID_1354,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(414,476-32)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",



}








---------- 아이템




g_pStatic_Item = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Item )
g_pStatic_Item:SetName( "StaticItem" )

-- 중요 : AddString 순서 바꾸지 말 것!
g_pStatic_Item:AddString
{
	--MSG 			= "아이템전",
	MSG 			= STR_ID_4818,
	FONT_INDEX		=  XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(558,551-30 + 5-5)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pStatic_Item:AddString
{

	--MSG 			= "아이템",
	MSG 			= STR_ID_4808,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(416,551-30 + 5 - 5)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",


}

g_pPicture_Item = g_pUIDialog:CreatePicture()
g_pStatic_Item:AddPicture( g_pPicture_Item )

g_pPicture_Item:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )

g_pPicture_Item:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(506,547-30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Item = g_pUIDialog:CreatePicture()
g_pStatic_Item:AddPicture( g_pPicture_Item )

g_pPicture_Item:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )

g_pPicture_Item:SetPoint
{
    ADD_SIZE_X= 95,
	"LEFT_TOP		= D3DXVECTOR2(511,547-30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Item = g_pUIDialog:CreatePicture()
g_pStatic_Item:AddPicture( g_pPicture_Item )

g_pPicture_Item:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )

g_pPicture_Item:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(607,547-30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






---------- 킬수




g_pStatic_kill = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_kill )
g_pStatic_kill:SetName( "StaticKill" )

-- 중요 : AddString 순서 바꾸지 말 것!
g_pStatic_kill:AddString
{
	MSG 			= STR_ID_1355,
	FONT_INDEX		=  XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(558,551 + 5-5)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pStatic_kill:AddString
{
    MSG 			= STR_ID_1356,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(416,552 + 5 - 5)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",


}

g_pPicture_kill = g_pUIDialog:CreatePicture()
g_pStatic_kill:AddPicture( g_pPicture_kill )

g_pPicture_kill:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )

g_pPicture_kill:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(506,547)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_kill = g_pUIDialog:CreatePicture()
g_pStatic_kill:AddPicture( g_pPicture_kill )

g_pPicture_kill:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )

g_pPicture_kill:SetPoint
{
    ADD_SIZE_X= 95,
	"LEFT_TOP		= D3DXVECTOR2(511,547)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_kill = g_pUIDialog:CreatePicture()
g_pStatic_kill:AddPicture( g_pPicture_kill )

g_pPicture_kill:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )

g_pPicture_kill:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(607,547)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}







--------------시간


g_pStatic_time = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_time )
g_pStatic_time:SetName( "StaticTime" )


-- 중요 : AddString 순서 바꾸지 말 것
g_pStatic_time:AddString
{
	MSG 			= STR_ID_1357,
	FONT_INDEX		=  XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(558,581 + 5-6)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pStatic_time:AddString
{
	MSG 			= STR_ID_11513,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(416,581 + 5 - 6)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",


}



g_pPicture_time = g_pUIDialog:CreatePicture()
g_pStatic_time:AddPicture( g_pPicture_time )

g_pPicture_time:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )

g_pPicture_time:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(506,576)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_time = g_pUIDialog:CreatePicture()
g_pStatic_time:AddPicture( g_pPicture_time )

g_pPicture_time:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )

g_pPicture_time:SetPoint
{
    ADD_SIZE_X= 95,
	"LEFT_TOP		= D3DXVECTOR2(511,576)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_time = g_pUIDialog:CreatePicture()
g_pStatic_time:AddPicture( g_pPicture_time )

g_pPicture_time:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )

g_pPicture_time:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(607,576)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




--------------비공개


g_pStatic_secret = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_secret )
g_pStatic_secret:SetName( "secret" )

g_pStatic_secret:AddString
{
	MSG 			= STR_ID_1358,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(416,610)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

--{{ kimhc, 2009-05-04, 17:10
-------------- 운영자 모드(옵저버 모드) ---- string start

g_pStatic_observer = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_observer )
g_pStatic_observer:SetName( "StaticObserver" )

g_pStatic_observer:AddString
{
	-- MSG 			= "운영자",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(635,610)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
-------------- 운영자 모드(옵저버 모드) ----- string end
--}} kimhc, 2009-05-04, 17:10

g_pPicture_secret = g_pUIDialog:CreatePicture()
g_pStatic_make:AddPicture( g_pPicture_secret )

g_pPicture_secret:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_left" )

g_pPicture_secret:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(481 + 25,605)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_secret = g_pUIDialog:CreatePicture()
g_pStatic_make:AddPicture( g_pPicture_secret )

g_pPicture_secret:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_middle" )

g_pPicture_secret:SetPoint
{
    ADD_SIZE_X= 125,
	"LEFT_TOP		= D3DXVECTOR2(486 + 25,605)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_secret = g_pUIDialog:CreatePicture()
g_pStatic_make:AddPicture( g_pPicture_secret )

g_pPicture_secret:SetTex( "DLG_UI_Common_Texture01.TGA", "ed_box2_right" )

g_pPicture_secret:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(612 + 25,605)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

------------------  모드 선택  -------------------------------------->  비활성



g_pStatic_Team_Inactive = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Team_Inactive )
g_pStatic_Team_Inactive:SetName( "Static_Team_Inactive" )


g_pButtonteam_mode = g_pUIDialog:CreatePicture()
g_pStatic_Team_Inactive:AddPicture( g_pButtonteam_mode )

g_pButtonteam_mode:SetTex( "DLG_UI_Common_Texture02.TGA", "team_noactive" )

g_pButtonteam_mode:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(414,492-32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_Team_Death_Inactive = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Team_Death_Inactive )
g_pStatic_Team_Death_Inactive:SetName( "Static_Team_Death_Inactive" )

g_pButtondeath_mode = g_pUIDialog:CreatePicture()
g_pStatic_Team_Death_Inactive:AddPicture( g_pButtondeath_mode )

g_pButtondeath_mode:SetTex( "DLG_UI_Common_Texture02.TGA", "death_noactive" )

g_pButtondeath_mode:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(512,492-32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_Survival_Inactive = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Survival_Inactive )
g_pStatic_Survival_Inactive:SetName( "Static_Survival_Inactive" )

g_pButtonsurvival_mode = g_pUIDialog:CreatePicture()
g_pStatic_Survival_Inactive:AddPicture( g_pButtonsurvival_mode )

g_pButtonsurvival_mode:SetTex( "DLG_UI_Common_Texture02.TGA", "survival_noactive" )

g_pButtonsurvival_mode:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(610,492-32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




-------------------------------------      모드 선택  버튼


g_pRadioButton_team_match = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_team_match )

g_pRadioButton_team_match:SetFixOverByCheck( true )
g_pRadioButton_team_match:SetShowOffBGByCheck( true )

g_pRadioButton_team_match:SetName( "team_match" )

g_pRadioButton_team_match:SetNormalTex( "DLG_UI_Button04.tga", "team_match_normal" )


g_pRadioButton_team_match:SetOverTex( "DLG_UI_Button04.tga", "team_match_over" )


g_pRadioButton_team_match:SetCheckedTex( "DLG_UI_Button04.tga", "team_match_over" )


g_pRadioButton_team_match:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(414,492-32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_team_match:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(412,490-32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_team_match:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(414,492-32)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(510,540-32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_team_match:SetCheckPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(412+1,490+1-32)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_team_match:SetGroupID( 1 )
g_pRadioButton_team_match:SetCustomMsgChecked( UI_PVP_LOBBY_CUSTOM_MSG["UPLCM_CREATEROOMDLG_GAMETYPE_TEAM"] )





g_pRadioButton_death_match = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_death_match )

g_pRadioButton_death_match:SetFixOverByCheck( true )
g_pRadioButton_death_match:SetShowOffBGByCheck( true )

g_pRadioButton_death_match:SetName( "death_match" )

g_pRadioButton_death_match:SetNormalTex( "DLG_UI_Button04.tga", "death_match_normal" )


g_pRadioButton_death_match:SetOverTex( "DLG_UI_Button04.tga", "death_match_over" )


g_pRadioButton_death_match:SetCheckedTex( "DLG_UI_Button04.tga", "death_match_over" )


g_pRadioButton_death_match:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(512,492-32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_death_match:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(510,490-32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_death_match:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(512,492-32)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(608,540-32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_death_match:SetCheckPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(510+1,490+1-32)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_death_match:SetGroupID( 1 )
g_pRadioButton_death_match:SetCustomMsgChecked( UI_PVP_LOBBY_CUSTOM_MSG["UPLCM_CREATEROOMDLG_GAMETYPE_TEAM_DEATH"] )



g_pRadioButton_survival_match = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_survival_match )

g_pRadioButton_survival_match:SetFixOverByCheck( true )
g_pRadioButton_survival_match:SetShowOffBGByCheck( true )

g_pRadioButton_survival_match:SetName( "survival_match" )

g_pRadioButton_survival_match:SetNormalTex( "DLG_UI_Button04.tga", "survival_match_normal" )


g_pRadioButton_survival_match:SetOverTex( "DLG_UI_Button04.tga", "survival_match_over" )


g_pRadioButton_survival_match:SetCheckedTex( "DLG_UI_Button04.tga", "survival_match_over" )


g_pRadioButton_survival_match:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(611,492-32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_survival_match:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(608,490-32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_survival_match:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(611,492-32)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(707,540-32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_survival_match:SetCheckPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(608+1,490+1-32)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButton_survival_match:SetGroupID( 1 )
g_pRadioButton_survival_match:SetCustomMsgChecked( UI_PVP_LOBBY_CUSTOM_MSG["UPLCM_CREATEROOMDLG_GAMETYPE_SURVIVAL"] )


---EXIT 버튼


g_pButton_exit = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_exit )
g_pButton_exit:SetName( "_exit" )
g_pButton_exit:SetNormalTex( "DLG_UI_Button01.tga", "exit_NORMAL" )

g_pButton_exit:SetOverTex( "DLG_UI_Button01.tga", "exit_OVER" )

g_pButton_exit:SetDownTex( "DLG_UI_Button01.tga", "exit_OVER" )

g_pButton_exit:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(697,396-32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(693,392-32)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetDownPoint
{
     ADD_SIZE_X = -2 ,
	  ADD_SIZE_Y = -2 ,

 	"LEFT_TOP		= D3DXVECTOR2(693+1,392+1-32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetCustomMsgMouseUp( UI_PVP_LOBBY_CUSTOM_MSG["UPLCM_CREATEROOMDLG_EXIT"] )




-----------------------------     -      +    커서      ---------------------


------아이템

g_pButton_minus = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_minus )
g_pButton_minus:SetName( "Item_minus" )
g_pButton_minus:SetNormalTex( "DLG_UI_BUTTON03_A.tga", "minus_NORMAL" )

g_pButton_minus:SetOverTex( "DLG_UI_BUTTON03_A.tga", "minus_OVER" )

g_pButton_minus:SetDownTex( "DLG_UI_BUTTON03_A.tga", "minus_OVER" )

g_pButton_minus:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(489,547-30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_minus:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(488,546-30)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_minus:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(488+1,546+1-30)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_minus:SetCustomMsgMouseUp( UI_PVP_LOBBY_CUSTOM_MSG["UPLCM_CREATEROOMDLG_ITEMMODE_MINUS"] )


-----플러스

g_pButton_plus = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_plus )
g_pButton_plus:SetName( "Item_plus" )
g_pButton_plus:SetNormalTex( "DLG_UI_BUTTON03_A.tga", "plus_NORMAL" )

g_pButton_plus:SetOverTex( "DLG_UI_BUTTON03_A.tga", "plus_OVER" )

g_pButton_plus:SetDownTex( "DLG_UI_BUTTON03_A.tga", "plus_OVER" )

g_pButton_plus:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(614,547-30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_plus:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(613,546-30+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_plus:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(613+1,546+1-30+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_plus:SetCustomMsgMouseUp( UI_PVP_LOBBY_CUSTOM_MSG["UPLCM_CREATEROOMDLG_ITEMMODE_PLUS"] )




------킬수


g_pButton_minus = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_minus )
g_pButton_minus:SetName( "kill_minus" )
g_pButton_minus:SetNormalTex( "DLG_UI_BUTTON03_A.tga", "minus_NORMAL" )

g_pButton_minus:SetOverTex( "DLG_UI_BUTTON03_A.tga", "minus_OVER" )

g_pButton_minus:SetDownTex( "DLG_UI_BUTTON03_A.tga", "minus_OVER" )

g_pButton_minus:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(489,547)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_minus:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(488,546)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_minus:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(488+1,546+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_minus:SetCustomMsgMouseUp( UI_PVP_LOBBY_CUSTOM_MSG["UPLCM_CREATEROOMDLG_KILL_MINUS"] )


-----플러스

g_pButton_plus = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_plus )
g_pButton_plus:SetName( "kill_plus" )
g_pButton_plus:SetNormalTex( "DLG_UI_BUTTON03_A.tga", "plus_NORMAL" )

g_pButton_plus:SetOverTex( "DLG_UI_BUTTON03_A.tga", "plus_OVER" )

g_pButton_plus:SetDownTex( "DLG_UI_BUTTON03_A.tga", "plus_OVER" )

g_pButton_plus:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(614,547)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_plus:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(613,546+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_plus:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(613+1,546+1+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_plus:SetCustomMsgMouseUp( UI_PVP_LOBBY_CUSTOM_MSG["UPLCM_CREATEROOMDLG_KILL_PLUS"] )


-- 시간


g_pButton_minus = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_minus )
g_pButton_minus:SetName( "time_minus" )
g_pButton_minus:SetNormalTex( "DLG_UI_BUTTON03_A.tga", "minus_NORMAL" )

g_pButton_minus:SetOverTex( "DLG_UI_BUTTON03_A.tga", "minus_OVER" )

g_pButton_minus:SetDownTex( "DLG_UI_BUTTON03_A.tga", "minus_OVER" )

g_pButton_minus:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(489,577)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_minus:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(488,576)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_minus:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(488+1,576+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_minus:SetCustomMsgMouseUp( UI_PVP_LOBBY_CUSTOM_MSG["UPLCM_CREATEROOMDLG_TIME_MINUS"] )




g_pButton_plus = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_plus )
g_pButton_plus:SetName( "time_plus" )
g_pButton_plus:SetNormalTex( "DLG_UI_BUTTON03_A.tga", "plus_NORMAL" )

g_pButton_plus:SetOverTex( "DLG_UI_BUTTON03_A.tga", "plus_OVER" )

g_pButton_plus:SetDownTex( "DLG_UI_BUTTON03_A.tga", "plus_OVER" )

g_pButton_plus:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(614,577)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_plus:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(613,576+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_plus:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(613+1,576+1+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_plus:SetCustomMsgMouseUp( UI_PVP_LOBBY_CUSTOM_MSG["UPLCM_CREATEROOMDLG_TIME_PLUS"] )





---------------------------   방만들기 버튼



g_pButtonroom = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonroom )
g_pButtonroom:SetName( "UI_PvP_Lobby_Create_Room" )
g_pButtonroom:SetNormalTex( "DLG_UI_BUTTON02.tga", "make_normal" )

g_pButtonroom:SetOverTex( "DLG_UI_BUTTON02.tga", "make_over" )

g_pButtonroom:SetDownTex( "DLG_UI_BUTTON02.tga", "make_over" )

g_pButtonroom:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(494,637+7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonroom:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(490,633+7)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonroom:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(490+1,633+1+7)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonroom:SetCustomMsgMouseUp( UI_PVP_LOBBY_CUSTOM_MSG["UPLCM_CREATEROOMDLG_CREATE_CONFIRM"] )



----------------체크 박스

g_pPictureBOX = g_pUIDialog:CreatePicture()
g_pStatic_make:AddPicture( g_pPictureBOX )

g_pPictureBOX:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

g_pPictureBOX:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(462 + 25,609)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-------체크 표시
	g_pCheckBoxsecret = g_pUIDialog:CreateCheckBox()
	g_pCheckBoxsecret:SetName( "g_pCheckBoxsecret" )
	g_pUIDialog:AddControl( g_pCheckBoxsecret )

	g_pCheckBoxsecret:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )



g_pCheckBoxsecret:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )


g_pCheckBoxsecret:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(462 + 25,609)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(477 + 25,624)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxsecret:SetCheckPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(460 + 25,607)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}
g_pCheckBoxsecret:SetCustomMsgChecked( UI_PVP_LOBBY_CUSTOM_MSG["UPLCM_CREATEROOMDLG_PRIVATE_CHECKED"] )
g_pCheckBoxsecret:SetCustomMsgUnChecked( UI_PVP_LOBBY_CUSTOM_MSG["UPLCM_CREATEROOMDLG_PRIVATE_UNCHECKED"] )

--{{ kimhc, 2009-05-04, 17:10
----------------운영자 모드(옵저버 모드) 체크 박스, CreateCheckBox start
g_pPictureObserverCheckBox = g_pUIDialog:CreatePicture()
g_pStatic_observer:AddPicture( g_pPictureObserverCheckBox )
stringWidth = 45	-- 운영자란 글씨의 첫번째 첫번째 글자 와의 거리
g_pPictureObserverCheckBox:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

g_pPictureObserverCheckBox:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(462 + 173 + stringWidth,609)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pCheckBoxObserver = g_pUIDialog:CreateCheckBox()
g_pCheckBoxObserver:SetName( "g_pCheckBoxObserver" )
g_pUIDialog:AddControl( g_pCheckBoxObserver )

g_pCheckBoxObserver:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBoxObserver:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )

g_pCheckBoxObserver:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(462 + 173 + stringWidth,609)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(477 + 173 + stringWidth,624)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBoxObserver:SetCheckPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(460 + 173 + stringWidth,607)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}
g_pCheckBoxObserver:SetCustomMsgChecked( UI_PVP_LOBBY_CUSTOM_MSG["UPLCM_CREATEROOMDLG_OBSERVER_CHECKED"] )
g_pCheckBoxObserver:SetCustomMsgUnChecked( UI_PVP_LOBBY_CUSTOM_MSG["UPLCM_CREATEROOMDLG_OBSERVER_UNCHECKED"] )
----------------운영자 모드(옵저버 모드) 체크 박스, CreateCheckBox end
--}} kimhc, 2009-05-04, 17:10

--------------------------- 방만 들기  BAR

g_pPicture_line0 = g_pUIDialog:CreatePicture()
g_pStatic_make:AddPicture( g_pPicture_line0 )

g_pPicture_line0:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line0:SetPoint
{
   ADD_SIZE_X = 300,
	"LEFT_TOP		= D3DXVECTOR2(408,470-32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStatic_make:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
   ADD_SIZE_X = 300,
	"LEFT_TOP		= D3DXVECTOR2(408,542-30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_line2 = g_pUIDialog:CreatePicture()
g_pStatic_make:AddPicture( g_pPicture_line2 )

g_pPicture_line2:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line2:SetPoint
{
   ADD_SIZE_X = 300,
	"LEFT_TOP		= D3DXVECTOR2(408,542)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPicture_line3 = g_pUIDialog:CreatePicture()
g_pStatic_make:AddPicture( g_pPicture_line3 )

g_pPicture_line3:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line3:SetPoint
{
   ADD_SIZE_X = 300,
	"LEFT_TOP		= D3DXVECTOR2(408,572)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line4 = g_pUIDialog:CreatePicture()
g_pStatic_make:AddPicture( g_pPicture_line4 )

g_pPicture_line4:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line4:SetPoint
{
   ADD_SIZE_X = 300,
	"LEFT_TOP		= D3DXVECTOR2(408,601)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






---------------  비번 아이콘


g_pPicture_lock = g_pUIDialog:CreatePicture()
g_pStatic_make:AddPicture( g_pPicture_lock )

g_pPicture_lock:SetTex( "DLG_UI_Common_Texture02.TGA", "lock" )

g_pPicture_lock:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(487 + 25,607)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



------------------ 방이름 적기


g_pIME_Editname = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIME_Editname )
g_pIME_Editname:SetName( "IME_EditRoomName" )
g_pIME_Editname:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(466,440-32)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(705,465-32)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIME_Editname:SetFont( XF_DODUM_15_BOLD )
g_pIME_Editname:SetTextColor( 0.2, 0.2, 0.2, 1.0 )
g_pIME_Editname:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_Editname:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIME_Editname:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )
--g_pIME_Editname:SetByteLimit(26)
--g_pIME_Editname:SetWidthLimit( 437 - (110+9) )
g_pIME_Editname:SetLengthLimit(40)

----------------비번


g_pIME_Editsecret = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIME_Editsecret )
g_pIME_Editsecret:SetName( "IME_EditPassword" )
g_pIME_Editsecret:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(505 + 25,607)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(617 + 25,627)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIME_Editsecret:SetFont( XF_DODUM_15_BOLD )
g_pIME_Editsecret:SetTextColor( 0.2, 0.2, 0.2, 1.0 )
g_pIME_Editsecret:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_Editsecret:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIME_Editsecret:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_Editsecret:SetCustomMsgEnter( UI_PVP_LOBBY_CUSTOM_MSG["UPLCM_CREATEROOMDLG_CREATE_CONFIRM"] )
-- #ifdef SERV_NEW_PVPROOM_PROCESS
g_pIME_Editsecret:SetByteLimit(12)
-- #else
--g_pIME_Editsecret:SetByteLimit(13)
--#endif SERV_NEW_PVPROOM_PROCESS


