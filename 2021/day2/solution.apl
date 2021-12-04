input ← ⊃⎕NGET '/Users/jj/code/advent_of_code/2021/day2/input.txt' 1
dirs ← 'forward' 'backward' 'down' 'up' 
movs ← (1 0) (¯1 0) (0 1) (0 ¯1)
parse ← {' ' (≠⊆⊢) ⍵}
lookup_mov ← {movs[⍸(⊂⍵)⍷dirs]}
convert ← {m ← parse ⍵ ⋄ amt ← ⍎ 2 ⊃ m ⋄ ⊃ amt × lookup_mov ⊃ m }
⍝ Part 1
answer1 ← ×/ ⊃⊃ +/ convert¨ input

⍝ Part 2
aims ← 2⊃¨ +\ convert¨ input
hozs ← ⊃¨ convert¨ input
depth_changes ← hozs × aims
final_depth ← +/ depth_changes
final_hoz ← +/ hozs
answer2 ← final_depth × final_hoz
