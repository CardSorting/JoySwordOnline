-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStaticJoinList = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticJoinList )
g_pStaticJoinList:SetName( "StaticJoinList" )
g_pUIDialog:SetFront( true )

g_pUIDialog:SetModal( false )
g_pUIDialog:SetPos( 100, 100 ) 
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_GAME_EDIT"] )
g_pUIDialog:SetCloseCustomUIEventID( UI_GUILD_BOARD_CUSTOM_MSG["UGBCM_JOIN_LIST_EXIT"] )

--[[
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 100, 100, 0 ) ) -- 위치
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 460, 493, 0 ) ) -- Size
--]]
-----------캐릭터 아이콘 위치
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 36, 126, 0 ) ) 
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 36, 126+37, 0 ) ) 
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 36, 126+37+37, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 36, 126+37+37+37, 0 ) ) 
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 36, 126+37+37+37+37, 0 ) )
g_pUIDialog:AddDummyPos( D3DXVECTOR3( 36, 126+37+37+37+37+37, 0 ) )







for	index = 0, 4 do
	g_pUIDialog:AddDummyPos( D3DXVECTOR3( 54,162 + index * 50, 0 ) )
end



-------------------------BG

g_pPicture_BG_A_01 = g_pUIDialog:CreatePicture()
g_pStaticJoinList:AddPicture( g_pPicture_BG_A_01 )

g_pPicture_BG_A_01:SetTex( "DLG_UI_Common_Texture06.TGA", "BG_B_LEFT" )

