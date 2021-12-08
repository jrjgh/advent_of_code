input ← ⍎¨','(≠⊆⊢)⊃⊃⎕nget'/Users/jj/code/advent_of_code/2021/day7/input.txt' 1
⌊/{+/|⍵-input}¨⍳⌈/input ⍝ Part 1
t ← {(⍵+1)×⍵÷2}
⌊/{+/t¨|⍵-input}¨⍳⌈/input ⍝ Part 2