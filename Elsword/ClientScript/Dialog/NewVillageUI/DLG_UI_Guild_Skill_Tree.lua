-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pStaticSkill = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill )
g_pStaticSkill:SetName( "g_pStaticSkill" )

g_pUIDialog:SetModal( false)
g_pUIDialog:SetFront( true )
--g_pUIDialog:SetModal( false )
g_pUIDialog:SetPos( 310, 245 ) 
--g_pUIDialog:SetPos( 0, 0 ) 
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_GAME_EDIT"] )
g_pUIDialog:SetCloseCustomUIEventID( GUILD_SKILL_TREE_UI_CUSTOM_MSG["GSTUCM_EXIT"] )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 0, 0, 0 ) ) -- 위치
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 452, 610, 0 ) ) -- Size 


------------>>>>>>>>>>>

-----BG
g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticSkill:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture03.TGA", "Helper_BG1_TOP" )

g_pPicture_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticSkill:AddPicture( g_pPicture_BG1 )

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture03.TGA", "Helper_BG1_middle" )

g_pPicture_BG1:SetPoint
{
     ADD_SIZE_Y = 344+57,
	"LEFT_TOP		= D3DXVECTOR2(0,10)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BG1 = g_pUIDialog:CreatePicture()
g_pStaticSkill:AddPicture( g_pPicture_BG1)

g_pPicture_BG1:SetTex( "DLG_UI_Common_Texture03.TGA", "Helper_BG1_Bottom" )

g_pPicture_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,355+57)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


------------------------BG2


g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticSkill:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "Helper_BG2_TOP" )

g_pPicture_bg2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,44)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticSkill:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "Helper_BG2_middle" )

g_pPicture_bg2:SetPoint
{
     ADD_SIZE_Y = 288+57,
	"LEFT_TOP		= D3DXVECTOR2(13,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStaticSkill:AddPicture( g_pPicture_bg2)

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture03.TGA", "Helper_BG2_Bottom" )

g_pPicture_bg2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,342+57)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





------------------------BG3


g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticSkill:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture13.TGA", "GUILD_BG_TOP" )

g_pPicture_bg3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(14,44)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticSkill:AddPicture( g_pPicture_bg3 )

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture13.TGA", "GUILD_BG_middle" )

g_pPicture_bg3:SetPoint
{
     ADD_SIZE_Y = 278+57,
	"LEFT_TOP		= D3DXVECTOR2(14,58)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg3 = g_pUIDialog:CreatePicture()
g_pStaticSkill:AddPicture( g_pPicture_bg3)

g_pPicture_bg3:SetTex( "DLG_UI_Common_Texture13.TGA", "GUILD_BG_BOTTOM" )

g_pPicture_bg3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(14,338+57)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



------------------------BG4


g_pPicture_bg4 = g_pUIDialog:CreatePicture()
g_pStaticSkill:AddPicture( g_pPicture_bg4 )

g_pPicture_bg4:SetTex( "DLG_UI_Common_Texture06.TGA", "Black_BG_Top" )

g_pPicture_bg4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(24,44+44+23)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg4 = g_pUIDialog:CreatePicture()
g_pStaticSkill:AddPicture( g_pPicture_bg4 )

g_pPicture_bg4:SetTex( "DLG_UI_Common_Texture06.TGA", "Black_BG_Middle" )

g_pPicture_bg4:SetPoint
{
     ADD_SIZE_Y = 256  ,
	"LEFT_TOP		= D3DXVECTOR2(24,58+44+23)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg4 = g_pUIDialog:CreatePicture()
g_pStaticSkill:AddPicture( g_pPicture_bg4)

g_pPicture_bg4:SetTex( "DLG_UI_Common_Texture06.TGA", "Black_BG_Bottom" )

g_pPicture_bg4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(24,338+44+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





----------------- SCROLL BAR BG

g_pPictureScroll = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureScroll )

g_pPictureScroll:SetTex( "DLG_Common_New_Texture61.TGA", "Scroll_Bg" )

g_pPictureScroll:SetPoint
{
   ADD_SIZE_Y = 237,
	"LEFT_TOP		= D3DXVECTOR2(303,134)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
}




-----------------TITLE


g_pPicture_title = g_pUIDialog:CreatePicture()
g_pStaticSkill:AddPicture( g_pPicture_title)

g_pPicture_title:SetTex( "DLG_UI_Title02_B.tga", "GUILD_INFO" )

g_pPicture_title:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


------------- BAR

g_pPicture_line0 = g_pUIDialog:CreatePicture()
g_pStaticSkill:AddPicture( g_pPicture_line0 )

g_pPicture_line0:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line0:SetPoint
{
     ADD_SIZE_X = 304,
	"LEFT_TOP		= D3DXVECTOR2(22,113-26-7)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_line1 = g_pUIDialog:CreatePicture()
g_pStaticSkill:AddPicture( g_pPicture_line1 )

g_pPicture_line1:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line1:SetPoint
{
     ADD_SIZE_X = 274,
	"LEFT_TOP		= D3DXVECTOR2(26,205)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.3)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_line2 = g_pUIDialog:CreatePicture()
g_pStaticSkill:AddPicture( g_pPicture_line2 )

g_pPicture_line2:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line2:SetPoint
{
     ADD_SIZE_X = 274,
	"LEFT_TOP		= D3DXVECTOR2(26,205+94)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.3)",
	CHANGE_TIME		= 0.0,
}


	
	
	------------------------비활성 스킬 가림--------------------------


g_pStaticSkill = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill )
g_pStaticSkill:SetName( "g_pStaticBlind" )

g_pPictureBlind_Top = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureBlind_Top )

g_pPictureBlind_Top:SetTex( "DLG_UI_Common_Texture06.TGA", "Blind_Top" )

g_pPictureBlind_Top:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(24,112)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--g_pPictureBlind_Top:SetShow(false)	
	
g_pPictureBlind_Middle = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureBlind_Middle )

g_pPictureBlind_Middle:SetTex( "DLG_UI_Common_Texture06.TGA", "Blind_Middle" )

g_pPictureBlind_Middle:SetPoint
{
ADD_SIZE_X = 277,
	"LEFT_TOP		= D3DXVECTOR2(24,112+94)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--g_pPictureBlind_Middle:SetShow(false)	

g_pPictureBlind_Bottom = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureBlind_Bottom )

g_pPictureBlind_Bottom:SetTex( "DLG_UI_Common_Texture06.TGA", "Blind_Bottom" )

g_pPictureBlind_Bottom:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(24,112+94+94)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--g_pPictureBlind_Bottom:SetShow(false)
	

	
------------NOTICE


g_pPictureBlind_Notice1 = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureBlind_Notice1 )

