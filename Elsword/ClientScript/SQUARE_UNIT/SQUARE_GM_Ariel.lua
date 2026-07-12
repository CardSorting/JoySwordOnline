-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_PHYSIC = 
{
	RELOAD_ACCEL		= 2000,
	G_ACCEL				= 4000,
	MAX_G_SPEED			= -2000,
	
	WALK_SPEED			= 500,
	RUN_SPEED			= 700, --750,
	JUMP_SPEED			= 1500,
	DASH_JUMP_SPEED		= 1700, -- 2300
}

INIT_STATE = 
{
	"WAIT",
	"SE_WALK",
	"SE_JUMP_UP",
	"SE_JUMP_DOWN",
	"SE_DASH",
	"SE_DASH_JUMP_UP",
	"SE_DASH_JUMP_DOWN",
	
	
			
	WAIT				= "WAIT",
	WALK				= "SE_WALK",
	JUMP_UP				= "SE_JUMP_UP",
	JUMP_DOWN			= "SE_JUMP_DOWN",
	DASH				= "SE_DASH",
	DASH_JUMP_UP		= "SE_DASH_JUMP_UP",
	DASH_JUMP_DOWN		= "SE_DASH_JUMP_DOWN",
	
	
}


WAIT = 
{
	ANIM_NAME			= "LobbyWait",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	LAND_CONNECT		= TRUE,
	
	SPEED_X				= 0,
	
	FUNC_EVENT_PROCESS	= "SE_FUNC_EVENT_PROCESS_WAIT",
}

function SE_FUNC_EVENT_PROCESS_WAIT( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )

	if g_pUnit:GetFootOnLine_LUA() == false then
		g_pUnit:StateChange_LUA( "SE_JUMP_DOWN" )
		--g_pUnit:SetActId_LUA( SYNC_UNIT_STATE["SUS_JD"] )		
-- dash	start	
    elseif g_pUnit:GetPureDoubleLeft_LUA() == true then
        --g_pUnit:SetRight_LUA( false )
		g_pUnit:StateChange_LUA( "SE_DASH" )
		--g_pUnit:SetActId_LUA( SYNC_UNIT_STATE["SUS_DL"] )			
	elseif g_pUnit:GetPureDoubleRight_LUA() == true then
	    --g_pUnit:SetRight_LUA( true )
		g_pUnit:StateChange_LUA( "SE_DASH" )
		--g_pUnit:SetActId_LUA( SYNC_UNIT_STATE["SUS_DR"] )		
-- dash end			
	elseif g_pUnit:GetPureLeft_LUA() == true then	    
		g_pUnit:StateChange_LUA( "SE_WALK" )
		--g_pUnit:SetActId_LUA( SYNC_UNIT_STATE["SUS_L"] )		
	elseif g_pUnit:GetPureRight_LUA() == true then	    
		g_pUnit:StateChange_LUA( "SE_WALK" )
		--g_pUnit:SetActId_LUA( SYNC_UNIT_STATE["SUS_R"] )
	elseif g_pUnit:GetPureUp_LUA() == true then
		g_pUnit:StateChange_LUA( "SE_JUMP_UP" )
		--g_pUnit:SetActId_LUA( SYNC_UNIT_STATE["SUS_JU"] )		
	elseif g_pUnit:GetPureDown_LUA() == true and g_pUnit:CanDown_LUA() == true then
		g_pUnit:StateChange_LUA( "SE_JUMP_DOWN" )		
		g_pUnit:AddPosY_LUA( -45.0 )
		--g_pUnit:SetActId_LUA( SYNC_UNIT_STATE["SUS_JD"] )
	end
end

SE_WALK = 
{
	ANIM_NAME			= "Walk",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	LAND_CONNECT		= TRUE,
	
	PASSIVE_SPEED_X		= INIT_PHYSIC["WALK_SPEED"],
	RIGHT_SYNC			= TRUE,
	
	FUNC_FRAME_MOVE		= "SE_FUNC_FRAME_MOVE_SE_WALK",
	FUNC_EVENT_PROCESS	= "SE_FUNC_EVENT_PROCESS_SE_WALK",
}

function SE_FUNC_FRAME_MOVE_SE_WALK( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )

