--[[ 
NerfedButtons - NerfedMacro
Warhammer Online: Age of Reckoning, collection  of useful macro functions.
    
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

--[[
	Provides a selection of useful macros that can be used to terminate your NerfedButton sequences.
	
	/script NerfedMacro.TargetNextFriendly()
	
	/script NerfedMacro.TargetNextHurtFriendly(healthPercent)
	
	/script NerfedMacro.TargetMostHurtFriendly()
	
	Typical usage could be to create a NerfedButtons that casts a HoT. By adding a stack check
	and a failover macro to the end of the sequence using the "/nb macro" command you could 
	then create a button that targets the next player in your group/warband if the current one
	is already HoT'd. 
	
	The NextHurt function can be used to only target those group/warband members that have
	below a specific percentage of health.

]]--

-- ==========================
-- ===== Public members =====
-- ==========================

NerfedMacro = {
    PROGNAME        = L"NerfedMacro",
    VERSION         = L"1.2",
    
    Loaded          = false
}


-- ===========================
-- ===== Private members =====
-- ===========================

TargetNextFriendly_id = 1
TargetNextFriendlyHurt_id = 1
BunnyHopTarget = nil

-- ===========================
-- ===== Private methods =====
-- ===========================

function getFriendlyPlayers()

	-- return players who are online and not distant
	
	-- am I in a warband?
	if NerfedAPI.inWarBand() then
		local players = {}
		local pIndex = 1
		for i = 1,4 do
			for j = 1,6 do
				local pData = GetBattlegroupMemberData()[i].players[j]
				if pData ~= nil then
					if pData.online and not pData.isDistant then
						players[pIndex] = {}
						players[pIndex].name = pData.name
						players[pIndex].health = pData.healthPercent
						pIndex = pIndex + 1
					end
				end
			end
		end
		return players
    end
	
	-- am I in a party
    if NerfedAPI.inAParty() or NerfedAPI.inScenario() then
		local players = {}
		local pIndex = 1
		for j = 1,6 do
			local pData = GroupWindow.groupData[j]
			if pData ~= nil then
				if pData.online and not pData.isDistant then
					players[pIndex] = {}
					players[pIndex].name = pData.name
					players[pIndex].health = pData.healthPercent
					pIndex = pIndex + 1
				end
			end
		end
		return players
    end

	return nil

end


-- ============================
-- ===== Internal methods =====
-- ============================

function NerfedMacro.registerMacroFunctions()
	registerMacro(7, 90001, L"Target Next Friendly", L"/script NerfedMacro.TargetNextFriendly()");
	registerMacro(8, 90002, L"Target Next Hurt Friendly", L"/script NerfedMacro.TargetNextHurtFriendly(99, true)");
	registerMacro(9, 90003, L"Target Most Hurt Friendly", L"/script NerfedMacro.TargetMostHurtFriendly(true)");
	registerMacro(10,90004, L"Detaunt Helper - Target Top", L"/script DetauntHelper.TargetTop()");
	registerMacro(11,90005, L"Bunny Hop - Set Target", L"/script NerfedMacro.BunnyHopTarget()");
end

function registerMacro(macroSlot, macroIcon, macroName, macroAction)
	local texture, x, y = GetIconData( macroIcon )
    DynamicImageSetTexture( "MacroIconSelectionWindowIconSlot"..macroSlot.."IconBase", texture, x, y ) 
    SetMacroData( macroName, macroAction, macroIcon, macroSlot )
    DynamicImageSetTexture( "EA_Window_MacroIconSlot"..macroSlot.."IconBase", texture, x, y )
end


-- ==========================
-- ===== Public methods =====
-- ==========================


function NerfedMacro.TargetNextFriendly()
	local players = getFriendlyPlayers()
	if players ==  nil then
		return
	end
	local player = players[TargetNextFriendly_id]
	SendChatText(towstring(L"/target " .. player.name), L"")
	TargetNextFriendly_id = TargetNextFriendly_id + 1
	if players[TargetNextFriendly_id] == nil then
		TargetNextFriendly_id = 1
	end
end


function NerfedMacro.TargetNextHurtFriendly(health, ignoreDead)

	local players = getFriendlyPlayers()
	local count = 0
	
	if players ==  nil then
		return
	end
	
	while count <= 24 do
	
		-- we dont want to loop forever
		count = count + 1
		
		local player = players[TargetNextFriendlyHurt_id]
	
		if player.health < health then
		
			if ignoreDead and player.health == 0 then
				-- ignore dead
			else
		
				SendChatText(towstring(L"/target " .. player.name), L"")
			
				TargetNextFriendlyHurt_id = TargetNextFriendlyHurt_id + 1
				if players[TargetNextFriendlyHurt_id] == nil then
					TargetNextFriendlyHurt_id = 1
				end
			
				break
			end
		end
		
		TargetNextFriendlyHurt_id = TargetNextFriendlyHurt_id + 1
		if players[TargetNextFriendlyHurt_id] == nil then
			TargetNextFriendlyHurt_id = 1
		end	
		
	end
end


function NerfedMacro.TargetMostHurtFriendly(ignoreDead)

	local players = getFriendlyPlayers()
	local count = 0
	local playerWithLowestHealth = L''
	local playerWithLowestHealthHealth = 100
	
	if players ==  nil then
		return
	end
	
	while count <= 24 do
	
		-- we dont want to loop forever
		count = count + 1
		
		-- get player object
		local player = players[count]
		
		if player ~= nill then
		
			-- check if player has less health than previous ones
			if player.health < playerWithLowestHealthHealth then
				if ignoreDead and player.health == 0 then
					-- ignore dead player
				else
					playerWithLowestHealth = player.name
					playerWithLowestHealthHealth = player.health
				end
			end
		
		end
		
	end
	
	if(playerWithLowestHealth ~= L'') then
		-- target player with least health
		SendChatText(towstring(L"/target " .. playerWithLowestHealth), L"")
	end
end


function NerfedMacro.BunnyHopTarget()

	-- do we have a BH target?
	if(BunnyHopTarget == nil) then
		-- no BH target so set the target
		SendChatText(towstring(L"BunnyHop: Target " .. BunnyHopTarget), L"")
		return
	end
	
	-- we have a BH target so we need to swtich to the BH target
	SendChatText(towstring(L"/target " .. BunnyHopTarget), L"")
	
	-- clear the BH target
	BunnyHopTarget =  nil

end

function NerfedMacro.BunnyHopCheck()
	return BunnyHopTarget
end