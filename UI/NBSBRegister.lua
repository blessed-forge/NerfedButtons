NBSBRegister = {};
NBSBRegister.ParameterMetaData = {};
NBSBRegister.Translations = {};

local _DEBUG = false;

local function default_(x)
    return x;
end

local function processValue(value)
    local number = tonumber(value)
    local string = tostring(value)
    --if number~=nil then
    if tostring(value) == tostring(tonumber(value)) then
        return number
    elseif value~=nil and string~=nil and string ~= "" then
        return string
    end
end

local translations = { ["to"]=default_, ["from"]=default_};

local function findIndex( t, item )
    local i,v;
    for i,v in ipairs(t) do
        if v==item then
            return i;
        end
    end
end

function NBSBRegister.GetMetaDataByType( name )
    return NBSBRegister.ParameterMetaData[ name ];
end

function NBSBRegister.SetupParameter(parameter,rowFrame)
    LabelSetText(rowFrame.."Label",StringToWString(parameter));            
    WindowSetShowing(rowFrame.."other",false);
    WindowSetShowing(rowFrame.."list",false);
    WindowSetShowing(rowFrame.."boolean",false);
    WindowSetShowing(rowFrame.."ability",false);
    WindowSetShowing(rowFrame.."abilityedit",false);
    local meta_data = NBSBRegister.GetMetaDataByType(parameter);
    if meta_data == nil then
        d("No meta registration for "..parameter);
    elseif meta_data.meta_type == "boolean" then
        WindowSetShowing(rowFrame.."boolean",true);
        ButtonSetPressedFlag(rowFrame.."booleanButton",false)
    elseif meta_data.meta_type == "list" then
        WindowSetShowing(rowFrame.."list",true);
        local pad_first;
        if meta_data.skipUndefined then
            pad_first = nil;
        else
            pad_first = NBSBLang.GetString(NBSBStrings.NIL_LABEL);
        end
        NBSBCommon.ComboBoxSetItemsFromList(rowFrame.."list",meta_data.l_display, pad_first);
        ComboBoxSetSelectedMenuItem(rowFrame.."list",1);
    elseif meta_data.meta_type == "ability" or meta_data.meta_type == "item" then
        WindowSetShowing(rowFrame.."ability",true);
        WindowSetShowing(rowFrame.."abilityedit",true);
        local abilityData = GetAbilityData(0);
        local texture,tx,ty = GetIconData(abilityData.iconNum);
        DynamicImageSetTexture( rowFrame.."ability", texture, tx, ty );
        DynamicImageSetTextureDimensions(rowFrame.."ability", 64,64 );
        TextEditBoxSetText(rowFrame.."abilityedit",StringToWString(""));
	--TextEditBoxSetText(rowFrame.."abilityedit", L"");
    else
        WindowSetShowing(rowFrame.."other",true);
        TextEditBoxSetText(rowFrame.."other",StringToWString(""));
	--TextEditBoxSetText(rowFrame.."other", L"");
    end
end

function NBSBRegister.SetValueForParameter( param_name, rowFrame, value )
    local entry = NBSBRegister.ParameterMetaData[ param_name ];
    if entry then
        local tval = entry.translator["to"](value);
        if entry.meta_type == "list" then
            local vindex = findIndex(entry.l_value, tval);
            if vindex then
                vindex = vindex+1;
                ComboBoxSetSelectedMenuItem(rowFrame.."list",vindex);
                return true;
            end
        elseif entry.meta_type == "number" then
            tval = tostring(tval);
            TextEditBoxSetText(rowFrame.."other",StringToWString(tval));
            return true;
        elseif entry.meta_type == "text" then
	        tval = tostring(tval);
            TextEditBoxSetText(rowFrame.."other",StringToWString(tval));
            return true;
        elseif entry.meta_type == "boolean" then
            ButtonSetPressedFlag(rowFrame.."booleanButton",tval);
            return true;
        elseif entry.meta_type == "ability" then
            local texture,tx,ty;
            local tAbility = tonumber(value);
            local abilityData = GetAbilityData(tAbility);
            texture,tx,ty = GetIconData(abilityData.iconNum);
            DynamicImageSetTexture( rowFrame.."ability", texture, tx, ty );
            DynamicImageSetTextureDimensions(rowFrame.."ability", 64,64 );
            TextEditBoxSetText(rowFrame.."abilityedit",towstring(tAbility));
        elseif entry.meta_type == "item" then
            local texture,tx,ty;
            local tItem = tonumber(value);
            local itemData = DataUtils.FindItem(tItem);
            if itemData then
                NerfedMemory.setActionDataCache(tItem,itemData);
                texture,tx,ty = GetIconData(itemData.iconNum);
                DynamicImageSetTexture( rowFrame.."ability", texture, tx, ty );
                DynamicImageSetTextureDimensions(rowFrame.."ability", 64,64 );
                TextEditBoxSetText(rowFrame.."abilityedit",towstring(tItem));
            end
        end
    end
    return false;
