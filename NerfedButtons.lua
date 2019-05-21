--[[ 
NerfedButtons
Warhammer Online: Age of Reckoning, conditional action sequencing addon.
    
Copyright (C) 2009  Gareth "NerfedWar" Jones
nerfed.war@gmail.com www.nerfedwar.net

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
]]--

-- ==========================
-- ===== Public members =====
-- ==========================

NerfedButtons = {
    PROGNAME        = L"NerfedButtons",
    VERSION         = L"3.3",
    
    TIME_DELAY      = 0.1,
    
    Checks          = {}, -- Ability/Item/Macro checks
    DefaultTarget   = {}, -- Ability default target
    StayOnCast      = {}, -- Ability need StayOnCast
    
    PARAMS          = {
        ability     = "abilityId",
        item        = "itemId",
        target      = "target",
        stack       = "stackCount",
        self        = "onlySelf",
        mechanic    = "mechanic",
        cd          = "virtualCooldown",
        need        = "need",
		check       = "check",
        effect      = "effect",
        condition   = "condition",
        hp          = "hp",
        hpPercent   = "hpPercent",
        ap          = "ap",
        career      = "career",
        archetype   = "archetype",
        duration    = "duration",
        text        = "text",
        tier		= "tier"
    },
    
    MAX_BUTTONS     = 60,
    
    NeedUpdate      = false,
    
    Loaded          = false
}

NerfedButtons.TARGET = {
    PLAYER  = "p",
    FRIEND  = "f",
    ENEMY   = "e"
}

NerfedButtons.ABILITYTYPE = {
    STANDARD    = GameData.AbilityType.STANDARD,
    MORALE      = GameData.AbilityType.MORALE,
    TACTIC      = GameData.AbilityType.TACTIC,    
    GRANTED     = GameData.AbilityType.GRANTED,
    PET         = GameData.AbilityType.PET,
    PASSIVE     = GameData.AbilityType.PASSIVE,
    GUILD       = GameData.AbilityType.GUILD
}

NerfedButtons.CONDITIONS = {
    heal    = "isHealing",
    dbuf    = "isDebuff",
    buf     = "isBuff",
    def     = "isDefensive",
    off     = "isOffensive",
    dam     = "isDamaging",
    sbuf    = "isStatsBuff",
    hex     = "isHex",
    cur     = "isCurse",
    crip    = "isCripple",
    ail     = "isAilment",
    bols    = "isBolster",
    aug     = "isAugmentation",
    bless   = "isBlessing",
    ench    = "isEnchantment",
    unst    = "isUnstoppable",
    imm     = "isImmovable",
    sna     = "isSnared",
    roo     = "isRooted",
    det     = "isDetaunted",
    mou     = "isMounted"
}


-- ===========================
-- ===== Private members =====
-- ===========================

local TimeLeft = NerfedButtons.TIME_DELAY

local USE_ENABLED_ICON  = 42
local USE_DISABLED_ICON = 84
local USE_EMPTY_ICON    = 168

-- ===========================
-- ===== Private methods =====
-- ===========================

-- Shortcut function
local function say(text)
    NerfedTalks.Say(text)
end

-- Shortcut function
local function changeHotbar(barSlot, chosenType, actionId, enabled)
    if enabled  or not NerfedMemory.GetDisabledButtons() then 
        SetHotbarData(barSlot, chosenType, actionId)  
    else
        SetHotbarData(barSlot, 0, 0)
        local hbar, buttonid = ActionBars:BarAndButtonIdFromSlot(barSlot)
        local iconId = NerfedMatchMaking.getIconIdFromActionId(actionId)         
        hbar.m_Buttons[buttonid]:SetIcon(iconId, USE_DISABLED_ICON)     
    end
end

local function getSlotPageAndPosition(slot)
    for bar = 1, CREATED_HOTBAR_COUNT do
        local currentBarButtonCount = ActionBarClusterSettingsManager:GetActionBarSetting (bar, "buttonCount")
        if slot <= currentBarButtonCount then
            return bar, slot
        end
        slot = slot - currentBarButtonCount
    end
    return nil
end

