NerfedAPI = {}

NerfedAPI.TIER = {
    -- Unit tiers
    SIMPLE    = "s",
    NORMAL    = "n",
    CHAMPION  = "c",
    HERO  	  = "h"
}

NerfedAPI.ARCHETYPE = {
    -- Basic archetypes
    TANK    = "tank",   -- Tank
    MDPS    = "mdps",   -- Melee DPS
    RPDPS   = "rpdps",  -- Ranged Physical DPS
    RMDPS   = "rmdps",  -- Ranged Magical DPS
    RSUPP   = "rsupp",  -- Ranged Support
    MSUPP   = "msupp",  -- Melee Support
    
    -- Composite archetypes
    MELEE   = "melee",  -- Melee
    CASTER  = "cast",   -- Caster
    DPS     = "dps",    -- DPS
    PDPS    = "pdps",   -- Physical DPS
    RDPS    = "rdps",   -- Ranged DPS
    SUPP    = "supp",   -- Support
    WU      = "wu",     -- Weapon user (MELEE + RPDPS)
    
    -- Other
    NPC     = "npc"
}

local nbArch = NerfedAPI.ARCHETYPE

NerfedAPI.compositeArchetype = {
    [nbArch.TANK]  = { nbArch.MELEE, nbArch.WU },
    [nbArch.RPDPS] = { nbArch.DPS, nbArch.PDPS, nbArch.RDPS, nbArch.WU },
    [nbArch.MDPS]  = { nbArch.MELEE, nbArch.DPS, nbArch.PDPS, nbArch.WU },
    [nbArch.RMDPS] = { nbArch.CASTER, nbArch.DPS, nbArch.RDPS },
    [nbArch.RSUPP] = { nbArch.CASTER, nbArch.SUPP },
    [nbArch.MSUPP] = { nbArch.MELEE, nbArch.CASTER, nbArch.SUPP, nbArch.WU }
}

NerfedAPI.careerDB = {
    -- Ranged physical DPS
    en  = GameData.CareerLine.ENGINEER,
    sw  = GameData.CareerLine.SHADOW_WARRIOR,
    sh  = GameData.CareerLine.SQUIG_HERDER,
    
    -- Tank
    ib  = GameData.CareerLine.IRON_BREAKER,
    bg  = GameData.CareerLine.BLACKGUARD,
    sm  = GameData.CareerLine.SWORDMASTER,
    bo  = GameData.CareerLine.BLACK_ORC,
    kbs = GameData.CareerLine.KNIGHT,
    chs = GameData.CareerLine.CHOSEN,
    
    -- Melee DPS
    wh  = GameData.CareerLine.WITCH_HUNTER,
    we  = GameData.CareerLine.WITCH_ELF,
    wl  = GameData.CareerLine.WHITE_LION,
    ma  = GameData.CareerLine.MARAUDER,
    sl  = GameData.CareerLine.SLAYER,
    chp = GameData.CareerLine.CHOPPA,
    
    -- Ranged support
    am  = GameData.CareerLine.ARCHMAGE,
    sha = GameData.CareerLine.SHAMAN,
    rp  = GameData.CareerLine.RUNE_PRIEST,
    zlt = GameData.CareerLine.ZEALOT,
    
    -- Ranged magical DPS
    bw  = GameData.CareerLine.BRIGHT_WIZARD,
    sor = GameData.CareerLine.SORCERER,
    mag = GameData.CareerLine.MAGUS,
    
    -- Melee support
    wp  = GameData.CareerLine.WARRIOR_PRIEST,
    dok = GameData.CareerLine.DISCIPLE,
    
    -- Other
    npc = 0,
    obj = -1
}

