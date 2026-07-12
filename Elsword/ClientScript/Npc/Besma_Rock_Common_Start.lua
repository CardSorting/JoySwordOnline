-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


INIT_SYSTEM = 
{
	UNIT_WIDTH		= 500.0,
	UNIT_HEIGHT		= 500.0,
	UNIT_LAYER		= X2_LAYER["XL_UNIT_0"],
	UNIT_SCALE		= 0.8,
	
	ALPHA_BLEND		= TRUE,
}


INIT_DEVICE = 
{
	READY_SOUND = 
	{
    },
	
	READY_XSKIN_MESH = 
	{
		"Besma_SC_001.x",
	    "stone_Common.x",
	},
}

INIT_MOTION = 
{
	MOTION_FILE_NAME		= "Besma_SC_001.x",
}

INIT_PHYSIC = 
{
	RELOAD_ACCEL				= 2000,
	G_ACCEL							= 4000,
	MAX_G_SPEED					= -2000,
			
	WALK_SPEED					= 0,
	RUN_SPEED						= 900,
	JUMP_SPEED					= 0,
	DASH_JUMP_SPEED			= 0,
}


INIT_COMPONENT = 
{
	MAX_HP							= 9225,
	MP_CHANGE_RATE			= 1,
	MP_CHARGE_RATE			= 130,
	
	USE_SLASH_TRACE			= FALSE,
	
--	SHADOW_SIZE					= 700,
--	SHADOW_FILE_NAME			= "shadow.dds",
	
	SMALL_HP_BAR_BLUE		= "Small_HP_bar_Blue.TGA",
	SMALL_HP_BAR_RED			= "Small_HP_bar_Red.TGA",
--	SMALL_HP_BAR_YELLOW 	= "Small_HP_bar_Yellow.TGA",
	
--	QUESTION_MARK_SEQ		= "QuestionMarkNPC",
--	EXCLAMATION_MARK_SEQ= "ExclamationMarkNPC",
		
	HYPER_MODE_COUNT		= 0,
	MAX_HYPER_MODE_TIME	= 30,
	
--	HEAD_BONE_NAME			= "",
		
	SHOW_ON_MINIMAP			= FALSE,
	
	FALL_DOWN						= FALSE,
}

INIT_STATE = 
{
    { STATE_NAME = "BESMA_ROCK_COMMON_START_WAIT",					LUA_FRAME_MOVE_FUNC 		= "BESMA_ROCK_COMMON_START_WAIT_FRAME_MOVE"		},	
	
	{ STATE_NAME = "BESMA_ROCK_COMMON_START_SCENE1",				LUA_STATE_START_FUNC		= "BESMA_ROCK_COMMON_START_SCENE1_STATE_START",
																											LUA_FRAME_MOVE_FUNC 		= "BESMA_ROCK_COMMON_START_SCENE1_FRAME_MOVE",
																											LUA_STATE_END_FUNC			= "BESMA_ROCK_COMMON_START_SCENE1_STATE_END",		},	
	{ STATE_NAME = "BESMA_ROCK_COMMON_START_SCENE2",				LUA_STATE_START_FUNC		= "BESMA_ROCK_COMMON_START_SCENE2_STATE_START",
																											LUA_FRAME_MOVE_FUNC 		= "BESMA_ROCK_COMMON_START_SCENE2_FRAME_MOVE",	},	
																											
	{ STATE_NAME = "BESMA_ROCK_COMMON_START_THROW",				LUA_STATE_END_FUNC			= "BESMA_ROCK_COMMON_START_THROW_STATE_END",		},	
																											
    { STATE_NAME = "BESMA_ROCK_COMMON_START_END",					LUA_STATE_START_FUNC		= "BESMA_ROCK_COMMON_START_END_STATE_START",},	
    
	START_STATE								= "BESMA_ROCK_COMMON_START_WAIT",
	SIEGE_STATE								= "BESMA_ROCK_COMMON_START_WAIT",
	
	SMALL_DAMAGE_LAND_FRONT		= "",
	SMALL_DAMAGE_LAND_BACK		= "",
	BIG_DAMAGE_LAND_FRONT			= "",
	BIG_DAMAGE_LAND_BACK				= "",
	DOWN_DAMAGE_LAND_FRONT		= "",
	DOWN_DAMAGE_LAND_BACK			= "",
	FLY_DAMAGE_FRONT					= "",
	FLY_DAMAGE_BACK						= "",
	SMALL_DAMAGE_AIR						= "",	
	BIG_DAMAGE_AIR							= "",
	DOWN_DAMAGE_AIR						= "",
	UP_DAMAGE									= "",
	DAMAGE_REVENGE						= "",
			
	DYING_LAND_FRONT						= "",
	DYING_LAND_BACK						= "",
	DYING_SKY									= "",
		
	REVENGE_ATTACK						= "",	
}

