-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStaticUser_Equip_Window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticUser_Equip_Window )
g_pStaticUser_Equip_Window:SetName( "Equip_Window" )





----(기본 정보) 

g_pPictureBase_Info_Window1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureBase_Info_Window1 )

g_pPictureBase_Info_Window1:SetTex( "DLG_Common_Texture01.TGA", "TitleWindow1" )

g_pPictureBase_Info_Window1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(30,58)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureBase_Info_Window2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureBase_Info_Window2 )

g_pPictureBase_Info_Window2:SetTex( "DLG_Common_Texture01.TGA", "TitleWindow2" )

g_pPictureBase_Info_Window2:SetPoint
{
     ADD_SIZE_X = 460,
	"LEFT_TOP		= D3DXVECTOR2(36,58)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureBase_Info_Window3 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureBase_Info_Window3 )

g_pPictureBase_Info_Window3:SetTex( "DLG_Common_Texture01.TGA", "TitleWindow3" )

g_pPictureBase_Info_Window3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(495,58)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pStaticUser_SpiritGauge = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticUser_SpiritGauge )
g_pStaticUser_SpiritGauge:SetName( "SpiritGauge" )

g_pPictureBase_Info_Window_Gauge = g_pUIDialog:CreatePicture()
g_pStaticUser_SpiritGauge:AddPicture( g_pPictureBase_Info_Window_Gauge )

g_pPictureBase_Info_Window_Gauge:SetTex( "DLG_Common_Texture01.TGA", "Gauge_Bar" )

g_pPictureBase_Info_Window_Gauge:SetPoint
{
     ADD_SIZE_X = 455,
     ADD_SIZE_Y = 2,
	"LEFT_TOP		= D3DXVECTOR2(37,118)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureBase_Info_Window_Gauge_Line1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureBase_Info_Window_Gauge_Line1 )

g_pPictureBase_Info_Window_Gauge_Line1:SetTex( "DLG_Common_Texture01.TGA", "Black" )

g_pPictureBase_Info_Window_Gauge_Line1:SetPoint
{
     ADD_SIZE_X = 458,
    
	"LEFT_TOP		= D3DXVECTOR2(36,117)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureBase_Info_Window_Gauge_Line2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureBase_Info_Window_Gauge_Line2 )

g_pPictureBase_Info_Window_Gauge_Line2:SetTex( "DLG_Common_Texture01.TGA", "Black" )

g_pPictureBase_Info_Window_Gauge_Line2:SetPoint
{
     ADD_SIZE_X = 458,
    
	"LEFT_TOP		= D3DXVECTOR2(36,121)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureBase_Info_Window_Gauge_Line3 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureBase_Info_Window_Gauge_Line3 )

g_pPictureBase_Info_Window_Gauge_Line3:SetTex( "DLG_Common_Texture01.TGA", "Black" )

g_pPictureBase_Info_Window_Gauge_Line3:SetPoint
{
     ADD_SIZE_Y = 2,
    
	"LEFT_TOP		= D3DXVECTOR2(36,118)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureBase_Info_Window_Gauge_Line4 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureBase_Info_Window_Gauge_Line4 )

g_pPictureBase_Info_Window_Gauge_Line4:SetTex( "DLG_Common_Texture01.TGA", "Black" )

g_pPictureBase_Info_Window_Gauge_Line4:SetPoint
{
     ADD_SIZE_Y = 2,
    
	"LEFT_TOP		= D3DXVECTOR2(494,118)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePVP_Grade = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPicturePVP_Grade )

g_pPicturePVP_Grade:SetTex( "DLG_Common_Texture01.TGA", "Nexon_Cash" )

g_pPicturePVP_Grade:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(357,96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureMy_Title = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureMy_Title )

g_pPictureMy_Title:SetTex( "DLG_Common_Texture01.TGA", "Nexon_Cash" )

g_pPictureMy_Title:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(357,96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


 
g_pPictureBase_Info_Nexon_Cash = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureBase_Info_Nexon_Cash )

g_pPictureBase_Info_Nexon_Cash:SetTex( "DLG_Common_Texture01.TGA", "Nexon_Cash" )

g_pPictureBase_Info_Nexon_Cash:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(357,96)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureBase_Info_ED = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureBase_Info_ED )

g_pPictureBase_Info_ED:SetTex( "DLG_Common_Texture01.TGA", "ED" )

g_pPictureBase_Info_ED:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(44,98)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureBase_Info_VP = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureBase_Info_VP )

g_pPictureBase_Info_VP:SetTex( "DLG_Common_Texture01.TGA", "VP2" )

g_pPictureBase_Info_VP:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(201,98)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----(장비 슬롯)

----(복장)---- 

g_pPictureDress_Slot_Left0 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureDress_Slot_Left0 )

g_pPictureDress_Slot_Left0:SetTex( "DLG_Common_Texture01.TGA", "Box_Round2" )

g_pPictureDress_Slot_Left0:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(30,146)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureDress_Slot_Left1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureDress_Slot_Left1 )

g_pPictureDress_Slot_Left1:SetTex( "DLG_Common_Texture01.TGA", "Box_Round2" )

g_pPictureDress_Slot_Left1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(30,204)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureDress_Slot_Left2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureDress_Slot_Left2 )

