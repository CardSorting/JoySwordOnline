-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_pStatic_CHAT_POPUP = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_CHAT_POPUP )
g_pUIDialog:SetModal( true )
g_pUIDialog:SetFront( true )
g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )
g_pStatic_CHAT_POPUP:SetName( "Chatbox_Popup" )



----------옵션창 배경
g_pPicture_BG = g_pUIDialog:CreatePicture()
g_pStatic_CHAT_POPUP:AddPicture( g_pPicture_BG )
g_pPicture_BG:SetShow(true)
g_pPicture_BG:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "CHAT_OPTION_BG" )
g_pPicture_BG:SetPoint
{
	"LEFT_TOP		= D3DXVECTOR2(0,0)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

--EXP획득 메세지
g_pStatic_MAP_NAME= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_MAP_NAME )
g_pStatic_MAP_NAME:SetName( "StaticEXP" )
g_pPicture_EXP = g_pUIDialog:CreatePicture()
g_pStatic_MAP_NAME:AddPicture( g_pPicture_EXP )
g_pPicture_EXP:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "EXP_MESSAGE" )
g_pPicture_EXP:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(14,9+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box_EXP = g_pUIDialog:CreatePicture()
g_pStatic_MAP_NAME:AddPicture( g_pPicture_box_EXP )
g_pPicture_box_EXP:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "CHAT_OPTION_BOX" )
g_pPicture_box_EXP:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(4,10+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK_EXP = g_pUIDialog:CreateCheckBox()
g_pCheckBox_CHECK_EXP:SetName( "FilterExp" )
g_pUIDialog:AddControl( g_pCheckBox_CHECK_EXP )
g_pCheckBox_CHECK_EXP:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBox_CHECK_EXP:SetCheckedTex( "DLG_UI_Common_Texture64_NEW.TGA", "CHAT_OPTION_V" )
g_pCheckBox_CHECK_EXP:SetBGPoint
{
     USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(4,10+3)",
 	"RIGHT_BOTTOM	= D3DXVECTOR2(4+80,10+10+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK_EXP:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(4,9+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK_EXP:SetCustomMsgChecked( PARTYMSGER_UI_MSG["PUM_OPTION_CHECKED_EXP"] ) 
g_pCheckBox_CHECK_EXP:SetCustomMsgUnChecked( PARTYMSGER_UI_MSG["PUM_OPTION_CHECKED_EXP"] )


--ED획득 메세지
g_pStatic_MAP_NAME= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_MAP_NAME )
g_pStatic_MAP_NAME:SetName( "StaticED" )
g_pPicture_ED = g_pUIDialog:CreatePicture()
g_pStatic_MAP_NAME:AddPicture( g_pPicture_ED )
g_pPicture_ED:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "ED_MESSAGE" )
g_pPicture_ED:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(14,9+15+3 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box_ED = g_pUIDialog:CreatePicture()
g_pStatic_MAP_NAME:AddPicture( g_pPicture_box_ED )
g_pPicture_box_ED:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "CHAT_OPTION_BOX" )
g_pPicture_box_ED:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(4,10+15+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK_ED = g_pUIDialog:CreateCheckBox()
g_pCheckBox_CHECK_ED:SetName( "FilterED" )
g_pUIDialog:AddControl( g_pCheckBox_CHECK_ED )
g_pCheckBox_CHECK_ED:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBox_CHECK_ED:SetCheckedTex( "DLG_UI_Common_Texture64_NEW.TGA", "CHAT_OPTION_V" )
g_pCheckBox_CHECK_ED:SetBGPoint
{
     USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(4,10+15+3)",
 	"RIGHT_BOTTOM	= D3DXVECTOR2(4+80,10+10+15+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK_ED:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(4,9+15+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK_ED:SetCustomMsgChecked( PARTYMSGER_UI_MSG["PUM_OPTION_CHECKED_ED"] ) 
g_pCheckBox_CHECK_ED:SetCustomMsgUnChecked( PARTYMSGER_UI_MSG["PUM_OPTION_CHECKED_ED"] )


---SYSTEM 메세지
g_pStatic_MAP_NAME= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_MAP_NAME )
g_pStatic_MAP_NAME:SetName( "StaticSystem" )
g_pPicture_SYSTEM = g_pUIDialog:CreatePicture()
g_pStatic_MAP_NAME:AddPicture( g_pPicture_SYSTEM )
g_pPicture_SYSTEM:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "SYSTEM_MESSAGE" )
g_pPicture_SYSTEM:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(14,9+15+15+3 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box_SYSTEM = g_pUIDialog:CreatePicture()
g_pStatic_MAP_NAME:AddPicture( g_pPicture_box_SYSTEM )
g_pPicture_box_SYSTEM:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "CHAT_OPTION_BOX" )
g_pPicture_box_SYSTEM:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(4,10+15+15+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK_SYSTEM = g_pUIDialog:CreateCheckBox()
g_pCheckBox_CHECK_SYSTEM:SetName( "FilterSystem" )
g_pUIDialog:AddControl( g_pCheckBox_CHECK_SYSTEM )
g_pCheckBox_CHECK_SYSTEM:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBox_CHECK_SYSTEM:SetCheckedTex( "DLG_UI_Common_Texture64_NEW.TGA", "CHAT_OPTION_V" )
g_pCheckBox_CHECK_SYSTEM:SetBGPoint
{
     USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(4,10+15+15+3)",
 	"RIGHT_BOTTOM	= D3DXVECTOR2(4+80,10+10+15+15+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK_SYSTEM:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(4,9+15+15+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK_SYSTEM:SetCustomMsgChecked( PARTYMSGER_UI_MSG["PUM_OPTION_CHECKED_SYSTEM"] ) 
g_pCheckBox_CHECK_SYSTEM:SetCustomMsgUnChecked( PARTYMSGER_UI_MSG["PUM_OPTION_CHECKED_SYSTEM"] )


---NORMAL 채팅 메세지
g_pStatic_MAP_NAME= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_MAP_NAME )
g_pStatic_MAP_NAME:SetName( "StaticNormal" )
g_pPicture_NORMAL = g_pUIDialog:CreatePicture()
g_pStatic_MAP_NAME:AddPicture( g_pPicture_NORMAL )
g_pPicture_NORMAL:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "NORMAL_MESSAGE" )
g_pPicture_NORMAL:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(14,9+45+3 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box_NORMAL = g_pUIDialog:CreatePicture()
g_pStatic_MAP_NAME:AddPicture( g_pPicture_box_NORMAL )
g_pPicture_box_NORMAL:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "CHAT_OPTION_BOX" )
g_pPicture_box_NORMAL:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(4,10+45+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK_NORMAL = g_pUIDialog:CreateCheckBox()
g_pCheckBox_CHECK_NORMAL:SetName( "FilterNomal" )
g_pUIDialog:AddControl( g_pCheckBox_CHECK_NORMAL )
g_pCheckBox_CHECK_NORMAL:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBox_CHECK_NORMAL:SetCheckedTex( "DLG_UI_Common_Texture64_NEW.TGA", "CHAT_OPTION_V" )
g_pCheckBox_CHECK_NORMAL:SetBGPoint
{
     USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(4,10+45+3)",
 	"RIGHT_BOTTOM	= D3DXVECTOR2(4+80,10+10+45+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK_NORMAL:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(4,9+45+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK_NORMAL:SetCustomMsgChecked( PARTYMSGER_UI_MSG["PUM_OPTION_CHECKED_NORMAL"] ) 
g_pCheckBox_CHECK_NORMAL:SetCustomMsgUnChecked( PARTYMSGER_UI_MSG["PUM_OPTION_CHECKED_NORMAL"] )


---PARTY 채팅 메세지
g_pStatic_MAP_NAME= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_MAP_NAME )
g_pStatic_MAP_NAME:SetName( "StaticParty" )
g_pPicture_PARTY = g_pUIDialog:CreatePicture()
g_pStatic_MAP_NAME:AddPicture( g_pPicture_PARTY )
g_pPicture_PARTY:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "PARTY_MESSAGE" )
g_pPicture_PARTY:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(14,9+45+15+3 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box_PARTY = g_pUIDialog:CreatePicture()
g_pStatic_MAP_NAME:AddPicture( g_pPicture_box_PARTY )
g_pPicture_box_PARTY:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "CHAT_OPTION_BOX" )
g_pPicture_box_PARTY:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(4,10+45+15+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK_PARTY = g_pUIDialog:CreateCheckBox()
g_pCheckBox_CHECK_PARTY:SetName( "FilterParty" )
g_pUIDialog:AddControl( g_pCheckBox_CHECK_PARTY )
g_pCheckBox_CHECK_PARTY:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBox_CHECK_PARTY:SetCheckedTex( "DLG_UI_Common_Texture64_NEW.TGA", "CHAT_OPTION_V" )
g_pCheckBox_CHECK_PARTY:SetBGPoint
{
     USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(4,10+45+15+3)",
 	"RIGHT_BOTTOM	= D3DXVECTOR2(4+80,10+10+45+15+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK_PARTY:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(4,9+45+15+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK_PARTY:SetCustomMsgChecked( PARTYMSGER_UI_MSG["PUM_OPTION_CHECKED_PARTY"] ) 
g_pCheckBox_CHECK_PARTY:SetCustomMsgUnChecked( PARTYMSGER_UI_MSG["PUM_OPTION_CHECKED_PARTY"] )

---GUILD 채팅 메세지
g_pStatic_MAP_NAME= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_MAP_NAME )
g_pStatic_MAP_NAME:SetName( "StaticGuild" )
g_pPicture_GUILD = g_pUIDialog:CreatePicture()
g_pStatic_MAP_NAME:AddPicture( g_pPicture_GUILD )
g_pPicture_GUILD:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "GUILD_MESSAGE" )
g_pPicture_GUILD:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(14,9+45+30+3 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box_GUILD = g_pUIDialog:CreatePicture()
g_pStatic_MAP_NAME:AddPicture( g_pPicture_box_GUILD )
g_pPicture_box_GUILD:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "CHAT_OPTION_BOX" )
g_pPicture_box_GUILD:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(4,10+45+30+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK_GUILD = g_pUIDialog:CreateCheckBox()
g_pCheckBox_CHECK_GUILD:SetName( "FilterGuild" )
g_pUIDialog:AddControl( g_pCheckBox_CHECK_GUILD )
g_pCheckBox_CHECK_GUILD:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBox_CHECK_GUILD:SetCheckedTex( "DLG_UI_Common_Texture64_NEW.TGA", "CHAT_OPTION_V" )
g_pCheckBox_CHECK_GUILD:SetBGPoint
{
     USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(4,10+45+30+3)",
 	"RIGHT_BOTTOM	= D3DXVECTOR2(4+80,10+10+45+30+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK_GUILD:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(4,9+45+30+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK_GUILD:SetCustomMsgChecked( PARTYMSGER_UI_MSG["PUM_OPTION_CHECKED_GUILD"] ) 
g_pCheckBox_CHECK_GUILD:SetCustomMsgUnChecked( PARTYMSGER_UI_MSG["PUM_OPTION_CHECKED_GUILD"] )

---귓속말 채팅 메세지
g_pStatic_MAP_NAME= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_MAP_NAME )
g_pStatic_MAP_NAME:SetName( "StaticWhisper" )
g_pPicture_WHISPER = g_pUIDialog:CreatePicture()
g_pStatic_MAP_NAME:AddPicture( g_pPicture_WHISPER )
g_pPicture_WHISPER:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "SECRET_MESSAGE" )
g_pPicture_WHISPER:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(14,9+90+3 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_Box_Whisper = g_pUIDialog:CreatePicture()
g_pStatic_MAP_NAME:AddPicture( g_pPicture_Box_Whisper )
g_pPicture_Box_Whisper:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "CHAT_OPTION_BOX" )
g_pPicture_Box_Whisper:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(4,10+90+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK_WHISPER = g_pUIDialog:CreateCheckBox()
g_pCheckBox_CHECK_WHISPER:SetName( "FilterWhisper" )
g_pUIDialog:AddControl( g_pCheckBox_CHECK_WHISPER )
g_pCheckBox_CHECK_WHISPER:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBox_CHECK_WHISPER:SetCheckedTex( "DLG_UI_Common_Texture64_NEW.TGA", "CHAT_OPTION_V" )
g_pCheckBox_CHECK_WHISPER:SetBGPoint
{
     USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(4,10+90+3)",
 	"RIGHT_BOTTOM	= D3DXVECTOR2(4+80,10+10+90+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK_WHISPER:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(4,9+90+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK_WHISPER:SetCustomMsgChecked( PARTYMSGER_UI_MSG["PUM_OPTION_CHECKED_WHISPER"] ) 
g_pCheckBox_CHECK_WHISPER:SetCustomMsgUnChecked( PARTYMSGER_UI_MSG["PUM_OPTION_CHECKED_WHISPER"] ) 

--[[ #define ADDED_RELATIONSHIP_SYSTEM
---GUILD 채팅 메세지
g_pStatic_RelationCouple= g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_RelationCouple )
g_pStatic_RelationCouple:SetName( "StaticRelationCouple" )
g_pPicture_RelationCouple = g_pUIDialog:CreatePicture()
g_pStatic_RelationCouple:AddPicture( g_pPicture_RelationCouple )
g_pPicture_RelationCouple:SetTex( "DLG_UI_Common_Texture_MarriageSystem_01.TGA", "Bg_ChatMessage_Couple" )
g_pPicture_RelationCouple:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(14,9+90+15+3 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

---GUILD 채팅 메세지
g_pStatic_RelationMarried = g_pUIDialog:CreateStatic()
g_pUIDialog:AddControl( g_pStatic_RelationMarried )
g_pStatic_RelationMarried:SetName( "StaticRelationMarried" )
g_pPicture_RelationMarried = g_pUIDialog:CreatePicture()
g_pStatic_RelationMarried:AddPicture( g_pPicture_RelationMarried )
g_pPicture_RelationMarried:SetTex( "DLG_UI_Common_Texture_MarriageSystem_01.TGA", "Bg_ChatMessage_Marriage" )
g_pPicture_RelationMarried:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(14,9+90+15+3 )",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pPicture_box_RelationCouple = g_pUIDialog:CreatePicture()
g_pStatic_RelationCouple:AddPicture( g_pPicture_box_RelationCouple )
g_pPicture_box_RelationCouple:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "CHAT_OPTION_BOX" )
g_pPicture_box_RelationCouple:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(4,10+90+15+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pPicture_box_RelationMarried = g_pUIDialog:CreatePicture()
g_pStatic_RelationMarried:AddPicture( g_pPicture_box_RelationMarried )
g_pPicture_box_RelationMarried:SetTex( "DLG_UI_Common_Texture64_NEW.TGA", "CHAT_OPTION_BOX" )
g_pPicture_box_RelationMarried:SetPoint
{
   
	"LEFT_TOP		= D3DXVECTOR2(4,10+90+15+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK_RELATION = g_pUIDialog:CreateCheckBox()
g_pCheckBox_CHECK_RELATION:SetName( "FilterRelation" )
g_pUIDialog:AddControl( g_pCheckBox_CHECK_RELATION )
g_pCheckBox_CHECK_RELATION:SetNormalTex( "DLG_Common_New_Texture03.TGA", "invisible" )
g_pCheckBox_CHECK_RELATION:SetCheckedTex( "DLG_UI_Common_Texture64_NEW.TGA", "CHAT_OPTION_V" )
g_pCheckBox_CHECK_RELATION:SetBGPoint
{
     USE_TEXTURE_SIZE	= FALSE,
	"LEFT_TOP		= D3DXVECTOR2(4,10+90+15+3)",
 	"RIGHT_BOTTOM	= D3DXVECTOR2(4+80,10+10+90+15+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK_RELATION:SetCheckPoint
{    

 	"LEFT_TOP		= D3DXVECTOR2(4,9+90+15+3)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pCheckBox_CHECK_RELATION:SetCustomMsgChecked( PARTYMSGER_UI_MSG["PUM_OPTION_CHECKED_RELATION"] ) 
g_pCheckBox_CHECK_RELATION:SetCustomMsgUnChecked( PARTYMSGER_UI_MSG["PUM_OPTION_CHECKED_RELATION"] )
--]]

--- X 버튼

g_pButton_X = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButton_X )
g_pButton_X:SetName( "X" )
g_pButton_X:SetNormalTex( "DLG_UI_Common_Texture64_NEW.TGA", "CHAT_OPTION_X" )

g_pButton_X:SetOverTex( "DLG_UI_Common_Texture64_NEW.TGA", "CHAT_OPTION_X" )

g_pButton_X:SetDownTex( "DLG_UI_Common_Texture64_NEW.TGA", "CHAT_OPTION_X" )

g_pButton_X:SetNormalPoint
{
	
    "LEFT_TOP		= D3DXVECTOR2(79,4)",
	"RIGHT_BOTTOM   = D3DXVECTOR2(1015,567+21)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_X:SetOverPoint
{
    ADD_SIZE_X=1,
	ADD_SIZE_Y=1,
	"LEFT_TOP		= D3DXVECTOR2(79-1,4-1)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_X:SetDownPoint
{
     ADD_SIZE_X=-1,
	 ADD_SIZE_Y=-1,
 	"LEFT_TOP		= D3DXVECTOR2(79,4)",
    "COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButton_X:SetCustomMsgMouseUp( PARTYMSGER_UI_MSG["PUM_POPUP_OPTION_MENU_CLOSE"] )