g_pPicture_BG_A_01:SetPoint
{
 --    ADD_SIZE_X = 260,
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_BG_A_02 = g_pUIDialog:CreatePicture()
g_pStaticJoinList:AddPicture( g_pPicture_BG_A_02 )

g_pPicture_BG_A_02:SetTex( "DLG_UI_Common_Texture06.TGA", "BG_B_CENTER" )

g_pPicture_BG_A_02:SetPoint
{
     ADD_SIZE_X = 480,
	"LEFT_TOP		= D3DXVECTOR2(34,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BG_A_03 = g_pUIDialog:CreatePicture()
g_pStaticJoinList:AddPicture( g_pPicture_BG_A_03 )

g_pPicture_BG_A_03:SetTex( "DLG_UI_Common_Texture06.TGA", "BG_B_RIGHT" )

g_pPicture_BG_A_03:SetPoint
{
 --    ADD_SIZE_X = 260,
	"LEFT_TOP		= D3DXVECTOR2(516,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




g_pPicture_BOX = g_pUIDialog:CreatePicture()
g_pStaticJoinList:AddPicture( g_pPicture_BOX )

g_pPicture_BOX:SetTex( "DLG_UI_Common_Texture08.TGA", "AUTO_BOX_LEFT" )

g_pPicture_BOX:SetPoint
{
 --    ADD_SIZE_X = 260,
	"LEFT_TOP		= D3DXVECTOR2(28,64)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_BG_A_02 = g_pUIDialog:CreatePicture()
g_pStaticJoinList:AddPicture( g_pPicture_BG_A_02 )

g_pPicture_BG_A_02:SetTex( "DLG_UI_Common_Texture08.TGA", "AUTO_BOX_MIDDLE" )

g_pPicture_BG_A_02:SetPoint
{
     ADD_SIZE_X = 146,
	"LEFT_TOP		= D3DXVECTOR2(33,64)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_BG_A_03 = g_pUIDialog:CreatePicture()
g_pStaticJoinList:AddPicture( g_pPicture_BG_A_03 )

g_pPicture_BG_A_03:SetTex( "DLG_UI_Common_Texture08.TGA", "AUTO_BOX_RIGHT" )

g_pPicture_BG_A_03:SetPoint
{
 --    ADD_SIZE_X = 260,
	"LEFT_TOP		= D3DXVECTOR2(180,64)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





------ RadioJoinList 신청자 리스트 라디오 버튼

g_pRadioJoinList1 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioJoinList1 )

g_pRadioJoinList1:SetFixOverByCheck( true )
g_pRadioJoinList1:SetShowOffBGByCheck( true )

g_pRadioJoinList1:SetName( "RadioJoinList1" )

g_pRadioJoinList1:SetNormalTex( "DLG_UI_Common_Texture06.tga", "Black_1px" )
g_pRadioJoinList1:SetOverTex( "DLG_UI_BUTTON16.tga", "BAR_OVER" )
g_pRadioJoinList1:SetCheckedTex( "DLG_UI_BUTTON16.tga", "BAR_OVER" )


g_pRadioJoinList1:SetBGPoint
{
    	"LEFT_TOP		= D3DXVECTOR2(31,119)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioJoinList1:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(31,119)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioJoinList1:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(31,119)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(32+487, 120+34)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioJoinList1:SetCheckPoint
{
      	ADD_SIZE_X = -2,
     	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(31+1,119+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioJoinList1:SetGroupID( 1 )
g_pRadioJoinList1:SetChecked( true )
g_pRadioJoinList1:SetCustomMsgChecked( UI_GUILD_BOARD_CUSTOM_MSG["UGBCM_SELECT_JOIN_LIST"] )
g_pRadioJoinList1:AddDummyInt(0)



g_pRadioJoinList2 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioJoinList2 )

g_pRadioJoinList2:SetFixOverByCheck( true )
g_pRadioJoinList2:SetShowOffBGByCheck( true )

g_pRadioJoinList2:SetName( "RadioJoinList2" )

g_pRadioJoinList2:SetNormalTex( "DLG_UI_Common_Texture06.tga", "Black_1px" )
g_pRadioJoinList2:SetOverTex( "DLG_UI_BUTTON16.tga", "BAR_OVER" )
g_pRadioJoinList2:SetCheckedTex( "DLG_UI_BUTTON16.tga", "BAR_OVER" )


g_pRadioJoinList2:SetBGPoint
{
    	"LEFT_TOP		= D3DXVECTOR2(31,119+37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioJoinList2:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(31,119+37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioJoinList2:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(31,119+37)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(31+487, 119+34+37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioJoinList2:SetCheckPoint
{
      	ADD_SIZE_X = -2,
    	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(32,120+37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioJoinList2:SetGroupID( 1 )
g_pRadioJoinList2:SetChecked( false)
g_pRadioJoinList2:SetCustomMsgChecked( UI_GUILD_BOARD_CUSTOM_MSG["UGBCM_SELECT_JOIN_LIST"] )
g_pRadioJoinList2:AddDummyInt(1)




g_pRadioJoinList3 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioJoinList3 )

g_pRadioJoinList3:SetFixOverByCheck( true )
g_pRadioJoinList3:SetShowOffBGByCheck( true )

g_pRadioJoinList3:SetName( "RadioJoinList3" )

g_pRadioJoinList3:SetNormalTex( "DLG_UI_Common_Texture06.tga", "Black_1px" )
g_pRadioJoinList3:SetOverTex( "DLG_UI_BUTTON16.tga", "BAR_OVER" )
g_pRadioJoinList3:SetCheckedTex( "DLG_UI_BUTTON16.tga", "BAR_OVER" )


g_pRadioJoinList3:SetBGPoint
{
    	"LEFT_TOP		= D3DXVECTOR2(31,119+37+37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioJoinList3:SetBGMouseOverPoint
{
    	"LEFT_TOP		= D3DXVECTOR2(31,119+37+37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioJoinList3:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(31,119+37+37)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(31+487, 119+34+37+37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioJoinList3:SetCheckPoint
{
      	ADD_SIZE_X = -2,
    	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(32,120+37+37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioJoinList3:SetGroupID( 1 )
g_pRadioJoinList3:SetChecked( false)
g_pRadioJoinList3:SetCustomMsgChecked( UI_GUILD_BOARD_CUSTOM_MSG["UGBCM_SELECT_JOIN_LIST"] )
g_pRadioJoinList3:AddDummyInt(2)




g_pRadioJoinList4 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioJoinList4 )

g_pRadioJoinList4:SetFixOverByCheck( true )
g_pRadioJoinList4:SetShowOffBGByCheck( true )

g_pRadioJoinList4:SetName( "RadioJoinList4" )

g_pRadioJoinList4:SetNormalTex( "DLG_UI_Common_Texture06.tga", "Black_1px" )
g_pRadioJoinList4:SetOverTex( "DLG_UI_BUTTON16.tga", "BAR_OVER" )
g_pRadioJoinList4:SetCheckedTex( "DLG_UI_BUTTON16.tga", "BAR_OVER" )


g_pRadioJoinList4:SetBGPoint
{
    	"LEFT_TOP		= D3DXVECTOR2(31,119+37+37+37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioJoinList4:SetBGMouseOverPoint
{
    	"LEFT_TOP		= D3DXVECTOR2(31,119+37+37+37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioJoinList4:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(31,119+37+37+37)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(31+487, 119+34+37+37+37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioJoinList4:SetCheckPoint
{
      	ADD_SIZE_X = -2,
    	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(32,120+37+37+37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioJoinList4:SetGroupID( 1 )
g_pRadioJoinList4:SetChecked( false)
g_pRadioJoinList4:SetCustomMsgChecked( UI_GUILD_BOARD_CUSTOM_MSG["UGBCM_SELECT_JOIN_LIST"] )
g_pRadioJoinList4:AddDummyInt(3)




g_pRadioJoinList5 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioJoinList5 )

g_pRadioJoinList5:SetFixOverByCheck( true )
g_pRadioJoinList5:SetShowOffBGByCheck( true )

g_pRadioJoinList5:SetName( "RadioJoinList5" )

g_pRadioJoinList5:SetNormalTex( "DLG_UI_Common_Texture06.tga", "Black_1px" )
g_pRadioJoinList5:SetOverTex( "DLG_UI_BUTTON16.tga", "BAR_OVER" )
g_pRadioJoinList5:SetCheckedTex( "DLG_UI_BUTTON16.tga", "BAR_OVER" )


g_pRadioJoinList5:SetBGPoint
{
    	"LEFT_TOP		= D3DXVECTOR2(31,119+37+37+37+37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioJoinList5:SetBGMouseOverPoint
{
    	"LEFT_TOP		= D3DXVECTOR2(31,119+37+37+37+37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioJoinList5:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(31,119+37+37+37+37)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(31+487, 119+34+37+37+37+37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioJoinList5:SetCheckPoint
{
      	ADD_SIZE_X = -2,
    	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(32,120+37+37+37+37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioJoinList5:SetGroupID( 1 )
g_pRadioJoinList5:SetChecked( false)
g_pRadioJoinList5:SetCustomMsgChecked( UI_GUILD_BOARD_CUSTOM_MSG["UGBCM_SELECT_JOIN_LIST"] )
g_pRadioJoinList5:AddDummyInt(4)




g_pRadioJoinList6 = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioJoinList6 )

g_pRadioJoinList6:SetFixOverByCheck( true )
g_pRadioJoinList6:SetShowOffBGByCheck( true )

g_pRadioJoinList6:SetName( "RadioJoinList6" )

g_pRadioJoinList6:SetNormalTex( "DLG_UI_Common_Texture06.tga", "Black_1px" )
g_pRadioJoinList6:SetOverTex( "DLG_UI_BUTTON16.tga", "BAR_OVER" )
g_pRadioJoinList6:SetCheckedTex( "DLG_UI_BUTTON16.tga", "BAR_OVER" )


g_pRadioJoinList6:SetBGPoint
{
    	"LEFT_TOP		= D3DXVECTOR2(31,119+37+37+37+37+37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioJoinList6:SetBGMouseOverPoint
{
    	"LEFT_TOP		= D3DXVECTOR2(31,119+37+37+37+37+37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioJoinList6:SetRBPoint
{
 	USE_TEXTURE_SIZE	= FALSE,
 	"LEFT_TOP		= D3DXVECTOR2(31,119+37+37+37+37+37)",
	"RIGHT_BOTTOM		= D3DXVECTOR2(31+487, 119+34+37+37+37+37+37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioJoinList6:SetCheckPoint
{
      	ADD_SIZE_X = -2,
    	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(32,120+37+37+37+37+37)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioJoinList6:SetGroupID( 1 )
g_pRadioJoinList6:SetChecked( false)
g_pRadioJoinList6:SetCustomMsgChecked( UI_GUILD_BOARD_CUSTOM_MSG["UGBCM_SELECT_JOIN_LIST"] )
g_pRadioJoinList6:AddDummyInt(5)




-------StaticJoinList 신청자 정보 스트링-------------------------

g_pStaticJoinList1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticJoinList1 )
g_pStaticJoinList1:SetName( "StaticJoinList1" )

------닉네임
g_pStaticJoinList1:AddString
{
	MSG 			= "WWWWWWWWWWWW",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(62,128)",
	"COLOR			= D3DXCOLOR(1.0,0.85,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.2,0.2,0.4,1.0)",
}
-----신청메시지
g_pStaticJoinList1:AddString
{
	MSG 			= "일이삼사오육칠팔구십일이삼사오육..",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(193,128)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.6,0.3,0.1,1.0)",
}
-----신청일
g_pStaticJoinList1:AddString
{
	MSG 			= "10.01/23",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(426,128)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.6,0.3,0.1,1.0)",
}


g_pStaticJoinList2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticJoinList2 )
g_pStaticJoinList2:SetName( "StaticJoinList2" )

------닉네임
g_pStaticJoinList2:AddString
{
	MSG 			= "WWWWWWWWWWWW",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(62,128+37)",
	"COLOR			= D3DXCOLOR(1.0,0.85,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.2,0.2,0.4,1.0)",
}
-----신청메시지
g_pStaticJoinList2:AddString
{
	MSG 			= "일이삼사오육칠팔구십일이삼사오육..",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(193,128+37)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.6,0.3,0.1,1.0)",
}
-----신청일
g_pStaticJoinList2:AddString
{
	MSG 			= "10.01/23",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(426,128+37)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.6,0.3,0.1,1.0)",
}





g_pStaticJoinList3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticJoinList3 )
g_pStaticJoinList3:SetName( "StaticJoinList3" )

------닉네임
g_pStaticJoinList3:AddString
{
	MSG 			= "WWWWWWWWWWWW",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(62,128+37+37)",
	"COLOR			= D3DXCOLOR(1.0,0.85,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.2,0.2,0.4,1.0)",
}
-----신청메시지
g_pStaticJoinList3:AddString
{
	MSG 			= "일이삼사오육칠팔구십일이삼사오육..",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(193,128+37+37)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.6,0.3,0.1,1.0)",
}
-----신청일
g_pStaticJoinList3:AddString
{
	MSG 			= "10.01/23",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(426,128+37+37)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.6,0.3,0.1,1.0)",
}






g_pStaticJoinList4 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticJoinList4 )
g_pStaticJoinList4:SetName( "StaticJoinList4" )

------닉네임
g_pStaticJoinList4:AddString
{
	MSG 			= "WWWWWWWWWWWW",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(62,128+37+37+37)",
	"COLOR			= D3DXCOLOR(1.0,0.85,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.2,0.2,0.4,1.0)",
}
-----신청메시지
g_pStaticJoinList4:AddString
{
	MSG 			= "일이삼사오육칠팔구십일이삼사오육..",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(193,128+37+37+37)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.6,0.3,0.1,1.0)",
}
-----신청일
g_pStaticJoinList4:AddString
{
	MSG 			= "10.01/23",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(426,128+37+37+37)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.6,0.3,0.1,1.0)",
}




g_pStaticJoinList5 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticJoinList5 )
g_pStaticJoinList5:SetName( "StaticJoinList5" )

------닉네임
g_pStaticJoinList5:AddString
{
	MSG 			= "WWWWWWWWWWWW",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(62,128+37+37+37+37)",
	"COLOR			= D3DXCOLOR(1.0,0.85,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.2,0.2,0.4,1.0)",
}
-----신청메시지
g_pStaticJoinList5:AddString
{
	MSG 			= "일이삼사오육칠팔구십일이삼사오육..",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(193,128+37+37+37+37)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.6,0.3,0.1,1.0)",
}
-----신청일
g_pStaticJoinList5:AddString
{
	MSG 			= "10.01/23",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(426,128+37+37+37+37)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.6,0.3,0.1,1.0)",
}



g_pStaticJoinList6 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticJoinList6 )
g_pStaticJoinList6:SetName( "StaticJoinList6" )

------닉네임
g_pStaticJoinList6:AddString
{
	MSG 			= "WWWWWWWWWWWW",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(62,128+37+37+37+37+37)",
	"COLOR			= D3DXCOLOR(1.0,0.85,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.2,0.2,0.4,1.0)",
}
-----신청메시지
g_pStaticJoinList6:AddString
{
	MSG 			= "일이삼사오육칠팔구십일이삼사오육..",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(193,128+37+37+37+37+37)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.6,0.3,0.1,1.0)",
}
-----신청일
g_pStaticJoinList6:AddString
{
	MSG 			= "10.01/23",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(426,128+37+37+37+37+37)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.6,0.3,0.1,1.0)",
}


---EXIT 버튼


g_pButton_exit = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_exit )
g_pButton_exit:SetName( "_exit" )
g_pButton_exit:SetNormalTex( "DLG_UI_Button01.tga", "exit_NORMAL" )

g_pButton_exit:SetOverTex( "DLG_UI_Button01.tga", "exit_OVER" )

g_pButton_exit:SetDownTex( "DLG_UI_Button01.tga", "exit_OVER" )

g_pButton_exit:SetNormalPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(506+4,14+4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(506,14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetDownPoint
{
      	ADD_SIZE_X = -2,
     	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(506+1,14+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_exit:SetCustomMsgMouseUp( UI_GUILD_BOARD_CUSTOM_MSG["UGBCM_JOIN_LIST_EXIT"] )

--- << 버튼

g_pButtonL_arrow = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonL_arrow )
g_pButtonL_arrow:SetName( "Button_Larrow" )
g_pButtonL_arrow:SetNormalTex( "DLG_UI_BUTTON01.tga", "L_arrow_normal" )

g_pButtonL_arrow:SetOverTex( "DLG_UI_BUTTON01.tga", "L_arrow_over" )

g_pButtonL_arrow:SetDownTex( "DLG_UI_BUTTON01.tga", "L_arrow_over" )

g_pButtonL_arrow:SetNormalPoint
{
    	"LEFT_TOP		= D3DXVECTOR2(110+318,393-329)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(110+318,392-329)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetDownPoint
{
     	ADD_SIZE_X = -2,
     	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(110+1+318,392+1-329)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonL_arrow:SetCustomMsgMouseUp( UI_GUILD_BOARD_CUSTOM_MSG["UGBCM_PUSH_PREV_PAGE_JOIN_LIST"] )


--->>  버튼

g_pButtonR_arrow = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonR_arrow )
g_pButtonR_arrow:SetName( "Button_Rarrow" )
g_pButtonR_arrow:SetNormalTex( "DLG_UI_BUTTON01.tga", "R_arrow_normal" )

g_pButtonR_arrow:SetOverTex( "DLG_UI_BUTTON01.tga", "R_arrow_over" )

g_pButtonR_arrow:SetDownTex( "DLG_UI_BUTTON01.tga", "R_arrow_over" )

g_pButtonR_arrow:SetNormalPoint
{
    	"LEFT_TOP		= D3DXVECTOR2(189+318,393-329)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(188+318,392-329)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetDownPoint
{
      	ADD_SIZE_X = -2,
     	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(188+1+318,392+1-329)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonR_arrow:SetCustomMsgMouseUp( UI_GUILD_BOARD_CUSTOM_MSG["UGBCM_PUSH_NEXT_PAGE_JOIN_LIST"] )

-----페이지
g_pPicture_page= g_pUIDialog:CreatePicture()
g_pStaticJoinList:AddPicture( g_pPicture_page)

g_pPicture_page:SetTex( "DLG_UI_COMMON_TEXTURE01.TGA", "page_bar" )

g_pPicture_page:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(128+318,391-329)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

------------페이지 번호


g_pStatic_number = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_number )
g_pStatic_number:SetName( "Static_PageNumber" )

g_pStatic_number:AddString
{
	MSG 			= "1/3",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(156+318,396-329)",
	"COLOR			= D3DXCOLOR(0.0,0.0,0.0,0.7)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}


-------------------------------------------------- 마우스 오버 용 버튼
g_pButton_opacity1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_opacity1 )
g_pButton_opacity1:SetName( "opacity1" )
g_pButton_opacity1:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity1:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity1:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity1:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(193,128)",
	"RIGHT_BOTTOM			= D3DXVECTOR2(193+150,128+15)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity1:SetOverPoint
{
     USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(193,128)",
	"RIGHT_BOTTOM			= D3DXVECTOR2(193+150,128+15)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity1:SetDownPoint
{
    USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(193,128)",
	"RIGHT_BOTTOM			= D3DXVECTOR2(193+150,128+15)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity1:SetGuideDesc( STR_ID_2573 )
--g_pButton_opacity1:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OVER"] )
--g_pButton_opacity1:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OUT"] )

----

g_pButton_opacity2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_opacity2 )
g_pButton_opacity2:SetName( "opacity2" )
g_pButton_opacity2:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity2:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity2:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity2:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(193,128+37)",
	"RIGHT_BOTTOM			= D3DXVECTOR2(193+150,128+40+37)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity2:SetOverPoint
{
     USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(193,128+37)",
	"RIGHT_BOTTOM			= D3DXVECTOR2(193+150,128+40+37)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity2:SetDownPoint
{
    USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(193,128+37)",
	"RIGHT_BOTTOM			= D3DXVECTOR2(193+150,128+40+37)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity2:SetGuideDesc( STR_ID_2573 )
--g_pButton_opacity2:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OVER"] )
--g_pButton_opacity2:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OUT"] )


----

g_pButton_opacity3 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_opacity3 )
g_pButton_opacity3:SetName( "opacity3" )
g_pButton_opacity3:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity3:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity3:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity3:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(193,128+37+37)",
	"RIGHT_BOTTOM			= D3DXVECTOR2(193+150,128+40+37+37)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity3:SetOverPoint
{
     USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(193,128+37+37)",
	"RIGHT_BOTTOM			= D3DXVECTOR2(193+150,128+40+37+37)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity3:SetDownPoint
{
    USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(193,128+37+37)",
	"RIGHT_BOTTOM			= D3DXVECTOR2(193+150,128+40+37+37)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity3:SetGuideDesc( STR_ID_2573 )
--g_pButton_opacity3:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OVER"] )
--g_pButton_opacity3:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OUT"] )


----

g_pButton_opacity4 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_opacity4 )
g_pButton_opacity4:SetName( "opacity4" )
g_pButton_opacity4:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity4:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity4:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity4:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(193,128+37+37+37)",
	"RIGHT_BOTTOM			= D3DXVECTOR2(193+150,128+40+37+37+37)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity4:SetOverPoint
{
     USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(193,128+37+37+37)",
	"RIGHT_BOTTOM			= D3DXVECTOR2(193+150,128+40+37+37+37)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity4:SetDownPoint
{
    USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(193,128+37+37+37)",
	"RIGHT_BOTTOM			= D3DXVECTOR2(193+150,128+40+37+37+37)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity4:SetGuideDesc( STR_ID_2573 )
--g_pButton_opacity4:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OVER"] )
--g_pButton_opacity4:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OUT"] )



----

g_pButton_opacity5 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_opacity5 )
g_pButton_opacity5:SetName( "opacity5" )
g_pButton_opacity5:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity5:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity5:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity5:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(193,128+37+37+37+37)",
	"RIGHT_BOTTOM			= D3DXVECTOR2(193+150,128+40+37+37+37+37)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity5:SetOverPoint
{
     USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(193,128+37+37+37+37)",
	"RIGHT_BOTTOM			= D3DXVECTOR2(193+150,128+40+37+37+37+37)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity5:SetDownPoint
{
    USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(193,128+37+37+37+37)",
	"RIGHT_BOTTOM			= D3DXVECTOR2(193+150,128+40+37+37+37+37)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity5:SetGuideDesc( STR_ID_2573 )
--g_pButton_opacity5:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OVER"] )
--g_pButton_opacity5:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OUT"] )


g_pButton_opacity6 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_opacity6 )
g_pButton_opacity6:SetName( "opacity6" )
g_pButton_opacity6:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity6:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity6:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )
g_pButton_opacity6:SetNormalPoint
{
	USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(193,128+37+37+37+37+37)",
	"RIGHT_BOTTOM			= D3DXVECTOR2(193+150,128+40+37+37+37+37+37)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity6:SetOverPoint
{
     USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(193,128+37+37+37+37+37)",
	"RIGHT_BOTTOM			= D3DXVECTOR2(193+150,128+40+37+37+37+37+37)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity6:SetDownPoint
{
    USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP			= D3DXVECTOR2(193,128+37+37+37+37+37)",
	"RIGHT_BOTTOM			= D3DXVECTOR2(193+150,128+40+37+37+37+37+37)",
	"COLOR				= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME			= 0.0,
}
g_pButton_opacity6:SetGuideDesc( STR_ID_2573 )
--g_pButton_opacity6:SetCustomMsgMouseOver( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OVER"] )
--g_pButton_opacity6:SetCustomMsgMouseOut( SKILL_TREE_UI_CUSTOM_MSG["STUCM_INGAME_ICON_MOUSE_OUT"] )






--- 가입 수락

g_pButtonAccept = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonAccept )
g_pButtonAccept:SetName( "ButtonAccept" )
g_pButtonAccept:SetNormalTex( "DLG_UI_BUTTON13.tga", "BTN_BG_NORMAL" )

g_pButtonAccept:SetOverTex( "DLG_UI_BUTTON13.tga", "BTN_BG_OVER" )

g_pButtonAccept:SetDownTex( "DLG_UI_BUTTON13.tga", "BTN_BG_OVER" )

g_pButtonAccept:SetNormalPoint
{
    	"LEFT_TOP		= D3DXVECTOR2(266-67,442-84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonAccept:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(266-67-2,442-2-84)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonAccept:SetDownPoint
{
      	ADD_SIZE_X = -2,
    	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(266-67-2+1,442-2+1-84)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonAccept:SetCustomMsgMouseUp( UI_GUILD_BOARD_CUSTOM_MSG["UGBCM_PUSH_ACCEPT"] )



--->>  가입 삭제

g_pButtonRemove = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonRemove )
g_pButtonRemove:SetName( "ButtonRemove" )
g_pButtonRemove:SetNormalTex( "DLG_UI_BUTTON13.tga", "BTN_BG_NORMAL" )

g_pButtonRemove:SetOverTex( "DLG_UI_BUTTON13.tga", "BTN_BG_OVER" )

g_pButtonRemove:SetDownTex( "DLG_UI_BUTTON13.tga", "BTN_BG_OVER" )

g_pButtonRemove:SetNormalPoint
{	
   	"LEFT_TOP		= D3DXVECTOR2(266+83-67,442-84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRemove:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(266+83-67-2,442-2-84)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRemove:SetDownPoint
{
      	ADD_SIZE_X = -2,
     	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(266+83-67-2+1,442-2+1-84)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonRemove:SetCustomMsgMouseUp( UI_GUILD_BOARD_CUSTOM_MSG["UGBCM_PUSH_REMOVE"] )



g_pStatic_TEXT = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_TEXT )
g_pStatic_TEXT:SetName( "g_pStaticTEXT" )

---------------길드광고 타이틀


g_pStatic_TEXT:AddString
{
	MSG 			= STR_ID_4869,
	FONT_INDEX		= XUF_DODUM_20_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(19+3,19+3)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}
g_pStatic_TEXT:AddString
{
	MSG 			= STR_ID_4869,
	FONT_INDEX		= XUF_DODUM_20_BOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(19,19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


------------서브 타이틀

-- 신청자 닉네임
g_pStatic_TEXT:AddString
{
	MSG 			= STR_ID_4870,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(36,98)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.6,0.3,0.1,1.0)",
}

-- 신청메시지
g_pStatic_TEXT:AddString
{
	MSG 			= STR_ID_4871,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(211-20,98)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.6,0.3,0.1,1.0)",
}

-- 신청일
g_pStatic_TEXT:AddString
{
	MSG 			= STR_ID_4872,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
--	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(426 - 6,98)",
	"COLOR			= D3DXCOLOR(0.4,0.4,0.4,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.6,0.3,0.1,1.0)",
}

------------- 버튼 

g_pStatic_TEXT:AddString
{
	MSG 			= STR_ID_4873,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(304-67,446-84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.6,0.3,0.1,1.0)",
}


g_pStatic_TEXT:AddString
{
	MSG 			= STR_ID_4874,
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	"POS 			= D3DXVECTOR2(304+84-67,446-84)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.6,0.3,0.1,1.0)",
}


------------- 길드 이름
g_pStatic_TEXT:AddString
{
	MSG 			= "WWWWWWWWWWWWWWW",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(34+1,68+1 - 3)",
	"COLOR			= D3DXCOLOR(0.1,0.1,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.2,0.2,0.4,1.0)",
}

g_pStatic_TEXT:AddString
{
	MSG 			= "WWWWWWWWWWWWWWW",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(34,68 - 3)",
	"COLOR			= D3DXCOLOR(1.0,0.85,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.2,0.2,0.4,1.0)",
}

------------- 길드
g_pStatic_TEXT:AddString
{
	MSG 			= STR_ID_4875,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(187,68)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.3,0.3,0.3,1.0)",
}