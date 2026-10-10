-- calculate fibonacci

io.write("Up to which term does the sequence go? ")
local term = tonumber(io.read())

local result = 0 
local fn1 = 1
local fn2 = 1

for i = 0, term, 1 do
    result = fn1 + fn2

    fn2 = fn1
    fn1 = result

    result = fn1 + fn2

    
end

print(result)