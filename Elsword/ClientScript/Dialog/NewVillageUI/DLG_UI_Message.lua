-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.




g_pUIDialog:SetName( "DLG_UI_MESSAGE" )
g_pUIDialog:SetPos( 0, 0)
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
--g_pUIDialog:SetCloseCustomUIEventID( NPC_MESSAGE_UI_MSG["NMUM_CLOSE"] )








g_pStatic_message = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_message )
g_pStatic_message:SetName( "message" )


g_pUIDialog:AddDummyInt( 600 ) -- 퀘스트 설명이 나오는 영역의 width
g_pUIDialog:AddDummyInt( 200 ) -- 퀘스트 설명이 나오는 영역의 height

----------BG
g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_message:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture01.TGA", "message_bg1_left" )

g_pPicture_bg1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(2,489)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_message:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture01.TGA", "message_bg1_middle" )

g_pPicture_bg1:SetPoint
{
     ADD_SIZE_X = 671,
	"LEFT_TOP		= D3DXVECTOR2(15,489)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_bg1 = g_pUIDialog:CreatePicture()
g_pStatic_message:AddPicture( g_pPicture_bg1 )

g_pPicture_bg1:SetTex( "DLG_UI_Common_Texture01.TGA", "message_bg1_right" )

g_pPicture_bg1:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(687,489)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


----------title


g_pStatic_ann = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_ann )
g_pStatic_ann:SetName( "ShopName1" )

g_pStatic_ann:AddString
{
	MSG 			= STR_ID_1301,
	FONT_INDEX		=  XUF_BLAM_SPEECH,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(20,504)",
	"COLOR			= D3DXCOLOR(0.3,0.3,0.3,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}






g_pStatic_ann = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_ann )
g_pStatic_ann:SetName( "ShopName2" )

