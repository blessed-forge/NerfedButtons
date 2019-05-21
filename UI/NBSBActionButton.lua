NBSBActionButton = Frame:Subclass ("NBSBActionButton");

function NBSBActionButton:Create( buttonName, windowID, parent, anchorPoint, x, y, i )
    local button = self:CreateFromTemplate (buttonName, windowID);
    button.buttonName = buttonName;
    button.actionName = buttonName.."Action";
    button.iconName = button.actionName.."Icon";
    button.glowName = buttonName.."OverlayGlow";
    button.index = i;
    WindowSetId(buttonName.."Action", 15);
    WindowClearAnchors(buttonName);
    WindowAddAnchor(buttonName,anchorPoint,parent,"topleft",x,y);
    button._iconWindow = DynamicImage:CreateFrameForExistingWindow (button.iconName);
    button._glowWindow = AnimatedImage:CreateFrameForExistingWindow(button.glowName);
    FrameManager:ResolveWindowToFrame (button.actionName, button) ;
    return button;
end

function NBSBActionButton:IsBlank()
    local seq = NBSBCore.GetSlotData(self.index+NBSBActionBar.GetCurrentOffset());
    if seq then
        local theId = seq[NerfedButtons.PARAMS.ability] or seq[NerfedButtons.PARAMS.item];
        if theId then
            return false;
        end
    end
    return true;
end

function NBSBActionButton:OldShow(bValue)
    WindowSetShowing(self.buttonName,bValue);
end

function NBSBActionButton:ClearGlow()
    self._glowWindow:StopAnimation (true)
    self._glowWindow:Show (false)
end

function NBSBActionButton:SetupIcon()
    local seq = NBSBCore.GetSlotData(self.index + NBSBActionBar.GetCurrentOffset());
    local texture = nil;
    local hadIconData = false;
    if seq then
        local abilityId = seq[NerfedButtons.PARAMS.ability];
        local itemId = seq[NerfedButtons.PARAMS.item];
        if abilityId then
            local abilityData = GetAbilityData(abilityId);
            texture,tx,ty = GetIconData(abilityData.iconNum);
        elseif itemId then
            local abilityData = DataUtils.FindItem(itemId);
            if abilityData==nil then
                abilityData = NerfedMemory.getActionDataCache(itemId);
                if abilityData == nil then
                    abilityData = GetAbilityData(0);
                end
            end
            texture,tx,ty = GetIconData(abilityData.iconNum);
        end
        hadIconData = true;
    end
    if texture then
        DynamicImageSetTexture( self.iconName , texture, tx, ty );
    else
        self._iconWindow:SetTexture ("EA_HUD_01", 0, 0);
        self._iconWindow:SetTextureSlice ("Blank-Action-Bar-Icon-Slot", Frame.FORCE_OVERRIDE);
    end
    return hadIconData;
end

function NBSBActionButton:ClickButton()
    NBSBActionBar.SetCurrentSelection(self.index);
    NBSBActionBar.ClearGlow()
    self._glowWindow:StopAnimation (true)
    self._glowWindow:SetAnimationTexture (NBSBActionBar.m_GlowBase..5)
    self._glowWindow:StartAnimation (0, true, false, 0)
    NBSBCore.SetupNewSlotConfig();
end

--Button Behavoir

function NBSBActionButton:OnMouseOverEnd(flags, x, y)
    if NBSBActionBar.dragIndex == self.index then
        local currentData = NBSBCore.GetSlotData(self.index+NBSBActionBar.GetCurrentOffset());
        if currentData~=nil and currentData[NerfedButtons.PARAMS.ability] ~= 0 then
            NBSBActionBar.DoDragPickup(currentData)
            NBSBActionBar.dragIndex = nil;
            local newSlot = {};
            newSlot[NerfedButtons.PARAMS.ability] = 0;
            NBSBCore.SetSlotData(self.index+NBSBActionBar.GetCurrentOffset(),newSlot);
            NBSBActionBar.ResetButtons()
        else
            NBSBActionBar.dragIndex = nil
        end
    end
end

function NBSBActionButton:OnRButtonDown(flags,x,y)
    NBSBCore.DelSlotData(self.index+NBSBActionBar.GetCurrentOffset());
    NBSBActionBar.ResetButtons()        
