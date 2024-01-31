.data
    A: .word 1,3,2,4,5,7,6,8,10,9

.text
    LDR R0,=A
    MOV R2,#0
    MOV R4,#0
    MOV R5,#0
    B Sum

Sum:
    CMP R2,#10  
    BEQ end
    ADD R2,R2,#1
    LDR R1,[R0],#4
    AND R3,R2,#1
    CMP R3,#0
    BEQ even
    ADD R4,R4,R1
    B Sum

even:
    ADD R5,R5,R1
    B Sum

end:
    SWI 0x11
.end
