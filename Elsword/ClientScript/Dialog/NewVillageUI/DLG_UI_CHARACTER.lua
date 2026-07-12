-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetCloseCustomUIEventID( CHARACTER_INFORMATION_MSG["CIM_EXIT"] )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 0, 0, 0 ) ) -- 위치
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 452, 610, 0 ) ) -- Size 
g_pUIDialog:AddDummyPos( D3DXVECTOR3( -285, 46, 200 ) ) -- 화면 중앙을 기준으로 한 유닛뷰어 위치
g_pUIDialog:AddDummyPos( D3DXVECTOR3( -250000, 50000, -500000 ) ) -- 유닛뷰어에 적용될 LightPos





g_pStaticInfo = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticInfo )
g_pStaticInfo:SetName( "g_pStaticInfo" )




-----BG
g_pPictureInfo_BG1 = g_pUIDialog:CreatePicture()
g_pStaticInfo:AddPicture( g_pPictureInfo_BG1 )

g_pPictureInfo_BG1:SetTex( "DLG_UI_Common_Texture01.TGA", "BG_TOP" )

g_pPictureInfo_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureInfo_BG2 = g_pUIDialog:CreatePicture()
g_pStaticInfo:AddPicture( g_pPictureInfo_BG2 )

g_pPictureInfo_BG2:SetTex( "DLG_UI_Common_Texture01.TGA", "BG_MIDDLE" )

g_pPictureInfo_BG2:SetPoint
{
    ADD_SIZE_Y = 535+31,
	"LEFT_TOP		= D3DXVECTOR2(0,19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureInfo_BG3 = g_pUIDialog:CreatePicture()
g_pStaticInfo:AddPicture( g_pPictureInfo_BG3 )

g_pPictureInfo_BG3:SetTex( "DLG_UI_Common_Texture01.TGA", "BG_BOTTOM" )

g_pPictureInfo_BG3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,560+31)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





---캐틱터 info

g_pPictureInfo_BG2 = g_pUIDialog:CreatePicture()
g_pStaticInfo:AddPicture( g_pPictureInfo_BG2 )

g_pPictureInfo_BG2:SetTex( "DLG_UI_Common_Texture01.TGA", "WIN_INFO_TOP" )

g_pPictureInfo_BG2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(14,79)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInfo_BG2 = g_pUIDialog:CreatePicture()
g_pStaticInfo:AddPicture( g_pPictureInfo_BG2 )

g_pPictureInfo_BG2:SetTex( "DLG_UI_Common_Texture01.TGA", "WIN_INFO_MIDDLE" )

g_pPictureInfo_BG2:SetPoint
{
    ADD_SIZE_Y = 256 ,
	"LEFT_TOP		= D3DXVECTOR2(14,89)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInfo_BG2 = g_pUIDialog:CreatePicture()
g_pStaticInfo:AddPicture( g_pPictureInfo_BG2 )
 
g_pPictureInfo_BG2:SetTex( "DLG_UI_Common_Texture01.TGA", "WIN_INFO_BOTTOM" )

g_pPictureInfo_BG2:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(14,347)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--[[
-------------------   캐릭터 뷰   ---------------------
-------------------------------------------------------

g_pPictureInfo_view = g_pUIDialog:CreatePicture()
g_pStaticInfo:AddPicture( g_pPictureInfo_view )

g_pPictureInfo_view:SetTex( "DLG_UI_Common_Texture04.TGA", "charac_view_top" )

g_pPictureInfo_view:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,82)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInfo_view = g_pUIDialog:CreatePicture()
g_pStaticInfo:AddPicture( g_pPictureInfo_view )

g_pPictureInfo_view:SetTex( "DLG_UI_Common_Texture04.TGA", "charac_view_middle" )

g_pPictureInfo_view:SetPoint
{
     ADD_SIZE_Y = 257-5,
	"LEFT_TOP		= D3DXVECTOR2(0,92)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureInfo_view = g_pUIDialog:CreatePicture()
g_pStaticInfo:AddPicture( g_pPictureInfo_view )

g_pPictureInfo_view:SetTex( "DLG_UI_Common_Texture04.TGA", "charac_view_bottom" )

g_pPictureInfo_view:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,350-5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--]]






g_pPictureInfo_BG7 = g_pUIDialog:CreatePicture()
g_pStaticInfo:AddPicture( g_pPictureInfo_BG7 )

g_pPictureInfo_BG7:SetTex( "DLG_UI_Common_Texture01.TGA", "WIN_INFO_TOP" )

g_pPictureInfo_BG7:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(14,360)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInfo_BG8 = g_pUIDialog:CreatePicture()
g_pStaticInfo:AddPicture( g_pPictureInfo_BG8 )

g_pPictureInfo_BG8:SetTex( "DLG_UI_Common_Texture01.TGA", "WIN_INFO_MIDDLE" )

g_pPictureInfo_BG8:SetPoint
{
     ADD_SIZE_Y = 38,
	"LEFT_TOP		= D3DXVECTOR2(14,370)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInfo_BG9 = g_pUIDialog:CreatePicture() 
g_pStaticInfo:AddPicture( g_pPictureInfo_BG9 )

g_pPictureInfo_BG9:SetTex( "DLG_UI_Common_Texture01.TGA", "WIN_INFO_BOTTOM" )

g_pPictureInfo_BG9:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(14,410)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInfo_BG10 = g_pUIDialog:CreatePicture() 
g_pStaticInfo:AddPicture( g_pPictureInfo_BG10 )

g_pPictureInfo_BG10:SetTex( "DLG_UI_Common_Texture01.TGA", "WIN_INFO_TOP" )

g_pPictureInfo_BG10:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(14,423)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

	}

g_pPictureInfo_BG11 = g_pUIDialog:CreatePicture() 
g_pStaticInfo:AddPicture( g_pPictureInfo_BG11 )

g_pPictureInfo_BG11:SetTex( "DLG_UI_Common_Texture01.TGA", "WIN_INFO_MIDDLE" )

g_pPictureInfo_BG11:SetPoint
{
     ADD_SIZE_Y = 114 ,
	"LEFT_TOP		= D3DXVECTOR2(14,433)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}
	
	
g_pPictureInfo_BG12 = g_pUIDialog:CreatePicture() 
g_pStaticInfo:AddPicture( g_pPictureInfo_BG12 )

g_pPictureInfo_BG12:SetTex( "DLG_UI_Common_Texture01.TGA", "WIN_INFO_BOTTOM" )

g_pPictureInfo_BG12:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(14,549)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}
	

g_pPictureInfo_BG13 = g_pUIDialog:CreatePicture() 
g_pStaticInfo:AddPicture( g_pPictureInfo_BG13 )

g_pPictureInfo_BG13:SetTex( "DLG_UI_Common_Texture01.TGA", "WIN_NAME_LEFT" )

g_pPictureInfo_BG13:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(14,44)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}	
	

g_pPictureInfo_BG14 = g_pUIDialog:CreatePicture() 
g_pStaticInfo:AddPicture( g_pPictureInfo_BG14 )

g_pPictureInfo_BG14:SetTex( "DLG_UI_Common_Texture01.TGA", "WIN_NAME_MIDDLE" )

