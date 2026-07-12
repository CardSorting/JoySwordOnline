-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


--g_pUIDialog:SetName( "DLG_Square_ChatBox_Helper" )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_MESSENGER"] )
g_pUIDialog:SetPos( 2,453 )
--g_pUIDialog:SetCloseOnFocusOut( true ) 
 
 
 
g_pStaticChat_Bg = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticChat_Bg )
g_pStaticChat_Bg:SetName( "g_pStaticChat_Bg" )



g_pPicture_Bg = g_pUIDialog:CreatePicture()
g_pStaticChat_Bg:AddPicture( g_pPicture_Bg )

g_pPicture_Bg:SetTex( "DLG_UI_Common_Texture01.TGA", "black_bar" )

g_pPicture_Bg:SetPoint
{   
    ADD_SIZE_X = 112,
    ADD_SIZE_Y = 120-51+24+16+16,
	"LEFT_TOP		= D3DXVECTOR2(0,-5-16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
}


------대화

g_pStaticChat_Menu = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticChat_Menu )
g_pStaticChat_Menu:SetName( "Talk" )

g_pStaticChat_Menu:AddString
{
	MSG 			= STR_ID_1180,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(5,6-20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


--[[
------외치기

g_pStaticChat_Menu = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticChat_Menu )
g_pStaticChat_Menu:SetName( "Shout" )

g_pStaticChat_Menu:AddString
{
	MSG 			= STR_ID_1181,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(5,22)",
	"COLOR			= D3DXCOLOR(1.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

--]]

------파티대화

g_pStaticChat_Menu = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticChat_Menu )
g_pStaticChat_Menu:SetName( "Party_Talk" )

g_pStaticChat_Menu:AddString
{
	MSG 			= STR_ID_1182,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(5,22-20)",
	"COLOR			= D3DXCOLOR(0.26,1.00,1.00,1.00)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


------귓속말

g_pStaticChat_Menu = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticChat_Menu )
g_pStaticChat_Menu:SetName( "Whisper" )

g_pStaticChat_Menu:AddString
{
	MSG 			= STR_ID_1184,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(5,38-20)",
	"COLOR			= D3DXCOLOR(1.00,0.24,0.90,1.00)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


------답신

g_pStaticChat_Menu = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticChat_Menu )
g_pStaticChat_Menu:SetName( "Answer" )

g_pStaticChat_Menu:AddString
{
	MSG 			= STR_ID_1185,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(5,54-20)",
	"COLOR			= D3DXCOLOR(1.00,0.24,0.90,1.00)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

------길드

g_pStaticChat_Menu = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticChat_Menu )
g_pStaticChat_Menu:SetName( "Guild_Talk" )

g_pStaticChat_Menu:AddString
{
	MSG 			= STR_ID_1183,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(5,70-20)",
	
	"COLOR			= D3DXCOLOR(0.5882, 1.00,	0.00,	1.00)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,	0.0,	0.0,	1.0)",
}

--[[ #define ADDED_RELATIONSHIP_SYSTEM
------인연 채팅

g_pStaticChat_MenuCouple = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticChat_MenuCouple )
g_pStaticChat_MenuCouple:SetName( "Relation_Talk_Couple" )

g_pStaticChat_MenuCouple:AddString
{
--	MSG 			= STR_ID_1183,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(5,86-20)",
	
	"COLOR			= D3DXCOLOR(1.00, 0.494,	0,		1.00)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,	0.0,	0.0,	1.0)",
}
g_pStaticChat_MenuCouple:SetShow ( false )
--]]

------도움말

g_pStaticChat_Menu = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticChat_Menu )
g_pStaticChat_Menu:SetName( "Help" )

g_pStaticChat_Menu:AddString
{
	MSG 			= STR_ID_2685,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(5,86-20)",
	"COLOR			= D3DXCOLOR(0.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

------감정표현

g_pStaticChat_Menu = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticChat_Menu )
g_pStaticChat_Menu:SetName( "Emotion" )

