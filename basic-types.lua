-- Number
print(12)                            -- 12
print(1.2)                           -- 1.2
print((1.2 + 0.8)/2)                 -- 1

-- Bool
print(true or false and true)        -- true

-- String
print("hello")                       -- hello
print("hello "..tostring(1))         -- hello 1
print(string.format("hello %d", 11)) -- hello 1

-- Nil
print(nil)                           -- nil

-- Dynamic typing
v = 12
print(type(v)) -- number
v = "hello"
print(type(v)) -- string