g_pPictureDress_Slot_Left2:SetTex( "DLG_Common_Texture01.TGA", "Box_Round2" )

g_pPictureDress_Slot_Left2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(30,262)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureDress_Slot_Left3 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureDress_Slot_Left3 )

g_pPictureDress_Slot_Left3:SetTex( "DLG_Common_Texture01.TGA", "Box_Round2" )

g_pPictureDress_Slot_Left3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(30,320)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureDress_Slot_Left4 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureDress_Slot_Left4 )

g_pPictureDress_Slot_Left4:SetTex( "DLG_Common_Texture01.TGA", "Box_Round2" )

g_pPictureDress_Slot_Left4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(30,378)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureDress_Slot_Right1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureDress_Slot_Right1 )

g_pPictureDress_Slot_Right1:SetTex( "DLG_Common_Texture01.TGA", "Box_Round2" )

g_pPictureDress_Slot_Right1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(88,204)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureDress_Slot_Right2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureDress_Slot_Right2 )

g_pPictureDress_Slot_Right2:SetTex( "DLG_Common_Texture01.TGA", "Box_Round2" )

g_pPictureDress_Slot_Right2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(88,262)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureDress_Slot_Right3 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureDress_Slot_Right3 )

g_pPictureDress_Slot_Right3:SetTex( "DLG_Common_Texture01.TGA", "Box_Round2" )

g_pPictureDress_Slot_Right3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(88,320)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureDress_Slot_Right4 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureDress_Slot_Right4 )

g_pPictureDress_Slot_Right4:SetTex( "DLG_Common_Texture01.TGA", "Box_Round2" )

g_pPictureDress_Slot_Right4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(88,378)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureDress_Mark = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureDress_Mark )

g_pPictureDress_Mark:SetTex( "DLG_Common_Texture01.TGA", "Dress_Mark" )

g_pPictureDress_Mark:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(25,131)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




----(복장 슬롯 이미지)----



g_pPictureDress_Head = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureDress_Head )

g_pPictureDress_Head:SetTex( "DLG_Common_Texture01.TGA", "Head" )

g_pPictureDress_Head:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(42-2,156)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureDress_Armor1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureDress_Armor1 )

g_pPictureDress_Armor1:SetTex( "DLG_Common_Texture01.TGA", "Armor" )

g_pPictureDress_Armor1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(38-2,216)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureDress_Armor2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureDress_Armor2 )

g_pPictureDress_Armor2:SetTex( "DLG_Common_Texture01.TGA", "Armor" )

g_pPictureDress_Armor2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(96-2,216)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureDress_Slacks1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureDress_Slacks1 )

g_pPictureDress_Slacks1:SetTex( "DLG_Common_Texture01.TGA", "Slacks" )

g_pPictureDress_Slacks1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(40-2,277)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureDress_Slacks2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureDress_Slacks2 )

g_pPictureDress_Slacks2:SetTex( "DLG_Common_Texture01.TGA", "Slacks" )

