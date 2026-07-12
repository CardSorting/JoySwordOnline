-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStaticInfo = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticInfo )
g_pStaticInfo:SetName( "g_pStaticInfo" )
g_pUIDialog:SetCloseCustomUIEventID( UI_WATCH_CUSTOM_MSG["UWCM_EXIT"] )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 1, 0, 0 ) ) -- 위치
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 452, 409, 0 ) ) -- Size 
g_pUIDialog:AddDummyPos( D3DXVECTOR3( -282, 9, 200 ) ) -- 화면 중앙을 기준으로 한 유닛뷰어 위치
g_pUIDialog:AddDummyPos( D3DXVECTOR3( -250000, 50000, -500000 ) ) -- 유닛뷰어에 적용될 LightPos


-----BG
g_pPictureInfo_BG1 = g_pUIDialog:CreatePicture()
g_pStaticInfo:AddPicture( g_pPictureInfo_BG1 )

g_pPictureInfo_BG1:SetTex( "DLG_UI_Common_Texture01.TGA", "BG_TOP" )

g_pPictureInfo_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(1,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInfo_BG1 = g_pUIDialog:CreatePicture()
g_pStaticInfo:AddPicture( g_pPictureInfo_BG1 )

g_pPictureInfo_BG1:SetTex( "DLG_UI_Common_Texture01.TGA", "BG_MIDDLE" )

g_pPictureInfo_BG1:SetPoint
{
    ADD_SIZE_Y = 366,
	"LEFT_TOP		= D3DXVECTOR2(1,19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInfo_BG1 = g_pUIDialog:CreatePicture()
g_pStaticInfo:AddPicture( g_pPictureInfo_BG1 )

g_pPictureInfo_BG1:SetTex( "DLG_UI_Common_Texture01.TGA", "BG_BOTTOM" )

g_pPictureInfo_BG1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(1,391)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

------------------타이틀


g_pPicturetitle = g_pUIDialog:CreatePicture()
g_pStaticInfo:AddPicture( g_pPicturetitle )

g_pPicturetitle:SetTex( "DLG_UI_Title01.TGA", "look_around" )

g_pPicturetitle:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(19,14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


------------------

g_pPictureInfo_BG2 = g_pUIDialog:CreatePicture() 
g_pStaticInfo:AddPicture( g_pPictureInfo_BG2 )

g_pPictureInfo_BG2:SetTex( "DLG_UI_Common_Texture01.TGA", "WIN_NAME_LEFT" )

g_pPictureInfo_BG2:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(16,46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}	
	

g_pPictureInfo_BG2 = g_pUIDialog:CreatePicture() 
g_pStaticInfo:AddPicture( g_pPictureInfo_BG2 )

g_pPictureInfo_BG2:SetTex( "DLG_UI_Common_Texture01.TGA", "WIN_NAME_MIDDLE" )

g_pPictureInfo_BG2:SetPoint
{
   ADD_SIZE_X = 402 ,
	"LEFT_TOP		= D3DXVECTOR2(25,46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}		
	

g_pPictureInfo_BG2 = g_pUIDialog:CreatePicture() 
g_pStaticInfo:AddPicture( g_pPictureInfo_BG2 )

g_pPictureInfo_BG2:SetTex( "DLG_UI_Common_Texture01.TGA", "WIN_NAME_RIGHT" )

g_pPictureInfo_BG2:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(429,46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}	





g_pPictureInfo_BG3 = g_pUIDialog:CreatePicture() 
g_pStaticInfo:AddPicture( g_pPictureInfo_BG3 )

g_pPictureInfo_BG3:SetTex( "DLG_UI_Common_Texture01.TGA", "WIN_INFO_TOP" )

g_pPictureInfo_BG3:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(16,81)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

	}

g_pPictureInfo_BG3 = g_pUIDialog:CreatePicture() 
g_pStaticInfo:AddPicture( g_pPictureInfo_BG3 )

g_pPictureInfo_BG3:SetTex( "DLG_UI_Common_Texture01.TGA", "WIN_INFO_MIDDLE" )

g_pPictureInfo_BG3:SetPoint
{
     ADD_SIZE_Y = 10 ,
	"LEFT_TOP		= D3DXVECTOR2(16,91)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}
	
	
g_pPictureInfo_BG3 = g_pUIDialog:CreatePicture() 
g_pStaticInfo:AddPicture( g_pPictureInfo_BG3 )

g_pPictureInfo_BG3:SetTex( "DLG_UI_Common_Texture01.TGA", "WIN_INFO_BOTTOM" )

g_pPictureInfo_BG3:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(16,103)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}	
	
	
	
------------------------------------




g_pPictureInfo_BG4 = g_pUIDialog:CreatePicture() 
g_pStaticInfo:AddPicture( g_pPictureInfo_BG4 )

g_pPictureInfo_BG4:SetTex( "DLG_UI_Common_Texture01.TGA", "WIN_INFO_TOP" )

g_pPictureInfo_BG4:SetPoint
{
     
	"LEFT_TOP		= D3DXVECTOR2(16,117)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

	}

g_pPictureInfo_BG4 = g_pUIDialog:CreatePicture() 
g_pStaticInfo:AddPicture( g_pPictureInfo_BG4 )

g_pPictureInfo_BG4:SetTex( "DLG_UI_Common_Texture01.TGA", "WIN_INFO_MIDDLE" )

g_pPictureInfo_BG4:SetPoint
{
     ADD_SIZE_Y = 256 ,
	"LEFT_TOP		= D3DXVECTOR2(16,127)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}
	
	
g_pPictureInfo_BG4 = g_pUIDialog:CreatePicture() 
g_pStaticInfo:AddPicture( g_pPictureInfo_BG4 )

g_pPictureInfo_BG4:SetTex( "DLG_UI_Common_Texture01.TGA", "WIN_INFO_BOTTOM" )

g_pPictureInfo_BG4:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(16,385)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}

	

--캐릭터 아이콘


g_pStaticIcon = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticIcon )
g_pStaticIcon:SetName( "Static_CharIcon" )

g_pPicturecharac_icon = g_pUIDialog:CreatePicture() 
g_pStaticIcon:AddPicture( g_pPicturecharac_icon )

g_pPicturecharac_icon:SetTex( "DLG_UI_Common_Texture02.TGA", "charac_area" )

g_pPicturecharac_icon:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(22,51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


---lv
g_pPicture_lv = g_pUIDialog:CreatePicture() 
g_pStaticInfo:AddPicture( g_pPicture_lv )

g_pPicture_lv:SetTex( "DLG_UI_Title01.TGA", "LV" )

g_pPicture_lv:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(46,56)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



----레벨 수치
g_pStaticInfo= g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticInfo)
	g_pStaticInfo:SetName( "g_pStaticLv" )

	g_pStaticInfo:AddString
	{
		-- MSG 			= "99",
		 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_REFT"],
		"POS 			= D3DXVECTOR2(67,56)",
		"COLOR			= D3DXCOLOR(1.0,0.9,0.1,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}


----이름

	g_pStaticInfo= g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticInfo)
	g_pStaticInfo:SetName( "g_pStaticName" )

	g_pStaticInfo:AddString
	{
		MSG 			= STR_ID_1382,
		 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_REFT"],
		"POS 			= D3DXVECTOR2(92,56)",
		"COLOR			= D3DXCOLOR(1.0,0.9,0.1,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}


----------전적


g_pPicture_total_rank = g_pUIDialog:CreatePicture() 
g_pStaticInfo:AddPicture( g_pPicture_total_rank )


g_pPicture_total_rank:SetTex( "DLG_UI_Title01.TGA", "score" )

g_pPicture_total_rank:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(21,88)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----대전 순위

g_pPicture_ranking = g_pUIDialog:CreatePicture() 
g_pStaticInfo:AddPicture( g_pPicture_ranking )

g_pPicture_ranking:SetTex( "DLG_UI_Title01.TGA", "ranking" )

g_pPicture_ranking:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(214,88)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---등급


g_pPicture_grade = g_pUIDialog:CreatePicture() 
g_pStaticInfo:AddPicture( g_pPicture_grade )

g_pPicture_grade:SetTex( "DLG_UI_Title01.TGA", "grade" )

g_pPicture_grade:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(347,88)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--등급아이콘

g_pStaticRank = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRank )
g_pStaticRank:SetName( "g_pStaticPvPRank" )

g_pPicture_grade_icon = g_pUIDialog:CreatePicture() 
g_pStaticRank:AddPicture( g_pPicture_grade_icon )
g_pPicture_grade_icon:SetTex( "DLG_UI_Common_Texture02.TGA", "grade_area" )

g_pPicture_grade_icon:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(406,85)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


---전적	
	g_pStaticInfo= g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticInfo)
	g_pStaticInfo:SetName( "g_pStaticPvPWin" )

	g_pStaticInfo:AddString
	{
		-- MSG 			= "9999승 / 9999패",
		 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	
 	 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(129,90)",
		"COLOR			= D3DXCOLOR(0.1,0.1,0.1,1.0)",
		
	}
	
----대전 순위
g_pStaticinfo_rank= g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticinfo_rank)
	g_pStaticinfo_rank:SetName( "g_pStaticinfo_rank" )

	g_pStaticinfo_rank:AddString
	{
		-- MSG 			= "0위",
		 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	 
 	 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
		"POS 			= D3DXVECTOR2(307,90)",
		"COLOR			= D3DXCOLOR(0.1,0.1,0.1,1.0)",
		
	}
	

	
	
