
-- error function
error("This will abort the program and show this message")

-- assert function
assert(foo == 6, "Error: foo is not 6")

-- nil, message pattern
local file, errorMessage = io.open("myfile.txt", "r")
if file == nil then
  error("Error opening file: "..errorMessage)
end

-- nil, message with assert
local file2 = assert(io.open("loops.lua", "r"))
