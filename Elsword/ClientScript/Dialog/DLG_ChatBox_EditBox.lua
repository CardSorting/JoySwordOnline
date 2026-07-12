-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetName( "DLG_ChatBox_EditBox" )
g_pUIDialog:SetPos( 0, 492 )	-- INT_WIDE_BAR g_pUIDialog:SetPos( 0, 492 +18) 
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )



------------------------------ edit box 배경 --------
g_pStaticChat_Box3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticChat_Box3 )
g_pStaticChat_Box3:SetName( "Chat_Edit_Box_BG" )




g_pPictureBG4= g_pUIDialog:CreatePicture()
g_pStaticChat_Box3:AddPicture( g_pPictureBG4)

g_pPictureBG4:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "CHAT_INFUT"  )

g_pPictureBG4:SetPoint
{
    ADD_SIZE_X=-8,
	"LEFT_TOP		= D3DXVECTOR2(1,172)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,0.9)",
	CHANGE_TIME		= 0.0,
}



-- g_pPictureBG4_1= g_pUIDialog:CreatePicture()
-- g_pStaticChat_Box3:AddPicture( g_pPictureBG4_1)

-- g_pPictureBG4_1:SetTex( "DLG_Common_New_Texture13.tga", "Box5"  )

-- g_pPictureBG4_1:SetPoint
-- {
     -- ADD_SIZE_X = 402,
 	-- ADD_SIZE_Y = 25,
	-- "LEFT_TOP		= D3DXVECTOR2(32,166)",
	-- "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	-- CHANGE_TIME		= 0.0,
-- }