---아바타

g_pStaticAvata = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticAvata )
g_pStaticAvata:SetName( "g_pStaticAvata" )


g_pPictureAvata_head = g_pUIDialog:CreatePicture() 
g_pStaticAvata:AddPicture( g_pPictureAvata_head )

g_pPictureAvata_head:SetTex( "DLG_UI_Common_Texture02.TGA", "AVATA_HEAD" )

g_pPictureAvata_head:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(24,160)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}	


g_pPictureAvata_coat = g_pUIDialog:CreatePicture() 
g_pStaticAvata:AddPicture( g_pPictureAvata_coat )

g_pPictureAvata_coat:SetTex( "DLG_UI_Common_Texture02.TGA", "AVATA_coat" )

g_pPictureAvata_coat:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(24,204)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}	


g_pPictureAvata_pants = g_pUIDialog:CreatePicture() 
g_pStaticAvata:AddPicture( g_pPictureAvata_pants )

g_pPictureAvata_pants:SetTex( "DLG_UI_Common_Texture02.TGA", "AVATA_pants" )

g_pPictureAvata_pants:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(24,248)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}	


g_pPictureAvata_glover = g_pUIDialog:CreatePicture() 
g_pStaticAvata:AddPicture( g_pPictureAvata_glover )

g_pPictureAvata_glover:SetTex( "DLG_UI_Common_Texture02.TGA", "AVATA_glover" )

