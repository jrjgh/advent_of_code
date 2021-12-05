input←⊃⎕NGET'/home/johnjacob/code/advent_of_code/2021/day4/input.txt' 1
calls ← ⍎¨',' (≠⊆⊢) ⊃input
b ← 1↓(⊃¨0≠⍴¨input)⊆input
boards ← ↑¨⍎¨¨¨{' '(≠⊆⊢)⍵}¨¨b
mark ← {b←⍵⋄b[⍸⍺=b]←¯1⋄b}
bingo ← {(+/¯5=+/⍵)∨+/¯5=+⌿⍵}
score ← {⍺×+/+/0@{¯1=⍵}⍵}
part1 ←{b←⍺[1]mark¨⍵ ⋄ c←bingo¨b ⋄ 1=+/c:⍺[1]score⊃b[⍸c] ⋄ (1↓⍺)∇ b}
part2 ← {b←⍺[1]mark¨⍵ ⋄ c←1>bingo¨b ⋄ 0=+/c:⍺[1]score⊃b[1] ⋄1=+/c:(1↓⍺)∇b[⍸c]⋄ (1↓⍺)∇ b}
calls part1 boards
calls part2 boards
