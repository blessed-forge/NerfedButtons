NerfedUtils = {}

local hookAWLBD
local hookABRBD
local ABILITY_TAG   = L"ABILITY:"
local hooked = false


-- hook things
function NerfedUtils.doHooks()
	
	-- do not hook twice
	if hooked then return end
	hooked = true

    -- re-enable chat ability links :)
    hookAWLBD=AbilitiesWindow.ActionLButtonDown    -- First we store the original function in our local hook
    AbilitiesWindow.ActionLButtonDown=NerfedUtils.hookAWLBD  -- Then we take the current function and redirect it to our control
    
     -- enable right-click editing of NB sequences
    hookABRBD=ActionButton.OnRButtonDown
    ActionButton.OnRButtonDown=NerfedUtils.hookABRBD
end


-- the new AbilitiesWindow.ActionLButtonDown function
function NerfedUtils.hookAWLBD(flags, x, y)

    local abilityData = AbilitiesWindow.abilityData[ AbilitiesWindow.GetAbilityFromMouseOverEntry() ]
    local mode        = AbilitiesWindow.currentMode
    local filter      = AbilitiesWindow.FilterTabSelected[mode]
    
    if( abilityData ~= nil) and (mode ~= AbilitiesWindow.Modes.MODE_GENERAL_ABILITIES) 
    then    
                
        -- Create Chat HyperLinks on Shift-Left-Button-Down
        if( flags == SystemData.ButtonFlags.SHIFT )
        then
            NerfedUtils.InsertAbilityLink( abilityData )
            return
        end
    end    
    
    -- call original hook
    hookAWLBD(flags, x, y)
end


-- hook for right button down
function NerfedUtils.hookABRBD (flags, x, y)
	local slot,_ = flags.m_HotBarSlot
	local seqObj = NBSBRegister.GetSequenceFromProvider( "NerfedButtons", slot)
	if seqObj then
		
		-- load/display sequence
		NBSBCore.SetCurrentAddonAndSequence("NerfedButtons", slot)
		NBSBCore._Show(true,seqObj)
		
		-- get the index of NerfedButtons addon in the UI dropdown and set it as displayed
		local addons = NBSBCore.getAddonList()
		local selectedAdd = 0
		for k,v in ipairs(addons) do
			local testAdd = WStringToString(v)
			if( testAdd ==  "NerfedButtons") then
				selectedAdd = k + 1
				break
			end
		end
		ComboBoxSetSelectedMenuItem("NBSBCoreWindowCriteriaAddon1List",selectedAdd);
		
		-- get the index of the right clicked slot in the drop down and set it
		NBSBCore.OnAddonSelected()
		local sequences = NBSBCore.getSequenceList()
		local selectedSeq = 0
		for k,v in ipairs(sequences) do
			local testSeq = WStringToString(v)
			if( tonumber(testSeq) ==  tonumber(slot)) then
				selectedSeq = k + 1
				break
			end
		end
		ComboBoxSetSelectedMenuItem("NBSBCoreWindowCriteriaSequenceList",selectedSeq);
		
		-- deal with new slot without sequence
		-- add slot to drop down and select
		if(selectedSeq==0) then
			NBSBCore.addToSequenceList(slot)
			local sequences = NBSBCore.getSequenceList()
			local selectedSeq = 0
			for k,v in ipairs(sequences) do
				local testSeq = WStringToString(v)
				if( tonumber(testSeq) ==  tonumber(slot)) then
					selectedSeq = k + 1
					break
				end
			end
			ComboBoxSetSelectedMenuItem("NBSBCoreWindowCriteriaSequenceList",selectedSeq);
		end	
	end
end



-- copy of the removed ability link
function NerfedUtils.InsertAbilityLink( abilityData )
    
    if( abilityData == nil )
    then
        return
    end

    local data  = ABILITY_TAG..abilityData.id 
    local text  = L"["..abilityData.name..L"]"    
    local color = DefaultColor.LIGHT_BLUE
    
    local link  = CreateHyperLink( data, text, {color.r,color.g,color.b}, {} )
    
    EA_ChatWindow.InsertText( link )
end


-- return whether a module is loaded and/or enabled
--
-- @param string name name of the module
-- @return boolean true if the module is enabled
-- @return boolean true if the module is loaded
function NerfedUtils.isModule(name)
    local mods = ModulesGetData()
    for k,v in ipairs(mods) do
        if v.name == name then
            if v.isEnabled and not v.isLoaded then
                return true, false
            elseif v.isEnabled and v.isLoaded then
                return true, true
            end
            break
        end
    end
    return false, false
end


-- Concatonates any number of tables you pass.
--
-- @param table table1
-- @param table table2
-- @param table tableX....
-- @return table concatonation of all tables passed as arguments
function NerfedUtils.TablesConcat(...)
    local ret = {}
    for i = 1, arg.n do
        for k, v in ipairs(arg[i]) do table.insert(ret, v) end
    end
    return ret
end