-- check passes if your current target is your bunny hop target
local checkFullName = "BunnyHop"
local shortName = "bhop"
local parameters = {NerfedButtons.PARAMS.need}
                 
local checkFunction =
function(abilityId, params)

    local needEnabled = params[NerfedButtons.PARAMS.need]
    
    local targetName = TargetInfo:UnitName(TargetInfo.HOSTILE_TARGET) 

		local isMatch = function(targetName)
		
		if(targetName == NerfedMacro.BunnyHopCheck()) then
			return true
		end
		
		return false;
    end

    if needEnabled == "-" then
        return not isMatch
    end
    
    return isMatch
end

NerfedChecks.RegisterCheck(checkFullName, checkFunction, parameters, shortName)




















