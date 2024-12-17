local function foo(x)
  if x == nil then
    return nil
  elseif x > 10 then
    -- Explicit error handling and return statement
    local result
    local status, result = pcall(function() return x * 2 end)
    if not status then
      error("Error in calculation: " .. result)
    else
      return result
    end
  else
    return x + 1
  end
end

local result = foo(nil)
print(result) -- Output: nil

result = foo(12)
print(result) -- Output: 24

result = foo(5)
print(result)  -- Output: 6

--Adding explicit error handling with pcall ensures that errors are caught and handled appropriately,
--preventing silent nil returns and improving the overall robustness of the function.