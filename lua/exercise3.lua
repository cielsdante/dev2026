-- guessing game with clues

-- number to guess (1 to 10)
local number_to_guess = math.random(10)
local user_number

while user_number ~= number_to_guess do
    io.write("\nYour prediction: " )
    user_number = tonumber(io.read())

    if user_number == number_to_guess then
        io.write("You got it right! System number: " .. number_to_guess)
        break
    elseif user_number > number_to_guess then
        io.write("The system's number is less than your prediction.")
    elseif user_number < number_to_guess then
        io.write("The system's number is higher than your preditction.")
    end

    if number_to_guess % 2 == 0 then
        io.write("\nThe system number is even")

    else
        io.write("\nThe system number is odd")
    end
end