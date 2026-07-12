-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

OFFSET_X = 250
OFFSET_Y = 130


g_pStaticCharacter_Create_ID = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCharacter_Create_ID )

g_pStaticCharacter_Create_ID:SetName( "Character_Create_ID" )
g_pStaticCharacter_Create_ID:SetShow( false )


g_pPictureCharacter_Create_ID_BG1 = g_pUIDialog:CreatePicture()
g_pStaticCharacter_Create_ID:AddPicture( g_pPictureCharacter_Create_ID_BG1 )

g_pPictureCharacter_Create_ID_BG1:SetTex( "DLG_Common_Texture02.tga", "NameBG1" )

g_pPictureCharacter_Create_ID_BG1:SetPoint
{
    "LEFT_TOP		= D3DXVECTOR2(73+OFFSET_X ,465+OFFSET_Y )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCharacter_Create_ID_BG1 = g_pUIDialog:CreatePicture()
g_pStaticCharacter_Create_ID:AddPicture( g_pPictureCharacter_Create_ID_BG1 )

g_pPictureCharacter_Create_ID_BG1:SetTex( "DLG_Common_Texture02.tga", "NameBG2" )

g_pPictureCharacter_Create_ID_BG1:SetPoint
{
    ADD_SIZE_X = 337,
    "LEFT_TOP		= D3DXVECTOR2(86+OFFSET_X, 465+OFFSET_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCharacter_Create_ID_BG1 = g_pUIDialog:CreatePicture()
g_pStaticCharacter_Create_ID:AddPicture( g_pPictureCharacter_Create_ID_BG1 )

g_pPictureCharacter_Create_ID_BG1:SetTex( "DLG_Common_Texture02.tga", "NameBG3" )

g_pPictureCharacter_Create_ID_BG1:SetPoint
{
    "LEFT_TOP		= D3DXVECTOR2(424+OFFSET_X, 465+OFFSET_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCharacter_Create_ID_BOX1 = g_pUIDialog:CreatePicture()
g_pStaticCharacter_Create_ID:AddPicture( g_pPictureCharacter_Create_ID_BOX1 )

g_pPictureCharacter_Create_ID_BOX1:SetTex( "DLG_Common_Texture02.tga", "NameBOX1" )

g_pPictureCharacter_Create_ID_BOX1:SetPoint
{
    "LEFT_TOP		= D3DXVECTOR2(149+OFFSET_X, 472+OFFSET_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCharacter_Create_ID_BOX1 = g_pUIDialog:CreatePicture()
g_pStaticCharacter_Create_ID:AddPicture( g_pPictureCharacter_Create_ID_BOX1 )

g_pPictureCharacter_Create_ID_BOX1:SetTex( "DLG_Common_Texture02.tga", "NameBOX2" )

g_pPictureCharacter_Create_ID_BOX1:SetPoint
{
    ADD_SIZE_X = 132,
    "LEFT_TOP		= D3DXVECTOR2(157+OFFSET_X, 472+OFFSET_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCharacter_Create_ID_BOX1 = g_pUIDialog:CreatePicture()
g_pStaticCharacter_Create_ID:AddPicture( g_pPictureCharacter_Create_ID_BOX1 )

g_pPictureCharacter_Create_ID_BOX1:SetTex( "DLG_Common_Texture02.tga", "NameBOX3" )

g_pPictureCharacter_Create_ID_BOX1:SetPoint
{
    "LEFT_TOP		= D3DXVECTOR2(290+OFFSET_X, 472+OFFSET_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCharacter_Create_Nicname = g_pUIDialog:CreatePicture()
g_pStaticCharacter_Create_ID:AddPicture( g_pPictureCharacter_Create_Nicname )

g_pPictureCharacter_Create_Nicname:SetTex( "DLG_Common_Texture01.tga", "Nicname" )

g_pPictureCharacter_Create_Nicname:SetPoint
{
    "LEFT_TOP		= D3DXVECTOR2(100+OFFSET_X, 479+OFFSET_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticCharacter_Create_ID:AddString
{
	-- MSG 			= "",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
	"POS 			= D3DXVECTOR2(110+OFFSET_X, 512+OFFSET_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pIMEEditBoxNickName = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIMEEditBoxNickName )
g_pIMEEditBoxNickName:SetName( "IMEEditBoxUnitCreateNickName" )
g_pIMEEditBoxNickName:SetEnable( false )

g_pIMEEditBoxNickName:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(173+OFFSET_X, 481 - 2+OFFSET_Y)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(271+OFFSET_X, 492 + 2+OFFSET_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pIMEEditBoxNickName:SetFont( XF_DODUM_15_NORMAL )
g_pIMEEditBoxNickName:SetTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditBoxNickName:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditBoxNickName:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIMEEditBoxNickName:SetCaretColor( 0.0, 0.0, 0.0, 1.0 )
--g_pIMEEditBoxNickName:SetTabControlName( "IMEEditBoxUnitCreateNickName" );
g_pIMEEditBoxNickName:SetByteLimit( 12 )
g_pIMEEditBoxNickName:SetCustomMsgEnter( BEGINNING_GAME_UI_CUSTOM_MSG["BGUCM_CREATE_UNIT"] )



g_pStaticUnit_Create_Attntion_Box = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticUnit_Create_Attntion_Box )
g_pStaticUnit_Create_Attntion_Box:SetName( "Unit_Create_Attntion_Box" )
g_pStaticUnit_Create_Attntion_Box:SetOffsetPos( 0, -17 )

g_pStaticUnit_Create_Attntion_Box:SetColor( D3DXCOLOR(1,1,1,0) )
	


-------------밑판-------------------
g_pPictureUnit_Create_Attention_BoxBG= g_pUIDialog:CreatePicture()
g_pStaticUnit_Create_Attntion_Box:AddPicture( g_pPictureUnit_Create_Attention_BoxBG)

g_pPictureUnit_Create_Attention_BoxBG:SetTex( "DLG_Common_New_Texture26.tga", "Making_Character_Attention_Bg2"  )

g_pPictureUnit_Create_Attention_BoxBG:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(258+OFFSET_X, 328+OFFSET_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureUnit_Create_Attention_BoxBG= g_pUIDialog:CreatePicture()
g_pStaticUnit_Create_Attntion_Box:AddPicture( g_pPictureUnit_Create_Attention_BoxBG)

g_pPictureUnit_Create_Attention_BoxBG:SetTex( "DLG_Common_New_Texture26.tga", "Making_Character_Attention_Bg3"  )

g_pPictureUnit_Create_Attention_BoxBG:SetPoint
{
	   ADD_SIZE_Y=14,
	"LEFT_TOP		= D3DXVECTOR2(258+OFFSET_X, 328+100+OFFSET_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureUnit_Create_Attention_BoxBG= g_pUIDialog:CreatePicture()
g_pStaticUnit_Create_Attntion_Box:AddPicture( g_pPictureUnit_Create_Attention_BoxBG)

g_pPictureUnit_Create_Attention_BoxBG:SetTex( "DLG_Common_New_Texture26.tga", "Making_Character_Attention_Bg4"  )

g_pPictureUnit_Create_Attention_BoxBG:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(258+OFFSET_X, 328+115+OFFSET_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureUnit_Create_Attention_BoxBG= g_pUIDialog:CreatePicture()
g_pStaticUnit_Create_Attntion_Box:AddPicture( g_pPictureUnit_Create_Attention_BoxBG)

g_pPictureUnit_Create_Attention_BoxBG:SetTex( "DLG_Common_New_Texture26.tga", "Making_Character_Attention_Bg5"  )

g_pPictureUnit_Create_Attention_BoxBG:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(286+OFFSET_X, 328+110-3+OFFSET_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}









    g_pStaticUnit_Create_Attntion_Box:AddString
    {
 	 MSG    		 = STR_ID_1190,
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"] ,
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(306+OFFSET_X, 354+OFFSET_Y)",
 	 "COLOR          = D3DXCOLOR(1.0,1.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 
	 
	 
	 
	 


    g_pStaticUnit_Create_Attntion_Box:AddString
    {
 	 MSG    		 = STR_ID_1191,
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(297+OFFSET_X, 386+OFFSET_Y)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 
	 
	 
	 


    g_pStaticUnit_Create_Attntion_Box:AddString
    {
 	 MSG    		 = STR_ID_1192,
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(297+OFFSET_X, 401+OFFSET_Y)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 
	 
	 
	 


    g_pStaticUnit_Create_Attntion_Box:AddString
    {
 	 MSG    		 = STR_ID_1193,
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(297+OFFSET_X, 416+OFFSET_Y)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 
	 
	 
	 
	 g_pStaticUnit_Create_Attntion_Box:AddString
    {
 	 MSG    		 = STR_ID_1194,
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(297+OFFSET_X, 416+15+OFFSET_Y)",
 	 "COLOR          = D3DXCOLOR(1.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }




g_pButtonCreate_Box = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCreate_Box )
g_pButtonCreate_Box:SetName( "ButtonCreate" )
g_pButtonCreate_Box:SetShow( false )
g_pButtonCreate_Box:SetNormalTex( "DLG_Common_Texture12.TGA", "Middle_Window_Normal" )

g_pButtonCreate_Box:SetOverTex( "DLG_Common_Texture12.TGA", "Middle_Window_Over" )

g_pButtonCreate_Box:SetDownTex( "DLG_Common_Texture12.TGA", "Middle_Window_Over" )

g_pButtonCreate_Box:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(313+OFFSET_X, 470+OFFSET_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCreate_Box:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(313+OFFSET_X, 470+OFFSET_Y)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCreate_Box:SetDownPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(314+OFFSET_X, 471+OFFSET_Y)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCreate_Box:SetCustomMsgMouseUp( BEGINNING_GAME_UI_CUSTOM_MSG["BGUCM_CREATE_UNIT"] )


g_pStaticCharacter_Create_ID = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCharacter_Create_ID )

g_pStaticCharacter_Create_ID:SetName( "Character_Create" )
g_pStaticCharacter_Create_ID:SetShow( false )


g_pPictureCharacter_Create_Button_Tex = g_pUIDialog:CreatePicture()
g_pStaticCharacter_Create_ID:AddPicture( g_pPictureCharacter_Create_Button_Tex )

g_pPictureCharacter_Create_Button_Tex:SetTex( "DLG_Common_Button02.tga", "Blue_Plus" )

g_pPictureCharacter_Create_Button_Tex:SetPoint
{
    "LEFT_TOP		= D3DXVECTOR2(325+OFFSET_X, 474+OFFSET_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCharacter_Create_Button_Font = g_pUIDialog:CreatePicture()
g_pStaticCharacter_Create_ID:AddPicture( g_pPictureCharacter_Create_Button_Font )

g_pPictureCharacter_Create_Button_Font:SetTex( "DLG_Common_Texture00.tga", "Create" )

g_pPictureCharacter_Create_Button_Font:SetPoint
{
    "LEFT_TOP		= D3DXVECTOR2(368+OFFSET_X, 481+OFFSET_Y)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pButtonMenu1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMenu1 )
g_pButtonMenu1:SetName( "ButtonBack" )
g_pButtonMenu1:SetNormalTex( "DLG_Common_Texture12.TGA", "Small_Window_Normal" )

g_pButtonMenu1:SetOverTex( "DLG_Common_Texture12.TGA", "Small_Window_Over" )

g_pButtonMenu1:SetDownTex( "DLG_Common_Texture12.TGA", "Small_Window_Over" )

g_pButtonMenu1:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(21,729)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu1:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(21,729)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMenu1:SetDownPoint
{
    ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(22,730)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pButtonMenu1:SetCustomMsgMouseUp( BEGINNING_GAME_UI_CUSTOM_MSG["BGUCM_BACK_TO_UNIT_SELECT"] )