g_pStaticChat_Menu:AddString
{
	MSG 			= STR_ID_1186,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(5,102-20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

-------------------------------------------------------------------------------------------------------------



g_pButtonTalk = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonTalk )
g_pButtonTalk:SetName( "Talk" )
g_pButtonTalk:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonTalk:SetOverTex( "DLG_Common_Texture01.tga", "color13" )

g_pButtonTalk:SetDownTex( "DLG_Common_Texture01.tga", "color13" )



g_pButtonTalk:SetNormalPoint
{
	ADD_SIZE_X = 109,
	ADD_SIZE_Y = 16,
    "LEFT_TOP		= D3DXVECTOR2(2,5-20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonTalk:SetOverPoint
{
    ADD_SIZE_X = 109,
	ADD_SIZE_Y = 16,
	"LEFT_TOP		= D3DXVECTOR2(2,5-20)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.3)",
	CHANGE_TIME		= 0.0,
}
g_pButtonTalk:SetDownPoint
{
      ADD_SIZE_X = 109-2,
     ADD_SIZE_Y = 16-2,
 	"LEFT_TOP		= D3DXVECTOR2(2+1,5+1-20)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.3)",
	CHANGE_TIME		= 0.0,
}
g_pButtonTalk:SetCustomMsgMouseUp( PARTYMSGER_UI_MSG["PUM_HELPER_ALL"] )





g_pButtonparty = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonparty )
g_pButtonparty:SetName( "party_talk" )
g_pButtonparty:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonparty:SetOverTex( "DLG_Common_Texture01.tga", "color13" )

g_pButtonparty:SetDownTex( "DLG_Common_Texture01.tga", "color13" )



g_pButtonparty:SetNormalPoint
{
	ADD_SIZE_X = 109,
	ADD_SIZE_Y = 16,
    "LEFT_TOP		= D3DXVECTOR2(2,21-20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonparty:SetOverPoint
{
    ADD_SIZE_X = 109,
	ADD_SIZE_Y = 16,
	"LEFT_TOP		= D3DXVECTOR2(2,21-20)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.3)",
	CHANGE_TIME		= 0.0,
}
g_pButtonparty:SetDownPoint
{
      ADD_SIZE_X = 109-2,
     ADD_SIZE_Y = 16-2,
 	"LEFT_TOP		= D3DXVECTOR2(2+1,21+1-20)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.3)",
	CHANGE_TIME		= 0.0,
}
g_pButtonparty:SetCustomMsgMouseUp( PARTYMSGER_UI_MSG["PUM_HELPER_PARTY"] )



g_pButtonWhisper = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonWhisper )
g_pButtonWhisper:SetName( "Whisper" )
g_pButtonWhisper:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonWhisper:SetOverTex( "DLG_Common_Texture01.tga", "color13" )

g_pButtonWhisper:SetDownTex( "DLG_Common_Texture01.tga", "color13" )



g_pButtonWhisper:SetNormalPoint
{
	ADD_SIZE_X = 109,
	ADD_SIZE_Y = 16,
    "LEFT_TOP		= D3DXVECTOR2(2,37-20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonWhisper:SetOverPoint
{
    ADD_SIZE_X = 109,
	ADD_SIZE_Y = 16,
	"LEFT_TOP		= D3DXVECTOR2(2,37-20)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.3)",
	CHANGE_TIME		= 0.0,
}
g_pButtonWhisper:SetDownPoint
{
      ADD_SIZE_X = 109-2,
     ADD_SIZE_Y = 16-2,
 	"LEFT_TOP		= D3DXVECTOR2(2+1,37+1-20)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.3)",
	CHANGE_TIME		= 0.0,
}
g_pButtonWhisper:SetCustomMsgMouseUp( PARTYMSGER_UI_MSG["PUM_HELPER_WHISPER"] )




g_pButtonAnswer = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonAnswer )
g_pButtonAnswer:SetName( "Answer" )
g_pButtonAnswer:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonAnswer:SetOverTex( "DLG_Common_Texture01.tga", "color13" )

g_pButtonAnswer:SetDownTex( "DLG_Common_Texture01.tga", "color13" )



g_pButtonAnswer:SetNormalPoint
{
	ADD_SIZE_X = 109,
	ADD_SIZE_Y = 16,
    "LEFT_TOP		= D3DXVECTOR2(2,53-20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonAnswer:SetOverPoint
{
    ADD_SIZE_X = 109,
	ADD_SIZE_Y = 16,
	"LEFT_TOP		= D3DXVECTOR2(2,53-20)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.3)",
	CHANGE_TIME		= 0.0,
}
g_pButtonAnswer:SetDownPoint
{
      ADD_SIZE_X = 109-2,
     ADD_SIZE_Y = 16-2,
 	"LEFT_TOP		= D3DXVECTOR2(2+1,53+1-20)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.3)",
	CHANGE_TIME		= 0.0,
}
g_pButtonAnswer:SetCustomMsgMouseUp( PARTYMSGER_UI_MSG["PUM_HELPER_REPLY"] )


--[[

g_pButtonWhisper = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonWhisper )
g_pButtonWhisper:SetName( "Whisper" )
g_pButtonWhisper:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonWhisper:SetOverTex( "DLG_Common_Texture01.tga", "color13" )

g_pButtonWhisper:SetDownTex( "DLG_Common_Texture01.tga", "color13" )



g_pButtonWhisper:SetNormalPoint
{
	ADD_SIZE_X = 109,
	ADD_SIZE_Y = 16,
    "LEFT_TOP		= D3DXVECTOR2(2,69)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonWhisper:SetOverPoint
{
    ADD_SIZE_X = 109,
	ADD_SIZE_Y = 16,
	"LEFT_TOP		= D3DXVECTOR2(2,69)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.3)",
	CHANGE_TIME		= 0.0,
}
g_pButtonWhisper:SetDownPoint
{
      ADD_SIZE_X = 109-2,
     ADD_SIZE_Y = 16-2,
 	"LEFT_TOP		= D3DXVECTOR2(2+1,69+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.3)",
	CHANGE_TIME		= 0.0,
}





g_pButtonAnswer = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonAnswer )
g_pButtonAnswer:SetName( "Answer" )
g_pButtonAnswer:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonAnswer:SetOverTex( "DLG_Common_Texture01.tga", "color13" )

g_pButtonAnswer:SetDownTex( "DLG_Common_Texture01.tga", "color13" )



g_pButtonAnswer:SetNormalPoint
{
	ADD_SIZE_X = 109,
	ADD_SIZE_Y = 16,
    "LEFT_TOP		= D3DXVECTOR2(2,85)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonAnswer:SetOverPoint
{
    ADD_SIZE_X = 109,
	ADD_SIZE_Y = 16,
	"LEFT_TOP		= D3DXVECTOR2(2,85)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.3)",
	CHANGE_TIME		= 0.0,
}
g_pButtonAnswer:SetDownPoint
{
      ADD_SIZE_X = 109-2,
     ADD_SIZE_Y = 16-2,
 	"LEFT_TOP		= D3DXVECTOR2(2+1,85+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.3)",
	CHANGE_TIME		= 0.0,
}

--]]


------------------- 길드대화
g_pButtonHelp = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonHelp )
g_pButtonHelp:SetName( "GuildChat" )
g_pButtonHelp:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonHelp:SetOverTex( "DLG_Common_Texture01.tga", "color13" )

g_pButtonHelp:SetDownTex( "DLG_Common_Texture01.tga", "color13" )



g_pButtonHelp:SetNormalPoint
{
	ADD_SIZE_X = 109,
	ADD_SIZE_Y = 16,
    "LEFT_TOP		= D3DXVECTOR2(2,69-20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonHelp:SetOverPoint
{
    ADD_SIZE_X = 109,
	ADD_SIZE_Y = 16,
	"LEFT_TOP		= D3DXVECTOR2(2,69-20)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.3)",
	CHANGE_TIME		= 0.0,
}
g_pButtonHelp:SetDownPoint
{
      ADD_SIZE_X = 109-2,
     ADD_SIZE_Y = 16-2,
 	"LEFT_TOP		= D3DXVECTOR2(2+1,69+1-20)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.3)",
	CHANGE_TIME		= 0.0,
}
g_pButtonHelp:SetCustomMsgMouseUp( PARTYMSGER_UI_MSG["PUM_HELPER_GUILD"] )

--[[ #define ADDED_RELATIONSHIP_SYSTEM
------------------- 커플 대화
g_pButtonRelationCouple = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonRelationCouple )
g_pButtonRelationCouple:SetName( "RelationChatCouple" )
g_pButtonRelationCouple:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonRelationCouple:SetOverTex( "DLG_Common_Texture01.tga", "color13" )

g_pButtonRelationCouple:SetDownTex( "DLG_Common_Texture01.tga", "color13" )



g_pButtonRelationCouple:SetNormalPoint
{
	ADD_SIZE_X = 109,
	ADD_SIZE_Y = 16,
    "LEFT_TOP		= D3DXVECTOR2(2,69-20+16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRelationCouple:SetOverPoint
{
    ADD_SIZE_X = 109,
	ADD_SIZE_Y = 16,
	"LEFT_TOP		= D3DXVECTOR2(2,69-20+16)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.3)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRelationCouple:SetDownPoint
{
      ADD_SIZE_X = 109-2,
     ADD_SIZE_Y = 16-2,
 	"LEFT_TOP		= D3DXVECTOR2(2+1,69+1-20+16)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.3)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRelationCouple:SetCustomMsgMouseUp( PARTYMSGER_UI_MSG["PUM_HELPER_RELATION"] )
g_pButtonRelationCouple:SetShow ( false )
--]]

-------------도움말
g_pButtonHelp = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonHelp )
g_pButtonHelp:SetName( "Help" )
g_pButtonHelp:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonHelp:SetOverTex( "DLG_Common_Texture01.tga", "color13" )

g_pButtonHelp:SetDownTex( "DLG_Common_Texture01.tga", "color13" )



g_pButtonHelp:SetNormalPoint
{
	ADD_SIZE_X = 109,
	ADD_SIZE_Y = 16,
    "LEFT_TOP		= D3DXVECTOR2(2,69+16-20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonHelp:SetOverPoint
{
    ADD_SIZE_X = 109,
	ADD_SIZE_Y = 16,
	"LEFT_TOP		= D3DXVECTOR2(2,69+16-20)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.3)",
	CHANGE_TIME		= 0.0,
}
g_pButtonHelp:SetDownPoint
{
      ADD_SIZE_X = 109-2,
     ADD_SIZE_Y = 16-2,
 	"LEFT_TOP		= D3DXVECTOR2(2+1,69+16+1-20)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.3)",
	CHANGE_TIME		= 0.0,
}
g_pButtonHelp:SetCustomMsgMouseUp( PARTYMSGER_UI_MSG["PUM_HELP"] )


-------------감정표현
g_pButtonEmotion = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonEmotion )
g_pButtonEmotion:SetName( "Emotion" )
g_pButtonEmotion:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonEmotion:SetOverTex( "DLG_Common_Texture01.tga", "color13" )

g_pButtonEmotion:SetDownTex( "DLG_Common_Texture01.tga", "color13" )



g_pButtonEmotion:SetNormalPoint
{
	ADD_SIZE_X = 109,
	ADD_SIZE_Y = 16,
    "LEFT_TOP		= D3DXVECTOR2(2,69+16+16-20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonEmotion:SetOverPoint
{
    ADD_SIZE_X = 109,
	ADD_SIZE_Y = 16,
	"LEFT_TOP		= D3DXVECTOR2(2,69+16+16-20)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.3)",
	CHANGE_TIME		= 0.0,
}
g_pButtonEmotion:SetDownPoint
{
      ADD_SIZE_X = 109-2,
     ADD_SIZE_Y = 16-2,
 	"LEFT_TOP		= D3DXVECTOR2(2+1,69+16+16+1-20)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.3)",
	CHANGE_TIME		= 0.0,
}
g_pButtonEmotion:SetCustomMsgMouseUp( PARTYMSGER_UI_MSG["PUM_HELPER_EMOTION"] )
