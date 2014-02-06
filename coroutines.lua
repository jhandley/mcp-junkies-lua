
-- Generators
 local evenNumbers = coroutine.create(function()
                                        local i = 2
                                        while true do
                                          coroutine.yield(i)
                                          i = i + 2
                                      end
                                     end
                                     )

print(evenNumbers)                     -- thread: 002FF108

print(coroutine.resume(evenNumbers))   -- true   2
print(coroutine.resume(evenNumbers))   -- true   4

-- wrap
 local evenNumbers2 = coroutine.wrap(function()
                                       local i = 2
                                       while true do
                                         coroutine.yield(i)
                                         i = i + 2
                                       end
                                     end
                                     )
print(evenNumbers2)      -- function: 0076B028
print(evenNumbers2())    -- 2
print(evenNumbers2())    -- 4
