-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.







g_pStaticReward_ED = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticReward_ED )
g_pStaticReward_ED:SetName( "Dungeon_Result_Item_BG" )
g_pStaticReward_ED:SetShow( false )



g_pPictureItem_Window_Bg1 = g_pUIDialog:CreatePicture()
g_pStaticReward_ED:AddPicture( g_pPictureItem_Window_Bg1 )

g_pPictureItem_Window_Bg1:SetTex( "DLG_Common_New_Texture17.tga", "Result_Bg_TakeItem" )

g_pPictureItem_Window_Bg1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(506,196)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureItem_Window_Bg2 = g_pUIDialog:CreatePicture()
g_pStaticReward_ED:AddPicture( g_pPictureItem_Window_Bg2 )

g_pPictureItem_Window_Bg2:SetTex( "DLG_Common_New_Texture17.tga", "Result_Bg_TakeItem2" )

g_pPictureItem_Window_Bg2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(506,443)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureItem_Window_Bg3 = g_pUIDialog:CreatePicture()
g_pStaticReward_ED:AddPicture( g_pPictureItem_Window_Bg3 )

g_pPictureItem_Window_Bg3:SetTex( "DLG_Common_New_Texture17.tga", "Result_Bg_TakeItem3" )

g_pPictureItem_Window_Bg3:SetPoint
{
         ADD_SIZE_Y = 193,
	"LEFT_TOP		= D3DXVECTOR2(506,250)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}







g_pPictureExp_Window2 = g_pUIDialog:CreatePicture()
g_pStaticReward_ED:AddPicture( g_pPictureExp_Window2 )

g_pPictureExp_Window2:SetTex( "DLG_Common_New_Texture16.tga", "Result_Bg_TakeItem2" )

g_pPictureExp_Window2:SetPoint
{
        
	"LEFT_TOP		= D3DXVECTOR2(521,250)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureExp_Window3= g_pUIDialog:CreatePicture()
g_pStaticReward_ED:AddPicture( g_pPictureExp_Window3)

g_pPictureExp_Window3:SetTex( "DLG_Common_New_Texture16.tga", "Result_Bg_TakeItem4" )

g_pPictureExp_Window3:SetPoint
{
        
	"LEFT_TOP		= D3DXVECTOR2(986,250)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureExp_Window4= g_pUIDialog:CreatePicture()
g_pStaticReward_ED:AddPicture( g_pPictureExp_Window4)

g_pPictureExp_Window4:SetTex( "DLG_Common_New_Texture16.tga", "Result_Bg_TakeItem3" )

g_pPictureExp_Window4:SetPoint
{
        ADD_SIZE_X = 459,
	"LEFT_TOP		= D3DXVECTOR2(526,250)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureExp_Window5= g_pUIDialog:CreatePicture()
g_pStaticReward_ED:AddPicture( g_pPictureExp_Window5)

g_pPictureExp_Window5:SetTex( "DLG_Common_New_Texture17.tga", "Result_Bg_Arrow2" )

g_pPictureExp_Window5:SetPoint
{
        
	"LEFT_TOP		= D3DXVECTOR2(449,263)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--------아이템슬롯1--------------- 


g_pPictureItem_Slot1= g_pUIDialog:CreatePicture()
g_pStaticReward_ED:AddPicture( g_pPictureItem_Slot1)

g_pPictureItem_Slot1:SetTex( "DLG_Common_New_Texture02.dds", "Item_Slot1" )

g_pPictureItem_Slot1:SetPoint
{
       
	"LEFT_TOP		= D3DXVECTOR2(533,263)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureItem_Slot2= g_pUIDialog:CreatePicture()
g_pStaticReward_ED:AddPicture( g_pPictureItem_Slot2)

g_pPictureItem_Slot2:SetTex( "DLG_Common_New_Texture02.dds", "Item_Slot1" )

g_pPictureItem_Slot2:SetPoint
{
       
	"LEFT_TOP		= D3DXVECTOR2(533+57,263)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureItem_Slot3= g_pUIDialog:CreatePicture()
g_pStaticReward_ED:AddPicture( g_pPictureItem_Slot3)

g_pPictureItem_Slot3:SetTex( "DLG_Common_New_Texture02.dds", "Item_Slot1" )

g_pPictureItem_Slot3:SetPoint
{
       
	"LEFT_TOP		= D3DXVECTOR2(533+57+57,263)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureItem_Slot4= g_pUIDialog:CreatePicture()
g_pStaticReward_ED:AddPicture( g_pPictureItem_Slot4)

g_pPictureItem_Slot4:SetTex( "DLG_Common_New_Texture02.dds", "Item_Slot1" )

g_pPictureItem_Slot4:SetPoint
{
       
	"LEFT_TOP		= D3DXVECTOR2(533+57+57+57,263)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureItem_Slot5= g_pUIDialog:CreatePicture()
g_pStaticReward_ED:AddPicture( g_pPictureItem_Slot5)

g_pPictureItem_Slot5:SetTex( "DLG_Common_New_Texture02.dds", "Item_Slot1" )

g_pPictureItem_Slot5:SetPoint
{
       
	"LEFT_TOP		= D3DXVECTOR2(533+57+57+57+57,263)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureItem_Slot6= g_pUIDialog:CreatePicture()
g_pStaticReward_ED:AddPicture( g_pPictureItem_Slot6)

g_pPictureItem_Slot6:SetTex( "DLG_Common_New_Texture02.dds", "Item_Slot1" )

g_pPictureItem_Slot6:SetPoint
{
       
	"LEFT_TOP		= D3DXVECTOR2(533+57+57+57+57+57,263)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureItem_Slot7= g_pUIDialog:CreatePicture()
g_pStaticReward_ED:AddPicture( g_pPictureItem_Slot7)

g_pPictureItem_Slot7:SetTex( "DLG_Common_New_Texture02.dds", "Item_Slot1" )

g_pPictureItem_Slot7:SetPoint
{
       
	"LEFT_TOP		= D3DXVECTOR2(533+57+57+57+57+57+57,263)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureItem_Slot8= g_pUIDialog:CreatePicture()
g_pStaticReward_ED:AddPicture( g_pPictureItem_Slot8)

g_pPictureItem_Slot8:SetTex( "DLG_Common_New_Texture02.dds", "Item_Slot1" )

g_pPictureItem_Slot8:SetPoint
{
       
	"LEFT_TOP		= D3DXVECTOR2(533+57+57+57+57+57+57+57,263)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}














---------아이템슬롯2---------- 
g_pPictureItem_Slot1_2= g_pUIDialog:CreatePicture()
g_pStaticReward_ED:AddPicture( g_pPictureItem_Slot1_2)

g_pPictureItem_Slot1_2:SetTex( "DLG_Common_New_Texture02.dds", "Item_Slot1" )

g_pPictureItem_Slot1_2:SetPoint
{
       
	"LEFT_TOP		= D3DXVECTOR2(533,320)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureItem_Slot2_2= g_pUIDialog:CreatePicture()
g_pStaticReward_ED:AddPicture( g_pPictureItem_Slot2_2)

g_pPictureItem_Slot2_2:SetTex( "DLG_Common_New_Texture02.dds", "Item_Slot1" )

g_pPictureItem_Slot2_2:SetPoint
{
       
	"LEFT_TOP		= D3DXVECTOR2(533+57,320)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureItem_Slot3_2= g_pUIDialog:CreatePicture()
g_pStaticReward_ED:AddPicture( g_pPictureItem_Slot3_2)

g_pPictureItem_Slot3_2:SetTex( "DLG_Common_New_Texture02.dds", "Item_Slot1" )

g_pPictureItem_Slot3_2:SetPoint
{
       
	"LEFT_TOP		= D3DXVECTOR2(533+57+57,320)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureItem_Slot4_2= g_pUIDialog:CreatePicture()
g_pStaticReward_ED:AddPicture( g_pPictureItem_Slot4_2)

g_pPictureItem_Slot4_2:SetTex( "DLG_Common_New_Texture02.dds", "Item_Slot1" )

g_pPictureItem_Slot4_2:SetPoint
{
       
	"LEFT_TOP		= D3DXVECTOR2(533+57+57+57,320)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureItem_Slot5_2= g_pUIDialog:CreatePicture()
g_pStaticReward_ED:AddPicture( g_pPictureItem_Slot5_2)

g_pPictureItem_Slot5_2:SetTex( "DLG_Common_New_Texture02.dds", "Item_Slot1" )

g_pPictureItem_Slot5_2:SetPoint
{
       
	"LEFT_TOP		= D3DXVECTOR2(533+57+57+57+57,320)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureItem_Slot6_2= g_pUIDialog:CreatePicture()
g_pStaticReward_ED:AddPicture( g_pPictureItem_Slot6_2)

g_pPictureItem_Slot6_2:SetTex( "DLG_Common_New_Texture02.dds", "Item_Slot1" )

g_pPictureItem_Slot6_2:SetPoint
{
       
	"LEFT_TOP		= D3DXVECTOR2(533+57+57+57+57+57,320)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureItem_Slot7_2= g_pUIDialog:CreatePicture()
g_pStaticReward_ED:AddPicture( g_pPictureItem_Slot7_2)

g_pPictureItem_Slot7_2:SetTex( "DLG_Common_New_Texture02.dds", "Item_Slot1" )

g_pPictureItem_Slot7_2:SetPoint
{
       
	"LEFT_TOP		= D3DXVECTOR2(533+57+57+57+57+57+57,320)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureItem_Slot8_2= g_pUIDialog:CreatePicture()
g_pStaticReward_ED:AddPicture( g_pPictureItem_Slot8_2)

g_pPictureItem_Slot8_2:SetTex( "DLG_Common_New_Texture02.dds", "Item_Slot1" )

g_pPictureItem_Slot8_2:SetPoint
{
       
	"LEFT_TOP		= D3DXVECTOR2(533+57+57+57+57+57+57+57,320)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}








---------아이템슬롯3---------- 
g_pPictureItem_Slot1_3= g_pUIDialog:CreatePicture()
g_pStaticReward_ED:AddPicture( g_pPictureItem_Slot1_3)

g_pPictureItem_Slot1_3:SetTex( "DLG_Common_New_Texture02.dds", "Item_Slot1" )

g_pPictureItem_Slot1_3:SetPoint
{
       
	"LEFT_TOP		= D3DXVECTOR2(533,377)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureItem_Slot2_3= g_pUIDialog:CreatePicture()
g_pStaticReward_ED:AddPicture( g_pPictureItem_Slot2_3)

g_pPictureItem_Slot2_3:SetTex( "DLG_Common_New_Texture02.dds", "Item_Slot1" )

g_pPictureItem_Slot2_3:SetPoint
{
       
	"LEFT_TOP		= D3DXVECTOR2(533+57,377)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureItem_Slot3_3= g_pUIDialog:CreatePicture()
g_pStaticReward_ED:AddPicture( g_pPictureItem_Slot3_3)

g_pPictureItem_Slot3_3:SetTex( "DLG_Common_New_Texture02.dds", "Item_Slot1" )

g_pPictureItem_Slot3_3:SetPoint
{
       
	"LEFT_TOP		= D3DXVECTOR2(533+57+57,377)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureItem_Slot4_3= g_pUIDialog:CreatePicture()
g_pStaticReward_ED:AddPicture( g_pPictureItem_Slot4_3)

g_pPictureItem_Slot4_3:SetTex( "DLG_Common_New_Texture02.dds", "Item_Slot1" )

g_pPictureItem_Slot4_3:SetPoint
{
       
	"LEFT_TOP		= D3DXVECTOR2(533+57+57+57,377)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureItem_Slot5_3= g_pUIDialog:CreatePicture()
g_pStaticReward_ED:AddPicture( g_pPictureItem_Slot5_3)

g_pPictureItem_Slot5_3:SetTex( "DLG_Common_New_Texture02.dds", "Item_Slot1" )

g_pPictureItem_Slot5_3:SetPoint
{
       
	"LEFT_TOP		= D3DXVECTOR2(533+57+57+57+57,377)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureItem_Slot6_3= g_pUIDialog:CreatePicture()
g_pStaticReward_ED:AddPicture( g_pPictureItem_Slot6_3)

g_pPictureItem_Slot6_3:SetTex( "DLG_Common_New_Texture02.dds", "Item_Slot1" )

g_pPictureItem_Slot6_3:SetPoint
{
       
	"LEFT_TOP		= D3DXVECTOR2(533+57+57+57+57+57,377)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureItem_Slot7_3= g_pUIDialog:CreatePicture()
g_pStaticReward_ED:AddPicture( g_pPictureItem_Slot7_3)

g_pPictureItem_Slot7_3:SetTex( "DLG_Common_New_Texture02.dds", "Item_Slot1" )

g_pPictureItem_Slot7_3:SetPoint
{
       
	"LEFT_TOP		= D3DXVECTOR2(533+57+57+57+57+57+57,377)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureItem_Slot8_3= g_pUIDialog:CreatePicture()
g_pStaticReward_ED:AddPicture( g_pPictureItem_Slot8_3)

g_pPictureItem_Slot8_3:SetTex( "DLG_Common_New_Texture02.dds", "Item_Slot1" )

g_pPictureItem_Slot8_3:SetPoint
{
       
	"LEFT_TOP		= D3DXVECTOR2(533+57+57+57+57+57+57+57,377)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}











































 



 


































