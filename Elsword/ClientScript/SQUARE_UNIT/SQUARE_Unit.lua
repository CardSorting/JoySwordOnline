-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

--[[
	2013. 4. 11 / 강정훈 / Square... lua 파일 하나로 만들기
	이유 : LobbyWait를 제외한 모든 내용이 같음
--]]
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
	"WALK",
	"JUMP_UP",
	"JUMP_DOWN",
	"DASH",
	"DASH_JUMP_UP",
	"DASH_JUMP_DOWN",

	-- 탈 것 상태
	"RIDING_ON",
	"RIDING_OFF",
	"RIDING_WAIT",
	"RIDING_WAIT_HABIT",
	"RIDING_WALK",
	"RIDING_JUMP_UP",
	"RIDING_JUMP_DOWN",
	"RIDING_DASH",
	"RIDING_DASH_JUMP_UP",
	"RIDING_DASH_JUMP_DOWN",

	-- 이모션
	"EMOTION_STATE",
	"EMOTION_SITREADY",
	"EMOTION_SITWAIT",
	"EMOTION_STANDUP",

	WAIT				= "WAIT",
	WALK				= "WALK",
	JUMP_UP				= "JUMP_UP",
	JUMP_DOWN			= "JUMP_DOWN",
	DASH				= "DASH",
	DASH_JUMP_UP		= "DASH_JUMP_UP",
	DASH_JUMP_DOWN		= "DASH_JUMP_DOWN",

	RIDING_ON				= "RIDING_ON",
	RIDING_OFF				= "RIDING_OFF",
	RIDING_WAIT				= "RIDING_WAIT",
	RIDING_WAIT_HABIT		= "RIDING_WAIT_HABIT",
	RIDING_WALK				= "RIDING_WALK",
	RIDING_JUMP_UP			= "RIDING_JUMP_UP",
	RIDING_JUMP_DOWN		= "RIDING_JUMP_DOWN",
	RIDING_DASH				= "RIDING_DASH",
	RIDING_DASH_JUMP_UP		= "RIDING_DASH_JUMP_UP",
	RIDING_DASH_JUMP_DOWN	= "RIDING_DASH_JUMP_DOWN",
}

-- Wait --
WAIT = 
{
	ANIM_NAME			= "LobbyWait",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	LAND_CONNECT		= TRUE,
	SPEED_X				= 0,

	FUNC_EVENT_PROCESS	= "FUNC_EVENT_PROCESS_WAIT",
}

function FUNC_EVENT_PROCESS_WAIT( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )
	if g_pUnit:GetFootOnLine_LUA() == false then
		g_pUnit:StateChange_LUA( "JUMP_DOWN" )
-- dash	start
	elseif g_pUnit:GetPureDoubleLeft_LUA() == true then
		g_pUnit:StateChange_LUA( "DASH" )
	elseif g_pUnit:GetPureDoubleRight_LUA() == true then
		g_pUnit:StateChange_LUA( "DASH" )
-- dash end
	elseif g_pUnit:GetPureLeft_LUA() == true then
		g_pUnit:StateChange_LUA( "WALK" )
	elseif g_pUnit:GetPureRight_LUA() == true then
		g_pUnit:StateChange_LUA( "WALK" )
	elseif g_pUnit:GetPureUp_LUA() == true then
		g_pUnit:StateChange_LUA( "JUMP_UP" )
	elseif g_pUnit:GetPureDown_LUA() == true and g_pUnit:CanDown_LUA() == true then
		g_pUnit:StateChange_LUA( "JUMP_DOWN" )
		g_pUnit:AddPosY_LUA( -45.0 )
-- Riding On
	elseif g_pUnit:GetRiding_LUA() == true then
		g_pUnit:StateChange_LUA( "RIDING_ON" )
	end
end
----

-- Walk --
WALK = 
{
	ANIM_NAME			= "Walk",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	LAND_CONNECT		= TRUE,
	
	PASSIVE_SPEED_X		= INIT_PHYSIC["WALK_SPEED"],
	RIGHT_SYNC			= TRUE,
	
	FUNC_FRAME_MOVE		= "FUNC_FRAME_MOVE_WALK",
	FUNC_EVENT_PROCESS	= "FUNC_EVENT_PROCESS_WALK",
	
	FUNC_STATE_START	= "FUNC_STATE_START_WALK",
}

function FUNC_STATE_START_WALK( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )
	if g_pUnit ~= nil then 
		if g_pUnit:IsMyUnit() == true then 
			g_pUnit:PlaySound_LUA( "Step.ogg", false )
		end 
	end 
end 

function FUNC_FRAME_MOVE_WALK( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )
-- dash	start
	if g_pUnit:GetPureDoubleLeft_LUA() == true then
		g_pUnit:SetRight_LUA( false )
		g_pUnit:StateChange_LUA( "DASH" )
	elseif g_pUnit:GetPureDoubleRight_LUA() == true then
		g_pUnit:SetRight_LUA( true )
		g_pUnit:StateChange_LUA( "DASH" )
-- dash end
	elseif g_pUnit:GetPureLeft_LUA() == true then
		g_pUnit:SetRight_LUA( false )
	elseif g_pUnit:GetPureRight_LUA() == true then
		g_pUnit:SetRight_LUA( true )
	end
end

