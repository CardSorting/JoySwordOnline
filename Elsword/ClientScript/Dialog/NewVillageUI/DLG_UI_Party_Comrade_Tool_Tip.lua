-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetPos( 0, 0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"]+1 )


g_pStaticParty_Comrade = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticParty_Comrade )
g_pStaticParty_Comrade:SetName( "Party_Comrade" )


----------BG
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStaticParty_Comrade:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture01.TGA", "black_bar" )

g_pPicture_bg1:SetPoint
{
    ADD_SIZE_X = 155,
	ADD_SIZE_Y = 31,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.7)",
	CHANGE_TIME		= 0.0,
}

-----------------bg 테두리

g_pPictureOutline = g_pUIDialog:CreatePicture()
g_pStaticParty_Comrade:AddPicture( g_pPictureOutline )

g_pPictureOutline:SetTex( "DLG_Common_Texture01.TGA", "white" )

g_pPictureOutline:SetPoint
{
    ADD_SIZE_X = 155,
	ADD_SIZE_Y = 1,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPictureOutline = g_pUIDialog:CreatePicture()
g_pStaticParty_Comrade:AddPicture( g_pPictureOutline )

g_pPictureOutline:SetTex( "DLG_Common_Texture01.TGA", "white" )

g_pPictureOutline:SetPoint
{
    ADD_SIZE_X = 155,
	ADD_SIZE_Y = 1,
	"LEFT_TOP		= D3DXVECTOR2(0,34)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureOutline = g_pUIDialog:CreatePicture()
g_pStaticParty_Comrade:AddPicture( g_pPictureOutline )

g_pPictureOutline:SetTex( "DLG_Common_Texture01.TGA", "white" )

g_pPictureOutline:SetPoint
{
    ADD_SIZE_X = 1,
	ADD_SIZE_Y = 31,
	"LEFT_TOP		= D3DXVECTOR2(0,2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureOutline = g_pUIDialog:CreatePicture()
g_pStaticParty_Comrade:AddPicture( g_pPictureOutline )

g_pPictureOutline:SetTex( "DLG_Common_Texture01.TGA", "white" )

g_pPictureOutline:SetPoint
{
    ADD_SIZE_X = 1,
	ADD_SIZE_Y = 31,
	"LEFT_TOP		= D3DXVECTOR2(154,2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


---------------캐릭터 이미지


g_pStaticChar_IMAGE = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticChar_IMAGE )
g_pStaticChar_IMAGE:SetName( "Cha_Image" )

g_pPictureCharacter_Image = g_pUIDialog:CreatePicture()
g_pStaticChar_IMAGE:AddPicture( g_pPictureCharacter_Image )

g_pPictureCharacter_Image:SetTex( "DLG_UI_Common_Texture02.TGA", "lire_c" )

g_pPictureCharacter_Image:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(10,8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
 
 


----CHARACTER NAME

-------------


g_pStaticCha_Name = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCha_Name )
g_pStaticCha_Name:SetName( "Cha_Name" )

g_pStaticCha_Name:AddString
{
	-- MSG 			= "WWWWWWWWWWWW",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(37,11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}




-------------------레벨 수치

---------------------10의 자리수



g_pStaticTen = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticTen )
g_pStaticTen:SetName( "Cha_Level_10" )



g_pPictureZero = g_pUIDialog:CreatePicture()
g_pStaticTen:AddPicture( g_pPictureZero )

g_pPictureZero:SetTex( "DLG_UI_Common_Texture02.TGA", "zero" )

g_pPictureZero:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(7,7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureOne = g_pUIDialog:CreatePicture()
g_pStaticTen:AddPicture( g_pPictureOne )

g_pPictureOne:SetTex( "DLG_UI_Common_Texture02.TGA", "One" )

g_pPictureOne:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(7,7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureTwo = g_pUIDialog:CreatePicture()
g_pStaticTen:AddPicture( g_pPictureTwo )

g_pPictureTwo:SetTex( "DLG_UI_Common_Texture02.TGA", "Two" )

g_pPictureTwo:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(7,7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureThree = g_pUIDialog:CreatePicture()
g_pStaticTen:AddPicture( g_pPictureThree )

g_pPictureThree:SetTex( "DLG_UI_Common_Texture02.TGA", "Three" )

g_pPictureThree:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(7,7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureFour = g_pUIDialog:CreatePicture()
g_pStaticTen:AddPicture( g_pPictureFour )

g_pPictureFour:SetTex( "DLG_UI_Common_Texture02.TGA", "Four" )

g_pPictureFour:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(7,7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureFive = g_pUIDialog:CreatePicture()
g_pStaticTen:AddPicture( g_pPictureFive )

g_pPictureFive:SetTex( "DLG_UI_Common_Texture02.TGA", "Five" )

g_pPictureFive:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(7,7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureSix = g_pUIDialog:CreatePicture()
g_pStaticTen:AddPicture( g_pPictureSix )

g_pPictureSix:SetTex( "DLG_UI_Common_Texture02.TGA", "Six" )

g_pPictureSix:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(7,7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureSeven = g_pUIDialog:CreatePicture()
g_pStaticTen:AddPicture( g_pPictureSeven )

g_pPictureSeven:SetTex( "DLG_UI_Common_Texture02.TGA", "Seven" )

g_pPictureSeven:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(7,7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureEight = g_pUIDialog:CreatePicture()
g_pStaticTen:AddPicture( g_pPictureEight )

g_pPictureEight:SetTex( "DLG_UI_Common_Texture02.TGA", "Eight" )

g_pPictureEight:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(9,7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureNine = g_pUIDialog:CreatePicture()
g_pStaticTen:AddPicture( g_pPictureNine )

g_pPictureNine:SetTex( "DLG_UI_Common_Texture02.TGA", "Nine" )

g_pPictureNine:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(7,7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}









---------------------1의 자리수



g_pStaticOne = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticOne )
g_pStaticOne:SetName( "Cha_Level_1" )



g_pPictureZero = g_pUIDialog:CreatePicture()
g_pStaticOne:AddPicture( g_pPictureZero )

g_pPictureZero:SetTex( "DLG_UI_Common_Texture02.TGA", "zero" )

g_pPictureZero:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(13,7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureOne = g_pUIDialog:CreatePicture()
g_pStaticOne:AddPicture( g_pPictureOne )

g_pPictureOne:SetTex( "DLG_UI_Common_Texture02.TGA", "One" )

g_pPictureOne:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(13,7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureTwo = g_pUIDialog:CreatePicture()
g_pStaticOne:AddPicture( g_pPictureTwo )

g_pPictureTwo:SetTex( "DLG_UI_Common_Texture02.TGA", "Two" )

g_pPictureTwo:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(13,7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureThree = g_pUIDialog:CreatePicture()
g_pStaticOne:AddPicture( g_pPictureThree )

g_pPictureThree:SetTex( "DLG_UI_Common_Texture02.TGA", "Three" )

g_pPictureThree:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(13,7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureFour = g_pUIDialog:CreatePicture()
g_pStaticOne:AddPicture( g_pPictureFour )

g_pPictureFour:SetTex( "DLG_UI_Common_Texture02.TGA", "Four" )

g_pPictureFour:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(13,7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureFive = g_pUIDialog:CreatePicture()
g_pStaticOne:AddPicture( g_pPictureFive )

g_pPictureFive:SetTex( "DLG_UI_Common_Texture02.TGA", "Five" )

g_pPictureFive:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(13,7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureSix = g_pUIDialog:CreatePicture()
g_pStaticOne:AddPicture( g_pPictureSix )

g_pPictureSix:SetTex( "DLG_UI_Common_Texture02.TGA", "Six" )

g_pPictureSix:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(13,7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureSeven = g_pUIDialog:CreatePicture()
g_pStaticOne:AddPicture( g_pPictureSeven )

g_pPictureSeven:SetTex( "DLG_UI_Common_Texture02.TGA", "Seven" )

g_pPictureSeven:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(13,7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureEight = g_pUIDialog:CreatePicture()
g_pStaticOne:AddPicture( g_pPictureEight )

g_pPictureEight:SetTex( "DLG_UI_Common_Texture02.TGA", "Eight" )

g_pPictureEight:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(13,7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureNine = g_pUIDialog:CreatePicture()
g_pStaticOne:AddPicture( g_pPictureNine )

g_pPictureNine:SetTex( "DLG_UI_Common_Texture02.TGA", "Nine" )

g_pPictureNine:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(13,7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
