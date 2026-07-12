-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


	
WAY_OF_SWORD =
{
	-- WSP 획득량 = (데미지 배율 * 파워레이트) * 스킬TYPE상수 * 상태변수 * 게임모드변수 

	-- 스킬TYPE상수
	SkillTypeConst_VigorCommand 		= 96,
	SkillTypeConst_VigorActive 			= 72,
	SkillTypeConst_VigorSpecialActive 	= 42,
	
	SkillTypeConst_DestCommand 			= 96,
	SkillTypeConst_DestActive 			= 72,
	SkillTypeConst_DestSpecialActive 	= 42,

	SkillTypeConst_DamageReact			= 36,

	-- 상태 변수
	StateConst_DestSkill_TowardVigorState 	= 1.3,
	StateConst_VigorSkill_TowardVigorState 	= -0.1,

	StateConst_DestSkill_TowardDestState 	= 0.13,
	StateConst_VigorSkill_TowardDestState	= -1,

	StateConst_DestSkill_InVigorState		= 0,
	StateConst_VigorSkill_InVigorState 		= -1.2,

	StateConst_DestSkill_InDestState		= 1.56,
	StateConst_VigorSkill_InDestState 		= 0,

	StateConst_DestSkill_CenterState		= 3.9,
	StateConst_VigorSkill_CenterState		= -3,

	StateConst_DamageReact_TowardVigorState	= 1,
	StateConst_DamageReact_TowrdDestState	= -1,
	StateConst_DamageReact_InVigorState		= -2,
	StateConst_DamageReact_InDestState		= 0,
	StateConst_DamageReact_CenterState		= 0,

	
	-- 게임모드 변수
	GameModeConst_NPC_Hit 				= 1,
	GameModeConst_PVP_Hit 				= 1.5,

	-- 그외의 상수
	Const_VigorStateThreshold			= 4800,
	Const_DestStateThreshold			= -4800,
	Const_DestRageWSPGain				= 1500,
	Const_DestRageWSPGain_Elesis		= 1500,


}
