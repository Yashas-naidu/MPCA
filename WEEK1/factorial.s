.text
    MOV R1,#5
    MOV R2,#1
    loop:
        CMP R1,#0
        BEQ end

        MUL R2,R1,R2
        SUB R1,R1,#1
        B loop
    end:
        swi 0
.end