g_pPictureInfo_BG14:SetPoint
{
   ADD_SIZE_X = 402 ,
	"LEFT_TOP		= D3DXVECTOR2(23,44)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}		
	

g_pPictureInfo_BG15 = g_pUIDialog:CreatePicture() 
g_pStaticInfo:AddPicture( g_pPictureInfo_BG15 )

g_pPictureInfo_BG15:SetTex( "DLG_UI_Common_Texture01.TGA", "WIN_NAME_RIGHT" )

g_pPictureInfo_BG15:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(427,44)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}		








g_pPictureAddition_BG13 = g_pUIDialog:CreatePicture() 
g_pStaticInfo:AddPicture( g_pPictureAddition_BG13 )

g_pPictureAddition_BG13:SetTex( "DLG_UI_Common_Texture01.TGA", "WIN_INFO_TOP" )

g_pPictureAddition_BG13:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(14,563)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

	}

g_pPictureAddition_BG13 = g_pUIDialog:CreatePicture() 
g_pStaticInfo:AddPicture( g_pPictureAddition_BG13 )

g_pPictureAddition_BG13:SetTex( "DLG_UI_Common_Texture01.TGA", "WIN_INFO_MIDDLE" )

g_pPictureAddition_BG13:SetPoint
{
     ADD_SIZE_Y = 10 ,
	"LEFT_TOP		= D3DXVECTOR2(14,573)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}
	
	
g_pPictureAddition_BG13 = g_pUIDialog:CreatePicture() 
g_pStaticInfo:AddPicture( g_pPictureAddition_BG13 )

g_pPictureAddition_BG13:SetTex( "DLG_UI_Common_Texture01.TGA", "WIN_INFO_BOTTOM" )

g_pPictureAddition_BG13:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(14,585)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}
	







	
---------BAR

g_pPictureInfo_BG16 = g_pUIDialog:CreatePicture() 
g_pStaticInfo:AddPicture( g_pPictureInfo_BG16 )

g_pPictureInfo_BG16:SetTex( "DLG_UI_Common_Texture01.TGA", "BAR1" )

g_pPictureInfo_BG16:SetPoint
{
   ADD_SIZE_X = 415,
	"LEFT_TOP		= D3DXVECTOR2(17,389)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}


g_pPictureInfo_BG17 = g_pUIDialog:CreatePicture() 
g_pStaticInfo:AddPicture( g_pPictureInfo_BG17 )

g_pPictureInfo_BG17:SetTex( "DLG_UI_Common_Texture01.TGA", "BAR2" )

g_pPictureInfo_BG17:SetPoint
{
   ADD_SIZE_Y = 126,
	"LEFT_TOP		= D3DXVECTOR2(273,427)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}
		
-----칭호 버튼


g_pButton_title = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_title )
g_pButton_title:SetName( "title" )
g_pButton_title:SetNormalTex( "DLG_UI_Button17.TGA", "TITLE_BUTTON_NORMAL" )

g_pButton_title:SetOverTex( "DLG_UI_Button17.TGA", "TITLE_BUTTON_OVER" )

g_pButton_title:SetDownTex( "DLG_UI_Button17.TGA", "TITLE_BUTTON_OVER" )

g_pButton_title:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(285,392)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_title:SetOverPoint
{
      
	"LEFT_TOP		= D3DXVECTOR2(285,392)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_title:SetDownPoint
{
     ADD_SIZE_X = -2 ,
	  ADD_SIZE_Y = -2 ,
	 
 	"LEFT_TOP		= D3DXVECTOR2(285-2+3,392-1+2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_title:SetCustomMsgMouseUp( CHARACTER_INFORMATION_MSG["CIM_TITLE"] )


---TITLE

g_pStaticText = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticText )
g_pStaticText:SetName( "g_pStaticText" )


g_pPictureText_title = g_pUIDialog:CreatePicture()
g_pStaticText:AddPicture( g_pPictureText_title )

g_pPictureText_title:SetTex( "DLG_UI_Title01.TGA", "CHARACTER" )

g_pPictureText_title:SetPoint 
{

	"LEFT_TOP		= D3DXVECTOR2(15,12)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
 
---lv

g_pPictureText_lv = g_pUIDialog:CreatePicture() 
g_pStaticText:AddPicture( g_pPictureText_lv )

g_pPictureText_lv:SetTex( "DLG_UI_Title01.TGA", "LV" )

g_pPictureText_lv:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(44,54)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--칭호

g_pPictureText_title = g_pUIDialog:CreatePicture() 
g_pStaticText:AddPicture( g_pPictureText_title )

g_pPictureText_title:SetTex( "DLG_UI_Title01.TGA", "title" )

g_pPictureText_title:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(248,397)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureText_life = g_pUIDialog:CreatePicture() 
g_pStaticText:AddPicture( g_pPictureText_life )

g_pPictureText_life:SetTex( "DLG_UI_Common_Texture02.TGA", "revival" )

g_pPictureText_life:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(358,49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--캐릭터 아이콘

g_pStaticIcon = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticIcon )
g_pStaticIcon:SetName( "Static_CharIcon" )

g_pPictureText_charac_icon = g_pUIDialog:CreatePicture() 
g_pStaticIcon:AddPicture( g_pPictureText_charac_icon )

g_pPictureText_charac_icon:SetTex( "DLG_UI_Common_Texture02.TGA", "charac_area" )

g_pPictureText_charac_icon:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(20,49)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----------전적


g_pPictureText_total_rank = g_pUIDialog:CreatePicture() 
g_pStaticText:AddPicture( g_pPictureText_total_rank )

g_pPictureText_total_rank:SetTex( "DLG_UI_Title01.TGA", "score" )

g_pPictureText_total_rank:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(17,367)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----대전 순위

g_pPictureText_ranking = g_pUIDialog:CreatePicture() 
g_pStaticText:AddPicture( g_pPictureText_ranking )

g_pPictureText_ranking:SetTex( "DLG_UI_Title01.TGA", "ranking" )

g_pPictureText_ranking:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(163,367)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---등급


g_pPictureText_grade = g_pUIDialog:CreatePicture() 
g_pStaticText:AddPicture( g_pPictureText_grade )

g_pPictureText_grade:SetTex( "DLG_UI_Title01.TGA", "grade" )

g_pPictureText_grade:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(17,396)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--등급아이콘

g_pStaticMy_Info_PVP_Grade = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMy_Info_PVP_Grade )
g_pStaticMy_Info_PVP_Grade:SetName( "PVP_Grade" )

--[[
g_pStaticMy_Info_PVP_Grade:AddString
{
	MSG 			= STR_ID_1249,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(630,160)",
	"COLOR			= D3DXCOLOR(0.28,0.35,0.27,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}
--]]

g_pPictureBase_PVP_Grade = g_pUIDialog:CreatePicture()
g_pStaticMy_Info_PVP_Grade:AddPicture( g_pPictureBase_PVP_Grade )

g_pPictureBase_PVP_Grade:SetTex( "DLG_UI_Common_Texture02.TGA", "grade_area" )

g_pPictureBase_PVP_Grade:SetPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(78,392)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------------ED

g_pPictureText_ed= g_pUIDialog:CreatePicture()
g_pStaticText:AddPicture( g_pPictureText_ed)

g_pPictureText_ed:SetTex( "DLG_UI_Title01.TGA", "ED" )

g_pPictureText_ed:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(110,396)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



---VP

g_pPictureText_vp= g_pUIDialog:CreatePicture()
g_pStaticText:AddPicture( g_pPictureText_vp)

g_pPictureText_vp:SetTex( "DLG_UI_Title01.TGA", "vp" )

g_pPictureText_vp:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(259,369)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---넥슨케시

g_pPictureText_cash= g_pUIDialog:CreatePicture()
g_pStaticText:AddPicture( g_pPictureText_cash)

g_pPictureText_cash:SetTex( "DLG_UI_Title01.TGA", "cash" )

g_pPictureText_cash:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(227,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---------------hp

g_pPictureText_hp= g_pUIDialog:CreatePicture()
g_pStaticText:AddPicture( g_pPictureText_hp)

g_pPictureText_hp:SetTex( "DLG_UI_Title01.TGA", "hp" )

g_pPictureText_hp:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(26,438)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------------------물공

g_pPictureText_p_attack= g_pUIDialog:CreatePicture()
g_pStaticText:AddPicture( g_pPictureText_p_attack)

g_pPictureText_p_attack:SetTex( "DLG_UI_Title01.TGA", "p_attack" )

g_pPictureText_p_attack:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(25,460)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-------------마공

g_pPictureText_m_attack= g_pUIDialog:CreatePicture()
g_pStaticText:AddPicture( g_pPictureText_m_attack)

g_pPictureText_m_attack:SetTex( "DLG_UI_Title01.TGA", "m_attack" )

g_pPictureText_m_attack:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(25,484)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

------물방

g_pPictureText_p_depense= g_pUIDialog:CreatePicture()
g_pStaticText:AddPicture( g_pPictureText_p_depense)

g_pPictureText_p_depense:SetTex( "DLG_UI_Title01.TGA", "p_depense" )

g_pPictureText_p_depense:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(25,507)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-------마방

g_pPictureText_m_depense= g_pUIDialog:CreatePicture()
g_pStaticText:AddPicture( g_pPictureText_m_depense)

g_pPictureText_m_depense:SetTex( "DLG_UI_Title01.TGA", "m_depense" )

g_pPictureText_m_depense:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(25,531)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


------불

g_pPictureText_fire= g_pUIDialog:CreatePicture()
g_pStaticText:AddPicture( g_pPictureText_fire)

g_pPictureText_fire:SetTex( "DLG_UI_Title01.TGA", "fire" )

g_pPictureText_fire:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(309,430)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--------------물

g_pPictureText_water= g_pUIDialog:CreatePicture()
g_pStaticText:AddPicture( g_pPictureText_water)

g_pPictureText_water:SetTex( "DLG_UI_Title01.TGA", "water" )

g_pPictureText_water:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(309,451)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--------------자연


g_pPictureText_nature= g_pUIDialog:CreatePicture()
g_pStaticText:AddPicture( g_pPictureText_nature)

g_pPictureText_nature:SetTex( "DLG_UI_Title01.TGA", "nature" )

g_pPictureText_nature:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(310,472)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---------------바람

g_pPictureText_wind= g_pUIDialog:CreatePicture()
g_pStaticText:AddPicture( g_pPictureText_wind)

g_pPictureText_wind:SetTex( "DLG_UI_Title01.TGA", "wind" )

g_pPictureText_wind:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(310,493)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----- 빛


g_pPictureText_light= g_pUIDialog:CreatePicture()
g_pStaticText:AddPicture( g_pPictureText_light)

g_pPictureText_light:SetTex( "DLG_UI_Title01.TGA", "light" )

g_pPictureText_light:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(311,514)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----------어둠

g_pPictureText_dark= g_pUIDialog:CreatePicture()
g_pStaticText:AddPicture( g_pPictureText_dark)

g_pPictureText_dark:SetTex( "DLG_UI_Title01.TGA", "dark" )

g_pPictureText_dark:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(310,535)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



---아바타
-- 주의 : 사이즈/위치 수정시 아래쪽의 슬롯 정보도 같이 수정해주세요

g_pStaticAvata = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticAvata )
g_pStaticAvata:SetName( "g_pStaticAvata" )


g_pPictureAvata_head = g_pUIDialog:CreatePicture()
g_pStaticAvata:AddPicture( g_pPictureAvata_head )

g_pPictureAvata_head:SetTex( "DLG_UI_Common_Texture02.TGA", "AVATA_HEAD" )

g_pPictureAvata_head:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(22,123)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}


g_pPictureAvata_coat = g_pUIDialog:CreatePicture()
g_pStaticAvata:AddPicture( g_pPictureAvata_coat )

g_pPictureAvata_coat:SetTex( "DLG_UI_Common_Texture02.TGA", "AVATA_coat" )

g_pPictureAvata_coat:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(22,167)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}


g_pPictureAvata_pants = g_pUIDialog:CreatePicture()
g_pStaticAvata:AddPicture( g_pPictureAvata_pants )

g_pPictureAvata_pants:SetTex( "DLG_UI_Common_Texture02.TGA", "AVATA_pants" )

g_pPictureAvata_pants:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(22,211)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}


