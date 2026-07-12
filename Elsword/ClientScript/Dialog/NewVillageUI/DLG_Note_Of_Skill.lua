-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


--g_pUIDialog:SetPos( 300, 200 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetCloseCustomUIEventID( UI_SKILL_NOTE_MSG["USNM_EXIT"] )


g_pStaticic_Note_of_Skill = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticic_Note_of_Skill )
g_pStaticic_Note_of_Skill:SetName( "g_pStaticic_Note_of_Skill" )


-----BG
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticic_Note_of_Skill:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture27.TGA", "bg01" )

g_pPicture_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BG2 = g_pUIDialog:CreatePicture()
g_pStaticic_Note_of_Skill:AddPicture( g_pPicture_BG2 )

g_pPicture_BG2:SetTex( "DLG_UI_Common_Texture28.TGA", "bg02" )

g_pPicture_BG2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(445,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_BG3 = g_pUIDialog:CreatePicture()
g_pStaticic_Note_of_Skill:AddPicture( g_pPicture_BG3 )

g_pPicture_BG3:SetTex( "DLG_UI_Common_Texture29.TGA", "bg03" )

g_pPicture_BG3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,455)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_BG3 = g_pUIDialog:CreatePicture()
g_pStaticic_Note_of_Skill:AddPicture( g_pPicture_BG3 )

g_pPicture_BG3:SetTex( "DLG_UI_Common_Texture29.TGA", "bg04" )

g_pPicture_BG3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(445,455)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


----------------좌우 버튼

g_pButton_Prev = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Prev )
g_pButton_Prev:SetName( "_Prev_button" )
g_pButton_Prev:SetNormalTex( "DLG_UI_Button16.tga", "Prev_N" )

g_pButton_Prev:SetOverTex( "DLG_UI_Button16.tga", "Prev_O" )

g_pButton_Prev:SetDownTex( "DLG_UI_Button16.tga", "Prev_O" )