g_pPictureAvata_glover:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(24,292)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}	


g_pPictureAvata_shose = g_pUIDialog:CreatePicture() 
g_pStaticAvata:AddPicture( g_pPictureAvata_shose )

g_pPictureAvata_shose:SetTex( "DLG_UI_Common_Texture02.TGA", "AVATA_shose" )

g_pPictureAvata_shose:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(24,336)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}	


g_pPictureAvata_weapon = g_pUIDialog:CreatePicture() 
g_pStaticAvata:AddPicture( g_pPictureAvata_weapon )

g_pPictureAvata_weapon:SetTex( "DLG_UI_Common_Texture02.TGA", "AVATA_weapon" )

g_pPictureAvata_weapon:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(344,151)",
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
	 
	"LEFT_TOP		= D3DXVECTOR2(344-33,151)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}	
-----장비


g_pStaticEuqip = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticEuqip )
g_pStaticEuqip:SetName( "g_pStaticEuqip" )


g_pPictureEuqip_coat = g_pUIDialog:CreatePicture() 
g_pStaticEuqip:AddPicture( g_pPictureEuqip_coat )

g_pPictureEuqip_coat:SetTex( "DLG_UI_Common_Texture02.TGA", "Euqip_coat" )

g_pPictureEuqip_coat:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(68,204)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}	


