local function Pet(name)
    local age = 10
    return {
        name = name,
        status = "hungry",
        speak = function ()
            print("Meow")
        end,
        feed = function (self)
            print("eating")
        end
        -- daysAlive = age * 365
    }
end

local cat = Pet("Charlie")
local dog = Pet("Jack")
print(cat.name)
print(dog.name)

-- to use functions with self parameters
cat.speak() -- this function doesn't have a self parameter, so I can use like this
dog:feed() -- for dog, I need to use `dog:` because it is like passing this way: dog.feed(dog) (so I am passing the object referente)



-- inheritance
local function Dog(name)
    local dog = Pet(name)

    dog.breed = "doberman"
    dog.loyalty = 0

    dog.speak = function (self)
        print("Woof")
    end

    return dog
end

local doberman = Dog("Jesse")
print(doberman.name, doberman.breed)
doberman:speak()


local function Cat(name)
    local cat = Pet(name)

    cat.lazy = true

    return cat    
end

