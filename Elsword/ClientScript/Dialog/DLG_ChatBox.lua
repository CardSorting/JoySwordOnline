-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pUIDialog:SetName( "DLG_Square_ChatBox" )
g_pUIDialog:SetPos( 0, 492 )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_MESSENGER"] )
--g_pUIDialog:SetCloseCustomUIEventID( PARTYMSGER_UI_MSG["PUM_CHAT_WINDOW_CLOSE"] )
g_pUIDialog:SetCloseOnFocusOutEvent( NASOD_SCOPE_UI_MSG["NSUM_MENU_CLEAR"] )


------------------------------------------------------------------------------------------------




---------아래꺼 버튼
g_pButtonBtn_Box1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonBtn_Box1 )
g_pButtonBtn_Box1:SetName( "Btn_Box1" )
g_pButtonBtn_Box1:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonBtn_Box1:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonBtn_Box1:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonBtn_Box1:SetNormalPoint
{

    ADD_SIZE_X = 433,
 	ADD_SIZE_Y = 162,
 	"LEFT_TOP		= D3DXVECTOR2(2,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBtn_Box1:SetOverPoint
{
     ADD_SIZE_X = 433,
 	ADD_SIZE_Y = 162,
	"LEFT_TOP		= D3DXVECTOR2(2,0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBtn_Box1:SetDownPoint
{
    ADD_SIZE_X = 433,
 	ADD_SIZE_Y = 162,
 	"LEFT_TOP		= D3DXVECTOR2(2,0)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-------------위에꺼 버튼




g_pButtonBtn_Box2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonBtn_Box2 )
g_pButtonBtn_Box2:SetName( "Btn_Box2" )
g_pButtonBtn_Box2:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonBtn_Box2:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonBtn_Box2:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButtonBtn_Box2:SetNormalPoint
{

    ADD_SIZE_X = 433,
 	ADD_SIZE_Y = 126,
 	"LEFT_TOP		= D3DXVECTOR2(2,-128)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBtn_Box2:SetOverPoint
{
     ADD_SIZE_X = 433,
 	ADD_SIZE_Y = 126,
	"LEFT_TOP		= D3DXVECTOR2(2,-128)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBtn_Box2:SetDownPoint
{
    ADD_SIZE_X = 433,
 	ADD_SIZE_Y = 126,
 	"LEFT_TOP		= D3DXVECTOR2(2,-128)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


------------------------------------------------------------------------------------------------




g_pStaticOther_Box = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticOther_Box )
g_pStaticOther_Box:SetName( "Other_Box1" )

--[[
--------연한박스1
g_pPictureBOX1= g_pUIDialog:CreatePicture()
g_pStaticOther_Box:AddPicture( g_pPictureBOX1)

g_pPictureBOX1:SetTex( "DLG_UI_Common_Texture01.tga", "Black_bar"  )

g_pPictureBOX1:SetPoint
{
     ADD_SIZE_X = 401,
 	ADD_SIZE_Y = 132,
	"LEFT_TOP		= D3DXVECTOR2(33,28)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.2)",
	CHANGE_TIME		= 0.0,
}

g_pStaticOther_Box2 = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticOther_Box2 )
g_pStaticOther_Box2:SetName( "Other_Box2" )

--------연한박스2
g_pPictureBOX2= g_pUIDialog:CreatePicture()
g_pStaticOther_Box2:AddPicture( g_pPictureBOX2)

g_pPictureBOX2:SetTex( "DLG_UI_Common_Texture01.tga", "Black_bar"  )

g_pPictureBOX2:SetPoint
{
     ADD_SIZE_X = 401,
 	ADD_SIZE_Y = 126,
	"LEFT_TOP		= D3DXVECTOR2(33,-100)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,0.2)",
	CHANGE_TIME		= 0.0,
}

--]]







-- 큰 채팅창 바닥 
g_pStatic_ChatBoxLarge = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_ChatBoxLarge )
g_pStatic_ChatBoxLarge:SetName( "Chat_Box_Large" )


--------------------------------------------------------------------------------
--[[
--------------밑판1-------------------
g_pPictureBG1= g_pUIDialog:CreatePicture()
g_pStatic_ChatBoxLarge:AddPicture( g_pPictureBG1)

g_pPictureBG1:SetTex( "DLG_Common_New_Texture13.tga", "Box5"  )

g_pPictureBG1:SetPoint
{
     ADD_SIZE_X = 28,
 	ADD_SIZE_Y = 133+127,
	"LEFT_TOP		= D3DXVECTOR2(1,28+1-127)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBG1_1= g_pUIDialog:CreatePicture()
g_pStatic_ChatBoxLarge:AddPicture( g_pPictureBG1_1)

g_pPictureBG1_1:SetTex( "DLG_Common_New_Texture13.tga", "Box5"  )

g_pPictureBG1_1:SetPoint
{
     ADD_SIZE_X = 28,
 	ADD_SIZE_Y = 133+127,
	"LEFT_TOP		= D3DXVECTOR2(1,28+1-127)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureBG2= g_pUIDialog:CreatePicture()
g_pStatic_ChatBoxLarge:AddPicture( g_pPictureBG2)

g_pPictureBG2:SetTex( "DLG_Common_New_Texture13.tga", "Box5"  )

g_pPictureBG2:SetPoint
{

 	ADD_SIZE_Y = 131+127,
	"LEFT_TOP		= D3DXVECTOR2(0,29+1-127)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureBG2_2= g_pUIDialog:CreatePicture()
g_pStatic_ChatBoxLarge:AddPicture( g_pPictureBG2_2)

g_pPictureBG2_2:SetTex( "DLG_Common_New_Texture13.tga", "Box5"  )

g_pPictureBG2_2:SetPoint
{

 	ADD_SIZE_Y = 131+127,
	"LEFT_TOP		= D3DXVECTOR2(0,29+1-127)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureBG3= g_pUIDialog:CreatePicture()
g_pStatic_ChatBoxLarge:AddPicture( g_pPictureBG3)

g_pPictureBG3:SetTex( "DLG_Common_New_Texture13.tga", "Box5"  )

g_pPictureBG3:SetPoint
{

 	ADD_SIZE_Y = 132+127,
	"LEFT_TOP		= D3DXVECTOR2(30,28+1-127)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBG3_3= g_pUIDialog:CreatePicture()
g_pStatic_ChatBoxLarge:AddPicture( g_pPictureBG3_3)

g_pPictureBG3_3:SetTex( "DLG_Common_New_Texture13.tga", "Box5"  )

g_pPictureBG3_3:SetPoint
{

 	ADD_SIZE_Y = 132+127,
	"LEFT_TOP		= D3DXVECTOR2(30,28+1-127)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-------------밑판3---------------------------
g_pPictureBG5= g_pUIDialog:CreatePicture()
g_pStatic_ChatBoxLarge:AddPicture( g_pPictureBG5)

g_pPictureBG5:SetTex( "DLG_Common_New_Texture13.tga", "Box5"  )

g_pPictureBG5:SetPoint
{

 	ADD_SIZE_Y = 133+127,
	"LEFT_TOP		= D3DXVECTOR2(32,28+1-127)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureBG6= g_pUIDialog:CreatePicture()
g_pStatic_ChatBoxLarge:AddPicture( g_pPictureBG6)

g_pPictureBG6:SetTex( "DLG_Common_New_Texture13.tga", "Box5"  )

g_pPictureBG6:SetPoint
{

 	ADD_SIZE_X = 401,
	"LEFT_TOP		= D3DXVECTOR2(33,161+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBG7= g_pUIDialog:CreatePicture()
g_pStatic_ChatBoxLarge:AddPicture( g_pPictureBG7)

g_pPictureBG7:SetTex( "DLG_Common_New_Texture13.tga", "Box5"  )

g_pPictureBG7:SetPoint
{

 	ADD_SIZE_Y = 131+127,
	"LEFT_TOP		= D3DXVECTOR2(435,29+1-127)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]

g_pPictureBG8= g_pUIDialog:CreatePicture()
g_pStatic_ChatBoxLarge:AddPicture( g_pPictureBG8)

g_pPictureBG8:SetTex( "DLG_Common_New_Texture13.tga", "Box5"  )

g_pPictureBG8:SetPoint
{
      ADD_SIZE_X = 401,
 	ADD_SIZE_Y = 132+127,
	"LEFT_TOP		= D3DXVECTOR2(33,28+1-127)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-----------------밑판4----------------------
g_pPictureBG9= g_pUIDialog:CreatePicture()
g_pStatic_ChatBoxLarge:AddPicture( g_pPictureBG9)

g_pPictureBG9:SetTex( "DLG_Common_New_Texture13.tga", "Box1"  )

g_pPictureBG9:SetPoint
{
      ADD_SIZE_X = 30,

	"LEFT_TOP		= D3DXVECTOR2(2,26+1-127)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureBG10= g_pUIDialog:CreatePicture()
g_pStatic_ChatBoxLarge:AddPicture( g_pPictureBG10)

g_pPictureBG10:SetTex( "DLG_Common_New_Texture13.tga", "Box1"  )

g_pPictureBG10:SetPoint
{
        ADD_SIZE_X = 2,
       
	"LEFT_TOP		= D3DXVECTOR2(76,26+1-127)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

      
g_pPictureBG11= g_pUIDialog:CreatePicture()
g_pStatic_ChatBoxLarge:AddPicture( g_pPictureBG11)

g_pPictureBG11:SetTex( "DLG_Common_New_Texture13.tga", "Box1"  )

g_pPictureBG11:SetPoint
{

        ADD_SIZE_X = 2,
	"LEFT_TOP		= D3DXVECTOR2(121,26+1-127)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureBG12= g_pUIDialog:CreatePicture()
g_pStatic_ChatBoxLarge:AddPicture( g_pPictureBG12)

g_pPictureBG12:SetTex( "DLG_Common_New_Texture13.tga", "Box1"  )

g_pPictureBG12:SetPoint
{
      ADD_SIZE_X = 2,

	"LEFT_TOP		= D3DXVECTOR2(166,26+1-127)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureBG12_1= g_pUIDialog:CreatePicture()
g_pStatic_ChatBoxLarge:AddPicture( g_pPictureBG12_1)

g_pPictureBG12_1:SetTex( "DLG_Common_New_Texture13.tga", "Box1"  )

g_pPictureBG12_1:SetPoint
{
      ADD_SIZE_X = 222,

	"LEFT_TOP		= D3DXVECTOR2(211,26+1-127)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}














-- 작은 채팅창 바닥
g_pStaticChat_Box = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStaticChat_Box )
g_pStaticChat_Box:SetName( "Chat_Box" )



--[[
--------------밑판1-------------------
g_pPictureBG1= g_pUIDialog:CreatePicture()
g_pStaticChat_Box:AddPicture( g_pPictureBG1)

g_pPictureBG1:SetTex( "DLG_Common_New_Texture13.tga", "Box5"  )

g_pPictureBG1:SetPoint
{
     ADD_SIZE_X = 28,
 	ADD_SIZE_Y = 133,
	"LEFT_TOP		= D3DXVECTOR2(1,28+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBG1_1= g_pUIDialog:CreatePicture()
g_pStaticChat_Box:AddPicture( g_pPictureBG1_1)

g_pPictureBG1_1:SetTex( "DLG_Common_New_Texture13.tga", "Box5"  )

g_pPictureBG1_1:SetPoint
{
     ADD_SIZE_X = 28,
 	ADD_SIZE_Y = 133,
	"LEFT_TOP		= D3DXVECTOR2(1,28+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureBG2= g_pUIDialog:CreatePicture()
g_pStaticChat_Box:AddPicture( g_pPictureBG2)

g_pPictureBG2:SetTex( "DLG_Common_New_Texture13.tga", "Box5"  )

g_pPictureBG2:SetPoint
{

 	ADD_SIZE_Y = 131,
	"LEFT_TOP		= D3DXVECTOR2(0,29+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureBG2_2= g_pUIDialog:CreatePicture()
g_pStaticChat_Box:AddPicture( g_pPictureBG2_2)

g_pPictureBG2_2:SetTex( "DLG_Common_New_Texture13.tga", "Box5"  )

g_pPictureBG2_2:SetPoint
{

 	ADD_SIZE_Y = 131,
	"LEFT_TOP		= D3DXVECTOR2(0,29+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureBG3= g_pUIDialog:CreatePicture()
g_pStaticChat_Box:AddPicture( g_pPictureBG3)

g_pPictureBG3:SetTex( "DLG_Common_New_Texture13.tga", "Box5"  )

g_pPictureBG3:SetPoint
{

 	ADD_SIZE_Y = 132,
	"LEFT_TOP		= D3DXVECTOR2(30,28+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBG3_3= g_pUIDialog:CreatePicture()
g_pStaticChat_Box:AddPicture( g_pPictureBG3_3)

g_pPictureBG3_3:SetTex( "DLG_Common_New_Texture13.tga", "Box5"  )

g_pPictureBG3_3:SetPoint
{

 	ADD_SIZE_Y = 132,
	"LEFT_TOP		= D3DXVECTOR2(30,28+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


-------------밑판3---------------------------
g_pPictureBG5= g_pUIDialog:CreatePicture()
g_pStaticChat_Box:AddPicture( g_pPictureBG5)

g_pPictureBG5:SetTex( "DLG_Common_New_Texture13.tga", "Box5"  )

g_pPictureBG5:SetPoint
{

 	ADD_SIZE_Y = 133,
	"LEFT_TOP		= D3DXVECTOR2(32,28+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureBG6= g_pUIDialog:CreatePicture()
g_pStaticChat_Box:AddPicture( g_pPictureBG6)

g_pPictureBG6:SetTex( "DLG_Common_New_Texture13.tga", "Box5"  )

g_pPictureBG6:SetPoint
{

 	ADD_SIZE_X = 401,
	"LEFT_TOP		= D3DXVECTOR2(33,161+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPictureBG7= g_pUIDialog:CreatePicture()
g_pStaticChat_Box:AddPicture( g_pPictureBG7)

g_pPictureBG7:SetTex( "DLG_Common_New_Texture13.tga", "Box5"  )

g_pPictureBG7:SetPoint
{

 	ADD_SIZE_Y = 131,
	"LEFT_TOP		= D3DXVECTOR2(435,29+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]

g_pPictureBG8= g_pUIDialog:CreatePicture()
g_pStaticChat_Box:AddPicture( g_pPictureBG8)

g_pPictureBG8:SetTex( "DLG_Common_New_Texture13.tga", "Box5"  )

g_pPictureBG8:SetPoint
{
      ADD_SIZE_X = 401,
 	ADD_SIZE_Y = 132,
	"LEFT_TOP		= D3DXVECTOR2(33,28+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--[[
-----------------밑판4----------------------
g_pPictureBG9= g_pUIDialog:CreatePicture()
g_pStaticChat_Box:AddPicture( g_pPictureBG9)

g_pPictureBG9:SetTex( "DLG_Common_New_Texture13.tga", "Box1"  )

g_pPictureBG9:SetPoint
{
      ADD_SIZE_X = 30,

	"LEFT_TOP		= D3DXVECTOR2(2,26+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureBG10= g_pUIDialog:CreatePicture()
g_pStaticChat_Box:AddPicture( g_pPictureBG10)

g_pPictureBG10:SetTex( "DLG_Common_New_Texture13.tga", "Box1"  )

g_pPictureBG10:SetPoint
{
        ADD_SIZE_X = 2,
       
	"LEFT_TOP		= D3DXVECTOR2(76,26+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

      
g_pPictureBG11= g_pUIDialog:CreatePicture()
g_pStaticChat_Box:AddPicture( g_pPictureBG11)

g_pPictureBG11:SetTex( "DLG_Common_New_Texture13.tga", "Box1"  )

g_pPictureBG11:SetPoint
{

        ADD_SIZE_X = 2,
	"LEFT_TOP		= D3DXVECTOR2(121,26+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureBG12= g_pUIDialog:CreatePicture()
g_pStaticChat_Box:AddPicture( g_pPictureBG12)

g_pPictureBG12:SetTex( "DLG_Common_New_Texture13.tga", "Box1"  )

g_pPictureBG12:SetPoint
{
      ADD_SIZE_X = 2,

	"LEFT_TOP		= D3DXVECTOR2(166,26+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPictureBG12_1= g_pUIDialog:CreatePicture()
g_pStaticChat_Box:AddPicture( g_pPictureBG12_1)

g_pPictureBG12_1:SetTex( "DLG_Common_New_Texture13.tga", "Box1"  )

g_pPictureBG12_1:SetPoint
{
      ADD_SIZE_X = 222,

	"LEFT_TOP		= D3DXVECTOR2(211,26+1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
--]]












----------------버튼
g_pButtonHelp = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonHelp )
g_pButtonHelp:SetName( "Help" )
g_pButtonHelp:SetNormalTex( "DLG_Common_New_Texture13.tga", "Chat_Button_Help_Normal" )

g_pButtonHelp:SetOverTex( "DLG_Common_New_Texture13.tga", "Chat_Button_Help_Over" )

g_pButtonHelp:SetDownTex( "DLG_Common_New_Texture13.tga", "Chat_Button_Help_Normal" )

g_pButtonHelp:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(2,64-34-30 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonHelp:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(2,64-34-30)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonHelp:SetDownPoint
{
    ADD_SIZE_X = -2,
 	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(3,65-34-30)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonHelp:SetCustomMsgMouseUp( PARTYMSGER_UI_MSG["PUM_CHAT_HELP"] )




g_pButton_Enlarge = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Enlarge )
g_pButton_Enlarge:SetName( "Enlarge_Chat_Window" )
g_pButton_Enlarge:SetNormalTex( "DLG_Common_New_Texture13.tga", "ChatButton_High_Normal" )

g_pButton_Enlarge:SetOverTex( "DLG_Common_New_Texture13.tga", "ChatButton_High_Over" )

g_pButton_Enlarge:SetDownTex( "DLG_Common_New_Texture13.tga", "ChatButton_High_Normal" )

g_pButton_Enlarge:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(2,64-34 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Enlarge:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(2,64-34)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Enlarge:SetDownPoint
{
    ADD_SIZE_X = -2,
 	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(3,65-34)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Enlarge:SetCustomMsgMouseUp( PARTYMSGER_UI_MSG["PUM_CHAT_WINDOW_MINIMIZE_MAXIMIZE"] )











g_pButtonDown2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonDown2 )
g_pButtonDown2:SetName( "Down2" )
g_pButtonDown2:SetNormalTex( "DLG_Common_New_Texture13.tga", "ChatButton_Deepdown_Normal" )

g_pButtonDown2:SetOverTex( "DLG_Common_New_Texture13.tga", "ChatButton_Deepdown_Over" )

g_pButtonDown2:SetDownTex( "DLG_Common_New_Texture13.tga", "ChatButton_Deepdown_Normal" )

g_pButtonDown2:SetNormalPoint
{


 	"LEFT_TOP		= D3DXVECTOR2(2,133)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDown2:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(2,133)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDown2:SetDownPoint
{
       ADD_SIZE_X = -2,
 	ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(3,134)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonDown2:SetCustomMsgMouseUp( PARTYMSGER_UI_MSG["PUM_CHAT_WINDOW_SCROLL_TO_LATEST"] )









g_pRadioButtonAll = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonAll )

g_pRadioButtonAll:SetFixOverByCheck( true )
g_pRadioButtonAll:SetShowOffBGByCheck( true )

g_pRadioButtonAll:SetName( "ButtonAll" )

g_pRadioButtonAll:SetNormalTex( "DLG_Common_New_Texture13.tga", "All_Box_Normal" )


g_pRadioButtonAll:SetOverTex( "DLG_Common_New_Texture13.tga", "All_Box_Over" )


g_pRadioButtonAll:SetCheckedTex( "DLG_Common_New_Texture13.tga", "All_Box_Over" )


g_pRadioButtonAll:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(33,1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonAll:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(33,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonAll:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(33,1)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(33+45,1+30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonAll:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(33,0)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonAll:SetGroupID( 1 )
g_pRadioButtonAll:SetCustomMsgChecked( PARTYMSGER_UI_MSG["PUM_CHAT_MODE_ALL"] )
g_pRadioButtonAll:SetChecked( true )




g_pRadioButtonParty = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonParty )

g_pRadioButtonParty:SetFixOverByCheck( true )
g_pRadioButtonParty:SetShowOffBGByCheck( true )
g_pRadioButtonParty:SetName( "ButtonParty" )
g_pRadioButtonParty:SetNormalTex( "DLG_Common_New_Texture13.tga", "Party_Box_Normal" )
g_pRadioButtonParty:SetOverTex( "DLG_Common_New_Texture13.tga", "Party_Box_Over" )
g_pRadioButtonParty:SetCheckedTex( "DLG_Common_New_Texture13.tga", "Party_Box_Over" )


g_pRadioButtonParty:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(78,1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonParty:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(78,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonParty:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(78,1)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(78+45,1+30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonParty:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(78,0)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonParty:SetGroupID( 1 )
g_pRadioButtonParty:SetCustomMsgChecked( PARTYMSGER_UI_MSG["PUM_CHAT_MODE_PARTY"] )





g_pRadioButtonGuild = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonGuild )

g_pRadioButtonGuild:SetFixOverByCheck( true )
g_pRadioButtonGuild:SetShowOffBGByCheck( true )

g_pRadioButtonGuild:SetName( "ButtonGuild" )

g_pRadioButtonGuild:SetNormalTex( "DLG_Common_New_Texture13.tga", "Guild_Box_Normal" )
g_pRadioButtonGuild:SetOverTex( "DLG_Common_New_Texture13.tga", "Guild_Box_Over" )
g_pRadioButtonGuild:SetCheckedTex( "DLG_Common_New_Texture13.tga", "Guild_Box_Over" )


g_pRadioButtonGuild:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(123,1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonGuild:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(123,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonGuild:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(123,1)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(123+45,1+30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonGuild:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(123,0)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pRadioButtonGuild:SetGroupID( 1 )
g_pRadioButtonGuild:SetCustomMsgChecked( PARTYMSGER_UI_MSG["PUM_CHAT_MODE_GUILD"] )





g_pRadioButtonPersonal = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButtonPersonal )

g_pRadioButtonPersonal:SetFixOverByCheck( true )
g_pRadioButtonPersonal:SetShowOffBGByCheck( true )

g_pRadioButtonPersonal:SetName( "ButtonPersonal" )

g_pRadioButtonPersonal:SetNormalTex( "DLG_Common_New_Texture13.tga", "Secret_Talk_Normal" )
g_pRadioButtonPersonal:SetOverTex( "DLG_Common_New_Texture13.tga", "Secret_Talk_Over" )
g_pRadioButtonPersonal:SetCheckedTex( "DLG_Common_New_Texture13.tga", "Secret_Talk_Over" )


g_pRadioButtonPersonal:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(168,1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonPersonal:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(168,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonPersonal:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(168,1)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(168+45,1+30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonPersonal:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(168,0)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButtonPersonal:SetGroupID( 1 )
g_pRadioButtonPersonal:SetCustomMsgChecked( PARTYMSGER_UI_MSG["PUM_CHAT_MODE_PERSONAL"] )




---메가폰

g_pRadioButton_Mega_Phone = g_pUIDialog:CreateRadioButton()
g_pUIDialog:AddControl( g_pRadioButton_Mega_Phone )

g_pRadioButton_Mega_Phone:SetFixOverByCheck( true )
g_pRadioButton_Mega_Phone:SetShowOffBGByCheck( true )

g_pRadioButton_Mega_Phone:SetName( "Button_Mega_Phone" )

g_pRadioButton_Mega_Phone:SetNormalTex( "DLG_Common_New_Texture13.tga", "Mega_Phone_Normal" )
g_pRadioButton_Mega_Phone:SetOverTex( "DLG_Common_New_Texture13.tga", "Mega_Phone_Over" )
g_pRadioButton_Mega_Phone:SetCheckedTex( "DLG_Common_New_Texture13.tga", "Mega_Phone_Over" )


g_pRadioButton_Mega_Phone:SetBGPoint
{

	"LEFT_TOP		= D3DXVECTOR2(213,1)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Mega_Phone:SetBGMouseOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(213,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Mega_Phone:SetRBPoint
{

 	USE_TEXTURE_SIZE	= FALSE,

 	"LEFT_TOP		= D3DXVECTOR2(213,1)",
	"RIGHT_BOTTOM	= D3DXVECTOR2(213+45,1+30)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Mega_Phone:SetCheckPoint
{

 	"LEFT_TOP		= D3DXVECTOR2(213,0)",
 	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pRadioButton_Mega_Phone:SetGroupID( 1 )
g_pRadioButton_Mega_Phone:SetCustomMsgChecked( NASOD_SCOPE_UI_MSG["NSUM_CHAT_MODE_MEGAPHONE"] )



--------------------------------------------------------------------------------
g_pListBox = g_pUIDialog:CreateListBox()
g_pUIDialog:AddControl( g_pListBox )
g_pListBox:SetName( "ListBox_All" )
g_pListBox:SetOffsetMaximize( 0, 200 )
g_pListBox:SetIgnoreListClick( true )

g_pListBox:SetString	
{
	-- MSG 			= "NoName",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	"POS 			= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
}

g_pListBox:SetTextTex( "DLG_UI_Common_Texture10.tga", "Gray_BG_A" )
g_pListBox:SetButtonMouseOverTex( "DLG_UI_Common_Texture10.tga", "Gray_BG_B" )
--g_pListBox:SetTextTex( "DLG_Room_Button0.tga", "Invisible" )
g_pListBox:SetBoundingBoxTex( "DLG_Room_Button0.tga","Invisible" )
g_pListBox:SetScollBarUpButtonTex( "DLG_Common_New_Texture13.tga", "ChatButton_Up_Normal" )
g_pListBox:SetScollBarUpButtonDownTex( "DLG_Common_New_Texture13.tga", "ChatButton_Up_Over" )
g_pListBox:SetScollBarDownButtonTex( "DLG_Common_New_Texture13.tga", "ChatButton_Down_Normal" )
g_pListBox:SetScollBarDownButtonDownTex( "DLG_Common_New_Texture13.tga", "ChatButton_Down_Over" )
g_pListBox:SetScollBarThumbTex( "DLG_Room_Button0.tga", "Thumb_Tex" )
g_pListBox:SetScollBarTrackTex( "DLG_Room_Button0.tga", "Invisible" )


g_pScrollBar = g_pListBox:InitScrollBar()
g_pListBox:SetScrollBarPos( 2, 64 )
g_pListBox:SetScrollBarSize( 26, 60 )
g_pListBox:SetUpdateScrollBarOnUpdate( false )
--g_pListBox:SetScrollBarOnRight( false )


g_pScrollBar:SetEnableThumb( false )
g_pScrollBar:SetEnableTrack( false )


g_pListBox:SetPos( 37, 33 )
g_pListBox:SetSize( 380, 120 )
g_pListBox:SetUseItemDisappear( true )
g_pListBox:SetScrollToEndOnUpdateRects( true )



for i=1, 20 do
	g_pListBox:AddItem( "  " )
end


g_pListBox:SetCustomMsgSelection( NASOD_SCOPE_UI_MSG["NSUM_CHAT_SELECT_MESSAGE"] )
g_pListBox:SetCustomMsgSelectionByRButton( NASOD_SCOPE_UI_MSG["NSUM_CHAT_OPEN_MENU"] )
g_pListBox:SetCustomMsgItemDoubleClick( NASOD_SCOPE_UI_MSG["NSUM_MENU_WHISPER"] )

--------------------------------------------------------------------------------
g_pListBox = g_pUIDialog:CreateListBox()
g_pUIDialog:AddControl( g_pListBox )
g_pListBox:SetName( "ListBox_Party" )
g_pListBox:SetOffsetMaximize( 0, 200 )
g_pListBox:SetIgnoreListClick( true )

g_pListBox:SetString	
{
	-- MSG 			= "NoName",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	"POS 			= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	
}

g_pListBox:SetTextTex( "DLG_UI_Common_Texture10.tga", "Gray_BG_A" )
g_pListBox:SetButtonMouseOverTex( "DLG_UI_Common_Texture10.tga", "Gray_BG_B" )
--g_pListBox:SetTextTex( "DLG_Room_Button0.tga", "Invisible" )
g_pListBox:SetBoundingBoxTex( "DLG_Room_Button0.tga","Invisible" )
g_pListBox:SetScollBarUpButtonTex( "DLG_Common_New_Texture13.tga", "ChatButton_Up_Normal" )
g_pListBox:SetScollBarUpButtonDownTex( "DLG_Common_New_Texture13.tga", "ChatButton_Up_Over" )
g_pListBox:SetScollBarDownButtonTex( "DLG_Common_New_Texture13.tga", "ChatButton_Down_Normal" )
g_pListBox:SetScollBarDownButtonDownTex( "DLG_Common_New_Texture13.tga", "ChatButton_Down_Over" )
g_pListBox:SetScollBarThumbTex( "DLG_Room_Button0.tga", "Thumb_Tex" )
g_pListBox:SetScollBarTrackTex( "DLG_Room_Button0.tga", "Invisible" )


g_pScrollBar = g_pListBox:InitScrollBar()
g_pListBox:SetScrollBarPos( 2, 64 )
g_pListBox:SetScrollBarSize( 26, 60 )
g_pListBox:SetUpdateScrollBarOnUpdate( false )
--g_pListBox:SetScrollBarOnRight( false )

g_pScrollBar:SetEnableThumb( false )
g_pScrollBar:SetEnableTrack( false )

g_pListBox:SetPos( 37, 33 )
g_pListBox:SetSize( 380, 120 )
g_pListBox:SetUseItemDisappear( true )
g_pListBox:SetScrollToEndOnUpdateRects( true )


for i=1, 20 do
	g_pListBox:AddItem( "  " )
end

g_pListBox:SetCustomMsgSelection( NASOD_SCOPE_UI_MSG["NSUM_CHAT_SELECT_MESSAGE"] )
g_pListBox:SetCustomMsgSelectionByRButton( NASOD_SCOPE_UI_MSG["NSUM_CHAT_OPEN_MENU"] )
g_pListBox:SetCustomMsgItemDoubleClick( NASOD_SCOPE_UI_MSG["NSUM_MENU_WHISPER"] )


--------------------------------------------------------------------------------
g_pListBox = g_pUIDialog:CreateListBox()
g_pUIDialog:AddControl( g_pListBox )
g_pListBox:SetName( "ListBox_Guild" )
g_pListBox:SetOffsetMaximize( 0, 200 )
g_pListBox:SetIgnoreListClick( true )

g_pListBox:SetString	
{
	-- MSG 			= "NoName",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	"POS 			= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	
}

g_pListBox:SetTextTex( "DLG_UI_Common_Texture10.tga", "Gray_BG_A" )
g_pListBox:SetButtonMouseOverTex( "DLG_UI_Common_Texture10.tga", "Gray_BG_B" )
--g_pListBox:SetTextTex( "DLG_Room_Button0.tga", "Invisible" )
g_pListBox:SetBoundingBoxTex( "DLG_Room_Button0.tga","Invisible" )
g_pListBox:SetScollBarUpButtonTex( "DLG_Common_New_Texture13.tga", "ChatButton_Up_Normal" )
g_pListBox:SetScollBarUpButtonDownTex( "DLG_Common_New_Texture13.tga", "ChatButton_Up_Over" )
g_pListBox:SetScollBarDownButtonTex( "DLG_Common_New_Texture13.tga", "ChatButton_Down_Normal" )
g_pListBox:SetScollBarDownButtonDownTex( "DLG_Common_New_Texture13.tga", "ChatButton_Down_Over" )
g_pListBox:SetScollBarThumbTex( "DLG_Room_Button0.tga", "Thumb_Tex" )
g_pListBox:SetScollBarTrackTex( "DLG_Room_Button0.tga", "Invisible" )


g_pScrollBar = g_pListBox:InitScrollBar()
g_pListBox:SetScrollBarPos( 2, 64 )
g_pListBox:SetScrollBarSize( 26, 60 )
g_pListBox:SetUpdateScrollBarOnUpdate( false )
--g_pListBox:SetScrollBarOnRight( false )

g_pScrollBar:SetEnableThumb( false )
g_pScrollBar:SetEnableTrack( false )

g_pListBox:SetPos( 37, 33 )
g_pListBox:SetSize( 380, 120 )
g_pListBox:SetUseItemDisappear( true )
g_pListBox:SetScrollToEndOnUpdateRects( true )




for i=1, 20 do
	g_pListBox:AddItem( "  " )
end

g_pListBox:SetCustomMsgSelection( NASOD_SCOPE_UI_MSG["NSUM_CHAT_SELECT_MESSAGE"] )
g_pListBox:SetCustomMsgSelectionByRButton( NASOD_SCOPE_UI_MSG["NSUM_CHAT_OPEN_MENU"] )
g_pListBox:SetCustomMsgItemDoubleClick( NASOD_SCOPE_UI_MSG["NSUM_MENU_WHISPER"] )


--------------------------------------------------------------------------------
g_pListBox = g_pUIDialog:CreateListBox()
g_pUIDialog:AddControl( g_pListBox )
g_pListBox:SetName( "ListBox_Personal" )
g_pListBox:SetOffsetMaximize( 0, 200 )
g_pListBox:SetIgnoreListClick( true )

g_pListBox:SetString	
{
	-- MSG 			= "NoName",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	"POS 			= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	
}

g_pListBox:SetTextTex( "DLG_UI_Common_Texture10.tga", "Gray_BG_A" )
g_pListBox:SetButtonMouseOverTex( "DLG_UI_Common_Texture10.tga", "Gray_BG_B" )
--g_pListBox:SetTextTex( "DLG_Room_Button0.tga", "Invisible" )
g_pListBox:SetBoundingBoxTex( "DLG_Room_Button0.tga","Invisible" )
g_pListBox:SetScollBarUpButtonTex( "DLG_Common_New_Texture13.tga", "ChatButton_Up_Normal" )
g_pListBox:SetScollBarUpButtonDownTex( "DLG_Common_New_Texture13.tga", "ChatButton_Up_Over" )
g_pListBox:SetScollBarDownButtonTex( "DLG_Common_New_Texture13.tga", "ChatButton_Down_Normal" )
g_pListBox:SetScollBarDownButtonDownTex( "DLG_Common_New_Texture13.tga", "ChatButton_Down_Over" )
g_pListBox:SetScollBarThumbTex( "DLG_Room_Button0.tga", "Thumb_Tex" )
g_pListBox:SetScollBarTrackTex( "DLG_Room_Button0.tga", "Invisible" )


g_pScrollBar = g_pListBox:InitScrollBar()
g_pListBox:SetScrollBarPos( 2, 64 )
g_pListBox:SetScrollBarSize( 26, 60 )
g_pListBox:SetUpdateScrollBarOnUpdate( false )
--g_pListBox:SetScrollBarOnRight( false )

g_pScrollBar:SetEnableThumb( false )
g_pScrollBar:SetEnableTrack( false )

g_pListBox:SetPos( 37, 33 )
g_pListBox:SetSize( 380, 120 )
g_pListBox:SetUseItemDisappear( true )
g_pListBox:SetScrollToEndOnUpdateRects( true )

for i=1, 20 do
	g_pListBox:AddItem( "  " )
end

g_pListBox:SetCustomMsgSelection( NASOD_SCOPE_UI_MSG["NSUM_CHAT_SELECT_MESSAGE"] )
g_pListBox:SetCustomMsgSelectionByRButton( NASOD_SCOPE_UI_MSG["NSUM_CHAT_OPEN_MENU"] )
g_pListBox:SetCustomMsgItemDoubleClick( NASOD_SCOPE_UI_MSG["NSUM_MENU_WHISPER"] )




--------------------------------------------------------------------------------
g_pListBox = g_pUIDialog:CreateListBox()
g_pUIDialog:AddControl( g_pListBox )
g_pListBox:SetName( "ListBox_Megaphone" )
g_pListBox:SetOffsetMaximize( 0, 200 )
g_pListBox:SetIgnoreListClick( true )

g_pListBox:SetString	
{
	-- MSG 			= "NoName",
	FONT_INDEX		= XUF_DODUM_13_SEMIBOLD,
	"POS 			= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	"OUTLINE_COLOR	= D3DXCOLOR(0.0,0.0,0.0,1.0)",
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	
}

g_pListBox:SetTextTex( "DLG_UI_Common_Texture10.tga", "Gray_BG_A" )
g_pListBox:SetButtonMouseOverTex( "DLG_UI_Common_Texture10.tga", "Gray_BG_B" )
--g_pListBox:SetTextTex( "DLG_Room_Button0.tga", "Invisible" )
g_pListBox:SetBoundingBoxTex( "DLG_Room_Button0.tga","Invisible" )
g_pListBox:SetScollBarUpButtonTex( "DLG_Common_New_Texture13.tga", "ChatButton_Up_Normal" )
g_pListBox:SetScollBarUpButtonDownTex( "DLG_Common_New_Texture13.tga", "ChatButton_Up_Over" )
g_pListBox:SetScollBarDownButtonTex( "DLG_Common_New_Texture13.tga", "ChatButton_Down_Normal" )
g_pListBox:SetScollBarDownButtonDownTex( "DLG_Common_New_Texture13.tga", "ChatButton_Down_Over" )
g_pListBox:SetScollBarThumbTex( "DLG_Room_Button0.tga", "Thumb_Tex" )
g_pListBox:SetScollBarTrackTex( "DLG_Room_Button0.tga", "Invisible" )


g_pScrollBar = g_pListBox:InitScrollBar()
g_pListBox:SetScrollBarPos( 2, 64 )
g_pListBox:SetScrollBarSize( 26, 60 )
g_pListBox:SetUpdateScrollBarOnUpdate( false )
--g_pListBox:SetScrollBarOnRight( false )

g_pScrollBar:SetEnableThumb( false )
g_pScrollBar:SetEnableTrack( false )

g_pListBox:SetPos( 37, 33 )
g_pListBox:SetSize( 380, 120 )
g_pListBox:SetUseItemDisappear( true )
g_pListBox:SetScrollToEndOnUpdateRects( true )

for i=1, 20 do
	g_pListBox:AddItem( "  " )
end


g_pListBox:SetCustomMsgSelection( NASOD_SCOPE_UI_MSG["NSUM_CHAT_SELECT_MESSAGE"] )
g_pListBox:SetCustomMsgSelectionByRButton( NASOD_SCOPE_UI_MSG["NSUM_CHAT_OPEN_MENU"] )
g_pListBox:SetCustomMsgItemDoubleClick( NASOD_SCOPE_UI_MSG["NSUM_MENU_WHISPER"] )