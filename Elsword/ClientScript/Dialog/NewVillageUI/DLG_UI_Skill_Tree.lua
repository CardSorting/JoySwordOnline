-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStaticSkill = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill )
g_pStaticSkill:SetName( "g_pStaticSkill" )

g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetCloseCustomUIEventID( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EXIT"] )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 0, 0, 0 ) ) -- 위치
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 452, 610, 0 ) ) -- Size 

-----BG
g_pPictureInfo_BG1 = g_pUIDialog:CreatePicture()
g_pStaticSkill:AddPicture( g_pPictureInfo_BG1 )
g_pPictureInfo_BG1:SetTex( "DLG_UI_Common_Texture01.TGA", "BG_TOP" )
g_pPictureInfo_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureInfo_BG2 = g_pUIDialog:CreatePicture()
g_pStaticSkill:AddPicture( g_pPictureInfo_BG2 )
g_pPictureInfo_BG2:SetTex( "DLG_UI_Common_Texture01.TGA", "BG_MIDDLE" )
g_pPictureInfo_BG2:SetPoint
{
    ADD_SIZE_Y = 535+31,
	"LEFT_TOP		= D3DXVECTOR2(0,19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureInfo_BG3 = g_pUIDialog:CreatePicture()
g_pStaticSkill:AddPicture( g_pPictureInfo_BG3 )
g_pPictureInfo_BG3:SetTex( "DLG_UI_Common_Texture01.TGA", "BG_BOTTOM" )
g_pPictureInfo_BG3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,560+31)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-----캐릭터정보 ---- 

g_pPictureInfo_BG13 = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureInfo_BG13 )
g_pPictureInfo_BG13:SetTex( "DLG_UI_Common_Texture10.TGA", "black_bg_top" )
g_pPictureInfo_BG13:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(14,44)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}	
	
g_pPictureInfo_BG14 = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureInfo_BG14 )
g_pPictureInfo_BG14:SetTex( "DLG_UI_Common_Texture10.TGA", "black_bg_MIDDLE" )
g_pPictureInfo_BG14:SetPoint
{
   ADD_SIZE_Y = 13 ,
	"LEFT_TOP		= D3DXVECTOR2(14,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}		
	
g_pPictureInfo_BG15 = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureInfo_BG15 )
g_pPictureInfo_BG15:SetTex( "DLG_UI_Common_Texture10.TGA", "black_bg_bottom" )
g_pPictureInfo_BG15:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(14,68)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}		

-----스킬트리 ---- 

g_pPictureInfo_BG13 = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureInfo_BG13 )
g_pPictureInfo_BG13:SetTex( "DLG_UI_Common_Texture10.TGA", "black_bg_top" )
g_pPictureInfo_BG13:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(14,79)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}	
	
g_pPictureInfo_BG14 = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureInfo_BG14 )
g_pPictureInfo_BG14:SetTex( "DLG_UI_Common_Texture10.TGA", "black_bg_MIDDLE" )
g_pPictureInfo_BG14:SetPoint
{
   ADD_SIZE_Y = 449,
	"LEFT_TOP		= D3DXVECTOR2(14,88)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}		
	
g_pPictureInfo_BG15 = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureInfo_BG15 )
g_pPictureInfo_BG15:SetTex( "DLG_UI_Common_Texture10.TGA", "black_bg_bottom" )
g_pPictureInfo_BG15:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(14,449+90)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}		

--------구분선------------
g_pPictureBG_Line = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureBG_Line )
g_pPictureBG_Line:SetTex( "DLG_UI_Common_Texture11.TGA", "white" )
g_pPictureBG_Line:SetPoint
{
 
   ADD_SIZE_X = 394 ,
  	"LEFT_TOP		= D3DXVECTOR2(17,173)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.15)",
	CHANGE_TIME		= 0.0,
	
	}		
	
g_pPictureBG_Line = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureBG_Line )
g_pPictureBG_Line:SetTex( "DLG_UI_Common_Texture11.TGA", "white" )
g_pPictureBG_Line:SetPoint
{
 
   ADD_SIZE_X = 394 ,
  	"LEFT_TOP		= D3DXVECTOR2(17,173+92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.15)",
	CHANGE_TIME		= 0.0,
	
	}		
	
g_pPictureBG_Line = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureBG_Line )

g_pPictureBG_Line:SetTex( "DLG_UI_Common_Texture11.TGA", "white" )
g_pPictureBG_Line:SetPoint
{
 
   ADD_SIZE_X = 394 ,
  	"LEFT_TOP		= D3DXVECTOR2(17,173+92+92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.15)",
	CHANGE_TIME		= 0.0,
	
}		
	
g_pPictureBG_Line = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureBG_Line )

g_pPictureBG_Line:SetTex( "DLG_UI_Common_Texture11.TGA", "white" )
g_pPictureBG_Line:SetPoint
{
 
   ADD_SIZE_X = 394 ,
  	"LEFT_TOP		= D3DXVECTOR2(17,173+92+92 +92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.15)",
	CHANGE_TIME		= 0.0,
	
}			
g_pPictureBG_Line = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureBG_Line )

