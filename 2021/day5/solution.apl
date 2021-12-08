input←⊃⎕NGET'/Users/jj/code/advent_of_code/2021/day5/input.txt'1
coords←⍎¨¨{⍵(∊⊆⊣)⎕d}¨input
is_orthogonal ← {⍵[1]=⍵[3]∨⍵[2]=⍵[4]}
orthogonals ← coords[⍸is_orthogonal¨coords]
fill ← {((⌊/⍵)-1)↓⍳⌈/⍵}
xs ← {⍵[1 3]}
ys ← {⍵[2 4]}