function FUNC_EVENT_PROCESS_WALK( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )
	if g_pUnit:GetFootOnLine_LUA() == false then
		g_pUnit:StateChange_LUA( "JUMP_DOWN" )
	elseif g_pUnit:GetPureLeft_LUA() == false and g_pUnit:GetPureRight_LUA() == false then
		g_pUnit:StateChange_LUA( "WAIT" )
	elseif g_pUnit:GetPureUp_LUA() == true then
		g_pUnit:StateChange_LUA( "JUMP_UP" )
	elseif g_pUnit:GetPureDown_LUA() == true and g_pUnit:CanDown_LUA() == true then
		g_pUnit:AddPosY_LUA( -45 )
		g_pUnit:StateChange_LUA( "JUMP_DOWN" )
	elseif g_pUnit:GetRiding_LUA() == true then
		g_pUnit:StateChange_LUA( "RIDING_ON" )
	end
end
----

-- JumpUp --
JUMP_UP = 
{
	ANIM_NAME			= "JumpUp",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	LAND_CONNECT		= FALSE,

	PASSIVE_SPEED_X		= INIT_PHYSIC["WALK_SPEED"],
	SPEED_Y				= INIT_PHYSIC["JUMP_SPEED"],
	RIGHT_SYNC			= TRUE,

	FUNC_FRAME_MOVE		= "FUNC_FRAME_MOVE_JUMP_UP",
	FUNC_EVENT_PROCESS	= "FUNC_EVENT_PROCESS_JUMP_UP",

	FUNC_STATE_START	= "FUNC_STATE_START_JUMP_UP",
}

function FUNC_STATE_START_JUMP_UP( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )
	if g_pUnit ~= nil then 
		if g_pUnit:IsMyUnit() == true then 
			g_pUnit:PlaySound_LUA( "Step.ogg", false )
		end 
	end 
end 

function FUNC_FRAME_MOVE_JUMP_UP( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )
	if g_pUnit:GetPureLeft_LUA() == true then
		g_pUnit:SetXSpeed_LUA( INIT_PHYSIC["WALK_SPEED"] )
		g_pUnit:SetRight_LUA( false )
	elseif g_pUnit:GetPureRight_LUA() == true then
		g_pUnit:SetXSpeed_LUA( INIT_PHYSIC["WALK_SPEED"] )
		g_pUnit:SetRight_LUA( true )
	else
		g_pUnit:SetXSpeed_LUA( 0 )
	end
end

function FUNC_EVENT_PROCESS_JUMP_UP( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )
	if g_pUnit:GetYSpeed_LUA() <= 0 then
		g_pUnit:SetXSpeed_LUA( 0 )
		g_pUnit:StateChange_LUA( "JUMP_DOWN" )
	end
end
----

-- JumpDown --
JUMP_DOWN = 
{
	ANIM_NAME			= "JumpDown",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	LAND_CONNECT		= FALSE,

	PASSIVE_SPEED_X		= INIT_PHYSIC["WALK_SPEED"],
	RIGHT_SYNC			= TRUE,

	FUNC_FRAME_MOVE		= "FUNC_FRAME_MOVE_JUMP_DOWN",
	FUNC_EVENT_PROCESS	= "FUNC_EVENT_PROCESS_JUMP_DOWN",

	FUNC_STATE_END		= "FUNC_STATE_END_JUMP_DOWN",
}

function FUNC_STATE_END_JUMP_DOWN( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )
	if g_pUnit ~= nil then 
		if g_pUnit:IsMyUnit() == true then 
			g_pUnit:PlaySound_LUA( "Step.ogg", false )
		end 
	end 
end 

function FUNC_FRAME_MOVE_JUMP_DOWN( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )
	if g_pUnit:GetPureLeft_LUA() == true then
		g_pUnit:SetXSpeed_LUA( INIT_PHYSIC["WALK_SPEED"] )
		g_pUnit:SetRight_LUA( false )
	elseif g_pUnit:GetPureRight_LUA() == true then
		g_pUnit:SetXSpeed_LUA( INIT_PHYSIC["WALK_SPEED"] )
		g_pUnit:SetRight_LUA( true )
	else
		g_pUnit:SetXSpeed_LUA( 0 )
	end
end

function FUNC_EVENT_PROCESS_JUMP_DOWN( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )
	if g_pUnit:GetYSpeed_LUA() > 0 then
		g_pUnit:SetXSpeed_LUA( 0 )
		g_pUnit:StateChange_LUA( "JUMP_UP" )
	elseif g_pUnit:GetFootOnLine_LUA() == true then
		g_pUnit:SetXSpeed_LUA( 0 )
		g_pUnit:StateChange_LUA( "WAIT" )
	end
end
-----

-- Dash --
DASH = 
{
	ANIM_NAME			= "Dash",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	LAND_CONNECT		= TRUE,

	PASSIVE_SPEED_X		= INIT_PHYSIC["RUN_SPEED"],
	RIGHT_SYNC			= TRUE,

	FUNC_FRAME_MOVE		= "FUNC_FRAME_MOVE_DASH",
	FUNC_EVENT_PROCESS	= "FUNC_EVENT_PROCESS_DASH",
	
	FUNC_STATE_START	= "FUNC_STATE_START_DASH",
}

