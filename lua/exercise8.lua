-- print the multiplication table for a number provided by the user
-- using a for loop

io.write("Write a number: ")
local number = tonumber(io.read())

local result = 0
for i = 1, 10, 1 do
    result = i * number
    io.write(number .. " * " .. i .. " = " .. result .. "\n")
end