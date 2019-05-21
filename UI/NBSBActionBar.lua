local _windowID = "NBSBCoreWindowActionBar";

NBSBActionBar = {};

local currentSelection;
function NBSBActionBar.GetCurrentSelection()
    return currentSelection;
end
function NBSBActionBar.SetCurrentSelection(selection)
    currentSelection = selection
end

function NBSBActionBar.GetParamDataForCurrentSlot(check)
    local sel = NBSBActionBar.GetCurrentSelection();
    --Added to fix offset problem with Params
    if sel then
        sel = sel + NBSBActionBar.GetCurrentOffset();
        return NBSBCore.GetParamDataForSlot(sel, check)
    end
end

local currentIndexOffset=0;
function NBSBActionBar.GetCurrentOffset()
    return currentIndexOffset;
end
function NBSBActionBar.SetCurrentOffset(offset)
    currentIndexOffset = offset
end
function NBSBActionBar.IncrementCurrentOffset()
    currentIndexOffset = currentIndexOffset+1;
end
function NBSBActionBar.DecrementCurrentOffset()
    currentIndexOffset = currentIndexOffset-1;
end

--Hold the button list
local buttons = {};

function NBSBActionBar.Initialize()
    local i;
    local button,icon,glow;
    local parent = _windowID.."Bar";
    local x = 5;
    local y = 5;
    local point = "topleft";
    for i=1,12,1 do
        button = "NBSetupButton"..i;
        buttons[ 1+#buttons ] = NBSBActionButton:Create( button, _windowID, parent, point, x, y, i )
        y = 0;
        x = 2;
        point = "topright";
        parent = button;
    end
    ButtonSetDisabledFlag(_windowID.."PreviousButton",true);
    ButtonSetDisabledFlag(_windowID.."NextButton",true);
    NBSBActionBar.m_GlowBase = "anim_waaagh_" -- For destruction characters...
    if (GameData.Realm.ORDER == GameData.Player.realm) then 
        NBSBActionBar.m_GlowBase  = "anim_fury_" -- For Order characters...
    end
end

function NBSBActionBar.ResetButtons()
    local i;
    local lastgood = 0;
    local texture,tx,ty;
    for i=1,12,1 do
        if buttons[i]:SetupIcon() then
            lastgood = i;
        end
    end
    NBSBActionBar.HideButtons(lastgood+2);
    local qty = #NBSBCore.GetCurrentSequence();
    if (qty-NBSBActionBar.GetCurrentOffset())>=12 then
        ButtonSetDisabledFlag(_windowID.."NextButton",false);
    else
        ButtonSetDisabledFlag(_windowID.."NextButton",true);
    end;
    if NBSBActionBar.GetCurrentOffset()>0 then
        ButtonSetDisabledFlag(_windowID.."PreviousButton",false);
    else
        ButtonSetDisabledFlag(_windowID.."PreviousButton",true);
    end
    NBSBActionBar.ClearGlow()
end

function NBSBActionBar.HideButtons(num)
    local w,h = WindowGetDimensions(_windowID.."Bar");
    local cwith = num;
    if cwith>13 then
        cwith = 13;
    end
    w = ((cwith-1)*66)+8;--802x72
    WindowSetDimensions(_windowID.."Bar",w,h);
    for i=1,12,1 do
        local show=false;
        if i<num then
            show=true;
        end
        buttons[i]:Show(show);
    end
end

function NBSBActionBar.ClearGlow()
    for i=1,12,1 do
        buttons[i]:ClearGlow()
    end
end

--UI Event Handlers
function NBSBActionBar.OnPrevious( flags, x, y )
    if not ButtonGetDisabledFlag(_windowID.."PreviousButton") then
        local sel = NBSBActionBar.GetCurrentSelection()
        NBSBActionBar.DecrementCurrentOffset();
        NBSBActionBar.ResetButtons();
        if self==nil or sel==12 then
            NBSBActionBar.SetCurrentSelection(nil);
            NBSBChecks.SetLastClicked(nil);
            NBSBChecks.ResetData({});
        else
            sel = sel+1;
            NBSBActionBar.ClickButton(sel)
        end
    end
end

function NBSBActionBar.OnNext( flags, x, y )
    if not ButtonGetDisabledFlag(_windowID.."NextButton") then
        local sel = NBSBActionBar.GetCurrentSelection()
        NBSBActionBar.IncrementCurrentOffset();
        NBSBActionBar.ResetButtons();
        if sel==nil or sel==1 then
            NBSBActionBar.SetCurrentSelection(nil);
            NBSBChecks.SetLastClicked(nil);
            NBSBChecks.ResetData({});
        else
            sel = sel-1;
            NBSBActionBar.ClickButton(sel)
        end
    end
end

function NBSBActionBar.ClickButton(bindex)
    buttons[bindex]:ClickButton()
end

function NBSBActionBar.DoDragPickup (dragData)
    if dragData then
        NBSBActionBar.dragData = nil;
        local abilityId = dragData[NerfedButtons.PARAMS.ability];
        local abilityType = GameData.PlayerActions.DO_ABILITY;
        local itemId = dragData[NerfedButtons.PARAMS.item];
        if abilityId then
            local abilityData = GetAbilityData(abilityId);
            Cursor.PickUp (abilityType, 0, abilityId, abilityData.iconNum, Cursor.AUTO_PICKUP_ON_LBUTTON_UP);
            NBSBActionBar.dragData = dragData;
        elseif itemId then
            local itemData = DataUtils.FindItem(itemId);
            if itemData==nil then
                itemData = NerfedMemory.getActionDataCache(itemId);
            end
            if itemData then
               Cursor.PickUp (GameData.PlayerActions.USE_ITEM, 0, itemId, itemData.iconNum, Cursor.AUTO_PICKUP_ON_LBUTTON_UP);
               NBSBActionBar.dragData = dragData;
            end
        end
    end
end
