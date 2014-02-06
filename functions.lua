
-- Recursion
function factorial(n)
  if n == 0 then
    return 1
  else
    return n * factorial(n - 1)
  end
end

print(factorial(10))                                  -- 3628800

-- Multiple return values
function addVector(x1, y1, x2, y2)
  return x1 + y1, x2 +y2
end

x, y = addVector(1, 6, 2, 4)
print(x,y)                                            -- 7    6

-- First class objects
function curry(f, x)
  return function (y, ...)
		       return f(x,y,...) 
	       end
end

plusOne = curry(function(x, y) return x + y end, 1)
print(plusOne(2))                                     -- 3

