TEST_BIT = $7F10

    .org $8000
reset:
loop:
    lda $FF
    sta TEST_BIT
    jmp loop

    .org $fffc
    .word reset   
    .word $0000