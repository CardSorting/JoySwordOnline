-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStaticMission_Opening_Text = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMission_Opening_Text )
g_pStaticMission_Opening_Text:SetName( "g_pStaticMission_Opening_Text" )


g_pPictureMission_Bg_Black = g_pUIDialog:CreatePicture()
g_pStaticMission_Opening_Text:AddPicture( g_pPictureMission_Bg_Black )

g_pPictureMission_Bg_Black:SetTex( "DLG_Common_New_Texture22.tga", "PVP_RESULT_TITLE_BGWHITE" )

g_pPictureMission_Bg_Black:SetPoint
{
        ADD_SIZE_X=344,
		ADD_SIZE_Y=203,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",

	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	CHANGE_TIME     	= 0.0,
}





g_pPictureMission_Text = g_pUIDialog:CreatePicture()
g_pStaticMission_Opening_Text:AddPicture( g_pPictureMission_Text )

g_pPictureMission_Text:SetTex( "DLG_Common_New_Texture42.tga", "Mission" )

g_pPictureMission_Text:SetPoint
{
       
	"LEFT_TOP		= D3DXVECTOR2(226,22)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}






    g_pStaticMission_Title = g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticMission_Title )
 	g_pStaticMission_Title:SetName( "StaticMission_Title" )

	 g_pStaticMission_Title:AddString
 	{
 	 MSG    		 = STR_ID_1128,
 	 FONT_INDEX      = XUF_DODUM_20_BOLD,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
 	 "POS            = D3DXVECTOR2(394,119)",
 	 "COLOR          = D3DXCOLOR(1.0,1.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 



    g_pStaticMission_Compensation = g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticMission_Compensation )
 	g_pStaticMission_Compensation:SetName( "StaticMission_Compensation" )

	 g_pStaticMission_Compensation:AddString
 	{
 	 MSG    		 = STR_ID_1129,
 	 FONT_INDEX      = XUF_DODUM_20_BOLD,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
 	 "POS            = D3DXVECTOR2(394,149)",
 	 "COLOR          = D3DXCOLOR(1.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 

