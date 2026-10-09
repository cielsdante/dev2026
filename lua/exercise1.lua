-- determine the youngest and oldest ages among three people

io.write("Write the first age: ")
local age1 = tonumber(io.read())

io.write("Write the second age: ")
local age2 = tonumber(io.read())

io.write("Write the third age: ")
local age3 = tonumber(io.read())

local youngest
local oldest

if age1 > age2 then
    oldest = age1
    youngest = age2 --
else
    oldest = age2
    youngest = age1
end

if age3 > oldest then
    oldest = age3

elseif age3 < youngest then
    youngest = age3
end


io.write("The oldest age is: " .. oldest .. "\n")
io.write("The youngest age is: " .. youngest)

-- print(age1)
-- print(age2)
-- print(age3)