--[[
----------------입력창외곽-------------
g_pPictureBG13= g_pUIDialog:CreatePicture()
g_pStaticChat_Box3:AddPicture( g_pPictureBG13)

g_pPictureBG13:SetTex( "DLG_Common_New_Texture13.tga", "Box2"  )

g_pPictureBG13:SetPoint
{
      ADD_SIZE_Y = 24,

	"LEFT_TOP		= D3DXVECTOR2(0+30,166+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureBG14= g_pUIDialog:CreatePicture()
g_pStaticChat_Box3:AddPicture( g_pPictureBG14)

g_pPictureBG14:SetTex( "DLG_Common_New_Texture13.tga", "Box1"  )

g_pPictureBG14:SetPoint
{
      ADD_SIZE_X = 402,

	"LEFT_TOP		= D3DXVECTOR2(2+30,164+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBG15= g_pUIDialog:CreatePicture()
g_pStaticChat_Box3:AddPicture( g_pPictureBG15)

g_pPictureBG15:SetTex( "DLG_Common_New_Texture13.tga", "Box4"  )

g_pPictureBG15:SetPoint
{
      ADD_SIZE_Y = 24,

	"LEFT_TOP		= D3DXVECTOR2(434,166+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBG16= g_pUIDialog:CreatePicture()
g_pStaticChat_Box3:AddPicture( g_pPictureBG16)

g_pPictureBG16:SetTex( "DLG_Common_New_Texture13.tga", "Box3"  )

g_pPictureBG16:SetPoint
{
      ADD_SIZE_X = 402,

	"LEFT_TOP		= D3DXVECTOR2(2+30,191+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBG17= g_pUIDialog:CreatePicture()
g_pStaticChat_Box3:AddPicture( g_pPictureBG17)

g_pPictureBG17:SetTex( "DLG_Common_New_Texture13.tga", "Box6"  )

g_pPictureBG17:SetPoint
{
      ADD_SIZE_Y = 2,

	"LEFT_TOP		= D3DXVECTOR2(1+30,164+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBG18= g_pUIDialog:CreatePicture()
g_pStaticChat_Box3:AddPicture( g_pPictureBG18)

g_pPictureBG18:SetTex( "DLG_Common_New_Texture13.tga", "Box6"  )

g_pPictureBG18:SetPoint
{
      ADD_SIZE_Y = 2,

	"LEFT_TOP		= D3DXVECTOR2(1+30,190+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureBG19= g_pUIDialog:CreatePicture()
g_pStaticChat_Box3:AddPicture( g_pPictureBG19)

g_pPictureBG19:SetTex( "DLG_Common_New_Texture13.tga", "Box6"  )

g_pPictureBG19:SetPoint
{
      ADD_SIZE_Y = 2,

	"LEFT_TOP		= D3DXVECTOR2(434,164+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBG20= g_pUIDialog:CreatePicture()
g_pStaticChat_Box3:AddPicture( g_pPictureBG20)

g_pPictureBG20:SetTex( "DLG_Common_New_Texture13.tga", "Box6"  )

g_pPictureBG20:SetPoint
{
      ADD_SIZE_Y = 2,

	"LEFT_TOP		= D3DXVECTOR2(434,190+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

------------------------------------------------------------
--]]

g_pStaticTabKey = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticTabKey )
g_pStaticTabKey:SetName( "DisplayTabKey" )



g_pPictureTabKey_Text= g_pUIDialog:CreatePicture()
g_pStaticTabKey:AddPicture( g_pPictureTabKey_Text)

g_pPictureTabKey_Text:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "TAB"  )

g_pPictureTabKey_Text:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(4,175)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pStaticChat_Box2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticChat_Box2 )
g_pStaticChat_Box2:SetName( "Chat_Mode" )



g_pPictureAll_Text= g_pUIDialog:CreatePicture()
g_pStaticChat_Box2:AddPicture( g_pPictureAll_Text)

g_pPictureAll_Text:SetTex( "DLG_Common_New_Texture13.tga", "All_Text"  )

g_pPictureAll_Text:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(30,177)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureParty_Text= g_pUIDialog:CreatePicture()
g_pStaticChat_Box2:AddPicture( g_pPictureParty_Text)

g_pPictureParty_Text:SetTex( "DLG_Common_New_Texture13.tga", "Party_Text"  )

g_pPictureParty_Text:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(30,177)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureGuild_Text= g_pUIDialog:CreatePicture()
g_pStaticChat_Box2:AddPicture( g_pPictureGuild_Text)

g_pPictureGuild_Text:SetTex( "DLG_Common_New_Texture13.tga", "Guild_Text"  )

g_pPictureGuild_Text:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(30,177)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureTrade_Text= g_pUIDialog:CreatePicture()
g_pStaticChat_Box2:AddPicture( g_pPictureTrade_Text)

g_pPictureTrade_Text:SetTex( "DLG_Common_New_Texture13.tga", "Secret_Talk_Text"  )

g_pPictureTrade_Text:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(30,177)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--[[ #define ADDED_RELATIONSHIP_SYSTEM 결혼 시스템 업데이트시 주석해제해야함.
g_pPictureRelation_Text1= g_pUIDialog:CreatePicture()
g_pStaticChat_Box2:AddPicture( g_pPictureRelation_Text1)

g_pPictureRelation_Text1:SetTex( "DLG_UI_Common_Texture_MarriageSystem_01.tga", "Bg_Chat_Couple"  )

g_pPictureRelation_Text1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(30,177)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureRelation_Text2= g_pUIDialog:CreatePicture()
g_pStaticChat_Box2:AddPicture( g_pPictureRelation_Text2)

g_pPictureRelation_Text2:SetTex( "DLG_UI_Common_Texture_MarriageSystem_01.tga", "Bg_Chat_Marriage"  )

g_pPictureRelation_Text2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(30,177)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]

g_pStaticNativeEnglish = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNativeEnglish )
g_pStaticNativeEnglish:SetName( "NativeEnglish" )
g_pStaticNativeEnglish:SetShowEnable(false,false)

g_pPictureNative_Text= g_pUIDialog:CreatePicture()
g_pStaticNativeEnglish:AddPicture( g_pPictureNative_Text )

g_pPictureNative_Text:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "HAN"  )

g_pPictureNative_Text:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(350,175)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureEnglish_Text= g_pUIDialog:CreatePicture()
g_pStaticNativeEnglish:AddPicture( g_pPictureEnglish_Text )

g_pPictureEnglish_Text:SetTex( "DLG_UI_Common_Texture64_NEW.tga", "ENG"  )

g_pPictureEnglish_Text:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(350,175)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------------IME-------------------------------

g_pIMEEditBoxChatBox = g_pUIDialog:CreateIMEEditBox()
g_pUIDialog:AddControl( g_pIMEEditBoxChatBox )
g_pIMEEditBoxChatBox:SetName( "IMEEditBoxChatBox" )
g_pIMEEditBoxChatBox:SetPrevTabControlName("EMPTY")
g_pIMEEditBoxChatBox:SetTabControlName("EMPTY")
g_pIMEEditBoxChatBox:SetTextPoint
{
	USE_TEXTURE_SIZE= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(80,175)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(357,195)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pIMEEditBoxChatBox:SetFont( XF_DODUM_15_NORMAL )
g_pIMEEditBoxChatBox:SetTextColor( 1.0, 1.0, 1.0, 1.0 )
g_pIMEEditBoxChatBox:SetSelectedTextColor( 0.0, 0.0, 0.0, 1.0 )
g_pIMEEditBoxChatBox:SetSelectedBackColor( 1.0, 0.0, 0.0, 1.0 )
g_pIMEEditBoxChatBox:SetCaretColor( 1.0, 1.0, 1.0, 1.0 )
g_pIMEEditBoxChatBox:SetCustomMsgEnter( PARTYMSGER_UI_MSG["PUM_CHAT_ENTER"] )