NerfedAPI.archetypeDB= {
    -- Ranged physical DPS
    [GameData.CareerLine.ENGINEER]         = nbArch.RPDPS,
    [GameData.CareerLine.SHADOW_WARRIOR]   = nbArch.RPDPS,
    [GameData.CareerLine.SQUIG_HERDER]     = nbArch.RPDPS,
    
    -- Tank
    [GameData.CareerLine.IRON_BREAKER]     = nbArch.TANK,
    [GameData.CareerLine.BLACKGUARD]       = nbArch.TANK,
    [GameData.CareerLine.SWORDMASTER]      = nbArch.TANK,
    [GameData.CareerLine.BLACK_ORC]        = nbArch.TANK,
    [GameData.CareerLine.KNIGHT]           = nbArch.TANK,
    [GameData.CareerLine.CHOSEN]           = nbArch.TANK,
    
    -- Melee DPS
    [GameData.CareerLine.WITCH_HUNTER]     = nbArch.MDPS,
    [GameData.CareerLine.WITCH_ELF]        = nbArch.MDPS,
    [GameData.CareerLine.WHITE_LION]       = nbArch.MDPS,
    [GameData.CareerLine.MARAUDER]         = nbArch.MDPS,
    [GameData.CareerLine.SLAYER]           = nbArch.MDPS,
    [GameData.CareerLine.CHOPPA]           = nbArch.MDPS,
    
    -- Ranged support
    [GameData.CareerLine.ARCHMAGE]         = nbArch.RSUPP,
    [GameData.CareerLine.SHAMAN]           = nbArch.RSUPP,
    [GameData.CareerLine.RUNE_PRIEST]      = nbArch.RSUPP,
    [GameData.CareerLine.ZEALOT]           = nbArch.RSUPP,
    
    -- Ranged magical DPS
    [GameData.CareerLine.BRIGHT_WIZARD]    = nbArch.RMDPS,
    [GameData.CareerLine.SORCERER]         = nbArch.RMDPS,
    [GameData.CareerLine.MAGUS]            = nbArch.RMDPS,
    
    -- Melee support
    [GameData.CareerLine.WARRIOR_PRIEST]   = nbArch.MSUPP,
    [GameData.CareerLine.DISCIPLE]    	   = nbArch.MSUPP,
    
    -- Other
    [NerfedAPI.careerDB.npc]               = nbArch.NPC,
    [NerfedAPI.careerDB.obj]               = nbArch.NPC
}


local function getActualTarget(target)
    if not target then
        return nil
    end
     
    local unitId
    if target == NerfedButtons.TARGET.ENEMY and NerfedAPI.hasEnemy() then
        return NerfedButtons.TARGET.ENEMY
    elseif target == NerfedButtons.TARGET.FRIEND and NerfedAPI.hasFriend() then
        return NerfedButtons.TARGET.FRIEND
    elseif target == NerfedButtons.TARGET.FRIEND or target == NerfedButtons.TARGET.PLAYER then
        return NerfedButtons.TARGET.PLAYER
    else
        return nil
    end
end


function NerfedAPI.GetDefaultTarget(actionId)
    
    -- items are only allowed to target the player at the moment...
    if NerfedAPI.IsItem(actionId) then
        return NerfedButtons.TARGET.PLAYER
    end

    if NerfedMemory.GetDefaultTarget(actionId) then
        return NerfedMemory.GetDefaultTarget(actionId)
    end
    
    if NerfedButtons.DefaultTarget[actionId] then
        for _, target in pairs(NerfedButtons.TARGET) do
            if NerfedButtons.DefaultTarget[actionId] == target then
                return target
            end
        end
    end
    
    local enemyBuffed = NerfedAPI.hasEffect(actionId, NerfedButtons.TARGET.ENEMY, 's').stackCount
    
    if NerfedAPI.isDebuff(actionId) or enemyBuffed > 0 then
        return NerfedButtons.TARGET.ENEMY
    else
        return NerfedButtons.TARGET.FRIEND
    end
end

--
function NerfedAPI.GetTargetId(target)
    target = getActualTarget(target)
    if target == NerfedButtons.TARGET.ENEMY then
        return TargetInfo:UnitEntityId (TargetInfo.HOSTILE_TARGET)
    elseif target == NerfedButtons.TARGET.FRIEND then
        return TargetInfo:UnitEntityId (TargetInfo.FRIENDLY_TARGET)
    else
        return 0
    end
end

-- Returns whether the ability is a buff or not
--
-- @param number the id of the ability to look up.
-- @return boolean true if the ability is a buff, false if not
function NerfedAPI.isBuff(actionId)
    local actionData = NerfedMemory.getActionDataCache(actionId)
    if not actionData then return false end
    return actionData.isBuff or actionData.isHealing or actionData.isBlessing
end

-- Returns whether the ability is a debuff/dot or not
--
-- @param number the id of the ability to look up.
-- @return boolean true if the ability is a debuff/dot, false if not
function NerfedAPI.isDebuff(actionId)
    local actionData = NerfedMemory.getActionDataCache(actionId)
    if not actionData then return false end
    return actionData.isHex or actionData.isCurse or actionData.isCripple
        or actionData.isAilment or actionData.isDebuff
end

