-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_UI_Partu_PVP_MAP_SETTING" )
g_pUIDialog:SetPos( -5, 15 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL"] )
g_pUIDialog:SetCloseCustomUIEventID( PARTY_UI_CUSTOM_MSG["PUCM_PVP_SETTING_CLOSE"] )

g_pStatic_SETTING_MAP = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_SETTING_MAP )
g_pStatic_SETTING_MAP:SetName( "SETTING_MAP" )

SIZE_FIX_X = -20

--------내용  BG
g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStatic_SETTING_MAP:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BG_LEFT_TOP" )
g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(367,120)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStatic_SETTING_MAP:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BG_CENTER_TOP" )
g_pPicture_bg:SetPoint
{
    ADD_SIZE_X=370 + SIZE_FIX_X,
	"LEFT_TOP		= D3DXVECTOR2(367+30,120)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStatic_SETTING_MAP:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BG_RIGHT_TOP" )
g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(787+ SIZE_FIX_X,120)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--중간
g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStatic_SETTING_MAP:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BG_LEFT_MIDDLE" )
g_pPicture_bg:SetPoint
{
    ADD_SIZE_Y=329,
	"LEFT_TOP		= D3DXVECTOR2(367,120+46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStatic_SETTING_MAP:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BG_CENTER_MIDDLE" )
g_pPicture_bg:SetPoint
{
    ADD_SIZE_X=380+ SIZE_FIX_X,
	ADD_SIZE_Y=329,
	"LEFT_TOP		= D3DXVECTOR2(367+30,120+46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStatic_SETTING_MAP:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BG_RIGHT_MIDDLE" )
