-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--[[	kimhc // 2010-11-16
		캐릭터 생성창에서 캐릭터를 선택하면
		나오는 닉네임 입력창을 다루고 있는 파일
		닉네임 입력 IMEEditBox, 생성 버튼, 주의문구 포함
--]]

g_pStaticCharacter_Create_ID = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCharacter_Create_ID )

g_pStaticCharacter_Create_ID:SetName( "Character_Create_ID" ) 
g_pStaticCharacter_Create_ID:SetShow( false )

--------닉네임  bg_101210
g_pPictureCharacter_Create_ID_BG1 = g_pUIDialog:CreatePicture()
g_pStaticCharacter_Create_ID:AddPicture( g_pPictureCharacter_Create_ID_BG1 )

g_pPictureCharacter_Create_ID_BG1:SetTex( "DLG_Common_Texture24.tga", "NameBG1" )

g_pPictureCharacter_Create_ID_BG1:SetPoint
{
    "LEFT_TOP		= D3DXVECTOR2(75-7,468)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-----삭제 예정
-- g_pPictureCharacter_Create_ID_BG1 = g_pUIDialog:CreatePicture()
-- g_pStaticCharacter_Create_ID:AddPicture( g_pPictureCharacter_Create_ID_BG1 )

-- g_pPictureCharacter_Create_ID_BG1:SetTex( "DLG_Common_Texture02.tga", "NameBG2" )

-- g_pPictureCharacter_Create_ID_BG1:SetPoint
-- {
    -- ADD_SIZE_X = 337,
    -- "LEFT_TOP		= D3DXVECTOR2(86,465)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pPictureCharacter_Create_ID_BG1 = g_pUIDialog:CreatePicture()
-- g_pStaticCharacter_Create_ID:AddPicture( g_pPictureCharacter_Create_ID_BG1 )

-- g_pPictureCharacter_Create_ID_BG1:SetTex( "DLG_Common_Texture02.tga", "NameBG3" )

-- g_pPictureCharacter_Create_ID_BG1:SetPoint
-- {
    -- "LEFT_TOP		= D3DXVECTOR2(424,465)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }


g_pPictureCharacter_Create_ID_BOX1 = g_pUIDialog:CreatePicture()
g_pStaticCharacter_Create_ID:AddPicture( g_pPictureCharacter_Create_ID_BOX1 )

g_pPictureCharacter_Create_ID_BOX1:SetTex( "DLG_Common_Texture24.tga", "NameBOX1" )

g_pPictureCharacter_Create_ID_BOX1:SetPoint
{
	ADD_SIZE_X		= -8,
    "LEFT_TOP		= D3DXVECTOR2(146+8,482)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
------삭제 예정
-- g_pPictureCharacter_Create_ID_BOX1 = g_pUIDialog:CreatePicture()
-- g_pStaticCharacter_Create_ID:AddPicture( g_pPictureCharacter_Create_ID_BOX1 )

-- g_pPictureCharacter_Create_ID_BOX1:SetTex( "DLG_Common_Texture02.tga", "NameBOX2" )

-- g_pPictureCharacter_Create_ID_BOX1:SetPoint
-- {
    -- ADD_SIZE_X = 132,
    -- "LEFT_TOP		= D3DXVECTOR2(157,472)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }

-- g_pPictureCharacter_Create_ID_BOX1 = g_pUIDialog:CreatePicture()
-- g_pStaticCharacter_Create_ID:AddPicture( g_pPictureCharacter_Create_ID_BOX1 )

-- g_pPictureCharacter_Create_ID_BOX1:SetTex( "DLG_Common_Texture02.tga", "NameBOX3" )

-- g_pPictureCharacter_Create_ID_BOX1:SetPoint
-- {
    -- "LEFT_TOP		= D3DXVECTOR2(290,472)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }


g_pPictureCharacter_Create_Nicname = g_pUIDialog:CreatePicture()
g_pStaticCharacter_Create_ID:AddPicture( g_pPictureCharacter_Create_Nicname )

g_pPictureCharacter_Create_Nicname:SetTex( "DLG_Common_Texture24.tga", "NAME_BG2" )

g_pPictureCharacter_Create_Nicname:SetPoint
{
    "LEFT_TOP		= D3DXVECTOR2(94,489)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticCharacter_Create_ID:AddString
{
	-- MSG 			= "",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
	"POS 			= D3DXVECTOR2(110,512)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

--------이거 잘 모르겠는데 위치 맞춰주실 수 있나요?
g_pIMEEditBoxNickName = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIMEEditBoxNickName )
g_pIMEEditBoxNickName:SetName( "IMEEditBoxUnitCreateNickName" )
g_pIMEEditBoxNickName:SetEnable( false )

g_pIMEEditBoxNickName:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(173+12,481-2+10)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(271+12,492+2+10)",
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
g_pIMEEditBoxNickName:SetCustomMsgEnter( STATE_CREATE_UNIT_UI_CUSTOM_MSG["SCUUCM_CREATE_UNIT"] )



g_pStaticUnit_Create_Attntion_Box = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticUnit_Create_Attntion_Box )
g_pStaticUnit_Create_Attntion_Box:SetName( "Unit_Create_Attntion_Box" )
g_pStaticUnit_Create_Attntion_Box:SetOffsetPos( 0, -17 )

g_pStaticUnit_Create_Attntion_Box:SetColor( D3DXCOLOR(1,1,1,0) )
	


-------------밑판-------------------

g_pPictureUnit_Create_Attention_BoxBG= g_pUIDialog:CreatePicture()
g_pStaticUnit_Create_Attntion_Box:AddPicture( g_pPictureUnit_Create_Attention_BoxBG)

g_pPictureUnit_Create_Attention_BoxBG:SetTex( "DLG_Common_New_Texture26.tga", "Making_Character_Attention_Bg"  )

g_pPictureUnit_Create_Attention_BoxBG:SetPoint
{
	ADD_SIZE_X=10,
	"LEFT_TOP		= D3DXVECTOR2(258,328)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureUnit_Create_Attention_BoxBG= g_pUIDialog:CreatePicture()
g_pStaticUnit_Create_Attntion_Box:AddPicture( g_pPictureUnit_Create_Attention_BoxBG)

g_pPictureUnit_Create_Attention_BoxBG:SetTex( "DLG_Common_New_Texture26.tga", "Making_Character_Attention_Bg3"  )

g_pPictureUnit_Create_Attention_BoxBG:SetPoint
{
	ADD_SIZE_X=10,
	   ADD_SIZE_Y=14,
	"LEFT_TOP		= D3DXVECTOR2(258-1,328+100-30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--[[

g_pPictureUnit_Create_Attention_BoxBG= g_pUIDialog:CreatePicture()
g_pStaticUnit_Create_Attntion_Box:AddPicture( g_pPictureUnit_Create_Attention_BoxBG)

g_pPictureUnit_Create_Attention_BoxBG:SetTex( "DLG_Common_New_Texture26.tga", "Making_Character_Attention_Bg4"  )

g_pPictureUnit_Create_Attention_BoxBG:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(258,328+115)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--]]

--[[
g_pPictureUnit_Create_Attention_BoxBG= g_pUIDialog:CreatePicture()
g_pStaticUnit_Create_Attntion_Box:AddPicture( g_pPictureUnit_Create_Attention_BoxBG)

g_pPictureUnit_Create_Attention_BoxBG:SetTex( "DLG_Common_New_Texture26.tga", "Making_Character_Attention_Bg5"  )

g_pPictureUnit_Create_Attention_BoxBG:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(286,328+110-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]








    g_pStaticUnit_Create_Attntion_Box:AddString
    {
 	 MSG    		 = STR_ID_1190,
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"] ,
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(306,354)",
 	 "COLOR          = D3DXCOLOR(1.0,1.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 
	 
	 
	 
	 


    g_pStaticUnit_Create_Attntion_Box:AddString
    {
 	 MSG    		 = STR_ID_1191,
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(297,386)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 
	 
	 
	 

	 


    g_pStaticUnit_Create_Attntion_Box:AddString
    {
 	 MSG    		 = STR_ID_1193,
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(297,416)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 
	 

