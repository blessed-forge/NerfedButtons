local checkFullName = "Scenario"
local shortName = "sc"
local parameters = { NerfedButtons.PARAMS.need }
                 
local checkFunction =
function(abilityId, params)
    local needScenario = params[NerfedButtons.PARAMS.need]
    
    local hasSC = NerfedAPI.inScenario()
    if needScenario == "-" then
        return not hasSC
    end
    
    return hasSC
end

NerfedChecks.RegisterCheck(checkFullName, checkFunction, parameters, shortName)




















