
-- pcall(f, args...) call f function and return result or nil, errorMessage

local function parseConfigFile(filename)
  local result = {}
  local file = assert(io.open(filename, "r"))
  local lineNumber = 1
  for line in file:lines() do
    local var, val = string.match(line, "(%w+)=(%w+)")
    if var and val then
      result[var] = val
    else
      error(string.format("Error parsing line %d: %s", lineNumber, line))
    end
    lineNumber = lineNumber + 1
  end
  return result
end

local status, resultOrErrorMessage = pcall(parseConfigFile, "config.txt")
if status then
  print(string.format("Sucessfully parsed config file."))
  for k, v in pairs(resultOrErrorMessage) do
    print(k, v)
  end
else
  print("Failed to parse config file. "..resultOrErrorMessage)
end
