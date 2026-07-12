-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_Dungeon_Room_UserInfo" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )


--------------------(정보창)


g_pStaticDungeon_Room_UserInfo = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticDungeon_Room_UserInfo )
g_pStaticDungeon_Room_UserInfo:SetName( "Background" )


g_pStaticDungeon_Room_UserInfo = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticDungeon_Room_UserInfo )
g_pStaticDungeon_Room_UserInfo:SetName( "Dungeon_Room_UserInfo" )



g_pPictureDungeon_Room_UserInfo = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Room_UserInfo:AddPicture( g_pPictureDungeon_Room_UserInfo )

g_pPictureDungeon_Room_UserInfo:SetTex( "DLG_Common_New_Texture12.TGA", "DUNGEON_USERINFO_WINDOW2" )

g_pPictureDungeon_Room_UserInfo:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(-1,-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureDungeon_Room_MyInfo = g_pUIDialog:CreatePicture()
g_pStaticDungeon_Room_UserInfo:AddPicture( g_pPictureDungeon_Room_MyInfo )

g_pPictureDungeon_Room_MyInfo:SetTex( "DLG_Common_New_Texture12.TGA", "Dungeon_MyInfo_Window" )

g_pPictureDungeon_Room_MyInfo:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(-1,-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStaticPVP_Room_UserInfo_Fatigue = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Room_UserInfo_Fatigue )
g_pStaticPVP_Room_UserInfo_Fatigue:SetName( "UserInfo_Fatigue" )

g_pPictureDungeon_Room_GaugeLow = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_UserInfo_Fatigue:AddPicture( g_pPictureDungeon_Room_GaugeLow )

g_pPictureDungeon_Room_GaugeLow:SetTex( "DLG_Common_New_Texture01.TGA", "Gauge3" )

g_pPictureDungeon_Room_GaugeLow:SetPoint
{
	ADD_SIZE_X = 171,
	"LEFT_TOP		= D3DXVECTOR2(11,46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureDungeon_Room_GaugeMiddle = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_UserInfo_Fatigue:AddPicture( g_pPictureDungeon_Room_GaugeMiddle )

g_pPictureDungeon_Room_GaugeMiddle:SetTex( "DLG_Common_New_Texture01.TGA", "Gauge2" )

g_pPictureDungeon_Room_GaugeMiddle:SetPoint
{
	ADD_SIZE_X = 171,
	"LEFT_TOP		= D3DXVECTOR2(11,46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureDungeon_Room_GaugeHigh = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_UserInfo_Fatigue:AddPicture( g_pPictureDungeon_Room_GaugeHigh )

g_pPictureDungeon_Room_GaugeHigh:SetTex( "DLG_Common_New_Texture01.TGA", "Gauge1" )

g_pPictureDungeon_Room_GaugeHigh:SetPoint
{
	ADD_SIZE_X = 171,
	"LEFT_TOP		= D3DXVECTOR2(11,46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}










g_pButtonSound = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSound )
g_pButtonSound:SetName( "Dungeon_Room_User_whisper" )
g_pButtonSound:SetNormalTex( "DLG_Common_New_Texture09.TGA", "StateIcon1_Normal" )

g_pButtonSound:SetOverTex( "DLG_Common_New_Texture09.TGA", "StateIcon1_Over" )

g_pButtonSound:SetDownTex( "DLG_Common_New_Texture09.TGA", "StateIcon1_Over" )

g_pButtonSound:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(120,20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSound:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(120,20)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSound:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(121,21)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonSound:SetCustomMsgMouseUp( STATE_DUNGEON_ROOM_UI_CUSTUM_MSG["DRUCM_WHISPER"] )
g_pButtonSound:SetGuideDesc( STR_ID_2729 )





































g_pButtonInfo = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonInfo )
g_pButtonInfo:SetName( "Dungeon_Room_User_Qusetion" )
g_pButtonInfo:SetNormalTex( "DLG_Common_New_Texture09.TGA", "StateIcon2_Normal" )

g_pButtonInfo:SetOverTex( "DLG_Common_New_Texture09.TGA", "StateIcon2_Over" )

g_pButtonInfo:SetDownTex( "DLG_Common_New_Texture09.TGA", "StateIcon2_Over" )

g_pButtonInfo:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(143,20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonInfo:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(143,20)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonInfo:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(144,21)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonInfo:SetCustomMsgMouseUp( STATE_DUNGEON_ROOM_UI_CUSTUM_MSG["DRUCM_USER_INFO"] )
g_pButtonInfo:SetGuideDesc( STR_ID_2730 )


























g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Dungeon_Room_User_exile" )
g_pButtonX:SetNormalTex( "DLG_Common_New_Texture09.TGA", "StateIcon3_Normal" )

g_pButtonX:SetOverTex( "DLG_Common_New_Texture09.TGA", "StateIcon3_Over" )

g_pButtonX:SetDownTex( "DLG_Common_New_Texture09.TGA", "StateIcon3_Over" )

g_pButtonX:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(165,20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(165,20)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(166,21)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( STATE_DUNGEON_ROOM_UI_CUSTUM_MSG["DRUCM_BAN_UNIT"] )
g_pButtonX:SetGuideDesc( STR_ID_2731 )



	
g_pStaticPVP_Room_UserInfo = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Room_UserInfo )
g_pStaticPVP_Room_UserInfo:SetName( "StaticDungeon_Room_UserInfo" )

g_pStaticPVP_Room_UserInfo:AddString
{
	MSG 			= STR_ID_2592,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(10,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pStaticPVP_Room_UserInfo:AddString
{
	-- MSG 			= "1",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pStaticPVP_Room_UserInfo:AddString
{
	-- MSG 			= "AAAAAAAAAAAA",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(55,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}





g_pStaticPVP_Room_SlotIndex = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Room_SlotIndex )
g_pStaticPVP_Room_SlotIndex:SetName( "StaticDungeon_Room_SlotIndex" )

g_pStaticPVP_Room_SlotIndex:AddString
{
	-- MSG 			= "-1",
	FONT_INDEX		= XUF_DODUM_15_BOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(-999,-999)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}





-- 핑 안테나
--------------------------------------------------------------------------------
g_pStaticPVP_Room_UserInfo_Ping = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Room_UserInfo_Ping )
g_pStaticPVP_Room_UserInfo_Ping:SetName( "Dungeon_Room_UserInfo_Ping" )
g_pStaticPVP_Room_UserInfo_Ping:SetOffsetPos( 0, 15 )


g_pPicturePVP_Room_UserInfo_Ping0 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_UserInfo_Ping:AddPicture( g_pPicturePVP_Room_UserInfo_Ping0 )

g_pPicturePVP_Room_UserInfo_Ping0:SetTex( "DLG_Common_Texture02.TGA", "Ping0" )

g_pPicturePVP_Room_UserInfo_Ping0:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(5,8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicturePVP_Room_UserInfo_Ping1 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_UserInfo_Ping:AddPicture( g_pPicturePVP_Room_UserInfo_Ping1 )
g_pPicturePVP_Room_UserInfo_Ping1:SetTex( "DLG_Common_Texture02.TGA", "Ping1" )
g_pPicturePVP_Room_UserInfo_Ping1:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(5,8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicturePVP_Room_UserInfo_Ping2 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_UserInfo_Ping:AddPicture( g_pPicturePVP_Room_UserInfo_Ping2 )
g_pPicturePVP_Room_UserInfo_Ping2:SetTex( "DLG_Common_Texture02.TGA", "Ping2" )
g_pPicturePVP_Room_UserInfo_Ping2:SetPoint
{
  
	"LEFT_TOP		= D3DXVECTOR2(5,8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePVP_Room_UserInfo_Ping3 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_UserInfo_Ping:AddPicture( g_pPicturePVP_Room_UserInfo_Ping3 )
g_pPicturePVP_Room_UserInfo_Ping3:SetTex( "DLG_Common_Texture02.TGA", "Ping3" )
g_pPicturePVP_Room_UserInfo_Ping3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(5,8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePVP_Room_UserInfo_Ping4 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_UserInfo_Ping:AddPicture( g_pPicturePVP_Room_UserInfo_Ping4 )
g_pPicturePVP_Room_UserInfo_Ping4:SetTex( "DLG_Common_Texture02.TGA", "Ping_Unknown" )
g_pPicturePVP_Room_UserInfo_Ping4:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(5,8)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStaticPVP_Room_MyrInfo = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Room_MyrInfo )
g_pStaticPVP_Room_MyrInfo:SetName( "Dungeon_Room_UserInfo_X_Icon" )
g_pStaticPVP_Room_MyrInfo:SetShow( false )

g_pPicturePVP_Room_MyrInfo_X = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_MyrInfo:AddPicture( g_pPicturePVP_Room_MyrInfo_X )

g_pPicturePVP_Room_MyrInfo_X:SetTex( "DLG_Common_Button01.TGA", "X_Icon" )

g_pPicturePVP_Room_MyrInfo_X:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(-12+3,13+23)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pButtonSpiritButton = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSpiritButton )
g_pButtonSpiritButton:SetName( "SpiritButton" )
g_pButtonSpiritButton:SetNormalTex(  "DLG_Room_Button0.tga", "Invisible" )

g_pButtonSpiritButton:SetOverTex(  "DLG_Room_Button0.tga", "Invisible"  )

g_pButtonSpiritButton:SetDownTex(  "DLG_Room_Button0.tga", "Invisible"  )

g_pButtonSpiritButton:SetNormalPoint
{
	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(10,46)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(187,55)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSpiritButton:SetOverPoint
{


	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(10,46)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(187,55)",


	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSpiritButton:SetDownPoint
{

	USE_TEXTURE_SIZE = FALSE,

	"LEFT_TOP		= D3DXVECTOR2(10,46)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(187,55)",
	
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonSpiritButton:SetGuideDesc( STR_ID_2725 )

