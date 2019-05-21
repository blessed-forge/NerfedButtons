local _windowID = "NBSBCoreWindow";
local _listCtnr = _windowID.."Lists";
NBSBCore = {};

local innerSequence = {};
function NBSBCore.SetCurrentSequence(seq)
    innerSequence = seq;
end
function NBSBCore.GetCurrentSequence()
    return innerSequence;
end

local function tableLen(t)
    local i = 0;
    local x,y;
    for x,y in pairs(t) do
        i = i + 1;
    end
    return i;
end

function NBSBCore.CleanSequence()
    local k,v,kk,vv,_k,_v;
    local newSequence = {};
    for k,v in ipairs(innerSequence) do
        local newEntry = {};
        newEntry[NerfedButtons.PARAMS.ability] = v[NerfedButtons.PARAMS.ability];
        newEntry[NerfedButtons.PARAMS.item] = v[NerfedButtons.PARAMS.item];
        for kk,vv in pairs(v) do
            if (kk~=NerfedButtons.PARAMS.ability and kk~=NerfedButtons.PARAMS.item) then
                local checks = {};
                local checksIndex = 0;
                _k=0;
                _v=vv[_k];
                while _v do
                    if tableLen(_v)~=0 then
                        checks[checksIndex] = _v;
                        checksIndex = checksIndex + 1;
                    end
                    _k = _k + 1;
                    _v = vv[_k];
                end
                if checksIndex>0 then
                    newEntry[kk] = checks;
                end
            end
        end
        newSequence[1+#newSequence] = newEntry;
    end
    NBSBCore._Show(true,newSequence);
end


--shows a tooltip describing NerfedButtons
function NBSBCore.IconOnMouseOver()
	DynamicImageSetTexture( "NerfedIcon",  "nerfedicon_img2", 0, 0 )
	Tooltips.CreateTextOnlyTooltip(SystemData.ActiveWindow.name)
	Tooltips.SetTooltipText(1, 1, L"NerfedButtons")
	Tooltips.SetTooltipText(2, 1, L"NerfedButtons Sequence Builder GUI")
	Tooltips.AnchorTooltip(Tooltips.ANCHOR_WINDOW_LEFT)
	Tooltips.Finalize()
end

function NBSBCore.IconOnMouseOverEnd()
	DynamicImageSetTexture( "NerfedIcon",  "nerfedicon_img1", 0, 0 )
end


function NBSBCore.CleanEmpties()
    local remove = {};
    local k,v,i;
    for k,v in ipairs(innerSequence) do
        local abilityId = v[NerfedButtons.PARAMS.ability] or v[NerfedButtons.PARAMS.item] or 0;
        if abilityId==0 then
            remove[1+#remove] = k;
        end
    end
    for i=#remove,1,-1 do
        table.remove(innerSequence,remove[i]);
    end
    local offset = NBSBActionBar.GetCurrentOffset();
    local possible = #innerSequence - 11;
    if possible < 0 then
        possible = 0
    end
    if offset > possible then
        NBSBActionBar.SetCurrentOffset(possible)
    end
end

function NBSBCore.Initialize()
    WindowSetShowing(_windowID,false);
    --LibSlash.RegisterWSlashCmd("nbsb", function(input) NBSBCore.HandleSlash(input) end);
    --EA_ChatWindow.Print( NBSBLang.GetString(NBSBStrings.NBSB_CMD_LIST)); 
    LabelSetText( _windowID.."TitleBarText", NBSBLang.GetString(NBSBStrings.TITLE) );
    --Setup Labels
    LabelSetText( _windowID.."CriteriaAddon1Label", NBSBLang.GetString(NBSBStrings.ADDON_LABEL) );
    LabelSetText( _windowID.."CriteriaSequenceLabel", NBSBLang.GetString(NBSBStrings.SEQ_LABEL) );
    ButtonSetText( _windowID.."CriteriaLoad", NBSBLang.GetString(NBSBStrings.LOAD_LABEL) );
    ButtonSetText( _windowID.."CriteriaSave", NBSBLang.GetString(NBSBStrings.SAVE_LABEL) );
    ButtonSetText( _windowID.."CriteriaReset", NBSBLang.GetString(NBSBStrings.RESET_LABEL) );
    ButtonSetText( _windowID.."CriteriaDelete", NBSBLang.GetString(NBSBStrings.DEL_LABEL) );
    DynamicImageSetTexture( _listCtnr.."Add", "nbsplus", 0, 0 );
    DynamicImageSetTexture( _listCtnr.."Remove", "nbsminus", 0, 0 );
    DynamicImageSetTextureDimensions(_listCtnr.."Up", 9, 12)
    DynamicImageSetTextureDimensions(_listCtnr.."Down", 9, 12)
    NBSBActionBar.Initialize()
    NBSetup_Save.Initialize()
    NBSBCheckToolTips.Initialize()
end

local checkRef;
local cboxData;
local function sortfunc( a, b)
    return a < b;
end
function NBSBCore.UpdateReferenceData()
    checkRef = {};
    cboxData = {};
    local i = 1;   
    for name,params in pairs(NerfedChecks.CustomChecks) do
        wname = towstring(name)
        checkRef[wname] = {name=name,checkName=name,params=params};
        cboxData[i] = wname;
        i = i + 1;
    end
    table.sort(cboxData, sortfunc)
end
function NBSBCore.GetCheckNames()
    return cboxData;
end
function NBSBCore.GetReferenceData(name)
    return checkRef[name];
end

local addonList;
local sequenceList;
local _updateReference = true;

function NBSBCore.getSequenceList()
	return sequenceList
end

function NBSBCore.addToSequenceList(newSeq)
	table.insert(sequenceList, towstring(newSeq))
	NBSBCommon.ComboBoxSetItemsFromList(_windowID.."CriteriaSequenceList",sequenceList,NBSBLang.GetString(NBSBStrings.NONE_SELECTED));
end

function NBSBCore.getAddonList()
	return addonList
end

function NBSBCore._Show(force,sequence)
    local showing;
    if force~=nil then
        showing = force;
    else
        showing = not WindowGetShowing(_windowID);
    end
    sequence = sequence or {};
    NBSBCore.SetCurrentSequence(sequence)
    WindowSetShowing(_windowID,showing);
    if showing then
        addonList = NBSBRegister.GetSequenceProviders();
        NBSBActionBar.SetCurrentSelection(selection)
        NBSBActionBar.SetCurrentOffset(0)
        if _updateReference then
            NBSBCommon.ComboBoxSetItemsFromList(_windowID.."CriteriaAddon1List",addonList,NBSBLang.GetString(NBSBStrings.NONE_SELECTED));
            ComboBoxSetSelectedMenuItem(_windowID.."CriteriaAddon1List",1);
            NBSBCommon.ComboBoxSetItemsFromList(_windowID.."CriteriaSequenceList",{},NBSBLang.GetString(NBSBStrings.NONE_SELECTED));
            ComboBoxSetSelectedMenuItem(_windowID.."CriteriaSequenceList",1);
        end
        NBSBCore.UpdateReferenceData()
        _updateReference = true;
        NBSBChecks.SetLastClicked(nil);
        NBSBChecks.ResetData({});
    end
    NBSBActionBar.ResetButtons();
end
function NBSBCore.Show()
    NBSBCore._Show();
end

function NBSBCore.HandleSlash(input)
    if input and input ~= "" then
        local command, tail = input:match(L"([a-z]+)[ ]?(.*)")
        command = tostring(command)
        if command=="add" then
            NBSBCore.HandleNerfAddCommand(command,tail)
            return;
        end
    end
    NBSBCore.Show();
end

function NBSBCore.HandleNerfAddCommand(opt,input)
    local flag_type, remainder = input:match(L"([a-z]+)[ ]?(.*)");
    local flag_type = tostring(flag_type);
    local value = NerfedTalks.SequenceParsing(remainder);
    if value then
        NBSBCore._Show(true,value)
    end
end

function NBSBCore.OnUpdate(elapsed)
end

function NBSBCore.IsBlank(bindex)
    local seq = NBSBCore.GetCurrentSequence()[bindex+NBSBActionBar.GetCurrentOffset()];
    if seq then
        local abilityId = seq[NerfedButtons.PARAMS.ability];
        if abilityId then
            return false;
        end
    end
    return true;
end

function NBSBCore.SetParamDataForSlot(slot_num, check)
    local seq = NBSBCore.GetCurrentSequence();
    if seq then
        local slot = seq[slot_num];
        if slot then
            if slot[check] == nil then
                slot[check] = {}                
            end
            local params = slot[check];
            local indx = 0;
            while params[indx]~=nil do
                indx = indx+1
            end
            params[indx]={}
            return indx;
        end
    end        
end

function NBSBCore.DelSlotData(slot_num)
    local seq = NBSBCore.GetCurrentSequence();
    if slot_num~=nil and slot_num <= #seq and slot_num>=1 then
        table.remove(seq,slot_num);
    end
end

function NBSBCore.GetSlotData(slot_num)
    local seq = NBSBCore.GetCurrentSequence();
    if seq then
        return seq[slot_num];
    end    
end

function NBSBCore.SetSlotData(slot_num,data)
    local seq = NBSBCore.GetCurrentSequence();
    if seq then
        seq[slot_num]=data;
    end    
end

function NBSBCore.GetParamDataForSlot(slot_num, check)
    local slot = NBSBCore.GetSlotData(slot_num);
    if slot then
        return slot[check];
    end
end

function NBSBCore.SetupNewSlotConfig()
    local slot = NBSBCore.GetCurrentSequence()[NBSBActionBar.GetCurrentSelection()+NBSBActionBar.GetCurrentOffset()];
    local data = {};
    local sortData = {};
    local i = 1;
    for checkName,parameters in pairs(slot) do
        if checkName~=NerfedButtons.PARAMS.ability and checkName~=NerfedButtons.PARAMS.item then
            local i = 0
            while parameters[i] do
                local params = parameters[i]
                newdata = {name=StringToWString(checkName),checkName=checkName,params=params,index=i};
                table.insert(data,newdata);
                table.insert(sortData,i);
                i=i+1;
            end
        end
    end
    NBSBChecks.SetLastClicked(nil);
    NBSBChecks.ResetData(data);
end

function NBSBCore.OnClose( flags, x, y )
    NBSBCore._Show(false);
end

local currentAddon;
local currentSequence;

function NBSBCore.GetCurrentAddonAndSequence()
    return currentAddon,currentSequence;
end

function NBSBCore.SetCurrentAddonAndSequence(addon, sequence)
    currentAddon = towstring(addon)
    currentSequence = towstring(sequence)
end

function NBSBCore.OnDel()
    local sel_index = ComboBoxGetSelectedMenuItem(_windowID.."CriteriaAddon1List");
    local seq_index = ComboBoxGetSelectedMenuItem(_windowID.."CriteriaSequenceList");
    if sel_index > 1 and seq_index>1 then
        sel_index = sel_index - 1;
        seq_index = seq_index - 1;
        local addon = WStringToString(addonList[sel_index]);
        local seq_name = WStringToString(sequenceList[seq_index]);
        NBSBRegister.DelSequenceFromProvider( addon, seq_name )
    end
    NBSBCore._Show(true,NBSBCore.GetCurrentSequence())
    NBSBCore.OnReset()
end

function NBSBCore.OnLoad( flags, x, y )
    local sel_index = ComboBoxGetSelectedMenuItem(_windowID.."CriteriaAddon1List");
    local seq_index = ComboBoxGetSelectedMenuItem(_windowID.."CriteriaSequenceList");
    if sel_index > 1 and seq_index>1 then
        sel_index = sel_index - 1;
        seq_index = seq_index - 1;
        local addon = WStringToString(addonList[sel_index]);
        local seq_name = WStringToString(sequenceList[seq_index]);
        local seqObj = NBSBRegister.GetSequenceFromProvider( addon, seq_name )
        if seqObj then
            currentAddon = addonList[sel_index];
            currentSequence = sequenceList[seq_index];
            _updateReference = false;
            NBSBCore._Show(true,seqObj)
        end
    end
end

function NBSBCore.OnReset( flags, x, y )
    currentAddon="NerfedButtons";
    currentSequence=nil;
    NBSBCore.SetCurrentSequence({});
    NBSBActionBar.SetCurrentOffset(0);
    WindowSetShowing(_windowID,false);
    NBSBCore.Show();
end

function NBSBCore.OnSave( flags, x, y )
    --NBSBCore.CleanEmpties();
    --NBSBCore.CleanSequence();
    NBSetup_Save.Show();
end

--add
function NBSBCore.ToolAction11()
    if NBSBActionBar.GetCurrentSelection()== nil then
        return;
    end
    local index = NBSBChecks.GetLastClicked();
    local sindex = 1+#NBSBChecks.Data;
    if not index then
        index = sindex;
    end
    table.insert(NBSBChecks.Data,index,{});
    NBSBChecks.SetLastClicked(nil);
    NBSBChecks.ResetData()
end


function removeParamDataForSlot(check,index)
    local slot = NBSBCore.GetSlotData(NBSBActionBar.GetCurrentSelection());
    if slot then
        local params = slot[check];
        local indx = 0;
        while params[indx]~=nil do
            if indx>= index then
                params[indx] = params[indx+1];
            end
            indx = indx + 1;
        end
    end
end


function removeParamDataForListData(check,index)
    for _,v in pairs(NBSBChecks.Data) do
        if v.checkName == check then
            if v.index > index then
                v.index = v.index-1;
            end
        end
    end
end

--remove
function NBSBCore.ToolAction12()
    local index = NBSBChecks.GetLastClicked();
    if index~=nil then
        local data = NBSBChecks.Data[index];
        table.remove(NBSBChecks.Data,index);
        if data.index ~= nil then
            removeParamDataForSlot(data.checkName,data.index)
            removeParamDataForListData(data.checkName,data.index);
        end
        NBSBChecks.SetLastClicked(nil);
        NBSBChecks.ResetData()
    end
end
--up
function NBSBCore.ToolAction13()
    local index = NBSBChecks.GetLastClicked();
    if index~=nil and index>1 then
        local prev = NBSBChecks.Data[index-1];
        local current = NBSBChecks.Data[index]; 
        NBSBChecks.Data[index-1] = current;
        NBSBChecks.Data[index] = prev;
        if current.name == prev.name and current.name ~= nil then
            local slot = NBSBCore.GetSlotData(NBSBActionBar.GetCurrentSelection());
            local params = slot[current.checkName];
            local temp = params[prev.index];
            params[prev.index] = params[prev.index+1]
            params[prev.index+1]= temp;
            prev.index = prev.index + 1;
            current.index = current.index -1;            
        end
        NBSBChecks.SetLastClicked(index-1);
        NBSBChecks.ResetData()
    end
end
--down
function NBSBCore.ToolAction14()
    local index = NBSBChecks.GetLastClicked();
    if index~=nil and index<#NBSBChecks.Data then
        local next = NBSBChecks.Data[index+1];
        local current = NBSBChecks.Data[index];
        NBSBChecks.Data[index+1] = current;
        NBSBChecks.Data[index] = next;
        if current.name == next.name and current.name ~= nil then
            local slot = NBSBCore.GetSlotData(NBSBActionBar.GetCurrentSelection());
            local params = slot[current.checkName];
            local temp = params[next.index];
            params[next.index] = params[next.index+1]
            params[prev.index+1]= temp;
            next.index = prev.index - 1;
            current.index = current.index + 1;            
        end
        NBSBChecks.SetLastClicked(index+1);
        NBSBChecks.ResetData()
    end
end

function NBSBCore.OnToolsUp( flags, x, y )
    id = tonumber(WindowGetId(SystemData.ActiveWindow.name));
    NBSBCore["ToolAction"..id]();
end

function NBSBCore.OnAddonSelected()
    local seq_list = {};
    local sel_index = ComboBoxGetSelectedMenuItem(_windowID.."CriteriaAddon1List");
    if sel_index > 1 then
        sel_index = sel_index - 1;
        seq_list = NBSBRegister.GetSequencesForProvider( WStringToString(addonList[sel_index]) );
    end
    NBSBCommon.ComboBoxSetItemsFromList(_windowID.."CriteriaSequenceList",seq_list,NBSBLang.GetString(NBSBStrings.NONE_SELECTED));
    ComboBoxSetSelectedMenuItem(_windowID.."CriteriaSequenceList",1);
    sequenceList = seq_list;
end
