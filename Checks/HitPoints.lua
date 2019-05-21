local checkFullName = "HitPoints"
local shortName = "hp"
local parameters = { NerfedButtons.PARAMS.hp, NerfedButtons.PARAMS.need  }
                 
local checkFunction =
function(abilityId, params)
    local hp = params[NerfedButtons.PARAMS.hp]
    local needHp = params[NerfedButtons.PARAMS.need]
    
    local hasHp = NerfedAPI.hasHitPoints(hp)
    if needHp == "-" then
        return not hasHp
    end
    
    return hasHp
end

NerfedChecks.RegisterCheck(checkFullName, checkFunction, parameters, shortName)




