function FUNC_STATE_START_DASH( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )
	if g_pUnit ~= nil then 
		if g_pUnit:IsMyUnit() == true then 
			g_pUnit:PlaySound_LUA( "Step.ogg", false )
		end 
	end 
end 

function FUNC_FRAME_MOVE_DASH( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )
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
			g_pUnit:StateChange_LUA( "WALK" )
		else
			g_pUnit:SetRight_LUA( false )
			g_pUnit:SetXSpeed_LUA( INIT_PHYSIC["RUN_SPEED"] )
		end
	elseif g_pUnit:GetPureRight_LUA() == true then
		if g_pUnit:GetRight_LUA() == false then
			g_pUnit:SetRight_LUA( true )
			g_pUnit:StateChange_LUA( "WALK" )
		else
			g_pUnit:SetRight_LUA( true )
			g_pUnit:SetXSpeed_LUA( INIT_PHYSIC["RUN_SPEED"] )
		end
	end
end

function FUNC_EVENT_PROCESS_DASH( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )
	if g_pUnit:GetFootOnLine_LUA() == false then
		g_pUnit:StateChange_LUA( "DASH_JUMP_DOWN" )
	elseif g_pUnit:GetPureLeft_LUA() == false and g_pUnit:GetPureRight_LUA() == false then
		g_pUnit:StateChange_LUA( "WAIT" )
	elseif g_pUnit:GetPureUp_LUA() == true then
		g_pUnit:StateChange_LUA( "DASH_JUMP_UP" )
	elseif g_pUnit:GetPureDown_LUA() == true and g_pUnit:CanDown_LUA() == true then
		g_pUnit:AddPosY_LUA( -45 )
		g_pUnit:StateChange_LUA( "DASH_JUMP_DOWN" )
	elseif g_pUnit:GetRiding_LUA() == true then
		g_pUnit:StateChange_LUA( "RIDING_ON" )
	end
end
----

-- DashJumpUp --
DASH_JUMP_UP = 
{
	ANIM_NAME			= "DashJump",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	LAND_CONNECT		= FALSE,

	PASSIVE_SPEED_X		= INIT_PHYSIC["RUN_SPEED"],
	SPEED_Y				= INIT_PHYSIC["JUMP_SPEED"] * 1.1,

	RIGHT_SYNC			= TRUE,

	FUNC_FRAME_MOVE		= "FUNC_FRAME_MOVE_DASH_JUMP_UP",
	FUNC_EVENT_PROCESS	= "FUNC_EVENT_PROCESS_DASH_JUMP_UP",

	FUNC_EVENT_PROCESS_OTHER	= "FUNC_EVENT_PROCESS_OTHER_DASH_JUMP_UP",

	FUNC_STATE_START	= "FUNC_STATE_START_DASH_JUMP_UP",
}

function FUNC_STATE_START_DASH_JUMP_UP( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )
	if g_pUnit ~= nil then 
		if g_pUnit:IsMyUnit() == true then 
			g_pUnit:PlaySound_LUA( "Step.ogg", false )
		end 
	end 
end 

function FUNC_FRAME_MOVE_DASH_JUMP_UP( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )
	if g_pUnit:GetPureLeft_LUA() == true then
		g_pUnit:SetRight_LUA( false )
	elseif g_pUnit:GetPureRight_LUA() == true then
		g_pUnit:SetRight_LUA( true )
	end
end

function FUNC_EVENT_PROCESS_DASH_JUMP_UP( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )
	if g_pUnit:GetYSpeed_LUA() <= 0 then
		g_pUnit:StateChange_LUA( "DASH_JUMP_DOWN" )
	end
	
end
----

-- DashJumpDown --
DASH_JUMP_DOWN = 
{
	ANIM_NAME			= "DashJump",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	LAND_CONNECT		= FALSE,
	
	PASSIVE_SPEED_X		= INIT_PHYSIC["RUN_SPEED"],
	RIGHT_SYNC			= TRUE,
	
	FUNC_FRAME_MOVE		= "FUNC_FRAME_MOVE_DASH_JUMP_DOWN",
	FUNC_EVENT_PROCESS	= "FUNC_EVENT_PROCESS_DASH_JUMP_DOWN",
	
	FUNC_EVENT_PROCESS_OTHER	= "FUNC_EVENT_PROCESS_OTHER_DASH_JUMP_DOWN",
	
	FUNC_STATE_END		= "FUNC_STATE_END_DASH_JUMP_DOWN",
}

function FUNC_STATE_END_DASH_JUMP_DOWN( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )
	if g_pUnit ~= nil then 
		if g_pUnit:IsMyUnit() == true then 
			g_pUnit:PlaySound_LUA( "Step.ogg", false )
		end 
	end 
end 

function FUNC_FRAME_MOVE_DASH_JUMP_DOWN( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )
	if g_pUnit:GetPureLeft_LUA() == true then
		g_pUnit:SetRight_LUA( false )
	elseif g_pUnit:GetPureRight_LUA() == true then
		g_pUnit:SetRight_LUA( true )
	end
end

function FUNC_EVENT_PROCESS_DASH_JUMP_DOWN( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )
	if g_pUnit:GetFootOnLine_LUA() == true then
		g_pUnit:StateChange_LUA( "DASH" )
	end
end
----

