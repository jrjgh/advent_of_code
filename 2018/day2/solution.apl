input ← ⊃⎕NGET '/Users/jj/code/advent_of_code/2018/day2/input.txt' 1
one_off ← input[⊃⍸1=+/¨~¨ ∘.=⍨ input]
(⊃one_off)[⍸⊃~≠/one_off]
