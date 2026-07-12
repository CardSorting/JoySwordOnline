-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true  )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseOnFocusOut( true )
g_pUIDialog:SetCloseCustomUIEventID( USER_MENU_UI_MSG["UMUI_EXIT"] )

ADD_SIZE_TX = 300

-- 캐릭터 생성 및 전직시 아이콘 추가
---------- 캐릭터 뷰 ----------
g_pStaticFaceImage = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticFaceImage )
g_pStaticFaceImage:SetName( "character_face_image" )
g_pPicture_elsword = g_pUIDialog:CreatePicture()
g_pStaticFaceImage:AddPicture( g_pPicture_elsword )
g_pPicture_elsword:SetTex( "DLG_UI_Common_Texture16_NEW.TGA", "ELSWORD_ICON" )
g_pPicture_elsword:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(11,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--------------------------- 메뉴
---------- 10자리 수 ----------
g_pStaticten = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticten )
g_pStaticten:SetName( "ten" )
g_pStaticten:SetShowEnable( false, false )

g_pPicture_zero = g_pUIDialog:CreatePicture()
g_pStaticten:AddPicture( g_pPicture_zero )
g_pPicture_zero:SetTex( "DLG_UI_Common_Texture02.TGA", "zero" )
g_pPicture_zero:SetIndex(10)
g_pPicture_zero:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2( 11, 12 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}

g_pPicture_one = g_pUIDialog:CreatePicture()
g_pStaticten:AddPicture( g_pPicture_one )
g_pPicture_one:SetTex( "DLG_UI_Common_Texture02.TGA", "one" )
g_pPicture_one:SetIndex(1)
g_pPicture_one:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2( 11, 12 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}

g_pPicture_two = g_pUIDialog:CreatePicture()
g_pStaticten:AddPicture( g_pPicture_two )
g_pPicture_two:SetTex( "DLG_UI_Common_Texture02.TGA", "two" )
g_pPicture_two:SetIndex(2)
g_pPicture_two:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2( 11, 12 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}

g_pPicture_three = g_pUIDialog:CreatePicture()
g_pStaticten:AddPicture( g_pPicture_three )
g_pPicture_three:SetTex( "DLG_UI_Common_Texture02.TGA", "three" )
g_pPicture_three:SetIndex(3)
g_pPicture_three:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2( 11, 12 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}

g_pPicture_four = g_pUIDialog:CreatePicture()
g_pStaticten:AddPicture( g_pPicture_four )
g_pPicture_four:SetIndex(4)
g_pPicture_four:SetTex( "DLG_UI_Common_Texture02.TGA", "four" )
g_pPicture_four:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2( 11, 12 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}

g_pPicture_five = g_pUIDialog:CreatePicture()
g_pStaticten:AddPicture( g_pPicture_five )
g_pPicture_five:SetIndex(5)
g_pPicture_five:SetTex( "DLG_UI_Common_Texture02.TGA", "five" )
g_pPicture_five:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2( 11, 12 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}

g_pPicture_six = g_pUIDialog:CreatePicture()
g_pStaticten:AddPicture( g_pPicture_six )
g_pPicture_six:SetIndex(6)
g_pPicture_six:SetTex( "DLG_UI_Common_Texture02.TGA", "six" )
g_pPicture_six:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2( 11, 12 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}

g_pPicture_seven = g_pUIDialog:CreatePicture()
g_pStaticten:AddPicture( g_pPicture_seven )
g_pPicture_seven:SetIndex(7)
g_pPicture_seven:SetTex( "DLG_UI_Common_Texture02.TGA", "seven" )
g_pPicture_seven:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2( 11, 12 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}

g_pPicture_eight = g_pUIDialog:CreatePicture()
g_pStaticten:AddPicture( g_pPicture_eight )
g_pPicture_eight:SetIndex(8)
g_pPicture_eight:SetTex( "DLG_UI_Common_Texture02.TGA", "eight" )
g_pPicture_eight:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2( 11, 12 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}

g_pPicture_nine = g_pUIDialog:CreatePicture()
g_pStaticten:AddPicture( g_pPicture_nine )
g_pPicture_nine:SetIndex(9)
g_pPicture_nine:SetTex( "DLG_UI_Common_Texture02.TGA", "nine" )
g_pPicture_nine:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2( 11, 12 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}

---------- 한 자릿수 ---------
g_pStaticone = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticone )
g_pStaticone:SetName( "one" )
g_pStaticone:SetShowEnable( false, false )

g_pPicture_zero = g_pUIDialog:CreatePicture()
g_pStaticone:AddPicture( g_pPicture_zero )
g_pPicture_zero:SetTex( "DLG_UI_Common_Texture02.TGA", "zero" )
g_pPicture_zero:SetIndex(10)
g_pPicture_zero:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2( 17,12 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}

g_pPicture_one = g_pUIDialog:CreatePicture()
g_pStaticone:AddPicture( g_pPicture_one )
g_pPicture_one:SetTex( "DLG_UI_Common_Texture02.TGA", "one" )
g_pPicture_one:SetIndex(1)
g_pPicture_one:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2( 17,12 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}

