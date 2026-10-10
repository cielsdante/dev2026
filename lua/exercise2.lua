-- simple calculator

io.write("Insert the first number: ")
local number1 = tonumber(io.read())

io.write("Insert the second number: ")
local number2 = tonumber(io.read())

io.write("Choose the operation: ")
local operation = io.read()

local result
-- choose the operation

if operation == "+" then
    result = number1 + number2

elseif operation == "-" then
    result = number1 - number2

elseif operation == "*" then
    result = number1 * number2

elseif operation == "/" then
    result = number1 / number2
end

io.write("The result of the operation is: " .. result)