---- 타기 ----
-- RidingOn --
RIDING_ON = 
{
	ANIM_NAME			= "Ride_1",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	LAND_CONNECT		= TRUE,
	SPEED_X				= 0,

	FUNC_FRAME_MOVE		= "FUNC_FRAME_MOVE_RIDING_ON",
	FUNC_EVENT_PROCESS	= "FUNC_EVENT_PROCESS_RIDING_RIDING_ON",
}

function FUNC_FRAME_MOVE_RIDING_ON( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )
	if g_pUnit:IsAnimationEnd_LUA() == true then
		g_pUnit:StateChange_LUA( "RIDING_WAIT" )
	end
end

function FUNC_EVENT_PROCESS_RIDING_RIDING_ON( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )
	if g_pUnit:GetFootOnLine_LUA() == false then
		g_pUnit:StateChange_LUA( "RIDING_JUMP_DOWN" )
-- dash	start
	elseif g_pUnit:GetPureDoubleLeft_LUA() == true then
		g_pUnit:StateChange_LUA( "RIDING_DASH" )
	elseif g_pUnit:GetPureDoubleRight_LUA() == true then
		g_pUnit:StateChange_LUA( "RIDING_DASH" )
-- dash end
	elseif g_pUnit:GetPureLeft_LUA() == true then
		g_pUnit:StateChange_LUA( "RIDING_WALK" )
	elseif g_pUnit:GetPureRight_LUA() == true then
		g_pUnit:StateChange_LUA( "RIDING_WALK" )
	elseif g_pUnit:GetPureUp_LUA() == true then
		g_pUnit:StateChange_LUA( "RIDING_JUMP_UP" )
	elseif g_pUnit:GetPureDown_LUA() == true and g_pUnit:CanDown_LUA() == true then
		g_pUnit:StateChange_LUA( "RIDING_JUMP_DOWN" )
		g_pUnit:AddPosY_LUA( -45.0 )
	elseif g_pUnit:GetCheckWaitHabitElapsedTime_LUA() == true and g_pUnit:IsAnimationEnd_LUA() == true then
		g_pUnit:StateChange_LUA( "RIDING_WAIT_HABIT" )
		g_pUnit:ResetWaitHabitElapsedTime_LUA()
	end
end
----

-- RidingOff --
RIDING_OFF = 
{
	ANIM_NAME			= "JumpDown",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	LAND_CONNECT		= TRUE,
	SPEED_X				= 0,

	FUNC_FRAME_MOVE		= "FUNC_FRAME_MOVE_RIDING_OFF",
}

function FUNC_FRAME_MOVE_RIDING_OFF( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )
	g_pUnit:StateChange_LUA( "WAIT" )
end
----

-- RidingWait --
RIDING_WAIT = 
{
	ANIM_NAME			= "Ride_1",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	LAND_CONNECT		= TRUE,
	SPEED_X				= 0,

	FUNC_EVENT_PROCESS	= "FUNC_EVENT_PROCESS_RIDING_WAIT",
}

function FUNC_EVENT_PROCESS_RIDING_WAIT( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )
	if g_pUnit:GetFootOnLine_LUA() == false then
		g_pUnit:StateChange_LUA( "RIDING_JUMP_DOWN" )
-- dash	start
	elseif g_pUnit:GetPureDoubleLeft_LUA() == true then
		g_pUnit:StateChange_LUA( "RIDING_DASH" )
	elseif g_pUnit:GetPureDoubleRight_LUA() == true then
		g_pUnit:StateChange_LUA( "RIDING_DASH" )
-- dash end
	elseif g_pUnit:GetPureLeft_LUA() == true then
		g_pUnit:StateChange_LUA( "RIDING_WALK" )
	elseif g_pUnit:GetPureRight_LUA() == true then
		g_pUnit:StateChange_LUA( "RIDING_WALK" )
	elseif g_pUnit:GetPureUp_LUA() == true then
		g_pUnit:StateChange_LUA( "RIDING_JUMP_UP" )
	elseif g_pUnit:GetPureDown_LUA() == true and g_pUnit:CanDown_LUA() == true then
		g_pUnit:StateChange_LUA( "RIDING_JUMP_DOWN" )
		g_pUnit:AddPosY_LUA( -45.0 )
	elseif g_pUnit:GetCheckWaitHabitElapsedTime_LUA() == true and g_pUnit:IsAnimationEnd_LUA() == true then
		g_pUnit:StateChange_LUA( "RIDING_WAIT_HABIT" )
		g_pUnit:ResetWaitHabitElapsedTime_LUA()
-- Riding Off
	elseif g_pUnit:GetRiding_LUA() == false then
		g_pUnit:StateChange_LUA( "RIDING_OFF" )
	end
end

-- RidingWalk --
RIDING_WALK = 
{
	ANIM_NAME			= "Ride_1",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	LAND_CONNECT		= TRUE,
	
	PASSIVE_SPEED_X		= INIT_PHYSIC["WALK_SPEED"] * 1.3,
	RIGHT_SYNC			= TRUE,

	FUNC_STATE_START	= "FUNC_STATE_START_RIDING_WALK",
	FUNC_FRAME_MOVE		= "FUNC_FRAME_MOVE_RIDING_WALK",
	FUNC_EVENT_PROCESS	= "FUNC_EVENT_PROCESS_RIDING_WALK",
}

