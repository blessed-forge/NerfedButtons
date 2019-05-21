local checkFullName = "Tier"
local shortName = "t"
local parameters = { NerfedButtons.PARAMS.tier, NerfedButtons.PARAMS.check }
                 
local checkFunction =

function(abilityId, params)

    local required = params[NerfedButtons.PARAMS.tier]
    local check = params[NerfedButtons.PARAMS.check]
    
    local actual = NerfedAPI.getEnemyTier()

    if check == ">=" then
        if need >= actual then
			return true
		end
    elseif check == "==" then
    	if need == actual then
			return true
		end
    elseif	check == "<=" then
	   	if need <= actual then
			return true
		end
    end
    
    return false

end

NerfedChecks.RegisterCheck(checkFullName, checkFunction, parameters, shortName)