g_pButton_Prev:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(21,476)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Prev:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(21,476)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Prev:SetDownPoint
{
      ADD_SIZE_X = -1,
     ADD_SIZE_Y = -1,
 	"LEFT_TOP		= D3DXVECTOR2(21,476+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pButton_Next = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Next )
g_pButton_Next:SetName( "_Next_button" )
g_pButton_Next:SetNormalTex( "DLG_UI_Button16.tga", "Next_N" )

g_pButton_Next:SetOverTex( "DLG_UI_Button16.tga", "Next_O" )

g_pButton_Next:SetDownTex( "DLG_UI_Button16.tga", "Next_O" )

g_pButton_Next:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(811,476)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Next:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(811,476)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Next:SetDownPoint
{
      ADD_SIZE_X = -1,
     ADD_SIZE_Y = -1,
 	"LEFT_TOP		= D3DXVECTOR2(811+1,476+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


------------ 투명버튼

---1
g_pButton_Icon1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Icon1 )
g_pButton_Icon1:SetName( "_Icon_button0" )
g_pButton_Icon1:AddDummyInt(1)
g_pButton_Icon1:SetNormalTex( "DLG_UI_Common_Texture29.tga", "Black" )
g_pButton_Icon1:SetOverTex( "DLG_UI_Button16.tga", "Black_Over" )
g_pButton_Icon1:SetDownTex( "DLG_UI_Button16.tga", "Black_Over" )

g_pButton_Icon1:SetNormalPoint
{
     ADD_SIZE_X = 64,
     ADD_SIZE_Y = 64,
    "LEFT_TOP		= D3DXVECTOR2(98,488)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Icon1:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(98-12,488-12)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Icon1:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(98-12+1,488-12+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Icon1:SetCustomMsgMouseUp( UI_SKILL_NOTE_MSG["USNM_REGISTER_VIEW_SLOT"] )


---2
g_pButton_Icon2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Icon2 )
g_pButton_Icon2:SetName( "_Icon_button1" )
g_pButton_Icon2:AddDummyInt(2)
g_pButton_Icon2:SetNormalTex( "DLG_UI_Common_Texture29.tga", "Black" )

g_pButton_Icon2:SetOverTex( "DLG_UI_Button16.tga", "Black_Over" )

g_pButton_Icon2:SetDownTex( "DLG_UI_Button16.tga", "Black_Over" )

g_pButton_Icon2:SetNormalPoint
{
     ADD_SIZE_X = 64,
     ADD_SIZE_Y = 64,
    "LEFT_TOP		= D3DXVECTOR2(98+118,488)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Icon2:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(98-12+118,488-12)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Icon2:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(98-12+1+118,488-12+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Icon2:SetCustomMsgMouseUp( UI_SKILL_NOTE_MSG["USNM_REGISTER_VIEW_SLOT"] )


---3
g_pButton_Icon3 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Icon3 )
g_pButton_Icon3:SetName( "_Icon_button2" )
g_pButton_Icon3:AddDummyInt(3)
g_pButton_Icon3:SetNormalTex( "DLG_UI_Common_Texture29.tga", "Black" )

g_pButton_Icon3:SetOverTex( "DLG_UI_Button16.tga", "Black_Over" )

g_pButton_Icon3:SetDownTex( "DLG_UI_Button16.tga", "Black_Over" )

g_pButton_Icon3:SetNormalPoint
{
     ADD_SIZE_X = 64,
     ADD_SIZE_Y = 64,
    "LEFT_TOP		= D3DXVECTOR2(98+118+118,488)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Icon3:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(98-12+118+118,488-12)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Icon3:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(98-12+1+118+118,488-12+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Icon3:SetCustomMsgMouseUp( UI_SKILL_NOTE_MSG["USNM_REGISTER_VIEW_SLOT"] )


---4
g_pButton_Icon4 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Icon4 )
g_pButton_Icon4:SetName( "_Icon_button3" )
g_pButton_Icon4:AddDummyInt(4)
g_pButton_Icon4:SetNormalTex( "DLG_UI_Common_Texture29.tga", "Black" )

g_pButton_Icon4:SetOverTex( "DLG_UI_Button16.tga", "Black_Over" )

g_pButton_Icon4:SetDownTex( "DLG_UI_Button16.tga", "Black_Over" )

g_pButton_Icon4:SetNormalPoint
{
     ADD_SIZE_X = 64,
     ADD_SIZE_Y = 64,
    "LEFT_TOP		= D3DXVECTOR2(491,488)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Icon4:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(491-12,488-12)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Icon4:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(491-12+1,488-12+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Icon4:SetCustomMsgMouseUp( UI_SKILL_NOTE_MSG["USNM_REGISTER_VIEW_SLOT"] )

---5
g_pButton_Icon5 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Icon5 )
g_pButton_Icon5:SetName( "_Icon_button4" )
g_pButton_Icon5:AddDummyInt(5)
g_pButton_Icon5:SetNormalTex( "DLG_UI_Common_Texture29.tga", "Black" )

g_pButton_Icon5:SetOverTex( "DLG_UI_Button16.tga", "Black_Over" )

g_pButton_Icon5:SetDownTex( "DLG_UI_Button16.tga", "Black_Over" )

g_pButton_Icon5:SetNormalPoint
{
     ADD_SIZE_X = 64,
     ADD_SIZE_Y = 64,
    "LEFT_TOP		= D3DXVECTOR2(491+118,488)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Icon5:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(491-12+118,488-12)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Icon5:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(491-12+1+118,488-12+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Icon5:SetCustomMsgMouseUp( UI_SKILL_NOTE_MSG["USNM_REGISTER_VIEW_SLOT"] )


---6
g_pButton_Icon6 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Icon6 )
g_pButton_Icon6:SetName( "_Icon_button5" )
g_pButton_Icon6:AddDummyInt(6)
g_pButton_Icon6:SetNormalTex( "DLG_UI_Common_Texture29.tga", "Black" )

g_pButton_Icon6:SetOverTex( "DLG_UI_Button16.tga", "Black_Over" )

g_pButton_Icon6:SetDownTex( "DLG_UI_Button16.tga", "Black_Over" )

g_pButton_Icon6:SetNormalPoint
{
     ADD_SIZE_X = 64,
     ADD_SIZE_Y = 64,
    "LEFT_TOP		= D3DXVECTOR2(491+118+118,488)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Icon6:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(491-12+118+118,488-12)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Icon6:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(491-12+1+118+118,488-12+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Icon6:SetCustomMsgMouseUp( UI_SKILL_NOTE_MSG["USNM_REGISTER_VIEW_SLOT"] )



---창닫기버튼
g_pButtonenter = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonenter )
g_pButtonenter:SetName( "enter" )
g_pButtonenter:SetNormalTex( "DLG_Common_New_Texture67.tga", "EXIT_NORMAL" )

g_pButtonenter:SetOverTex( "DLG_Common_New_Texture67.tga", "EXIT_OVER" )

g_pButtonenter:SetDownTex( "DLG_Common_New_Texture67.tga", "EXIT_OVER" )

g_pButtonenter:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(815,26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonenter:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(815,26)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonenter:SetDownPoint
{
ADD_SIZE_X = -2,
ADD_SIZE_Y = -2, 
 	"LEFT_TOP		= D3DXVECTOR2(815+1,26+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonenter:SetCustomMsgMouseUp( UI_SKILL_NOTE_MSG["USNM_EXIT"] )


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------               STRING                      ---------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


-------------------  기술의노트
g_pStatic_Title = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Title )
g_pStatic_Title:SetName( "Static_Title" )


g_pStatic_Title:AddString
{
	MSG 			= STR_ID_4993,
	--MSG 			= "기술의 노트",
	FONT_INDEX		= XUF_DODUM_20_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(237+2,64+2)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,0.8)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.2,0.0,0.0,0.8)",
}


