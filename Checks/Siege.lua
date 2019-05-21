local checkFullName = "Siege"
local shortName = "si"
local parameters = { NerfedButtons.PARAMS.need }
                 
local checkFunction =
function(abilityId, params)
    local needSiege = params[NerfedButtons.PARAMS.need]
    
    local hasSI = NerfedAPI.inSiege()
    if needSiege == "-" then
        return not hasSI
    end
    
    return hasSI
end

NerfedChecks.RegisterCheck(checkFullName, checkFunction, parameters, shortName)




















