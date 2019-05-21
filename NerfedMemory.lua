--[[
NerfedMemory deals with the storage of configuration
and cached action data.
]]--

-- ==========================
-- ===== Public members =====
-- ==========================

NerfedMemory = {
    Loaded     = false
}

-- ===========================
-- ===== Private members =====
-- ===========================

local nMp -- [p]layer bindings shortcut
local nMm -- [m]acro shortcut
local nMg -- [g]lobal config shortcut


-- ===========================
-- ===== Private methods =====
-- ===========================

local function deepcopy(object)
    local lookup_table = {}
    local function _copy(object)
        if type(object) ~= "table" then
            return object
        elseif lookup_table[object] then
            return lookup_table[object]
        end
        local new_table = {}
        lookup_table[object] = new_table
        for index, value in pairs(object) do
            new_table[_copy(index)] = _copy(value)
        end
        return setmetatable(new_table, _copy(getmetatable(object)))
    end
    return _copy(object)
end



-- ============================
-- ===== Internal methods =====
-- ============================

function NerfedMemory.Initialize()
    -- build cache
    if not NerfedMemory.actionDataCache then
        NerfedMemory.actionDataCache = {}
    end
    NerfedMemory.buildActionDataCache()
    
	-- build memory
	local ServerName = WStringToString(SystemData.Server.Name)
    local PlayerName = string.sub(WStringToString(GameData.Player.name), 1, -3)
	
	NerfedMemory.InitProfile()
    
    -- create global config table
    if not NerfedMemory.global then
        NerfedMemory.global = {}
    end
    nMg = NerfedMemory.global
    
    if not nMg.vcd then
        nMg.vcd = {}
    end
    
    if not nMg.dTarget then
        nMg.dTarget = {}
    end
    
    if not nMg.disabledDChecks then
        nMg.disabledDChecks = {}
    end
    
    if nMp and nMg and nMg.vcd and nMg.dTarget and nMg.disabledDChecks then
        NerfedMemory.Loaded = true
    end
    
    RegisterEventHandler(SystemData.Events.PLAYER_NEW_ABILITY_LEARNED,      "NerfedMemory.buildActionDataCache" )
    RegisterEventHandler(SystemData.Events.PLAYER_NEW_PET_ABILITY_LEARNED,  "NerfedMemory.buildActionDataCache" )
    RegisterEventHandler(SystemData.Events.PLAYER_ABILITIES_LIST_UPDATED,   "NerfedMemory.buildActionDataCache" )
    
    RegisterEventHandler(SystemData.Events.PLAYER_INVENTORY_SLOT_UPDATED,   "NerfedMemory.buildActionDataCache" )
    RegisterEventHandler(SystemData.Events.PLAYER_EQUIPMENT_SLOT_UPDATED,   "NerfedMemory.buildActionDataCache" )
    
    RegisterEventHandler(SystemData.Events.LOADING_END,      "NerfedMemory.buildActionDataCache" )    
    
    return NerfedMemory.Loaded
end

function NerfedMemory.InitProfile()
    if not NerfedMemory.profiles then
		NerfedMemory.profiles = {}
	end
	
	if not NerfedMemory.profiles.actual then
		NerfedMemory.profiles.actual = {}
	end
	
	if not NerfedMemory.profiles.current then
		NerfedMemory.profiles.current = {}
	end
    
    local ServerName = WStringToString(SystemData.Server.Name)
    local PlayerName = string.sub(WStringToString(GameData.Player.name), 1, -3)
    
    if not NerfedMemory.profiles.current[ServerName] then
        NerfedMemory.profiles.current[ServerName] = {}
    end
    if not NerfedMemory.profiles.current[ServerName][PlayerName] then
        NerfedMemory.profiles.current[ServerName][PlayerName] = NerfedMemory.CreateProfile(PlayerName.." @ "..ServerName)
    end
    
    NerfedMemory.SetupProfile()
end

function NerfedMemory.SetupProfile()
	-- update bindings
	if NerfedMemory.bindings then
		NerfedMemory.GetCurProfile().bindings = NerfedMemory.bindings
		NerfedMemory.bindings = nil
	end
	-- end update
    nMp = NerfedMemory.GetCurProfile().bindings
    
	-- update macros
	if NerfedMemory.macros then
		NerfedMemory.GetCurProfile().macros = NerfedMemory.macros
		NerfedMemory.macros = nil
	end
	-- end update
    nMm = NerfedMemory.GetCurProfile().macros
end

-- ==========================
-- ===== Public methods =====
-- ==========================