g_pPicture_bg:SetPoint
{
    ADD_SIZE_Y=329,
	"LEFT_TOP		= D3DXVECTOR2(787+ SIZE_FIX_X,120+46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--하단
g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStatic_SETTING_MAP:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BG_LEFT_BOTTOM" )
g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(367,505)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStatic_SETTING_MAP:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BG_CENTER_BOTTOM" )
g_pPicture_bg:SetPoint
{
    ADD_SIZE_X=380+ SIZE_FIX_X,
	"LEFT_TOP		= D3DXVECTOR2(367+30,505)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStatic_SETTING_MAP:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BG_RIGHT_BOTTOM" )
g_pPicture_bg:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(787+ SIZE_FIX_X,505)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
----BAR
g_pPicture_BAR = g_pUIDialog:CreatePicture()
g_pStatic_SETTING_MAP:AddPicture( g_pPicture_BAR )
g_pPicture_BAR:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "MAIN_BAR" )
g_pPicture_BAR:SetPoint
{
    ADD_SIZE_X=174+ SIZE_FIX_X,
	"LEFT_TOP		= D3DXVECTOR2(372,147)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--------맵 리스트  BG
g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStatic_SETTING_MAP:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BOX_BG_TOP" )
g_pPicture_bg:SetPoint
{
    ADD_SIZE_X = 5,
	"LEFT_TOP		= D3DXVECTOR2(377,172)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStatic_SETTING_MAP:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BOX_BG_MIDDLE" )
g_pPicture_bg:SetPoint
{
    ADD_SIZE_X = 5,
    ADD_SIZE_Y = 290, 
	"LEFT_TOP		= D3DXVECTOR2(377,172+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStatic_SETTING_MAP:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BOX_BG_BOTTOM" )
g_pPicture_bg:SetPoint
{
    ADD_SIZE_X = 5,
	"LEFT_TOP		= D3DXVECTOR2(377,470)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--------맵 상세보기  BG
g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStatic_SETTING_MAP:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BOX_BG_TOP" )
g_pPicture_bg:SetPoint
{
    --ADD_SIZE_X=10+ SIZE_FIX_X,
	"LEFT_TOP		= D3DXVECTOR2(602-10,172)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStatic_SETTING_MAP:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BOX_BG_MIDDLE" )
g_pPicture_bg:SetPoint
{
   -- ADD_SIZE_X=10+ SIZE_FIX_X,
    ADD_SIZE_Y = 290,
	"LEFT_TOP		= D3DXVECTOR2(602-10,172+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg = g_pUIDialog:CreatePicture()
g_pStatic_SETTING_MAP:AddPicture( g_pPicture_bg )
g_pPicture_bg:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "BOX_BG_BOTTOM" )
g_pPicture_bg:SetPoint
{
    --ADD_SIZE_X=10+ SIZE_FIX_X,
	"LEFT_TOP		= D3DXVECTOR2(602-10,470)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------대전맵 이미지SATATIC
g_pStaticimage = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticimage )
g_pStaticimage:SetName( "image" )

-------------LINE

--위
g_pPicture_map_slot_LEFT_TOP = g_pUIDialog:CreatePicture()
g_pStaticimage:AddPicture( g_pPicture_map_slot_LEFT_TOP )
g_pPicture_map_slot_LEFT_TOP:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "LINE_LEFT_TOP" )
g_pPicture_map_slot_LEFT_TOP:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(606,178)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_map_slot_CENTER_TOP = g_pUIDialog:CreatePicture()
g_pStaticimage:AddPicture( g_pPicture_map_slot_CENTER_TOP )
g_pPicture_map_slot_CENTER_TOP:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "LINE_CENTER_TOP" )
g_pPicture_map_slot_CENTER_TOP:SetPoint
{
   ADD_SIZE_X=150,
	"LEFT_TOP		= D3DXVECTOR2(610,178)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_map_slot_RIGHT_TOP = g_pUIDialog:CreatePicture()
g_pStaticimage:AddPicture( g_pPicture_map_slot_RIGHT_TOP )
g_pPicture_map_slot_RIGHT_TOP:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "LINE_RIGHT_TOP" )
g_pPicture_map_slot_RIGHT_TOP:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(760,178)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--중간
g_pPicture_map_slot_LEFT_MIDDLE = g_pUIDialog:CreatePicture()
g_pStaticimage:AddPicture( g_pPicture_map_slot_LEFT_MIDDLE )
g_pPicture_map_slot_LEFT_MIDDLE:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "LINE_LEFT_MIDDLE" )
g_pPicture_map_slot_LEFT_MIDDLE:SetPoint
{
   ADD_SIZE_Y=102,
	"LEFT_TOP		= D3DXVECTOR2(606,181)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_map_slot_RIGHT_MIDDLE = g_pUIDialog:CreatePicture()
g_pStaticimage:AddPicture( g_pPicture_map_slot_RIGHT_MIDDLE )
g_pPicture_map_slot_RIGHT_MIDDLE:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "LINE_LEFT_MIDDLE" )
g_pPicture_map_slot_RIGHT_MIDDLE:SetPoint
{
   ADD_SIZE_Y=102,
	"LEFT_TOP		= D3DXVECTOR2(764,181)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--아래
g_pPicture_map_slot_LEFT_BOTTOM = g_pUIDialog:CreatePicture()
g_pStaticimage:AddPicture( g_pPicture_map_slot_LEFT_BOTTOM )
g_pPicture_map_slot_LEFT_BOTTOM:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "LINE_LEFT_BOTTOM" )
g_pPicture_map_slot_LEFT_BOTTOM:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(606,282)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_map_slot_CENTER_BOTTOM = g_pUIDialog:CreatePicture()
g_pStaticimage:AddPicture( g_pPicture_map_slot_CENTER_BOTTOM )
g_pPicture_map_slot_CENTER_BOTTOM:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "LINE_CENTER_TOP" )
g_pPicture_map_slot_CENTER_BOTTOM:SetPoint
{
   ADD_SIZE_X=150,
	"LEFT_TOP		= D3DXVECTOR2(605,286)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_map_slot_RIGHT_BOTTOM = g_pUIDialog:CreatePicture()
g_pStaticimage:AddPicture( g_pPicture_map_slot_RIGHT_BOTTOM )
g_pPicture_map_slot_RIGHT_BOTTOM:SetTex( "DLG_UI_Common_Texture49_NEW.TGA", "LINE_RIGHT_BOTTOM" )
g_pPicture_map_slot_RIGHT_BOTTOM:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(760,282)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

------------맵 이미지_임시
g_pPicture_MAP_IMAGE = g_pUIDialog:CreatePicture()
g_pStatic_SETTING_MAP:AddPicture( g_pPicture_MAP_IMAGE )
g_pPicture_MAP_IMAGE:SetTex( "DLG_New_PVP_Image02.DDS", "PVP_Eleos_Bay" )
g_pPicture_MAP_IMAGE:SetPoint
{
    ADD_SIZE_X=-50,
	ADD_SIZE_Y=-70,
	"LEFT_TOP		= D3DXVECTOR2(607,179)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_MAP_IMAGE:SetIndex(1)

-----------------설명
g_pStatic_SETTING_MAP:AddString
{
	MSG 			= "설정한 맵은 대전에서 선택될 가능성이 낮아집니다.",
	--MSG 			= STR_ID_12342, --"설정한 맵은 대전에서 선택될 가능성이 낮아집니다.",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(458,155)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,0.9)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
} 

-----------------남은 갯수
g_pStatic_SETTING_MAP:AddString
{
	MSG 			= "남은 선택 : 1",
	--MSG 			= STR_ID_12353, --"남은 선택 : 1",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(458,480+300)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
} 



-------------------------  STATIC
g_pStatic_VIEW= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_VIEW )
g_pStatic_VIEW:SetName( "VIEW" )

g_pStatic_VIEW:AddString
{
	MSG 			= "이름:",
	--MSG 			= STR_ID_12343, --"이름:",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(610,300)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,0.0)",
}  
------크기
g_pStatic_VIEW:AddString
{
	MSG 			= "크기:",
	--MSG 			= STR_ID_12344, --"크기:",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(610,330)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,0.0)",
} 
------설명
g_pStatic_VIEW:AddString
{
	MSG 			= "설명:",
	--MSG 			= STR_ID_12345, --"설명:",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(610,360)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,0.0)",
} 
---임시TITLE
g_pStatic_VIEW:AddString
{
	MSG 			= "맵설정",
	
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(458,125)",
	"COLOR			= D3DXCOLOR(0.2,0.3,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,0.0)",
}
-------------내용_STATIC
g_pStatic_BODY= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_BODY )
g_pStatic_BODY:SetName( "BODY" )

