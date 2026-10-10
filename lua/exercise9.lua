-- Hangman

local words = { "banana", "computer", "lua", "hangman", "terminal" }
math.randomseed(os.time())
local word = words[math.random(#words)]

-- build a table with the individual letters
local word_letters = {}
for i = 1, #word, 1 do
    word_letters[i] = word:sub(i, i)
end

-- game state 
local guessed_letters = {}
local correct_guesses = {}
local max_attempts = 6
local wrong_guesses = 0

-- function that displays the hidden word / word

local function display_word()
    local display = ""
    
    for i = 1, #word_letters, 1 do
        local letter = word_letters[i]

        if correct_guesses[letter] then 
            display = display .. letter .. " "
        else
            display = display .. " _ "  
        end
    end

    print("\n Word: " .. display)
end

-- check for win
local function is_winner()
    for _, letter in ipairs(word_letters) do
        if not correct_guesses[letter] then
            return false
        end
    end

    return true
end

-- main game
while true do
    display_word()

    io.write("\nGuess a letter: ")
    local guess = io.read():lower()

    if #guess ~= 1 or not guess:match("%a") then
        print("Invalid input. Enter a single letter")
    
    elseif guessed_letters[guess] then
        print("You already guessed that letter")
    
    else 
        guessed_letters[guess] = true
        local found = false

        for _, letter in ipairs(word_letters) do
            if letter == guess then
                correct_guesses[guess] = true
                found = true
            end
        end

        if not found then
            wrong_guesses = wrong_guesses + 1
            print("Wrong guess! Attempts left: " .. (max_attempts - wrong_guesses))
        end

        if is_winner() then
            display_word()
            print("\n Congratulations! You guessed the word: " .. word)
            break


        elseif wrong_guesses >= max_attempts then
            print("\n Game Over! The word was: " .. word)
            break 
        end
    
    end
end