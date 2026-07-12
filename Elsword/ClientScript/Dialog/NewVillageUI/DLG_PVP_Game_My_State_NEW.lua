-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pUIDialog:SetName( "PVPGameMyState" )
g_pUIDialog:SetPos( 0,0 )
g_pUIDialog:SetSize( 320, 84 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_NORMAL_1"] )




------------- 빈 HP/MP 게이지 틀 -------------------
g_pStaticPVPGameInfo = g_pUIDialog:CreateStatic()
g_pStaticPVPGameInfo:SetName( "StaticPVPGameInfo" )
g_pUIDialog:AddControl( g_pStaticPVPGameInfo )
g_pPictureMyState = g_pUIDialog:CreatePicture()
g_pStaticPVPGameInfo:AddPicture( g_pPictureMyState )
g_pPictureMyState:SetTex( "DLG_UI_Common_Texture63_NEW.tga", "GAGE_BG" )
g_pPictureMyState:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(84,14)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME    		= 0.0,
}

------------------HP 게이지
g_pStaticPVPGameStateBar = g_pUIDialog:CreateStatic()
g_pStaticPVPGameStateBar:SetName( "StaticPVPGameStateBar_HP" )
g_pUIDialog:AddControl( g_pStaticPVPGameStateBar )
g_pPictureMyHP_1 = g_pUIDialog:CreatePicture()
g_pStaticPVPGameStateBar:AddPicture( g_pPictureMyHP_1 )
g_pPictureMyHP_1:SetTex( "DLG_UI_Common_Texture63_NEW.tga", "HP" )
g_pPictureMyHP_1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(106,35)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

------------------MP 게이지
g_pStaticPVPGameStateBar = g_pUIDialog:CreateStatic()
g_pStaticPVPGameStateBar:SetName( "StaticPVPGameStateBar" )
g_pUIDialog:AddControl( g_pStaticPVPGameStateBar )
g_pPictureMyMP_1 = g_pUIDialog:CreatePicture()
g_pStaticPVPGameStateBar:AddPicture( g_pPictureMyMP_1 )
g_pPictureMyMP_1:SetTex( "DLG_UI_Common_Texture63_NEW.tga", "MP" )
g_pPictureMyMP_1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(102,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}
--g_pPictureMyMP_1:SetShow(false)

------------------MP차지
g_pPictureMyMPActive1 = g_pUIDialog:CreatePicture()
g_pStaticPVPGameStateBar:AddPicture( g_pPictureMyMPActive1 )
g_pPictureMyMPActive1:SetTex( "DLG_UI_Common_Texture63_NEW.tga", "MP_ACTIVE" )
g_pPictureMyMPActive1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(102,52)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

----------------각성 게이지
g_pPictureMySoul = g_pUIDialog:CreatePicture()
g_pStaticPVPGameStateBar:AddPicture( g_pPictureMySoul )
g_pPictureMySoul:SetTex( "DLG_UI_Common_Texture63_NEW.tga", "RAGE" )
g_pPictureMySoul:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(91,17)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

------------------- 기폭 포인트
g_pStaticPVPGameStatePoint = g_pUIDialog:CreateStatic()
g_pStaticPVPGameStatePoint:SetName( "100mpAndPoint" )
g_pUIDialog:AddControl( g_pStaticPVPGameStatePoint )
g_pPictureNormalMPPoint1 = g_pUIDialog:CreatePicture()
g_pStaticPVPGameStatePoint:AddPicture( g_pPictureNormalMPPoint1 )
g_pPictureNormalMPPoint1:SetTex( "DLG_UI_Common_Texture63_NEW.tga", "MP_ARROW" )
g_pPictureNormalMPPoint1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(177,55)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

