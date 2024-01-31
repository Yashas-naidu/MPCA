.data
    A: .BYTE 2,4,6,8,10,12,14,16,18,20
.text
    LDR R0, =A
    MOV R1, #14 @Element to search
    MOV R2, #-1 @Position of element
    MOV R3, #0 @low
    MOV R4, #9 @high
    MOV R8, #0
    loop:
        CMP R4, R3
        BMI exit @low>high
        ADD R5, R3, R4
        ADD R6, R8, R5, LSR #1 @mid
        LDRB R7, [R0,R6]
        CMP R7, R1
        BEQ found
        BMI lesser
        SUB R6, R6, #1
        MOV R4, R6
        B loop
    found:
        MOV R2, R6
        SWI 0x011
    lesser:
        ADD R6, R6,#1
MOV R3, R6
        B loop
    exit:
        SWI 0x011
