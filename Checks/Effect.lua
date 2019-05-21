local checkFullName = "Effect"
local shortName = "e"
local parameters = { NerfedButtons.PARAMS.effect, NerfedButtons.PARAMS.stack, NerfedButtons.PARAMS.self, NerfedButtons.PARAMS.need, NerfedButtons.PARAMS.target, NerfedButtons.PARAMS.duration }
                 
local checkFunction =
function(abilityId, params)
    local effect = params[NerfedButtons.PARAMS.effect]
    local needEffect = params[NerfedButtons.PARAMS.need]
    
    local hasEffect = not NerfedChecks.GetCheck("Stack")(effect, params)
    if needEffect == "-" then
        return not hasEffect
    end
    
    return hasEffect
end

NerfedChecks.RegisterCheck(checkFullName, checkFunction, parameters, shortName)




