g_pPictureDress_Slacks2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(98-2,277)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
} 

g_pPictureDress_Glove1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureDress_Glove1 )

g_pPictureDress_Glove1:SetTex( "DLG_Common_Texture01.TGA", "Glove" )

g_pPictureDress_Glove1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(44-2,332)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureDress_Glove2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureDress_Glove2 )

g_pPictureDress_Glove2:SetTex( "DLG_Common_Texture01.TGA", "Glove" )

g_pPictureDress_Glove2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(102-2,332)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}  

g_pPictureDress_Shoes1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureDress_Shoes1 )

g_pPictureDress_Shoes1:SetTex( "DLG_Common_Texture01.TGA", "Shoes" )

g_pPictureDress_Shoes1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(41-2,392)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureDress_Shoes2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureDress_Shoes2 )

g_pPictureDress_Shoes2:SetTex( "DLG_Common_Texture01.TGA", "Shoes" )

g_pPictureDress_Shoes2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(99-2,392)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}     
    


----(무기)---- 


g_pPictureWeapon_Slot_Left0 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureWeapon_Slot_Left0 )

g_pPictureWeapon_Slot_Left0:SetTex( "DLG_Common_Texture01.TGA", "Box_Round2" )

g_pPictureWeapon_Slot_Left0:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(390,146)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureWeapon_Slot_Right0 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureWeapon_Slot_Right0 )

g_pPictureWeapon_Slot_Right0:SetTex( "DLG_Common_Texture01.TGA", "Box_Round2" )

g_pPictureWeapon_Slot_Right0:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(448,146)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureWeapon_Mark = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureWeapon_Mark )

g_pPictureWeapon_Mark:SetTex( "DLG_Common_Texture01.TGA", "Weapon_Mark" )

g_pPictureWeapon_Mark:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(384,131)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----(무기 슬롯 이미지)----


g_pPictureWeapon_Image1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureWeapon_Image1 )

g_pPictureWeapon_Image1:SetTex( "DLG_Common_Texture01.TGA", "Weapon" )

g_pPictureWeapon_Image1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(406-2,153)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureWeapon_Image2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureWeapon_Image2 )

g_pPictureWeapon_Image2:SetTex( "DLG_Common_Texture01.TGA", "Weapon" )

g_pPictureWeapon_Image2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(463-2,153)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--------------(무기 악세서리 슬롯)----------------

g_pPictureWeapon_Ac_Image = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureWeapon_Ac_Image )

g_pPictureWeapon_Ac_Image:SetTex( "DLG_Common_New_Texture68.TGA", "Weapon_ac_slot" )

g_pPictureWeapon_Ac_Image:SetPoint
{
     ADD_SIZE_X = -23,
	 ADD_SIZE_Y = -23,
	"LEFT_TOP		= D3DXVECTOR2(355,146)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




----(액세서리 슬롯)---- 


g_pPictureAccessory_Slot_Left0 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureAccessory_Slot_Left0 )

g_pPictureAccessory_Slot_Left0:SetTex( "DLG_Common_Texture01.TGA", "Box_Round2" )

g_pPictureAccessory_Slot_Left0:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(390,221)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureAccessory_Slot_Left1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureAccessory_Slot_Left1 )

g_pPictureAccessory_Slot_Left1:SetTex( "DLG_Common_Texture01.TGA", "Box_Round2" )

g_pPictureAccessory_Slot_Left1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(390,279)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureAccessory_Slot_Left2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureAccessory_Slot_Left2 )

g_pPictureAccessory_Slot_Left2:SetTex( "DLG_Common_Texture01.TGA", "Box_Round2" )

g_pPictureAccessory_Slot_Left2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(390,337)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureAccessory_Slot_Left3 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureAccessory_Slot_Left3 )

g_pPictureAccessory_Slot_Left3:SetTex( "DLG_Common_Texture01.TGA", "Box_Round2" )

g_pPictureAccessory_Slot_Left3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(390,395)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureAccessory_Slot_Right0 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureAccessory_Slot_Right0 )

g_pPictureAccessory_Slot_Right0:SetTex( "DLG_Common_Texture01.TGA", "Box_Round2" )