INIT_AI = 
{
	TARGET = 
	{
		TARGET_PRIORITY 			= TARGET_PRIORITY["TP_NEAR_FIRST"],
		TARGET_INTERVAL				= 3,		-- sec
		TARGET_NEAR_RANGE			= 200,		-- 이 거리보다 가까우면 TARGET_SUCCESS_RATE에 관계없이 무조건 타게팅된다
		TARGET_RANGE				= 10500,		-- cm
		TARGET_LOST_RANGE			= 10800,		-- cm
		TARGET_SUCCESS_RATE			= 100,  --100,		-- %
		ATTACK_TARGET_RATE			= 0,		-- 나를 공격한 유닛을 타게팅할 확률
		PRESERVE_LAST_TARGET_RATE	= 0,		-- 이전에 타게팅된 유닛을 계속 타게팅할 확률
	},

	CHASE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 600,
		DEST_GAP			= 150,	-- 목적지에서 이 거리 안에 있으면 도착했다고 판단한다
		MOVE_GAP			= 160,
		
		DIR_CHANGE_INTERVAL = 0.7,
		
		WALK_INTERVAL		= 3,
		NEAR_WALK_RATE		= 100,   --  70,
		FAR_WALK_RATE		= 100,   -- 30,
		
		JUMP_INTERVAL		= 5,
		UP_JUMP_RATE		= 100, -- 40,
		UP_DOWN_RATE		= 20,
		DOWN_JUMP_RATE		= 100,    --  20,
		DOWN_DOWN_RATE		= 40,
	},	
	
	PATROL_MOVE = 	
	{
		PATROL_BEGIN_RATE		= 100, --50,		
		PATROL_RANGE			= 200,
		PATROL_COOL_TIME		= 2,
		ONLY_THIS_LINE_GROUP	= TRUE,
	},
	
	ESCAPE_MOVE = 
	{		
		MOVE_SPLIT_RANGE	= 500,	-- cm
		ESCAPE_GAP			= 600,	-- 이 거리 보다 멀어지면 도망 성공
		
		WALK_INTERVAL		= 1.5,	-- 초
		NEAR_WALK_RATE		= 100,   --  10,
		FAR_WALK_RATE		= 100,   -- 10,
		
		JUMP_INTERVAL		= 10,
		UP_JUMP_RATE		= 100, -- 30,
		UP_DOWN_RATE		= 30,
		DOWN_JUMP_RATE		= 100,    --  30,
		DOWN_DOWN_RATE		= 30,
	},
	
	
}

------------------------------------------------------------------------------------
BESMA_ROCK_COMMON_START_WAIT = 
{
	ANIM_NAME									= "Wait",
	PLAY_TYPE									= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION									= FALSE,
			
	CAN_PUSH_UNIT							= FALSE,
	CAN_PASS_UNIT							= TRUE,	
			
	SPEED_X										= 0,
	SPEED_Y										= 0,
	
	--IMMADIATE_PACKET_SEND		= TRUE,
	NEVER_MOVE								= TRUE,
	ALLOW_DIR_CHANGE						= FALSE,
	VIEW_TARGET								= FALSE,
	EVENT_INTERVAL_TIME0				= 1,
}