g_pStatic_BODY:AddString
{
	MSG 			= "수송비공정",
	--MSG 			= STR_ID_12343, --"수송비공정",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(655 +5-14,300)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,0.0)",
}  
------크기
g_pStatic_BODY:AddString
{
	MSG 			= "보통",
	--MSG 			= STR_ID_12344, --"보통",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(655+5-14,330)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,0.0)",
} 
------설명
g_pStatic_BODY:AddString
{
	MSG 			= "4층으로 이루어진\n맵,3층과 4층의\n라인맵은구부러져\n있어,전략적인\n움직임이 요구된다.",
	--MSG 			= STR_ID_12345, --"4층으로 이루어진 맵,\n3층과 4층의 라인맵은\n구부러져 있어,전략적인\n움직임이 요구된다.",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(620-14,360+14)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,0.0)",
} 



-------------------확인 버튼
g_pButton_OK = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_OK )
g_pButton_OK:SetName( "OK" )
g_pButton_OK:SetNormalTex( "DLG_UI_BUTTON19_NEW.tga", "SETTING_OK_NORMAL" )
g_pButton_OK:SetOverTex( "DLG_UI_BUTTON19_NEW.tga", "SETTING_OK_OVER" )
g_pButton_OK:SetDownTex( "DLG_UI_BUTTON19_NEW.tga", "SETTING_OK_OVER" )
g_pButton_OK:SetDisableTex( "DLG_UI_BUTTON19_NEW.tga", "SETTING_OK_NORMAL" )
g_pButton_OK:SetNormalPoint
{
	"LEFT_TOP		= D3DXVECTOR2(662+SIZE_FIX_X,483)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_OK:SetOverPoint
{
    "LEFT_TOP		= D3DXVECTOR2(662-3+SIZE_FIX_X,483-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_OK:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(662-2+SIZE_FIX_X,483-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_OK:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PVP_SETTING_SAVE_CLOSE"] )

-------------------취소 버튼
g_pButton_CANCLE = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_CANCLE )
g_pButton_CANCLE:SetName( "CANCLE" )
g_pButton_CANCLE:SetNormalTex( "DLG_UI_BUTTON19_NEW.tga", "SETTING_CANCEL_NORMAL" )
g_pButton_CANCLE:SetOverTex( "DLG_UI_BUTTON19_NEW.tga", "SETTING_CANCEL_OVER" )
g_pButton_CANCLE:SetDownTex( "DLG_UI_BUTTON19_NEW.tga", "SETTING_CANCEL_OVER" )
g_pButton_CANCLE:SetDisableTex( "DLG_UI_BUTTON19_NEW.tga", "SETTING_CANCEL_NORMAL" )
g_pButton_CANCLE:SetNormalPoint
{
	"LEFT_TOP		= D3DXVECTOR2(736+SIZE_FIX_X,483)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_CANCLE:SetOverPoint
{
    "LEFT_TOP		= D3DXVECTOR2(736-5+1+SIZE_FIX_X,483-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_CANCLE:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(736-4+1+SIZE_FIX_X,483-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_CANCLE:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PVP_SETTING_CLOSE"] )


-------------------exit버튼
g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Close_Window" )
g_pButtonX:SetNormalTex( "DLG_UI_BUTTON19_NEW.tga", "X_NORMAL" )
g_pButtonX:SetOverTex( "DLG_UI_BUTTON19_NEW.tga", "X_OVER" )
g_pButtonX:SetDownTex( "DLG_UI_BUTTON19_NEW.tga", "X_OVER" )
g_pButtonX:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(786+SIZE_FIX_X,125)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{
 
	"LEFT_TOP		= D3DXVECTOR2(786+SIZE_FIX_X,125)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(786+1+SIZE_FIX_X,125+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( PARTY_UI_CUSTOM_MSG["PUCM_PVP_SETTING_CLOSE"] )

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
g_pControlList:SetYScrollBarPos( 149 + 435 -80, 68 + 103 )
--g_pControlList:SetYScrollBarSize( 15, 304 )
g_pControlList:SetYScrollBarSize( 0, 0 )
g_pControlList:SetScrollOffset( 0, 25 )
g_pControlList:SetPos(20 + 435 -80, 70 + 103 )

g_pControlList:SetViewSize( 3, 12, true )




--[[
------------------------맵 리스트 _ 맵이름_스트링

-----------------희망의 다리
g_pStatic_MAP_NAME= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_MAP_NAME )
g_pStatic_MAP_NAME:SetName( "MAP_NAME1" )
g_pStatic_MAP_NAME:AddString
{
	-- MSG 			= STR_ID_4620, --"희망의 다리",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,5)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,0.0)",
} 


