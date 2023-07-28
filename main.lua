mainList = {}

for k,v in pairs(list) do
    local hash = GetHashKey(v)
    mainList[hash] = v
end

exports('getModelByHash', function(hash)
    return mainList[hash] or "Model Not Found"
end)