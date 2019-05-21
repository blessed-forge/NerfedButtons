local checkFullName = "Archetype"
local shortName = "a"
local parameters = { NerfedButtons.PARAMS.archetype, NerfedButtons.PARAMS.need, NerfedButtons.PARAMS.target }
                 
local checkFunction =
function(abilityId, params)
    local archetype = params[NerfedButtons.PARAMS.archetype]
    local needArchetype = params[NerfedButtons.PARAMS.need]
    local target = params[NerfedButtons.PARAMS.target]
    
    if not target then
        target = NerfedAPI.GetDefaultTarget(abilityId)
    end
    
    local isArchetype = NerfedAPI.isArchetype(archetype, target)
    if needArchetype == "-" then
        return not isArchetype
    end
    
    return isArchetype
end

NerfedChecks.RegisterCheck(checkFullName, checkFunction, parameters, shortName)




















