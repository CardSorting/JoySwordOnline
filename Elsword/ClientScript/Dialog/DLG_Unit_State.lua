-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStaticUser_Equip_Window = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticUser_Equip_Window )
g_pStaticUser_Equip_Window:SetName( "StaticUser_Room" )





-----스테이터스 윈도우


g_pPictureUser_State_Window1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Window1 )

g_pPictureUser_State_Window1:SetTex( "DLG_Unit_State.TGA", "Info_Window1" )

g_pPictureUser_State_Window1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(33,581)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureUser_State_Window2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Window2 )

g_pPictureUser_State_Window2:SetTex( "DLG_Unit_State.TGA", "Info_Window2" )

g_pPictureUser_State_Window2:SetPoint
{

	USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(48,581)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(474,596)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPictureUser_State_Window3 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Window3 )

g_pPictureUser_State_Window3:SetTex( "DLG_Unit_State.TGA", "Info_Window3" )

g_pPictureUser_State_Window3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(474,581)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_State_Window4 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Window4 )

g_pPictureUser_State_Window4:SetTex( "DLG_Unit_State.TGA", "Info_Window4" )

g_pPictureUser_State_Window4:SetPoint
{

	USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(33,596)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(48,688)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_State_Window5 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Window5 )

g_pPictureUser_State_Window5:SetTex( "DLG_Unit_State.TGA", "Info_Window5" )

g_pPictureUser_State_Window5:SetPoint
{

	USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(48,596)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(474,688)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_State_Window6 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Window6 )

g_pPictureUser_State_Window6:SetTex( "DLG_Unit_State.TGA", "Info_Window6" )

g_pPictureUser_State_Window6:SetPoint
{

	USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(474,596)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(481,688)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_State_Window7 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Window7 )

g_pPictureUser_State_Window7:SetTex( "DLG_Unit_State.TGA", "Info_Window7" )

g_pPictureUser_State_Window7:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(33,688)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_State_Window8 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Window8 )

g_pPictureUser_State_Window8:SetTex( "DLG_Unit_State.TGA", "Info_Window8" )

g_pPictureUser_State_Window8:SetPoint
{

	USE_TEXTURE_SIZE	= FALSE,

	"LEFT_TOP		= D3DXVECTOR2(48,688)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(474,695)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_State_Window9 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Window9 )

g_pPictureUser_State_Window9:SetTex( "DLG_Unit_State.TGA", "Info_Window9" )

g_pPictureUser_State_Window9:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(474,688)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}







------스테이터스


g_pPictureUser_State_HP_Bar = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_HP_Bar )

g_pPictureUser_State_HP_Bar:SetTex( "DLG_Unit_State.TGA", "Info_Plane1" )

g_pPictureUser_State_HP_Bar:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(101,596)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureUser_State_ATK_Bar = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_ATK_Bar )

g_pPictureUser_State_ATK_Bar:SetTex( "DLG_Unit_State.TGA", "Info_Plane1" )

g_pPictureUser_State_ATK_Bar:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(101,618)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureUser_State_MATK_Bar = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_MATK_Bar )

g_pPictureUser_State_MATK_Bar:SetTex( "DLG_Unit_State.TGA", "Info_Plane1" )

g_pPictureUser_State_MATK_Bar:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(101,640)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureUser_State_DEF_Bar = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_DEF_Bar )

g_pPictureUser_State_DEF_Bar:SetTex( "DLG_Unit_State.TGA", "Info_Plane1" )

g_pPictureUser_State_DEF_Bar:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(101,662)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-----속성 수치


g_pPictureUser_State_Fire_Emblem = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Fire_Emblem )

g_pPictureUser_State_Fire_Emblem:SetTex( "DLG_Unit_State.TGA", "Fire_Emblem" )

g_pPictureUser_State_Fire_Emblem:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(205,602)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_State_Fire_State = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Fire_State )

g_pPictureUser_State_Fire_State:SetTex( "DLG_Unit_State.TGA", "Info_Plane2" )

g_pPictureUser_State_Fire_State:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(232,604)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_State_Ice_Emblem = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Ice_Emblem )

g_pPictureUser_State_Ice_Emblem:SetTex( "DLG_Unit_State.TGA", "Ice_Emblem" )

g_pPictureUser_State_Ice_Emblem:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(338,602)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_State_Ice_State = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Ice_State )

g_pPictureUser_State_Ice_State:SetTex( "DLG_Unit_State.TGA", "Info_Plane2" )

g_pPictureUser_State_Ice_State:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(365,604)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureUser_State_Lightning_Emblem = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Lightning_Emblem )

