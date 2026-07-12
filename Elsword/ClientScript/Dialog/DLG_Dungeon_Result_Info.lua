-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




-----------소요시간 랭크----------- 

g_pStaticResult_Time_Rank = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticResult_Time_Rank )
g_pStaticResult_Time_Rank:SetName( "Dungeon_Result_Time_Rank" )
g_pStaticResult_Time_Rank:SetShow( false )

g_pPictureTime_Rank_A = g_pUIDialog:CreatePicture()
g_pStaticResult_Time_Rank:AddPicture( g_pPictureTime_Rank_A )

g_pPictureTime_Rank_A:SetTex( "DLG_Common_Button01.tga", "Rank_A" )

g_pPictureTime_Rank_A:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(709+80-268+7,275+249-170+8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureTime_Rank_B = g_pUIDialog:CreatePicture()
g_pStaticResult_Time_Rank:AddPicture( g_pPictureTime_Rank_B )

g_pPictureTime_Rank_B:SetTex( "DLG_Common_Button01.tga", "Rank_B" )

g_pPictureTime_Rank_B:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(709+80-268+7,271+249-170+8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureTime_Rank_C = g_pUIDialog:CreatePicture()
g_pStaticResult_Time_Rank:AddPicture( g_pPictureTime_Rank_C )

g_pPictureTime_Rank_C:SetTex( "DLG_Common_Button01.tga", "Rank_C" )

g_pPictureTime_Rank_C:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(711+80-268+7,274+249-170+8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}







g_pPictureTime_Rank_A_Plus = g_pUIDialog:CreatePicture()
g_pStaticResult_Time_Rank:AddPicture( g_pPictureTime_Rank_A_Plus )

g_pPictureTime_Rank_A_Plus:SetTex( "DLG_Common_Button01.tga", "Rank_A_Plus" )

g_pPictureTime_Rank_A_Plus:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(699+80-268+7,271+249-170+8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureTime_Rank_B_Plus = g_pUIDialog:CreatePicture()
g_pStaticResult_Time_Rank:AddPicture( g_pPictureTime_Rank_B_Plus )

g_pPictureTime_Rank_B_Plus:SetTex( "DLG_Common_Button01.tga", "Rank_B_Plus" )

g_pPictureTime_Rank_B_Plus:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(699+80-268+7,271+249-170+8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPictureTime_Rank_C_Plus = g_pUIDialog:CreatePicture()
g_pStaticResult_Time_Rank:AddPicture( g_pPictureTime_Rank_C_Plus )

g_pPictureTime_Rank_C_Plus:SetTex( "DLG_Common_Button01.tga", "Rank_C_Plus" )

g_pPictureTime_Rank_C_Plus:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(704+80-268+7,271+249-170+8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPictureTime_Rank_D = g_pUIDialog:CreatePicture()
g_pStaticResult_Time_Rank:AddPicture( g_pPictureTime_Rank_D )

g_pPictureTime_Rank_D:SetTex( "DLG_Common_Button01.tga", "Rank_D" )

g_pPictureTime_Rank_D:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(709+80-268+7,275+249-170+8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureTime_Rank_E = g_pUIDialog:CreatePicture()
g_pStaticResult_Time_Rank:AddPicture( g_pPictureTime_Rank_E )

g_pPictureTime_Rank_E:SetTex( "DLG_Common_Button01.tga", "Rank_E" )

g_pPictureTime_Rank_E:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(709+80-268+7,275+249-170+8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureTime_Rank_F = g_pUIDialog:CreatePicture()
g_pStaticResult_Time_Rank:AddPicture( g_pPictureTime_Rank_F )

g_pPictureTime_Rank_F:SetTex( "DLG_Common_Button01.tga", "Rank_F" )

g_pPictureTime_Rank_F:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(709+80-268+7,275+249-170+8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureTime_Rank_S = g_pUIDialog:CreatePicture()
g_pStaticResult_Time_Rank:AddPicture( g_pPictureTime_Rank_S )

g_pPictureTime_Rank_S:SetTex( "DLG_Common_Button01.tga", "Rank_S" )

g_pPictureTime_Rank_S:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(715+80-268+7,274+249-170+8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureTime_Rank_SS = g_pUIDialog:CreatePicture()
g_pStaticResult_Time_Rank:AddPicture( g_pPictureTime_Rank_SS )

g_pPictureTime_Rank_SS:SetTex( "DLG_Common_Button01.tga", "Rank_SS" )

g_pPictureTime_Rank_SS:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(706+80-268+7,272+249-170+8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}











-------------데미지랭크---------------- 
g_pStaticResult_Damaged_Rank = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticResult_Damaged_Rank )
g_pStaticResult_Damaged_Rank:SetName( "Dungeon_Result_Damaged_Rank" )
g_pStaticResult_Damaged_Rank:SetShow( false )

g_pPictureDamage_Rank_A = g_pUIDialog:CreatePicture()
g_pStaticResult_Damaged_Rank:AddPicture( g_pPictureDamage_Rank_A )

g_pPictureDamage_Rank_A:SetTex( "DLG_Common_Button01.tga", "Rank_A" )

g_pPictureDamage_Rank_A:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(709+80-12+6,275+355-279+11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureDamage_Rank_B = g_pUIDialog:CreatePicture()
g_pStaticResult_Damaged_Rank:AddPicture( g_pPictureDamage_Rank_B )

g_pPictureDamage_Rank_B:SetTex( "DLG_Common_Button01.tga", "Rank_B" )

g_pPictureDamage_Rank_B:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(709+80-12+6,271+355-279+11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureDamage_Rank_C = g_pUIDialog:CreatePicture()
g_pStaticResult_Damaged_Rank:AddPicture( g_pPictureDamage_Rank_C )

g_pPictureDamage_Rank_C:SetTex( "DLG_Common_Button01.tga", "Rank_C" )

g_pPictureDamage_Rank_C:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(711+80-12+6,274+355-279+11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}







g_pPictureDamage_Rank_A_Plus = g_pUIDialog:CreatePicture()
g_pStaticResult_Damaged_Rank:AddPicture( g_pPictureDamage_Rank_A_Plus )

g_pPictureDamage_Rank_A_Plus:SetTex( "DLG_Common_Button01.tga", "Rank_A_Plus" )

g_pPictureDamage_Rank_A_Plus:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(699+80-12+6,271+355-279+11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






g_pPictureDamage_Rank_B_Plus = g_pUIDialog:CreatePicture()
g_pStaticResult_Damaged_Rank:AddPicture( g_pPictureDamage_Rank_B_Plus )

g_pPictureDamage_Rank_B_Plus:SetTex( "DLG_Common_Button01.tga", "Rank_B_Plus" )

g_pPictureDamage_Rank_B_Plus:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(699+80-12+6,271+355-279+11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureDamage_Rank_C_Plus = g_pUIDialog:CreatePicture()
g_pStaticResult_Damaged_Rank:AddPicture( g_pPictureDamage_Rank_C_Plus )

g_pPictureDamage_Rank_C_Plus:SetTex( "DLG_Common_Button01.tga", "Rank_C_Plus" )

g_pPictureDamage_Rank_C_Plus:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(704+80-12+6,271+355-279+11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureDamage_Rank_D = g_pUIDialog:CreatePicture()
g_pStaticResult_Damaged_Rank:AddPicture( g_pPictureDamage_Rank_D )

g_pPictureDamage_Rank_D:SetTex( "DLG_Common_Button01.tga", "Rank_D" )

g_pPictureDamage_Rank_D:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(709+80-12+6,275+355-279+11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureDamage_Rank_E = g_pUIDialog:CreatePicture()
g_pStaticResult_Damaged_Rank:AddPicture( g_pPictureDamage_Rank_E )

g_pPictureDamage_Rank_E:SetTex( "DLG_Common_Button01.tga", "Rank_E" )

g_pPictureDamage_Rank_E:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(709+80-12+6,275+355-279+11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureDamage_Rank_F = g_pUIDialog:CreatePicture()
g_pStaticResult_Damaged_Rank:AddPicture( g_pPictureDamage_Rank_F )

g_pPictureDamage_Rank_F:SetTex( "DLG_Common_Button01.tga", "Rank_F" )

g_pPictureDamage_Rank_F:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(709+80-12+6,275+355-279+11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureDamage_Rank_S = g_pUIDialog:CreatePicture()
g_pStaticResult_Damaged_Rank:AddPicture( g_pPictureDamage_Rank_S )

g_pPictureDamage_Rank_S:SetTex( "DLG_Common_Button01.tga", "Rank_S" )

g_pPictureDamage_Rank_S:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(715+80-12+6,274+355-279+11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureDamage_Rank_SS = g_pUIDialog:CreatePicture()
g_pStaticResult_Damaged_Rank:AddPicture( g_pPictureDamage_Rank_SS )

g_pPictureDamage_Rank_SS:SetTex( "DLG_Common_Button01.tga", "Rank_SS" )

g_pPictureDamage_Rank_SS:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(706+80-12+6,272+355-279+11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}









------------콤보랭크--------------- 


g_pStaticResult_Combo_Rank = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticResult_Combo_Rank )
g_pStaticResult_Combo_Rank:SetName( "Dungeon_Result_Combo_Rank" )
g_pStaticResult_Combo_Rank:SetShow( false )

g_pPictureCombo_Score_Rank_A = g_pUIDialog:CreatePicture()
g_pStaticResult_Combo_Rank:AddPicture( g_pPictureCombo_Score_Rank_A )

g_pPictureCombo_Score_Rank_A:SetTex( "DLG_Common_Button01.tga", "Rank_A" )

g_pPictureCombo_Score_Rank_A:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(709-226,275+267)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureCombo_Score_Rank_B = g_pUIDialog:CreatePicture()
g_pStaticResult_Combo_Rank:AddPicture( g_pPictureCombo_Score_Rank_B )

g_pPictureCombo_Score_Rank_B:SetTex( "DLG_Common_Button01.tga", "Rank_B" )

g_pPictureCombo_Score_Rank_B:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(709-226,271+267)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCombo_Score_Rank_C = g_pUIDialog:CreatePicture()
g_pStaticResult_Combo_Rank:AddPicture( g_pPictureCombo_Score_Rank_C )

g_pPictureCombo_Score_Rank_C:SetTex( "DLG_Common_Button01.tga", "Rank_C" )

g_pPictureCombo_Score_Rank_C:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(711-226,274+267)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPictureCombo_Score_Rank_A_Plus = g_pUIDialog:CreatePicture()
g_pStaticResult_Combo_Rank:AddPicture( g_pPictureCombo_Score_Rank_A_Plus )

g_pPictureCombo_Score_Rank_A_Plus:SetTex( "DLG_Common_Button01.tga", "Rank_A_Plus" )

g_pPictureCombo_Score_Rank_A_Plus:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(699-226,271+267)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






g_pPictureCombo_Score_Rank_B_Plus = g_pUIDialog:CreatePicture()
g_pStaticResult_Combo_Rank:AddPicture( g_pPictureCombo_Score_Rank_B_Plus )

g_pPictureCombo_Score_Rank_B_Plus:SetTex( "DLG_Common_Button01.tga", "Rank_B_Plus" )

g_pPictureCombo_Score_Rank_B_Plus:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(699-226,271+267)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPictureCombo_Score_Rank_C_Plus = g_pUIDialog:CreatePicture()
g_pStaticResult_Combo_Rank:AddPicture( g_pPictureCombo_Score_Rank_C_Plus )

g_pPictureCombo_Score_Rank_C_Plus:SetTex( "DLG_Common_Button01.tga", "Rank_C_Plus" )

g_pPictureCombo_Score_Rank_C_Plus:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(704-226,271+267)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPictureCombo_Score_Rank_D = g_pUIDialog:CreatePicture()
g_pStaticResult_Combo_Rank:AddPicture( g_pPictureCombo_Score_Rank_D )

g_pPictureCombo_Score_Rank_D:SetTex( "DLG_Common_Button01.tga", "Rank_D" )

g_pPictureCombo_Score_Rank_D:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(709-226,275+267)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureCombo_Score_Rank_E = g_pUIDialog:CreatePicture()
g_pStaticResult_Combo_Rank:AddPicture( g_pPictureCombo_Score_Rank_E )

g_pPictureCombo_Score_Rank_E:SetTex( "DLG_Common_Button01.tga", "Rank_E" )

g_pPictureCombo_Score_Rank_E:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(709-226,275+267)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureCombo_Score_Rank_F = g_pUIDialog:CreatePicture()
g_pStaticResult_Combo_Rank:AddPicture( g_pPictureCombo_Score_Rank_F )

g_pPictureCombo_Score_Rank_F:SetTex( "DLG_Common_Button01.tga", "Rank_F" )

g_pPictureCombo_Score_Rank_F:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(709-226,275+267)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCombo_Score_Rank_S = g_pUIDialog:CreatePicture()
g_pStaticResult_Combo_Rank:AddPicture( g_pPictureCombo_Score_Rank_S )

g_pPictureCombo_Score_Rank_S:SetTex( "DLG_Common_Button01.tga", "Rank_S" )

g_pPictureCombo_Score_Rank_S:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(715-226,274+267)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureCombo_Score_Rank_SS = g_pUIDialog:CreatePicture()
g_pStaticResult_Combo_Rank:AddPicture( g_pPictureCombo_Score_Rank_SS )

g_pPictureCombo_Score_Rank_SS:SetTex( "DLG_Common_Button01.tga", "Rank_SS" )

g_pPictureCombo_Score_Rank_SS:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(706-226,272+267)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}










----------테크니컬랭크---------------- 

g_pStaticResult_Techninal = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticResult_Techninal )
g_pStaticResult_Techninal:SetName( "Dungeon_Result_Technical_Rank" )
g_pStaticResult_Techninal:SetShow( false )


g_pPictureCombo_Technical_Rank_A = g_pUIDialog:CreatePicture()
g_pStaticResult_Techninal:AddPicture( g_pPictureCombo_Technical_Rank_A )

g_pPictureCombo_Technical_Rank_A:SetTex( "DLG_Common_Button01.tga", "Rank_A" )

g_pPictureCombo_Technical_Rank_A:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(709+230-223,275+267)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCombo_Technical_Rank_B = g_pUIDialog:CreatePicture()
g_pStaticResult_Techninal:AddPicture( g_pPictureCombo_Technical_Rank_B )

g_pPictureCombo_Technical_Rank_B:SetTex( "DLG_Common_Button01.tga", "Rank_B" )

g_pPictureCombo_Technical_Rank_B:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(709+230-223,271+267)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureCombo_Technical_Rank_C = g_pUIDialog:CreatePicture()
g_pStaticResult_Techninal:AddPicture( g_pPictureCombo_Technical_Rank_C )

g_pPictureCombo_Technical_Rank_C:SetTex( "DLG_Common_Button01.tga", "Rank_C" )

g_pPictureCombo_Technical_Rank_C:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(711+230-223,274+267)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPictureCombo_Technical_Rank_A_Plus = g_pUIDialog:CreatePicture()
g_pStaticResult_Techninal:AddPicture( g_pPictureCombo_Technical_Rank_A_Plus )

g_pPictureCombo_Technical_Rank_A_Plus:SetTex( "DLG_Common_Button01.tga", "Rank_A_Plus" )

g_pPictureCombo_Technical_Rank_A_Plus:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(699+230-223,271+267)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureCombo_Technical_Rank_B_Plus = g_pUIDialog:CreatePicture()
g_pStaticResult_Techninal:AddPicture( g_pPictureCombo_Technical_Rank_B_Plus )

g_pPictureCombo_Technical_Rank_B_Plus:SetTex( "DLG_Common_Button01.tga", "Rank_B_Plus" )

g_pPictureCombo_Technical_Rank_B_Plus:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(699+230-223,271+267)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPictureCombo_Technical_Rank_C_Plus = g_pUIDialog:CreatePicture()
g_pStaticResult_Techninal:AddPicture( g_pPictureCombo_Technical_Rank_C_Plus )

g_pPictureCombo_Technical_Rank_C_Plus:SetTex( "DLG_Common_Button01.tga", "Rank_C_Plus" )

g_pPictureCombo_Technical_Rank_C_Plus:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(704+230-223,271+267)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureCombo_Technical_Rank_D = g_pUIDialog:CreatePicture()
g_pStaticResult_Techninal:AddPicture( g_pPictureCombo_Technical_Rank_D )

g_pPictureCombo_Technical_Rank_D:SetTex( "DLG_Common_Button01.tga", "Rank_D" )

g_pPictureCombo_Technical_Rank_D:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(709+230-223,275+267)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureCombo_Technical_Rank_E = g_pUIDialog:CreatePicture()
g_pStaticResult_Techninal:AddPicture( g_pPictureCombo_Technical_Rank_E )

g_pPictureCombo_Technical_Rank_E:SetTex( "DLG_Common_Button01.tga", "Rank_E" )

g_pPictureCombo_Technical_Rank_E:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(709+230-223,275+267)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureCombo_Technical_Rank_F = g_pUIDialog:CreatePicture()
g_pStaticResult_Techninal:AddPicture( g_pPictureCombo_Technical_Rank_F )

g_pPictureCombo_Technical_Rank_F:SetTex( "DLG_Common_Button01.tga", "Rank_F" )

g_pPictureCombo_Technical_Rank_F:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(709+230-223,275+267)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureCombo_Technical_Rank_S = g_pUIDialog:CreatePicture()
g_pStaticResult_Techninal:AddPicture( g_pPictureCombo_Technical_Rank_S )

g_pPictureCombo_Technical_Rank_S:SetTex( "DLG_Common_Button01.tga", "Rank_S" )

g_pPictureCombo_Technical_Rank_S:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(715+230-223,274+267)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureTechnical_Technical_Rank_SS = g_pUIDialog:CreatePicture()
g_pStaticResult_Techninal:AddPicture( g_pPictureTechnical_Technical_Rank_SS )

g_pPictureTechnical_Technical_Rank_SS:SetTex( "DLG_Common_Button01.tga", "Rank_SS" )

g_pPictureTechnical_Technical_Rank_SS:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(706+230-223,272+267)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}









 





---------------유저캐릭이미지 흑백1-------------


g_pStaticResult_Charic_Image_Other_0 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticResult_Charic_Image_Other_0 )
g_pStaticResult_Charic_Image_Other_0:SetName( "Dungeon_Result_Party_Rank" )

								            
g_pPictureResult_Charic_Image_Other_0 = g_pUIDialog:CreatePicture()
g_pStaticResult_Charic_Image_Other_0:AddPicture( g_pPictureResult_Charic_Image_Other_0 )
g_pPictureResult_Charic_Image_Other_0:SetShow( false )

g_pPictureResult_Charic_Image_Other_0:SetTex( "DLG_Common_New_Texture16.tga", "TRADE_BG_BLACK" )

g_pPictureResult_Charic_Image_Other_0:SetPoint
{
	
	USE_TEXTURE_SIZE = FALSE, 

	"LEFT_TOP		= D3DXVECTOR2(13,577)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(149,713)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



								            
g_pPictureResult_Charic_Image_Other_1 = g_pUIDialog:CreatePicture()
g_pStaticResult_Charic_Image_Other_0:AddPicture( g_pPictureResult_Charic_Image_Other_1 )
g_pPictureResult_Charic_Image_Other_1:SetShow( false )
g_pPictureResult_Charic_Image_Other_1:SetTex( "DLG_Common_New_Texture16.tga", "TRADE_BG_BLACK" )

g_pPictureResult_Charic_Image_Other_1:SetPoint
{
	
	USE_TEXTURE_SIZE = FALSE, 

	"LEFT_TOP		= D3DXVECTOR2(153,577)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(289,713)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




								            
g_pPictureResult_Charic_Image_Other_2 = g_pUIDialog:CreatePicture()
g_pStaticResult_Charic_Image_Other_0:AddPicture( g_pPictureResult_Charic_Image_Other_2 )
g_pPictureResult_Charic_Image_Other_2:SetShow( false )
g_pPictureResult_Charic_Image_Other_2:SetTex( "DLG_Common_New_Texture16.tga", "TRADE_BG_BLACK" )

g_pPictureResult_Charic_Image_Other_2:SetPoint
{
	
	USE_TEXTURE_SIZE = FALSE, 

	"LEFT_TOP		= D3DXVECTOR2(293,577)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(429,713)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}









    g_pStaticDungeon_Result_User_Level1= g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticDungeon_Result_User_Level1)
 	g_pStaticDungeon_Result_User_Level1:SetName( "Dungeon_Result_Other0_Desc" )

     g_pStaticDungeon_Result_User_Level1:AddString
    {
 	 -- MSG    		 = "",
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(20,584)",
 	 "COLOR          = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	 }
	 
	 
	 
	 g_pStaticDungeon_Result_User_Id1= g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticDungeon_Result_User_Id1)
 	g_pStaticDungeon_Result_User_Id1:SetName( "Dungeon_Result_Other0_ID" )

     g_pStaticDungeon_Result_User_Id1:AddString
    {
 	 -- MSG    		 = "",
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(20,598)",
 	 "COLOR          = D3DXCOLOR(1.0,0.8,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 

--------------던전랭크-----------




g_pStaticResult_Other_User_Rank1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticResult_Other_User_Rank1 )
g_pStaticResult_Other_User_Rank1:SetName( "Dungeon_Result_Other0_Rank" )
g_pStaticResult_Other_User_Rank1:SetShow( false )

g_pPictureOther_Rank1_A = g_pUIDialog:CreatePicture()
g_pStaticResult_Other_User_Rank1:AddPicture( g_pPictureOther_Rank1_A )

g_pPictureOther_Rank1_A:SetTex( "DLG_Common_Button01.tga", "Rank_A" )

g_pPictureOther_Rank1_A:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(709-617+11,275-182+600)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureOther_Rank1_B = g_pUIDialog:CreatePicture()
g_pStaticResult_Other_User_Rank1:AddPicture( g_pPictureOther_Rank1_B )

g_pPictureOther_Rank1_B:SetTex( "DLG_Common_Button01.tga", "Rank_B" )

g_pPictureOther_Rank1_B:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(709-617+11,271-182+600)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureOther_Rank1_C = g_pUIDialog:CreatePicture()
g_pStaticResult_Other_User_Rank1:AddPicture( g_pPictureOther_Rank1_C )

g_pPictureOther_Rank1_C:SetTex( "DLG_Common_Button01.tga", "Rank_C" )

g_pPictureOther_Rank1_C:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(711-617+11,274-182+600)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPictureOther_Rank1_A_Plus = g_pUIDialog:CreatePicture()
g_pStaticResult_Other_User_Rank1:AddPicture( g_pPictureOther_Rank1_A_Plus )

g_pPictureOther_Rank1_A_Plus:SetTex( "DLG_Common_Button01.tga", "Rank_A_Plus" )

g_pPictureOther_Rank1_A_Plus:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(699-617+11,271-182+600)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






g_pPictureOther_Rank1_B_Plus = g_pUIDialog:CreatePicture()
g_pStaticResult_Other_User_Rank1:AddPicture( g_pPictureOther_Rank1_B_Plus )

g_pPictureOther_Rank1_B_Plus:SetTex( "DLG_Common_Button01.tga", "Rank_B_Plus" )

g_pPictureOther_Rank1_B_Plus:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(699-617+11,271-182+600)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPictureOther_Rank1_C_Plus = g_pUIDialog:CreatePicture()
g_pStaticResult_Other_User_Rank1:AddPicture( g_pPictureOther_Rank1_C_Plus )

g_pPictureOther_Rank1_C_Plus:SetTex( "DLG_Common_Button01.tga", "Rank_C_Plus" )

g_pPictureOther_Rank1_C_Plus:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(704-617+11,271-182+600)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPictureOther_Rank1_D = g_pUIDialog:CreatePicture()
g_pStaticResult_Other_User_Rank1:AddPicture( g_pPictureOther_Rank1_D )

g_pPictureOther_Rank1_D:SetTex( "DLG_Common_Button01.tga", "Rank_D" )

g_pPictureOther_Rank1_D:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(709-617+11,275-182+600)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureOther_Rank1_E = g_pUIDialog:CreatePicture()
g_pStaticResult_Other_User_Rank1:AddPicture( g_pPictureOther_Rank1_E )

g_pPictureOther_Rank1_E:SetTex( "DLG_Common_Button01.tga", "Rank_E" )

g_pPictureOther_Rank1_E:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(709-617+11,275-182+600)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureOther_Rank1_F = g_pUIDialog:CreatePicture()
g_pStaticResult_Other_User_Rank1:AddPicture( g_pPictureOther_Rank1_F )

g_pPictureOther_Rank1_F:SetTex( "DLG_Common_Button01.tga", "Rank_F" )

g_pPictureOther_Rank1_F:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(709-617+11,275-182+600)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureOther_Rank1_S = g_pUIDialog:CreatePicture()
g_pStaticResult_Other_User_Rank1:AddPicture( g_pPictureOther_Rank1_S )

g_pPictureOther_Rank1_S:SetTex( "DLG_Common_Button01.tga", "Rank_S" )

g_pPictureOther_Rank1_S:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(715-617+11,274-182+600)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureOther_Rank1_SS = g_pUIDialog:CreatePicture()
g_pStaticResult_Other_User_Rank1:AddPicture( g_pPictureOther_Rank1_SS )

g_pPictureOther_Rank1_SS:SetTex( "DLG_Common_Button01.tga", "Rank_SS" )

g_pPictureOther_Rank1_SS:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(706-617+11,272-182+600)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}














g_pStaticDungeon_Result_User_Level2= g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticDungeon_Result_User_Level2)
 	g_pStaticDungeon_Result_User_Level2:SetName( "Dungeon_Result_Other1_Desc" )


     g_pStaticDungeon_Result_User_Level2:AddString
    {
 	 -- MSG    		 = "",
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(161,584)",
 	 "COLOR          = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	 }
	 
	 
	 
	 g_pStaticDungeon_Result_User_Id2= g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticDungeon_Result_User_Id2)
 	g_pStaticDungeon_Result_User_Id2:SetName( "Dungeon_Result_Other1_ID" )

     g_pStaticDungeon_Result_User_Id2:AddString
    {
 	 -- MSG    		 = "",
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(161,598)",
 	 "COLOR          = D3DXCOLOR(1.0,0.8,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 


g_pStaticResult_Other_User_Rank2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticResult_Other_User_Rank2 )
g_pStaticResult_Other_User_Rank2:SetName( "Dungeon_Result_Other1_Rank" )
g_pStaticResult_Other_User_Rank2:SetShow( false )

g_pPictureOther_Rank2_A = g_pUIDialog:CreatePicture()
g_pStaticResult_Other_User_Rank2:AddPicture( g_pPictureOther_Rank2_A )

g_pPictureOther_Rank2_A:SetTex( "DLG_Common_Button01.tga", "Rank_A" )

g_pPictureOther_Rank2_A:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(709-617+153,275-182+600)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureOther_Rank2_B = g_pUIDialog:CreatePicture()
g_pStaticResult_Other_User_Rank2:AddPicture( g_pPictureOther_Rank2_B )

g_pPictureOther_Rank2_B:SetTex( "DLG_Common_Button01.tga", "Rank_B" )

g_pPictureOther_Rank2_B:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(709-617+153,271-182+600)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureOther_Rank2_C = g_pUIDialog:CreatePicture()
g_pStaticResult_Other_User_Rank2:AddPicture( g_pPictureOther_Rank2_C )

g_pPictureOther_Rank2_C:SetTex( "DLG_Common_Button01.tga", "Rank_C" )

g_pPictureOther_Rank2_C:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(711-617+153,274-182+600)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPictureOther_Rank2_A_Plus = g_pUIDialog:CreatePicture()
g_pStaticResult_Other_User_Rank2:AddPicture( g_pPictureOther_Rank2_A_Plus )

g_pPictureOther_Rank2_A_Plus:SetTex( "DLG_Common_Button01.tga", "Rank_A_Plus" )

g_pPictureOther_Rank2_A_Plus:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(699-617+153,271-182+600)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






g_pPictureOther_Rank2_B_Plus = g_pUIDialog:CreatePicture()
g_pStaticResult_Other_User_Rank2:AddPicture( g_pPictureOther_Rank2_B_Plus )

g_pPictureOther_Rank2_B_Plus:SetTex( "DLG_Common_Button01.tga", "Rank_B_Plus" )

g_pPictureOther_Rank2_B_Plus:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(699-617+153,271-182+600)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPictureOther_Rank2_C_Plus = g_pUIDialog:CreatePicture()
g_pStaticResult_Other_User_Rank2:AddPicture( g_pPictureOther_Rank2_C_Plus )

g_pPictureOther_Rank2_C_Plus:SetTex( "DLG_Common_Button01.tga", "Rank_C_Plus" )

g_pPictureOther_Rank2_C_Plus:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(704-617+153,271-182+600)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPictureOther_Rank2_D = g_pUIDialog:CreatePicture()
g_pStaticResult_Other_User_Rank2:AddPicture( g_pPictureOther_Rank2_D )

g_pPictureOther_Rank2_D:SetTex( "DLG_Common_Button01.tga", "Rank_D" )

g_pPictureOther_Rank2_D:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(709-617+153,275-182+600)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureOther_Rank2_E = g_pUIDialog:CreatePicture()
g_pStaticResult_Other_User_Rank2:AddPicture( g_pPictureOther_Rank2_E )

g_pPictureOther_Rank2_E:SetTex( "DLG_Common_Button01.tga", "Rank_E" )

g_pPictureOther_Rank2_E:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(709-617+153,275-182+600)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureOther_Rank2_F = g_pUIDialog:CreatePicture()
g_pStaticResult_Other_User_Rank2:AddPicture( g_pPictureOther_Rank2_F )

g_pPictureOther_Rank2_F:SetTex( "DLG_Common_Button01.tga", "Rank_F" )

g_pPictureOther_Rank2_F:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(709-617+153,275-182+600)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureOther_Rank2_S = g_pUIDialog:CreatePicture()
g_pStaticResult_Other_User_Rank2:AddPicture( g_pPictureOther_Rank2_S )

g_pPictureOther_Rank2_S:SetTex( "DLG_Common_Button01.tga", "Rank_S" )

g_pPictureOther_Rank2_S:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(715-617+153,274-182+600)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureOther_Rank2_SS = g_pUIDialog:CreatePicture()
g_pStaticResult_Other_User_Rank2:AddPicture( g_pPictureOther_Rank2_SS )

g_pPictureOther_Rank2_SS:SetTex( "DLG_Common_Button01.tga", "Rank_SS" )

g_pPictureOther_Rank2_SS:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(706-617+153,272-182+600)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}










g_pStaticDungeon_Result_User_Level3= g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticDungeon_Result_User_Level3)
 	g_pStaticDungeon_Result_User_Level3:SetName( "Dungeon_Result_Other2_Desc" )

     g_pStaticDungeon_Result_User_Level3:AddString
    {
 	 -- MSG    		 = "",
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(301,584)",
 	 "COLOR          = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	 }
	 
	 
	 
	 g_pStaticDungeon_Result_User_Id3= g_pUIDialog:CreateStatic()
 	g_pUIDialog:AddControl( g_pStaticDungeon_Result_User_Id3)
 	g_pStaticDungeon_Result_User_Id3:SetName( "Dungeon_Result_Other2_ID" )

     g_pStaticDungeon_Result_User_Id3:AddString
    {
 	 -- MSG    		 = "",
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(301,598)",
 	 "COLOR          = D3DXCOLOR(1.0,0.8,0.0,1.0)",
	 "OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
	 }
	 



g_pStaticResult_Other_User_Rank3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticResult_Other_User_Rank3 )
g_pStaticResult_Other_User_Rank3:SetName( "Dungeon_Result_Other2_Rank" )
g_pStaticResult_Other_User_Rank3:SetShow( false )

g_pPictureOther_Rank3_A = g_pUIDialog:CreatePicture()
g_pStaticResult_Other_User_Rank3:AddPicture( g_pPictureOther_Rank3_A )

g_pPictureOther_Rank3_A:SetTex( "DLG_Common_Button01.tga", "Rank_A" )

g_pPictureOther_Rank3_A:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(709-617+293,275-182+600)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureOther_Rank3_B = g_pUIDialog:CreatePicture()
g_pStaticResult_Other_User_Rank3:AddPicture( g_pPictureOther_Rank3_B )

g_pPictureOther_Rank3_B:SetTex( "DLG_Common_Button01.tga", "Rank_B" )

g_pPictureOther_Rank3_B:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(709-617+293,271-182+600)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureOther_Rank3_C = g_pUIDialog:CreatePicture()
g_pStaticResult_Other_User_Rank3:AddPicture( g_pPictureOther_Rank3_C )

g_pPictureOther_Rank3_C:SetTex( "DLG_Common_Button01.tga", "Rank_C" )

g_pPictureOther_Rank3_C:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(711-617+293,274-182+600)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPictureOther_Rank3_A_Plus = g_pUIDialog:CreatePicture()
g_pStaticResult_Other_User_Rank3:AddPicture( g_pPictureOther_Rank3_A_Plus )

g_pPictureOther_Rank3_A_Plus:SetTex( "DLG_Common_Button01.tga", "Rank_A_Plus" )

g_pPictureOther_Rank3_A_Plus:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(699-617+293,271-182+600)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






g_pPictureOther_Rank3_B_Plus = g_pUIDialog:CreatePicture()
g_pStaticResult_Other_User_Rank3:AddPicture( g_pPictureOther_Rank3_B_Plus )

g_pPictureOther_Rank3_B_Plus:SetTex( "DLG_Common_Button01.tga", "Rank_B_Plus" )

g_pPictureOther_Rank3_B_Plus:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(699-617+293,271-182+600)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPictureOther_Rank3_C_Plus = g_pUIDialog:CreatePicture()
g_pStaticResult_Other_User_Rank3:AddPicture( g_pPictureOther_Rank3_C_Plus )

g_pPictureOther_Rank3_C_Plus:SetTex( "DLG_Common_Button01.tga", "Rank_C_Plus" )

g_pPictureOther_Rank3_C_Plus:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(704-617+293,271-182+600)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





g_pPictureOther_Rank3_D = g_pUIDialog:CreatePicture()
g_pStaticResult_Other_User_Rank3:AddPicture( g_pPictureOther_Rank3_D )

g_pPictureOther_Rank3_D:SetTex( "DLG_Common_Button01.tga", "Rank_D" )

g_pPictureOther_Rank3_D:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(709-617+293,275-182+600)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureOther_Rank3_E = g_pUIDialog:CreatePicture()
g_pStaticResult_Other_User_Rank3:AddPicture( g_pPictureOther_Rank3_E )

g_pPictureOther_Rank3_E:SetTex( "DLG_Common_Button01.tga", "Rank_E" )

g_pPictureOther_Rank3_E:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(709-617+293,275-182+600)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureOther_Rank3_F = g_pUIDialog:CreatePicture()
g_pStaticResult_Other_User_Rank3:AddPicture( g_pPictureOther_Rank3_F )

g_pPictureOther_Rank3_F:SetTex( "DLG_Common_Button01.tga", "Rank_F" )

g_pPictureOther_Rank3_F:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(709-617+293,275-182+600)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureOther_Rank3_S = g_pUIDialog:CreatePicture()
g_pStaticResult_Other_User_Rank3:AddPicture( g_pPictureOther_Rank3_S )

g_pPictureOther_Rank3_S:SetTex( "DLG_Common_Button01.tga", "Rank_S" )

g_pPictureOther_Rank3_S:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(715-617+293,274-182+600)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureOther_Rank3_SS = g_pUIDialog:CreatePicture()
g_pStaticResult_Other_User_Rank3:AddPicture( g_pPictureOther_Rank3_SS )

g_pPictureOther_Rank3_SS:SetTex( "DLG_Common_Button01.tga", "Rank_SS" )

g_pPictureOther_Rank3_SS:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(706-617+293,272-182+600)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





-----------------(PCroom)------------------------
g_pStaticDungeon_Result_PCRoom = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticDungeon_Result_PCRoom )
g_pStaticDungeon_Result_PCRoom:SetName( "Dungeon_Result_Other0_PCRoom" )
g_pStaticDungeon_Result_PCRoom:SetShow( false )



g_pPictureDungeon_Result_PCRoom1_1 = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Result_PCRoom:AddPicture( g_pPictureDungeon_Result_PCRoom1_1 )

g_pPictureDungeon_Result_PCRoom1_1:SetTex( "DLG_Common_Texture06.TGA", "PCRoom" )

g_pPictureDungeon_Result_PCRoom1_1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(62,562)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----------------(PCroom)------------------------
g_pStaticDungeon_Result_PCRoom = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticDungeon_Result_PCRoom )
g_pStaticDungeon_Result_PCRoom:SetName( "Dungeon_Result_Other1_PCRoom" )
g_pStaticDungeon_Result_PCRoom:SetShow( false )


g_pPictureDungeon_Result_PCRoom1_2 = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Result_PCRoom:AddPicture( g_pPictureDungeon_Result_PCRoom1_2 )

g_pPictureDungeon_Result_PCRoom1_2:SetTex( "DLG_Common_Texture06.TGA", "PCRoom" )

g_pPictureDungeon_Result_PCRoom1_2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(202,562)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----------------(PCroom)------------------------
g_pStaticDungeon_Result_PCRoom = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticDungeon_Result_PCRoom )
g_pStaticDungeon_Result_PCRoom:SetName( "Dungeon_Result_Other2_PCRoom" )
g_pStaticDungeon_Result_PCRoom:SetShow( false )


g_pPictureDungeon_Result_PCRoom1_3 = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Result_PCRoom:AddPicture( g_pPictureDungeon_Result_PCRoom1_3 )

g_pPictureDungeon_Result_PCRoom1_3:SetTex( "DLG_Common_Texture06.TGA", "PCRoom" )

g_pPictureDungeon_Result_PCRoom1_3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(342,562)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

































