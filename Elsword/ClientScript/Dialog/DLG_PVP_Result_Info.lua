-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.



g_pUIDialog:SetName( "Result_Info" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )




g_pStaticPVP_Result_InfoBG = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Result_InfoBG )
g_pStaticPVP_Result_InfoBG:SetName( "Emblem" )


g_pPicturePVP_Result_Info_Rank_Icon3 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_InfoBG:AddPicture( g_pPicturePVP_Result_Info_Rank_Icon3 )

g_pPicturePVP_Result_Info_Rank_Icon3:SetTex( "DLG_Common_Emblem00.tga", "PE_KNIGHTS" )

g_pPicturePVP_Result_Info_Rank_Icon3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(79+6+0,3+0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}











g_pStaticPVP_Result_MVP = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Result_MVP )
g_pStaticPVP_Result_MVP:SetName( "MVPTalkBox" )
g_pStaticPVP_Result_MVP:SetShow( false )

------------MVP-----------------
g_pPicturePVP_Result_Info_MVP = g_pUIDialog:CreatePicture()
g_pStaticPVP_Result_MVP:AddPicture( g_pPicturePVP_Result_Info_MVP )

g_pPicturePVP_Result_Info_MVP:SetTex( "DLG_Common_New_Texture20.tga", "PVP_Result_MVP" )

g_pPicturePVP_Result_Info_MVP:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(-120+0,-22+0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStaticPVP_Room_SlotIndex = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Room_SlotIndex )
g_pStaticPVP_Room_SlotIndex:SetName( "PCRoomMark" )
g_pStaticPVP_Room_SlotIndex:SetShow( false )

g_pPicturePVP_Result_Info_PCROOM = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_SlotIndex:AddPicture( g_pPicturePVP_Result_Info_PCROOM )

g_pPicturePVP_Result_Info_PCROOM:SetTex( "DLG_Common_New_Texture20.tga", "PVP_Result_PCROOM_Icon" )

g_pPicturePVP_Result_Info_PCROOM:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(170+0,1+0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}












g_pStaticPVP_Room_SlotIndex = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Room_SlotIndex )
g_pStaticPVP_Room_SlotIndex:SetName( "PremiumBonusMark" )
g_pStaticPVP_Room_SlotIndex:SetShow( false )

g_pPicturePVP_Result_Info_PCROOM = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_SlotIndex:AddPicture( g_pPicturePVP_Result_Info_PCROOM )
g_pPicturePVP_Result_Info_PCROOM:SetTex( "DLG_Common_New_Texture14.tga", "premium_mark" )
g_pPicturePVP_Result_Info_PCROOM:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(598+0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}








--[[
g_pStaticWin = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticWin )
g_pStaticWin:SetName( "PVP_Result_Decision" )

g_pStaticWin:AddString
{
 	-- MSG    		 = "",		--WIN, LOSE
 	FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,

 	SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
 	"POS            = D3DXVECTOR2(25,12)",
 	"COLOR          = D3DXCOLOR(1,1,1,0)",
	"OUTLINE_COLOR  = D3DXCOLOR(1.0,1.0,1.0,0.0)",
}
--]]





g_pStaticPVP_Result_Rank_Num= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Result_Rank_Num)
g_pStaticPVP_Result_Rank_Num:SetName( "Static_Result_Rank" )

g_pStaticPVP_Result_Rank_Num:AddString
{
	-- MSG       = "10",
	FONT_INDEX      = XUF_DODUM_15_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
	"POS            = D3DXVECTOR2(137,6)",
	"COLOR          = D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR  = D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStaticID = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticID )
g_pStaticID:SetName( "StaticID" )

g_pStaticID:AddString
{
 	 -- MSG    		 = "gorebab09",
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
 	 "POS            = D3DXVECTOR2(267+0+2,10+0)",
 	"COLOR          = D3DXCOLOR(1,1,1,1)",
	"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pStaticKILL = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticKILL )
g_pStaticKILL:SetName( "StaticKILL" )

g_pStaticKILL:AddString
{
 	 -- MSG    		 = "20",
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_RIGHT"],
 	 "POS            = D3DXVECTOR2(386+0-11-11,10+0)",
 	"COLOR          = D3DXCOLOR(1,1,1,1)",
	"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticASSIST1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticASSIST1 )
g_pStaticASSIST1:SetName( "g_pStaticASSIST1" )

g_pStaticASSIST1:AddString
{
	 MSG    		 = STR_ID_2601,
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(396+0-11-3,10+0)",
 	"COLOR          = D3DXCOLOR(1,1,1,1)",
	"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

g_pStaticASSIST2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticASSIST2 )
g_pStaticASSIST2:SetName( "StaticASSIS1T2" )

g_pStaticASSIST2:AddString
{
	 -- MSG    		 = "/20",
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_LEFT"],
 	 "POS            = D3DXVECTOR2(396+0-11+11,10+0)",
 	"COLOR          = D3DXCOLOR(1,1,1,1)",
	"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pStaticDEATH = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticDEATH )
g_pStaticDEATH:SetName( "StaticDEATH" )

g_pStaticDEATH:AddString
{
 	 -- MSG    		 = "20",
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
 	 "POS            = D3DXVECTOR2(478+0,10+0)",
 	"COLOR          = D3DXCOLOR(1,1,1,1)",
	"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pStaticVS_POINT = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticVS_POINT )
g_pStaticVS_POINT:SetName( "StaticVS_POINT" )

g_pStaticVS_POINT:AddString
{
 	 -- MSG    		 = "+10000",
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
 	 "POS            = D3DXVECTOR2(563+0-3,10+0)",
 	"COLOR          = D3DXCOLOR(1,1,1,1)",
	"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pStaticEXP = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticEXP  )
g_pStaticEXP:SetName( "StaticEXP" )

g_pStaticEXP:AddString
{
 	 -- MSG    		 = "+1000000",
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
 	 "POS            = D3DXVECTOR2(652+0-3+20,10+0)",
 	"COLOR          = D3DXCOLOR(1,1,1,1)",
	"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
	

g_pStaticSp = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSp )
g_pStaticSp:SetName( "StaticSp" )

g_pStaticSp:AddString
{
 	 -- MSG    		 = "+0",
 	 FONT_INDEX      = XUF_DODUM_11_NORMAL,
 	 FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	 SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
 	 "POS            = D3DXVECTOR2(726+0-5+20,10+0)",
 	"COLOR          = D3DXCOLOR(1,1,1,1)",
	"OUTLINE_COLOR  = D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


g_pStaticSp = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSp )
g_pStaticSp:SetName( "LevelUpString" )
g_pStaticSp:SetShow( false )

g_pPicturePVP_Result_Info_Lv_Up = g_pUIDialog:CreatePicture()
g_pStaticSp:AddPicture( g_pPicturePVP_Result_Info_Lv_Up )

g_pPicturePVP_Result_Info_Lv_Up:SetTex( "DLG_Common_New_Texture20.tga", "PVP_Result_Lv_Up" )

g_pPicturePVP_Result_Info_Lv_Up:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(798+0,1+0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


	