-------------------100mp 구분선
g_pPicture_100MP_1 = g_pUIDialog:CreatePicture()
g_pStaticPVPGameStatePoint:AddPicture( g_pPicture_100MP_1 )
g_pPicture_100MP_1:SetTex( "DLG_UI_Common_Texture63_NEW.TGA", "MP_100_BAR" )
g_pPicture_100MP_1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(176,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_100MP_1:SetShow(true)


-------------------200mp 구분선
g_pStaticPVPGameStatePoint = g_pUIDialog:CreateStatic()
g_pStaticPVPGameStatePoint:SetName( "200mp" )
g_pUIDialog:AddControl( g_pStaticPVPGameStatePoint )

g_pPicture_200MP_2 = g_pUIDialog:CreatePicture()
g_pStaticPVPGameStatePoint:AddPicture( g_pPicture_200MP_2 )
g_pPicture_200MP_2:SetTex( "DLG_UI_Common_Texture63_NEW.TGA", "MP_100_BAR" )
g_pPicture_200MP_2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(250,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pPicture_200MP_2:SetShow(true)

---- 최우측 상단의 캐릭터 이미지 UI-------------------
g_pStaticPVPGameMyChar = g_pUIDialog:CreateStatic()
g_pStaticPVPGameMyChar:SetName( "StaticPVPGameMyChar" )
g_pUIDialog:AddControl( g_pStaticPVPGameMyChar )
g_pPictureElswordState = g_pUIDialog:CreatePicture()
g_pStaticPVPGameMyChar:AddPicture( g_pPictureElswordState )
g_pPictureElswordState:SetTex( "DLG_UI_Common_Texture16_NEW.tga", "ELSWORD_STATE" )
g_pPictureElswordState:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0,2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}
-----------각성 빈 구슬 ------------------------
g_pStaticPVPGameStateWakeSlot = g_pUIDialog:CreateStatic()
g_pStaticPVPGameStateWakeSlot:SetName( "StaticPVPGameStateWakeSlot" )
g_pUIDialog:AddControl( g_pStaticPVPGameStateWakeSlot )
g_pPictureWakeSlot = g_pUIDialog:CreatePicture()
g_pStaticPVPGameStateWakeSlot:AddPicture( g_pPictureWakeSlot )
g_pPictureWakeSlot:SetTex( "DLG_UI_Common_Texture63_NEW.tga", "RAGE_BG" )
g_pPictureWakeSlot:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0,44)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}
g_pPictureWakeSlot = g_pUIDialog:CreatePicture()
g_pStaticPVPGameStateWakeSlot:AddPicture( g_pPictureWakeSlot )
g_pPictureWakeSlot:SetTex( "DLG_UI_Common_Texture63_NEW.tga", "RAGE_BG" )
g_pPictureWakeSlot:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(26,57)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}
g_pPictureWakeSlot = g_pUIDialog:CreatePicture()
g_pStaticPVPGameStateWakeSlot:AddPicture( g_pPictureWakeSlot )
g_pPictureWakeSlot:SetTex( "DLG_UI_Common_Texture63_NEW.tga", "RAGE_BG" )
g_pPictureWakeSlot:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(57,60)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

-----------------3번째 각성 빈구슬_청
g_pPictureWakeSlot_Chung = g_pUIDialog:CreatePicture()
g_pStaticPVPGameStateWakeSlot:AddPicture( g_pPictureWakeSlot_Chung )
g_pPictureWakeSlot_Chung:SetTex( "DLG_UI_Common_Texture63_NEW.TGA", "CHUNG_3_BG" )
g_pPictureWakeSlot_Chung:SetPoint
{
   	"LEFT_TOP		= D3DXVECTOR2(53,59)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}
--g_pPictureWakeSlot_Chung:SetShow(false)

-----------------3번째 각성 빈구슬_레이븐
g_pPictureWakeSlot_Raven = g_pUIDialog:CreatePicture()
g_pStaticPVPGameStateWakeSlot:AddPicture( g_pPictureWakeSlot_Raven )
g_pPictureWakeSlot_Raven:SetTex( "DLG_UI_Common_Texture25_NEW.tga", "Raven_3_bg" )
g_pPictureWakeSlot_Raven:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(50,54)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}
--g_pPictureWakeSlot_Raven:SetShow(false)

-----------------3번째 각성 빈구슬_아라
g_pPictureWakeSlot_Ara = g_pUIDialog:CreatePicture()
g_pStaticPVPGameStateWakeSlot:AddPicture( g_pPictureWakeSlot_Ara )
g_pPictureWakeSlot_Ara:SetTex( "DLG_UI_Common_Texture63_NEW.tga", "ARA_3_EMPTY" )
g_pPictureWakeSlot_Ara:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(42,47)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}
--g_pPictureWakeSlot_Ara:SetShow(false)