g_pPictureBG_Line:SetTex( "DLG_UI_Common_Texture11.TGA", "white" )
g_pPictureBG_Line:SetPoint
{
 
   ADD_SIZE_X = 394 ,
  	"LEFT_TOP		= D3DXVECTOR2(17,173+92+92 +92+92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.15)",
	CHANGE_TIME		= 0.0,
	
}		
------- 배경 그림--------
g_pPictureBG = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureBG )
g_pPictureBG:SetTex( "DLG_UI_Common_Texture11.TGA", "skill_bg" )
g_pPictureBG:SetPoint
{
 
   ADD_SIZE_X = 110 ,
   ADD_SIZE_Y = 110 ,  
	"LEFT_TOP		= D3DXVECTOR2(30+10,85+40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.5)",
	CHANGE_TIME		= 0.0,
	
	}		
		
---TITLE

g_pStaticText = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticText )
g_pStaticText:SetName( "g_pStaticText" )

g_pPictureText_title = g_pUIDialog:CreatePicture()
g_pStaticText:AddPicture( g_pPictureText_title )
g_pPictureText_title:SetTex( "DLG_UI_Title02_B.TGA", "Title_skill" )
g_pPictureText_title:SetPoint 
{

	"LEFT_TOP		= D3DXVECTOR2(15,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--[[
-----------도움말

g_pStaticText = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticText )
g_pStaticText:SetName( "g_pStaticText" )


g_pPictureText_title = g_pUIDialog:CreatePicture()
g_pStaticText:AddPicture( g_pPictureText_title )

g_pPictureText_title:SetTex( "DLG_UI_Common_Texture02.TGA", "feel" )

g_pPictureText_title:SetPoint 
{

	"LEFT_TOP		= D3DXVECTOR2(101,18)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStaticNotice= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticNotice)
g_pStaticNotice:SetName( "g_pStaticNotice" )

g_pStaticNotice:AddString
	{
MSG 			= STR_ID_2677,
FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
FONT_STYLE      = FONT_STYLE["FS_SHELL"],
SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
"POS 			= D3DXVECTOR2(122,20)",
"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",

	}
	
--]]

---캐릭터 클래스

g_pStaticCharClass = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCharClass )
g_pStaticCharClass:SetName( "g_pStaticCharClass" )

g_pStaticCharClass:AddString
{
	-- MSG 			= "스나이핑 레인저",
	FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG       = DRAW_TEXT["DT_HVCENTER"],
	"POS 			= D3DXVECTOR2(18+50,53+6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
 	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
	
----보유 SP
g_pPictureSP = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureSP )

g_pPictureSP:SetTex( "DLG_UI_Title02_B.tga", "SP" )

g_pPictureSP:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(206-66+7-10-15 - 10,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
	
	}	


g_pStaticSP= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSP)
g_pStaticSP:SetName( "g_pStaticSP" )

	g_pStaticSP:AddString
	{
MSG 			= "999",
FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
FONT_STYLE      = FONT_STYLE["FS_SHELL"],
SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
"POS 			= D3DXVECTOR2(259-66+7-10,54)",
"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
 "OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",

	}
	

	
----투자한 SP

g_pPictureUsed_SP = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureUsed_SP )

g_pPictureUsed_SP:SetTex( "DLG_UI_Title02_B.tga", "Used_MP" )

g_pPictureUsed_SP:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(226+2-5-10+5,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
	
	}	
g_pStaticUsed_SP= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticUsed_SP)
g_pStaticUsed_SP:SetName( "g_pStaticUsedSP" )

g_pStaticUsed_SP:AddString
	{
--MSG 			= "999",
FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
FONT_STYLE      = FONT_STYLE["FS_SHELL"],
SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
"POS 			= D3DXVECTOR2(290+2-5,54)",
"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
 "OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",

	}
		
-----스킬 되돌리기

g_pButton_Skill_Reset = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Skill_Reset )
g_pButton_Skill_Reset:SetName( "Skill_Reset" )

g_pButton_Skill_Reset:SetNormalTex( "DLG_UI_Button11.TGA", "Empty_Normal" )
g_pButton_Skill_Reset:SetOverTex( "DLG_UI_Button11.TGA", "Empty_Over" )
g_pButton_Skill_Reset:SetDownTex( "DLG_UI_Button11.TGA", "Empty_Over" )

g_pButton_Skill_Reset:SetNormalPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(297+20,47)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_Skill_Reset:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(297+20-4,47-4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.9)",
	CHANGE_TIME		= 0.0,
}

g_pButton_Skill_Reset:SetDownPoint
{
ADD_SIZE_X = -2,
ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(297+20-4+1,47-4+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.9)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Skill_Reset:SetCustomMsgMouseUp( SKILL_TREE_UI_CUSTOM_MSG["STUCM_SKILL_RESET_MODE_CHANGE"] )
g_pButton_Skill_Reset:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_SKILL_RESET_MODE_CHANGE_MOUSEOVER"] )
g_pButton_Skill_Reset:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_SKILL_RESET_MODE_CHANGE_MOUSEOUT"] )

g_pPictureInfo_BG16 = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureInfo_BG16 )

g_pPictureInfo_BG16:SetTex( "DLG_UI_Button01.TGA", "title" )

g_pPictureInfo_BG16:SetPoint
{
ADD_SIZE_X = -20,
	"LEFT_TOP		= D3DXVECTOR2(300+20,48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}

g_pStaticUndo= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticUndo)
g_pStaticUndo:SetName( "g_pStaticUndoName" )