-- dash	start	
    if g_pUnit:GetPureDoubleLeft_LUA() == true then
        g_pUnit:SetRight_LUA( false )
		g_pUnit:StateChange_LUA( "SE_DASH" )
		--g_pUnit:SetActId_LUA( SYNC_UNIT_STATE["SUS_DL"] )		
	elseif g_pUnit:GetPureDoubleRight_LUA() == true then
	    g_pUnit:SetRight_LUA( true )
		g_pUnit:StateChange_LUA( "SE_DASH" )
		--g_pUnit:SetActId_LUA( SYNC_UNIT_STATE["SUS_DR"] )
-- dash end			
	elseif g_pUnit:GetPureLeft_LUA() == true then
		g_pUnit:SetRight_LUA( false )
		--g_pUnit:SetActId_LUA( SYNC_UNIT_STATE["SUS_L"] )		
	elseif g_pUnit:GetPureRight_LUA() == true then
		g_pUnit:SetRight_LUA( true )
		--g_pUnit:SetActId_LUA( SYNC_UNIT_STATE["SUS_R"] )

	end

end

function SE_FUNC_EVENT_PROCESS_SE_WALK( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )

    if g_pUnit:GetFootOnLine_LUA() == false then
		g_pUnit:StateChange_LUA( "SE_JUMP_DOWN" )
		--g_pUnit:SetActId_LUA( SYNC_UNIT_STATE["SUS_JD"] )		
	elseif g_pUnit:GetPureLeft_LUA() == false and g_pUnit:GetPureRight_LUA() == false then
		g_pUnit:StateChange_LUA( "WAIT" )
		--g_pUnit:SetActId_LUA( SYNC_UNIT_STATE["SUS_W"] )		
	elseif g_pUnit:GetPureUp_LUA() == true then
		g_pUnit:StateChange_LUA( "SE_JUMP_UP" )
		--g_pUnit:SetActId_LUA( SYNC_UNIT_STATE["SUS_JU"] )
	elseif g_pUnit:GetPureDown_LUA() == true and g_pUnit:CanDown_LUA() == true then
		g_pUnit:AddPosY_LUA( -45 )
		g_pUnit:StateChange_LUA( "SE_JUMP_DOWN" )
		--g_pUnit:SetActId_LUA( SYNC_UNIT_STATE["SUS_JD"] )
	end
end

SE_JUMP_UP = 
{
	ANIM_NAME			= "JumpUp",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	LAND_CONNECT		= FALSE,
	
	PASSIVE_SPEED_X		= INIT_PHYSIC["WALK_SPEED"],
	SPEED_Y				= INIT_PHYSIC["JUMP_SPEED"],
	RIGHT_SYNC			= TRUE,
	
	FUNC_FRAME_MOVE		= "SE_FUNC_FRAME_MOVE_SE_JUMP_UP",
	FUNC_EVENT_PROCESS	= "SE_FUNC_EVENT_PROCESS_SE_JUMP_UP",
}

function SE_FUNC_FRAME_MOVE_SE_JUMP_UP( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )

	if g_pUnit:GetPureLeft_LUA() == true then
		g_pUnit:SetXSpeed_LUA( INIT_PHYSIC["WALK_SPEED"] )
		g_pUnit:SetRight_LUA( false )
		--g_pUnit:SetActId_LUA( SYNC_UNIT_STATE["SUS_JUL"] )
	elseif g_pUnit:GetPureRight_LUA() == true then
		g_pUnit:SetXSpeed_LUA( INIT_PHYSIC["WALK_SPEED"] )
		g_pUnit:SetRight_LUA( true )
		--g_pUnit:SetActId_LUA( SYNC_UNIT_STATE["SUS_JUR"] )
	else
		g_pUnit:SetXSpeed_LUA( 0 )
		--g_pUnit:SetActId_LUA( SYNC_UNIT_STATE["SUS_JU"] )
	end

end

function SE_FUNC_EVENT_PROCESS_SE_JUMP_UP( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )

    if g_pUnit:GetYSpeed_LUA() <= 0 then
	    g_pUnit:SetXSpeed_LUA( 0 )
		g_pUnit:StateChange_LUA( "SE_JUMP_DOWN" )
		--g_pUnit:SetActId_LUA( SYNC_UNIT_STATE["SUS_JD"] )	
	end
end

SE_JUMP_DOWN = 
{
	ANIM_NAME			= "JumpDown",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	LAND_CONNECT		= FALSE,
	
	PASSIVE_SPEED_X		= INIT_PHYSIC["WALK_SPEED"],
	RIGHT_SYNC			= TRUE,
	
	FUNC_FRAME_MOVE		= "SE_FUNC_FRAME_MOVE_SE_JUMP_DOWN",
	FUNC_EVENT_PROCESS	= "SE_FUNC_EVENT_PROCESS_SE_JUMP_DOWN",
}