g_pStatic_Title:AddString
{
	MSG 			= STR_ID_4993,
	--MSG 			= "기술의 노트",
	FONT_INDEX		= XUF_DODUM_20_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(237,64)",
	"COLOR			= D3DXCOLOR(1.0,0.8,0.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.2,0.0,0.0,0.8)",
}


-------------------  노트 타이틀
g_pStatic_Title_A = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Title_A )
g_pStatic_Title_A:SetName( "Static_Title_A" )


g_pStatic_Title_A:AddString
{
	MSG 			= STR_ID_4993,
	--MSG 			= "강한 정신 집중에 대한 메모.",
	FONT_INDEX		= XUF_DODUM_20_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_Left"],
	"POS 			= D3DXVECTOR2(155,147)",
	"COLOR			= D3DXCOLOR(1.0,0.5,0.5,0.8)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.2,0.0,0.0,0.8)",
}

g_pStatic_Title_B = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Title_B )
g_pStatic_Title_B:SetName( "g_pStatic_Title_B" )


g_pStatic_Title_B:AddString
{
	MSG 			= STR_ID_4993,
	--MSG 			= "강한 정신 집중에 대한 메모.",
	FONT_INDEX		= XUF_DODUM_20_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_Left"],
	"POS 			= D3DXVECTOR2(155+406,147)",
	"COLOR			= D3DXCOLOR(1.0,0.5,0.5,0.8)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.2,0.0,0.0,0.8)",
}

