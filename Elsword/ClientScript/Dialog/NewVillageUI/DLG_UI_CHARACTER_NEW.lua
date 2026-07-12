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
    ADD_SIZE_Y = 535+31-26,
	"LEFT_TOP		= D3DXVECTOR2(0,19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureInfo_BG3 = g_pUIDialog:CreatePicture()
g_pStaticInfo:AddPicture( g_pPictureInfo_BG3 )

g_pPictureInfo_BG3:SetTex( "DLG_UI_Common_Texture01.TGA", "BG_BOTTOM" )

g_pPictureInfo_BG3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,560+31-26)",
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
     ADD_SIZE_Y = 12,
	"LEFT_TOP		= D3DXVECTOR2(14,370)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInfo_BG9 = g_pUIDialog:CreatePicture() 
g_pStaticInfo:AddPicture( g_pPictureInfo_BG9 )

g_pPictureInfo_BG9:SetTex( "DLG_UI_Common_Texture01.TGA", "WIN_INFO_BOTTOM" )

g_pPictureInfo_BG9:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(14,410-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----------HP/물공/마공/물방/마방 BG
g_pPictureInfo_BG10 = g_pUIDialog:CreatePicture() 
g_pStaticInfo:AddPicture( g_pPictureInfo_BG10 )

g_pPictureInfo_BG10:SetTex( "DLG_UI_Common_Texture01.TGA", "MESSAGE_BG2_LEFT" )

g_pPictureInfo_BG10:SetPoint
{
     ADD_SIZE_Y = -23 ,
	"LEFT_TOP		= D3DXVECTOR2(14,423-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

	}


g_pPictureInfo_BG11 = g_pUIDialog:CreatePicture() 
g_pStaticInfo:AddPicture( g_pPictureInfo_BG11 )

g_pPictureInfo_BG11:SetTex( "DLG_UI_Common_Texture01.TGA", "MESSAGE_BG2_MIDDLE" )

g_pPictureInfo_BG11:SetPoint
{ 

	 ADD_SIZE_Y = -23 ,
	 ADD_SIZE_X = 115 ,
	"LEFT_TOP		= D3DXVECTOR2(24,423-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}
	
	
g_pPictureInfo_BG12 = g_pUIDialog:CreatePicture() 
g_pStaticInfo:AddPicture( g_pPictureInfo_BG12 )

g_pPictureInfo_BG12:SetTex( "DLG_UI_Common_Texture01.TGA", "MESSAGE_BG2_RIGHT" )

g_pPictureInfo_BG12:SetPoint
{
     ADD_SIZE_Y = -23 ,
	"LEFT_TOP		= D3DXVECTOR2(140,423-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}
--------------	
----------크리티컬/추데/명중/각충/각지/회피/데감/속도/이속/점속_BG
g_pPictureInfo_BG10_1 = g_pUIDialog:CreatePicture() 
g_pStaticInfo:AddPicture( g_pPictureInfo_BG10_1 )

g_pPictureInfo_BG10_1:SetTex( "DLG_UI_Common_Texture01.TGA", "MESSAGE_BG2_LEFT" )

g_pPictureInfo_BG10_1:SetPoint
{
     ADD_SIZE_Y = -23 ,
	"LEFT_TOP		= D3DXVECTOR2(154,423-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

	}


g_pPictureInfo_BG11_1 = g_pUIDialog:CreatePicture() 
g_pStaticInfo:AddPicture( g_pPictureInfo_BG11_1 )

g_pPictureInfo_BG11_1:SetTex( "DLG_UI_Common_Texture01.TGA", "MESSAGE_BG2_MIDDLE" )

g_pPictureInfo_BG11_1:SetPoint
{ 

	 ADD_SIZE_Y = -23 ,
	 ADD_SIZE_X = 262 ,
	"LEFT_TOP		= D3DXVECTOR2(164,423-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}
	
	
g_pPictureInfo_BG12_1 = g_pUIDialog:CreatePicture() 
g_pStaticInfo:AddPicture( g_pPictureInfo_BG12_1 )

g_pPictureInfo_BG12_1:SetTex( "DLG_UI_Common_Texture01.TGA", "MESSAGE_BG2_RIGHT" )

g_pPictureInfo_BG12_1:SetPoint
{
     ADD_SIZE_Y = -23 ,
	"LEFT_TOP		= D3DXVECTOR2(427,423-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}
--------------	


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







-------------속성 BG	
g_pPictureAddition_BG16 = g_pUIDialog:CreatePicture() 
g_pStaticInfo:AddPicture( g_pPictureAddition_BG16 )

g_pPictureAddition_BG16:SetTex( "DLG_UI_Common_Texture01.TGA", "WIN_INFO_TOP" )

g_pPictureAddition_BG16:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(14,563-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

	}

g_pPictureAddition_BG17 = g_pUIDialog:CreatePicture() 
g_pStaticInfo:AddPicture( g_pPictureAddition_BG17 )

g_pPictureAddition_BG17:SetTex( "DLG_UI_Common_Texture01.TGA", "WIN_INFO_MIDDLE" )

g_pPictureAddition_BG17:SetPoint
{
     ADD_SIZE_Y = 10 ,
	"LEFT_TOP		= D3DXVECTOR2(14,573-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}
	
	
g_pPictureAddition_BG18 = g_pUIDialog:CreatePicture() 
g_pStaticInfo:AddPicture( g_pPictureAddition_BG18 )

g_pPictureAddition_BG18:SetTex( "DLG_UI_Common_Texture01.TGA", "WIN_INFO_BOTTOM" )

g_pPictureAddition_BG18:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(14,585-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}
	







	
---------BAR

g_pPictureInfo_BG17 = g_pUIDialog:CreatePicture() 
g_pStaticInfo:AddPicture( g_pPictureInfo_BG17 )

g_pPictureInfo_BG17:SetTex( "DLG_UI_Common_Texture01.TGA", "BAR2" )

g_pPictureInfo_BG17:SetPoint
{
   ADD_SIZE_Y = 126,
	"LEFT_TOP		= D3DXVECTOR2(295,427-26)",
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

    ADD_SIZE_X=-3,
 	"LEFT_TOP		= D3DXVECTOR2(285+10+5,392-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_title:SetOverPoint
{
     ADD_SIZE_X=-3,     
	"LEFT_TOP		= D3DXVECTOR2(285+10+5,392-26)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_title:SetDownPoint
{
     ADD_SIZE_X = -5 ,
	  ADD_SIZE_Y = -2 ,
	 
 	"LEFT_TOP		= D3DXVECTOR2(285-2+3+10+5,392-1+2-26)",
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
   
	"LEFT_TOP		= D3DXVECTOR2(248+8+8+8,397-27)",
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

------------NEW 통산전적
g_pPictureText_total_rank = g_pUIDialog:CreatePicture() 
g_pStaticText:AddPicture( g_pPictureText_total_rank )
g_pPictureText_total_rank:SetTex( "DLG_UI_Title03.TGA", "TOTAL_score" )
g_pPictureText_total_rank:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(17,369)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-----NEW랭킹점수
g_pPictureText_vp= g_pUIDialog:CreatePicture()
g_pStaticText:AddPicture( g_pPictureText_vp)
g_pPictureText_vp:SetTex( "DLG_UI_Title03.TGA", "RANKING_SCORE" )
g_pPictureText_vp:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(259-3-120,369)",
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

 	"LEFT_TOP		= D3DXVECTOR2(259-3-58,366)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


---넥슨케시

g_pPictureText_cash= g_pUIDialog:CreatePicture()
g_pStaticText:AddPicture( g_pPictureText_cash)

g_pPictureText_cash:SetTex( "DLG_UI_Title01_A.TGA", "cash" )

g_pPictureText_cash:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(227+5,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--------------HP/물공/마공/물방/마방 하얀색 글씨
---------------hp
g_pPictureText_hp= g_pUIDialog:CreatePicture()
g_pStaticText:AddPicture( g_pPictureText_hp)

g_pPictureText_hp:SetTex( "DLG_UI_Title01.TGA", "hp" )

g_pPictureText_hp:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(26-4,438-7-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------------------물공
g_pPictureText_p_attack= g_pUIDialog:CreatePicture()
g_pStaticText:AddPicture( g_pPictureText_p_attack)

g_pPictureText_p_attack:SetTex( "DLG_UI_Title01.TGA", "p_attack" )

g_pPictureText_p_attack:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(25-4,460-6-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-------------마공
g_pPictureText_m_attack= g_pUIDialog:CreatePicture()
g_pStaticText:AddPicture( g_pPictureText_m_attack)

g_pPictureText_m_attack:SetTex( "DLG_UI_Title01.TGA", "m_attack" )

g_pPictureText_m_attack:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(25-4,484-3-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

------물방
g_pPictureText_p_depense= g_pUIDialog:CreatePicture()
g_pStaticText:AddPicture( g_pPictureText_p_depense)

g_pPictureText_p_depense:SetTex( "DLG_UI_Title01.TGA", "p_depense" )

g_pPictureText_p_depense:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(25-4,507+1-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

------- 물방 버튼 (툴팁용)
g_pButtonPhysicDefence = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonPhysicDefence )
g_pButtonPhysicDefence:SetName( "Button_PhysicDefence" )
g_pButtonPhysicDefence:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonPhysicDefence:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonPhysicDefence:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonPhysicDefence:SetNormalPoint
{

     ADD_SIZE_X = 125,
	 ADD_SIZE_Y = 20,
	 
 	"LEFT_TOP		= D3DXVECTOR2(18,507-2-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPhysicDefence:SetOverPoint
{
     ADD_SIZE_X = 125,
	 ADD_SIZE_Y = 20,

	"LEFT_TOP		= D3DXVECTOR2(18,507-2-26)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPhysicDefence:SetDownPoint
{
     ADD_SIZE_X = 125 ,
	  ADD_SIZE_Y = 20 ,

 	"LEFT_TOP		= D3DXVECTOR2(18,507-2-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPhysicDefence:SetGuideDesc( STR_ID_2718 )
g_pButtonPhysicDefence:ChangeMouseUpSound_LUA( "" )
g_pButtonPhysicDefence:ChangeMouseOverSound_LUA( "" )
-------마방
g_pPictureText_m_depense= g_pUIDialog:CreatePicture()
g_pStaticText:AddPicture( g_pPictureText_m_depense)

g_pPictureText_m_depense:SetTex( "DLG_UI_Title01_A.TGA", "m_depense" )

g_pPictureText_m_depense:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(25-4,531+3-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

------- 마방 버튼 (툴팁용)
g_pButtonMagicDefence = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonMagicDefence )
g_pButtonMagicDefence:SetName( "Button_MagicDefence" )
g_pButtonMagicDefence:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonMagicDefence:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonMagicDefence:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonMagicDefence:SetNormalPoint
{

     ADD_SIZE_X = 125,
	 ADD_SIZE_Y = 20,
	 
 	"LEFT_TOP		= D3DXVECTOR2(18,531-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMagicDefence:SetOverPoint
{
     ADD_SIZE_X = 125,
	 ADD_SIZE_Y = 20,

	"LEFT_TOP		= D3DXVECTOR2(18,531-26)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMagicDefence:SetDownPoint
{
     ADD_SIZE_X = 125 ,
	  ADD_SIZE_Y = 20 ,

 	"LEFT_TOP		= D3DXVECTOR2(18,531-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonMagicDefence:SetGuideDesc( STR_ID_2718 )
g_pButtonMagicDefence:ChangeMouseUpSound_LUA( "" )
g_pButtonMagicDefence:ChangeMouseOverSound_LUA( "" )

----------------

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

	"LEFT_TOP		= D3DXVECTOR2(19,568-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureAti_water = g_pUIDialog:CreatePicture()
g_pStaticAti:AddPicture( g_pPictureAti_water )

g_pPictureAti_water:SetTex( "DLG_UI_Common_Texture02.TGA", "WATER_MARK" )

g_pPictureAti_water:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(88,568-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureAti_nature = g_pUIDialog:CreatePicture()
g_pStaticAti:AddPicture( g_pPictureAti_nature )

g_pPictureAti_nature:SetTex( "DLG_UI_Common_Texture02.TGA", "nature_MARK" )

g_pPictureAti_nature:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(159,568-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureAti_wind = g_pUIDialog:CreatePicture()
g_pStaticAti:AddPicture( g_pPictureAti_wind )

g_pPictureAti_wind:SetTex( "DLG_UI_Common_Texture02.TGA", "wind_MARK" )

g_pPictureAti_wind:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(228,568-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureAti_light = g_pUIDialog:CreatePicture()
g_pStaticAti:AddPicture( g_pPictureAti_light )

g_pPictureAti_light:SetTex( "DLG_UI_Common_Texture02.TGA", "light_MARK" )

g_pPictureAti_light:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(298,568-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureAti_dark = g_pUIDialog:CreatePicture()
g_pStaticAti:AddPicture( g_pPictureAti_dark )

g_pPictureAti_dark:SetTex( "DLG_UI_Common_Texture02.TGA", "dark_MARK" )

g_pPictureAti_dark:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(367,568-26)",
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

----아이템 평균 레벨
g_pStaticInfo_AverageItemLevel = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticInfo_AverageItemLevel )
g_pStaticInfo_AverageItemLevel:SetName( "Static_AverageItemLevel" )

g_pStaticInfo_AverageItemLevel:AddString
{
	-- MSG 			= "닉넴은여섯자",
	FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(415,95)",
	"COLOR			= D3DXCOLOR(1.0,0.9,0.1,1.0)",
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
		"POS 			= D3DXVECTOR2(351+14,397-26)",
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
		--MSG 			= "99999승",
		 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,

 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(78,371)",
		"COLOR			= D3DXCOLOR(0.1,0.1,0.1,1.0)",

	}

---랭킹 점수
	g_pStaticInfo_PVP_SCORE= g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticInfo_PVP_SCORE )
	g_pStaticInfo_PVP_SCORE:SetName( "g_pStaticInfo_PVP_SCORE" )

	g_pStaticInfo_PVP_SCORE:AddString
	{
		--MSG 			= "99,999",
		 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,

 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(78+150,371)",
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
	
---------------	hp/물공/마공/물방/마방 스트링
----HP
	g_pStaticinfo_hp= g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticinfo_hp)
	g_pStaticinfo_hp:SetName( "g_pStaticinfo_hp" )

	g_pStaticinfo_hp:AddString
	{
		--MSG 			= "99999",
		 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
      FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(171-38-3,439-7-26)",
		"COLOR			= D3DXCOLOR(1.0,0.9,0.1,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",

	}

----물공
	g_pStaticinfo_b_attack= g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticinfo_b_attack)
	g_pStaticinfo_b_attack:SetName( "g_pStaticinfo_p_attack" )

	g_pStaticinfo_b_attack:AddString
	{
		--MSG 			= "99999",
		 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
      FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(171-38-3,463-7-26)",
		"COLOR			= D3DXCOLOR(1.0,0.9,0.1,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",

	}


---마공
	g_pStaticinfo_m_attack= g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticinfo_m_attack)
	g_pStaticinfo_m_attack:SetName( "g_pStaticinfo_m_attack" )

	g_pStaticinfo_m_attack:AddString
	{
		 --MSG 			= "99999",
		 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
     FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(171-38-3,486-3-26)",
		"COLOR			= D3DXCOLOR(1.0,0.9,0.1,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",

	}


---물방
	g_pStaticinfo_b_depense= g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticinfo_b_depense)
	g_pStaticinfo_b_depense:SetName( "g_pStaticinfo_p_defence" )

	g_pStaticinfo_b_depense:AddString
	{
		 --MSG 			= "99999",
		 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
     FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(171-38-3,509-26)",
		"COLOR			= D3DXCOLOR(1.0,0.9,0.1,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",

	}



-----마방
	g_pStaticinfo_m_depense= g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticinfo_m_depense)
	g_pStaticinfo_m_depense:SetName( "g_pStaticinfo_m_defence" )
     
	g_pStaticinfo_m_depense:AddString
	{
		 --MSG 			= "99999",
		 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
     FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(171-38-3,533+3-26)",
		"COLOR			= D3DXCOLOR(1.0,0.9,0.1,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",

	}



--------------------자연속성 저항 스트링	
----불 속성
	g_pStaticInfo_fire= g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticInfo_fire)
	g_pStaticInfo_fire:SetName( "g_pStaticInfo_fire" )

	g_pStaticInfo_fire:AddString
	{
		 MSG 			= "+50%",
		 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	 --FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(18+38,571-26)",
		"COLOR			= D3DXCOLOR(0.1,0.1,0.1,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}

----물 속성
g_pStaticInfo_water= g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticInfo_water)
	g_pStaticInfo_water:SetName( "g_pStaticInfo_water" )

	g_pStaticInfo_water:AddString
	{
		 MSG 			= "+50%",
		 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	 --FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(87+37,571-26)",
		"COLOR			= D3DXCOLOR(0.1,0.1,0.1,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}

---자연
g_pStaticInfo_nature= g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticInfo_nature)
	g_pStaticInfo_nature:SetName( "g_pStaticInfo_nature" )

	g_pStaticInfo_nature:AddString
	{
		 MSG 			= "+50%",
	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	 --FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(158+37,571-26)",
		"COLOR			= D3DXCOLOR(0.1,0.1,0.1,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}

----바람
g_pStaticInfo_wind= g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticInfo_wind)
	g_pStaticInfo_wind:SetName( "g_pStaticInfo_wind" )

	g_pStaticInfo_wind:AddString
	{
		 MSG 			= "+50%",
		 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	 --FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(227+37,571-26)",
		"COLOR			= D3DXCOLOR(0.1,0.1,0.1,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}


---빛
g_pStaticInfo_light= g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticInfo_light)
	g_pStaticInfo_light:SetName( "g_pStaticInfo_light" )

	g_pStaticInfo_light:AddString
	{
		MSG 			= "+50%",
		 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	 --FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(297+37,571-26)",
		"COLOR			= D3DXCOLOR(0.1,0.1,0.1,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}


----어둠
g_pStaticInfo_dark= g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticInfo_dark)
	g_pStaticInfo_dark:SetName( "g_pStaticInfo_dark" )

	g_pStaticInfo_dark:AddString
	{
		MSG 			= "+50%",
		 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	 --FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(367+37,571-26)",
		"COLOR			= D3DXCOLOR(0.1,0.1,0.1,1.0)",
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
g_pStaticInfo2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticInfo2 )
g_pStaticInfo2:SetName( "g_pStaticInfo2" )

-------------크리티컬
g_pPicturecri = g_pUIDialog:CreatePicture()
g_pStaticInfo2:AddPicture( g_pPicturecri )

g_pPicturecri:SetTex( "DLG_UI_Title03.TGA", "critical" )

g_pPicturecri:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(162,438-7-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_cri = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_cri )
g_pStatic_cri:SetName( "Static_Critical" )

g_pStatic_cri:AddString
{
	 --MSG 			= "99999",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(158+116,439-7-26)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pButton_Critical = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Critical )
g_pButton_Critical:SetName( "Button_Critical" )
g_pButton_Critical:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Critical:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Critical:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Critical:SetNormalPoint
{

     ADD_SIZE_X = 125,
	 ADD_SIZE_Y = 20,
	 
 	"LEFT_TOP		= D3DXVECTOR2(162,438-10-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Critical:SetOverPoint
{
     ADD_SIZE_X = 125,
	 ADD_SIZE_Y = 20,

	"LEFT_TOP		= D3DXVECTOR2(162,438-10-26)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Critical:SetDownPoint
{
     ADD_SIZE_X = 125 ,
	  ADD_SIZE_Y = 20 ,

 	"LEFT_TOP		= D3DXVECTOR2(162,438-10-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Critical:SetGuideDesc( STR_ID_2718 )
g_pButton_Critical:ChangeMouseUpSound_LUA( "" )
g_pButton_Critical:ChangeMouseOverSound_LUA( "" )

--------------추가데미지
g_pPictureadd= g_pUIDialog:CreatePicture()
g_pStaticInfo2:AddPicture( g_pPictureadd )

g_pPictureadd:SetTex( "DLG_UI_Title03.TGA", "add" )

g_pPictureadd:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(162,460-6-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStatic_add = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_add )
g_pStatic_add:SetName( "Static_Add" )

g_pStatic_add:AddString
{
	--MSG 			= "99999",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(158+116,463-7-26)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pButton_Add = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Add )
g_pButton_Add:SetName( "Button_Add" )
g_pButton_Add:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Add:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Add:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Add:SetNormalPoint
{

     ADD_SIZE_X = 125,
	 ADD_SIZE_Y = 20,
	 
 	"LEFT_TOP		= D3DXVECTOR2(162,460-9-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Add:SetOverPoint
{
     ADD_SIZE_X = 125,
	 ADD_SIZE_Y = 20,

	"LEFT_TOP		= D3DXVECTOR2(162,460-9-26)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Add:SetDownPoint
{
     ADD_SIZE_X = 125 ,
	  ADD_SIZE_Y = 20 ,

 	"LEFT_TOP		= D3DXVECTOR2(162,460-9-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Add:SetGuideDesc( STR_ID_2718 )
g_pButton_Add:ChangeMouseUpSound_LUA( "" )
g_pButton_Add:ChangeMouseOverSound_LUA( "" )

--------------명중
g_pPicturespeed = g_pUIDialog:CreatePicture()
g_pStaticInfo2:AddPicture( g_pPicturespeed )

g_pPicturespeed:SetTex( "DLG_UI_Title03.TGA", "dex" )

g_pPicturespeed:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(162,484-3-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_speed = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_speed )
g_pStatic_speed:SetName( "Static_Accuracy" )

g_pStatic_speed:AddString
{
	--MSG 			= "99999",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(158+116,486-4-26)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pButton_Accuracy = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Accuracy )
g_pButton_Accuracy:SetName( "Button_Accuracy" )
g_pButton_Accuracy:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Accuracy:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Accuracy:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Accuracy:SetNormalPoint
{

     ADD_SIZE_X = 125,
	 ADD_SIZE_Y = 20,
	 
 	"LEFT_TOP		= D3DXVECTOR2(162,484-6-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Accuracy:SetOverPoint
{
     ADD_SIZE_X = 125,
	 ADD_SIZE_Y = 20,

	"LEFT_TOP		= D3DXVECTOR2(162,484-6-26)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Accuracy:SetDownPoint
{
     ADD_SIZE_X = 125 ,
	  ADD_SIZE_Y = 20 ,

 	"LEFT_TOP		= D3DXVECTOR2(162,484-6-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Accuracy:SetGuideDesc( STR_ID_2718 )
g_pButton_Accuracy:ChangeMouseUpSound_LUA( "" )
g_pButton_Accuracy:ChangeMouseOverSound_LUA( "" )

--------------각성충전속도
g_pPicturecharge = g_pUIDialog:CreatePicture()
g_pStaticInfo2:AddPicture( g_pPicturecharge )

g_pPicturecharge:SetTex( "DLG_UI_Title03.TGA", "charge" )

g_pPicturecharge:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(162,507+1-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
 

g_pStatic_charge = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_charge )
g_pStatic_charge:SetName( "Static_Charge" )

g_pStatic_charge:AddString
{
	--MSG 			= "99999",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(158+116,509+1-26)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pButton_Charge = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Charge )
g_pButton_Charge:SetName( "Button_Charge" )
g_pButton_Charge:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Charge:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Charge:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Charge:SetNormalPoint
{

     ADD_SIZE_X = 125,
	 ADD_SIZE_Y = 20,
	 
 	"LEFT_TOP		= D3DXVECTOR2(162,507-2-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Charge:SetOverPoint
{
     ADD_SIZE_X = 125,
	 ADD_SIZE_Y = 20,

	"LEFT_TOP		= D3DXVECTOR2(162,507-2-26)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Charge:SetDownPoint
{
     ADD_SIZE_X = 125 ,
	  ADD_SIZE_Y = 20 ,

 	"LEFT_TOP		= D3DXVECTOR2(162,507-2-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Charge:SetGuideDesc( STR_ID_2718 )
g_pButton_Charge:ChangeMouseUpSound_LUA( "" )
g_pButton_Charge:ChangeMouseOverSound_LUA( "" )

--------------각성지속시간
g_pPicturetime = g_pUIDialog:CreatePicture()
g_pStaticInfo2:AddPicture( g_pPicturetime )

g_pPicturetime:SetTex( "DLG_UI_Title03.TGA", "time" )

g_pPicturetime:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(162,531+3-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
 

g_pStatic_time = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_time )
g_pStatic_time:SetName( "Static_Time" )

g_pStatic_time:AddString
{
	--MSG 			= "99999",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(158+116,533+3-26)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pButton_Time = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Time )
g_pButton_Time:SetName( "Button_Time" )
g_pButton_Time:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Time:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Time:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Time:SetNormalPoint
{

     ADD_SIZE_X = 125,
	 ADD_SIZE_Y = 20,
	 
 	"LEFT_TOP		= D3DXVECTOR2(162,531-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Time:SetOverPoint
{
     ADD_SIZE_X = 125,
	 ADD_SIZE_Y = 20,

	"LEFT_TOP		= D3DXVECTOR2(162,531-26)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Time:SetDownPoint
{
     ADD_SIZE_X = 125 ,
	  ADD_SIZE_Y = 20 ,

 	"LEFT_TOP		= D3DXVECTOR2(162,531-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Time:SetGuideDesc( STR_ID_2718 )
g_pButton_Time:ChangeMouseUpSound_LUA( "" )
g_pButton_Time:ChangeMouseOverSound_LUA( "" )

--------------회피

g_pPicturedex = g_pUIDialog:CreatePicture()
g_pStaticInfo2:AddPicture( g_pPicturedex )

g_pPicturedex:SetTex( "DLG_UI_Title03.TGA", "avoid" )

g_pPicturedex:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(306,438-7-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_dex = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_dex )
g_pStatic_dex:SetName( "Static_Evade" )

g_pStatic_dex:AddString
{
	--MSG 			= "99999",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(306+110,439-7-26)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pButton_Evade = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Evade )
g_pButton_Evade:SetName( "Button_Evade" )
g_pButton_Evade:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Evade:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Evade:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Evade:SetNormalPoint
{

     ADD_SIZE_X = 125,
	 ADD_SIZE_Y = 20,
	 
 	"LEFT_TOP		= D3DXVECTOR2(306,438-10-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Evade:SetOverPoint
{
     ADD_SIZE_X = 125,
	 ADD_SIZE_Y = 20,

	"LEFT_TOP		= D3DXVECTOR2(306,438-10-26)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Evade:SetDownPoint
{
     ADD_SIZE_X = 125 ,
	  ADD_SIZE_Y = 20 ,

 	"LEFT_TOP		= D3DXVECTOR2(306,438-10-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Evade:SetGuideDesc( STR_ID_2718 )
g_pButton_Evade:ChangeMouseUpSound_LUA( "" )
g_pButton_Evade:ChangeMouseOverSound_LUA( "" )

--------------데미지 감소
g_pPicturedecline = g_pUIDialog:CreatePicture()
g_pStaticInfo2:AddPicture( g_pPicturedecline )

g_pPicturedecline:SetTex( "DLG_UI_Title03.TGA", "decline" )

g_pPicturedecline:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(306,460-6-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pStatic_decline = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_decline )
g_pStatic_decline:SetName( "Static_Decline" )

g_pStatic_decline:AddString
{
	--MSG 			= "99999",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(306+110,463-7-26)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pButton_Decline = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Decline )
g_pButton_Decline:SetName( "Button_Decline" )
g_pButton_Decline:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Decline:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Decline:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Decline:SetNormalPoint
{

     ADD_SIZE_X = 125,
	 ADD_SIZE_Y = 20,
	 
 	"LEFT_TOP		= D3DXVECTOR2(306,460-9-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Decline:SetOverPoint
{
     ADD_SIZE_X = 125,
	 ADD_SIZE_Y = 20,

	"LEFT_TOP		= D3DXVECTOR2(306,460-9-26)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Decline:SetDownPoint
{
     ADD_SIZE_X = 125 ,
	  ADD_SIZE_Y = 20 ,

 	"LEFT_TOP		= D3DXVECTOR2(306,460-9-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Decline:SetGuideDesc( STR_ID_2718 )
g_pButton_Decline:ChangeMouseUpSound_LUA( "" )
g_pButton_Decline:ChangeMouseOverSound_LUA( "" )

--------------속도
g_pPicturemoving= g_pUIDialog:CreatePicture()
g_pStaticInfo2:AddPicture( g_pPicturemoving )

g_pPicturemoving:SetTex( "DLG_UI_Title03.TGA", "moving" )

g_pPicturemoving:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(306,484-3-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStatic_moving = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_moving )
g_pStatic_moving:SetName( "Static_Moving" )

g_pStatic_moving:AddString
{
	--MSG 			= "99999",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(306+110,486-4-26)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pButton_Moving = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Moving )
g_pButton_Moving:SetName( "Button_Moving" )
g_pButton_Moving:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Moving:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Moving:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Moving:SetNormalPoint
{

     ADD_SIZE_X = 125,
	 ADD_SIZE_Y = 20,
	 
 	"LEFT_TOP		= D3DXVECTOR2(306,484-6-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Moving:SetOverPoint
{
     ADD_SIZE_X = 125,
	 ADD_SIZE_Y = 20,

	"LEFT_TOP		= D3DXVECTOR2(306,484-6-26)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Moving:SetDownPoint
{
     ADD_SIZE_X = 125 ,
	  ADD_SIZE_Y = 20 ,

 	"LEFT_TOP		= D3DXVECTOR2(306,484-6-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Moving:SetGuideDesc( STR_ID_2718 )
g_pButton_Moving:ChangeMouseUpSound_LUA( "" )
g_pButton_Moving:ChangeMouseOverSound_LUA( "" )

--------------이속

g_pPicturespeed = g_pUIDialog:CreatePicture()
g_pStaticInfo2:AddPicture( g_pPicturespeed )

g_pPicturespeed:SetTex( "DLG_UI_Title03.TGA", "speed" )

g_pPicturespeed:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(306,507+1-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
 

g_pStatic_speed = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_speed )
g_pStatic_speed:SetName( "Static_Speed" )

g_pStatic_speed:AddString
{
	--MSG 			= "99999",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(306+110,509+1-26)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pButton_Speed = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Speed )
g_pButton_Speed:SetName( "Button_Speed" )
g_pButton_Speed:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Speed:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Speed:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Speed:SetNormalPoint
{

     ADD_SIZE_X = 125,
	 ADD_SIZE_Y = 20,
	 
 	"LEFT_TOP		= D3DXVECTOR2(306,507-2-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Speed:SetOverPoint
{
     ADD_SIZE_X = 125,
	 ADD_SIZE_Y = 20,

	"LEFT_TOP		= D3DXVECTOR2(306,507-2-26)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Speed:SetDownPoint
{
     ADD_SIZE_X = 125 ,
	  ADD_SIZE_Y = 20 ,

 	"LEFT_TOP		= D3DXVECTOR2(306,507-2-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Speed:SetGuideDesc( STR_ID_2718 )
g_pButton_Speed:ChangeMouseUpSound_LUA( "" )
g_pButton_Speed:ChangeMouseOverSound_LUA( "" )

--------------점프
g_pPicturejump = g_pUIDialog:CreatePicture()
g_pStaticInfo2:AddPicture( g_pPicturejump )

g_pPicturejump:SetTex( "DLG_UI_Title03.TGA", "jump" )

g_pPicturejump:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(306,531+3-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
 

g_pStatic_jump = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_jump )
g_pStatic_jump:SetName( "Static_Jump" )

g_pStatic_jump:AddString
{
	--MSG 			= "99999",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(306+110,533+3-26)",
	"COLOR			= D3DXCOLOR(0.5,1.0,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pButton_Jump = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Jump )
g_pButton_Jump:SetName( "Button_Jump" )
g_pButton_Jump:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Jump:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Jump:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Jump:SetNormalPoint
{

     ADD_SIZE_X = 125,
	 ADD_SIZE_Y = 20,
	 
 	"LEFT_TOP		= D3DXVECTOR2(306,531-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Jump:SetOverPoint
{
     ADD_SIZE_X = 125,
	 ADD_SIZE_Y = 20,

	"LEFT_TOP		= D3DXVECTOR2(306,531-26)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Jump:SetDownPoint
{
     ADD_SIZE_X = 125 ,
	  ADD_SIZE_Y = 20 ,

 	"LEFT_TOP		= D3DXVECTOR2(306,531-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Jump:SetGuideDesc( STR_ID_2718 )
g_pButton_Jump:ChangeMouseUpSound_LUA( "" )
g_pButton_Jump:ChangeMouseOverSound_LUA( "" )

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

     ADD_SIZE_X = 55,
	 ADD_SIZE_Y = 26,
	 
 	"LEFT_TOP		= D3DXVECTOR2(18,562-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_opacity1:SetOverPoint
{
     ADD_SIZE_X = 55,
	 ADD_SIZE_Y = 26,

	"LEFT_TOP		= D3DXVECTOR2(18,562-26)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_opacity1:SetDownPoint
{
     ADD_SIZE_X = 55,
	  ADD_SIZE_Y = 26,

 	"LEFT_TOP		= D3DXVECTOR2(18,562-26)",
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

     ADD_SIZE_X = 55,
	 ADD_SIZE_Y = 26,
	 
 	"LEFT_TOP		= D3DXVECTOR2(87,562-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_opacity2:SetOverPoint
{
     ADD_SIZE_X = 55,
	 ADD_SIZE_Y = 26,

	"LEFT_TOP		= D3DXVECTOR2(87,562-26)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_opacity2:SetDownPoint
{
     ADD_SIZE_X = 55,
	  ADD_SIZE_Y = 26,

 	"LEFT_TOP		= D3DXVECTOR2(87,562-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
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

     ADD_SIZE_X = 55,
	 ADD_SIZE_Y = 26,
	 
 	"LEFT_TOP		= D3DXVECTOR2(158,562-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_opacity3:SetOverPoint
{
     ADD_SIZE_X = 55,
	 ADD_SIZE_Y = 26,

	"LEFT_TOP		= D3DXVECTOR2(158,562-26)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_opacity3:SetDownPoint
{
     ADD_SIZE_X = 55,
	  ADD_SIZE_Y = 26,

 	"LEFT_TOP		= D3DXVECTOR2(158,562-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
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

     ADD_SIZE_X = 55,
	 ADD_SIZE_Y = 26,
	 
 	"LEFT_TOP		= D3DXVECTOR2(227,562-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_opacity4:SetOverPoint
{
     ADD_SIZE_X = 55,
	 ADD_SIZE_Y = 26,

	"LEFT_TOP		= D3DXVECTOR2(227,562-26)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_opacity4:SetDownPoint
{
     ADD_SIZE_X = 55,
	  ADD_SIZE_Y = 26,

 	"LEFT_TOP		= D3DXVECTOR2(227,562-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
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

     ADD_SIZE_X = 55,
	 ADD_SIZE_Y = 26,
	 
 	"LEFT_TOP		= D3DXVECTOR2(297,562-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_opacity5:SetOverPoint
{
     ADD_SIZE_X = 55,
	 ADD_SIZE_Y = 26,

	"LEFT_TOP		= D3DXVECTOR2(297,562-26)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_opacity5:SetDownPoint
{
     ADD_SIZE_X = 55 ,
	  ADD_SIZE_Y = 26 ,

 	"LEFT_TOP		= D3DXVECTOR2(297,562-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
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

     ADD_SIZE_X = 55,
	 ADD_SIZE_Y = 26,
	 
 	"LEFT_TOP		= D3DXVECTOR2(367,562-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_opacity6:SetOverPoint
{
     ADD_SIZE_X = 55,
	 ADD_SIZE_Y = 26,

	"LEFT_TOP		= D3DXVECTOR2(367,562-26)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_opacity6:SetDownPoint
{                                           
     ADD_SIZE_X = 55 ,
	  ADD_SIZE_Y = 26 ,

 	"LEFT_TOP		= D3DXVECTOR2(367,562-26)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_opacity6:SetGuideDesc( STR_ID_2723 )
g_pButton_opacity6:ChangeMouseUpSound_LUA( "" )
g_pButton_opacity6:ChangeMouseOverSound_LUA( "" )