g_pPictureAvata_glover = g_pUIDialog:CreatePicture()
g_pStaticAvata:AddPicture( g_pPictureAvata_glover )

g_pPictureAvata_glover:SetTex( "DLG_UI_Common_Texture02.TGA", "AVATA_glover" )

g_pPictureAvata_glover:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(22,255)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}


g_pPictureAvata_shose = g_pUIDialog:CreatePicture()
g_pStaticAvata:AddPicture( g_pPictureAvata_shose )

g_pPictureAvata_shose:SetTex( "DLG_UI_Common_Texture02.TGA", "AVATA_shose" )

g_pPictureAvata_shose:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(22,299)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}


g_pPictureAvata_weapon = g_pUIDialog:CreatePicture()
g_pStaticAvata:AddPicture( g_pPictureAvata_weapon )

g_pPictureAvata_weapon:SetTex( "DLG_UI_Common_Texture02.TGA", "AVATA_weapon" )

g_pPictureAvata_weapon:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(342,114)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}

g_pPictureAvata_weapon_ac = g_pUIDialog:CreatePicture()
g_pStaticAvata:AddPicture( g_pPictureAvata_weapon_ac )

g_pPictureAvata_weapon_ac:SetTex( "DLG_UI_Common_Texture02.TGA", "weapon_ac" )

g_pPictureAvata_weapon_ac:SetPoint
{
     ADD_SIZE_X = -11,
	 ADD_SIZE_Y = -11,
	 
	"LEFT_TOP		= D3DXVECTOR2(309,114)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}


-----장비
-- 주의 : 사이즈/위치 수정시 아래쪽의 슬롯 정보도 같이 수정해주세요

g_pStaticEuqip = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticEuqip )
g_pStaticEuqip:SetName( "g_pStaticEuqip" )


g_pPictureEuqip_coat = g_pUIDialog:CreatePicture()
g_pStaticEuqip:AddPicture( g_pPictureEuqip_coat )

g_pPictureEuqip_coat:SetTex( "DLG_UI_Common_Texture02.TGA", "Euqip_coat" )

g_pPictureEuqip_coat:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(66,167)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

} 


g_pPictureEuqip_pants = g_pUIDialog:CreatePicture()
g_pStaticEuqip:AddPicture( g_pPictureEuqip_pants )

