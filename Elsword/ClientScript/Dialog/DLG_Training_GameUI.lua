-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.






g_pUIDialog:SetName( "DLG_Training_GameUI" )
g_pUIDialog:SetPos( 0, 0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )






g_pStaticTraining_GameUI = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticTraining_GameUI )
g_pStaticTraining_GameUI:SetName( "Background" )




----(엘소드 배경) 


g_pPictureTraining_GiudeLine1 = g_pUIDialog:CreatePicture()
g_pStaticTraining_GameUI:AddPicture( g_pPictureTraining_GiudeLine1 )

g_pPictureTraining_GiudeLine1:SetTex( "DLG_Common_Texture01.TGA", "Information_Normal1" )

g_pPictureTraining_GiudeLine1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(242,489)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureTraining_GiudeLine2 = g_pUIDialog:CreatePicture()
g_pStaticTraining_GameUI:AddPicture( g_pPictureTraining_GiudeLine2 )

g_pPictureTraining_GiudeLine2:SetTex( "DLG_Common_Texture01.TGA", "Information_Normal2" )

g_pPictureTraining_GiudeLine2:SetPoint
{
    ADD_SIZE_X = 521,
	"LEFT_TOP		= D3DXVECTOR2(256,489)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureTraining_GiudeLine3 = g_pUIDialog:CreatePicture()
g_pStaticTraining_GameUI:AddPicture( g_pPictureTraining_GiudeLine3 )

g_pPictureTraining_GiudeLine3:SetTex( "DLG_Common_Texture01.TGA", "Information_Normal3" )

g_pPictureTraining_GiudeLine3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(780,489)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




ADD_TALK_BOX_SIZE_X = 270

g_pPictureTalkBox1 = g_pUIDialog:CreatePicture()
g_pStaticTraining_GameUI:AddPicture( g_pPictureTalkBox1 )

g_pPictureTalkBox1:SetTex( "DLG_Common_Texture01.TGA", "Talk_Box1" )

g_pPictureTalkBox1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(184,580)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureTalkBox2 = g_pUIDialog:CreatePicture()
g_pStaticTraining_GameUI:AddPicture( g_pPictureTalkBox2 )

g_pPictureTalkBox2:SetTex( "DLG_Common_Texture01.TGA", "Talk_Box2" )

g_pPictureTalkBox2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(723+ADD_TALK_BOX_SIZE_X,580)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureTalkBox3 = g_pUIDialog:CreatePicture()
g_pStaticTraining_GameUI:AddPicture( g_pPictureTalkBox3 )

g_pPictureTalkBox3:SetTex( "DLG_Common_Texture01.TGA", "Talk_Box3" )

g_pPictureTalkBox3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(184,735)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureTalkBox4 = g_pUIDialog:CreatePicture()
g_pStaticTraining_GameUI:AddPicture( g_pPictureTalkBox4 )

g_pPictureTalkBox4:SetTex( "DLG_Common_Texture01.TGA", "Talk_Box4" )

g_pPictureTalkBox4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(723+ADD_TALK_BOX_SIZE_X,735)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureTalkBox5 = g_pUIDialog:CreatePicture()
g_pStaticTraining_GameUI:AddPicture( g_pPictureTalkBox5 )

g_pPictureTalkBox5:SetTex( "DLG_Common_Texture01.TGA", "Talk_Box8" )

g_pPictureTalkBox5:SetPoint
{
    ADD_SIZE_X = 523+ADD_TALK_BOX_SIZE_X,

   	"LEFT_TOP		= D3DXVECTOR2(200,580)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureTalkBox6 = g_pUIDialog:CreatePicture()
g_pStaticTraining_GameUI:AddPicture( g_pPictureTalkBox6 )

g_pPictureTalkBox6:SetTex( "DLG_Common_Texture01.TGA", "Talk_Box9" )

g_pPictureTalkBox6:SetPoint
{
    ADD_SIZE_X = 522+ADD_TALK_BOX_SIZE_X,

   	"LEFT_TOP		= D3DXVECTOR2(200,735)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureTalkBox7 = g_pUIDialog:CreatePicture()
g_pStaticTraining_GameUI:AddPicture( g_pPictureTalkBox7 )

g_pPictureTalkBox7:SetTex( "DLG_Common_Texture01.TGA", "Talk_Box5" )

g_pPictureTalkBox7:SetPoint
{
    ADD_SIZE_Y = 143,

   	"LEFT_TOP		= D3DXVECTOR2(184,592)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureTalkBox8 = g_pUIDialog:CreatePicture()
g_pStaticTraining_GameUI:AddPicture( g_pPictureTalkBox8 )

g_pPictureTalkBox8:SetTex( "DLG_Common_Texture01.TGA", "Talk_Box6" )

g_pPictureTalkBox8:SetPoint
{
    ADD_SIZE_Y = 141,

   	"LEFT_TOP		= D3DXVECTOR2(723+ADD_TALK_BOX_SIZE_X,593)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureTalkBox9 = g_pUIDialog:CreatePicture()
g_pStaticTraining_GameUI:AddPicture( g_pPictureTalkBox9 )

g_pPictureTalkBox9:SetTex( "DLG_Common_Texture01.TGA", "White" )

g_pPictureTalkBox9:SetPoint
{
    ADD_SIZE_X = 527+ADD_TALK_BOX_SIZE_X,
    ADD_SIZE_Y = 143,

   	"LEFT_TOP		= D3DXVECTOR2(196,595)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureTalkBox10 = g_pUIDialog:CreatePicture()
g_pStaticTraining_GameUI:AddPicture( g_pPictureTalkBox10 )

g_pPictureTalkBox10:SetTex( "DLG_Common_Texture01.TGA", "Talk_Box7" )

g_pPictureTalkBox10:SetPoint
{

   	"LEFT_TOP		= D3DXVECTOR2(128,635)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}








------------------폰트---------------


	g_pStaticMy_Talk = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticMy_Talk )
	g_pStaticMy_Talk:SetName( "Talk" )

	g_pStaticMy_Talk:AddString
	{
		-- MSG 			= "",
		FONT_INDEX		= XUF_DODUM_20_BOLD,
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(207,598)",
		"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}

 

 






g_pStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic )
g_pStatic:SetName( "Static_Enter" )


g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_Common_Texture13.tga", "Space" )
g_pPicture:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(950-110,695-10)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture = g_pUIDialog:CreatePicture()
g_pStatic:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_Common_Texture13.tga", "Space" )
g_pPicture:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(950-110,695-10)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic )
g_pStatic:SetName( "Static_Key_Sequence" )


for i=0, 9 do

	gapx = 50
	posx = 268 + gapx * i
	posy = 495
	
	posx2 = posx + 48
	posy2 = posy + 48

	g_pPicture = g_pUIDialog:CreatePicture()
	g_pStatic:AddPicture( g_pPicture )
	g_pPicture:SetTex( "DLG_Common_Button00.TGA", "invisible" )
	
	g_pPicture:SetPoint
	{
		USE_TEXTURE_SIZE = FALSE,
		"LEFT_TOP		= D3DXVECTOR2( posx, posy )",
		"RIGHT_BOTTOM	= D3DXVECTOR2( posx2, posy2 )",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	
end



g_pStatic = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic )
g_pStatic:SetName( "Static_Key_Input" )


for i=0, 24 do

	g_pPicture = g_pUIDialog:CreatePicture()
	g_pStatic:AddPicture( g_pPicture )
	g_pPicture:SetTex( "DLG_Common_Button00.TGA", "invisible" )
	
	g_pPicture:SetPoint
	{
		USE_TEXTURE_SIZE = FALSE,
		"LEFT_TOP		= D3DXVECTOR2( 0, 0 )",
		"RIGHT_BOTTOM	= D3DXVECTOR2( 48, 48 )",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	
end