g_pStaticUndo:AddString
{
	MSG 			= STR_ID_2641,
	--MSG 			= "스킬 되돌리기:99",
	FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(310+13,54 - 1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",

}

g_pStaticUndo= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticUndo)
g_pStaticUndo:SetName( "g_pStaticUndo" )

	g_pStaticUndo:AddString
	{
-- MSG 			= "30",
FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
FONT_STYLE      = FONT_STYLE["FS_SHELL"],
SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
"POS 			= D3DXVECTOR2(410+10,54 - 1)",
"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
 "OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",

	}


--[[임시
--------- 슬롯----------------------

g_pPictureAddition_BG13 = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureAddition_BG13 )

g_pPictureAddition_BG13:SetTex( "DLG_UI_Common_Texture10.TGA", "slot_bg_left" )

g_pPictureAddition_BG13:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(14,462)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

	}

g_pPictureAddition_BG13 = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureAddition_BG13 )

g_pPictureAddition_BG13:SetTex( "DLG_UI_Common_Texture10.TGA", "slot_bg_middle" )

g_pPictureAddition_BG13:SetPoint
{
	ADD_SIZE_X = 243,
	"LEFT_TOP		= D3DXVECTOR2(25,462)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
}
	
	
g_pPictureAddition_BG13 = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureAddition_BG13 )

g_pPictureAddition_BG13:SetTex( "DLG_UI_Common_Texture10.TGA", "slot_bg_right" )

g_pPictureAddition_BG13:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(270,462)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
}
	

	
	
g_pPictureSkill_A = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureSkill_A )

g_pPictureSkill_A:SetTex( "DLG_UI_Common_Texture10.TGA", "A" )

g_pPictureSkill_A:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(26,482)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
}
	
	
g_pPictureSkill_B = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureSkill_B )

g_pPictureSkill_B:SetTex( "DLG_UI_Common_Texture10.TGA", "B" )

g_pPictureSkill_B:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(30,546)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
}
	
---------스킬Slot A	
g_pPictureSlot_A1 = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureSlot_A1 )

g_pPictureSlot_A1:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPictureSlot_A1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(68,472)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
}	

	
g_pPictureSlot_A2 = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureSlot_A2 )

g_pPictureSlot_A2:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPictureSlot_A2:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(68+51,472)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
}
	
	
g_pPictureSlot_A3 = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureSlot_A3 )

g_pPictureSlot_A3:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPictureSlot_A3:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(68+51+51,472)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
}

g_pPictureSlot_A4 = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureSlot_A4 )

g_pPictureSlot_A4:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPictureSlot_A4:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(68+51+51+51,472)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
}




------------- Slot Control A

