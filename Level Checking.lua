local Table = {
    [1] = {
        Level = 0
    },

    [2] = {
        Level = 5
    },

    [3] = {
        Level = 10
    }
}

local Indexes = #Table
local MyLevel = 15

for i, v in pairs(Table) do
    if MyLevel >= v.Level then
        if i ~= Indexes then
            if MyLevel < Table[i + 1].Level  then
                for k, x in pairs(v) do
                    print(k .. ": " .. x)
                end 
            end 
        else
            for k, x in pairs(v) do
                print(k .. ": " .. x)
            end 
        end
    end
end