g_pPictureEuqip_pants:SetTex( "DLG_UI_Common_Texture02.TGA", "Euqip_pants" )

g_pPictureEuqip_pants:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(66,211)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}


g_pPictureEuqip_glover = g_pUIDialog:CreatePicture()
g_pStaticEuqip:AddPicture( g_pPictureEuqip_glover )

g_pPictureEuqip_glover:SetTex( "DLG_UI_Common_Texture02.TGA", "Euqip_glover" )

g_pPictureEuqip_glover:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(66,255)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}


g_pPictureEuqip_shose = g_pUIDialog:CreatePicture()
g_pStaticEuqip:AddPicture( g_pPictureEuqip_shose )

g_pPictureEuqip_shose:SetTex( "DLG_UI_Common_Texture02.TGA", "Euqip_shose" )

g_pPictureEuqip_shose:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(66,299)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}



g_pPictureEuqip_weapon = g_pUIDialog:CreatePicture()
g_pStaticEuqip:AddPicture( g_pPictureEuqip_weapon )

g_pPictureEuqip_weapon:SetTex( "DLG_UI_Common_Texture02.TGA", "Euqip_weapon" )

g_pPictureEuqip_weapon:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(386,114)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}



-- 악세
-- 주의 : 사이즈/위치 수정시 아래쪽의 슬롯 정보도 같이 수정해주세요

g_pPictureEuqip_head = g_pUIDialog:CreatePicture()
g_pStaticEuqip:AddPicture( g_pPictureEuqip_head )

g_pPictureEuqip_head:SetTex( "DLG_UI_Common_Texture02.TGA", "Euqip_head" )

g_pPictureEuqip_head:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(342,167)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}


g_pPictureEuqip_glass = g_pUIDialog:CreatePicture()
g_pStaticEuqip:AddPicture( g_pPictureEuqip_glass )

g_pPictureEuqip_glass:SetTex( "DLG_UI_Common_Texture02.TGA", "Euqip_glass" )

g_pPictureEuqip_glass:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(342,211)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}


g_pPictureEuqip_mask = g_pUIDialog:CreatePicture()
g_pStaticEuqip:AddPicture( g_pPictureEuqip_mask )

g_pPictureEuqip_mask:SetTex( "DLG_UI_Common_Texture02.TGA", "Euqip_mask" )

g_pPictureEuqip_mask:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(342,255)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}


g_pPictureEuqip_ring = g_pUIDialog:CreatePicture()
g_pStaticEuqip:AddPicture( g_pPictureEuqip_ring )

g_pPictureEuqip_ring:SetTex( "DLG_UI_Common_Texture02.TGA", "Euqip_ring" )

g_pPictureEuqip_ring:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(342,299)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}


g_pPictureEuqip_bust = g_pUIDialog:CreatePicture()
g_pStaticEuqip:AddPicture( g_pPictureEuqip_bust )

g_pPictureEuqip_bust:SetTex( "DLG_UI_Common_Texture02.TGA", "Euqip_coat" )

g_pPictureEuqip_bust:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(386,167)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}


g_pPictureEuqip_waist = g_pUIDialog:CreatePicture()
g_pStaticEuqip:AddPicture( g_pPictureEuqip_waist )

g_pPictureEuqip_waist:SetTex( "DLG_UI_Common_Texture02.TGA", "Euqip_pants" )

g_pPictureEuqip_waist:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(386,211)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}


g_pPictureEuqip_armlet = g_pUIDialog:CreatePicture()
g_pStaticEuqip:AddPicture( g_pPictureEuqip_armlet )

g_pPictureEuqip_armlet:SetTex( "DLG_UI_Common_Texture02.TGA", "Euqip_glover" )

g_pPictureEuqip_armlet:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(386,255)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}



g_pPictureEuqip_necklace = g_pUIDialog:CreatePicture()
g_pStaticEuqip:AddPicture( g_pPictureEuqip_necklace )

g_pPictureEuqip_necklace:SetTex( "DLG_UI_Common_Texture02.TGA", "Euqip_necklace" )

g_pPictureEuqip_necklace:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(386,299)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}


----속성 이미지

g_pStaticAti = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticAti )
g_pStaticAti:SetName( "g_pStaticAti" )


g_pPictureAti_fire = g_pUIDialog:CreatePicture()
g_pStaticAti:AddPicture( g_pPictureAti_fire )

g_pPictureAti_fire:SetTex( "DLG_UI_Common_Texture02.TGA", "FIRE_MARK" )

g_pPictureAti_fire:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(286,429)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureAti_water = g_pUIDialog:CreatePicture()
g_pStaticAti:AddPicture( g_pPictureAti_water )

g_pPictureAti_water:SetTex( "DLG_UI_Common_Texture02.TGA", "WATER_MARK" )

g_pPictureAti_water:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(286,450)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureAti_nature = g_pUIDialog:CreatePicture()
g_pStaticAti:AddPicture( g_pPictureAti_nature )

g_pPictureAti_nature:SetTex( "DLG_UI_Common_Texture02.TGA", "nature_MARK" )

g_pPictureAti_nature:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(286,471)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureAti_wind = g_pUIDialog:CreatePicture()
g_pStaticAti:AddPicture( g_pPictureAti_wind )

g_pPictureAti_wind:SetTex( "DLG_UI_Common_Texture02.TGA", "wind_MARK" )

g_pPictureAti_wind:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(286,492)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureAti_light = g_pUIDialog:CreatePicture()
g_pStaticAti:AddPicture( g_pPictureAti_light )

g_pPictureAti_light:SetTex( "DLG_UI_Common_Texture02.TGA", "light_MARK" )

g_pPictureAti_light:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(286,513)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureAti_dark = g_pUIDialog:CreatePicture()
g_pStaticAti:AddPicture( g_pPictureAti_dark )

g_pPictureAti_dark:SetTex( "DLG_UI_Common_Texture02.TGA", "dark_MARK" )

g_pPictureAti_dark:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(286,534)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----닉네임
g_pStaticInfo_name = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticInfo_name )
g_pStaticInfo_name:SetName( "Static_Nickname" )

g_pStaticInfo_name:AddString
{
	-- MSG 			= "닉넴은여섯자",
	FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(84,54)",
	"COLOR			= D3DXCOLOR(1.0,0.9,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

----길드명
g_pStaticInfo_GuildName = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticInfo_GuildName )
g_pStaticInfo_GuildName:SetName( "Static_GuildName" )

