.data
A: .word 7,8,9,10,11
even: .word 0,0,0
odd: .word 0,0
.text
LDR R0,=A
LDR R1,=even
LDR R2,=odd
MOV R3,#0
loop:
LDR R4,[R0],#4
AND R5, R4, #1
CMP R5, #0
BEQ even1
odd1:
STR R4,[R2],#4
B end
even1:
STR R4, [R1],#4
end:
ADD R3,R3,#1
CMP R3,#5
BNE loop
SWI 0x11
.end
