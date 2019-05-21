local checkFullName = "Pet"
local shortName = "p"
local parameters = { NerfedButtons.PARAMS.need }
                 
local checkFunction =
function(abilityId, params)
    local needPet = params[NerfedButtons.PARAMS.need]
    
    local hasPet = NerfedAPI.hasPet()
    if needPet == "-" then
        return not hasPet
    end
    
    return hasPet
end

NerfedChecks.RegisterCheck(checkFullName, checkFunction, parameters, shortName)




