-- Checks whether the target has a specific effect on them. 
--
-- @param mixed ability the id or name of the ability whose effect you want to check for.
-- @param string target one of the following NerfedButtons.API.PLAYER, NerfedButtons.API.FRIEND, NerfedButtons.API.ENEMY
-- @param boolean selfOnly set to true to only count self applied effects
-- @return boolean true if there is a match, false if not
-- @return number stack count applied by the player
-- @return number stack count applied by the others
function NerfedAPI.hasEffect(ability, target, selfOnly)

    -- get the id if we have a name
    if type(ability) ~= "number" then
        ability = GetActionIdFromName(tostring(ability))
    end
    
    local voidStack = { stackCount = 0 }
    target = getActualTarget(target)
    if not target then
        return voidStack, voidStack
    end
    
    -- perform test
    if NerfedEngine.GetEffects(target) and NerfedEngine.GetEffects(target)[ability] then
        if not selfOnly then
            return NerfedEngine.GetEffects(target)[ability].self, NerfedEngine.GetEffects(target)[ability].other
        elseif selfOnly == 's' then
            return NerfedEngine.GetEffects(target)[ability].self
        else
            return NerfedEngine.GetEffects(target)[ability].other
        end
    end
    
    return voidStack, voidStack
end


-- Checks whether the target has a specific condition on them. 
--
-- @param number condition the id of the condition you want to check for (NerfedButtons.API.CONDITIONS.HEX, NerfedButtons.API.CONDITIONS.CURSE, ...)
-- @param string target one of the following NerfedButtons.API.PLAYER, NerfedButtons.API.FRIEND, NerfedButtons.API.ENEMY
-- @return boolean true if there is a match, false if not
function NerfedAPI.hasCondition(condition, target)
    target = getActualTarget(target)
    if not target then
        return nil
    end
    
    if NerfedEngine.GetConditions(target) and NerfedEngine.GetConditions(target)[condition] then
        return true
    end
    return false
end


-- Returns whether we have a friend target or not.
--
-- Unlike the user interface, this function does NOT consider the Player to 
-- be a valid friend target and therefore this function will return false
-- if the Player is targetted.
--
-- @return boolean true if we have a friend target, false if not
function NerfedAPI.hasFriend()
    if TargetInfo.m_Units.selffriendlytarget ~=nil and TargetInfo.m_Units.selffriendlytarget.entityid ~=0 then
        if TargetInfo.m_Units.selffriendlytarget.entityid ~= GameData.Player.worldObjNum then
            return true
        end
    end
    return false
end


-- Returns whether we have a friend target and if the target is ourselves.
--
-- @return boolean true if we have a friend target and its ourself, false if not
function NerfedAPI.isFriend()
    if TargetInfo.m_Units.selffriendlytarget ~=nil and TargetInfo.m_Units.selffriendlytarget.entityid ~=0 then
        if TargetInfo.m_Units.selffriendlytarget.entityid == GameData.Player.worldObjNum then
            return true
        end
    end
    return false
end


-- Returns whether we have a enemy target or not.
--
-- @return boolean true if we have a hostile target, false if not
function NerfedAPI.hasEnemy()
    return TargetInfo.m_Units.selfhostiletarget ~=nil
           and TargetInfo.m_Units.selfhostiletarget.entityid ~=0
end


-- @return boolean true if the player has a pet out, false if not
function NerfedAPI.hasPet()
    return GameData.Player.Pet.name ~= L""
end


-- @return true if you are in combat mode.
function NerfedAPI.inCombat()
    return GameData.Player.inCombat
end

 function NerfedAPI.petHasTarget()
	return GameData.Player.Pet.Target.name  ~= L""
end


-- Returns true if the player has an equal or greater career mechanic value.
--
-- @param number value the mechanic points to check for.
-- @return boolean true if we have enough career mechanic, false if not
function NerfedAPI.hasMechanic(neededMechanic)

    -- make sure we get a number
    neededMechanic = tonumber(neededMechanic)
    
    -- Get career currentMechanic 
    local currentMechanic = tonumber(GetCareerResource( GameData.BuffTargetType.SELF ))
        
    -- archmage and shaman
    if GameData.Player.career.line == 20 or GameData.Player.career.line == 7 then
        if neededMechanic > 0 then
            -- AM: tranquility test
            neededMechanic = neededMechanic +5
            if currentMechanic >= neededMechanic then
                return true
            end
        else
            -- AM: force test
            neededMechanic = neededMechanic*-1
            if currentMechanic <= 5 and currentMechanic >= neededMechanic then
                return true
            end
        end
    -- zealot and runepriest
    elseif GameData.Player.career.line == 15 or GameData.Player.career.line == 3 then
    	return NerfedEngine.getRunepriestZealotMechanic() == neededMechanic
    else    
        -- other careers
        if currentMechanic >= neededMechanic then
            return true
        end
    end
    return false
