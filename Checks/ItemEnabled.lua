local checkFullName = "ItemEnabled"
local shortName = "ie"
local parameters = { NerfedButtons.PARAMS.item, NerfedButtons.PARAMS.need }
                 
local checkFunction =
function(abilityId, params)
    local itemId = params[NerfedButtons.PARAMS.item]
    local needEnabled = params[NerfedButtons.PARAMS.need]
    
    local isEnabled = NerfedChecks.GetCheck("IsEnabled")(itemId)
    if needEnabled == "-" then
        return not isEnabled
    end
    
    return isEnabled
end

NerfedChecks.RegisterCheck(checkFullName, checkFunction, parameters, shortName)




















