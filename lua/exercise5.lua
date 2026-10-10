-- calculate the factorial of a number

io.write("Write a number: ")
local number = tonumber(io.read())

local fatorial = 0
local result = 1

while fatorial < number do
    fatorial = fatorial + 1
    result = result * fatorial
    print(result)
end

print(result)

