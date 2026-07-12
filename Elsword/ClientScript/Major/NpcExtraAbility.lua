-- lua header. UTF-8 인코딩 인식을 위해 이 줄은 지우지 마세요.


g_pCX2NpcExtraAbility:AddNPCExtraAbility_LUA
{
       m_AbilityID = NPC_ABILITY_ID["NAI_BRAVE"],         --용맹한
       m_AbilityName = STR_ID_4356, --"용맹한",
       m_bFront = True,
       m_fPhysicAttackPercentUp = 0.3,
}

g_pCX2NpcExtraAbility:AddNPCExtraAbility_LUA
{
       m_AbilityID = NPC_ABILITY_ID["NAI_CLEVER"],         --영리한
       m_AbilityName = STR_ID_4357, --"영리한",
       m_bFront = True,
       m_fMagicAttackPercentUp = 0.3,
}

g_pCX2NpcExtraAbility:AddNPCExtraAbility_LUA
{
       m_AbilityID = NPC_ABILITY_ID["NAI_CRITICAL"],         --치명적인
       m_AbilityName = STR_ID_4358, --"치명적인",
       m_bFront = True,
       m_fCriticalPercent = 0.5,
}

g_pCX2NpcExtraAbility:AddNPCExtraAbility_LUA
{
       m_AbilityID = NPC_ABILITY_ID["NAI_QUICKER"],         --재빠른
       m_AbilityName = STR_ID_4359, --"재빠른",
       m_bFront = True,
       m_fAllSpeedUpPercentUp = 0.3,
}

g_pCX2NpcExtraAbility:AddNPCExtraAbility_LUA
{
       m_AbilityID = NPC_ABILITY_ID["NAI_PHYSIC_DEFENSE"],         --: 물리방어
       m_AbilityName = STR_ID_4360, --": 물리방어",
       m_fPhysicDefensePercentUp = 1,
}

g_pCX2NpcExtraAbility:AddNPCExtraAbility_LUA
{
       m_AbilityID = NPC_ABILITY_ID["NAI_MAGIC_DEFENSE"],         --: 마법방어
       m_AbilityName = STR_ID_4361, --": 마법방어",
       m_fMagicDefensePercentUp = 1,
}

g_pCX2NpcExtraAbility:AddNPCExtraAbility_LUA
{
       m_AbilityID = NPC_ABILITY_ID["NAI_SUPER_ARMOR"],         --: 슈퍼아머
       m_AbilityName = STR_ID_4362, --": 슈퍼아머",
       m_bAlwaysSuperArmor = True,
}

g_pCX2NpcExtraAbility:AddNPCExtraAbility_LUA
{
       m_AbilityID = NPC_ABILITY_ID["NAI_HEAVY"],         --: 고중량
       m_AbilityName = STR_ID_4363, --": 고중량",
       m_bHeavy = True,
}
