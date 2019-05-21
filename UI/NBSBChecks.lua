local _windowID = "NBSBCoreWindow";
local _listCtnr = _windowID.."Lists";

NBSBChecks = {};
NBSBChecks.Data = {};
local last_clicked;

function NBSBChecks.GetLastClicked()
    return last_clicked;
end

function NBSBChecks.SetLastClicked(lc)
    last_clicked = lc;
end

function NBSBChecks.GetLastClickedData()
    if last_clicked then
        return NBSBChecks.Data[last_clicked];
    end
end

function NBSBChecks.ClearList()
    NBSBChecks.SetupListData({})
end

function NBSBChecks.SetupListData(data)
    if data~=nil then
        NBSBChecks.Data = data;
    end
    local sortData = {};
    for i,_ in ipairs(NBSBChecks.Data) do
        sortData[i]=i;
    end
    ListBoxSetDataTable(_listCtnr.."List", "NBSBChecks.Data");
    DataUtils.SetListRowAlternatingTints( _listCtnr.."List", 5 );
    ListBoxSetDisplayOrder(_listCtnr.."List", sortData);
end

function NBSBChecks.PopulateListDisplayData()
    NBSBParam.ClearList()
    local PopulatorIndices = _G[_listCtnr.."List"].PopulatorIndices;
    local rowT = _listCtnr.."ListRow";
    if (PopulatorIndices ~= nil) then				
        for rowIndex, dataIndex in ipairs (PopulatorIndices) do
            local checkData = NBSBChecks.Data[ dataIndex ];
            local rowFrame = rowT..rowIndex;
            if checkData.name == nil then
                WindowSetShowing(rowFrame.."Label",false);
                WindowSetShowing(rowFrame.."Enabled",true);
                WindowSetShowing(rowFrame.."Selection",true);
                NBSBCommon.ComboBoxSetItemsFromList(rowFrame.."Selection",NBSBCore.GetCheckNames());
                ComboBoxSetSelectedMenuItem(rowFrame.."Selection",1);
            else
                WindowSetShowing(rowFrame.."Label",true);
                WindowSetShowing(rowFrame.."Enabled",false);
                WindowSetShowing(rowFrame.."Selection",false);
            end
        end
    end
end

function NBSBChecks.ResetData(data)
    NBSBChecks.SetupListData(data);
    local dataIndex = NBSBChecks.GetLastClicked();
    if dataIndex~=nil then
        local PopulatorIndices = _G[_listCtnr.."List"].PopulatorIndices;
        NBSBChecks.DoCheckRowClicked(PopulatorIndices,nil,dataIndex)
    else
        NBSBParam.ClearList()
    end
end

function NBSBChecks.DoCheckRowClicked(PopulatorIndices,index,dataIndex)
    if index==nil then
        for i=1,5,1 do
            if PopulatorIndices[i]==dataIndex then
                index = i;
            end
        end
    else
        dataIndex = PopulatorIndices[index];        
    end
    NBSBChecks.SetLastClicked(index);
    local rdata = NBSBChecks.Data[ dataIndex ];
    if rdata.name then
        NBSBParam.SetupListDataForParameter(rdata.name);
    end
    DataUtils.SetListRowAlternatingTints( _listCtnr.."List", 5 );
    local rowBackground = _listCtnr.."ListRow"..index.."Background";
    WindowSetTintColor(rowBackground, 136, 0, 0)
    WindowSetAlpha( rowBackground, 1 )
end

--UI Event Handlers
function NBSBChecks.OnCheckRowClicked( flags, x, y )
    NBSBParam.ClearList();
    local activeWindow = SystemData.ActiveWindow.name;
    local PopulatorIndices = _G[_listCtnr.."List"].PopulatorIndices;
    local match_str = _listCtnr.."ListRow(.+)";
    local index = tonumber( activeWindow:match(match_str) );
    NBSBChecks.DoCheckRowClicked(PopulatorIndices,index)
end

function NBSBChecks.OnOverCheck( flags, x, y)
    local activeWindow = SystemData.ActiveWindow.name;
    local index = tonumber(activeWindow:match(_listCtnr.."ListRow(.+)Enabled"));	
    local cBox = _listCtnr.."ListRow"..index.."Selection";
    local checkName = NBSBCore.GetCheckNames()[ComboBoxGetSelectedMenuItem(cBox)];
    NBSBCheckToolTips.CreateTooltip( checkName, activeWindow );
end

function NBSBChecks.OnSetCheck( flags, x, y)
    local activeWindow = SystemData.ActiveWindow.name;
    local index = tonumber(activeWindow:match(_listCtnr.."ListRow(.+)Enabled"));
    local PopulatorIndices = _G[_listCtnr.."List"].PopulatorIndices;
    local dataIndex = PopulatorIndices[index];
    local data = NBSBChecks.Data[ dataIndex ];	
    local cBox = _listCtnr.."ListRow"..index.."Selection";
    local checkName = NBSBCore.GetCheckNames()[ComboBoxGetSelectedMenuItem(cBox)];
    local cname = WStringToString(checkName);
    local checkIndex = NBSBCore.SetParamDataForSlot(NBSBActionBar.GetCurrentSelection()+NBSBActionBar.GetCurrentOffset(), cname);
    data.name = checkName;
    data.checkName = cname;
    data.index = checkIndex;
    NBSBChecks.ResetData();
end