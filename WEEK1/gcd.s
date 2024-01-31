.text
    MOV R1,#25
    MOV R2,#5
    loop:
        CMP R2,#0
        BLE end

        MOV R3,R1
        MOV R4,R2
        CMP R1,R2
        BLT swap
        SUB R3,R3,R4
        MOV R2,R3
        MOV R1,R4

    swap:
        MOV R3,R1
        MOV R1,R2
        MOV R2,R3
        B loop

    end:
        swi 0
