local checkFullName = "FriendlyTarget"
local shortName = "ft"
local parameters = { NerfedButtons.PARAMS.need, NerfedButtons.PARAMS.self }
                 
local checkFunction =
function(abilityId, params)
    local needFriend = params[NerfedButtons.PARAMS.need]
    local selfFriend = params[NerfedButtons.PARAMS.self]
    
    if not selfFriend or not selfFriend == 's' then    
        local hasFriend = NerfedAPI.hasFriend()
        if needFriend == "-" then
            return not hasFriend
        end
        return hasFriend
    else
        local isFriend = NerfedAPI.isFriend()
        if needFriend == "-" then
            return not isFriend
        end
        return isFriend
    end
end

NerfedChecks.RegisterCheck(checkFullName, checkFunction, parameters, shortName)




