--
local function updateAllSlots()

    -- loop through configured NerfedButtons and update a hotbar slot with the appropriate ability or item
    for hotbarSlot, Sequence in pairs(NerfedMemory.GetBindings()) do
 
        if type(hotbarSlot) == "number" then
        
            -- get bar object and button id
            --local hbar, buttonid = ActionBars:BarAndButtonIdFromSlot(hotbarSlot)
            
            -- if we dont have a bar continue
            --if not hbar then continue end
            
            -- get actionId and actiontype
            local actionId, actionType = NerfedDecisions.Choose(Sequence)
			if(NerfedAPI.IsPetAbility(actionId)) then
				actionType = GameData.PlayerActions.COMMAND_PET_DO_ABILITY
			end
            
            -- do we have a valid ability?
            local enabled = (actionType ~= GameData.PlayerActions.NONE)
            
            -- if NO valid ability then we either want to:
            -- 1    display a macro if one is configured
            -- 2    retrieve the action id and type of the last action in the sequence
            -- 3    display a blank button if blankbuttons is enabled.
	        if not enabled then
	            if NerfedMemory.GetMacro(hotbarSlot) then
                    -- 1 display macro
	                actionId = NerfedMemory.GetMacro(hotbarSlot)
	                actionType = GameData.PlayerActions.DO_MACRO
		        elseif not NerfedMemory.GetBlankButtons() then
                    -- 2 no blank buttons therefore retrieve last action in sequence
		            if Sequence[table.getn(Sequence)][NerfedButtons.PARAMS.ability] then
                        actionId = Sequence[table.getn(Sequence)][NerfedButtons.PARAMS.ability]
                        actionType = GameData.PlayerActions.DO_ABILITY
                    elseif Sequence[table.getn(Sequence)][NerfedButtons.PARAMS.item] then
                        actionId = Sequence[table.getn(Sequence)][NerfedButtons.PARAMS.item]
                        actionType = GameData.PlayerActions.USE_ITEM
                    else
                        d("NerfedButtons:UpdateAllSlots: Should not reach here")
                    end                  
                else
                    --  3 blank buttons enabled
                    actionId = 0
                    actionType = GameData.PlayerActions.NONE
	            end
		    end
            
            -- get icon id from the action id
	        
            -- check if togglepages is enabled
            if NerfedMemory.GetPagesSupport() then
                local slotPage
                local slotPosition
                slotPage, slotPosition = getSlotPageAndPosition(hotbarSlot)
                local previousBarsButtonCount = 0
                for bar = 1, CREATED_HOTBAR_COUNT do
                    if GetHotbarPage(bar) == slotPage then
                        changeHotbar(previousBarsButtonCount + slotPosition, actionType, actionId, enabled)
                    end
                    previousBarsButtonCount = previousBarsButtonCount + ActionBarClusterSettingsManager:GetActionBarSetting (bar, "buttonCount")
                end
            else
                changeHotbar(hotbarSlot, actionType, actionId, enabled)
            end

        end
    end
end


-- ============================
-- ===== Internal methods =====
-- ============================

-- addon init actions
function NerfedButtons.Initialize()
    d("NerfedButtons.Initialize()...")
    say(NerfedButtons.PROGNAME .. L" V" .. NerfedButtons.VERSION)
    
    -- Initialize all modules   
    if not NerfedMemory.Initialize() then
        say("NerfedMemory failed to initialize.")
        return
    end
    if not NerfedMatchMaking.Initialize() then
        say("NerfedMatchMaking failed to initialize.")
        return
    end
    if not NerfedEngine.Initialize() then
        say("NerfedEngine failed to initialize.")
        return
    end
    if not NerfedChecks.Initialize() then
        say("NerfedChecks failed to initialize.")
        return
    end
    if not NerfedDecisions.Initialize() then
        say("NerfedDecisions failed to initialize.")
        return
    end
    if not NerfedTalks.Initialize() then
        say("NerfedTalks failed to initialize.")
        return
    end
    RegisterEventHandler(SystemData.Events.LOADING_END,      "NerfedMatchMaking.OnPlayerAbilitiesListUpdated" )
    RegisterEventHandler(SystemData.Events.LOADING_END,      "NerfedMatchMaking.OnPlayerItemsListUpdated" )    
    RegisterEventHandler(SystemData.Events.LOADING_END,      "NerfedUtils.doHooks" ) 
    RegisterEventHandler(SystemData.Events.RELOAD_INTERFACE, "NerfedUtils.doHooks" ) 


	CreateWindow("NerfedIcon", true)
   	LayoutEditor.RegisterWindow( "NerfedIcon",
		L"NerfedButtons",
		L"NerfedButtons",
		false, false,
		true, nil )
    
    -- Output initialisation text
    d("NerfedButtons initialised.")
    NerfedButtons.Loaded = true
end

-- called from ui every frame
function NerfedButtons.OnUpdate(elapsed)
    if NerfedButtons.NeedUpdate then
        TimeLeft = 0
        NerfedButtons.NeedUpdate = false
    end
    
    if not NerfedButtons.Loaded or not NerfedMemory.Loaded then
        return
    end

    -- stop the code from eating up all CPU resources
    TimeLeft = TimeLeft - elapsed
    if TimeLeft > 0 then
        return -- cut out early
    end

    -- reset to TIME_DELAY seconds
    TimeLeft = NerfedButtons.TIME_DELAY

    -- update all buttons
    updateAllSlots()

end -- NerfedButtons.OnUpdate


-- ==========================
-- ===== Public methods =====
-- ==========================
