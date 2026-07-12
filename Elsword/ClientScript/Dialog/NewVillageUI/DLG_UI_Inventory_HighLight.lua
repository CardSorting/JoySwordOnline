-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL_4"])
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetCloseCustomUIEventID( UI_INVENTORY_MSG["UIM_EXIT"] )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 552, 305, 0 ) ) -- 위치
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 463, 392, 0 ) ) -- Size 


-----인벤 슬롯
g_pStaticInven_Slot = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticInven_Slot )
g_pStaticInven_Slot:SetName( "g_pStaticInvenHighLight" )
g_pStaticInven_Slot:SetOffsetPos(-5,-5)

g_pPictureInven_slot1= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot1)
g_pPictureInven_slot1:SetTex( "DLG_Icon_New_Item.TGA", "ITEM_NEW" )
g_pPictureInven_slot1:SetPoint
{    
	"LEFT_TOP		= D3DXVECTOR2(580,395)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureInven_slot2= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot2)
g_pPictureInven_slot2:SetTex( "DLG_Icon_New_Item.TGA", "ITEM_NEW" )
g_pPictureInven_slot2:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(631,395)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot3= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot3)

g_pPictureInven_slot3:SetTex( "DLG_Icon_New_Item.TGA", "ITEM_NEW" )

g_pPictureInven_slot3:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(682,395)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot4= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot4)

g_pPictureInven_slot4:SetTex( "DLG_Icon_New_Item.TGA", "ITEM_NEW" )

g_pPictureInven_slot4:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(733,395)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot5= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot5)

g_pPictureInven_slot5:SetTex( "DLG_Icon_New_Item.TGA", "ITEM_NEW" )

g_pPictureInven_slot5:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(784,395)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot6= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot6)

g_pPictureInven_slot6:SetTex( "DLG_Icon_New_Item.TGA", "ITEM_NEW" )

g_pPictureInven_slot6:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(835,395)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot7= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot7)

g_pPictureInven_slot7:SetTex( "DLG_Icon_New_Item.TGA", "ITEM_NEW" )

g_pPictureInven_slot7:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(886,395)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot8= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot8)

g_pPictureInven_slot8:SetTex( "DLG_Icon_New_Item.TGA", "ITEM_NEW" )

g_pPictureInven_slot8:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(937,395)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------------------------------------------------------------
g_pPictureInven_slot9= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot9)

g_pPictureInven_slot9:SetTex( "DLG_Icon_New_Item.TGA", "ITEM_NEW" )

g_pPictureInven_slot9:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(580,446)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot10= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot10)

g_pPictureInven_slot10:SetTex( "DLG_Icon_New_Item.TGA", "ITEM_NEW" )

g_pPictureInven_slot10:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(631,446)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot11= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot11)

g_pPictureInven_slot11:SetTex( "DLG_Icon_New_Item.TGA", "ITEM_NEW" )

g_pPictureInven_slot11:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(682,446)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot12= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot12)

g_pPictureInven_slot12:SetTex( "DLG_Icon_New_Item.TGA", "ITEM_NEW" )

g_pPictureInven_slot12:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(733,446)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot13= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot13)

g_pPictureInven_slot13:SetTex( "DLG_Icon_New_Item.TGA", "ITEM_NEW" )

g_pPictureInven_slot13:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(784,446)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot14= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot14)

g_pPictureInven_slot14:SetTex( "DLG_Icon_New_Item.TGA", "ITEM_NEW" )

g_pPictureInven_slot14:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(835,446)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot15= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot15)

g_pPictureInven_slot15:SetTex( "DLG_Icon_New_Item.TGA", "ITEM_NEW" )

g_pPictureInven_slot15:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(886,446)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot16= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot16)

g_pPictureInven_slot16:SetTex( "DLG_Icon_New_Item.TGA", "ITEM_NEW" )

g_pPictureInven_slot16:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(937,446)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-------------------------------------------------------------

g_pPictureInven_slot17= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot17)

g_pPictureInven_slot17:SetTex( "DLG_Icon_New_Item.TGA", "ITEM_NEW" )

g_pPictureInven_slot17:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(580,497)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot18= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot18)

g_pPictureInven_slot18:SetTex( "DLG_Icon_New_Item.TGA", "ITEM_NEW" )

g_pPictureInven_slot18:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(631,497)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot19= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot19)

g_pPictureInven_slot19:SetTex( "DLG_Icon_New_Item.TGA", "ITEM_NEW" )

g_pPictureInven_slot19:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(682,497)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot20= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot20)

g_pPictureInven_slot20:SetTex( "DLG_Icon_New_Item.TGA", "ITEM_NEW" )

g_pPictureInven_slot20:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(733,497)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot21= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot21)

g_pPictureInven_slot21:SetTex( "DLG_Icon_New_Item.TGA", "ITEM_NEW" )

g_pPictureInven_slot21:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(784,497)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot22= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot22)

g_pPictureInven_slot22:SetTex( "DLG_Icon_New_Item.TGA", "ITEM_NEW" )

g_pPictureInven_slot22:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(835,497)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot23= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot23)

g_pPictureInven_slot23:SetTex( "DLG_Icon_New_Item.TGA", "ITEM_NEW" )

g_pPictureInven_slot23:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(886,497)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot24= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot24)

g_pPictureInven_slot24:SetTex( "DLG_Icon_New_Item.TGA", "ITEM_NEW" )

g_pPictureInven_slot24:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(937,497)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----------------------------------------------------------
g_pPictureInven_slot25= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot25)

g_pPictureInven_slot25:SetTex( "DLG_Icon_New_Item.TGA", "ITEM_NEW" )

g_pPictureInven_slot25:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(580,548)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot26= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot26)

g_pPictureInven_slot26:SetTex( "DLG_Icon_New_Item.TGA", "ITEM_NEW" )

g_pPictureInven_slot26:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(631,548)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot27= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot27)

g_pPictureInven_slot27:SetTex( "DLG_Icon_New_Item.TGA", "ITEM_NEW" )

g_pPictureInven_slot27:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(682,548)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot28= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot28)

g_pPictureInven_slot28:SetTex( "DLG_Icon_New_Item.TGA", "ITEM_NEW" )

g_pPictureInven_slot28:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(733,548)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot29= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot29)

g_pPictureInven_slot29:SetTex( "DLG_Icon_New_Item.TGA", "ITEM_NEW" )

g_pPictureInven_slot29:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(784,548)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot30= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot30)

g_pPictureInven_slot30:SetTex( "DLG_Icon_New_Item.TGA", "ITEM_NEW" )

g_pPictureInven_slot30:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(835,548)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot31= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot31)

g_pPictureInven_slot31:SetTex( "DLG_Icon_New_Item.TGA", "ITEM_NEW" )

g_pPictureInven_slot31:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(886,548)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureInven_slot32= g_pUIDialog:CreatePicture()
g_pStaticInven_Slot:AddPicture( g_pPictureInven_slot32)

g_pPictureInven_slot32:SetTex( "DLG_Icon_New_Item.TGA", "ITEM_NEW" )

g_pPictureInven_slot32:SetPoint
{
    
	"LEFT_TOP		= D3DXVECTOR2(937,548)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


