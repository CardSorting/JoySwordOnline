-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.











g_pStaticDungeon_Result_Score= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticDungeon_Result_Score)
g_pStaticDungeon_Result_Score:SetName( "Dungeon_Result_TIME_AND_DAMAGED_Score_BG" )
g_pStaticDungeon_Result_Score:SetShow( false )

-----------던전점수-------------


g_pPictureDungeon_Result_ED_Window2 = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Result_Score:AddPicture( g_pPictureDungeon_Result_ED_Window2 )

g_pPictureDungeon_Result_ED_Window2:SetTex( "DLG_Common_New_Texture18.tga", "Dungeon_Result_Bg3" )

g_pPictureDungeon_Result_ED_Window2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(448,446)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPictureDungeon_Result_Exp_Window2 = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Result_Score:AddPicture( g_pPictureDungeon_Result_Exp_Window2 )

g_pPictureDungeon_Result_Exp_Window2:SetTex( "DLG_Common_New_Texture17.tga", "Result_Bg_Arrow1" )

g_pPictureDungeon_Result_Exp_Window2:SetPoint
{
        
	"LEFT_TOP		= D3DXVECTOR2(393,526)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


















 



 


