-- -체크 표시
g_pPicture_box1 = g_pUIDialog:CreatePicture()
g_pStatic_MAP_NAME:AddPicture( g_pPicture_box1 )
g_pPicture_box1:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )
g_pPicture_box1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(10,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK1 = g_pUIDialog:CreateCheckBox()
g_pCheckBox_CHECK1:SetName( "g_pCheckBox_CHECK1" )
g_pUIDialog:AddControl( g_pCheckBox_CHECK1 )
g_pCheckBox_CHECK1:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBox_CHECK1:SetCheckedTex( "DLG_UI_Common_Texture49.TGA", "MAP_X" )
g_pCheckBox_CHECK1:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(10,5)",
 	"RIGHT_BOTTOM	= D3DXVECTOR2(10+15,5+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK1:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(10,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pControlList:InsertItem( g_pStatic_MAP_NAME, 0, 0, false )
g_pControlList:InsertItem( g_pCheckBox_CHECK1, 0, 1, false )

-----------------혹한의 벨더
g_pStatic_MAP_NAME= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_MAP_NAME )
g_pStatic_MAP_NAME:SetName( "MAP_NAME2" )
g_pStatic_MAP_NAME:AddString
{
	MSG 			= STR_ID_4833, --"혹한의 벨더",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,5)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,0.0)",
} 
-------체크 표시
g_pPicture_box1 = g_pUIDialog:CreatePicture()
g_pStatic_MAP_NAME:AddPicture( g_pPicture_box1 )
g_pPicture_box1:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )
g_pPicture_box1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(10,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK1 = g_pUIDialog:CreateCheckBox()
g_pCheckBox_CHECK1:SetName( "g_pCheckBox_CHECK2" )
g_pUIDialog:AddControl( g_pCheckBox_CHECK1 )
g_pCheckBox_CHECK1:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBox_CHECK1:SetCheckedTex( "DLG_UI_Common_Texture49.TGA", "MAP_X" )
g_pCheckBox_CHECK1:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(10,5)",
 	"RIGHT_BOTTOM	= D3DXVECTOR2(10+15,5+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK1:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(10,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pControlList:InsertItem( g_pStatic_MAP_NAME, 1, 0, false )
g_pControlList:InsertItem( g_pCheckBox_CHECK1, 1, 1, false )

-----------------엘의 나무 상층
g_pStatic_MAP_NAME= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_MAP_NAME )
g_pStatic_MAP_NAME:SetName( "MAP_NAME3" )
g_pStatic_MAP_NAME:AddString
{
	MSG 			= STR_ID_1145, --"엘의 나무 상층",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,5)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,0.0)",
} 
-------체크 표시
g_pPicture_box1 = g_pUIDialog:CreatePicture()
g_pStatic_MAP_NAME:AddPicture( g_pPicture_box1 )
g_pPicture_box1:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )
g_pPicture_box1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(10,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK1 = g_pUIDialog:CreateCheckBox()
g_pCheckBox_CHECK1:SetName( "g_pCheckBox_CHECK3" )
g_pUIDialog:AddControl( g_pCheckBox_CHECK1 )
g_pCheckBox_CHECK1:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBox_CHECK1:SetCheckedTex( "DLG_UI_Common_Texture49.TGA", "MAP_X" )
g_pCheckBox_CHECK1:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(10,5)",
 	"RIGHT_BOTTOM	= D3DXVECTOR2(10+15,5+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK1:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(10,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pControlList:InsertItem( g_pStatic_MAP_NAME, 2, 0, false )
g_pControlList:InsertItem( g_pCheckBox_CHECK1, 2, 1, false )

-----------------엘의 나무 하층
g_pStatic_MAP_NAME= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_MAP_NAME )
g_pStatic_MAP_NAME:SetName( "MAP_NAME4" )
g_pStatic_MAP_NAME:AddString
{
	MSG 			= STR_ID_1146, --"엘의 나무 하층",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,5)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,0.0)",
} 
-------체크 표시
g_pPicture_box1 = g_pUIDialog:CreatePicture()
g_pStatic_MAP_NAME:AddPicture( g_pPicture_box1 )
g_pPicture_box1:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )
g_pPicture_box1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(10,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK1 = g_pUIDialog:CreateCheckBox()
g_pCheckBox_CHECK1:SetName( "g_pCheckBox_CHECK4" )
g_pUIDialog:AddControl( g_pCheckBox_CHECK1 )
g_pCheckBox_CHECK1:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBox_CHECK1:SetCheckedTex( "DLG_UI_Common_Texture49.TGA", "MAP_X" )
g_pCheckBox_CHECK1:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(10,5)",
 	"RIGHT_BOTTOM	= D3DXVECTOR2(10+15,5+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK1:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(10,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pControlList:InsertItem( g_pStatic_MAP_NAME, 3, 0, false )
g_pControlList:InsertItem( g_pCheckBox_CHECK1, 3, 1, false )

-----------------벤더스의 방
g_pStatic_MAP_NAME= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_MAP_NAME )
g_pStatic_MAP_NAME:SetName( "MAP_NAME5" )
g_pStatic_MAP_NAME:AddString
{
	MSG 			= STR_ID_1147, --"벤더스의 방",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,5)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,0.0)",
}
-------체크 표시
g_pPicture_box1 = g_pUIDialog:CreatePicture()
g_pStatic_MAP_NAME:AddPicture( g_pPicture_box1 )
g_pPicture_box1:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )
g_pPicture_box1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(10,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK1 = g_pUIDialog:CreateCheckBox()
g_pCheckBox_CHECK1:SetName( "g_pCheckBox_CHECK5" )
g_pUIDialog:AddControl( g_pCheckBox_CHECK1 )
g_pCheckBox_CHECK1:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBox_CHECK1:SetCheckedTex( "DLG_UI_Common_Texture49.TGA", "MAP_X" )
g_pCheckBox_CHECK1:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(10,5)",
 	"RIGHT_BOTTOM	= D3DXVECTOR2(10+15,5+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK1:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(10,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pControlList:InsertItem( g_pStatic_MAP_NAME, 4, 0, false )
g_pControlList:InsertItem( g_pCheckBox_CHECK1, 4, 1, false )

-----------------월리의 성 센터
g_pStatic_MAP_NAME= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_MAP_NAME )
g_pStatic_MAP_NAME:SetName( "MAP_NAME6" )
g_pStatic_MAP_NAME:AddString
{
	MSG 			= STR_ID_1148, --"월리의 성 센터",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,5)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,0.0)",
}
-------체크 표시
g_pPicture_box1 = g_pUIDialog:CreatePicture()
g_pStatic_MAP_NAME:AddPicture( g_pPicture_box1 )
g_pPicture_box1:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )
g_pPicture_box1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(10,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK1 = g_pUIDialog:CreateCheckBox()
g_pCheckBox_CHECK1:SetName( "g_pCheckBox_CHECK6" )
g_pUIDialog:AddControl( g_pCheckBox_CHECK1 )
g_pCheckBox_CHECK1:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBox_CHECK1:SetCheckedTex( "DLG_UI_Common_Texture49.TGA", "MAP_X" )
g_pCheckBox_CHECK1:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(10,5)",
 	"RIGHT_BOTTOM	= D3DXVECTOR2(10+15,5+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK1:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(10,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pControlList:InsertItem( g_pStatic_MAP_NAME, 5, 0, false )
g_pControlList:InsertItem( g_pCheckBox_CHECK1, 5, 1, false )

-----------------월리의 성 지붕
g_pStatic_MAP_NAME= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_MAP_NAME )
g_pStatic_MAP_NAME:SetName( "MAP_NAME7" )
g_pStatic_MAP_NAME:AddString
{
	MSG 			= STR_ID_1149, --"월리의 성 지붕",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,5)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,0.0)",
}
-------체크 표시
g_pPicture_box1 = g_pUIDialog:CreatePicture()
g_pStatic_MAP_NAME:AddPicture( g_pPicture_box1 )
g_pPicture_box1:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )
g_pPicture_box1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(10,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK1 = g_pUIDialog:CreateCheckBox()
g_pCheckBox_CHECK1:SetName( "g_pCheckBox_CHECK7" )
g_pUIDialog:AddControl( g_pCheckBox_CHECK1 )
g_pCheckBox_CHECK1:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBox_CHECK1:SetCheckedTex( "DLG_UI_Common_Texture49.TGA", "MAP_X" )
g_pCheckBox_CHECK1:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(10,5)",
 	"RIGHT_BOTTOM	= D3DXVECTOR2(10+15,5+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK1:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(10,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pControlList:InsertItem( g_pStatic_MAP_NAME, 6, 0, false )
g_pControlList:InsertItem( g_pCheckBox_CHECK1, 6, 1, false )

-----------------베스마 호수
g_pStatic_MAP_NAME= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_MAP_NAME )
g_pStatic_MAP_NAME:SetName( "MAP_NAME8" )
g_pStatic_MAP_NAME:AddString
{
	MSG 			= STR_ID_1150, --"베스마 호수",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,5)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,0.0)",
}
-------체크 표시
g_pPicture_box1 = g_pUIDialog:CreatePicture()
g_pStatic_MAP_NAME:AddPicture( g_pPicture_box1 )
g_pPicture_box1:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )
g_pPicture_box1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(10,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK1 = g_pUIDialog:CreateCheckBox()
g_pCheckBox_CHECK1:SetName( "g_pCheckBox_CHECK8" )
g_pUIDialog:AddControl( g_pCheckBox_CHECK1 )
g_pCheckBox_CHECK1:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBox_CHECK1:SetCheckedTex( "DLG_UI_Common_Texture49.TGA", "MAP_X" )
g_pCheckBox_CHECK1:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(10,5)",
 	"RIGHT_BOTTOM	= D3DXVECTOR2(10+15,5+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK1:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(10,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pControlList:InsertItem( g_pStatic_MAP_NAME, 7, 0, false )
g_pControlList:InsertItem( g_pCheckBox_CHECK1, 7, 1, false )

-----------------수송비공정
g_pStatic_MAP_NAME= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_MAP_NAME )
g_pStatic_MAP_NAME:SetName( "MAP_NAME9" )
g_pStatic_MAP_NAME:AddString
{
	MSG 			= STR_ID_1151, --"수성비공정",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,5)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,0.0)",
}
-------체크 표시
g_pPicture_box1 = g_pUIDialog:CreatePicture()
g_pStatic_MAP_NAME:AddPicture( g_pPicture_box1 )
g_pPicture_box1:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )
g_pPicture_box1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(10,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK1 = g_pUIDialog:CreateCheckBox()
g_pCheckBox_CHECK1:SetName( "g_pCheckBox_CHECK9" )
g_pUIDialog:AddControl( g_pCheckBox_CHECK1 )
g_pCheckBox_CHECK1:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBox_CHECK1:SetCheckedTex( "DLG_UI_Common_Texture49.TGA", "MAP_X" )
g_pCheckBox_CHECK1:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(10,5)",
 	"RIGHT_BOTTOM	= D3DXVECTOR2(10+15,5+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK1:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(10,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pControlList:InsertItem( g_pStatic_MAP_NAME, 8, 0, false )
g_pControlList:InsertItem( g_pCheckBox_CHECK1, 8, 1, false )

-----------------엘리오스 베이
g_pStatic_MAP_NAME= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_MAP_NAME )
g_pStatic_MAP_NAME:SetName( "MAP_NAME10" )
g_pStatic_MAP_NAME:AddString
{
	MSG 			= STR_ID_1152, --"엘리오스 베이",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,5)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,0.0)",
}
-------체크 표시
g_pPicture_box1 = g_pUIDialog:CreatePicture()
g_pStatic_MAP_NAME:AddPicture( g_pPicture_box1 )
g_pPicture_box1:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )
g_pPicture_box1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(10,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK1 = g_pUIDialog:CreateCheckBox()
g_pCheckBox_CHECK1:SetName( "g_pCheckBox_CHECK10" )
g_pUIDialog:AddControl( g_pCheckBox_CHECK1 )
g_pCheckBox_CHECK1:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBox_CHECK1:SetCheckedTex( "DLG_UI_Common_Texture49.TGA", "MAP_X" )
g_pCheckBox_CHECK1:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(10,5)",
 	"RIGHT_BOTTOM	= D3DXVECTOR2(10+15,5+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK1:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(10,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pControlList:InsertItem( g_pStatic_MAP_NAME, 9, 0, false )
g_pControlList:InsertItem( g_pCheckBox_CHECK1, 9, 1, false )

-----------------듀라한 클로세움
g_pStatic_MAP_NAME= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_MAP_NAME )
g_pStatic_MAP_NAME:SetName( "MAP_NAME11" )
g_pStatic_MAP_NAME:AddString
{
	MSG 			= STR_ID_1153, --"듀라한 콜로세움",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,5)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,0.0)",
}
-------체크 표시
g_pPicture_box1 = g_pUIDialog:CreatePicture()
g_pStatic_MAP_NAME:AddPicture( g_pPicture_box1 )
g_pPicture_box1:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )
g_pPicture_box1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(10,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK1 = g_pUIDialog:CreateCheckBox()
g_pCheckBox_CHECK1:SetName( "g_pCheckBox_CHECK11" )
g_pUIDialog:AddControl( g_pCheckBox_CHECK1 )
g_pCheckBox_CHECK1:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBox_CHECK1:SetCheckedTex( "DLG_UI_Common_Texture49.TGA", "MAP_X" )
g_pCheckBox_CHECK1:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(10,5)",
 	"RIGHT_BOTTOM	= D3DXVECTOR2(10+15,5+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK1:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(10,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pControlList:InsertItem( g_pStatic_MAP_NAME, 10, 0, false )
g_pControlList:InsertItem( g_pCheckBox_CHECK1, 10, 1, false )

---------------폭군의 투기장
g_pStatic_MAP_NAME= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_MAP_NAME )
g_pStatic_MAP_NAME:SetName( "MAP_NAME12" )
g_pStatic_MAP_NAME:AddString
{
	MSG 			= STR_ID_1154, --"폭군의 투기장",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,5)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,0.0)",
}
-------체크 표시
g_pPicture_box1 = g_pUIDialog:CreatePicture()
g_pStatic_MAP_NAME:AddPicture( g_pPicture_box1 )
g_pPicture_box1:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )
g_pPicture_box1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(10,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK1 = g_pUIDialog:CreateCheckBox()
g_pCheckBox_CHECK1:SetName( "g_pCheckBox_CHECK12" )
g_pUIDialog:AddControl( g_pCheckBox_CHECK1 )
g_pCheckBox_CHECK1:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBox_CHECK1:SetCheckedTex( "DLG_UI_Common_Texture49.TGA", "MAP_X" )
g_pCheckBox_CHECK1:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(10,5)",
 	"RIGHT_BOTTOM	= D3DXVECTOR2(10+15,5+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK1:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(10,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pControlList:InsertItem( g_pStatic_MAP_NAME, 11, 0, false )
g_pControlList:InsertItem( g_pCheckBox_CHECK1, 11, 1, false )


]]--