g_pPicture_two= g_pUIDialog:CreatePicture()
g_pStaticone:AddPicture( g_pPicture_two )
g_pPicture_two:SetTex( "DLG_UI_Common_Texture02.TGA", "two" )
g_pPicture_two:SetIndex(2)
g_pPicture_two:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2( 17,12 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}

g_pPicture_three = g_pUIDialog:CreatePicture()
g_pStaticone:AddPicture( g_pPicture_three )
g_pPicture_three:SetTex( "DLG_UI_Common_Texture02.TGA", "three" )
g_pPicture_three:SetIndex(3)
g_pPicture_three:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2( 17,12 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}

g_pPicture_four = g_pUIDialog:CreatePicture()
g_pStaticone:AddPicture( g_pPicture_four )
g_pPicture_four:SetTex( "DLG_UI_Common_Texture02.TGA", "four" )
g_pPicture_four:SetIndex(4)
g_pPicture_four:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2( 17,12 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}

g_pPicture_five = g_pUIDialog:CreatePicture()
g_pStaticone:AddPicture( g_pPicture_five )
g_pPicture_five:SetTex( "DLG_UI_Common_Texture02.TGA", "five" )
g_pPicture_five:SetIndex(5)
g_pPicture_five:SetPoint
{
    "LEFT_TOP	= D3DXVECTOR2( 17,12 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}

g_pPicture_six = g_pUIDialog:CreatePicture()
g_pStaticone:AddPicture( g_pPicture_six )
g_pPicture_six:SetTex( "DLG_UI_Common_Texture02.TGA", "six" )
g_pPicture_six:SetIndex(6)
g_pPicture_six:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2( 17,12 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}

g_pPicture_seven = g_pUIDialog:CreatePicture()
g_pStaticone:AddPicture( g_pPicture_seven )
g_pPicture_seven:SetTex( "DLG_UI_Common_Texture02.TGA", "seven" )
g_pPicture_seven:SetIndex(7)
g_pPicture_seven:SetPoint
{
    "LEFT_TOP	= D3DXVECTOR2( 17,12 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}

g_pPicture_eight = g_pUIDialog:CreatePicture()
g_pStaticone:AddPicture( g_pPicture_eight )
g_pPicture_eight:SetTex( "DLG_UI_Common_Texture02.TGA", "eight" )
g_pPicture_eight:SetIndex(8)
g_pPicture_eight:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2( 17,12 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}

g_pPicture_nine = g_pUIDialog:CreatePicture()
g_pStaticone:AddPicture( g_pPicture_nine )
g_pPicture_nine:SetTex( "DLG_UI_Common_Texture02.TGA", "nine" )
g_pPicture_nine:SetIndex(9)
g_pPicture_nine:SetPoint
{
	"LEFT_TOP	= D3DXVECTOR2( 17,12 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
---------- 캐릭터 명 ----------
Static_name = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( Static_name )
Static_name:SetName( "_name" )
Static_name:AddString
{
	-- MSG 			= "길어도여섯자",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(34,15)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
}

--------------- 버튼 글씨
g_pStaticTextParty = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticTextParty )
g_pStaticTextParty:SetName( "PartyPopUpGage" )
g_pStaticTextParty:SetShowEnable( false, false )

-----살펴보기
g_pStaticTextParty:AddString
{ 
    --MSG 				= "살펴보기",
	FONT_INDEX	= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 				= D3DXVECTOR2( 60, 40 )",
	"COLOR			= D3DXCOLOR( 0.3, 0.3, 0.3, 1.0 )",
	"OUTLINE_COLOR		= D3DXCOLOR( 0.2, 0.2, 0.2, 0.0 )",
}

g_pStaticTextParty:AddString
{ 
    --MSG 				= "파티장 임명",
	FONT_INDEX	= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 				= D3DXVECTOR2( 60, 40 )",
	"COLOR			= D3DXCOLOR( 0.3, 0.3, 0.3, 1.0 )",
	"OUTLINE_COLOR		= D3DXCOLOR( 0.2, 0.2, 0.2, 0.0 )",
}

g_pStaticTextParty:AddString
{ 
    --MSG 				= "파티 내보내기",
	FONT_INDEX	= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 				= D3DXVECTOR2( 60, 40 )",
	"COLOR			= D3DXCOLOR( 0.3, 0.3, 0.3, 1.0 )",
	"OUTLINE_COLOR		= D3DXCOLOR( 0.2, 0.2, 0.2, 0.0 )",
}

g_pStaticTextParty:AddString
{ 
    --MSG 				= "귓속말",
	FONT_INDEX	= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 				= D3DXVECTOR2( 60, 40 )",
	"COLOR			= D3DXCOLOR( 0.3, 0.3, 0.3, 1.0 )",
	"OUTLINE_COLOR		= D3DXCOLOR( 0.2, 0.2, 0.2, 0.0 )",
}

g_pStaticTextParty:AddString
{ 
    --MSG 				= "친구 요청",
	FONT_INDEX	= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 				= D3DXVECTOR2( 60, 40 )",
	"COLOR			= D3DXCOLOR( 0.3, 0.3, 0.3, 1.0 )",
	"OUTLINE_COLOR		= D3DXCOLOR( 0.2, 0.2, 0.2, 0.0 )",
}

g_pStaticTextParty:AddString
{ 
    --MSG 				= "사제 요청",
	FONT_INDEX	= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 				= D3DXVECTOR2( 60, 40 )",
	"COLOR			= D3DXCOLOR( 0.3, 0.3, 0.3, 1.0 )",
	"OUTLINE_COLOR		= D3DXCOLOR( 0.2, 0.2, 0.2, 0.0 )",
}

g_pStaticTextParty:AddString
{ 
    --MSG 				= "거래 요청",
	FONT_INDEX	= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 				= D3DXVECTOR2( 60, 40 )",
	"COLOR			= D3DXCOLOR( 0.3, 0.3, 0.3, 1.0 )",
	"OUTLINE_COLOR		= D3DXCOLOR( 0.2, 0.2, 0.2, 0.0 )",
}

g_pStaticTextParty:AddString
{ 
    --MSG 				= "길드 초대",
	FONT_INDEX	= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 				= D3DXVECTOR2( 60, 40 )",
	"COLOR			= D3DXCOLOR( 0.3, 0.3, 0.3, 1.0 )",
	"OUTLINE_COLOR		= D3DXCOLOR( 0.2, 0.2, 0.2, 0.0 )",
}
--[[ #define ADDED_RELATIONSHIP_SYSTEM
g_pStaticTextParty:AddString
{ 
    --MSG 				= "프로필 보기",
	FONT_INDEX	= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 				= D3DXVECTOR2( 60, 40 )",
	"COLOR			= D3DXCOLOR( 0.3, 0.3, 0.3, 1.0 )",
	"OUTLINE_COLOR		= D3DXCOLOR( 0.2, 0.2, 0.2, 0.0 )",
}
g_pStaticTextParty:AddString
{ 
    --MSG 				= "커플 신청",
	FONT_INDEX	= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 				= D3DXVECTOR2( 60, 40 )",
	"COLOR			= D3DXCOLOR( 0.3, 0.3, 0.3, 1.0 )",
	"OUTLINE_COLOR		= D3DXCOLOR( 0.2, 0.2, 0.2, 0.0 )",
}

g_pStaticTextParty:AddString
{ 
    --MSG 				= "소환 하기",
	FONT_INDEX	= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 				= D3DXVECTOR2( 60, 40 )",
	"COLOR			= D3DXCOLOR( 0.3, 0.3, 0.3, 1.0 )",
	"OUTLINE_COLOR		= D3DXCOLOR( 0.2, 0.2, 0.2, 0.0 )",
}
--]]

--BAR
g_pStaticBars = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticBars )
g_pStaticBars:SetName( "PopUpBar" )
g_pStaticBars:SetShowEnable( false, false )

g_pPicture_BAR = g_pUIDialog:CreatePicture()
g_pStaticBars:AddPicture( g_pPicture_BAR )
g_pPicture_BAR:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BAR" )
g_pPicture_BAR:SetIndex( 0 )
g_pPicture_BAR:SetShow( false )
g_pPicture_BAR:SetPoint
{
	ADD_SIZE_X 		= -55,
	"LEFT_TOP			= D3DXVECTOR2( 4, 37 )",
	"COLOR				= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BAR = g_pUIDialog:CreatePicture()
g_pStaticBars:AddPicture( g_pPicture_BAR )
g_pPicture_BAR:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BAR" )
g_pPicture_BAR:SetIndex( 1 )
g_pPicture_BAR:SetShow( false )
g_pPicture_BAR:SetPoint
{
	ADD_SIZE_X 		= -55,
	"LEFT_TOP			= D3DXVECTOR2( 4, 37 + 21 * 1 )",
	"COLOR				= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BAR = g_pUIDialog:CreatePicture()
g_pStaticBars:AddPicture( g_pPicture_BAR )
g_pPicture_BAR:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BAR" )
g_pPicture_BAR:SetIndex( 2 )
g_pPicture_BAR:SetShow( false )
g_pPicture_BAR:SetPoint
{
	ADD_SIZE_X 		= -55,
	"LEFT_TOP			= D3DXVECTOR2( 4, 37 + 21 * 2 )",
	"COLOR				= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BAR = g_pUIDialog:CreatePicture()
g_pStaticBars:AddPicture( g_pPicture_BAR )
g_pPicture_BAR:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BAR" )
g_pPicture_BAR:SetIndex( 3 )
g_pPicture_BAR:SetShow( false )
g_pPicture_BAR:SetPoint
{
	ADD_SIZE_X 		= -55,
	"LEFT_TOP			= D3DXVECTOR2( 4, 37 + 21 * 3 )",
	"COLOR				= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BAR = g_pUIDialog:CreatePicture()
g_pStaticBars:AddPicture( g_pPicture_BAR )
g_pPicture_BAR:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BAR" )
g_pPicture_BAR:SetIndex( 4 )
g_pPicture_BAR:SetShow( false )
g_pPicture_BAR:SetPoint
{
	ADD_SIZE_X 		= -55,
	"LEFT_TOP			= D3DXVECTOR2( 4, 37 + 21 * 4 )",
	"COLOR				= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BAR = g_pUIDialog:CreatePicture()
g_pStaticBars:AddPicture( g_pPicture_BAR )
g_pPicture_BAR:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BAR" )
g_pPicture_BAR:SetIndex( 5 )
g_pPicture_BAR:SetShow( false )
g_pPicture_BAR:SetPoint
{
	ADD_SIZE_X 		= -55,
	"LEFT_TOP			= D3DXVECTOR2( 4, 37 + 21 * 5 )",
	"COLOR				= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BAR = g_pUIDialog:CreatePicture()
g_pStaticBars:AddPicture( g_pPicture_BAR )
g_pPicture_BAR:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BAR" )
g_pPicture_BAR:SetIndex( 6 )
g_pPicture_BAR:SetShow( false )
g_pPicture_BAR:SetPoint
{
	ADD_SIZE_X 		= -55,
	"LEFT_TOP			= D3DXVECTOR2( 4, 37 + 21 * 6 )",
	"COLOR				= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BAR = g_pUIDialog:CreatePicture()
g_pStaticBars:AddPicture( g_pPicture_BAR )
g_pPicture_BAR:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BAR" )
g_pPicture_BAR:SetIndex( 7 )
g_pPicture_BAR:SetShow( false )
g_pPicture_BAR:SetPoint
{
	ADD_SIZE_X 		= -55,
	"LEFT_TOP			= D3DXVECTOR2( 4, 37 + 21 * 7 )",
	"COLOR				= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME		= 0.0,
}

--[[ #define ADDED_RELATIONSHIP_SYSTEM
g_pPicture_BAR = g_pUIDialog:CreatePicture()
g_pStaticBars:AddPicture( g_pPicture_BAR )
g_pPicture_BAR:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BAR" )
g_pPicture_BAR:SetIndex( 8 )
g_pPicture_BAR:SetShow( false )
g_pPicture_BAR:SetPoint
{
	ADD_SIZE_X 		= -55,
	"LEFT_TOP			= D3DXVECTOR2( 4, 37 + 21 * 8 )",
	"COLOR				= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BAR = g_pUIDialog:CreatePicture()
g_pStaticBars:AddPicture( g_pPicture_BAR )
g_pPicture_BAR:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BAR" )
g_pPicture_BAR:SetIndex( 9 )
g_pPicture_BAR:SetShow( false )
g_pPicture_BAR:SetPoint
{
	ADD_SIZE_X 		= -55,
	"LEFT_TOP			= D3DXVECTOR2( 4, 37 + 21 * 9 )",
	"COLOR				= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME		= 0.0,
}
--]]
--[[
g_pPicture_BAR = g_pUIDialog:CreatePicture()
g_pStaticBars:AddPicture( g_pPicture_BAR )
g_pPicture_BAR:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BAR" )
g_pPicture_BAR:SetIndex( 10 )
g_pPicture_BAR:SetShow( false )
g_pPicture_BAR:SetPoint
{
	ADD_SIZE_X 		= -55,
	"LEFT_TOP			= D3DXVECTOR2( 4, 37 + 21 * 10 )",
	"COLOR				= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME		= 0.0,
}
--]]

---------- 캐릭터정보 ----------
g_pButtonSimpleInfo = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSimpleInfo )
g_pButtonSimpleInfo:SetName( "character_info" )
g_pButtonSimpleInfo:SetNormalTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtonSimpleInfo:SetOverTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtonSimpleInfo:SetDownTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtonSimpleInfo:SetShowEnable( false, false )
g_pButtonSimpleInfo:SetNormalPoint
{
	ADD_SIZE_X 	= 28,
    "LEFT_TOP		= D3DXVECTOR2( 0, 37 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 0.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonSimpleInfo:SetOverPoint
{
	ADD_SIZE_X 	= 28,
    "LEFT_TOP		= D3DXVECTOR2( 0, 37 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonSimpleInfo:SetDownPoint
{
	ADD_SIZE_X	= 26,
	ADD_SIZE_Y	= -2,
 	"LEFT_TOP		= D3DXVECTOR2( 0, 37 + 1 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonSimpleInfo:SetCustomMsgMouseUp( USER_MENU_UI_MSG["UMUI_INFO_SIMPLE"] )

---------- 유저 정보 ----------
g_pButtoninfo = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtoninfo )
g_pButtoninfo:SetName( "info" )
g_pButtoninfo:SetNormalTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtoninfo:SetOverTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtoninfo:SetDownTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtoninfo:SetNormalPoint
{
	ADD_SIZE_X 	= 28,
    "LEFT_TOP		= D3DXVECTOR2( 0, 37 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 0.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtoninfo:SetOverPoint
{
	ADD_SIZE_X 	= 28,
    "LEFT_TOP		= D3DXVECTOR2( 0, 37 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtoninfo:SetDownPoint
{
	ADD_SIZE_X	= 26,
	ADD_SIZE_Y	= -2,
 	"LEFT_TOP		= D3DXVECTOR2( 0, 37 + 1 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtoninfo:SetCustomMsgMouseUp( USER_MENU_UI_MSG["UMUI_INFO"] )

---------- 살펴보기 ----------
g_pButtonwatch = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonwatch )
g_pButtonwatch:SetName( "watch" )
g_pButtonwatch:SetNormalTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtonwatch:SetOverTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtonwatch:SetDownTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtonwatch:SetShowEnable( false, false )
g_pButtonwatch:SetNormalPoint
{
	ADD_SIZE_X 	= 28,
    "LEFT_TOP		= D3DXVECTOR2( 0, 37 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 0.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonwatch:SetOverPoint
{
	ADD_SIZE_X 	= 28,
    "LEFT_TOP		= D3DXVECTOR2( 0, 37 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonwatch:SetDownPoint
{
	ADD_SIZE_X	= 26,
	ADD_SIZE_Y	= -2,
 	"LEFT_TOP		= D3DXVECTOR2( 0, 37 + 1 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonwatch:SetCustomMsgMouseUp( USER_MENU_UI_MSG["UMUI_WATCH"] )

---------- 귓속말 ----------
g_pButtonwhisper = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonwhisper )
g_pButtonwhisper:SetName( "whisper" )
g_pButtonwhisper:SetNormalTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtonwhisper:SetOverTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtonwhisper:SetDownTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtonwhisper:SetShowEnable( false, false )
g_pButtonwhisper:SetNormalPoint
{
	ADD_SIZE_X 	= 28,
    "LEFT_TOP		= D3DXVECTOR2( 0, 37 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 0.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonwhisper:SetOverPoint
{
	ADD_SIZE_X 	= 28,
    "LEFT_TOP		= D3DXVECTOR2( 0, 37 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonwhisper:SetDownPoint
{
	ADD_SIZE_X	= 26,
	ADD_SIZE_Y	= -2,
 	"LEFT_TOP		= D3DXVECTOR2( 0, 37 + 1 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonwhisper:SetCustomMsgMouseUp( USER_MENU_UI_MSG["UMUI_WHISPER"] )

---------- 친구요청 ---------- 
g_pButtonfriend = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonfriend )
g_pButtonfriend:SetName( "friend" )
g_pButtonfriend:SetNormalTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtonfriend:SetOverTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtonfriend:SetDownTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtonfriend:SetShowEnable( false, false )
g_pButtonfriend:SetNormalPoint
{
	ADD_SIZE_X 	= 28,
    "LEFT_TOP		= D3DXVECTOR2( 0, 37 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 0.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonfriend:SetOverPoint
{
	ADD_SIZE_X 	= 28,
    "LEFT_TOP		= D3DXVECTOR2( 0, 37 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonfriend:SetDownPoint
{
	ADD_SIZE_X	= 26,
	ADD_SIZE_Y	= -2,
 	"LEFT_TOP		= D3DXVECTOR2( 0, 37 + 1 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonfriend:SetCustomMsgMouseUp( USER_MENU_UI_MSG["UMUI_FRIEND"] )

---------- 사제요청 ----------
g_pButtondisciple = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtondisciple )
g_pButtondisciple:SetName( "disciple" )
g_pButtondisciple:SetNormalTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtondisciple:SetOverTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtondisciple:SetDownTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtondisciple:SetShowEnable( false, false )
g_pButtondisciple:SetNormalPoint
{
	ADD_SIZE_X 	= 28,
    "LEFT_TOP		= D3DXVECTOR2( 0, 37 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 0.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtondisciple:SetOverPoint
{
	ADD_SIZE_X 	= 28,
    "LEFT_TOP		= D3DXVECTOR2( 0, 37 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtondisciple:SetDownPoint
{
	ADD_SIZE_X	= 26,
	ADD_SIZE_Y	= -2,
 	"LEFT_TOP		= D3DXVECTOR2( 0, 37 + 1 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtondisciple:SetCustomMsgMouseUp( USER_MENU_UI_MSG["UMUI_DISCIPLE"] )

---------- 파티장임명 ----------
g_pButtonleader = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonleader )
g_pButtonleader:SetName( "leader" )
g_pButtonleader:SetNormalTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtonleader:SetOverTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtonleader:SetDownTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtonleader:SetShowEnable( false, false )
g_pButtonleader:SetNormalPoint
{
	ADD_SIZE_X 	= 28,
    "LEFT_TOP		= D3DXVECTOR2( 0, 37 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 0.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonleader:SetOverPoint
{
	ADD_SIZE_X 	= 28,
    "LEFT_TOP		= D3DXVECTOR2( 0, 37 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonleader:SetDownPoint
{
	ADD_SIZE_X	= 26,
	ADD_SIZE_Y	= -2,
 	"LEFT_TOP		= D3DXVECTOR2( 0, 37 + 1 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonleader:SetCustomMsgMouseUp( USER_MENU_UI_MSG["UMUI_LEADER"] )

---------- 파티요청 ----------
g_pButtonparty = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonparty )
g_pButtonparty:SetName( "party" )
g_pButtonparty:SetNormalTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtonparty:SetOverTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtonparty:SetDownTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtonparty:SetShowEnable( false, false )
g_pButtonparty:SetNormalPoint
{
    ADD_SIZE_X 	= 28,
    "LEFT_TOP		= D3DXVECTOR2( 0, 37 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 0.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonparty:SetOverPoint
{
	ADD_SIZE_X 	= 28,
    "LEFT_TOP		= D3DXVECTOR2( 0, 37 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonparty:SetDownPoint
{
	ADD_SIZE_X	= 26,
	ADD_SIZE_Y	= -2,
 	"LEFT_TOP		= D3DXVECTOR2( 0, 37 + 1 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonparty:SetCustomMsgMouseUp( USER_MENU_UI_MSG["UMUI_PARTY"] )

---------- 파티초대 ----------
g_pButtoninvite = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtoninvite )
g_pButtoninvite:SetName( "invite" )
g_pButtoninvite:SetNormalTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtoninvite:SetOverTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtoninvite:SetDownTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtoninvite:SetShowEnable( false, false )
g_pButtoninvite:SetNormalPoint
{
	ADD_SIZE_X 	= 28,
    "LEFT_TOP		= D3DXVECTOR2( 0, 37 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 0.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtoninvite:SetOverPoint
{
	ADD_SIZE_X 	= 28,
    "LEFT_TOP		= D3DXVECTOR2( 0, 37 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtoninvite:SetDownPoint
{
	ADD_SIZE_X	= 26,
	ADD_SIZE_Y	= -2,
 	"LEFT_TOP		= D3DXVECTOR2( 0, 37 + 1 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtoninvite:SetCustomMsgMouseUp( USER_MENU_UI_MSG["UMUI_INVITE"] )

---------- 강퇴 ----------
g_pButtonout = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonout )
g_pButtonout:SetName( "out" )
g_pButtonout:SetNormalTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtonout:SetOverTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtonout:SetDownTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtonout:SetShowEnable( false, false )
g_pButtonout:SetNormalPoint
{
	ADD_SIZE_X 	= 28,
    "LEFT_TOP		= D3DXVECTOR2( 0, 37 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 0.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonout:SetOverPoint
{
	ADD_SIZE_X 	= 28,
    "LEFT_TOP		= D3DXVECTOR2( 0, 37 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonout:SetDownPoint
{
	ADD_SIZE_X	= 26,
	ADD_SIZE_Y	= -2,
 	"LEFT_TOP		= D3DXVECTOR2( 0, 37 + 1 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonout:SetCustomMsgMouseUp( USER_MENU_UI_MSG["UMUI_OUT"] )

---------- 개인거래 ----------
g_pButtontrade = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtontrade )
g_pButtontrade:SetName( "trade" )
g_pButtontrade:SetNormalTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtontrade:SetOverTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtontrade:SetDownTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtontrade:SetShowEnable( false, false )
g_pButtontrade:SetNormalPoint
{
	ADD_SIZE_X 	= 28,
    "LEFT_TOP		= D3DXVECTOR2( 0, 37 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 0.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtontrade:SetOverPoint
{
	ADD_SIZE_X 	= 28,
    "LEFT_TOP		= D3DXVECTOR2( 0, 37 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtontrade:SetDownPoint
{
	ADD_SIZE_X	= 26,
	ADD_SIZE_Y	= -2,
 	"LEFT_TOP		= D3DXVECTOR2( 0, 37 + 1 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtontrade:SetCustomMsgMouseUp( USER_MENU_UI_MSG["UMUI_TRADE"] )

--[[ #define ADDED_RELATIONSHIP_SYSTEM
---------- 커플신청 ----------
g_pButtonCouple = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCouple )
g_pButtonCouple:SetName( "relation" )
g_pButtonCouple:SetNormalTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtonCouple:SetOverTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtonCouple:SetDownTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtonCouple:SetShowEnable( false, false )
g_pButtonCouple:SetNormalPoint
{
	ADD_SIZE_X 	= 28,
    "LEFT_TOP		= D3DXVECTOR2( 0, 37 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 0.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonCouple:SetOverPoint
{
	ADD_SIZE_X 	= 28,
    "LEFT_TOP		= D3DXVECTOR2( 0, 37 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonCouple:SetDownPoint
{
	ADD_SIZE_X	= 26,
	ADD_SIZE_Y	= -2,
 	"LEFT_TOP		= D3DXVECTOR2( 0, 37 + 1 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonCouple:SetCustomMsgMouseUp( USER_MENU_UI_MSG["UMUI_COUPLE"] )

---------- 커플소환 ----------
g_pButtonSummon = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSummon )
g_pButtonSummon:SetName( "summon" )
g_pButtonSummon:SetNormalTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtonSummon:SetOverTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtonSummon:SetDownTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtonSummon:SetShowEnable( false, false )
g_pButtonSummon:SetNormalPoint
{
	ADD_SIZE_X 	= 28,
    "LEFT_TOP		= D3DXVECTOR2( 0, 37 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 0.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonSummon:SetOverPoint
{
	ADD_SIZE_X 	= 28,
    "LEFT_TOP		= D3DXVECTOR2( 0, 37 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonSummon:SetDownPoint
{
	ADD_SIZE_X	= 26,
	ADD_SIZE_Y	= -2,
 	"LEFT_TOP		= D3DXVECTOR2( 0, 37 + 1 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonSummon:SetCustomMsgMouseUp( USER_MENU_UI_MSG["UMUI_SUMMON"] )
--]]

---------- 길드초대 ----------
g_pButtonInvite = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonInvite )
g_pButtonInvite:SetName( "inviteguild" )
g_pButtonInvite:SetNormalTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtonInvite:SetOverTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtonInvite:SetDownTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtonInvite:SetShowEnable( false, false )
g_pButtonInvite:SetNormalPoint
{
    ADD_SIZE_X 	= 28,
    "LEFT_TOP		= D3DXVECTOR2( 0, 37 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 0.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonInvite:SetOverPoint
{
	ADD_SIZE_X 	= 28,
    "LEFT_TOP		= D3DXVECTOR2( 0, 37 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonInvite:SetDownPoint
{
	ADD_SIZE_X	= 26,
	ADD_SIZE_Y	= -2,
 	"LEFT_TOP		= D3DXVECTOR2( 0, 37 + 1 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonInvite:SetCustomMsgMouseUp( USER_MENU_UI_MSG["UMUI_INVITE_GUILD_MEMBER"] )

-----파티소속 필드로 이동
--------------- 버튼 글씨_Gage
g_pStaticText = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticText )
g_pStaticText:SetName( "MyPopUp" )
g_pStaticText:SetShowEnable( false, false )

g_pStaticText:AddString
{ 
    --MSG 			= "파티 소속필드로 이동",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2( 61, 14 )",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.2,0.2,0.2,0.0)",
}

g_pStaticText:AddString
{ 
    --MSG 			= "파티원 추가",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2( 61, 35 )",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.2,0.2,0.2,0.0)",
}

g_pStaticText:AddString
{ 
    --MSG 			= "파티 탈퇴",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2( 61, 11+46 )",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.2,0.2,0.2,0.0)",
}
----------

--------- 파티 소속필드로 이동 ---------
g_pButtonMovetoParty = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMovetoParty )
g_pButtonMovetoParty:SetName( "MovetoParty" )
g_pButtonMovetoParty:SetNormalTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtonMovetoParty:SetOverTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtonMovetoParty:SetDownTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtonMovetoParty:SetNormalPoint
{
	ADD_SIZE_X	= 28,
    "LEFT_TOP	= D3DXVECTOR2( 0, 8 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 0.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonMovetoParty:SetOverPoint
{
    ADD_SIZE_X 	= 28,
    "LEFT_TOP	= D3DXVECTOR2( 0, 8 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonMovetoParty:SetDownPoint
{
    ADD_SIZE_X	= 26,
    ADD_SIZE_Y	= -2,
 	"LEFT_TOP	= D3DXVECTOR2( 0, 8 + 1 )",
	"COLOR		= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonMovetoParty:SetCustomMsgMouseUp( USER_MENU_UI_MSG["UMUI_MOVE_TO_PARTY"] )

--------- 파티원 추가 ---------
g_pButtonAddParty = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonAddParty )
g_pButtonAddParty:SetName( "AddParty" )
g_pButtonAddParty:SetNormalTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtonAddParty:SetOverTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtonAddParty:SetDownTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtonAddParty:SetNormalPoint
{
	ADD_SIZE_X	= 28,
    "LEFT_TOP		= D3DXVECTOR2( 0, 29 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 0.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonAddParty:SetOverPoint
{
    ADD_SIZE_X 	= 28,
	"LEFT_TOP		= D3DXVECTOR2( 0, 29 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonAddParty:SetDownPoint
{
     ADD_SIZE_X	= 26,
     ADD_SIZE_Y	= -2,
 	"LEFT_TOP		= D3DXVECTOR2( 0, 29 + 1 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonAddParty:SetCustomMsgMouseUp( USER_MENU_UI_MSG["UMUI_INPUT_PARTY"] )

--------- 파티 탈퇴 ---------
g_pButtonDropOut = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonDropOut )
g_pButtonDropOut:SetName( "DropOut" )
g_pButtonDropOut:SetNormalTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtonDropOut:SetOverTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtonDropOut:SetDownTex( "DLG_UI_BUTTON19_NEW.tga", "OPTION_OVER" )
g_pButtonDropOut:SetNormalPoint
{
	ADD_SIZE_X 	= 28,
    "LEFT_TOP		= D3DXVECTOR2( 0, 29 + 21 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 0.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonDropOut:SetOverPoint
{
    ADD_SIZE_X 	= 28,
    "LEFT_TOP		= D3DXVECTOR2( 0, 29 + 21 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonDropOut:SetDownPoint
{
      ADD_SIZE_X	= 26,
     ADD_SIZE_Y	= -2,
 	"LEFT_TOP		= D3DXVECTOR2( 0, 29 + 21 + 1 )",
	"COLOR			= D3DXCOLOR( 1.0, 1.0, 1.0, 1.0 )",
	CHANGE_TIME	= 0.0,
}
g_pButtonDropOut:SetCustomMsgMouseUp( USER_MENU_UI_MSG["UMUI_DROP_OUT"] )

----초대할 유저의 닉네임을 입력하세요
g_pStaticuser_party = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticuser_party )
g_pStaticuser_party:SetName( "user_party" )
g_pStaticuser_party:SetShowEnable( false, false )

---------BG
g_pPicture_party_bg = g_pUIDialog:CreatePicture()
g_pStaticuser_party:AddPicture( g_pPicture_party_bg )
g_pPicture_party_bg:SetTex( "DLG_UI_Common_Texture65_NEW.TGA", "BG_PARTY_INVITE" )
g_pPicture_party_bg:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---유저 네임 텍스트 입력 박스
g_pIMEPartyName = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIMEPartyName )
g_pIMEPartyName:SetName( "IMEPartyName" )
g_pIMEPartyName:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP				= D3DXVECTOR2( 8, 19 )",
	"RIGHT_BOTTOM		= D3DXVECTOR2( 157,32 )",
	"COLOR					= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pIMEPartyName:SetFont( XF_DODUM_11_NORMAL )
g_pIMEPartyName:SetTextColor( 1.0, 1.0, 1.0, 1.0 )
g_pIMEPartyName:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEPartyName:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIMEPartyName:SetCaretColor( 1.0, 1.0, 1.0, 1.0 )
g_pIMEPartyName:SetCustomMsgEnter( USER_MENU_UI_MSG["UMUI_INVITE_PARTY_NAME"] )
	
--- X 버튼
g_pButton_Exit = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Exit )
g_pButton_Exit:SetName( "Exit" )
g_pButton_Exit:SetNormalTex( "DLG_UI_Common_Texture65_NEW.TGA", "BT_PARTY_INVITE_X_NORMAL" )
g_pButton_Exit:SetOverTex( "DLG_UI_Common_Texture65_NEW.TGA", "BT_PARTY_INVITE_X_OVER" )
g_pButton_Exit:SetDownTex( "DLG_UI_Common_Texture65_NEW.TGA", "BT_PARTY_INVITE_X_OVER" )
g_pButton_Exit:SetNormalPoint
{
    "LEFT_TOP		= D3DXVECTOR2(145,4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_Exit:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(146-2,3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
g_pButton_Exit:SetDownPoint
{
     ADD_SIZE_X=-1,
	 ADD_SIZE_Y=-1,
 	"LEFT_TOP		= D3DXVECTOR2(146-1,3)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Exit:SetCustomMsgMouseUp( USER_MENU_UI_MSG["UMUI_EXIT"] )

--솔레스
g_pRadioButton = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton )
g_pRadioButton:SetFixOverByCheck( true ) 
g_pRadioButton:SetShowOffBGByCheck( true )
g_pRadioButton:SetName( "Soles" )
g_pRadioButton:SetNormalTex( "DLG_UI_Common_Texture65_NEW.tga", "BT_SOLES_INACTIVITY" )
g_pRadioButton:SetOverTex( "DLG_UI_Common_Texture65_NEW.tga", "BT_SOLES_NORMAL" )
g_pRadioButton:SetCheckedTex( "DLG_UI_Common_Texture65_NEW.tga", "BT_SOLES_OVER" )
g_pRadioButton:SetBGPoint
{
    "LEFT_TOP		= D3DXVECTOR2(8,37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton:SetBGMouseOverPoint
{
    "LEFT_TOP		= D3DXVECTOR2(8,37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(8,37)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(8+75,37+20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton:SetCheckPoint
{
	"LEFT_TOP		= D3DXVECTOR2(8,37)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton:SetGroupID( 1 )
g_pRadioButton:SetCustomMsgChecked( USER_MENU_UI_MSG["UMUI_SELECT_INVITE_MEMBER_SEVER"] )


--가이아
g_pRadioButton = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton )
g_pRadioButton:SetFixOverByCheck( true ) 
g_pRadioButton:SetShowOffBGByCheck( true )
g_pRadioButton:SetName( "Gaia" )
g_pRadioButton:SetNormalTex( "DLG_UI_Common_Texture65_NEW.tga", "BT_GAIA_INACTIVITY" )
g_pRadioButton:SetOverTex( "DLG_UI_Common_Texture65_NEW.tga", "BT_GAIA_NORMAL" )
g_pRadioButton:SetCheckedTex( "DLG_UI_Common_Texture65_NEW.tga", "BT_GAIA_OVER" )
g_pRadioButton:SetBGPoint
{
    "LEFT_TOP		= D3DXVECTOR2(85,37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton:SetBGMouseOverPoint
{
    "LEFT_TOP		= D3DXVECTOR2(85,37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(85,37)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(85+75,37+20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton:SetCheckPoint
{
	"LEFT_TOP		= D3DXVECTOR2(85,37)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton:SetGroupID( 1 )
g_pRadioButton:SetCustomMsgChecked( USER_MENU_UI_MSG["UMUI_SELECT_INVITE_MEMBER_SEVER"] )

