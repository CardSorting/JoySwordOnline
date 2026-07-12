-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




g_pUIDialog:SetName( "DLG_UI_Party_List_Member_Preview" )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
--g_pUIDialog:SetCloseCustomUIEventID( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_CLOSE_WINDOW"] )
g_pUIDialog:SetCloseOnFocusOut( true )



g_pStaticParty_Comrade_View = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticParty_Comrade_View )
g_pStaticParty_Comrade_View:SetName( "Party_Comrade_View" )



-----BG

g_pPictureBg = g_pUIDialog:CreatePicture()
g_pStaticParty_Comrade_View:AddPicture( g_pPictureBg )

g_pPictureBg:SetTex( "DLG_UI_Common_Texture04.TGA", "Party_Comrade_View_Bg_Top" )

g_pPictureBg:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBg = g_pUIDialog:CreatePicture()
g_pStaticParty_Comrade_View:AddPicture( g_pPictureBg )

g_pPictureBg:SetTex( "DLG_UI_Common_Texture04.TGA", "Party_Comrade_View_Bg_Middle" )

g_pPictureBg:SetPoint
{
    ADD_SIZE_Y = 186,
	"LEFT_TOP		= D3DXVECTOR2(0,19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBg = g_pUIDialog:CreatePicture()
g_pStaticParty_Comrade_View:AddPicture( g_pPictureBg )

g_pPictureBg:SetTex( "DLG_UI_Common_Texture04.TGA", "Party_Comrade_View_Bg_Bottom" )

g_pPictureBg:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(0,206)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
 

 
 
 
 ----------------------------------------------------------------------------------------------------
 -----------------------------------        첫번재 파티원     ---------------------------------------
 ----------------------------------------------------------------------------------------------------
 
 
 


 --------------  공통 BG  


g_pStaticCommon_bg = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCommon_bg )
g_pStaticCommon_bg:SetName( "common_bg1" )


  
g_pPictureGray_Bg = g_pUIDialog:CreatePicture()
g_pStaticCommon_bg:AddPicture( g_pPictureGray_Bg )

g_pPictureGray_Bg:SetTex( "DLG_UI_Common_Texture04.TGA", "Party_Comrade_Gray_Bg_Left" )

g_pPictureGray_Bg:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureGray_Bg = g_pUIDialog:CreatePicture()
g_pStaticCommon_bg:AddPicture( g_pPictureGray_Bg )

g_pPictureGray_Bg:SetTex( "DLG_UI_Common_Texture04.TGA", "Party_Comrade_gray_Bg_Middle" )

g_pPictureGray_Bg:SetPoint
{
    ADD_SIZE_X = 143+3,
	"LEFT_TOP		= D3DXVECTOR2(21,16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureGray_Bg = g_pUIDialog:CreatePicture()
g_pStaticCommon_bg:AddPicture( g_pPictureGray_Bg )

g_pPictureGray_Bg:SetTex( "DLG_UI_Common_Texture04.TGA", "Party_Comrade_Gray_Bg_Right" )

g_pPictureGray_Bg:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(168,16)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
 
 
 
-------------------------BG (   파장, 파티원, EMPTY)


g_pStaticSlot = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSlot )
g_pStaticSlot:SetName( "slot1" )




g_pPictureWhite_Bg = g_pUIDialog:CreatePicture()
g_pStaticSlot:AddPicture( g_pPictureWhite_Bg )

g_pPictureWhite_Bg:SetTex( "DLG_UI_Common_Texture04.TGA", "Party_Comrade_Bg_Left" )