g_pPictureUser_State_Lightning_Emblem:SetTex( "DLG_Unit_State.TGA", "Lightning_Emblem" )

g_pPictureUser_State_Lightning_Emblem:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(205,627)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_State_Lightning_State = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Lightning_State )

g_pPictureUser_State_Lightning_State:SetTex( "DLG_Unit_State.TGA", "Info_Plane2" )

g_pPictureUser_State_Lightning_State:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(232,629)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureUser_State_Earth_Emblem = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Earth_Emblem )

g_pPictureUser_State_Earth_Emblem:SetTex( "DLG_Unit_State.TGA", "Earth_Emblem" )

g_pPictureUser_State_Earth_Emblem:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(338,627)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_State_Earth_State = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Earth_State )

g_pPictureUser_State_Earth_State:SetTex( "DLG_Unit_State.TGA", "Info_Plane2" )

g_pPictureUser_State_Earth_State:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(365,630)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureUser_State_Dark_Emblem = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Dark_Emblem )

g_pPictureUser_State_Dark_Emblem:SetTex( "DLG_Unit_State.TGA", "Dark_Emblem" )

g_pPictureUser_State_Dark_Emblem:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(205,653)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_State_Dark_State = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Dark_State )

g_pPictureUser_State_Dark_State:SetTex( "DLG_Unit_State.TGA", "Info_Plane2" )

g_pPictureUser_State_Dark_State:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(232,656)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureUser_State_Shining_Emblem = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Shining_Emblem )

g_pPictureUser_State_Shining_Emblem:SetTex( "DLG_Unit_State.TGA", "Shining_Emblem" )

g_pPictureUser_State_Shining_Emblem:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(338,653)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_State_Shining_State = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Shining_State )

g_pPictureUser_State_Shining_State:SetTex( "DLG_Unit_State.TGA", "Info_Plane2" )

g_pPictureUser_State_Shining_State:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(365,656)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




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

---------SKILL SLOT


g_pPictureUser_State_Skill = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Skill )

g_pPictureUser_State_Skill:SetTex( "DLG_Unit_State.TGA", "SKILL" )

g_pPictureUser_State_Skill:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(36,461)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_State_Skill_Slot1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Skill_Slot1 )

g_pPictureUser_State_Skill_Slot1:SetTex( "DLG_Unit_State.TGA", "Empty_Slot" )

g_pPictureUser_State_Skill_Slot1:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(113,459)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_State_Skill_Slot1_1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Skill_Slot1_1 )

g_pPictureUser_State_Skill_Slot1_1:SetTex( "DLG_Unit_State.TGA", "Skill_Num_1" )

g_pPictureUser_State_Skill_Slot1_1:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(135,476)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureUser_State_Skill_Slot2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Skill_Slot2 )

g_pPictureUser_State_Skill_Slot2:SetTex( "DLG_Unit_State.TGA", "Empty_Slot" )

g_pPictureUser_State_Skill_Slot2:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(173,459)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_State_Skill_Slot2_1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Skill_Slot2_1 )

g_pPictureUser_State_Skill_Slot2_1:SetTex( "DLG_Unit_State.TGA", "Skill_Num_2" )

g_pPictureUser_State_Skill_Slot2_1:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(190,476)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_State_Skill_Slot3 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Skill_Slot3 )

g_pPictureUser_State_Skill_Slot3:SetTex( "DLG_Unit_State.TGA", "Empty_Slot" )

g_pPictureUser_State_Skill_Slot3:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(233,459)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureUser_State_Skill_Slot3_1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Skill_Slot3_1 )

g_pPictureUser_State_Skill_Slot3_1:SetTex( "DLG_Unit_State.TGA", "Skill_Num_3" )

g_pPictureUser_State_Skill_Slot3_1:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(251,476)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



---------ITEM SLOT


g_pPictureUser_State_Item = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Item )

g_pPictureUser_State_Item:SetTex( "DLG_Unit_State.TGA", "Item" )

g_pPictureUser_State_Item:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(36,521)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureUser_State_Item_Slot1 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Item_Slot1 )

g_pPictureUser_State_Item_Slot1:SetTex( "DLG_Unit_State.TGA", "Empty_Slot" )

g_pPictureUser_State_Item_Slot1:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(113,519)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPictureUser_State_Item_Slot2 = g_pUIDialog:CreatePicture()
g_pStaticUser_Equip_Window:AddPicture( g_pPictureUser_State_Item_Slot2 )

g_pPictureUser_State_Item_Slot2:SetTex( "DLG_Unit_State.TGA", "Empty_Slot" )

g_pPictureUser_State_Item_Slot2:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(173,519)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
