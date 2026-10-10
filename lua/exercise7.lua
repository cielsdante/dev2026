-- calculate the sum of first N natural numbers, which N
-- is provided by the user, using a while loop

io.write("Write a number: ")
local n = tonumber(io.read())

local i = 0
local result = 0
while i < n do
    i = i + 1
    result = result + i
end

print(result)