g_pPictureWhite_Bg:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(16,19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureWhite_Bg = g_pUIDialog:CreatePicture()
g_pStaticSlot:AddPicture( g_pPictureWhite_Bg )

g_pPictureWhite_Bg:SetTex( "DLG_UI_Common_Texture04.TGA", "Party_Comrade_Bg_Middle" )

g_pPictureWhite_Bg:SetPoint
{
    ADD_SIZE_X = 142+4,
	"LEFT_TOP		= D3DXVECTOR2(21,19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureWhite_Bg = g_pUIDialog:CreatePicture()
g_pStaticSlot:AddPicture( g_pPictureWhite_Bg )

g_pPictureWhite_Bg:SetTex( "DLG_UI_Common_Texture04.TGA", "Party_Comrade_Bg_Right" )

g_pPictureWhite_Bg:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(168,19)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}







-----    캐릭터 이미지

g_pStaticImage = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticImage )
g_pStaticImage:SetName( "Image1" )



g_pPictureImage = g_pUIDialog:CreatePicture()
g_pStaticImage:AddPicture( g_pPictureImage )

g_pPictureImage:SetTex( "DLG_UI_Character01.TGA", "eve_state_small" )

g_pPictureImage:SetPoint
{
     ADD_SIZE_X = -18,
	 ADD_SIZE_Y = -18,
	 
	"LEFT_TOP		= D3DXVECTOR2(20,23)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----LV

	Static_LV1 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( Static_LV1 )
	Static_LV1:SetName( "Static_LV1" )

	Static_LV1:AddString
	{
		-- MSG 			= "LV. 99", 
		FONT_INDEX      = XUF_DODUM_11_NORMAL,
		FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(57-40+4,24+20-3)",
		"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}

	
	----NMAE

	Static_NAME = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( Static_NAME )
	Static_NAME:SetName( "Static_NAME1" )

	Static_NAME:AddString
	{
		-- MSG 			= "WWWWWWWWWWWW", 
		FONT_INDEX      = XUF_DODUM_11_NORMAL,
		FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(57,41)",
		"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}


	-----CHANNEL

	Static_CHANNEL = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( Static_CHANNEL )
	Static_CHANNEL:SetName( "Static_CHANNEL1" )

	Static_CHANNEL:AddString
	{
		MSG 			= STR_ID_1303,
		FONT_INDEX		= XUF_DODUM_12_SEMIBOLD,
		
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(57,24)",
		"COLOR			= D3DXCOLOR(0.1,0.1,0.1,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}	
		
	-----PLACE
	
	Static_PLACE = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( Static_PLACE )
	Static_PLACE:SetName( "Static_PLACE1" )

	Static_PLACE:AddString
	{
		MSG 			= STR_ID_1303,
		FONT_INDEX		= XUF_DODUM_12_SEMIBOLD,
		
		SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(57+95,24)",
		"COLOR			= D3DXCOLOR(0.1,0.1,0.1,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}

	------SERVER
	
	Static_SERVER = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( Static_SERVER )
	Static_SERVER:SetName( "Static_SERVER1" )


		
	g_pPictureServer = g_pUIDialog:CreatePicture()
	Static_SERVER:AddPicture( g_pPictureServer )

	g_pPictureServer:SetTex( "DLG_UI_Common_Texture11.tga", "Soles" )

	g_pPictureServer:SetPoint
	{

		"LEFT_TOP		= D3DXVECTOR2(4+145,5+32)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	
	
	
	
	
----------------------------------파장표시    < ---------------------------    파장일때 일반 파티원 UI에 요것까지 추가
	
g_pStaticCaptain_Sign = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCaptain_Sign )
g_pStaticCaptain_Sign:SetName( "Captain_Sign1" )


	
g_pPictureSign = g_pUIDialog:CreatePicture()
g_pStaticCaptain_Sign:AddPicture( g_pPictureSign )

g_pPictureSign:SetTex( "DLG_UI_Common_Texture02.TGA", "party_captain" )

g_pPictureSign:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(4,5)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




--[[

---------------   비어있는 자리 -->> 새로운 파티원이 들어올 자리


g_pStaticParty_Empty = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticParty_Empty )
g_pStaticParty_Empty:SetName( "Party_Empty1" )



g_pPictureEmpty = g_pUIDialog:CreatePicture()
g_pStaticParty_Empty:AddPicture( g_pPictureEmpty )

g_pPictureEmpty:SetTex( "DLG_UI_Title02.TGA", "empty" )

g_pPictureEmpty:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(56,28)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



----------------파티원 자리 닫았을때 

g_pStaticParty_Close = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticParty_Close )
g_pStaticParty_Close:SetName( "Party_Close1" )

 
g_pPictureLimit = g_pUIDialog:CreatePicture()
g_pStaticParty_Close:AddPicture( g_pPictureLimit )

g_pPictureLimit:SetTex( "DLG_UI_Common_Texture04.TGA", "close" )

g_pPictureLimit:SetPoint
{
      ADD_SIZE_X = 4,
	"LEFT_TOP		= D3DXVECTOR2(12,17)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.7)",
	CHANGE_TIME		= 0.0,
}

 

 g_pPictureEmpty = g_pUIDialog:CreatePicture()
g_pStaticParty_Close:AddPicture( g_pPictureEmpty )

g_pPictureEmpty:SetTex( "DLG_UI_Title02.TGA", "close" )

g_pPictureEmpty:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(54,28)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


--]]








 ----------------------------------------------------------------------------------------------------
 -----------------------------------        두번재 파티원     ---------------------------------------
 ----------------------------------------------------------------------------------------------------
 
 

 
 

 
----   공통 BG  

g_pStaticCommon_bg = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCommon_bg )
g_pStaticCommon_bg:SetName( "common_bg2" )





g_pPictureGray_Bg = g_pUIDialog:CreatePicture()
g_pStaticCommon_bg:AddPicture( g_pPictureGray_Bg )

g_pPictureGray_Bg:SetTex( "DLG_UI_Common_Texture04.TGA", "Party_Comrade_Gray_Bg_Left" )

g_pPictureGray_Bg:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,65)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureGray_Bg = g_pUIDialog:CreatePicture()
g_pStaticCommon_bg:AddPicture( g_pPictureGray_Bg )

g_pPictureGray_Bg:SetTex( "DLG_UI_Common_Texture04.TGA", "Party_Comrade_gray_Bg_Middle" )

g_pPictureGray_Bg:SetPoint
{
    ADD_SIZE_X = 143+3,
	"LEFT_TOP		= D3DXVECTOR2(21,65)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureGray_Bg = g_pUIDialog:CreatePicture()
g_pStaticCommon_bg:AddPicture( g_pPictureGray_Bg )

g_pPictureGray_Bg:SetTex( "DLG_UI_Common_Texture04.TGA", "Party_Comrade_Gray_Bg_Right" )

g_pPictureGray_Bg:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(168,65)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
 
 

-------------------------BG (   파장, 파티원, EMPTY)
 
g_pStaticSlot = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSlot )
g_pStaticSlot:SetName( "slot2" )
 
 
g_pPictureWhite_Bg = g_pUIDialog:CreatePicture()
g_pStaticSlot:AddPicture( g_pPictureWhite_Bg )

g_pPictureWhite_Bg:SetTex( "DLG_UI_Common_Texture04.TGA", "Party_Comrade_Bg_Left" )

g_pPictureWhite_Bg:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(16,68)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureWhite_Bg = g_pUIDialog:CreatePicture()
g_pStaticSlot:AddPicture( g_pPictureWhite_Bg )

g_pPictureWhite_Bg:SetTex( "DLG_UI_Common_Texture04.TGA", "Party_Comrade_Bg_Middle" )

g_pPictureWhite_Bg:SetPoint
{
    ADD_SIZE_X = 142+4,
	"LEFT_TOP		= D3DXVECTOR2(21,68)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureWhite_Bg = g_pUIDialog:CreatePicture()
g_pStaticSlot:AddPicture( g_pPictureWhite_Bg )

g_pPictureWhite_Bg:SetTex( "DLG_UI_Common_Texture04.TGA", "Party_Comrade_Bg_Right" )

g_pPictureWhite_Bg:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(168,68)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





-----    캐릭터 이미지

g_pStaticImage = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticImage )
g_pStaticImage:SetName( "Image2" )



g_pPictureImage = g_pUIDialog:CreatePicture()
g_pStaticImage:AddPicture( g_pPictureImage )

g_pPictureImage:SetTex( "DLG_UI_Character01.TGA", "eve_state_small" )

g_pPictureImage:SetPoint
{
     ADD_SIZE_X = -18,
	 ADD_SIZE_Y = -18,
	"LEFT_TOP		= D3DXVECTOR2(20,72)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----LV

	Static_LV2 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( Static_LV2 )
	Static_LV2:SetName( "Static_LV2" )

	Static_LV2:AddString
	{
		-- MSG 			= "LV. 99", 
		FONT_INDEX      = XUF_DODUM_11_NORMAL,
		FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(57-40+4,73+20-3)",
		"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}

	
	----NMAE

	Static_NAME = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( Static_NAME )
	Static_NAME:SetName( "Static_NAME2" )

	Static_NAME:AddString
	{
		-- MSG 			= "WWWWWWWWWWWW", 
		FONT_INDEX      = XUF_DODUM_11_NORMAL,
		FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(57,90)",
		"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}



	-----CHANNEL

	Static_CHANNEL = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( Static_CHANNEL )
	Static_CHANNEL:SetName( "Static_CHANNEL2" )

	Static_CHANNEL:AddString
	{
		MSG 			= STR_ID_1303,
		FONT_INDEX		= XUF_DODUM_12_SEMIBOLD,
		
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(57,73)",
		"COLOR			= D3DXCOLOR(0.1,0.1,0.1,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}	
	
	-----PLACE
	
	Static_PLACE = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( Static_PLACE )
	Static_PLACE:SetName( "Static_PLACE2" )

	Static_PLACE:AddString
	{
		MSG 			= STR_ID_1303,
		FONT_INDEX		= XUF_DODUM_12_SEMIBOLD,
		
		SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(57+95,73)",
		"COLOR			= D3DXCOLOR(0.1,0.1,0.1,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	
	------SERVER
	
	Static_SERVER = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( Static_SERVER )
	Static_SERVER:SetName( "Static_SERVER2" )


		
	g_pPictureServer = g_pUIDialog:CreatePicture()
	Static_SERVER:AddPicture( g_pPictureServer )

	g_pPictureServer:SetTex( "DLG_UI_Common_Texture11.tga", "Soles" )

	g_pPictureServer:SetPoint
	{

		"LEFT_TOP		= D3DXVECTOR2(4+145,54+32)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
	

----------------------------------파장표시    <---- 파장일때 일반 파티원 UI에 요것까지 추가

g_pStaticCaptain_Sign = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCaptain_Sign )
g_pStaticCaptain_Sign:SetName( "Captain_Sign2" )


	
g_pPictureSign = g_pUIDialog:CreatePicture()
g_pStaticCaptain_Sign:AddPicture( g_pPictureSign )

g_pPictureSign:SetTex( "DLG_UI_Common_Texture02.TGA", "party_captain" )

g_pPictureSign:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(4,54)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


 --[[
	
---------------   비어있는 자리 -->> 새로운 파티원이 들어올 자리





g_pStaticParty_Empty = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticParty_Empty )
g_pStaticParty_Empty:SetName( "Party_Empty2" )


 
g_pPictureEmpty = g_pUIDialog:CreatePicture()
g_pStaticParty_Empty:AddPicture( g_pPictureEmpty )

g_pPictureEmpty:SetTex( "DLG_UI_Title02.TGA", "empty" )

g_pPictureEmpty:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(56,77)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




----------------파티원 자리 닫았을때 


g_pStaticParty_Close = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticParty_Close )
g_pStaticParty_Close:SetName( "Party_Close2" )


g_pPictureLimit = g_pUIDialog:CreatePicture()
g_pStaticParty_Close:AddPicture( g_pPictureLimit )

g_pPictureLimit:SetTex( "DLG_UI_Common_Texture04.TGA", "close" )

g_pPictureLimit:SetPoint
{
      ADD_SIZE_X = 4,
	"LEFT_TOP		= D3DXVECTOR2(12,68)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.7)",
	CHANGE_TIME		= 0.0,
}

 
 g_pPictureEmpty = g_pUIDialog:CreatePicture()
g_pStaticParty_Close:AddPicture( g_pPictureEmpty )

g_pPictureEmpty:SetTex( "DLG_UI_Title02.TGA", "close" )

g_pPictureEmpty:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(54,78)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]














 ----------------------------------------------------------------------------------------------------
 -----------------------------------        세번재 파티원     ---------------------------------------
 ----------------------------------------------------------------------------------------------------
 
 

 
 


 
----   공통 BG  

g_pStaticCommon_bg = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCommon_bg )
g_pStaticCommon_bg:SetName( "common_bg2" )




g_pPictureGray_Bg = g_pUIDialog:CreatePicture()
g_pStaticCommon_bg:AddPicture( g_pPictureGray_Bg )

g_pPictureGray_Bg:SetTex( "DLG_UI_Common_Texture04.TGA", "Party_Comrade_Gray_Bg_Left" )

g_pPictureGray_Bg:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,113)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureGray_Bg = g_pUIDialog:CreatePicture()
g_pStaticCommon_bg:AddPicture( g_pPictureGray_Bg )

g_pPictureGray_Bg:SetTex( "DLG_UI_Common_Texture04.TGA", "Party_Comrade_gray_Bg_Middle" )

g_pPictureGray_Bg:SetPoint
{
    ADD_SIZE_X = 143+3,
	"LEFT_TOP		= D3DXVECTOR2(21,113)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureGray_Bg = g_pUIDialog:CreatePicture()
g_pStaticCommon_bg:AddPicture( g_pPictureGray_Bg )

g_pPictureGray_Bg:SetTex( "DLG_UI_Common_Texture04.TGA", "Party_Comrade_Gray_Bg_Right" )

g_pPictureGray_Bg:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(168,113)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
 
 

-------------------------BG (   파장, 파티원, EMPTY)
  
g_pStaticSlot = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSlot )
g_pStaticSlot:SetName( "slot3" )
   
  
g_pPictureWhite_Bg = g_pUIDialog:CreatePicture()
g_pStaticSlot:AddPicture( g_pPictureWhite_Bg )

g_pPictureWhite_Bg:SetTex( "DLG_UI_Common_Texture04.TGA", "Party_Comrade_Bg_Left" )

g_pPictureWhite_Bg:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(16,116)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureWhite_Bg = g_pUIDialog:CreatePicture()
g_pStaticSlot:AddPicture( g_pPictureWhite_Bg )

g_pPictureWhite_Bg:SetTex( "DLG_UI_Common_Texture04.TGA", "Party_Comrade_Bg_Middle" )

g_pPictureWhite_Bg:SetPoint
{
    ADD_SIZE_X = 142+4,
	"LEFT_TOP		= D3DXVECTOR2(21,116)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureWhite_Bg = g_pUIDialog:CreatePicture()
g_pStaticSlot:AddPicture( g_pPictureWhite_Bg )

g_pPictureWhite_Bg:SetTex( "DLG_UI_Common_Texture04.TGA", "Party_Comrade_Bg_Right" )

g_pPictureWhite_Bg:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(168,116)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





-----    캐릭터 이미지

g_pStaticImage = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticImage )
g_pStaticImage:SetName( "Image3" )



g_pPictureImage = g_pUIDialog:CreatePicture()
g_pStaticImage:AddPicture( g_pPictureImage )

g_pPictureImage:SetTex( "DLG_UI_Character01.TGA", "eve_state_small" )

g_pPictureImage:SetPoint
{
     ADD_SIZE_X = -18,
	 ADD_SIZE_Y = -18,
	"LEFT_TOP		= D3DXVECTOR2(20,120)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----LV

	Static_LV3 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( Static_LV3 )
	Static_LV3:SetName( "Static_LV3" )

	Static_LV3:AddString
	{
		-- MSG 			= "LV. 99", 
		FONT_INDEX      = XUF_DODUM_11_NORMAL,
		FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(57-40+4,121+20-3)",
		"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}

	
	----NMAE

	Static_NAME = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( Static_NAME )
	Static_NAME:SetName( "Static_NAME3" )

	Static_NAME:AddString
	{
		-- MSG 			= "WWWWWWWWWWWW", 
		FONT_INDEX      = XUF_DODUM_11_NORMAL,
		FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(57,138)",
		"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}


	-----CHANNEL

	Static_CHANNEL = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( Static_CHANNEL )
	Static_CHANNEL:SetName( "Static_CHANNEL3" )

	Static_CHANNEL:AddString
	{
		MSG 			= STR_ID_1303,
		FONT_INDEX		= XUF_DODUM_12_SEMIBOLD,
		
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(57,121)",
		"COLOR			= D3DXCOLOR(0.1,0.1,0.1,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}
	
	-----PLACE
	
	Static_PLACE = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( Static_PLACE )
	Static_PLACE:SetName( "Static_PLACE3" )

	Static_PLACE:AddString
	{
		MSG 			= STR_ID_1303,
		FONT_INDEX		= XUF_DODUM_12_SEMIBOLD,
		
		SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(57+95,121)",
		"COLOR			= D3DXCOLOR(0.1,0.1,0.1,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}


	------SERVER
	
	Static_SERVER = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( Static_SERVER )
	Static_SERVER:SetName( "Static_SERVER3" )


		
	g_pPictureServer = g_pUIDialog:CreatePicture()
	Static_SERVER:AddPicture( g_pPictureServer )

	g_pPictureServer:SetTex( "DLG_UI_Common_Texture11.tga", "Soles" )

	g_pPictureServer:SetPoint
	{

		"LEFT_TOP		= D3DXVECTOR2(4+145,102+32)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}

	

----------------------------------파장표시    <---- 파장일때 일반 파티원 UI에 요것까지 추가
	
g_pStaticCaptain_Sign = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCaptain_Sign )
g_pStaticCaptain_Sign:SetName( "Captain_Sign3" )

	
	
g_pPictureSign = g_pUIDialog:CreatePicture()
g_pStaticCaptain_Sign:AddPicture( g_pPictureSign )

g_pPictureSign:SetTex( "DLG_UI_Common_Texture02.TGA", "party_captain" )

g_pPictureSign:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(4,102)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


 --[[
	
---------------   비어있는 자리 -->> 새로운 파티원이 들어올 자리





g_pStaticParty_Empty = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticParty_Empty )
g_pStaticParty_Empty:SetName( "Party_Empty3" )


 
g_pPictureEmpty = g_pUIDialog:CreatePicture()
g_pStaticParty_Empty:AddPicture( g_pPictureEmpty )

g_pPictureEmpty:SetTex( "DLG_UI_Title02.TGA", "empty" )

g_pPictureEmpty:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(56,125)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




----------------파티원 자리 닫았을때 


g_pStaticParty_Close = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticParty_Close )
g_pStaticParty_Close:SetName( "Party_Close3" )


g_pPictureLimit = g_pUIDialog:CreatePicture()
g_pStaticParty_Close:AddPicture( g_pPictureLimit )

g_pPictureLimit:SetTex( "DLG_UI_Common_Texture04.TGA", "close" )

g_pPictureLimit:SetPoint
{
      ADD_SIZE_X = 4,
	"LEFT_TOP		= D3DXVECTOR2(12,116)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.7)",
	CHANGE_TIME		= 0.0,
}

 
 g_pPictureEmpty = g_pUIDialog:CreatePicture()
g_pStaticParty_Close:AddPicture( g_pPictureEmpty )

g_pPictureEmpty:SetTex( "DLG_UI_Title02.TGA", "close" )

g_pPictureEmpty:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(54,126)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]













 ----------------------------------------------------------------------------------------------------
 -----------------------------------        네번재 파티원     ---------------------------------------
 ----------------------------------------------------------------------------------------------------
 
 

 
 

 
----   공통 BG  


g_pStaticCommon_bg = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCommon_bg )
g_pStaticCommon_bg:SetName( "common_bg4" )



g_pPictureGray_Bg = g_pUIDialog:CreatePicture()
g_pStaticCommon_bg:AddPicture( g_pPictureGray_Bg )

g_pPictureGray_Bg:SetTex( "DLG_UI_Common_Texture04.TGA", "Party_Comrade_Gray_Bg_Left" )

g_pPictureGray_Bg:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(13,161)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureGray_Bg = g_pUIDialog:CreatePicture()
g_pStaticCommon_bg:AddPicture( g_pPictureGray_Bg )

g_pPictureGray_Bg:SetTex( "DLG_UI_Common_Texture04.TGA", "Party_Comrade_gray_Bg_Middle" )

g_pPictureGray_Bg:SetPoint
{
    ADD_SIZE_X = 143+3,
	"LEFT_TOP		= D3DXVECTOR2(21,161)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureGray_Bg = g_pUIDialog:CreatePicture()
g_pStaticCommon_bg:AddPicture( g_pPictureGray_Bg )

g_pPictureGray_Bg:SetTex( "DLG_UI_Common_Texture04.TGA", "Party_Comrade_Gray_Bg_Right" )

g_pPictureGray_Bg:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(168,161)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
 
 

-------------------------BG (   파장, 파티원, EMPTY)
  
g_pStaticSlot = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticSlot )
g_pStaticSlot:SetName( "slot4" )
   
   
  
  
g_pPictureWhite_Bg = g_pUIDialog:CreatePicture()
g_pStaticSlot:AddPicture( g_pPictureWhite_Bg )

g_pPictureWhite_Bg:SetTex( "DLG_UI_Common_Texture04.TGA", "Party_Comrade_Bg_Left" )

g_pPictureWhite_Bg:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(16,164)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureWhite_Bg = g_pUIDialog:CreatePicture()
g_pStaticSlot:AddPicture( g_pPictureWhite_Bg )

g_pPictureWhite_Bg:SetTex( "DLG_UI_Common_Texture04.TGA", "Party_Comrade_Bg_Middle" )

g_pPictureWhite_Bg:SetPoint
{
    ADD_SIZE_X = 142+4,
	"LEFT_TOP		= D3DXVECTOR2(21,164)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureWhite_Bg = g_pUIDialog:CreatePicture()
g_pStaticSlot:AddPicture( g_pPictureWhite_Bg )

g_pPictureWhite_Bg:SetTex( "DLG_UI_Common_Texture04.TGA", "Party_Comrade_Bg_Right" )

g_pPictureWhite_Bg:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(168,164)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}






-----    캐릭터 이미지

g_pStaticImage = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticImage )
g_pStaticImage:SetName( "Image4" )



g_pPictureImage = g_pUIDialog:CreatePicture()
g_pStaticImage:AddPicture( g_pPictureImage )

g_pPictureImage:SetTex( "DLG_UI_Character01.TGA", "eve_state_small" )

g_pPictureImage:SetPoint
{
     ADD_SIZE_X = -18,
	 ADD_SIZE_Y = -18,
	"LEFT_TOP		= D3DXVECTOR2(20,168)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----LV

	Static_LV4 = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( Static_LV4 )
	Static_LV4:SetName( "Static_LV4" )

	Static_LV4:AddString
	{
		-- MSG 			= "LV. 99", 
		FONT_INDEX      = XUF_DODUM_11_NORMAL,
		FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(57-40+4,169+20-3)",
		"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}

	
	----NMAE

	Static_NAME = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( Static_NAME )
	Static_NAME:SetName( "Static_NAME4" )

	Static_NAME:AddString
	{
		-- MSG 			= "WWWWWWWWWWWW", 
		FONT_INDEX      = XUF_DODUM_11_NORMAL,
		FONT_STYLE      = FONT_STYLE["FS_SHELL"],
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(57,186)",
		"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}


	-----CHANNEL

	Static_CHANNEL = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( Static_CHANNEL )
	Static_CHANNEL:SetName( "Static_CHANNEL4" )

	Static_CHANNEL:AddString
	{
		MSG 			= STR_ID_1303,
		FONT_INDEX		= XUF_DODUM_12_SEMIBOLD,
		
		SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
		"POS 			= D3DXVECTOR2(57,169)",
		"COLOR			= D3DXCOLOR(0.1,0.1,0.1,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}	

	-----PLACE
	
	Static_PLACE = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( Static_PLACE )
	Static_PLACE:SetName( "Static_PLACE4" )

	Static_PLACE:AddString
	{
		MSG 			= STR_ID_1303,
		FONT_INDEX		= XUF_DODUM_12_SEMIBOLD,
		
		SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
		"POS 			= D3DXVECTOR2(57+95,169)",
		"COLOR			= D3DXCOLOR(0.1,0.1,0.1,1.0)",
		"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	}

	------SERVER
	
	Static_SERVER = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( Static_SERVER )
	Static_SERVER:SetName( "Static_SERVER4" )


		
	g_pPictureServer = g_pUIDialog:CreatePicture()
	Static_SERVER:AddPicture( g_pPictureServer )

	g_pPictureServer:SetTex( "DLG_UI_Common_Texture11.tga", "Soles" )

	g_pPictureServer:SetPoint
	{

		"LEFT_TOP		= D3DXVECTOR2(4+145,150+32)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}


----------------------------------파장표시    <---- 파장일때 일반 파티원 UI에 요것까지 추가
	
g_pStaticCaptain_Sign = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticCaptain_Sign )
g_pStaticCaptain_Sign:SetName( "Captain_Sign4" )


	
g_pPictureSign = g_pUIDialog:CreatePicture()
g_pStaticCaptain_Sign:AddPicture( g_pPictureSign )

g_pPictureSign:SetTex( "DLG_UI_Common_Texture02.TGA", "party_captain" )

g_pPictureSign:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(4,150)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


 --[[
	
---------------   비어있는 자리 -->> 새로운 파티원이 들어올 자리





g_pStaticParty_Empty = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticParty_Empty )
g_pStaticParty_Empty:SetName( "Party_Empty4" )


 
g_pPictureEmpty = g_pUIDialog:CreatePicture()
g_pStaticParty_Empty:AddPicture( g_pPictureEmpty )

g_pPictureEmpty:SetTex( "DLG_UI_Title02.TGA", "empty" )

g_pPictureEmpty:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(56,173)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




----------------파티원 자리 닫았을때 


g_pStaticParty_Close = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticParty_Close )
g_pStaticParty_Close:SetName( "Party_Close4" )


g_pPictureLimit = g_pUIDialog:CreatePicture()
g_pStaticParty_Close:AddPicture( g_pPictureLimit )

g_pPictureLimit:SetTex( "DLG_UI_Common_Texture04.TGA", "close" )

g_pPictureLimit:SetPoint
{
      ADD_SIZE_X = 4,
	"LEFT_TOP		= D3DXVECTOR2(12,164)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.7)",
	CHANGE_TIME		= 0.0,
}

 
 g_pPictureEmpty = g_pUIDialog:CreatePicture()
g_pStaticParty_Close:AddPicture( g_pPictureEmpty )

g_pPictureEmpty:SetTex( "DLG_UI_Title02.TGA", "close" )

g_pPictureEmpty:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(54,174)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]


--[[

g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Cashshop_BuyWindow_Exit" )
g_pButtonX:SetNormalTex( "DLG_UI_BUTTON01.tga", "EXIT_NORMAL" )

g_pButtonX:SetOverTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetDownTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(181,11)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(177,7)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(177+1,7+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( UI_INVENTORY_MSG["UIM_RESOLVE_ITEM_RESULT_OK"] )

--]]
