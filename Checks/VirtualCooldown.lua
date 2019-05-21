local checkFullName = "VirtualCooldown"
local shortName = "cd"
local parameters = { NerfedButtons.PARAMS.cd}
                 
local checkFunction =
function(abilityId, params)
    local cooldown = params[NerfedButtons.PARAMS.cd]
    
    local target = NerfedAPI.GetDefaultTarget(abilityId)
    
    return not NerfedEngine.OnVirtualCDown(abilityId, cooldown, target)
end

NerfedChecks.RegisterCheck(checkFullName, checkFunction, parameters, shortName)




