function FUNC_STATE_START_RIDING_WALK( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )
	if g_pUnit ~= nil then 
		if g_pUnit:IsMyUnit() == true then 
			g_pUnit:PlaySound_LUA( "Step.ogg", false )
		end 
	end 
end 

function FUNC_FRAME_MOVE_RIDING_WALK( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )
-- dash	start
	if g_pUnit:GetPureDoubleLeft_LUA() == true then
		g_pUnit:SetRight_LUA( false )
		g_pUnit:StateChange_LUA( "RIDING_DASH" )
	elseif g_pUnit:GetPureDoubleRight_LUA() == true then
		g_pUnit:SetRight_LUA( true )
		g_pUnit:StateChange_LUA( "RIDING_DASH" )
-- dash end
	elseif g_pUnit:GetPureLeft_LUA() == true then
		g_pUnit:SetRight_LUA( false )
	elseif g_pUnit:GetPureRight_LUA() == true then
		g_pUnit:SetRight_LUA( true )
	end
end

function FUNC_EVENT_PROCESS_RIDING_WALK( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )
	if g_pUnit:GetFootOnLine_LUA() == false then
		g_pUnit:StateChange_LUA( "RIDING_JUMP_DOWN" )
	elseif g_pUnit:GetPureLeft_LUA() == false and g_pUnit:GetPureRight_LUA() == false then
		g_pUnit:StateChange_LUA( "RIDING_WAIT" )
	elseif g_pUnit:GetPureUp_LUA() == true then
		g_pUnit:StateChange_LUA( "RIDING_JUMP_UP" )
	elseif g_pUnit:GetPureDown_LUA() == true and g_pUnit:CanDown_LUA() == true then
		g_pUnit:AddPosY_LUA( -45 )
		g_pUnit:StateChange_LUA( "RIDING_JUMP_DOWN" )
	elseif g_pUnit:GetRiding_LUA() == false then
		g_pUnit:StateChange_LUA( "RIDING_OFF" )
	end
end
----

-- RidingWaitHabit --
RIDING_WAIT_HABIT = 
{
	ANIM_NAME			= "Ride_1",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	LAND_CONNECT		= TRUE,
	SPEED_X				= 0,

	FUNC_EVENT_PROCESS	= "FUNC_EVENT_PROCESS_RIDING_WAITHABIT",
	FUNC_FRAME_MOVE		= "FUNC_FRAME_MOVE_RIDING_WAITHABIT",
}

function FUNC_EVENT_PROCESS_RIDING_WAITHABIT( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )
	if g_pUnit:GetFootOnLine_LUA() == false then
		g_pUnit:StateChange_LUA( "RIDING_JUMP_DOWN" )
-- dash	start
	elseif g_pUnit:GetPureDoubleLeft_LUA() == true then
		g_pUnit:StateChange_LUA( "RIDING_DASH" )
	elseif g_pUnit:GetPureDoubleRight_LUA() == true then
		g_pUnit:StateChange_LUA( "RIDING_DASH" )
-- dash end
	elseif g_pUnit:GetPureLeft_LUA() == true then
		g_pUnit:StateChange_LUA( "RIDING_WALK" )
	elseif g_pUnit:GetPureRight_LUA() == true then
		g_pUnit:StateChange_LUA( "RIDING_WALK" )
	elseif g_pUnit:GetPureUp_LUA() == true then
		g_pUnit:StateChange_LUA( "RIDING_JUMP_UP" )
	elseif g_pUnit:GetPureDown_LUA() == true and g_pUnit:CanDown_LUA() == true then
		g_pUnit:StateChange_LUA( "RIDING_JUMP_DOWN" )
		g_pUnit:AddPosY_LUA( -45.0 )
-- Riding Off
	elseif g_pUnit:GetRiding_LUA() == false then
		g_pUnit:StateChange_LUA( "RIDING_OFF" )
	end
end

function FUNC_FRAME_MOVE_RIDING_WAITHABIT( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )
	if g_pUnit:IsAnimationEnd_LUA() == true then
		g_pUnit:StateChange_LUA( "RIDING_WAIT" )
	end
end
----

-- RidingJumpUp --
RIDING_JUMP_UP = 
{
	ANIM_NAME			= "Ride_1",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	LAND_CONNECT		= FALSE,

	PASSIVE_SPEED_X		= INIT_PHYSIC["WALK_SPEED"] * 1.05,
	SPEED_Y				= INIT_PHYSIC["JUMP_SPEED"] * 1.05,
	RIGHT_SYNC			= TRUE,

	FUNC_STATE_START	= "FUNC_STATE_START_RIDING_JUMP_UP",
	FUNC_FRAME_MOVE		= "FUNC_FRAME_MOVE_RIDING_JUMP_UP",
	FUNC_EVENT_PROCESS	= "FUNC_EVENT_PROCESS_RIDING_JUMP_UP",
}

function FUNC_STATE_START_RIDING_JUMP_UP( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )
	if g_pUnit ~= nil then 
		if g_pUnit:IsMyUnit() == true then 
			g_pUnit:PlaySound_LUA( "Step.ogg", false )
		end 
	end 
end 

