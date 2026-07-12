-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




g_pStaticMission_Window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMission_Window )
g_pStaticMission_Window:SetEnable( true )
g_pStaticMission_Window:SetName( "StaticMission_Window" )



g_pPicture_Mission_Window1 = g_pUIDialog:CreatePicture()
g_pStaticMission_Window:AddPicture( g_pPicture_Mission_Window1 )

g_pPicture_Mission_Window1:SetTex( "DLG_GameUI_Quest_Window.tga", "Mission_Window1" )

g_pPicture_Mission_Window1:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(764,134)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






g_pPicture_Mission_Title = g_pUIDialog:CreatePicture()
g_pStaticMission_Window:AddPicture( g_pPicture_Mission_Title )

g_pPicture_Mission_Title:SetTex( "DLG_GameUI_Quest_Window.tga", "Mission_Text" )

g_pPicture_Mission_Title:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(869,140)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPicture_Mission_Window2 = g_pUIDialog:CreatePicture()
g_pStaticMission_Window:AddPicture( g_pPicture_Mission_Window2 )

g_pPicture_Mission_Window2:SetTex( "DLG_GameUI_Quest_Window.tga", "Mission_Window2" )

g_pPicture_Mission_Window2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(776,194+20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}











	------------한줄 타이틀(미션 타이틀이 짧을경우)-------------- 
    g_pStaticMission_Title_OneLine = g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticMission_Title_OneLine )
 	g_pStaticMission_Title_OneLine:SetName( "StaticMission_Title_OneLine" )

	 g_pStaticMission_Title_OneLine:AddString
 	{
 	 MSG    		 = STR_ID_1130,
 	 FONT_INDEX      = XUF_DODUM_15_BOLD,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
 	 "POS            = D3DXVECTOR2(822+70,167+9)",
 	 "COLOR          = D3DXCOLOR(1.0,1.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
 
	 
	 --------두줄타이틀(미션타이틀이 길 경우)----------------- 
	 g_pStaticMission_Title_TwoLine = g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticMission_Title_TwoLine )
 	g_pStaticMission_Title_TwoLine:SetName( "StaticMission_Title_TwoLine" )

	 g_pStaticMission_Title_TwoLine:AddString
 	{
 	 MSG    		 = STR_ID_1131,
 	 FONT_INDEX      = XUF_DODUM_15_BOLD,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
 	 "POS            = D3DXVECTOR2(822+70,167)",
 	 "COLOR          = D3DXCOLOR(1.0,1.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 
	 
	
	 ------------보상---------------- 
	 g_pStaticCompensation = g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticCompensation )
 	g_pStaticCompensation:SetName( "StaticCompensation" )

	 g_pStaticCompensation:AddString
 	{
 	 -- MSG    		 = "EXP 200%",
 	 FONT_INDEX      = XUF_DODUM_15_BOLD,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
 	 "POS            = D3DXVECTOR2(859+32,200+23)",
 	 "COLOR          = D3DXCOLOR(1.0,0.0,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 







g_pStaticMission_Clear = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMission_Clear )
g_pStaticMission_Clear:SetEnable( true )
g_pStaticMission_Clear:SetName( "StaticMission_Clear" )

------------클리어이미지--------------- 

g_pPicture_Mission_Clear = g_pUIDialog:CreatePicture()
g_pStaticMission_Clear:AddPicture( g_pPicture_Mission_Clear )

g_pPicture_Mission_Clear:SetTex( "DLG_Common_New_Texture42.tga", "Mission_Clear" )

g_pPicture_Mission_Clear:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(817,139)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






g_pStaticMission_Failure = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMission_Failure )
g_pStaticMission_Failure:SetEnable( true )
g_pStaticMission_Failure:SetName( "StaticMission_Failure" )


-------------실패이미지------------------ 
g_pPicture_Mission_Failure = g_pUIDialog:CreatePicture()
g_pStaticMission_Failure:AddPicture( g_pPicture_Mission_Failure )

g_pPicture_Mission_Failure:SetTex( "DLG_Common_New_Texture42.tga", "Mission_Faiure" )

g_pPicture_Mission_Failure:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(811,139)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}	 
