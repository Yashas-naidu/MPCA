.data
    A: .WORD 1,2,3,4,5,6,7,8,9,10
.text
    LDR r0, =A
    MOV r1, #10
    loop:
        LDR r2, [r0], #4  @ Load the value at the address pointed to by r0 and increment r0 by 4 (size of WORD)
        CMP r2, #30
        BEQ found
        SUBS r1, r1, #1    @Decrement r1 (counter)
        BEQ not_found      @If r1 is 0, exit the loop if the value is not found
        B loop
    not_found:
        MOV r3, #-1
        SWI 0x011
        B end_program
    found:
        MOV r3, #1
        SWI 0x011
    end_program:
        SWI 0x011