--[[
-------------------------맵 리스트_ 체크박스
-------STATIC
g_pStatic_CHECK= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_CHECK )
g_pStatic_CHECK:SetName( "CHECK" )

-----체크박스1
g_pPicture_box1 = g_pUIDialog:CreatePicture()
g_pStatic_CHECK:AddPicture( g_pPicture_box1 )
g_pPicture_box1:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )
g_pPicture_box1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(31,76)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------체크 표시1
g_pCheckBox_CHECK1 = g_pUIDialog:CreateCheckBox()
g_pCheckBox_CHECK1:SetName( "g_pCheckBox_CHECK1" )
g_pUIDialog:AddControl( g_pCheckBox_CHECK1 )
g_pCheckBox_CHECK1:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBox_CHECK1:SetCheckedTex( "DLG_UI_Common_Texture49.TGA", "MAP_X" )
g_pCheckBox_CHECK1:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(31,76)",
 	"RIGHT_BOTTOM	= D3DXVECTOR2(31+15,76+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK1:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(31,76)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--------------------

-----체크박스2
g_pPicture_box2 = g_pUIDialog:CreatePicture()
g_pStatic_CHECK:AddPicture( g_pPicture_box2 )
g_pPicture_box2:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )
g_pPicture_box2:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(31,76)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------체크 표시2
g_pCheckBox_CHECK2 = g_pUIDialog:CreateCheckBox()
g_pCheckBox_CHECK2:SetName( "g_pCheckBox_CHECK2" )
g_pUIDialog:AddControl( g_pCheckBox_CHECK2 )
g_pCheckBox_CHECK2:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBox_CHECK2:SetCheckedTex( "DLG_UI_Common_Texture49.TGA", "MAP_X" )
g_pCheckBox_CHECK2:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(31,76)",
 	"RIGHT_BOTTOM	= D3DXVECTOR2(31+15,76+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK2:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(31,76)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}
