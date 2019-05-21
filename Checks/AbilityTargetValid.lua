local checkFullName = "AbilityTargetValid"
local shortName = "atv"
local parameters = { NerfedButtons.PARAMS.ability, NerfedButtons.PARAMS.need }
                 
local checkFunction =
function(abilityId, params)
    local abilityId = params[NerfedButtons.PARAMS.ability]
    local needTargetValid = params[NerfedButtons.PARAMS.need]
    
    local isValid = IsTargetValid(abilityId)
    if needTargetValid == "-" then
        return not isValid
    end
    
    return isValid
end

NerfedChecks.RegisterCheck(checkFullName, checkFunction, parameters, shortName)




















