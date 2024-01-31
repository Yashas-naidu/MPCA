.DATA
    A:.WORD 6
.TEXT
    LDR R0,=A
    LDR R1,[R0]
    MOV R4,#1
    B FACTOR  
    SWI  0X11

FACTOR:
    MUL R4, R1, R4
    SUB R1,R1,#1
    CMP R1,#0
    BNE FACTOR
     BX LR
.END
