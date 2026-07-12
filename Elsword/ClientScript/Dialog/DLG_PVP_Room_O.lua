-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

g_AddY = 40




-------------------(O버튼)

g_pButtonO_1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonO_1 )
g_pButtonO_1:SetName( "PVP_Room_O_1" )
g_pButtonO_1:SetNormalTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Wait" )

g_pButtonO_1:SetOverTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Wait" )


g_pButtonO_1:SetDownTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Wait" )

PVPRoomOXDownAnim( g_pButtonO_1 )

g_pButtonO_1:SetNormalPoint
{

	  ADD_SIZE_X=-37,
	  ADD_SIZE_Y=-47,
 	"LEFT_TOP		= D3DXVECTOR2(76-33-25,109-18)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonO_1:SetOverPoint
{

    ADD_SIZE_X = 2-37,
    ADD_SIZE_Y = 2-47,
	"LEFT_TOP		= D3DXVECTOR2(75-33-25,108-18)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonO_1:SetDownPoint
{

       ADD_SIZE_X=-37,
	  ADD_SIZE_Y=-47,
 	"LEFT_TOP		= D3DXVECTOR2(76-33-25,109-18)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pButtonO_1:SetCustomFuncMouseUp( "g_pButtonO_1_FuncMouseUp" )

function g_pButtonO_1_FuncMouseUp()
	
	g_pState:Handler_EGS_CHANGE_SLOT_OPEN_REQ( 0 )
	
end


g_pButtonO_2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonO_2 )
g_pButtonO_2:SetName( "PVP_Room_O_2" )
g_pButtonO_2:SetNormalTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Wait" )

g_pButtonO_2:SetOverTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Wait" )

g_pButtonO_2:SetDownTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Wait" )

PVPRoomOXDownAnim( g_pButtonO_2 )

g_pButtonO_2:SetNormalPoint
{

        ADD_SIZE_X=-37,
	  ADD_SIZE_Y=-47,
 	"LEFT_TOP		= D3DXVECTOR2(256-33-16,109-18)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonO_2:SetOverPoint
{
    ADD_SIZE_X = 2-37,
    ADD_SIZE_Y = 2-47,
	"LEFT_TOP		= D3DXVECTOR2(255-33-16,108-18)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonO_2:SetDownPoint
{

        ADD_SIZE_X=-37,
	  ADD_SIZE_Y=-47,
 	"LEFT_TOP		= D3DXVECTOR2(256-33-16,109-18)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonO_2:SetCustomFuncMouseUp( "g_pButtonO_2_FuncMouseUp" )

function g_pButtonO_2_FuncMouseUp()
	
	g_pState:Handler_EGS_CHANGE_SLOT_OPEN_REQ( 1 )
	
end

g_pButtonO_3 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonO_3 )
g_pButtonO_3:SetName( "PVP_Room_O_3" )
g_pButtonO_3:SetNormalTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Wait" )

g_pButtonO_3:SetOverTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Wait" )

g_pButtonO_3:SetDownTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Wait" )

PVPRoomOXDownAnim( g_pButtonO_3 )

g_pButtonO_3:SetNormalPoint
{

       ADD_SIZE_X=-37,
	  ADD_SIZE_Y=-47,
 	"LEFT_TOP		= D3DXVECTOR2(436-33-8,109-18)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonO_3:SetOverPoint
{
    ADD_SIZE_X = 2-37,
    ADD_SIZE_Y = 2-47,
	"LEFT_TOP		= D3DXVECTOR2(435-33-8,108-18)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonO_3:SetDownPoint
{

        ADD_SIZE_X=-37,
	  ADD_SIZE_Y=-47,
 	"LEFT_TOP		= D3DXVECTOR2(436-33-8,109-18)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonO_3:SetCustomFuncMouseUp( "g_pButtonO_3_FuncMouseUp" )

function g_pButtonO_3_FuncMouseUp()
	
	g_pState:Handler_EGS_CHANGE_SLOT_OPEN_REQ( 2 )
	
end

g_pButtonO_4 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonO_4 )
g_pButtonO_4:SetName( "PVP_Room_O_4" )
g_pButtonO_4:SetNormalTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Wait" )

g_pButtonO_4:SetOverTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Wait" )

g_pButtonO_4:SetDownTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Wait" )

PVPRoomOXDownAnim( g_pButtonO_4 )

g_pButtonO_4:SetNormalPoint
{

        ADD_SIZE_X=-37,
	  ADD_SIZE_Y=-47,
 	"LEFT_TOP		= D3DXVECTOR2(616-33,109-18)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonO_4:SetOverPoint
{
    ADD_SIZE_X = 2-37,
    ADD_SIZE_Y = 2-47,
	"LEFT_TOP		= D3DXVECTOR2(615-33,108-18)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonO_4:SetDownPoint
{

        ADD_SIZE_X=-37,
	  ADD_SIZE_Y=-47,
 	"LEFT_TOP		= D3DXVECTOR2(616-33,109-18)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}


g_pButtonO_4:SetCustomFuncMouseUp( "g_pButtonO_4_FuncMouseUp" )

function g_pButtonO_4_FuncMouseUp()
	
	g_pState:Handler_EGS_CHANGE_SLOT_OPEN_REQ( 3 )
	
end


g_pButtonO_5 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonO_5 )
g_pButtonO_5:SetName( "PVP_Room_O_5" )
g_pButtonO_5:SetNormalTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Wait" )

g_pButtonO_5:SetOverTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Wait" )

g_pButtonO_5:SetDownTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Wait" )

PVPRoomOXDownAnim( g_pButtonO_5 )

g_pButtonO_5:SetNormalPoint
{

        ADD_SIZE_X=-37,
	  ADD_SIZE_Y=-47,
 	"LEFT_TOP		= D3DXVECTOR2(836-33+20-1,435+10-18-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonO_5:SetOverPoint
{
    ADD_SIZE_X = 2-37,
    ADD_SIZE_Y = 2-47,
	"LEFT_TOP		= D3DXVECTOR2(835-33+20-1,434+10-18)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonO_5:SetDownPoint
{

        ADD_SIZE_X=-37,
	  ADD_SIZE_Y=-47,
 	"LEFT_TOP		= D3DXVECTOR2(836-33+20-1,435+10-18-2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonO_5:SetCustomFuncMouseUp( "g_pButtonO_5_FuncMouseUp" )

function g_pButtonO_5_FuncMouseUp()
	
	g_pState:Handler_EGS_CHANGE_SLOT_OPEN_REQ( 4 )
	
end

g_pButtonO_6 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonO_6 )
g_pButtonO_6:SetName( "PVP_Room_O_6" )
g_pButtonO_6:SetNormalTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Wait" )

g_pButtonO_6:SetOverTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Wait" )

g_pButtonO_6:SetDownTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Wait" )

PVPRoomOXDownAnim( g_pButtonO_6 )

g_pButtonO_6:SetNormalPoint
{

         ADD_SIZE_X=-37,
	  ADD_SIZE_Y=-47,
 	"LEFT_TOP		= D3DXVECTOR2(656-33+14-1,435+10-18-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonO_6:SetOverPoint
{
    ADD_SIZE_X = 2-37,
    ADD_SIZE_Y = 2-47,
	"LEFT_TOP		= D3DXVECTOR2(655-33+14-1,434+10-18)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonO_6:SetDownPoint
{

        ADD_SIZE_X=-37,
	  ADD_SIZE_Y=-47,
 	"LEFT_TOP		= D3DXVECTOR2(656-33+14-1,435+10-18-2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonO_6:SetCustomFuncMouseUp( "g_pButtonO_6_FuncMouseUp" )

function g_pButtonO_6_FuncMouseUp()
	
	g_pState:Handler_EGS_CHANGE_SLOT_OPEN_REQ( 5 )
	
end

g_pButtonO_7 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonO_7 )
g_pButtonO_7:SetName( "PVP_Room_O_7" )
g_pButtonO_7:SetNormalTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Wait" )

g_pButtonO_7:SetOverTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Wait" )

g_pButtonO_7:SetDownTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Wait" )

PVPRoomOXDownAnim( g_pButtonO_7 )

g_pButtonO_7:SetNormalPoint
{

         ADD_SIZE_X=-37,
	  ADD_SIZE_Y=-47,
 	"LEFT_TOP		= D3DXVECTOR2(476-33+7-1,435+10-18-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonO_7:SetOverPoint
{
    ADD_SIZE_X = 2-37,
    ADD_SIZE_Y = 2-47,
	"LEFT_TOP		= D3DXVECTOR2(475-33+7-1,434+10-18)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonO_7:SetDownPoint
{

         ADD_SIZE_X=-37,
	  ADD_SIZE_Y=-47,
 	"LEFT_TOP		= D3DXVECTOR2(476-33+7-1,435+10-18-2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonO_7:SetCustomFuncMouseUp( "g_pButtonO_7_FuncMouseUp" )

function g_pButtonO_7_FuncMouseUp()
	
	g_pState:Handler_EGS_CHANGE_SLOT_OPEN_REQ( 6 )
	
end

g_pButtonO_8 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonO_8 )
g_pButtonO_8:SetName( "PVP_Room_O_8" )
g_pButtonO_8:SetNormalTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Wait" )

g_pButtonO_8:SetOverTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Wait" )

g_pButtonO_8:SetDownTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Wait" )

PVPRoomOXDownAnim( g_pButtonO_8 )

g_pButtonO_8:SetNormalPoint
{

       ADD_SIZE_X=-37,
	  ADD_SIZE_Y=-47,
 	"LEFT_TOP		= D3DXVECTOR2(296-33-3,435+10-18-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonO_8:SetOverPoint
{
    ADD_SIZE_X = 2-37,
    ADD_SIZE_Y = 2-47,
	"LEFT_TOP		= D3DXVECTOR2(295-33-3,434+10-18)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonO_8:SetDownPoint
{

        ADD_SIZE_X=-37,
	  ADD_SIZE_Y=-47,
 	"LEFT_TOP		= D3DXVECTOR2(296-33-3,435+10-18-2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonO_8:SetCustomFuncMouseUp( "g_pButtonO_8_FuncMouseUp" )

function g_pButtonO_8_FuncMouseUp()
	
	g_pState:Handler_EGS_CHANGE_SLOT_OPEN_REQ(7 )
	
end



