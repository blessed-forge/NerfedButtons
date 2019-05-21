local checkFullName = "Name"
local shortName = "nam"
local parameters = { NerfedButtons.PARAMS.text, NerfedButtons.PARAMS.need, NerfedButtons.PARAMS.target }
                 
local checkFunction =
function(abilityId, params)
    local pattern = params[NerfedButtons.PARAMS.text]
    local needEnabled = params[NerfedButtons.PARAMS.need]
    local target = params[NerfedButtons.PARAMS.target]

    local isMatch = NerfedAPI.hasName(pattern, target)

    if needEnabled == "-" then
        return not isMatch
    end
    
    return isMatch
end

NerfedChecks.RegisterCheck(checkFullName, checkFunction, parameters, shortName)




















