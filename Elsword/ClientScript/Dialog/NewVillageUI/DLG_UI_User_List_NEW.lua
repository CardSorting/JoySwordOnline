-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true  )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseOnFocusOut( true )
g_pUIDialog:SetCloseCustomUIEventID(USERLIST_POPUP_MSG["UPM_QUIT"] )

g_pStaticuser_list = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticuser_list )
g_pStaticuser_list:SetName( "user_list" )

------TITLE
g_pPicture_TITLE = g_pUIDialog:CreatePicture()
g_pStaticuser_list:AddPicture( g_pPicture_TITLE )

g_pPicture_TITLE:SetTex( "DLG_UI_Title03.TGA", "USER_LIST_TITLE" )
g_pPicture_TITLE:SetIndex(4)
g_pPicture_TITLE:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(12,10)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.75)",
	CHANGE_TIME		= 0.0,
}

-------------------투명 버튼
-------버튼 1)
g_pButtonUnseeable_1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUnseeable_1 )
g_pButtonUnseeable_1:SetName( "User_1" )
g_pButtonUnseeable_1:SetNormalTex( "DLG_UI_Common_Texture13.tga", "Black" )
g_pButtonUnseeable_1:SetOverTex( "DLG_UI_BUTTON17.tga", "bg_button_over" )
g_pButtonUnseeable_1:SetDownTex( "DLG_UI_BUTTON17.tga", "bg_button_over"  )
g_pButtonUnseeable_1:SetNormalPoint
{
    ADD_SIZE_X = 136,
	ADD_SIZE_Y = 22,
 	"LEFT_TOP		= D3DXVECTOR2(14,33+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnseeable_1:SetOverPoint
{
    ADD_SIZE_Y = 1,
	"LEFT_TOP		= D3DXVECTOR2(14,33+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnseeable_1:SetDownPoint
{
   
	ADD_SIZE_Y = 1,
 	"LEFT_TOP		= D3DXVECTOR2(14,33+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnseeable_1:SetCustomMsgMouseUp( USERLIST_POPUP_MSG["UPM_CLICK1"] )

-------버튼 2)
g_pButtonUnseeable_2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUnseeable_2 )
g_pButtonUnseeable_2:SetName( "User_2" )
g_pButtonUnseeable_2:SetNormalTex( "DLG_UI_Common_Texture13.tga", "Black" )
g_pButtonUnseeable_2:SetOverTex( "DLG_UI_BUTTON17.tga", "bg_button_over" )
g_pButtonUnseeable_2:SetDownTex( "DLG_UI_BUTTON17.tga", "bg_button_over"  )
g_pButtonUnseeable_2:SetNormalPoint
{
    ADD_SIZE_X = 136,
	ADD_SIZE_Y = 22,
 	"LEFT_TOP		= D3DXVECTOR2(14,33+30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnseeable_2:SetOverPoint
{
	ADD_SIZE_Y = 1,
	"LEFT_TOP		= D3DXVECTOR2(14,33+30-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnseeable_2:SetDownPoint
{
	ADD_SIZE_Y = 1,
 	"LEFT_TOP		= D3DXVECTOR2(14,33+30-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnseeable_2:SetCustomMsgMouseUp( USERLIST_POPUP_MSG["UPM_CLICK2"] )

-------버튼 3)
g_pButtonUnseeable_3 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUnseeable_3 )
g_pButtonUnseeable_3:SetName( "User_3" )
g_pButtonUnseeable_3:SetNormalTex( "DLG_UI_Common_Texture13.tga", "Black" )
g_pButtonUnseeable_3:SetOverTex( "DLG_UI_BUTTON17.tga", "bg_button_over" )
g_pButtonUnseeable_3:SetDownTex( "DLG_UI_BUTTON17.tga", "bg_button_over"  )
g_pButtonUnseeable_3:SetNormalPoint
{
    ADD_SIZE_X = 136,
	ADD_SIZE_Y = 22,
 	"LEFT_TOP		= D3DXVECTOR2(14,33+30+30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnseeable_3:SetOverPoint
{
	ADD_SIZE_Y = 1,
	"LEFT_TOP		= D3DXVECTOR2(14,33+30+30-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnseeable_3:SetDownPoint
{
    ADD_SIZE_Y = 1,
 	"LEFT_TOP		= D3DXVECTOR2(14,33+30+30-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnseeable_3:SetCustomMsgMouseUp( USERLIST_POPUP_MSG["UPM_CLICK3"] )

-------버튼 4)
g_pButtonUnseeable_4 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUnseeable_4 )
g_pButtonUnseeable_4:SetName( "User_4" )
g_pButtonUnseeable_4:SetNormalTex( "DLG_UI_Common_Texture13.tga", "Black" )
g_pButtonUnseeable_4:SetOverTex( "DLG_UI_BUTTON17.tga", "bg_button_over")
g_pButtonUnseeable_4:SetDownTex( "DLG_UI_BUTTON17.tga", "bg_button_over"  )
g_pButtonUnseeable_4:SetNormalPoint
{
    ADD_SIZE_X = 136,
	ADD_SIZE_Y = 22,
 	"LEFT_TOP		= D3DXVECTOR2(14,33+30+30+30-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnseeable_4:SetOverPoint
{
	ADD_SIZE_Y = 1,
	"LEFT_TOP		= D3DXVECTOR2(14,33+30+30+30-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnseeable_4:SetDownPoint
{
	ADD_SIZE_Y = 1,
 	"LEFT_TOP		= D3DXVECTOR2(14,33+30+30+30-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUnseeable_4:SetCustomMsgMouseUp( USERLIST_POPUP_MSG["UPM_CLICK4"] )

-- 캐릭터 생성 및 전직시 아이콘 추가
-------------------  캐릭터 뷰
--------------------------------------------  엘소드  ----------------------------------
-----STATIC
g_pStaticFaceImage = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticFaceImage )
g_pStaticFaceImage:SetName( "character_face_image" )

---------------------image1)
g_pPicture_elsword1 = g_pUIDialog:CreatePicture()
g_pStaticFaceImage:AddPicture( g_pPicture_elsword1 )
g_pPicture_elsword1:SetTex( "DLG_UI_Common_Texture16_NEW.TGA", "ELSWORD_ICON" )
g_pPicture_elsword1:SetIndex(1)
g_pPicture_elsword1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(22,37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

------------  캐릭터 명1) 
Static_name1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( Static_name1 )
Static_name1:SetName( "User_Name_1" )
Static_name1:AddString
{
--	MSG 			= "길어도여섯자",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(50,40)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pPicturebar1 = g_pUIDialog:CreatePicture()
g_pStaticFaceImage:AddPicture( g_pPicturebar1 )
g_pPicturebar1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )
g_pPicturebar1:SetIndex(5)
g_pPicturebar1:SetPoint
{
	ADD_SIZE_X = 142,
	"LEFT_TOP		= D3DXVECTOR2(12,59)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

---------------------image2)
g_pPicture_elsword2 = g_pUIDialog:CreatePicture()
g_pStaticFaceImage:AddPicture( g_pPicture_elsword2 )
g_pPicture_elsword2:SetTex( "DLG_UI_Common_Texture16_NEW.TGA", "ELSWORD_ICON" )
g_pPicture_elsword2:SetIndex(2)
g_pPicture_elsword2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(22,37+30-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

------------  캐릭터 명2) 
Static_name2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( Static_name2 )
Static_name2:SetName( "User_Name_2" )
Static_name2:AddString
{
--	MSG 			= "길어도여섯자",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(50,40+30-2)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pPicturebar2 = g_pUIDialog:CreatePicture()
g_pStaticFaceImage:AddPicture( g_pPicturebar2 )
g_pPicturebar2:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )
g_pPicturebar2:SetIndex(6)
g_pPicturebar2:SetPoint
{
	ADD_SIZE_X = 142,
	"LEFT_TOP		= D3DXVECTOR2(12,59+30-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

---------------------image3)
g_pPicture_elsword3 = g_pUIDialog:CreatePicture()
g_pStaticFaceImage:AddPicture( g_pPicture_elsword3 )
g_pPicture_elsword3:SetTex( "DLG_UI_Common_Texture16_NEW.TGA", "ELSWORD_ICON" )
g_pPicture_elsword3:SetIndex(3)
g_pPicture_elsword3:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(22,37+30+30-4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---------  캐릭터 명3) 
Static_name3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( Static_name3 )
Static_name3:SetName( "User_Name_3" )
Static_name3:AddString
{
--	MSG 			= "길어도여섯자",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(50,40+30+30-4)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pPicturebar3 = g_pUIDialog:CreatePicture()
g_pStaticFaceImage:AddPicture( g_pPicturebar3 )
g_pPicturebar3:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )
g_pPicturebar3:SetIndex(7)
g_pPicturebar3:SetPoint
{
	ADD_SIZE_X = 142,
	"LEFT_TOP		= D3DXVECTOR2(12,59+30+30-4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

---------------------image4)
g_pPicture_elsword4 = g_pUIDialog:CreatePicture()
g_pStaticFaceImage:AddPicture( g_pPicture_elsword4 )
g_pPicture_elsword4:SetTex( "DLG_UI_Common_Texture16_NEW.TGA", "ELSWORD_ICON" )
g_pPicture_elsword4:SetIndex(4)
g_pPicture_elsword4:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(22,37+30+30+30-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---------  캐릭터 명4) 
Static_name4 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( Static_name4 )
Static_name4:SetName( "User_Name_4" )
Static_name4:AddString
{
--	MSG 			= "길어도여섯자",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(50,40+30+30+30-6)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

-------------페이지 넘기기
------왼쪽
g_pButtonUser_list_left_Triangle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUser_list_left_Triangle )
g_pButtonUser_list_left_Triangle:SetName( "User_list_left_Triangle" )
g_pButtonUser_list_left_Triangle:SetNormalTex( "DLG_Common_New_Texture10.TGA", "LeftArrow_Normal" )
g_pButtonUser_list_left_Triangle:SetOverTex( "DLG_Common_New_Texture10.TGA", "LeftArrow_Over" )
g_pButtonUser_list_left_Triangle:SetDownTex( "DLG_Common_New_Texture10.TGA", "LeftArrow_Normal" )
g_pButtonUser_list_left_Triangle:SetNormalPoint
{
	"LEFT_TOP		= D3DXVECTOR2(35,157-9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.75)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser_list_left_Triangle:SetOverPoint
{
    ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(35-1,157-1-9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.75)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser_list_left_Triangle:SetDownPoint
{
	"LEFT_TOP		= D3DXVECTOR2(35,157-9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.75)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser_list_left_Triangle:SetCustomMsgMouseUp( USERLIST_POPUP_MSG["UPM_PREV_PAGE"] )

------오른쪽
g_pButtonUser_list_right_Triangle = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonUser_list_right_Triangle )
g_pButtonUser_list_right_Triangle:SetName( "User_list_right_Triangle" )
g_pButtonUser_list_right_Triangle:SetNormalTex( "DLG_Common_New_Texture10.TGA", "RightArrow_Normal" )
g_pButtonUser_list_right_Triangle:SetOverTex( "DLG_Common_New_Texture10.TGA", "RightArrow_Over" )
g_pButtonUser_list_right_Triangle:SetDownTex( "DLG_Common_New_Texture10.TGA", "RightArrow_Normal" )
g_pButtonUser_list_right_Triangle:SetNormalPoint
{
	"LEFT_TOP		= D3DXVECTOR2(112,157-9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.75)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser_list_right_Triangle:SetOverPoint
{
    ADD_SIZE_X = -2,
	ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(112-1,157-1-9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.75)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser_list_right_Triangle:SetDownPoint
{
	"LEFT_TOP		= D3DXVECTOR2(112,157-9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.75)",
	CHANGE_TIME		= 0.0,
}
g_pButtonUser_list_right_Triangle:SetCustomMsgMouseUp( USERLIST_POPUP_MSG["UPM_NEXT_PAGE"] )

----1/3
g_pStaticPage_number_Font  = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPage_number_Font )
g_pStaticPage_number_Font:SetName( "g_pStaticPage_number_Font" )

g_pStaticPage_number_Font:AddString
{
	--MSG 			= "1 / 3",
	FONT_INDEX      = XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(82,159-9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,0.75)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,0.75)",
}