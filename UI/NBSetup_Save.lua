NBSetup_Save = {};
local _parentWindowID = "NBSBCoreWindow";
local _windowID = "NBSetup_Save";
local _okDialog = "NBSetup_SaveOkayDialog";
function NBSetup_Save.Initialize()
    WindowSetShowing(_windowID,false);
    LabelSetText( _windowID.."TitleBarText", NBSBLang.GetString(NBSBStrings.SETUP_TITLE))  
    LabelSetText( _windowID.."Instructions", GetStringFromTable( "CustomizeUiStrings", StringTables.CustomizeUi.CREATE_UI_PROFILE_INSTRUCTIONS ));
    LabelSetText( _windowID.."CreateFromInstructions", NBSBLang.GetString(NBSBStrings.ADDON_INST) );
    ButtonSetText( _windowID.."OkayButton", GetStringFromTable( "CustomizeUiStrings", StringTables.CustomizeUi.CREATE_UI_PROFILE_CREATE_BUTTON ) )
    ButtonSetText( _windowID.."CancelButton", GetString( StringTables.Default.LABEL_CANCEL ) )  
end

local function findIndex( t, item )
    local i,v;
    for i,v in ipairs(t) do
        if v==item then
            return i;
        end
    end
end

local providers;
function NBSetup_Save.Show()
    local showing = not WindowGetShowing(_windowID);
    local addon,sequence = NBSBCore.GetCurrentAddonAndSequence();
    WindowSetShowing(_windowID,showing);
    if showing then
        if addon == nil then
            sequence = L"";
        end
        TextEditBoxSetText(_windowID.."EditBox",sequence)
        providers = NBSBRegister.GetSequenceProviders();
        NBSBCommon.ComboBoxSetItemsFromList(_windowID.."AddonList",providers,NBSBLang.GetString(NBSBStrings.NONE_SELECTED));
        local pindex;
        if addon then
            pindex = findIndex(providers,addon);
        end
        if pindex ~= nill then
            pindex = pindex + 1;
        else
            pindex = 1;
        end
        ComboBoxSetSelectedMenuItem(_windowID.."AddonList",pindex);
        WindowClearAnchors(_windowID);
        WindowAddAnchor(_windowID,"center",_parentWindowID,"center",0,0);
    end
end

function NBSetup_Save.OnOkayButton()
    local sel_index = ComboBoxGetSelectedMenuItem(_windowID.."AddonList");
    local seq_name = TextEditBoxGetText(_windowID.."EditBox");
    if sel_index > 1 and tostring(seq_name)~="" then
        sel_index = sel_index - 1;
        local msg = NBSBLang.GetString(NBSBStrings.SAVE_FAILED);
        if NBSBRegister.SetSequenceOnProvider( WStringToString(providers[sel_index]),seq_name, NBSBCore.GetCurrentSequence()) then
            msg = NBSBLang.GetString(NBSBStrings.SAVE_SUCCEEDED);
        end
        --[[local dialog = DialogManager.MakeOneButtonDialog( msg, GetPregameString( StringTables.Pregame.LABEL_OKAY ) , function() end, DialogManager.TYPE_MODAL,_okDialog);
        local k,v;
        for k,v in pairs(DialogManager.oneButtonDlgs) do
            if v.id == _okDialog then
                DialogManager.PositionDialog(v, _windowID);
            end
        end
        --]]
        NBSetup_Save.Show()
    end
end