g_pStatic_ann:AddString
{
	MSG 			= STR_ID_1301,
	FONT_INDEX		=  XUF_BLAM_SPEECH,
	FONT_STYLE      = FONT_STYLE["FS_SHELL"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(19,502)",
	"COLOR			= D3DXCOLOR(0.0,0.9,1.0,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(0.0,0.0,0.0,1.0)",
}

--------------------bg2


g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStatic_message:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture01.TGA", "message_bg2_left" )

g_pPicture_bg2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(17,539)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStatic_message:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture01.TGA", "message_bg2_middle" )

g_pPicture_bg2:SetPoint
{
      ADD_SIZE_X = 646,
	"LEFT_TOP		= D3DXVECTOR2(27,539)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_bg2 = g_pUIDialog:CreatePicture()
g_pStatic_message:AddPicture( g_pPicture_bg2 )

g_pPicture_bg2:SetTex( "DLG_UI_Common_Texture01.TGA", "message_bg2_right" )

g_pPicture_bg2:SetPoint
{

	"LEFT_TOP		= D3DXVECTOR2(674,539)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

----------대리상인
-----------대리판매

g_pButton_agent = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_agent )
g_pButton_agent:SetName( "agent" )
g_pButton_agent:SetNormalTex( "DLG_UI_BUTTON12.tga", "agent_NORMAL" )

g_pButton_agent:SetOverTex( "DLG_UI_BUTTON12.tga", "agent_OVER" )

g_pButton_agent:SetDownTex( "DLG_UI_BUTTON12.tga", "agent_OVER" )

g_pButton_agent:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(30,660)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_agent:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(26,656)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_agent:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(26+1,656+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_agent:SetCustomMsgMouseUp( NPC_MESSAGE_UI_MSG["NMUM_AGENCY_TRADER_REGISTER"] )

-----------물품받기

g_pButton_solditem = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_solditem )
g_pButton_solditem:SetName( "solditem" )
g_pButton_solditem:SetNormalTex( "DLG_UI_BUTTON12.tga", "sold_item_NORMAL" )

g_pButton_solditem:SetOverTex( "DLG_UI_BUTTON12.tga", "sold_item_OVER" )

g_pButton_solditem:SetDownTex( "DLG_UI_BUTTON12.tga", "sold_item_OVER" )

g_pButton_solditem:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(30,660)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_solditem:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(26,656)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_solditem:SetDownPoint
{
	ADD_SIZE_X = -2,
    ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(26+1,656+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_solditem:SetCustomMsgMouseUp( NPC_MESSAGE_UI_MSG["NMUM_AGENCY_TRADER_RECEIVE"] )


------------------퀘스트관련때에만 생기는 버튼


g_pButton_Invisible = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Invisible )
g_pButton_Invisible:SetName( "Quest_Next" )
g_pButton_Invisible:SetNormalTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Invisible:SetOverTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Invisible:SetDownTex( "DLG_Common_New_Texture03.tga", "invisible" )

g_pButton_Invisible:SetNormalPoint
{

    ADD_SIZE_X = 667,
	ADD_SIZE_Y = 160,
 	"LEFT_TOP		= D3DXVECTOR2(17,539)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Invisible:SetOverPoint
{

    ADD_SIZE_X = 667,
	ADD_SIZE_Y = 160,
	"LEFT_TOP		= D3DXVECTOR2(17,539)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Invisible:SetDownPoint
{
    ADD_SIZE_X = 667,
	ADD_SIZE_Y = 160,
 	"LEFT_TOP		= D3DXVECTOR2(17,539)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButton_Invisible:SetCustomMsgMouseUp( NPC_MESSAGE_UI_MSG["NMUM_PASS"] )














-----------------bar

g_pPicture_line = g_pUIDialog:CreatePicture()
g_pStatic_message:AddPicture( g_pPicture_line )

g_pPicture_line:SetTex( "DLG_UI_Common_Texture01.TGA", "bar1" )

g_pPicture_line:SetPoint
{
      ADD_SIZE_X = 676,
	"LEFT_TOP		= D3DXVECTOR2(12,533)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



-----------back  버튼

g_pButton_back = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_back )
g_pButton_back:SetName( "back" )
g_pButton_back:SetNormalTex( "DLG_UI_BUTTON01.tga", "back_NORMAL" )

g_pButton_back:SetOverTex( "DLG_UI_BUTTON01.tga", "back_OVER" )

g_pButton_back:SetDownTex( "DLG_UI_BUTTON01.tga", "back_OVER" )

g_pButton_back:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(633,501)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_back:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(629,497)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_back:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(629+1,497+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}




-------------EXTI

g_pButtonX = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX )
g_pButtonX:SetName( "Cashshop_BuyWindow_Exit" )
g_pButtonX:SetNormalTex( "DLG_UI_BUTTON01.tga", "EXIT_NORMAL" )

g_pButtonX:SetOverTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetDownTex( "DLG_UI_BUTTON01.tga", "EXIT_OVER" )

g_pButtonX:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(660,501)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(656,497)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(656+1,497+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX:SetCustomMsgMouseUp( NPC_MESSAGE_UI_MSG["NMUM_CLOSE"] )



------------강화

g_pButton_Upgrade = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Upgrade )
g_pButton_Upgrade:SetName( "Upgrade" )
g_pButton_Upgrade:SetNormalTex( "DLG_UI_BUTTON11.tga", "Upgrade_NORMAL" )

g_pButton_Upgrade:SetOverTex( "DLG_UI_BUTTON11.tga", "Upgrade_OVER" )

g_pButton_Upgrade:SetDownTex( "DLG_UI_BUTTON11.tga", "Upgrade_OVER" )

g_pButton_Upgrade:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(30,660)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Upgrade:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(27,657)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Upgrade:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(27+1,657+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Upgrade:SetCustomMsgMouseUp( NPC_MESSAGE_UI_MSG["NMUM_ENCHANT"] )



------------속성

g_pButton_Attribute = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Attribute )
g_pButton_Attribute:SetName( "Attribute" )
g_pButton_Attribute:SetNormalTex( "DLG_UI_BUTTON11.tga", "Attribute_NORMAL" )

g_pButton_Attribute:SetOverTex( "DLG_UI_BUTTON11.tga", "Attribute_OVER" )

g_pButton_Attribute:SetDownTex( "DLG_UI_BUTTON11.tga", "Attribute_OVER" )

g_pButton_Attribute:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(30,660)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Attribute:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(27,657)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Attribute:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(27+1,657+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Attribute:SetCustomMsgMouseUp( NPC_MESSAGE_UI_MSG["NMUM_ATTRIBUTE"] )

--------------퀘스트


g_pButton_qust = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_qust )
g_pButton_qust:SetName( "quest" )
g_pButton_qust:SetNormalTex( "DLG_UI_BUTTON04.tga", "qust_NORMAL" )

g_pButton_qust:SetOverTex( "DLG_UI_BUTTON04.tga", "qust_OVER" )

g_pButton_qust:SetDownTex( "DLG_UI_BUTTON04.tga", "qust_OVER" )

g_pButton_qust:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(30,660)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_qust:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(26,656)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_qust:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(26+1,656+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_qust:SetCustomMsgMouseUp( NPC_MESSAGE_UI_MSG["NMUM_QUEST"] )

-------------대전


g_pButton_pvp = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_pvp )
g_pButton_pvp:SetName( "pvp" )
g_pButton_pvp:SetNormalTex( "DLG_UI_BUTTON04.tga", "pvp_NORMAL" )

g_pButton_pvp:SetOverTex( "DLG_UI_BUTTON04.tga", "pvp_OVER" )

g_pButton_pvp:SetDownTex( "DLG_UI_BUTTON04.tga", "pvp_OVER" )

g_pButton_pvp:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(30,660)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_pvp:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(26,656)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_pvp:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(26+1,656+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_pvp:SetCustomMsgMouseUp( NPC_MESSAGE_UI_MSG["NMUM_PVP"] )

-----------상점

g_pButton_shop = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_shop )
g_pButton_shop:SetName( "shop" )
g_pButton_shop:SetNormalTex( "DLG_UI_BUTTON04.tga", "shop_NORMAL" )

g_pButton_shop:SetOverTex( "DLG_UI_BUTTON04.tga", "shop_OVER" )

g_pButton_shop:SetDownTex( "DLG_UI_BUTTON04.tga", "shop_OVER" )

g_pButton_shop:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(30,660)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_shop:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(26,656)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_shop:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(26+1,656+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_shop:SetCustomMsgMouseUp( NPC_MESSAGE_UI_MSG["NMUM_SHOP"] )

------- 자유훈련



g_pButton_free_training = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_free_training )
g_pButton_free_training:SetName( "free_training" )
g_pButton_free_training:SetNormalTex( "DLG_UI_BUTTON05.tga", "free_training_NORMAL" )

g_pButton_free_training:SetOverTex( "DLG_UI_BUTTON05.tga", "free_training_OVER" )

g_pButton_free_training:SetDownTex( "DLG_UI_BUTTON05.tga", "free_training_OVER" )

g_pButton_free_training:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(30,660)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_free_training:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(27,657)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_free_training:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(27+1,657+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_free_training:SetCustomMsgMouseUp( NPC_MESSAGE_UI_MSG["NMUM_FREETRAIN"] )


----------------- 훈련

g_pButton_training = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_training )
g_pButton_training:SetName( "training" )
g_pButton_training:SetNormalTex( "DLG_UI_BUTTON05.tga", "training_NORMAL" )

g_pButton_training:SetOverTex( "DLG_UI_BUTTON05.tga", "training_OVER" )

g_pButton_training:SetDownTex( "DLG_UI_BUTTON05.tga", "training_OVER" )

g_pButton_training:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(30,660)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_training:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(27,657)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_training:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(27+1,657+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_training:SetCustomMsgMouseUp( NPC_MESSAGE_UI_MSG["NMUM_TRAINING"] )


-------------제조


g_pButton_making = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_making )
g_pButton_making:SetName( "making" )
g_pButton_making:SetNormalTex( "DLG_UI_BUTTON05.tga", "making_NORMAL" )

g_pButton_making:SetOverTex( "DLG_UI_BUTTON05.tga", "making_OVER" )

g_pButton_making:SetDownTex( "DLG_UI_BUTTON05.tga", "making_OVER" )

g_pButton_making:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(30,660)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_making:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(27,657)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_making:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(27+1,657+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_making:SetCustomMsgMouseUp( NPC_MESSAGE_UI_MSG["NMUM_MAKE"] )


--[[
-------------귀환등록


g_pButtonReturn = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonReturn )
g_pButtonReturn:SetName( "Return_Entry" )
g_pButtonReturn:SetNormalTex( "DLG_UI_BUTTON11.tga", "Return_Entry_NORMAL" )

g_pButtonReturn:SetOverTex( "DLG_UI_BUTTON11.tga", "Return_Entry_OVER" )

g_pButtonReturn:SetDownTex( "DLG_UI_BUTTON11.tga", "Return_Entry_OVER" )

g_pButtonReturn:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(30,660)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonReturn:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(26,656)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonReturn:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(26+1,656+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonReturn:SetCustomMsgMouseUp( NPC_MESSAGE_UI_MSG["NMUM_RETURN"] )



-------------------   귀환등록 클릭시 나타나는 버튼들..........


----------------------( 네, 약속함니다.)
g_pButtonPromise = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonPromise )
g_pButtonPromise:SetName( "Promise" )
g_pButtonPromise:SetNormalTex( "DLG_UI_BUTTON11.tga", "Yes_Promise_NORMAL" )

g_pButtonPromise:SetOverTex( "DLG_UI_BUTTON11.tga", "Yes_Promise_OVER" )

g_pButtonPromise:SetDownTex( "DLG_UI_BUTTON11.tga", "Yes_Promise_OVER" )

g_pButtonPromise:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(402,660)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPromise:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(398,656)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPromise:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(398+1,656+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonPromise:SetCustomMsgMouseUp( NPC_MESSAGE_UI_MSG["NMUM_PROMISE"] )




----------------------( 아니오, 바쁨니다.)
g_pButtonBusy = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonBusy )
g_pButtonBusy:SetName( "Busy" )
g_pButtonBusy:SetNormalTex( "DLG_UI_BUTTON11.tga", "No_Busy_NORMAL" )

g_pButtonBusy:SetOverTex( "DLG_UI_BUTTON11.tga", "No_Busy_OVER" )

g_pButtonBusy:SetDownTex( "DLG_UI_BUTTON11.tga", "No_Busy_OVER" )

g_pButtonBusy:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(542,660)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBusy:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(538,656)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBusy:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(538+1,656+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonBusy:SetCustomMsgMouseUp( NPC_MESSAGE_UI_MSG["NMUM_BUSY"] )

--]]
------------나가기


g_pButton_out = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_out )
g_pButton_out:SetName( "out" )
g_pButton_out:SetNormalTex( "DLG_UI_BUTTON05.tga", "out_NORMAL" )

g_pButton_out:SetOverTex( "DLG_UI_BUTTON05.tga", "out_OVER" )

g_pButton_out:SetDownTex( "DLG_UI_BUTTON05.tga", "out_OVER" )

g_pButton_out:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(30,660)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_out:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(27,657)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_out:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(27+1,657+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_out:SetCustomMsgMouseUp( NPC_MESSAGE_UI_MSG["NMUM_CLOSE"] )

----------넘기기

g_pButton_pass = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_pass )
g_pButton_pass:SetName( "pass" )
g_pButton_pass:SetNormalTex( "DLG_UI_BUTTON01.tga", "pass_NORMAL" )

g_pButton_pass:SetOverTex( "DLG_UI_BUTTON01.tga", "pass_OVER" )

g_pButton_pass:SetDownTex( "DLG_UI_BUTTON01.tga", "pass_OVER" )

g_pButton_pass:SetNormalPoint
{
    "LEFT_TOP		= D3DXVECTOR2(657,673)", -- 635 (밑에 버튼이 있을경우)
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_pass:SetOverPoint
{
	"LEFT_TOP		= D3DXVECTOR2(657-3,673-4)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_pass:SetDownPoint
{
     ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(657-2,673-3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_pass:SetCustomMsgMouseUp( NPC_MESSAGE_UI_MSG["NMUM_PASS"] )


------------수락


g_pButton_Agree = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Agree )
g_pButton_Agree:SetName( "Agree" )
g_pButton_Agree:SetNormalTex( "DLG_UI_BUTTON10.tga", "Agree_NORMAL" )

g_pButton_Agree:SetOverTex( "DLG_UI_BUTTON10.tga", "Agree_OVER" )

g_pButton_Agree:SetDownTex( "DLG_UI_BUTTON10.tga", "Agree_OVER" )

g_pButton_Agree:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(30,660)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Agree:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(27,657)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Agree:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(27+1,657+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Agree:SetCustomMsgMouseUp( NPC_MESSAGE_UI_MSG["NMUM_AGREE"] )

------------NEXT


g_pButton_Next = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Next )
g_pButton_Next:SetName( "Next" )
g_pButton_Next:SetNormalTex( "DLG_UI_BUTTON08.tga", "Next_NORMAL" )

g_pButton_Next:SetOverTex( "DLG_UI_BUTTON08.tga", "Next_OVER" )

g_pButton_Next:SetDownTex( "DLG_UI_BUTTON08.tga", "Next_OVER" )

g_pButton_Next:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(30,660)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Next:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(27,657)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Next:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(27+1,657+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}



------------완료 (초심자 가이드용)

g_pButton_Complete = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Complete )
g_pButton_Complete:SetName( "Complete" )
g_pButton_Complete:SetNormalTex( "DLG_UI_BUTTON10.tga", "Complete_NORMAL" )

g_pButton_Complete:SetOverTex( "DLG_UI_BUTTON10.tga", "Complete_OVER" )

g_pButton_Complete:SetDownTex( "DLG_UI_BUTTON10.tga", "Complete_OVER" )

g_pButton_Complete:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(30,660)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Complete:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(27,657)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Complete:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(27+1,657+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Complete:SetCustomMsgMouseUp( NPC_MESSAGE_UI_MSG["NMUM_COMPLETE"] )




-- 길드 광고 버튼
g_pButton_Guild = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Guild )
g_pButton_Guild:SetName( "Guild" )

g_pButton_Guild:SetNormalTex( "DLG_UI_Button14.tga", "Guild_Normal" )
g_pButton_Guild:SetOverTex( "DLG_UI_Button14.tga", "Guild_Over" )
g_pButton_Guild:SetDownTex( "DLG_UI_Button14.tga", "Guild_Over" )

g_pButton_Guild:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(30,660)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Guild:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(27,657)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Guild:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(27+1,657+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Guild:SetCustomMsgMouseUp( NPC_MESSAGE_UI_MSG["NMUM_GUILD"] )
--g_pButton_Guild:SetGuideDesc( STR_ID_3723 )



-- 랭킹 버튼
g_pButton_Ranking = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Ranking )
g_pButton_Ranking:SetName( "Ranking" )

g_pButton_Ranking:SetNormalTex( "DLG_UI_Button11.tga", "btn_rank_normal" )
g_pButton_Ranking:SetOverTex( "DLG_UI_Button11.tga", "btn_rank_over" )
g_pButton_Ranking:SetDownTex( "DLG_UI_Button11.tga", "btn_rank_over" )

g_pButton_Ranking:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(30,660)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Ranking:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(27-1,657-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Ranking:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(27+1-1,657+1-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Ranking:SetCustomMsgMouseUp( NPC_MESSAGE_UI_MSG["NMUM_RANKING"] )
--g_pButton_Ranking:SetGuideDesc( STR_ID_3723 )



-- 교환 버튼
g_pButton_Exchange = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_Exchange )
g_pButton_Exchange:SetName( "Exchange" )

g_pButton_Exchange:SetNormalTex( "DLG_UI_Button11.tga", "btn_change_normal" )
g_pButton_Exchange:SetOverTex( "DLG_UI_Button11.tga", "btn_change_over" )
g_pButton_Exchange:SetDownTex( "DLG_UI_Button11.tga", "btn_change_over" )

g_pButton_Exchange:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(30,660)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Exchange:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(27,657)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Exchange:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(27+1,657+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_Exchange:SetCustomMsgMouseUp( NPC_MESSAGE_UI_MSG["NMUM_EXCHANGE"] )
--g_pButton_Exchange:SetGuideDesc( STR_ID_3723 ) -- fix!!

-- 은행 버튼
g_pButton_PrivateBank = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_PrivateBank )
g_pButton_PrivateBank:SetName( "PrivateBank" )

g_pButton_PrivateBank:SetNormalTex( "DLG_UI_BUTTON12.tga", "Npc_bank_Normal" )
g_pButton_PrivateBank:SetOverTex( "DLG_UI_BUTTON12.tga", "Npc_bank_Over" )
g_pButton_PrivateBank:SetDownTex( "DLG_UI_BUTTON12.tga", "Npc_bank_Over" )

g_pButton_PrivateBank:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(30,660)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_PrivateBank:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(27-2,657-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_PrivateBank:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(27+1-2,657+1-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_PrivateBank:SetCustomMsgMouseUp( NPC_MESSAGE_UI_MSG["NMUN_PRIVATE_BANK"] )
--g_pButton_PrivateBank:SetGuideDesc( STR_ID_3723 ) -- fix!!

--[[
-- 웹 포인트 이벤트 버튼
g_pButton_WebEvent = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_WebEvent )
g_pButton_WebEvent:SetName( "WebEvent" )

g_pButton_WebEvent:SetNormalTex( "DLG_UI_Button14.tga", "Check_Normal" )
g_pButton_WebEvent:SetOverTex( "DLG_UI_Button14.tga", "Check_Over" )
g_pButton_WebEvent:SetDownTex( "DLG_UI_Button14.tga", "Check_Over" )

g_pButton_WebEvent:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(30,660)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_WebEvent:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(27,657)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_WebEvent:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(27+1,657+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_WebEvent:SetCustomMsgMouseUp( NPC_MESSAGE_UI_MSG["NMUM_WEB_EVENT"] )
--g_pButton_WebEvent:SetGuideDesc( STR_ID_3723 )
--]]


-- 개인 상점 검색 시스템
g_pButton_PersonalShop = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_PersonalShop )
g_pButton_PersonalShop:SetName( "PersonalShop" )

g_pButton_PersonalShop:SetNormalTex( "DLG_UI_Button12.tga", "Search_Normal" )
g_pButton_PersonalShop:SetOverTex( "DLG_UI_Button12.tga", "Search_Over" )
g_pButton_PersonalShop:SetDownTex( "DLG_UI_Button12.tga", "Search_Over" )

g_pButton_PersonalShop:SetNormalPoint
{

    "LEFT_TOP		= D3DXVECTOR2(30,660)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_PersonalShop:SetOverPoint
{

	"LEFT_TOP		= D3DXVECTOR2(27,657)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_PersonalShop:SetDownPoint
{
      ADD_SIZE_X = -2,
     ADD_SIZE_Y = -2,
 	"LEFT_TOP		= D3DXVECTOR2(27+1,657+1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_PersonalShop:SetCustomMsgMouseUp( NPC_MESSAGE_UI_MSG["NMUM_PERSONAL_SHOP"] )
--g_pButton_PersonalShop:SetGuideDesc( STR_ID_3723 )




------메시지


g_pStatic_message = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_message )
g_pStatic_message:SetName( "npcMessage" )

g_pStatic_message:AddString
{
	-- MSG 			= "",
	FONT_INDEX		=  XUF_BLAM_TALK,
	--FONT_STYLE      = FONT_STYLE["2002L_KOG"],
	SORT_FLAG		= DRAW_TEXT["DT_LEFT"],
	"POS 			= D3DXVECTOR2(26,548)",
	"COLOR			= D3DXCOLOR(0.2,0.2,0.2,1.0)",
	"OUTLINE_COLOR		= D3DXCOLOR(1.0,1.0,1.0,1.0)",
}






