end

local function getAbilityData()
    if Cursor.IconOnCursor() then
        local ability = Player.GetAbilityData (Cursor.Data.ObjectId)
        if ability == nil or ability.abilityType == GameData.AbilityType.TACTIC then
            return;
        end
        local abilityId = Cursor.Data.ObjectId
        Cursor.Clear ()
        return abilityId;
    end
end


local function getItemData()
    if Cursor.IconOnCursor() then
        local item = DataUtils.FindItem(Cursor.Data.ObjectId);
        if item == nil then
            return;
        end
        local itemId = Cursor.Data.ObjectId;
        NerfedMemory.setActionDataCache(itemId,item);
        Cursor.Clear ()
        return itemId;
    end
end

function NBSBRegister.GetValueForParameter( param_name, rowFrame, meta_type)
    local entry = NBSBRegister.ParameterMetaData[ param_name ];
    local tval;
    if entry then
        if entry.meta_type == "list" then
            local vindex = ComboBoxGetSelectedMenuItem(rowFrame.."list")-1;
            if vindex >= 1 then
                tval = entry.l_value[vindex]
                tval = entry.translator["from"](tval)
            end
        elseif entry.meta_type == "number" then
            tval = TextEditBoxGetText(rowFrame.."other")
            tval = entry.translator["from"](tval)
        elseif entry.meta_type == "text" then
           tval = TextEditBoxGetText(rowFrame.."other")
           tval = tval
        elseif entry.meta_type == "boolean" then
            tval = not ButtonGetPressedFlag(rowFrame.."booleanButton");
            ButtonSetPressedFlag(rowFrame.."booleanButton",tval)
            tval = entry.translator["from"](tval)
        elseif entry.meta_type == "ability" then
            local abilityId;
            if meta_type~=nil and meta_type=="abilityedit" then
                abilityId = tonumber(TextEditBoxGetText(rowFrame.."abilityedit"));
            else
                abilityId = getAbilityData();
            end
            local texture,tx,ty;
            local tAbility = abilityId or 0;
            local abilityData = GetAbilityData(tAbility);
            texture,tx,ty = GetIconData(abilityData.iconNum);
            DynamicImageSetTexture( rowFrame.."ability", texture, tx, ty );
            TextEditBoxSetText(rowFrame.."abilityedit",towstring(tAbility));
            return abilityId;
        elseif entry.meta_type == "item" then
            local itemId;
            if meta_type~=nil and meta_type=="abilityedit" then
                itemId = tonumber(TextEditBoxGetText(rowFrame.."abilityedit"));
            else
                itemId = getItemData();
            end
            local texture,tx,ty;
            local tItem = itemId or 0;
            local itemData = DataUtils.FindItem(tItem);
            texture,tx,ty = GetIconData(itemData.iconNum);
            DynamicImageSetTexture( rowFrame.."ability", texture, tx, ty );
            TextEditBoxSetText(rowFrame.."abilityedit",towstring(tItem));
            return itemId;
        end
    end
    return processValue(tval);
end

local function registerBasics( name, meta_type, config )
    local val = NBSBRegister.ParameterMetaData[ name ];
    if val~=nil then
        d(tostring(name).." is already defined");
    end
    local translator = config.translator or translations;
    local reg = { ["meta_type"] = meta_type, ["translator"] = translator};
    NBSBRegister.ParameterMetaData[ name ] = reg;
    return reg;
end

function NBSBRegister.RegisterListCheck( name, config )
    config = config or {};
    local l_display = config.display;
    if not l_display then
        d("Must provide display for list type:"..tostring(name));
        return;
    end
    local l_value = config.values;
    if not l_value then
        d("Must provide values for list type:"..tostring(name));
        return;
    end
    local reg = registerBasics( name, "list", config );
    reg["l_display"]=l_display;
    reg["l_value"]=l_value;
    reg["skipUndefined"] = config.skipUndefined;
end

function NBSBRegister.RegisterItemCheck( name, config )
    config = config or {};
    local reg = registerBasics( name, "item", config );
end

function NBSBRegister.RegisterAbililtyCheck( name, config )
    config = config or {};
    local reg = registerBasics( name, "ability", config );
end

function NBSBRegister.RegisterNumberCheck( name, config )
    config = config or {};
    local reg = registerBasics( name, "number", config );
    reg["from"] = config["to"];
    reg["to"] = config["from"];
end

function NBSBRegister.RegisterTextCheck( name, config )
    config = config or {};
    registerBasics( name, "text", config );
end

function NBSBRegister.RegisterBoolCheck( name, config )
    config = config or {};
    registerBasics( name, "boolean", config );
end

local providers = {};

function NBSBRegister.RegisterSequenceProvider( name, list_provider, deleter, getter, setter)
    providers[name] = { ["name"] = StringToWString(name), ["list_provider"] = list_provider,
                        ["deleter"]=deleter, ["getter"] = getter, ["setter"] = setter };
end

function NBSBRegister.GetSequenceProviders( )
    local lst = {};
    for _,v in pairs(providers) do
        table.insert(lst,v.name);
    end
    return lst;
end

function NBSBRegister.GetSequencesForProvider( name )
    local provider = providers[name];
    if provider then
        return provider.list_provider();
    end
    return {};
end

function NBSBRegister.GetSequenceFromProvider( name, seq_name )
    local provider = providers[name];
    if provider then
        local value = provider.getter( seq_name );
        if value then
            return NBSBCommon.DeepCopy(value);
        end
    end
    return {};
end

function NBSBRegister.DelSequenceFromProvider( name, seq_name )
    local provider = providers[name];
    if provider then
        return provider.deleter( seq_name );
    end
    return false;
end

function NBSBRegister.SetSequenceOnProvider( name, seq_name, seq )
    local provider = providers[name];
    if provider then
        local seq_copy = NBSBCommon.DeepCopy(seq);
        return provider.setter( seq_name, seq_copy );
    end
    return false;
end


--this should be a string
NBSBRegister.RegisterNumberCheck( "stackCount" );
local selfTranslator = { ["from"] = function(x) if x then return "s" end end,
                         ["to"] = function(x) if x=="s" then return true else return false end end};