--------------------

-----체크박스3
g_pPicture_box3 = g_pUIDialog:CreatePicture()
g_pStatic_CHECK:AddPicture( g_pPicture_box3 )
g_pPicture_box3:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )
g_pPicture_box3:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(31,76)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------체크 표시3
g_pCheckBox_CHECK3= g_pUIDialog:CreateCheckBox()
g_pCheckBox_CHECK3:SetName( "g_pCheckBox_CHECK3" )
g_pUIDialog:AddControl( g_pCheckBox_CHECK3 )
g_pCheckBox_CHECK3:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBox_CHECK3:SetCheckedTex( "DLG_UI_Common_Texture49.TGA", "MAP_X" )
g_pCheckBox_CHECK3:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(31,76)",
 	"RIGHT_BOTTOM	= D3DXVECTOR2(31+15,76+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK3:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(31,76)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}
--------------------

-----체크박스4
g_pPicture_box4 = g_pUIDialog:CreatePicture()
g_pStatic_CHECK:AddPicture( g_pPicture_box4 )
g_pPicture_box4:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )
g_pPicture_box4:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(31,76)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------체크 표시4
g_pCheckBox_CHECK4= g_pUIDialog:CreateCheckBox()
g_pCheckBox_CHECK4:SetName( "g_pCheckBox_CHECK4" )
g_pUIDialog:AddControl( g_pCheckBox_CHECK4 )
g_pCheckBox_CHECK4:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBox_CHECK4:SetCheckedTex( "DLG_UI_Common_Texture49.TGA", "MAP_X" )
g_pCheckBox_CHECK4:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(31,76)",
 	"RIGHT_BOTTOM	= D3DXVECTOR2(31+15,76+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK4:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(31,76)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}
