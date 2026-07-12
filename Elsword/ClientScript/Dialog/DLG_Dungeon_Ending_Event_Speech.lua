-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




g_pUIDialog:SetName( "DLG_Dungeon_Ending_Event_Speech" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )



g_pStaticSpeech = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSpeech )
g_pStaticSpeech:SetName( "Static_Ending_Speech" )




g_pPictureSpeech_Shadow= g_pUIDialog:CreatePicture()
g_pStaticSpeech:AddPicture(g_pPictureSpeech_Shadow)
g_pPictureSpeech_Shadow:SetTex( "DLG_Common_New_Texture64.tga", "Shadow" )
g_pPictureSpeech_Shadow:SetPoint
{
ADD_SIZE_X = 1024,
	USE_TEXTURE_SIZE = true,
	"LEFT_TOP		= D3DXVECTOR2(0,530)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureSpeech_Left= g_pUIDialog:CreatePicture()
g_pStaticSpeech:AddPicture(g_pPictureSpeech_Left)
g_pPictureSpeech_Left:SetTex( "DLG_Common_New_Texture64.tga", "Speech_Popup_Left" )
g_pPictureSpeech_Left:SetPoint
{
	USE_TEXTURE_SIZE = true,
	"LEFT_TOP		= D3DXVECTOR2(59,562)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureSpeech_Right= g_pUIDialog:CreatePicture()
g_pStaticSpeech:AddPicture( g_pPictureSpeech_Right)
g_pPictureSpeech_Right:SetTex( "DLG_Common_New_Texture64.tga", "Speech_Popup_Right" )
g_pPictureSpeech_Right:SetPoint
{
	USE_TEXTURE_SIZE = true,
	"LEFT_TOP		= D3DXVECTOR2(570,530 )",	
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStaticSpeech:AddString
{
 	-- MSG    			 = "",
    FONT_INDEX      = XUF_BLAM_SPEECH,
 	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	"POS            = D3DXVECTOR2(90, 592)",
 	"COLOR          = D3DXCOLOR(1.0,0.5,0.0,1.0)",
	"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pStaticSpeech:AddString
{
 	-- MSG    			 = "",
    FONT_INDEX      = XUF_BLAM_SPEECH,
 	FONT_STYLE      = FONT_STYLE["FS_NONE"],
 	SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	"POS            = D3DXVECTOR2(96, 618)",
 	"COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

