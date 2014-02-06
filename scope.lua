-- Everything is global unless you make it local

-- global
n = 12
s = "hello"
function sqr(x)
  return x * x
end

-- local to file
local n_local = 12
local s_local = "hello2"
local function sqr_local(x)
  return x * x
end

-- local to block
function foo()
  local message = "dude" -- not visible outside function
  print(message)
  print(s_local) -- locals in this file are in foo closure ("up values")
end