g_pPictureEuqip_pants = g_pUIDialog:CreatePicture() 
g_pStaticEuqip:AddPicture( g_pPictureEuqip_pants )

g_pPictureEuqip_pants:SetTex( "DLG_UI_Common_Texture02.TGA", "Euqip_pants" )

g_pPictureEuqip_pants:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(68,248)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}


g_pPictureEuqip_glover = g_pUIDialog:CreatePicture() 
g_pStaticEuqip:AddPicture( g_pPictureEuqip_glover )

g_pPictureEuqip_glover:SetTex( "DLG_UI_Common_Texture02.TGA", "Euqip_glover" )

g_pPictureEuqip_glover:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(68,292)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}


g_pPictureEuqip_shose = g_pUIDialog:CreatePicture() 
g_pStaticEuqip:AddPicture( g_pPictureEuqip_shose )

g_pPictureEuqip_shose:SetTex( "DLG_UI_Common_Texture02.TGA", "Euqip_shose" )

g_pPictureEuqip_shose:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(68,336)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}


g_pPictureEuqip_head = g_pUIDialog:CreatePicture() 
g_pStaticEuqip:AddPicture( g_pPictureEuqip_head )

g_pPictureEuqip_head:SetTex( "DLG_UI_Common_Texture02.TGA", "Euqip_head" )

g_pPictureEuqip_head:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(344,203)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}


g_pPictureEuqip_glass = g_pUIDialog:CreatePicture() 
g_pStaticEuqip:AddPicture( g_pPictureEuqip_glass )

g_pPictureEuqip_glass:SetTex( "DLG_UI_Common_Texture02.TGA", "Euqip_glass" )

g_pPictureEuqip_glass:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(344,248)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}


g_pPictureEuqip_mask = g_pUIDialog:CreatePicture() 
g_pStaticEuqip:AddPicture( g_pPictureEuqip_mask )

g_pPictureEuqip_mask:SetTex( "DLG_UI_Common_Texture02.TGA", "Euqip_mask" )

g_pPictureEuqip_mask:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(344,292)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}


g_pPictureEuqip_ring = g_pUIDialog:CreatePicture() 
g_pStaticEuqip:AddPicture( g_pPictureEuqip_ring )

g_pPictureEuqip_ring:SetTex( "DLG_UI_Common_Texture02.TGA", "Euqip_ring" )

g_pPictureEuqip_ring:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(344,336)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}


g_pPictureEuqip_weapon = g_pUIDialog:CreatePicture() 
g_pStaticEuqip:AddPicture( g_pPictureEuqip_weapon )

g_pPictureEuqip_weapon:SetTex( "DLG_UI_Common_Texture02.TGA", "Euqip_weapon" )

g_pPictureEuqip_weapon:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(388,151)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}


g_pPictureEuqip_bust = g_pUIDialog:CreatePicture() 
g_pStaticEuqip:AddPicture( g_pPictureEuqip_bust )

g_pPictureEuqip_bust:SetTex( "DLG_UI_Common_Texture02.TGA", "Euqip_coat" )

g_pPictureEuqip_bust:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(388,204)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}


g_pPictureEuqip_waist = g_pUIDialog:CreatePicture() 
g_pStaticEuqip:AddPicture( g_pPictureEuqip_waist )

g_pPictureEuqip_waist:SetTex( "DLG_UI_Common_Texture02.TGA", "Euqip_pants" )

g_pPictureEuqip_waist:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(388,248)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}


