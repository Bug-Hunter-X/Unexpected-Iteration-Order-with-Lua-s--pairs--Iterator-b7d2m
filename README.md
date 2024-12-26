# Lua `pairs` Iteration Order Bug

This repository demonstrates a potential issue with Lua's `pairs` iterator.  The `pairs` function does not guarantee any specific iteration order, which can lead to unexpected behavior, particularly when dealing with deeply nested tables.  This can cause subtle bugs that are difficult to track down.

The `bug.lua` file contains a simple example of this issue. The `bugSolution.lua` demonstrates a method to mitigate the issue if you require a specific iteration order.

## How to Reproduce

1. Clone this repository.
2. Run `bug.lua` using a Lua interpreter.
3. Observe the output. The order might not be consistent across different Lua versions or implementations. 
4. Run `bugSolution.lua` which uses `ipairs` for array-like iteration.