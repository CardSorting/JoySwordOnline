-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




-----------------(레인벤토리)------------------------ 
g_pStaticPVP_Room_Inventory = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Room_Inventory )
g_pStaticPVP_Room_Inventory:SetName( "PVP_Room_Team_Equip" )




g_pPicturePVP_Room_Inventory1_1 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_Inventory:AddPicture( g_pPicturePVP_Room_Inventory1_1 )

g_pPicturePVP_Room_Inventory1_1:SetTex( "DLG_Common_New_Texture04.TGA", "wait" )

g_pPicturePVP_Room_Inventory1_1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(70-6-20,296-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePVP_Room_Inventory1_2 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_Inventory:AddPicture( g_pPicturePVP_Room_Inventory1_2 )

g_pPicturePVP_Room_Inventory1_2:SetTex( "DLG_Common_New_Texture04.TGA", "wait" )

g_pPicturePVP_Room_Inventory1_2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(252-6-13,296-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
} 


g_pPicturePVP_Room_Inventory1_3 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_Inventory:AddPicture( g_pPicturePVP_Room_Inventory1_3 )

g_pPicturePVP_Room_Inventory1_3:SetTex( "DLG_Common_New_Texture04.TGA", "wait" )

g_pPicturePVP_Room_Inventory1_3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(434-6-7,296-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
} 


g_pPicturePVP_Room_Inventory1_4 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_Inventory:AddPicture( g_pPicturePVP_Room_Inventory1_4 )

g_pPicturePVP_Room_Inventory1_4:SetTex( "DLG_Common_New_Texture04.TGA", "wait" )

g_pPicturePVP_Room_Inventory1_4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(616-6,296-6)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicturePVP_Room_Inventory2_1 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_Inventory:AddPicture( g_pPicturePVP_Room_Inventory2_1 )

g_pPicturePVP_Room_Inventory2_1:SetTex( "DLG_Common_New_Texture04.TGA", "wait" )

g_pPicturePVP_Room_Inventory2_1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(836-6+20-1,632-6-16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}  
     

g_pPicturePVP_Room_Inventory2_2 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_Inventory:AddPicture( g_pPicturePVP_Room_Inventory2_2 )

g_pPicturePVP_Room_Inventory2_2:SetTex( "DLG_Common_New_Texture04.TGA", "wait" )

g_pPicturePVP_Room_Inventory2_2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(654-6+16-1,632-6-16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
} 


g_pPicturePVP_Room_Inventory2_3 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_Inventory:AddPicture( g_pPicturePVP_Room_Inventory2_3 )

g_pPicturePVP_Room_Inventory2_3:SetTex( "DLG_Common_New_Texture04.TGA", "wait" )

g_pPicturePVP_Room_Inventory2_3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(472-6+11-1,632-6-16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
} 


g_pPicturePVP_Room_Inventory2_4 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_Inventory:AddPicture( g_pPicturePVP_Room_Inventory2_4 )

g_pPicturePVP_Room_Inventory2_4:SetTex( "DLG_Common_New_Texture04.TGA", "wait" )

g_pPicturePVP_Room_Inventory2_4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(290-3,632-6-16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
