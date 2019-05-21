-- ==========================
-- ===== Public members =====
-- ==========================

NerfedChecks = {
    BasicChecks = {
        TargetValidity = {},
        IsEnabled = {},
        Cooldown = {},
        DefaultVirtualCooldown = {}
    },
    CustomChecks = {},
    ShortNames = {

    },    
    Loaded = false
}


-- ===========================
-- ===== Private members =====
-- ===========================

local Checks = {}


-- ===========================
-- ===== Private methods =====
-- ===========================
-- Basic checks
function Checks.TargetValidity(id)
    if not (NerfedAPI.IsAbility(id) or NerfedAPI.IsItem(id)) or (NerfedMemory.GetDisableDCheck("target", id) or NerfedAPI.IsPetAbility(id)) then return true end
    if NerfedAPI.IsItem(id) then return true end -- we dont check target on items... (may need to rethink this in future)
    local tv1,tv2 = IsTargetValid(id)
    if tv1 then
        return true
    end
    return false
    --return (tv1 and tv2)
end

function Checks.IsEnabled(id)
    if(NerfedAPI.IsPetAbility(id) and NerfedAPI.hasPet() and NerfedAPI.petHasTarget()) then return true end
    if NerfedMemory.GetDisableDCheck("enabled", id) then return true end
    return NerfedAPI.isEnabled(id)
end

function Checks.Cooldown(id)
    if NerfedMemory.GetDisableDCheck("cooldown", id) then return true end
    return not NerfedEngine.OnCooldown(id)
end

function Checks.DefaultVirtualCooldown(id)
    local target = NerfedAPI.GetDefaultTarget(id)
    local cooldown = NerfedMemory.GetCareerwideVCD(id)
    if not cooldown then return true end
    return not NerfedEngine.OnVirtualCDown(id, cooldown, target)
end

-- ============================
-- ===== Internal methods =====
-- ============================

function NerfedChecks.Initialize()
    NerfedChecks.Loaded = true
    return NerfedChecks.Loaded
end


-- ==========================
-- ===== Public methods =====
-- ==========================

function NerfedChecks.GetCheck(checkName)
    return Checks[checkName]
end

function NerfedChecks.RegisterCheck(checkName, check, params, shortName)
    if not checkName or type(checkName) ~= "string" then
        return
    end
    if not params or type(params) ~= "table" then
        return
    end
    if not check or type(check) ~= "function" then
        return
    end
    
    NerfedChecks.CustomChecks[checkName] = params
    Checks[checkName] = check
    if shortName and type(shortName) == "string" and shortName ~= ""
            and not NerfedChecks.ShortNames[shortName] then
        NerfedChecks.ShortNames[shortName] = checkName
    end
end