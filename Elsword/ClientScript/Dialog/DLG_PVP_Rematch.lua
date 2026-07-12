-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.
-- #ifdef SERV_PVP_REMATCH

g_pUIDialog:SetName( "PVP_Rematch" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )

-- 미국 사이즈 조절
X_SIZE_FIX = 50

--배경
g_pPopup = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pPopup )
g_pPopup:SetName( "Popup" )
g_pPopupPic = g_pUIDialog:CreatePicture()
g_pPopup:AddPicture( g_pPopupPic )
g_pPopupPic:SetTex( "DLG_Common_Texture_INT_ALL01.tga", "POPUP" )
g_pPopupPic:SetPoint
{
	ADD_SIZE_X		= X_SIZE_FIX,
	"LEFT_TOP		= D3DXVECTOR2(327,150)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPopup:SetShowEnable( false, false )

--질문1
g_pPopup1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pPopup1 )
g_pPopup1:SetName( "RematchAsk1" )
g_pPopup1Pic = g_pUIDialog:CreatePicture()
g_pPopup1:AddPicture( g_pPopup1Pic )
g_pPopup1Pic:SetTex( "DLG_Common_Texture_INT_ALL01.tga", "POPUP_1" )
g_pPopup1Pic:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(327+20,150+20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPopup1:SetShowEnable( false, false )

--질문2
g_pPopup2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pPopup2 )
g_pPopup2:SetName( "RematchAsk2" )
g_pPopup2Pic = g_pUIDialog:CreatePicture()
g_pPopup2:AddPicture( g_pPopup2Pic )
g_pPopup2Pic:SetTex( "DLG_Common_Texture_INT_ALL01.tga", "POPUP_2" )
g_pPopup2Pic:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(327+20,150+20)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPopup2:SetShowEnable( false, false )


--카운트1
g_pCount1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pCount1 )
g_pCount1:SetName( "Count1" )
g_pCount1Pic = g_pUIDialog:CreatePicture()
g_pCount1:AddPicture( g_pCount1Pic )
g_pCount1Pic:SetTex( "DLG_Common_Texture_INT_ALL01.tga", "1" )
g_pCount1Pic:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(503+ (X_SIZE_FIX/2),210)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCount1:SetShowEnable( false, false )

--카운트2
g_pCount2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pCount2 )
g_pCount2:SetName( "Count2" )
g_pCount2Pic = g_pUIDialog:CreatePicture()
g_pCount2:AddPicture( g_pCount2Pic )
g_pCount2Pic:SetTex( "DLG_Common_Texture_INT_ALL01.tga", "2" )
g_pCount2Pic:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(503+ (X_SIZE_FIX/2),210)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCount2:SetShowEnable( false, false )

--카운트3
g_pCount3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pCount3 )
g_pCount3:SetName( "Count3" )
g_pCount3Pic = g_pUIDialog:CreatePicture()
g_pCount3:AddPicture( g_pCount3Pic )
g_pCount3Pic:SetTex( "DLG_Common_Texture_INT_ALL01.tga", "3" )
g_pCount3Pic:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(503+ (X_SIZE_FIX/2),210)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCount3:SetShowEnable( false, false )

--카운트4
g_pCount4 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pCount4 )
g_pCount4:SetName( "Count4" )
g_pCount4Pic = g_pUIDialog:CreatePicture()
g_pCount4:AddPicture( g_pCount4Pic )
g_pCount4Pic:SetTex( "DLG_Common_Texture_INT_ALL01.tga", "4" )
g_pCount4Pic:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(504+ (X_SIZE_FIX/2),210)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCount4:SetShowEnable( false, false )

--카운트5
g_pCount5 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pCount5 )
g_pCount5:SetName( "Count5" )
g_pCount5Pic = g_pUIDialog:CreatePicture()
g_pCount5:AddPicture( g_pCount5Pic )
g_pCount5Pic:SetTex( "DLG_Common_Texture_INT_ALL01.tga", "5" )
g_pCount5Pic:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(505+ (X_SIZE_FIX/2),210)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCount5:SetShowEnable( false, false )

----------------yes 버튼
g_pButtonYes = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonYes )
g_pButtonYes:SetName( "Yes" )
g_pButtonYes:SetNormalTex( "DLG_UI_Button_INT02.tga", "YES_NORMAL" )
g_pButtonYes:SetOverTex( "DLG_UI_Button_INT02.tga", "YES_OVER" )
g_pButtonYes:SetDownTex( "DLG_UI_Button_INT02.tga", "YES_OVER" )