g_pPictureAccessory_Slot_Right0:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(448,221)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureAccessory_Slot_Right1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureAccessory_Slot_Right1 )

g_pPictureAccessory_Slot_Right1:SetTex( "DLG_Common_Texture01.TGA", "Box_Round2" )

g_pPictureAccessory_Slot_Right1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(448,279)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureAccessory_Slot_Right2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureAccessory_Slot_Right2 )

g_pPictureAccessory_Slot_Right2:SetTex( "DLG_Common_Texture01.TGA", "Box_Round2" )

g_pPictureAccessory_Slot_Right2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(448,337)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureAccessory_Slot_Right3 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureAccessory_Slot_Right3 )

g_pPictureAccessory_Slot_Right3:SetTex( "DLG_Common_Texture01.TGA", "Box_Round2" )

g_pPictureAccessory_Slot_Right3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(448,395)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureAccessory_Mark = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureAccessory_Mark )

g_pPictureAccessory_Mark:SetTex( "DLG_Common_Texture01.TGA", "Accessory_Mark" )

g_pPictureAccessory_Mark:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(384,206)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----(액세서리 슬롯 이미지)----

----(액세서리 슬롯 이미지)----
g_pPictureAccessory1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureAccessory1 )

g_pPictureAccessory1:SetTex( "DLG_Common_Texture17.TGA", "Accessory1" )

g_pPictureAccessory1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(391,238)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureAccessory2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureAccessory2 )

g_pPictureAccessory2:SetTex( "DLG_Common_Texture17.TGA", "Accessory2" )

g_pPictureAccessory2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(391,296)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureAccessory3 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureAccessory3 )

g_pPictureAccessory3:SetTex( "DLG_Common_Texture17.TGA", "Accessory3" )

g_pPictureAccessory3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(398,348)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureAccessory_Armor = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureAccessory_Armor )

g_pPictureAccessory_Armor:SetTex( "DLG_Common_Texture01.TGA", "Armor" )

g_pPictureAccessory_Armor:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(455-2,232)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureAccessory_Slacks = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureAccessory_Slacks )

g_pPictureAccessory_Slacks:SetTex( "DLG_Common_Texture01.TGA", "Slacks" )

g_pPictureAccessory_Slacks:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(457-2,293)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureAccessory_Glove = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureAccessory_Glove )

g_pPictureAccessory_Glove:SetTex( "DLG_Common_Texture01.TGA", "Glove" )

g_pPictureAccessory_Glove:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(461-2,348)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureAccessory_Ring = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureAccessory_Ring )

g_pPictureAccessory_Ring:SetTex( "DLG_Common_Texture01.TGA", "Ring" )

g_pPictureAccessory_Ring:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(398-2,408)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureAccessory_Necklace = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureAccessory_Necklace )

g_pPictureAccessory_Necklace:SetTex( "DLG_Common_Texture01.TGA", "Necklace" )

g_pPictureAccessory_Necklace:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(452-2,406)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





----(FASHON 폰트)----

g_pPictureFashon1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureFashon1 )

g_pPictureFashon1:SetTex( "DLG_Common_Texture01.TGA", "Fashon" )

g_pPictureFashon1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(45,181)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureFashon2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureFashon2 )

g_pPictureFashon2:SetTex( "DLG_Common_Texture01.TGA", "Fashon" )

g_pPictureFashon2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(45,239)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureFashon3 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureFashon3 )

g_pPictureFashon3:SetTex( "DLG_Common_Texture01.TGA", "Fashon" )

g_pPictureFashon3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(45,297)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureFashon4 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureFashon4 )

g_pPictureFashon4:SetTex( "DLG_Common_Texture01.TGA", "Fashon" )

g_pPictureFashon4:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(45,355)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureFashon5 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureFashon5 )

g_pPictureFashon5:SetTex( "DLG_Common_Texture01.TGA", "Fashon" )

g_pPictureFashon5:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(45,412)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureFashon6 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureFashon6 )

g_pPictureFashon6:SetTex( "DLG_Common_Texture01.TGA", "Fashon" )

g_pPictureFashon6:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(405,181)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