BESMA_ROCK_COMMON_START_END = 
{   
	ANIM_NAME									= "End",
	PLAY_TYPE									= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION									= FALSE,
		
	CAN_PUSH_UNIT							= FALSE,
	CAN_PASS_UNIT							= TRUE,	
		
	SPEED_X										= 0,
	SPEED_Y										= 0,
			
	NEVER_MOVE								= TRUE,
	ALLOW_DIR_CHANGE						= FALSE,
	VIEW_TARGET								= FALSE,	
		
--	DYING_END									= TRUE,
		
	IMMADIATE_PACKET_SEND			= TRUE,
}

BESMA_ROCK_COMMON_START_SCENE1 = 
{
    ANIM_NAME									= "Wait",
	PLAY_TYPE									= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION									= FALSE,
		
	CAN_PUSH_UNIT							= FALSE,
	CAN_PASS_UNIT							= TRUE,
		
	NEVER_MOVE								= TRUE,
	ALLOW_DIR_CHANGE						= FALSE,
	VIEW_TARGET								= FALSE,
		
	IMMADIATE_PACKET_SEND			= TRUE,
		
	EVENT_INTERVAL_TIME0				= 1,	
	
	EVENT_PROCESS = 
	{
--		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BESMA_ROCK_COMMON_START_SCENE3",		},
--		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"BESMA_ROCK_COMMON_START_SCENE3",		"CT_BESMA_ROCK_COMMON_START_SCENE3",	},
	},
	
	CT_BESMA_ROCK_COMMON_START_SCENE3 =
	{
		ANIM_EVENT_TIMER	= 3.0,
		RATE						= 100,
	},
}

BESMA_ROCK_COMMON_START_SCENE2 = 
{
    ANIM_NAME									= "Wait",
	PLAY_TYPE									= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION									= FALSE,
		
	CAN_PUSH_UNIT							= FALSE,
	CAN_PASS_UNIT							= TRUE,
		
	NEVER_MOVE								= TRUE,
	ALLOW_DIR_CHANGE						= FALSE,
	VIEW_TARGET								= FALSE,
		
	IMMADIATE_PACKET_SEND			= TRUE,
		
	EVENT_INTERVAL_TIME0				= 1,	
	
	EVENT_PROCESS = 
	{
--		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BESMA_ROCK_COMMON_START_SCENE3",				},
	},
}

BESMA_ROCK_COMMON_START_THROW = 
{
    ANIM_NAME									= "Start",
	PLAY_TYPE									= XSKIN_ANIM_PLAYTYPE["XAP_ONE_WAIT"],
	TRANSITION									= FALSE,
		
	CAN_PUSH_UNIT							= FALSE,
	CAN_PASS_UNIT							= TRUE,
		
	NEVER_MOVE								= TRUE,
	ALLOW_DIR_CHANGE						= FALSE,
	VIEW_TARGET								= FALSE,
		
	IMMADIATE_PACKET_SEND			= TRUE,
		
	EVENT_INTERVAL_TIME0				= 1,	
	
	SOUND_PLAY0			= { 0.27, "Armadillo_Walk.ogg" },
	SOUND_PLAY1			= { 0.96, "Armadillo_Walk.ogg" },
	SOUND_PLAY2			= { 1.77, "Armadillo_Walk.ogg" },
	SOUND_PLAY3			= { 2.40, "Armadillo_Walk.ogg" },
	SOUND_PLAY4			= { 3.00, "ArmadilloKing_Walk.ogg" },
	SOUND_PLAY5			= { 3.03, "LizardHigh_Scream.ogg" },
	
	EVENT_PROCESS = 
	{
		{ STATE_CHANGE_TYPE["SCT_MOTION_END"],				"BESMA_ROCK_COMMON_START_END",				},
--		{ STATE_CHANGE_TYPE["SCT_CONDITION_TABLE"],		"BESMA_ROCK_COMMON_START_END",				"CT_BESMA_ROCK_COMMON_START_END",	},
	},
	
	CT_BESMA_ROCK_COMMON_START_END =
	{
		ANIM_EVENT_TIMER	= 5.0,
		RATE						= 100,
	},
}

