-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetName( "Background" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )


g_pUIDialog:AddDummyPos( D3DXVECTOR3(0,0,0) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3(550,0,0) )






----(엘소드 배경)


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


g_pPictureBlackLine2 = g_pUIDialog:CreatePicture()
g_pStaticTalkBox:AddPicture( g_pPictureBlackLine2 )

g_pPictureBlackLine2:SetTex( "DLG_Common_Texture01.TGA", "Black" )

g_pPictureBlackLine2:SetPoint
{

     ADD_SIZE_X = 1024,
    ADD_SIZE_Y = 89,

	"LEFT_TOP		= D3DXVECTOR2(0,678)",
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




--------------(대화 칸)

g_pStaticTalkBox_Talk = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticTalkBox_Talk )
g_pStaticTalkBox_Talk:SetName( "Background" )


g_pPicture_TalkBox1_1 = g_pUIDialog:CreatePicture()
g_pStaticTalkBox_Talk:AddPicture( g_pPicture_TalkBox1_1 )

g_pPicture_TalkBox1_1:SetTex( "DLG_Common_Texture01.TGA", "Talk_Box1" )

g_pPicture_TalkBox1_1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(111,618)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_TalkBox1_2 = g_pUIDialog:CreatePicture()
g_pStaticTalkBox_Talk:AddPicture( g_pPicture_TalkBox1_2 )

g_pPicture_TalkBox1_2:SetTex( "DLG_Common_Texture01.TGA", "Talk_Box2" )

g_pPicture_TalkBox1_2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(900,618)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_TalkBox1_3 = g_pUIDialog:CreatePicture()
g_pStaticTalkBox_Talk:AddPicture( g_pPicture_TalkBox1_3 )

g_pPicture_TalkBox1_3:SetTex( "DLG_Common_Texture01.TGA", "Talk_Box3" )

g_pPicture_TalkBox1_3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(111,740)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_TalkBox1_4 = g_pUIDialog:CreatePicture()
g_pStaticTalkBox_Talk:AddPicture( g_pPicture_TalkBox1_4 )

g_pPicture_TalkBox1_4:SetTex( "DLG_Common_Texture01.TGA", "Talk_Box4" )

g_pPicture_TalkBox1_4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(900,740)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_TalkBox1_5 = g_pUIDialog:CreatePicture()
g_pStaticTalkBox_Talk:AddPicture( g_pPicture_TalkBox1_5 )

g_pPicture_TalkBox1_5:SetTex( "DLG_Common_Texture01.TGA", "Talk_Box8" )

