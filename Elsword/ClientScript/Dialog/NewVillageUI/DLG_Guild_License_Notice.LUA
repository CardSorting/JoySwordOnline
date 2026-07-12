-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "Guild_Create" )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_GAME_EDIT"] )
g_pUIDialog:SetCloseCustomUIEventID( GUILD_UI_MESSAGE["GUM_GUILD_NOTICE_OK"] )



g_pStaticGuild_License_Notice = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGuild_License_Notice )
g_pStaticGuild_License_Notice:SetName( "Guild_License_Notice" )




-----기본 BG

g_pPicture_BG = g_pUIDialog:CreatePicture()
g_pStaticGuild_License_Notice:AddPicture( g_pPicture_BG )

g_pPicture_BG:SetTex( "DLG_UI_Common_Texture19.TGA", "BG01" )

g_pPicture_BG:SetPoint
{
     ADD_SIZE_Y = 218,
	"LEFT_TOP		= D3DXVECTOR2(87,19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BG = g_pUIDialog:CreatePicture()
g_pStaticGuild_License_Notice:AddPicture( g_pPicture_BG )

g_pPicture_BG:SetTex( "DLG_UI_Common_Texture20.TGA", "BG02" )

g_pPicture_BG:SetPoint
{
     ADD_SIZE_Y = 218,
	"LEFT_TOP		= D3DXVECTOR2(599,19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


------- 타이틀

g_pPicture_Title_BG = g_pUIDialog:CreatePicture()
g_pStaticGuild_License_Notice:AddPicture( g_pPicture_Title_BG )

g_pPicture_Title_BG:SetTex( "DLG_UI_Common_Texture11.TGA", "Guide_Title_BG" )

g_pPicture_Title_BG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(294,47)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_Title = g_pUIDialog:CreatePicture()
g_pStaticGuild_License_Notice:AddPicture( g_pPicture_Title )

g_pPicture_Title:SetTex( "DLG_UI_Title02.tga", "Guild_License_Title" )

g_pPicture_Title:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(410,66)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

-------------------------------------------- 확인단계 -------------------------------------------------------


-----주의사항 BG1
g_pPicture_BG = g_pUIDialog:CreatePicture()
g_pStaticGuild_License_Notice:AddPicture( g_pPicture_BG )

g_pPicture_BG:SetTex( "DLG_UI_Common_Texture20.TGA", "BOX_BG_LEFT" )

g_pPicture_BG:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(194,205)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BG = g_pUIDialog:CreatePicture()
g_pStaticGuild_License_Notice:AddPicture( g_pPicture_BG )

g_pPicture_BG:SetTex( "DLG_UI_Common_Texture20.TGA", "BOX_BG_CENTER" )

g_pPicture_BG:SetPoint
{
     ADD_SIZE_X = 619,
	"LEFT_TOP		= D3DXVECTOR2(201,205)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_BG = g_pUIDialog:CreatePicture()
g_pStaticGuild_License_Notice:AddPicture( g_pPicture_BG )

g_pPicture_BG:SetTex( "DLG_UI_Common_Texture20.TGA", "BOX_BG_RIGHT" )

g_pPicture_BG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(822,205)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}



-----주의사항 BG2
g_pPicture_BG = g_pUIDialog:CreatePicture()
g_pStaticGuild_License_Notice:AddPicture( g_pPicture_BG )

g_pPicture_BG:SetTex( "DLG_UI_Common_Texture20.TGA", "BOX_BG_LEFT" )

g_pPicture_BG:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(194,308)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BG = g_pUIDialog:CreatePicture()
g_pStaticGuild_License_Notice:AddPicture( g_pPicture_BG )

g_pPicture_BG:SetTex( "DLG_UI_Common_Texture20.TGA", "BOX_BG_CENTER" )

g_pPicture_BG:SetPoint
{
     ADD_SIZE_X = 619,
	"LEFT_TOP		= D3DXVECTOR2(201,308)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_BG = g_pUIDialog:CreatePicture()
g_pStaticGuild_License_Notice:AddPicture( g_pPicture_BG )

g_pPicture_BG:SetTex( "DLG_UI_Common_Texture20.TGA", "BOX_BG_RIGHT" )

g_pPicture_BG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(822,308)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}




-----주의사항 BG3
g_pPicture_BG = g_pUIDialog:CreatePicture()
g_pStaticGuild_License_Notice:AddPicture( g_pPicture_BG )

g_pPicture_BG:SetTex( "DLG_UI_Common_Texture20.TGA", "BOX_BG_LEFT" )

g_pPicture_BG:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(194,411)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BG = g_pUIDialog:CreatePicture()
g_pStaticGuild_License_Notice:AddPicture( g_pPicture_BG )

g_pPicture_BG:SetTex( "DLG_UI_Common_Texture20.TGA", "BOX_BG_CENTER" )

g_pPicture_BG:SetPoint
{
     ADD_SIZE_X = 619,
	"LEFT_TOP		= D3DXVECTOR2(201,411)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_BG = g_pUIDialog:CreatePicture()
g_pStaticGuild_License_Notice:AddPicture( g_pPicture_BG )

g_pPicture_BG:SetTex( "DLG_UI_Common_Texture20.TGA", "BOX_BG_RIGHT" )

g_pPicture_BG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(822,411)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}


-----------길드마스터 닉네임 BG

g_pPicture_BG = g_pUIDialog:CreatePicture()
g_pStaticGuild_License_Notice:AddPicture( g_pPicture_BG )

g_pPicture_BG:SetTex( "DLG_UI_Common_Texture17.TGA", "Frame_bg" )

g_pPicture_BG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(422,562)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----- Numbers BG
g_pPicture_BG = g_pUIDialog:CreatePicture()
g_pStaticGuild_License_Notice:AddPicture( g_pPicture_BG )

g_pPicture_BG:SetTex( "DLG_UI_Common_Texture11.TGA", "ROUND_BG" )

g_pPicture_BG:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(205,215)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BG = g_pUIDialog:CreatePicture()
g_pStaticGuild_License_Notice:AddPicture( g_pPicture_BG )

g_pPicture_BG:SetTex( "DLG_UI_Common_Texture11.TGA", "ROUND_BG" )

g_pPicture_BG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(205,318)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_BG = g_pUIDialog:CreatePicture()
g_pStaticGuild_License_Notice:AddPicture( g_pPicture_BG )

g_pPicture_BG:SetTex( "DLG_UI_Common_Texture11.TGA", "ROUND_BG" )

g_pPicture_BG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(205,421)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}

----- Numbers
g_pPicture_BG = g_pUIDialog:CreatePicture()
g_pStaticGuild_License_Notice:AddPicture( g_pPicture_BG )

g_pPicture_BG:SetTex( "DLG_UI_Common_Texture20.TGA", "01" )

g_pPicture_BG:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(225,223)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BG = g_pUIDialog:CreatePicture()
g_pStaticGuild_License_Notice:AddPicture( g_pPicture_BG )

g_pPicture_BG:SetTex( "DLG_UI_Common_Texture20.TGA", "02" )

g_pPicture_BG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(220,326)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_BG = g_pUIDialog:CreatePicture()
g_pStaticGuild_License_Notice:AddPicture( g_pPicture_BG )

g_pPicture_BG:SetTex( "DLG_UI_Common_Texture20.TGA", "03" )

g_pPicture_BG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(220,429)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






---------------------------------------------------------------------------------------------------
---------------------------------------     TEXT       ----------------------------------------------

g_pStatic_Notice = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Notice )
g_pStatic_Notice:SetName( "Static_Notice" )