------------------------------------------------------------------------------------
function BESMA_ROCK_COMMON_START_WAIT_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
    
    local bStart = pNPCUnit:GetFlag_LUA(0)
	if bStart == true then
		if pNPCUnit:GetSiegeMode() == true then
--			print("연출 시작")
			pNPCUnit:StateChange_LUA( "BESMA_ROCK_COMMON_START_SCENE2", false )
		else
--			print("연출 패스")
			pNPCUnit:StateChange_LUA( "BESMA_ROCK_COMMON_START_END", false )
		end
	end

end

function BESMA_ROCK_COMMON_START_TRAP_ON( pKTDXApp, pX2Game, pNPCUnit )

--	print("트랩 작동")
	
	pUID = pX2Game:GetNearNPCUnitUID_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_BESMA_ROCK_CONTROLER_COMMON"], 999999 )
	if pUID == 0 then
		pUID = pX2Game:GetNearNPCUnitUID_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_BESMA_ROCK_CONTROLER_EXTRA"], 999999 )
	end
	
	if pUID ~= 0 then
		pUnit = pX2Game:GetNPCUnitByUID(pUID)	                
		if pUnit ~= nil then

--			rockpos = pNPCUnit:GetBonePos_LUA("Object03")
			rockpos = pNPCUnit:GetPos()
			if pNPCUnit:GetSiegeMode() == true then
				pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID[ "NUI_BESMA_ROCK_COMMON" ], pNPCUnit:GetHardLevel(), false, rockpos, pNPCUnit:GetIsRight(), 0, true  )    
			else
				pX2Game:CreateNPCReq_LUA( NPC_UNIT_ID[ "NUI_BESMA_ROCK_BIG_COMMON" ], pNPCUnit:GetHardLevel(), false, rockpos, pNPCUnit:GetIsRight(), 0, true  )    
			end

			pUnit:SetFlag_LUA(1, true)		-- bRockCycle
		
		end        
	end
		
end

------------------------------------------------------------------------------------
function BESMA_ROCK_COMMON_START_CINEMA_MODE_ON( pKTDXApp, pX2Game, pNPCUnit )

	pSelf = pNPCUnit

	local pSlideShot = pX2Game:GetSlideShot()
	pSlideShot:ScenStart_LUA( "PF_BESMA_ROCK_COMMON_START_SCENE3_SHOT", 0 )
	--[[
	-- 그림자
	g_pUIDialog:SetName( "DLG_Dungeon_Ending_Event_Speech" )
	g_pUIDialog:SetPos( 0,0 )
	g_pUIDialog:SetModal( true )
	g_pUIDialog:SetFront( true )
	g_pUIDialog:SetLayer( X2_DIALOG_LAYER["XDL_POP_UP"] )

	g_pStaticSpeech = g_pUIDialog:CreateStatic()
	g_pUIDialog:AddControl( g_pStaticSpeech )
	g_pStaticSpeech:SetName( "Static_Ending_Speech" )

	g_pPictureSpeech_Shadow= g_pUIDialog:CreatePicture()
	g_pStaticSpeech:AddPicture(g_pPictureSpeech_Shadow)
	g_pPictureSpeech_Shadow:SetTex( "DLG_Common_New_Texture64.tga", "Shadow" )
	g_pPictureSpeech_Shadow:SetPoint
	{
	ADD_SIZE_X = 1024,
		USE_TEXTURE_SIZE = true,
		"LEFT_TOP		= D3DXVECTOR2(0,530)",
		"COLOR			= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		CHANGE_TIME		= 0.0,
	}
--]]
end

function BESMA_ROCK_COMMON_START_CINEMA_MODE_OFF( pKTDXApp, pX2Game, pNPCUnit )

	pSelf = nil

end

function BESMA_ROCK_COMMON_START_PAUSE_GAME( pX2Game )

	-- 모두 정지!
	if nil ~= pX2Game:GetMyUnit() then
		pX2Game:GetMyUnit():SetCanNotInputTime_LUA( 0.2 )
		pX2Game:PauseNPCAI( 0.2 )
	end 
	