g_pStaticInfo_GuildName:AddString
{
	-- MSG 			= "닉넴은여섯자",
	FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(415,87)",
	"COLOR			= D3DXCOLOR(0.6,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


----레벨
	g_pStaticInfo_Lv= g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticInfo_Lv )
	g_pStaticInfo_Lv:SetName( "g_pStaticInfo_Lv" )

	g_pStaticInfo_Lv:AddString
	{
		-- MSG 			= "40",
		 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(63,54)",
		"COLOR			= D3DXCOLOR(1.0,0.9,0.1,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}

----칭호 
	g_pStaticInfo_Title = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticInfo_Title )
	g_pStaticInfo_Title:SetName( "g_pStaticInfo_Title" )

	g_pStaticInfo_Title:AddString
	{
		MSG 			= STR_ID_1250,
		 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(351,397)",
		"COLOR			= D3DXCOLOR(1.0,0.9,0.1,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}

    ----칭호 이미지
    g_pPictureimage = g_pUIDialog:CreatePicture()
    g_pStaticInfo:AddPicture( g_pPictureimage )
    g_pPictureimage:SetTex2( "Title_Empty.tga" )
    g_pPictureimage:SetPoint
    {
        USE_TEXTURE_SIZE = FALSE,
	    "LEFT_TOP		= D3DXVECTOR2(66,86)",	    
	    "RIGHT_BOTTOM	= D3DXVECTOR2(66 + 100, 86 + 65)",
    	
	    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	    CHANGE_TIME		= 0.0,	
    }
    g_pPictureimage:SetIndex(1)


---부활석
	g_pStaticInfo_resurrection = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticInfo_resurrection )
	g_pStaticInfo_resurrection:SetName( "g_pStaticInfo_resurrection" )

	g_pStaticInfo_resurrection:AddString
	{
		-- MSG 			= "9999",
		 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,

 	 SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(418,53)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}

---전적
	g_pStaticInfo_PVP_Win= g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticInfo_PVP_Win )
	g_pStaticInfo_PVP_Win:SetName( "g_pStaticInfo_PVP_Win" )

	g_pStaticInfo_PVP_Win:AddString
	{
		-- MSG 			= "99999승/99999패",
		 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,

 	 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(104,369)",
		"COLOR			= D3DXCOLOR(0.1,0.1,0.1,1.0)",

	}

----대전 순위
g_pStaticinfo_rank= g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticinfo_rank)
	g_pStaticinfo_rank:SetName( "g_pStaticinfo_rank" )

	g_pStaticinfo_rank:AddString
	{
		-- MSG 			= "999위",
		 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,

 	 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(236,369)",
		"COLOR			= D3DXCOLOR(0.1,0.1,0.1,1.0)",

	}

---ED
	g_pStaticinfo_ed= g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticinfo_ed )
	g_pStaticinfo_ed:SetName( "g_pStaticinfo_ed" )

	g_pStaticinfo_ed:AddString
	{
		-- MSG 			= "99,999,999,999",
		 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,

 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(135,398)",
		"COLOR			= D3DXCOLOR(0.1,0.1,0.1,1.0)",

	}

----VP
g_pStaticinfo_vp= g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticinfo_vp)
	g_pStaticinfo_vp:SetName( "g_pStaticInfo_vp" )

	g_pStaticinfo_vp:AddString
	{
		-- MSG 			= "10,000,000/10,000,000",
		 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,

 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(279,369)",
		"COLOR			= D3DXCOLOR(0.1,0.1,0.1,1.0)",

	}


--넥슨캐시
	g_pStaticinfo_cash= g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticinfo_cash)
	g_pStaticinfo_cash:SetName( "g_pStaticInfo_cash" )

	g_pStaticinfo_cash:AddString
	{
		-- MSG 			= "10,000",
		 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,

 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(275,53)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",

	}

---HP
g_pStaticinfo_hp= g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticinfo_hp)
	g_pStaticinfo_hp:SetName( "g_pStaticinfo_hp" )

	g_pStaticinfo_hp:AddString
	{
		-- MSG 			= "1450000",
		 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 	 FONT_STYLE      = FONT_STYLE["2002L_KOG"],
 	 SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(171,439)",
		"COLOR			= D3DXCOLOR(0.1,0.1,0.1,1.0)",

	}

g_pStaticinfo_hp_add= g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticinfo_hp_add)
	g_pStaticinfo_hp_add:SetName( "g_pStaticinfo_hp_add" )

	g_pStaticinfo_hp_add:AddString
	{
		-- MSG 			= "+ 50000",
		 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(187,438)",
		"COLOR			= D3DXCOLOR(1.0,0.9,0.1,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}


----물공
	g_pStaticinfo_b_attack= g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticinfo_b_attack)
	g_pStaticinfo_b_attack:SetName( "g_pStaticinfo_p_attack" )

	g_pStaticinfo_b_attack:AddString
	{
		-- MSG 			= "1450000",
		 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,

 	 SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(171,463)",
		"COLOR			= D3DXCOLOR(0.1,0.1,0.1,1.0)",

	}


	g_pStaticinfo_b_attack_add= g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticinfo_b_attack_add)
	g_pStaticinfo_b_attack_add:SetName( "g_pStaticinfo_p_attack_add" )

	g_pStaticinfo_b_attack_add:AddString
	{
		-- MSG 			= "+ 50000",
		 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(187,462)",
		"COLOR			= D3DXCOLOR(1.0,0.9,0.1,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}

---마공

	g_pStaticinfo_m_attack= g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticinfo_m_attack)
	g_pStaticinfo_m_attack:SetName( "g_pStaticinfo_m_attack" )

	g_pStaticinfo_m_attack:AddString
	{
		-- MSG 			= "1450000",
		 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,

 	 SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(171,486)",
		"COLOR			= D3DXCOLOR(0.1,0.1,0.1,1.0)",

	}


		g_pStaticinfo_m_attack_add= g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticinfo_m_attack_add)
	g_pStaticinfo_m_attack_add:SetName( "g_pStaticinfo_m_attack_add" )

	g_pStaticinfo_m_attack_add:AddString
	{
		-- MSG 			= "+ 50000",
		 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(187,485)",
		"COLOR			= D3DXCOLOR(1.0,0.9,0.1,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}

---물방

	g_pStaticinfo_b_depense= g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticinfo_b_depense)
	g_pStaticinfo_b_depense:SetName( "g_pStaticinfo_p_defence" )

	g_pStaticinfo_b_depense:AddString
	{
		-- MSG 			= "1450000",
		 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,

 	 SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(171,509)",
		"COLOR			= D3DXCOLOR(0.1,0.1,0.1,1.0)",

	}


			g_pStaticinfo_b_depense_add= g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticinfo_b_depense_add)
	g_pStaticinfo_b_depense_add:SetName( "g_pStaticinfo_p_defence_add" )

	g_pStaticinfo_b_depense_add:AddString
	{
		-- MSG 			= "+ 50000",
		 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(187,508)",
		"COLOR			= D3DXCOLOR(1.0,0.9,0.1,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}


-----마방


	g_pStaticinfo_m_depense= g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticinfo_m_depense)
	g_pStaticinfo_m_depense:SetName( "g_pStaticinfo_m_defence" )

	g_pStaticinfo_m_depense:AddString
	{
		-- MSG 			= "1450000",
		 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,

 	 SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(171,533)",
		"COLOR			= D3DXCOLOR(0.1,0.1,0.1,1.0)",

	}



			g_pStaticinfo_m_depense_add= g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticinfo_m_depense_add)
	g_pStaticinfo_m_depense_add:SetName( "g_pStaticinfo_m_defence_add" )

	g_pStaticinfo_m_depense_add:AddString
	{
		-- MSG 			= "+ 50000",
		 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(187,532)",
		"COLOR			= D3DXCOLOR(1.0,0.9,0.1,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}


----불 속성


	g_pStaticInfo_fire= g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticInfo_fire)
	g_pStaticInfo_fire:SetName( "g_pStaticInfo_fire" )

	g_pStaticInfo_fire:AddString
	{
		-- MSG 			= "300",
		 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(414,433)",
		"COLOR			= D3DXCOLOR(0.1,1.8,0.1,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}

----물 속성


g_pStaticInfo_water= g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticInfo_water)
	g_pStaticInfo_water:SetName( "g_pStaticInfo_water" )

	g_pStaticInfo_water:AddString
	{
		-- MSG 			= "300",
		 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(414,453)",
		"COLOR			= D3DXCOLOR(0.1,1.8,0.1,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}

---자연


g_pStaticInfo_nature= g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticInfo_nature)
	g_pStaticInfo_nature:SetName( "g_pStaticInfo_nature" )

	g_pStaticInfo_nature:AddString
	{
		-- MSG 			= "300",
	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(414,474)",
		"COLOR			= D3DXCOLOR(0.1,1.8,0.1,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}

----바람

g_pStaticInfo_wind= g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticInfo_wind)
	g_pStaticInfo_wind:SetName( "g_pStaticInfo_wind" )

	g_pStaticInfo_wind:AddString
	{
		-- MSG 			= "300",
		 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(414,495)",
		"COLOR			= D3DXCOLOR(0.1,1.8,0.1,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}


---빛

g_pStaticInfo_light= g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticInfo_light)
	g_pStaticInfo_light:SetName( "g_pStaticInfo_light" )

	g_pStaticInfo_light:AddString
	{
		-- MSG 			= "300",
		 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(414,516)",
		"COLOR			= D3DXCOLOR(0.1,1.8,0.1,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}


----어둠


g_pStaticInfo_dark= g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticInfo_dark)
	g_pStaticInfo_dark:SetName( "g_pStaticInfo_dark" )

	g_pStaticInfo_dark:AddString
	{
		-- MSG 			= "300",
		 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(414,537)",
		"COLOR			= D3DXCOLOR(0.1,1.8,0.1,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}

---EXIT 버튼


g_pButton_exit = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_exit )
g_pButton_exit:SetName( "_exit" )
g_pButton_exit:SetNormalTex( "DLG_UI_Button01.tga", "exit_NORMAL" )

