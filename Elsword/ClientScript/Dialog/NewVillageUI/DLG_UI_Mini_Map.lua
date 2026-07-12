-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




g_pUIDialog:SetName( "DLG_UI_MINI_MAP" )
g_pUIDialog:SetPos( 728  ,-4 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
----g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL"] )





g_pStatic_mini = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_mini )
g_pStatic_mini:SetName( "mini" )


--[[
---------------MAP IMAGE

g_pPicture_image = g_pUIDialog:CreatePicture()
g_pStatic_mini:AddPicture( g_pPicture_image )

g_pPicture_image:SetTex( "DLG_UI_Common_Texture01.TGA", "black_bar" )

g_pPicture_image:SetPoint
{
    ADD_SIZE_X = 239,
	ADD_SIZE_Y = 104,
	"LEFT_TOP		= D3DXVECTOR2(44,32)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.3)",
	CHANGE_TIME		= 0.0,
}
--]]

----------미니맵 배경
g_pPictureOutLine = g_pUIDialog:CreatePicture()
g_pStatic_mini:AddPicture( g_pPictureOutLine )

g_pPictureOutLine:SetTex( "DLG_UI_Common_Texture09.TGA", "mini_map" )

g_pPictureOutLine:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--------미니맵 배경
--[[
g_pPicture_minimap_bg = g_pUIDialog:CreatePicture()
g_pStatic_mini:AddPicture( g_pPicture_minimap_bg )
g_pPicture_minimap_bg:SetTex( "DLG_UI_Common_Texture46.TGA", "bg_minimap_1" )
g_pPicture_minimap_bg:SetPoint
{
 
	"LEFT_TOP		= D3DXVECTOR2(40+2,30+7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_minimap_bg:SetShow( false )
--]]


--[[

--------------BAR

g_pPicture_bar = g_pUIDialog:CreatePicture()
g_pStatic_mini:AddPicture( g_pPicture_bar )

g_pPicture_bar:SetTex( "DLG_UI_Common_Texture01.TGA", "bar2" )

g_pPicture_bar:SetPoint
{
    
	ADD_SIZE_Y = 129,
	"LEFT_TOP		= D3DXVECTOR2(261,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]


------------------월드맵 보기

g_pButtonWorld_map = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonWorld_map )
g_pButtonWorld_map:SetName( "World_map" )
g_pButtonWorld_map:SetNormalTex( "DLG_UI_Button13.tga", "btn_World_normal" )

g_pButtonWorld_map:SetOverTex( "DLG_UI_Button13.tga", "btn_World_over" )

g_pButtonWorld_map:SetDownTex( "DLG_UI_Button13.tga", "btn_World_over" )

g_pButtonWorld_map:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(261,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonWorld_map:SetOverPoint
{
     ADD_SIZE_X = 2,
     ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(261-1,5-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonWorld_map:SetDownPoint
{
     
 	"LEFT_TOP		= D3DXVECTOR2(261,5)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonWorld_map:SetCustomMsgMouseUp( MINI_MAP_UI_CUSTOM_MSG["MMUCM_FIELD_OPEN_WORLD_MAP"] )


------------------이벤트 

g_pButtonEvent = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonEvent )
g_pButtonEvent:SetName( "Mini_Event" )
g_pButtonEvent:SetNormalTex( "DLG_UI_Button13.tga", "event_over" )

g_pButtonEvent:SetOverTex( "DLG_UI_Button13.tga", "event_over" )

g_pButtonEvent:SetDownTex( "DLG_UI_Button13.tga", "event_over" )

g_pButtonEvent:SetDisableTex( "DLG_UI_Button13.tga", "event_normal" )
g_pButtonEvent:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(12,36)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonEvent:SetOverPoint
{
     ADD_SIZE_X = 2,
     ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(12-1,36-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonEvent:SetDownPoint
{
     
 	"LEFT_TOP		= D3DXVECTOR2(12,36)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonEvent:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(12,36)",
        "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--g_pButtonEvent:SetCustomMsgMouseUp( MINI_MAP_UI_CUSTOM_MSG["MMUCM_FIELD_OPEN_WORLD_MAP"] )


---------------------이벤트 말칸

g_pStaticEvent = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticEvent )
g_pStaticEvent:SetName( "Event_Sign" )


g_pPictureSign = g_pUIDialog:CreatePicture()
g_pStaticEvent:AddPicture( g_pPictureSign )

g_pPictureSign:SetTex( "DLG_UI_Common_Texture09.TGA", "event_sign" )

g_pPictureSign:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(-49,31)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStaticEvent:AddString
{
	MSG 			= STR_ID_1302,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(-23,38)",
	"COLOR			= D3DXCOLOR(0.26,0.54,0.79,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}









------------------포스트

g_pButtonPost = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonPost )
g_pButtonPost:SetName( "Button_NewMail" )
g_pButtonPost:SetNormalTex( "DLG_UI_Button13.tga", "Post_over" )

g_pButtonPost:SetOverTex( "DLG_UI_Button13.tga", "Post_over" )

g_pButtonPost:SetDownTex( "DLG_UI_Button13.tga", "Post_over" )

g_pButtonPost:SetDisableTex( "DLG_UI_Button13.tga", "post_normal" )
g_pButtonPost:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(12,63)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPost:SetOverPoint
{
     ADD_SIZE_X = 2,
     ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(12-1,63-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPost:SetDownPoint
{
     
 	"LEFT_TOP		= D3DXVECTOR2(12,63)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonPost:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(12,63)",
        "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--- 퀘스트

g_pButtonQuest = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonQuest )
g_pButtonQuest:SetName( "Button_NewQuest" )
g_pButtonQuest:SetNormalTex( "DLG_UI_Button13.tga", "Quest_over" )

g_pButtonQuest:SetOverTex( "DLG_UI_Button13.tga", "Quest_over" )

g_pButtonQuest:SetDownTex( "DLG_UI_Button13.tga", "Quest_over" )

g_pButtonQuest:SetDisableTex( "DLG_UI_Button13.tga", "quest_normal" )

g_pButtonQuest:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(12,88)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonQuest:SetOverPoint
{
     ADD_SIZE_X = 2,
     ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(12-1,88-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonQuest:SetDownPoint
{
     
 	"LEFT_TOP		= D3DXVECTOR2(12,88)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonQuest:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(12,90)",
        "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonQuest:SetCustomMsgMouseUp( MINI_MAP_UI_CUSTOM_MSG["MMUCM_FIELD_OPEN_NEW_QUEST_MAP"] )


--- 장비 내구도

g_pButtonEuqip = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonEuqip )
g_pButtonEuqip:SetName( "Button_Endurance" )
g_pButtonEuqip:SetNormalTex( "DLG_UI_Button13.tga", "Euqip_over" )

g_pButtonEuqip:SetOverTex( "DLG_UI_Button13.tga", "Euqip_over" )

g_pButtonEuqip:SetDownTex( "DLG_UI_Button13.tga", "Euqip_over" )

g_pButtonEuqip:SetDisableTex( "DLG_UI_Button13.tga", "euqip_normal" )

g_pButtonEuqip:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(12,117)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonEuqip:SetOverPoint
{
     ADD_SIZE_X = 2,
     ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(12-1,117-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonEuqip:SetDownPoint
{
     
 	"LEFT_TOP		= D3DXVECTOR2(12,117)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonEuqip:SetDisablePoint
{

 	"LEFT_TOP		= D3DXVECTOR2(12,117)",
        "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonEuqip:SetCustomMsgMouseOver( MINI_MAP_UI_CUSTOM_MSG["MMUCM_ENDURANCE_BUTTON_OVER"] )
g_pButtonEuqip:SetCustomMsgMouseOut( MINI_MAP_UI_CUSTOM_MSG["MMUCM_ENDURANCE_BUTTON_OUT"] )


--- 줌 아웃

g_pButtonCamera = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonCamera )
g_pButtonCamera:SetName( "Mini_Camera" )
g_pButtonCamera:SetNormalTex( "DLG_UI_Button13.tga", "Camera_normal" )

g_pButtonCamera:SetOverTex( "DLG_UI_Button13.tga", "Camera_over" )

g_pButtonCamera:SetDownTex( "DLG_UI_Button13.tga", "Camera_over" )

g_pButtonCamera:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(259,112)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCamera:SetOverPoint
{
     ADD_SIZE_X = 2,
     ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(256-1,110-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCamera:SetDownPoint
{
     
 	"LEFT_TOP		= D3DXVECTOR2(256,110)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonCamera:SetCustomMsgMouseUp( MINI_MAP_UI_CUSTOM_MSG["MMUCM_ZOOM_BUTTON"] )


g_pStaticZoom_Num = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticZoom_Num )
g_pStaticZoom_Num:SetName( "Zoom_num" )

g_pStaticZoom_Num:AddString
{
	-- MSG 			= "3",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(274,98)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticZoom_Num:AddString
{
	MSG 			= STR_ID_2604,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(264,98)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}









---------------------------     채널 박스    ---------------------------

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStatic_mini:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "plaza_ch_box_left" )

g_pPicture_box:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStatic_mini:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "plaza_ch_box_middle" )

g_pPicture_box:SetPoint
{
     ADD_SIZE_X = 65,
	"LEFT_TOP		= D3DXVECTOR2(18,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box = g_pUIDialog:CreatePicture()
g_pStatic_mini:AddPicture( g_pPicture_box )

g_pPicture_box:SetTex( "DLG_UI_Common_Texture01.TGA", "plaza_ch_box_right" )

g_pPicture_box:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(84,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





-----마을 box
g_pPicture_box1 = g_pUIDialog:CreatePicture()
g_pStatic_mini:AddPicture( g_pPicture_box1 )

g_pPicture_box1:SetTex( "DLG_UI_Common_Texture08.TGA", "auto_box_left" )

g_pPicture_box1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(92,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box1 = g_pUIDialog:CreatePicture()
g_pStatic_mini:AddPicture( g_pPicture_box1 )

g_pPicture_box1:SetTex( "DLG_UI_Common_Texture08.TGA", "auto_box_middle" )

g_pPicture_box1:SetPoint
{
     ADD_SIZE_X = 157,
	"LEFT_TOP		= D3DXVECTOR2(97,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box1 = g_pUIDialog:CreatePicture()
g_pStatic_mini:AddPicture( g_pPicture_box1)

g_pPicture_box1:SetTex( "DLG_UI_Common_Texture08.TGA", "auto_box_right" )

g_pPicture_box1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(255,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--------- 마을 이름 ----------

g_pStatic_title = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_title )
g_pStatic_title:SetName( "mini_map_titie" )

g_pStatic_title:AddString
{
	MSG 			= STR_ID_1303,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(179,16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}





g_pComboBoxPresent_Select_User = g_pUIDialog:CreateComboBox()
g_pUIDialog:AddControl( g_pComboBoxPresent_Select_User )
g_pComboBoxPresent_Select_User:SetName( "g_pComboBoxPresent_Select_User" )


--버튼 클릭했을 때 드랍 텍스쳐 높이
g_pComboBoxPresent_Select_User:SetDropHeight( 40 )
				   
g_pComboBoxPresent_Select_User:SetString
{
	-- MSG 			= "",
 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(40,30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.2,0.2,0.2,1.0)",
}

g_pComboBoxPresent_Select_User:SetTextTex( "DLG_Common_Button00.tga", "invisible" )


g_pComboBoxPresent_Select_User:SetButtonTex( "DLG_UI_Button08.TGA", "combo_normal" )


g_pComboBoxPresent_Select_User:SetButtonMouseOverTex( "DLG_UI_Button08.TGA", "combo_OVER" )


g_pComboBoxPresent_Select_User:SetButtonMouseDownTex ( "DLG_UI_Button08.TGA", "combo_OVER" )


g_pComboBoxPresent_Select_User:SetDropdownTex ( "DLG_UI_Common_Texture01.tga", "plaza_ch_down_box" )


g_pComboBoxPresent_Select_User:SetDropdownTextTex ( "DLG_UI_Common_Texture01.tga", "plaza_ch_down_bar" )


 


--g_pComboBoxPresent_Select_User:SetDropdownTex ( "DLG_Common_Texture01.tga", "White" )


--g_pComboBoxPresent_Select_User:SetDropdownTextTex ( "DLG_Common_Texture09.tga", "Black" )

--수동으로 만들 때
g_pComboBoxPresent_Select_User:SetTextPos( 13, -7) ---- 몽땅
g_pComboBoxPresent_Select_User:SetTextSize( 130, 44) ---밑에꺼만

--텍스트 시작 포인트
g_pComboBoxPresent_Select_User:SetTextStringOffsetPos( 0, 23)  -----위 글자만
g_pComboBoxPresent_Select_User:SetButtonPos( 70, 16)
g_pComboBoxPresent_Select_User:SetButtonSize( 15, 12)

--[[
				-- 채널추가
				g_pComboBoxPresent_Select_User:AddItem( " 루벤1    #CD8F922" ) -- 1
				g_pComboBoxPresent_Select_User:AddItem( " 루벤2    #CD8F922" ) -- 2
				g_pComboBoxPresent_Select_User:AddItem( " 루벤3    #CD8F922" ) -- 3

				g_pComboBoxPresent_Select_User:AddItem( " 엘더1    #C72DFFF" ) -- 4
				g_pComboBoxPresent_Select_User:AddItem( " 엘더2    #C72DFFF" ) -- 5
				g_pComboBoxPresent_Select_User:AddItem( " 엘더3    #C72DFFF" ) -- 6

				g_pComboBoxPresent_Select_User:AddItem( " 베스마1  #CF7941D" ) -- 7
				g_pComboBoxPresent_Select_User:AddItem( " 베스마2  #CF7941D" ) -- 8
				g_pComboBoxPresent_Select_User:AddItem( " 베스마3  #CF7941D" ) -- 9
				g_pComboBoxPresent_Select_User:AddItem( " 베스마4  #CF7941D" ) -- 10
				g_pComboBoxPresent_Select_User:AddItem( " 베스마5  #CF7941D" ) -- 11

				g_pComboBoxPresent_Select_User:AddItem( " 알테라1  #CD36AD7" ) -- 12
				g_pComboBoxPresent_Select_User:AddItem( " 알테라2  #CD36AD7" ) -- 13
				g_pComboBoxPresent_Select_User:AddItem( " 알테라3  #CD36AD7" ) -- 14
				g_pComboBoxPresent_Select_User:AddItem( " 알테라4  #CD36AD7" ) -- 15
				g_pComboBoxPresent_Select_User:AddItem( " 알테라5  #CD36AD7" ) -- 16
--]]

--[[
g_pComboBoxPresent_Select_User:AddItem( " 2 채널    #C7FFF19원활" )
g_pComboBoxPresent_Select_User:AddItem( " 3 채널    #CFF6600FULL" )
g_pComboBoxPresent_Select_User:AddItem( " 4 채널    #C00FFFF한산" )
g_pComboBoxPresent_Select_User:AddItem( " 5 채널    #C00FFFF한산" )
g_pComboBoxPresent_Select_User:AddItem( " 6 채널    #C7FFF19원활" )
g_pComboBoxPresent_Select_User:AddItem( " 7 채널    #CFF6600FULL" )
g_pComboBoxPresent_Select_User:AddItem( " 8 채널    #C00FFFF한산" )
g_pComboBoxPresent_Select_User:AddItem( " 9 채널    #C00FFFF한산" )
g_pComboBoxPresent_Select_User:AddItem( "10 채널    #CFFFF00혼잡" )
--]]

g_pComboBoxPresent_Select_User:SetCustomMsgOpenDropdown( MINI_MAP_UI_CUSTOM_MSG["MMUCM_CHANGE_CHANNEL_OPEN"] )
g_pComboBoxPresent_Select_User:SetCustomMsgCloseDropdown( MINI_MAP_UI_CUSTOM_MSG["MMUCM_CHANGE_CHANNEL_CLOSE"] )
g_pComboBoxPresent_Select_User:SetCustomMsgSelectionChanged( MINI_MAP_UI_CUSTOM_MSG["MMUCM_CHANGE_CHANNEL"] )

--g_pComboBoxPresent_Select_User:SetEnable(false)



--------- 자신 레벨보다 한참~~~~ 낮은, 비리한 던전 들어 갔을때!!

g_pStatic_low_dungeon = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_low_dungeon )
g_pStatic_low_dungeon:SetName( "Static_NoExp" )

g_pStatic_low_dungeon:AddString
{
	MSG 			= STR_ID_1188,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	FONT_INDEX		= XUF_DODUM_20_BOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(148,153 + 23)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
g_pStatic_low_dungeon:SetShow(false)

--------- 비밀던전에 들어갔을때

g_pStatic_Secret_dungeon = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Secret_dungeon )
g_pStatic_Secret_dungeon:SetName( "Static_Secret" )

g_pStatic_Secret_dungeon:AddString
{
	MSG 			= STR_ID_5107,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	FONT_INDEX		= XUF_DODUM_20_BOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(148,153 + 23)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
g_pStatic_low_dungeon:SetShow(false)

---------------남은 몬스터 수

g_pStaticMonster = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMonster )
g_pStaticMonster:SetName( "Static_Monster" )

g_pPicture_image = g_pUIDialog:CreatePicture()
g_pStaticMonster:AddPicture( g_pPicture_image )

g_pPicture_image:SetTex2( "DLG_Monster_Num.TGA" )

g_pPicture_image:SetPoint
{
    ADD_SIZE_X = 2,
    ADD_SIZE_Y = -10, 
	"LEFT_TOP		= D3DXVECTOR2(45,39)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticMonster:AddString
{
	-- MSG 			= "100",
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(79,44)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
g_pStaticMonster:SetShow(false)

--IncludeLua( "minimap_first.lua" )