function FUNC_FRAME_MOVE_RIDING_JUMP_UP( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )
	if g_pUnit:GetPureLeft_LUA() == true then
		g_pUnit:SetXSpeed_LUA( INIT_PHYSIC["WALK_SPEED"] )
		g_pUnit:SetRight_LUA( false )
	elseif g_pUnit:GetPureRight_LUA() == true then
		g_pUnit:SetXSpeed_LUA( INIT_PHYSIC["WALK_SPEED"] )
		g_pUnit:SetRight_LUA( true )
	else
		g_pUnit:SetXSpeed_LUA( 0 )
	end
end

function FUNC_EVENT_PROCESS_RIDING_JUMP_UP( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )
	if g_pUnit:GetYSpeed_LUA() <= 0 then
		g_pUnit:SetXSpeed_LUA( 0 )
		g_pUnit:StateChange_LUA( "RIDING_JUMP_DOWN" )
	end
end
----

-- RidingJumpDown --
RIDING_JUMP_DOWN = 
{
	ANIM_NAME			= "Ride_1",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	LAND_CONNECT		= FALSE,

	PASSIVE_SPEED_X		= INIT_PHYSIC["WALK_SPEED"] * 1.05,
	RIGHT_SYNC			= TRUE,

	FUNC_STATE_START	= "FUNC_STATE_START_RIDING_JUMP_DOWN",
	FUNC_FRAME_MOVE		= "FUNC_FRAME_MOVE_RIDING_JUMP_DOWN",
	FUNC_EVENT_PROCESS	= "FUNC_EVENT_PROCESS_RIDING_JUMP_DOWN",
}

function FUNC_STATE_START_RIDING_JUMP_DOWN( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )
	if g_pUnit ~= nil then 
		if g_pUnit:IsMyUnit() == true then 
			g_pUnit:PlaySound_LUA( "Step.ogg", false )
		end 
	end 
end 

function FUNC_FRAME_MOVE_RIDING_JUMP_DOWN( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )
	if g_pUnit:GetPureLeft_LUA() == true then
		g_pUnit:SetXSpeed_LUA( INIT_PHYSIC["WALK_SPEED"] )
		g_pUnit:SetRight_LUA( false )
	elseif g_pUnit:GetPureRight_LUA() == true then
		g_pUnit:SetXSpeed_LUA( INIT_PHYSIC["WALK_SPEED"] )
		g_pUnit:SetRight_LUA( true )
	else
		g_pUnit:SetXSpeed_LUA( 0 )
	end
end

function FUNC_EVENT_PROCESS_RIDING_JUMP_DOWN( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )
	if g_pUnit:GetYSpeed_LUA() > 0 then
		g_pUnit:SetXSpeed_LUA( 0 )
		g_pUnit:StateChange_LUA( "RIDING_JUMP_UP" )
	elseif g_pUnit:GetFootOnLine_LUA() == true then
		g_pUnit:SetXSpeed_LUA( 0 )
		g_pUnit:StateChange_LUA( "RIDING_WAIT" )
	end
end
----

-- RidingDash --
RIDING_DASH = 
{
	ANIM_NAME			= "Ride_1",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	LAND_CONNECT		= TRUE,

	PASSIVE_SPEED_X		= INIT_PHYSIC["RUN_SPEED"] * 1.3,
	RIGHT_SYNC			= TRUE,

	FUNC_STATE_START	= "FUNC_STATE_START_RIDING_DASH",
	FUNC_FRAME_MOVE		= "FUNC_FRAME_MOVE_RIDING_DASH",
	FUNC_EVENT_PROCESS	= "FUNC_EVENT_PROCESS_RIDING_DASH",
}

function FUNC_STATE_START_RIDING_DASH( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )
	if g_pUnit ~= nil then 
		if g_pUnit:IsMyUnit() == true then 
			g_pUnit:PlaySound_LUA( "Step.ogg", false )
		end 
	end 
end 

function FUNC_FRAME_MOVE_RIDING_DASH( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )
	if g_pUnit:GetPureDoubleLeft_LUA() == true then        
		g_pUnit:SetRight_LUA( false )
		g_pUnit:SetXSpeed_LUA( INIT_PHYSIC["RUN_SPEED"] * 1.3 )
	elseif g_pUnit:GetPureDoubleRight_LUA() == true then
		g_pUnit:SetRight_LUA( true )
		g_pUnit:SetXSpeed_LUA( INIT_PHYSIC["RUN_SPEED"] * 1.3 )
	end

	if g_pUnit:GetPureLeft_LUA() == true then
		if g_pUnit:GetRight_LUA() == true then
			g_pUnit:SetRight_LUA( false )
			g_pUnit:StateChange_LUA( "RIDING_WALK" )
		else
			g_pUnit:SetRight_LUA( false )
			g_pUnit:SetXSpeed_LUA( INIT_PHYSIC["RUN_SPEED"] * 1.3 )
		end
	elseif g_pUnit:GetPureRight_LUA() == true then
		if g_pUnit:GetRight_LUA() == false then
			g_pUnit:SetRight_LUA( true )
			g_pUnit:StateChange_LUA( "RIDING_WALK" )
		else
			g_pUnit:SetRight_LUA( true )
			g_pUnit:SetXSpeed_LUA( INIT_PHYSIC["RUN_SPEED"] * 1.3 )
		end
	end
end