end


-- Returns whether we have a specific number of hitpoints or not.
--
-- @return boolean true if we have, false if not
function NerfedAPI.hasHitPoints(value)
    return GameData.Player.hitPoints.current >= value
end

-- Returns whether we have a specific percentage of hitpoints or not.
--
-- @return boolean true if we have, false if not
function NerfedAPI.hasHitPointsPercent(percent, target)
    target = getActualTarget(target)
    
    if target == NerfedButtons.TARGET.FRIEND then
        return TargetInfo:UnitHealth(TargetInfo.FRIENDLY_TARGET) >= percent
    elseif target == NerfedButtons.TARGET.ENEMY then
        return TargetInfo:UnitHealth(TargetInfo.HOSTILE_TARGET) >= percent
    else
        return (GameData.Player.hitPoints.current/GameData.Player.hitPoints.maximum * 100) >= percent
    end
end


-- Returns whether we have a specific string in the name of our target.
--
-- @return boolean true if we have, false if not
function NerfedAPI.hasName(text, target)
    local target = getActualTarget(target)
    local targetName = ""
    
    if target == NerfedButtons.TARGET.FRIEND then
        targetName = TargetInfo:UnitName(TargetInfo.FRIENDLY_TARGET) 
    elseif target == NerfedButtons.TARGET.ENEMY then
        targetName = TargetInfo:UnitName(TargetInfo.HOSTILE_TARGET) 
    else
        targetName = GameData.Player.name
    end
    
    local index = string.find(WStringToString(targetName), text) 
    if not index then
        return false
    end
    return true
end

-- Returns whether player is in a siege.
--
-- @return boolean true if we have, false if not
function NerfedAPI.inSiege()
    return GameData.Player.isInSiege
end

-- Returns whether player is in a scenario.
--
-- @return boolean true if we have, false if not
function NerfedAPI.inScenario()
    return GameData.Player.isInScenario
end

-- Returns whether player is in a warband.
--
-- @return boolean true if we have, false if not
function NerfedAPI.inWarBand()
    return IsWarBandActive()
end


-- Returns whether the player is RVR flagged.
--
-- @return boolean true if we have, false if not
function NerfedAPI.isRVR()
    return GameData.Player.rvrZoneFlagged
end


-- Returns whether your friendly target is in your party.
--
-- @return boolean true if we have, false if not
function NerfedAPI.inMyParty()
    if not NerfedAPI.hasFriend() then return true end
    local targetName = TargetInfo:UnitName(TargetInfo.FRIENDLY_TARGET) 
    if GroupWindow.IsPlayerInGroup( targetName ) then
        return true
    end
    return false
end

-- Returns whether you are in a party.
--
-- @return boolean true if we have, false if not
function NerfedAPI.inAParty()
    return GetNumGroupmates() > 0
end



-- Returns whether we have a specific number of action points or not.
--
-- @return boolean true if we have, false if not
function NerfedAPI.hasActionPoints(value) 
    return GameData.Player.actionPoints.current >= value
end


-- Returns whether the player us moving or not
--
-- @return boolean true if player is moving, flase if not
function NerfedAPI.isMoving() 
    return NerfedEngine.PlayerMoving()
end


-- Retrieves the career number of the target
--
-- @param string target one of the following NerfedButtons.API.PLAYER, NerfedButtons.API.FRIEND, NerfedButtons.API.ENEMY
-- @return number if the target is valid, the number of it's career (0 for npcs), nil otherwise
function NerfedAPI.getCareer(target)
    target = getActualTarget(target)
    if not target then
        return nil
    end
     
    local unitId
    if target == NerfedButtons.TARGET.ENEMY then
        unitId = TargetInfo.HOSTILE_TARGET
    elseif target == NerfedButtons.TARGET.FRIEND then
        unitId = TargetInfo.FRIENDLY_TARGET
    elseif target == NerfedButtons.TARGET.PLAYER then
        return GameData.Player.career.line
    else
        return nil
    end
    
    if TargetInfo:UnitIsNPC(unitId) then
        return NerfedAPI.careerDB.npc
    end
    
    local careerId = TargetInfo:UnitCareer(unitId)
    if careerId == 0 then
        return NerfedAPI.careerDB.obj
    else
        return TargetInfo:UnitCareer(unitId)
    end
end

