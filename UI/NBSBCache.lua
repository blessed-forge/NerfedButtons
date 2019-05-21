NBSBCache = {}

function NBSBCache.Initialize()
    if NBSBCache.Cache == nil then
        NBSBCache.Cache = {};
    end
end

function NBSBCache.Get(key)
    if(NerfedMemory.getActionDataCache~=nil) then
        return NerfedMemory.getActionDataCache(key);
    else
        return NBSBCache.Cache[key];
    end
end

function NBSBCache.Set(key,value)
    if(NerfedMemory.setActionDataCache~=nil) then
        NerfedMemory.setActionDataCache(key,value);
    else
        NBSBCache.Cache[key]=value;
    end
end

function NBSBCache.Clear()
    NBSBCache.Cache = {};
end