g_pButton_exit:SetOverTex( "DLG_UI_Button01.tga", "exit_OVER" )

g_pButton_exit:SetDownTex( "DLG_UI_Button01.tga", "exit_OVER" )

g_pButton_exit:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(411,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(407,11)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetDownPoint
{
     ADD_SIZE_X = -2 ,
	  ADD_SIZE_Y = -2 ,

 	"LEFT_TOP		= D3DXVECTOR2(407+1,11+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetCustomMsgMouseUp( CHARACTER_INFORMATION_MSG["CIM_EXIT"] )





-- 슬롯 정보

pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],

	SORT_TYPE	= SORT_TYPE["ST_E_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_DEFENCE_HAIR_FASHION"],

	FASHION		= TRUE,
	EQUIP_POS	= EQIP_POSITION["EP_DEFENCE_HAIR"],

	"POS		= D3DXVECTOR2( 22, 123)",
	"SIZE		= D3DXVECTOR2( 43, 43 )",

	SLOT_DESC	= STR_ID_959,
}


pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,
 
	SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],

	SORT_TYPE	= SORT_TYPE["ST_E_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_DEFENCE_BODY_FASHION"],

	FASHION		= TRUE,
	EQUIP_POS	= EQIP_POSITION["EP_DEFENCE_BODY"],

	"POS		= D3DXVECTOR2(22,167)",
	"SIZE		= D3DXVECTOR2( 43, 43  )",

	SLOT_DESC	= STR_ID_960,
}




pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],

	SORT_TYPE	= SORT_TYPE["ST_E_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_DEFENCE_LEG_FASHION"],

	FASHION		= TRUE,
	EQUIP_POS	= EQIP_POSITION["EP_DEFENCE_LEG"],

	"POS		= D3DXVECTOR2(22, 211)",
	"SIZE		= D3DXVECTOR2( 43, 43  )",

	SLOT_DESC	= STR_ID_961,
}




pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],

	SORT_TYPE	= SORT_TYPE["ST_E_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_DEFENCE_HAND_FASHION"],

	FASHION		= TRUE,
	EQUIP_POS	= EQIP_POSITION["EP_DEFENCE_HAND"],

	"POS		= D3DXVECTOR2(22, 255)",
	"SIZE		= D3DXVECTOR2( 43, 43  )",

	SLOT_DESC	= STR_ID_962,
}






pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],

	SORT_TYPE	= SORT_TYPE["ST_E_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_DEFENCE_FOOT_FASHION"],

	FASHION		= TRUE,
	EQUIP_POS	= EQIP_POSITION["EP_DEFENCE_FOOT"],

	"POS		= D3DXVECTOR2(22, 299 )",
	"SIZE		= D3DXVECTOR2( 43, 43 )",

	SLOT_DESC	= STR_ID_963,
}






pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],

	SORT_TYPE	= SORT_TYPE["ST_E_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_WEAPON_HAND_FASHION"],

	FASHION		= TRUE,
	EQUIP_POS	= EQIP_POSITION["EP_WEAPON_HAND"],

	"POS		= D3DXVECTOR2(342, 113)",
	"SIZE		= D3DXVECTOR2( 43, 43  )",

	SLOT_DESC	= STR_ID_965,
}


pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],

	SORT_TYPE	= SORT_TYPE["ST_E_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_AC_WEAPON"],

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_AC_WEAPON"],

	"POS		= D3DXVECTOR2(309, 113)",
	"SIZE		= D3DXVECTOR2( 32, 32  )",

	SLOT_DESC	= STR_ID_1165,
}


pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],

	SORT_TYPE	= SORT_TYPE["ST_E_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_DEFENCE_BODY"],

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_DEFENCE_BODY"],

	"POS		= D3DXVECTOR2(66, 167)",
	"SIZE		= D3DXVECTOR2( 43, 43  )",

	SLOT_DESC	= STR_ID_1161,
}

pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],

	SORT_TYPE	= SORT_TYPE["ST_E_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_DEFENCE_LEG"],

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_DEFENCE_LEG"],

	"POS		= D3DXVECTOR2(66, 211)",
	"SIZE		= D3DXVECTOR2( 43, 43  )",

	SLOT_DESC	= STR_ID_1162,
}





pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],

	SORT_TYPE	= SORT_TYPE["ST_E_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_DEFENCE_HAND"],

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_DEFENCE_HAND"],

	"POS		= D3DXVECTOR2(66, 255)",
	"SIZE		= D3DXVECTOR2( 43, 43 )",

	SLOT_DESC	= STR_ID_1163,
}




pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],

	SORT_TYPE	= SORT_TYPE["ST_E_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_DEFENCE_FOOT"],

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_DEFENCE_FOOT"],

	"POS		= D3DXVECTOR2(66, 299 )",
	"SIZE		= D3DXVECTOR2( 43, 43 )",

	SLOT_DESC	= STR_ID_1164,
}




pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],

	SORT_TYPE	= SORT_TYPE["ST_E_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_WEAPON_HAND"],

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_WEAPON_HAND"],

	"POS		= D3DXVECTOR2( 386, 113 )",
	"SIZE		= D3DXVECTOR2( 43, 43  )",

	SLOT_DESC	= STR_ID_1166,
}


