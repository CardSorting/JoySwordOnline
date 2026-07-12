-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "DLG_PVP_Room_UserInfo" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )




g_pStaticPVP_Room_UserInfo = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Room_UserInfo )
g_pStaticPVP_Room_UserInfo:SetName( "g_pStaticPVP_Room_UserInfo" )



g_pPicturePVP_Room_UserInfo = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_UserInfo:AddPicture( g_pPicturePVP_Room_UserInfo )

g_pPicturePVP_Room_UserInfo:SetTex( "DLG_Common_New_Texture09.TGA", "PVP_State_Window1" )

g_pPicturePVP_Room_UserInfo:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(-1,-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--------------------(내 정보 창)


g_pStaticPVP_Room_MyInfo = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Room_MyInfo )
g_pStaticPVP_Room_MyInfo:SetName( "PVP_Room_UserInfo_BG" )



g_pPicturePVP_Room_MyInfo = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_MyInfo:AddPicture( g_pPicturePVP_Room_MyInfo )

g_pPicturePVP_Room_MyInfo:SetTex( "DLG_Common_New_Texture09.TGA", "PVP_State_Window2" )

g_pPicturePVP_Room_MyInfo:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(-1,-1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pStaticPVP_Room_MyrInfo = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Room_MyrInfo )
g_pStaticPVP_Room_MyrInfo:SetName( "PVP_Room_UserInfo_Grade" )


g_pPicturePVP_Room_MyrInfo_Grade = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_MyrInfo:AddPicture( g_pPicturePVP_Room_MyrInfo_Grade )

g_pPicturePVP_Room_MyrInfo_Grade:SetTex( "DLG_Common_Texture01.TGA", "Black" )