function SE_FUNC_FRAME_MOVE_SE_JUMP_DOWN( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )

	if g_pUnit:GetPureLeft_LUA() == true then
		g_pUnit:SetXSpeed_LUA( INIT_PHYSIC["WALK_SPEED"] )
		g_pUnit:SetRight_LUA( false )
		--g_pUnit:SetActId_LUA( SYNC_UNIT_STATE["SUS_JDL"] )
	elseif g_pUnit:GetPureRight_LUA() == true then
		g_pUnit:SetXSpeed_LUA( INIT_PHYSIC["WALK_SPEED"] )
		g_pUnit:SetRight_LUA( true )
		--g_pUnit:SetActId_LUA( SYNC_UNIT_STATE["SUS_JDR"] )
	else
		g_pUnit:SetXSpeed_LUA( 0 )
		--g_pUnit:SetActId_LUA( SYNC_UNIT_STATE["SUS_JD"] )
	end

end

function SE_FUNC_EVENT_PROCESS_SE_JUMP_DOWN( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )

	if g_pUnit:GetYSpeed_LUA() > 0 then
	    g_pUnit:SetXSpeed_LUA( 0 )
		g_pUnit:StateChange_LUA( "SE_JUMP_UP" )
		--g_pUnit:SetActId_LUA( SYNC_UNIT_STATE["SUS_JU"] )
	elseif g_pUnit:GetFootOnLine_LUA() == true then
	    g_pUnit:SetXSpeed_LUA( 0 )
		g_pUnit:StateChange_LUA( "WAIT" )
		--g_pUnit:SetActId_LUA( SYNC_UNIT_STATE["SUS_W"] )
	end
end

-- dash

SE_DASH = 
{
	ANIM_NAME			= "Dash",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	LAND_CONNECT		= TRUE,
	
	PASSIVE_SPEED_X		= INIT_PHYSIC["RUN_SPEED"],
	RIGHT_SYNC			= TRUE,
	
	FUNC_FRAME_MOVE		= "SE_FUNC_FRAME_MOVE_SE_DASH",
	FUNC_EVENT_PROCESS	= "SE_FUNC_EVENT_PROCESS_SE_DASH",
}

function SE_FUNC_FRAME_MOVE_SE_DASH( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )

    if g_pUnit:GetPureDoubleLeft_LUA() == true then        
		g_pUnit:SetRight_LUA( false )
		g_pUnit:SetXSpeed_LUA( INIT_PHYSIC["RUN_SPEED"] )	
		
	elseif g_pUnit:GetPureDoubleRight_LUA() == true then
		g_pUnit:SetRight_LUA( true )
		g_pUnit:SetXSpeed_LUA( INIT_PHYSIC["RUN_SPEED"] )
		
	end
	
    if g_pUnit:GetPureLeft_LUA() == true then
        if g_pUnit:GetRight_LUA() == true then
            g_pUnit:SetRight_LUA( false )
            g_pUnit:StateChange_LUA( "SE_WALK" )
        else
		    g_pUnit:SetRight_LUA( false )
		    g_pUnit:SetXSpeed_LUA( INIT_PHYSIC["RUN_SPEED"] )		
		    --g_pUnit:SetActId_LUA( SYNC_UNIT_STATE["SUS_L"] )		
        end		    
	elseif g_pUnit:GetPureRight_LUA() == true then
	    if g_pUnit:GetRight_LUA() == false then
            g_pUnit:SetRight_LUA( true )
            g_pUnit:StateChange_LUA( "SE_WALK" )
        else
		    g_pUnit:SetRight_LUA( true )
		    g_pUnit:SetXSpeed_LUA( INIT_PHYSIC["RUN_SPEED"] )
		    --g_pUnit:SetActId_LUA( SYNC_UNIT_STATE["SUS_R"] )		
		end
	end

end

