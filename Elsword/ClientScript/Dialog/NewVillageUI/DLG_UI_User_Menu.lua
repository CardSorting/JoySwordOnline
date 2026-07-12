-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true  )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseOnFocusOut( true )
g_pUIDialog:SetCloseCustomUIEventID( USER_MENU_UI_MSG["UMUI_EXIT"] )

g_pStaticuser = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticuser )
g_pStaticuser:SetName( "user" )

---------BG

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticuser:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture03.TGA", "user_bg1_top" )

g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticuser:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture03.TGA", "user_bg1_middle" )
g_pPicture_bg:SetIndex(1)
g_pPicture_bg:SetPoint
{
    ADD_SIZE_Y = 215,
	"LEFT_TOP		= D3DXVECTOR2(0,44)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStaticuser:AddPicture( g_pPicture_bg )

g_pPicture_bg:SetTex( "DLG_UI_Common_Texture03.TGA", "user_bg1_bottom" )
g_pPicture_bg:SetIndex(2)
g_pPicture_bg:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(0,260)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------------BG2


g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticuser:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "user_bg2_top" )

g_pPicture_bg2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(10,39)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticuser:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "user_bg2_middle" )
g_pPicture_bg2:SetIndex(3)
g_pPicture_bg2:SetPoint
{
    ADD_SIZE_Y = 193,
	"LEFT_TOP		= D3DXVECTOR2(10,44)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticuser:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "user_bg2_bottom" )
g_pPicture_bg2:SetIndex(4)
g_pPicture_bg2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(10,238)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}







-- 캐릭터 생성 및 전직시 아이콘 추가
-------------------  캐릭터 뷰
--------------------------------------------  엘소드  ----------------------------------


g_pStaticFaceImage = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticFaceImage )
g_pStaticFaceImage:SetName( "character_face_image" )


g_pPicture_elsword = g_pUIDialog:CreatePicture()
g_pStaticFaceImage:AddPicture( g_pPicture_elsword )

g_pPicture_elsword:SetTex( "DLG_UI_Common_Texture02.TGA", "elsword_base" )

g_pPicture_elsword:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(11,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



----------------------------------     캐릭터 레벨     -------------------------------


--------------- 10자리 수


g_pStaticten = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticten )
g_pStaticten:SetName( "ten" )


g_pPicture_zero = g_pUIDialog:CreatePicture()
g_pStaticten:AddPicture( g_pPicture_zero )

