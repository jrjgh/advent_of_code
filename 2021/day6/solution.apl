input ← ⍎¨','(≠⊆⊢)⊃⊃ ⎕nget'/Users/jj/code/advent_of_code/2021/day6/input.txt' 1
s ← {⍵=0:6 ⋄ ⍵ - 1}
f ← {(s¨⍵),(+/0=⍵)⍴8}
part_1 ← {⍺=0:⍴⍵ ⋄ (⍺-1)∇f⍵}
80 part_1 input

⍝ Part 2, applying voidhawk's technique
⎕IO ← 0
f ← {b←3⌽⍵[0],8⍴0⋄m←1⌽⍵⋄m+b}
+/(f⍣256)m

⍝ Brilliant, from voidhawk42 on reddit:
⎕IO ⎕PP←0 17
p←+/(⍳9)∘.=⍎⊃⊃⎕nget'06.txt'1
f←{(1⌽⍵)+3⌽(⊃⍵),8⍴0}
+/f⍣80⊢p ⍝ part 1
+/f⍣256⊢p ⍝ part 2