------------길드네임 ------------

g_pStatic_Notice:AddString
{
	--MSG 			= "[엘소드완전사랑]길드",
	----	소스코드에서 저장
	FONT_INDEX		= XUF_DODUM_20_BOLD,
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(512,142)",
	"COLOR			= D3DXCOLOR(0.5,0.9,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.1,0.2,0.1,1.0)",
}



g_pStatic_Notice:AddString
{
	--MSG 			= "창단을 진심으로 축하드립니다!",
	MSG				= STR_ID_4738,
	FONT_INDEX		= XUF_DODUM_20_BOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(512,171)",
	"COLOR			= D3DXCOLOR(0.8,0.2,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pStatic_Notice:AddString
{
	--MSG 			= "위의 사항들을 잘 숙지 하시어 엘리오스 대륙 최고의 길드가 되기시를 기원합니다.",
	MSG				= STR_ID_4739,
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(512,523)",
	"COLOR			= D3DXCOLOR(0.8,0.2,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}



------------------ 길드 가이드 ----------------------


g_pStatic_Notice:AddString
{
	--MSG 			= "길드마스터란",
	MSG				= STR_ID_4740,
	FONT_INDEX		= XUF_DODUM_20_BOLD,
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(278,220)",
	"COLOR			= D3DXCOLOR(0.9,0.6,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.3,0.1,0.1,1.0)",
}

g_pStatic_Notice:AddString
{
	--MSG 			= "커뮤니티의 길드 메뉴에서",
	MSG				= STR_ID_4741,
	FONT_INDEX		= XUF_DODUM_20_BOLD,
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(278,323)",
	"COLOR			= D3DXCOLOR(0.9,0.6,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.3,0.1,0.1,1.0)",
}


g_pStatic_Notice:AddString
{
	--MSG 			= "길드원은",
	MSG				= STR_ID_4742,
	FONT_INDEX		= XUF_DODUM_20_BOLD,
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(278,425)",
	"COLOR			= D3DXCOLOR(0.9,0.6,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.3,0.1,0.1,1.0)",
}


g_pStatic_Notice:AddString
{
	--MSG 			= "길드마스터는 길드원들과 함께 떠나는 모험에서 가장 힘든 역할을 수행해야\n합니다.동료들과 함께 모험을 떠날 준비가 되었습니까?",
	MSG				= STR_ID_4743,
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(281,247)",
	"COLOR			= D3DXCOLOR(0.4,0.1,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStatic_Notice:AddString
{
	--MSG 			= "길드원의 초대와 등급 설정을 할 수 있습니다.\n3개월 동안 단 한 명의 길드원도 접속하지 않는 경우,길드는 자동 해산 됩니다. ",
	MSG				= STR_ID_4744,
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(281,350)",
	"COLOR			= D3DXCOLOR(0.4,0.1,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStatic_Notice:AddString
{
	--MSG 			= "자신들과 같이 모험을 떠나는 소중한 동료입니다.\n서로 예의를 지킬수록 즐거운 길드 생활이 될 것입니다.",
	MSG				= STR_ID_4745,
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(281,452)",
	"COLOR			= D3DXCOLOR(0.4,0.1,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}




-------------------------길드마스터 닉네임 ------------------------

g_pStatic_Notice:AddString
{
	--MSG 			= "길드마스터",
	MSG				= STR_ID_4746,
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(512,582)",
	"COLOR			= D3DXCOLOR(0.4,0.1,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pStatic_MasterName = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_MasterName )
g_pStatic_MasterName:SetName( "Static_MasterName" )

g_pStatic_MasterName:AddString
{
	--MSG 			= "엘소드지존",
	----	소스코드에서 저장
	FONT_INDEX		= XUF_DODUM_20_BOLD,
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(512,600)",
	"COLOR			= D3DXCOLOR(0.5,0.9,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.1,0.2,0.1,1.0)",
}





---------------------------  버튼 ---------------------------------

-----확인버튼 
g_pButton_OK= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_OK)
g_pButton_OK:SetName( "Button_OK" )
g_pButton_OK:SetNormalTex( "DLG_UI_BUTTON14.tga", "Confirm_Normal" )

g_pButton_OK:SetOverTex( "DLG_UI_BUTTON14.tga", "Confirm_OVer" )

g_pButton_OK:SetDownTex( "DLG_UI_BUTTON14.tga", "Confirm_OVer" )

g_pButton_OK:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(740,590)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_OK:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(740,590)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_OK:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(740+1,590+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_OK:SetCustomMsgMouseUp( GUILD_UI_MESSAGE["GUM_GUILD_NOTICE_OK"] )