g_pPicture_TalkBox1_5:SetPoint
{
    ADD_SIZE_X = 779,

   	"LEFT_TOP		= D3DXVECTOR2(127,618)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_TalkBox1_6 = g_pUIDialog:CreatePicture()
g_pStaticTalkBox_Talk:AddPicture( g_pPicture_TalkBox1_6 )

g_pPicture_TalkBox1_6:SetTex( "DLG_Common_Texture01.TGA", "Talk_Box9" )

g_pPicture_TalkBox1_6:SetPoint
{
    ADD_SIZE_X = 779,

   	"LEFT_TOP		= D3DXVECTOR2(127,740)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_TalkBox1_7 = g_pUIDialog:CreatePicture()
g_pStaticTalkBox_Talk:AddPicture( g_pPicture_TalkBox1_7 )

g_pPicture_TalkBox1_7:SetTex( "DLG_Common_Texture01.TGA", "Talk_Box5" )

g_pPicture_TalkBox1_7:SetPoint
{
    ADD_SIZE_Y = 110,

   	"LEFT_TOP		= D3DXVECTOR2(111,631)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_TalkBox1_8 = g_pUIDialog:CreatePicture()
g_pStaticTalkBox_Talk:AddPicture( g_pPicture_TalkBox1_8 )

g_pPicture_TalkBox1_8:SetTex( "DLG_Common_Texture01.TGA", "Talk_Box6" )

g_pPicture_TalkBox1_8:SetPoint
{
    ADD_SIZE_Y = 110,

   	"LEFT_TOP		= D3DXVECTOR2(900,631)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_TalkBox1_9 = g_pUIDialog:CreatePicture()
g_pStaticTalkBox_Talk:AddPicture( g_pPicture_TalkBox1_9 )

g_pPicture_TalkBox1_9:SetTex( "DLG_Common_Texture01.TGA", "White" )

g_pPicture_TalkBox1_9:SetPoint
{
    ADD_SIZE_X = 780,
    ADD_SIZE_Y = 110,

   	"LEFT_TOP		= D3DXVECTOR2(121,630)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





--------------(이름)

g_pStaticTalkBox_Name = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticTalkBox_Name )
g_pStaticTalkBox_Name:SetName( "NameTab" )


g_pPictureName_TalkBox1_1 = g_pUIDialog:CreatePicture()
g_pStaticTalkBox_Name:AddPicture( g_pPictureName_TalkBox1_1 )

g_pPictureName_TalkBox1_1:SetTex( "DLG_Common_Texture01.TGA", "Talk_Box1" )

g_pPictureName_TalkBox1_1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(130,582)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureName_TalkBox1_2 = g_pUIDialog:CreatePicture()
g_pStaticTalkBox_Name:AddPicture( g_pPictureName_TalkBox1_2 )

g_pPictureName_TalkBox1_2:SetTex( "DLG_Common_Texture01.TGA", "Talk_Box2" )

g_pPictureName_TalkBox1_2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(301,582)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureName_TalkBox1_3 = g_pUIDialog:CreatePicture()
g_pStaticTalkBox_Name:AddPicture( g_pPictureName_TalkBox1_3 )

g_pPictureName_TalkBox1_3:SetTex( "DLG_Common_Texture01.TGA", "Talk_Box3" )

g_pPictureName_TalkBox1_3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(130,617)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureName_TalkBox1_4 = g_pUIDialog:CreatePicture()
g_pStaticTalkBox_Name:AddPicture( g_pPictureName_TalkBox1_4 )

g_pPictureName_TalkBox1_4:SetTex( "DLG_Common_Texture01.TGA", "Talk_Box4" )

g_pPictureName_TalkBox1_4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(301,617)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureName_TalkBox1_4 = g_pUIDialog:CreatePicture()
g_pStaticTalkBox_Name:AddPicture( g_pPictureName_TalkBox1_4 )

g_pPictureName_TalkBox1_4:SetTex( "DLG_Common_Texture01.TGA", "Talk_Box6" )

g_pPictureName_TalkBox1_4:SetPoint
{
ADD_SIZE_Y = 24,
	"LEFT_TOP		= D3DXVECTOR2(301,595)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureName_TalkBox1_4 = g_pUIDialog:CreatePicture()
g_pStaticTalkBox_Name:AddPicture( g_pPictureName_TalkBox1_4 )

g_pPictureName_TalkBox1_4:SetTex( "DLG_Common_Texture01.TGA", "Talk_Box9" )

g_pPictureName_TalkBox1_4:SetPoint
{
ADD_SIZE_X = 154,
	"LEFT_TOP		= D3DXVECTOR2(146,617)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME		= 0.0,
}











g_pPictureName_TalkBox1_9 = g_pUIDialog:CreatePicture()
g_pStaticTalkBox_Name:AddPicture( g_pPictureName_TalkBox1_9 )

g_pPictureName_TalkBox1_9:SetTex( "DLG_Common_Texture01.TGA", "Black" )

g_pPictureName_TalkBox1_9:SetPoint
{
    ADD_SIZE_X = 161,
    ADD_SIZE_Y = 42,

   	"LEFT_TOP		= D3DXVECTOR2(142,582)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureName_TalkBox1_10 = g_pUIDialog:CreatePicture()
g_pStaticTalkBox_Name:AddPicture( g_pPictureName_TalkBox1_10 )

g_pPictureName_TalkBox1_10:SetTex( "DLG_Common_Texture01.TGA", "Black" )

g_pPictureName_TalkBox1_10:SetPoint
{
    ADD_SIZE_X = 46,
    ADD_SIZE_Y = 30,

   	"LEFT_TOP		= D3DXVECTOR2(130,592)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


 





g_pStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic )
g_pStatic:SetName( "Name" )

g_pStatic:AddString
{
	-- MSG 			= "",
	FONT_INDEX		= XUF_BLAM_TALK,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(216,596 + 7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic )
g_pStatic:SetName( "Speech" )

g_pStatic:AddString
{
	-- MSG 			= "",
	FONT_INDEX		= XUF_BLAM_TALK,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(150,650)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic )
g_pStatic:SetName( "Static_Enter" )


g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_UI_Button20.tga", "BG_ENTER_KEY" )
g_pPicture:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(840, 689)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_UI_Button20.tga", "BG_ENTER_KEY" )
g_pPicture:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(840, 689)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--------------(ESC)

g_pStaticESC = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticESC )
g_pStaticESC:SetName( "ESC_SKIP" )


g_pPicture_ESC = g_pUIDialog:CreatePicture()
g_pStaticESC:AddPicture( g_pPicture_ESC )

g_pPicture_ESC:SetTex( "DLG_UI_Button20.TGA", "BG_ESC_SKIP" )

g_pPicture_ESC:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}