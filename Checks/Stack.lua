local checkFullName = "Stack"
local shortName = "st"
local parameters = { NerfedButtons.PARAMS.stack, NerfedButtons.PARAMS.self, NerfedButtons.PARAMS.target, NerfedButtons.PARAMS.duration}
                 
local checkFunction =
function(abilityId, params)
    local stackCount = params[NerfedButtons.PARAMS.stack]
    local onlySelf = params[NerfedButtons.PARAMS.self]
    local target = params[NerfedButtons.PARAMS.target]
    local duration = params[NerfedButtons.PARAMS.duration]
    
    if not onlySelf or not onlySelf == 's' then
        onlySelf = 'o'
    end
    
    if not target then
        target = NerfedAPI.GetDefaultTarget(abilityId)
    end
    
    local stackInfo = NerfedAPI.hasEffect(abilityId, target, onlySelf)
    if duration and stackInfo.duration and stackInfo.duration <= duration then
        return true
    end
    return stackInfo.stackCount < stackCount
end

NerfedChecks.RegisterCheck(checkFullName, checkFunction, parameters, shortName)





