g_pSlot = g_pUIDialog:CreateSlot()
g_pUIDialog:AddControl( g_pSlot )
g_pSlot:SetName( "SlotA1" )
g_pSlot:SetItemTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pSlot:SetMouseOverTex( "DLG_UI_Common_Texture09.tga", "Glow" )
g_pSlot:SetPoint
{
	ADD_SIZE_X = 46,
    ADD_SIZE_Y = 46,
	"LEFT_TOP		= D3DXVECTOR2(68+1, 472+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pSlot:SetMouseOverPoint
{

    "LEFT_TOP		= D3DXVECTOR2(68+1-6,472+1-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pSlot:SetDragable(false)
g_pSlot:SetCustomMsgDropped( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_DROPPED"] )
g_pSlot:SetCustomMsgMouseRightUp( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_RMOUSEUP"] )
g_pSlot:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_MOUSEIN"] )
g_pSlot:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_MOUSEOUT"] )


g_pSlot = g_pUIDialog:CreateSlot()
g_pUIDialog:AddControl( g_pSlot )
g_pSlot:SetName( "SlotA2" )
g_pSlot:SetItemTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pSlot:SetMouseOverTex( "DLG_UI_Common_Texture09.tga", "Glow" )
g_pSlot:SetPoint
{
	ADD_SIZE_X = 46,
    ADD_SIZE_Y = 46,
	"LEFT_TOP		= D3DXVECTOR2(68+1+51, 472+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pSlot:SetMouseOverPoint
{

    "LEFT_TOP		= D3DXVECTOR2(68+1+51-6,472+1-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pSlot:SetDragable(false)
g_pSlot:SetCustomMsgDropped( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_DROPPED"] )
g_pSlot:SetCustomMsgMouseRightUp( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_RMOUSEUP"] )
g_pSlot:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_MOUSEIN"] )
g_pSlot:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_MOUSEOUT"] )


g_pSlot = g_pUIDialog:CreateSlot()
g_pUIDialog:AddControl( g_pSlot )
g_pSlot:SetName( "SlotA3" )
g_pSlot:SetItemTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pSlot:SetMouseOverTex( "DLG_UI_Common_Texture09.tga", "Glow" )
g_pSlot:SetPoint
{
	ADD_SIZE_X = 46,
    ADD_SIZE_Y = 46,
	"LEFT_TOP		= D3DXVECTOR2(68+1+51+51, 472+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pSlot:SetMouseOverPoint
{

    "LEFT_TOP		= D3DXVECTOR2(68+1+51+51-6,472+1-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pSlot:SetDragable(false)
g_pSlot:SetCustomMsgDropped( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_DROPPED"] )
g_pSlot:SetCustomMsgMouseRightUp( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_RMOUSEUP"] )
g_pSlot:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_MOUSEIN"] )
g_pSlot:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_MOUSEOUT"] )


g_pSlot = g_pUIDialog:CreateSlot()
g_pUIDialog:AddControl( g_pSlot )
g_pSlot:SetName( "SlotA4" )
g_pSlot:SetItemTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pSlot:SetMouseOverTex( "DLG_UI_Common_Texture09.tga", "Glow" )
g_pSlot:SetPoint
{
	ADD_SIZE_X = 46,
    ADD_SIZE_Y = 46,
	"LEFT_TOP		= D3DXVECTOR2(68+1+51+51+51, 472+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pSlot:SetMouseOverPoint
{

    "LEFT_TOP		= D3DXVECTOR2(68+1+51+51+51-6,472+1-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pSlot:SetDragable(false)
g_pSlot:SetCustomMsgDropped( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_DROPPED"] )
g_pSlot:SetCustomMsgMouseRightUp( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_RMOUSEUP"] )
g_pSlot:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_MOUSEIN"] )
g_pSlot:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_MOUSEOUT"] )




---------Slot B	
g_pPictureSlot_B1 = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureSlot_B1 )

g_pPictureSlot_B1:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPictureSlot_B1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(68,535)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}
	
	
g_pPictureSlot_B2 = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureSlot_B2 )

g_pPictureSlot_B2:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPictureSlot_B2:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(68+51,535)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}
	
	
g_pPictureSlot_B3 = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureSlot_B3 )

g_pPictureSlot_B3:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPictureSlot_B3:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(68+51+51,535)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}

g_pPictureSlot_B4 = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureSlot_B4 )

g_pPictureSlot_B4:SetTex( "DLG_UI_Common_Texture02.TGA", "slot" )

g_pPictureSlot_B4:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(68+51+51+51,535)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}


	
------------- Slot Control B



g_pSlot = g_pUIDialog:CreateSlot()
g_pUIDialog:AddControl( g_pSlot )
g_pSlot:SetName( "SlotB1" )
g_pSlot:SetItemTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pSlot:SetMouseOverTex( "DLG_UI_Common_Texture09.tga", "Glow" )
g_pSlot:SetPoint
{
	ADD_SIZE_X = 46,
    ADD_SIZE_Y = 46,
	"LEFT_TOP		= D3DXVECTOR2(68+1, 535+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pSlot:SetMouseOverPoint
{

    "LEFT_TOP		= D3DXVECTOR2(68+1-6,535+1-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pSlot:SetDragable(false)
g_pSlot:SetCustomMsgDropped( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_DROPPED"] )
g_pSlot:SetCustomMsgMouseRightUp( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_RMOUSEUP"] )
g_pSlot:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_MOUSEIN"] )
g_pSlot:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_MOUSEOUT"] )



g_pSlot = g_pUIDialog:CreateSlot()
g_pUIDialog:AddControl( g_pSlot )
g_pSlot:SetName( "SlotB2" )
g_pSlot:SetItemTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pSlot:SetMouseOverTex( "DLG_UI_Common_Texture09.tga", "Glow" )
g_pSlot:SetPoint
{
	ADD_SIZE_X = 46,
    ADD_SIZE_Y = 46,
	"LEFT_TOP		= D3DXVECTOR2(68+1+51, 535+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pSlot:SetMouseOverPoint
{

    "LEFT_TOP		= D3DXVECTOR2(68+1+51-6,535+1-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pSlot:SetDragable(false)
g_pSlot:SetCustomMsgDropped( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_DROPPED"] )
g_pSlot:SetCustomMsgMouseRightUp( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_RMOUSEUP"] )
g_pSlot:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_MOUSEIN"] )
g_pSlot:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_MOUSEOUT"] )


g_pSlot = g_pUIDialog:CreateSlot()
g_pUIDialog:AddControl( g_pSlot )
g_pSlot:SetName( "SlotB3" )
g_pSlot:SetItemTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pSlot:SetMouseOverTex( "DLG_UI_Common_Texture09.tga", "Glow" )
g_pSlot:SetPoint
{
	ADD_SIZE_X = 46,
    ADD_SIZE_Y = 46,
	"LEFT_TOP		= D3DXVECTOR2(68+1+51+51, 535+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pSlot:SetMouseOverPoint
{

    "LEFT_TOP		= D3DXVECTOR2(68+1+51+51-6,535+1-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pSlot:SetDragable(false)
g_pSlot:SetCustomMsgDropped( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_DROPPED"] )
g_pSlot:SetCustomMsgMouseRightUp( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_RMOUSEUP"] )
g_pSlot:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_MOUSEIN"] )
g_pSlot:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_MOUSEOUT"] )


g_pSlot = g_pUIDialog:CreateSlot()
g_pUIDialog:AddControl( g_pSlot )
g_pSlot:SetName( "SlotB4" )
g_pSlot:SetItemTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pSlot:SetMouseOverTex( "DLG_UI_Common_Texture09.tga", "Glow" )
g_pSlot:SetPoint
{
	ADD_SIZE_X = 46,
    ADD_SIZE_Y = 46,
	"LEFT_TOP		= D3DXVECTOR2(68+1+51+51+51, 535+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pSlot:SetMouseOverPoint
{

    "LEFT_TOP		= D3DXVECTOR2(68+1+51+51+51-6,535+1-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pSlot:SetDragable(false)
g_pSlot:SetCustomMsgDropped( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_DROPPED"] )
g_pSlot:SetCustomMsgMouseRightUp( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_RMOUSEUP"] )
g_pSlot:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_MOUSEIN"] )
g_pSlot:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EQUIPSLOT_MOUSEOUT"] )


g_pStaticSkill = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill )
g_pStaticSkill:SetName( "g_pStaticSkill" )






-------------슬롯 단축키--------------------
------------------A
g_pPictureSlot_Key_A1 = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureSlot_Key_A1 )

g_pPictureSlot_Key_A1:SetTex( "DLG_UI_Common_Texture01.TGA", "Skill_A1" )

g_pPictureSlot_Key_A1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(100,474)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}


g_pPictureSlot_Key_S1 = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureSlot_Key_S1 )

g_pPictureSlot_Key_S1:SetTex( "DLG_UI_Common_Texture01.TGA", "Skill_S1" )

g_pPictureSlot_Key_S1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(150,474)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}


g_pPictureSlot_Key_D1 = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureSlot_Key_D1 )

g_pPictureSlot_Key_D1:SetTex( "DLG_UI_Common_Texture01.TGA", "Skill_D1" )

g_pPictureSlot_Key_D1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(203,474)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}

	
g_pPictureSlot_Key_C1 = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureSlot_Key_C1 )

g_pPictureSlot_Key_C1:SetTex( "DLG_UI_Common_Texture01.TGA", "Skill_C1" )

g_pPictureSlot_Key_C1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(253,474)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}

------------------B
g_pPictureSlot_Key_A2 = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureSlot_Key_A2 )

g_pPictureSlot_Key_A2:SetTex( "DLG_UI_Common_Texture01.TGA", "Skill_A1" )

g_pPictureSlot_Key_A2:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(100,474+63)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}


g_pPictureSlot_Key_S2 = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureSlot_Key_S2 )

g_pPictureSlot_Key_S2:SetTex( "DLG_UI_Common_Texture01.TGA", "Skill_S1" )

g_pPictureSlot_Key_S2:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(150,474+63)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}


g_pPictureSlot_Key_D2 = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureSlot_Key_D2 )

g_pPictureSlot_Key_D2:SetTex( "DLG_UI_Common_Texture01.TGA", "Skill_D1" )

g_pPictureSlot_Key_D2:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(203,474+63)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}

	
g_pPictureSlot_Key_C2 = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureSlot_Key_C2 )

g_pPictureSlot_Key_C2:SetTex( "DLG_UI_Common_Texture01.TGA", "Skill_C1" )

g_pPictureSlot_Key_C2:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(253,474+63)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}



	
------------ 탐색창


g_pPictureAddition_BG13 = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureAddition_BG13 )

g_pPictureAddition_BG13:SetTex( "DLG_UI_Common_Texture10.TGA", "Navi_Top" )

g_pPictureAddition_BG13:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(285,462)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

	}

g_pPictureAddition_BG13 = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureAddition_BG13 )

g_pPictureAddition_BG13:SetTex( "DLG_UI_Common_Texture10.TGA", "Navi_middle" )

g_pPictureAddition_BG13:SetPoint
{
ADD_SIZE_Y = 102,
	"LEFT_TOP		= D3DXVECTOR2(285,483)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}
	
	
g_pPictureAddition_BG13 = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureAddition_BG13 )

g_pPictureAddition_BG13:SetTex( "DLG_UI_Common_Texture10.TGA", "Navi_Bottom" )

g_pPictureAddition_BG13:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(285,587)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}
	



	
---------BAR

g_pPictureBar = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureBar )

g_pPictureBar:SetTex( "DLG_UI_Common_Texture01.TGA", "BAR1" )

g_pPictureBar:SetPoint
{
   ADD_SIZE_X = 434,
	"LEFT_TOP		= D3DXVECTOR2(8,456)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}


g_pPictureBar = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureBar )

g_pPictureBar:SetTex( "DLG_UI_Common_Texture01.TGA", "BAR2" )

g_pPictureBar:SetPoint
{
   ADD_SIZE_Y = 53,
	"LEFT_TOP		= D3DXVECTOR2(61,469)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
	
	}


g_pPictureBar = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureBar )

g_pPictureBar:SetTex( "DLG_UI_Common_Texture01.TGA", "BAR2" )

g_pPictureBar:SetPoint
{
   ADD_SIZE_Y = 53,
	"LEFT_TOP		= D3DXVECTOR2(61,532)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.8)",
	CHANGE_TIME		= 0.0,
	
	}



g_pPictureScroll = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureScroll )

g_pPictureScroll:SetTex( "DLG_Common_New_Texture61.TGA", "Scroll_Bg" )

g_pPictureScroll:SetPoint
{
   ADD_SIZE_Y = 329,
	"LEFT_TOP		= D3DXVECTOR2(415,101)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}

	
 ]]
---EXIT 버튼


g_pButton_exit = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_exit )
g_pButton_exit:SetName( "_exit" )
g_pButton_exit:SetNormalTex( "DLG_UI_Button01.tga", "exit_NORMAL" )

g_pButton_exit:SetOverTex( "DLG_UI_Button01.tga", "exit_OVER" )

g_pButton_exit:SetDownTex( "DLG_UI_Button01.tga", "exit_OVER" )

g_pButton_exit:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(412,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(408,11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetDownPoint
{
     ADD_SIZE_X = -2 ,
	  ADD_SIZE_Y = -2 ,

 	"LEFT_TOP		= D3DXVECTOR2(408+1,11+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetCustomMsgMouseUp( SKILL_TREE_UI_CUSTOM_MSG["STUCM_EXIT"] )

-------------------------------------------------------------------------------------


------------------------비활성 스킬 가림--------------------------


g_pStaticSkill = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSkill )
g_pStaticSkill:SetName( "g_pStaticBlind" )


g_pPictureBlind_Top = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureBlind_Top )

g_pPictureBlind_Top:SetTex( "DLG_UI_Common_Texture15.TGA", "Blind_Top" )
g_pPictureBlind_Top:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(17,81)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureBlind_Top:SetShow(false)	

g_pPictureBlind_Middle1 = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureBlind_Middle1 )
g_pPictureBlind_Middle1:SetTex( "DLG_UI_Common_Texture15.TGA", "Blind_Middle" )
g_pPictureBlind_Middle1:SetPoint
{
	ADD_SIZE_X = 396,
	"LEFT_TOP		= D3DXVECTOR2(17,173)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureBlind_Middle1:SetShow(false)
	
g_pPictureBlind_Middle2 = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureBlind_Middle2 )
g_pPictureBlind_Middle2:SetTex( "DLG_UI_Common_Texture15.TGA", "Blind_Middle" )
g_pPictureBlind_Middle2:SetPoint
{
	ADD_SIZE_X = 396,
	"LEFT_TOP		= D3DXVECTOR2(17,173+92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureBlind_Middle2:SetShow(false)

g_pPictureBlind_Middle3 = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureBlind_Middle3 )
g_pPictureBlind_Middle3:SetTex( "DLG_UI_Common_Texture15.TGA", "Blind_Middle" )
g_pPictureBlind_Middle3:SetPoint
{
	ADD_SIZE_X = 396,
	"LEFT_TOP		= D3DXVECTOR2(17,173+92+92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureBlind_Middle3:SetShow(false)

g_pPictureBlind_Bottom = g_pUIDialog:CreatePicture() 
g_pStaticSkill:AddPicture( g_pPictureBlind_Bottom )

g_pPictureBlind_Bottom:SetTex( "DLG_UI_Common_Texture15.TGA", "Blind_Bottom" )

g_pPictureBlind_Bottom:SetPoint
{
	ADD_SIZE_Y = 5,
	"LEFT_TOP		= D3DXVECTOR2(17,449)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPictureBlind_Bottom:SetShow(false)	


-------------투자 SP 알림

g_pStaticBlind_Notice = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticBlind_Notice )
g_pStaticBlind_Notice:SetName( "g_pStaticBlind_Notice" )

g_pPictureBlind_Notice1 = g_pUIDialog:CreatePicture() 
g_pStaticBlind_Notice:AddPicture( g_pPictureBlind_Notice1 )

g_pPictureBlind_Notice1:SetTex( "DLG_UI_Common_Texture02.TGA", "feel" )

g_pPictureBlind_Notice1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(126-40,117)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	}