--- 악세

-- 머리
pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],

	SORT_TYPE	= SORT_TYPE["ST_E_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_AC_FACE1"],

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_AC_FACE1"],

	"POS		= D3DXVECTOR2(342,167)",
	"SIZE		= D3DXVECTOR2( 43, 43  )",

	SLOT_DESC	= STR_ID_966,
}


-- 안경
pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],

	SORT_TYPE	= SORT_TYPE["ST_E_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_AC_FACE2"],

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_AC_FACE2"],

	"POS		= D3DXVECTOR2(342, 211)",
	"SIZE		= D3DXVECTOR2( 43, 43 )",

	SLOT_DESC	= STR_ID_968,
}
-- 가면(-_-)
pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],

	SORT_TYPE	= SORT_TYPE["ST_E_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_AC_FACE3"],

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_AC_FACE3"],

	"POS		= D3DXVECTOR2(342, 255)",
	"SIZE		= D3DXVECTOR2( 43, 43  )",

	SLOT_DESC	= STR_ID_970,
}


-- 반지
pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],

	SORT_TYPE	= SORT_TYPE["ST_E_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_AC_RING"],

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_AC_RING"],


	"POS		= D3DXVECTOR2(342, 299)",
	"SIZE		= D3DXVECTOR2( 43, 43  )",

	SLOT_DESC	= STR_ID_972,
}


-- 옷
pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],

	SORT_TYPE	= SORT_TYPE["ST_E_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_AC_BODY"],

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_AC_BODY"],

	"POS		= D3DXVECTOR2(386, 167)",
	"SIZE		= D3DXVECTOR2( 43, 43 )",

	SLOT_DESC	= STR_ID_967,
}


-- 바지
pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],

	SORT_TYPE	= SORT_TYPE["ST_E_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_AC_LEG"],

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_AC_LEG"],

	"POS		= D3DXVECTOR2(386, 211)",
	"SIZE		= D3DXVECTOR2( 43, 43 )",

	SLOT_DESC	= STR_ID_969,
}



-- 팔
pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

	SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],

	SORT_TYPE	= SORT_TYPE["ST_E_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_AC_ARM"],

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_AC_ARM"],

	"POS		= D3DXVECTOR2(386, 255)",
	"SIZE		= D3DXVECTOR2( 43, 43 )",

	SLOT_DESC	= STR_ID_971,
}

-- 목걸이
pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,



	SLOT_TYPE	= SLOT_TYPE["ST_EQUIPPED"],

	SORT_TYPE	= SORT_TYPE["ST_E_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_AC_NECKLESS"],

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_AC_NECKLESS"],

	"POS		= D3DXVECTOR2(386, 299)",
	"SIZE		= D3DXVECTOR2( 43, 43 )",

	SLOT_DESC	= STR_ID_973,
}



------------------------------    부가능력 STATE    ------------------------------
-------------크리티컬
g_pPicturecri = g_pUIDialog:CreatePicture()
g_pStaticInfo:AddPicture( g_pPicturecri )

g_pPicturecri:SetTex( "DLG_UI_Common_Texture02.TGA", "critical" )

g_pPicturecri:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(18,566)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_cri = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_cri )
g_pStatic_cri:SetName( "Static_Critical" )

g_pStatic_cri:AddString
{
	-- MSG 			= "＋50%",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(47,573)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}








--------------속도

g_pPictureavoid = g_pUIDialog:CreatePicture()
g_pStaticInfo:AddPicture( g_pPictureavoid )

g_pPictureavoid:SetTex( "DLG_UI_Common_Texture02.TGA", "moving" )

g_pPictureavoid:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(87,566)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStatic_avoid = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_avoid )
g_pStatic_avoid:SetName( "Static_SpeedAll" )

g_pStatic_avoid:AddString
{
	-- MSG 			= "＋50%",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(116,573)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}






--------------회피

g_pPicturedex = g_pUIDialog:CreatePicture()
g_pStaticInfo:AddPicture( g_pPicturedex )

g_pPicturedex:SetTex( "DLG_UI_Common_Texture02.TGA", "avoid" )

g_pPicturedex:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(158,566)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pStatic_dex = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_dex )
g_pStatic_dex:SetName( "Static_Evade" )

g_pStatic_dex:AddString
{
	-- MSG 			= "＋50%",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(187,573)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}




--------------명중

g_pPicturespeed = g_pUIDialog:CreatePicture()
g_pStaticInfo:AddPicture( g_pPicturespeed )

g_pPicturespeed:SetTex( "DLG_UI_Common_Texture02.TGA", "dex" )

g_pPicturespeed:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(227,566)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_speed = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_speed )
g_pStatic_speed:SetName( "Static_Accuracy" )

g_pStatic_speed:AddString
{
	-- MSG 			= "＋50%",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(255,573)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



--------------이속

g_pPicturemove = g_pUIDialog:CreatePicture()
g_pStaticInfo:AddPicture( g_pPicturemove )

g_pPicturemove:SetTex( "DLG_UI_Common_Texture02.TGA", "speed" )

g_pPicturemove:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(297,566)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
 

g_pStatic_move = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_move )
g_pStatic_move:SetName( "Static_SpeedMove" )

g_pStatic_move:AddString
{
	-- MSG 			= "＋50%",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(326,573)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}




--------------점프

g_pPicturejump = g_pUIDialog:CreatePicture()
g_pStaticInfo:AddPicture( g_pPicturejump )

g_pPicturejump:SetTex( "DLG_UI_Common_Texture02.TGA", "jump" )

g_pPicturejump:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(367,566)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
 

g_pStatic_jump = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_jump )
g_pStatic_jump:SetName( "Static_Jump" )

g_pStatic_jump:AddString
{
	-- MSG 			= "＋50%",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(395,573)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}




----------------------------------------------------------
----------------------  투명버튼-------------------------
----------------------------------------------------------

 