end

------------------------------------------------------------------------------------
function BESMA_ROCK_COMMON_START_SCENE1_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	YRot 		= -90
	YRotTarget = -120
	YRotSpeed = -0.1
	
	LookAtOffset =
	{	X=0, Y=0, Z=0, 	}
	LookAtOffsetTarget =
	{	X=0, Y=500, Z=0, 	}
	LookAtOffsetSpeed =
	{	X=0, Y=10, Z=0, 	}	
	
end

function BESMA_ROCK_COMMON_START_SCENE1_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
			
	pUID = pX2Game:GetNearNPCUnitUID_LUA( pNPCUnit:GetPos(), NPC_UNIT_ID["NUI_BESMA_ROCK_CONTROLER_COMMON"], 999999 )
	if pUID ~= 0 then
		pUnit = pX2Game:GetNPCUnitByUID(pUID)	                
		if pUnit ~= nil then
			
			pos = D3DXVECTOR3( LookAtOffset.X, LookAtOffset.Y, LookAtOffset.Z )
			camera = pX2Game:GetX2Camera()
			camera:PartsLookDirectCamera_LUA( pUnit, pos, D3DXVECTOR3( 1500, 0, YRot ), D3DXVECTOR2( 0, 0 ) )
--			camera:NomalDirectCamera_LUA( pUnit, D3DXVECTOR3( 1500, 0, YRot ), D3DXVECTOR2( 0, 0 ) )

        end        
	end

	if LookAtOffset.Y < LookAtOffsetTarget.Y then
		LookAtOffset.Y = LookAtOffset.Y + LookAtOffsetSpeed.Y
	end
	if YRot > YRotTarget then
		YRot = YRot + YRotSpeed
	end
	
	BESMA_ROCK_COMMON_START_PAUSE_GAME( pKTDXApp, pX2Game, pNPCUnit )
	
end	

function BESMA_ROCK_COMMON_START_SCENE1_STATE_END( pKTDXApp, pX2Game, pNPCUnit )

	YRot = nil
	YRotTarget = nil
	YRotSpeed = nil
	
end

------------------------------------------------------------------------------------
function BESMA_ROCK_COMMON_START_SCENE2_STATE_START( pKTDXApp, pX2Game, pNPCUnit )

	BESMA_ROCK_COMMON_START_CINEMA_MODE_ON( pKTDXApp, pX2Game, pNPCUnit )
	
end

function BESMA_ROCK_COMMON_START_SCENE2_FRAME_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	    
    pos = pNPCUnit:GetBonePos_LUA("Bone01")
	camera = pX2Game:GetX2Camera()
	
    pUID = pX2Game:GetNearestUserUnitUID_LUA( pNPCUnit:GetPos(), 1, 999999 )
    if pUID ~= 0 then
        pUnit = pX2Game:GetUserUnitByUID(pUID)
        if pUnit ~= nil then
--			camera:NomalDirectCamera_LUA( pNPCUnit, D3DXVECTOR3( 0, 0, 0 ), D3DXVECTOR2( 1000, 500 ) )
--			camera:PartsLookDirectCamera_LUA( pNPCUnit, pos, D3DXVECTOR3( 500, -50, -2000 ), D3DXVECTOR2( 1000,500 ) )
--			camera:NomalTrackingCamera_LUA( pNPCUnit, D3DXVECTOR3( 0, 0, 0 ), D3DXVECTOR3( 0, 0.5,  0) )
        end
	end
	
--	BESMA_ROCK_COMMON_START_SCENE3_CAMERA_MOVE( pKTDXApp, pX2Game, pNPCUnit )
	
end	

------------------------------------------------------------------------------------
function BESMA_ROCK_COMMON_START_THROW_STATE_END( pKTDXApp, pX2Game, pNPCUnit )
	
	BESMA_ROCK_COMMON_START_CINEMA_MODE_OFF( pKTDXApp, pX2Game, pNPCUnit )
	