function FUNC_EVENT_PROCESS_RIDING_DASH( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )
	if g_pUnit:GetFootOnLine_LUA() == false then
		g_pUnit:StateChange_LUA( "RIDING_DASH_JUMP_DOWN" )
	elseif g_pUnit:GetPureLeft_LUA() == false and g_pUnit:GetPureRight_LUA() == false then
		g_pUnit:StateChange_LUA( "RIDING_WAIT" )
	elseif g_pUnit:GetPureUp_LUA() == true then
		g_pUnit:StateChange_LUA( "RIDING_DASH_JUMP_UP" )
	elseif g_pUnit:GetPureDown_LUA() == true and g_pUnit:CanDown_LUA() == true then
		g_pUnit:AddPosY_LUA( -45 )
		g_pUnit:StateChange_LUA( "RIDING_DASH_JUMP_DOWN" )
	elseif g_pUnit:GetRiding_LUA() == false then
		g_pUnit:StateChange_LUA( "RIDING_OFF" )
	end
end
----

-- RidingDashJumpUp --
RIDING_DASH_JUMP_UP = 
{
	ANIM_NAME			= "Ride_1",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	LAND_CONNECT		= FALSE,

	PASSIVE_SPEED_X		= INIT_PHYSIC["RUN_SPEED"] * 1.05,
	SPEED_Y				= INIT_PHYSIC["JUMP_SPEED"] * 1.05,

	RIGHT_SYNC			= TRUE,

	FUNC_STATE_START	= "FUNC_STATE_START_RIDING_DASH_JUMP_UP",
	FUNC_FRAME_MOVE		= "FUNC_FRAME_MOVE_RIDING_DASH_JUMP_UP",
	FUNC_EVENT_PROCESS	= "FUNC_EVENT_PROCESS_RIDING_DASH_JUMP_UP",
}

function FUNC_STATE_START_RIDING_DASH_JUMP_UP( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )
	if g_pUnit ~= nil then 
		if g_pUnit:IsMyUnit() == true then 
			g_pUnit:PlaySound_LUA( "Step.ogg", false )
		end 
	end 
end 

function FUNC_FRAME_MOVE_RIDING_DASH_JUMP_UP( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )
	if g_pUnit:GetPureLeft_LUA() == true then
		g_pUnit:SetRight_LUA( false )
	elseif g_pUnit:GetPureRight_LUA() == true then
		g_pUnit:SetRight_LUA( true )
	end
end

function FUNC_EVENT_PROCESS_RIDING_DASH_JUMP_UP( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )
	if g_pUnit:GetYSpeed_LUA() <= 0 then
		g_pUnit:StateChange_LUA( "RIDING_DASH_JUMP_DOWN" )
	end
end
----

-- RidingDashJumpDown --
RIDING_DASH_JUMP_DOWN = 
{
	ANIM_NAME			= "Ride_1",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	LAND_CONNECT		= FALSE,

	PASSIVE_SPEED_X		= INIT_PHYSIC["RUN_SPEED"] * 1.05,
	RIGHT_SYNC			= TRUE,

	FUNC_FRAME_MOVE		= "FUNC_FRAME_MOVE_RIDING_DASH_JUMP_DOWN",
	FUNC_EVENT_PROCESS	= "FUNC_EVENT_PROCESS_RIDING_DASH_JUMP_DOWN",
	FUNC_STATE_END		= "FUNC_STATE_END_RIDING_DASH_JUMP_DOWN",
}

function FUNC_STATE_END_RIDING_DASH_JUMP_DOWN( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )
	if g_pUnit ~= nil then 
		if g_pUnit:IsMyUnit() == true then 
			g_pUnit:PlaySound_LUA( "Step.ogg", false )
		end 
	end 
end 

function FUNC_FRAME_MOVE_RIDING_DASH_JUMP_DOWN( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )
	if g_pUnit:GetPureLeft_LUA() == true then
		g_pUnit:SetRight_LUA( false )
	elseif g_pUnit:GetPureRight_LUA() == true then
		g_pUnit:SetRight_LUA( true )
	end
end

function FUNC_EVENT_PROCESS_RIDING_DASH_JUMP_DOWN( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )
	if g_pUnit:GetFootOnLine_LUA() == true then
		g_pUnit:StateChange_LUA( "RIDING_DASH" )
	end
end
----
------

-- 이모션 --
EMOTION_STATE = 
{
	ANIM_NAME			= "Emotion_Angry",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	LAND_CONNECT		= TRUE,
	
	SPEED_X				= 0,
	
	FUNC_EVENT_PROCESS	= "FUNC_EVENT_PROCESS_EMOTION",
	FUNC_FRAME_MOVE		= "FUNC_FRAME_MOVE_EMOTION",
}

EMOTION_ANGRY = 
{
	ANIM_NAME			= "Emotion_Angry",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	LAND_CONNECT		= TRUE,
	
	SPEED_X				= 0,
	
	FUNC_EVENT_PROCESS	= "FUNC_EVENT_PROCESS_EMOTION",
	FUNC_FRAME_MOVE		= "FUNC_FRAME_MOVE_EMOTION",
}

