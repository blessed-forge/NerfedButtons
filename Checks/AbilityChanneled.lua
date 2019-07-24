local checkFullName = "AbilityChanneled"
local shortName = "ac"
local parameters = { NerfedButtons.PARAMS.ability, NerfedButtons.PARAMS.need }
                 
local checkFunction =
function(abilityId, params)
    local abilityId = params[NerfedButtons.PARAMS.ability]
    local needEnabled = params[NerfedButtons.PARAMS.need]
    
    local isEnabled = ActionBars:GetActionCastTimer (abilityId) == 0
    isEnabled = not isEnabled
    if needEnabled == "-" then
        return not isEnabled
    end
    
    return isEnabled
end

NerfedChecks.RegisterCheck(checkFullName, checkFunction, parameters, shortName)




