-- build a cache of all item and ability data
function NerfedMemory.buildActionDataCache()
    --d("NerfedButtons.buildActionDataCache()")
    local dataTables = nil
    
    -- set hasAction status of all actions to false
    for actionId, actionData in pairs(NerfedMemory.actionDataCache) do
        NerfedMemory.actionDataCache[actionId].hasAction = false
    end

    -- add items to cache
    if CharacterWindow then
        dataTables = {
            CharacterWindow.equipmentData,
            DataUtils.GetItems (),
            DataUtils.GetQuestItems ()
        }
    else 
        dataTables = {
            DataUtils.GetItems (),
            DataUtils.GetQuestItems ()
        }    
    end
    for tableId, dataTable in ipairs (dataTables) do
        for _, actionData in pairs(dataTable) do
            actionData.actionType = "item"
            actionData.hasAction = true
	    actionData.petAbility = false
            NerfedMemory.setActionDataCache(actionData.uniqueID, actionData) 
        end
    end
    
    -- add abilities to the cache
    dataTables = {
        Player.GetAbilityTable(GameData.AbilityType.STANDARD),
        Player.GetAbilityTable(GameData.AbilityType.GUILD),
        Player.GetAbilityTable(GameData.AbilityType.MORALE),
        Player.GetAbilityTable(GameData.AbilityType.FIRST),
        Player.GetAbilityTable(GameData.AbilityType.GRANTED),
        Player.GetAbilityTable(GameData.AbilityType.TACTIC)
    } 
    for tableId, dataTable in ipairs (dataTables) do
        for actionId, actionData in pairs(dataTable) do
            actionData.actionType = "ability"
            actionData.hasAction = true
	    actionData.petAbility = false
            NerfedMemory.setActionDataCache(actionId, actionData) 
        end
    end
    
    dataTables = {
        Player.GetAbilityTable(GameData.AbilityType.PET)
    } 
    for tableId, dataTable in ipairs (dataTables) do
        for actionId, actionData in pairs(dataTable) do
            actionData.actionType = "ability"
            actionData.hasAction = true
	    actionData.petAbility = true
            NerfedMemory.setActionDataCache(actionId, actionData) 
        end
    end
    

end


-- ActionDataCache wipe method
function NerfedMemory.clearActionDataCache()
    NerfedMemory.actionDataCache = {}
end

-- ActionDataCache set method
function NerfedMemory.setActionDataCache(actionId, theData)
    NerfedMemory.actionDataCache[actionId] = theData
end

-- ActionDataCache get method
function NerfedMemory.getActionDataCache(actionId)
    return NerfedMemory.actionDataCache[actionId]
end


-- Character wipe method
function NerfedMemory.ClearCharacterConfig()
    NerfedMemory.profiles.actual[NerfedMemory.GetCurProfileNum()].profiles = {}
    NerfedMemory.profiles.actual[NerfedMemory.GetCurProfileNum()].macros = {}
end

-- Profiles methods
function NerfedMemory.GetCurProfileNum()
    local ServerName = WStringToString(SystemData.Server.Name)
    local PlayerName = string.sub(WStringToString(GameData.Player.name), 1, -3)
    
    return NerfedMemory.profiles.current[ServerName][PlayerName]
end
function NerfedMemory.GetCurProfile()
    return NerfedMemory.profiles.actual[NerfedMemory.GetCurProfileNum()]
end

function NerfedMemory.CreateProfile(description)
    local i = 1
    while NerfedMemory.profiles.actual[i] do i = i+1 end
    NerfedMemory.profiles.actual[i] = {desc = description, bindings = {}, macros = {}}
    
    return i
end
function NerfedMemory.CopyProfile(description)
    local i = 1
    while NerfedMemory.profiles.actual[i] do i = i+1 end
    NerfedMemory.profiles.actual[i] = deepcopy(NerfedMemory.GetCurProfile())
    NerfedMemory.profiles.actual[i].desc = description
    
    return i
end
function NerfedMemory.SetProfileDesc(description)
    NerfedMemory.GetCurProfile().desc = description
end
function NerfedMemory.GetProfileDesc()
    return NerfedMemory.GetCurProfile().desc
end
function NerfedMemory.SwitchProfile(profile)
    if not NerfedMemory.profiles.actual[profile] then
        return nil
    end
    
    local ServerName = WStringToString(SystemData.Server.Name)
    local PlayerName = string.sub(WStringToString(GameData.Player.name), 1, -3)
    
    NerfedMemory.profiles.current[ServerName][PlayerName] = profile
    
    NerfedMemory.SetupProfile()
    return true
end
function NerfedMemory.DeleteProfile(profile)
    if not NerfedMemory.profiles.actual[profile] then
        return nil
    end
   
    for server, playerTable in pairs(NerfedMemory.profiles.current) do
        for player, curProfile in pairs(playerTable) do
            if profile == curProfile then return player.." @ "..server end
        end
    end
    
    NerfedMemory.profiles.actual[profile] = nil
    return true
end
function NerfedMemory.ForceDeleteProfile(profile)
    if not NerfedMemory.profiles.actual[profile] or profile == NerfedMemory.GetCurProfileNum() then
        return nil
    end
   
    for server, playerTable in pairs(NerfedMemory.profiles.current) do
        for player, curProfile in pairs(playerTable) do
            if profile == curProfile then
                NerfedMemory.profiles.current[server][player] = nil
            end
        end
    end
    
    return NerfedMemory.DeleteProfile(profile)
end
function NerfedMemory.ListProfiles()
    profiles = {}
   
    for key, profile in pairs(NerfedMemory.profiles.actual) do
        profiles[key] = profile.desc
    end
    
    return profiles
end


