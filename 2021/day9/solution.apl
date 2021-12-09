input←↑⍎¨¨⊃⎕NGET'/Users/jj/code/advent_of_code/2021/day9/input.txt' 1
smaller_down ← {(2</[1]⍵)⍪(⊃⍴⍵)⍴1}
smaller_up ← {((⊃⍴⍵)⍴1)⍪⌽[1](2</[1]⌽[1]⍵)}
smaller_left ← {((⊃⍴⍵)⍴1),(⌽2</⌽⍵)}
smaller_right ← {(2</⍵),(⊃⍴⍵)⍴1}
low_point ← (smaller_down^smaller_up)^(smaller_left^smaller_right)
risk_level_sum ← {+/1+⍵[⍸low_point ⍵]}
risk_level_sum input