local checkFullName = "Movement"
local shortName = "mov"
local parameters = { NerfedButtons.PARAMS.need }
                 
local checkFunction =
function(abilityId, params)
    local needMoving = params[NerfedButtons.PARAMS.need]
    
    local isMoving = NerfedAPI.isMoving()
    if needMoving == "-" then
        return not isMoving
    end
    
    return isMoving
end

NerfedChecks.RegisterCheck(checkFullName, checkFunction, parameters, shortName)




















