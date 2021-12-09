input←' '(≠⊆⊢)¨¨'|'(≠⊆⊢)¨⊃⎕NGET'/Users/jj/code/advent_of_code/2021/day8/input.txt' 1
outputs←{2⊃⍵}¨input
+/{⍵∊2 3 4 7 }⊃¨⍴¨⊃,/outputs ⍝ Part 1
