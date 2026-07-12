-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.





g_pUIDialog:SetName( "DLG_UI_Party_Comrade" )
g_pUIDialog:SetPos( 443,641 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )




--------------------------------------------------------------------------------------------------------------------------
----------------------------------------------       퍼스트  파티원    ----------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------



g_pStatic_party1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_party1 )
g_pStatic_party1:SetName( "g_pStatic_party3" )




------ 기본뒷판
g_pPictureBG = g_pUIDialog:CreatePicture()
g_pStatic_party1:AddPicture( g_pPictureBG )

g_pPictureBG:SetTex( "DLG_UI_BUTTON09.tga", "comrade_NORMAL" )

g_pPictureBG:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(4,3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

--[[
g_pButtoncomrade1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtoncomrade1 )
g_pButtoncomrade1:SetName( "g_pButtoncomrade3" )
g_pButtoncomrade1:SetNormalTex( "DLG_UI_BUTTON09.tga", "comrade_NORMAL" )

g_pButtoncomrade1:SetOverTex( "DLG_UI_BUTTON09.tga", "comrade_OVER" )

g_pButtoncomrade1:SetDownTex( "DLG_UI_BUTTON09.tga", "comrade_OVER" )

g_pButtoncomrade1:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(4,3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncomrade1:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(4,3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncomrade1:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(4+1,3+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncomrade1:AddDummyInt( 2 )				-- 내 파티원중 몇번째 파티원의 정보에 해당하는지
g_pButtoncomrade1:SetCustomMsgMouseRightUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_MEMBER_CLICKED"] )






g_pStatic_party1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_party1 )
g_pStatic_party1:SetName( "g_pStatic_party3" )

--]]




-------------- 캐릭터 아이콘 들어갈 자리

g_pPicturecharac = g_pUIDialog:CreatePicture()
g_pStatic_party1:AddPicture( g_pPicturecharac )

g_pPicturecharac:SetTex( "DLG_UI_Common_Texture01.tga", "gray_bar" )

g_pPicturecharac:SetPoint
{

     ADD_SIZE_X = 49,
	 ADD_SIZE_Y = 49,
	"LEFT_TOP		= D3DXVECTOR2(16,15)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}





---------------캐릭터 레벨 수치
g_pStatic_level1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_level1 )
g_pStatic_level1:SetName( "level3" )

g_pStatic_level1:AddString
{
	-- MSG 			= "99.",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(17,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}






------------파티장 아이콘

g_pPicturecaptain = g_pUIDialog:CreatePicture()
g_pStatic_party1:AddPicture( g_pPicturecaptain )

g_pPicturecaptain:SetTex( "DLG_UI_Common_Texture02.tga", "party_captain" )

g_pPicturecaptain:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(0,0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

-------------------- 휴면 복귀 유저 표시
g_pStaticPower_char = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPower_char )
g_pStaticPower_char:SetName( "Power3" )
g_pPicturePower1 = g_pUIDialog:CreatePicture()
g_pStaticPower_char:AddPicture( g_pPicturePower1 )
g_pPicturePower1:SetTex( "DLG_UI_Common_Texture02.TGA", "Power" )
g_pPicturePower1:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(30,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



--------------------   캐릭터 현재 위치

g_pStatic_place1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_place1 )
g_pStatic_place1:SetName( "place3" )

g_pStatic_place1:AddString
{
	MSG 			= STR_ID_1303,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(175+2,19)",
	"COLOR			= D3DXCOLOR(0.1,0.1,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


--------------------   캐릭터가 속한 채널

g_pStatic_channel1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_channel1 )
g_pStatic_channel1:SetName( "channel3" )

g_pStatic_channel1:AddString
{
	MSG 			= STR_ID_1303,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(175-70,19)",
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

	"LEFT_TOP		= D3DXVECTOR2(0 + 166,0 + 44)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




---------------캐릭터 닉네임 박스


g_pPicturebox = g_pUIDialog:CreatePicture()
g_pStatic_party1:AddPicture( g_pPicturebox )

g_pPicturebox:SetTex( "DLG_UI_Common_Texture01.tga", "ed_box2_left" )

g_pPicturebox:SetPoint
{

   
	"LEFT_TOP		= D3DXVECTOR2(70,43)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pPicturebox = g_pUIDialog:CreatePicture()
g_pStatic_party1:AddPicture( g_pPicturebox )

g_pPicturebox:SetTex( "DLG_UI_Common_Texture01.tga", "ed_box2_middle" )

g_pPicturebox:SetPoint
{

   ADD_SIZE_X = 109,
	"LEFT_TOP		= D3DXVECTOR2(75,43)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



g_pPicturebox = g_pUIDialog:CreatePicture()
g_pStatic_party1:AddPicture( g_pPicturebox )

g_pPicturebox:SetTex( "DLG_UI_Common_Texture01.tga", "ed_box2_right" )

g_pPicturebox:SetPoint
{

   
	"LEFT_TOP		= D3DXVECTOR2(185,43)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


 


--------------------   닉네임


g_pStatic_name1 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name1 )
g_pStatic_name1:SetName( "name3" )

g_pStatic_name1:AddString
{
	-- MSG 			= "WWWWWWWWWWWW",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(76,48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

-----------------------bar


g_pPictureline = g_pUIDialog:CreatePicture()
g_pStatic_party1:AddPicture( g_pPictureline )

g_pPictureline:SetTex( "DLG_UI_Common_Texture01.tga", "bar1" )

g_pPictureline:SetPoint
{
 
    ADD_SIZE_X = 118,
	"LEFT_TOP		= D3DXVECTOR2(70,37)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

	  
	  


------버튼

g_pButtoncomrade1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtoncomrade1 )
g_pButtoncomrade1:SetName( "g_pButtoncomrade3" )
g_pButtoncomrade1:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtoncomrade1:SetOverTex( "DLG_UI_BUTTON09.tga", "comrade_OVER" )

g_pButtoncomrade1:SetDownTex( "DLG_UI_BUTTON09.tga", "comrade_OVER" )

g_pButtoncomrade1:SetNormalPoint
{
     ADD_SIZE_X = 195,
     ADD_SIZE_Y = 70,	
    "LEFT_TOP		= D3DXVECTOR2(4,3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncomrade1:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(4,3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncomrade1:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(4+1,3+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtoncomrade1:AddDummyInt( 2 )				-- 내 파티원중 몇번째 파티원의 정보에 해당하는지
g_pButtoncomrade1:SetCustomMsgMouseRightUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_MEMBER_CLICKED"] )




------------------ 파티원 상태   -----------READY



g_pStatic_Ready = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Ready )
g_pStatic_Ready:SetName( "g_pStatic_Ready3" )




g_pPictureready = g_pUIDialog:CreatePicture()
g_pStatic_Ready:AddPicture( g_pPictureready )

g_pPictureready:SetTex( "DLG_UI_Common_Texture11.tga", "ready" )

g_pPictureready:SetPoint
{

    
	"LEFT_TOP		= D3DXVECTOR2(67,5)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}







--------------------------------------------------------------------------------------------------------------------------
----------------------------------------------       세컨드  파티원    ----------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------




--[[
g_pButtoncomrade2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtoncomrade2 )
g_pButtoncomrade2:SetName( "g_pButtoncomrade2" )
g_pButtoncomrade2:SetNormalTex( "DLG_UI_BUTTON09.tga", "comrade_NORMAL" )

g_pButtoncomrade2:SetOverTex( "DLG_UI_BUTTON09.tga", "comrade_OVER" )

g_pButtoncomrade2:SetDownTex( "DLG_UI_BUTTON09.tga", "comrade_OVER" )

g_pButtoncomrade2:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(4+189,3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncomrade2:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(4+189,3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncomrade2:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(4+189+1,3+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncomrade2:AddDummyInt( 1 )				-- 내 파티원중 몇번째 파티원의 정보에 해당하는지
g_pButtoncomrade2:SetCustomMsgMouseRightUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_MEMBER_CLICKED"] )

--]]



g_pStatic_party2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_party2 )
g_pStatic_party2:SetName( "g_pStatic_party2" )


------ 기본뒷판
g_pPictureBG = g_pUIDialog:CreatePicture()
g_pStatic_party2:AddPicture( g_pPictureBG )

g_pPictureBG:SetTex( "DLG_UI_BUTTON09.tga", "comrade_NORMAL" )

g_pPictureBG:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(4+189,3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

-------------- 캐릭터 아이콘 들어갈 자리

g_pPicturecharac = g_pUIDialog:CreatePicture()
g_pStatic_party2:AddPicture( g_pPicturecharac )

g_pPicturecharac:SetTex( "DLG_UI_Common_Texture01.tga", "gray_bar" )

g_pPicturecharac:SetPoint
{

     ADD_SIZE_X = 49,
	 ADD_SIZE_Y = 49,
	"LEFT_TOP		= D3DXVECTOR2(16+189,15)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}




---------------캐릭터 레벨 수치
g_pStatic_level2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_level2 )
g_pStatic_level2:SetName( "level2" )

g_pStatic_level2:AddString
{
	-- MSG 			= "99.",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(17+189,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}






------------파티장 아이콘

g_pPicturecaptain = g_pUIDialog:CreatePicture()
g_pStatic_party2:AddPicture( g_pPicturecaptain )

g_pPicturecaptain:SetTex( "DLG_UI_Common_Texture02.tga", "party_captain" )

g_pPicturecaptain:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(189,0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pStaticPower_char = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPower_char )
g_pStaticPower_char:SetName( "Power2" )
g_pPicturePower2 = g_pUIDialog:CreatePicture()
g_pStaticPower_char:AddPicture( g_pPicturePower2 )
g_pPicturePower2:SetTex( "DLG_UI_Common_Texture02.TGA", "Power" )
g_pPicturePower2:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(189+30,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--------------------   캐릭터 현재 위치

g_pStatic_place2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_place2 )
g_pStatic_place2:SetName( "place2" )

g_pStatic_place2:AddString
{
	MSG 			= STR_ID_1303,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(175+189+2,19)",
	"COLOR			= D3DXCOLOR(0.1,0.1,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}


--------------------   캐릭터가 속한 채널

g_pStatic_channel2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_channel2 )
g_pStatic_channel2:SetName( "channel2" )

g_pStatic_channel2:AddString
{
	MSG 			= STR_ID_1303,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(175+189-70,19)",
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

	"LEFT_TOP		= D3DXVECTOR2(189 + 166,0 + 44)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}





---------------캐릭터 닉네임 박스


g_pPicturebox = g_pUIDialog:CreatePicture()
g_pStatic_party2:AddPicture( g_pPicturebox )

g_pPicturebox:SetTex( "DLG_UI_Common_Texture01.tga", "ed_box2_left" )

g_pPicturebox:SetPoint
{

   
	"LEFT_TOP		= D3DXVECTOR2(70+189,43)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPicturebox = g_pUIDialog:CreatePicture()
g_pStatic_party2:AddPicture( g_pPicturebox )

g_pPicturebox:SetTex( "DLG_UI_Common_Texture01.tga", "ed_box2_middle" )

g_pPicturebox:SetPoint
{

   ADD_SIZE_X = 109,
	"LEFT_TOP		= D3DXVECTOR2(75+189,43)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



g_pPicturebox = g_pUIDialog:CreatePicture()
g_pStatic_party2:AddPicture( g_pPicturebox )

g_pPicturebox:SetTex( "DLG_UI_Common_Texture01.tga", "ed_box2_right" )

g_pPicturebox:SetPoint
{

   
	"LEFT_TOP		= D3DXVECTOR2(185+189,43)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


 


--------------------   닉네임


g_pStatic_name2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name2 )
g_pStatic_name2:SetName( "name2" )

g_pStatic_name2:AddString
{

	-- MSG 			= "WWWWWWWWWWWW",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(76+189,48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

-----------------------bar


g_pPictureline = g_pUIDialog:CreatePicture()
g_pStatic_party2:AddPicture( g_pPictureline )

g_pPictureline:SetTex( "DLG_UI_Common_Texture01.tga", "bar1" )

g_pPictureline:SetPoint
{
 
    ADD_SIZE_X = 118,
	"LEFT_TOP		= D3DXVECTOR2(70+189,37)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

			 








g_pButtoncomrade2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtoncomrade2 )
g_pButtoncomrade2:SetName( "g_pButtoncomrade2" )
g_pButtoncomrade2:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtoncomrade2:SetOverTex( "DLG_UI_BUTTON09.tga", "comrade_OVER" )

g_pButtoncomrade2:SetDownTex( "DLG_UI_BUTTON09.tga", "comrade_OVER" )

g_pButtoncomrade2:SetNormalPoint
{
     ADD_SIZE_X = 195,
     ADD_SIZE_Y = 70,	
    "LEFT_TOP		= D3DXVECTOR2(4+189,3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncomrade2:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(4+189,3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncomrade2:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(4+189+1,3+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtoncomrade2:AddDummyInt( 1 )				-- 내 파티원중 몇번째 파티원의 정보에 해당하는지
g_pButtoncomrade2:SetCustomMsgMouseRightUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_MEMBER_CLICKED"] )




------------------ 파티원 상태   -----------READY

g_pStatic_Ready = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Ready )
g_pStatic_Ready:SetName( "g_pStatic_Ready2" )


g_pPictureready = g_pUIDialog:CreatePicture()
g_pStatic_Ready:AddPicture( g_pPictureready )

g_pPictureready:SetTex( "DLG_UI_Common_Texture11.tga", "ready" )

g_pPictureready:SetPoint
{

    
	"LEFT_TOP		= D3DXVECTOR2(257,5)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}





--------------------------------------------------------------------------------------------------------------------------
----------------------------------------------       서드  파티원    ----------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------



--[[
g_pButtoncomrade3 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtoncomrade3 )
g_pButtoncomrade3:SetName( "g_pButtoncomrade1" )
g_pButtoncomrade3:SetNormalTex( "DLG_UI_BUTTON09.tga", "comrade_NORMAL" )

g_pButtoncomrade3:SetOverTex( "DLG_UI_BUTTON09.tga", "comrade_OVER" )

g_pButtoncomrade3:SetDownTex( "DLG_UI_BUTTON09.tga", "comrade_OVER" )

g_pButtoncomrade3:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(4+189+189,3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncomrade3:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(4+189+189,3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncomrade3:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(4+189+189+1,3+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncomrade3:AddDummyInt( 0 )				-- 내 파티원중 몇번째 파티원의 정보에 해당하는지
g_pButtoncomrade3:SetCustomMsgMouseRightUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_MEMBER_CLICKED"] )
--]]




g_pStatic_party3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_party3 )
g_pStatic_party3:SetName( "g_pStatic_party1" )




------ 기본뒷판
g_pPictureBG = g_pUIDialog:CreatePicture()
g_pStatic_party3:AddPicture( g_pPictureBG )

g_pPictureBG:SetTex( "DLG_UI_BUTTON09.tga", "comrade_NORMAL" )

g_pPictureBG:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(4+189+189,3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}
-------------- 캐릭터 아이콘 들어갈 자리

g_pPicturecharac = g_pUIDialog:CreatePicture()
g_pStatic_party3:AddPicture( g_pPicturecharac )

g_pPicturecharac:SetTex( "DLG_UI_Common_Texture01.tga", "gray_bar" )

g_pPicturecharac:SetPoint
{

     ADD_SIZE_X = 49,
	 ADD_SIZE_Y = 49,
	"LEFT_TOP		= D3DXVECTOR2(16+189+189,15)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}





---------------캐릭터 레벨 수치
g_pStatic_level3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_level3 )
g_pStatic_level3:SetName( "level1" )

g_pStatic_level3:AddString
{
	-- MSG 			= "99.",
	FONT_INDEX		= XUF_DODUM_11_NORMAL,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(17+189+189,53)",
	"COLOR			= D3DXCOLOR(1.0,1.0,0.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}






------------파티장 아이콘

g_pPicturecaptain = g_pUIDialog:CreatePicture()
g_pStatic_party3:AddPicture( g_pPicturecaptain )

g_pPicturecaptain:SetTex( "DLG_UI_Common_Texture02.tga", "party_captain" )

g_pPicturecaptain:SetPoint
{


	"LEFT_TOP		= D3DXVECTOR2(189+189,0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

g_pStaticPower_char = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticPower_char )
g_pStaticPower_char:SetName( "Power1" )
g_pPicturePower3 = g_pUIDialog:CreatePicture()
g_pStaticPower_char:AddPicture( g_pPicturePower3 )
g_pPicturePower3:SetTex( "DLG_UI_Common_Texture02.TGA", "Power" )
g_pPicturePower3:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(189+189+30,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--------------------   캐릭터 현재 위치

g_pStatic_place3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_place3 )
g_pStatic_place3:SetName( "place1" )

g_pStatic_place3:AddString
{
	MSG 			= STR_ID_1303,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(175+189+189+2,19)",
	"COLOR			= D3DXCOLOR(0.1,0.1,0.1,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

--------------------   캐릭터가 속한 채널

g_pStatic_channel3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_channel3 )
g_pStatic_channel3:SetName( "channel1" )

g_pStatic_channel3:AddString
{
	MSG 			= STR_ID_1303,
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	
	SORT_FLAG		= DRAW_TEXT["DT_RIGHT"],
	"POS 			= D3DXVECTOR2(175+189+189-70,19)",
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

	"LEFT_TOP		= D3DXVECTOR2(189 + 189 + 166, 0 + 44)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




---------------캐릭터 닉네임 박스


g_pPicturebox = g_pUIDialog:CreatePicture()
g_pStatic_party3:AddPicture( g_pPicturebox )

g_pPicturebox:SetTex( "DLG_UI_Common_Texture01.tga", "ed_box2_left" )

g_pPicturebox:SetPoint
{

   
	"LEFT_TOP		= D3DXVECTOR2(70+189+189,43)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


g_pPicturebox = g_pUIDialog:CreatePicture()
g_pStatic_party3:AddPicture( g_pPicturebox )

g_pPicturebox:SetTex( "DLG_UI_Common_Texture01.tga", "ed_box2_middle" )

g_pPicturebox:SetPoint
{

   ADD_SIZE_X = 109,
	"LEFT_TOP		= D3DXVECTOR2(75+189+189,43)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}



g_pPicturebox = g_pUIDialog:CreatePicture()
g_pStatic_party3:AddPicture( g_pPicturebox )

g_pPicturebox:SetTex( "DLG_UI_Common_Texture01.tga", "ed_box2_right" )

g_pPicturebox:SetPoint
{

   
	"LEFT_TOP		= D3DXVECTOR2(185+189+189,43)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}


 


--------------------   닉네임


g_pStatic_name3 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_name3 )
g_pStatic_name3:SetName( "name1" )

g_pStatic_name3:AddString
{

	-- MSG 			= "WWWWWWWWWWWW",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(76+189+189,48)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

-----------------------bar


g_pPictureline = g_pUIDialog:CreatePicture()
g_pStatic_party3:AddPicture( g_pPictureline )

g_pPictureline:SetTex( "DLG_UI_Common_Texture01.tga", "bar1" )

g_pPictureline:SetPoint
{
 
    ADD_SIZE_X = 118,
	"LEFT_TOP		= D3DXVECTOR2(70+189+189,37)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}
			 
g_pButtoncomrade2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtoncomrade2 )
g_pButtoncomrade2:SetName( "g_pButtoncomrade1" )
g_pButtoncomrade2:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtoncomrade2:SetOverTex( "DLG_UI_BUTTON09.tga", "comrade_OVER" )

g_pButtoncomrade2:SetDownTex( "DLG_UI_BUTTON09.tga", "comrade_OVER" )

g_pButtoncomrade2:SetNormalPoint
{
     ADD_SIZE_X = 195,
     ADD_SIZE_Y = 70,	
    "LEFT_TOP		= D3DXVECTOR2(4+189+189,3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncomrade2:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(4+189+189,3)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtoncomrade2:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(4+189+189+1,3+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtoncomrade2:AddDummyInt( 0 )				-- 내 파티원중 몇번째 파티원의 정보에 해당하는지
g_pButtoncomrade2:SetCustomMsgMouseRightUp( PARTY_UI_CUSTOM_MSG["PUCM_PARTY_MEMBER_CLICKED"] )





------------------ 파티원 상태   -----------READY

g_pStatic_Ready = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_Ready )
g_pStatic_Ready:SetName( "g_pStatic_Ready1" )


g_pPictureready = g_pUIDialog:CreatePicture()
g_pStatic_Ready:AddPicture( g_pPictureready )

g_pPictureready:SetTex( "DLG_UI_Common_Texture11.tga", "ready" )

g_pPictureready:SetPoint
{

    
	"LEFT_TOP		= D3DXVECTOR2(446,5)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME     	= 0.0,
}

