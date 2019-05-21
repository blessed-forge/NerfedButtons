NBSBCheckToolTips = {};

local tooltipWindowID = "NBSBCheckTooltip";
local nTl = nil;

function NBSBCheckToolTips.Initialize()
    local Language = "english"

    WindowSetShowing(tooltipWindowID,false);
    for lang, number in pairs(SystemData.Settings.Language) do
        if lang ~= "active" and number == SystemData.Settings.Language.active then
            Language = string.lower(lang)
            break
        end
    end
    nTl = NerfedTalks.LANGUAGES[Language] -- language pointer
    
    -- development fallback
    if not nTl.MSG1 then
        nTl = NerfedTalks.LANGUAGES['englishdev'] -- language pointer
    end
end

local function getShortName(lcheck)
    local check = tostring(lcheck)
    for shortName, checkName in pairs(NerfedChecks.ShortNames) do
        if check == checkName then
            return shortName
        end
    end
    return check
end

function NBSBCheckToolTips.CreateTooltip( check, window )
    local param = getShortName(check);
	local name = nTl['HELP_CHECKS.'..tostring(param)..'.fullname'];
	local desc = nTl['HELP_CHECKS.'..tostring(param)..'.description'];
	local expl = nTl['HELP_CHECKS.'..tostring(param)..'.example'];
	if name~=nil and desc~=nil then
        Tooltips.CreateCustomTooltip( window, tooltipWindowID )
        LabelSetText( tooltipWindowID .. "CheckName", towstring(name) );
        LabelSetText( tooltipWindowID .. "Description", towstring(desc) );
        if expl~=nil then
            LabelSetText( tooltipWindowID .. "Example", towstring(expl) );
        end
        local anchor = { Point="right", RelativeTo=window, RelativePoint="left", XOffset=0, YOffset=0 };
        Tooltips.AnchorTooltip( anchor );
	end
end