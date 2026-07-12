-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pStaticUser_Equip_Window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticUser_Equip_Window )
g_pStaticUser_Equip_Window:SetName( "StaticUser_Room" )


-----장비 슬롯 A

g_pPictureUser_State_Slot_Head = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Slot_Head )

g_pPictureUser_State_Slot_Head:SetTex( "DLG_Unit_State.TGA", "Head_Plane" )

g_pPictureUser_State_Slot_Head:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(36,155)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_State_Slot_Head_Cash = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Slot_Head_Cash )

g_pPictureUser_State_Slot_Head_Cash:SetTex( "DLG_Unit_State.TGA", "Cash_Mark" )

g_pPictureUser_State_Slot_Head_Cash:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(39,189)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_State_Slot_Coat1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Slot_Coat1 )

g_pPictureUser_State_Slot_Coat1:SetTex( "DLG_Unit_State.TGA", "Coat_Plane" )

g_pPictureUser_State_Slot_Coat1:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(36,215)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureUser_State_Slot_Coat_Cash = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Slot_Coat_Cash )

g_pPictureUser_State_Slot_Coat_Cash:SetTex( "DLG_Unit_State.TGA", "Cash_Mark" )

g_pPictureUser_State_Slot_Coat_Cash:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(39,248)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_State_Slot_Coat2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Slot_Coat2 )

g_pPictureUser_State_Slot_Coat2:SetTex( "DLG_Unit_State.TGA", "Coat_Plane" )

g_pPictureUser_State_Slot_Coat2:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(96,215)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_State_Slot_Trousers1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Slot_Trousers1 )

g_pPictureUser_State_Slot_Trousers1:SetTex( "DLG_Unit_State.TGA", "Trousers_Plane" )

g_pPictureUser_State_Slot_Trousers1:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(36,275)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_State_Slot_Trousers_Cash = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Slot_Trousers_Cash )

g_pPictureUser_State_Slot_Trousers_Cash:SetTex( "DLG_Unit_State.TGA", "Cash_Mark" )

g_pPictureUser_State_Slot_Trousers_Cash:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(39,308)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_State_Slot_Trousers2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Slot_Trousers2 )

g_pPictureUser_State_Slot_Trousers2:SetTex( "DLG_Unit_State.TGA", "Trousers_Plane" )

g_pPictureUser_State_Slot_Trousers2:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(96,275)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureUser_State_Slot_Hand1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Slot_Hand1 )

g_pPictureUser_State_Slot_Hand1:SetTex( "DLG_Unit_State.TGA", "Hand_Plane" )

g_pPictureUser_State_Slot_Hand1:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(36,335)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_State_Slot_Hand_Cash = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Slot_Hand_Cash )

g_pPictureUser_State_Slot_Hand_Cash:SetTex( "DLG_Unit_State.TGA", "Cash_Mark" )

g_pPictureUser_State_Slot_Hand_Cash:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(39,368)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_State_Slot_Hand2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Slot_Hand2 )

g_pPictureUser_State_Slot_Hand2:SetTex( "DLG_Unit_State.TGA", "Hand_Plane" )

g_pPictureUser_State_Slot_Hand2:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(96,335)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_State_Slot_Footwear1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Slot_Footwear1 )

g_pPictureUser_State_Slot_Footwear1:SetTex( "DLG_Unit_State.TGA", "Footwear_Plane" )

g_pPictureUser_State_Slot_Footwear1:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(36,395)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_State_Slot_Footwear_Cash = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Slot_Footwear_Cash )

g_pPictureUser_State_Slot_Footwear_Cash:SetTex( "DLG_Unit_State.TGA", "Cash_Mark" )

g_pPictureUser_State_Slot_Footwear_Cash:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(39,428)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_State_Slot_Footwear2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Slot_Footwear2 )

g_pPictureUser_State_Slot_Footwear2:SetTex( "DLG_Unit_State.TGA", "Footwear_Plane" )

g_pPictureUser_State_Slot_Footwear2:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(96,395)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-----장비 슬롯 B


g_pPictureUser_State_Slot_Arm1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Slot_Arm1 )

g_pPictureUser_State_Slot_Arm1:SetTex( "DLG_Unit_State.TGA", "Arm_Plane" )

g_pPictureUser_State_Slot_Arm1:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(352,155)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_State_Slot_Arm_Cash = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Slot_Arm_Cash )

g_pPictureUser_State_Slot_Arm_Cash:SetTex( "DLG_Unit_State.TGA", "Cash_Mark" )

g_pPictureUser_State_Slot_Arm_Cash:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(354,189)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_State_Slot_Arm2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Slot_Arm2 )

g_pPictureUser_State_Slot_Arm2:SetTex( "DLG_Unit_State.TGA", "Arm_Plane" )

g_pPictureUser_State_Slot_Arm2:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(412,155)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_State_Slot_1_1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Slot_1_1 )

g_pPictureUser_State_Slot_1_1:SetTex( "DLG_Unit_State.TGA", "Empty_Slot" )

g_pPictureUser_State_Slot_1_1:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(352,215)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_State_Slot_1_2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Slot_1_2 )

g_pPictureUser_State_Slot_1_2:SetTex( "DLG_Unit_State.TGA", "Empty_Slot" )

g_pPictureUser_State_Slot_1_2:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(412,215)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_State_Slot_2_1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Slot_2_1 )

g_pPictureUser_State_Slot_2_1:SetTex( "DLG_Unit_State.TGA", "Empty_Slot" )

g_pPictureUser_State_Slot_2_1:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(352,275)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_State_Slot_2_2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Slot_2_2 )

g_pPictureUser_State_Slot_2_2:SetTex( "DLG_Unit_State.TGA", "Empty_Slot" )

g_pPictureUser_State_Slot_2_2:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(412,275)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureUser_State_Slot_3_1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Slot_3_1 )

g_pPictureUser_State_Slot_3_1:SetTex( "DLG_Unit_State.TGA", "Empty_Slot" )

g_pPictureUser_State_Slot_3_1:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(352,335)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_State_Slot_3_2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Slot_3_2 )

g_pPictureUser_State_Slot_3_2:SetTex( "DLG_Unit_State.TGA", "Empty_Slot" )

g_pPictureUser_State_Slot_3_2:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(412,335)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_State_Slot_4_1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Slot_4_1 )

g_pPictureUser_State_Slot_4_1:SetTex( "DLG_Unit_State.TGA", "Empty_Slot" )

g_pPictureUser_State_Slot_4_1:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(352,395)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_State_Slot_4_2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Slot_4_2 )

g_pPictureUser_State_Slot_4_2:SetTex( "DLG_Unit_State.TGA", "Empty_Slot" )

g_pPictureUser_State_Slot_4_2:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(412,395)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
