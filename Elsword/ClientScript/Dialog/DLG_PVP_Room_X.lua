-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


-------------------(X버튼)
g_AddY = 40






-------------------(X버튼)

g_pButtonX_1 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX_1 )
g_pButtonX_1:SetName( "PVP_Room_X_1" )
g_pButtonX_1:SetNormalTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Close" )

g_pButtonX_1:SetOverTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Close" )

g_pButtonX_1:SetDownTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Close" )

PVPRoomOXDownAnim( g_pButtonX_1 )

g_pButtonX_1:SetNormalPoint
{

	  ADD_SIZE_X=-37,
	  ADD_SIZE_Y=-47,
 	"LEFT_TOP		= D3DXVECTOR2(76-33-25,109-17)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX_1:SetOverPoint
{

    ADD_SIZE_X = 2-37,
    ADD_SIZE_Y = 2-47,
	"LEFT_TOP		= D3DXVECTOR2(75-33-25,108-17)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX_1:SetDownPoint
{

       ADD_SIZE_X=-37,
	  ADD_SIZE_Y=-47,
 	"LEFT_TOP		= D3DXVECTOR2(76-33-25,109-17)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}

g_pButtonX_1:SetCustomFuncMouseUp( "g_pButtonX_1_FuncMouseUp" )

function g_pButtonX_1_FuncMouseUp()
	
	g_pState:Handler_EGS_CHANGE_SLOT_OPEN_REQ( 0 )
	
end


g_pButtonX_2 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX_2 )
g_pButtonX_2:SetName( "PVP_Room_X_2" )
g_pButtonX_2:SetNormalTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Close" )

g_pButtonX_2:SetOverTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Close" )

g_pButtonX_2:SetDownTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Close" )

PVPRoomOXDownAnim( g_pButtonX_2 )


g_pButtonX_2:SetNormalPoint
{

        ADD_SIZE_X=-37,
	  ADD_SIZE_Y=-47,
 	"LEFT_TOP		= D3DXVECTOR2(256-33-16,109-17)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX_2:SetOverPoint
{
    ADD_SIZE_X = 2-37,
    ADD_SIZE_Y = 2-47,
	"LEFT_TOP		= D3DXVECTOR2(255-33-16,108-17)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX_2:SetDownPoint
{

        ADD_SIZE_X=-37,
	  ADD_SIZE_Y=-47,
 	"LEFT_TOP		= D3DXVECTOR2(256-33-16,109-17)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX_2:SetCustomFuncMouseUp( "g_pButtonX_2_FuncMouseUp" )

function g_pButtonX_2_FuncMouseUp()
	
	g_pState:Handler_EGS_CHANGE_SLOT_OPEN_REQ( 1 )
	
end

g_pButtonX_3 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX_3 )
g_pButtonX_3:SetName( "PVP_Room_X_3" )
g_pButtonX_3:SetNormalTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Close" )

g_pButtonX_3:SetOverTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Close" )

g_pButtonX_3:SetDownTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Close" )

PVPRoomOXDownAnim( g_pButtonX_3 )

g_pButtonX_3:SetNormalPoint
{

       ADD_SIZE_X=-37,
	  ADD_SIZE_Y=-47,
 	"LEFT_TOP		= D3DXVECTOR2(436-33-8,109-17)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX_3:SetOverPoint
{
    ADD_SIZE_X = 2-37,
    ADD_SIZE_Y = 2-47,
	"LEFT_TOP		= D3DXVECTOR2(435-33-8,108-17)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX_3:SetDownPoint
{

        ADD_SIZE_X=-37,
	  ADD_SIZE_Y=-47,
 	"LEFT_TOP		= D3DXVECTOR2(436-33-8,109-17)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX_3:SetCustomFuncMouseUp( "g_pButtonX_3_FuncMouseUp" )

function g_pButtonX_3_FuncMouseUp()
	
	g_pState:Handler_EGS_CHANGE_SLOT_OPEN_REQ( 2 )
	
end

g_pButtonX_4 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX_4 )
g_pButtonX_4:SetName( "PVP_Room_X_4" )
g_pButtonX_4:SetNormalTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Close" )

g_pButtonX_4:SetOverTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Close" )

g_pButtonX_4:SetDownTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Close" )

PVPRoomOXDownAnim( g_pButtonX_4 )

g_pButtonX_4:SetNormalPoint
{

        ADD_SIZE_X=-37,
	  ADD_SIZE_Y=-47,
 	"LEFT_TOP		= D3DXVECTOR2(616-33,109-17)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX_4:SetOverPoint
{
    ADD_SIZE_X = 2-37,
    ADD_SIZE_Y = 2-47,
	"LEFT_TOP		= D3DXVECTOR2(615-33,108-17)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX_4:SetDownPoint
{

        ADD_SIZE_X=-37,
	  ADD_SIZE_Y=-47,
 	"LEFT_TOP		= D3DXVECTOR2(616-33,109-17)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX_4:SetCustomFuncMouseUp( "g_pButtonX_4_FuncMouseUp" )

function g_pButtonX_4_FuncMouseUp()
	
	g_pState:Handler_EGS_CHANGE_SLOT_OPEN_REQ( 3 )
	
end




g_pButtonX_5 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX_5 )
g_pButtonX_5:SetName( "PVP_Room_X_5" )
g_pButtonX_5:SetNormalTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Close" )

g_pButtonX_5:SetOverTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Close" )

g_pButtonX_5:SetDownTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Close" )

PVPRoomOXDownAnim( g_pButtonX_5 )

g_pButtonX_5:SetNormalPoint
{

        ADD_SIZE_X=-37,
	  ADD_SIZE_Y=-47,
 	"LEFT_TOP		= D3DXVECTOR2(836-33+20-1,435+10-17-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX_5:SetOverPoint
{
    ADD_SIZE_X = 2-37,
    ADD_SIZE_Y = 2-47,
	"LEFT_TOP		= D3DXVECTOR2(835-33+20-1,434+10-17-2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX_5:SetDownPoint
{

        ADD_SIZE_X=-37,
	  ADD_SIZE_Y=-47,
 	"LEFT_TOP		= D3DXVECTOR2(836-33+20-1,435+10-17-2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX_5:SetCustomFuncMouseUp( "g_pButtonX_5_FuncMouseUp" )

function g_pButtonX_5_FuncMouseUp()
	
	g_pState:Handler_EGS_CHANGE_SLOT_OPEN_REQ( 4 )
	
end


g_pButtonX_6 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX_6 )
g_pButtonX_6:SetName( "PVP_Room_X_6" )
g_pButtonX_6:SetNormalTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Close" )

g_pButtonX_6:SetOverTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Close" )

g_pButtonX_6:SetDownTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Close" )

PVPRoomOXDownAnim( g_pButtonX_6 )

g_pButtonX_6:SetNormalPoint
{

         ADD_SIZE_X=-37,
	  ADD_SIZE_Y=-47,
 	"LEFT_TOP		= D3DXVECTOR2(656-33+14-1,435+10-17-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX_6:SetOverPoint
{
    ADD_SIZE_X = 2-37,
    ADD_SIZE_Y = 2-47,
	"LEFT_TOP		= D3DXVECTOR2(655-33+14-1,434+10-17-2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX_6:SetDownPoint
{

        ADD_SIZE_X=-37,
	  ADD_SIZE_Y=-47,
 	"LEFT_TOP		= D3DXVECTOR2(656-33+14-1,435+10-17-2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX_6:SetCustomFuncMouseUp( "g_pButtonX_6_FuncMouseUp" )

function g_pButtonX_6_FuncMouseUp()
	
	g_pState:Handler_EGS_CHANGE_SLOT_OPEN_REQ( 5 )
	
end

g_pButtonX_7 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX_7 )
g_pButtonX_7:SetName( "PVP_Room_X_7" )
g_pButtonX_7:SetNormalTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Close" )

g_pButtonX_7:SetOverTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Close" )

g_pButtonX_7:SetDownTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Close" )

PVPRoomOXDownAnim( g_pButtonX_7 )

g_pButtonX_7:SetNormalPoint
{

         ADD_SIZE_X=-37,
	  ADD_SIZE_Y=-47,
 	"LEFT_TOP		= D3DXVECTOR2(476-33+7-1,435+10-17-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX_7:SetOverPoint
{
    ADD_SIZE_X = 2-37,
    ADD_SIZE_Y = 2-47,
	"LEFT_TOP		= D3DXVECTOR2(475-33+7-1,434+10-17-2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX_7:SetDownPoint
{

         ADD_SIZE_X=-37,
	  ADD_SIZE_Y=-47,
 	"LEFT_TOP		= D3DXVECTOR2(476-33+7-1,435+10-17-2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX_7:SetCustomFuncMouseUp( "g_pButtonX_7_FuncMouseUp" )

function g_pButtonX_7_FuncMouseUp()
	
	g_pState:Handler_EGS_CHANGE_SLOT_OPEN_REQ( 6 )
	
end

g_pButtonX_8 = g_pUIDialog:CreateButton()
g_pUIDialog:AddControl( g_pButtonX_8 )
g_pButtonX_8:SetName( "PVP_Room_X_8" )
g_pButtonX_8:SetNormalTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Close" )

g_pButtonX_8:SetOverTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Close" )

g_pButtonX_8:SetDownTex( "DLG_Common_New_Texture36.tga", "PVP_Result_Image_Close" )

PVPRoomOXDownAnim( g_pButtonX_8 )

g_pButtonX_8:SetNormalPoint
{

       ADD_SIZE_X=-37,
	  ADD_SIZE_Y=-47,
 	"LEFT_TOP		= D3DXVECTOR2(296-33-3,435+10-17-2)",
	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX_8:SetOverPoint
{
    ADD_SIZE_X = 2-37,
    ADD_SIZE_Y = 2-47,
	"LEFT_TOP		= D3DXVECTOR2(295-33-3,434+10-17-2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX_8:SetDownPoint
{

        ADD_SIZE_X=-37,
	  ADD_SIZE_Y=-47,
 	"LEFT_TOP		= D3DXVECTOR2(296-33-3,435+10-17-2)",

	"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
	CHANGE_TIME		= 0.0,
}
g_pButtonX_8:SetCustomFuncMouseUp( "g_pButtonX_8_FuncMouseUp" )

function g_pButtonX_8_FuncMouseUp()
	
	g_pState:Handler_EGS_CHANGE_SLOT_OPEN_REQ( 7 )
	
end


