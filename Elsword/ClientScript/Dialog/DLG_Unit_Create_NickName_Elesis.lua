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

g_pPictureCharacter_Create_ID_BG1:SetTex( "DLG_Character_Create_Texture_01.tga", "Bg_Nickname_Box" )

g_pPictureCharacter_Create_ID_BG1:SetPoint
{
    "LEFT_TOP		= D3DXVECTOR2(74,461)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pStaticCharacter_Create_ID:AddString
{
	-- MSG 			= "",
	FONT_INDEX		= XF_DODUM_15_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	FONT_STYLE		= FONT_STYLE["FS_SHELL"],
	"POS 			= D3DXVECTOR2(110,512)",
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
	"LEFT_TOP		= D3DXVECTOR2(173,484-2)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(271,495+2)",
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
-- g_pStaticUnit_Create_Attntion_Box:SetOffsetPos( -100, -17 )
g_pStaticUnit_Create_Attntion_Box:SetOffsetPos( -100+90, -14 )


g_pStaticUnit_Create_Attntion_Box:SetColor( D3DXCOLOR(1,1,1,0) )
	

--닉네임 생성시 뜨는 / 주의해주세요 박스
-------------밑판-------------------
g_pPictureUnit_Create_Attention_BoxBG= g_pUIDialog:CreatePicture()
g_pStaticUnit_Create_Attntion_Box:AddPicture( g_pPictureUnit_Create_Attention_BoxBG)
g_pPictureUnit_Create_Attention_BoxBG:SetTex( "DLG_Common_New_Texture26.tga", "Making_Character_Attention_Bg2"  )
g_pPictureUnit_Create_Attention_BoxBG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(258,318)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureUnit_Create_Attention_BoxBG= g_pUIDialog:CreatePicture()
g_pStaticUnit_Create_Attntion_Box:AddPicture( g_pPictureUnit_Create_Attention_BoxBG)
g_pPictureUnit_Create_Attention_BoxBG:SetTex( "DLG_Common_New_Texture26.tga", "Making_Character_Attention_Bg3"  )
g_pPictureUnit_Create_Attention_BoxBG:SetPoint
{
	ADD_SIZE_Y=14,
	"LEFT_TOP		= D3DXVECTOR2(258,318+100)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureUnit_Create_Attention_BoxBG= g_pUIDialog:CreatePicture()
g_pStaticUnit_Create_Attntion_Box:AddPicture( g_pPictureUnit_Create_Attention_BoxBG)
g_pPictureUnit_Create_Attention_BoxBG:SetTex( "DLG_Common_New_Texture26.tga", "Making_Character_Attention_Bg4"  )
g_pPictureUnit_Create_Attention_BoxBG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(258,318+115)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--박스안에 조그만 네모 이미지
g_pPictureUnit_Create_Attention_BoxBG= g_pUIDialog:CreatePicture()
g_pStaticUnit_Create_Attntion_Box:AddPicture( g_pPictureUnit_Create_Attention_BoxBG)

g_pPictureUnit_Create_Attention_BoxBG:SetTex( "DLG_Common_New_Texture26.tga", "Making_Character_Attention_Bg5"  )

g_pPictureUnit_Create_Attention_BoxBG:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(286,328+110-3-4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}








--"주의해주세요."
    g_pStaticUnit_Create_Attntion_Box:AddString
    {
 	 MSG    		 = STR_ID_1190,
 	 FONT_INDEX      = XF_DODUM_15_NORMAL,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"] ,
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(306,354-10+2)",
 	 "COLOR          = D3DXCOLOR(1.0,1.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 
	 
	 
	 
	 

--"영어는 12자까지, 한글은 6자까지 가능합니다.
    g_pStaticUnit_Create_Attntion_Box:AddString
    {
 	 MSG    		 = STR_ID_1191,
 	 FONT_INDEX      = XF_DODUM_11_NORMAL,
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(297,386-10)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 
	 
	 
	 

--#$%같은 특수문자를 사용할 수 없습니다.
    g_pStaticUnit_Create_Attntion_Box:AddString
    {
 	 MSG    		 = STR_ID_1192,
 	 FONT_INDEX      = XF_DODUM_11_NORMAL,
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(297,401-10+1-1)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 
	 
	 
	 

--띄어쓰기를 사용할 수 없습니다.
    g_pStaticUnit_Create_Attntion_Box:AddString
    {
 	 MSG    		 = STR_ID_1193,
 	 FONT_INDEX      = XF_DODUM_11_NORMAL,
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(297,416-10)",
 	 "COLOR          = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 
	 
	 
--캐릭터는 하루에 4번만 생성할 수 있습니다.	 
	 g_pStaticUnit_Create_Attntion_Box:AddString
    {
 	 MSG    		 = STR_ID_1194,
 	 FONT_INDEX      = XF_DODUM_11_NORMAL,
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(297,416+15-10+11-4-1)",
 	 "COLOR          = D3DXCOLOR(1.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }


