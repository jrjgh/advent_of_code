input ← ⍎¨¨⊃⎕nget'/Users/jj/code/advent_of_code/2021/day3/input.txt' 1
gamma_rate ← {⊃((⍴⍵)÷2)<+⌿⍵}
epsilon_rate ← ~⍤gamma_rate
a ← {(2⊥epsilon_rate⍵)×2⊥gamma_rate⍵ }
