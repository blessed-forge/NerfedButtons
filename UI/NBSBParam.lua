local _windowID = "NBSBCoreWindow";
local _listCtnr = _windowID.."Lists";

NBSBParam = {};
NBSBParam.Data = {}

function NBSBParam.ClearList()
    NBSBParam.SetupListData({})
end

function NBSBParam.SetupListData(data)
    NBSBParam.Data = data;
    local sortData = {};
    for i,_ in ipairs(NBSBParam.Data) do
        sortData[i]=i;
    end
    ListBoxSetDataTable(_listCtnr.."ParamList", "NBSBParam.Data");
    DataUtils.SetListRowAlternatingTints( _listCtnr.."ParamList", 5 );
    ListBoxSetDisplayOrder(_listCtnr.."ParamList", sortData);
end

function NBSBParam.SetupListDataForParameter(parameter)
    local data = NBSBCore.GetReferenceData(parameter);
    NBSBParam.SetupListData(data.params)
end

function NBSBParam.ParamPopulateListDisplayData()
    local lockStatus = NBSBParam.Lock()
    local PopulatorIndices = _G[_listCtnr.."ParamList"].PopulatorIndices;
    local rowT = _listCtnr.."ParamListRow";
    local lcd = NBSBChecks.GetLastClickedData();
    if (PopulatorIndices ~= nil) then				
        for rowIndex, dataIndex in ipairs (PopulatorIndices) do
            local parameter = NBSBParam.Data[ dataIndex ];
            local rowFrame = rowT..rowIndex;
            NBSBRegister.SetupParameter(parameter,rowFrame)
            if lcd and lcd.checkName then
                local param_seq = NBSBActionBar.GetParamDataForCurrentSlot(lcd.checkName)
                if param_seq then
                    param_seq_data = param_seq[lcd.index];
                    if param_seq_data then
                        local paramval=param_seq_data[parameter]
                        if paramval~=nil then
                            NBSBRegister.SetValueForParameter( parameter, rowFrame, paramval )
                        end
                    end
                end
            end
        end
    end
    NBSBParam.UnLock(lockStatus)
end

--UI Event Handlers

local function getIndexFromPopulatorIndices(dataIndex,size)
    for i=1,size,1 do
        if PopulatorIndices[i]==dataIndex then
            return i;
        end
    end
end
local lock = false;
function NBSBParam.Lock()
    if lock then
        return true;
    else
        lock = true;
    end
end
function NBSBParam.UnLock(status)
    if status then
        return;
    end
    lock = false;
end
function NBSBParam.IsLocked()
    return lock;
end

--Handle Parameter input windows changing value
function NBSBParam.OnParamChange()
    if NBSBParam.IsLocked() then
        return;
    end
    local activeWindow = SystemData.ActiveWindow.name;
    local lcd = NBSBChecks.GetLastClickedData();
    local PopulatorIndices = _G[_listCtnr.."ParamList"].PopulatorIndices;
    if lcd and lcd.checkName then
        local param_seq = NBSBActionBar.GetParamDataForCurrentSlot(lcd.checkName)
        if param_seq then
            param_seq_data = param_seq[lcd.index];
            if param_seq_data then
                local index,meta_type = activeWindow:match(_listCtnr.."ParamListRow(%d+)(%w+)");
                index = tonumber(index);
                if index~=nil and meta_type~=nil then
                    local rowFrame = _listCtnr.."ParamListRow"..index;
                    local dataIndex = PopulatorIndices[index];
                    local parameter = NBSBParam.Data[ dataIndex ];
                    param_seq_data[parameter]=NBSBRegister.GetValueForParameter( parameter, rowFrame, meta_type)
                end
            end
        end
    end
end

function NBSBParam.OnAbilityTT()
    local activeWindow = SystemData.ActiveWindow.name;
    local lcd = NBSBChecks.GetLastClickedData();
    local PopulatorIndices = _G[_listCtnr.."ParamList"].PopulatorIndices;
    if lcd and lcd.checkName then
        local param_seq = NBSBActionBar.GetParamDataForCurrentSlot(lcd.checkName)
        if param_seq then
            param_seq_data = param_seq[lcd.index];
            if param_seq_data then
                local matchstr = _listCtnr.."ParamListRow(%d+)(%w+)";
                local index,meta_type = activeWindow:match(_listCtnr.."ParamListRow(%d+)(%w+)");
                index = tonumber(index);
                if index~=nil and meta_type~=nil then
                    local rowFrame = _listCtnr.."ParamListRow"..index;
                    local dataIndex = PopulatorIndices[index];
                    local parameter = NBSBParam.Data[ dataIndex ];
                    local abilityId = param_seq_data[parameter];
                    if abilityId~=nil and abilityId~=0 then
                        local abilityData = GetAbilityData(abilityId);
                        if( abilityData ~= nil and abilityData.abilityType ~= GameData.AbilityType.INVALID) then
                            local text = AbilitiesWindow.AbilityTypeDesc[ AbilitiesWindow.Modes.MODE_ACTION_ABILITIES ];
                            local anchor = { Point="right", RelativeTo=rowFrame, RelativePoint="left", XOffset=0, YOffset=0 };
                            Tooltips.CreateAbilityTooltip( abilityData, SystemData.ActiveWindow.name, anchor, text )
                            return;
                        else
                            local itemData = DataUtils.FindItem(abilityId);
                            if itemData==nil then
                                itemData = NerfedMemory.getActionDataCache(abilityId);
                            end
                            if itemData then
                                Tooltips.CreateItemTooltip( itemData, 
                                                            SystemData.ActiveWindow.name,
                                                            anchor, 
                                                            Tooltips.ENABLE_COMPARISON, 
                                                            nil, nil, nil );                            
                            end
                        end
                    end
                end
            end
        end
    end
end