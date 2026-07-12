-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.

INIT_COMMON_DEVICE =
{
	READY_COMMON_TEXTURE = 
	{
		"Arme_Critical.dds",
		"Arme_Critical2.dds",
		"Arme_Damage_Center.dds",
		"Arme_Damage_Ring.dds",
		"Arme_FireballB2.dds",
		"Arme_FireballS2.dds",
		"Arme_Ring2.dds",
		"Arme_Ring2.dds",
		"Arme_SpecialAttack1.dds",
		"Arme_SpecialAttack3a-1.dds",
		"arrow01.dds",
		"blaze.dds",
		"BuffShield.dds",
		"BuffSword.dds",
		"ColorBallBlue.dds",
		"ColorBallFire.dds",
		"ColorBallGray.dds",
		"ColorBallRed.dds",
		"Curse01.dds",
		"Curse02.dds",
		"Damage_Center.dds",
		"Damage_Line.dds",
		"Damage_Ling.dds",
		"Danger_Arrow.dds",
		"Energy.dds",
		"EnergyBall.dds",
		"EnergyBallRed.dds",
		"Energy_Green.dds",
		"Energy_Violet.dds",
		"ExclamationMark.dds",
		"ExclamationMarkNPC.dds",
		"Explosion_Sphere.dds",
		"Ex_mark.dds",
		"Feather.dds",
		"Focusline.dds",
		"Gate_Light1.dds",
		"Gate_Light1_R.dds",
		"Gate_Light2.dds",
		"Gate_Light2_R.dds",
		"GroundShockWave.dds",
		"GuideArrow01.dds",
		"GuideArrow02.dds",
		"Headmarker_Blue.dds",
		"Headmarker_Blue_my.dds",
		"Headmarker_Red.dds",
		"Headmarker_Red_my.dds",
		"HoldCenter.dds",
		"HoldCircle.dds",
		"HQ_Failed.dds",
		"HQ_Fight.dds",
		"HQ_Level_Up.dds",
		"HQ_Lose.dds",
		"HQ_OutLine.tga",
		"HQ_Start.dds",
		"HQ_WhiteBack.dds",
		"HQ_Win.dds",
		"HummingWind04.dds",
		"Joystick_Left_64.dds",
		"Joystick_Right_64.dds",
		"linestar.dds",
		"MagnumBladeFireWave.dds",
		"Particle_Blur.dds",
		"Poison01.dds",
		"Poison02.dds",
		"QuestionMark.dds",
		"QuestionMarkNPC.dds",
		"Revenge.dds",
		"Ring.dds",
		"RingAlpha.dds",
		"SlashLight.dds",
		"smoke.dds",
		"smoke02.dds",
		"Spark01.dds",
		"Spark02.dds",
		"Spark03.dds",
		"Star.dds",
		"star1.dds",
		"star2.dds",
		"starPenBlue.dds",
		"starPenRed.dds",
		"Steam_BP.dds",
		"stone.dds",
		"STR_ChaAAk.dds",
		"STR_KAAng.dds",
		"STR_KuAAANG.dds",
		"STR_KuaAng.dds",
		"Sweat.dds",
		"ToKang.dds",
		"tutorial_misson_effect.dds",
		"WhiteCircle.dds",
		"WhitePoint.dds",
		"WhitePointSmall.dds",
		"HQ_GameDraw.dds",
		
		"HQ_CutIn_Talk_L_0.dds",
		"HQ_CutIn_Talk_L_1.dds",
		"HQ_CutIn_Talk_L_2.dds",
		"HQ_CutIn_Talk_R_0.dds",
		"HQ_CutIn_Talk_R_1.dds",
		"HQ_CutIn_Talk_R_2.dds",
		
		-- 인챈트 타격이펙트
		"MagnumBlaster01.dds",	-- 블레이즈
		
		"Flare_Raven_DashAttackX01", -- 쇼크
		"Light_Raven_DashAttackX02",
		"Light_Raven_DashAttackX03",
		
		"Lightning_Piercing01.dds",  -- 피어싱	
		
		"Plus_Red01.dds", -- 스내치 회복
		"Plus_Blue01.dds",	
		
		
	},
	
	READY_COMMON_SOUND = 
	{
		"Hit.wav",			        --맨손 킥공격에 의한 타격음
        "HitMetalPunch.wav",        -- 레이븐 강철 펀치 타격음
		"DieLight.ogg",				-- NPC 죽었을 때 나오는 빛
		"Revival.ogg",		
		"Slash.ogg",			
		"PowerSlash.ogg",		
		"HitSlash.wav",		
		"GroundHit.ogg",
		"Slash2.ogg",			
		"swordcrash.ogg",		
		"RevengeReady.ogg",			
		"Down.ogg",	              -- 작은 몸집 다운시
		"Down2.ogg",              -- 큰 몸집 다운시1
		"Down3.ogg",              -- 큰 몸집 다운시2		
		"Step.ogg",	              -- 통상 걸을때
        "Step2.ogg",			  -- 쇠바닥(비공정)  걸을때
		"Energy.ogg",			
		"Charge.ogg",			  -- 아이샤, 레나 기모을때 효과음
		"Break.ogg",			
		"wind.ogg",			
		"Change.ogg",			
		"fire.ogg",
		"fire2.ogg",
        "fireball.ogg",	
	    "flame.ogg",	
		"Fight.ogg",			
		"Win.ogg",			
		"Lose.ogg",
		"Hold.ogg",		          -- 기 홀드
		"Dama.ogg",               -- 각성 구슬 획득시 효과음
		"Slash4.ogg",
		"Stickslash1.ogg",			
		"StickSlash2.ogg",
		"Jumpland.ogg",             -- 작은몸집 통상 착지
		"Jumpland2.ogg",           -- 큰몸집 통상 착지
		"JumpLand3.ogg",            -- 쇠바닥 착지
		"Nasod_Engine_Big.ogg",
		"Nasod_Engine_Mid.ogg",
		"Nasod_Engine_Small.ogg",
		"Stone_Splash.ogg",
		"Explosion.ogg",
		
		"Boss_Finish.ogg",			-- 던전 클리어 연출시 사운드
		"Alarm_DialogueBox.ogg",	-- 던전 클리어 연출시 사운드
		
		
		"MiniGame_StageMove.ogg",	-- 아케이드 모드 스테이지 책장 넘길 때
		"HighJump.ogg",				-- 점프발판 밟았을 때 사운드
		
		"Pressed_Return.ogg",
		"Raven_DashAttack2.ogg",
		
		"Drain_HPMP.ogg",
		"Lightning_PiercingAttack.ogg",
		
	},
	
	READY_COMMON_XSKIN_MESH = 
	{
	},
	
	READY_COMMON_XMESH = 
	{		
	},
}
