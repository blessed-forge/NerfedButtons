local checkFullName = "ActionPoints"
local shortName = "ap"
local parameters = { NerfedButtons.PARAMS.ap, NerfedButtons.PARAMS.need }
                 
local checkFunction =
function(abilityId, params)
    local ap = params[NerfedButtons.PARAMS.ap]
    local needAp = params[NerfedButtons.PARAMS.need]
    
    local hasAp = NerfedAPI.hasActionPoints(ap)
    if needAp == "-" then
        return not hasAp
    end
    
    return hasAp
end

NerfedChecks.RegisterCheck(checkFullName, checkFunction, parameters, shortName)




