g_pPicturePVP_Room_MyrInfo_Grade:SetPoint
{
    USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(11,5-3)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(11+22,5+24-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






   
-------------(버튼)

g_pButtonSound = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonSound )
g_pButtonSound:SetName( "PVP_Room_User_whisper" )
g_pButtonSound:SetNormalTex( "DLG_Common_New_Texture09.TGA", "StateIcon1_Normal" )

g_pButtonSound:SetOverTex( "DLG_Common_New_Texture09.TGA", "StateIcon1_Over" )

g_pButtonSound:SetDownTex( "DLG_Common_New_Texture09.TGA", "StateIcon1_Over" )

g_pButtonSound:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(120-29,20+5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSound:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(120-29,20+5)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSound:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(121-29,21+5)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonSound:SetCustomMsgMouseUp( PVP_ROOM_UI_CUSTOM_MSG["PRUCM_WHISPER"] )
g_pButtonSound:SetGuideDesc( STR_ID_2729 )


g_pButtonInfo = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonInfo )
g_pButtonInfo:SetName( "PVP_Room_User_Qusetion" )
g_pButtonInfo:SetNormalTex( "DLG_Common_New_Texture09.TGA", "StateIcon2_Normal" )

g_pButtonInfo:SetOverTex( "DLG_Common_New_Texture09.TGA", "StateIcon2_Over" )

g_pButtonInfo:SetDownTex( "DLG_Common_New_Texture09.TGA", "StateIcon2_Over" )

g_pButtonInfo:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(143-29,20+5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonInfo:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(143-29,20+5)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonInfo:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(144-29,21+5)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonInfo:SetCustomMsgMouseUp( PVP_ROOM_UI_CUSTOM_MSG["PRUCM_USER_INFO"] )
g_pButtonInfo:SetGuideDesc( STR_ID_2730 )

g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "PVP_Room_User_exile" )
g_pButtonX:SetNormalTex( "DLG_Common_New_Texture09.TGA", "StateIcon3_Normal" )

g_pButtonX:SetOverTex( "DLG_Common_New_Texture09.TGA", "StateIcon3_Over" )

g_pButtonX:SetDownTex( "DLG_Common_New_Texture09.TGA", "StateIcon3_Over" )

g_pButtonX:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(165-29,20+5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(165-29,20+5)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(166-29,21+5)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( PVP_ROOM_UI_CUSTOM_MSG["PRUCM_BAN_UNIT"] )
g_pButtonX:SetGuideDesc( STR_ID_2731 )

-----------------------(폰트)





	
	
g_pStaticPVP_Room_UserInfo = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Room_UserInfo )
g_pStaticPVP_Room_UserInfo:SetName( "StaticPVP_Room_UserInfo" )

g_pStaticPVP_Room_UserInfo:AddString
{
	-- MSG 			= ".",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(10,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,0.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pStaticPVP_Room_UserInfo:AddString
{
	-- MSG 			= "",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(30,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,0.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}

g_pStaticPVP_Room_UserInfo:AddString
{
	-- MSG 			= "WWWWWWWWWWWW",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(40,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


g_pStaticPVP_Room_SlotIndex = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPVP_Room_SlotIndex )
g_pStaticPVP_Room_SlotIndex:SetName( "StaticPVP_Room_SlotIndex" )

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
g_pStaticPVP_Room_UserInfo_Ping:SetName( "PVP_Room_UserInfo_Ping" )
g_pStaticPVP_Room_UserInfo_Ping:SetOffsetPos( 0, 15 )


g_pPicturePVP_Room_UserInfo_Ping0 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_UserInfo_Ping:AddPicture( g_pPicturePVP_Room_UserInfo_Ping0 )

g_pPicturePVP_Room_UserInfo_Ping0:SetTex( "DLG_Common_Texture02.TGA", "Ping0" )

g_pPicturePVP_Room_UserInfo_Ping0:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(5,8+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicturePVP_Room_UserInfo_Ping1 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_UserInfo_Ping:AddPicture( g_pPicturePVP_Room_UserInfo_Ping1 )
g_pPicturePVP_Room_UserInfo_Ping1:SetTex( "DLG_Common_Texture02.TGA", "Ping1" )
g_pPicturePVP_Room_UserInfo_Ping1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(5,8+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicturePVP_Room_UserInfo_Ping2 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_UserInfo_Ping:AddPicture( g_pPicturePVP_Room_UserInfo_Ping2 )
g_pPicturePVP_Room_UserInfo_Ping2:SetTex( "DLG_Common_Texture02.TGA", "Ping2" )
g_pPicturePVP_Room_UserInfo_Ping2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(5,8+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePVP_Room_UserInfo_Ping3 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_UserInfo_Ping:AddPicture( g_pPicturePVP_Room_UserInfo_Ping3 )
g_pPicturePVP_Room_UserInfo_Ping3:SetTex( "DLG_Common_Texture02.TGA", "Ping3" )
g_pPicturePVP_Room_UserInfo_Ping3:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(5,8+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicturePVP_Room_UserInfo_Ping4 = g_pUIDialog:CreatePicture()
g_pStaticPVP_Room_UserInfo_Ping:AddPicture( g_pPicturePVP_Room_UserInfo_Ping4 )
g_pPicturePVP_Room_UserInfo_Ping4:SetTex( "DLG_Common_Texture02.TGA", "Ping_Unknown" )
g_pPicturePVP_Room_UserInfo_Ping4:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(5,8+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----길드명
g_pStaticInfo_GuildName = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticInfo_GuildName )
g_pStaticInfo_GuildName:SetName( "Static_GuildName" )

g_pStaticInfo_GuildName:AddString
{
	-- MSG 			= "닉넴은여섯자",
	FONT_INDEX      = XUF_DODUM_13_SEMIBOLD,
 	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
 	SORT_FLAG       = DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(84,-219)",
	"COLOR			= D3DXCOLOR(0.6,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}



------SERVER

Static_SERVER = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( Static_SERVER )
Static_SERVER:SetName( "Static_SERVER" )


	
g_pPictureServer = g_pUIDialog:CreatePicture()
Static_SERVER:AddPicture( g_pPictureServer )

g_pPictureServer:SetTex( "DLG_UI_Common_Texture11.tga", "Soles" )

g_pPictureServer:SetPoint
{
    --USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(11+125,5+2-3)",
	--"RIGHT_BOTTOM	= D3DXVECTOR2(11+22,5+24-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




