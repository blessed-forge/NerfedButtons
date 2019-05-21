local checkFullName = "InMyParty"
local shortName = "imp"
local parameters = { NerfedButtons.PARAMS.need }
                 
local checkFunction =
function(abilityId, params)
    local needInMyParty = params[NerfedButtons.PARAMS.need]
    
    local hasIMP = NerfedAPI.inMyParty()
    if needInMyParty == "-" then
        return not hasIMP
    end
    
    return hasIMP
end

NerfedChecks.RegisterCheck(checkFullName, checkFunction, parameters, shortName)




