g_pPictureBlind_Notice1:SetTex( "DLG_UI_Common_Texture02.TGA", "feel" )

g_pPictureBlind_Notice1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(163-66 + 55,19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticNoticeTop = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNoticeTop )
g_pStaticNoticeTop:SetName( "g_pStaticNoticeTop" )


g_pStaticNoticeTop:AddString
{
	MSG 			= "일반길드원 이상 등급에만 적용.",
	FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG       = DRAW_TEXT["DT_HVCENTER"],
	"POS 			= D3DXVECTOR2(163+21+45,19+5)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	--"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",

}
--------------------->>>>



---캐릭터 클래스

g_pStaticCharClass = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCharClass )
g_pStaticCharClass:SetName( "g_pStaticCharClass" )

g_pStaticCharClass:AddString
{
	-- MSG 			= "스나이핑 레인저",
	FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(18,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
	
-------------------------<<<<<<<<<<<<<<
	
-------------투자 GSP 알림

g_pStaticBlind_Notice = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticBlind_Notice )
g_pStaticBlind_Notice:SetName( "g_pStaticBlind_Notice" )

g_pPictureBlind_Notice1 = g_pUIDialog:CreatePicture() 
g_pStaticBlind_Notice:AddPicture( g_pPictureBlind_Notice1 )

g_pPictureBlind_Notice1:SetTex( "DLG_UI_Common_Texture02.TGA", "feel" )

g_pPictureBlind_Notice1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(126-66 - 22,152)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	}

