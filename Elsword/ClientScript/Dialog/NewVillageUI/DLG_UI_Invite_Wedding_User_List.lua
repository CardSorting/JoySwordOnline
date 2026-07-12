-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStatic_SETTING_MAP = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_SETTING_MAP )
g_pStatic_SETTING_MAP:SetName( "SETTING_MAP" )
g_pUIDialog:SetPos( 737-133, 228-100 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( RELATIONSHIP_UI_MESSAGE["RUM_WEDDING_INVITE_POP_FRIEND_LIST_CANCEL"] )

--------내용  BG
g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStatic_SETTING_MAP:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture_MarriageSystem_03.TGA", "Bg_310px_Top" )
g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStatic_SETTING_MAP:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture_MarriageSystem_03.TGA", "Bg_310px_Middle" )
g_pPicture_bg:SetPoint
{
    ADD_SIZE_Y = 284,   
	"LEFT_TOP		= D3DXVECTOR2(0,11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStatic_SETTING_MAP:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture_MarriageSystem_03.TGA", "Bg_310px_Bottom" )
g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,308)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--------내용2 회색 부분  BG
g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStatic_SETTING_MAP:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture_MarriageSystem_03.TGA", "Bg_2_260px_Top" )
g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(14,35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStatic_SETTING_MAP:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture_MarriageSystem_03.TGA", "Bg_2_260px_Middle" )
g_pPicture_bg:SetPoint
{
    ADD_SIZE_Y = 220,   
	"LEFT_TOP		= D3DXVECTOR2(14,43)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStatic_SETTING_MAP:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture_MarriageSystem_03.TGA", "Bg_2_260px_Bottom" )
g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(14,270)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
---------현재 초대 인원 상태창 위치  BG
g_pPictureInfo_BG17 = g_pUIDialog:CreatePicture() 
g_pStatic_SETTING_MAP:AddPicture( g_pPictureInfo_BG17 )
g_pPictureInfo_BG17:SetTex( "DLG_UI_Common_Texture_MarriageSystem_03.TGA", "Bg_TextInput" )
g_pPictureInfo_BG17:SetPoint
{

	"LEFT_TOP	= D3DXVECTOR2(14,282)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}


--[[
---------현재창(친구&길드) 인원 상태창 위치  BG
g_pPictureInfo_BG17 = g_pUIDialog:CreatePicture() 
g_pStatic_SETTING_MAP:AddPicture( g_pPictureInfo_BG17 )
g_pPictureInfo_BG17:SetTex( "DLG_UI_Common_Texture_MarriageSystem_03.TGA", "Bg_FriendGuild" )
g_pPictureInfo_BG17:SetPoint
{

	"LEFT_TOP	= D3DXVECTOR2(14,282)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
]]--

---------작은 제목_닉네임  BG
g_pPictureInfo_BG17 = g_pUIDialog:CreatePicture() 
g_pStatic_SETTING_MAP:AddPicture( g_pPictureInfo_BG17 )
g_pPictureInfo_BG17:SetTex( "DLG_UI_Common_Texture_MarriageSystem_02.TGA", "Bg_STitle_Nickname" )
g_pPictureInfo_BG17:SetPoint
{

	"LEFT_TOP	= D3DXVECTOR2(119,40)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
--[[
---------작은 제목_위치  BG
g_pPictureInfo_BG17 = g_pUIDialog:CreatePicture() 
g_pStatic_SETTING_MAP:AddPicture( g_pPictureInfo_BG17 )
g_pPictureInfo_BG17:SetTex( "DLG_UI_Common_Texture_MarriageSystem_02.TGA", "Bg_STitle_Location" )
g_pPictureInfo_BG17:SetPoint
{

	"LEFT_TOP	= D3DXVECTOR2(204,40)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}
]]--
--------------페이지표시------------------

--- << 버튼

g_pButtonL_arrow = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonL_arrow )
g_pButtonL_arrow:SetName( "Inventory_arrow" )
g_pButtonL_arrow:SetNormalTex( "DLG_UI_BUTTON01.tga", "L_arrow_normal" )

g_pButtonL_arrow:SetOverTex( "DLG_UI_BUTTON01.tga", "L_arrow_over" )

g_pButtonL_arrow:SetDownTex( "DLG_UI_BUTTON01.tga", "L_arrow_over" )

g_pButtonL_arrow:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(183-76,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetOverPoint
{

	
    "LEFT_TOP		= D3DXVECTOR2(183-76,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
	
    "LEFT_TOP		= D3DXVECTOR2(183+1-76,9+1)",


	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetCustomMsgMouseUp( RELATIONSHIP_UI_MESSAGE["RUM_WEDDING_INVITE_USER_LIST_LEFT_ARROW"] )
g_pButtonL_arrow:SetShow ( true )
--->>  버튼

g_pButtonR_arrow = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonR_arrow )
g_pButtonR_arrow:SetName( "Inventory_arrow" )
g_pButtonR_arrow:SetNormalTex( "DLG_UI_BUTTON01.tga", "R_arrow_normal" )

g_pButtonR_arrow:SetOverTex( "DLG_UI_BUTTON01.tga", "R_arrow_over" )

g_pButtonR_arrow:SetDownTex( "DLG_UI_BUTTON01.tga", "R_arrow_over" )

g_pButtonR_arrow:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(260-76,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetOverPoint
{

    "LEFT_TOP		= D3DXVECTOR2(260-76,9)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
    "LEFT_TOP		= D3DXVECTOR2(260+1-76,9+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetCustomMsgMouseUp( RELATIONSHIP_UI_MESSAGE["RUM_WEDDING_INVITE_USER_LIST_RIGHT_ARROW"] )
g_pButtonR_arrow:SetShow (true )

-----페이지
g_pPicturepage= g_pUIDialog:CreatePicture()
g_pStaticGuild:AddPicture( g_pPicturepage)

g_pPicturepage:SetTex( "DLG_UI_COMMON_TEXTURE01.TGA", "page_bar" )

g_pPicturepage:SetPoint
{
    
    "LEFT_TOP		= D3DXVECTOR2(200-76,7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicturepage:SetShow ( true )


-----페이지 번호

g_pStaticnumber = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticnumber )
g_pStaticnumber:SetName( "page_number" )

g_pStaticnumber:AddString
{
	-- MSG 			= "1/3",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
    "LEFT_TOP		= D3DXVECTOR2(210-76,13)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.7)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pStaticnumber:SetShow ( true )


----------------------------체크 박스
-----전체선택체크박스

g_pStatic1st = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic1st )
g_pStatic1st:SetName( "Friends_Search" )

----전체선택 스트링
g_pStatic1st = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic1st )
g_pStatic1st:SetName( "Friends_Search" )
g_pStatic1st:AddString
{
	-- MSG 			= "[00000]",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(47,13)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

-----체크박스
g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStatic1st:AddPicture( g_pPicture_box )
g_pPicture_box:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )

g_pPicture_box:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(27,13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------체크 표시
g_pCheckBoxsecret = g_pUIDialog:CreateCheckBox()
g_pCheckBoxsecret:SetName( "FieldSD" )
g_pUIDialog:AddControl( g_pCheckBoxsecret )
g_pCheckBoxsecret:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBoxsecret:SetCheckedTex( "DLG_Common_New_Texture37.TGA", "CHECK" )

g_pCheckBoxsecret:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(27,13)",
 	"RIGHT_BOTTOM		= D3DXVECTOR2(27+27,13+27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pCheckBoxsecret:SetCheckPoint
{    
 	"LEFT_TOP		= D3DXVECTOR2(27-2,13-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pCheckBoxsecret:SetCustomMsgChecked( RELATIONSHIP_UI_MESSAGE["RUM_WEDDING_INVITE_USER_LIST_ALL_CHECKED"] )
g_pCheckBoxsecret:SetCustomMsgUnChecked( RELATIONSHIP_UI_MESSAGE["RUM_WEDDING_INVITE_USER_LIST_ALL_UNCHECKED"] )

--------------------------------------------------------------------------------------
----BAR
g_pPicture_BAR = g_pUIDialog:CreatePicture()
g_pStatic_SETTING_MAP:AddPicture( g_pPicture_BAR )
g_pPicture_BAR:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )
g_pPicture_BAR:SetPoint
{
    ADD_SIZE_X= 192,
	"LEFT_TOP		= D3DXVECTOR2(24,61)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BAR = g_pUIDialog:CreatePicture()
g_pStatic_SETTING_MAP:AddPicture( g_pPicture_BAR )
g_pPicture_BAR:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )
g_pPicture_BAR:SetPoint
{
    ADD_SIZE_X= 192,
	"LEFT_TOP		= D3DXVECTOR2(24,61+27)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BAR = g_pUIDialog:CreatePicture()
g_pStatic_SETTING_MAP:AddPicture( g_pPicture_BAR )
g_pPicture_BAR:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )
g_pPicture_BAR:SetPoint
{
    ADD_SIZE_X= 192,
	"LEFT_TOP		= D3DXVECTOR2(24,61+27*2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BAR = g_pUIDialog:CreatePicture()
g_pStatic_SETTING_MAP:AddPicture( g_pPicture_BAR )
g_pPicture_BAR:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )
g_pPicture_BAR:SetPoint
{
    ADD_SIZE_X= 192,
	"LEFT_TOP		= D3DXVECTOR2(24,61+27*3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BAR = g_pUIDialog:CreatePicture()
g_pStatic_SETTING_MAP:AddPicture( g_pPicture_BAR )
g_pPicture_BAR:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )
g_pPicture_BAR:SetPoint
{
    ADD_SIZE_X= 192,
	"LEFT_TOP		= D3DXVECTOR2(24,61+27*4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BAR = g_pUIDialog:CreatePicture()
g_pStatic_SETTING_MAP:AddPicture( g_pPicture_BAR )
g_pPicture_BAR:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )
g_pPicture_BAR:SetPoint
{
    ADD_SIZE_X= 192,
	"LEFT_TOP		= D3DXVECTOR2(24,61+27*5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BAR = g_pUIDialog:CreatePicture()
g_pStatic_SETTING_MAP:AddPicture( g_pPicture_BAR )
g_pPicture_BAR:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )
g_pPicture_BAR:SetPoint
{
    ADD_SIZE_X= 192,
	"LEFT_TOP		= D3DXVECTOR2(24,61+27*6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BAR = g_pUIDialog:CreatePicture()
g_pStatic_SETTING_MAP:AddPicture( g_pPicture_BAR )
g_pPicture_BAR:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )
g_pPicture_BAR:SetPoint
{
    ADD_SIZE_X= 192,
	"LEFT_TOP		= D3DXVECTOR2(24,61+27*7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---------BAR
g_pPictureInfo_BG17 = g_pUIDialog:CreatePicture() 
g_pStatic_SETTING_MAP:AddPicture( g_pPictureInfo_BG17 )
g_pPictureInfo_BG17:SetTex( "DLG_UI_Common_Texture01.TGA", "BAR2" )
g_pPictureInfo_BG17:SetPoint
{
	ADD_SIZE_Y	= 231,
	"LEFT_TOP	= D3DXVECTOR2(52,41)",
	"COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME	= 0.0,
}

-------------------------  STATIC
------현재창(친구&길드)
g_pStatic_VIEW= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_VIEW )
g_pStatic_VIEW:SetName( "InvitingType" )

g_pStatic_VIEW:AddString
{
	-- MSG 			= "이름:",
	-- MSG 			= STR_ID_12343, --"이름:",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(20,286)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,0.0)",
}  

------초대인원
g_pStatic_VIEW= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_VIEW )
g_pStatic_VIEW:SetName( "InvitingNumber" )

g_pStatic_VIEW:AddString
{
	-- MSG 			= "이름:",
	MSG 			= STR_ID_12343, --"이름:",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(86,286)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,0.0)",
}  


-------------------초대 버튼
g_pButton_OK = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_OK )
g_pButton_OK:SetName( "OK" )
g_pButton_OK:SetNormalTex( "DLG_UI_Common_Texture_MarriageSystem_02.tga", "Bt_Invite_Add_Normal" )
g_pButton_OK:SetOverTex( "DLG_UI_Common_Texture_MarriageSystem_02.tga", "Bt_Invite_Add_Over" )
g_pButton_OK:SetDownTex( "DLG_UI_Common_Texture_MarriageSystem_02.tga", "Bt_Invite_Add_Over" )
g_pButton_OK:SetDisableTex( "DLG_UI_Common_Texture_MarriageSystem_02.tga", "Bt_Invite_Add_Normal" )
g_pButton_OK:SetNormalPoint
{
	"LEFT_TOP		= D3DXVECTOR2(202-50,282)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_OK:SetOverPoint
{
    "LEFT_TOP		= D3DXVECTOR2(202-50,282)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_OK:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(202-50+1,282+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_OK:SetCustomMsgMouseUp( RELATIONSHIP_UI_MESSAGE["RUM_WEDDING_INVITE_POP_FRIEND_LIST_OK"] )
g_pButton_OK:SetShow ( true )

-------------------제거 버튼
g_pButton_DELETE = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_DELETE )
g_pButton_DELETE:SetName( "DELETE" )
g_pButton_DELETE:SetNormalTex( "DLG_UI_Common_Texture_MarriageSystem_02.tga", "Bt_InviteDelete_Normal" )
g_pButton_DELETE:SetOverTex( "DLG_UI_Common_Texture_MarriageSystem_02.tga", "Bt_InviteDelete_Over" )
g_pButton_DELETE:SetDownTex( "DLG_UI_Common_Texture_MarriageSystem_02.tga", "Bt_InviteDelete_Over" )
g_pButton_DELETE:SetDisableTex( "DLG_UI_Common_Texture_MarriageSystem_02.tga", "Bt_InviteDelete_Normal" )
g_pButton_DELETE:SetNormalPoint
{
	"LEFT_TOP		= D3DXVECTOR2(202-50,282)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_DELETE:SetOverPoint
{
    "LEFT_TOP		= D3DXVECTOR2(202-50,282)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_DELETE:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(202-50+1,282+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_DELETE:SetCustomMsgMouseUp( RELATIONSHIP_UI_MESSAGE["RUM_WEDDING_INVITE_POP_ADD_LIST_OK"] )
g_pButton_DELETE:SetShow ( false )

-----EXIT  버튼
g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Close_Window" )
g_pButtonX:SetNormalTex( "DLG_UI_BUTTON01.tga", "EXIT_NORMAL" )

g_pButtonX:SetOverTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetDownTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(205,6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(205-4,6-4)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(205-3,6-3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( RELATIONSHIP_UI_MESSAGE["RUM_WEDDING_INVITE_POP_FRIEND_LIST_CANCEL"] )

---------------------------------------------------------------------------------------------
g_pControlList = g_pUIDialog:CreateControlList()
g_pUIDialog:AddControl( g_pControlList )
g_pControlList:SetName( "PvpMapControlList" )

g_pControlList:SetYScollBarUpButtonTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Normal" )
g_pControlList:SetYScollBarUpButtonDownTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Over" )
g_pControlList:SetYScollBarDownButtonTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Normal" )
g_pControlList:SetYScollBarDownButtonDownTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Over" )
g_pControlList:SetYScollBarThumbTex( "DLG_Common_New_Texture61.tga", "Scroll_Bar" )
g_pControlList:SetYScollBarTrackTex( "DLG_Room_Button0.tga", "Invisible" )

g_pScrollBar = g_pControlList:InitYScrollBar()
g_pControlList:SetYScrollBarPos( 149 + 470 , 68 + 103 )
--g_pControlList:SetYScrollBarSize( 15, 304 )
g_pControlList:SetYScrollBarSize( 0, 0 )
g_pControlList:SetScrollOffset( 0, 27 )
g_pControlList:SetPos(20, 63)

g_pControlList:SetViewSize( 3, 12, true )