end

function NBSBActionButton:OnLButtonDown(flags, x, y)
    if NBSBActionBar.dragIndex == nil then
        NBSBActionBar.dragIndex = self.index;
    end
end


function NBSBActionButton:OnLButtonUp(flags, x, y)
    NBSBActionBar.dragIndex = nil
    if Cursor.IconOnCursor() then
        local ability = Player.GetAbilityData (Cursor.Data.ObjectId)
        local item = nil;
        local param_key = NerfedButtons.PARAMS.ability;
        if ability == nil then
            item = DataUtils.FindItem(Cursor.Data.ObjectId);
            if item == nil then
                item = NerfedMemory.getActionDataCache(Cursor.Data.ObjectId);
                if item==nil then
                   return;
                end
            else
                NerfedMemory.setActionDataCache(Cursor.Data.ObjectId,item);
            end
            param_key = NerfedButtons.PARAMS.item;
        elseif ability.abilityType == GameData.AbilityType.TACTIC then
            return ActionButtonAlert (StringTables.Default.TEXT_TACTIC_DROP_ERROR);
        else
        end
        local theID = Cursor.Data.ObjectId;
        Cursor.Clear ()
        if theID ~= nil then
            local newSlot
            if NBSBActionBar.dragData ~= nil then
                newSlot = NBSBActionBar.dragData;
                NBSBActionBar.dragData = nil
            else
                newSlot = {};
                newSlot[param_key] = theID;
            end
            local oldData = NBSBCore.GetSlotData(self.index+NBSBActionBar.GetCurrentOffset())
            NBSBCore.SetSlotData(self.index+NBSBActionBar.GetCurrentOffset(),newSlot);
            if oldData and ( (oldData[NerfedButtons.PARAMS.ability] and oldData[NerfedButtons.PARAMS.ability]~=0)
                       or (oldData[NerfedButtons.PARAMS.item] and oldData[NerfedButtons.PARAMS.item]~=0) ) then
                NBSBActionBar.DoDragPickup(oldData);
            else
                NBSBCore.CleanEmpties();
            end
            NBSBActionBar.ResetButtons()
        end
    end
    if not self:IsBlank() then
        if flags==8 then
            local seq_ = NBSBCore.GetCurrentSequence();
            local obj = NBSBCommon.DeepCopy(seq_[self.index+NBSBActionBar.GetCurrentOffset()]);
            local new_bindex = 1+self.index+NBSBActionBar.GetCurrentOffset();
            table.insert(seq_, new_bindex, obj);
            NBSBActionBar.ResetButtons();
            NBSBActionBar.ClickButton(new_bindex);
        else
            NBSBActionBar.ClickButton(self.index)
        end
    end
end

function NBSBActionButton:OnMouseOver(flags, x, y)    
    local seq = NBSBCore.GetSlotData(self.index+NBSBActionBar.GetCurrentOffset());
    if seq then
        local abilityId = seq[NerfedButtons.PARAMS.ability];
        local itemId = seq[NerfedButtons.PARAMS.item];
        local anchor = { Point="topleft", RelativeTo=self.buttonName, RelativePoint="bottomleft", XOffset=0, YOffset=-64 };
        if abilityId then
            local abilityData = GetAbilityData(abilityId);
            if( abilityData ~= nil ) then
                local text = AbilitiesWindow.AbilityTypeDesc[ AbilitiesWindow.Modes.MODE_ACTION_ABILITIES ];
                Tooltips.CreateAbilityTooltip( abilityData, SystemData.ActiveWindow.name, anchor, text )
                return;
            end
        elseif itemId then
            local itemData = DataUtils.FindItem(itemId);
            if itemData==nil then
                itemData = NerfedMemory.getActionDataCache(itemId);
            end
            if itemData then
                Tooltips.CreateItemTooltip( itemData, 
                                            SystemData.ActiveWindow.name,
                                            anchor, 
                                            Tooltips.ENABLE_COMPARISON, 
                                            nil, nil, nil );
                return;
            end
        end        
    end
    NBSBCommon.OnMouseoverToolTip()
end