-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pStaticSpeech = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSpeech )
g_pStaticSpeech:SetName( "Static_Ending_Speech" )




g_pPictureSpeech_Shadow_Top= g_pUIDialog:CreatePicture()
g_pStaticSpeech:AddPicture(g_pPictureSpeech_Shadow_Top)
g_pPictureSpeech_Shadow_Top:SetTex( "DLG_Common_New_Texture64.tga", "Shadow2" )
g_pPictureSpeech_Shadow_Top:SetPoint
{
ADD_SIZE_X = 1024,
ADD_SIZE_Y = -10,
	USE_TEXTURE_SIZE = true,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.9)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSpeech_Shadow_Top:SetIndex(1)


g_pPictureSpeech_Shadow_Bottom= g_pUIDialog:CreatePicture()
g_pStaticSpeech:AddPicture(g_pPictureSpeech_Shadow_Bottom)
g_pPictureSpeech_Shadow_Bottom:SetTex( "DLG_Common_New_Texture64.tga", "Shadow" )
g_pPictureSpeech_Shadow_Bottom:SetPoint
{
ADD_SIZE_X = 1024,

	USE_TEXTURE_SIZE = true,
	"LEFT_TOP		= D3DXVECTOR2(0,530)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.9)",
	CHANGE_TIME		= 0.0,
}
g_pPictureSpeech_Shadow_Bottom:SetIndex(2)
