local checkFullName = "HitPointsPercent"
local shortName = "hpp"
local parameters = { NerfedButtons.PARAMS.hpPercent, NerfedButtons.PARAMS.need, NerfedButtons.PARAMS.target   }
                 
local checkFunction =
function(abilityId, params)
    local hpPercent = params[NerfedButtons.PARAMS.hpPercent]
    local needHp = params[NerfedButtons.PARAMS.need]
    local target = params[NerfedButtons.PARAMS.target]
    
    if not target then
        target = NerfedAPI.GetDefaultTarget(abilityId)
    end
    
    local hasHp = NerfedAPI.hasHitPointsPercent(hpPercent, target)
    if needHp == "-" then
        return not hasHp
    end
    
    return hasHp
end

NerfedChecks.RegisterCheck(checkFullName, checkFunction, parameters, shortName)




