g_pButtonYes:SetNormalPoint
{	
    "LEFT_TOP		= D3DXVECTOR2(400 + (X_SIZE_FIX/2),244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonYes:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(396 + (X_SIZE_FIX/2),240)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonYes:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(396+1 + (X_SIZE_FIX/2),240+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonYes:SetCustomMsgMouseUp( PVP_RESULT_UI_CUSTOM_MSG["PRUCM_REMATCH_ACCEPT"] )
g_pButtonYes:SetShowEnable( false, false )


------------취소버튼
g_pButtonNo = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonNo )
g_pButtonNo:SetName( "No" )

g_pButtonNo:SetNormalTex( "DLG_UI_Button_INT02.tga", "NO_NORMAL" )
g_pButtonNo:SetOverTex( "DLG_UI_Button_INT02.tga", "NO_OVER" )
g_pButtonNo:SetDownTex( "DLG_UI_Button_INT02.tga", "NO_OVER" )

g_pButtonNo:SetNormalPoint
{	
    "LEFT_TOP		= D3DXVECTOR2(536 + (X_SIZE_FIX/2),244)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNo:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(533 + (X_SIZE_FIX/2),241)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNo:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(533+1 + (X_SIZE_FIX/2),241+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonNo:SetCustomMsgMouseUp( PVP_RESULT_UI_CUSTOM_MSG["PRUCM_REMATCH_REJECT"] )
g_pButtonNo:SetShowEnable( false, false )


--이어하기 스태틱
g_pStaticRematch = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticRematch )
g_pStaticRematch:SetName( "StaticRematch" )
g_pStaticRematchPic = g_pUIDialog:CreatePicture()
g_pStaticRematch:AddPicture( g_pStaticRematchPic )
g_pStaticRematchPic:SetTex( "DLG_Common_Texture_INT_ALL01.TGA", "INHERIT" )
g_pStaticRematchPic:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(88,476)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