EMOTION_HELLO = 
{
	ANIM_NAME			= "Emotion_Hello",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	LAND_CONNECT		= TRUE,
	
	SPEED_X				= 0,
	
	FUNC_EVENT_PROCESS	= "FUNC_EVENT_PROCESS_EMOTION",
	FUNC_FRAME_MOVE		= "FUNC_FRAME_MOVE_EMOTION",
}

EMOTION_NO = 
{
	ANIM_NAME			= "Emotion_No",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	LAND_CONNECT		= TRUE,
	
	SPEED_X				= 0,
	
	FUNC_EVENT_PROCESS	= "FUNC_EVENT_PROCESS_EMOTION",
	FUNC_FRAME_MOVE		= "FUNC_FRAME_MOVE_EMOTION",
}

EMOTION_SAD = 
{
	ANIM_NAME			= "Emotion_Sad",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	LAND_CONNECT		= TRUE,
	
	SPEED_X				= 0,
	
	FUNC_EVENT_PROCESS	= "FUNC_EVENT_PROCESS_EMOTION",
	FUNC_FRAME_MOVE		= "FUNC_FRAME_MOVE_EMOTION",
}

EMOTION_SMILE = 
{
	ANIM_NAME			= "Emotion_Smile",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	LAND_CONNECT		= TRUE,
	
	SPEED_X				= 0,
	
	FUNC_EVENT_PROCESS	= "FUNC_EVENT_PROCESS_EMOTION",
	FUNC_FRAME_MOVE		= "FUNC_FRAME_MOVE_EMOTION",
}

EMOTION_SITREADY = 
{
	ANIM_NAME			= "Emotion_SitReady",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	LAND_CONNECT		= TRUE,
	
	SPEED_X				= 0,
	
	FUNC_EVENT_PROCESS	= "FUNC_EVENT_PROCESS_EMOTION",
	FUNC_FRAME_MOVE		= "FUNC_FRAME_MOVE_EMOTION_SIT",
}

EMOTION_SITWAIT = 
{
	ANIM_NAME			= "Emotion_SitWait",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_LOOP"],
	LAND_CONNECT		= TRUE,
	
	SPEED_X				= 0,
	
	FUNC_EVENT_PROCESS	= "FUNC_EVENT_PROCESS_EMOTION_SIT",
	--FUNC_STATE_END	= "FUNC_STATE_END_EMOTION",
}

EMOTION_STANDUP = 
{
	ANIM_NAME			= "Emotion_StandUp",
	PLAY_TYPE			= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	LAND_CONNECT		= TRUE,
	
	SPEED_X				= 0,
	
	--FUNC_EVENT_PROCESS	= "FUNC_EVENT_PROCESS_EMOTION",
	FUNC_FRAME_MOVE		= "FUNC_FRAME_MOVE_EMOTION",
}

function FUNC_EVENT_PROCESS_EMOTION( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )
	if g_pUnit:GetFootOnLine_LUA() == false then
		g_pUnit:StateChange_LUA( "JUMP_DOWN" )
-- dash	start
	elseif g_pUnit:GetPureDoubleLeft_LUA() == true then
		g_pUnit:StateChange_LUA( "DASH" )
	elseif g_pUnit:GetPureDoubleRight_LUA() == true then
		g_pUnit:StateChange_LUA( "DASH" )
-- dash end
	elseif g_pUnit:GetPureLeft_LUA() == true then
		g_pUnit:StateChange_LUA( "WALK" )
	elseif g_pUnit:GetPureRight_LUA() == true then
		g_pUnit:StateChange_LUA( "WALK" )
	elseif g_pUnit:GetPureUp_LUA() == true then
		g_pUnit:StateChange_LUA( "JUMP_UP" )
	elseif g_pUnit:GetPureDown_LUA() == true and g_pUnit:CanDown_LUA() == true then
		g_pUnit:StateChange_LUA( "JUMP_DOWN" )
		g_pUnit:AddPosY_LUA( -45.0 )
	end
end

function FUNC_FRAME_MOVE_EMOTION( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )
	if g_pUnit:IsAnimationEnd_LUA() == true then
		g_pUnit:StateChange_LUA( "WAIT" )
	end
end 

function FUNC_EVENT_PROCESS_EMOTION_SIT( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )
	if g_pUnit:GetFootOnLine_LUA() == false then
		if g_pUnit:GetRiding_LUA() == true then
			g_pUnit:StateChange_LUA( "RIDING_JUMP_DOWN" )
		else
			g_pUnit:StateChange_LUA( "JUMP_DOWN" )
		end
	elseif g_pUnit:GetPureDoubleLeft_LUA() == true or
			g_pUnit:GetPureDoubleRight_LUA() == true or
			g_pUnit:GetPureLeft_LUA() == true or
			g_pUnit:GetPureRight_LUA() == true or
			g_pUnit:GetPureUp_LUA() == true then
		g_pUnit:StateChange_LUA( "EMOTION_STANDUP" )
	elseif g_pUnit:GetPureDown_LUA() == true and g_pUnit:CanDown_LUA() == true then
		g_pUnit:StateChange_LUA( "EMOTION_STANDUP" )
	end
end

function FUNC_FRAME_MOVE_EMOTION_SIT( g_pKTDXApp, g_pMain, g_pSquareGame, g_pUnit )
	if g_pUnit:IsAnimationEnd_LUA() == true then
		g_pUnit:StateChange_LUA( "EMOTION_SITWAIT" )
	end
end