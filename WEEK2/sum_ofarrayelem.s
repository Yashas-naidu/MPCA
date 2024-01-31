.data
A: .byte 2,3,6,8,9,1,2,0,6,1
Sum: .byte 0
.text
LDR R0, =A
LDR R1, =Sum
MOV R2, #0
MOV R4, #0
loop:
LDRB R3, [R0], #1
ADD R4, R4, R3
ADD R2, R2, #1
CMP R2, #10
BEQ end
B loop
end:
STRB R4, [R1]
SWI 0x11
.end