g_pButton_opacity1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_opacity1 )
g_pButton_opacity1:SetName( "opacity1" )
g_pButton_opacity1:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_opacity1:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_opacity1:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_opacity1:SetNormalPoint
{

     ADD_SIZE_X = 27,
	 ADD_SIZE_Y = 26,
	 
 	"LEFT_TOP		= D3DXVECTOR2(18,566)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_opacity1:SetOverPoint
{
     ADD_SIZE_X = 27,
	 ADD_SIZE_Y = 26,

	"LEFT_TOP		= D3DXVECTOR2(18,566)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_opacity1:SetDownPoint
{
     ADD_SIZE_X = 27-2 ,
	  ADD_SIZE_Y = 26-2 ,

 	"LEFT_TOP		= D3DXVECTOR2(18+1,566+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_opacity1:SetGuideDesc( STR_ID_2718 )
g_pButton_opacity1:ChangeMouseUpSound_LUA( "" )
g_pButton_opacity1:ChangeMouseOverSound_LUA( "" )




g_pButton_opacity2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_opacity2 )
g_pButton_opacity2:SetName( "opacity2" )
g_pButton_opacity2:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_opacity2:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_opacity2:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_opacity2:SetNormalPoint
{

     ADD_SIZE_X = 27,
	 ADD_SIZE_Y = 26,
	 
 	"LEFT_TOP		= D3DXVECTOR2(87,566)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_opacity2:SetOverPoint
{
     ADD_SIZE_X = 27,
	 ADD_SIZE_Y = 26,

	"LEFT_TOP		= D3DXVECTOR2(87,566)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_opacity2:SetDownPoint
{
     ADD_SIZE_X = 27-2 ,
	  ADD_SIZE_Y = 26-2 ,

 	"LEFT_TOP		= D3DXVECTOR2(87+1,566+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--g_pButton_opacity2:SetCustomMsgMouseUp( CHARACTER_INFORMATION_MSG["CIM_EXIT"] )
g_pButton_opacity2:SetGuideDesc( STR_ID_2719 )
g_pButton_opacity2:ChangeMouseUpSound_LUA( "" )
g_pButton_opacity2:ChangeMouseOverSound_LUA( "" )




g_pButton_opacity3 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_opacity3 )
g_pButton_opacity3:SetName( "opacity3" )
g_pButton_opacity3:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_opacity3:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_opacity3:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_opacity3:SetNormalPoint
{

     ADD_SIZE_X = 27,
	 ADD_SIZE_Y = 26,
	 
 	"LEFT_TOP		= D3DXVECTOR2(158,566)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_opacity3:SetOverPoint
{
     ADD_SIZE_X = 27,
	 ADD_SIZE_Y = 26,

	"LEFT_TOP		= D3DXVECTOR2(158,566)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_opacity3:SetDownPoint
{
     ADD_SIZE_X = 27-2 ,
	  ADD_SIZE_Y = 26-2 ,

 	"LEFT_TOP		= D3DXVECTOR2(158+1,566+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--g_pButton_opacity3:SetCustomMsgMouseUp( CHARACTER_INFORMATION_MSG["CIM_EXIT"] )
g_pButton_opacity3:SetGuideDesc( STR_ID_2720 )
g_pButton_opacity3:ChangeMouseUpSound_LUA( "" )
g_pButton_opacity3:ChangeMouseOverSound_LUA( "" )





g_pButton_opacity4 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_opacity4 )
g_pButton_opacity4:SetName( "opacity4" )
g_pButton_opacity4:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_opacity4:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_opacity4:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_opacity4:SetNormalPoint
{

     ADD_SIZE_X = 27,
	 ADD_SIZE_Y = 26,
	 
 	"LEFT_TOP		= D3DXVECTOR2(227,566)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_opacity4:SetOverPoint
{
     ADD_SIZE_X = 27,
	 ADD_SIZE_Y = 26,

	"LEFT_TOP		= D3DXVECTOR2(227,566)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_opacity4:SetDownPoint
{
     ADD_SIZE_X = 27-2 ,
	  ADD_SIZE_Y = 26-2 ,

 	"LEFT_TOP		= D3DXVECTOR2(227+1,566+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--g_pButton_opacity4:SetCustomMsgMouseUp( CHARACTER_INFORMATION_MSG["CIM_EXIT"] )
g_pButton_opacity4:SetGuideDesc( STR_ID_2721 )
g_pButton_opacity4:ChangeMouseUpSound_LUA( "" )
g_pButton_opacity4:ChangeMouseOverSound_LUA( "" )




g_pButton_opacity5 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_opacity5 )
g_pButton_opacity5:SetName( "opacity5" )
g_pButton_opacity5:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_opacity5:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_opacity5:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_opacity5:SetNormalPoint
{

     ADD_SIZE_X = 27,
	 ADD_SIZE_Y = 26,
	 
 	"LEFT_TOP		= D3DXVECTOR2(297,566)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_opacity5:SetOverPoint
{
     ADD_SIZE_X = 27,
	 ADD_SIZE_Y = 26,

	"LEFT_TOP		= D3DXVECTOR2(297,566)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_opacity5:SetDownPoint
{
     ADD_SIZE_X = 27-2 ,
	  ADD_SIZE_Y = 26-2 ,

 	"LEFT_TOP		= D3DXVECTOR2(297+1,566+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--g_pButton_opacity5:SetCustomMsgMouseUp( CHARACTER_INFORMATION_MSG["CIM_EXIT"] )
g_pButton_opacity5:SetGuideDesc( STR_ID_2722 )
g_pButton_opacity5:ChangeMouseUpSound_LUA( "" )
g_pButton_opacity5:ChangeMouseOverSound_LUA( "" )




g_pButton_opacity6 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_opacity6 )
g_pButton_opacity6:SetName( "opacity6" )
g_pButton_opacity6:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_opacity6:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_opacity6:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_opacity6:SetNormalPoint
{

     ADD_SIZE_X = 27,
	 ADD_SIZE_Y = 26,
	 
 	"LEFT_TOP		= D3DXVECTOR2(367,566)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_opacity6:SetOverPoint
{
     ADD_SIZE_X = 27,
	 ADD_SIZE_Y = 26,

	"LEFT_TOP		= D3DXVECTOR2(367,566)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_opacity6:SetDownPoint
{                                           
     ADD_SIZE_X = 27-2 ,
	  ADD_SIZE_Y = 26-2 ,

 	"LEFT_TOP		= D3DXVECTOR2(367+1,566+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--g_pButton_opacity6:SetCustomMsgMouseUp( CHARACTER_INFORMATION_MSG["CIM_EXIT"] )
g_pButton_opacity6:SetGuideDesc( STR_ID_2723 )
g_pButton_opacity6:ChangeMouseUpSound_LUA( "" )
g_pButton_opacity6:ChangeMouseOverSound_LUA( "" )



g_pButton_Phydef = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Phydef )
g_pButton_Phydef:SetName( "Button_Phydef" )
g_pButton_Phydef:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Phydef:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Phydef:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Phydef:SetNormalPoint
{

     ADD_SIZE_X = 116,
	 ADD_SIZE_Y = 21,
	 
 	"LEFT_TOP		= D3DXVECTOR2(140,507)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Phydef:SetOverPoint
{
     ADD_SIZE_X = 116,
	 ADD_SIZE_Y = 21,

	"LEFT_TOP		= D3DXVECTOR2(140,507)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Phydef:SetDownPoint
{                                           
     ADD_SIZE_X = 116,
	 ADD_SIZE_Y = 21,

 	"LEFT_TOP		= D3DXVECTOR2(140,507)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Phydef:ChangeMouseUpSound_LUA( "" )
g_pButton_Phydef:ChangeMouseOverSound_LUA( "" )


g_pButton_Magdef = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Magdef )
g_pButton_Magdef:SetName( "Button_Magdef" )
g_pButton_Magdef:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Magdef:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Magdef:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Magdef:SetNormalPoint
{

     ADD_SIZE_X = 116,
	 ADD_SIZE_Y = 21,
	 
 	"LEFT_TOP		= D3DXVECTOR2(140,530)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Magdef:SetOverPoint
{
     ADD_SIZE_X = 116,
	 ADD_SIZE_Y = 21,

	"LEFT_TOP		= D3DXVECTOR2(140,530)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Magdef:SetDownPoint
{                                           
     ADD_SIZE_X = 116,
	 ADD_SIZE_Y = 21,

 	"LEFT_TOP		= D3DXVECTOR2(140,530)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Magdef:ChangeMouseUpSound_LUA( "" )
g_pButton_Magdef:ChangeMouseOverSound_LUA( "" )
