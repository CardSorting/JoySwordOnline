-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetName( "DLG_User_Info" )
g_pUIDialog:SetPos( 300,300 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetEnableMoveByDrag( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( STATE_UI_CUSTOM_MSG["SUCM_USER_INFO_OK"] )


g_pStaticInfo = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticInfo )
g_pStaticInfo:SetName( "g_pStaticInfo" )


-----BG
g_pPictureInfo_BG1 = g_pUIDialog:CreatePicture()
g_pStaticInfo:AddPicture( g_pPictureInfo_BG1 )

g_pPictureInfo_BG1:SetTex( "DLG_UI_Common_Texture04.TGA", "user_info_BG_TOP" )

g_pPictureInfo_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureInfo_BG2 = g_pUIDialog:CreatePicture()
g_pStaticInfo:AddPicture( g_pPictureInfo_BG2 )

g_pPictureInfo_BG2:SetTex( "DLG_UI_Common_Texture04.TGA", "user_info_BG_MIDDLE" )

g_pPictureInfo_BG2:SetPoint
{
    ADD_SIZE_Y = 158,
	"LEFT_TOP		= D3DXVECTOR2(0,15)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureInfo_BG3 = g_pUIDialog:CreatePicture()
g_pStaticInfo:AddPicture( g_pPictureInfo_BG3 )

g_pPictureInfo_BG3:SetTex( "DLG_UI_Common_Texture04.TGA", "user_info_BG_BOTTOM" )

g_pPictureInfo_BG3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(0,174)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-----------TITLE

g_pPictureTitle = g_pUIDialog:CreatePicture()
g_pStaticInfo:AddPicture( g_pPictureTitle )

g_pPictureTitle:SetTex( "DLG_UI_Title02_B.tga", "user_info" )

g_pPictureTitle:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(16,13)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


 



------------------

g_pPictureInfo_BG2 = g_pUIDialog:CreatePicture() 
g_pStaticInfo:AddPicture( g_pPictureInfo_BG2 )

g_pPictureInfo_BG2:SetTex( "DLG_UI_Common_Texture01.TGA", "WIN_NAME_LEFT" )

g_pPictureInfo_BG2:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(13,46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}	
	

g_pPictureInfo_BG2 = g_pUIDialog:CreatePicture() 
g_pStaticInfo:AddPicture( g_pPictureInfo_BG2 )

g_pPictureInfo_BG2:SetTex( "DLG_UI_Common_Texture01.TGA", "WIN_NAME_MIDDLE" )

g_pPictureInfo_BG2:SetPoint
{
   ADD_SIZE_X = 176 ,
	"LEFT_TOP		= D3DXVECTOR2(22,46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}		
	

g_pPictureInfo_BG2 = g_pUIDialog:CreatePicture() 
g_pStaticInfo:AddPicture( g_pPictureInfo_BG2 )

g_pPictureInfo_BG2:SetTex( "DLG_UI_Common_Texture01.TGA", "WIN_NAME_RIGHT" )

g_pPictureInfo_BG2:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(200,46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}	


	
	
	
	
	

g_pPictureInfo_BG2 = g_pUIDialog:CreatePicture() 
g_pStaticInfo:AddPicture( g_pPictureInfo_BG2 )

g_pPictureInfo_BG2:SetTex( "DLG_UI_Common_Texture04.TGA", "user_info_bg2_left" )

g_pPictureInfo_BG2:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(13,81)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}	
	

g_pPictureInfo_BG2 = g_pUIDialog:CreatePicture() 
g_pStaticInfo:AddPicture( g_pPictureInfo_BG2 )

g_pPictureInfo_BG2:SetTex( "DLG_UI_Common_Texture04.TGA", "user_info_bg2_middle" )

g_pPictureInfo_BG2:SetPoint
{
   ADD_SIZE_X = 178 ,
	"LEFT_TOP		= D3DXVECTOR2(21,81)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}		
	

g_pPictureInfo_BG2 = g_pUIDialog:CreatePicture() 
g_pStaticInfo:AddPicture( g_pPictureInfo_BG2 )

g_pPictureInfo_BG2:SetTex( "DLG_UI_Common_Texture04.TGA", "user_info_bg2_right" )

g_pPictureInfo_BG2:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(200,81)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}	


	
	
	
	--캐릭터 아이콘

g_pStaticIcon = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticIcon )
g_pStaticIcon:SetName( "Static_UnitFace" )

g_pPictureText_charac_icon = g_pUIDialog:CreatePicture() 
g_pStaticIcon:AddPicture( g_pPictureText_charac_icon )

g_pPictureText_charac_icon:SetTex( "DLG_UI_Common_Texture02.TGA", "charac_area" )

g_pPictureText_charac_icon:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(21,51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




---lv

g_pPictureText_lv = g_pUIDialog:CreatePicture() 
g_pStaticIcon:AddPicture( g_pPictureText_lv )

g_pPictureText_lv:SetTex( "DLG_UI_Title01.TGA", "LV" )

g_pPictureText_lv:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(47,56)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



	g_pStaticInfo_Lv = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticInfo_Lv )
	g_pStaticInfo_Lv:SetName( "Static_User_Info" )

	g_pStaticInfo_Lv:AddString
	{
		-- MSG 			= "40",
		 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(66,56)",
		"COLOR			= D3DXCOLOR(1.0,0.9,0.1,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}


	----닉네임
	g_pStaticInfo_Lv:AddString
	{
		-- MSG 			= "닉넴은여섯자",
		FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	 	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 	SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(87,56)",
		"COLOR			= D3DXCOLOR(1.0,0.9,0.1,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}

	----대전 순위
	g_pStaticInfo_Lv:AddString
	{
		-- MSG 			= "0위",
		 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,

 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(85,147)",
		"COLOR			= D3DXCOLOR(0.1,0.1,0.1,1.0)",

	}

	---전적
	g_pStaticInfo_Lv:AddString
	{
		-- MSG 			= "9999승 / 9999패",
		 	 FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,

 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(63,121)",
		"COLOR			= D3DXCOLOR(0.1,0.1,0.1,1.0)",

	}





---등급


g_pPictureText_grade = g_pUIDialog:CreatePicture() 
g_pStaticIcon:AddPicture( g_pPictureText_grade )

g_pPictureText_grade:SetTex( "DLG_UI_Title01.TGA", "grade" )

g_pPictureText_grade:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(21,91)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----대전 등급 랭크
g_pStaticUser_Information_Window_Font = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticUser_Information_Window_Font )
g_pStaticUser_Information_Window_Font:SetName( "UnitEmblem" )

g_pPictureBase_PVP_Grade = g_pUIDialog:CreatePicture()
g_pStaticUser_Information_Window_Font:AddPicture( g_pPictureBase_PVP_Grade )

g_pPictureBase_PVP_Grade:SetTex( "DLG_UI_Common_Texture02.TGA", "grade_area" )

g_pPictureBase_PVP_Grade:SetPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(80,88)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




------SERVER

Static_SERVER = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( Static_SERVER )
Static_SERVER:SetName( "Static_SERVER" )


	
g_pPictureServer = g_pUIDialog:CreatePicture()
Static_SERVER:AddPicture( g_pPictureServer )

g_pPictureServer:SetTex( "DLG_UI_Common_Texture11.tga", "Soles" )

g_pPictureServer:SetPoint
{
    --USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(80+104,88-36)",
	--"RIGHT_BOTTOM	= D3DXVECTOR2(11+22,5+24-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}







	
	
	----------전적


g_pPictureText_total_rank = g_pUIDialog:CreatePicture() 
g_pStaticIcon:AddPicture( g_pPictureText_total_rank )

g_pPictureText_total_rank:SetTex( "DLG_UI_Title01.TGA", "score" )

g_pPictureText_total_rank:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(21,119)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}












----대전 순위

g_pPictureText_ranking = g_pUIDialog:CreatePicture() 
g_pStaticIcon:AddPicture( g_pPictureText_ranking )

g_pPictureText_ranking:SetTex( "DLG_UI_Title01.TGA", "ranking" )

g_pPictureText_ranking:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(21,146)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




	
	
	
---------BAR

g_pPictureBar1 = g_pUIDialog:CreatePicture() 
g_pStaticInfo:AddPicture( g_pPictureBar1 )

g_pPictureBar1:SetTex( "DLG_UI_Common_Texture01.TGA", "BAR1" )

g_pPictureBar1:SetPoint
{
   ADD_SIZE_X = 183,
	"LEFT_TOP		= D3DXVECTOR2(19,115)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
	
	}
	
	
g_pPictureBar2 = g_pUIDialog:CreatePicture() 
g_pStaticInfo:AddPicture( g_pPictureBar2 )

g_pPictureBar2:SetTex( "DLG_UI_Common_Texture01.TGA", "BAR1" )

g_pPictureBar2:SetPoint
{
   ADD_SIZE_X = 183,
	"LEFT_TOP		= D3DXVECTOR2(19,141)",
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


 	"LEFT_TOP		= D3DXVECTOR2(183,14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(179,10)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetDownPoint
{
     ADD_SIZE_X = -2 ,
	  ADD_SIZE_Y = -2 ,

 	"LEFT_TOP		= D3DXVECTOR2(179+1,10+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetCustomMsgMouseUp( STATE_UI_CUSTOM_MSG["SUCM_USER_INFO_OK"] )

