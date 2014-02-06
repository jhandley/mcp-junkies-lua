
-- Producer/Consumer

local producer = coroutine.create(function()
                                    for i = 1, 4 do
                                      print("Enter something:")
                                      coroutine.yield(io.read("*line"))
                                    end
                                  end
                                  )

local consumer = coroutine.create(function(prod)
                                    while true do
                                      local status, value = coroutine.resume(prod)
                                      print("Consume: "..value)
                                    end
                                  end
                                  )

coroutine.resume(consumer, producer)
