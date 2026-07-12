-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetName( "OkAndCancelMsgBox" )
g_pUIDialog:SetPos( 324,128 )
g_pUIDialog:SetModal( false )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pUIDialog:SetCloseCustomUIEventID( CASH_SHOP_CUSTOM_UI_MSG["CSCUM_PRESENT_CANCEL"]  )


---------static
g_pStaticCashShop_PresentWindow = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCashShop_PresentWindow )
g_pStaticCashShop_PresentWindow:SetName( "g_pStaticCashShop_PresentWindow" )

------ 배경
g_pPictureCashshop_PresentWindow_BG1 = g_pUIDialog:CreatePicture()
g_pStaticCashShop_PresentWindow:AddPicture( g_pPictureCashshop_PresentWindow_BG1 )

g_pPictureCashshop_PresentWindow_BG1:SetTex( "DLG_UI_Common_Texture_MarriageSystem_03.TGA", "Bg_Couple_Confess" )

g_pPictureCashshop_PresentWindow_BG1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------
---------------------------------버튼 모음


------수락 버튼--
g_pButtonFriend = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonFriend )
g_pButtonFriend:SetName( "MsgBoxOkAndCancelOkButton" )
g_pButtonFriend:SetNormalTex( "DLG_UI_Common_Texture_MarriageSystem_01.tga", "Bt_Accept_Normal" )

g_pButtonFriend:SetOverTex( "DLG_UI_Common_Texture_MarriageSystem_01.tga", "Bt_Accept_Over" )

g_pButtonFriend:SetDownTex( "DLG_UI_Common_Texture_MarriageSystem_01.tga", "Bt_Accept_Over" )

g_pButtonFriend:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(93,177)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonFriend:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(93,177)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonFriend:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(93+1,177+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonFriend:SetCustomMsgMouseUp( RELATIONSHIP_UI_MESSAGE["RUM_COUPLE_INVITED_OK"]  )

------거절 버튼--
g_pButtonGuild = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonGuild )
g_pButtonGuild:SetName( "MsgBoxOkAndCancelCancelButton" )
g_pButtonGuild:SetNormalTex( "DLG_UI_Common_Texture_MarriageSystem_01.tga", "Bt_Reject_Normal" )

g_pButtonGuild:SetOverTex( "DLG_UI_Common_Texture_MarriageSystem_01.tga", "Bt_Reject_Over" )

g_pButtonGuild:SetDownTex( "DLG_UI_Common_Texture_MarriageSystem_01.tga", "Bt_Reject_Over" )

g_pButtonGuild:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(143,177)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuild:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(143,177)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonGuild:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(143+1,177+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
-- g_pButtonGuild:SetCustomMsgMouseUp( RELATIONSHIP_UI_MESSAGE["RUM_COUPLE_INVITED_CANCEL"]  )



-------------------------------------------스트링 입력
-----------------------아이디 부분

g_pStatic_TITLE = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_TITLE )
g_pStatic_TITLE:SetName( "StaticMsgBoxBG" )

g_pStatic_TITLE:AddString
{
--	MSG 			= STR_ID_17819, --"[PC방 프리미엄 혜택]",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	"POS 			= D3DXVECTOR2(87+52,63)",
	"COLOR			= D3DXCOLOR(1.0,0.2,0.6,0.8)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,0.0)",
}


	