g_pStaticBlind_Notice:AddString
{
	MSG 			= "투자GSP **이상이 필요합니다.",
	FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(147-66 - 22,152+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",

}


g_pPictureBlind_Notice2 = g_pUIDialog:CreatePicture() 
g_pStaticBlind_Notice:AddPicture( g_pPictureBlind_Notice2 )

g_pPictureBlind_Notice2:SetTex( "DLG_UI_Common_Texture02.TGA", "feel" )

g_pPictureBlind_Notice2:SetPoint 
{
	"LEFT_TOP		= D3DXVECTOR2(126-66 - 22,152+94)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	}
	
g_pStaticBlind_Notice:AddString
{
	MSG 			= "투자GSP **이상이 필요합니다.",
	FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(147-66 - 22,152+1+94)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",

}



g_pPictureBlind_Notice3 = g_pUIDialog:CreatePicture() 
g_pStaticBlind_Notice:AddPicture( g_pPictureBlind_Notice3 )

g_pPictureBlind_Notice3:SetTex( "DLG_UI_Common_Texture02.TGA", "feel" )

g_pPictureBlind_Notice3:SetPoint 
{
	"LEFT_TOP		= D3DXVECTOR2(126-66 - 22,152+94+94)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	}
	
g_pStaticBlind_Notice:AddString
{
	MSG 			= "투자GSP **이상이 필요합니다.",
	FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(147-66 - 22,152+1+94+94)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",

}




-----------------BOX

g_pPicture_Box_BG1 = g_pUIDialog:CreatePicture()
g_pStaticSkill:AddPicture( g_pPicture_Box_BG1)

g_pPicture_Box_BG1:SetTex( "DLG_UI_Common_Texture06.TGA", "box" )

g_pPicture_Box_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(24,85)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticSP= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSP)
g_pStaticSP:SetName( "g_pStaticSP" )

g_pStaticSP:AddString
{
	MSG 			= "보유GSP:00",
	FONT_INDEX      = XUF_DODUM_11_NORMAL,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(69-8+6,89)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	--"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)"
}


g_pPicture_Box_BG2 = g_pUIDialog:CreatePicture()
g_pStaticSkill:AddPicture( g_pPicture_Box_BG2)

g_pPicture_Box_BG2:SetTex( "DLG_UI_Common_Texture06.TGA", "box" )

g_pPicture_Box_BG2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(115, 85)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticUsed_SP= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticUsed_SP)
g_pStaticUsed_SP:SetName( "g_pStaticUsedSP" )

g_pStaticUsed_SP:AddString
{
	MSG 			= "투자GSP:00",
	FONT_INDEX      = XUF_DODUM_11_NORMAL,
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(69+91-25+23, 89)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	--"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)"
}




----------------- 스킬 되돌리기 버튼
----------BTN_BG1

g_pButton_Skill_Reset = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Skill_Reset )
g_pButton_Skill_Reset:SetName( "Skill_Reset" )
g_pButton_Skill_Reset:SetNormalTex( "DLG_UI_BUTTON14.tga", "BTN_BG_NORMAL" )

g_pButton_Skill_Reset:SetOverTex( "DLG_UI_BUTTON14.tga", "BTN_BG_OVER" )

g_pButton_Skill_Reset:SetDownTex( "DLG_UI_BUTTON14.tga", "BTN_BG_OVER" )

g_pButton_Skill_Reset:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(219,85)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Skill_Reset:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(219-2,85-2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Skill_Reset:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(219-2+1,85-2+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pButton_Skill_Reset:SetCustomMsgMouseUp( GUILD_SKILL_TREE_UI_CUSTOM_MSG["GSTUCM_SKILL_RESET_MODE_CHANGE"] )
g_pButton_Skill_Reset:SetCustomMsgMouseOver( GUILD_SKILL_TREE_UI_CUSTOM_MSG["GSTUCM_SKILL_RESET_MODE_CHANGE_MOUSEOVER"] )
g_pButton_Skill_Reset:SetCustomMsgMouseOut( GUILD_SKILL_TREE_UI_CUSTOM_MSG["GSTUCM_SKILL_RESET_MODE_CHANGE_MOUSEOUT"] )


g_pStatic_BTN_GUILD1= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_BTN_GUILD1 )
g_pStatic_BTN_GUILD1:SetName( "g_pStaticUndo" )

g_pStatic_BTN_GUILD1:AddString
{
	MSG 			= "스킬 되돌리기:00",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(272,89)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.5,0.3,0.0,1.0)",
}

------------------->>>>>>>>>>>>>>



---------캐시이아템 기간 알림창

