local checkFullName = "WarBand"
local shortName = "wb"
local parameters = { NerfedButtons.PARAMS.need }
                 
local checkFunction =
function(abilityId, params)
    local needWB = params[NerfedButtons.PARAMS.need]
    
    local hasWB = NerfedAPI.inWarBand()
    if needWB == "-" then
        return not hasWB
    end
    
    return hasWB
end

NerfedChecks.RegisterCheck(checkFullName, checkFunction, parameters, shortName)




