-- Bindings methods
function NerfedMemory.SetBinding(slot, sequence)
    local valid = true
    if sequence == {} then
        sequence = nil
        valid = false
    end
    nMp[slot] = sequence
    
    NerfedEngine.VCDNeedUpdate = true
    return valid
end

function NerfedMemory.GetBindings()
    return nMp
end

function NerfedMemory.GetBinding(slot)
    return nMp[slot]
end

function NerfedMemory.ClearBinding(slot)
    return NerfedMemory.SetBinding(slot, nil)
end

-- VCD methods
function NerfedMemory.SetCareerwideVCD(abilityId, cooldown)
    if cooldown == 0 then
        cooldown = nil
    end
    nMg.vcd[abilityId] = cooldown
    
    NerfedEngine.VCDNeedUpdate = true
    return true
end

function NerfedMemory.GetCareerwideVCDs()
    return nMg.vcd
end

function NerfedMemory.GetCareerwideVCD(abilityId)
    return nMg.vcd[abilityId]
end

function NerfedMemory.ClearCareerwideVCD(abilityId)
    return NerfedMemory.SetCareerwideVCD(abilityId, 0)
end

function NerfedMemory.ClearCareerwideVCDs()
    nMg.vcd = {}
    
    NerfedEngine.VCDNeedUpdate = true
end

-- Default target methods
function NerfedMemory.SetDefaultTarget(abilityId, dTarget)
    if not dTarget then
        nMg.dTarget[abilityId] = nil
        return true
    end
    
    dTarget = tostring(dTarget)
    local valid = false
    for _, target in pairs(NerfedButtons.TARGET) do
        if dTarget == target then
            nMg.dTarget[abilityId] = target
            valid = true
        end
    end
    if not valid then
        nMg.dTarget[abilityId] = nil
    end
    
    return valid
end

function NerfedMemory.GetDefaultTargets()
    return nMg.dTarget
end

function NerfedMemory.GetDefaultTarget(abilityId)
    return nMg.dTarget[abilityId]
end

function NerfedMemory.ClearDefaultTarget(abilityId)
    return NerfedMemory.SetDefaultTarget(abilityId, nil)
end

function NerfedMemory.ClearDefaultTargets()
    nMg.dTarget = {}
end

-- AutoDismount methods
function NerfedMemory.SetAutoDismount(autoDismount)
    if autoDismount then
        nMg.autoDismount = true
    else
        nMg.autoDismount = nil
    end
end

function NerfedMemory.GetAutoDismount()
    return nMg.autoDismount
end

-- Disabledbuttons methods
function NerfedMemory.SetDisabledButtons(disabledButtons)
    if disabledButtons then
        nMg.disabledButton = true
    else
        nMg.disabledButton = nil
    end
end

function NerfedMemory.GetDisabledButtons()
    return nMg.disabledButton
end

-- Blankbuttons methods
function NerfedMemory.SetBlankButtons(blankButtons)
    if blankButtons then
        nMg.blankbutton = true
    else
        nMg.blankbutton = nil
    end
end

function NerfedMemory.GetBlankButtons()
    return nMg.blankbutton
end

-- ActionBar pages support methods
function NerfedMemory.SetPagesSupport(pageSupport)
    if pageSupport then
        nMg.pageSupport = true
    else
        nMg.pageSupport = nil
    end
end

function NerfedMemory.GetPagesSupport()
    return nMg.pageSupport
end

-- Full StayOnCast methods
function NerfedMemory.SetFullStayOnCast(fullSoc)
    if fullSoc then
        nMg.fullStayOnCast = true
    else
        nMg.fullStayOnCast = nil
    end
end

function NerfedMemory.GetFullStayOnCast()
    return nMg.fullStayOnCast
end

-- Macros methods
function NerfedMemory.SetMacro(slot, macro)
    if macro and (macro < 1 or macro > 42) then
        macro = nil
    end
    nMm[slot] = macro
end

function NerfedMemory.ClearMacro(slot)
    NerfedMemory.SetMacro(slot, nil)
end

function NerfedMemory.GetMacros()
    return nMm
end

function NerfedMemory.GetMacro(slot)
    return nMm[slot]
end

-- Disable default checks methods
function NerfedMemory.ToggleDisableDCheck(check, abilityId, disable)
    if nMg.disabledDChecks[abilityId] and nMg.disabledDChecks[abilityId][check] then
        nMg.disabledDChecks[abilityId][check] = nil
        if nMg.disabledDChecks[abilityId] == {} then
            nMg.disabledDChecks[abilityId] = nil
        end
    else
        if not nMg.disabledDChecks[abilityId] then
            nMg.disabledDChecks[abilityId] = {}
        end
        nMg.disabledDChecks[abilityId][check] = true
    end
end

function NerfedMemory.ClearDisableDCheck(abilityId)
    nMg.disabledDChecks[abilityId] = nil
end

function NerfedMemory.GetDisableDCheck(check, abilityId)
    return nMg.disabledDChecks[abilityId] and nMg.disabledDChecks[abilityId][check]
end

function NerfedMemory.GetDisableDChecks()
    return nMg.disabledDChecks
end