-- #ifdef SKILL_NOTE_SCROLLBAR
------메모 설명 스크롤바1
g_pPictureScroll_BG1 = g_pUIDialog:CreatePicture()
g_pStaticic_Note_of_Skill:AddPicture( g_pPictureScroll_BG1 )
g_pPictureScroll_BG1:SetTex( "DLG_Common_New_Texture61.TGA", "Scroll_Bg" )
g_pPictureScroll_BG1:SetPoint
{
	ADD_SIZE_X = -7,
    ADD_SIZE_Y = 195,
	"LEFT_TOP		= D3DXVECTOR2(400,200)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pListBox1 = g_pUIDialog:CreateListBox()
g_pUIDialog:AddControl( g_pListBox1 )
g_pListBox1:SetName( "MemoDesc1" )

g_pListBox1:SetString		--신경써줄꺼는 폰트 인덱스와 폰트 스타일
{
	-- MSG 			= "NoName",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_NONE"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(0.4,0.1,0.1,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,0.4)",
}

g_pListBox1:SetTextTex( "DLG_Room_Button0.tga", "Invisible" )
g_pListBox1:SetBoundingBoxTex( "DLG_Room_Button0.tga","Invisible" )
g_pListBox1:SetScollBarUpButtonTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Normal" )
g_pListBox1:SetScollBarUpButtonDownTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Over" )
g_pListBox1:SetScollBarDownButtonTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Normal" )
g_pListBox1:SetScollBarDownButtonDownTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Over" )
g_pListBox1:SetScollBarThumbTex( "DLG_Common_New_Texture61.tga", "Scroll_Bar" )
g_pListBox1:SetScollBarTrackTex( "DLG_Room_Button0.tga", "Invisible" )

g_pListBox1:InitScrollBar()
g_pListBox1:SetScrollBarWidth( 14 )
g_pListBox1:SetPos( 70, 195 )
g_pListBox1:SetSize( 330, 200 )


------메모 설명 스크롤바2
g_pPictureScroll_BG2 = g_pUIDialog:CreatePicture()
g_pStaticic_Note_of_Skill:AddPicture( g_pPictureScroll_BG2 )
g_pPictureScroll_BG2:SetTex( "DLG_Common_New_Texture61.TGA", "Scroll_Bg" )
g_pPictureScroll_BG2:SetPoint
{
	ADD_SIZE_X = -7,
    ADD_SIZE_Y = 195,
	"LEFT_TOP		= D3DXVECTOR2(805,200)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pListBox2 = g_pUIDialog:CreateListBox()
g_pUIDialog:AddControl( g_pListBox2 )
g_pListBox2:SetName( "MemoDesc2" )

g_pListBox2:SetString		--신경써줄꺼는 폰트 인덱스와 폰트 스타일
{
	-- MSG 			= "NoName",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_NONE"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(0.4,0.1,0.1,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,0.4)",
}

g_pListBox2:SetTextTex( "DLG_Room_Button0.tga", "Invisible" )
g_pListBox2:SetBoundingBoxTex( "DLG_Room_Button0.tga","Invisible" )
g_pListBox2:SetScollBarUpButtonTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Normal" )
g_pListBox2:SetScollBarUpButtonDownTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Over" )
g_pListBox2:SetScollBarDownButtonTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Normal" )
g_pListBox2:SetScollBarDownButtonDownTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Over" )
g_pListBox2:SetScollBarThumbTex( "DLG_Common_New_Texture61.tga", "Scroll_Bar" )
g_pListBox2:SetScollBarTrackTex( "DLG_Room_Button0.tga", "Invisible" )

g_pListBox2:InitScrollBar()
g_pListBox2:SetScrollBarWidth( 14 )
g_pListBox2:SetPos( 475, 195 )
g_pListBox2:SetSize( 330, 200 )
-- #endif SKILL_NOTE_SCROLLBAR


g_pStatic_Note_A = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Note_A )
g_pStatic_Note_A:SetName( "g_pStatic_Note_A" )

g_pStatic_Note_A:AddString
{
	MSG 			= STR_ID_4993,
	--MSG 			= "메디테이션 사용 중 피격 되어도 일정 확률로\n메디테이션이 취소되지 않는다.\n\n- 작성자 : 윌리엄 뽀루 -",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_NONE"],
	SORT_FLAG		= DRAW_TEXT["DT_Left"],
	"POS 			= D3DXVECTOR2(90,207)",
	"COLOR			= D3DXCOLOR(0.4,0.1,0.1,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,0.4)",
}


g_pStatic_Note_b= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Note_b )
g_pStatic_Note_b:SetName( "g_pStatic_Note_b" )

g_pStatic_Note_b:AddString
{
	MSG 			= STR_ID_4993,
	--MSG 			= "메디테이션 사용 중 피격 되어도 일정 확률로\n메디테이션이 취소되지 않는다.\n\n- 작성자 : 윌리엄 뽀루 -",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_NONE"],
	SORT_FLAG		= DRAW_TEXT["DT_Left"],
	"POS 			= D3DXVECTOR2(90+406,207)",
	"COLOR			= D3DXCOLOR(0.4,0.1,0.1,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,0.4)",
}





-------------------  레벨
g_pStatic_LV = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_LV )
g_pStatic_LV:SetName( "Static_LV" )


g_pStatic_LV:AddString
{
  MSG 			= STR_ID_4993,
	--MSG 			= "Lv.30",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(129,513)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.2,0.0,0.0,0.8)",
}


g_pStatic_LV:AddString
{
  MSG 			= STR_ID_4993,
	--MSG 			= "Lv.35",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(129+118,513)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.2,0.0,0.0,0.8)",
}