g_pPictureBlind_Notice2 = g_pUIDialog:CreatePicture() 
g_pStaticBlind_Notice:AddPicture( g_pPictureBlind_Notice2 )

g_pPictureBlind_Notice2:SetTex( "DLG_UI_Common_Texture02.TGA", "feel" )

g_pPictureBlind_Notice2:SetPoint 
{
	"LEFT_TOP		= D3DXVECTOR2(126-40,117+92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	}


g_pPictureBlind_Notice3 = g_pUIDialog:CreatePicture() 
g_pStaticBlind_Notice:AddPicture( g_pPictureBlind_Notice3 )

g_pPictureBlind_Notice3:SetTex( "DLG_UI_Common_Texture02.TGA", "feel" )

g_pPictureBlind_Notice3:SetPoint 
{
	"LEFT_TOP		= D3DXVECTOR2(126-40,117+92+92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	}

	
g_pPictureBlind_Notice4 = g_pUIDialog:CreatePicture() 
g_pStaticBlind_Notice:AddPicture( g_pPictureBlind_Notice4 )

g_pPictureBlind_Notice4:SetTex( "DLG_UI_Common_Texture02.TGA", "feel" )

g_pPictureBlind_Notice4:SetPoint 
{
	"LEFT_TOP		= D3DXVECTOR2(126-40,117+92+92+92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	}
	
g_pStaticBlind_Notice:AddString
{
	--MSG 			= STR_ID_2641,
	--MSG 			= "투자SP **이상이 필요합니다.",
	FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(147-40,119)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
 	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",

}

g_pStaticBlind_Notice:AddString
{
	--MSG 			= STR_ID_2641,
	--MSG 			= "투자SP **이상이 필요합니다.",
	FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(147-40,119+92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
 	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",

}

g_pStaticBlind_Notice:AddString
{
	--MSG 			= STR_ID_2641,
	--MSG 			= "투자SP **이상이 필요합니다.",
	FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(147-40,119+92+92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	 "OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",

}	


g_pStaticBlind_Notice:AddString
{
	--MSG 			= STR_ID_2641,
	--MSG 			= "투자SP **이상이 필요합니다.",
	FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(147-40,119+92+92+92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	 "OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",

}	

---------캐시이아템 기간 알림창

g_pButton_Notice_Notice_SP = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Notice_Notice_SP )
g_pButton_Notice_Notice_SP:SetName( "Button_Notice_Notice_SP" )
g_pButton_Notice_Notice_SP:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Notice_Notice_SP:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Notice_Notice_SP:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Notice_Notice_SP:SetNormalPoint
{

     ADD_SIZE_X = 177,
	 ADD_SIZE_Y = 24,
	 
 	"LEFT_TOP		= D3DXVECTOR2(136,48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.7)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Notice_Notice_SP:SetOverPoint
{
     ADD_SIZE_X = 177,
	 ADD_SIZE_Y = 24,

	"LEFT_TOP		= D3DXVECTOR2(136,48)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Notice_Notice_SP:SetDownPoint
{                                           
     ADD_SIZE_X = 177,
	 ADD_SIZE_Y = 24,

 	"LEFT_TOP		= D3DXVECTOR2(136,48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Notice_Notice_SP:ChangeMouseUpSound_LUA( "" )
g_pButton_Notice_Notice_SP:ChangeMouseOverSound_LUA( "" )
g_pButton_Notice_Notice_SP:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_CSP_GUIDE_MOUSEIN"] )
g_pButton_Notice_Notice_SP:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_CSP_GUIDE_MOUSEOUT"] )



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
--g_pButton_Notice_Slot:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_SKILLTREESLOTB_GUIDE_MOUSEIN"] )
--g_pButton_Notice_Slot:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_SKILLTREESLOTB_GUIDE_MOUSEOUT"] )

---------------------------------------------------------------------------
--[[
스킬슬롯 B 구매 가이드.
g_pButton_Notice_Slot = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Notice_Slot )
g_pButton_Notice_Slot:SetName( "Button_Buy_Guide_Slot" )
g_pButton_Notice_Slot:SetNormalTex( "DLG_Common_Button00.tga", "invisible" )

g_pButton_Notice_Slot:SetOverTex( "DLG_Common_Button00.tga", "invisible" )

g_pButton_Notice_Slot:SetDownTex( "DLG_Common_Button00.tga", "invisible" )

g_pButton_Notice_Slot:SetNormalPoint
{

     ADD_SIZE_X = 263,
	 ADD_SIZE_Y = 59,
	 
 	"LEFT_TOP		= D3DXVECTOR2(19,530)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.7)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Notice_Slot:SetOverPoint
{
     ADD_SIZE_X = 263,
	 ADD_SIZE_Y = 59, 
	"LEFT_TOP		= D3DXVECTOR2(19,530)", 
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Notice_Slot:SetDownPoint
{                                           
     ADD_SIZE_X = 263,
	 ADD_SIZE_Y = 59, 
 	"LEFT_TOP		= D3DXVECTOR2(19,530)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Notice_Slot:ChangeMouseUpSound_LUA( "" )
g_pButton_Notice_Slot:ChangeMouseOverSound_LUA( "" )	
g_pButton_Notice_Slot:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_SKILLTREESLOTB_BUY_GUIDE_MOUSEIN"] )
g_pButton_Notice_Slot:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_SKILLTREESLOTB_BUY_GUIDE_MOUSEOUT"] )
---------------------------------------------------------------------------
--]]

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
g_pControlList:SetYScrollBarPos( 415, 80 )
g_pControlList:SetYScrollBarSize( 21, 372+95 )
g_pControlList:SetScrollOffset( 80, 92 )
g_pControlList:SetPos(19, 84)

g_pControlList:SetViewSize( 5, 5, true )
g_pControlList:SetCustomMsgScroll( SKILL_TREE_UI_CUSTOM_MSG["STUCM_CONTROLLIST_SCROLL"] )


-----------------------------------------------------------------------------

--[[
-- mini skill tree 그림이 들어갈 static
g_pStatic_MiniSkillLine = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_MiniSkillLine )
g_pStatic_MiniSkillLine:SetName( "Mini_Skill_Line" )
g_pStatic_MiniSkillLine:SetOffsetPos( 361 , 486 )		-- 상단 중앙 위치

-- mini skill tree 그림이 들어갈 static
g_pStatic_MiniSkillIcon = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_MiniSkillIcon )
g_pStatic_MiniSkillIcon:SetName( "Mini_Skill_Icon" )
g_pStatic_MiniSkillIcon:SetOffsetPos( 361 , 486 )		-- 상단 중앙 위치
g_pStatic_MiniSkillIcon:AddDummyInt( 108 ) -- Y Size 



-- 리스트 네비게이션 바

g_pNavi = g_pUIDialog:CreateNavigation()
g_pUIDialog:AddControl( g_pNavi )
g_pNavi:SetName( "Navi_MiniTree" )
g_pNavi:SetBGTex_LUA( "DLG_Room_Button0.tga", "Invisible" )
--g_pNavi:SetBGTex_LUA( "DLG_Common_Texture01.tga", "White" )
g_pNavi:SetWindowTex_LUA( "DLG_Common_New_Texture23.tga", "Skill_Tree_Navigation_Box" )


-- 프로그램에서 다시 잡아 준다.
-- 스크롤 범위
g_pNavi:SetBGPoint_LUA
{
	USE_TEXTURE_SIZE= FALSE,
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"LEFT_TOP		= D3DXVECTOR2(398,95)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(421,221)",
	CHANGE_TIME		= 0.0,
}

-- 스크롤 바 최초 위치+범위
g_pNavi:SetWindowPoint_LUA
{
	USE_TEXTURE_SIZE= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(398,95)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(398+23,95+40)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pNavi:SetCustomMsgLButtonDown( SKILL_TREE_UI_CUSTOM_MSG["STUCM_NAVI_LEFT_CLICKED"] )
g_pNavi:SetCustomMsgMouseDragging( SKILL_TREE_UI_CUSTOM_MSG["STUCM_NAVI_DRAGGING"] ) 
--]]



---HELP 버튼


g_pButton_Help = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Help )
g_pButton_Help:SetName( "Help" )
g_pButton_Help:SetNormalTex( "DLG_UI_Button14.tga", "Help_NORMAL" )

g_pButton_Help:SetOverTex( "DLG_UI_Button14.tga", "Help_OVER" )

g_pButton_Help:SetDownTex( "DLG_UI_Button14.tga", "Help_OVER" )

g_pButton_Help:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(386,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(386-4,15-4)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetDownPoint
{
     ADD_SIZE_X = -2 ,
	  ADD_SIZE_Y = -2 ,

 	"LEFT_TOP		= D3DXVECTOR2(386-4+1,15-4+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Help:SetCustomMsgMouseUp( STATE_MENU_UI_CUSTOM_MSG["SMUCM_OPEN_ELLIOS_GUIDE_GO_TO_PAGE"] )
g_pButton_Help:AddDummyInt(110)


-----------------------------------스킬트리 버튼 ----------------------------------
g_pRadioButton_Skill = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_Skill )
g_pRadioButton_Skill:SetName( "RadioButton_Skill" )

g_pRadioButton_Skill:SetNormalTex( "DLG_UI_BUTTON13.tga", "BTN_BG_NORMAL" )
g_pRadioButton_Skill:SetOverTex( "DLG_UI_BUTTON13.tga", "BTN_BG_OVER" )
g_pRadioButton_Skill:SetCheckedTex( "DLG_UI_BUTTON13.tga", "BTN_BG_DOWN" )


g_pRadioButton_Skill:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(224,16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Skill:SetBGMouseOverPoint
{   
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(224-1,16-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Skill:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(224,16)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(224+80,16+26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Skill:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(224-4,16-4)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_Skill:SetGroupID( 2 )


----------------- 버튼이름

g_pStatic_BTN_SKILL= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_BTN_SKILL )
g_pStatic_BTN_SKILL:SetName( "Static_BTN_SKILL" )

g_pStatic_BTN_SKILL:AddString
{
	MSG 			= STR_ID_4769,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(224+38,16+4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	 "OUTLINE_COLOR		= D3DXCOLOR(0.5,0.3,0.0,1.0)",
}



-----------------------------------커맨드스킬 버튼 ----------------------------------
g_pRadioButton_Command = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_Command )
g_pRadioButton_Command:SetName( "RadioButton_Command" )

g_pRadioButton_Command:SetNormalTex( "DLG_UI_BUTTON13.tga", "BTN_BG_NORMAL" )
g_pRadioButton_Command:SetOverTex( "DLG_UI_BUTTON13.tga", "BTN_BG_OVER" )
g_pRadioButton_Command:SetCheckedTex( "DLG_UI_BUTTON13.tga", "BTN_BG_DOWN" )


g_pRadioButton_Command:SetBGPoint
{
	"LEFT_TOP		= D3DXVECTOR2(305,16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Command:SetBGMouseOverPoint
{   
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
	"LEFT_TOP		= D3DXVECTOR2(305-1,16-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Command:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(305,16)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(305+80,16+26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Command:SetCheckPoint
{
 	"LEFT_TOP		= D3DXVECTOR2(305-4,16-4)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pRadioButton_Command:SetGroupID( 2 )
g_pRadioButton_Command:SetCustomMsgChecked( SKILL_TREE_UI_CUSTOM_MSG["STUCM_OPEN_COMBO_TREE"] ) 





----------------- 버튼이름

g_pStatic_BTN_Command= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_BTN_Command )
g_pStatic_BTN_Command:SetName( "Static_BTN_Command" )

g_pStatic_BTN_Command:AddString
{
	MSG 			= STR_ID_4770,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
    FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(305+38,16+4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	 "OUTLINE_COLOR		= D3DXCOLOR(0.5,0.3,0.0,1.0)",
}

-------------안내문

g_pStatic_Notice = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Notice )
g_pStatic_Notice:SetName( "Notice" )

g_pPicture_Notice1 = g_pUIDialog:CreatePicture() 
g_pStatic_Notice:AddPicture( g_pPicture_Notice1 )

g_pPicture_Notice1:SetTex( "DLG_UI_Common_Texture02.TGA", "feel" )

g_pPicture_Notice1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(18,553)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStatic_Notice:AddString
{
MSG             ="스킬아이콘을 드래그 하거나 우클릭을 통해 스킬 슬롯에\n장착 할 수 있습니다.",
FONT_INDEX      = XUF_DODUM_15_BOLD,
--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
"POS 			= D3DXVECTOR2(43,553)",
"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",

}
