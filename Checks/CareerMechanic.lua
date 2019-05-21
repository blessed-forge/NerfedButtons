local checkFullName = "CareerMechanic"
local shortName = "cm"
local parameters = { NerfedButtons.PARAMS.mechanic, NerfedButtons.PARAMS.need }
                 
local checkFunction =
function(abilityId, params)
    local requiredMechanic = params[NerfedButtons.PARAMS.mechanic]
    local needMechanic = params[NerfedButtons.PARAMS.need]
    
    local hasMechanic = NerfedAPI.hasMechanic(requiredMechanic)
    if needMechanic == "-" then
        return not hasMechanic
    end
    
    return hasMechanic
end

NerfedChecks.RegisterCheck(checkFullName, checkFunction, parameters, shortName)




















