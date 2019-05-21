NBSBCommon = {}
function NBSBCommon.ComboBoxSetItemsFromList( v_windowName, settingsList, addNIL )
	ComboBoxClearMenuItems(v_windowName);
	if addNIL~=nil then
		ComboBoxAddMenuItem( v_windowName ,addNIL)
	end
	for i, v in ipairs( settingsList ) do
		ComboBoxAddMenuItem( v_windowName , v );
	end
end

function NBSBCommon.OnMouseoverToolTip()
	local window = SystemData.ActiveWindow.name;
	local string_id = tonumber(WindowGetId(window));
	if string_id then
		Tooltips.CreateTextOnlyTooltip( window, nil )
		Tooltips.SetTooltipText( 1, 1, NBSBLang.GetString(string_id))
		Tooltips.Finalize()
		Tooltips.AnchorTooltip( Tooltips.ANCHOR_WINDOW_LEFT)
	end
end

--Taken from http://lua-users.org/wiki/CopyTable
function NBSBCommon.DeepCopy(object)
    local lookup_table = {}
    local function _copy(object)
        if type(object) ~= "table" then
            return object
        elseif lookup_table[object] then
            return lookup_table[object]
        end
        local new_table = {}
        lookup_table[object] = new_table
        for index, value in pairs(object) do
            new_table[_copy(index)] = _copy(value)
        end
        return setmetatable(new_table, getmetatable(object))
    end
    return _copy(object)
end