g_pPicture_zero:SetTex( "DLG_UI_Common_Texture02.TGA", "zero" )
g_pPicture_zero:SetIndex(10)
g_pPicture_zero:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(11,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_one = g_pUIDialog:CreatePicture()
g_pStaticten:AddPicture( g_pPicture_one )

g_pPicture_one:SetTex( "DLG_UI_Common_Texture02.TGA", "one" )
g_pPicture_one:SetIndex(1)
g_pPicture_one:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(11,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_two = g_pUIDialog:CreatePicture()
g_pStaticten:AddPicture( g_pPicture_two )

g_pPicture_two:SetTex( "DLG_UI_Common_Texture02.TGA", "two" )
g_pPicture_two:SetIndex(2)
g_pPicture_two:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(11,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_three = g_pUIDialog:CreatePicture()
g_pStaticten:AddPicture( g_pPicture_three )

g_pPicture_three:SetTex( "DLG_UI_Common_Texture02.TGA", "three" )
g_pPicture_three:SetIndex(3)
g_pPicture_three:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(11,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_four = g_pUIDialog:CreatePicture()
g_pStaticten:AddPicture( g_pPicture_four )
g_pPicture_four:SetIndex(4)
g_pPicture_four:SetTex( "DLG_UI_Common_Texture02.TGA", "four" )

g_pPicture_four:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(11,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_five = g_pUIDialog:CreatePicture()
g_pStaticten:AddPicture( g_pPicture_five )
g_pPicture_five:SetIndex(5)
g_pPicture_five:SetTex( "DLG_UI_Common_Texture02.TGA", "five" )

g_pPicture_five:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(11,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_six = g_pUIDialog:CreatePicture()
g_pStaticten:AddPicture( g_pPicture_six )
g_pPicture_six:SetIndex(6)
g_pPicture_six:SetTex( "DLG_UI_Common_Texture02.TGA", "six" )

g_pPicture_six:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(11,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_seven = g_pUIDialog:CreatePicture()
g_pStaticten:AddPicture( g_pPicture_seven )
g_pPicture_seven:SetIndex(7)
g_pPicture_seven:SetTex( "DLG_UI_Common_Texture02.TGA", "seven" )

g_pPicture_seven:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(11,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_eight = g_pUIDialog:CreatePicture()
g_pStaticten:AddPicture( g_pPicture_eight )
g_pPicture_eight:SetIndex(8)
g_pPicture_eight:SetTex( "DLG_UI_Common_Texture02.TGA", "eight" )

g_pPicture_eight:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(11,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_nine = g_pUIDialog:CreatePicture()
g_pStaticten:AddPicture( g_pPicture_nine )
g_pPicture_nine:SetIndex(9)
g_pPicture_nine:SetTex( "DLG_UI_Common_Texture02.TGA", "nine" )

g_pPicture_nine:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(11,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


------------------------- 한자릿 수

g_pStaticone = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticone )
g_pStaticone:SetName( "one" )



g_pPicture_zero = g_pUIDialog:CreatePicture()
g_pStaticone:AddPicture( g_pPicture_zero )

g_pPicture_zero:SetTex( "DLG_UI_Common_Texture02.TGA", "zero" )
g_pPicture_zero:SetIndex(10)
g_pPicture_zero:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(17,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_one = g_pUIDialog:CreatePicture()
g_pStaticone:AddPicture( g_pPicture_one )

g_pPicture_one:SetTex( "DLG_UI_Common_Texture02.TGA", "one" )
g_pPicture_one:SetIndex(1)
g_pPicture_one:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(17,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_two= g_pUIDialog:CreatePicture()
g_pStaticone:AddPicture( g_pPicture_two )

g_pPicture_two:SetTex( "DLG_UI_Common_Texture02.TGA", "two" )
g_pPicture_two:SetIndex(2)
g_pPicture_two:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(17,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_three = g_pUIDialog:CreatePicture()
g_pStaticone:AddPicture( g_pPicture_three )

g_pPicture_three:SetTex( "DLG_UI_Common_Texture02.TGA", "three" )
g_pPicture_three:SetIndex(3)
g_pPicture_three:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(17,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_four = g_pUIDialog:CreatePicture()
g_pStaticone:AddPicture( g_pPicture_four )

g_pPicture_four:SetTex( "DLG_UI_Common_Texture02.TGA", "four" )
g_pPicture_four:SetIndex(4)
g_pPicture_four:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(17,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_five = g_pUIDialog:CreatePicture()
g_pStaticone:AddPicture( g_pPicture_five )

g_pPicture_five:SetTex( "DLG_UI_Common_Texture02.TGA", "five" )
g_pPicture_five:SetIndex(5)
g_pPicture_five:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(17,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_six = g_pUIDialog:CreatePicture()
g_pStaticone:AddPicture( g_pPicture_six )

g_pPicture_six:SetTex( "DLG_UI_Common_Texture02.TGA", "six" )
g_pPicture_six:SetIndex(6)
g_pPicture_six:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(17,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_seven = g_pUIDialog:CreatePicture()
g_pStaticone:AddPicture( g_pPicture_seven )

g_pPicture_seven:SetTex( "DLG_UI_Common_Texture02.TGA", "seven" )
g_pPicture_seven:SetIndex(7)
g_pPicture_seven:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(17,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_eight = g_pUIDialog:CreatePicture()
g_pStaticone:AddPicture( g_pPicture_eight )

g_pPicture_eight:SetTex( "DLG_UI_Common_Texture02.TGA", "eight" )
g_pPicture_eight:SetIndex(8)
g_pPicture_eight:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(17,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_nine = g_pUIDialog:CreatePicture()
g_pStaticone:AddPicture( g_pPicture_nine )

g_pPicture_nine:SetTex( "DLG_UI_Common_Texture02.TGA", "nine" )
g_pPicture_nine:SetIndex(9)
g_pPicture_nine:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(17,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




----------------------------------  캐릭터 명  ---------------------

 Static_name = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( Static_name )
	Static_name:SetName( "_name" )

	Static_name:AddString
	{
		-- MSG 			= "길어도여섯자",
		FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(34,15)",
		"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	}
	

g_pPicturebar = g_pUIDialog:CreatePicture()
g_pStaticone :AddPicture( g_pPicturebar )

g_pPicturebar:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicturebar:SetPoint
{

	ADD_SIZE_X = 151,
	"LEFT_TOP		= D3DXVECTOR2(6,34)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



--------------------------- 메뉴

-------------------------------------------      캐릭터정보   -----------------------------------------------------

g_pButtoninfo = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtoninfo )
g_pButtoninfo:SetName( "character_info" )
g_pButtoninfo:SetNormalTex( "DLG_UI_BUTTON10.tga", "info_bt_normal" )

g_pButtoninfo:SetOverTex( "DLG_UI_BUTTON10.tga", "info_bt_OVER" )

g_pButtoninfo:SetDownTex( "DLG_UI_BUTTON10.tga", "info_bt_OVER" )

g_pButtoninfo:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(56-21,47)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoninfo:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,42)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoninfo:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,42+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoninfo:SetCustomMsgMouseUp( USER_MENU_UI_MSG["UMUI_INFO_SIMPLE"] )


-------------------------------------------         유저 정보      -----------------------------------------------------

g_pButtoninfo = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtoninfo )
g_pButtoninfo:SetName( "info" )
g_pButtoninfo:SetNormalTex( "DLG_UI_BUTTON06.tga", "user_info" )

g_pButtoninfo:SetOverTex( "DLG_UI_BUTTON06.tga", "user_info_OVER" )

g_pButtoninfo:SetDownTex( "DLG_UI_BUTTON06.tga", "user_info_OVER" )

g_pButtoninfo:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(60+2-18,47)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoninfo:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,42)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoninfo:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,42+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoninfo:SetCustomMsgMouseUp( USER_MENU_UI_MSG["UMUI_INFO"] )

-------------------------------------------       엿보기      -----------------------------------------------------

g_pButtonwatch = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonwatch )
g_pButtonwatch:SetName( "watch" )
g_pButtonwatch:SetNormalTex( "DLG_UI_BUTTON06.tga", "watch" )

g_pButtonwatch:SetOverTex( "DLG_UI_BUTTON06.tga", "watch_OVER" )

g_pButtonwatch:SetDownTex( "DLG_UI_BUTTON06.tga", "watch_OVER" )

g_pButtonwatch:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(60+12,47)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonwatch:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,42)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonwatch:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,42+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonwatch:SetCustomMsgMouseUp( USER_MENU_UI_MSG["UMUI_WATCH"] )




-------------------------------------------       귓 속말    -----------------------------------------------------

g_pButtonwhisper = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonwhisper )
g_pButtonwhisper:SetName( "whisper" )
g_pButtonwhisper:SetNormalTex( "DLG_UI_BUTTON06.tga", "whisper" )

g_pButtonwhisper:SetOverTex( "DLG_UI_BUTTON06.tga", "whisper_OVER" )

g_pButtonwhisper:SetDownTex( "DLG_UI_BUTTON06.tga", "whisper_OVER" )

g_pButtonwhisper:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(60+2+2-16,47)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonwhisper:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,42)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonwhisper:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,42+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonwhisper:SetCustomMsgMouseUp( USER_MENU_UI_MSG["UMUI_WHISPER"] )



-------------------------------------------       친구요청   -----------------------------------------------------

g_pButtonfriend = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonfriend )
g_pButtonfriend:SetName( "friend" )
g_pButtonfriend:SetNormalTex( "DLG_UI_BUTTON06.tga", "friend" )

g_pButtonfriend:SetOverTex( "DLG_UI_BUTTON06.tga", "friend_OVER" )

g_pButtonfriend:SetDownTex( "DLG_UI_BUTTON06.tga", "friend_OVER" )

g_pButtonfriend:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(60-13+2+2,47)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonfriend:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,42)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonfriend:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,42+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonfriend:SetCustomMsgMouseUp( USER_MENU_UI_MSG["UMUI_FRIEND"] )


-------------------------------------------      사제요청   -----------------------------------------------------

g_pButtondisciple = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtondisciple )
g_pButtondisciple:SetName( "disciple" )
g_pButtondisciple:SetNormalTex( "DLG_UI_BUTTON06.tga", "disciple" )

g_pButtondisciple:SetOverTex( "DLG_UI_BUTTON06.tga", "disciple_OVER" )

g_pButtondisciple:SetDownTex( "DLG_UI_BUTTON06.tga", "disciple_OVER" )

g_pButtondisciple:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(60-15,47)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtondisciple:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,42)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtondisciple:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,42+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtondisciple:SetCustomMsgMouseUp( USER_MENU_UI_MSG["UMUI_DISCIPLE"] )


-------------------------------------------      파티장임명   -----------------------------------------------------

g_pButtonleader = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonleader )
g_pButtonleader:SetName( "leader" )
g_pButtonleader:SetNormalTex( "DLG_UI_BUTTON06.tga", "party_leader" )

g_pButtonleader:SetOverTex( "DLG_UI_BUTTON06.tga", "party_leader_OVER" )

g_pButtonleader:SetDownTex( "DLG_UI_BUTTON06.tga", "party_leader_OVER" )

g_pButtonleader:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(56-5,47)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonleader:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,42)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonleader:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,42+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonleader:SetCustomMsgMouseUp( USER_MENU_UI_MSG["UMUI_LEADER"] )


-------------------------------------------      파티요청   -----------------------------------------------------

g_pButtonparty = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonparty )
g_pButtonparty:SetName( "party" )
g_pButtonparty:SetNormalTex( "DLG_UI_BUTTON06.tga", "party" )

g_pButtonparty:SetOverTex( "DLG_UI_BUTTON06.tga", "party_OVER" )

g_pButtonparty:SetDownTex( "DLG_UI_BUTTON06.tga", "party_OVER" )

g_pButtonparty:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(60-13+3,47)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonparty:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,42)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonparty:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,42+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonparty:SetCustomMsgMouseUp( USER_MENU_UI_MSG["UMUI_PARTY"] )




-------------------------------------------      파티초대   -----------------------------------------------------

g_pButtoninvite = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtoninvite )
g_pButtoninvite:SetName( "invite" )
g_pButtoninvite:SetNormalTex( "DLG_UI_BUTTON06.tga", "party_invite" )

g_pButtoninvite:SetOverTex( "DLG_UI_BUTTON06.tga", "party_invite_OVER" )

g_pButtoninvite:SetDownTex( "DLG_UI_BUTTON06.tga", "party_invite_OVER" )

g_pButtoninvite:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(60-16,47)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoninvite:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,42)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoninvite:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,42+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoninvite:SetCustomMsgMouseUp( USER_MENU_UI_MSG["UMUI_INVITE"] )




-------------------------------------------      강퇴   -----------------------------------------------------

g_pButtonout = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonout )
g_pButtonout:SetName( "out" )
g_pButtonout:SetNormalTex( "DLG_UI_BUTTON06.tga", "get_out" )

g_pButtonout:SetOverTex( "DLG_UI_BUTTON06.tga", "get_out_OVER" )

g_pButtonout:SetDownTex( "DLG_UI_BUTTON06.tga", "get_out_OVER" )

g_pButtonout:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(60+8,47-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonout:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,42)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonout:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,42+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonout:SetCustomMsgMouseUp( USER_MENU_UI_MSG["UMUI_OUT"] )





-------------------------------------------      개인거래   -----------------------------------------------------

g_pButtontrade = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtontrade )
g_pButtontrade:SetName( "trade" )
g_pButtontrade:SetNormalTex( "DLG_UI_BUTTON06.tga", "trade" )

g_pButtontrade:SetOverTex( "DLG_UI_BUTTON06.tga", "trade_OVER" )

g_pButtontrade:SetDownTex( "DLG_UI_BUTTON06.tga", "trade_OVER" )

g_pButtontrade:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(59-27+3+20,47)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtontrade:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,42)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtontrade:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,42+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtontrade:SetCustomMsgMouseUp( USER_MENU_UI_MSG["UMUI_TRADE"] )


-------------------------------------------      길드초대   -----------------------------------------------------
g_pButtonInvite = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonInvite )
g_pButtonInvite:SetName( "inviteguild" )
g_pButtonInvite:SetNormalTex( "DLG_UI_BUTTON14.tga", "Guild_Invite_Normal" )

g_pButtonInvite:SetOverTex( "DLG_UI_BUTTON14.tga", "Guild_Invite_OVER" )

g_pButtonInvite:SetDownTex( "DLG_UI_BUTTON14.tga", "Guild_Invite_OVER" )

g_pButtonInvite:SetShow( false )

g_pButtonInvite:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(60-9,47)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonInvite:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,42)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonInvite:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(13+1,42+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonInvite:SetCustomMsgMouseUp( USER_MENU_UI_MSG["UMUI_INVITE_GUILD_MEMBER"] )
