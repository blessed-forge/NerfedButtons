local checkFullName = "HasTactic" 
local shortName = "tac" 
local parameters = { NerfedButtons.PARAMS.ability, NerfedButtons.PARAMS.need } 
local checkFunction = 
function(abilityId, params) 
    local abilityId = params[NerfedButtons.PARAMS.ability] 
    local needEnabled = params[NerfedButtons.PARAMS.need] 
    local hasTactic = false 
        for _, tactic in pairs(GetActiveTactics()) do 
                if tactic == abilityId then hasTactic = true end 
        end 
        if needEnabled == "-" then 
                return not hasTactic 
        end 
    return hasTactic 
end 
NerfedChecks.RegisterCheck(checkFullName, checkFunction, parameters, shortName) 