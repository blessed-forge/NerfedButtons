local checkFullName = "AbilityEnabled"
local shortName = "ae"
local parameters = { NerfedButtons.PARAMS.ability, NerfedButtons.PARAMS.need }
                 
local checkFunction =
function(abilityId, params)
    local abilityId = params[NerfedButtons.PARAMS.ability]
    local needEnabled = params[NerfedButtons.PARAMS.need]
    
    local isEnabled = IsAbilityEnabled(abilityId)
    if needEnabled == "-" then
        return not isEnabled
    end
    
    return isEnabled
end

NerfedChecks.RegisterCheck(checkFullName, checkFunction, parameters, shortName)




