NBSBRegister.RegisterBoolCheck( "self", {translator=selfTranslator} );
NBSBRegister.RegisterBoolCheck( "onlySelf", {translator=selfTranslator} );
NBSBRegister.RegisterNumberCheck( "virtualCooldown" );
NBSBRegister.RegisterNumberCheck( "hpPercent" );
NBSBRegister.RegisterNumberCheck( "duration" );
local dl = {L"tank",L"mdps",L"rpdps",L"rmdps",L"rsupp",L"msupp",L"melee",L"cast",L"dps",L"pdps",L"rdps",L"supp",L"wu",L"npc"};
local vl = {"tank","mdps","rpdps","rmdps","rsupp","msupp","melee","cast","dps","pdps","rdps","supp","wu","npc"};
local rconfig = {display=dl,values=vl};
NBSBRegister.RegisterListCheck( "archetype" , rconfig);
dl = {L"+",L"-"}
vl = {"+","-"};
rconfig = {display=dl,values=vl};
NBSBRegister.RegisterListCheck( "need" , rconfig);
dl = {L">=",L"==",L"<="}
vl = {">=","==","<="};
rconfig = {display=dl,values=vl};
NBSBRegister.RegisterListCheck( "check" , rconfig);
NBSBRegister.RegisterNumberCheck( "hp" );
dl = {L'heal',L'dbuf',L'buf',L'def',L'off',L'dam',L'sbuf',L'hex',L'cur',L'crip',L'ail',L'bols',L'aug',L'bless',L'ench',L'unst',L'imm',L'sna',L'roo'};
vl = {'heal','dbuf','buf','def','off','dam','sbuf','hex','cur','crip','ail','bols','aug','bless','ench','unst','imm','sna','roo'}; 
rconfig = {display=dl,values=vl};
NBSBRegister.RegisterListCheck( "condition" , rconfig);
dl = {L'f',L'e',L'p'};
vl = {'f','e','p'};
rconfig = {display=dl,values=vl};
NBSBRegister.RegisterListCheck( "target" , rconfig);
NBSBRegister.RegisterNumberCheck( "mechanic" );
dl = {GetCareerLine(GameData.CareerLine.ENGINEER, 1),GetCareerLine(GameData.CareerLine.SHADOW_WARRIOR, 1),GetCareerLine(GameData.CareerLine.SQUIG_HERDER, 1)
      ,GetCareerLine(GameData.CareerLine.IRON_BREAKER, 1),GetCareerLine(GameData.CareerLine.BLACKGUARD, 1),GetCareerLine(GameData.CareerLine.SWORDMASTER, 1),
      GetCareerLine(GameData.CareerLine.BLACK_ORC, 1),GetCareerLine(GameData.CareerLine.KNIGHT, 1),GetCareerLine(GameData.CareerLine.CHOSEN, 1),
      GetCareerLine(GameData.CareerLine.WITCH_HUNTER, 1),GetCareerLine(GameData.CareerLine.WITCH_ELF, 1),GetCareerLine(GameData.CareerLine.WHITE_LION, 1),
      GetCareerLine(GameData.CareerLine.MARAUDER, 1),GetCareerLine(GameData.CareerLine.SLAYER, 1),GetCareerLine(GameData.CareerLine.CHOPPA, 1),
      GetCareerLine(GameData.CareerLine.ARCHMAGE, 1),GetCareerLine(GameData.CareerLine.SHAMAN, 1),GetCareerLine(GameData.CareerLine.RUNE_PRIEST, 1),
      GetCareerLine(GameData.CareerLine.ZEALOT, 1),GetCareerLine(GameData.CareerLine.BRIGHT_WIZARD, 1),GetCareerLine(GameData.CareerLine.SORCERER, 1),
      GetCareerLine(GameData.CareerLine.MAGUS, 1),GetCareerLine(GameData.CareerLine.WARRIOR_PRIEST, 1),GetCareerLine(GameData.CareerLine.DISCIPLE, 1), L"NPC",L"OBJ"};
vl = {'en','sw','sh','ib','bg','sm','bo','kbs','chs','wh','we','wl','ma','sl','chp','am','sha','rp','zlt','bw','sor','mag','wp','dok','npc','obj'};
rconfig = {display=dl,values=vl};
NBSBRegister.RegisterListCheck( "career" , rconfig);
NBSBRegister.RegisterAbililtyCheck( "abilityId" );
NBSBRegister.RegisterAbililtyCheck( "effect" );
NBSBRegister.RegisterItemCheck("itemId");
NBSBRegister.RegisterNumberCheck( "ap" );
NBSBRegister.RegisterTextCheck( "text" );
NBSBRegister.RegisterNumberCheck( "tier" );


local function NBListProvider()
    local slot,sequence;
    local result = {};
    for slot, sequence in pairs(NerfedMemory.GetBindings()) do
        if type(slot)=="number" and ( slot>=1 and slot<=120 ) then
            table.insert(result,StringToWString(tostring(slot)));
        end
    end
    return result;
end

local function NBDeleter( seq_name )
    local slot = tonumber(tostring(seq_name));
    if slot and ( slot>=1 and slot<=120) then
        local success = NerfedMemory.ClearBinding(slot)
        if success then
            SetHotbarData(slot, GameData.PlayerActions.NONE, 0)
        end
        return success;
    end
    return false;
end

local function NBGetter( seq_name )
    local slot = tonumber(tostring(seq_name));
    if slot then
        return NerfedMemory.GetBinding(slot);
    end
end

local function NBSetter( seq_name, seq )
    local slot = tonumber(tostring(seq_name));
    if slot and ( slot>=1 and slot<=120) then
        return NerfedMemory.SetBinding(slot,seq);
    end
    return false;
end

NBSBRegister.RegisterSequenceProvider( "NerfedButtons", NBListProvider, NBDeleter, NBGetter, NBSetter);