NBSBStrings = {};
NBSBStrings.UNKNOWN             = 1;
NBSBStrings.TITLE               = 2;
NBSBStrings.ADDON_LABEL         = 3;
NBSBStrings.SEQ_LABEL           = 4;
NBSBStrings.LOAD_LABEL          = 5;
NBSBStrings.SAVE_LABEL          = 6;
NBSBStrings.ADDON_INST          = 7;
NBSBStrings.SETUP_TITLE         = 8;
NBSBStrings.RESET_LABEL         = 9;
NBSBStrings.NIL_LABEL           = 10;
NBSBStrings.ADD_TT              = 11;
NBSBStrings.DEL_TT              = 12;
NBSBStrings.UP_TT               = 13;
NBSBStrings.DOWN_TT             = 14;
NBSBStrings.ACTION_BUTTON_TT    = 15;
NBSBStrings.NONE_SELECTED       = 16;
NBSBStrings.NONE_AVAILABLE      = 17;
NBSBStrings.DEL_LABEL           = 18;
NBSBStrings.NBSB_CMD_LIST       = 19;
NBSBStrings.SAVE_SUCCEEDED      = 20;
NBSBStrings.SAVE_FAILED         = 21;

local NBSStringMapping = {};
local nbs_english_mapping = {};
nbs_english_mapping[NBSBStrings.UNKNOWN]                   = StringToWString("UNKNOWN");
nbs_english_mapping[NBSBStrings.TITLE]                     = StringToWString("NerfedButtons Sequence Builder");
nbs_english_mapping[NBSBStrings.ADDON_LABEL]               = StringToWString("AddOn");
nbs_english_mapping[NBSBStrings.SEQ_LABEL]                 = StringToWString("Sequence");
nbs_english_mapping[NBSBStrings.LOAD_LABEL]                = StringToWString("Load");
nbs_english_mapping[NBSBStrings.SAVE_LABEL]                = StringToWString("Save");
nbs_english_mapping[NBSBStrings.ADDON_INST]                = StringToWString("For Addon");
nbs_english_mapping[NBSBStrings.SETUP_TITLE]               = StringToWString("Save Sequence");
nbs_english_mapping[NBSBStrings.RESET_LABEL]               = StringToWString("Reset");
nbs_english_mapping[NBSBStrings.NIL_LABEL]                 = StringToWString("NOT DEFINED");
nbs_english_mapping[NBSBStrings.ADD_TT]                    = StringToWString("Add Check");
nbs_english_mapping[NBSBStrings.DEL_TT]                    = StringToWString("Remove Selected Check");
nbs_english_mapping[NBSBStrings.UP_TT]                     = StringToWString("Move Selected Check Up");
nbs_english_mapping[NBSBStrings.DOWN_TT]                   = StringToWString("Move Selected Check Down");
nbs_english_mapping[NBSBStrings.ACTION_BUTTON_TT]          = StringToWString("Drag ability from ability window to here");
nbs_english_mapping[NBSBStrings.NONE_SELECTED]             = StringToWString("...");
nbs_english_mapping[NBSBStrings.NONE_AVAILABLE]            = StringToWString("None Available");
nbs_english_mapping[NBSBStrings.DEL_LABEL]                 = StringToWString("Delete");
nbs_english_mapping[NBSBStrings.NBSB_CMD_LIST]             = StringToWString("[NBSequence Builder]Use /nbsb to launch UI");
nbs_english_mapping[NBSBStrings.SAVE_SUCCEEDED]            = StringToWString("Save Succeeded.");
nbs_english_mapping[NBSBStrings.SAVE_FAILED]               = StringToWString("Save Failed.");


NBSStringMapping[SystemData.Settings.Language.ENGLISH] = nbs_english_mapping;

local NBBaseTable = {};
NBBaseTable.__index = nbs_english_mapping;

local function NBSGetLanguageMapping(lang)
    if NBSStringMapping[lang] == nil then
        NBSStringMapping[lang] = {};
        setmetatable(NBSStringMapping[lang],NBBaseTable);
    end
    return NBSStringMapping[lang];
end


local function NBSGetActiveLanguageMapping()
    return NBSGetLanguageMapping(SystemData.Settings.Language.active);
end

NBSBLang = {};

function NBSBLang.GetString(str_id)
    local mapping = NBSGetActiveLanguageMapping();
    local str_val = mapping[str_id];
    if str_val == nil then
        str_val = mapping[NBSBStrings.UNKNOWN];
    end
    return str_val;
end