g_pStatic_LV:AddString
{
  MSG 			= STR_ID_4993,
	--MSG 			= "Lv.40",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(129+118+118,513)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.2,0.0,0.0,0.8)",
}


g_pStatic_LV:AddString
{
  MSG 			= STR_ID_4993,
--	MSG 			= "Lv.45",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(524,513)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.2,0.0,0.0,0.8)",
}


g_pStatic_LV:AddString
{
  MSG 			= STR_ID_4993,
	--MSG 			= "Lv.50",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(524+118,513)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.2,0.0,0.0,0.8)",
}

g_pStatic_LV:AddString
{
  MSG 			= STR_ID_4993,
	--MSG 			= "Lv.??",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(524+118+118,513)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.2,0.0,0.0,0.8)",
}




-------------- 노트 페이지
g_pStatic_Note_Page = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Note_Page )
g_pStatic_Note_Page:SetName( "Static_Note_Page" )

g_pStatic_Note_Page:AddString
{
  MSG 			= STR_ID_4993,
--	MSG 			= "1 Page",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_Left"],
	"POS 			= D3DXVECTOR2(72,430)",
	"COLOR			= D3DXCOLOR(0.4,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStatic_Note_Page:AddString
{
  MSG 			= STR_ID_4993,
	--MSG 			= "2 Page",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(72+732,430)",
	"COLOR			= D3DXCOLOR(0.4,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}



-------------- 슬롯 페이지
g_pStatic_Slot_Page = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Slot_Page )
g_pStatic_Slot_Page:SetName( "Static_Slot_Page" )

g_pStatic_Slot_Page:AddString
{
  MSG 			= STR_ID_4993,
	--MSG 			= "1 Page",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(129,556)",
	"COLOR			= D3DXCOLOR(0.3,0.1,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStatic_Slot_Page:AddString
{
  MSG 			= STR_ID_4993,
	--MSG 			= "2 Page",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(129+118,556)",
	"COLOR			= D3DXCOLOR(0.3,0.1,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStatic_Slot_Page:AddString
{
  MSG 			= STR_ID_4993,
	--MSG 			= "3 Page",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(129+118+118,556)",
	"COLOR			= D3DXCOLOR(0.3,0.1,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStatic_Slot_Page:AddString
{
  MSG 			= STR_ID_4993,
	--MSG 			= "4 Page",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(524,556)",
	"COLOR			= D3DXCOLOR(0.3,0.1,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStatic_Slot_Page:AddString
{
  MSG 			= STR_ID_4993,
	--MSG 			= "5 Page",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(524+118,556)",
	"COLOR			= D3DXCOLOR(0.3,0.1,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pStatic_Slot_Page:AddString
{
  MSG 			= STR_ID_4993,
	--MSG 			= "6 Page",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(524+118+118,556)",
	"COLOR			= D3DXCOLOR(0.3,0.1,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


------------ 아이콘 비활성 이미지

---1

g_pPicture_Lock01 = g_pUIDialog:CreatePicture()
g_pStaticic_Note_of_Skill:AddPicture( g_pPicture_Lock01 )
g_pPicture_Lock01:SetIndex(1)
g_pPicture_Lock01:SetTex( "DLG_UI_Common_Texture29.TGA", "Lock" )

g_pPicture_Lock01:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(98,488)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


---2

g_pPicture_Lock02 = g_pUIDialog:CreatePicture()
g_pStaticic_Note_of_Skill:AddPicture( g_pPicture_Lock02 )
g_pPicture_Lock02:SetIndex(2)
g_pPicture_Lock02:SetTex( "DLG_UI_Common_Texture29.TGA", "Lock" )

g_pPicture_Lock02:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(98+118,488)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


---3

g_pPicture_Lock03 = g_pUIDialog:CreatePicture()
g_pStaticic_Note_of_Skill:AddPicture( g_pPicture_Lock03 )
g_pPicture_Lock03:SetIndex(3)
g_pPicture_Lock03:SetTex( "DLG_UI_Common_Texture29.TGA", "Lock" )

g_pPicture_Lock03:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(98+118+118,488)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}



---4

g_pPicture_Lock04 = g_pUIDialog:CreatePicture()
g_pStaticic_Note_of_Skill:AddPicture( g_pPicture_Lock04 )
g_pPicture_Lock04:SetIndex(4)
g_pPicture_Lock04:SetTex( "DLG_UI_Common_Texture29.TGA", "Lock" )

g_pPicture_Lock04:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(491,488)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


---5

g_pPicture_Lock05 = g_pUIDialog:CreatePicture()
g_pStaticic_Note_of_Skill:AddPicture( g_pPicture_Lock05 )
g_pPicture_Lock05:SetIndex(5)
g_pPicture_Lock05:SetTex( "DLG_UI_Common_Texture29.TGA", "Lock" )

g_pPicture_Lock05:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(491+118,488)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}


---6

g_pPicture_Lock06 = g_pUIDialog:CreatePicture()
g_pStaticic_Note_of_Skill:AddPicture( g_pPicture_Lock06 )
g_pPicture_Lock06:SetIndex(6)
g_pPicture_Lock06:SetTex( "DLG_UI_Common_Texture29.TGA", "Lock" )

g_pPicture_Lock06:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(491+118+118,488)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.6)",
	CHANGE_TIME		= 0.0,
}









------------------ 도움말 버튼 ------------------------

g_pButton_Help = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Help )
g_pButton_Help:SetName( "_help" )
g_pButton_Help:SetNormalTex( "DLG_Common_New_Texture67.tga", "Help_NORMAL" )

g_pButton_Help:SetOverTex( "DLG_Common_New_Texture67.tga", "Help_OVER" )

g_pButton_Help:SetDownTex( "DLG_Common_New_Texture67.tga", "Help_OVER" )

g_pButton_Help:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(789,24)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(789,24)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetDownPoint
{
ADD_SIZE_X = -2,
ADD_SIZE_Y = -2, 
 	"LEFT_TOP		= D3DXVECTOR2(789+1,24+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_OPEN_ELLIOS_GUIDE_GO_TO_PAGE"] )
g_pButton_Help:AddDummyInt(120)

-- 페이지 넘김 투명 버튼

---1
g_pButton_Page1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Page1 )
g_pButton_Page1:SetName( "_Page_button1" )
g_pButton_Page1:SetNormalTex( "DLG_UI_Common_Texture29.tga", "Black" )

