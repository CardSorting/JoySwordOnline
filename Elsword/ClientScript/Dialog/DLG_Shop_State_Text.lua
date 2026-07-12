-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

---(기본정보 폰트)
g_pStaticLv = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticLv )
g_pStaticLv:SetName( "StaticLv" )

g_pStaticLv:AddString
{
	MSG 			= STR_ID_2592,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(41,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStaticLv_Num = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticLv_Num )
g_pStaticLv_Num:SetName( "StaticLv_Num" )

g_pStaticLv_Num:AddString
{
	-- MSG 			= "99",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(66,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStaticID = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticID )
g_pStaticID:SetName( "StaticID" )

g_pStaticID:AddString
{
	-- MSG 			= "구아경위구아경위",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(110,71)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStaticPoint = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPoint )
g_pStaticPoint:SetName( "StaticPoint" )

g_pStaticPoint:AddString
{
	-- MSG 			= "",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(475,72)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStaticED_Num = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticED_Num )
g_pStaticED_Num:SetName( "StaticED_Num" )

g_pStaticED_Num:AddString
{
	-- MSG 			= "9999999999999",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(76,98)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStaticVP_Num = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticVP_Num )
g_pStaticVP_Num:SetName( "StaticVP_Num" )

g_pStaticVP_Num:AddString
{
	-- MSG 			= "9999999999999",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(250,98)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStaticCash_Num = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCash_Num )
g_pStaticCash_Num:SetName( "StaticCash_Num" )

g_pStaticCash_Num:AddString
{
	-- MSG 			= "1,000,000",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,

	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(475,98)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}





















g_pStaticHP_Point = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticHP_Point )
g_pStaticHP_Point:SetName( "HP_Point" )

g_pStaticHP_Point:AddString
{
	-- MSG 			= "999999",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(165-10,485-23)",
	"COLOR			= D3DXCOLOR(0.05,0.25,0.17,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pStaticHP_Point_add = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticHP_Point_add )
g_pStaticHP_Point_add:SetName( "HP_Point_add" )

g_pStaticHP_Point_add:AddString
{
	-- MSG 			= "+999999",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(165+5,485-23)",
	"COLOR			= D3DXCOLOR(0.28,0.45,0.27,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStaticHP_Point = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticHP_Point )
g_pStaticHP_Point:SetName( "HP_Point_NoEquip" )

g_pStaticHP_Point:AddString
{
	-- MSG 			= "999999",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(165,485-23)",
	"COLOR			= D3DXCOLOR(0.05,0.25,0.17,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStaticAttack_Point_Left = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticAttack_Point_Left )
g_pStaticAttack_Point_Left:SetName( "Attack_Point" )

g_pStaticAttack_Point_Left:AddString
{
	-- MSG 			= "999999",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(165-10,506-23)",
	"COLOR			= D3DXCOLOR(0.05,0.25,0.17,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pStaticAttack_Point_add = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticAttack_Point_add )
g_pStaticAttack_Point_add:SetName( "Attack_Point_add" )

g_pStaticAttack_Point_add:AddString
{
	-- MSG 			= "+999999",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(165+5,506-23)",
	"COLOR			= D3DXCOLOR(0.28,0.45,0.27,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStaticAttack_Point = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticAttack_Point )
g_pStaticAttack_Point:SetName( "Attack_Point_NoEquip" )

g_pStaticAttack_Point:AddString
{
	-- MSG 			= "999999",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(165,506-23)",
	"COLOR			= D3DXCOLOR(0.05,0.25,0.17,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}



g_pStaticMagic_Point_Left = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMagic_Point_Left )
g_pStaticMagic_Point_Left:SetName( "Magic_Point" )

g_pStaticMagic_Point_Left:AddString
{
	-- MSG 			= "999999",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(165-10,527-23)",
	"COLOR			= D3DXCOLOR(0.05,0.25,0.17,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pStaticMagic_Point_add = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMagic_Point_add )
g_pStaticMagic_Point_add:SetName( "Magic_Point_add" )

g_pStaticMagic_Point_add:AddString
{
	-- MSG 			= "+999999",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(165+5,527-23)",
	"COLOR			= D3DXCOLOR(0.28,0.45,0.27,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStaticMagic_Point = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMagic_Point )
g_pStaticMagic_Point:SetName( "Magic_Point_NoEquip" )

g_pStaticMagic_Point:AddString
{
	-- MSG 			= "+999999",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(165,527-23)",
	"COLOR			= D3DXCOLOR(0.05,0.25,0.17,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStaticDefense_Point_Left = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticDefense_Point_Left )
g_pStaticDefense_Point_Left:SetName( "Defense_Point" )

g_pStaticDefense_Point_Left:AddString
{
	-- MSG 			= "999999",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(165-10,548-23)",
	"COLOR			= D3DXCOLOR(0.05,0.25,0.17,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pStaticDefense_Point_add = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticDefense_Point_add )
g_pStaticDefense_Point_add:SetName( "Defense_Point_add" )

g_pStaticDefense_Point_add:AddString
{
	-- MSG 			= "+999999",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(165+5,548-23)",
	"COLOR			= D3DXCOLOR(0.28,0.45,0.27,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStaticDefense_Point = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticDefense_Point )
g_pStaticDefense_Point:SetName( "Defense_Point_NoEquip" )

g_pStaticDefense_Point:AddString
{
	-- MSG 			= "999999",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(165,548-23)",
	"COLOR			= D3DXCOLOR(0.05,0.25,0.17,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStaticMDefense_Point_Left = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMDefense_Point_Left )
g_pStaticMDefense_Point_Left:SetName( "Magic_Defense_Point" )

g_pStaticMDefense_Point_Left:AddString
{
	-- MSG 			= "999999",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(165-10,548 + 21 -23)",
	"COLOR			= D3DXCOLOR(0.05,0.25,0.17,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pStaticMDefense_Point_add = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMDefense_Point_add )
g_pStaticMDefense_Point_add:SetName( "Magic_Defense_Point_add" )

g_pStaticMDefense_Point_add:AddString
{
	-- MSG 			= "+999999",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(165+5,548 + 21 -23)",
	"COLOR			= D3DXCOLOR(0.28,0.45,0.27,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pStaticMDefense_Point = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticMDefense_Point )
g_pStaticMDefense_Point:SetName( "Magic_Defense_Point_NoEquip" )

g_pStaticMDefense_Point:AddString
{
	-- MSG 			= "999999",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(165,548 + 21 -23)",
	"COLOR			= D3DXCOLOR(0.05,0.25,0.17,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}






---속성 방어 수치


g_pStaticResist_value_fire = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticResist_value_fire )
g_pStaticResist_value_fire:SetName( "Fire_Resist" )

g_pStaticResist_value_fire:AddString
{
	-- MSG 			= "300/300",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(328,483)",
	"COLOR			= D3DXCOLOR(0.18,0.55,0.17,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStaticResist_value_water = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticResist_value_water )
g_pStaticResist_value_water:SetName( "Ice_Resist" )

g_pStaticResist_value_water:AddString
{
	-- MSG 			= "300/300",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(328,504)",
	"COLOR			= D3DXCOLOR(0.18,0.55,0.17,1.00)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStaticResist_value_nature = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticResist_value_nature )
g_pStaticResist_value_nature:SetName( "Nature_Resist" )

g_pStaticResist_value_nature:AddString
{
	-- MSG 			= "300/300",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(328,525)",
	"COLOR			= D3DXCOLOR(0.18,0.55,0.17,1.00)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pStaticResist_value_wind = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticResist_value_wind )
g_pStaticResist_value_wind:SetName( "Wind_Resist" )

g_pStaticResist_value_wind:AddString
{
	-- MSG 			= "300/300",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(458,483)",
	"COLOR			= D3DXCOLOR(0.18,0.55,0.17,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStaticResist_value_light = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticResist_value_light )
g_pStaticResist_value_light:SetName( "Light_Resist" )

g_pStaticResist_value_light:AddString
{
	-- MSG 			= "300/300",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(458,504)",
	"COLOR			= D3DXCOLOR(0.18,0.55,0.17,1.00)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}



g_pStaticResist_value_dark = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticResist_value_dark )
g_pStaticResist_value_dark:SetName( "Dark_Resist" )

g_pStaticResist_value_dark:AddString
{
	-- MSG 			= "300/300",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(458,525)",
	"COLOR			= D3DXCOLOR(0.18,0.55,0.17,1.00)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

