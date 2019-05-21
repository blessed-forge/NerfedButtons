local checkFullName = "InAParty"
local shortName = "iap"
local parameters = { NerfedButtons.PARAMS.need }
                 
local checkFunction =
function(abilityId, params)
    local needInAParty = params[NerfedButtons.PARAMS.need]
    
    local hasIAP = NerfedAPI.inAParty()
    if needInAParty == "-" then
        return not hasIAP
    end
    
    return hasIAP
end

NerfedChecks.RegisterCheck(checkFullName, checkFunction, parameters, shortName)




















