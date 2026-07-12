-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pStaticTraining_Background = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticTraining_Background )
g_pStaticTraining_Background:SetName( "StaticTraining_Background" )



g_pPictureBackground1 = g_pUIDialog:CreatePicture()
g_pStaticTraining_Background:AddPicture( g_pPictureBackground1 )

g_pPictureBackground1:SetTex( "DLG_Background_Training1_1.TGA", "back_training1" )

g_pPictureBackground1:SetPoint
{
	ADD_SIZE_Y = 260,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBackground2 = g_pUIDialog:CreatePicture()
g_pStaticTraining_Background:AddPicture( g_pPictureBackground2 )

g_pPictureBackground2:SetTex( "DLG_Background_Training1_2.TGA", "back_training2" )

g_pPictureBackground2:SetPoint
{
	ADD_SIZE_Y = 260,
	"LEFT_TOP		= D3DXVECTOR2(512,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
