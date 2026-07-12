-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetName( "Guild_Create" )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_GAME_EDIT"] )
g_pUIDialog:SetCloseCustomUIEventID( GUILD_UI_MESSAGE["GUM_GUILD_NAME_CANCEL"] )




g_pStaticGuild_License_Establish = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticGuild_License_Establish )
g_pStaticGuild_License_Establish:SetName( "Guild_License_Establish" )




-----기본 BG

g_pPicture_BG = g_pUIDialog:CreatePicture()
g_pStaticGuild_License_Establish:AddPicture( g_pPicture_BG )

g_pPicture_BG:SetTex( "DLG_UI_Common_Texture19.TGA", "BG01" )

g_pPicture_BG:SetPoint
{
     ADD_SIZE_Y = 218,
	"LEFT_TOP		= D3DXVECTOR2(87,19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BG = g_pUIDialog:CreatePicture()
g_pStaticGuild_License_Establish:AddPicture( g_pPicture_BG )

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
g_pStaticGuild_License_Establish:AddPicture( g_pPicture_Title_BG )

g_pPicture_Title_BG:SetTex( "DLG_UI_Common_Texture11.TGA", "Guide_Title_BG" )

g_pPicture_Title_BG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(294,47)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_Title = g_pUIDialog:CreatePicture()
g_pStaticGuild_License_Establish:AddPicture( g_pPicture_Title )

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

-------------------------------------------- 창설단계 -------------------------------------------------------


-----길드명 입력창 BG

g_pPicture_BG = g_pUIDialog:CreatePicture()
g_pStaticGuild_License_Establish:AddPicture( g_pPicture_BG )

g_pPicture_BG:SetTex( "DLG_UI_Common_Texture20.TGA", "BOX_LEFT" )

g_pPicture_BG:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(305,325-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BG = g_pUIDialog:CreatePicture()
g_pStaticGuild_License_Establish:AddPicture( g_pPicture_BG )

g_pPicture_BG:SetTex( "DLG_UI_Common_Texture20.TGA", "BOX_CENTER" )

g_pPicture_BG:SetPoint
{
     ADD_SIZE_X = 291,
	"LEFT_TOP		= D3DXVECTOR2(366,325-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_BG = g_pUIDialog:CreatePicture()
g_pStaticGuild_License_Establish:AddPicture( g_pPicture_BG )

g_pPicture_BG:SetTex( "DLG_UI_Common_Texture20.TGA", "BOX_RIGHT" )

g_pPicture_BG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(659,325-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_BAR = g_pUIDialog:CreatePicture()
g_pStaticGuild_License_Establish:AddPicture( g_pPicture_BAR )

g_pPicture_BAR:SetTex( "DLG_UI_Common_Texture17.TGA", "BAR" )

g_pPicture_BAR:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(395,255)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_BAR = g_pUIDialog:CreatePicture()
g_pStaticGuild_License_Establish:AddPicture( g_pPicture_BAR )

g_pPicture_BAR:SetTex( "DLG_UI_Common_Texture17.TGA", "BAR" )

g_pPicture_BAR:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(395,558)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




---------------------------------------     TEXT       ----------------------------------------------

g_pStatic_Notice = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Notice )
g_pStatic_Notice:SetName( "Static_Notice" )

g_pStatic_Notice:AddString
{
	--MSG 			= "길드를 창설할 수 있는 권한을 부여하는 증서입니다.",
	MSG				= STR_ID_4734,
	FONT_INDEX		= XUF_DODUM_20_BOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(512,187)",
	"COLOR			= D3DXCOLOR(0.8,0.2,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pStatic_Notice:AddString
{
	--MSG 			= "- 벨더 공국 발행",
	MSG				= STR_ID_4735,
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(512,214)",
	"COLOR			= D3DXCOLOR(0.8,0.2,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pStatic_Notice:AddString
{
	--MSG 			= "창설을 원하는 길드 이름을 입력하세요.",
	MSG				= STR_ID_4736,
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(512,301-15)",
	"COLOR			= D3DXCOLOR(0.4,0.1,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStatic_Notice:AddString
{
	--MSG 			= "◈ 영어는 14자까지, 한글은 7자까지 입력이 가능합니다.\n◈ #$%& 같은 특수문자는 사용할 수 없습니다.\n◈ 띄어 쓰기를 사용할 수 없습니다.\n◈ 확인을 누르시면 다시 되돌릴 수 없으므로 신중히\n    결정해 주시기 바랍니다. ",
	MSG				= STR_ID_4737,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(341-100,438-15)",
	"COLOR			= D3DXCOLOR(0.4,0.1,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


--닉네임 입력--
	
g_pIME_Guildname= g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIME_Guildname )
g_pIME_Guildname:SetName( "IME_Guildname" )
g_pIME_Guildname:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(369,365-15)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(369+200,365+16-15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIME_Guildname:SetFont( XF_DODUM_15_NORMAL )
g_pIME_Guildname:SetTextColor( 0.4,0.1,0.1,1.0 )
g_pIME_Guildname:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_Guildname:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIME_Guildname:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )
g_pIME_Guildname:SetByteLimit( 16 )
g_pIME_Guildname:RequestFocus()
	
	


---------------------------  버튼 ---------------------------------

-----확인버튼 
g_pButton_OK= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_OK )
g_pButton_OK:SetName( "Button_OK" )
g_pButton_OK:SetNormalTex( "DLG_UI_BUTTON14.tga", "OK_Normal" )

g_pButton_OK:SetOverTex( "DLG_UI_BUTTON14.tga", "OK_OVer" )

g_pButton_OK:SetDownTex( "DLG_UI_BUTTON14.tga", "OK_OVer" )

g_pButton_OK:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(446,606)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_OK:SetOverPoint
{
     ADD_SIZE_X = 2,
     ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(446-1,606-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_OK:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(446+1,606+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_OK:SetCustomMsgMouseUp( GUILD_UI_MESSAGE["GUM_GUILD_NAME_OK"] )

-----취소버튼 
g_pButton_NO= g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_NO)
g_pButton_NO:SetName( "Button_NO" )
g_pButton_NO:SetNormalTex( "DLG_UI_BUTTON14.tga", "NO_Normal" )

g_pButton_NO:SetOverTex( "DLG_UI_BUTTON14.tga", "NO_OVer" )

g_pButton_NO:SetDownTex( "DLG_UI_BUTTON14.tga", "NO_OVer" )

g_pButton_NO:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(518+10,605+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_NO:SetOverPoint
{
     ADD_SIZE_X = 2,
     ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(518-1+10,605-1+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_NO:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(518+1+10,605+1+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_NO:SetCustomMsgMouseUp( GUILD_UI_MESSAGE["GUM_GUILD_NAME_CANCEL"] )