g_pButton_Page1:SetOverTex( "DLG_UI_Common_Texture29.tga", "Black" )

g_pButton_Page1:SetDownTex( "DLG_UI_Common_Texture29.tga", "Black" )

g_pButton_Page1:SetNormalPoint
{
     ADD_SIZE_X = 395,
     ADD_SIZE_Y = 387,
    "LEFT_TOP		= D3DXVECTOR2(44,61)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Page1:SetOverPoint
{
     ADD_SIZE_X = 395,
     ADD_SIZE_Y = 387,
	"LEFT_TOP		= D3DXVECTOR2(44,61)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Page1:SetDownPoint
{
     ADD_SIZE_X = 395,
     ADD_SIZE_Y = 387,
 	"LEFT_TOP		= D3DXVECTOR2(44,61)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Page1:SetCustomMsgMouseUp( UI_SKILL_NOTE_MSG["USNM_PAGE_PREV"] )

---2
g_pButton_Page2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Page2 )
g_pButton_Page2:SetName( "_Page_button1" )
g_pButton_Page2:SetNormalTex( "DLG_UI_Common_Texture29.tga", "Black" )

g_pButton_Page2:SetOverTex( "DLG_UI_Common_Texture29.tga", "Black" )

g_pButton_Page2:SetDownTex( "DLG_UI_Common_Texture29.tga", "Black" )

g_pButton_Page2:SetNormalPoint
{
     ADD_SIZE_X = 395,
     ADD_SIZE_Y = 387,
    "LEFT_TOP		= D3DXVECTOR2(44+406,61)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Page2:SetOverPoint
{
     ADD_SIZE_X = 395,
     ADD_SIZE_Y = 387,
	"LEFT_TOP		= D3DXVECTOR2(44+406,61)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Page2:SetDownPoint
{
     ADD_SIZE_X = 395,
     ADD_SIZE_Y = 387,
 	"LEFT_TOP		= D3DXVECTOR2(44+406,61)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Page2:SetCustomMsgMouseUp( UI_SKILL_NOTE_MSG["USNM_PAGE_NEXT"] )