g_pPictureEuqip_armlet = g_pUIDialog:CreatePicture() 
g_pStaticEuqip:AddPicture( g_pPictureEuqip_armlet )

g_pPictureEuqip_armlet:SetTex( "DLG_UI_Common_Texture02.TGA", "Euqip_glover" )

g_pPictureEuqip_armlet:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(388,292)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

}



g_pPictureEuqip_necklace = g_pUIDialog:CreatePicture() 
g_pStaticEuqip:AddPicture( g_pPictureEuqip_necklace )

g_pPictureEuqip_necklace:SetTex( "DLG_UI_Common_Texture02.TGA", "Euqip_necklace" )

g_pPictureEuqip_necklace:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(388,336)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,

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


 	"LEFT_TOP		= D3DXVECTOR2(414,17)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(410,13)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetDownPoint
{
     ADD_SIZE_X = -2 ,
	  ADD_SIZE_Y = -2 ,
	 
 	"LEFT_TOP		= D3DXVECTOR2(410+1,13+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetCustomMsgMouseUp( UI_WATCH_CUSTOM_MSG["UWCM_EXIT"] )






-----------------칭호들어갈 자리

g_pStaticInfo_Title = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticInfo_Title )
g_pStaticInfo_Title:SetName( "Info_Title" )

  
 
g_pPicInfo_Title = g_pUIDialog:CreatePicture()
g_pStaticInfo_Title:AddPicture( g_pPicInfo_Title )
g_pPicInfo_Title:SetTex2( "Title_Empty.tga" )
g_pPicInfo_Title:SetPoint
{
        USE_TEXTURE_SIZE = FALSE,
	    "LEFT_TOP		= D3DXVECTOR2(70,123)",	    
	    "RIGHT_BOTTOM	= D3DXVECTOR2(70 + 100, 123 + 65)",
    	
	    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	    CHANGE_TIME		= 0.0,	
}

-- 슬롯 정보

slotsize_x = 41
slotsize_y = 41

pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

   	SLOT_TYPE	= SLOT_TYPE["ST_UI_WATCH"],
    	
 	SORT_TYPE	= SORT_TYPE["ST_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_DEFENCE_HAIR_FASHION"],

	FASHION		= TRUE,
	EQUIP_POS	= EQIP_POSITION["EP_DEFENCE_HAIR"],
	
	"POS		= D3DXVECTOR2( 25, 161)",
	"SIZE		= D3DXVECTOR2( slotsize_x, slotsize_y )",

	--SLOT_DESC	= STR_ID_959,
}


pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

 	SLOT_TYPE	= SLOT_TYPE["ST_UI_WATCH"],

	SORT_TYPE	= SORT_TYPE["ST_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_DEFENCE_BODY_FASHION"],

	FASHION		= TRUE,
	EQUIP_POS	= EQIP_POSITION["EP_DEFENCE_BODY"],

	"POS		= D3DXVECTOR2(25,205)",
	"SIZE		= D3DXVECTOR2( slotsize_x, slotsize_y )",

	--SLOT_DESC	= STR_ID_960,
}




pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

 	SLOT_TYPE	= SLOT_TYPE["ST_UI_WATCH"],

	SORT_TYPE	= SORT_TYPE["ST_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_DEFENCE_LEG_FASHION"],

	FASHION		= TRUE,
	EQUIP_POS	= EQIP_POSITION["EP_DEFENCE_LEG"],

	"POS		= D3DXVECTOR2(25, 249)",
	"SIZE		= D3DXVECTOR2( slotsize_x, slotsize_y )",

	--SLOT_DESC	= STR_ID_961,
}




pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

  	SLOT_TYPE	= SLOT_TYPE["ST_UI_WATCH"],

	SORT_TYPE	= SORT_TYPE["ST_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_DEFENCE_HAND_FASHION"],

	FASHION		= TRUE,
	EQUIP_POS	= EQIP_POSITION["EP_DEFENCE_HAND"],

	"POS		= D3DXVECTOR2(25, 293)",
	"SIZE		= D3DXVECTOR2( slotsize_x, slotsize_y )",

	--SLOT_DESC	= STR_ID_962,
}






pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

  	SLOT_TYPE	= SLOT_TYPE["ST_UI_WATCH"],

	SORT_TYPE	= SORT_TYPE["ST_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_DEFENCE_FOOT_FASHION"],

	FASHION		= TRUE,
	EQUIP_POS	= EQIP_POSITION["EP_DEFENCE_FOOT"],

	"POS		= D3DXVECTOR2(25, 337 )",
	"SIZE		= D3DXVECTOR2( slotsize_x, slotsize_y )",

	--SLOT_DESC	= STR_ID_963,
}






pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

  	SLOT_TYPE	= SLOT_TYPE["ST_UI_WATCH"],

	SORT_TYPE	= SORT_TYPE["ST_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_WEAPON_HAND_FASHION"],

	FASHION		= TRUE,
	EQUIP_POS	= EQIP_POSITION["EP_WEAPON_HAND"],

	"POS		= D3DXVECTOR2(345, 152)",
	"SIZE		= D3DXVECTOR2( slotsize_x, slotsize_y )",

	--SLOT_DESC	= STR_ID_965,
}



pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

  	SLOT_TYPE	= SLOT_TYPE["ST_UI_WATCH"],

	SORT_TYPE	= SORT_TYPE["ST_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_AC_WEAPON"],

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_AC_WEAPON"],

	"POS		= D3DXVECTOR2(312, 152)",
	"SIZE		= D3DXVECTOR2( slotsize_x-11, slotsize_y-11 )",

	--SLOT_DESC	= STR_ID_1165,
}

pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

  	SLOT_TYPE	= SLOT_TYPE["ST_UI_WATCH"],

	SORT_TYPE	= SORT_TYPE["ST_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_DEFENCE_BODY"],

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_DEFENCE_BODY"],

	"POS		= D3DXVECTOR2(69, 205)",
	"SIZE		= D3DXVECTOR2( slotsize_x, slotsize_y )",

	--SLOT_DESC	= STR_ID_1161,
}

pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

  	SLOT_TYPE	= SLOT_TYPE["ST_UI_WATCH"],

	SORT_TYPE	= SORT_TYPE["ST_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_DEFENCE_LEG"],

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_DEFENCE_LEG"],

	"POS		= D3DXVECTOR2(69, 249)",
	"SIZE		= D3DXVECTOR2( slotsize_x, slotsize_y )",

	--SLOT_DESC	= STR_ID_1162,
}





pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

  	SLOT_TYPE	= SLOT_TYPE["ST_UI_WATCH"],

	SORT_TYPE	= SORT_TYPE["ST_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_DEFENCE_HAND"],

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_DEFENCE_HAND"],

	"POS		= D3DXVECTOR2(69, 293)",
	"SIZE		= D3DXVECTOR2( slotsize_x, slotsize_y )",

	--SLOT_DESC	= STR_ID_1163,
}




pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

  	SLOT_TYPE	= SLOT_TYPE["ST_UI_WATCH"],

	SORT_TYPE	= SORT_TYPE["ST_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_DEFENCE_FOOT"],

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_DEFENCE_FOOT"],

	"POS		= D3DXVECTOR2(69, 337 )",
	"SIZE		= D3DXVECTOR2( slotsize_x, slotsize_y )",

	--SLOT_DESC	= STR_ID_1164,
}




pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

  	SLOT_TYPE	= SLOT_TYPE["ST_UI_WATCH"],

	SORT_TYPE	= SORT_TYPE["ST_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_WEAPON_HAND"],

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_WEAPON_HAND"],

	"POS		= D3DXVECTOR2( 389, 152 )",
	"SIZE		= D3DXVECTOR2( slotsize_x, slotsize_y )",

	--SLOT_DESC	= STR_ID_1166,
}


