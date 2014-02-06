
-- Arrays
local arr = {1, 2, 3, 4, "foo"}
print(arr[1]) -- 1
print(arr[5]) -- foo
arr[8] = 12
print(arr[8]) -- 12
print(arr[7]) -- nil

-- Dictionaries
local dict = { firstName = "John", 
               lastName = "Doe", 
               dateOfBirth = {year = 1999, 
                              month = 12, 
                              day = 15}
              }
print(dict.firstName) -- John
print(dict.dateOfBirth.year) -- 1999
print(dict["firstName"]) -- John

-- Iterators

-- Arrays
for i, v in ipairs(arr) do
  print(i.." = "..tostring(v))
end

-- Dictionaries
for k, v in pairs(dict) do
  print(k.." = "..tostring(v))
end

