local checkFullName = "Career"
local shortName = "c"
local parameters = { NerfedButtons.PARAMS.career, NerfedButtons.PARAMS.need, NerfedButtons.PARAMS.target }
                 
local checkFunction =
function(abilityId, params)
    local career = params[NerfedButtons.PARAMS.career]
    local needCareer = params[NerfedButtons.PARAMS.need]
    local target = params[NerfedButtons.PARAMS.target]
    
    if not target then
        target = NerfedAPI.GetDefaultTarget(abilityId)
    end
    
    local isCareer = NerfedAPI.isCareer(career, target)
    if needCareer == "-" then
        return not isCareer
    end
    
    return isCareer
end

NerfedChecks.RegisterCheck(checkFullName, checkFunction, parameters, shortName)




