-- Checks if the target belongs to a specific career
--
-- @param mixed career the short name (see careerDB) or the id of the career to check against
-- @param string target one of the following NerfedButtons.API.PLAYER, NerfedButtons.API.FRIEND, NerfedButtons.API.ENEMY
-- @return bool nil if the target or the careerLine is invalid, true if there is a match, false otherwise 
function NerfedAPI.isCareer(career, target)
    if type(career) ~= "number" then
        career = NerfedAPI.careerDB[tostring(career)]
    end
    local targetCareer = NerfedAPI.getCareer(target)
    if not targetCareer or not career then
        return nil
    end
    
    return career == targetCareer
end


-- Checks if the target belongs to an archetype or composite archetype
--
-- @param number archetype one of the archetypes in NerfedButtons.API.ARCHETYPE (NerfedButtons.API.ARCHETYPE.TANK, NerfedButtons.API.ARCHETYPE.MELEE, ...)
-- @param string target one of the following NerfedButtons.API.PLAYER, NerfedButtons.API.FRIEND, NerfedButtons.API.ENEMY
-- @return bool nil if the target or the archetype is invalid, true if there is a match, false otherwise
function NerfedAPI.isArchetype(archetype, target)
    local targetCareer = NerfedAPI.getCareer(target)
    if not targetCareer or not archetype then
        return nil
    end
    
    local targetBasicArchetype = NerfedAPI.archetypeDB[targetCareer]

    if archetype == targetBasicArchetype then
        return true
    elseif NerfedAPI.compositeArchetype[targetBasicArchetype] then
        for _, targetCompositeArchetype in pairs(NerfedAPI.compositeArchetype[targetBasicArchetype]) do
            if archetype == targetCompositeArchetype then return true end
        end
    end
    
    return false
end


function NerfedAPI.getEnemyTier()

	local unitId = TargetInfo.HOSTILE_TARGET

	if not TargetInfo:UnitIsNPC(unitId) then
	    return nil
	end

	return TargetInfo:UnitTier(unitId)

end


-- Generic API function that can be used to determine if either an item or an ability is enabled
-- @params number id the id of the item or ability
-- @return boolean true if enabled, false if not
function NerfedAPI.isEnabled(id)

    if not id then
        return false
    end
    
    if NerfedAPI.IsAbility(id) then
        if not NerfedAPI.hasAbility(id) then return false end
        return IsAbilityEnabled(id)
    elseif NerfedAPI.IsItem(id) then
        if not NerfedAPI.hasItem(id) then return false end
        NerfedEngine.OnCooldown(id)
        local actionData = NerfedMemory.getActionDataCache(id)
        if not actionData then return false end
        local cd = actionData.cooldown
        if not cd or cd == 0 then
            return true
        end
    end
    return false
end


-- Returns whether the id is that of an item or an ability
--
-- This function utilises the NerfedMemory action cache.
--
-- @param number actionId the id of the action to look up.
-- @param string item/ability/
-- @return true if the action is of the provided type, false if not.
-- @see NerfedMemory.getActionDataCache(actionId)
function NerfedAPI.isActionType(actionId, actionType)
    local actionData = NerfedMemory.getActionDataCache(actionId)
    if not actionData then return false end -- race condition...
    if actionData.actionType == actionType then
        return true
    else
        return false
    end
end

-- Returns whether the id is that of an ability
-- @param number actionId the id of the ability
-- @return true if the action is that of an ability.
function NerfedAPI.IsAbility(actionId)
    if not actionId then return false end
    return NerfedAPI.isActionType(actionId, "ability")
end

-- Returns whether the id is that of a pet ability
-- @param number actionId the id of the ability
-- @return true if the action is that of an ability.
function NerfedAPI.IsPetAbility(actionId)
    if not actionId then return false end
    local actionData = NerfedMemory.getActionDataCache(actionId)
    if not actionData then return false end -- race condition...
    if actionData.actionType == "ability" then
	if actionData.petAbility == true then
		return true
	else
		return false
	end
    else
        return false
    end
end


-- Returns whether the id is that of an item
-- @param number actionId the id of the item
-- @return true if the action is that of an item.
function NerfedAPI.IsItem(actionId)
    if not actionId then return false end
    return NerfedAPI.isActionType(actionId, "item")
end


-- Checks if you still have a specific item
-- @param id the id to look up.
-- @return boolean true for if you still have the item, false if not
function NerfedAPI.hasItem(theId)
    if NerfedMemory.getActionDataCache(theId).hasAction then return true end
    return false
end

-- Checks if you still have a specific ability
-- @param id the id to look up.
-- @return boolean true for if you still have the item, false if not
function NerfedAPI.hasAbility(theId)
    if NerfedMemory.getActionDataCache(theId).hasAction then return true end
    return false
end