g_pButton_Notice_Notice_SP = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Notice_Notice_SP )
g_pButton_Notice_Notice_SP:SetName( "Button_Notice_Notice_SP" )
g_pButton_Notice_Notice_SP:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Notice_Notice_SP:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Notice_Notice_SP:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Notice_Notice_SP:SetNormalPoint
{

     ADD_SIZE_X = 86,
	 ADD_SIZE_Y = 21,
	 
 	"LEFT_TOP		= D3DXVECTOR2(115,85)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.7)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Notice_Notice_SP:SetOverPoint
{
     ADD_SIZE_X = 86,
	 ADD_SIZE_Y = 21,

	"LEFT_TOP		= D3DXVECTOR2(115,85)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Notice_Notice_SP:SetDownPoint
{                                           
     ADD_SIZE_X = 86,
	 ADD_SIZE_Y = 21,

 	"LEFT_TOP		= D3DXVECTOR2(115,85)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Notice_Notice_SP:ChangeMouseUpSound_LUA( "" )
g_pButton_Notice_Notice_SP:ChangeMouseOverSound_LUA( "" )
g_pButton_Notice_Notice_SP:SetCustomMsgMouseOver( GUILD_SKILL_TREE_UI_CUSTOM_MSG["GSTUCM_CSP_GUIDE_MOUSEIN"] )
g_pButton_Notice_Notice_SP:SetCustomMsgMouseOut( GUILD_SKILL_TREE_UI_CUSTOM_MSG["GSTUCM_CSP_GUIDE_MOUSEOUT"] )



g_pButton_Notice_Slot = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Notice_Slot )
g_pButton_Notice_Slot:SetName( "Button_Notice_Slot" )
g_pButton_Notice_Slot:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Notice_Slot:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Notice_Slot:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Notice_Slot:SetNormalPoint
{

     ADD_SIZE_X = 43,
	 ADD_SIZE_Y = 59,
	 
 	"LEFT_TOP		= D3DXVECTOR2(19,530)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.7)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Notice_Slot:SetOverPoint
{
     ADD_SIZE_X = 43,
	 ADD_SIZE_Y = 59,

	"LEFT_TOP		= D3DXVECTOR2(19,530)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Notice_Slot:SetDownPoint
{                                           
     ADD_SIZE_X = 43,
	 ADD_SIZE_Y = 59,

 	"LEFT_TOP		= D3DXVECTOR2(19,530)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Notice_Slot:ChangeMouseUpSound_LUA( "" )
g_pButton_Notice_Slot:ChangeMouseOverSound_LUA( "" )	
g_pButton_Notice_Slot:SetCustomMsgMouseOver( GUILD_SKILL_TREE_UI_CUSTOM_MSG["GSTUCM_SKILLTREESLOTB_GUIDE_MOUSEIN"] )
g_pButton_Notice_Slot:SetCustomMsgMouseOut( GUILD_SKILL_TREE_UI_CUSTOM_MSG["GSTUCM_SKILLTREESLOTB_GUIDE_MOUSEOUT"] )

---------------------------------------------------------------------------


g_pControlList = g_pUIDialog:CreateControlList()
g_pUIDialog:AddControl( g_pControlList )
g_pControlList:SetName( "SkillTreeControlList" )

g_pControlList:SetYScollBarUpButtonTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Normal" )
g_pControlList:SetYScollBarUpButtonDownTex( "DLG_Common_New_Texture61.tga", "Up_Arrow_Over" )
g_pControlList:SetYScollBarDownButtonTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Normal" )
g_pControlList:SetYScollBarDownButtonDownTex( "DLG_Common_New_Texture61.tga", "Down_Arrow_Over" )
g_pControlList:SetYScollBarThumbTex( "DLG_Common_New_Texture61.tga", "Scroll_Bar" )
g_pControlList:SetYScollBarTrackTex( "DLG_Room_Button0.tga", "Invisible" )



g_pScrollBar = g_pControlList:InitYScrollBar()

g_pControlList:SetYScrollBarPos( 415 - 112, 80 + 33)
g_pControlList:SetYScrollBarSize( 21, 372 - 92 )
--g_pControlList:SetScrollOffset( 80, 92 )
g_pControlList:SetScrollOffset( 66, 92 )
g_pControlList:SetPos(19+6, 84+28)

g_pControlList:SetViewSize( 4, 3, true )
--g_pControlList:SetViewSize( 4, 3, true )
g_pControlList:SetCustomMsgScroll( GUILD_SKILL_TREE_UI_CUSTOM_MSG["GSTUCM_CONTROLLIST_SCROLL"] )


--[[

---가이드 버튼


g_pButton_exit = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_exit )
g_pButton_exit:SetName( "_exit" )
g_pButton_exit:SetNormalTex( "DLG_UI_Button01.tga", "exit_NORMAL" )

g_pButton_exit:SetOverTex( "DLG_UI_Button01.tga", "exit_OVER" )

g_pButton_exit:SetDownTex( "DLG_UI_Button01.tga", "exit_OVER" )

g_pButton_exit:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(312,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(308,11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetDownPoint
{
     ADD_SIZE_X = -2 ,
	  ADD_SIZE_Y = -2 ,

 	"LEFT_TOP		= D3DXVECTOR2(308+1,11+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_OPEN_ELLIOS_GUIDE_GO_TO_PAGE"] )
g_pButton_exit:AddDummyInt(140)

--]]
-------------------------------------------------------------------------------------




-----------------------------------버튼 ----------------------------------

--------- exit 버튼

g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Cashshop_BuyWindow_Exit" )
g_pButtonX:SetNormalTex( "DLG_UI_BUTTON01.tga", "EXIT_NORMAL" )

g_pButtonX:SetOverTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetDownTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(313,14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(309,10)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(309+1,10 +1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonX:SetCustomMsgMouseUp( GUILD_SKILL_TREE_UI_CUSTOM_MSG["GSTUCM_EXIT"] )



------------------                     길드정보                     ---------------


g_pRadioButtonGuild_Info = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonGuild_Info )

g_pRadioButtonGuild_Info:SetFixOverByCheck( true )
g_pRadioButtonGuild_Info:SetShowOffBGByCheck( true )

g_pRadioButtonGuild_Info:SetName( "Radio_Guild_Info" )

g_pRadioButtonGuild_Info:SetNormalTex( "DLG_UI_Button14.tga", "GUILD_INFO_NORMAL" )


g_pRadioButtonGuild_Info:SetOverTex( "DLG_UI_Button14.tga", "GUILD_INFO_OVER" )


g_pRadioButtonGuild_Info:SetCheckedTex( "DLG_UI_Button14.tga", "GUILD_INFO_OVER" )


g_pRadioButtonGuild_Info:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(26,55)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonGuild_Info:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(26-1,55)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonGuild_Info:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(24,52)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(83+20,84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonGuild_Info:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(26-1,55)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonGuild_Info:SetGroupID( 1 )
g_pRadioButtonGuild_Info:SetChecked( true )
g_pRadioButtonGuild_Info:SetCustomMsgChecked( GUILD_UI_MESSAGE["GUM_GUILD_INFO_TAB"] )






-----------------                     길드원정보                ----------------------


g_pRadioButtonGuild_Member = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonGuild_Member )

g_pRadioButtonGuild_Member:SetFixOverByCheck( true )
g_pRadioButtonGuild_Member:SetShowOffBGByCheck( true )

g_pRadioButtonGuild_Member:SetName( "Radio_Guild_Member_Info" )

g_pRadioButtonGuild_Member:SetNormalTex( "DLG_UI_Button14.tga", "GUILD_MEMBER_NORMAL" )


g_pRadioButtonGuild_Member:SetOverTex( "DLG_UI_Button14.tga", "GUILD_MEMBER_OVER" )


g_pRadioButtonGuild_Member:SetCheckedTex( "DLG_UI_Button14.tga", "GUILD_MEMBER_OVER" )


g_pRadioButtonGuild_Member:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(90 + 20,55-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonGuild_Member:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(90 + 20 + 2,55-1+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonGuild_Member:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(90 + 20+2,55-1+1)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(90+64 + 20+ 60,80)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonGuild_Member:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(90+2+ 20,55-1+1)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonGuild_Member:SetGroupID( 1 )
g_pRadioButtonGuild_Member:SetCustomMsgChecked( GUILD_UI_MESSAGE["GUM_GUILD_MEMBER_INFO_TAB"] )





-----------------                     길드스킬정보                ----------------------


g_pRadioButtonGuild_Skill = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonGuild_Skill )

g_pRadioButtonGuild_Skill:SetFixOverByCheck( true )
g_pRadioButtonGuild_Skill:SetShowOffBGByCheck( true )

g_pRadioButtonGuild_Skill:SetName( "RadioButtonGuild_Skill" )

g_pRadioButtonGuild_Skill:SetNormalTex( "DLG_UI_Button14.tga", "GUILD_SKILL_NORMAL" )


g_pRadioButtonGuild_Skill:SetOverTex( "DLG_UI_Button14.tga", "GUILD_SKILL_OVER" )


g_pRadioButtonGuild_Skill:SetCheckedTex( "DLG_UI_Button14.tga", "GUILD_SKILL_OVER" )


g_pRadioButtonGuild_Skill:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(90+76+70,55-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonGuild_Skill:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(90+76+70,55)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonGuild_Skill:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(90+76+70,55)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(90+64+76+70,80)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonGuild_Skill:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(90+76+70,55)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonGuild_Skill:SetGroupID( 1 )
g_pRadioButtonGuild_Skill:SetCustomMsgChecked( GUILD_UI_MESSAGE["GUM_GUILD_SKILL_TAB"] )