function SE_FUNC_EVENT_PROCESS_SE_DASH( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )

    if g_pUnit:GetFootOnLine_LUA() == false then
		g_pUnit:StateChange_LUA( "SE_DASH_JUMP_DOWN" )		
	elseif g_pUnit:GetPureLeft_LUA() == false and g_pUnit:GetPureRight_LUA() == false then
		g_pUnit:StateChange_LUA( "WAIT" )
		--g_pUnit:SetActId_LUA( SYNC_UNIT_STATE["SUS_W"] )		
	elseif g_pUnit:GetPureUp_LUA() == true then
		g_pUnit:StateChange_LUA( "SE_DASH_JUMP_UP" )
		--g_pUnit:SetActId_LUA( SYNC_UNIT_STATE["SUS_JU"] )
	elseif g_pUnit:GetPureDown_LUA() == true and g_pUnit:CanDown_LUA() == true then
		g_pUnit:AddPosY_LUA( -45 )
		g_pUnit:StateChange_LUA( "SE_DASH_JUMP_DOWN" )
		--g_pUnit:SetActId_LUA( SYNC_UNIT_STATE["SUS_JD"] )
	end
end

SE_DASH_JUMP_UP = 
{
	ANIM_NAME			= "DashJump",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	LAND_CONNECT		= FALSE,
	
	PASSIVE_SPEED_X		= INIT_PHYSIC["RUN_SPEED"],
	SPEED_Y				= INIT_PHYSIC["JUMP_SPEED"] * 1.1,
	
	RIGHT_SYNC			= TRUE,
	
	FUNC_FRAME_MOVE		= "SE_FUNC_FRAME_MOVE_SE_DASH_JUMP_UP",
	FUNC_EVENT_PROCESS	= "SE_FUNC_EVENT_PROCESS_SE_DASH_JUMP_UP",
	
	FUNC_EVENT_PROCESS_OTHER	= "SE_FUNC_EVENT_PROCESS_OTHER_SE_DASH_JUMP_UP",
	
}

function SE_FUNC_FRAME_MOVE_SE_DASH_JUMP_UP( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )

	if g_pUnit:GetPureLeft_LUA() == true then
		--g_pUnit:SetXSpeed_LUA( INIT_PHYSIC["RUN_SPEED"] )
		g_pUnit:SetRight_LUA( false )
		--g_pUnit:SetActId_LUA( SYNC_UNIT_STATE["SUS_L"] )
	elseif g_pUnit:GetPureRight_LUA() == true then
		--g_pUnit:SetXSpeed_LUA( INIT_PHYSIC["RUN_SPEED"] )
		g_pUnit:SetRight_LUA( true )
		--g_pUnit:SetActId_LUA( SYNC_UNIT_STATE["SUS_R"] )
	end
end

function SE_FUNC_EVENT_PROCESS_SE_DASH_JUMP_UP( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )

	if g_pUnit:GetYSpeed_LUA() <= 0 then
		g_pUnit:StateChange_LUA( "SE_DASH_JUMP_DOWN" )
	end
	
end

SE_DASH_JUMP_DOWN = 
{
	ANIM_NAME			= "DashJump",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	LAND_CONNECT		= FALSE,
	
	PASSIVE_SPEED_X		= INIT_PHYSIC["RUN_SPEED"],
	--SPEED_Y				= INIT_PHYSIC["JUMP_SPEED"] * 1.1,
	
	RIGHT_SYNC			= TRUE,
	
	FUNC_FRAME_MOVE		= "SE_FUNC_FRAME_MOVE_SE_DASH_JUMP_DOWN",
	FUNC_EVENT_PROCESS	= "SE_FUNC_EVENT_PROCESS_SE_DASH_JUMP_DOWN",
	
	FUNC_EVENT_PROCESS_OTHER	= "SE_FUNC_EVENT_PROCESS_OTHER_SE_DASH_JUMP_DOWN",
	
}

function SE_FUNC_FRAME_MOVE_SE_DASH_JUMP_DOWN( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )

	if g_pUnit:GetPureLeft_LUA() == true then
		--g_pUnit:SetXSpeed_LUA( INIT_PHYSIC["RUN_SPEED"] )
		g_pUnit:SetRight_LUA( false )
		--g_pUnit:SetActId_LUA( SYNC_UNIT_STATE["SUS_L"] )
	elseif g_pUnit:GetPureRight_LUA() == true then
		--g_pUnit:SetXSpeed_LUA( INIT_PHYSIC["RUN_SPEED"] )
		g_pUnit:SetRight_LUA( true )
		--g_pUnit:SetActId_LUA( SYNC_UNIT_STATE["SUS_R"] )
	end
end

function SE_FUNC_EVENT_PROCESS_SE_DASH_JUMP_DOWN( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )

	if g_pUnit:GetFootOnLine_LUA() == true then
		g_pUnit:StateChange_LUA( "SE_DASH" )
	end
	
end