------------------- 차지된 각성 구슬 ----------------------------------
g_pStaticPVPGameStateWakeOrb = g_pUIDialog:CreateStatic()
g_pStaticPVPGameStateWakeOrb:SetName( "StaticPVPGameStateWakeOrb" )
g_pUIDialog:AddControl( g_pStaticPVPGameStateWakeOrb )
g_pPictureWakeOrb = g_pUIDialog:CreatePicture()
g_pStaticPVPGameStateWakeOrb:AddPicture( g_pPictureWakeOrb )
g_pPictureWakeOrb:SetTex( "DLG_UI_Common_Texture63_NEW.TGA", "RAGE_BEAD" )
g_pPictureWakeOrb:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(7,51)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPictureWakeOrb = g_pUIDialog:CreatePicture()
g_pStaticPVPGameStateWakeOrb:AddPicture( g_pPictureWakeOrb )
g_pPictureWakeOrb:SetTex( "DLG_UI_Common_Texture63_NEW.TGA", "RAGE_BEAD" )
g_pPictureWakeOrb:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(33,64)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPictureWakeOrb = g_pUIDialog:CreatePicture()
g_pStaticPVPGameStateWakeOrb:AddPicture( g_pPictureWakeOrb )
g_pPictureWakeOrb:SetTex( "DLG_UI_Common_Texture63_NEW.TGA", "RAGE_BEAD" )
g_pPictureWakeOrb:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(64,67)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

------차지된 각성 구슬_청
g_pPictureWakeOrb_Chung = g_pUIDialog:CreatePicture()
g_pStaticPVPGameStateWakeOrb:AddPicture( g_pPictureWakeOrb_Chung )
g_pPictureWakeOrb_Chung:SetTex( "DLG_UI_Common_Texture63_NEW.TGA", "CHUNG_3" )
g_pPictureWakeOrb_Chung:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(58,63)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

------차지된 각성 구슬_레이븐
g_pPictureWakeOrb_Raven = g_pUIDialog:CreatePicture()
g_pStaticPVPGameStateWakeOrb:AddPicture( g_pPictureWakeOrb_Raven )
g_pPictureWakeOrb_Raven:SetTex( "DLG_UI_Common_Texture25_NEW.tga", "Raven_3" )
g_pPictureWakeOrb_Raven:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(57,59)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

------차지된 각성 구슬_아라
g_pPictureWakeOrb_Ara = g_pUIDialog:CreatePicture()
g_pStaticPVPGameStateWakeOrb:AddPicture( g_pPictureWakeOrb_Ara )
g_pPictureWakeOrb_Ara:SetTex( "DLG_UI_Common_Texture63_NEW.tga", "ARA_3_RAGE" )
g_pPictureWakeOrb_Ara:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(42,47)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

-------각성 남은 시간
g_pStatic_HyperMode_Time = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_HyperMode_Time )
g_pStatic_HyperMode_Time:SetName( "Static_HyperMode_Time" )
g_pStatic_HyperMode_Time:AddString
{
	-- MSG 			= "89",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_CENTER"],
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	"POS 			= D3DXVECTOR2(77,46)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

--------------------------------MP수치
g_pStatic_MP = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_MP )
g_pStatic_MP:SetName( "g_pStatic_MP" )
g_pStatic_MP:AddString
{
	--MSG 			= "200/300",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	--FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	"POS 			= D3DXVECTOR2(310,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

------------캐릭터 레벨/닉네임
g_pStatic_NAME= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_NAME )
g_pStatic_NAME:SetName( "NAME" )
g_pStatic_NAME:AddString
{
	--MSG 			= "Lv",
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(117,16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.3,0.1,0.0,1.0)",
} 

g_pStatic_NAME:AddString
{
	--MSG 			= "60",
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(117+17,16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.3,0.1,0.0,1.0)",
} 

g_pStatic_NAME:AddString
{
	--MSG 			= "QWERASDFZXCV",
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(134+22,16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.3,0.1,0.0,1.0)",
} 



------------------- 차지된 각성 구슬 ----------------------------------
g_pStaticPartyLeader = g_pUIDialog:CreateStatic()
g_pStaticPartyLeader:SetName( "g_pStaticPartyLeader" )
g_pUIDialog:AddControl( g_pStaticPartyLeader )

g_pPicture = g_pUIDialog:CreatePicture()
g_pStaticPartyLeader:AddPicture( g_pPicture )
g_pPicture:SetTex( "DLG_UI_Button20.TGA", "BG_PARTYCHIEF" )
g_pPicture:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(-1,-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}
