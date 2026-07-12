-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetName( "Background" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )


g_pStaticTalkBox = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticTalkBox )
g_pStaticTalkBox:SetName( "INVISIBLE" )

g_pPictureInvisible = g_pUIDialog:CreatePicture()
g_pStaticTalkBox:AddPicture( g_pPictureInvisible )

g_pPictureInvisible:SetTex( "DLG_Common_Texture01.TGA", "Black" )

g_pPictureInvisible:SetPoint
{

     ADD_SIZE_X = 2000,
    ADD_SIZE_Y = 2000,

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}


g_pStaticTalkBox = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticTalkBox )
g_pStaticTalkBox:SetName( "BlackLayOutUp" )
g_pStaticTalkBox:SetOffsetPos( 0, -90 )


g_pPictureBlackLine1 = g_pUIDialog:CreatePicture()
g_pStaticTalkBox:AddPicture( g_pPictureBlackLine1 )

g_pPictureBlackLine1:SetTex( "DLG_Common_Texture01.TGA", "Black" )

g_pPictureBlackLine1:SetPoint
{

     ADD_SIZE_X = 1024,
    ADD_SIZE_Y = 89,

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBlackLine_Out1 = g_pUIDialog:CreatePicture()
g_pStaticTalkBox:AddPicture( g_pPictureBlackLine_Out1 )

g_pPictureBlackLine_Out1:SetTex( "DLG_Common_Texture01.TGA", "Black_Out1" )

g_pPictureBlackLine_Out1:SetPoint
{

     ADD_SIZE_X = 1024,


	"LEFT_TOP		= D3DXVECTOR2(0,89)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStaticTalkBox = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticTalkBox )
g_pStaticTalkBox:SetName( "BlackLayOutDown" )
g_pStaticTalkBox:SetOffsetPos( 0, 90)

g_pPictureBlackLine2 = g_pUIDialog:CreatePicture()
g_pStaticTalkBox:AddPicture( g_pPictureBlackLine2 )

g_pPictureBlackLine2:SetTex( "DLG_Common_Texture01.TGA", "Black" )

g_pPictureBlackLine2:SetPoint
{

     ADD_SIZE_X = 1024,
    ADD_SIZE_Y = 90,

	"LEFT_TOP		= D3DXVECTOR2(0,678)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureBlackLine_Out1 = g_pUIDialog:CreatePicture()
g_pStaticTalkBox:AddPicture( g_pPictureBlackLine_Out1 )

g_pPictureBlackLine_Out1:SetTex( "DLG_Common_Texture01.TGA", "Black_Out2" )

g_pPictureBlackLine_Out1:SetPoint
{

     ADD_SIZE_X = 1024,


	"LEFT_TOP		= D3DXVECTOR2(0,671)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




