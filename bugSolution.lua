local function foo(t)
  if type(t) == "table" then
    for i, v in ipairs(t) do -- Use ipairs for sequential iteration if it is array like
      if type(v) == "table" then
        foo(v)
      end
    end
  end
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
foo(t) --this will only iterate on array like tables

-- if you have a table that you need to maintain the order even if it has keys that are not integer values
local function foo_with_order(t,ordered_keys)
  if type(t) == "table" then
    for _,k in ipairs(ordered_keys) do
      local v = t[k]
      if type(v) == "table" then
        foo_with_order(v,ordered_keys)
      end
    end
  end
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
local ordered_keys = {"a","b"}
foo_with_order(t,ordered_keys)