-- Yes1, No1
g_pYes1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pYes1 )
g_pYes1:SetName( "Yes1" )
g_pYes1Pic = g_pUIDialog:CreatePicture()
g_pYes1:AddPicture( g_pYes1Pic )
g_pYes1Pic:SetTex( "DLG_UI_Common_Texture49.TGA", "PVP_OK" )
g_pYes1Pic:SetPoint
{
     ADD_SIZE_X = -20,
     ADD_SIZE_Y = -10,

	"LEFT_TOP		= D3DXVECTOR2(85,504)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pYes1:SetShowEnable( false, false )

g_pNo1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pNo1 )
g_pNo1:SetName( "No1" )
g_pNo1Pic = g_pUIDialog:CreatePicture()
g_pNo1:AddPicture( g_pNo1Pic )
g_pNo1Pic:SetTex( "DLG_UI_Common_Texture49.TGA", "PVP_NO" )
g_pNo1Pic:SetPoint
{
     ADD_SIZE_X = -20,
     ADD_SIZE_Y = -10,

	"LEFT_TOP		= D3DXVECTOR2(85,504)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pNo1:SetShowEnable( false, false )


-- Yes2, No2
g_pYes2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pYes2 )
g_pYes2:SetName( "Yes2" )
g_pYes2Pic = g_pUIDialog:CreatePicture()
g_pYes2:AddPicture( g_pYes2Pic )
g_pYes2Pic:SetTex( "DLG_UI_Common_Texture49.TGA", "PVP_OK" )
g_pYes2Pic:SetPoint
{
     ADD_SIZE_X = -20,
     ADD_SIZE_Y = -10,

	"LEFT_TOP		= D3DXVECTOR2(85,504+36)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pYes2:SetShowEnable( false, false )

g_pNo2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pNo2 )
g_pNo2:SetName( "No2" )
g_pNo2Pic = g_pUIDialog:CreatePicture()
g_pNo2:AddPicture( g_pNo2Pic )
g_pNo2Pic:SetTex( "DLG_UI_Common_Texture49.TGA", "PVP_NO" )
g_pNo2Pic:SetPoint
{
     ADD_SIZE_X = -20,
     ADD_SIZE_Y = -10,

	"LEFT_TOP		= D3DXVECTOR2(85,504+36)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pNo2:SetShowEnable( false, false )


-- Yes3, No3
g_pYes3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pYes3 )
g_pYes3:SetName( "Yes3" )
g_pYes3Pic = g_pUIDialog:CreatePicture()
g_pYes3:AddPicture( g_pYes3Pic )
g_pYes3Pic:SetTex( "DLG_UI_Common_Texture49.TGA", "PVP_OK" )
g_pYes3Pic:SetPoint
{
     ADD_SIZE_X = -20,
     ADD_SIZE_Y = -10,

	"LEFT_TOP		= D3DXVECTOR2(85,504+36+36)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pYes3:SetShowEnable( false, false )

g_pNo3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pNo3 )
g_pNo3:SetName( "No3" )
g_pNo3Pic = g_pUIDialog:CreatePicture()
g_pNo3:AddPicture( g_pNo3Pic )
g_pNo3Pic:SetTex( "DLG_UI_Common_Texture49.TGA", "PVP_NO" )
g_pNo3Pic:SetPoint
{
     ADD_SIZE_X = -20,
     ADD_SIZE_Y = -10,

	"LEFT_TOP		= D3DXVECTOR2(85,504+36+36)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pNo3:SetShowEnable( false, false )


-- Yes4, No4
g_pYes4 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pYes4 )
g_pYes4:SetName( "Yes4" )
g_pYes4Pic = g_pUIDialog:CreatePicture()
g_pYes4:AddPicture( g_pYes4Pic )
g_pYes4Pic:SetTex( "DLG_UI_Common_Texture49.TGA", "PVP_OK" )
g_pYes4Pic:SetPoint
{
     ADD_SIZE_X = -20,
     ADD_SIZE_Y = -10,

	"LEFT_TOP		= D3DXVECTOR2(85,504+36+36+5+36)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pYes4:SetShowEnable( false, false )

g_pNo4 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pNo4 )
g_pNo4:SetName( "No4" )
g_pNo4Pic = g_pUIDialog:CreatePicture()
g_pNo4:AddPicture( g_pNo4Pic )
g_pNo4Pic:SetTex( "DLG_UI_Common_Texture49.TGA", "PVP_NO" )
g_pNo4Pic:SetPoint
{
     ADD_SIZE_X = -20,
     ADD_SIZE_Y = -10,

	"LEFT_TOP		= D3DXVECTOR2(85,504+36+36+5+36)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pNo4:SetShowEnable( false, false )


-- Yes5, No5
g_pYes5 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pYes5 )
g_pYes5:SetName( "Yes5" )
g_pYes5Pic = g_pUIDialog:CreatePicture()
g_pYes5:AddPicture( g_pYes5Pic )
g_pYes5Pic:SetTex( "DLG_UI_Common_Texture49.TGA", "PVP_OK" )
g_pYes5Pic:SetPoint
{
     ADD_SIZE_X = -20,
     ADD_SIZE_Y = -10,

	"LEFT_TOP		= D3DXVECTOR2(85,504+36+36+5+36+36)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pYes5:SetShowEnable( false, false )

g_pNo5 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pNo5 )
g_pNo5:SetName( "No5" )
g_pNo5Pic = g_pUIDialog:CreatePicture()
g_pNo5:AddPicture( g_pNo5Pic )
g_pNo5Pic:SetTex( "DLG_UI_Common_Texture49.TGA", "PVP_NO" )
g_pNo5Pic:SetPoint
{
     ADD_SIZE_X = -20,
     ADD_SIZE_Y = -10,

	"LEFT_TOP		= D3DXVECTOR2(85,504+36+36+5+36+36)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pNo5:SetShowEnable( false, false )


-- Yes6, No6
g_pYes6 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pYes6 )
g_pYes6:SetName( "Yes6" )
g_pYes6Pic = g_pUIDialog:CreatePicture()
g_pYes6:AddPicture( g_pYes6Pic )
g_pYes6Pic:SetTex( "DLG_UI_Common_Texture49.TGA", "PVP_OK" )
g_pYes6Pic:SetPoint
{
     ADD_SIZE_X = -20,
     ADD_SIZE_Y = -10,

	"LEFT_TOP		= D3DXVECTOR2(85,504+36+36+5+36+36+36)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pYes6:SetShowEnable( false, false )

g_pNo6 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pNo6 )
g_pNo6:SetName( "No6" )
g_pNo6Pic = g_pUIDialog:CreatePicture()
g_pNo6:AddPicture( g_pNo6Pic )
g_pNo6Pic:SetTex( "DLG_UI_Common_Texture49.TGA", "PVP_NO" )
g_pNo6Pic:SetPoint
{
     ADD_SIZE_X = -20,
     ADD_SIZE_Y = -10,

	"LEFT_TOP		= D3DXVECTOR2(85,504+36+36+5+36+36+36)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pNo6:SetShowEnable( false, false )

-- #endif SERV_PVP_REMATCH

