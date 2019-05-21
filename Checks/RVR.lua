local checkFullName = "RealmVersusRealm"
local shortName = "RVR"
local parameters = { NerfedButtons.PARAMS.need}
                 
local checkFunction =
function(abilityId, params)
    local needRVR = params[NerfedButtons.PARAMS.need]
    
    local hasRVR = NerfedAPI.isRVR()
    if needRVR == "-" then
        return not hasRVR
    end
    
    return hasRVR
end

NerfedChecks.RegisterCheck(checkFullName, checkFunction, parameters, shortName)




