------------------

-----체크박스5
g_pPicture_box5 = g_pUIDialog:CreatePicture()
g_pStatic_CHECK:AddPicture( g_pPicture_box5 )
g_pPicture_box5:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )
g_pPicture_box5:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(31,76)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------체크 표시5
g_pCheckBox_CHECK5= g_pUIDialog:CreateCheckBox()
g_pCheckBox_CHECK5:SetName( "g_pCheckBox_CHECK5" )
g_pUIDialog:AddControl( g_pCheckBox_CHECK5 )
g_pCheckBox_CHECK5:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBox_CHECK5:SetCheckedTex( "DLG_UI_Common_Texture49.TGA", "MAP_X" )
g_pCheckBox_CHECK5:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(31,76)",
 	"RIGHT_BOTTOM	= D3DXVECTOR2(31+15,76+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK5:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(31,76)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}
--------------------

-----체크박스6
g_pPicture_box6 = g_pUIDialog:CreatePicture()
g_pStatic_CHECK:AddPicture( g_pPicture_box6 )
g_pPicture_box6:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )
g_pPicture_box6:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(31,76)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------체크 표시6
g_pCheckBox_CHECK6= g_pUIDialog:CreateCheckBox()
g_pCheckBox_CHECK6:SetName( "g_pCheckBox_CHECK6" )
g_pUIDialog:AddControl( g_pCheckBox_CHECK6 )
g_pCheckBox_CHECK6:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBox_CHECK6:SetCheckedTex( "DLG_UI_Common_Texture49.TGA", "MAP_X" )
g_pCheckBox_CHECK6:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(31,76)",
 	"RIGHT_BOTTOM	= D3DXVECTOR2(31+15,76+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK6:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(31,76)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}
--------------------

