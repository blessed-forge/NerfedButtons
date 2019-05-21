local checkFullName = "Condition"
local shortName = "con"
local parameters = { NerfedButtons.PARAMS.condition, NerfedButtons.PARAMS.need, NerfedButtons.PARAMS.target }
                 
local checkFunction =
function(abilityId, params)
    local condition = params[NerfedButtons.PARAMS.condition]
    local needCondition = params[NerfedButtons.PARAMS.need]
    local target = params[NerfedButtons.PARAMS.target]
    
    if not target then
        target = NerfedAPI.GetDefaultTarget(abilityId)
    end
    
    local hasCondition = NerfedAPI.hasCondition(NerfedButtons.CONDITIONS[condition], target)
    if needCondition == "-" then
        return not hasCondition
    end
    
    return hasCondition
end

NerfedChecks.RegisterCheck(checkFullName, checkFunction, parameters, shortName)




