end

------------------------------------------------------------------------------------
function BESMA_ROCK_COMMON_START_SCENE2_CAMERA_MOVE( pX2DungeonGame, pNPCUnit )

	if bCameraFocus == true then
	
		if pNPCUnit ~= nil then
			pos = pNPCUnit:GetPos()
			pos.x = pos.x +  Scene3_CameraInfo.LookAtOffset.X
			pos.y = pos.y +  Scene3_CameraInfo.LookAtOffset.Y
			pos.z = pos.z +  Scene3_CameraInfo.LookAtOffset.Z

			camera = pX2DungeonGame:GetX2Camera()
			--camera:NomalDirectCamera_LUA( pNPCUnit, D3DXVECTOR3( 1500, Scene3_CameraInfo.Height, Scene3_CameraInfo.YRot ), D3DXVECTOR2( 0, 0 ) )
			camera:PartsLookDirectCamera_LUA( pNPCUnit, pos, D3DXVECTOR3( 1500, Scene3_CameraInfo.Height, Scene3_CameraInfo.YRot ), D3DXVECTOR2( 0, 0 ) )
			--camera:NomalTrackingCamera_LUA( pNPCUnit, D3DXVECTOR3( 1500, 200, 0 ), D3DXVECTOR3( 0, 0.3, 0 ) )
			--camera:NomalTrackingCamera_LUA( pNPCUnit, D3DXVECTOR3( 1500, Scene3_CameraInfo.Height, Scene3_CameraInfo.YRot ), D3DXVECTOR3( 0, 0, 0.5 ) )
			--camera:PartsLookTrackingCamera_LUA( pNPCUnit, pos, D3DXVECTOR3( 1500, Scene3_CameraInfo.Height, Scene3_CameraInfo.YRot ), D3DXVECTOR3( 0, 0, 0 ) )
		end
	
		--[[	
		if Scene3_CameraInfo.LookAtOffset.Y < Scene3_CameraInfo.LookAtOffsetTarget.Y then
			Scene3_CameraInfo.LookAtOffset.Y = Scene3_CameraInfo.LookAtOffset.Y + Scene3_CameraInfo.LookAtOffsetSpeed.Y
		end
		--]]
		if Scene3_CameraInfo.YRot < Scene3_CameraInfo.YRotTarget then
			Scene3_CameraInfo.YRot = Scene3_CameraInfo.YRot + Scene3_CameraInfo.YRotSpeed
		end
		if Scene3_CameraInfo.Height < Scene3_CameraInfo.HeightTarget then
			Scene3_CameraInfo.Height = Scene3_CameraInfo.Height + Scene3_CameraInfo.HeightSpeed
		end
	end
	
end

------------------------------------------------------------------------------------
Scene3_CameraInfo =
{
	YRot 		= -40,
	YRotTarget = 20,
	YRotSpeed = 0.1,
	
	Height				= 500,
	HeightTarget 		= 1800,
	HeightSpeed		= 3,
	
	LookAtOffset =
	{	X=0, Y=500, Z=0, 	},
	LookAtOffsetTarget =
	{	X=0, Y=500, Z=0, 	},
	LookAtOffsetSpeed =
	{	X=0, Y=10, Z=0, 	},
}

