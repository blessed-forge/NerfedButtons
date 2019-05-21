local checkFullName = "AbilityOnCooldown"
local shortName = "acd"
local parameters = { NerfedButtons.PARAMS.ability, NerfedButtons.PARAMS.need }
                 
local checkFunction =
function(abilityId, params)
    local abilityId = params[NerfedButtons.PARAMS.ability]
    local needOnCooldown = params[NerfedButtons.PARAMS.need]
    
    local isOnCooldown = NerfedEngine.OnCooldown(abilityId)
    if needOnCooldown == "-" then
        return not isOnCooldown
    end
    
    return isOnCooldown
end

NerfedChecks.RegisterCheck(checkFullName, checkFunction, parameters, shortName)




