-----체크박스7
g_pPicture_box7 = g_pUIDialog:CreatePicture()
g_pStatic_CHECK:AddPicture( g_pPicture_box7 )
g_pPicture_box7:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )
g_pPicture_box7:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(31,76)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------체크 표시7
g_pCheckBox_CHECK7= g_pUIDialog:CreateCheckBox()
g_pCheckBox_CHECK7:SetName( "g_pCheckBox_CHECK7" )
g_pUIDialog:AddControl( g_pCheckBox_CHECK7 )
g_pCheckBox_CHECK7:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBox_CHECK7:SetCheckedTex( "DLG_UI_Common_Texture49.TGA", "MAP_X" )
g_pCheckBox_CHECK7:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(31,76)",
 	"RIGHT_BOTTOM	= D3DXVECTOR2(31+15,76+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK7:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(31,76)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}
--------------------

-----체크박스8
g_pPicture_box8 = g_pUIDialog:CreatePicture()
g_pStatic_CHECK:AddPicture( g_pPicture_box8 )
g_pPicture_box8:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )
g_pPicture_box8:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(31,76)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------체크 표시8
g_pCheckBox_CHECK8= g_pUIDialog:CreateCheckBox()
g_pCheckBox_CHECK8:SetName( "g_pCheckBox_CHECK8" )
g_pUIDialog:AddControl( g_pCheckBox_CHECK8 )
g_pCheckBox_CHECK8:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBox_CHECK8:SetCheckedTex( "DLG_UI_Common_Texture49.TGA", "MAP_X" )
g_pCheckBox_CHECK8:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(31,76)",
 	"RIGHT_BOTTOM	= D3DXVECTOR2(31+15,76+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK8:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(31,76)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}
--------------------

-----체크박스9
g_pPicture_box9 = g_pUIDialog:CreatePicture()
g_pStatic_CHECK:AddPicture( g_pPicture_box9 )
g_pPicture_box9:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )
g_pPicture_box9:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(31,76)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------체크 표시9
g_pCheckBox_CHECK9= g_pUIDialog:CreateCheckBox()
g_pCheckBox_CHECK9:SetName( "g_pCheckBox_CHECK9" )
g_pUIDialog:AddControl( g_pCheckBox_CHECK9 )
g_pCheckBox_CHECK9:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBox_CHECK9:SetCheckedTex( "DLG_UI_Common_Texture49.TGA", "MAP_X" )
g_pCheckBox_CHECK9:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(31,76)",
 	"RIGHT_BOTTOM	= D3DXVECTOR2(31+15,76+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK9:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(31,76)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}
--------------------

-----체크박스10
g_pPicture_box10 = g_pUIDialog:CreatePicture()
g_pStatic_CHECK:AddPicture( g_pPicture_box10 )
g_pPicture_box10:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )
g_pPicture_box10:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(31,76)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------체크 표시10
g_pCheckBox_CHECK10= g_pUIDialog:CreateCheckBox()
g_pCheckBox_CHECK10:SetName( "g_pCheckBox_CHECK10" )
g_pUIDialog:AddControl( g_pCheckBox_CHECK10 )
g_pCheckBox_CHECK10:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBox_CHECK10:SetCheckedTex( "DLG_UI_Common_Texture49.TGA", "MAP_X" )
g_pCheckBox_CHECK10:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(31,76)",
 	"RIGHT_BOTTOM	= D3DXVECTOR2(31+15,76+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK10:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(31,76)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}
--------------------

-----체크박스11
g_pPicture_box11 = g_pUIDialog:CreatePicture()
g_pStatic_CHECK:AddPicture( g_pPicture_box11 )
g_pPicture_box11:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )
g_pPicture_box11:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(31,76)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------체크 표시11
g_pCheckBox_CHECK11= g_pUIDialog:CreateCheckBox()
g_pCheckBox_CHECK11:SetName( "g_pCheckBox_CHECK11" )
g_pUIDialog:AddControl( g_pCheckBox_CHECK11 )
g_pCheckBox_CHECK11:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBox_CHECK11:SetCheckedTex( "DLG_UI_Common_Texture49.TGA", "MAP_X" )
g_pCheckBox_CHECK11:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(31,76)",
 	"RIGHT_BOTTOM	= D3DXVECTOR2(31+15,76+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK11:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(31,76)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}
--------------------

-----체크박스12
g_pPicture_box12 = g_pUIDialog:CreatePicture()
g_pStatic_CHECK:AddPicture( g_pPicture_box12 )
g_pPicture_box12:SetTex( "DLG_Common_New_Texture25.TGA", "CHACK_BOX" )
g_pPicture_box12:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(31,76)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------체크 표시12
g_pCheckBox_CHECK12= g_pUIDialog:CreateCheckBox()
g_pCheckBox_CHECK12:SetName( "g_pCheckBox_CHECK12" )
g_pUIDialog:AddControl( g_pCheckBox_CHECK12 )
g_pCheckBox_CHECK12:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBox_CHECK12:SetCheckedTex( "DLG_UI_Common_Texture49.TGA", "MAP_X" )
g_pCheckBox_CHECK12:SetBGPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(31,76)",
 	"RIGHT_BOTTOM	= D3DXVECTOR2(31+15,76+15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK12:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(31,76)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}
--------------------
-- ]]
