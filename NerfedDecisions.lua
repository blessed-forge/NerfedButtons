-- ==========================
-- ===== Public members =====
-- ==========================

NerfedDecisions = {
    Loaded = false
}


-- ===========================
-- ===== Private members =====
-- ===========================

-- Shortcut function
local function say(text)
    NerfedTalks.Say(text)
end


-- ===========================
-- ===== Private methods =====
-- ===========================

local function isChanneled(abilityId)
    return NerfedMemory.getActionDataCache(abilityId).hasAPCostPerSecond or NerfedButtons.StayOnCast[abilityId]
end

local function isCheckPositive(abilityId, checkName, parameters)
    local check = NerfedChecks.GetCheck(checkName)
    if not check then
        return false
    end
    local i = 0
    while parameters[i] do
        if not check(abilityId, parameters[i]) then
            return false
        end
        i = i + 1
    end
    return true
end

local function testAction(data)

    local theId = nil
    if NerfedAPI.IsAbility(data[NerfedButtons.PARAMS.ability]) then
        theId = data[NerfedButtons.PARAMS.ability]
    elseif NerfedAPI.IsItem(data[NerfedButtons.PARAMS.item]) then
        theId = data[NerfedButtons.PARAMS.item]
        if not NerfedAPI.hasItem(theId) then
            return false
        end
    else
        return false
    end

    -- Basic checks --
    for checkName in pairs(NerfedChecks.BasicChecks) do
        local check = NerfedChecks.GetCheck(checkName)
        if not check(theId) then
            return false
        end
    end
    
    -- Custom checks --
    for checkName in pairs(NerfedChecks.CustomChecks) do
        if data[checkName] and not isCheckPositive(theId, checkName, data[checkName]) then
            return false
        end
    end
    
    -- Ability check --
    local abilityCheck = NerfedButtons.Checks[theId]
    if abilityCheck and not abilityCheck(data)then
        return false
    end
    
    return true
end


-- ============================
-- ===== Internal methods =====
-- ============================

function NerfedDecisions.Initialize()
    NerfedDecisions.Loaded = true
    return NerfedChecks.Loaded
end


-- ==========================
-- ===== Public methods =====
-- ==========================

-- Update a hotbar slot with an appropriate ability/item
function NerfedDecisions.Choose(Sequence)

    -- check if ANY ability is channelling
    -- needs to stay in front of the main decision loop 
    local abilityBeingCast = NerfedEngine.AbilityBeingCast()
    for _, _Ability in pairs(Sequence) do
        local abilityId = _Ability[NerfedButtons.PARAMS.ability]
        if not abilityId then
            continue
        end
        if abilityId == abilityBeingCast and isChanneled(_Ability[NerfedButtons.PARAMS.ability]) then
            -- ability needs StayOnCast
            return abilityId, GameData.PlayerActions.DO_ABILITY
        end
    end
    -- no ability needs StayOnCast ...
    
    -- loop through and test each action in the sequence
    for _, actionData in ipairs(Sequence) do
        local theId = nil
        local theAction = nil

        if NerfedAPI.IsAbility(actionData[NerfedButtons.PARAMS.ability]) then
            theId = actionData[NerfedButtons.PARAMS.ability]
            theAction = GameData.PlayerActions.DO_ABILITY
        elseif NerfedAPI.IsItem(actionData[NerfedButtons.PARAMS.item]) then
            theId = actionData[NerfedButtons.PARAMS.item]
            theAction = GameData.PlayerActions.USE_ITEM
        else
            continue
        end
        
        local match = testAction(actionData)
        
        if match then
            return theId, theAction
        end
    end
    
    -- AutoDismount integration
    -- if the player is under a mount effect then return the mount action
    if NerfedMemory.GetAutoDismount() then
        if NerfedEngine.GetMountId() ~=0 then
            if NerfedAPI.IsAbility(NerfedEngine.GetMountId()) then
                return NerfedEngine.GetMountId(), GameData.PlayerActions.DO_ABILITY
            elseif NerfedAPI.IsItem(NerfedEngine.GetMountId()) then
                return NerfedEngine.GetMountId(), GameData.PlayerActions.USE_ITEM
            end
        end
    end
    
    -- no ability ready
    return 0, GameData.PlayerActions.NONE
end