local checkFullName = "EnemyTarget"
local shortName = "et"
local parameters = { NerfedButtons.PARAMS.need }
                 
local checkFunction =
function(abilityId, params)
    local needFriend = params[NerfedButtons.PARAMS.need]
    
    local hasFriend = NerfedAPI.hasFriend()
    if needFriend == "-" then
        return not hasFriend
    end
    
    return hasFriend
end

NerfedChecks.RegisterCheck(checkFullName, checkFunction, parameters, shortName)




