--- 악세

-- 머리
pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

  	SLOT_TYPE	= SLOT_TYPE["ST_UI_WATCH"],

	SORT_TYPE	= SORT_TYPE["ST_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_AC_FACE1"],

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_AC_FACE1"],

	"POS		= D3DXVECTOR2(345,204)",
	"SIZE		= D3DXVECTOR2( slotsize_x, slotsize_y )",

	--SLOT_DESC	= STR_ID_966,
}


-- 안경
pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

  	SLOT_TYPE	= SLOT_TYPE["ST_UI_WATCH"],

	SORT_TYPE	= SORT_TYPE["ST_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_AC_FACE2"],

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_AC_FACE2"],

	"POS		= D3DXVECTOR2(345, 249)",
	"SIZE		= D3DXVECTOR2( slotsize_x, slotsize_y )",

	--SLOT_DESC	= STR_ID_968,
}
-- 가면(-_-)
pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

  	SLOT_TYPE	= SLOT_TYPE["ST_UI_WATCH"],

	SORT_TYPE	= SORT_TYPE["ST_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_AC_FACE3"],

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_AC_FACE3"],

	"POS		= D3DXVECTOR2(345, 293)",
	"SIZE		= D3DXVECTOR2( slotsize_x, slotsize_y )",

	--SLOT_DESC	= STR_ID_970,
}


-- 반지
pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

  	SLOT_TYPE	= SLOT_TYPE["ST_UI_WATCH"],

	SORT_TYPE	= SORT_TYPE["ST_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_AC_RING"],

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_AC_RING"],


	"POS		= D3DXVECTOR2(345, 337)",
	"SIZE		= D3DXVECTOR2( slotsize_x, slotsize_y )",

	--SLOT_DESC	= STR_ID_972,
}


-- 옷
pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

  	SLOT_TYPE	= SLOT_TYPE["ST_UI_WATCH"],

	SORT_TYPE	= SORT_TYPE["ST_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_AC_BODY"],

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_AC_BODY"],

	"POS		= D3DXVECTOR2(389, 205)",
	"SIZE		= D3DXVECTOR2( slotsize_x, slotsize_y )",

	--SLOT_DESC	= STR_ID_967,
}


-- 바지
pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

  	SLOT_TYPE	= SLOT_TYPE["ST_UI_WATCH"],

	SORT_TYPE	= SORT_TYPE["ST_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_AC_LEG"],

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_AC_LEG"],

	"POS		= D3DXVECTOR2(389, 249)",
	"SIZE		= D3DXVECTOR2( slotsize_x, slotsize_y )",

	--SLOT_DESC	= STR_ID_969,
}



-- 팔
pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,

  	SLOT_TYPE	= SLOT_TYPE["ST_UI_WATCH"],

	SORT_TYPE	= SORT_TYPE["ST_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_AC_ARM"],

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_AC_ARM"],

	"POS		= D3DXVECTOR2(389, 293)",
	"SIZE		= D3DXVECTOR2( slotsize_x, slotsize_y )",

	--SLOT_DESC	= STR_ID_971,
}

-- 목걸이
pItemSlot = g_pCX2SlotManager:CreateItemSlot()
g_pCX2SlotManager:AddSlot( pItemSlot )

pItemSlot:SetSlotData
{
	ENABLE		= TRUE,
	SHOW		= TRUE,



  	SLOT_TYPE	= SLOT_TYPE["ST_UI_WATCH"],

	SORT_TYPE	= SORT_TYPE["ST_EQUIP"],
	SLOT_ID		= NOW_EQIP_SLOT_ID["NESI_AC_NECKLESS"],

	FASHION		= FALSE,
	EQUIP_POS	= EQIP_POSITION["EP_AC_NECKLESS"],

	"POS		= D3DXVECTOR2(389, 337)",
	"SIZE		= D3DXVECTOR2( slotsize_x, slotsize_y )",

	--SLOT_DESC	= STR_ID_973,
}





