local checkFullName = "Combat"
local shortName = "com"
local parameters = { NerfedButtons.PARAMS.need }
                 
local checkFunction =
function(abilityId, params)
    local needCombat = params[NerfedButtons.PARAMS.need]
    
    local inCombat = NerfedAPI.inCombat()
    if needCombat == "-" then
        return not inCombat
    end
    
    return inCombat
end

NerfedChecks.RegisterCheck(checkFullName, checkFunction, parameters, shortName)




















