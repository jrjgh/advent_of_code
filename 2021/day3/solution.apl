input ← ⍎¨¨⊃⎕nget'/Users/jj/code/advent_of_code/2021/day3/input.txt' 1
gamma_rate ← {⊃((⍴⍵)÷2)<+⌿⍵}
epsilon_rate ← ~⍤gamma_rate
a ← {(2⊥epsilon_rate⍵)×2⊥gamma_rate⍵ }

most_common_bit ← 0.5≤+/÷⍴
least_common_bit ← ~⍤most_common_bit
f ← {b ← most_common_bit ⍺⊃¨⍵ ⋄ i ← b = ⍺⊃¨⍵ ⋄ ⍵[⍸i]}
g ← {1=⍴⍵: ⊃⍵ ⋄ (⍺+1)∇⍺f⍵}
h ← {b ← least_common_bit ⍺⊃¨⍵ ⋄ i ← b = ⍺⊃¨⍵ ⋄ ⍵[⍸i]}
l ← {1=⍴⍵: ⊃⍵ ⋄ (⍺+1)∇⍺h⍵}
x ← 1 g input
y ← 1 l input
(2⊥x)×(2⊥y)