function BESMA_ROCK_COMMON_START_SCENE3_CAMERA_MOVE( pX2DungeonGame, pNPCUnit )

	if bCameraFocus == true then
	
		if pNPCUnit ~= nil then
			pos = pNPCUnit:GetPos()
			pos.x = pos.x +  Scene3_CameraInfo.LookAtOffset.X
			pos.y = pos.y +  Scene3_CameraInfo.LookAtOffset.Y
			pos.z = pos.z +  Scene3_CameraInfo.LookAtOffset.Z

			camera = pX2DungeonGame:GetX2Camera()
			--camera:NomalDirectCamera_LUA( pNPCUnit, D3DXVECTOR3( 1500, Scene3_CameraInfo.Height, Scene3_CameraInfo.YRot ), D3DXVECTOR2( 0, 0 ) )
			camera:PartsLookDirectCamera_LUA( pNPCUnit, pos, D3DXVECTOR3( 1500, Scene3_CameraInfo.Height, Scene3_CameraInfo.YRot ), D3DXVECTOR2( 0, 0 ) )
			--camera:NomalTrackingCamera_LUA( pNPCUnit, D3DXVECTOR3( 1500, 200, 0 ), D3DXVECTOR3( 0, 0.3, 0 ) )
			--camera:NomalTrackingCamera_LUA( pNPCUnit, D3DXVECTOR3( 1500, Scene3_CameraInfo.Height, Scene3_CameraInfo.YRot ), D3DXVECTOR3( 0, 0, 0.5 ) )
			--camera:PartsLookTrackingCamera_LUA( pNPCUnit, pos, D3DXVECTOR3( 1500, Scene3_CameraInfo.Height, Scene3_CameraInfo.YRot ), D3DXVECTOR3( 0, 0, 0 ) )
		end
	
		--[[	
		if Scene3_CameraInfo.LookAtOffset.Y < Scene3_CameraInfo.LookAtOffsetTarget.Y then
			Scene3_CameraInfo.LookAtOffset.Y = Scene3_CameraInfo.LookAtOffset.Y + Scene3_CameraInfo.LookAtOffsetSpeed.Y
		end
		--]]
		if Scene3_CameraInfo.YRot < Scene3_CameraInfo.YRotTarget then
			Scene3_CameraInfo.YRot = Scene3_CameraInfo.YRot + Scene3_CameraInfo.YRotSpeed
		end
		if Scene3_CameraInfo.Height < Scene3_CameraInfo.HeightTarget then
			Scene3_CameraInfo.Height = Scene3_CameraInfo.Height + Scene3_CameraInfo.HeightSpeed
		end
	end
	
end
	
function PF_BESMA_ROCK_COMMON_START_SCENE3_SHOT0( pKTDXApp, pX2DungeonGame, pX2Data, pSlideShot )
	
	if pSlideShot:EventTimer( 0.1 ) == true then				
		g_pDGManager:StartFadeOut( 0.2 )
	end

	if pSlideShot:EventTimer( 0.4 ) == true then

--[[
		pSlideShot:BlackLayOutMove( true, 0.01 )
		pSlideShot:SetNameTabShow( false )
		pSlideShot:SetSpeechBallonShow( false )
		pSlideShot:SetEnterShow( false )
		pSlideShot:SetTextBoxShow( true )
--]]
		bCameraFocus = true
		
	end
	
	if pSlideShot:EventTimer( 0.7 ) == true then
		g_pDGManager:StartFadeIn( 0.5 )
	end
		
	if pSlideShot:EventTimer( 1.5 ) == true then
			pSelf:StateChange_LUA( "BESMA_ROCK_COMMON_START_THROW", false )
	end
	
	if pSlideShot:EventTimer( 5.9 ) == true then
	
--[[
		pSlideShot:BlackLayOutMove( true, 0.01 )
--		pSlideShot:SetTextBoxShow( false )
		pSlideShot:SetNameTabShow( true )
		pSlideShot:SetSpeechBallonShow( true )
		pSlideShot:SetEnterShow( true )
--]]	
		bCameraFocus = false
		
		pSlideShot:ScenEnd()
		
	end
	
	BESMA_ROCK_COMMON_START_PAUSE_GAME( pX2DungeonGame )
	
	if bCameraFocus == true then
		if pSelf ~= nil then
			BESMA_ROCK_COMMON_START_SCENE3_CAMERA_MOVE( pX2DungeonGame, pSelf )
		end
	end
	
end

------------------------------------------------------------------------------------
function BESMA_ROCK_COMMON_START_END_STATE_START( pKTDXApp, pX2Game, pNPCUnit )
	
	-- 트랩 가동
	BESMA_ROCK_COMMON_START_TRAP_ON( pKTDXApp, pX2Game, pNPCUnit )

end